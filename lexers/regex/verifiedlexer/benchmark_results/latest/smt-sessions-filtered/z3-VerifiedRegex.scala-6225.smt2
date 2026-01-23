; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!302170 () Bool)

(assert start!302170)

(declare-fun b!3216775 () Bool)

(declare-fun b_free!85537 () Bool)

(declare-fun b_next!86241 () Bool)

(assert (=> b!3216775 (= b_free!85537 (not b_next!86241))))

(declare-fun tp!1014207 () Bool)

(declare-fun b_and!214775 () Bool)

(assert (=> b!3216775 (= tp!1014207 b_and!214775)))

(declare-fun b_free!85539 () Bool)

(declare-fun b_next!86243 () Bool)

(assert (=> b!3216775 (= b_free!85539 (not b_next!86243))))

(declare-fun tp!1014216 () Bool)

(declare-fun b_and!214777 () Bool)

(assert (=> b!3216775 (= tp!1014216 b_and!214777)))

(declare-fun b!3216773 () Bool)

(declare-fun b_free!85541 () Bool)

(declare-fun b_next!86245 () Bool)

(assert (=> b!3216773 (= b_free!85541 (not b_next!86245))))

(declare-fun tp!1014218 () Bool)

(declare-fun b_and!214779 () Bool)

(assert (=> b!3216773 (= tp!1014218 b_and!214779)))

(declare-fun b_free!85543 () Bool)

(declare-fun b_next!86247 () Bool)

(assert (=> b!3216773 (= b_free!85543 (not b_next!86247))))

(declare-fun tp!1014213 () Bool)

(declare-fun b_and!214781 () Bool)

(assert (=> b!3216773 (= tp!1014213 b_and!214781)))

(declare-fun b!3216778 () Bool)

(declare-fun b_free!85545 () Bool)

(declare-fun b_next!86249 () Bool)

(assert (=> b!3216778 (= b_free!85545 (not b_next!86249))))

(declare-fun tp!1014211 () Bool)

(declare-fun b_and!214783 () Bool)

(assert (=> b!3216778 (= tp!1014211 b_and!214783)))

(declare-fun b_free!85547 () Bool)

(declare-fun b_next!86251 () Bool)

(assert (=> b!3216778 (= b_free!85547 (not b_next!86251))))

(declare-fun tp!1014208 () Bool)

(declare-fun b_and!214785 () Bool)

(assert (=> b!3216778 (= tp!1014208 b_and!214785)))

(declare-fun bs!542237 () Bool)

(declare-fun b!3216762 () Bool)

(declare-fun b!3216793 () Bool)

(assert (= bs!542237 (and b!3216762 b!3216793)))

(declare-fun lambda!117651 () Int)

(declare-fun lambda!117650 () Int)

(assert (=> bs!542237 (not (= lambda!117651 lambda!117650))))

(declare-fun b!3216810 () Bool)

(declare-fun e!2005742 () Bool)

(assert (=> b!3216810 (= e!2005742 true)))

(declare-fun b!3216809 () Bool)

(declare-fun e!2005741 () Bool)

(assert (=> b!3216809 (= e!2005741 e!2005742)))

(declare-fun b!3216808 () Bool)

(declare-fun e!2005740 () Bool)

(assert (=> b!3216808 (= e!2005740 e!2005741)))

(assert (=> b!3216762 e!2005740))

(assert (= b!3216809 b!3216810))

(assert (= b!3216808 b!3216809))

(declare-datatypes ((C!20164 0))(
  ( (C!20165 (val!12130 Int)) )
))
(declare-datatypes ((Regex!9989 0))(
  ( (ElementMatch!9989 (c!540716 C!20164)) (Concat!15449 (regOne!20490 Regex!9989) (regTwo!20490 Regex!9989)) (EmptyExpr!9989) (Star!9989 (reg!10318 Regex!9989)) (EmptyLang!9989) (Union!9989 (regOne!20491 Regex!9989) (regTwo!20491 Regex!9989)) )
))
(declare-datatypes ((List!36328 0))(
  ( (Nil!36204) (Cons!36204 (h!41624 (_ BitVec 16)) (t!239819 List!36328)) )
))
(declare-datatypes ((TokenValue!5460 0))(
  ( (FloatLiteralValue!10920 (text!38665 List!36328)) (TokenValueExt!5459 (__x!23137 Int)) (Broken!27300 (value!169489 List!36328)) (Object!5583) (End!5460) (Def!5460) (Underscore!5460) (Match!5460) (Else!5460) (Error!5460) (Case!5460) (If!5460) (Extends!5460) (Abstract!5460) (Class!5460) (Val!5460) (DelimiterValue!10920 (del!5520 List!36328)) (KeywordValue!5466 (value!169490 List!36328)) (CommentValue!10920 (value!169491 List!36328)) (WhitespaceValue!10920 (value!169492 List!36328)) (IndentationValue!5460 (value!169493 List!36328)) (String!40633) (Int32!5460) (Broken!27301 (value!169494 List!36328)) (Boolean!5461) (Unit!50721) (OperatorValue!5463 (op!5520 List!36328)) (IdentifierValue!10920 (value!169495 List!36328)) (IdentifierValue!10921 (value!169496 List!36328)) (WhitespaceValue!10921 (value!169497 List!36328)) (True!10920) (False!10920) (Broken!27302 (value!169498 List!36328)) (Broken!27303 (value!169499 List!36328)) (True!10921) (RightBrace!5460) (RightBracket!5460) (Colon!5460) (Null!5460) (Comma!5460) (LeftBracket!5460) (False!10921) (LeftBrace!5460) (ImaginaryLiteralValue!5460 (text!38666 List!36328)) (StringLiteralValue!16380 (value!169500 List!36328)) (EOFValue!5460 (value!169501 List!36328)) (IdentValue!5460 (value!169502 List!36328)) (DelimiterValue!10921 (value!169503 List!36328)) (DedentValue!5460 (value!169504 List!36328)) (NewLineValue!5460 (value!169505 List!36328)) (IntegerValue!16380 (value!169506 (_ BitVec 32)) (text!38667 List!36328)) (IntegerValue!16381 (value!169507 Int) (text!38668 List!36328)) (Times!5460) (Or!5460) (Equal!5460) (Minus!5460) (Broken!27304 (value!169508 List!36328)) (And!5460) (Div!5460) (LessEqual!5460) (Mod!5460) (Concat!15450) (Not!5460) (Plus!5460) (SpaceValue!5460 (value!169509 List!36328)) (IntegerValue!16382 (value!169510 Int) (text!38669 List!36328)) (StringLiteralValue!16381 (text!38670 List!36328)) (FloatLiteralValue!10921 (text!38671 List!36328)) (BytesLiteralValue!5460 (value!169511 List!36328)) (CommentValue!10921 (value!169512 List!36328)) (StringLiteralValue!16382 (value!169513 List!36328)) (ErrorTokenValue!5460 (msg!5521 List!36328)) )
))
(declare-datatypes ((List!36329 0))(
  ( (Nil!36205) (Cons!36205 (h!41625 C!20164) (t!239820 List!36329)) )
))
(declare-datatypes ((IArray!21675 0))(
  ( (IArray!21676 (innerList!10895 List!36329)) )
))
(declare-datatypes ((Conc!10835 0))(
  ( (Node!10835 (left!28160 Conc!10835) (right!28490 Conc!10835) (csize!21900 Int) (cheight!11046 Int)) (Leaf!17061 (xs!13953 IArray!21675) (csize!21901 Int)) (Empty!10835) )
))
(declare-datatypes ((BalanceConc!21284 0))(
  ( (BalanceConc!21285 (c!540717 Conc!10835)) )
))
(declare-datatypes ((String!40634 0))(
  ( (String!40635 (value!169514 String)) )
))
(declare-datatypes ((TokenValueInjection!10348 0))(
  ( (TokenValueInjection!10349 (toValue!7322 Int) (toChars!7181 Int)) )
))
(declare-datatypes ((Rule!10260 0))(
  ( (Rule!10261 (regex!5230 Regex!9989) (tag!5760 String!40634) (isSeparator!5230 Bool) (transformation!5230 TokenValueInjection!10348)) )
))
(declare-datatypes ((List!36330 0))(
  ( (Nil!36206) (Cons!36206 (h!41626 Rule!10260) (t!239821 List!36330)) )
))
(declare-fun rules!2135 () List!36330)

(get-info :version)

(assert (= (and b!3216762 ((_ is Cons!36206) rules!2135)) b!3216808))

(declare-fun order!18527 () Int)

(declare-fun order!18525 () Int)

(declare-fun dynLambda!14645 (Int Int) Int)

(declare-fun dynLambda!14646 (Int Int) Int)

(assert (=> b!3216810 (< (dynLambda!14645 order!18525 (toValue!7322 (transformation!5230 (h!41626 rules!2135)))) (dynLambda!14646 order!18527 lambda!117651))))

(declare-fun order!18529 () Int)

(declare-fun dynLambda!14647 (Int Int) Int)

(assert (=> b!3216810 (< (dynLambda!14647 order!18529 (toChars!7181 (transformation!5230 (h!41626 rules!2135)))) (dynLambda!14646 order!18527 lambda!117651))))

(assert (=> b!3216762 true))

(declare-fun b!3216757 () Bool)

(declare-fun e!2005706 () Bool)

(declare-fun e!2005720 () Bool)

(assert (=> b!3216757 (= e!2005706 e!2005720)))

(declare-fun res!1309457 () Bool)

(assert (=> b!3216757 (=> res!1309457 e!2005720)))

(declare-fun lt!1088719 () List!36329)

(declare-fun lt!1088695 () List!36329)

(assert (=> b!3216757 (= res!1309457 (not (= lt!1088719 lt!1088695)))))

(declare-fun lt!1088710 () List!36329)

(declare-fun lt!1088698 () List!36329)

(declare-fun lt!1088705 () List!36329)

(declare-fun ++!8698 (List!36329 List!36329) List!36329)

(assert (=> b!3216757 (= lt!1088695 (++!8698 (++!8698 lt!1088698 lt!1088705) lt!1088710))))

(declare-fun b!3216758 () Bool)

(declare-fun e!2005708 () Bool)

(declare-fun e!2005730 () Bool)

(assert (=> b!3216758 (= e!2005708 e!2005730)))

(declare-fun res!1309461 () Bool)

(assert (=> b!3216758 (=> (not res!1309461) (not e!2005730))))

(declare-fun lt!1088691 () Rule!10260)

(declare-fun lt!1088680 () List!36329)

(declare-fun matchR!4623 (Regex!9989 List!36329) Bool)

(assert (=> b!3216758 (= res!1309461 (matchR!4623 (regex!5230 lt!1088691) lt!1088680))))

(declare-datatypes ((Option!7163 0))(
  ( (None!7162) (Some!7162 (v!35732 Rule!10260)) )
))
(declare-fun lt!1088714 () Option!7163)

(declare-fun get!11532 (Option!7163) Rule!10260)

(assert (=> b!3216758 (= lt!1088691 (get!11532 lt!1088714))))

(declare-fun b!3216759 () Bool)

(declare-fun res!1309456 () Bool)

(declare-fun e!2005728 () Bool)

(assert (=> b!3216759 (=> (not res!1309456) (not e!2005728))))

(declare-fun isEmpty!20303 (List!36330) Bool)

(assert (=> b!3216759 (= res!1309456 (not (isEmpty!20303 rules!2135)))))

(declare-fun b!3216760 () Bool)

(declare-fun e!2005717 () Bool)

(declare-datatypes ((Token!9826 0))(
  ( (Token!9827 (value!169515 TokenValue!5460) (rule!7682 Rule!10260) (size!27293 Int) (originalCharacters!5944 List!36329)) )
))
(declare-datatypes ((List!36331 0))(
  ( (Nil!36207) (Cons!36207 (h!41627 Token!9826) (t!239822 List!36331)) )
))
(declare-datatypes ((IArray!21677 0))(
  ( (IArray!21678 (innerList!10896 List!36331)) )
))
(declare-datatypes ((Conc!10836 0))(
  ( (Node!10836 (left!28161 Conc!10836) (right!28491 Conc!10836) (csize!21902 Int) (cheight!11047 Int)) (Leaf!17062 (xs!13954 IArray!21677) (csize!21903 Int)) (Empty!10836) )
))
(declare-datatypes ((BalanceConc!21286 0))(
  ( (BalanceConc!21287 (c!540718 Conc!10836)) )
))
(declare-datatypes ((tuple2!35622 0))(
  ( (tuple2!35623 (_1!20945 BalanceConc!21286) (_2!20945 BalanceConc!21284)) )
))
(declare-fun lt!1088707 () tuple2!35622)

(declare-fun isEmpty!20304 (BalanceConc!21284) Bool)

(assert (=> b!3216760 (= e!2005717 (not (isEmpty!20304 (_2!20945 lt!1088707))))))

(declare-fun b!3216761 () Bool)

(declare-fun e!2005709 () Bool)

(assert (=> b!3216761 (= e!2005709 e!2005706)))

(declare-fun res!1309480 () Bool)

(assert (=> b!3216761 (=> res!1309480 e!2005706)))

(declare-fun separatorToken!241 () Token!9826)

(declare-fun tokens!494 () List!36331)

(declare-datatypes ((LexerInterface!4819 0))(
  ( (LexerInterfaceExt!4816 (__x!23138 Int)) (Lexer!4817) )
))
(declare-fun thiss!18206 () LexerInterface!4819)

(declare-fun printWithSeparatorTokenList!164 (LexerInterface!4819 List!36331 Token!9826) List!36329)

(assert (=> b!3216761 (= res!1309480 (not (= lt!1088710 (++!8698 (++!8698 lt!1088680 lt!1088705) (printWithSeparatorTokenList!164 thiss!18206 (t!239822 (t!239822 tokens!494)) separatorToken!241)))))))

(declare-fun list!12887 (BalanceConc!21284) List!36329)

(declare-fun charsOf!3246 (Token!9826) BalanceConc!21284)

(assert (=> b!3216761 (= lt!1088680 (list!12887 (charsOf!3246 (h!41627 (t!239822 tokens!494)))))))

(declare-fun lt!1088681 () List!36329)

(assert (=> b!3216761 (= lt!1088681 (++!8698 lt!1088705 lt!1088710))))

(assert (=> b!3216761 (= lt!1088705 (list!12887 (charsOf!3246 separatorToken!241)))))

(assert (=> b!3216761 (= lt!1088710 (printWithSeparatorTokenList!164 thiss!18206 (t!239822 tokens!494) separatorToken!241))))

(assert (=> b!3216761 (= lt!1088719 (printWithSeparatorTokenList!164 thiss!18206 tokens!494 separatorToken!241))))

(declare-fun e!2005704 () Bool)

(assert (=> b!3216762 (= e!2005704 (not (= lt!1088680 Nil!36205)))))

(declare-datatypes ((Unit!50722 0))(
  ( (Unit!50723) )
))
(declare-fun lt!1088677 () Unit!50722)

(declare-fun e!2005712 () Unit!50722)

(assert (=> b!3216762 (= lt!1088677 e!2005712)))

(declare-fun c!540714 () Bool)

(declare-fun lt!1088711 () C!20164)

(declare-fun contains!6479 (List!36329 C!20164) Bool)

(declare-fun usedCharacters!546 (Regex!9989) List!36329)

(assert (=> b!3216762 (= c!540714 (not (contains!6479 (usedCharacters!546 (regex!5230 (rule!7682 (h!41627 (t!239822 tokens!494))))) lt!1088711)))))

(declare-fun head!7053 (List!36329) C!20164)

(assert (=> b!3216762 (= lt!1088711 (head!7053 lt!1088680))))

(declare-datatypes ((tuple2!35624 0))(
  ( (tuple2!35625 (_1!20946 Token!9826) (_2!20946 List!36329)) )
))
(declare-datatypes ((Option!7164 0))(
  ( (None!7163) (Some!7163 (v!35733 tuple2!35624)) )
))
(declare-fun maxPrefixOneRule!1598 (LexerInterface!4819 Rule!10260 List!36329) Option!7164)

(declare-fun apply!8221 (TokenValueInjection!10348 BalanceConc!21284) TokenValue!5460)

(declare-fun seqFromList!3531 (List!36329) BalanceConc!21284)

(declare-fun size!27294 (List!36329) Int)

(assert (=> b!3216762 (= (maxPrefixOneRule!1598 thiss!18206 (rule!7682 (h!41627 (t!239822 tokens!494))) lt!1088680) (Some!7163 (tuple2!35625 (Token!9827 (apply!8221 (transformation!5230 (rule!7682 (h!41627 (t!239822 tokens!494)))) (seqFromList!3531 lt!1088680)) (rule!7682 (h!41627 (t!239822 tokens!494))) (size!27294 lt!1088680) lt!1088680) Nil!36205)))))

(declare-fun lt!1088697 () Unit!50722)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!711 (LexerInterface!4819 List!36330 List!36329 List!36329 List!36329 Rule!10260) Unit!50722)

(assert (=> b!3216762 (= lt!1088697 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!711 thiss!18206 rules!2135 lt!1088680 lt!1088680 Nil!36205 (rule!7682 (h!41627 (t!239822 tokens!494)))))))

(assert (=> b!3216762 e!2005708))

(declare-fun res!1309469 () Bool)

(assert (=> b!3216762 (=> (not res!1309469) (not e!2005708))))

(declare-fun isDefined!5564 (Option!7163) Bool)

(assert (=> b!3216762 (= res!1309469 (isDefined!5564 lt!1088714))))

(declare-fun getRuleFromTag!935 (LexerInterface!4819 List!36330 String!40634) Option!7163)

(assert (=> b!3216762 (= lt!1088714 (getRuleFromTag!935 thiss!18206 rules!2135 (tag!5760 (rule!7682 (h!41627 (t!239822 tokens!494))))))))

(declare-fun lt!1088687 () Unit!50722)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!935 (LexerInterface!4819 List!36330 List!36329 Token!9826) Unit!50722)

(assert (=> b!3216762 (= lt!1088687 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!935 thiss!18206 rules!2135 lt!1088680 (h!41627 (t!239822 tokens!494))))))

(declare-fun lt!1088688 () Bool)

(assert (=> b!3216762 lt!1088688))

(declare-fun lt!1088690 () Unit!50722)

(declare-fun lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!858 (LexerInterface!4819 List!36330 List!36331 Token!9826) Unit!50722)

(assert (=> b!3216762 (= lt!1088690 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!858 thiss!18206 rules!2135 tokens!494 (h!41627 (t!239822 tokens!494))))))

(declare-fun lt!1088678 () List!36329)

(declare-fun maxPrefix!2461 (LexerInterface!4819 List!36330 List!36329) Option!7164)

(assert (=> b!3216762 (= (maxPrefix!2461 thiss!18206 rules!2135 lt!1088678) (Some!7163 (tuple2!35625 (h!41627 tokens!494) lt!1088681)))))

(declare-fun lt!1088700 () Unit!50722)

(declare-fun lemmaMaxPrefWithOtherTypeUsedCharAtStartOfSuffixReturnSame!154 (LexerInterface!4819 List!36330 Token!9826 Rule!10260 List!36329 Rule!10260) Unit!50722)

(assert (=> b!3216762 (= lt!1088700 (lemmaMaxPrefWithOtherTypeUsedCharAtStartOfSuffixReturnSame!154 thiss!18206 rules!2135 (h!41627 tokens!494) (rule!7682 (h!41627 tokens!494)) lt!1088681 (rule!7682 separatorToken!241)))))

(declare-fun lt!1088692 () C!20164)

(assert (=> b!3216762 (not (contains!6479 (usedCharacters!546 (regex!5230 (rule!7682 (h!41627 tokens!494)))) lt!1088692))))

(declare-fun lt!1088715 () Unit!50722)

(declare-fun lemmaNonSepRuleNotContainsCharContainedInASepRule!154 (LexerInterface!4819 List!36330 List!36330 Rule!10260 Rule!10260 C!20164) Unit!50722)

(assert (=> b!3216762 (= lt!1088715 (lemmaNonSepRuleNotContainsCharContainedInASepRule!154 thiss!18206 rules!2135 rules!2135 (rule!7682 (h!41627 tokens!494)) (rule!7682 separatorToken!241) lt!1088692))))

(declare-fun lt!1088706 () Unit!50722)

(declare-fun forallContained!1201 (List!36331 Int Token!9826) Unit!50722)

(assert (=> b!3216762 (= lt!1088706 (forallContained!1201 tokens!494 lambda!117651 (h!41627 (t!239822 tokens!494))))))

(declare-fun lt!1088708 () Bool)

(assert (=> b!3216762 (= lt!1088688 (not lt!1088708))))

(declare-fun rulesProduceIndividualToken!2311 (LexerInterface!4819 List!36330 Token!9826) Bool)

(assert (=> b!3216762 (= lt!1088688 (rulesProduceIndividualToken!2311 thiss!18206 rules!2135 (h!41627 (t!239822 tokens!494))))))

(assert (=> b!3216762 (= lt!1088708 e!2005717)))

(declare-fun res!1309483 () Bool)

(assert (=> b!3216762 (=> res!1309483 e!2005717)))

(declare-fun size!27295 (BalanceConc!21286) Int)

(assert (=> b!3216762 (= res!1309483 (not (= (size!27295 (_1!20945 lt!1088707)) 1)))))

(declare-fun lt!1088718 () BalanceConc!21284)

(declare-fun lex!2149 (LexerInterface!4819 List!36330 BalanceConc!21284) tuple2!35622)

(assert (=> b!3216762 (= lt!1088707 (lex!2149 thiss!18206 rules!2135 lt!1088718))))

(declare-fun lt!1088685 () BalanceConc!21286)

(declare-fun printTailRec!1316 (LexerInterface!4819 BalanceConc!21286 Int BalanceConc!21284) BalanceConc!21284)

(assert (=> b!3216762 (= lt!1088718 (printTailRec!1316 thiss!18206 lt!1088685 0 (BalanceConc!21285 Empty!10835)))))

(declare-fun print!1884 (LexerInterface!4819 BalanceConc!21286) BalanceConc!21284)

(assert (=> b!3216762 (= lt!1088718 (print!1884 thiss!18206 lt!1088685))))

(declare-fun singletonSeq!2326 (Token!9826) BalanceConc!21286)

(assert (=> b!3216762 (= lt!1088685 (singletonSeq!2326 (h!41627 (t!239822 tokens!494))))))

(declare-fun e!2005719 () Bool)

(assert (=> b!3216762 e!2005719))

(declare-fun res!1309468 () Bool)

(assert (=> b!3216762 (=> (not res!1309468) (not e!2005719))))

(declare-fun lt!1088716 () tuple2!35622)

(assert (=> b!3216762 (= res!1309468 (= (size!27295 (_1!20945 lt!1088716)) 1))))

(declare-fun lt!1088699 () BalanceConc!21284)

(assert (=> b!3216762 (= lt!1088716 (lex!2149 thiss!18206 rules!2135 lt!1088699))))

(declare-fun lt!1088703 () BalanceConc!21286)

(assert (=> b!3216762 (= lt!1088699 (printTailRec!1316 thiss!18206 lt!1088703 0 (BalanceConc!21285 Empty!10835)))))

(assert (=> b!3216762 (= lt!1088699 (print!1884 thiss!18206 lt!1088703))))

(assert (=> b!3216762 (= lt!1088703 (singletonSeq!2326 separatorToken!241))))

(declare-fun lt!1088679 () Unit!50722)

(declare-fun e!2005705 () Unit!50722)

(assert (=> b!3216762 (= lt!1088679 e!2005705)))

(declare-fun c!540715 () Bool)

(assert (=> b!3216762 (= c!540715 (not (contains!6479 (usedCharacters!546 (regex!5230 (rule!7682 separatorToken!241))) lt!1088692)))))

(assert (=> b!3216762 (= lt!1088692 (head!7053 lt!1088705))))

(declare-fun e!2005721 () Bool)

(assert (=> b!3216762 e!2005721))

(declare-fun res!1309482 () Bool)

(assert (=> b!3216762 (=> (not res!1309482) (not e!2005721))))

(declare-fun lt!1088683 () Option!7163)

(assert (=> b!3216762 (= res!1309482 (isDefined!5564 lt!1088683))))

(assert (=> b!3216762 (= lt!1088683 (getRuleFromTag!935 thiss!18206 rules!2135 (tag!5760 (rule!7682 separatorToken!241))))))

(declare-fun lt!1088702 () Unit!50722)

(assert (=> b!3216762 (= lt!1088702 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!935 thiss!18206 rules!2135 lt!1088705 separatorToken!241))))

(declare-fun lt!1088720 () BalanceConc!21284)

(assert (=> b!3216762 (= (maxPrefixOneRule!1598 thiss!18206 (rule!7682 (h!41627 tokens!494)) lt!1088698) (Some!7163 (tuple2!35625 (Token!9827 (apply!8221 (transformation!5230 (rule!7682 (h!41627 tokens!494))) lt!1088720) (rule!7682 (h!41627 tokens!494)) (size!27294 lt!1088698) lt!1088698) Nil!36205)))))

(declare-fun lt!1088676 () Unit!50722)

(assert (=> b!3216762 (= lt!1088676 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!711 thiss!18206 rules!2135 lt!1088698 lt!1088698 Nil!36205 (rule!7682 (h!41627 tokens!494))))))

(declare-fun e!2005718 () Bool)

(assert (=> b!3216762 e!2005718))

(declare-fun res!1309470 () Bool)

(assert (=> b!3216762 (=> (not res!1309470) (not e!2005718))))

(declare-fun lt!1088694 () Option!7163)

(assert (=> b!3216762 (= res!1309470 (isDefined!5564 lt!1088694))))

(assert (=> b!3216762 (= lt!1088694 (getRuleFromTag!935 thiss!18206 rules!2135 (tag!5760 (rule!7682 (h!41627 tokens!494)))))))

(declare-fun lt!1088712 () Unit!50722)

(assert (=> b!3216762 (= lt!1088712 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!935 thiss!18206 rules!2135 lt!1088698 (h!41627 tokens!494)))))

(declare-fun lt!1088675 () Unit!50722)

(assert (=> b!3216762 (= lt!1088675 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!858 thiss!18206 rules!2135 tokens!494 (h!41627 tokens!494)))))

(declare-fun b!3216763 () Bool)

(declare-fun res!1309463 () Bool)

(assert (=> b!3216763 (=> (not res!1309463) (not e!2005728))))

(declare-fun sepAndNonSepRulesDisjointChars!1424 (List!36330 List!36330) Bool)

(assert (=> b!3216763 (= res!1309463 (sepAndNonSepRulesDisjointChars!1424 rules!2135 rules!2135))))

(declare-fun b!3216764 () Bool)

(declare-fun e!2005725 () Bool)

(declare-fun lt!1088701 () Rule!10260)

(assert (=> b!3216764 (= e!2005725 (= (rule!7682 (h!41627 tokens!494)) lt!1088701))))

(declare-fun b!3216765 () Bool)

(declare-fun e!2005731 () Bool)

(assert (=> b!3216765 (= e!2005731 false)))

(declare-fun b!3216766 () Bool)

(declare-fun e!2005700 () Bool)

(declare-fun e!2005714 () Bool)

(assert (=> b!3216766 (= e!2005700 e!2005714)))

(declare-fun res!1309476 () Bool)

(assert (=> b!3216766 (=> res!1309476 e!2005714)))

(declare-fun lt!1088709 () List!36329)

(declare-fun lt!1088682 () List!36329)

(assert (=> b!3216766 (= res!1309476 (or (not (= lt!1088682 lt!1088698)) (not (= lt!1088709 lt!1088698))))))

(assert (=> b!3216766 (= lt!1088698 (list!12887 (charsOf!3246 (h!41627 tokens!494))))))

(declare-fun b!3216767 () Bool)

(declare-fun res!1309464 () Bool)

(assert (=> b!3216767 (=> (not res!1309464) (not e!2005728))))

(assert (=> b!3216767 (= res!1309464 (isSeparator!5230 (rule!7682 separatorToken!241)))))

(declare-fun b!3216768 () Bool)

(declare-fun res!1309473 () Bool)

(assert (=> b!3216768 (=> (not res!1309473) (not e!2005728))))

(declare-fun rulesProduceEachTokenIndividually!1270 (LexerInterface!4819 List!36330 BalanceConc!21286) Bool)

(declare-fun seqFromList!3532 (List!36331) BalanceConc!21286)

(assert (=> b!3216768 (= res!1309473 (rulesProduceEachTokenIndividually!1270 thiss!18206 rules!2135 (seqFromList!3532 tokens!494)))))

(declare-fun b!3216769 () Bool)

(declare-fun res!1309479 () Bool)

(assert (=> b!3216769 (=> res!1309479 e!2005717)))

(declare-fun apply!8222 (BalanceConc!21286 Int) Token!9826)

(assert (=> b!3216769 (= res!1309479 (not (= (apply!8222 (_1!20945 lt!1088707) 0) (h!41627 (t!239822 tokens!494)))))))

(declare-fun b!3216770 () Bool)

(declare-fun Unit!50724 () Unit!50722)

(assert (=> b!3216770 (= e!2005712 Unit!50724)))

(declare-fun b!3216771 () Bool)

(declare-fun e!2005729 () Bool)

(declare-fun tp!1014209 () Bool)

(declare-fun e!2005707 () Bool)

(declare-fun inv!49072 (String!40634) Bool)

(declare-fun inv!49075 (TokenValueInjection!10348) Bool)

(assert (=> b!3216771 (= e!2005729 (and tp!1014209 (inv!49072 (tag!5760 (h!41626 rules!2135))) (inv!49075 (transformation!5230 (h!41626 rules!2135))) e!2005707))))

(declare-fun b!3216772 () Bool)

(declare-fun res!1309462 () Bool)

(assert (=> b!3216772 (=> res!1309462 e!2005714)))

(assert (=> b!3216772 (= res!1309462 (not (rulesProduceIndividualToken!2311 thiss!18206 rules!2135 (h!41627 tokens!494))))))

(assert (=> b!3216773 (= e!2005707 (and tp!1014218 tp!1014213))))

(declare-fun b!3216774 () Bool)

(declare-fun e!2005710 () Bool)

(assert (=> b!3216774 (= e!2005721 e!2005710)))

(declare-fun res!1309474 () Bool)

(assert (=> b!3216774 (=> (not res!1309474) (not e!2005710))))

(declare-fun lt!1088704 () Rule!10260)

(assert (=> b!3216774 (= res!1309474 (matchR!4623 (regex!5230 lt!1088704) lt!1088705))))

(assert (=> b!3216774 (= lt!1088704 (get!11532 lt!1088683))))

(declare-fun e!2005699 () Bool)

(assert (=> b!3216775 (= e!2005699 (and tp!1014207 tp!1014216))))

(declare-fun e!2005726 () Bool)

(declare-fun tp!1014215 () Bool)

(declare-fun b!3216776 () Bool)

(declare-fun e!2005733 () Bool)

(declare-fun inv!49076 (Token!9826) Bool)

(assert (=> b!3216776 (= e!2005726 (and (inv!49076 (h!41627 tokens!494)) e!2005733 tp!1014215))))

(declare-fun e!2005703 () Bool)

(declare-fun b!3216777 () Bool)

(declare-fun tp!1014214 () Bool)

(declare-fun e!2005713 () Bool)

(declare-fun inv!21 (TokenValue!5460) Bool)

(assert (=> b!3216777 (= e!2005703 (and (inv!21 (value!169515 separatorToken!241)) e!2005713 tp!1014214))))

(declare-fun e!2005716 () Bool)

(assert (=> b!3216778 (= e!2005716 (and tp!1014211 tp!1014208))))

(declare-fun b!3216779 () Bool)

(assert (=> b!3216779 (= e!2005730 (= (rule!7682 (h!41627 (t!239822 tokens!494))) lt!1088691))))

(declare-fun b!3216780 () Bool)

(assert (=> b!3216780 (= e!2005718 e!2005725)))

(declare-fun res!1309477 () Bool)

(assert (=> b!3216780 (=> (not res!1309477) (not e!2005725))))

(assert (=> b!3216780 (= res!1309477 (matchR!4623 (regex!5230 lt!1088701) lt!1088698))))

(assert (=> b!3216780 (= lt!1088701 (get!11532 lt!1088694))))

(declare-fun b!3216781 () Bool)

(declare-fun e!2005723 () Bool)

(assert (=> b!3216781 (= e!2005714 e!2005723)))

(declare-fun res!1309478 () Bool)

(assert (=> b!3216781 (=> res!1309478 e!2005723)))

(declare-fun isEmpty!20305 (BalanceConc!21286) Bool)

(assert (=> b!3216781 (= res!1309478 (isEmpty!20305 (_1!20945 (lex!2149 thiss!18206 rules!2135 lt!1088720))))))

(assert (=> b!3216781 (= lt!1088720 (seqFromList!3531 lt!1088698))))

(declare-fun b!3216782 () Bool)

(declare-fun Unit!50725 () Unit!50722)

(assert (=> b!3216782 (= e!2005705 Unit!50725)))

(declare-fun lt!1088693 () Unit!50722)

(declare-fun lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!394 (Regex!9989 List!36329 C!20164) Unit!50722)

(assert (=> b!3216782 (= lt!1088693 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!394 (regex!5230 (rule!7682 separatorToken!241)) lt!1088705 lt!1088692))))

(declare-fun res!1309466 () Bool)

(assert (=> b!3216782 (= res!1309466 (not (matchR!4623 (regex!5230 (rule!7682 separatorToken!241)) lt!1088705)))))

(assert (=> b!3216782 (=> (not res!1309466) (not e!2005731))))

(assert (=> b!3216782 e!2005731))

(declare-fun b!3216783 () Bool)

(declare-fun res!1309460 () Bool)

(assert (=> b!3216783 (=> (not res!1309460) (not e!2005719))))

(assert (=> b!3216783 (= res!1309460 (= (apply!8222 (_1!20945 lt!1088716) 0) separatorToken!241))))

(declare-fun b!3216784 () Bool)

(declare-fun res!1309459 () Bool)

(assert (=> b!3216784 (=> (not res!1309459) (not e!2005728))))

(assert (=> b!3216784 (= res!1309459 (and (not ((_ is Nil!36207) tokens!494)) (not ((_ is Nil!36207) (t!239822 tokens!494)))))))

(declare-fun b!3216785 () Bool)

(assert (=> b!3216785 (= e!2005720 e!2005704)))

(declare-fun res!1309471 () Bool)

(assert (=> b!3216785 (=> res!1309471 e!2005704)))

(assert (=> b!3216785 (= res!1309471 (not (= lt!1088719 lt!1088678)))))

(assert (=> b!3216785 (= lt!1088695 lt!1088678)))

(assert (=> b!3216785 (= lt!1088678 (++!8698 lt!1088698 lt!1088681))))

(declare-fun lt!1088684 () Unit!50722)

(declare-fun lemmaConcatAssociativity!1756 (List!36329 List!36329 List!36329) Unit!50722)

(assert (=> b!3216785 (= lt!1088684 (lemmaConcatAssociativity!1756 lt!1088698 lt!1088705 lt!1088710))))

(declare-fun b!3216786 () Bool)

(declare-fun Unit!50726 () Unit!50722)

(assert (=> b!3216786 (= e!2005705 Unit!50726)))

(declare-fun b!3216787 () Bool)

(declare-fun res!1309475 () Bool)

(assert (=> b!3216787 (=> (not res!1309475) (not e!2005728))))

(assert (=> b!3216787 (= res!1309475 (rulesProduceIndividualToken!2311 thiss!18206 rules!2135 separatorToken!241))))

(declare-fun b!3216788 () Bool)

(declare-fun e!2005727 () Bool)

(assert (=> b!3216788 (= e!2005727 false)))

(declare-fun b!3216789 () Bool)

(declare-fun res!1309458 () Bool)

(assert (=> b!3216789 (=> (not res!1309458) (not e!2005728))))

(declare-fun rulesInvariant!4216 (LexerInterface!4819 List!36330) Bool)

(assert (=> b!3216789 (= res!1309458 (rulesInvariant!4216 thiss!18206 rules!2135))))

(declare-fun res!1309484 () Bool)

(assert (=> start!302170 (=> (not res!1309484) (not e!2005728))))

(assert (=> start!302170 (= res!1309484 ((_ is Lexer!4817) thiss!18206))))

(assert (=> start!302170 e!2005728))

(assert (=> start!302170 true))

(declare-fun e!2005702 () Bool)

(assert (=> start!302170 e!2005702))

(assert (=> start!302170 e!2005726))

(assert (=> start!302170 (and (inv!49076 separatorToken!241) e!2005703)))

(declare-fun b!3216790 () Bool)

(assert (=> b!3216790 (= e!2005723 e!2005709)))

(declare-fun res!1309465 () Bool)

(assert (=> b!3216790 (=> res!1309465 e!2005709)))

(assert (=> b!3216790 (= res!1309465 (or (isSeparator!5230 (rule!7682 (h!41627 tokens!494))) (isSeparator!5230 (rule!7682 (h!41627 (t!239822 tokens!494))))))))

(declare-fun lt!1088689 () Unit!50722)

(assert (=> b!3216790 (= lt!1088689 (forallContained!1201 tokens!494 lambda!117650 (h!41627 (t!239822 tokens!494))))))

(declare-fun lt!1088717 () Unit!50722)

(assert (=> b!3216790 (= lt!1088717 (forallContained!1201 tokens!494 lambda!117650 (h!41627 tokens!494)))))

(declare-fun b!3216791 () Bool)

(assert (=> b!3216791 (= e!2005710 (= (rule!7682 separatorToken!241) lt!1088704))))

(declare-fun tp!1014212 () Bool)

(declare-fun e!2005722 () Bool)

(declare-fun b!3216792 () Bool)

(assert (=> b!3216792 (= e!2005722 (and tp!1014212 (inv!49072 (tag!5760 (rule!7682 (h!41627 tokens!494)))) (inv!49075 (transformation!5230 (rule!7682 (h!41627 tokens!494)))) e!2005699))))

(declare-fun res!1309472 () Bool)

(assert (=> b!3216793 (=> (not res!1309472) (not e!2005728))))

(declare-fun forall!7406 (List!36331 Int) Bool)

(assert (=> b!3216793 (= res!1309472 (forall!7406 tokens!494 lambda!117650))))

(declare-fun b!3216794 () Bool)

(declare-fun Unit!50727 () Unit!50722)

(assert (=> b!3216794 (= e!2005712 Unit!50727)))

(declare-fun lt!1088713 () Unit!50722)

(assert (=> b!3216794 (= lt!1088713 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!394 (regex!5230 (rule!7682 (h!41627 (t!239822 tokens!494)))) lt!1088680 lt!1088711))))

(declare-fun res!1309467 () Bool)

(assert (=> b!3216794 (= res!1309467 (not (matchR!4623 (regex!5230 (rule!7682 (h!41627 (t!239822 tokens!494)))) lt!1088680)))))

(assert (=> b!3216794 (=> (not res!1309467) (not e!2005727))))

(assert (=> b!3216794 e!2005727))

(declare-fun b!3216795 () Bool)

(declare-fun tp!1014206 () Bool)

(assert (=> b!3216795 (= e!2005733 (and (inv!21 (value!169515 (h!41627 tokens!494))) e!2005722 tp!1014206))))

(declare-fun b!3216796 () Bool)

(declare-fun tp!1014217 () Bool)

(assert (=> b!3216796 (= e!2005713 (and tp!1014217 (inv!49072 (tag!5760 (rule!7682 separatorToken!241))) (inv!49075 (transformation!5230 (rule!7682 separatorToken!241))) e!2005716))))

(declare-fun b!3216797 () Bool)

(assert (=> b!3216797 (= e!2005719 (isEmpty!20304 (_2!20945 lt!1088716)))))

(declare-fun b!3216798 () Bool)

(assert (=> b!3216798 (= e!2005728 (not e!2005700))))

(declare-fun res!1309481 () Bool)

(assert (=> b!3216798 (=> res!1309481 e!2005700)))

(assert (=> b!3216798 (= res!1309481 (not (= lt!1088709 lt!1088682)))))

(declare-fun printList!1369 (LexerInterface!4819 List!36331) List!36329)

(assert (=> b!3216798 (= lt!1088682 (printList!1369 thiss!18206 (Cons!36207 (h!41627 tokens!494) Nil!36207)))))

(declare-fun lt!1088686 () BalanceConc!21284)

(assert (=> b!3216798 (= lt!1088709 (list!12887 lt!1088686))))

(declare-fun lt!1088696 () BalanceConc!21286)

(assert (=> b!3216798 (= lt!1088686 (printTailRec!1316 thiss!18206 lt!1088696 0 (BalanceConc!21285 Empty!10835)))))

(assert (=> b!3216798 (= lt!1088686 (print!1884 thiss!18206 lt!1088696))))

(assert (=> b!3216798 (= lt!1088696 (singletonSeq!2326 (h!41627 tokens!494)))))

(declare-fun b!3216799 () Bool)

(declare-fun tp!1014210 () Bool)

(assert (=> b!3216799 (= e!2005702 (and e!2005729 tp!1014210))))

(assert (= (and start!302170 res!1309484) b!3216759))

(assert (= (and b!3216759 res!1309456) b!3216789))

(assert (= (and b!3216789 res!1309458) b!3216768))

(assert (= (and b!3216768 res!1309473) b!3216787))

(assert (= (and b!3216787 res!1309475) b!3216767))

(assert (= (and b!3216767 res!1309464) b!3216793))

(assert (= (and b!3216793 res!1309472) b!3216763))

(assert (= (and b!3216763 res!1309463) b!3216784))

(assert (= (and b!3216784 res!1309459) b!3216798))

(assert (= (and b!3216798 (not res!1309481)) b!3216766))

(assert (= (and b!3216766 (not res!1309476)) b!3216772))

(assert (= (and b!3216772 (not res!1309462)) b!3216781))

(assert (= (and b!3216781 (not res!1309478)) b!3216790))

(assert (= (and b!3216790 (not res!1309465)) b!3216761))

(assert (= (and b!3216761 (not res!1309480)) b!3216757))

(assert (= (and b!3216757 (not res!1309457)) b!3216785))

(assert (= (and b!3216785 (not res!1309471)) b!3216762))

(assert (= (and b!3216762 res!1309470) b!3216780))

(assert (= (and b!3216780 res!1309477) b!3216764))

(assert (= (and b!3216762 res!1309482) b!3216774))

(assert (= (and b!3216774 res!1309474) b!3216791))

(assert (= (and b!3216762 c!540715) b!3216782))

(assert (= (and b!3216762 (not c!540715)) b!3216786))

(assert (= (and b!3216782 res!1309466) b!3216765))

(assert (= (and b!3216762 res!1309468) b!3216783))

(assert (= (and b!3216783 res!1309460) b!3216797))

(assert (= (and b!3216762 (not res!1309483)) b!3216769))

(assert (= (and b!3216769 (not res!1309479)) b!3216760))

(assert (= (and b!3216762 res!1309469) b!3216758))

(assert (= (and b!3216758 res!1309461) b!3216779))

(assert (= (and b!3216762 c!540714) b!3216794))

(assert (= (and b!3216762 (not c!540714)) b!3216770))

(assert (= (and b!3216794 res!1309467) b!3216788))

(assert (= b!3216771 b!3216773))

(assert (= b!3216799 b!3216771))

(assert (= (and start!302170 ((_ is Cons!36206) rules!2135)) b!3216799))

(assert (= b!3216792 b!3216775))

(assert (= b!3216795 b!3216792))

(assert (= b!3216776 b!3216795))

(assert (= (and start!302170 ((_ is Cons!36207) tokens!494)) b!3216776))

(assert (= b!3216796 b!3216778))

(assert (= b!3216777 b!3216796))

(assert (= start!302170 b!3216777))

(declare-fun m!3490321 () Bool)

(assert (=> b!3216790 m!3490321))

(declare-fun m!3490323 () Bool)

(assert (=> b!3216790 m!3490323))

(declare-fun m!3490325 () Bool)

(assert (=> b!3216787 m!3490325))

(declare-fun m!3490327 () Bool)

(assert (=> b!3216794 m!3490327))

(declare-fun m!3490329 () Bool)

(assert (=> b!3216794 m!3490329))

(declare-fun m!3490331 () Bool)

(assert (=> b!3216796 m!3490331))

(declare-fun m!3490333 () Bool)

(assert (=> b!3216796 m!3490333))

(declare-fun m!3490335 () Bool)

(assert (=> b!3216762 m!3490335))

(declare-fun m!3490337 () Bool)

(assert (=> b!3216762 m!3490337))

(declare-fun m!3490339 () Bool)

(assert (=> b!3216762 m!3490339))

(declare-fun m!3490341 () Bool)

(assert (=> b!3216762 m!3490341))

(declare-fun m!3490343 () Bool)

(assert (=> b!3216762 m!3490343))

(declare-fun m!3490345 () Bool)

(assert (=> b!3216762 m!3490345))

(declare-fun m!3490347 () Bool)

(assert (=> b!3216762 m!3490347))

(declare-fun m!3490349 () Bool)

(assert (=> b!3216762 m!3490349))

(declare-fun m!3490351 () Bool)

(assert (=> b!3216762 m!3490351))

(declare-fun m!3490353 () Bool)

(assert (=> b!3216762 m!3490353))

(declare-fun m!3490355 () Bool)

(assert (=> b!3216762 m!3490355))

(declare-fun m!3490357 () Bool)

(assert (=> b!3216762 m!3490357))

(declare-fun m!3490359 () Bool)

(assert (=> b!3216762 m!3490359))

(assert (=> b!3216762 m!3490359))

(declare-fun m!3490361 () Bool)

(assert (=> b!3216762 m!3490361))

(declare-fun m!3490363 () Bool)

(assert (=> b!3216762 m!3490363))

(declare-fun m!3490365 () Bool)

(assert (=> b!3216762 m!3490365))

(declare-fun m!3490367 () Bool)

(assert (=> b!3216762 m!3490367))

(assert (=> b!3216762 m!3490349))

(declare-fun m!3490369 () Bool)

(assert (=> b!3216762 m!3490369))

(declare-fun m!3490371 () Bool)

(assert (=> b!3216762 m!3490371))

(declare-fun m!3490373 () Bool)

(assert (=> b!3216762 m!3490373))

(declare-fun m!3490375 () Bool)

(assert (=> b!3216762 m!3490375))

(assert (=> b!3216762 m!3490369))

(declare-fun m!3490377 () Bool)

(assert (=> b!3216762 m!3490377))

(declare-fun m!3490379 () Bool)

(assert (=> b!3216762 m!3490379))

(declare-fun m!3490381 () Bool)

(assert (=> b!3216762 m!3490381))

(declare-fun m!3490383 () Bool)

(assert (=> b!3216762 m!3490383))

(declare-fun m!3490385 () Bool)

(assert (=> b!3216762 m!3490385))

(declare-fun m!3490387 () Bool)

(assert (=> b!3216762 m!3490387))

(declare-fun m!3490389 () Bool)

(assert (=> b!3216762 m!3490389))

(declare-fun m!3490391 () Bool)

(assert (=> b!3216762 m!3490391))

(declare-fun m!3490393 () Bool)

(assert (=> b!3216762 m!3490393))

(assert (=> b!3216762 m!3490365))

(declare-fun m!3490395 () Bool)

(assert (=> b!3216762 m!3490395))

(declare-fun m!3490397 () Bool)

(assert (=> b!3216762 m!3490397))

(declare-fun m!3490399 () Bool)

(assert (=> b!3216762 m!3490399))

(declare-fun m!3490401 () Bool)

(assert (=> b!3216762 m!3490401))

(declare-fun m!3490403 () Bool)

(assert (=> b!3216762 m!3490403))

(declare-fun m!3490405 () Bool)

(assert (=> b!3216762 m!3490405))

(declare-fun m!3490407 () Bool)

(assert (=> b!3216762 m!3490407))

(declare-fun m!3490409 () Bool)

(assert (=> b!3216762 m!3490409))

(declare-fun m!3490411 () Bool)

(assert (=> b!3216762 m!3490411))

(declare-fun m!3490413 () Bool)

(assert (=> b!3216762 m!3490413))

(declare-fun m!3490415 () Bool)

(assert (=> b!3216762 m!3490415))

(declare-fun m!3490417 () Bool)

(assert (=> b!3216762 m!3490417))

(declare-fun m!3490419 () Bool)

(assert (=> b!3216762 m!3490419))

(declare-fun m!3490421 () Bool)

(assert (=> b!3216760 m!3490421))

(declare-fun m!3490423 () Bool)

(assert (=> b!3216769 m!3490423))

(declare-fun m!3490425 () Bool)

(assert (=> b!3216758 m!3490425))

(declare-fun m!3490427 () Bool)

(assert (=> b!3216758 m!3490427))

(declare-fun m!3490429 () Bool)

(assert (=> b!3216777 m!3490429))

(declare-fun m!3490431 () Bool)

(assert (=> b!3216774 m!3490431))

(declare-fun m!3490433 () Bool)

(assert (=> b!3216774 m!3490433))

(declare-fun m!3490435 () Bool)

(assert (=> b!3216795 m!3490435))

(declare-fun m!3490437 () Bool)

(assert (=> b!3216768 m!3490437))

(assert (=> b!3216768 m!3490437))

(declare-fun m!3490439 () Bool)

(assert (=> b!3216768 m!3490439))

(declare-fun m!3490441 () Bool)

(assert (=> b!3216781 m!3490441))

(declare-fun m!3490443 () Bool)

(assert (=> b!3216781 m!3490443))

(declare-fun m!3490445 () Bool)

(assert (=> b!3216781 m!3490445))

(declare-fun m!3490447 () Bool)

(assert (=> b!3216793 m!3490447))

(declare-fun m!3490449 () Bool)

(assert (=> b!3216792 m!3490449))

(declare-fun m!3490451 () Bool)

(assert (=> b!3216792 m!3490451))

(declare-fun m!3490453 () Bool)

(assert (=> b!3216757 m!3490453))

(assert (=> b!3216757 m!3490453))

(declare-fun m!3490455 () Bool)

(assert (=> b!3216757 m!3490455))

(declare-fun m!3490457 () Bool)

(assert (=> b!3216776 m!3490457))

(declare-fun m!3490459 () Bool)

(assert (=> b!3216771 m!3490459))

(declare-fun m!3490461 () Bool)

(assert (=> b!3216771 m!3490461))

(declare-fun m!3490463 () Bool)

(assert (=> b!3216763 m!3490463))

(declare-fun m!3490465 () Bool)

(assert (=> b!3216766 m!3490465))

(assert (=> b!3216766 m!3490465))

(declare-fun m!3490467 () Bool)

(assert (=> b!3216766 m!3490467))

(declare-fun m!3490469 () Bool)

(assert (=> b!3216761 m!3490469))

(declare-fun m!3490471 () Bool)

(assert (=> b!3216761 m!3490471))

(declare-fun m!3490473 () Bool)

(assert (=> b!3216761 m!3490473))

(assert (=> b!3216761 m!3490469))

(declare-fun m!3490475 () Bool)

(assert (=> b!3216761 m!3490475))

(declare-fun m!3490477 () Bool)

(assert (=> b!3216761 m!3490477))

(declare-fun m!3490479 () Bool)

(assert (=> b!3216761 m!3490479))

(declare-fun m!3490481 () Bool)

(assert (=> b!3216761 m!3490481))

(declare-fun m!3490483 () Bool)

(assert (=> b!3216761 m!3490483))

(assert (=> b!3216761 m!3490477))

(declare-fun m!3490485 () Bool)

(assert (=> b!3216761 m!3490485))

(declare-fun m!3490487 () Bool)

(assert (=> b!3216761 m!3490487))

(assert (=> b!3216761 m!3490479))

(assert (=> b!3216761 m!3490483))

(declare-fun m!3490489 () Bool)

(assert (=> b!3216789 m!3490489))

(declare-fun m!3490491 () Bool)

(assert (=> b!3216782 m!3490491))

(declare-fun m!3490493 () Bool)

(assert (=> b!3216782 m!3490493))

(declare-fun m!3490495 () Bool)

(assert (=> b!3216780 m!3490495))

(declare-fun m!3490497 () Bool)

(assert (=> b!3216780 m!3490497))

(declare-fun m!3490499 () Bool)

(assert (=> b!3216797 m!3490499))

(declare-fun m!3490501 () Bool)

(assert (=> b!3216785 m!3490501))

(declare-fun m!3490503 () Bool)

(assert (=> b!3216785 m!3490503))

(declare-fun m!3490505 () Bool)

(assert (=> b!3216798 m!3490505))

(declare-fun m!3490507 () Bool)

(assert (=> b!3216798 m!3490507))

(declare-fun m!3490509 () Bool)

(assert (=> b!3216798 m!3490509))

(declare-fun m!3490511 () Bool)

(assert (=> b!3216798 m!3490511))

(declare-fun m!3490513 () Bool)

(assert (=> b!3216798 m!3490513))

(declare-fun m!3490515 () Bool)

(assert (=> start!302170 m!3490515))

(declare-fun m!3490517 () Bool)

(assert (=> b!3216759 m!3490517))

(declare-fun m!3490519 () Bool)

(assert (=> b!3216772 m!3490519))

(declare-fun m!3490521 () Bool)

(assert (=> b!3216783 m!3490521))

(check-sat (not b!3216757) (not b!3216790) (not b!3216768) b_and!214779 (not b!3216794) (not b!3216798) (not b!3216787) (not b_next!86243) (not start!302170) (not b_next!86249) b_and!214781 (not b!3216797) (not b!3216799) (not b!3216762) (not b!3216795) (not b_next!86247) (not b!3216785) (not b!3216766) b_and!214783 (not b!3216782) (not b!3216763) (not b!3216761) (not b_next!86245) (not b!3216781) (not b_next!86241) (not b!3216777) b_and!214785 (not b!3216792) b_and!214777 (not b!3216771) (not b!3216772) (not b!3216780) (not b!3216769) (not b!3216758) (not b!3216808) (not b!3216793) b_and!214775 (not b!3216774) (not b!3216796) (not b!3216776) (not b_next!86251) (not b!3216760) (not b!3216783) (not b!3216789) (not b!3216759))
(check-sat (not b_next!86247) b_and!214783 (not b_next!86245) (not b_next!86241) b_and!214779 b_and!214785 b_and!214777 b_and!214775 (not b_next!86243) (not b_next!86251) (not b_next!86249) b_and!214781)
(get-model)

(declare-fun d!882804 () Bool)

(declare-fun res!1309501 () Bool)

(declare-fun e!2005747 () Bool)

(assert (=> d!882804 (=> (not res!1309501) (not e!2005747))))

(declare-fun isEmpty!20308 (List!36329) Bool)

(assert (=> d!882804 (= res!1309501 (not (isEmpty!20308 (originalCharacters!5944 separatorToken!241))))))

(assert (=> d!882804 (= (inv!49076 separatorToken!241) e!2005747)))

(declare-fun b!3216825 () Bool)

(declare-fun res!1309502 () Bool)

(assert (=> b!3216825 (=> (not res!1309502) (not e!2005747))))

(declare-fun dynLambda!14648 (Int TokenValue!5460) BalanceConc!21284)

(assert (=> b!3216825 (= res!1309502 (= (originalCharacters!5944 separatorToken!241) (list!12887 (dynLambda!14648 (toChars!7181 (transformation!5230 (rule!7682 separatorToken!241))) (value!169515 separatorToken!241)))))))

(declare-fun b!3216826 () Bool)

(assert (=> b!3216826 (= e!2005747 (= (size!27293 separatorToken!241) (size!27294 (originalCharacters!5944 separatorToken!241))))))

(assert (= (and d!882804 res!1309501) b!3216825))

(assert (= (and b!3216825 res!1309502) b!3216826))

(declare-fun b_lambda!88371 () Bool)

(assert (=> (not b_lambda!88371) (not b!3216825)))

(declare-fun tb!158747 () Bool)

(declare-fun t!239824 () Bool)

(assert (=> (and b!3216775 (= (toChars!7181 (transformation!5230 (rule!7682 (h!41627 tokens!494)))) (toChars!7181 (transformation!5230 (rule!7682 separatorToken!241)))) t!239824) tb!158747))

(declare-fun b!3216841 () Bool)

(declare-fun e!2005760 () Bool)

(declare-fun tp!1014221 () Bool)

(declare-fun inv!49077 (Conc!10835) Bool)

(assert (=> b!3216841 (= e!2005760 (and (inv!49077 (c!540717 (dynLambda!14648 (toChars!7181 (transformation!5230 (rule!7682 separatorToken!241))) (value!169515 separatorToken!241)))) tp!1014221))))

(declare-fun result!201144 () Bool)

(declare-fun inv!49078 (BalanceConc!21284) Bool)

(assert (=> tb!158747 (= result!201144 (and (inv!49078 (dynLambda!14648 (toChars!7181 (transformation!5230 (rule!7682 separatorToken!241))) (value!169515 separatorToken!241))) e!2005760))))

(assert (= tb!158747 b!3216841))

(declare-fun m!3490531 () Bool)

(assert (=> b!3216841 m!3490531))

(declare-fun m!3490537 () Bool)

(assert (=> tb!158747 m!3490537))

(assert (=> b!3216825 t!239824))

(declare-fun b_and!214787 () Bool)

(assert (= b_and!214777 (and (=> t!239824 result!201144) b_and!214787)))

(declare-fun t!239826 () Bool)

(declare-fun tb!158749 () Bool)

(assert (=> (and b!3216773 (= (toChars!7181 (transformation!5230 (h!41626 rules!2135))) (toChars!7181 (transformation!5230 (rule!7682 separatorToken!241)))) t!239826) tb!158749))

(declare-fun result!201148 () Bool)

(assert (= result!201148 result!201144))

(assert (=> b!3216825 t!239826))

(declare-fun b_and!214789 () Bool)

(assert (= b_and!214781 (and (=> t!239826 result!201148) b_and!214789)))

(declare-fun t!239828 () Bool)

(declare-fun tb!158751 () Bool)

(assert (=> (and b!3216778 (= (toChars!7181 (transformation!5230 (rule!7682 separatorToken!241))) (toChars!7181 (transformation!5230 (rule!7682 separatorToken!241)))) t!239828) tb!158751))

(declare-fun result!201150 () Bool)

(assert (= result!201150 result!201144))

(assert (=> b!3216825 t!239828))

(declare-fun b_and!214791 () Bool)

(assert (= b_and!214785 (and (=> t!239828 result!201150) b_and!214791)))

(declare-fun m!3490547 () Bool)

(assert (=> d!882804 m!3490547))

(declare-fun m!3490549 () Bool)

(assert (=> b!3216825 m!3490549))

(assert (=> b!3216825 m!3490549))

(declare-fun m!3490551 () Bool)

(assert (=> b!3216825 m!3490551))

(declare-fun m!3490553 () Bool)

(assert (=> b!3216826 m!3490553))

(assert (=> start!302170 d!882804))

(declare-fun b!3216876 () Bool)

(declare-fun res!1309514 () Bool)

(declare-fun e!2005777 () Bool)

(assert (=> b!3216876 (=> (not res!1309514) (not e!2005777))))

(declare-fun lt!1088738 () List!36329)

(assert (=> b!3216876 (= res!1309514 (= (size!27294 lt!1088738) (+ (size!27294 (++!8698 lt!1088698 lt!1088705)) (size!27294 lt!1088710))))))

(declare-fun b!3216877 () Bool)

(assert (=> b!3216877 (= e!2005777 (or (not (= lt!1088710 Nil!36205)) (= lt!1088738 (++!8698 lt!1088698 lt!1088705))))))

(declare-fun d!882812 () Bool)

(assert (=> d!882812 e!2005777))

(declare-fun res!1309513 () Bool)

(assert (=> d!882812 (=> (not res!1309513) (not e!2005777))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!4899 (List!36329) (InoxSet C!20164))

(assert (=> d!882812 (= res!1309513 (= (content!4899 lt!1088738) ((_ map or) (content!4899 (++!8698 lt!1088698 lt!1088705)) (content!4899 lt!1088710))))))

(declare-fun e!2005778 () List!36329)

(assert (=> d!882812 (= lt!1088738 e!2005778)))

(declare-fun c!540739 () Bool)

(assert (=> d!882812 (= c!540739 ((_ is Nil!36205) (++!8698 lt!1088698 lt!1088705)))))

(assert (=> d!882812 (= (++!8698 (++!8698 lt!1088698 lt!1088705) lt!1088710) lt!1088738)))

(declare-fun b!3216874 () Bool)

(assert (=> b!3216874 (= e!2005778 lt!1088710)))

(declare-fun b!3216875 () Bool)

(assert (=> b!3216875 (= e!2005778 (Cons!36205 (h!41625 (++!8698 lt!1088698 lt!1088705)) (++!8698 (t!239820 (++!8698 lt!1088698 lt!1088705)) lt!1088710)))))

(assert (= (and d!882812 c!540739) b!3216874))

(assert (= (and d!882812 (not c!540739)) b!3216875))

(assert (= (and d!882812 res!1309513) b!3216876))

(assert (= (and b!3216876 res!1309514) b!3216877))

(declare-fun m!3490561 () Bool)

(assert (=> b!3216876 m!3490561))

(assert (=> b!3216876 m!3490453))

(declare-fun m!3490563 () Bool)

(assert (=> b!3216876 m!3490563))

(declare-fun m!3490565 () Bool)

(assert (=> b!3216876 m!3490565))

(declare-fun m!3490567 () Bool)

(assert (=> d!882812 m!3490567))

(assert (=> d!882812 m!3490453))

(declare-fun m!3490569 () Bool)

(assert (=> d!882812 m!3490569))

(declare-fun m!3490571 () Bool)

(assert (=> d!882812 m!3490571))

(declare-fun m!3490573 () Bool)

(assert (=> b!3216875 m!3490573))

(assert (=> b!3216757 d!882812))

(declare-fun b!3216880 () Bool)

(declare-fun res!1309516 () Bool)

(declare-fun e!2005779 () Bool)

(assert (=> b!3216880 (=> (not res!1309516) (not e!2005779))))

(declare-fun lt!1088739 () List!36329)

(assert (=> b!3216880 (= res!1309516 (= (size!27294 lt!1088739) (+ (size!27294 lt!1088698) (size!27294 lt!1088705))))))

(declare-fun b!3216881 () Bool)

(assert (=> b!3216881 (= e!2005779 (or (not (= lt!1088705 Nil!36205)) (= lt!1088739 lt!1088698)))))

(declare-fun d!882816 () Bool)

(assert (=> d!882816 e!2005779))

(declare-fun res!1309515 () Bool)

(assert (=> d!882816 (=> (not res!1309515) (not e!2005779))))

(assert (=> d!882816 (= res!1309515 (= (content!4899 lt!1088739) ((_ map or) (content!4899 lt!1088698) (content!4899 lt!1088705))))))

(declare-fun e!2005780 () List!36329)

(assert (=> d!882816 (= lt!1088739 e!2005780)))

(declare-fun c!540740 () Bool)

(assert (=> d!882816 (= c!540740 ((_ is Nil!36205) lt!1088698))))

(assert (=> d!882816 (= (++!8698 lt!1088698 lt!1088705) lt!1088739)))

(declare-fun b!3216878 () Bool)

(assert (=> b!3216878 (= e!2005780 lt!1088705)))

(declare-fun b!3216879 () Bool)

(assert (=> b!3216879 (= e!2005780 (Cons!36205 (h!41625 lt!1088698) (++!8698 (t!239820 lt!1088698) lt!1088705)))))

(assert (= (and d!882816 c!540740) b!3216878))

(assert (= (and d!882816 (not c!540740)) b!3216879))

(assert (= (and d!882816 res!1309515) b!3216880))

(assert (= (and b!3216880 res!1309516) b!3216881))

(declare-fun m!3490575 () Bool)

(assert (=> b!3216880 m!3490575))

(assert (=> b!3216880 m!3490403))

(declare-fun m!3490577 () Bool)

(assert (=> b!3216880 m!3490577))

(declare-fun m!3490579 () Bool)

(assert (=> d!882816 m!3490579))

(declare-fun m!3490581 () Bool)

(assert (=> d!882816 m!3490581))

(declare-fun m!3490583 () Bool)

(assert (=> d!882816 m!3490583))

(declare-fun m!3490585 () Bool)

(assert (=> b!3216879 m!3490585))

(assert (=> b!3216757 d!882816))

(declare-fun b!3216910 () Bool)

(declare-fun e!2005798 () Bool)

(declare-fun lt!1088742 () Bool)

(assert (=> b!3216910 (= e!2005798 (not lt!1088742))))

(declare-fun b!3216911 () Bool)

(declare-fun e!2005796 () Bool)

(declare-fun e!2005800 () Bool)

(assert (=> b!3216911 (= e!2005796 e!2005800)))

(declare-fun res!1309535 () Bool)

(assert (=> b!3216911 (=> res!1309535 e!2005800)))

(declare-fun call!232833 () Bool)

(assert (=> b!3216911 (= res!1309535 call!232833)))

(declare-fun b!3216912 () Bool)

(declare-fun res!1309540 () Bool)

(declare-fun e!2005799 () Bool)

(assert (=> b!3216912 (=> (not res!1309540) (not e!2005799))))

(declare-fun tail!5218 (List!36329) List!36329)

(assert (=> b!3216912 (= res!1309540 (isEmpty!20308 (tail!5218 lt!1088680)))))

(declare-fun b!3216913 () Bool)

(assert (=> b!3216913 (= e!2005799 (= (head!7053 lt!1088680) (c!540716 (regex!5230 lt!1088691))))))

(declare-fun b!3216914 () Bool)

(declare-fun res!1309536 () Bool)

(declare-fun e!2005797 () Bool)

(assert (=> b!3216914 (=> res!1309536 e!2005797)))

(assert (=> b!3216914 (= res!1309536 e!2005799)))

(declare-fun res!1309533 () Bool)

(assert (=> b!3216914 (=> (not res!1309533) (not e!2005799))))

(assert (=> b!3216914 (= res!1309533 lt!1088742)))

(declare-fun b!3216915 () Bool)

(assert (=> b!3216915 (= e!2005797 e!2005796)))

(declare-fun res!1309537 () Bool)

(assert (=> b!3216915 (=> (not res!1309537) (not e!2005796))))

(assert (=> b!3216915 (= res!1309537 (not lt!1088742))))

(declare-fun b!3216917 () Bool)

(declare-fun e!2005801 () Bool)

(assert (=> b!3216917 (= e!2005801 (= lt!1088742 call!232833))))

(declare-fun bm!232828 () Bool)

(assert (=> bm!232828 (= call!232833 (isEmpty!20308 lt!1088680))))

(declare-fun b!3216918 () Bool)

(assert (=> b!3216918 (= e!2005800 (not (= (head!7053 lt!1088680) (c!540716 (regex!5230 lt!1088691)))))))

(declare-fun b!3216919 () Bool)

(declare-fun res!1309534 () Bool)

(assert (=> b!3216919 (=> res!1309534 e!2005800)))

(assert (=> b!3216919 (= res!1309534 (not (isEmpty!20308 (tail!5218 lt!1088680))))))

(declare-fun b!3216920 () Bool)

(declare-fun e!2005795 () Bool)

(declare-fun derivativeStep!2954 (Regex!9989 C!20164) Regex!9989)

(assert (=> b!3216920 (= e!2005795 (matchR!4623 (derivativeStep!2954 (regex!5230 lt!1088691) (head!7053 lt!1088680)) (tail!5218 lt!1088680)))))

(declare-fun b!3216916 () Bool)

(declare-fun nullable!3401 (Regex!9989) Bool)

(assert (=> b!3216916 (= e!2005795 (nullable!3401 (regex!5230 lt!1088691)))))

(declare-fun d!882818 () Bool)

(assert (=> d!882818 e!2005801))

(declare-fun c!540749 () Bool)

(assert (=> d!882818 (= c!540749 ((_ is EmptyExpr!9989) (regex!5230 lt!1088691)))))

(assert (=> d!882818 (= lt!1088742 e!2005795)))

(declare-fun c!540748 () Bool)

(assert (=> d!882818 (= c!540748 (isEmpty!20308 lt!1088680))))

(declare-fun validRegex!4557 (Regex!9989) Bool)

(assert (=> d!882818 (validRegex!4557 (regex!5230 lt!1088691))))

(assert (=> d!882818 (= (matchR!4623 (regex!5230 lt!1088691) lt!1088680) lt!1088742)))

(declare-fun b!3216921 () Bool)

(declare-fun res!1309539 () Bool)

(assert (=> b!3216921 (=> (not res!1309539) (not e!2005799))))

(assert (=> b!3216921 (= res!1309539 (not call!232833))))

(declare-fun b!3216922 () Bool)

(declare-fun res!1309538 () Bool)

(assert (=> b!3216922 (=> res!1309538 e!2005797)))

(assert (=> b!3216922 (= res!1309538 (not ((_ is ElementMatch!9989) (regex!5230 lt!1088691))))))

(assert (=> b!3216922 (= e!2005798 e!2005797)))

(declare-fun b!3216923 () Bool)

(assert (=> b!3216923 (= e!2005801 e!2005798)))

(declare-fun c!540747 () Bool)

(assert (=> b!3216923 (= c!540747 ((_ is EmptyLang!9989) (regex!5230 lt!1088691)))))

(assert (= (and d!882818 c!540748) b!3216916))

(assert (= (and d!882818 (not c!540748)) b!3216920))

(assert (= (and d!882818 c!540749) b!3216917))

(assert (= (and d!882818 (not c!540749)) b!3216923))

(assert (= (and b!3216923 c!540747) b!3216910))

(assert (= (and b!3216923 (not c!540747)) b!3216922))

(assert (= (and b!3216922 (not res!1309538)) b!3216914))

(assert (= (and b!3216914 res!1309533) b!3216921))

(assert (= (and b!3216921 res!1309539) b!3216912))

(assert (= (and b!3216912 res!1309540) b!3216913))

(assert (= (and b!3216914 (not res!1309536)) b!3216915))

(assert (= (and b!3216915 res!1309537) b!3216911))

(assert (= (and b!3216911 (not res!1309535)) b!3216919))

(assert (= (and b!3216919 (not res!1309534)) b!3216918))

(assert (= (or b!3216917 b!3216911 b!3216921) bm!232828))

(declare-fun m!3490587 () Bool)

(assert (=> d!882818 m!3490587))

(declare-fun m!3490589 () Bool)

(assert (=> d!882818 m!3490589))

(declare-fun m!3490591 () Bool)

(assert (=> b!3216919 m!3490591))

(assert (=> b!3216919 m!3490591))

(declare-fun m!3490593 () Bool)

(assert (=> b!3216919 m!3490593))

(assert (=> b!3216913 m!3490337))

(declare-fun m!3490595 () Bool)

(assert (=> b!3216916 m!3490595))

(assert (=> b!3216912 m!3490591))

(assert (=> b!3216912 m!3490591))

(assert (=> b!3216912 m!3490593))

(assert (=> b!3216920 m!3490337))

(assert (=> b!3216920 m!3490337))

(declare-fun m!3490597 () Bool)

(assert (=> b!3216920 m!3490597))

(assert (=> b!3216920 m!3490591))

(assert (=> b!3216920 m!3490597))

(assert (=> b!3216920 m!3490591))

(declare-fun m!3490599 () Bool)

(assert (=> b!3216920 m!3490599))

(assert (=> bm!232828 m!3490587))

(assert (=> b!3216918 m!3490337))

(assert (=> b!3216758 d!882818))

(declare-fun d!882820 () Bool)

(assert (=> d!882820 (= (get!11532 lt!1088714) (v!35732 lt!1088714))))

(assert (=> b!3216758 d!882820))

(declare-fun b!3216924 () Bool)

(declare-fun e!2005805 () Bool)

(declare-fun lt!1088743 () Bool)

(assert (=> b!3216924 (= e!2005805 (not lt!1088743))))

(declare-fun b!3216925 () Bool)

(declare-fun e!2005803 () Bool)

(declare-fun e!2005807 () Bool)

(assert (=> b!3216925 (= e!2005803 e!2005807)))

(declare-fun res!1309543 () Bool)

(assert (=> b!3216925 (=> res!1309543 e!2005807)))

(declare-fun call!232834 () Bool)

(assert (=> b!3216925 (= res!1309543 call!232834)))

(declare-fun b!3216926 () Bool)

(declare-fun res!1309548 () Bool)

(declare-fun e!2005806 () Bool)

(assert (=> b!3216926 (=> (not res!1309548) (not e!2005806))))

(assert (=> b!3216926 (= res!1309548 (isEmpty!20308 (tail!5218 lt!1088698)))))

(declare-fun b!3216927 () Bool)

(assert (=> b!3216927 (= e!2005806 (= (head!7053 lt!1088698) (c!540716 (regex!5230 lt!1088701))))))

(declare-fun b!3216928 () Bool)

(declare-fun res!1309544 () Bool)

(declare-fun e!2005804 () Bool)

(assert (=> b!3216928 (=> res!1309544 e!2005804)))

(assert (=> b!3216928 (= res!1309544 e!2005806)))

(declare-fun res!1309541 () Bool)

(assert (=> b!3216928 (=> (not res!1309541) (not e!2005806))))

(assert (=> b!3216928 (= res!1309541 lt!1088743)))

(declare-fun b!3216929 () Bool)

(assert (=> b!3216929 (= e!2005804 e!2005803)))

(declare-fun res!1309545 () Bool)

(assert (=> b!3216929 (=> (not res!1309545) (not e!2005803))))

(assert (=> b!3216929 (= res!1309545 (not lt!1088743))))

(declare-fun b!3216931 () Bool)

(declare-fun e!2005808 () Bool)

(assert (=> b!3216931 (= e!2005808 (= lt!1088743 call!232834))))

(declare-fun bm!232829 () Bool)

(assert (=> bm!232829 (= call!232834 (isEmpty!20308 lt!1088698))))

(declare-fun b!3216932 () Bool)

(assert (=> b!3216932 (= e!2005807 (not (= (head!7053 lt!1088698) (c!540716 (regex!5230 lt!1088701)))))))

(declare-fun b!3216933 () Bool)

(declare-fun res!1309542 () Bool)

(assert (=> b!3216933 (=> res!1309542 e!2005807)))

(assert (=> b!3216933 (= res!1309542 (not (isEmpty!20308 (tail!5218 lt!1088698))))))

(declare-fun b!3216934 () Bool)

(declare-fun e!2005802 () Bool)

(assert (=> b!3216934 (= e!2005802 (matchR!4623 (derivativeStep!2954 (regex!5230 lt!1088701) (head!7053 lt!1088698)) (tail!5218 lt!1088698)))))

(declare-fun b!3216930 () Bool)

(assert (=> b!3216930 (= e!2005802 (nullable!3401 (regex!5230 lt!1088701)))))

(declare-fun d!882822 () Bool)

(assert (=> d!882822 e!2005808))

(declare-fun c!540752 () Bool)

(assert (=> d!882822 (= c!540752 ((_ is EmptyExpr!9989) (regex!5230 lt!1088701)))))

(assert (=> d!882822 (= lt!1088743 e!2005802)))

(declare-fun c!540751 () Bool)

(assert (=> d!882822 (= c!540751 (isEmpty!20308 lt!1088698))))

(assert (=> d!882822 (validRegex!4557 (regex!5230 lt!1088701))))

(assert (=> d!882822 (= (matchR!4623 (regex!5230 lt!1088701) lt!1088698) lt!1088743)))

(declare-fun b!3216935 () Bool)

(declare-fun res!1309547 () Bool)

(assert (=> b!3216935 (=> (not res!1309547) (not e!2005806))))

(assert (=> b!3216935 (= res!1309547 (not call!232834))))

(declare-fun b!3216936 () Bool)

(declare-fun res!1309546 () Bool)

(assert (=> b!3216936 (=> res!1309546 e!2005804)))

(assert (=> b!3216936 (= res!1309546 (not ((_ is ElementMatch!9989) (regex!5230 lt!1088701))))))

(assert (=> b!3216936 (= e!2005805 e!2005804)))

(declare-fun b!3216937 () Bool)

(assert (=> b!3216937 (= e!2005808 e!2005805)))

(declare-fun c!540750 () Bool)

(assert (=> b!3216937 (= c!540750 ((_ is EmptyLang!9989) (regex!5230 lt!1088701)))))

(assert (= (and d!882822 c!540751) b!3216930))

(assert (= (and d!882822 (not c!540751)) b!3216934))

(assert (= (and d!882822 c!540752) b!3216931))

(assert (= (and d!882822 (not c!540752)) b!3216937))

(assert (= (and b!3216937 c!540750) b!3216924))

(assert (= (and b!3216937 (not c!540750)) b!3216936))

(assert (= (and b!3216936 (not res!1309546)) b!3216928))

(assert (= (and b!3216928 res!1309541) b!3216935))

(assert (= (and b!3216935 res!1309547) b!3216926))

(assert (= (and b!3216926 res!1309548) b!3216927))

(assert (= (and b!3216928 (not res!1309544)) b!3216929))

(assert (= (and b!3216929 res!1309545) b!3216925))

(assert (= (and b!3216925 (not res!1309543)) b!3216933))

(assert (= (and b!3216933 (not res!1309542)) b!3216932))

(assert (= (or b!3216931 b!3216925 b!3216935) bm!232829))

(declare-fun m!3490601 () Bool)

(assert (=> d!882822 m!3490601))

(declare-fun m!3490603 () Bool)

(assert (=> d!882822 m!3490603))

(declare-fun m!3490605 () Bool)

(assert (=> b!3216933 m!3490605))

(assert (=> b!3216933 m!3490605))

(declare-fun m!3490607 () Bool)

(assert (=> b!3216933 m!3490607))

(declare-fun m!3490609 () Bool)

(assert (=> b!3216927 m!3490609))

(declare-fun m!3490611 () Bool)

(assert (=> b!3216930 m!3490611))

(assert (=> b!3216926 m!3490605))

(assert (=> b!3216926 m!3490605))

(assert (=> b!3216926 m!3490607))

(assert (=> b!3216934 m!3490609))

(assert (=> b!3216934 m!3490609))

(declare-fun m!3490613 () Bool)

(assert (=> b!3216934 m!3490613))

(assert (=> b!3216934 m!3490605))

(assert (=> b!3216934 m!3490613))

(assert (=> b!3216934 m!3490605))

(declare-fun m!3490615 () Bool)

(assert (=> b!3216934 m!3490615))

(assert (=> bm!232829 m!3490601))

(assert (=> b!3216932 m!3490609))

(assert (=> b!3216780 d!882822))

(declare-fun d!882824 () Bool)

(assert (=> d!882824 (= (get!11532 lt!1088694) (v!35732 lt!1088694))))

(assert (=> b!3216780 d!882824))

(declare-fun d!882826 () Bool)

(declare-fun res!1309549 () Bool)

(declare-fun e!2005809 () Bool)

(assert (=> d!882826 (=> (not res!1309549) (not e!2005809))))

(assert (=> d!882826 (= res!1309549 (not (isEmpty!20308 (originalCharacters!5944 (h!41627 tokens!494)))))))

(assert (=> d!882826 (= (inv!49076 (h!41627 tokens!494)) e!2005809)))

(declare-fun b!3216938 () Bool)

(declare-fun res!1309550 () Bool)

(assert (=> b!3216938 (=> (not res!1309550) (not e!2005809))))

(assert (=> b!3216938 (= res!1309550 (= (originalCharacters!5944 (h!41627 tokens!494)) (list!12887 (dynLambda!14648 (toChars!7181 (transformation!5230 (rule!7682 (h!41627 tokens!494)))) (value!169515 (h!41627 tokens!494))))))))

(declare-fun b!3216939 () Bool)

(assert (=> b!3216939 (= e!2005809 (= (size!27293 (h!41627 tokens!494)) (size!27294 (originalCharacters!5944 (h!41627 tokens!494)))))))

(assert (= (and d!882826 res!1309549) b!3216938))

(assert (= (and b!3216938 res!1309550) b!3216939))

(declare-fun b_lambda!88373 () Bool)

(assert (=> (not b_lambda!88373) (not b!3216938)))

(declare-fun t!239830 () Bool)

(declare-fun tb!158753 () Bool)

(assert (=> (and b!3216775 (= (toChars!7181 (transformation!5230 (rule!7682 (h!41627 tokens!494)))) (toChars!7181 (transformation!5230 (rule!7682 (h!41627 tokens!494))))) t!239830) tb!158753))

(declare-fun b!3216940 () Bool)

(declare-fun e!2005810 () Bool)

(declare-fun tp!1014222 () Bool)

(assert (=> b!3216940 (= e!2005810 (and (inv!49077 (c!540717 (dynLambda!14648 (toChars!7181 (transformation!5230 (rule!7682 (h!41627 tokens!494)))) (value!169515 (h!41627 tokens!494))))) tp!1014222))))

(declare-fun result!201152 () Bool)

(assert (=> tb!158753 (= result!201152 (and (inv!49078 (dynLambda!14648 (toChars!7181 (transformation!5230 (rule!7682 (h!41627 tokens!494)))) (value!169515 (h!41627 tokens!494)))) e!2005810))))

(assert (= tb!158753 b!3216940))

(declare-fun m!3490617 () Bool)

(assert (=> b!3216940 m!3490617))

(declare-fun m!3490619 () Bool)

(assert (=> tb!158753 m!3490619))

(assert (=> b!3216938 t!239830))

(declare-fun b_and!214793 () Bool)

(assert (= b_and!214787 (and (=> t!239830 result!201152) b_and!214793)))

(declare-fun t!239832 () Bool)

(declare-fun tb!158755 () Bool)

(assert (=> (and b!3216773 (= (toChars!7181 (transformation!5230 (h!41626 rules!2135))) (toChars!7181 (transformation!5230 (rule!7682 (h!41627 tokens!494))))) t!239832) tb!158755))

(declare-fun result!201154 () Bool)

(assert (= result!201154 result!201152))

(assert (=> b!3216938 t!239832))

(declare-fun b_and!214795 () Bool)

(assert (= b_and!214789 (and (=> t!239832 result!201154) b_and!214795)))

(declare-fun tb!158757 () Bool)

(declare-fun t!239834 () Bool)

(assert (=> (and b!3216778 (= (toChars!7181 (transformation!5230 (rule!7682 separatorToken!241))) (toChars!7181 (transformation!5230 (rule!7682 (h!41627 tokens!494))))) t!239834) tb!158757))

(declare-fun result!201156 () Bool)

(assert (= result!201156 result!201152))

(assert (=> b!3216938 t!239834))

(declare-fun b_and!214797 () Bool)

(assert (= b_and!214791 (and (=> t!239834 result!201156) b_and!214797)))

(declare-fun m!3490621 () Bool)

(assert (=> d!882826 m!3490621))

(declare-fun m!3490623 () Bool)

(assert (=> b!3216938 m!3490623))

(assert (=> b!3216938 m!3490623))

(declare-fun m!3490625 () Bool)

(assert (=> b!3216938 m!3490625))

(declare-fun m!3490627 () Bool)

(assert (=> b!3216939 m!3490627))

(assert (=> b!3216776 d!882826))

(declare-fun d!882828 () Bool)

(declare-fun lt!1088746 () Bool)

(assert (=> d!882828 (= lt!1088746 (isEmpty!20308 (list!12887 (_2!20945 lt!1088716))))))

(declare-fun isEmpty!20310 (Conc!10835) Bool)

(assert (=> d!882828 (= lt!1088746 (isEmpty!20310 (c!540717 (_2!20945 lt!1088716))))))

(assert (=> d!882828 (= (isEmpty!20304 (_2!20945 lt!1088716)) lt!1088746)))

(declare-fun bs!542240 () Bool)

(assert (= bs!542240 d!882828))

(declare-fun m!3490629 () Bool)

(assert (=> bs!542240 m!3490629))

(assert (=> bs!542240 m!3490629))

(declare-fun m!3490631 () Bool)

(assert (=> bs!542240 m!3490631))

(declare-fun m!3490633 () Bool)

(assert (=> bs!542240 m!3490633))

(assert (=> b!3216797 d!882828))

(declare-fun d!882830 () Bool)

(declare-fun list!12889 (Conc!10835) List!36329)

(assert (=> d!882830 (= (list!12887 lt!1088686) (list!12889 (c!540717 lt!1088686)))))

(declare-fun bs!542241 () Bool)

(assert (= bs!542241 d!882830))

(declare-fun m!3490635 () Bool)

(assert (=> bs!542241 m!3490635))

(assert (=> b!3216798 d!882830))

(declare-fun d!882832 () Bool)

(declare-fun lt!1088775 () BalanceConc!21284)

(declare-fun printListTailRec!564 (LexerInterface!4819 List!36331 List!36329) List!36329)

(declare-fun dropList!1081 (BalanceConc!21286 Int) List!36331)

(assert (=> d!882832 (= (list!12887 lt!1088775) (printListTailRec!564 thiss!18206 (dropList!1081 lt!1088696 0) (list!12887 (BalanceConc!21285 Empty!10835))))))

(declare-fun e!2005829 () BalanceConc!21284)

(assert (=> d!882832 (= lt!1088775 e!2005829)))

(declare-fun c!540760 () Bool)

(assert (=> d!882832 (= c!540760 (>= 0 (size!27295 lt!1088696)))))

(declare-fun e!2005828 () Bool)

(assert (=> d!882832 e!2005828))

(declare-fun res!1309564 () Bool)

(assert (=> d!882832 (=> (not res!1309564) (not e!2005828))))

(assert (=> d!882832 (= res!1309564 (>= 0 0))))

(assert (=> d!882832 (= (printTailRec!1316 thiss!18206 lt!1088696 0 (BalanceConc!21285 Empty!10835)) lt!1088775)))

(declare-fun b!3216968 () Bool)

(assert (=> b!3216968 (= e!2005828 (<= 0 (size!27295 lt!1088696)))))

(declare-fun b!3216969 () Bool)

(assert (=> b!3216969 (= e!2005829 (BalanceConc!21285 Empty!10835))))

(declare-fun b!3216970 () Bool)

(declare-fun ++!8699 (BalanceConc!21284 BalanceConc!21284) BalanceConc!21284)

(assert (=> b!3216970 (= e!2005829 (printTailRec!1316 thiss!18206 lt!1088696 (+ 0 1) (++!8699 (BalanceConc!21285 Empty!10835) (charsOf!3246 (apply!8222 lt!1088696 0)))))))

(declare-fun lt!1088771 () List!36331)

(declare-fun list!12890 (BalanceConc!21286) List!36331)

(assert (=> b!3216970 (= lt!1088771 (list!12890 lt!1088696))))

(declare-fun lt!1088776 () Unit!50722)

(declare-fun lemmaDropApply!1040 (List!36331 Int) Unit!50722)

(assert (=> b!3216970 (= lt!1088776 (lemmaDropApply!1040 lt!1088771 0))))

(declare-fun head!7054 (List!36331) Token!9826)

(declare-fun drop!1864 (List!36331 Int) List!36331)

(declare-fun apply!8223 (List!36331 Int) Token!9826)

(assert (=> b!3216970 (= (head!7054 (drop!1864 lt!1088771 0)) (apply!8223 lt!1088771 0))))

(declare-fun lt!1088774 () Unit!50722)

(assert (=> b!3216970 (= lt!1088774 lt!1088776)))

(declare-fun lt!1088772 () List!36331)

(assert (=> b!3216970 (= lt!1088772 (list!12890 lt!1088696))))

(declare-fun lt!1088770 () Unit!50722)

(declare-fun lemmaDropTail!924 (List!36331 Int) Unit!50722)

(assert (=> b!3216970 (= lt!1088770 (lemmaDropTail!924 lt!1088772 0))))

(declare-fun tail!5219 (List!36331) List!36331)

(assert (=> b!3216970 (= (tail!5219 (drop!1864 lt!1088772 0)) (drop!1864 lt!1088772 (+ 0 1)))))

(declare-fun lt!1088773 () Unit!50722)

(assert (=> b!3216970 (= lt!1088773 lt!1088770)))

(assert (= (and d!882832 res!1309564) b!3216968))

(assert (= (and d!882832 c!540760) b!3216969))

(assert (= (and d!882832 (not c!540760)) b!3216970))

(declare-fun m!3490671 () Bool)

(assert (=> d!882832 m!3490671))

(declare-fun m!3490673 () Bool)

(assert (=> d!882832 m!3490673))

(assert (=> d!882832 m!3490671))

(declare-fun m!3490675 () Bool)

(assert (=> d!882832 m!3490675))

(declare-fun m!3490677 () Bool)

(assert (=> d!882832 m!3490677))

(assert (=> d!882832 m!3490675))

(declare-fun m!3490679 () Bool)

(assert (=> d!882832 m!3490679))

(assert (=> b!3216968 m!3490673))

(declare-fun m!3490681 () Bool)

(assert (=> b!3216970 m!3490681))

(declare-fun m!3490683 () Bool)

(assert (=> b!3216970 m!3490683))

(declare-fun m!3490685 () Bool)

(assert (=> b!3216970 m!3490685))

(declare-fun m!3490687 () Bool)

(assert (=> b!3216970 m!3490687))

(declare-fun m!3490689 () Bool)

(assert (=> b!3216970 m!3490689))

(assert (=> b!3216970 m!3490685))

(declare-fun m!3490691 () Bool)

(assert (=> b!3216970 m!3490691))

(declare-fun m!3490693 () Bool)

(assert (=> b!3216970 m!3490693))

(declare-fun m!3490695 () Bool)

(assert (=> b!3216970 m!3490695))

(assert (=> b!3216970 m!3490681))

(declare-fun m!3490697 () Bool)

(assert (=> b!3216970 m!3490697))

(declare-fun m!3490699 () Bool)

(assert (=> b!3216970 m!3490699))

(assert (=> b!3216970 m!3490691))

(assert (=> b!3216970 m!3490697))

(declare-fun m!3490701 () Bool)

(assert (=> b!3216970 m!3490701))

(declare-fun m!3490703 () Bool)

(assert (=> b!3216970 m!3490703))

(assert (=> b!3216970 m!3490693))

(declare-fun m!3490705 () Bool)

(assert (=> b!3216970 m!3490705))

(assert (=> b!3216798 d!882832))

(declare-fun d!882842 () Bool)

(declare-fun lt!1088779 () BalanceConc!21284)

(assert (=> d!882842 (= (list!12887 lt!1088779) (printList!1369 thiss!18206 (list!12890 lt!1088696)))))

(assert (=> d!882842 (= lt!1088779 (printTailRec!1316 thiss!18206 lt!1088696 0 (BalanceConc!21285 Empty!10835)))))

(assert (=> d!882842 (= (print!1884 thiss!18206 lt!1088696) lt!1088779)))

(declare-fun bs!542244 () Bool)

(assert (= bs!542244 d!882842))

(declare-fun m!3490707 () Bool)

(assert (=> bs!542244 m!3490707))

(assert (=> bs!542244 m!3490689))

(assert (=> bs!542244 m!3490689))

(declare-fun m!3490709 () Bool)

(assert (=> bs!542244 m!3490709))

(assert (=> bs!542244 m!3490509))

(assert (=> b!3216798 d!882842))

(declare-fun d!882844 () Bool)

(declare-fun e!2005832 () Bool)

(assert (=> d!882844 e!2005832))

(declare-fun res!1309567 () Bool)

(assert (=> d!882844 (=> (not res!1309567) (not e!2005832))))

(declare-fun lt!1088782 () BalanceConc!21286)

(assert (=> d!882844 (= res!1309567 (= (list!12890 lt!1088782) (Cons!36207 (h!41627 tokens!494) Nil!36207)))))

(declare-fun singleton!997 (Token!9826) BalanceConc!21286)

(assert (=> d!882844 (= lt!1088782 (singleton!997 (h!41627 tokens!494)))))

(assert (=> d!882844 (= (singletonSeq!2326 (h!41627 tokens!494)) lt!1088782)))

(declare-fun b!3216973 () Bool)

(declare-fun isBalanced!3224 (Conc!10836) Bool)

(assert (=> b!3216973 (= e!2005832 (isBalanced!3224 (c!540718 lt!1088782)))))

(assert (= (and d!882844 res!1309567) b!3216973))

(declare-fun m!3490711 () Bool)

(assert (=> d!882844 m!3490711))

(declare-fun m!3490713 () Bool)

(assert (=> d!882844 m!3490713))

(declare-fun m!3490715 () Bool)

(assert (=> b!3216973 m!3490715))

(assert (=> b!3216798 d!882844))

(declare-fun d!882846 () Bool)

(declare-fun c!540763 () Bool)

(assert (=> d!882846 (= c!540763 ((_ is Cons!36207) (Cons!36207 (h!41627 tokens!494) Nil!36207)))))

(declare-fun e!2005835 () List!36329)

(assert (=> d!882846 (= (printList!1369 thiss!18206 (Cons!36207 (h!41627 tokens!494) Nil!36207)) e!2005835)))

(declare-fun b!3216978 () Bool)

(assert (=> b!3216978 (= e!2005835 (++!8698 (list!12887 (charsOf!3246 (h!41627 (Cons!36207 (h!41627 tokens!494) Nil!36207)))) (printList!1369 thiss!18206 (t!239822 (Cons!36207 (h!41627 tokens!494) Nil!36207)))))))

(declare-fun b!3216979 () Bool)

(assert (=> b!3216979 (= e!2005835 Nil!36205)))

(assert (= (and d!882846 c!540763) b!3216978))

(assert (= (and d!882846 (not c!540763)) b!3216979))

(declare-fun m!3490717 () Bool)

(assert (=> b!3216978 m!3490717))

(assert (=> b!3216978 m!3490717))

(declare-fun m!3490719 () Bool)

(assert (=> b!3216978 m!3490719))

(declare-fun m!3490721 () Bool)

(assert (=> b!3216978 m!3490721))

(assert (=> b!3216978 m!3490719))

(assert (=> b!3216978 m!3490721))

(declare-fun m!3490723 () Bool)

(assert (=> b!3216978 m!3490723))

(assert (=> b!3216798 d!882846))

(declare-fun d!882848 () Bool)

(declare-fun c!540771 () Bool)

(assert (=> d!882848 (= c!540771 ((_ is IntegerValue!16380) (value!169515 separatorToken!241)))))

(declare-fun e!2005848 () Bool)

(assert (=> d!882848 (= (inv!21 (value!169515 separatorToken!241)) e!2005848)))

(declare-fun b!3217008 () Bool)

(declare-fun e!2005849 () Bool)

(declare-fun inv!15 (TokenValue!5460) Bool)

(assert (=> b!3217008 (= e!2005849 (inv!15 (value!169515 separatorToken!241)))))

(declare-fun b!3217009 () Bool)

(declare-fun e!2005850 () Bool)

(declare-fun inv!17 (TokenValue!5460) Bool)

(assert (=> b!3217009 (= e!2005850 (inv!17 (value!169515 separatorToken!241)))))

(declare-fun b!3217010 () Bool)

(assert (=> b!3217010 (= e!2005848 e!2005850)))

(declare-fun c!540770 () Bool)

(assert (=> b!3217010 (= c!540770 ((_ is IntegerValue!16381) (value!169515 separatorToken!241)))))

(declare-fun b!3217011 () Bool)

(declare-fun inv!16 (TokenValue!5460) Bool)

(assert (=> b!3217011 (= e!2005848 (inv!16 (value!169515 separatorToken!241)))))

(declare-fun b!3217012 () Bool)

(declare-fun res!1309584 () Bool)

(assert (=> b!3217012 (=> res!1309584 e!2005849)))

(assert (=> b!3217012 (= res!1309584 (not ((_ is IntegerValue!16382) (value!169515 separatorToken!241))))))

(assert (=> b!3217012 (= e!2005850 e!2005849)))

(assert (= (and d!882848 c!540771) b!3217011))

(assert (= (and d!882848 (not c!540771)) b!3217010))

(assert (= (and b!3217010 c!540770) b!3217009))

(assert (= (and b!3217010 (not c!540770)) b!3217012))

(assert (= (and b!3217012 (not res!1309584)) b!3217008))

(declare-fun m!3490725 () Bool)

(assert (=> b!3217008 m!3490725))

(declare-fun m!3490727 () Bool)

(assert (=> b!3217009 m!3490727))

(declare-fun m!3490729 () Bool)

(assert (=> b!3217011 m!3490729))

(assert (=> b!3216777 d!882848))

(declare-fun d!882850 () Bool)

(assert (=> d!882850 (not (matchR!4623 (regex!5230 (rule!7682 (h!41627 (t!239822 tokens!494)))) lt!1088680))))

(declare-fun lt!1088795 () Unit!50722)

(declare-fun choose!18784 (Regex!9989 List!36329 C!20164) Unit!50722)

(assert (=> d!882850 (= lt!1088795 (choose!18784 (regex!5230 (rule!7682 (h!41627 (t!239822 tokens!494)))) lt!1088680 lt!1088711))))

(assert (=> d!882850 (validRegex!4557 (regex!5230 (rule!7682 (h!41627 (t!239822 tokens!494)))))))

(assert (=> d!882850 (= (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!394 (regex!5230 (rule!7682 (h!41627 (t!239822 tokens!494)))) lt!1088680 lt!1088711) lt!1088795)))

(declare-fun bs!542245 () Bool)

(assert (= bs!542245 d!882850))

(assert (=> bs!542245 m!3490329))

(declare-fun m!3490731 () Bool)

(assert (=> bs!542245 m!3490731))

(declare-fun m!3490733 () Bool)

(assert (=> bs!542245 m!3490733))

(assert (=> b!3216794 d!882850))

(declare-fun b!3217013 () Bool)

(declare-fun e!2005854 () Bool)

(declare-fun lt!1088796 () Bool)

(assert (=> b!3217013 (= e!2005854 (not lt!1088796))))

(declare-fun b!3217014 () Bool)

(declare-fun e!2005852 () Bool)

(declare-fun e!2005856 () Bool)

(assert (=> b!3217014 (= e!2005852 e!2005856)))

(declare-fun res!1309587 () Bool)

(assert (=> b!3217014 (=> res!1309587 e!2005856)))

(declare-fun call!232837 () Bool)

(assert (=> b!3217014 (= res!1309587 call!232837)))

(declare-fun b!3217015 () Bool)

(declare-fun res!1309592 () Bool)

(declare-fun e!2005855 () Bool)

(assert (=> b!3217015 (=> (not res!1309592) (not e!2005855))))

(assert (=> b!3217015 (= res!1309592 (isEmpty!20308 (tail!5218 lt!1088680)))))

(declare-fun b!3217016 () Bool)

(assert (=> b!3217016 (= e!2005855 (= (head!7053 lt!1088680) (c!540716 (regex!5230 (rule!7682 (h!41627 (t!239822 tokens!494)))))))))

(declare-fun b!3217017 () Bool)

(declare-fun res!1309588 () Bool)

(declare-fun e!2005853 () Bool)

(assert (=> b!3217017 (=> res!1309588 e!2005853)))

(assert (=> b!3217017 (= res!1309588 e!2005855)))

(declare-fun res!1309585 () Bool)

(assert (=> b!3217017 (=> (not res!1309585) (not e!2005855))))

(assert (=> b!3217017 (= res!1309585 lt!1088796)))

(declare-fun b!3217018 () Bool)

(assert (=> b!3217018 (= e!2005853 e!2005852)))

(declare-fun res!1309589 () Bool)

(assert (=> b!3217018 (=> (not res!1309589) (not e!2005852))))

(assert (=> b!3217018 (= res!1309589 (not lt!1088796))))

(declare-fun b!3217020 () Bool)

(declare-fun e!2005857 () Bool)

(assert (=> b!3217020 (= e!2005857 (= lt!1088796 call!232837))))

(declare-fun bm!232832 () Bool)

(assert (=> bm!232832 (= call!232837 (isEmpty!20308 lt!1088680))))

(declare-fun b!3217021 () Bool)

(assert (=> b!3217021 (= e!2005856 (not (= (head!7053 lt!1088680) (c!540716 (regex!5230 (rule!7682 (h!41627 (t!239822 tokens!494))))))))))

(declare-fun b!3217022 () Bool)

(declare-fun res!1309586 () Bool)

(assert (=> b!3217022 (=> res!1309586 e!2005856)))

(assert (=> b!3217022 (= res!1309586 (not (isEmpty!20308 (tail!5218 lt!1088680))))))

(declare-fun b!3217023 () Bool)

(declare-fun e!2005851 () Bool)

(assert (=> b!3217023 (= e!2005851 (matchR!4623 (derivativeStep!2954 (regex!5230 (rule!7682 (h!41627 (t!239822 tokens!494)))) (head!7053 lt!1088680)) (tail!5218 lt!1088680)))))

(declare-fun b!3217019 () Bool)

(assert (=> b!3217019 (= e!2005851 (nullable!3401 (regex!5230 (rule!7682 (h!41627 (t!239822 tokens!494))))))))

(declare-fun d!882852 () Bool)

(assert (=> d!882852 e!2005857))

(declare-fun c!540775 () Bool)

(assert (=> d!882852 (= c!540775 ((_ is EmptyExpr!9989) (regex!5230 (rule!7682 (h!41627 (t!239822 tokens!494))))))))

(assert (=> d!882852 (= lt!1088796 e!2005851)))

(declare-fun c!540774 () Bool)

(assert (=> d!882852 (= c!540774 (isEmpty!20308 lt!1088680))))

(assert (=> d!882852 (validRegex!4557 (regex!5230 (rule!7682 (h!41627 (t!239822 tokens!494)))))))

(assert (=> d!882852 (= (matchR!4623 (regex!5230 (rule!7682 (h!41627 (t!239822 tokens!494)))) lt!1088680) lt!1088796)))

(declare-fun b!3217024 () Bool)

(declare-fun res!1309591 () Bool)

(assert (=> b!3217024 (=> (not res!1309591) (not e!2005855))))

(assert (=> b!3217024 (= res!1309591 (not call!232837))))

(declare-fun b!3217025 () Bool)

(declare-fun res!1309590 () Bool)

(assert (=> b!3217025 (=> res!1309590 e!2005853)))

(assert (=> b!3217025 (= res!1309590 (not ((_ is ElementMatch!9989) (regex!5230 (rule!7682 (h!41627 (t!239822 tokens!494)))))))))

(assert (=> b!3217025 (= e!2005854 e!2005853)))

(declare-fun b!3217026 () Bool)

(assert (=> b!3217026 (= e!2005857 e!2005854)))

(declare-fun c!540773 () Bool)

(assert (=> b!3217026 (= c!540773 ((_ is EmptyLang!9989) (regex!5230 (rule!7682 (h!41627 (t!239822 tokens!494))))))))

(assert (= (and d!882852 c!540774) b!3217019))

(assert (= (and d!882852 (not c!540774)) b!3217023))

(assert (= (and d!882852 c!540775) b!3217020))

(assert (= (and d!882852 (not c!540775)) b!3217026))

(assert (= (and b!3217026 c!540773) b!3217013))

(assert (= (and b!3217026 (not c!540773)) b!3217025))

(assert (= (and b!3217025 (not res!1309590)) b!3217017))

(assert (= (and b!3217017 res!1309585) b!3217024))

(assert (= (and b!3217024 res!1309591) b!3217015))

(assert (= (and b!3217015 res!1309592) b!3217016))

(assert (= (and b!3217017 (not res!1309588)) b!3217018))

(assert (= (and b!3217018 res!1309589) b!3217014))

(assert (= (and b!3217014 (not res!1309587)) b!3217022))

(assert (= (and b!3217022 (not res!1309586)) b!3217021))

(assert (= (or b!3217020 b!3217014 b!3217024) bm!232832))

(assert (=> d!882852 m!3490587))

(assert (=> d!882852 m!3490733))

(assert (=> b!3217022 m!3490591))

(assert (=> b!3217022 m!3490591))

(assert (=> b!3217022 m!3490593))

(assert (=> b!3217016 m!3490337))

(declare-fun m!3490735 () Bool)

(assert (=> b!3217019 m!3490735))

(assert (=> b!3217015 m!3490591))

(assert (=> b!3217015 m!3490591))

(assert (=> b!3217015 m!3490593))

(assert (=> b!3217023 m!3490337))

(assert (=> b!3217023 m!3490337))

(declare-fun m!3490737 () Bool)

(assert (=> b!3217023 m!3490737))

(assert (=> b!3217023 m!3490591))

(assert (=> b!3217023 m!3490737))

(assert (=> b!3217023 m!3490591))

(declare-fun m!3490739 () Bool)

(assert (=> b!3217023 m!3490739))

(assert (=> bm!232832 m!3490587))

(assert (=> b!3217021 m!3490337))

(assert (=> b!3216794 d!882852))

(declare-fun b!3217036 () Bool)

(declare-fun e!2005864 () Bool)

(declare-fun lt!1088802 () Bool)

(assert (=> b!3217036 (= e!2005864 (not lt!1088802))))

(declare-fun b!3217037 () Bool)

(declare-fun e!2005862 () Bool)

(declare-fun e!2005866 () Bool)

(assert (=> b!3217037 (= e!2005862 e!2005866)))

(declare-fun res!1309602 () Bool)

(assert (=> b!3217037 (=> res!1309602 e!2005866)))

(declare-fun call!232839 () Bool)

(assert (=> b!3217037 (= res!1309602 call!232839)))

(declare-fun b!3217038 () Bool)

(declare-fun res!1309607 () Bool)

(declare-fun e!2005865 () Bool)

(assert (=> b!3217038 (=> (not res!1309607) (not e!2005865))))

(assert (=> b!3217038 (= res!1309607 (isEmpty!20308 (tail!5218 lt!1088705)))))

(declare-fun b!3217039 () Bool)

(assert (=> b!3217039 (= e!2005865 (= (head!7053 lt!1088705) (c!540716 (regex!5230 lt!1088704))))))

(declare-fun b!3217040 () Bool)

(declare-fun res!1309603 () Bool)

(declare-fun e!2005863 () Bool)

(assert (=> b!3217040 (=> res!1309603 e!2005863)))

(assert (=> b!3217040 (= res!1309603 e!2005865)))

(declare-fun res!1309600 () Bool)

(assert (=> b!3217040 (=> (not res!1309600) (not e!2005865))))

(assert (=> b!3217040 (= res!1309600 lt!1088802)))

(declare-fun b!3217041 () Bool)

(assert (=> b!3217041 (= e!2005863 e!2005862)))

(declare-fun res!1309604 () Bool)

(assert (=> b!3217041 (=> (not res!1309604) (not e!2005862))))

(assert (=> b!3217041 (= res!1309604 (not lt!1088802))))

(declare-fun b!3217043 () Bool)

(declare-fun e!2005867 () Bool)

(assert (=> b!3217043 (= e!2005867 (= lt!1088802 call!232839))))

(declare-fun bm!232834 () Bool)

(assert (=> bm!232834 (= call!232839 (isEmpty!20308 lt!1088705))))

(declare-fun b!3217044 () Bool)

(assert (=> b!3217044 (= e!2005866 (not (= (head!7053 lt!1088705) (c!540716 (regex!5230 lt!1088704)))))))

(declare-fun b!3217045 () Bool)

(declare-fun res!1309601 () Bool)

(assert (=> b!3217045 (=> res!1309601 e!2005866)))

(assert (=> b!3217045 (= res!1309601 (not (isEmpty!20308 (tail!5218 lt!1088705))))))

(declare-fun b!3217046 () Bool)

(declare-fun e!2005861 () Bool)

(assert (=> b!3217046 (= e!2005861 (matchR!4623 (derivativeStep!2954 (regex!5230 lt!1088704) (head!7053 lt!1088705)) (tail!5218 lt!1088705)))))

(declare-fun b!3217042 () Bool)

(assert (=> b!3217042 (= e!2005861 (nullable!3401 (regex!5230 lt!1088704)))))

(declare-fun d!882854 () Bool)

(assert (=> d!882854 e!2005867))

(declare-fun c!540779 () Bool)

(assert (=> d!882854 (= c!540779 ((_ is EmptyExpr!9989) (regex!5230 lt!1088704)))))

(assert (=> d!882854 (= lt!1088802 e!2005861)))

(declare-fun c!540778 () Bool)

(assert (=> d!882854 (= c!540778 (isEmpty!20308 lt!1088705))))

(assert (=> d!882854 (validRegex!4557 (regex!5230 lt!1088704))))

(assert (=> d!882854 (= (matchR!4623 (regex!5230 lt!1088704) lt!1088705) lt!1088802)))

(declare-fun b!3217047 () Bool)

(declare-fun res!1309606 () Bool)

(assert (=> b!3217047 (=> (not res!1309606) (not e!2005865))))

(assert (=> b!3217047 (= res!1309606 (not call!232839))))

(declare-fun b!3217048 () Bool)

(declare-fun res!1309605 () Bool)

(assert (=> b!3217048 (=> res!1309605 e!2005863)))

(assert (=> b!3217048 (= res!1309605 (not ((_ is ElementMatch!9989) (regex!5230 lt!1088704))))))

(assert (=> b!3217048 (= e!2005864 e!2005863)))

(declare-fun b!3217049 () Bool)

(assert (=> b!3217049 (= e!2005867 e!2005864)))

(declare-fun c!540777 () Bool)

(assert (=> b!3217049 (= c!540777 ((_ is EmptyLang!9989) (regex!5230 lt!1088704)))))

(assert (= (and d!882854 c!540778) b!3217042))

(assert (= (and d!882854 (not c!540778)) b!3217046))

(assert (= (and d!882854 c!540779) b!3217043))

(assert (= (and d!882854 (not c!540779)) b!3217049))

(assert (= (and b!3217049 c!540777) b!3217036))

(assert (= (and b!3217049 (not c!540777)) b!3217048))

(assert (= (and b!3217048 (not res!1309605)) b!3217040))

(assert (= (and b!3217040 res!1309600) b!3217047))

(assert (= (and b!3217047 res!1309606) b!3217038))

(assert (= (and b!3217038 res!1309607) b!3217039))

(assert (= (and b!3217040 (not res!1309603)) b!3217041))

(assert (= (and b!3217041 res!1309604) b!3217037))

(assert (= (and b!3217037 (not res!1309602)) b!3217045))

(assert (= (and b!3217045 (not res!1309601)) b!3217044))

(assert (= (or b!3217043 b!3217037 b!3217047) bm!232834))

(declare-fun m!3490741 () Bool)

(assert (=> d!882854 m!3490741))

(declare-fun m!3490743 () Bool)

(assert (=> d!882854 m!3490743))

(declare-fun m!3490745 () Bool)

(assert (=> b!3217045 m!3490745))

(assert (=> b!3217045 m!3490745))

(declare-fun m!3490747 () Bool)

(assert (=> b!3217045 m!3490747))

(assert (=> b!3217039 m!3490341))

(declare-fun m!3490749 () Bool)

(assert (=> b!3217042 m!3490749))

(assert (=> b!3217038 m!3490745))

(assert (=> b!3217038 m!3490745))

(assert (=> b!3217038 m!3490747))

(assert (=> b!3217046 m!3490341))

(assert (=> b!3217046 m!3490341))

(declare-fun m!3490751 () Bool)

(assert (=> b!3217046 m!3490751))

(assert (=> b!3217046 m!3490745))

(assert (=> b!3217046 m!3490751))

(assert (=> b!3217046 m!3490745))

(declare-fun m!3490753 () Bool)

(assert (=> b!3217046 m!3490753))

(assert (=> bm!232834 m!3490741))

(assert (=> b!3217044 m!3490341))

(assert (=> b!3216774 d!882854))

(declare-fun d!882856 () Bool)

(assert (=> d!882856 (= (get!11532 lt!1088683) (v!35732 lt!1088683))))

(assert (=> b!3216774 d!882856))

(declare-fun d!882858 () Bool)

(declare-fun c!540781 () Bool)

(assert (=> d!882858 (= c!540781 ((_ is IntegerValue!16380) (value!169515 (h!41627 tokens!494))))))

(declare-fun e!2005868 () Bool)

(assert (=> d!882858 (= (inv!21 (value!169515 (h!41627 tokens!494))) e!2005868)))

(declare-fun b!3217050 () Bool)

(declare-fun e!2005869 () Bool)

(assert (=> b!3217050 (= e!2005869 (inv!15 (value!169515 (h!41627 tokens!494))))))

(declare-fun b!3217051 () Bool)

(declare-fun e!2005870 () Bool)

(assert (=> b!3217051 (= e!2005870 (inv!17 (value!169515 (h!41627 tokens!494))))))

(declare-fun b!3217052 () Bool)

(assert (=> b!3217052 (= e!2005868 e!2005870)))

(declare-fun c!540780 () Bool)

(assert (=> b!3217052 (= c!540780 ((_ is IntegerValue!16381) (value!169515 (h!41627 tokens!494))))))

(declare-fun b!3217053 () Bool)

(assert (=> b!3217053 (= e!2005868 (inv!16 (value!169515 (h!41627 tokens!494))))))

(declare-fun b!3217054 () Bool)

(declare-fun res!1309608 () Bool)

(assert (=> b!3217054 (=> res!1309608 e!2005869)))

(assert (=> b!3217054 (= res!1309608 (not ((_ is IntegerValue!16382) (value!169515 (h!41627 tokens!494)))))))

(assert (=> b!3217054 (= e!2005870 e!2005869)))

(assert (= (and d!882858 c!540781) b!3217053))

(assert (= (and d!882858 (not c!540781)) b!3217052))

(assert (= (and b!3217052 c!540780) b!3217051))

(assert (= (and b!3217052 (not c!540780)) b!3217054))

(assert (= (and b!3217054 (not res!1309608)) b!3217050))

(declare-fun m!3490765 () Bool)

(assert (=> b!3217050 m!3490765))

(declare-fun m!3490767 () Bool)

(assert (=> b!3217051 m!3490767))

(declare-fun m!3490769 () Bool)

(assert (=> b!3217053 m!3490769))

(assert (=> b!3216795 d!882858))

(declare-fun d!882860 () Bool)

(assert (=> d!882860 (= (inv!49072 (tag!5760 (rule!7682 separatorToken!241))) (= (mod (str.len (value!169514 (tag!5760 (rule!7682 separatorToken!241)))) 2) 0))))

(assert (=> b!3216796 d!882860))

(declare-fun d!882862 () Bool)

(declare-fun res!1309611 () Bool)

(declare-fun e!2005876 () Bool)

(assert (=> d!882862 (=> (not res!1309611) (not e!2005876))))

(declare-fun semiInverseModEq!2158 (Int Int) Bool)

(assert (=> d!882862 (= res!1309611 (semiInverseModEq!2158 (toChars!7181 (transformation!5230 (rule!7682 separatorToken!241))) (toValue!7322 (transformation!5230 (rule!7682 separatorToken!241)))))))

(assert (=> d!882862 (= (inv!49075 (transformation!5230 (rule!7682 separatorToken!241))) e!2005876)))

(declare-fun b!3217063 () Bool)

(declare-fun equivClasses!2057 (Int Int) Bool)

(assert (=> b!3217063 (= e!2005876 (equivClasses!2057 (toChars!7181 (transformation!5230 (rule!7682 separatorToken!241))) (toValue!7322 (transformation!5230 (rule!7682 separatorToken!241)))))))

(assert (= (and d!882862 res!1309611) b!3217063))

(declare-fun m!3490797 () Bool)

(assert (=> d!882862 m!3490797))

(declare-fun m!3490799 () Bool)

(assert (=> b!3217063 m!3490799))

(assert (=> b!3216796 d!882862))

(declare-fun d!882868 () Bool)

(assert (=> d!882868 (= (inv!49072 (tag!5760 (rule!7682 (h!41627 tokens!494)))) (= (mod (str.len (value!169514 (tag!5760 (rule!7682 (h!41627 tokens!494))))) 2) 0))))

(assert (=> b!3216792 d!882868))

(declare-fun d!882870 () Bool)

(declare-fun res!1309612 () Bool)

(declare-fun e!2005877 () Bool)

(assert (=> d!882870 (=> (not res!1309612) (not e!2005877))))

(assert (=> d!882870 (= res!1309612 (semiInverseModEq!2158 (toChars!7181 (transformation!5230 (rule!7682 (h!41627 tokens!494)))) (toValue!7322 (transformation!5230 (rule!7682 (h!41627 tokens!494))))))))

(assert (=> d!882870 (= (inv!49075 (transformation!5230 (rule!7682 (h!41627 tokens!494)))) e!2005877)))

(declare-fun b!3217064 () Bool)

(assert (=> b!3217064 (= e!2005877 (equivClasses!2057 (toChars!7181 (transformation!5230 (rule!7682 (h!41627 tokens!494)))) (toValue!7322 (transformation!5230 (rule!7682 (h!41627 tokens!494))))))))

(assert (= (and d!882870 res!1309612) b!3217064))

(declare-fun m!3490801 () Bool)

(assert (=> d!882870 m!3490801))

(declare-fun m!3490803 () Bool)

(assert (=> b!3217064 m!3490803))

(assert (=> b!3216792 d!882870))

(declare-fun d!882872 () Bool)

(assert (=> d!882872 (= (inv!49072 (tag!5760 (h!41626 rules!2135))) (= (mod (str.len (value!169514 (tag!5760 (h!41626 rules!2135)))) 2) 0))))

(assert (=> b!3216771 d!882872))

(declare-fun d!882874 () Bool)

(declare-fun res!1309613 () Bool)

(declare-fun e!2005878 () Bool)

(assert (=> d!882874 (=> (not res!1309613) (not e!2005878))))

(assert (=> d!882874 (= res!1309613 (semiInverseModEq!2158 (toChars!7181 (transformation!5230 (h!41626 rules!2135))) (toValue!7322 (transformation!5230 (h!41626 rules!2135)))))))

(assert (=> d!882874 (= (inv!49075 (transformation!5230 (h!41626 rules!2135))) e!2005878)))

(declare-fun b!3217065 () Bool)

(assert (=> b!3217065 (= e!2005878 (equivClasses!2057 (toChars!7181 (transformation!5230 (h!41626 rules!2135))) (toValue!7322 (transformation!5230 (h!41626 rules!2135)))))))

(assert (= (and d!882874 res!1309613) b!3217065))

(declare-fun m!3490805 () Bool)

(assert (=> d!882874 m!3490805))

(declare-fun m!3490807 () Bool)

(assert (=> b!3217065 m!3490807))

(assert (=> b!3216771 d!882874))

(declare-fun d!882876 () Bool)

(declare-fun lt!1088814 () Bool)

(declare-fun e!2005888 () Bool)

(assert (=> d!882876 (= lt!1088814 e!2005888)))

(declare-fun res!1309620 () Bool)

(assert (=> d!882876 (=> (not res!1309620) (not e!2005888))))

(assert (=> d!882876 (= res!1309620 (= (list!12890 (_1!20945 (lex!2149 thiss!18206 rules!2135 (print!1884 thiss!18206 (singletonSeq!2326 (h!41627 tokens!494)))))) (list!12890 (singletonSeq!2326 (h!41627 tokens!494)))))))

(declare-fun e!2005887 () Bool)

(assert (=> d!882876 (= lt!1088814 e!2005887)))

(declare-fun res!1309621 () Bool)

(assert (=> d!882876 (=> (not res!1309621) (not e!2005887))))

(declare-fun lt!1088813 () tuple2!35622)

(assert (=> d!882876 (= res!1309621 (= (size!27295 (_1!20945 lt!1088813)) 1))))

(assert (=> d!882876 (= lt!1088813 (lex!2149 thiss!18206 rules!2135 (print!1884 thiss!18206 (singletonSeq!2326 (h!41627 tokens!494)))))))

(assert (=> d!882876 (not (isEmpty!20303 rules!2135))))

(assert (=> d!882876 (= (rulesProduceIndividualToken!2311 thiss!18206 rules!2135 (h!41627 tokens!494)) lt!1088814)))

(declare-fun b!3217080 () Bool)

(declare-fun res!1309622 () Bool)

(assert (=> b!3217080 (=> (not res!1309622) (not e!2005887))))

(assert (=> b!3217080 (= res!1309622 (= (apply!8222 (_1!20945 lt!1088813) 0) (h!41627 tokens!494)))))

(declare-fun b!3217081 () Bool)

(assert (=> b!3217081 (= e!2005887 (isEmpty!20304 (_2!20945 lt!1088813)))))

(declare-fun b!3217082 () Bool)

(assert (=> b!3217082 (= e!2005888 (isEmpty!20304 (_2!20945 (lex!2149 thiss!18206 rules!2135 (print!1884 thiss!18206 (singletonSeq!2326 (h!41627 tokens!494)))))))))

(assert (= (and d!882876 res!1309621) b!3217080))

(assert (= (and b!3217080 res!1309622) b!3217081))

(assert (= (and d!882876 res!1309620) b!3217082))

(declare-fun m!3490825 () Bool)

(assert (=> d!882876 m!3490825))

(declare-fun m!3490827 () Bool)

(assert (=> d!882876 m!3490827))

(assert (=> d!882876 m!3490505))

(declare-fun m!3490829 () Bool)

(assert (=> d!882876 m!3490829))

(assert (=> d!882876 m!3490505))

(assert (=> d!882876 m!3490505))

(declare-fun m!3490831 () Bool)

(assert (=> d!882876 m!3490831))

(assert (=> d!882876 m!3490517))

(assert (=> d!882876 m!3490831))

(declare-fun m!3490833 () Bool)

(assert (=> d!882876 m!3490833))

(declare-fun m!3490835 () Bool)

(assert (=> b!3217080 m!3490835))

(declare-fun m!3490837 () Bool)

(assert (=> b!3217081 m!3490837))

(assert (=> b!3217082 m!3490505))

(assert (=> b!3217082 m!3490505))

(assert (=> b!3217082 m!3490831))

(assert (=> b!3217082 m!3490831))

(assert (=> b!3217082 m!3490833))

(declare-fun m!3490839 () Bool)

(assert (=> b!3217082 m!3490839))

(assert (=> b!3216772 d!882876))

(declare-fun d!882886 () Bool)

(declare-fun res!1309627 () Bool)

(declare-fun e!2005893 () Bool)

(assert (=> d!882886 (=> res!1309627 e!2005893)))

(assert (=> d!882886 (= res!1309627 ((_ is Nil!36207) tokens!494))))

(assert (=> d!882886 (= (forall!7406 tokens!494 lambda!117650) e!2005893)))

(declare-fun b!3217087 () Bool)

(declare-fun e!2005894 () Bool)

(assert (=> b!3217087 (= e!2005893 e!2005894)))

(declare-fun res!1309628 () Bool)

(assert (=> b!3217087 (=> (not res!1309628) (not e!2005894))))

(declare-fun dynLambda!14651 (Int Token!9826) Bool)

(assert (=> b!3217087 (= res!1309628 (dynLambda!14651 lambda!117650 (h!41627 tokens!494)))))

(declare-fun b!3217088 () Bool)

(assert (=> b!3217088 (= e!2005894 (forall!7406 (t!239822 tokens!494) lambda!117650))))

(assert (= (and d!882886 (not res!1309627)) b!3217087))

(assert (= (and b!3217087 res!1309628) b!3217088))

(declare-fun b_lambda!88375 () Bool)

(assert (=> (not b_lambda!88375) (not b!3217087)))

(declare-fun m!3490841 () Bool)

(assert (=> b!3217087 m!3490841))

(declare-fun m!3490843 () Bool)

(assert (=> b!3217088 m!3490843))

(assert (=> b!3216793 d!882886))

(declare-fun bs!542250 () Bool)

(declare-fun d!882888 () Bool)

(assert (= bs!542250 (and d!882888 b!3216793)))

(declare-fun lambda!117656 () Int)

(assert (=> bs!542250 (not (= lambda!117656 lambda!117650))))

(declare-fun bs!542251 () Bool)

(assert (= bs!542251 (and d!882888 b!3216762)))

(assert (=> bs!542251 (= lambda!117656 lambda!117651)))

(declare-fun b!3217135 () Bool)

(declare-fun e!2005924 () Bool)

(assert (=> b!3217135 (= e!2005924 true)))

(declare-fun b!3217134 () Bool)

(declare-fun e!2005923 () Bool)

(assert (=> b!3217134 (= e!2005923 e!2005924)))

(declare-fun b!3217133 () Bool)

(declare-fun e!2005922 () Bool)

(assert (=> b!3217133 (= e!2005922 e!2005923)))

(assert (=> d!882888 e!2005922))

(assert (= b!3217134 b!3217135))

(assert (= b!3217133 b!3217134))

(assert (= (and d!882888 ((_ is Cons!36206) rules!2135)) b!3217133))

(assert (=> b!3217135 (< (dynLambda!14645 order!18525 (toValue!7322 (transformation!5230 (h!41626 rules!2135)))) (dynLambda!14646 order!18527 lambda!117656))))

(assert (=> b!3217135 (< (dynLambda!14647 order!18529 (toChars!7181 (transformation!5230 (h!41626 rules!2135)))) (dynLambda!14646 order!18527 lambda!117656))))

(assert (=> d!882888 true))

(declare-fun e!2005921 () Bool)

(assert (=> d!882888 e!2005921))

(declare-fun res!1309664 () Bool)

(assert (=> d!882888 (=> (not res!1309664) (not e!2005921))))

(declare-fun lt!1088841 () Bool)

(assert (=> d!882888 (= res!1309664 (= lt!1088841 (forall!7406 (list!12890 (seqFromList!3532 tokens!494)) lambda!117656)))))

(declare-fun forall!7407 (BalanceConc!21286 Int) Bool)

(assert (=> d!882888 (= lt!1088841 (forall!7407 (seqFromList!3532 tokens!494) lambda!117656))))

(assert (=> d!882888 (not (isEmpty!20303 rules!2135))))

(assert (=> d!882888 (= (rulesProduceEachTokenIndividually!1270 thiss!18206 rules!2135 (seqFromList!3532 tokens!494)) lt!1088841)))

(declare-fun b!3217132 () Bool)

(declare-fun rulesProduceEachTokenIndividuallyList!1730 (LexerInterface!4819 List!36330 List!36331) Bool)

(assert (=> b!3217132 (= e!2005921 (= lt!1088841 (rulesProduceEachTokenIndividuallyList!1730 thiss!18206 rules!2135 (list!12890 (seqFromList!3532 tokens!494)))))))

(assert (= (and d!882888 res!1309664) b!3217132))

(assert (=> d!882888 m!3490437))

(declare-fun m!3490909 () Bool)

(assert (=> d!882888 m!3490909))

(assert (=> d!882888 m!3490909))

(declare-fun m!3490911 () Bool)

(assert (=> d!882888 m!3490911))

(assert (=> d!882888 m!3490437))

(declare-fun m!3490913 () Bool)

(assert (=> d!882888 m!3490913))

(assert (=> d!882888 m!3490517))

(assert (=> b!3217132 m!3490437))

(assert (=> b!3217132 m!3490909))

(assert (=> b!3217132 m!3490909))

(declare-fun m!3490915 () Bool)

(assert (=> b!3217132 m!3490915))

(assert (=> b!3216768 d!882888))

(declare-fun d!882900 () Bool)

(declare-fun fromListB!1547 (List!36331) BalanceConc!21286)

(assert (=> d!882900 (= (seqFromList!3532 tokens!494) (fromListB!1547 tokens!494))))

(declare-fun bs!542252 () Bool)

(assert (= bs!542252 d!882900))

(declare-fun m!3490917 () Bool)

(assert (=> bs!542252 m!3490917))

(assert (=> b!3216768 d!882900))

(declare-fun d!882902 () Bool)

(declare-fun res!1309667 () Bool)

(declare-fun e!2005927 () Bool)

(assert (=> d!882902 (=> (not res!1309667) (not e!2005927))))

(declare-fun rulesValid!1918 (LexerInterface!4819 List!36330) Bool)

(assert (=> d!882902 (= res!1309667 (rulesValid!1918 thiss!18206 rules!2135))))

(assert (=> d!882902 (= (rulesInvariant!4216 thiss!18206 rules!2135) e!2005927)))

(declare-fun b!3217138 () Bool)

(declare-datatypes ((List!36332 0))(
  ( (Nil!36208) (Cons!36208 (h!41628 String!40634) (t!239937 List!36332)) )
))
(declare-fun noDuplicateTag!1914 (LexerInterface!4819 List!36330 List!36332) Bool)

(assert (=> b!3217138 (= e!2005927 (noDuplicateTag!1914 thiss!18206 rules!2135 Nil!36208))))

(assert (= (and d!882902 res!1309667) b!3217138))

(declare-fun m!3490919 () Bool)

(assert (=> d!882902 m!3490919))

(declare-fun m!3490921 () Bool)

(assert (=> b!3217138 m!3490921))

(assert (=> b!3216789 d!882902))

(declare-fun d!882904 () Bool)

(assert (=> d!882904 (dynLambda!14651 lambda!117650 (h!41627 (t!239822 tokens!494)))))

(declare-fun lt!1088844 () Unit!50722)

(declare-fun choose!18786 (List!36331 Int Token!9826) Unit!50722)

(assert (=> d!882904 (= lt!1088844 (choose!18786 tokens!494 lambda!117650 (h!41627 (t!239822 tokens!494))))))

(declare-fun e!2005930 () Bool)

(assert (=> d!882904 e!2005930))

(declare-fun res!1309670 () Bool)

(assert (=> d!882904 (=> (not res!1309670) (not e!2005930))))

(assert (=> d!882904 (= res!1309670 (forall!7406 tokens!494 lambda!117650))))

(assert (=> d!882904 (= (forallContained!1201 tokens!494 lambda!117650 (h!41627 (t!239822 tokens!494))) lt!1088844)))

(declare-fun b!3217141 () Bool)

(declare-fun contains!6482 (List!36331 Token!9826) Bool)

(assert (=> b!3217141 (= e!2005930 (contains!6482 tokens!494 (h!41627 (t!239822 tokens!494))))))

(assert (= (and d!882904 res!1309670) b!3217141))

(declare-fun b_lambda!88379 () Bool)

(assert (=> (not b_lambda!88379) (not d!882904)))

(declare-fun m!3490923 () Bool)

(assert (=> d!882904 m!3490923))

(declare-fun m!3490925 () Bool)

(assert (=> d!882904 m!3490925))

(assert (=> d!882904 m!3490447))

(declare-fun m!3490927 () Bool)

(assert (=> b!3217141 m!3490927))

(assert (=> b!3216790 d!882904))

(declare-fun d!882906 () Bool)

(assert (=> d!882906 (dynLambda!14651 lambda!117650 (h!41627 tokens!494))))

(declare-fun lt!1088845 () Unit!50722)

(assert (=> d!882906 (= lt!1088845 (choose!18786 tokens!494 lambda!117650 (h!41627 tokens!494)))))

(declare-fun e!2005931 () Bool)

(assert (=> d!882906 e!2005931))

(declare-fun res!1309671 () Bool)

(assert (=> d!882906 (=> (not res!1309671) (not e!2005931))))

(assert (=> d!882906 (= res!1309671 (forall!7406 tokens!494 lambda!117650))))

(assert (=> d!882906 (= (forallContained!1201 tokens!494 lambda!117650 (h!41627 tokens!494)) lt!1088845)))

(declare-fun b!3217142 () Bool)

(assert (=> b!3217142 (= e!2005931 (contains!6482 tokens!494 (h!41627 tokens!494)))))

(assert (= (and d!882906 res!1309671) b!3217142))

(declare-fun b_lambda!88381 () Bool)

(assert (=> (not b_lambda!88381) (not d!882906)))

(assert (=> d!882906 m!3490841))

(declare-fun m!3490929 () Bool)

(assert (=> d!882906 m!3490929))

(assert (=> d!882906 m!3490447))

(declare-fun m!3490931 () Bool)

(assert (=> b!3217142 m!3490931))

(assert (=> b!3216790 d!882906))

(declare-fun d!882908 () Bool)

(declare-fun lt!1088848 () Token!9826)

(assert (=> d!882908 (= lt!1088848 (apply!8223 (list!12890 (_1!20945 lt!1088707)) 0))))

(declare-fun apply!8225 (Conc!10836 Int) Token!9826)

(assert (=> d!882908 (= lt!1088848 (apply!8225 (c!540718 (_1!20945 lt!1088707)) 0))))

(declare-fun e!2005934 () Bool)

(assert (=> d!882908 e!2005934))

(declare-fun res!1309674 () Bool)

(assert (=> d!882908 (=> (not res!1309674) (not e!2005934))))

(assert (=> d!882908 (= res!1309674 (<= 0 0))))

(assert (=> d!882908 (= (apply!8222 (_1!20945 lt!1088707) 0) lt!1088848)))

(declare-fun b!3217145 () Bool)

(assert (=> b!3217145 (= e!2005934 (< 0 (size!27295 (_1!20945 lt!1088707))))))

(assert (= (and d!882908 res!1309674) b!3217145))

(declare-fun m!3490933 () Bool)

(assert (=> d!882908 m!3490933))

(assert (=> d!882908 m!3490933))

(declare-fun m!3490935 () Bool)

(assert (=> d!882908 m!3490935))

(declare-fun m!3490937 () Bool)

(assert (=> d!882908 m!3490937))

(assert (=> b!3217145 m!3490367))

(assert (=> b!3216769 d!882908))

(declare-fun d!882910 () Bool)

(assert (=> d!882910 (= (list!12887 (charsOf!3246 (h!41627 tokens!494))) (list!12889 (c!540717 (charsOf!3246 (h!41627 tokens!494)))))))

(declare-fun bs!542253 () Bool)

(assert (= bs!542253 d!882910))

(declare-fun m!3490939 () Bool)

(assert (=> bs!542253 m!3490939))

(assert (=> b!3216766 d!882910))

(declare-fun d!882912 () Bool)

(declare-fun lt!1088851 () BalanceConc!21284)

(assert (=> d!882912 (= (list!12887 lt!1088851) (originalCharacters!5944 (h!41627 tokens!494)))))

(assert (=> d!882912 (= lt!1088851 (dynLambda!14648 (toChars!7181 (transformation!5230 (rule!7682 (h!41627 tokens!494)))) (value!169515 (h!41627 tokens!494))))))

(assert (=> d!882912 (= (charsOf!3246 (h!41627 tokens!494)) lt!1088851)))

(declare-fun b_lambda!88383 () Bool)

(assert (=> (not b_lambda!88383) (not d!882912)))

(assert (=> d!882912 t!239830))

(declare-fun b_and!214805 () Bool)

(assert (= b_and!214793 (and (=> t!239830 result!201152) b_and!214805)))

(assert (=> d!882912 t!239832))

(declare-fun b_and!214807 () Bool)

(assert (= b_and!214795 (and (=> t!239832 result!201154) b_and!214807)))

(assert (=> d!882912 t!239834))

(declare-fun b_and!214809 () Bool)

(assert (= b_and!214797 (and (=> t!239834 result!201156) b_and!214809)))

(declare-fun m!3490941 () Bool)

(assert (=> d!882912 m!3490941))

(assert (=> d!882912 m!3490623))

(assert (=> b!3216766 d!882912))

(declare-fun d!882914 () Bool)

(declare-fun lt!1088853 () Bool)

(declare-fun e!2005936 () Bool)

(assert (=> d!882914 (= lt!1088853 e!2005936)))

(declare-fun res!1309675 () Bool)

(assert (=> d!882914 (=> (not res!1309675) (not e!2005936))))

(assert (=> d!882914 (= res!1309675 (= (list!12890 (_1!20945 (lex!2149 thiss!18206 rules!2135 (print!1884 thiss!18206 (singletonSeq!2326 separatorToken!241))))) (list!12890 (singletonSeq!2326 separatorToken!241))))))

(declare-fun e!2005935 () Bool)

(assert (=> d!882914 (= lt!1088853 e!2005935)))

(declare-fun res!1309676 () Bool)

(assert (=> d!882914 (=> (not res!1309676) (not e!2005935))))

(declare-fun lt!1088852 () tuple2!35622)

(assert (=> d!882914 (= res!1309676 (= (size!27295 (_1!20945 lt!1088852)) 1))))

(assert (=> d!882914 (= lt!1088852 (lex!2149 thiss!18206 rules!2135 (print!1884 thiss!18206 (singletonSeq!2326 separatorToken!241))))))

(assert (=> d!882914 (not (isEmpty!20303 rules!2135))))

(assert (=> d!882914 (= (rulesProduceIndividualToken!2311 thiss!18206 rules!2135 separatorToken!241) lt!1088853)))

(declare-fun b!3217146 () Bool)

(declare-fun res!1309677 () Bool)

(assert (=> b!3217146 (=> (not res!1309677) (not e!2005935))))

(assert (=> b!3217146 (= res!1309677 (= (apply!8222 (_1!20945 lt!1088852) 0) separatorToken!241))))

(declare-fun b!3217147 () Bool)

(assert (=> b!3217147 (= e!2005935 (isEmpty!20304 (_2!20945 lt!1088852)))))

(declare-fun b!3217148 () Bool)

(assert (=> b!3217148 (= e!2005936 (isEmpty!20304 (_2!20945 (lex!2149 thiss!18206 rules!2135 (print!1884 thiss!18206 (singletonSeq!2326 separatorToken!241))))))))

(assert (= (and d!882914 res!1309676) b!3217146))

(assert (= (and b!3217146 res!1309677) b!3217147))

(assert (= (and d!882914 res!1309675) b!3217148))

(declare-fun m!3490943 () Bool)

(assert (=> d!882914 m!3490943))

(declare-fun m!3490945 () Bool)

(assert (=> d!882914 m!3490945))

(assert (=> d!882914 m!3490375))

(declare-fun m!3490947 () Bool)

(assert (=> d!882914 m!3490947))

(assert (=> d!882914 m!3490375))

(assert (=> d!882914 m!3490375))

(declare-fun m!3490949 () Bool)

(assert (=> d!882914 m!3490949))

(assert (=> d!882914 m!3490517))

(assert (=> d!882914 m!3490949))

(declare-fun m!3490951 () Bool)

(assert (=> d!882914 m!3490951))

(declare-fun m!3490953 () Bool)

(assert (=> b!3217146 m!3490953))

(declare-fun m!3490955 () Bool)

(assert (=> b!3217147 m!3490955))

(assert (=> b!3217148 m!3490375))

(assert (=> b!3217148 m!3490375))

(assert (=> b!3217148 m!3490949))

(assert (=> b!3217148 m!3490949))

(assert (=> b!3217148 m!3490951))

(declare-fun m!3490957 () Bool)

(assert (=> b!3217148 m!3490957))

(assert (=> b!3216787 d!882914))

(declare-fun d!882916 () Bool)

(declare-fun e!2005939 () Bool)

(assert (=> d!882916 e!2005939))

(declare-fun res!1309682 () Bool)

(assert (=> d!882916 (=> (not res!1309682) (not e!2005939))))

(assert (=> d!882916 (= res!1309682 (isDefined!5564 (getRuleFromTag!935 thiss!18206 rules!2135 (tag!5760 (rule!7682 (h!41627 (t!239822 tokens!494)))))))))

(declare-fun lt!1088856 () Unit!50722)

(declare-fun choose!18787 (LexerInterface!4819 List!36330 List!36329 Token!9826) Unit!50722)

(assert (=> d!882916 (= lt!1088856 (choose!18787 thiss!18206 rules!2135 lt!1088680 (h!41627 (t!239822 tokens!494))))))

(assert (=> d!882916 (rulesInvariant!4216 thiss!18206 rules!2135)))

(assert (=> d!882916 (= (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!935 thiss!18206 rules!2135 lt!1088680 (h!41627 (t!239822 tokens!494))) lt!1088856)))

(declare-fun b!3217153 () Bool)

(declare-fun res!1309683 () Bool)

(assert (=> b!3217153 (=> (not res!1309683) (not e!2005939))))

(assert (=> b!3217153 (= res!1309683 (matchR!4623 (regex!5230 (get!11532 (getRuleFromTag!935 thiss!18206 rules!2135 (tag!5760 (rule!7682 (h!41627 (t!239822 tokens!494))))))) (list!12887 (charsOf!3246 (h!41627 (t!239822 tokens!494))))))))

(declare-fun b!3217154 () Bool)

(assert (=> b!3217154 (= e!2005939 (= (rule!7682 (h!41627 (t!239822 tokens!494))) (get!11532 (getRuleFromTag!935 thiss!18206 rules!2135 (tag!5760 (rule!7682 (h!41627 (t!239822 tokens!494))))))))))

(assert (= (and d!882916 res!1309682) b!3217153))

(assert (= (and b!3217153 res!1309683) b!3217154))

(assert (=> d!882916 m!3490353))

(assert (=> d!882916 m!3490353))

(declare-fun m!3490959 () Bool)

(assert (=> d!882916 m!3490959))

(declare-fun m!3490961 () Bool)

(assert (=> d!882916 m!3490961))

(assert (=> d!882916 m!3490489))

(assert (=> b!3217153 m!3490353))

(declare-fun m!3490963 () Bool)

(assert (=> b!3217153 m!3490963))

(assert (=> b!3217153 m!3490469))

(assert (=> b!3217153 m!3490475))

(assert (=> b!3217153 m!3490469))

(assert (=> b!3217153 m!3490475))

(declare-fun m!3490965 () Bool)

(assert (=> b!3217153 m!3490965))

(assert (=> b!3217153 m!3490353))

(assert (=> b!3217154 m!3490353))

(assert (=> b!3217154 m!3490353))

(assert (=> b!3217154 m!3490963))

(assert (=> b!3216762 d!882916))

(declare-fun d!882918 () Bool)

(declare-fun lt!1088859 () Int)

(declare-fun size!27299 (List!36331) Int)

(assert (=> d!882918 (= lt!1088859 (size!27299 (list!12890 (_1!20945 lt!1088707))))))

(declare-fun size!27300 (Conc!10836) Int)

(assert (=> d!882918 (= lt!1088859 (size!27300 (c!540718 (_1!20945 lt!1088707))))))

(assert (=> d!882918 (= (size!27295 (_1!20945 lt!1088707)) lt!1088859)))

(declare-fun bs!542254 () Bool)

(assert (= bs!542254 d!882918))

(assert (=> bs!542254 m!3490933))

(assert (=> bs!542254 m!3490933))

(declare-fun m!3490967 () Bool)

(assert (=> bs!542254 m!3490967))

(declare-fun m!3490969 () Bool)

(assert (=> bs!542254 m!3490969))

(assert (=> b!3216762 d!882918))

(declare-fun d!882920 () Bool)

(declare-fun lt!1088862 () Int)

(assert (=> d!882920 (>= lt!1088862 0)))

(declare-fun e!2005942 () Int)

(assert (=> d!882920 (= lt!1088862 e!2005942)))

(declare-fun c!540794 () Bool)

(assert (=> d!882920 (= c!540794 ((_ is Nil!36205) lt!1088680))))

(assert (=> d!882920 (= (size!27294 lt!1088680) lt!1088862)))

(declare-fun b!3217159 () Bool)

(assert (=> b!3217159 (= e!2005942 0)))

(declare-fun b!3217160 () Bool)

(assert (=> b!3217160 (= e!2005942 (+ 1 (size!27294 (t!239820 lt!1088680))))))

(assert (= (and d!882920 c!540794) b!3217159))

(assert (= (and d!882920 (not c!540794)) b!3217160))

(declare-fun m!3490971 () Bool)

(assert (=> b!3217160 m!3490971))

(assert (=> b!3216762 d!882920))

(declare-fun d!882922 () Bool)

(declare-fun e!2005943 () Bool)

(assert (=> d!882922 e!2005943))

(declare-fun res!1309684 () Bool)

(assert (=> d!882922 (=> (not res!1309684) (not e!2005943))))

(assert (=> d!882922 (= res!1309684 (isDefined!5564 (getRuleFromTag!935 thiss!18206 rules!2135 (tag!5760 (rule!7682 separatorToken!241)))))))

(declare-fun lt!1088863 () Unit!50722)

(assert (=> d!882922 (= lt!1088863 (choose!18787 thiss!18206 rules!2135 lt!1088705 separatorToken!241))))

(assert (=> d!882922 (rulesInvariant!4216 thiss!18206 rules!2135)))

(assert (=> d!882922 (= (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!935 thiss!18206 rules!2135 lt!1088705 separatorToken!241) lt!1088863)))

(declare-fun b!3217161 () Bool)

(declare-fun res!1309685 () Bool)

(assert (=> b!3217161 (=> (not res!1309685) (not e!2005943))))

(assert (=> b!3217161 (= res!1309685 (matchR!4623 (regex!5230 (get!11532 (getRuleFromTag!935 thiss!18206 rules!2135 (tag!5760 (rule!7682 separatorToken!241))))) (list!12887 (charsOf!3246 separatorToken!241))))))

(declare-fun b!3217162 () Bool)

(assert (=> b!3217162 (= e!2005943 (= (rule!7682 separatorToken!241) (get!11532 (getRuleFromTag!935 thiss!18206 rules!2135 (tag!5760 (rule!7682 separatorToken!241))))))))

(assert (= (and d!882922 res!1309684) b!3217161))

(assert (= (and b!3217161 res!1309685) b!3217162))

(assert (=> d!882922 m!3490393))

(assert (=> d!882922 m!3490393))

(declare-fun m!3490973 () Bool)

(assert (=> d!882922 m!3490973))

(declare-fun m!3490975 () Bool)

(assert (=> d!882922 m!3490975))

(assert (=> d!882922 m!3490489))

(assert (=> b!3217161 m!3490393))

(declare-fun m!3490977 () Bool)

(assert (=> b!3217161 m!3490977))

(assert (=> b!3217161 m!3490479))

(assert (=> b!3217161 m!3490481))

(assert (=> b!3217161 m!3490479))

(assert (=> b!3217161 m!3490481))

(declare-fun m!3490979 () Bool)

(assert (=> b!3217161 m!3490979))

(assert (=> b!3217161 m!3490393))

(assert (=> b!3217162 m!3490393))

(assert (=> b!3217162 m!3490393))

(assert (=> b!3217162 m!3490977))

(assert (=> b!3216762 d!882922))

(declare-fun d!882924 () Bool)

(assert (=> d!882924 (= (maxPrefix!2461 thiss!18206 rules!2135 (++!8698 (list!12887 (charsOf!3246 (h!41627 tokens!494))) lt!1088681)) (Some!7163 (tuple2!35625 (h!41627 tokens!494) lt!1088681)))))

(declare-fun lt!1088866 () Unit!50722)

(declare-fun choose!18788 (LexerInterface!4819 List!36330 Token!9826 Rule!10260 List!36329 Rule!10260) Unit!50722)

(assert (=> d!882924 (= lt!1088866 (choose!18788 thiss!18206 rules!2135 (h!41627 tokens!494) (rule!7682 (h!41627 tokens!494)) lt!1088681 (rule!7682 separatorToken!241)))))

(assert (=> d!882924 (not (isEmpty!20303 rules!2135))))

(assert (=> d!882924 (= (lemmaMaxPrefWithOtherTypeUsedCharAtStartOfSuffixReturnSame!154 thiss!18206 rules!2135 (h!41627 tokens!494) (rule!7682 (h!41627 tokens!494)) lt!1088681 (rule!7682 separatorToken!241)) lt!1088866)))

(declare-fun bs!542255 () Bool)

(assert (= bs!542255 d!882924))

(declare-fun m!3490981 () Bool)

(assert (=> bs!542255 m!3490981))

(declare-fun m!3490983 () Bool)

(assert (=> bs!542255 m!3490983))

(assert (=> bs!542255 m!3490517))

(assert (=> bs!542255 m!3490465))

(assert (=> bs!542255 m!3490467))

(assert (=> bs!542255 m!3490467))

(assert (=> bs!542255 m!3490981))

(declare-fun m!3490985 () Bool)

(assert (=> bs!542255 m!3490985))

(assert (=> bs!542255 m!3490465))

(assert (=> b!3216762 d!882924))

(declare-fun d!882926 () Bool)

(declare-fun e!2005944 () Bool)

(assert (=> d!882926 e!2005944))

(declare-fun res!1309686 () Bool)

(assert (=> d!882926 (=> (not res!1309686) (not e!2005944))))

(assert (=> d!882926 (= res!1309686 (isDefined!5564 (getRuleFromTag!935 thiss!18206 rules!2135 (tag!5760 (rule!7682 (h!41627 tokens!494))))))))

(declare-fun lt!1088867 () Unit!50722)

(assert (=> d!882926 (= lt!1088867 (choose!18787 thiss!18206 rules!2135 lt!1088698 (h!41627 tokens!494)))))

(assert (=> d!882926 (rulesInvariant!4216 thiss!18206 rules!2135)))

(assert (=> d!882926 (= (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!935 thiss!18206 rules!2135 lt!1088698 (h!41627 tokens!494)) lt!1088867)))

(declare-fun b!3217163 () Bool)

(declare-fun res!1309687 () Bool)

(assert (=> b!3217163 (=> (not res!1309687) (not e!2005944))))

(assert (=> b!3217163 (= res!1309687 (matchR!4623 (regex!5230 (get!11532 (getRuleFromTag!935 thiss!18206 rules!2135 (tag!5760 (rule!7682 (h!41627 tokens!494)))))) (list!12887 (charsOf!3246 (h!41627 tokens!494)))))))

(declare-fun b!3217164 () Bool)

(assert (=> b!3217164 (= e!2005944 (= (rule!7682 (h!41627 tokens!494)) (get!11532 (getRuleFromTag!935 thiss!18206 rules!2135 (tag!5760 (rule!7682 (h!41627 tokens!494)))))))))

(assert (= (and d!882926 res!1309686) b!3217163))

(assert (= (and b!3217163 res!1309687) b!3217164))

(assert (=> d!882926 m!3490339))

(assert (=> d!882926 m!3490339))

(declare-fun m!3490987 () Bool)

(assert (=> d!882926 m!3490987))

(declare-fun m!3490989 () Bool)

(assert (=> d!882926 m!3490989))

(assert (=> d!882926 m!3490489))

(assert (=> b!3217163 m!3490339))

(declare-fun m!3490991 () Bool)

(assert (=> b!3217163 m!3490991))

(assert (=> b!3217163 m!3490465))

(assert (=> b!3217163 m!3490467))

(assert (=> b!3217163 m!3490465))

(assert (=> b!3217163 m!3490467))

(declare-fun m!3490993 () Bool)

(assert (=> b!3217163 m!3490993))

(assert (=> b!3217163 m!3490339))

(assert (=> b!3217164 m!3490339))

(assert (=> b!3217164 m!3490339))

(assert (=> b!3217164 m!3490991))

(assert (=> b!3216762 d!882926))

(declare-fun d!882928 () Bool)

(declare-fun isEmpty!20311 (Option!7163) Bool)

(assert (=> d!882928 (= (isDefined!5564 lt!1088683) (not (isEmpty!20311 lt!1088683)))))

(declare-fun bs!542256 () Bool)

(assert (= bs!542256 d!882928))

(declare-fun m!3490995 () Bool)

(assert (=> bs!542256 m!3490995))

(assert (=> b!3216762 d!882928))

(declare-fun d!882930 () Bool)

(assert (=> d!882930 (= (maxPrefixOneRule!1598 thiss!18206 (rule!7682 (h!41627 (t!239822 tokens!494))) lt!1088680) (Some!7163 (tuple2!35625 (Token!9827 (apply!8221 (transformation!5230 (rule!7682 (h!41627 (t!239822 tokens!494)))) (seqFromList!3531 lt!1088680)) (rule!7682 (h!41627 (t!239822 tokens!494))) (size!27294 lt!1088680) lt!1088680) Nil!36205)))))

(declare-fun lt!1088870 () Unit!50722)

(declare-fun choose!18790 (LexerInterface!4819 List!36330 List!36329 List!36329 List!36329 Rule!10260) Unit!50722)

(assert (=> d!882930 (= lt!1088870 (choose!18790 thiss!18206 rules!2135 lt!1088680 lt!1088680 Nil!36205 (rule!7682 (h!41627 (t!239822 tokens!494)))))))

(assert (=> d!882930 (not (isEmpty!20303 rules!2135))))

(assert (=> d!882930 (= (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!711 thiss!18206 rules!2135 lt!1088680 lt!1088680 Nil!36205 (rule!7682 (h!41627 (t!239822 tokens!494)))) lt!1088870)))

(declare-fun bs!542257 () Bool)

(assert (= bs!542257 d!882930))

(assert (=> bs!542257 m!3490517))

(declare-fun m!3490997 () Bool)

(assert (=> bs!542257 m!3490997))

(assert (=> bs!542257 m!3490399))

(assert (=> bs!542257 m!3490365))

(assert (=> bs!542257 m!3490395))

(assert (=> bs!542257 m!3490415))

(assert (=> bs!542257 m!3490365))

(assert (=> b!3216762 d!882930))

(declare-fun b!3217201 () Bool)

(declare-fun res!1309718 () Bool)

(declare-fun e!2005964 () Bool)

(assert (=> b!3217201 (=> (not res!1309718) (not e!2005964))))

(declare-fun lt!1088911 () Option!7164)

(declare-fun get!11534 (Option!7164) tuple2!35624)

(assert (=> b!3217201 (= res!1309718 (= (list!12887 (charsOf!3246 (_1!20946 (get!11534 lt!1088911)))) (originalCharacters!5944 (_1!20946 (get!11534 lt!1088911)))))))

(declare-fun b!3217203 () Bool)

(declare-fun res!1309715 () Bool)

(assert (=> b!3217203 (=> (not res!1309715) (not e!2005964))))

(assert (=> b!3217203 (= res!1309715 (= (value!169515 (_1!20946 (get!11534 lt!1088911))) (apply!8221 (transformation!5230 (rule!7682 (_1!20946 (get!11534 lt!1088911)))) (seqFromList!3531 (originalCharacters!5944 (_1!20946 (get!11534 lt!1088911)))))))))

(declare-fun b!3217204 () Bool)

(declare-fun e!2005963 () Option!7164)

(declare-fun call!232846 () Option!7164)

(assert (=> b!3217204 (= e!2005963 call!232846)))

(declare-fun b!3217205 () Bool)

(declare-fun res!1309717 () Bool)

(assert (=> b!3217205 (=> (not res!1309717) (not e!2005964))))

(assert (=> b!3217205 (= res!1309717 (matchR!4623 (regex!5230 (rule!7682 (_1!20946 (get!11534 lt!1088911)))) (list!12887 (charsOf!3246 (_1!20946 (get!11534 lt!1088911))))))))

(declare-fun b!3217206 () Bool)

(declare-fun contains!6483 (List!36330 Rule!10260) Bool)

(assert (=> b!3217206 (= e!2005964 (contains!6483 rules!2135 (rule!7682 (_1!20946 (get!11534 lt!1088911)))))))

(declare-fun bm!232841 () Bool)

(assert (=> bm!232841 (= call!232846 (maxPrefixOneRule!1598 thiss!18206 (h!41626 rules!2135) lt!1088678))))

(declare-fun b!3217207 () Bool)

(declare-fun res!1309716 () Bool)

(assert (=> b!3217207 (=> (not res!1309716) (not e!2005964))))

(assert (=> b!3217207 (= res!1309716 (= (++!8698 (list!12887 (charsOf!3246 (_1!20946 (get!11534 lt!1088911)))) (_2!20946 (get!11534 lt!1088911))) lt!1088678))))

(declare-fun b!3217208 () Bool)

(declare-fun e!2005965 () Bool)

(assert (=> b!3217208 (= e!2005965 e!2005964)))

(declare-fun res!1309714 () Bool)

(assert (=> b!3217208 (=> (not res!1309714) (not e!2005964))))

(declare-fun isDefined!5566 (Option!7164) Bool)

(assert (=> b!3217208 (= res!1309714 (isDefined!5566 lt!1088911))))

(declare-fun b!3217209 () Bool)

(declare-fun lt!1088908 () Option!7164)

(declare-fun lt!1088909 () Option!7164)

(assert (=> b!3217209 (= e!2005963 (ite (and ((_ is None!7163) lt!1088908) ((_ is None!7163) lt!1088909)) None!7163 (ite ((_ is None!7163) lt!1088909) lt!1088908 (ite ((_ is None!7163) lt!1088908) lt!1088909 (ite (>= (size!27293 (_1!20946 (v!35733 lt!1088908))) (size!27293 (_1!20946 (v!35733 lt!1088909)))) lt!1088908 lt!1088909)))))))

(assert (=> b!3217209 (= lt!1088908 call!232846)))

(assert (=> b!3217209 (= lt!1088909 (maxPrefix!2461 thiss!18206 (t!239821 rules!2135) lt!1088678))))

(declare-fun b!3217202 () Bool)

(declare-fun res!1309719 () Bool)

(assert (=> b!3217202 (=> (not res!1309719) (not e!2005964))))

(assert (=> b!3217202 (= res!1309719 (< (size!27294 (_2!20946 (get!11534 lt!1088911))) (size!27294 lt!1088678)))))

(declare-fun d!882932 () Bool)

(assert (=> d!882932 e!2005965))

(declare-fun res!1309720 () Bool)

(assert (=> d!882932 (=> res!1309720 e!2005965)))

(declare-fun isEmpty!20312 (Option!7164) Bool)

(assert (=> d!882932 (= res!1309720 (isEmpty!20312 lt!1088911))))

(assert (=> d!882932 (= lt!1088911 e!2005963)))

(declare-fun c!540800 () Bool)

(assert (=> d!882932 (= c!540800 (and ((_ is Cons!36206) rules!2135) ((_ is Nil!36206) (t!239821 rules!2135))))))

(declare-fun lt!1088910 () Unit!50722)

(declare-fun lt!1088912 () Unit!50722)

(assert (=> d!882932 (= lt!1088910 lt!1088912)))

(declare-fun isPrefix!2788 (List!36329 List!36329) Bool)

(assert (=> d!882932 (isPrefix!2788 lt!1088678 lt!1088678)))

(declare-fun lemmaIsPrefixRefl!1747 (List!36329 List!36329) Unit!50722)

(assert (=> d!882932 (= lt!1088912 (lemmaIsPrefixRefl!1747 lt!1088678 lt!1088678))))

(declare-fun rulesValidInductive!1781 (LexerInterface!4819 List!36330) Bool)

(assert (=> d!882932 (rulesValidInductive!1781 thiss!18206 rules!2135)))

(assert (=> d!882932 (= (maxPrefix!2461 thiss!18206 rules!2135 lt!1088678) lt!1088911)))

(assert (= (and d!882932 c!540800) b!3217204))

(assert (= (and d!882932 (not c!540800)) b!3217209))

(assert (= (or b!3217204 b!3217209) bm!232841))

(assert (= (and d!882932 (not res!1309720)) b!3217208))

(assert (= (and b!3217208 res!1309714) b!3217201))

(assert (= (and b!3217201 res!1309718) b!3217202))

(assert (= (and b!3217202 res!1309719) b!3217207))

(assert (= (and b!3217207 res!1309716) b!3217203))

(assert (= (and b!3217203 res!1309715) b!3217205))

(assert (= (and b!3217205 res!1309717) b!3217206))

(declare-fun m!3491049 () Bool)

(assert (=> b!3217209 m!3491049))

(declare-fun m!3491051 () Bool)

(assert (=> d!882932 m!3491051))

(declare-fun m!3491053 () Bool)

(assert (=> d!882932 m!3491053))

(declare-fun m!3491055 () Bool)

(assert (=> d!882932 m!3491055))

(declare-fun m!3491057 () Bool)

(assert (=> d!882932 m!3491057))

(declare-fun m!3491059 () Bool)

(assert (=> b!3217205 m!3491059))

(declare-fun m!3491061 () Bool)

(assert (=> b!3217205 m!3491061))

(assert (=> b!3217205 m!3491061))

(declare-fun m!3491063 () Bool)

(assert (=> b!3217205 m!3491063))

(assert (=> b!3217205 m!3491063))

(declare-fun m!3491065 () Bool)

(assert (=> b!3217205 m!3491065))

(assert (=> b!3217201 m!3491059))

(assert (=> b!3217201 m!3491061))

(assert (=> b!3217201 m!3491061))

(assert (=> b!3217201 m!3491063))

(assert (=> b!3217202 m!3491059))

(declare-fun m!3491067 () Bool)

(assert (=> b!3217202 m!3491067))

(declare-fun m!3491069 () Bool)

(assert (=> b!3217202 m!3491069))

(assert (=> b!3217203 m!3491059))

(declare-fun m!3491071 () Bool)

(assert (=> b!3217203 m!3491071))

(assert (=> b!3217203 m!3491071))

(declare-fun m!3491073 () Bool)

(assert (=> b!3217203 m!3491073))

(declare-fun m!3491075 () Bool)

(assert (=> b!3217208 m!3491075))

(assert (=> b!3217207 m!3491059))

(assert (=> b!3217207 m!3491061))

(assert (=> b!3217207 m!3491061))

(assert (=> b!3217207 m!3491063))

(assert (=> b!3217207 m!3491063))

(declare-fun m!3491077 () Bool)

(assert (=> b!3217207 m!3491077))

(declare-fun m!3491079 () Bool)

(assert (=> bm!232841 m!3491079))

(assert (=> b!3217206 m!3491059))

(declare-fun m!3491081 () Bool)

(assert (=> b!3217206 m!3491081))

(assert (=> b!3216762 d!882932))

(declare-fun b!3217335 () Bool)

(declare-fun e!2006038 () Bool)

(declare-fun e!2006039 () Bool)

(assert (=> b!3217335 (= e!2006038 e!2006039)))

(declare-fun res!1309799 () Bool)

(assert (=> b!3217335 (=> (not res!1309799) (not e!2006039))))

(declare-fun lt!1088976 () Option!7164)

(assert (=> b!3217335 (= res!1309799 (matchR!4623 (regex!5230 (rule!7682 (h!41627 tokens!494))) (list!12887 (charsOf!3246 (_1!20946 (get!11534 lt!1088976))))))))

(declare-fun b!3217336 () Bool)

(declare-fun e!2006040 () Option!7164)

(declare-datatypes ((tuple2!35630 0))(
  ( (tuple2!35631 (_1!20949 List!36329) (_2!20949 List!36329)) )
))
(declare-fun lt!1088974 () tuple2!35630)

(declare-fun size!27301 (BalanceConc!21284) Int)

(assert (=> b!3217336 (= e!2006040 (Some!7163 (tuple2!35625 (Token!9827 (apply!8221 (transformation!5230 (rule!7682 (h!41627 tokens!494))) (seqFromList!3531 (_1!20949 lt!1088974))) (rule!7682 (h!41627 tokens!494)) (size!27301 (seqFromList!3531 (_1!20949 lt!1088974))) (_1!20949 lt!1088974)) (_2!20949 lt!1088974))))))

(declare-fun lt!1088978 () Unit!50722)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!808 (Regex!9989 List!36329) Unit!50722)

(assert (=> b!3217336 (= lt!1088978 (longestMatchIsAcceptedByMatchOrIsEmpty!808 (regex!5230 (rule!7682 (h!41627 tokens!494))) lt!1088698))))

(declare-fun res!1309800 () Bool)

(declare-fun findLongestMatchInner!835 (Regex!9989 List!36329 Int List!36329 List!36329 Int) tuple2!35630)

(assert (=> b!3217336 (= res!1309800 (isEmpty!20308 (_1!20949 (findLongestMatchInner!835 (regex!5230 (rule!7682 (h!41627 tokens!494))) Nil!36205 (size!27294 Nil!36205) lt!1088698 lt!1088698 (size!27294 lt!1088698)))))))

(declare-fun e!2006037 () Bool)

(assert (=> b!3217336 (=> res!1309800 e!2006037)))

(assert (=> b!3217336 e!2006037))

(declare-fun lt!1088975 () Unit!50722)

(assert (=> b!3217336 (= lt!1088975 lt!1088978)))

(declare-fun lt!1088977 () Unit!50722)

(declare-fun lemmaSemiInverse!1181 (TokenValueInjection!10348 BalanceConc!21284) Unit!50722)

(assert (=> b!3217336 (= lt!1088977 (lemmaSemiInverse!1181 (transformation!5230 (rule!7682 (h!41627 tokens!494))) (seqFromList!3531 (_1!20949 lt!1088974))))))

(declare-fun b!3217337 () Bool)

(assert (=> b!3217337 (= e!2006040 None!7163)))

(declare-fun b!3217338 () Bool)

(declare-fun res!1309802 () Bool)

(assert (=> b!3217338 (=> (not res!1309802) (not e!2006039))))

(assert (=> b!3217338 (= res!1309802 (< (size!27294 (_2!20946 (get!11534 lt!1088976))) (size!27294 lt!1088698)))))

(declare-fun b!3217340 () Bool)

(assert (=> b!3217340 (= e!2006039 (= (size!27293 (_1!20946 (get!11534 lt!1088976))) (size!27294 (originalCharacters!5944 (_1!20946 (get!11534 lt!1088976))))))))

(declare-fun b!3217341 () Bool)

(declare-fun res!1309804 () Bool)

(assert (=> b!3217341 (=> (not res!1309804) (not e!2006039))))

(assert (=> b!3217341 (= res!1309804 (= (rule!7682 (_1!20946 (get!11534 lt!1088976))) (rule!7682 (h!41627 tokens!494))))))

(declare-fun b!3217342 () Bool)

(declare-fun res!1309801 () Bool)

(assert (=> b!3217342 (=> (not res!1309801) (not e!2006039))))

(assert (=> b!3217342 (= res!1309801 (= (++!8698 (list!12887 (charsOf!3246 (_1!20946 (get!11534 lt!1088976)))) (_2!20946 (get!11534 lt!1088976))) lt!1088698))))

(declare-fun b!3217343 () Bool)

(declare-fun res!1309798 () Bool)

(assert (=> b!3217343 (=> (not res!1309798) (not e!2006039))))

(assert (=> b!3217343 (= res!1309798 (= (value!169515 (_1!20946 (get!11534 lt!1088976))) (apply!8221 (transformation!5230 (rule!7682 (_1!20946 (get!11534 lt!1088976)))) (seqFromList!3531 (originalCharacters!5944 (_1!20946 (get!11534 lt!1088976)))))))))

(declare-fun d!882940 () Bool)

(assert (=> d!882940 e!2006038))

(declare-fun res!1309803 () Bool)

(assert (=> d!882940 (=> res!1309803 e!2006038)))

(assert (=> d!882940 (= res!1309803 (isEmpty!20312 lt!1088976))))

(assert (=> d!882940 (= lt!1088976 e!2006040)))

(declare-fun c!540827 () Bool)

(assert (=> d!882940 (= c!540827 (isEmpty!20308 (_1!20949 lt!1088974)))))

(declare-fun findLongestMatch!750 (Regex!9989 List!36329) tuple2!35630)

(assert (=> d!882940 (= lt!1088974 (findLongestMatch!750 (regex!5230 (rule!7682 (h!41627 tokens!494))) lt!1088698))))

(declare-fun ruleValid!1652 (LexerInterface!4819 Rule!10260) Bool)

(assert (=> d!882940 (ruleValid!1652 thiss!18206 (rule!7682 (h!41627 tokens!494)))))

(assert (=> d!882940 (= (maxPrefixOneRule!1598 thiss!18206 (rule!7682 (h!41627 tokens!494)) lt!1088698) lt!1088976)))

(declare-fun b!3217339 () Bool)

(assert (=> b!3217339 (= e!2006037 (matchR!4623 (regex!5230 (rule!7682 (h!41627 tokens!494))) (_1!20949 (findLongestMatchInner!835 (regex!5230 (rule!7682 (h!41627 tokens!494))) Nil!36205 (size!27294 Nil!36205) lt!1088698 lt!1088698 (size!27294 lt!1088698)))))))

(assert (= (and d!882940 c!540827) b!3217337))

(assert (= (and d!882940 (not c!540827)) b!3217336))

(assert (= (and b!3217336 (not res!1309800)) b!3217339))

(assert (= (and d!882940 (not res!1309803)) b!3217335))

(assert (= (and b!3217335 res!1309799) b!3217342))

(assert (= (and b!3217342 res!1309801) b!3217338))

(assert (= (and b!3217338 res!1309802) b!3217341))

(assert (= (and b!3217341 res!1309804) b!3217343))

(assert (= (and b!3217343 res!1309798) b!3217340))

(declare-fun m!3491333 () Bool)

(assert (=> d!882940 m!3491333))

(declare-fun m!3491335 () Bool)

(assert (=> d!882940 m!3491335))

(declare-fun m!3491337 () Bool)

(assert (=> d!882940 m!3491337))

(declare-fun m!3491339 () Bool)

(assert (=> d!882940 m!3491339))

(declare-fun m!3491341 () Bool)

(assert (=> b!3217338 m!3491341))

(declare-fun m!3491343 () Bool)

(assert (=> b!3217338 m!3491343))

(assert (=> b!3217338 m!3490403))

(assert (=> b!3217343 m!3491341))

(declare-fun m!3491345 () Bool)

(assert (=> b!3217343 m!3491345))

(assert (=> b!3217343 m!3491345))

(declare-fun m!3491347 () Bool)

(assert (=> b!3217343 m!3491347))

(assert (=> b!3217335 m!3491341))

(declare-fun m!3491349 () Bool)

(assert (=> b!3217335 m!3491349))

(assert (=> b!3217335 m!3491349))

(declare-fun m!3491351 () Bool)

(assert (=> b!3217335 m!3491351))

(assert (=> b!3217335 m!3491351))

(declare-fun m!3491353 () Bool)

(assert (=> b!3217335 m!3491353))

(assert (=> b!3217341 m!3491341))

(declare-fun m!3491355 () Bool)

(assert (=> b!3217336 m!3491355))

(assert (=> b!3217336 m!3490403))

(declare-fun m!3491357 () Bool)

(assert (=> b!3217336 m!3491357))

(declare-fun m!3491359 () Bool)

(assert (=> b!3217336 m!3491359))

(assert (=> b!3217336 m!3490403))

(declare-fun m!3491361 () Bool)

(assert (=> b!3217336 m!3491361))

(assert (=> b!3217336 m!3491359))

(declare-fun m!3491363 () Bool)

(assert (=> b!3217336 m!3491363))

(assert (=> b!3217336 m!3491359))

(declare-fun m!3491365 () Bool)

(assert (=> b!3217336 m!3491365))

(declare-fun m!3491367 () Bool)

(assert (=> b!3217336 m!3491367))

(assert (=> b!3217336 m!3491359))

(declare-fun m!3491369 () Bool)

(assert (=> b!3217336 m!3491369))

(assert (=> b!3217336 m!3491355))

(assert (=> b!3217339 m!3491355))

(assert (=> b!3217339 m!3490403))

(assert (=> b!3217339 m!3491355))

(assert (=> b!3217339 m!3490403))

(assert (=> b!3217339 m!3491357))

(declare-fun m!3491371 () Bool)

(assert (=> b!3217339 m!3491371))

(assert (=> b!3217340 m!3491341))

(declare-fun m!3491373 () Bool)

(assert (=> b!3217340 m!3491373))

(assert (=> b!3217342 m!3491341))

(assert (=> b!3217342 m!3491349))

(assert (=> b!3217342 m!3491349))

(assert (=> b!3217342 m!3491351))

(assert (=> b!3217342 m!3491351))

(declare-fun m!3491375 () Bool)

(assert (=> b!3217342 m!3491375))

(assert (=> b!3216762 d!882940))

(declare-fun b!3217382 () Bool)

(declare-fun e!2006064 () List!36329)

(assert (=> b!3217382 (= e!2006064 Nil!36205)))

(declare-fun b!3217383 () Bool)

(declare-fun e!2006062 () List!36329)

(declare-fun call!232864 () List!36329)

(assert (=> b!3217383 (= e!2006062 call!232864)))

(declare-fun b!3217384 () Bool)

(declare-fun e!2006061 () List!36329)

(declare-fun call!232863 () List!36329)

(assert (=> b!3217384 (= e!2006061 call!232863)))

(declare-fun bm!232857 () Bool)

(declare-fun call!232865 () List!36329)

(declare-fun c!540846 () Bool)

(assert (=> bm!232857 (= call!232865 (usedCharacters!546 (ite c!540846 (regTwo!20491 (regex!5230 (rule!7682 (h!41627 tokens!494)))) (regOne!20490 (regex!5230 (rule!7682 (h!41627 tokens!494)))))))))

(declare-fun b!3217385 () Bool)

(assert (=> b!3217385 (= e!2006062 e!2006061)))

(assert (=> b!3217385 (= c!540846 ((_ is Union!9989) (regex!5230 (rule!7682 (h!41627 tokens!494)))))))

(declare-fun b!3217386 () Bool)

(declare-fun e!2006063 () List!36329)

(assert (=> b!3217386 (= e!2006063 (Cons!36205 (c!540716 (regex!5230 (rule!7682 (h!41627 tokens!494)))) Nil!36205))))

(declare-fun d!882996 () Bool)

(declare-fun c!540844 () Bool)

(assert (=> d!882996 (= c!540844 (or ((_ is EmptyExpr!9989) (regex!5230 (rule!7682 (h!41627 tokens!494)))) ((_ is EmptyLang!9989) (regex!5230 (rule!7682 (h!41627 tokens!494))))))))

(assert (=> d!882996 (= (usedCharacters!546 (regex!5230 (rule!7682 (h!41627 tokens!494)))) e!2006064)))

(declare-fun bm!232858 () Bool)

(declare-fun call!232862 () List!36329)

(assert (=> bm!232858 (= call!232862 call!232864)))

(declare-fun b!3217387 () Bool)

(assert (=> b!3217387 (= e!2006061 call!232863)))

(declare-fun bm!232859 () Bool)

(assert (=> bm!232859 (= call!232863 (++!8698 (ite c!540846 call!232862 call!232865) (ite c!540846 call!232865 call!232862)))))

(declare-fun b!3217388 () Bool)

(declare-fun c!540845 () Bool)

(assert (=> b!3217388 (= c!540845 ((_ is Star!9989) (regex!5230 (rule!7682 (h!41627 tokens!494)))))))

(assert (=> b!3217388 (= e!2006063 e!2006062)))

(declare-fun b!3217389 () Bool)

(assert (=> b!3217389 (= e!2006064 e!2006063)))

(declare-fun c!540843 () Bool)

(assert (=> b!3217389 (= c!540843 ((_ is ElementMatch!9989) (regex!5230 (rule!7682 (h!41627 tokens!494)))))))

(declare-fun bm!232860 () Bool)

(assert (=> bm!232860 (= call!232864 (usedCharacters!546 (ite c!540845 (reg!10318 (regex!5230 (rule!7682 (h!41627 tokens!494)))) (ite c!540846 (regOne!20491 (regex!5230 (rule!7682 (h!41627 tokens!494)))) (regTwo!20490 (regex!5230 (rule!7682 (h!41627 tokens!494))))))))))

(assert (= (and d!882996 c!540844) b!3217382))

(assert (= (and d!882996 (not c!540844)) b!3217389))

(assert (= (and b!3217389 c!540843) b!3217386))

(assert (= (and b!3217389 (not c!540843)) b!3217388))

(assert (= (and b!3217388 c!540845) b!3217383))

(assert (= (and b!3217388 (not c!540845)) b!3217385))

(assert (= (and b!3217385 c!540846) b!3217387))

(assert (= (and b!3217385 (not c!540846)) b!3217384))

(assert (= (or b!3217387 b!3217384) bm!232857))

(assert (= (or b!3217387 b!3217384) bm!232858))

(assert (= (or b!3217387 b!3217384) bm!232859))

(assert (= (or b!3217383 bm!232858) bm!232860))

(declare-fun m!3491419 () Bool)

(assert (=> bm!232857 m!3491419))

(declare-fun m!3491421 () Bool)

(assert (=> bm!232859 m!3491421))

(declare-fun m!3491423 () Bool)

(assert (=> bm!232860 m!3491423))

(assert (=> b!3216762 d!882996))

(declare-fun d!883010 () Bool)

(assert (=> d!883010 (rulesProduceIndividualToken!2311 thiss!18206 rules!2135 (h!41627 tokens!494))))

(declare-fun lt!1089019 () Unit!50722)

(declare-fun choose!18792 (LexerInterface!4819 List!36330 List!36331 Token!9826) Unit!50722)

(assert (=> d!883010 (= lt!1089019 (choose!18792 thiss!18206 rules!2135 tokens!494 (h!41627 tokens!494)))))

(assert (=> d!883010 (not (isEmpty!20303 rules!2135))))

(assert (=> d!883010 (= (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!858 thiss!18206 rules!2135 tokens!494 (h!41627 tokens!494)) lt!1089019)))

(declare-fun bs!542276 () Bool)

(assert (= bs!542276 d!883010))

(assert (=> bs!542276 m!3490519))

(declare-fun m!3491683 () Bool)

(assert (=> bs!542276 m!3491683))

(assert (=> bs!542276 m!3490517))

(assert (=> b!3216762 d!883010))

(declare-fun d!883096 () Bool)

(declare-fun lt!1089020 () BalanceConc!21284)

(assert (=> d!883096 (= (list!12887 lt!1089020) (printList!1369 thiss!18206 (list!12890 lt!1088685)))))

(assert (=> d!883096 (= lt!1089020 (printTailRec!1316 thiss!18206 lt!1088685 0 (BalanceConc!21285 Empty!10835)))))

(assert (=> d!883096 (= (print!1884 thiss!18206 lt!1088685) lt!1089020)))

(declare-fun bs!542277 () Bool)

(assert (= bs!542277 d!883096))

(declare-fun m!3491685 () Bool)

(assert (=> bs!542277 m!3491685))

(declare-fun m!3491687 () Bool)

(assert (=> bs!542277 m!3491687))

(assert (=> bs!542277 m!3491687))

(declare-fun m!3491689 () Bool)

(assert (=> bs!542277 m!3491689))

(assert (=> bs!542277 m!3490417))

(assert (=> b!3216762 d!883096))

(declare-fun d!883098 () Bool)

(declare-fun lt!1089022 () Bool)

(declare-fun e!2006153 () Bool)

(assert (=> d!883098 (= lt!1089022 e!2006153)))

(declare-fun res!1309891 () Bool)

(assert (=> d!883098 (=> (not res!1309891) (not e!2006153))))

(assert (=> d!883098 (= res!1309891 (= (list!12890 (_1!20945 (lex!2149 thiss!18206 rules!2135 (print!1884 thiss!18206 (singletonSeq!2326 (h!41627 (t!239822 tokens!494))))))) (list!12890 (singletonSeq!2326 (h!41627 (t!239822 tokens!494))))))))

(declare-fun e!2006152 () Bool)

(assert (=> d!883098 (= lt!1089022 e!2006152)))

(declare-fun res!1309892 () Bool)

(assert (=> d!883098 (=> (not res!1309892) (not e!2006152))))

(declare-fun lt!1089021 () tuple2!35622)

(assert (=> d!883098 (= res!1309892 (= (size!27295 (_1!20945 lt!1089021)) 1))))

(assert (=> d!883098 (= lt!1089021 (lex!2149 thiss!18206 rules!2135 (print!1884 thiss!18206 (singletonSeq!2326 (h!41627 (t!239822 tokens!494))))))))

(assert (=> d!883098 (not (isEmpty!20303 rules!2135))))

(assert (=> d!883098 (= (rulesProduceIndividualToken!2311 thiss!18206 rules!2135 (h!41627 (t!239822 tokens!494))) lt!1089022)))

(declare-fun b!3217531 () Bool)

(declare-fun res!1309893 () Bool)

(assert (=> b!3217531 (=> (not res!1309893) (not e!2006152))))

(assert (=> b!3217531 (= res!1309893 (= (apply!8222 (_1!20945 lt!1089021) 0) (h!41627 (t!239822 tokens!494))))))

(declare-fun b!3217532 () Bool)

(assert (=> b!3217532 (= e!2006152 (isEmpty!20304 (_2!20945 lt!1089021)))))

(declare-fun b!3217533 () Bool)

(assert (=> b!3217533 (= e!2006153 (isEmpty!20304 (_2!20945 (lex!2149 thiss!18206 rules!2135 (print!1884 thiss!18206 (singletonSeq!2326 (h!41627 (t!239822 tokens!494))))))))))

(assert (= (and d!883098 res!1309892) b!3217531))

(assert (= (and b!3217531 res!1309893) b!3217532))

(assert (= (and d!883098 res!1309891) b!3217533))

(declare-fun m!3491691 () Bool)

(assert (=> d!883098 m!3491691))

(declare-fun m!3491693 () Bool)

(assert (=> d!883098 m!3491693))

(assert (=> d!883098 m!3490397))

(declare-fun m!3491695 () Bool)

(assert (=> d!883098 m!3491695))

(assert (=> d!883098 m!3490397))

(assert (=> d!883098 m!3490397))

(declare-fun m!3491697 () Bool)

(assert (=> d!883098 m!3491697))

(assert (=> d!883098 m!3490517))

(assert (=> d!883098 m!3491697))

(declare-fun m!3491699 () Bool)

(assert (=> d!883098 m!3491699))

(declare-fun m!3491701 () Bool)

(assert (=> b!3217531 m!3491701))

(declare-fun m!3491703 () Bool)

(assert (=> b!3217532 m!3491703))

(assert (=> b!3217533 m!3490397))

(assert (=> b!3217533 m!3490397))

(assert (=> b!3217533 m!3491697))

(assert (=> b!3217533 m!3491697))

(assert (=> b!3217533 m!3491699))

(declare-fun m!3491705 () Bool)

(assert (=> b!3217533 m!3491705))

(assert (=> b!3216762 d!883098))

(declare-fun d!883100 () Bool)

(assert (=> d!883100 (= (isDefined!5564 lt!1088694) (not (isEmpty!20311 lt!1088694)))))

(declare-fun bs!542278 () Bool)

(assert (= bs!542278 d!883100))

(declare-fun m!3491707 () Bool)

(assert (=> bs!542278 m!3491707))

(assert (=> b!3216762 d!883100))

(declare-fun d!883102 () Bool)

(declare-fun dynLambda!14653 (Int BalanceConc!21284) TokenValue!5460)

(assert (=> d!883102 (= (apply!8221 (transformation!5230 (rule!7682 (h!41627 (t!239822 tokens!494)))) (seqFromList!3531 lt!1088680)) (dynLambda!14653 (toValue!7322 (transformation!5230 (rule!7682 (h!41627 (t!239822 tokens!494))))) (seqFromList!3531 lt!1088680)))))

(declare-fun b_lambda!88405 () Bool)

(assert (=> (not b_lambda!88405) (not d!883102)))

(declare-fun t!239876 () Bool)

(declare-fun tb!158789 () Bool)

(assert (=> (and b!3216775 (= (toValue!7322 (transformation!5230 (rule!7682 (h!41627 tokens!494)))) (toValue!7322 (transformation!5230 (rule!7682 (h!41627 (t!239822 tokens!494)))))) t!239876) tb!158789))

(declare-fun result!201192 () Bool)

(assert (=> tb!158789 (= result!201192 (inv!21 (dynLambda!14653 (toValue!7322 (transformation!5230 (rule!7682 (h!41627 (t!239822 tokens!494))))) (seqFromList!3531 lt!1088680))))))

(declare-fun m!3491709 () Bool)

(assert (=> tb!158789 m!3491709))

(assert (=> d!883102 t!239876))

(declare-fun b_and!214847 () Bool)

(assert (= b_and!214775 (and (=> t!239876 result!201192) b_and!214847)))

(declare-fun tb!158791 () Bool)

(declare-fun t!239878 () Bool)

(assert (=> (and b!3216773 (= (toValue!7322 (transformation!5230 (h!41626 rules!2135))) (toValue!7322 (transformation!5230 (rule!7682 (h!41627 (t!239822 tokens!494)))))) t!239878) tb!158791))

(declare-fun result!201196 () Bool)

(assert (= result!201196 result!201192))

(assert (=> d!883102 t!239878))

(declare-fun b_and!214849 () Bool)

(assert (= b_and!214779 (and (=> t!239878 result!201196) b_and!214849)))

(declare-fun t!239880 () Bool)

(declare-fun tb!158793 () Bool)

(assert (=> (and b!3216778 (= (toValue!7322 (transformation!5230 (rule!7682 separatorToken!241))) (toValue!7322 (transformation!5230 (rule!7682 (h!41627 (t!239822 tokens!494)))))) t!239880) tb!158793))

(declare-fun result!201198 () Bool)

(assert (= result!201198 result!201192))

(assert (=> d!883102 t!239880))

(declare-fun b_and!214851 () Bool)

(assert (= b_and!214783 (and (=> t!239880 result!201198) b_and!214851)))

(assert (=> d!883102 m!3490365))

(declare-fun m!3491711 () Bool)

(assert (=> d!883102 m!3491711))

(assert (=> b!3216762 d!883102))

(declare-fun d!883104 () Bool)

(assert (=> d!883104 (rulesProduceIndividualToken!2311 thiss!18206 rules!2135 (h!41627 (t!239822 tokens!494)))))

(declare-fun lt!1089023 () Unit!50722)

(assert (=> d!883104 (= lt!1089023 (choose!18792 thiss!18206 rules!2135 tokens!494 (h!41627 (t!239822 tokens!494))))))

(assert (=> d!883104 (not (isEmpty!20303 rules!2135))))

(assert (=> d!883104 (= (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!858 thiss!18206 rules!2135 tokens!494 (h!41627 (t!239822 tokens!494))) lt!1089023)))

(declare-fun bs!542279 () Bool)

(assert (= bs!542279 d!883104))

(assert (=> bs!542279 m!3490377))

(declare-fun m!3491713 () Bool)

(assert (=> bs!542279 m!3491713))

(assert (=> bs!542279 m!3490517))

(assert (=> b!3216762 d!883104))

(declare-fun d!883106 () Bool)

(declare-fun lt!1089029 () BalanceConc!21284)

(assert (=> d!883106 (= (list!12887 lt!1089029) (printListTailRec!564 thiss!18206 (dropList!1081 lt!1088703 0) (list!12887 (BalanceConc!21285 Empty!10835))))))

(declare-fun e!2006158 () BalanceConc!21284)

(assert (=> d!883106 (= lt!1089029 e!2006158)))

(declare-fun c!540875 () Bool)

(assert (=> d!883106 (= c!540875 (>= 0 (size!27295 lt!1088703)))))

(declare-fun e!2006157 () Bool)

(assert (=> d!883106 e!2006157))

(declare-fun res!1309894 () Bool)

(assert (=> d!883106 (=> (not res!1309894) (not e!2006157))))

(assert (=> d!883106 (= res!1309894 (>= 0 0))))

(assert (=> d!883106 (= (printTailRec!1316 thiss!18206 lt!1088703 0 (BalanceConc!21285 Empty!10835)) lt!1089029)))

(declare-fun b!3217536 () Bool)

(assert (=> b!3217536 (= e!2006157 (<= 0 (size!27295 lt!1088703)))))

(declare-fun b!3217537 () Bool)

(assert (=> b!3217537 (= e!2006158 (BalanceConc!21285 Empty!10835))))

(declare-fun b!3217538 () Bool)

(assert (=> b!3217538 (= e!2006158 (printTailRec!1316 thiss!18206 lt!1088703 (+ 0 1) (++!8699 (BalanceConc!21285 Empty!10835) (charsOf!3246 (apply!8222 lt!1088703 0)))))))

(declare-fun lt!1089025 () List!36331)

(assert (=> b!3217538 (= lt!1089025 (list!12890 lt!1088703))))

(declare-fun lt!1089030 () Unit!50722)

(assert (=> b!3217538 (= lt!1089030 (lemmaDropApply!1040 lt!1089025 0))))

(assert (=> b!3217538 (= (head!7054 (drop!1864 lt!1089025 0)) (apply!8223 lt!1089025 0))))

(declare-fun lt!1089028 () Unit!50722)

(assert (=> b!3217538 (= lt!1089028 lt!1089030)))

(declare-fun lt!1089026 () List!36331)

(assert (=> b!3217538 (= lt!1089026 (list!12890 lt!1088703))))

(declare-fun lt!1089024 () Unit!50722)

(assert (=> b!3217538 (= lt!1089024 (lemmaDropTail!924 lt!1089026 0))))

(assert (=> b!3217538 (= (tail!5219 (drop!1864 lt!1089026 0)) (drop!1864 lt!1089026 (+ 0 1)))))

(declare-fun lt!1089027 () Unit!50722)

(assert (=> b!3217538 (= lt!1089027 lt!1089024)))

(assert (= (and d!883106 res!1309894) b!3217536))

(assert (= (and d!883106 c!540875) b!3217537))

(assert (= (and d!883106 (not c!540875)) b!3217538))

(declare-fun m!3491715 () Bool)

(assert (=> d!883106 m!3491715))

(declare-fun m!3491717 () Bool)

(assert (=> d!883106 m!3491717))

(assert (=> d!883106 m!3491715))

(assert (=> d!883106 m!3490675))

(declare-fun m!3491719 () Bool)

(assert (=> d!883106 m!3491719))

(assert (=> d!883106 m!3490675))

(declare-fun m!3491721 () Bool)

(assert (=> d!883106 m!3491721))

(assert (=> b!3217536 m!3491717))

(declare-fun m!3491723 () Bool)

(assert (=> b!3217538 m!3491723))

(declare-fun m!3491725 () Bool)

(assert (=> b!3217538 m!3491725))

(declare-fun m!3491727 () Bool)

(assert (=> b!3217538 m!3491727))

(declare-fun m!3491729 () Bool)

(assert (=> b!3217538 m!3491729))

(declare-fun m!3491731 () Bool)

(assert (=> b!3217538 m!3491731))

(assert (=> b!3217538 m!3491727))

(declare-fun m!3491733 () Bool)

(assert (=> b!3217538 m!3491733))

(declare-fun m!3491735 () Bool)

(assert (=> b!3217538 m!3491735))

(declare-fun m!3491737 () Bool)

(assert (=> b!3217538 m!3491737))

(assert (=> b!3217538 m!3491723))

(declare-fun m!3491739 () Bool)

(assert (=> b!3217538 m!3491739))

(declare-fun m!3491741 () Bool)

(assert (=> b!3217538 m!3491741))

(assert (=> b!3217538 m!3491733))

(assert (=> b!3217538 m!3491739))

(declare-fun m!3491743 () Bool)

(assert (=> b!3217538 m!3491743))

(declare-fun m!3491745 () Bool)

(assert (=> b!3217538 m!3491745))

(assert (=> b!3217538 m!3491735))

(declare-fun m!3491747 () Bool)

(assert (=> b!3217538 m!3491747))

(assert (=> b!3216762 d!883106))

(declare-fun b!3217539 () Bool)

(declare-fun e!2006160 () Bool)

(declare-fun e!2006161 () Bool)

(assert (=> b!3217539 (= e!2006160 e!2006161)))

(declare-fun res!1309896 () Bool)

(assert (=> b!3217539 (=> (not res!1309896) (not e!2006161))))

(declare-fun lt!1089033 () Option!7164)

(assert (=> b!3217539 (= res!1309896 (matchR!4623 (regex!5230 (rule!7682 (h!41627 (t!239822 tokens!494)))) (list!12887 (charsOf!3246 (_1!20946 (get!11534 lt!1089033))))))))

(declare-fun b!3217540 () Bool)

(declare-fun e!2006162 () Option!7164)

(declare-fun lt!1089031 () tuple2!35630)

(assert (=> b!3217540 (= e!2006162 (Some!7163 (tuple2!35625 (Token!9827 (apply!8221 (transformation!5230 (rule!7682 (h!41627 (t!239822 tokens!494)))) (seqFromList!3531 (_1!20949 lt!1089031))) (rule!7682 (h!41627 (t!239822 tokens!494))) (size!27301 (seqFromList!3531 (_1!20949 lt!1089031))) (_1!20949 lt!1089031)) (_2!20949 lt!1089031))))))

(declare-fun lt!1089035 () Unit!50722)

(assert (=> b!3217540 (= lt!1089035 (longestMatchIsAcceptedByMatchOrIsEmpty!808 (regex!5230 (rule!7682 (h!41627 (t!239822 tokens!494)))) lt!1088680))))

(declare-fun res!1309897 () Bool)

(assert (=> b!3217540 (= res!1309897 (isEmpty!20308 (_1!20949 (findLongestMatchInner!835 (regex!5230 (rule!7682 (h!41627 (t!239822 tokens!494)))) Nil!36205 (size!27294 Nil!36205) lt!1088680 lt!1088680 (size!27294 lt!1088680)))))))

(declare-fun e!2006159 () Bool)

(assert (=> b!3217540 (=> res!1309897 e!2006159)))

(assert (=> b!3217540 e!2006159))

(declare-fun lt!1089032 () Unit!50722)

(assert (=> b!3217540 (= lt!1089032 lt!1089035)))

(declare-fun lt!1089034 () Unit!50722)

(assert (=> b!3217540 (= lt!1089034 (lemmaSemiInverse!1181 (transformation!5230 (rule!7682 (h!41627 (t!239822 tokens!494)))) (seqFromList!3531 (_1!20949 lt!1089031))))))

(declare-fun b!3217541 () Bool)

(assert (=> b!3217541 (= e!2006162 None!7163)))

(declare-fun b!3217542 () Bool)

(declare-fun res!1309899 () Bool)

(assert (=> b!3217542 (=> (not res!1309899) (not e!2006161))))

(assert (=> b!3217542 (= res!1309899 (< (size!27294 (_2!20946 (get!11534 lt!1089033))) (size!27294 lt!1088680)))))

(declare-fun b!3217544 () Bool)

(assert (=> b!3217544 (= e!2006161 (= (size!27293 (_1!20946 (get!11534 lt!1089033))) (size!27294 (originalCharacters!5944 (_1!20946 (get!11534 lt!1089033))))))))

(declare-fun b!3217545 () Bool)

(declare-fun res!1309901 () Bool)

(assert (=> b!3217545 (=> (not res!1309901) (not e!2006161))))

(assert (=> b!3217545 (= res!1309901 (= (rule!7682 (_1!20946 (get!11534 lt!1089033))) (rule!7682 (h!41627 (t!239822 tokens!494)))))))

(declare-fun b!3217546 () Bool)

(declare-fun res!1309898 () Bool)

(assert (=> b!3217546 (=> (not res!1309898) (not e!2006161))))

(assert (=> b!3217546 (= res!1309898 (= (++!8698 (list!12887 (charsOf!3246 (_1!20946 (get!11534 lt!1089033)))) (_2!20946 (get!11534 lt!1089033))) lt!1088680))))

(declare-fun b!3217547 () Bool)

(declare-fun res!1309895 () Bool)

(assert (=> b!3217547 (=> (not res!1309895) (not e!2006161))))

(assert (=> b!3217547 (= res!1309895 (= (value!169515 (_1!20946 (get!11534 lt!1089033))) (apply!8221 (transformation!5230 (rule!7682 (_1!20946 (get!11534 lt!1089033)))) (seqFromList!3531 (originalCharacters!5944 (_1!20946 (get!11534 lt!1089033)))))))))

(declare-fun d!883108 () Bool)

(assert (=> d!883108 e!2006160))

(declare-fun res!1309900 () Bool)

(assert (=> d!883108 (=> res!1309900 e!2006160)))

(assert (=> d!883108 (= res!1309900 (isEmpty!20312 lt!1089033))))

(assert (=> d!883108 (= lt!1089033 e!2006162)))

(declare-fun c!540876 () Bool)

(assert (=> d!883108 (= c!540876 (isEmpty!20308 (_1!20949 lt!1089031)))))

(assert (=> d!883108 (= lt!1089031 (findLongestMatch!750 (regex!5230 (rule!7682 (h!41627 (t!239822 tokens!494)))) lt!1088680))))

(assert (=> d!883108 (ruleValid!1652 thiss!18206 (rule!7682 (h!41627 (t!239822 tokens!494))))))

(assert (=> d!883108 (= (maxPrefixOneRule!1598 thiss!18206 (rule!7682 (h!41627 (t!239822 tokens!494))) lt!1088680) lt!1089033)))

(declare-fun b!3217543 () Bool)

(assert (=> b!3217543 (= e!2006159 (matchR!4623 (regex!5230 (rule!7682 (h!41627 (t!239822 tokens!494)))) (_1!20949 (findLongestMatchInner!835 (regex!5230 (rule!7682 (h!41627 (t!239822 tokens!494)))) Nil!36205 (size!27294 Nil!36205) lt!1088680 lt!1088680 (size!27294 lt!1088680)))))))

(assert (= (and d!883108 c!540876) b!3217541))

(assert (= (and d!883108 (not c!540876)) b!3217540))

(assert (= (and b!3217540 (not res!1309897)) b!3217543))

(assert (= (and d!883108 (not res!1309900)) b!3217539))

(assert (= (and b!3217539 res!1309896) b!3217546))

(assert (= (and b!3217546 res!1309898) b!3217542))

(assert (= (and b!3217542 res!1309899) b!3217545))

(assert (= (and b!3217545 res!1309901) b!3217547))

(assert (= (and b!3217547 res!1309895) b!3217544))

(declare-fun m!3491749 () Bool)

(assert (=> d!883108 m!3491749))

(declare-fun m!3491751 () Bool)

(assert (=> d!883108 m!3491751))

(declare-fun m!3491753 () Bool)

(assert (=> d!883108 m!3491753))

(declare-fun m!3491755 () Bool)

(assert (=> d!883108 m!3491755))

(declare-fun m!3491757 () Bool)

(assert (=> b!3217542 m!3491757))

(declare-fun m!3491759 () Bool)

(assert (=> b!3217542 m!3491759))

(assert (=> b!3217542 m!3490399))

(assert (=> b!3217547 m!3491757))

(declare-fun m!3491761 () Bool)

(assert (=> b!3217547 m!3491761))

(assert (=> b!3217547 m!3491761))

(declare-fun m!3491763 () Bool)

(assert (=> b!3217547 m!3491763))

(assert (=> b!3217539 m!3491757))

(declare-fun m!3491765 () Bool)

(assert (=> b!3217539 m!3491765))

(assert (=> b!3217539 m!3491765))

(declare-fun m!3491767 () Bool)

(assert (=> b!3217539 m!3491767))

(assert (=> b!3217539 m!3491767))

(declare-fun m!3491769 () Bool)

(assert (=> b!3217539 m!3491769))

(assert (=> b!3217545 m!3491757))

(assert (=> b!3217540 m!3491355))

(assert (=> b!3217540 m!3490399))

(declare-fun m!3491771 () Bool)

(assert (=> b!3217540 m!3491771))

(declare-fun m!3491773 () Bool)

(assert (=> b!3217540 m!3491773))

(assert (=> b!3217540 m!3490399))

(declare-fun m!3491775 () Bool)

(assert (=> b!3217540 m!3491775))

(assert (=> b!3217540 m!3491773))

(declare-fun m!3491777 () Bool)

(assert (=> b!3217540 m!3491777))

(assert (=> b!3217540 m!3491773))

(declare-fun m!3491779 () Bool)

(assert (=> b!3217540 m!3491779))

(declare-fun m!3491781 () Bool)

(assert (=> b!3217540 m!3491781))

(assert (=> b!3217540 m!3491773))

(declare-fun m!3491783 () Bool)

(assert (=> b!3217540 m!3491783))

(assert (=> b!3217540 m!3491355))

(assert (=> b!3217543 m!3491355))

(assert (=> b!3217543 m!3490399))

(assert (=> b!3217543 m!3491355))

(assert (=> b!3217543 m!3490399))

(assert (=> b!3217543 m!3491771))

(declare-fun m!3491785 () Bool)

(assert (=> b!3217543 m!3491785))

(assert (=> b!3217544 m!3491757))

(declare-fun m!3491787 () Bool)

(assert (=> b!3217544 m!3491787))

(assert (=> b!3217546 m!3491757))

(assert (=> b!3217546 m!3491765))

(assert (=> b!3217546 m!3491765))

(assert (=> b!3217546 m!3491767))

(assert (=> b!3217546 m!3491767))

(declare-fun m!3491789 () Bool)

(assert (=> b!3217546 m!3491789))

(assert (=> b!3216762 d!883108))

(declare-fun b!3217560 () Bool)

(declare-fun lt!1089042 () Unit!50722)

(declare-fun lt!1089043 () Unit!50722)

(assert (=> b!3217560 (= lt!1089042 lt!1089043)))

(assert (=> b!3217560 (rulesInvariant!4216 thiss!18206 (t!239821 rules!2135))))

(declare-fun lemmaInvariantOnRulesThenOnTail!354 (LexerInterface!4819 Rule!10260 List!36330) Unit!50722)

(assert (=> b!3217560 (= lt!1089043 (lemmaInvariantOnRulesThenOnTail!354 thiss!18206 (h!41626 rules!2135) (t!239821 rules!2135)))))

(declare-fun e!2006171 () Option!7163)

(assert (=> b!3217560 (= e!2006171 (getRuleFromTag!935 thiss!18206 (t!239821 rules!2135) (tag!5760 (rule!7682 (h!41627 tokens!494)))))))

(declare-fun b!3217562 () Bool)

(assert (=> b!3217562 (= e!2006171 None!7162)))

(declare-fun b!3217563 () Bool)

(declare-fun e!2006174 () Bool)

(declare-fun lt!1089044 () Option!7163)

(assert (=> b!3217563 (= e!2006174 (= (tag!5760 (get!11532 lt!1089044)) (tag!5760 (rule!7682 (h!41627 tokens!494)))))))

(declare-fun b!3217564 () Bool)

(declare-fun e!2006172 () Option!7163)

(assert (=> b!3217564 (= e!2006172 e!2006171)))

(declare-fun c!540882 () Bool)

(assert (=> b!3217564 (= c!540882 (and ((_ is Cons!36206) rules!2135) (not (= (tag!5760 (h!41626 rules!2135)) (tag!5760 (rule!7682 (h!41627 tokens!494)))))))))

(declare-fun b!3217565 () Bool)

(declare-fun e!2006173 () Bool)

(assert (=> b!3217565 (= e!2006173 e!2006174)))

(declare-fun res!1309907 () Bool)

(assert (=> b!3217565 (=> (not res!1309907) (not e!2006174))))

(assert (=> b!3217565 (= res!1309907 (contains!6483 rules!2135 (get!11532 lt!1089044)))))

(declare-fun d!883110 () Bool)

(assert (=> d!883110 e!2006173))

(declare-fun res!1309906 () Bool)

(assert (=> d!883110 (=> res!1309906 e!2006173)))

(assert (=> d!883110 (= res!1309906 (isEmpty!20311 lt!1089044))))

(assert (=> d!883110 (= lt!1089044 e!2006172)))

(declare-fun c!540881 () Bool)

(assert (=> d!883110 (= c!540881 (and ((_ is Cons!36206) rules!2135) (= (tag!5760 (h!41626 rules!2135)) (tag!5760 (rule!7682 (h!41627 tokens!494))))))))

(assert (=> d!883110 (rulesInvariant!4216 thiss!18206 rules!2135)))

(assert (=> d!883110 (= (getRuleFromTag!935 thiss!18206 rules!2135 (tag!5760 (rule!7682 (h!41627 tokens!494)))) lt!1089044)))

(declare-fun b!3217561 () Bool)

(assert (=> b!3217561 (= e!2006172 (Some!7162 (h!41626 rules!2135)))))

(assert (= (and d!883110 c!540881) b!3217561))

(assert (= (and d!883110 (not c!540881)) b!3217564))

(assert (= (and b!3217564 c!540882) b!3217560))

(assert (= (and b!3217564 (not c!540882)) b!3217562))

(assert (= (and d!883110 (not res!1309906)) b!3217565))

(assert (= (and b!3217565 res!1309907) b!3217563))

(declare-fun m!3491791 () Bool)

(assert (=> b!3217560 m!3491791))

(declare-fun m!3491793 () Bool)

(assert (=> b!3217560 m!3491793))

(declare-fun m!3491795 () Bool)

(assert (=> b!3217560 m!3491795))

(declare-fun m!3491797 () Bool)

(assert (=> b!3217563 m!3491797))

(assert (=> b!3217565 m!3491797))

(assert (=> b!3217565 m!3491797))

(declare-fun m!3491799 () Bool)

(assert (=> b!3217565 m!3491799))

(declare-fun m!3491801 () Bool)

(assert (=> d!883110 m!3491801))

(assert (=> d!883110 m!3490489))

(assert (=> b!3216762 d!883110))

(declare-fun d!883112 () Bool)

(declare-fun e!2006175 () Bool)

(assert (=> d!883112 e!2006175))

(declare-fun res!1309908 () Bool)

(assert (=> d!883112 (=> (not res!1309908) (not e!2006175))))

(declare-fun lt!1089045 () BalanceConc!21286)

(assert (=> d!883112 (= res!1309908 (= (list!12890 lt!1089045) (Cons!36207 separatorToken!241 Nil!36207)))))

(assert (=> d!883112 (= lt!1089045 (singleton!997 separatorToken!241))))

(assert (=> d!883112 (= (singletonSeq!2326 separatorToken!241) lt!1089045)))

(declare-fun b!3217566 () Bool)

(assert (=> b!3217566 (= e!2006175 (isBalanced!3224 (c!540718 lt!1089045)))))

(assert (= (and d!883112 res!1309908) b!3217566))

(declare-fun m!3491803 () Bool)

(assert (=> d!883112 m!3491803))

(declare-fun m!3491805 () Bool)

(assert (=> d!883112 m!3491805))

(declare-fun m!3491807 () Bool)

(assert (=> b!3217566 m!3491807))

(assert (=> b!3216762 d!883112))

(declare-fun d!883114 () Bool)

(declare-fun lt!1089046 () Int)

(assert (=> d!883114 (= lt!1089046 (size!27299 (list!12890 (_1!20945 lt!1088716))))))

(assert (=> d!883114 (= lt!1089046 (size!27300 (c!540718 (_1!20945 lt!1088716))))))

(assert (=> d!883114 (= (size!27295 (_1!20945 lt!1088716)) lt!1089046)))

(declare-fun bs!542280 () Bool)

(assert (= bs!542280 d!883114))

(declare-fun m!3491809 () Bool)

(assert (=> bs!542280 m!3491809))

(assert (=> bs!542280 m!3491809))

(declare-fun m!3491811 () Bool)

(assert (=> bs!542280 m!3491811))

(declare-fun m!3491813 () Bool)

(assert (=> bs!542280 m!3491813))

(assert (=> b!3216762 d!883114))

(declare-fun d!883116 () Bool)

(declare-fun lt!1089049 () Bool)

(assert (=> d!883116 (= lt!1089049 (select (content!4899 (usedCharacters!546 (regex!5230 (rule!7682 (h!41627 tokens!494))))) lt!1088692))))

(declare-fun e!2006181 () Bool)

(assert (=> d!883116 (= lt!1089049 e!2006181)))

(declare-fun res!1309914 () Bool)

(assert (=> d!883116 (=> (not res!1309914) (not e!2006181))))

(assert (=> d!883116 (= res!1309914 ((_ is Cons!36205) (usedCharacters!546 (regex!5230 (rule!7682 (h!41627 tokens!494))))))))

(assert (=> d!883116 (= (contains!6479 (usedCharacters!546 (regex!5230 (rule!7682 (h!41627 tokens!494)))) lt!1088692) lt!1089049)))

(declare-fun b!3217571 () Bool)

(declare-fun e!2006180 () Bool)

(assert (=> b!3217571 (= e!2006181 e!2006180)))

(declare-fun res!1309913 () Bool)

(assert (=> b!3217571 (=> res!1309913 e!2006180)))

(assert (=> b!3217571 (= res!1309913 (= (h!41625 (usedCharacters!546 (regex!5230 (rule!7682 (h!41627 tokens!494))))) lt!1088692))))

(declare-fun b!3217572 () Bool)

(assert (=> b!3217572 (= e!2006180 (contains!6479 (t!239820 (usedCharacters!546 (regex!5230 (rule!7682 (h!41627 tokens!494))))) lt!1088692))))

(assert (= (and d!883116 res!1309914) b!3217571))

(assert (= (and b!3217571 (not res!1309913)) b!3217572))

(assert (=> d!883116 m!3490359))

(declare-fun m!3491815 () Bool)

(assert (=> d!883116 m!3491815))

(declare-fun m!3491817 () Bool)

(assert (=> d!883116 m!3491817))

(declare-fun m!3491819 () Bool)

(assert (=> b!3217572 m!3491819))

(assert (=> b!3216762 d!883116))

(declare-fun b!3217573 () Bool)

(declare-fun lt!1089050 () Unit!50722)

(declare-fun lt!1089051 () Unit!50722)

(assert (=> b!3217573 (= lt!1089050 lt!1089051)))

(assert (=> b!3217573 (rulesInvariant!4216 thiss!18206 (t!239821 rules!2135))))

(assert (=> b!3217573 (= lt!1089051 (lemmaInvariantOnRulesThenOnTail!354 thiss!18206 (h!41626 rules!2135) (t!239821 rules!2135)))))

(declare-fun e!2006182 () Option!7163)

(assert (=> b!3217573 (= e!2006182 (getRuleFromTag!935 thiss!18206 (t!239821 rules!2135) (tag!5760 (rule!7682 separatorToken!241))))))

(declare-fun b!3217575 () Bool)

(assert (=> b!3217575 (= e!2006182 None!7162)))

(declare-fun b!3217576 () Bool)

(declare-fun e!2006185 () Bool)

(declare-fun lt!1089052 () Option!7163)

(assert (=> b!3217576 (= e!2006185 (= (tag!5760 (get!11532 lt!1089052)) (tag!5760 (rule!7682 separatorToken!241))))))

(declare-fun b!3217577 () Bool)

(declare-fun e!2006183 () Option!7163)

(assert (=> b!3217577 (= e!2006183 e!2006182)))

(declare-fun c!540884 () Bool)

(assert (=> b!3217577 (= c!540884 (and ((_ is Cons!36206) rules!2135) (not (= (tag!5760 (h!41626 rules!2135)) (tag!5760 (rule!7682 separatorToken!241))))))))

(declare-fun b!3217578 () Bool)

(declare-fun e!2006184 () Bool)

(assert (=> b!3217578 (= e!2006184 e!2006185)))

(declare-fun res!1309916 () Bool)

(assert (=> b!3217578 (=> (not res!1309916) (not e!2006185))))

(assert (=> b!3217578 (= res!1309916 (contains!6483 rules!2135 (get!11532 lt!1089052)))))

(declare-fun d!883118 () Bool)

(assert (=> d!883118 e!2006184))

(declare-fun res!1309915 () Bool)

(assert (=> d!883118 (=> res!1309915 e!2006184)))

(assert (=> d!883118 (= res!1309915 (isEmpty!20311 lt!1089052))))

(assert (=> d!883118 (= lt!1089052 e!2006183)))

(declare-fun c!540883 () Bool)

(assert (=> d!883118 (= c!540883 (and ((_ is Cons!36206) rules!2135) (= (tag!5760 (h!41626 rules!2135)) (tag!5760 (rule!7682 separatorToken!241)))))))

(assert (=> d!883118 (rulesInvariant!4216 thiss!18206 rules!2135)))

(assert (=> d!883118 (= (getRuleFromTag!935 thiss!18206 rules!2135 (tag!5760 (rule!7682 separatorToken!241))) lt!1089052)))

(declare-fun b!3217574 () Bool)

(assert (=> b!3217574 (= e!2006183 (Some!7162 (h!41626 rules!2135)))))

(assert (= (and d!883118 c!540883) b!3217574))

(assert (= (and d!883118 (not c!540883)) b!3217577))

(assert (= (and b!3217577 c!540884) b!3217573))

(assert (= (and b!3217577 (not c!540884)) b!3217575))

(assert (= (and d!883118 (not res!1309915)) b!3217578))

(assert (= (and b!3217578 res!1309916) b!3217576))

(assert (=> b!3217573 m!3491791))

(assert (=> b!3217573 m!3491793))

(declare-fun m!3491821 () Bool)

(assert (=> b!3217573 m!3491821))

(declare-fun m!3491823 () Bool)

(assert (=> b!3217576 m!3491823))

(assert (=> b!3217578 m!3491823))

(assert (=> b!3217578 m!3491823))

(declare-fun m!3491825 () Bool)

(assert (=> b!3217578 m!3491825))

(declare-fun m!3491827 () Bool)

(assert (=> d!883118 m!3491827))

(assert (=> d!883118 m!3490489))

(assert (=> b!3216762 d!883118))

(declare-fun b!3217579 () Bool)

(declare-fun e!2006189 () List!36329)

(assert (=> b!3217579 (= e!2006189 Nil!36205)))

(declare-fun b!3217580 () Bool)

(declare-fun e!2006187 () List!36329)

(declare-fun call!232872 () List!36329)

(assert (=> b!3217580 (= e!2006187 call!232872)))

(declare-fun b!3217581 () Bool)

(declare-fun e!2006186 () List!36329)

(declare-fun call!232871 () List!36329)

(assert (=> b!3217581 (= e!2006186 call!232871)))

(declare-fun bm!232865 () Bool)

(declare-fun call!232873 () List!36329)

(declare-fun c!540888 () Bool)

(assert (=> bm!232865 (= call!232873 (usedCharacters!546 (ite c!540888 (regTwo!20491 (regex!5230 (rule!7682 (h!41627 (t!239822 tokens!494))))) (regOne!20490 (regex!5230 (rule!7682 (h!41627 (t!239822 tokens!494))))))))))

(declare-fun b!3217582 () Bool)

(assert (=> b!3217582 (= e!2006187 e!2006186)))

(assert (=> b!3217582 (= c!540888 ((_ is Union!9989) (regex!5230 (rule!7682 (h!41627 (t!239822 tokens!494))))))))

(declare-fun b!3217583 () Bool)

(declare-fun e!2006188 () List!36329)

(assert (=> b!3217583 (= e!2006188 (Cons!36205 (c!540716 (regex!5230 (rule!7682 (h!41627 (t!239822 tokens!494))))) Nil!36205))))

(declare-fun d!883120 () Bool)

(declare-fun c!540886 () Bool)

(assert (=> d!883120 (= c!540886 (or ((_ is EmptyExpr!9989) (regex!5230 (rule!7682 (h!41627 (t!239822 tokens!494))))) ((_ is EmptyLang!9989) (regex!5230 (rule!7682 (h!41627 (t!239822 tokens!494)))))))))

(assert (=> d!883120 (= (usedCharacters!546 (regex!5230 (rule!7682 (h!41627 (t!239822 tokens!494))))) e!2006189)))

(declare-fun bm!232866 () Bool)

(declare-fun call!232870 () List!36329)

(assert (=> bm!232866 (= call!232870 call!232872)))

(declare-fun b!3217584 () Bool)

(assert (=> b!3217584 (= e!2006186 call!232871)))

(declare-fun bm!232867 () Bool)

(assert (=> bm!232867 (= call!232871 (++!8698 (ite c!540888 call!232870 call!232873) (ite c!540888 call!232873 call!232870)))))

(declare-fun b!3217585 () Bool)

(declare-fun c!540887 () Bool)

(assert (=> b!3217585 (= c!540887 ((_ is Star!9989) (regex!5230 (rule!7682 (h!41627 (t!239822 tokens!494))))))))

(assert (=> b!3217585 (= e!2006188 e!2006187)))

(declare-fun b!3217586 () Bool)

(assert (=> b!3217586 (= e!2006189 e!2006188)))

(declare-fun c!540885 () Bool)

(assert (=> b!3217586 (= c!540885 ((_ is ElementMatch!9989) (regex!5230 (rule!7682 (h!41627 (t!239822 tokens!494))))))))

(declare-fun bm!232868 () Bool)

(assert (=> bm!232868 (= call!232872 (usedCharacters!546 (ite c!540887 (reg!10318 (regex!5230 (rule!7682 (h!41627 (t!239822 tokens!494))))) (ite c!540888 (regOne!20491 (regex!5230 (rule!7682 (h!41627 (t!239822 tokens!494))))) (regTwo!20490 (regex!5230 (rule!7682 (h!41627 (t!239822 tokens!494)))))))))))

(assert (= (and d!883120 c!540886) b!3217579))

(assert (= (and d!883120 (not c!540886)) b!3217586))

(assert (= (and b!3217586 c!540885) b!3217583))

(assert (= (and b!3217586 (not c!540885)) b!3217585))

(assert (= (and b!3217585 c!540887) b!3217580))

(assert (= (and b!3217585 (not c!540887)) b!3217582))

(assert (= (and b!3217582 c!540888) b!3217584))

(assert (= (and b!3217582 (not c!540888)) b!3217581))

(assert (= (or b!3217584 b!3217581) bm!232865))

(assert (= (or b!3217584 b!3217581) bm!232866))

(assert (= (or b!3217584 b!3217581) bm!232867))

(assert (= (or b!3217580 bm!232866) bm!232868))

(declare-fun m!3491829 () Bool)

(assert (=> bm!232865 m!3491829))

(declare-fun m!3491831 () Bool)

(assert (=> bm!232867 m!3491831))

(declare-fun m!3491833 () Bool)

(assert (=> bm!232868 m!3491833))

(assert (=> b!3216762 d!883120))

(declare-fun d!883122 () Bool)

(assert (=> d!883122 (= (apply!8221 (transformation!5230 (rule!7682 (h!41627 tokens!494))) lt!1088720) (dynLambda!14653 (toValue!7322 (transformation!5230 (rule!7682 (h!41627 tokens!494)))) lt!1088720))))

(declare-fun b_lambda!88407 () Bool)

(assert (=> (not b_lambda!88407) (not d!883122)))

(declare-fun t!239882 () Bool)

(declare-fun tb!158795 () Bool)

(assert (=> (and b!3216775 (= (toValue!7322 (transformation!5230 (rule!7682 (h!41627 tokens!494)))) (toValue!7322 (transformation!5230 (rule!7682 (h!41627 tokens!494))))) t!239882) tb!158795))

(declare-fun result!201200 () Bool)

(assert (=> tb!158795 (= result!201200 (inv!21 (dynLambda!14653 (toValue!7322 (transformation!5230 (rule!7682 (h!41627 tokens!494)))) lt!1088720)))))

(declare-fun m!3491835 () Bool)

(assert (=> tb!158795 m!3491835))

(assert (=> d!883122 t!239882))

(declare-fun b_and!214853 () Bool)

(assert (= b_and!214847 (and (=> t!239882 result!201200) b_and!214853)))

(declare-fun t!239884 () Bool)

(declare-fun tb!158797 () Bool)

(assert (=> (and b!3216773 (= (toValue!7322 (transformation!5230 (h!41626 rules!2135))) (toValue!7322 (transformation!5230 (rule!7682 (h!41627 tokens!494))))) t!239884) tb!158797))

(declare-fun result!201202 () Bool)

(assert (= result!201202 result!201200))

(assert (=> d!883122 t!239884))

(declare-fun b_and!214855 () Bool)

(assert (= b_and!214849 (and (=> t!239884 result!201202) b_and!214855)))

(declare-fun tb!158799 () Bool)

(declare-fun t!239886 () Bool)

(assert (=> (and b!3216778 (= (toValue!7322 (transformation!5230 (rule!7682 separatorToken!241))) (toValue!7322 (transformation!5230 (rule!7682 (h!41627 tokens!494))))) t!239886) tb!158799))

(declare-fun result!201204 () Bool)

(assert (= result!201204 result!201200))

(assert (=> d!883122 t!239886))

(declare-fun b_and!214857 () Bool)

(assert (= b_and!214851 (and (=> t!239886 result!201204) b_and!214857)))

(declare-fun m!3491837 () Bool)

(assert (=> d!883122 m!3491837))

(assert (=> b!3216762 d!883122))

(declare-fun b!3217659 () Bool)

(declare-fun e!2006246 () Bool)

(declare-fun lt!1089058 () tuple2!35622)

(declare-datatypes ((tuple2!35632 0))(
  ( (tuple2!35633 (_1!20950 List!36331) (_2!20950 List!36329)) )
))
(declare-fun lexList!1317 (LexerInterface!4819 List!36330 List!36329) tuple2!35632)

(assert (=> b!3217659 (= e!2006246 (= (list!12887 (_2!20945 lt!1089058)) (_2!20950 (lexList!1317 thiss!18206 rules!2135 (list!12887 lt!1088699)))))))

(declare-fun b!3217660 () Bool)

(declare-fun res!1309926 () Bool)

(assert (=> b!3217660 (=> (not res!1309926) (not e!2006246))))

(assert (=> b!3217660 (= res!1309926 (= (list!12890 (_1!20945 lt!1089058)) (_1!20950 (lexList!1317 thiss!18206 rules!2135 (list!12887 lt!1088699)))))))

(declare-fun b!3217661 () Bool)

(declare-fun e!2006247 () Bool)

(assert (=> b!3217661 (= e!2006247 (= (_2!20945 lt!1089058) lt!1088699))))

(declare-fun b!3217663 () Bool)

(declare-fun e!2006245 () Bool)

(assert (=> b!3217663 (= e!2006247 e!2006245)))

(declare-fun res!1309927 () Bool)

(assert (=> b!3217663 (= res!1309927 (< (size!27301 (_2!20945 lt!1089058)) (size!27301 lt!1088699)))))

(assert (=> b!3217663 (=> (not res!1309927) (not e!2006245))))

(declare-fun b!3217662 () Bool)

(assert (=> b!3217662 (= e!2006245 (not (isEmpty!20305 (_1!20945 lt!1089058))))))

(declare-fun d!883124 () Bool)

(assert (=> d!883124 e!2006246))

(declare-fun res!1309928 () Bool)

(assert (=> d!883124 (=> (not res!1309928) (not e!2006246))))

(assert (=> d!883124 (= res!1309928 e!2006247)))

(declare-fun c!540891 () Bool)

(assert (=> d!883124 (= c!540891 (> (size!27295 (_1!20945 lt!1089058)) 0))))

(declare-fun lexTailRecV2!937 (LexerInterface!4819 List!36330 BalanceConc!21284 BalanceConc!21284 BalanceConc!21284 BalanceConc!21286) tuple2!35622)

(assert (=> d!883124 (= lt!1089058 (lexTailRecV2!937 thiss!18206 rules!2135 lt!1088699 (BalanceConc!21285 Empty!10835) lt!1088699 (BalanceConc!21287 Empty!10836)))))

(assert (=> d!883124 (= (lex!2149 thiss!18206 rules!2135 lt!1088699) lt!1089058)))

(assert (= (and d!883124 c!540891) b!3217663))

(assert (= (and d!883124 (not c!540891)) b!3217661))

(assert (= (and b!3217663 res!1309927) b!3217662))

(assert (= (and d!883124 res!1309928) b!3217660))

(assert (= (and b!3217660 res!1309926) b!3217659))

(declare-fun m!3491861 () Bool)

(assert (=> d!883124 m!3491861))

(declare-fun m!3491863 () Bool)

(assert (=> d!883124 m!3491863))

(declare-fun m!3491865 () Bool)

(assert (=> b!3217663 m!3491865))

(declare-fun m!3491867 () Bool)

(assert (=> b!3217663 m!3491867))

(declare-fun m!3491869 () Bool)

(assert (=> b!3217662 m!3491869))

(declare-fun m!3491871 () Bool)

(assert (=> b!3217659 m!3491871))

(declare-fun m!3491873 () Bool)

(assert (=> b!3217659 m!3491873))

(assert (=> b!3217659 m!3491873))

(declare-fun m!3491875 () Bool)

(assert (=> b!3217659 m!3491875))

(declare-fun m!3491877 () Bool)

(assert (=> b!3217660 m!3491877))

(assert (=> b!3217660 m!3491873))

(assert (=> b!3217660 m!3491873))

(assert (=> b!3217660 m!3491875))

(assert (=> b!3216762 d!883124))

(declare-fun d!883136 () Bool)

(assert (=> d!883136 (= (isDefined!5564 lt!1088714) (not (isEmpty!20311 lt!1088714)))))

(declare-fun bs!542287 () Bool)

(assert (= bs!542287 d!883136))

(declare-fun m!3491879 () Bool)

(assert (=> bs!542287 m!3491879))

(assert (=> b!3216762 d!883136))

(declare-fun d!883138 () Bool)

(declare-fun e!2006248 () Bool)

(assert (=> d!883138 e!2006248))

(declare-fun res!1309929 () Bool)

(assert (=> d!883138 (=> (not res!1309929) (not e!2006248))))

(declare-fun lt!1089059 () BalanceConc!21286)

(assert (=> d!883138 (= res!1309929 (= (list!12890 lt!1089059) (Cons!36207 (h!41627 (t!239822 tokens!494)) Nil!36207)))))

(assert (=> d!883138 (= lt!1089059 (singleton!997 (h!41627 (t!239822 tokens!494))))))

(assert (=> d!883138 (= (singletonSeq!2326 (h!41627 (t!239822 tokens!494))) lt!1089059)))

(declare-fun b!3217664 () Bool)

(assert (=> b!3217664 (= e!2006248 (isBalanced!3224 (c!540718 lt!1089059)))))

(assert (= (and d!883138 res!1309929) b!3217664))

(declare-fun m!3491881 () Bool)

(assert (=> d!883138 m!3491881))

(declare-fun m!3491883 () Bool)

(assert (=> d!883138 m!3491883))

(declare-fun m!3491885 () Bool)

(assert (=> b!3217664 m!3491885))

(assert (=> b!3216762 d!883138))

(declare-fun d!883140 () Bool)

(assert (=> d!883140 (= (head!7053 lt!1088680) (h!41625 lt!1088680))))

(assert (=> b!3216762 d!883140))

(declare-fun d!883142 () Bool)

(assert (=> d!883142 (dynLambda!14651 lambda!117651 (h!41627 (t!239822 tokens!494)))))

(declare-fun lt!1089060 () Unit!50722)

(assert (=> d!883142 (= lt!1089060 (choose!18786 tokens!494 lambda!117651 (h!41627 (t!239822 tokens!494))))))

(declare-fun e!2006249 () Bool)

(assert (=> d!883142 e!2006249))

(declare-fun res!1309930 () Bool)

(assert (=> d!883142 (=> (not res!1309930) (not e!2006249))))

(assert (=> d!883142 (= res!1309930 (forall!7406 tokens!494 lambda!117651))))

(assert (=> d!883142 (= (forallContained!1201 tokens!494 lambda!117651 (h!41627 (t!239822 tokens!494))) lt!1089060)))

(declare-fun b!3217665 () Bool)

(assert (=> b!3217665 (= e!2006249 (contains!6482 tokens!494 (h!41627 (t!239822 tokens!494))))))

(assert (= (and d!883142 res!1309930) b!3217665))

(declare-fun b_lambda!88431 () Bool)

(assert (=> (not b_lambda!88431) (not d!883142)))

(declare-fun m!3491887 () Bool)

(assert (=> d!883142 m!3491887))

(declare-fun m!3491889 () Bool)

(assert (=> d!883142 m!3491889))

(declare-fun m!3491891 () Bool)

(assert (=> d!883142 m!3491891))

(assert (=> b!3217665 m!3490927))

(assert (=> b!3216762 d!883142))

(declare-fun d!883144 () Bool)

(declare-fun lt!1089061 () Bool)

(assert (=> d!883144 (= lt!1089061 (select (content!4899 (usedCharacters!546 (regex!5230 (rule!7682 (h!41627 (t!239822 tokens!494)))))) lt!1088711))))

(declare-fun e!2006251 () Bool)

(assert (=> d!883144 (= lt!1089061 e!2006251)))

(declare-fun res!1309932 () Bool)

(assert (=> d!883144 (=> (not res!1309932) (not e!2006251))))

(assert (=> d!883144 (= res!1309932 ((_ is Cons!36205) (usedCharacters!546 (regex!5230 (rule!7682 (h!41627 (t!239822 tokens!494)))))))))

(assert (=> d!883144 (= (contains!6479 (usedCharacters!546 (regex!5230 (rule!7682 (h!41627 (t!239822 tokens!494))))) lt!1088711) lt!1089061)))

(declare-fun b!3217666 () Bool)

(declare-fun e!2006250 () Bool)

(assert (=> b!3217666 (= e!2006251 e!2006250)))

(declare-fun res!1309931 () Bool)

(assert (=> b!3217666 (=> res!1309931 e!2006250)))

(assert (=> b!3217666 (= res!1309931 (= (h!41625 (usedCharacters!546 (regex!5230 (rule!7682 (h!41627 (t!239822 tokens!494)))))) lt!1088711))))

(declare-fun b!3217667 () Bool)

(assert (=> b!3217667 (= e!2006250 (contains!6479 (t!239820 (usedCharacters!546 (regex!5230 (rule!7682 (h!41627 (t!239822 tokens!494)))))) lt!1088711))))

(assert (= (and d!883144 res!1309932) b!3217666))

(assert (= (and b!3217666 (not res!1309931)) b!3217667))

(assert (=> d!883144 m!3490369))

(declare-fun m!3491893 () Bool)

(assert (=> d!883144 m!3491893))

(declare-fun m!3491895 () Bool)

(assert (=> d!883144 m!3491895))

(declare-fun m!3491897 () Bool)

(assert (=> b!3217667 m!3491897))

(assert (=> b!3216762 d!883144))

(declare-fun d!883146 () Bool)

(declare-fun lt!1089062 () Bool)

(assert (=> d!883146 (= lt!1089062 (select (content!4899 (usedCharacters!546 (regex!5230 (rule!7682 separatorToken!241)))) lt!1088692))))

(declare-fun e!2006253 () Bool)

(assert (=> d!883146 (= lt!1089062 e!2006253)))

(declare-fun res!1309934 () Bool)

(assert (=> d!883146 (=> (not res!1309934) (not e!2006253))))

(assert (=> d!883146 (= res!1309934 ((_ is Cons!36205) (usedCharacters!546 (regex!5230 (rule!7682 separatorToken!241)))))))

(assert (=> d!883146 (= (contains!6479 (usedCharacters!546 (regex!5230 (rule!7682 separatorToken!241))) lt!1088692) lt!1089062)))

(declare-fun b!3217668 () Bool)

(declare-fun e!2006252 () Bool)

(assert (=> b!3217668 (= e!2006253 e!2006252)))

(declare-fun res!1309933 () Bool)

(assert (=> b!3217668 (=> res!1309933 e!2006252)))

(assert (=> b!3217668 (= res!1309933 (= (h!41625 (usedCharacters!546 (regex!5230 (rule!7682 separatorToken!241)))) lt!1088692))))

(declare-fun b!3217669 () Bool)

(assert (=> b!3217669 (= e!2006252 (contains!6479 (t!239820 (usedCharacters!546 (regex!5230 (rule!7682 separatorToken!241)))) lt!1088692))))

(assert (= (and d!883146 res!1309934) b!3217668))

(assert (= (and b!3217668 (not res!1309933)) b!3217669))

(assert (=> d!883146 m!3490349))

(declare-fun m!3491899 () Bool)

(assert (=> d!883146 m!3491899))

(declare-fun m!3491901 () Bool)

(assert (=> d!883146 m!3491901))

(declare-fun m!3491903 () Bool)

(assert (=> b!3217669 m!3491903))

(assert (=> b!3216762 d!883146))

(declare-fun b!3217670 () Bool)

(declare-fun lt!1089063 () tuple2!35622)

(declare-fun e!2006255 () Bool)

(assert (=> b!3217670 (= e!2006255 (= (list!12887 (_2!20945 lt!1089063)) (_2!20950 (lexList!1317 thiss!18206 rules!2135 (list!12887 lt!1088718)))))))

(declare-fun b!3217671 () Bool)

(declare-fun res!1309935 () Bool)

(assert (=> b!3217671 (=> (not res!1309935) (not e!2006255))))

(assert (=> b!3217671 (= res!1309935 (= (list!12890 (_1!20945 lt!1089063)) (_1!20950 (lexList!1317 thiss!18206 rules!2135 (list!12887 lt!1088718)))))))

(declare-fun b!3217672 () Bool)

(declare-fun e!2006256 () Bool)

(assert (=> b!3217672 (= e!2006256 (= (_2!20945 lt!1089063) lt!1088718))))

(declare-fun b!3217674 () Bool)

(declare-fun e!2006254 () Bool)

(assert (=> b!3217674 (= e!2006256 e!2006254)))

(declare-fun res!1309936 () Bool)

(assert (=> b!3217674 (= res!1309936 (< (size!27301 (_2!20945 lt!1089063)) (size!27301 lt!1088718)))))

(assert (=> b!3217674 (=> (not res!1309936) (not e!2006254))))

(declare-fun b!3217673 () Bool)

(assert (=> b!3217673 (= e!2006254 (not (isEmpty!20305 (_1!20945 lt!1089063))))))

(declare-fun d!883148 () Bool)

(assert (=> d!883148 e!2006255))

(declare-fun res!1309937 () Bool)

(assert (=> d!883148 (=> (not res!1309937) (not e!2006255))))

(assert (=> d!883148 (= res!1309937 e!2006256)))

(declare-fun c!540892 () Bool)

(assert (=> d!883148 (= c!540892 (> (size!27295 (_1!20945 lt!1089063)) 0))))

(assert (=> d!883148 (= lt!1089063 (lexTailRecV2!937 thiss!18206 rules!2135 lt!1088718 (BalanceConc!21285 Empty!10835) lt!1088718 (BalanceConc!21287 Empty!10836)))))

(assert (=> d!883148 (= (lex!2149 thiss!18206 rules!2135 lt!1088718) lt!1089063)))

(assert (= (and d!883148 c!540892) b!3217674))

(assert (= (and d!883148 (not c!540892)) b!3217672))

(assert (= (and b!3217674 res!1309936) b!3217673))

(assert (= (and d!883148 res!1309937) b!3217671))

(assert (= (and b!3217671 res!1309935) b!3217670))

(declare-fun m!3491905 () Bool)

(assert (=> d!883148 m!3491905))

(declare-fun m!3491907 () Bool)

(assert (=> d!883148 m!3491907))

(declare-fun m!3491909 () Bool)

(assert (=> b!3217674 m!3491909))

(declare-fun m!3491911 () Bool)

(assert (=> b!3217674 m!3491911))

(declare-fun m!3491913 () Bool)

(assert (=> b!3217673 m!3491913))

(declare-fun m!3491915 () Bool)

(assert (=> b!3217670 m!3491915))

(declare-fun m!3491917 () Bool)

(assert (=> b!3217670 m!3491917))

(assert (=> b!3217670 m!3491917))

(declare-fun m!3491919 () Bool)

(assert (=> b!3217670 m!3491919))

(declare-fun m!3491921 () Bool)

(assert (=> b!3217671 m!3491921))

(assert (=> b!3217671 m!3491917))

(assert (=> b!3217671 m!3491917))

(assert (=> b!3217671 m!3491919))

(assert (=> b!3216762 d!883148))

(declare-fun d!883150 () Bool)

(declare-fun lt!1089069 () BalanceConc!21284)

(assert (=> d!883150 (= (list!12887 lt!1089069) (printListTailRec!564 thiss!18206 (dropList!1081 lt!1088685 0) (list!12887 (BalanceConc!21285 Empty!10835))))))

(declare-fun e!2006258 () BalanceConc!21284)

(assert (=> d!883150 (= lt!1089069 e!2006258)))

(declare-fun c!540893 () Bool)

(assert (=> d!883150 (= c!540893 (>= 0 (size!27295 lt!1088685)))))

(declare-fun e!2006257 () Bool)

(assert (=> d!883150 e!2006257))

(declare-fun res!1309938 () Bool)

(assert (=> d!883150 (=> (not res!1309938) (not e!2006257))))

(assert (=> d!883150 (= res!1309938 (>= 0 0))))

(assert (=> d!883150 (= (printTailRec!1316 thiss!18206 lt!1088685 0 (BalanceConc!21285 Empty!10835)) lt!1089069)))

(declare-fun b!3217675 () Bool)

(assert (=> b!3217675 (= e!2006257 (<= 0 (size!27295 lt!1088685)))))

(declare-fun b!3217676 () Bool)

(assert (=> b!3217676 (= e!2006258 (BalanceConc!21285 Empty!10835))))

(declare-fun b!3217677 () Bool)

(assert (=> b!3217677 (= e!2006258 (printTailRec!1316 thiss!18206 lt!1088685 (+ 0 1) (++!8699 (BalanceConc!21285 Empty!10835) (charsOf!3246 (apply!8222 lt!1088685 0)))))))

(declare-fun lt!1089065 () List!36331)

(assert (=> b!3217677 (= lt!1089065 (list!12890 lt!1088685))))

(declare-fun lt!1089070 () Unit!50722)

(assert (=> b!3217677 (= lt!1089070 (lemmaDropApply!1040 lt!1089065 0))))

(assert (=> b!3217677 (= (head!7054 (drop!1864 lt!1089065 0)) (apply!8223 lt!1089065 0))))

(declare-fun lt!1089068 () Unit!50722)

(assert (=> b!3217677 (= lt!1089068 lt!1089070)))

(declare-fun lt!1089066 () List!36331)

(assert (=> b!3217677 (= lt!1089066 (list!12890 lt!1088685))))

(declare-fun lt!1089064 () Unit!50722)

(assert (=> b!3217677 (= lt!1089064 (lemmaDropTail!924 lt!1089066 0))))

(assert (=> b!3217677 (= (tail!5219 (drop!1864 lt!1089066 0)) (drop!1864 lt!1089066 (+ 0 1)))))

(declare-fun lt!1089067 () Unit!50722)

(assert (=> b!3217677 (= lt!1089067 lt!1089064)))

(assert (= (and d!883150 res!1309938) b!3217675))

(assert (= (and d!883150 c!540893) b!3217676))

(assert (= (and d!883150 (not c!540893)) b!3217677))

(declare-fun m!3491923 () Bool)

(assert (=> d!883150 m!3491923))

(declare-fun m!3491925 () Bool)

(assert (=> d!883150 m!3491925))

(assert (=> d!883150 m!3491923))

(assert (=> d!883150 m!3490675))

(declare-fun m!3491927 () Bool)

(assert (=> d!883150 m!3491927))

(assert (=> d!883150 m!3490675))

(declare-fun m!3491929 () Bool)

(assert (=> d!883150 m!3491929))

(assert (=> b!3217675 m!3491925))

(declare-fun m!3491931 () Bool)

(assert (=> b!3217677 m!3491931))

(declare-fun m!3491933 () Bool)

(assert (=> b!3217677 m!3491933))

(declare-fun m!3491935 () Bool)

(assert (=> b!3217677 m!3491935))

(declare-fun m!3491937 () Bool)

(assert (=> b!3217677 m!3491937))

(assert (=> b!3217677 m!3491687))

(assert (=> b!3217677 m!3491935))

(declare-fun m!3491939 () Bool)

(assert (=> b!3217677 m!3491939))

(declare-fun m!3491941 () Bool)

(assert (=> b!3217677 m!3491941))

(declare-fun m!3491943 () Bool)

(assert (=> b!3217677 m!3491943))

(assert (=> b!3217677 m!3491931))

(declare-fun m!3491945 () Bool)

(assert (=> b!3217677 m!3491945))

(declare-fun m!3491947 () Bool)

(assert (=> b!3217677 m!3491947))

(assert (=> b!3217677 m!3491939))

(assert (=> b!3217677 m!3491945))

(declare-fun m!3491949 () Bool)

(assert (=> b!3217677 m!3491949))

(declare-fun m!3491951 () Bool)

(assert (=> b!3217677 m!3491951))

(assert (=> b!3217677 m!3491941))

(declare-fun m!3491953 () Bool)

(assert (=> b!3217677 m!3491953))

(assert (=> b!3216762 d!883150))

(declare-fun d!883152 () Bool)

(declare-fun lt!1089071 () Int)

(assert (=> d!883152 (>= lt!1089071 0)))

(declare-fun e!2006259 () Int)

(assert (=> d!883152 (= lt!1089071 e!2006259)))

(declare-fun c!540894 () Bool)

(assert (=> d!883152 (= c!540894 ((_ is Nil!36205) lt!1088698))))

(assert (=> d!883152 (= (size!27294 lt!1088698) lt!1089071)))

(declare-fun b!3217678 () Bool)

(assert (=> b!3217678 (= e!2006259 0)))

(declare-fun b!3217679 () Bool)

(assert (=> b!3217679 (= e!2006259 (+ 1 (size!27294 (t!239820 lt!1088698))))))

(assert (= (and d!883152 c!540894) b!3217678))

(assert (= (and d!883152 (not c!540894)) b!3217679))

(declare-fun m!3491955 () Bool)

(assert (=> b!3217679 m!3491955))

(assert (=> b!3216762 d!883152))

(declare-fun b!3217680 () Bool)

(declare-fun e!2006263 () List!36329)

(assert (=> b!3217680 (= e!2006263 Nil!36205)))

(declare-fun b!3217681 () Bool)

(declare-fun e!2006261 () List!36329)

(declare-fun call!232876 () List!36329)

(assert (=> b!3217681 (= e!2006261 call!232876)))

(declare-fun b!3217682 () Bool)

(declare-fun e!2006260 () List!36329)

(declare-fun call!232875 () List!36329)

(assert (=> b!3217682 (= e!2006260 call!232875)))

(declare-fun bm!232869 () Bool)

(declare-fun call!232877 () List!36329)

(declare-fun c!540898 () Bool)

(assert (=> bm!232869 (= call!232877 (usedCharacters!546 (ite c!540898 (regTwo!20491 (regex!5230 (rule!7682 separatorToken!241))) (regOne!20490 (regex!5230 (rule!7682 separatorToken!241))))))))

(declare-fun b!3217683 () Bool)

(assert (=> b!3217683 (= e!2006261 e!2006260)))

(assert (=> b!3217683 (= c!540898 ((_ is Union!9989) (regex!5230 (rule!7682 separatorToken!241))))))

(declare-fun b!3217684 () Bool)

(declare-fun e!2006262 () List!36329)

(assert (=> b!3217684 (= e!2006262 (Cons!36205 (c!540716 (regex!5230 (rule!7682 separatorToken!241))) Nil!36205))))

(declare-fun d!883154 () Bool)

(declare-fun c!540896 () Bool)

(assert (=> d!883154 (= c!540896 (or ((_ is EmptyExpr!9989) (regex!5230 (rule!7682 separatorToken!241))) ((_ is EmptyLang!9989) (regex!5230 (rule!7682 separatorToken!241)))))))

(assert (=> d!883154 (= (usedCharacters!546 (regex!5230 (rule!7682 separatorToken!241))) e!2006263)))

(declare-fun bm!232870 () Bool)

(declare-fun call!232874 () List!36329)

(assert (=> bm!232870 (= call!232874 call!232876)))

(declare-fun b!3217685 () Bool)

(assert (=> b!3217685 (= e!2006260 call!232875)))

(declare-fun bm!232871 () Bool)

(assert (=> bm!232871 (= call!232875 (++!8698 (ite c!540898 call!232874 call!232877) (ite c!540898 call!232877 call!232874)))))

(declare-fun b!3217686 () Bool)

(declare-fun c!540897 () Bool)

(assert (=> b!3217686 (= c!540897 ((_ is Star!9989) (regex!5230 (rule!7682 separatorToken!241))))))

(assert (=> b!3217686 (= e!2006262 e!2006261)))

(declare-fun b!3217687 () Bool)

(assert (=> b!3217687 (= e!2006263 e!2006262)))

(declare-fun c!540895 () Bool)

(assert (=> b!3217687 (= c!540895 ((_ is ElementMatch!9989) (regex!5230 (rule!7682 separatorToken!241))))))

(declare-fun bm!232872 () Bool)

(assert (=> bm!232872 (= call!232876 (usedCharacters!546 (ite c!540897 (reg!10318 (regex!5230 (rule!7682 separatorToken!241))) (ite c!540898 (regOne!20491 (regex!5230 (rule!7682 separatorToken!241))) (regTwo!20490 (regex!5230 (rule!7682 separatorToken!241)))))))))

(assert (= (and d!883154 c!540896) b!3217680))

(assert (= (and d!883154 (not c!540896)) b!3217687))

(assert (= (and b!3217687 c!540895) b!3217684))

(assert (= (and b!3217687 (not c!540895)) b!3217686))

(assert (= (and b!3217686 c!540897) b!3217681))

(assert (= (and b!3217686 (not c!540897)) b!3217683))

(assert (= (and b!3217683 c!540898) b!3217685))

(assert (= (and b!3217683 (not c!540898)) b!3217682))

(assert (= (or b!3217685 b!3217682) bm!232869))

(assert (= (or b!3217685 b!3217682) bm!232870))

(assert (= (or b!3217685 b!3217682) bm!232871))

(assert (= (or b!3217681 bm!232870) bm!232872))

(declare-fun m!3491957 () Bool)

(assert (=> bm!232869 m!3491957))

(declare-fun m!3491959 () Bool)

(assert (=> bm!232871 m!3491959))

(declare-fun m!3491961 () Bool)

(assert (=> bm!232872 m!3491961))

(assert (=> b!3216762 d!883154))

(declare-fun d!883156 () Bool)

(assert (=> d!883156 (= (head!7053 lt!1088705) (h!41625 lt!1088705))))

(assert (=> b!3216762 d!883156))

(declare-fun d!883158 () Bool)

(declare-fun lt!1089072 () BalanceConc!21284)

(assert (=> d!883158 (= (list!12887 lt!1089072) (printList!1369 thiss!18206 (list!12890 lt!1088703)))))

(assert (=> d!883158 (= lt!1089072 (printTailRec!1316 thiss!18206 lt!1088703 0 (BalanceConc!21285 Empty!10835)))))

(assert (=> d!883158 (= (print!1884 thiss!18206 lt!1088703) lt!1089072)))

(declare-fun bs!542288 () Bool)

(assert (= bs!542288 d!883158))

(declare-fun m!3491963 () Bool)

(assert (=> bs!542288 m!3491963))

(assert (=> bs!542288 m!3491731))

(assert (=> bs!542288 m!3491731))

(declare-fun m!3491965 () Bool)

(assert (=> bs!542288 m!3491965))

(assert (=> bs!542288 m!3490345))

(assert (=> b!3216762 d!883158))

(declare-fun d!883160 () Bool)

(assert (=> d!883160 (not (contains!6479 (usedCharacters!546 (regex!5230 (rule!7682 (h!41627 tokens!494)))) lt!1088692))))

(declare-fun lt!1089075 () Unit!50722)

(declare-fun choose!18793 (LexerInterface!4819 List!36330 List!36330 Rule!10260 Rule!10260 C!20164) Unit!50722)

(assert (=> d!883160 (= lt!1089075 (choose!18793 thiss!18206 rules!2135 rules!2135 (rule!7682 (h!41627 tokens!494)) (rule!7682 separatorToken!241) lt!1088692))))

(assert (=> d!883160 (rulesInvariant!4216 thiss!18206 rules!2135)))

(assert (=> d!883160 (= (lemmaNonSepRuleNotContainsCharContainedInASepRule!154 thiss!18206 rules!2135 rules!2135 (rule!7682 (h!41627 tokens!494)) (rule!7682 separatorToken!241) lt!1088692) lt!1089075)))

(declare-fun bs!542289 () Bool)

(assert (= bs!542289 d!883160))

(assert (=> bs!542289 m!3490359))

(assert (=> bs!542289 m!3490359))

(assert (=> bs!542289 m!3490361))

(declare-fun m!3491967 () Bool)

(assert (=> bs!542289 m!3491967))

(assert (=> bs!542289 m!3490489))

(assert (=> b!3216762 d!883160))

(declare-fun b!3217688 () Bool)

(declare-fun lt!1089076 () Unit!50722)

(declare-fun lt!1089077 () Unit!50722)

(assert (=> b!3217688 (= lt!1089076 lt!1089077)))

(assert (=> b!3217688 (rulesInvariant!4216 thiss!18206 (t!239821 rules!2135))))

(assert (=> b!3217688 (= lt!1089077 (lemmaInvariantOnRulesThenOnTail!354 thiss!18206 (h!41626 rules!2135) (t!239821 rules!2135)))))

(declare-fun e!2006264 () Option!7163)

(assert (=> b!3217688 (= e!2006264 (getRuleFromTag!935 thiss!18206 (t!239821 rules!2135) (tag!5760 (rule!7682 (h!41627 (t!239822 tokens!494))))))))

(declare-fun b!3217690 () Bool)

(assert (=> b!3217690 (= e!2006264 None!7162)))

(declare-fun b!3217691 () Bool)

(declare-fun e!2006267 () Bool)

(declare-fun lt!1089078 () Option!7163)

(assert (=> b!3217691 (= e!2006267 (= (tag!5760 (get!11532 lt!1089078)) (tag!5760 (rule!7682 (h!41627 (t!239822 tokens!494))))))))

(declare-fun b!3217692 () Bool)

(declare-fun e!2006265 () Option!7163)

(assert (=> b!3217692 (= e!2006265 e!2006264)))

(declare-fun c!540901 () Bool)

(assert (=> b!3217692 (= c!540901 (and ((_ is Cons!36206) rules!2135) (not (= (tag!5760 (h!41626 rules!2135)) (tag!5760 (rule!7682 (h!41627 (t!239822 tokens!494))))))))))

(declare-fun b!3217693 () Bool)

(declare-fun e!2006266 () Bool)

(assert (=> b!3217693 (= e!2006266 e!2006267)))

(declare-fun res!1309940 () Bool)

(assert (=> b!3217693 (=> (not res!1309940) (not e!2006267))))

(assert (=> b!3217693 (= res!1309940 (contains!6483 rules!2135 (get!11532 lt!1089078)))))

(declare-fun d!883162 () Bool)

(assert (=> d!883162 e!2006266))

(declare-fun res!1309939 () Bool)

(assert (=> d!883162 (=> res!1309939 e!2006266)))

(assert (=> d!883162 (= res!1309939 (isEmpty!20311 lt!1089078))))

(assert (=> d!883162 (= lt!1089078 e!2006265)))

(declare-fun c!540900 () Bool)

(assert (=> d!883162 (= c!540900 (and ((_ is Cons!36206) rules!2135) (= (tag!5760 (h!41626 rules!2135)) (tag!5760 (rule!7682 (h!41627 (t!239822 tokens!494)))))))))

(assert (=> d!883162 (rulesInvariant!4216 thiss!18206 rules!2135)))

(assert (=> d!883162 (= (getRuleFromTag!935 thiss!18206 rules!2135 (tag!5760 (rule!7682 (h!41627 (t!239822 tokens!494))))) lt!1089078)))

(declare-fun b!3217689 () Bool)

(assert (=> b!3217689 (= e!2006265 (Some!7162 (h!41626 rules!2135)))))

(assert (= (and d!883162 c!540900) b!3217689))

(assert (= (and d!883162 (not c!540900)) b!3217692))

(assert (= (and b!3217692 c!540901) b!3217688))

(assert (= (and b!3217692 (not c!540901)) b!3217690))

(assert (= (and d!883162 (not res!1309939)) b!3217693))

(assert (= (and b!3217693 res!1309940) b!3217691))

(assert (=> b!3217688 m!3491791))

(assert (=> b!3217688 m!3491793))

(declare-fun m!3491969 () Bool)

(assert (=> b!3217688 m!3491969))

(declare-fun m!3491971 () Bool)

(assert (=> b!3217691 m!3491971))

(assert (=> b!3217693 m!3491971))

(assert (=> b!3217693 m!3491971))

(declare-fun m!3491973 () Bool)

(assert (=> b!3217693 m!3491973))

(declare-fun m!3491975 () Bool)

(assert (=> d!883162 m!3491975))

(assert (=> d!883162 m!3490489))

(assert (=> b!3216762 d!883162))

(declare-fun d!883164 () Bool)

(declare-fun fromListB!1549 (List!36329) BalanceConc!21284)

(assert (=> d!883164 (= (seqFromList!3531 lt!1088680) (fromListB!1549 lt!1088680))))

(declare-fun bs!542290 () Bool)

(assert (= bs!542290 d!883164))

(declare-fun m!3491977 () Bool)

(assert (=> bs!542290 m!3491977))

(assert (=> b!3216762 d!883164))

(declare-fun d!883166 () Bool)

(assert (=> d!883166 (= (maxPrefixOneRule!1598 thiss!18206 (rule!7682 (h!41627 tokens!494)) lt!1088698) (Some!7163 (tuple2!35625 (Token!9827 (apply!8221 (transformation!5230 (rule!7682 (h!41627 tokens!494))) (seqFromList!3531 lt!1088698)) (rule!7682 (h!41627 tokens!494)) (size!27294 lt!1088698) lt!1088698) Nil!36205)))))

(declare-fun lt!1089079 () Unit!50722)

(assert (=> d!883166 (= lt!1089079 (choose!18790 thiss!18206 rules!2135 lt!1088698 lt!1088698 Nil!36205 (rule!7682 (h!41627 tokens!494))))))

(assert (=> d!883166 (not (isEmpty!20303 rules!2135))))

(assert (=> d!883166 (= (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!711 thiss!18206 rules!2135 lt!1088698 lt!1088698 Nil!36205 (rule!7682 (h!41627 tokens!494))) lt!1089079)))

(declare-fun bs!542291 () Bool)

(assert (= bs!542291 d!883166))

(assert (=> bs!542291 m!3490517))

(declare-fun m!3491979 () Bool)

(assert (=> bs!542291 m!3491979))

(assert (=> bs!542291 m!3490403))

(assert (=> bs!542291 m!3490445))

(declare-fun m!3491981 () Bool)

(assert (=> bs!542291 m!3491981))

(assert (=> bs!542291 m!3490373))

(assert (=> bs!542291 m!3490445))

(assert (=> b!3216762 d!883166))

(declare-fun d!883168 () Bool)

(declare-fun lt!1089080 () Token!9826)

(assert (=> d!883168 (= lt!1089080 (apply!8223 (list!12890 (_1!20945 lt!1088716)) 0))))

(assert (=> d!883168 (= lt!1089080 (apply!8225 (c!540718 (_1!20945 lt!1088716)) 0))))

(declare-fun e!2006268 () Bool)

(assert (=> d!883168 e!2006268))

(declare-fun res!1309941 () Bool)

(assert (=> d!883168 (=> (not res!1309941) (not e!2006268))))

(assert (=> d!883168 (= res!1309941 (<= 0 0))))

(assert (=> d!883168 (= (apply!8222 (_1!20945 lt!1088716) 0) lt!1089080)))

(declare-fun b!3217694 () Bool)

(assert (=> b!3217694 (= e!2006268 (< 0 (size!27295 (_1!20945 lt!1088716))))))

(assert (= (and d!883168 res!1309941) b!3217694))

(assert (=> d!883168 m!3491809))

(assert (=> d!883168 m!3491809))

(declare-fun m!3491983 () Bool)

(assert (=> d!883168 m!3491983))

(declare-fun m!3491985 () Bool)

(assert (=> d!883168 m!3491985))

(assert (=> b!3217694 m!3490343))

(assert (=> b!3216783 d!883168))

(declare-fun d!883170 () Bool)

(declare-fun res!1309946 () Bool)

(declare-fun e!2006273 () Bool)

(assert (=> d!883170 (=> res!1309946 e!2006273)))

(assert (=> d!883170 (= res!1309946 (not ((_ is Cons!36206) rules!2135)))))

(assert (=> d!883170 (= (sepAndNonSepRulesDisjointChars!1424 rules!2135 rules!2135) e!2006273)))

(declare-fun b!3217699 () Bool)

(declare-fun e!2006274 () Bool)

(assert (=> b!3217699 (= e!2006273 e!2006274)))

(declare-fun res!1309947 () Bool)

(assert (=> b!3217699 (=> (not res!1309947) (not e!2006274))))

(declare-fun ruleDisjointCharsFromAllFromOtherType!595 (Rule!10260 List!36330) Bool)

(assert (=> b!3217699 (= res!1309947 (ruleDisjointCharsFromAllFromOtherType!595 (h!41626 rules!2135) rules!2135))))

(declare-fun b!3217700 () Bool)

(assert (=> b!3217700 (= e!2006274 (sepAndNonSepRulesDisjointChars!1424 rules!2135 (t!239821 rules!2135)))))

(assert (= (and d!883170 (not res!1309946)) b!3217699))

(assert (= (and b!3217699 res!1309947) b!3217700))

(declare-fun m!3491987 () Bool)

(assert (=> b!3217699 m!3491987))

(declare-fun m!3491989 () Bool)

(assert (=> b!3217700 m!3491989))

(assert (=> b!3216763 d!883170))

(declare-fun b!3217703 () Bool)

(declare-fun res!1309949 () Bool)

(declare-fun e!2006275 () Bool)

(assert (=> b!3217703 (=> (not res!1309949) (not e!2006275))))

(declare-fun lt!1089081 () List!36329)

(assert (=> b!3217703 (= res!1309949 (= (size!27294 lt!1089081) (+ (size!27294 lt!1088698) (size!27294 lt!1088681))))))

(declare-fun b!3217704 () Bool)

(assert (=> b!3217704 (= e!2006275 (or (not (= lt!1088681 Nil!36205)) (= lt!1089081 lt!1088698)))))

(declare-fun d!883172 () Bool)

(assert (=> d!883172 e!2006275))

(declare-fun res!1309948 () Bool)

(assert (=> d!883172 (=> (not res!1309948) (not e!2006275))))

(assert (=> d!883172 (= res!1309948 (= (content!4899 lt!1089081) ((_ map or) (content!4899 lt!1088698) (content!4899 lt!1088681))))))

(declare-fun e!2006276 () List!36329)

(assert (=> d!883172 (= lt!1089081 e!2006276)))

(declare-fun c!540902 () Bool)

(assert (=> d!883172 (= c!540902 ((_ is Nil!36205) lt!1088698))))

(assert (=> d!883172 (= (++!8698 lt!1088698 lt!1088681) lt!1089081)))

(declare-fun b!3217701 () Bool)

(assert (=> b!3217701 (= e!2006276 lt!1088681)))

(declare-fun b!3217702 () Bool)

(assert (=> b!3217702 (= e!2006276 (Cons!36205 (h!41625 lt!1088698) (++!8698 (t!239820 lt!1088698) lt!1088681)))))

(assert (= (and d!883172 c!540902) b!3217701))

(assert (= (and d!883172 (not c!540902)) b!3217702))

(assert (= (and d!883172 res!1309948) b!3217703))

(assert (= (and b!3217703 res!1309949) b!3217704))

(declare-fun m!3491991 () Bool)

(assert (=> b!3217703 m!3491991))

(assert (=> b!3217703 m!3490403))

(declare-fun m!3491993 () Bool)

(assert (=> b!3217703 m!3491993))

(declare-fun m!3491995 () Bool)

(assert (=> d!883172 m!3491995))

(assert (=> d!883172 m!3490581))

(declare-fun m!3491997 () Bool)

(assert (=> d!883172 m!3491997))

(declare-fun m!3491999 () Bool)

(assert (=> b!3217702 m!3491999))

(assert (=> b!3216785 d!883172))

(declare-fun d!883174 () Bool)

(assert (=> d!883174 (= (++!8698 (++!8698 lt!1088698 lt!1088705) lt!1088710) (++!8698 lt!1088698 (++!8698 lt!1088705 lt!1088710)))))

(declare-fun lt!1089084 () Unit!50722)

(declare-fun choose!18794 (List!36329 List!36329 List!36329) Unit!50722)

(assert (=> d!883174 (= lt!1089084 (choose!18794 lt!1088698 lt!1088705 lt!1088710))))

(assert (=> d!883174 (= (lemmaConcatAssociativity!1756 lt!1088698 lt!1088705 lt!1088710) lt!1089084)))

(declare-fun bs!542292 () Bool)

(assert (= bs!542292 d!883174))

(assert (=> bs!542292 m!3490453))

(declare-fun m!3492001 () Bool)

(assert (=> bs!542292 m!3492001))

(assert (=> bs!542292 m!3490487))

(assert (=> bs!542292 m!3490453))

(assert (=> bs!542292 m!3490455))

(assert (=> bs!542292 m!3490487))

(declare-fun m!3492003 () Bool)

(assert (=> bs!542292 m!3492003))

(assert (=> b!3216785 d!883174))

(declare-fun d!883176 () Bool)

(assert (=> d!883176 (= (isEmpty!20303 rules!2135) ((_ is Nil!36206) rules!2135))))

(assert (=> b!3216759 d!883176))

(declare-fun d!883178 () Bool)

(declare-fun lt!1089085 () Bool)

(assert (=> d!883178 (= lt!1089085 (isEmpty!20308 (list!12887 (_2!20945 lt!1088707))))))

(assert (=> d!883178 (= lt!1089085 (isEmpty!20310 (c!540717 (_2!20945 lt!1088707))))))

(assert (=> d!883178 (= (isEmpty!20304 (_2!20945 lt!1088707)) lt!1089085)))

(declare-fun bs!542293 () Bool)

(assert (= bs!542293 d!883178))

(declare-fun m!3492005 () Bool)

(assert (=> bs!542293 m!3492005))

(assert (=> bs!542293 m!3492005))

(declare-fun m!3492007 () Bool)

(assert (=> bs!542293 m!3492007))

(declare-fun m!3492009 () Bool)

(assert (=> bs!542293 m!3492009))

(assert (=> b!3216760 d!883178))

(declare-fun lt!1089088 () Bool)

(declare-fun d!883180 () Bool)

(declare-fun isEmpty!20316 (List!36331) Bool)

(assert (=> d!883180 (= lt!1089088 (isEmpty!20316 (list!12890 (_1!20945 (lex!2149 thiss!18206 rules!2135 lt!1088720)))))))

(declare-fun isEmpty!20317 (Conc!10836) Bool)

(assert (=> d!883180 (= lt!1089088 (isEmpty!20317 (c!540718 (_1!20945 (lex!2149 thiss!18206 rules!2135 lt!1088720)))))))

(assert (=> d!883180 (= (isEmpty!20305 (_1!20945 (lex!2149 thiss!18206 rules!2135 lt!1088720))) lt!1089088)))

(declare-fun bs!542294 () Bool)

(assert (= bs!542294 d!883180))

(declare-fun m!3492011 () Bool)

(assert (=> bs!542294 m!3492011))

(assert (=> bs!542294 m!3492011))

(declare-fun m!3492013 () Bool)

(assert (=> bs!542294 m!3492013))

(declare-fun m!3492015 () Bool)

(assert (=> bs!542294 m!3492015))

(assert (=> b!3216781 d!883180))

(declare-fun lt!1089089 () tuple2!35622)

(declare-fun b!3217705 () Bool)

(declare-fun e!2006278 () Bool)

(assert (=> b!3217705 (= e!2006278 (= (list!12887 (_2!20945 lt!1089089)) (_2!20950 (lexList!1317 thiss!18206 rules!2135 (list!12887 lt!1088720)))))))

(declare-fun b!3217706 () Bool)

(declare-fun res!1309950 () Bool)

(assert (=> b!3217706 (=> (not res!1309950) (not e!2006278))))

(assert (=> b!3217706 (= res!1309950 (= (list!12890 (_1!20945 lt!1089089)) (_1!20950 (lexList!1317 thiss!18206 rules!2135 (list!12887 lt!1088720)))))))

(declare-fun b!3217707 () Bool)

(declare-fun e!2006279 () Bool)

(assert (=> b!3217707 (= e!2006279 (= (_2!20945 lt!1089089) lt!1088720))))

(declare-fun b!3217709 () Bool)

(declare-fun e!2006277 () Bool)

(assert (=> b!3217709 (= e!2006279 e!2006277)))

(declare-fun res!1309951 () Bool)

(assert (=> b!3217709 (= res!1309951 (< (size!27301 (_2!20945 lt!1089089)) (size!27301 lt!1088720)))))

(assert (=> b!3217709 (=> (not res!1309951) (not e!2006277))))

(declare-fun b!3217708 () Bool)

(assert (=> b!3217708 (= e!2006277 (not (isEmpty!20305 (_1!20945 lt!1089089))))))

(declare-fun d!883182 () Bool)

(assert (=> d!883182 e!2006278))

(declare-fun res!1309952 () Bool)

(assert (=> d!883182 (=> (not res!1309952) (not e!2006278))))

(assert (=> d!883182 (= res!1309952 e!2006279)))

(declare-fun c!540903 () Bool)

(assert (=> d!883182 (= c!540903 (> (size!27295 (_1!20945 lt!1089089)) 0))))

(assert (=> d!883182 (= lt!1089089 (lexTailRecV2!937 thiss!18206 rules!2135 lt!1088720 (BalanceConc!21285 Empty!10835) lt!1088720 (BalanceConc!21287 Empty!10836)))))

(assert (=> d!883182 (= (lex!2149 thiss!18206 rules!2135 lt!1088720) lt!1089089)))

(assert (= (and d!883182 c!540903) b!3217709))

(assert (= (and d!883182 (not c!540903)) b!3217707))

(assert (= (and b!3217709 res!1309951) b!3217708))

(assert (= (and d!883182 res!1309952) b!3217706))

(assert (= (and b!3217706 res!1309950) b!3217705))

(declare-fun m!3492017 () Bool)

(assert (=> d!883182 m!3492017))

(declare-fun m!3492019 () Bool)

(assert (=> d!883182 m!3492019))

(declare-fun m!3492021 () Bool)

(assert (=> b!3217709 m!3492021))

(declare-fun m!3492023 () Bool)

(assert (=> b!3217709 m!3492023))

(declare-fun m!3492025 () Bool)

(assert (=> b!3217708 m!3492025))

(declare-fun m!3492027 () Bool)

(assert (=> b!3217705 m!3492027))

(declare-fun m!3492029 () Bool)

(assert (=> b!3217705 m!3492029))

(assert (=> b!3217705 m!3492029))

(declare-fun m!3492031 () Bool)

(assert (=> b!3217705 m!3492031))

(declare-fun m!3492033 () Bool)

(assert (=> b!3217706 m!3492033))

(assert (=> b!3217706 m!3492029))

(assert (=> b!3217706 m!3492029))

(assert (=> b!3217706 m!3492031))

(assert (=> b!3216781 d!883182))

(declare-fun d!883184 () Bool)

(assert (=> d!883184 (= (seqFromList!3531 lt!1088698) (fromListB!1549 lt!1088698))))

(declare-fun bs!542295 () Bool)

(assert (= bs!542295 d!883184))

(declare-fun m!3492035 () Bool)

(assert (=> bs!542295 m!3492035))

(assert (=> b!3216781 d!883184))

(declare-fun d!883186 () Bool)

(assert (=> d!883186 (not (matchR!4623 (regex!5230 (rule!7682 separatorToken!241)) lt!1088705))))

(declare-fun lt!1089090 () Unit!50722)

(assert (=> d!883186 (= lt!1089090 (choose!18784 (regex!5230 (rule!7682 separatorToken!241)) lt!1088705 lt!1088692))))

(assert (=> d!883186 (validRegex!4557 (regex!5230 (rule!7682 separatorToken!241)))))

(assert (=> d!883186 (= (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!394 (regex!5230 (rule!7682 separatorToken!241)) lt!1088705 lt!1088692) lt!1089090)))

(declare-fun bs!542296 () Bool)

(assert (= bs!542296 d!883186))

(assert (=> bs!542296 m!3490493))

(declare-fun m!3492037 () Bool)

(assert (=> bs!542296 m!3492037))

(declare-fun m!3492039 () Bool)

(assert (=> bs!542296 m!3492039))

(assert (=> b!3216782 d!883186))

(declare-fun b!3217710 () Bool)

(declare-fun e!2006283 () Bool)

(declare-fun lt!1089091 () Bool)

(assert (=> b!3217710 (= e!2006283 (not lt!1089091))))

(declare-fun b!3217711 () Bool)

(declare-fun e!2006281 () Bool)

(declare-fun e!2006285 () Bool)

(assert (=> b!3217711 (= e!2006281 e!2006285)))

(declare-fun res!1309955 () Bool)

(assert (=> b!3217711 (=> res!1309955 e!2006285)))

(declare-fun call!232878 () Bool)

(assert (=> b!3217711 (= res!1309955 call!232878)))

(declare-fun b!3217712 () Bool)

(declare-fun res!1309960 () Bool)

(declare-fun e!2006284 () Bool)

(assert (=> b!3217712 (=> (not res!1309960) (not e!2006284))))

(assert (=> b!3217712 (= res!1309960 (isEmpty!20308 (tail!5218 lt!1088705)))))

(declare-fun b!3217713 () Bool)

(assert (=> b!3217713 (= e!2006284 (= (head!7053 lt!1088705) (c!540716 (regex!5230 (rule!7682 separatorToken!241)))))))

(declare-fun b!3217714 () Bool)

(declare-fun res!1309956 () Bool)

(declare-fun e!2006282 () Bool)

(assert (=> b!3217714 (=> res!1309956 e!2006282)))

(assert (=> b!3217714 (= res!1309956 e!2006284)))

(declare-fun res!1309953 () Bool)

(assert (=> b!3217714 (=> (not res!1309953) (not e!2006284))))

(assert (=> b!3217714 (= res!1309953 lt!1089091)))

(declare-fun b!3217715 () Bool)

(assert (=> b!3217715 (= e!2006282 e!2006281)))

(declare-fun res!1309957 () Bool)

(assert (=> b!3217715 (=> (not res!1309957) (not e!2006281))))

(assert (=> b!3217715 (= res!1309957 (not lt!1089091))))

(declare-fun b!3217717 () Bool)

(declare-fun e!2006286 () Bool)

(assert (=> b!3217717 (= e!2006286 (= lt!1089091 call!232878))))

(declare-fun bm!232873 () Bool)

(assert (=> bm!232873 (= call!232878 (isEmpty!20308 lt!1088705))))

(declare-fun b!3217718 () Bool)

(assert (=> b!3217718 (= e!2006285 (not (= (head!7053 lt!1088705) (c!540716 (regex!5230 (rule!7682 separatorToken!241))))))))

(declare-fun b!3217719 () Bool)

(declare-fun res!1309954 () Bool)

(assert (=> b!3217719 (=> res!1309954 e!2006285)))

(assert (=> b!3217719 (= res!1309954 (not (isEmpty!20308 (tail!5218 lt!1088705))))))

(declare-fun b!3217720 () Bool)

(declare-fun e!2006280 () Bool)

(assert (=> b!3217720 (= e!2006280 (matchR!4623 (derivativeStep!2954 (regex!5230 (rule!7682 separatorToken!241)) (head!7053 lt!1088705)) (tail!5218 lt!1088705)))))

(declare-fun b!3217716 () Bool)

(assert (=> b!3217716 (= e!2006280 (nullable!3401 (regex!5230 (rule!7682 separatorToken!241))))))

(declare-fun d!883188 () Bool)

(assert (=> d!883188 e!2006286))

(declare-fun c!540906 () Bool)

(assert (=> d!883188 (= c!540906 ((_ is EmptyExpr!9989) (regex!5230 (rule!7682 separatorToken!241))))))

(assert (=> d!883188 (= lt!1089091 e!2006280)))

(declare-fun c!540905 () Bool)

(assert (=> d!883188 (= c!540905 (isEmpty!20308 lt!1088705))))

(assert (=> d!883188 (validRegex!4557 (regex!5230 (rule!7682 separatorToken!241)))))

(assert (=> d!883188 (= (matchR!4623 (regex!5230 (rule!7682 separatorToken!241)) lt!1088705) lt!1089091)))

(declare-fun b!3217721 () Bool)

(declare-fun res!1309959 () Bool)

(assert (=> b!3217721 (=> (not res!1309959) (not e!2006284))))

(assert (=> b!3217721 (= res!1309959 (not call!232878))))

(declare-fun b!3217722 () Bool)

(declare-fun res!1309958 () Bool)

(assert (=> b!3217722 (=> res!1309958 e!2006282)))

(assert (=> b!3217722 (= res!1309958 (not ((_ is ElementMatch!9989) (regex!5230 (rule!7682 separatorToken!241)))))))

(assert (=> b!3217722 (= e!2006283 e!2006282)))

(declare-fun b!3217723 () Bool)

(assert (=> b!3217723 (= e!2006286 e!2006283)))

(declare-fun c!540904 () Bool)

(assert (=> b!3217723 (= c!540904 ((_ is EmptyLang!9989) (regex!5230 (rule!7682 separatorToken!241))))))

(assert (= (and d!883188 c!540905) b!3217716))

(assert (= (and d!883188 (not c!540905)) b!3217720))

(assert (= (and d!883188 c!540906) b!3217717))

(assert (= (and d!883188 (not c!540906)) b!3217723))

(assert (= (and b!3217723 c!540904) b!3217710))

(assert (= (and b!3217723 (not c!540904)) b!3217722))

(assert (= (and b!3217722 (not res!1309958)) b!3217714))

(assert (= (and b!3217714 res!1309953) b!3217721))

(assert (= (and b!3217721 res!1309959) b!3217712))

(assert (= (and b!3217712 res!1309960) b!3217713))

(assert (= (and b!3217714 (not res!1309956)) b!3217715))

(assert (= (and b!3217715 res!1309957) b!3217711))

(assert (= (and b!3217711 (not res!1309955)) b!3217719))

(assert (= (and b!3217719 (not res!1309954)) b!3217718))

(assert (= (or b!3217717 b!3217711 b!3217721) bm!232873))

(assert (=> d!883188 m!3490741))

(assert (=> d!883188 m!3492039))

(assert (=> b!3217719 m!3490745))

(assert (=> b!3217719 m!3490745))

(assert (=> b!3217719 m!3490747))

(assert (=> b!3217713 m!3490341))

(declare-fun m!3492041 () Bool)

(assert (=> b!3217716 m!3492041))

(assert (=> b!3217712 m!3490745))

(assert (=> b!3217712 m!3490745))

(assert (=> b!3217712 m!3490747))

(assert (=> b!3217720 m!3490341))

(assert (=> b!3217720 m!3490341))

(declare-fun m!3492043 () Bool)

(assert (=> b!3217720 m!3492043))

(assert (=> b!3217720 m!3490745))

(assert (=> b!3217720 m!3492043))

(assert (=> b!3217720 m!3490745))

(declare-fun m!3492045 () Bool)

(assert (=> b!3217720 m!3492045))

(assert (=> bm!232873 m!3490741))

(assert (=> b!3217718 m!3490341))

(assert (=> b!3216782 d!883188))

(declare-fun b!3217726 () Bool)

(declare-fun res!1309962 () Bool)

(declare-fun e!2006287 () Bool)

(assert (=> b!3217726 (=> (not res!1309962) (not e!2006287))))

(declare-fun lt!1089092 () List!36329)

(assert (=> b!3217726 (= res!1309962 (= (size!27294 lt!1089092) (+ (size!27294 lt!1088680) (size!27294 lt!1088705))))))

(declare-fun b!3217727 () Bool)

(assert (=> b!3217727 (= e!2006287 (or (not (= lt!1088705 Nil!36205)) (= lt!1089092 lt!1088680)))))

(declare-fun d!883190 () Bool)

(assert (=> d!883190 e!2006287))

(declare-fun res!1309961 () Bool)

(assert (=> d!883190 (=> (not res!1309961) (not e!2006287))))

(assert (=> d!883190 (= res!1309961 (= (content!4899 lt!1089092) ((_ map or) (content!4899 lt!1088680) (content!4899 lt!1088705))))))

(declare-fun e!2006288 () List!36329)

(assert (=> d!883190 (= lt!1089092 e!2006288)))

(declare-fun c!540907 () Bool)

(assert (=> d!883190 (= c!540907 ((_ is Nil!36205) lt!1088680))))

(assert (=> d!883190 (= (++!8698 lt!1088680 lt!1088705) lt!1089092)))

(declare-fun b!3217724 () Bool)

(assert (=> b!3217724 (= e!2006288 lt!1088705)))

(declare-fun b!3217725 () Bool)

(assert (=> b!3217725 (= e!2006288 (Cons!36205 (h!41625 lt!1088680) (++!8698 (t!239820 lt!1088680) lt!1088705)))))

(assert (= (and d!883190 c!540907) b!3217724))

(assert (= (and d!883190 (not c!540907)) b!3217725))

(assert (= (and d!883190 res!1309961) b!3217726))

(assert (= (and b!3217726 res!1309962) b!3217727))

(declare-fun m!3492047 () Bool)

(assert (=> b!3217726 m!3492047))

(assert (=> b!3217726 m!3490399))

(assert (=> b!3217726 m!3490577))

(declare-fun m!3492049 () Bool)

(assert (=> d!883190 m!3492049))

(declare-fun m!3492051 () Bool)

(assert (=> d!883190 m!3492051))

(assert (=> d!883190 m!3490583))

(declare-fun m!3492053 () Bool)

(assert (=> b!3217725 m!3492053))

(assert (=> b!3216761 d!883190))

(declare-fun d!883192 () Bool)

(declare-fun lt!1089093 () BalanceConc!21284)

(assert (=> d!883192 (= (list!12887 lt!1089093) (originalCharacters!5944 separatorToken!241))))

(assert (=> d!883192 (= lt!1089093 (dynLambda!14648 (toChars!7181 (transformation!5230 (rule!7682 separatorToken!241))) (value!169515 separatorToken!241)))))

(assert (=> d!883192 (= (charsOf!3246 separatorToken!241) lt!1089093)))

(declare-fun b_lambda!88433 () Bool)

(assert (=> (not b_lambda!88433) (not d!883192)))

(assert (=> d!883192 t!239824))

(declare-fun b_and!214867 () Bool)

(assert (= b_and!214805 (and (=> t!239824 result!201144) b_and!214867)))

(assert (=> d!883192 t!239826))

(declare-fun b_and!214869 () Bool)

(assert (= b_and!214807 (and (=> t!239826 result!201148) b_and!214869)))

(assert (=> d!883192 t!239828))

(declare-fun b_and!214871 () Bool)

(assert (= b_and!214809 (and (=> t!239828 result!201150) b_and!214871)))

(declare-fun m!3492055 () Bool)

(assert (=> d!883192 m!3492055))

(assert (=> d!883192 m!3490549))

(assert (=> b!3216761 d!883192))

(declare-fun d!883194 () Bool)

(assert (=> d!883194 (= (list!12887 (charsOf!3246 (h!41627 (t!239822 tokens!494)))) (list!12889 (c!540717 (charsOf!3246 (h!41627 (t!239822 tokens!494))))))))

(declare-fun bs!542297 () Bool)

(assert (= bs!542297 d!883194))

(declare-fun m!3492057 () Bool)

(assert (=> bs!542297 m!3492057))

(assert (=> b!3216761 d!883194))

(declare-fun b!3217730 () Bool)

(declare-fun res!1309964 () Bool)

(declare-fun e!2006289 () Bool)

(assert (=> b!3217730 (=> (not res!1309964) (not e!2006289))))

(declare-fun lt!1089094 () List!36329)

(assert (=> b!3217730 (= res!1309964 (= (size!27294 lt!1089094) (+ (size!27294 (++!8698 lt!1088680 lt!1088705)) (size!27294 (printWithSeparatorTokenList!164 thiss!18206 (t!239822 (t!239822 tokens!494)) separatorToken!241)))))))

(declare-fun b!3217731 () Bool)

(assert (=> b!3217731 (= e!2006289 (or (not (= (printWithSeparatorTokenList!164 thiss!18206 (t!239822 (t!239822 tokens!494)) separatorToken!241) Nil!36205)) (= lt!1089094 (++!8698 lt!1088680 lt!1088705))))))

(declare-fun d!883196 () Bool)

(assert (=> d!883196 e!2006289))

(declare-fun res!1309963 () Bool)

(assert (=> d!883196 (=> (not res!1309963) (not e!2006289))))

(assert (=> d!883196 (= res!1309963 (= (content!4899 lt!1089094) ((_ map or) (content!4899 (++!8698 lt!1088680 lt!1088705)) (content!4899 (printWithSeparatorTokenList!164 thiss!18206 (t!239822 (t!239822 tokens!494)) separatorToken!241)))))))

(declare-fun e!2006290 () List!36329)

(assert (=> d!883196 (= lt!1089094 e!2006290)))

(declare-fun c!540908 () Bool)

(assert (=> d!883196 (= c!540908 ((_ is Nil!36205) (++!8698 lt!1088680 lt!1088705)))))

(assert (=> d!883196 (= (++!8698 (++!8698 lt!1088680 lt!1088705) (printWithSeparatorTokenList!164 thiss!18206 (t!239822 (t!239822 tokens!494)) separatorToken!241)) lt!1089094)))

(declare-fun b!3217728 () Bool)

(assert (=> b!3217728 (= e!2006290 (printWithSeparatorTokenList!164 thiss!18206 (t!239822 (t!239822 tokens!494)) separatorToken!241))))

(declare-fun b!3217729 () Bool)

(assert (=> b!3217729 (= e!2006290 (Cons!36205 (h!41625 (++!8698 lt!1088680 lt!1088705)) (++!8698 (t!239820 (++!8698 lt!1088680 lt!1088705)) (printWithSeparatorTokenList!164 thiss!18206 (t!239822 (t!239822 tokens!494)) separatorToken!241))))))

(assert (= (and d!883196 c!540908) b!3217728))

(assert (= (and d!883196 (not c!540908)) b!3217729))

(assert (= (and d!883196 res!1309963) b!3217730))

(assert (= (and b!3217730 res!1309964) b!3217731))

(declare-fun m!3492059 () Bool)

(assert (=> b!3217730 m!3492059))

(assert (=> b!3217730 m!3490483))

(declare-fun m!3492061 () Bool)

(assert (=> b!3217730 m!3492061))

(assert (=> b!3217730 m!3490477))

(declare-fun m!3492063 () Bool)

(assert (=> b!3217730 m!3492063))

(declare-fun m!3492065 () Bool)

(assert (=> d!883196 m!3492065))

(assert (=> d!883196 m!3490483))

(declare-fun m!3492067 () Bool)

(assert (=> d!883196 m!3492067))

(assert (=> d!883196 m!3490477))

(declare-fun m!3492069 () Bool)

(assert (=> d!883196 m!3492069))

(assert (=> b!3217729 m!3490477))

(declare-fun m!3492071 () Bool)

(assert (=> b!3217729 m!3492071))

(assert (=> b!3216761 d!883196))

(declare-fun b!3217734 () Bool)

(declare-fun res!1309966 () Bool)

(declare-fun e!2006291 () Bool)

(assert (=> b!3217734 (=> (not res!1309966) (not e!2006291))))

(declare-fun lt!1089095 () List!36329)

(assert (=> b!3217734 (= res!1309966 (= (size!27294 lt!1089095) (+ (size!27294 lt!1088705) (size!27294 lt!1088710))))))

(declare-fun b!3217735 () Bool)

(assert (=> b!3217735 (= e!2006291 (or (not (= lt!1088710 Nil!36205)) (= lt!1089095 lt!1088705)))))

(declare-fun d!883198 () Bool)

(assert (=> d!883198 e!2006291))

(declare-fun res!1309965 () Bool)

(assert (=> d!883198 (=> (not res!1309965) (not e!2006291))))

(assert (=> d!883198 (= res!1309965 (= (content!4899 lt!1089095) ((_ map or) (content!4899 lt!1088705) (content!4899 lt!1088710))))))

(declare-fun e!2006292 () List!36329)

(assert (=> d!883198 (= lt!1089095 e!2006292)))

(declare-fun c!540909 () Bool)

(assert (=> d!883198 (= c!540909 ((_ is Nil!36205) lt!1088705))))

(assert (=> d!883198 (= (++!8698 lt!1088705 lt!1088710) lt!1089095)))

(declare-fun b!3217732 () Bool)

(assert (=> b!3217732 (= e!2006292 lt!1088710)))

(declare-fun b!3217733 () Bool)

(assert (=> b!3217733 (= e!2006292 (Cons!36205 (h!41625 lt!1088705) (++!8698 (t!239820 lt!1088705) lt!1088710)))))

(assert (= (and d!883198 c!540909) b!3217732))

(assert (= (and d!883198 (not c!540909)) b!3217733))

(assert (= (and d!883198 res!1309965) b!3217734))

(assert (= (and b!3217734 res!1309966) b!3217735))

(declare-fun m!3492073 () Bool)

(assert (=> b!3217734 m!3492073))

(assert (=> b!3217734 m!3490577))

(assert (=> b!3217734 m!3490565))

(declare-fun m!3492075 () Bool)

(assert (=> d!883198 m!3492075))

(assert (=> d!883198 m!3490583))

(assert (=> d!883198 m!3490571))

(declare-fun m!3492077 () Bool)

(assert (=> b!3217733 m!3492077))

(assert (=> b!3216761 d!883198))

(declare-fun d!883200 () Bool)

(declare-fun c!540912 () Bool)

(assert (=> d!883200 (= c!540912 ((_ is Cons!36207) tokens!494))))

(declare-fun e!2006295 () List!36329)

(assert (=> d!883200 (= (printWithSeparatorTokenList!164 thiss!18206 tokens!494 separatorToken!241) e!2006295)))

(declare-fun b!3217740 () Bool)

(assert (=> b!3217740 (= e!2006295 (++!8698 (++!8698 (list!12887 (charsOf!3246 (h!41627 tokens!494))) (list!12887 (charsOf!3246 separatorToken!241))) (printWithSeparatorTokenList!164 thiss!18206 (t!239822 tokens!494) separatorToken!241)))))

(declare-fun b!3217741 () Bool)

(assert (=> b!3217741 (= e!2006295 Nil!36205)))

(assert (= (and d!883200 c!540912) b!3217740))

(assert (= (and d!883200 (not c!540912)) b!3217741))

(assert (=> b!3217740 m!3490479))

(assert (=> b!3217740 m!3490481))

(declare-fun m!3492079 () Bool)

(assert (=> b!3217740 m!3492079))

(assert (=> b!3217740 m!3490473))

(declare-fun m!3492081 () Bool)

(assert (=> b!3217740 m!3492081))

(assert (=> b!3217740 m!3490473))

(assert (=> b!3217740 m!3490465))

(assert (=> b!3217740 m!3490467))

(assert (=> b!3217740 m!3490465))

(assert (=> b!3217740 m!3490479))

(assert (=> b!3217740 m!3490467))

(assert (=> b!3217740 m!3490481))

(assert (=> b!3217740 m!3492079))

(assert (=> b!3216761 d!883200))

(declare-fun d!883202 () Bool)

(declare-fun c!540913 () Bool)

(assert (=> d!883202 (= c!540913 ((_ is Cons!36207) (t!239822 (t!239822 tokens!494))))))

(declare-fun e!2006296 () List!36329)

(assert (=> d!883202 (= (printWithSeparatorTokenList!164 thiss!18206 (t!239822 (t!239822 tokens!494)) separatorToken!241) e!2006296)))

(declare-fun b!3217742 () Bool)

(assert (=> b!3217742 (= e!2006296 (++!8698 (++!8698 (list!12887 (charsOf!3246 (h!41627 (t!239822 (t!239822 tokens!494))))) (list!12887 (charsOf!3246 separatorToken!241))) (printWithSeparatorTokenList!164 thiss!18206 (t!239822 (t!239822 (t!239822 tokens!494))) separatorToken!241)))))

(declare-fun b!3217743 () Bool)

(assert (=> b!3217743 (= e!2006296 Nil!36205)))

(assert (= (and d!883202 c!540913) b!3217742))

(assert (= (and d!883202 (not c!540913)) b!3217743))

(assert (=> b!3217742 m!3490479))

(assert (=> b!3217742 m!3490481))

(declare-fun m!3492083 () Bool)

(assert (=> b!3217742 m!3492083))

(declare-fun m!3492085 () Bool)

(assert (=> b!3217742 m!3492085))

(declare-fun m!3492087 () Bool)

(assert (=> b!3217742 m!3492087))

(assert (=> b!3217742 m!3492085))

(declare-fun m!3492089 () Bool)

(assert (=> b!3217742 m!3492089))

(declare-fun m!3492091 () Bool)

(assert (=> b!3217742 m!3492091))

(assert (=> b!3217742 m!3492089))

(assert (=> b!3217742 m!3490479))

(assert (=> b!3217742 m!3492091))

(assert (=> b!3217742 m!3490481))

(assert (=> b!3217742 m!3492083))

(assert (=> b!3216761 d!883202))

(declare-fun d!883204 () Bool)

(declare-fun c!540914 () Bool)

(assert (=> d!883204 (= c!540914 ((_ is Cons!36207) (t!239822 tokens!494)))))

(declare-fun e!2006297 () List!36329)

(assert (=> d!883204 (= (printWithSeparatorTokenList!164 thiss!18206 (t!239822 tokens!494) separatorToken!241) e!2006297)))

(declare-fun b!3217744 () Bool)

(assert (=> b!3217744 (= e!2006297 (++!8698 (++!8698 (list!12887 (charsOf!3246 (h!41627 (t!239822 tokens!494)))) (list!12887 (charsOf!3246 separatorToken!241))) (printWithSeparatorTokenList!164 thiss!18206 (t!239822 (t!239822 tokens!494)) separatorToken!241)))))

(declare-fun b!3217745 () Bool)

(assert (=> b!3217745 (= e!2006297 Nil!36205)))

(assert (= (and d!883204 c!540914) b!3217744))

(assert (= (and d!883204 (not c!540914)) b!3217745))

(assert (=> b!3217744 m!3490479))

(assert (=> b!3217744 m!3490481))

(declare-fun m!3492093 () Bool)

(assert (=> b!3217744 m!3492093))

(assert (=> b!3217744 m!3490477))

(declare-fun m!3492095 () Bool)

(assert (=> b!3217744 m!3492095))

(assert (=> b!3217744 m!3490477))

(assert (=> b!3217744 m!3490469))

(assert (=> b!3217744 m!3490475))

(assert (=> b!3217744 m!3490469))

(assert (=> b!3217744 m!3490479))

(assert (=> b!3217744 m!3490475))

(assert (=> b!3217744 m!3490481))

(assert (=> b!3217744 m!3492093))

(assert (=> b!3216761 d!883204))

(declare-fun d!883206 () Bool)

(assert (=> d!883206 (= (list!12887 (charsOf!3246 separatorToken!241)) (list!12889 (c!540717 (charsOf!3246 separatorToken!241))))))

(declare-fun bs!542298 () Bool)

(assert (= bs!542298 d!883206))

(declare-fun m!3492097 () Bool)

(assert (=> bs!542298 m!3492097))

(assert (=> b!3216761 d!883206))

(declare-fun d!883208 () Bool)

(declare-fun lt!1089096 () BalanceConc!21284)

(assert (=> d!883208 (= (list!12887 lt!1089096) (originalCharacters!5944 (h!41627 (t!239822 tokens!494))))))

(assert (=> d!883208 (= lt!1089096 (dynLambda!14648 (toChars!7181 (transformation!5230 (rule!7682 (h!41627 (t!239822 tokens!494))))) (value!169515 (h!41627 (t!239822 tokens!494)))))))

(assert (=> d!883208 (= (charsOf!3246 (h!41627 (t!239822 tokens!494))) lt!1089096)))

(declare-fun b_lambda!88435 () Bool)

(assert (=> (not b_lambda!88435) (not d!883208)))

(declare-fun t!239912 () Bool)

(declare-fun tb!158821 () Bool)

(assert (=> (and b!3216775 (= (toChars!7181 (transformation!5230 (rule!7682 (h!41627 tokens!494)))) (toChars!7181 (transformation!5230 (rule!7682 (h!41627 (t!239822 tokens!494)))))) t!239912) tb!158821))

(declare-fun b!3217746 () Bool)

(declare-fun e!2006298 () Bool)

(declare-fun tp!1014284 () Bool)

(assert (=> b!3217746 (= e!2006298 (and (inv!49077 (c!540717 (dynLambda!14648 (toChars!7181 (transformation!5230 (rule!7682 (h!41627 (t!239822 tokens!494))))) (value!169515 (h!41627 (t!239822 tokens!494)))))) tp!1014284))))

(declare-fun result!201234 () Bool)

(assert (=> tb!158821 (= result!201234 (and (inv!49078 (dynLambda!14648 (toChars!7181 (transformation!5230 (rule!7682 (h!41627 (t!239822 tokens!494))))) (value!169515 (h!41627 (t!239822 tokens!494))))) e!2006298))))

(assert (= tb!158821 b!3217746))

(declare-fun m!3492099 () Bool)

(assert (=> b!3217746 m!3492099))

(declare-fun m!3492101 () Bool)

(assert (=> tb!158821 m!3492101))

(assert (=> d!883208 t!239912))

(declare-fun b_and!214873 () Bool)

(assert (= b_and!214867 (and (=> t!239912 result!201234) b_and!214873)))

(declare-fun t!239914 () Bool)

(declare-fun tb!158823 () Bool)

(assert (=> (and b!3216773 (= (toChars!7181 (transformation!5230 (h!41626 rules!2135))) (toChars!7181 (transformation!5230 (rule!7682 (h!41627 (t!239822 tokens!494)))))) t!239914) tb!158823))

(declare-fun result!201236 () Bool)

(assert (= result!201236 result!201234))

(assert (=> d!883208 t!239914))

(declare-fun b_and!214875 () Bool)

(assert (= b_and!214869 (and (=> t!239914 result!201236) b_and!214875)))

(declare-fun t!239916 () Bool)

(declare-fun tb!158825 () Bool)

(assert (=> (and b!3216778 (= (toChars!7181 (transformation!5230 (rule!7682 separatorToken!241))) (toChars!7181 (transformation!5230 (rule!7682 (h!41627 (t!239822 tokens!494)))))) t!239916) tb!158825))

(declare-fun result!201238 () Bool)

(assert (= result!201238 result!201234))

(assert (=> d!883208 t!239916))

(declare-fun b_and!214877 () Bool)

(assert (= b_and!214871 (and (=> t!239916 result!201238) b_and!214877)))

(declare-fun m!3492103 () Bool)

(assert (=> d!883208 m!3492103))

(declare-fun m!3492105 () Bool)

(assert (=> d!883208 m!3492105))

(assert (=> b!3216761 d!883208))

(declare-fun b!3217757 () Bool)

(declare-fun b_free!85557 () Bool)

(declare-fun b_next!86261 () Bool)

(assert (=> b!3217757 (= b_free!85557 (not b_next!86261))))

(declare-fun tb!158827 () Bool)

(declare-fun t!239918 () Bool)

(assert (=> (and b!3217757 (= (toValue!7322 (transformation!5230 (h!41626 (t!239821 rules!2135)))) (toValue!7322 (transformation!5230 (rule!7682 (h!41627 (t!239822 tokens!494)))))) t!239918) tb!158827))

(declare-fun result!201242 () Bool)

(assert (= result!201242 result!201192))

(assert (=> d!883102 t!239918))

(declare-fun tb!158829 () Bool)

(declare-fun t!239920 () Bool)

(assert (=> (and b!3217757 (= (toValue!7322 (transformation!5230 (h!41626 (t!239821 rules!2135)))) (toValue!7322 (transformation!5230 (rule!7682 (h!41627 tokens!494))))) t!239920) tb!158829))

(declare-fun result!201244 () Bool)

(assert (= result!201244 result!201200))

(assert (=> d!883122 t!239920))

(declare-fun b_and!214879 () Bool)

(declare-fun tp!1014295 () Bool)

(assert (=> b!3217757 (= tp!1014295 (and (=> t!239918 result!201242) (=> t!239920 result!201244) b_and!214879))))

(declare-fun b_free!85559 () Bool)

(declare-fun b_next!86263 () Bool)

(assert (=> b!3217757 (= b_free!85559 (not b_next!86263))))

(declare-fun tb!158831 () Bool)

(declare-fun t!239922 () Bool)

(assert (=> (and b!3217757 (= (toChars!7181 (transformation!5230 (h!41626 (t!239821 rules!2135)))) (toChars!7181 (transformation!5230 (rule!7682 separatorToken!241)))) t!239922) tb!158831))

(declare-fun result!201246 () Bool)

(assert (= result!201246 result!201144))

(assert (=> d!883192 t!239922))

(declare-fun t!239924 () Bool)

(declare-fun tb!158833 () Bool)

(assert (=> (and b!3217757 (= (toChars!7181 (transformation!5230 (h!41626 (t!239821 rules!2135)))) (toChars!7181 (transformation!5230 (rule!7682 (h!41627 (t!239822 tokens!494)))))) t!239924) tb!158833))

(declare-fun result!201248 () Bool)

(assert (= result!201248 result!201234))

(assert (=> d!883208 t!239924))

(declare-fun tb!158835 () Bool)

(declare-fun t!239926 () Bool)

(assert (=> (and b!3217757 (= (toChars!7181 (transformation!5230 (h!41626 (t!239821 rules!2135)))) (toChars!7181 (transformation!5230 (rule!7682 (h!41627 tokens!494))))) t!239926) tb!158835))

(declare-fun result!201250 () Bool)

(assert (= result!201250 result!201152))

(assert (=> b!3216938 t!239926))

(assert (=> b!3216825 t!239922))

(assert (=> d!882912 t!239926))

(declare-fun tp!1014296 () Bool)

(declare-fun b_and!214881 () Bool)

(assert (=> b!3217757 (= tp!1014296 (and (=> t!239922 result!201246) (=> t!239926 result!201250) (=> t!239924 result!201248) b_and!214881))))

(declare-fun e!2006308 () Bool)

(assert (=> b!3217757 (= e!2006308 (and tp!1014295 tp!1014296))))

(declare-fun e!2006307 () Bool)

(declare-fun tp!1014294 () Bool)

(declare-fun b!3217756 () Bool)

(assert (=> b!3217756 (= e!2006307 (and tp!1014294 (inv!49072 (tag!5760 (h!41626 (t!239821 rules!2135)))) (inv!49075 (transformation!5230 (h!41626 (t!239821 rules!2135)))) e!2006308))))

(declare-fun b!3217755 () Bool)

(declare-fun e!2006310 () Bool)

(declare-fun tp!1014293 () Bool)

(assert (=> b!3217755 (= e!2006310 (and e!2006307 tp!1014293))))

(assert (=> b!3216799 (= tp!1014210 e!2006310)))

(assert (= b!3217756 b!3217757))

(assert (= b!3217755 b!3217756))

(assert (= (and b!3216799 ((_ is Cons!36206) (t!239821 rules!2135))) b!3217755))

(declare-fun m!3492107 () Bool)

(assert (=> b!3217756 m!3492107))

(declare-fun m!3492109 () Bool)

(assert (=> b!3217756 m!3492109))

(declare-fun b!3217760 () Bool)

(declare-fun e!2006313 () Bool)

(assert (=> b!3217760 (= e!2006313 true)))

(declare-fun b!3217759 () Bool)

(declare-fun e!2006312 () Bool)

(assert (=> b!3217759 (= e!2006312 e!2006313)))

(declare-fun b!3217758 () Bool)

(declare-fun e!2006311 () Bool)

(assert (=> b!3217758 (= e!2006311 e!2006312)))

(assert (=> b!3216808 e!2006311))

(assert (= b!3217759 b!3217760))

(assert (= b!3217758 b!3217759))

(assert (= (and b!3216808 ((_ is Cons!36206) (t!239821 rules!2135))) b!3217758))

(assert (=> b!3217760 (< (dynLambda!14645 order!18525 (toValue!7322 (transformation!5230 (h!41626 (t!239821 rules!2135))))) (dynLambda!14646 order!18527 lambda!117651))))

(assert (=> b!3217760 (< (dynLambda!14647 order!18529 (toChars!7181 (transformation!5230 (h!41626 (t!239821 rules!2135))))) (dynLambda!14646 order!18527 lambda!117651))))

(declare-fun b!3217774 () Bool)

(declare-fun b_free!85561 () Bool)

(declare-fun b_next!86265 () Bool)

(assert (=> b!3217774 (= b_free!85561 (not b_next!86265))))

(declare-fun t!239928 () Bool)

(declare-fun tb!158837 () Bool)

(assert (=> (and b!3217774 (= (toValue!7322 (transformation!5230 (rule!7682 (h!41627 (t!239822 tokens!494))))) (toValue!7322 (transformation!5230 (rule!7682 (h!41627 (t!239822 tokens!494)))))) t!239928) tb!158837))

(declare-fun result!201254 () Bool)

(assert (= result!201254 result!201192))

(assert (=> d!883102 t!239928))

(declare-fun t!239930 () Bool)

(declare-fun tb!158839 () Bool)

(assert (=> (and b!3217774 (= (toValue!7322 (transformation!5230 (rule!7682 (h!41627 (t!239822 tokens!494))))) (toValue!7322 (transformation!5230 (rule!7682 (h!41627 tokens!494))))) t!239930) tb!158839))

(declare-fun result!201256 () Bool)

(assert (= result!201256 result!201200))

(assert (=> d!883122 t!239930))

(declare-fun b_and!214883 () Bool)

(declare-fun tp!1014309 () Bool)

(assert (=> b!3217774 (= tp!1014309 (and (=> t!239928 result!201254) (=> t!239930 result!201256) b_and!214883))))

(declare-fun b_free!85563 () Bool)

(declare-fun b_next!86267 () Bool)

(assert (=> b!3217774 (= b_free!85563 (not b_next!86267))))

(declare-fun tb!158841 () Bool)

(declare-fun t!239932 () Bool)

(assert (=> (and b!3217774 (= (toChars!7181 (transformation!5230 (rule!7682 (h!41627 (t!239822 tokens!494))))) (toChars!7181 (transformation!5230 (rule!7682 separatorToken!241)))) t!239932) tb!158841))

(declare-fun result!201258 () Bool)

(assert (= result!201258 result!201144))

(assert (=> d!883192 t!239932))

(declare-fun t!239934 () Bool)

(declare-fun tb!158843 () Bool)

(assert (=> (and b!3217774 (= (toChars!7181 (transformation!5230 (rule!7682 (h!41627 (t!239822 tokens!494))))) (toChars!7181 (transformation!5230 (rule!7682 (h!41627 (t!239822 tokens!494)))))) t!239934) tb!158843))

(declare-fun result!201260 () Bool)

(assert (= result!201260 result!201234))

(assert (=> d!883208 t!239934))

(declare-fun t!239936 () Bool)

(declare-fun tb!158845 () Bool)

(assert (=> (and b!3217774 (= (toChars!7181 (transformation!5230 (rule!7682 (h!41627 (t!239822 tokens!494))))) (toChars!7181 (transformation!5230 (rule!7682 (h!41627 tokens!494))))) t!239936) tb!158845))

(declare-fun result!201262 () Bool)

(assert (= result!201262 result!201152))

(assert (=> b!3216938 t!239936))

(assert (=> b!3216825 t!239932))

(assert (=> d!882912 t!239936))

(declare-fun b_and!214885 () Bool)

(declare-fun tp!1014307 () Bool)

(assert (=> b!3217774 (= tp!1014307 (and (=> t!239932 result!201258) (=> t!239934 result!201260) (=> t!239936 result!201262) b_and!214885))))

(declare-fun e!2006327 () Bool)

(declare-fun tp!1014308 () Bool)

(declare-fun b!3217772 () Bool)

(declare-fun e!2006326 () Bool)

(assert (=> b!3217772 (= e!2006327 (and (inv!21 (value!169515 (h!41627 (t!239822 tokens!494)))) e!2006326 tp!1014308))))

(declare-fun e!2006330 () Bool)

(declare-fun b!3217771 () Bool)

(declare-fun tp!1014311 () Bool)

(assert (=> b!3217771 (= e!2006330 (and (inv!49076 (h!41627 (t!239822 tokens!494))) e!2006327 tp!1014311))))

(assert (=> b!3216776 (= tp!1014215 e!2006330)))

(declare-fun b!3217773 () Bool)

(declare-fun tp!1014310 () Bool)

(declare-fun e!2006331 () Bool)

(assert (=> b!3217773 (= e!2006326 (and tp!1014310 (inv!49072 (tag!5760 (rule!7682 (h!41627 (t!239822 tokens!494))))) (inv!49075 (transformation!5230 (rule!7682 (h!41627 (t!239822 tokens!494))))) e!2006331))))

(assert (=> b!3217774 (= e!2006331 (and tp!1014309 tp!1014307))))

(assert (= b!3217773 b!3217774))

(assert (= b!3217772 b!3217773))

(assert (= b!3217771 b!3217772))

(assert (= (and b!3216776 ((_ is Cons!36207) (t!239822 tokens!494))) b!3217771))

(declare-fun m!3492111 () Bool)

(assert (=> b!3217772 m!3492111))

(declare-fun m!3492113 () Bool)

(assert (=> b!3217771 m!3492113))

(declare-fun m!3492115 () Bool)

(assert (=> b!3217773 m!3492115))

(declare-fun m!3492117 () Bool)

(assert (=> b!3217773 m!3492117))

(declare-fun b!3217779 () Bool)

(declare-fun e!2006334 () Bool)

(declare-fun tp_is_empty!17305 () Bool)

(declare-fun tp!1014314 () Bool)

(assert (=> b!3217779 (= e!2006334 (and tp_is_empty!17305 tp!1014314))))

(assert (=> b!3216777 (= tp!1014214 e!2006334)))

(assert (= (and b!3216777 ((_ is Cons!36205) (originalCharacters!5944 separatorToken!241))) b!3217779))

(declare-fun b!3217780 () Bool)

(declare-fun e!2006335 () Bool)

(declare-fun tp!1014315 () Bool)

(assert (=> b!3217780 (= e!2006335 (and tp_is_empty!17305 tp!1014315))))

(assert (=> b!3216795 (= tp!1014206 e!2006335)))

(assert (= (and b!3216795 ((_ is Cons!36205) (originalCharacters!5944 (h!41627 tokens!494)))) b!3217780))

(declare-fun b!3217794 () Bool)

(declare-fun e!2006338 () Bool)

(declare-fun tp!1014328 () Bool)

(declare-fun tp!1014329 () Bool)

(assert (=> b!3217794 (= e!2006338 (and tp!1014328 tp!1014329))))

(assert (=> b!3216796 (= tp!1014217 e!2006338)))

(declare-fun b!3217791 () Bool)

(assert (=> b!3217791 (= e!2006338 tp_is_empty!17305)))

(declare-fun b!3217793 () Bool)

(declare-fun tp!1014330 () Bool)

(assert (=> b!3217793 (= e!2006338 tp!1014330)))

(declare-fun b!3217792 () Bool)

(declare-fun tp!1014327 () Bool)

(declare-fun tp!1014326 () Bool)

(assert (=> b!3217792 (= e!2006338 (and tp!1014327 tp!1014326))))

(assert (= (and b!3216796 ((_ is ElementMatch!9989) (regex!5230 (rule!7682 separatorToken!241)))) b!3217791))

(assert (= (and b!3216796 ((_ is Concat!15449) (regex!5230 (rule!7682 separatorToken!241)))) b!3217792))

(assert (= (and b!3216796 ((_ is Star!9989) (regex!5230 (rule!7682 separatorToken!241)))) b!3217793))

(assert (= (and b!3216796 ((_ is Union!9989) (regex!5230 (rule!7682 separatorToken!241)))) b!3217794))

(declare-fun b!3217798 () Bool)

(declare-fun e!2006339 () Bool)

(declare-fun tp!1014333 () Bool)

(declare-fun tp!1014334 () Bool)

(assert (=> b!3217798 (= e!2006339 (and tp!1014333 tp!1014334))))

(assert (=> b!3216792 (= tp!1014212 e!2006339)))

(declare-fun b!3217795 () Bool)

(assert (=> b!3217795 (= e!2006339 tp_is_empty!17305)))

(declare-fun b!3217797 () Bool)

(declare-fun tp!1014335 () Bool)

(assert (=> b!3217797 (= e!2006339 tp!1014335)))

(declare-fun b!3217796 () Bool)

(declare-fun tp!1014332 () Bool)

(declare-fun tp!1014331 () Bool)

(assert (=> b!3217796 (= e!2006339 (and tp!1014332 tp!1014331))))

(assert (= (and b!3216792 ((_ is ElementMatch!9989) (regex!5230 (rule!7682 (h!41627 tokens!494))))) b!3217795))

(assert (= (and b!3216792 ((_ is Concat!15449) (regex!5230 (rule!7682 (h!41627 tokens!494))))) b!3217796))

(assert (= (and b!3216792 ((_ is Star!9989) (regex!5230 (rule!7682 (h!41627 tokens!494))))) b!3217797))

(assert (= (and b!3216792 ((_ is Union!9989) (regex!5230 (rule!7682 (h!41627 tokens!494))))) b!3217798))

(declare-fun b!3217802 () Bool)

(declare-fun e!2006340 () Bool)

(declare-fun tp!1014338 () Bool)

(declare-fun tp!1014339 () Bool)

(assert (=> b!3217802 (= e!2006340 (and tp!1014338 tp!1014339))))

(assert (=> b!3216771 (= tp!1014209 e!2006340)))

(declare-fun b!3217799 () Bool)

(assert (=> b!3217799 (= e!2006340 tp_is_empty!17305)))

(declare-fun b!3217801 () Bool)

(declare-fun tp!1014340 () Bool)

(assert (=> b!3217801 (= e!2006340 tp!1014340)))

(declare-fun b!3217800 () Bool)

(declare-fun tp!1014337 () Bool)

(declare-fun tp!1014336 () Bool)

(assert (=> b!3217800 (= e!2006340 (and tp!1014337 tp!1014336))))

(assert (= (and b!3216771 ((_ is ElementMatch!9989) (regex!5230 (h!41626 rules!2135)))) b!3217799))

(assert (= (and b!3216771 ((_ is Concat!15449) (regex!5230 (h!41626 rules!2135)))) b!3217800))

(assert (= (and b!3216771 ((_ is Star!9989) (regex!5230 (h!41626 rules!2135)))) b!3217801))

(assert (= (and b!3216771 ((_ is Union!9989) (regex!5230 (h!41626 rules!2135)))) b!3217802))

(declare-fun b_lambda!88437 () Bool)

(assert (= b_lambda!88381 (or b!3216793 b_lambda!88437)))

(declare-fun bs!542299 () Bool)

(declare-fun d!883210 () Bool)

(assert (= bs!542299 (and d!883210 b!3216793)))

(assert (=> bs!542299 (= (dynLambda!14651 lambda!117650 (h!41627 tokens!494)) (not (isSeparator!5230 (rule!7682 (h!41627 tokens!494)))))))

(assert (=> d!882906 d!883210))

(declare-fun b_lambda!88439 () Bool)

(assert (= b_lambda!88373 (or (and b!3216773 b_free!85543 (= (toChars!7181 (transformation!5230 (h!41626 rules!2135))) (toChars!7181 (transformation!5230 (rule!7682 (h!41627 tokens!494)))))) (and b!3216778 b_free!85547 (= (toChars!7181 (transformation!5230 (rule!7682 separatorToken!241))) (toChars!7181 (transformation!5230 (rule!7682 (h!41627 tokens!494)))))) (and b!3217757 b_free!85559 (= (toChars!7181 (transformation!5230 (h!41626 (t!239821 rules!2135)))) (toChars!7181 (transformation!5230 (rule!7682 (h!41627 tokens!494)))))) (and b!3217774 b_free!85563 (= (toChars!7181 (transformation!5230 (rule!7682 (h!41627 (t!239822 tokens!494))))) (toChars!7181 (transformation!5230 (rule!7682 (h!41627 tokens!494)))))) (and b!3216775 b_free!85539) b_lambda!88439)))

(declare-fun b_lambda!88441 () Bool)

(assert (= b_lambda!88405 (or (and b!3216773 b_free!85541 (= (toValue!7322 (transformation!5230 (h!41626 rules!2135))) (toValue!7322 (transformation!5230 (rule!7682 (h!41627 (t!239822 tokens!494))))))) (and b!3216778 b_free!85545 (= (toValue!7322 (transformation!5230 (rule!7682 separatorToken!241))) (toValue!7322 (transformation!5230 (rule!7682 (h!41627 (t!239822 tokens!494))))))) (and b!3217774 b_free!85561) (and b!3216775 b_free!85537 (= (toValue!7322 (transformation!5230 (rule!7682 (h!41627 tokens!494)))) (toValue!7322 (transformation!5230 (rule!7682 (h!41627 (t!239822 tokens!494))))))) (and b!3217757 b_free!85557 (= (toValue!7322 (transformation!5230 (h!41626 (t!239821 rules!2135)))) (toValue!7322 (transformation!5230 (rule!7682 (h!41627 (t!239822 tokens!494))))))) b_lambda!88441)))

(declare-fun b_lambda!88443 () Bool)

(assert (= b_lambda!88379 (or b!3216793 b_lambda!88443)))

(declare-fun bs!542300 () Bool)

(declare-fun d!883212 () Bool)

(assert (= bs!542300 (and d!883212 b!3216793)))

(assert (=> bs!542300 (= (dynLambda!14651 lambda!117650 (h!41627 (t!239822 tokens!494))) (not (isSeparator!5230 (rule!7682 (h!41627 (t!239822 tokens!494))))))))

(assert (=> d!882904 d!883212))

(declare-fun b_lambda!88445 () Bool)

(assert (= b_lambda!88435 (or (and b!3217757 b_free!85559 (= (toChars!7181 (transformation!5230 (h!41626 (t!239821 rules!2135)))) (toChars!7181 (transformation!5230 (rule!7682 (h!41627 (t!239822 tokens!494))))))) (and b!3216778 b_free!85547 (= (toChars!7181 (transformation!5230 (rule!7682 separatorToken!241))) (toChars!7181 (transformation!5230 (rule!7682 (h!41627 (t!239822 tokens!494))))))) (and b!3216773 b_free!85543 (= (toChars!7181 (transformation!5230 (h!41626 rules!2135))) (toChars!7181 (transformation!5230 (rule!7682 (h!41627 (t!239822 tokens!494))))))) (and b!3217774 b_free!85563) (and b!3216775 b_free!85539 (= (toChars!7181 (transformation!5230 (rule!7682 (h!41627 tokens!494)))) (toChars!7181 (transformation!5230 (rule!7682 (h!41627 (t!239822 tokens!494))))))) b_lambda!88445)))

(declare-fun b_lambda!88447 () Bool)

(assert (= b_lambda!88375 (or b!3216793 b_lambda!88447)))

(assert (=> b!3217087 d!883210))

(declare-fun b_lambda!88449 () Bool)

(assert (= b_lambda!88431 (or b!3216762 b_lambda!88449)))

(declare-fun bs!542301 () Bool)

(declare-fun d!883214 () Bool)

(assert (= bs!542301 (and d!883214 b!3216762)))

(assert (=> bs!542301 (= (dynLambda!14651 lambda!117651 (h!41627 (t!239822 tokens!494))) (rulesProduceIndividualToken!2311 thiss!18206 rules!2135 (h!41627 (t!239822 tokens!494))))))

(assert (=> bs!542301 m!3490377))

(assert (=> d!883142 d!883214))

(declare-fun b_lambda!88451 () Bool)

(assert (= b_lambda!88407 (or (and b!3216778 b_free!85545 (= (toValue!7322 (transformation!5230 (rule!7682 separatorToken!241))) (toValue!7322 (transformation!5230 (rule!7682 (h!41627 tokens!494)))))) (and b!3217774 b_free!85561 (= (toValue!7322 (transformation!5230 (rule!7682 (h!41627 (t!239822 tokens!494))))) (toValue!7322 (transformation!5230 (rule!7682 (h!41627 tokens!494)))))) (and b!3216773 b_free!85541 (= (toValue!7322 (transformation!5230 (h!41626 rules!2135))) (toValue!7322 (transformation!5230 (rule!7682 (h!41627 tokens!494)))))) (and b!3216775 b_free!85537) (and b!3217757 b_free!85557 (= (toValue!7322 (transformation!5230 (h!41626 (t!239821 rules!2135)))) (toValue!7322 (transformation!5230 (rule!7682 (h!41627 tokens!494)))))) b_lambda!88451)))

(declare-fun b_lambda!88453 () Bool)

(assert (= b_lambda!88433 (or (and b!3217774 b_free!85563 (= (toChars!7181 (transformation!5230 (rule!7682 (h!41627 (t!239822 tokens!494))))) (toChars!7181 (transformation!5230 (rule!7682 separatorToken!241))))) (and b!3217757 b_free!85559 (= (toChars!7181 (transformation!5230 (h!41626 (t!239821 rules!2135)))) (toChars!7181 (transformation!5230 (rule!7682 separatorToken!241))))) (and b!3216778 b_free!85547) (and b!3216773 b_free!85543 (= (toChars!7181 (transformation!5230 (h!41626 rules!2135))) (toChars!7181 (transformation!5230 (rule!7682 separatorToken!241))))) (and b!3216775 b_free!85539 (= (toChars!7181 (transformation!5230 (rule!7682 (h!41627 tokens!494)))) (toChars!7181 (transformation!5230 (rule!7682 separatorToken!241))))) b_lambda!88453)))

(declare-fun b_lambda!88455 () Bool)

(assert (= b_lambda!88371 (or (and b!3217774 b_free!85563 (= (toChars!7181 (transformation!5230 (rule!7682 (h!41627 (t!239822 tokens!494))))) (toChars!7181 (transformation!5230 (rule!7682 separatorToken!241))))) (and b!3217757 b_free!85559 (= (toChars!7181 (transformation!5230 (h!41626 (t!239821 rules!2135)))) (toChars!7181 (transformation!5230 (rule!7682 separatorToken!241))))) (and b!3216778 b_free!85547) (and b!3216773 b_free!85543 (= (toChars!7181 (transformation!5230 (h!41626 rules!2135))) (toChars!7181 (transformation!5230 (rule!7682 separatorToken!241))))) (and b!3216775 b_free!85539 (= (toChars!7181 (transformation!5230 (rule!7682 (h!41627 tokens!494)))) (toChars!7181 (transformation!5230 (rule!7682 separatorToken!241))))) b_lambda!88455)))

(declare-fun b_lambda!88457 () Bool)

(assert (= b_lambda!88383 (or (and b!3216773 b_free!85543 (= (toChars!7181 (transformation!5230 (h!41626 rules!2135))) (toChars!7181 (transformation!5230 (rule!7682 (h!41627 tokens!494)))))) (and b!3216778 b_free!85547 (= (toChars!7181 (transformation!5230 (rule!7682 separatorToken!241))) (toChars!7181 (transformation!5230 (rule!7682 (h!41627 tokens!494)))))) (and b!3217757 b_free!85559 (= (toChars!7181 (transformation!5230 (h!41626 (t!239821 rules!2135)))) (toChars!7181 (transformation!5230 (rule!7682 (h!41627 tokens!494)))))) (and b!3217774 b_free!85563 (= (toChars!7181 (transformation!5230 (rule!7682 (h!41627 (t!239822 tokens!494))))) (toChars!7181 (transformation!5230 (rule!7682 (h!41627 tokens!494)))))) (and b!3216775 b_free!85539) b_lambda!88457)))

(check-sat (not b_next!86263) (not tb!158795) (not b!3217019) (not b!3217142) (not b!3217730) (not bm!232829) (not b!3217719) (not bm!232871) (not b!3217538) (not b_next!86249) (not b!3216916) (not b!3217543) (not b_lambda!88437) (not d!883150) (not b!3217756) (not b!3217734) (not d!883168) (not b!3217675) (not b!3217042) (not b!3217009) (not b!3217578) (not b!3217712) (not b!3217746) (not b!3217802) (not b!3217163) (not b!3217665) (not d!882916) (not b!3217801) (not b!3217544) (not b!3217148) (not b!3217771) (not b!3216927) (not bs!542301) (not d!882888) (not bm!232828) (not b!3217780) (not b!3217038) (not d!882906) (not b!3216876) (not bm!232873) (not b!3217699) (not b!3217161) (not bm!232869) (not d!882908) (not b!3217800) (not d!882900) (not b_next!86247) (not d!883104) (not d!883192) (not b!3217539) (not d!882926) (not b!3216940) (not d!883180) (not d!883188) (not b!3217708) (not b!3217566) (not d!882904) (not b!3217545) (not d!883136) (not b_lambda!88439) (not d!883198) (not b!3217081) (not tb!158747) (not d!883162) (not b!3217733) (not b!3217576) tp_is_empty!17305 (not d!883194) (not b!3216912) (not d!882842) (not b!3217146) (not d!883118) (not b_lambda!88447) (not b_next!86245) b_and!214875 (not b!3216826) (not b!3217145) (not b!3217533) (not bm!232860) (not b!3217203) (not d!883160) (not b_next!86261) (not b!3217023) (not d!883178) (not d!883182) (not b_lambda!88455) (not d!882922) (not d!882804) (not b!3216918) (not b!3216932) (not d!883172) (not d!883158) b_and!214877 (not d!882940) b_and!214857 (not d!883196) (not d!883148) (not b!3217064) (not b!3217793) (not b!3216973) (not b_next!86241) (not b!3217663) (not b!3217740) (not b!3217705) (not b!3217208) (not b!3217673) (not d!883098) (not b!3217729) b_and!214885 (not b!3217547) (not b!3217342) (not b!3217016) (not b!3217713) (not b!3216939) (not b!3217772) (not d!883146) (not d!882870) (not d!882876) (not b!3216879) (not b!3217082) (not d!883116) (not b!3217132) (not b!3217202) (not b!3217336) (not b!3216968) (not b!3216919) (not b!3217021) (not b_lambda!88445) (not b!3217792) (not d!883190) (not b!3217688) (not b!3217205) (not b!3217726) (not tb!158753) (not tb!158821) (not b_next!86267) (not d!883010) (not d!883166) (not b!3217540) (not d!882850) (not b_lambda!88441) (not b!3216938) (not d!883186) (not b_lambda!88449) (not d!882854) (not b!3216970) (not b!3217051) b_and!214883 (not b_lambda!88453) (not d!883100) (not d!882828) (not bm!232832) (not b!3217674) (not b!3217160) (not b!3217011) (not b!3217725) (not d!882818) (not b!3217201) (not b!3217531) (not b!3216920) (not d!882910) (not b!3217015) (not b!3217532) (not b!3217065) (not b!3217046) b_and!214855 (not d!883096) (not b!3216875) (not bm!232865) (not tb!158789) (not b!3217053) (not d!883114) (not d!882874) (not d!883208) (not d!882932) (not d!882816) (not b!3217720) (not b!3217703) (not b!3216934) (not d!882902) (not d!882930) (not b!3217702) b_and!214873 (not b!3217340) (not b!3217677) (not d!882862) (not d!883164) (not b!3217694) (not b!3217709) (not b!3217691) (not b!3217339) (not bm!232872) (not d!883184) b_and!214881 (not b!3217343) (not b!3217088) (not d!883108) (not b!3217050) (not b!3217164) (not b!3216978) (not b!3217044) (not d!883110) (not b!3217669) (not b!3217563) (not d!883106) (not d!882822) (not b!3217572) (not d!883142) (not d!883138) (not b!3217045) (not d!883112) (not b!3217162) (not d!882918) (not b!3217542) b_and!214853 (not b!3217080) (not b_lambda!88457) (not bm!232867) (not bm!232868) (not bm!232841) (not d!883206) (not d!883174) (not b!3217797) (not b!3217718) (not d!882928) (not b!3217660) (not b!3217133) (not b!3217138) (not b!3217206) (not b!3217671) (not b!3217706) (not b!3217659) (not b!3217335) (not b!3217207) (not b!3217063) (not d!882812) (not b_next!86243) b_and!214879 (not b!3217742) (not b!3217560) (not b!3217716) (not b!3217209) (not b!3217565) (not b_next!86251) (not b!3217536) (not b!3217546) (not b!3217662) (not b!3217700) (not d!882912) (not b!3216930) (not b!3217755) (not b!3217693) (not b!3217670) (not b_lambda!88443) (not d!882914) (not b!3217779) (not b!3217147) (not b!3217679) (not bm!232857) (not b!3217794) (not d!882844) (not b_lambda!88451) (not d!882832) (not d!882826) (not b!3217798) (not d!883124) (not b!3216913) (not b!3217153) (not b!3217338) (not bm!232834) (not b!3216933) (not b!3217008) (not bm!232859) (not b!3217664) (not b!3217796) (not d!882924) (not b!3216825) (not d!882830) (not b!3217341) (not b!3217667) (not b!3217773) (not b!3217141) (not b!3217039) (not b!3216841) (not b!3217154) (not b!3216880) (not b_next!86265) (not b!3216926) (not b!3217744) (not d!882852) (not b!3217758) (not b!3217022) (not d!883144) (not b!3217573))
(check-sat (not b_next!86263) (not b_next!86249) (not b_next!86247) (not b_next!86245) b_and!214885 (not b_next!86267) b_and!214883 b_and!214855 b_and!214873 b_and!214881 b_and!214853 (not b_next!86251) (not b_next!86265) b_and!214875 (not b_next!86261) b_and!214877 (not b_next!86241) b_and!214857 b_and!214879 (not b_next!86243))
(get-model)

(assert (=> d!883186 d!883188))

(declare-fun d!883302 () Bool)

(assert (=> d!883302 (not (matchR!4623 (regex!5230 (rule!7682 separatorToken!241)) lt!1088705))))

(assert (=> d!883302 true))

(declare-fun _$127!273 () Unit!50722)

(assert (=> d!883302 (= (choose!18784 (regex!5230 (rule!7682 separatorToken!241)) lt!1088705 lt!1088692) _$127!273)))

(declare-fun bs!542317 () Bool)

(assert (= bs!542317 d!883302))

(assert (=> bs!542317 m!3490493))

(assert (=> d!883186 d!883302))

(declare-fun bm!232885 () Bool)

(declare-fun c!540942 () Bool)

(declare-fun call!232892 () Bool)

(declare-fun c!540943 () Bool)

(assert (=> bm!232885 (= call!232892 (validRegex!4557 (ite c!540942 (reg!10318 (regex!5230 (rule!7682 separatorToken!241))) (ite c!540943 (regOne!20491 (regex!5230 (rule!7682 separatorToken!241))) (regOne!20490 (regex!5230 (rule!7682 separatorToken!241)))))))))

(declare-fun b!3217927 () Bool)

(declare-fun e!2006416 () Bool)

(declare-fun e!2006415 () Bool)

(assert (=> b!3217927 (= e!2006416 e!2006415)))

(assert (=> b!3217927 (= c!540942 ((_ is Star!9989) (regex!5230 (rule!7682 separatorToken!241))))))

(declare-fun bm!232886 () Bool)

(declare-fun call!232890 () Bool)

(assert (=> bm!232886 (= call!232890 call!232892)))

(declare-fun b!3217928 () Bool)

(declare-fun e!2006410 () Bool)

(assert (=> b!3217928 (= e!2006415 e!2006410)))

(assert (=> b!3217928 (= c!540943 ((_ is Union!9989) (regex!5230 (rule!7682 separatorToken!241))))))

(declare-fun bm!232887 () Bool)

(declare-fun call!232891 () Bool)

(assert (=> bm!232887 (= call!232891 (validRegex!4557 (ite c!540943 (regTwo!20491 (regex!5230 (rule!7682 separatorToken!241))) (regTwo!20490 (regex!5230 (rule!7682 separatorToken!241))))))))

(declare-fun b!3217929 () Bool)

(declare-fun e!2006413 () Bool)

(declare-fun e!2006412 () Bool)

(assert (=> b!3217929 (= e!2006413 e!2006412)))

(declare-fun res!1310038 () Bool)

(assert (=> b!3217929 (=> (not res!1310038) (not e!2006412))))

(assert (=> b!3217929 (= res!1310038 call!232890)))

(declare-fun d!883304 () Bool)

(declare-fun res!1310039 () Bool)

(assert (=> d!883304 (=> res!1310039 e!2006416)))

(assert (=> d!883304 (= res!1310039 ((_ is ElementMatch!9989) (regex!5230 (rule!7682 separatorToken!241))))))

(assert (=> d!883304 (= (validRegex!4557 (regex!5230 (rule!7682 separatorToken!241))) e!2006416)))

(declare-fun b!3217930 () Bool)

(declare-fun e!2006414 () Bool)

(assert (=> b!3217930 (= e!2006414 call!232892)))

(declare-fun b!3217931 () Bool)

(assert (=> b!3217931 (= e!2006415 e!2006414)))

(declare-fun res!1310040 () Bool)

(assert (=> b!3217931 (= res!1310040 (not (nullable!3401 (reg!10318 (regex!5230 (rule!7682 separatorToken!241))))))))

(assert (=> b!3217931 (=> (not res!1310040) (not e!2006414))))

(declare-fun b!3217932 () Bool)

(declare-fun res!1310037 () Bool)

(assert (=> b!3217932 (=> res!1310037 e!2006413)))

(assert (=> b!3217932 (= res!1310037 (not ((_ is Concat!15449) (regex!5230 (rule!7682 separatorToken!241)))))))

(assert (=> b!3217932 (= e!2006410 e!2006413)))

(declare-fun b!3217933 () Bool)

(assert (=> b!3217933 (= e!2006412 call!232891)))

(declare-fun b!3217934 () Bool)

(declare-fun res!1310041 () Bool)

(declare-fun e!2006411 () Bool)

(assert (=> b!3217934 (=> (not res!1310041) (not e!2006411))))

(assert (=> b!3217934 (= res!1310041 call!232890)))

(assert (=> b!3217934 (= e!2006410 e!2006411)))

(declare-fun b!3217935 () Bool)

(assert (=> b!3217935 (= e!2006411 call!232891)))

(assert (= (and d!883304 (not res!1310039)) b!3217927))

(assert (= (and b!3217927 c!540942) b!3217931))

(assert (= (and b!3217927 (not c!540942)) b!3217928))

(assert (= (and b!3217931 res!1310040) b!3217930))

(assert (= (and b!3217928 c!540943) b!3217934))

(assert (= (and b!3217928 (not c!540943)) b!3217932))

(assert (= (and b!3217934 res!1310041) b!3217935))

(assert (= (and b!3217932 (not res!1310037)) b!3217929))

(assert (= (and b!3217929 res!1310038) b!3217933))

(assert (= (or b!3217935 b!3217933) bm!232887))

(assert (= (or b!3217934 b!3217929) bm!232886))

(assert (= (or b!3217930 bm!232886) bm!232885))

(declare-fun m!3492321 () Bool)

(assert (=> bm!232885 m!3492321))

(declare-fun m!3492323 () Bool)

(assert (=> bm!232887 m!3492323))

(declare-fun m!3492325 () Bool)

(assert (=> b!3217931 m!3492325))

(assert (=> d!883186 d!883304))

(declare-fun d!883306 () Bool)

(declare-fun lt!1089163 () Bool)

(assert (=> d!883306 (= lt!1089163 (isEmpty!20308 (list!12887 (_2!20945 lt!1088852))))))

(assert (=> d!883306 (= lt!1089163 (isEmpty!20310 (c!540717 (_2!20945 lt!1088852))))))

(assert (=> d!883306 (= (isEmpty!20304 (_2!20945 lt!1088852)) lt!1089163)))

(declare-fun bs!542318 () Bool)

(assert (= bs!542318 d!883306))

(declare-fun m!3492327 () Bool)

(assert (=> bs!542318 m!3492327))

(assert (=> bs!542318 m!3492327))

(declare-fun m!3492329 () Bool)

(assert (=> bs!542318 m!3492329))

(declare-fun m!3492331 () Bool)

(assert (=> bs!542318 m!3492331))

(assert (=> b!3217147 d!883306))

(declare-fun b!3217936 () Bool)

(declare-fun e!2006420 () Bool)

(declare-fun lt!1089164 () Bool)

(assert (=> b!3217936 (= e!2006420 (not lt!1089164))))

(declare-fun b!3217937 () Bool)

(declare-fun e!2006418 () Bool)

(declare-fun e!2006422 () Bool)

(assert (=> b!3217937 (= e!2006418 e!2006422)))

(declare-fun res!1310044 () Bool)

(assert (=> b!3217937 (=> res!1310044 e!2006422)))

(declare-fun call!232893 () Bool)

(assert (=> b!3217937 (= res!1310044 call!232893)))

(declare-fun b!3217938 () Bool)

(declare-fun res!1310049 () Bool)

(declare-fun e!2006421 () Bool)

(assert (=> b!3217938 (=> (not res!1310049) (not e!2006421))))

(assert (=> b!3217938 (= res!1310049 (isEmpty!20308 (tail!5218 (_1!20949 (findLongestMatchInner!835 (regex!5230 (rule!7682 (h!41627 (t!239822 tokens!494)))) Nil!36205 (size!27294 Nil!36205) lt!1088680 lt!1088680 (size!27294 lt!1088680))))))))

(declare-fun b!3217939 () Bool)

(assert (=> b!3217939 (= e!2006421 (= (head!7053 (_1!20949 (findLongestMatchInner!835 (regex!5230 (rule!7682 (h!41627 (t!239822 tokens!494)))) Nil!36205 (size!27294 Nil!36205) lt!1088680 lt!1088680 (size!27294 lt!1088680)))) (c!540716 (regex!5230 (rule!7682 (h!41627 (t!239822 tokens!494)))))))))

(declare-fun b!3217940 () Bool)

(declare-fun res!1310045 () Bool)

(declare-fun e!2006419 () Bool)

(assert (=> b!3217940 (=> res!1310045 e!2006419)))

(assert (=> b!3217940 (= res!1310045 e!2006421)))

(declare-fun res!1310042 () Bool)

(assert (=> b!3217940 (=> (not res!1310042) (not e!2006421))))

(assert (=> b!3217940 (= res!1310042 lt!1089164)))

(declare-fun b!3217941 () Bool)

(assert (=> b!3217941 (= e!2006419 e!2006418)))

(declare-fun res!1310046 () Bool)

(assert (=> b!3217941 (=> (not res!1310046) (not e!2006418))))

(assert (=> b!3217941 (= res!1310046 (not lt!1089164))))

(declare-fun b!3217943 () Bool)

(declare-fun e!2006423 () Bool)

(assert (=> b!3217943 (= e!2006423 (= lt!1089164 call!232893))))

(declare-fun bm!232888 () Bool)

(assert (=> bm!232888 (= call!232893 (isEmpty!20308 (_1!20949 (findLongestMatchInner!835 (regex!5230 (rule!7682 (h!41627 (t!239822 tokens!494)))) Nil!36205 (size!27294 Nil!36205) lt!1088680 lt!1088680 (size!27294 lt!1088680)))))))

(declare-fun b!3217944 () Bool)

(assert (=> b!3217944 (= e!2006422 (not (= (head!7053 (_1!20949 (findLongestMatchInner!835 (regex!5230 (rule!7682 (h!41627 (t!239822 tokens!494)))) Nil!36205 (size!27294 Nil!36205) lt!1088680 lt!1088680 (size!27294 lt!1088680)))) (c!540716 (regex!5230 (rule!7682 (h!41627 (t!239822 tokens!494))))))))))

(declare-fun b!3217945 () Bool)

(declare-fun res!1310043 () Bool)

(assert (=> b!3217945 (=> res!1310043 e!2006422)))

(assert (=> b!3217945 (= res!1310043 (not (isEmpty!20308 (tail!5218 (_1!20949 (findLongestMatchInner!835 (regex!5230 (rule!7682 (h!41627 (t!239822 tokens!494)))) Nil!36205 (size!27294 Nil!36205) lt!1088680 lt!1088680 (size!27294 lt!1088680)))))))))

(declare-fun b!3217946 () Bool)

(declare-fun e!2006417 () Bool)

(assert (=> b!3217946 (= e!2006417 (matchR!4623 (derivativeStep!2954 (regex!5230 (rule!7682 (h!41627 (t!239822 tokens!494)))) (head!7053 (_1!20949 (findLongestMatchInner!835 (regex!5230 (rule!7682 (h!41627 (t!239822 tokens!494)))) Nil!36205 (size!27294 Nil!36205) lt!1088680 lt!1088680 (size!27294 lt!1088680))))) (tail!5218 (_1!20949 (findLongestMatchInner!835 (regex!5230 (rule!7682 (h!41627 (t!239822 tokens!494)))) Nil!36205 (size!27294 Nil!36205) lt!1088680 lt!1088680 (size!27294 lt!1088680))))))))

(declare-fun b!3217942 () Bool)

(assert (=> b!3217942 (= e!2006417 (nullable!3401 (regex!5230 (rule!7682 (h!41627 (t!239822 tokens!494))))))))

(declare-fun d!883308 () Bool)

(assert (=> d!883308 e!2006423))

(declare-fun c!540946 () Bool)

(assert (=> d!883308 (= c!540946 ((_ is EmptyExpr!9989) (regex!5230 (rule!7682 (h!41627 (t!239822 tokens!494))))))))

(assert (=> d!883308 (= lt!1089164 e!2006417)))

(declare-fun c!540945 () Bool)

(assert (=> d!883308 (= c!540945 (isEmpty!20308 (_1!20949 (findLongestMatchInner!835 (regex!5230 (rule!7682 (h!41627 (t!239822 tokens!494)))) Nil!36205 (size!27294 Nil!36205) lt!1088680 lt!1088680 (size!27294 lt!1088680)))))))

(assert (=> d!883308 (validRegex!4557 (regex!5230 (rule!7682 (h!41627 (t!239822 tokens!494)))))))

(assert (=> d!883308 (= (matchR!4623 (regex!5230 (rule!7682 (h!41627 (t!239822 tokens!494)))) (_1!20949 (findLongestMatchInner!835 (regex!5230 (rule!7682 (h!41627 (t!239822 tokens!494)))) Nil!36205 (size!27294 Nil!36205) lt!1088680 lt!1088680 (size!27294 lt!1088680)))) lt!1089164)))

(declare-fun b!3217947 () Bool)

(declare-fun res!1310048 () Bool)

(assert (=> b!3217947 (=> (not res!1310048) (not e!2006421))))

(assert (=> b!3217947 (= res!1310048 (not call!232893))))

(declare-fun b!3217948 () Bool)

(declare-fun res!1310047 () Bool)

(assert (=> b!3217948 (=> res!1310047 e!2006419)))

(assert (=> b!3217948 (= res!1310047 (not ((_ is ElementMatch!9989) (regex!5230 (rule!7682 (h!41627 (t!239822 tokens!494)))))))))

(assert (=> b!3217948 (= e!2006420 e!2006419)))

(declare-fun b!3217949 () Bool)

(assert (=> b!3217949 (= e!2006423 e!2006420)))

(declare-fun c!540944 () Bool)

(assert (=> b!3217949 (= c!540944 ((_ is EmptyLang!9989) (regex!5230 (rule!7682 (h!41627 (t!239822 tokens!494))))))))

(assert (= (and d!883308 c!540945) b!3217942))

(assert (= (and d!883308 (not c!540945)) b!3217946))

(assert (= (and d!883308 c!540946) b!3217943))

(assert (= (and d!883308 (not c!540946)) b!3217949))

(assert (= (and b!3217949 c!540944) b!3217936))

(assert (= (and b!3217949 (not c!540944)) b!3217948))

(assert (= (and b!3217948 (not res!1310047)) b!3217940))

(assert (= (and b!3217940 res!1310042) b!3217947))

(assert (= (and b!3217947 res!1310048) b!3217938))

(assert (= (and b!3217938 res!1310049) b!3217939))

(assert (= (and b!3217940 (not res!1310045)) b!3217941))

(assert (= (and b!3217941 res!1310046) b!3217937))

(assert (= (and b!3217937 (not res!1310044)) b!3217945))

(assert (= (and b!3217945 (not res!1310043)) b!3217944))

(assert (= (or b!3217943 b!3217937 b!3217947) bm!232888))

(assert (=> d!883308 m!3491781))

(assert (=> d!883308 m!3490733))

(declare-fun m!3492333 () Bool)

(assert (=> b!3217945 m!3492333))

(assert (=> b!3217945 m!3492333))

(declare-fun m!3492335 () Bool)

(assert (=> b!3217945 m!3492335))

(declare-fun m!3492337 () Bool)

(assert (=> b!3217939 m!3492337))

(assert (=> b!3217942 m!3490735))

(assert (=> b!3217938 m!3492333))

(assert (=> b!3217938 m!3492333))

(assert (=> b!3217938 m!3492335))

(assert (=> b!3217946 m!3492337))

(assert (=> b!3217946 m!3492337))

(declare-fun m!3492339 () Bool)

(assert (=> b!3217946 m!3492339))

(assert (=> b!3217946 m!3492333))

(assert (=> b!3217946 m!3492339))

(assert (=> b!3217946 m!3492333))

(declare-fun m!3492341 () Bool)

(assert (=> b!3217946 m!3492341))

(assert (=> bm!232888 m!3491781))

(assert (=> b!3217944 m!3492337))

(assert (=> b!3217543 d!883308))

(declare-fun b!3218074 () Bool)

(declare-fun e!2006506 () tuple2!35630)

(assert (=> b!3218074 (= e!2006506 (tuple2!35631 Nil!36205 lt!1088680))))

(declare-fun bm!232922 () Bool)

(declare-fun call!232927 () Bool)

(assert (=> bm!232922 (= call!232927 (isPrefix!2788 lt!1088680 lt!1088680))))

(declare-fun b!3218075 () Bool)

(declare-fun c!540989 () Bool)

(declare-fun call!232934 () Bool)

(assert (=> b!3218075 (= c!540989 call!232934)))

(declare-fun lt!1089272 () Unit!50722)

(declare-fun lt!1089266 () Unit!50722)

(assert (=> b!3218075 (= lt!1089272 lt!1089266)))

(declare-fun lt!1089253 () C!20164)

(declare-fun lt!1089244 () List!36329)

(assert (=> b!3218075 (= (++!8698 (++!8698 Nil!36205 (Cons!36205 lt!1089253 Nil!36205)) lt!1089244) lt!1088680)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!1123 (List!36329 C!20164 List!36329 List!36329) Unit!50722)

(assert (=> b!3218075 (= lt!1089266 (lemmaMoveElementToOtherListKeepsConcatEq!1123 Nil!36205 lt!1089253 lt!1089244 lt!1088680))))

(assert (=> b!3218075 (= lt!1089244 (tail!5218 lt!1088680))))

(assert (=> b!3218075 (= lt!1089253 (head!7053 lt!1088680))))

(declare-fun lt!1089259 () Unit!50722)

(declare-fun lt!1089257 () Unit!50722)

(assert (=> b!3218075 (= lt!1089259 lt!1089257)))

(declare-fun getSuffix!1389 (List!36329 List!36329) List!36329)

(assert (=> b!3218075 (isPrefix!2788 (++!8698 Nil!36205 (Cons!36205 (head!7053 (getSuffix!1389 lt!1088680 Nil!36205)) Nil!36205)) lt!1088680)))

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!511 (List!36329 List!36329) Unit!50722)

(assert (=> b!3218075 (= lt!1089257 (lemmaAddHeadSuffixToPrefixStillPrefix!511 Nil!36205 lt!1088680))))

(declare-fun lt!1089248 () Unit!50722)

(declare-fun lt!1089267 () Unit!50722)

(assert (=> b!3218075 (= lt!1089248 lt!1089267)))

(assert (=> b!3218075 (= lt!1089267 (lemmaAddHeadSuffixToPrefixStillPrefix!511 Nil!36205 lt!1088680))))

(declare-fun lt!1089254 () List!36329)

(assert (=> b!3218075 (= lt!1089254 (++!8698 Nil!36205 (Cons!36205 (head!7053 lt!1088680) Nil!36205)))))

(declare-fun lt!1089245 () Unit!50722)

(declare-fun e!2006503 () Unit!50722)

(assert (=> b!3218075 (= lt!1089245 e!2006503)))

(declare-fun c!540983 () Bool)

(assert (=> b!3218075 (= c!540983 (= (size!27294 Nil!36205) (size!27294 lt!1088680)))))

(declare-fun lt!1089263 () Unit!50722)

(declare-fun lt!1089265 () Unit!50722)

(assert (=> b!3218075 (= lt!1089263 lt!1089265)))

(assert (=> b!3218075 (<= (size!27294 Nil!36205) (size!27294 lt!1088680))))

(declare-fun lemmaIsPrefixThenSmallerEqSize!319 (List!36329 List!36329) Unit!50722)

(assert (=> b!3218075 (= lt!1089265 (lemmaIsPrefixThenSmallerEqSize!319 Nil!36205 lt!1088680))))

(declare-fun e!2006501 () tuple2!35630)

(declare-fun e!2006505 () tuple2!35630)

(assert (=> b!3218075 (= e!2006501 e!2006505)))

(declare-fun b!3218076 () Bool)

(declare-fun Unit!50728 () Unit!50722)

(assert (=> b!3218076 (= e!2006503 Unit!50728)))

(declare-fun b!3218077 () Bool)

(declare-fun Unit!50729 () Unit!50722)

(assert (=> b!3218077 (= e!2006503 Unit!50729)))

(declare-fun lt!1089268 () Unit!50722)

(declare-fun call!232933 () Unit!50722)

(assert (=> b!3218077 (= lt!1089268 call!232933)))

(assert (=> b!3218077 call!232927))

(declare-fun lt!1089247 () Unit!50722)

(assert (=> b!3218077 (= lt!1089247 lt!1089268)))

(declare-fun lt!1089262 () Unit!50722)

(declare-fun call!232928 () Unit!50722)

(assert (=> b!3218077 (= lt!1089262 call!232928)))

(assert (=> b!3218077 (= lt!1088680 Nil!36205)))

(declare-fun lt!1089271 () Unit!50722)

(assert (=> b!3218077 (= lt!1089271 lt!1089262)))

(assert (=> b!3218077 false))

(declare-fun b!3218078 () Bool)

(declare-fun e!2006504 () tuple2!35630)

(declare-fun lt!1089258 () tuple2!35630)

(assert (=> b!3218078 (= e!2006504 lt!1089258)))

(declare-fun bm!232923 () Bool)

(assert (=> bm!232923 (= call!232933 (lemmaIsPrefixRefl!1747 lt!1088680 lt!1088680))))

(declare-fun b!3218079 () Bool)

(declare-fun e!2006495 () tuple2!35630)

(assert (=> b!3218079 (= e!2006495 e!2006501)))

(declare-fun c!540986 () Bool)

(assert (=> b!3218079 (= c!540986 (= (size!27294 Nil!36205) (size!27294 lt!1088680)))))

(declare-fun bm!232924 () Bool)

(declare-fun lemmaIsPrefixSameLengthThenSameList!518 (List!36329 List!36329 List!36329) Unit!50722)

(assert (=> bm!232924 (= call!232928 (lemmaIsPrefixSameLengthThenSameList!518 lt!1088680 Nil!36205 lt!1088680))))

(declare-fun bm!232925 () Bool)

(declare-fun call!232930 () C!20164)

(assert (=> bm!232925 (= call!232930 (head!7053 lt!1088680))))

(declare-fun d!883310 () Bool)

(declare-fun e!2006498 () Bool)

(assert (=> d!883310 e!2006498))

(declare-fun res!1310092 () Bool)

(assert (=> d!883310 (=> (not res!1310092) (not e!2006498))))

(declare-fun lt!1089255 () tuple2!35630)

(assert (=> d!883310 (= res!1310092 (= (++!8698 (_1!20949 lt!1089255) (_2!20949 lt!1089255)) lt!1088680))))

(assert (=> d!883310 (= lt!1089255 e!2006495)))

(declare-fun c!540991 () Bool)

(declare-fun lostCause!885 (Regex!9989) Bool)

(assert (=> d!883310 (= c!540991 (lostCause!885 (regex!5230 (rule!7682 (h!41627 (t!239822 tokens!494))))))))

(declare-fun lt!1089261 () Unit!50722)

(declare-fun Unit!50730 () Unit!50722)

(assert (=> d!883310 (= lt!1089261 Unit!50730)))

(assert (=> d!883310 (= (getSuffix!1389 lt!1088680 Nil!36205) lt!1088680)))

(declare-fun lt!1089251 () Unit!50722)

(declare-fun lt!1089252 () Unit!50722)

(assert (=> d!883310 (= lt!1089251 lt!1089252)))

(declare-fun lt!1089250 () List!36329)

(assert (=> d!883310 (= lt!1088680 lt!1089250)))

(declare-fun lemmaSamePrefixThenSameSuffix!1235 (List!36329 List!36329 List!36329 List!36329 List!36329) Unit!50722)

(assert (=> d!883310 (= lt!1089252 (lemmaSamePrefixThenSameSuffix!1235 Nil!36205 lt!1088680 Nil!36205 lt!1089250 lt!1088680))))

(assert (=> d!883310 (= lt!1089250 (getSuffix!1389 lt!1088680 Nil!36205))))

(declare-fun lt!1089246 () Unit!50722)

(declare-fun lt!1089256 () Unit!50722)

(assert (=> d!883310 (= lt!1089246 lt!1089256)))

(assert (=> d!883310 (isPrefix!2788 Nil!36205 (++!8698 Nil!36205 lt!1088680))))

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!1769 (List!36329 List!36329) Unit!50722)

(assert (=> d!883310 (= lt!1089256 (lemmaConcatTwoListThenFirstIsPrefix!1769 Nil!36205 lt!1088680))))

(assert (=> d!883310 (validRegex!4557 (regex!5230 (rule!7682 (h!41627 (t!239822 tokens!494)))))))

(assert (=> d!883310 (= (findLongestMatchInner!835 (regex!5230 (rule!7682 (h!41627 (t!239822 tokens!494)))) Nil!36205 (size!27294 Nil!36205) lt!1088680 lt!1088680 (size!27294 lt!1088680)) lt!1089255)))

(declare-fun b!3218080 () Bool)

(assert (=> b!3218080 (= e!2006505 e!2006504)))

(declare-fun call!232931 () tuple2!35630)

(assert (=> b!3218080 (= lt!1089258 call!232931)))

(declare-fun c!540990 () Bool)

(assert (=> b!3218080 (= c!540990 (isEmpty!20308 (_1!20949 lt!1089258)))))

(declare-fun b!3218081 () Bool)

(declare-fun e!2006502 () Bool)

(assert (=> b!3218081 (= e!2006498 e!2006502)))

(declare-fun res!1310089 () Bool)

(assert (=> b!3218081 (=> res!1310089 e!2006502)))

(assert (=> b!3218081 (= res!1310089 (isEmpty!20308 (_1!20949 lt!1089255)))))

(declare-fun b!3218082 () Bool)

(assert (=> b!3218082 (= e!2006504 (tuple2!35631 Nil!36205 lt!1088680))))

(declare-fun b!3218083 () Bool)

(assert (=> b!3218083 (= e!2006495 (tuple2!35631 Nil!36205 lt!1088680))))

(declare-fun b!3218084 () Bool)

(assert (=> b!3218084 (= e!2006506 (tuple2!35631 Nil!36205 Nil!36205))))

(declare-fun b!3218085 () Bool)

(assert (=> b!3218085 (= e!2006505 call!232931)))

(declare-fun bm!232926 () Bool)

(declare-fun call!232932 () Regex!9989)

(assert (=> bm!232926 (= call!232932 (derivativeStep!2954 (regex!5230 (rule!7682 (h!41627 (t!239822 tokens!494)))) call!232930))))

(declare-fun call!232929 () List!36329)

(declare-fun bm!232927 () Bool)

(assert (=> bm!232927 (= call!232931 (findLongestMatchInner!835 call!232932 lt!1089254 (+ (size!27294 Nil!36205) 1) call!232929 lt!1088680 (size!27294 lt!1088680)))))

(declare-fun b!3218086 () Bool)

(declare-fun c!540985 () Bool)

(assert (=> b!3218086 (= c!540985 call!232934)))

(declare-fun lt!1089270 () Unit!50722)

(declare-fun lt!1089264 () Unit!50722)

(assert (=> b!3218086 (= lt!1089270 lt!1089264)))

(assert (=> b!3218086 (= lt!1088680 Nil!36205)))

(assert (=> b!3218086 (= lt!1089264 call!232928)))

(declare-fun lt!1089269 () Unit!50722)

(declare-fun lt!1089260 () Unit!50722)

(assert (=> b!3218086 (= lt!1089269 lt!1089260)))

(assert (=> b!3218086 call!232927))

(assert (=> b!3218086 (= lt!1089260 call!232933)))

(assert (=> b!3218086 (= e!2006501 e!2006506)))

(declare-fun bm!232928 () Bool)

(assert (=> bm!232928 (= call!232929 (tail!5218 lt!1088680))))

(declare-fun bm!232929 () Bool)

(assert (=> bm!232929 (= call!232934 (nullable!3401 (regex!5230 (rule!7682 (h!41627 (t!239822 tokens!494))))))))

(declare-fun b!3218087 () Bool)

(assert (=> b!3218087 (= e!2006502 (>= (size!27294 (_1!20949 lt!1089255)) (size!27294 Nil!36205)))))

(assert (= (and d!883310 c!540991) b!3218083))

(assert (= (and d!883310 (not c!540991)) b!3218079))

(assert (= (and b!3218079 c!540986) b!3218086))

(assert (= (and b!3218079 (not c!540986)) b!3218075))

(assert (= (and b!3218086 c!540985) b!3218084))

(assert (= (and b!3218086 (not c!540985)) b!3218074))

(assert (= (and b!3218075 c!540983) b!3218077))

(assert (= (and b!3218075 (not c!540983)) b!3218076))

(assert (= (and b!3218075 c!540989) b!3218080))

(assert (= (and b!3218075 (not c!540989)) b!3218085))

(assert (= (and b!3218080 c!540990) b!3218082))

(assert (= (and b!3218080 (not c!540990)) b!3218078))

(assert (= (or b!3218080 b!3218085) bm!232925))

(assert (= (or b!3218080 b!3218085) bm!232928))

(assert (= (or b!3218080 b!3218085) bm!232926))

(assert (= (or b!3218080 b!3218085) bm!232927))

(assert (= (or b!3218086 b!3218077) bm!232923))

(assert (= (or b!3218086 b!3218077) bm!232922))

(assert (= (or b!3218086 b!3218077) bm!232924))

(assert (= (or b!3218086 b!3218075) bm!232929))

(assert (= (and d!883310 res!1310092) b!3218081))

(assert (= (and b!3218081 (not res!1310089)) b!3218087))

(declare-fun m!3492455 () Bool)

(assert (=> bm!232924 m!3492455))

(declare-fun m!3492457 () Bool)

(assert (=> b!3218080 m!3492457))

(assert (=> bm!232927 m!3490399))

(declare-fun m!3492459 () Bool)

(assert (=> bm!232927 m!3492459))

(declare-fun m!3492461 () Bool)

(assert (=> d!883310 m!3492461))

(declare-fun m!3492463 () Bool)

(assert (=> d!883310 m!3492463))

(declare-fun m!3492465 () Bool)

(assert (=> d!883310 m!3492465))

(assert (=> d!883310 m!3490733))

(declare-fun m!3492467 () Bool)

(assert (=> d!883310 m!3492467))

(declare-fun m!3492469 () Bool)

(assert (=> d!883310 m!3492469))

(declare-fun m!3492471 () Bool)

(assert (=> d!883310 m!3492471))

(assert (=> d!883310 m!3492463))

(declare-fun m!3492473 () Bool)

(assert (=> d!883310 m!3492473))

(declare-fun m!3492475 () Bool)

(assert (=> b!3218087 m!3492475))

(assert (=> b!3218087 m!3491355))

(assert (=> b!3218075 m!3492461))

(assert (=> b!3218075 m!3490399))

(declare-fun m!3492477 () Bool)

(assert (=> b!3218075 m!3492477))

(declare-fun m!3492479 () Bool)

(assert (=> b!3218075 m!3492479))

(assert (=> b!3218075 m!3490591))

(assert (=> b!3218075 m!3492461))

(declare-fun m!3492481 () Bool)

(assert (=> b!3218075 m!3492481))

(declare-fun m!3492483 () Bool)

(assert (=> b!3218075 m!3492483))

(declare-fun m!3492485 () Bool)

(assert (=> b!3218075 m!3492485))

(assert (=> b!3218075 m!3491355))

(assert (=> b!3218075 m!3490337))

(declare-fun m!3492487 () Bool)

(assert (=> b!3218075 m!3492487))

(assert (=> b!3218075 m!3492477))

(declare-fun m!3492489 () Bool)

(assert (=> b!3218075 m!3492489))

(assert (=> b!3218075 m!3492487))

(declare-fun m!3492491 () Bool)

(assert (=> b!3218075 m!3492491))

(declare-fun m!3492493 () Bool)

(assert (=> b!3218075 m!3492493))

(declare-fun m!3492495 () Bool)

(assert (=> bm!232926 m!3492495))

(declare-fun m!3492497 () Bool)

(assert (=> bm!232923 m!3492497))

(assert (=> bm!232925 m!3490337))

(assert (=> bm!232928 m!3490591))

(declare-fun m!3492499 () Bool)

(assert (=> b!3218081 m!3492499))

(assert (=> bm!232929 m!3490735))

(declare-fun m!3492501 () Bool)

(assert (=> bm!232922 m!3492501))

(assert (=> b!3217543 d!883310))

(declare-fun d!883366 () Bool)

(declare-fun lt!1089276 () Int)

(assert (=> d!883366 (>= lt!1089276 0)))

(declare-fun e!2006514 () Int)

(assert (=> d!883366 (= lt!1089276 e!2006514)))

(declare-fun c!540999 () Bool)

(assert (=> d!883366 (= c!540999 ((_ is Nil!36205) Nil!36205))))

(assert (=> d!883366 (= (size!27294 Nil!36205) lt!1089276)))

(declare-fun b!3218102 () Bool)

(assert (=> b!3218102 (= e!2006514 0)))

(declare-fun b!3218103 () Bool)

(assert (=> b!3218103 (= e!2006514 (+ 1 (size!27294 (t!239820 Nil!36205))))))

(assert (= (and d!883366 c!540999) b!3218102))

(assert (= (and d!883366 (not c!540999)) b!3218103))

(declare-fun m!3492503 () Bool)

(assert (=> b!3218103 m!3492503))

(assert (=> b!3217543 d!883366))

(assert (=> b!3217543 d!882920))

(declare-fun d!883368 () Bool)

(assert (=> d!883368 (= (get!11532 (getRuleFromTag!935 thiss!18206 rules!2135 (tag!5760 (rule!7682 (h!41627 (t!239822 tokens!494)))))) (v!35732 (getRuleFromTag!935 thiss!18206 rules!2135 (tag!5760 (rule!7682 (h!41627 (t!239822 tokens!494)))))))))

(assert (=> b!3217153 d!883368))

(declare-fun b!3218106 () Bool)

(declare-fun e!2006519 () Bool)

(declare-fun lt!1089278 () Bool)

(assert (=> b!3218106 (= e!2006519 (not lt!1089278))))

(declare-fun b!3218107 () Bool)

(declare-fun e!2006516 () Bool)

(declare-fun e!2006521 () Bool)

(assert (=> b!3218107 (= e!2006516 e!2006521)))

(declare-fun res!1310097 () Bool)

(assert (=> b!3218107 (=> res!1310097 e!2006521)))

(declare-fun call!232939 () Bool)

(assert (=> b!3218107 (= res!1310097 call!232939)))

(declare-fun b!3218108 () Bool)

(declare-fun res!1310102 () Bool)

(declare-fun e!2006520 () Bool)

(assert (=> b!3218108 (=> (not res!1310102) (not e!2006520))))

(assert (=> b!3218108 (= res!1310102 (isEmpty!20308 (tail!5218 (list!12887 (charsOf!3246 (h!41627 (t!239822 tokens!494)))))))))

(declare-fun b!3218109 () Bool)

(assert (=> b!3218109 (= e!2006520 (= (head!7053 (list!12887 (charsOf!3246 (h!41627 (t!239822 tokens!494))))) (c!540716 (regex!5230 (get!11532 (getRuleFromTag!935 thiss!18206 rules!2135 (tag!5760 (rule!7682 (h!41627 (t!239822 tokens!494))))))))))))

(declare-fun b!3218110 () Bool)

(declare-fun res!1310098 () Bool)

(declare-fun e!2006518 () Bool)

(assert (=> b!3218110 (=> res!1310098 e!2006518)))

(assert (=> b!3218110 (= res!1310098 e!2006520)))

(declare-fun res!1310095 () Bool)

(assert (=> b!3218110 (=> (not res!1310095) (not e!2006520))))

(assert (=> b!3218110 (= res!1310095 lt!1089278)))

(declare-fun b!3218111 () Bool)

(assert (=> b!3218111 (= e!2006518 e!2006516)))

(declare-fun res!1310099 () Bool)

(assert (=> b!3218111 (=> (not res!1310099) (not e!2006516))))

(assert (=> b!3218111 (= res!1310099 (not lt!1089278))))

(declare-fun b!3218113 () Bool)

(declare-fun e!2006522 () Bool)

(assert (=> b!3218113 (= e!2006522 (= lt!1089278 call!232939))))

(declare-fun bm!232934 () Bool)

(assert (=> bm!232934 (= call!232939 (isEmpty!20308 (list!12887 (charsOf!3246 (h!41627 (t!239822 tokens!494))))))))

(declare-fun b!3218114 () Bool)

(assert (=> b!3218114 (= e!2006521 (not (= (head!7053 (list!12887 (charsOf!3246 (h!41627 (t!239822 tokens!494))))) (c!540716 (regex!5230 (get!11532 (getRuleFromTag!935 thiss!18206 rules!2135 (tag!5760 (rule!7682 (h!41627 (t!239822 tokens!494)))))))))))))

(declare-fun b!3218115 () Bool)

(declare-fun res!1310096 () Bool)

(assert (=> b!3218115 (=> res!1310096 e!2006521)))

(assert (=> b!3218115 (= res!1310096 (not (isEmpty!20308 (tail!5218 (list!12887 (charsOf!3246 (h!41627 (t!239822 tokens!494))))))))))

(declare-fun b!3218116 () Bool)

(declare-fun e!2006515 () Bool)

(assert (=> b!3218116 (= e!2006515 (matchR!4623 (derivativeStep!2954 (regex!5230 (get!11532 (getRuleFromTag!935 thiss!18206 rules!2135 (tag!5760 (rule!7682 (h!41627 (t!239822 tokens!494))))))) (head!7053 (list!12887 (charsOf!3246 (h!41627 (t!239822 tokens!494)))))) (tail!5218 (list!12887 (charsOf!3246 (h!41627 (t!239822 tokens!494)))))))))

(declare-fun b!3218112 () Bool)

(assert (=> b!3218112 (= e!2006515 (nullable!3401 (regex!5230 (get!11532 (getRuleFromTag!935 thiss!18206 rules!2135 (tag!5760 (rule!7682 (h!41627 (t!239822 tokens!494)))))))))))

(declare-fun d!883370 () Bool)

(assert (=> d!883370 e!2006522))

(declare-fun c!541003 () Bool)

(assert (=> d!883370 (= c!541003 ((_ is EmptyExpr!9989) (regex!5230 (get!11532 (getRuleFromTag!935 thiss!18206 rules!2135 (tag!5760 (rule!7682 (h!41627 (t!239822 tokens!494)))))))))))

(assert (=> d!883370 (= lt!1089278 e!2006515)))

(declare-fun c!541002 () Bool)

(assert (=> d!883370 (= c!541002 (isEmpty!20308 (list!12887 (charsOf!3246 (h!41627 (t!239822 tokens!494))))))))

(assert (=> d!883370 (validRegex!4557 (regex!5230 (get!11532 (getRuleFromTag!935 thiss!18206 rules!2135 (tag!5760 (rule!7682 (h!41627 (t!239822 tokens!494))))))))))

(assert (=> d!883370 (= (matchR!4623 (regex!5230 (get!11532 (getRuleFromTag!935 thiss!18206 rules!2135 (tag!5760 (rule!7682 (h!41627 (t!239822 tokens!494))))))) (list!12887 (charsOf!3246 (h!41627 (t!239822 tokens!494))))) lt!1089278)))

(declare-fun b!3218117 () Bool)

(declare-fun res!1310101 () Bool)

(assert (=> b!3218117 (=> (not res!1310101) (not e!2006520))))

(assert (=> b!3218117 (= res!1310101 (not call!232939))))

(declare-fun b!3218118 () Bool)

(declare-fun res!1310100 () Bool)

(assert (=> b!3218118 (=> res!1310100 e!2006518)))

(assert (=> b!3218118 (= res!1310100 (not ((_ is ElementMatch!9989) (regex!5230 (get!11532 (getRuleFromTag!935 thiss!18206 rules!2135 (tag!5760 (rule!7682 (h!41627 (t!239822 tokens!494))))))))))))

(assert (=> b!3218118 (= e!2006519 e!2006518)))

(declare-fun b!3218119 () Bool)

(assert (=> b!3218119 (= e!2006522 e!2006519)))

(declare-fun c!541000 () Bool)

(assert (=> b!3218119 (= c!541000 ((_ is EmptyLang!9989) (regex!5230 (get!11532 (getRuleFromTag!935 thiss!18206 rules!2135 (tag!5760 (rule!7682 (h!41627 (t!239822 tokens!494)))))))))))

(assert (= (and d!883370 c!541002) b!3218112))

(assert (= (and d!883370 (not c!541002)) b!3218116))

(assert (= (and d!883370 c!541003) b!3218113))

(assert (= (and d!883370 (not c!541003)) b!3218119))

(assert (= (and b!3218119 c!541000) b!3218106))

(assert (= (and b!3218119 (not c!541000)) b!3218118))

(assert (= (and b!3218118 (not res!1310100)) b!3218110))

(assert (= (and b!3218110 res!1310095) b!3218117))

(assert (= (and b!3218117 res!1310101) b!3218108))

(assert (= (and b!3218108 res!1310102) b!3218109))

(assert (= (and b!3218110 (not res!1310098)) b!3218111))

(assert (= (and b!3218111 res!1310099) b!3218107))

(assert (= (and b!3218107 (not res!1310097)) b!3218115))

(assert (= (and b!3218115 (not res!1310096)) b!3218114))

(assert (= (or b!3218113 b!3218107 b!3218117) bm!232934))

(assert (=> d!883370 m!3490475))

(declare-fun m!3492509 () Bool)

(assert (=> d!883370 m!3492509))

(declare-fun m!3492511 () Bool)

(assert (=> d!883370 m!3492511))

(assert (=> b!3218115 m!3490475))

(declare-fun m!3492513 () Bool)

(assert (=> b!3218115 m!3492513))

(assert (=> b!3218115 m!3492513))

(declare-fun m!3492515 () Bool)

(assert (=> b!3218115 m!3492515))

(assert (=> b!3218109 m!3490475))

(declare-fun m!3492517 () Bool)

(assert (=> b!3218109 m!3492517))

(declare-fun m!3492519 () Bool)

(assert (=> b!3218112 m!3492519))

(assert (=> b!3218108 m!3490475))

(assert (=> b!3218108 m!3492513))

(assert (=> b!3218108 m!3492513))

(assert (=> b!3218108 m!3492515))

(assert (=> b!3218116 m!3490475))

(assert (=> b!3218116 m!3492517))

(assert (=> b!3218116 m!3492517))

(declare-fun m!3492521 () Bool)

(assert (=> b!3218116 m!3492521))

(assert (=> b!3218116 m!3490475))

(assert (=> b!3218116 m!3492513))

(assert (=> b!3218116 m!3492521))

(assert (=> b!3218116 m!3492513))

(declare-fun m!3492523 () Bool)

(assert (=> b!3218116 m!3492523))

(assert (=> bm!232934 m!3490475))

(assert (=> bm!232934 m!3492509))

(assert (=> b!3218114 m!3490475))

(assert (=> b!3218114 m!3492517))

(assert (=> b!3217153 d!883370))

(assert (=> b!3217153 d!883194))

(assert (=> b!3217153 d!883208))

(assert (=> b!3217153 d!883162))

(declare-fun d!883376 () Bool)

(declare-fun lt!1089279 () Int)

(assert (=> d!883376 (>= lt!1089279 0)))

(declare-fun e!2006523 () Int)

(assert (=> d!883376 (= lt!1089279 e!2006523)))

(declare-fun c!541004 () Bool)

(assert (=> d!883376 (= c!541004 ((_ is Nil!36205) (t!239820 lt!1088680)))))

(assert (=> d!883376 (= (size!27294 (t!239820 lt!1088680)) lt!1089279)))

(declare-fun b!3218120 () Bool)

(assert (=> b!3218120 (= e!2006523 0)))

(declare-fun b!3218121 () Bool)

(assert (=> b!3218121 (= e!2006523 (+ 1 (size!27294 (t!239820 (t!239820 lt!1088680)))))))

(assert (= (and d!883376 c!541004) b!3218120))

(assert (= (and d!883376 (not c!541004)) b!3218121))

(declare-fun m!3492525 () Bool)

(assert (=> b!3218121 m!3492525))

(assert (=> b!3217160 d!883376))

(declare-fun d!883378 () Bool)

(assert (=> d!883378 (= (list!12887 lt!1089020) (list!12889 (c!540717 lt!1089020)))))

(declare-fun bs!542331 () Bool)

(assert (= bs!542331 d!883378))

(declare-fun m!3492527 () Bool)

(assert (=> bs!542331 m!3492527))

(assert (=> d!883096 d!883378))

(declare-fun d!883380 () Bool)

(declare-fun c!541005 () Bool)

(assert (=> d!883380 (= c!541005 ((_ is Cons!36207) (list!12890 lt!1088685)))))

(declare-fun e!2006524 () List!36329)

(assert (=> d!883380 (= (printList!1369 thiss!18206 (list!12890 lt!1088685)) e!2006524)))

(declare-fun b!3218122 () Bool)

(assert (=> b!3218122 (= e!2006524 (++!8698 (list!12887 (charsOf!3246 (h!41627 (list!12890 lt!1088685)))) (printList!1369 thiss!18206 (t!239822 (list!12890 lt!1088685)))))))

(declare-fun b!3218123 () Bool)

(assert (=> b!3218123 (= e!2006524 Nil!36205)))

(assert (= (and d!883380 c!541005) b!3218122))

(assert (= (and d!883380 (not c!541005)) b!3218123))

(declare-fun m!3492529 () Bool)

(assert (=> b!3218122 m!3492529))

(assert (=> b!3218122 m!3492529))

(declare-fun m!3492531 () Bool)

(assert (=> b!3218122 m!3492531))

(declare-fun m!3492533 () Bool)

(assert (=> b!3218122 m!3492533))

(assert (=> b!3218122 m!3492531))

(assert (=> b!3218122 m!3492533))

(declare-fun m!3492535 () Bool)

(assert (=> b!3218122 m!3492535))

(assert (=> d!883096 d!883380))

(declare-fun d!883382 () Bool)

(declare-fun list!12893 (Conc!10836) List!36331)

(assert (=> d!883382 (= (list!12890 lt!1088685) (list!12893 (c!540718 lt!1088685)))))

(declare-fun bs!542333 () Bool)

(assert (= bs!542333 d!883382))

(declare-fun m!3492539 () Bool)

(assert (=> bs!542333 m!3492539))

(assert (=> d!883096 d!883382))

(assert (=> d!883096 d!883150))

(assert (=> b!3217740 d!882912))

(assert (=> b!3217740 d!882910))

(declare-fun b!3218126 () Bool)

(declare-fun res!1310104 () Bool)

(declare-fun e!2006525 () Bool)

(assert (=> b!3218126 (=> (not res!1310104) (not e!2006525))))

(declare-fun lt!1089283 () List!36329)

(assert (=> b!3218126 (= res!1310104 (= (size!27294 lt!1089283) (+ (size!27294 (++!8698 (list!12887 (charsOf!3246 (h!41627 tokens!494))) (list!12887 (charsOf!3246 separatorToken!241)))) (size!27294 (printWithSeparatorTokenList!164 thiss!18206 (t!239822 tokens!494) separatorToken!241)))))))

(declare-fun b!3218127 () Bool)

(assert (=> b!3218127 (= e!2006525 (or (not (= (printWithSeparatorTokenList!164 thiss!18206 (t!239822 tokens!494) separatorToken!241) Nil!36205)) (= lt!1089283 (++!8698 (list!12887 (charsOf!3246 (h!41627 tokens!494))) (list!12887 (charsOf!3246 separatorToken!241))))))))

(declare-fun d!883386 () Bool)

(assert (=> d!883386 e!2006525))

(declare-fun res!1310103 () Bool)

(assert (=> d!883386 (=> (not res!1310103) (not e!2006525))))

(assert (=> d!883386 (= res!1310103 (= (content!4899 lt!1089283) ((_ map or) (content!4899 (++!8698 (list!12887 (charsOf!3246 (h!41627 tokens!494))) (list!12887 (charsOf!3246 separatorToken!241)))) (content!4899 (printWithSeparatorTokenList!164 thiss!18206 (t!239822 tokens!494) separatorToken!241)))))))

(declare-fun e!2006526 () List!36329)

(assert (=> d!883386 (= lt!1089283 e!2006526)))

(declare-fun c!541006 () Bool)

(assert (=> d!883386 (= c!541006 ((_ is Nil!36205) (++!8698 (list!12887 (charsOf!3246 (h!41627 tokens!494))) (list!12887 (charsOf!3246 separatorToken!241)))))))

(assert (=> d!883386 (= (++!8698 (++!8698 (list!12887 (charsOf!3246 (h!41627 tokens!494))) (list!12887 (charsOf!3246 separatorToken!241))) (printWithSeparatorTokenList!164 thiss!18206 (t!239822 tokens!494) separatorToken!241)) lt!1089283)))

(declare-fun b!3218124 () Bool)

(assert (=> b!3218124 (= e!2006526 (printWithSeparatorTokenList!164 thiss!18206 (t!239822 tokens!494) separatorToken!241))))

(declare-fun b!3218125 () Bool)

(assert (=> b!3218125 (= e!2006526 (Cons!36205 (h!41625 (++!8698 (list!12887 (charsOf!3246 (h!41627 tokens!494))) (list!12887 (charsOf!3246 separatorToken!241)))) (++!8698 (t!239820 (++!8698 (list!12887 (charsOf!3246 (h!41627 tokens!494))) (list!12887 (charsOf!3246 separatorToken!241)))) (printWithSeparatorTokenList!164 thiss!18206 (t!239822 tokens!494) separatorToken!241))))))

(assert (= (and d!883386 c!541006) b!3218124))

(assert (= (and d!883386 (not c!541006)) b!3218125))

(assert (= (and d!883386 res!1310103) b!3218126))

(assert (= (and b!3218126 res!1310104) b!3218127))

(declare-fun m!3492541 () Bool)

(assert (=> b!3218126 m!3492541))

(assert (=> b!3218126 m!3492079))

(declare-fun m!3492543 () Bool)

(assert (=> b!3218126 m!3492543))

(assert (=> b!3218126 m!3490473))

(declare-fun m!3492545 () Bool)

(assert (=> b!3218126 m!3492545))

(declare-fun m!3492547 () Bool)

(assert (=> d!883386 m!3492547))

(assert (=> d!883386 m!3492079))

(declare-fun m!3492549 () Bool)

(assert (=> d!883386 m!3492549))

(assert (=> d!883386 m!3490473))

(declare-fun m!3492551 () Bool)

(assert (=> d!883386 m!3492551))

(assert (=> b!3218125 m!3490473))

(declare-fun m!3492553 () Bool)

(assert (=> b!3218125 m!3492553))

(assert (=> b!3217740 d!883386))

(assert (=> b!3217740 d!883192))

(assert (=> b!3217740 d!883206))

(declare-fun b!3218130 () Bool)

(declare-fun res!1310106 () Bool)

(declare-fun e!2006527 () Bool)

(assert (=> b!3218130 (=> (not res!1310106) (not e!2006527))))

(declare-fun lt!1089284 () List!36329)

(assert (=> b!3218130 (= res!1310106 (= (size!27294 lt!1089284) (+ (size!27294 (list!12887 (charsOf!3246 (h!41627 tokens!494)))) (size!27294 (list!12887 (charsOf!3246 separatorToken!241))))))))

(declare-fun b!3218131 () Bool)

(assert (=> b!3218131 (= e!2006527 (or (not (= (list!12887 (charsOf!3246 separatorToken!241)) Nil!36205)) (= lt!1089284 (list!12887 (charsOf!3246 (h!41627 tokens!494))))))))

(declare-fun d!883388 () Bool)

(assert (=> d!883388 e!2006527))

(declare-fun res!1310105 () Bool)

(assert (=> d!883388 (=> (not res!1310105) (not e!2006527))))

(assert (=> d!883388 (= res!1310105 (= (content!4899 lt!1089284) ((_ map or) (content!4899 (list!12887 (charsOf!3246 (h!41627 tokens!494)))) (content!4899 (list!12887 (charsOf!3246 separatorToken!241))))))))

(declare-fun e!2006528 () List!36329)

(assert (=> d!883388 (= lt!1089284 e!2006528)))

(declare-fun c!541007 () Bool)

(assert (=> d!883388 (= c!541007 ((_ is Nil!36205) (list!12887 (charsOf!3246 (h!41627 tokens!494)))))))

(assert (=> d!883388 (= (++!8698 (list!12887 (charsOf!3246 (h!41627 tokens!494))) (list!12887 (charsOf!3246 separatorToken!241))) lt!1089284)))

(declare-fun b!3218128 () Bool)

(assert (=> b!3218128 (= e!2006528 (list!12887 (charsOf!3246 separatorToken!241)))))

(declare-fun b!3218129 () Bool)

(assert (=> b!3218129 (= e!2006528 (Cons!36205 (h!41625 (list!12887 (charsOf!3246 (h!41627 tokens!494)))) (++!8698 (t!239820 (list!12887 (charsOf!3246 (h!41627 tokens!494)))) (list!12887 (charsOf!3246 separatorToken!241)))))))

(assert (= (and d!883388 c!541007) b!3218128))

(assert (= (and d!883388 (not c!541007)) b!3218129))

(assert (= (and d!883388 res!1310105) b!3218130))

(assert (= (and b!3218130 res!1310106) b!3218131))

(declare-fun m!3492555 () Bool)

(assert (=> b!3218130 m!3492555))

(assert (=> b!3218130 m!3490467))

(declare-fun m!3492557 () Bool)

(assert (=> b!3218130 m!3492557))

(assert (=> b!3218130 m!3490481))

(declare-fun m!3492559 () Bool)

(assert (=> b!3218130 m!3492559))

(declare-fun m!3492561 () Bool)

(assert (=> d!883388 m!3492561))

(assert (=> d!883388 m!3490467))

(declare-fun m!3492563 () Bool)

(assert (=> d!883388 m!3492563))

(assert (=> d!883388 m!3490481))

(declare-fun m!3492565 () Bool)

(assert (=> d!883388 m!3492565))

(assert (=> b!3218129 m!3490481))

(declare-fun m!3492567 () Bool)

(assert (=> b!3218129 m!3492567))

(assert (=> b!3217740 d!883388))

(assert (=> b!3217740 d!883204))

(declare-fun b!3218134 () Bool)

(declare-fun e!2006534 () Bool)

(declare-fun lt!1089285 () Bool)

(assert (=> b!3218134 (= e!2006534 (not lt!1089285))))

(declare-fun b!3218135 () Bool)

(declare-fun e!2006532 () Bool)

(declare-fun e!2006536 () Bool)

(assert (=> b!3218135 (= e!2006532 e!2006536)))

(declare-fun res!1310111 () Bool)

(assert (=> b!3218135 (=> res!1310111 e!2006536)))

(declare-fun call!232940 () Bool)

(assert (=> b!3218135 (= res!1310111 call!232940)))

(declare-fun b!3218136 () Bool)

(declare-fun res!1310116 () Bool)

(declare-fun e!2006535 () Bool)

(assert (=> b!3218136 (=> (not res!1310116) (not e!2006535))))

(assert (=> b!3218136 (= res!1310116 (isEmpty!20308 (tail!5218 (list!12887 (charsOf!3246 (_1!20946 (get!11534 lt!1088911)))))))))

(declare-fun b!3218137 () Bool)

(assert (=> b!3218137 (= e!2006535 (= (head!7053 (list!12887 (charsOf!3246 (_1!20946 (get!11534 lt!1088911))))) (c!540716 (regex!5230 (rule!7682 (_1!20946 (get!11534 lt!1088911)))))))))

(declare-fun b!3218138 () Bool)

(declare-fun res!1310112 () Bool)

(declare-fun e!2006533 () Bool)

(assert (=> b!3218138 (=> res!1310112 e!2006533)))

(assert (=> b!3218138 (= res!1310112 e!2006535)))

(declare-fun res!1310109 () Bool)

(assert (=> b!3218138 (=> (not res!1310109) (not e!2006535))))

(assert (=> b!3218138 (= res!1310109 lt!1089285)))

(declare-fun b!3218139 () Bool)

(assert (=> b!3218139 (= e!2006533 e!2006532)))

(declare-fun res!1310113 () Bool)

(assert (=> b!3218139 (=> (not res!1310113) (not e!2006532))))

(assert (=> b!3218139 (= res!1310113 (not lt!1089285))))

(declare-fun b!3218141 () Bool)

(declare-fun e!2006537 () Bool)

(assert (=> b!3218141 (= e!2006537 (= lt!1089285 call!232940))))

(declare-fun bm!232935 () Bool)

(assert (=> bm!232935 (= call!232940 (isEmpty!20308 (list!12887 (charsOf!3246 (_1!20946 (get!11534 lt!1088911))))))))

(declare-fun b!3218142 () Bool)

(assert (=> b!3218142 (= e!2006536 (not (= (head!7053 (list!12887 (charsOf!3246 (_1!20946 (get!11534 lt!1088911))))) (c!540716 (regex!5230 (rule!7682 (_1!20946 (get!11534 lt!1088911))))))))))

(declare-fun b!3218143 () Bool)

(declare-fun res!1310110 () Bool)

(assert (=> b!3218143 (=> res!1310110 e!2006536)))

(assert (=> b!3218143 (= res!1310110 (not (isEmpty!20308 (tail!5218 (list!12887 (charsOf!3246 (_1!20946 (get!11534 lt!1088911))))))))))

(declare-fun b!3218144 () Bool)

(declare-fun e!2006531 () Bool)

(assert (=> b!3218144 (= e!2006531 (matchR!4623 (derivativeStep!2954 (regex!5230 (rule!7682 (_1!20946 (get!11534 lt!1088911)))) (head!7053 (list!12887 (charsOf!3246 (_1!20946 (get!11534 lt!1088911)))))) (tail!5218 (list!12887 (charsOf!3246 (_1!20946 (get!11534 lt!1088911)))))))))

(declare-fun b!3218140 () Bool)

(assert (=> b!3218140 (= e!2006531 (nullable!3401 (regex!5230 (rule!7682 (_1!20946 (get!11534 lt!1088911))))))))

(declare-fun d!883390 () Bool)

(assert (=> d!883390 e!2006537))

(declare-fun c!541010 () Bool)

(assert (=> d!883390 (= c!541010 ((_ is EmptyExpr!9989) (regex!5230 (rule!7682 (_1!20946 (get!11534 lt!1088911))))))))

(assert (=> d!883390 (= lt!1089285 e!2006531)))

(declare-fun c!541009 () Bool)

(assert (=> d!883390 (= c!541009 (isEmpty!20308 (list!12887 (charsOf!3246 (_1!20946 (get!11534 lt!1088911))))))))

(assert (=> d!883390 (validRegex!4557 (regex!5230 (rule!7682 (_1!20946 (get!11534 lt!1088911)))))))

(assert (=> d!883390 (= (matchR!4623 (regex!5230 (rule!7682 (_1!20946 (get!11534 lt!1088911)))) (list!12887 (charsOf!3246 (_1!20946 (get!11534 lt!1088911))))) lt!1089285)))

(declare-fun b!3218145 () Bool)

(declare-fun res!1310115 () Bool)

(assert (=> b!3218145 (=> (not res!1310115) (not e!2006535))))

(assert (=> b!3218145 (= res!1310115 (not call!232940))))

(declare-fun b!3218146 () Bool)

(declare-fun res!1310114 () Bool)

(assert (=> b!3218146 (=> res!1310114 e!2006533)))

(assert (=> b!3218146 (= res!1310114 (not ((_ is ElementMatch!9989) (regex!5230 (rule!7682 (_1!20946 (get!11534 lt!1088911)))))))))

(assert (=> b!3218146 (= e!2006534 e!2006533)))

(declare-fun b!3218147 () Bool)

(assert (=> b!3218147 (= e!2006537 e!2006534)))

(declare-fun c!541008 () Bool)

(assert (=> b!3218147 (= c!541008 ((_ is EmptyLang!9989) (regex!5230 (rule!7682 (_1!20946 (get!11534 lt!1088911))))))))

(assert (= (and d!883390 c!541009) b!3218140))

(assert (= (and d!883390 (not c!541009)) b!3218144))

(assert (= (and d!883390 c!541010) b!3218141))

(assert (= (and d!883390 (not c!541010)) b!3218147))

(assert (= (and b!3218147 c!541008) b!3218134))

(assert (= (and b!3218147 (not c!541008)) b!3218146))

(assert (= (and b!3218146 (not res!1310114)) b!3218138))

(assert (= (and b!3218138 res!1310109) b!3218145))

(assert (= (and b!3218145 res!1310115) b!3218136))

(assert (= (and b!3218136 res!1310116) b!3218137))

(assert (= (and b!3218138 (not res!1310112)) b!3218139))

(assert (= (and b!3218139 res!1310113) b!3218135))

(assert (= (and b!3218135 (not res!1310111)) b!3218143))

(assert (= (and b!3218143 (not res!1310110)) b!3218142))

(assert (= (or b!3218141 b!3218135 b!3218145) bm!232935))

(assert (=> d!883390 m!3491063))

(declare-fun m!3492569 () Bool)

(assert (=> d!883390 m!3492569))

(declare-fun m!3492571 () Bool)

(assert (=> d!883390 m!3492571))

(assert (=> b!3218143 m!3491063))

(declare-fun m!3492573 () Bool)

(assert (=> b!3218143 m!3492573))

(assert (=> b!3218143 m!3492573))

(declare-fun m!3492575 () Bool)

(assert (=> b!3218143 m!3492575))

(assert (=> b!3218137 m!3491063))

(declare-fun m!3492577 () Bool)

(assert (=> b!3218137 m!3492577))

(declare-fun m!3492579 () Bool)

(assert (=> b!3218140 m!3492579))

(assert (=> b!3218136 m!3491063))

(assert (=> b!3218136 m!3492573))

(assert (=> b!3218136 m!3492573))

(assert (=> b!3218136 m!3492575))

(assert (=> b!3218144 m!3491063))

(assert (=> b!3218144 m!3492577))

(assert (=> b!3218144 m!3492577))

(declare-fun m!3492581 () Bool)

(assert (=> b!3218144 m!3492581))

(assert (=> b!3218144 m!3491063))

(assert (=> b!3218144 m!3492573))

(assert (=> b!3218144 m!3492581))

(assert (=> b!3218144 m!3492573))

(declare-fun m!3492585 () Bool)

(assert (=> b!3218144 m!3492585))

(assert (=> bm!232935 m!3491063))

(assert (=> bm!232935 m!3492569))

(assert (=> b!3218142 m!3491063))

(assert (=> b!3218142 m!3492577))

(assert (=> b!3217205 d!883390))

(declare-fun d!883394 () Bool)

(assert (=> d!883394 (= (get!11534 lt!1088911) (v!35733 lt!1088911))))

(assert (=> b!3217205 d!883394))

(declare-fun d!883396 () Bool)

(assert (=> d!883396 (= (list!12887 (charsOf!3246 (_1!20946 (get!11534 lt!1088911)))) (list!12889 (c!540717 (charsOf!3246 (_1!20946 (get!11534 lt!1088911))))))))

(declare-fun bs!542335 () Bool)

(assert (= bs!542335 d!883396))

(declare-fun m!3492587 () Bool)

(assert (=> bs!542335 m!3492587))

(assert (=> b!3217205 d!883396))

(declare-fun d!883398 () Bool)

(declare-fun lt!1089286 () BalanceConc!21284)

(assert (=> d!883398 (= (list!12887 lt!1089286) (originalCharacters!5944 (_1!20946 (get!11534 lt!1088911))))))

(assert (=> d!883398 (= lt!1089286 (dynLambda!14648 (toChars!7181 (transformation!5230 (rule!7682 (_1!20946 (get!11534 lt!1088911))))) (value!169515 (_1!20946 (get!11534 lt!1088911)))))))

(assert (=> d!883398 (= (charsOf!3246 (_1!20946 (get!11534 lt!1088911))) lt!1089286)))

(declare-fun b_lambda!88459 () Bool)

(assert (=> (not b_lambda!88459) (not d!883398)))

(declare-fun t!239945 () Bool)

(declare-fun tb!158847 () Bool)

(assert (=> (and b!3216778 (= (toChars!7181 (transformation!5230 (rule!7682 separatorToken!241))) (toChars!7181 (transformation!5230 (rule!7682 (_1!20946 (get!11534 lt!1088911)))))) t!239945) tb!158847))

(declare-fun b!3218150 () Bool)

(declare-fun e!2006538 () Bool)

(declare-fun tp!1014341 () Bool)

(assert (=> b!3218150 (= e!2006538 (and (inv!49077 (c!540717 (dynLambda!14648 (toChars!7181 (transformation!5230 (rule!7682 (_1!20946 (get!11534 lt!1088911))))) (value!169515 (_1!20946 (get!11534 lt!1088911)))))) tp!1014341))))

(declare-fun result!201268 () Bool)

(assert (=> tb!158847 (= result!201268 (and (inv!49078 (dynLambda!14648 (toChars!7181 (transformation!5230 (rule!7682 (_1!20946 (get!11534 lt!1088911))))) (value!169515 (_1!20946 (get!11534 lt!1088911))))) e!2006538))))

(assert (= tb!158847 b!3218150))

(declare-fun m!3492589 () Bool)

(assert (=> b!3218150 m!3492589))

(declare-fun m!3492591 () Bool)

(assert (=> tb!158847 m!3492591))

(assert (=> d!883398 t!239945))

(declare-fun b_and!214887 () Bool)

(assert (= b_and!214877 (and (=> t!239945 result!201268) b_and!214887)))

(declare-fun tb!158849 () Bool)

(declare-fun t!239947 () Bool)

(assert (=> (and b!3217757 (= (toChars!7181 (transformation!5230 (h!41626 (t!239821 rules!2135)))) (toChars!7181 (transformation!5230 (rule!7682 (_1!20946 (get!11534 lt!1088911)))))) t!239947) tb!158849))

(declare-fun result!201270 () Bool)

(assert (= result!201270 result!201268))

(assert (=> d!883398 t!239947))

(declare-fun b_and!214889 () Bool)

(assert (= b_and!214881 (and (=> t!239947 result!201270) b_and!214889)))

(declare-fun tb!158851 () Bool)

(declare-fun t!239949 () Bool)

(assert (=> (and b!3217774 (= (toChars!7181 (transformation!5230 (rule!7682 (h!41627 (t!239822 tokens!494))))) (toChars!7181 (transformation!5230 (rule!7682 (_1!20946 (get!11534 lt!1088911)))))) t!239949) tb!158851))

(declare-fun result!201272 () Bool)

(assert (= result!201272 result!201268))

(assert (=> d!883398 t!239949))

(declare-fun b_and!214891 () Bool)

(assert (= b_and!214885 (and (=> t!239949 result!201272) b_and!214891)))

(declare-fun tb!158853 () Bool)

(declare-fun t!239951 () Bool)

(assert (=> (and b!3216773 (= (toChars!7181 (transformation!5230 (h!41626 rules!2135))) (toChars!7181 (transformation!5230 (rule!7682 (_1!20946 (get!11534 lt!1088911)))))) t!239951) tb!158853))

(declare-fun result!201274 () Bool)

(assert (= result!201274 result!201268))

(assert (=> d!883398 t!239951))

(declare-fun b_and!214893 () Bool)

(assert (= b_and!214875 (and (=> t!239951 result!201274) b_and!214893)))

(declare-fun tb!158855 () Bool)

(declare-fun t!239953 () Bool)

(assert (=> (and b!3216775 (= (toChars!7181 (transformation!5230 (rule!7682 (h!41627 tokens!494)))) (toChars!7181 (transformation!5230 (rule!7682 (_1!20946 (get!11534 lt!1088911)))))) t!239953) tb!158855))

(declare-fun result!201276 () Bool)

(assert (= result!201276 result!201268))

(assert (=> d!883398 t!239953))

(declare-fun b_and!214895 () Bool)

(assert (= b_and!214873 (and (=> t!239953 result!201276) b_and!214895)))

(declare-fun m!3492593 () Bool)

(assert (=> d!883398 m!3492593))

(declare-fun m!3492595 () Bool)

(assert (=> d!883398 m!3492595))

(assert (=> b!3217205 d!883398))

(declare-fun d!883400 () Bool)

(declare-fun c!541015 () Bool)

(assert (=> d!883400 (= c!541015 ((_ is Nil!36205) (usedCharacters!546 (regex!5230 (rule!7682 separatorToken!241)))))))

(declare-fun e!2006546 () (InoxSet C!20164))

(assert (=> d!883400 (= (content!4899 (usedCharacters!546 (regex!5230 (rule!7682 separatorToken!241)))) e!2006546)))

(declare-fun b!3218162 () Bool)

(assert (=> b!3218162 (= e!2006546 ((as const (Array C!20164 Bool)) false))))

(declare-fun b!3218163 () Bool)

(assert (=> b!3218163 (= e!2006546 ((_ map or) (store ((as const (Array C!20164 Bool)) false) (h!41625 (usedCharacters!546 (regex!5230 (rule!7682 separatorToken!241)))) true) (content!4899 (t!239820 (usedCharacters!546 (regex!5230 (rule!7682 separatorToken!241)))))))))

(assert (= (and d!883400 c!541015) b!3218162))

(assert (= (and d!883400 (not c!541015)) b!3218163))

(declare-fun m!3492611 () Bool)

(assert (=> b!3218163 m!3492611))

(declare-fun m!3492613 () Bool)

(assert (=> b!3218163 m!3492613))

(assert (=> d!883146 d!883400))

(declare-fun d!883406 () Bool)

(declare-fun nullableFct!971 (Regex!9989) Bool)

(assert (=> d!883406 (= (nullable!3401 (regex!5230 lt!1088701)) (nullableFct!971 (regex!5230 lt!1088701)))))

(declare-fun bs!542336 () Bool)

(assert (= bs!542336 d!883406))

(declare-fun m!3492615 () Bool)

(assert (=> bs!542336 m!3492615))

(assert (=> b!3216930 d!883406))

(assert (=> b!3217016 d!883140))

(declare-fun d!883408 () Bool)

(assert (=> d!883408 true))

(declare-fun order!18533 () Int)

(declare-fun lambda!117673 () Int)

(declare-fun dynLambda!14654 (Int Int) Int)

(assert (=> d!883408 (< (dynLambda!14645 order!18525 (toValue!7322 (transformation!5230 (rule!7682 separatorToken!241)))) (dynLambda!14654 order!18533 lambda!117673))))

(declare-fun Forall2!867 (Int) Bool)

(assert (=> d!883408 (= (equivClasses!2057 (toChars!7181 (transformation!5230 (rule!7682 separatorToken!241))) (toValue!7322 (transformation!5230 (rule!7682 separatorToken!241)))) (Forall2!867 lambda!117673))))

(declare-fun bs!542337 () Bool)

(assert (= bs!542337 d!883408))

(declare-fun m!3492617 () Bool)

(assert (=> bs!542337 m!3492617))

(assert (=> b!3217063 d!883408))

(declare-fun d!883410 () Bool)

(declare-fun res!1310140 () Bool)

(declare-fun e!2006554 () Bool)

(assert (=> d!883410 (=> res!1310140 e!2006554)))

(assert (=> d!883410 (= res!1310140 (not ((_ is Node!10836) (c!540718 lt!1089059))))))

(assert (=> d!883410 (= (isBalanced!3224 (c!540718 lt!1089059)) e!2006554)))

(declare-fun b!3218180 () Bool)

(declare-fun e!2006553 () Bool)

(assert (=> b!3218180 (= e!2006553 (not (isEmpty!20317 (right!28491 (c!540718 lt!1089059)))))))

(declare-fun b!3218181 () Bool)

(declare-fun res!1310139 () Bool)

(assert (=> b!3218181 (=> (not res!1310139) (not e!2006553))))

(assert (=> b!3218181 (= res!1310139 (not (isEmpty!20317 (left!28161 (c!540718 lt!1089059)))))))

(declare-fun b!3218182 () Bool)

(declare-fun res!1310136 () Bool)

(assert (=> b!3218182 (=> (not res!1310136) (not e!2006553))))

(assert (=> b!3218182 (= res!1310136 (isBalanced!3224 (left!28161 (c!540718 lt!1089059))))))

(declare-fun b!3218183 () Bool)

(assert (=> b!3218183 (= e!2006554 e!2006553)))

(declare-fun res!1310141 () Bool)

(assert (=> b!3218183 (=> (not res!1310141) (not e!2006553))))

(declare-fun height!1562 (Conc!10836) Int)

(assert (=> b!3218183 (= res!1310141 (<= (- 1) (- (height!1562 (left!28161 (c!540718 lt!1089059))) (height!1562 (right!28491 (c!540718 lt!1089059))))))))

(declare-fun b!3218184 () Bool)

(declare-fun res!1310137 () Bool)

(assert (=> b!3218184 (=> (not res!1310137) (not e!2006553))))

(assert (=> b!3218184 (= res!1310137 (isBalanced!3224 (right!28491 (c!540718 lt!1089059))))))

(declare-fun b!3218185 () Bool)

(declare-fun res!1310138 () Bool)

(assert (=> b!3218185 (=> (not res!1310138) (not e!2006553))))

(assert (=> b!3218185 (= res!1310138 (<= (- (height!1562 (left!28161 (c!540718 lt!1089059))) (height!1562 (right!28491 (c!540718 lt!1089059)))) 1))))

(assert (= (and d!883410 (not res!1310140)) b!3218183))

(assert (= (and b!3218183 res!1310141) b!3218185))

(assert (= (and b!3218185 res!1310138) b!3218182))

(assert (= (and b!3218182 res!1310136) b!3218184))

(assert (= (and b!3218184 res!1310137) b!3218181))

(assert (= (and b!3218181 res!1310139) b!3218180))

(declare-fun m!3492619 () Bool)

(assert (=> b!3218180 m!3492619))

(declare-fun m!3492621 () Bool)

(assert (=> b!3218181 m!3492621))

(declare-fun m!3492623 () Bool)

(assert (=> b!3218185 m!3492623))

(declare-fun m!3492625 () Bool)

(assert (=> b!3218185 m!3492625))

(assert (=> b!3218183 m!3492623))

(assert (=> b!3218183 m!3492625))

(declare-fun m!3492627 () Bool)

(assert (=> b!3218182 m!3492627))

(declare-fun m!3492629 () Bool)

(assert (=> b!3218184 m!3492629))

(assert (=> b!3217664 d!883410))

(declare-fun d!883416 () Bool)

(declare-fun lt!1089291 () Bool)

(assert (=> d!883416 (= lt!1089291 (select (content!4899 (t!239820 (usedCharacters!546 (regex!5230 (rule!7682 (h!41627 (t!239822 tokens!494))))))) lt!1088711))))

(declare-fun e!2006556 () Bool)

(assert (=> d!883416 (= lt!1089291 e!2006556)))

(declare-fun res!1310143 () Bool)

(assert (=> d!883416 (=> (not res!1310143) (not e!2006556))))

(assert (=> d!883416 (= res!1310143 ((_ is Cons!36205) (t!239820 (usedCharacters!546 (regex!5230 (rule!7682 (h!41627 (t!239822 tokens!494))))))))))

(assert (=> d!883416 (= (contains!6479 (t!239820 (usedCharacters!546 (regex!5230 (rule!7682 (h!41627 (t!239822 tokens!494)))))) lt!1088711) lt!1089291)))

(declare-fun b!3218186 () Bool)

(declare-fun e!2006555 () Bool)

(assert (=> b!3218186 (= e!2006556 e!2006555)))

(declare-fun res!1310142 () Bool)

(assert (=> b!3218186 (=> res!1310142 e!2006555)))

(assert (=> b!3218186 (= res!1310142 (= (h!41625 (t!239820 (usedCharacters!546 (regex!5230 (rule!7682 (h!41627 (t!239822 tokens!494))))))) lt!1088711))))

(declare-fun b!3218187 () Bool)

(assert (=> b!3218187 (= e!2006555 (contains!6479 (t!239820 (t!239820 (usedCharacters!546 (regex!5230 (rule!7682 (h!41627 (t!239822 tokens!494))))))) lt!1088711))))

(assert (= (and d!883416 res!1310143) b!3218186))

(assert (= (and b!3218186 (not res!1310142)) b!3218187))

(declare-fun m!3492631 () Bool)

(assert (=> d!883416 m!3492631))

(declare-fun m!3492633 () Bool)

(assert (=> d!883416 m!3492633))

(declare-fun m!3492635 () Bool)

(assert (=> b!3218187 m!3492635))

(assert (=> b!3217667 d!883416))

(declare-fun d!883418 () Bool)

(declare-fun res!1310144 () Bool)

(declare-fun e!2006557 () Bool)

(assert (=> d!883418 (=> (not res!1310144) (not e!2006557))))

(assert (=> d!883418 (= res!1310144 (rulesValid!1918 thiss!18206 (t!239821 rules!2135)))))

(assert (=> d!883418 (= (rulesInvariant!4216 thiss!18206 (t!239821 rules!2135)) e!2006557)))

(declare-fun b!3218188 () Bool)

(assert (=> b!3218188 (= e!2006557 (noDuplicateTag!1914 thiss!18206 (t!239821 rules!2135) Nil!36208))))

(assert (= (and d!883418 res!1310144) b!3218188))

(declare-fun m!3492637 () Bool)

(assert (=> d!883418 m!3492637))

(declare-fun m!3492639 () Bool)

(assert (=> b!3218188 m!3492639))

(assert (=> b!3217573 d!883418))

(declare-fun d!883420 () Bool)

(assert (=> d!883420 (rulesInvariant!4216 thiss!18206 (t!239821 rules!2135))))

(declare-fun lt!1089294 () Unit!50722)

(declare-fun choose!18796 (LexerInterface!4819 Rule!10260 List!36330) Unit!50722)

(assert (=> d!883420 (= lt!1089294 (choose!18796 thiss!18206 (h!41626 rules!2135) (t!239821 rules!2135)))))

(assert (=> d!883420 (rulesInvariant!4216 thiss!18206 (Cons!36206 (h!41626 rules!2135) (t!239821 rules!2135)))))

(assert (=> d!883420 (= (lemmaInvariantOnRulesThenOnTail!354 thiss!18206 (h!41626 rules!2135) (t!239821 rules!2135)) lt!1089294)))

(declare-fun bs!542339 () Bool)

(assert (= bs!542339 d!883420))

(assert (=> bs!542339 m!3491791))

(declare-fun m!3492641 () Bool)

(assert (=> bs!542339 m!3492641))

(declare-fun m!3492643 () Bool)

(assert (=> bs!542339 m!3492643))

(assert (=> b!3217573 d!883420))

(declare-fun b!3218207 () Bool)

(declare-fun lt!1089295 () Unit!50722)

(declare-fun lt!1089296 () Unit!50722)

(assert (=> b!3218207 (= lt!1089295 lt!1089296)))

(assert (=> b!3218207 (rulesInvariant!4216 thiss!18206 (t!239821 (t!239821 rules!2135)))))

(assert (=> b!3218207 (= lt!1089296 (lemmaInvariantOnRulesThenOnTail!354 thiss!18206 (h!41626 (t!239821 rules!2135)) (t!239821 (t!239821 rules!2135))))))

(declare-fun e!2006572 () Option!7163)

(assert (=> b!3218207 (= e!2006572 (getRuleFromTag!935 thiss!18206 (t!239821 (t!239821 rules!2135)) (tag!5760 (rule!7682 separatorToken!241))))))

(declare-fun b!3218209 () Bool)

(assert (=> b!3218209 (= e!2006572 None!7162)))

(declare-fun b!3218210 () Bool)

(declare-fun e!2006575 () Bool)

(declare-fun lt!1089297 () Option!7163)

(assert (=> b!3218210 (= e!2006575 (= (tag!5760 (get!11532 lt!1089297)) (tag!5760 (rule!7682 separatorToken!241))))))

(declare-fun b!3218211 () Bool)

(declare-fun e!2006573 () Option!7163)

(assert (=> b!3218211 (= e!2006573 e!2006572)))

(declare-fun c!541021 () Bool)

(assert (=> b!3218211 (= c!541021 (and ((_ is Cons!36206) (t!239821 rules!2135)) (not (= (tag!5760 (h!41626 (t!239821 rules!2135))) (tag!5760 (rule!7682 separatorToken!241))))))))

(declare-fun b!3218212 () Bool)

(declare-fun e!2006574 () Bool)

(assert (=> b!3218212 (= e!2006574 e!2006575)))

(declare-fun res!1310156 () Bool)

(assert (=> b!3218212 (=> (not res!1310156) (not e!2006575))))

(assert (=> b!3218212 (= res!1310156 (contains!6483 (t!239821 rules!2135) (get!11532 lt!1089297)))))

(declare-fun d!883422 () Bool)

(assert (=> d!883422 e!2006574))

(declare-fun res!1310155 () Bool)

(assert (=> d!883422 (=> res!1310155 e!2006574)))

(assert (=> d!883422 (= res!1310155 (isEmpty!20311 lt!1089297))))

(assert (=> d!883422 (= lt!1089297 e!2006573)))

(declare-fun c!541020 () Bool)

(assert (=> d!883422 (= c!541020 (and ((_ is Cons!36206) (t!239821 rules!2135)) (= (tag!5760 (h!41626 (t!239821 rules!2135))) (tag!5760 (rule!7682 separatorToken!241)))))))

(assert (=> d!883422 (rulesInvariant!4216 thiss!18206 (t!239821 rules!2135))))

(assert (=> d!883422 (= (getRuleFromTag!935 thiss!18206 (t!239821 rules!2135) (tag!5760 (rule!7682 separatorToken!241))) lt!1089297)))

(declare-fun b!3218208 () Bool)

(assert (=> b!3218208 (= e!2006573 (Some!7162 (h!41626 (t!239821 rules!2135))))))

(assert (= (and d!883422 c!541020) b!3218208))

(assert (= (and d!883422 (not c!541020)) b!3218211))

(assert (= (and b!3218211 c!541021) b!3218207))

(assert (= (and b!3218211 (not c!541021)) b!3218209))

(assert (= (and d!883422 (not res!1310155)) b!3218212))

(assert (= (and b!3218212 res!1310156) b!3218210))

(declare-fun m!3492645 () Bool)

(assert (=> b!3218207 m!3492645))

(declare-fun m!3492647 () Bool)

(assert (=> b!3218207 m!3492647))

(declare-fun m!3492649 () Bool)

(assert (=> b!3218207 m!3492649))

(declare-fun m!3492651 () Bool)

(assert (=> b!3218210 m!3492651))

(assert (=> b!3218212 m!3492651))

(assert (=> b!3218212 m!3492651))

(declare-fun m!3492653 () Bool)

(assert (=> b!3218212 m!3492653))

(declare-fun m!3492655 () Bool)

(assert (=> d!883422 m!3492655))

(assert (=> d!883422 m!3491791))

(assert (=> b!3217573 d!883422))

(declare-fun b!3218224 () Bool)

(declare-fun res!1310163 () Bool)

(declare-fun e!2006583 () Bool)

(assert (=> b!3218224 (=> (not res!1310163) (not e!2006583))))

(declare-fun lt!1089298 () List!36329)

(assert (=> b!3218224 (= res!1310163 (= (size!27294 lt!1089298) (+ (size!27294 (t!239820 lt!1088680)) (size!27294 lt!1088705))))))

(declare-fun b!3218225 () Bool)

(assert (=> b!3218225 (= e!2006583 (or (not (= lt!1088705 Nil!36205)) (= lt!1089298 (t!239820 lt!1088680))))))

(declare-fun d!883424 () Bool)

(assert (=> d!883424 e!2006583))

(declare-fun res!1310162 () Bool)

(assert (=> d!883424 (=> (not res!1310162) (not e!2006583))))

(assert (=> d!883424 (= res!1310162 (= (content!4899 lt!1089298) ((_ map or) (content!4899 (t!239820 lt!1088680)) (content!4899 lt!1088705))))))

(declare-fun e!2006584 () List!36329)

(assert (=> d!883424 (= lt!1089298 e!2006584)))

(declare-fun c!541024 () Bool)

(assert (=> d!883424 (= c!541024 ((_ is Nil!36205) (t!239820 lt!1088680)))))

(assert (=> d!883424 (= (++!8698 (t!239820 lt!1088680) lt!1088705) lt!1089298)))

(declare-fun b!3218222 () Bool)

(assert (=> b!3218222 (= e!2006584 lt!1088705)))

(declare-fun b!3218223 () Bool)

(assert (=> b!3218223 (= e!2006584 (Cons!36205 (h!41625 (t!239820 lt!1088680)) (++!8698 (t!239820 (t!239820 lt!1088680)) lt!1088705)))))

(assert (= (and d!883424 c!541024) b!3218222))

(assert (= (and d!883424 (not c!541024)) b!3218223))

(assert (= (and d!883424 res!1310162) b!3218224))

(assert (= (and b!3218224 res!1310163) b!3218225))

(declare-fun m!3492663 () Bool)

(assert (=> b!3218224 m!3492663))

(assert (=> b!3218224 m!3490971))

(assert (=> b!3218224 m!3490577))

(declare-fun m!3492665 () Bool)

(assert (=> d!883424 m!3492665))

(declare-fun m!3492667 () Bool)

(assert (=> d!883424 m!3492667))

(assert (=> d!883424 m!3490583))

(declare-fun m!3492669 () Bool)

(assert (=> b!3218223 m!3492669))

(assert (=> b!3217725 d!883424))

(declare-fun d!883428 () Bool)

(declare-fun charsToBigInt!1 (List!36328) Int)

(assert (=> d!883428 (= (inv!17 (value!169515 separatorToken!241)) (= (charsToBigInt!1 (text!38668 (value!169515 separatorToken!241))) (value!169507 (value!169515 separatorToken!241))))))

(declare-fun bs!542340 () Bool)

(assert (= bs!542340 d!883428))

(declare-fun m!3492671 () Bool)

(assert (=> bs!542340 m!3492671))

(assert (=> b!3217009 d!883428))

(declare-fun d!883432 () Bool)

(declare-fun lt!1089301 () Bool)

(declare-fun content!4902 (List!36331) (InoxSet Token!9826))

(assert (=> d!883432 (= lt!1089301 (select (content!4902 tokens!494) (h!41627 (t!239822 tokens!494))))))

(declare-fun e!2006589 () Bool)

(assert (=> d!883432 (= lt!1089301 e!2006589)))

(declare-fun res!1310168 () Bool)

(assert (=> d!883432 (=> (not res!1310168) (not e!2006589))))

(assert (=> d!883432 (= res!1310168 ((_ is Cons!36207) tokens!494))))

(assert (=> d!883432 (= (contains!6482 tokens!494 (h!41627 (t!239822 tokens!494))) lt!1089301)))

(declare-fun b!3218230 () Bool)

(declare-fun e!2006590 () Bool)

(assert (=> b!3218230 (= e!2006589 e!2006590)))

(declare-fun res!1310169 () Bool)

(assert (=> b!3218230 (=> res!1310169 e!2006590)))

(assert (=> b!3218230 (= res!1310169 (= (h!41627 tokens!494) (h!41627 (t!239822 tokens!494))))))

(declare-fun b!3218231 () Bool)

(assert (=> b!3218231 (= e!2006590 (contains!6482 (t!239822 tokens!494) (h!41627 (t!239822 tokens!494))))))

(assert (= (and d!883432 res!1310168) b!3218230))

(assert (= (and b!3218230 (not res!1310169)) b!3218231))

(declare-fun m!3492673 () Bool)

(assert (=> d!883432 m!3492673))

(declare-fun m!3492675 () Bool)

(assert (=> d!883432 m!3492675))

(declare-fun m!3492677 () Bool)

(assert (=> b!3218231 m!3492677))

(assert (=> b!3217665 d!883432))

(declare-fun d!883434 () Bool)

(declare-fun lt!1089304 () Int)

(assert (=> d!883434 (= lt!1089304 (size!27294 (list!12887 (_2!20945 lt!1089089))))))

(declare-fun size!27303 (Conc!10835) Int)

(assert (=> d!883434 (= lt!1089304 (size!27303 (c!540717 (_2!20945 lt!1089089))))))

(assert (=> d!883434 (= (size!27301 (_2!20945 lt!1089089)) lt!1089304)))

(declare-fun bs!542341 () Bool)

(assert (= bs!542341 d!883434))

(assert (=> bs!542341 m!3492027))

(assert (=> bs!542341 m!3492027))

(declare-fun m!3492679 () Bool)

(assert (=> bs!542341 m!3492679))

(declare-fun m!3492681 () Bool)

(assert (=> bs!542341 m!3492681))

(assert (=> b!3217709 d!883434))

(declare-fun d!883436 () Bool)

(declare-fun lt!1089305 () Int)

(assert (=> d!883436 (= lt!1089305 (size!27294 (list!12887 lt!1088720)))))

(assert (=> d!883436 (= lt!1089305 (size!27303 (c!540717 lt!1088720)))))

(assert (=> d!883436 (= (size!27301 lt!1088720) lt!1089305)))

(declare-fun bs!542342 () Bool)

(assert (= bs!542342 d!883436))

(assert (=> bs!542342 m!3492029))

(assert (=> bs!542342 m!3492029))

(declare-fun m!3492683 () Bool)

(assert (=> bs!542342 m!3492683))

(declare-fun m!3492685 () Bool)

(assert (=> bs!542342 m!3492685))

(assert (=> b!3217709 d!883436))

(declare-fun b!3218243 () Bool)

(declare-fun e!2006596 () List!36329)

(assert (=> b!3218243 (= e!2006596 (++!8698 (list!12889 (left!28160 (c!540717 (charsOf!3246 (h!41627 (t!239822 tokens!494)))))) (list!12889 (right!28490 (c!540717 (charsOf!3246 (h!41627 (t!239822 tokens!494))))))))))

(declare-fun b!3218242 () Bool)

(declare-fun list!12894 (IArray!21675) List!36329)

(assert (=> b!3218242 (= e!2006596 (list!12894 (xs!13953 (c!540717 (charsOf!3246 (h!41627 (t!239822 tokens!494)))))))))

(declare-fun b!3218241 () Bool)

(declare-fun e!2006595 () List!36329)

(assert (=> b!3218241 (= e!2006595 e!2006596)))

(declare-fun c!541030 () Bool)

(assert (=> b!3218241 (= c!541030 ((_ is Leaf!17061) (c!540717 (charsOf!3246 (h!41627 (t!239822 tokens!494))))))))

(declare-fun d!883438 () Bool)

(declare-fun c!541029 () Bool)

(assert (=> d!883438 (= c!541029 ((_ is Empty!10835) (c!540717 (charsOf!3246 (h!41627 (t!239822 tokens!494))))))))

(assert (=> d!883438 (= (list!12889 (c!540717 (charsOf!3246 (h!41627 (t!239822 tokens!494))))) e!2006595)))

(declare-fun b!3218240 () Bool)

(assert (=> b!3218240 (= e!2006595 Nil!36205)))

(assert (= (and d!883438 c!541029) b!3218240))

(assert (= (and d!883438 (not c!541029)) b!3218241))

(assert (= (and b!3218241 c!541030) b!3218242))

(assert (= (and b!3218241 (not c!541030)) b!3218243))

(declare-fun m!3492687 () Bool)

(assert (=> b!3218243 m!3492687))

(declare-fun m!3492689 () Bool)

(assert (=> b!3218243 m!3492689))

(assert (=> b!3218243 m!3492687))

(assert (=> b!3218243 m!3492689))

(declare-fun m!3492691 () Bool)

(assert (=> b!3218243 m!3492691))

(declare-fun m!3492693 () Bool)

(assert (=> b!3218242 m!3492693))

(assert (=> d!883194 d!883438))

(declare-fun d!883440 () Bool)

(declare-fun res!1310174 () Bool)

(declare-fun e!2006598 () Bool)

(assert (=> d!883440 (=> res!1310174 e!2006598)))

(assert (=> d!883440 (= res!1310174 (not ((_ is Node!10836) (c!540718 lt!1088782))))))

(assert (=> d!883440 (= (isBalanced!3224 (c!540718 lt!1088782)) e!2006598)))

(declare-fun b!3218244 () Bool)

(declare-fun e!2006597 () Bool)

(assert (=> b!3218244 (= e!2006597 (not (isEmpty!20317 (right!28491 (c!540718 lt!1088782)))))))

(declare-fun b!3218245 () Bool)

(declare-fun res!1310173 () Bool)

(assert (=> b!3218245 (=> (not res!1310173) (not e!2006597))))

(assert (=> b!3218245 (= res!1310173 (not (isEmpty!20317 (left!28161 (c!540718 lt!1088782)))))))

(declare-fun b!3218246 () Bool)

(declare-fun res!1310170 () Bool)

(assert (=> b!3218246 (=> (not res!1310170) (not e!2006597))))

(assert (=> b!3218246 (= res!1310170 (isBalanced!3224 (left!28161 (c!540718 lt!1088782))))))

(declare-fun b!3218247 () Bool)

(assert (=> b!3218247 (= e!2006598 e!2006597)))

(declare-fun res!1310175 () Bool)

(assert (=> b!3218247 (=> (not res!1310175) (not e!2006597))))

(assert (=> b!3218247 (= res!1310175 (<= (- 1) (- (height!1562 (left!28161 (c!540718 lt!1088782))) (height!1562 (right!28491 (c!540718 lt!1088782))))))))

(declare-fun b!3218248 () Bool)

(declare-fun res!1310171 () Bool)

(assert (=> b!3218248 (=> (not res!1310171) (not e!2006597))))

(assert (=> b!3218248 (= res!1310171 (isBalanced!3224 (right!28491 (c!540718 lt!1088782))))))

(declare-fun b!3218249 () Bool)

(declare-fun res!1310172 () Bool)

(assert (=> b!3218249 (=> (not res!1310172) (not e!2006597))))

(assert (=> b!3218249 (= res!1310172 (<= (- (height!1562 (left!28161 (c!540718 lt!1088782))) (height!1562 (right!28491 (c!540718 lt!1088782)))) 1))))

(assert (= (and d!883440 (not res!1310174)) b!3218247))

(assert (= (and b!3218247 res!1310175) b!3218249))

(assert (= (and b!3218249 res!1310172) b!3218246))

(assert (= (and b!3218246 res!1310170) b!3218248))

(assert (= (and b!3218248 res!1310171) b!3218245))

(assert (= (and b!3218245 res!1310173) b!3218244))

(declare-fun m!3492695 () Bool)

(assert (=> b!3218244 m!3492695))

(declare-fun m!3492697 () Bool)

(assert (=> b!3218245 m!3492697))

(declare-fun m!3492699 () Bool)

(assert (=> b!3218249 m!3492699))

(declare-fun m!3492701 () Bool)

(assert (=> b!3218249 m!3492701))

(assert (=> b!3218247 m!3492699))

(assert (=> b!3218247 m!3492701))

(declare-fun m!3492703 () Bool)

(assert (=> b!3218246 m!3492703))

(declare-fun m!3492705 () Bool)

(assert (=> b!3218248 m!3492705))

(assert (=> b!3216973 d!883440))

(declare-fun d!883442 () Bool)

(assert (=> d!883442 (= (isEmpty!20308 (list!12887 (_2!20945 lt!1088716))) ((_ is Nil!36205) (list!12887 (_2!20945 lt!1088716))))))

(assert (=> d!882828 d!883442))

(declare-fun d!883444 () Bool)

(assert (=> d!883444 (= (list!12887 (_2!20945 lt!1088716)) (list!12889 (c!540717 (_2!20945 lt!1088716))))))

(declare-fun bs!542343 () Bool)

(assert (= bs!542343 d!883444))

(declare-fun m!3492707 () Bool)

(assert (=> bs!542343 m!3492707))

(assert (=> d!882828 d!883444))

(declare-fun d!883446 () Bool)

(declare-fun lt!1089308 () Bool)

(assert (=> d!883446 (= lt!1089308 (isEmpty!20308 (list!12889 (c!540717 (_2!20945 lt!1088716)))))))

(assert (=> d!883446 (= lt!1089308 (= (size!27303 (c!540717 (_2!20945 lt!1088716))) 0))))

(assert (=> d!883446 (= (isEmpty!20310 (c!540717 (_2!20945 lt!1088716))) lt!1089308)))

(declare-fun bs!542344 () Bool)

(assert (= bs!542344 d!883446))

(assert (=> bs!542344 m!3492707))

(assert (=> bs!542344 m!3492707))

(declare-fun m!3492709 () Bool)

(assert (=> bs!542344 m!3492709))

(declare-fun m!3492711 () Bool)

(assert (=> bs!542344 m!3492711))

(assert (=> d!882828 d!883446))

(assert (=> b!3217044 d!883156))

(declare-fun d!883448 () Bool)

(assert (=> d!883448 (= (isEmpty!20312 lt!1088976) (not ((_ is Some!7163) lt!1088976)))))

(assert (=> d!882940 d!883448))

(declare-fun d!883450 () Bool)

(assert (=> d!883450 (= (isEmpty!20308 (_1!20949 lt!1088974)) ((_ is Nil!36205) (_1!20949 lt!1088974)))))

(assert (=> d!882940 d!883450))

(declare-fun d!883452 () Bool)

(declare-fun lt!1089326 () tuple2!35630)

(assert (=> d!883452 (= (++!8698 (_1!20949 lt!1089326) (_2!20949 lt!1089326)) lt!1088698)))

(declare-fun sizeTr!165 (List!36329 Int) Int)

(assert (=> d!883452 (= lt!1089326 (findLongestMatchInner!835 (regex!5230 (rule!7682 (h!41627 tokens!494))) Nil!36205 0 lt!1088698 lt!1088698 (sizeTr!165 lt!1088698 0)))))

(declare-fun lt!1089330 () Unit!50722)

(declare-fun lt!1089331 () Unit!50722)

(assert (=> d!883452 (= lt!1089330 lt!1089331)))

(declare-fun lt!1089329 () List!36329)

(declare-fun lt!1089325 () Int)

(assert (=> d!883452 (= (sizeTr!165 lt!1089329 lt!1089325) (+ (size!27294 lt!1089329) lt!1089325))))

(declare-fun lemmaSizeTrEqualsSize!164 (List!36329 Int) Unit!50722)

(assert (=> d!883452 (= lt!1089331 (lemmaSizeTrEqualsSize!164 lt!1089329 lt!1089325))))

(assert (=> d!883452 (= lt!1089325 0)))

(assert (=> d!883452 (= lt!1089329 Nil!36205)))

(declare-fun lt!1089332 () Unit!50722)

(declare-fun lt!1089327 () Unit!50722)

(assert (=> d!883452 (= lt!1089332 lt!1089327)))

(declare-fun lt!1089328 () Int)

(assert (=> d!883452 (= (sizeTr!165 lt!1088698 lt!1089328) (+ (size!27294 lt!1088698) lt!1089328))))

(assert (=> d!883452 (= lt!1089327 (lemmaSizeTrEqualsSize!164 lt!1088698 lt!1089328))))

(assert (=> d!883452 (= lt!1089328 0)))

(assert (=> d!883452 (validRegex!4557 (regex!5230 (rule!7682 (h!41627 tokens!494))))))

(assert (=> d!883452 (= (findLongestMatch!750 (regex!5230 (rule!7682 (h!41627 tokens!494))) lt!1088698) lt!1089326)))

(declare-fun bs!542345 () Bool)

(assert (= bs!542345 d!883452))

(declare-fun m!3492713 () Bool)

(assert (=> bs!542345 m!3492713))

(declare-fun m!3492715 () Bool)

(assert (=> bs!542345 m!3492715))

(declare-fun m!3492717 () Bool)

(assert (=> bs!542345 m!3492717))

(declare-fun m!3492719 () Bool)

(assert (=> bs!542345 m!3492719))

(assert (=> bs!542345 m!3490403))

(assert (=> bs!542345 m!3492713))

(declare-fun m!3492721 () Bool)

(assert (=> bs!542345 m!3492721))

(declare-fun m!3492723 () Bool)

(assert (=> bs!542345 m!3492723))

(declare-fun m!3492725 () Bool)

(assert (=> bs!542345 m!3492725))

(declare-fun m!3492727 () Bool)

(assert (=> bs!542345 m!3492727))

(declare-fun m!3492729 () Bool)

(assert (=> bs!542345 m!3492729))

(assert (=> d!882940 d!883452))

(declare-fun d!883454 () Bool)

(declare-fun res!1310180 () Bool)

(declare-fun e!2006601 () Bool)

(assert (=> d!883454 (=> (not res!1310180) (not e!2006601))))

(assert (=> d!883454 (= res!1310180 (validRegex!4557 (regex!5230 (rule!7682 (h!41627 tokens!494)))))))

(assert (=> d!883454 (= (ruleValid!1652 thiss!18206 (rule!7682 (h!41627 tokens!494))) e!2006601)))

(declare-fun b!3218254 () Bool)

(declare-fun res!1310181 () Bool)

(assert (=> b!3218254 (=> (not res!1310181) (not e!2006601))))

(assert (=> b!3218254 (= res!1310181 (not (nullable!3401 (regex!5230 (rule!7682 (h!41627 tokens!494))))))))

(declare-fun b!3218255 () Bool)

(assert (=> b!3218255 (= e!2006601 (not (= (tag!5760 (rule!7682 (h!41627 tokens!494))) (String!40635 ""))))))

(assert (= (and d!883454 res!1310180) b!3218254))

(assert (= (and b!3218254 res!1310181) b!3218255))

(assert (=> d!883454 m!3492727))

(declare-fun m!3492731 () Bool)

(assert (=> b!3218254 m!3492731))

(assert (=> d!882940 d!883454))

(declare-fun d!883456 () Bool)

(declare-fun lt!1089333 () Int)

(assert (=> d!883456 (>= lt!1089333 0)))

(declare-fun e!2006602 () Int)

(assert (=> d!883456 (= lt!1089333 e!2006602)))

(declare-fun c!541031 () Bool)

(assert (=> d!883456 (= c!541031 ((_ is Nil!36205) (_2!20946 (get!11534 lt!1088976))))))

(assert (=> d!883456 (= (size!27294 (_2!20946 (get!11534 lt!1088976))) lt!1089333)))

(declare-fun b!3218256 () Bool)

(assert (=> b!3218256 (= e!2006602 0)))

(declare-fun b!3218257 () Bool)

(assert (=> b!3218257 (= e!2006602 (+ 1 (size!27294 (t!239820 (_2!20946 (get!11534 lt!1088976))))))))

(assert (= (and d!883456 c!541031) b!3218256))

(assert (= (and d!883456 (not c!541031)) b!3218257))

(declare-fun m!3492733 () Bool)

(assert (=> b!3218257 m!3492733))

(assert (=> b!3217338 d!883456))

(declare-fun d!883458 () Bool)

(assert (=> d!883458 (= (get!11534 lt!1088976) (v!35733 lt!1088976))))

(assert (=> b!3217338 d!883458))

(assert (=> b!3217338 d!883152))

(declare-fun d!883460 () Bool)

(assert (=> d!883460 (= (list!12887 (_2!20945 lt!1089058)) (list!12889 (c!540717 (_2!20945 lt!1089058))))))

(declare-fun bs!542346 () Bool)

(assert (= bs!542346 d!883460))

(declare-fun m!3492735 () Bool)

(assert (=> bs!542346 m!3492735))

(assert (=> b!3217659 d!883460))

(declare-fun d!883462 () Bool)

(declare-fun e!2006609 () Bool)

(assert (=> d!883462 e!2006609))

(declare-fun c!541036 () Bool)

(declare-fun lt!1089342 () tuple2!35632)

(assert (=> d!883462 (= c!541036 (> (size!27299 (_1!20950 lt!1089342)) 0))))

(declare-fun e!2006610 () tuple2!35632)

(assert (=> d!883462 (= lt!1089342 e!2006610)))

(declare-fun c!541037 () Bool)

(declare-fun lt!1089340 () Option!7164)

(assert (=> d!883462 (= c!541037 ((_ is Some!7163) lt!1089340))))

(assert (=> d!883462 (= lt!1089340 (maxPrefix!2461 thiss!18206 rules!2135 (list!12887 lt!1088699)))))

(assert (=> d!883462 (= (lexList!1317 thiss!18206 rules!2135 (list!12887 lt!1088699)) lt!1089342)))

(declare-fun b!3218268 () Bool)

(declare-fun lt!1089341 () tuple2!35632)

(assert (=> b!3218268 (= e!2006610 (tuple2!35633 (Cons!36207 (_1!20946 (v!35733 lt!1089340)) (_1!20950 lt!1089341)) (_2!20950 lt!1089341)))))

(assert (=> b!3218268 (= lt!1089341 (lexList!1317 thiss!18206 rules!2135 (_2!20946 (v!35733 lt!1089340))))))

(declare-fun b!3218269 () Bool)

(assert (=> b!3218269 (= e!2006610 (tuple2!35633 Nil!36207 (list!12887 lt!1088699)))))

(declare-fun b!3218270 () Bool)

(declare-fun e!2006611 () Bool)

(assert (=> b!3218270 (= e!2006609 e!2006611)))

(declare-fun res!1310184 () Bool)

(assert (=> b!3218270 (= res!1310184 (< (size!27294 (_2!20950 lt!1089342)) (size!27294 (list!12887 lt!1088699))))))

(assert (=> b!3218270 (=> (not res!1310184) (not e!2006611))))

(declare-fun b!3218271 () Bool)

(assert (=> b!3218271 (= e!2006611 (not (isEmpty!20316 (_1!20950 lt!1089342))))))

(declare-fun b!3218272 () Bool)

(assert (=> b!3218272 (= e!2006609 (= (_2!20950 lt!1089342) (list!12887 lt!1088699)))))

(assert (= (and d!883462 c!541037) b!3218268))

(assert (= (and d!883462 (not c!541037)) b!3218269))

(assert (= (and d!883462 c!541036) b!3218270))

(assert (= (and d!883462 (not c!541036)) b!3218272))

(assert (= (and b!3218270 res!1310184) b!3218271))

(declare-fun m!3492737 () Bool)

(assert (=> d!883462 m!3492737))

(assert (=> d!883462 m!3491873))

(declare-fun m!3492739 () Bool)

(assert (=> d!883462 m!3492739))

(declare-fun m!3492741 () Bool)

(assert (=> b!3218268 m!3492741))

(declare-fun m!3492743 () Bool)

(assert (=> b!3218270 m!3492743))

(assert (=> b!3218270 m!3491873))

(declare-fun m!3492745 () Bool)

(assert (=> b!3218270 m!3492745))

(declare-fun m!3492747 () Bool)

(assert (=> b!3218271 m!3492747))

(assert (=> b!3217659 d!883462))

(declare-fun d!883464 () Bool)

(assert (=> d!883464 (= (list!12887 lt!1088699) (list!12889 (c!540717 lt!1088699)))))

(declare-fun bs!542347 () Bool)

(assert (= bs!542347 d!883464))

(declare-fun m!3492749 () Bool)

(assert (=> bs!542347 m!3492749))

(assert (=> b!3217659 d!883464))

(declare-fun d!883466 () Bool)

(assert (=> d!883466 (= (list!12890 lt!1089045) (list!12893 (c!540718 lt!1089045)))))

(declare-fun bs!542348 () Bool)

(assert (= bs!542348 d!883466))

(declare-fun m!3492751 () Bool)

(assert (=> bs!542348 m!3492751))

(assert (=> d!883112 d!883466))

(declare-fun d!883468 () Bool)

(declare-fun e!2006614 () Bool)

(assert (=> d!883468 e!2006614))

(declare-fun res!1310187 () Bool)

(assert (=> d!883468 (=> (not res!1310187) (not e!2006614))))

(declare-fun lt!1089345 () BalanceConc!21286)

(assert (=> d!883468 (= res!1310187 (= (list!12890 lt!1089345) (Cons!36207 separatorToken!241 Nil!36207)))))

(declare-fun choose!18797 (Token!9826) BalanceConc!21286)

(assert (=> d!883468 (= lt!1089345 (choose!18797 separatorToken!241))))

(assert (=> d!883468 (= (singleton!997 separatorToken!241) lt!1089345)))

(declare-fun b!3218275 () Bool)

(assert (=> b!3218275 (= e!2006614 (isBalanced!3224 (c!540718 lt!1089345)))))

(assert (= (and d!883468 res!1310187) b!3218275))

(declare-fun m!3492753 () Bool)

(assert (=> d!883468 m!3492753))

(declare-fun m!3492755 () Bool)

(assert (=> d!883468 m!3492755))

(declare-fun m!3492757 () Bool)

(assert (=> b!3218275 m!3492757))

(assert (=> d!883112 d!883468))

(declare-fun d!883470 () Bool)

(declare-fun charsToBigInt!0 (List!36328 Int) Int)

(assert (=> d!883470 (= (inv!15 (value!169515 (h!41627 tokens!494))) (= (charsToBigInt!0 (text!38669 (value!169515 (h!41627 tokens!494))) 0) (value!169510 (value!169515 (h!41627 tokens!494)))))))

(declare-fun bs!542349 () Bool)

(assert (= bs!542349 d!883470))

(declare-fun m!3492759 () Bool)

(assert (=> bs!542349 m!3492759))

(assert (=> b!3217050 d!883470))

(declare-fun d!883472 () Bool)

(declare-fun res!1310188 () Bool)

(declare-fun e!2006615 () Bool)

(assert (=> d!883472 (=> (not res!1310188) (not e!2006615))))

(assert (=> d!883472 (= res!1310188 (not (isEmpty!20308 (originalCharacters!5944 (h!41627 (t!239822 tokens!494))))))))

(assert (=> d!883472 (= (inv!49076 (h!41627 (t!239822 tokens!494))) e!2006615)))

(declare-fun b!3218276 () Bool)

(declare-fun res!1310189 () Bool)

(assert (=> b!3218276 (=> (not res!1310189) (not e!2006615))))

(assert (=> b!3218276 (= res!1310189 (= (originalCharacters!5944 (h!41627 (t!239822 tokens!494))) (list!12887 (dynLambda!14648 (toChars!7181 (transformation!5230 (rule!7682 (h!41627 (t!239822 tokens!494))))) (value!169515 (h!41627 (t!239822 tokens!494)))))))))

(declare-fun b!3218277 () Bool)

(assert (=> b!3218277 (= e!2006615 (= (size!27293 (h!41627 (t!239822 tokens!494))) (size!27294 (originalCharacters!5944 (h!41627 (t!239822 tokens!494))))))))

(assert (= (and d!883472 res!1310188) b!3218276))

(assert (= (and b!3218276 res!1310189) b!3218277))

(declare-fun b_lambda!88461 () Bool)

(assert (=> (not b_lambda!88461) (not b!3218276)))

(assert (=> b!3218276 t!239916))

(declare-fun b_and!214897 () Bool)

(assert (= b_and!214887 (and (=> t!239916 result!201238) b_and!214897)))

(assert (=> b!3218276 t!239934))

(declare-fun b_and!214899 () Bool)

(assert (= b_and!214891 (and (=> t!239934 result!201260) b_and!214899)))

(assert (=> b!3218276 t!239912))

(declare-fun b_and!214901 () Bool)

(assert (= b_and!214895 (and (=> t!239912 result!201234) b_and!214901)))

(assert (=> b!3218276 t!239924))

(declare-fun b_and!214903 () Bool)

(assert (= b_and!214889 (and (=> t!239924 result!201248) b_and!214903)))

(assert (=> b!3218276 t!239914))

(declare-fun b_and!214905 () Bool)

(assert (= b_and!214893 (and (=> t!239914 result!201236) b_and!214905)))

(declare-fun m!3492761 () Bool)

(assert (=> d!883472 m!3492761))

(assert (=> b!3218276 m!3492105))

(assert (=> b!3218276 m!3492105))

(declare-fun m!3492763 () Bool)

(assert (=> b!3218276 m!3492763))

(declare-fun m!3492765 () Bool)

(assert (=> b!3218277 m!3492765))

(assert (=> b!3217771 d!883472))

(declare-fun d!883474 () Bool)

(assert (=> d!883474 (= (get!11532 (getRuleFromTag!935 thiss!18206 rules!2135 (tag!5760 (rule!7682 separatorToken!241)))) (v!35732 (getRuleFromTag!935 thiss!18206 rules!2135 (tag!5760 (rule!7682 separatorToken!241)))))))

(assert (=> b!3217161 d!883474))

(assert (=> b!3217161 d!883118))

(declare-fun b!3218278 () Bool)

(declare-fun e!2006619 () Bool)

(declare-fun lt!1089346 () Bool)

(assert (=> b!3218278 (= e!2006619 (not lt!1089346))))

(declare-fun b!3218279 () Bool)

(declare-fun e!2006617 () Bool)

(declare-fun e!2006621 () Bool)

(assert (=> b!3218279 (= e!2006617 e!2006621)))

(declare-fun res!1310192 () Bool)

(assert (=> b!3218279 (=> res!1310192 e!2006621)))

(declare-fun call!232950 () Bool)

(assert (=> b!3218279 (= res!1310192 call!232950)))

(declare-fun b!3218280 () Bool)

(declare-fun res!1310197 () Bool)

(declare-fun e!2006620 () Bool)

(assert (=> b!3218280 (=> (not res!1310197) (not e!2006620))))

(assert (=> b!3218280 (= res!1310197 (isEmpty!20308 (tail!5218 (list!12887 (charsOf!3246 separatorToken!241)))))))

(declare-fun b!3218281 () Bool)

(assert (=> b!3218281 (= e!2006620 (= (head!7053 (list!12887 (charsOf!3246 separatorToken!241))) (c!540716 (regex!5230 (get!11532 (getRuleFromTag!935 thiss!18206 rules!2135 (tag!5760 (rule!7682 separatorToken!241))))))))))

(declare-fun b!3218282 () Bool)

(declare-fun res!1310193 () Bool)

(declare-fun e!2006618 () Bool)

(assert (=> b!3218282 (=> res!1310193 e!2006618)))

(assert (=> b!3218282 (= res!1310193 e!2006620)))

(declare-fun res!1310190 () Bool)

(assert (=> b!3218282 (=> (not res!1310190) (not e!2006620))))

(assert (=> b!3218282 (= res!1310190 lt!1089346)))

(declare-fun b!3218283 () Bool)

(assert (=> b!3218283 (= e!2006618 e!2006617)))

(declare-fun res!1310194 () Bool)

(assert (=> b!3218283 (=> (not res!1310194) (not e!2006617))))

(assert (=> b!3218283 (= res!1310194 (not lt!1089346))))

(declare-fun b!3218285 () Bool)

(declare-fun e!2006622 () Bool)

(assert (=> b!3218285 (= e!2006622 (= lt!1089346 call!232950))))

(declare-fun bm!232945 () Bool)

(assert (=> bm!232945 (= call!232950 (isEmpty!20308 (list!12887 (charsOf!3246 separatorToken!241))))))

(declare-fun b!3218286 () Bool)

(assert (=> b!3218286 (= e!2006621 (not (= (head!7053 (list!12887 (charsOf!3246 separatorToken!241))) (c!540716 (regex!5230 (get!11532 (getRuleFromTag!935 thiss!18206 rules!2135 (tag!5760 (rule!7682 separatorToken!241)))))))))))

(declare-fun b!3218287 () Bool)

(declare-fun res!1310191 () Bool)

(assert (=> b!3218287 (=> res!1310191 e!2006621)))

(assert (=> b!3218287 (= res!1310191 (not (isEmpty!20308 (tail!5218 (list!12887 (charsOf!3246 separatorToken!241))))))))

(declare-fun e!2006616 () Bool)

(declare-fun b!3218288 () Bool)

(assert (=> b!3218288 (= e!2006616 (matchR!4623 (derivativeStep!2954 (regex!5230 (get!11532 (getRuleFromTag!935 thiss!18206 rules!2135 (tag!5760 (rule!7682 separatorToken!241))))) (head!7053 (list!12887 (charsOf!3246 separatorToken!241)))) (tail!5218 (list!12887 (charsOf!3246 separatorToken!241)))))))

(declare-fun b!3218284 () Bool)

(assert (=> b!3218284 (= e!2006616 (nullable!3401 (regex!5230 (get!11532 (getRuleFromTag!935 thiss!18206 rules!2135 (tag!5760 (rule!7682 separatorToken!241)))))))))

(declare-fun d!883476 () Bool)

(assert (=> d!883476 e!2006622))

(declare-fun c!541040 () Bool)

(assert (=> d!883476 (= c!541040 ((_ is EmptyExpr!9989) (regex!5230 (get!11532 (getRuleFromTag!935 thiss!18206 rules!2135 (tag!5760 (rule!7682 separatorToken!241)))))))))

(assert (=> d!883476 (= lt!1089346 e!2006616)))

(declare-fun c!541039 () Bool)

(assert (=> d!883476 (= c!541039 (isEmpty!20308 (list!12887 (charsOf!3246 separatorToken!241))))))

(assert (=> d!883476 (validRegex!4557 (regex!5230 (get!11532 (getRuleFromTag!935 thiss!18206 rules!2135 (tag!5760 (rule!7682 separatorToken!241))))))))

(assert (=> d!883476 (= (matchR!4623 (regex!5230 (get!11532 (getRuleFromTag!935 thiss!18206 rules!2135 (tag!5760 (rule!7682 separatorToken!241))))) (list!12887 (charsOf!3246 separatorToken!241))) lt!1089346)))

(declare-fun b!3218289 () Bool)

(declare-fun res!1310196 () Bool)

(assert (=> b!3218289 (=> (not res!1310196) (not e!2006620))))

(assert (=> b!3218289 (= res!1310196 (not call!232950))))

(declare-fun b!3218290 () Bool)

(declare-fun res!1310195 () Bool)

(assert (=> b!3218290 (=> res!1310195 e!2006618)))

(assert (=> b!3218290 (= res!1310195 (not ((_ is ElementMatch!9989) (regex!5230 (get!11532 (getRuleFromTag!935 thiss!18206 rules!2135 (tag!5760 (rule!7682 separatorToken!241))))))))))

(assert (=> b!3218290 (= e!2006619 e!2006618)))

(declare-fun b!3218291 () Bool)

(assert (=> b!3218291 (= e!2006622 e!2006619)))

(declare-fun c!541038 () Bool)

(assert (=> b!3218291 (= c!541038 ((_ is EmptyLang!9989) (regex!5230 (get!11532 (getRuleFromTag!935 thiss!18206 rules!2135 (tag!5760 (rule!7682 separatorToken!241)))))))))

(assert (= (and d!883476 c!541039) b!3218284))

(assert (= (and d!883476 (not c!541039)) b!3218288))

(assert (= (and d!883476 c!541040) b!3218285))

(assert (= (and d!883476 (not c!541040)) b!3218291))

(assert (= (and b!3218291 c!541038) b!3218278))

(assert (= (and b!3218291 (not c!541038)) b!3218290))

(assert (= (and b!3218290 (not res!1310195)) b!3218282))

(assert (= (and b!3218282 res!1310190) b!3218289))

(assert (= (and b!3218289 res!1310196) b!3218280))

(assert (= (and b!3218280 res!1310197) b!3218281))

(assert (= (and b!3218282 (not res!1310193)) b!3218283))

(assert (= (and b!3218283 res!1310194) b!3218279))

(assert (= (and b!3218279 (not res!1310192)) b!3218287))

(assert (= (and b!3218287 (not res!1310191)) b!3218286))

(assert (= (or b!3218285 b!3218279 b!3218289) bm!232945))

(assert (=> d!883476 m!3490481))

(declare-fun m!3492767 () Bool)

(assert (=> d!883476 m!3492767))

(declare-fun m!3492769 () Bool)

(assert (=> d!883476 m!3492769))

(assert (=> b!3218287 m!3490481))

(declare-fun m!3492771 () Bool)

(assert (=> b!3218287 m!3492771))

(assert (=> b!3218287 m!3492771))

(declare-fun m!3492773 () Bool)

(assert (=> b!3218287 m!3492773))

(assert (=> b!3218281 m!3490481))

(declare-fun m!3492775 () Bool)

(assert (=> b!3218281 m!3492775))

(declare-fun m!3492777 () Bool)

(assert (=> b!3218284 m!3492777))

(assert (=> b!3218280 m!3490481))

(assert (=> b!3218280 m!3492771))

(assert (=> b!3218280 m!3492771))

(assert (=> b!3218280 m!3492773))

(assert (=> b!3218288 m!3490481))

(assert (=> b!3218288 m!3492775))

(assert (=> b!3218288 m!3492775))

(declare-fun m!3492779 () Bool)

(assert (=> b!3218288 m!3492779))

(assert (=> b!3218288 m!3490481))

(assert (=> b!3218288 m!3492771))

(assert (=> b!3218288 m!3492779))

(assert (=> b!3218288 m!3492771))

(declare-fun m!3492781 () Bool)

(assert (=> b!3218288 m!3492781))

(assert (=> bm!232945 m!3490481))

(assert (=> bm!232945 m!3492767))

(assert (=> b!3218286 m!3490481))

(assert (=> b!3218286 m!3492775))

(assert (=> b!3217161 d!883476))

(assert (=> b!3217161 d!883192))

(assert (=> b!3217161 d!883206))

(declare-fun d!883478 () Bool)

(declare-fun lt!1089347 () BalanceConc!21284)

(assert (=> d!883478 (= (list!12887 lt!1089347) (originalCharacters!5944 (apply!8222 lt!1088703 0)))))

(assert (=> d!883478 (= lt!1089347 (dynLambda!14648 (toChars!7181 (transformation!5230 (rule!7682 (apply!8222 lt!1088703 0)))) (value!169515 (apply!8222 lt!1088703 0))))))

(assert (=> d!883478 (= (charsOf!3246 (apply!8222 lt!1088703 0)) lt!1089347)))

(declare-fun b_lambda!88463 () Bool)

(assert (=> (not b_lambda!88463) (not d!883478)))

(declare-fun t!239959 () Bool)

(declare-fun tb!158857 () Bool)

(assert (=> (and b!3216773 (= (toChars!7181 (transformation!5230 (h!41626 rules!2135))) (toChars!7181 (transformation!5230 (rule!7682 (apply!8222 lt!1088703 0))))) t!239959) tb!158857))

(declare-fun b!3218292 () Bool)

(declare-fun e!2006623 () Bool)

(declare-fun tp!1014342 () Bool)

(assert (=> b!3218292 (= e!2006623 (and (inv!49077 (c!540717 (dynLambda!14648 (toChars!7181 (transformation!5230 (rule!7682 (apply!8222 lt!1088703 0)))) (value!169515 (apply!8222 lt!1088703 0))))) tp!1014342))))

(declare-fun result!201278 () Bool)

(assert (=> tb!158857 (= result!201278 (and (inv!49078 (dynLambda!14648 (toChars!7181 (transformation!5230 (rule!7682 (apply!8222 lt!1088703 0)))) (value!169515 (apply!8222 lt!1088703 0)))) e!2006623))))

(assert (= tb!158857 b!3218292))

(declare-fun m!3492783 () Bool)

(assert (=> b!3218292 m!3492783))

(declare-fun m!3492785 () Bool)

(assert (=> tb!158857 m!3492785))

(assert (=> d!883478 t!239959))

(declare-fun b_and!214907 () Bool)

(assert (= b_and!214905 (and (=> t!239959 result!201278) b_and!214907)))

(declare-fun tb!158859 () Bool)

(declare-fun t!239961 () Bool)

(assert (=> (and b!3216775 (= (toChars!7181 (transformation!5230 (rule!7682 (h!41627 tokens!494)))) (toChars!7181 (transformation!5230 (rule!7682 (apply!8222 lt!1088703 0))))) t!239961) tb!158859))

(declare-fun result!201280 () Bool)

(assert (= result!201280 result!201278))

(assert (=> d!883478 t!239961))

(declare-fun b_and!214909 () Bool)

(assert (= b_and!214901 (and (=> t!239961 result!201280) b_and!214909)))

(declare-fun t!239963 () Bool)

(declare-fun tb!158861 () Bool)

(assert (=> (and b!3216778 (= (toChars!7181 (transformation!5230 (rule!7682 separatorToken!241))) (toChars!7181 (transformation!5230 (rule!7682 (apply!8222 lt!1088703 0))))) t!239963) tb!158861))

(declare-fun result!201282 () Bool)

(assert (= result!201282 result!201278))

(assert (=> d!883478 t!239963))

(declare-fun b_and!214911 () Bool)

(assert (= b_and!214897 (and (=> t!239963 result!201282) b_and!214911)))

(declare-fun tb!158863 () Bool)

(declare-fun t!239965 () Bool)

(assert (=> (and b!3217757 (= (toChars!7181 (transformation!5230 (h!41626 (t!239821 rules!2135)))) (toChars!7181 (transformation!5230 (rule!7682 (apply!8222 lt!1088703 0))))) t!239965) tb!158863))

(declare-fun result!201284 () Bool)

(assert (= result!201284 result!201278))

(assert (=> d!883478 t!239965))

(declare-fun b_and!214913 () Bool)

(assert (= b_and!214903 (and (=> t!239965 result!201284) b_and!214913)))

(declare-fun tb!158865 () Bool)

(declare-fun t!239967 () Bool)

(assert (=> (and b!3217774 (= (toChars!7181 (transformation!5230 (rule!7682 (h!41627 (t!239822 tokens!494))))) (toChars!7181 (transformation!5230 (rule!7682 (apply!8222 lt!1088703 0))))) t!239967) tb!158865))

(declare-fun result!201286 () Bool)

(assert (= result!201286 result!201278))

(assert (=> d!883478 t!239967))

(declare-fun b_and!214915 () Bool)

(assert (= b_and!214899 (and (=> t!239967 result!201286) b_and!214915)))

(declare-fun m!3492787 () Bool)

(assert (=> d!883478 m!3492787))

(declare-fun m!3492789 () Bool)

(assert (=> d!883478 m!3492789))

(assert (=> b!3217538 d!883478))

(declare-fun d!883480 () Bool)

(assert (=> d!883480 (= (head!7054 (drop!1864 lt!1089025 0)) (apply!8223 lt!1089025 0))))

(declare-fun lt!1089376 () Unit!50722)

(declare-fun choose!18798 (List!36331 Int) Unit!50722)

(assert (=> d!883480 (= lt!1089376 (choose!18798 lt!1089025 0))))

(declare-fun e!2006632 () Bool)

(assert (=> d!883480 e!2006632))

(declare-fun res!1310200 () Bool)

(assert (=> d!883480 (=> (not res!1310200) (not e!2006632))))

(assert (=> d!883480 (= res!1310200 (>= 0 0))))

(assert (=> d!883480 (= (lemmaDropApply!1040 lt!1089025 0) lt!1089376)))

(declare-fun b!3218307 () Bool)

(assert (=> b!3218307 (= e!2006632 (< 0 (size!27299 lt!1089025)))))

(assert (= (and d!883480 res!1310200) b!3218307))

(assert (=> d!883480 m!3491723))

(assert (=> d!883480 m!3491723))

(assert (=> d!883480 m!3491725))

(assert (=> d!883480 m!3491745))

(declare-fun m!3492791 () Bool)

(assert (=> d!883480 m!3492791))

(declare-fun m!3492793 () Bool)

(assert (=> b!3218307 m!3492793))

(assert (=> b!3217538 d!883480))

(declare-fun d!883482 () Bool)

(declare-fun lt!1089409 () Token!9826)

(assert (=> d!883482 (contains!6482 lt!1089025 lt!1089409)))

(declare-fun e!2006643 () Token!9826)

(assert (=> d!883482 (= lt!1089409 e!2006643)))

(declare-fun c!541055 () Bool)

(assert (=> d!883482 (= c!541055 (= 0 0))))

(declare-fun e!2006644 () Bool)

(assert (=> d!883482 e!2006644))

(declare-fun res!1310203 () Bool)

(assert (=> d!883482 (=> (not res!1310203) (not e!2006644))))

(assert (=> d!883482 (= res!1310203 (<= 0 0))))

(assert (=> d!883482 (= (apply!8223 lt!1089025 0) lt!1089409)))

(declare-fun b!3218326 () Bool)

(assert (=> b!3218326 (= e!2006644 (< 0 (size!27299 lt!1089025)))))

(declare-fun b!3218327 () Bool)

(assert (=> b!3218327 (= e!2006643 (head!7054 lt!1089025))))

(declare-fun b!3218328 () Bool)

(assert (=> b!3218328 (= e!2006643 (apply!8223 (tail!5219 lt!1089025) (- 0 1)))))

(assert (= (and d!883482 res!1310203) b!3218326))

(assert (= (and d!883482 c!541055) b!3218327))

(assert (= (and d!883482 (not c!541055)) b!3218328))

(declare-fun m!3492795 () Bool)

(assert (=> d!883482 m!3492795))

(assert (=> b!3218326 m!3492793))

(declare-fun m!3492797 () Bool)

(assert (=> b!3218327 m!3492797))

(declare-fun m!3492799 () Bool)

(assert (=> b!3218328 m!3492799))

(assert (=> b!3218328 m!3492799))

(declare-fun m!3492801 () Bool)

(assert (=> b!3218328 m!3492801))

(assert (=> b!3217538 d!883482))

(declare-fun d!883484 () Bool)

(assert (=> d!883484 (= (tail!5219 (drop!1864 lt!1089026 0)) (drop!1864 lt!1089026 (+ 0 1)))))

(declare-fun lt!1089412 () Unit!50722)

(declare-fun choose!18799 (List!36331 Int) Unit!50722)

(assert (=> d!883484 (= lt!1089412 (choose!18799 lt!1089026 0))))

(declare-fun e!2006651 () Bool)

(assert (=> d!883484 e!2006651))

(declare-fun res!1310210 () Bool)

(assert (=> d!883484 (=> (not res!1310210) (not e!2006651))))

(assert (=> d!883484 (= res!1310210 (>= 0 0))))

(assert (=> d!883484 (= (lemmaDropTail!924 lt!1089026 0) lt!1089412)))

(declare-fun b!3218335 () Bool)

(assert (=> b!3218335 (= e!2006651 (< 0 (size!27299 lt!1089026)))))

(assert (= (and d!883484 res!1310210) b!3218335))

(assert (=> d!883484 m!3491735))

(assert (=> d!883484 m!3491735))

(assert (=> d!883484 m!3491747))

(assert (=> d!883484 m!3491743))

(declare-fun m!3492803 () Bool)

(assert (=> d!883484 m!3492803))

(declare-fun m!3492805 () Bool)

(assert (=> b!3218335 m!3492805))

(assert (=> b!3217538 d!883484))

(declare-fun d!883486 () Bool)

(assert (=> d!883486 (= (head!7054 (drop!1864 lt!1089025 0)) (h!41627 (drop!1864 lt!1089025 0)))))

(assert (=> b!3217538 d!883486))

(declare-fun d!883488 () Bool)

(declare-fun e!2006662 () Bool)

(assert (=> d!883488 e!2006662))

(declare-fun res!1310221 () Bool)

(assert (=> d!883488 (=> (not res!1310221) (not e!2006662))))

(declare-fun appendAssocInst!736 (Conc!10835 Conc!10835) Bool)

(assert (=> d!883488 (= res!1310221 (appendAssocInst!736 (c!540717 (BalanceConc!21285 Empty!10835)) (c!540717 (charsOf!3246 (apply!8222 lt!1088703 0)))))))

(declare-fun lt!1089443 () BalanceConc!21284)

(declare-fun ++!8701 (Conc!10835 Conc!10835) Conc!10835)

(assert (=> d!883488 (= lt!1089443 (BalanceConc!21285 (++!8701 (c!540717 (BalanceConc!21285 Empty!10835)) (c!540717 (charsOf!3246 (apply!8222 lt!1088703 0))))))))

(assert (=> d!883488 (= (++!8699 (BalanceConc!21285 Empty!10835) (charsOf!3246 (apply!8222 lt!1088703 0))) lt!1089443)))

(declare-fun b!3218361 () Bool)

(assert (=> b!3218361 (= e!2006662 (= (list!12887 lt!1089443) (++!8698 (list!12887 (BalanceConc!21285 Empty!10835)) (list!12887 (charsOf!3246 (apply!8222 lt!1088703 0))))))))

(declare-fun b!3218358 () Bool)

(declare-fun res!1310223 () Bool)

(assert (=> b!3218358 (=> (not res!1310223) (not e!2006662))))

(declare-fun isBalanced!3227 (Conc!10835) Bool)

(assert (=> b!3218358 (= res!1310223 (isBalanced!3227 (++!8701 (c!540717 (BalanceConc!21285 Empty!10835)) (c!540717 (charsOf!3246 (apply!8222 lt!1088703 0))))))))

(declare-fun b!3218359 () Bool)

(declare-fun res!1310224 () Bool)

(assert (=> b!3218359 (=> (not res!1310224) (not e!2006662))))

(declare-fun height!1563 (Conc!10835) Int)

(declare-fun max!0 (Int Int) Int)

(assert (=> b!3218359 (= res!1310224 (<= (height!1563 (++!8701 (c!540717 (BalanceConc!21285 Empty!10835)) (c!540717 (charsOf!3246 (apply!8222 lt!1088703 0))))) (+ (max!0 (height!1563 (c!540717 (BalanceConc!21285 Empty!10835))) (height!1563 (c!540717 (charsOf!3246 (apply!8222 lt!1088703 0))))) 1)))))

(declare-fun b!3218360 () Bool)

(declare-fun res!1310222 () Bool)

(assert (=> b!3218360 (=> (not res!1310222) (not e!2006662))))

(assert (=> b!3218360 (= res!1310222 (>= (height!1563 (++!8701 (c!540717 (BalanceConc!21285 Empty!10835)) (c!540717 (charsOf!3246 (apply!8222 lt!1088703 0))))) (max!0 (height!1563 (c!540717 (BalanceConc!21285 Empty!10835))) (height!1563 (c!540717 (charsOf!3246 (apply!8222 lt!1088703 0)))))))))

(assert (= (and d!883488 res!1310221) b!3218358))

(assert (= (and b!3218358 res!1310223) b!3218359))

(assert (= (and b!3218359 res!1310224) b!3218360))

(assert (= (and b!3218360 res!1310222) b!3218361))

(declare-fun m!3492857 () Bool)

(assert (=> b!3218361 m!3492857))

(assert (=> b!3218361 m!3490675))

(assert (=> b!3218361 m!3491733))

(declare-fun m!3492859 () Bool)

(assert (=> b!3218361 m!3492859))

(assert (=> b!3218361 m!3490675))

(assert (=> b!3218361 m!3492859))

(declare-fun m!3492861 () Bool)

(assert (=> b!3218361 m!3492861))

(declare-fun m!3492863 () Bool)

(assert (=> b!3218359 m!3492863))

(declare-fun m!3492865 () Bool)

(assert (=> b!3218359 m!3492865))

(declare-fun m!3492867 () Bool)

(assert (=> b!3218359 m!3492867))

(declare-fun m!3492869 () Bool)

(assert (=> b!3218359 m!3492869))

(assert (=> b!3218359 m!3492867))

(assert (=> b!3218359 m!3492865))

(assert (=> b!3218359 m!3492863))

(declare-fun m!3492871 () Bool)

(assert (=> b!3218359 m!3492871))

(assert (=> b!3218360 m!3492863))

(assert (=> b!3218360 m!3492865))

(assert (=> b!3218360 m!3492867))

(assert (=> b!3218360 m!3492869))

(assert (=> b!3218360 m!3492867))

(assert (=> b!3218360 m!3492865))

(assert (=> b!3218360 m!3492863))

(assert (=> b!3218360 m!3492871))

(declare-fun m!3492873 () Bool)

(assert (=> d!883488 m!3492873))

(assert (=> d!883488 m!3492867))

(assert (=> b!3218358 m!3492867))

(assert (=> b!3218358 m!3492867))

(declare-fun m!3492877 () Bool)

(assert (=> b!3218358 m!3492877))

(assert (=> b!3217538 d!883488))

(declare-fun d!883494 () Bool)

(assert (=> d!883494 (= (tail!5219 (drop!1864 lt!1089026 0)) (t!239822 (drop!1864 lt!1089026 0)))))

(assert (=> b!3217538 d!883494))

(declare-fun d!883496 () Bool)

(declare-fun lt!1089449 () BalanceConc!21284)

(assert (=> d!883496 (= (list!12887 lt!1089449) (printListTailRec!564 thiss!18206 (dropList!1081 lt!1088703 (+ 0 1)) (list!12887 (++!8699 (BalanceConc!21285 Empty!10835) (charsOf!3246 (apply!8222 lt!1088703 0))))))))

(declare-fun e!2006665 () BalanceConc!21284)

(assert (=> d!883496 (= lt!1089449 e!2006665)))

(declare-fun c!541065 () Bool)

(assert (=> d!883496 (= c!541065 (>= (+ 0 1) (size!27295 lt!1088703)))))

(declare-fun e!2006664 () Bool)

(assert (=> d!883496 e!2006664))

(declare-fun res!1310225 () Bool)

(assert (=> d!883496 (=> (not res!1310225) (not e!2006664))))

(assert (=> d!883496 (= res!1310225 (>= (+ 0 1) 0))))

(assert (=> d!883496 (= (printTailRec!1316 thiss!18206 lt!1088703 (+ 0 1) (++!8699 (BalanceConc!21285 Empty!10835) (charsOf!3246 (apply!8222 lt!1088703 0)))) lt!1089449)))

(declare-fun b!3218362 () Bool)

(assert (=> b!3218362 (= e!2006664 (<= (+ 0 1) (size!27295 lt!1088703)))))

(declare-fun b!3218363 () Bool)

(assert (=> b!3218363 (= e!2006665 (++!8699 (BalanceConc!21285 Empty!10835) (charsOf!3246 (apply!8222 lt!1088703 0))))))

(declare-fun b!3218364 () Bool)

(assert (=> b!3218364 (= e!2006665 (printTailRec!1316 thiss!18206 lt!1088703 (+ 0 1 1) (++!8699 (++!8699 (BalanceConc!21285 Empty!10835) (charsOf!3246 (apply!8222 lt!1088703 0))) (charsOf!3246 (apply!8222 lt!1088703 (+ 0 1))))))))

(declare-fun lt!1089445 () List!36331)

(assert (=> b!3218364 (= lt!1089445 (list!12890 lt!1088703))))

(declare-fun lt!1089450 () Unit!50722)

(assert (=> b!3218364 (= lt!1089450 (lemmaDropApply!1040 lt!1089445 (+ 0 1)))))

(assert (=> b!3218364 (= (head!7054 (drop!1864 lt!1089445 (+ 0 1))) (apply!8223 lt!1089445 (+ 0 1)))))

(declare-fun lt!1089448 () Unit!50722)

(assert (=> b!3218364 (= lt!1089448 lt!1089450)))

(declare-fun lt!1089446 () List!36331)

(assert (=> b!3218364 (= lt!1089446 (list!12890 lt!1088703))))

(declare-fun lt!1089444 () Unit!50722)

(assert (=> b!3218364 (= lt!1089444 (lemmaDropTail!924 lt!1089446 (+ 0 1)))))

(assert (=> b!3218364 (= (tail!5219 (drop!1864 lt!1089446 (+ 0 1))) (drop!1864 lt!1089446 (+ 0 1 1)))))

(declare-fun lt!1089447 () Unit!50722)

(assert (=> b!3218364 (= lt!1089447 lt!1089444)))

(assert (= (and d!883496 res!1310225) b!3218362))

(assert (= (and d!883496 c!541065) b!3218363))

(assert (= (and d!883496 (not c!541065)) b!3218364))

(declare-fun m!3492879 () Bool)

(assert (=> d!883496 m!3492879))

(assert (=> d!883496 m!3491717))

(assert (=> d!883496 m!3492879))

(declare-fun m!3492881 () Bool)

(assert (=> d!883496 m!3492881))

(declare-fun m!3492883 () Bool)

(assert (=> d!883496 m!3492883))

(assert (=> d!883496 m!3491739))

(assert (=> d!883496 m!3492881))

(declare-fun m!3492885 () Bool)

(assert (=> d!883496 m!3492885))

(assert (=> b!3218362 m!3491717))

(declare-fun m!3492887 () Bool)

(assert (=> b!3218364 m!3492887))

(declare-fun m!3492889 () Bool)

(assert (=> b!3218364 m!3492889))

(declare-fun m!3492891 () Bool)

(assert (=> b!3218364 m!3492891))

(declare-fun m!3492893 () Bool)

(assert (=> b!3218364 m!3492893))

(assert (=> b!3218364 m!3491731))

(assert (=> b!3218364 m!3492891))

(declare-fun m!3492895 () Bool)

(assert (=> b!3218364 m!3492895))

(declare-fun m!3492897 () Bool)

(assert (=> b!3218364 m!3492897))

(declare-fun m!3492899 () Bool)

(assert (=> b!3218364 m!3492899))

(assert (=> b!3218364 m!3492887))

(declare-fun m!3492901 () Bool)

(assert (=> b!3218364 m!3492901))

(declare-fun m!3492903 () Bool)

(assert (=> b!3218364 m!3492903))

(assert (=> b!3218364 m!3491739))

(assert (=> b!3218364 m!3492895))

(assert (=> b!3218364 m!3492901))

(declare-fun m!3492905 () Bool)

(assert (=> b!3218364 m!3492905))

(declare-fun m!3492907 () Bool)

(assert (=> b!3218364 m!3492907))

(assert (=> b!3218364 m!3492897))

(declare-fun m!3492909 () Bool)

(assert (=> b!3218364 m!3492909))

(assert (=> b!3217538 d!883496))

(declare-fun d!883498 () Bool)

(declare-fun lt!1089453 () Token!9826)

(assert (=> d!883498 (= lt!1089453 (apply!8223 (list!12890 lt!1088703) 0))))

(assert (=> d!883498 (= lt!1089453 (apply!8225 (c!540718 lt!1088703) 0))))

(declare-fun e!2006666 () Bool)

(assert (=> d!883498 e!2006666))

(declare-fun res!1310226 () Bool)

(assert (=> d!883498 (=> (not res!1310226) (not e!2006666))))

(assert (=> d!883498 (= res!1310226 (<= 0 0))))

(assert (=> d!883498 (= (apply!8222 lt!1088703 0) lt!1089453)))

(declare-fun b!3218365 () Bool)

(assert (=> b!3218365 (= e!2006666 (< 0 (size!27295 lt!1088703)))))

(assert (= (and d!883498 res!1310226) b!3218365))

(assert (=> d!883498 m!3491731))

(assert (=> d!883498 m!3491731))

(declare-fun m!3492911 () Bool)

(assert (=> d!883498 m!3492911))

(declare-fun m!3492913 () Bool)

(assert (=> d!883498 m!3492913))

(assert (=> b!3218365 m!3491717))

(assert (=> b!3217538 d!883498))

(declare-fun b!3218390 () Bool)

(declare-fun e!2006684 () Int)

(declare-fun call!232977 () Int)

(assert (=> b!3218390 (= e!2006684 (- call!232977 0))))

(declare-fun b!3218391 () Bool)

(declare-fun e!2006682 () Int)

(assert (=> b!3218391 (= e!2006682 call!232977)))

(declare-fun d!883500 () Bool)

(declare-fun e!2006681 () Bool)

(assert (=> d!883500 e!2006681))

(declare-fun res!1310229 () Bool)

(assert (=> d!883500 (=> (not res!1310229) (not e!2006681))))

(declare-fun lt!1089457 () List!36331)

(assert (=> d!883500 (= res!1310229 (= ((_ map implies) (content!4902 lt!1089457) (content!4902 lt!1089026)) ((as const (InoxSet Token!9826)) true)))))

(declare-fun e!2006683 () List!36331)

(assert (=> d!883500 (= lt!1089457 e!2006683)))

(declare-fun c!541078 () Bool)

(assert (=> d!883500 (= c!541078 ((_ is Nil!36207) lt!1089026))))

(assert (=> d!883500 (= (drop!1864 lt!1089026 0) lt!1089457)))

(declare-fun b!3218392 () Bool)

(declare-fun e!2006685 () List!36331)

(assert (=> b!3218392 (= e!2006683 e!2006685)))

(declare-fun c!541075 () Bool)

(assert (=> b!3218392 (= c!541075 (<= 0 0))))

(declare-fun b!3218393 () Bool)

(assert (=> b!3218393 (= e!2006681 (= (size!27299 lt!1089457) e!2006682))))

(declare-fun c!541076 () Bool)

(assert (=> b!3218393 (= c!541076 (<= 0 0))))

(declare-fun b!3218394 () Bool)

(assert (=> b!3218394 (= e!2006685 lt!1089026)))

(declare-fun b!3218395 () Bool)

(assert (=> b!3218395 (= e!2006685 (drop!1864 (t!239822 lt!1089026) (- 0 1)))))

(declare-fun b!3218396 () Bool)

(assert (=> b!3218396 (= e!2006682 e!2006684)))

(declare-fun c!541077 () Bool)

(assert (=> b!3218396 (= c!541077 (>= 0 call!232977))))

(declare-fun bm!232972 () Bool)

(assert (=> bm!232972 (= call!232977 (size!27299 lt!1089026))))

(declare-fun b!3218397 () Bool)

(assert (=> b!3218397 (= e!2006684 0)))

(declare-fun b!3218398 () Bool)

(assert (=> b!3218398 (= e!2006683 Nil!36207)))

(assert (= (and d!883500 c!541078) b!3218398))

(assert (= (and d!883500 (not c!541078)) b!3218392))

(assert (= (and b!3218392 c!541075) b!3218394))

(assert (= (and b!3218392 (not c!541075)) b!3218395))

(assert (= (and d!883500 res!1310229) b!3218393))

(assert (= (and b!3218393 c!541076) b!3218391))

(assert (= (and b!3218393 (not c!541076)) b!3218396))

(assert (= (and b!3218396 c!541077) b!3218397))

(assert (= (and b!3218396 (not c!541077)) b!3218390))

(assert (= (or b!3218391 b!3218396 b!3218390) bm!232972))

(declare-fun m!3492929 () Bool)

(assert (=> d!883500 m!3492929))

(declare-fun m!3492931 () Bool)

(assert (=> d!883500 m!3492931))

(declare-fun m!3492933 () Bool)

(assert (=> b!3218393 m!3492933))

(declare-fun m!3492935 () Bool)

(assert (=> b!3218395 m!3492935))

(assert (=> bm!232972 m!3492805))

(assert (=> b!3217538 d!883500))

(declare-fun d!883506 () Bool)

(assert (=> d!883506 (= (list!12890 lt!1088703) (list!12893 (c!540718 lt!1088703)))))

(declare-fun bs!542351 () Bool)

(assert (= bs!542351 d!883506))

(declare-fun m!3492937 () Bool)

(assert (=> bs!542351 m!3492937))

(assert (=> b!3217538 d!883506))

(declare-fun b!3218399 () Bool)

(declare-fun e!2006689 () Int)

(declare-fun call!232978 () Int)

(assert (=> b!3218399 (= e!2006689 (- call!232978 0))))

(declare-fun b!3218400 () Bool)

(declare-fun e!2006687 () Int)

(assert (=> b!3218400 (= e!2006687 call!232978)))

(declare-fun d!883508 () Bool)

(declare-fun e!2006686 () Bool)

(assert (=> d!883508 e!2006686))

(declare-fun res!1310230 () Bool)

(assert (=> d!883508 (=> (not res!1310230) (not e!2006686))))

(declare-fun lt!1089458 () List!36331)

(assert (=> d!883508 (= res!1310230 (= ((_ map implies) (content!4902 lt!1089458) (content!4902 lt!1089025)) ((as const (InoxSet Token!9826)) true)))))

(declare-fun e!2006688 () List!36331)

(assert (=> d!883508 (= lt!1089458 e!2006688)))

(declare-fun c!541082 () Bool)

(assert (=> d!883508 (= c!541082 ((_ is Nil!36207) lt!1089025))))

(assert (=> d!883508 (= (drop!1864 lt!1089025 0) lt!1089458)))

(declare-fun b!3218401 () Bool)

(declare-fun e!2006690 () List!36331)

(assert (=> b!3218401 (= e!2006688 e!2006690)))

(declare-fun c!541079 () Bool)

(assert (=> b!3218401 (= c!541079 (<= 0 0))))

(declare-fun b!3218402 () Bool)

(assert (=> b!3218402 (= e!2006686 (= (size!27299 lt!1089458) e!2006687))))

(declare-fun c!541080 () Bool)

(assert (=> b!3218402 (= c!541080 (<= 0 0))))

(declare-fun b!3218403 () Bool)

(assert (=> b!3218403 (= e!2006690 lt!1089025)))

(declare-fun b!3218404 () Bool)

(assert (=> b!3218404 (= e!2006690 (drop!1864 (t!239822 lt!1089025) (- 0 1)))))

(declare-fun b!3218405 () Bool)

(assert (=> b!3218405 (= e!2006687 e!2006689)))

(declare-fun c!541081 () Bool)

(assert (=> b!3218405 (= c!541081 (>= 0 call!232978))))

(declare-fun bm!232973 () Bool)

(assert (=> bm!232973 (= call!232978 (size!27299 lt!1089025))))

(declare-fun b!3218406 () Bool)

(assert (=> b!3218406 (= e!2006689 0)))

(declare-fun b!3218407 () Bool)

(assert (=> b!3218407 (= e!2006688 Nil!36207)))

(assert (= (and d!883508 c!541082) b!3218407))

(assert (= (and d!883508 (not c!541082)) b!3218401))

(assert (= (and b!3218401 c!541079) b!3218403))

(assert (= (and b!3218401 (not c!541079)) b!3218404))

(assert (= (and d!883508 res!1310230) b!3218402))

(assert (= (and b!3218402 c!541080) b!3218400))

(assert (= (and b!3218402 (not c!541080)) b!3218405))

(assert (= (and b!3218405 c!541081) b!3218406))

(assert (= (and b!3218405 (not c!541081)) b!3218399))

(assert (= (or b!3218400 b!3218405 b!3218399) bm!232973))

(declare-fun m!3492939 () Bool)

(assert (=> d!883508 m!3492939))

(declare-fun m!3492941 () Bool)

(assert (=> d!883508 m!3492941))

(declare-fun m!3492943 () Bool)

(assert (=> b!3218402 m!3492943))

(declare-fun m!3492945 () Bool)

(assert (=> b!3218404 m!3492945))

(assert (=> bm!232973 m!3492793))

(assert (=> b!3217538 d!883508))

(declare-fun b!3218408 () Bool)

(declare-fun e!2006694 () Int)

(declare-fun call!232979 () Int)

(assert (=> b!3218408 (= e!2006694 (- call!232979 (+ 0 1)))))

(declare-fun b!3218409 () Bool)

(declare-fun e!2006692 () Int)

(assert (=> b!3218409 (= e!2006692 call!232979)))

(declare-fun d!883510 () Bool)

(declare-fun e!2006691 () Bool)

(assert (=> d!883510 e!2006691))

(declare-fun res!1310231 () Bool)

(assert (=> d!883510 (=> (not res!1310231) (not e!2006691))))

(declare-fun lt!1089459 () List!36331)

(assert (=> d!883510 (= res!1310231 (= ((_ map implies) (content!4902 lt!1089459) (content!4902 lt!1089026)) ((as const (InoxSet Token!9826)) true)))))

(declare-fun e!2006693 () List!36331)

(assert (=> d!883510 (= lt!1089459 e!2006693)))

(declare-fun c!541086 () Bool)

(assert (=> d!883510 (= c!541086 ((_ is Nil!36207) lt!1089026))))

(assert (=> d!883510 (= (drop!1864 lt!1089026 (+ 0 1)) lt!1089459)))

(declare-fun b!3218410 () Bool)

(declare-fun e!2006695 () List!36331)

(assert (=> b!3218410 (= e!2006693 e!2006695)))

(declare-fun c!541083 () Bool)

(assert (=> b!3218410 (= c!541083 (<= (+ 0 1) 0))))

(declare-fun b!3218411 () Bool)

(assert (=> b!3218411 (= e!2006691 (= (size!27299 lt!1089459) e!2006692))))

(declare-fun c!541084 () Bool)

(assert (=> b!3218411 (= c!541084 (<= (+ 0 1) 0))))

(declare-fun b!3218412 () Bool)

(assert (=> b!3218412 (= e!2006695 lt!1089026)))

(declare-fun b!3218413 () Bool)

(assert (=> b!3218413 (= e!2006695 (drop!1864 (t!239822 lt!1089026) (- (+ 0 1) 1)))))

(declare-fun b!3218414 () Bool)

(assert (=> b!3218414 (= e!2006692 e!2006694)))

(declare-fun c!541085 () Bool)

(assert (=> b!3218414 (= c!541085 (>= (+ 0 1) call!232979))))

(declare-fun bm!232974 () Bool)

(assert (=> bm!232974 (= call!232979 (size!27299 lt!1089026))))

(declare-fun b!3218415 () Bool)

(assert (=> b!3218415 (= e!2006694 0)))

(declare-fun b!3218416 () Bool)

(assert (=> b!3218416 (= e!2006693 Nil!36207)))

(assert (= (and d!883510 c!541086) b!3218416))

(assert (= (and d!883510 (not c!541086)) b!3218410))

(assert (= (and b!3218410 c!541083) b!3218412))

(assert (= (and b!3218410 (not c!541083)) b!3218413))

(assert (= (and d!883510 res!1310231) b!3218411))

(assert (= (and b!3218411 c!541084) b!3218409))

(assert (= (and b!3218411 (not c!541084)) b!3218414))

(assert (= (and b!3218414 c!541085) b!3218415))

(assert (= (and b!3218414 (not c!541085)) b!3218408))

(assert (= (or b!3218409 b!3218414 b!3218408) bm!232974))

(declare-fun m!3492947 () Bool)

(assert (=> d!883510 m!3492947))

(assert (=> d!883510 m!3492931))

(declare-fun m!3492949 () Bool)

(assert (=> b!3218411 m!3492949))

(declare-fun m!3492951 () Bool)

(assert (=> b!3218413 m!3492951))

(assert (=> bm!232974 m!3492805))

(assert (=> b!3217538 d!883510))

(declare-fun d!883512 () Bool)

(declare-fun c!541087 () Bool)

(assert (=> d!883512 (= c!541087 ((_ is Nil!36205) lt!1089092))))

(declare-fun e!2006696 () (InoxSet C!20164))

(assert (=> d!883512 (= (content!4899 lt!1089092) e!2006696)))

(declare-fun b!3218417 () Bool)

(assert (=> b!3218417 (= e!2006696 ((as const (Array C!20164 Bool)) false))))

(declare-fun b!3218418 () Bool)

(assert (=> b!3218418 (= e!2006696 ((_ map or) (store ((as const (Array C!20164 Bool)) false) (h!41625 lt!1089092) true) (content!4899 (t!239820 lt!1089092))))))

(assert (= (and d!883512 c!541087) b!3218417))

(assert (= (and d!883512 (not c!541087)) b!3218418))

(declare-fun m!3492953 () Bool)

(assert (=> b!3218418 m!3492953))

(declare-fun m!3492955 () Bool)

(assert (=> b!3218418 m!3492955))

(assert (=> d!883190 d!883512))

(declare-fun d!883514 () Bool)

(declare-fun c!541088 () Bool)

(assert (=> d!883514 (= c!541088 ((_ is Nil!36205) lt!1088680))))

(declare-fun e!2006697 () (InoxSet C!20164))

(assert (=> d!883514 (= (content!4899 lt!1088680) e!2006697)))

(declare-fun b!3218419 () Bool)

(assert (=> b!3218419 (= e!2006697 ((as const (Array C!20164 Bool)) false))))

(declare-fun b!3218420 () Bool)

(assert (=> b!3218420 (= e!2006697 ((_ map or) (store ((as const (Array C!20164 Bool)) false) (h!41625 lt!1088680) true) (content!4899 (t!239820 lt!1088680))))))

(assert (= (and d!883514 c!541088) b!3218419))

(assert (= (and d!883514 (not c!541088)) b!3218420))

(declare-fun m!3492957 () Bool)

(assert (=> b!3218420 m!3492957))

(assert (=> b!3218420 m!3492667))

(assert (=> d!883190 d!883514))

(declare-fun d!883516 () Bool)

(declare-fun c!541089 () Bool)

(assert (=> d!883516 (= c!541089 ((_ is Nil!36205) lt!1088705))))

(declare-fun e!2006698 () (InoxSet C!20164))

(assert (=> d!883516 (= (content!4899 lt!1088705) e!2006698)))

(declare-fun b!3218421 () Bool)

(assert (=> b!3218421 (= e!2006698 ((as const (Array C!20164 Bool)) false))))

(declare-fun b!3218422 () Bool)

(assert (=> b!3218422 (= e!2006698 ((_ map or) (store ((as const (Array C!20164 Bool)) false) (h!41625 lt!1088705) true) (content!4899 (t!239820 lt!1088705))))))

(assert (= (and d!883516 c!541089) b!3218421))

(assert (= (and d!883516 (not c!541089)) b!3218422))

(declare-fun m!3492959 () Bool)

(assert (=> b!3218422 m!3492959))

(declare-fun m!3492961 () Bool)

(assert (=> b!3218422 m!3492961))

(assert (=> d!883190 d!883516))

(declare-fun b!3218423 () Bool)

(declare-fun e!2006702 () List!36329)

(assert (=> b!3218423 (= e!2006702 Nil!36205)))

(declare-fun b!3218424 () Bool)

(declare-fun e!2006700 () List!36329)

(declare-fun call!232982 () List!36329)

(assert (=> b!3218424 (= e!2006700 call!232982)))

(declare-fun b!3218425 () Bool)

(declare-fun e!2006699 () List!36329)

(declare-fun call!232981 () List!36329)

(assert (=> b!3218425 (= e!2006699 call!232981)))

(declare-fun c!541093 () Bool)

(declare-fun bm!232975 () Bool)

(declare-fun call!232983 () List!36329)

(assert (=> bm!232975 (= call!232983 (usedCharacters!546 (ite c!541093 (regTwo!20491 (ite c!540845 (reg!10318 (regex!5230 (rule!7682 (h!41627 tokens!494)))) (ite c!540846 (regOne!20491 (regex!5230 (rule!7682 (h!41627 tokens!494)))) (regTwo!20490 (regex!5230 (rule!7682 (h!41627 tokens!494))))))) (regOne!20490 (ite c!540845 (reg!10318 (regex!5230 (rule!7682 (h!41627 tokens!494)))) (ite c!540846 (regOne!20491 (regex!5230 (rule!7682 (h!41627 tokens!494)))) (regTwo!20490 (regex!5230 (rule!7682 (h!41627 tokens!494))))))))))))

(declare-fun b!3218426 () Bool)

(assert (=> b!3218426 (= e!2006700 e!2006699)))

(assert (=> b!3218426 (= c!541093 ((_ is Union!9989) (ite c!540845 (reg!10318 (regex!5230 (rule!7682 (h!41627 tokens!494)))) (ite c!540846 (regOne!20491 (regex!5230 (rule!7682 (h!41627 tokens!494)))) (regTwo!20490 (regex!5230 (rule!7682 (h!41627 tokens!494))))))))))

(declare-fun b!3218427 () Bool)

(declare-fun e!2006701 () List!36329)

(assert (=> b!3218427 (= e!2006701 (Cons!36205 (c!540716 (ite c!540845 (reg!10318 (regex!5230 (rule!7682 (h!41627 tokens!494)))) (ite c!540846 (regOne!20491 (regex!5230 (rule!7682 (h!41627 tokens!494)))) (regTwo!20490 (regex!5230 (rule!7682 (h!41627 tokens!494))))))) Nil!36205))))

(declare-fun d!883518 () Bool)

(declare-fun c!541091 () Bool)

(assert (=> d!883518 (= c!541091 (or ((_ is EmptyExpr!9989) (ite c!540845 (reg!10318 (regex!5230 (rule!7682 (h!41627 tokens!494)))) (ite c!540846 (regOne!20491 (regex!5230 (rule!7682 (h!41627 tokens!494)))) (regTwo!20490 (regex!5230 (rule!7682 (h!41627 tokens!494))))))) ((_ is EmptyLang!9989) (ite c!540845 (reg!10318 (regex!5230 (rule!7682 (h!41627 tokens!494)))) (ite c!540846 (regOne!20491 (regex!5230 (rule!7682 (h!41627 tokens!494)))) (regTwo!20490 (regex!5230 (rule!7682 (h!41627 tokens!494)))))))))))

(assert (=> d!883518 (= (usedCharacters!546 (ite c!540845 (reg!10318 (regex!5230 (rule!7682 (h!41627 tokens!494)))) (ite c!540846 (regOne!20491 (regex!5230 (rule!7682 (h!41627 tokens!494)))) (regTwo!20490 (regex!5230 (rule!7682 (h!41627 tokens!494))))))) e!2006702)))

(declare-fun bm!232976 () Bool)

(declare-fun call!232980 () List!36329)

(assert (=> bm!232976 (= call!232980 call!232982)))

(declare-fun b!3218428 () Bool)

(assert (=> b!3218428 (= e!2006699 call!232981)))

(declare-fun bm!232977 () Bool)

(assert (=> bm!232977 (= call!232981 (++!8698 (ite c!541093 call!232980 call!232983) (ite c!541093 call!232983 call!232980)))))

(declare-fun b!3218429 () Bool)

(declare-fun c!541092 () Bool)

(assert (=> b!3218429 (= c!541092 ((_ is Star!9989) (ite c!540845 (reg!10318 (regex!5230 (rule!7682 (h!41627 tokens!494)))) (ite c!540846 (regOne!20491 (regex!5230 (rule!7682 (h!41627 tokens!494)))) (regTwo!20490 (regex!5230 (rule!7682 (h!41627 tokens!494))))))))))

(assert (=> b!3218429 (= e!2006701 e!2006700)))

(declare-fun b!3218430 () Bool)

(assert (=> b!3218430 (= e!2006702 e!2006701)))

(declare-fun c!541090 () Bool)

(assert (=> b!3218430 (= c!541090 ((_ is ElementMatch!9989) (ite c!540845 (reg!10318 (regex!5230 (rule!7682 (h!41627 tokens!494)))) (ite c!540846 (regOne!20491 (regex!5230 (rule!7682 (h!41627 tokens!494)))) (regTwo!20490 (regex!5230 (rule!7682 (h!41627 tokens!494))))))))))

(declare-fun bm!232978 () Bool)

(assert (=> bm!232978 (= call!232982 (usedCharacters!546 (ite c!541092 (reg!10318 (ite c!540845 (reg!10318 (regex!5230 (rule!7682 (h!41627 tokens!494)))) (ite c!540846 (regOne!20491 (regex!5230 (rule!7682 (h!41627 tokens!494)))) (regTwo!20490 (regex!5230 (rule!7682 (h!41627 tokens!494))))))) (ite c!541093 (regOne!20491 (ite c!540845 (reg!10318 (regex!5230 (rule!7682 (h!41627 tokens!494)))) (ite c!540846 (regOne!20491 (regex!5230 (rule!7682 (h!41627 tokens!494)))) (regTwo!20490 (regex!5230 (rule!7682 (h!41627 tokens!494))))))) (regTwo!20490 (ite c!540845 (reg!10318 (regex!5230 (rule!7682 (h!41627 tokens!494)))) (ite c!540846 (regOne!20491 (regex!5230 (rule!7682 (h!41627 tokens!494)))) (regTwo!20490 (regex!5230 (rule!7682 (h!41627 tokens!494)))))))))))))

(assert (= (and d!883518 c!541091) b!3218423))

(assert (= (and d!883518 (not c!541091)) b!3218430))

(assert (= (and b!3218430 c!541090) b!3218427))

(assert (= (and b!3218430 (not c!541090)) b!3218429))

(assert (= (and b!3218429 c!541092) b!3218424))

(assert (= (and b!3218429 (not c!541092)) b!3218426))

(assert (= (and b!3218426 c!541093) b!3218428))

(assert (= (and b!3218426 (not c!541093)) b!3218425))

(assert (= (or b!3218428 b!3218425) bm!232975))

(assert (= (or b!3218428 b!3218425) bm!232976))

(assert (= (or b!3218428 b!3218425) bm!232977))

(assert (= (or b!3218424 bm!232976) bm!232978))

(declare-fun m!3492963 () Bool)

(assert (=> bm!232975 m!3492963))

(declare-fun m!3492965 () Bool)

(assert (=> bm!232977 m!3492965))

(declare-fun m!3492967 () Bool)

(assert (=> bm!232978 m!3492967))

(assert (=> bm!232860 d!883518))

(declare-fun d!883520 () Bool)

(assert (=> d!883520 (= (list!12887 lt!1089096) (list!12889 (c!540717 lt!1089096)))))

(declare-fun bs!542352 () Bool)

(assert (= bs!542352 d!883520))

(declare-fun m!3492969 () Bool)

(assert (=> bs!542352 m!3492969))

(assert (=> d!883208 d!883520))

(declare-fun d!883522 () Bool)

(declare-fun lt!1089460 () Int)

(assert (=> d!883522 (>= lt!1089460 0)))

(declare-fun e!2006703 () Int)

(assert (=> d!883522 (= lt!1089460 e!2006703)))

(declare-fun c!541094 () Bool)

(assert (=> d!883522 (= c!541094 ((_ is Nil!36205) (_2!20946 (get!11534 lt!1089033))))))

(assert (=> d!883522 (= (size!27294 (_2!20946 (get!11534 lt!1089033))) lt!1089460)))

(declare-fun b!3218431 () Bool)

(assert (=> b!3218431 (= e!2006703 0)))

(declare-fun b!3218432 () Bool)

(assert (=> b!3218432 (= e!2006703 (+ 1 (size!27294 (t!239820 (_2!20946 (get!11534 lt!1089033))))))))

(assert (= (and d!883522 c!541094) b!3218431))

(assert (= (and d!883522 (not c!541094)) b!3218432))

(declare-fun m!3492971 () Bool)

(assert (=> b!3218432 m!3492971))

(assert (=> b!3217542 d!883522))

(declare-fun d!883524 () Bool)

(assert (=> d!883524 (= (get!11534 lt!1089033) (v!35733 lt!1089033))))

(assert (=> b!3217542 d!883524))

(assert (=> b!3217542 d!882920))

(declare-fun d!883526 () Bool)

(declare-fun lt!1089461 () Token!9826)

(assert (=> d!883526 (= lt!1089461 (apply!8223 (list!12890 (_1!20945 lt!1088852)) 0))))

(assert (=> d!883526 (= lt!1089461 (apply!8225 (c!540718 (_1!20945 lt!1088852)) 0))))

(declare-fun e!2006704 () Bool)

(assert (=> d!883526 e!2006704))

(declare-fun res!1310232 () Bool)

(assert (=> d!883526 (=> (not res!1310232) (not e!2006704))))

(assert (=> d!883526 (= res!1310232 (<= 0 0))))

(assert (=> d!883526 (= (apply!8222 (_1!20945 lt!1088852) 0) lt!1089461)))

(declare-fun b!3218433 () Bool)

(assert (=> b!3218433 (= e!2006704 (< 0 (size!27295 (_1!20945 lt!1088852))))))

(assert (= (and d!883526 res!1310232) b!3218433))

(declare-fun m!3492973 () Bool)

(assert (=> d!883526 m!3492973))

(assert (=> d!883526 m!3492973))

(declare-fun m!3492975 () Bool)

(assert (=> d!883526 m!3492975))

(declare-fun m!3492977 () Bool)

(assert (=> d!883526 m!3492977))

(assert (=> b!3218433 m!3490945))

(assert (=> b!3217146 d!883526))

(declare-fun d!883528 () Bool)

(assert (=> d!883528 (= (isEmpty!20308 (tail!5218 lt!1088680)) ((_ is Nil!36205) (tail!5218 lt!1088680)))))

(assert (=> b!3217015 d!883528))

(declare-fun d!883530 () Bool)

(assert (=> d!883530 (= (tail!5218 lt!1088680) (t!239820 lt!1088680))))

(assert (=> b!3217015 d!883530))

(declare-fun d!883532 () Bool)

(declare-fun lt!1089464 () Bool)

(assert (=> d!883532 (= lt!1089464 (isEmpty!20316 (list!12890 (_1!20945 lt!1089089))))))

(assert (=> d!883532 (= lt!1089464 (isEmpty!20317 (c!540718 (_1!20945 lt!1089089))))))

(assert (=> d!883532 (= (isEmpty!20305 (_1!20945 lt!1089089)) lt!1089464)))

(declare-fun bs!542353 () Bool)

(assert (= bs!542353 d!883532))

(assert (=> bs!542353 m!3492033))

(assert (=> bs!542353 m!3492033))

(declare-fun m!3492979 () Bool)

(assert (=> bs!542353 m!3492979))

(declare-fun m!3492981 () Bool)

(assert (=> bs!542353 m!3492981))

(assert (=> b!3217708 d!883532))

(assert (=> b!3217688 d!883418))

(assert (=> b!3217688 d!883420))

(declare-fun b!3218436 () Bool)

(declare-fun lt!1089465 () Unit!50722)

(declare-fun lt!1089466 () Unit!50722)

(assert (=> b!3218436 (= lt!1089465 lt!1089466)))

(assert (=> b!3218436 (rulesInvariant!4216 thiss!18206 (t!239821 (t!239821 rules!2135)))))

(assert (=> b!3218436 (= lt!1089466 (lemmaInvariantOnRulesThenOnTail!354 thiss!18206 (h!41626 (t!239821 rules!2135)) (t!239821 (t!239821 rules!2135))))))

(declare-fun e!2006707 () Option!7163)

(assert (=> b!3218436 (= e!2006707 (getRuleFromTag!935 thiss!18206 (t!239821 (t!239821 rules!2135)) (tag!5760 (rule!7682 (h!41627 (t!239822 tokens!494))))))))

(declare-fun b!3218438 () Bool)

(assert (=> b!3218438 (= e!2006707 None!7162)))

(declare-fun b!3218439 () Bool)

(declare-fun e!2006710 () Bool)

(declare-fun lt!1089467 () Option!7163)

(assert (=> b!3218439 (= e!2006710 (= (tag!5760 (get!11532 lt!1089467)) (tag!5760 (rule!7682 (h!41627 (t!239822 tokens!494))))))))

(declare-fun b!3218440 () Bool)

(declare-fun e!2006708 () Option!7163)

(assert (=> b!3218440 (= e!2006708 e!2006707)))

(declare-fun c!541096 () Bool)

(assert (=> b!3218440 (= c!541096 (and ((_ is Cons!36206) (t!239821 rules!2135)) (not (= (tag!5760 (h!41626 (t!239821 rules!2135))) (tag!5760 (rule!7682 (h!41627 (t!239822 tokens!494))))))))))

(declare-fun b!3218441 () Bool)

(declare-fun e!2006709 () Bool)

(assert (=> b!3218441 (= e!2006709 e!2006710)))

(declare-fun res!1310236 () Bool)

(assert (=> b!3218441 (=> (not res!1310236) (not e!2006710))))

(assert (=> b!3218441 (= res!1310236 (contains!6483 (t!239821 rules!2135) (get!11532 lt!1089467)))))

(declare-fun d!883534 () Bool)

(assert (=> d!883534 e!2006709))

(declare-fun res!1310235 () Bool)

(assert (=> d!883534 (=> res!1310235 e!2006709)))

(assert (=> d!883534 (= res!1310235 (isEmpty!20311 lt!1089467))))

(assert (=> d!883534 (= lt!1089467 e!2006708)))

(declare-fun c!541095 () Bool)

(assert (=> d!883534 (= c!541095 (and ((_ is Cons!36206) (t!239821 rules!2135)) (= (tag!5760 (h!41626 (t!239821 rules!2135))) (tag!5760 (rule!7682 (h!41627 (t!239822 tokens!494)))))))))

(assert (=> d!883534 (rulesInvariant!4216 thiss!18206 (t!239821 rules!2135))))

(assert (=> d!883534 (= (getRuleFromTag!935 thiss!18206 (t!239821 rules!2135) (tag!5760 (rule!7682 (h!41627 (t!239822 tokens!494))))) lt!1089467)))

(declare-fun b!3218437 () Bool)

(assert (=> b!3218437 (= e!2006708 (Some!7162 (h!41626 (t!239821 rules!2135))))))

(assert (= (and d!883534 c!541095) b!3218437))

(assert (= (and d!883534 (not c!541095)) b!3218440))

(assert (= (and b!3218440 c!541096) b!3218436))

(assert (= (and b!3218440 (not c!541096)) b!3218438))

(assert (= (and d!883534 (not res!1310235)) b!3218441))

(assert (= (and b!3218441 res!1310236) b!3218439))

(assert (=> b!3218436 m!3492645))

(assert (=> b!3218436 m!3492647))

(declare-fun m!3492983 () Bool)

(assert (=> b!3218436 m!3492983))

(declare-fun m!3492985 () Bool)

(assert (=> b!3218439 m!3492985))

(assert (=> b!3218441 m!3492985))

(assert (=> b!3218441 m!3492985))

(declare-fun m!3492987 () Bool)

(assert (=> b!3218441 m!3492987))

(declare-fun m!3492989 () Bool)

(assert (=> d!883534 m!3492989))

(assert (=> d!883534 m!3491791))

(assert (=> b!3217688 d!883534))

(declare-fun d!883536 () Bool)

(assert (=> d!883536 (dynLambda!14651 lambda!117650 (h!41627 tokens!494))))

(assert (=> d!883536 true))

(declare-fun _$7!1106 () Unit!50722)

(assert (=> d!883536 (= (choose!18786 tokens!494 lambda!117650 (h!41627 tokens!494)) _$7!1106)))

(declare-fun b_lambda!88471 () Bool)

(assert (=> (not b_lambda!88471) (not d!883536)))

(declare-fun bs!542354 () Bool)

(assert (= bs!542354 d!883536))

(assert (=> bs!542354 m!3490841))

(assert (=> d!882906 d!883536))

(assert (=> d!882906 d!882886))

(declare-fun d!883538 () Bool)

(declare-fun lt!1089469 () Int)

(assert (=> d!883538 (>= lt!1089469 0)))

(declare-fun e!2006712 () Int)

(assert (=> d!883538 (= lt!1089469 e!2006712)))

(declare-fun c!541097 () Bool)

(assert (=> d!883538 (= c!541097 ((_ is Nil!36205) (originalCharacters!5944 (h!41627 tokens!494))))))

(assert (=> d!883538 (= (size!27294 (originalCharacters!5944 (h!41627 tokens!494))) lt!1089469)))

(declare-fun b!3218443 () Bool)

(assert (=> b!3218443 (= e!2006712 0)))

(declare-fun b!3218444 () Bool)

(assert (=> b!3218444 (= e!2006712 (+ 1 (size!27294 (t!239820 (originalCharacters!5944 (h!41627 tokens!494))))))))

(assert (= (and d!883538 c!541097) b!3218443))

(assert (= (and d!883538 (not c!541097)) b!3218444))

(declare-fun m!3492993 () Bool)

(assert (=> b!3218444 m!3492993))

(assert (=> b!3216939 d!883538))

(declare-fun d!883542 () Bool)

(assert (=> d!883542 (= (inv!49072 (tag!5760 (h!41626 (t!239821 rules!2135)))) (= (mod (str.len (value!169514 (tag!5760 (h!41626 (t!239821 rules!2135))))) 2) 0))))

(assert (=> b!3217756 d!883542))

(declare-fun d!883544 () Bool)

(declare-fun res!1310238 () Bool)

(declare-fun e!2006714 () Bool)

(assert (=> d!883544 (=> (not res!1310238) (not e!2006714))))

(assert (=> d!883544 (= res!1310238 (semiInverseModEq!2158 (toChars!7181 (transformation!5230 (h!41626 (t!239821 rules!2135)))) (toValue!7322 (transformation!5230 (h!41626 (t!239821 rules!2135))))))))

(assert (=> d!883544 (= (inv!49075 (transformation!5230 (h!41626 (t!239821 rules!2135)))) e!2006714)))

(declare-fun b!3218447 () Bool)

(assert (=> b!3218447 (= e!2006714 (equivClasses!2057 (toChars!7181 (transformation!5230 (h!41626 (t!239821 rules!2135)))) (toValue!7322 (transformation!5230 (h!41626 (t!239821 rules!2135))))))))

(assert (= (and d!883544 res!1310238) b!3218447))

(declare-fun m!3492997 () Bool)

(assert (=> d!883544 m!3492997))

(declare-fun m!3492999 () Bool)

(assert (=> b!3218447 m!3492999))

(assert (=> b!3217756 d!883544))

(declare-fun b!3218448 () Bool)

(declare-fun e!2006718 () Bool)

(declare-fun lt!1089472 () Bool)

(assert (=> b!3218448 (= e!2006718 (not lt!1089472))))

(declare-fun b!3218449 () Bool)

(declare-fun e!2006716 () Bool)

(declare-fun e!2006720 () Bool)

(assert (=> b!3218449 (= e!2006716 e!2006720)))

(declare-fun res!1310241 () Bool)

(assert (=> b!3218449 (=> res!1310241 e!2006720)))

(declare-fun call!232984 () Bool)

(assert (=> b!3218449 (= res!1310241 call!232984)))

(declare-fun b!3218450 () Bool)

(declare-fun res!1310246 () Bool)

(declare-fun e!2006719 () Bool)

(assert (=> b!3218450 (=> (not res!1310246) (not e!2006719))))

(assert (=> b!3218450 (= res!1310246 (isEmpty!20308 (tail!5218 (tail!5218 lt!1088680))))))

(declare-fun b!3218451 () Bool)

(assert (=> b!3218451 (= e!2006719 (= (head!7053 (tail!5218 lt!1088680)) (c!540716 (derivativeStep!2954 (regex!5230 lt!1088691) (head!7053 lt!1088680)))))))

(declare-fun b!3218452 () Bool)

(declare-fun res!1310242 () Bool)

(declare-fun e!2006717 () Bool)

(assert (=> b!3218452 (=> res!1310242 e!2006717)))

(assert (=> b!3218452 (= res!1310242 e!2006719)))

(declare-fun res!1310239 () Bool)

(assert (=> b!3218452 (=> (not res!1310239) (not e!2006719))))

(assert (=> b!3218452 (= res!1310239 lt!1089472)))

(declare-fun b!3218453 () Bool)

(assert (=> b!3218453 (= e!2006717 e!2006716)))

(declare-fun res!1310243 () Bool)

(assert (=> b!3218453 (=> (not res!1310243) (not e!2006716))))

(assert (=> b!3218453 (= res!1310243 (not lt!1089472))))

(declare-fun b!3218455 () Bool)

(declare-fun e!2006721 () Bool)

(assert (=> b!3218455 (= e!2006721 (= lt!1089472 call!232984))))

(declare-fun bm!232979 () Bool)

(assert (=> bm!232979 (= call!232984 (isEmpty!20308 (tail!5218 lt!1088680)))))

(declare-fun b!3218456 () Bool)

(assert (=> b!3218456 (= e!2006720 (not (= (head!7053 (tail!5218 lt!1088680)) (c!540716 (derivativeStep!2954 (regex!5230 lt!1088691) (head!7053 lt!1088680))))))))

(declare-fun b!3218457 () Bool)

(declare-fun res!1310240 () Bool)

(assert (=> b!3218457 (=> res!1310240 e!2006720)))

(assert (=> b!3218457 (= res!1310240 (not (isEmpty!20308 (tail!5218 (tail!5218 lt!1088680)))))))

(declare-fun b!3218458 () Bool)

(declare-fun e!2006715 () Bool)

(assert (=> b!3218458 (= e!2006715 (matchR!4623 (derivativeStep!2954 (derivativeStep!2954 (regex!5230 lt!1088691) (head!7053 lt!1088680)) (head!7053 (tail!5218 lt!1088680))) (tail!5218 (tail!5218 lt!1088680))))))

(declare-fun b!3218454 () Bool)

(assert (=> b!3218454 (= e!2006715 (nullable!3401 (derivativeStep!2954 (regex!5230 lt!1088691) (head!7053 lt!1088680))))))

(declare-fun d!883548 () Bool)

(assert (=> d!883548 e!2006721))

(declare-fun c!541101 () Bool)

(assert (=> d!883548 (= c!541101 ((_ is EmptyExpr!9989) (derivativeStep!2954 (regex!5230 lt!1088691) (head!7053 lt!1088680))))))

(assert (=> d!883548 (= lt!1089472 e!2006715)))

(declare-fun c!541100 () Bool)

(assert (=> d!883548 (= c!541100 (isEmpty!20308 (tail!5218 lt!1088680)))))

(assert (=> d!883548 (validRegex!4557 (derivativeStep!2954 (regex!5230 lt!1088691) (head!7053 lt!1088680)))))

(assert (=> d!883548 (= (matchR!4623 (derivativeStep!2954 (regex!5230 lt!1088691) (head!7053 lt!1088680)) (tail!5218 lt!1088680)) lt!1089472)))

(declare-fun b!3218459 () Bool)

(declare-fun res!1310245 () Bool)

(assert (=> b!3218459 (=> (not res!1310245) (not e!2006719))))

(assert (=> b!3218459 (= res!1310245 (not call!232984))))

(declare-fun b!3218460 () Bool)

(declare-fun res!1310244 () Bool)

(assert (=> b!3218460 (=> res!1310244 e!2006717)))

(assert (=> b!3218460 (= res!1310244 (not ((_ is ElementMatch!9989) (derivativeStep!2954 (regex!5230 lt!1088691) (head!7053 lt!1088680)))))))

(assert (=> b!3218460 (= e!2006718 e!2006717)))

(declare-fun b!3218461 () Bool)

(assert (=> b!3218461 (= e!2006721 e!2006718)))

(declare-fun c!541099 () Bool)

(assert (=> b!3218461 (= c!541099 ((_ is EmptyLang!9989) (derivativeStep!2954 (regex!5230 lt!1088691) (head!7053 lt!1088680))))))

(assert (= (and d!883548 c!541100) b!3218454))

(assert (= (and d!883548 (not c!541100)) b!3218458))

(assert (= (and d!883548 c!541101) b!3218455))

(assert (= (and d!883548 (not c!541101)) b!3218461))

(assert (= (and b!3218461 c!541099) b!3218448))

(assert (= (and b!3218461 (not c!541099)) b!3218460))

(assert (= (and b!3218460 (not res!1310244)) b!3218452))

(assert (= (and b!3218452 res!1310239) b!3218459))

(assert (= (and b!3218459 res!1310245) b!3218450))

(assert (= (and b!3218450 res!1310246) b!3218451))

(assert (= (and b!3218452 (not res!1310242)) b!3218453))

(assert (= (and b!3218453 res!1310243) b!3218449))

(assert (= (and b!3218449 (not res!1310241)) b!3218457))

(assert (= (and b!3218457 (not res!1310240)) b!3218456))

(assert (= (or b!3218455 b!3218449 b!3218459) bm!232979))

(assert (=> d!883548 m!3490591))

(assert (=> d!883548 m!3490593))

(assert (=> d!883548 m!3490597))

(declare-fun m!3493005 () Bool)

(assert (=> d!883548 m!3493005))

(assert (=> b!3218457 m!3490591))

(declare-fun m!3493007 () Bool)

(assert (=> b!3218457 m!3493007))

(assert (=> b!3218457 m!3493007))

(declare-fun m!3493009 () Bool)

(assert (=> b!3218457 m!3493009))

(assert (=> b!3218451 m!3490591))

(declare-fun m!3493011 () Bool)

(assert (=> b!3218451 m!3493011))

(assert (=> b!3218454 m!3490597))

(declare-fun m!3493013 () Bool)

(assert (=> b!3218454 m!3493013))

(assert (=> b!3218450 m!3490591))

(assert (=> b!3218450 m!3493007))

(assert (=> b!3218450 m!3493007))

(assert (=> b!3218450 m!3493009))

(assert (=> b!3218458 m!3490591))

(assert (=> b!3218458 m!3493011))

(assert (=> b!3218458 m!3490597))

(assert (=> b!3218458 m!3493011))

(declare-fun m!3493015 () Bool)

(assert (=> b!3218458 m!3493015))

(assert (=> b!3218458 m!3490591))

(assert (=> b!3218458 m!3493007))

(assert (=> b!3218458 m!3493015))

(assert (=> b!3218458 m!3493007))

(declare-fun m!3493017 () Bool)

(assert (=> b!3218458 m!3493017))

(assert (=> bm!232979 m!3490591))

(assert (=> bm!232979 m!3490593))

(assert (=> b!3218456 m!3490591))

(assert (=> b!3218456 m!3493011))

(assert (=> b!3216920 d!883548))

(declare-fun b!3218482 () Bool)

(declare-fun e!2006735 () Regex!9989)

(declare-fun call!232993 () Regex!9989)

(declare-fun call!232994 () Regex!9989)

(assert (=> b!3218482 (= e!2006735 (Union!9989 call!232993 call!232994))))

(declare-fun b!3218483 () Bool)

(declare-fun c!541116 () Bool)

(assert (=> b!3218483 (= c!541116 ((_ is Union!9989) (regex!5230 lt!1088691)))))

(declare-fun e!2006732 () Regex!9989)

(assert (=> b!3218483 (= e!2006732 e!2006735)))

(declare-fun bm!232988 () Bool)

(declare-fun c!541114 () Bool)

(assert (=> bm!232988 (= call!232994 (derivativeStep!2954 (ite c!541116 (regTwo!20491 (regex!5230 lt!1088691)) (ite c!541114 (reg!10318 (regex!5230 lt!1088691)) (regOne!20490 (regex!5230 lt!1088691)))) (head!7053 lt!1088680)))))

(declare-fun bm!232989 () Bool)

(assert (=> bm!232989 (= call!232993 (derivativeStep!2954 (ite c!541116 (regOne!20491 (regex!5230 lt!1088691)) (regTwo!20490 (regex!5230 lt!1088691))) (head!7053 lt!1088680)))))

(declare-fun b!3218484 () Bool)

(declare-fun e!2006736 () Regex!9989)

(declare-fun call!232996 () Regex!9989)

(assert (=> b!3218484 (= e!2006736 (Concat!15449 call!232996 (regex!5230 lt!1088691)))))

(declare-fun bm!232990 () Bool)

(declare-fun call!232995 () Regex!9989)

(assert (=> bm!232990 (= call!232995 call!232996)))

(declare-fun d!883552 () Bool)

(declare-fun lt!1089478 () Regex!9989)

(assert (=> d!883552 (validRegex!4557 lt!1089478)))

(declare-fun e!2006734 () Regex!9989)

(assert (=> d!883552 (= lt!1089478 e!2006734)))

(declare-fun c!541112 () Bool)

(assert (=> d!883552 (= c!541112 (or ((_ is EmptyExpr!9989) (regex!5230 lt!1088691)) ((_ is EmptyLang!9989) (regex!5230 lt!1088691))))))

(assert (=> d!883552 (validRegex!4557 (regex!5230 lt!1088691))))

(assert (=> d!883552 (= (derivativeStep!2954 (regex!5230 lt!1088691) (head!7053 lt!1088680)) lt!1089478)))

(declare-fun b!3218485 () Bool)

(assert (=> b!3218485 (= e!2006735 e!2006736)))

(assert (=> b!3218485 (= c!541114 ((_ is Star!9989) (regex!5230 lt!1088691)))))

(declare-fun b!3218486 () Bool)

(declare-fun c!541115 () Bool)

(assert (=> b!3218486 (= c!541115 (nullable!3401 (regOne!20490 (regex!5230 lt!1088691))))))

(declare-fun e!2006733 () Regex!9989)

(assert (=> b!3218486 (= e!2006736 e!2006733)))

(declare-fun b!3218487 () Bool)

(assert (=> b!3218487 (= e!2006732 (ite (= (head!7053 lt!1088680) (c!540716 (regex!5230 lt!1088691))) EmptyExpr!9989 EmptyLang!9989))))

(declare-fun bm!232991 () Bool)

(assert (=> bm!232991 (= call!232996 call!232994)))

(declare-fun b!3218488 () Bool)

(assert (=> b!3218488 (= e!2006733 (Union!9989 (Concat!15449 call!232995 (regTwo!20490 (regex!5230 lt!1088691))) call!232993))))

(declare-fun b!3218489 () Bool)

(assert (=> b!3218489 (= e!2006734 EmptyLang!9989)))

(declare-fun b!3218490 () Bool)

(assert (=> b!3218490 (= e!2006734 e!2006732)))

(declare-fun c!541113 () Bool)

(assert (=> b!3218490 (= c!541113 ((_ is ElementMatch!9989) (regex!5230 lt!1088691)))))

(declare-fun b!3218491 () Bool)

(assert (=> b!3218491 (= e!2006733 (Union!9989 (Concat!15449 call!232995 (regTwo!20490 (regex!5230 lt!1088691))) EmptyLang!9989))))

(assert (= (and d!883552 c!541112) b!3218489))

(assert (= (and d!883552 (not c!541112)) b!3218490))

(assert (= (and b!3218490 c!541113) b!3218487))

(assert (= (and b!3218490 (not c!541113)) b!3218483))

(assert (= (and b!3218483 c!541116) b!3218482))

(assert (= (and b!3218483 (not c!541116)) b!3218485))

(assert (= (and b!3218485 c!541114) b!3218484))

(assert (= (and b!3218485 (not c!541114)) b!3218486))

(assert (= (and b!3218486 c!541115) b!3218488))

(assert (= (and b!3218486 (not c!541115)) b!3218491))

(assert (= (or b!3218488 b!3218491) bm!232990))

(assert (= (or b!3218484 bm!232990) bm!232991))

(assert (= (or b!3218482 b!3218488) bm!232989))

(assert (= (or b!3218482 bm!232991) bm!232988))

(assert (=> bm!232988 m!3490337))

(declare-fun m!3493023 () Bool)

(assert (=> bm!232988 m!3493023))

(assert (=> bm!232989 m!3490337))

(declare-fun m!3493025 () Bool)

(assert (=> bm!232989 m!3493025))

(declare-fun m!3493027 () Bool)

(assert (=> d!883552 m!3493027))

(assert (=> d!883552 m!3490589))

(declare-fun m!3493029 () Bool)

(assert (=> b!3218486 m!3493029))

(assert (=> b!3216920 d!883552))

(assert (=> b!3216920 d!883140))

(assert (=> b!3216920 d!883530))

(declare-fun d!883558 () Bool)

(assert (=> d!883558 (= (inv!15 (value!169515 separatorToken!241)) (= (charsToBigInt!0 (text!38669 (value!169515 separatorToken!241)) 0) (value!169510 (value!169515 separatorToken!241))))))

(declare-fun bs!542359 () Bool)

(assert (= bs!542359 d!883558))

(declare-fun m!3493031 () Bool)

(assert (=> bs!542359 m!3493031))

(assert (=> b!3217008 d!883558))

(declare-fun d!883560 () Bool)

(assert (=> d!883560 true))

(declare-fun order!18537 () Int)

(declare-fun lambda!117682 () Int)

(declare-fun dynLambda!14657 (Int Int) Int)

(assert (=> d!883560 (< (dynLambda!14647 order!18529 (toChars!7181 (transformation!5230 (rule!7682 (h!41627 tokens!494))))) (dynLambda!14657 order!18537 lambda!117682))))

(assert (=> d!883560 true))

(assert (=> d!883560 (< (dynLambda!14645 order!18525 (toValue!7322 (transformation!5230 (rule!7682 (h!41627 tokens!494))))) (dynLambda!14657 order!18537 lambda!117682))))

(declare-fun Forall!1270 (Int) Bool)

(assert (=> d!883560 (= (semiInverseModEq!2158 (toChars!7181 (transformation!5230 (rule!7682 (h!41627 tokens!494)))) (toValue!7322 (transformation!5230 (rule!7682 (h!41627 tokens!494))))) (Forall!1270 lambda!117682))))

(declare-fun bs!542360 () Bool)

(assert (= bs!542360 d!883560))

(declare-fun m!3493033 () Bool)

(assert (=> bs!542360 m!3493033))

(assert (=> d!882870 d!883560))

(declare-fun b!3218496 () Bool)

(declare-fun e!2006740 () List!36329)

(assert (=> b!3218496 (= e!2006740 Nil!36205)))

(declare-fun b!3218497 () Bool)

(declare-fun e!2006738 () List!36329)

(declare-fun call!232999 () List!36329)

(assert (=> b!3218497 (= e!2006738 call!232999)))

(declare-fun b!3218498 () Bool)

(declare-fun e!2006737 () List!36329)

(declare-fun call!232998 () List!36329)

(assert (=> b!3218498 (= e!2006737 call!232998)))

(declare-fun bm!232992 () Bool)

(declare-fun c!541120 () Bool)

(declare-fun call!233000 () List!36329)

(assert (=> bm!232992 (= call!233000 (usedCharacters!546 (ite c!541120 (regTwo!20491 (ite c!540846 (regTwo!20491 (regex!5230 (rule!7682 (h!41627 tokens!494)))) (regOne!20490 (regex!5230 (rule!7682 (h!41627 tokens!494)))))) (regOne!20490 (ite c!540846 (regTwo!20491 (regex!5230 (rule!7682 (h!41627 tokens!494)))) (regOne!20490 (regex!5230 (rule!7682 (h!41627 tokens!494)))))))))))

(declare-fun b!3218499 () Bool)

(assert (=> b!3218499 (= e!2006738 e!2006737)))

(assert (=> b!3218499 (= c!541120 ((_ is Union!9989) (ite c!540846 (regTwo!20491 (regex!5230 (rule!7682 (h!41627 tokens!494)))) (regOne!20490 (regex!5230 (rule!7682 (h!41627 tokens!494)))))))))

(declare-fun b!3218500 () Bool)

(declare-fun e!2006739 () List!36329)

(assert (=> b!3218500 (= e!2006739 (Cons!36205 (c!540716 (ite c!540846 (regTwo!20491 (regex!5230 (rule!7682 (h!41627 tokens!494)))) (regOne!20490 (regex!5230 (rule!7682 (h!41627 tokens!494)))))) Nil!36205))))

(declare-fun d!883562 () Bool)

(declare-fun c!541118 () Bool)

(assert (=> d!883562 (= c!541118 (or ((_ is EmptyExpr!9989) (ite c!540846 (regTwo!20491 (regex!5230 (rule!7682 (h!41627 tokens!494)))) (regOne!20490 (regex!5230 (rule!7682 (h!41627 tokens!494)))))) ((_ is EmptyLang!9989) (ite c!540846 (regTwo!20491 (regex!5230 (rule!7682 (h!41627 tokens!494)))) (regOne!20490 (regex!5230 (rule!7682 (h!41627 tokens!494))))))))))

(assert (=> d!883562 (= (usedCharacters!546 (ite c!540846 (regTwo!20491 (regex!5230 (rule!7682 (h!41627 tokens!494)))) (regOne!20490 (regex!5230 (rule!7682 (h!41627 tokens!494)))))) e!2006740)))

(declare-fun bm!232993 () Bool)

(declare-fun call!232997 () List!36329)

(assert (=> bm!232993 (= call!232997 call!232999)))

(declare-fun b!3218501 () Bool)

(assert (=> b!3218501 (= e!2006737 call!232998)))

(declare-fun bm!232994 () Bool)

(assert (=> bm!232994 (= call!232998 (++!8698 (ite c!541120 call!232997 call!233000) (ite c!541120 call!233000 call!232997)))))

(declare-fun b!3218502 () Bool)

(declare-fun c!541119 () Bool)

(assert (=> b!3218502 (= c!541119 ((_ is Star!9989) (ite c!540846 (regTwo!20491 (regex!5230 (rule!7682 (h!41627 tokens!494)))) (regOne!20490 (regex!5230 (rule!7682 (h!41627 tokens!494)))))))))

(assert (=> b!3218502 (= e!2006739 e!2006738)))

(declare-fun b!3218503 () Bool)

(assert (=> b!3218503 (= e!2006740 e!2006739)))

(declare-fun c!541117 () Bool)

(assert (=> b!3218503 (= c!541117 ((_ is ElementMatch!9989) (ite c!540846 (regTwo!20491 (regex!5230 (rule!7682 (h!41627 tokens!494)))) (regOne!20490 (regex!5230 (rule!7682 (h!41627 tokens!494)))))))))

(declare-fun bm!232995 () Bool)

(assert (=> bm!232995 (= call!232999 (usedCharacters!546 (ite c!541119 (reg!10318 (ite c!540846 (regTwo!20491 (regex!5230 (rule!7682 (h!41627 tokens!494)))) (regOne!20490 (regex!5230 (rule!7682 (h!41627 tokens!494)))))) (ite c!541120 (regOne!20491 (ite c!540846 (regTwo!20491 (regex!5230 (rule!7682 (h!41627 tokens!494)))) (regOne!20490 (regex!5230 (rule!7682 (h!41627 tokens!494)))))) (regTwo!20490 (ite c!540846 (regTwo!20491 (regex!5230 (rule!7682 (h!41627 tokens!494)))) (regOne!20490 (regex!5230 (rule!7682 (h!41627 tokens!494))))))))))))

(assert (= (and d!883562 c!541118) b!3218496))

(assert (= (and d!883562 (not c!541118)) b!3218503))

(assert (= (and b!3218503 c!541117) b!3218500))

(assert (= (and b!3218503 (not c!541117)) b!3218502))

(assert (= (and b!3218502 c!541119) b!3218497))

(assert (= (and b!3218502 (not c!541119)) b!3218499))

(assert (= (and b!3218499 c!541120) b!3218501))

(assert (= (and b!3218499 (not c!541120)) b!3218498))

(assert (= (or b!3218501 b!3218498) bm!232992))

(assert (= (or b!3218501 b!3218498) bm!232993))

(assert (= (or b!3218501 b!3218498) bm!232994))

(assert (= (or b!3218497 bm!232993) bm!232995))

(declare-fun m!3493035 () Bool)

(assert (=> bm!232992 m!3493035))

(declare-fun m!3493037 () Bool)

(assert (=> bm!232994 m!3493037))

(declare-fun m!3493039 () Bool)

(assert (=> bm!232995 m!3493039))

(assert (=> bm!232857 d!883562))

(declare-fun d!883564 () Bool)

(assert (=> d!883564 (= (isEmpty!20311 lt!1088714) (not ((_ is Some!7162) lt!1088714)))))

(assert (=> d!883136 d!883564))

(declare-fun d!883566 () Bool)

(assert (=> d!883566 (= (list!12890 (singletonSeq!2326 separatorToken!241)) (list!12893 (c!540718 (singletonSeq!2326 separatorToken!241))))))

(declare-fun bs!542361 () Bool)

(assert (= bs!542361 d!883566))

(declare-fun m!3493041 () Bool)

(assert (=> bs!542361 m!3493041))

(assert (=> d!882914 d!883566))

(declare-fun d!883568 () Bool)

(assert (=> d!883568 (= (list!12890 (_1!20945 (lex!2149 thiss!18206 rules!2135 (print!1884 thiss!18206 (singletonSeq!2326 separatorToken!241))))) (list!12893 (c!540718 (_1!20945 (lex!2149 thiss!18206 rules!2135 (print!1884 thiss!18206 (singletonSeq!2326 separatorToken!241)))))))))

(declare-fun bs!542362 () Bool)

(assert (= bs!542362 d!883568))

(declare-fun m!3493043 () Bool)

(assert (=> bs!542362 m!3493043))

(assert (=> d!882914 d!883568))

(assert (=> d!882914 d!883112))

(declare-fun d!883570 () Bool)

(declare-fun lt!1089485 () Int)

(assert (=> d!883570 (= lt!1089485 (size!27299 (list!12890 (_1!20945 lt!1088852))))))

(assert (=> d!883570 (= lt!1089485 (size!27300 (c!540718 (_1!20945 lt!1088852))))))

(assert (=> d!883570 (= (size!27295 (_1!20945 lt!1088852)) lt!1089485)))

(declare-fun bs!542363 () Bool)

(assert (= bs!542363 d!883570))

(assert (=> bs!542363 m!3492973))

(assert (=> bs!542363 m!3492973))

(declare-fun m!3493045 () Bool)

(assert (=> bs!542363 m!3493045))

(declare-fun m!3493047 () Bool)

(assert (=> bs!542363 m!3493047))

(assert (=> d!882914 d!883570))

(declare-fun d!883572 () Bool)

(declare-fun lt!1089486 () BalanceConc!21284)

(assert (=> d!883572 (= (list!12887 lt!1089486) (printList!1369 thiss!18206 (list!12890 (singletonSeq!2326 separatorToken!241))))))

(assert (=> d!883572 (= lt!1089486 (printTailRec!1316 thiss!18206 (singletonSeq!2326 separatorToken!241) 0 (BalanceConc!21285 Empty!10835)))))

(assert (=> d!883572 (= (print!1884 thiss!18206 (singletonSeq!2326 separatorToken!241)) lt!1089486)))

(declare-fun bs!542364 () Bool)

(assert (= bs!542364 d!883572))

(declare-fun m!3493049 () Bool)

(assert (=> bs!542364 m!3493049))

(assert (=> bs!542364 m!3490375))

(assert (=> bs!542364 m!3490947))

(assert (=> bs!542364 m!3490947))

(declare-fun m!3493051 () Bool)

(assert (=> bs!542364 m!3493051))

(assert (=> bs!542364 m!3490375))

(declare-fun m!3493053 () Bool)

(assert (=> bs!542364 m!3493053))

(assert (=> d!882914 d!883572))

(assert (=> d!882914 d!883176))

(declare-fun b!3218514 () Bool)

(declare-fun lt!1089487 () tuple2!35622)

(declare-fun e!2006748 () Bool)

(assert (=> b!3218514 (= e!2006748 (= (list!12887 (_2!20945 lt!1089487)) (_2!20950 (lexList!1317 thiss!18206 rules!2135 (list!12887 (print!1884 thiss!18206 (singletonSeq!2326 separatorToken!241)))))))))

(declare-fun b!3218515 () Bool)

(declare-fun res!1310249 () Bool)

(assert (=> b!3218515 (=> (not res!1310249) (not e!2006748))))

(assert (=> b!3218515 (= res!1310249 (= (list!12890 (_1!20945 lt!1089487)) (_1!20950 (lexList!1317 thiss!18206 rules!2135 (list!12887 (print!1884 thiss!18206 (singletonSeq!2326 separatorToken!241)))))))))

(declare-fun e!2006749 () Bool)

(declare-fun b!3218516 () Bool)

(assert (=> b!3218516 (= e!2006749 (= (_2!20945 lt!1089487) (print!1884 thiss!18206 (singletonSeq!2326 separatorToken!241))))))

(declare-fun b!3218518 () Bool)

(declare-fun e!2006747 () Bool)

(assert (=> b!3218518 (= e!2006749 e!2006747)))

(declare-fun res!1310250 () Bool)

(assert (=> b!3218518 (= res!1310250 (< (size!27301 (_2!20945 lt!1089487)) (size!27301 (print!1884 thiss!18206 (singletonSeq!2326 separatorToken!241)))))))

(assert (=> b!3218518 (=> (not res!1310250) (not e!2006747))))

(declare-fun b!3218517 () Bool)

(assert (=> b!3218517 (= e!2006747 (not (isEmpty!20305 (_1!20945 lt!1089487))))))

(declare-fun d!883574 () Bool)

(assert (=> d!883574 e!2006748))

(declare-fun res!1310251 () Bool)

(assert (=> d!883574 (=> (not res!1310251) (not e!2006748))))

(assert (=> d!883574 (= res!1310251 e!2006749)))

(declare-fun c!541125 () Bool)

(assert (=> d!883574 (= c!541125 (> (size!27295 (_1!20945 lt!1089487)) 0))))

(assert (=> d!883574 (= lt!1089487 (lexTailRecV2!937 thiss!18206 rules!2135 (print!1884 thiss!18206 (singletonSeq!2326 separatorToken!241)) (BalanceConc!21285 Empty!10835) (print!1884 thiss!18206 (singletonSeq!2326 separatorToken!241)) (BalanceConc!21287 Empty!10836)))))

(assert (=> d!883574 (= (lex!2149 thiss!18206 rules!2135 (print!1884 thiss!18206 (singletonSeq!2326 separatorToken!241))) lt!1089487)))

(assert (= (and d!883574 c!541125) b!3218518))

(assert (= (and d!883574 (not c!541125)) b!3218516))

(assert (= (and b!3218518 res!1310250) b!3218517))

(assert (= (and d!883574 res!1310251) b!3218515))

(assert (= (and b!3218515 res!1310249) b!3218514))

(declare-fun m!3493055 () Bool)

(assert (=> d!883574 m!3493055))

(assert (=> d!883574 m!3490949))

(assert (=> d!883574 m!3490949))

(declare-fun m!3493057 () Bool)

(assert (=> d!883574 m!3493057))

(declare-fun m!3493059 () Bool)

(assert (=> b!3218518 m!3493059))

(assert (=> b!3218518 m!3490949))

(declare-fun m!3493061 () Bool)

(assert (=> b!3218518 m!3493061))

(declare-fun m!3493063 () Bool)

(assert (=> b!3218517 m!3493063))

(declare-fun m!3493065 () Bool)

(assert (=> b!3218514 m!3493065))

(assert (=> b!3218514 m!3490949))

(declare-fun m!3493067 () Bool)

(assert (=> b!3218514 m!3493067))

(assert (=> b!3218514 m!3493067))

(declare-fun m!3493069 () Bool)

(assert (=> b!3218514 m!3493069))

(declare-fun m!3493071 () Bool)

(assert (=> b!3218515 m!3493071))

(assert (=> b!3218515 m!3490949))

(assert (=> b!3218515 m!3493067))

(assert (=> b!3218515 m!3493067))

(assert (=> b!3218515 m!3493069))

(assert (=> d!882914 d!883574))

(declare-fun d!883576 () Bool)

(assert (=> d!883576 (= (isEmpty!20308 lt!1088705) ((_ is Nil!36205) lt!1088705))))

(assert (=> bm!232834 d!883576))

(declare-fun d!883578 () Bool)

(declare-fun res!1310265 () Bool)

(declare-fun e!2006764 () Bool)

(assert (=> d!883578 (=> res!1310265 e!2006764)))

(assert (=> d!883578 (= res!1310265 ((_ is Nil!36206) rules!2135))))

(assert (=> d!883578 (= (noDuplicateTag!1914 thiss!18206 rules!2135 Nil!36208) e!2006764)))

(declare-fun b!3218542 () Bool)

(declare-fun e!2006765 () Bool)

(assert (=> b!3218542 (= e!2006764 e!2006765)))

(declare-fun res!1310266 () Bool)

(assert (=> b!3218542 (=> (not res!1310266) (not e!2006765))))

(declare-fun contains!6484 (List!36332 String!40634) Bool)

(assert (=> b!3218542 (= res!1310266 (not (contains!6484 Nil!36208 (tag!5760 (h!41626 rules!2135)))))))

(declare-fun b!3218543 () Bool)

(assert (=> b!3218543 (= e!2006765 (noDuplicateTag!1914 thiss!18206 (t!239821 rules!2135) (Cons!36208 (tag!5760 (h!41626 rules!2135)) Nil!36208)))))

(assert (= (and d!883578 (not res!1310265)) b!3218542))

(assert (= (and b!3218542 res!1310266) b!3218543))

(declare-fun m!3493099 () Bool)

(assert (=> b!3218542 m!3493099))

(declare-fun m!3493103 () Bool)

(assert (=> b!3218543 m!3493103))

(assert (=> b!3217138 d!883578))

(declare-fun b!3218548 () Bool)

(declare-fun e!2006771 () Bool)

(declare-fun lt!1089493 () Bool)

(assert (=> b!3218548 (= e!2006771 (not lt!1089493))))

(declare-fun b!3218549 () Bool)

(declare-fun e!2006769 () Bool)

(declare-fun e!2006773 () Bool)

(assert (=> b!3218549 (= e!2006769 e!2006773)))

(declare-fun res!1310271 () Bool)

(assert (=> b!3218549 (=> res!1310271 e!2006773)))

(declare-fun call!233002 () Bool)

(assert (=> b!3218549 (= res!1310271 call!233002)))

(declare-fun b!3218550 () Bool)

(declare-fun res!1310276 () Bool)

(declare-fun e!2006772 () Bool)

(assert (=> b!3218550 (=> (not res!1310276) (not e!2006772))))

(assert (=> b!3218550 (= res!1310276 (isEmpty!20308 (tail!5218 (tail!5218 lt!1088680))))))

(declare-fun b!3218551 () Bool)

(assert (=> b!3218551 (= e!2006772 (= (head!7053 (tail!5218 lt!1088680)) (c!540716 (derivativeStep!2954 (regex!5230 (rule!7682 (h!41627 (t!239822 tokens!494)))) (head!7053 lt!1088680)))))))

(declare-fun b!3218552 () Bool)

(declare-fun res!1310272 () Bool)

(declare-fun e!2006770 () Bool)

(assert (=> b!3218552 (=> res!1310272 e!2006770)))

(assert (=> b!3218552 (= res!1310272 e!2006772)))

(declare-fun res!1310269 () Bool)

(assert (=> b!3218552 (=> (not res!1310269) (not e!2006772))))

(assert (=> b!3218552 (= res!1310269 lt!1089493)))

(declare-fun b!3218553 () Bool)

(assert (=> b!3218553 (= e!2006770 e!2006769)))

(declare-fun res!1310273 () Bool)

(assert (=> b!3218553 (=> (not res!1310273) (not e!2006769))))

(assert (=> b!3218553 (= res!1310273 (not lt!1089493))))

(declare-fun b!3218555 () Bool)

(declare-fun e!2006774 () Bool)

(assert (=> b!3218555 (= e!2006774 (= lt!1089493 call!233002))))

(declare-fun bm!232997 () Bool)

(assert (=> bm!232997 (= call!233002 (isEmpty!20308 (tail!5218 lt!1088680)))))

(declare-fun b!3218556 () Bool)

(assert (=> b!3218556 (= e!2006773 (not (= (head!7053 (tail!5218 lt!1088680)) (c!540716 (derivativeStep!2954 (regex!5230 (rule!7682 (h!41627 (t!239822 tokens!494)))) (head!7053 lt!1088680))))))))

(declare-fun b!3218557 () Bool)

(declare-fun res!1310270 () Bool)

(assert (=> b!3218557 (=> res!1310270 e!2006773)))

(assert (=> b!3218557 (= res!1310270 (not (isEmpty!20308 (tail!5218 (tail!5218 lt!1088680)))))))

(declare-fun b!3218558 () Bool)

(declare-fun e!2006768 () Bool)

(assert (=> b!3218558 (= e!2006768 (matchR!4623 (derivativeStep!2954 (derivativeStep!2954 (regex!5230 (rule!7682 (h!41627 (t!239822 tokens!494)))) (head!7053 lt!1088680)) (head!7053 (tail!5218 lt!1088680))) (tail!5218 (tail!5218 lt!1088680))))))

(declare-fun b!3218554 () Bool)

(assert (=> b!3218554 (= e!2006768 (nullable!3401 (derivativeStep!2954 (regex!5230 (rule!7682 (h!41627 (t!239822 tokens!494)))) (head!7053 lt!1088680))))))

(declare-fun d!883588 () Bool)

(assert (=> d!883588 e!2006774))

(declare-fun c!541134 () Bool)

(assert (=> d!883588 (= c!541134 ((_ is EmptyExpr!9989) (derivativeStep!2954 (regex!5230 (rule!7682 (h!41627 (t!239822 tokens!494)))) (head!7053 lt!1088680))))))

(assert (=> d!883588 (= lt!1089493 e!2006768)))

(declare-fun c!541133 () Bool)

(assert (=> d!883588 (= c!541133 (isEmpty!20308 (tail!5218 lt!1088680)))))

(assert (=> d!883588 (validRegex!4557 (derivativeStep!2954 (regex!5230 (rule!7682 (h!41627 (t!239822 tokens!494)))) (head!7053 lt!1088680)))))

(assert (=> d!883588 (= (matchR!4623 (derivativeStep!2954 (regex!5230 (rule!7682 (h!41627 (t!239822 tokens!494)))) (head!7053 lt!1088680)) (tail!5218 lt!1088680)) lt!1089493)))

(declare-fun b!3218559 () Bool)

(declare-fun res!1310275 () Bool)

(assert (=> b!3218559 (=> (not res!1310275) (not e!2006772))))

(assert (=> b!3218559 (= res!1310275 (not call!233002))))

(declare-fun b!3218560 () Bool)

(declare-fun res!1310274 () Bool)

(assert (=> b!3218560 (=> res!1310274 e!2006770)))

(assert (=> b!3218560 (= res!1310274 (not ((_ is ElementMatch!9989) (derivativeStep!2954 (regex!5230 (rule!7682 (h!41627 (t!239822 tokens!494)))) (head!7053 lt!1088680)))))))

(assert (=> b!3218560 (= e!2006771 e!2006770)))

(declare-fun b!3218561 () Bool)

(assert (=> b!3218561 (= e!2006774 e!2006771)))

(declare-fun c!541132 () Bool)

(assert (=> b!3218561 (= c!541132 ((_ is EmptyLang!9989) (derivativeStep!2954 (regex!5230 (rule!7682 (h!41627 (t!239822 tokens!494)))) (head!7053 lt!1088680))))))

(assert (= (and d!883588 c!541133) b!3218554))

(assert (= (and d!883588 (not c!541133)) b!3218558))

(assert (= (and d!883588 c!541134) b!3218555))

(assert (= (and d!883588 (not c!541134)) b!3218561))

(assert (= (and b!3218561 c!541132) b!3218548))

(assert (= (and b!3218561 (not c!541132)) b!3218560))

(assert (= (and b!3218560 (not res!1310274)) b!3218552))

(assert (= (and b!3218552 res!1310269) b!3218559))

(assert (= (and b!3218559 res!1310275) b!3218550))

(assert (= (and b!3218550 res!1310276) b!3218551))

(assert (= (and b!3218552 (not res!1310272)) b!3218553))

(assert (= (and b!3218553 res!1310273) b!3218549))

(assert (= (and b!3218549 (not res!1310271)) b!3218557))

(assert (= (and b!3218557 (not res!1310270)) b!3218556))

(assert (= (or b!3218555 b!3218549 b!3218559) bm!232997))

(assert (=> d!883588 m!3490591))

(assert (=> d!883588 m!3490593))

(assert (=> d!883588 m!3490737))

(declare-fun m!3493111 () Bool)

(assert (=> d!883588 m!3493111))

(assert (=> b!3218557 m!3490591))

(assert (=> b!3218557 m!3493007))

(assert (=> b!3218557 m!3493007))

(assert (=> b!3218557 m!3493009))

(assert (=> b!3218551 m!3490591))

(assert (=> b!3218551 m!3493011))

(assert (=> b!3218554 m!3490737))

(declare-fun m!3493113 () Bool)

(assert (=> b!3218554 m!3493113))

(assert (=> b!3218550 m!3490591))

(assert (=> b!3218550 m!3493007))

(assert (=> b!3218550 m!3493007))

(assert (=> b!3218550 m!3493009))

(assert (=> b!3218558 m!3490591))

(assert (=> b!3218558 m!3493011))

(assert (=> b!3218558 m!3490737))

(assert (=> b!3218558 m!3493011))

(declare-fun m!3493115 () Bool)

(assert (=> b!3218558 m!3493115))

(assert (=> b!3218558 m!3490591))

(assert (=> b!3218558 m!3493007))

(assert (=> b!3218558 m!3493115))

(assert (=> b!3218558 m!3493007))

(declare-fun m!3493117 () Bool)

(assert (=> b!3218558 m!3493117))

(assert (=> bm!232997 m!3490591))

(assert (=> bm!232997 m!3490593))

(assert (=> b!3218556 m!3490591))

(assert (=> b!3218556 m!3493011))

(assert (=> b!3217023 d!883588))

(declare-fun b!3218562 () Bool)

(declare-fun e!2006778 () Regex!9989)

(declare-fun call!233003 () Regex!9989)

(declare-fun call!233004 () Regex!9989)

(assert (=> b!3218562 (= e!2006778 (Union!9989 call!233003 call!233004))))

(declare-fun b!3218563 () Bool)

(declare-fun c!541139 () Bool)

(assert (=> b!3218563 (= c!541139 ((_ is Union!9989) (regex!5230 (rule!7682 (h!41627 (t!239822 tokens!494))))))))

(declare-fun e!2006775 () Regex!9989)

(assert (=> b!3218563 (= e!2006775 e!2006778)))

(declare-fun bm!232998 () Bool)

(declare-fun c!541137 () Bool)

(assert (=> bm!232998 (= call!233004 (derivativeStep!2954 (ite c!541139 (regTwo!20491 (regex!5230 (rule!7682 (h!41627 (t!239822 tokens!494))))) (ite c!541137 (reg!10318 (regex!5230 (rule!7682 (h!41627 (t!239822 tokens!494))))) (regOne!20490 (regex!5230 (rule!7682 (h!41627 (t!239822 tokens!494))))))) (head!7053 lt!1088680)))))

(declare-fun bm!232999 () Bool)

(assert (=> bm!232999 (= call!233003 (derivativeStep!2954 (ite c!541139 (regOne!20491 (regex!5230 (rule!7682 (h!41627 (t!239822 tokens!494))))) (regTwo!20490 (regex!5230 (rule!7682 (h!41627 (t!239822 tokens!494)))))) (head!7053 lt!1088680)))))

(declare-fun b!3218564 () Bool)

(declare-fun e!2006779 () Regex!9989)

(declare-fun call!233006 () Regex!9989)

(assert (=> b!3218564 (= e!2006779 (Concat!15449 call!233006 (regex!5230 (rule!7682 (h!41627 (t!239822 tokens!494))))))))

(declare-fun bm!233000 () Bool)

(declare-fun call!233005 () Regex!9989)

(assert (=> bm!233000 (= call!233005 call!233006)))

(declare-fun d!883594 () Bool)

(declare-fun lt!1089494 () Regex!9989)

(assert (=> d!883594 (validRegex!4557 lt!1089494)))

(declare-fun e!2006777 () Regex!9989)

(assert (=> d!883594 (= lt!1089494 e!2006777)))

(declare-fun c!541135 () Bool)

(assert (=> d!883594 (= c!541135 (or ((_ is EmptyExpr!9989) (regex!5230 (rule!7682 (h!41627 (t!239822 tokens!494))))) ((_ is EmptyLang!9989) (regex!5230 (rule!7682 (h!41627 (t!239822 tokens!494)))))))))

(assert (=> d!883594 (validRegex!4557 (regex!5230 (rule!7682 (h!41627 (t!239822 tokens!494)))))))

(assert (=> d!883594 (= (derivativeStep!2954 (regex!5230 (rule!7682 (h!41627 (t!239822 tokens!494)))) (head!7053 lt!1088680)) lt!1089494)))

(declare-fun b!3218565 () Bool)

(assert (=> b!3218565 (= e!2006778 e!2006779)))

(assert (=> b!3218565 (= c!541137 ((_ is Star!9989) (regex!5230 (rule!7682 (h!41627 (t!239822 tokens!494))))))))

(declare-fun b!3218566 () Bool)

(declare-fun c!541138 () Bool)

(assert (=> b!3218566 (= c!541138 (nullable!3401 (regOne!20490 (regex!5230 (rule!7682 (h!41627 (t!239822 tokens!494)))))))))

(declare-fun e!2006776 () Regex!9989)

(assert (=> b!3218566 (= e!2006779 e!2006776)))

(declare-fun b!3218567 () Bool)

(assert (=> b!3218567 (= e!2006775 (ite (= (head!7053 lt!1088680) (c!540716 (regex!5230 (rule!7682 (h!41627 (t!239822 tokens!494)))))) EmptyExpr!9989 EmptyLang!9989))))

(declare-fun bm!233001 () Bool)

(assert (=> bm!233001 (= call!233006 call!233004)))

(declare-fun b!3218568 () Bool)

(assert (=> b!3218568 (= e!2006776 (Union!9989 (Concat!15449 call!233005 (regTwo!20490 (regex!5230 (rule!7682 (h!41627 (t!239822 tokens!494)))))) call!233003))))

(declare-fun b!3218569 () Bool)

(assert (=> b!3218569 (= e!2006777 EmptyLang!9989)))

(declare-fun b!3218570 () Bool)

(assert (=> b!3218570 (= e!2006777 e!2006775)))

(declare-fun c!541136 () Bool)

(assert (=> b!3218570 (= c!541136 ((_ is ElementMatch!9989) (regex!5230 (rule!7682 (h!41627 (t!239822 tokens!494))))))))

(declare-fun b!3218571 () Bool)

(assert (=> b!3218571 (= e!2006776 (Union!9989 (Concat!15449 call!233005 (regTwo!20490 (regex!5230 (rule!7682 (h!41627 (t!239822 tokens!494)))))) EmptyLang!9989))))

(assert (= (and d!883594 c!541135) b!3218569))

(assert (= (and d!883594 (not c!541135)) b!3218570))

(assert (= (and b!3218570 c!541136) b!3218567))

(assert (= (and b!3218570 (not c!541136)) b!3218563))

(assert (= (and b!3218563 c!541139) b!3218562))

(assert (= (and b!3218563 (not c!541139)) b!3218565))

(assert (= (and b!3218565 c!541137) b!3218564))

(assert (= (and b!3218565 (not c!541137)) b!3218566))

(assert (= (and b!3218566 c!541138) b!3218568))

(assert (= (and b!3218566 (not c!541138)) b!3218571))

(assert (= (or b!3218568 b!3218571) bm!233000))

(assert (= (or b!3218564 bm!233000) bm!233001))

(assert (= (or b!3218562 b!3218568) bm!232999))

(assert (= (or b!3218562 bm!233001) bm!232998))

(assert (=> bm!232998 m!3490337))

(declare-fun m!3493121 () Bool)

(assert (=> bm!232998 m!3493121))

(assert (=> bm!232999 m!3490337))

(declare-fun m!3493123 () Bool)

(assert (=> bm!232999 m!3493123))

(declare-fun m!3493125 () Bool)

(assert (=> d!883594 m!3493125))

(assert (=> d!883594 m!3490733))

(declare-fun m!3493127 () Bool)

(assert (=> b!3218566 m!3493127))

(assert (=> b!3217023 d!883594))

(assert (=> b!3217023 d!883140))

(assert (=> b!3217023 d!883530))

(declare-fun d!883602 () Bool)

(assert (=> d!883602 (= (list!12890 (_1!20945 lt!1089063)) (list!12893 (c!540718 (_1!20945 lt!1089063))))))

(declare-fun bs!542368 () Bool)

(assert (= bs!542368 d!883602))

(declare-fun m!3493129 () Bool)

(assert (=> bs!542368 m!3493129))

(assert (=> b!3217671 d!883602))

(declare-fun d!883604 () Bool)

(declare-fun e!2006780 () Bool)

(assert (=> d!883604 e!2006780))

(declare-fun c!541140 () Bool)

(declare-fun lt!1089497 () tuple2!35632)

(assert (=> d!883604 (= c!541140 (> (size!27299 (_1!20950 lt!1089497)) 0))))

(declare-fun e!2006781 () tuple2!35632)

(assert (=> d!883604 (= lt!1089497 e!2006781)))

(declare-fun c!541141 () Bool)

(declare-fun lt!1089495 () Option!7164)

(assert (=> d!883604 (= c!541141 ((_ is Some!7163) lt!1089495))))

(assert (=> d!883604 (= lt!1089495 (maxPrefix!2461 thiss!18206 rules!2135 (list!12887 lt!1088718)))))

(assert (=> d!883604 (= (lexList!1317 thiss!18206 rules!2135 (list!12887 lt!1088718)) lt!1089497)))

(declare-fun b!3218572 () Bool)

(declare-fun lt!1089496 () tuple2!35632)

(assert (=> b!3218572 (= e!2006781 (tuple2!35633 (Cons!36207 (_1!20946 (v!35733 lt!1089495)) (_1!20950 lt!1089496)) (_2!20950 lt!1089496)))))

(assert (=> b!3218572 (= lt!1089496 (lexList!1317 thiss!18206 rules!2135 (_2!20946 (v!35733 lt!1089495))))))

(declare-fun b!3218573 () Bool)

(assert (=> b!3218573 (= e!2006781 (tuple2!35633 Nil!36207 (list!12887 lt!1088718)))))

(declare-fun b!3218574 () Bool)

(declare-fun e!2006782 () Bool)

(assert (=> b!3218574 (= e!2006780 e!2006782)))

(declare-fun res!1310277 () Bool)

(assert (=> b!3218574 (= res!1310277 (< (size!27294 (_2!20950 lt!1089497)) (size!27294 (list!12887 lt!1088718))))))

(assert (=> b!3218574 (=> (not res!1310277) (not e!2006782))))

(declare-fun b!3218575 () Bool)

(assert (=> b!3218575 (= e!2006782 (not (isEmpty!20316 (_1!20950 lt!1089497))))))

(declare-fun b!3218576 () Bool)

(assert (=> b!3218576 (= e!2006780 (= (_2!20950 lt!1089497) (list!12887 lt!1088718)))))

(assert (= (and d!883604 c!541141) b!3218572))

(assert (= (and d!883604 (not c!541141)) b!3218573))

(assert (= (and d!883604 c!541140) b!3218574))

(assert (= (and d!883604 (not c!541140)) b!3218576))

(assert (= (and b!3218574 res!1310277) b!3218575))

(declare-fun m!3493131 () Bool)

(assert (=> d!883604 m!3493131))

(assert (=> d!883604 m!3491917))

(declare-fun m!3493133 () Bool)

(assert (=> d!883604 m!3493133))

(declare-fun m!3493135 () Bool)

(assert (=> b!3218572 m!3493135))

(declare-fun m!3493137 () Bool)

(assert (=> b!3218574 m!3493137))

(assert (=> b!3218574 m!3491917))

(declare-fun m!3493139 () Bool)

(assert (=> b!3218574 m!3493139))

(declare-fun m!3493141 () Bool)

(assert (=> b!3218575 m!3493141))

(assert (=> b!3217671 d!883604))

(declare-fun d!883606 () Bool)

(assert (=> d!883606 (= (list!12887 lt!1088718) (list!12889 (c!540717 lt!1088718)))))

(declare-fun bs!542369 () Bool)

(assert (= bs!542369 d!883606))

(declare-fun m!3493143 () Bool)

(assert (=> bs!542369 m!3493143))

(assert (=> b!3217671 d!883606))

(assert (=> d!883188 d!883576))

(assert (=> d!883188 d!883304))

(assert (=> b!3216913 d!883140))

(assert (=> b!3217203 d!883394))

(declare-fun d!883608 () Bool)

(assert (=> d!883608 (= (apply!8221 (transformation!5230 (rule!7682 (_1!20946 (get!11534 lt!1088911)))) (seqFromList!3531 (originalCharacters!5944 (_1!20946 (get!11534 lt!1088911))))) (dynLambda!14653 (toValue!7322 (transformation!5230 (rule!7682 (_1!20946 (get!11534 lt!1088911))))) (seqFromList!3531 (originalCharacters!5944 (_1!20946 (get!11534 lt!1088911))))))))

(declare-fun b_lambda!88475 () Bool)

(assert (=> (not b_lambda!88475) (not d!883608)))

(declare-fun t!239990 () Bool)

(declare-fun tb!158887 () Bool)

(assert (=> (and b!3216775 (= (toValue!7322 (transformation!5230 (rule!7682 (h!41627 tokens!494)))) (toValue!7322 (transformation!5230 (rule!7682 (_1!20946 (get!11534 lt!1088911)))))) t!239990) tb!158887))

(declare-fun result!201308 () Bool)

(assert (=> tb!158887 (= result!201308 (inv!21 (dynLambda!14653 (toValue!7322 (transformation!5230 (rule!7682 (_1!20946 (get!11534 lt!1088911))))) (seqFromList!3531 (originalCharacters!5944 (_1!20946 (get!11534 lt!1088911)))))))))

(declare-fun m!3493149 () Bool)

(assert (=> tb!158887 m!3493149))

(assert (=> d!883608 t!239990))

(declare-fun b_and!214947 () Bool)

(assert (= b_and!214853 (and (=> t!239990 result!201308) b_and!214947)))

(declare-fun tb!158889 () Bool)

(declare-fun t!239992 () Bool)

(assert (=> (and b!3217757 (= (toValue!7322 (transformation!5230 (h!41626 (t!239821 rules!2135)))) (toValue!7322 (transformation!5230 (rule!7682 (_1!20946 (get!11534 lt!1088911)))))) t!239992) tb!158889))

(declare-fun result!201310 () Bool)

(assert (= result!201310 result!201308))

(assert (=> d!883608 t!239992))

(declare-fun b_and!214949 () Bool)

(assert (= b_and!214879 (and (=> t!239992 result!201310) b_and!214949)))

(declare-fun t!239994 () Bool)

(declare-fun tb!158891 () Bool)

(assert (=> (and b!3217774 (= (toValue!7322 (transformation!5230 (rule!7682 (h!41627 (t!239822 tokens!494))))) (toValue!7322 (transformation!5230 (rule!7682 (_1!20946 (get!11534 lt!1088911)))))) t!239994) tb!158891))

(declare-fun result!201312 () Bool)

(assert (= result!201312 result!201308))

(assert (=> d!883608 t!239994))

(declare-fun b_and!214951 () Bool)

(assert (= b_and!214883 (and (=> t!239994 result!201312) b_and!214951)))

(declare-fun t!239996 () Bool)

(declare-fun tb!158893 () Bool)

(assert (=> (and b!3216778 (= (toValue!7322 (transformation!5230 (rule!7682 separatorToken!241))) (toValue!7322 (transformation!5230 (rule!7682 (_1!20946 (get!11534 lt!1088911)))))) t!239996) tb!158893))

(declare-fun result!201314 () Bool)

(assert (= result!201314 result!201308))

(assert (=> d!883608 t!239996))

(declare-fun b_and!214953 () Bool)

(assert (= b_and!214857 (and (=> t!239996 result!201314) b_and!214953)))

(declare-fun t!239998 () Bool)

(declare-fun tb!158895 () Bool)

(assert (=> (and b!3216773 (= (toValue!7322 (transformation!5230 (h!41626 rules!2135))) (toValue!7322 (transformation!5230 (rule!7682 (_1!20946 (get!11534 lt!1088911)))))) t!239998) tb!158895))

(declare-fun result!201316 () Bool)

(assert (= result!201316 result!201308))

(assert (=> d!883608 t!239998))

(declare-fun b_and!214955 () Bool)

(assert (= b_and!214855 (and (=> t!239998 result!201316) b_and!214955)))

(assert (=> d!883608 m!3491071))

(declare-fun m!3493165 () Bool)

(assert (=> d!883608 m!3493165))

(assert (=> b!3217203 d!883608))

(declare-fun d!883614 () Bool)

(assert (=> d!883614 (= (seqFromList!3531 (originalCharacters!5944 (_1!20946 (get!11534 lt!1088911)))) (fromListB!1549 (originalCharacters!5944 (_1!20946 (get!11534 lt!1088911)))))))

(declare-fun bs!542371 () Bool)

(assert (= bs!542371 d!883614))

(declare-fun m!3493167 () Bool)

(assert (=> bs!542371 m!3493167))

(assert (=> b!3217203 d!883614))

(assert (=> d!883160 d!883116))

(assert (=> d!883160 d!882996))

(declare-fun d!883616 () Bool)

(assert (=> d!883616 (not (contains!6479 (usedCharacters!546 (regex!5230 (rule!7682 (h!41627 tokens!494)))) lt!1088692))))

(assert (=> d!883616 true))

(declare-fun _$73!181 () Unit!50722)

(assert (=> d!883616 (= (choose!18793 thiss!18206 rules!2135 rules!2135 (rule!7682 (h!41627 tokens!494)) (rule!7682 separatorToken!241) lt!1088692) _$73!181)))

(declare-fun bs!542372 () Bool)

(assert (= bs!542372 d!883616))

(assert (=> bs!542372 m!3490359))

(assert (=> bs!542372 m!3490359))

(assert (=> bs!542372 m!3490361))

(assert (=> d!883160 d!883616))

(assert (=> d!883160 d!882902))

(declare-fun b!3218583 () Bool)

(declare-fun e!2006791 () List!36329)

(assert (=> b!3218583 (= e!2006791 Nil!36205)))

(declare-fun b!3218584 () Bool)

(declare-fun e!2006789 () List!36329)

(declare-fun call!233009 () List!36329)

(assert (=> b!3218584 (= e!2006789 call!233009)))

(declare-fun b!3218585 () Bool)

(declare-fun e!2006788 () List!36329)

(declare-fun call!233008 () List!36329)

(assert (=> b!3218585 (= e!2006788 call!233008)))

(declare-fun bm!233002 () Bool)

(declare-fun call!233010 () List!36329)

(declare-fun c!541147 () Bool)

(assert (=> bm!233002 (= call!233010 (usedCharacters!546 (ite c!541147 (regTwo!20491 (ite c!540888 (regTwo!20491 (regex!5230 (rule!7682 (h!41627 (t!239822 tokens!494))))) (regOne!20490 (regex!5230 (rule!7682 (h!41627 (t!239822 tokens!494))))))) (regOne!20490 (ite c!540888 (regTwo!20491 (regex!5230 (rule!7682 (h!41627 (t!239822 tokens!494))))) (regOne!20490 (regex!5230 (rule!7682 (h!41627 (t!239822 tokens!494))))))))))))

(declare-fun b!3218586 () Bool)

(assert (=> b!3218586 (= e!2006789 e!2006788)))

(assert (=> b!3218586 (= c!541147 ((_ is Union!9989) (ite c!540888 (regTwo!20491 (regex!5230 (rule!7682 (h!41627 (t!239822 tokens!494))))) (regOne!20490 (regex!5230 (rule!7682 (h!41627 (t!239822 tokens!494))))))))))

(declare-fun b!3218587 () Bool)

(declare-fun e!2006790 () List!36329)

(assert (=> b!3218587 (= e!2006790 (Cons!36205 (c!540716 (ite c!540888 (regTwo!20491 (regex!5230 (rule!7682 (h!41627 (t!239822 tokens!494))))) (regOne!20490 (regex!5230 (rule!7682 (h!41627 (t!239822 tokens!494))))))) Nil!36205))))

(declare-fun d!883618 () Bool)

(declare-fun c!541145 () Bool)

(assert (=> d!883618 (= c!541145 (or ((_ is EmptyExpr!9989) (ite c!540888 (regTwo!20491 (regex!5230 (rule!7682 (h!41627 (t!239822 tokens!494))))) (regOne!20490 (regex!5230 (rule!7682 (h!41627 (t!239822 tokens!494))))))) ((_ is EmptyLang!9989) (ite c!540888 (regTwo!20491 (regex!5230 (rule!7682 (h!41627 (t!239822 tokens!494))))) (regOne!20490 (regex!5230 (rule!7682 (h!41627 (t!239822 tokens!494)))))))))))

(assert (=> d!883618 (= (usedCharacters!546 (ite c!540888 (regTwo!20491 (regex!5230 (rule!7682 (h!41627 (t!239822 tokens!494))))) (regOne!20490 (regex!5230 (rule!7682 (h!41627 (t!239822 tokens!494))))))) e!2006791)))

(declare-fun bm!233003 () Bool)

(declare-fun call!233007 () List!36329)

(assert (=> bm!233003 (= call!233007 call!233009)))

(declare-fun b!3218588 () Bool)

(assert (=> b!3218588 (= e!2006788 call!233008)))

(declare-fun bm!233004 () Bool)

(assert (=> bm!233004 (= call!233008 (++!8698 (ite c!541147 call!233007 call!233010) (ite c!541147 call!233010 call!233007)))))

(declare-fun b!3218589 () Bool)

(declare-fun c!541146 () Bool)

(assert (=> b!3218589 (= c!541146 ((_ is Star!9989) (ite c!540888 (regTwo!20491 (regex!5230 (rule!7682 (h!41627 (t!239822 tokens!494))))) (regOne!20490 (regex!5230 (rule!7682 (h!41627 (t!239822 tokens!494))))))))))

(assert (=> b!3218589 (= e!2006790 e!2006789)))

(declare-fun b!3218590 () Bool)

(assert (=> b!3218590 (= e!2006791 e!2006790)))

(declare-fun c!541144 () Bool)

(assert (=> b!3218590 (= c!541144 ((_ is ElementMatch!9989) (ite c!540888 (regTwo!20491 (regex!5230 (rule!7682 (h!41627 (t!239822 tokens!494))))) (regOne!20490 (regex!5230 (rule!7682 (h!41627 (t!239822 tokens!494))))))))))

(declare-fun bm!233005 () Bool)

(assert (=> bm!233005 (= call!233009 (usedCharacters!546 (ite c!541146 (reg!10318 (ite c!540888 (regTwo!20491 (regex!5230 (rule!7682 (h!41627 (t!239822 tokens!494))))) (regOne!20490 (regex!5230 (rule!7682 (h!41627 (t!239822 tokens!494))))))) (ite c!541147 (regOne!20491 (ite c!540888 (regTwo!20491 (regex!5230 (rule!7682 (h!41627 (t!239822 tokens!494))))) (regOne!20490 (regex!5230 (rule!7682 (h!41627 (t!239822 tokens!494))))))) (regTwo!20490 (ite c!540888 (regTwo!20491 (regex!5230 (rule!7682 (h!41627 (t!239822 tokens!494))))) (regOne!20490 (regex!5230 (rule!7682 (h!41627 (t!239822 tokens!494)))))))))))))

(assert (= (and d!883618 c!541145) b!3218583))

(assert (= (and d!883618 (not c!541145)) b!3218590))

(assert (= (and b!3218590 c!541144) b!3218587))

(assert (= (and b!3218590 (not c!541144)) b!3218589))

(assert (= (and b!3218589 c!541146) b!3218584))

(assert (= (and b!3218589 (not c!541146)) b!3218586))

(assert (= (and b!3218586 c!541147) b!3218588))

(assert (= (and b!3218586 (not c!541147)) b!3218585))

(assert (= (or b!3218588 b!3218585) bm!233002))

(assert (= (or b!3218588 b!3218585) bm!233003))

(assert (= (or b!3218588 b!3218585) bm!233004))

(assert (= (or b!3218584 bm!233003) bm!233005))

(declare-fun m!3493169 () Bool)

(assert (=> bm!233002 m!3493169))

(declare-fun m!3493171 () Bool)

(assert (=> bm!233004 m!3493171))

(declare-fun m!3493177 () Bool)

(assert (=> bm!233005 m!3493177))

(assert (=> bm!232865 d!883618))

(declare-fun d!883622 () Bool)

(declare-fun lt!1089505 () Int)

(assert (=> d!883622 (= lt!1089505 (size!27299 (list!12890 (_1!20945 lt!1089063))))))

(assert (=> d!883622 (= lt!1089505 (size!27300 (c!540718 (_1!20945 lt!1089063))))))

(assert (=> d!883622 (= (size!27295 (_1!20945 lt!1089063)) lt!1089505)))

(declare-fun bs!542373 () Bool)

(assert (= bs!542373 d!883622))

(assert (=> bs!542373 m!3491921))

(assert (=> bs!542373 m!3491921))

(declare-fun m!3493179 () Bool)

(assert (=> bs!542373 m!3493179))

(declare-fun m!3493181 () Bool)

(assert (=> bs!542373 m!3493181))

(assert (=> d!883148 d!883622))

(declare-datatypes ((tuple2!35634 0))(
  ( (tuple2!35635 (_1!20951 Token!9826) (_2!20951 BalanceConc!21284)) )
))
(declare-datatypes ((Option!7165 0))(
  ( (None!7164) (Some!7164 (v!35744 tuple2!35634)) )
))
(declare-fun lt!1089640 () Option!7165)

(declare-fun lt!1089629 () tuple2!35622)

(declare-fun b!3218773 () Bool)

(declare-fun lexRec!690 (LexerInterface!4819 List!36330 BalanceConc!21284) tuple2!35622)

(assert (=> b!3218773 (= lt!1089629 (lexRec!690 thiss!18206 rules!2135 (_2!20951 (v!35744 lt!1089640))))))

(declare-fun e!2006898 () tuple2!35622)

(declare-fun prepend!1178 (BalanceConc!21286 Token!9826) BalanceConc!21286)

(assert (=> b!3218773 (= e!2006898 (tuple2!35623 (prepend!1178 (_1!20945 lt!1089629) (_1!20951 (v!35744 lt!1089640))) (_2!20945 lt!1089629)))))

(declare-fun b!3218774 () Bool)

(declare-fun lt!1089614 () tuple2!35622)

(declare-fun e!2006895 () Bool)

(assert (=> b!3218774 (= e!2006895 (= (list!12887 (_2!20945 lt!1089614)) (list!12887 (_2!20945 (lexRec!690 thiss!18206 rules!2135 lt!1088718)))))))

(declare-fun b!3218775 () Bool)

(declare-fun e!2006896 () tuple2!35622)

(assert (=> b!3218775 (= e!2006896 (tuple2!35623 (BalanceConc!21287 Empty!10836) lt!1088718))))

(declare-fun b!3218776 () Bool)

(declare-fun lt!1089637 () Option!7165)

(declare-fun lt!1089634 () tuple2!35622)

(assert (=> b!3218776 (= lt!1089634 (lexRec!690 thiss!18206 rules!2135 (_2!20951 (v!35744 lt!1089637))))))

(declare-fun e!2006897 () tuple2!35622)

(assert (=> b!3218776 (= e!2006897 (tuple2!35623 (prepend!1178 (_1!20945 lt!1089634) (_1!20951 (v!35744 lt!1089637))) (_2!20945 lt!1089634)))))

(declare-fun b!3218777 () Bool)

(declare-fun lt!1089616 () BalanceConc!21284)

(assert (=> b!3218777 (= e!2006898 (tuple2!35623 (BalanceConc!21287 Empty!10836) lt!1089616))))

(declare-fun b!3218778 () Bool)

(assert (=> b!3218778 (= e!2006897 (tuple2!35623 (BalanceConc!21287 Empty!10836) lt!1088718))))

(declare-fun d!883624 () Bool)

(assert (=> d!883624 e!2006895))

(declare-fun res!1310338 () Bool)

(assert (=> d!883624 (=> (not res!1310338) (not e!2006895))))

(assert (=> d!883624 (= res!1310338 (= (list!12890 (_1!20945 lt!1089614)) (list!12890 (_1!20945 (lexRec!690 thiss!18206 rules!2135 lt!1088718)))))))

(assert (=> d!883624 (= lt!1089614 e!2006896)))

(declare-fun c!541212 () Bool)

(declare-fun lt!1089612 () Option!7165)

(assert (=> d!883624 (= c!541212 ((_ is Some!7164) lt!1089612))))

(declare-fun maxPrefixZipperSequenceV2!477 (LexerInterface!4819 List!36330 BalanceConc!21284 BalanceConc!21284) Option!7165)

(assert (=> d!883624 (= lt!1089612 (maxPrefixZipperSequenceV2!477 thiss!18206 rules!2135 lt!1088718 lt!1088718))))

(declare-fun lt!1089635 () Unit!50722)

(declare-fun lt!1089639 () Unit!50722)

(assert (=> d!883624 (= lt!1089635 lt!1089639)))

(declare-fun lt!1089630 () List!36329)

(declare-fun lt!1089615 () List!36329)

(declare-fun isSuffix!852 (List!36329 List!36329) Bool)

(assert (=> d!883624 (isSuffix!852 lt!1089630 (++!8698 lt!1089615 lt!1089630))))

(declare-fun lemmaConcatTwoListThenFSndIsSuffix!537 (List!36329 List!36329) Unit!50722)

(assert (=> d!883624 (= lt!1089639 (lemmaConcatTwoListThenFSndIsSuffix!537 lt!1089615 lt!1089630))))

(assert (=> d!883624 (= lt!1089630 (list!12887 lt!1088718))))

(assert (=> d!883624 (= lt!1089615 (list!12887 (BalanceConc!21285 Empty!10835)))))

(assert (=> d!883624 (= (lexTailRecV2!937 thiss!18206 rules!2135 lt!1088718 (BalanceConc!21285 Empty!10835) lt!1088718 (BalanceConc!21287 Empty!10836)) lt!1089614)))

(declare-fun b!3218779 () Bool)

(declare-fun lt!1089622 () BalanceConc!21284)

(declare-fun append!870 (BalanceConc!21286 Token!9826) BalanceConc!21286)

(assert (=> b!3218779 (= e!2006896 (lexTailRecV2!937 thiss!18206 rules!2135 lt!1088718 lt!1089622 (_2!20951 (v!35744 lt!1089612)) (append!870 (BalanceConc!21287 Empty!10836) (_1!20951 (v!35744 lt!1089612)))))))

(declare-fun lt!1089625 () tuple2!35622)

(assert (=> b!3218779 (= lt!1089625 (lexRec!690 thiss!18206 rules!2135 (_2!20951 (v!35744 lt!1089612))))))

(declare-fun lt!1089641 () List!36329)

(assert (=> b!3218779 (= lt!1089641 (list!12887 (BalanceConc!21285 Empty!10835)))))

(declare-fun lt!1089618 () List!36329)

(assert (=> b!3218779 (= lt!1089618 (list!12887 (charsOf!3246 (_1!20951 (v!35744 lt!1089612)))))))

(declare-fun lt!1089631 () List!36329)

(assert (=> b!3218779 (= lt!1089631 (list!12887 (_2!20951 (v!35744 lt!1089612))))))

(declare-fun lt!1089611 () Unit!50722)

(assert (=> b!3218779 (= lt!1089611 (lemmaConcatAssociativity!1756 lt!1089641 lt!1089618 lt!1089631))))

(assert (=> b!3218779 (= (++!8698 (++!8698 lt!1089641 lt!1089618) lt!1089631) (++!8698 lt!1089641 (++!8698 lt!1089618 lt!1089631)))))

(declare-fun lt!1089617 () Unit!50722)

(assert (=> b!3218779 (= lt!1089617 lt!1089611)))

(declare-fun maxPrefixZipperSequence!1083 (LexerInterface!4819 List!36330 BalanceConc!21284) Option!7165)

(assert (=> b!3218779 (= lt!1089637 (maxPrefixZipperSequence!1083 thiss!18206 rules!2135 lt!1088718))))

(declare-fun c!541211 () Bool)

(assert (=> b!3218779 (= c!541211 ((_ is Some!7164) lt!1089637))))

(assert (=> b!3218779 (= (lexRec!690 thiss!18206 rules!2135 lt!1088718) e!2006897)))

(declare-fun lt!1089613 () Unit!50722)

(declare-fun Unit!50734 () Unit!50722)

(assert (=> b!3218779 (= lt!1089613 Unit!50734)))

(declare-fun lt!1089628 () List!36331)

(assert (=> b!3218779 (= lt!1089628 (list!12890 (BalanceConc!21287 Empty!10836)))))

(declare-fun lt!1089633 () List!36331)

(assert (=> b!3218779 (= lt!1089633 (Cons!36207 (_1!20951 (v!35744 lt!1089612)) Nil!36207))))

(declare-fun lt!1089643 () List!36331)

(assert (=> b!3218779 (= lt!1089643 (list!12890 (_1!20945 lt!1089625)))))

(declare-fun lt!1089624 () Unit!50722)

(declare-fun lemmaConcatAssociativity!1757 (List!36331 List!36331 List!36331) Unit!50722)

(assert (=> b!3218779 (= lt!1089624 (lemmaConcatAssociativity!1757 lt!1089628 lt!1089633 lt!1089643))))

(declare-fun ++!8703 (List!36331 List!36331) List!36331)

(assert (=> b!3218779 (= (++!8703 (++!8703 lt!1089628 lt!1089633) lt!1089643) (++!8703 lt!1089628 (++!8703 lt!1089633 lt!1089643)))))

(declare-fun lt!1089632 () Unit!50722)

(assert (=> b!3218779 (= lt!1089632 lt!1089624)))

(declare-fun lt!1089620 () List!36329)

(assert (=> b!3218779 (= lt!1089620 (++!8698 (list!12887 (BalanceConc!21285 Empty!10835)) (list!12887 (charsOf!3246 (_1!20951 (v!35744 lt!1089612))))))))

(declare-fun lt!1089644 () List!36329)

(assert (=> b!3218779 (= lt!1089644 (list!12887 (_2!20951 (v!35744 lt!1089612))))))

(declare-fun lt!1089627 () List!36331)

(assert (=> b!3218779 (= lt!1089627 (list!12890 (append!870 (BalanceConc!21287 Empty!10836) (_1!20951 (v!35744 lt!1089612)))))))

(declare-fun lt!1089642 () Unit!50722)

(declare-fun lemmaLexThenLexPrefix!455 (LexerInterface!4819 List!36330 List!36329 List!36329 List!36331 List!36331 List!36329) Unit!50722)

(assert (=> b!3218779 (= lt!1089642 (lemmaLexThenLexPrefix!455 thiss!18206 rules!2135 lt!1089620 lt!1089644 lt!1089627 (list!12890 (_1!20945 lt!1089625)) (list!12887 (_2!20945 lt!1089625))))))

(assert (=> b!3218779 (= (lexList!1317 thiss!18206 rules!2135 lt!1089620) (tuple2!35633 lt!1089627 Nil!36205))))

(declare-fun lt!1089638 () Unit!50722)

(assert (=> b!3218779 (= lt!1089638 lt!1089642)))

(assert (=> b!3218779 (= lt!1089616 (++!8699 (BalanceConc!21285 Empty!10835) (charsOf!3246 (_1!20951 (v!35744 lt!1089612)))))))

(assert (=> b!3218779 (= lt!1089640 (maxPrefixZipperSequence!1083 thiss!18206 rules!2135 lt!1089616))))

(declare-fun c!541213 () Bool)

(assert (=> b!3218779 (= c!541213 ((_ is Some!7164) lt!1089640))))

(assert (=> b!3218779 (= (lexRec!690 thiss!18206 rules!2135 (++!8699 (BalanceConc!21285 Empty!10835) (charsOf!3246 (_1!20951 (v!35744 lt!1089612))))) e!2006898)))

(declare-fun lt!1089623 () Unit!50722)

(declare-fun Unit!50735 () Unit!50722)

(assert (=> b!3218779 (= lt!1089623 Unit!50735)))

(assert (=> b!3218779 (= lt!1089622 (++!8699 (BalanceConc!21285 Empty!10835) (charsOf!3246 (_1!20951 (v!35744 lt!1089612)))))))

(declare-fun lt!1089626 () List!36329)

(assert (=> b!3218779 (= lt!1089626 (list!12887 lt!1089622))))

(declare-fun lt!1089621 () List!36329)

(assert (=> b!3218779 (= lt!1089621 (list!12887 (_2!20951 (v!35744 lt!1089612))))))

(declare-fun lt!1089636 () Unit!50722)

(assert (=> b!3218779 (= lt!1089636 (lemmaConcatTwoListThenFSndIsSuffix!537 lt!1089626 lt!1089621))))

(assert (=> b!3218779 (isSuffix!852 lt!1089621 (++!8698 lt!1089626 lt!1089621))))

(declare-fun lt!1089619 () Unit!50722)

(assert (=> b!3218779 (= lt!1089619 lt!1089636)))

(assert (= (and d!883624 c!541212) b!3218779))

(assert (= (and d!883624 (not c!541212)) b!3218775))

(assert (= (and b!3218779 c!541211) b!3218776))

(assert (= (and b!3218779 (not c!541211)) b!3218778))

(assert (= (and b!3218779 c!541213) b!3218773))

(assert (= (and b!3218779 (not c!541213)) b!3218777))

(assert (= (and d!883624 res!1310338) b!3218774))

(declare-fun m!3493431 () Bool)

(assert (=> d!883624 m!3493431))

(declare-fun m!3493433 () Bool)

(assert (=> d!883624 m!3493433))

(declare-fun m!3493435 () Bool)

(assert (=> d!883624 m!3493435))

(declare-fun m!3493437 () Bool)

(assert (=> d!883624 m!3493437))

(assert (=> d!883624 m!3490675))

(declare-fun m!3493441 () Bool)

(assert (=> d!883624 m!3493441))

(assert (=> d!883624 m!3493433))

(declare-fun m!3493443 () Bool)

(assert (=> d!883624 m!3493443))

(assert (=> d!883624 m!3491917))

(declare-fun m!3493445 () Bool)

(assert (=> d!883624 m!3493445))

(declare-fun m!3493447 () Bool)

(assert (=> b!3218773 m!3493447))

(declare-fun m!3493449 () Bool)

(assert (=> b!3218773 m!3493449))

(declare-fun m!3493451 () Bool)

(assert (=> b!3218776 m!3493451))

(declare-fun m!3493453 () Bool)

(assert (=> b!3218776 m!3493453))

(declare-fun m!3493457 () Bool)

(assert (=> b!3218774 m!3493457))

(assert (=> b!3218774 m!3493445))

(declare-fun m!3493459 () Bool)

(assert (=> b!3218774 m!3493459))

(declare-fun m!3493461 () Bool)

(assert (=> b!3218779 m!3493461))

(declare-fun m!3493463 () Bool)

(assert (=> b!3218779 m!3493463))

(declare-fun m!3493465 () Bool)

(assert (=> b!3218779 m!3493465))

(declare-fun m!3493467 () Bool)

(assert (=> b!3218779 m!3493467))

(declare-fun m!3493469 () Bool)

(assert (=> b!3218779 m!3493469))

(declare-fun m!3493471 () Bool)

(assert (=> b!3218779 m!3493471))

(declare-fun m!3493473 () Bool)

(assert (=> b!3218779 m!3493473))

(declare-fun m!3493475 () Bool)

(assert (=> b!3218779 m!3493475))

(declare-fun m!3493477 () Bool)

(assert (=> b!3218779 m!3493477))

(declare-fun m!3493479 () Bool)

(assert (=> b!3218779 m!3493479))

(assert (=> b!3218779 m!3490675))

(declare-fun m!3493481 () Bool)

(assert (=> b!3218779 m!3493481))

(declare-fun m!3493483 () Bool)

(assert (=> b!3218779 m!3493483))

(declare-fun m!3493485 () Bool)

(assert (=> b!3218779 m!3493485))

(assert (=> b!3218779 m!3493475))

(declare-fun m!3493487 () Bool)

(assert (=> b!3218779 m!3493487))

(assert (=> b!3218779 m!3493479))

(assert (=> b!3218779 m!3493471))

(assert (=> b!3218779 m!3493445))

(declare-fun m!3493489 () Bool)

(assert (=> b!3218779 m!3493489))

(declare-fun m!3493491 () Bool)

(assert (=> b!3218779 m!3493491))

(declare-fun m!3493493 () Bool)

(assert (=> b!3218779 m!3493493))

(assert (=> b!3218779 m!3493469))

(declare-fun m!3493495 () Bool)

(assert (=> b!3218779 m!3493495))

(assert (=> b!3218779 m!3493467))

(declare-fun m!3493497 () Bool)

(assert (=> b!3218779 m!3493497))

(declare-fun m!3493499 () Bool)

(assert (=> b!3218779 m!3493499))

(declare-fun m!3493501 () Bool)

(assert (=> b!3218779 m!3493501))

(declare-fun m!3493503 () Bool)

(assert (=> b!3218779 m!3493503))

(declare-fun m!3493505 () Bool)

(assert (=> b!3218779 m!3493505))

(assert (=> b!3218779 m!3493479))

(assert (=> b!3218779 m!3493481))

(assert (=> b!3218779 m!3493505))

(declare-fun m!3493507 () Bool)

(assert (=> b!3218779 m!3493507))

(assert (=> b!3218779 m!3493461))

(declare-fun m!3493509 () Bool)

(assert (=> b!3218779 m!3493509))

(assert (=> b!3218779 m!3490675))

(declare-fun m!3493511 () Bool)

(assert (=> b!3218779 m!3493511))

(assert (=> b!3218779 m!3493475))

(declare-fun m!3493513 () Bool)

(assert (=> b!3218779 m!3493513))

(declare-fun m!3493515 () Bool)

(assert (=> b!3218779 m!3493515))

(declare-fun m!3493517 () Bool)

(assert (=> b!3218779 m!3493517))

(declare-fun m!3493519 () Bool)

(assert (=> b!3218779 m!3493519))

(assert (=> b!3218779 m!3493499))

(assert (=> b!3218779 m!3493485))

(declare-fun m!3493521 () Bool)

(assert (=> b!3218779 m!3493521))

(assert (=> b!3218779 m!3493491))

(assert (=> d!883148 d!883624))

(declare-fun d!883732 () Bool)

(declare-fun res!1310339 () Bool)

(declare-fun e!2006901 () Bool)

(assert (=> d!883732 (=> res!1310339 e!2006901)))

(assert (=> d!883732 (= res!1310339 (not ((_ is Cons!36206) (t!239821 rules!2135))))))

(assert (=> d!883732 (= (sepAndNonSepRulesDisjointChars!1424 rules!2135 (t!239821 rules!2135)) e!2006901)))

(declare-fun b!3218784 () Bool)

(declare-fun e!2006902 () Bool)

(assert (=> b!3218784 (= e!2006901 e!2006902)))

(declare-fun res!1310340 () Bool)

(assert (=> b!3218784 (=> (not res!1310340) (not e!2006902))))

(assert (=> b!3218784 (= res!1310340 (ruleDisjointCharsFromAllFromOtherType!595 (h!41626 (t!239821 rules!2135)) rules!2135))))

(declare-fun b!3218785 () Bool)

(assert (=> b!3218785 (= e!2006902 (sepAndNonSepRulesDisjointChars!1424 rules!2135 (t!239821 (t!239821 rules!2135))))))

(assert (= (and d!883732 (not res!1310339)) b!3218784))

(assert (= (and b!3218784 res!1310340) b!3218785))

(declare-fun m!3493523 () Bool)

(assert (=> b!3218784 m!3493523))

(declare-fun m!3493525 () Bool)

(assert (=> b!3218785 m!3493525))

(assert (=> b!3217700 d!883732))

(declare-fun b!3218788 () Bool)

(declare-fun res!1310342 () Bool)

(declare-fun e!2006903 () Bool)

(assert (=> b!3218788 (=> (not res!1310342) (not e!2006903))))

(declare-fun lt!1089646 () List!36329)

(assert (=> b!3218788 (= res!1310342 (= (size!27294 lt!1089646) (+ (size!27294 (list!12887 (charsOf!3246 (h!41627 (Cons!36207 (h!41627 tokens!494) Nil!36207))))) (size!27294 (printList!1369 thiss!18206 (t!239822 (Cons!36207 (h!41627 tokens!494) Nil!36207)))))))))

(declare-fun b!3218789 () Bool)

(assert (=> b!3218789 (= e!2006903 (or (not (= (printList!1369 thiss!18206 (t!239822 (Cons!36207 (h!41627 tokens!494) Nil!36207))) Nil!36205)) (= lt!1089646 (list!12887 (charsOf!3246 (h!41627 (Cons!36207 (h!41627 tokens!494) Nil!36207)))))))))

(declare-fun d!883734 () Bool)

(assert (=> d!883734 e!2006903))

(declare-fun res!1310341 () Bool)

(assert (=> d!883734 (=> (not res!1310341) (not e!2006903))))

(assert (=> d!883734 (= res!1310341 (= (content!4899 lt!1089646) ((_ map or) (content!4899 (list!12887 (charsOf!3246 (h!41627 (Cons!36207 (h!41627 tokens!494) Nil!36207))))) (content!4899 (printList!1369 thiss!18206 (t!239822 (Cons!36207 (h!41627 tokens!494) Nil!36207)))))))))

(declare-fun e!2006904 () List!36329)

(assert (=> d!883734 (= lt!1089646 e!2006904)))

(declare-fun c!541216 () Bool)

(assert (=> d!883734 (= c!541216 ((_ is Nil!36205) (list!12887 (charsOf!3246 (h!41627 (Cons!36207 (h!41627 tokens!494) Nil!36207))))))))

(assert (=> d!883734 (= (++!8698 (list!12887 (charsOf!3246 (h!41627 (Cons!36207 (h!41627 tokens!494) Nil!36207)))) (printList!1369 thiss!18206 (t!239822 (Cons!36207 (h!41627 tokens!494) Nil!36207)))) lt!1089646)))

(declare-fun b!3218786 () Bool)

(assert (=> b!3218786 (= e!2006904 (printList!1369 thiss!18206 (t!239822 (Cons!36207 (h!41627 tokens!494) Nil!36207))))))

(declare-fun b!3218787 () Bool)

(assert (=> b!3218787 (= e!2006904 (Cons!36205 (h!41625 (list!12887 (charsOf!3246 (h!41627 (Cons!36207 (h!41627 tokens!494) Nil!36207))))) (++!8698 (t!239820 (list!12887 (charsOf!3246 (h!41627 (Cons!36207 (h!41627 tokens!494) Nil!36207))))) (printList!1369 thiss!18206 (t!239822 (Cons!36207 (h!41627 tokens!494) Nil!36207))))))))

(assert (= (and d!883734 c!541216) b!3218786))

(assert (= (and d!883734 (not c!541216)) b!3218787))

(assert (= (and d!883734 res!1310341) b!3218788))

(assert (= (and b!3218788 res!1310342) b!3218789))

(declare-fun m!3493533 () Bool)

(assert (=> b!3218788 m!3493533))

(assert (=> b!3218788 m!3490719))

(declare-fun m!3493535 () Bool)

(assert (=> b!3218788 m!3493535))

(assert (=> b!3218788 m!3490721))

(declare-fun m!3493537 () Bool)

(assert (=> b!3218788 m!3493537))

(declare-fun m!3493539 () Bool)

(assert (=> d!883734 m!3493539))

(assert (=> d!883734 m!3490719))

(declare-fun m!3493541 () Bool)

(assert (=> d!883734 m!3493541))

(assert (=> d!883734 m!3490721))

(declare-fun m!3493543 () Bool)

(assert (=> d!883734 m!3493543))

(assert (=> b!3218787 m!3490721))

(declare-fun m!3493545 () Bool)

(assert (=> b!3218787 m!3493545))

(assert (=> b!3216978 d!883734))

(declare-fun d!883740 () Bool)

(assert (=> d!883740 (= (list!12887 (charsOf!3246 (h!41627 (Cons!36207 (h!41627 tokens!494) Nil!36207)))) (list!12889 (c!540717 (charsOf!3246 (h!41627 (Cons!36207 (h!41627 tokens!494) Nil!36207))))))))

(declare-fun bs!542391 () Bool)

(assert (= bs!542391 d!883740))

(declare-fun m!3493547 () Bool)

(assert (=> bs!542391 m!3493547))

(assert (=> b!3216978 d!883740))

(declare-fun d!883742 () Bool)

(declare-fun lt!1089648 () BalanceConc!21284)

(assert (=> d!883742 (= (list!12887 lt!1089648) (originalCharacters!5944 (h!41627 (Cons!36207 (h!41627 tokens!494) Nil!36207))))))

(assert (=> d!883742 (= lt!1089648 (dynLambda!14648 (toChars!7181 (transformation!5230 (rule!7682 (h!41627 (Cons!36207 (h!41627 tokens!494) Nil!36207))))) (value!169515 (h!41627 (Cons!36207 (h!41627 tokens!494) Nil!36207)))))))

(assert (=> d!883742 (= (charsOf!3246 (h!41627 (Cons!36207 (h!41627 tokens!494) Nil!36207))) lt!1089648)))

(declare-fun b_lambda!88481 () Bool)

(assert (=> (not b_lambda!88481) (not d!883742)))

(declare-fun tb!158917 () Bool)

(declare-fun t!240022 () Bool)

(assert (=> (and b!3217757 (= (toChars!7181 (transformation!5230 (h!41626 (t!239821 rules!2135)))) (toChars!7181 (transformation!5230 (rule!7682 (h!41627 (Cons!36207 (h!41627 tokens!494) Nil!36207)))))) t!240022) tb!158917))

(declare-fun b!3218790 () Bool)

(declare-fun e!2006905 () Bool)

(declare-fun tp!1014346 () Bool)

(assert (=> b!3218790 (= e!2006905 (and (inv!49077 (c!540717 (dynLambda!14648 (toChars!7181 (transformation!5230 (rule!7682 (h!41627 (Cons!36207 (h!41627 tokens!494) Nil!36207))))) (value!169515 (h!41627 (Cons!36207 (h!41627 tokens!494) Nil!36207)))))) tp!1014346))))

(declare-fun result!201338 () Bool)

(assert (=> tb!158917 (= result!201338 (and (inv!49078 (dynLambda!14648 (toChars!7181 (transformation!5230 (rule!7682 (h!41627 (Cons!36207 (h!41627 tokens!494) Nil!36207))))) (value!169515 (h!41627 (Cons!36207 (h!41627 tokens!494) Nil!36207))))) e!2006905))))

(assert (= tb!158917 b!3218790))

(declare-fun m!3493549 () Bool)

(assert (=> b!3218790 m!3493549))

(declare-fun m!3493551 () Bool)

(assert (=> tb!158917 m!3493551))

(assert (=> d!883742 t!240022))

(declare-fun b_and!214977 () Bool)

(assert (= b_and!214913 (and (=> t!240022 result!201338) b_and!214977)))

(declare-fun t!240024 () Bool)

(declare-fun tb!158919 () Bool)

(assert (=> (and b!3216775 (= (toChars!7181 (transformation!5230 (rule!7682 (h!41627 tokens!494)))) (toChars!7181 (transformation!5230 (rule!7682 (h!41627 (Cons!36207 (h!41627 tokens!494) Nil!36207)))))) t!240024) tb!158919))

(declare-fun result!201340 () Bool)

(assert (= result!201340 result!201338))

(assert (=> d!883742 t!240024))

(declare-fun b_and!214979 () Bool)

(assert (= b_and!214909 (and (=> t!240024 result!201340) b_and!214979)))

(declare-fun tb!158921 () Bool)

(declare-fun t!240026 () Bool)

(assert (=> (and b!3216778 (= (toChars!7181 (transformation!5230 (rule!7682 separatorToken!241))) (toChars!7181 (transformation!5230 (rule!7682 (h!41627 (Cons!36207 (h!41627 tokens!494) Nil!36207)))))) t!240026) tb!158921))

(declare-fun result!201342 () Bool)

(assert (= result!201342 result!201338))

(assert (=> d!883742 t!240026))

(declare-fun b_and!214981 () Bool)

(assert (= b_and!214911 (and (=> t!240026 result!201342) b_and!214981)))

(declare-fun t!240028 () Bool)

(declare-fun tb!158923 () Bool)

(assert (=> (and b!3217774 (= (toChars!7181 (transformation!5230 (rule!7682 (h!41627 (t!239822 tokens!494))))) (toChars!7181 (transformation!5230 (rule!7682 (h!41627 (Cons!36207 (h!41627 tokens!494) Nil!36207)))))) t!240028) tb!158923))

(declare-fun result!201344 () Bool)

(assert (= result!201344 result!201338))

(assert (=> d!883742 t!240028))

(declare-fun b_and!214983 () Bool)

(assert (= b_and!214915 (and (=> t!240028 result!201344) b_and!214983)))

(declare-fun t!240030 () Bool)

(declare-fun tb!158925 () Bool)

(assert (=> (and b!3216773 (= (toChars!7181 (transformation!5230 (h!41626 rules!2135))) (toChars!7181 (transformation!5230 (rule!7682 (h!41627 (Cons!36207 (h!41627 tokens!494) Nil!36207)))))) t!240030) tb!158925))

(declare-fun result!201346 () Bool)

(assert (= result!201346 result!201338))

(assert (=> d!883742 t!240030))

(declare-fun b_and!214985 () Bool)

(assert (= b_and!214907 (and (=> t!240030 result!201346) b_and!214985)))

(declare-fun m!3493553 () Bool)

(assert (=> d!883742 m!3493553))

(declare-fun m!3493555 () Bool)

(assert (=> d!883742 m!3493555))

(assert (=> b!3216978 d!883742))

(declare-fun d!883744 () Bool)

(declare-fun c!541217 () Bool)

(assert (=> d!883744 (= c!541217 ((_ is Cons!36207) (t!239822 (Cons!36207 (h!41627 tokens!494) Nil!36207))))))

(declare-fun e!2006910 () List!36329)

(assert (=> d!883744 (= (printList!1369 thiss!18206 (t!239822 (Cons!36207 (h!41627 tokens!494) Nil!36207))) e!2006910)))

(declare-fun b!3218795 () Bool)

(assert (=> b!3218795 (= e!2006910 (++!8698 (list!12887 (charsOf!3246 (h!41627 (t!239822 (Cons!36207 (h!41627 tokens!494) Nil!36207))))) (printList!1369 thiss!18206 (t!239822 (t!239822 (Cons!36207 (h!41627 tokens!494) Nil!36207))))))))

(declare-fun b!3218796 () Bool)

(assert (=> b!3218796 (= e!2006910 Nil!36205)))

(assert (= (and d!883744 c!541217) b!3218795))

(assert (= (and d!883744 (not c!541217)) b!3218796))

(declare-fun m!3493557 () Bool)

(assert (=> b!3218795 m!3493557))

(assert (=> b!3218795 m!3493557))

(declare-fun m!3493559 () Bool)

(assert (=> b!3218795 m!3493559))

(declare-fun m!3493561 () Bool)

(assert (=> b!3218795 m!3493561))

(assert (=> b!3218795 m!3493559))

(assert (=> b!3218795 m!3493561))

(declare-fun m!3493563 () Bool)

(assert (=> b!3218795 m!3493563))

(assert (=> b!3216978 d!883744))

(declare-fun d!883746 () Bool)

(assert (=> d!883746 (= (list!12887 lt!1088851) (list!12889 (c!540717 lt!1088851)))))

(declare-fun bs!542392 () Bool)

(assert (= bs!542392 d!883746))

(declare-fun m!3493565 () Bool)

(assert (=> bs!542392 m!3493565))

(assert (=> d!882912 d!883746))

(assert (=> b!3217560 d!883418))

(assert (=> b!3217560 d!883420))

(declare-fun b!3218799 () Bool)

(declare-fun lt!1089652 () Unit!50722)

(declare-fun lt!1089653 () Unit!50722)

(assert (=> b!3218799 (= lt!1089652 lt!1089653)))

(assert (=> b!3218799 (rulesInvariant!4216 thiss!18206 (t!239821 (t!239821 rules!2135)))))

(assert (=> b!3218799 (= lt!1089653 (lemmaInvariantOnRulesThenOnTail!354 thiss!18206 (h!41626 (t!239821 rules!2135)) (t!239821 (t!239821 rules!2135))))))

(declare-fun e!2006913 () Option!7163)

(assert (=> b!3218799 (= e!2006913 (getRuleFromTag!935 thiss!18206 (t!239821 (t!239821 rules!2135)) (tag!5760 (rule!7682 (h!41627 tokens!494)))))))

(declare-fun b!3218801 () Bool)

(assert (=> b!3218801 (= e!2006913 None!7162)))

(declare-fun b!3218802 () Bool)

(declare-fun e!2006916 () Bool)

(declare-fun lt!1089654 () Option!7163)

(assert (=> b!3218802 (= e!2006916 (= (tag!5760 (get!11532 lt!1089654)) (tag!5760 (rule!7682 (h!41627 tokens!494)))))))

(declare-fun b!3218803 () Bool)

(declare-fun e!2006914 () Option!7163)

(assert (=> b!3218803 (= e!2006914 e!2006913)))

(declare-fun c!541219 () Bool)

(assert (=> b!3218803 (= c!541219 (and ((_ is Cons!36206) (t!239821 rules!2135)) (not (= (tag!5760 (h!41626 (t!239821 rules!2135))) (tag!5760 (rule!7682 (h!41627 tokens!494)))))))))

(declare-fun b!3218804 () Bool)

(declare-fun e!2006915 () Bool)

(assert (=> b!3218804 (= e!2006915 e!2006916)))

(declare-fun res!1310350 () Bool)

(assert (=> b!3218804 (=> (not res!1310350) (not e!2006916))))

(assert (=> b!3218804 (= res!1310350 (contains!6483 (t!239821 rules!2135) (get!11532 lt!1089654)))))

(declare-fun d!883748 () Bool)

(assert (=> d!883748 e!2006915))

(declare-fun res!1310349 () Bool)

(assert (=> d!883748 (=> res!1310349 e!2006915)))

(assert (=> d!883748 (= res!1310349 (isEmpty!20311 lt!1089654))))

(assert (=> d!883748 (= lt!1089654 e!2006914)))

(declare-fun c!541218 () Bool)

(assert (=> d!883748 (= c!541218 (and ((_ is Cons!36206) (t!239821 rules!2135)) (= (tag!5760 (h!41626 (t!239821 rules!2135))) (tag!5760 (rule!7682 (h!41627 tokens!494))))))))

(assert (=> d!883748 (rulesInvariant!4216 thiss!18206 (t!239821 rules!2135))))

(assert (=> d!883748 (= (getRuleFromTag!935 thiss!18206 (t!239821 rules!2135) (tag!5760 (rule!7682 (h!41627 tokens!494)))) lt!1089654)))

(declare-fun b!3218800 () Bool)

(assert (=> b!3218800 (= e!2006914 (Some!7162 (h!41626 (t!239821 rules!2135))))))

(assert (= (and d!883748 c!541218) b!3218800))

(assert (= (and d!883748 (not c!541218)) b!3218803))

(assert (= (and b!3218803 c!541219) b!3218799))

(assert (= (and b!3218803 (not c!541219)) b!3218801))

(assert (= (and d!883748 (not res!1310349)) b!3218804))

(assert (= (and b!3218804 res!1310350) b!3218802))

(assert (=> b!3218799 m!3492645))

(assert (=> b!3218799 m!3492647))

(declare-fun m!3493573 () Bool)

(assert (=> b!3218799 m!3493573))

(declare-fun m!3493577 () Bool)

(assert (=> b!3218802 m!3493577))

(assert (=> b!3218804 m!3493577))

(assert (=> b!3218804 m!3493577))

(declare-fun m!3493581 () Bool)

(assert (=> b!3218804 m!3493581))

(declare-fun m!3493583 () Bool)

(assert (=> d!883748 m!3493583))

(assert (=> d!883748 m!3491791))

(assert (=> b!3217560 d!883748))

(declare-fun d!883752 () Bool)

(declare-fun lt!1089656 () Int)

(assert (=> d!883752 (>= lt!1089656 0)))

(declare-fun e!2006919 () Int)

(assert (=> d!883752 (= lt!1089656 e!2006919)))

(declare-fun c!541221 () Bool)

(assert (=> d!883752 (= c!541221 ((_ is Nil!36205) lt!1089095))))

(assert (=> d!883752 (= (size!27294 lt!1089095) lt!1089656)))

(declare-fun b!3218809 () Bool)

(assert (=> b!3218809 (= e!2006919 0)))

(declare-fun b!3218810 () Bool)

(assert (=> b!3218810 (= e!2006919 (+ 1 (size!27294 (t!239820 lt!1089095))))))

(assert (= (and d!883752 c!541221) b!3218809))

(assert (= (and d!883752 (not c!541221)) b!3218810))

(declare-fun m!3493595 () Bool)

(assert (=> b!3218810 m!3493595))

(assert (=> b!3217734 d!883752))

(declare-fun d!883756 () Bool)

(declare-fun lt!1089657 () Int)

(assert (=> d!883756 (>= lt!1089657 0)))

(declare-fun e!2006920 () Int)

(assert (=> d!883756 (= lt!1089657 e!2006920)))

(declare-fun c!541222 () Bool)

(assert (=> d!883756 (= c!541222 ((_ is Nil!36205) lt!1088705))))

(assert (=> d!883756 (= (size!27294 lt!1088705) lt!1089657)))

(declare-fun b!3218811 () Bool)

(assert (=> b!3218811 (= e!2006920 0)))

(declare-fun b!3218812 () Bool)

(assert (=> b!3218812 (= e!2006920 (+ 1 (size!27294 (t!239820 lt!1088705))))))

(assert (= (and d!883756 c!541222) b!3218811))

(assert (= (and d!883756 (not c!541222)) b!3218812))

(declare-fun m!3493599 () Bool)

(assert (=> b!3218812 m!3493599))

(assert (=> b!3217734 d!883756))

(declare-fun d!883760 () Bool)

(declare-fun lt!1089659 () Int)

(assert (=> d!883760 (>= lt!1089659 0)))

(declare-fun e!2006921 () Int)

(assert (=> d!883760 (= lt!1089659 e!2006921)))

(declare-fun c!541223 () Bool)

(assert (=> d!883760 (= c!541223 ((_ is Nil!36205) lt!1088710))))

(assert (=> d!883760 (= (size!27294 lt!1088710) lt!1089659)))

(declare-fun b!3218813 () Bool)

(assert (=> b!3218813 (= e!2006921 0)))

(declare-fun b!3218814 () Bool)

(assert (=> b!3218814 (= e!2006921 (+ 1 (size!27294 (t!239820 lt!1088710))))))

(assert (= (and d!883760 c!541223) b!3218813))

(assert (= (and d!883760 (not c!541223)) b!3218814))

(declare-fun m!3493601 () Bool)

(assert (=> b!3218814 m!3493601))

(assert (=> b!3217734 d!883760))

(declare-fun b!3218815 () Bool)

(declare-fun e!2006925 () Bool)

(declare-fun lt!1089660 () Bool)

(assert (=> b!3218815 (= e!2006925 (not lt!1089660))))

(declare-fun b!3218816 () Bool)

(declare-fun e!2006923 () Bool)

(declare-fun e!2006927 () Bool)

(assert (=> b!3218816 (= e!2006923 e!2006927)))

(declare-fun res!1310355 () Bool)

(assert (=> b!3218816 (=> res!1310355 e!2006927)))

(declare-fun call!233028 () Bool)

(assert (=> b!3218816 (= res!1310355 call!233028)))

(declare-fun b!3218817 () Bool)

(declare-fun res!1310360 () Bool)

(declare-fun e!2006926 () Bool)

(assert (=> b!3218817 (=> (not res!1310360) (not e!2006926))))

(assert (=> b!3218817 (= res!1310360 (isEmpty!20308 (tail!5218 (tail!5218 lt!1088705))))))

(declare-fun b!3218818 () Bool)

(assert (=> b!3218818 (= e!2006926 (= (head!7053 (tail!5218 lt!1088705)) (c!540716 (derivativeStep!2954 (regex!5230 (rule!7682 separatorToken!241)) (head!7053 lt!1088705)))))))

(declare-fun b!3218819 () Bool)

(declare-fun res!1310356 () Bool)

(declare-fun e!2006924 () Bool)

(assert (=> b!3218819 (=> res!1310356 e!2006924)))

(assert (=> b!3218819 (= res!1310356 e!2006926)))

(declare-fun res!1310353 () Bool)

(assert (=> b!3218819 (=> (not res!1310353) (not e!2006926))))

(assert (=> b!3218819 (= res!1310353 lt!1089660)))

(declare-fun b!3218820 () Bool)

(assert (=> b!3218820 (= e!2006924 e!2006923)))

(declare-fun res!1310357 () Bool)

(assert (=> b!3218820 (=> (not res!1310357) (not e!2006923))))

(assert (=> b!3218820 (= res!1310357 (not lt!1089660))))

(declare-fun b!3218822 () Bool)

(declare-fun e!2006928 () Bool)

(assert (=> b!3218822 (= e!2006928 (= lt!1089660 call!233028))))

(declare-fun bm!233023 () Bool)

(assert (=> bm!233023 (= call!233028 (isEmpty!20308 (tail!5218 lt!1088705)))))

(declare-fun b!3218823 () Bool)

(assert (=> b!3218823 (= e!2006927 (not (= (head!7053 (tail!5218 lt!1088705)) (c!540716 (derivativeStep!2954 (regex!5230 (rule!7682 separatorToken!241)) (head!7053 lt!1088705))))))))

(declare-fun b!3218824 () Bool)

(declare-fun res!1310354 () Bool)

(assert (=> b!3218824 (=> res!1310354 e!2006927)))

(assert (=> b!3218824 (= res!1310354 (not (isEmpty!20308 (tail!5218 (tail!5218 lt!1088705)))))))

(declare-fun b!3218825 () Bool)

(declare-fun e!2006922 () Bool)

(assert (=> b!3218825 (= e!2006922 (matchR!4623 (derivativeStep!2954 (derivativeStep!2954 (regex!5230 (rule!7682 separatorToken!241)) (head!7053 lt!1088705)) (head!7053 (tail!5218 lt!1088705))) (tail!5218 (tail!5218 lt!1088705))))))

(declare-fun b!3218821 () Bool)

(assert (=> b!3218821 (= e!2006922 (nullable!3401 (derivativeStep!2954 (regex!5230 (rule!7682 separatorToken!241)) (head!7053 lt!1088705))))))

(declare-fun d!883762 () Bool)

(assert (=> d!883762 e!2006928))

(declare-fun c!541226 () Bool)

(assert (=> d!883762 (= c!541226 ((_ is EmptyExpr!9989) (derivativeStep!2954 (regex!5230 (rule!7682 separatorToken!241)) (head!7053 lt!1088705))))))

(assert (=> d!883762 (= lt!1089660 e!2006922)))

(declare-fun c!541225 () Bool)

(assert (=> d!883762 (= c!541225 (isEmpty!20308 (tail!5218 lt!1088705)))))

(assert (=> d!883762 (validRegex!4557 (derivativeStep!2954 (regex!5230 (rule!7682 separatorToken!241)) (head!7053 lt!1088705)))))

(assert (=> d!883762 (= (matchR!4623 (derivativeStep!2954 (regex!5230 (rule!7682 separatorToken!241)) (head!7053 lt!1088705)) (tail!5218 lt!1088705)) lt!1089660)))

(declare-fun b!3218826 () Bool)

(declare-fun res!1310359 () Bool)

(assert (=> b!3218826 (=> (not res!1310359) (not e!2006926))))

(assert (=> b!3218826 (= res!1310359 (not call!233028))))

(declare-fun b!3218827 () Bool)

(declare-fun res!1310358 () Bool)

(assert (=> b!3218827 (=> res!1310358 e!2006924)))

(assert (=> b!3218827 (= res!1310358 (not ((_ is ElementMatch!9989) (derivativeStep!2954 (regex!5230 (rule!7682 separatorToken!241)) (head!7053 lt!1088705)))))))

(assert (=> b!3218827 (= e!2006925 e!2006924)))

(declare-fun b!3218828 () Bool)

(assert (=> b!3218828 (= e!2006928 e!2006925)))

(declare-fun c!541224 () Bool)

(assert (=> b!3218828 (= c!541224 ((_ is EmptyLang!9989) (derivativeStep!2954 (regex!5230 (rule!7682 separatorToken!241)) (head!7053 lt!1088705))))))

(assert (= (and d!883762 c!541225) b!3218821))

(assert (= (and d!883762 (not c!541225)) b!3218825))

(assert (= (and d!883762 c!541226) b!3218822))

(assert (= (and d!883762 (not c!541226)) b!3218828))

(assert (= (and b!3218828 c!541224) b!3218815))

(assert (= (and b!3218828 (not c!541224)) b!3218827))

(assert (= (and b!3218827 (not res!1310358)) b!3218819))

(assert (= (and b!3218819 res!1310353) b!3218826))

(assert (= (and b!3218826 res!1310359) b!3218817))

(assert (= (and b!3218817 res!1310360) b!3218818))

(assert (= (and b!3218819 (not res!1310356)) b!3218820))

(assert (= (and b!3218820 res!1310357) b!3218816))

(assert (= (and b!3218816 (not res!1310355)) b!3218824))

(assert (= (and b!3218824 (not res!1310354)) b!3218823))

(assert (= (or b!3218822 b!3218816 b!3218826) bm!233023))

(assert (=> d!883762 m!3490745))

(assert (=> d!883762 m!3490747))

(assert (=> d!883762 m!3492043))

(declare-fun m!3493611 () Bool)

(assert (=> d!883762 m!3493611))

(assert (=> b!3218824 m!3490745))

(declare-fun m!3493613 () Bool)

(assert (=> b!3218824 m!3493613))

(assert (=> b!3218824 m!3493613))

(declare-fun m!3493615 () Bool)

(assert (=> b!3218824 m!3493615))

(assert (=> b!3218818 m!3490745))

(declare-fun m!3493617 () Bool)

(assert (=> b!3218818 m!3493617))

(assert (=> b!3218821 m!3492043))

(declare-fun m!3493619 () Bool)

(assert (=> b!3218821 m!3493619))

(assert (=> b!3218817 m!3490745))

(assert (=> b!3218817 m!3493613))

(assert (=> b!3218817 m!3493613))

(assert (=> b!3218817 m!3493615))

(assert (=> b!3218825 m!3490745))

(assert (=> b!3218825 m!3493617))

(assert (=> b!3218825 m!3492043))

(assert (=> b!3218825 m!3493617))

(declare-fun m!3493623 () Bool)

(assert (=> b!3218825 m!3493623))

(assert (=> b!3218825 m!3490745))

(assert (=> b!3218825 m!3493613))

(assert (=> b!3218825 m!3493623))

(assert (=> b!3218825 m!3493613))

(declare-fun m!3493629 () Bool)

(assert (=> b!3218825 m!3493629))

(assert (=> bm!233023 m!3490745))

(assert (=> bm!233023 m!3490747))

(assert (=> b!3218823 m!3490745))

(assert (=> b!3218823 m!3493617))

(assert (=> b!3217720 d!883762))

(declare-fun b!3218832 () Bool)

(declare-fun e!2006934 () Regex!9989)

(declare-fun call!233029 () Regex!9989)

(declare-fun call!233030 () Regex!9989)

(assert (=> b!3218832 (= e!2006934 (Union!9989 call!233029 call!233030))))

(declare-fun b!3218833 () Bool)

(declare-fun c!541232 () Bool)

(assert (=> b!3218833 (= c!541232 ((_ is Union!9989) (regex!5230 (rule!7682 separatorToken!241))))))

(declare-fun e!2006931 () Regex!9989)

(assert (=> b!3218833 (= e!2006931 e!2006934)))

(declare-fun bm!233024 () Bool)

(declare-fun c!541230 () Bool)

(assert (=> bm!233024 (= call!233030 (derivativeStep!2954 (ite c!541232 (regTwo!20491 (regex!5230 (rule!7682 separatorToken!241))) (ite c!541230 (reg!10318 (regex!5230 (rule!7682 separatorToken!241))) (regOne!20490 (regex!5230 (rule!7682 separatorToken!241))))) (head!7053 lt!1088705)))))

(declare-fun bm!233025 () Bool)

(assert (=> bm!233025 (= call!233029 (derivativeStep!2954 (ite c!541232 (regOne!20491 (regex!5230 (rule!7682 separatorToken!241))) (regTwo!20490 (regex!5230 (rule!7682 separatorToken!241)))) (head!7053 lt!1088705)))))

(declare-fun b!3218834 () Bool)

(declare-fun e!2006935 () Regex!9989)

(declare-fun call!233032 () Regex!9989)

(assert (=> b!3218834 (= e!2006935 (Concat!15449 call!233032 (regex!5230 (rule!7682 separatorToken!241))))))

(declare-fun bm!233026 () Bool)

(declare-fun call!233031 () Regex!9989)

(assert (=> bm!233026 (= call!233031 call!233032)))

(declare-fun d!883766 () Bool)

(declare-fun lt!1089661 () Regex!9989)

(assert (=> d!883766 (validRegex!4557 lt!1089661)))

(declare-fun e!2006933 () Regex!9989)

(assert (=> d!883766 (= lt!1089661 e!2006933)))

(declare-fun c!541228 () Bool)

(assert (=> d!883766 (= c!541228 (or ((_ is EmptyExpr!9989) (regex!5230 (rule!7682 separatorToken!241))) ((_ is EmptyLang!9989) (regex!5230 (rule!7682 separatorToken!241)))))))

(assert (=> d!883766 (validRegex!4557 (regex!5230 (rule!7682 separatorToken!241)))))

(assert (=> d!883766 (= (derivativeStep!2954 (regex!5230 (rule!7682 separatorToken!241)) (head!7053 lt!1088705)) lt!1089661)))

(declare-fun b!3218835 () Bool)

(assert (=> b!3218835 (= e!2006934 e!2006935)))

(assert (=> b!3218835 (= c!541230 ((_ is Star!9989) (regex!5230 (rule!7682 separatorToken!241))))))

(declare-fun b!3218836 () Bool)

(declare-fun c!541231 () Bool)

(assert (=> b!3218836 (= c!541231 (nullable!3401 (regOne!20490 (regex!5230 (rule!7682 separatorToken!241)))))))

(declare-fun e!2006932 () Regex!9989)

(assert (=> b!3218836 (= e!2006935 e!2006932)))

(declare-fun b!3218837 () Bool)

(assert (=> b!3218837 (= e!2006931 (ite (= (head!7053 lt!1088705) (c!540716 (regex!5230 (rule!7682 separatorToken!241)))) EmptyExpr!9989 EmptyLang!9989))))

(declare-fun bm!233027 () Bool)

(assert (=> bm!233027 (= call!233032 call!233030)))

(declare-fun b!3218838 () Bool)

(assert (=> b!3218838 (= e!2006932 (Union!9989 (Concat!15449 call!233031 (regTwo!20490 (regex!5230 (rule!7682 separatorToken!241)))) call!233029))))

(declare-fun b!3218839 () Bool)

(assert (=> b!3218839 (= e!2006933 EmptyLang!9989)))

(declare-fun b!3218840 () Bool)

(assert (=> b!3218840 (= e!2006933 e!2006931)))

(declare-fun c!541229 () Bool)

(assert (=> b!3218840 (= c!541229 ((_ is ElementMatch!9989) (regex!5230 (rule!7682 separatorToken!241))))))

(declare-fun b!3218841 () Bool)

(assert (=> b!3218841 (= e!2006932 (Union!9989 (Concat!15449 call!233031 (regTwo!20490 (regex!5230 (rule!7682 separatorToken!241)))) EmptyLang!9989))))

(assert (= (and d!883766 c!541228) b!3218839))

(assert (= (and d!883766 (not c!541228)) b!3218840))

(assert (= (and b!3218840 c!541229) b!3218837))

(assert (= (and b!3218840 (not c!541229)) b!3218833))

(assert (= (and b!3218833 c!541232) b!3218832))

(assert (= (and b!3218833 (not c!541232)) b!3218835))

(assert (= (and b!3218835 c!541230) b!3218834))

(assert (= (and b!3218835 (not c!541230)) b!3218836))

(assert (= (and b!3218836 c!541231) b!3218838))

(assert (= (and b!3218836 (not c!541231)) b!3218841))

(assert (= (or b!3218838 b!3218841) bm!233026))

(assert (= (or b!3218834 bm!233026) bm!233027))

(assert (= (or b!3218832 b!3218838) bm!233025))

(assert (= (or b!3218832 bm!233027) bm!233024))

(assert (=> bm!233024 m!3490341))

(declare-fun m!3493643 () Bool)

(assert (=> bm!233024 m!3493643))

(assert (=> bm!233025 m!3490341))

(declare-fun m!3493647 () Bool)

(assert (=> bm!233025 m!3493647))

(declare-fun m!3493649 () Bool)

(assert (=> d!883766 m!3493649))

(assert (=> d!883766 m!3492039))

(declare-fun m!3493651 () Bool)

(assert (=> b!3218836 m!3493651))

(assert (=> b!3217720 d!883766))

(assert (=> b!3217720 d!883156))

(declare-fun d!883776 () Bool)

(assert (=> d!883776 (= (tail!5218 lt!1088705) (t!239820 lt!1088705))))

(assert (=> b!3217720 d!883776))

(assert (=> d!883166 d!882940))

(assert (=> d!883166 d!883184))

(declare-fun d!883778 () Bool)

(assert (=> d!883778 (= (maxPrefixOneRule!1598 thiss!18206 (rule!7682 (h!41627 tokens!494)) lt!1088698) (Some!7163 (tuple2!35625 (Token!9827 (apply!8221 (transformation!5230 (rule!7682 (h!41627 tokens!494))) (seqFromList!3531 lt!1088698)) (rule!7682 (h!41627 tokens!494)) (size!27294 lt!1088698) lt!1088698) Nil!36205)))))

(assert (=> d!883778 true))

(declare-fun _$59!401 () Unit!50722)

(assert (=> d!883778 (= (choose!18790 thiss!18206 rules!2135 lt!1088698 lt!1088698 Nil!36205 (rule!7682 (h!41627 tokens!494))) _$59!401)))

(declare-fun bs!542398 () Bool)

(assert (= bs!542398 d!883778))

(assert (=> bs!542398 m!3490373))

(assert (=> bs!542398 m!3490445))

(assert (=> bs!542398 m!3490445))

(assert (=> bs!542398 m!3491981))

(assert (=> bs!542398 m!3490403))

(assert (=> d!883166 d!883778))

(declare-fun d!883816 () Bool)

(assert (=> d!883816 (= (apply!8221 (transformation!5230 (rule!7682 (h!41627 tokens!494))) (seqFromList!3531 lt!1088698)) (dynLambda!14653 (toValue!7322 (transformation!5230 (rule!7682 (h!41627 tokens!494)))) (seqFromList!3531 lt!1088698)))))

(declare-fun b_lambda!88489 () Bool)

(assert (=> (not b_lambda!88489) (not d!883816)))

(declare-fun t!240062 () Bool)

(declare-fun tb!158957 () Bool)

(assert (=> (and b!3216775 (= (toValue!7322 (transformation!5230 (rule!7682 (h!41627 tokens!494)))) (toValue!7322 (transformation!5230 (rule!7682 (h!41627 tokens!494))))) t!240062) tb!158957))

(declare-fun result!201378 () Bool)

(assert (=> tb!158957 (= result!201378 (inv!21 (dynLambda!14653 (toValue!7322 (transformation!5230 (rule!7682 (h!41627 tokens!494)))) (seqFromList!3531 lt!1088698))))))

(declare-fun m!3493747 () Bool)

(assert (=> tb!158957 m!3493747))

(assert (=> d!883816 t!240062))

(declare-fun b_and!215017 () Bool)

(assert (= b_and!214947 (and (=> t!240062 result!201378) b_and!215017)))

(declare-fun t!240064 () Bool)

(declare-fun tb!158959 () Bool)

(assert (=> (and b!3216773 (= (toValue!7322 (transformation!5230 (h!41626 rules!2135))) (toValue!7322 (transformation!5230 (rule!7682 (h!41627 tokens!494))))) t!240064) tb!158959))

(declare-fun result!201380 () Bool)

(assert (= result!201380 result!201378))

(assert (=> d!883816 t!240064))

(declare-fun b_and!215019 () Bool)

(assert (= b_and!214955 (and (=> t!240064 result!201380) b_and!215019)))

(declare-fun t!240066 () Bool)

(declare-fun tb!158961 () Bool)

(assert (=> (and b!3217774 (= (toValue!7322 (transformation!5230 (rule!7682 (h!41627 (t!239822 tokens!494))))) (toValue!7322 (transformation!5230 (rule!7682 (h!41627 tokens!494))))) t!240066) tb!158961))

(declare-fun result!201382 () Bool)

(assert (= result!201382 result!201378))

(assert (=> d!883816 t!240066))

(declare-fun b_and!215021 () Bool)

(assert (= b_and!214951 (and (=> t!240066 result!201382) b_and!215021)))

(declare-fun tb!158963 () Bool)

(declare-fun t!240068 () Bool)

(assert (=> (and b!3216778 (= (toValue!7322 (transformation!5230 (rule!7682 separatorToken!241))) (toValue!7322 (transformation!5230 (rule!7682 (h!41627 tokens!494))))) t!240068) tb!158963))

(declare-fun result!201384 () Bool)

(assert (= result!201384 result!201378))

(assert (=> d!883816 t!240068))

(declare-fun b_and!215023 () Bool)

(assert (= b_and!214953 (and (=> t!240068 result!201384) b_and!215023)))

(declare-fun tb!158965 () Bool)

(declare-fun t!240070 () Bool)

(assert (=> (and b!3217757 (= (toValue!7322 (transformation!5230 (h!41626 (t!239821 rules!2135)))) (toValue!7322 (transformation!5230 (rule!7682 (h!41627 tokens!494))))) t!240070) tb!158965))

(declare-fun result!201386 () Bool)

(assert (= result!201386 result!201378))

(assert (=> d!883816 t!240070))

(declare-fun b_and!215025 () Bool)

(assert (= b_and!214949 (and (=> t!240070 result!201386) b_and!215025)))

(assert (=> d!883816 m!3490445))

(declare-fun m!3493775 () Bool)

(assert (=> d!883816 m!3493775))

(assert (=> d!883166 d!883816))

(assert (=> d!883166 d!883176))

(assert (=> d!883166 d!883152))

(declare-fun d!883822 () Bool)

(assert (=> d!883822 (= (isEmpty!20308 lt!1088698) ((_ is Nil!36205) lt!1088698))))

(assert (=> d!882822 d!883822))

(declare-fun c!541251 () Bool)

(declare-fun bm!233031 () Bool)

(declare-fun c!541252 () Bool)

(declare-fun call!233038 () Bool)

(assert (=> bm!233031 (= call!233038 (validRegex!4557 (ite c!541251 (reg!10318 (regex!5230 lt!1088701)) (ite c!541252 (regOne!20491 (regex!5230 lt!1088701)) (regOne!20490 (regex!5230 lt!1088701))))))))

(declare-fun b!3218892 () Bool)

(declare-fun e!2006973 () Bool)

(declare-fun e!2006972 () Bool)

(assert (=> b!3218892 (= e!2006973 e!2006972)))

(assert (=> b!3218892 (= c!541251 ((_ is Star!9989) (regex!5230 lt!1088701)))))

(declare-fun bm!233032 () Bool)

(declare-fun call!233036 () Bool)

(assert (=> bm!233032 (= call!233036 call!233038)))

(declare-fun b!3218893 () Bool)

(declare-fun e!2006967 () Bool)

(assert (=> b!3218893 (= e!2006972 e!2006967)))

(assert (=> b!3218893 (= c!541252 ((_ is Union!9989) (regex!5230 lt!1088701)))))

(declare-fun bm!233033 () Bool)

(declare-fun call!233037 () Bool)

(assert (=> bm!233033 (= call!233037 (validRegex!4557 (ite c!541252 (regTwo!20491 (regex!5230 lt!1088701)) (regTwo!20490 (regex!5230 lt!1088701)))))))

(declare-fun b!3218894 () Bool)

(declare-fun e!2006970 () Bool)

(declare-fun e!2006969 () Bool)

(assert (=> b!3218894 (= e!2006970 e!2006969)))

(declare-fun res!1310375 () Bool)

(assert (=> b!3218894 (=> (not res!1310375) (not e!2006969))))

(assert (=> b!3218894 (= res!1310375 call!233036)))

(declare-fun d!883824 () Bool)

(declare-fun res!1310376 () Bool)

(assert (=> d!883824 (=> res!1310376 e!2006973)))

(assert (=> d!883824 (= res!1310376 ((_ is ElementMatch!9989) (regex!5230 lt!1088701)))))

(assert (=> d!883824 (= (validRegex!4557 (regex!5230 lt!1088701)) e!2006973)))

(declare-fun b!3218895 () Bool)

(declare-fun e!2006971 () Bool)

(assert (=> b!3218895 (= e!2006971 call!233038)))

(declare-fun b!3218896 () Bool)

(assert (=> b!3218896 (= e!2006972 e!2006971)))

(declare-fun res!1310377 () Bool)

(assert (=> b!3218896 (= res!1310377 (not (nullable!3401 (reg!10318 (regex!5230 lt!1088701)))))))

(assert (=> b!3218896 (=> (not res!1310377) (not e!2006971))))

(declare-fun b!3218897 () Bool)

(declare-fun res!1310374 () Bool)

(assert (=> b!3218897 (=> res!1310374 e!2006970)))

(assert (=> b!3218897 (= res!1310374 (not ((_ is Concat!15449) (regex!5230 lt!1088701))))))

(assert (=> b!3218897 (= e!2006967 e!2006970)))

(declare-fun b!3218898 () Bool)

(assert (=> b!3218898 (= e!2006969 call!233037)))

(declare-fun b!3218899 () Bool)

(declare-fun res!1310378 () Bool)

(declare-fun e!2006968 () Bool)

(assert (=> b!3218899 (=> (not res!1310378) (not e!2006968))))

(assert (=> b!3218899 (= res!1310378 call!233036)))

(assert (=> b!3218899 (= e!2006967 e!2006968)))

(declare-fun b!3218900 () Bool)

(assert (=> b!3218900 (= e!2006968 call!233037)))

(assert (= (and d!883824 (not res!1310376)) b!3218892))

(assert (= (and b!3218892 c!541251) b!3218896))

(assert (= (and b!3218892 (not c!541251)) b!3218893))

(assert (= (and b!3218896 res!1310377) b!3218895))

(assert (= (and b!3218893 c!541252) b!3218899))

(assert (= (and b!3218893 (not c!541252)) b!3218897))

(assert (= (and b!3218899 res!1310378) b!3218900))

(assert (= (and b!3218897 (not res!1310374)) b!3218894))

(assert (= (and b!3218894 res!1310375) b!3218898))

(assert (= (or b!3218900 b!3218898) bm!233033))

(assert (= (or b!3218899 b!3218894) bm!233032))

(assert (= (or b!3218895 bm!233032) bm!233031))

(declare-fun m!3493787 () Bool)

(assert (=> bm!233031 m!3493787))

(declare-fun m!3493789 () Bool)

(assert (=> bm!233033 m!3493789))

(declare-fun m!3493791 () Bool)

(assert (=> b!3218896 m!3493791))

(assert (=> d!882822 d!883824))

(declare-fun d!883834 () Bool)

(assert (=> d!883834 (= (isDefined!5564 (getRuleFromTag!935 thiss!18206 rules!2135 (tag!5760 (rule!7682 (h!41627 tokens!494))))) (not (isEmpty!20311 (getRuleFromTag!935 thiss!18206 rules!2135 (tag!5760 (rule!7682 (h!41627 tokens!494)))))))))

(declare-fun bs!542403 () Bool)

(assert (= bs!542403 d!883834))

(assert (=> bs!542403 m!3490339))

(declare-fun m!3493793 () Bool)

(assert (=> bs!542403 m!3493793))

(assert (=> d!882926 d!883834))

(assert (=> d!882926 d!883110))

(declare-fun d!883836 () Bool)

(declare-fun e!2006978 () Bool)

(assert (=> d!883836 e!2006978))

(declare-fun res!1310384 () Bool)

(assert (=> d!883836 (=> (not res!1310384) (not e!2006978))))

(assert (=> d!883836 (= res!1310384 (isDefined!5564 (getRuleFromTag!935 thiss!18206 rules!2135 (tag!5760 (rule!7682 (h!41627 tokens!494))))))))

(assert (=> d!883836 true))

(declare-fun _$52!1583 () Unit!50722)

(assert (=> d!883836 (= (choose!18787 thiss!18206 rules!2135 lt!1088698 (h!41627 tokens!494)) _$52!1583)))

(declare-fun b!3218908 () Bool)

(declare-fun res!1310385 () Bool)

(assert (=> b!3218908 (=> (not res!1310385) (not e!2006978))))

(assert (=> b!3218908 (= res!1310385 (matchR!4623 (regex!5230 (get!11532 (getRuleFromTag!935 thiss!18206 rules!2135 (tag!5760 (rule!7682 (h!41627 tokens!494)))))) (list!12887 (charsOf!3246 (h!41627 tokens!494)))))))

(declare-fun b!3218909 () Bool)

(assert (=> b!3218909 (= e!2006978 (= (rule!7682 (h!41627 tokens!494)) (get!11532 (getRuleFromTag!935 thiss!18206 rules!2135 (tag!5760 (rule!7682 (h!41627 tokens!494)))))))))

(assert (= (and d!883836 res!1310384) b!3218908))

(assert (= (and b!3218908 res!1310385) b!3218909))

(assert (=> d!883836 m!3490339))

(assert (=> d!883836 m!3490339))

(assert (=> d!883836 m!3490987))

(assert (=> b!3218908 m!3490467))

(assert (=> b!3218908 m!3490993))

(assert (=> b!3218908 m!3490339))

(assert (=> b!3218908 m!3490991))

(assert (=> b!3218908 m!3490339))

(assert (=> b!3218908 m!3490465))

(assert (=> b!3218908 m!3490465))

(assert (=> b!3218908 m!3490467))

(assert (=> b!3218909 m!3490339))

(assert (=> b!3218909 m!3490339))

(assert (=> b!3218909 m!3490991))

(assert (=> d!882926 d!883836))

(assert (=> d!882926 d!882902))

(assert (=> b!3217713 d!883156))

(assert (=> b!3216919 d!883528))

(assert (=> b!3216919 d!883530))

(declare-fun d!883852 () Bool)

(declare-fun lt!1089695 () Int)

(assert (=> d!883852 (= lt!1089695 (size!27299 (list!12890 lt!1088696)))))

(assert (=> d!883852 (= lt!1089695 (size!27300 (c!540718 lt!1088696)))))

(assert (=> d!883852 (= (size!27295 lt!1088696) lt!1089695)))

(declare-fun bs!542410 () Bool)

(assert (= bs!542410 d!883852))

(assert (=> bs!542410 m!3490689))

(assert (=> bs!542410 m!3490689))

(declare-fun m!3493837 () Bool)

(assert (=> bs!542410 m!3493837))

(declare-fun m!3493839 () Bool)

(assert (=> bs!542410 m!3493839))

(assert (=> d!882832 d!883852))

(declare-fun d!883854 () Bool)

(assert (=> d!883854 (= (dropList!1081 lt!1088696 0) (drop!1864 (list!12893 (c!540718 lt!1088696)) 0))))

(declare-fun bs!542411 () Bool)

(assert (= bs!542411 d!883854))

(declare-fun m!3493865 () Bool)

(assert (=> bs!542411 m!3493865))

(assert (=> bs!542411 m!3493865))

(declare-fun m!3493869 () Bool)

(assert (=> bs!542411 m!3493869))

(assert (=> d!882832 d!883854))

(declare-fun d!883866 () Bool)

(assert (=> d!883866 (= (list!12887 (BalanceConc!21285 Empty!10835)) (list!12889 (c!540717 (BalanceConc!21285 Empty!10835))))))

(declare-fun bs!542412 () Bool)

(assert (= bs!542412 d!883866))

(declare-fun m!3493871 () Bool)

(assert (=> bs!542412 m!3493871))

(assert (=> d!882832 d!883866))

(declare-fun d!883868 () Bool)

(assert (=> d!883868 (= (list!12887 lt!1088775) (list!12889 (c!540717 lt!1088775)))))

(declare-fun bs!542413 () Bool)

(assert (= bs!542413 d!883868))

(declare-fun m!3493873 () Bool)

(assert (=> bs!542413 m!3493873))

(assert (=> d!882832 d!883868))

(declare-fun d!883870 () Bool)

(declare-fun lt!1089710 () List!36329)

(assert (=> d!883870 (= lt!1089710 (++!8698 (list!12887 (BalanceConc!21285 Empty!10835)) (printList!1369 thiss!18206 (dropList!1081 lt!1088696 0))))))

(declare-fun e!2006998 () List!36329)

(assert (=> d!883870 (= lt!1089710 e!2006998)))

(declare-fun c!541261 () Bool)

(assert (=> d!883870 (= c!541261 ((_ is Cons!36207) (dropList!1081 lt!1088696 0)))))

(assert (=> d!883870 (= (printListTailRec!564 thiss!18206 (dropList!1081 lt!1088696 0) (list!12887 (BalanceConc!21285 Empty!10835))) lt!1089710)))

(declare-fun b!3218936 () Bool)

(assert (=> b!3218936 (= e!2006998 (printListTailRec!564 thiss!18206 (t!239822 (dropList!1081 lt!1088696 0)) (++!8698 (list!12887 (BalanceConc!21285 Empty!10835)) (list!12887 (charsOf!3246 (h!41627 (dropList!1081 lt!1088696 0)))))))))

(declare-fun lt!1089713 () List!36329)

(assert (=> b!3218936 (= lt!1089713 (list!12887 (charsOf!3246 (h!41627 (dropList!1081 lt!1088696 0)))))))

(declare-fun lt!1089714 () List!36329)

(assert (=> b!3218936 (= lt!1089714 (printList!1369 thiss!18206 (t!239822 (dropList!1081 lt!1088696 0))))))

(declare-fun lt!1089711 () Unit!50722)

(assert (=> b!3218936 (= lt!1089711 (lemmaConcatAssociativity!1756 (list!12887 (BalanceConc!21285 Empty!10835)) lt!1089713 lt!1089714))))

(assert (=> b!3218936 (= (++!8698 (++!8698 (list!12887 (BalanceConc!21285 Empty!10835)) lt!1089713) lt!1089714) (++!8698 (list!12887 (BalanceConc!21285 Empty!10835)) (++!8698 lt!1089713 lt!1089714)))))

(declare-fun lt!1089712 () Unit!50722)

(assert (=> b!3218936 (= lt!1089712 lt!1089711)))

(declare-fun b!3218937 () Bool)

(assert (=> b!3218937 (= e!2006998 (list!12887 (BalanceConc!21285 Empty!10835)))))

(assert (= (and d!883870 c!541261) b!3218936))

(assert (= (and d!883870 (not c!541261)) b!3218937))

(assert (=> d!883870 m!3490671))

(declare-fun m!3493899 () Bool)

(assert (=> d!883870 m!3493899))

(assert (=> d!883870 m!3490675))

(assert (=> d!883870 m!3493899))

(declare-fun m!3493901 () Bool)

(assert (=> d!883870 m!3493901))

(declare-fun m!3493903 () Bool)

(assert (=> b!3218936 m!3493903))

(declare-fun m!3493905 () Bool)

(assert (=> b!3218936 m!3493905))

(declare-fun m!3493909 () Bool)

(assert (=> b!3218936 m!3493909))

(declare-fun m!3493913 () Bool)

(assert (=> b!3218936 m!3493913))

(declare-fun m!3493917 () Bool)

(assert (=> b!3218936 m!3493917))

(declare-fun m!3493921 () Bool)

(assert (=> b!3218936 m!3493921))

(declare-fun m!3493925 () Bool)

(assert (=> b!3218936 m!3493925))

(assert (=> b!3218936 m!3490675))

(declare-fun m!3493929 () Bool)

(assert (=> b!3218936 m!3493929))

(declare-fun m!3493931 () Bool)

(assert (=> b!3218936 m!3493931))

(assert (=> b!3218936 m!3493929))

(assert (=> b!3218936 m!3493903))

(assert (=> b!3218936 m!3490675))

(assert (=> b!3218936 m!3493917))

(assert (=> b!3218936 m!3490675))

(assert (=> b!3218936 m!3493905))

(assert (=> b!3218936 m!3493909))

(assert (=> b!3218936 m!3490675))

(declare-fun m!3493935 () Bool)

(assert (=> b!3218936 m!3493935))

(assert (=> d!882832 d!883870))

(declare-fun d!883888 () Bool)

(assert (=> d!883888 (= (list!12887 lt!1089072) (list!12889 (c!540717 lt!1089072)))))

(declare-fun bs!542418 () Bool)

(assert (= bs!542418 d!883888))

(declare-fun m!3493941 () Bool)

(assert (=> bs!542418 m!3493941))

(assert (=> d!883158 d!883888))

(declare-fun d!883892 () Bool)

(declare-fun c!541266 () Bool)

(assert (=> d!883892 (= c!541266 ((_ is Cons!36207) (list!12890 lt!1088703)))))

(declare-fun e!2007004 () List!36329)

(assert (=> d!883892 (= (printList!1369 thiss!18206 (list!12890 lt!1088703)) e!2007004)))

(declare-fun b!3218947 () Bool)

(assert (=> b!3218947 (= e!2007004 (++!8698 (list!12887 (charsOf!3246 (h!41627 (list!12890 lt!1088703)))) (printList!1369 thiss!18206 (t!239822 (list!12890 lt!1088703)))))))

(declare-fun b!3218948 () Bool)

(assert (=> b!3218948 (= e!2007004 Nil!36205)))

(assert (= (and d!883892 c!541266) b!3218947))

(assert (= (and d!883892 (not c!541266)) b!3218948))

(declare-fun m!3493947 () Bool)

(assert (=> b!3218947 m!3493947))

(assert (=> b!3218947 m!3493947))

(declare-fun m!3493949 () Bool)

(assert (=> b!3218947 m!3493949))

(declare-fun m!3493951 () Bool)

(assert (=> b!3218947 m!3493951))

(assert (=> b!3218947 m!3493949))

(assert (=> b!3218947 m!3493951))

(declare-fun m!3493957 () Bool)

(assert (=> b!3218947 m!3493957))

(assert (=> d!883158 d!883892))

(assert (=> d!883158 d!883506))

(assert (=> d!883158 d!883106))

(declare-fun d!883898 () Bool)

(assert (=> d!883898 (= (list!12887 (dynLambda!14648 (toChars!7181 (transformation!5230 (rule!7682 (h!41627 tokens!494)))) (value!169515 (h!41627 tokens!494)))) (list!12889 (c!540717 (dynLambda!14648 (toChars!7181 (transformation!5230 (rule!7682 (h!41627 tokens!494)))) (value!169515 (h!41627 tokens!494))))))))

(declare-fun bs!542419 () Bool)

(assert (= bs!542419 d!883898))

(declare-fun m!3493959 () Bool)

(assert (=> bs!542419 m!3493959))

(assert (=> b!3216938 d!883898))

(declare-fun b!3218953 () Bool)

(declare-fun e!2007011 () Int)

(declare-fun call!233039 () Int)

(assert (=> b!3218953 (= e!2007011 (- call!233039 (+ 0 1)))))

(declare-fun b!3218954 () Bool)

(declare-fun e!2007009 () Int)

(assert (=> b!3218954 (= e!2007009 call!233039)))

(declare-fun d!883900 () Bool)

(declare-fun e!2007008 () Bool)

(assert (=> d!883900 e!2007008))

(declare-fun res!1310401 () Bool)

(assert (=> d!883900 (=> (not res!1310401) (not e!2007008))))

(declare-fun lt!1089719 () List!36331)

(assert (=> d!883900 (= res!1310401 (= ((_ map implies) (content!4902 lt!1089719) (content!4902 lt!1088772)) ((as const (InoxSet Token!9826)) true)))))

(declare-fun e!2007010 () List!36331)

(assert (=> d!883900 (= lt!1089719 e!2007010)))

(declare-fun c!541271 () Bool)

(assert (=> d!883900 (= c!541271 ((_ is Nil!36207) lt!1088772))))

(assert (=> d!883900 (= (drop!1864 lt!1088772 (+ 0 1)) lt!1089719)))

(declare-fun b!3218955 () Bool)

(declare-fun e!2007012 () List!36331)

(assert (=> b!3218955 (= e!2007010 e!2007012)))

(declare-fun c!541268 () Bool)

(assert (=> b!3218955 (= c!541268 (<= (+ 0 1) 0))))

(declare-fun b!3218956 () Bool)

(assert (=> b!3218956 (= e!2007008 (= (size!27299 lt!1089719) e!2007009))))

(declare-fun c!541269 () Bool)

(assert (=> b!3218956 (= c!541269 (<= (+ 0 1) 0))))

(declare-fun b!3218957 () Bool)

(assert (=> b!3218957 (= e!2007012 lt!1088772)))

(declare-fun b!3218958 () Bool)

(assert (=> b!3218958 (= e!2007012 (drop!1864 (t!239822 lt!1088772) (- (+ 0 1) 1)))))

(declare-fun b!3218959 () Bool)

(assert (=> b!3218959 (= e!2007009 e!2007011)))

(declare-fun c!541270 () Bool)

(assert (=> b!3218959 (= c!541270 (>= (+ 0 1) call!233039))))

(declare-fun bm!233034 () Bool)

(assert (=> bm!233034 (= call!233039 (size!27299 lt!1088772))))

(declare-fun b!3218960 () Bool)

(assert (=> b!3218960 (= e!2007011 0)))

(declare-fun b!3218961 () Bool)

(assert (=> b!3218961 (= e!2007010 Nil!36207)))

(assert (= (and d!883900 c!541271) b!3218961))

(assert (= (and d!883900 (not c!541271)) b!3218955))

(assert (= (and b!3218955 c!541268) b!3218957))

(assert (= (and b!3218955 (not c!541268)) b!3218958))

(assert (= (and d!883900 res!1310401) b!3218956))

(assert (= (and b!3218956 c!541269) b!3218954))

(assert (= (and b!3218956 (not c!541269)) b!3218959))

(assert (= (and b!3218959 c!541270) b!3218960))

(assert (= (and b!3218959 (not c!541270)) b!3218953))

(assert (= (or b!3218954 b!3218959 b!3218953) bm!233034))

(declare-fun m!3493969 () Bool)

(assert (=> d!883900 m!3493969))

(declare-fun m!3493971 () Bool)

(assert (=> d!883900 m!3493971))

(declare-fun m!3493973 () Bool)

(assert (=> b!3218956 m!3493973))

(declare-fun m!3493975 () Bool)

(assert (=> b!3218958 m!3493975))

(declare-fun m!3493977 () Bool)

(assert (=> bm!233034 m!3493977))

(assert (=> b!3216970 d!883900))

(declare-fun d!883910 () Bool)

(declare-fun e!2007017 () Bool)

(assert (=> d!883910 e!2007017))

(declare-fun res!1310402 () Bool)

(assert (=> d!883910 (=> (not res!1310402) (not e!2007017))))

(assert (=> d!883910 (= res!1310402 (appendAssocInst!736 (c!540717 (BalanceConc!21285 Empty!10835)) (c!540717 (charsOf!3246 (apply!8222 lt!1088696 0)))))))

(declare-fun lt!1089724 () BalanceConc!21284)

(assert (=> d!883910 (= lt!1089724 (BalanceConc!21285 (++!8701 (c!540717 (BalanceConc!21285 Empty!10835)) (c!540717 (charsOf!3246 (apply!8222 lt!1088696 0))))))))

(assert (=> d!883910 (= (++!8699 (BalanceConc!21285 Empty!10835) (charsOf!3246 (apply!8222 lt!1088696 0))) lt!1089724)))

(declare-fun b!3218973 () Bool)

(assert (=> b!3218973 (= e!2007017 (= (list!12887 lt!1089724) (++!8698 (list!12887 (BalanceConc!21285 Empty!10835)) (list!12887 (charsOf!3246 (apply!8222 lt!1088696 0))))))))

(declare-fun b!3218970 () Bool)

(declare-fun res!1310404 () Bool)

(assert (=> b!3218970 (=> (not res!1310404) (not e!2007017))))

(assert (=> b!3218970 (= res!1310404 (isBalanced!3227 (++!8701 (c!540717 (BalanceConc!21285 Empty!10835)) (c!540717 (charsOf!3246 (apply!8222 lt!1088696 0))))))))

(declare-fun b!3218971 () Bool)

(declare-fun res!1310405 () Bool)

(assert (=> b!3218971 (=> (not res!1310405) (not e!2007017))))

(assert (=> b!3218971 (= res!1310405 (<= (height!1563 (++!8701 (c!540717 (BalanceConc!21285 Empty!10835)) (c!540717 (charsOf!3246 (apply!8222 lt!1088696 0))))) (+ (max!0 (height!1563 (c!540717 (BalanceConc!21285 Empty!10835))) (height!1563 (c!540717 (charsOf!3246 (apply!8222 lt!1088696 0))))) 1)))))

(declare-fun b!3218972 () Bool)

(declare-fun res!1310403 () Bool)

(assert (=> b!3218972 (=> (not res!1310403) (not e!2007017))))

(assert (=> b!3218972 (= res!1310403 (>= (height!1563 (++!8701 (c!540717 (BalanceConc!21285 Empty!10835)) (c!540717 (charsOf!3246 (apply!8222 lt!1088696 0))))) (max!0 (height!1563 (c!540717 (BalanceConc!21285 Empty!10835))) (height!1563 (c!540717 (charsOf!3246 (apply!8222 lt!1088696 0)))))))))

(assert (= (and d!883910 res!1310402) b!3218970))

(assert (= (and b!3218970 res!1310404) b!3218971))

(assert (= (and b!3218971 res!1310405) b!3218972))

(assert (= (and b!3218972 res!1310403) b!3218973))

(declare-fun m!3493991 () Bool)

(assert (=> b!3218973 m!3493991))

(assert (=> b!3218973 m!3490675))

(assert (=> b!3218973 m!3490691))

(declare-fun m!3493993 () Bool)

(assert (=> b!3218973 m!3493993))

(assert (=> b!3218973 m!3490675))

(assert (=> b!3218973 m!3493993))

(declare-fun m!3493995 () Bool)

(assert (=> b!3218973 m!3493995))

(declare-fun m!3493997 () Bool)

(assert (=> b!3218971 m!3493997))

(assert (=> b!3218971 m!3492865))

(declare-fun m!3494001 () Bool)

(assert (=> b!3218971 m!3494001))

(declare-fun m!3494003 () Bool)

(assert (=> b!3218971 m!3494003))

(assert (=> b!3218971 m!3494001))

(assert (=> b!3218971 m!3492865))

(assert (=> b!3218971 m!3493997))

(declare-fun m!3494005 () Bool)

(assert (=> b!3218971 m!3494005))

(assert (=> b!3218972 m!3493997))

(assert (=> b!3218972 m!3492865))

(assert (=> b!3218972 m!3494001))

(assert (=> b!3218972 m!3494003))

(assert (=> b!3218972 m!3494001))

(assert (=> b!3218972 m!3492865))

(assert (=> b!3218972 m!3493997))

(assert (=> b!3218972 m!3494005))

(declare-fun m!3494009 () Bool)

(assert (=> d!883910 m!3494009))

(assert (=> d!883910 m!3494001))

(assert (=> b!3218970 m!3494001))

(assert (=> b!3218970 m!3494001))

(declare-fun m!3494011 () Bool)

(assert (=> b!3218970 m!3494011))

(assert (=> b!3216970 d!883910))

(declare-fun d!883922 () Bool)

(assert (=> d!883922 (= (list!12890 lt!1088696) (list!12893 (c!540718 lt!1088696)))))

(declare-fun bs!542422 () Bool)

(assert (= bs!542422 d!883922))

(assert (=> bs!542422 m!3493865))

(assert (=> b!3216970 d!883922))

(declare-fun d!883924 () Bool)

(declare-fun lt!1089728 () BalanceConc!21284)

(assert (=> d!883924 (= (list!12887 lt!1089728) (originalCharacters!5944 (apply!8222 lt!1088696 0)))))

(assert (=> d!883924 (= lt!1089728 (dynLambda!14648 (toChars!7181 (transformation!5230 (rule!7682 (apply!8222 lt!1088696 0)))) (value!169515 (apply!8222 lt!1088696 0))))))

(assert (=> d!883924 (= (charsOf!3246 (apply!8222 lt!1088696 0)) lt!1089728)))

(declare-fun b_lambda!88491 () Bool)

(assert (=> (not b_lambda!88491) (not d!883924)))

(declare-fun t!240073 () Bool)

(declare-fun tb!158967 () Bool)

(assert (=> (and b!3216778 (= (toChars!7181 (transformation!5230 (rule!7682 separatorToken!241))) (toChars!7181 (transformation!5230 (rule!7682 (apply!8222 lt!1088696 0))))) t!240073) tb!158967))

(declare-fun b!3218980 () Bool)

(declare-fun e!2007022 () Bool)

(declare-fun tp!1014349 () Bool)

(assert (=> b!3218980 (= e!2007022 (and (inv!49077 (c!540717 (dynLambda!14648 (toChars!7181 (transformation!5230 (rule!7682 (apply!8222 lt!1088696 0)))) (value!169515 (apply!8222 lt!1088696 0))))) tp!1014349))))

(declare-fun result!201388 () Bool)

(assert (=> tb!158967 (= result!201388 (and (inv!49078 (dynLambda!14648 (toChars!7181 (transformation!5230 (rule!7682 (apply!8222 lt!1088696 0)))) (value!169515 (apply!8222 lt!1088696 0)))) e!2007022))))

(assert (= tb!158967 b!3218980))

(declare-fun m!3494013 () Bool)

(assert (=> b!3218980 m!3494013))

(declare-fun m!3494015 () Bool)

(assert (=> tb!158967 m!3494015))

(assert (=> d!883924 t!240073))

(declare-fun b_and!215027 () Bool)

(assert (= b_and!214981 (and (=> t!240073 result!201388) b_and!215027)))

(declare-fun t!240075 () Bool)

(declare-fun tb!158969 () Bool)

(assert (=> (and b!3217774 (= (toChars!7181 (transformation!5230 (rule!7682 (h!41627 (t!239822 tokens!494))))) (toChars!7181 (transformation!5230 (rule!7682 (apply!8222 lt!1088696 0))))) t!240075) tb!158969))

(declare-fun result!201390 () Bool)

(assert (= result!201390 result!201388))

(assert (=> d!883924 t!240075))

(declare-fun b_and!215029 () Bool)

(assert (= b_and!214983 (and (=> t!240075 result!201390) b_and!215029)))

(declare-fun t!240077 () Bool)

(declare-fun tb!158971 () Bool)

(assert (=> (and b!3217757 (= (toChars!7181 (transformation!5230 (h!41626 (t!239821 rules!2135)))) (toChars!7181 (transformation!5230 (rule!7682 (apply!8222 lt!1088696 0))))) t!240077) tb!158971))

(declare-fun result!201392 () Bool)

(assert (= result!201392 result!201388))

(assert (=> d!883924 t!240077))

(declare-fun b_and!215031 () Bool)

(assert (= b_and!214977 (and (=> t!240077 result!201392) b_and!215031)))

(declare-fun tb!158973 () Bool)

(declare-fun t!240079 () Bool)

(assert (=> (and b!3216773 (= (toChars!7181 (transformation!5230 (h!41626 rules!2135))) (toChars!7181 (transformation!5230 (rule!7682 (apply!8222 lt!1088696 0))))) t!240079) tb!158973))

(declare-fun result!201394 () Bool)

(assert (= result!201394 result!201388))

(assert (=> d!883924 t!240079))

(declare-fun b_and!215033 () Bool)

(assert (= b_and!214985 (and (=> t!240079 result!201394) b_and!215033)))

(declare-fun t!240081 () Bool)

(declare-fun tb!158975 () Bool)

(assert (=> (and b!3216775 (= (toChars!7181 (transformation!5230 (rule!7682 (h!41627 tokens!494)))) (toChars!7181 (transformation!5230 (rule!7682 (apply!8222 lt!1088696 0))))) t!240081) tb!158975))

(declare-fun result!201396 () Bool)

(assert (= result!201396 result!201388))

(assert (=> d!883924 t!240081))

(declare-fun b_and!215035 () Bool)

(assert (= b_and!214979 (and (=> t!240081 result!201396) b_and!215035)))

(declare-fun m!3494017 () Bool)

(assert (=> d!883924 m!3494017))

(declare-fun m!3494019 () Bool)

(assert (=> d!883924 m!3494019))

(assert (=> b!3216970 d!883924))

(declare-fun b!3218981 () Bool)

(declare-fun e!2007026 () Int)

(declare-fun call!233040 () Int)

(assert (=> b!3218981 (= e!2007026 (- call!233040 0))))

(declare-fun b!3218982 () Bool)

(declare-fun e!2007024 () Int)

(assert (=> b!3218982 (= e!2007024 call!233040)))

(declare-fun d!883926 () Bool)

(declare-fun e!2007023 () Bool)

(assert (=> d!883926 e!2007023))

(declare-fun res!1310408 () Bool)

(assert (=> d!883926 (=> (not res!1310408) (not e!2007023))))

(declare-fun lt!1089729 () List!36331)

(assert (=> d!883926 (= res!1310408 (= ((_ map implies) (content!4902 lt!1089729) (content!4902 lt!1088772)) ((as const (InoxSet Token!9826)) true)))))

(declare-fun e!2007025 () List!36331)

(assert (=> d!883926 (= lt!1089729 e!2007025)))

(declare-fun c!541281 () Bool)

(assert (=> d!883926 (= c!541281 ((_ is Nil!36207) lt!1088772))))

(assert (=> d!883926 (= (drop!1864 lt!1088772 0) lt!1089729)))

(declare-fun b!3218983 () Bool)

(declare-fun e!2007027 () List!36331)

(assert (=> b!3218983 (= e!2007025 e!2007027)))

(declare-fun c!541278 () Bool)

(assert (=> b!3218983 (= c!541278 (<= 0 0))))

(declare-fun b!3218984 () Bool)

(assert (=> b!3218984 (= e!2007023 (= (size!27299 lt!1089729) e!2007024))))

(declare-fun c!541279 () Bool)

(assert (=> b!3218984 (= c!541279 (<= 0 0))))

(declare-fun b!3218985 () Bool)

(assert (=> b!3218985 (= e!2007027 lt!1088772)))

(declare-fun b!3218986 () Bool)

(assert (=> b!3218986 (= e!2007027 (drop!1864 (t!239822 lt!1088772) (- 0 1)))))

(declare-fun b!3218987 () Bool)

(assert (=> b!3218987 (= e!2007024 e!2007026)))

(declare-fun c!541280 () Bool)

(assert (=> b!3218987 (= c!541280 (>= 0 call!233040))))

(declare-fun bm!233035 () Bool)

(assert (=> bm!233035 (= call!233040 (size!27299 lt!1088772))))

(declare-fun b!3218988 () Bool)

(assert (=> b!3218988 (= e!2007026 0)))

(declare-fun b!3218989 () Bool)

(assert (=> b!3218989 (= e!2007025 Nil!36207)))

(assert (= (and d!883926 c!541281) b!3218989))

(assert (= (and d!883926 (not c!541281)) b!3218983))

(assert (= (and b!3218983 c!541278) b!3218985))

(assert (= (and b!3218983 (not c!541278)) b!3218986))

(assert (= (and d!883926 res!1310408) b!3218984))

(assert (= (and b!3218984 c!541279) b!3218982))

(assert (= (and b!3218984 (not c!541279)) b!3218987))

(assert (= (and b!3218987 c!541280) b!3218988))

(assert (= (and b!3218987 (not c!541280)) b!3218981))

(assert (= (or b!3218982 b!3218987 b!3218981) bm!233035))

(declare-fun m!3494021 () Bool)

(assert (=> d!883926 m!3494021))

(assert (=> d!883926 m!3493971))

(declare-fun m!3494023 () Bool)

(assert (=> b!3218984 m!3494023))

(declare-fun m!3494025 () Bool)

(assert (=> b!3218986 m!3494025))

(assert (=> bm!233035 m!3493977))

(assert (=> b!3216970 d!883926))

(declare-fun d!883928 () Bool)

(assert (=> d!883928 (= (tail!5219 (drop!1864 lt!1088772 0)) (drop!1864 lt!1088772 (+ 0 1)))))

(declare-fun lt!1089730 () Unit!50722)

(assert (=> d!883928 (= lt!1089730 (choose!18799 lt!1088772 0))))

(declare-fun e!2007028 () Bool)

(assert (=> d!883928 e!2007028))

(declare-fun res!1310409 () Bool)

(assert (=> d!883928 (=> (not res!1310409) (not e!2007028))))

(assert (=> d!883928 (= res!1310409 (>= 0 0))))

(assert (=> d!883928 (= (lemmaDropTail!924 lt!1088772 0) lt!1089730)))

(declare-fun b!3218990 () Bool)

(assert (=> b!3218990 (= e!2007028 (< 0 (size!27299 lt!1088772)))))

(assert (= (and d!883928 res!1310409) b!3218990))

(assert (=> d!883928 m!3490693))

(assert (=> d!883928 m!3490693))

(assert (=> d!883928 m!3490705))

(assert (=> d!883928 m!3490701))

(declare-fun m!3494027 () Bool)

(assert (=> d!883928 m!3494027))

(assert (=> b!3218990 m!3493977))

(assert (=> b!3216970 d!883928))

(declare-fun d!883930 () Bool)

(assert (=> d!883930 (= (head!7054 (drop!1864 lt!1088771 0)) (apply!8223 lt!1088771 0))))

(declare-fun lt!1089731 () Unit!50722)

(assert (=> d!883930 (= lt!1089731 (choose!18798 lt!1088771 0))))

(declare-fun e!2007029 () Bool)

(assert (=> d!883930 e!2007029))

(declare-fun res!1310410 () Bool)

(assert (=> d!883930 (=> (not res!1310410) (not e!2007029))))

(assert (=> d!883930 (= res!1310410 (>= 0 0))))

(assert (=> d!883930 (= (lemmaDropApply!1040 lt!1088771 0) lt!1089731)))

(declare-fun b!3218991 () Bool)

(assert (=> b!3218991 (= e!2007029 (< 0 (size!27299 lt!1088771)))))

(assert (= (and d!883930 res!1310410) b!3218991))

(assert (=> d!883930 m!3490681))

(assert (=> d!883930 m!3490681))

(assert (=> d!883930 m!3490683))

(assert (=> d!883930 m!3490703))

(declare-fun m!3494029 () Bool)

(assert (=> d!883930 m!3494029))

(declare-fun m!3494031 () Bool)

(assert (=> b!3218991 m!3494031))

(assert (=> b!3216970 d!883930))

(declare-fun b!3218992 () Bool)

(declare-fun e!2007033 () Int)

(declare-fun call!233041 () Int)

(assert (=> b!3218992 (= e!2007033 (- call!233041 0))))

(declare-fun b!3218993 () Bool)

(declare-fun e!2007031 () Int)

(assert (=> b!3218993 (= e!2007031 call!233041)))

(declare-fun d!883932 () Bool)

(declare-fun e!2007030 () Bool)

(assert (=> d!883932 e!2007030))

(declare-fun res!1310411 () Bool)

(assert (=> d!883932 (=> (not res!1310411) (not e!2007030))))

(declare-fun lt!1089732 () List!36331)

(assert (=> d!883932 (= res!1310411 (= ((_ map implies) (content!4902 lt!1089732) (content!4902 lt!1088771)) ((as const (InoxSet Token!9826)) true)))))

(declare-fun e!2007032 () List!36331)

(assert (=> d!883932 (= lt!1089732 e!2007032)))

(declare-fun c!541285 () Bool)

(assert (=> d!883932 (= c!541285 ((_ is Nil!36207) lt!1088771))))

(assert (=> d!883932 (= (drop!1864 lt!1088771 0) lt!1089732)))

(declare-fun b!3218994 () Bool)

(declare-fun e!2007034 () List!36331)

(assert (=> b!3218994 (= e!2007032 e!2007034)))

(declare-fun c!541282 () Bool)

(assert (=> b!3218994 (= c!541282 (<= 0 0))))

(declare-fun b!3218995 () Bool)

(assert (=> b!3218995 (= e!2007030 (= (size!27299 lt!1089732) e!2007031))))

(declare-fun c!541283 () Bool)

(assert (=> b!3218995 (= c!541283 (<= 0 0))))

(declare-fun b!3218996 () Bool)

(assert (=> b!3218996 (= e!2007034 lt!1088771)))

(declare-fun b!3218997 () Bool)

(assert (=> b!3218997 (= e!2007034 (drop!1864 (t!239822 lt!1088771) (- 0 1)))))

(declare-fun b!3218998 () Bool)

(assert (=> b!3218998 (= e!2007031 e!2007033)))

(declare-fun c!541284 () Bool)

(assert (=> b!3218998 (= c!541284 (>= 0 call!233041))))

(declare-fun bm!233036 () Bool)

(assert (=> bm!233036 (= call!233041 (size!27299 lt!1088771))))

(declare-fun b!3218999 () Bool)

(assert (=> b!3218999 (= e!2007033 0)))

(declare-fun b!3219000 () Bool)

(assert (=> b!3219000 (= e!2007032 Nil!36207)))

(assert (= (and d!883932 c!541285) b!3219000))

(assert (= (and d!883932 (not c!541285)) b!3218994))

(assert (= (and b!3218994 c!541282) b!3218996))

(assert (= (and b!3218994 (not c!541282)) b!3218997))

(assert (= (and d!883932 res!1310411) b!3218995))

(assert (= (and b!3218995 c!541283) b!3218993))

(assert (= (and b!3218995 (not c!541283)) b!3218998))

(assert (= (and b!3218998 c!541284) b!3218999))

(assert (= (and b!3218998 (not c!541284)) b!3218992))

(assert (= (or b!3218993 b!3218998 b!3218992) bm!233036))

(declare-fun m!3494033 () Bool)

(assert (=> d!883932 m!3494033))

(declare-fun m!3494035 () Bool)

(assert (=> d!883932 m!3494035))

(declare-fun m!3494037 () Bool)

(assert (=> b!3218995 m!3494037))

(declare-fun m!3494039 () Bool)

(assert (=> b!3218997 m!3494039))

(assert (=> bm!233036 m!3494031))

(assert (=> b!3216970 d!883932))

(declare-fun d!883934 () Bool)

(declare-fun lt!1089733 () Token!9826)

(assert (=> d!883934 (contains!6482 lt!1088771 lt!1089733)))

(declare-fun e!2007037 () Token!9826)

(assert (=> d!883934 (= lt!1089733 e!2007037)))

(declare-fun c!541286 () Bool)

(assert (=> d!883934 (= c!541286 (= 0 0))))

(declare-fun e!2007038 () Bool)

(assert (=> d!883934 e!2007038))

(declare-fun res!1310416 () Bool)

(assert (=> d!883934 (=> (not res!1310416) (not e!2007038))))

(assert (=> d!883934 (= res!1310416 (<= 0 0))))

(assert (=> d!883934 (= (apply!8223 lt!1088771 0) lt!1089733)))

(declare-fun b!3219005 () Bool)

(assert (=> b!3219005 (= e!2007038 (< 0 (size!27299 lt!1088771)))))

(declare-fun b!3219006 () Bool)

(assert (=> b!3219006 (= e!2007037 (head!7054 lt!1088771))))

(declare-fun b!3219007 () Bool)

(assert (=> b!3219007 (= e!2007037 (apply!8223 (tail!5219 lt!1088771) (- 0 1)))))

(assert (= (and d!883934 res!1310416) b!3219005))

(assert (= (and d!883934 c!541286) b!3219006))

(assert (= (and d!883934 (not c!541286)) b!3219007))

(declare-fun m!3494041 () Bool)

(assert (=> d!883934 m!3494041))

(assert (=> b!3219005 m!3494031))

(declare-fun m!3494043 () Bool)

(assert (=> b!3219006 m!3494043))

(declare-fun m!3494045 () Bool)

(assert (=> b!3219007 m!3494045))

(assert (=> b!3219007 m!3494045))

(declare-fun m!3494047 () Bool)

(assert (=> b!3219007 m!3494047))

(assert (=> b!3216970 d!883934))

(declare-fun d!883936 () Bool)

(assert (=> d!883936 (= (head!7054 (drop!1864 lt!1088771 0)) (h!41627 (drop!1864 lt!1088771 0)))))

(assert (=> b!3216970 d!883936))

(declare-fun d!883938 () Bool)

(declare-fun lt!1089734 () Token!9826)

(assert (=> d!883938 (= lt!1089734 (apply!8223 (list!12890 lt!1088696) 0))))

(assert (=> d!883938 (= lt!1089734 (apply!8225 (c!540718 lt!1088696) 0))))

(declare-fun e!2007039 () Bool)

(assert (=> d!883938 e!2007039))

(declare-fun res!1310417 () Bool)

(assert (=> d!883938 (=> (not res!1310417) (not e!2007039))))

(assert (=> d!883938 (= res!1310417 (<= 0 0))))

(assert (=> d!883938 (= (apply!8222 lt!1088696 0) lt!1089734)))

(declare-fun b!3219008 () Bool)

(assert (=> b!3219008 (= e!2007039 (< 0 (size!27295 lt!1088696)))))

(assert (= (and d!883938 res!1310417) b!3219008))

(assert (=> d!883938 m!3490689))

(assert (=> d!883938 m!3490689))

(declare-fun m!3494049 () Bool)

(assert (=> d!883938 m!3494049))

(declare-fun m!3494051 () Bool)

(assert (=> d!883938 m!3494051))

(assert (=> b!3219008 m!3490673))

(assert (=> b!3216970 d!883938))

(declare-fun d!883940 () Bool)

(assert (=> d!883940 (= (tail!5219 (drop!1864 lt!1088772 0)) (t!239822 (drop!1864 lt!1088772 0)))))

(assert (=> b!3216970 d!883940))

(declare-fun d!883942 () Bool)

(declare-fun lt!1089740 () BalanceConc!21284)

(assert (=> d!883942 (= (list!12887 lt!1089740) (printListTailRec!564 thiss!18206 (dropList!1081 lt!1088696 (+ 0 1)) (list!12887 (++!8699 (BalanceConc!21285 Empty!10835) (charsOf!3246 (apply!8222 lt!1088696 0))))))))

(declare-fun e!2007041 () BalanceConc!21284)

(assert (=> d!883942 (= lt!1089740 e!2007041)))

(declare-fun c!541287 () Bool)

(assert (=> d!883942 (= c!541287 (>= (+ 0 1) (size!27295 lt!1088696)))))

(declare-fun e!2007040 () Bool)

(assert (=> d!883942 e!2007040))

(declare-fun res!1310418 () Bool)

(assert (=> d!883942 (=> (not res!1310418) (not e!2007040))))

(assert (=> d!883942 (= res!1310418 (>= (+ 0 1) 0))))

(assert (=> d!883942 (= (printTailRec!1316 thiss!18206 lt!1088696 (+ 0 1) (++!8699 (BalanceConc!21285 Empty!10835) (charsOf!3246 (apply!8222 lt!1088696 0)))) lt!1089740)))

(declare-fun b!3219009 () Bool)

(assert (=> b!3219009 (= e!2007040 (<= (+ 0 1) (size!27295 lt!1088696)))))

(declare-fun b!3219010 () Bool)

(assert (=> b!3219010 (= e!2007041 (++!8699 (BalanceConc!21285 Empty!10835) (charsOf!3246 (apply!8222 lt!1088696 0))))))

(declare-fun b!3219011 () Bool)

(assert (=> b!3219011 (= e!2007041 (printTailRec!1316 thiss!18206 lt!1088696 (+ 0 1 1) (++!8699 (++!8699 (BalanceConc!21285 Empty!10835) (charsOf!3246 (apply!8222 lt!1088696 0))) (charsOf!3246 (apply!8222 lt!1088696 (+ 0 1))))))))

(declare-fun lt!1089736 () List!36331)

(assert (=> b!3219011 (= lt!1089736 (list!12890 lt!1088696))))

(declare-fun lt!1089741 () Unit!50722)

(assert (=> b!3219011 (= lt!1089741 (lemmaDropApply!1040 lt!1089736 (+ 0 1)))))

(assert (=> b!3219011 (= (head!7054 (drop!1864 lt!1089736 (+ 0 1))) (apply!8223 lt!1089736 (+ 0 1)))))

(declare-fun lt!1089739 () Unit!50722)

(assert (=> b!3219011 (= lt!1089739 lt!1089741)))

(declare-fun lt!1089737 () List!36331)

(assert (=> b!3219011 (= lt!1089737 (list!12890 lt!1088696))))

(declare-fun lt!1089735 () Unit!50722)

(assert (=> b!3219011 (= lt!1089735 (lemmaDropTail!924 lt!1089737 (+ 0 1)))))

(assert (=> b!3219011 (= (tail!5219 (drop!1864 lt!1089737 (+ 0 1))) (drop!1864 lt!1089737 (+ 0 1 1)))))

(declare-fun lt!1089738 () Unit!50722)

(assert (=> b!3219011 (= lt!1089738 lt!1089735)))

(assert (= (and d!883942 res!1310418) b!3219009))

(assert (= (and d!883942 c!541287) b!3219010))

(assert (= (and d!883942 (not c!541287)) b!3219011))

(declare-fun m!3494053 () Bool)

(assert (=> d!883942 m!3494053))

(assert (=> d!883942 m!3490673))

(assert (=> d!883942 m!3494053))

(declare-fun m!3494055 () Bool)

(assert (=> d!883942 m!3494055))

(declare-fun m!3494057 () Bool)

(assert (=> d!883942 m!3494057))

(assert (=> d!883942 m!3490697))

(assert (=> d!883942 m!3494055))

(declare-fun m!3494059 () Bool)

(assert (=> d!883942 m!3494059))

(assert (=> b!3219009 m!3490673))

(declare-fun m!3494061 () Bool)

(assert (=> b!3219011 m!3494061))

(declare-fun m!3494063 () Bool)

(assert (=> b!3219011 m!3494063))

(declare-fun m!3494065 () Bool)

(assert (=> b!3219011 m!3494065))

(declare-fun m!3494067 () Bool)

(assert (=> b!3219011 m!3494067))

(assert (=> b!3219011 m!3490689))

(assert (=> b!3219011 m!3494065))

(declare-fun m!3494069 () Bool)

(assert (=> b!3219011 m!3494069))

(declare-fun m!3494071 () Bool)

(assert (=> b!3219011 m!3494071))

(declare-fun m!3494073 () Bool)

(assert (=> b!3219011 m!3494073))

(assert (=> b!3219011 m!3494061))

(declare-fun m!3494075 () Bool)

(assert (=> b!3219011 m!3494075))

(declare-fun m!3494077 () Bool)

(assert (=> b!3219011 m!3494077))

(assert (=> b!3219011 m!3490697))

(assert (=> b!3219011 m!3494069))

(assert (=> b!3219011 m!3494075))

(declare-fun m!3494079 () Bool)

(assert (=> b!3219011 m!3494079))

(declare-fun m!3494081 () Bool)

(assert (=> b!3219011 m!3494081))

(assert (=> b!3219011 m!3494071))

(declare-fun m!3494083 () Bool)

(assert (=> b!3219011 m!3494083))

(assert (=> b!3216970 d!883942))

(assert (=> b!3217022 d!883528))

(assert (=> b!3217022 d!883530))

(declare-fun d!883946 () Bool)

(assert (=> d!883946 (= (list!12887 (_2!20945 lt!1089063)) (list!12889 (c!540717 (_2!20945 lt!1089063))))))

(declare-fun bs!542424 () Bool)

(assert (= bs!542424 d!883946))

(declare-fun m!3494089 () Bool)

(assert (=> bs!542424 m!3494089))

(assert (=> b!3217670 d!883946))

(assert (=> b!3217670 d!883604))

(assert (=> b!3217670 d!883606))

(declare-fun d!883950 () Bool)

(declare-fun lt!1089743 () Int)

(assert (=> d!883950 (= lt!1089743 (size!27299 (list!12890 lt!1088703)))))

(assert (=> d!883950 (= lt!1089743 (size!27300 (c!540718 lt!1088703)))))

(assert (=> d!883950 (= (size!27295 lt!1088703) lt!1089743)))

(declare-fun bs!542425 () Bool)

(assert (= bs!542425 d!883950))

(assert (=> bs!542425 m!3491731))

(assert (=> bs!542425 m!3491731))

(declare-fun m!3494091 () Bool)

(assert (=> bs!542425 m!3494091))

(declare-fun m!3494093 () Bool)

(assert (=> bs!542425 m!3494093))

(assert (=> b!3217536 d!883950))

(declare-fun bs!542426 () Bool)

(declare-fun d!883952 () Bool)

(assert (= bs!542426 (and d!883952 d!883560)))

(declare-fun lambda!117689 () Int)

(assert (=> bs!542426 (= lambda!117689 lambda!117682)))

(declare-fun b!3219018 () Bool)

(declare-fun e!2007045 () Bool)

(assert (=> b!3219018 (= e!2007045 true)))

(assert (=> d!883952 e!2007045))

(assert (= d!883952 b!3219018))

(assert (=> b!3219018 (< (dynLambda!14645 order!18525 (toValue!7322 (transformation!5230 (rule!7682 (h!41627 tokens!494))))) (dynLambda!14657 order!18537 lambda!117689))))

(assert (=> b!3219018 (< (dynLambda!14647 order!18529 (toChars!7181 (transformation!5230 (rule!7682 (h!41627 tokens!494))))) (dynLambda!14657 order!18537 lambda!117689))))

(assert (=> d!883952 (= (list!12887 (dynLambda!14648 (toChars!7181 (transformation!5230 (rule!7682 (h!41627 tokens!494)))) (dynLambda!14653 (toValue!7322 (transformation!5230 (rule!7682 (h!41627 tokens!494)))) (seqFromList!3531 (_1!20949 lt!1088974))))) (list!12887 (seqFromList!3531 (_1!20949 lt!1088974))))))

(declare-fun lt!1089746 () Unit!50722)

(declare-fun ForallOf!558 (Int BalanceConc!21284) Unit!50722)

(assert (=> d!883952 (= lt!1089746 (ForallOf!558 lambda!117689 (seqFromList!3531 (_1!20949 lt!1088974))))))

(assert (=> d!883952 (= (lemmaSemiInverse!1181 (transformation!5230 (rule!7682 (h!41627 tokens!494))) (seqFromList!3531 (_1!20949 lt!1088974))) lt!1089746)))

(declare-fun b_lambda!88493 () Bool)

(assert (=> (not b_lambda!88493) (not d!883952)))

(declare-fun t!240083 () Bool)

(declare-fun tb!158977 () Bool)

(assert (=> (and b!3216775 (= (toChars!7181 (transformation!5230 (rule!7682 (h!41627 tokens!494)))) (toChars!7181 (transformation!5230 (rule!7682 (h!41627 tokens!494))))) t!240083) tb!158977))

(declare-fun tp!1014350 () Bool)

(declare-fun b!3219019 () Bool)

(declare-fun e!2007046 () Bool)

(assert (=> b!3219019 (= e!2007046 (and (inv!49077 (c!540717 (dynLambda!14648 (toChars!7181 (transformation!5230 (rule!7682 (h!41627 tokens!494)))) (dynLambda!14653 (toValue!7322 (transformation!5230 (rule!7682 (h!41627 tokens!494)))) (seqFromList!3531 (_1!20949 lt!1088974)))))) tp!1014350))))

(declare-fun result!201398 () Bool)

(assert (=> tb!158977 (= result!201398 (and (inv!49078 (dynLambda!14648 (toChars!7181 (transformation!5230 (rule!7682 (h!41627 tokens!494)))) (dynLambda!14653 (toValue!7322 (transformation!5230 (rule!7682 (h!41627 tokens!494)))) (seqFromList!3531 (_1!20949 lt!1088974))))) e!2007046))))

(assert (= tb!158977 b!3219019))

(declare-fun m!3494095 () Bool)

(assert (=> b!3219019 m!3494095))

(declare-fun m!3494097 () Bool)

(assert (=> tb!158977 m!3494097))

(assert (=> d!883952 t!240083))

(declare-fun b_and!215037 () Bool)

(assert (= b_and!215035 (and (=> t!240083 result!201398) b_and!215037)))

(declare-fun t!240085 () Bool)

(declare-fun tb!158979 () Bool)

(assert (=> (and b!3216773 (= (toChars!7181 (transformation!5230 (h!41626 rules!2135))) (toChars!7181 (transformation!5230 (rule!7682 (h!41627 tokens!494))))) t!240085) tb!158979))

(declare-fun result!201400 () Bool)

(assert (= result!201400 result!201398))

(assert (=> d!883952 t!240085))

(declare-fun b_and!215039 () Bool)

(assert (= b_and!215033 (and (=> t!240085 result!201400) b_and!215039)))

(declare-fun t!240087 () Bool)

(declare-fun tb!158981 () Bool)

(assert (=> (and b!3217757 (= (toChars!7181 (transformation!5230 (h!41626 (t!239821 rules!2135)))) (toChars!7181 (transformation!5230 (rule!7682 (h!41627 tokens!494))))) t!240087) tb!158981))

(declare-fun result!201402 () Bool)

(assert (= result!201402 result!201398))

(assert (=> d!883952 t!240087))

(declare-fun b_and!215041 () Bool)

(assert (= b_and!215031 (and (=> t!240087 result!201402) b_and!215041)))

(declare-fun tb!158983 () Bool)

(declare-fun t!240089 () Bool)

(assert (=> (and b!3216778 (= (toChars!7181 (transformation!5230 (rule!7682 separatorToken!241))) (toChars!7181 (transformation!5230 (rule!7682 (h!41627 tokens!494))))) t!240089) tb!158983))

(declare-fun result!201404 () Bool)

(assert (= result!201404 result!201398))

(assert (=> d!883952 t!240089))

(declare-fun b_and!215043 () Bool)

(assert (= b_and!215027 (and (=> t!240089 result!201404) b_and!215043)))

(declare-fun t!240091 () Bool)

(declare-fun tb!158985 () Bool)

(assert (=> (and b!3217774 (= (toChars!7181 (transformation!5230 (rule!7682 (h!41627 (t!239822 tokens!494))))) (toChars!7181 (transformation!5230 (rule!7682 (h!41627 tokens!494))))) t!240091) tb!158985))

(declare-fun result!201406 () Bool)

(assert (= result!201406 result!201398))

(assert (=> d!883952 t!240091))

(declare-fun b_and!215045 () Bool)

(assert (= b_and!215029 (and (=> t!240091 result!201406) b_and!215045)))

(declare-fun b_lambda!88495 () Bool)

(assert (=> (not b_lambda!88495) (not d!883952)))

(declare-fun tb!158987 () Bool)

(declare-fun t!240093 () Bool)

(assert (=> (and b!3216773 (= (toValue!7322 (transformation!5230 (h!41626 rules!2135))) (toValue!7322 (transformation!5230 (rule!7682 (h!41627 tokens!494))))) t!240093) tb!158987))

(declare-fun result!201408 () Bool)

(assert (=> tb!158987 (= result!201408 (inv!21 (dynLambda!14653 (toValue!7322 (transformation!5230 (rule!7682 (h!41627 tokens!494)))) (seqFromList!3531 (_1!20949 lt!1088974)))))))

(declare-fun m!3494099 () Bool)

(assert (=> tb!158987 m!3494099))

(assert (=> d!883952 t!240093))

(declare-fun b_and!215047 () Bool)

(assert (= b_and!215019 (and (=> t!240093 result!201408) b_and!215047)))

(declare-fun t!240095 () Bool)

(declare-fun tb!158989 () Bool)

(assert (=> (and b!3216775 (= (toValue!7322 (transformation!5230 (rule!7682 (h!41627 tokens!494)))) (toValue!7322 (transformation!5230 (rule!7682 (h!41627 tokens!494))))) t!240095) tb!158989))

(declare-fun result!201410 () Bool)

(assert (= result!201410 result!201408))

(assert (=> d!883952 t!240095))

(declare-fun b_and!215049 () Bool)

(assert (= b_and!215017 (and (=> t!240095 result!201410) b_and!215049)))

(declare-fun tb!158991 () Bool)

(declare-fun t!240097 () Bool)

(assert (=> (and b!3217757 (= (toValue!7322 (transformation!5230 (h!41626 (t!239821 rules!2135)))) (toValue!7322 (transformation!5230 (rule!7682 (h!41627 tokens!494))))) t!240097) tb!158991))

(declare-fun result!201412 () Bool)

(assert (= result!201412 result!201408))

(assert (=> d!883952 t!240097))

(declare-fun b_and!215051 () Bool)

(assert (= b_and!215025 (and (=> t!240097 result!201412) b_and!215051)))

(declare-fun t!240099 () Bool)

(declare-fun tb!158993 () Bool)

(assert (=> (and b!3217774 (= (toValue!7322 (transformation!5230 (rule!7682 (h!41627 (t!239822 tokens!494))))) (toValue!7322 (transformation!5230 (rule!7682 (h!41627 tokens!494))))) t!240099) tb!158993))

(declare-fun result!201414 () Bool)

(assert (= result!201414 result!201408))

(assert (=> d!883952 t!240099))

(declare-fun b_and!215053 () Bool)

(assert (= b_and!215021 (and (=> t!240099 result!201414) b_and!215053)))

(declare-fun tb!158995 () Bool)

(declare-fun t!240101 () Bool)

(assert (=> (and b!3216778 (= (toValue!7322 (transformation!5230 (rule!7682 separatorToken!241))) (toValue!7322 (transformation!5230 (rule!7682 (h!41627 tokens!494))))) t!240101) tb!158995))

(declare-fun result!201416 () Bool)

(assert (= result!201416 result!201408))

(assert (=> d!883952 t!240101))

(declare-fun b_and!215055 () Bool)

(assert (= b_and!215023 (and (=> t!240101 result!201416) b_and!215055)))

(assert (=> d!883952 m!3491359))

(declare-fun m!3494101 () Bool)

(assert (=> d!883952 m!3494101))

(declare-fun m!3494103 () Bool)

(assert (=> d!883952 m!3494103))

(declare-fun m!3494105 () Bool)

(assert (=> d!883952 m!3494105))

(assert (=> d!883952 m!3491359))

(declare-fun m!3494107 () Bool)

(assert (=> d!883952 m!3494107))

(assert (=> d!883952 m!3491359))

(declare-fun m!3494109 () Bool)

(assert (=> d!883952 m!3494109))

(assert (=> d!883952 m!3494101))

(assert (=> d!883952 m!3494103))

(assert (=> b!3217336 d!883952))

(declare-fun d!883954 () Bool)

(declare-fun lt!1089747 () Int)

(assert (=> d!883954 (= lt!1089747 (size!27294 (list!12887 (seqFromList!3531 (_1!20949 lt!1088974)))))))

(assert (=> d!883954 (= lt!1089747 (size!27303 (c!540717 (seqFromList!3531 (_1!20949 lt!1088974)))))))

(assert (=> d!883954 (= (size!27301 (seqFromList!3531 (_1!20949 lt!1088974))) lt!1089747)))

(declare-fun bs!542427 () Bool)

(assert (= bs!542427 d!883954))

(assert (=> bs!542427 m!3491359))

(assert (=> bs!542427 m!3494107))

(assert (=> bs!542427 m!3494107))

(declare-fun m!3494111 () Bool)

(assert (=> bs!542427 m!3494111))

(declare-fun m!3494113 () Bool)

(assert (=> bs!542427 m!3494113))

(assert (=> b!3217336 d!883954))

(declare-fun b!3219020 () Bool)

(declare-fun e!2007055 () tuple2!35630)

(assert (=> b!3219020 (= e!2007055 (tuple2!35631 Nil!36205 lt!1088698))))

(declare-fun bm!233037 () Bool)

(declare-fun call!233042 () Bool)

(assert (=> bm!233037 (= call!233042 (isPrefix!2788 lt!1088698 lt!1088698))))

(declare-fun b!3219021 () Bool)

(declare-fun c!541292 () Bool)

(declare-fun call!233049 () Bool)

(assert (=> b!3219021 (= c!541292 call!233049)))

(declare-fun lt!1089775 () Unit!50722)

(declare-fun lt!1089769 () Unit!50722)

(assert (=> b!3219021 (= lt!1089775 lt!1089769)))

(declare-fun lt!1089756 () C!20164)

(declare-fun lt!1089748 () List!36329)

(assert (=> b!3219021 (= (++!8698 (++!8698 Nil!36205 (Cons!36205 lt!1089756 Nil!36205)) lt!1089748) lt!1088698)))

(assert (=> b!3219021 (= lt!1089769 (lemmaMoveElementToOtherListKeepsConcatEq!1123 Nil!36205 lt!1089756 lt!1089748 lt!1088698))))

(assert (=> b!3219021 (= lt!1089748 (tail!5218 lt!1088698))))

(assert (=> b!3219021 (= lt!1089756 (head!7053 lt!1088698))))

(declare-fun lt!1089762 () Unit!50722)

(declare-fun lt!1089760 () Unit!50722)

(assert (=> b!3219021 (= lt!1089762 lt!1089760)))

(assert (=> b!3219021 (isPrefix!2788 (++!8698 Nil!36205 (Cons!36205 (head!7053 (getSuffix!1389 lt!1088698 Nil!36205)) Nil!36205)) lt!1088698)))

(assert (=> b!3219021 (= lt!1089760 (lemmaAddHeadSuffixToPrefixStillPrefix!511 Nil!36205 lt!1088698))))

(declare-fun lt!1089752 () Unit!50722)

(declare-fun lt!1089770 () Unit!50722)

(assert (=> b!3219021 (= lt!1089752 lt!1089770)))

(assert (=> b!3219021 (= lt!1089770 (lemmaAddHeadSuffixToPrefixStillPrefix!511 Nil!36205 lt!1088698))))

(declare-fun lt!1089757 () List!36329)

(assert (=> b!3219021 (= lt!1089757 (++!8698 Nil!36205 (Cons!36205 (head!7053 lt!1088698) Nil!36205)))))

(declare-fun lt!1089749 () Unit!50722)

(declare-fun e!2007052 () Unit!50722)

(assert (=> b!3219021 (= lt!1089749 e!2007052)))

(declare-fun c!541289 () Bool)

(assert (=> b!3219021 (= c!541289 (= (size!27294 Nil!36205) (size!27294 lt!1088698)))))

(declare-fun lt!1089766 () Unit!50722)

(declare-fun lt!1089768 () Unit!50722)

(assert (=> b!3219021 (= lt!1089766 lt!1089768)))

(assert (=> b!3219021 (<= (size!27294 Nil!36205) (size!27294 lt!1088698))))

(assert (=> b!3219021 (= lt!1089768 (lemmaIsPrefixThenSmallerEqSize!319 Nil!36205 lt!1088698))))

(declare-fun e!2007050 () tuple2!35630)

(declare-fun e!2007054 () tuple2!35630)

(assert (=> b!3219021 (= e!2007050 e!2007054)))

(declare-fun b!3219022 () Bool)

(declare-fun Unit!50736 () Unit!50722)

(assert (=> b!3219022 (= e!2007052 Unit!50736)))

(declare-fun b!3219023 () Bool)

(declare-fun Unit!50737 () Unit!50722)

(assert (=> b!3219023 (= e!2007052 Unit!50737)))

(declare-fun lt!1089771 () Unit!50722)

(declare-fun call!233048 () Unit!50722)

(assert (=> b!3219023 (= lt!1089771 call!233048)))

(assert (=> b!3219023 call!233042))

(declare-fun lt!1089751 () Unit!50722)

(assert (=> b!3219023 (= lt!1089751 lt!1089771)))

(declare-fun lt!1089765 () Unit!50722)

(declare-fun call!233043 () Unit!50722)

(assert (=> b!3219023 (= lt!1089765 call!233043)))

(assert (=> b!3219023 (= lt!1088698 Nil!36205)))

(declare-fun lt!1089774 () Unit!50722)

(assert (=> b!3219023 (= lt!1089774 lt!1089765)))

(assert (=> b!3219023 false))

(declare-fun b!3219024 () Bool)

(declare-fun e!2007053 () tuple2!35630)

(declare-fun lt!1089761 () tuple2!35630)

(assert (=> b!3219024 (= e!2007053 lt!1089761)))

(declare-fun bm!233038 () Bool)

(assert (=> bm!233038 (= call!233048 (lemmaIsPrefixRefl!1747 lt!1088698 lt!1088698))))

(declare-fun b!3219025 () Bool)

(declare-fun e!2007048 () tuple2!35630)

(assert (=> b!3219025 (= e!2007048 e!2007050)))

(declare-fun c!541291 () Bool)

(assert (=> b!3219025 (= c!541291 (= (size!27294 Nil!36205) (size!27294 lt!1088698)))))

(declare-fun bm!233039 () Bool)

(assert (=> bm!233039 (= call!233043 (lemmaIsPrefixSameLengthThenSameList!518 lt!1088698 Nil!36205 lt!1088698))))

(declare-fun bm!233040 () Bool)

(declare-fun call!233045 () C!20164)

(assert (=> bm!233040 (= call!233045 (head!7053 lt!1088698))))

(declare-fun d!883956 () Bool)

(declare-fun e!2007049 () Bool)

(assert (=> d!883956 e!2007049))

(declare-fun res!1310422 () Bool)

(assert (=> d!883956 (=> (not res!1310422) (not e!2007049))))

(declare-fun lt!1089758 () tuple2!35630)

(assert (=> d!883956 (= res!1310422 (= (++!8698 (_1!20949 lt!1089758) (_2!20949 lt!1089758)) lt!1088698))))

(assert (=> d!883956 (= lt!1089758 e!2007048)))

(declare-fun c!541294 () Bool)

(assert (=> d!883956 (= c!541294 (lostCause!885 (regex!5230 (rule!7682 (h!41627 tokens!494)))))))

(declare-fun lt!1089764 () Unit!50722)

(declare-fun Unit!50738 () Unit!50722)

(assert (=> d!883956 (= lt!1089764 Unit!50738)))

(assert (=> d!883956 (= (getSuffix!1389 lt!1088698 Nil!36205) lt!1088698)))

(declare-fun lt!1089754 () Unit!50722)

(declare-fun lt!1089755 () Unit!50722)

(assert (=> d!883956 (= lt!1089754 lt!1089755)))

(declare-fun lt!1089753 () List!36329)

(assert (=> d!883956 (= lt!1088698 lt!1089753)))

(assert (=> d!883956 (= lt!1089755 (lemmaSamePrefixThenSameSuffix!1235 Nil!36205 lt!1088698 Nil!36205 lt!1089753 lt!1088698))))

(assert (=> d!883956 (= lt!1089753 (getSuffix!1389 lt!1088698 Nil!36205))))

(declare-fun lt!1089750 () Unit!50722)

(declare-fun lt!1089759 () Unit!50722)

(assert (=> d!883956 (= lt!1089750 lt!1089759)))

(assert (=> d!883956 (isPrefix!2788 Nil!36205 (++!8698 Nil!36205 lt!1088698))))

(assert (=> d!883956 (= lt!1089759 (lemmaConcatTwoListThenFirstIsPrefix!1769 Nil!36205 lt!1088698))))

(assert (=> d!883956 (validRegex!4557 (regex!5230 (rule!7682 (h!41627 tokens!494))))))

(assert (=> d!883956 (= (findLongestMatchInner!835 (regex!5230 (rule!7682 (h!41627 tokens!494))) Nil!36205 (size!27294 Nil!36205) lt!1088698 lt!1088698 (size!27294 lt!1088698)) lt!1089758)))

(declare-fun b!3219026 () Bool)

(assert (=> b!3219026 (= e!2007054 e!2007053)))

(declare-fun call!233046 () tuple2!35630)

(assert (=> b!3219026 (= lt!1089761 call!233046)))

(declare-fun c!541293 () Bool)

(assert (=> b!3219026 (= c!541293 (isEmpty!20308 (_1!20949 lt!1089761)))))

(declare-fun b!3219027 () Bool)

(declare-fun e!2007051 () Bool)

(assert (=> b!3219027 (= e!2007049 e!2007051)))

(declare-fun res!1310421 () Bool)

(assert (=> b!3219027 (=> res!1310421 e!2007051)))

(assert (=> b!3219027 (= res!1310421 (isEmpty!20308 (_1!20949 lt!1089758)))))

(declare-fun b!3219028 () Bool)

(assert (=> b!3219028 (= e!2007053 (tuple2!35631 Nil!36205 lt!1088698))))

(declare-fun b!3219029 () Bool)

(assert (=> b!3219029 (= e!2007048 (tuple2!35631 Nil!36205 lt!1088698))))

(declare-fun b!3219030 () Bool)

(assert (=> b!3219030 (= e!2007055 (tuple2!35631 Nil!36205 Nil!36205))))

(declare-fun b!3219031 () Bool)

(assert (=> b!3219031 (= e!2007054 call!233046)))

(declare-fun bm!233041 () Bool)

(declare-fun call!233047 () Regex!9989)

(assert (=> bm!233041 (= call!233047 (derivativeStep!2954 (regex!5230 (rule!7682 (h!41627 tokens!494))) call!233045))))

(declare-fun call!233044 () List!36329)

(declare-fun bm!233042 () Bool)

(assert (=> bm!233042 (= call!233046 (findLongestMatchInner!835 call!233047 lt!1089757 (+ (size!27294 Nil!36205) 1) call!233044 lt!1088698 (size!27294 lt!1088698)))))

(declare-fun b!3219032 () Bool)

(declare-fun c!541290 () Bool)

(assert (=> b!3219032 (= c!541290 call!233049)))

(declare-fun lt!1089773 () Unit!50722)

(declare-fun lt!1089767 () Unit!50722)

(assert (=> b!3219032 (= lt!1089773 lt!1089767)))

(assert (=> b!3219032 (= lt!1088698 Nil!36205)))

(assert (=> b!3219032 (= lt!1089767 call!233043)))

(declare-fun lt!1089772 () Unit!50722)

(declare-fun lt!1089763 () Unit!50722)

(assert (=> b!3219032 (= lt!1089772 lt!1089763)))

(assert (=> b!3219032 call!233042))

(assert (=> b!3219032 (= lt!1089763 call!233048)))

(assert (=> b!3219032 (= e!2007050 e!2007055)))

(declare-fun bm!233043 () Bool)

(assert (=> bm!233043 (= call!233044 (tail!5218 lt!1088698))))

(declare-fun bm!233044 () Bool)

(assert (=> bm!233044 (= call!233049 (nullable!3401 (regex!5230 (rule!7682 (h!41627 tokens!494)))))))

(declare-fun b!3219033 () Bool)

(assert (=> b!3219033 (= e!2007051 (>= (size!27294 (_1!20949 lt!1089758)) (size!27294 Nil!36205)))))

(assert (= (and d!883956 c!541294) b!3219029))

(assert (= (and d!883956 (not c!541294)) b!3219025))

(assert (= (and b!3219025 c!541291) b!3219032))

(assert (= (and b!3219025 (not c!541291)) b!3219021))

(assert (= (and b!3219032 c!541290) b!3219030))

(assert (= (and b!3219032 (not c!541290)) b!3219020))

(assert (= (and b!3219021 c!541289) b!3219023))

(assert (= (and b!3219021 (not c!541289)) b!3219022))

(assert (= (and b!3219021 c!541292) b!3219026))

(assert (= (and b!3219021 (not c!541292)) b!3219031))

(assert (= (and b!3219026 c!541293) b!3219028))

(assert (= (and b!3219026 (not c!541293)) b!3219024))

(assert (= (or b!3219026 b!3219031) bm!233040))

(assert (= (or b!3219026 b!3219031) bm!233043))

(assert (= (or b!3219026 b!3219031) bm!233041))

(assert (= (or b!3219026 b!3219031) bm!233042))

(assert (= (or b!3219032 b!3219023) bm!233038))

(assert (= (or b!3219032 b!3219023) bm!233037))

(assert (= (or b!3219032 b!3219023) bm!233039))

(assert (= (or b!3219032 b!3219021) bm!233044))

(assert (= (and d!883956 res!1310422) b!3219027))

(assert (= (and b!3219027 (not res!1310421)) b!3219033))

(declare-fun m!3494115 () Bool)

(assert (=> bm!233039 m!3494115))

(declare-fun m!3494117 () Bool)

(assert (=> b!3219026 m!3494117))

(assert (=> bm!233042 m!3490403))

(declare-fun m!3494119 () Bool)

(assert (=> bm!233042 m!3494119))

(declare-fun m!3494121 () Bool)

(assert (=> d!883956 m!3494121))

(declare-fun m!3494123 () Bool)

(assert (=> d!883956 m!3494123))

(declare-fun m!3494125 () Bool)

(assert (=> d!883956 m!3494125))

(assert (=> d!883956 m!3492727))

(declare-fun m!3494127 () Bool)

(assert (=> d!883956 m!3494127))

(declare-fun m!3494129 () Bool)

(assert (=> d!883956 m!3494129))

(declare-fun m!3494131 () Bool)

(assert (=> d!883956 m!3494131))

(assert (=> d!883956 m!3494123))

(declare-fun m!3494133 () Bool)

(assert (=> d!883956 m!3494133))

(declare-fun m!3494135 () Bool)

(assert (=> b!3219033 m!3494135))

(assert (=> b!3219033 m!3491355))

(assert (=> b!3219021 m!3494121))

(assert (=> b!3219021 m!3490403))

(declare-fun m!3494137 () Bool)

(assert (=> b!3219021 m!3494137))

(declare-fun m!3494139 () Bool)

(assert (=> b!3219021 m!3494139))

(assert (=> b!3219021 m!3490605))

(assert (=> b!3219021 m!3494121))

(declare-fun m!3494141 () Bool)

(assert (=> b!3219021 m!3494141))

(declare-fun m!3494143 () Bool)

(assert (=> b!3219021 m!3494143))

(declare-fun m!3494145 () Bool)

(assert (=> b!3219021 m!3494145))

(assert (=> b!3219021 m!3491355))

(assert (=> b!3219021 m!3490609))

(declare-fun m!3494147 () Bool)

(assert (=> b!3219021 m!3494147))

(assert (=> b!3219021 m!3494137))

(declare-fun m!3494149 () Bool)

(assert (=> b!3219021 m!3494149))

(assert (=> b!3219021 m!3494147))

(declare-fun m!3494151 () Bool)

(assert (=> b!3219021 m!3494151))

(declare-fun m!3494153 () Bool)

(assert (=> b!3219021 m!3494153))

(declare-fun m!3494155 () Bool)

(assert (=> bm!233041 m!3494155))

(declare-fun m!3494157 () Bool)

(assert (=> bm!233038 m!3494157))

(assert (=> bm!233040 m!3490609))

(assert (=> bm!233043 m!3490605))

(declare-fun m!3494159 () Bool)

(assert (=> b!3219027 m!3494159))

(assert (=> bm!233044 m!3492731))

(declare-fun m!3494161 () Bool)

(assert (=> bm!233037 m!3494161))

(assert (=> b!3217336 d!883956))

(declare-fun d!883958 () Bool)

(assert (=> d!883958 (= (apply!8221 (transformation!5230 (rule!7682 (h!41627 tokens!494))) (seqFromList!3531 (_1!20949 lt!1088974))) (dynLambda!14653 (toValue!7322 (transformation!5230 (rule!7682 (h!41627 tokens!494)))) (seqFromList!3531 (_1!20949 lt!1088974))))))

(declare-fun b_lambda!88497 () Bool)

(assert (=> (not b_lambda!88497) (not d!883958)))

(assert (=> d!883958 t!240095))

(declare-fun b_and!215057 () Bool)

(assert (= b_and!215049 (and (=> t!240095 result!201410) b_and!215057)))

(assert (=> d!883958 t!240097))

(declare-fun b_and!215059 () Bool)

(assert (= b_and!215051 (and (=> t!240097 result!201412) b_and!215059)))

(assert (=> d!883958 t!240099))

(declare-fun b_and!215061 () Bool)

(assert (= b_and!215053 (and (=> t!240099 result!201414) b_and!215061)))

(assert (=> d!883958 t!240093))

(declare-fun b_and!215063 () Bool)

(assert (= b_and!215047 (and (=> t!240093 result!201408) b_and!215063)))

(assert (=> d!883958 t!240101))

(declare-fun b_and!215065 () Bool)

(assert (= b_and!215055 (and (=> t!240101 result!201416) b_and!215065)))

(assert (=> d!883958 m!3491359))

(assert (=> d!883958 m!3494101))

(assert (=> b!3217336 d!883958))

(declare-fun d!883960 () Bool)

(assert (=> d!883960 (= (isEmpty!20308 (_1!20949 (findLongestMatchInner!835 (regex!5230 (rule!7682 (h!41627 tokens!494))) Nil!36205 (size!27294 Nil!36205) lt!1088698 lt!1088698 (size!27294 lt!1088698)))) ((_ is Nil!36205) (_1!20949 (findLongestMatchInner!835 (regex!5230 (rule!7682 (h!41627 tokens!494))) Nil!36205 (size!27294 Nil!36205) lt!1088698 lt!1088698 (size!27294 lt!1088698)))))))

(assert (=> b!3217336 d!883960))

(declare-fun d!883962 () Bool)

(assert (=> d!883962 (= (seqFromList!3531 (_1!20949 lt!1088974)) (fromListB!1549 (_1!20949 lt!1088974)))))

(declare-fun bs!542428 () Bool)

(assert (= bs!542428 d!883962))

(declare-fun m!3494163 () Bool)

(assert (=> bs!542428 m!3494163))

(assert (=> b!3217336 d!883962))

(assert (=> b!3217336 d!883366))

(assert (=> b!3217336 d!883152))

(declare-fun d!883964 () Bool)

(declare-fun e!2007058 () Bool)

(assert (=> d!883964 e!2007058))

(declare-fun res!1310425 () Bool)

(assert (=> d!883964 (=> res!1310425 e!2007058)))

(assert (=> d!883964 (= res!1310425 (isEmpty!20308 (_1!20949 (findLongestMatchInner!835 (regex!5230 (rule!7682 (h!41627 tokens!494))) Nil!36205 (size!27294 Nil!36205) lt!1088698 lt!1088698 (size!27294 lt!1088698)))))))

(declare-fun lt!1089778 () Unit!50722)

(declare-fun choose!18803 (Regex!9989 List!36329) Unit!50722)

(assert (=> d!883964 (= lt!1089778 (choose!18803 (regex!5230 (rule!7682 (h!41627 tokens!494))) lt!1088698))))

(assert (=> d!883964 (validRegex!4557 (regex!5230 (rule!7682 (h!41627 tokens!494))))))

(assert (=> d!883964 (= (longestMatchIsAcceptedByMatchOrIsEmpty!808 (regex!5230 (rule!7682 (h!41627 tokens!494))) lt!1088698) lt!1089778)))

(declare-fun b!3219036 () Bool)

(assert (=> b!3219036 (= e!2007058 (matchR!4623 (regex!5230 (rule!7682 (h!41627 tokens!494))) (_1!20949 (findLongestMatchInner!835 (regex!5230 (rule!7682 (h!41627 tokens!494))) Nil!36205 (size!27294 Nil!36205) lt!1088698 lt!1088698 (size!27294 lt!1088698)))))))

(assert (= (and d!883964 (not res!1310425)) b!3219036))

(assert (=> d!883964 m!3490403))

(assert (=> d!883964 m!3492727))

(assert (=> d!883964 m!3491355))

(assert (=> d!883964 m!3491355))

(assert (=> d!883964 m!3490403))

(assert (=> d!883964 m!3491357))

(assert (=> d!883964 m!3491367))

(declare-fun m!3494165 () Bool)

(assert (=> d!883964 m!3494165))

(assert (=> b!3219036 m!3491355))

(assert (=> b!3219036 m!3490403))

(assert (=> b!3219036 m!3491355))

(assert (=> b!3219036 m!3490403))

(assert (=> b!3219036 m!3491357))

(assert (=> b!3219036 m!3491371))

(assert (=> b!3217336 d!883964))

(declare-fun d!883966 () Bool)

(declare-fun lt!1089779 () Bool)

(assert (=> d!883966 (= lt!1089779 (select (content!4899 (t!239820 (usedCharacters!546 (regex!5230 (rule!7682 separatorToken!241))))) lt!1088692))))

(declare-fun e!2007060 () Bool)

(assert (=> d!883966 (= lt!1089779 e!2007060)))

(declare-fun res!1310427 () Bool)

(assert (=> d!883966 (=> (not res!1310427) (not e!2007060))))

(assert (=> d!883966 (= res!1310427 ((_ is Cons!36205) (t!239820 (usedCharacters!546 (regex!5230 (rule!7682 separatorToken!241))))))))

(assert (=> d!883966 (= (contains!6479 (t!239820 (usedCharacters!546 (regex!5230 (rule!7682 separatorToken!241)))) lt!1088692) lt!1089779)))

(declare-fun b!3219037 () Bool)

(declare-fun e!2007059 () Bool)

(assert (=> b!3219037 (= e!2007060 e!2007059)))

(declare-fun res!1310426 () Bool)

(assert (=> b!3219037 (=> res!1310426 e!2007059)))

(assert (=> b!3219037 (= res!1310426 (= (h!41625 (t!239820 (usedCharacters!546 (regex!5230 (rule!7682 separatorToken!241))))) lt!1088692))))

(declare-fun b!3219038 () Bool)

(assert (=> b!3219038 (= e!2007059 (contains!6479 (t!239820 (t!239820 (usedCharacters!546 (regex!5230 (rule!7682 separatorToken!241))))) lt!1088692))))

(assert (= (and d!883966 res!1310427) b!3219037))

(assert (= (and b!3219037 (not res!1310426)) b!3219038))

(assert (=> d!883966 m!3492613))

(declare-fun m!3494167 () Bool)

(assert (=> d!883966 m!3494167))

(declare-fun m!3494169 () Bool)

(assert (=> b!3219038 m!3494169))

(assert (=> b!3217669 d!883966))

(assert (=> b!3216912 d!883528))

(assert (=> b!3216912 d!883530))

(declare-fun d!883968 () Bool)

(declare-fun lt!1089780 () Int)

(assert (=> d!883968 (>= lt!1089780 0)))

(declare-fun e!2007061 () Int)

(assert (=> d!883968 (= lt!1089780 e!2007061)))

(declare-fun c!541295 () Bool)

(assert (=> d!883968 (= c!541295 ((_ is Nil!36205) (originalCharacters!5944 separatorToken!241)))))

(assert (=> d!883968 (= (size!27294 (originalCharacters!5944 separatorToken!241)) lt!1089780)))

(declare-fun b!3219039 () Bool)

(assert (=> b!3219039 (= e!2007061 0)))

(declare-fun b!3219040 () Bool)

(assert (=> b!3219040 (= e!2007061 (+ 1 (size!27294 (t!239820 (originalCharacters!5944 separatorToken!241)))))))

(assert (= (and d!883968 c!541295) b!3219039))

(assert (= (and d!883968 (not c!541295)) b!3219040))

(declare-fun m!3494171 () Bool)

(assert (=> b!3219040 m!3494171))

(assert (=> b!3216826 d!883968))

(declare-fun b!3219044 () Bool)

(declare-fun e!2007063 () List!36329)

(assert (=> b!3219044 (= e!2007063 (++!8698 (list!12889 (left!28160 (c!540717 lt!1088686))) (list!12889 (right!28490 (c!540717 lt!1088686)))))))

(declare-fun b!3219043 () Bool)

(assert (=> b!3219043 (= e!2007063 (list!12894 (xs!13953 (c!540717 lt!1088686))))))

(declare-fun b!3219042 () Bool)

(declare-fun e!2007062 () List!36329)

(assert (=> b!3219042 (= e!2007062 e!2007063)))

(declare-fun c!541297 () Bool)

(assert (=> b!3219042 (= c!541297 ((_ is Leaf!17061) (c!540717 lt!1088686)))))

(declare-fun d!883970 () Bool)

(declare-fun c!541296 () Bool)

(assert (=> d!883970 (= c!541296 ((_ is Empty!10835) (c!540717 lt!1088686)))))

(assert (=> d!883970 (= (list!12889 (c!540717 lt!1088686)) e!2007062)))

(declare-fun b!3219041 () Bool)

(assert (=> b!3219041 (= e!2007062 Nil!36205)))

(assert (= (and d!883970 c!541296) b!3219041))

(assert (= (and d!883970 (not c!541296)) b!3219042))

(assert (= (and b!3219042 c!541297) b!3219043))

(assert (= (and b!3219042 (not c!541297)) b!3219044))

(declare-fun m!3494173 () Bool)

(assert (=> b!3219044 m!3494173))

(declare-fun m!3494175 () Bool)

(assert (=> b!3219044 m!3494175))

(assert (=> b!3219044 m!3494173))

(assert (=> b!3219044 m!3494175))

(declare-fun m!3494177 () Bool)

(assert (=> b!3219044 m!3494177))

(declare-fun m!3494179 () Bool)

(assert (=> b!3219043 m!3494179))

(assert (=> d!882830 d!883970))

(declare-fun d!883972 () Bool)

(declare-fun lt!1089781 () Int)

(assert (=> d!883972 (>= lt!1089781 0)))

(declare-fun e!2007064 () Int)

(assert (=> d!883972 (= lt!1089781 e!2007064)))

(declare-fun c!541298 () Bool)

(assert (=> d!883972 (= c!541298 ((_ is Nil!36205) (_2!20946 (get!11534 lt!1088911))))))

(assert (=> d!883972 (= (size!27294 (_2!20946 (get!11534 lt!1088911))) lt!1089781)))

(declare-fun b!3219045 () Bool)

(assert (=> b!3219045 (= e!2007064 0)))

(declare-fun b!3219046 () Bool)

(assert (=> b!3219046 (= e!2007064 (+ 1 (size!27294 (t!239820 (_2!20946 (get!11534 lt!1088911))))))))

(assert (= (and d!883972 c!541298) b!3219045))

(assert (= (and d!883972 (not c!541298)) b!3219046))

(declare-fun m!3494181 () Bool)

(assert (=> b!3219046 m!3494181))

(assert (=> b!3217202 d!883972))

(assert (=> b!3217202 d!883394))

(declare-fun d!883974 () Bool)

(declare-fun lt!1089782 () Int)

(assert (=> d!883974 (>= lt!1089782 0)))

(declare-fun e!2007065 () Int)

(assert (=> d!883974 (= lt!1089782 e!2007065)))

(declare-fun c!541299 () Bool)

(assert (=> d!883974 (= c!541299 ((_ is Nil!36205) lt!1088678))))

(assert (=> d!883974 (= (size!27294 lt!1088678) lt!1089782)))

(declare-fun b!3219047 () Bool)

(assert (=> b!3219047 (= e!2007065 0)))

(declare-fun b!3219048 () Bool)

(assert (=> b!3219048 (= e!2007065 (+ 1 (size!27294 (t!239820 lt!1088678))))))

(assert (= (and d!883974 c!541299) b!3219047))

(assert (= (and d!883974 (not c!541299)) b!3219048))

(declare-fun m!3494183 () Bool)

(assert (=> b!3219048 m!3494183))

(assert (=> b!3217202 d!883974))

(declare-fun d!883976 () Bool)

(declare-fun lt!1089785 () Bool)

(declare-fun content!4904 (List!36330) (InoxSet Rule!10260))

(assert (=> d!883976 (= lt!1089785 (select (content!4904 rules!2135) (get!11532 lt!1089052)))))

(declare-fun e!2007071 () Bool)

(assert (=> d!883976 (= lt!1089785 e!2007071)))

(declare-fun res!1310433 () Bool)

(assert (=> d!883976 (=> (not res!1310433) (not e!2007071))))

(assert (=> d!883976 (= res!1310433 ((_ is Cons!36206) rules!2135))))

(assert (=> d!883976 (= (contains!6483 rules!2135 (get!11532 lt!1089052)) lt!1089785)))

(declare-fun b!3219053 () Bool)

(declare-fun e!2007070 () Bool)

(assert (=> b!3219053 (= e!2007071 e!2007070)))

(declare-fun res!1310432 () Bool)

(assert (=> b!3219053 (=> res!1310432 e!2007070)))

(assert (=> b!3219053 (= res!1310432 (= (h!41626 rules!2135) (get!11532 lt!1089052)))))

(declare-fun b!3219054 () Bool)

(assert (=> b!3219054 (= e!2007070 (contains!6483 (t!239821 rules!2135) (get!11532 lt!1089052)))))

(assert (= (and d!883976 res!1310433) b!3219053))

(assert (= (and b!3219053 (not res!1310432)) b!3219054))

(declare-fun m!3494185 () Bool)

(assert (=> d!883976 m!3494185))

(assert (=> d!883976 m!3491823))

(declare-fun m!3494187 () Bool)

(assert (=> d!883976 m!3494187))

(assert (=> b!3219054 m!3491823))

(declare-fun m!3494189 () Bool)

(assert (=> b!3219054 m!3494189))

(assert (=> b!3217578 d!883976))

(declare-fun d!883978 () Bool)

(assert (=> d!883978 (= (get!11532 lt!1089052) (v!35732 lt!1089052))))

(assert (=> b!3217578 d!883978))

(assert (=> d!882930 d!883102))

(assert (=> d!882930 d!883108))

(assert (=> d!882930 d!882920))

(declare-fun d!883980 () Bool)

(assert (=> d!883980 (= (maxPrefixOneRule!1598 thiss!18206 (rule!7682 (h!41627 (t!239822 tokens!494))) lt!1088680) (Some!7163 (tuple2!35625 (Token!9827 (apply!8221 (transformation!5230 (rule!7682 (h!41627 (t!239822 tokens!494)))) (seqFromList!3531 lt!1088680)) (rule!7682 (h!41627 (t!239822 tokens!494))) (size!27294 lt!1088680) lt!1088680) Nil!36205)))))

(assert (=> d!883980 true))

(declare-fun _$59!402 () Unit!50722)

(assert (=> d!883980 (= (choose!18790 thiss!18206 rules!2135 lt!1088680 lt!1088680 Nil!36205 (rule!7682 (h!41627 (t!239822 tokens!494)))) _$59!402)))

(declare-fun bs!542429 () Bool)

(assert (= bs!542429 d!883980))

(assert (=> bs!542429 m!3490415))

(assert (=> bs!542429 m!3490365))

(assert (=> bs!542429 m!3490365))

(assert (=> bs!542429 m!3490395))

(assert (=> bs!542429 m!3490399))

(assert (=> d!882930 d!883980))

(assert (=> d!882930 d!883176))

(assert (=> d!882930 d!883164))

(declare-fun d!883982 () Bool)

(assert (=> d!883982 (= (isEmpty!20311 lt!1089052) (not ((_ is Some!7162) lt!1089052)))))

(assert (=> d!883118 d!883982))

(assert (=> d!883118 d!882902))

(declare-fun bs!542430 () Bool)

(declare-fun d!883984 () Bool)

(assert (= bs!542430 (and d!883984 d!883408)))

(declare-fun lambda!117690 () Int)

(assert (=> bs!542430 (= (= (toValue!7322 (transformation!5230 (h!41626 rules!2135))) (toValue!7322 (transformation!5230 (rule!7682 separatorToken!241)))) (= lambda!117690 lambda!117673))))

(assert (=> d!883984 true))

(assert (=> d!883984 (< (dynLambda!14645 order!18525 (toValue!7322 (transformation!5230 (h!41626 rules!2135)))) (dynLambda!14654 order!18533 lambda!117690))))

(assert (=> d!883984 (= (equivClasses!2057 (toChars!7181 (transformation!5230 (h!41626 rules!2135))) (toValue!7322 (transformation!5230 (h!41626 rules!2135)))) (Forall2!867 lambda!117690))))

(declare-fun bs!542431 () Bool)

(assert (= bs!542431 d!883984))

(declare-fun m!3494191 () Bool)

(assert (=> bs!542431 m!3494191))

(assert (=> b!3217065 d!883984))

(declare-fun d!883986 () Bool)

(assert (=> d!883986 (= (tail!5219 (drop!1864 lt!1089066 0)) (drop!1864 lt!1089066 (+ 0 1)))))

(declare-fun lt!1089786 () Unit!50722)

(assert (=> d!883986 (= lt!1089786 (choose!18799 lt!1089066 0))))

(declare-fun e!2007072 () Bool)

(assert (=> d!883986 e!2007072))

(declare-fun res!1310434 () Bool)

(assert (=> d!883986 (=> (not res!1310434) (not e!2007072))))

(assert (=> d!883986 (= res!1310434 (>= 0 0))))

(assert (=> d!883986 (= (lemmaDropTail!924 lt!1089066 0) lt!1089786)))

(declare-fun b!3219055 () Bool)

(assert (=> b!3219055 (= e!2007072 (< 0 (size!27299 lt!1089066)))))

(assert (= (and d!883986 res!1310434) b!3219055))

(assert (=> d!883986 m!3491941))

(assert (=> d!883986 m!3491941))

(assert (=> d!883986 m!3491953))

(assert (=> d!883986 m!3491949))

(declare-fun m!3494193 () Bool)

(assert (=> d!883986 m!3494193))

(declare-fun m!3494195 () Bool)

(assert (=> b!3219055 m!3494195))

(assert (=> b!3217677 d!883986))

(declare-fun d!883988 () Bool)

(declare-fun lt!1089792 () BalanceConc!21284)

(assert (=> d!883988 (= (list!12887 lt!1089792) (printListTailRec!564 thiss!18206 (dropList!1081 lt!1088685 (+ 0 1)) (list!12887 (++!8699 (BalanceConc!21285 Empty!10835) (charsOf!3246 (apply!8222 lt!1088685 0))))))))

(declare-fun e!2007074 () BalanceConc!21284)

(assert (=> d!883988 (= lt!1089792 e!2007074)))

(declare-fun c!541300 () Bool)

(assert (=> d!883988 (= c!541300 (>= (+ 0 1) (size!27295 lt!1088685)))))

(declare-fun e!2007073 () Bool)

(assert (=> d!883988 e!2007073))

(declare-fun res!1310435 () Bool)

(assert (=> d!883988 (=> (not res!1310435) (not e!2007073))))

(assert (=> d!883988 (= res!1310435 (>= (+ 0 1) 0))))

(assert (=> d!883988 (= (printTailRec!1316 thiss!18206 lt!1088685 (+ 0 1) (++!8699 (BalanceConc!21285 Empty!10835) (charsOf!3246 (apply!8222 lt!1088685 0)))) lt!1089792)))

(declare-fun b!3219056 () Bool)

(assert (=> b!3219056 (= e!2007073 (<= (+ 0 1) (size!27295 lt!1088685)))))

(declare-fun b!3219057 () Bool)

(assert (=> b!3219057 (= e!2007074 (++!8699 (BalanceConc!21285 Empty!10835) (charsOf!3246 (apply!8222 lt!1088685 0))))))

(declare-fun b!3219058 () Bool)

(assert (=> b!3219058 (= e!2007074 (printTailRec!1316 thiss!18206 lt!1088685 (+ 0 1 1) (++!8699 (++!8699 (BalanceConc!21285 Empty!10835) (charsOf!3246 (apply!8222 lt!1088685 0))) (charsOf!3246 (apply!8222 lt!1088685 (+ 0 1))))))))

(declare-fun lt!1089788 () List!36331)

(assert (=> b!3219058 (= lt!1089788 (list!12890 lt!1088685))))

(declare-fun lt!1089793 () Unit!50722)

(assert (=> b!3219058 (= lt!1089793 (lemmaDropApply!1040 lt!1089788 (+ 0 1)))))

(assert (=> b!3219058 (= (head!7054 (drop!1864 lt!1089788 (+ 0 1))) (apply!8223 lt!1089788 (+ 0 1)))))

(declare-fun lt!1089791 () Unit!50722)

(assert (=> b!3219058 (= lt!1089791 lt!1089793)))

(declare-fun lt!1089789 () List!36331)

(assert (=> b!3219058 (= lt!1089789 (list!12890 lt!1088685))))

(declare-fun lt!1089787 () Unit!50722)

(assert (=> b!3219058 (= lt!1089787 (lemmaDropTail!924 lt!1089789 (+ 0 1)))))

(assert (=> b!3219058 (= (tail!5219 (drop!1864 lt!1089789 (+ 0 1))) (drop!1864 lt!1089789 (+ 0 1 1)))))

(declare-fun lt!1089790 () Unit!50722)

(assert (=> b!3219058 (= lt!1089790 lt!1089787)))

(assert (= (and d!883988 res!1310435) b!3219056))

(assert (= (and d!883988 c!541300) b!3219057))

(assert (= (and d!883988 (not c!541300)) b!3219058))

(declare-fun m!3494197 () Bool)

(assert (=> d!883988 m!3494197))

(assert (=> d!883988 m!3491925))

(assert (=> d!883988 m!3494197))

(declare-fun m!3494199 () Bool)

(assert (=> d!883988 m!3494199))

(declare-fun m!3494201 () Bool)

(assert (=> d!883988 m!3494201))

(assert (=> d!883988 m!3491945))

(assert (=> d!883988 m!3494199))

(declare-fun m!3494203 () Bool)

(assert (=> d!883988 m!3494203))

(assert (=> b!3219056 m!3491925))

(declare-fun m!3494205 () Bool)

(assert (=> b!3219058 m!3494205))

(declare-fun m!3494207 () Bool)

(assert (=> b!3219058 m!3494207))

(declare-fun m!3494209 () Bool)

(assert (=> b!3219058 m!3494209))

(declare-fun m!3494211 () Bool)

(assert (=> b!3219058 m!3494211))

(assert (=> b!3219058 m!3491687))

(assert (=> b!3219058 m!3494209))

(declare-fun m!3494213 () Bool)

(assert (=> b!3219058 m!3494213))

(declare-fun m!3494215 () Bool)

(assert (=> b!3219058 m!3494215))

(declare-fun m!3494217 () Bool)

(assert (=> b!3219058 m!3494217))

(assert (=> b!3219058 m!3494205))

(declare-fun m!3494219 () Bool)

(assert (=> b!3219058 m!3494219))

(declare-fun m!3494221 () Bool)

(assert (=> b!3219058 m!3494221))

(assert (=> b!3219058 m!3491945))

(assert (=> b!3219058 m!3494213))

(assert (=> b!3219058 m!3494219))

(declare-fun m!3494223 () Bool)

(assert (=> b!3219058 m!3494223))

(declare-fun m!3494225 () Bool)

(assert (=> b!3219058 m!3494225))

(assert (=> b!3219058 m!3494215))

(declare-fun m!3494227 () Bool)

(assert (=> b!3219058 m!3494227))

(assert (=> b!3217677 d!883988))

(declare-fun d!883990 () Bool)

(declare-fun lt!1089794 () Token!9826)

(assert (=> d!883990 (contains!6482 lt!1089065 lt!1089794)))

(declare-fun e!2007075 () Token!9826)

(assert (=> d!883990 (= lt!1089794 e!2007075)))

(declare-fun c!541301 () Bool)

(assert (=> d!883990 (= c!541301 (= 0 0))))

(declare-fun e!2007076 () Bool)

(assert (=> d!883990 e!2007076))

(declare-fun res!1310436 () Bool)

(assert (=> d!883990 (=> (not res!1310436) (not e!2007076))))

(assert (=> d!883990 (= res!1310436 (<= 0 0))))

(assert (=> d!883990 (= (apply!8223 lt!1089065 0) lt!1089794)))

(declare-fun b!3219059 () Bool)

(assert (=> b!3219059 (= e!2007076 (< 0 (size!27299 lt!1089065)))))

(declare-fun b!3219060 () Bool)

(assert (=> b!3219060 (= e!2007075 (head!7054 lt!1089065))))

(declare-fun b!3219061 () Bool)

(assert (=> b!3219061 (= e!2007075 (apply!8223 (tail!5219 lt!1089065) (- 0 1)))))

(assert (= (and d!883990 res!1310436) b!3219059))

(assert (= (and d!883990 c!541301) b!3219060))

(assert (= (and d!883990 (not c!541301)) b!3219061))

(declare-fun m!3494229 () Bool)

(assert (=> d!883990 m!3494229))

(declare-fun m!3494231 () Bool)

(assert (=> b!3219059 m!3494231))

(declare-fun m!3494233 () Bool)

(assert (=> b!3219060 m!3494233))

(declare-fun m!3494235 () Bool)

(assert (=> b!3219061 m!3494235))

(assert (=> b!3219061 m!3494235))

(declare-fun m!3494237 () Bool)

(assert (=> b!3219061 m!3494237))

(assert (=> b!3217677 d!883990))

(declare-fun d!883992 () Bool)

(declare-fun lt!1089795 () Token!9826)

(assert (=> d!883992 (= lt!1089795 (apply!8223 (list!12890 lt!1088685) 0))))

(assert (=> d!883992 (= lt!1089795 (apply!8225 (c!540718 lt!1088685) 0))))

(declare-fun e!2007077 () Bool)

(assert (=> d!883992 e!2007077))

(declare-fun res!1310437 () Bool)

(assert (=> d!883992 (=> (not res!1310437) (not e!2007077))))

(assert (=> d!883992 (= res!1310437 (<= 0 0))))

(assert (=> d!883992 (= (apply!8222 lt!1088685 0) lt!1089795)))

(declare-fun b!3219062 () Bool)

(assert (=> b!3219062 (= e!2007077 (< 0 (size!27295 lt!1088685)))))

(assert (= (and d!883992 res!1310437) b!3219062))

(assert (=> d!883992 m!3491687))

(assert (=> d!883992 m!3491687))

(declare-fun m!3494239 () Bool)

(assert (=> d!883992 m!3494239))

(declare-fun m!3494241 () Bool)

(assert (=> d!883992 m!3494241))

(assert (=> b!3219062 m!3491925))

(assert (=> b!3217677 d!883992))

(declare-fun d!883994 () Bool)

(assert (=> d!883994 (= (tail!5219 (drop!1864 lt!1089066 0)) (t!239822 (drop!1864 lt!1089066 0)))))

(assert (=> b!3217677 d!883994))

(declare-fun b!3219063 () Bool)

(declare-fun e!2007081 () Int)

(declare-fun call!233050 () Int)

(assert (=> b!3219063 (= e!2007081 (- call!233050 0))))

(declare-fun b!3219064 () Bool)

(declare-fun e!2007079 () Int)

(assert (=> b!3219064 (= e!2007079 call!233050)))

(declare-fun d!883996 () Bool)

(declare-fun e!2007078 () Bool)

(assert (=> d!883996 e!2007078))

(declare-fun res!1310438 () Bool)

(assert (=> d!883996 (=> (not res!1310438) (not e!2007078))))

(declare-fun lt!1089796 () List!36331)

(assert (=> d!883996 (= res!1310438 (= ((_ map implies) (content!4902 lt!1089796) (content!4902 lt!1089065)) ((as const (InoxSet Token!9826)) true)))))

(declare-fun e!2007080 () List!36331)

(assert (=> d!883996 (= lt!1089796 e!2007080)))

(declare-fun c!541305 () Bool)

(assert (=> d!883996 (= c!541305 ((_ is Nil!36207) lt!1089065))))

(assert (=> d!883996 (= (drop!1864 lt!1089065 0) lt!1089796)))

(declare-fun b!3219065 () Bool)

(declare-fun e!2007082 () List!36331)

(assert (=> b!3219065 (= e!2007080 e!2007082)))

(declare-fun c!541302 () Bool)

(assert (=> b!3219065 (= c!541302 (<= 0 0))))

(declare-fun b!3219066 () Bool)

(assert (=> b!3219066 (= e!2007078 (= (size!27299 lt!1089796) e!2007079))))

(declare-fun c!541303 () Bool)

(assert (=> b!3219066 (= c!541303 (<= 0 0))))

(declare-fun b!3219067 () Bool)

(assert (=> b!3219067 (= e!2007082 lt!1089065)))

(declare-fun b!3219068 () Bool)

(assert (=> b!3219068 (= e!2007082 (drop!1864 (t!239822 lt!1089065) (- 0 1)))))

(declare-fun b!3219069 () Bool)

(assert (=> b!3219069 (= e!2007079 e!2007081)))

(declare-fun c!541304 () Bool)

(assert (=> b!3219069 (= c!541304 (>= 0 call!233050))))

(declare-fun bm!233045 () Bool)

(assert (=> bm!233045 (= call!233050 (size!27299 lt!1089065))))

(declare-fun b!3219070 () Bool)

(assert (=> b!3219070 (= e!2007081 0)))

(declare-fun b!3219071 () Bool)

(assert (=> b!3219071 (= e!2007080 Nil!36207)))

(assert (= (and d!883996 c!541305) b!3219071))

(assert (= (and d!883996 (not c!541305)) b!3219065))

(assert (= (and b!3219065 c!541302) b!3219067))

(assert (= (and b!3219065 (not c!541302)) b!3219068))

(assert (= (and d!883996 res!1310438) b!3219066))

(assert (= (and b!3219066 c!541303) b!3219064))

(assert (= (and b!3219066 (not c!541303)) b!3219069))

(assert (= (and b!3219069 c!541304) b!3219070))

(assert (= (and b!3219069 (not c!541304)) b!3219063))

(assert (= (or b!3219064 b!3219069 b!3219063) bm!233045))

(declare-fun m!3494243 () Bool)

(assert (=> d!883996 m!3494243))

(declare-fun m!3494245 () Bool)

(assert (=> d!883996 m!3494245))

(declare-fun m!3494247 () Bool)

(assert (=> b!3219066 m!3494247))

(declare-fun m!3494249 () Bool)

(assert (=> b!3219068 m!3494249))

(assert (=> bm!233045 m!3494231))

(assert (=> b!3217677 d!883996))

(declare-fun d!883998 () Bool)

(assert (=> d!883998 (= (head!7054 (drop!1864 lt!1089065 0)) (h!41627 (drop!1864 lt!1089065 0)))))

(assert (=> b!3217677 d!883998))

(declare-fun b!3219072 () Bool)

(declare-fun e!2007086 () Int)

(declare-fun call!233051 () Int)

(assert (=> b!3219072 (= e!2007086 (- call!233051 (+ 0 1)))))

(declare-fun b!3219073 () Bool)

(declare-fun e!2007084 () Int)

(assert (=> b!3219073 (= e!2007084 call!233051)))

(declare-fun d!884000 () Bool)

(declare-fun e!2007083 () Bool)

(assert (=> d!884000 e!2007083))

(declare-fun res!1310439 () Bool)

(assert (=> d!884000 (=> (not res!1310439) (not e!2007083))))

(declare-fun lt!1089797 () List!36331)

(assert (=> d!884000 (= res!1310439 (= ((_ map implies) (content!4902 lt!1089797) (content!4902 lt!1089066)) ((as const (InoxSet Token!9826)) true)))))

(declare-fun e!2007085 () List!36331)

(assert (=> d!884000 (= lt!1089797 e!2007085)))

(declare-fun c!541309 () Bool)

(assert (=> d!884000 (= c!541309 ((_ is Nil!36207) lt!1089066))))

(assert (=> d!884000 (= (drop!1864 lt!1089066 (+ 0 1)) lt!1089797)))

(declare-fun b!3219074 () Bool)

(declare-fun e!2007087 () List!36331)

(assert (=> b!3219074 (= e!2007085 e!2007087)))

(declare-fun c!541306 () Bool)

(assert (=> b!3219074 (= c!541306 (<= (+ 0 1) 0))))

(declare-fun b!3219075 () Bool)

(assert (=> b!3219075 (= e!2007083 (= (size!27299 lt!1089797) e!2007084))))

(declare-fun c!541307 () Bool)

(assert (=> b!3219075 (= c!541307 (<= (+ 0 1) 0))))

(declare-fun b!3219076 () Bool)

(assert (=> b!3219076 (= e!2007087 lt!1089066)))

(declare-fun b!3219077 () Bool)

(assert (=> b!3219077 (= e!2007087 (drop!1864 (t!239822 lt!1089066) (- (+ 0 1) 1)))))

(declare-fun b!3219078 () Bool)

(assert (=> b!3219078 (= e!2007084 e!2007086)))

(declare-fun c!541308 () Bool)

(assert (=> b!3219078 (= c!541308 (>= (+ 0 1) call!233051))))

(declare-fun bm!233046 () Bool)

(assert (=> bm!233046 (= call!233051 (size!27299 lt!1089066))))

(declare-fun b!3219079 () Bool)

(assert (=> b!3219079 (= e!2007086 0)))

(declare-fun b!3219080 () Bool)

(assert (=> b!3219080 (= e!2007085 Nil!36207)))

(assert (= (and d!884000 c!541309) b!3219080))

(assert (= (and d!884000 (not c!541309)) b!3219074))

(assert (= (and b!3219074 c!541306) b!3219076))

(assert (= (and b!3219074 (not c!541306)) b!3219077))

(assert (= (and d!884000 res!1310439) b!3219075))

(assert (= (and b!3219075 c!541307) b!3219073))

(assert (= (and b!3219075 (not c!541307)) b!3219078))

(assert (= (and b!3219078 c!541308) b!3219079))

(assert (= (and b!3219078 (not c!541308)) b!3219072))

(assert (= (or b!3219073 b!3219078 b!3219072) bm!233046))

(declare-fun m!3494251 () Bool)

(assert (=> d!884000 m!3494251))

(declare-fun m!3494253 () Bool)

(assert (=> d!884000 m!3494253))

(declare-fun m!3494255 () Bool)

(assert (=> b!3219075 m!3494255))

(declare-fun m!3494257 () Bool)

(assert (=> b!3219077 m!3494257))

(assert (=> bm!233046 m!3494195))

(assert (=> b!3217677 d!884000))

(assert (=> b!3217677 d!883382))

(declare-fun d!884002 () Bool)

(assert (=> d!884002 (= (head!7054 (drop!1864 lt!1089065 0)) (apply!8223 lt!1089065 0))))

(declare-fun lt!1089798 () Unit!50722)

(assert (=> d!884002 (= lt!1089798 (choose!18798 lt!1089065 0))))

(declare-fun e!2007088 () Bool)

(assert (=> d!884002 e!2007088))

(declare-fun res!1310440 () Bool)

(assert (=> d!884002 (=> (not res!1310440) (not e!2007088))))

(assert (=> d!884002 (= res!1310440 (>= 0 0))))

(assert (=> d!884002 (= (lemmaDropApply!1040 lt!1089065 0) lt!1089798)))

(declare-fun b!3219081 () Bool)

(assert (=> b!3219081 (= e!2007088 (< 0 (size!27299 lt!1089065)))))

(assert (= (and d!884002 res!1310440) b!3219081))

(assert (=> d!884002 m!3491931))

(assert (=> d!884002 m!3491931))

(assert (=> d!884002 m!3491933))

(assert (=> d!884002 m!3491951))

(declare-fun m!3494259 () Bool)

(assert (=> d!884002 m!3494259))

(assert (=> b!3219081 m!3494231))

(assert (=> b!3217677 d!884002))

(declare-fun d!884004 () Bool)

(declare-fun lt!1089799 () BalanceConc!21284)

(assert (=> d!884004 (= (list!12887 lt!1089799) (originalCharacters!5944 (apply!8222 lt!1088685 0)))))

(assert (=> d!884004 (= lt!1089799 (dynLambda!14648 (toChars!7181 (transformation!5230 (rule!7682 (apply!8222 lt!1088685 0)))) (value!169515 (apply!8222 lt!1088685 0))))))

(assert (=> d!884004 (= (charsOf!3246 (apply!8222 lt!1088685 0)) lt!1089799)))

(declare-fun b_lambda!88499 () Bool)

(assert (=> (not b_lambda!88499) (not d!884004)))

(declare-fun tb!158997 () Bool)

(declare-fun t!240103 () Bool)

(assert (=> (and b!3216773 (= (toChars!7181 (transformation!5230 (h!41626 rules!2135))) (toChars!7181 (transformation!5230 (rule!7682 (apply!8222 lt!1088685 0))))) t!240103) tb!158997))

(declare-fun b!3219082 () Bool)

(declare-fun e!2007089 () Bool)

(declare-fun tp!1014351 () Bool)

(assert (=> b!3219082 (= e!2007089 (and (inv!49077 (c!540717 (dynLambda!14648 (toChars!7181 (transformation!5230 (rule!7682 (apply!8222 lt!1088685 0)))) (value!169515 (apply!8222 lt!1088685 0))))) tp!1014351))))

(declare-fun result!201418 () Bool)

(assert (=> tb!158997 (= result!201418 (and (inv!49078 (dynLambda!14648 (toChars!7181 (transformation!5230 (rule!7682 (apply!8222 lt!1088685 0)))) (value!169515 (apply!8222 lt!1088685 0)))) e!2007089))))

(assert (= tb!158997 b!3219082))

(declare-fun m!3494261 () Bool)

(assert (=> b!3219082 m!3494261))

(declare-fun m!3494263 () Bool)

(assert (=> tb!158997 m!3494263))

(assert (=> d!884004 t!240103))

(declare-fun b_and!215067 () Bool)

(assert (= b_and!215039 (and (=> t!240103 result!201418) b_and!215067)))

(declare-fun t!240105 () Bool)

(declare-fun tb!158999 () Bool)

(assert (=> (and b!3217774 (= (toChars!7181 (transformation!5230 (rule!7682 (h!41627 (t!239822 tokens!494))))) (toChars!7181 (transformation!5230 (rule!7682 (apply!8222 lt!1088685 0))))) t!240105) tb!158999))

(declare-fun result!201420 () Bool)

(assert (= result!201420 result!201418))

(assert (=> d!884004 t!240105))

(declare-fun b_and!215069 () Bool)

(assert (= b_and!215045 (and (=> t!240105 result!201420) b_and!215069)))

(declare-fun t!240107 () Bool)

(declare-fun tb!159001 () Bool)

(assert (=> (and b!3216775 (= (toChars!7181 (transformation!5230 (rule!7682 (h!41627 tokens!494)))) (toChars!7181 (transformation!5230 (rule!7682 (apply!8222 lt!1088685 0))))) t!240107) tb!159001))

(declare-fun result!201422 () Bool)

(assert (= result!201422 result!201418))

(assert (=> d!884004 t!240107))

(declare-fun b_and!215071 () Bool)

(assert (= b_and!215037 (and (=> t!240107 result!201422) b_and!215071)))

(declare-fun tb!159003 () Bool)

(declare-fun t!240109 () Bool)

(assert (=> (and b!3216778 (= (toChars!7181 (transformation!5230 (rule!7682 separatorToken!241))) (toChars!7181 (transformation!5230 (rule!7682 (apply!8222 lt!1088685 0))))) t!240109) tb!159003))

(declare-fun result!201424 () Bool)

(assert (= result!201424 result!201418))

(assert (=> d!884004 t!240109))

(declare-fun b_and!215073 () Bool)

(assert (= b_and!215043 (and (=> t!240109 result!201424) b_and!215073)))

(declare-fun tb!159005 () Bool)

(declare-fun t!240111 () Bool)

(assert (=> (and b!3217757 (= (toChars!7181 (transformation!5230 (h!41626 (t!239821 rules!2135)))) (toChars!7181 (transformation!5230 (rule!7682 (apply!8222 lt!1088685 0))))) t!240111) tb!159005))

(declare-fun result!201426 () Bool)

(assert (= result!201426 result!201418))

(assert (=> d!884004 t!240111))

(declare-fun b_and!215075 () Bool)

(assert (= b_and!215041 (and (=> t!240111 result!201426) b_and!215075)))

(declare-fun m!3494265 () Bool)

(assert (=> d!884004 m!3494265))

(declare-fun m!3494267 () Bool)

(assert (=> d!884004 m!3494267))

(assert (=> b!3217677 d!884004))

(declare-fun b!3219083 () Bool)

(declare-fun e!2007093 () Int)

(declare-fun call!233052 () Int)

(assert (=> b!3219083 (= e!2007093 (- call!233052 0))))

(declare-fun b!3219084 () Bool)

(declare-fun e!2007091 () Int)

(assert (=> b!3219084 (= e!2007091 call!233052)))

(declare-fun d!884006 () Bool)

(declare-fun e!2007090 () Bool)

(assert (=> d!884006 e!2007090))

(declare-fun res!1310441 () Bool)

(assert (=> d!884006 (=> (not res!1310441) (not e!2007090))))

(declare-fun lt!1089800 () List!36331)

(assert (=> d!884006 (= res!1310441 (= ((_ map implies) (content!4902 lt!1089800) (content!4902 lt!1089066)) ((as const (InoxSet Token!9826)) true)))))

(declare-fun e!2007092 () List!36331)

(assert (=> d!884006 (= lt!1089800 e!2007092)))

(declare-fun c!541313 () Bool)

(assert (=> d!884006 (= c!541313 ((_ is Nil!36207) lt!1089066))))

(assert (=> d!884006 (= (drop!1864 lt!1089066 0) lt!1089800)))

(declare-fun b!3219085 () Bool)

(declare-fun e!2007094 () List!36331)

(assert (=> b!3219085 (= e!2007092 e!2007094)))

(declare-fun c!541310 () Bool)

(assert (=> b!3219085 (= c!541310 (<= 0 0))))

(declare-fun b!3219086 () Bool)

(assert (=> b!3219086 (= e!2007090 (= (size!27299 lt!1089800) e!2007091))))

(declare-fun c!541311 () Bool)

(assert (=> b!3219086 (= c!541311 (<= 0 0))))

(declare-fun b!3219087 () Bool)

(assert (=> b!3219087 (= e!2007094 lt!1089066)))

(declare-fun b!3219088 () Bool)

(assert (=> b!3219088 (= e!2007094 (drop!1864 (t!239822 lt!1089066) (- 0 1)))))

(declare-fun b!3219089 () Bool)

(assert (=> b!3219089 (= e!2007091 e!2007093)))

(declare-fun c!541312 () Bool)

(assert (=> b!3219089 (= c!541312 (>= 0 call!233052))))

(declare-fun bm!233047 () Bool)

(assert (=> bm!233047 (= call!233052 (size!27299 lt!1089066))))

(declare-fun b!3219090 () Bool)

(assert (=> b!3219090 (= e!2007093 0)))

(declare-fun b!3219091 () Bool)

(assert (=> b!3219091 (= e!2007092 Nil!36207)))

(assert (= (and d!884006 c!541313) b!3219091))

(assert (= (and d!884006 (not c!541313)) b!3219085))

(assert (= (and b!3219085 c!541310) b!3219087))

(assert (= (and b!3219085 (not c!541310)) b!3219088))

(assert (= (and d!884006 res!1310441) b!3219086))

(assert (= (and b!3219086 c!541311) b!3219084))

(assert (= (and b!3219086 (not c!541311)) b!3219089))

(assert (= (and b!3219089 c!541312) b!3219090))

(assert (= (and b!3219089 (not c!541312)) b!3219083))

(assert (= (or b!3219084 b!3219089 b!3219083) bm!233047))

(declare-fun m!3494269 () Bool)

(assert (=> d!884006 m!3494269))

(assert (=> d!884006 m!3494253))

(declare-fun m!3494271 () Bool)

(assert (=> b!3219086 m!3494271))

(declare-fun m!3494273 () Bool)

(assert (=> b!3219088 m!3494273))

(assert (=> bm!233047 m!3494195))

(assert (=> b!3217677 d!884006))

(declare-fun d!884008 () Bool)

(declare-fun e!2007095 () Bool)

(assert (=> d!884008 e!2007095))

(declare-fun res!1310442 () Bool)

(assert (=> d!884008 (=> (not res!1310442) (not e!2007095))))

(assert (=> d!884008 (= res!1310442 (appendAssocInst!736 (c!540717 (BalanceConc!21285 Empty!10835)) (c!540717 (charsOf!3246 (apply!8222 lt!1088685 0)))))))

(declare-fun lt!1089801 () BalanceConc!21284)

(assert (=> d!884008 (= lt!1089801 (BalanceConc!21285 (++!8701 (c!540717 (BalanceConc!21285 Empty!10835)) (c!540717 (charsOf!3246 (apply!8222 lt!1088685 0))))))))

(assert (=> d!884008 (= (++!8699 (BalanceConc!21285 Empty!10835) (charsOf!3246 (apply!8222 lt!1088685 0))) lt!1089801)))

(declare-fun b!3219095 () Bool)

(assert (=> b!3219095 (= e!2007095 (= (list!12887 lt!1089801) (++!8698 (list!12887 (BalanceConc!21285 Empty!10835)) (list!12887 (charsOf!3246 (apply!8222 lt!1088685 0))))))))

(declare-fun b!3219092 () Bool)

(declare-fun res!1310444 () Bool)

(assert (=> b!3219092 (=> (not res!1310444) (not e!2007095))))

(assert (=> b!3219092 (= res!1310444 (isBalanced!3227 (++!8701 (c!540717 (BalanceConc!21285 Empty!10835)) (c!540717 (charsOf!3246 (apply!8222 lt!1088685 0))))))))

(declare-fun b!3219093 () Bool)

(declare-fun res!1310445 () Bool)

(assert (=> b!3219093 (=> (not res!1310445) (not e!2007095))))

(assert (=> b!3219093 (= res!1310445 (<= (height!1563 (++!8701 (c!540717 (BalanceConc!21285 Empty!10835)) (c!540717 (charsOf!3246 (apply!8222 lt!1088685 0))))) (+ (max!0 (height!1563 (c!540717 (BalanceConc!21285 Empty!10835))) (height!1563 (c!540717 (charsOf!3246 (apply!8222 lt!1088685 0))))) 1)))))

(declare-fun b!3219094 () Bool)

(declare-fun res!1310443 () Bool)

(assert (=> b!3219094 (=> (not res!1310443) (not e!2007095))))

(assert (=> b!3219094 (= res!1310443 (>= (height!1563 (++!8701 (c!540717 (BalanceConc!21285 Empty!10835)) (c!540717 (charsOf!3246 (apply!8222 lt!1088685 0))))) (max!0 (height!1563 (c!540717 (BalanceConc!21285 Empty!10835))) (height!1563 (c!540717 (charsOf!3246 (apply!8222 lt!1088685 0)))))))))

(assert (= (and d!884008 res!1310442) b!3219092))

(assert (= (and b!3219092 res!1310444) b!3219093))

(assert (= (and b!3219093 res!1310445) b!3219094))

(assert (= (and b!3219094 res!1310443) b!3219095))

(declare-fun m!3494275 () Bool)

(assert (=> b!3219095 m!3494275))

(assert (=> b!3219095 m!3490675))

(assert (=> b!3219095 m!3491939))

(declare-fun m!3494277 () Bool)

(assert (=> b!3219095 m!3494277))

(assert (=> b!3219095 m!3490675))

(assert (=> b!3219095 m!3494277))

(declare-fun m!3494279 () Bool)

(assert (=> b!3219095 m!3494279))

(declare-fun m!3494281 () Bool)

(assert (=> b!3219093 m!3494281))

(assert (=> b!3219093 m!3492865))

(declare-fun m!3494283 () Bool)

(assert (=> b!3219093 m!3494283))

(declare-fun m!3494285 () Bool)

(assert (=> b!3219093 m!3494285))

(assert (=> b!3219093 m!3494283))

(assert (=> b!3219093 m!3492865))

(assert (=> b!3219093 m!3494281))

(declare-fun m!3494287 () Bool)

(assert (=> b!3219093 m!3494287))

(assert (=> b!3219094 m!3494281))

(assert (=> b!3219094 m!3492865))

(assert (=> b!3219094 m!3494283))

(assert (=> b!3219094 m!3494285))

(assert (=> b!3219094 m!3494283))

(assert (=> b!3219094 m!3492865))

(assert (=> b!3219094 m!3494281))

(assert (=> b!3219094 m!3494287))

(declare-fun m!3494289 () Bool)

(assert (=> d!884008 m!3494289))

(assert (=> d!884008 m!3494283))

(assert (=> b!3219092 m!3494283))

(assert (=> b!3219092 m!3494283))

(declare-fun m!3494291 () Bool)

(assert (=> b!3219092 m!3494291))

(assert (=> b!3217677 d!884008))

(declare-fun d!884010 () Bool)

(declare-fun c!541314 () Bool)

(assert (=> d!884010 (= c!541314 ((_ is Nil!36205) lt!1089094))))

(declare-fun e!2007096 () (InoxSet C!20164))

(assert (=> d!884010 (= (content!4899 lt!1089094) e!2007096)))

(declare-fun b!3219096 () Bool)

(assert (=> b!3219096 (= e!2007096 ((as const (Array C!20164 Bool)) false))))

(declare-fun b!3219097 () Bool)

(assert (=> b!3219097 (= e!2007096 ((_ map or) (store ((as const (Array C!20164 Bool)) false) (h!41625 lt!1089094) true) (content!4899 (t!239820 lt!1089094))))))

(assert (= (and d!884010 c!541314) b!3219096))

(assert (= (and d!884010 (not c!541314)) b!3219097))

(declare-fun m!3494293 () Bool)

(assert (=> b!3219097 m!3494293))

(declare-fun m!3494295 () Bool)

(assert (=> b!3219097 m!3494295))

(assert (=> d!883196 d!884010))

(declare-fun d!884012 () Bool)

(declare-fun c!541315 () Bool)

(assert (=> d!884012 (= c!541315 ((_ is Nil!36205) (++!8698 lt!1088680 lt!1088705)))))

(declare-fun e!2007097 () (InoxSet C!20164))

(assert (=> d!884012 (= (content!4899 (++!8698 lt!1088680 lt!1088705)) e!2007097)))

(declare-fun b!3219098 () Bool)

(assert (=> b!3219098 (= e!2007097 ((as const (Array C!20164 Bool)) false))))

(declare-fun b!3219099 () Bool)

(assert (=> b!3219099 (= e!2007097 ((_ map or) (store ((as const (Array C!20164 Bool)) false) (h!41625 (++!8698 lt!1088680 lt!1088705)) true) (content!4899 (t!239820 (++!8698 lt!1088680 lt!1088705)))))))

(assert (= (and d!884012 c!541315) b!3219098))

(assert (= (and d!884012 (not c!541315)) b!3219099))

(declare-fun m!3494297 () Bool)

(assert (=> b!3219099 m!3494297))

(declare-fun m!3494299 () Bool)

(assert (=> b!3219099 m!3494299))

(assert (=> d!883196 d!884012))

(declare-fun d!884014 () Bool)

(declare-fun c!541316 () Bool)

(assert (=> d!884014 (= c!541316 ((_ is Nil!36205) (printWithSeparatorTokenList!164 thiss!18206 (t!239822 (t!239822 tokens!494)) separatorToken!241)))))

(declare-fun e!2007098 () (InoxSet C!20164))

(assert (=> d!884014 (= (content!4899 (printWithSeparatorTokenList!164 thiss!18206 (t!239822 (t!239822 tokens!494)) separatorToken!241)) e!2007098)))

(declare-fun b!3219100 () Bool)

(assert (=> b!3219100 (= e!2007098 ((as const (Array C!20164 Bool)) false))))

(declare-fun b!3219101 () Bool)

(assert (=> b!3219101 (= e!2007098 ((_ map or) (store ((as const (Array C!20164 Bool)) false) (h!41625 (printWithSeparatorTokenList!164 thiss!18206 (t!239822 (t!239822 tokens!494)) separatorToken!241)) true) (content!4899 (t!239820 (printWithSeparatorTokenList!164 thiss!18206 (t!239822 (t!239822 tokens!494)) separatorToken!241)))))))

(assert (= (and d!884014 c!541316) b!3219100))

(assert (= (and d!884014 (not c!541316)) b!3219101))

(declare-fun m!3494301 () Bool)

(assert (=> b!3219101 m!3494301))

(declare-fun m!3494303 () Bool)

(assert (=> b!3219101 m!3494303))

(assert (=> d!883196 d!884014))

(assert (=> b!3217343 d!883458))

(declare-fun d!884016 () Bool)

(assert (=> d!884016 (= (apply!8221 (transformation!5230 (rule!7682 (_1!20946 (get!11534 lt!1088976)))) (seqFromList!3531 (originalCharacters!5944 (_1!20946 (get!11534 lt!1088976))))) (dynLambda!14653 (toValue!7322 (transformation!5230 (rule!7682 (_1!20946 (get!11534 lt!1088976))))) (seqFromList!3531 (originalCharacters!5944 (_1!20946 (get!11534 lt!1088976))))))))

(declare-fun b_lambda!88501 () Bool)

(assert (=> (not b_lambda!88501) (not d!884016)))

(declare-fun tb!159007 () Bool)

(declare-fun t!240113 () Bool)

(assert (=> (and b!3216773 (= (toValue!7322 (transformation!5230 (h!41626 rules!2135))) (toValue!7322 (transformation!5230 (rule!7682 (_1!20946 (get!11534 lt!1088976)))))) t!240113) tb!159007))

(declare-fun result!201428 () Bool)

(assert (=> tb!159007 (= result!201428 (inv!21 (dynLambda!14653 (toValue!7322 (transformation!5230 (rule!7682 (_1!20946 (get!11534 lt!1088976))))) (seqFromList!3531 (originalCharacters!5944 (_1!20946 (get!11534 lt!1088976)))))))))

(declare-fun m!3494305 () Bool)

(assert (=> tb!159007 m!3494305))

(assert (=> d!884016 t!240113))

(declare-fun b_and!215077 () Bool)

(assert (= b_and!215063 (and (=> t!240113 result!201428) b_and!215077)))

(declare-fun tb!159009 () Bool)

(declare-fun t!240115 () Bool)

(assert (=> (and b!3217774 (= (toValue!7322 (transformation!5230 (rule!7682 (h!41627 (t!239822 tokens!494))))) (toValue!7322 (transformation!5230 (rule!7682 (_1!20946 (get!11534 lt!1088976)))))) t!240115) tb!159009))

(declare-fun result!201430 () Bool)

(assert (= result!201430 result!201428))

(assert (=> d!884016 t!240115))

(declare-fun b_and!215079 () Bool)

(assert (= b_and!215061 (and (=> t!240115 result!201430) b_and!215079)))

(declare-fun tb!159011 () Bool)

(declare-fun t!240117 () Bool)

(assert (=> (and b!3216778 (= (toValue!7322 (transformation!5230 (rule!7682 separatorToken!241))) (toValue!7322 (transformation!5230 (rule!7682 (_1!20946 (get!11534 lt!1088976)))))) t!240117) tb!159011))

(declare-fun result!201432 () Bool)

(assert (= result!201432 result!201428))

(assert (=> d!884016 t!240117))

(declare-fun b_and!215081 () Bool)

(assert (= b_and!215065 (and (=> t!240117 result!201432) b_and!215081)))

(declare-fun tb!159013 () Bool)

(declare-fun t!240119 () Bool)

(assert (=> (and b!3217757 (= (toValue!7322 (transformation!5230 (h!41626 (t!239821 rules!2135)))) (toValue!7322 (transformation!5230 (rule!7682 (_1!20946 (get!11534 lt!1088976)))))) t!240119) tb!159013))

(declare-fun result!201434 () Bool)

(assert (= result!201434 result!201428))

(assert (=> d!884016 t!240119))

(declare-fun b_and!215083 () Bool)

(assert (= b_and!215059 (and (=> t!240119 result!201434) b_and!215083)))

(declare-fun tb!159015 () Bool)

(declare-fun t!240121 () Bool)

(assert (=> (and b!3216775 (= (toValue!7322 (transformation!5230 (rule!7682 (h!41627 tokens!494)))) (toValue!7322 (transformation!5230 (rule!7682 (_1!20946 (get!11534 lt!1088976)))))) t!240121) tb!159015))

(declare-fun result!201436 () Bool)

(assert (= result!201436 result!201428))

(assert (=> d!884016 t!240121))

(declare-fun b_and!215085 () Bool)

(assert (= b_and!215057 (and (=> t!240121 result!201436) b_and!215085)))

(assert (=> d!884016 m!3491345))

(declare-fun m!3494307 () Bool)

(assert (=> d!884016 m!3494307))

(assert (=> b!3217343 d!884016))

(declare-fun d!884018 () Bool)

(assert (=> d!884018 (= (seqFromList!3531 (originalCharacters!5944 (_1!20946 (get!11534 lt!1088976)))) (fromListB!1549 (originalCharacters!5944 (_1!20946 (get!11534 lt!1088976)))))))

(declare-fun bs!542432 () Bool)

(assert (= bs!542432 d!884018))

(declare-fun m!3494309 () Bool)

(assert (=> bs!542432 m!3494309))

(assert (=> b!3217343 d!884018))

(declare-fun d!884020 () Bool)

(declare-fun lt!1089802 () Bool)

(assert (=> d!884020 (= lt!1089802 (select (content!4899 (t!239820 (usedCharacters!546 (regex!5230 (rule!7682 (h!41627 tokens!494)))))) lt!1088692))))

(declare-fun e!2007101 () Bool)

(assert (=> d!884020 (= lt!1089802 e!2007101)))

(declare-fun res!1310447 () Bool)

(assert (=> d!884020 (=> (not res!1310447) (not e!2007101))))

(assert (=> d!884020 (= res!1310447 ((_ is Cons!36205) (t!239820 (usedCharacters!546 (regex!5230 (rule!7682 (h!41627 tokens!494)))))))))

(assert (=> d!884020 (= (contains!6479 (t!239820 (usedCharacters!546 (regex!5230 (rule!7682 (h!41627 tokens!494))))) lt!1088692) lt!1089802)))

(declare-fun b!3219102 () Bool)

(declare-fun e!2007100 () Bool)

(assert (=> b!3219102 (= e!2007101 e!2007100)))

(declare-fun res!1310446 () Bool)

(assert (=> b!3219102 (=> res!1310446 e!2007100)))

(assert (=> b!3219102 (= res!1310446 (= (h!41625 (t!239820 (usedCharacters!546 (regex!5230 (rule!7682 (h!41627 tokens!494)))))) lt!1088692))))

(declare-fun b!3219103 () Bool)

(assert (=> b!3219103 (= e!2007100 (contains!6479 (t!239820 (t!239820 (usedCharacters!546 (regex!5230 (rule!7682 (h!41627 tokens!494)))))) lt!1088692))))

(assert (= (and d!884020 res!1310447) b!3219102))

(assert (= (and b!3219102 (not res!1310446)) b!3219103))

(declare-fun m!3494311 () Bool)

(assert (=> d!884020 m!3494311))

(declare-fun m!3494313 () Bool)

(assert (=> d!884020 m!3494313))

(declare-fun m!3494315 () Bool)

(assert (=> b!3219103 m!3494315))

(assert (=> b!3217572 d!884020))

(declare-fun d!884022 () Bool)

(assert (=> d!884022 (= (inv!49078 (dynLambda!14648 (toChars!7181 (transformation!5230 (rule!7682 (h!41627 tokens!494)))) (value!169515 (h!41627 tokens!494)))) (isBalanced!3227 (c!540717 (dynLambda!14648 (toChars!7181 (transformation!5230 (rule!7682 (h!41627 tokens!494)))) (value!169515 (h!41627 tokens!494))))))))

(declare-fun bs!542433 () Bool)

(assert (= bs!542433 d!884022))

(declare-fun m!3494317 () Bool)

(assert (=> bs!542433 m!3494317))

(assert (=> tb!158753 d!884022))

(declare-fun d!884024 () Bool)

(assert (=> d!884024 (= (head!7053 lt!1088698) (h!41625 lt!1088698))))

(assert (=> b!3216927 d!884024))

(declare-fun b!3219112 () Bool)

(declare-fun e!2007108 () Bool)

(declare-fun call!233055 () Bool)

(assert (=> b!3219112 (= e!2007108 call!233055)))

(declare-fun b!3219113 () Bool)

(declare-fun e!2007110 () Bool)

(assert (=> b!3219113 (= e!2007110 e!2007108)))

(declare-fun res!1310452 () Bool)

(assert (=> b!3219113 (= res!1310452 (not ((_ is Cons!36206) rules!2135)))))

(assert (=> b!3219113 (=> res!1310452 e!2007108)))

(declare-fun b!3219114 () Bool)

(declare-fun e!2007109 () Bool)

(assert (=> b!3219114 (= e!2007110 e!2007109)))

(declare-fun res!1310453 () Bool)

(declare-fun rulesUseDisjointChars!275 (Rule!10260 Rule!10260) Bool)

(assert (=> b!3219114 (= res!1310453 (rulesUseDisjointChars!275 (h!41626 rules!2135) (h!41626 rules!2135)))))

(assert (=> b!3219114 (=> (not res!1310453) (not e!2007109))))

(declare-fun b!3219115 () Bool)

(assert (=> b!3219115 (= e!2007109 call!233055)))

(declare-fun bm!233050 () Bool)

(assert (=> bm!233050 (= call!233055 (ruleDisjointCharsFromAllFromOtherType!595 (h!41626 rules!2135) (t!239821 rules!2135)))))

(declare-fun d!884026 () Bool)

(declare-fun c!541319 () Bool)

(assert (=> d!884026 (= c!541319 (and ((_ is Cons!36206) rules!2135) (not (= (isSeparator!5230 (h!41626 rules!2135)) (isSeparator!5230 (h!41626 rules!2135))))))))

(assert (=> d!884026 (= (ruleDisjointCharsFromAllFromOtherType!595 (h!41626 rules!2135) rules!2135) e!2007110)))

(assert (= (and d!884026 c!541319) b!3219114))

(assert (= (and d!884026 (not c!541319)) b!3219113))

(assert (= (and b!3219114 res!1310453) b!3219115))

(assert (= (and b!3219113 (not res!1310452)) b!3219112))

(assert (= (or b!3219115 b!3219112) bm!233050))

(declare-fun m!3494319 () Bool)

(assert (=> b!3219114 m!3494319))

(declare-fun m!3494321 () Bool)

(assert (=> bm!233050 m!3494321))

(assert (=> b!3217699 d!884026))

(declare-fun b!3219118 () Bool)

(declare-fun res!1310455 () Bool)

(declare-fun e!2007111 () Bool)

(assert (=> b!3219118 (=> (not res!1310455) (not e!2007111))))

(declare-fun lt!1089803 () List!36329)

(assert (=> b!3219118 (= res!1310455 (= (size!27294 lt!1089803) (+ (size!27294 (t!239820 lt!1088705)) (size!27294 lt!1088710))))))

(declare-fun b!3219119 () Bool)

(assert (=> b!3219119 (= e!2007111 (or (not (= lt!1088710 Nil!36205)) (= lt!1089803 (t!239820 lt!1088705))))))

(declare-fun d!884028 () Bool)

(assert (=> d!884028 e!2007111))

(declare-fun res!1310454 () Bool)

(assert (=> d!884028 (=> (not res!1310454) (not e!2007111))))

(assert (=> d!884028 (= res!1310454 (= (content!4899 lt!1089803) ((_ map or) (content!4899 (t!239820 lt!1088705)) (content!4899 lt!1088710))))))

(declare-fun e!2007112 () List!36329)

(assert (=> d!884028 (= lt!1089803 e!2007112)))

(declare-fun c!541320 () Bool)

(assert (=> d!884028 (= c!541320 ((_ is Nil!36205) (t!239820 lt!1088705)))))

(assert (=> d!884028 (= (++!8698 (t!239820 lt!1088705) lt!1088710) lt!1089803)))

(declare-fun b!3219116 () Bool)

(assert (=> b!3219116 (= e!2007112 lt!1088710)))

(declare-fun b!3219117 () Bool)

(assert (=> b!3219117 (= e!2007112 (Cons!36205 (h!41625 (t!239820 lt!1088705)) (++!8698 (t!239820 (t!239820 lt!1088705)) lt!1088710)))))

(assert (= (and d!884028 c!541320) b!3219116))

(assert (= (and d!884028 (not c!541320)) b!3219117))

(assert (= (and d!884028 res!1310454) b!3219118))

(assert (= (and b!3219118 res!1310455) b!3219119))

(declare-fun m!3494323 () Bool)

(assert (=> b!3219118 m!3494323))

(assert (=> b!3219118 m!3493599))

(assert (=> b!3219118 m!3490565))

(declare-fun m!3494325 () Bool)

(assert (=> d!884028 m!3494325))

(assert (=> d!884028 m!3492961))

(assert (=> d!884028 m!3490571))

(declare-fun m!3494327 () Bool)

(assert (=> b!3219117 m!3494327))

(assert (=> b!3217733 d!884028))

(declare-fun d!884030 () Bool)

(declare-fun lt!1089804 () Int)

(assert (=> d!884030 (= lt!1089804 (size!27294 (list!12887 (seqFromList!3531 (_1!20949 lt!1089031)))))))

(assert (=> d!884030 (= lt!1089804 (size!27303 (c!540717 (seqFromList!3531 (_1!20949 lt!1089031)))))))

(assert (=> d!884030 (= (size!27301 (seqFromList!3531 (_1!20949 lt!1089031))) lt!1089804)))

(declare-fun bs!542434 () Bool)

(assert (= bs!542434 d!884030))

(assert (=> bs!542434 m!3491773))

(declare-fun m!3494329 () Bool)

(assert (=> bs!542434 m!3494329))

(assert (=> bs!542434 m!3494329))

(declare-fun m!3494331 () Bool)

(assert (=> bs!542434 m!3494331))

(declare-fun m!3494333 () Bool)

(assert (=> bs!542434 m!3494333))

(assert (=> b!3217540 d!884030))

(declare-fun d!884032 () Bool)

(assert (=> d!884032 (= (isEmpty!20308 (_1!20949 (findLongestMatchInner!835 (regex!5230 (rule!7682 (h!41627 (t!239822 tokens!494)))) Nil!36205 (size!27294 Nil!36205) lt!1088680 lt!1088680 (size!27294 lt!1088680)))) ((_ is Nil!36205) (_1!20949 (findLongestMatchInner!835 (regex!5230 (rule!7682 (h!41627 (t!239822 tokens!494)))) Nil!36205 (size!27294 Nil!36205) lt!1088680 lt!1088680 (size!27294 lt!1088680)))))))

(assert (=> b!3217540 d!884032))

(assert (=> b!3217540 d!882920))

(declare-fun d!884034 () Bool)

(assert (=> d!884034 (= (apply!8221 (transformation!5230 (rule!7682 (h!41627 (t!239822 tokens!494)))) (seqFromList!3531 (_1!20949 lt!1089031))) (dynLambda!14653 (toValue!7322 (transformation!5230 (rule!7682 (h!41627 (t!239822 tokens!494))))) (seqFromList!3531 (_1!20949 lt!1089031))))))

(declare-fun b_lambda!88503 () Bool)

(assert (=> (not b_lambda!88503) (not d!884034)))

(declare-fun tb!159017 () Bool)

(declare-fun t!240123 () Bool)

(assert (=> (and b!3216778 (= (toValue!7322 (transformation!5230 (rule!7682 separatorToken!241))) (toValue!7322 (transformation!5230 (rule!7682 (h!41627 (t!239822 tokens!494)))))) t!240123) tb!159017))

(declare-fun result!201438 () Bool)

(assert (=> tb!159017 (= result!201438 (inv!21 (dynLambda!14653 (toValue!7322 (transformation!5230 (rule!7682 (h!41627 (t!239822 tokens!494))))) (seqFromList!3531 (_1!20949 lt!1089031)))))))

(declare-fun m!3494335 () Bool)

(assert (=> tb!159017 m!3494335))

(assert (=> d!884034 t!240123))

(declare-fun b_and!215087 () Bool)

(assert (= b_and!215081 (and (=> t!240123 result!201438) b_and!215087)))

(declare-fun t!240125 () Bool)

(declare-fun tb!159019 () Bool)

(assert (=> (and b!3217757 (= (toValue!7322 (transformation!5230 (h!41626 (t!239821 rules!2135)))) (toValue!7322 (transformation!5230 (rule!7682 (h!41627 (t!239822 tokens!494)))))) t!240125) tb!159019))

(declare-fun result!201440 () Bool)

(assert (= result!201440 result!201438))

(assert (=> d!884034 t!240125))

(declare-fun b_and!215089 () Bool)

(assert (= b_and!215083 (and (=> t!240125 result!201440) b_and!215089)))

(declare-fun t!240127 () Bool)

(declare-fun tb!159021 () Bool)

(assert (=> (and b!3216775 (= (toValue!7322 (transformation!5230 (rule!7682 (h!41627 tokens!494)))) (toValue!7322 (transformation!5230 (rule!7682 (h!41627 (t!239822 tokens!494)))))) t!240127) tb!159021))

(declare-fun result!201442 () Bool)

(assert (= result!201442 result!201438))

(assert (=> d!884034 t!240127))

(declare-fun b_and!215091 () Bool)

(assert (= b_and!215085 (and (=> t!240127 result!201442) b_and!215091)))

(declare-fun t!240129 () Bool)

(declare-fun tb!159023 () Bool)

(assert (=> (and b!3217774 (= (toValue!7322 (transformation!5230 (rule!7682 (h!41627 (t!239822 tokens!494))))) (toValue!7322 (transformation!5230 (rule!7682 (h!41627 (t!239822 tokens!494)))))) t!240129) tb!159023))

(declare-fun result!201444 () Bool)

(assert (= result!201444 result!201438))

(assert (=> d!884034 t!240129))

(declare-fun b_and!215093 () Bool)

(assert (= b_and!215079 (and (=> t!240129 result!201444) b_and!215093)))

(declare-fun tb!159025 () Bool)

(declare-fun t!240131 () Bool)

(assert (=> (and b!3216773 (= (toValue!7322 (transformation!5230 (h!41626 rules!2135))) (toValue!7322 (transformation!5230 (rule!7682 (h!41627 (t!239822 tokens!494)))))) t!240131) tb!159025))

(declare-fun result!201446 () Bool)

(assert (= result!201446 result!201438))

(assert (=> d!884034 t!240131))

(declare-fun b_and!215095 () Bool)

(assert (= b_and!215077 (and (=> t!240131 result!201446) b_and!215095)))

(assert (=> d!884034 m!3491773))

(declare-fun m!3494337 () Bool)

(assert (=> d!884034 m!3494337))

(assert (=> b!3217540 d!884034))

(declare-fun bs!542435 () Bool)

(declare-fun d!884036 () Bool)

(assert (= bs!542435 (and d!884036 d!883560)))

(declare-fun lambda!117691 () Int)

(assert (=> bs!542435 (= (and (= (toChars!7181 (transformation!5230 (rule!7682 (h!41627 (t!239822 tokens!494))))) (toChars!7181 (transformation!5230 (rule!7682 (h!41627 tokens!494))))) (= (toValue!7322 (transformation!5230 (rule!7682 (h!41627 (t!239822 tokens!494))))) (toValue!7322 (transformation!5230 (rule!7682 (h!41627 tokens!494)))))) (= lambda!117691 lambda!117682))))

(declare-fun bs!542436 () Bool)

(assert (= bs!542436 (and d!884036 d!883952)))

(assert (=> bs!542436 (= (and (= (toChars!7181 (transformation!5230 (rule!7682 (h!41627 (t!239822 tokens!494))))) (toChars!7181 (transformation!5230 (rule!7682 (h!41627 tokens!494))))) (= (toValue!7322 (transformation!5230 (rule!7682 (h!41627 (t!239822 tokens!494))))) (toValue!7322 (transformation!5230 (rule!7682 (h!41627 tokens!494)))))) (= lambda!117691 lambda!117689))))

(declare-fun b!3219120 () Bool)

(declare-fun e!2007114 () Bool)

(assert (=> b!3219120 (= e!2007114 true)))

(assert (=> d!884036 e!2007114))

(assert (= d!884036 b!3219120))

(assert (=> b!3219120 (< (dynLambda!14645 order!18525 (toValue!7322 (transformation!5230 (rule!7682 (h!41627 (t!239822 tokens!494)))))) (dynLambda!14657 order!18537 lambda!117691))))

(assert (=> b!3219120 (< (dynLambda!14647 order!18529 (toChars!7181 (transformation!5230 (rule!7682 (h!41627 (t!239822 tokens!494)))))) (dynLambda!14657 order!18537 lambda!117691))))

(assert (=> d!884036 (= (list!12887 (dynLambda!14648 (toChars!7181 (transformation!5230 (rule!7682 (h!41627 (t!239822 tokens!494))))) (dynLambda!14653 (toValue!7322 (transformation!5230 (rule!7682 (h!41627 (t!239822 tokens!494))))) (seqFromList!3531 (_1!20949 lt!1089031))))) (list!12887 (seqFromList!3531 (_1!20949 lt!1089031))))))

(declare-fun lt!1089805 () Unit!50722)

(assert (=> d!884036 (= lt!1089805 (ForallOf!558 lambda!117691 (seqFromList!3531 (_1!20949 lt!1089031))))))

(assert (=> d!884036 (= (lemmaSemiInverse!1181 (transformation!5230 (rule!7682 (h!41627 (t!239822 tokens!494)))) (seqFromList!3531 (_1!20949 lt!1089031))) lt!1089805)))

(declare-fun b_lambda!88505 () Bool)

(assert (=> (not b_lambda!88505) (not d!884036)))

(declare-fun t!240133 () Bool)

(declare-fun tb!159027 () Bool)

(assert (=> (and b!3216775 (= (toChars!7181 (transformation!5230 (rule!7682 (h!41627 tokens!494)))) (toChars!7181 (transformation!5230 (rule!7682 (h!41627 (t!239822 tokens!494)))))) t!240133) tb!159027))

(declare-fun tp!1014352 () Bool)

(declare-fun b!3219121 () Bool)

(declare-fun e!2007115 () Bool)

(assert (=> b!3219121 (= e!2007115 (and (inv!49077 (c!540717 (dynLambda!14648 (toChars!7181 (transformation!5230 (rule!7682 (h!41627 (t!239822 tokens!494))))) (dynLambda!14653 (toValue!7322 (transformation!5230 (rule!7682 (h!41627 (t!239822 tokens!494))))) (seqFromList!3531 (_1!20949 lt!1089031)))))) tp!1014352))))

(declare-fun result!201448 () Bool)

(assert (=> tb!159027 (= result!201448 (and (inv!49078 (dynLambda!14648 (toChars!7181 (transformation!5230 (rule!7682 (h!41627 (t!239822 tokens!494))))) (dynLambda!14653 (toValue!7322 (transformation!5230 (rule!7682 (h!41627 (t!239822 tokens!494))))) (seqFromList!3531 (_1!20949 lt!1089031))))) e!2007115))))

(assert (= tb!159027 b!3219121))

(declare-fun m!3494339 () Bool)

(assert (=> b!3219121 m!3494339))

(declare-fun m!3494341 () Bool)

(assert (=> tb!159027 m!3494341))

(assert (=> d!884036 t!240133))

(declare-fun b_and!215097 () Bool)

(assert (= b_and!215071 (and (=> t!240133 result!201448) b_and!215097)))

(declare-fun t!240135 () Bool)

(declare-fun tb!159029 () Bool)

(assert (=> (and b!3217774 (= (toChars!7181 (transformation!5230 (rule!7682 (h!41627 (t!239822 tokens!494))))) (toChars!7181 (transformation!5230 (rule!7682 (h!41627 (t!239822 tokens!494)))))) t!240135) tb!159029))

(declare-fun result!201450 () Bool)

(assert (= result!201450 result!201448))

(assert (=> d!884036 t!240135))

(declare-fun b_and!215099 () Bool)

(assert (= b_and!215069 (and (=> t!240135 result!201450) b_and!215099)))

(declare-fun tb!159031 () Bool)

(declare-fun t!240137 () Bool)

(assert (=> (and b!3216773 (= (toChars!7181 (transformation!5230 (h!41626 rules!2135))) (toChars!7181 (transformation!5230 (rule!7682 (h!41627 (t!239822 tokens!494)))))) t!240137) tb!159031))

(declare-fun result!201452 () Bool)

(assert (= result!201452 result!201448))

(assert (=> d!884036 t!240137))

(declare-fun b_and!215101 () Bool)

(assert (= b_and!215067 (and (=> t!240137 result!201452) b_and!215101)))

(declare-fun t!240139 () Bool)

(declare-fun tb!159033 () Bool)

(assert (=> (and b!3217757 (= (toChars!7181 (transformation!5230 (h!41626 (t!239821 rules!2135)))) (toChars!7181 (transformation!5230 (rule!7682 (h!41627 (t!239822 tokens!494)))))) t!240139) tb!159033))

(declare-fun result!201454 () Bool)

(assert (= result!201454 result!201448))

(assert (=> d!884036 t!240139))

(declare-fun b_and!215103 () Bool)

(assert (= b_and!215075 (and (=> t!240139 result!201454) b_and!215103)))

(declare-fun tb!159035 () Bool)

(declare-fun t!240141 () Bool)

(assert (=> (and b!3216778 (= (toChars!7181 (transformation!5230 (rule!7682 separatorToken!241))) (toChars!7181 (transformation!5230 (rule!7682 (h!41627 (t!239822 tokens!494)))))) t!240141) tb!159035))

(declare-fun result!201456 () Bool)

(assert (= result!201456 result!201448))

(assert (=> d!884036 t!240141))

(declare-fun b_and!215105 () Bool)

(assert (= b_and!215073 (and (=> t!240141 result!201456) b_and!215105)))

(declare-fun b_lambda!88507 () Bool)

(assert (=> (not b_lambda!88507) (not d!884036)))

(assert (=> d!884036 t!240127))

(declare-fun b_and!215107 () Bool)

(assert (= b_and!215091 (and (=> t!240127 result!201442) b_and!215107)))

(assert (=> d!884036 t!240123))

(declare-fun b_and!215109 () Bool)

(assert (= b_and!215087 (and (=> t!240123 result!201438) b_and!215109)))

(assert (=> d!884036 t!240131))

(declare-fun b_and!215111 () Bool)

(assert (= b_and!215095 (and (=> t!240131 result!201446) b_and!215111)))

(assert (=> d!884036 t!240129))

(declare-fun b_and!215113 () Bool)

(assert (= b_and!215093 (and (=> t!240129 result!201444) b_and!215113)))

(assert (=> d!884036 t!240125))

(declare-fun b_and!215115 () Bool)

(assert (= b_and!215089 (and (=> t!240125 result!201440) b_and!215115)))

(assert (=> d!884036 m!3491773))

(assert (=> d!884036 m!3494337))

(declare-fun m!3494343 () Bool)

(assert (=> d!884036 m!3494343))

(declare-fun m!3494345 () Bool)

(assert (=> d!884036 m!3494345))

(assert (=> d!884036 m!3491773))

(assert (=> d!884036 m!3494329))

(assert (=> d!884036 m!3491773))

(declare-fun m!3494347 () Bool)

(assert (=> d!884036 m!3494347))

(assert (=> d!884036 m!3494337))

(assert (=> d!884036 m!3494343))

(assert (=> b!3217540 d!884036))

(declare-fun d!884038 () Bool)

(declare-fun e!2007116 () Bool)

(assert (=> d!884038 e!2007116))

(declare-fun res!1310456 () Bool)

(assert (=> d!884038 (=> res!1310456 e!2007116)))

(assert (=> d!884038 (= res!1310456 (isEmpty!20308 (_1!20949 (findLongestMatchInner!835 (regex!5230 (rule!7682 (h!41627 (t!239822 tokens!494)))) Nil!36205 (size!27294 Nil!36205) lt!1088680 lt!1088680 (size!27294 lt!1088680)))))))

(declare-fun lt!1089806 () Unit!50722)

(assert (=> d!884038 (= lt!1089806 (choose!18803 (regex!5230 (rule!7682 (h!41627 (t!239822 tokens!494)))) lt!1088680))))

(assert (=> d!884038 (validRegex!4557 (regex!5230 (rule!7682 (h!41627 (t!239822 tokens!494)))))))

(assert (=> d!884038 (= (longestMatchIsAcceptedByMatchOrIsEmpty!808 (regex!5230 (rule!7682 (h!41627 (t!239822 tokens!494)))) lt!1088680) lt!1089806)))

(declare-fun b!3219122 () Bool)

(assert (=> b!3219122 (= e!2007116 (matchR!4623 (regex!5230 (rule!7682 (h!41627 (t!239822 tokens!494)))) (_1!20949 (findLongestMatchInner!835 (regex!5230 (rule!7682 (h!41627 (t!239822 tokens!494)))) Nil!36205 (size!27294 Nil!36205) lt!1088680 lt!1088680 (size!27294 lt!1088680)))))))

(assert (= (and d!884038 (not res!1310456)) b!3219122))

(assert (=> d!884038 m!3490399))

(assert (=> d!884038 m!3490733))

(assert (=> d!884038 m!3491355))

(assert (=> d!884038 m!3491355))

(assert (=> d!884038 m!3490399))

(assert (=> d!884038 m!3491771))

(assert (=> d!884038 m!3491781))

(declare-fun m!3494349 () Bool)

(assert (=> d!884038 m!3494349))

(assert (=> b!3219122 m!3491355))

(assert (=> b!3219122 m!3490399))

(assert (=> b!3219122 m!3491355))

(assert (=> b!3219122 m!3490399))

(assert (=> b!3219122 m!3491771))

(assert (=> b!3219122 m!3491785))

(assert (=> b!3217540 d!884038))

(assert (=> b!3217540 d!883310))

(assert (=> b!3217540 d!883366))

(declare-fun d!884040 () Bool)

(assert (=> d!884040 (= (seqFromList!3531 (_1!20949 lt!1089031)) (fromListB!1549 (_1!20949 lt!1089031)))))

(declare-fun bs!542437 () Bool)

(assert (= bs!542437 d!884040))

(declare-fun m!3494351 () Bool)

(assert (=> bs!542437 m!3494351))

(assert (=> b!3217540 d!884040))

(declare-fun d!884042 () Bool)

(assert (=> d!884042 (= (isEmpty!20308 (tail!5218 lt!1088705)) ((_ is Nil!36205) (tail!5218 lt!1088705)))))

(assert (=> b!3217719 d!884042))

(assert (=> b!3217719 d!883776))

(declare-fun lt!1089807 () Bool)

(declare-fun d!884044 () Bool)

(assert (=> d!884044 (= lt!1089807 (isEmpty!20308 (list!12887 (_2!20945 (lex!2149 thiss!18206 rules!2135 (print!1884 thiss!18206 (singletonSeq!2326 (h!41627 tokens!494))))))))))

(assert (=> d!884044 (= lt!1089807 (isEmpty!20310 (c!540717 (_2!20945 (lex!2149 thiss!18206 rules!2135 (print!1884 thiss!18206 (singletonSeq!2326 (h!41627 tokens!494))))))))))

(assert (=> d!884044 (= (isEmpty!20304 (_2!20945 (lex!2149 thiss!18206 rules!2135 (print!1884 thiss!18206 (singletonSeq!2326 (h!41627 tokens!494)))))) lt!1089807)))

(declare-fun bs!542438 () Bool)

(assert (= bs!542438 d!884044))

(declare-fun m!3494353 () Bool)

(assert (=> bs!542438 m!3494353))

(assert (=> bs!542438 m!3494353))

(declare-fun m!3494355 () Bool)

(assert (=> bs!542438 m!3494355))

(declare-fun m!3494357 () Bool)

(assert (=> bs!542438 m!3494357))

(assert (=> b!3217082 d!884044))

(declare-fun lt!1089808 () tuple2!35622)

(declare-fun e!2007118 () Bool)

(declare-fun b!3219123 () Bool)

(assert (=> b!3219123 (= e!2007118 (= (list!12887 (_2!20945 lt!1089808)) (_2!20950 (lexList!1317 thiss!18206 rules!2135 (list!12887 (print!1884 thiss!18206 (singletonSeq!2326 (h!41627 tokens!494))))))))))

(declare-fun b!3219124 () Bool)

(declare-fun res!1310457 () Bool)

(assert (=> b!3219124 (=> (not res!1310457) (not e!2007118))))

(assert (=> b!3219124 (= res!1310457 (= (list!12890 (_1!20945 lt!1089808)) (_1!20950 (lexList!1317 thiss!18206 rules!2135 (list!12887 (print!1884 thiss!18206 (singletonSeq!2326 (h!41627 tokens!494))))))))))

(declare-fun e!2007119 () Bool)

(declare-fun b!3219125 () Bool)

(assert (=> b!3219125 (= e!2007119 (= (_2!20945 lt!1089808) (print!1884 thiss!18206 (singletonSeq!2326 (h!41627 tokens!494)))))))

(declare-fun b!3219127 () Bool)

(declare-fun e!2007117 () Bool)

(assert (=> b!3219127 (= e!2007119 e!2007117)))

(declare-fun res!1310458 () Bool)

(assert (=> b!3219127 (= res!1310458 (< (size!27301 (_2!20945 lt!1089808)) (size!27301 (print!1884 thiss!18206 (singletonSeq!2326 (h!41627 tokens!494))))))))

(assert (=> b!3219127 (=> (not res!1310458) (not e!2007117))))

(declare-fun b!3219126 () Bool)

(assert (=> b!3219126 (= e!2007117 (not (isEmpty!20305 (_1!20945 lt!1089808))))))

(declare-fun d!884046 () Bool)

(assert (=> d!884046 e!2007118))

(declare-fun res!1310459 () Bool)

(assert (=> d!884046 (=> (not res!1310459) (not e!2007118))))

(assert (=> d!884046 (= res!1310459 e!2007119)))

(declare-fun c!541321 () Bool)

(assert (=> d!884046 (= c!541321 (> (size!27295 (_1!20945 lt!1089808)) 0))))

(assert (=> d!884046 (= lt!1089808 (lexTailRecV2!937 thiss!18206 rules!2135 (print!1884 thiss!18206 (singletonSeq!2326 (h!41627 tokens!494))) (BalanceConc!21285 Empty!10835) (print!1884 thiss!18206 (singletonSeq!2326 (h!41627 tokens!494))) (BalanceConc!21287 Empty!10836)))))

(assert (=> d!884046 (= (lex!2149 thiss!18206 rules!2135 (print!1884 thiss!18206 (singletonSeq!2326 (h!41627 tokens!494)))) lt!1089808)))

(assert (= (and d!884046 c!541321) b!3219127))

(assert (= (and d!884046 (not c!541321)) b!3219125))

(assert (= (and b!3219127 res!1310458) b!3219126))

(assert (= (and d!884046 res!1310459) b!3219124))

(assert (= (and b!3219124 res!1310457) b!3219123))

(declare-fun m!3494359 () Bool)

(assert (=> d!884046 m!3494359))

(assert (=> d!884046 m!3490831))

(assert (=> d!884046 m!3490831))

(declare-fun m!3494361 () Bool)

(assert (=> d!884046 m!3494361))

(declare-fun m!3494363 () Bool)

(assert (=> b!3219127 m!3494363))

(assert (=> b!3219127 m!3490831))

(declare-fun m!3494365 () Bool)

(assert (=> b!3219127 m!3494365))

(declare-fun m!3494367 () Bool)

(assert (=> b!3219126 m!3494367))

(declare-fun m!3494369 () Bool)

(assert (=> b!3219123 m!3494369))

(assert (=> b!3219123 m!3490831))

(declare-fun m!3494371 () Bool)

(assert (=> b!3219123 m!3494371))

(assert (=> b!3219123 m!3494371))

(declare-fun m!3494373 () Bool)

(assert (=> b!3219123 m!3494373))

(declare-fun m!3494375 () Bool)

(assert (=> b!3219124 m!3494375))

(assert (=> b!3219124 m!3490831))

(assert (=> b!3219124 m!3494371))

(assert (=> b!3219124 m!3494371))

(assert (=> b!3219124 m!3494373))

(assert (=> b!3217082 d!884046))

(declare-fun d!884048 () Bool)

(declare-fun lt!1089809 () BalanceConc!21284)

(assert (=> d!884048 (= (list!12887 lt!1089809) (printList!1369 thiss!18206 (list!12890 (singletonSeq!2326 (h!41627 tokens!494)))))))

(assert (=> d!884048 (= lt!1089809 (printTailRec!1316 thiss!18206 (singletonSeq!2326 (h!41627 tokens!494)) 0 (BalanceConc!21285 Empty!10835)))))

(assert (=> d!884048 (= (print!1884 thiss!18206 (singletonSeq!2326 (h!41627 tokens!494))) lt!1089809)))

(declare-fun bs!542439 () Bool)

(assert (= bs!542439 d!884048))

(declare-fun m!3494377 () Bool)

(assert (=> bs!542439 m!3494377))

(assert (=> bs!542439 m!3490505))

(assert (=> bs!542439 m!3490829))

(assert (=> bs!542439 m!3490829))

(declare-fun m!3494379 () Bool)

(assert (=> bs!542439 m!3494379))

(assert (=> bs!542439 m!3490505))

(declare-fun m!3494381 () Bool)

(assert (=> bs!542439 m!3494381))

(assert (=> b!3217082 d!884048))

(assert (=> b!3217082 d!882844))

(declare-fun b!3219128 () Bool)

(declare-fun e!2007123 () List!36329)

(assert (=> b!3219128 (= e!2007123 Nil!36205)))

(declare-fun b!3219129 () Bool)

(declare-fun e!2007121 () List!36329)

(declare-fun call!233058 () List!36329)

(assert (=> b!3219129 (= e!2007121 call!233058)))

(declare-fun b!3219130 () Bool)

(declare-fun e!2007120 () List!36329)

(declare-fun call!233057 () List!36329)

(assert (=> b!3219130 (= e!2007120 call!233057)))

(declare-fun call!233059 () List!36329)

(declare-fun c!541325 () Bool)

(declare-fun bm!233051 () Bool)

(assert (=> bm!233051 (= call!233059 (usedCharacters!546 (ite c!541325 (regTwo!20491 (ite c!540898 (regTwo!20491 (regex!5230 (rule!7682 separatorToken!241))) (regOne!20490 (regex!5230 (rule!7682 separatorToken!241))))) (regOne!20490 (ite c!540898 (regTwo!20491 (regex!5230 (rule!7682 separatorToken!241))) (regOne!20490 (regex!5230 (rule!7682 separatorToken!241))))))))))

(declare-fun b!3219131 () Bool)

(assert (=> b!3219131 (= e!2007121 e!2007120)))

(assert (=> b!3219131 (= c!541325 ((_ is Union!9989) (ite c!540898 (regTwo!20491 (regex!5230 (rule!7682 separatorToken!241))) (regOne!20490 (regex!5230 (rule!7682 separatorToken!241))))))))

(declare-fun b!3219132 () Bool)

(declare-fun e!2007122 () List!36329)

(assert (=> b!3219132 (= e!2007122 (Cons!36205 (c!540716 (ite c!540898 (regTwo!20491 (regex!5230 (rule!7682 separatorToken!241))) (regOne!20490 (regex!5230 (rule!7682 separatorToken!241))))) Nil!36205))))

(declare-fun d!884050 () Bool)

(declare-fun c!541323 () Bool)

(assert (=> d!884050 (= c!541323 (or ((_ is EmptyExpr!9989) (ite c!540898 (regTwo!20491 (regex!5230 (rule!7682 separatorToken!241))) (regOne!20490 (regex!5230 (rule!7682 separatorToken!241))))) ((_ is EmptyLang!9989) (ite c!540898 (regTwo!20491 (regex!5230 (rule!7682 separatorToken!241))) (regOne!20490 (regex!5230 (rule!7682 separatorToken!241)))))))))

(assert (=> d!884050 (= (usedCharacters!546 (ite c!540898 (regTwo!20491 (regex!5230 (rule!7682 separatorToken!241))) (regOne!20490 (regex!5230 (rule!7682 separatorToken!241))))) e!2007123)))

(declare-fun bm!233052 () Bool)

(declare-fun call!233056 () List!36329)

(assert (=> bm!233052 (= call!233056 call!233058)))

(declare-fun b!3219133 () Bool)

(assert (=> b!3219133 (= e!2007120 call!233057)))

(declare-fun bm!233053 () Bool)

(assert (=> bm!233053 (= call!233057 (++!8698 (ite c!541325 call!233056 call!233059) (ite c!541325 call!233059 call!233056)))))

(declare-fun b!3219134 () Bool)

(declare-fun c!541324 () Bool)

(assert (=> b!3219134 (= c!541324 ((_ is Star!9989) (ite c!540898 (regTwo!20491 (regex!5230 (rule!7682 separatorToken!241))) (regOne!20490 (regex!5230 (rule!7682 separatorToken!241))))))))

(assert (=> b!3219134 (= e!2007122 e!2007121)))

(declare-fun b!3219135 () Bool)

(assert (=> b!3219135 (= e!2007123 e!2007122)))

(declare-fun c!541322 () Bool)

(assert (=> b!3219135 (= c!541322 ((_ is ElementMatch!9989) (ite c!540898 (regTwo!20491 (regex!5230 (rule!7682 separatorToken!241))) (regOne!20490 (regex!5230 (rule!7682 separatorToken!241))))))))

(declare-fun bm!233054 () Bool)

(assert (=> bm!233054 (= call!233058 (usedCharacters!546 (ite c!541324 (reg!10318 (ite c!540898 (regTwo!20491 (regex!5230 (rule!7682 separatorToken!241))) (regOne!20490 (regex!5230 (rule!7682 separatorToken!241))))) (ite c!541325 (regOne!20491 (ite c!540898 (regTwo!20491 (regex!5230 (rule!7682 separatorToken!241))) (regOne!20490 (regex!5230 (rule!7682 separatorToken!241))))) (regTwo!20490 (ite c!540898 (regTwo!20491 (regex!5230 (rule!7682 separatorToken!241))) (regOne!20490 (regex!5230 (rule!7682 separatorToken!241)))))))))))

(assert (= (and d!884050 c!541323) b!3219128))

(assert (= (and d!884050 (not c!541323)) b!3219135))

(assert (= (and b!3219135 c!541322) b!3219132))

(assert (= (and b!3219135 (not c!541322)) b!3219134))

(assert (= (and b!3219134 c!541324) b!3219129))

(assert (= (and b!3219134 (not c!541324)) b!3219131))

(assert (= (and b!3219131 c!541325) b!3219133))

(assert (= (and b!3219131 (not c!541325)) b!3219130))

(assert (= (or b!3219133 b!3219130) bm!233051))

(assert (= (or b!3219133 b!3219130) bm!233052))

(assert (= (or b!3219133 b!3219130) bm!233053))

(assert (= (or b!3219129 bm!233052) bm!233054))

(declare-fun m!3494383 () Bool)

(assert (=> bm!233051 m!3494383))

(declare-fun m!3494385 () Bool)

(assert (=> bm!233053 m!3494385))

(declare-fun m!3494387 () Bool)

(assert (=> bm!233054 m!3494387))

(assert (=> bm!232869 d!884050))

(declare-fun d!884052 () Bool)

(assert (=> d!884052 (= (isEmpty!20316 (list!12890 (_1!20945 (lex!2149 thiss!18206 rules!2135 lt!1088720)))) ((_ is Nil!36207) (list!12890 (_1!20945 (lex!2149 thiss!18206 rules!2135 lt!1088720)))))))

(assert (=> d!883180 d!884052))

(declare-fun d!884054 () Bool)

(assert (=> d!884054 (= (list!12890 (_1!20945 (lex!2149 thiss!18206 rules!2135 lt!1088720))) (list!12893 (c!540718 (_1!20945 (lex!2149 thiss!18206 rules!2135 lt!1088720)))))))

(declare-fun bs!542440 () Bool)

(assert (= bs!542440 d!884054))

(declare-fun m!3494389 () Bool)

(assert (=> bs!542440 m!3494389))

(assert (=> d!883180 d!884054))

(declare-fun d!884056 () Bool)

(declare-fun lt!1089812 () Bool)

(assert (=> d!884056 (= lt!1089812 (isEmpty!20316 (list!12893 (c!540718 (_1!20945 (lex!2149 thiss!18206 rules!2135 lt!1088720))))))))

(assert (=> d!884056 (= lt!1089812 (= (size!27300 (c!540718 (_1!20945 (lex!2149 thiss!18206 rules!2135 lt!1088720)))) 0))))

(assert (=> d!884056 (= (isEmpty!20317 (c!540718 (_1!20945 (lex!2149 thiss!18206 rules!2135 lt!1088720)))) lt!1089812)))

(declare-fun bs!542441 () Bool)

(assert (= bs!542441 d!884056))

(assert (=> bs!542441 m!3494389))

(assert (=> bs!542441 m!3494389))

(declare-fun m!3494391 () Bool)

(assert (=> bs!542441 m!3494391))

(declare-fun m!3494393 () Bool)

(assert (=> bs!542441 m!3494393))

(assert (=> d!883180 d!884056))

(declare-fun b!3219136 () Bool)

(declare-fun e!2007127 () List!36329)

(assert (=> b!3219136 (= e!2007127 Nil!36205)))

(declare-fun b!3219137 () Bool)

(declare-fun e!2007125 () List!36329)

(declare-fun call!233062 () List!36329)

(assert (=> b!3219137 (= e!2007125 call!233062)))

(declare-fun b!3219138 () Bool)

(declare-fun e!2007124 () List!36329)

(declare-fun call!233061 () List!36329)

(assert (=> b!3219138 (= e!2007124 call!233061)))

(declare-fun bm!233055 () Bool)

(declare-fun call!233063 () List!36329)

(declare-fun c!541329 () Bool)

(assert (=> bm!233055 (= call!233063 (usedCharacters!546 (ite c!541329 (regTwo!20491 (ite c!540887 (reg!10318 (regex!5230 (rule!7682 (h!41627 (t!239822 tokens!494))))) (ite c!540888 (regOne!20491 (regex!5230 (rule!7682 (h!41627 (t!239822 tokens!494))))) (regTwo!20490 (regex!5230 (rule!7682 (h!41627 (t!239822 tokens!494)))))))) (regOne!20490 (ite c!540887 (reg!10318 (regex!5230 (rule!7682 (h!41627 (t!239822 tokens!494))))) (ite c!540888 (regOne!20491 (regex!5230 (rule!7682 (h!41627 (t!239822 tokens!494))))) (regTwo!20490 (regex!5230 (rule!7682 (h!41627 (t!239822 tokens!494)))))))))))))

(declare-fun b!3219139 () Bool)

(assert (=> b!3219139 (= e!2007125 e!2007124)))

(assert (=> b!3219139 (= c!541329 ((_ is Union!9989) (ite c!540887 (reg!10318 (regex!5230 (rule!7682 (h!41627 (t!239822 tokens!494))))) (ite c!540888 (regOne!20491 (regex!5230 (rule!7682 (h!41627 (t!239822 tokens!494))))) (regTwo!20490 (regex!5230 (rule!7682 (h!41627 (t!239822 tokens!494)))))))))))

(declare-fun e!2007126 () List!36329)

(declare-fun b!3219140 () Bool)

(assert (=> b!3219140 (= e!2007126 (Cons!36205 (c!540716 (ite c!540887 (reg!10318 (regex!5230 (rule!7682 (h!41627 (t!239822 tokens!494))))) (ite c!540888 (regOne!20491 (regex!5230 (rule!7682 (h!41627 (t!239822 tokens!494))))) (regTwo!20490 (regex!5230 (rule!7682 (h!41627 (t!239822 tokens!494)))))))) Nil!36205))))

(declare-fun d!884058 () Bool)

(declare-fun c!541327 () Bool)

(assert (=> d!884058 (= c!541327 (or ((_ is EmptyExpr!9989) (ite c!540887 (reg!10318 (regex!5230 (rule!7682 (h!41627 (t!239822 tokens!494))))) (ite c!540888 (regOne!20491 (regex!5230 (rule!7682 (h!41627 (t!239822 tokens!494))))) (regTwo!20490 (regex!5230 (rule!7682 (h!41627 (t!239822 tokens!494)))))))) ((_ is EmptyLang!9989) (ite c!540887 (reg!10318 (regex!5230 (rule!7682 (h!41627 (t!239822 tokens!494))))) (ite c!540888 (regOne!20491 (regex!5230 (rule!7682 (h!41627 (t!239822 tokens!494))))) (regTwo!20490 (regex!5230 (rule!7682 (h!41627 (t!239822 tokens!494))))))))))))

(assert (=> d!884058 (= (usedCharacters!546 (ite c!540887 (reg!10318 (regex!5230 (rule!7682 (h!41627 (t!239822 tokens!494))))) (ite c!540888 (regOne!20491 (regex!5230 (rule!7682 (h!41627 (t!239822 tokens!494))))) (regTwo!20490 (regex!5230 (rule!7682 (h!41627 (t!239822 tokens!494)))))))) e!2007127)))

(declare-fun bm!233056 () Bool)

(declare-fun call!233060 () List!36329)

(assert (=> bm!233056 (= call!233060 call!233062)))

(declare-fun b!3219141 () Bool)

(assert (=> b!3219141 (= e!2007124 call!233061)))

(declare-fun bm!233057 () Bool)

(assert (=> bm!233057 (= call!233061 (++!8698 (ite c!541329 call!233060 call!233063) (ite c!541329 call!233063 call!233060)))))

(declare-fun c!541328 () Bool)

(declare-fun b!3219142 () Bool)

(assert (=> b!3219142 (= c!541328 ((_ is Star!9989) (ite c!540887 (reg!10318 (regex!5230 (rule!7682 (h!41627 (t!239822 tokens!494))))) (ite c!540888 (regOne!20491 (regex!5230 (rule!7682 (h!41627 (t!239822 tokens!494))))) (regTwo!20490 (regex!5230 (rule!7682 (h!41627 (t!239822 tokens!494)))))))))))

(assert (=> b!3219142 (= e!2007126 e!2007125)))

(declare-fun b!3219143 () Bool)

(assert (=> b!3219143 (= e!2007127 e!2007126)))

(declare-fun c!541326 () Bool)

(assert (=> b!3219143 (= c!541326 ((_ is ElementMatch!9989) (ite c!540887 (reg!10318 (regex!5230 (rule!7682 (h!41627 (t!239822 tokens!494))))) (ite c!540888 (regOne!20491 (regex!5230 (rule!7682 (h!41627 (t!239822 tokens!494))))) (regTwo!20490 (regex!5230 (rule!7682 (h!41627 (t!239822 tokens!494)))))))))))

(declare-fun bm!233058 () Bool)

(assert (=> bm!233058 (= call!233062 (usedCharacters!546 (ite c!541328 (reg!10318 (ite c!540887 (reg!10318 (regex!5230 (rule!7682 (h!41627 (t!239822 tokens!494))))) (ite c!540888 (regOne!20491 (regex!5230 (rule!7682 (h!41627 (t!239822 tokens!494))))) (regTwo!20490 (regex!5230 (rule!7682 (h!41627 (t!239822 tokens!494)))))))) (ite c!541329 (regOne!20491 (ite c!540887 (reg!10318 (regex!5230 (rule!7682 (h!41627 (t!239822 tokens!494))))) (ite c!540888 (regOne!20491 (regex!5230 (rule!7682 (h!41627 (t!239822 tokens!494))))) (regTwo!20490 (regex!5230 (rule!7682 (h!41627 (t!239822 tokens!494)))))))) (regTwo!20490 (ite c!540887 (reg!10318 (regex!5230 (rule!7682 (h!41627 (t!239822 tokens!494))))) (ite c!540888 (regOne!20491 (regex!5230 (rule!7682 (h!41627 (t!239822 tokens!494))))) (regTwo!20490 (regex!5230 (rule!7682 (h!41627 (t!239822 tokens!494))))))))))))))

(assert (= (and d!884058 c!541327) b!3219136))

(assert (= (and d!884058 (not c!541327)) b!3219143))

(assert (= (and b!3219143 c!541326) b!3219140))

(assert (= (and b!3219143 (not c!541326)) b!3219142))

(assert (= (and b!3219142 c!541328) b!3219137))

(assert (= (and b!3219142 (not c!541328)) b!3219139))

(assert (= (and b!3219139 c!541329) b!3219141))

(assert (= (and b!3219139 (not c!541329)) b!3219138))

(assert (= (or b!3219141 b!3219138) bm!233055))

(assert (= (or b!3219141 b!3219138) bm!233056))

(assert (= (or b!3219141 b!3219138) bm!233057))

(assert (= (or b!3219137 bm!233056) bm!233058))

(declare-fun m!3494395 () Bool)

(assert (=> bm!233055 m!3494395))

(declare-fun m!3494397 () Bool)

(assert (=> bm!233057 m!3494397))

(declare-fun m!3494399 () Bool)

(assert (=> bm!233058 m!3494399))

(assert (=> bm!232868 d!884058))

(assert (=> b!3217712 d!884042))

(assert (=> b!3217712 d!883776))

(declare-fun d!884060 () Bool)

(assert (=> d!884060 (= (nullable!3401 (regex!5230 lt!1088704)) (nullableFct!971 (regex!5230 lt!1088704)))))

(declare-fun bs!542442 () Bool)

(assert (= bs!542442 d!884060))

(declare-fun m!3494401 () Bool)

(assert (=> bs!542442 m!3494401))

(assert (=> b!3217042 d!884060))

(declare-fun d!884062 () Bool)

(declare-fun lt!1089813 () Int)

(assert (=> d!884062 (>= lt!1089813 0)))

(declare-fun e!2007128 () Int)

(assert (=> d!884062 (= lt!1089813 e!2007128)))

(declare-fun c!541330 () Bool)

(assert (=> d!884062 (= c!541330 ((_ is Nil!36205) lt!1089094))))

(assert (=> d!884062 (= (size!27294 lt!1089094) lt!1089813)))

(declare-fun b!3219144 () Bool)

(assert (=> b!3219144 (= e!2007128 0)))

(declare-fun b!3219145 () Bool)

(assert (=> b!3219145 (= e!2007128 (+ 1 (size!27294 (t!239820 lt!1089094))))))

(assert (= (and d!884062 c!541330) b!3219144))

(assert (= (and d!884062 (not c!541330)) b!3219145))

(declare-fun m!3494403 () Bool)

(assert (=> b!3219145 m!3494403))

(assert (=> b!3217730 d!884062))

(declare-fun d!884064 () Bool)

(declare-fun lt!1089814 () Int)

(assert (=> d!884064 (>= lt!1089814 0)))

(declare-fun e!2007129 () Int)

(assert (=> d!884064 (= lt!1089814 e!2007129)))

(declare-fun c!541331 () Bool)

(assert (=> d!884064 (= c!541331 ((_ is Nil!36205) (++!8698 lt!1088680 lt!1088705)))))

(assert (=> d!884064 (= (size!27294 (++!8698 lt!1088680 lt!1088705)) lt!1089814)))

(declare-fun b!3219146 () Bool)

(assert (=> b!3219146 (= e!2007129 0)))

(declare-fun b!3219147 () Bool)

(assert (=> b!3219147 (= e!2007129 (+ 1 (size!27294 (t!239820 (++!8698 lt!1088680 lt!1088705)))))))

(assert (= (and d!884064 c!541331) b!3219146))

(assert (= (and d!884064 (not c!541331)) b!3219147))

(declare-fun m!3494405 () Bool)

(assert (=> b!3219147 m!3494405))

(assert (=> b!3217730 d!884064))

(declare-fun d!884066 () Bool)

(declare-fun lt!1089815 () Int)

(assert (=> d!884066 (>= lt!1089815 0)))

(declare-fun e!2007130 () Int)

(assert (=> d!884066 (= lt!1089815 e!2007130)))

(declare-fun c!541332 () Bool)

(assert (=> d!884066 (= c!541332 ((_ is Nil!36205) (printWithSeparatorTokenList!164 thiss!18206 (t!239822 (t!239822 tokens!494)) separatorToken!241)))))

(assert (=> d!884066 (= (size!27294 (printWithSeparatorTokenList!164 thiss!18206 (t!239822 (t!239822 tokens!494)) separatorToken!241)) lt!1089815)))

(declare-fun b!3219148 () Bool)

(assert (=> b!3219148 (= e!2007130 0)))

(declare-fun b!3219149 () Bool)

(assert (=> b!3219149 (= e!2007130 (+ 1 (size!27294 (t!239820 (printWithSeparatorTokenList!164 thiss!18206 (t!239822 (t!239822 tokens!494)) separatorToken!241)))))))

(assert (= (and d!884066 c!541332) b!3219148))

(assert (= (and d!884066 (not c!541332)) b!3219149))

(declare-fun m!3494407 () Bool)

(assert (=> b!3219149 m!3494407))

(assert (=> b!3217730 d!884066))

(declare-fun d!884068 () Bool)

(assert (=> d!884068 (= (list!12890 (_1!20945 lt!1089089)) (list!12893 (c!540718 (_1!20945 lt!1089089))))))

(declare-fun bs!542443 () Bool)

(assert (= bs!542443 d!884068))

(declare-fun m!3494409 () Bool)

(assert (=> bs!542443 m!3494409))

(assert (=> b!3217706 d!884068))

(declare-fun d!884070 () Bool)

(declare-fun e!2007131 () Bool)

(assert (=> d!884070 e!2007131))

(declare-fun c!541333 () Bool)

(declare-fun lt!1089818 () tuple2!35632)

(assert (=> d!884070 (= c!541333 (> (size!27299 (_1!20950 lt!1089818)) 0))))

(declare-fun e!2007132 () tuple2!35632)

(assert (=> d!884070 (= lt!1089818 e!2007132)))

(declare-fun c!541334 () Bool)

(declare-fun lt!1089816 () Option!7164)

(assert (=> d!884070 (= c!541334 ((_ is Some!7163) lt!1089816))))

(assert (=> d!884070 (= lt!1089816 (maxPrefix!2461 thiss!18206 rules!2135 (list!12887 lt!1088720)))))

(assert (=> d!884070 (= (lexList!1317 thiss!18206 rules!2135 (list!12887 lt!1088720)) lt!1089818)))

(declare-fun b!3219150 () Bool)

(declare-fun lt!1089817 () tuple2!35632)

(assert (=> b!3219150 (= e!2007132 (tuple2!35633 (Cons!36207 (_1!20946 (v!35733 lt!1089816)) (_1!20950 lt!1089817)) (_2!20950 lt!1089817)))))

(assert (=> b!3219150 (= lt!1089817 (lexList!1317 thiss!18206 rules!2135 (_2!20946 (v!35733 lt!1089816))))))

(declare-fun b!3219151 () Bool)

(assert (=> b!3219151 (= e!2007132 (tuple2!35633 Nil!36207 (list!12887 lt!1088720)))))

(declare-fun b!3219152 () Bool)

(declare-fun e!2007133 () Bool)

(assert (=> b!3219152 (= e!2007131 e!2007133)))

(declare-fun res!1310460 () Bool)

(assert (=> b!3219152 (= res!1310460 (< (size!27294 (_2!20950 lt!1089818)) (size!27294 (list!12887 lt!1088720))))))

(assert (=> b!3219152 (=> (not res!1310460) (not e!2007133))))

(declare-fun b!3219153 () Bool)

(assert (=> b!3219153 (= e!2007133 (not (isEmpty!20316 (_1!20950 lt!1089818))))))

(declare-fun b!3219154 () Bool)

(assert (=> b!3219154 (= e!2007131 (= (_2!20950 lt!1089818) (list!12887 lt!1088720)))))

(assert (= (and d!884070 c!541334) b!3219150))

(assert (= (and d!884070 (not c!541334)) b!3219151))

(assert (= (and d!884070 c!541333) b!3219152))

(assert (= (and d!884070 (not c!541333)) b!3219154))

(assert (= (and b!3219152 res!1310460) b!3219153))

(declare-fun m!3494411 () Bool)

(assert (=> d!884070 m!3494411))

(assert (=> d!884070 m!3492029))

(declare-fun m!3494413 () Bool)

(assert (=> d!884070 m!3494413))

(declare-fun m!3494415 () Bool)

(assert (=> b!3219150 m!3494415))

(declare-fun m!3494417 () Bool)

(assert (=> b!3219152 m!3494417))

(assert (=> b!3219152 m!3492029))

(assert (=> b!3219152 m!3492683))

(declare-fun m!3494419 () Bool)

(assert (=> b!3219153 m!3494419))

(assert (=> b!3217706 d!884070))

(declare-fun d!884072 () Bool)

(assert (=> d!884072 (= (list!12887 lt!1088720) (list!12889 (c!540717 lt!1088720)))))

(declare-fun bs!542444 () Bool)

(assert (= bs!542444 d!884072))

(declare-fun m!3494421 () Bool)

(assert (=> bs!542444 m!3494421))

(assert (=> b!3217706 d!884072))

(declare-fun d!884074 () Bool)

(assert (=> d!884074 (= (isEmpty!20311 lt!1088683) (not ((_ is Some!7162) lt!1088683)))))

(assert (=> d!882928 d!884074))

(assert (=> b!3216918 d!883140))

(declare-fun d!884076 () Bool)

(assert (=> d!884076 (dynLambda!14651 lambda!117650 (h!41627 (t!239822 tokens!494)))))

(assert (=> d!884076 true))

(declare-fun _$7!1110 () Unit!50722)

(assert (=> d!884076 (= (choose!18786 tokens!494 lambda!117650 (h!41627 (t!239822 tokens!494))) _$7!1110)))

(declare-fun b_lambda!88509 () Bool)

(assert (=> (not b_lambda!88509) (not d!884076)))

(declare-fun bs!542445 () Bool)

(assert (= bs!542445 d!884076))

(assert (=> bs!542445 m!3490923))

(assert (=> d!882904 d!884076))

(assert (=> d!882904 d!882886))

(declare-fun d!884078 () Bool)

(declare-fun c!541335 () Bool)

(assert (=> d!884078 (= c!541335 ((_ is Nil!36205) (usedCharacters!546 (regex!5230 (rule!7682 (h!41627 tokens!494))))))))

(declare-fun e!2007134 () (InoxSet C!20164))

(assert (=> d!884078 (= (content!4899 (usedCharacters!546 (regex!5230 (rule!7682 (h!41627 tokens!494))))) e!2007134)))

(declare-fun b!3219155 () Bool)

(assert (=> b!3219155 (= e!2007134 ((as const (Array C!20164 Bool)) false))))

(declare-fun b!3219156 () Bool)

(assert (=> b!3219156 (= e!2007134 ((_ map or) (store ((as const (Array C!20164 Bool)) false) (h!41625 (usedCharacters!546 (regex!5230 (rule!7682 (h!41627 tokens!494))))) true) (content!4899 (t!239820 (usedCharacters!546 (regex!5230 (rule!7682 (h!41627 tokens!494))))))))))

(assert (= (and d!884078 c!541335) b!3219155))

(assert (= (and d!884078 (not c!541335)) b!3219156))

(declare-fun m!3494423 () Bool)

(assert (=> b!3219156 m!3494423))

(assert (=> b!3219156 m!3494311))

(assert (=> d!883116 d!884078))

(assert (=> b!3217021 d!883140))

(declare-fun d!884080 () Bool)

(assert (=> d!884080 (= (isEmpty!20311 lt!1089044) (not ((_ is Some!7162) lt!1089044)))))

(assert (=> d!883110 d!884080))

(assert (=> d!883110 d!882902))

(declare-fun d!884082 () Bool)

(declare-fun lt!1089819 () Token!9826)

(assert (=> d!884082 (contains!6482 (list!12890 (_1!20945 lt!1088716)) lt!1089819)))

(declare-fun e!2007135 () Token!9826)

(assert (=> d!884082 (= lt!1089819 e!2007135)))

(declare-fun c!541336 () Bool)

(assert (=> d!884082 (= c!541336 (= 0 0))))

(declare-fun e!2007136 () Bool)

(assert (=> d!884082 e!2007136))

(declare-fun res!1310461 () Bool)

(assert (=> d!884082 (=> (not res!1310461) (not e!2007136))))

(assert (=> d!884082 (= res!1310461 (<= 0 0))))

(assert (=> d!884082 (= (apply!8223 (list!12890 (_1!20945 lt!1088716)) 0) lt!1089819)))

(declare-fun b!3219157 () Bool)

(assert (=> b!3219157 (= e!2007136 (< 0 (size!27299 (list!12890 (_1!20945 lt!1088716)))))))

(declare-fun b!3219158 () Bool)

(assert (=> b!3219158 (= e!2007135 (head!7054 (list!12890 (_1!20945 lt!1088716))))))

(declare-fun b!3219159 () Bool)

(assert (=> b!3219159 (= e!2007135 (apply!8223 (tail!5219 (list!12890 (_1!20945 lt!1088716))) (- 0 1)))))

(assert (= (and d!884082 res!1310461) b!3219157))

(assert (= (and d!884082 c!541336) b!3219158))

(assert (= (and d!884082 (not c!541336)) b!3219159))

(assert (=> d!884082 m!3491809))

(declare-fun m!3494425 () Bool)

(assert (=> d!884082 m!3494425))

(assert (=> b!3219157 m!3491809))

(assert (=> b!3219157 m!3491811))

(assert (=> b!3219158 m!3491809))

(declare-fun m!3494427 () Bool)

(assert (=> b!3219158 m!3494427))

(assert (=> b!3219159 m!3491809))

(declare-fun m!3494429 () Bool)

(assert (=> b!3219159 m!3494429))

(assert (=> b!3219159 m!3494429))

(declare-fun m!3494431 () Bool)

(assert (=> b!3219159 m!3494431))

(assert (=> d!883168 d!884082))

(declare-fun d!884084 () Bool)

(assert (=> d!884084 (= (list!12890 (_1!20945 lt!1088716)) (list!12893 (c!540718 (_1!20945 lt!1088716))))))

(declare-fun bs!542446 () Bool)

(assert (= bs!542446 d!884084))

(declare-fun m!3494433 () Bool)

(assert (=> bs!542446 m!3494433))

(assert (=> d!883168 d!884084))

(declare-fun b!3219174 () Bool)

(declare-fun e!2007148 () Token!9826)

(declare-fun e!2007146 () Token!9826)

(assert (=> b!3219174 (= e!2007148 e!2007146)))

(declare-fun lt!1089824 () Bool)

(declare-fun appendIndex!311 (List!36331 List!36331 Int) Bool)

(assert (=> b!3219174 (= lt!1089824 (appendIndex!311 (list!12893 (left!28161 (c!540718 (_1!20945 lt!1088716)))) (list!12893 (right!28491 (c!540718 (_1!20945 lt!1088716)))) 0))))

(declare-fun c!541344 () Bool)

(assert (=> b!3219174 (= c!541344 (< 0 (size!27300 (left!28161 (c!540718 (_1!20945 lt!1088716))))))))

(declare-fun b!3219175 () Bool)

(declare-fun apply!8227 (IArray!21677 Int) Token!9826)

(assert (=> b!3219175 (= e!2007148 (apply!8227 (xs!13954 (c!540718 (_1!20945 lt!1088716))) 0))))

(declare-fun b!3219176 () Bool)

(declare-fun call!233066 () Token!9826)

(assert (=> b!3219176 (= e!2007146 call!233066)))

(declare-fun b!3219177 () Bool)

(assert (=> b!3219177 (= e!2007146 call!233066)))

(declare-fun bm!233061 () Bool)

(declare-fun c!541343 () Bool)

(assert (=> bm!233061 (= c!541343 c!541344)))

(declare-fun e!2007147 () Int)

(assert (=> bm!233061 (= call!233066 (apply!8225 (ite c!541344 (left!28161 (c!540718 (_1!20945 lt!1088716))) (right!28491 (c!540718 (_1!20945 lt!1088716)))) e!2007147))))

(declare-fun b!3219178 () Bool)

(assert (=> b!3219178 (= e!2007147 0)))

(declare-fun b!3219179 () Bool)

(assert (=> b!3219179 (= e!2007147 (- 0 (size!27300 (left!28161 (c!540718 (_1!20945 lt!1088716))))))))

(declare-fun b!3219180 () Bool)

(declare-fun e!2007145 () Bool)

(assert (=> b!3219180 (= e!2007145 (< 0 (size!27300 (c!540718 (_1!20945 lt!1088716)))))))

(declare-fun d!884086 () Bool)

(declare-fun lt!1089825 () Token!9826)

(assert (=> d!884086 (= lt!1089825 (apply!8223 (list!12893 (c!540718 (_1!20945 lt!1088716))) 0))))

(assert (=> d!884086 (= lt!1089825 e!2007148)))

(declare-fun c!541345 () Bool)

(assert (=> d!884086 (= c!541345 ((_ is Leaf!17062) (c!540718 (_1!20945 lt!1088716))))))

(assert (=> d!884086 e!2007145))

(declare-fun res!1310464 () Bool)

(assert (=> d!884086 (=> (not res!1310464) (not e!2007145))))

(assert (=> d!884086 (= res!1310464 (<= 0 0))))

(assert (=> d!884086 (= (apply!8225 (c!540718 (_1!20945 lt!1088716)) 0) lt!1089825)))

(assert (= (and d!884086 res!1310464) b!3219180))

(assert (= (and d!884086 c!541345) b!3219175))

(assert (= (and d!884086 (not c!541345)) b!3219174))

(assert (= (and b!3219174 c!541344) b!3219176))

(assert (= (and b!3219174 (not c!541344)) b!3219177))

(assert (= (or b!3219176 b!3219177) bm!233061))

(assert (= (and bm!233061 c!541343) b!3219178))

(assert (= (and bm!233061 (not c!541343)) b!3219179))

(declare-fun m!3494435 () Bool)

(assert (=> b!3219174 m!3494435))

(declare-fun m!3494437 () Bool)

(assert (=> b!3219174 m!3494437))

(assert (=> b!3219174 m!3494435))

(assert (=> b!3219174 m!3494437))

(declare-fun m!3494439 () Bool)

(assert (=> b!3219174 m!3494439))

(declare-fun m!3494441 () Bool)

(assert (=> b!3219174 m!3494441))

(assert (=> b!3219180 m!3491813))

(assert (=> b!3219179 m!3494441))

(declare-fun m!3494443 () Bool)

(assert (=> b!3219175 m!3494443))

(assert (=> d!884086 m!3494433))

(assert (=> d!884086 m!3494433))

(declare-fun m!3494445 () Bool)

(assert (=> d!884086 m!3494445))

(declare-fun m!3494447 () Bool)

(assert (=> bm!233061 m!3494447))

(assert (=> d!883168 d!884086))

(declare-fun d!884088 () Bool)

(declare-fun e!2007151 () Bool)

(assert (=> d!884088 e!2007151))

(declare-fun res!1310467 () Bool)

(assert (=> d!884088 (=> (not res!1310467) (not e!2007151))))

(declare-fun lt!1089828 () BalanceConc!21284)

(assert (=> d!884088 (= res!1310467 (= (list!12887 lt!1089828) lt!1088680))))

(declare-fun fromList!621 (List!36329) Conc!10835)

(assert (=> d!884088 (= lt!1089828 (BalanceConc!21285 (fromList!621 lt!1088680)))))

(assert (=> d!884088 (= (fromListB!1549 lt!1088680) lt!1089828)))

(declare-fun b!3219183 () Bool)

(assert (=> b!3219183 (= e!2007151 (isBalanced!3227 (fromList!621 lt!1088680)))))

(assert (= (and d!884088 res!1310467) b!3219183))

(declare-fun m!3494449 () Bool)

(assert (=> d!884088 m!3494449))

(declare-fun m!3494451 () Bool)

(assert (=> d!884088 m!3494451))

(assert (=> b!3219183 m!3494451))

(assert (=> b!3219183 m!3494451))

(declare-fun m!3494453 () Bool)

(assert (=> b!3219183 m!3494453))

(assert (=> d!883164 d!884088))

(declare-fun b!3219184 () Bool)

(declare-fun e!2007155 () Bool)

(declare-fun lt!1089829 () Bool)

(assert (=> b!3219184 (= e!2007155 (not lt!1089829))))

(declare-fun b!3219185 () Bool)

(declare-fun e!2007153 () Bool)

(declare-fun e!2007157 () Bool)

(assert (=> b!3219185 (= e!2007153 e!2007157)))

(declare-fun res!1310470 () Bool)

(assert (=> b!3219185 (=> res!1310470 e!2007157)))

(declare-fun call!233067 () Bool)

(assert (=> b!3219185 (= res!1310470 call!233067)))

(declare-fun b!3219186 () Bool)

(declare-fun res!1310475 () Bool)

(declare-fun e!2007156 () Bool)

(assert (=> b!3219186 (=> (not res!1310475) (not e!2007156))))

(assert (=> b!3219186 (= res!1310475 (isEmpty!20308 (tail!5218 (list!12887 (charsOf!3246 (_1!20946 (get!11534 lt!1088976)))))))))

(declare-fun b!3219187 () Bool)

(assert (=> b!3219187 (= e!2007156 (= (head!7053 (list!12887 (charsOf!3246 (_1!20946 (get!11534 lt!1088976))))) (c!540716 (regex!5230 (rule!7682 (h!41627 tokens!494))))))))

(declare-fun b!3219188 () Bool)

(declare-fun res!1310471 () Bool)

(declare-fun e!2007154 () Bool)

(assert (=> b!3219188 (=> res!1310471 e!2007154)))

(assert (=> b!3219188 (= res!1310471 e!2007156)))

(declare-fun res!1310468 () Bool)

(assert (=> b!3219188 (=> (not res!1310468) (not e!2007156))))

(assert (=> b!3219188 (= res!1310468 lt!1089829)))

(declare-fun b!3219189 () Bool)

(assert (=> b!3219189 (= e!2007154 e!2007153)))

(declare-fun res!1310472 () Bool)

(assert (=> b!3219189 (=> (not res!1310472) (not e!2007153))))

(assert (=> b!3219189 (= res!1310472 (not lt!1089829))))

(declare-fun b!3219191 () Bool)

(declare-fun e!2007158 () Bool)

(assert (=> b!3219191 (= e!2007158 (= lt!1089829 call!233067))))

(declare-fun bm!233062 () Bool)

(assert (=> bm!233062 (= call!233067 (isEmpty!20308 (list!12887 (charsOf!3246 (_1!20946 (get!11534 lt!1088976))))))))

(declare-fun b!3219192 () Bool)

(assert (=> b!3219192 (= e!2007157 (not (= (head!7053 (list!12887 (charsOf!3246 (_1!20946 (get!11534 lt!1088976))))) (c!540716 (regex!5230 (rule!7682 (h!41627 tokens!494)))))))))

(declare-fun b!3219193 () Bool)

(declare-fun res!1310469 () Bool)

(assert (=> b!3219193 (=> res!1310469 e!2007157)))

(assert (=> b!3219193 (= res!1310469 (not (isEmpty!20308 (tail!5218 (list!12887 (charsOf!3246 (_1!20946 (get!11534 lt!1088976))))))))))

(declare-fun b!3219194 () Bool)

(declare-fun e!2007152 () Bool)

(assert (=> b!3219194 (= e!2007152 (matchR!4623 (derivativeStep!2954 (regex!5230 (rule!7682 (h!41627 tokens!494))) (head!7053 (list!12887 (charsOf!3246 (_1!20946 (get!11534 lt!1088976)))))) (tail!5218 (list!12887 (charsOf!3246 (_1!20946 (get!11534 lt!1088976)))))))))

(declare-fun b!3219190 () Bool)

(assert (=> b!3219190 (= e!2007152 (nullable!3401 (regex!5230 (rule!7682 (h!41627 tokens!494)))))))

(declare-fun d!884090 () Bool)

(assert (=> d!884090 e!2007158))

(declare-fun c!541349 () Bool)

(assert (=> d!884090 (= c!541349 ((_ is EmptyExpr!9989) (regex!5230 (rule!7682 (h!41627 tokens!494)))))))

(assert (=> d!884090 (= lt!1089829 e!2007152)))

(declare-fun c!541348 () Bool)

(assert (=> d!884090 (= c!541348 (isEmpty!20308 (list!12887 (charsOf!3246 (_1!20946 (get!11534 lt!1088976))))))))

(assert (=> d!884090 (validRegex!4557 (regex!5230 (rule!7682 (h!41627 tokens!494))))))

(assert (=> d!884090 (= (matchR!4623 (regex!5230 (rule!7682 (h!41627 tokens!494))) (list!12887 (charsOf!3246 (_1!20946 (get!11534 lt!1088976))))) lt!1089829)))

(declare-fun b!3219195 () Bool)

(declare-fun res!1310474 () Bool)

(assert (=> b!3219195 (=> (not res!1310474) (not e!2007156))))

(assert (=> b!3219195 (= res!1310474 (not call!233067))))

(declare-fun b!3219196 () Bool)

(declare-fun res!1310473 () Bool)

(assert (=> b!3219196 (=> res!1310473 e!2007154)))

(assert (=> b!3219196 (= res!1310473 (not ((_ is ElementMatch!9989) (regex!5230 (rule!7682 (h!41627 tokens!494))))))))

(assert (=> b!3219196 (= e!2007155 e!2007154)))

(declare-fun b!3219197 () Bool)

(assert (=> b!3219197 (= e!2007158 e!2007155)))

(declare-fun c!541347 () Bool)

(assert (=> b!3219197 (= c!541347 ((_ is EmptyLang!9989) (regex!5230 (rule!7682 (h!41627 tokens!494)))))))

(assert (= (and d!884090 c!541348) b!3219190))

(assert (= (and d!884090 (not c!541348)) b!3219194))

(assert (= (and d!884090 c!541349) b!3219191))

(assert (= (and d!884090 (not c!541349)) b!3219197))

(assert (= (and b!3219197 c!541347) b!3219184))

(assert (= (and b!3219197 (not c!541347)) b!3219196))

(assert (= (and b!3219196 (not res!1310473)) b!3219188))

(assert (= (and b!3219188 res!1310468) b!3219195))

(assert (= (and b!3219195 res!1310474) b!3219186))

(assert (= (and b!3219186 res!1310475) b!3219187))

(assert (= (and b!3219188 (not res!1310471)) b!3219189))

(assert (= (and b!3219189 res!1310472) b!3219185))

(assert (= (and b!3219185 (not res!1310470)) b!3219193))

(assert (= (and b!3219193 (not res!1310469)) b!3219192))

(assert (= (or b!3219191 b!3219185 b!3219195) bm!233062))

(assert (=> d!884090 m!3491351))

(declare-fun m!3494455 () Bool)

(assert (=> d!884090 m!3494455))

(assert (=> d!884090 m!3492727))

(assert (=> b!3219193 m!3491351))

(declare-fun m!3494457 () Bool)

(assert (=> b!3219193 m!3494457))

(assert (=> b!3219193 m!3494457))

(declare-fun m!3494459 () Bool)

(assert (=> b!3219193 m!3494459))

(assert (=> b!3219187 m!3491351))

(declare-fun m!3494461 () Bool)

(assert (=> b!3219187 m!3494461))

(assert (=> b!3219190 m!3492731))

(assert (=> b!3219186 m!3491351))

(assert (=> b!3219186 m!3494457))

(assert (=> b!3219186 m!3494457))

(assert (=> b!3219186 m!3494459))

(assert (=> b!3219194 m!3491351))

(assert (=> b!3219194 m!3494461))

(assert (=> b!3219194 m!3494461))

(declare-fun m!3494463 () Bool)

(assert (=> b!3219194 m!3494463))

(assert (=> b!3219194 m!3491351))

(assert (=> b!3219194 m!3494457))

(assert (=> b!3219194 m!3494463))

(assert (=> b!3219194 m!3494457))

(declare-fun m!3494465 () Bool)

(assert (=> b!3219194 m!3494465))

(assert (=> bm!233062 m!3491351))

(assert (=> bm!233062 m!3494455))

(assert (=> b!3219192 m!3491351))

(assert (=> b!3219192 m!3494461))

(assert (=> b!3217335 d!884090))

(declare-fun d!884092 () Bool)

(assert (=> d!884092 (= (list!12887 (charsOf!3246 (_1!20946 (get!11534 lt!1088976)))) (list!12889 (c!540717 (charsOf!3246 (_1!20946 (get!11534 lt!1088976))))))))

(declare-fun bs!542447 () Bool)

(assert (= bs!542447 d!884092))

(declare-fun m!3494467 () Bool)

(assert (=> bs!542447 m!3494467))

(assert (=> b!3217335 d!884092))

(declare-fun d!884094 () Bool)

(declare-fun lt!1089830 () BalanceConc!21284)

(assert (=> d!884094 (= (list!12887 lt!1089830) (originalCharacters!5944 (_1!20946 (get!11534 lt!1088976))))))

(assert (=> d!884094 (= lt!1089830 (dynLambda!14648 (toChars!7181 (transformation!5230 (rule!7682 (_1!20946 (get!11534 lt!1088976))))) (value!169515 (_1!20946 (get!11534 lt!1088976)))))))

(assert (=> d!884094 (= (charsOf!3246 (_1!20946 (get!11534 lt!1088976))) lt!1089830)))

(declare-fun b_lambda!88511 () Bool)

(assert (=> (not b_lambda!88511) (not d!884094)))

(declare-fun tb!159037 () Bool)

(declare-fun t!240145 () Bool)

(assert (=> (and b!3216773 (= (toChars!7181 (transformation!5230 (h!41626 rules!2135))) (toChars!7181 (transformation!5230 (rule!7682 (_1!20946 (get!11534 lt!1088976)))))) t!240145) tb!159037))

(declare-fun b!3219198 () Bool)

(declare-fun e!2007159 () Bool)

(declare-fun tp!1014353 () Bool)

(assert (=> b!3219198 (= e!2007159 (and (inv!49077 (c!540717 (dynLambda!14648 (toChars!7181 (transformation!5230 (rule!7682 (_1!20946 (get!11534 lt!1088976))))) (value!169515 (_1!20946 (get!11534 lt!1088976)))))) tp!1014353))))

(declare-fun result!201458 () Bool)

(assert (=> tb!159037 (= result!201458 (and (inv!49078 (dynLambda!14648 (toChars!7181 (transformation!5230 (rule!7682 (_1!20946 (get!11534 lt!1088976))))) (value!169515 (_1!20946 (get!11534 lt!1088976))))) e!2007159))))

(assert (= tb!159037 b!3219198))

(declare-fun m!3494469 () Bool)

(assert (=> b!3219198 m!3494469))

(declare-fun m!3494471 () Bool)

(assert (=> tb!159037 m!3494471))

(assert (=> d!884094 t!240145))

(declare-fun b_and!215117 () Bool)

(assert (= b_and!215101 (and (=> t!240145 result!201458) b_and!215117)))

(declare-fun t!240147 () Bool)

(declare-fun tb!159039 () Bool)

(assert (=> (and b!3216778 (= (toChars!7181 (transformation!5230 (rule!7682 separatorToken!241))) (toChars!7181 (transformation!5230 (rule!7682 (_1!20946 (get!11534 lt!1088976)))))) t!240147) tb!159039))

(declare-fun result!201460 () Bool)

(assert (= result!201460 result!201458))

(assert (=> d!884094 t!240147))

(declare-fun b_and!215119 () Bool)

(assert (= b_and!215105 (and (=> t!240147 result!201460) b_and!215119)))

(declare-fun t!240149 () Bool)

(declare-fun tb!159041 () Bool)

(assert (=> (and b!3217774 (= (toChars!7181 (transformation!5230 (rule!7682 (h!41627 (t!239822 tokens!494))))) (toChars!7181 (transformation!5230 (rule!7682 (_1!20946 (get!11534 lt!1088976)))))) t!240149) tb!159041))

(declare-fun result!201462 () Bool)

(assert (= result!201462 result!201458))

(assert (=> d!884094 t!240149))

(declare-fun b_and!215121 () Bool)

(assert (= b_and!215099 (and (=> t!240149 result!201462) b_and!215121)))

(declare-fun tb!159043 () Bool)

(declare-fun t!240151 () Bool)

(assert (=> (and b!3216775 (= (toChars!7181 (transformation!5230 (rule!7682 (h!41627 tokens!494)))) (toChars!7181 (transformation!5230 (rule!7682 (_1!20946 (get!11534 lt!1088976)))))) t!240151) tb!159043))

(declare-fun result!201464 () Bool)

(assert (= result!201464 result!201458))

(assert (=> d!884094 t!240151))

(declare-fun b_and!215123 () Bool)

(assert (= b_and!215097 (and (=> t!240151 result!201464) b_and!215123)))

(declare-fun t!240153 () Bool)

(declare-fun tb!159045 () Bool)

(assert (=> (and b!3217757 (= (toChars!7181 (transformation!5230 (h!41626 (t!239821 rules!2135)))) (toChars!7181 (transformation!5230 (rule!7682 (_1!20946 (get!11534 lt!1088976)))))) t!240153) tb!159045))

(declare-fun result!201466 () Bool)

(assert (= result!201466 result!201458))

(assert (=> d!884094 t!240153))

(declare-fun b_and!215125 () Bool)

(assert (= b_and!215103 (and (=> t!240153 result!201466) b_and!215125)))

(declare-fun m!3494473 () Bool)

(assert (=> d!884094 m!3494473))

(declare-fun m!3494475 () Bool)

(assert (=> d!884094 m!3494475))

(assert (=> b!3217335 d!884094))

(assert (=> b!3217335 d!883458))

(declare-fun d!884096 () Bool)

(assert (=> d!884096 (= (inv!49078 (dynLambda!14648 (toChars!7181 (transformation!5230 (rule!7682 (h!41627 (t!239822 tokens!494))))) (value!169515 (h!41627 (t!239822 tokens!494))))) (isBalanced!3227 (c!540717 (dynLambda!14648 (toChars!7181 (transformation!5230 (rule!7682 (h!41627 (t!239822 tokens!494))))) (value!169515 (h!41627 (t!239822 tokens!494)))))))))

(declare-fun bs!542448 () Bool)

(assert (= bs!542448 d!884096))

(declare-fun m!3494477 () Bool)

(assert (=> bs!542448 m!3494477))

(assert (=> tb!158821 d!884096))

(declare-fun d!884098 () Bool)

(assert (=> d!884098 (= (list!12887 (dynLambda!14648 (toChars!7181 (transformation!5230 (rule!7682 separatorToken!241))) (value!169515 separatorToken!241))) (list!12889 (c!540717 (dynLambda!14648 (toChars!7181 (transformation!5230 (rule!7682 separatorToken!241))) (value!169515 separatorToken!241)))))))

(declare-fun bs!542449 () Bool)

(assert (= bs!542449 d!884098))

(declare-fun m!3494479 () Bool)

(assert (=> bs!542449 m!3494479))

(assert (=> b!3216825 d!884098))

(assert (=> b!3217141 d!883432))

(declare-fun d!884100 () Bool)

(declare-fun lt!1089831 () Int)

(assert (=> d!884100 (= lt!1089831 (size!27299 (list!12890 lt!1088685)))))

(assert (=> d!884100 (= lt!1089831 (size!27300 (c!540718 lt!1088685)))))

(assert (=> d!884100 (= (size!27295 lt!1088685) lt!1089831)))

(declare-fun bs!542450 () Bool)

(assert (= bs!542450 d!884100))

(assert (=> bs!542450 m!3491687))

(assert (=> bs!542450 m!3491687))

(declare-fun m!3494481 () Bool)

(assert (=> bs!542450 m!3494481))

(declare-fun m!3494483 () Bool)

(assert (=> bs!542450 m!3494483))

(assert (=> d!883150 d!884100))

(declare-fun d!884102 () Bool)

(assert (=> d!884102 (= (dropList!1081 lt!1088685 0) (drop!1864 (list!12893 (c!540718 lt!1088685)) 0))))

(declare-fun bs!542451 () Bool)

(assert (= bs!542451 d!884102))

(assert (=> bs!542451 m!3492539))

(assert (=> bs!542451 m!3492539))

(declare-fun m!3494485 () Bool)

(assert (=> bs!542451 m!3494485))

(assert (=> d!883150 d!884102))

(assert (=> d!883150 d!883866))

(declare-fun d!884104 () Bool)

(declare-fun lt!1089832 () List!36329)

(assert (=> d!884104 (= lt!1089832 (++!8698 (list!12887 (BalanceConc!21285 Empty!10835)) (printList!1369 thiss!18206 (dropList!1081 lt!1088685 0))))))

(declare-fun e!2007160 () List!36329)

(assert (=> d!884104 (= lt!1089832 e!2007160)))

(declare-fun c!541350 () Bool)

(assert (=> d!884104 (= c!541350 ((_ is Cons!36207) (dropList!1081 lt!1088685 0)))))

(assert (=> d!884104 (= (printListTailRec!564 thiss!18206 (dropList!1081 lt!1088685 0) (list!12887 (BalanceConc!21285 Empty!10835))) lt!1089832)))

(declare-fun b!3219199 () Bool)

(assert (=> b!3219199 (= e!2007160 (printListTailRec!564 thiss!18206 (t!239822 (dropList!1081 lt!1088685 0)) (++!8698 (list!12887 (BalanceConc!21285 Empty!10835)) (list!12887 (charsOf!3246 (h!41627 (dropList!1081 lt!1088685 0)))))))))

(declare-fun lt!1089835 () List!36329)

(assert (=> b!3219199 (= lt!1089835 (list!12887 (charsOf!3246 (h!41627 (dropList!1081 lt!1088685 0)))))))

(declare-fun lt!1089836 () List!36329)

(assert (=> b!3219199 (= lt!1089836 (printList!1369 thiss!18206 (t!239822 (dropList!1081 lt!1088685 0))))))

(declare-fun lt!1089833 () Unit!50722)

(assert (=> b!3219199 (= lt!1089833 (lemmaConcatAssociativity!1756 (list!12887 (BalanceConc!21285 Empty!10835)) lt!1089835 lt!1089836))))

(assert (=> b!3219199 (= (++!8698 (++!8698 (list!12887 (BalanceConc!21285 Empty!10835)) lt!1089835) lt!1089836) (++!8698 (list!12887 (BalanceConc!21285 Empty!10835)) (++!8698 lt!1089835 lt!1089836)))))

(declare-fun lt!1089834 () Unit!50722)

(assert (=> b!3219199 (= lt!1089834 lt!1089833)))

(declare-fun b!3219200 () Bool)

(assert (=> b!3219200 (= e!2007160 (list!12887 (BalanceConc!21285 Empty!10835)))))

(assert (= (and d!884104 c!541350) b!3219199))

(assert (= (and d!884104 (not c!541350)) b!3219200))

(assert (=> d!884104 m!3491923))

(declare-fun m!3494487 () Bool)

(assert (=> d!884104 m!3494487))

(assert (=> d!884104 m!3490675))

(assert (=> d!884104 m!3494487))

(declare-fun m!3494489 () Bool)

(assert (=> d!884104 m!3494489))

(declare-fun m!3494491 () Bool)

(assert (=> b!3219199 m!3494491))

(declare-fun m!3494493 () Bool)

(assert (=> b!3219199 m!3494493))

(declare-fun m!3494495 () Bool)

(assert (=> b!3219199 m!3494495))

(declare-fun m!3494497 () Bool)

(assert (=> b!3219199 m!3494497))

(declare-fun m!3494499 () Bool)

(assert (=> b!3219199 m!3494499))

(declare-fun m!3494501 () Bool)

(assert (=> b!3219199 m!3494501))

(declare-fun m!3494503 () Bool)

(assert (=> b!3219199 m!3494503))

(assert (=> b!3219199 m!3490675))

(declare-fun m!3494505 () Bool)

(assert (=> b!3219199 m!3494505))

(declare-fun m!3494507 () Bool)

(assert (=> b!3219199 m!3494507))

(assert (=> b!3219199 m!3494505))

(assert (=> b!3219199 m!3494491))

(assert (=> b!3219199 m!3490675))

(assert (=> b!3219199 m!3494499))

(assert (=> b!3219199 m!3490675))

(assert (=> b!3219199 m!3494493))

(assert (=> b!3219199 m!3494495))

(assert (=> b!3219199 m!3490675))

(declare-fun m!3494509 () Bool)

(assert (=> b!3219199 m!3494509))

(assert (=> d!883150 d!884104))

(declare-fun d!884106 () Bool)

(assert (=> d!884106 (= (list!12887 lt!1089069) (list!12889 (c!540717 lt!1089069)))))

(declare-fun bs!542452 () Bool)

(assert (= bs!542452 d!884106))

(declare-fun m!3494511 () Bool)

(assert (=> bs!542452 m!3494511))

(assert (=> d!883150 d!884106))

(declare-fun d!884108 () Bool)

(declare-fun c!541351 () Bool)

(assert (=> d!884108 (= c!541351 ((_ is Nil!36205) lt!1089095))))

(declare-fun e!2007161 () (InoxSet C!20164))

(assert (=> d!884108 (= (content!4899 lt!1089095) e!2007161)))

(declare-fun b!3219201 () Bool)

(assert (=> b!3219201 (= e!2007161 ((as const (Array C!20164 Bool)) false))))

(declare-fun b!3219202 () Bool)

(assert (=> b!3219202 (= e!2007161 ((_ map or) (store ((as const (Array C!20164 Bool)) false) (h!41625 lt!1089095) true) (content!4899 (t!239820 lt!1089095))))))

(assert (= (and d!884108 c!541351) b!3219201))

(assert (= (and d!884108 (not c!541351)) b!3219202))

(declare-fun m!3494513 () Bool)

(assert (=> b!3219202 m!3494513))

(declare-fun m!3494515 () Bool)

(assert (=> b!3219202 m!3494515))

(assert (=> d!883198 d!884108))

(assert (=> d!883198 d!883516))

(declare-fun d!884110 () Bool)

(declare-fun c!541352 () Bool)

(assert (=> d!884110 (= c!541352 ((_ is Nil!36205) lt!1088710))))

(declare-fun e!2007162 () (InoxSet C!20164))

(assert (=> d!884110 (= (content!4899 lt!1088710) e!2007162)))

(declare-fun b!3219203 () Bool)

(assert (=> b!3219203 (= e!2007162 ((as const (Array C!20164 Bool)) false))))

(declare-fun b!3219204 () Bool)

(assert (=> b!3219204 (= e!2007162 ((_ map or) (store ((as const (Array C!20164 Bool)) false) (h!41625 lt!1088710) true) (content!4899 (t!239820 lt!1088710))))))

(assert (= (and d!884110 c!541352) b!3219203))

(assert (= (and d!884110 (not c!541352)) b!3219204))

(declare-fun m!3494517 () Bool)

(assert (=> b!3219204 m!3494517))

(declare-fun m!3494519 () Bool)

(assert (=> b!3219204 m!3494519))

(assert (=> d!883198 d!884110))

(declare-fun d!884112 () Bool)

(assert (=> d!884112 (= (isEmpty!20308 (list!12887 (_2!20945 lt!1088707))) ((_ is Nil!36205) (list!12887 (_2!20945 lt!1088707))))))

(assert (=> d!883178 d!884112))

(declare-fun d!884114 () Bool)

(assert (=> d!884114 (= (list!12887 (_2!20945 lt!1088707)) (list!12889 (c!540717 (_2!20945 lt!1088707))))))

(declare-fun bs!542453 () Bool)

(assert (= bs!542453 d!884114))

(declare-fun m!3494521 () Bool)

(assert (=> bs!542453 m!3494521))

(assert (=> d!883178 d!884114))

(declare-fun d!884116 () Bool)

(declare-fun lt!1089837 () Bool)

(assert (=> d!884116 (= lt!1089837 (isEmpty!20308 (list!12889 (c!540717 (_2!20945 lt!1088707)))))))

(assert (=> d!884116 (= lt!1089837 (= (size!27303 (c!540717 (_2!20945 lt!1088707))) 0))))

(assert (=> d!884116 (= (isEmpty!20310 (c!540717 (_2!20945 lt!1088707))) lt!1089837)))

(declare-fun bs!542454 () Bool)

(assert (= bs!542454 d!884116))

(assert (=> bs!542454 m!3494521))

(assert (=> bs!542454 m!3494521))

(declare-fun m!3494523 () Bool)

(assert (=> bs!542454 m!3494523))

(declare-fun m!3494525 () Bool)

(assert (=> bs!542454 m!3494525))

(assert (=> d!883178 d!884116))

(declare-fun d!884118 () Bool)

(assert (=> d!884118 (= (isEmpty!20311 lt!1088694) (not ((_ is Some!7162) lt!1088694)))))

(assert (=> d!883100 d!884118))

(declare-fun d!884120 () Bool)

(assert (=> d!884120 (= (isEmpty!20311 lt!1089078) (not ((_ is Some!7162) lt!1089078)))))

(assert (=> d!883162 d!884120))

(assert (=> d!883162 d!882902))

(declare-fun d!884122 () Bool)

(declare-fun lt!1089840 () Int)

(assert (=> d!884122 (>= lt!1089840 0)))

(declare-fun e!2007165 () Int)

(assert (=> d!884122 (= lt!1089840 e!2007165)))

(declare-fun c!541355 () Bool)

(assert (=> d!884122 (= c!541355 ((_ is Nil!36207) (list!12890 (_1!20945 lt!1088716))))))

(assert (=> d!884122 (= (size!27299 (list!12890 (_1!20945 lt!1088716))) lt!1089840)))

(declare-fun b!3219209 () Bool)

(assert (=> b!3219209 (= e!2007165 0)))

(declare-fun b!3219210 () Bool)

(assert (=> b!3219210 (= e!2007165 (+ 1 (size!27299 (t!239822 (list!12890 (_1!20945 lt!1088716))))))))

(assert (= (and d!884122 c!541355) b!3219209))

(assert (= (and d!884122 (not c!541355)) b!3219210))

(declare-fun m!3494527 () Bool)

(assert (=> b!3219210 m!3494527))

(assert (=> d!883114 d!884122))

(assert (=> d!883114 d!884084))

(declare-fun d!884124 () Bool)

(declare-fun lt!1089843 () Int)

(assert (=> d!884124 (= lt!1089843 (size!27299 (list!12893 (c!540718 (_1!20945 lt!1088716)))))))

(assert (=> d!884124 (= lt!1089843 (ite ((_ is Empty!10836) (c!540718 (_1!20945 lt!1088716))) 0 (ite ((_ is Leaf!17062) (c!540718 (_1!20945 lt!1088716))) (csize!21903 (c!540718 (_1!20945 lt!1088716))) (csize!21902 (c!540718 (_1!20945 lt!1088716))))))))

(assert (=> d!884124 (= (size!27300 (c!540718 (_1!20945 lt!1088716))) lt!1089843)))

(declare-fun bs!542455 () Bool)

(assert (= bs!542455 d!884124))

(assert (=> bs!542455 m!3494433))

(assert (=> bs!542455 m!3494433))

(declare-fun m!3494529 () Bool)

(assert (=> bs!542455 m!3494529))

(assert (=> d!883114 d!884124))

(declare-fun d!884126 () Bool)

(declare-fun lt!1089844 () Int)

(assert (=> d!884126 (>= lt!1089844 0)))

(declare-fun e!2007166 () Int)

(assert (=> d!884126 (= lt!1089844 e!2007166)))

(declare-fun c!541356 () Bool)

(assert (=> d!884126 (= c!541356 ((_ is Nil!36205) lt!1088739))))

(assert (=> d!884126 (= (size!27294 lt!1088739) lt!1089844)))

(declare-fun b!3219211 () Bool)

(assert (=> b!3219211 (= e!2007166 0)))

(declare-fun b!3219212 () Bool)

(assert (=> b!3219212 (= e!2007166 (+ 1 (size!27294 (t!239820 lt!1088739))))))

(assert (= (and d!884126 c!541356) b!3219211))

(assert (= (and d!884126 (not c!541356)) b!3219212))

(declare-fun m!3494531 () Bool)

(assert (=> b!3219212 m!3494531))

(assert (=> b!3216880 d!884126))

(assert (=> b!3216880 d!883152))

(assert (=> b!3216880 d!883756))

(declare-fun d!884128 () Bool)

(assert (=> d!884128 (= (isDefined!5564 (getRuleFromTag!935 thiss!18206 rules!2135 (tag!5760 (rule!7682 separatorToken!241)))) (not (isEmpty!20311 (getRuleFromTag!935 thiss!18206 rules!2135 (tag!5760 (rule!7682 separatorToken!241))))))))

(declare-fun bs!542456 () Bool)

(assert (= bs!542456 d!884128))

(assert (=> bs!542456 m!3490393))

(declare-fun m!3494533 () Bool)

(assert (=> bs!542456 m!3494533))

(assert (=> d!882922 d!884128))

(assert (=> d!882922 d!883118))

(declare-fun d!884130 () Bool)

(declare-fun e!2007167 () Bool)

(assert (=> d!884130 e!2007167))

(declare-fun res!1310476 () Bool)

(assert (=> d!884130 (=> (not res!1310476) (not e!2007167))))

(assert (=> d!884130 (= res!1310476 (isDefined!5564 (getRuleFromTag!935 thiss!18206 rules!2135 (tag!5760 (rule!7682 separatorToken!241)))))))

(assert (=> d!884130 true))

(declare-fun _$52!1587 () Unit!50722)

(assert (=> d!884130 (= (choose!18787 thiss!18206 rules!2135 lt!1088705 separatorToken!241) _$52!1587)))

(declare-fun b!3219213 () Bool)

(declare-fun res!1310477 () Bool)

(assert (=> b!3219213 (=> (not res!1310477) (not e!2007167))))

(assert (=> b!3219213 (= res!1310477 (matchR!4623 (regex!5230 (get!11532 (getRuleFromTag!935 thiss!18206 rules!2135 (tag!5760 (rule!7682 separatorToken!241))))) (list!12887 (charsOf!3246 separatorToken!241))))))

(declare-fun b!3219214 () Bool)

(assert (=> b!3219214 (= e!2007167 (= (rule!7682 separatorToken!241) (get!11532 (getRuleFromTag!935 thiss!18206 rules!2135 (tag!5760 (rule!7682 separatorToken!241))))))))

(assert (= (and d!884130 res!1310476) b!3219213))

(assert (= (and b!3219213 res!1310477) b!3219214))

(assert (=> d!884130 m!3490393))

(assert (=> d!884130 m!3490393))

(assert (=> d!884130 m!3490973))

(assert (=> b!3219213 m!3490481))

(assert (=> b!3219213 m!3490979))

(assert (=> b!3219213 m!3490393))

(assert (=> b!3219213 m!3490977))

(assert (=> b!3219213 m!3490393))

(assert (=> b!3219213 m!3490479))

(assert (=> b!3219213 m!3490479))

(assert (=> b!3219213 m!3490481))

(assert (=> b!3219214 m!3490393))

(assert (=> b!3219214 m!3490393))

(assert (=> b!3219214 m!3490977))

(assert (=> d!882922 d!884130))

(assert (=> d!882922 d!882902))

(declare-fun d!884132 () Bool)

(assert (=> d!884132 (= (get!11532 (getRuleFromTag!935 thiss!18206 rules!2135 (tag!5760 (rule!7682 (h!41627 tokens!494))))) (v!35732 (getRuleFromTag!935 thiss!18206 rules!2135 (tag!5760 (rule!7682 (h!41627 tokens!494))))))))

(assert (=> b!3217164 d!884132))

(assert (=> b!3217164 d!883110))

(declare-fun d!884134 () Bool)

(declare-fun c!541357 () Bool)

(assert (=> d!884134 (= c!541357 ((_ is Nil!36205) lt!1089081))))

(declare-fun e!2007168 () (InoxSet C!20164))

(assert (=> d!884134 (= (content!4899 lt!1089081) e!2007168)))

(declare-fun b!3219215 () Bool)

(assert (=> b!3219215 (= e!2007168 ((as const (Array C!20164 Bool)) false))))

(declare-fun b!3219216 () Bool)

(assert (=> b!3219216 (= e!2007168 ((_ map or) (store ((as const (Array C!20164 Bool)) false) (h!41625 lt!1089081) true) (content!4899 (t!239820 lt!1089081))))))

(assert (= (and d!884134 c!541357) b!3219215))

(assert (= (and d!884134 (not c!541357)) b!3219216))

(declare-fun m!3494535 () Bool)

(assert (=> b!3219216 m!3494535))

(declare-fun m!3494537 () Bool)

(assert (=> b!3219216 m!3494537))

(assert (=> d!883172 d!884134))

(declare-fun d!884136 () Bool)

(declare-fun c!541358 () Bool)

(assert (=> d!884136 (= c!541358 ((_ is Nil!36205) lt!1088698))))

(declare-fun e!2007169 () (InoxSet C!20164))

(assert (=> d!884136 (= (content!4899 lt!1088698) e!2007169)))

(declare-fun b!3219217 () Bool)

(assert (=> b!3219217 (= e!2007169 ((as const (Array C!20164 Bool)) false))))

(declare-fun b!3219218 () Bool)

(assert (=> b!3219218 (= e!2007169 ((_ map or) (store ((as const (Array C!20164 Bool)) false) (h!41625 lt!1088698) true) (content!4899 (t!239820 lt!1088698))))))

(assert (= (and d!884136 c!541358) b!3219217))

(assert (= (and d!884136 (not c!541358)) b!3219218))

(declare-fun m!3494539 () Bool)

(assert (=> b!3219218 m!3494539))

(declare-fun m!3494541 () Bool)

(assert (=> b!3219218 m!3494541))

(assert (=> d!883172 d!884136))

(declare-fun d!884138 () Bool)

(declare-fun c!541359 () Bool)

(assert (=> d!884138 (= c!541359 ((_ is Nil!36205) lt!1088681))))

(declare-fun e!2007170 () (InoxSet C!20164))

(assert (=> d!884138 (= (content!4899 lt!1088681) e!2007170)))

(declare-fun b!3219219 () Bool)

(assert (=> b!3219219 (= e!2007170 ((as const (Array C!20164 Bool)) false))))

(declare-fun b!3219220 () Bool)

(assert (=> b!3219220 (= e!2007170 ((_ map or) (store ((as const (Array C!20164 Bool)) false) (h!41625 lt!1088681) true) (content!4899 (t!239820 lt!1088681))))))

(assert (= (and d!884138 c!541359) b!3219219))

(assert (= (and d!884138 (not c!541359)) b!3219220))

(declare-fun m!3494543 () Bool)

(assert (=> b!3219220 m!3494543))

(declare-fun m!3494545 () Bool)

(assert (=> b!3219220 m!3494545))

(assert (=> d!883172 d!884138))

(declare-fun d!884140 () Bool)

(declare-fun lt!1089845 () Bool)

(assert (=> d!884140 (= lt!1089845 (isEmpty!20308 (list!12887 (_2!20945 lt!1088813))))))

(assert (=> d!884140 (= lt!1089845 (isEmpty!20310 (c!540717 (_2!20945 lt!1088813))))))

(assert (=> d!884140 (= (isEmpty!20304 (_2!20945 lt!1088813)) lt!1089845)))

(declare-fun bs!542457 () Bool)

(assert (= bs!542457 d!884140))

(declare-fun m!3494547 () Bool)

(assert (=> bs!542457 m!3494547))

(assert (=> bs!542457 m!3494547))

(declare-fun m!3494549 () Bool)

(assert (=> bs!542457 m!3494549))

(declare-fun m!3494551 () Bool)

(assert (=> bs!542457 m!3494551))

(assert (=> b!3217081 d!884140))

(declare-fun d!884142 () Bool)

(declare-fun res!1310482 () Bool)

(declare-fun e!2007172 () Bool)

(assert (=> d!884142 (=> res!1310482 e!2007172)))

(assert (=> d!884142 (= res!1310482 (not ((_ is Node!10836) (c!540718 lt!1089045))))))

(assert (=> d!884142 (= (isBalanced!3224 (c!540718 lt!1089045)) e!2007172)))

(declare-fun b!3219221 () Bool)

(declare-fun e!2007171 () Bool)

(assert (=> b!3219221 (= e!2007171 (not (isEmpty!20317 (right!28491 (c!540718 lt!1089045)))))))

(declare-fun b!3219222 () Bool)

(declare-fun res!1310481 () Bool)

(assert (=> b!3219222 (=> (not res!1310481) (not e!2007171))))

(assert (=> b!3219222 (= res!1310481 (not (isEmpty!20317 (left!28161 (c!540718 lt!1089045)))))))

(declare-fun b!3219223 () Bool)

(declare-fun res!1310478 () Bool)

(assert (=> b!3219223 (=> (not res!1310478) (not e!2007171))))

(assert (=> b!3219223 (= res!1310478 (isBalanced!3224 (left!28161 (c!540718 lt!1089045))))))

(declare-fun b!3219224 () Bool)

(assert (=> b!3219224 (= e!2007172 e!2007171)))

(declare-fun res!1310483 () Bool)

(assert (=> b!3219224 (=> (not res!1310483) (not e!2007171))))

(assert (=> b!3219224 (= res!1310483 (<= (- 1) (- (height!1562 (left!28161 (c!540718 lt!1089045))) (height!1562 (right!28491 (c!540718 lt!1089045))))))))

(declare-fun b!3219225 () Bool)

(declare-fun res!1310479 () Bool)

(assert (=> b!3219225 (=> (not res!1310479) (not e!2007171))))

(assert (=> b!3219225 (= res!1310479 (isBalanced!3224 (right!28491 (c!540718 lt!1089045))))))

(declare-fun b!3219226 () Bool)

(declare-fun res!1310480 () Bool)

(assert (=> b!3219226 (=> (not res!1310480) (not e!2007171))))

(assert (=> b!3219226 (= res!1310480 (<= (- (height!1562 (left!28161 (c!540718 lt!1089045))) (height!1562 (right!28491 (c!540718 lt!1089045)))) 1))))

(assert (= (and d!884142 (not res!1310482)) b!3219224))

(assert (= (and b!3219224 res!1310483) b!3219226))

(assert (= (and b!3219226 res!1310480) b!3219223))

(assert (= (and b!3219223 res!1310478) b!3219225))

(assert (= (and b!3219225 res!1310479) b!3219222))

(assert (= (and b!3219222 res!1310481) b!3219221))

(declare-fun m!3494553 () Bool)

(assert (=> b!3219221 m!3494553))

(declare-fun m!3494555 () Bool)

(assert (=> b!3219222 m!3494555))

(declare-fun m!3494557 () Bool)

(assert (=> b!3219226 m!3494557))

(declare-fun m!3494559 () Bool)

(assert (=> b!3219226 m!3494559))

(assert (=> b!3219224 m!3494557))

(assert (=> b!3219224 m!3494559))

(declare-fun m!3494561 () Bool)

(assert (=> b!3219223 m!3494561))

(declare-fun m!3494563 () Bool)

(assert (=> b!3219225 m!3494563))

(assert (=> b!3217566 d!884142))

(declare-fun d!884144 () Bool)

(assert (=> d!884144 (= (isEmpty!20308 (tail!5218 lt!1088698)) ((_ is Nil!36205) (tail!5218 lt!1088698)))))

(assert (=> b!3216926 d!884144))

(declare-fun d!884146 () Bool)

(assert (=> d!884146 (= (tail!5218 lt!1088698) (t!239820 lt!1088698))))

(assert (=> b!3216926 d!884146))

(declare-fun d!884148 () Bool)

(assert (=> d!884148 (dynLambda!14651 lambda!117651 (h!41627 (t!239822 tokens!494)))))

(assert (=> d!884148 true))

(declare-fun _$7!1111 () Unit!50722)

(assert (=> d!884148 (= (choose!18786 tokens!494 lambda!117651 (h!41627 (t!239822 tokens!494))) _$7!1111)))

(declare-fun b_lambda!88513 () Bool)

(assert (=> (not b_lambda!88513) (not d!884148)))

(declare-fun bs!542458 () Bool)

(assert (= bs!542458 d!884148))

(assert (=> bs!542458 m!3491887))

(assert (=> d!883142 d!884148))

(declare-fun d!884150 () Bool)

(declare-fun res!1310484 () Bool)

(declare-fun e!2007173 () Bool)

(assert (=> d!884150 (=> res!1310484 e!2007173)))

(assert (=> d!884150 (= res!1310484 ((_ is Nil!36207) tokens!494))))

(assert (=> d!884150 (= (forall!7406 tokens!494 lambda!117651) e!2007173)))

(declare-fun b!3219227 () Bool)

(declare-fun e!2007174 () Bool)

(assert (=> b!3219227 (= e!2007173 e!2007174)))

(declare-fun res!1310485 () Bool)

(assert (=> b!3219227 (=> (not res!1310485) (not e!2007174))))

(assert (=> b!3219227 (= res!1310485 (dynLambda!14651 lambda!117651 (h!41627 tokens!494)))))

(declare-fun b!3219228 () Bool)

(assert (=> b!3219228 (= e!2007174 (forall!7406 (t!239822 tokens!494) lambda!117651))))

(assert (= (and d!884150 (not res!1310484)) b!3219227))

(assert (= (and b!3219227 res!1310485) b!3219228))

(declare-fun b_lambda!88515 () Bool)

(assert (=> (not b_lambda!88515) (not b!3219227)))

(declare-fun m!3494565 () Bool)

(assert (=> b!3219227 m!3494565))

(declare-fun m!3494567 () Bool)

(assert (=> b!3219228 m!3494567))

(assert (=> d!883142 d!884150))

(declare-fun d!884152 () Bool)

(assert (=> d!884152 (= (isEmpty!20312 lt!1088911) (not ((_ is Some!7163) lt!1088911)))))

(assert (=> d!882932 d!884152))

(declare-fun b!3219237 () Bool)

(declare-fun e!2007181 () Bool)

(declare-fun e!2007183 () Bool)

(assert (=> b!3219237 (= e!2007181 e!2007183)))

(declare-fun res!1310497 () Bool)

(assert (=> b!3219237 (=> (not res!1310497) (not e!2007183))))

(assert (=> b!3219237 (= res!1310497 (not ((_ is Nil!36205) lt!1088678)))))

(declare-fun b!3219239 () Bool)

(assert (=> b!3219239 (= e!2007183 (isPrefix!2788 (tail!5218 lt!1088678) (tail!5218 lt!1088678)))))

(declare-fun b!3219240 () Bool)

(declare-fun e!2007182 () Bool)

(assert (=> b!3219240 (= e!2007182 (>= (size!27294 lt!1088678) (size!27294 lt!1088678)))))

(declare-fun d!884154 () Bool)

(assert (=> d!884154 e!2007182))

(declare-fun res!1310494 () Bool)

(assert (=> d!884154 (=> res!1310494 e!2007182)))

(declare-fun lt!1089848 () Bool)

(assert (=> d!884154 (= res!1310494 (not lt!1089848))))

(assert (=> d!884154 (= lt!1089848 e!2007181)))

(declare-fun res!1310495 () Bool)

(assert (=> d!884154 (=> res!1310495 e!2007181)))

(assert (=> d!884154 (= res!1310495 ((_ is Nil!36205) lt!1088678))))

(assert (=> d!884154 (= (isPrefix!2788 lt!1088678 lt!1088678) lt!1089848)))

(declare-fun b!3219238 () Bool)

(declare-fun res!1310496 () Bool)

(assert (=> b!3219238 (=> (not res!1310496) (not e!2007183))))

(assert (=> b!3219238 (= res!1310496 (= (head!7053 lt!1088678) (head!7053 lt!1088678)))))

(assert (= (and d!884154 (not res!1310495)) b!3219237))

(assert (= (and b!3219237 res!1310497) b!3219238))

(assert (= (and b!3219238 res!1310496) b!3219239))

(assert (= (and d!884154 (not res!1310494)) b!3219240))

(declare-fun m!3494569 () Bool)

(assert (=> b!3219239 m!3494569))

(assert (=> b!3219239 m!3494569))

(assert (=> b!3219239 m!3494569))

(assert (=> b!3219239 m!3494569))

(declare-fun m!3494571 () Bool)

(assert (=> b!3219239 m!3494571))

(assert (=> b!3219240 m!3491069))

(assert (=> b!3219240 m!3491069))

(declare-fun m!3494573 () Bool)

(assert (=> b!3219238 m!3494573))

(assert (=> b!3219238 m!3494573))

(assert (=> d!882932 d!884154))

(declare-fun d!884156 () Bool)

(assert (=> d!884156 (isPrefix!2788 lt!1088678 lt!1088678)))

(declare-fun lt!1089851 () Unit!50722)

(declare-fun choose!18806 (List!36329 List!36329) Unit!50722)

(assert (=> d!884156 (= lt!1089851 (choose!18806 lt!1088678 lt!1088678))))

(assert (=> d!884156 (= (lemmaIsPrefixRefl!1747 lt!1088678 lt!1088678) lt!1089851)))

(declare-fun bs!542459 () Bool)

(assert (= bs!542459 d!884156))

(assert (=> bs!542459 m!3491053))

(declare-fun m!3494575 () Bool)

(assert (=> bs!542459 m!3494575))

(assert (=> d!882932 d!884156))

(declare-fun d!884158 () Bool)

(assert (=> d!884158 true))

(declare-fun lt!1089854 () Bool)

(declare-fun lambda!117694 () Int)

(declare-fun forall!7410 (List!36330 Int) Bool)

(assert (=> d!884158 (= lt!1089854 (forall!7410 rules!2135 lambda!117694))))

(declare-fun e!2007189 () Bool)

(assert (=> d!884158 (= lt!1089854 e!2007189)))

(declare-fun res!1310502 () Bool)

(assert (=> d!884158 (=> res!1310502 e!2007189)))

(assert (=> d!884158 (= res!1310502 (not ((_ is Cons!36206) rules!2135)))))

(assert (=> d!884158 (= (rulesValidInductive!1781 thiss!18206 rules!2135) lt!1089854)))

(declare-fun b!3219245 () Bool)

(declare-fun e!2007188 () Bool)

(assert (=> b!3219245 (= e!2007189 e!2007188)))

(declare-fun res!1310503 () Bool)

(assert (=> b!3219245 (=> (not res!1310503) (not e!2007188))))

(assert (=> b!3219245 (= res!1310503 (ruleValid!1652 thiss!18206 (h!41626 rules!2135)))))

(declare-fun b!3219246 () Bool)

(assert (=> b!3219246 (= e!2007188 (rulesValidInductive!1781 thiss!18206 (t!239821 rules!2135)))))

(assert (= (and d!884158 (not res!1310502)) b!3219245))

(assert (= (and b!3219245 res!1310503) b!3219246))

(declare-fun m!3494577 () Bool)

(assert (=> d!884158 m!3494577))

(declare-fun m!3494579 () Bool)

(assert (=> b!3219245 m!3494579))

(declare-fun m!3494581 () Bool)

(assert (=> b!3219246 m!3494581))

(assert (=> d!882932 d!884158))

(assert (=> b!3217718 d!883156))

(declare-fun d!884160 () Bool)

(declare-fun c!541362 () Bool)

(assert (=> d!884160 (= c!541362 ((_ is Node!10835) (c!540717 (dynLambda!14648 (toChars!7181 (transformation!5230 (rule!7682 separatorToken!241))) (value!169515 separatorToken!241)))))))

(declare-fun e!2007194 () Bool)

(assert (=> d!884160 (= (inv!49077 (c!540717 (dynLambda!14648 (toChars!7181 (transformation!5230 (rule!7682 separatorToken!241))) (value!169515 separatorToken!241)))) e!2007194)))

(declare-fun b!3219255 () Bool)

(declare-fun inv!49083 (Conc!10835) Bool)

(assert (=> b!3219255 (= e!2007194 (inv!49083 (c!540717 (dynLambda!14648 (toChars!7181 (transformation!5230 (rule!7682 separatorToken!241))) (value!169515 separatorToken!241)))))))

(declare-fun b!3219256 () Bool)

(declare-fun e!2007195 () Bool)

(assert (=> b!3219256 (= e!2007194 e!2007195)))

(declare-fun res!1310506 () Bool)

(assert (=> b!3219256 (= res!1310506 (not ((_ is Leaf!17061) (c!540717 (dynLambda!14648 (toChars!7181 (transformation!5230 (rule!7682 separatorToken!241))) (value!169515 separatorToken!241))))))))

(assert (=> b!3219256 (=> res!1310506 e!2007195)))

(declare-fun b!3219257 () Bool)

(declare-fun inv!49084 (Conc!10835) Bool)

(assert (=> b!3219257 (= e!2007195 (inv!49084 (c!540717 (dynLambda!14648 (toChars!7181 (transformation!5230 (rule!7682 separatorToken!241))) (value!169515 separatorToken!241)))))))

(assert (= (and d!884160 c!541362) b!3219255))

(assert (= (and d!884160 (not c!541362)) b!3219256))

(assert (= (and b!3219256 (not res!1310506)) b!3219257))

(declare-fun m!3494583 () Bool)

(assert (=> b!3219255 m!3494583))

(declare-fun m!3494585 () Bool)

(assert (=> b!3219257 m!3494585))

(assert (=> b!3216841 d!884160))

(declare-fun b!3219260 () Bool)

(declare-fun res!1310508 () Bool)

(declare-fun e!2007196 () Bool)

(assert (=> b!3219260 (=> (not res!1310508) (not e!2007196))))

(declare-fun lt!1089855 () List!36329)

(assert (=> b!3219260 (= res!1310508 (= (size!27294 lt!1089855) (+ (size!27294 (list!12887 (charsOf!3246 (_1!20946 (get!11534 lt!1088976))))) (size!27294 (_2!20946 (get!11534 lt!1088976))))))))

(declare-fun b!3219261 () Bool)

(assert (=> b!3219261 (= e!2007196 (or (not (= (_2!20946 (get!11534 lt!1088976)) Nil!36205)) (= lt!1089855 (list!12887 (charsOf!3246 (_1!20946 (get!11534 lt!1088976)))))))))

(declare-fun d!884162 () Bool)

(assert (=> d!884162 e!2007196))

(declare-fun res!1310507 () Bool)

(assert (=> d!884162 (=> (not res!1310507) (not e!2007196))))

(assert (=> d!884162 (= res!1310507 (= (content!4899 lt!1089855) ((_ map or) (content!4899 (list!12887 (charsOf!3246 (_1!20946 (get!11534 lt!1088976))))) (content!4899 (_2!20946 (get!11534 lt!1088976))))))))

(declare-fun e!2007197 () List!36329)

(assert (=> d!884162 (= lt!1089855 e!2007197)))

(declare-fun c!541363 () Bool)

(assert (=> d!884162 (= c!541363 ((_ is Nil!36205) (list!12887 (charsOf!3246 (_1!20946 (get!11534 lt!1088976))))))))

(assert (=> d!884162 (= (++!8698 (list!12887 (charsOf!3246 (_1!20946 (get!11534 lt!1088976)))) (_2!20946 (get!11534 lt!1088976))) lt!1089855)))

(declare-fun b!3219258 () Bool)

(assert (=> b!3219258 (= e!2007197 (_2!20946 (get!11534 lt!1088976)))))

(declare-fun b!3219259 () Bool)

(assert (=> b!3219259 (= e!2007197 (Cons!36205 (h!41625 (list!12887 (charsOf!3246 (_1!20946 (get!11534 lt!1088976))))) (++!8698 (t!239820 (list!12887 (charsOf!3246 (_1!20946 (get!11534 lt!1088976))))) (_2!20946 (get!11534 lt!1088976)))))))

(assert (= (and d!884162 c!541363) b!3219258))

(assert (= (and d!884162 (not c!541363)) b!3219259))

(assert (= (and d!884162 res!1310507) b!3219260))

(assert (= (and b!3219260 res!1310508) b!3219261))

(declare-fun m!3494587 () Bool)

(assert (=> b!3219260 m!3494587))

(assert (=> b!3219260 m!3491351))

(declare-fun m!3494589 () Bool)

(assert (=> b!3219260 m!3494589))

(assert (=> b!3219260 m!3491343))

(declare-fun m!3494591 () Bool)

(assert (=> d!884162 m!3494591))

(assert (=> d!884162 m!3491351))

(declare-fun m!3494593 () Bool)

(assert (=> d!884162 m!3494593))

(declare-fun m!3494595 () Bool)

(assert (=> d!884162 m!3494595))

(declare-fun m!3494597 () Bool)

(assert (=> b!3219259 m!3494597))

(assert (=> b!3217342 d!884162))

(assert (=> b!3217342 d!884092))

(assert (=> b!3217342 d!884094))

(assert (=> b!3217342 d!883458))

(declare-fun d!884164 () Bool)

(declare-fun lt!1089856 () Int)

(assert (=> d!884164 (= lt!1089856 (size!27294 (list!12887 (_2!20945 lt!1089058))))))

(assert (=> d!884164 (= lt!1089856 (size!27303 (c!540717 (_2!20945 lt!1089058))))))

(assert (=> d!884164 (= (size!27301 (_2!20945 lt!1089058)) lt!1089856)))

(declare-fun bs!542460 () Bool)

(assert (= bs!542460 d!884164))

(assert (=> bs!542460 m!3491871))

(assert (=> bs!542460 m!3491871))

(declare-fun m!3494599 () Bool)

(assert (=> bs!542460 m!3494599))

(declare-fun m!3494601 () Bool)

(assert (=> bs!542460 m!3494601))

(assert (=> b!3217663 d!884164))

(declare-fun d!884166 () Bool)

(declare-fun lt!1089857 () Int)

(assert (=> d!884166 (= lt!1089857 (size!27294 (list!12887 lt!1088699)))))

(assert (=> d!884166 (= lt!1089857 (size!27303 (c!540717 lt!1088699)))))

(assert (=> d!884166 (= (size!27301 lt!1088699) lt!1089857)))

(declare-fun bs!542461 () Bool)

(assert (= bs!542461 d!884166))

(assert (=> bs!542461 m!3491873))

(assert (=> bs!542461 m!3491873))

(assert (=> bs!542461 m!3492745))

(declare-fun m!3494603 () Bool)

(assert (=> bs!542461 m!3494603))

(assert (=> b!3217663 d!884166))

(assert (=> b!3217201 d!883396))

(assert (=> b!3217201 d!883398))

(assert (=> b!3217201 d!883394))

(declare-fun d!884168 () Bool)

(assert (=> d!884168 (= (list!12890 lt!1089059) (list!12893 (c!540718 lt!1089059)))))

(declare-fun bs!542462 () Bool)

(assert (= bs!542462 d!884168))

(declare-fun m!3494605 () Bool)

(assert (=> bs!542462 m!3494605))

(assert (=> d!883138 d!884168))

(declare-fun d!884170 () Bool)

(declare-fun e!2007198 () Bool)

(assert (=> d!884170 e!2007198))

(declare-fun res!1310509 () Bool)

(assert (=> d!884170 (=> (not res!1310509) (not e!2007198))))

(declare-fun lt!1089858 () BalanceConc!21286)

(assert (=> d!884170 (= res!1310509 (= (list!12890 lt!1089858) (Cons!36207 (h!41627 (t!239822 tokens!494)) Nil!36207)))))

(assert (=> d!884170 (= lt!1089858 (choose!18797 (h!41627 (t!239822 tokens!494))))))

(assert (=> d!884170 (= (singleton!997 (h!41627 (t!239822 tokens!494))) lt!1089858)))

(declare-fun b!3219262 () Bool)

(assert (=> b!3219262 (= e!2007198 (isBalanced!3224 (c!540718 lt!1089858)))))

(assert (= (and d!884170 res!1310509) b!3219262))

(declare-fun m!3494607 () Bool)

(assert (=> d!884170 m!3494607))

(declare-fun m!3494609 () Bool)

(assert (=> d!884170 m!3494609))

(declare-fun m!3494611 () Bool)

(assert (=> b!3219262 m!3494611))

(assert (=> d!883138 d!884170))

(declare-fun b!3219265 () Bool)

(declare-fun res!1310511 () Bool)

(declare-fun e!2007199 () Bool)

(assert (=> b!3219265 (=> (not res!1310511) (not e!2007199))))

(declare-fun lt!1089859 () List!36329)

(assert (=> b!3219265 (= res!1310511 (= (size!27294 lt!1089859) (+ (size!27294 (ite c!540846 call!232862 call!232865)) (size!27294 (ite c!540846 call!232865 call!232862)))))))

(declare-fun b!3219266 () Bool)

(assert (=> b!3219266 (= e!2007199 (or (not (= (ite c!540846 call!232865 call!232862) Nil!36205)) (= lt!1089859 (ite c!540846 call!232862 call!232865))))))

(declare-fun d!884172 () Bool)

(assert (=> d!884172 e!2007199))

(declare-fun res!1310510 () Bool)

(assert (=> d!884172 (=> (not res!1310510) (not e!2007199))))

(assert (=> d!884172 (= res!1310510 (= (content!4899 lt!1089859) ((_ map or) (content!4899 (ite c!540846 call!232862 call!232865)) (content!4899 (ite c!540846 call!232865 call!232862)))))))

(declare-fun e!2007200 () List!36329)

(assert (=> d!884172 (= lt!1089859 e!2007200)))

(declare-fun c!541364 () Bool)

(assert (=> d!884172 (= c!541364 ((_ is Nil!36205) (ite c!540846 call!232862 call!232865)))))

(assert (=> d!884172 (= (++!8698 (ite c!540846 call!232862 call!232865) (ite c!540846 call!232865 call!232862)) lt!1089859)))

(declare-fun b!3219263 () Bool)

(assert (=> b!3219263 (= e!2007200 (ite c!540846 call!232865 call!232862))))

(declare-fun b!3219264 () Bool)

(assert (=> b!3219264 (= e!2007200 (Cons!36205 (h!41625 (ite c!540846 call!232862 call!232865)) (++!8698 (t!239820 (ite c!540846 call!232862 call!232865)) (ite c!540846 call!232865 call!232862))))))

(assert (= (and d!884172 c!541364) b!3219263))

(assert (= (and d!884172 (not c!541364)) b!3219264))

(assert (= (and d!884172 res!1310510) b!3219265))

(assert (= (and b!3219265 res!1310511) b!3219266))

(declare-fun m!3494613 () Bool)

(assert (=> b!3219265 m!3494613))

(declare-fun m!3494615 () Bool)

(assert (=> b!3219265 m!3494615))

(declare-fun m!3494617 () Bool)

(assert (=> b!3219265 m!3494617))

(declare-fun m!3494619 () Bool)

(assert (=> d!884172 m!3494619))

(declare-fun m!3494621 () Bool)

(assert (=> d!884172 m!3494621))

(declare-fun m!3494623 () Bool)

(assert (=> d!884172 m!3494623))

(declare-fun m!3494625 () Bool)

(assert (=> b!3219264 m!3494625))

(assert (=> bm!232859 d!884172))

(declare-fun d!884174 () Bool)

(declare-fun lt!1089860 () Bool)

(assert (=> d!884174 (= lt!1089860 (select (content!4904 rules!2135) (get!11532 lt!1089078)))))

(declare-fun e!2007202 () Bool)

(assert (=> d!884174 (= lt!1089860 e!2007202)))

(declare-fun res!1310513 () Bool)

(assert (=> d!884174 (=> (not res!1310513) (not e!2007202))))

(assert (=> d!884174 (= res!1310513 ((_ is Cons!36206) rules!2135))))

(assert (=> d!884174 (= (contains!6483 rules!2135 (get!11532 lt!1089078)) lt!1089860)))

(declare-fun b!3219267 () Bool)

(declare-fun e!2007201 () Bool)

(assert (=> b!3219267 (= e!2007202 e!2007201)))

(declare-fun res!1310512 () Bool)

(assert (=> b!3219267 (=> res!1310512 e!2007201)))

(assert (=> b!3219267 (= res!1310512 (= (h!41626 rules!2135) (get!11532 lt!1089078)))))

(declare-fun b!3219268 () Bool)

(assert (=> b!3219268 (= e!2007201 (contains!6483 (t!239821 rules!2135) (get!11532 lt!1089078)))))

(assert (= (and d!884174 res!1310513) b!3219267))

(assert (= (and b!3219267 (not res!1310512)) b!3219268))

(assert (=> d!884174 m!3494185))

(assert (=> d!884174 m!3491971))

(declare-fun m!3494627 () Bool)

(assert (=> d!884174 m!3494627))

(assert (=> b!3219268 m!3491971))

(declare-fun m!3494629 () Bool)

(assert (=> b!3219268 m!3494629))

(assert (=> b!3217693 d!884174))

(declare-fun d!884176 () Bool)

(assert (=> d!884176 (= (get!11532 lt!1089078) (v!35732 lt!1089078))))

(assert (=> b!3217693 d!884176))

(declare-fun b!3219269 () Bool)

(declare-fun e!2007206 () Bool)

(declare-fun lt!1089861 () Bool)

(assert (=> b!3219269 (= e!2007206 (not lt!1089861))))

(declare-fun b!3219270 () Bool)

(declare-fun e!2007204 () Bool)

(declare-fun e!2007208 () Bool)

(assert (=> b!3219270 (= e!2007204 e!2007208)))

(declare-fun res!1310516 () Bool)

(assert (=> b!3219270 (=> res!1310516 e!2007208)))

(declare-fun call!233068 () Bool)

(assert (=> b!3219270 (= res!1310516 call!233068)))

(declare-fun b!3219271 () Bool)

(declare-fun res!1310521 () Bool)

(declare-fun e!2007207 () Bool)

(assert (=> b!3219271 (=> (not res!1310521) (not e!2007207))))

(assert (=> b!3219271 (= res!1310521 (isEmpty!20308 (tail!5218 (list!12887 (charsOf!3246 (_1!20946 (get!11534 lt!1089033)))))))))

(declare-fun b!3219272 () Bool)

(assert (=> b!3219272 (= e!2007207 (= (head!7053 (list!12887 (charsOf!3246 (_1!20946 (get!11534 lt!1089033))))) (c!540716 (regex!5230 (rule!7682 (h!41627 (t!239822 tokens!494)))))))))

(declare-fun b!3219273 () Bool)

(declare-fun res!1310517 () Bool)

(declare-fun e!2007205 () Bool)

(assert (=> b!3219273 (=> res!1310517 e!2007205)))

(assert (=> b!3219273 (= res!1310517 e!2007207)))

(declare-fun res!1310514 () Bool)

(assert (=> b!3219273 (=> (not res!1310514) (not e!2007207))))

(assert (=> b!3219273 (= res!1310514 lt!1089861)))

(declare-fun b!3219274 () Bool)

(assert (=> b!3219274 (= e!2007205 e!2007204)))

(declare-fun res!1310518 () Bool)

(assert (=> b!3219274 (=> (not res!1310518) (not e!2007204))))

(assert (=> b!3219274 (= res!1310518 (not lt!1089861))))

(declare-fun b!3219276 () Bool)

(declare-fun e!2007209 () Bool)

(assert (=> b!3219276 (= e!2007209 (= lt!1089861 call!233068))))

(declare-fun bm!233063 () Bool)

(assert (=> bm!233063 (= call!233068 (isEmpty!20308 (list!12887 (charsOf!3246 (_1!20946 (get!11534 lt!1089033))))))))

(declare-fun b!3219277 () Bool)

(assert (=> b!3219277 (= e!2007208 (not (= (head!7053 (list!12887 (charsOf!3246 (_1!20946 (get!11534 lt!1089033))))) (c!540716 (regex!5230 (rule!7682 (h!41627 (t!239822 tokens!494))))))))))

(declare-fun b!3219278 () Bool)

(declare-fun res!1310515 () Bool)

(assert (=> b!3219278 (=> res!1310515 e!2007208)))

(assert (=> b!3219278 (= res!1310515 (not (isEmpty!20308 (tail!5218 (list!12887 (charsOf!3246 (_1!20946 (get!11534 lt!1089033))))))))))

(declare-fun b!3219279 () Bool)

(declare-fun e!2007203 () Bool)

(assert (=> b!3219279 (= e!2007203 (matchR!4623 (derivativeStep!2954 (regex!5230 (rule!7682 (h!41627 (t!239822 tokens!494)))) (head!7053 (list!12887 (charsOf!3246 (_1!20946 (get!11534 lt!1089033)))))) (tail!5218 (list!12887 (charsOf!3246 (_1!20946 (get!11534 lt!1089033)))))))))

(declare-fun b!3219275 () Bool)

(assert (=> b!3219275 (= e!2007203 (nullable!3401 (regex!5230 (rule!7682 (h!41627 (t!239822 tokens!494))))))))

(declare-fun d!884178 () Bool)

(assert (=> d!884178 e!2007209))

(declare-fun c!541367 () Bool)

(assert (=> d!884178 (= c!541367 ((_ is EmptyExpr!9989) (regex!5230 (rule!7682 (h!41627 (t!239822 tokens!494))))))))

(assert (=> d!884178 (= lt!1089861 e!2007203)))

(declare-fun c!541366 () Bool)

(assert (=> d!884178 (= c!541366 (isEmpty!20308 (list!12887 (charsOf!3246 (_1!20946 (get!11534 lt!1089033))))))))

(assert (=> d!884178 (validRegex!4557 (regex!5230 (rule!7682 (h!41627 (t!239822 tokens!494)))))))

(assert (=> d!884178 (= (matchR!4623 (regex!5230 (rule!7682 (h!41627 (t!239822 tokens!494)))) (list!12887 (charsOf!3246 (_1!20946 (get!11534 lt!1089033))))) lt!1089861)))

(declare-fun b!3219280 () Bool)

(declare-fun res!1310520 () Bool)

(assert (=> b!3219280 (=> (not res!1310520) (not e!2007207))))

(assert (=> b!3219280 (= res!1310520 (not call!233068))))

(declare-fun b!3219281 () Bool)

(declare-fun res!1310519 () Bool)

(assert (=> b!3219281 (=> res!1310519 e!2007205)))

(assert (=> b!3219281 (= res!1310519 (not ((_ is ElementMatch!9989) (regex!5230 (rule!7682 (h!41627 (t!239822 tokens!494)))))))))

(assert (=> b!3219281 (= e!2007206 e!2007205)))

(declare-fun b!3219282 () Bool)

(assert (=> b!3219282 (= e!2007209 e!2007206)))

(declare-fun c!541365 () Bool)

(assert (=> b!3219282 (= c!541365 ((_ is EmptyLang!9989) (regex!5230 (rule!7682 (h!41627 (t!239822 tokens!494))))))))

(assert (= (and d!884178 c!541366) b!3219275))

(assert (= (and d!884178 (not c!541366)) b!3219279))

(assert (= (and d!884178 c!541367) b!3219276))

(assert (= (and d!884178 (not c!541367)) b!3219282))

(assert (= (and b!3219282 c!541365) b!3219269))

(assert (= (and b!3219282 (not c!541365)) b!3219281))

(assert (= (and b!3219281 (not res!1310519)) b!3219273))

(assert (= (and b!3219273 res!1310514) b!3219280))

(assert (= (and b!3219280 res!1310520) b!3219271))

(assert (= (and b!3219271 res!1310521) b!3219272))

(assert (= (and b!3219273 (not res!1310517)) b!3219274))

(assert (= (and b!3219274 res!1310518) b!3219270))

(assert (= (and b!3219270 (not res!1310516)) b!3219278))

(assert (= (and b!3219278 (not res!1310515)) b!3219277))

(assert (= (or b!3219276 b!3219270 b!3219280) bm!233063))

(assert (=> d!884178 m!3491767))

(declare-fun m!3494631 () Bool)

(assert (=> d!884178 m!3494631))

(assert (=> d!884178 m!3490733))

(assert (=> b!3219278 m!3491767))

(declare-fun m!3494633 () Bool)

(assert (=> b!3219278 m!3494633))

(assert (=> b!3219278 m!3494633))

(declare-fun m!3494635 () Bool)

(assert (=> b!3219278 m!3494635))

(assert (=> b!3219272 m!3491767))

(declare-fun m!3494637 () Bool)

(assert (=> b!3219272 m!3494637))

(assert (=> b!3219275 m!3490735))

(assert (=> b!3219271 m!3491767))

(assert (=> b!3219271 m!3494633))

(assert (=> b!3219271 m!3494633))

(assert (=> b!3219271 m!3494635))

(assert (=> b!3219279 m!3491767))

(assert (=> b!3219279 m!3494637))

(assert (=> b!3219279 m!3494637))

(declare-fun m!3494639 () Bool)

(assert (=> b!3219279 m!3494639))

(assert (=> b!3219279 m!3491767))

(assert (=> b!3219279 m!3494633))

(assert (=> b!3219279 m!3494639))

(assert (=> b!3219279 m!3494633))

(declare-fun m!3494641 () Bool)

(assert (=> b!3219279 m!3494641))

(assert (=> bm!233063 m!3491767))

(assert (=> bm!233063 m!3494631))

(assert (=> b!3219277 m!3491767))

(assert (=> b!3219277 m!3494637))

(assert (=> b!3217539 d!884178))

(declare-fun d!884180 () Bool)

(assert (=> d!884180 (= (list!12887 (charsOf!3246 (_1!20946 (get!11534 lt!1089033)))) (list!12889 (c!540717 (charsOf!3246 (_1!20946 (get!11534 lt!1089033))))))))

(declare-fun bs!542463 () Bool)

(assert (= bs!542463 d!884180))

(declare-fun m!3494643 () Bool)

(assert (=> bs!542463 m!3494643))

(assert (=> b!3217539 d!884180))

(declare-fun d!884182 () Bool)

(declare-fun lt!1089876 () BalanceConc!21284)

(assert (=> d!884182 (= (list!12887 lt!1089876) (originalCharacters!5944 (_1!20946 (get!11534 lt!1089033))))))

(assert (=> d!884182 (= lt!1089876 (dynLambda!14648 (toChars!7181 (transformation!5230 (rule!7682 (_1!20946 (get!11534 lt!1089033))))) (value!169515 (_1!20946 (get!11534 lt!1089033)))))))

(assert (=> d!884182 (= (charsOf!3246 (_1!20946 (get!11534 lt!1089033))) lt!1089876)))

(declare-fun b_lambda!88517 () Bool)

(assert (=> (not b_lambda!88517) (not d!884182)))

(declare-fun t!240156 () Bool)

(declare-fun tb!159047 () Bool)

(assert (=> (and b!3216775 (= (toChars!7181 (transformation!5230 (rule!7682 (h!41627 tokens!494)))) (toChars!7181 (transformation!5230 (rule!7682 (_1!20946 (get!11534 lt!1089033)))))) t!240156) tb!159047))

(declare-fun b!3219287 () Bool)

(declare-fun e!2007212 () Bool)

(declare-fun tp!1014354 () Bool)

(assert (=> b!3219287 (= e!2007212 (and (inv!49077 (c!540717 (dynLambda!14648 (toChars!7181 (transformation!5230 (rule!7682 (_1!20946 (get!11534 lt!1089033))))) (value!169515 (_1!20946 (get!11534 lt!1089033)))))) tp!1014354))))

(declare-fun result!201468 () Bool)

(assert (=> tb!159047 (= result!201468 (and (inv!49078 (dynLambda!14648 (toChars!7181 (transformation!5230 (rule!7682 (_1!20946 (get!11534 lt!1089033))))) (value!169515 (_1!20946 (get!11534 lt!1089033))))) e!2007212))))

(assert (= tb!159047 b!3219287))

(declare-fun m!3494645 () Bool)

(assert (=> b!3219287 m!3494645))

(declare-fun m!3494647 () Bool)

(assert (=> tb!159047 m!3494647))

(assert (=> d!884182 t!240156))

(declare-fun b_and!215127 () Bool)

(assert (= b_and!215123 (and (=> t!240156 result!201468) b_and!215127)))

(declare-fun tb!159049 () Bool)

(declare-fun t!240158 () Bool)

(assert (=> (and b!3217757 (= (toChars!7181 (transformation!5230 (h!41626 (t!239821 rules!2135)))) (toChars!7181 (transformation!5230 (rule!7682 (_1!20946 (get!11534 lt!1089033)))))) t!240158) tb!159049))

(declare-fun result!201470 () Bool)

(assert (= result!201470 result!201468))

(assert (=> d!884182 t!240158))

(declare-fun b_and!215129 () Bool)

(assert (= b_and!215125 (and (=> t!240158 result!201470) b_and!215129)))

(declare-fun tb!159051 () Bool)

(declare-fun t!240160 () Bool)

(assert (=> (and b!3217774 (= (toChars!7181 (transformation!5230 (rule!7682 (h!41627 (t!239822 tokens!494))))) (toChars!7181 (transformation!5230 (rule!7682 (_1!20946 (get!11534 lt!1089033)))))) t!240160) tb!159051))

(declare-fun result!201472 () Bool)

(assert (= result!201472 result!201468))

(assert (=> d!884182 t!240160))

(declare-fun b_and!215131 () Bool)

(assert (= b_and!215121 (and (=> t!240160 result!201472) b_and!215131)))

(declare-fun tb!159053 () Bool)

(declare-fun t!240162 () Bool)

(assert (=> (and b!3216773 (= (toChars!7181 (transformation!5230 (h!41626 rules!2135))) (toChars!7181 (transformation!5230 (rule!7682 (_1!20946 (get!11534 lt!1089033)))))) t!240162) tb!159053))

(declare-fun result!201474 () Bool)

(assert (= result!201474 result!201468))

(assert (=> d!884182 t!240162))

(declare-fun b_and!215133 () Bool)

(assert (= b_and!215117 (and (=> t!240162 result!201474) b_and!215133)))

(declare-fun t!240164 () Bool)

(declare-fun tb!159055 () Bool)

(assert (=> (and b!3216778 (= (toChars!7181 (transformation!5230 (rule!7682 separatorToken!241))) (toChars!7181 (transformation!5230 (rule!7682 (_1!20946 (get!11534 lt!1089033)))))) t!240164) tb!159055))

(declare-fun result!201476 () Bool)

(assert (= result!201476 result!201468))

(assert (=> d!884182 t!240164))

(declare-fun b_and!215135 () Bool)

(assert (= b_and!215119 (and (=> t!240164 result!201476) b_and!215135)))

(declare-fun m!3494649 () Bool)

(assert (=> d!884182 m!3494649))

(declare-fun m!3494651 () Bool)

(assert (=> d!884182 m!3494651))

(assert (=> b!3217539 d!884182))

(assert (=> b!3217539 d!883524))

(declare-fun b!3219294 () Bool)

(declare-fun res!1310523 () Bool)

(declare-fun e!2007215 () Bool)

(assert (=> b!3219294 (=> (not res!1310523) (not e!2007215))))

(declare-fun lt!1089903 () List!36329)

(assert (=> b!3219294 (= res!1310523 (= (size!27294 lt!1089903) (+ (size!27294 (t!239820 (++!8698 lt!1088680 lt!1088705))) (size!27294 (printWithSeparatorTokenList!164 thiss!18206 (t!239822 (t!239822 tokens!494)) separatorToken!241)))))))

(declare-fun b!3219295 () Bool)

(assert (=> b!3219295 (= e!2007215 (or (not (= (printWithSeparatorTokenList!164 thiss!18206 (t!239822 (t!239822 tokens!494)) separatorToken!241) Nil!36205)) (= lt!1089903 (t!239820 (++!8698 lt!1088680 lt!1088705)))))))

(declare-fun d!884184 () Bool)

(assert (=> d!884184 e!2007215))

(declare-fun res!1310522 () Bool)

(assert (=> d!884184 (=> (not res!1310522) (not e!2007215))))

(assert (=> d!884184 (= res!1310522 (= (content!4899 lt!1089903) ((_ map or) (content!4899 (t!239820 (++!8698 lt!1088680 lt!1088705))) (content!4899 (printWithSeparatorTokenList!164 thiss!18206 (t!239822 (t!239822 tokens!494)) separatorToken!241)))))))

(declare-fun e!2007216 () List!36329)

(assert (=> d!884184 (= lt!1089903 e!2007216)))

(declare-fun c!541372 () Bool)

(assert (=> d!884184 (= c!541372 ((_ is Nil!36205) (t!239820 (++!8698 lt!1088680 lt!1088705))))))

(assert (=> d!884184 (= (++!8698 (t!239820 (++!8698 lt!1088680 lt!1088705)) (printWithSeparatorTokenList!164 thiss!18206 (t!239822 (t!239822 tokens!494)) separatorToken!241)) lt!1089903)))

(declare-fun b!3219292 () Bool)

(assert (=> b!3219292 (= e!2007216 (printWithSeparatorTokenList!164 thiss!18206 (t!239822 (t!239822 tokens!494)) separatorToken!241))))

(declare-fun b!3219293 () Bool)

(assert (=> b!3219293 (= e!2007216 (Cons!36205 (h!41625 (t!239820 (++!8698 lt!1088680 lt!1088705))) (++!8698 (t!239820 (t!239820 (++!8698 lt!1088680 lt!1088705))) (printWithSeparatorTokenList!164 thiss!18206 (t!239822 (t!239822 tokens!494)) separatorToken!241))))))

(assert (= (and d!884184 c!541372) b!3219292))

(assert (= (and d!884184 (not c!541372)) b!3219293))

(assert (= (and d!884184 res!1310522) b!3219294))

(assert (= (and b!3219294 res!1310523) b!3219295))

(declare-fun m!3494653 () Bool)

(assert (=> b!3219294 m!3494653))

(assert (=> b!3219294 m!3494405))

(assert (=> b!3219294 m!3490477))

(assert (=> b!3219294 m!3492063))

(declare-fun m!3494655 () Bool)

(assert (=> d!884184 m!3494655))

(assert (=> d!884184 m!3494299))

(assert (=> d!884184 m!3490477))

(assert (=> d!884184 m!3492069))

(assert (=> b!3219293 m!3490477))

(declare-fun m!3494657 () Bool)

(assert (=> b!3219293 m!3494657))

(assert (=> b!3217729 d!884184))

(declare-fun d!884186 () Bool)

(declare-fun lt!1089920 () Int)

(assert (=> d!884186 (= lt!1089920 (size!27299 (list!12890 (_1!20945 lt!1089058))))))

(assert (=> d!884186 (= lt!1089920 (size!27300 (c!540718 (_1!20945 lt!1089058))))))

(assert (=> d!884186 (= (size!27295 (_1!20945 lt!1089058)) lt!1089920)))

(declare-fun bs!542464 () Bool)

(assert (= bs!542464 d!884186))

(assert (=> bs!542464 m!3491877))

(assert (=> bs!542464 m!3491877))

(declare-fun m!3494659 () Bool)

(assert (=> bs!542464 m!3494659))

(declare-fun m!3494661 () Bool)

(assert (=> bs!542464 m!3494661))

(assert (=> d!883124 d!884186))

(declare-fun lt!1089947 () tuple2!35622)

(declare-fun b!3219300 () Bool)

(declare-fun lt!1089962 () Option!7165)

(assert (=> b!3219300 (= lt!1089947 (lexRec!690 thiss!18206 rules!2135 (_2!20951 (v!35744 lt!1089962))))))

(declare-fun e!2007222 () tuple2!35622)

(assert (=> b!3219300 (= e!2007222 (tuple2!35623 (prepend!1178 (_1!20945 lt!1089947) (_1!20951 (v!35744 lt!1089962))) (_2!20945 lt!1089947)))))

(declare-fun e!2007219 () Bool)

(declare-fun b!3219301 () Bool)

(declare-fun lt!1089928 () tuple2!35622)

(assert (=> b!3219301 (= e!2007219 (= (list!12887 (_2!20945 lt!1089928)) (list!12887 (_2!20945 (lexRec!690 thiss!18206 rules!2135 lt!1088699)))))))

(declare-fun b!3219302 () Bool)

(declare-fun e!2007220 () tuple2!35622)

(assert (=> b!3219302 (= e!2007220 (tuple2!35623 (BalanceConc!21287 Empty!10836) lt!1088699))))

(declare-fun b!3219303 () Bool)

(declare-fun lt!1089954 () tuple2!35622)

(declare-fun lt!1089957 () Option!7165)

(assert (=> b!3219303 (= lt!1089954 (lexRec!690 thiss!18206 rules!2135 (_2!20951 (v!35744 lt!1089957))))))

(declare-fun e!2007221 () tuple2!35622)

(assert (=> b!3219303 (= e!2007221 (tuple2!35623 (prepend!1178 (_1!20945 lt!1089954) (_1!20951 (v!35744 lt!1089957))) (_2!20945 lt!1089954)))))

(declare-fun b!3219304 () Bool)

(declare-fun lt!1089930 () BalanceConc!21284)

(assert (=> b!3219304 (= e!2007222 (tuple2!35623 (BalanceConc!21287 Empty!10836) lt!1089930))))

(declare-fun b!3219305 () Bool)

(assert (=> b!3219305 (= e!2007221 (tuple2!35623 (BalanceConc!21287 Empty!10836) lt!1088699))))

(declare-fun d!884188 () Bool)

(assert (=> d!884188 e!2007219))

(declare-fun res!1310524 () Bool)

(assert (=> d!884188 (=> (not res!1310524) (not e!2007219))))

(assert (=> d!884188 (= res!1310524 (= (list!12890 (_1!20945 lt!1089928)) (list!12890 (_1!20945 (lexRec!690 thiss!18206 rules!2135 lt!1088699)))))))

(assert (=> d!884188 (= lt!1089928 e!2007220)))

(declare-fun c!541376 () Bool)

(declare-fun lt!1089926 () Option!7165)

(assert (=> d!884188 (= c!541376 ((_ is Some!7164) lt!1089926))))

(assert (=> d!884188 (= lt!1089926 (maxPrefixZipperSequenceV2!477 thiss!18206 rules!2135 lt!1088699 lt!1088699))))

(declare-fun lt!1089955 () Unit!50722)

(declare-fun lt!1089961 () Unit!50722)

(assert (=> d!884188 (= lt!1089955 lt!1089961)))

(declare-fun lt!1089950 () List!36329)

(declare-fun lt!1089929 () List!36329)

(assert (=> d!884188 (isSuffix!852 lt!1089950 (++!8698 lt!1089929 lt!1089950))))

(assert (=> d!884188 (= lt!1089961 (lemmaConcatTwoListThenFSndIsSuffix!537 lt!1089929 lt!1089950))))

(assert (=> d!884188 (= lt!1089950 (list!12887 lt!1088699))))

(assert (=> d!884188 (= lt!1089929 (list!12887 (BalanceConc!21285 Empty!10835)))))

(assert (=> d!884188 (= (lexTailRecV2!937 thiss!18206 rules!2135 lt!1088699 (BalanceConc!21285 Empty!10835) lt!1088699 (BalanceConc!21287 Empty!10836)) lt!1089928)))

(declare-fun b!3219306 () Bool)

(declare-fun lt!1089936 () BalanceConc!21284)

(assert (=> b!3219306 (= e!2007220 (lexTailRecV2!937 thiss!18206 rules!2135 lt!1088699 lt!1089936 (_2!20951 (v!35744 lt!1089926)) (append!870 (BalanceConc!21287 Empty!10836) (_1!20951 (v!35744 lt!1089926)))))))

(declare-fun lt!1089939 () tuple2!35622)

(assert (=> b!3219306 (= lt!1089939 (lexRec!690 thiss!18206 rules!2135 (_2!20951 (v!35744 lt!1089926))))))

(declare-fun lt!1089963 () List!36329)

(assert (=> b!3219306 (= lt!1089963 (list!12887 (BalanceConc!21285 Empty!10835)))))

(declare-fun lt!1089932 () List!36329)

(assert (=> b!3219306 (= lt!1089932 (list!12887 (charsOf!3246 (_1!20951 (v!35744 lt!1089926)))))))

(declare-fun lt!1089951 () List!36329)

(assert (=> b!3219306 (= lt!1089951 (list!12887 (_2!20951 (v!35744 lt!1089926))))))

(declare-fun lt!1089925 () Unit!50722)

(assert (=> b!3219306 (= lt!1089925 (lemmaConcatAssociativity!1756 lt!1089963 lt!1089932 lt!1089951))))

(assert (=> b!3219306 (= (++!8698 (++!8698 lt!1089963 lt!1089932) lt!1089951) (++!8698 lt!1089963 (++!8698 lt!1089932 lt!1089951)))))

(declare-fun lt!1089931 () Unit!50722)

(assert (=> b!3219306 (= lt!1089931 lt!1089925)))

(assert (=> b!3219306 (= lt!1089957 (maxPrefixZipperSequence!1083 thiss!18206 rules!2135 lt!1088699))))

(declare-fun c!541375 () Bool)

(assert (=> b!3219306 (= c!541375 ((_ is Some!7164) lt!1089957))))

(assert (=> b!3219306 (= (lexRec!690 thiss!18206 rules!2135 lt!1088699) e!2007221)))

(declare-fun lt!1089927 () Unit!50722)

(declare-fun Unit!50746 () Unit!50722)

(assert (=> b!3219306 (= lt!1089927 Unit!50746)))

(declare-fun lt!1089946 () List!36331)

(assert (=> b!3219306 (= lt!1089946 (list!12890 (BalanceConc!21287 Empty!10836)))))

(declare-fun lt!1089953 () List!36331)

(assert (=> b!3219306 (= lt!1089953 (Cons!36207 (_1!20951 (v!35744 lt!1089926)) Nil!36207))))

(declare-fun lt!1089965 () List!36331)

(assert (=> b!3219306 (= lt!1089965 (list!12890 (_1!20945 lt!1089939)))))

(declare-fun lt!1089938 () Unit!50722)

(assert (=> b!3219306 (= lt!1089938 (lemmaConcatAssociativity!1757 lt!1089946 lt!1089953 lt!1089965))))

(assert (=> b!3219306 (= (++!8703 (++!8703 lt!1089946 lt!1089953) lt!1089965) (++!8703 lt!1089946 (++!8703 lt!1089953 lt!1089965)))))

(declare-fun lt!1089952 () Unit!50722)

(assert (=> b!3219306 (= lt!1089952 lt!1089938)))

(declare-fun lt!1089934 () List!36329)

(assert (=> b!3219306 (= lt!1089934 (++!8698 (list!12887 (BalanceConc!21285 Empty!10835)) (list!12887 (charsOf!3246 (_1!20951 (v!35744 lt!1089926))))))))

(declare-fun lt!1089966 () List!36329)

(assert (=> b!3219306 (= lt!1089966 (list!12887 (_2!20951 (v!35744 lt!1089926))))))

(declare-fun lt!1089945 () List!36331)

(assert (=> b!3219306 (= lt!1089945 (list!12890 (append!870 (BalanceConc!21287 Empty!10836) (_1!20951 (v!35744 lt!1089926)))))))

(declare-fun lt!1089964 () Unit!50722)

(assert (=> b!3219306 (= lt!1089964 (lemmaLexThenLexPrefix!455 thiss!18206 rules!2135 lt!1089934 lt!1089966 lt!1089945 (list!12890 (_1!20945 lt!1089939)) (list!12887 (_2!20945 lt!1089939))))))

(assert (=> b!3219306 (= (lexList!1317 thiss!18206 rules!2135 lt!1089934) (tuple2!35633 lt!1089945 Nil!36205))))

(declare-fun lt!1089960 () Unit!50722)

(assert (=> b!3219306 (= lt!1089960 lt!1089964)))

(assert (=> b!3219306 (= lt!1089930 (++!8699 (BalanceConc!21285 Empty!10835) (charsOf!3246 (_1!20951 (v!35744 lt!1089926)))))))

(assert (=> b!3219306 (= lt!1089962 (maxPrefixZipperSequence!1083 thiss!18206 rules!2135 lt!1089930))))

(declare-fun c!541377 () Bool)

(assert (=> b!3219306 (= c!541377 ((_ is Some!7164) lt!1089962))))

(assert (=> b!3219306 (= (lexRec!690 thiss!18206 rules!2135 (++!8699 (BalanceConc!21285 Empty!10835) (charsOf!3246 (_1!20951 (v!35744 lt!1089926))))) e!2007222)))

(declare-fun lt!1089937 () Unit!50722)

(declare-fun Unit!50747 () Unit!50722)

(assert (=> b!3219306 (= lt!1089937 Unit!50747)))

(assert (=> b!3219306 (= lt!1089936 (++!8699 (BalanceConc!21285 Empty!10835) (charsOf!3246 (_1!20951 (v!35744 lt!1089926)))))))

(declare-fun lt!1089944 () List!36329)

(assert (=> b!3219306 (= lt!1089944 (list!12887 lt!1089936))))

(declare-fun lt!1089935 () List!36329)

(assert (=> b!3219306 (= lt!1089935 (list!12887 (_2!20951 (v!35744 lt!1089926))))))

(declare-fun lt!1089956 () Unit!50722)

(assert (=> b!3219306 (= lt!1089956 (lemmaConcatTwoListThenFSndIsSuffix!537 lt!1089944 lt!1089935))))

(assert (=> b!3219306 (isSuffix!852 lt!1089935 (++!8698 lt!1089944 lt!1089935))))

(declare-fun lt!1089933 () Unit!50722)

(assert (=> b!3219306 (= lt!1089933 lt!1089956)))

(assert (= (and d!884188 c!541376) b!3219306))

(assert (= (and d!884188 (not c!541376)) b!3219302))

(assert (= (and b!3219306 c!541375) b!3219303))

(assert (= (and b!3219306 (not c!541375)) b!3219305))

(assert (= (and b!3219306 c!541377) b!3219300))

(assert (= (and b!3219306 (not c!541377)) b!3219304))

(assert (= (and d!884188 res!1310524) b!3219301))

(declare-fun m!3494663 () Bool)

(assert (=> d!884188 m!3494663))

(declare-fun m!3494665 () Bool)

(assert (=> d!884188 m!3494665))

(declare-fun m!3494667 () Bool)

(assert (=> d!884188 m!3494667))

(declare-fun m!3494669 () Bool)

(assert (=> d!884188 m!3494669))

(assert (=> d!884188 m!3490675))

(declare-fun m!3494671 () Bool)

(assert (=> d!884188 m!3494671))

(assert (=> d!884188 m!3494665))

(declare-fun m!3494673 () Bool)

(assert (=> d!884188 m!3494673))

(assert (=> d!884188 m!3491873))

(declare-fun m!3494675 () Bool)

(assert (=> d!884188 m!3494675))

(declare-fun m!3494677 () Bool)

(assert (=> b!3219300 m!3494677))

(declare-fun m!3494679 () Bool)

(assert (=> b!3219300 m!3494679))

(declare-fun m!3494681 () Bool)

(assert (=> b!3219303 m!3494681))

(declare-fun m!3494683 () Bool)

(assert (=> b!3219303 m!3494683))

(declare-fun m!3494685 () Bool)

(assert (=> b!3219301 m!3494685))

(assert (=> b!3219301 m!3494675))

(declare-fun m!3494687 () Bool)

(assert (=> b!3219301 m!3494687))

(declare-fun m!3494689 () Bool)

(assert (=> b!3219306 m!3494689))

(declare-fun m!3494691 () Bool)

(assert (=> b!3219306 m!3494691))

(declare-fun m!3494693 () Bool)

(assert (=> b!3219306 m!3494693))

(declare-fun m!3494695 () Bool)

(assert (=> b!3219306 m!3494695))

(declare-fun m!3494697 () Bool)

(assert (=> b!3219306 m!3494697))

(declare-fun m!3494699 () Bool)

(assert (=> b!3219306 m!3494699))

(declare-fun m!3494701 () Bool)

(assert (=> b!3219306 m!3494701))

(declare-fun m!3494703 () Bool)

(assert (=> b!3219306 m!3494703))

(declare-fun m!3494705 () Bool)

(assert (=> b!3219306 m!3494705))

(declare-fun m!3494707 () Bool)

(assert (=> b!3219306 m!3494707))

(assert (=> b!3219306 m!3490675))

(declare-fun m!3494709 () Bool)

(assert (=> b!3219306 m!3494709))

(declare-fun m!3494711 () Bool)

(assert (=> b!3219306 m!3494711))

(declare-fun m!3494713 () Bool)

(assert (=> b!3219306 m!3494713))

(assert (=> b!3219306 m!3494703))

(declare-fun m!3494715 () Bool)

(assert (=> b!3219306 m!3494715))

(assert (=> b!3219306 m!3494707))

(assert (=> b!3219306 m!3494699))

(assert (=> b!3219306 m!3494675))

(declare-fun m!3494717 () Bool)

(assert (=> b!3219306 m!3494717))

(declare-fun m!3494719 () Bool)

(assert (=> b!3219306 m!3494719))

(declare-fun m!3494721 () Bool)

(assert (=> b!3219306 m!3494721))

(assert (=> b!3219306 m!3494697))

(declare-fun m!3494723 () Bool)

(assert (=> b!3219306 m!3494723))

(assert (=> b!3219306 m!3494695))

(declare-fun m!3494725 () Bool)

(assert (=> b!3219306 m!3494725))

(declare-fun m!3494727 () Bool)

(assert (=> b!3219306 m!3494727))

(declare-fun m!3494729 () Bool)

(assert (=> b!3219306 m!3494729))

(declare-fun m!3494731 () Bool)

(assert (=> b!3219306 m!3494731))

(declare-fun m!3494733 () Bool)

(assert (=> b!3219306 m!3494733))

(assert (=> b!3219306 m!3494707))

(assert (=> b!3219306 m!3494709))

(assert (=> b!3219306 m!3494733))

(declare-fun m!3494735 () Bool)

(assert (=> b!3219306 m!3494735))

(assert (=> b!3219306 m!3494689))

(declare-fun m!3494737 () Bool)

(assert (=> b!3219306 m!3494737))

(assert (=> b!3219306 m!3490675))

(declare-fun m!3494739 () Bool)

(assert (=> b!3219306 m!3494739))

(assert (=> b!3219306 m!3494703))

(declare-fun m!3494741 () Bool)

(assert (=> b!3219306 m!3494741))

(assert (=> b!3219306 m!3493515))

(declare-fun m!3494743 () Bool)

(assert (=> b!3219306 m!3494743))

(declare-fun m!3494745 () Bool)

(assert (=> b!3219306 m!3494745))

(assert (=> b!3219306 m!3494727))

(assert (=> b!3219306 m!3494713))

(declare-fun m!3494747 () Bool)

(assert (=> b!3219306 m!3494747))

(assert (=> b!3219306 m!3494719))

(assert (=> d!883124 d!884188))

(declare-fun d!884190 () Bool)

(declare-fun lt!1089967 () Int)

(assert (=> d!884190 (>= lt!1089967 0)))

(declare-fun e!2007225 () Int)

(assert (=> d!884190 (= lt!1089967 e!2007225)))

(declare-fun c!541378 () Bool)

(assert (=> d!884190 (= c!541378 ((_ is Nil!36205) lt!1089081))))

(assert (=> d!884190 (= (size!27294 lt!1089081) lt!1089967)))

(declare-fun b!3219309 () Bool)

(assert (=> b!3219309 (= e!2007225 0)))

(declare-fun b!3219310 () Bool)

(assert (=> b!3219310 (= e!2007225 (+ 1 (size!27294 (t!239820 lt!1089081))))))

(assert (= (and d!884190 c!541378) b!3219309))

(assert (= (and d!884190 (not c!541378)) b!3219310))

(declare-fun m!3494749 () Bool)

(assert (=> b!3219310 m!3494749))

(assert (=> b!3217703 d!884190))

(assert (=> b!3217703 d!883152))

(declare-fun d!884192 () Bool)

(declare-fun lt!1089968 () Int)

(assert (=> d!884192 (>= lt!1089968 0)))

(declare-fun e!2007226 () Int)

(assert (=> d!884192 (= lt!1089968 e!2007226)))

(declare-fun c!541379 () Bool)

(assert (=> d!884192 (= c!541379 ((_ is Nil!36205) lt!1088681))))

(assert (=> d!884192 (= (size!27294 lt!1088681) lt!1089968)))

(declare-fun b!3219311 () Bool)

(assert (=> b!3219311 (= e!2007226 0)))

(declare-fun b!3219312 () Bool)

(assert (=> b!3219312 (= e!2007226 (+ 1 (size!27294 (t!239820 lt!1088681))))))

(assert (= (and d!884192 c!541379) b!3219311))

(assert (= (and d!884192 (not c!541379)) b!3219312))

(declare-fun m!3494751 () Bool)

(assert (=> b!3219312 m!3494751))

(assert (=> b!3217703 d!884192))

(declare-fun d!884194 () Bool)

(assert (=> d!884194 (= (list!12887 (_2!20945 lt!1089089)) (list!12889 (c!540717 (_2!20945 lt!1089089))))))

(declare-fun bs!542465 () Bool)

(assert (= bs!542465 d!884194))

(declare-fun m!3494753 () Bool)

(assert (=> bs!542465 m!3494753))

(assert (=> b!3217705 d!884194))

(assert (=> b!3217705 d!884070))

(assert (=> b!3217705 d!884072))

(assert (=> b!3216968 d!883852))

(declare-fun d!884196 () Bool)

(assert (=> d!884196 (= (isEmpty!20308 lt!1088680) ((_ is Nil!36205) lt!1088680))))

(assert (=> bm!232828 d!884196))

(declare-fun d!884198 () Bool)

(declare-fun c!541380 () Bool)

(assert (=> d!884198 (= c!541380 ((_ is Nil!36205) lt!1088738))))

(declare-fun e!2007227 () (InoxSet C!20164))

(assert (=> d!884198 (= (content!4899 lt!1088738) e!2007227)))

(declare-fun b!3219313 () Bool)

(assert (=> b!3219313 (= e!2007227 ((as const (Array C!20164 Bool)) false))))

(declare-fun b!3219314 () Bool)

(assert (=> b!3219314 (= e!2007227 ((_ map or) (store ((as const (Array C!20164 Bool)) false) (h!41625 lt!1088738) true) (content!4899 (t!239820 lt!1088738))))))

(assert (= (and d!884198 c!541380) b!3219313))

(assert (= (and d!884198 (not c!541380)) b!3219314))

(declare-fun m!3494755 () Bool)

(assert (=> b!3219314 m!3494755))

(declare-fun m!3494757 () Bool)

(assert (=> b!3219314 m!3494757))

(assert (=> d!882812 d!884198))

(declare-fun d!884200 () Bool)

(declare-fun c!541381 () Bool)

(assert (=> d!884200 (= c!541381 ((_ is Nil!36205) (++!8698 lt!1088698 lt!1088705)))))

(declare-fun e!2007228 () (InoxSet C!20164))

(assert (=> d!884200 (= (content!4899 (++!8698 lt!1088698 lt!1088705)) e!2007228)))

(declare-fun b!3219315 () Bool)

(assert (=> b!3219315 (= e!2007228 ((as const (Array C!20164 Bool)) false))))

(declare-fun b!3219316 () Bool)

(assert (=> b!3219316 (= e!2007228 ((_ map or) (store ((as const (Array C!20164 Bool)) false) (h!41625 (++!8698 lt!1088698 lt!1088705)) true) (content!4899 (t!239820 (++!8698 lt!1088698 lt!1088705)))))))

(assert (= (and d!884200 c!541381) b!3219315))

(assert (= (and d!884200 (not c!541381)) b!3219316))

(declare-fun m!3494759 () Bool)

(assert (=> b!3219316 m!3494759))

(declare-fun m!3494761 () Bool)

(assert (=> b!3219316 m!3494761))

(assert (=> d!882812 d!884200))

(assert (=> d!882812 d!884110))

(declare-fun b!3219317 () Bool)

(declare-fun e!2007232 () List!36329)

(assert (=> b!3219317 (= e!2007232 Nil!36205)))

(declare-fun b!3219318 () Bool)

(declare-fun e!2007230 () List!36329)

(declare-fun call!233071 () List!36329)

(assert (=> b!3219318 (= e!2007230 call!233071)))

(declare-fun b!3219319 () Bool)

(declare-fun e!2007229 () List!36329)

(declare-fun call!233070 () List!36329)

(assert (=> b!3219319 (= e!2007229 call!233070)))

(declare-fun c!541385 () Bool)

(declare-fun bm!233064 () Bool)

(declare-fun call!233072 () List!36329)

(assert (=> bm!233064 (= call!233072 (usedCharacters!546 (ite c!541385 (regTwo!20491 (ite c!540897 (reg!10318 (regex!5230 (rule!7682 separatorToken!241))) (ite c!540898 (regOne!20491 (regex!5230 (rule!7682 separatorToken!241))) (regTwo!20490 (regex!5230 (rule!7682 separatorToken!241)))))) (regOne!20490 (ite c!540897 (reg!10318 (regex!5230 (rule!7682 separatorToken!241))) (ite c!540898 (regOne!20491 (regex!5230 (rule!7682 separatorToken!241))) (regTwo!20490 (regex!5230 (rule!7682 separatorToken!241)))))))))))

(declare-fun b!3219320 () Bool)

(assert (=> b!3219320 (= e!2007230 e!2007229)))

(assert (=> b!3219320 (= c!541385 ((_ is Union!9989) (ite c!540897 (reg!10318 (regex!5230 (rule!7682 separatorToken!241))) (ite c!540898 (regOne!20491 (regex!5230 (rule!7682 separatorToken!241))) (regTwo!20490 (regex!5230 (rule!7682 separatorToken!241)))))))))

(declare-fun b!3219321 () Bool)

(declare-fun e!2007231 () List!36329)

(assert (=> b!3219321 (= e!2007231 (Cons!36205 (c!540716 (ite c!540897 (reg!10318 (regex!5230 (rule!7682 separatorToken!241))) (ite c!540898 (regOne!20491 (regex!5230 (rule!7682 separatorToken!241))) (regTwo!20490 (regex!5230 (rule!7682 separatorToken!241)))))) Nil!36205))))

(declare-fun c!541383 () Bool)

(declare-fun d!884202 () Bool)

(assert (=> d!884202 (= c!541383 (or ((_ is EmptyExpr!9989) (ite c!540897 (reg!10318 (regex!5230 (rule!7682 separatorToken!241))) (ite c!540898 (regOne!20491 (regex!5230 (rule!7682 separatorToken!241))) (regTwo!20490 (regex!5230 (rule!7682 separatorToken!241)))))) ((_ is EmptyLang!9989) (ite c!540897 (reg!10318 (regex!5230 (rule!7682 separatorToken!241))) (ite c!540898 (regOne!20491 (regex!5230 (rule!7682 separatorToken!241))) (regTwo!20490 (regex!5230 (rule!7682 separatorToken!241))))))))))

(assert (=> d!884202 (= (usedCharacters!546 (ite c!540897 (reg!10318 (regex!5230 (rule!7682 separatorToken!241))) (ite c!540898 (regOne!20491 (regex!5230 (rule!7682 separatorToken!241))) (regTwo!20490 (regex!5230 (rule!7682 separatorToken!241)))))) e!2007232)))

(declare-fun bm!233065 () Bool)

(declare-fun call!233069 () List!36329)

(assert (=> bm!233065 (= call!233069 call!233071)))

(declare-fun b!3219322 () Bool)

(assert (=> b!3219322 (= e!2007229 call!233070)))

(declare-fun bm!233066 () Bool)

(assert (=> bm!233066 (= call!233070 (++!8698 (ite c!541385 call!233069 call!233072) (ite c!541385 call!233072 call!233069)))))

(declare-fun c!541384 () Bool)

(declare-fun b!3219323 () Bool)

(assert (=> b!3219323 (= c!541384 ((_ is Star!9989) (ite c!540897 (reg!10318 (regex!5230 (rule!7682 separatorToken!241))) (ite c!540898 (regOne!20491 (regex!5230 (rule!7682 separatorToken!241))) (regTwo!20490 (regex!5230 (rule!7682 separatorToken!241)))))))))

(assert (=> b!3219323 (= e!2007231 e!2007230)))

(declare-fun b!3219324 () Bool)

(assert (=> b!3219324 (= e!2007232 e!2007231)))

(declare-fun c!541382 () Bool)

(assert (=> b!3219324 (= c!541382 ((_ is ElementMatch!9989) (ite c!540897 (reg!10318 (regex!5230 (rule!7682 separatorToken!241))) (ite c!540898 (regOne!20491 (regex!5230 (rule!7682 separatorToken!241))) (regTwo!20490 (regex!5230 (rule!7682 separatorToken!241)))))))))

(declare-fun bm!233067 () Bool)

(assert (=> bm!233067 (= call!233071 (usedCharacters!546 (ite c!541384 (reg!10318 (ite c!540897 (reg!10318 (regex!5230 (rule!7682 separatorToken!241))) (ite c!540898 (regOne!20491 (regex!5230 (rule!7682 separatorToken!241))) (regTwo!20490 (regex!5230 (rule!7682 separatorToken!241)))))) (ite c!541385 (regOne!20491 (ite c!540897 (reg!10318 (regex!5230 (rule!7682 separatorToken!241))) (ite c!540898 (regOne!20491 (regex!5230 (rule!7682 separatorToken!241))) (regTwo!20490 (regex!5230 (rule!7682 separatorToken!241)))))) (regTwo!20490 (ite c!540897 (reg!10318 (regex!5230 (rule!7682 separatorToken!241))) (ite c!540898 (regOne!20491 (regex!5230 (rule!7682 separatorToken!241))) (regTwo!20490 (regex!5230 (rule!7682 separatorToken!241))))))))))))

(assert (= (and d!884202 c!541383) b!3219317))

(assert (= (and d!884202 (not c!541383)) b!3219324))

(assert (= (and b!3219324 c!541382) b!3219321))

(assert (= (and b!3219324 (not c!541382)) b!3219323))

(assert (= (and b!3219323 c!541384) b!3219318))

(assert (= (and b!3219323 (not c!541384)) b!3219320))

(assert (= (and b!3219320 c!541385) b!3219322))

(assert (= (and b!3219320 (not c!541385)) b!3219319))

(assert (= (or b!3219322 b!3219319) bm!233064))

(assert (= (or b!3219322 b!3219319) bm!233065))

(assert (= (or b!3219322 b!3219319) bm!233066))

(assert (= (or b!3219318 bm!233065) bm!233067))

(declare-fun m!3494763 () Bool)

(assert (=> bm!233064 m!3494763))

(declare-fun m!3494765 () Bool)

(assert (=> bm!233066 m!3494765))

(declare-fun m!3494767 () Bool)

(assert (=> bm!233067 m!3494767))

(assert (=> bm!232872 d!884202))

(declare-fun b!3219325 () Bool)

(declare-fun e!2007236 () Bool)

(declare-fun lt!1089969 () Bool)

(assert (=> b!3219325 (= e!2007236 (not lt!1089969))))

(declare-fun b!3219326 () Bool)

(declare-fun e!2007234 () Bool)

(declare-fun e!2007238 () Bool)

(assert (=> b!3219326 (= e!2007234 e!2007238)))

(declare-fun res!1310529 () Bool)

(assert (=> b!3219326 (=> res!1310529 e!2007238)))

(declare-fun call!233073 () Bool)

(assert (=> b!3219326 (= res!1310529 call!233073)))

(declare-fun b!3219327 () Bool)

(declare-fun res!1310534 () Bool)

(declare-fun e!2007237 () Bool)

(assert (=> b!3219327 (=> (not res!1310534) (not e!2007237))))

(assert (=> b!3219327 (= res!1310534 (isEmpty!20308 (tail!5218 (tail!5218 lt!1088698))))))

(declare-fun b!3219328 () Bool)

(assert (=> b!3219328 (= e!2007237 (= (head!7053 (tail!5218 lt!1088698)) (c!540716 (derivativeStep!2954 (regex!5230 lt!1088701) (head!7053 lt!1088698)))))))

(declare-fun b!3219329 () Bool)

(declare-fun res!1310530 () Bool)

(declare-fun e!2007235 () Bool)

(assert (=> b!3219329 (=> res!1310530 e!2007235)))

(assert (=> b!3219329 (= res!1310530 e!2007237)))

(declare-fun res!1310527 () Bool)

(assert (=> b!3219329 (=> (not res!1310527) (not e!2007237))))

(assert (=> b!3219329 (= res!1310527 lt!1089969)))

(declare-fun b!3219330 () Bool)

(assert (=> b!3219330 (= e!2007235 e!2007234)))

(declare-fun res!1310531 () Bool)

(assert (=> b!3219330 (=> (not res!1310531) (not e!2007234))))

(assert (=> b!3219330 (= res!1310531 (not lt!1089969))))

(declare-fun b!3219332 () Bool)

(declare-fun e!2007239 () Bool)

(assert (=> b!3219332 (= e!2007239 (= lt!1089969 call!233073))))

(declare-fun bm!233068 () Bool)

(assert (=> bm!233068 (= call!233073 (isEmpty!20308 (tail!5218 lt!1088698)))))

(declare-fun b!3219333 () Bool)

(assert (=> b!3219333 (= e!2007238 (not (= (head!7053 (tail!5218 lt!1088698)) (c!540716 (derivativeStep!2954 (regex!5230 lt!1088701) (head!7053 lt!1088698))))))))

(declare-fun b!3219334 () Bool)

(declare-fun res!1310528 () Bool)

(assert (=> b!3219334 (=> res!1310528 e!2007238)))

(assert (=> b!3219334 (= res!1310528 (not (isEmpty!20308 (tail!5218 (tail!5218 lt!1088698)))))))

(declare-fun b!3219335 () Bool)

(declare-fun e!2007233 () Bool)

(assert (=> b!3219335 (= e!2007233 (matchR!4623 (derivativeStep!2954 (derivativeStep!2954 (regex!5230 lt!1088701) (head!7053 lt!1088698)) (head!7053 (tail!5218 lt!1088698))) (tail!5218 (tail!5218 lt!1088698))))))

(declare-fun b!3219331 () Bool)

(assert (=> b!3219331 (= e!2007233 (nullable!3401 (derivativeStep!2954 (regex!5230 lt!1088701) (head!7053 lt!1088698))))))

(declare-fun d!884204 () Bool)

(assert (=> d!884204 e!2007239))

(declare-fun c!541388 () Bool)

(assert (=> d!884204 (= c!541388 ((_ is EmptyExpr!9989) (derivativeStep!2954 (regex!5230 lt!1088701) (head!7053 lt!1088698))))))

(assert (=> d!884204 (= lt!1089969 e!2007233)))

(declare-fun c!541387 () Bool)

(assert (=> d!884204 (= c!541387 (isEmpty!20308 (tail!5218 lt!1088698)))))

(assert (=> d!884204 (validRegex!4557 (derivativeStep!2954 (regex!5230 lt!1088701) (head!7053 lt!1088698)))))

(assert (=> d!884204 (= (matchR!4623 (derivativeStep!2954 (regex!5230 lt!1088701) (head!7053 lt!1088698)) (tail!5218 lt!1088698)) lt!1089969)))

(declare-fun b!3219336 () Bool)

(declare-fun res!1310533 () Bool)

(assert (=> b!3219336 (=> (not res!1310533) (not e!2007237))))

(assert (=> b!3219336 (= res!1310533 (not call!233073))))

(declare-fun b!3219337 () Bool)

(declare-fun res!1310532 () Bool)

(assert (=> b!3219337 (=> res!1310532 e!2007235)))

(assert (=> b!3219337 (= res!1310532 (not ((_ is ElementMatch!9989) (derivativeStep!2954 (regex!5230 lt!1088701) (head!7053 lt!1088698)))))))

(assert (=> b!3219337 (= e!2007236 e!2007235)))

(declare-fun b!3219338 () Bool)

(assert (=> b!3219338 (= e!2007239 e!2007236)))

(declare-fun c!541386 () Bool)

(assert (=> b!3219338 (= c!541386 ((_ is EmptyLang!9989) (derivativeStep!2954 (regex!5230 lt!1088701) (head!7053 lt!1088698))))))

(assert (= (and d!884204 c!541387) b!3219331))

(assert (= (and d!884204 (not c!541387)) b!3219335))

(assert (= (and d!884204 c!541388) b!3219332))

(assert (= (and d!884204 (not c!541388)) b!3219338))

(assert (= (and b!3219338 c!541386) b!3219325))

(assert (= (and b!3219338 (not c!541386)) b!3219337))

(assert (= (and b!3219337 (not res!1310532)) b!3219329))

(assert (= (and b!3219329 res!1310527) b!3219336))

(assert (= (and b!3219336 res!1310533) b!3219327))

(assert (= (and b!3219327 res!1310534) b!3219328))

(assert (= (and b!3219329 (not res!1310530)) b!3219330))

(assert (= (and b!3219330 res!1310531) b!3219326))

(assert (= (and b!3219326 (not res!1310529)) b!3219334))

(assert (= (and b!3219334 (not res!1310528)) b!3219333))

(assert (= (or b!3219332 b!3219326 b!3219336) bm!233068))

(assert (=> d!884204 m!3490605))

(assert (=> d!884204 m!3490607))

(assert (=> d!884204 m!3490613))

(declare-fun m!3494769 () Bool)

(assert (=> d!884204 m!3494769))

(assert (=> b!3219334 m!3490605))

(declare-fun m!3494771 () Bool)

(assert (=> b!3219334 m!3494771))

(assert (=> b!3219334 m!3494771))

(declare-fun m!3494773 () Bool)

(assert (=> b!3219334 m!3494773))

(assert (=> b!3219328 m!3490605))

(declare-fun m!3494775 () Bool)

(assert (=> b!3219328 m!3494775))

(assert (=> b!3219331 m!3490613))

(declare-fun m!3494777 () Bool)

(assert (=> b!3219331 m!3494777))

(assert (=> b!3219327 m!3490605))

(assert (=> b!3219327 m!3494771))

(assert (=> b!3219327 m!3494771))

(assert (=> b!3219327 m!3494773))

(assert (=> b!3219335 m!3490605))

(assert (=> b!3219335 m!3494775))

(assert (=> b!3219335 m!3490613))

(assert (=> b!3219335 m!3494775))

(declare-fun m!3494779 () Bool)

(assert (=> b!3219335 m!3494779))

(assert (=> b!3219335 m!3490605))

(assert (=> b!3219335 m!3494771))

(assert (=> b!3219335 m!3494779))

(assert (=> b!3219335 m!3494771))

(declare-fun m!3494781 () Bool)

(assert (=> b!3219335 m!3494781))

(assert (=> bm!233068 m!3490605))

(assert (=> bm!233068 m!3490607))

(assert (=> b!3219333 m!3490605))

(assert (=> b!3219333 m!3494775))

(assert (=> b!3216934 d!884204))

(declare-fun b!3219339 () Bool)

(declare-fun e!2007243 () Regex!9989)

(declare-fun call!233074 () Regex!9989)

(declare-fun call!233075 () Regex!9989)

(assert (=> b!3219339 (= e!2007243 (Union!9989 call!233074 call!233075))))

(declare-fun b!3219340 () Bool)

(declare-fun c!541393 () Bool)

(assert (=> b!3219340 (= c!541393 ((_ is Union!9989) (regex!5230 lt!1088701)))))

(declare-fun e!2007240 () Regex!9989)

(assert (=> b!3219340 (= e!2007240 e!2007243)))

(declare-fun bm!233069 () Bool)

(declare-fun c!541391 () Bool)

(assert (=> bm!233069 (= call!233075 (derivativeStep!2954 (ite c!541393 (regTwo!20491 (regex!5230 lt!1088701)) (ite c!541391 (reg!10318 (regex!5230 lt!1088701)) (regOne!20490 (regex!5230 lt!1088701)))) (head!7053 lt!1088698)))))

(declare-fun bm!233070 () Bool)

(assert (=> bm!233070 (= call!233074 (derivativeStep!2954 (ite c!541393 (regOne!20491 (regex!5230 lt!1088701)) (regTwo!20490 (regex!5230 lt!1088701))) (head!7053 lt!1088698)))))

(declare-fun b!3219341 () Bool)

(declare-fun e!2007244 () Regex!9989)

(declare-fun call!233077 () Regex!9989)

(assert (=> b!3219341 (= e!2007244 (Concat!15449 call!233077 (regex!5230 lt!1088701)))))

(declare-fun bm!233071 () Bool)

(declare-fun call!233076 () Regex!9989)

(assert (=> bm!233071 (= call!233076 call!233077)))

(declare-fun d!884206 () Bool)

(declare-fun lt!1089970 () Regex!9989)

(assert (=> d!884206 (validRegex!4557 lt!1089970)))

(declare-fun e!2007242 () Regex!9989)

(assert (=> d!884206 (= lt!1089970 e!2007242)))

(declare-fun c!541389 () Bool)

(assert (=> d!884206 (= c!541389 (or ((_ is EmptyExpr!9989) (regex!5230 lt!1088701)) ((_ is EmptyLang!9989) (regex!5230 lt!1088701))))))

(assert (=> d!884206 (validRegex!4557 (regex!5230 lt!1088701))))

(assert (=> d!884206 (= (derivativeStep!2954 (regex!5230 lt!1088701) (head!7053 lt!1088698)) lt!1089970)))

(declare-fun b!3219342 () Bool)

(assert (=> b!3219342 (= e!2007243 e!2007244)))

(assert (=> b!3219342 (= c!541391 ((_ is Star!9989) (regex!5230 lt!1088701)))))

(declare-fun b!3219343 () Bool)

(declare-fun c!541392 () Bool)

(assert (=> b!3219343 (= c!541392 (nullable!3401 (regOne!20490 (regex!5230 lt!1088701))))))

(declare-fun e!2007241 () Regex!9989)

(assert (=> b!3219343 (= e!2007244 e!2007241)))

(declare-fun b!3219344 () Bool)

(assert (=> b!3219344 (= e!2007240 (ite (= (head!7053 lt!1088698) (c!540716 (regex!5230 lt!1088701))) EmptyExpr!9989 EmptyLang!9989))))

(declare-fun bm!233072 () Bool)

(assert (=> bm!233072 (= call!233077 call!233075)))

(declare-fun b!3219345 () Bool)

(assert (=> b!3219345 (= e!2007241 (Union!9989 (Concat!15449 call!233076 (regTwo!20490 (regex!5230 lt!1088701))) call!233074))))

(declare-fun b!3219346 () Bool)

(assert (=> b!3219346 (= e!2007242 EmptyLang!9989)))

(declare-fun b!3219347 () Bool)

(assert (=> b!3219347 (= e!2007242 e!2007240)))

(declare-fun c!541390 () Bool)

(assert (=> b!3219347 (= c!541390 ((_ is ElementMatch!9989) (regex!5230 lt!1088701)))))

(declare-fun b!3219348 () Bool)

(assert (=> b!3219348 (= e!2007241 (Union!9989 (Concat!15449 call!233076 (regTwo!20490 (regex!5230 lt!1088701))) EmptyLang!9989))))

(assert (= (and d!884206 c!541389) b!3219346))

(assert (= (and d!884206 (not c!541389)) b!3219347))

(assert (= (and b!3219347 c!541390) b!3219344))

(assert (= (and b!3219347 (not c!541390)) b!3219340))

(assert (= (and b!3219340 c!541393) b!3219339))

(assert (= (and b!3219340 (not c!541393)) b!3219342))

(assert (= (and b!3219342 c!541391) b!3219341))

(assert (= (and b!3219342 (not c!541391)) b!3219343))

(assert (= (and b!3219343 c!541392) b!3219345))

(assert (= (and b!3219343 (not c!541392)) b!3219348))

(assert (= (or b!3219345 b!3219348) bm!233071))

(assert (= (or b!3219341 bm!233071) bm!233072))

(assert (= (or b!3219339 b!3219345) bm!233070))

(assert (= (or b!3219339 bm!233072) bm!233069))

(assert (=> bm!233069 m!3490609))

(declare-fun m!3494783 () Bool)

(assert (=> bm!233069 m!3494783))

(assert (=> bm!233070 m!3490609))

(declare-fun m!3494785 () Bool)

(assert (=> bm!233070 m!3494785))

(declare-fun m!3494787 () Bool)

(assert (=> d!884206 m!3494787))

(assert (=> d!884206 m!3490603))

(declare-fun m!3494789 () Bool)

(assert (=> b!3219343 m!3494789))

(assert (=> b!3216934 d!884206))

(assert (=> b!3216934 d!884024))

(assert (=> b!3216934 d!884146))

(assert (=> bm!232832 d!884196))

(declare-fun b!3219349 () Bool)

(declare-fun res!1310539 () Bool)

(declare-fun e!2007246 () Bool)

(assert (=> b!3219349 (=> (not res!1310539) (not e!2007246))))

(declare-fun lt!1089974 () Option!7164)

(assert (=> b!3219349 (= res!1310539 (= (list!12887 (charsOf!3246 (_1!20946 (get!11534 lt!1089974)))) (originalCharacters!5944 (_1!20946 (get!11534 lt!1089974)))))))

(declare-fun b!3219351 () Bool)

(declare-fun res!1310536 () Bool)

(assert (=> b!3219351 (=> (not res!1310536) (not e!2007246))))

(assert (=> b!3219351 (= res!1310536 (= (value!169515 (_1!20946 (get!11534 lt!1089974))) (apply!8221 (transformation!5230 (rule!7682 (_1!20946 (get!11534 lt!1089974)))) (seqFromList!3531 (originalCharacters!5944 (_1!20946 (get!11534 lt!1089974)))))))))

(declare-fun b!3219352 () Bool)

(declare-fun e!2007245 () Option!7164)

(declare-fun call!233078 () Option!7164)

(assert (=> b!3219352 (= e!2007245 call!233078)))

(declare-fun b!3219353 () Bool)

(declare-fun res!1310538 () Bool)

(assert (=> b!3219353 (=> (not res!1310538) (not e!2007246))))

(assert (=> b!3219353 (= res!1310538 (matchR!4623 (regex!5230 (rule!7682 (_1!20946 (get!11534 lt!1089974)))) (list!12887 (charsOf!3246 (_1!20946 (get!11534 lt!1089974))))))))

(declare-fun b!3219354 () Bool)

(assert (=> b!3219354 (= e!2007246 (contains!6483 (t!239821 rules!2135) (rule!7682 (_1!20946 (get!11534 lt!1089974)))))))

(declare-fun bm!233073 () Bool)

(assert (=> bm!233073 (= call!233078 (maxPrefixOneRule!1598 thiss!18206 (h!41626 (t!239821 rules!2135)) lt!1088678))))

(declare-fun b!3219355 () Bool)

(declare-fun res!1310537 () Bool)

(assert (=> b!3219355 (=> (not res!1310537) (not e!2007246))))

(assert (=> b!3219355 (= res!1310537 (= (++!8698 (list!12887 (charsOf!3246 (_1!20946 (get!11534 lt!1089974)))) (_2!20946 (get!11534 lt!1089974))) lt!1088678))))

(declare-fun b!3219356 () Bool)

(declare-fun e!2007247 () Bool)

(assert (=> b!3219356 (= e!2007247 e!2007246)))

(declare-fun res!1310535 () Bool)

(assert (=> b!3219356 (=> (not res!1310535) (not e!2007246))))

(assert (=> b!3219356 (= res!1310535 (isDefined!5566 lt!1089974))))

(declare-fun b!3219357 () Bool)

(declare-fun lt!1089971 () Option!7164)

(declare-fun lt!1089972 () Option!7164)

(assert (=> b!3219357 (= e!2007245 (ite (and ((_ is None!7163) lt!1089971) ((_ is None!7163) lt!1089972)) None!7163 (ite ((_ is None!7163) lt!1089972) lt!1089971 (ite ((_ is None!7163) lt!1089971) lt!1089972 (ite (>= (size!27293 (_1!20946 (v!35733 lt!1089971))) (size!27293 (_1!20946 (v!35733 lt!1089972)))) lt!1089971 lt!1089972)))))))

(assert (=> b!3219357 (= lt!1089971 call!233078)))

(assert (=> b!3219357 (= lt!1089972 (maxPrefix!2461 thiss!18206 (t!239821 (t!239821 rules!2135)) lt!1088678))))

(declare-fun b!3219350 () Bool)

(declare-fun res!1310540 () Bool)

(assert (=> b!3219350 (=> (not res!1310540) (not e!2007246))))

(assert (=> b!3219350 (= res!1310540 (< (size!27294 (_2!20946 (get!11534 lt!1089974))) (size!27294 lt!1088678)))))

(declare-fun d!884208 () Bool)

(assert (=> d!884208 e!2007247))

(declare-fun res!1310541 () Bool)

(assert (=> d!884208 (=> res!1310541 e!2007247)))

(assert (=> d!884208 (= res!1310541 (isEmpty!20312 lt!1089974))))

(assert (=> d!884208 (= lt!1089974 e!2007245)))

(declare-fun c!541394 () Bool)

(assert (=> d!884208 (= c!541394 (and ((_ is Cons!36206) (t!239821 rules!2135)) ((_ is Nil!36206) (t!239821 (t!239821 rules!2135)))))))

(declare-fun lt!1089973 () Unit!50722)

(declare-fun lt!1089975 () Unit!50722)

(assert (=> d!884208 (= lt!1089973 lt!1089975)))

(assert (=> d!884208 (isPrefix!2788 lt!1088678 lt!1088678)))

(assert (=> d!884208 (= lt!1089975 (lemmaIsPrefixRefl!1747 lt!1088678 lt!1088678))))

(assert (=> d!884208 (rulesValidInductive!1781 thiss!18206 (t!239821 rules!2135))))

(assert (=> d!884208 (= (maxPrefix!2461 thiss!18206 (t!239821 rules!2135) lt!1088678) lt!1089974)))

(assert (= (and d!884208 c!541394) b!3219352))

(assert (= (and d!884208 (not c!541394)) b!3219357))

(assert (= (or b!3219352 b!3219357) bm!233073))

(assert (= (and d!884208 (not res!1310541)) b!3219356))

(assert (= (and b!3219356 res!1310535) b!3219349))

(assert (= (and b!3219349 res!1310539) b!3219350))

(assert (= (and b!3219350 res!1310540) b!3219355))

(assert (= (and b!3219355 res!1310537) b!3219351))

(assert (= (and b!3219351 res!1310536) b!3219353))

(assert (= (and b!3219353 res!1310538) b!3219354))

(declare-fun m!3494791 () Bool)

(assert (=> b!3219357 m!3494791))

(declare-fun m!3494793 () Bool)

(assert (=> d!884208 m!3494793))

(assert (=> d!884208 m!3491053))

(assert (=> d!884208 m!3491055))

(assert (=> d!884208 m!3494581))

(declare-fun m!3494795 () Bool)

(assert (=> b!3219353 m!3494795))

(declare-fun m!3494797 () Bool)

(assert (=> b!3219353 m!3494797))

(assert (=> b!3219353 m!3494797))

(declare-fun m!3494799 () Bool)

(assert (=> b!3219353 m!3494799))

(assert (=> b!3219353 m!3494799))

(declare-fun m!3494801 () Bool)

(assert (=> b!3219353 m!3494801))

(assert (=> b!3219349 m!3494795))

(assert (=> b!3219349 m!3494797))

(assert (=> b!3219349 m!3494797))

(assert (=> b!3219349 m!3494799))

(assert (=> b!3219350 m!3494795))

(declare-fun m!3494803 () Bool)

(assert (=> b!3219350 m!3494803))

(assert (=> b!3219350 m!3491069))

(assert (=> b!3219351 m!3494795))

(declare-fun m!3494805 () Bool)

(assert (=> b!3219351 m!3494805))

(assert (=> b!3219351 m!3494805))

(declare-fun m!3494807 () Bool)

(assert (=> b!3219351 m!3494807))

(declare-fun m!3494809 () Bool)

(assert (=> b!3219356 m!3494809))

(assert (=> b!3219355 m!3494795))

(assert (=> b!3219355 m!3494797))

(assert (=> b!3219355 m!3494797))

(assert (=> b!3219355 m!3494799))

(assert (=> b!3219355 m!3494799))

(declare-fun m!3494811 () Bool)

(assert (=> b!3219355 m!3494811))

(declare-fun m!3494813 () Bool)

(assert (=> bm!233073 m!3494813))

(assert (=> b!3219354 m!3494795))

(declare-fun m!3494815 () Bool)

(assert (=> b!3219354 m!3494815))

(assert (=> b!3217209 d!884208))

(declare-fun d!884210 () Bool)

(assert (=> d!884210 (= (isEmpty!20312 lt!1089033) (not ((_ is Some!7163) lt!1089033)))))

(assert (=> d!883108 d!884210))

(declare-fun d!884212 () Bool)

(assert (=> d!884212 (= (isEmpty!20308 (_1!20949 lt!1089031)) ((_ is Nil!36205) (_1!20949 lt!1089031)))))

(assert (=> d!883108 d!884212))

(declare-fun d!884214 () Bool)

(declare-fun lt!1090011 () tuple2!35630)

(assert (=> d!884214 (= (++!8698 (_1!20949 lt!1090011) (_2!20949 lt!1090011)) lt!1088680)))

(assert (=> d!884214 (= lt!1090011 (findLongestMatchInner!835 (regex!5230 (rule!7682 (h!41627 (t!239822 tokens!494)))) Nil!36205 0 lt!1088680 lt!1088680 (sizeTr!165 lt!1088680 0)))))

(declare-fun lt!1090015 () Unit!50722)

(declare-fun lt!1090016 () Unit!50722)

(assert (=> d!884214 (= lt!1090015 lt!1090016)))

(declare-fun lt!1090014 () List!36329)

(declare-fun lt!1090010 () Int)

(assert (=> d!884214 (= (sizeTr!165 lt!1090014 lt!1090010) (+ (size!27294 lt!1090014) lt!1090010))))

(assert (=> d!884214 (= lt!1090016 (lemmaSizeTrEqualsSize!164 lt!1090014 lt!1090010))))

(assert (=> d!884214 (= lt!1090010 0)))

(assert (=> d!884214 (= lt!1090014 Nil!36205)))

(declare-fun lt!1090017 () Unit!50722)

(declare-fun lt!1090012 () Unit!50722)

(assert (=> d!884214 (= lt!1090017 lt!1090012)))

(declare-fun lt!1090013 () Int)

(assert (=> d!884214 (= (sizeTr!165 lt!1088680 lt!1090013) (+ (size!27294 lt!1088680) lt!1090013))))

(assert (=> d!884214 (= lt!1090012 (lemmaSizeTrEqualsSize!164 lt!1088680 lt!1090013))))

(assert (=> d!884214 (= lt!1090013 0)))

(assert (=> d!884214 (validRegex!4557 (regex!5230 (rule!7682 (h!41627 (t!239822 tokens!494)))))))

(assert (=> d!884214 (= (findLongestMatch!750 (regex!5230 (rule!7682 (h!41627 (t!239822 tokens!494)))) lt!1088680) lt!1090011)))

(declare-fun bs!542466 () Bool)

(assert (= bs!542466 d!884214))

(declare-fun m!3494817 () Bool)

(assert (=> bs!542466 m!3494817))

(declare-fun m!3494819 () Bool)

(assert (=> bs!542466 m!3494819))

(declare-fun m!3494821 () Bool)

(assert (=> bs!542466 m!3494821))

(declare-fun m!3494823 () Bool)

(assert (=> bs!542466 m!3494823))

(assert (=> bs!542466 m!3490399))

(assert (=> bs!542466 m!3494817))

(declare-fun m!3494825 () Bool)

(assert (=> bs!542466 m!3494825))

(declare-fun m!3494827 () Bool)

(assert (=> bs!542466 m!3494827))

(declare-fun m!3494829 () Bool)

(assert (=> bs!542466 m!3494829))

(assert (=> bs!542466 m!3490733))

(declare-fun m!3494831 () Bool)

(assert (=> bs!542466 m!3494831))

(assert (=> d!883108 d!884214))

(declare-fun d!884216 () Bool)

(declare-fun res!1310543 () Bool)

(declare-fun e!2007252 () Bool)

(assert (=> d!884216 (=> (not res!1310543) (not e!2007252))))

(assert (=> d!884216 (= res!1310543 (validRegex!4557 (regex!5230 (rule!7682 (h!41627 (t!239822 tokens!494))))))))

(assert (=> d!884216 (= (ruleValid!1652 thiss!18206 (rule!7682 (h!41627 (t!239822 tokens!494)))) e!2007252)))

(declare-fun b!3219365 () Bool)

(declare-fun res!1310544 () Bool)

(assert (=> b!3219365 (=> (not res!1310544) (not e!2007252))))

(assert (=> b!3219365 (= res!1310544 (not (nullable!3401 (regex!5230 (rule!7682 (h!41627 (t!239822 tokens!494)))))))))

(declare-fun b!3219366 () Bool)

(assert (=> b!3219366 (= e!2007252 (not (= (tag!5760 (rule!7682 (h!41627 (t!239822 tokens!494)))) (String!40635 ""))))))

(assert (= (and d!884216 res!1310543) b!3219365))

(assert (= (and b!3219365 res!1310544) b!3219366))

(assert (=> d!884216 m!3490733))

(assert (=> b!3219365 m!3490735))

(assert (=> d!883108 d!884216))

(declare-fun d!884218 () Bool)

(declare-fun lt!1090018 () Bool)

(assert (=> d!884218 (= lt!1090018 (select (content!4902 tokens!494) (h!41627 tokens!494)))))

(declare-fun e!2007253 () Bool)

(assert (=> d!884218 (= lt!1090018 e!2007253)))

(declare-fun res!1310545 () Bool)

(assert (=> d!884218 (=> (not res!1310545) (not e!2007253))))

(assert (=> d!884218 (= res!1310545 ((_ is Cons!36207) tokens!494))))

(assert (=> d!884218 (= (contains!6482 tokens!494 (h!41627 tokens!494)) lt!1090018)))

(declare-fun b!3219367 () Bool)

(declare-fun e!2007254 () Bool)

(assert (=> b!3219367 (= e!2007253 e!2007254)))

(declare-fun res!1310546 () Bool)

(assert (=> b!3219367 (=> res!1310546 e!2007254)))

(assert (=> b!3219367 (= res!1310546 (= (h!41627 tokens!494) (h!41627 tokens!494)))))

(declare-fun b!3219368 () Bool)

(assert (=> b!3219368 (= e!2007254 (contains!6482 (t!239822 tokens!494) (h!41627 tokens!494)))))

(assert (= (and d!884218 res!1310545) b!3219367))

(assert (= (and b!3219367 (not res!1310546)) b!3219368))

(assert (=> d!884218 m!3492673))

(declare-fun m!3494849 () Bool)

(assert (=> d!884218 m!3494849))

(declare-fun m!3494853 () Bool)

(assert (=> b!3219368 m!3494853))

(assert (=> b!3217142 d!884218))

(assert (=> b!3217675 d!884100))

(assert (=> b!3216932 d!884024))

(declare-fun d!884220 () Bool)

(assert (=> d!884220 (= (nullable!3401 (regex!5230 (rule!7682 (h!41627 (t!239822 tokens!494))))) (nullableFct!971 (regex!5230 (rule!7682 (h!41627 (t!239822 tokens!494))))))))

(declare-fun bs!542467 () Bool)

(assert (= bs!542467 d!884220))

(declare-fun m!3494859 () Bool)

(assert (=> bs!542467 m!3494859))

(assert (=> b!3217019 d!884220))

(declare-fun d!884222 () Bool)

(declare-fun res!1310547 () Bool)

(declare-fun e!2007255 () Bool)

(assert (=> d!884222 (=> res!1310547 e!2007255)))

(assert (=> d!884222 (= res!1310547 ((_ is Nil!36207) (list!12890 (seqFromList!3532 tokens!494))))))

(assert (=> d!884222 (= (forall!7406 (list!12890 (seqFromList!3532 tokens!494)) lambda!117656) e!2007255)))

(declare-fun b!3219369 () Bool)

(declare-fun e!2007256 () Bool)

(assert (=> b!3219369 (= e!2007255 e!2007256)))

(declare-fun res!1310548 () Bool)

(assert (=> b!3219369 (=> (not res!1310548) (not e!2007256))))

(assert (=> b!3219369 (= res!1310548 (dynLambda!14651 lambda!117656 (h!41627 (list!12890 (seqFromList!3532 tokens!494)))))))

(declare-fun b!3219370 () Bool)

(assert (=> b!3219370 (= e!2007256 (forall!7406 (t!239822 (list!12890 (seqFromList!3532 tokens!494))) lambda!117656))))

(assert (= (and d!884222 (not res!1310547)) b!3219369))

(assert (= (and b!3219369 res!1310548) b!3219370))

(declare-fun b_lambda!88519 () Bool)

(assert (=> (not b_lambda!88519) (not b!3219369)))

(declare-fun m!3494887 () Bool)

(assert (=> b!3219369 m!3494887))

(declare-fun m!3494891 () Bool)

(assert (=> b!3219370 m!3494891))

(assert (=> d!882888 d!884222))

(declare-fun d!884224 () Bool)

(assert (=> d!884224 (= (list!12890 (seqFromList!3532 tokens!494)) (list!12893 (c!540718 (seqFromList!3532 tokens!494))))))

(declare-fun bs!542468 () Bool)

(assert (= bs!542468 d!884224))

(declare-fun m!3494899 () Bool)

(assert (=> bs!542468 m!3494899))

(assert (=> d!882888 d!884224))

(declare-fun d!884226 () Bool)

(declare-fun lt!1090022 () Bool)

(assert (=> d!884226 (= lt!1090022 (forall!7406 (list!12890 (seqFromList!3532 tokens!494)) lambda!117656))))

(declare-fun forall!7411 (Conc!10836 Int) Bool)

(assert (=> d!884226 (= lt!1090022 (forall!7411 (c!540718 (seqFromList!3532 tokens!494)) lambda!117656))))

(assert (=> d!884226 (= (forall!7407 (seqFromList!3532 tokens!494) lambda!117656) lt!1090022)))

(declare-fun bs!542471 () Bool)

(assert (= bs!542471 d!884226))

(assert (=> bs!542471 m!3490437))

(assert (=> bs!542471 m!3490909))

(assert (=> bs!542471 m!3490909))

(assert (=> bs!542471 m!3490911))

(declare-fun m!3494939 () Bool)

(assert (=> bs!542471 m!3494939))

(assert (=> d!882888 d!884226))

(assert (=> d!882888 d!883176))

(declare-fun lt!1090023 () Bool)

(declare-fun d!884234 () Bool)

(assert (=> d!884234 (= lt!1090023 (isEmpty!20308 (list!12887 (_2!20945 (lex!2149 thiss!18206 rules!2135 (print!1884 thiss!18206 (singletonSeq!2326 (h!41627 (t!239822 tokens!494)))))))))))

(assert (=> d!884234 (= lt!1090023 (isEmpty!20310 (c!540717 (_2!20945 (lex!2149 thiss!18206 rules!2135 (print!1884 thiss!18206 (singletonSeq!2326 (h!41627 (t!239822 tokens!494)))))))))))

(assert (=> d!884234 (= (isEmpty!20304 (_2!20945 (lex!2149 thiss!18206 rules!2135 (print!1884 thiss!18206 (singletonSeq!2326 (h!41627 (t!239822 tokens!494))))))) lt!1090023)))

(declare-fun bs!542473 () Bool)

(assert (= bs!542473 d!884234))

(declare-fun m!3494943 () Bool)

(assert (=> bs!542473 m!3494943))

(assert (=> bs!542473 m!3494943))

(declare-fun m!3494945 () Bool)

(assert (=> bs!542473 m!3494945))

(declare-fun m!3494949 () Bool)

(assert (=> bs!542473 m!3494949))

(assert (=> b!3217533 d!884234))

(declare-fun e!2007262 () Bool)

(declare-fun b!3219379 () Bool)

(declare-fun lt!1090024 () tuple2!35622)

(assert (=> b!3219379 (= e!2007262 (= (list!12887 (_2!20945 lt!1090024)) (_2!20950 (lexList!1317 thiss!18206 rules!2135 (list!12887 (print!1884 thiss!18206 (singletonSeq!2326 (h!41627 (t!239822 tokens!494)))))))))))

(declare-fun b!3219380 () Bool)

(declare-fun res!1310551 () Bool)

(assert (=> b!3219380 (=> (not res!1310551) (not e!2007262))))

(assert (=> b!3219380 (= res!1310551 (= (list!12890 (_1!20945 lt!1090024)) (_1!20950 (lexList!1317 thiss!18206 rules!2135 (list!12887 (print!1884 thiss!18206 (singletonSeq!2326 (h!41627 (t!239822 tokens!494)))))))))))

(declare-fun e!2007263 () Bool)

(declare-fun b!3219381 () Bool)

(assert (=> b!3219381 (= e!2007263 (= (_2!20945 lt!1090024) (print!1884 thiss!18206 (singletonSeq!2326 (h!41627 (t!239822 tokens!494))))))))

(declare-fun b!3219383 () Bool)

(declare-fun e!2007261 () Bool)

(assert (=> b!3219383 (= e!2007263 e!2007261)))

(declare-fun res!1310552 () Bool)

(assert (=> b!3219383 (= res!1310552 (< (size!27301 (_2!20945 lt!1090024)) (size!27301 (print!1884 thiss!18206 (singletonSeq!2326 (h!41627 (t!239822 tokens!494)))))))))

(assert (=> b!3219383 (=> (not res!1310552) (not e!2007261))))

(declare-fun b!3219382 () Bool)

(assert (=> b!3219382 (= e!2007261 (not (isEmpty!20305 (_1!20945 lt!1090024))))))

(declare-fun d!884236 () Bool)

(assert (=> d!884236 e!2007262))

(declare-fun res!1310553 () Bool)

(assert (=> d!884236 (=> (not res!1310553) (not e!2007262))))

(assert (=> d!884236 (= res!1310553 e!2007263)))

(declare-fun c!541401 () Bool)

(assert (=> d!884236 (= c!541401 (> (size!27295 (_1!20945 lt!1090024)) 0))))

(assert (=> d!884236 (= lt!1090024 (lexTailRecV2!937 thiss!18206 rules!2135 (print!1884 thiss!18206 (singletonSeq!2326 (h!41627 (t!239822 tokens!494)))) (BalanceConc!21285 Empty!10835) (print!1884 thiss!18206 (singletonSeq!2326 (h!41627 (t!239822 tokens!494)))) (BalanceConc!21287 Empty!10836)))))

(assert (=> d!884236 (= (lex!2149 thiss!18206 rules!2135 (print!1884 thiss!18206 (singletonSeq!2326 (h!41627 (t!239822 tokens!494))))) lt!1090024)))

(assert (= (and d!884236 c!541401) b!3219383))

(assert (= (and d!884236 (not c!541401)) b!3219381))

(assert (= (and b!3219383 res!1310552) b!3219382))

(assert (= (and d!884236 res!1310553) b!3219380))

(assert (= (and b!3219380 res!1310551) b!3219379))

(declare-fun m!3494957 () Bool)

(assert (=> d!884236 m!3494957))

(assert (=> d!884236 m!3491697))

(assert (=> d!884236 m!3491697))

(declare-fun m!3494961 () Bool)

(assert (=> d!884236 m!3494961))

(declare-fun m!3494965 () Bool)

(assert (=> b!3219383 m!3494965))

(assert (=> b!3219383 m!3491697))

(declare-fun m!3494969 () Bool)

(assert (=> b!3219383 m!3494969))

(declare-fun m!3494971 () Bool)

(assert (=> b!3219382 m!3494971))

(declare-fun m!3494975 () Bool)

(assert (=> b!3219379 m!3494975))

(assert (=> b!3219379 m!3491697))

(declare-fun m!3494979 () Bool)

(assert (=> b!3219379 m!3494979))

(assert (=> b!3219379 m!3494979))

(declare-fun m!3494983 () Bool)

(assert (=> b!3219379 m!3494983))

(declare-fun m!3494985 () Bool)

(assert (=> b!3219380 m!3494985))

(assert (=> b!3219380 m!3491697))

(assert (=> b!3219380 m!3494979))

(assert (=> b!3219380 m!3494979))

(assert (=> b!3219380 m!3494983))

(assert (=> b!3217533 d!884236))

(declare-fun d!884244 () Bool)

(declare-fun lt!1090026 () BalanceConc!21284)

(assert (=> d!884244 (= (list!12887 lt!1090026) (printList!1369 thiss!18206 (list!12890 (singletonSeq!2326 (h!41627 (t!239822 tokens!494))))))))

(assert (=> d!884244 (= lt!1090026 (printTailRec!1316 thiss!18206 (singletonSeq!2326 (h!41627 (t!239822 tokens!494))) 0 (BalanceConc!21285 Empty!10835)))))

(assert (=> d!884244 (= (print!1884 thiss!18206 (singletonSeq!2326 (h!41627 (t!239822 tokens!494)))) lt!1090026)))

(declare-fun bs!542475 () Bool)

(assert (= bs!542475 d!884244))

(declare-fun m!3494989 () Bool)

(assert (=> bs!542475 m!3494989))

(assert (=> bs!542475 m!3490397))

(assert (=> bs!542475 m!3491695))

(assert (=> bs!542475 m!3491695))

(declare-fun m!3494991 () Bool)

(assert (=> bs!542475 m!3494991))

(assert (=> bs!542475 m!3490397))

(declare-fun m!3494993 () Bool)

(assert (=> bs!542475 m!3494993))

(assert (=> b!3217533 d!884244))

(assert (=> b!3217533 d!883138))

(assert (=> b!3217163 d!882912))

(declare-fun b!3219388 () Bool)

(declare-fun e!2007269 () Bool)

(declare-fun lt!1090028 () Bool)

(assert (=> b!3219388 (= e!2007269 (not lt!1090028))))

(declare-fun b!3219389 () Bool)

(declare-fun e!2007267 () Bool)

(declare-fun e!2007271 () Bool)

(assert (=> b!3219389 (= e!2007267 e!2007271)))

(declare-fun res!1310558 () Bool)

(assert (=> b!3219389 (=> res!1310558 e!2007271)))

(declare-fun call!233079 () Bool)

(assert (=> b!3219389 (= res!1310558 call!233079)))

(declare-fun b!3219390 () Bool)

(declare-fun res!1310563 () Bool)

(declare-fun e!2007270 () Bool)

(assert (=> b!3219390 (=> (not res!1310563) (not e!2007270))))

(assert (=> b!3219390 (= res!1310563 (isEmpty!20308 (tail!5218 (list!12887 (charsOf!3246 (h!41627 tokens!494))))))))

(declare-fun b!3219391 () Bool)

(assert (=> b!3219391 (= e!2007270 (= (head!7053 (list!12887 (charsOf!3246 (h!41627 tokens!494)))) (c!540716 (regex!5230 (get!11532 (getRuleFromTag!935 thiss!18206 rules!2135 (tag!5760 (rule!7682 (h!41627 tokens!494)))))))))))

(declare-fun b!3219392 () Bool)

(declare-fun res!1310559 () Bool)

(declare-fun e!2007268 () Bool)

(assert (=> b!3219392 (=> res!1310559 e!2007268)))

(assert (=> b!3219392 (= res!1310559 e!2007270)))

(declare-fun res!1310556 () Bool)

(assert (=> b!3219392 (=> (not res!1310556) (not e!2007270))))

(assert (=> b!3219392 (= res!1310556 lt!1090028)))

(declare-fun b!3219393 () Bool)

(assert (=> b!3219393 (= e!2007268 e!2007267)))

(declare-fun res!1310560 () Bool)

(assert (=> b!3219393 (=> (not res!1310560) (not e!2007267))))

(assert (=> b!3219393 (= res!1310560 (not lt!1090028))))

(declare-fun b!3219395 () Bool)

(declare-fun e!2007272 () Bool)

(assert (=> b!3219395 (= e!2007272 (= lt!1090028 call!233079))))

(declare-fun bm!233074 () Bool)

(assert (=> bm!233074 (= call!233079 (isEmpty!20308 (list!12887 (charsOf!3246 (h!41627 tokens!494)))))))

(declare-fun b!3219396 () Bool)

(assert (=> b!3219396 (= e!2007271 (not (= (head!7053 (list!12887 (charsOf!3246 (h!41627 tokens!494)))) (c!540716 (regex!5230 (get!11532 (getRuleFromTag!935 thiss!18206 rules!2135 (tag!5760 (rule!7682 (h!41627 tokens!494))))))))))))

(declare-fun b!3219397 () Bool)

(declare-fun res!1310557 () Bool)

(assert (=> b!3219397 (=> res!1310557 e!2007271)))

(assert (=> b!3219397 (= res!1310557 (not (isEmpty!20308 (tail!5218 (list!12887 (charsOf!3246 (h!41627 tokens!494)))))))))

(declare-fun b!3219398 () Bool)

(declare-fun e!2007266 () Bool)

(assert (=> b!3219398 (= e!2007266 (matchR!4623 (derivativeStep!2954 (regex!5230 (get!11532 (getRuleFromTag!935 thiss!18206 rules!2135 (tag!5760 (rule!7682 (h!41627 tokens!494)))))) (head!7053 (list!12887 (charsOf!3246 (h!41627 tokens!494))))) (tail!5218 (list!12887 (charsOf!3246 (h!41627 tokens!494))))))))

(declare-fun b!3219394 () Bool)

(assert (=> b!3219394 (= e!2007266 (nullable!3401 (regex!5230 (get!11532 (getRuleFromTag!935 thiss!18206 rules!2135 (tag!5760 (rule!7682 (h!41627 tokens!494))))))))))

(declare-fun d!884248 () Bool)

(assert (=> d!884248 e!2007272))

(declare-fun c!541405 () Bool)

(assert (=> d!884248 (= c!541405 ((_ is EmptyExpr!9989) (regex!5230 (get!11532 (getRuleFromTag!935 thiss!18206 rules!2135 (tag!5760 (rule!7682 (h!41627 tokens!494))))))))))

(assert (=> d!884248 (= lt!1090028 e!2007266)))

(declare-fun c!541404 () Bool)

(assert (=> d!884248 (= c!541404 (isEmpty!20308 (list!12887 (charsOf!3246 (h!41627 tokens!494)))))))

(assert (=> d!884248 (validRegex!4557 (regex!5230 (get!11532 (getRuleFromTag!935 thiss!18206 rules!2135 (tag!5760 (rule!7682 (h!41627 tokens!494)))))))))

(assert (=> d!884248 (= (matchR!4623 (regex!5230 (get!11532 (getRuleFromTag!935 thiss!18206 rules!2135 (tag!5760 (rule!7682 (h!41627 tokens!494)))))) (list!12887 (charsOf!3246 (h!41627 tokens!494)))) lt!1090028)))

(declare-fun b!3219399 () Bool)

(declare-fun res!1310562 () Bool)

(assert (=> b!3219399 (=> (not res!1310562) (not e!2007270))))

(assert (=> b!3219399 (= res!1310562 (not call!233079))))

(declare-fun b!3219400 () Bool)

(declare-fun res!1310561 () Bool)

(assert (=> b!3219400 (=> res!1310561 e!2007268)))

(assert (=> b!3219400 (= res!1310561 (not ((_ is ElementMatch!9989) (regex!5230 (get!11532 (getRuleFromTag!935 thiss!18206 rules!2135 (tag!5760 (rule!7682 (h!41627 tokens!494)))))))))))

(assert (=> b!3219400 (= e!2007269 e!2007268)))

(declare-fun b!3219401 () Bool)

(assert (=> b!3219401 (= e!2007272 e!2007269)))

(declare-fun c!541403 () Bool)

(assert (=> b!3219401 (= c!541403 ((_ is EmptyLang!9989) (regex!5230 (get!11532 (getRuleFromTag!935 thiss!18206 rules!2135 (tag!5760 (rule!7682 (h!41627 tokens!494))))))))))

(assert (= (and d!884248 c!541404) b!3219394))

(assert (= (and d!884248 (not c!541404)) b!3219398))

(assert (= (and d!884248 c!541405) b!3219395))

(assert (= (and d!884248 (not c!541405)) b!3219401))

(assert (= (and b!3219401 c!541403) b!3219388))

(assert (= (and b!3219401 (not c!541403)) b!3219400))

(assert (= (and b!3219400 (not res!1310561)) b!3219392))

(assert (= (and b!3219392 res!1310556) b!3219399))

(assert (= (and b!3219399 res!1310562) b!3219390))

(assert (= (and b!3219390 res!1310563) b!3219391))

(assert (= (and b!3219392 (not res!1310559)) b!3219393))

(assert (= (and b!3219393 res!1310560) b!3219389))

(assert (= (and b!3219389 (not res!1310558)) b!3219397))

(assert (= (and b!3219397 (not res!1310557)) b!3219396))

(assert (= (or b!3219395 b!3219389 b!3219399) bm!233074))

(assert (=> d!884248 m!3490467))

(declare-fun m!3494999 () Bool)

(assert (=> d!884248 m!3494999))

(declare-fun m!3495001 () Bool)

(assert (=> d!884248 m!3495001))

(assert (=> b!3219397 m!3490467))

(declare-fun m!3495003 () Bool)

(assert (=> b!3219397 m!3495003))

(assert (=> b!3219397 m!3495003))

(declare-fun m!3495005 () Bool)

(assert (=> b!3219397 m!3495005))

(assert (=> b!3219391 m!3490467))

(declare-fun m!3495007 () Bool)

(assert (=> b!3219391 m!3495007))

(declare-fun m!3495009 () Bool)

(assert (=> b!3219394 m!3495009))

(assert (=> b!3219390 m!3490467))

(assert (=> b!3219390 m!3495003))

(assert (=> b!3219390 m!3495003))

(assert (=> b!3219390 m!3495005))

(assert (=> b!3219398 m!3490467))

(assert (=> b!3219398 m!3495007))

(assert (=> b!3219398 m!3495007))

(declare-fun m!3495015 () Bool)

(assert (=> b!3219398 m!3495015))

(assert (=> b!3219398 m!3490467))

(assert (=> b!3219398 m!3495003))

(assert (=> b!3219398 m!3495015))

(assert (=> b!3219398 m!3495003))

(declare-fun m!3495017 () Bool)

(assert (=> b!3219398 m!3495017))

(assert (=> bm!233074 m!3490467))

(assert (=> bm!233074 m!3494999))

(assert (=> b!3219396 m!3490467))

(assert (=> b!3219396 m!3495007))

(assert (=> b!3217163 d!884248))

(assert (=> b!3217163 d!883110))

(assert (=> b!3217163 d!884132))

(assert (=> b!3217163 d!882910))

(assert (=> bm!232873 d!883576))

(declare-fun d!884252 () Bool)

(declare-fun lt!1090029 () Token!9826)

(assert (=> d!884252 (= lt!1090029 (apply!8223 (list!12890 (_1!20945 lt!1088813)) 0))))

(assert (=> d!884252 (= lt!1090029 (apply!8225 (c!540718 (_1!20945 lt!1088813)) 0))))

(declare-fun e!2007276 () Bool)

(assert (=> d!884252 e!2007276))

(declare-fun res!1310564 () Bool)

(assert (=> d!884252 (=> (not res!1310564) (not e!2007276))))

(assert (=> d!884252 (= res!1310564 (<= 0 0))))

(assert (=> d!884252 (= (apply!8222 (_1!20945 lt!1088813) 0) lt!1090029)))

(declare-fun b!3219407 () Bool)

(assert (=> b!3219407 (= e!2007276 (< 0 (size!27295 (_1!20945 lt!1088813))))))

(assert (= (and d!884252 res!1310564) b!3219407))

(declare-fun m!3495027 () Bool)

(assert (=> d!884252 m!3495027))

(assert (=> d!884252 m!3495027))

(declare-fun m!3495029 () Bool)

(assert (=> d!884252 m!3495029))

(declare-fun m!3495033 () Bool)

(assert (=> d!884252 m!3495033))

(assert (=> b!3219407 m!3490827))

(assert (=> b!3217080 d!884252))

(declare-fun d!884258 () Bool)

(declare-fun lt!1090030 () Bool)

(assert (=> d!884258 (= lt!1090030 (isEmpty!20316 (list!12890 (_1!20945 lt!1089058))))))

(assert (=> d!884258 (= lt!1090030 (isEmpty!20317 (c!540718 (_1!20945 lt!1089058))))))

(assert (=> d!884258 (= (isEmpty!20305 (_1!20945 lt!1089058)) lt!1090030)))

(declare-fun bs!542477 () Bool)

(assert (= bs!542477 d!884258))

(assert (=> bs!542477 m!3491877))

(assert (=> bs!542477 m!3491877))

(declare-fun m!3495037 () Bool)

(assert (=> bs!542477 m!3495037))

(declare-fun m!3495039 () Bool)

(assert (=> bs!542477 m!3495039))

(assert (=> b!3217662 d!884258))

(declare-fun d!884260 () Bool)

(declare-fun res!1310565 () Bool)

(declare-fun e!2007277 () Bool)

(assert (=> d!884260 (=> res!1310565 e!2007277)))

(assert (=> d!884260 (= res!1310565 ((_ is Nil!36207) (t!239822 tokens!494)))))

(assert (=> d!884260 (= (forall!7406 (t!239822 tokens!494) lambda!117650) e!2007277)))

(declare-fun b!3219408 () Bool)

(declare-fun e!2007278 () Bool)

(assert (=> b!3219408 (= e!2007277 e!2007278)))

(declare-fun res!1310566 () Bool)

(assert (=> b!3219408 (=> (not res!1310566) (not e!2007278))))

(assert (=> b!3219408 (= res!1310566 (dynLambda!14651 lambda!117650 (h!41627 (t!239822 tokens!494))))))

(declare-fun b!3219409 () Bool)

(assert (=> b!3219409 (= e!2007278 (forall!7406 (t!239822 (t!239822 tokens!494)) lambda!117650))))

(assert (= (and d!884260 (not res!1310565)) b!3219408))

(assert (= (and b!3219408 res!1310566) b!3219409))

(declare-fun b_lambda!88523 () Bool)

(assert (=> (not b_lambda!88523) (not b!3219408)))

(assert (=> b!3219408 m!3490923))

(declare-fun m!3495049 () Bool)

(assert (=> b!3219409 m!3495049))

(assert (=> b!3217088 d!884260))

(declare-fun b!3219414 () Bool)

(declare-fun res!1310568 () Bool)

(declare-fun e!2007280 () Bool)

(assert (=> b!3219414 (=> (not res!1310568) (not e!2007280))))

(declare-fun lt!1090032 () List!36329)

(assert (=> b!3219414 (= res!1310568 (= (size!27294 lt!1090032) (+ (size!27294 (t!239820 lt!1088698)) (size!27294 lt!1088705))))))

(declare-fun b!3219415 () Bool)

(assert (=> b!3219415 (= e!2007280 (or (not (= lt!1088705 Nil!36205)) (= lt!1090032 (t!239820 lt!1088698))))))

(declare-fun d!884266 () Bool)

(assert (=> d!884266 e!2007280))

(declare-fun res!1310567 () Bool)

(assert (=> d!884266 (=> (not res!1310567) (not e!2007280))))

(assert (=> d!884266 (= res!1310567 (= (content!4899 lt!1090032) ((_ map or) (content!4899 (t!239820 lt!1088698)) (content!4899 lt!1088705))))))

(declare-fun e!2007281 () List!36329)

(assert (=> d!884266 (= lt!1090032 e!2007281)))

(declare-fun c!541409 () Bool)

(assert (=> d!884266 (= c!541409 ((_ is Nil!36205) (t!239820 lt!1088698)))))

(assert (=> d!884266 (= (++!8698 (t!239820 lt!1088698) lt!1088705) lt!1090032)))

(declare-fun b!3219412 () Bool)

(assert (=> b!3219412 (= e!2007281 lt!1088705)))

(declare-fun b!3219413 () Bool)

(assert (=> b!3219413 (= e!2007281 (Cons!36205 (h!41625 (t!239820 lt!1088698)) (++!8698 (t!239820 (t!239820 lt!1088698)) lt!1088705)))))

(assert (= (and d!884266 c!541409) b!3219412))

(assert (= (and d!884266 (not c!541409)) b!3219413))

(assert (= (and d!884266 res!1310567) b!3219414))

(assert (= (and b!3219414 res!1310568) b!3219415))

(declare-fun m!3495051 () Bool)

(assert (=> b!3219414 m!3495051))

(assert (=> b!3219414 m!3491955))

(assert (=> b!3219414 m!3490577))

(declare-fun m!3495053 () Bool)

(assert (=> d!884266 m!3495053))

(assert (=> d!884266 m!3494541))

(assert (=> d!884266 m!3490583))

(declare-fun m!3495055 () Bool)

(assert (=> b!3219413 m!3495055))

(assert (=> b!3216879 d!884266))

(declare-fun d!884268 () Bool)

(declare-fun e!2007282 () Bool)

(assert (=> d!884268 e!2007282))

(declare-fun res!1310569 () Bool)

(assert (=> d!884268 (=> (not res!1310569) (not e!2007282))))

(declare-fun lt!1090033 () BalanceConc!21284)

(assert (=> d!884268 (= res!1310569 (= (list!12887 lt!1090033) lt!1088698))))

(assert (=> d!884268 (= lt!1090033 (BalanceConc!21285 (fromList!621 lt!1088698)))))

(assert (=> d!884268 (= (fromListB!1549 lt!1088698) lt!1090033)))

(declare-fun b!3219416 () Bool)

(assert (=> b!3219416 (= e!2007282 (isBalanced!3227 (fromList!621 lt!1088698)))))

(assert (= (and d!884268 res!1310569) b!3219416))

(declare-fun m!3495057 () Bool)

(assert (=> d!884268 m!3495057))

(declare-fun m!3495059 () Bool)

(assert (=> d!884268 m!3495059))

(assert (=> b!3219416 m!3495059))

(assert (=> b!3219416 m!3495059))

(declare-fun m!3495061 () Bool)

(assert (=> b!3219416 m!3495061))

(assert (=> d!883184 d!884268))

(assert (=> d!882924 d!882912))

(declare-fun d!884270 () Bool)

(assert (=> d!884270 (= (maxPrefix!2461 thiss!18206 rules!2135 (++!8698 (list!12887 (charsOf!3246 (h!41627 tokens!494))) lt!1088681)) (Some!7163 (tuple2!35625 (h!41627 tokens!494) lt!1088681)))))

(assert (=> d!884270 true))

(declare-fun _$49!205 () Unit!50722)

(assert (=> d!884270 (= (choose!18788 thiss!18206 rules!2135 (h!41627 tokens!494) (rule!7682 (h!41627 tokens!494)) lt!1088681 (rule!7682 separatorToken!241)) _$49!205)))

(declare-fun bs!542489 () Bool)

(assert (= bs!542489 d!884270))

(assert (=> bs!542489 m!3490465))

(assert (=> bs!542489 m!3490465))

(assert (=> bs!542489 m!3490467))

(assert (=> bs!542489 m!3490467))

(assert (=> bs!542489 m!3490981))

(assert (=> bs!542489 m!3490981))

(assert (=> bs!542489 m!3490983))

(assert (=> d!882924 d!884270))

(declare-fun b!3219456 () Bool)

(declare-fun res!1310585 () Bool)

(declare-fun e!2007305 () Bool)

(assert (=> b!3219456 (=> (not res!1310585) (not e!2007305))))

(declare-fun lt!1090103 () Option!7164)

(assert (=> b!3219456 (= res!1310585 (= (list!12887 (charsOf!3246 (_1!20946 (get!11534 lt!1090103)))) (originalCharacters!5944 (_1!20946 (get!11534 lt!1090103)))))))

(declare-fun b!3219458 () Bool)

(declare-fun res!1310582 () Bool)

(assert (=> b!3219458 (=> (not res!1310582) (not e!2007305))))

(assert (=> b!3219458 (= res!1310582 (= (value!169515 (_1!20946 (get!11534 lt!1090103))) (apply!8221 (transformation!5230 (rule!7682 (_1!20946 (get!11534 lt!1090103)))) (seqFromList!3531 (originalCharacters!5944 (_1!20946 (get!11534 lt!1090103)))))))))

(declare-fun b!3219459 () Bool)

(declare-fun e!2007304 () Option!7164)

(declare-fun call!233089 () Option!7164)

(assert (=> b!3219459 (= e!2007304 call!233089)))

(declare-fun b!3219460 () Bool)

(declare-fun res!1310584 () Bool)

(assert (=> b!3219460 (=> (not res!1310584) (not e!2007305))))

(assert (=> b!3219460 (= res!1310584 (matchR!4623 (regex!5230 (rule!7682 (_1!20946 (get!11534 lt!1090103)))) (list!12887 (charsOf!3246 (_1!20946 (get!11534 lt!1090103))))))))

(declare-fun b!3219461 () Bool)

(assert (=> b!3219461 (= e!2007305 (contains!6483 rules!2135 (rule!7682 (_1!20946 (get!11534 lt!1090103)))))))

(declare-fun bm!233084 () Bool)

(assert (=> bm!233084 (= call!233089 (maxPrefixOneRule!1598 thiss!18206 (h!41626 rules!2135) (++!8698 (list!12887 (charsOf!3246 (h!41627 tokens!494))) lt!1088681)))))

(declare-fun b!3219462 () Bool)

(declare-fun res!1310583 () Bool)

(assert (=> b!3219462 (=> (not res!1310583) (not e!2007305))))

(assert (=> b!3219462 (= res!1310583 (= (++!8698 (list!12887 (charsOf!3246 (_1!20946 (get!11534 lt!1090103)))) (_2!20946 (get!11534 lt!1090103))) (++!8698 (list!12887 (charsOf!3246 (h!41627 tokens!494))) lt!1088681)))))

(declare-fun b!3219463 () Bool)

(declare-fun e!2007306 () Bool)

(assert (=> b!3219463 (= e!2007306 e!2007305)))

(declare-fun res!1310581 () Bool)

(assert (=> b!3219463 (=> (not res!1310581) (not e!2007305))))

(assert (=> b!3219463 (= res!1310581 (isDefined!5566 lt!1090103))))

(declare-fun b!3219464 () Bool)

(declare-fun lt!1090100 () Option!7164)

(declare-fun lt!1090101 () Option!7164)

(assert (=> b!3219464 (= e!2007304 (ite (and ((_ is None!7163) lt!1090100) ((_ is None!7163) lt!1090101)) None!7163 (ite ((_ is None!7163) lt!1090101) lt!1090100 (ite ((_ is None!7163) lt!1090100) lt!1090101 (ite (>= (size!27293 (_1!20946 (v!35733 lt!1090100))) (size!27293 (_1!20946 (v!35733 lt!1090101)))) lt!1090100 lt!1090101)))))))

(assert (=> b!3219464 (= lt!1090100 call!233089)))

(assert (=> b!3219464 (= lt!1090101 (maxPrefix!2461 thiss!18206 (t!239821 rules!2135) (++!8698 (list!12887 (charsOf!3246 (h!41627 tokens!494))) lt!1088681)))))

(declare-fun b!3219457 () Bool)

(declare-fun res!1310586 () Bool)

(assert (=> b!3219457 (=> (not res!1310586) (not e!2007305))))

(assert (=> b!3219457 (= res!1310586 (< (size!27294 (_2!20946 (get!11534 lt!1090103))) (size!27294 (++!8698 (list!12887 (charsOf!3246 (h!41627 tokens!494))) lt!1088681))))))

(declare-fun d!884292 () Bool)

(assert (=> d!884292 e!2007306))

(declare-fun res!1310587 () Bool)

(assert (=> d!884292 (=> res!1310587 e!2007306)))

(assert (=> d!884292 (= res!1310587 (isEmpty!20312 lt!1090103))))

(assert (=> d!884292 (= lt!1090103 e!2007304)))

(declare-fun c!541424 () Bool)

(assert (=> d!884292 (= c!541424 (and ((_ is Cons!36206) rules!2135) ((_ is Nil!36206) (t!239821 rules!2135))))))

(declare-fun lt!1090102 () Unit!50722)

(declare-fun lt!1090104 () Unit!50722)

(assert (=> d!884292 (= lt!1090102 lt!1090104)))

(assert (=> d!884292 (isPrefix!2788 (++!8698 (list!12887 (charsOf!3246 (h!41627 tokens!494))) lt!1088681) (++!8698 (list!12887 (charsOf!3246 (h!41627 tokens!494))) lt!1088681))))

(assert (=> d!884292 (= lt!1090104 (lemmaIsPrefixRefl!1747 (++!8698 (list!12887 (charsOf!3246 (h!41627 tokens!494))) lt!1088681) (++!8698 (list!12887 (charsOf!3246 (h!41627 tokens!494))) lt!1088681)))))

(assert (=> d!884292 (rulesValidInductive!1781 thiss!18206 rules!2135)))

(assert (=> d!884292 (= (maxPrefix!2461 thiss!18206 rules!2135 (++!8698 (list!12887 (charsOf!3246 (h!41627 tokens!494))) lt!1088681)) lt!1090103)))

(assert (= (and d!884292 c!541424) b!3219459))

(assert (= (and d!884292 (not c!541424)) b!3219464))

(assert (= (or b!3219459 b!3219464) bm!233084))

(assert (= (and d!884292 (not res!1310587)) b!3219463))

(assert (= (and b!3219463 res!1310581) b!3219456))

(assert (= (and b!3219456 res!1310585) b!3219457))

(assert (= (and b!3219457 res!1310586) b!3219462))

(assert (= (and b!3219462 res!1310583) b!3219458))

(assert (= (and b!3219458 res!1310582) b!3219460))

(assert (= (and b!3219460 res!1310584) b!3219461))

(assert (=> b!3219464 m!3490981))

(declare-fun m!3495229 () Bool)

(assert (=> b!3219464 m!3495229))

(declare-fun m!3495233 () Bool)

(assert (=> d!884292 m!3495233))

(assert (=> d!884292 m!3490981))

(assert (=> d!884292 m!3490981))

(declare-fun m!3495235 () Bool)

(assert (=> d!884292 m!3495235))

(assert (=> d!884292 m!3490981))

(assert (=> d!884292 m!3490981))

(declare-fun m!3495237 () Bool)

(assert (=> d!884292 m!3495237))

(assert (=> d!884292 m!3491057))

(declare-fun m!3495239 () Bool)

(assert (=> b!3219460 m!3495239))

(declare-fun m!3495241 () Bool)

(assert (=> b!3219460 m!3495241))

(assert (=> b!3219460 m!3495241))

(declare-fun m!3495243 () Bool)

(assert (=> b!3219460 m!3495243))

(assert (=> b!3219460 m!3495243))

(declare-fun m!3495245 () Bool)

(assert (=> b!3219460 m!3495245))

(assert (=> b!3219456 m!3495239))

(assert (=> b!3219456 m!3495241))

(assert (=> b!3219456 m!3495241))

(assert (=> b!3219456 m!3495243))

(assert (=> b!3219457 m!3495239))

(declare-fun m!3495247 () Bool)

(assert (=> b!3219457 m!3495247))

(assert (=> b!3219457 m!3490981))

(declare-fun m!3495251 () Bool)

(assert (=> b!3219457 m!3495251))

(assert (=> b!3219458 m!3495239))

(declare-fun m!3495255 () Bool)

(assert (=> b!3219458 m!3495255))

(assert (=> b!3219458 m!3495255))

(declare-fun m!3495259 () Bool)

(assert (=> b!3219458 m!3495259))

(declare-fun m!3495261 () Bool)

(assert (=> b!3219463 m!3495261))

(assert (=> b!3219462 m!3495239))

(assert (=> b!3219462 m!3495241))

(assert (=> b!3219462 m!3495241))

(assert (=> b!3219462 m!3495243))

(assert (=> b!3219462 m!3495243))

(declare-fun m!3495263 () Bool)

(assert (=> b!3219462 m!3495263))

(assert (=> bm!233084 m!3490981))

(declare-fun m!3495265 () Bool)

(assert (=> bm!233084 m!3495265))

(assert (=> b!3219461 m!3495239))

(declare-fun m!3495267 () Bool)

(assert (=> b!3219461 m!3495267))

(assert (=> d!882924 d!884292))

(assert (=> d!882924 d!882910))

(declare-fun b!3219475 () Bool)

(declare-fun res!1310593 () Bool)

(declare-fun e!2007311 () Bool)

(assert (=> b!3219475 (=> (not res!1310593) (not e!2007311))))

(declare-fun lt!1090107 () List!36329)

(assert (=> b!3219475 (= res!1310593 (= (size!27294 lt!1090107) (+ (size!27294 (list!12887 (charsOf!3246 (h!41627 tokens!494)))) (size!27294 lt!1088681))))))

(declare-fun b!3219476 () Bool)

(assert (=> b!3219476 (= e!2007311 (or (not (= lt!1088681 Nil!36205)) (= lt!1090107 (list!12887 (charsOf!3246 (h!41627 tokens!494))))))))

(declare-fun d!884298 () Bool)

(assert (=> d!884298 e!2007311))

(declare-fun res!1310592 () Bool)

(assert (=> d!884298 (=> (not res!1310592) (not e!2007311))))

(assert (=> d!884298 (= res!1310592 (= (content!4899 lt!1090107) ((_ map or) (content!4899 (list!12887 (charsOf!3246 (h!41627 tokens!494)))) (content!4899 lt!1088681))))))

(declare-fun e!2007312 () List!36329)

(assert (=> d!884298 (= lt!1090107 e!2007312)))

(declare-fun c!541427 () Bool)

(assert (=> d!884298 (= c!541427 ((_ is Nil!36205) (list!12887 (charsOf!3246 (h!41627 tokens!494)))))))

(assert (=> d!884298 (= (++!8698 (list!12887 (charsOf!3246 (h!41627 tokens!494))) lt!1088681) lt!1090107)))

(declare-fun b!3219473 () Bool)

(assert (=> b!3219473 (= e!2007312 lt!1088681)))

(declare-fun b!3219474 () Bool)

(assert (=> b!3219474 (= e!2007312 (Cons!36205 (h!41625 (list!12887 (charsOf!3246 (h!41627 tokens!494)))) (++!8698 (t!239820 (list!12887 (charsOf!3246 (h!41627 tokens!494)))) lt!1088681)))))

(assert (= (and d!884298 c!541427) b!3219473))

(assert (= (and d!884298 (not c!541427)) b!3219474))

(assert (= (and d!884298 res!1310592) b!3219475))

(assert (= (and b!3219475 res!1310593) b!3219476))

(declare-fun m!3495283 () Bool)

(assert (=> b!3219475 m!3495283))

(assert (=> b!3219475 m!3490467))

(assert (=> b!3219475 m!3492557))

(assert (=> b!3219475 m!3491993))

(declare-fun m!3495285 () Bool)

(assert (=> d!884298 m!3495285))

(assert (=> d!884298 m!3490467))

(assert (=> d!884298 m!3492563))

(assert (=> d!884298 m!3491997))

(declare-fun m!3495287 () Bool)

(assert (=> b!3219474 m!3495287))

(assert (=> d!882924 d!884298))

(assert (=> d!882924 d!883176))

(declare-fun d!884302 () Bool)

(declare-fun lt!1090109 () Bool)

(assert (=> d!884302 (= lt!1090109 (select (content!4904 rules!2135) (get!11532 lt!1089044)))))

(declare-fun e!2007316 () Bool)

(assert (=> d!884302 (= lt!1090109 e!2007316)))

(declare-fun res!1310597 () Bool)

(assert (=> d!884302 (=> (not res!1310597) (not e!2007316))))

(assert (=> d!884302 (= res!1310597 ((_ is Cons!36206) rules!2135))))

(assert (=> d!884302 (= (contains!6483 rules!2135 (get!11532 lt!1089044)) lt!1090109)))

(declare-fun b!3219481 () Bool)

(declare-fun e!2007315 () Bool)

(assert (=> b!3219481 (= e!2007316 e!2007315)))

(declare-fun res!1310596 () Bool)

(assert (=> b!3219481 (=> res!1310596 e!2007315)))

(assert (=> b!3219481 (= res!1310596 (= (h!41626 rules!2135) (get!11532 lt!1089044)))))

(declare-fun b!3219482 () Bool)

(assert (=> b!3219482 (= e!2007315 (contains!6483 (t!239821 rules!2135) (get!11532 lt!1089044)))))

(assert (= (and d!884302 res!1310597) b!3219481))

(assert (= (and b!3219481 (not res!1310596)) b!3219482))

(assert (=> d!884302 m!3494185))

(assert (=> d!884302 m!3491797))

(declare-fun m!3495301 () Bool)

(assert (=> d!884302 m!3495301))

(assert (=> b!3219482 m!3491797))

(declare-fun m!3495305 () Bool)

(assert (=> b!3219482 m!3495305))

(assert (=> b!3217565 d!884302))

(declare-fun d!884304 () Bool)

(assert (=> d!884304 (= (get!11532 lt!1089044) (v!35732 lt!1089044))))

(assert (=> b!3217565 d!884304))

(declare-fun d!884308 () Bool)

(declare-fun lt!1090111 () Int)

(assert (=> d!884308 (>= lt!1090111 0)))

(declare-fun e!2007319 () Int)

(assert (=> d!884308 (= lt!1090111 e!2007319)))

(declare-fun c!541430 () Bool)

(assert (=> d!884308 (= c!541430 ((_ is Nil!36205) lt!1088738))))

(assert (=> d!884308 (= (size!27294 lt!1088738) lt!1090111)))

(declare-fun b!3219486 () Bool)

(assert (=> b!3219486 (= e!2007319 0)))

(declare-fun b!3219488 () Bool)

(assert (=> b!3219488 (= e!2007319 (+ 1 (size!27294 (t!239820 lt!1088738))))))

(assert (= (and d!884308 c!541430) b!3219486))

(assert (= (and d!884308 (not c!541430)) b!3219488))

(declare-fun m!3495307 () Bool)

(assert (=> b!3219488 m!3495307))

(assert (=> b!3216876 d!884308))

(declare-fun d!884310 () Bool)

(declare-fun lt!1090112 () Int)

(assert (=> d!884310 (>= lt!1090112 0)))

(declare-fun e!2007320 () Int)

(assert (=> d!884310 (= lt!1090112 e!2007320)))

(declare-fun c!541431 () Bool)

(assert (=> d!884310 (= c!541431 ((_ is Nil!36205) (++!8698 lt!1088698 lt!1088705)))))

(assert (=> d!884310 (= (size!27294 (++!8698 lt!1088698 lt!1088705)) lt!1090112)))

(declare-fun b!3219489 () Bool)

(assert (=> b!3219489 (= e!2007320 0)))

(declare-fun b!3219490 () Bool)

(assert (=> b!3219490 (= e!2007320 (+ 1 (size!27294 (t!239820 (++!8698 lt!1088698 lt!1088705)))))))

(assert (= (and d!884310 c!541431) b!3219489))

(assert (= (and d!884310 (not c!541431)) b!3219490))

(declare-fun m!3495311 () Bool)

(assert (=> b!3219490 m!3495311))

(assert (=> b!3216876 d!884310))

(assert (=> b!3216876 d!883760))

(assert (=> b!3217576 d!883978))

(declare-fun b!3219493 () Bool)

(declare-fun res!1310601 () Bool)

(declare-fun e!2007321 () Bool)

(assert (=> b!3219493 (=> (not res!1310601) (not e!2007321))))

(declare-fun lt!1090113 () List!36329)

(assert (=> b!3219493 (= res!1310601 (= (size!27294 lt!1090113) (+ (size!27294 (t!239820 lt!1088698)) (size!27294 lt!1088681))))))

(declare-fun b!3219494 () Bool)

(assert (=> b!3219494 (= e!2007321 (or (not (= lt!1088681 Nil!36205)) (= lt!1090113 (t!239820 lt!1088698))))))

(declare-fun d!884312 () Bool)

(assert (=> d!884312 e!2007321))

(declare-fun res!1310600 () Bool)

(assert (=> d!884312 (=> (not res!1310600) (not e!2007321))))

(assert (=> d!884312 (= res!1310600 (= (content!4899 lt!1090113) ((_ map or) (content!4899 (t!239820 lt!1088698)) (content!4899 lt!1088681))))))

(declare-fun e!2007322 () List!36329)

(assert (=> d!884312 (= lt!1090113 e!2007322)))

(declare-fun c!541432 () Bool)

(assert (=> d!884312 (= c!541432 ((_ is Nil!36205) (t!239820 lt!1088698)))))

(assert (=> d!884312 (= (++!8698 (t!239820 lt!1088698) lt!1088681) lt!1090113)))

(declare-fun b!3219491 () Bool)

(assert (=> b!3219491 (= e!2007322 lt!1088681)))

(declare-fun b!3219492 () Bool)

(assert (=> b!3219492 (= e!2007322 (Cons!36205 (h!41625 (t!239820 lt!1088698)) (++!8698 (t!239820 (t!239820 lt!1088698)) lt!1088681)))))

(assert (= (and d!884312 c!541432) b!3219491))

(assert (= (and d!884312 (not c!541432)) b!3219492))

(assert (= (and d!884312 res!1310600) b!3219493))

(assert (= (and b!3219493 res!1310601) b!3219494))

(declare-fun m!3495325 () Bool)

(assert (=> b!3219493 m!3495325))

(assert (=> b!3219493 m!3491955))

(assert (=> b!3219493 m!3491993))

(declare-fun m!3495327 () Bool)

(assert (=> d!884312 m!3495327))

(assert (=> d!884312 m!3494541))

(assert (=> d!884312 m!3491997))

(declare-fun m!3495329 () Bool)

(assert (=> b!3219492 m!3495329))

(assert (=> b!3217702 d!884312))

(declare-fun bs!542492 () Bool)

(declare-fun d!884318 () Bool)

(assert (= bs!542492 (and d!884318 d!884158)))

(declare-fun lambda!117699 () Int)

(assert (=> bs!542492 (= lambda!117699 lambda!117694)))

(assert (=> d!884318 true))

(declare-fun lt!1090118 () Bool)

(assert (=> d!884318 (= lt!1090118 (rulesValidInductive!1781 thiss!18206 rules!2135))))

(assert (=> d!884318 (= lt!1090118 (forall!7410 rules!2135 lambda!117699))))

(assert (=> d!884318 (= (rulesValid!1918 thiss!18206 rules!2135) lt!1090118)))

(declare-fun bs!542493 () Bool)

(assert (= bs!542493 d!884318))

(assert (=> bs!542493 m!3491057))

(declare-fun m!3495349 () Bool)

(assert (=> bs!542493 m!3495349))

(assert (=> d!882902 d!884318))

(assert (=> b!3217341 d!883458))

(assert (=> d!883010 d!882876))

(declare-fun d!884330 () Bool)

(assert (=> d!884330 (rulesProduceIndividualToken!2311 thiss!18206 rules!2135 (h!41627 tokens!494))))

(assert (=> d!884330 true))

(declare-fun _$77!823 () Unit!50722)

(assert (=> d!884330 (= (choose!18792 thiss!18206 rules!2135 tokens!494 (h!41627 tokens!494)) _$77!823)))

(declare-fun bs!542532 () Bool)

(assert (= bs!542532 d!884330))

(assert (=> bs!542532 m!3490519))

(assert (=> d!883010 d!884330))

(assert (=> d!883010 d!883176))

(declare-fun d!884494 () Bool)

(declare-fun c!541494 () Bool)

(assert (=> d!884494 (= c!541494 ((_ is Nil!36205) lt!1088739))))

(declare-fun e!2007450 () (InoxSet C!20164))

(assert (=> d!884494 (= (content!4899 lt!1088739) e!2007450)))

(declare-fun b!3219707 () Bool)

(assert (=> b!3219707 (= e!2007450 ((as const (Array C!20164 Bool)) false))))

(declare-fun b!3219708 () Bool)

(assert (=> b!3219708 (= e!2007450 ((_ map or) (store ((as const (Array C!20164 Bool)) false) (h!41625 lt!1088739) true) (content!4899 (t!239820 lt!1088739))))))

(assert (= (and d!884494 c!541494) b!3219707))

(assert (= (and d!884494 (not c!541494)) b!3219708))

(declare-fun m!3495797 () Bool)

(assert (=> b!3219708 m!3495797))

(declare-fun m!3495799 () Bool)

(assert (=> b!3219708 m!3495799))

(assert (=> d!882816 d!884494))

(assert (=> d!882816 d!884136))

(assert (=> d!882816 d!883516))

(declare-fun bs!542533 () Bool)

(declare-fun d!884496 () Bool)

(assert (= bs!542533 (and d!884496 d!883560)))

(declare-fun lambda!117702 () Int)

(assert (=> bs!542533 (= (and (= (toChars!7181 (transformation!5230 (rule!7682 separatorToken!241))) (toChars!7181 (transformation!5230 (rule!7682 (h!41627 tokens!494))))) (= (toValue!7322 (transformation!5230 (rule!7682 separatorToken!241))) (toValue!7322 (transformation!5230 (rule!7682 (h!41627 tokens!494)))))) (= lambda!117702 lambda!117682))))

(declare-fun bs!542534 () Bool)

(assert (= bs!542534 (and d!884496 d!883952)))

(assert (=> bs!542534 (= (and (= (toChars!7181 (transformation!5230 (rule!7682 separatorToken!241))) (toChars!7181 (transformation!5230 (rule!7682 (h!41627 tokens!494))))) (= (toValue!7322 (transformation!5230 (rule!7682 separatorToken!241))) (toValue!7322 (transformation!5230 (rule!7682 (h!41627 tokens!494)))))) (= lambda!117702 lambda!117689))))

(declare-fun bs!542535 () Bool)

(assert (= bs!542535 (and d!884496 d!884036)))

(assert (=> bs!542535 (= (and (= (toChars!7181 (transformation!5230 (rule!7682 separatorToken!241))) (toChars!7181 (transformation!5230 (rule!7682 (h!41627 (t!239822 tokens!494)))))) (= (toValue!7322 (transformation!5230 (rule!7682 separatorToken!241))) (toValue!7322 (transformation!5230 (rule!7682 (h!41627 (t!239822 tokens!494))))))) (= lambda!117702 lambda!117691))))

(assert (=> d!884496 true))

(assert (=> d!884496 (< (dynLambda!14647 order!18529 (toChars!7181 (transformation!5230 (rule!7682 separatorToken!241)))) (dynLambda!14657 order!18537 lambda!117702))))

(assert (=> d!884496 true))

(assert (=> d!884496 (< (dynLambda!14645 order!18525 (toValue!7322 (transformation!5230 (rule!7682 separatorToken!241)))) (dynLambda!14657 order!18537 lambda!117702))))

(assert (=> d!884496 (= (semiInverseModEq!2158 (toChars!7181 (transformation!5230 (rule!7682 separatorToken!241))) (toValue!7322 (transformation!5230 (rule!7682 separatorToken!241)))) (Forall!1270 lambda!117702))))

(declare-fun bs!542536 () Bool)

(assert (= bs!542536 d!884496))

(declare-fun m!3495801 () Bool)

(assert (=> bs!542536 m!3495801))

(assert (=> d!882862 d!884496))

(declare-fun d!884498 () Bool)

(declare-fun e!2007453 () Bool)

(assert (=> d!884498 e!2007453))

(declare-fun res!1310696 () Bool)

(assert (=> d!884498 (=> (not res!1310696) (not e!2007453))))

(declare-fun lt!1090176 () BalanceConc!21286)

(assert (=> d!884498 (= res!1310696 (= (list!12890 lt!1090176) tokens!494))))

(declare-fun fromList!623 (List!36331) Conc!10836)

(assert (=> d!884498 (= lt!1090176 (BalanceConc!21287 (fromList!623 tokens!494)))))

(assert (=> d!884498 (= (fromListB!1547 tokens!494) lt!1090176)))

(declare-fun b!3219711 () Bool)

(assert (=> b!3219711 (= e!2007453 (isBalanced!3224 (fromList!623 tokens!494)))))

(assert (= (and d!884498 res!1310696) b!3219711))

(declare-fun m!3495803 () Bool)

(assert (=> d!884498 m!3495803))

(declare-fun m!3495805 () Bool)

(assert (=> d!884498 m!3495805))

(assert (=> b!3219711 m!3495805))

(assert (=> b!3219711 m!3495805))

(declare-fun m!3495807 () Bool)

(assert (=> b!3219711 m!3495807))

(assert (=> d!882900 d!884498))

(declare-fun d!884500 () Bool)

(assert (=> d!884500 (= (isDefined!5566 lt!1088911) (not (isEmpty!20312 lt!1088911)))))

(declare-fun bs!542537 () Bool)

(assert (= bs!542537 d!884500))

(assert (=> bs!542537 m!3491051))

(assert (=> b!3217208 d!884500))

(declare-fun d!884502 () Bool)

(assert (=> d!884502 (= (inv!49078 (dynLambda!14648 (toChars!7181 (transformation!5230 (rule!7682 separatorToken!241))) (value!169515 separatorToken!241))) (isBalanced!3227 (c!540717 (dynLambda!14648 (toChars!7181 (transformation!5230 (rule!7682 separatorToken!241))) (value!169515 separatorToken!241)))))))

(declare-fun bs!542538 () Bool)

(assert (= bs!542538 d!884502))

(declare-fun m!3495809 () Bool)

(assert (=> bs!542538 m!3495809))

(assert (=> tb!158747 d!884502))

(assert (=> d!883104 d!883098))

(declare-fun d!884504 () Bool)

(assert (=> d!884504 (rulesProduceIndividualToken!2311 thiss!18206 rules!2135 (h!41627 (t!239822 tokens!494)))))

(assert (=> d!884504 true))

(declare-fun _$77!824 () Unit!50722)

(assert (=> d!884504 (= (choose!18792 thiss!18206 rules!2135 tokens!494 (h!41627 (t!239822 tokens!494))) _$77!824)))

(declare-fun bs!542539 () Bool)

(assert (= bs!542539 d!884504))

(assert (=> bs!542539 m!3490377))

(assert (=> d!883104 d!884504))

(assert (=> d!883104 d!883176))

(declare-fun d!884506 () Bool)

(declare-fun lt!1090177 () Int)

(assert (=> d!884506 (= lt!1090177 (size!27299 (list!12890 (_1!20945 lt!1089089))))))

(assert (=> d!884506 (= lt!1090177 (size!27300 (c!540718 (_1!20945 lt!1089089))))))

(assert (=> d!884506 (= (size!27295 (_1!20945 lt!1089089)) lt!1090177)))

(declare-fun bs!542540 () Bool)

(assert (= bs!542540 d!884506))

(assert (=> bs!542540 m!3492033))

(assert (=> bs!542540 m!3492033))

(declare-fun m!3495811 () Bool)

(assert (=> bs!542540 m!3495811))

(declare-fun m!3495813 () Bool)

(assert (=> bs!542540 m!3495813))

(assert (=> d!883182 d!884506))

(declare-fun lt!1090212 () Option!7165)

(declare-fun lt!1090201 () tuple2!35622)

(declare-fun b!3219721 () Bool)

(assert (=> b!3219721 (= lt!1090201 (lexRec!690 thiss!18206 rules!2135 (_2!20951 (v!35744 lt!1090212))))))

(declare-fun e!2007460 () tuple2!35622)

(assert (=> b!3219721 (= e!2007460 (tuple2!35623 (prepend!1178 (_1!20945 lt!1090201) (_1!20951 (v!35744 lt!1090212))) (_2!20945 lt!1090201)))))

(declare-fun e!2007457 () Bool)

(declare-fun b!3219722 () Bool)

(declare-fun lt!1090184 () tuple2!35622)

(assert (=> b!3219722 (= e!2007457 (= (list!12887 (_2!20945 lt!1090184)) (list!12887 (_2!20945 (lexRec!690 thiss!18206 rules!2135 lt!1088720)))))))

(declare-fun b!3219723 () Bool)

(declare-fun e!2007458 () tuple2!35622)

(assert (=> b!3219723 (= e!2007458 (tuple2!35623 (BalanceConc!21287 Empty!10836) lt!1088720))))

(declare-fun b!3219724 () Bool)

(declare-fun lt!1090206 () tuple2!35622)

(declare-fun lt!1090209 () Option!7165)

(assert (=> b!3219724 (= lt!1090206 (lexRec!690 thiss!18206 rules!2135 (_2!20951 (v!35744 lt!1090209))))))

(declare-fun e!2007459 () tuple2!35622)

(assert (=> b!3219724 (= e!2007459 (tuple2!35623 (prepend!1178 (_1!20945 lt!1090206) (_1!20951 (v!35744 lt!1090209))) (_2!20945 lt!1090206)))))

(declare-fun b!3219725 () Bool)

(declare-fun lt!1090187 () BalanceConc!21284)

(assert (=> b!3219725 (= e!2007460 (tuple2!35623 (BalanceConc!21287 Empty!10836) lt!1090187))))

(declare-fun b!3219726 () Bool)

(assert (=> b!3219726 (= e!2007459 (tuple2!35623 (BalanceConc!21287 Empty!10836) lt!1088720))))

(declare-fun d!884508 () Bool)

(assert (=> d!884508 e!2007457))

(declare-fun res!1310704 () Bool)

(assert (=> d!884508 (=> (not res!1310704) (not e!2007457))))

(assert (=> d!884508 (= res!1310704 (= (list!12890 (_1!20945 lt!1090184)) (list!12890 (_1!20945 (lexRec!690 thiss!18206 rules!2135 lt!1088720)))))))

(assert (=> d!884508 (= lt!1090184 e!2007458)))

(declare-fun c!541498 () Bool)

(declare-fun lt!1090181 () Option!7165)

(assert (=> d!884508 (= c!541498 ((_ is Some!7164) lt!1090181))))

(assert (=> d!884508 (= lt!1090181 (maxPrefixZipperSequenceV2!477 thiss!18206 rules!2135 lt!1088720 lt!1088720))))

(declare-fun lt!1090207 () Unit!50722)

(declare-fun lt!1090211 () Unit!50722)

(assert (=> d!884508 (= lt!1090207 lt!1090211)))

(declare-fun lt!1090202 () List!36329)

(declare-fun lt!1090186 () List!36329)

(assert (=> d!884508 (isSuffix!852 lt!1090202 (++!8698 lt!1090186 lt!1090202))))

(assert (=> d!884508 (= lt!1090211 (lemmaConcatTwoListThenFSndIsSuffix!537 lt!1090186 lt!1090202))))

(assert (=> d!884508 (= lt!1090202 (list!12887 lt!1088720))))

(assert (=> d!884508 (= lt!1090186 (list!12887 (BalanceConc!21285 Empty!10835)))))

(assert (=> d!884508 (= (lexTailRecV2!937 thiss!18206 rules!2135 lt!1088720 (BalanceConc!21285 Empty!10835) lt!1088720 (BalanceConc!21287 Empty!10836)) lt!1090184)))

(declare-fun b!3219727 () Bool)

(declare-fun lt!1090194 () BalanceConc!21284)

(assert (=> b!3219727 (= e!2007458 (lexTailRecV2!937 thiss!18206 rules!2135 lt!1088720 lt!1090194 (_2!20951 (v!35744 lt!1090181)) (append!870 (BalanceConc!21287 Empty!10836) (_1!20951 (v!35744 lt!1090181)))))))

(declare-fun lt!1090197 () tuple2!35622)

(assert (=> b!3219727 (= lt!1090197 (lexRec!690 thiss!18206 rules!2135 (_2!20951 (v!35744 lt!1090181))))))

(declare-fun lt!1090213 () List!36329)

(assert (=> b!3219727 (= lt!1090213 (list!12887 (BalanceConc!21285 Empty!10835)))))

(declare-fun lt!1090189 () List!36329)

(assert (=> b!3219727 (= lt!1090189 (list!12887 (charsOf!3246 (_1!20951 (v!35744 lt!1090181)))))))

(declare-fun lt!1090203 () List!36329)

(assert (=> b!3219727 (= lt!1090203 (list!12887 (_2!20951 (v!35744 lt!1090181))))))

(declare-fun lt!1090180 () Unit!50722)

(assert (=> b!3219727 (= lt!1090180 (lemmaConcatAssociativity!1756 lt!1090213 lt!1090189 lt!1090203))))

(assert (=> b!3219727 (= (++!8698 (++!8698 lt!1090213 lt!1090189) lt!1090203) (++!8698 lt!1090213 (++!8698 lt!1090189 lt!1090203)))))

(declare-fun lt!1090188 () Unit!50722)

(assert (=> b!3219727 (= lt!1090188 lt!1090180)))

(assert (=> b!3219727 (= lt!1090209 (maxPrefixZipperSequence!1083 thiss!18206 rules!2135 lt!1088720))))

(declare-fun c!541497 () Bool)

(assert (=> b!3219727 (= c!541497 ((_ is Some!7164) lt!1090209))))

(assert (=> b!3219727 (= (lexRec!690 thiss!18206 rules!2135 lt!1088720) e!2007459)))

(declare-fun lt!1090182 () Unit!50722)

(declare-fun Unit!50748 () Unit!50722)

(assert (=> b!3219727 (= lt!1090182 Unit!50748)))

(declare-fun lt!1090200 () List!36331)

(assert (=> b!3219727 (= lt!1090200 (list!12890 (BalanceConc!21287 Empty!10836)))))

(declare-fun lt!1090205 () List!36331)

(assert (=> b!3219727 (= lt!1090205 (Cons!36207 (_1!20951 (v!35744 lt!1090181)) Nil!36207))))

(declare-fun lt!1090215 () List!36331)

(assert (=> b!3219727 (= lt!1090215 (list!12890 (_1!20945 lt!1090197)))))

(declare-fun lt!1090196 () Unit!50722)

(assert (=> b!3219727 (= lt!1090196 (lemmaConcatAssociativity!1757 lt!1090200 lt!1090205 lt!1090215))))

(assert (=> b!3219727 (= (++!8703 (++!8703 lt!1090200 lt!1090205) lt!1090215) (++!8703 lt!1090200 (++!8703 lt!1090205 lt!1090215)))))

(declare-fun lt!1090204 () Unit!50722)

(assert (=> b!3219727 (= lt!1090204 lt!1090196)))

(declare-fun lt!1090192 () List!36329)

(assert (=> b!3219727 (= lt!1090192 (++!8698 (list!12887 (BalanceConc!21285 Empty!10835)) (list!12887 (charsOf!3246 (_1!20951 (v!35744 lt!1090181))))))))

(declare-fun lt!1090216 () List!36329)

(assert (=> b!3219727 (= lt!1090216 (list!12887 (_2!20951 (v!35744 lt!1090181))))))

(declare-fun lt!1090199 () List!36331)

(assert (=> b!3219727 (= lt!1090199 (list!12890 (append!870 (BalanceConc!21287 Empty!10836) (_1!20951 (v!35744 lt!1090181)))))))

(declare-fun lt!1090214 () Unit!50722)

(assert (=> b!3219727 (= lt!1090214 (lemmaLexThenLexPrefix!455 thiss!18206 rules!2135 lt!1090192 lt!1090216 lt!1090199 (list!12890 (_1!20945 lt!1090197)) (list!12887 (_2!20945 lt!1090197))))))

(assert (=> b!3219727 (= (lexList!1317 thiss!18206 rules!2135 lt!1090192) (tuple2!35633 lt!1090199 Nil!36205))))

(declare-fun lt!1090210 () Unit!50722)

(assert (=> b!3219727 (= lt!1090210 lt!1090214)))

(assert (=> b!3219727 (= lt!1090187 (++!8699 (BalanceConc!21285 Empty!10835) (charsOf!3246 (_1!20951 (v!35744 lt!1090181)))))))

(assert (=> b!3219727 (= lt!1090212 (maxPrefixZipperSequence!1083 thiss!18206 rules!2135 lt!1090187))))

(declare-fun c!541499 () Bool)

(assert (=> b!3219727 (= c!541499 ((_ is Some!7164) lt!1090212))))

(assert (=> b!3219727 (= (lexRec!690 thiss!18206 rules!2135 (++!8699 (BalanceConc!21285 Empty!10835) (charsOf!3246 (_1!20951 (v!35744 lt!1090181))))) e!2007460)))

(declare-fun lt!1090195 () Unit!50722)

(declare-fun Unit!50749 () Unit!50722)

(assert (=> b!3219727 (= lt!1090195 Unit!50749)))

(assert (=> b!3219727 (= lt!1090194 (++!8699 (BalanceConc!21285 Empty!10835) (charsOf!3246 (_1!20951 (v!35744 lt!1090181)))))))

(declare-fun lt!1090198 () List!36329)

(assert (=> b!3219727 (= lt!1090198 (list!12887 lt!1090194))))

(declare-fun lt!1090193 () List!36329)

(assert (=> b!3219727 (= lt!1090193 (list!12887 (_2!20951 (v!35744 lt!1090181))))))

(declare-fun lt!1090208 () Unit!50722)

(assert (=> b!3219727 (= lt!1090208 (lemmaConcatTwoListThenFSndIsSuffix!537 lt!1090198 lt!1090193))))

(assert (=> b!3219727 (isSuffix!852 lt!1090193 (++!8698 lt!1090198 lt!1090193))))

(declare-fun lt!1090190 () Unit!50722)

(assert (=> b!3219727 (= lt!1090190 lt!1090208)))

(assert (= (and d!884508 c!541498) b!3219727))

(assert (= (and d!884508 (not c!541498)) b!3219723))

(assert (= (and b!3219727 c!541497) b!3219724))

(assert (= (and b!3219727 (not c!541497)) b!3219726))

(assert (= (and b!3219727 c!541499) b!3219721))

(assert (= (and b!3219727 (not c!541499)) b!3219725))

(assert (= (and d!884508 res!1310704) b!3219722))

(declare-fun m!3495827 () Bool)

(assert (=> d!884508 m!3495827))

(declare-fun m!3495829 () Bool)

(assert (=> d!884508 m!3495829))

(declare-fun m!3495833 () Bool)

(assert (=> d!884508 m!3495833))

(declare-fun m!3495835 () Bool)

(assert (=> d!884508 m!3495835))

(assert (=> d!884508 m!3490675))

(declare-fun m!3495839 () Bool)

(assert (=> d!884508 m!3495839))

(assert (=> d!884508 m!3495829))

(declare-fun m!3495843 () Bool)

(assert (=> d!884508 m!3495843))

(assert (=> d!884508 m!3492029))

(declare-fun m!3495847 () Bool)

(assert (=> d!884508 m!3495847))

(declare-fun m!3495851 () Bool)

(assert (=> b!3219721 m!3495851))

(declare-fun m!3495855 () Bool)

(assert (=> b!3219721 m!3495855))

(declare-fun m!3495857 () Bool)

(assert (=> b!3219724 m!3495857))

(declare-fun m!3495861 () Bool)

(assert (=> b!3219724 m!3495861))

(declare-fun m!3495863 () Bool)

(assert (=> b!3219722 m!3495863))

(assert (=> b!3219722 m!3495847))

(declare-fun m!3495867 () Bool)

(assert (=> b!3219722 m!3495867))

(declare-fun m!3495871 () Bool)

(assert (=> b!3219727 m!3495871))

(declare-fun m!3495873 () Bool)

(assert (=> b!3219727 m!3495873))

(declare-fun m!3495875 () Bool)

(assert (=> b!3219727 m!3495875))

(declare-fun m!3495877 () Bool)

(assert (=> b!3219727 m!3495877))

(declare-fun m!3495879 () Bool)

(assert (=> b!3219727 m!3495879))

(declare-fun m!3495883 () Bool)

(assert (=> b!3219727 m!3495883))

(declare-fun m!3495885 () Bool)

(assert (=> b!3219727 m!3495885))

(declare-fun m!3495887 () Bool)

(assert (=> b!3219727 m!3495887))

(declare-fun m!3495889 () Bool)

(assert (=> b!3219727 m!3495889))

(declare-fun m!3495891 () Bool)

(assert (=> b!3219727 m!3495891))

(assert (=> b!3219727 m!3490675))

(declare-fun m!3495893 () Bool)

(assert (=> b!3219727 m!3495893))

(declare-fun m!3495895 () Bool)

(assert (=> b!3219727 m!3495895))

(declare-fun m!3495897 () Bool)

(assert (=> b!3219727 m!3495897))

(assert (=> b!3219727 m!3495887))

(declare-fun m!3495903 () Bool)

(assert (=> b!3219727 m!3495903))

(assert (=> b!3219727 m!3495891))

(assert (=> b!3219727 m!3495883))

(assert (=> b!3219727 m!3495847))

(declare-fun m!3495905 () Bool)

(assert (=> b!3219727 m!3495905))

(declare-fun m!3495907 () Bool)

(assert (=> b!3219727 m!3495907))

(declare-fun m!3495909 () Bool)

(assert (=> b!3219727 m!3495909))

(assert (=> b!3219727 m!3495879))

(declare-fun m!3495911 () Bool)

(assert (=> b!3219727 m!3495911))

(assert (=> b!3219727 m!3495877))

(declare-fun m!3495913 () Bool)

(assert (=> b!3219727 m!3495913))

(declare-fun m!3495915 () Bool)

(assert (=> b!3219727 m!3495915))

(declare-fun m!3495917 () Bool)

(assert (=> b!3219727 m!3495917))

(declare-fun m!3495919 () Bool)

(assert (=> b!3219727 m!3495919))

(declare-fun m!3495921 () Bool)

(assert (=> b!3219727 m!3495921))

(assert (=> b!3219727 m!3495891))

(assert (=> b!3219727 m!3495893))

(assert (=> b!3219727 m!3495921))

(declare-fun m!3495925 () Bool)

(assert (=> b!3219727 m!3495925))

(assert (=> b!3219727 m!3495871))

(declare-fun m!3495927 () Bool)

(assert (=> b!3219727 m!3495927))

(assert (=> b!3219727 m!3490675))

(declare-fun m!3495929 () Bool)

(assert (=> b!3219727 m!3495929))

(assert (=> b!3219727 m!3495887))

(declare-fun m!3495931 () Bool)

(assert (=> b!3219727 m!3495931))

(assert (=> b!3219727 m!3493515))

(declare-fun m!3495933 () Bool)

(assert (=> b!3219727 m!3495933))

(declare-fun m!3495935 () Bool)

(assert (=> b!3219727 m!3495935))

(assert (=> b!3219727 m!3495915))

(assert (=> b!3219727 m!3495897))

(declare-fun m!3495937 () Bool)

(assert (=> b!3219727 m!3495937))

(assert (=> b!3219727 m!3495907))

(assert (=> d!883182 d!884508))

(assert (=> b!3217547 d!883524))

(declare-fun d!884518 () Bool)

(assert (=> d!884518 (= (apply!8221 (transformation!5230 (rule!7682 (_1!20946 (get!11534 lt!1089033)))) (seqFromList!3531 (originalCharacters!5944 (_1!20946 (get!11534 lt!1089033))))) (dynLambda!14653 (toValue!7322 (transformation!5230 (rule!7682 (_1!20946 (get!11534 lt!1089033))))) (seqFromList!3531 (originalCharacters!5944 (_1!20946 (get!11534 lt!1089033))))))))

(declare-fun b_lambda!88545 () Bool)

(assert (=> (not b_lambda!88545) (not d!884518)))

(declare-fun t!240237 () Bool)

(declare-fun tb!159127 () Bool)

(assert (=> (and b!3216773 (= (toValue!7322 (transformation!5230 (h!41626 rules!2135))) (toValue!7322 (transformation!5230 (rule!7682 (_1!20946 (get!11534 lt!1089033)))))) t!240237) tb!159127))

(declare-fun result!201548 () Bool)

(assert (=> tb!159127 (= result!201548 (inv!21 (dynLambda!14653 (toValue!7322 (transformation!5230 (rule!7682 (_1!20946 (get!11534 lt!1089033))))) (seqFromList!3531 (originalCharacters!5944 (_1!20946 (get!11534 lt!1089033)))))))))

(declare-fun m!3495945 () Bool)

(assert (=> tb!159127 m!3495945))

(assert (=> d!884518 t!240237))

(declare-fun b_and!215217 () Bool)

(assert (= b_and!215111 (and (=> t!240237 result!201548) b_and!215217)))

(declare-fun tb!159129 () Bool)

(declare-fun t!240239 () Bool)

(assert (=> (and b!3217774 (= (toValue!7322 (transformation!5230 (rule!7682 (h!41627 (t!239822 tokens!494))))) (toValue!7322 (transformation!5230 (rule!7682 (_1!20946 (get!11534 lt!1089033)))))) t!240239) tb!159129))

(declare-fun result!201550 () Bool)

(assert (= result!201550 result!201548))

(assert (=> d!884518 t!240239))

(declare-fun b_and!215219 () Bool)

(assert (= b_and!215113 (and (=> t!240239 result!201550) b_and!215219)))

(declare-fun tb!159131 () Bool)

(declare-fun t!240241 () Bool)

(assert (=> (and b!3216778 (= (toValue!7322 (transformation!5230 (rule!7682 separatorToken!241))) (toValue!7322 (transformation!5230 (rule!7682 (_1!20946 (get!11534 lt!1089033)))))) t!240241) tb!159131))

(declare-fun result!201552 () Bool)

(assert (= result!201552 result!201548))

(assert (=> d!884518 t!240241))

(declare-fun b_and!215221 () Bool)

(assert (= b_and!215109 (and (=> t!240241 result!201552) b_and!215221)))

(declare-fun tb!159133 () Bool)

(declare-fun t!240243 () Bool)

(assert (=> (and b!3217757 (= (toValue!7322 (transformation!5230 (h!41626 (t!239821 rules!2135)))) (toValue!7322 (transformation!5230 (rule!7682 (_1!20946 (get!11534 lt!1089033)))))) t!240243) tb!159133))

(declare-fun result!201554 () Bool)

(assert (= result!201554 result!201548))

(assert (=> d!884518 t!240243))

(declare-fun b_and!215223 () Bool)

(assert (= b_and!215115 (and (=> t!240243 result!201554) b_and!215223)))

(declare-fun t!240245 () Bool)

(declare-fun tb!159135 () Bool)

(assert (=> (and b!3216775 (= (toValue!7322 (transformation!5230 (rule!7682 (h!41627 tokens!494)))) (toValue!7322 (transformation!5230 (rule!7682 (_1!20946 (get!11534 lt!1089033)))))) t!240245) tb!159135))

(declare-fun result!201556 () Bool)

(assert (= result!201556 result!201548))

(assert (=> d!884518 t!240245))

(declare-fun b_and!215225 () Bool)

(assert (= b_and!215107 (and (=> t!240245 result!201556) b_and!215225)))

(assert (=> d!884518 m!3491761))

(declare-fun m!3495955 () Bool)

(assert (=> d!884518 m!3495955))

(assert (=> b!3217547 d!884518))

(declare-fun d!884524 () Bool)

(assert (=> d!884524 (= (seqFromList!3531 (originalCharacters!5944 (_1!20946 (get!11534 lt!1089033)))) (fromListB!1549 (originalCharacters!5944 (_1!20946 (get!11534 lt!1089033)))))))

(declare-fun bs!542542 () Bool)

(assert (= bs!542542 d!884524))

(declare-fun m!3495957 () Bool)

(assert (=> bs!542542 m!3495957))

(assert (=> b!3217547 d!884524))

(assert (=> d!882854 d!883576))

(declare-fun call!233127 () Bool)

(declare-fun c!541508 () Bool)

(declare-fun bm!233120 () Bool)

(declare-fun c!541507 () Bool)

(assert (=> bm!233120 (= call!233127 (validRegex!4557 (ite c!541507 (reg!10318 (regex!5230 lt!1088704)) (ite c!541508 (regOne!20491 (regex!5230 lt!1088704)) (regOne!20490 (regex!5230 lt!1088704))))))))

(declare-fun b!3219753 () Bool)

(declare-fun e!2007482 () Bool)

(declare-fun e!2007481 () Bool)

(assert (=> b!3219753 (= e!2007482 e!2007481)))

(assert (=> b!3219753 (= c!541507 ((_ is Star!9989) (regex!5230 lt!1088704)))))

(declare-fun bm!233121 () Bool)

(declare-fun call!233125 () Bool)

(assert (=> bm!233121 (= call!233125 call!233127)))

(declare-fun b!3219754 () Bool)

(declare-fun e!2007476 () Bool)

(assert (=> b!3219754 (= e!2007481 e!2007476)))

(assert (=> b!3219754 (= c!541508 ((_ is Union!9989) (regex!5230 lt!1088704)))))

(declare-fun bm!233122 () Bool)

(declare-fun call!233126 () Bool)

(assert (=> bm!233122 (= call!233126 (validRegex!4557 (ite c!541508 (regTwo!20491 (regex!5230 lt!1088704)) (regTwo!20490 (regex!5230 lt!1088704)))))))

(declare-fun b!3219755 () Bool)

(declare-fun e!2007479 () Bool)

(declare-fun e!2007478 () Bool)

(assert (=> b!3219755 (= e!2007479 e!2007478)))

(declare-fun res!1310717 () Bool)

(assert (=> b!3219755 (=> (not res!1310717) (not e!2007478))))

(assert (=> b!3219755 (= res!1310717 call!233125)))

(declare-fun d!884526 () Bool)

(declare-fun res!1310718 () Bool)

(assert (=> d!884526 (=> res!1310718 e!2007482)))

(assert (=> d!884526 (= res!1310718 ((_ is ElementMatch!9989) (regex!5230 lt!1088704)))))

(assert (=> d!884526 (= (validRegex!4557 (regex!5230 lt!1088704)) e!2007482)))

(declare-fun b!3219756 () Bool)

(declare-fun e!2007480 () Bool)

(assert (=> b!3219756 (= e!2007480 call!233127)))

(declare-fun b!3219757 () Bool)

(assert (=> b!3219757 (= e!2007481 e!2007480)))

(declare-fun res!1310719 () Bool)

(assert (=> b!3219757 (= res!1310719 (not (nullable!3401 (reg!10318 (regex!5230 lt!1088704)))))))

(assert (=> b!3219757 (=> (not res!1310719) (not e!2007480))))

(declare-fun b!3219758 () Bool)

(declare-fun res!1310716 () Bool)

(assert (=> b!3219758 (=> res!1310716 e!2007479)))

(assert (=> b!3219758 (= res!1310716 (not ((_ is Concat!15449) (regex!5230 lt!1088704))))))

(assert (=> b!3219758 (= e!2007476 e!2007479)))

(declare-fun b!3219759 () Bool)

(assert (=> b!3219759 (= e!2007478 call!233126)))

(declare-fun b!3219760 () Bool)

(declare-fun res!1310720 () Bool)

(declare-fun e!2007477 () Bool)

(assert (=> b!3219760 (=> (not res!1310720) (not e!2007477))))

(assert (=> b!3219760 (= res!1310720 call!233125)))

(assert (=> b!3219760 (= e!2007476 e!2007477)))

(declare-fun b!3219761 () Bool)

(assert (=> b!3219761 (= e!2007477 call!233126)))

(assert (= (and d!884526 (not res!1310718)) b!3219753))

(assert (= (and b!3219753 c!541507) b!3219757))

(assert (= (and b!3219753 (not c!541507)) b!3219754))

(assert (= (and b!3219757 res!1310719) b!3219756))

(assert (= (and b!3219754 c!541508) b!3219760))

(assert (= (and b!3219754 (not c!541508)) b!3219758))

(assert (= (and b!3219760 res!1310720) b!3219761))

(assert (= (and b!3219758 (not res!1310716)) b!3219755))

(assert (= (and b!3219755 res!1310717) b!3219759))

(assert (= (or b!3219761 b!3219759) bm!233122))

(assert (= (or b!3219760 b!3219755) bm!233121))

(assert (= (or b!3219756 bm!233121) bm!233120))

(declare-fun m!3495971 () Bool)

(assert (=> bm!233120 m!3495971))

(declare-fun m!3495973 () Bool)

(assert (=> bm!233122 m!3495973))

(declare-fun m!3495975 () Bool)

(assert (=> b!3219757 m!3495975))

(assert (=> d!882854 d!884526))

(assert (=> b!3216933 d!884144))

(assert (=> b!3216933 d!884146))

(declare-fun d!884534 () Bool)

(assert (=> d!884534 (= (list!12887 lt!1089093) (list!12889 (c!540717 lt!1089093)))))

(declare-fun bs!542544 () Bool)

(assert (= bs!542544 d!884534))

(declare-fun m!3495977 () Bool)

(assert (=> bs!542544 m!3495977))

(assert (=> d!883192 d!884534))

(declare-fun b!3219770 () Bool)

(declare-fun res!1310724 () Bool)

(declare-fun e!2007487 () Bool)

(assert (=> b!3219770 (=> (not res!1310724) (not e!2007487))))

(declare-fun lt!1090220 () List!36329)

(assert (=> b!3219770 (= res!1310724 (= (size!27294 lt!1090220) (+ (size!27294 (list!12887 (charsOf!3246 (h!41627 (t!239822 tokens!494))))) (size!27294 (list!12887 (charsOf!3246 separatorToken!241))))))))

(declare-fun b!3219771 () Bool)

(assert (=> b!3219771 (= e!2007487 (or (not (= (list!12887 (charsOf!3246 separatorToken!241)) Nil!36205)) (= lt!1090220 (list!12887 (charsOf!3246 (h!41627 (t!239822 tokens!494)))))))))

(declare-fun d!884536 () Bool)

(assert (=> d!884536 e!2007487))

(declare-fun res!1310723 () Bool)

(assert (=> d!884536 (=> (not res!1310723) (not e!2007487))))

(assert (=> d!884536 (= res!1310723 (= (content!4899 lt!1090220) ((_ map or) (content!4899 (list!12887 (charsOf!3246 (h!41627 (t!239822 tokens!494))))) (content!4899 (list!12887 (charsOf!3246 separatorToken!241))))))))

(declare-fun e!2007488 () List!36329)

(assert (=> d!884536 (= lt!1090220 e!2007488)))

(declare-fun c!541511 () Bool)

(assert (=> d!884536 (= c!541511 ((_ is Nil!36205) (list!12887 (charsOf!3246 (h!41627 (t!239822 tokens!494))))))))

(assert (=> d!884536 (= (++!8698 (list!12887 (charsOf!3246 (h!41627 (t!239822 tokens!494)))) (list!12887 (charsOf!3246 separatorToken!241))) lt!1090220)))

(declare-fun b!3219768 () Bool)

(assert (=> b!3219768 (= e!2007488 (list!12887 (charsOf!3246 separatorToken!241)))))

(declare-fun b!3219769 () Bool)

(assert (=> b!3219769 (= e!2007488 (Cons!36205 (h!41625 (list!12887 (charsOf!3246 (h!41627 (t!239822 tokens!494))))) (++!8698 (t!239820 (list!12887 (charsOf!3246 (h!41627 (t!239822 tokens!494))))) (list!12887 (charsOf!3246 separatorToken!241)))))))

(assert (= (and d!884536 c!541511) b!3219768))

(assert (= (and d!884536 (not c!541511)) b!3219769))

(assert (= (and d!884536 res!1310723) b!3219770))

(assert (= (and b!3219770 res!1310724) b!3219771))

(declare-fun m!3495989 () Bool)

(assert (=> b!3219770 m!3495989))

(assert (=> b!3219770 m!3490475))

(declare-fun m!3495991 () Bool)

(assert (=> b!3219770 m!3495991))

(assert (=> b!3219770 m!3490481))

(assert (=> b!3219770 m!3492559))

(declare-fun m!3495993 () Bool)

(assert (=> d!884536 m!3495993))

(assert (=> d!884536 m!3490475))

(declare-fun m!3495995 () Bool)

(assert (=> d!884536 m!3495995))

(assert (=> d!884536 m!3490481))

(assert (=> d!884536 m!3492565))

(assert (=> b!3219769 m!3490481))

(declare-fun m!3495997 () Bool)

(assert (=> b!3219769 m!3495997))

(assert (=> b!3217744 d!884536))

(assert (=> b!3217744 d!883202))

(assert (=> b!3217744 d!883192))

(assert (=> b!3217744 d!883194))

(declare-fun b!3219774 () Bool)

(declare-fun res!1310726 () Bool)

(declare-fun e!2007489 () Bool)

(assert (=> b!3219774 (=> (not res!1310726) (not e!2007489))))

(declare-fun lt!1090221 () List!36329)

(assert (=> b!3219774 (= res!1310726 (= (size!27294 lt!1090221) (+ (size!27294 (++!8698 (list!12887 (charsOf!3246 (h!41627 (t!239822 tokens!494)))) (list!12887 (charsOf!3246 separatorToken!241)))) (size!27294 (printWithSeparatorTokenList!164 thiss!18206 (t!239822 (t!239822 tokens!494)) separatorToken!241)))))))

(declare-fun b!3219775 () Bool)

(assert (=> b!3219775 (= e!2007489 (or (not (= (printWithSeparatorTokenList!164 thiss!18206 (t!239822 (t!239822 tokens!494)) separatorToken!241) Nil!36205)) (= lt!1090221 (++!8698 (list!12887 (charsOf!3246 (h!41627 (t!239822 tokens!494)))) (list!12887 (charsOf!3246 separatorToken!241))))))))

(declare-fun d!884542 () Bool)

(assert (=> d!884542 e!2007489))

(declare-fun res!1310725 () Bool)

(assert (=> d!884542 (=> (not res!1310725) (not e!2007489))))

(assert (=> d!884542 (= res!1310725 (= (content!4899 lt!1090221) ((_ map or) (content!4899 (++!8698 (list!12887 (charsOf!3246 (h!41627 (t!239822 tokens!494)))) (list!12887 (charsOf!3246 separatorToken!241)))) (content!4899 (printWithSeparatorTokenList!164 thiss!18206 (t!239822 (t!239822 tokens!494)) separatorToken!241)))))))

(declare-fun e!2007490 () List!36329)

(assert (=> d!884542 (= lt!1090221 e!2007490)))

(declare-fun c!541512 () Bool)

(assert (=> d!884542 (= c!541512 ((_ is Nil!36205) (++!8698 (list!12887 (charsOf!3246 (h!41627 (t!239822 tokens!494)))) (list!12887 (charsOf!3246 separatorToken!241)))))))

(assert (=> d!884542 (= (++!8698 (++!8698 (list!12887 (charsOf!3246 (h!41627 (t!239822 tokens!494)))) (list!12887 (charsOf!3246 separatorToken!241))) (printWithSeparatorTokenList!164 thiss!18206 (t!239822 (t!239822 tokens!494)) separatorToken!241)) lt!1090221)))

(declare-fun b!3219772 () Bool)

(assert (=> b!3219772 (= e!2007490 (printWithSeparatorTokenList!164 thiss!18206 (t!239822 (t!239822 tokens!494)) separatorToken!241))))

(declare-fun b!3219773 () Bool)

(assert (=> b!3219773 (= e!2007490 (Cons!36205 (h!41625 (++!8698 (list!12887 (charsOf!3246 (h!41627 (t!239822 tokens!494)))) (list!12887 (charsOf!3246 separatorToken!241)))) (++!8698 (t!239820 (++!8698 (list!12887 (charsOf!3246 (h!41627 (t!239822 tokens!494)))) (list!12887 (charsOf!3246 separatorToken!241)))) (printWithSeparatorTokenList!164 thiss!18206 (t!239822 (t!239822 tokens!494)) separatorToken!241))))))

(assert (= (and d!884542 c!541512) b!3219772))

(assert (= (and d!884542 (not c!541512)) b!3219773))

(assert (= (and d!884542 res!1310725) b!3219774))

(assert (= (and b!3219774 res!1310726) b!3219775))

(declare-fun m!3495999 () Bool)

(assert (=> b!3219774 m!3495999))

(assert (=> b!3219774 m!3492093))

(declare-fun m!3496001 () Bool)

(assert (=> b!3219774 m!3496001))

(assert (=> b!3219774 m!3490477))

(assert (=> b!3219774 m!3492063))

(declare-fun m!3496003 () Bool)

(assert (=> d!884542 m!3496003))

(assert (=> d!884542 m!3492093))

(declare-fun m!3496005 () Bool)

(assert (=> d!884542 m!3496005))

(assert (=> d!884542 m!3490477))

(assert (=> d!884542 m!3492069))

(assert (=> b!3219773 m!3490477))

(declare-fun m!3496007 () Bool)

(assert (=> b!3219773 m!3496007))

(assert (=> b!3217744 d!884542))

(assert (=> b!3217744 d!883206))

(assert (=> b!3217744 d!883208))

(declare-fun d!884544 () Bool)

(declare-fun charsToInt!0 (List!36328) (_ BitVec 32))

(assert (=> d!884544 (= (inv!16 (value!169515 (h!41627 tokens!494))) (= (charsToInt!0 (text!38667 (value!169515 (h!41627 tokens!494)))) (value!169506 (value!169515 (h!41627 tokens!494)))))))

(declare-fun bs!542546 () Bool)

(assert (= bs!542546 d!884544))

(declare-fun m!3496009 () Bool)

(assert (=> bs!542546 m!3496009))

(assert (=> b!3217053 d!884544))

(declare-fun d!884546 () Bool)

(assert (=> d!884546 (= (list!12890 lt!1088782) (list!12893 (c!540718 lt!1088782)))))

(declare-fun bs!542547 () Bool)

(assert (= bs!542547 d!884546))

(declare-fun m!3496011 () Bool)

(assert (=> bs!542547 m!3496011))

(assert (=> d!882844 d!884546))

(declare-fun d!884548 () Bool)

(declare-fun e!2007491 () Bool)

(assert (=> d!884548 e!2007491))

(declare-fun res!1310727 () Bool)

(assert (=> d!884548 (=> (not res!1310727) (not e!2007491))))

(declare-fun lt!1090222 () BalanceConc!21286)

(assert (=> d!884548 (= res!1310727 (= (list!12890 lt!1090222) (Cons!36207 (h!41627 tokens!494) Nil!36207)))))

(assert (=> d!884548 (= lt!1090222 (choose!18797 (h!41627 tokens!494)))))

(assert (=> d!884548 (= (singleton!997 (h!41627 tokens!494)) lt!1090222)))

(declare-fun b!3219776 () Bool)

(assert (=> b!3219776 (= e!2007491 (isBalanced!3224 (c!540718 lt!1090222)))))

(assert (= (and d!884548 res!1310727) b!3219776))

(declare-fun m!3496013 () Bool)

(assert (=> d!884548 m!3496013))

(declare-fun m!3496015 () Bool)

(assert (=> d!884548 m!3496015))

(declare-fun m!3496017 () Bool)

(assert (=> b!3219776 m!3496017))

(assert (=> d!882844 d!884548))

(declare-fun d!884550 () Bool)

(declare-fun c!541513 () Bool)

(assert (=> d!884550 (= c!541513 ((_ is Node!10835) (c!540717 (dynLambda!14648 (toChars!7181 (transformation!5230 (rule!7682 (h!41627 tokens!494)))) (value!169515 (h!41627 tokens!494))))))))

(declare-fun e!2007492 () Bool)

(assert (=> d!884550 (= (inv!49077 (c!540717 (dynLambda!14648 (toChars!7181 (transformation!5230 (rule!7682 (h!41627 tokens!494)))) (value!169515 (h!41627 tokens!494))))) e!2007492)))

(declare-fun b!3219777 () Bool)

(assert (=> b!3219777 (= e!2007492 (inv!49083 (c!540717 (dynLambda!14648 (toChars!7181 (transformation!5230 (rule!7682 (h!41627 tokens!494)))) (value!169515 (h!41627 tokens!494))))))))

(declare-fun b!3219778 () Bool)

(declare-fun e!2007493 () Bool)

(assert (=> b!3219778 (= e!2007492 e!2007493)))

(declare-fun res!1310728 () Bool)

(assert (=> b!3219778 (= res!1310728 (not ((_ is Leaf!17061) (c!540717 (dynLambda!14648 (toChars!7181 (transformation!5230 (rule!7682 (h!41627 tokens!494)))) (value!169515 (h!41627 tokens!494)))))))))

(assert (=> b!3219778 (=> res!1310728 e!2007493)))

(declare-fun b!3219779 () Bool)

(assert (=> b!3219779 (= e!2007493 (inv!49084 (c!540717 (dynLambda!14648 (toChars!7181 (transformation!5230 (rule!7682 (h!41627 tokens!494)))) (value!169515 (h!41627 tokens!494))))))))

(assert (= (and d!884550 c!541513) b!3219777))

(assert (= (and d!884550 (not c!541513)) b!3219778))

(assert (= (and b!3219778 (not res!1310728)) b!3219779))

(declare-fun m!3496019 () Bool)

(assert (=> b!3219777 m!3496019))

(declare-fun m!3496021 () Bool)

(assert (=> b!3219779 m!3496021))

(assert (=> b!3216940 d!884550))

(declare-fun d!884552 () Bool)

(assert (=> d!884552 (= (isEmpty!20308 (originalCharacters!5944 separatorToken!241)) ((_ is Nil!36205) (originalCharacters!5944 separatorToken!241)))))

(assert (=> d!882804 d!884552))

(assert (=> bm!232829 d!883822))

(declare-fun bs!542548 () Bool)

(declare-fun d!884554 () Bool)

(assert (= bs!542548 (and d!884554 d!883560)))

(declare-fun lambda!117703 () Int)

(assert (=> bs!542548 (= (and (= (toChars!7181 (transformation!5230 (h!41626 rules!2135))) (toChars!7181 (transformation!5230 (rule!7682 (h!41627 tokens!494))))) (= (toValue!7322 (transformation!5230 (h!41626 rules!2135))) (toValue!7322 (transformation!5230 (rule!7682 (h!41627 tokens!494)))))) (= lambda!117703 lambda!117682))))

(declare-fun bs!542549 () Bool)

(assert (= bs!542549 (and d!884554 d!883952)))

(assert (=> bs!542549 (= (and (= (toChars!7181 (transformation!5230 (h!41626 rules!2135))) (toChars!7181 (transformation!5230 (rule!7682 (h!41627 tokens!494))))) (= (toValue!7322 (transformation!5230 (h!41626 rules!2135))) (toValue!7322 (transformation!5230 (rule!7682 (h!41627 tokens!494)))))) (= lambda!117703 lambda!117689))))

(declare-fun bs!542550 () Bool)

(assert (= bs!542550 (and d!884554 d!884036)))

(assert (=> bs!542550 (= (and (= (toChars!7181 (transformation!5230 (h!41626 rules!2135))) (toChars!7181 (transformation!5230 (rule!7682 (h!41627 (t!239822 tokens!494)))))) (= (toValue!7322 (transformation!5230 (h!41626 rules!2135))) (toValue!7322 (transformation!5230 (rule!7682 (h!41627 (t!239822 tokens!494))))))) (= lambda!117703 lambda!117691))))

(declare-fun bs!542551 () Bool)

(assert (= bs!542551 (and d!884554 d!884496)))

(assert (=> bs!542551 (= (and (= (toChars!7181 (transformation!5230 (h!41626 rules!2135))) (toChars!7181 (transformation!5230 (rule!7682 separatorToken!241)))) (= (toValue!7322 (transformation!5230 (h!41626 rules!2135))) (toValue!7322 (transformation!5230 (rule!7682 separatorToken!241))))) (= lambda!117703 lambda!117702))))

(assert (=> d!884554 true))

(assert (=> d!884554 (< (dynLambda!14647 order!18529 (toChars!7181 (transformation!5230 (h!41626 rules!2135)))) (dynLambda!14657 order!18537 lambda!117703))))

(assert (=> d!884554 true))

(assert (=> d!884554 (< (dynLambda!14645 order!18525 (toValue!7322 (transformation!5230 (h!41626 rules!2135)))) (dynLambda!14657 order!18537 lambda!117703))))

(assert (=> d!884554 (= (semiInverseModEq!2158 (toChars!7181 (transformation!5230 (h!41626 rules!2135))) (toValue!7322 (transformation!5230 (h!41626 rules!2135)))) (Forall!1270 lambda!117703))))

(declare-fun bs!542552 () Bool)

(assert (= bs!542552 d!884554))

(declare-fun m!3496023 () Bool)

(assert (=> bs!542552 m!3496023))

(assert (=> d!882874 d!884554))

(assert (=> b!3217545 d!883524))

(assert (=> b!3217145 d!882918))

(declare-fun b!3219782 () Bool)

(declare-fun res!1310730 () Bool)

(declare-fun e!2007494 () Bool)

(assert (=> b!3219782 (=> (not res!1310730) (not e!2007494))))

(declare-fun lt!1090223 () List!36329)

(assert (=> b!3219782 (= res!1310730 (= (size!27294 lt!1090223) (+ (size!27294 (ite c!540898 call!232874 call!232877)) (size!27294 (ite c!540898 call!232877 call!232874)))))))

(declare-fun b!3219783 () Bool)

(assert (=> b!3219783 (= e!2007494 (or (not (= (ite c!540898 call!232877 call!232874) Nil!36205)) (= lt!1090223 (ite c!540898 call!232874 call!232877))))))

(declare-fun d!884556 () Bool)

(assert (=> d!884556 e!2007494))

(declare-fun res!1310729 () Bool)

(assert (=> d!884556 (=> (not res!1310729) (not e!2007494))))

(assert (=> d!884556 (= res!1310729 (= (content!4899 lt!1090223) ((_ map or) (content!4899 (ite c!540898 call!232874 call!232877)) (content!4899 (ite c!540898 call!232877 call!232874)))))))

(declare-fun e!2007495 () List!36329)

(assert (=> d!884556 (= lt!1090223 e!2007495)))

(declare-fun c!541514 () Bool)

(assert (=> d!884556 (= c!541514 ((_ is Nil!36205) (ite c!540898 call!232874 call!232877)))))

(assert (=> d!884556 (= (++!8698 (ite c!540898 call!232874 call!232877) (ite c!540898 call!232877 call!232874)) lt!1090223)))

(declare-fun b!3219780 () Bool)

(assert (=> b!3219780 (= e!2007495 (ite c!540898 call!232877 call!232874))))

(declare-fun b!3219781 () Bool)

(assert (=> b!3219781 (= e!2007495 (Cons!36205 (h!41625 (ite c!540898 call!232874 call!232877)) (++!8698 (t!239820 (ite c!540898 call!232874 call!232877)) (ite c!540898 call!232877 call!232874))))))

(assert (= (and d!884556 c!541514) b!3219780))

(assert (= (and d!884556 (not c!541514)) b!3219781))

(assert (= (and d!884556 res!1310729) b!3219782))

(assert (= (and b!3219782 res!1310730) b!3219783))

(declare-fun m!3496025 () Bool)

(assert (=> b!3219782 m!3496025))

(declare-fun m!3496027 () Bool)

(assert (=> b!3219782 m!3496027))

(declare-fun m!3496029 () Bool)

(assert (=> b!3219782 m!3496029))

(declare-fun m!3496031 () Bool)

(assert (=> d!884556 m!3496031))

(declare-fun m!3496033 () Bool)

(assert (=> d!884556 m!3496033))

(declare-fun m!3496035 () Bool)

(assert (=> d!884556 m!3496035))

(declare-fun m!3496037 () Bool)

(assert (=> b!3219781 m!3496037))

(assert (=> bm!232871 d!884556))

(declare-fun d!884558 () Bool)

(declare-fun lt!1090224 () Bool)

(assert (=> d!884558 (= lt!1090224 (isEmpty!20308 (list!12887 (_2!20945 lt!1089021))))))

(assert (=> d!884558 (= lt!1090224 (isEmpty!20310 (c!540717 (_2!20945 lt!1089021))))))

(assert (=> d!884558 (= (isEmpty!20304 (_2!20945 lt!1089021)) lt!1090224)))

(declare-fun bs!542553 () Bool)

(assert (= bs!542553 d!884558))

(declare-fun m!3496039 () Bool)

(assert (=> bs!542553 m!3496039))

(assert (=> bs!542553 m!3496039))

(declare-fun m!3496041 () Bool)

(assert (=> bs!542553 m!3496041))

(declare-fun m!3496043 () Bool)

(assert (=> bs!542553 m!3496043))

(assert (=> b!3217532 d!884558))

(declare-fun b!3219787 () Bool)

(declare-fun e!2007497 () List!36329)

(assert (=> b!3219787 (= e!2007497 (++!8698 (list!12889 (left!28160 (c!540717 (charsOf!3246 separatorToken!241)))) (list!12889 (right!28490 (c!540717 (charsOf!3246 separatorToken!241))))))))

(declare-fun b!3219786 () Bool)

(assert (=> b!3219786 (= e!2007497 (list!12894 (xs!13953 (c!540717 (charsOf!3246 separatorToken!241)))))))

(declare-fun b!3219785 () Bool)

(declare-fun e!2007496 () List!36329)

(assert (=> b!3219785 (= e!2007496 e!2007497)))

(declare-fun c!541516 () Bool)

(assert (=> b!3219785 (= c!541516 ((_ is Leaf!17061) (c!540717 (charsOf!3246 separatorToken!241))))))

(declare-fun d!884560 () Bool)

(declare-fun c!541515 () Bool)

(assert (=> d!884560 (= c!541515 ((_ is Empty!10835) (c!540717 (charsOf!3246 separatorToken!241))))))

(assert (=> d!884560 (= (list!12889 (c!540717 (charsOf!3246 separatorToken!241))) e!2007496)))

(declare-fun b!3219784 () Bool)

(assert (=> b!3219784 (= e!2007496 Nil!36205)))

(assert (= (and d!884560 c!541515) b!3219784))

(assert (= (and d!884560 (not c!541515)) b!3219785))

(assert (= (and b!3219785 c!541516) b!3219786))

(assert (= (and b!3219785 (not c!541516)) b!3219787))

(declare-fun m!3496045 () Bool)

(assert (=> b!3219787 m!3496045))

(declare-fun m!3496047 () Bool)

(assert (=> b!3219787 m!3496047))

(assert (=> b!3219787 m!3496045))

(assert (=> b!3219787 m!3496047))

(declare-fun m!3496049 () Bool)

(assert (=> b!3219787 m!3496049))

(declare-fun m!3496051 () Bool)

(assert (=> b!3219786 m!3496051))

(assert (=> d!883206 d!884560))

(declare-fun b!3219788 () Bool)

(declare-fun e!2007501 () Bool)

(declare-fun lt!1090225 () Bool)

(assert (=> b!3219788 (= e!2007501 (not lt!1090225))))

(declare-fun b!3219789 () Bool)

(declare-fun e!2007499 () Bool)

(declare-fun e!2007503 () Bool)

(assert (=> b!3219789 (= e!2007499 e!2007503)))

(declare-fun res!1310733 () Bool)

(assert (=> b!3219789 (=> res!1310733 e!2007503)))

(declare-fun call!233128 () Bool)

(assert (=> b!3219789 (= res!1310733 call!233128)))

(declare-fun b!3219790 () Bool)

(declare-fun res!1310738 () Bool)

(declare-fun e!2007502 () Bool)

(assert (=> b!3219790 (=> (not res!1310738) (not e!2007502))))

(assert (=> b!3219790 (= res!1310738 (isEmpty!20308 (tail!5218 (tail!5218 lt!1088705))))))

(declare-fun b!3219791 () Bool)

(assert (=> b!3219791 (= e!2007502 (= (head!7053 (tail!5218 lt!1088705)) (c!540716 (derivativeStep!2954 (regex!5230 lt!1088704) (head!7053 lt!1088705)))))))

(declare-fun b!3219792 () Bool)

(declare-fun res!1310734 () Bool)

(declare-fun e!2007500 () Bool)

(assert (=> b!3219792 (=> res!1310734 e!2007500)))

(assert (=> b!3219792 (= res!1310734 e!2007502)))

(declare-fun res!1310731 () Bool)

(assert (=> b!3219792 (=> (not res!1310731) (not e!2007502))))

(assert (=> b!3219792 (= res!1310731 lt!1090225)))

(declare-fun b!3219793 () Bool)

(assert (=> b!3219793 (= e!2007500 e!2007499)))

(declare-fun res!1310735 () Bool)

(assert (=> b!3219793 (=> (not res!1310735) (not e!2007499))))

(assert (=> b!3219793 (= res!1310735 (not lt!1090225))))

(declare-fun b!3219795 () Bool)

(declare-fun e!2007504 () Bool)

(assert (=> b!3219795 (= e!2007504 (= lt!1090225 call!233128))))

(declare-fun bm!233123 () Bool)

(assert (=> bm!233123 (= call!233128 (isEmpty!20308 (tail!5218 lt!1088705)))))

(declare-fun b!3219796 () Bool)

(assert (=> b!3219796 (= e!2007503 (not (= (head!7053 (tail!5218 lt!1088705)) (c!540716 (derivativeStep!2954 (regex!5230 lt!1088704) (head!7053 lt!1088705))))))))

(declare-fun b!3219797 () Bool)

(declare-fun res!1310732 () Bool)

(assert (=> b!3219797 (=> res!1310732 e!2007503)))

(assert (=> b!3219797 (= res!1310732 (not (isEmpty!20308 (tail!5218 (tail!5218 lt!1088705)))))))

(declare-fun b!3219798 () Bool)

(declare-fun e!2007498 () Bool)

(assert (=> b!3219798 (= e!2007498 (matchR!4623 (derivativeStep!2954 (derivativeStep!2954 (regex!5230 lt!1088704) (head!7053 lt!1088705)) (head!7053 (tail!5218 lt!1088705))) (tail!5218 (tail!5218 lt!1088705))))))

(declare-fun b!3219794 () Bool)

(assert (=> b!3219794 (= e!2007498 (nullable!3401 (derivativeStep!2954 (regex!5230 lt!1088704) (head!7053 lt!1088705))))))

(declare-fun d!884562 () Bool)

(assert (=> d!884562 e!2007504))

(declare-fun c!541519 () Bool)

(assert (=> d!884562 (= c!541519 ((_ is EmptyExpr!9989) (derivativeStep!2954 (regex!5230 lt!1088704) (head!7053 lt!1088705))))))

(assert (=> d!884562 (= lt!1090225 e!2007498)))

(declare-fun c!541518 () Bool)

(assert (=> d!884562 (= c!541518 (isEmpty!20308 (tail!5218 lt!1088705)))))

(assert (=> d!884562 (validRegex!4557 (derivativeStep!2954 (regex!5230 lt!1088704) (head!7053 lt!1088705)))))

(assert (=> d!884562 (= (matchR!4623 (derivativeStep!2954 (regex!5230 lt!1088704) (head!7053 lt!1088705)) (tail!5218 lt!1088705)) lt!1090225)))

(declare-fun b!3219799 () Bool)

(declare-fun res!1310737 () Bool)

(assert (=> b!3219799 (=> (not res!1310737) (not e!2007502))))

(assert (=> b!3219799 (= res!1310737 (not call!233128))))

(declare-fun b!3219800 () Bool)

(declare-fun res!1310736 () Bool)

(assert (=> b!3219800 (=> res!1310736 e!2007500)))

(assert (=> b!3219800 (= res!1310736 (not ((_ is ElementMatch!9989) (derivativeStep!2954 (regex!5230 lt!1088704) (head!7053 lt!1088705)))))))

(assert (=> b!3219800 (= e!2007501 e!2007500)))

(declare-fun b!3219801 () Bool)

(assert (=> b!3219801 (= e!2007504 e!2007501)))

(declare-fun c!541517 () Bool)

(assert (=> b!3219801 (= c!541517 ((_ is EmptyLang!9989) (derivativeStep!2954 (regex!5230 lt!1088704) (head!7053 lt!1088705))))))

(assert (= (and d!884562 c!541518) b!3219794))

(assert (= (and d!884562 (not c!541518)) b!3219798))

(assert (= (and d!884562 c!541519) b!3219795))

(assert (= (and d!884562 (not c!541519)) b!3219801))

(assert (= (and b!3219801 c!541517) b!3219788))

(assert (= (and b!3219801 (not c!541517)) b!3219800))

(assert (= (and b!3219800 (not res!1310736)) b!3219792))

(assert (= (and b!3219792 res!1310731) b!3219799))

(assert (= (and b!3219799 res!1310737) b!3219790))

(assert (= (and b!3219790 res!1310738) b!3219791))

(assert (= (and b!3219792 (not res!1310734)) b!3219793))

(assert (= (and b!3219793 res!1310735) b!3219789))

(assert (= (and b!3219789 (not res!1310733)) b!3219797))

(assert (= (and b!3219797 (not res!1310732)) b!3219796))

(assert (= (or b!3219795 b!3219789 b!3219799) bm!233123))

(assert (=> d!884562 m!3490745))

(assert (=> d!884562 m!3490747))

(assert (=> d!884562 m!3490751))

(declare-fun m!3496053 () Bool)

(assert (=> d!884562 m!3496053))

(assert (=> b!3219797 m!3490745))

(assert (=> b!3219797 m!3493613))

(assert (=> b!3219797 m!3493613))

(assert (=> b!3219797 m!3493615))

(assert (=> b!3219791 m!3490745))

(assert (=> b!3219791 m!3493617))

(assert (=> b!3219794 m!3490751))

(declare-fun m!3496055 () Bool)

(assert (=> b!3219794 m!3496055))

(assert (=> b!3219790 m!3490745))

(assert (=> b!3219790 m!3493613))

(assert (=> b!3219790 m!3493613))

(assert (=> b!3219790 m!3493615))

(assert (=> b!3219798 m!3490745))

(assert (=> b!3219798 m!3493617))

(assert (=> b!3219798 m!3490751))

(assert (=> b!3219798 m!3493617))

(declare-fun m!3496057 () Bool)

(assert (=> b!3219798 m!3496057))

(assert (=> b!3219798 m!3490745))

(assert (=> b!3219798 m!3493613))

(assert (=> b!3219798 m!3496057))

(assert (=> b!3219798 m!3493613))

(declare-fun m!3496059 () Bool)

(assert (=> b!3219798 m!3496059))

(assert (=> bm!233123 m!3490745))

(assert (=> bm!233123 m!3490747))

(assert (=> b!3219796 m!3490745))

(assert (=> b!3219796 m!3493617))

(assert (=> b!3217046 d!884562))

(declare-fun b!3219816 () Bool)

(declare-fun e!2007516 () Regex!9989)

(declare-fun call!233131 () Regex!9989)

(declare-fun call!233132 () Regex!9989)

(assert (=> b!3219816 (= e!2007516 (Union!9989 call!233131 call!233132))))

(declare-fun b!3219817 () Bool)

(declare-fun c!541530 () Bool)

(assert (=> b!3219817 (= c!541530 ((_ is Union!9989) (regex!5230 lt!1088704)))))

(declare-fun e!2007513 () Regex!9989)

(assert (=> b!3219817 (= e!2007513 e!2007516)))

(declare-fun c!541528 () Bool)

(declare-fun bm!233126 () Bool)

(assert (=> bm!233126 (= call!233132 (derivativeStep!2954 (ite c!541530 (regTwo!20491 (regex!5230 lt!1088704)) (ite c!541528 (reg!10318 (regex!5230 lt!1088704)) (regOne!20490 (regex!5230 lt!1088704)))) (head!7053 lt!1088705)))))

(declare-fun bm!233127 () Bool)

(assert (=> bm!233127 (= call!233131 (derivativeStep!2954 (ite c!541530 (regOne!20491 (regex!5230 lt!1088704)) (regTwo!20490 (regex!5230 lt!1088704))) (head!7053 lt!1088705)))))

(declare-fun b!3219818 () Bool)

(declare-fun e!2007517 () Regex!9989)

(declare-fun call!233134 () Regex!9989)

(assert (=> b!3219818 (= e!2007517 (Concat!15449 call!233134 (regex!5230 lt!1088704)))))

(declare-fun bm!233128 () Bool)

(declare-fun call!233133 () Regex!9989)

(assert (=> bm!233128 (= call!233133 call!233134)))

(declare-fun d!884564 () Bool)

(declare-fun lt!1090230 () Regex!9989)

(assert (=> d!884564 (validRegex!4557 lt!1090230)))

(declare-fun e!2007515 () Regex!9989)

(assert (=> d!884564 (= lt!1090230 e!2007515)))

(declare-fun c!541526 () Bool)

(assert (=> d!884564 (= c!541526 (or ((_ is EmptyExpr!9989) (regex!5230 lt!1088704)) ((_ is EmptyLang!9989) (regex!5230 lt!1088704))))))

(assert (=> d!884564 (validRegex!4557 (regex!5230 lt!1088704))))

(assert (=> d!884564 (= (derivativeStep!2954 (regex!5230 lt!1088704) (head!7053 lt!1088705)) lt!1090230)))

(declare-fun b!3219819 () Bool)

(assert (=> b!3219819 (= e!2007516 e!2007517)))

(assert (=> b!3219819 (= c!541528 ((_ is Star!9989) (regex!5230 lt!1088704)))))

(declare-fun b!3219820 () Bool)

(declare-fun c!541529 () Bool)

(assert (=> b!3219820 (= c!541529 (nullable!3401 (regOne!20490 (regex!5230 lt!1088704))))))

(declare-fun e!2007514 () Regex!9989)

(assert (=> b!3219820 (= e!2007517 e!2007514)))

(declare-fun b!3219821 () Bool)

(assert (=> b!3219821 (= e!2007513 (ite (= (head!7053 lt!1088705) (c!540716 (regex!5230 lt!1088704))) EmptyExpr!9989 EmptyLang!9989))))

(declare-fun bm!233129 () Bool)

(assert (=> bm!233129 (= call!233134 call!233132)))

(declare-fun b!3219822 () Bool)

(assert (=> b!3219822 (= e!2007514 (Union!9989 (Concat!15449 call!233133 (regTwo!20490 (regex!5230 lt!1088704))) call!233131))))

(declare-fun b!3219823 () Bool)

(assert (=> b!3219823 (= e!2007515 EmptyLang!9989)))

(declare-fun b!3219824 () Bool)

(assert (=> b!3219824 (= e!2007515 e!2007513)))

(declare-fun c!541527 () Bool)

(assert (=> b!3219824 (= c!541527 ((_ is ElementMatch!9989) (regex!5230 lt!1088704)))))

(declare-fun b!3219825 () Bool)

(assert (=> b!3219825 (= e!2007514 (Union!9989 (Concat!15449 call!233133 (regTwo!20490 (regex!5230 lt!1088704))) EmptyLang!9989))))

(assert (= (and d!884564 c!541526) b!3219823))

(assert (= (and d!884564 (not c!541526)) b!3219824))

(assert (= (and b!3219824 c!541527) b!3219821))

(assert (= (and b!3219824 (not c!541527)) b!3219817))

(assert (= (and b!3219817 c!541530) b!3219816))

(assert (= (and b!3219817 (not c!541530)) b!3219819))

(assert (= (and b!3219819 c!541528) b!3219818))

(assert (= (and b!3219819 (not c!541528)) b!3219820))

(assert (= (and b!3219820 c!541529) b!3219822))

(assert (= (and b!3219820 (not c!541529)) b!3219825))

(assert (= (or b!3219822 b!3219825) bm!233128))

(assert (= (or b!3219818 bm!233128) bm!233129))

(assert (= (or b!3219816 b!3219822) bm!233127))

(assert (= (or b!3219816 bm!233129) bm!233126))

(assert (=> bm!233126 m!3490341))

(declare-fun m!3496061 () Bool)

(assert (=> bm!233126 m!3496061))

(assert (=> bm!233127 m!3490341))

(declare-fun m!3496063 () Bool)

(assert (=> bm!233127 m!3496063))

(declare-fun m!3496065 () Bool)

(assert (=> d!884564 m!3496065))

(assert (=> d!884564 m!3490743))

(declare-fun m!3496067 () Bool)

(assert (=> b!3219820 m!3496067))

(assert (=> b!3217046 d!884564))

(assert (=> b!3217046 d!883156))

(assert (=> b!3217046 d!883776))

(declare-fun b!3219828 () Bool)

(declare-fun res!1310742 () Bool)

(declare-fun e!2007518 () Bool)

(assert (=> b!3219828 (=> (not res!1310742) (not e!2007518))))

(declare-fun lt!1090231 () List!36329)

(assert (=> b!3219828 (= res!1310742 (= (size!27294 lt!1090231) (+ (size!27294 (t!239820 (++!8698 lt!1088698 lt!1088705))) (size!27294 lt!1088710))))))

(declare-fun b!3219829 () Bool)

(assert (=> b!3219829 (= e!2007518 (or (not (= lt!1088710 Nil!36205)) (= lt!1090231 (t!239820 (++!8698 lt!1088698 lt!1088705)))))))

(declare-fun d!884566 () Bool)

(assert (=> d!884566 e!2007518))

(declare-fun res!1310741 () Bool)

(assert (=> d!884566 (=> (not res!1310741) (not e!2007518))))

(assert (=> d!884566 (= res!1310741 (= (content!4899 lt!1090231) ((_ map or) (content!4899 (t!239820 (++!8698 lt!1088698 lt!1088705))) (content!4899 lt!1088710))))))

(declare-fun e!2007519 () List!36329)

(assert (=> d!884566 (= lt!1090231 e!2007519)))

(declare-fun c!541531 () Bool)

(assert (=> d!884566 (= c!541531 ((_ is Nil!36205) (t!239820 (++!8698 lt!1088698 lt!1088705))))))

(assert (=> d!884566 (= (++!8698 (t!239820 (++!8698 lt!1088698 lt!1088705)) lt!1088710) lt!1090231)))

(declare-fun b!3219826 () Bool)

(assert (=> b!3219826 (= e!2007519 lt!1088710)))

(declare-fun b!3219827 () Bool)

(assert (=> b!3219827 (= e!2007519 (Cons!36205 (h!41625 (t!239820 (++!8698 lt!1088698 lt!1088705))) (++!8698 (t!239820 (t!239820 (++!8698 lt!1088698 lt!1088705))) lt!1088710)))))

(assert (= (and d!884566 c!541531) b!3219826))

(assert (= (and d!884566 (not c!541531)) b!3219827))

(assert (= (and d!884566 res!1310741) b!3219828))

(assert (= (and b!3219828 res!1310742) b!3219829))

(declare-fun m!3496069 () Bool)

(assert (=> b!3219828 m!3496069))

(assert (=> b!3219828 m!3495311))

(assert (=> b!3219828 m!3490565))

(declare-fun m!3496071 () Bool)

(assert (=> d!884566 m!3496071))

(assert (=> d!884566 m!3494761))

(assert (=> d!884566 m!3490571))

(declare-fun m!3496073 () Bool)

(assert (=> b!3219827 m!3496073))

(assert (=> b!3216875 d!884566))

(declare-fun d!884568 () Bool)

(assert (=> d!884568 (= (isDefined!5564 (getRuleFromTag!935 thiss!18206 rules!2135 (tag!5760 (rule!7682 (h!41627 (t!239822 tokens!494)))))) (not (isEmpty!20311 (getRuleFromTag!935 thiss!18206 rules!2135 (tag!5760 (rule!7682 (h!41627 (t!239822 tokens!494))))))))))

(declare-fun bs!542554 () Bool)

(assert (= bs!542554 d!884568))

(assert (=> bs!542554 m!3490353))

(declare-fun m!3496075 () Bool)

(assert (=> bs!542554 m!3496075))

(assert (=> d!882916 d!884568))

(assert (=> d!882916 d!883162))

(declare-fun d!884570 () Bool)

(declare-fun e!2007520 () Bool)

(assert (=> d!884570 e!2007520))

(declare-fun res!1310743 () Bool)

(assert (=> d!884570 (=> (not res!1310743) (not e!2007520))))

(assert (=> d!884570 (= res!1310743 (isDefined!5564 (getRuleFromTag!935 thiss!18206 rules!2135 (tag!5760 (rule!7682 (h!41627 (t!239822 tokens!494)))))))))

(assert (=> d!884570 true))

(declare-fun _$52!1590 () Unit!50722)

(assert (=> d!884570 (= (choose!18787 thiss!18206 rules!2135 lt!1088680 (h!41627 (t!239822 tokens!494))) _$52!1590)))

(declare-fun b!3219830 () Bool)

(declare-fun res!1310744 () Bool)

(assert (=> b!3219830 (=> (not res!1310744) (not e!2007520))))

(assert (=> b!3219830 (= res!1310744 (matchR!4623 (regex!5230 (get!11532 (getRuleFromTag!935 thiss!18206 rules!2135 (tag!5760 (rule!7682 (h!41627 (t!239822 tokens!494))))))) (list!12887 (charsOf!3246 (h!41627 (t!239822 tokens!494))))))))

(declare-fun b!3219831 () Bool)

(assert (=> b!3219831 (= e!2007520 (= (rule!7682 (h!41627 (t!239822 tokens!494))) (get!11532 (getRuleFromTag!935 thiss!18206 rules!2135 (tag!5760 (rule!7682 (h!41627 (t!239822 tokens!494))))))))))

(assert (= (and d!884570 res!1310743) b!3219830))

(assert (= (and b!3219830 res!1310744) b!3219831))

(assert (=> d!884570 m!3490353))

(assert (=> d!884570 m!3490353))

(assert (=> d!884570 m!3490959))

(assert (=> b!3219830 m!3490475))

(assert (=> b!3219830 m!3490965))

(assert (=> b!3219830 m!3490353))

(assert (=> b!3219830 m!3490963))

(assert (=> b!3219830 m!3490353))

(assert (=> b!3219830 m!3490469))

(assert (=> b!3219830 m!3490469))

(assert (=> b!3219830 m!3490475))

(assert (=> b!3219831 m!3490353))

(assert (=> b!3219831 m!3490353))

(assert (=> b!3219831 m!3490963))

(assert (=> d!882916 d!884570))

(assert (=> d!882916 d!882902))

(declare-fun d!884572 () Bool)

(declare-fun lt!1090234 () Int)

(assert (=> d!884572 (>= lt!1090234 0)))

(declare-fun e!2007525 () Int)

(assert (=> d!884572 (= lt!1090234 e!2007525)))

(declare-fun c!541535 () Bool)

(assert (=> d!884572 (= c!541535 ((_ is Nil!36205) (t!239820 lt!1088698)))))

(assert (=> d!884572 (= (size!27294 (t!239820 lt!1088698)) lt!1090234)))

(declare-fun b!3219839 () Bool)

(assert (=> b!3219839 (= e!2007525 0)))

(declare-fun b!3219840 () Bool)

(assert (=> b!3219840 (= e!2007525 (+ 1 (size!27294 (t!239820 (t!239820 lt!1088698)))))))

(assert (= (and d!884572 c!541535) b!3219839))

(assert (= (and d!884572 (not c!541535)) b!3219840))

(declare-fun m!3496077 () Bool)

(assert (=> b!3219840 m!3496077))

(assert (=> b!3217679 d!884572))

(assert (=> b!3217691 d!884176))

(declare-fun d!884574 () Bool)

(assert (=> d!884574 (= (inv!16 (value!169515 separatorToken!241)) (= (charsToInt!0 (text!38667 (value!169515 separatorToken!241))) (value!169506 (value!169515 separatorToken!241))))))

(declare-fun bs!542555 () Bool)

(assert (= bs!542555 d!884574))

(declare-fun m!3496079 () Bool)

(assert (=> bs!542555 m!3496079))

(assert (=> b!3217011 d!884574))

(declare-fun d!884576 () Bool)

(declare-fun lt!1090235 () Int)

(assert (=> d!884576 (>= lt!1090235 0)))

(declare-fun e!2007526 () Int)

(assert (=> d!884576 (= lt!1090235 e!2007526)))

(declare-fun c!541536 () Bool)

(assert (=> d!884576 (= c!541536 ((_ is Nil!36207) (list!12890 (_1!20945 lt!1088707))))))

(assert (=> d!884576 (= (size!27299 (list!12890 (_1!20945 lt!1088707))) lt!1090235)))

(declare-fun b!3219841 () Bool)

(assert (=> b!3219841 (= e!2007526 0)))

(declare-fun b!3219842 () Bool)

(assert (=> b!3219842 (= e!2007526 (+ 1 (size!27299 (t!239822 (list!12890 (_1!20945 lt!1088707))))))))

(assert (= (and d!884576 c!541536) b!3219841))

(assert (= (and d!884576 (not c!541536)) b!3219842))

(declare-fun m!3496095 () Bool)

(assert (=> b!3219842 m!3496095))

(assert (=> d!882918 d!884576))

(declare-fun d!884578 () Bool)

(assert (=> d!884578 (= (list!12890 (_1!20945 lt!1088707)) (list!12893 (c!540718 (_1!20945 lt!1088707))))))

(declare-fun bs!542556 () Bool)

(assert (= bs!542556 d!884578))

(declare-fun m!3496097 () Bool)

(assert (=> bs!542556 m!3496097))

(assert (=> d!882918 d!884578))

(declare-fun d!884582 () Bool)

(declare-fun lt!1090236 () Int)

(assert (=> d!884582 (= lt!1090236 (size!27299 (list!12893 (c!540718 (_1!20945 lt!1088707)))))))

(assert (=> d!884582 (= lt!1090236 (ite ((_ is Empty!10836) (c!540718 (_1!20945 lt!1088707))) 0 (ite ((_ is Leaf!17062) (c!540718 (_1!20945 lt!1088707))) (csize!21903 (c!540718 (_1!20945 lt!1088707))) (csize!21902 (c!540718 (_1!20945 lt!1088707))))))))

(assert (=> d!884582 (= (size!27300 (c!540718 (_1!20945 lt!1088707))) lt!1090236)))

(declare-fun bs!542557 () Bool)

(assert (= bs!542557 d!884582))

(assert (=> bs!542557 m!3496097))

(assert (=> bs!542557 m!3496097))

(declare-fun m!3496099 () Bool)

(assert (=> bs!542557 m!3496099))

(assert (=> d!882918 d!884582))

(declare-fun d!884584 () Bool)

(declare-fun c!541538 () Bool)

(assert (=> d!884584 (= c!541538 ((_ is Node!10835) (c!540717 (dynLambda!14648 (toChars!7181 (transformation!5230 (rule!7682 (h!41627 (t!239822 tokens!494))))) (value!169515 (h!41627 (t!239822 tokens!494)))))))))

(declare-fun e!2007529 () Bool)

(assert (=> d!884584 (= (inv!49077 (c!540717 (dynLambda!14648 (toChars!7181 (transformation!5230 (rule!7682 (h!41627 (t!239822 tokens!494))))) (value!169515 (h!41627 (t!239822 tokens!494)))))) e!2007529)))

(declare-fun b!3219846 () Bool)

(assert (=> b!3219846 (= e!2007529 (inv!49083 (c!540717 (dynLambda!14648 (toChars!7181 (transformation!5230 (rule!7682 (h!41627 (t!239822 tokens!494))))) (value!169515 (h!41627 (t!239822 tokens!494)))))))))

(declare-fun b!3219847 () Bool)

(declare-fun e!2007530 () Bool)

(assert (=> b!3219847 (= e!2007529 e!2007530)))

(declare-fun res!1310747 () Bool)

(assert (=> b!3219847 (= res!1310747 (not ((_ is Leaf!17061) (c!540717 (dynLambda!14648 (toChars!7181 (transformation!5230 (rule!7682 (h!41627 (t!239822 tokens!494))))) (value!169515 (h!41627 (t!239822 tokens!494))))))))))

(assert (=> b!3219847 (=> res!1310747 e!2007530)))

(declare-fun b!3219848 () Bool)

(assert (=> b!3219848 (= e!2007530 (inv!49084 (c!540717 (dynLambda!14648 (toChars!7181 (transformation!5230 (rule!7682 (h!41627 (t!239822 tokens!494))))) (value!169515 (h!41627 (t!239822 tokens!494)))))))))

(assert (= (and d!884584 c!541538) b!3219846))

(assert (= (and d!884584 (not c!541538)) b!3219847))

(assert (= (and b!3219847 (not res!1310747)) b!3219848))

(declare-fun m!3496107 () Bool)

(assert (=> b!3219846 m!3496107))

(declare-fun m!3496109 () Bool)

(assert (=> b!3219848 m!3496109))

(assert (=> b!3217746 d!884584))

(assert (=> d!882818 d!884196))

(declare-fun c!541540 () Bool)

(declare-fun c!541539 () Bool)

(declare-fun bm!233131 () Bool)

(declare-fun call!233138 () Bool)

(assert (=> bm!233131 (= call!233138 (validRegex!4557 (ite c!541539 (reg!10318 (regex!5230 lt!1088691)) (ite c!541540 (regOne!20491 (regex!5230 lt!1088691)) (regOne!20490 (regex!5230 lt!1088691))))))))

(declare-fun b!3219849 () Bool)

(declare-fun e!2007537 () Bool)

(declare-fun e!2007536 () Bool)

(assert (=> b!3219849 (= e!2007537 e!2007536)))

(assert (=> b!3219849 (= c!541539 ((_ is Star!9989) (regex!5230 lt!1088691)))))

(declare-fun bm!233132 () Bool)

(declare-fun call!233136 () Bool)

(assert (=> bm!233132 (= call!233136 call!233138)))

(declare-fun b!3219850 () Bool)

(declare-fun e!2007531 () Bool)

(assert (=> b!3219850 (= e!2007536 e!2007531)))

(assert (=> b!3219850 (= c!541540 ((_ is Union!9989) (regex!5230 lt!1088691)))))

(declare-fun bm!233133 () Bool)

(declare-fun call!233137 () Bool)

(assert (=> bm!233133 (= call!233137 (validRegex!4557 (ite c!541540 (regTwo!20491 (regex!5230 lt!1088691)) (regTwo!20490 (regex!5230 lt!1088691)))))))

(declare-fun b!3219851 () Bool)

(declare-fun e!2007534 () Bool)

(declare-fun e!2007533 () Bool)

(assert (=> b!3219851 (= e!2007534 e!2007533)))

(declare-fun res!1310749 () Bool)

(assert (=> b!3219851 (=> (not res!1310749) (not e!2007533))))

(assert (=> b!3219851 (= res!1310749 call!233136)))

(declare-fun d!884586 () Bool)

(declare-fun res!1310750 () Bool)

(assert (=> d!884586 (=> res!1310750 e!2007537)))

(assert (=> d!884586 (= res!1310750 ((_ is ElementMatch!9989) (regex!5230 lt!1088691)))))

(assert (=> d!884586 (= (validRegex!4557 (regex!5230 lt!1088691)) e!2007537)))

(declare-fun b!3219852 () Bool)

(declare-fun e!2007535 () Bool)

(assert (=> b!3219852 (= e!2007535 call!233138)))

(declare-fun b!3219853 () Bool)

(assert (=> b!3219853 (= e!2007536 e!2007535)))

(declare-fun res!1310751 () Bool)

(assert (=> b!3219853 (= res!1310751 (not (nullable!3401 (reg!10318 (regex!5230 lt!1088691)))))))

(assert (=> b!3219853 (=> (not res!1310751) (not e!2007535))))

(declare-fun b!3219854 () Bool)

(declare-fun res!1310748 () Bool)

(assert (=> b!3219854 (=> res!1310748 e!2007534)))

(assert (=> b!3219854 (= res!1310748 (not ((_ is Concat!15449) (regex!5230 lt!1088691))))))

(assert (=> b!3219854 (= e!2007531 e!2007534)))

(declare-fun b!3219855 () Bool)

(assert (=> b!3219855 (= e!2007533 call!233137)))

(declare-fun b!3219856 () Bool)

(declare-fun res!1310752 () Bool)

(declare-fun e!2007532 () Bool)

(assert (=> b!3219856 (=> (not res!1310752) (not e!2007532))))

(assert (=> b!3219856 (= res!1310752 call!233136)))

(assert (=> b!3219856 (= e!2007531 e!2007532)))

(declare-fun b!3219857 () Bool)

(assert (=> b!3219857 (= e!2007532 call!233137)))

(assert (= (and d!884586 (not res!1310750)) b!3219849))

(assert (= (and b!3219849 c!541539) b!3219853))

(assert (= (and b!3219849 (not c!541539)) b!3219850))

(assert (= (and b!3219853 res!1310751) b!3219852))

(assert (= (and b!3219850 c!541540) b!3219856))

(assert (= (and b!3219850 (not c!541540)) b!3219854))

(assert (= (and b!3219856 res!1310752) b!3219857))

(assert (= (and b!3219854 (not res!1310748)) b!3219851))

(assert (= (and b!3219851 res!1310749) b!3219855))

(assert (= (or b!3219857 b!3219855) bm!233133))

(assert (= (or b!3219856 b!3219851) bm!233132))

(assert (= (or b!3219852 bm!233132) bm!233131))

(declare-fun m!3496113 () Bool)

(assert (=> bm!233131 m!3496113))

(declare-fun m!3496115 () Bool)

(assert (=> bm!233133 m!3496115))

(declare-fun m!3496117 () Bool)

(assert (=> b!3219853 m!3496117))

(assert (=> d!882818 d!884586))

(declare-fun d!884590 () Bool)

(declare-fun lt!1090240 () BalanceConc!21284)

(assert (=> d!884590 (= (list!12887 lt!1090240) (originalCharacters!5944 (h!41627 (t!239822 (t!239822 tokens!494)))))))

(assert (=> d!884590 (= lt!1090240 (dynLambda!14648 (toChars!7181 (transformation!5230 (rule!7682 (h!41627 (t!239822 (t!239822 tokens!494)))))) (value!169515 (h!41627 (t!239822 (t!239822 tokens!494))))))))

(assert (=> d!884590 (= (charsOf!3246 (h!41627 (t!239822 (t!239822 tokens!494)))) lt!1090240)))

(declare-fun b_lambda!88547 () Bool)

(assert (=> (not b_lambda!88547) (not d!884590)))

(declare-fun t!240248 () Bool)

(declare-fun tb!159137 () Bool)

(assert (=> (and b!3216775 (= (toChars!7181 (transformation!5230 (rule!7682 (h!41627 tokens!494)))) (toChars!7181 (transformation!5230 (rule!7682 (h!41627 (t!239822 (t!239822 tokens!494))))))) t!240248) tb!159137))

(declare-fun b!3219865 () Bool)

(declare-fun e!2007542 () Bool)

(declare-fun tp!1014359 () Bool)

(assert (=> b!3219865 (= e!2007542 (and (inv!49077 (c!540717 (dynLambda!14648 (toChars!7181 (transformation!5230 (rule!7682 (h!41627 (t!239822 (t!239822 tokens!494)))))) (value!169515 (h!41627 (t!239822 (t!239822 tokens!494))))))) tp!1014359))))

(declare-fun result!201558 () Bool)

(assert (=> tb!159137 (= result!201558 (and (inv!49078 (dynLambda!14648 (toChars!7181 (transformation!5230 (rule!7682 (h!41627 (t!239822 (t!239822 tokens!494)))))) (value!169515 (h!41627 (t!239822 (t!239822 tokens!494)))))) e!2007542))))

(assert (= tb!159137 b!3219865))

(declare-fun m!3496134 () Bool)

(assert (=> b!3219865 m!3496134))

(declare-fun m!3496137 () Bool)

(assert (=> tb!159137 m!3496137))

(assert (=> d!884590 t!240248))

(declare-fun b_and!215227 () Bool)

(assert (= b_and!215127 (and (=> t!240248 result!201558) b_and!215227)))

(declare-fun t!240250 () Bool)

(declare-fun tb!159139 () Bool)

(assert (=> (and b!3216778 (= (toChars!7181 (transformation!5230 (rule!7682 separatorToken!241))) (toChars!7181 (transformation!5230 (rule!7682 (h!41627 (t!239822 (t!239822 tokens!494))))))) t!240250) tb!159139))

(declare-fun result!201560 () Bool)

(assert (= result!201560 result!201558))

(assert (=> d!884590 t!240250))

(declare-fun b_and!215229 () Bool)

(assert (= b_and!215135 (and (=> t!240250 result!201560) b_and!215229)))

(declare-fun t!240252 () Bool)

(declare-fun tb!159141 () Bool)

(assert (=> (and b!3217757 (= (toChars!7181 (transformation!5230 (h!41626 (t!239821 rules!2135)))) (toChars!7181 (transformation!5230 (rule!7682 (h!41627 (t!239822 (t!239822 tokens!494))))))) t!240252) tb!159141))

(declare-fun result!201562 () Bool)

(assert (= result!201562 result!201558))

(assert (=> d!884590 t!240252))

(declare-fun b_and!215231 () Bool)

(assert (= b_and!215129 (and (=> t!240252 result!201562) b_and!215231)))

(declare-fun t!240254 () Bool)

(declare-fun tb!159143 () Bool)

(assert (=> (and b!3217774 (= (toChars!7181 (transformation!5230 (rule!7682 (h!41627 (t!239822 tokens!494))))) (toChars!7181 (transformation!5230 (rule!7682 (h!41627 (t!239822 (t!239822 tokens!494))))))) t!240254) tb!159143))

(declare-fun result!201564 () Bool)

(assert (= result!201564 result!201558))

(assert (=> d!884590 t!240254))

(declare-fun b_and!215233 () Bool)

(assert (= b_and!215131 (and (=> t!240254 result!201564) b_and!215233)))

(declare-fun tb!159145 () Bool)

(declare-fun t!240256 () Bool)

(assert (=> (and b!3216773 (= (toChars!7181 (transformation!5230 (h!41626 rules!2135))) (toChars!7181 (transformation!5230 (rule!7682 (h!41627 (t!239822 (t!239822 tokens!494))))))) t!240256) tb!159145))

(declare-fun result!201566 () Bool)

(assert (= result!201566 result!201558))

(assert (=> d!884590 t!240256))

(declare-fun b_and!215235 () Bool)

(assert (= b_and!215133 (and (=> t!240256 result!201566) b_and!215235)))

(declare-fun m!3496143 () Bool)

(assert (=> d!884590 m!3496143))

(declare-fun m!3496145 () Bool)

(assert (=> d!884590 m!3496145))

(assert (=> b!3217742 d!884590))

(declare-fun d!884596 () Bool)

(assert (=> d!884596 (= (list!12887 (charsOf!3246 (h!41627 (t!239822 (t!239822 tokens!494))))) (list!12889 (c!540717 (charsOf!3246 (h!41627 (t!239822 (t!239822 tokens!494)))))))))

(declare-fun bs!542559 () Bool)

(assert (= bs!542559 d!884596))

(declare-fun m!3496149 () Bool)

(assert (=> bs!542559 m!3496149))

(assert (=> b!3217742 d!884596))

(declare-fun d!884600 () Bool)

(declare-fun c!541545 () Bool)

(assert (=> d!884600 (= c!541545 ((_ is Cons!36207) (t!239822 (t!239822 (t!239822 tokens!494)))))))

(declare-fun e!2007544 () List!36329)

(assert (=> d!884600 (= (printWithSeparatorTokenList!164 thiss!18206 (t!239822 (t!239822 (t!239822 tokens!494))) separatorToken!241) e!2007544)))

(declare-fun b!3219868 () Bool)

(assert (=> b!3219868 (= e!2007544 (++!8698 (++!8698 (list!12887 (charsOf!3246 (h!41627 (t!239822 (t!239822 (t!239822 tokens!494)))))) (list!12887 (charsOf!3246 separatorToken!241))) (printWithSeparatorTokenList!164 thiss!18206 (t!239822 (t!239822 (t!239822 (t!239822 tokens!494)))) separatorToken!241)))))

(declare-fun b!3219869 () Bool)

(assert (=> b!3219869 (= e!2007544 Nil!36205)))

(assert (= (and d!884600 c!541545) b!3219868))

(assert (= (and d!884600 (not c!541545)) b!3219869))

(assert (=> b!3219868 m!3490479))

(assert (=> b!3219868 m!3490481))

(declare-fun m!3496153 () Bool)

(assert (=> b!3219868 m!3496153))

(declare-fun m!3496155 () Bool)

(assert (=> b!3219868 m!3496155))

(declare-fun m!3496157 () Bool)

(assert (=> b!3219868 m!3496157))

(assert (=> b!3219868 m!3496155))

(declare-fun m!3496161 () Bool)

(assert (=> b!3219868 m!3496161))

(declare-fun m!3496163 () Bool)

(assert (=> b!3219868 m!3496163))

(assert (=> b!3219868 m!3496161))

(assert (=> b!3219868 m!3490479))

(assert (=> b!3219868 m!3496163))

(assert (=> b!3219868 m!3490481))

(assert (=> b!3219868 m!3496153))

(assert (=> b!3217742 d!884600))

(declare-fun b!3219878 () Bool)

(declare-fun res!1310761 () Bool)

(declare-fun e!2007547 () Bool)

(assert (=> b!3219878 (=> (not res!1310761) (not e!2007547))))

(declare-fun lt!1090244 () List!36329)

(assert (=> b!3219878 (= res!1310761 (= (size!27294 lt!1090244) (+ (size!27294 (list!12887 (charsOf!3246 (h!41627 (t!239822 (t!239822 tokens!494)))))) (size!27294 (list!12887 (charsOf!3246 separatorToken!241))))))))

(declare-fun b!3219879 () Bool)

(assert (=> b!3219879 (= e!2007547 (or (not (= (list!12887 (charsOf!3246 separatorToken!241)) Nil!36205)) (= lt!1090244 (list!12887 (charsOf!3246 (h!41627 (t!239822 (t!239822 tokens!494))))))))))

(declare-fun d!884604 () Bool)

(assert (=> d!884604 e!2007547))

(declare-fun res!1310760 () Bool)

(assert (=> d!884604 (=> (not res!1310760) (not e!2007547))))

(assert (=> d!884604 (= res!1310760 (= (content!4899 lt!1090244) ((_ map or) (content!4899 (list!12887 (charsOf!3246 (h!41627 (t!239822 (t!239822 tokens!494)))))) (content!4899 (list!12887 (charsOf!3246 separatorToken!241))))))))

(declare-fun e!2007548 () List!36329)

(assert (=> d!884604 (= lt!1090244 e!2007548)))

(declare-fun c!541546 () Bool)

(assert (=> d!884604 (= c!541546 ((_ is Nil!36205) (list!12887 (charsOf!3246 (h!41627 (t!239822 (t!239822 tokens!494)))))))))

(assert (=> d!884604 (= (++!8698 (list!12887 (charsOf!3246 (h!41627 (t!239822 (t!239822 tokens!494))))) (list!12887 (charsOf!3246 separatorToken!241))) lt!1090244)))

(declare-fun b!3219876 () Bool)

(assert (=> b!3219876 (= e!2007548 (list!12887 (charsOf!3246 separatorToken!241)))))

(declare-fun b!3219877 () Bool)

(assert (=> b!3219877 (= e!2007548 (Cons!36205 (h!41625 (list!12887 (charsOf!3246 (h!41627 (t!239822 (t!239822 tokens!494)))))) (++!8698 (t!239820 (list!12887 (charsOf!3246 (h!41627 (t!239822 (t!239822 tokens!494)))))) (list!12887 (charsOf!3246 separatorToken!241)))))))

(assert (= (and d!884604 c!541546) b!3219876))

(assert (= (and d!884604 (not c!541546)) b!3219877))

(assert (= (and d!884604 res!1310760) b!3219878))

(assert (= (and b!3219878 res!1310761) b!3219879))

(declare-fun m!3496179 () Bool)

(assert (=> b!3219878 m!3496179))

(assert (=> b!3219878 m!3492091))

(declare-fun m!3496181 () Bool)

(assert (=> b!3219878 m!3496181))

(assert (=> b!3219878 m!3490481))

(assert (=> b!3219878 m!3492559))

(declare-fun m!3496183 () Bool)

(assert (=> d!884604 m!3496183))

(assert (=> d!884604 m!3492091))

(declare-fun m!3496185 () Bool)

(assert (=> d!884604 m!3496185))

(assert (=> d!884604 m!3490481))

(assert (=> d!884604 m!3492565))

(assert (=> b!3219877 m!3490481))

(declare-fun m!3496187 () Bool)

(assert (=> b!3219877 m!3496187))

(assert (=> b!3217742 d!884604))

(assert (=> b!3217742 d!883192))

(assert (=> b!3217742 d!883206))

(declare-fun b!3219898 () Bool)

(declare-fun res!1310771 () Bool)

(declare-fun e!2007557 () Bool)

(assert (=> b!3219898 (=> (not res!1310771) (not e!2007557))))

(declare-fun lt!1090247 () List!36329)

(assert (=> b!3219898 (= res!1310771 (= (size!27294 lt!1090247) (+ (size!27294 (++!8698 (list!12887 (charsOf!3246 (h!41627 (t!239822 (t!239822 tokens!494))))) (list!12887 (charsOf!3246 separatorToken!241)))) (size!27294 (printWithSeparatorTokenList!164 thiss!18206 (t!239822 (t!239822 (t!239822 tokens!494))) separatorToken!241)))))))

(declare-fun b!3219899 () Bool)

(assert (=> b!3219899 (= e!2007557 (or (not (= (printWithSeparatorTokenList!164 thiss!18206 (t!239822 (t!239822 (t!239822 tokens!494))) separatorToken!241) Nil!36205)) (= lt!1090247 (++!8698 (list!12887 (charsOf!3246 (h!41627 (t!239822 (t!239822 tokens!494))))) (list!12887 (charsOf!3246 separatorToken!241))))))))

(declare-fun d!884612 () Bool)

(assert (=> d!884612 e!2007557))

(declare-fun res!1310770 () Bool)

(assert (=> d!884612 (=> (not res!1310770) (not e!2007557))))

(assert (=> d!884612 (= res!1310770 (= (content!4899 lt!1090247) ((_ map or) (content!4899 (++!8698 (list!12887 (charsOf!3246 (h!41627 (t!239822 (t!239822 tokens!494))))) (list!12887 (charsOf!3246 separatorToken!241)))) (content!4899 (printWithSeparatorTokenList!164 thiss!18206 (t!239822 (t!239822 (t!239822 tokens!494))) separatorToken!241)))))))

(declare-fun e!2007558 () List!36329)

(assert (=> d!884612 (= lt!1090247 e!2007558)))

(declare-fun c!541551 () Bool)

(assert (=> d!884612 (= c!541551 ((_ is Nil!36205) (++!8698 (list!12887 (charsOf!3246 (h!41627 (t!239822 (t!239822 tokens!494))))) (list!12887 (charsOf!3246 separatorToken!241)))))))

(assert (=> d!884612 (= (++!8698 (++!8698 (list!12887 (charsOf!3246 (h!41627 (t!239822 (t!239822 tokens!494))))) (list!12887 (charsOf!3246 separatorToken!241))) (printWithSeparatorTokenList!164 thiss!18206 (t!239822 (t!239822 (t!239822 tokens!494))) separatorToken!241)) lt!1090247)))

(declare-fun b!3219896 () Bool)

(assert (=> b!3219896 (= e!2007558 (printWithSeparatorTokenList!164 thiss!18206 (t!239822 (t!239822 (t!239822 tokens!494))) separatorToken!241))))

(declare-fun b!3219897 () Bool)

(assert (=> b!3219897 (= e!2007558 (Cons!36205 (h!41625 (++!8698 (list!12887 (charsOf!3246 (h!41627 (t!239822 (t!239822 tokens!494))))) (list!12887 (charsOf!3246 separatorToken!241)))) (++!8698 (t!239820 (++!8698 (list!12887 (charsOf!3246 (h!41627 (t!239822 (t!239822 tokens!494))))) (list!12887 (charsOf!3246 separatorToken!241)))) (printWithSeparatorTokenList!164 thiss!18206 (t!239822 (t!239822 (t!239822 tokens!494))) separatorToken!241))))))

(assert (= (and d!884612 c!541551) b!3219896))

(assert (= (and d!884612 (not c!541551)) b!3219897))

(assert (= (and d!884612 res!1310770) b!3219898))

(assert (= (and b!3219898 res!1310771) b!3219899))

(declare-fun m!3496189 () Bool)

(assert (=> b!3219898 m!3496189))

(assert (=> b!3219898 m!3492083))

(declare-fun m!3496191 () Bool)

(assert (=> b!3219898 m!3496191))

(assert (=> b!3219898 m!3492085))

(declare-fun m!3496193 () Bool)

(assert (=> b!3219898 m!3496193))

(declare-fun m!3496195 () Bool)

(assert (=> d!884612 m!3496195))

(assert (=> d!884612 m!3492083))

(declare-fun m!3496197 () Bool)

(assert (=> d!884612 m!3496197))

(assert (=> d!884612 m!3492085))

(declare-fun m!3496199 () Bool)

(assert (=> d!884612 m!3496199))

(assert (=> b!3219897 m!3492085))

(declare-fun m!3496203 () Bool)

(assert (=> b!3219897 m!3496203))

(assert (=> b!3217742 d!884612))

(declare-fun d!884614 () Bool)

(declare-fun c!541553 () Bool)

(assert (=> d!884614 (= c!541553 ((_ is IntegerValue!16380) (dynLambda!14653 (toValue!7322 (transformation!5230 (rule!7682 (h!41627 (t!239822 tokens!494))))) (seqFromList!3531 lt!1088680))))))

(declare-fun e!2007559 () Bool)

(assert (=> d!884614 (= (inv!21 (dynLambda!14653 (toValue!7322 (transformation!5230 (rule!7682 (h!41627 (t!239822 tokens!494))))) (seqFromList!3531 lt!1088680))) e!2007559)))

(declare-fun b!3219900 () Bool)

(declare-fun e!2007560 () Bool)

(assert (=> b!3219900 (= e!2007560 (inv!15 (dynLambda!14653 (toValue!7322 (transformation!5230 (rule!7682 (h!41627 (t!239822 tokens!494))))) (seqFromList!3531 lt!1088680))))))

(declare-fun b!3219901 () Bool)

(declare-fun e!2007561 () Bool)

(assert (=> b!3219901 (= e!2007561 (inv!17 (dynLambda!14653 (toValue!7322 (transformation!5230 (rule!7682 (h!41627 (t!239822 tokens!494))))) (seqFromList!3531 lt!1088680))))))

(declare-fun b!3219902 () Bool)

(assert (=> b!3219902 (= e!2007559 e!2007561)))

(declare-fun c!541552 () Bool)

(assert (=> b!3219902 (= c!541552 ((_ is IntegerValue!16381) (dynLambda!14653 (toValue!7322 (transformation!5230 (rule!7682 (h!41627 (t!239822 tokens!494))))) (seqFromList!3531 lt!1088680))))))

(declare-fun b!3219903 () Bool)

(assert (=> b!3219903 (= e!2007559 (inv!16 (dynLambda!14653 (toValue!7322 (transformation!5230 (rule!7682 (h!41627 (t!239822 tokens!494))))) (seqFromList!3531 lt!1088680))))))

(declare-fun b!3219904 () Bool)

(declare-fun res!1310772 () Bool)

(assert (=> b!3219904 (=> res!1310772 e!2007560)))

(assert (=> b!3219904 (= res!1310772 (not ((_ is IntegerValue!16382) (dynLambda!14653 (toValue!7322 (transformation!5230 (rule!7682 (h!41627 (t!239822 tokens!494))))) (seqFromList!3531 lt!1088680)))))))

(assert (=> b!3219904 (= e!2007561 e!2007560)))

(assert (= (and d!884614 c!541553) b!3219903))

(assert (= (and d!884614 (not c!541553)) b!3219902))

(assert (= (and b!3219902 c!541552) b!3219901))

(assert (= (and b!3219902 (not c!541552)) b!3219904))

(assert (= (and b!3219904 (not res!1310772)) b!3219900))

(declare-fun m!3496213 () Bool)

(assert (=> b!3219900 m!3496213))

(declare-fun m!3496215 () Bool)

(assert (=> b!3219901 m!3496215))

(declare-fun m!3496217 () Bool)

(assert (=> b!3219903 m!3496217))

(assert (=> tb!158789 d!884614))

(declare-fun bs!542563 () Bool)

(declare-fun d!884616 () Bool)

(assert (= bs!542563 (and d!884616 d!883408)))

(declare-fun lambda!117704 () Int)

(assert (=> bs!542563 (= (= (toValue!7322 (transformation!5230 (rule!7682 (h!41627 tokens!494)))) (toValue!7322 (transformation!5230 (rule!7682 separatorToken!241)))) (= lambda!117704 lambda!117673))))

(declare-fun bs!542564 () Bool)

(assert (= bs!542564 (and d!884616 d!883984)))

(assert (=> bs!542564 (= (= (toValue!7322 (transformation!5230 (rule!7682 (h!41627 tokens!494)))) (toValue!7322 (transformation!5230 (h!41626 rules!2135)))) (= lambda!117704 lambda!117690))))

(assert (=> d!884616 true))

(assert (=> d!884616 (< (dynLambda!14645 order!18525 (toValue!7322 (transformation!5230 (rule!7682 (h!41627 tokens!494))))) (dynLambda!14654 order!18533 lambda!117704))))

(assert (=> d!884616 (= (equivClasses!2057 (toChars!7181 (transformation!5230 (rule!7682 (h!41627 tokens!494)))) (toValue!7322 (transformation!5230 (rule!7682 (h!41627 tokens!494))))) (Forall2!867 lambda!117704))))

(declare-fun bs!542565 () Bool)

(assert (= bs!542565 d!884616))

(declare-fun m!3496227 () Bool)

(assert (=> bs!542565 m!3496227))

(assert (=> b!3217064 d!884616))

(assert (=> b!3217340 d!883458))

(declare-fun d!884624 () Bool)

(declare-fun lt!1090249 () Int)

(assert (=> d!884624 (>= lt!1090249 0)))

(declare-fun e!2007571 () Int)

(assert (=> d!884624 (= lt!1090249 e!2007571)))

(declare-fun c!541557 () Bool)

(assert (=> d!884624 (= c!541557 ((_ is Nil!36205) (originalCharacters!5944 (_1!20946 (get!11534 lt!1088976)))))))

(assert (=> d!884624 (= (size!27294 (originalCharacters!5944 (_1!20946 (get!11534 lt!1088976)))) lt!1090249)))

(declare-fun b!3219921 () Bool)

(assert (=> b!3219921 (= e!2007571 0)))

(declare-fun b!3219922 () Bool)

(assert (=> b!3219922 (= e!2007571 (+ 1 (size!27294 (t!239820 (originalCharacters!5944 (_1!20946 (get!11534 lt!1088976)))))))))

(assert (= (and d!884624 c!541557) b!3219921))

(assert (= (and d!884624 (not c!541557)) b!3219922))

(declare-fun m!3496229 () Bool)

(assert (=> b!3219922 m!3496229))

(assert (=> b!3217340 d!884624))

(assert (=> b!3217039 d!883156))

(declare-fun d!884626 () Bool)

(assert (=> d!884626 (= (list!12887 lt!1088779) (list!12889 (c!540717 lt!1088779)))))

(declare-fun bs!542566 () Bool)

(assert (= bs!542566 d!884626))

(declare-fun m!3496231 () Bool)

(assert (=> bs!542566 m!3496231))

(assert (=> d!882842 d!884626))

(declare-fun d!884628 () Bool)

(declare-fun c!541558 () Bool)

(assert (=> d!884628 (= c!541558 ((_ is Cons!36207) (list!12890 lt!1088696)))))

(declare-fun e!2007572 () List!36329)

(assert (=> d!884628 (= (printList!1369 thiss!18206 (list!12890 lt!1088696)) e!2007572)))

(declare-fun b!3219923 () Bool)

(assert (=> b!3219923 (= e!2007572 (++!8698 (list!12887 (charsOf!3246 (h!41627 (list!12890 lt!1088696)))) (printList!1369 thiss!18206 (t!239822 (list!12890 lt!1088696)))))))

(declare-fun b!3219924 () Bool)

(assert (=> b!3219924 (= e!2007572 Nil!36205)))

(assert (= (and d!884628 c!541558) b!3219923))

(assert (= (and d!884628 (not c!541558)) b!3219924))

(declare-fun m!3496245 () Bool)

(assert (=> b!3219923 m!3496245))

(assert (=> b!3219923 m!3496245))

(declare-fun m!3496249 () Bool)

(assert (=> b!3219923 m!3496249))

(declare-fun m!3496251 () Bool)

(assert (=> b!3219923 m!3496251))

(assert (=> b!3219923 m!3496249))

(assert (=> b!3219923 m!3496251))

(declare-fun m!3496253 () Bool)

(assert (=> b!3219923 m!3496253))

(assert (=> d!882842 d!884628))

(assert (=> d!882842 d!883922))

(assert (=> d!882842 d!882832))

(declare-fun d!884630 () Bool)

(assert (=> d!884630 (= (isEmpty!20308 (originalCharacters!5944 (h!41627 tokens!494))) ((_ is Nil!36205) (originalCharacters!5944 (h!41627 tokens!494))))))

(assert (=> d!882826 d!884630))

(declare-fun b!3219927 () Bool)

(declare-fun res!1310784 () Bool)

(declare-fun e!2007573 () Bool)

(assert (=> b!3219927 (=> (not res!1310784) (not e!2007573))))

(declare-fun lt!1090251 () List!36329)

(assert (=> b!3219927 (= res!1310784 (= (size!27294 lt!1090251) (+ (size!27294 (list!12887 (charsOf!3246 (_1!20946 (get!11534 lt!1088911))))) (size!27294 (_2!20946 (get!11534 lt!1088911))))))))

(declare-fun b!3219928 () Bool)

(assert (=> b!3219928 (= e!2007573 (or (not (= (_2!20946 (get!11534 lt!1088911)) Nil!36205)) (= lt!1090251 (list!12887 (charsOf!3246 (_1!20946 (get!11534 lt!1088911)))))))))

(declare-fun d!884634 () Bool)

(assert (=> d!884634 e!2007573))

(declare-fun res!1310783 () Bool)

(assert (=> d!884634 (=> (not res!1310783) (not e!2007573))))

(assert (=> d!884634 (= res!1310783 (= (content!4899 lt!1090251) ((_ map or) (content!4899 (list!12887 (charsOf!3246 (_1!20946 (get!11534 lt!1088911))))) (content!4899 (_2!20946 (get!11534 lt!1088911))))))))

(declare-fun e!2007574 () List!36329)

(assert (=> d!884634 (= lt!1090251 e!2007574)))

(declare-fun c!541559 () Bool)

(assert (=> d!884634 (= c!541559 ((_ is Nil!36205) (list!12887 (charsOf!3246 (_1!20946 (get!11534 lt!1088911))))))))

(assert (=> d!884634 (= (++!8698 (list!12887 (charsOf!3246 (_1!20946 (get!11534 lt!1088911)))) (_2!20946 (get!11534 lt!1088911))) lt!1090251)))

(declare-fun b!3219925 () Bool)

(assert (=> b!3219925 (= e!2007574 (_2!20946 (get!11534 lt!1088911)))))

(declare-fun b!3219926 () Bool)

(assert (=> b!3219926 (= e!2007574 (Cons!36205 (h!41625 (list!12887 (charsOf!3246 (_1!20946 (get!11534 lt!1088911))))) (++!8698 (t!239820 (list!12887 (charsOf!3246 (_1!20946 (get!11534 lt!1088911))))) (_2!20946 (get!11534 lt!1088911)))))))

(assert (= (and d!884634 c!541559) b!3219925))

(assert (= (and d!884634 (not c!541559)) b!3219926))

(assert (= (and d!884634 res!1310783) b!3219927))

(assert (= (and b!3219927 res!1310784) b!3219928))

(declare-fun m!3496261 () Bool)

(assert (=> b!3219927 m!3496261))

(assert (=> b!3219927 m!3491063))

(declare-fun m!3496263 () Bool)

(assert (=> b!3219927 m!3496263))

(assert (=> b!3219927 m!3491067))

(declare-fun m!3496265 () Bool)

(assert (=> d!884634 m!3496265))

(assert (=> d!884634 m!3491063))

(declare-fun m!3496267 () Bool)

(assert (=> d!884634 m!3496267))

(declare-fun m!3496269 () Bool)

(assert (=> d!884634 m!3496269))

(declare-fun m!3496271 () Bool)

(assert (=> b!3219926 m!3496271))

(assert (=> b!3217207 d!884634))

(assert (=> b!3217207 d!883396))

(assert (=> b!3217207 d!883398))

(assert (=> b!3217207 d!883394))

(declare-fun b!3219938 () Bool)

(declare-fun res!1310787 () Bool)

(declare-fun e!2007579 () Bool)

(assert (=> b!3219938 (=> (not res!1310787) (not e!2007579))))

(declare-fun lt!1090286 () List!36329)

(assert (=> b!3219938 (= res!1310787 (= (size!27294 lt!1090286) (+ (size!27294 (list!12887 (charsOf!3246 (_1!20946 (get!11534 lt!1089033))))) (size!27294 (_2!20946 (get!11534 lt!1089033))))))))

(declare-fun b!3219939 () Bool)

(assert (=> b!3219939 (= e!2007579 (or (not (= (_2!20946 (get!11534 lt!1089033)) Nil!36205)) (= lt!1090286 (list!12887 (charsOf!3246 (_1!20946 (get!11534 lt!1089033)))))))))

(declare-fun d!884638 () Bool)

(assert (=> d!884638 e!2007579))

(declare-fun res!1310786 () Bool)

(assert (=> d!884638 (=> (not res!1310786) (not e!2007579))))

(assert (=> d!884638 (= res!1310786 (= (content!4899 lt!1090286) ((_ map or) (content!4899 (list!12887 (charsOf!3246 (_1!20946 (get!11534 lt!1089033))))) (content!4899 (_2!20946 (get!11534 lt!1089033))))))))

(declare-fun e!2007580 () List!36329)

(assert (=> d!884638 (= lt!1090286 e!2007580)))

(declare-fun c!541563 () Bool)

(assert (=> d!884638 (= c!541563 ((_ is Nil!36205) (list!12887 (charsOf!3246 (_1!20946 (get!11534 lt!1089033))))))))

(assert (=> d!884638 (= (++!8698 (list!12887 (charsOf!3246 (_1!20946 (get!11534 lt!1089033)))) (_2!20946 (get!11534 lt!1089033))) lt!1090286)))

(declare-fun b!3219936 () Bool)

(assert (=> b!3219936 (= e!2007580 (_2!20946 (get!11534 lt!1089033)))))

(declare-fun b!3219937 () Bool)

(assert (=> b!3219937 (= e!2007580 (Cons!36205 (h!41625 (list!12887 (charsOf!3246 (_1!20946 (get!11534 lt!1089033))))) (++!8698 (t!239820 (list!12887 (charsOf!3246 (_1!20946 (get!11534 lt!1089033))))) (_2!20946 (get!11534 lt!1089033)))))))

(assert (= (and d!884638 c!541563) b!3219936))

(assert (= (and d!884638 (not c!541563)) b!3219937))

(assert (= (and d!884638 res!1310786) b!3219938))

(assert (= (and b!3219938 res!1310787) b!3219939))

(declare-fun m!3496273 () Bool)

(assert (=> b!3219938 m!3496273))

(assert (=> b!3219938 m!3491767))

(declare-fun m!3496275 () Bool)

(assert (=> b!3219938 m!3496275))

(assert (=> b!3219938 m!3491759))

(declare-fun m!3496277 () Bool)

(assert (=> d!884638 m!3496277))

(assert (=> d!884638 m!3491767))

(declare-fun m!3496279 () Bool)

(assert (=> d!884638 m!3496279))

(declare-fun m!3496281 () Bool)

(assert (=> d!884638 m!3496281))

(declare-fun m!3496283 () Bool)

(assert (=> b!3219937 m!3496283))

(assert (=> b!3217546 d!884638))

(assert (=> b!3217546 d!884180))

(assert (=> b!3217546 d!884182))

(assert (=> b!3217546 d!883524))

(declare-fun d!884640 () Bool)

(declare-fun c!541565 () Bool)

(assert (=> d!884640 (= c!541565 ((_ is IntegerValue!16380) (dynLambda!14653 (toValue!7322 (transformation!5230 (rule!7682 (h!41627 tokens!494)))) lt!1088720)))))

(declare-fun e!2007581 () Bool)

(assert (=> d!884640 (= (inv!21 (dynLambda!14653 (toValue!7322 (transformation!5230 (rule!7682 (h!41627 tokens!494)))) lt!1088720)) e!2007581)))

(declare-fun b!3219940 () Bool)

(declare-fun e!2007582 () Bool)

(assert (=> b!3219940 (= e!2007582 (inv!15 (dynLambda!14653 (toValue!7322 (transformation!5230 (rule!7682 (h!41627 tokens!494)))) lt!1088720)))))

(declare-fun b!3219941 () Bool)

(declare-fun e!2007583 () Bool)

(assert (=> b!3219941 (= e!2007583 (inv!17 (dynLambda!14653 (toValue!7322 (transformation!5230 (rule!7682 (h!41627 tokens!494)))) lt!1088720)))))

(declare-fun b!3219942 () Bool)

(assert (=> b!3219942 (= e!2007581 e!2007583)))

(declare-fun c!541564 () Bool)

(assert (=> b!3219942 (= c!541564 ((_ is IntegerValue!16381) (dynLambda!14653 (toValue!7322 (transformation!5230 (rule!7682 (h!41627 tokens!494)))) lt!1088720)))))

(declare-fun b!3219943 () Bool)

(assert (=> b!3219943 (= e!2007581 (inv!16 (dynLambda!14653 (toValue!7322 (transformation!5230 (rule!7682 (h!41627 tokens!494)))) lt!1088720)))))

(declare-fun b!3219944 () Bool)

(declare-fun res!1310788 () Bool)

(assert (=> b!3219944 (=> res!1310788 e!2007582)))

(assert (=> b!3219944 (= res!1310788 (not ((_ is IntegerValue!16382) (dynLambda!14653 (toValue!7322 (transformation!5230 (rule!7682 (h!41627 tokens!494)))) lt!1088720))))))

(assert (=> b!3219944 (= e!2007583 e!2007582)))

(assert (= (and d!884640 c!541565) b!3219943))

(assert (= (and d!884640 (not c!541565)) b!3219942))

(assert (= (and b!3219942 c!541564) b!3219941))

(assert (= (and b!3219942 (not c!541564)) b!3219944))

(assert (= (and b!3219944 (not res!1310788)) b!3219940))

(declare-fun m!3496285 () Bool)

(assert (=> b!3219940 m!3496285))

(declare-fun m!3496287 () Bool)

(assert (=> b!3219941 m!3496287))

(declare-fun m!3496289 () Bool)

(assert (=> b!3219943 m!3496289))

(assert (=> tb!158795 d!884640))

(declare-fun d!884642 () Bool)

(assert (=> d!884642 (= (nullable!3401 (regex!5230 lt!1088691)) (nullableFct!971 (regex!5230 lt!1088691)))))

(declare-fun bs!542568 () Bool)

(assert (= bs!542568 d!884642))

(declare-fun m!3496291 () Bool)

(assert (=> bs!542568 m!3496291))

(assert (=> b!3216916 d!884642))

(declare-fun d!884644 () Bool)

(declare-fun lt!1090287 () Int)

(assert (=> d!884644 (= lt!1090287 (size!27294 (list!12887 (_2!20945 lt!1089063))))))

(assert (=> d!884644 (= lt!1090287 (size!27303 (c!540717 (_2!20945 lt!1089063))))))

(assert (=> d!884644 (= (size!27301 (_2!20945 lt!1089063)) lt!1090287)))

(declare-fun bs!542569 () Bool)

(assert (= bs!542569 d!884644))

(assert (=> bs!542569 m!3491915))

(assert (=> bs!542569 m!3491915))

(declare-fun m!3496293 () Bool)

(assert (=> bs!542569 m!3496293))

(declare-fun m!3496295 () Bool)

(assert (=> bs!542569 m!3496295))

(assert (=> b!3217674 d!884644))

(declare-fun d!884646 () Bool)

(declare-fun lt!1090288 () Int)

(assert (=> d!884646 (= lt!1090288 (size!27294 (list!12887 lt!1088718)))))

(assert (=> d!884646 (= lt!1090288 (size!27303 (c!540717 lt!1088718)))))

(assert (=> d!884646 (= (size!27301 lt!1088718) lt!1090288)))

(declare-fun bs!542570 () Bool)

(assert (= bs!542570 d!884646))

(assert (=> bs!542570 m!3491917))

(assert (=> bs!542570 m!3491917))

(assert (=> bs!542570 m!3493139))

(declare-fun m!3496297 () Bool)

(assert (=> bs!542570 m!3496297))

(assert (=> b!3217674 d!884646))

(assert (=> d!882850 d!882852))

(declare-fun d!884648 () Bool)

(assert (=> d!884648 (not (matchR!4623 (regex!5230 (rule!7682 (h!41627 (t!239822 tokens!494)))) lt!1088680))))

(assert (=> d!884648 true))

(declare-fun _$127!278 () Unit!50722)

(assert (=> d!884648 (= (choose!18784 (regex!5230 (rule!7682 (h!41627 (t!239822 tokens!494)))) lt!1088680 lt!1088711) _$127!278)))

(declare-fun bs!542571 () Bool)

(assert (= bs!542571 d!884648))

(assert (=> bs!542571 m!3490329))

(assert (=> d!882850 d!884648))

(declare-fun call!233144 () Bool)

(declare-fun bm!233137 () Bool)

(declare-fun c!541567 () Bool)

(declare-fun c!541566 () Bool)

(assert (=> bm!233137 (= call!233144 (validRegex!4557 (ite c!541566 (reg!10318 (regex!5230 (rule!7682 (h!41627 (t!239822 tokens!494))))) (ite c!541567 (regOne!20491 (regex!5230 (rule!7682 (h!41627 (t!239822 tokens!494))))) (regOne!20490 (regex!5230 (rule!7682 (h!41627 (t!239822 tokens!494)))))))))))

(declare-fun b!3219945 () Bool)

(declare-fun e!2007590 () Bool)

(declare-fun e!2007589 () Bool)

(assert (=> b!3219945 (= e!2007590 e!2007589)))

(assert (=> b!3219945 (= c!541566 ((_ is Star!9989) (regex!5230 (rule!7682 (h!41627 (t!239822 tokens!494))))))))

(declare-fun bm!233138 () Bool)

(declare-fun call!233142 () Bool)

(assert (=> bm!233138 (= call!233142 call!233144)))

(declare-fun b!3219946 () Bool)

(declare-fun e!2007584 () Bool)

(assert (=> b!3219946 (= e!2007589 e!2007584)))

(assert (=> b!3219946 (= c!541567 ((_ is Union!9989) (regex!5230 (rule!7682 (h!41627 (t!239822 tokens!494))))))))

(declare-fun bm!233139 () Bool)

(declare-fun call!233143 () Bool)

(assert (=> bm!233139 (= call!233143 (validRegex!4557 (ite c!541567 (regTwo!20491 (regex!5230 (rule!7682 (h!41627 (t!239822 tokens!494))))) (regTwo!20490 (regex!5230 (rule!7682 (h!41627 (t!239822 tokens!494))))))))))

(declare-fun b!3219947 () Bool)

(declare-fun e!2007587 () Bool)

(declare-fun e!2007586 () Bool)

(assert (=> b!3219947 (= e!2007587 e!2007586)))

(declare-fun res!1310790 () Bool)

(assert (=> b!3219947 (=> (not res!1310790) (not e!2007586))))

(assert (=> b!3219947 (= res!1310790 call!233142)))

(declare-fun d!884650 () Bool)

(declare-fun res!1310791 () Bool)

(assert (=> d!884650 (=> res!1310791 e!2007590)))

(assert (=> d!884650 (= res!1310791 ((_ is ElementMatch!9989) (regex!5230 (rule!7682 (h!41627 (t!239822 tokens!494))))))))

(assert (=> d!884650 (= (validRegex!4557 (regex!5230 (rule!7682 (h!41627 (t!239822 tokens!494))))) e!2007590)))

(declare-fun b!3219948 () Bool)

(declare-fun e!2007588 () Bool)

(assert (=> b!3219948 (= e!2007588 call!233144)))

(declare-fun b!3219949 () Bool)

(assert (=> b!3219949 (= e!2007589 e!2007588)))

(declare-fun res!1310792 () Bool)

(assert (=> b!3219949 (= res!1310792 (not (nullable!3401 (reg!10318 (regex!5230 (rule!7682 (h!41627 (t!239822 tokens!494))))))))))

(assert (=> b!3219949 (=> (not res!1310792) (not e!2007588))))

(declare-fun b!3219950 () Bool)

(declare-fun res!1310789 () Bool)

(assert (=> b!3219950 (=> res!1310789 e!2007587)))

(assert (=> b!3219950 (= res!1310789 (not ((_ is Concat!15449) (regex!5230 (rule!7682 (h!41627 (t!239822 tokens!494)))))))))

(assert (=> b!3219950 (= e!2007584 e!2007587)))

(declare-fun b!3219951 () Bool)

(assert (=> b!3219951 (= e!2007586 call!233143)))

(declare-fun b!3219952 () Bool)

(declare-fun res!1310793 () Bool)

(declare-fun e!2007585 () Bool)

(assert (=> b!3219952 (=> (not res!1310793) (not e!2007585))))

(assert (=> b!3219952 (= res!1310793 call!233142)))

(assert (=> b!3219952 (= e!2007584 e!2007585)))

(declare-fun b!3219953 () Bool)

(assert (=> b!3219953 (= e!2007585 call!233143)))

(assert (= (and d!884650 (not res!1310791)) b!3219945))

(assert (= (and b!3219945 c!541566) b!3219949))

(assert (= (and b!3219945 (not c!541566)) b!3219946))

(assert (= (and b!3219949 res!1310792) b!3219948))

(assert (= (and b!3219946 c!541567) b!3219952))

(assert (= (and b!3219946 (not c!541567)) b!3219950))

(assert (= (and b!3219952 res!1310793) b!3219953))

(assert (= (and b!3219950 (not res!1310789)) b!3219947))

(assert (= (and b!3219947 res!1310790) b!3219951))

(assert (= (or b!3219953 b!3219951) bm!233139))

(assert (= (or b!3219952 b!3219947) bm!233138))

(assert (= (or b!3219948 bm!233138) bm!233137))

(declare-fun m!3496311 () Bool)

(assert (=> bm!233137 m!3496311))

(declare-fun m!3496317 () Bool)

(assert (=> bm!233139 m!3496317))

(declare-fun m!3496319 () Bool)

(assert (=> b!3219949 m!3496319))

(assert (=> d!882850 d!884650))

(declare-fun d!884652 () Bool)

(assert (=> d!884652 (= (list!12890 (_1!20945 (lex!2149 thiss!18206 rules!2135 (print!1884 thiss!18206 (singletonSeq!2326 (h!41627 tokens!494)))))) (list!12893 (c!540718 (_1!20945 (lex!2149 thiss!18206 rules!2135 (print!1884 thiss!18206 (singletonSeq!2326 (h!41627 tokens!494))))))))))

(declare-fun bs!542572 () Bool)

(assert (= bs!542572 d!884652))

(declare-fun m!3496335 () Bool)

(assert (=> bs!542572 m!3496335))

(assert (=> d!882876 d!884652))

(assert (=> d!882876 d!884046))

(assert (=> d!882876 d!884048))

(declare-fun d!884654 () Bool)

(declare-fun lt!1090289 () Int)

(assert (=> d!884654 (= lt!1090289 (size!27299 (list!12890 (_1!20945 lt!1088813))))))

(assert (=> d!884654 (= lt!1090289 (size!27300 (c!540718 (_1!20945 lt!1088813))))))

(assert (=> d!884654 (= (size!27295 (_1!20945 lt!1088813)) lt!1090289)))

(declare-fun bs!542573 () Bool)

(assert (= bs!542573 d!884654))

(assert (=> bs!542573 m!3495027))

(assert (=> bs!542573 m!3495027))

(declare-fun m!3496351 () Bool)

(assert (=> bs!542573 m!3496351))

(declare-fun m!3496355 () Bool)

(assert (=> bs!542573 m!3496355))

(assert (=> d!882876 d!884654))

(declare-fun d!884656 () Bool)

(assert (=> d!884656 (= (list!12890 (singletonSeq!2326 (h!41627 tokens!494))) (list!12893 (c!540718 (singletonSeq!2326 (h!41627 tokens!494)))))))

(declare-fun bs!542574 () Bool)

(assert (= bs!542574 d!884656))

(declare-fun m!3496361 () Bool)

(assert (=> bs!542574 m!3496361))

(assert (=> d!882876 d!884656))

(assert (=> d!882876 d!882844))

(assert (=> d!882876 d!883176))

(declare-fun d!884658 () Bool)

(declare-fun lt!1090290 () Token!9826)

(assert (=> d!884658 (contains!6482 (list!12890 (_1!20945 lt!1088707)) lt!1090290)))

(declare-fun e!2007591 () Token!9826)

(assert (=> d!884658 (= lt!1090290 e!2007591)))

(declare-fun c!541568 () Bool)

(assert (=> d!884658 (= c!541568 (= 0 0))))

(declare-fun e!2007592 () Bool)

(assert (=> d!884658 e!2007592))

(declare-fun res!1310794 () Bool)

(assert (=> d!884658 (=> (not res!1310794) (not e!2007592))))

(assert (=> d!884658 (= res!1310794 (<= 0 0))))

(assert (=> d!884658 (= (apply!8223 (list!12890 (_1!20945 lt!1088707)) 0) lt!1090290)))

(declare-fun b!3219954 () Bool)

(assert (=> b!3219954 (= e!2007592 (< 0 (size!27299 (list!12890 (_1!20945 lt!1088707)))))))

(declare-fun b!3219955 () Bool)

(assert (=> b!3219955 (= e!2007591 (head!7054 (list!12890 (_1!20945 lt!1088707))))))

(declare-fun b!3219956 () Bool)

(assert (=> b!3219956 (= e!2007591 (apply!8223 (tail!5219 (list!12890 (_1!20945 lt!1088707))) (- 0 1)))))

(assert (= (and d!884658 res!1310794) b!3219954))

(assert (= (and d!884658 c!541568) b!3219955))

(assert (= (and d!884658 (not c!541568)) b!3219956))

(assert (=> d!884658 m!3490933))

(declare-fun m!3496383 () Bool)

(assert (=> d!884658 m!3496383))

(assert (=> b!3219954 m!3490933))

(assert (=> b!3219954 m!3490967))

(assert (=> b!3219955 m!3490933))

(declare-fun m!3496387 () Bool)

(assert (=> b!3219955 m!3496387))

(assert (=> b!3219956 m!3490933))

(declare-fun m!3496391 () Bool)

(assert (=> b!3219956 m!3496391))

(assert (=> b!3219956 m!3496391))

(declare-fun m!3496395 () Bool)

(assert (=> b!3219956 m!3496395))

(assert (=> d!882908 d!884658))

(assert (=> d!882908 d!884578))

(declare-fun b!3219957 () Bool)

(declare-fun e!2007596 () Token!9826)

(declare-fun e!2007594 () Token!9826)

(assert (=> b!3219957 (= e!2007596 e!2007594)))

(declare-fun lt!1090291 () Bool)

(assert (=> b!3219957 (= lt!1090291 (appendIndex!311 (list!12893 (left!28161 (c!540718 (_1!20945 lt!1088707)))) (list!12893 (right!28491 (c!540718 (_1!20945 lt!1088707)))) 0))))

(declare-fun c!541570 () Bool)

(assert (=> b!3219957 (= c!541570 (< 0 (size!27300 (left!28161 (c!540718 (_1!20945 lt!1088707))))))))

(declare-fun b!3219958 () Bool)

(assert (=> b!3219958 (= e!2007596 (apply!8227 (xs!13954 (c!540718 (_1!20945 lt!1088707))) 0))))

(declare-fun b!3219959 () Bool)

(declare-fun call!233145 () Token!9826)

(assert (=> b!3219959 (= e!2007594 call!233145)))

(declare-fun b!3219960 () Bool)

(assert (=> b!3219960 (= e!2007594 call!233145)))

(declare-fun bm!233140 () Bool)

(declare-fun c!541569 () Bool)

(assert (=> bm!233140 (= c!541569 c!541570)))

(declare-fun e!2007595 () Int)

(assert (=> bm!233140 (= call!233145 (apply!8225 (ite c!541570 (left!28161 (c!540718 (_1!20945 lt!1088707))) (right!28491 (c!540718 (_1!20945 lt!1088707)))) e!2007595))))

(declare-fun b!3219961 () Bool)

(assert (=> b!3219961 (= e!2007595 0)))

(declare-fun b!3219962 () Bool)

(assert (=> b!3219962 (= e!2007595 (- 0 (size!27300 (left!28161 (c!540718 (_1!20945 lt!1088707))))))))

(declare-fun b!3219963 () Bool)

(declare-fun e!2007593 () Bool)

(assert (=> b!3219963 (= e!2007593 (< 0 (size!27300 (c!540718 (_1!20945 lt!1088707)))))))

(declare-fun d!884660 () Bool)

(declare-fun lt!1090292 () Token!9826)

(assert (=> d!884660 (= lt!1090292 (apply!8223 (list!12893 (c!540718 (_1!20945 lt!1088707))) 0))))

(assert (=> d!884660 (= lt!1090292 e!2007596)))

(declare-fun c!541571 () Bool)

(assert (=> d!884660 (= c!541571 ((_ is Leaf!17062) (c!540718 (_1!20945 lt!1088707))))))

(assert (=> d!884660 e!2007593))

(declare-fun res!1310795 () Bool)

(assert (=> d!884660 (=> (not res!1310795) (not e!2007593))))

(assert (=> d!884660 (= res!1310795 (<= 0 0))))

(assert (=> d!884660 (= (apply!8225 (c!540718 (_1!20945 lt!1088707)) 0) lt!1090292)))

(assert (= (and d!884660 res!1310795) b!3219963))

(assert (= (and d!884660 c!541571) b!3219958))

(assert (= (and d!884660 (not c!541571)) b!3219957))

(assert (= (and b!3219957 c!541570) b!3219959))

(assert (= (and b!3219957 (not c!541570)) b!3219960))

(assert (= (or b!3219959 b!3219960) bm!233140))

(assert (= (and bm!233140 c!541569) b!3219961))

(assert (= (and bm!233140 (not c!541569)) b!3219962))

(declare-fun m!3496407 () Bool)

(assert (=> b!3219957 m!3496407))

(declare-fun m!3496409 () Bool)

(assert (=> b!3219957 m!3496409))

(assert (=> b!3219957 m!3496407))

(assert (=> b!3219957 m!3496409))

(declare-fun m!3496411 () Bool)

(assert (=> b!3219957 m!3496411))

(declare-fun m!3496413 () Bool)

(assert (=> b!3219957 m!3496413))

(assert (=> b!3219963 m!3490969))

(assert (=> b!3219962 m!3496413))

(declare-fun m!3496419 () Bool)

(assert (=> b!3219958 m!3496419))

(assert (=> d!884660 m!3496097))

(assert (=> d!884660 m!3496097))

(declare-fun m!3496421 () Bool)

(assert (=> d!884660 m!3496421))

(declare-fun m!3496423 () Bool)

(assert (=> bm!233140 m!3496423))

(assert (=> d!882908 d!884660))

(declare-fun b!3219982 () Bool)

(declare-fun res!1310807 () Bool)

(declare-fun e!2007606 () Bool)

(assert (=> b!3219982 (=> (not res!1310807) (not e!2007606))))

(declare-fun lt!1090294 () List!36329)

(assert (=> b!3219982 (= res!1310807 (= (size!27294 lt!1090294) (+ (size!27294 (ite c!540888 call!232870 call!232873)) (size!27294 (ite c!540888 call!232873 call!232870)))))))

(declare-fun b!3219983 () Bool)

(assert (=> b!3219983 (= e!2007606 (or (not (= (ite c!540888 call!232873 call!232870) Nil!36205)) (= lt!1090294 (ite c!540888 call!232870 call!232873))))))

(declare-fun d!884668 () Bool)

(assert (=> d!884668 e!2007606))

(declare-fun res!1310806 () Bool)

(assert (=> d!884668 (=> (not res!1310806) (not e!2007606))))

(assert (=> d!884668 (= res!1310806 (= (content!4899 lt!1090294) ((_ map or) (content!4899 (ite c!540888 call!232870 call!232873)) (content!4899 (ite c!540888 call!232873 call!232870)))))))

(declare-fun e!2007607 () List!36329)

(assert (=> d!884668 (= lt!1090294 e!2007607)))

(declare-fun c!541575 () Bool)

(assert (=> d!884668 (= c!541575 ((_ is Nil!36205) (ite c!540888 call!232870 call!232873)))))

(assert (=> d!884668 (= (++!8698 (ite c!540888 call!232870 call!232873) (ite c!540888 call!232873 call!232870)) lt!1090294)))

(declare-fun b!3219980 () Bool)

(assert (=> b!3219980 (= e!2007607 (ite c!540888 call!232873 call!232870))))

(declare-fun b!3219981 () Bool)

(assert (=> b!3219981 (= e!2007607 (Cons!36205 (h!41625 (ite c!540888 call!232870 call!232873)) (++!8698 (t!239820 (ite c!540888 call!232870 call!232873)) (ite c!540888 call!232873 call!232870))))))

(assert (= (and d!884668 c!541575) b!3219980))

(assert (= (and d!884668 (not c!541575)) b!3219981))

(assert (= (and d!884668 res!1310806) b!3219982))

(assert (= (and b!3219982 res!1310807) b!3219983))

(declare-fun m!3496425 () Bool)

(assert (=> b!3219982 m!3496425))

(declare-fun m!3496427 () Bool)

(assert (=> b!3219982 m!3496427))

(declare-fun m!3496429 () Bool)

(assert (=> b!3219982 m!3496429))

(declare-fun m!3496431 () Bool)

(assert (=> d!884668 m!3496431))

(declare-fun m!3496433 () Bool)

(assert (=> d!884668 m!3496433))

(declare-fun m!3496435 () Bool)

(assert (=> d!884668 m!3496435))

(declare-fun m!3496437 () Bool)

(assert (=> b!3219981 m!3496437))

(assert (=> bm!232867 d!884668))

(declare-fun d!884670 () Bool)

(assert (=> d!884670 (= (inv!49072 (tag!5760 (rule!7682 (h!41627 (t!239822 tokens!494))))) (= (mod (str.len (value!169514 (tag!5760 (rule!7682 (h!41627 (t!239822 tokens!494)))))) 2) 0))))

(assert (=> b!3217773 d!884670))

(declare-fun d!884672 () Bool)

(declare-fun res!1310808 () Bool)

(declare-fun e!2007608 () Bool)

(assert (=> d!884672 (=> (not res!1310808) (not e!2007608))))

(assert (=> d!884672 (= res!1310808 (semiInverseModEq!2158 (toChars!7181 (transformation!5230 (rule!7682 (h!41627 (t!239822 tokens!494))))) (toValue!7322 (transformation!5230 (rule!7682 (h!41627 (t!239822 tokens!494)))))))))

(assert (=> d!884672 (= (inv!49075 (transformation!5230 (rule!7682 (h!41627 (t!239822 tokens!494))))) e!2007608)))

(declare-fun b!3219984 () Bool)

(assert (=> b!3219984 (= e!2007608 (equivClasses!2057 (toChars!7181 (transformation!5230 (rule!7682 (h!41627 (t!239822 tokens!494))))) (toValue!7322 (transformation!5230 (rule!7682 (h!41627 (t!239822 tokens!494)))))))))

(assert (= (and d!884672 res!1310808) b!3219984))

(declare-fun m!3496441 () Bool)

(assert (=> d!884672 m!3496441))

(declare-fun m!3496445 () Bool)

(assert (=> b!3219984 m!3496445))

(assert (=> b!3217773 d!884672))

(declare-fun d!884674 () Bool)

(declare-fun lt!1090295 () Token!9826)

(assert (=> d!884674 (= lt!1090295 (apply!8223 (list!12890 (_1!20945 lt!1089021)) 0))))

(assert (=> d!884674 (= lt!1090295 (apply!8225 (c!540718 (_1!20945 lt!1089021)) 0))))

(declare-fun e!2007609 () Bool)

(assert (=> d!884674 e!2007609))

(declare-fun res!1310809 () Bool)

(assert (=> d!884674 (=> (not res!1310809) (not e!2007609))))

(assert (=> d!884674 (= res!1310809 (<= 0 0))))

(assert (=> d!884674 (= (apply!8222 (_1!20945 lt!1089021) 0) lt!1090295)))

(declare-fun b!3219985 () Bool)

(assert (=> b!3219985 (= e!2007609 (< 0 (size!27295 (_1!20945 lt!1089021))))))

(assert (= (and d!884674 res!1310809) b!3219985))

(declare-fun m!3496451 () Bool)

(assert (=> d!884674 m!3496451))

(assert (=> d!884674 m!3496451))

(declare-fun m!3496453 () Bool)

(assert (=> d!884674 m!3496453))

(declare-fun m!3496455 () Bool)

(assert (=> d!884674 m!3496455))

(assert (=> b!3219985 m!3491693))

(assert (=> b!3217531 d!884674))

(assert (=> b!3217154 d!883368))

(assert (=> b!3217154 d!883162))

(declare-fun d!884678 () Bool)

(declare-fun lt!1090297 () Bool)

(assert (=> d!884678 (= lt!1090297 (select (content!4904 rules!2135) (rule!7682 (_1!20946 (get!11534 lt!1088911)))))))

(declare-fun e!2007616 () Bool)

(assert (=> d!884678 (= lt!1090297 e!2007616)))

(declare-fun res!1310811 () Bool)

(assert (=> d!884678 (=> (not res!1310811) (not e!2007616))))

(assert (=> d!884678 (= res!1310811 ((_ is Cons!36206) rules!2135))))

(assert (=> d!884678 (= (contains!6483 rules!2135 (rule!7682 (_1!20946 (get!11534 lt!1088911)))) lt!1090297)))

(declare-fun b!3219996 () Bool)

(declare-fun e!2007615 () Bool)

(assert (=> b!3219996 (= e!2007616 e!2007615)))

(declare-fun res!1310810 () Bool)

(assert (=> b!3219996 (=> res!1310810 e!2007615)))

(assert (=> b!3219996 (= res!1310810 (= (h!41626 rules!2135) (rule!7682 (_1!20946 (get!11534 lt!1088911)))))))

(declare-fun b!3219997 () Bool)

(assert (=> b!3219997 (= e!2007615 (contains!6483 (t!239821 rules!2135) (rule!7682 (_1!20946 (get!11534 lt!1088911)))))))

(assert (= (and d!884678 res!1310811) b!3219996))

(assert (= (and b!3219996 (not res!1310810)) b!3219997))

(assert (=> d!884678 m!3494185))

(declare-fun m!3496457 () Bool)

(assert (=> d!884678 m!3496457))

(declare-fun m!3496459 () Bool)

(assert (=> b!3219997 m!3496459))

(assert (=> b!3217206 d!884678))

(assert (=> b!3217206 d!883394))

(assert (=> d!883174 d!882816))

(assert (=> d!883174 d!883198))

(assert (=> d!883174 d!882812))

(declare-fun d!884680 () Bool)

(assert (=> d!884680 (= (++!8698 (++!8698 lt!1088698 lt!1088705) lt!1088710) (++!8698 lt!1088698 (++!8698 lt!1088705 lt!1088710)))))

(assert (=> d!884680 true))

(declare-fun _$52!1593 () Unit!50722)

(assert (=> d!884680 (= (choose!18794 lt!1088698 lt!1088705 lt!1088710) _$52!1593)))

(declare-fun bs!542576 () Bool)

(assert (= bs!542576 d!884680))

(assert (=> bs!542576 m!3490453))

(assert (=> bs!542576 m!3490453))

(assert (=> bs!542576 m!3490455))

(assert (=> bs!542576 m!3490487))

(assert (=> bs!542576 m!3490487))

(assert (=> bs!542576 m!3492003))

(assert (=> d!883174 d!884680))

(declare-fun b!3220008 () Bool)

(declare-fun res!1310817 () Bool)

(declare-fun e!2007621 () Bool)

(assert (=> b!3220008 (=> (not res!1310817) (not e!2007621))))

(declare-fun lt!1090300 () List!36329)

(assert (=> b!3220008 (= res!1310817 (= (size!27294 lt!1090300) (+ (size!27294 lt!1088698) (size!27294 (++!8698 lt!1088705 lt!1088710)))))))

(declare-fun b!3220009 () Bool)

(assert (=> b!3220009 (= e!2007621 (or (not (= (++!8698 lt!1088705 lt!1088710) Nil!36205)) (= lt!1090300 lt!1088698)))))

(declare-fun d!884686 () Bool)

(assert (=> d!884686 e!2007621))

(declare-fun res!1310816 () Bool)

(assert (=> d!884686 (=> (not res!1310816) (not e!2007621))))

(assert (=> d!884686 (= res!1310816 (= (content!4899 lt!1090300) ((_ map or) (content!4899 lt!1088698) (content!4899 (++!8698 lt!1088705 lt!1088710)))))))

(declare-fun e!2007622 () List!36329)

(assert (=> d!884686 (= lt!1090300 e!2007622)))

(declare-fun c!541583 () Bool)

(assert (=> d!884686 (= c!541583 ((_ is Nil!36205) lt!1088698))))

(assert (=> d!884686 (= (++!8698 lt!1088698 (++!8698 lt!1088705 lt!1088710)) lt!1090300)))

(declare-fun b!3220006 () Bool)

(assert (=> b!3220006 (= e!2007622 (++!8698 lt!1088705 lt!1088710))))

(declare-fun b!3220007 () Bool)

(assert (=> b!3220007 (= e!2007622 (Cons!36205 (h!41625 lt!1088698) (++!8698 (t!239820 lt!1088698) (++!8698 lt!1088705 lt!1088710))))))

(assert (= (and d!884686 c!541583) b!3220006))

(assert (= (and d!884686 (not c!541583)) b!3220007))

(assert (= (and d!884686 res!1310816) b!3220008))

(assert (= (and b!3220008 res!1310817) b!3220009))

(declare-fun m!3496489 () Bool)

(assert (=> b!3220008 m!3496489))

(assert (=> b!3220008 m!3490403))

(assert (=> b!3220008 m!3490487))

(declare-fun m!3496491 () Bool)

(assert (=> b!3220008 m!3496491))

(declare-fun m!3496493 () Bool)

(assert (=> d!884686 m!3496493))

(assert (=> d!884686 m!3490581))

(assert (=> d!884686 m!3490487))

(declare-fun m!3496495 () Bool)

(assert (=> d!884686 m!3496495))

(assert (=> b!3220007 m!3490487))

(declare-fun m!3496497 () Bool)

(assert (=> b!3220007 m!3496497))

(assert (=> d!883174 d!884686))

(declare-fun lt!1090302 () Bool)

(declare-fun d!884692 () Bool)

(assert (=> d!884692 (= lt!1090302 (isEmpty!20308 (list!12887 (_2!20945 (lex!2149 thiss!18206 rules!2135 (print!1884 thiss!18206 (singletonSeq!2326 separatorToken!241)))))))))

(assert (=> d!884692 (= lt!1090302 (isEmpty!20310 (c!540717 (_2!20945 (lex!2149 thiss!18206 rules!2135 (print!1884 thiss!18206 (singletonSeq!2326 separatorToken!241)))))))))

(assert (=> d!884692 (= (isEmpty!20304 (_2!20945 (lex!2149 thiss!18206 rules!2135 (print!1884 thiss!18206 (singletonSeq!2326 separatorToken!241))))) lt!1090302)))

(declare-fun bs!542577 () Bool)

(assert (= bs!542577 d!884692))

(declare-fun m!3496501 () Bool)

(assert (=> bs!542577 m!3496501))

(assert (=> bs!542577 m!3496501))

(declare-fun m!3496503 () Bool)

(assert (=> bs!542577 m!3496503))

(declare-fun m!3496507 () Bool)

(assert (=> bs!542577 m!3496507))

(assert (=> b!3217148 d!884692))

(assert (=> b!3217148 d!883574))

(assert (=> b!3217148 d!883572))

(assert (=> b!3217148 d!883112))

(assert (=> b!3217544 d!883524))

(declare-fun d!884696 () Bool)

(declare-fun lt!1090305 () Int)

(assert (=> d!884696 (>= lt!1090305 0)))

(declare-fun e!2007627 () Int)

(assert (=> d!884696 (= lt!1090305 e!2007627)))

(declare-fun c!541587 () Bool)

(assert (=> d!884696 (= c!541587 ((_ is Nil!36205) (originalCharacters!5944 (_1!20946 (get!11534 lt!1089033)))))))

(assert (=> d!884696 (= (size!27294 (originalCharacters!5944 (_1!20946 (get!11534 lt!1089033)))) lt!1090305)))

(declare-fun b!3220018 () Bool)

(assert (=> b!3220018 (= e!2007627 0)))

(declare-fun b!3220019 () Bool)

(assert (=> b!3220019 (= e!2007627 (+ 1 (size!27294 (t!239820 (originalCharacters!5944 (_1!20946 (get!11534 lt!1089033)))))))))

(assert (= (and d!884696 c!541587) b!3220018))

(assert (= (and d!884696 (not c!541587)) b!3220019))

(declare-fun m!3496509 () Bool)

(assert (=> b!3220019 m!3496509))

(assert (=> b!3217544 d!884696))

(declare-fun d!884700 () Bool)

(declare-fun lt!1090306 () Int)

(assert (=> d!884700 (>= lt!1090306 0)))

(declare-fun e!2007628 () Int)

(assert (=> d!884700 (= lt!1090306 e!2007628)))

(declare-fun c!541588 () Bool)

(assert (=> d!884700 (= c!541588 ((_ is Nil!36205) lt!1089092))))

(assert (=> d!884700 (= (size!27294 lt!1089092) lt!1090306)))

(declare-fun b!3220020 () Bool)

(assert (=> b!3220020 (= e!2007628 0)))

(declare-fun b!3220021 () Bool)

(assert (=> b!3220021 (= e!2007628 (+ 1 (size!27294 (t!239820 lt!1089092))))))

(assert (= (and d!884700 c!541588) b!3220020))

(assert (= (and d!884700 (not c!541588)) b!3220021))

(declare-fun m!3496519 () Bool)

(assert (=> b!3220021 m!3496519))

(assert (=> b!3217726 d!884700))

(assert (=> b!3217726 d!882920))

(assert (=> b!3217726 d!883756))

(assert (=> d!882852 d!884196))

(assert (=> d!882852 d!884650))

(assert (=> bs!542301 d!883098))

(assert (=> b!3217563 d!884304))

(declare-fun b!3220025 () Bool)

(declare-fun e!2007630 () List!36329)

(assert (=> b!3220025 (= e!2007630 (++!8698 (list!12889 (left!28160 (c!540717 (charsOf!3246 (h!41627 tokens!494))))) (list!12889 (right!28490 (c!540717 (charsOf!3246 (h!41627 tokens!494)))))))))

(declare-fun b!3220024 () Bool)

(assert (=> b!3220024 (= e!2007630 (list!12894 (xs!13953 (c!540717 (charsOf!3246 (h!41627 tokens!494))))))))

(declare-fun b!3220023 () Bool)

(declare-fun e!2007629 () List!36329)

(assert (=> b!3220023 (= e!2007629 e!2007630)))

(declare-fun c!541590 () Bool)

(assert (=> b!3220023 (= c!541590 ((_ is Leaf!17061) (c!540717 (charsOf!3246 (h!41627 tokens!494)))))))

(declare-fun d!884704 () Bool)

(declare-fun c!541589 () Bool)

(assert (=> d!884704 (= c!541589 ((_ is Empty!10835) (c!540717 (charsOf!3246 (h!41627 tokens!494)))))))

(assert (=> d!884704 (= (list!12889 (c!540717 (charsOf!3246 (h!41627 tokens!494)))) e!2007629)))

(declare-fun b!3220022 () Bool)

(assert (=> b!3220022 (= e!2007629 Nil!36205)))

(assert (= (and d!884704 c!541589) b!3220022))

(assert (= (and d!884704 (not c!541589)) b!3220023))

(assert (= (and b!3220023 c!541590) b!3220024))

(assert (= (and b!3220023 (not c!541590)) b!3220025))

(declare-fun m!3496523 () Bool)

(assert (=> b!3220025 m!3496523))

(declare-fun m!3496525 () Bool)

(assert (=> b!3220025 m!3496525))

(assert (=> b!3220025 m!3496523))

(assert (=> b!3220025 m!3496525))

(declare-fun m!3496527 () Bool)

(assert (=> b!3220025 m!3496527))

(declare-fun m!3496529 () Bool)

(assert (=> b!3220024 m!3496529))

(assert (=> d!882910 d!884704))

(assert (=> b!3217045 d!884042))

(assert (=> b!3217045 d!883776))

(assert (=> d!883098 d!884236))

(assert (=> d!883098 d!884244))

(declare-fun d!884706 () Bool)

(assert (=> d!884706 (= (list!12890 (_1!20945 (lex!2149 thiss!18206 rules!2135 (print!1884 thiss!18206 (singletonSeq!2326 (h!41627 (t!239822 tokens!494))))))) (list!12893 (c!540718 (_1!20945 (lex!2149 thiss!18206 rules!2135 (print!1884 thiss!18206 (singletonSeq!2326 (h!41627 (t!239822 tokens!494)))))))))))

(declare-fun bs!542578 () Bool)

(assert (= bs!542578 d!884706))

(declare-fun m!3496531 () Bool)

(assert (=> bs!542578 m!3496531))

(assert (=> d!883098 d!884706))

(declare-fun d!884708 () Bool)

(declare-fun lt!1090307 () Int)

(assert (=> d!884708 (= lt!1090307 (size!27299 (list!12890 (_1!20945 lt!1089021))))))

(assert (=> d!884708 (= lt!1090307 (size!27300 (c!540718 (_1!20945 lt!1089021))))))

(assert (=> d!884708 (= (size!27295 (_1!20945 lt!1089021)) lt!1090307)))

(declare-fun bs!542579 () Bool)

(assert (= bs!542579 d!884708))

(assert (=> bs!542579 m!3496451))

(assert (=> bs!542579 m!3496451))

(declare-fun m!3496533 () Bool)

(assert (=> bs!542579 m!3496533))

(declare-fun m!3496535 () Bool)

(assert (=> bs!542579 m!3496535))

(assert (=> d!883098 d!884708))

(assert (=> d!883098 d!883138))

(assert (=> d!883098 d!883176))

(declare-fun d!884710 () Bool)

(assert (=> d!884710 (= (list!12890 (singletonSeq!2326 (h!41627 (t!239822 tokens!494)))) (list!12893 (c!540718 (singletonSeq!2326 (h!41627 (t!239822 tokens!494))))))))

(declare-fun bs!542580 () Bool)

(assert (= bs!542580 d!884710))

(declare-fun m!3496537 () Bool)

(assert (=> bs!542580 m!3496537))

(assert (=> d!883098 d!884710))

(declare-fun d!884712 () Bool)

(assert (=> d!884712 (= (list!12887 lt!1089029) (list!12889 (c!540717 lt!1089029)))))

(declare-fun bs!542581 () Bool)

(assert (= bs!542581 d!884712))

(declare-fun m!3496539 () Bool)

(assert (=> bs!542581 m!3496539))

(assert (=> d!883106 d!884712))

(declare-fun d!884714 () Bool)

(assert (=> d!884714 (= (dropList!1081 lt!1088703 0) (drop!1864 (list!12893 (c!540718 lt!1088703)) 0))))

(declare-fun bs!542582 () Bool)

(assert (= bs!542582 d!884714))

(assert (=> bs!542582 m!3492937))

(assert (=> bs!542582 m!3492937))

(declare-fun m!3496541 () Bool)

(assert (=> bs!542582 m!3496541))

(assert (=> d!883106 d!884714))

(declare-fun d!884716 () Bool)

(declare-fun lt!1090308 () List!36329)

(assert (=> d!884716 (= lt!1090308 (++!8698 (list!12887 (BalanceConc!21285 Empty!10835)) (printList!1369 thiss!18206 (dropList!1081 lt!1088703 0))))))

(declare-fun e!2007631 () List!36329)

(assert (=> d!884716 (= lt!1090308 e!2007631)))

(declare-fun c!541591 () Bool)

(assert (=> d!884716 (= c!541591 ((_ is Cons!36207) (dropList!1081 lt!1088703 0)))))

(assert (=> d!884716 (= (printListTailRec!564 thiss!18206 (dropList!1081 lt!1088703 0) (list!12887 (BalanceConc!21285 Empty!10835))) lt!1090308)))

(declare-fun b!3220026 () Bool)

(assert (=> b!3220026 (= e!2007631 (printListTailRec!564 thiss!18206 (t!239822 (dropList!1081 lt!1088703 0)) (++!8698 (list!12887 (BalanceConc!21285 Empty!10835)) (list!12887 (charsOf!3246 (h!41627 (dropList!1081 lt!1088703 0)))))))))

(declare-fun lt!1090311 () List!36329)

(assert (=> b!3220026 (= lt!1090311 (list!12887 (charsOf!3246 (h!41627 (dropList!1081 lt!1088703 0)))))))

(declare-fun lt!1090312 () List!36329)

(assert (=> b!3220026 (= lt!1090312 (printList!1369 thiss!18206 (t!239822 (dropList!1081 lt!1088703 0))))))

(declare-fun lt!1090309 () Unit!50722)

(assert (=> b!3220026 (= lt!1090309 (lemmaConcatAssociativity!1756 (list!12887 (BalanceConc!21285 Empty!10835)) lt!1090311 lt!1090312))))

(assert (=> b!3220026 (= (++!8698 (++!8698 (list!12887 (BalanceConc!21285 Empty!10835)) lt!1090311) lt!1090312) (++!8698 (list!12887 (BalanceConc!21285 Empty!10835)) (++!8698 lt!1090311 lt!1090312)))))

(declare-fun lt!1090310 () Unit!50722)

(assert (=> b!3220026 (= lt!1090310 lt!1090309)))

(declare-fun b!3220027 () Bool)

(assert (=> b!3220027 (= e!2007631 (list!12887 (BalanceConc!21285 Empty!10835)))))

(assert (= (and d!884716 c!541591) b!3220026))

(assert (= (and d!884716 (not c!541591)) b!3220027))

(assert (=> d!884716 m!3491715))

(declare-fun m!3496543 () Bool)

(assert (=> d!884716 m!3496543))

(assert (=> d!884716 m!3490675))

(assert (=> d!884716 m!3496543))

(declare-fun m!3496547 () Bool)

(assert (=> d!884716 m!3496547))

(declare-fun m!3496549 () Bool)

(assert (=> b!3220026 m!3496549))

(declare-fun m!3496551 () Bool)

(assert (=> b!3220026 m!3496551))

(declare-fun m!3496553 () Bool)

(assert (=> b!3220026 m!3496553))

(declare-fun m!3496555 () Bool)

(assert (=> b!3220026 m!3496555))

(declare-fun m!3496557 () Bool)

(assert (=> b!3220026 m!3496557))

(declare-fun m!3496559 () Bool)

(assert (=> b!3220026 m!3496559))

(declare-fun m!3496561 () Bool)

(assert (=> b!3220026 m!3496561))

(assert (=> b!3220026 m!3490675))

(declare-fun m!3496563 () Bool)

(assert (=> b!3220026 m!3496563))

(declare-fun m!3496565 () Bool)

(assert (=> b!3220026 m!3496565))

(assert (=> b!3220026 m!3496563))

(assert (=> b!3220026 m!3496549))

(assert (=> b!3220026 m!3490675))

(assert (=> b!3220026 m!3496557))

(assert (=> b!3220026 m!3490675))

(assert (=> b!3220026 m!3496551))

(assert (=> b!3220026 m!3496553))

(assert (=> b!3220026 m!3490675))

(declare-fun m!3496567 () Bool)

(assert (=> b!3220026 m!3496567))

(assert (=> d!883106 d!884716))

(assert (=> d!883106 d!883866))

(assert (=> d!883106 d!883950))

(declare-fun b!3220028 () Bool)

(declare-fun e!2007636 () Bool)

(declare-fun lt!1090313 () Bool)

(assert (=> b!3220028 (= e!2007636 (not lt!1090313))))

(declare-fun b!3220029 () Bool)

(declare-fun e!2007634 () Bool)

(declare-fun e!2007638 () Bool)

(assert (=> b!3220029 (= e!2007634 e!2007638)))

(declare-fun res!1310822 () Bool)

(assert (=> b!3220029 (=> res!1310822 e!2007638)))

(declare-fun call!233151 () Bool)

(assert (=> b!3220029 (= res!1310822 call!233151)))

(declare-fun b!3220030 () Bool)

(declare-fun res!1310827 () Bool)

(declare-fun e!2007637 () Bool)

(assert (=> b!3220030 (=> (not res!1310827) (not e!2007637))))

(assert (=> b!3220030 (= res!1310827 (isEmpty!20308 (tail!5218 (_1!20949 (findLongestMatchInner!835 (regex!5230 (rule!7682 (h!41627 tokens!494))) Nil!36205 (size!27294 Nil!36205) lt!1088698 lt!1088698 (size!27294 lt!1088698))))))))

(declare-fun b!3220031 () Bool)

(assert (=> b!3220031 (= e!2007637 (= (head!7053 (_1!20949 (findLongestMatchInner!835 (regex!5230 (rule!7682 (h!41627 tokens!494))) Nil!36205 (size!27294 Nil!36205) lt!1088698 lt!1088698 (size!27294 lt!1088698)))) (c!540716 (regex!5230 (rule!7682 (h!41627 tokens!494))))))))

(declare-fun b!3220032 () Bool)

(declare-fun res!1310823 () Bool)

(declare-fun e!2007635 () Bool)

(assert (=> b!3220032 (=> res!1310823 e!2007635)))

(assert (=> b!3220032 (= res!1310823 e!2007637)))

(declare-fun res!1310820 () Bool)

(assert (=> b!3220032 (=> (not res!1310820) (not e!2007637))))

(assert (=> b!3220032 (= res!1310820 lt!1090313)))

(declare-fun b!3220033 () Bool)

(assert (=> b!3220033 (= e!2007635 e!2007634)))

(declare-fun res!1310824 () Bool)

(assert (=> b!3220033 (=> (not res!1310824) (not e!2007634))))

(assert (=> b!3220033 (= res!1310824 (not lt!1090313))))

(declare-fun b!3220035 () Bool)

(declare-fun e!2007639 () Bool)

(assert (=> b!3220035 (= e!2007639 (= lt!1090313 call!233151))))

(declare-fun bm!233146 () Bool)

(assert (=> bm!233146 (= call!233151 (isEmpty!20308 (_1!20949 (findLongestMatchInner!835 (regex!5230 (rule!7682 (h!41627 tokens!494))) Nil!36205 (size!27294 Nil!36205) lt!1088698 lt!1088698 (size!27294 lt!1088698)))))))

(declare-fun b!3220036 () Bool)

(assert (=> b!3220036 (= e!2007638 (not (= (head!7053 (_1!20949 (findLongestMatchInner!835 (regex!5230 (rule!7682 (h!41627 tokens!494))) Nil!36205 (size!27294 Nil!36205) lt!1088698 lt!1088698 (size!27294 lt!1088698)))) (c!540716 (regex!5230 (rule!7682 (h!41627 tokens!494)))))))))

(declare-fun b!3220037 () Bool)

(declare-fun res!1310821 () Bool)

(assert (=> b!3220037 (=> res!1310821 e!2007638)))

(assert (=> b!3220037 (= res!1310821 (not (isEmpty!20308 (tail!5218 (_1!20949 (findLongestMatchInner!835 (regex!5230 (rule!7682 (h!41627 tokens!494))) Nil!36205 (size!27294 Nil!36205) lt!1088698 lt!1088698 (size!27294 lt!1088698)))))))))

(declare-fun b!3220038 () Bool)

(declare-fun e!2007633 () Bool)

(assert (=> b!3220038 (= e!2007633 (matchR!4623 (derivativeStep!2954 (regex!5230 (rule!7682 (h!41627 tokens!494))) (head!7053 (_1!20949 (findLongestMatchInner!835 (regex!5230 (rule!7682 (h!41627 tokens!494))) Nil!36205 (size!27294 Nil!36205) lt!1088698 lt!1088698 (size!27294 lt!1088698))))) (tail!5218 (_1!20949 (findLongestMatchInner!835 (regex!5230 (rule!7682 (h!41627 tokens!494))) Nil!36205 (size!27294 Nil!36205) lt!1088698 lt!1088698 (size!27294 lt!1088698))))))))

(declare-fun b!3220034 () Bool)

(assert (=> b!3220034 (= e!2007633 (nullable!3401 (regex!5230 (rule!7682 (h!41627 tokens!494)))))))

(declare-fun d!884720 () Bool)

(assert (=> d!884720 e!2007639))

(declare-fun c!541594 () Bool)

(assert (=> d!884720 (= c!541594 ((_ is EmptyExpr!9989) (regex!5230 (rule!7682 (h!41627 tokens!494)))))))

(assert (=> d!884720 (= lt!1090313 e!2007633)))

(declare-fun c!541593 () Bool)

(assert (=> d!884720 (= c!541593 (isEmpty!20308 (_1!20949 (findLongestMatchInner!835 (regex!5230 (rule!7682 (h!41627 tokens!494))) Nil!36205 (size!27294 Nil!36205) lt!1088698 lt!1088698 (size!27294 lt!1088698)))))))

(assert (=> d!884720 (validRegex!4557 (regex!5230 (rule!7682 (h!41627 tokens!494))))))

(assert (=> d!884720 (= (matchR!4623 (regex!5230 (rule!7682 (h!41627 tokens!494))) (_1!20949 (findLongestMatchInner!835 (regex!5230 (rule!7682 (h!41627 tokens!494))) Nil!36205 (size!27294 Nil!36205) lt!1088698 lt!1088698 (size!27294 lt!1088698)))) lt!1090313)))

(declare-fun b!3220039 () Bool)

(declare-fun res!1310826 () Bool)

(assert (=> b!3220039 (=> (not res!1310826) (not e!2007637))))

(assert (=> b!3220039 (= res!1310826 (not call!233151))))

(declare-fun b!3220040 () Bool)

(declare-fun res!1310825 () Bool)

(assert (=> b!3220040 (=> res!1310825 e!2007635)))

(assert (=> b!3220040 (= res!1310825 (not ((_ is ElementMatch!9989) (regex!5230 (rule!7682 (h!41627 tokens!494))))))))

(assert (=> b!3220040 (= e!2007636 e!2007635)))

(declare-fun b!3220041 () Bool)

(assert (=> b!3220041 (= e!2007639 e!2007636)))

(declare-fun c!541592 () Bool)

(assert (=> b!3220041 (= c!541592 ((_ is EmptyLang!9989) (regex!5230 (rule!7682 (h!41627 tokens!494)))))))

(assert (= (and d!884720 c!541593) b!3220034))

(assert (= (and d!884720 (not c!541593)) b!3220038))

(assert (= (and d!884720 c!541594) b!3220035))

(assert (= (and d!884720 (not c!541594)) b!3220041))

(assert (= (and b!3220041 c!541592) b!3220028))

(assert (= (and b!3220041 (not c!541592)) b!3220040))

(assert (= (and b!3220040 (not res!1310825)) b!3220032))

(assert (= (and b!3220032 res!1310820) b!3220039))

(assert (= (and b!3220039 res!1310826) b!3220030))

(assert (= (and b!3220030 res!1310827) b!3220031))

(assert (= (and b!3220032 (not res!1310823)) b!3220033))

(assert (= (and b!3220033 res!1310824) b!3220029))

(assert (= (and b!3220029 (not res!1310822)) b!3220037))

(assert (= (and b!3220037 (not res!1310821)) b!3220036))

(assert (= (or b!3220035 b!3220029 b!3220039) bm!233146))

(assert (=> d!884720 m!3491367))

(assert (=> d!884720 m!3492727))

(declare-fun m!3496579 () Bool)

(assert (=> b!3220037 m!3496579))

(assert (=> b!3220037 m!3496579))

(declare-fun m!3496581 () Bool)

(assert (=> b!3220037 m!3496581))

(declare-fun m!3496583 () Bool)

(assert (=> b!3220031 m!3496583))

(assert (=> b!3220034 m!3492731))

(assert (=> b!3220030 m!3496579))

(assert (=> b!3220030 m!3496579))

(assert (=> b!3220030 m!3496581))

(assert (=> b!3220038 m!3496583))

(assert (=> b!3220038 m!3496583))

(declare-fun m!3496585 () Bool)

(assert (=> b!3220038 m!3496585))

(assert (=> b!3220038 m!3496579))

(assert (=> b!3220038 m!3496585))

(assert (=> b!3220038 m!3496579))

(declare-fun m!3496587 () Bool)

(assert (=> b!3220038 m!3496587))

(assert (=> bm!233146 m!3491367))

(assert (=> b!3220036 m!3496583))

(assert (=> b!3217339 d!884720))

(assert (=> b!3217339 d!883956))

(assert (=> b!3217339 d!883366))

(assert (=> b!3217339 d!883152))

(declare-fun d!884728 () Bool)

(assert (=> d!884728 (= (list!12890 (_1!20945 lt!1089058)) (list!12893 (c!540718 (_1!20945 lt!1089058))))))

(declare-fun bs!542585 () Bool)

(assert (= bs!542585 d!884728))

(declare-fun m!3496595 () Bool)

(assert (=> bs!542585 m!3496595))

(assert (=> b!3217660 d!884728))

(assert (=> b!3217660 d!883462))

(assert (=> b!3217660 d!883464))

(declare-fun d!884732 () Bool)

(assert (=> d!884732 (= (nullable!3401 (regex!5230 (rule!7682 separatorToken!241))) (nullableFct!971 (regex!5230 (rule!7682 separatorToken!241))))))

(declare-fun bs!542586 () Bool)

(assert (= bs!542586 d!884732))

(declare-fun m!3496597 () Bool)

(assert (=> bs!542586 m!3496597))

(assert (=> b!3217716 d!884732))

(declare-fun d!884734 () Bool)

(assert (=> d!884734 (= (inv!17 (value!169515 (h!41627 tokens!494))) (= (charsToBigInt!1 (text!38668 (value!169515 (h!41627 tokens!494)))) (value!169507 (value!169515 (h!41627 tokens!494)))))))

(declare-fun bs!542587 () Bool)

(assert (= bs!542587 d!884734))

(declare-fun m!3496599 () Bool)

(assert (=> bs!542587 m!3496599))

(assert (=> b!3217051 d!884734))

(declare-fun b!3220052 () Bool)

(declare-fun e!2007647 () Bool)

(declare-fun e!2007648 () Bool)

(assert (=> b!3220052 (= e!2007647 e!2007648)))

(declare-fun res!1310833 () Bool)

(assert (=> b!3220052 (=> (not res!1310833) (not e!2007648))))

(declare-fun lt!1090323 () Option!7164)

(assert (=> b!3220052 (= res!1310833 (matchR!4623 (regex!5230 (h!41626 rules!2135)) (list!12887 (charsOf!3246 (_1!20946 (get!11534 lt!1090323))))))))

(declare-fun b!3220053 () Bool)

(declare-fun e!2007649 () Option!7164)

(declare-fun lt!1090321 () tuple2!35630)

(assert (=> b!3220053 (= e!2007649 (Some!7163 (tuple2!35625 (Token!9827 (apply!8221 (transformation!5230 (h!41626 rules!2135)) (seqFromList!3531 (_1!20949 lt!1090321))) (h!41626 rules!2135) (size!27301 (seqFromList!3531 (_1!20949 lt!1090321))) (_1!20949 lt!1090321)) (_2!20949 lt!1090321))))))

(declare-fun lt!1090325 () Unit!50722)

(assert (=> b!3220053 (= lt!1090325 (longestMatchIsAcceptedByMatchOrIsEmpty!808 (regex!5230 (h!41626 rules!2135)) lt!1088678))))

(declare-fun res!1310834 () Bool)

(assert (=> b!3220053 (= res!1310834 (isEmpty!20308 (_1!20949 (findLongestMatchInner!835 (regex!5230 (h!41626 rules!2135)) Nil!36205 (size!27294 Nil!36205) lt!1088678 lt!1088678 (size!27294 lt!1088678)))))))

(declare-fun e!2007646 () Bool)

(assert (=> b!3220053 (=> res!1310834 e!2007646)))

(assert (=> b!3220053 e!2007646))

(declare-fun lt!1090322 () Unit!50722)

(assert (=> b!3220053 (= lt!1090322 lt!1090325)))

(declare-fun lt!1090324 () Unit!50722)

(assert (=> b!3220053 (= lt!1090324 (lemmaSemiInverse!1181 (transformation!5230 (h!41626 rules!2135)) (seqFromList!3531 (_1!20949 lt!1090321))))))

(declare-fun b!3220054 () Bool)

(assert (=> b!3220054 (= e!2007649 None!7163)))

(declare-fun b!3220055 () Bool)

(declare-fun res!1310836 () Bool)

(assert (=> b!3220055 (=> (not res!1310836) (not e!2007648))))

(assert (=> b!3220055 (= res!1310836 (< (size!27294 (_2!20946 (get!11534 lt!1090323))) (size!27294 lt!1088678)))))

(declare-fun b!3220057 () Bool)

(assert (=> b!3220057 (= e!2007648 (= (size!27293 (_1!20946 (get!11534 lt!1090323))) (size!27294 (originalCharacters!5944 (_1!20946 (get!11534 lt!1090323))))))))

(declare-fun b!3220058 () Bool)

(declare-fun res!1310838 () Bool)

(assert (=> b!3220058 (=> (not res!1310838) (not e!2007648))))

(assert (=> b!3220058 (= res!1310838 (= (rule!7682 (_1!20946 (get!11534 lt!1090323))) (h!41626 rules!2135)))))

(declare-fun b!3220059 () Bool)

(declare-fun res!1310835 () Bool)

(assert (=> b!3220059 (=> (not res!1310835) (not e!2007648))))

(assert (=> b!3220059 (= res!1310835 (= (++!8698 (list!12887 (charsOf!3246 (_1!20946 (get!11534 lt!1090323)))) (_2!20946 (get!11534 lt!1090323))) lt!1088678))))

(declare-fun b!3220060 () Bool)

(declare-fun res!1310832 () Bool)

(assert (=> b!3220060 (=> (not res!1310832) (not e!2007648))))

(assert (=> b!3220060 (= res!1310832 (= (value!169515 (_1!20946 (get!11534 lt!1090323))) (apply!8221 (transformation!5230 (rule!7682 (_1!20946 (get!11534 lt!1090323)))) (seqFromList!3531 (originalCharacters!5944 (_1!20946 (get!11534 lt!1090323)))))))))

(declare-fun d!884736 () Bool)

(assert (=> d!884736 e!2007647))

(declare-fun res!1310837 () Bool)

(assert (=> d!884736 (=> res!1310837 e!2007647)))

(assert (=> d!884736 (= res!1310837 (isEmpty!20312 lt!1090323))))

(assert (=> d!884736 (= lt!1090323 e!2007649)))

(declare-fun c!541598 () Bool)

(assert (=> d!884736 (= c!541598 (isEmpty!20308 (_1!20949 lt!1090321)))))

(assert (=> d!884736 (= lt!1090321 (findLongestMatch!750 (regex!5230 (h!41626 rules!2135)) lt!1088678))))

(assert (=> d!884736 (ruleValid!1652 thiss!18206 (h!41626 rules!2135))))

(assert (=> d!884736 (= (maxPrefixOneRule!1598 thiss!18206 (h!41626 rules!2135) lt!1088678) lt!1090323)))

(declare-fun b!3220056 () Bool)

(assert (=> b!3220056 (= e!2007646 (matchR!4623 (regex!5230 (h!41626 rules!2135)) (_1!20949 (findLongestMatchInner!835 (regex!5230 (h!41626 rules!2135)) Nil!36205 (size!27294 Nil!36205) lt!1088678 lt!1088678 (size!27294 lt!1088678)))))))

(assert (= (and d!884736 c!541598) b!3220054))

(assert (= (and d!884736 (not c!541598)) b!3220053))

(assert (= (and b!3220053 (not res!1310834)) b!3220056))

(assert (= (and d!884736 (not res!1310837)) b!3220052))

(assert (= (and b!3220052 res!1310833) b!3220059))

(assert (= (and b!3220059 res!1310835) b!3220055))

(assert (= (and b!3220055 res!1310836) b!3220058))

(assert (= (and b!3220058 res!1310838) b!3220060))

(assert (= (and b!3220060 res!1310832) b!3220057))

(declare-fun m!3496637 () Bool)

(assert (=> d!884736 m!3496637))

(declare-fun m!3496639 () Bool)

(assert (=> d!884736 m!3496639))

(declare-fun m!3496641 () Bool)

(assert (=> d!884736 m!3496641))

(assert (=> d!884736 m!3494579))

(declare-fun m!3496643 () Bool)

(assert (=> b!3220055 m!3496643))

(declare-fun m!3496645 () Bool)

(assert (=> b!3220055 m!3496645))

(assert (=> b!3220055 m!3491069))

(assert (=> b!3220060 m!3496643))

(declare-fun m!3496647 () Bool)

(assert (=> b!3220060 m!3496647))

(assert (=> b!3220060 m!3496647))

(declare-fun m!3496649 () Bool)

(assert (=> b!3220060 m!3496649))

(assert (=> b!3220052 m!3496643))

(declare-fun m!3496651 () Bool)

(assert (=> b!3220052 m!3496651))

(assert (=> b!3220052 m!3496651))

(declare-fun m!3496653 () Bool)

(assert (=> b!3220052 m!3496653))

(assert (=> b!3220052 m!3496653))

(declare-fun m!3496655 () Bool)

(assert (=> b!3220052 m!3496655))

(assert (=> b!3220058 m!3496643))

(assert (=> b!3220053 m!3491355))

(assert (=> b!3220053 m!3491069))

(declare-fun m!3496657 () Bool)

(assert (=> b!3220053 m!3496657))

(declare-fun m!3496659 () Bool)

(assert (=> b!3220053 m!3496659))

(assert (=> b!3220053 m!3491069))

(declare-fun m!3496661 () Bool)

(assert (=> b!3220053 m!3496661))

(assert (=> b!3220053 m!3496659))

(declare-fun m!3496665 () Bool)

(assert (=> b!3220053 m!3496665))

(assert (=> b!3220053 m!3496659))

(declare-fun m!3496671 () Bool)

(assert (=> b!3220053 m!3496671))

(declare-fun m!3496675 () Bool)

(assert (=> b!3220053 m!3496675))

(assert (=> b!3220053 m!3496659))

(declare-fun m!3496677 () Bool)

(assert (=> b!3220053 m!3496677))

(assert (=> b!3220053 m!3491355))

(assert (=> b!3220056 m!3491355))

(assert (=> b!3220056 m!3491069))

(assert (=> b!3220056 m!3491355))

(assert (=> b!3220056 m!3491069))

(assert (=> b!3220056 m!3496657))

(declare-fun m!3496679 () Bool)

(assert (=> b!3220056 m!3496679))

(assert (=> b!3220057 m!3496643))

(declare-fun m!3496681 () Bool)

(assert (=> b!3220057 m!3496681))

(assert (=> b!3220059 m!3496643))

(assert (=> b!3220059 m!3496651))

(assert (=> b!3220059 m!3496651))

(assert (=> b!3220059 m!3496653))

(assert (=> b!3220059 m!3496653))

(declare-fun m!3496687 () Bool)

(assert (=> b!3220059 m!3496687))

(assert (=> bm!232841 d!884736))

(assert (=> b!3217162 d!883474))

(assert (=> b!3217162 d!883118))

(assert (=> b!3217694 d!883114))

(declare-fun bs!542590 () Bool)

(declare-fun d!884746 () Bool)

(assert (= bs!542590 (and d!884746 b!3216793)))

(declare-fun lambda!117707 () Int)

(assert (=> bs!542590 (not (= lambda!117707 lambda!117650))))

(declare-fun bs!542591 () Bool)

(assert (= bs!542591 (and d!884746 b!3216762)))

(assert (=> bs!542591 (= lambda!117707 lambda!117651)))

(declare-fun bs!542592 () Bool)

(assert (= bs!542592 (and d!884746 d!882888)))

(assert (=> bs!542592 (= lambda!117707 lambda!117656)))

(declare-fun b!3220208 () Bool)

(declare-fun e!2007726 () Bool)

(assert (=> b!3220208 (= e!2007726 true)))

(declare-fun b!3220207 () Bool)

(declare-fun e!2007725 () Bool)

(assert (=> b!3220207 (= e!2007725 e!2007726)))

(declare-fun b!3220206 () Bool)

(declare-fun e!2007724 () Bool)

(assert (=> b!3220206 (= e!2007724 e!2007725)))

(assert (=> d!884746 e!2007724))

(assert (= b!3220207 b!3220208))

(assert (= b!3220206 b!3220207))

(assert (= (and d!884746 ((_ is Cons!36206) rules!2135)) b!3220206))

(assert (=> b!3220208 (< (dynLambda!14645 order!18525 (toValue!7322 (transformation!5230 (h!41626 rules!2135)))) (dynLambda!14646 order!18527 lambda!117707))))

(assert (=> b!3220208 (< (dynLambda!14647 order!18529 (toChars!7181 (transformation!5230 (h!41626 rules!2135)))) (dynLambda!14646 order!18527 lambda!117707))))

(assert (=> d!884746 true))

(declare-fun lt!1090337 () Bool)

(assert (=> d!884746 (= lt!1090337 (forall!7406 (list!12890 (seqFromList!3532 tokens!494)) lambda!117707))))

(declare-fun e!2007723 () Bool)

(assert (=> d!884746 (= lt!1090337 e!2007723)))

(declare-fun res!1310855 () Bool)

(assert (=> d!884746 (=> res!1310855 e!2007723)))

(assert (=> d!884746 (= res!1310855 (not ((_ is Cons!36207) (list!12890 (seqFromList!3532 tokens!494)))))))

(assert (=> d!884746 (not (isEmpty!20303 rules!2135))))

(assert (=> d!884746 (= (rulesProduceEachTokenIndividuallyList!1730 thiss!18206 rules!2135 (list!12890 (seqFromList!3532 tokens!494))) lt!1090337)))

(declare-fun b!3220204 () Bool)

(declare-fun e!2007722 () Bool)

(assert (=> b!3220204 (= e!2007723 e!2007722)))

(declare-fun res!1310854 () Bool)

(assert (=> b!3220204 (=> (not res!1310854) (not e!2007722))))

(assert (=> b!3220204 (= res!1310854 (rulesProduceIndividualToken!2311 thiss!18206 rules!2135 (h!41627 (list!12890 (seqFromList!3532 tokens!494)))))))

(declare-fun b!3220205 () Bool)

(assert (=> b!3220205 (= e!2007722 (rulesProduceEachTokenIndividuallyList!1730 thiss!18206 rules!2135 (t!239822 (list!12890 (seqFromList!3532 tokens!494)))))))

(assert (= (and d!884746 (not res!1310855)) b!3220204))

(assert (= (and b!3220204 res!1310854) b!3220205))

(assert (=> d!884746 m!3490909))

(declare-fun m!3496771 () Bool)

(assert (=> d!884746 m!3496771))

(assert (=> d!884746 m!3490517))

(declare-fun m!3496773 () Bool)

(assert (=> b!3220204 m!3496773))

(declare-fun m!3496775 () Bool)

(assert (=> b!3220205 m!3496775))

(assert (=> b!3217132 d!884746))

(assert (=> b!3217132 d!884224))

(assert (=> b!3217038 d!884042))

(assert (=> b!3217038 d!883776))

(declare-fun d!884766 () Bool)

(declare-fun lt!1090338 () Bool)

(assert (=> d!884766 (= lt!1090338 (isEmpty!20316 (list!12890 (_1!20945 lt!1089063))))))

(assert (=> d!884766 (= lt!1090338 (isEmpty!20317 (c!540718 (_1!20945 lt!1089063))))))

(assert (=> d!884766 (= (isEmpty!20305 (_1!20945 lt!1089063)) lt!1090338)))

(declare-fun bs!542593 () Bool)

(assert (= bs!542593 d!884766))

(assert (=> bs!542593 m!3491921))

(assert (=> bs!542593 m!3491921))

(declare-fun m!3496777 () Bool)

(assert (=> bs!542593 m!3496777))

(declare-fun m!3496779 () Bool)

(assert (=> bs!542593 m!3496779))

(assert (=> b!3217673 d!884766))

(declare-fun d!884768 () Bool)

(declare-fun c!541612 () Bool)

(assert (=> d!884768 (= c!541612 ((_ is Nil!36205) (usedCharacters!546 (regex!5230 (rule!7682 (h!41627 (t!239822 tokens!494)))))))))

(declare-fun e!2007727 () (InoxSet C!20164))

(assert (=> d!884768 (= (content!4899 (usedCharacters!546 (regex!5230 (rule!7682 (h!41627 (t!239822 tokens!494)))))) e!2007727)))

(declare-fun b!3220209 () Bool)

(assert (=> b!3220209 (= e!2007727 ((as const (Array C!20164 Bool)) false))))

(declare-fun b!3220210 () Bool)

(assert (=> b!3220210 (= e!2007727 ((_ map or) (store ((as const (Array C!20164 Bool)) false) (h!41625 (usedCharacters!546 (regex!5230 (rule!7682 (h!41627 (t!239822 tokens!494)))))) true) (content!4899 (t!239820 (usedCharacters!546 (regex!5230 (rule!7682 (h!41627 (t!239822 tokens!494)))))))))))

(assert (= (and d!884768 c!541612) b!3220209))

(assert (= (and d!884768 (not c!541612)) b!3220210))

(declare-fun m!3496781 () Bool)

(assert (=> b!3220210 m!3496781))

(assert (=> b!3220210 m!3492631))

(assert (=> d!883144 d!884768))

(declare-fun d!884770 () Bool)

(declare-fun c!541614 () Bool)

(assert (=> d!884770 (= c!541614 ((_ is IntegerValue!16380) (value!169515 (h!41627 (t!239822 tokens!494)))))))

(declare-fun e!2007728 () Bool)

(assert (=> d!884770 (= (inv!21 (value!169515 (h!41627 (t!239822 tokens!494)))) e!2007728)))

(declare-fun b!3220211 () Bool)

(declare-fun e!2007729 () Bool)

(assert (=> b!3220211 (= e!2007729 (inv!15 (value!169515 (h!41627 (t!239822 tokens!494)))))))

(declare-fun b!3220212 () Bool)

(declare-fun e!2007730 () Bool)

(assert (=> b!3220212 (= e!2007730 (inv!17 (value!169515 (h!41627 (t!239822 tokens!494)))))))

(declare-fun b!3220213 () Bool)

(assert (=> b!3220213 (= e!2007728 e!2007730)))

(declare-fun c!541613 () Bool)

(assert (=> b!3220213 (= c!541613 ((_ is IntegerValue!16381) (value!169515 (h!41627 (t!239822 tokens!494)))))))

(declare-fun b!3220214 () Bool)

(assert (=> b!3220214 (= e!2007728 (inv!16 (value!169515 (h!41627 (t!239822 tokens!494)))))))

(declare-fun b!3220215 () Bool)

(declare-fun res!1310856 () Bool)

(assert (=> b!3220215 (=> res!1310856 e!2007729)))

(assert (=> b!3220215 (= res!1310856 (not ((_ is IntegerValue!16382) (value!169515 (h!41627 (t!239822 tokens!494))))))))

(assert (=> b!3220215 (= e!2007730 e!2007729)))

(assert (= (and d!884770 c!541614) b!3220214))

(assert (= (and d!884770 (not c!541614)) b!3220213))

(assert (= (and b!3220213 c!541613) b!3220212))

(assert (= (and b!3220213 (not c!541613)) b!3220215))

(assert (= (and b!3220215 (not res!1310856)) b!3220211))

(declare-fun m!3496783 () Bool)

(assert (=> b!3220211 m!3496783))

(declare-fun m!3496785 () Bool)

(assert (=> b!3220212 m!3496785))

(declare-fun m!3496787 () Bool)

(assert (=> b!3220214 m!3496787))

(assert (=> b!3217772 d!884770))

(declare-fun b!3220224 () Bool)

(declare-fun tp!1014479 () Bool)

(declare-fun tp!1014481 () Bool)

(declare-fun e!2007736 () Bool)

(assert (=> b!3220224 (= e!2007736 (and (inv!49077 (left!28160 (c!540717 (dynLambda!14648 (toChars!7181 (transformation!5230 (rule!7682 (h!41627 tokens!494)))) (value!169515 (h!41627 tokens!494)))))) tp!1014479 (inv!49077 (right!28490 (c!540717 (dynLambda!14648 (toChars!7181 (transformation!5230 (rule!7682 (h!41627 tokens!494)))) (value!169515 (h!41627 tokens!494)))))) tp!1014481))))

(declare-fun b!3220226 () Bool)

(declare-fun e!2007735 () Bool)

(declare-fun tp!1014480 () Bool)

(assert (=> b!3220226 (= e!2007735 tp!1014480)))

(declare-fun b!3220225 () Bool)

(declare-fun inv!49085 (IArray!21675) Bool)

(assert (=> b!3220225 (= e!2007736 (and (inv!49085 (xs!13953 (c!540717 (dynLambda!14648 (toChars!7181 (transformation!5230 (rule!7682 (h!41627 tokens!494)))) (value!169515 (h!41627 tokens!494)))))) e!2007735))))

(assert (=> b!3216940 (= tp!1014222 (and (inv!49077 (c!540717 (dynLambda!14648 (toChars!7181 (transformation!5230 (rule!7682 (h!41627 tokens!494)))) (value!169515 (h!41627 tokens!494))))) e!2007736))))

(assert (= (and b!3216940 ((_ is Node!10835) (c!540717 (dynLambda!14648 (toChars!7181 (transformation!5230 (rule!7682 (h!41627 tokens!494)))) (value!169515 (h!41627 tokens!494)))))) b!3220224))

(assert (= b!3220225 b!3220226))

(assert (= (and b!3216940 ((_ is Leaf!17061) (c!540717 (dynLambda!14648 (toChars!7181 (transformation!5230 (rule!7682 (h!41627 tokens!494)))) (value!169515 (h!41627 tokens!494)))))) b!3220225))

(declare-fun m!3496789 () Bool)

(assert (=> b!3220224 m!3496789))

(declare-fun m!3496791 () Bool)

(assert (=> b!3220224 m!3496791))

(declare-fun m!3496793 () Bool)

(assert (=> b!3220225 m!3496793))

(assert (=> b!3216940 m!3490617))

(declare-fun b!3220229 () Bool)

(declare-fun e!2007739 () Bool)

(assert (=> b!3220229 (= e!2007739 true)))

(declare-fun b!3220228 () Bool)

(declare-fun e!2007738 () Bool)

(assert (=> b!3220228 (= e!2007738 e!2007739)))

(declare-fun b!3220227 () Bool)

(declare-fun e!2007737 () Bool)

(assert (=> b!3220227 (= e!2007737 e!2007738)))

(assert (=> b!3217758 e!2007737))

(assert (= b!3220228 b!3220229))

(assert (= b!3220227 b!3220228))

(assert (= (and b!3217758 ((_ is Cons!36206) (t!239821 (t!239821 rules!2135)))) b!3220227))

(assert (=> b!3220229 (< (dynLambda!14645 order!18525 (toValue!7322 (transformation!5230 (h!41626 (t!239821 (t!239821 rules!2135)))))) (dynLambda!14646 order!18527 lambda!117651))))

(assert (=> b!3220229 (< (dynLambda!14647 order!18529 (toChars!7181 (transformation!5230 (h!41626 (t!239821 (t!239821 rules!2135)))))) (dynLambda!14646 order!18527 lambda!117651))))

(declare-fun tp!1014482 () Bool)

(declare-fun e!2007741 () Bool)

(declare-fun b!3220230 () Bool)

(declare-fun tp!1014484 () Bool)

(assert (=> b!3220230 (= e!2007741 (and (inv!49077 (left!28160 (c!540717 (dynLambda!14648 (toChars!7181 (transformation!5230 (rule!7682 separatorToken!241))) (value!169515 separatorToken!241))))) tp!1014482 (inv!49077 (right!28490 (c!540717 (dynLambda!14648 (toChars!7181 (transformation!5230 (rule!7682 separatorToken!241))) (value!169515 separatorToken!241))))) tp!1014484))))

(declare-fun b!3220232 () Bool)

(declare-fun e!2007740 () Bool)

(declare-fun tp!1014483 () Bool)

(assert (=> b!3220232 (= e!2007740 tp!1014483)))

(declare-fun b!3220231 () Bool)

(assert (=> b!3220231 (= e!2007741 (and (inv!49085 (xs!13953 (c!540717 (dynLambda!14648 (toChars!7181 (transformation!5230 (rule!7682 separatorToken!241))) (value!169515 separatorToken!241))))) e!2007740))))

(assert (=> b!3216841 (= tp!1014221 (and (inv!49077 (c!540717 (dynLambda!14648 (toChars!7181 (transformation!5230 (rule!7682 separatorToken!241))) (value!169515 separatorToken!241)))) e!2007741))))

(assert (= (and b!3216841 ((_ is Node!10835) (c!540717 (dynLambda!14648 (toChars!7181 (transformation!5230 (rule!7682 separatorToken!241))) (value!169515 separatorToken!241))))) b!3220230))

(assert (= b!3220231 b!3220232))

(assert (= (and b!3216841 ((_ is Leaf!17061) (c!540717 (dynLambda!14648 (toChars!7181 (transformation!5230 (rule!7682 separatorToken!241))) (value!169515 separatorToken!241))))) b!3220231))

(declare-fun m!3496795 () Bool)

(assert (=> b!3220230 m!3496795))

(declare-fun m!3496797 () Bool)

(assert (=> b!3220230 m!3496797))

(declare-fun m!3496799 () Bool)

(assert (=> b!3220231 m!3496799))

(assert (=> b!3216841 m!3490531))

(declare-fun b!3220233 () Bool)

(declare-fun e!2007742 () Bool)

(declare-fun tp!1014485 () Bool)

(assert (=> b!3220233 (= e!2007742 (and tp_is_empty!17305 tp!1014485))))

(assert (=> b!3217780 (= tp!1014315 e!2007742)))

(assert (= (and b!3217780 ((_ is Cons!36205) (t!239820 (originalCharacters!5944 (h!41627 tokens!494))))) b!3220233))

(declare-fun b!3220237 () Bool)

(declare-fun e!2007743 () Bool)

(declare-fun tp!1014488 () Bool)

(declare-fun tp!1014489 () Bool)

(assert (=> b!3220237 (= e!2007743 (and tp!1014488 tp!1014489))))

(assert (=> b!3217797 (= tp!1014335 e!2007743)))

(declare-fun b!3220234 () Bool)

(assert (=> b!3220234 (= e!2007743 tp_is_empty!17305)))

(declare-fun b!3220236 () Bool)

(declare-fun tp!1014490 () Bool)

(assert (=> b!3220236 (= e!2007743 tp!1014490)))

(declare-fun b!3220235 () Bool)

(declare-fun tp!1014487 () Bool)

(declare-fun tp!1014486 () Bool)

(assert (=> b!3220235 (= e!2007743 (and tp!1014487 tp!1014486))))

(assert (= (and b!3217797 ((_ is ElementMatch!9989) (reg!10318 (regex!5230 (rule!7682 (h!41627 tokens!494)))))) b!3220234))

(assert (= (and b!3217797 ((_ is Concat!15449) (reg!10318 (regex!5230 (rule!7682 (h!41627 tokens!494)))))) b!3220235))

(assert (= (and b!3217797 ((_ is Star!9989) (reg!10318 (regex!5230 (rule!7682 (h!41627 tokens!494)))))) b!3220236))

(assert (= (and b!3217797 ((_ is Union!9989) (reg!10318 (regex!5230 (rule!7682 (h!41627 tokens!494)))))) b!3220237))

(declare-fun b!3220241 () Bool)

(declare-fun e!2007744 () Bool)

(declare-fun tp!1014493 () Bool)

(declare-fun tp!1014494 () Bool)

(assert (=> b!3220241 (= e!2007744 (and tp!1014493 tp!1014494))))

(assert (=> b!3217796 (= tp!1014332 e!2007744)))

(declare-fun b!3220238 () Bool)

(assert (=> b!3220238 (= e!2007744 tp_is_empty!17305)))

(declare-fun b!3220240 () Bool)

(declare-fun tp!1014495 () Bool)

(assert (=> b!3220240 (= e!2007744 tp!1014495)))

(declare-fun b!3220239 () Bool)

(declare-fun tp!1014492 () Bool)

(declare-fun tp!1014491 () Bool)

(assert (=> b!3220239 (= e!2007744 (and tp!1014492 tp!1014491))))

(assert (= (and b!3217796 ((_ is ElementMatch!9989) (regOne!20490 (regex!5230 (rule!7682 (h!41627 tokens!494)))))) b!3220238))

(assert (= (and b!3217796 ((_ is Concat!15449) (regOne!20490 (regex!5230 (rule!7682 (h!41627 tokens!494)))))) b!3220239))

(assert (= (and b!3217796 ((_ is Star!9989) (regOne!20490 (regex!5230 (rule!7682 (h!41627 tokens!494)))))) b!3220240))

(assert (= (and b!3217796 ((_ is Union!9989) (regOne!20490 (regex!5230 (rule!7682 (h!41627 tokens!494)))))) b!3220241))

(declare-fun b!3220245 () Bool)

(declare-fun e!2007745 () Bool)

(declare-fun tp!1014498 () Bool)

(declare-fun tp!1014499 () Bool)

(assert (=> b!3220245 (= e!2007745 (and tp!1014498 tp!1014499))))

(assert (=> b!3217796 (= tp!1014331 e!2007745)))

(declare-fun b!3220242 () Bool)

(assert (=> b!3220242 (= e!2007745 tp_is_empty!17305)))

(declare-fun b!3220244 () Bool)

(declare-fun tp!1014500 () Bool)

(assert (=> b!3220244 (= e!2007745 tp!1014500)))

(declare-fun b!3220243 () Bool)

(declare-fun tp!1014497 () Bool)

(declare-fun tp!1014496 () Bool)

(assert (=> b!3220243 (= e!2007745 (and tp!1014497 tp!1014496))))

(assert (= (and b!3217796 ((_ is ElementMatch!9989) (regTwo!20490 (regex!5230 (rule!7682 (h!41627 tokens!494)))))) b!3220242))

(assert (= (and b!3217796 ((_ is Concat!15449) (regTwo!20490 (regex!5230 (rule!7682 (h!41627 tokens!494)))))) b!3220243))

(assert (= (and b!3217796 ((_ is Star!9989) (regTwo!20490 (regex!5230 (rule!7682 (h!41627 tokens!494)))))) b!3220244))

(assert (= (and b!3217796 ((_ is Union!9989) (regTwo!20490 (regex!5230 (rule!7682 (h!41627 tokens!494)))))) b!3220245))

(declare-fun b!3220249 () Bool)

(declare-fun e!2007746 () Bool)

(declare-fun tp!1014503 () Bool)

(declare-fun tp!1014504 () Bool)

(assert (=> b!3220249 (= e!2007746 (and tp!1014503 tp!1014504))))

(assert (=> b!3217798 (= tp!1014333 e!2007746)))

(declare-fun b!3220246 () Bool)

(assert (=> b!3220246 (= e!2007746 tp_is_empty!17305)))

(declare-fun b!3220248 () Bool)

(declare-fun tp!1014505 () Bool)

(assert (=> b!3220248 (= e!2007746 tp!1014505)))

(declare-fun b!3220247 () Bool)

(declare-fun tp!1014502 () Bool)

(declare-fun tp!1014501 () Bool)

(assert (=> b!3220247 (= e!2007746 (and tp!1014502 tp!1014501))))

(assert (= (and b!3217798 ((_ is ElementMatch!9989) (regOne!20491 (regex!5230 (rule!7682 (h!41627 tokens!494)))))) b!3220246))

(assert (= (and b!3217798 ((_ is Concat!15449) (regOne!20491 (regex!5230 (rule!7682 (h!41627 tokens!494)))))) b!3220247))

(assert (= (and b!3217798 ((_ is Star!9989) (regOne!20491 (regex!5230 (rule!7682 (h!41627 tokens!494)))))) b!3220248))

(assert (= (and b!3217798 ((_ is Union!9989) (regOne!20491 (regex!5230 (rule!7682 (h!41627 tokens!494)))))) b!3220249))

(declare-fun b!3220253 () Bool)

(declare-fun e!2007747 () Bool)

(declare-fun tp!1014508 () Bool)

(declare-fun tp!1014509 () Bool)

(assert (=> b!3220253 (= e!2007747 (and tp!1014508 tp!1014509))))

(assert (=> b!3217798 (= tp!1014334 e!2007747)))

(declare-fun b!3220250 () Bool)

(assert (=> b!3220250 (= e!2007747 tp_is_empty!17305)))

(declare-fun b!3220252 () Bool)

(declare-fun tp!1014510 () Bool)

(assert (=> b!3220252 (= e!2007747 tp!1014510)))

(declare-fun b!3220251 () Bool)

(declare-fun tp!1014507 () Bool)

(declare-fun tp!1014506 () Bool)

(assert (=> b!3220251 (= e!2007747 (and tp!1014507 tp!1014506))))

(assert (= (and b!3217798 ((_ is ElementMatch!9989) (regTwo!20491 (regex!5230 (rule!7682 (h!41627 tokens!494)))))) b!3220250))

(assert (= (and b!3217798 ((_ is Concat!15449) (regTwo!20491 (regex!5230 (rule!7682 (h!41627 tokens!494)))))) b!3220251))

(assert (= (and b!3217798 ((_ is Star!9989) (regTwo!20491 (regex!5230 (rule!7682 (h!41627 tokens!494)))))) b!3220252))

(assert (= (and b!3217798 ((_ is Union!9989) (regTwo!20491 (regex!5230 (rule!7682 (h!41627 tokens!494)))))) b!3220253))

(declare-fun b!3220257 () Bool)

(declare-fun e!2007748 () Bool)

(declare-fun tp!1014513 () Bool)

(declare-fun tp!1014514 () Bool)

(assert (=> b!3220257 (= e!2007748 (and tp!1014513 tp!1014514))))

(assert (=> b!3217794 (= tp!1014328 e!2007748)))

(declare-fun b!3220254 () Bool)

(assert (=> b!3220254 (= e!2007748 tp_is_empty!17305)))

(declare-fun b!3220256 () Bool)

(declare-fun tp!1014515 () Bool)

(assert (=> b!3220256 (= e!2007748 tp!1014515)))

(declare-fun b!3220255 () Bool)

(declare-fun tp!1014512 () Bool)

(declare-fun tp!1014511 () Bool)

(assert (=> b!3220255 (= e!2007748 (and tp!1014512 tp!1014511))))

(assert (= (and b!3217794 ((_ is ElementMatch!9989) (regOne!20491 (regex!5230 (rule!7682 separatorToken!241))))) b!3220254))

(assert (= (and b!3217794 ((_ is Concat!15449) (regOne!20491 (regex!5230 (rule!7682 separatorToken!241))))) b!3220255))

(assert (= (and b!3217794 ((_ is Star!9989) (regOne!20491 (regex!5230 (rule!7682 separatorToken!241))))) b!3220256))

(assert (= (and b!3217794 ((_ is Union!9989) (regOne!20491 (regex!5230 (rule!7682 separatorToken!241))))) b!3220257))

(declare-fun b!3220261 () Bool)

(declare-fun e!2007749 () Bool)

(declare-fun tp!1014518 () Bool)

(declare-fun tp!1014519 () Bool)

(assert (=> b!3220261 (= e!2007749 (and tp!1014518 tp!1014519))))

(assert (=> b!3217794 (= tp!1014329 e!2007749)))

(declare-fun b!3220258 () Bool)

(assert (=> b!3220258 (= e!2007749 tp_is_empty!17305)))

(declare-fun b!3220260 () Bool)

(declare-fun tp!1014520 () Bool)

(assert (=> b!3220260 (= e!2007749 tp!1014520)))

(declare-fun b!3220259 () Bool)

(declare-fun tp!1014517 () Bool)

(declare-fun tp!1014516 () Bool)

(assert (=> b!3220259 (= e!2007749 (and tp!1014517 tp!1014516))))

(assert (= (and b!3217794 ((_ is ElementMatch!9989) (regTwo!20491 (regex!5230 (rule!7682 separatorToken!241))))) b!3220258))

(assert (= (and b!3217794 ((_ is Concat!15449) (regTwo!20491 (regex!5230 (rule!7682 separatorToken!241))))) b!3220259))

(assert (= (and b!3217794 ((_ is Star!9989) (regTwo!20491 (regex!5230 (rule!7682 separatorToken!241))))) b!3220260))

(assert (= (and b!3217794 ((_ is Union!9989) (regTwo!20491 (regex!5230 (rule!7682 separatorToken!241))))) b!3220261))

(declare-fun b!3220262 () Bool)

(declare-fun tp!1014523 () Bool)

(declare-fun e!2007751 () Bool)

(declare-fun tp!1014521 () Bool)

(assert (=> b!3220262 (= e!2007751 (and (inv!49077 (left!28160 (c!540717 (dynLambda!14648 (toChars!7181 (transformation!5230 (rule!7682 (h!41627 (t!239822 tokens!494))))) (value!169515 (h!41627 (t!239822 tokens!494))))))) tp!1014521 (inv!49077 (right!28490 (c!540717 (dynLambda!14648 (toChars!7181 (transformation!5230 (rule!7682 (h!41627 (t!239822 tokens!494))))) (value!169515 (h!41627 (t!239822 tokens!494))))))) tp!1014523))))

(declare-fun b!3220264 () Bool)

(declare-fun e!2007750 () Bool)

(declare-fun tp!1014522 () Bool)

(assert (=> b!3220264 (= e!2007750 tp!1014522)))

(declare-fun b!3220263 () Bool)

(assert (=> b!3220263 (= e!2007751 (and (inv!49085 (xs!13953 (c!540717 (dynLambda!14648 (toChars!7181 (transformation!5230 (rule!7682 (h!41627 (t!239822 tokens!494))))) (value!169515 (h!41627 (t!239822 tokens!494))))))) e!2007750))))

(assert (=> b!3217746 (= tp!1014284 (and (inv!49077 (c!540717 (dynLambda!14648 (toChars!7181 (transformation!5230 (rule!7682 (h!41627 (t!239822 tokens!494))))) (value!169515 (h!41627 (t!239822 tokens!494)))))) e!2007751))))

(assert (= (and b!3217746 ((_ is Node!10835) (c!540717 (dynLambda!14648 (toChars!7181 (transformation!5230 (rule!7682 (h!41627 (t!239822 tokens!494))))) (value!169515 (h!41627 (t!239822 tokens!494))))))) b!3220262))

(assert (= b!3220263 b!3220264))

(assert (= (and b!3217746 ((_ is Leaf!17061) (c!540717 (dynLambda!14648 (toChars!7181 (transformation!5230 (rule!7682 (h!41627 (t!239822 tokens!494))))) (value!169515 (h!41627 (t!239822 tokens!494))))))) b!3220263))

(declare-fun m!3496801 () Bool)

(assert (=> b!3220262 m!3496801))

(declare-fun m!3496803 () Bool)

(assert (=> b!3220262 m!3496803))

(declare-fun m!3496805 () Bool)

(assert (=> b!3220263 m!3496805))

(assert (=> b!3217746 m!3492099))

(declare-fun b!3220268 () Bool)

(declare-fun e!2007752 () Bool)

(declare-fun tp!1014526 () Bool)

(declare-fun tp!1014527 () Bool)

(assert (=> b!3220268 (= e!2007752 (and tp!1014526 tp!1014527))))

(assert (=> b!3217756 (= tp!1014294 e!2007752)))

(declare-fun b!3220265 () Bool)

(assert (=> b!3220265 (= e!2007752 tp_is_empty!17305)))

(declare-fun b!3220267 () Bool)

(declare-fun tp!1014528 () Bool)

(assert (=> b!3220267 (= e!2007752 tp!1014528)))

(declare-fun b!3220266 () Bool)

(declare-fun tp!1014525 () Bool)

(declare-fun tp!1014524 () Bool)

(assert (=> b!3220266 (= e!2007752 (and tp!1014525 tp!1014524))))

(assert (= (and b!3217756 ((_ is ElementMatch!9989) (regex!5230 (h!41626 (t!239821 rules!2135))))) b!3220265))

(assert (= (and b!3217756 ((_ is Concat!15449) (regex!5230 (h!41626 (t!239821 rules!2135))))) b!3220266))

(assert (= (and b!3217756 ((_ is Star!9989) (regex!5230 (h!41626 (t!239821 rules!2135))))) b!3220267))

(assert (= (and b!3217756 ((_ is Union!9989) (regex!5230 (h!41626 (t!239821 rules!2135))))) b!3220268))

(declare-fun b!3220271 () Bool)

(declare-fun b_free!85573 () Bool)

(declare-fun b_next!86277 () Bool)

(assert (=> b!3220271 (= b_free!85573 (not b_next!86277))))

(declare-fun tb!159251 () Bool)

(declare-fun t!240364 () Bool)

(assert (=> (and b!3220271 (= (toValue!7322 (transformation!5230 (h!41626 (t!239821 (t!239821 rules!2135))))) (toValue!7322 (transformation!5230 (rule!7682 (h!41627 tokens!494))))) t!240364) tb!159251))

(declare-fun result!201676 () Bool)

(assert (= result!201676 result!201408))

(assert (=> d!883952 t!240364))

(declare-fun t!240366 () Bool)

(declare-fun tb!159253 () Bool)

(assert (=> (and b!3220271 (= (toValue!7322 (transformation!5230 (h!41626 (t!239821 (t!239821 rules!2135))))) (toValue!7322 (transformation!5230 (rule!7682 (h!41627 tokens!494))))) t!240366) tb!159253))

(declare-fun result!201678 () Bool)

(assert (= result!201678 result!201200))

(assert (=> d!883122 t!240366))

(declare-fun tb!159255 () Bool)

(declare-fun t!240368 () Bool)

(assert (=> (and b!3220271 (= (toValue!7322 (transformation!5230 (h!41626 (t!239821 (t!239821 rules!2135))))) (toValue!7322 (transformation!5230 (rule!7682 (_1!20946 (get!11534 lt!1088911)))))) t!240368) tb!159255))

(declare-fun result!201680 () Bool)

(assert (= result!201680 result!201308))

(assert (=> d!883608 t!240368))

(declare-fun t!240370 () Bool)

(declare-fun tb!159257 () Bool)

(assert (=> (and b!3220271 (= (toValue!7322 (transformation!5230 (h!41626 (t!239821 (t!239821 rules!2135))))) (toValue!7322 (transformation!5230 (rule!7682 (h!41627 (t!239822 tokens!494)))))) t!240370) tb!159257))

(declare-fun result!201682 () Bool)

(assert (= result!201682 result!201438))

(assert (=> d!884034 t!240370))

(declare-fun tb!159259 () Bool)

(declare-fun t!240372 () Bool)

(assert (=> (and b!3220271 (= (toValue!7322 (transformation!5230 (h!41626 (t!239821 (t!239821 rules!2135))))) (toValue!7322 (transformation!5230 (rule!7682 (h!41627 tokens!494))))) t!240372) tb!159259))

(declare-fun result!201684 () Bool)

(assert (= result!201684 result!201378))

(assert (=> d!883816 t!240372))

(assert (=> d!883958 t!240364))

(assert (=> d!884036 t!240370))

(declare-fun t!240374 () Bool)

(declare-fun tb!159261 () Bool)

(assert (=> (and b!3220271 (= (toValue!7322 (transformation!5230 (h!41626 (t!239821 (t!239821 rules!2135))))) (toValue!7322 (transformation!5230 (rule!7682 (h!41627 (t!239822 tokens!494)))))) t!240374) tb!159261))

(declare-fun result!201686 () Bool)

(assert (= result!201686 result!201192))

(assert (=> d!883102 t!240374))

(declare-fun t!240376 () Bool)

(declare-fun tb!159263 () Bool)

(assert (=> (and b!3220271 (= (toValue!7322 (transformation!5230 (h!41626 (t!239821 (t!239821 rules!2135))))) (toValue!7322 (transformation!5230 (rule!7682 (_1!20946 (get!11534 lt!1089033)))))) t!240376) tb!159263))

(declare-fun result!201688 () Bool)

(assert (= result!201688 result!201548))

(assert (=> d!884518 t!240376))

(declare-fun tb!159265 () Bool)

(declare-fun t!240378 () Bool)

(assert (=> (and b!3220271 (= (toValue!7322 (transformation!5230 (h!41626 (t!239821 (t!239821 rules!2135))))) (toValue!7322 (transformation!5230 (rule!7682 (_1!20946 (get!11534 lt!1088976)))))) t!240378) tb!159265))

(declare-fun result!201690 () Bool)

(assert (= result!201690 result!201428))

(assert (=> d!884016 t!240378))

(declare-fun b_and!215275 () Bool)

(declare-fun tp!1014531 () Bool)

(assert (=> b!3220271 (= tp!1014531 (and (=> t!240366 result!201678) (=> t!240368 result!201680) (=> t!240376 result!201688) (=> t!240370 result!201682) (=> t!240372 result!201684) (=> t!240378 result!201690) (=> t!240374 result!201686) (=> t!240364 result!201676) b_and!215275))))

(declare-fun b_free!85575 () Bool)

(declare-fun b_next!86279 () Bool)

(assert (=> b!3220271 (= b_free!85575 (not b_next!86279))))

(declare-fun t!240380 () Bool)

(declare-fun tb!159267 () Bool)

(assert (=> (and b!3220271 (= (toChars!7181 (transformation!5230 (h!41626 (t!239821 (t!239821 rules!2135))))) (toChars!7181 (transformation!5230 (rule!7682 (h!41627 (t!239822 (t!239822 tokens!494))))))) t!240380) tb!159267))

(declare-fun result!201692 () Bool)

(assert (= result!201692 result!201558))

(assert (=> d!884590 t!240380))

(declare-fun tb!159269 () Bool)

(declare-fun t!240382 () Bool)

(assert (=> (and b!3220271 (= (toChars!7181 (transformation!5230 (h!41626 (t!239821 (t!239821 rules!2135))))) (toChars!7181 (transformation!5230 (rule!7682 separatorToken!241)))) t!240382) tb!159269))

(declare-fun result!201694 () Bool)

(assert (= result!201694 result!201144))

(assert (=> d!883192 t!240382))

(declare-fun tb!159271 () Bool)

(declare-fun t!240384 () Bool)

(assert (=> (and b!3220271 (= (toChars!7181 (transformation!5230 (h!41626 (t!239821 (t!239821 rules!2135))))) (toChars!7181 (transformation!5230 (rule!7682 (apply!8222 lt!1088685 0))))) t!240384) tb!159271))

(declare-fun result!201696 () Bool)

(assert (= result!201696 result!201418))

(assert (=> d!884004 t!240384))

(declare-fun tb!159273 () Bool)

(declare-fun t!240386 () Bool)

(assert (=> (and b!3220271 (= (toChars!7181 (transformation!5230 (h!41626 (t!239821 (t!239821 rules!2135))))) (toChars!7181 (transformation!5230 (rule!7682 (h!41627 (t!239822 tokens!494)))))) t!240386) tb!159273))

(declare-fun result!201698 () Bool)

(assert (= result!201698 result!201448))

(assert (=> d!884036 t!240386))

(declare-fun t!240388 () Bool)

(declare-fun tb!159275 () Bool)

(assert (=> (and b!3220271 (= (toChars!7181 (transformation!5230 (h!41626 (t!239821 (t!239821 rules!2135))))) (toChars!7181 (transformation!5230 (rule!7682 (apply!8222 lt!1088696 0))))) t!240388) tb!159275))

(declare-fun result!201700 () Bool)

(assert (= result!201700 result!201388))

(assert (=> d!883924 t!240388))

(declare-fun t!240390 () Bool)

(declare-fun tb!159277 () Bool)

(assert (=> (and b!3220271 (= (toChars!7181 (transformation!5230 (h!41626 (t!239821 (t!239821 rules!2135))))) (toChars!7181 (transformation!5230 (rule!7682 (h!41627 tokens!494))))) t!240390) tb!159277))

(declare-fun result!201702 () Bool)

(assert (= result!201702 result!201152))

(assert (=> b!3216938 t!240390))

(assert (=> b!3216825 t!240382))

(assert (=> d!882912 t!240390))

(declare-fun tb!159279 () Bool)

(declare-fun t!240392 () Bool)

(assert (=> (and b!3220271 (= (toChars!7181 (transformation!5230 (h!41626 (t!239821 (t!239821 rules!2135))))) (toChars!7181 (transformation!5230 (rule!7682 (_1!20946 (get!11534 lt!1088911)))))) t!240392) tb!159279))

(declare-fun result!201704 () Bool)

(assert (= result!201704 result!201268))

(assert (=> d!883398 t!240392))

(declare-fun t!240394 () Bool)

(declare-fun tb!159281 () Bool)

(assert (=> (and b!3220271 (= (toChars!7181 (transformation!5230 (h!41626 (t!239821 (t!239821 rules!2135))))) (toChars!7181 (transformation!5230 (rule!7682 (apply!8222 lt!1088703 0))))) t!240394) tb!159281))

(declare-fun result!201706 () Bool)

(assert (= result!201706 result!201278))

(assert (=> d!883478 t!240394))

(declare-fun t!240396 () Bool)

(declare-fun tb!159283 () Bool)

(assert (=> (and b!3220271 (= (toChars!7181 (transformation!5230 (h!41626 (t!239821 (t!239821 rules!2135))))) (toChars!7181 (transformation!5230 (rule!7682 (h!41627 (t!239822 tokens!494)))))) t!240396) tb!159283))

(declare-fun result!201708 () Bool)

(assert (= result!201708 result!201234))

(assert (=> d!883208 t!240396))

(declare-fun t!240398 () Bool)

(declare-fun tb!159285 () Bool)

(assert (=> (and b!3220271 (= (toChars!7181 (transformation!5230 (h!41626 (t!239821 (t!239821 rules!2135))))) (toChars!7181 (transformation!5230 (rule!7682 (h!41627 (Cons!36207 (h!41627 tokens!494) Nil!36207)))))) t!240398) tb!159285))

(declare-fun result!201710 () Bool)

(assert (= result!201710 result!201338))

(assert (=> d!883742 t!240398))

(declare-fun t!240400 () Bool)

(declare-fun tb!159287 () Bool)

(assert (=> (and b!3220271 (= (toChars!7181 (transformation!5230 (h!41626 (t!239821 (t!239821 rules!2135))))) (toChars!7181 (transformation!5230 (rule!7682 (h!41627 tokens!494))))) t!240400) tb!159287))

(declare-fun result!201712 () Bool)

(assert (= result!201712 result!201398))

(assert (=> d!883952 t!240400))

(declare-fun tb!159289 () Bool)

(declare-fun t!240402 () Bool)

(assert (=> (and b!3220271 (= (toChars!7181 (transformation!5230 (h!41626 (t!239821 (t!239821 rules!2135))))) (toChars!7181 (transformation!5230 (rule!7682 (_1!20946 (get!11534 lt!1089033)))))) t!240402) tb!159289))

(declare-fun result!201714 () Bool)

(assert (= result!201714 result!201468))

(assert (=> d!884182 t!240402))

(declare-fun t!240404 () Bool)

(declare-fun tb!159291 () Bool)

(assert (=> (and b!3220271 (= (toChars!7181 (transformation!5230 (h!41626 (t!239821 (t!239821 rules!2135))))) (toChars!7181 (transformation!5230 (rule!7682 (_1!20946 (get!11534 lt!1088976)))))) t!240404) tb!159291))

(declare-fun result!201716 () Bool)

(assert (= result!201716 result!201458))

(assert (=> d!884094 t!240404))

(assert (=> b!3218276 t!240396))

(declare-fun b_and!215277 () Bool)

(declare-fun tp!1014532 () Bool)

(assert (=> b!3220271 (= tp!1014532 (and (=> t!240396 result!201708) (=> t!240394 result!201706) (=> t!240382 result!201694) (=> t!240390 result!201702) (=> t!240392 result!201704) (=> t!240380 result!201692) (=> t!240384 result!201696) (=> t!240398 result!201710) (=> t!240386 result!201698) (=> t!240388 result!201700) (=> t!240404 result!201716) (=> t!240402 result!201714) (=> t!240400 result!201712) b_and!215277))))

(declare-fun e!2007754 () Bool)

(assert (=> b!3220271 (= e!2007754 (and tp!1014531 tp!1014532))))

(declare-fun e!2007753 () Bool)

(declare-fun tp!1014530 () Bool)

(declare-fun b!3220270 () Bool)

(assert (=> b!3220270 (= e!2007753 (and tp!1014530 (inv!49072 (tag!5760 (h!41626 (t!239821 (t!239821 rules!2135))))) (inv!49075 (transformation!5230 (h!41626 (t!239821 (t!239821 rules!2135))))) e!2007754))))

(declare-fun b!3220269 () Bool)

(declare-fun e!2007756 () Bool)

(declare-fun tp!1014529 () Bool)

(assert (=> b!3220269 (= e!2007756 (and e!2007753 tp!1014529))))

(assert (=> b!3217755 (= tp!1014293 e!2007756)))

(assert (= b!3220270 b!3220271))

(assert (= b!3220269 b!3220270))

(assert (= (and b!3217755 ((_ is Cons!36206) (t!239821 (t!239821 rules!2135)))) b!3220269))

(declare-fun m!3496807 () Bool)

(assert (=> b!3220270 m!3496807))

(declare-fun m!3496809 () Bool)

(assert (=> b!3220270 m!3496809))

(declare-fun b!3220272 () Bool)

(declare-fun e!2007757 () Bool)

(declare-fun tp!1014533 () Bool)

(assert (=> b!3220272 (= e!2007757 (and tp_is_empty!17305 tp!1014533))))

(assert (=> b!3217779 (= tp!1014314 e!2007757)))

(assert (= (and b!3217779 ((_ is Cons!36205) (t!239820 (originalCharacters!5944 separatorToken!241)))) b!3220272))

(declare-fun b!3220275 () Bool)

(declare-fun e!2007760 () Bool)

(assert (=> b!3220275 (= e!2007760 true)))

(declare-fun b!3220274 () Bool)

(declare-fun e!2007759 () Bool)

(assert (=> b!3220274 (= e!2007759 e!2007760)))

(declare-fun b!3220273 () Bool)

(declare-fun e!2007758 () Bool)

(assert (=> b!3220273 (= e!2007758 e!2007759)))

(assert (=> b!3217133 e!2007758))

(assert (= b!3220274 b!3220275))

(assert (= b!3220273 b!3220274))

(assert (= (and b!3217133 ((_ is Cons!36206) (t!239821 rules!2135))) b!3220273))

(assert (=> b!3220275 (< (dynLambda!14645 order!18525 (toValue!7322 (transformation!5230 (h!41626 (t!239821 rules!2135))))) (dynLambda!14646 order!18527 lambda!117656))))

(assert (=> b!3220275 (< (dynLambda!14647 order!18529 (toChars!7181 (transformation!5230 (h!41626 (t!239821 rules!2135))))) (dynLambda!14646 order!18527 lambda!117656))))

(declare-fun b!3220279 () Bool)

(declare-fun e!2007761 () Bool)

(declare-fun tp!1014536 () Bool)

(declare-fun tp!1014537 () Bool)

(assert (=> b!3220279 (= e!2007761 (and tp!1014536 tp!1014537))))

(assert (=> b!3217800 (= tp!1014337 e!2007761)))

(declare-fun b!3220276 () Bool)

(assert (=> b!3220276 (= e!2007761 tp_is_empty!17305)))

(declare-fun b!3220278 () Bool)

(declare-fun tp!1014538 () Bool)

(assert (=> b!3220278 (= e!2007761 tp!1014538)))

(declare-fun b!3220277 () Bool)

(declare-fun tp!1014535 () Bool)

(declare-fun tp!1014534 () Bool)

(assert (=> b!3220277 (= e!2007761 (and tp!1014535 tp!1014534))))

(assert (= (and b!3217800 ((_ is ElementMatch!9989) (regOne!20490 (regex!5230 (h!41626 rules!2135))))) b!3220276))

(assert (= (and b!3217800 ((_ is Concat!15449) (regOne!20490 (regex!5230 (h!41626 rules!2135))))) b!3220277))

(assert (= (and b!3217800 ((_ is Star!9989) (regOne!20490 (regex!5230 (h!41626 rules!2135))))) b!3220278))

(assert (= (and b!3217800 ((_ is Union!9989) (regOne!20490 (regex!5230 (h!41626 rules!2135))))) b!3220279))

(declare-fun b!3220283 () Bool)

(declare-fun e!2007762 () Bool)

(declare-fun tp!1014541 () Bool)

(declare-fun tp!1014542 () Bool)

(assert (=> b!3220283 (= e!2007762 (and tp!1014541 tp!1014542))))

(assert (=> b!3217800 (= tp!1014336 e!2007762)))

(declare-fun b!3220280 () Bool)

(assert (=> b!3220280 (= e!2007762 tp_is_empty!17305)))

(declare-fun b!3220282 () Bool)

(declare-fun tp!1014543 () Bool)

(assert (=> b!3220282 (= e!2007762 tp!1014543)))

(declare-fun b!3220281 () Bool)

(declare-fun tp!1014540 () Bool)

(declare-fun tp!1014539 () Bool)

(assert (=> b!3220281 (= e!2007762 (and tp!1014540 tp!1014539))))

(assert (= (and b!3217800 ((_ is ElementMatch!9989) (regTwo!20490 (regex!5230 (h!41626 rules!2135))))) b!3220280))

(assert (= (and b!3217800 ((_ is Concat!15449) (regTwo!20490 (regex!5230 (h!41626 rules!2135))))) b!3220281))

(assert (= (and b!3217800 ((_ is Star!9989) (regTwo!20490 (regex!5230 (h!41626 rules!2135))))) b!3220282))

(assert (= (and b!3217800 ((_ is Union!9989) (regTwo!20490 (regex!5230 (h!41626 rules!2135))))) b!3220283))

(declare-fun b!3220287 () Bool)

(declare-fun e!2007763 () Bool)

(declare-fun tp!1014546 () Bool)

(declare-fun tp!1014547 () Bool)

(assert (=> b!3220287 (= e!2007763 (and tp!1014546 tp!1014547))))

(assert (=> b!3217792 (= tp!1014327 e!2007763)))

(declare-fun b!3220284 () Bool)

(assert (=> b!3220284 (= e!2007763 tp_is_empty!17305)))

(declare-fun b!3220286 () Bool)

(declare-fun tp!1014548 () Bool)

(assert (=> b!3220286 (= e!2007763 tp!1014548)))

(declare-fun b!3220285 () Bool)

(declare-fun tp!1014545 () Bool)

(declare-fun tp!1014544 () Bool)

(assert (=> b!3220285 (= e!2007763 (and tp!1014545 tp!1014544))))

(assert (= (and b!3217792 ((_ is ElementMatch!9989) (regOne!20490 (regex!5230 (rule!7682 separatorToken!241))))) b!3220284))

(assert (= (and b!3217792 ((_ is Concat!15449) (regOne!20490 (regex!5230 (rule!7682 separatorToken!241))))) b!3220285))

(assert (= (and b!3217792 ((_ is Star!9989) (regOne!20490 (regex!5230 (rule!7682 separatorToken!241))))) b!3220286))

(assert (= (and b!3217792 ((_ is Union!9989) (regOne!20490 (regex!5230 (rule!7682 separatorToken!241))))) b!3220287))

(declare-fun b!3220291 () Bool)

(declare-fun e!2007764 () Bool)

(declare-fun tp!1014551 () Bool)

(declare-fun tp!1014552 () Bool)

(assert (=> b!3220291 (= e!2007764 (and tp!1014551 tp!1014552))))

(assert (=> b!3217792 (= tp!1014326 e!2007764)))

(declare-fun b!3220288 () Bool)

(assert (=> b!3220288 (= e!2007764 tp_is_empty!17305)))

(declare-fun b!3220290 () Bool)

(declare-fun tp!1014553 () Bool)

(assert (=> b!3220290 (= e!2007764 tp!1014553)))

(declare-fun b!3220289 () Bool)

(declare-fun tp!1014550 () Bool)

(declare-fun tp!1014549 () Bool)

(assert (=> b!3220289 (= e!2007764 (and tp!1014550 tp!1014549))))

(assert (= (and b!3217792 ((_ is ElementMatch!9989) (regTwo!20490 (regex!5230 (rule!7682 separatorToken!241))))) b!3220288))

(assert (= (and b!3217792 ((_ is Concat!15449) (regTwo!20490 (regex!5230 (rule!7682 separatorToken!241))))) b!3220289))

(assert (= (and b!3217792 ((_ is Star!9989) (regTwo!20490 (regex!5230 (rule!7682 separatorToken!241))))) b!3220290))

(assert (= (and b!3217792 ((_ is Union!9989) (regTwo!20490 (regex!5230 (rule!7682 separatorToken!241))))) b!3220291))

(declare-fun b!3220295 () Bool)

(declare-fun e!2007765 () Bool)

(declare-fun tp!1014556 () Bool)

(declare-fun tp!1014557 () Bool)

(assert (=> b!3220295 (= e!2007765 (and tp!1014556 tp!1014557))))

(assert (=> b!3217801 (= tp!1014340 e!2007765)))

(declare-fun b!3220292 () Bool)

(assert (=> b!3220292 (= e!2007765 tp_is_empty!17305)))

(declare-fun b!3220294 () Bool)

(declare-fun tp!1014558 () Bool)

(assert (=> b!3220294 (= e!2007765 tp!1014558)))

(declare-fun b!3220293 () Bool)

(declare-fun tp!1014555 () Bool)

(declare-fun tp!1014554 () Bool)

(assert (=> b!3220293 (= e!2007765 (and tp!1014555 tp!1014554))))

(assert (= (and b!3217801 ((_ is ElementMatch!9989) (reg!10318 (regex!5230 (h!41626 rules!2135))))) b!3220292))

(assert (= (and b!3217801 ((_ is Concat!15449) (reg!10318 (regex!5230 (h!41626 rules!2135))))) b!3220293))

(assert (= (and b!3217801 ((_ is Star!9989) (reg!10318 (regex!5230 (h!41626 rules!2135))))) b!3220294))

(assert (= (and b!3217801 ((_ is Union!9989) (reg!10318 (regex!5230 (h!41626 rules!2135))))) b!3220295))

(declare-fun b!3220299 () Bool)

(declare-fun b_free!85577 () Bool)

(declare-fun b_next!86281 () Bool)

(assert (=> b!3220299 (= b_free!85577 (not b_next!86281))))

(declare-fun t!240406 () Bool)

(declare-fun tb!159293 () Bool)

(assert (=> (and b!3220299 (= (toValue!7322 (transformation!5230 (rule!7682 (h!41627 (t!239822 (t!239822 tokens!494)))))) (toValue!7322 (transformation!5230 (rule!7682 (h!41627 tokens!494))))) t!240406) tb!159293))

(declare-fun result!201718 () Bool)

(assert (= result!201718 result!201408))

(assert (=> d!883952 t!240406))

(declare-fun t!240408 () Bool)

(declare-fun tb!159295 () Bool)

(assert (=> (and b!3220299 (= (toValue!7322 (transformation!5230 (rule!7682 (h!41627 (t!239822 (t!239822 tokens!494)))))) (toValue!7322 (transformation!5230 (rule!7682 (h!41627 tokens!494))))) t!240408) tb!159295))

(declare-fun result!201720 () Bool)

(assert (= result!201720 result!201200))

(assert (=> d!883122 t!240408))

(declare-fun t!240410 () Bool)

(declare-fun tb!159297 () Bool)

(assert (=> (and b!3220299 (= (toValue!7322 (transformation!5230 (rule!7682 (h!41627 (t!239822 (t!239822 tokens!494)))))) (toValue!7322 (transformation!5230 (rule!7682 (_1!20946 (get!11534 lt!1088911)))))) t!240410) tb!159297))

(declare-fun result!201722 () Bool)

(assert (= result!201722 result!201308))

(assert (=> d!883608 t!240410))

(declare-fun t!240412 () Bool)

(declare-fun tb!159299 () Bool)

(assert (=> (and b!3220299 (= (toValue!7322 (transformation!5230 (rule!7682 (h!41627 (t!239822 (t!239822 tokens!494)))))) (toValue!7322 (transformation!5230 (rule!7682 (h!41627 (t!239822 tokens!494)))))) t!240412) tb!159299))

(declare-fun result!201724 () Bool)

(assert (= result!201724 result!201438))

(assert (=> d!884034 t!240412))

(declare-fun t!240414 () Bool)

(declare-fun tb!159301 () Bool)

(assert (=> (and b!3220299 (= (toValue!7322 (transformation!5230 (rule!7682 (h!41627 (t!239822 (t!239822 tokens!494)))))) (toValue!7322 (transformation!5230 (rule!7682 (h!41627 tokens!494))))) t!240414) tb!159301))

(declare-fun result!201726 () Bool)

(assert (= result!201726 result!201378))

(assert (=> d!883816 t!240414))

(assert (=> d!883958 t!240406))

(assert (=> d!884036 t!240412))

(declare-fun t!240416 () Bool)

(declare-fun tb!159303 () Bool)

(assert (=> (and b!3220299 (= (toValue!7322 (transformation!5230 (rule!7682 (h!41627 (t!239822 (t!239822 tokens!494)))))) (toValue!7322 (transformation!5230 (rule!7682 (h!41627 (t!239822 tokens!494)))))) t!240416) tb!159303))

(declare-fun result!201728 () Bool)

(assert (= result!201728 result!201192))

(assert (=> d!883102 t!240416))

(declare-fun t!240418 () Bool)

(declare-fun tb!159305 () Bool)

(assert (=> (and b!3220299 (= (toValue!7322 (transformation!5230 (rule!7682 (h!41627 (t!239822 (t!239822 tokens!494)))))) (toValue!7322 (transformation!5230 (rule!7682 (_1!20946 (get!11534 lt!1089033)))))) t!240418) tb!159305))

(declare-fun result!201730 () Bool)

(assert (= result!201730 result!201548))

(assert (=> d!884518 t!240418))

(declare-fun tb!159307 () Bool)

(declare-fun t!240420 () Bool)

(assert (=> (and b!3220299 (= (toValue!7322 (transformation!5230 (rule!7682 (h!41627 (t!239822 (t!239822 tokens!494)))))) (toValue!7322 (transformation!5230 (rule!7682 (_1!20946 (get!11534 lt!1088976)))))) t!240420) tb!159307))

(declare-fun result!201732 () Bool)

(assert (= result!201732 result!201428))

(assert (=> d!884016 t!240420))

(declare-fun b_and!215279 () Bool)

(declare-fun tp!1014561 () Bool)

(assert (=> b!3220299 (= tp!1014561 (and (=> t!240408 result!201720) (=> t!240410 result!201722) (=> t!240412 result!201724) (=> t!240420 result!201732) (=> t!240416 result!201728) (=> t!240406 result!201718) (=> t!240418 result!201730) (=> t!240414 result!201726) b_and!215279))))

(declare-fun b_free!85579 () Bool)

(declare-fun b_next!86283 () Bool)

(assert (=> b!3220299 (= b_free!85579 (not b_next!86283))))

(declare-fun t!240422 () Bool)

(declare-fun tb!159309 () Bool)

(assert (=> (and b!3220299 (= (toChars!7181 (transformation!5230 (rule!7682 (h!41627 (t!239822 (t!239822 tokens!494)))))) (toChars!7181 (transformation!5230 (rule!7682 (h!41627 (t!239822 (t!239822 tokens!494))))))) t!240422) tb!159309))

(declare-fun result!201734 () Bool)

(assert (= result!201734 result!201558))

(assert (=> d!884590 t!240422))

(declare-fun tb!159311 () Bool)

(declare-fun t!240424 () Bool)

(assert (=> (and b!3220299 (= (toChars!7181 (transformation!5230 (rule!7682 (h!41627 (t!239822 (t!239822 tokens!494)))))) (toChars!7181 (transformation!5230 (rule!7682 separatorToken!241)))) t!240424) tb!159311))

(declare-fun result!201736 () Bool)

(assert (= result!201736 result!201144))

(assert (=> d!883192 t!240424))

(declare-fun tb!159313 () Bool)

(declare-fun t!240426 () Bool)

(assert (=> (and b!3220299 (= (toChars!7181 (transformation!5230 (rule!7682 (h!41627 (t!239822 (t!239822 tokens!494)))))) (toChars!7181 (transformation!5230 (rule!7682 (apply!8222 lt!1088685 0))))) t!240426) tb!159313))

(declare-fun result!201738 () Bool)

(assert (= result!201738 result!201418))

(assert (=> d!884004 t!240426))

(declare-fun t!240428 () Bool)

(declare-fun tb!159315 () Bool)

(assert (=> (and b!3220299 (= (toChars!7181 (transformation!5230 (rule!7682 (h!41627 (t!239822 (t!239822 tokens!494)))))) (toChars!7181 (transformation!5230 (rule!7682 (h!41627 (t!239822 tokens!494)))))) t!240428) tb!159315))

(declare-fun result!201740 () Bool)

(assert (= result!201740 result!201448))

(assert (=> d!884036 t!240428))

(declare-fun tb!159317 () Bool)

(declare-fun t!240430 () Bool)

(assert (=> (and b!3220299 (= (toChars!7181 (transformation!5230 (rule!7682 (h!41627 (t!239822 (t!239822 tokens!494)))))) (toChars!7181 (transformation!5230 (rule!7682 (apply!8222 lt!1088696 0))))) t!240430) tb!159317))

(declare-fun result!201742 () Bool)

(assert (= result!201742 result!201388))

(assert (=> d!883924 t!240430))

(declare-fun t!240432 () Bool)

(declare-fun tb!159319 () Bool)

(assert (=> (and b!3220299 (= (toChars!7181 (transformation!5230 (rule!7682 (h!41627 (t!239822 (t!239822 tokens!494)))))) (toChars!7181 (transformation!5230 (rule!7682 (h!41627 tokens!494))))) t!240432) tb!159319))

(declare-fun result!201744 () Bool)

(assert (= result!201744 result!201152))

(assert (=> b!3216938 t!240432))

(assert (=> b!3216825 t!240424))

(assert (=> d!882912 t!240432))

(declare-fun tb!159321 () Bool)

(declare-fun t!240434 () Bool)

(assert (=> (and b!3220299 (= (toChars!7181 (transformation!5230 (rule!7682 (h!41627 (t!239822 (t!239822 tokens!494)))))) (toChars!7181 (transformation!5230 (rule!7682 (_1!20946 (get!11534 lt!1088911)))))) t!240434) tb!159321))

(declare-fun result!201746 () Bool)

(assert (= result!201746 result!201268))

(assert (=> d!883398 t!240434))

(declare-fun tb!159323 () Bool)

(declare-fun t!240436 () Bool)

(assert (=> (and b!3220299 (= (toChars!7181 (transformation!5230 (rule!7682 (h!41627 (t!239822 (t!239822 tokens!494)))))) (toChars!7181 (transformation!5230 (rule!7682 (apply!8222 lt!1088703 0))))) t!240436) tb!159323))

(declare-fun result!201748 () Bool)

(assert (= result!201748 result!201278))

(assert (=> d!883478 t!240436))

(declare-fun t!240438 () Bool)

(declare-fun tb!159325 () Bool)

(assert (=> (and b!3220299 (= (toChars!7181 (transformation!5230 (rule!7682 (h!41627 (t!239822 (t!239822 tokens!494)))))) (toChars!7181 (transformation!5230 (rule!7682 (h!41627 (t!239822 tokens!494)))))) t!240438) tb!159325))

(declare-fun result!201750 () Bool)

(assert (= result!201750 result!201234))

(assert (=> d!883208 t!240438))

(declare-fun t!240440 () Bool)

(declare-fun tb!159327 () Bool)

(assert (=> (and b!3220299 (= (toChars!7181 (transformation!5230 (rule!7682 (h!41627 (t!239822 (t!239822 tokens!494)))))) (toChars!7181 (transformation!5230 (rule!7682 (h!41627 (Cons!36207 (h!41627 tokens!494) Nil!36207)))))) t!240440) tb!159327))

(declare-fun result!201752 () Bool)

(assert (= result!201752 result!201338))

(assert (=> d!883742 t!240440))

(declare-fun t!240442 () Bool)

(declare-fun tb!159329 () Bool)

(assert (=> (and b!3220299 (= (toChars!7181 (transformation!5230 (rule!7682 (h!41627 (t!239822 (t!239822 tokens!494)))))) (toChars!7181 (transformation!5230 (rule!7682 (h!41627 tokens!494))))) t!240442) tb!159329))

(declare-fun result!201754 () Bool)

(assert (= result!201754 result!201398))

(assert (=> d!883952 t!240442))

(declare-fun t!240444 () Bool)

(declare-fun tb!159331 () Bool)

(assert (=> (and b!3220299 (= (toChars!7181 (transformation!5230 (rule!7682 (h!41627 (t!239822 (t!239822 tokens!494)))))) (toChars!7181 (transformation!5230 (rule!7682 (_1!20946 (get!11534 lt!1089033)))))) t!240444) tb!159331))

(declare-fun result!201756 () Bool)

(assert (= result!201756 result!201468))

(assert (=> d!884182 t!240444))

(declare-fun t!240446 () Bool)

(declare-fun tb!159333 () Bool)

(assert (=> (and b!3220299 (= (toChars!7181 (transformation!5230 (rule!7682 (h!41627 (t!239822 (t!239822 tokens!494)))))) (toChars!7181 (transformation!5230 (rule!7682 (_1!20946 (get!11534 lt!1088976)))))) t!240446) tb!159333))

(declare-fun result!201758 () Bool)

(assert (= result!201758 result!201458))

(assert (=> d!884094 t!240446))

(assert (=> b!3218276 t!240438))

(declare-fun b_and!215281 () Bool)

(declare-fun tp!1014559 () Bool)

(assert (=> b!3220299 (= tp!1014559 (and (=> t!240424 result!201736) (=> t!240432 result!201744) (=> t!240442 result!201754) (=> t!240438 result!201750) (=> t!240426 result!201738) (=> t!240446 result!201758) (=> t!240440 result!201752) (=> t!240430 result!201742) (=> t!240444 result!201756) (=> t!240434 result!201746) (=> t!240422 result!201734) (=> t!240428 result!201740) (=> t!240436 result!201748) b_and!215281))))

(declare-fun e!2007767 () Bool)

(declare-fun b!3220297 () Bool)

(declare-fun e!2007766 () Bool)

(declare-fun tp!1014560 () Bool)

(assert (=> b!3220297 (= e!2007767 (and (inv!21 (value!169515 (h!41627 (t!239822 (t!239822 tokens!494))))) e!2007766 tp!1014560))))

(declare-fun tp!1014563 () Bool)

(declare-fun b!3220296 () Bool)

(declare-fun e!2007770 () Bool)

(assert (=> b!3220296 (= e!2007770 (and (inv!49076 (h!41627 (t!239822 (t!239822 tokens!494)))) e!2007767 tp!1014563))))

(assert (=> b!3217771 (= tp!1014311 e!2007770)))

(declare-fun e!2007771 () Bool)

(declare-fun tp!1014562 () Bool)

(declare-fun b!3220298 () Bool)

(assert (=> b!3220298 (= e!2007766 (and tp!1014562 (inv!49072 (tag!5760 (rule!7682 (h!41627 (t!239822 (t!239822 tokens!494)))))) (inv!49075 (transformation!5230 (rule!7682 (h!41627 (t!239822 (t!239822 tokens!494)))))) e!2007771))))

(assert (=> b!3220299 (= e!2007771 (and tp!1014561 tp!1014559))))

(assert (= b!3220298 b!3220299))

(assert (= b!3220297 b!3220298))

(assert (= b!3220296 b!3220297))

(assert (= (and b!3217771 ((_ is Cons!36207) (t!239822 (t!239822 tokens!494)))) b!3220296))

(declare-fun m!3496811 () Bool)

(assert (=> b!3220297 m!3496811))

(declare-fun m!3496813 () Bool)

(assert (=> b!3220296 m!3496813))

(declare-fun m!3496815 () Bool)

(assert (=> b!3220298 m!3496815))

(declare-fun m!3496817 () Bool)

(assert (=> b!3220298 m!3496817))

(declare-fun b!3220303 () Bool)

(declare-fun e!2007772 () Bool)

(declare-fun tp!1014566 () Bool)

(declare-fun tp!1014567 () Bool)

(assert (=> b!3220303 (= e!2007772 (and tp!1014566 tp!1014567))))

(assert (=> b!3217773 (= tp!1014310 e!2007772)))

(declare-fun b!3220300 () Bool)

(assert (=> b!3220300 (= e!2007772 tp_is_empty!17305)))

(declare-fun b!3220302 () Bool)

(declare-fun tp!1014568 () Bool)

(assert (=> b!3220302 (= e!2007772 tp!1014568)))

(declare-fun b!3220301 () Bool)

(declare-fun tp!1014565 () Bool)

(declare-fun tp!1014564 () Bool)

(assert (=> b!3220301 (= e!2007772 (and tp!1014565 tp!1014564))))

(assert (= (and b!3217773 ((_ is ElementMatch!9989) (regex!5230 (rule!7682 (h!41627 (t!239822 tokens!494)))))) b!3220300))

(assert (= (and b!3217773 ((_ is Concat!15449) (regex!5230 (rule!7682 (h!41627 (t!239822 tokens!494)))))) b!3220301))

(assert (= (and b!3217773 ((_ is Star!9989) (regex!5230 (rule!7682 (h!41627 (t!239822 tokens!494)))))) b!3220302))

(assert (= (and b!3217773 ((_ is Union!9989) (regex!5230 (rule!7682 (h!41627 (t!239822 tokens!494)))))) b!3220303))

(declare-fun b!3220307 () Bool)

(declare-fun e!2007773 () Bool)

(declare-fun tp!1014571 () Bool)

(declare-fun tp!1014572 () Bool)

(assert (=> b!3220307 (= e!2007773 (and tp!1014571 tp!1014572))))

(assert (=> b!3217793 (= tp!1014330 e!2007773)))

(declare-fun b!3220304 () Bool)

(assert (=> b!3220304 (= e!2007773 tp_is_empty!17305)))

(declare-fun b!3220306 () Bool)

(declare-fun tp!1014573 () Bool)

(assert (=> b!3220306 (= e!2007773 tp!1014573)))

(declare-fun b!3220305 () Bool)

(declare-fun tp!1014570 () Bool)

(declare-fun tp!1014569 () Bool)

(assert (=> b!3220305 (= e!2007773 (and tp!1014570 tp!1014569))))

(assert (= (and b!3217793 ((_ is ElementMatch!9989) (reg!10318 (regex!5230 (rule!7682 separatorToken!241))))) b!3220304))

(assert (= (and b!3217793 ((_ is Concat!15449) (reg!10318 (regex!5230 (rule!7682 separatorToken!241))))) b!3220305))

(assert (= (and b!3217793 ((_ is Star!9989) (reg!10318 (regex!5230 (rule!7682 separatorToken!241))))) b!3220306))

(assert (= (and b!3217793 ((_ is Union!9989) (reg!10318 (regex!5230 (rule!7682 separatorToken!241))))) b!3220307))

(declare-fun b!3220311 () Bool)

(declare-fun e!2007774 () Bool)

(declare-fun tp!1014576 () Bool)

(declare-fun tp!1014577 () Bool)

(assert (=> b!3220311 (= e!2007774 (and tp!1014576 tp!1014577))))

(assert (=> b!3217802 (= tp!1014338 e!2007774)))

(declare-fun b!3220308 () Bool)

(assert (=> b!3220308 (= e!2007774 tp_is_empty!17305)))

(declare-fun b!3220310 () Bool)

(declare-fun tp!1014578 () Bool)

(assert (=> b!3220310 (= e!2007774 tp!1014578)))

(declare-fun b!3220309 () Bool)

(declare-fun tp!1014575 () Bool)

(declare-fun tp!1014574 () Bool)

(assert (=> b!3220309 (= e!2007774 (and tp!1014575 tp!1014574))))

(assert (= (and b!3217802 ((_ is ElementMatch!9989) (regOne!20491 (regex!5230 (h!41626 rules!2135))))) b!3220308))

(assert (= (and b!3217802 ((_ is Concat!15449) (regOne!20491 (regex!5230 (h!41626 rules!2135))))) b!3220309))

(assert (= (and b!3217802 ((_ is Star!9989) (regOne!20491 (regex!5230 (h!41626 rules!2135))))) b!3220310))

(assert (= (and b!3217802 ((_ is Union!9989) (regOne!20491 (regex!5230 (h!41626 rules!2135))))) b!3220311))

(declare-fun b!3220315 () Bool)

(declare-fun e!2007775 () Bool)

(declare-fun tp!1014581 () Bool)

(declare-fun tp!1014582 () Bool)

(assert (=> b!3220315 (= e!2007775 (and tp!1014581 tp!1014582))))

(assert (=> b!3217802 (= tp!1014339 e!2007775)))

(declare-fun b!3220312 () Bool)

(assert (=> b!3220312 (= e!2007775 tp_is_empty!17305)))

(declare-fun b!3220314 () Bool)

(declare-fun tp!1014583 () Bool)

(assert (=> b!3220314 (= e!2007775 tp!1014583)))

(declare-fun b!3220313 () Bool)

(declare-fun tp!1014580 () Bool)

(declare-fun tp!1014579 () Bool)

(assert (=> b!3220313 (= e!2007775 (and tp!1014580 tp!1014579))))

(assert (= (and b!3217802 ((_ is ElementMatch!9989) (regTwo!20491 (regex!5230 (h!41626 rules!2135))))) b!3220312))

(assert (= (and b!3217802 ((_ is Concat!15449) (regTwo!20491 (regex!5230 (h!41626 rules!2135))))) b!3220313))

(assert (= (and b!3217802 ((_ is Star!9989) (regTwo!20491 (regex!5230 (h!41626 rules!2135))))) b!3220314))

(assert (= (and b!3217802 ((_ is Union!9989) (regTwo!20491 (regex!5230 (h!41626 rules!2135))))) b!3220315))

(declare-fun b!3220316 () Bool)

(declare-fun e!2007776 () Bool)

(declare-fun tp!1014584 () Bool)

(assert (=> b!3220316 (= e!2007776 (and tp_is_empty!17305 tp!1014584))))

(assert (=> b!3217772 (= tp!1014308 e!2007776)))

(assert (= (and b!3217772 ((_ is Cons!36205) (originalCharacters!5944 (h!41627 (t!239822 tokens!494))))) b!3220316))

(declare-fun b_lambda!88589 () Bool)

(assert (= b_lambda!88505 (or (and b!3217757 b_free!85559 (= (toChars!7181 (transformation!5230 (h!41626 (t!239821 rules!2135)))) (toChars!7181 (transformation!5230 (rule!7682 (h!41627 (t!239822 tokens!494))))))) (and b!3220299 b_free!85579 (= (toChars!7181 (transformation!5230 (rule!7682 (h!41627 (t!239822 (t!239822 tokens!494)))))) (toChars!7181 (transformation!5230 (rule!7682 (h!41627 (t!239822 tokens!494))))))) (and b!3216778 b_free!85547 (= (toChars!7181 (transformation!5230 (rule!7682 separatorToken!241))) (toChars!7181 (transformation!5230 (rule!7682 (h!41627 (t!239822 tokens!494))))))) (and b!3220271 b_free!85575 (= (toChars!7181 (transformation!5230 (h!41626 (t!239821 (t!239821 rules!2135))))) (toChars!7181 (transformation!5230 (rule!7682 (h!41627 (t!239822 tokens!494))))))) (and b!3216773 b_free!85543 (= (toChars!7181 (transformation!5230 (h!41626 rules!2135))) (toChars!7181 (transformation!5230 (rule!7682 (h!41627 (t!239822 tokens!494))))))) (and b!3217774 b_free!85563) (and b!3216775 b_free!85539 (= (toChars!7181 (transformation!5230 (rule!7682 (h!41627 tokens!494)))) (toChars!7181 (transformation!5230 (rule!7682 (h!41627 (t!239822 tokens!494))))))) b_lambda!88589)))

(declare-fun b_lambda!88591 () Bool)

(assert (= b_lambda!88497 (or (and b!3216778 b_free!85545 (= (toValue!7322 (transformation!5230 (rule!7682 separatorToken!241))) (toValue!7322 (transformation!5230 (rule!7682 (h!41627 tokens!494)))))) (and b!3217774 b_free!85561 (= (toValue!7322 (transformation!5230 (rule!7682 (h!41627 (t!239822 tokens!494))))) (toValue!7322 (transformation!5230 (rule!7682 (h!41627 tokens!494)))))) (and b!3220271 b_free!85573 (= (toValue!7322 (transformation!5230 (h!41626 (t!239821 (t!239821 rules!2135))))) (toValue!7322 (transformation!5230 (rule!7682 (h!41627 tokens!494)))))) (and b!3216773 b_free!85541 (= (toValue!7322 (transformation!5230 (h!41626 rules!2135))) (toValue!7322 (transformation!5230 (rule!7682 (h!41627 tokens!494)))))) (and b!3220299 b_free!85577 (= (toValue!7322 (transformation!5230 (rule!7682 (h!41627 (t!239822 (t!239822 tokens!494)))))) (toValue!7322 (transformation!5230 (rule!7682 (h!41627 tokens!494)))))) (and b!3216775 b_free!85537) (and b!3217757 b_free!85557 (= (toValue!7322 (transformation!5230 (h!41626 (t!239821 rules!2135)))) (toValue!7322 (transformation!5230 (rule!7682 (h!41627 tokens!494)))))) b_lambda!88591)))

(declare-fun b_lambda!88593 () Bool)

(assert (= b_lambda!88471 (or b!3216793 b_lambda!88593)))

(assert (=> d!883536 d!883210))

(declare-fun b_lambda!88595 () Bool)

(assert (= b_lambda!88489 (or (and b!3216778 b_free!85545 (= (toValue!7322 (transformation!5230 (rule!7682 separatorToken!241))) (toValue!7322 (transformation!5230 (rule!7682 (h!41627 tokens!494)))))) (and b!3217774 b_free!85561 (= (toValue!7322 (transformation!5230 (rule!7682 (h!41627 (t!239822 tokens!494))))) (toValue!7322 (transformation!5230 (rule!7682 (h!41627 tokens!494)))))) (and b!3220271 b_free!85573 (= (toValue!7322 (transformation!5230 (h!41626 (t!239821 (t!239821 rules!2135))))) (toValue!7322 (transformation!5230 (rule!7682 (h!41627 tokens!494)))))) (and b!3216773 b_free!85541 (= (toValue!7322 (transformation!5230 (h!41626 rules!2135))) (toValue!7322 (transformation!5230 (rule!7682 (h!41627 tokens!494)))))) (and b!3220299 b_free!85577 (= (toValue!7322 (transformation!5230 (rule!7682 (h!41627 (t!239822 (t!239822 tokens!494)))))) (toValue!7322 (transformation!5230 (rule!7682 (h!41627 tokens!494)))))) (and b!3216775 b_free!85537) (and b!3217757 b_free!85557 (= (toValue!7322 (transformation!5230 (h!41626 (t!239821 rules!2135)))) (toValue!7322 (transformation!5230 (rule!7682 (h!41627 tokens!494)))))) b_lambda!88595)))

(declare-fun b_lambda!88597 () Bool)

(assert (= b_lambda!88495 (or (and b!3216778 b_free!85545 (= (toValue!7322 (transformation!5230 (rule!7682 separatorToken!241))) (toValue!7322 (transformation!5230 (rule!7682 (h!41627 tokens!494)))))) (and b!3217774 b_free!85561 (= (toValue!7322 (transformation!5230 (rule!7682 (h!41627 (t!239822 tokens!494))))) (toValue!7322 (transformation!5230 (rule!7682 (h!41627 tokens!494)))))) (and b!3220271 b_free!85573 (= (toValue!7322 (transformation!5230 (h!41626 (t!239821 (t!239821 rules!2135))))) (toValue!7322 (transformation!5230 (rule!7682 (h!41627 tokens!494)))))) (and b!3216773 b_free!85541 (= (toValue!7322 (transformation!5230 (h!41626 rules!2135))) (toValue!7322 (transformation!5230 (rule!7682 (h!41627 tokens!494)))))) (and b!3220299 b_free!85577 (= (toValue!7322 (transformation!5230 (rule!7682 (h!41627 (t!239822 (t!239822 tokens!494)))))) (toValue!7322 (transformation!5230 (rule!7682 (h!41627 tokens!494)))))) (and b!3216775 b_free!85537) (and b!3217757 b_free!85557 (= (toValue!7322 (transformation!5230 (h!41626 (t!239821 rules!2135)))) (toValue!7322 (transformation!5230 (rule!7682 (h!41627 tokens!494)))))) b_lambda!88597)))

(declare-fun b_lambda!88599 () Bool)

(assert (= b_lambda!88515 (or b!3216762 b_lambda!88599)))

(declare-fun bs!542594 () Bool)

(declare-fun d!884772 () Bool)

(assert (= bs!542594 (and d!884772 b!3216762)))

(assert (=> bs!542594 (= (dynLambda!14651 lambda!117651 (h!41627 tokens!494)) (rulesProduceIndividualToken!2311 thiss!18206 rules!2135 (h!41627 tokens!494)))))

(assert (=> bs!542594 m!3490519))

(assert (=> b!3219227 d!884772))

(declare-fun b_lambda!88601 () Bool)

(assert (= b_lambda!88547 (or (and b!3220299 b_free!85579) (and b!3217774 b_free!85563 (= (toChars!7181 (transformation!5230 (rule!7682 (h!41627 (t!239822 tokens!494))))) (toChars!7181 (transformation!5230 (rule!7682 (h!41627 (t!239822 (t!239822 tokens!494)))))))) (and b!3216778 b_free!85547 (= (toChars!7181 (transformation!5230 (rule!7682 separatorToken!241))) (toChars!7181 (transformation!5230 (rule!7682 (h!41627 (t!239822 (t!239822 tokens!494)))))))) (and b!3217757 b_free!85559 (= (toChars!7181 (transformation!5230 (h!41626 (t!239821 rules!2135)))) (toChars!7181 (transformation!5230 (rule!7682 (h!41627 (t!239822 (t!239822 tokens!494)))))))) (and b!3220271 b_free!85575 (= (toChars!7181 (transformation!5230 (h!41626 (t!239821 (t!239821 rules!2135))))) (toChars!7181 (transformation!5230 (rule!7682 (h!41627 (t!239822 (t!239822 tokens!494)))))))) (and b!3216775 b_free!85539 (= (toChars!7181 (transformation!5230 (rule!7682 (h!41627 tokens!494)))) (toChars!7181 (transformation!5230 (rule!7682 (h!41627 (t!239822 (t!239822 tokens!494)))))))) (and b!3216773 b_free!85543 (= (toChars!7181 (transformation!5230 (h!41626 rules!2135))) (toChars!7181 (transformation!5230 (rule!7682 (h!41627 (t!239822 (t!239822 tokens!494)))))))) b_lambda!88601)))

(declare-fun b_lambda!88603 () Bool)

(assert (= b_lambda!88509 (or b!3216793 b_lambda!88603)))

(assert (=> d!884076 d!883212))

(declare-fun b_lambda!88605 () Bool)

(assert (= b_lambda!88513 (or b!3216762 b_lambda!88605)))

(assert (=> d!884148 d!883214))

(declare-fun b_lambda!88607 () Bool)

(assert (= b_lambda!88523 (or b!3216793 b_lambda!88607)))

(assert (=> b!3219408 d!883212))

(declare-fun b_lambda!88609 () Bool)

(assert (= b_lambda!88461 (or (and b!3217757 b_free!85559 (= (toChars!7181 (transformation!5230 (h!41626 (t!239821 rules!2135)))) (toChars!7181 (transformation!5230 (rule!7682 (h!41627 (t!239822 tokens!494))))))) (and b!3220299 b_free!85579 (= (toChars!7181 (transformation!5230 (rule!7682 (h!41627 (t!239822 (t!239822 tokens!494)))))) (toChars!7181 (transformation!5230 (rule!7682 (h!41627 (t!239822 tokens!494))))))) (and b!3216778 b_free!85547 (= (toChars!7181 (transformation!5230 (rule!7682 separatorToken!241))) (toChars!7181 (transformation!5230 (rule!7682 (h!41627 (t!239822 tokens!494))))))) (and b!3220271 b_free!85575 (= (toChars!7181 (transformation!5230 (h!41626 (t!239821 (t!239821 rules!2135))))) (toChars!7181 (transformation!5230 (rule!7682 (h!41627 (t!239822 tokens!494))))))) (and b!3216773 b_free!85543 (= (toChars!7181 (transformation!5230 (h!41626 rules!2135))) (toChars!7181 (transformation!5230 (rule!7682 (h!41627 (t!239822 tokens!494))))))) (and b!3217774 b_free!85563) (and b!3216775 b_free!85539 (= (toChars!7181 (transformation!5230 (rule!7682 (h!41627 tokens!494)))) (toChars!7181 (transformation!5230 (rule!7682 (h!41627 (t!239822 tokens!494))))))) b_lambda!88609)))

(declare-fun b_lambda!88611 () Bool)

(assert (= b_lambda!88519 (or d!882888 b_lambda!88611)))

(declare-fun bs!542595 () Bool)

(declare-fun d!884774 () Bool)

(assert (= bs!542595 (and d!884774 d!882888)))

(assert (=> bs!542595 (= (dynLambda!14651 lambda!117656 (h!41627 (list!12890 (seqFromList!3532 tokens!494)))) (rulesProduceIndividualToken!2311 thiss!18206 rules!2135 (h!41627 (list!12890 (seqFromList!3532 tokens!494)))))))

(assert (=> bs!542595 m!3496773))

(assert (=> b!3219369 d!884774))

(declare-fun b_lambda!88613 () Bool)

(assert (= b_lambda!88493 (or (and b!3216773 b_free!85543 (= (toChars!7181 (transformation!5230 (h!41626 rules!2135))) (toChars!7181 (transformation!5230 (rule!7682 (h!41627 tokens!494)))))) (and b!3216778 b_free!85547 (= (toChars!7181 (transformation!5230 (rule!7682 separatorToken!241))) (toChars!7181 (transformation!5230 (rule!7682 (h!41627 tokens!494)))))) (and b!3217757 b_free!85559 (= (toChars!7181 (transformation!5230 (h!41626 (t!239821 rules!2135)))) (toChars!7181 (transformation!5230 (rule!7682 (h!41627 tokens!494)))))) (and b!3216775 b_free!85539) (and b!3220299 b_free!85579 (= (toChars!7181 (transformation!5230 (rule!7682 (h!41627 (t!239822 (t!239822 tokens!494)))))) (toChars!7181 (transformation!5230 (rule!7682 (h!41627 tokens!494)))))) (and b!3217774 b_free!85563 (= (toChars!7181 (transformation!5230 (rule!7682 (h!41627 (t!239822 tokens!494))))) (toChars!7181 (transformation!5230 (rule!7682 (h!41627 tokens!494)))))) (and b!3220271 b_free!85575 (= (toChars!7181 (transformation!5230 (h!41626 (t!239821 (t!239821 rules!2135))))) (toChars!7181 (transformation!5230 (rule!7682 (h!41627 tokens!494)))))) b_lambda!88613)))

(declare-fun b_lambda!88615 () Bool)

(assert (= b_lambda!88507 (or (and b!3216778 b_free!85545 (= (toValue!7322 (transformation!5230 (rule!7682 separatorToken!241))) (toValue!7322 (transformation!5230 (rule!7682 (h!41627 (t!239822 tokens!494))))))) (and b!3217774 b_free!85561) (and b!3216775 b_free!85537 (= (toValue!7322 (transformation!5230 (rule!7682 (h!41627 tokens!494)))) (toValue!7322 (transformation!5230 (rule!7682 (h!41627 (t!239822 tokens!494))))))) (and b!3220299 b_free!85577 (= (toValue!7322 (transformation!5230 (rule!7682 (h!41627 (t!239822 (t!239822 tokens!494)))))) (toValue!7322 (transformation!5230 (rule!7682 (h!41627 (t!239822 tokens!494))))))) (and b!3217757 b_free!85557 (= (toValue!7322 (transformation!5230 (h!41626 (t!239821 rules!2135)))) (toValue!7322 (transformation!5230 (rule!7682 (h!41627 (t!239822 tokens!494))))))) (and b!3220271 b_free!85573 (= (toValue!7322 (transformation!5230 (h!41626 (t!239821 (t!239821 rules!2135))))) (toValue!7322 (transformation!5230 (rule!7682 (h!41627 (t!239822 tokens!494))))))) (and b!3216773 b_free!85541 (= (toValue!7322 (transformation!5230 (h!41626 rules!2135))) (toValue!7322 (transformation!5230 (rule!7682 (h!41627 (t!239822 tokens!494))))))) b_lambda!88615)))

(declare-fun b_lambda!88617 () Bool)

(assert (= b_lambda!88503 (or (and b!3216778 b_free!85545 (= (toValue!7322 (transformation!5230 (rule!7682 separatorToken!241))) (toValue!7322 (transformation!5230 (rule!7682 (h!41627 (t!239822 tokens!494))))))) (and b!3217774 b_free!85561) (and b!3216775 b_free!85537 (= (toValue!7322 (transformation!5230 (rule!7682 (h!41627 tokens!494)))) (toValue!7322 (transformation!5230 (rule!7682 (h!41627 (t!239822 tokens!494))))))) (and b!3220299 b_free!85577 (= (toValue!7322 (transformation!5230 (rule!7682 (h!41627 (t!239822 (t!239822 tokens!494)))))) (toValue!7322 (transformation!5230 (rule!7682 (h!41627 (t!239822 tokens!494))))))) (and b!3217757 b_free!85557 (= (toValue!7322 (transformation!5230 (h!41626 (t!239821 rules!2135)))) (toValue!7322 (transformation!5230 (rule!7682 (h!41627 (t!239822 tokens!494))))))) (and b!3220271 b_free!85573 (= (toValue!7322 (transformation!5230 (h!41626 (t!239821 (t!239821 rules!2135))))) (toValue!7322 (transformation!5230 (rule!7682 (h!41627 (t!239822 tokens!494))))))) (and b!3216773 b_free!85541 (= (toValue!7322 (transformation!5230 (h!41626 rules!2135))) (toValue!7322 (transformation!5230 (rule!7682 (h!41627 (t!239822 tokens!494))))))) b_lambda!88617)))

(check-sat (not bm!233069) (not b!3219786) (not b!3220025) (not b!3220256) (not bm!233054) (not b!3219492) (not b!3219218) (not d!884164) (not bm!233063) (not d!883500) (not bm!233033) (not b!3220249) (not b_next!86263) (not d!883924) (not d!884268) (not d!884270) (not b!3219379) (not d!884244) (not d!884216) (not b!3219027) (not b!3220303) (not d!883624) (not b!3219407) (not b!3219194) (not b!3219926) (not d!884214) (not bm!233040) (not d!884086) (not bm!233146) (not tb!159137) (not tb!158957) (not d!884046) (not d!884114) (not b!3220314) (not b!3218909) (not b!3219259) (not d!884654) (not b!3220306) (not b_next!86249) (not b!3219204) (not b!3219827) (not b!3219460) (not d!884084) (not d!884170) (not b!3219214) (not b!3219271) (not b!3220241) (not b!3220294) (not d!883406) (not b!3218411) (not b!3218183) (not b!3219396) (not b!3219781) (not bm!232992) (not b_lambda!88437) (not b!3218799) (not d!883962) (not d!884536) (not d!884068) (not d!884574) (not tb!159017) (not bm!233055) (not bm!232972) (not d!883934) (not b!3218270) (not d!884186) (not bm!232979) (not b!3220272) (not b!3218163) (not d!883964) (not d!883604) (not b!3219331) (not d!883868) (not b!3218276) (not b!3219776) (not d!884672) (not d!884166) (not tb!159127) (not b!3219152) (not d!884000) (not d!884708) (not b!3219239) (not d!884656) (not b!3219009) (not b!3217746) (not b!3218244) (not d!883398) (not b!3219482) (not d!883956) (not b!3219782) (not b!3219193) (not b!3219963) (not b!3219058) (not b!3219333) (not b!3217945) (not b!3220232) (not b!3220240) (not d!884612) (not tb!158857) (not b!3219923) (not b!3219279) (not b!3218518) (not bs!542595) (not d!884188) (not b!3219127) (not b!3217931) (not b!3219940) (not b!3220297) (not d!883572) b_and!215225 (not b!3219019) (not bm!233036) (not d!883938) (not b!3220236) (not b!3218936) b_and!215229 (not b!3220283) (not b!3218112) (not tb!159047) (not d!884124) (not bm!232995) (not b!3218486) (not b!3219277) (not d!884312) (not b!3218144) (not d!883552) (not bm!233037) (not b!3219101) b_and!215277 (not b!3219187) (not b!3218990) (not bm!232935) (not b!3220282) (not d!884044) (not d!883446) (not d!883900) (not b_lambda!88597) (not bm!233050) (not d!884184) (not b!3219997) (not b_next!86283) (not b!3219380) (not b!3219458) (not d!883976) (not b!3219903) (not bm!233051) b_and!215227 (not b!3218556) (not b!3218551) (not b!3218814) (not b!3220030) (not b_next!86247) (not bm!232975) (not b!3218142) (not b!3219157) (not d!884292) (not b!3219094) (not b!3220295) (not d!883966) (not d!883306) (not d!883310) (not bm!233066) (not b!3219708) (not b!3219831) (not b!3220310) (not b!3220235) (not b!3220245) (not b!3219958) (not tb!158997) (not b!3218454) (not bm!233031) (not b!3218802) (not d!884616) (not b!3218210) (not b!3218447) (not b!3219061) (not b!3218182) (not b!3218395) (not b!3219092) (not d!883986) (not d!884330) (not b!3218277) (not bm!233046) (not b!3218402) (not d!884644) (not b!3218359) (not b_lambda!88595) (not d!884578) (not b!3218795) (not b!3218103) (not d!884060) (not d!884266) (not b!3219365) (not d!883594) (not b!3219356) (not d!884004) (not d!884072) (not b!3219056) (not b!3219216) (not b!3219787) (not bm!233004) (not b!3220289) (not b!3219088) (not d!884208) (not b_lambda!88481) (not b!3218257) (not tb!159027) (not d!884140) (not b!3218140) (not b!3219114) (not b!3220008) (not b!3218292) (not b!3219414) (not b!3220313) (not b!3219955) (not b!3218284) (not b!3216940) (not bm!232989) (not b!3219949) (not bm!232998) (not b_next!86279) (not b_lambda!88491) (not d!883570) (not d!883866) (not bm!233038) (not b!3217939) (not d!883378) (not b!3218281) (not b_next!86277) (not d!884090) (not bm!232928) (not d!883466) (not b!3220291) (not b!3219268) (not bm!232934) (not b!3218785) (not d!884564) (not b!3219055) (not b_lambda!88439) (not bm!233127) (not b!3219213) (not b!3218790) (not b!3218774) (not b!3219294) (not b!3219724) (not b!3220057) (not b!3218908) (not d!884054) (not b!3220233) (not d!883926) (not d!883762) (not d!884642) (not b!3219316) (not d!884590) (not b_lambda!88609) (not d!884106) (not bm!232988) (not b!3219300) (not b!3218980) (not d!883520) (not d!883616) (not b!3218081) (not d!883898) (not b!3220230) (not d!884668) (not d!884554) (not b_lambda!88447) (not b_next!86245) (not b!3218436) (not b!3220263) tp_is_empty!17305 (not d!884028) (not b!3220038) (not b!3220273) (not bm!233034) (not b!3219287) (not bm!232977) (not b!3220055) (not b!3219314) (not d!884496) (not b!3218773) (not b_next!86261) (not b!3219040) (not b!3218413) (not b!3218126) (not d!884018) (not d!884002) (not b!3219413) (not b!3218404) (not bm!233070) (not b!3219463) (not bm!233044) (not b!3219927) (not d!884504) (not b!3220024) (not b!3219303) (not b!3217944) (not b!3219457) (not b!3219054) (not d!884036) (not d!883746) (not b!3218249) (not b_lambda!88455) (not bm!232923) (not b!3220243) (not b!3219095) (not bm!233131) (not d!883420) (not d!883922) (not b!3219820) (not d!884570) (not bm!232994) (not b!3219840) (not b!3219222) (not d!883742) (not b!3220255) (not b!3219245) (not d!883526) (not b!3219038) (not b!3218956) (not b!3219043) (not b!3218444) (not b!3218393) (not b!3220311) (not d!883498) (not b!3219026) (not tb!158987) (not d!884524) (not b!3219310) (not d!884008) (not b!3219179) (not b!3218286) (not b!3219124) (not d!884680) (not b!3219462) (not b!3218823) (not b!3219357) (not b_lambda!88603) (not b_next!86241) (not d!883928) (not bm!233058) (not d!883302) (not b!3218243) (not b!3219770) (not d!884116) (not d!883422) (not d!883484) (not b!3220264) (not b!3220248) (not b_next!86281) (not b!3220296) (not d!884692) (not b!3220239) (not b!3218114) (not bm!233139) (not bm!233023) (not b!3219727) (not d!884634) (not bm!233137) (not b!3220226) (not b!3220302) (not b!3218420) (not b!3219957) (not b!3218075) (not b!3218121) (not bm!233005) (not b!3219769) (not d!883778) (not b!3219941) (not b!3220298) (not b!3218280) (not d!884658) (not b!3218514) (not b!3219246) (not b!3219848) (not b!3219068) (not d!884582) (not b_lambda!88463) (not b!3219175) (not b!3218804) (not d!883932) (not b!3218287) (not b!3219011) (not b!3220301) (not b!3220287) (not b!3219711) (not b!3219093) (not bm!232978) (not b!3218327) (not bm!233045) (not b!3220034) (not d!883386) (not b!3219306) (not d!884070) (not b!3218456) (not d!884158) (not b!3218812) (not b!3219122) (not b!3219353) (not b!3218817) (not b!3219158) (not b!3218995) (not b!3219981) (not b!3218231) (not b!3218970) (not b!3219383) (not b!3218458) (not b!3220056) (not b!3220053) (not b!3219225) (not b!3220211) (not b!3218328) (not b!3219350) (not d!883992) (not b!3219118) (not b!3219265) (not b!3219984) (not b!3218361) (not bm!232924) (not b!3219081) (not b!3219223) (not b!3219082) (not b_lambda!88445) (not bm!233068) (not d!883740) (not b!3219464) (not b!3218087) (not d!884302) (not d!884180) (not b!3219220) (not d!883532) (not b!3218542) (not b!3219007) (not d!884732) (not b_lambda!88593) (not b!3219982) (not b!3218776) (not b!3220037) (not d!883464) (not b!3218212) (not b!3219221) (not b!3219062) (not b!3219943) (not b!3218986) (not b!3220060) (not b!3219033) b_and!215275 (not b!3217938) (not b!3219956) (not d!884566) (not b!3218997) (not b!3220036) (not d!883942) (not b_lambda!88475) (not tb!159037) (not bm!233133) (not b_next!86267) (not d!883468) b_and!215281 (not b!3218457) (not b!3218271) (not d!884710) (not d!884040) (not b!3219044) b_and!215235 (not d!884224) (not d!884500) (not b!3218207) (not b_lambda!88449) (not b!3218958) (not d!884096) (not b!3219790) (not b!3219722) (not bm!233073) (not b!3219349) (not b_lambda!88441) (not b!3220052) (not b!3220247) (not b!3219149) (not b!3219370) (not bm!233057) (not b!3218825) (not b!3220293) (not b!3219117) (not b!3219488) (not b!3218254) (not d!883444) (not b!3218360) (not d!883854) (not b!3219878) (not d!884674) (not bm!233122) (not d!883888) (not b!3219153) (not b_lambda!88453) (not b!3219368) (not d!884712) (not d!883454) (not b!3219278) (not b!3218136) (not d!883480) (not b!3219145) (not b!3220305) (not b!3219901) (not bm!233035) (not b!3220253) (not b!3219048) (not d!883432) (not b!3219123) (not b!3219938) (not d!884604) (not b!3218784) (not b!3218288) (not b!3220205) (not tb!158967) (not b!3220026) (not d!883606) (not bm!233074) (not b!3218116) (not b!3218557) (not b!3218335) (not d!884544) (not b_lambda!88501) (not d!884716) (not b!3219846) (not b!3220269) (not b!3220281) (not d!883506) (not d!883852) (not b!3219475) (not b!3219272) (not d!884092) (not b!3220262) (not b!3219828) (not b!3219257) (not b!3219877) (not b!3218275) (not b!3218080) (not b!3219198) (not b!3219075) (not d!884626) (not b_lambda!88459) (not b!3219900) (not b!3218362) (not d!884030) (not b!3218574) (not b!3220206) (not d!883614) (not b!3220058) (not b!3219190) (not bm!232926) (not b!3218247) (not b!3219260) (not bm!233025) (not b!3219046) (not b!3219490) (not b!3220031) (not b!3219853) (not d!883566) (not d!884542) (not b!3220007) (not d!884048) (not b!3220278) (not b!3219842) (not d!883980) (not b!3218543) (not b!3219066) (not b_lambda!88589) (not d!884088) (not b!3218550) (not d!884652) (not b!3220214) (not b!3219262) (not b!3218364) (not b!3218137) (not d!883990) (not b!3218185) (not b!3219159) (not b!3219456) (not d!884100) (not bm!232929) (not d!883418) (not d!884182) (not b!3219293) (not b!3218108) (not b!3219202) (not b!3219868) (not d!883558) (not d!883602) (not b!3219147) (not b!3217946) (not b!3219103) (not d!884252) (not b!3220309) (not d!883952) (not d!883574) (not d!884746) (not b!3220252) (not b!3218441) (not b!3219865) (not d!884568) (not d!883834) (not d!884766) (not d!883436) (not b!3218125) (not b!3218554) (not b!3219897) (not bm!232999) (not d!883452) (not b!3219794) (not b!3218439) (not b!3219327) (not d!883748) (not b!3220225) (not b_lambda!88545) (not d!884714) (not d!884506) (not bm!233062) (not d!884720) (not d!884502) (not bm!233084) (not b!3219335) (not b!3218810) (not bm!233061) (not b!3219077) (not bm!232927) (not b!3218365) (not d!883766) (not b!3219005) (not b!3218973) (not b!3219334) (not d!884686) (not d!883622) (not bs!542594) (not d!883408) (not b!3220227) (not d!883734) (not b!3218824) (not b!3219180) (not tb!159007) (not b!3219796) (not b_lambda!88591) (not b!3220270) (not b!3220204) (not b!3220019) (not d!884638) (not b!3219099) (not d!884020) (not b!3218246) (not bm!233047) (not b!3220290) (not bm!233064) (not d!883482) (not d!884678) (not b_lambda!88457) (not b!3219150) (not b!3218517) (not b!3219474) b_and!215231 (not d!883478) (not b!3219416) (not b!3218143) (not b_lambda!88517) (not d!884660) (not d!883996) b_and!215279 (not d!884206) (not bm!232888) (not d!884194) (not d!883428) (not b!3218115) (not b!3219398) (not d!884508) (not bm!233002) (not d!884548) (not b!3218451) (not b!3219461) (not b!3220021) (not b!3218896) (not bm!233024) (not b!3218180) (not b!3220237) (not d!883588) (not b!3218821) (not b!3219774) b_and!215217 (not d!884218) (not b!3220259) (not bm!233042) (not b!3219721) (not b!3219382) (not b!3218245) (not b!3219954) (not bm!233039) (not bm!233043) (not b_lambda!88599) (not b!3219962) (not b!3219779) (not d!883508) (not b!3219343) (not d!884298) (not b!3219351) (not b!3219183) (not bm!232887) (not b!3219255) (not b!3220059) (not b!3218515) (not b!3218184) (not d!884728) (not d!884558) (not b!3218558) (not b_lambda!88617) (not b!3218122) (not b!3219493) (not b!3218248) (not d!884102) (not b!3219199) (not b!3218358) (not b!3218109) (not b!3218242) (not d!884178) (not d!883930) (not d!884006) (not b!3218150) (not b!3219059) (not b!3220277) (not d!883510) (not b!3220285) (not bm!232925) (not bm!233140) b_and!215223 (not b!3219798) (not bm!233123) (not d!884128) (not b_next!86243) (not d!884734) (not b!3219008) (not b!3220212) (not d!883954) (not d!883870) (not d!884156) (not b_lambda!88605) (not b!3219264) (not d!883910) (not bm!232973) (not b!3220210) (not b!3218572) (not b_next!86251) (not b!3217942) (not d!884082) (not b!3218422) (not b!3219228) (not b!3219898) (not d!884226) (not b!3220268) (not bm!233053) (not b!3218181) (not d!883416) (not d!883424) (not d!884556) (not b!3218788) (not b!3220307) (not tb!158977) (not d!884596) (not d!883476) (not d!884220) (not b!3218223) (not b!3219312) (not d!884056) (not b!3219212) (not bm!233067) (not d!884038) (not d!884174) (not b!3218418) (not b!3220231) (not d!883388) (not d!883434) (not b!3218432) (not b!3219397) (not b_lambda!88443) (not b!3218450) (not d!884204) (not b!3219097) (not d!884236) (not bm!232885) (not d!883470) (not d!884498) (not b!3219354) (not b!3219238) (not b!3219391) (not bm!232974) (not bm!232945) (not b!3220244) (not b!3218566) (not bm!233120) (not b_lambda!88451) (not b_lambda!88499) (not d!884736) (not b!3219224) (not b!3220286) (not b!3219922) (not d!884318) (not b!3220279) (not b!3219275) (not b!3219006) (not b!3219240) (not d!884646) (not bm!232997) (not b!3219021) (not b!3219773) (not b!3219086) (not bm!233041) (not d!883496) (not b!3219757) (not b!3218433) (not tb!158917) (not d!883462) (not b!3219390) (not d!883390) (not b!3218130) (not tb!158847) (not b!3220251) (not b!3219186) (not b!3218984) (not bm!232922) (not d!883370) (not b!3218268) (not d!884094) (not d!883984) (not b!3219121) (not b!3220261) (not b!3220315) (not d!883568) (not b!3218947) (not b!3218972) (not d!884258) (not d!883472) (not d!883946) (not d!884098) (not b!3219328) (not b!3218575) (not b!3220267) (not b!3218779) (not d!883308) (not b!3219036) (not b!3219301) (not b_lambda!88611) (not d!883534) (not d!884130) (not b_lambda!88511) (not b!3219791) (not b!3218188) (not b!3218224) (not d!883460) (not d!884168) (not b_lambda!88615) (not b!3219226) (not b!3219126) (not b!3219210) (not b!3219156) (not d!884162) (not d!884172) (not b!3220257) (not b!3218991) (not d!883950) (not b!3219985) (not d!883988) (not b!3219830) (not b!3218818) (not b!3218971) (not b!3220224) (not d!884546) (not b!3219192) (not d!884104) (not b!3219394) (not d!884648) (not b!3218187) (not b_lambda!88613) (not b_next!86265) b_and!215219 (not b!3216841) (not b!3219355) (not b!3219777) (not b!3218836) (not d!883396) (not d!883488) (not b!3220260) (not b!3218307) b_and!215221 (not d!883836) b_and!215233 (not d!883382) (not d!884534) (not b!3219937) (not b!3218787) (not d!884022) (not b!3220316) (not d!883548) (not d!884234) (not b!3219174) (not b_lambda!88607) (not b!3218129) (not tb!158887) (not b!3219797) (not b!3219409) (not bm!233126) (not b!3218326) (not b_lambda!88601) (not d!883544) (not b!3219060) (not b!3220266) (not d!884248) (not d!884562) (not d!883560) (not d!884706))
(check-sat (not b_next!86263) (not b_next!86249) b_and!215225 (not b_next!86247) (not b_next!86279) (not b_next!86277) (not b_next!86245) (not b_next!86261) (not b_next!86241) (not b_next!86281) b_and!215275 b_and!215217 (not b_next!86251) b_and!215229 b_and!215277 (not b_next!86283) b_and!215227 b_and!215235 (not b_next!86267) b_and!215281 b_and!215231 b_and!215279 b_and!215223 (not b_next!86243) (not b_next!86265) b_and!215219 b_and!215221 b_and!215233)
