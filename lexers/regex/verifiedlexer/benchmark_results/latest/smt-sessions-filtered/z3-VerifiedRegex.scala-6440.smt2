; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!336842 () Bool)

(assert start!336842)

(declare-fun b!3616736 () Bool)

(declare-fun b_free!94121 () Bool)

(declare-fun b_next!94825 () Bool)

(assert (=> b!3616736 (= b_free!94121 (not b_next!94825))))

(declare-fun tp!1105055 () Bool)

(declare-fun b_and!264171 () Bool)

(assert (=> b!3616736 (= tp!1105055 b_and!264171)))

(declare-fun b_free!94123 () Bool)

(declare-fun b_next!94827 () Bool)

(assert (=> b!3616736 (= b_free!94123 (not b_next!94827))))

(declare-fun tp!1105062 () Bool)

(declare-fun b_and!264173 () Bool)

(assert (=> b!3616736 (= tp!1105062 b_and!264173)))

(declare-fun b!3616766 () Bool)

(declare-fun b_free!94125 () Bool)

(declare-fun b_next!94829 () Bool)

(assert (=> b!3616766 (= b_free!94125 (not b_next!94829))))

(declare-fun tp!1105060 () Bool)

(declare-fun b_and!264175 () Bool)

(assert (=> b!3616766 (= tp!1105060 b_and!264175)))

(declare-fun b_free!94127 () Bool)

(declare-fun b_next!94831 () Bool)

(assert (=> b!3616766 (= b_free!94127 (not b_next!94831))))

(declare-fun tp!1105064 () Bool)

(declare-fun b_and!264177 () Bool)

(assert (=> b!3616766 (= tp!1105064 b_and!264177)))

(declare-fun b!3616762 () Bool)

(declare-fun b_free!94129 () Bool)

(declare-fun b_next!94833 () Bool)

(assert (=> b!3616762 (= b_free!94129 (not b_next!94833))))

(declare-fun tp!1105057 () Bool)

(declare-fun b_and!264179 () Bool)

(assert (=> b!3616762 (= tp!1105057 b_and!264179)))

(declare-fun b_free!94131 () Bool)

(declare-fun b_next!94835 () Bool)

(assert (=> b!3616762 (= b_free!94131 (not b_next!94835))))

(declare-fun tp!1105066 () Bool)

(declare-fun b_and!264181 () Bool)

(assert (=> b!3616762 (= tp!1105066 b_and!264181)))

(declare-fun b!3616751 () Bool)

(declare-fun b_free!94133 () Bool)

(declare-fun b_next!94837 () Bool)

(assert (=> b!3616751 (= b_free!94133 (not b_next!94837))))

(declare-fun tp!1105065 () Bool)

(declare-fun b_and!264183 () Bool)

(assert (=> b!3616751 (= tp!1105065 b_and!264183)))

(declare-fun b_free!94135 () Bool)

(declare-fun b_next!94839 () Bool)

(assert (=> b!3616751 (= b_free!94135 (not b_next!94839))))

(declare-fun tp!1105054 () Bool)

(declare-fun b_and!264185 () Bool)

(assert (=> b!3616751 (= tp!1105054 b_and!264185)))

(declare-fun b!3616724 () Bool)

(declare-fun e!2238530 () Bool)

(declare-fun e!2238514 () Bool)

(assert (=> b!3616724 (= e!2238530 e!2238514)))

(declare-fun res!1463406 () Bool)

(assert (=> b!3616724 (=> (not res!1463406) (not e!2238514))))

(declare-datatypes ((List!38205 0))(
  ( (Nil!38081) (Cons!38081 (h!43501 (_ BitVec 16)) (t!293856 List!38205)) )
))
(declare-datatypes ((TokenValue!5890 0))(
  ( (FloatLiteralValue!11780 (text!41675 List!38205)) (TokenValueExt!5889 (__x!23997 Int)) (Broken!29450 (value!181744 List!38205)) (Object!6013) (End!5890) (Def!5890) (Underscore!5890) (Match!5890) (Else!5890) (Error!5890) (Case!5890) (If!5890) (Extends!5890) (Abstract!5890) (Class!5890) (Val!5890) (DelimiterValue!11780 (del!5950 List!38205)) (KeywordValue!5896 (value!181745 List!38205)) (CommentValue!11780 (value!181746 List!38205)) (WhitespaceValue!11780 (value!181747 List!38205)) (IndentationValue!5890 (value!181748 List!38205)) (String!42783) (Int32!5890) (Broken!29451 (value!181749 List!38205)) (Boolean!5891) (Unit!54536) (OperatorValue!5893 (op!5950 List!38205)) (IdentifierValue!11780 (value!181750 List!38205)) (IdentifierValue!11781 (value!181751 List!38205)) (WhitespaceValue!11781 (value!181752 List!38205)) (True!11780) (False!11780) (Broken!29452 (value!181753 List!38205)) (Broken!29453 (value!181754 List!38205)) (True!11781) (RightBrace!5890) (RightBracket!5890) (Colon!5890) (Null!5890) (Comma!5890) (LeftBracket!5890) (False!11781) (LeftBrace!5890) (ImaginaryLiteralValue!5890 (text!41676 List!38205)) (StringLiteralValue!17670 (value!181755 List!38205)) (EOFValue!5890 (value!181756 List!38205)) (IdentValue!5890 (value!181757 List!38205)) (DelimiterValue!11781 (value!181758 List!38205)) (DedentValue!5890 (value!181759 List!38205)) (NewLineValue!5890 (value!181760 List!38205)) (IntegerValue!17670 (value!181761 (_ BitVec 32)) (text!41677 List!38205)) (IntegerValue!17671 (value!181762 Int) (text!41678 List!38205)) (Times!5890) (Or!5890) (Equal!5890) (Minus!5890) (Broken!29454 (value!181763 List!38205)) (And!5890) (Div!5890) (LessEqual!5890) (Mod!5890) (Concat!16309) (Not!5890) (Plus!5890) (SpaceValue!5890 (value!181764 List!38205)) (IntegerValue!17672 (value!181765 Int) (text!41679 List!38205)) (StringLiteralValue!17671 (text!41680 List!38205)) (FloatLiteralValue!11781 (text!41681 List!38205)) (BytesLiteralValue!5890 (value!181766 List!38205)) (CommentValue!11781 (value!181767 List!38205)) (StringLiteralValue!17672 (value!181768 List!38205)) (ErrorTokenValue!5890 (msg!5951 List!38205)) )
))
(declare-datatypes ((C!21024 0))(
  ( (C!21025 (val!12560 Int)) )
))
(declare-datatypes ((Regex!10419 0))(
  ( (ElementMatch!10419 (c!625786 C!21024)) (Concat!16310 (regOne!21350 Regex!10419) (regTwo!21350 Regex!10419)) (EmptyExpr!10419) (Star!10419 (reg!10748 Regex!10419)) (EmptyLang!10419) (Union!10419 (regOne!21351 Regex!10419) (regTwo!21351 Regex!10419)) )
))
(declare-datatypes ((String!42784 0))(
  ( (String!42785 (value!181769 String)) )
))
(declare-datatypes ((List!38206 0))(
  ( (Nil!38082) (Cons!38082 (h!43502 C!21024) (t!293857 List!38206)) )
))
(declare-datatypes ((IArray!23223 0))(
  ( (IArray!23224 (innerList!11669 List!38206)) )
))
(declare-datatypes ((Conc!11609 0))(
  ( (Node!11609 (left!29745 Conc!11609) (right!30075 Conc!11609) (csize!23448 Int) (cheight!11820 Int)) (Leaf!18050 (xs!14811 IArray!23223) (csize!23449 Int)) (Empty!11609) )
))
(declare-datatypes ((BalanceConc!22832 0))(
  ( (BalanceConc!22833 (c!625787 Conc!11609)) )
))
(declare-datatypes ((TokenValueInjection!11208 0))(
  ( (TokenValueInjection!11209 (toValue!7944 Int) (toChars!7803 Int)) )
))
(declare-datatypes ((Rule!11120 0))(
  ( (Rule!11121 (regex!5660 Regex!10419) (tag!6374 String!42784) (isSeparator!5660 Bool) (transformation!5660 TokenValueInjection!11208)) )
))
(declare-fun lt!1247743 () Rule!11120)

(declare-datatypes ((Token!10686 0))(
  ( (Token!10687 (value!181770 TokenValue!5890) (rule!8418 Rule!11120) (size!29045 Int) (originalCharacters!6374 List!38206)) )
))
(declare-datatypes ((tuple2!37968 0))(
  ( (tuple2!37969 (_1!22118 Token!10686) (_2!22118 List!38206)) )
))
(declare-fun lt!1247723 () tuple2!37968)

(declare-fun matchR!4988 (Regex!10419 List!38206) Bool)

(declare-fun list!14052 (BalanceConc!22832) List!38206)

(declare-fun charsOf!3674 (Token!10686) BalanceConc!22832)

(assert (=> b!3616724 (= res!1463406 (matchR!4988 (regex!5660 lt!1247743) (list!14052 (charsOf!3674 (_1!22118 lt!1247723)))))))

(declare-datatypes ((Option!7950 0))(
  ( (None!7949) (Some!7949 (v!37707 Rule!11120)) )
))
(declare-fun lt!1247724 () Option!7950)

(declare-fun get!12390 (Option!7950) Rule!11120)

(assert (=> b!3616724 (= lt!1247743 (get!12390 lt!1247724))))

(declare-fun b!3616725 () Bool)

(assert (=> b!3616725 false))

(declare-datatypes ((Unit!54537 0))(
  ( (Unit!54538) )
))
(declare-fun lt!1247711 () Unit!54537)

(declare-fun call!261598 () Unit!54537)

(assert (=> b!3616725 (= lt!1247711 call!261598)))

(declare-fun call!261596 () Bool)

(assert (=> b!3616725 (not call!261596)))

(declare-datatypes ((LexerInterface!5249 0))(
  ( (LexerInterfaceExt!5246 (__x!23998 Int)) (Lexer!5247) )
))
(declare-fun thiss!23823 () LexerInterface!5249)

(declare-fun lt!1247750 () Unit!54537)

(declare-fun anOtherTypeRule!33 () Rule!11120)

(declare-datatypes ((List!38207 0))(
  ( (Nil!38083) (Cons!38083 (h!43503 Rule!11120) (t!293858 List!38207)) )
))
(declare-fun rules!3307 () List!38207)

(declare-fun lt!1247710 () C!21024)

(declare-fun lemmaNonSepRuleNotContainsCharContainedInASepRule!366 (LexerInterface!5249 List!38207 List!38207 Rule!11120 Rule!11120 C!21024) Unit!54537)

(assert (=> b!3616725 (= lt!1247750 (lemmaNonSepRuleNotContainsCharContainedInASepRule!366 thiss!23823 rules!3307 rules!3307 (rule!8418 (_1!22118 lt!1247723)) anOtherTypeRule!33 lt!1247710))))

(declare-fun e!2238533 () Unit!54537)

(declare-fun Unit!54539 () Unit!54537)

(assert (=> b!3616725 (= e!2238533 Unit!54539)))

(declare-fun b!3616726 () Bool)

(declare-fun e!2238529 () Unit!54537)

(declare-fun e!2238526 () Unit!54537)

(assert (=> b!3616726 (= e!2238529 e!2238526)))

(declare-fun c!625783 () Bool)

(assert (=> b!3616726 (= c!625783 (not (isSeparator!5660 (rule!8418 (_1!22118 lt!1247723)))))))

(declare-fun b!3616727 () Bool)

(declare-fun res!1463410 () Bool)

(declare-fun e!2238537 () Bool)

(assert (=> b!3616727 (=> (not res!1463410) (not e!2238537))))

(declare-fun token!511 () Token!10686)

(declare-fun rule!403 () Rule!11120)

(assert (=> b!3616727 (= res!1463410 (= (rule!8418 token!511) rule!403))))

(declare-fun b!3616728 () Bool)

(declare-fun res!1463413 () Bool)

(assert (=> b!3616728 (=> (not res!1463413) (not e!2238537))))

(declare-fun lt!1247741 () tuple2!37968)

(declare-fun isEmpty!22498 (List!38206) Bool)

(assert (=> b!3616728 (= res!1463413 (isEmpty!22498 (_2!22118 lt!1247741)))))

(declare-fun b!3616729 () Bool)

(declare-fun res!1463411 () Bool)

(declare-fun e!2238538 () Bool)

(assert (=> b!3616729 (=> res!1463411 e!2238538)))

(declare-fun sepAndNonSepRulesDisjointChars!1830 (List!38207 List!38207) Bool)

(assert (=> b!3616729 (= res!1463411 (not (sepAndNonSepRulesDisjointChars!1830 rules!3307 rules!3307)))))

(declare-fun b!3616730 () Bool)

(declare-fun e!2238539 () Unit!54537)

(declare-fun Unit!54540 () Unit!54537)

(assert (=> b!3616730 (= e!2238539 Unit!54540)))

(declare-fun b!3616731 () Bool)

(declare-fun e!2238523 () Unit!54537)

(declare-fun Unit!54541 () Unit!54537)

(assert (=> b!3616731 (= e!2238523 Unit!54541)))

(declare-fun b!3616732 () Bool)

(declare-fun res!1463405 () Bool)

(declare-fun e!2238522 () Bool)

(assert (=> b!3616732 (=> (not res!1463405) (not e!2238522))))

(declare-fun contains!7383 (List!38207 Rule!11120) Bool)

(assert (=> b!3616732 (= res!1463405 (contains!7383 rules!3307 rule!403))))

(declare-fun b!3616733 () Bool)

(declare-fun res!1463402 () Bool)

(declare-fun e!2238541 () Bool)

(assert (=> b!3616733 (=> res!1463402 e!2238541)))

(declare-fun lt!1247752 () List!38206)

(assert (=> b!3616733 (= res!1463402 (not (matchR!4988 (regex!5660 (rule!8418 (_1!22118 lt!1247723))) lt!1247752)))))

(declare-fun b!3616734 () Bool)

(assert (=> b!3616734 (= e!2238514 (= (rule!8418 (_1!22118 lt!1247723)) lt!1247743))))

(declare-fun b!3616735 () Bool)

(declare-fun e!2238535 () Bool)

(assert (=> b!3616735 (= e!2238535 false)))

(declare-fun e!2238527 () Bool)

(assert (=> b!3616736 (= e!2238527 (and tp!1105055 tp!1105062))))

(declare-fun b!3616737 () Bool)

(declare-fun e!2238517 () Bool)

(declare-fun e!2238540 () Bool)

(declare-fun tp!1105056 () Bool)

(assert (=> b!3616737 (= e!2238517 (and e!2238540 tp!1105056))))

(declare-fun b!3616738 () Bool)

(assert (=> b!3616738 false))

(declare-fun lt!1247748 () Unit!54537)

(declare-fun call!261595 () Unit!54537)

(assert (=> b!3616738 (= lt!1247748 call!261595)))

(declare-fun call!261594 () Bool)

(assert (=> b!3616738 (not call!261594)))

(declare-fun lt!1247746 () Unit!54537)

(declare-fun lt!1247718 () C!21024)

(declare-fun lemmaSepRuleNotContainsCharContainedInANonSepRule!248 (LexerInterface!5249 List!38207 List!38207 Rule!11120 Rule!11120 C!21024) Unit!54537)

(assert (=> b!3616738 (= lt!1247746 (lemmaSepRuleNotContainsCharContainedInANonSepRule!248 thiss!23823 rules!3307 rules!3307 rule!403 (rule!8418 (_1!22118 lt!1247723)) lt!1247718))))

(declare-fun e!2238510 () Unit!54537)

(declare-fun Unit!54542 () Unit!54537)

(assert (=> b!3616738 (= e!2238510 Unit!54542)))

(declare-fun b!3616739 () Bool)

(declare-fun e!2238525 () Unit!54537)

(declare-fun Unit!54543 () Unit!54537)

(assert (=> b!3616739 (= e!2238525 Unit!54543)))

(declare-fun bm!261588 () Bool)

(declare-fun lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!644 (Regex!10419 List!38206 C!21024) Unit!54537)

(assert (=> bm!261588 (= call!261598 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!644 (regex!5660 (rule!8418 (_1!22118 lt!1247723))) lt!1247752 lt!1247710))))

(declare-fun b!3616740 () Bool)

(declare-fun res!1463399 () Bool)

(assert (=> b!3616740 (=> (not res!1463399) (not e!2238522))))

(declare-fun isEmpty!22499 (List!38207) Bool)

(assert (=> b!3616740 (= res!1463399 (not (isEmpty!22499 rules!3307)))))

(declare-fun b!3616741 () Bool)

(declare-fun res!1463409 () Bool)

(assert (=> b!3616741 (=> (not res!1463409) (not e!2238522))))

(assert (=> b!3616741 (= res!1463409 (contains!7383 rules!3307 anOtherTypeRule!33))))

(declare-fun b!3616742 () Bool)

(assert (=> b!3616742 false))

(declare-fun lt!1247701 () Unit!54537)

(assert (=> b!3616742 (= lt!1247701 call!261598)))

(assert (=> b!3616742 (not call!261596)))

(declare-fun lt!1247742 () Unit!54537)

(assert (=> b!3616742 (= lt!1247742 (lemmaSepRuleNotContainsCharContainedInANonSepRule!248 thiss!23823 rules!3307 rules!3307 anOtherTypeRule!33 (rule!8418 (_1!22118 lt!1247723)) lt!1247710))))

(declare-fun Unit!54544 () Unit!54537)

(assert (=> b!3616742 (= e!2238533 Unit!54544)))

(declare-fun b!3616743 () Bool)

(declare-fun e!2238512 () Unit!54537)

(declare-fun Unit!54545 () Unit!54537)

(assert (=> b!3616743 (= e!2238512 Unit!54545)))

(declare-fun lt!1247712 () List!38206)

(declare-fun lt!1247736 () List!38206)

(declare-fun lt!1247703 () Unit!54537)

(declare-fun lemmaMaxPrefixOutputsMaxPrefix!308 (LexerInterface!5249 List!38207 Rule!11120 List!38206 List!38206 List!38206 Rule!11120) Unit!54537)

(assert (=> b!3616743 (= lt!1247703 (lemmaMaxPrefixOutputsMaxPrefix!308 thiss!23823 rules!3307 (rule!8418 (_1!22118 lt!1247723)) lt!1247752 lt!1247712 lt!1247736 rule!403))))

(assert (=> b!3616743 false))

(declare-fun e!2238506 () Bool)

(declare-fun b!3616744 () Bool)

(declare-fun tp!1105058 () Bool)

(declare-fun e!2238516 () Bool)

(declare-fun inv!51464 (String!42784) Bool)

(declare-fun inv!51467 (TokenValueInjection!11208) Bool)

(assert (=> b!3616744 (= e!2238516 (and tp!1105058 (inv!51464 (tag!6374 anOtherTypeRule!33)) (inv!51467 (transformation!5660 anOtherTypeRule!33)) e!2238506))))

(declare-fun b!3616745 () Bool)

(assert (=> b!3616745 (= e!2238538 e!2238541)))

(declare-fun res!1463404 () Bool)

(assert (=> b!3616745 (=> res!1463404 e!2238541)))

(declare-fun isPrefix!3023 (List!38206 List!38206) Bool)

(assert (=> b!3616745 (= res!1463404 (not (isPrefix!3023 lt!1247752 lt!1247712)))))

(declare-fun ++!9476 (List!38206 List!38206) List!38206)

(assert (=> b!3616745 (isPrefix!3023 lt!1247752 (++!9476 lt!1247752 (_2!22118 lt!1247723)))))

(declare-fun lt!1247738 () Unit!54537)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!1944 (List!38206 List!38206) Unit!54537)

(assert (=> b!3616745 (= lt!1247738 (lemmaConcatTwoListThenFirstIsPrefix!1944 lt!1247752 (_2!22118 lt!1247723)))))

(declare-fun lt!1247715 () BalanceConc!22832)

(assert (=> b!3616745 (= lt!1247752 (list!14052 lt!1247715))))

(assert (=> b!3616745 (= lt!1247715 (charsOf!3674 (_1!22118 lt!1247723)))))

(assert (=> b!3616745 e!2238530))

(declare-fun res!1463401 () Bool)

(assert (=> b!3616745 (=> (not res!1463401) (not e!2238530))))

(declare-fun isDefined!6182 (Option!7950) Bool)

(assert (=> b!3616745 (= res!1463401 (isDefined!6182 lt!1247724))))

(declare-fun getRuleFromTag!1266 (LexerInterface!5249 List!38207 String!42784) Option!7950)

(assert (=> b!3616745 (= lt!1247724 (getRuleFromTag!1266 thiss!23823 rules!3307 (tag!6374 (rule!8418 (_1!22118 lt!1247723)))))))

(declare-fun lt!1247737 () Unit!54537)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1266 (LexerInterface!5249 List!38207 List!38206 Token!10686) Unit!54537)

(assert (=> b!3616745 (= lt!1247737 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1266 thiss!23823 rules!3307 lt!1247712 (_1!22118 lt!1247723)))))

(declare-datatypes ((Option!7951 0))(
  ( (None!7950) (Some!7950 (v!37708 tuple2!37968)) )
))
(declare-fun lt!1247749 () Option!7951)

(declare-fun get!12391 (Option!7951) tuple2!37968)

(assert (=> b!3616745 (= lt!1247723 (get!12391 lt!1247749))))

(declare-fun suffix!1395 () List!38206)

(declare-fun lt!1247755 () Unit!54537)

(declare-fun lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!929 (LexerInterface!5249 List!38207 List!38206 List!38206) Unit!54537)

(assert (=> b!3616745 (= lt!1247755 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!929 thiss!23823 rules!3307 lt!1247736 suffix!1395))))

(declare-fun maxPrefix!2783 (LexerInterface!5249 List!38207 List!38206) Option!7951)

(assert (=> b!3616745 (= lt!1247749 (maxPrefix!2783 thiss!23823 rules!3307 lt!1247712))))

(assert (=> b!3616745 (isPrefix!3023 lt!1247736 lt!1247712)))

(declare-fun lt!1247758 () Unit!54537)

(assert (=> b!3616745 (= lt!1247758 (lemmaConcatTwoListThenFirstIsPrefix!1944 lt!1247736 suffix!1395))))

(assert (=> b!3616745 (= lt!1247712 (++!9476 lt!1247736 suffix!1395))))

(declare-fun b!3616746 () Bool)

(declare-fun res!1463400 () Bool)

(declare-fun e!2238509 () Bool)

(assert (=> b!3616746 (=> res!1463400 e!2238509)))

(assert (=> b!3616746 (= res!1463400 (isEmpty!22498 suffix!1395))))

(declare-fun b!3616747 () Bool)

(declare-fun e!2238515 () Bool)

(declare-fun tp_is_empty!17921 () Bool)

(declare-fun tp!1105053 () Bool)

(assert (=> b!3616747 (= e!2238515 (and tp_is_empty!17921 tp!1105053))))

(declare-fun e!2238532 () Bool)

(declare-fun tp!1105059 () Bool)

(declare-fun e!2238531 () Bool)

(declare-fun b!3616748 () Bool)

(assert (=> b!3616748 (= e!2238532 (and tp!1105059 (inv!51464 (tag!6374 (rule!8418 token!511))) (inv!51467 (transformation!5660 (rule!8418 token!511))) e!2238531))))

(declare-fun b!3616749 () Bool)

(declare-fun e!2238524 () Unit!54537)

(declare-fun Unit!54546 () Unit!54537)

(assert (=> b!3616749 (= e!2238524 Unit!54546)))

(declare-fun lt!1247727 () Unit!54537)

(assert (=> b!3616749 (= lt!1247727 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!644 (regex!5660 rule!403) lt!1247736 lt!1247718))))

(assert (=> b!3616749 false))

(declare-fun b!3616750 () Bool)

(declare-fun tp!1105061 () Bool)

(declare-fun e!2238542 () Bool)

(declare-fun inv!21 (TokenValue!5890) Bool)

(assert (=> b!3616750 (= e!2238542 (and (inv!21 (value!181770 token!511)) e!2238532 tp!1105061))))

(declare-fun e!2238518 () Bool)

(assert (=> b!3616751 (= e!2238518 (and tp!1105065 tp!1105054))))

(declare-fun b!3616752 () Bool)

(declare-fun e!2238534 () Unit!54537)

(declare-fun Unit!54547 () Unit!54537)

(assert (=> b!3616752 (= e!2238534 Unit!54547)))

(declare-fun b!3616753 () Bool)

(declare-fun res!1463418 () Bool)

(assert (=> b!3616753 (=> (not res!1463418) (not e!2238522))))

(assert (=> b!3616753 (= res!1463418 (not (= (isSeparator!5660 anOtherTypeRule!33) (isSeparator!5660 rule!403))))))

(declare-fun b!3616754 () Bool)

(assert (=> b!3616754 (= e!2238537 (not e!2238509))))

(declare-fun res!1463414 () Bool)

(assert (=> b!3616754 (=> res!1463414 e!2238509)))

(assert (=> b!3616754 (= res!1463414 (not (matchR!4988 (regex!5660 rule!403) lt!1247736)))))

(declare-fun ruleValid!1925 (LexerInterface!5249 Rule!11120) Bool)

(assert (=> b!3616754 (ruleValid!1925 thiss!23823 rule!403)))

(declare-fun lt!1247731 () Unit!54537)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1080 (LexerInterface!5249 Rule!11120 List!38207) Unit!54537)

(assert (=> b!3616754 (= lt!1247731 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1080 thiss!23823 rule!403 rules!3307))))

(declare-fun b!3616755 () Bool)

(declare-fun Unit!54548 () Unit!54537)

(assert (=> b!3616755 (= e!2238512 Unit!54548)))

(declare-fun bm!261589 () Bool)

(declare-fun call!261597 () List!38206)

(declare-fun contains!7384 (List!38206 C!21024) Bool)

(assert (=> bm!261589 (= call!261594 (contains!7384 call!261597 lt!1247718))))

(declare-fun b!3616756 () Bool)

(declare-fun Unit!54549 () Unit!54537)

(assert (=> b!3616756 (= e!2238510 Unit!54549)))

(declare-fun b!3616757 () Bool)

(declare-fun Unit!54550 () Unit!54537)

(assert (=> b!3616757 (= e!2238526 Unit!54550)))

(declare-fun b!3616758 () Bool)

(declare-fun e!2238513 () Bool)

(assert (=> b!3616758 (= e!2238513 true)))

(declare-fun lt!1247733 () Int)

(declare-fun size!29046 (List!38206) Int)

(assert (=> b!3616758 (= lt!1247733 (size!29046 lt!1247736))))

(declare-fun lt!1247757 () Int)

(assert (=> b!3616758 (= lt!1247757 (size!29046 lt!1247712))))

(declare-fun lt!1247706 () Unit!54537)

(assert (=> b!3616758 (= lt!1247706 e!2238539)))

(declare-fun c!625776 () Bool)

(assert (=> b!3616758 (= c!625776 (not (= (rule!8418 (_1!22118 lt!1247723)) (rule!8418 token!511))))))

(assert (=> b!3616758 (= lt!1247752 lt!1247736)))

(declare-fun lt!1247739 () Unit!54537)

(declare-fun lemmaIsPrefixSameLengthThenSameList!597 (List!38206 List!38206 List!38206) Unit!54537)

(assert (=> b!3616758 (= lt!1247739 (lemmaIsPrefixSameLengthThenSameList!597 lt!1247752 lt!1247736 lt!1247712))))

(declare-fun lt!1247709 () Unit!54537)

(assert (=> b!3616758 (= lt!1247709 e!2238512)))

(declare-fun c!625779 () Bool)

(declare-fun lt!1247753 () Int)

(declare-fun lt!1247744 () Int)

(assert (=> b!3616758 (= c!625779 (< lt!1247753 lt!1247744))))

(declare-fun lt!1247725 () Unit!54537)

(assert (=> b!3616758 (= lt!1247725 e!2238525)))

(declare-fun c!625785 () Bool)

(assert (=> b!3616758 (= c!625785 (> lt!1247753 lt!1247744))))

(declare-fun lt!1247704 () BalanceConc!22832)

(declare-fun size!29047 (BalanceConc!22832) Int)

(assert (=> b!3616758 (= lt!1247744 (size!29047 lt!1247704))))

(declare-fun lt!1247745 () Unit!54537)

(assert (=> b!3616758 (= lt!1247745 e!2238529)))

(declare-fun c!625782 () Bool)

(assert (=> b!3616758 (= c!625782 (isSeparator!5660 rule!403))))

(declare-fun lt!1247708 () Unit!54537)

(assert (=> b!3616758 (= lt!1247708 e!2238524)))

(declare-fun c!625780 () Bool)

(declare-fun lt!1247732 () List!38206)

(assert (=> b!3616758 (= c!625780 (not (contains!7384 lt!1247732 lt!1247718)))))

(declare-fun head!7626 (List!38206) C!21024)

(assert (=> b!3616758 (= lt!1247718 (head!7626 lt!1247752))))

(declare-fun b!3616759 () Bool)

(declare-fun e!2238521 () Bool)

(assert (=> b!3616759 (= e!2238521 e!2238537)))

(declare-fun res!1463415 () Bool)

(assert (=> b!3616759 (=> (not res!1463415) (not e!2238537))))

(assert (=> b!3616759 (= res!1463415 (= (_1!22118 lt!1247741) token!511))))

(declare-fun lt!1247717 () Option!7951)

(assert (=> b!3616759 (= lt!1247741 (get!12391 lt!1247717))))

(declare-fun b!3616760 () Bool)

(declare-fun e!2238511 () Bool)

(assert (=> b!3616760 (= e!2238511 e!2238513)))

(declare-fun res!1463416 () Bool)

(assert (=> b!3616760 (=> res!1463416 e!2238513)))

(declare-fun lt!1247735 () Option!7951)

(declare-fun lt!1247702 () List!38206)

(assert (=> b!3616760 (= res!1463416 (or (not (= lt!1247702 (_2!22118 lt!1247723))) (not (= lt!1247735 (Some!7950 (tuple2!37969 (_1!22118 lt!1247723) lt!1247702))))))))

(assert (=> b!3616760 (= (_2!22118 lt!1247723) lt!1247702)))

(declare-fun lt!1247756 () Unit!54537)

(declare-fun lemmaSamePrefixThenSameSuffix!1378 (List!38206 List!38206 List!38206 List!38206 List!38206) Unit!54537)

(assert (=> b!3616760 (= lt!1247756 (lemmaSamePrefixThenSameSuffix!1378 lt!1247752 (_2!22118 lt!1247723) lt!1247752 lt!1247702 lt!1247712))))

(declare-fun getSuffix!1598 (List!38206 List!38206) List!38206)

(assert (=> b!3616760 (= lt!1247702 (getSuffix!1598 lt!1247712 lt!1247752))))

(declare-fun lt!1247716 () Int)

(declare-fun lt!1247714 () TokenValue!5890)

(assert (=> b!3616760 (= lt!1247735 (Some!7950 (tuple2!37969 (Token!10687 lt!1247714 (rule!8418 (_1!22118 lt!1247723)) lt!1247716 lt!1247752) (_2!22118 lt!1247723))))))

(declare-fun maxPrefixOneRule!1927 (LexerInterface!5249 Rule!11120 List!38206) Option!7951)

(assert (=> b!3616760 (= lt!1247735 (maxPrefixOneRule!1927 thiss!23823 (rule!8418 (_1!22118 lt!1247723)) lt!1247712))))

(assert (=> b!3616760 (= lt!1247716 (size!29046 lt!1247752))))

(declare-fun apply!9166 (TokenValueInjection!11208 BalanceConc!22832) TokenValue!5890)

(declare-fun seqFromList!4213 (List!38206) BalanceConc!22832)

(assert (=> b!3616760 (= lt!1247714 (apply!9166 (transformation!5660 (rule!8418 (_1!22118 lt!1247723))) (seqFromList!4213 lt!1247752)))))

(declare-fun lt!1247707 () Unit!54537)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!999 (LexerInterface!5249 List!38207 List!38206 List!38206 List!38206 Rule!11120) Unit!54537)

(assert (=> b!3616760 (= lt!1247707 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!999 thiss!23823 rules!3307 lt!1247752 lt!1247712 (_2!22118 lt!1247723) (rule!8418 (_1!22118 lt!1247723))))))

(declare-fun b!3616761 () Bool)

(declare-fun res!1463419 () Bool)

(assert (=> b!3616761 (=> (not res!1463419) (not e!2238522))))

(declare-fun rulesInvariant!4646 (LexerInterface!5249 List!38207) Bool)

(assert (=> b!3616761 (= res!1463419 (rulesInvariant!4646 thiss!23823 rules!3307))))

(assert (=> b!3616762 (= e!2238506 (and tp!1105057 tp!1105066))))

(declare-fun b!3616763 () Bool)

(assert (=> b!3616763 false))

(declare-fun lt!1247754 () Unit!54537)

(declare-fun lemmaMaxPrefNoSmallerRuleMatches!194 (LexerInterface!5249 List!38207 Rule!11120 List!38206 List!38206 Rule!11120) Unit!54537)

(assert (=> b!3616763 (= lt!1247754 (lemmaMaxPrefNoSmallerRuleMatches!194 thiss!23823 rules!3307 (rule!8418 (_1!22118 lt!1247723)) lt!1247736 lt!1247712 rule!403))))

(declare-fun Unit!54551 () Unit!54537)

(assert (=> b!3616763 (= e!2238534 Unit!54551)))

(declare-fun bm!261590 () Bool)

(assert (=> bm!261590 (= call!261595 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!644 (regex!5660 (rule!8418 (_1!22118 lt!1247723))) lt!1247752 lt!1247718))))

(declare-fun res!1463398 () Bool)

(assert (=> start!336842 (=> (not res!1463398) (not e!2238522))))

(get-info :version)

(assert (=> start!336842 (= res!1463398 ((_ is Lexer!5247) thiss!23823))))

(assert (=> start!336842 e!2238522))

(assert (=> start!336842 e!2238517))

(assert (=> start!336842 e!2238515))

(assert (=> start!336842 true))

(declare-fun inv!51468 (Token!10686) Bool)

(assert (=> start!336842 (and (inv!51468 token!511) e!2238542)))

(declare-fun e!2238508 () Bool)

(assert (=> start!336842 e!2238508))

(assert (=> start!336842 e!2238516))

(declare-fun b!3616764 () Bool)

(declare-fun tp!1105052 () Bool)

(assert (=> b!3616764 (= e!2238508 (and tp!1105052 (inv!51464 (tag!6374 rule!403)) (inv!51467 (transformation!5660 rule!403)) e!2238518))))

(declare-fun bm!261591 () Bool)

(declare-fun usedCharacters!874 (Regex!10419) List!38206)

(assert (=> bm!261591 (= call!261597 (usedCharacters!874 (regex!5660 (rule!8418 (_1!22118 lt!1247723)))))))

(declare-fun bm!261592 () Bool)

(declare-fun call!261593 () List!38206)

(assert (=> bm!261592 (= call!261596 (contains!7384 call!261593 lt!1247710))))

(declare-fun b!3616765 () Bool)

(assert (=> b!3616765 (= e!2238522 e!2238521)))

(declare-fun res!1463412 () Bool)

(assert (=> b!3616765 (=> (not res!1463412) (not e!2238521))))

(declare-fun isDefined!6183 (Option!7951) Bool)

(assert (=> b!3616765 (= res!1463412 (isDefined!6183 lt!1247717))))

(assert (=> b!3616765 (= lt!1247717 (maxPrefix!2783 thiss!23823 rules!3307 lt!1247736))))

(assert (=> b!3616765 (= lt!1247736 (list!14052 lt!1247704))))

(assert (=> b!3616765 (= lt!1247704 (charsOf!3674 token!511))))

(assert (=> b!3616766 (= e!2238531 (and tp!1105060 tp!1105064))))

(declare-fun b!3616767 () Bool)

(assert (=> b!3616767 (= e!2238509 e!2238538)))

(declare-fun res!1463407 () Bool)

(assert (=> b!3616767 (=> res!1463407 e!2238538)))

(assert (=> b!3616767 (= res!1463407 (contains!7384 lt!1247732 lt!1247710))))

(assert (=> b!3616767 (= lt!1247710 (head!7626 suffix!1395))))

(assert (=> b!3616767 (= lt!1247732 (usedCharacters!874 (regex!5660 rule!403)))))

(declare-fun bm!261593 () Bool)

(assert (=> bm!261593 (= call!261593 (usedCharacters!874 (regex!5660 (rule!8418 (_1!22118 lt!1247723)))))))

(declare-fun b!3616768 () Bool)

(assert (=> b!3616768 (= e!2238541 e!2238511)))

(declare-fun res!1463403 () Bool)

(assert (=> b!3616768 (=> res!1463403 e!2238511)))

(declare-fun lt!1247751 () TokenValue!5890)

(assert (=> b!3616768 (= res!1463403 (not (= lt!1247749 (Some!7950 (tuple2!37969 (Token!10687 lt!1247751 (rule!8418 (_1!22118 lt!1247723)) lt!1247753 lt!1247752) (_2!22118 lt!1247723))))))))

(assert (=> b!3616768 (= lt!1247753 (size!29047 lt!1247715))))

(assert (=> b!3616768 (= lt!1247751 (apply!9166 (transformation!5660 (rule!8418 (_1!22118 lt!1247723))) lt!1247715))))

(declare-fun lt!1247728 () Unit!54537)

(declare-fun lemmaCharactersSize!713 (Token!10686) Unit!54537)

(assert (=> b!3616768 (= lt!1247728 (lemmaCharactersSize!713 (_1!22118 lt!1247723)))))

(declare-fun lt!1247719 () Unit!54537)

(declare-fun lemmaEqSameImage!851 (TokenValueInjection!11208 BalanceConc!22832 BalanceConc!22832) Unit!54537)

(assert (=> b!3616768 (= lt!1247719 (lemmaEqSameImage!851 (transformation!5660 (rule!8418 (_1!22118 lt!1247723))) lt!1247715 (seqFromList!4213 (originalCharacters!6374 (_1!22118 lt!1247723)))))))

(declare-fun lt!1247721 () Unit!54537)

(declare-fun lemmaSemiInverse!1417 (TokenValueInjection!11208 BalanceConc!22832) Unit!54537)

(assert (=> b!3616768 (= lt!1247721 (lemmaSemiInverse!1417 (transformation!5660 (rule!8418 (_1!22118 lt!1247723))) lt!1247715))))

(declare-fun b!3616769 () Bool)

(declare-fun res!1463417 () Bool)

(assert (=> b!3616769 (=> res!1463417 e!2238538)))

(assert (=> b!3616769 (= res!1463417 (not (contains!7384 (usedCharacters!874 (regex!5660 anOtherTypeRule!33)) lt!1247710)))))

(declare-fun b!3616770 () Bool)

(declare-fun Unit!54552 () Unit!54537)

(assert (=> b!3616770 (= e!2238539 Unit!54552)))

(declare-fun lt!1247713 () Int)

(declare-fun getIndex!442 (List!38207 Rule!11120) Int)

(assert (=> b!3616770 (= lt!1247713 (getIndex!442 rules!3307 (rule!8418 (_1!22118 lt!1247723))))))

(declare-fun lt!1247747 () Int)

(assert (=> b!3616770 (= lt!1247747 (getIndex!442 rules!3307 rule!403))))

(declare-fun c!625784 () Bool)

(assert (=> b!3616770 (= c!625784 (< lt!1247713 lt!1247747))))

(declare-fun lt!1247729 () Unit!54537)

(assert (=> b!3616770 (= lt!1247729 e!2238523)))

(declare-fun c!625778 () Bool)

(assert (=> b!3616770 (= c!625778 (< lt!1247747 lt!1247713))))

(declare-fun lt!1247722 () Unit!54537)

(assert (=> b!3616770 (= lt!1247722 e!2238534)))

(declare-fun lt!1247734 () Unit!54537)

(declare-fun lemmaSameIndexThenSameElement!210 (List!38207 Rule!11120 Rule!11120) Unit!54537)

(assert (=> b!3616770 (= lt!1247734 (lemmaSameIndexThenSameElement!210 rules!3307 (rule!8418 (_1!22118 lt!1247723)) rule!403))))

(assert (=> b!3616770 false))

(declare-fun b!3616771 () Bool)

(declare-fun Unit!54553 () Unit!54537)

(assert (=> b!3616771 (= e!2238524 Unit!54553)))

(declare-fun b!3616772 () Bool)

(assert (=> b!3616772 (= e!2238529 e!2238510)))

(declare-fun c!625781 () Bool)

(assert (=> b!3616772 (= c!625781 (isSeparator!5660 (rule!8418 (_1!22118 lt!1247723))))))

(declare-fun b!3616773 () Bool)

(assert (=> b!3616773 (= e!2238525 e!2238533)))

(declare-fun lt!1247726 () Unit!54537)

(declare-fun lemmaLongerPrefixContainsHeadOfSuffixOfSmallerPref!38 (List!38206 List!38206 List!38206 List!38206) Unit!54537)

(assert (=> b!3616773 (= lt!1247726 (lemmaLongerPrefixContainsHeadOfSuffixOfSmallerPref!38 lt!1247736 suffix!1395 lt!1247752 lt!1247712))))

(assert (=> b!3616773 (contains!7384 lt!1247752 lt!1247710)))

(declare-fun c!625777 () Bool)

(assert (=> b!3616773 (= c!625777 (isSeparator!5660 rule!403))))

(declare-fun b!3616774 () Bool)

(assert (=> b!3616774 e!2238535))

(declare-fun res!1463408 () Bool)

(assert (=> b!3616774 (=> (not res!1463408) (not e!2238535))))

(assert (=> b!3616774 (= res!1463408 (not (matchR!4988 (regex!5660 (rule!8418 (_1!22118 lt!1247723))) lt!1247736)))))

(declare-fun lt!1247730 () Unit!54537)

(assert (=> b!3616774 (= lt!1247730 (lemmaMaxPrefNoSmallerRuleMatches!194 thiss!23823 rules!3307 rule!403 lt!1247736 lt!1247736 (rule!8418 (_1!22118 lt!1247723))))))

(assert (=> b!3616774 (isEmpty!22498 (getSuffix!1598 lt!1247736 lt!1247736))))

(declare-fun lt!1247740 () Unit!54537)

(declare-fun lemmaGetSuffixOnListWithItSelfIsEmpty!154 (List!38206) Unit!54537)

(assert (=> b!3616774 (= lt!1247740 (lemmaGetSuffixOnListWithItSelfIsEmpty!154 lt!1247736))))

(declare-fun Unit!54554 () Unit!54537)

(assert (=> b!3616774 (= e!2238523 Unit!54554)))

(declare-fun tp!1105063 () Bool)

(declare-fun b!3616775 () Bool)

(assert (=> b!3616775 (= e!2238540 (and tp!1105063 (inv!51464 (tag!6374 (h!43503 rules!3307))) (inv!51467 (transformation!5660 (h!43503 rules!3307))) e!2238527))))

(declare-fun b!3616776 () Bool)

(assert (=> b!3616776 false))

(declare-fun lt!1247705 () Unit!54537)

(assert (=> b!3616776 (= lt!1247705 call!261595)))

(assert (=> b!3616776 (not call!261594)))

(declare-fun lt!1247720 () Unit!54537)

(assert (=> b!3616776 (= lt!1247720 (lemmaNonSepRuleNotContainsCharContainedInASepRule!366 thiss!23823 rules!3307 rules!3307 (rule!8418 (_1!22118 lt!1247723)) rule!403 lt!1247718))))

(declare-fun Unit!54555 () Unit!54537)

(assert (=> b!3616776 (= e!2238526 Unit!54555)))

(assert (= (and start!336842 res!1463398) b!3616740))

(assert (= (and b!3616740 res!1463399) b!3616761))

(assert (= (and b!3616761 res!1463419) b!3616732))

(assert (= (and b!3616732 res!1463405) b!3616741))

(assert (= (and b!3616741 res!1463409) b!3616753))

(assert (= (and b!3616753 res!1463418) b!3616765))

(assert (= (and b!3616765 res!1463412) b!3616759))

(assert (= (and b!3616759 res!1463415) b!3616728))

(assert (= (and b!3616728 res!1463413) b!3616727))

(assert (= (and b!3616727 res!1463410) b!3616754))

(assert (= (and b!3616754 (not res!1463414)) b!3616746))

(assert (= (and b!3616746 (not res!1463400)) b!3616767))

(assert (= (and b!3616767 (not res!1463407)) b!3616769))

(assert (= (and b!3616769 (not res!1463417)) b!3616729))

(assert (= (and b!3616729 (not res!1463411)) b!3616745))

(assert (= (and b!3616745 res!1463401) b!3616724))

(assert (= (and b!3616724 res!1463406) b!3616734))

(assert (= (and b!3616745 (not res!1463404)) b!3616733))

(assert (= (and b!3616733 (not res!1463402)) b!3616768))

(assert (= (and b!3616768 (not res!1463403)) b!3616760))

(assert (= (and b!3616760 (not res!1463416)) b!3616758))

(assert (= (and b!3616758 c!625780) b!3616749))

(assert (= (and b!3616758 (not c!625780)) b!3616771))

(assert (= (and b!3616758 c!625782) b!3616726))

(assert (= (and b!3616758 (not c!625782)) b!3616772))

(assert (= (and b!3616726 c!625783) b!3616776))

(assert (= (and b!3616726 (not c!625783)) b!3616757))

(assert (= (and b!3616772 c!625781) b!3616738))

(assert (= (and b!3616772 (not c!625781)) b!3616756))

(assert (= (or b!3616776 b!3616738) bm!261590))

(assert (= (or b!3616776 b!3616738) bm!261591))

(assert (= (or b!3616776 b!3616738) bm!261589))

(assert (= (and b!3616758 c!625785) b!3616773))

(assert (= (and b!3616758 (not c!625785)) b!3616739))

(assert (= (and b!3616773 c!625777) b!3616742))

(assert (= (and b!3616773 (not c!625777)) b!3616725))

(assert (= (or b!3616742 b!3616725) bm!261588))

(assert (= (or b!3616742 b!3616725) bm!261593))

(assert (= (or b!3616742 b!3616725) bm!261592))

(assert (= (and b!3616758 c!625779) b!3616743))

(assert (= (and b!3616758 (not c!625779)) b!3616755))

(assert (= (and b!3616758 c!625776) b!3616770))

(assert (= (and b!3616758 (not c!625776)) b!3616730))

(assert (= (and b!3616770 c!625784) b!3616774))

(assert (= (and b!3616770 (not c!625784)) b!3616731))

(assert (= (and b!3616774 res!1463408) b!3616735))

(assert (= (and b!3616770 c!625778) b!3616763))

(assert (= (and b!3616770 (not c!625778)) b!3616752))

(assert (= b!3616775 b!3616736))

(assert (= b!3616737 b!3616775))

(assert (= (and start!336842 ((_ is Cons!38083) rules!3307)) b!3616737))

(assert (= (and start!336842 ((_ is Cons!38082) suffix!1395)) b!3616747))

(assert (= b!3616748 b!3616766))

(assert (= b!3616750 b!3616748))

(assert (= start!336842 b!3616750))

(assert (= b!3616764 b!3616751))

(assert (= start!336842 b!3616764))

(assert (= b!3616744 b!3616762))

(assert (= start!336842 b!3616744))

(declare-fun m!4115421 () Bool)

(assert (=> b!3616761 m!4115421))

(declare-fun m!4115423 () Bool)

(assert (=> b!3616769 m!4115423))

(assert (=> b!3616769 m!4115423))

(declare-fun m!4115425 () Bool)

(assert (=> b!3616769 m!4115425))

(declare-fun m!4115427 () Bool)

(assert (=> b!3616745 m!4115427))

(declare-fun m!4115429 () Bool)

(assert (=> b!3616745 m!4115429))

(declare-fun m!4115431 () Bool)

(assert (=> b!3616745 m!4115431))

(declare-fun m!4115433 () Bool)

(assert (=> b!3616745 m!4115433))

(declare-fun m!4115435 () Bool)

(assert (=> b!3616745 m!4115435))

(declare-fun m!4115437 () Bool)

(assert (=> b!3616745 m!4115437))

(assert (=> b!3616745 m!4115427))

(declare-fun m!4115439 () Bool)

(assert (=> b!3616745 m!4115439))

(declare-fun m!4115441 () Bool)

(assert (=> b!3616745 m!4115441))

(declare-fun m!4115443 () Bool)

(assert (=> b!3616745 m!4115443))

(declare-fun m!4115445 () Bool)

(assert (=> b!3616745 m!4115445))

(declare-fun m!4115447 () Bool)

(assert (=> b!3616745 m!4115447))

(declare-fun m!4115449 () Bool)

(assert (=> b!3616745 m!4115449))

(declare-fun m!4115451 () Bool)

(assert (=> b!3616745 m!4115451))

(declare-fun m!4115453 () Bool)

(assert (=> b!3616745 m!4115453))

(declare-fun m!4115455 () Bool)

(assert (=> b!3616745 m!4115455))

(declare-fun m!4115457 () Bool)

(assert (=> b!3616728 m!4115457))

(declare-fun m!4115459 () Bool)

(assert (=> b!3616774 m!4115459))

(declare-fun m!4115461 () Bool)

(assert (=> b!3616774 m!4115461))

(declare-fun m!4115463 () Bool)

(assert (=> b!3616774 m!4115463))

(declare-fun m!4115465 () Bool)

(assert (=> b!3616774 m!4115465))

(assert (=> b!3616774 m!4115465))

(declare-fun m!4115467 () Bool)

(assert (=> b!3616774 m!4115467))

(declare-fun m!4115469 () Bool)

(assert (=> b!3616763 m!4115469))

(declare-fun m!4115471 () Bool)

(assert (=> b!3616768 m!4115471))

(declare-fun m!4115473 () Bool)

(assert (=> b!3616768 m!4115473))

(declare-fun m!4115475 () Bool)

(assert (=> b!3616768 m!4115475))

(declare-fun m!4115477 () Bool)

(assert (=> b!3616768 m!4115477))

(assert (=> b!3616768 m!4115471))

(declare-fun m!4115479 () Bool)

(assert (=> b!3616768 m!4115479))

(declare-fun m!4115481 () Bool)

(assert (=> b!3616768 m!4115481))

(declare-fun m!4115483 () Bool)

(assert (=> b!3616765 m!4115483))

(declare-fun m!4115485 () Bool)

(assert (=> b!3616765 m!4115485))

(declare-fun m!4115487 () Bool)

(assert (=> b!3616765 m!4115487))

(declare-fun m!4115489 () Bool)

(assert (=> b!3616765 m!4115489))

(declare-fun m!4115491 () Bool)

(assert (=> b!3616738 m!4115491))

(declare-fun m!4115493 () Bool)

(assert (=> b!3616767 m!4115493))

(declare-fun m!4115495 () Bool)

(assert (=> b!3616767 m!4115495))

(declare-fun m!4115497 () Bool)

(assert (=> b!3616767 m!4115497))

(declare-fun m!4115499 () Bool)

(assert (=> bm!261593 m!4115499))

(declare-fun m!4115501 () Bool)

(assert (=> b!3616760 m!4115501))

(declare-fun m!4115503 () Bool)

(assert (=> b!3616760 m!4115503))

(declare-fun m!4115505 () Bool)

(assert (=> b!3616760 m!4115505))

(declare-fun m!4115507 () Bool)

(assert (=> b!3616760 m!4115507))

(declare-fun m!4115509 () Bool)

(assert (=> b!3616760 m!4115509))

(declare-fun m!4115511 () Bool)

(assert (=> b!3616760 m!4115511))

(assert (=> b!3616760 m!4115509))

(declare-fun m!4115513 () Bool)

(assert (=> b!3616760 m!4115513))

(declare-fun m!4115515 () Bool)

(assert (=> b!3616746 m!4115515))

(declare-fun m!4115517 () Bool)

(assert (=> bm!261588 m!4115517))

(declare-fun m!4115519 () Bool)

(assert (=> b!3616742 m!4115519))

(declare-fun m!4115521 () Bool)

(assert (=> b!3616764 m!4115521))

(declare-fun m!4115523 () Bool)

(assert (=> b!3616764 m!4115523))

(declare-fun m!4115525 () Bool)

(assert (=> b!3616749 m!4115525))

(declare-fun m!4115527 () Bool)

(assert (=> bm!261590 m!4115527))

(declare-fun m!4115529 () Bool)

(assert (=> b!3616754 m!4115529))

(declare-fun m!4115531 () Bool)

(assert (=> b!3616754 m!4115531))

(declare-fun m!4115533 () Bool)

(assert (=> b!3616754 m!4115533))

(declare-fun m!4115535 () Bool)

(assert (=> b!3616744 m!4115535))

(declare-fun m!4115537 () Bool)

(assert (=> b!3616744 m!4115537))

(assert (=> b!3616724 m!4115443))

(assert (=> b!3616724 m!4115443))

(declare-fun m!4115539 () Bool)

(assert (=> b!3616724 m!4115539))

(assert (=> b!3616724 m!4115539))

(declare-fun m!4115541 () Bool)

(assert (=> b!3616724 m!4115541))

(declare-fun m!4115543 () Bool)

(assert (=> b!3616724 m!4115543))

(declare-fun m!4115545 () Bool)

(assert (=> b!3616758 m!4115545))

(declare-fun m!4115547 () Bool)

(assert (=> b!3616758 m!4115547))

(declare-fun m!4115549 () Bool)

(assert (=> b!3616758 m!4115549))

(declare-fun m!4115551 () Bool)

(assert (=> b!3616758 m!4115551))

(declare-fun m!4115553 () Bool)

(assert (=> b!3616758 m!4115553))

(declare-fun m!4115555 () Bool)

(assert (=> b!3616758 m!4115555))

(declare-fun m!4115557 () Bool)

(assert (=> b!3616770 m!4115557))

(declare-fun m!4115559 () Bool)

(assert (=> b!3616770 m!4115559))

(declare-fun m!4115561 () Bool)

(assert (=> b!3616770 m!4115561))

(declare-fun m!4115563 () Bool)

(assert (=> bm!261589 m!4115563))

(declare-fun m!4115565 () Bool)

(assert (=> b!3616750 m!4115565))

(declare-fun m!4115567 () Bool)

(assert (=> bm!261592 m!4115567))

(assert (=> bm!261591 m!4115499))

(declare-fun m!4115569 () Bool)

(assert (=> b!3616773 m!4115569))

(declare-fun m!4115571 () Bool)

(assert (=> b!3616773 m!4115571))

(declare-fun m!4115573 () Bool)

(assert (=> b!3616759 m!4115573))

(declare-fun m!4115575 () Bool)

(assert (=> b!3616743 m!4115575))

(declare-fun m!4115577 () Bool)

(assert (=> b!3616725 m!4115577))

(declare-fun m!4115579 () Bool)

(assert (=> b!3616776 m!4115579))

(declare-fun m!4115581 () Bool)

(assert (=> b!3616732 m!4115581))

(declare-fun m!4115583 () Bool)

(assert (=> b!3616729 m!4115583))

(declare-fun m!4115585 () Bool)

(assert (=> start!336842 m!4115585))

(declare-fun m!4115587 () Bool)

(assert (=> b!3616740 m!4115587))

(declare-fun m!4115589 () Bool)

(assert (=> b!3616741 m!4115589))

(declare-fun m!4115591 () Bool)

(assert (=> b!3616733 m!4115591))

(declare-fun m!4115593 () Bool)

(assert (=> b!3616775 m!4115593))

(declare-fun m!4115595 () Bool)

(assert (=> b!3616775 m!4115595))

(declare-fun m!4115597 () Bool)

(assert (=> b!3616748 m!4115597))

(declare-fun m!4115599 () Bool)

(assert (=> b!3616748 m!4115599))

(check-sat b_and!264181 b_and!264185 (not b!3616760) (not start!336842) (not b_next!94827) (not b!3616765) b_and!264177 (not b!3616746) tp_is_empty!17921 (not bm!261592) (not b!3616744) (not b!3616724) (not b!3616750) (not bm!261593) (not b_next!94835) (not b!3616759) (not b!3616774) (not b!3616747) b_and!264183 (not b!3616773) (not b_next!94837) (not b!3616743) (not b!3616733) (not b!3616763) (not b!3616754) b_and!264173 b_and!264171 (not b!3616732) (not b!3616728) b_and!264175 (not b!3616775) (not bm!261591) (not b!3616742) (not b!3616729) (not b!3616745) (not b!3616741) (not b!3616767) (not bm!261589) (not b_next!94829) (not b!3616740) (not b!3616749) (not bm!261590) (not b!3616748) (not b_next!94833) (not b!3616737) (not b_next!94839) (not b!3616768) (not b!3616769) (not b!3616776) b_and!264179 (not b!3616725) (not b!3616738) (not b!3616764) (not b_next!94825) (not bm!261588) (not b!3616758) (not b_next!94831) (not b!3616761) (not b!3616770))
(check-sat (not b_next!94835) b_and!264181 b_and!264185 b_and!264183 (not b_next!94837) b_and!264175 (not b_next!94829) (not b_next!94827) b_and!264179 b_and!264177 (not b_next!94825) (not b_next!94831) b_and!264173 b_and!264171 (not b_next!94833) (not b_next!94839))
