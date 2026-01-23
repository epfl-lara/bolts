; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!317822 () Bool)

(assert start!317822)

(declare-fun b!3401852 () Bool)

(declare-fun b_free!89089 () Bool)

(declare-fun b_next!89793 () Bool)

(assert (=> b!3401852 (= b_free!89089 (not b_next!89793))))

(declare-fun tp!1061529 () Bool)

(declare-fun b_and!237455 () Bool)

(assert (=> b!3401852 (= tp!1061529 b_and!237455)))

(declare-fun b_free!89091 () Bool)

(declare-fun b_next!89795 () Bool)

(assert (=> b!3401852 (= b_free!89091 (not b_next!89795))))

(declare-fun tp!1061532 () Bool)

(declare-fun b_and!237457 () Bool)

(assert (=> b!3401852 (= tp!1061532 b_and!237457)))

(declare-fun b!3401854 () Bool)

(declare-fun b_free!89093 () Bool)

(declare-fun b_next!89797 () Bool)

(assert (=> b!3401854 (= b_free!89093 (not b_next!89797))))

(declare-fun tp!1061522 () Bool)

(declare-fun b_and!237459 () Bool)

(assert (=> b!3401854 (= tp!1061522 b_and!237459)))

(declare-fun b_free!89095 () Bool)

(declare-fun b_next!89799 () Bool)

(assert (=> b!3401854 (= b_free!89095 (not b_next!89799))))

(declare-fun tp!1061527 () Bool)

(declare-fun b_and!237461 () Bool)

(assert (=> b!3401854 (= tp!1061527 b_and!237461)))

(declare-fun b!3401845 () Bool)

(declare-fun b_free!89097 () Bool)

(declare-fun b_next!89801 () Bool)

(assert (=> b!3401845 (= b_free!89097 (not b_next!89801))))

(declare-fun tp!1061528 () Bool)

(declare-fun b_and!237463 () Bool)

(assert (=> b!3401845 (= tp!1061528 b_and!237463)))

(declare-fun b_free!89099 () Bool)

(declare-fun b_next!89803 () Bool)

(assert (=> b!3401845 (= b_free!89099 (not b_next!89803))))

(declare-fun tp!1061534 () Bool)

(declare-fun b_and!237465 () Bool)

(assert (=> b!3401845 (= tp!1061534 b_and!237465)))

(declare-fun res!1376477 () Bool)

(declare-fun e!2111678 () Bool)

(assert (=> start!317822 (=> (not res!1376477) (not e!2111678))))

(declare-datatypes ((LexerInterface!4991 0))(
  ( (LexerInterfaceExt!4988 (__x!23481 Int)) (Lexer!4989) )
))
(declare-fun thiss!18206 () LexerInterface!4991)

(get-info :version)

(assert (=> start!317822 (= res!1376477 ((_ is Lexer!4989) thiss!18206))))

(assert (=> start!317822 e!2111678))

(assert (=> start!317822 true))

(declare-fun e!2111680 () Bool)

(assert (=> start!317822 e!2111680))

(declare-fun e!2111673 () Bool)

(assert (=> start!317822 e!2111673))

(declare-datatypes ((C!20508 0))(
  ( (C!20509 (val!12302 Int)) )
))
(declare-datatypes ((Regex!10161 0))(
  ( (ElementMatch!10161 (c!579902 C!20508)) (Concat!15793 (regOne!20834 Regex!10161) (regTwo!20834 Regex!10161)) (EmptyExpr!10161) (Star!10161 (reg!10490 Regex!10161)) (EmptyLang!10161) (Union!10161 (regOne!20835 Regex!10161) (regTwo!20835 Regex!10161)) )
))
(declare-datatypes ((List!37116 0))(
  ( (Nil!36992) (Cons!36992 (h!42412 (_ BitVec 16)) (t!266053 List!37116)) )
))
(declare-datatypes ((TokenValue!5632 0))(
  ( (FloatLiteralValue!11264 (text!39869 List!37116)) (TokenValueExt!5631 (__x!23482 Int)) (Broken!28160 (value!174391 List!37116)) (Object!5755) (End!5632) (Def!5632) (Underscore!5632) (Match!5632) (Else!5632) (Error!5632) (Case!5632) (If!5632) (Extends!5632) (Abstract!5632) (Class!5632) (Val!5632) (DelimiterValue!11264 (del!5692 List!37116)) (KeywordValue!5638 (value!174392 List!37116)) (CommentValue!11264 (value!174393 List!37116)) (WhitespaceValue!11264 (value!174394 List!37116)) (IndentationValue!5632 (value!174395 List!37116)) (String!41493) (Int32!5632) (Broken!28161 (value!174396 List!37116)) (Boolean!5633) (Unit!52157) (OperatorValue!5635 (op!5692 List!37116)) (IdentifierValue!11264 (value!174397 List!37116)) (IdentifierValue!11265 (value!174398 List!37116)) (WhitespaceValue!11265 (value!174399 List!37116)) (True!11264) (False!11264) (Broken!28162 (value!174400 List!37116)) (Broken!28163 (value!174401 List!37116)) (True!11265) (RightBrace!5632) (RightBracket!5632) (Colon!5632) (Null!5632) (Comma!5632) (LeftBracket!5632) (False!11265) (LeftBrace!5632) (ImaginaryLiteralValue!5632 (text!39870 List!37116)) (StringLiteralValue!16896 (value!174402 List!37116)) (EOFValue!5632 (value!174403 List!37116)) (IdentValue!5632 (value!174404 List!37116)) (DelimiterValue!11265 (value!174405 List!37116)) (DedentValue!5632 (value!174406 List!37116)) (NewLineValue!5632 (value!174407 List!37116)) (IntegerValue!16896 (value!174408 (_ BitVec 32)) (text!39871 List!37116)) (IntegerValue!16897 (value!174409 Int) (text!39872 List!37116)) (Times!5632) (Or!5632) (Equal!5632) (Minus!5632) (Broken!28164 (value!174410 List!37116)) (And!5632) (Div!5632) (LessEqual!5632) (Mod!5632) (Concat!15794) (Not!5632) (Plus!5632) (SpaceValue!5632 (value!174411 List!37116)) (IntegerValue!16898 (value!174412 Int) (text!39873 List!37116)) (StringLiteralValue!16897 (text!39874 List!37116)) (FloatLiteralValue!11265 (text!39875 List!37116)) (BytesLiteralValue!5632 (value!174413 List!37116)) (CommentValue!11265 (value!174414 List!37116)) (StringLiteralValue!16898 (value!174415 List!37116)) (ErrorTokenValue!5632 (msg!5693 List!37116)) )
))
(declare-datatypes ((List!37117 0))(
  ( (Nil!36993) (Cons!36993 (h!42413 C!20508) (t!266054 List!37117)) )
))
(declare-datatypes ((IArray!22363 0))(
  ( (IArray!22364 (innerList!11239 List!37117)) )
))
(declare-datatypes ((Conc!11179 0))(
  ( (Node!11179 (left!28842 Conc!11179) (right!29172 Conc!11179) (csize!22588 Int) (cheight!11390 Int)) (Leaf!17491 (xs!14337 IArray!22363) (csize!22589 Int)) (Empty!11179) )
))
(declare-datatypes ((BalanceConc!21972 0))(
  ( (BalanceConc!21973 (c!579903 Conc!11179)) )
))
(declare-datatypes ((String!41494 0))(
  ( (String!41495 (value!174416 String)) )
))
(declare-datatypes ((TokenValueInjection!10692 0))(
  ( (TokenValueInjection!10693 (toValue!7610 Int) (toChars!7469 Int)) )
))
(declare-datatypes ((Rule!10604 0))(
  ( (Rule!10605 (regex!5402 Regex!10161) (tag!5986 String!41494) (isSeparator!5402 Bool) (transformation!5402 TokenValueInjection!10692)) )
))
(declare-datatypes ((Token!10170 0))(
  ( (Token!10171 (value!174417 TokenValue!5632) (rule!7966 Rule!10604) (size!28013 Int) (originalCharacters!6116 List!37117)) )
))
(declare-fun separatorToken!241 () Token!10170)

(declare-fun e!2111663 () Bool)

(declare-fun inv!50105 (Token!10170) Bool)

(assert (=> start!317822 (and (inv!50105 separatorToken!241) e!2111663)))

(declare-fun b!3401828 () Bool)

(declare-fun e!2111665 () Bool)

(assert (=> b!3401828 (= e!2111678 (not e!2111665))))

(declare-fun res!1376468 () Bool)

(assert (=> b!3401828 (=> res!1376468 e!2111665)))

(declare-fun lt!1156967 () List!37117)

(declare-fun lt!1156970 () List!37117)

(assert (=> b!3401828 (= res!1376468 (not (= lt!1156967 lt!1156970)))))

(declare-datatypes ((List!37118 0))(
  ( (Nil!36994) (Cons!36994 (h!42414 Token!10170) (t!266055 List!37118)) )
))
(declare-fun tokens!494 () List!37118)

(declare-fun printList!1539 (LexerInterface!4991 List!37118) List!37117)

(assert (=> b!3401828 (= lt!1156970 (printList!1539 thiss!18206 (Cons!36994 (h!42414 tokens!494) Nil!36994)))))

(declare-fun lt!1156956 () BalanceConc!21972)

(declare-fun list!13419 (BalanceConc!21972) List!37117)

(assert (=> b!3401828 (= lt!1156967 (list!13419 lt!1156956))))

(declare-datatypes ((IArray!22365 0))(
  ( (IArray!22366 (innerList!11240 List!37118)) )
))
(declare-datatypes ((Conc!11180 0))(
  ( (Node!11180 (left!28843 Conc!11180) (right!29173 Conc!11180) (csize!22590 Int) (cheight!11391 Int)) (Leaf!17492 (xs!14338 IArray!22365) (csize!22591 Int)) (Empty!11180) )
))
(declare-datatypes ((BalanceConc!21974 0))(
  ( (BalanceConc!21975 (c!579904 Conc!11180)) )
))
(declare-fun lt!1156965 () BalanceConc!21974)

(declare-fun printTailRec!1486 (LexerInterface!4991 BalanceConc!21974 Int BalanceConc!21972) BalanceConc!21972)

(assert (=> b!3401828 (= lt!1156956 (printTailRec!1486 thiss!18206 lt!1156965 0 (BalanceConc!21973 Empty!11179)))))

(declare-fun print!2056 (LexerInterface!4991 BalanceConc!21974) BalanceConc!21972)

(assert (=> b!3401828 (= lt!1156956 (print!2056 thiss!18206 lt!1156965))))

(declare-fun singletonSeq!2498 (Token!10170) BalanceConc!21974)

(assert (=> b!3401828 (= lt!1156965 (singletonSeq!2498 (h!42414 tokens!494)))))

(declare-fun b!3401829 () Bool)

(declare-fun e!2111668 () Bool)

(declare-fun e!2111666 () Bool)

(assert (=> b!3401829 (= e!2111668 e!2111666)))

(declare-fun res!1376462 () Bool)

(assert (=> b!3401829 (=> res!1376462 e!2111666)))

(declare-fun lt!1156968 () List!37117)

(declare-fun lt!1156962 () List!37117)

(declare-fun ++!9077 (List!37117 List!37117) List!37117)

(declare-fun charsOf!3416 (Token!10170) BalanceConc!21972)

(declare-fun printWithSeparatorTokenList!278 (LexerInterface!4991 List!37118 Token!10170) List!37117)

(assert (=> b!3401829 (= res!1376462 (not (= lt!1156962 (++!9077 (++!9077 (list!13419 (charsOf!3416 (h!42414 (t!266055 tokens!494)))) lt!1156968) (printWithSeparatorTokenList!278 thiss!18206 (t!266055 (t!266055 tokens!494)) separatorToken!241)))))))

(declare-fun lt!1156966 () List!37117)

(assert (=> b!3401829 (= lt!1156966 (++!9077 lt!1156968 lt!1156962))))

(assert (=> b!3401829 (= lt!1156968 (list!13419 (charsOf!3416 separatorToken!241)))))

(assert (=> b!3401829 (= lt!1156962 (printWithSeparatorTokenList!278 thiss!18206 (t!266055 tokens!494) separatorToken!241))))

(declare-fun lt!1156957 () List!37117)

(assert (=> b!3401829 (= lt!1156957 (printWithSeparatorTokenList!278 thiss!18206 tokens!494 separatorToken!241))))

(declare-fun b!3401830 () Bool)

(declare-fun e!2111672 () Bool)

(declare-fun tp!1061526 () Bool)

(declare-fun inv!21 (TokenValue!5632) Bool)

(assert (=> b!3401830 (= e!2111663 (and (inv!21 (value!174417 separatorToken!241)) e!2111672 tp!1061526))))

(declare-fun b!3401831 () Bool)

(declare-fun e!2111667 () Bool)

(declare-fun lt!1156961 () Rule!10604)

(assert (=> b!3401831 (= e!2111667 (= (rule!7966 (h!42414 tokens!494)) lt!1156961))))

(declare-fun b!3401832 () Bool)

(declare-fun tp!1061530 () Bool)

(declare-fun e!2111679 () Bool)

(declare-fun e!2111661 () Bool)

(assert (=> b!3401832 (= e!2111661 (and (inv!21 (value!174417 (h!42414 tokens!494))) e!2111679 tp!1061530))))

(declare-fun b!3401833 () Bool)

(declare-fun e!2111675 () Bool)

(declare-datatypes ((List!37119 0))(
  ( (Nil!36995) (Cons!36995 (h!42415 Rule!10604) (t!266056 List!37119)) )
))
(declare-fun rules!2135 () List!37119)

(declare-fun contains!6801 (List!37119 Rule!10604) Bool)

(assert (=> b!3401833 (= e!2111675 (contains!6801 rules!2135 (rule!7966 (h!42414 tokens!494))))))

(declare-fun e!2111671 () Bool)

(assert (=> b!3401833 e!2111671))

(declare-fun res!1376471 () Bool)

(assert (=> b!3401833 (=> (not res!1376471) (not e!2111671))))

(declare-datatypes ((Option!7444 0))(
  ( (None!7443) (Some!7443 (v!36623 Rule!10604)) )
))
(declare-fun lt!1156972 () Option!7444)

(declare-fun isDefined!5744 (Option!7444) Bool)

(assert (=> b!3401833 (= res!1376471 (isDefined!5744 lt!1156972))))

(declare-fun getRuleFromTag!1045 (LexerInterface!4991 List!37119 String!41494) Option!7444)

(assert (=> b!3401833 (= lt!1156972 (getRuleFromTag!1045 thiss!18206 rules!2135 (tag!5986 (rule!7966 (h!42414 tokens!494)))))))

(declare-datatypes ((Unit!52158 0))(
  ( (Unit!52159) )
))
(declare-fun lt!1156963 () Unit!52158)

(declare-fun lt!1156959 () List!37117)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1045 (LexerInterface!4991 List!37119 List!37117 Token!10170) Unit!52158)

(assert (=> b!3401833 (= lt!1156963 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1045 thiss!18206 rules!2135 lt!1156959 (h!42414 tokens!494)))))

(declare-fun lt!1156964 () Unit!52158)

(declare-fun lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!980 (LexerInterface!4991 List!37119 List!37118 Token!10170) Unit!52158)

(assert (=> b!3401833 (= lt!1156964 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!980 thiss!18206 rules!2135 tokens!494 (h!42414 tokens!494)))))

(declare-fun b!3401834 () Bool)

(declare-fun tp!1061523 () Bool)

(declare-fun e!2111669 () Bool)

(declare-fun inv!50102 (String!41494) Bool)

(declare-fun inv!50106 (TokenValueInjection!10692) Bool)

(assert (=> b!3401834 (= e!2111679 (and tp!1061523 (inv!50102 (tag!5986 (rule!7966 (h!42414 tokens!494)))) (inv!50106 (transformation!5402 (rule!7966 (h!42414 tokens!494)))) e!2111669))))

(declare-fun b!3401835 () Bool)

(declare-fun res!1376467 () Bool)

(assert (=> b!3401835 (=> (not res!1376467) (not e!2111678))))

(declare-fun rulesProduceEachTokenIndividually!1442 (LexerInterface!4991 List!37119 BalanceConc!21974) Bool)

(declare-fun seqFromList!3857 (List!37118) BalanceConc!21974)

(assert (=> b!3401835 (= res!1376467 (rulesProduceEachTokenIndividually!1442 thiss!18206 rules!2135 (seqFromList!3857 tokens!494)))))

(declare-fun b!3401836 () Bool)

(declare-fun res!1376474 () Bool)

(assert (=> b!3401836 (=> (not res!1376474) (not e!2111678))))

(declare-fun isEmpty!21264 (List!37119) Bool)

(assert (=> b!3401836 (= res!1376474 (not (isEmpty!21264 rules!2135)))))

(declare-fun b!3401837 () Bool)

(declare-fun res!1376459 () Bool)

(assert (=> b!3401837 (=> (not res!1376459) (not e!2111678))))

(declare-fun rulesProduceIndividualToken!2483 (LexerInterface!4991 List!37119 Token!10170) Bool)

(assert (=> b!3401837 (= res!1376459 (rulesProduceIndividualToken!2483 thiss!18206 rules!2135 separatorToken!241))))

(declare-fun b!3401838 () Bool)

(declare-fun res!1376470 () Bool)

(assert (=> b!3401838 (=> (not res!1376470) (not e!2111678))))

(declare-fun lambda!121023 () Int)

(declare-fun forall!7829 (List!37118 Int) Bool)

(assert (=> b!3401838 (= res!1376470 (forall!7829 tokens!494 lambda!121023))))

(declare-fun b!3401839 () Bool)

(declare-fun res!1376476 () Bool)

(declare-fun e!2111660 () Bool)

(assert (=> b!3401839 (=> res!1376476 e!2111660)))

(declare-fun isEmpty!21265 (BalanceConc!21974) Bool)

(declare-datatypes ((tuple2!36634 0))(
  ( (tuple2!36635 (_1!21451 BalanceConc!21974) (_2!21451 BalanceConc!21972)) )
))
(declare-fun lex!2317 (LexerInterface!4991 List!37119 BalanceConc!21972) tuple2!36634)

(declare-fun seqFromList!3858 (List!37117) BalanceConc!21972)

(assert (=> b!3401839 (= res!1376476 (isEmpty!21265 (_1!21451 (lex!2317 thiss!18206 rules!2135 (seqFromList!3858 lt!1156959)))))))

(declare-fun b!3401840 () Bool)

(declare-fun res!1376469 () Bool)

(assert (=> b!3401840 (=> (not res!1376469) (not e!2111678))))

(assert (=> b!3401840 (= res!1376469 (isSeparator!5402 (rule!7966 separatorToken!241)))))

(declare-fun b!3401841 () Bool)

(declare-fun res!1376465 () Bool)

(assert (=> b!3401841 (=> (not res!1376465) (not e!2111678))))

(declare-fun rulesInvariant!4388 (LexerInterface!4991 List!37119) Bool)

(assert (=> b!3401841 (= res!1376465 (rulesInvariant!4388 thiss!18206 rules!2135))))

(declare-fun b!3401842 () Bool)

(assert (=> b!3401842 (= e!2111660 e!2111668)))

(declare-fun res!1376473 () Bool)

(assert (=> b!3401842 (=> res!1376473 e!2111668)))

(assert (=> b!3401842 (= res!1376473 (or (isSeparator!5402 (rule!7966 (h!42414 tokens!494))) (isSeparator!5402 (rule!7966 (h!42414 (t!266055 tokens!494))))))))

(declare-fun lt!1156960 () Unit!52158)

(declare-fun forallContained!1349 (List!37118 Int Token!10170) Unit!52158)

(assert (=> b!3401842 (= lt!1156960 (forallContained!1349 tokens!494 lambda!121023 (h!42414 (t!266055 tokens!494))))))

(declare-fun lt!1156971 () Unit!52158)

(assert (=> b!3401842 (= lt!1156971 (forallContained!1349 tokens!494 lambda!121023 (h!42414 tokens!494)))))

(declare-fun b!3401843 () Bool)

(declare-fun res!1376460 () Bool)

(assert (=> b!3401843 (=> (not res!1376460) (not e!2111678))))

(assert (=> b!3401843 (= res!1376460 (and (not ((_ is Nil!36994) tokens!494)) (not ((_ is Nil!36994) (t!266055 tokens!494)))))))

(declare-fun tp!1061524 () Bool)

(declare-fun b!3401844 () Bool)

(assert (=> b!3401844 (= e!2111673 (and (inv!50105 (h!42414 tokens!494)) e!2111661 tp!1061524))))

(declare-fun e!2111657 () Bool)

(assert (=> b!3401845 (= e!2111657 (and tp!1061528 tp!1061534))))

(declare-fun tp!1061533 () Bool)

(declare-fun b!3401846 () Bool)

(assert (=> b!3401846 (= e!2111672 (and tp!1061533 (inv!50102 (tag!5986 (rule!7966 separatorToken!241))) (inv!50106 (transformation!5402 (rule!7966 separatorToken!241))) e!2111657))))

(declare-fun b!3401847 () Bool)

(declare-fun e!2111659 () Bool)

(declare-fun tp!1061531 () Bool)

(assert (=> b!3401847 (= e!2111680 (and e!2111659 tp!1061531))))

(declare-fun b!3401848 () Bool)

(declare-fun res!1376472 () Bool)

(assert (=> b!3401848 (=> res!1376472 e!2111660)))

(assert (=> b!3401848 (= res!1376472 (not (rulesProduceIndividualToken!2483 thiss!18206 rules!2135 (h!42414 tokens!494))))))

(declare-fun b!3401849 () Bool)

(assert (=> b!3401849 (= e!2111671 e!2111667)))

(declare-fun res!1376461 () Bool)

(assert (=> b!3401849 (=> (not res!1376461) (not e!2111667))))

(declare-fun matchR!4745 (Regex!10161 List!37117) Bool)

(assert (=> b!3401849 (= res!1376461 (matchR!4745 (regex!5402 lt!1156961) lt!1156959))))

(declare-fun get!11814 (Option!7444) Rule!10604)

(assert (=> b!3401849 (= lt!1156961 (get!11814 lt!1156972))))

(declare-fun b!3401850 () Bool)

(declare-fun res!1376466 () Bool)

(assert (=> b!3401850 (=> (not res!1376466) (not e!2111678))))

(declare-fun sepAndNonSepRulesDisjointChars!1596 (List!37119 List!37119) Bool)

(assert (=> b!3401850 (= res!1376466 (sepAndNonSepRulesDisjointChars!1596 rules!2135 rules!2135))))

(declare-fun e!2111658 () Bool)

(declare-fun b!3401851 () Bool)

(declare-fun tp!1061525 () Bool)

(assert (=> b!3401851 (= e!2111659 (and tp!1061525 (inv!50102 (tag!5986 (h!42415 rules!2135))) (inv!50106 (transformation!5402 (h!42415 rules!2135))) e!2111658))))

(assert (=> b!3401852 (= e!2111669 (and tp!1061529 tp!1061532))))

(declare-fun b!3401853 () Bool)

(declare-fun e!2111662 () Bool)

(assert (=> b!3401853 (= e!2111662 e!2111675)))

(declare-fun res!1376463 () Bool)

(assert (=> b!3401853 (=> res!1376463 e!2111675)))

(declare-fun lt!1156955 () List!37117)

(assert (=> b!3401853 (= res!1376463 (not (= lt!1156957 lt!1156955)))))

(declare-fun lt!1156969 () List!37117)

(assert (=> b!3401853 (= lt!1156969 lt!1156955)))

(assert (=> b!3401853 (= lt!1156955 (++!9077 lt!1156959 lt!1156966))))

(declare-fun lt!1156958 () Unit!52158)

(declare-fun lemmaConcatAssociativity!1908 (List!37117 List!37117 List!37117) Unit!52158)

(assert (=> b!3401853 (= lt!1156958 (lemmaConcatAssociativity!1908 lt!1156959 lt!1156968 lt!1156962))))

(assert (=> b!3401854 (= e!2111658 (and tp!1061522 tp!1061527))))

(declare-fun b!3401855 () Bool)

(assert (=> b!3401855 (= e!2111665 e!2111660)))

(declare-fun res!1376464 () Bool)

(assert (=> b!3401855 (=> res!1376464 e!2111660)))

(assert (=> b!3401855 (= res!1376464 (or (not (= lt!1156970 lt!1156959)) (not (= lt!1156967 lt!1156959))))))

(assert (=> b!3401855 (= lt!1156959 (list!13419 (charsOf!3416 (h!42414 tokens!494))))))

(declare-fun b!3401856 () Bool)

(assert (=> b!3401856 (= e!2111666 e!2111662)))

(declare-fun res!1376475 () Bool)

(assert (=> b!3401856 (=> res!1376475 e!2111662)))

(assert (=> b!3401856 (= res!1376475 (not (= lt!1156957 lt!1156969)))))

(assert (=> b!3401856 (= lt!1156969 (++!9077 (++!9077 lt!1156959 lt!1156968) lt!1156962))))

(assert (= (and start!317822 res!1376477) b!3401836))

(assert (= (and b!3401836 res!1376474) b!3401841))

(assert (= (and b!3401841 res!1376465) b!3401835))

(assert (= (and b!3401835 res!1376467) b!3401837))

(assert (= (and b!3401837 res!1376459) b!3401840))

(assert (= (and b!3401840 res!1376469) b!3401838))

(assert (= (and b!3401838 res!1376470) b!3401850))

(assert (= (and b!3401850 res!1376466) b!3401843))

(assert (= (and b!3401843 res!1376460) b!3401828))

(assert (= (and b!3401828 (not res!1376468)) b!3401855))

(assert (= (and b!3401855 (not res!1376464)) b!3401848))

(assert (= (and b!3401848 (not res!1376472)) b!3401839))

(assert (= (and b!3401839 (not res!1376476)) b!3401842))

(assert (= (and b!3401842 (not res!1376473)) b!3401829))

(assert (= (and b!3401829 (not res!1376462)) b!3401856))

(assert (= (and b!3401856 (not res!1376475)) b!3401853))

(assert (= (and b!3401853 (not res!1376463)) b!3401833))

(assert (= (and b!3401833 res!1376471) b!3401849))

(assert (= (and b!3401849 res!1376461) b!3401831))

(assert (= b!3401851 b!3401854))

(assert (= b!3401847 b!3401851))

(assert (= (and start!317822 ((_ is Cons!36995) rules!2135)) b!3401847))

(assert (= b!3401834 b!3401852))

(assert (= b!3401832 b!3401834))

(assert (= b!3401844 b!3401832))

(assert (= (and start!317822 ((_ is Cons!36994) tokens!494)) b!3401844))

(assert (= b!3401846 b!3401845))

(assert (= b!3401830 b!3401846))

(assert (= start!317822 b!3401830))

(declare-fun m!3774907 () Bool)

(assert (=> b!3401848 m!3774907))

(declare-fun m!3774909 () Bool)

(assert (=> b!3401844 m!3774909))

(declare-fun m!3774911 () Bool)

(assert (=> b!3401853 m!3774911))

(declare-fun m!3774913 () Bool)

(assert (=> b!3401853 m!3774913))

(declare-fun m!3774915 () Bool)

(assert (=> b!3401834 m!3774915))

(declare-fun m!3774917 () Bool)

(assert (=> b!3401834 m!3774917))

(declare-fun m!3774919 () Bool)

(assert (=> b!3401842 m!3774919))

(declare-fun m!3774921 () Bool)

(assert (=> b!3401842 m!3774921))

(declare-fun m!3774923 () Bool)

(assert (=> b!3401846 m!3774923))

(declare-fun m!3774925 () Bool)

(assert (=> b!3401846 m!3774925))

(declare-fun m!3774927 () Bool)

(assert (=> start!317822 m!3774927))

(declare-fun m!3774929 () Bool)

(assert (=> b!3401838 m!3774929))

(declare-fun m!3774931 () Bool)

(assert (=> b!3401830 m!3774931))

(declare-fun m!3774933 () Bool)

(assert (=> b!3401851 m!3774933))

(declare-fun m!3774935 () Bool)

(assert (=> b!3401851 m!3774935))

(declare-fun m!3774937 () Bool)

(assert (=> b!3401849 m!3774937))

(declare-fun m!3774939 () Bool)

(assert (=> b!3401849 m!3774939))

(declare-fun m!3774941 () Bool)

(assert (=> b!3401837 m!3774941))

(declare-fun m!3774943 () Bool)

(assert (=> b!3401828 m!3774943))

(declare-fun m!3774945 () Bool)

(assert (=> b!3401828 m!3774945))

(declare-fun m!3774947 () Bool)

(assert (=> b!3401828 m!3774947))

(declare-fun m!3774949 () Bool)

(assert (=> b!3401828 m!3774949))

(declare-fun m!3774951 () Bool)

(assert (=> b!3401828 m!3774951))

(declare-fun m!3774953 () Bool)

(assert (=> b!3401839 m!3774953))

(assert (=> b!3401839 m!3774953))

(declare-fun m!3774955 () Bool)

(assert (=> b!3401839 m!3774955))

(declare-fun m!3774957 () Bool)

(assert (=> b!3401839 m!3774957))

(declare-fun m!3774959 () Bool)

(assert (=> b!3401841 m!3774959))

(declare-fun m!3774961 () Bool)

(assert (=> b!3401836 m!3774961))

(declare-fun m!3774963 () Bool)

(assert (=> b!3401829 m!3774963))

(declare-fun m!3774965 () Bool)

(assert (=> b!3401829 m!3774965))

(declare-fun m!3774967 () Bool)

(assert (=> b!3401829 m!3774967))

(declare-fun m!3774969 () Bool)

(assert (=> b!3401829 m!3774969))

(assert (=> b!3401829 m!3774963))

(declare-fun m!3774971 () Bool)

(assert (=> b!3401829 m!3774971))

(declare-fun m!3774973 () Bool)

(assert (=> b!3401829 m!3774973))

(assert (=> b!3401829 m!3774965))

(declare-fun m!3774975 () Bool)

(assert (=> b!3401829 m!3774975))

(assert (=> b!3401829 m!3774971))

(declare-fun m!3774977 () Bool)

(assert (=> b!3401829 m!3774977))

(declare-fun m!3774979 () Bool)

(assert (=> b!3401829 m!3774979))

(assert (=> b!3401829 m!3774977))

(assert (=> b!3401829 m!3774973))

(declare-fun m!3774981 () Bool)

(assert (=> b!3401829 m!3774981))

(declare-fun m!3774983 () Bool)

(assert (=> b!3401850 m!3774983))

(declare-fun m!3774985 () Bool)

(assert (=> b!3401833 m!3774985))

(declare-fun m!3774987 () Bool)

(assert (=> b!3401833 m!3774987))

(declare-fun m!3774989 () Bool)

(assert (=> b!3401833 m!3774989))

(declare-fun m!3774991 () Bool)

(assert (=> b!3401833 m!3774991))

(declare-fun m!3774993 () Bool)

(assert (=> b!3401833 m!3774993))

(declare-fun m!3774995 () Bool)

(assert (=> b!3401832 m!3774995))

(declare-fun m!3774997 () Bool)

(assert (=> b!3401855 m!3774997))

(assert (=> b!3401855 m!3774997))

(declare-fun m!3774999 () Bool)

(assert (=> b!3401855 m!3774999))

(declare-fun m!3775001 () Bool)

(assert (=> b!3401835 m!3775001))

(assert (=> b!3401835 m!3775001))

(declare-fun m!3775003 () Bool)

(assert (=> b!3401835 m!3775003))

(declare-fun m!3775005 () Bool)

(assert (=> b!3401856 m!3775005))

(assert (=> b!3401856 m!3775005))

(declare-fun m!3775007 () Bool)

(assert (=> b!3401856 m!3775007))

(check-sat (not start!317822) (not b!3401841) (not b_next!89795) (not b_next!89793) (not b_next!89801) (not b!3401850) (not b!3401851) (not b!3401836) (not b!3401856) (not b!3401849) (not b!3401839) (not b!3401835) (not b_next!89803) (not b!3401832) (not b_next!89797) (not b!3401830) (not b!3401846) b_and!237459 b_and!237461 (not b!3401844) (not b!3401834) (not b!3401842) (not b_next!89799) (not b!3401828) (not b!3401838) (not b!3401855) b_and!237455 b_and!237457 (not b!3401829) (not b!3401848) b_and!237463 (not b!3401847) (not b!3401853) (not b!3401837) b_and!237465 (not b!3401833))
(check-sat (not b_next!89803) (not b_next!89797) b_and!237459 b_and!237461 (not b_next!89799) (not b_next!89795) (not b_next!89793) (not b_next!89801) b_and!237463 b_and!237465 b_and!237455 b_and!237457)
(get-model)

(declare-fun d!967948 () Bool)

(declare-fun res!1376500 () Bool)

(declare-fun e!2111703 () Bool)

(assert (=> d!967948 (=> res!1376500 e!2111703)))

(assert (=> d!967948 (= res!1376500 ((_ is Nil!36994) tokens!494))))

(assert (=> d!967948 (= (forall!7829 tokens!494 lambda!121023) e!2111703)))

(declare-fun b!3401890 () Bool)

(declare-fun e!2111704 () Bool)

(assert (=> b!3401890 (= e!2111703 e!2111704)))

(declare-fun res!1376501 () Bool)

(assert (=> b!3401890 (=> (not res!1376501) (not e!2111704))))

(declare-fun dynLambda!15451 (Int Token!10170) Bool)

(assert (=> b!3401890 (= res!1376501 (dynLambda!15451 lambda!121023 (h!42414 tokens!494)))))

(declare-fun b!3401891 () Bool)

(assert (=> b!3401891 (= e!2111704 (forall!7829 (t!266055 tokens!494) lambda!121023))))

(assert (= (and d!967948 (not res!1376500)) b!3401890))

(assert (= (and b!3401890 res!1376501) b!3401891))

(declare-fun b_lambda!97091 () Bool)

(assert (=> (not b_lambda!97091) (not b!3401890)))

(declare-fun m!3775057 () Bool)

(assert (=> b!3401890 m!3775057))

(declare-fun m!3775059 () Bool)

(assert (=> b!3401891 m!3775059))

(assert (=> b!3401838 d!967948))

(declare-fun d!967952 () Bool)

(declare-fun lt!1157004 () Bool)

(declare-fun e!2111722 () Bool)

(assert (=> d!967952 (= lt!1157004 e!2111722)))

(declare-fun res!1376517 () Bool)

(assert (=> d!967952 (=> (not res!1376517) (not e!2111722))))

(declare-fun list!13420 (BalanceConc!21974) List!37118)

(assert (=> d!967952 (= res!1376517 (= (list!13420 (_1!21451 (lex!2317 thiss!18206 rules!2135 (print!2056 thiss!18206 (singletonSeq!2498 separatorToken!241))))) (list!13420 (singletonSeq!2498 separatorToken!241))))))

(declare-fun e!2111721 () Bool)

(assert (=> d!967952 (= lt!1157004 e!2111721)))

(declare-fun res!1376518 () Bool)

(assert (=> d!967952 (=> (not res!1376518) (not e!2111721))))

(declare-fun lt!1157005 () tuple2!36634)

(declare-fun size!28014 (BalanceConc!21974) Int)

(assert (=> d!967952 (= res!1376518 (= (size!28014 (_1!21451 lt!1157005)) 1))))

(assert (=> d!967952 (= lt!1157005 (lex!2317 thiss!18206 rules!2135 (print!2056 thiss!18206 (singletonSeq!2498 separatorToken!241))))))

(assert (=> d!967952 (not (isEmpty!21264 rules!2135))))

(assert (=> d!967952 (= (rulesProduceIndividualToken!2483 thiss!18206 rules!2135 separatorToken!241) lt!1157004)))

(declare-fun b!3401918 () Bool)

(declare-fun res!1376519 () Bool)

(assert (=> b!3401918 (=> (not res!1376519) (not e!2111721))))

(declare-fun apply!8638 (BalanceConc!21974 Int) Token!10170)

(assert (=> b!3401918 (= res!1376519 (= (apply!8638 (_1!21451 lt!1157005) 0) separatorToken!241))))

(declare-fun b!3401919 () Bool)

(declare-fun isEmpty!21266 (BalanceConc!21972) Bool)

(assert (=> b!3401919 (= e!2111721 (isEmpty!21266 (_2!21451 lt!1157005)))))

(declare-fun b!3401920 () Bool)

(assert (=> b!3401920 (= e!2111722 (isEmpty!21266 (_2!21451 (lex!2317 thiss!18206 rules!2135 (print!2056 thiss!18206 (singletonSeq!2498 separatorToken!241))))))))

(assert (= (and d!967952 res!1376518) b!3401918))

(assert (= (and b!3401918 res!1376519) b!3401919))

(assert (= (and d!967952 res!1376517) b!3401920))

(declare-fun m!3775093 () Bool)

(assert (=> d!967952 m!3775093))

(declare-fun m!3775095 () Bool)

(assert (=> d!967952 m!3775095))

(declare-fun m!3775097 () Bool)

(assert (=> d!967952 m!3775097))

(declare-fun m!3775099 () Bool)

(assert (=> d!967952 m!3775099))

(declare-fun m!3775101 () Bool)

(assert (=> d!967952 m!3775101))

(declare-fun m!3775103 () Bool)

(assert (=> d!967952 m!3775103))

(assert (=> d!967952 m!3774961))

(assert (=> d!967952 m!3775093))

(assert (=> d!967952 m!3775093))

(assert (=> d!967952 m!3775097))

(declare-fun m!3775105 () Bool)

(assert (=> b!3401918 m!3775105))

(declare-fun m!3775107 () Bool)

(assert (=> b!3401919 m!3775107))

(assert (=> b!3401920 m!3775093))

(assert (=> b!3401920 m!3775093))

(assert (=> b!3401920 m!3775097))

(assert (=> b!3401920 m!3775097))

(assert (=> b!3401920 m!3775099))

(declare-fun m!3775109 () Bool)

(assert (=> b!3401920 m!3775109))

(assert (=> b!3401837 d!967952))

(declare-fun lt!1157008 () Bool)

(declare-fun d!967966 () Bool)

(declare-fun isEmpty!21267 (List!37118) Bool)

(assert (=> d!967966 (= lt!1157008 (isEmpty!21267 (list!13420 (_1!21451 (lex!2317 thiss!18206 rules!2135 (seqFromList!3858 lt!1156959))))))))

(declare-fun isEmpty!21268 (Conc!11180) Bool)

(assert (=> d!967966 (= lt!1157008 (isEmpty!21268 (c!579904 (_1!21451 (lex!2317 thiss!18206 rules!2135 (seqFromList!3858 lt!1156959))))))))

(assert (=> d!967966 (= (isEmpty!21265 (_1!21451 (lex!2317 thiss!18206 rules!2135 (seqFromList!3858 lt!1156959)))) lt!1157008)))

(declare-fun bs!556354 () Bool)

(assert (= bs!556354 d!967966))

(declare-fun m!3775111 () Bool)

(assert (=> bs!556354 m!3775111))

(assert (=> bs!556354 m!3775111))

(declare-fun m!3775113 () Bool)

(assert (=> bs!556354 m!3775113))

(declare-fun m!3775115 () Bool)

(assert (=> bs!556354 m!3775115))

(assert (=> b!3401839 d!967966))

(declare-fun d!967968 () Bool)

(declare-fun e!2111747 () Bool)

(assert (=> d!967968 e!2111747))

(declare-fun res!1376546 () Bool)

(assert (=> d!967968 (=> (not res!1376546) (not e!2111747))))

(declare-fun e!2111745 () Bool)

(assert (=> d!967968 (= res!1376546 e!2111745)))

(declare-fun c!579924 () Bool)

(declare-fun lt!1157030 () tuple2!36634)

(assert (=> d!967968 (= c!579924 (> (size!28014 (_1!21451 lt!1157030)) 0))))

(declare-fun lexTailRecV2!1031 (LexerInterface!4991 List!37119 BalanceConc!21972 BalanceConc!21972 BalanceConc!21972 BalanceConc!21974) tuple2!36634)

(assert (=> d!967968 (= lt!1157030 (lexTailRecV2!1031 thiss!18206 rules!2135 (seqFromList!3858 lt!1156959) (BalanceConc!21973 Empty!11179) (seqFromList!3858 lt!1156959) (BalanceConc!21975 Empty!11180)))))

(assert (=> d!967968 (= (lex!2317 thiss!18206 rules!2135 (seqFromList!3858 lt!1156959)) lt!1157030)))

(declare-fun b!3401956 () Bool)

(declare-fun e!2111746 () Bool)

(assert (=> b!3401956 (= e!2111745 e!2111746)))

(declare-fun res!1376547 () Bool)

(declare-fun size!28016 (BalanceConc!21972) Int)

(assert (=> b!3401956 (= res!1376547 (< (size!28016 (_2!21451 lt!1157030)) (size!28016 (seqFromList!3858 lt!1156959))))))

(assert (=> b!3401956 (=> (not res!1376547) (not e!2111746))))

(declare-fun b!3401957 () Bool)

(assert (=> b!3401957 (= e!2111746 (not (isEmpty!21265 (_1!21451 lt!1157030))))))

(declare-fun b!3401958 () Bool)

(declare-fun res!1376545 () Bool)

(assert (=> b!3401958 (=> (not res!1376545) (not e!2111747))))

(declare-datatypes ((tuple2!36636 0))(
  ( (tuple2!36637 (_1!21452 List!37118) (_2!21452 List!37117)) )
))
(declare-fun lexList!1423 (LexerInterface!4991 List!37119 List!37117) tuple2!36636)

(assert (=> b!3401958 (= res!1376545 (= (list!13420 (_1!21451 lt!1157030)) (_1!21452 (lexList!1423 thiss!18206 rules!2135 (list!13419 (seqFromList!3858 lt!1156959))))))))

(declare-fun b!3401959 () Bool)

(assert (=> b!3401959 (= e!2111747 (= (list!13419 (_2!21451 lt!1157030)) (_2!21452 (lexList!1423 thiss!18206 rules!2135 (list!13419 (seqFromList!3858 lt!1156959))))))))

(declare-fun b!3401960 () Bool)

(assert (=> b!3401960 (= e!2111745 (= (_2!21451 lt!1157030) (seqFromList!3858 lt!1156959)))))

(assert (= (and d!967968 c!579924) b!3401956))

(assert (= (and d!967968 (not c!579924)) b!3401960))

(assert (= (and b!3401956 res!1376547) b!3401957))

(assert (= (and d!967968 res!1376546) b!3401958))

(assert (= (and b!3401958 res!1376545) b!3401959))

(declare-fun m!3775171 () Bool)

(assert (=> b!3401956 m!3775171))

(assert (=> b!3401956 m!3774953))

(declare-fun m!3775173 () Bool)

(assert (=> b!3401956 m!3775173))

(declare-fun m!3775175 () Bool)

(assert (=> b!3401959 m!3775175))

(assert (=> b!3401959 m!3774953))

(declare-fun m!3775177 () Bool)

(assert (=> b!3401959 m!3775177))

(assert (=> b!3401959 m!3775177))

(declare-fun m!3775179 () Bool)

(assert (=> b!3401959 m!3775179))

(declare-fun m!3775181 () Bool)

(assert (=> b!3401957 m!3775181))

(declare-fun m!3775183 () Bool)

(assert (=> d!967968 m!3775183))

(assert (=> d!967968 m!3774953))

(assert (=> d!967968 m!3774953))

(declare-fun m!3775185 () Bool)

(assert (=> d!967968 m!3775185))

(declare-fun m!3775187 () Bool)

(assert (=> b!3401958 m!3775187))

(assert (=> b!3401958 m!3774953))

(assert (=> b!3401958 m!3775177))

(assert (=> b!3401958 m!3775177))

(assert (=> b!3401958 m!3775179))

(assert (=> b!3401839 d!967968))

(declare-fun d!967982 () Bool)

(declare-fun fromListB!1732 (List!37117) BalanceConc!21972)

(assert (=> d!967982 (= (seqFromList!3858 lt!1156959) (fromListB!1732 lt!1156959))))

(declare-fun bs!556357 () Bool)

(assert (= bs!556357 d!967982))

(declare-fun m!3775189 () Bool)

(assert (=> bs!556357 m!3775189))

(assert (=> b!3401839 d!967982))

(declare-fun d!967984 () Bool)

(assert (=> d!967984 (dynLambda!15451 lambda!121023 (h!42414 (t!266055 tokens!494)))))

(declare-fun lt!1157033 () Unit!52158)

(declare-fun choose!19731 (List!37118 Int Token!10170) Unit!52158)

(assert (=> d!967984 (= lt!1157033 (choose!19731 tokens!494 lambda!121023 (h!42414 (t!266055 tokens!494))))))

(declare-fun e!2111750 () Bool)

(assert (=> d!967984 e!2111750))

(declare-fun res!1376550 () Bool)

(assert (=> d!967984 (=> (not res!1376550) (not e!2111750))))

(assert (=> d!967984 (= res!1376550 (forall!7829 tokens!494 lambda!121023))))

(assert (=> d!967984 (= (forallContained!1349 tokens!494 lambda!121023 (h!42414 (t!266055 tokens!494))) lt!1157033)))

(declare-fun b!3401963 () Bool)

(declare-fun contains!6802 (List!37118 Token!10170) Bool)

(assert (=> b!3401963 (= e!2111750 (contains!6802 tokens!494 (h!42414 (t!266055 tokens!494))))))

(assert (= (and d!967984 res!1376550) b!3401963))

(declare-fun b_lambda!97099 () Bool)

(assert (=> (not b_lambda!97099) (not d!967984)))

(declare-fun m!3775191 () Bool)

(assert (=> d!967984 m!3775191))

(declare-fun m!3775193 () Bool)

(assert (=> d!967984 m!3775193))

(assert (=> d!967984 m!3774929))

(declare-fun m!3775195 () Bool)

(assert (=> b!3401963 m!3775195))

(assert (=> b!3401842 d!967984))

(declare-fun d!967986 () Bool)

(assert (=> d!967986 (dynLambda!15451 lambda!121023 (h!42414 tokens!494))))

(declare-fun lt!1157034 () Unit!52158)

(assert (=> d!967986 (= lt!1157034 (choose!19731 tokens!494 lambda!121023 (h!42414 tokens!494)))))

(declare-fun e!2111751 () Bool)

(assert (=> d!967986 e!2111751))

(declare-fun res!1376551 () Bool)

(assert (=> d!967986 (=> (not res!1376551) (not e!2111751))))

(assert (=> d!967986 (= res!1376551 (forall!7829 tokens!494 lambda!121023))))

(assert (=> d!967986 (= (forallContained!1349 tokens!494 lambda!121023 (h!42414 tokens!494)) lt!1157034)))

(declare-fun b!3401964 () Bool)

(assert (=> b!3401964 (= e!2111751 (contains!6802 tokens!494 (h!42414 tokens!494)))))

(assert (= (and d!967986 res!1376551) b!3401964))

(declare-fun b_lambda!97101 () Bool)

(assert (=> (not b_lambda!97101) (not d!967986)))

(assert (=> d!967986 m!3775057))

(declare-fun m!3775197 () Bool)

(assert (=> d!967986 m!3775197))

(assert (=> d!967986 m!3774929))

(declare-fun m!3775199 () Bool)

(assert (=> b!3401964 m!3775199))

(assert (=> b!3401842 d!967986))

(declare-fun d!967988 () Bool)

(declare-fun res!1376554 () Bool)

(declare-fun e!2111754 () Bool)

(assert (=> d!967988 (=> (not res!1376554) (not e!2111754))))

(declare-fun rulesValid!2018 (LexerInterface!4991 List!37119) Bool)

(assert (=> d!967988 (= res!1376554 (rulesValid!2018 thiss!18206 rules!2135))))

(assert (=> d!967988 (= (rulesInvariant!4388 thiss!18206 rules!2135) e!2111754)))

(declare-fun b!3401967 () Bool)

(declare-datatypes ((List!37120 0))(
  ( (Nil!36996) (Cons!36996 (h!42416 String!41494) (t!266131 List!37120)) )
))
(declare-fun noDuplicateTag!2014 (LexerInterface!4991 List!37119 List!37120) Bool)

(assert (=> b!3401967 (= e!2111754 (noDuplicateTag!2014 thiss!18206 rules!2135 Nil!36996))))

(assert (= (and d!967988 res!1376554) b!3401967))

(declare-fun m!3775201 () Bool)

(assert (=> d!967988 m!3775201))

(declare-fun m!3775203 () Bool)

(assert (=> b!3401967 m!3775203))

(assert (=> b!3401841 d!967988))

(declare-fun d!967990 () Bool)

(declare-fun res!1376559 () Bool)

(declare-fun e!2111757 () Bool)

(assert (=> d!967990 (=> (not res!1376559) (not e!2111757))))

(declare-fun isEmpty!21270 (List!37117) Bool)

(assert (=> d!967990 (= res!1376559 (not (isEmpty!21270 (originalCharacters!6116 (h!42414 tokens!494)))))))

(assert (=> d!967990 (= (inv!50105 (h!42414 tokens!494)) e!2111757)))

(declare-fun b!3401972 () Bool)

(declare-fun res!1376560 () Bool)

(assert (=> b!3401972 (=> (not res!1376560) (not e!2111757))))

(declare-fun dynLambda!15453 (Int TokenValue!5632) BalanceConc!21972)

(assert (=> b!3401972 (= res!1376560 (= (originalCharacters!6116 (h!42414 tokens!494)) (list!13419 (dynLambda!15453 (toChars!7469 (transformation!5402 (rule!7966 (h!42414 tokens!494)))) (value!174417 (h!42414 tokens!494))))))))

(declare-fun b!3401973 () Bool)

(declare-fun size!28018 (List!37117) Int)

(assert (=> b!3401973 (= e!2111757 (= (size!28013 (h!42414 tokens!494)) (size!28018 (originalCharacters!6116 (h!42414 tokens!494)))))))

(assert (= (and d!967990 res!1376559) b!3401972))

(assert (= (and b!3401972 res!1376560) b!3401973))

(declare-fun b_lambda!97103 () Bool)

(assert (=> (not b_lambda!97103) (not b!3401972)))

(declare-fun t!266067 () Bool)

(declare-fun tb!182441 () Bool)

(assert (=> (and b!3401852 (= (toChars!7469 (transformation!5402 (rule!7966 (h!42414 tokens!494)))) (toChars!7469 (transformation!5402 (rule!7966 (h!42414 tokens!494))))) t!266067) tb!182441))

(declare-fun b!3401978 () Bool)

(declare-fun e!2111760 () Bool)

(declare-fun tp!1061540 () Bool)

(declare-fun inv!50109 (Conc!11179) Bool)

(assert (=> b!3401978 (= e!2111760 (and (inv!50109 (c!579903 (dynLambda!15453 (toChars!7469 (transformation!5402 (rule!7966 (h!42414 tokens!494)))) (value!174417 (h!42414 tokens!494))))) tp!1061540))))

(declare-fun result!226104 () Bool)

(declare-fun inv!50110 (BalanceConc!21972) Bool)

(assert (=> tb!182441 (= result!226104 (and (inv!50110 (dynLambda!15453 (toChars!7469 (transformation!5402 (rule!7966 (h!42414 tokens!494)))) (value!174417 (h!42414 tokens!494)))) e!2111760))))

(assert (= tb!182441 b!3401978))

(declare-fun m!3775205 () Bool)

(assert (=> b!3401978 m!3775205))

(declare-fun m!3775207 () Bool)

(assert (=> tb!182441 m!3775207))

(assert (=> b!3401972 t!266067))

(declare-fun b_and!237473 () Bool)

(assert (= b_and!237457 (and (=> t!266067 result!226104) b_and!237473)))

(declare-fun tb!182443 () Bool)

(declare-fun t!266069 () Bool)

(assert (=> (and b!3401854 (= (toChars!7469 (transformation!5402 (h!42415 rules!2135))) (toChars!7469 (transformation!5402 (rule!7966 (h!42414 tokens!494))))) t!266069) tb!182443))

(declare-fun result!226108 () Bool)

(assert (= result!226108 result!226104))

(assert (=> b!3401972 t!266069))

(declare-fun b_and!237475 () Bool)

(assert (= b_and!237461 (and (=> t!266069 result!226108) b_and!237475)))

(declare-fun tb!182445 () Bool)

(declare-fun t!266071 () Bool)

(assert (=> (and b!3401845 (= (toChars!7469 (transformation!5402 (rule!7966 separatorToken!241))) (toChars!7469 (transformation!5402 (rule!7966 (h!42414 tokens!494))))) t!266071) tb!182445))

(declare-fun result!226110 () Bool)

(assert (= result!226110 result!226104))

(assert (=> b!3401972 t!266071))

(declare-fun b_and!237477 () Bool)

(assert (= b_and!237465 (and (=> t!266071 result!226110) b_and!237477)))

(declare-fun m!3775209 () Bool)

(assert (=> d!967990 m!3775209))

(declare-fun m!3775211 () Bool)

(assert (=> b!3401972 m!3775211))

(assert (=> b!3401972 m!3775211))

(declare-fun m!3775213 () Bool)

(assert (=> b!3401972 m!3775213))

(declare-fun m!3775215 () Bool)

(assert (=> b!3401973 m!3775215))

(assert (=> b!3401844 d!967990))

(declare-fun d!967992 () Bool)

(assert (=> d!967992 (= (inv!50102 (tag!5986 (rule!7966 separatorToken!241))) (= (mod (str.len (value!174416 (tag!5986 (rule!7966 separatorToken!241)))) 2) 0))))

(assert (=> b!3401846 d!967992))

(declare-fun d!967994 () Bool)

(declare-fun res!1376563 () Bool)

(declare-fun e!2111763 () Bool)

(assert (=> d!967994 (=> (not res!1376563) (not e!2111763))))

(declare-fun semiInverseModEq!2258 (Int Int) Bool)

(assert (=> d!967994 (= res!1376563 (semiInverseModEq!2258 (toChars!7469 (transformation!5402 (rule!7966 separatorToken!241))) (toValue!7610 (transformation!5402 (rule!7966 separatorToken!241)))))))

(assert (=> d!967994 (= (inv!50106 (transformation!5402 (rule!7966 separatorToken!241))) e!2111763)))

(declare-fun b!3401981 () Bool)

(declare-fun equivClasses!2157 (Int Int) Bool)

(assert (=> b!3401981 (= e!2111763 (equivClasses!2157 (toChars!7469 (transformation!5402 (rule!7966 separatorToken!241))) (toValue!7610 (transformation!5402 (rule!7966 separatorToken!241)))))))

(assert (= (and d!967994 res!1376563) b!3401981))

(declare-fun m!3775217 () Bool)

(assert (=> d!967994 m!3775217))

(declare-fun m!3775219 () Bool)

(assert (=> b!3401981 m!3775219))

(assert (=> b!3401846 d!967994))

(declare-fun d!967996 () Bool)

(declare-fun res!1376564 () Bool)

(declare-fun e!2111764 () Bool)

(assert (=> d!967996 (=> (not res!1376564) (not e!2111764))))

(assert (=> d!967996 (= res!1376564 (not (isEmpty!21270 (originalCharacters!6116 separatorToken!241))))))

(assert (=> d!967996 (= (inv!50105 separatorToken!241) e!2111764)))

(declare-fun b!3401982 () Bool)

(declare-fun res!1376565 () Bool)

(assert (=> b!3401982 (=> (not res!1376565) (not e!2111764))))

(assert (=> b!3401982 (= res!1376565 (= (originalCharacters!6116 separatorToken!241) (list!13419 (dynLambda!15453 (toChars!7469 (transformation!5402 (rule!7966 separatorToken!241))) (value!174417 separatorToken!241)))))))

(declare-fun b!3401983 () Bool)

(assert (=> b!3401983 (= e!2111764 (= (size!28013 separatorToken!241) (size!28018 (originalCharacters!6116 separatorToken!241))))))

(assert (= (and d!967996 res!1376564) b!3401982))

(assert (= (and b!3401982 res!1376565) b!3401983))

(declare-fun b_lambda!97105 () Bool)

(assert (=> (not b_lambda!97105) (not b!3401982)))

(declare-fun t!266073 () Bool)

(declare-fun tb!182447 () Bool)

(assert (=> (and b!3401852 (= (toChars!7469 (transformation!5402 (rule!7966 (h!42414 tokens!494)))) (toChars!7469 (transformation!5402 (rule!7966 separatorToken!241)))) t!266073) tb!182447))

(declare-fun b!3401984 () Bool)

(declare-fun e!2111765 () Bool)

(declare-fun tp!1061541 () Bool)

(assert (=> b!3401984 (= e!2111765 (and (inv!50109 (c!579903 (dynLambda!15453 (toChars!7469 (transformation!5402 (rule!7966 separatorToken!241))) (value!174417 separatorToken!241)))) tp!1061541))))

(declare-fun result!226112 () Bool)

(assert (=> tb!182447 (= result!226112 (and (inv!50110 (dynLambda!15453 (toChars!7469 (transformation!5402 (rule!7966 separatorToken!241))) (value!174417 separatorToken!241))) e!2111765))))

(assert (= tb!182447 b!3401984))

(declare-fun m!3775221 () Bool)

(assert (=> b!3401984 m!3775221))

(declare-fun m!3775223 () Bool)

(assert (=> tb!182447 m!3775223))

(assert (=> b!3401982 t!266073))

(declare-fun b_and!237479 () Bool)

(assert (= b_and!237473 (and (=> t!266073 result!226112) b_and!237479)))

(declare-fun t!266075 () Bool)

(declare-fun tb!182449 () Bool)

(assert (=> (and b!3401854 (= (toChars!7469 (transformation!5402 (h!42415 rules!2135))) (toChars!7469 (transformation!5402 (rule!7966 separatorToken!241)))) t!266075) tb!182449))

(declare-fun result!226114 () Bool)

(assert (= result!226114 result!226112))

(assert (=> b!3401982 t!266075))

(declare-fun b_and!237481 () Bool)

(assert (= b_and!237475 (and (=> t!266075 result!226114) b_and!237481)))

(declare-fun t!266077 () Bool)

(declare-fun tb!182451 () Bool)

(assert (=> (and b!3401845 (= (toChars!7469 (transformation!5402 (rule!7966 separatorToken!241))) (toChars!7469 (transformation!5402 (rule!7966 separatorToken!241)))) t!266077) tb!182451))

(declare-fun result!226116 () Bool)

(assert (= result!226116 result!226112))

(assert (=> b!3401982 t!266077))

(declare-fun b_and!237483 () Bool)

(assert (= b_and!237477 (and (=> t!266077 result!226116) b_and!237483)))

(declare-fun m!3775225 () Bool)

(assert (=> d!967996 m!3775225))

(declare-fun m!3775227 () Bool)

(assert (=> b!3401982 m!3775227))

(assert (=> b!3401982 m!3775227))

(declare-fun m!3775229 () Bool)

(assert (=> b!3401982 m!3775229))

(declare-fun m!3775231 () Bool)

(assert (=> b!3401983 m!3775231))

(assert (=> start!317822 d!967996))

(declare-fun d!967998 () Bool)

(declare-fun lt!1157035 () Bool)

(declare-fun e!2111767 () Bool)

(assert (=> d!967998 (= lt!1157035 e!2111767)))

(declare-fun res!1376566 () Bool)

(assert (=> d!967998 (=> (not res!1376566) (not e!2111767))))

(assert (=> d!967998 (= res!1376566 (= (list!13420 (_1!21451 (lex!2317 thiss!18206 rules!2135 (print!2056 thiss!18206 (singletonSeq!2498 (h!42414 tokens!494)))))) (list!13420 (singletonSeq!2498 (h!42414 tokens!494)))))))

(declare-fun e!2111766 () Bool)

(assert (=> d!967998 (= lt!1157035 e!2111766)))

(declare-fun res!1376567 () Bool)

(assert (=> d!967998 (=> (not res!1376567) (not e!2111766))))

(declare-fun lt!1157036 () tuple2!36634)

(assert (=> d!967998 (= res!1376567 (= (size!28014 (_1!21451 lt!1157036)) 1))))

(assert (=> d!967998 (= lt!1157036 (lex!2317 thiss!18206 rules!2135 (print!2056 thiss!18206 (singletonSeq!2498 (h!42414 tokens!494)))))))

(assert (=> d!967998 (not (isEmpty!21264 rules!2135))))

(assert (=> d!967998 (= (rulesProduceIndividualToken!2483 thiss!18206 rules!2135 (h!42414 tokens!494)) lt!1157035)))

(declare-fun b!3401985 () Bool)

(declare-fun res!1376568 () Bool)

(assert (=> b!3401985 (=> (not res!1376568) (not e!2111766))))

(assert (=> b!3401985 (= res!1376568 (= (apply!8638 (_1!21451 lt!1157036) 0) (h!42414 tokens!494)))))

(declare-fun b!3401986 () Bool)

(assert (=> b!3401986 (= e!2111766 (isEmpty!21266 (_2!21451 lt!1157036)))))

(declare-fun b!3401987 () Bool)

(assert (=> b!3401987 (= e!2111767 (isEmpty!21266 (_2!21451 (lex!2317 thiss!18206 rules!2135 (print!2056 thiss!18206 (singletonSeq!2498 (h!42414 tokens!494)))))))))

(assert (= (and d!967998 res!1376567) b!3401985))

(assert (= (and b!3401985 res!1376568) b!3401986))

(assert (= (and d!967998 res!1376566) b!3401987))

(assert (=> d!967998 m!3774945))

(declare-fun m!3775233 () Bool)

(assert (=> d!967998 m!3775233))

(declare-fun m!3775235 () Bool)

(assert (=> d!967998 m!3775235))

(declare-fun m!3775237 () Bool)

(assert (=> d!967998 m!3775237))

(declare-fun m!3775239 () Bool)

(assert (=> d!967998 m!3775239))

(declare-fun m!3775241 () Bool)

(assert (=> d!967998 m!3775241))

(assert (=> d!967998 m!3774961))

(assert (=> d!967998 m!3774945))

(assert (=> d!967998 m!3774945))

(assert (=> d!967998 m!3775235))

(declare-fun m!3775243 () Bool)

(assert (=> b!3401985 m!3775243))

(declare-fun m!3775245 () Bool)

(assert (=> b!3401986 m!3775245))

(assert (=> b!3401987 m!3774945))

(assert (=> b!3401987 m!3774945))

(assert (=> b!3401987 m!3775235))

(assert (=> b!3401987 m!3775235))

(assert (=> b!3401987 m!3775237))

(declare-fun m!3775247 () Bool)

(assert (=> b!3401987 m!3775247))

(assert (=> b!3401848 d!967998))

(declare-fun d!968000 () Bool)

(declare-fun res!1376573 () Bool)

(declare-fun e!2111772 () Bool)

(assert (=> d!968000 (=> res!1376573 e!2111772)))

(assert (=> d!968000 (= res!1376573 (not ((_ is Cons!36995) rules!2135)))))

(assert (=> d!968000 (= (sepAndNonSepRulesDisjointChars!1596 rules!2135 rules!2135) e!2111772)))

(declare-fun b!3401992 () Bool)

(declare-fun e!2111773 () Bool)

(assert (=> b!3401992 (= e!2111772 e!2111773)))

(declare-fun res!1376574 () Bool)

(assert (=> b!3401992 (=> (not res!1376574) (not e!2111773))))

(declare-fun ruleDisjointCharsFromAllFromOtherType!694 (Rule!10604 List!37119) Bool)

(assert (=> b!3401992 (= res!1376574 (ruleDisjointCharsFromAllFromOtherType!694 (h!42415 rules!2135) rules!2135))))

(declare-fun b!3401993 () Bool)

(assert (=> b!3401993 (= e!2111773 (sepAndNonSepRulesDisjointChars!1596 rules!2135 (t!266056 rules!2135)))))

(assert (= (and d!968000 (not res!1376573)) b!3401992))

(assert (= (and b!3401992 res!1376574) b!3401993))

(declare-fun m!3775249 () Bool)

(assert (=> b!3401992 m!3775249))

(declare-fun m!3775251 () Bool)

(assert (=> b!3401993 m!3775251))

(assert (=> b!3401850 d!968000))

(declare-fun b!3402037 () Bool)

(declare-fun e!2111797 () Bool)

(declare-fun e!2111800 () Bool)

(assert (=> b!3402037 (= e!2111797 e!2111800)))

(declare-fun res!1376603 () Bool)

(assert (=> b!3402037 (=> res!1376603 e!2111800)))

(declare-fun call!245863 () Bool)

(assert (=> b!3402037 (= res!1376603 call!245863)))

(declare-fun b!3402038 () Bool)

(declare-fun e!2111801 () Bool)

(assert (=> b!3402038 (= e!2111801 e!2111797)))

(declare-fun res!1376600 () Bool)

(assert (=> b!3402038 (=> (not res!1376600) (not e!2111797))))

(declare-fun lt!1157042 () Bool)

(assert (=> b!3402038 (= res!1376600 (not lt!1157042))))

(declare-fun b!3402039 () Bool)

(declare-fun e!2111802 () Bool)

(declare-fun nullable!3463 (Regex!10161) Bool)

(assert (=> b!3402039 (= e!2111802 (nullable!3463 (regex!5402 lt!1156961)))))

(declare-fun b!3402040 () Bool)

(declare-fun head!7261 (List!37117) C!20508)

(assert (=> b!3402040 (= e!2111800 (not (= (head!7261 lt!1156959) (c!579902 (regex!5402 lt!1156961)))))))

(declare-fun b!3402041 () Bool)

(declare-fun res!1376605 () Bool)

(assert (=> b!3402041 (=> res!1376605 e!2111800)))

(declare-fun tail!5383 (List!37117) List!37117)

(assert (=> b!3402041 (= res!1376605 (not (isEmpty!21270 (tail!5383 lt!1156959))))))

(declare-fun b!3402042 () Bool)

(declare-fun res!1376601 () Bool)

(assert (=> b!3402042 (=> res!1376601 e!2111801)))

(assert (=> b!3402042 (= res!1376601 (not ((_ is ElementMatch!10161) (regex!5402 lt!1156961))))))

(declare-fun e!2111799 () Bool)

(assert (=> b!3402042 (= e!2111799 e!2111801)))

(declare-fun b!3402043 () Bool)

(declare-fun e!2111803 () Bool)

(assert (=> b!3402043 (= e!2111803 (= lt!1157042 call!245863))))

(declare-fun b!3402044 () Bool)

(declare-fun res!1376602 () Bool)

(declare-fun e!2111798 () Bool)

(assert (=> b!3402044 (=> (not res!1376602) (not e!2111798))))

(assert (=> b!3402044 (= res!1376602 (isEmpty!21270 (tail!5383 lt!1156959)))))

(declare-fun b!3402045 () Bool)

(declare-fun res!1376607 () Bool)

(assert (=> b!3402045 (=> res!1376607 e!2111801)))

(assert (=> b!3402045 (= res!1376607 e!2111798)))

(declare-fun res!1376606 () Bool)

(assert (=> b!3402045 (=> (not res!1376606) (not e!2111798))))

(assert (=> b!3402045 (= res!1376606 lt!1157042)))

(declare-fun d!968002 () Bool)

(assert (=> d!968002 e!2111803))

(declare-fun c!579935 () Bool)

(assert (=> d!968002 (= c!579935 ((_ is EmptyExpr!10161) (regex!5402 lt!1156961)))))

(assert (=> d!968002 (= lt!1157042 e!2111802)))

(declare-fun c!579934 () Bool)

(assert (=> d!968002 (= c!579934 (isEmpty!21270 lt!1156959))))

(declare-fun validRegex!4619 (Regex!10161) Bool)

(assert (=> d!968002 (validRegex!4619 (regex!5402 lt!1156961))))

(assert (=> d!968002 (= (matchR!4745 (regex!5402 lt!1156961) lt!1156959) lt!1157042)))

(declare-fun b!3402046 () Bool)

(assert (=> b!3402046 (= e!2111803 e!2111799)))

(declare-fun c!579936 () Bool)

(assert (=> b!3402046 (= c!579936 ((_ is EmptyLang!10161) (regex!5402 lt!1156961)))))

(declare-fun b!3402047 () Bool)

(assert (=> b!3402047 (= e!2111798 (= (head!7261 lt!1156959) (c!579902 (regex!5402 lt!1156961))))))

(declare-fun b!3402048 () Bool)

(assert (=> b!3402048 (= e!2111799 (not lt!1157042))))

(declare-fun b!3402049 () Bool)

(declare-fun derivativeStep!3016 (Regex!10161 C!20508) Regex!10161)

(assert (=> b!3402049 (= e!2111802 (matchR!4745 (derivativeStep!3016 (regex!5402 lt!1156961) (head!7261 lt!1156959)) (tail!5383 lt!1156959)))))

(declare-fun bm!245858 () Bool)

(assert (=> bm!245858 (= call!245863 (isEmpty!21270 lt!1156959))))

(declare-fun b!3402050 () Bool)

(declare-fun res!1376604 () Bool)

(assert (=> b!3402050 (=> (not res!1376604) (not e!2111798))))

(assert (=> b!3402050 (= res!1376604 (not call!245863))))

(assert (= (and d!968002 c!579934) b!3402039))

(assert (= (and d!968002 (not c!579934)) b!3402049))

(assert (= (and d!968002 c!579935) b!3402043))

(assert (= (and d!968002 (not c!579935)) b!3402046))

(assert (= (and b!3402046 c!579936) b!3402048))

(assert (= (and b!3402046 (not c!579936)) b!3402042))

(assert (= (and b!3402042 (not res!1376601)) b!3402045))

(assert (= (and b!3402045 res!1376606) b!3402050))

(assert (= (and b!3402050 res!1376604) b!3402044))

(assert (= (and b!3402044 res!1376602) b!3402047))

(assert (= (and b!3402045 (not res!1376607)) b!3402038))

(assert (= (and b!3402038 res!1376600) b!3402037))

(assert (= (and b!3402037 (not res!1376603)) b!3402041))

(assert (= (and b!3402041 (not res!1376605)) b!3402040))

(assert (= (or b!3402043 b!3402037 b!3402050) bm!245858))

(declare-fun m!3775273 () Bool)

(assert (=> bm!245858 m!3775273))

(assert (=> d!968002 m!3775273))

(declare-fun m!3775275 () Bool)

(assert (=> d!968002 m!3775275))

(declare-fun m!3775277 () Bool)

(assert (=> b!3402040 m!3775277))

(declare-fun m!3775279 () Bool)

(assert (=> b!3402041 m!3775279))

(assert (=> b!3402041 m!3775279))

(declare-fun m!3775281 () Bool)

(assert (=> b!3402041 m!3775281))

(assert (=> b!3402049 m!3775277))

(assert (=> b!3402049 m!3775277))

(declare-fun m!3775283 () Bool)

(assert (=> b!3402049 m!3775283))

(assert (=> b!3402049 m!3775279))

(assert (=> b!3402049 m!3775283))

(assert (=> b!3402049 m!3775279))

(declare-fun m!3775285 () Bool)

(assert (=> b!3402049 m!3775285))

(assert (=> b!3402047 m!3775277))

(assert (=> b!3402044 m!3775279))

(assert (=> b!3402044 m!3775279))

(assert (=> b!3402044 m!3775281))

(declare-fun m!3775287 () Bool)

(assert (=> b!3402039 m!3775287))

(assert (=> b!3401849 d!968002))

(declare-fun d!968008 () Bool)

(assert (=> d!968008 (= (get!11814 lt!1156972) (v!36623 lt!1156972))))

(assert (=> b!3401849 d!968008))

(declare-fun d!968012 () Bool)

(declare-fun lt!1157070 () BalanceConc!21972)

(declare-fun printListTailRec!664 (LexerInterface!4991 List!37118 List!37117) List!37117)

(declare-fun dropList!1181 (BalanceConc!21974 Int) List!37118)

(assert (=> d!968012 (= (list!13419 lt!1157070) (printListTailRec!664 thiss!18206 (dropList!1181 lt!1156965 0) (list!13419 (BalanceConc!21973 Empty!11179))))))

(declare-fun e!2111823 () BalanceConc!21972)

(assert (=> d!968012 (= lt!1157070 e!2111823)))

(declare-fun c!579947 () Bool)

(assert (=> d!968012 (= c!579947 (>= 0 (size!28014 lt!1156965)))))

(declare-fun e!2111824 () Bool)

(assert (=> d!968012 e!2111824))

(declare-fun res!1376619 () Bool)

(assert (=> d!968012 (=> (not res!1376619) (not e!2111824))))

(assert (=> d!968012 (= res!1376619 (>= 0 0))))

(assert (=> d!968012 (= (printTailRec!1486 thiss!18206 lt!1156965 0 (BalanceConc!21973 Empty!11179)) lt!1157070)))

(declare-fun b!3402083 () Bool)

(assert (=> b!3402083 (= e!2111824 (<= 0 (size!28014 lt!1156965)))))

(declare-fun b!3402084 () Bool)

(assert (=> b!3402084 (= e!2111823 (BalanceConc!21973 Empty!11179))))

(declare-fun b!3402085 () Bool)

(declare-fun ++!9079 (BalanceConc!21972 BalanceConc!21972) BalanceConc!21972)

(assert (=> b!3402085 (= e!2111823 (printTailRec!1486 thiss!18206 lt!1156965 (+ 0 1) (++!9079 (BalanceConc!21973 Empty!11179) (charsOf!3416 (apply!8638 lt!1156965 0)))))))

(declare-fun lt!1157064 () List!37118)

(assert (=> b!3402085 (= lt!1157064 (list!13420 lt!1156965))))

(declare-fun lt!1157068 () Unit!52158)

(declare-fun lemmaDropApply!1139 (List!37118 Int) Unit!52158)

(assert (=> b!3402085 (= lt!1157068 (lemmaDropApply!1139 lt!1157064 0))))

(declare-fun head!7262 (List!37118) Token!10170)

(declare-fun drop!1981 (List!37118 Int) List!37118)

(declare-fun apply!8641 (List!37118 Int) Token!10170)

(assert (=> b!3402085 (= (head!7262 (drop!1981 lt!1157064 0)) (apply!8641 lt!1157064 0))))

(declare-fun lt!1157065 () Unit!52158)

(assert (=> b!3402085 (= lt!1157065 lt!1157068)))

(declare-fun lt!1157067 () List!37118)

(assert (=> b!3402085 (= lt!1157067 (list!13420 lt!1156965))))

(declare-fun lt!1157066 () Unit!52158)

(declare-fun lemmaDropTail!1023 (List!37118 Int) Unit!52158)

(assert (=> b!3402085 (= lt!1157066 (lemmaDropTail!1023 lt!1157067 0))))

(declare-fun tail!5384 (List!37118) List!37118)

(assert (=> b!3402085 (= (tail!5384 (drop!1981 lt!1157067 0)) (drop!1981 lt!1157067 (+ 0 1)))))

(declare-fun lt!1157069 () Unit!52158)

(assert (=> b!3402085 (= lt!1157069 lt!1157066)))

(assert (= (and d!968012 res!1376619) b!3402083))

(assert (= (and d!968012 c!579947) b!3402084))

(assert (= (and d!968012 (not c!579947)) b!3402085))

(declare-fun m!3775363 () Bool)

(assert (=> d!968012 m!3775363))

(declare-fun m!3775365 () Bool)

(assert (=> d!968012 m!3775365))

(declare-fun m!3775367 () Bool)

(assert (=> d!968012 m!3775367))

(declare-fun m!3775369 () Bool)

(assert (=> d!968012 m!3775369))

(assert (=> d!968012 m!3775367))

(assert (=> d!968012 m!3775363))

(declare-fun m!3775371 () Bool)

(assert (=> d!968012 m!3775371))

(assert (=> b!3402083 m!3775369))

(declare-fun m!3775373 () Bool)

(assert (=> b!3402085 m!3775373))

(declare-fun m!3775375 () Bool)

(assert (=> b!3402085 m!3775375))

(declare-fun m!3775377 () Bool)

(assert (=> b!3402085 m!3775377))

(declare-fun m!3775379 () Bool)

(assert (=> b!3402085 m!3775379))

(assert (=> b!3402085 m!3775375))

(declare-fun m!3775381 () Bool)

(assert (=> b!3402085 m!3775381))

(assert (=> b!3402085 m!3775379))

(declare-fun m!3775383 () Bool)

(assert (=> b!3402085 m!3775383))

(declare-fun m!3775385 () Bool)

(assert (=> b!3402085 m!3775385))

(assert (=> b!3402085 m!3775383))

(declare-fun m!3775387 () Bool)

(assert (=> b!3402085 m!3775387))

(declare-fun m!3775389 () Bool)

(assert (=> b!3402085 m!3775389))

(declare-fun m!3775391 () Bool)

(assert (=> b!3402085 m!3775391))

(assert (=> b!3402085 m!3775377))

(declare-fun m!3775393 () Bool)

(assert (=> b!3402085 m!3775393))

(declare-fun m!3775395 () Bool)

(assert (=> b!3402085 m!3775395))

(assert (=> b!3402085 m!3775389))

(declare-fun m!3775397 () Bool)

(assert (=> b!3402085 m!3775397))

(assert (=> b!3401828 d!968012))

(declare-fun d!968034 () Bool)

(declare-fun lt!1157073 () BalanceConc!21972)

(assert (=> d!968034 (= (list!13419 lt!1157073) (printList!1539 thiss!18206 (list!13420 lt!1156965)))))

(assert (=> d!968034 (= lt!1157073 (printTailRec!1486 thiss!18206 lt!1156965 0 (BalanceConc!21973 Empty!11179)))))

(assert (=> d!968034 (= (print!2056 thiss!18206 lt!1156965) lt!1157073)))

(declare-fun bs!556361 () Bool)

(assert (= bs!556361 d!968034))

(declare-fun m!3775399 () Bool)

(assert (=> bs!556361 m!3775399))

(assert (=> bs!556361 m!3775395))

(assert (=> bs!556361 m!3775395))

(declare-fun m!3775401 () Bool)

(assert (=> bs!556361 m!3775401))

(assert (=> bs!556361 m!3774947))

(assert (=> b!3401828 d!968034))

(declare-fun d!968036 () Bool)

(declare-fun list!13423 (Conc!11179) List!37117)

(assert (=> d!968036 (= (list!13419 lt!1156956) (list!13423 (c!579903 lt!1156956)))))

(declare-fun bs!556362 () Bool)

(assert (= bs!556362 d!968036))

(declare-fun m!3775403 () Bool)

(assert (=> bs!556362 m!3775403))

(assert (=> b!3401828 d!968036))

(declare-fun d!968038 () Bool)

(declare-fun e!2111827 () Bool)

(assert (=> d!968038 e!2111827))

(declare-fun res!1376622 () Bool)

(assert (=> d!968038 (=> (not res!1376622) (not e!2111827))))

(declare-fun lt!1157076 () BalanceConc!21974)

(assert (=> d!968038 (= res!1376622 (= (list!13420 lt!1157076) (Cons!36994 (h!42414 tokens!494) Nil!36994)))))

(declare-fun singleton!1096 (Token!10170) BalanceConc!21974)

(assert (=> d!968038 (= lt!1157076 (singleton!1096 (h!42414 tokens!494)))))

(assert (=> d!968038 (= (singletonSeq!2498 (h!42414 tokens!494)) lt!1157076)))

(declare-fun b!3402088 () Bool)

(declare-fun isBalanced!3381 (Conc!11180) Bool)

(assert (=> b!3402088 (= e!2111827 (isBalanced!3381 (c!579904 lt!1157076)))))

(assert (= (and d!968038 res!1376622) b!3402088))

(declare-fun m!3775405 () Bool)

(assert (=> d!968038 m!3775405))

(declare-fun m!3775407 () Bool)

(assert (=> d!968038 m!3775407))

(declare-fun m!3775409 () Bool)

(assert (=> b!3402088 m!3775409))

(assert (=> b!3401828 d!968038))

(declare-fun d!968040 () Bool)

(declare-fun c!579950 () Bool)

(assert (=> d!968040 (= c!579950 ((_ is Cons!36994) (Cons!36994 (h!42414 tokens!494) Nil!36994)))))

(declare-fun e!2111830 () List!37117)

(assert (=> d!968040 (= (printList!1539 thiss!18206 (Cons!36994 (h!42414 tokens!494) Nil!36994)) e!2111830)))

(declare-fun b!3402093 () Bool)

(assert (=> b!3402093 (= e!2111830 (++!9077 (list!13419 (charsOf!3416 (h!42414 (Cons!36994 (h!42414 tokens!494) Nil!36994)))) (printList!1539 thiss!18206 (t!266055 (Cons!36994 (h!42414 tokens!494) Nil!36994)))))))

(declare-fun b!3402094 () Bool)

(assert (=> b!3402094 (= e!2111830 Nil!36993)))

(assert (= (and d!968040 c!579950) b!3402093))

(assert (= (and d!968040 (not c!579950)) b!3402094))

(declare-fun m!3775411 () Bool)

(assert (=> b!3402093 m!3775411))

(assert (=> b!3402093 m!3775411))

(declare-fun m!3775413 () Bool)

(assert (=> b!3402093 m!3775413))

(declare-fun m!3775415 () Bool)

(assert (=> b!3402093 m!3775415))

(assert (=> b!3402093 m!3775413))

(assert (=> b!3402093 m!3775415))

(declare-fun m!3775417 () Bool)

(assert (=> b!3402093 m!3775417))

(assert (=> b!3401828 d!968040))

(declare-fun d!968042 () Bool)

(assert (=> d!968042 (= (inv!50102 (tag!5986 (h!42415 rules!2135))) (= (mod (str.len (value!174416 (tag!5986 (h!42415 rules!2135)))) 2) 0))))

(assert (=> b!3401851 d!968042))

(declare-fun d!968044 () Bool)

(declare-fun res!1376623 () Bool)

(declare-fun e!2111831 () Bool)

(assert (=> d!968044 (=> (not res!1376623) (not e!2111831))))

(assert (=> d!968044 (= res!1376623 (semiInverseModEq!2258 (toChars!7469 (transformation!5402 (h!42415 rules!2135))) (toValue!7610 (transformation!5402 (h!42415 rules!2135)))))))

(assert (=> d!968044 (= (inv!50106 (transformation!5402 (h!42415 rules!2135))) e!2111831)))

(declare-fun b!3402095 () Bool)

(assert (=> b!3402095 (= e!2111831 (equivClasses!2157 (toChars!7469 (transformation!5402 (h!42415 rules!2135))) (toValue!7610 (transformation!5402 (h!42415 rules!2135)))))))

(assert (= (and d!968044 res!1376623) b!3402095))

(declare-fun m!3775419 () Bool)

(assert (=> d!968044 m!3775419))

(declare-fun m!3775421 () Bool)

(assert (=> b!3402095 m!3775421))

(assert (=> b!3401851 d!968044))

(declare-fun b!3402106 () Bool)

(declare-fun e!2111839 () Bool)

(declare-fun e!2111840 () Bool)

(assert (=> b!3402106 (= e!2111839 e!2111840)))

(declare-fun c!579955 () Bool)

(assert (=> b!3402106 (= c!579955 ((_ is IntegerValue!16897) (value!174417 separatorToken!241)))))

(declare-fun b!3402107 () Bool)

(declare-fun res!1376626 () Bool)

(declare-fun e!2111838 () Bool)

(assert (=> b!3402107 (=> res!1376626 e!2111838)))

(assert (=> b!3402107 (= res!1376626 (not ((_ is IntegerValue!16898) (value!174417 separatorToken!241))))))

(assert (=> b!3402107 (= e!2111840 e!2111838)))

(declare-fun b!3402108 () Bool)

(declare-fun inv!16 (TokenValue!5632) Bool)

(assert (=> b!3402108 (= e!2111839 (inv!16 (value!174417 separatorToken!241)))))

(declare-fun b!3402109 () Bool)

(declare-fun inv!17 (TokenValue!5632) Bool)

(assert (=> b!3402109 (= e!2111840 (inv!17 (value!174417 separatorToken!241)))))

(declare-fun b!3402110 () Bool)

(declare-fun inv!15 (TokenValue!5632) Bool)

(assert (=> b!3402110 (= e!2111838 (inv!15 (value!174417 separatorToken!241)))))

(declare-fun d!968046 () Bool)

(declare-fun c!579956 () Bool)

(assert (=> d!968046 (= c!579956 ((_ is IntegerValue!16896) (value!174417 separatorToken!241)))))

(assert (=> d!968046 (= (inv!21 (value!174417 separatorToken!241)) e!2111839)))

(assert (= (and d!968046 c!579956) b!3402108))

(assert (= (and d!968046 (not c!579956)) b!3402106))

(assert (= (and b!3402106 c!579955) b!3402109))

(assert (= (and b!3402106 (not c!579955)) b!3402107))

(assert (= (and b!3402107 (not res!1376626)) b!3402110))

(declare-fun m!3775423 () Bool)

(assert (=> b!3402108 m!3775423))

(declare-fun m!3775425 () Bool)

(assert (=> b!3402109 m!3775425))

(declare-fun m!3775427 () Bool)

(assert (=> b!3402110 m!3775427))

(assert (=> b!3401830 d!968046))

(declare-fun d!968048 () Bool)

(declare-fun c!579959 () Bool)

(assert (=> d!968048 (= c!579959 ((_ is Cons!36994) tokens!494))))

(declare-fun e!2111843 () List!37117)

(assert (=> d!968048 (= (printWithSeparatorTokenList!278 thiss!18206 tokens!494 separatorToken!241) e!2111843)))

(declare-fun b!3402115 () Bool)

(assert (=> b!3402115 (= e!2111843 (++!9077 (++!9077 (list!13419 (charsOf!3416 (h!42414 tokens!494))) (list!13419 (charsOf!3416 separatorToken!241))) (printWithSeparatorTokenList!278 thiss!18206 (t!266055 tokens!494) separatorToken!241)))))

(declare-fun b!3402116 () Bool)

(assert (=> b!3402116 (= e!2111843 Nil!36993)))

(assert (= (and d!968048 c!579959) b!3402115))

(assert (= (and d!968048 (not c!579959)) b!3402116))

(declare-fun m!3775429 () Bool)

(assert (=> b!3402115 m!3775429))

(assert (=> b!3402115 m!3774969))

(declare-fun m!3775431 () Bool)

(assert (=> b!3402115 m!3775431))

(assert (=> b!3402115 m!3774965))

(assert (=> b!3402115 m!3774965))

(assert (=> b!3402115 m!3774975))

(assert (=> b!3402115 m!3774999))

(assert (=> b!3402115 m!3774975))

(assert (=> b!3402115 m!3775429))

(assert (=> b!3402115 m!3774997))

(assert (=> b!3402115 m!3774999))

(assert (=> b!3402115 m!3774997))

(assert (=> b!3402115 m!3774969))

(assert (=> b!3401829 d!968048))

(declare-fun d!968050 () Bool)

(declare-fun lt!1157079 () BalanceConc!21972)

(assert (=> d!968050 (= (list!13419 lt!1157079) (originalCharacters!6116 separatorToken!241))))

(assert (=> d!968050 (= lt!1157079 (dynLambda!15453 (toChars!7469 (transformation!5402 (rule!7966 separatorToken!241))) (value!174417 separatorToken!241)))))

(assert (=> d!968050 (= (charsOf!3416 separatorToken!241) lt!1157079)))

(declare-fun b_lambda!97111 () Bool)

(assert (=> (not b_lambda!97111) (not d!968050)))

(assert (=> d!968050 t!266073))

(declare-fun b_and!237497 () Bool)

(assert (= b_and!237479 (and (=> t!266073 result!226112) b_and!237497)))

(assert (=> d!968050 t!266075))

(declare-fun b_and!237499 () Bool)

(assert (= b_and!237481 (and (=> t!266075 result!226114) b_and!237499)))

(assert (=> d!968050 t!266077))

(declare-fun b_and!237501 () Bool)

(assert (= b_and!237483 (and (=> t!266077 result!226116) b_and!237501)))

(declare-fun m!3775433 () Bool)

(assert (=> d!968050 m!3775433))

(assert (=> d!968050 m!3775227))

(assert (=> b!3401829 d!968050))

(declare-fun d!968052 () Bool)

(assert (=> d!968052 (= (list!13419 (charsOf!3416 (h!42414 (t!266055 tokens!494)))) (list!13423 (c!579903 (charsOf!3416 (h!42414 (t!266055 tokens!494))))))))

(declare-fun bs!556363 () Bool)

(assert (= bs!556363 d!968052))

(declare-fun m!3775435 () Bool)

(assert (=> bs!556363 m!3775435))

(assert (=> b!3401829 d!968052))

(declare-fun b!3402127 () Bool)

(declare-fun res!1376631 () Bool)

(declare-fun e!2111849 () Bool)

(assert (=> b!3402127 (=> (not res!1376631) (not e!2111849))))

(declare-fun lt!1157082 () List!37117)

(assert (=> b!3402127 (= res!1376631 (= (size!28018 lt!1157082) (+ (size!28018 lt!1156968) (size!28018 lt!1156962))))))

(declare-fun b!3402125 () Bool)

(declare-fun e!2111848 () List!37117)

(assert (=> b!3402125 (= e!2111848 lt!1156962)))

(declare-fun b!3402128 () Bool)

(assert (=> b!3402128 (= e!2111849 (or (not (= lt!1156962 Nil!36993)) (= lt!1157082 lt!1156968)))))

(declare-fun b!3402126 () Bool)

(assert (=> b!3402126 (= e!2111848 (Cons!36993 (h!42413 lt!1156968) (++!9077 (t!266054 lt!1156968) lt!1156962)))))

(declare-fun d!968054 () Bool)

(assert (=> d!968054 e!2111849))

(declare-fun res!1376632 () Bool)

(assert (=> d!968054 (=> (not res!1376632) (not e!2111849))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!5123 (List!37117) (InoxSet C!20508))

(assert (=> d!968054 (= res!1376632 (= (content!5123 lt!1157082) ((_ map or) (content!5123 lt!1156968) (content!5123 lt!1156962))))))

(assert (=> d!968054 (= lt!1157082 e!2111848)))

(declare-fun c!579962 () Bool)

(assert (=> d!968054 (= c!579962 ((_ is Nil!36993) lt!1156968))))

(assert (=> d!968054 (= (++!9077 lt!1156968 lt!1156962) lt!1157082)))

(assert (= (and d!968054 c!579962) b!3402125))

(assert (= (and d!968054 (not c!579962)) b!3402126))

(assert (= (and d!968054 res!1376632) b!3402127))

(assert (= (and b!3402127 res!1376631) b!3402128))

(declare-fun m!3775437 () Bool)

(assert (=> b!3402127 m!3775437))

(declare-fun m!3775439 () Bool)

(assert (=> b!3402127 m!3775439))

(declare-fun m!3775441 () Bool)

(assert (=> b!3402127 m!3775441))

(declare-fun m!3775443 () Bool)

(assert (=> b!3402126 m!3775443))

(declare-fun m!3775445 () Bool)

(assert (=> d!968054 m!3775445))

(declare-fun m!3775447 () Bool)

(assert (=> d!968054 m!3775447))

(declare-fun m!3775449 () Bool)

(assert (=> d!968054 m!3775449))

(assert (=> b!3401829 d!968054))

(declare-fun b!3402131 () Bool)

(declare-fun res!1376633 () Bool)

(declare-fun e!2111851 () Bool)

(assert (=> b!3402131 (=> (not res!1376633) (not e!2111851))))

(declare-fun lt!1157083 () List!37117)

(assert (=> b!3402131 (= res!1376633 (= (size!28018 lt!1157083) (+ (size!28018 (list!13419 (charsOf!3416 (h!42414 (t!266055 tokens!494))))) (size!28018 lt!1156968))))))

(declare-fun b!3402129 () Bool)

(declare-fun e!2111850 () List!37117)

(assert (=> b!3402129 (= e!2111850 lt!1156968)))

(declare-fun b!3402132 () Bool)

(assert (=> b!3402132 (= e!2111851 (or (not (= lt!1156968 Nil!36993)) (= lt!1157083 (list!13419 (charsOf!3416 (h!42414 (t!266055 tokens!494)))))))))

(declare-fun b!3402130 () Bool)

(assert (=> b!3402130 (= e!2111850 (Cons!36993 (h!42413 (list!13419 (charsOf!3416 (h!42414 (t!266055 tokens!494))))) (++!9077 (t!266054 (list!13419 (charsOf!3416 (h!42414 (t!266055 tokens!494))))) lt!1156968)))))

(declare-fun d!968056 () Bool)

(assert (=> d!968056 e!2111851))

(declare-fun res!1376634 () Bool)

(assert (=> d!968056 (=> (not res!1376634) (not e!2111851))))

(assert (=> d!968056 (= res!1376634 (= (content!5123 lt!1157083) ((_ map or) (content!5123 (list!13419 (charsOf!3416 (h!42414 (t!266055 tokens!494))))) (content!5123 lt!1156968))))))

(assert (=> d!968056 (= lt!1157083 e!2111850)))

(declare-fun c!579963 () Bool)

(assert (=> d!968056 (= c!579963 ((_ is Nil!36993) (list!13419 (charsOf!3416 (h!42414 (t!266055 tokens!494))))))))

(assert (=> d!968056 (= (++!9077 (list!13419 (charsOf!3416 (h!42414 (t!266055 tokens!494)))) lt!1156968) lt!1157083)))

(assert (= (and d!968056 c!579963) b!3402129))

(assert (= (and d!968056 (not c!579963)) b!3402130))

(assert (= (and d!968056 res!1376634) b!3402131))

(assert (= (and b!3402131 res!1376633) b!3402132))

(declare-fun m!3775451 () Bool)

(assert (=> b!3402131 m!3775451))

(assert (=> b!3402131 m!3774971))

(declare-fun m!3775453 () Bool)

(assert (=> b!3402131 m!3775453))

(assert (=> b!3402131 m!3775439))

(declare-fun m!3775455 () Bool)

(assert (=> b!3402130 m!3775455))

(declare-fun m!3775457 () Bool)

(assert (=> d!968056 m!3775457))

(assert (=> d!968056 m!3774971))

(declare-fun m!3775459 () Bool)

(assert (=> d!968056 m!3775459))

(assert (=> d!968056 m!3775447))

(assert (=> b!3401829 d!968056))

(declare-fun b!3402135 () Bool)

(declare-fun res!1376635 () Bool)

(declare-fun e!2111853 () Bool)

(assert (=> b!3402135 (=> (not res!1376635) (not e!2111853))))

(declare-fun lt!1157084 () List!37117)

(assert (=> b!3402135 (= res!1376635 (= (size!28018 lt!1157084) (+ (size!28018 (++!9077 (list!13419 (charsOf!3416 (h!42414 (t!266055 tokens!494)))) lt!1156968)) (size!28018 (printWithSeparatorTokenList!278 thiss!18206 (t!266055 (t!266055 tokens!494)) separatorToken!241)))))))

(declare-fun e!2111852 () List!37117)

(declare-fun b!3402133 () Bool)

(assert (=> b!3402133 (= e!2111852 (printWithSeparatorTokenList!278 thiss!18206 (t!266055 (t!266055 tokens!494)) separatorToken!241))))

(declare-fun b!3402136 () Bool)

(assert (=> b!3402136 (= e!2111853 (or (not (= (printWithSeparatorTokenList!278 thiss!18206 (t!266055 (t!266055 tokens!494)) separatorToken!241) Nil!36993)) (= lt!1157084 (++!9077 (list!13419 (charsOf!3416 (h!42414 (t!266055 tokens!494)))) lt!1156968))))))

(declare-fun b!3402134 () Bool)

(assert (=> b!3402134 (= e!2111852 (Cons!36993 (h!42413 (++!9077 (list!13419 (charsOf!3416 (h!42414 (t!266055 tokens!494)))) lt!1156968)) (++!9077 (t!266054 (++!9077 (list!13419 (charsOf!3416 (h!42414 (t!266055 tokens!494)))) lt!1156968)) (printWithSeparatorTokenList!278 thiss!18206 (t!266055 (t!266055 tokens!494)) separatorToken!241))))))

(declare-fun d!968058 () Bool)

(assert (=> d!968058 e!2111853))

(declare-fun res!1376636 () Bool)

(assert (=> d!968058 (=> (not res!1376636) (not e!2111853))))

(assert (=> d!968058 (= res!1376636 (= (content!5123 lt!1157084) ((_ map or) (content!5123 (++!9077 (list!13419 (charsOf!3416 (h!42414 (t!266055 tokens!494)))) lt!1156968)) (content!5123 (printWithSeparatorTokenList!278 thiss!18206 (t!266055 (t!266055 tokens!494)) separatorToken!241)))))))

(assert (=> d!968058 (= lt!1157084 e!2111852)))

(declare-fun c!579964 () Bool)

(assert (=> d!968058 (= c!579964 ((_ is Nil!36993) (++!9077 (list!13419 (charsOf!3416 (h!42414 (t!266055 tokens!494)))) lt!1156968)))))

(assert (=> d!968058 (= (++!9077 (++!9077 (list!13419 (charsOf!3416 (h!42414 (t!266055 tokens!494)))) lt!1156968) (printWithSeparatorTokenList!278 thiss!18206 (t!266055 (t!266055 tokens!494)) separatorToken!241)) lt!1157084)))

(assert (= (and d!968058 c!579964) b!3402133))

(assert (= (and d!968058 (not c!579964)) b!3402134))

(assert (= (and d!968058 res!1376636) b!3402135))

(assert (= (and b!3402135 res!1376635) b!3402136))

(declare-fun m!3775461 () Bool)

(assert (=> b!3402135 m!3775461))

(assert (=> b!3402135 m!3774977))

(declare-fun m!3775463 () Bool)

(assert (=> b!3402135 m!3775463))

(assert (=> b!3402135 m!3774973))

(declare-fun m!3775465 () Bool)

(assert (=> b!3402135 m!3775465))

(assert (=> b!3402134 m!3774973))

(declare-fun m!3775467 () Bool)

(assert (=> b!3402134 m!3775467))

(declare-fun m!3775469 () Bool)

(assert (=> d!968058 m!3775469))

(assert (=> d!968058 m!3774977))

(declare-fun m!3775471 () Bool)

(assert (=> d!968058 m!3775471))

(assert (=> d!968058 m!3774973))

(declare-fun m!3775473 () Bool)

(assert (=> d!968058 m!3775473))

(assert (=> b!3401829 d!968058))

(declare-fun d!968060 () Bool)

(declare-fun c!579965 () Bool)

(assert (=> d!968060 (= c!579965 ((_ is Cons!36994) (t!266055 (t!266055 tokens!494))))))

(declare-fun e!2111854 () List!37117)

(assert (=> d!968060 (= (printWithSeparatorTokenList!278 thiss!18206 (t!266055 (t!266055 tokens!494)) separatorToken!241) e!2111854)))

(declare-fun b!3402137 () Bool)

(assert (=> b!3402137 (= e!2111854 (++!9077 (++!9077 (list!13419 (charsOf!3416 (h!42414 (t!266055 (t!266055 tokens!494))))) (list!13419 (charsOf!3416 separatorToken!241))) (printWithSeparatorTokenList!278 thiss!18206 (t!266055 (t!266055 (t!266055 tokens!494))) separatorToken!241)))))

(declare-fun b!3402138 () Bool)

(assert (=> b!3402138 (= e!2111854 Nil!36993)))

(assert (= (and d!968060 c!579965) b!3402137))

(assert (= (and d!968060 (not c!579965)) b!3402138))

(declare-fun m!3775475 () Bool)

(assert (=> b!3402137 m!3775475))

(declare-fun m!3775477 () Bool)

(assert (=> b!3402137 m!3775477))

(declare-fun m!3775479 () Bool)

(assert (=> b!3402137 m!3775479))

(assert (=> b!3402137 m!3774965))

(assert (=> b!3402137 m!3774965))

(assert (=> b!3402137 m!3774975))

(declare-fun m!3775481 () Bool)

(assert (=> b!3402137 m!3775481))

(assert (=> b!3402137 m!3774975))

(assert (=> b!3402137 m!3775475))

(declare-fun m!3775483 () Bool)

(assert (=> b!3402137 m!3775483))

(assert (=> b!3402137 m!3775481))

(assert (=> b!3402137 m!3775483))

(assert (=> b!3402137 m!3775477))

(assert (=> b!3401829 d!968060))

(declare-fun d!968062 () Bool)

(declare-fun c!579966 () Bool)

(assert (=> d!968062 (= c!579966 ((_ is Cons!36994) (t!266055 tokens!494)))))

(declare-fun e!2111855 () List!37117)

(assert (=> d!968062 (= (printWithSeparatorTokenList!278 thiss!18206 (t!266055 tokens!494) separatorToken!241) e!2111855)))

(declare-fun b!3402139 () Bool)

(assert (=> b!3402139 (= e!2111855 (++!9077 (++!9077 (list!13419 (charsOf!3416 (h!42414 (t!266055 tokens!494)))) (list!13419 (charsOf!3416 separatorToken!241))) (printWithSeparatorTokenList!278 thiss!18206 (t!266055 (t!266055 tokens!494)) separatorToken!241)))))

(declare-fun b!3402140 () Bool)

(assert (=> b!3402140 (= e!2111855 Nil!36993)))

(assert (= (and d!968062 c!579966) b!3402139))

(assert (= (and d!968062 (not c!579966)) b!3402140))

(declare-fun m!3775485 () Bool)

(assert (=> b!3402139 m!3775485))

(assert (=> b!3402139 m!3774973))

(declare-fun m!3775487 () Bool)

(assert (=> b!3402139 m!3775487))

(assert (=> b!3402139 m!3774965))

(assert (=> b!3402139 m!3774965))

(assert (=> b!3402139 m!3774975))

(assert (=> b!3402139 m!3774971))

(assert (=> b!3402139 m!3774975))

(assert (=> b!3402139 m!3775485))

(assert (=> b!3402139 m!3774963))

(assert (=> b!3402139 m!3774971))

(assert (=> b!3402139 m!3774963))

(assert (=> b!3402139 m!3774973))

(assert (=> b!3401829 d!968062))

(declare-fun d!968064 () Bool)

(assert (=> d!968064 (= (list!13419 (charsOf!3416 separatorToken!241)) (list!13423 (c!579903 (charsOf!3416 separatorToken!241))))))

(declare-fun bs!556364 () Bool)

(assert (= bs!556364 d!968064))

(declare-fun m!3775489 () Bool)

(assert (=> bs!556364 m!3775489))

(assert (=> b!3401829 d!968064))

(declare-fun d!968066 () Bool)

(declare-fun lt!1157085 () BalanceConc!21972)

(assert (=> d!968066 (= (list!13419 lt!1157085) (originalCharacters!6116 (h!42414 (t!266055 tokens!494))))))

(assert (=> d!968066 (= lt!1157085 (dynLambda!15453 (toChars!7469 (transformation!5402 (rule!7966 (h!42414 (t!266055 tokens!494))))) (value!174417 (h!42414 (t!266055 tokens!494)))))))

(assert (=> d!968066 (= (charsOf!3416 (h!42414 (t!266055 tokens!494))) lt!1157085)))

(declare-fun b_lambda!97113 () Bool)

(assert (=> (not b_lambda!97113) (not d!968066)))

(declare-fun t!266086 () Bool)

(declare-fun tb!182459 () Bool)

(assert (=> (and b!3401852 (= (toChars!7469 (transformation!5402 (rule!7966 (h!42414 tokens!494)))) (toChars!7469 (transformation!5402 (rule!7966 (h!42414 (t!266055 tokens!494)))))) t!266086) tb!182459))

(declare-fun b!3402141 () Bool)

(declare-fun e!2111856 () Bool)

(declare-fun tp!1061543 () Bool)

(assert (=> b!3402141 (= e!2111856 (and (inv!50109 (c!579903 (dynLambda!15453 (toChars!7469 (transformation!5402 (rule!7966 (h!42414 (t!266055 tokens!494))))) (value!174417 (h!42414 (t!266055 tokens!494)))))) tp!1061543))))

(declare-fun result!226124 () Bool)

(assert (=> tb!182459 (= result!226124 (and (inv!50110 (dynLambda!15453 (toChars!7469 (transformation!5402 (rule!7966 (h!42414 (t!266055 tokens!494))))) (value!174417 (h!42414 (t!266055 tokens!494))))) e!2111856))))

(assert (= tb!182459 b!3402141))

(declare-fun m!3775491 () Bool)

(assert (=> b!3402141 m!3775491))

(declare-fun m!3775493 () Bool)

(assert (=> tb!182459 m!3775493))

(assert (=> d!968066 t!266086))

(declare-fun b_and!237503 () Bool)

(assert (= b_and!237497 (and (=> t!266086 result!226124) b_and!237503)))

(declare-fun tb!182461 () Bool)

(declare-fun t!266088 () Bool)

(assert (=> (and b!3401854 (= (toChars!7469 (transformation!5402 (h!42415 rules!2135))) (toChars!7469 (transformation!5402 (rule!7966 (h!42414 (t!266055 tokens!494)))))) t!266088) tb!182461))

(declare-fun result!226126 () Bool)

(assert (= result!226126 result!226124))

(assert (=> d!968066 t!266088))

(declare-fun b_and!237505 () Bool)

(assert (= b_and!237499 (and (=> t!266088 result!226126) b_and!237505)))

(declare-fun tb!182463 () Bool)

(declare-fun t!266090 () Bool)

(assert (=> (and b!3401845 (= (toChars!7469 (transformation!5402 (rule!7966 separatorToken!241))) (toChars!7469 (transformation!5402 (rule!7966 (h!42414 (t!266055 tokens!494)))))) t!266090) tb!182463))

(declare-fun result!226128 () Bool)

(assert (= result!226128 result!226124))

(assert (=> d!968066 t!266090))

(declare-fun b_and!237507 () Bool)

(assert (= b_and!237501 (and (=> t!266090 result!226128) b_and!237507)))

(declare-fun m!3775495 () Bool)

(assert (=> d!968066 m!3775495))

(declare-fun m!3775497 () Bool)

(assert (=> d!968066 m!3775497))

(assert (=> b!3401829 d!968066))

(declare-fun b!3402144 () Bool)

(declare-fun res!1376637 () Bool)

(declare-fun e!2111858 () Bool)

(assert (=> b!3402144 (=> (not res!1376637) (not e!2111858))))

(declare-fun lt!1157086 () List!37117)

(assert (=> b!3402144 (= res!1376637 (= (size!28018 lt!1157086) (+ (size!28018 lt!1156959) (size!28018 lt!1156966))))))

(declare-fun b!3402142 () Bool)

(declare-fun e!2111857 () List!37117)

(assert (=> b!3402142 (= e!2111857 lt!1156966)))

(declare-fun b!3402145 () Bool)

(assert (=> b!3402145 (= e!2111858 (or (not (= lt!1156966 Nil!36993)) (= lt!1157086 lt!1156959)))))

(declare-fun b!3402143 () Bool)

(assert (=> b!3402143 (= e!2111857 (Cons!36993 (h!42413 lt!1156959) (++!9077 (t!266054 lt!1156959) lt!1156966)))))

(declare-fun d!968068 () Bool)

(assert (=> d!968068 e!2111858))

(declare-fun res!1376638 () Bool)

(assert (=> d!968068 (=> (not res!1376638) (not e!2111858))))

(assert (=> d!968068 (= res!1376638 (= (content!5123 lt!1157086) ((_ map or) (content!5123 lt!1156959) (content!5123 lt!1156966))))))

(assert (=> d!968068 (= lt!1157086 e!2111857)))

(declare-fun c!579967 () Bool)

(assert (=> d!968068 (= c!579967 ((_ is Nil!36993) lt!1156959))))

(assert (=> d!968068 (= (++!9077 lt!1156959 lt!1156966) lt!1157086)))

(assert (= (and d!968068 c!579967) b!3402142))

(assert (= (and d!968068 (not c!579967)) b!3402143))

(assert (= (and d!968068 res!1376638) b!3402144))

(assert (= (and b!3402144 res!1376637) b!3402145))

(declare-fun m!3775499 () Bool)

(assert (=> b!3402144 m!3775499))

(declare-fun m!3775501 () Bool)

(assert (=> b!3402144 m!3775501))

(declare-fun m!3775503 () Bool)

(assert (=> b!3402144 m!3775503))

(declare-fun m!3775505 () Bool)

(assert (=> b!3402143 m!3775505))

(declare-fun m!3775507 () Bool)

(assert (=> d!968068 m!3775507))

(declare-fun m!3775509 () Bool)

(assert (=> d!968068 m!3775509))

(declare-fun m!3775511 () Bool)

(assert (=> d!968068 m!3775511))

(assert (=> b!3401853 d!968068))

(declare-fun d!968070 () Bool)

(assert (=> d!968070 (= (++!9077 (++!9077 lt!1156959 lt!1156968) lt!1156962) (++!9077 lt!1156959 (++!9077 lt!1156968 lt!1156962)))))

(declare-fun lt!1157089 () Unit!52158)

(declare-fun choose!19736 (List!37117 List!37117 List!37117) Unit!52158)

(assert (=> d!968070 (= lt!1157089 (choose!19736 lt!1156959 lt!1156968 lt!1156962))))

(assert (=> d!968070 (= (lemmaConcatAssociativity!1908 lt!1156959 lt!1156968 lt!1156962) lt!1157089)))

(declare-fun bs!556365 () Bool)

(assert (= bs!556365 d!968070))

(declare-fun m!3775513 () Bool)

(assert (=> bs!556365 m!3775513))

(assert (=> bs!556365 m!3775005))

(assert (=> bs!556365 m!3774979))

(assert (=> bs!556365 m!3774979))

(declare-fun m!3775515 () Bool)

(assert (=> bs!556365 m!3775515))

(assert (=> bs!556365 m!3775005))

(assert (=> bs!556365 m!3775007))

(assert (=> b!3401853 d!968070))

(declare-fun b!3402146 () Bool)

(declare-fun e!2111860 () Bool)

(declare-fun e!2111861 () Bool)

(assert (=> b!3402146 (= e!2111860 e!2111861)))

(declare-fun c!579968 () Bool)

(assert (=> b!3402146 (= c!579968 ((_ is IntegerValue!16897) (value!174417 (h!42414 tokens!494))))))

(declare-fun b!3402147 () Bool)

(declare-fun res!1376639 () Bool)

(declare-fun e!2111859 () Bool)

(assert (=> b!3402147 (=> res!1376639 e!2111859)))

(assert (=> b!3402147 (= res!1376639 (not ((_ is IntegerValue!16898) (value!174417 (h!42414 tokens!494)))))))

(assert (=> b!3402147 (= e!2111861 e!2111859)))

(declare-fun b!3402148 () Bool)

(assert (=> b!3402148 (= e!2111860 (inv!16 (value!174417 (h!42414 tokens!494))))))

(declare-fun b!3402149 () Bool)

(assert (=> b!3402149 (= e!2111861 (inv!17 (value!174417 (h!42414 tokens!494))))))

(declare-fun b!3402150 () Bool)

(assert (=> b!3402150 (= e!2111859 (inv!15 (value!174417 (h!42414 tokens!494))))))

(declare-fun d!968072 () Bool)

(declare-fun c!579969 () Bool)

(assert (=> d!968072 (= c!579969 ((_ is IntegerValue!16896) (value!174417 (h!42414 tokens!494))))))

(assert (=> d!968072 (= (inv!21 (value!174417 (h!42414 tokens!494))) e!2111860)))

(assert (= (and d!968072 c!579969) b!3402148))

(assert (= (and d!968072 (not c!579969)) b!3402146))

(assert (= (and b!3402146 c!579968) b!3402149))

(assert (= (and b!3402146 (not c!579968)) b!3402147))

(assert (= (and b!3402147 (not res!1376639)) b!3402150))

(declare-fun m!3775517 () Bool)

(assert (=> b!3402148 m!3775517))

(declare-fun m!3775519 () Bool)

(assert (=> b!3402149 m!3775519))

(declare-fun m!3775521 () Bool)

(assert (=> b!3402150 m!3775521))

(assert (=> b!3401832 d!968072))

(declare-fun d!968074 () Bool)

(assert (=> d!968074 (= (list!13419 (charsOf!3416 (h!42414 tokens!494))) (list!13423 (c!579903 (charsOf!3416 (h!42414 tokens!494)))))))

(declare-fun bs!556366 () Bool)

(assert (= bs!556366 d!968074))

(declare-fun m!3775523 () Bool)

(assert (=> bs!556366 m!3775523))

(assert (=> b!3401855 d!968074))

(declare-fun d!968076 () Bool)

(declare-fun lt!1157090 () BalanceConc!21972)

(assert (=> d!968076 (= (list!13419 lt!1157090) (originalCharacters!6116 (h!42414 tokens!494)))))

(assert (=> d!968076 (= lt!1157090 (dynLambda!15453 (toChars!7469 (transformation!5402 (rule!7966 (h!42414 tokens!494)))) (value!174417 (h!42414 tokens!494))))))

(assert (=> d!968076 (= (charsOf!3416 (h!42414 tokens!494)) lt!1157090)))

(declare-fun b_lambda!97115 () Bool)

(assert (=> (not b_lambda!97115) (not d!968076)))

(assert (=> d!968076 t!266067))

(declare-fun b_and!237509 () Bool)

(assert (= b_and!237503 (and (=> t!266067 result!226104) b_and!237509)))

(assert (=> d!968076 t!266069))

(declare-fun b_and!237511 () Bool)

(assert (= b_and!237505 (and (=> t!266069 result!226108) b_and!237511)))

(assert (=> d!968076 t!266071))

(declare-fun b_and!237513 () Bool)

(assert (= b_and!237507 (and (=> t!266071 result!226110) b_and!237513)))

(declare-fun m!3775525 () Bool)

(assert (=> d!968076 m!3775525))

(assert (=> d!968076 m!3775211))

(assert (=> b!3401855 d!968076))

(declare-fun d!968078 () Bool)

(assert (=> d!968078 (= (inv!50102 (tag!5986 (rule!7966 (h!42414 tokens!494)))) (= (mod (str.len (value!174416 (tag!5986 (rule!7966 (h!42414 tokens!494))))) 2) 0))))

(assert (=> b!3401834 d!968078))

(declare-fun d!968080 () Bool)

(declare-fun res!1376640 () Bool)

(declare-fun e!2111862 () Bool)

(assert (=> d!968080 (=> (not res!1376640) (not e!2111862))))

(assert (=> d!968080 (= res!1376640 (semiInverseModEq!2258 (toChars!7469 (transformation!5402 (rule!7966 (h!42414 tokens!494)))) (toValue!7610 (transformation!5402 (rule!7966 (h!42414 tokens!494))))))))

(assert (=> d!968080 (= (inv!50106 (transformation!5402 (rule!7966 (h!42414 tokens!494)))) e!2111862)))

(declare-fun b!3402151 () Bool)

(assert (=> b!3402151 (= e!2111862 (equivClasses!2157 (toChars!7469 (transformation!5402 (rule!7966 (h!42414 tokens!494)))) (toValue!7610 (transformation!5402 (rule!7966 (h!42414 tokens!494))))))))

(assert (= (and d!968080 res!1376640) b!3402151))

(declare-fun m!3775527 () Bool)

(assert (=> d!968080 m!3775527))

(declare-fun m!3775529 () Bool)

(assert (=> b!3402151 m!3775529))

(assert (=> b!3401834 d!968080))

(declare-fun d!968082 () Bool)

(assert (=> d!968082 (rulesProduceIndividualToken!2483 thiss!18206 rules!2135 (h!42414 tokens!494))))

(declare-fun lt!1157095 () Unit!52158)

(declare-fun choose!19737 (LexerInterface!4991 List!37119 List!37118 Token!10170) Unit!52158)

(assert (=> d!968082 (= lt!1157095 (choose!19737 thiss!18206 rules!2135 tokens!494 (h!42414 tokens!494)))))

(assert (=> d!968082 (not (isEmpty!21264 rules!2135))))

(assert (=> d!968082 (= (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!980 thiss!18206 rules!2135 tokens!494 (h!42414 tokens!494)) lt!1157095)))

(declare-fun bs!556367 () Bool)

(assert (= bs!556367 d!968082))

(assert (=> bs!556367 m!3774907))

(declare-fun m!3775531 () Bool)

(assert (=> bs!556367 m!3775531))

(assert (=> bs!556367 m!3774961))

(assert (=> b!3401833 d!968082))

(declare-fun b!3402164 () Bool)

(declare-fun e!2111872 () Option!7444)

(declare-fun e!2111873 () Option!7444)

(assert (=> b!3402164 (= e!2111872 e!2111873)))

(declare-fun c!579974 () Bool)

(assert (=> b!3402164 (= c!579974 (and ((_ is Cons!36995) rules!2135) (not (= (tag!5986 (h!42415 rules!2135)) (tag!5986 (rule!7966 (h!42414 tokens!494)))))))))

(declare-fun b!3402165 () Bool)

(declare-fun e!2111871 () Bool)

(declare-fun lt!1157104 () Option!7444)

(assert (=> b!3402165 (= e!2111871 (= (tag!5986 (get!11814 lt!1157104)) (tag!5986 (rule!7966 (h!42414 tokens!494)))))))

(declare-fun b!3402166 () Bool)

(declare-fun e!2111874 () Bool)

(assert (=> b!3402166 (= e!2111874 e!2111871)))

(declare-fun res!1376645 () Bool)

(assert (=> b!3402166 (=> (not res!1376645) (not e!2111871))))

(assert (=> b!3402166 (= res!1376645 (contains!6801 rules!2135 (get!11814 lt!1157104)))))

(declare-fun b!3402167 () Bool)

(declare-fun lt!1157102 () Unit!52158)

(declare-fun lt!1157103 () Unit!52158)

(assert (=> b!3402167 (= lt!1157102 lt!1157103)))

(assert (=> b!3402167 (rulesInvariant!4388 thiss!18206 (t!266056 rules!2135))))

(declare-fun lemmaInvariantOnRulesThenOnTail!408 (LexerInterface!4991 Rule!10604 List!37119) Unit!52158)

(assert (=> b!3402167 (= lt!1157103 (lemmaInvariantOnRulesThenOnTail!408 thiss!18206 (h!42415 rules!2135) (t!266056 rules!2135)))))

(assert (=> b!3402167 (= e!2111873 (getRuleFromTag!1045 thiss!18206 (t!266056 rules!2135) (tag!5986 (rule!7966 (h!42414 tokens!494)))))))

(declare-fun d!968084 () Bool)

(assert (=> d!968084 e!2111874))

(declare-fun res!1376646 () Bool)

(assert (=> d!968084 (=> res!1376646 e!2111874)))

(declare-fun isEmpty!21275 (Option!7444) Bool)

(assert (=> d!968084 (= res!1376646 (isEmpty!21275 lt!1157104))))

(assert (=> d!968084 (= lt!1157104 e!2111872)))

(declare-fun c!579975 () Bool)

(assert (=> d!968084 (= c!579975 (and ((_ is Cons!36995) rules!2135) (= (tag!5986 (h!42415 rules!2135)) (tag!5986 (rule!7966 (h!42414 tokens!494))))))))

(assert (=> d!968084 (rulesInvariant!4388 thiss!18206 rules!2135)))

(assert (=> d!968084 (= (getRuleFromTag!1045 thiss!18206 rules!2135 (tag!5986 (rule!7966 (h!42414 tokens!494)))) lt!1157104)))

(declare-fun b!3402168 () Bool)

(assert (=> b!3402168 (= e!2111873 None!7443)))

(declare-fun b!3402169 () Bool)

(assert (=> b!3402169 (= e!2111872 (Some!7443 (h!42415 rules!2135)))))

(assert (= (and d!968084 c!579975) b!3402169))

(assert (= (and d!968084 (not c!579975)) b!3402164))

(assert (= (and b!3402164 c!579974) b!3402167))

(assert (= (and b!3402164 (not c!579974)) b!3402168))

(assert (= (and d!968084 (not res!1376646)) b!3402166))

(assert (= (and b!3402166 res!1376645) b!3402165))

(declare-fun m!3775533 () Bool)

(assert (=> b!3402165 m!3775533))

(assert (=> b!3402166 m!3775533))

(assert (=> b!3402166 m!3775533))

(declare-fun m!3775535 () Bool)

(assert (=> b!3402166 m!3775535))

(declare-fun m!3775537 () Bool)

(assert (=> b!3402167 m!3775537))

(declare-fun m!3775539 () Bool)

(assert (=> b!3402167 m!3775539))

(declare-fun m!3775541 () Bool)

(assert (=> b!3402167 m!3775541))

(declare-fun m!3775543 () Bool)

(assert (=> d!968084 m!3775543))

(assert (=> d!968084 m!3774959))

(assert (=> b!3401833 d!968084))

(declare-fun d!968086 () Bool)

(declare-fun lt!1157107 () Bool)

(declare-fun content!5125 (List!37119) (InoxSet Rule!10604))

(assert (=> d!968086 (= lt!1157107 (select (content!5125 rules!2135) (rule!7966 (h!42414 tokens!494))))))

(declare-fun e!2111879 () Bool)

(assert (=> d!968086 (= lt!1157107 e!2111879)))

(declare-fun res!1376651 () Bool)

(assert (=> d!968086 (=> (not res!1376651) (not e!2111879))))

(assert (=> d!968086 (= res!1376651 ((_ is Cons!36995) rules!2135))))

(assert (=> d!968086 (= (contains!6801 rules!2135 (rule!7966 (h!42414 tokens!494))) lt!1157107)))

(declare-fun b!3402174 () Bool)

(declare-fun e!2111880 () Bool)

(assert (=> b!3402174 (= e!2111879 e!2111880)))

(declare-fun res!1376652 () Bool)

(assert (=> b!3402174 (=> res!1376652 e!2111880)))

(assert (=> b!3402174 (= res!1376652 (= (h!42415 rules!2135) (rule!7966 (h!42414 tokens!494))))))

(declare-fun b!3402175 () Bool)

(assert (=> b!3402175 (= e!2111880 (contains!6801 (t!266056 rules!2135) (rule!7966 (h!42414 tokens!494))))))

(assert (= (and d!968086 res!1376651) b!3402174))

(assert (= (and b!3402174 (not res!1376652)) b!3402175))

(declare-fun m!3775545 () Bool)

(assert (=> d!968086 m!3775545))

(declare-fun m!3775547 () Bool)

(assert (=> d!968086 m!3775547))

(declare-fun m!3775549 () Bool)

(assert (=> b!3402175 m!3775549))

(assert (=> b!3401833 d!968086))

(declare-fun d!968088 () Bool)

(declare-fun e!2111883 () Bool)

(assert (=> d!968088 e!2111883))

(declare-fun res!1376657 () Bool)

(assert (=> d!968088 (=> (not res!1376657) (not e!2111883))))

(assert (=> d!968088 (= res!1376657 (isDefined!5744 (getRuleFromTag!1045 thiss!18206 rules!2135 (tag!5986 (rule!7966 (h!42414 tokens!494))))))))

(declare-fun lt!1157110 () Unit!52158)

(declare-fun choose!19738 (LexerInterface!4991 List!37119 List!37117 Token!10170) Unit!52158)

(assert (=> d!968088 (= lt!1157110 (choose!19738 thiss!18206 rules!2135 lt!1156959 (h!42414 tokens!494)))))

(assert (=> d!968088 (rulesInvariant!4388 thiss!18206 rules!2135)))

(assert (=> d!968088 (= (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1045 thiss!18206 rules!2135 lt!1156959 (h!42414 tokens!494)) lt!1157110)))

(declare-fun b!3402180 () Bool)

(declare-fun res!1376658 () Bool)

(assert (=> b!3402180 (=> (not res!1376658) (not e!2111883))))

(assert (=> b!3402180 (= res!1376658 (matchR!4745 (regex!5402 (get!11814 (getRuleFromTag!1045 thiss!18206 rules!2135 (tag!5986 (rule!7966 (h!42414 tokens!494)))))) (list!13419 (charsOf!3416 (h!42414 tokens!494)))))))

(declare-fun b!3402181 () Bool)

(assert (=> b!3402181 (= e!2111883 (= (rule!7966 (h!42414 tokens!494)) (get!11814 (getRuleFromTag!1045 thiss!18206 rules!2135 (tag!5986 (rule!7966 (h!42414 tokens!494)))))))))

(assert (= (and d!968088 res!1376657) b!3402180))

(assert (= (and b!3402180 res!1376658) b!3402181))

(assert (=> d!968088 m!3774987))

(assert (=> d!968088 m!3774987))

(declare-fun m!3775551 () Bool)

(assert (=> d!968088 m!3775551))

(declare-fun m!3775553 () Bool)

(assert (=> d!968088 m!3775553))

(assert (=> d!968088 m!3774959))

(assert (=> b!3402180 m!3774987))

(assert (=> b!3402180 m!3774999))

(declare-fun m!3775555 () Bool)

(assert (=> b!3402180 m!3775555))

(assert (=> b!3402180 m!3774997))

(assert (=> b!3402180 m!3774987))

(declare-fun m!3775557 () Bool)

(assert (=> b!3402180 m!3775557))

(assert (=> b!3402180 m!3774997))

(assert (=> b!3402180 m!3774999))

(assert (=> b!3402181 m!3774987))

(assert (=> b!3402181 m!3774987))

(assert (=> b!3402181 m!3775557))

(assert (=> b!3401833 d!968088))

(declare-fun d!968090 () Bool)

(assert (=> d!968090 (= (isDefined!5744 lt!1156972) (not (isEmpty!21275 lt!1156972)))))

(declare-fun bs!556368 () Bool)

(assert (= bs!556368 d!968090))

(declare-fun m!3775559 () Bool)

(assert (=> bs!556368 m!3775559))

(assert (=> b!3401833 d!968090))

(declare-fun bs!556374 () Bool)

(declare-fun d!968092 () Bool)

(assert (= bs!556374 (and d!968092 b!3401838)))

(declare-fun lambda!121033 () Int)

(assert (=> bs!556374 (not (= lambda!121033 lambda!121023))))

(declare-fun b!3402325 () Bool)

(declare-fun e!2111986 () Bool)

(assert (=> b!3402325 (= e!2111986 true)))

(declare-fun b!3402324 () Bool)

(declare-fun e!2111985 () Bool)

(assert (=> b!3402324 (= e!2111985 e!2111986)))

(declare-fun b!3402323 () Bool)

(declare-fun e!2111984 () Bool)

(assert (=> b!3402323 (= e!2111984 e!2111985)))

(assert (=> d!968092 e!2111984))

(assert (= b!3402324 b!3402325))

(assert (= b!3402323 b!3402324))

(assert (= (and d!968092 ((_ is Cons!36995) rules!2135)) b!3402323))

(declare-fun order!19563 () Int)

(declare-fun order!19561 () Int)

(declare-fun dynLambda!15458 (Int Int) Int)

(declare-fun dynLambda!15459 (Int Int) Int)

(assert (=> b!3402325 (< (dynLambda!15458 order!19561 (toValue!7610 (transformation!5402 (h!42415 rules!2135)))) (dynLambda!15459 order!19563 lambda!121033))))

(declare-fun order!19565 () Int)

(declare-fun dynLambda!15460 (Int Int) Int)

(assert (=> b!3402325 (< (dynLambda!15460 order!19565 (toChars!7469 (transformation!5402 (h!42415 rules!2135)))) (dynLambda!15459 order!19563 lambda!121033))))

(assert (=> d!968092 true))

(declare-fun e!2111967 () Bool)

(assert (=> d!968092 e!2111967))

(declare-fun res!1376732 () Bool)

(assert (=> d!968092 (=> (not res!1376732) (not e!2111967))))

(declare-fun lt!1157140 () Bool)

(assert (=> d!968092 (= res!1376732 (= lt!1157140 (forall!7829 (list!13420 (seqFromList!3857 tokens!494)) lambda!121033)))))

(declare-fun forall!7831 (BalanceConc!21974 Int) Bool)

(assert (=> d!968092 (= lt!1157140 (forall!7831 (seqFromList!3857 tokens!494) lambda!121033))))

(assert (=> d!968092 (not (isEmpty!21264 rules!2135))))

(assert (=> d!968092 (= (rulesProduceEachTokenIndividually!1442 thiss!18206 rules!2135 (seqFromList!3857 tokens!494)) lt!1157140)))

(declare-fun b!3402307 () Bool)

(declare-fun rulesProduceEachTokenIndividuallyList!1831 (LexerInterface!4991 List!37119 List!37118) Bool)

(assert (=> b!3402307 (= e!2111967 (= lt!1157140 (rulesProduceEachTokenIndividuallyList!1831 thiss!18206 rules!2135 (list!13420 (seqFromList!3857 tokens!494)))))))

(assert (= (and d!968092 res!1376732) b!3402307))

(assert (=> d!968092 m!3775001))

(declare-fun m!3775687 () Bool)

(assert (=> d!968092 m!3775687))

(assert (=> d!968092 m!3775687))

(declare-fun m!3775689 () Bool)

(assert (=> d!968092 m!3775689))

(assert (=> d!968092 m!3775001))

(declare-fun m!3775691 () Bool)

(assert (=> d!968092 m!3775691))

(assert (=> d!968092 m!3774961))

(assert (=> b!3402307 m!3775001))

(assert (=> b!3402307 m!3775687))

(assert (=> b!3402307 m!3775687))

(declare-fun m!3775693 () Bool)

(assert (=> b!3402307 m!3775693))

(assert (=> b!3401835 d!968092))

(declare-fun d!968138 () Bool)

(declare-fun fromListB!1735 (List!37118) BalanceConc!21974)

(assert (=> d!968138 (= (seqFromList!3857 tokens!494) (fromListB!1735 tokens!494))))

(declare-fun bs!556375 () Bool)

(assert (= bs!556375 d!968138))

(declare-fun m!3775695 () Bool)

(assert (=> bs!556375 m!3775695))

(assert (=> b!3401835 d!968138))

(declare-fun b!3402360 () Bool)

(declare-fun res!1376733 () Bool)

(declare-fun e!2112000 () Bool)

(assert (=> b!3402360 (=> (not res!1376733) (not e!2112000))))

(declare-fun lt!1157141 () List!37117)

(assert (=> b!3402360 (= res!1376733 (= (size!28018 lt!1157141) (+ (size!28018 (++!9077 lt!1156959 lt!1156968)) (size!28018 lt!1156962))))))

(declare-fun b!3402358 () Bool)

(declare-fun e!2111999 () List!37117)

(assert (=> b!3402358 (= e!2111999 lt!1156962)))

(declare-fun b!3402361 () Bool)

(assert (=> b!3402361 (= e!2112000 (or (not (= lt!1156962 Nil!36993)) (= lt!1157141 (++!9077 lt!1156959 lt!1156968))))))

(declare-fun b!3402359 () Bool)

(assert (=> b!3402359 (= e!2111999 (Cons!36993 (h!42413 (++!9077 lt!1156959 lt!1156968)) (++!9077 (t!266054 (++!9077 lt!1156959 lt!1156968)) lt!1156962)))))

(declare-fun d!968140 () Bool)

(assert (=> d!968140 e!2112000))

(declare-fun res!1376734 () Bool)

(assert (=> d!968140 (=> (not res!1376734) (not e!2112000))))

(assert (=> d!968140 (= res!1376734 (= (content!5123 lt!1157141) ((_ map or) (content!5123 (++!9077 lt!1156959 lt!1156968)) (content!5123 lt!1156962))))))

(assert (=> d!968140 (= lt!1157141 e!2111999)))

(declare-fun c!579993 () Bool)

(assert (=> d!968140 (= c!579993 ((_ is Nil!36993) (++!9077 lt!1156959 lt!1156968)))))

(assert (=> d!968140 (= (++!9077 (++!9077 lt!1156959 lt!1156968) lt!1156962) lt!1157141)))

(assert (= (and d!968140 c!579993) b!3402358))

(assert (= (and d!968140 (not c!579993)) b!3402359))

(assert (= (and d!968140 res!1376734) b!3402360))

(assert (= (and b!3402360 res!1376733) b!3402361))

(declare-fun m!3775697 () Bool)

(assert (=> b!3402360 m!3775697))

(assert (=> b!3402360 m!3775005))

(declare-fun m!3775699 () Bool)

(assert (=> b!3402360 m!3775699))

(assert (=> b!3402360 m!3775441))

(declare-fun m!3775701 () Bool)

(assert (=> b!3402359 m!3775701))

(declare-fun m!3775703 () Bool)

(assert (=> d!968140 m!3775703))

(assert (=> d!968140 m!3775005))

(declare-fun m!3775705 () Bool)

(assert (=> d!968140 m!3775705))

(assert (=> d!968140 m!3775449))

(assert (=> b!3401856 d!968140))

(declare-fun b!3402366 () Bool)

(declare-fun res!1376735 () Bool)

(declare-fun e!2112008 () Bool)

(assert (=> b!3402366 (=> (not res!1376735) (not e!2112008))))

(declare-fun lt!1157142 () List!37117)

(assert (=> b!3402366 (= res!1376735 (= (size!28018 lt!1157142) (+ (size!28018 lt!1156959) (size!28018 lt!1156968))))))

(declare-fun b!3402364 () Bool)

(declare-fun e!2112007 () List!37117)

(assert (=> b!3402364 (= e!2112007 lt!1156968)))

(declare-fun b!3402367 () Bool)

(assert (=> b!3402367 (= e!2112008 (or (not (= lt!1156968 Nil!36993)) (= lt!1157142 lt!1156959)))))

(declare-fun b!3402365 () Bool)

(assert (=> b!3402365 (= e!2112007 (Cons!36993 (h!42413 lt!1156959) (++!9077 (t!266054 lt!1156959) lt!1156968)))))

(declare-fun d!968142 () Bool)

(assert (=> d!968142 e!2112008))

(declare-fun res!1376736 () Bool)

(assert (=> d!968142 (=> (not res!1376736) (not e!2112008))))

(assert (=> d!968142 (= res!1376736 (= (content!5123 lt!1157142) ((_ map or) (content!5123 lt!1156959) (content!5123 lt!1156968))))))

(assert (=> d!968142 (= lt!1157142 e!2112007)))

(declare-fun c!579994 () Bool)

(assert (=> d!968142 (= c!579994 ((_ is Nil!36993) lt!1156959))))

(assert (=> d!968142 (= (++!9077 lt!1156959 lt!1156968) lt!1157142)))

(assert (= (and d!968142 c!579994) b!3402364))

(assert (= (and d!968142 (not c!579994)) b!3402365))

(assert (= (and d!968142 res!1376736) b!3402366))

(assert (= (and b!3402366 res!1376735) b!3402367))

(declare-fun m!3775707 () Bool)

(assert (=> b!3402366 m!3775707))

(assert (=> b!3402366 m!3775501))

(assert (=> b!3402366 m!3775439))

(declare-fun m!3775709 () Bool)

(assert (=> b!3402365 m!3775709))

(declare-fun m!3775711 () Bool)

(assert (=> d!968142 m!3775711))

(assert (=> d!968142 m!3775509))

(assert (=> d!968142 m!3775447))

(assert (=> b!3401856 d!968142))

(declare-fun d!968144 () Bool)

(assert (=> d!968144 (= (isEmpty!21264 rules!2135) ((_ is Nil!36995) rules!2135))))

(assert (=> b!3401836 d!968144))

(declare-fun b!3402378 () Bool)

(declare-fun e!2112019 () Bool)

(declare-fun tp_is_empty!17509 () Bool)

(declare-fun tp!1061598 () Bool)

(assert (=> b!3402378 (= e!2112019 (and tp_is_empty!17509 tp!1061598))))

(assert (=> b!3401832 (= tp!1061530 e!2112019)))

(assert (= (and b!3401832 ((_ is Cons!36993) (originalCharacters!6116 (h!42414 tokens!494)))) b!3402378))

(declare-fun e!2112023 () Bool)

(assert (=> b!3401834 (= tp!1061523 e!2112023)))

(declare-fun b!3402394 () Bool)

(declare-fun tp!1061616 () Bool)

(declare-fun tp!1061618 () Bool)

(assert (=> b!3402394 (= e!2112023 (and tp!1061616 tp!1061618))))

(declare-fun b!3402396 () Bool)

(declare-fun tp!1061617 () Bool)

(declare-fun tp!1061615 () Bool)

(assert (=> b!3402396 (= e!2112023 (and tp!1061617 tp!1061615))))

(declare-fun b!3402395 () Bool)

(declare-fun tp!1061614 () Bool)

(assert (=> b!3402395 (= e!2112023 tp!1061614)))

(declare-fun b!3402393 () Bool)

(assert (=> b!3402393 (= e!2112023 tp_is_empty!17509)))

(assert (= (and b!3401834 ((_ is ElementMatch!10161) (regex!5402 (rule!7966 (h!42414 tokens!494))))) b!3402393))

(assert (= (and b!3401834 ((_ is Concat!15793) (regex!5402 (rule!7966 (h!42414 tokens!494))))) b!3402394))

(assert (= (and b!3401834 ((_ is Star!10161) (regex!5402 (rule!7966 (h!42414 tokens!494))))) b!3402395))

(assert (= (and b!3401834 ((_ is Union!10161) (regex!5402 (rule!7966 (h!42414 tokens!494))))) b!3402396))

(declare-fun b!3402410 () Bool)

(declare-fun b_free!89109 () Bool)

(declare-fun b_next!89813 () Bool)

(assert (=> b!3402410 (= b_free!89109 (not b_next!89813))))

(declare-fun tp!1061631 () Bool)

(declare-fun b_and!237535 () Bool)

(assert (=> b!3402410 (= tp!1061631 b_and!237535)))

(declare-fun b_free!89111 () Bool)

(declare-fun b_next!89815 () Bool)

(assert (=> b!3402410 (= b_free!89111 (not b_next!89815))))

(declare-fun t!266120 () Bool)

(declare-fun tb!182483 () Bool)

(assert (=> (and b!3402410 (= (toChars!7469 (transformation!5402 (rule!7966 (h!42414 (t!266055 tokens!494))))) (toChars!7469 (transformation!5402 (rule!7966 separatorToken!241)))) t!266120) tb!182483))

(declare-fun result!226162 () Bool)

(assert (= result!226162 result!226112))

(assert (=> d!968050 t!266120))

(assert (=> b!3401982 t!266120))

(declare-fun t!266122 () Bool)

(declare-fun tb!182485 () Bool)

(assert (=> (and b!3402410 (= (toChars!7469 (transformation!5402 (rule!7966 (h!42414 (t!266055 tokens!494))))) (toChars!7469 (transformation!5402 (rule!7966 (h!42414 (t!266055 tokens!494)))))) t!266122) tb!182485))

(declare-fun result!226164 () Bool)

(assert (= result!226164 result!226124))

(assert (=> d!968066 t!266122))

(declare-fun t!266124 () Bool)

(declare-fun tb!182487 () Bool)

(assert (=> (and b!3402410 (= (toChars!7469 (transformation!5402 (rule!7966 (h!42414 (t!266055 tokens!494))))) (toChars!7469 (transformation!5402 (rule!7966 (h!42414 tokens!494))))) t!266124) tb!182487))

(declare-fun result!226166 () Bool)

(assert (= result!226166 result!226104))

(assert (=> d!968076 t!266124))

(assert (=> b!3401972 t!266124))

(declare-fun b_and!237537 () Bool)

(declare-fun tp!1061629 () Bool)

(assert (=> b!3402410 (= tp!1061629 (and (=> t!266120 result!226162) (=> t!266122 result!226164) (=> t!266124 result!226166) b_and!237537))))

(declare-fun e!2112038 () Bool)

(assert (=> b!3401844 (= tp!1061524 e!2112038)))

(declare-fun e!2112041 () Bool)

(assert (=> b!3402410 (= e!2112041 (and tp!1061631 tp!1061629))))

(declare-fun tp!1061630 () Bool)

(declare-fun e!2112036 () Bool)

(declare-fun b!3402408 () Bool)

(declare-fun e!2112040 () Bool)

(assert (=> b!3402408 (= e!2112040 (and (inv!21 (value!174417 (h!42414 (t!266055 tokens!494)))) e!2112036 tp!1061630))))

(declare-fun tp!1061632 () Bool)

(declare-fun b!3402407 () Bool)

(assert (=> b!3402407 (= e!2112038 (and (inv!50105 (h!42414 (t!266055 tokens!494))) e!2112040 tp!1061632))))

(declare-fun tp!1061633 () Bool)

(declare-fun b!3402409 () Bool)

(assert (=> b!3402409 (= e!2112036 (and tp!1061633 (inv!50102 (tag!5986 (rule!7966 (h!42414 (t!266055 tokens!494))))) (inv!50106 (transformation!5402 (rule!7966 (h!42414 (t!266055 tokens!494))))) e!2112041))))

(assert (= b!3402409 b!3402410))

(assert (= b!3402408 b!3402409))

(assert (= b!3402407 b!3402408))

(assert (= (and b!3401844 ((_ is Cons!36994) (t!266055 tokens!494))) b!3402407))

(declare-fun m!3775721 () Bool)

(assert (=> b!3402408 m!3775721))

(declare-fun m!3775723 () Bool)

(assert (=> b!3402407 m!3775723))

(declare-fun m!3775725 () Bool)

(assert (=> b!3402409 m!3775725))

(declare-fun m!3775727 () Bool)

(assert (=> b!3402409 m!3775727))

(declare-fun e!2112042 () Bool)

(assert (=> b!3401851 (= tp!1061525 e!2112042)))

(declare-fun b!3402412 () Bool)

(declare-fun tp!1061636 () Bool)

(declare-fun tp!1061638 () Bool)

(assert (=> b!3402412 (= e!2112042 (and tp!1061636 tp!1061638))))

(declare-fun b!3402414 () Bool)

(declare-fun tp!1061637 () Bool)

(declare-fun tp!1061635 () Bool)

(assert (=> b!3402414 (= e!2112042 (and tp!1061637 tp!1061635))))

(declare-fun b!3402413 () Bool)

(declare-fun tp!1061634 () Bool)

(assert (=> b!3402413 (= e!2112042 tp!1061634)))

(declare-fun b!3402411 () Bool)

(assert (=> b!3402411 (= e!2112042 tp_is_empty!17509)))

(assert (= (and b!3401851 ((_ is ElementMatch!10161) (regex!5402 (h!42415 rules!2135)))) b!3402411))

(assert (= (and b!3401851 ((_ is Concat!15793) (regex!5402 (h!42415 rules!2135)))) b!3402412))

(assert (= (and b!3401851 ((_ is Star!10161) (regex!5402 (h!42415 rules!2135)))) b!3402413))

(assert (= (and b!3401851 ((_ is Union!10161) (regex!5402 (h!42415 rules!2135)))) b!3402414))

(declare-fun e!2112043 () Bool)

(assert (=> b!3401846 (= tp!1061533 e!2112043)))

(declare-fun b!3402416 () Bool)

(declare-fun tp!1061641 () Bool)

(declare-fun tp!1061643 () Bool)

(assert (=> b!3402416 (= e!2112043 (and tp!1061641 tp!1061643))))

(declare-fun b!3402418 () Bool)

(declare-fun tp!1061642 () Bool)

(declare-fun tp!1061640 () Bool)

(assert (=> b!3402418 (= e!2112043 (and tp!1061642 tp!1061640))))

(declare-fun b!3402417 () Bool)

(declare-fun tp!1061639 () Bool)

(assert (=> b!3402417 (= e!2112043 tp!1061639)))

(declare-fun b!3402415 () Bool)

(assert (=> b!3402415 (= e!2112043 tp_is_empty!17509)))

(assert (= (and b!3401846 ((_ is ElementMatch!10161) (regex!5402 (rule!7966 separatorToken!241)))) b!3402415))

(assert (= (and b!3401846 ((_ is Concat!15793) (regex!5402 (rule!7966 separatorToken!241)))) b!3402416))

(assert (= (and b!3401846 ((_ is Star!10161) (regex!5402 (rule!7966 separatorToken!241)))) b!3402417))

(assert (= (and b!3401846 ((_ is Union!10161) (regex!5402 (rule!7966 separatorToken!241)))) b!3402418))

(declare-fun b!3402419 () Bool)

(declare-fun e!2112044 () Bool)

(declare-fun tp!1061644 () Bool)

(assert (=> b!3402419 (= e!2112044 (and tp_is_empty!17509 tp!1061644))))

(assert (=> b!3401830 (= tp!1061526 e!2112044)))

(assert (= (and b!3401830 ((_ is Cons!36993) (originalCharacters!6116 separatorToken!241))) b!3402419))

(declare-fun b!3402430 () Bool)

(declare-fun b_free!89113 () Bool)

(declare-fun b_next!89817 () Bool)

(assert (=> b!3402430 (= b_free!89113 (not b_next!89817))))

(declare-fun tp!1061654 () Bool)

(declare-fun b_and!237539 () Bool)

(assert (=> b!3402430 (= tp!1061654 b_and!237539)))

(declare-fun b_free!89115 () Bool)

(declare-fun b_next!89819 () Bool)

(assert (=> b!3402430 (= b_free!89115 (not b_next!89819))))

(declare-fun tb!182489 () Bool)

(declare-fun t!266126 () Bool)

(assert (=> (and b!3402430 (= (toChars!7469 (transformation!5402 (h!42415 (t!266056 rules!2135)))) (toChars!7469 (transformation!5402 (rule!7966 separatorToken!241)))) t!266126) tb!182489))

(declare-fun result!226170 () Bool)

(assert (= result!226170 result!226112))

(assert (=> d!968050 t!266126))

(assert (=> b!3401982 t!266126))

(declare-fun t!266128 () Bool)

(declare-fun tb!182491 () Bool)

(assert (=> (and b!3402430 (= (toChars!7469 (transformation!5402 (h!42415 (t!266056 rules!2135)))) (toChars!7469 (transformation!5402 (rule!7966 (h!42414 (t!266055 tokens!494)))))) t!266128) tb!182491))

(declare-fun result!226172 () Bool)

(assert (= result!226172 result!226124))

(assert (=> d!968066 t!266128))

(declare-fun tb!182493 () Bool)

(declare-fun t!266130 () Bool)

(assert (=> (and b!3402430 (= (toChars!7469 (transformation!5402 (h!42415 (t!266056 rules!2135)))) (toChars!7469 (transformation!5402 (rule!7966 (h!42414 tokens!494))))) t!266130) tb!182493))

(declare-fun result!226174 () Bool)

(assert (= result!226174 result!226104))

(assert (=> d!968076 t!266130))

(assert (=> b!3401972 t!266130))

(declare-fun tp!1061655 () Bool)

(declare-fun b_and!237541 () Bool)

(assert (=> b!3402430 (= tp!1061655 (and (=> t!266126 result!226170) (=> t!266130 result!226174) (=> t!266128 result!226172) b_and!237541))))

(declare-fun e!2112054 () Bool)

(assert (=> b!3402430 (= e!2112054 (and tp!1061654 tp!1061655))))

(declare-fun tp!1061656 () Bool)

(declare-fun e!2112055 () Bool)

(declare-fun b!3402429 () Bool)

(assert (=> b!3402429 (= e!2112055 (and tp!1061656 (inv!50102 (tag!5986 (h!42415 (t!266056 rules!2135)))) (inv!50106 (transformation!5402 (h!42415 (t!266056 rules!2135)))) e!2112054))))

(declare-fun b!3402428 () Bool)

(declare-fun e!2112056 () Bool)

(declare-fun tp!1061653 () Bool)

(assert (=> b!3402428 (= e!2112056 (and e!2112055 tp!1061653))))

(assert (=> b!3401847 (= tp!1061531 e!2112056)))

(assert (= b!3402429 b!3402430))

(assert (= b!3402428 b!3402429))

(assert (= (and b!3401847 ((_ is Cons!36995) (t!266056 rules!2135))) b!3402428))

(declare-fun m!3775729 () Bool)

(assert (=> b!3402429 m!3775729))

(declare-fun m!3775731 () Bool)

(assert (=> b!3402429 m!3775731))

(declare-fun b_lambda!97139 () Bool)

(assert (= b_lambda!97111 (or (and b!3401854 b_free!89095 (= (toChars!7469 (transformation!5402 (h!42415 rules!2135))) (toChars!7469 (transformation!5402 (rule!7966 separatorToken!241))))) (and b!3401852 b_free!89091 (= (toChars!7469 (transformation!5402 (rule!7966 (h!42414 tokens!494)))) (toChars!7469 (transformation!5402 (rule!7966 separatorToken!241))))) (and b!3402410 b_free!89111 (= (toChars!7469 (transformation!5402 (rule!7966 (h!42414 (t!266055 tokens!494))))) (toChars!7469 (transformation!5402 (rule!7966 separatorToken!241))))) (and b!3402430 b_free!89115 (= (toChars!7469 (transformation!5402 (h!42415 (t!266056 rules!2135)))) (toChars!7469 (transformation!5402 (rule!7966 separatorToken!241))))) (and b!3401845 b_free!89099) b_lambda!97139)))

(declare-fun b_lambda!97141 () Bool)

(assert (= b_lambda!97091 (or b!3401838 b_lambda!97141)))

(declare-fun bs!556378 () Bool)

(declare-fun d!968150 () Bool)

(assert (= bs!556378 (and d!968150 b!3401838)))

(assert (=> bs!556378 (= (dynLambda!15451 lambda!121023 (h!42414 tokens!494)) (not (isSeparator!5402 (rule!7966 (h!42414 tokens!494)))))))

(assert (=> b!3401890 d!968150))

(declare-fun b_lambda!97143 () Bool)

(assert (= b_lambda!97101 (or b!3401838 b_lambda!97143)))

(assert (=> d!967986 d!968150))

(declare-fun b_lambda!97145 () Bool)

(assert (= b_lambda!97105 (or (and b!3401854 b_free!89095 (= (toChars!7469 (transformation!5402 (h!42415 rules!2135))) (toChars!7469 (transformation!5402 (rule!7966 separatorToken!241))))) (and b!3401852 b_free!89091 (= (toChars!7469 (transformation!5402 (rule!7966 (h!42414 tokens!494)))) (toChars!7469 (transformation!5402 (rule!7966 separatorToken!241))))) (and b!3402410 b_free!89111 (= (toChars!7469 (transformation!5402 (rule!7966 (h!42414 (t!266055 tokens!494))))) (toChars!7469 (transformation!5402 (rule!7966 separatorToken!241))))) (and b!3402430 b_free!89115 (= (toChars!7469 (transformation!5402 (h!42415 (t!266056 rules!2135)))) (toChars!7469 (transformation!5402 (rule!7966 separatorToken!241))))) (and b!3401845 b_free!89099) b_lambda!97145)))

(declare-fun b_lambda!97147 () Bool)

(assert (= b_lambda!97115 (or (and b!3401852 b_free!89091) (and b!3402410 b_free!89111 (= (toChars!7469 (transformation!5402 (rule!7966 (h!42414 (t!266055 tokens!494))))) (toChars!7469 (transformation!5402 (rule!7966 (h!42414 tokens!494)))))) (and b!3401845 b_free!89099 (= (toChars!7469 (transformation!5402 (rule!7966 separatorToken!241))) (toChars!7469 (transformation!5402 (rule!7966 (h!42414 tokens!494)))))) (and b!3401854 b_free!89095 (= (toChars!7469 (transformation!5402 (h!42415 rules!2135))) (toChars!7469 (transformation!5402 (rule!7966 (h!42414 tokens!494)))))) (and b!3402430 b_free!89115 (= (toChars!7469 (transformation!5402 (h!42415 (t!266056 rules!2135)))) (toChars!7469 (transformation!5402 (rule!7966 (h!42414 tokens!494)))))) b_lambda!97147)))

(declare-fun b_lambda!97149 () Bool)

(assert (= b_lambda!97099 (or b!3401838 b_lambda!97149)))

(declare-fun bs!556379 () Bool)

(declare-fun d!968152 () Bool)

(assert (= bs!556379 (and d!968152 b!3401838)))

(assert (=> bs!556379 (= (dynLambda!15451 lambda!121023 (h!42414 (t!266055 tokens!494))) (not (isSeparator!5402 (rule!7966 (h!42414 (t!266055 tokens!494))))))))

(assert (=> d!967984 d!968152))

(declare-fun b_lambda!97151 () Bool)

(assert (= b_lambda!97103 (or (and b!3401852 b_free!89091) (and b!3402410 b_free!89111 (= (toChars!7469 (transformation!5402 (rule!7966 (h!42414 (t!266055 tokens!494))))) (toChars!7469 (transformation!5402 (rule!7966 (h!42414 tokens!494)))))) (and b!3401845 b_free!89099 (= (toChars!7469 (transformation!5402 (rule!7966 separatorToken!241))) (toChars!7469 (transformation!5402 (rule!7966 (h!42414 tokens!494)))))) (and b!3401854 b_free!89095 (= (toChars!7469 (transformation!5402 (h!42415 rules!2135))) (toChars!7469 (transformation!5402 (rule!7966 (h!42414 tokens!494)))))) (and b!3402430 b_free!89115 (= (toChars!7469 (transformation!5402 (h!42415 (t!266056 rules!2135)))) (toChars!7469 (transformation!5402 (rule!7966 (h!42414 tokens!494)))))) b_lambda!97151)))

(declare-fun b_lambda!97153 () Bool)

(assert (= b_lambda!97113 (or (and b!3401854 b_free!89095 (= (toChars!7469 (transformation!5402 (h!42415 rules!2135))) (toChars!7469 (transformation!5402 (rule!7966 (h!42414 (t!266055 tokens!494))))))) (and b!3401845 b_free!89099 (= (toChars!7469 (transformation!5402 (rule!7966 separatorToken!241))) (toChars!7469 (transformation!5402 (rule!7966 (h!42414 (t!266055 tokens!494))))))) (and b!3402410 b_free!89111) (and b!3401852 b_free!89091 (= (toChars!7469 (transformation!5402 (rule!7966 (h!42414 tokens!494)))) (toChars!7469 (transformation!5402 (rule!7966 (h!42414 (t!266055 tokens!494))))))) (and b!3402430 b_free!89115 (= (toChars!7469 (transformation!5402 (h!42415 (t!266056 rules!2135)))) (toChars!7469 (transformation!5402 (rule!7966 (h!42414 (t!266055 tokens!494))))))) b_lambda!97153)))

(check-sat (not d!968056) (not d!968064) (not b!3402365) (not b!3402175) b_and!237537 b_and!237535 (not b_lambda!97153) (not b_next!89803) (not d!968066) b_and!237509 (not b!3402110) (not d!968092) (not d!968068) (not b!3402417) (not d!967986) (not b!3401957) (not d!968034) (not b!3401967) (not d!968002) (not b!3401919) (not b!3401982) tp_is_empty!17509 (not b!3402180) (not b!3401958) (not b!3402414) (not b_next!89797) (not b!3402378) (not b!3402360) (not b!3402041) (not b!3402135) (not d!968138) (not d!967996) (not b!3402165) (not b!3402131) (not b!3401973) (not tb!182459) (not d!968140) (not b!3401972) b_and!237459 b_and!237513 (not b!3401956) (not b!3401891) (not b!3401964) b_and!237539 (not b!3402126) (not b!3401920) (not d!968076) (not b!3402149) (not b!3402395) (not b!3401993) (not b_lambda!97143) (not b!3401987) (not b!3402366) (not b!3402413) (not b!3402083) (not d!967990) (not tb!182447) (not b!3402049) (not b!3402047) (not b_next!89799) (not d!967994) (not b_lambda!97149) (not d!967998) (not b!3401963) (not b!3401959) (not b_next!89795) (not b!3401984) (not b!3402412) (not d!968074) (not d!967966) (not b!3401978) (not b!3402418) (not b!3402416) (not d!968086) (not b!3401981) (not b!3402151) (not b_next!89793) (not b!3402167) (not b!3402359) (not b!3402409) (not b!3402108) (not b_next!89813) (not b!3402115) (not b!3401983) (not b_lambda!97139) (not b!3402419) (not b!3402127) (not b!3402095) (not d!968050) (not d!968054) (not b!3402044) (not b!3402166) (not b!3402150) (not b!3402394) (not d!968084) (not b_next!89801) (not b!3402408) (not b!3402088) (not b!3401986) (not b!3402428) (not b!3401918) (not b!3401992) (not bm!245858) (not b_next!89817) b_and!237541 b_and!237511 (not b!3402323) (not d!968070) (not b!3402139) (not b!3402093) (not b!3402085) (not b!3402181) (not d!968036) (not d!968058) (not d!967984) (not b_lambda!97145) (not b!3402039) (not b!3402130) (not d!967968) b_and!237455 (not tb!182441) (not d!968044) (not d!968080) (not b!3402134) (not b_lambda!97151) (not d!968082) b_and!237463 (not b!3402429) (not b!3402396) (not d!968012) (not b!3402109) (not d!967988) (not b!3401985) (not b!3402143) (not b!3402307) (not d!967982) (not b_next!89819) (not d!968090) (not b_lambda!97147) (not b!3402137) (not b!3402141) (not b!3402148) (not d!967952) (not b!3402040) (not b_next!89815) (not d!968088) (not d!968052) (not b_lambda!97141) (not b!3402144) (not d!968142) (not b!3402407) (not d!968038))
(check-sat b_and!237509 (not b_next!89797) b_and!237539 (not b_next!89799) (not b_next!89795) (not b_next!89793) (not b_next!89813) (not b_next!89801) b_and!237455 b_and!237463 (not b_next!89819) (not b_next!89815) b_and!237537 b_and!237535 (not b_next!89803) b_and!237459 b_and!237513 (not b_next!89817) b_and!237541 b_and!237511)
