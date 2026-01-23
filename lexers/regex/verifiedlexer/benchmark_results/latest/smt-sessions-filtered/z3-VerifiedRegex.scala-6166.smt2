; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!297770 () Bool)

(assert start!297770)

(declare-fun b!3179450 () Bool)

(declare-fun b_free!83753 () Bool)

(declare-fun b_next!84457 () Bool)

(assert (=> b!3179450 (= b_free!83753 (not b_next!84457))))

(declare-fun tp!1005910 () Bool)

(declare-fun b_and!210083 () Bool)

(assert (=> b!3179450 (= tp!1005910 b_and!210083)))

(declare-fun b_free!83755 () Bool)

(declare-fun b_next!84459 () Bool)

(assert (=> b!3179450 (= b_free!83755 (not b_next!84459))))

(declare-fun tp!1005911 () Bool)

(declare-fun b_and!210085 () Bool)

(assert (=> b!3179450 (= tp!1005911 b_and!210085)))

(declare-fun b!3179434 () Bool)

(declare-fun b_free!83757 () Bool)

(declare-fun b_next!84461 () Bool)

(assert (=> b!3179434 (= b_free!83757 (not b_next!84461))))

(declare-fun tp!1005909 () Bool)

(declare-fun b_and!210087 () Bool)

(assert (=> b!3179434 (= tp!1005909 b_and!210087)))

(declare-fun b_free!83759 () Bool)

(declare-fun b_next!84463 () Bool)

(assert (=> b!3179434 (= b_free!83759 (not b_next!84463))))

(declare-fun tp!1005908 () Bool)

(declare-fun b_and!210089 () Bool)

(assert (=> b!3179434 (= tp!1005908 b_and!210089)))

(declare-fun b!3179445 () Bool)

(declare-fun b_free!83761 () Bool)

(declare-fun b_next!84465 () Bool)

(assert (=> b!3179445 (= b_free!83761 (not b_next!84465))))

(declare-fun tp!1005906 () Bool)

(declare-fun b_and!210091 () Bool)

(assert (=> b!3179445 (= tp!1005906 b_and!210091)))

(declare-fun b_free!83763 () Bool)

(declare-fun b_next!84467 () Bool)

(assert (=> b!3179445 (= b_free!83763 (not b_next!84467))))

(declare-fun tp!1005912 () Bool)

(declare-fun b_and!210093 () Bool)

(assert (=> b!3179445 (= tp!1005912 b_and!210093)))

(declare-fun tp!1005907 () Bool)

(declare-datatypes ((C!19928 0))(
  ( (C!19929 (val!12012 Int)) )
))
(declare-datatypes ((Regex!9871 0))(
  ( (ElementMatch!9871 (c!534106 C!19928)) (Concat!15213 (regOne!20254 Regex!9871) (regTwo!20254 Regex!9871)) (EmptyExpr!9871) (Star!9871 (reg!10200 Regex!9871)) (EmptyLang!9871) (Union!9871 (regOne!20255 Regex!9871) (regTwo!20255 Regex!9871)) )
))
(declare-datatypes ((List!35826 0))(
  ( (Nil!35702) (Cons!35702 (h!41122 (_ BitVec 16)) (t!235001 List!35826)) )
))
(declare-datatypes ((TokenValue!5342 0))(
  ( (FloatLiteralValue!10684 (text!37839 List!35826)) (TokenValueExt!5341 (__x!22901 Int)) (Broken!26710 (value!166126 List!35826)) (Object!5465) (End!5342) (Def!5342) (Underscore!5342) (Match!5342) (Else!5342) (Error!5342) (Case!5342) (If!5342) (Extends!5342) (Abstract!5342) (Class!5342) (Val!5342) (DelimiterValue!10684 (del!5402 List!35826)) (KeywordValue!5348 (value!166127 List!35826)) (CommentValue!10684 (value!166128 List!35826)) (WhitespaceValue!10684 (value!166129 List!35826)) (IndentationValue!5342 (value!166130 List!35826)) (String!40043) (Int32!5342) (Broken!26711 (value!166131 List!35826)) (Boolean!5343) (Unit!50117) (OperatorValue!5345 (op!5402 List!35826)) (IdentifierValue!10684 (value!166132 List!35826)) (IdentifierValue!10685 (value!166133 List!35826)) (WhitespaceValue!10685 (value!166134 List!35826)) (True!10684) (False!10684) (Broken!26712 (value!166135 List!35826)) (Broken!26713 (value!166136 List!35826)) (True!10685) (RightBrace!5342) (RightBracket!5342) (Colon!5342) (Null!5342) (Comma!5342) (LeftBracket!5342) (False!10685) (LeftBrace!5342) (ImaginaryLiteralValue!5342 (text!37840 List!35826)) (StringLiteralValue!16026 (value!166137 List!35826)) (EOFValue!5342 (value!166138 List!35826)) (IdentValue!5342 (value!166139 List!35826)) (DelimiterValue!10685 (value!166140 List!35826)) (DedentValue!5342 (value!166141 List!35826)) (NewLineValue!5342 (value!166142 List!35826)) (IntegerValue!16026 (value!166143 (_ BitVec 32)) (text!37841 List!35826)) (IntegerValue!16027 (value!166144 Int) (text!37842 List!35826)) (Times!5342) (Or!5342) (Equal!5342) (Minus!5342) (Broken!26714 (value!166145 List!35826)) (And!5342) (Div!5342) (LessEqual!5342) (Mod!5342) (Concat!15214) (Not!5342) (Plus!5342) (SpaceValue!5342 (value!166146 List!35826)) (IntegerValue!16028 (value!166147 Int) (text!37843 List!35826)) (StringLiteralValue!16027 (text!37844 List!35826)) (FloatLiteralValue!10685 (text!37845 List!35826)) (BytesLiteralValue!5342 (value!166148 List!35826)) (CommentValue!10685 (value!166149 List!35826)) (StringLiteralValue!16028 (value!166150 List!35826)) (ErrorTokenValue!5342 (msg!5403 List!35826)) )
))
(declare-datatypes ((List!35827 0))(
  ( (Nil!35703) (Cons!35703 (h!41123 C!19928) (t!235002 List!35827)) )
))
(declare-datatypes ((IArray!21203 0))(
  ( (IArray!21204 (innerList!10659 List!35827)) )
))
(declare-datatypes ((Conc!10599 0))(
  ( (Node!10599 (left!27769 Conc!10599) (right!28099 Conc!10599) (csize!21428 Int) (cheight!10810 Int)) (Leaf!16766 (xs!13717 IArray!21203) (csize!21429 Int)) (Empty!10599) )
))
(declare-datatypes ((BalanceConc!20812 0))(
  ( (BalanceConc!20813 (c!534107 Conc!10599)) )
))
(declare-datatypes ((String!40044 0))(
  ( (String!40045 (value!166151 String)) )
))
(declare-datatypes ((TokenValueInjection!10112 0))(
  ( (TokenValueInjection!10113 (toValue!7172 Int) (toChars!7031 Int)) )
))
(declare-datatypes ((Rule!10024 0))(
  ( (Rule!10025 (regex!5112 Regex!9871) (tag!5616 String!40044) (isSeparator!5112 Bool) (transformation!5112 TokenValueInjection!10112)) )
))
(declare-datatypes ((Token!9590 0))(
  ( (Token!9591 (value!166152 TokenValue!5342) (rule!7522 Rule!10024) (size!26947 Int) (originalCharacters!5826 List!35827)) )
))
(declare-datatypes ((List!35828 0))(
  ( (Nil!35704) (Cons!35704 (h!41124 Token!9590) (t!235003 List!35828)) )
))
(declare-fun tokens!494 () List!35828)

(declare-fun e!1980664 () Bool)

(declare-fun e!1980658 () Bool)

(declare-fun b!3179426 () Bool)

(declare-fun inv!21 (TokenValue!5342) Bool)

(assert (=> b!3179426 (= e!1980664 (and (inv!21 (value!166152 (h!41124 tokens!494))) e!1980658 tp!1005907))))

(declare-fun b!3179427 () Bool)

(declare-fun res!1291927 () Bool)

(declare-fun e!1980659 () Bool)

(assert (=> b!3179427 (=> (not res!1291927) (not e!1980659))))

(declare-fun separatorToken!241 () Token!9590)

(assert (=> b!3179427 (= res!1291927 (isSeparator!5112 (rule!7522 separatorToken!241)))))

(declare-fun e!1980647 () Bool)

(declare-fun tp!1005904 () Bool)

(declare-fun b!3179428 () Bool)

(declare-fun e!1980663 () Bool)

(declare-fun inv!48552 (String!40044) Bool)

(declare-fun inv!48555 (TokenValueInjection!10112) Bool)

(assert (=> b!3179428 (= e!1980647 (and tp!1005904 (inv!48552 (tag!5616 (rule!7522 separatorToken!241))) (inv!48555 (transformation!5112 (rule!7522 separatorToken!241))) e!1980663))))

(declare-fun b!3179429 () Bool)

(declare-fun res!1291932 () Bool)

(assert (=> b!3179429 (=> (not res!1291932) (not e!1980659))))

(declare-fun lambda!116353 () Int)

(declare-fun forall!7222 (List!35828 Int) Bool)

(assert (=> b!3179429 (= res!1291932 (forall!7222 tokens!494 lambda!116353))))

(declare-fun b!3179431 () Bool)

(declare-fun e!1980668 () Bool)

(declare-fun e!1980655 () Bool)

(assert (=> b!3179431 (= e!1980668 e!1980655)))

(declare-fun res!1291943 () Bool)

(assert (=> b!3179431 (=> (not res!1291943) (not e!1980655))))

(declare-fun lt!1068599 () Rule!10024)

(declare-fun lt!1068592 () List!35827)

(declare-fun matchR!4529 (Regex!9871 List!35827) Bool)

(assert (=> b!3179431 (= res!1291943 (matchR!4529 (regex!5112 lt!1068599) lt!1068592))))

(declare-datatypes ((Option!6955 0))(
  ( (None!6954) (Some!6954 (v!35394 Rule!10024)) )
))
(declare-fun lt!1068595 () Option!6955)

(declare-fun get!11349 (Option!6955) Rule!10024)

(assert (=> b!3179431 (= lt!1068599 (get!11349 lt!1068595))))

(declare-fun b!3179432 () Bool)

(declare-fun res!1291930 () Bool)

(declare-fun e!1980654 () Bool)

(assert (=> b!3179432 (=> res!1291930 e!1980654)))

(declare-datatypes ((LexerInterface!4701 0))(
  ( (LexerInterfaceExt!4698 (__x!22902 Int)) (Lexer!4699) )
))
(declare-fun thiss!18206 () LexerInterface!4701)

(declare-datatypes ((List!35829 0))(
  ( (Nil!35705) (Cons!35705 (h!41125 Rule!10024) (t!235004 List!35829)) )
))
(declare-fun rules!2135 () List!35829)

(declare-fun rulesProduceIndividualToken!2193 (LexerInterface!4701 List!35829 Token!9590) Bool)

(assert (=> b!3179432 (= res!1291930 (not (rulesProduceIndividualToken!2193 thiss!18206 rules!2135 (h!41124 tokens!494))))))

(declare-fun b!3179433 () Bool)

(declare-fun res!1291933 () Bool)

(assert (=> b!3179433 (=> (not res!1291933) (not e!1980659))))

(declare-fun sepAndNonSepRulesDisjointChars!1306 (List!35829 List!35829) Bool)

(assert (=> b!3179433 (= res!1291933 (sepAndNonSepRulesDisjointChars!1306 rules!2135 rules!2135))))

(declare-fun e!1980648 () Bool)

(assert (=> b!3179434 (= e!1980648 (and tp!1005909 tp!1005908))))

(declare-fun b!3179435 () Bool)

(declare-fun e!1980646 () Bool)

(declare-fun tp!1005913 () Bool)

(assert (=> b!3179435 (= e!1980646 (and (inv!21 (value!166152 separatorToken!241)) e!1980647 tp!1005913))))

(declare-fun b!3179436 () Bool)

(declare-fun res!1291935 () Bool)

(assert (=> b!3179436 (=> (not res!1291935) (not e!1980659))))

(assert (=> b!3179436 (= res!1291935 (rulesProduceIndividualToken!2193 thiss!18206 rules!2135 separatorToken!241))))

(declare-fun e!1980665 () Bool)

(declare-fun b!3179437 () Bool)

(declare-fun tp!1005905 () Bool)

(assert (=> b!3179437 (= e!1980658 (and tp!1005905 (inv!48552 (tag!5616 (rule!7522 (h!41124 tokens!494)))) (inv!48555 (transformation!5112 (rule!7522 (h!41124 tokens!494)))) e!1980665))))

(declare-fun b!3179438 () Bool)

(declare-fun e!1980656 () Bool)

(assert (=> b!3179438 (= e!1980659 (not e!1980656))))

(declare-fun res!1291939 () Bool)

(assert (=> b!3179438 (=> res!1291939 e!1980656)))

(declare-fun lt!1068605 () List!35827)

(declare-fun lt!1068598 () List!35827)

(assert (=> b!3179438 (= res!1291939 (not (= lt!1068605 lt!1068598)))))

(declare-fun printList!1255 (LexerInterface!4701 List!35828) List!35827)

(assert (=> b!3179438 (= lt!1068598 (printList!1255 thiss!18206 (Cons!35704 (h!41124 tokens!494) Nil!35704)))))

(declare-fun lt!1068601 () BalanceConc!20812)

(declare-fun list!12669 (BalanceConc!20812) List!35827)

(assert (=> b!3179438 (= lt!1068605 (list!12669 lt!1068601))))

(declare-datatypes ((IArray!21205 0))(
  ( (IArray!21206 (innerList!10660 List!35828)) )
))
(declare-datatypes ((Conc!10600 0))(
  ( (Node!10600 (left!27770 Conc!10600) (right!28100 Conc!10600) (csize!21430 Int) (cheight!10811 Int)) (Leaf!16767 (xs!13718 IArray!21205) (csize!21431 Int)) (Empty!10600) )
))
(declare-datatypes ((BalanceConc!20814 0))(
  ( (BalanceConc!20815 (c!534108 Conc!10600)) )
))
(declare-fun lt!1068603 () BalanceConc!20814)

(declare-fun printTailRec!1200 (LexerInterface!4701 BalanceConc!20814 Int BalanceConc!20812) BalanceConc!20812)

(assert (=> b!3179438 (= lt!1068601 (printTailRec!1200 thiss!18206 lt!1068603 0 (BalanceConc!20813 Empty!10599)))))

(declare-fun print!1768 (LexerInterface!4701 BalanceConc!20814) BalanceConc!20812)

(assert (=> b!3179438 (= lt!1068601 (print!1768 thiss!18206 lt!1068603))))

(declare-fun singletonSeq!2208 (Token!9590) BalanceConc!20814)

(assert (=> b!3179438 (= lt!1068603 (singletonSeq!2208 (h!41124 tokens!494)))))

(declare-fun b!3179439 () Bool)

(declare-fun e!1980650 () Bool)

(declare-fun e!1980662 () Bool)

(assert (=> b!3179439 (= e!1980650 e!1980662)))

(declare-fun res!1291942 () Bool)

(assert (=> b!3179439 (=> res!1291942 e!1980662)))

(declare-fun lt!1068594 () BalanceConc!20812)

(declare-fun lt!1068596 () List!35827)

(declare-fun ++!8532 (List!35827 List!35827) List!35827)

(assert (=> b!3179439 (= res!1291942 (not (= (list!12669 lt!1068594) (++!8532 lt!1068592 lt!1068596))))))

(declare-fun charsOf!3134 (Token!9590) BalanceConc!20812)

(assert (=> b!3179439 (= lt!1068596 (list!12669 (charsOf!3134 separatorToken!241)))))

(declare-fun lt!1068604 () BalanceConc!20814)

(declare-fun printWithSeparatorToken!10 (LexerInterface!4701 BalanceConc!20814 Token!9590) BalanceConc!20812)

(assert (=> b!3179439 (= lt!1068594 (printWithSeparatorToken!10 thiss!18206 lt!1068604 separatorToken!241))))

(declare-fun b!3179440 () Bool)

(declare-fun e!1980666 () Bool)

(assert (=> b!3179440 (= e!1980666 e!1980659)))

(declare-fun res!1291940 () Bool)

(assert (=> b!3179440 (=> (not res!1291940) (not e!1980659))))

(declare-fun rulesProduceEachTokenIndividually!1152 (LexerInterface!4701 List!35829 BalanceConc!20814) Bool)

(assert (=> b!3179440 (= res!1291940 (rulesProduceEachTokenIndividually!1152 thiss!18206 rules!2135 lt!1068604))))

(declare-fun seqFromList!3303 (List!35828) BalanceConc!20814)

(assert (=> b!3179440 (= lt!1068604 (seqFromList!3303 tokens!494))))

(declare-fun b!3179441 () Bool)

(declare-fun res!1291937 () Bool)

(assert (=> b!3179441 (=> (not res!1291937) (not e!1980666))))

(declare-fun isEmpty!19815 (List!35829) Bool)

(assert (=> b!3179441 (= res!1291937 (not (isEmpty!19815 rules!2135)))))

(declare-fun b!3179442 () Bool)

(declare-fun e!1980653 () Bool)

(declare-fun e!1980661 () Bool)

(declare-fun tp!1005916 () Bool)

(assert (=> b!3179442 (= e!1980653 (and e!1980661 tp!1005916))))

(declare-fun b!3179443 () Bool)

(assert (=> b!3179443 (= e!1980662 true)))

(declare-datatypes ((tuple2!35030 0))(
  ( (tuple2!35031 (_1!20649 Token!9590) (_2!20649 List!35827)) )
))
(declare-datatypes ((Option!6956 0))(
  ( (None!6955) (Some!6955 (v!35395 tuple2!35030)) )
))
(declare-fun lt!1068597 () Option!6956)

(declare-fun maxPrefix!2391 (LexerInterface!4701 List!35829 List!35827) Option!6956)

(assert (=> b!3179443 (= lt!1068597 (maxPrefix!2391 thiss!18206 rules!2135 lt!1068596))))

(assert (=> b!3179443 e!1980668))

(declare-fun res!1291936 () Bool)

(assert (=> b!3179443 (=> (not res!1291936) (not e!1980668))))

(declare-fun isDefined!5456 (Option!6955) Bool)

(assert (=> b!3179443 (= res!1291936 (isDefined!5456 lt!1068595))))

(declare-fun getRuleFromTag!841 (LexerInterface!4701 List!35829 String!40044) Option!6955)

(assert (=> b!3179443 (= lt!1068595 (getRuleFromTag!841 thiss!18206 rules!2135 (tag!5616 (rule!7522 (h!41124 tokens!494)))))))

(declare-datatypes ((Unit!50118 0))(
  ( (Unit!50119) )
))
(declare-fun lt!1068602 () Unit!50118)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!841 (LexerInterface!4701 List!35829 List!35827 Token!9590) Unit!50118)

(assert (=> b!3179443 (= lt!1068602 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!841 thiss!18206 rules!2135 lt!1068592 (h!41124 tokens!494)))))

(declare-fun lt!1068606 () Unit!50118)

(declare-fun lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!762 (LexerInterface!4701 List!35829 List!35828 Token!9590) Unit!50118)

(assert (=> b!3179443 (= lt!1068606 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!762 thiss!18206 rules!2135 tokens!494 (h!41124 tokens!494)))))

(declare-fun isEmpty!19816 (List!35827) Bool)

(declare-fun getSuffix!1328 (List!35827 List!35827) List!35827)

(assert (=> b!3179443 (isEmpty!19816 (getSuffix!1328 lt!1068592 lt!1068592))))

(declare-fun lt!1068600 () Unit!50118)

(declare-fun lemmaGetSuffixOnListWithItSelfIsEmpty!6 (List!35827) Unit!50118)

(assert (=> b!3179443 (= lt!1068600 (lemmaGetSuffixOnListWithItSelfIsEmpty!6 lt!1068592))))

(declare-fun res!1291928 () Bool)

(assert (=> start!297770 (=> (not res!1291928) (not e!1980666))))

(get-info :version)

(assert (=> start!297770 (= res!1291928 ((_ is Lexer!4699) thiss!18206))))

(assert (=> start!297770 e!1980666))

(assert (=> start!297770 true))

(assert (=> start!297770 e!1980653))

(declare-fun inv!48556 (Token!9590) Bool)

(assert (=> start!297770 (and (inv!48556 separatorToken!241) e!1980646)))

(declare-fun e!1980657 () Bool)

(assert (=> start!297770 e!1980657))

(declare-fun b!3179430 () Bool)

(declare-fun tp!1005915 () Bool)

(assert (=> b!3179430 (= e!1980657 (and (inv!48556 (h!41124 tokens!494)) e!1980664 tp!1005915))))

(declare-fun tp!1005914 () Bool)

(declare-fun b!3179444 () Bool)

(assert (=> b!3179444 (= e!1980661 (and tp!1005914 (inv!48552 (tag!5616 (h!41125 rules!2135))) (inv!48555 (transformation!5112 (h!41125 rules!2135))) e!1980648))))

(assert (=> b!3179445 (= e!1980663 (and tp!1005906 tp!1005912))))

(declare-fun b!3179446 () Bool)

(assert (=> b!3179446 (= e!1980654 e!1980650)))

(declare-fun res!1291941 () Bool)

(assert (=> b!3179446 (=> res!1291941 e!1980650)))

(assert (=> b!3179446 (= res!1291941 (isSeparator!5112 (rule!7522 (h!41124 tokens!494))))))

(declare-fun lt!1068593 () Unit!50118)

(declare-fun forallContained!1095 (List!35828 Int Token!9590) Unit!50118)

(assert (=> b!3179446 (= lt!1068593 (forallContained!1095 tokens!494 lambda!116353 (h!41124 tokens!494)))))

(declare-fun b!3179447 () Bool)

(declare-fun res!1291938 () Bool)

(assert (=> b!3179447 (=> (not res!1291938) (not e!1980666))))

(declare-fun rulesInvariant!4098 (LexerInterface!4701 List!35829) Bool)

(assert (=> b!3179447 (= res!1291938 (rulesInvariant!4098 thiss!18206 rules!2135))))

(declare-fun b!3179448 () Bool)

(declare-fun res!1291931 () Bool)

(assert (=> b!3179448 (=> res!1291931 e!1980654)))

(declare-fun isEmpty!19817 (BalanceConc!20814) Bool)

(declare-datatypes ((tuple2!35032 0))(
  ( (tuple2!35033 (_1!20650 BalanceConc!20814) (_2!20650 BalanceConc!20812)) )
))
(declare-fun lex!2041 (LexerInterface!4701 List!35829 BalanceConc!20812) tuple2!35032)

(declare-fun seqFromList!3304 (List!35827) BalanceConc!20812)

(assert (=> b!3179448 (= res!1291931 (isEmpty!19817 (_1!20650 (lex!2041 thiss!18206 rules!2135 (seqFromList!3304 lt!1068592)))))))

(declare-fun b!3179449 () Bool)

(assert (=> b!3179449 (= e!1980656 e!1980654)))

(declare-fun res!1291934 () Bool)

(assert (=> b!3179449 (=> res!1291934 e!1980654)))

(assert (=> b!3179449 (= res!1291934 (or (not (= lt!1068598 lt!1068592)) (not (= lt!1068605 lt!1068592))))))

(assert (=> b!3179449 (= lt!1068592 (list!12669 (charsOf!3134 (h!41124 tokens!494))))))

(assert (=> b!3179450 (= e!1980665 (and tp!1005910 tp!1005911))))

(declare-fun b!3179451 () Bool)

(declare-fun res!1291929 () Bool)

(assert (=> b!3179451 (=> (not res!1291929) (not e!1980659))))

(assert (=> b!3179451 (= res!1291929 (and (not ((_ is Nil!35704) tokens!494)) ((_ is Nil!35704) (t!235003 tokens!494))))))

(declare-fun b!3179452 () Bool)

(assert (=> b!3179452 (= e!1980655 (= (rule!7522 (h!41124 tokens!494)) lt!1068599))))

(assert (= (and start!297770 res!1291928) b!3179441))

(assert (= (and b!3179441 res!1291937) b!3179447))

(assert (= (and b!3179447 res!1291938) b!3179440))

(assert (= (and b!3179440 res!1291940) b!3179436))

(assert (= (and b!3179436 res!1291935) b!3179427))

(assert (= (and b!3179427 res!1291927) b!3179429))

(assert (= (and b!3179429 res!1291932) b!3179433))

(assert (= (and b!3179433 res!1291933) b!3179451))

(assert (= (and b!3179451 res!1291929) b!3179438))

(assert (= (and b!3179438 (not res!1291939)) b!3179449))

(assert (= (and b!3179449 (not res!1291934)) b!3179432))

(assert (= (and b!3179432 (not res!1291930)) b!3179448))

(assert (= (and b!3179448 (not res!1291931)) b!3179446))

(assert (= (and b!3179446 (not res!1291941)) b!3179439))

(assert (= (and b!3179439 (not res!1291942)) b!3179443))

(assert (= (and b!3179443 res!1291936) b!3179431))

(assert (= (and b!3179431 res!1291943) b!3179452))

(assert (= b!3179444 b!3179434))

(assert (= b!3179442 b!3179444))

(assert (= (and start!297770 ((_ is Cons!35705) rules!2135)) b!3179442))

(assert (= b!3179428 b!3179445))

(assert (= b!3179435 b!3179428))

(assert (= start!297770 b!3179435))

(assert (= b!3179437 b!3179450))

(assert (= b!3179426 b!3179437))

(assert (= b!3179430 b!3179426))

(assert (= (and start!297770 ((_ is Cons!35704) tokens!494)) b!3179430))

(declare-fun m!3435895 () Bool)

(assert (=> start!297770 m!3435895))

(declare-fun m!3435897 () Bool)

(assert (=> b!3179448 m!3435897))

(assert (=> b!3179448 m!3435897))

(declare-fun m!3435899 () Bool)

(assert (=> b!3179448 m!3435899))

(declare-fun m!3435901 () Bool)

(assert (=> b!3179448 m!3435901))

(declare-fun m!3435903 () Bool)

(assert (=> b!3179431 m!3435903))

(declare-fun m!3435905 () Bool)

(assert (=> b!3179431 m!3435905))

(declare-fun m!3435907 () Bool)

(assert (=> b!3179438 m!3435907))

(declare-fun m!3435909 () Bool)

(assert (=> b!3179438 m!3435909))

(declare-fun m!3435911 () Bool)

(assert (=> b!3179438 m!3435911))

(declare-fun m!3435913 () Bool)

(assert (=> b!3179438 m!3435913))

(declare-fun m!3435915 () Bool)

(assert (=> b!3179438 m!3435915))

(declare-fun m!3435917 () Bool)

(assert (=> b!3179447 m!3435917))

(declare-fun m!3435919 () Bool)

(assert (=> b!3179444 m!3435919))

(declare-fun m!3435921 () Bool)

(assert (=> b!3179444 m!3435921))

(declare-fun m!3435923 () Bool)

(assert (=> b!3179440 m!3435923))

(declare-fun m!3435925 () Bool)

(assert (=> b!3179440 m!3435925))

(declare-fun m!3435927 () Bool)

(assert (=> b!3179449 m!3435927))

(assert (=> b!3179449 m!3435927))

(declare-fun m!3435929 () Bool)

(assert (=> b!3179449 m!3435929))

(declare-fun m!3435931 () Bool)

(assert (=> b!3179432 m!3435931))

(declare-fun m!3435933 () Bool)

(assert (=> b!3179428 m!3435933))

(declare-fun m!3435935 () Bool)

(assert (=> b!3179428 m!3435935))

(declare-fun m!3435937 () Bool)

(assert (=> b!3179426 m!3435937))

(declare-fun m!3435939 () Bool)

(assert (=> b!3179436 m!3435939))

(declare-fun m!3435941 () Bool)

(assert (=> b!3179430 m!3435941))

(declare-fun m!3435943 () Bool)

(assert (=> b!3179439 m!3435943))

(declare-fun m!3435945 () Bool)

(assert (=> b!3179439 m!3435945))

(declare-fun m!3435947 () Bool)

(assert (=> b!3179439 m!3435947))

(assert (=> b!3179439 m!3435943))

(declare-fun m!3435949 () Bool)

(assert (=> b!3179439 m!3435949))

(declare-fun m!3435951 () Bool)

(assert (=> b!3179439 m!3435951))

(declare-fun m!3435953 () Bool)

(assert (=> b!3179446 m!3435953))

(declare-fun m!3435955 () Bool)

(assert (=> b!3179437 m!3435955))

(declare-fun m!3435957 () Bool)

(assert (=> b!3179437 m!3435957))

(declare-fun m!3435959 () Bool)

(assert (=> b!3179429 m!3435959))

(declare-fun m!3435961 () Bool)

(assert (=> b!3179443 m!3435961))

(declare-fun m!3435963 () Bool)

(assert (=> b!3179443 m!3435963))

(declare-fun m!3435965 () Bool)

(assert (=> b!3179443 m!3435965))

(declare-fun m!3435967 () Bool)

(assert (=> b!3179443 m!3435967))

(declare-fun m!3435969 () Bool)

(assert (=> b!3179443 m!3435969))

(declare-fun m!3435971 () Bool)

(assert (=> b!3179443 m!3435971))

(declare-fun m!3435973 () Bool)

(assert (=> b!3179443 m!3435973))

(declare-fun m!3435975 () Bool)

(assert (=> b!3179443 m!3435975))

(assert (=> b!3179443 m!3435967))

(declare-fun m!3435977 () Bool)

(assert (=> b!3179435 m!3435977))

(declare-fun m!3435979 () Bool)

(assert (=> b!3179441 m!3435979))

(declare-fun m!3435981 () Bool)

(assert (=> b!3179433 m!3435981))

(check-sat b_and!210091 (not b_next!84461) (not b!3179439) b_and!210093 (not b!3179431) (not b_next!84463) (not b_next!84467) b_and!210087 b_and!210085 (not b_next!84465) (not b_next!84457) (not b!3179442) (not b_next!84459) b_and!210083 (not b!3179436) b_and!210089 (not b!3179430) (not b!3179438) (not b!3179426) (not b!3179444) (not b!3179447) (not b!3179428) (not b!3179448) (not b!3179432) (not b!3179437) (not start!297770) (not b!3179446) (not b!3179440) (not b!3179433) (not b!3179435) (not b!3179443) (not b!3179441) (not b!3179429) (not b!3179449))
(check-sat (not b_next!84459) b_and!210091 (not b_next!84461) b_and!210083 b_and!210089 b_and!210093 (not b_next!84463) (not b_next!84467) b_and!210087 b_and!210085 (not b_next!84465) (not b_next!84457))
