; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!300442 () Bool)

(assert start!300442)

(declare-fun b!3200934 () Bool)

(declare-fun b_free!85097 () Bool)

(declare-fun b_next!85801 () Bool)

(assert (=> b!3200934 (= b_free!85097 (not b_next!85801))))

(declare-fun tp!1011741 () Bool)

(declare-fun b_and!212783 () Bool)

(assert (=> b!3200934 (= tp!1011741 b_and!212783)))

(declare-fun b_free!85099 () Bool)

(declare-fun b_next!85803 () Bool)

(assert (=> b!3200934 (= b_free!85099 (not b_next!85803))))

(declare-fun tp!1011751 () Bool)

(declare-fun b_and!212785 () Bool)

(assert (=> b!3200934 (= tp!1011751 b_and!212785)))

(declare-fun b!3200937 () Bool)

(declare-fun b_free!85101 () Bool)

(declare-fun b_next!85805 () Bool)

(assert (=> b!3200937 (= b_free!85101 (not b_next!85805))))

(declare-fun tp!1011742 () Bool)

(declare-fun b_and!212787 () Bool)

(assert (=> b!3200937 (= tp!1011742 b_and!212787)))

(declare-fun b_free!85103 () Bool)

(declare-fun b_next!85807 () Bool)

(assert (=> b!3200937 (= b_free!85103 (not b_next!85807))))

(declare-fun tp!1011740 () Bool)

(declare-fun b_and!212789 () Bool)

(assert (=> b!3200937 (= tp!1011740 b_and!212789)))

(declare-fun b!3200956 () Bool)

(declare-fun b_free!85105 () Bool)

(declare-fun b_next!85809 () Bool)

(assert (=> b!3200956 (= b_free!85105 (not b_next!85809))))

(declare-fun tp!1011746 () Bool)

(declare-fun b_and!212791 () Bool)

(assert (=> b!3200956 (= tp!1011746 b_and!212791)))

(declare-fun b_free!85107 () Bool)

(declare-fun b_next!85811 () Bool)

(assert (=> b!3200956 (= b_free!85107 (not b_next!85811))))

(declare-fun tp!1011745 () Bool)

(declare-fun b_and!212793 () Bool)

(assert (=> b!3200956 (= tp!1011745 b_and!212793)))

(declare-fun e!1995703 () Bool)

(declare-fun e!1995699 () Bool)

(declare-datatypes ((List!36216 0))(
  ( (Nil!36092) (Cons!36092 (h!41512 (_ BitVec 16)) (t!237455 List!36216)) )
))
(declare-datatypes ((TokenValue!5434 0))(
  ( (FloatLiteralValue!10868 (text!38483 List!36216)) (TokenValueExt!5433 (__x!23085 Int)) (Broken!27170 (value!168748 List!36216)) (Object!5557) (End!5434) (Def!5434) (Underscore!5434) (Match!5434) (Else!5434) (Error!5434) (Case!5434) (If!5434) (Extends!5434) (Abstract!5434) (Class!5434) (Val!5434) (DelimiterValue!10868 (del!5494 List!36216)) (KeywordValue!5440 (value!168749 List!36216)) (CommentValue!10868 (value!168750 List!36216)) (WhitespaceValue!10868 (value!168751 List!36216)) (IndentationValue!5434 (value!168752 List!36216)) (String!40503) (Int32!5434) (Broken!27171 (value!168753 List!36216)) (Boolean!5435) (Unit!50505) (OperatorValue!5437 (op!5494 List!36216)) (IdentifierValue!10868 (value!168754 List!36216)) (IdentifierValue!10869 (value!168755 List!36216)) (WhitespaceValue!10869 (value!168756 List!36216)) (True!10868) (False!10868) (Broken!27172 (value!168757 List!36216)) (Broken!27173 (value!168758 List!36216)) (True!10869) (RightBrace!5434) (RightBracket!5434) (Colon!5434) (Null!5434) (Comma!5434) (LeftBracket!5434) (False!10869) (LeftBrace!5434) (ImaginaryLiteralValue!5434 (text!38484 List!36216)) (StringLiteralValue!16302 (value!168759 List!36216)) (EOFValue!5434 (value!168760 List!36216)) (IdentValue!5434 (value!168761 List!36216)) (DelimiterValue!10869 (value!168762 List!36216)) (DedentValue!5434 (value!168763 List!36216)) (NewLineValue!5434 (value!168764 List!36216)) (IntegerValue!16302 (value!168765 (_ BitVec 32)) (text!38485 List!36216)) (IntegerValue!16303 (value!168766 Int) (text!38486 List!36216)) (Times!5434) (Or!5434) (Equal!5434) (Minus!5434) (Broken!27174 (value!168767 List!36216)) (And!5434) (Div!5434) (LessEqual!5434) (Mod!5434) (Concat!15397) (Not!5434) (Plus!5434) (SpaceValue!5434 (value!168768 List!36216)) (IntegerValue!16304 (value!168769 Int) (text!38487 List!36216)) (StringLiteralValue!16303 (text!38488 List!36216)) (FloatLiteralValue!10869 (text!38489 List!36216)) (BytesLiteralValue!5434 (value!168770 List!36216)) (CommentValue!10869 (value!168771 List!36216)) (StringLiteralValue!16304 (value!168772 List!36216)) (ErrorTokenValue!5434 (msg!5495 List!36216)) )
))
(declare-datatypes ((C!20112 0))(
  ( (C!20113 (val!12104 Int)) )
))
(declare-datatypes ((List!36217 0))(
  ( (Nil!36093) (Cons!36093 (h!41513 C!20112) (t!237456 List!36217)) )
))
(declare-datatypes ((IArray!21571 0))(
  ( (IArray!21572 (innerList!10843 List!36217)) )
))
(declare-datatypes ((Conc!10783 0))(
  ( (Node!10783 (left!28043 Conc!10783) (right!28373 Conc!10783) (csize!21796 Int) (cheight!10994 Int)) (Leaf!16996 (xs!13901 IArray!21571) (csize!21797 Int)) (Empty!10783) )
))
(declare-datatypes ((BalanceConc!21180 0))(
  ( (BalanceConc!21181 (c!537372 Conc!10783)) )
))
(declare-datatypes ((Regex!9963 0))(
  ( (ElementMatch!9963 (c!537373 C!20112)) (Concat!15398 (regOne!20438 Regex!9963) (regTwo!20438 Regex!9963)) (EmptyExpr!9963) (Star!9963 (reg!10292 Regex!9963)) (EmptyLang!9963) (Union!9963 (regOne!20439 Regex!9963) (regTwo!20439 Regex!9963)) )
))
(declare-datatypes ((String!40504 0))(
  ( (String!40505 (value!168773 String)) )
))
(declare-datatypes ((TokenValueInjection!10296 0))(
  ( (TokenValueInjection!10297 (toValue!7280 Int) (toChars!7139 Int)) )
))
(declare-datatypes ((Rule!10208 0))(
  ( (Rule!10209 (regex!5204 Regex!9963) (tag!5726 String!40504) (isSeparator!5204 Bool) (transformation!5204 TokenValueInjection!10296)) )
))
(declare-datatypes ((Token!9774 0))(
  ( (Token!9775 (value!168774 TokenValue!5434) (rule!7640 Rule!10208) (size!27183 Int) (originalCharacters!5918 List!36217)) )
))
(declare-datatypes ((List!36218 0))(
  ( (Nil!36094) (Cons!36094 (h!41514 Token!9774) (t!237457 List!36218)) )
))
(declare-fun tokens!494 () List!36218)

(declare-fun b!3200925 () Bool)

(declare-fun tp!1011744 () Bool)

(declare-fun inv!48942 (String!40504) Bool)

(declare-fun inv!48945 (TokenValueInjection!10296) Bool)

(assert (=> b!3200925 (= e!1995703 (and tp!1011744 (inv!48942 (tag!5726 (rule!7640 (h!41514 tokens!494)))) (inv!48945 (transformation!5204 (rule!7640 (h!41514 tokens!494)))) e!1995699))))

(declare-fun b!3200926 () Bool)

(declare-fun res!1302570 () Bool)

(declare-fun e!1995724 () Bool)

(assert (=> b!3200926 (=> (not res!1302570) (not e!1995724))))

(declare-datatypes ((IArray!21573 0))(
  ( (IArray!21574 (innerList!10844 List!36218)) )
))
(declare-datatypes ((Conc!10784 0))(
  ( (Node!10784 (left!28044 Conc!10784) (right!28374 Conc!10784) (csize!21798 Int) (cheight!10995 Int)) (Leaf!16997 (xs!13902 IArray!21573) (csize!21799 Int)) (Empty!10784) )
))
(declare-datatypes ((BalanceConc!21182 0))(
  ( (BalanceConc!21183 (c!537374 Conc!10784)) )
))
(declare-datatypes ((tuple2!35470 0))(
  ( (tuple2!35471 (_1!20869 BalanceConc!21182) (_2!20869 BalanceConc!21180)) )
))
(declare-fun lt!1079704 () tuple2!35470)

(declare-fun separatorToken!241 () Token!9774)

(declare-fun apply!8145 (BalanceConc!21182 Int) Token!9774)

(assert (=> b!3200926 (= res!1302570 (= (apply!8145 (_1!20869 lt!1079704) 0) separatorToken!241))))

(declare-fun b!3200927 () Bool)

(declare-fun e!1995694 () Bool)

(assert (=> b!3200927 (= e!1995694 true)))

(declare-datatypes ((LexerInterface!4793 0))(
  ( (LexerInterfaceExt!4790 (__x!23086 Int)) (Lexer!4791) )
))
(declare-fun thiss!18206 () LexerInterface!4793)

(declare-datatypes ((List!36219 0))(
  ( (Nil!36095) (Cons!36095 (h!41515 Rule!10208) (t!237458 List!36219)) )
))
(declare-fun rules!2135 () List!36219)

(declare-fun e!1995701 () Bool)

(declare-fun rulesProduceIndividualToken!2285 (LexerInterface!4793 List!36219 Token!9774) Bool)

(assert (=> b!3200927 (= (rulesProduceIndividualToken!2285 thiss!18206 rules!2135 (h!41514 (t!237457 tokens!494))) e!1995701)))

(declare-fun res!1302576 () Bool)

(assert (=> b!3200927 (=> (not res!1302576) (not e!1995701))))

(declare-fun lt!1079693 () tuple2!35470)

(declare-fun size!27184 (BalanceConc!21182) Int)

(assert (=> b!3200927 (= res!1302576 (= (size!27184 (_1!20869 lt!1079693)) 1))))

(declare-fun lt!1079695 () BalanceConc!21180)

(declare-fun lex!2123 (LexerInterface!4793 List!36219 BalanceConc!21180) tuple2!35470)

(assert (=> b!3200927 (= lt!1079693 (lex!2123 thiss!18206 rules!2135 lt!1079695))))

(declare-fun lt!1079700 () BalanceConc!21182)

(declare-fun printTailRec!1290 (LexerInterface!4793 BalanceConc!21182 Int BalanceConc!21180) BalanceConc!21180)

(assert (=> b!3200927 (= lt!1079695 (printTailRec!1290 thiss!18206 lt!1079700 0 (BalanceConc!21181 Empty!10783)))))

(declare-fun print!1858 (LexerInterface!4793 BalanceConc!21182) BalanceConc!21180)

(assert (=> b!3200927 (= lt!1079695 (print!1858 thiss!18206 lt!1079700))))

(declare-fun singletonSeq!2300 (Token!9774) BalanceConc!21182)

(assert (=> b!3200927 (= lt!1079700 (singletonSeq!2300 (h!41514 (t!237457 tokens!494))))))

(assert (=> b!3200927 e!1995724))

(declare-fun res!1302571 () Bool)

(assert (=> b!3200927 (=> (not res!1302571) (not e!1995724))))

(assert (=> b!3200927 (= res!1302571 (= (size!27184 (_1!20869 lt!1079704)) 1))))

(declare-fun lt!1079714 () BalanceConc!21180)

(assert (=> b!3200927 (= lt!1079704 (lex!2123 thiss!18206 rules!2135 lt!1079714))))

(declare-fun lt!1079689 () BalanceConc!21182)

(assert (=> b!3200927 (= lt!1079714 (printTailRec!1290 thiss!18206 lt!1079689 0 (BalanceConc!21181 Empty!10783)))))

(assert (=> b!3200927 (= lt!1079714 (print!1858 thiss!18206 lt!1079689))))

(assert (=> b!3200927 (= lt!1079689 (singletonSeq!2300 separatorToken!241))))

(declare-datatypes ((Unit!50506 0))(
  ( (Unit!50507) )
))
(declare-fun lt!1079685 () Unit!50506)

(declare-fun e!1995715 () Unit!50506)

(assert (=> b!3200927 (= lt!1079685 e!1995715)))

(declare-fun c!537371 () Bool)

(declare-fun lt!1079690 () C!20112)

(declare-fun contains!6421 (List!36217 C!20112) Bool)

(declare-fun usedCharacters!520 (Regex!9963) List!36217)

(assert (=> b!3200927 (= c!537371 (not (contains!6421 (usedCharacters!520 (regex!5204 (rule!7640 separatorToken!241))) lt!1079690)))))

(declare-fun lt!1079706 () List!36217)

(declare-fun head!7019 (List!36217) C!20112)

(assert (=> b!3200927 (= lt!1079690 (head!7019 lt!1079706))))

(declare-fun e!1995723 () Bool)

(assert (=> b!3200927 e!1995723))

(declare-fun res!1302577 () Bool)

(assert (=> b!3200927 (=> (not res!1302577) (not e!1995723))))

(declare-datatypes ((Option!7103 0))(
  ( (None!7102) (Some!7102 (v!35632 Rule!10208)) )
))
(declare-fun lt!1079699 () Option!7103)

(declare-fun isDefined!5532 (Option!7103) Bool)

(assert (=> b!3200927 (= res!1302577 (isDefined!5532 lt!1079699))))

(declare-fun getRuleFromTag!909 (LexerInterface!4793 List!36219 String!40504) Option!7103)

(assert (=> b!3200927 (= lt!1079699 (getRuleFromTag!909 thiss!18206 rules!2135 (tag!5726 (rule!7640 separatorToken!241))))))

(declare-fun lt!1079710 () Unit!50506)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!909 (LexerInterface!4793 List!36219 List!36217 Token!9774) Unit!50506)

(assert (=> b!3200927 (= lt!1079710 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!909 thiss!18206 rules!2135 lt!1079706 separatorToken!241))))

(declare-fun lt!1079702 () List!36217)

(declare-fun lt!1079712 () BalanceConc!21180)

(declare-datatypes ((tuple2!35472 0))(
  ( (tuple2!35473 (_1!20870 Token!9774) (_2!20870 List!36217)) )
))
(declare-datatypes ((Option!7104 0))(
  ( (None!7103) (Some!7103 (v!35633 tuple2!35472)) )
))
(declare-fun maxPrefixOneRule!1572 (LexerInterface!4793 Rule!10208 List!36217) Option!7104)

(declare-fun apply!8146 (TokenValueInjection!10296 BalanceConc!21180) TokenValue!5434)

(declare-fun size!27185 (List!36217) Int)

(assert (=> b!3200927 (= (maxPrefixOneRule!1572 thiss!18206 (rule!7640 (h!41514 tokens!494)) lt!1079702) (Some!7103 (tuple2!35473 (Token!9775 (apply!8146 (transformation!5204 (rule!7640 (h!41514 tokens!494))) lt!1079712) (rule!7640 (h!41514 tokens!494)) (size!27185 lt!1079702) lt!1079702) Nil!36093)))))

(declare-fun lt!1079708 () Unit!50506)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!685 (LexerInterface!4793 List!36219 List!36217 List!36217 List!36217 Rule!10208) Unit!50506)

(assert (=> b!3200927 (= lt!1079708 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!685 thiss!18206 rules!2135 lt!1079702 lt!1079702 Nil!36093 (rule!7640 (h!41514 tokens!494))))))

(declare-fun e!1995705 () Bool)

(assert (=> b!3200927 e!1995705))

(declare-fun res!1302566 () Bool)

(assert (=> b!3200927 (=> (not res!1302566) (not e!1995705))))

(declare-fun lt!1079705 () Option!7103)

(assert (=> b!3200927 (= res!1302566 (isDefined!5532 lt!1079705))))

(assert (=> b!3200927 (= lt!1079705 (getRuleFromTag!909 thiss!18206 rules!2135 (tag!5726 (rule!7640 (h!41514 tokens!494)))))))

(declare-fun lt!1079711 () Unit!50506)

(assert (=> b!3200927 (= lt!1079711 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!909 thiss!18206 rules!2135 lt!1079702 (h!41514 tokens!494)))))

(declare-fun lt!1079697 () Unit!50506)

(declare-fun lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!832 (LexerInterface!4793 List!36219 List!36218 Token!9774) Unit!50506)

(assert (=> b!3200927 (= lt!1079697 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!832 thiss!18206 rules!2135 tokens!494 (h!41514 tokens!494)))))

(declare-fun b!3200928 () Bool)

(declare-fun res!1302565 () Bool)

(assert (=> b!3200928 (=> (not res!1302565) (not e!1995701))))

(assert (=> b!3200928 (= res!1302565 (= (apply!8145 (_1!20869 lt!1079693) 0) (h!41514 (t!237457 tokens!494))))))

(declare-fun b!3200929 () Bool)

(declare-fun e!1995711 () Bool)

(assert (=> b!3200929 (= e!1995705 e!1995711)))

(declare-fun res!1302578 () Bool)

(assert (=> b!3200929 (=> (not res!1302578) (not e!1995711))))

(declare-fun lt!1079687 () Rule!10208)

(declare-fun matchR!4597 (Regex!9963 List!36217) Bool)

(assert (=> b!3200929 (= res!1302578 (matchR!4597 (regex!5204 lt!1079687) lt!1079702))))

(declare-fun get!11483 (Option!7103) Rule!10208)

(assert (=> b!3200929 (= lt!1079687 (get!11483 lt!1079705))))

(declare-fun b!3200930 () Bool)

(declare-fun res!1302584 () Bool)

(declare-fun e!1995695 () Bool)

(assert (=> b!3200930 (=> res!1302584 e!1995695)))

(assert (=> b!3200930 (= res!1302584 (not (rulesProduceIndividualToken!2285 thiss!18206 rules!2135 (h!41514 tokens!494))))))

(declare-fun b!3200931 () Bool)

(declare-fun Unit!50508 () Unit!50506)

(assert (=> b!3200931 (= e!1995715 Unit!50508)))

(declare-fun lt!1079707 () Unit!50506)

(declare-fun lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!368 (Regex!9963 List!36217 C!20112) Unit!50506)

(assert (=> b!3200931 (= lt!1079707 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!368 (regex!5204 (rule!7640 separatorToken!241)) lt!1079706 lt!1079690))))

(declare-fun res!1302569 () Bool)

(assert (=> b!3200931 (= res!1302569 (not (matchR!4597 (regex!5204 (rule!7640 separatorToken!241)) lt!1079706)))))

(declare-fun e!1995697 () Bool)

(assert (=> b!3200931 (=> (not res!1302569) (not e!1995697))))

(assert (=> b!3200931 e!1995697))

(declare-fun e!1995712 () Bool)

(declare-fun b!3200932 () Bool)

(declare-fun e!1995707 () Bool)

(declare-fun tp!1011752 () Bool)

(assert (=> b!3200932 (= e!1995712 (and tp!1011752 (inv!48942 (tag!5726 (rule!7640 separatorToken!241))) (inv!48945 (transformation!5204 (rule!7640 separatorToken!241))) e!1995707))))

(declare-fun b!3200933 () Bool)

(declare-fun e!1995716 () Bool)

(assert (=> b!3200933 (= e!1995695 e!1995716)))

(declare-fun res!1302586 () Bool)

(assert (=> b!3200933 (=> res!1302586 e!1995716)))

(declare-fun isEmpty!20173 (BalanceConc!21182) Bool)

(assert (=> b!3200933 (= res!1302586 (isEmpty!20173 (_1!20869 (lex!2123 thiss!18206 rules!2135 lt!1079712))))))

(declare-fun seqFromList!3479 (List!36217) BalanceConc!21180)

(assert (=> b!3200933 (= lt!1079712 (seqFromList!3479 lt!1079702))))

(declare-fun e!1995704 () Bool)

(assert (=> b!3200934 (= e!1995704 (and tp!1011741 tp!1011751))))

(declare-fun tp!1011743 () Bool)

(declare-fun b!3200935 () Bool)

(declare-fun e!1995721 () Bool)

(assert (=> b!3200935 (= e!1995721 (and tp!1011743 (inv!48942 (tag!5726 (h!41515 rules!2135))) (inv!48945 (transformation!5204 (h!41515 rules!2135))) e!1995704))))

(declare-fun b!3200936 () Bool)

(declare-fun isEmpty!20174 (BalanceConc!21180) Bool)

(assert (=> b!3200936 (= e!1995724 (isEmpty!20174 (_2!20869 lt!1079704)))))

(declare-fun res!1302579 () Bool)

(declare-fun e!1995718 () Bool)

(assert (=> start!300442 (=> (not res!1302579) (not e!1995718))))

(get-info :version)

(assert (=> start!300442 (= res!1302579 ((_ is Lexer!4791) thiss!18206))))

(assert (=> start!300442 e!1995718))

(assert (=> start!300442 true))

(declare-fun e!1995709 () Bool)

(assert (=> start!300442 e!1995709))

(declare-fun e!1995706 () Bool)

(assert (=> start!300442 e!1995706))

(declare-fun e!1995698 () Bool)

(declare-fun inv!48946 (Token!9774) Bool)

(assert (=> start!300442 (and (inv!48946 separatorToken!241) e!1995698)))

(assert (=> b!3200937 (= e!1995699 (and tp!1011742 tp!1011740))))

(declare-fun b!3200938 () Bool)

(declare-fun tp!1011748 () Bool)

(assert (=> b!3200938 (= e!1995709 (and e!1995721 tp!1011748))))

(declare-fun b!3200939 () Bool)

(declare-fun e!1995714 () Bool)

(assert (=> b!3200939 (= e!1995716 e!1995714)))

(declare-fun res!1302567 () Bool)

(assert (=> b!3200939 (=> res!1302567 e!1995714)))

(assert (=> b!3200939 (= res!1302567 (or (isSeparator!5204 (rule!7640 (h!41514 tokens!494))) (isSeparator!5204 (rule!7640 (h!41514 (t!237457 tokens!494))))))))

(declare-fun lt!1079694 () Unit!50506)

(declare-fun lambda!117183 () Int)

(declare-fun forallContained!1175 (List!36218 Int Token!9774) Unit!50506)

(assert (=> b!3200939 (= lt!1079694 (forallContained!1175 tokens!494 lambda!117183 (h!41514 (t!237457 tokens!494))))))

(declare-fun lt!1079686 () Unit!50506)

(assert (=> b!3200939 (= lt!1079686 (forallContained!1175 tokens!494 lambda!117183 (h!41514 tokens!494)))))

(declare-fun b!3200940 () Bool)

(declare-fun e!1995708 () Bool)

(assert (=> b!3200940 (= e!1995708 e!1995694)))

(declare-fun res!1302572 () Bool)

(assert (=> b!3200940 (=> res!1302572 e!1995694)))

(declare-fun lt!1079692 () List!36217)

(declare-fun lt!1079696 () List!36217)

(assert (=> b!3200940 (= res!1302572 (not (= lt!1079692 lt!1079696)))))

(declare-fun lt!1079703 () List!36217)

(assert (=> b!3200940 (= lt!1079703 lt!1079696)))

(declare-fun lt!1079688 () List!36217)

(declare-fun ++!8648 (List!36217 List!36217) List!36217)

(assert (=> b!3200940 (= lt!1079696 (++!8648 lt!1079702 lt!1079688))))

(declare-fun lt!1079683 () List!36217)

(declare-fun lt!1079709 () Unit!50506)

(declare-fun lemmaConcatAssociativity!1722 (List!36217 List!36217 List!36217) Unit!50506)

(assert (=> b!3200940 (= lt!1079709 (lemmaConcatAssociativity!1722 lt!1079702 lt!1079706 lt!1079683))))

(declare-fun b!3200941 () Bool)

(declare-fun e!1995700 () Bool)

(assert (=> b!3200941 (= e!1995723 e!1995700)))

(declare-fun res!1302574 () Bool)

(assert (=> b!3200941 (=> (not res!1302574) (not e!1995700))))

(declare-fun lt!1079713 () Rule!10208)

(assert (=> b!3200941 (= res!1302574 (matchR!4597 (regex!5204 lt!1079713) lt!1079706))))

(assert (=> b!3200941 (= lt!1079713 (get!11483 lt!1079699))))

(declare-fun b!3200942 () Bool)

(assert (=> b!3200942 (= e!1995700 (= (rule!7640 separatorToken!241) lt!1079713))))

(declare-fun b!3200943 () Bool)

(declare-fun res!1302568 () Bool)

(assert (=> b!3200943 (=> (not res!1302568) (not e!1995718))))

(assert (=> b!3200943 (= res!1302568 (isSeparator!5204 (rule!7640 separatorToken!241)))))

(declare-fun b!3200944 () Bool)

(declare-fun e!1995696 () Bool)

(assert (=> b!3200944 (= e!1995696 e!1995708)))

(declare-fun res!1302564 () Bool)

(assert (=> b!3200944 (=> res!1302564 e!1995708)))

(assert (=> b!3200944 (= res!1302564 (not (= lt!1079692 lt!1079703)))))

(assert (=> b!3200944 (= lt!1079703 (++!8648 (++!8648 lt!1079702 lt!1079706) lt!1079683))))

(declare-fun b!3200945 () Bool)

(declare-fun e!1995722 () Bool)

(assert (=> b!3200945 (= e!1995722 e!1995695)))

(declare-fun res!1302575 () Bool)

(assert (=> b!3200945 (=> res!1302575 e!1995695)))

(declare-fun lt!1079691 () List!36217)

(declare-fun lt!1079684 () List!36217)

(assert (=> b!3200945 (= res!1302575 (or (not (= lt!1079691 lt!1079702)) (not (= lt!1079684 lt!1079702))))))

(declare-fun list!12829 (BalanceConc!21180) List!36217)

(declare-fun charsOf!3220 (Token!9774) BalanceConc!21180)

(assert (=> b!3200945 (= lt!1079702 (list!12829 (charsOf!3220 (h!41514 tokens!494))))))

(declare-fun b!3200946 () Bool)

(declare-fun res!1302585 () Bool)

(assert (=> b!3200946 (=> (not res!1302585) (not e!1995718))))

(declare-fun sepAndNonSepRulesDisjointChars!1398 (List!36219 List!36219) Bool)

(assert (=> b!3200946 (= res!1302585 (sepAndNonSepRulesDisjointChars!1398 rules!2135 rules!2135))))

(declare-fun b!3200947 () Bool)

(assert (=> b!3200947 (= e!1995711 (= (rule!7640 (h!41514 tokens!494)) lt!1079687))))

(declare-fun b!3200948 () Bool)

(declare-fun res!1302581 () Bool)

(assert (=> b!3200948 (=> (not res!1302581) (not e!1995718))))

(assert (=> b!3200948 (= res!1302581 (rulesProduceIndividualToken!2285 thiss!18206 rules!2135 separatorToken!241))))

(declare-fun b!3200949 () Bool)

(assert (=> b!3200949 (= e!1995714 e!1995696)))

(declare-fun res!1302583 () Bool)

(assert (=> b!3200949 (=> res!1302583 e!1995696)))

(declare-fun printWithSeparatorTokenList!138 (LexerInterface!4793 List!36218 Token!9774) List!36217)

(assert (=> b!3200949 (= res!1302583 (not (= lt!1079683 (++!8648 (++!8648 (list!12829 (charsOf!3220 (h!41514 (t!237457 tokens!494)))) lt!1079706) (printWithSeparatorTokenList!138 thiss!18206 (t!237457 (t!237457 tokens!494)) separatorToken!241)))))))

(assert (=> b!3200949 (= lt!1079688 (++!8648 lt!1079706 lt!1079683))))

(assert (=> b!3200949 (= lt!1079706 (list!12829 (charsOf!3220 separatorToken!241)))))

(assert (=> b!3200949 (= lt!1079683 (printWithSeparatorTokenList!138 thiss!18206 (t!237457 tokens!494) separatorToken!241))))

(assert (=> b!3200949 (= lt!1079692 (printWithSeparatorTokenList!138 thiss!18206 tokens!494 separatorToken!241))))

(declare-fun b!3200950 () Bool)

(assert (=> b!3200950 (= e!1995697 false)))

(declare-fun b!3200951 () Bool)

(declare-fun res!1302587 () Bool)

(assert (=> b!3200951 (=> (not res!1302587) (not e!1995718))))

(declare-fun isEmpty!20175 (List!36219) Bool)

(assert (=> b!3200951 (= res!1302587 (not (isEmpty!20175 rules!2135)))))

(declare-fun tp!1011750 () Bool)

(declare-fun b!3200952 () Bool)

(declare-fun e!1995702 () Bool)

(declare-fun inv!21 (TokenValue!5434) Bool)

(assert (=> b!3200952 (= e!1995702 (and (inv!21 (value!168774 (h!41514 tokens!494))) e!1995703 tp!1011750))))

(declare-fun b!3200953 () Bool)

(declare-fun res!1302588 () Bool)

(assert (=> b!3200953 (=> (not res!1302588) (not e!1995718))))

(declare-fun rulesProduceEachTokenIndividually!1244 (LexerInterface!4793 List!36219 BalanceConc!21182) Bool)

(declare-fun seqFromList!3480 (List!36218) BalanceConc!21182)

(assert (=> b!3200953 (= res!1302588 (rulesProduceEachTokenIndividually!1244 thiss!18206 rules!2135 (seqFromList!3480 tokens!494)))))

(declare-fun b!3200954 () Bool)

(declare-fun tp!1011749 () Bool)

(assert (=> b!3200954 (= e!1995706 (and (inv!48946 (h!41514 tokens!494)) e!1995702 tp!1011749))))

(declare-fun b!3200955 () Bool)

(declare-fun Unit!50509 () Unit!50506)

(assert (=> b!3200955 (= e!1995715 Unit!50509)))

(assert (=> b!3200956 (= e!1995707 (and tp!1011746 tp!1011745))))

(declare-fun b!3200957 () Bool)

(declare-fun tp!1011747 () Bool)

(assert (=> b!3200957 (= e!1995698 (and (inv!21 (value!168774 separatorToken!241)) e!1995712 tp!1011747))))

(declare-fun b!3200958 () Bool)

(assert (=> b!3200958 (= e!1995701 (isEmpty!20174 (_2!20869 lt!1079693)))))

(declare-fun b!3200959 () Bool)

(declare-fun res!1302573 () Bool)

(assert (=> b!3200959 (=> (not res!1302573) (not e!1995718))))

(declare-fun forall!7356 (List!36218 Int) Bool)

(assert (=> b!3200959 (= res!1302573 (forall!7356 tokens!494 lambda!117183))))

(declare-fun b!3200960 () Bool)

(declare-fun res!1302580 () Bool)

(assert (=> b!3200960 (=> (not res!1302580) (not e!1995718))))

(declare-fun rulesInvariant!4190 (LexerInterface!4793 List!36219) Bool)

(assert (=> b!3200960 (= res!1302580 (rulesInvariant!4190 thiss!18206 rules!2135))))

(declare-fun b!3200961 () Bool)

(assert (=> b!3200961 (= e!1995718 (not e!1995722))))

(declare-fun res!1302582 () Bool)

(assert (=> b!3200961 (=> res!1302582 e!1995722)))

(assert (=> b!3200961 (= res!1302582 (not (= lt!1079684 lt!1079691)))))

(declare-fun printList!1343 (LexerInterface!4793 List!36218) List!36217)

(assert (=> b!3200961 (= lt!1079691 (printList!1343 thiss!18206 (Cons!36094 (h!41514 tokens!494) Nil!36094)))))

(declare-fun lt!1079698 () BalanceConc!21180)

(assert (=> b!3200961 (= lt!1079684 (list!12829 lt!1079698))))

(declare-fun lt!1079701 () BalanceConc!21182)

(assert (=> b!3200961 (= lt!1079698 (printTailRec!1290 thiss!18206 lt!1079701 0 (BalanceConc!21181 Empty!10783)))))

(assert (=> b!3200961 (= lt!1079698 (print!1858 thiss!18206 lt!1079701))))

(assert (=> b!3200961 (= lt!1079701 (singletonSeq!2300 (h!41514 tokens!494)))))

(declare-fun b!3200962 () Bool)

(declare-fun res!1302563 () Bool)

(assert (=> b!3200962 (=> (not res!1302563) (not e!1995718))))

(assert (=> b!3200962 (= res!1302563 (and (not ((_ is Nil!36094) tokens!494)) (not ((_ is Nil!36094) (t!237457 tokens!494)))))))

(assert (= (and start!300442 res!1302579) b!3200951))

(assert (= (and b!3200951 res!1302587) b!3200960))

(assert (= (and b!3200960 res!1302580) b!3200953))

(assert (= (and b!3200953 res!1302588) b!3200948))

(assert (= (and b!3200948 res!1302581) b!3200943))

(assert (= (and b!3200943 res!1302568) b!3200959))

(assert (= (and b!3200959 res!1302573) b!3200946))

(assert (= (and b!3200946 res!1302585) b!3200962))

(assert (= (and b!3200962 res!1302563) b!3200961))

(assert (= (and b!3200961 (not res!1302582)) b!3200945))

(assert (= (and b!3200945 (not res!1302575)) b!3200930))

(assert (= (and b!3200930 (not res!1302584)) b!3200933))

(assert (= (and b!3200933 (not res!1302586)) b!3200939))

(assert (= (and b!3200939 (not res!1302567)) b!3200949))

(assert (= (and b!3200949 (not res!1302583)) b!3200944))

(assert (= (and b!3200944 (not res!1302564)) b!3200940))

(assert (= (and b!3200940 (not res!1302572)) b!3200927))

(assert (= (and b!3200927 res!1302566) b!3200929))

(assert (= (and b!3200929 res!1302578) b!3200947))

(assert (= (and b!3200927 res!1302577) b!3200941))

(assert (= (and b!3200941 res!1302574) b!3200942))

(assert (= (and b!3200927 c!537371) b!3200931))

(assert (= (and b!3200927 (not c!537371)) b!3200955))

(assert (= (and b!3200931 res!1302569) b!3200950))

(assert (= (and b!3200927 res!1302571) b!3200926))

(assert (= (and b!3200926 res!1302570) b!3200936))

(assert (= (and b!3200927 res!1302576) b!3200928))

(assert (= (and b!3200928 res!1302565) b!3200958))

(assert (= b!3200935 b!3200934))

(assert (= b!3200938 b!3200935))

(assert (= (and start!300442 ((_ is Cons!36095) rules!2135)) b!3200938))

(assert (= b!3200925 b!3200937))

(assert (= b!3200952 b!3200925))

(assert (= b!3200954 b!3200952))

(assert (= (and start!300442 ((_ is Cons!36094) tokens!494)) b!3200954))

(assert (= b!3200932 b!3200956))

(assert (= b!3200957 b!3200932))

(assert (= start!300442 b!3200957))

(declare-fun m!3463153 () Bool)

(assert (=> b!3200941 m!3463153))

(declare-fun m!3463155 () Bool)

(assert (=> b!3200941 m!3463155))

(declare-fun m!3463157 () Bool)

(assert (=> b!3200929 m!3463157))

(declare-fun m!3463159 () Bool)

(assert (=> b!3200929 m!3463159))

(declare-fun m!3463161 () Bool)

(assert (=> b!3200936 m!3463161))

(declare-fun m!3463163 () Bool)

(assert (=> start!300442 m!3463163))

(declare-fun m!3463165 () Bool)

(assert (=> b!3200935 m!3463165))

(declare-fun m!3463167 () Bool)

(assert (=> b!3200935 m!3463167))

(declare-fun m!3463169 () Bool)

(assert (=> b!3200932 m!3463169))

(declare-fun m!3463171 () Bool)

(assert (=> b!3200932 m!3463171))

(declare-fun m!3463173 () Bool)

(assert (=> b!3200926 m!3463173))

(declare-fun m!3463175 () Bool)

(assert (=> b!3200930 m!3463175))

(declare-fun m!3463177 () Bool)

(assert (=> b!3200928 m!3463177))

(declare-fun m!3463179 () Bool)

(assert (=> b!3200957 m!3463179))

(declare-fun m!3463181 () Bool)

(assert (=> b!3200960 m!3463181))

(declare-fun m!3463183 () Bool)

(assert (=> b!3200927 m!3463183))

(declare-fun m!3463185 () Bool)

(assert (=> b!3200927 m!3463185))

(declare-fun m!3463187 () Bool)

(assert (=> b!3200927 m!3463187))

(declare-fun m!3463189 () Bool)

(assert (=> b!3200927 m!3463189))

(declare-fun m!3463191 () Bool)

(assert (=> b!3200927 m!3463191))

(declare-fun m!3463193 () Bool)

(assert (=> b!3200927 m!3463193))

(declare-fun m!3463195 () Bool)

(assert (=> b!3200927 m!3463195))

(declare-fun m!3463197 () Bool)

(assert (=> b!3200927 m!3463197))

(declare-fun m!3463199 () Bool)

(assert (=> b!3200927 m!3463199))

(assert (=> b!3200927 m!3463193))

(declare-fun m!3463201 () Bool)

(assert (=> b!3200927 m!3463201))

(declare-fun m!3463203 () Bool)

(assert (=> b!3200927 m!3463203))

(declare-fun m!3463205 () Bool)

(assert (=> b!3200927 m!3463205))

(declare-fun m!3463207 () Bool)

(assert (=> b!3200927 m!3463207))

(declare-fun m!3463209 () Bool)

(assert (=> b!3200927 m!3463209))

(declare-fun m!3463211 () Bool)

(assert (=> b!3200927 m!3463211))

(declare-fun m!3463213 () Bool)

(assert (=> b!3200927 m!3463213))

(declare-fun m!3463215 () Bool)

(assert (=> b!3200927 m!3463215))

(declare-fun m!3463217 () Bool)

(assert (=> b!3200927 m!3463217))

(declare-fun m!3463219 () Bool)

(assert (=> b!3200927 m!3463219))

(declare-fun m!3463221 () Bool)

(assert (=> b!3200927 m!3463221))

(declare-fun m!3463223 () Bool)

(assert (=> b!3200927 m!3463223))

(declare-fun m!3463225 () Bool)

(assert (=> b!3200927 m!3463225))

(declare-fun m!3463227 () Bool)

(assert (=> b!3200927 m!3463227))

(declare-fun m!3463229 () Bool)

(assert (=> b!3200927 m!3463229))

(declare-fun m!3463231 () Bool)

(assert (=> b!3200927 m!3463231))

(declare-fun m!3463233 () Bool)

(assert (=> b!3200952 m!3463233))

(declare-fun m!3463235 () Bool)

(assert (=> b!3200940 m!3463235))

(declare-fun m!3463237 () Bool)

(assert (=> b!3200940 m!3463237))

(declare-fun m!3463239 () Bool)

(assert (=> b!3200959 m!3463239))

(declare-fun m!3463241 () Bool)

(assert (=> b!3200954 m!3463241))

(declare-fun m!3463243 () Bool)

(assert (=> b!3200939 m!3463243))

(declare-fun m!3463245 () Bool)

(assert (=> b!3200939 m!3463245))

(declare-fun m!3463247 () Bool)

(assert (=> b!3200946 m!3463247))

(declare-fun m!3463249 () Bool)

(assert (=> b!3200949 m!3463249))

(declare-fun m!3463251 () Bool)

(assert (=> b!3200949 m!3463251))

(declare-fun m!3463253 () Bool)

(assert (=> b!3200949 m!3463253))

(assert (=> b!3200949 m!3463249))

(declare-fun m!3463255 () Bool)

(assert (=> b!3200949 m!3463255))

(declare-fun m!3463257 () Bool)

(assert (=> b!3200949 m!3463257))

(assert (=> b!3200949 m!3463251))

(declare-fun m!3463259 () Bool)

(assert (=> b!3200949 m!3463259))

(declare-fun m!3463261 () Bool)

(assert (=> b!3200949 m!3463261))

(declare-fun m!3463263 () Bool)

(assert (=> b!3200949 m!3463263))

(assert (=> b!3200949 m!3463257))

(declare-fun m!3463265 () Bool)

(assert (=> b!3200949 m!3463265))

(declare-fun m!3463267 () Bool)

(assert (=> b!3200949 m!3463267))

(assert (=> b!3200949 m!3463255))

(assert (=> b!3200949 m!3463263))

(declare-fun m!3463269 () Bool)

(assert (=> b!3200953 m!3463269))

(assert (=> b!3200953 m!3463269))

(declare-fun m!3463271 () Bool)

(assert (=> b!3200953 m!3463271))

(declare-fun m!3463273 () Bool)

(assert (=> b!3200948 m!3463273))

(declare-fun m!3463275 () Bool)

(assert (=> b!3200945 m!3463275))

(assert (=> b!3200945 m!3463275))

(declare-fun m!3463277 () Bool)

(assert (=> b!3200945 m!3463277))

(declare-fun m!3463279 () Bool)

(assert (=> b!3200958 m!3463279))

(declare-fun m!3463281 () Bool)

(assert (=> b!3200944 m!3463281))

(assert (=> b!3200944 m!3463281))

(declare-fun m!3463283 () Bool)

(assert (=> b!3200944 m!3463283))

(declare-fun m!3463285 () Bool)

(assert (=> b!3200931 m!3463285))

(declare-fun m!3463287 () Bool)

(assert (=> b!3200931 m!3463287))

(declare-fun m!3463289 () Bool)

(assert (=> b!3200961 m!3463289))

(declare-fun m!3463291 () Bool)

(assert (=> b!3200961 m!3463291))

(declare-fun m!3463293 () Bool)

(assert (=> b!3200961 m!3463293))

(declare-fun m!3463295 () Bool)

(assert (=> b!3200961 m!3463295))

(declare-fun m!3463297 () Bool)

(assert (=> b!3200961 m!3463297))

(declare-fun m!3463299 () Bool)

(assert (=> b!3200925 m!3463299))

(declare-fun m!3463301 () Bool)

(assert (=> b!3200925 m!3463301))

(declare-fun m!3463303 () Bool)

(assert (=> b!3200933 m!3463303))

(declare-fun m!3463305 () Bool)

(assert (=> b!3200933 m!3463305))

(declare-fun m!3463307 () Bool)

(assert (=> b!3200933 m!3463307))

(declare-fun m!3463309 () Bool)

(assert (=> b!3200951 m!3463309))

(check-sat b_and!212783 (not b!3200961) (not b!3200960) (not b!3200952) (not b!3200941) (not b!3200948) (not b!3200957) b_and!212787 (not b!3200929) (not b!3200945) (not b!3200944) (not b!3200954) (not b!3200946) (not b_next!85807) b_and!212791 (not b_next!85803) (not b_next!85809) (not start!300442) (not b!3200935) (not b!3200951) (not b!3200927) (not b!3200939) (not b!3200938) (not b!3200958) (not b!3200932) (not b!3200959) (not b!3200931) (not b_next!85811) b_and!212785 (not b_next!85801) (not b!3200925) (not b!3200928) (not b!3200949) b_and!212789 (not b_next!85805) (not b!3200933) (not b!3200930) (not b!3200953) (not b!3200940) b_and!212793 (not b!3200926) (not b!3200936))
(check-sat (not b_next!85809) b_and!212783 (not b_next!85801) b_and!212789 b_and!212787 (not b_next!85805) b_and!212793 (not b_next!85807) b_and!212791 (not b_next!85803) (not b_next!85811) b_and!212785)
