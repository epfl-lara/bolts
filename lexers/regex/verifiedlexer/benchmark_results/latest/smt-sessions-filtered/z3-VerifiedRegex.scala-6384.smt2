; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!332210 () Bool)

(assert start!332210)

(declare-fun b!3582507 () Bool)

(declare-fun b_free!92097 () Bool)

(declare-fun b_next!92801 () Bool)

(assert (=> b!3582507 (= b_free!92097 (not b_next!92801))))

(declare-fun tp!1096775 () Bool)

(declare-fun b_and!258559 () Bool)

(assert (=> b!3582507 (= tp!1096775 b_and!258559)))

(declare-fun b_free!92099 () Bool)

(declare-fun b_next!92803 () Bool)

(assert (=> b!3582507 (= b_free!92099 (not b_next!92803))))

(declare-fun tp!1096770 () Bool)

(declare-fun b_and!258561 () Bool)

(assert (=> b!3582507 (= tp!1096770 b_and!258561)))

(declare-fun b!3582508 () Bool)

(declare-fun b_free!92101 () Bool)

(declare-fun b_next!92805 () Bool)

(assert (=> b!3582508 (= b_free!92101 (not b_next!92805))))

(declare-fun tp!1096784 () Bool)

(declare-fun b_and!258563 () Bool)

(assert (=> b!3582508 (= tp!1096784 b_and!258563)))

(declare-fun b_free!92103 () Bool)

(declare-fun b_next!92807 () Bool)

(assert (=> b!3582508 (= b_free!92103 (not b_next!92807))))

(declare-fun tp!1096782 () Bool)

(declare-fun b_and!258565 () Bool)

(assert (=> b!3582508 (= tp!1096782 b_and!258565)))

(declare-fun b!3582495 () Bool)

(declare-fun b_free!92105 () Bool)

(declare-fun b_next!92809 () Bool)

(assert (=> b!3582495 (= b_free!92105 (not b_next!92809))))

(declare-fun tp!1096783 () Bool)

(declare-fun b_and!258567 () Bool)

(assert (=> b!3582495 (= tp!1096783 b_and!258567)))

(declare-fun b_free!92107 () Bool)

(declare-fun b_next!92811 () Bool)

(assert (=> b!3582495 (= b_free!92107 (not b_next!92811))))

(declare-fun tp!1096777 () Bool)

(declare-fun b_and!258569 () Bool)

(assert (=> b!3582495 (= tp!1096777 b_and!258569)))

(declare-fun b!3582494 () Bool)

(declare-fun b_free!92109 () Bool)

(declare-fun b_next!92813 () Bool)

(assert (=> b!3582494 (= b_free!92109 (not b_next!92813))))

(declare-fun tp!1096779 () Bool)

(declare-fun b_and!258571 () Bool)

(assert (=> b!3582494 (= tp!1096779 b_and!258571)))

(declare-fun b_free!92111 () Bool)

(declare-fun b_next!92815 () Bool)

(assert (=> b!3582494 (= b_free!92111 (not b_next!92815))))

(declare-fun tp!1096780 () Bool)

(declare-fun b_and!258573 () Bool)

(assert (=> b!3582494 (= tp!1096780 b_and!258573)))

(declare-fun b!3582493 () Bool)

(declare-fun e!2216622 () Bool)

(declare-fun e!2216618 () Bool)

(declare-datatypes ((List!37767 0))(
  ( (Nil!37643) (Cons!37643 (h!43063 (_ BitVec 16)) (t!290376 List!37767)) )
))
(declare-datatypes ((TokenValue!5778 0))(
  ( (FloatLiteralValue!11556 (text!40891 List!37767)) (TokenValueExt!5777 (__x!23773 Int)) (Broken!28890 (value!178552 List!37767)) (Object!5901) (End!5778) (Def!5778) (Underscore!5778) (Match!5778) (Else!5778) (Error!5778) (Case!5778) (If!5778) (Extends!5778) (Abstract!5778) (Class!5778) (Val!5778) (DelimiterValue!11556 (del!5838 List!37767)) (KeywordValue!5784 (value!178553 List!37767)) (CommentValue!11556 (value!178554 List!37767)) (WhitespaceValue!11556 (value!178555 List!37767)) (IndentationValue!5778 (value!178556 List!37767)) (String!42223) (Int32!5778) (Broken!28891 (value!178557 List!37767)) (Boolean!5779) (Unit!53642) (OperatorValue!5781 (op!5838 List!37767)) (IdentifierValue!11556 (value!178558 List!37767)) (IdentifierValue!11557 (value!178559 List!37767)) (WhitespaceValue!11557 (value!178560 List!37767)) (True!11556) (False!11556) (Broken!28892 (value!178561 List!37767)) (Broken!28893 (value!178562 List!37767)) (True!11557) (RightBrace!5778) (RightBracket!5778) (Colon!5778) (Null!5778) (Comma!5778) (LeftBracket!5778) (False!11557) (LeftBrace!5778) (ImaginaryLiteralValue!5778 (text!40892 List!37767)) (StringLiteralValue!17334 (value!178563 List!37767)) (EOFValue!5778 (value!178564 List!37767)) (IdentValue!5778 (value!178565 List!37767)) (DelimiterValue!11557 (value!178566 List!37767)) (DedentValue!5778 (value!178567 List!37767)) (NewLineValue!5778 (value!178568 List!37767)) (IntegerValue!17334 (value!178569 (_ BitVec 32)) (text!40893 List!37767)) (IntegerValue!17335 (value!178570 Int) (text!40894 List!37767)) (Times!5778) (Or!5778) (Equal!5778) (Minus!5778) (Broken!28894 (value!178571 List!37767)) (And!5778) (Div!5778) (LessEqual!5778) (Mod!5778) (Concat!16085) (Not!5778) (Plus!5778) (SpaceValue!5778 (value!178572 List!37767)) (IntegerValue!17336 (value!178573 Int) (text!40895 List!37767)) (StringLiteralValue!17335 (text!40896 List!37767)) (FloatLiteralValue!11557 (text!40897 List!37767)) (BytesLiteralValue!5778 (value!178574 List!37767)) (CommentValue!11557 (value!178575 List!37767)) (StringLiteralValue!17336 (value!178576 List!37767)) (ErrorTokenValue!5778 (msg!5839 List!37767)) )
))
(declare-datatypes ((C!20800 0))(
  ( (C!20801 (val!12448 Int)) )
))
(declare-datatypes ((Regex!10307 0))(
  ( (ElementMatch!10307 (c!620659 C!20800)) (Concat!16086 (regOne!21126 Regex!10307) (regTwo!21126 Regex!10307)) (EmptyExpr!10307) (Star!10307 (reg!10636 Regex!10307)) (EmptyLang!10307) (Union!10307 (regOne!21127 Regex!10307) (regTwo!21127 Regex!10307)) )
))
(declare-datatypes ((String!42224 0))(
  ( (String!42225 (value!178577 String)) )
))
(declare-datatypes ((List!37768 0))(
  ( (Nil!37644) (Cons!37644 (h!43064 C!20800) (t!290377 List!37768)) )
))
(declare-datatypes ((IArray!22897 0))(
  ( (IArray!22898 (innerList!11506 List!37768)) )
))
(declare-datatypes ((Conc!11446 0))(
  ( (Node!11446 (left!29426 Conc!11446) (right!29756 Conc!11446) (csize!23122 Int) (cheight!11657 Int)) (Leaf!17831 (xs!14648 IArray!22897) (csize!23123 Int)) (Empty!11446) )
))
(declare-datatypes ((BalanceConc!22506 0))(
  ( (BalanceConc!22507 (c!620660 Conc!11446)) )
))
(declare-datatypes ((TokenValueInjection!10984 0))(
  ( (TokenValueInjection!10985 (toValue!7824 Int) (toChars!7683 Int)) )
))
(declare-datatypes ((Rule!10896 0))(
  ( (Rule!10897 (regex!5548 Regex!10307) (tag!6214 String!42224) (isSeparator!5548 Bool) (transformation!5548 TokenValueInjection!10984)) )
))
(declare-datatypes ((Token!10462 0))(
  ( (Token!10463 (value!178578 TokenValue!5778) (rule!8260 Rule!10896) (size!28688 Int) (originalCharacters!6262 List!37768)) )
))
(declare-fun token!511 () Token!10462)

(declare-fun tp!1096778 () Bool)

(declare-fun inv!21 (TokenValue!5778) Bool)

(assert (=> b!3582493 (= e!2216618 (and (inv!21 (value!178578 token!511)) e!2216622 tp!1096778))))

(declare-fun e!2216624 () Bool)

(assert (=> b!3582494 (= e!2216624 (and tp!1096779 tp!1096780))))

(declare-fun e!2216627 () Bool)

(assert (=> b!3582495 (= e!2216627 (and tp!1096783 tp!1096777))))

(declare-fun b!3582496 () Bool)

(declare-fun res!1445516 () Bool)

(declare-fun e!2216626 () Bool)

(assert (=> b!3582496 (=> (not res!1445516) (not e!2216626))))

(declare-datatypes ((List!37769 0))(
  ( (Nil!37645) (Cons!37645 (h!43065 Rule!10896) (t!290378 List!37769)) )
))
(declare-fun rules!3307 () List!37769)

(declare-fun anOtherTypeRule!33 () Rule!10896)

(declare-fun contains!7155 (List!37769 Rule!10896) Bool)

(assert (=> b!3582496 (= res!1445516 (contains!7155 rules!3307 anOtherTypeRule!33))))

(declare-fun b!3582497 () Bool)

(declare-fun res!1445506 () Bool)

(assert (=> b!3582497 (=> (not res!1445506) (not e!2216626))))

(declare-datatypes ((LexerInterface!5137 0))(
  ( (LexerInterfaceExt!5134 (__x!23774 Int)) (Lexer!5135) )
))
(declare-fun thiss!23823 () LexerInterface!5137)

(declare-fun rulesInvariant!4534 (LexerInterface!5137 List!37769) Bool)

(assert (=> b!3582497 (= res!1445506 (rulesInvariant!4534 thiss!23823 rules!3307))))

(declare-fun b!3582498 () Bool)

(declare-fun e!2216612 () Bool)

(declare-fun e!2216628 () Bool)

(declare-fun tp!1096774 () Bool)

(assert (=> b!3582498 (= e!2216612 (and e!2216628 tp!1096774))))

(declare-fun b!3582499 () Bool)

(declare-fun e!2216623 () Bool)

(declare-fun e!2216616 () Bool)

(assert (=> b!3582499 (= e!2216623 e!2216616)))

(declare-fun res!1445505 () Bool)

(assert (=> b!3582499 (=> res!1445505 e!2216616)))

(declare-fun rule!403 () Rule!10896)

(declare-fun lt!1228834 () C!20800)

(declare-fun contains!7156 (List!37768 C!20800) Bool)

(declare-fun usedCharacters!762 (Regex!10307) List!37768)

(assert (=> b!3582499 (= res!1445505 (contains!7156 (usedCharacters!762 (regex!5548 rule!403)) lt!1228834))))

(declare-fun suffix!1395 () List!37768)

(declare-fun head!7465 (List!37768) C!20800)

(assert (=> b!3582499 (= lt!1228834 (head!7465 suffix!1395))))

(declare-fun tp!1096771 () Bool)

(declare-fun b!3582500 () Bool)

(declare-fun e!2216620 () Bool)

(declare-fun inv!50952 (String!42224) Bool)

(declare-fun inv!50955 (TokenValueInjection!10984) Bool)

(assert (=> b!3582500 (= e!2216622 (and tp!1096771 (inv!50952 (tag!6214 (rule!8260 token!511))) (inv!50955 (transformation!5548 (rule!8260 token!511))) e!2216620))))

(declare-fun b!3582501 () Bool)

(declare-fun res!1445509 () Bool)

(assert (=> b!3582501 (=> res!1445509 e!2216616)))

(declare-fun sepAndNonSepRulesDisjointChars!1718 (List!37769 List!37769) Bool)

(assert (=> b!3582501 (= res!1445509 (not (sepAndNonSepRulesDisjointChars!1718 rules!3307 rules!3307)))))

(declare-fun b!3582503 () Bool)

(declare-fun res!1445504 () Bool)

(assert (=> b!3582503 (=> res!1445504 e!2216616)))

(assert (=> b!3582503 (= res!1445504 (not (contains!7156 (usedCharacters!762 (regex!5548 anOtherTypeRule!33)) lt!1228834)))))

(declare-fun b!3582504 () Bool)

(declare-fun e!2216621 () Bool)

(assert (=> b!3582504 (= e!2216621 (not e!2216623))))

(declare-fun res!1445508 () Bool)

(assert (=> b!3582504 (=> res!1445508 e!2216623)))

(declare-fun lt!1228836 () List!37768)

(declare-fun matchR!4876 (Regex!10307 List!37768) Bool)

(assert (=> b!3582504 (= res!1445508 (not (matchR!4876 (regex!5548 rule!403) lt!1228836)))))

(declare-fun ruleValid!1813 (LexerInterface!5137 Rule!10896) Bool)

(assert (=> b!3582504 (ruleValid!1813 thiss!23823 rule!403)))

(declare-datatypes ((Unit!53643 0))(
  ( (Unit!53644) )
))
(declare-fun lt!1228835 () Unit!53643)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!968 (LexerInterface!5137 Rule!10896 List!37769) Unit!53643)

(assert (=> b!3582504 (= lt!1228835 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!968 thiss!23823 rule!403 rules!3307))))

(declare-fun b!3582505 () Bool)

(declare-fun res!1445512 () Bool)

(assert (=> b!3582505 (=> (not res!1445512) (not e!2216621))))

(assert (=> b!3582505 (= res!1445512 (= (rule!8260 token!511) rule!403))))

(declare-fun b!3582506 () Bool)

(assert (=> b!3582506 (= e!2216616 true)))

(declare-fun lt!1228833 () List!37768)

(declare-fun isPrefix!2911 (List!37768 List!37768) Bool)

(assert (=> b!3582506 (isPrefix!2911 lt!1228836 lt!1228833)))

(declare-fun lt!1228838 () Unit!53643)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!1832 (List!37768 List!37768) Unit!53643)

(assert (=> b!3582506 (= lt!1228838 (lemmaConcatTwoListThenFirstIsPrefix!1832 lt!1228836 suffix!1395))))

(declare-fun ++!9360 (List!37768 List!37768) List!37768)

(assert (=> b!3582506 (= lt!1228833 (++!9360 lt!1228836 suffix!1395))))

(declare-fun e!2216615 () Bool)

(assert (=> b!3582507 (= e!2216615 (and tp!1096775 tp!1096770))))

(assert (=> b!3582508 (= e!2216620 (and tp!1096784 tp!1096782))))

(declare-fun b!3582509 () Bool)

(declare-fun e!2216630 () Bool)

(assert (=> b!3582509 (= e!2216626 e!2216630)))

(declare-fun res!1445513 () Bool)

(assert (=> b!3582509 (=> (not res!1445513) (not e!2216630))))

(declare-datatypes ((tuple2!37538 0))(
  ( (tuple2!37539 (_1!21903 Token!10462) (_2!21903 List!37768)) )
))
(declare-datatypes ((Option!7736 0))(
  ( (None!7735) (Some!7735 (v!37385 tuple2!37538)) )
))
(declare-fun lt!1228832 () Option!7736)

(declare-fun isDefined!5970 (Option!7736) Bool)

(assert (=> b!3582509 (= res!1445513 (isDefined!5970 lt!1228832))))

(declare-fun maxPrefix!2671 (LexerInterface!5137 List!37769 List!37768) Option!7736)

(assert (=> b!3582509 (= lt!1228832 (maxPrefix!2671 thiss!23823 rules!3307 lt!1228836))))

(declare-fun list!13827 (BalanceConc!22506) List!37768)

(declare-fun charsOf!3562 (Token!10462) BalanceConc!22506)

(assert (=> b!3582509 (= lt!1228836 (list!13827 (charsOf!3562 token!511)))))

(declare-fun tp!1096776 () Bool)

(declare-fun b!3582510 () Bool)

(declare-fun e!2216619 () Bool)

(assert (=> b!3582510 (= e!2216619 (and tp!1096776 (inv!50952 (tag!6214 rule!403)) (inv!50955 (transformation!5548 rule!403)) e!2216615))))

(declare-fun b!3582511 () Bool)

(declare-fun res!1445514 () Bool)

(assert (=> b!3582511 (=> (not res!1445514) (not e!2216626))))

(declare-fun isEmpty!22164 (List!37769) Bool)

(assert (=> b!3582511 (= res!1445514 (not (isEmpty!22164 rules!3307)))))

(declare-fun b!3582502 () Bool)

(declare-fun res!1445515 () Bool)

(assert (=> b!3582502 (=> (not res!1445515) (not e!2216626))))

(assert (=> b!3582502 (= res!1445515 (not (= (isSeparator!5548 anOtherTypeRule!33) (isSeparator!5548 rule!403))))))

(declare-fun res!1445511 () Bool)

(assert (=> start!332210 (=> (not res!1445511) (not e!2216626))))

(get-info :version)

(assert (=> start!332210 (= res!1445511 ((_ is Lexer!5135) thiss!23823))))

(assert (=> start!332210 e!2216626))

(assert (=> start!332210 e!2216612))

(declare-fun e!2216611 () Bool)

(assert (=> start!332210 e!2216611))

(assert (=> start!332210 true))

(declare-fun inv!50956 (Token!10462) Bool)

(assert (=> start!332210 (and (inv!50956 token!511) e!2216618)))

(assert (=> start!332210 e!2216619))

(declare-fun e!2216617 () Bool)

(assert (=> start!332210 e!2216617))

(declare-fun b!3582512 () Bool)

(declare-fun res!1445507 () Bool)

(assert (=> b!3582512 (=> res!1445507 e!2216623)))

(declare-fun isEmpty!22165 (List!37768) Bool)

(assert (=> b!3582512 (= res!1445507 (isEmpty!22165 suffix!1395))))

(declare-fun b!3582513 () Bool)

(declare-fun res!1445502 () Bool)

(assert (=> b!3582513 (=> (not res!1445502) (not e!2216626))))

(assert (=> b!3582513 (= res!1445502 (contains!7155 rules!3307 rule!403))))

(declare-fun b!3582514 () Bool)

(declare-fun tp!1096773 () Bool)

(assert (=> b!3582514 (= e!2216628 (and tp!1096773 (inv!50952 (tag!6214 (h!43065 rules!3307))) (inv!50955 (transformation!5548 (h!43065 rules!3307))) e!2216624))))

(declare-fun b!3582515 () Bool)

(declare-fun tp_is_empty!17697 () Bool)

(declare-fun tp!1096772 () Bool)

(assert (=> b!3582515 (= e!2216611 (and tp_is_empty!17697 tp!1096772))))

(declare-fun b!3582516 () Bool)

(declare-fun res!1445510 () Bool)

(assert (=> b!3582516 (=> (not res!1445510) (not e!2216621))))

(declare-fun lt!1228837 () tuple2!37538)

(assert (=> b!3582516 (= res!1445510 (isEmpty!22165 (_2!21903 lt!1228837)))))

(declare-fun b!3582517 () Bool)

(assert (=> b!3582517 (= e!2216630 e!2216621)))

(declare-fun res!1445503 () Bool)

(assert (=> b!3582517 (=> (not res!1445503) (not e!2216621))))

(assert (=> b!3582517 (= res!1445503 (= (_1!21903 lt!1228837) token!511))))

(declare-fun get!12122 (Option!7736) tuple2!37538)

(assert (=> b!3582517 (= lt!1228837 (get!12122 lt!1228832))))

(declare-fun tp!1096781 () Bool)

(declare-fun b!3582518 () Bool)

(assert (=> b!3582518 (= e!2216617 (and tp!1096781 (inv!50952 (tag!6214 anOtherTypeRule!33)) (inv!50955 (transformation!5548 anOtherTypeRule!33)) e!2216627))))

(assert (= (and start!332210 res!1445511) b!3582511))

(assert (= (and b!3582511 res!1445514) b!3582497))

(assert (= (and b!3582497 res!1445506) b!3582513))

(assert (= (and b!3582513 res!1445502) b!3582496))

(assert (= (and b!3582496 res!1445516) b!3582502))

(assert (= (and b!3582502 res!1445515) b!3582509))

(assert (= (and b!3582509 res!1445513) b!3582517))

(assert (= (and b!3582517 res!1445503) b!3582516))

(assert (= (and b!3582516 res!1445510) b!3582505))

(assert (= (and b!3582505 res!1445512) b!3582504))

(assert (= (and b!3582504 (not res!1445508)) b!3582512))

(assert (= (and b!3582512 (not res!1445507)) b!3582499))

(assert (= (and b!3582499 (not res!1445505)) b!3582503))

(assert (= (and b!3582503 (not res!1445504)) b!3582501))

(assert (= (and b!3582501 (not res!1445509)) b!3582506))

(assert (= b!3582514 b!3582494))

(assert (= b!3582498 b!3582514))

(assert (= (and start!332210 ((_ is Cons!37645) rules!3307)) b!3582498))

(assert (= (and start!332210 ((_ is Cons!37644) suffix!1395)) b!3582515))

(assert (= b!3582500 b!3582508))

(assert (= b!3582493 b!3582500))

(assert (= start!332210 b!3582493))

(assert (= b!3582510 b!3582507))

(assert (= start!332210 b!3582510))

(assert (= b!3582518 b!3582495))

(assert (= start!332210 b!3582518))

(declare-fun m!4075811 () Bool)

(assert (=> b!3582513 m!4075811))

(declare-fun m!4075813 () Bool)

(assert (=> b!3582516 m!4075813))

(declare-fun m!4075815 () Bool)

(assert (=> b!3582504 m!4075815))

(declare-fun m!4075817 () Bool)

(assert (=> b!3582504 m!4075817))

(declare-fun m!4075819 () Bool)

(assert (=> b!3582504 m!4075819))

(declare-fun m!4075821 () Bool)

(assert (=> b!3582497 m!4075821))

(declare-fun m!4075823 () Bool)

(assert (=> b!3582514 m!4075823))

(declare-fun m!4075825 () Bool)

(assert (=> b!3582514 m!4075825))

(declare-fun m!4075827 () Bool)

(assert (=> b!3582496 m!4075827))

(declare-fun m!4075829 () Bool)

(assert (=> b!3582511 m!4075829))

(declare-fun m!4075831 () Bool)

(assert (=> b!3582518 m!4075831))

(declare-fun m!4075833 () Bool)

(assert (=> b!3582518 m!4075833))

(declare-fun m!4075835 () Bool)

(assert (=> b!3582493 m!4075835))

(declare-fun m!4075837 () Bool)

(assert (=> b!3582509 m!4075837))

(declare-fun m!4075839 () Bool)

(assert (=> b!3582509 m!4075839))

(declare-fun m!4075841 () Bool)

(assert (=> b!3582509 m!4075841))

(assert (=> b!3582509 m!4075841))

(declare-fun m!4075843 () Bool)

(assert (=> b!3582509 m!4075843))

(declare-fun m!4075845 () Bool)

(assert (=> b!3582510 m!4075845))

(declare-fun m!4075847 () Bool)

(assert (=> b!3582510 m!4075847))

(declare-fun m!4075849 () Bool)

(assert (=> b!3582512 m!4075849))

(declare-fun m!4075851 () Bool)

(assert (=> b!3582517 m!4075851))

(declare-fun m!4075853 () Bool)

(assert (=> b!3582499 m!4075853))

(assert (=> b!3582499 m!4075853))

(declare-fun m!4075855 () Bool)

(assert (=> b!3582499 m!4075855))

(declare-fun m!4075857 () Bool)

(assert (=> b!3582499 m!4075857))

(declare-fun m!4075859 () Bool)

(assert (=> start!332210 m!4075859))

(declare-fun m!4075861 () Bool)

(assert (=> b!3582500 m!4075861))

(declare-fun m!4075863 () Bool)

(assert (=> b!3582500 m!4075863))

(declare-fun m!4075865 () Bool)

(assert (=> b!3582501 m!4075865))

(declare-fun m!4075867 () Bool)

(assert (=> b!3582506 m!4075867))

(declare-fun m!4075869 () Bool)

(assert (=> b!3582506 m!4075869))

(declare-fun m!4075871 () Bool)

(assert (=> b!3582506 m!4075871))

(declare-fun m!4075873 () Bool)

(assert (=> b!3582503 m!4075873))

(assert (=> b!3582503 m!4075873))

(declare-fun m!4075875 () Bool)

(assert (=> b!3582503 m!4075875))

(check-sat b_and!258565 (not b!3582514) (not b!3582513) (not b_next!92801) (not b_next!92815) b_and!258569 (not b!3582499) (not b!3582515) (not b_next!92809) b_and!258561 (not b!3582512) (not b!3582516) (not b!3582493) (not b!3582497) (not b!3582496) (not b!3582506) b_and!258573 b_and!258571 (not b!3582518) (not b!3582511) (not b_next!92805) b_and!258559 (not b_next!92811) (not b_next!92807) tp_is_empty!17697 b_and!258567 (not b!3582509) b_and!258563 (not b!3582504) (not b!3582498) (not b!3582503) (not b!3582517) (not start!332210) (not b!3582500) (not b_next!92813) (not b_next!92803) (not b!3582510) (not b!3582501))
(check-sat b_and!258565 (not b_next!92801) (not b_next!92815) b_and!258569 b_and!258563 (not b_next!92809) b_and!258561 (not b_next!92813) (not b_next!92803) b_and!258573 b_and!258571 (not b_next!92805) b_and!258559 (not b_next!92811) (not b_next!92807) b_and!258567)
