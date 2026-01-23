; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!78152 () Bool)

(assert start!78152)

(declare-fun b!866168 () Bool)

(declare-fun b_free!26493 () Bool)

(declare-fun b_next!26557 () Bool)

(assert (=> b!866168 (= b_free!26493 (not b_next!26557))))

(declare-fun tp!273921 () Bool)

(declare-fun b_and!77649 () Bool)

(assert (=> b!866168 (= tp!273921 b_and!77649)))

(declare-fun b_free!26495 () Bool)

(declare-fun b_next!26559 () Bool)

(assert (=> b!866168 (= b_free!26495 (not b_next!26559))))

(declare-fun tp!273926 () Bool)

(declare-fun b_and!77651 () Bool)

(assert (=> b!866168 (= tp!273926 b_and!77651)))

(declare-fun b!866162 () Bool)

(declare-fun b_free!26497 () Bool)

(declare-fun b_next!26561 () Bool)

(assert (=> b!866162 (= b_free!26497 (not b_next!26561))))

(declare-fun tp!273925 () Bool)

(declare-fun b_and!77653 () Bool)

(assert (=> b!866162 (= tp!273925 b_and!77653)))

(declare-fun b_free!26499 () Bool)

(declare-fun b_next!26563 () Bool)

(assert (=> b!866162 (= b_free!26499 (not b_next!26563))))

(declare-fun tp!273918 () Bool)

(declare-fun b_and!77655 () Bool)

(assert (=> b!866162 (= tp!273918 b_and!77655)))

(declare-fun b!866160 () Bool)

(declare-fun b_free!26501 () Bool)

(declare-fun b_next!26565 () Bool)

(assert (=> b!866160 (= b_free!26501 (not b_next!26565))))

(declare-fun tp!273922 () Bool)

(declare-fun b_and!77657 () Bool)

(assert (=> b!866160 (= tp!273922 b_and!77657)))

(declare-fun b_free!26503 () Bool)

(declare-fun b_next!26567 () Bool)

(assert (=> b!866160 (= b_free!26503 (not b_next!26567))))

(declare-fun tp!273924 () Bool)

(declare-fun b_and!77659 () Bool)

(assert (=> b!866160 (= tp!273924 b_and!77659)))

(declare-fun b!866152 () Bool)

(declare-fun res!394462 () Bool)

(declare-fun e!569936 () Bool)

(assert (=> b!866152 (=> (not res!394462) (not e!569936))))

(declare-datatypes ((List!9374 0))(
  ( (Nil!9358) (Cons!9358 (h!14759 (_ BitVec 16)) (t!98778 List!9374)) )
))
(declare-datatypes ((TokenValue!1823 0))(
  ( (FloatLiteralValue!3646 (text!13206 List!9374)) (TokenValueExt!1822 (__x!7377 Int)) (Broken!9115 (value!56749 List!9374)) (Object!1838) (End!1823) (Def!1823) (Underscore!1823) (Match!1823) (Else!1823) (Error!1823) (Case!1823) (If!1823) (Extends!1823) (Abstract!1823) (Class!1823) (Val!1823) (DelimiterValue!3646 (del!1883 List!9374)) (KeywordValue!1829 (value!56750 List!9374)) (CommentValue!3646 (value!56751 List!9374)) (WhitespaceValue!3646 (value!56752 List!9374)) (IndentationValue!1823 (value!56753 List!9374)) (String!11014) (Int32!1823) (Broken!9116 (value!56754 List!9374)) (Boolean!1824) (Unit!13879) (OperatorValue!1826 (op!1883 List!9374)) (IdentifierValue!3646 (value!56755 List!9374)) (IdentifierValue!3647 (value!56756 List!9374)) (WhitespaceValue!3647 (value!56757 List!9374)) (True!3646) (False!3646) (Broken!9117 (value!56758 List!9374)) (Broken!9118 (value!56759 List!9374)) (True!3647) (RightBrace!1823) (RightBracket!1823) (Colon!1823) (Null!1823) (Comma!1823) (LeftBracket!1823) (False!3647) (LeftBrace!1823) (ImaginaryLiteralValue!1823 (text!13207 List!9374)) (StringLiteralValue!5469 (value!56760 List!9374)) (EOFValue!1823 (value!56761 List!9374)) (IdentValue!1823 (value!56762 List!9374)) (DelimiterValue!3647 (value!56763 List!9374)) (DedentValue!1823 (value!56764 List!9374)) (NewLineValue!1823 (value!56765 List!9374)) (IntegerValue!5469 (value!56766 (_ BitVec 32)) (text!13208 List!9374)) (IntegerValue!5470 (value!56767 Int) (text!13209 List!9374)) (Times!1823) (Or!1823) (Equal!1823) (Minus!1823) (Broken!9119 (value!56768 List!9374)) (And!1823) (Div!1823) (LessEqual!1823) (Mod!1823) (Concat!4013) (Not!1823) (Plus!1823) (SpaceValue!1823 (value!56769 List!9374)) (IntegerValue!5471 (value!56770 Int) (text!13210 List!9374)) (StringLiteralValue!5470 (text!13211 List!9374)) (FloatLiteralValue!3647 (text!13212 List!9374)) (BytesLiteralValue!1823 (value!56771 List!9374)) (CommentValue!3647 (value!56772 List!9374)) (StringLiteralValue!5471 (value!56773 List!9374)) (ErrorTokenValue!1823 (msg!1884 List!9374)) )
))
(declare-datatypes ((C!4950 0))(
  ( (C!4951 (val!2723 Int)) )
))
(declare-datatypes ((Regex!2190 0))(
  ( (ElementMatch!2190 (c!140133 C!4950)) (Concat!4014 (regOne!4892 Regex!2190) (regTwo!4892 Regex!2190)) (EmptyExpr!2190) (Star!2190 (reg!2519 Regex!2190)) (EmptyLang!2190) (Union!2190 (regOne!4893 Regex!2190) (regTwo!4893 Regex!2190)) )
))
(declare-datatypes ((String!11015 0))(
  ( (String!11016 (value!56774 String)) )
))
(declare-datatypes ((List!9375 0))(
  ( (Nil!9359) (Cons!9359 (h!14760 C!4950) (t!98779 List!9375)) )
))
(declare-datatypes ((IArray!6213 0))(
  ( (IArray!6214 (innerList!3164 List!9375)) )
))
(declare-datatypes ((Conc!3104 0))(
  ( (Node!3104 (left!6928 Conc!3104) (right!7258 Conc!3104) (csize!6438 Int) (cheight!3315 Int)) (Leaf!4571 (xs!5793 IArray!6213) (csize!6439 Int)) (Empty!3104) )
))
(declare-datatypes ((BalanceConc!6222 0))(
  ( (BalanceConc!6223 (c!140134 Conc!3104)) )
))
(declare-datatypes ((TokenValueInjection!3346 0))(
  ( (TokenValueInjection!3347 (toValue!2826 Int) (toChars!2685 Int)) )
))
(declare-datatypes ((Rule!3314 0))(
  ( (Rule!3315 (regex!1757 Regex!2190) (tag!2019 String!11015) (isSeparator!1757 Bool) (transformation!1757 TokenValueInjection!3346)) )
))
(declare-datatypes ((List!9376 0))(
  ( (Nil!9360) (Cons!9360 (h!14761 Rule!3314) (t!98780 List!9376)) )
))
(declare-fun rules!2621 () List!9376)

(declare-fun sepAndNonSepRulesDisjointChars!557 (List!9376 List!9376) Bool)

(assert (=> b!866152 (= res!394462 (sepAndNonSepRulesDisjointChars!557 rules!2621 rules!2621))))

(declare-fun b!866153 () Bool)

(declare-fun res!394463 () Bool)

(assert (=> b!866153 (=> (not res!394463) (not e!569936))))

(declare-datatypes ((Token!3180 0))(
  ( (Token!3181 (value!56775 TokenValue!1823) (rule!3180 Rule!3314) (size!7800 Int) (originalCharacters!2313 List!9375)) )
))
(declare-fun separatorToken!297 () Token!3180)

(assert (=> b!866153 (= res!394463 (isSeparator!1757 (rule!3180 separatorToken!297)))))

(declare-fun b!866154 () Bool)

(declare-fun e!569941 () Bool)

(assert (=> b!866154 (= e!569936 (not e!569941))))

(declare-fun res!394466 () Bool)

(assert (=> b!866154 (=> res!394466 e!569941)))

(declare-datatypes ((List!9377 0))(
  ( (Nil!9361) (Cons!9361 (h!14762 Token!3180) (t!98781 List!9377)) )
))
(declare-fun lt!326773 () List!9377)

(assert (=> b!866154 (= res!394466 (or (not (is-Cons!9361 lt!326773)) (not (is-Cons!9361 (t!98781 lt!326773)))))))

(declare-datatypes ((LexerInterface!1559 0))(
  ( (LexerInterfaceExt!1556 (__x!7378 Int)) (Lexer!1557) )
))
(declare-fun thiss!20117 () LexerInterface!1559)

(declare-fun rulesProduceEachTokenIndividuallyList!447 (LexerInterface!1559 List!9376 List!9377) Bool)

(assert (=> b!866154 (rulesProduceEachTokenIndividuallyList!447 thiss!20117 rules!2621 lt!326773)))

(declare-fun l!5107 () List!9377)

(declare-fun withSeparatorTokenList!87 (LexerInterface!1559 List!9377 Token!3180) List!9377)

(assert (=> b!866154 (= lt!326773 (withSeparatorTokenList!87 thiss!20117 l!5107 separatorToken!297))))

(declare-datatypes ((Unit!13880 0))(
  ( (Unit!13881) )
))
(declare-fun lt!326772 () Unit!13880)

(declare-fun withSeparatorTokenListPreservesRulesProduceTokens!87 (LexerInterface!1559 List!9376 List!9377 Token!3180) Unit!13880)

(assert (=> b!866154 (= lt!326772 (withSeparatorTokenListPreservesRulesProduceTokens!87 thiss!20117 rules!2621 l!5107 separatorToken!297))))

(declare-fun tp!273927 () Bool)

(declare-fun e!569938 () Bool)

(declare-fun b!866155 () Bool)

(declare-fun e!569939 () Bool)

(declare-fun inv!11892 (String!11015) Bool)

(declare-fun inv!11895 (TokenValueInjection!3346) Bool)

(assert (=> b!866155 (= e!569939 (and tp!273927 (inv!11892 (tag!2019 (rule!3180 (h!14762 l!5107)))) (inv!11895 (transformation!1757 (rule!3180 (h!14762 l!5107)))) e!569938))))

(declare-fun tp!273915 () Bool)

(declare-fun e!569942 () Bool)

(declare-fun b!866156 () Bool)

(declare-fun e!569944 () Bool)

(declare-fun inv!11896 (Token!3180) Bool)

(assert (=> b!866156 (= e!569944 (and (inv!11896 (h!14762 l!5107)) e!569942 tp!273915))))

(declare-fun b!866157 () Bool)

(declare-fun e!569934 () Bool)

(declare-fun e!569926 () Bool)

(declare-fun tp!273919 () Bool)

(assert (=> b!866157 (= e!569934 (and e!569926 tp!273919))))

(declare-fun res!394459 () Bool)

(assert (=> start!78152 (=> (not res!394459) (not e!569936))))

(assert (=> start!78152 (= res!394459 (is-Lexer!1557 thiss!20117))))

(assert (=> start!78152 e!569936))

(assert (=> start!78152 true))

(assert (=> start!78152 e!569934))

(assert (=> start!78152 e!569944))

(declare-fun e!569937 () Bool)

(assert (=> start!78152 (and (inv!11896 separatorToken!297) e!569937)))

(declare-fun b!866158 () Bool)

(declare-fun e!569940 () Bool)

(assert (=> b!866158 (= e!569941 e!569940)))

(declare-fun res!394470 () Bool)

(assert (=> b!866158 (=> res!394470 e!569940)))

(declare-fun lt!326770 () List!9377)

(assert (=> b!866158 (= res!394470 (not (= (t!98781 (t!98781 lt!326773)) (withSeparatorTokenList!87 thiss!20117 lt!326770 separatorToken!297))))))

(declare-fun tail!1065 (List!9377) List!9377)

(assert (=> b!866158 (= lt!326770 (tail!1065 l!5107))))

(declare-fun e!569929 () Bool)

(declare-fun b!866159 () Bool)

(declare-fun tp!273923 () Bool)

(declare-fun inv!21 (TokenValue!1823) Bool)

(assert (=> b!866159 (= e!569937 (and (inv!21 (value!56775 separatorToken!297)) e!569929 tp!273923))))

(assert (=> b!866160 (= e!569938 (and tp!273922 tp!273924))))

(declare-fun b!866161 () Bool)

(declare-fun res!394465 () Bool)

(declare-fun e!569935 () Bool)

(assert (=> b!866161 (=> res!394465 e!569935)))

(declare-fun lambda!25993 () Int)

(declare-fun forall!2224 (List!9377 Int) Bool)

(assert (=> b!866161 (= res!394465 (not (forall!2224 lt!326770 lambda!25993)))))

(declare-fun e!569933 () Bool)

(assert (=> b!866162 (= e!569933 (and tp!273925 tp!273918))))

(declare-fun b!866163 () Bool)

(declare-fun res!394469 () Bool)

(assert (=> b!866163 (=> (not res!394469) (not e!569936))))

(declare-fun rulesInvariant!1435 (LexerInterface!1559 List!9376) Bool)

(assert (=> b!866163 (= res!394469 (rulesInvariant!1435 thiss!20117 rules!2621))))

(declare-fun b!866164 () Bool)

(declare-fun res!394461 () Bool)

(assert (=> b!866164 (=> res!394461 e!569940)))

(assert (=> b!866164 (= res!394461 (not (= (h!14762 (t!98781 lt!326773)) separatorToken!297)))))

(declare-fun b!866165 () Bool)

(declare-fun res!394468 () Bool)

(assert (=> b!866165 (=> (not res!394468) (not e!569936))))

(declare-fun isEmpty!5558 (List!9376) Bool)

(assert (=> b!866165 (= res!394468 (not (isEmpty!5558 rules!2621)))))

(declare-fun b!866166 () Bool)

(declare-fun ListPrimitiveSize!61 (List!9377) Int)

(assert (=> b!866166 (= e!569935 (< (ListPrimitiveSize!61 lt!326770) (ListPrimitiveSize!61 l!5107)))))

(declare-fun b!866167 () Bool)

(declare-fun tp!273916 () Bool)

(assert (=> b!866167 (= e!569926 (and tp!273916 (inv!11892 (tag!2019 (h!14761 rules!2621))) (inv!11895 (transformation!1757 (h!14761 rules!2621))) e!569933))))

(declare-fun e!569928 () Bool)

(assert (=> b!866168 (= e!569928 (and tp!273921 tp!273926))))

(declare-fun b!866169 () Bool)

(declare-fun res!394471 () Bool)

(assert (=> b!866169 (=> (not res!394471) (not e!569936))))

(assert (=> b!866169 (= res!394471 (rulesProduceEachTokenIndividuallyList!447 thiss!20117 rules!2621 l!5107))))

(declare-fun b!866170 () Bool)

(declare-fun res!394464 () Bool)

(assert (=> b!866170 (=> res!394464 e!569940)))

(declare-fun head!1503 (List!9377) Token!3180)

(assert (=> b!866170 (= res!394464 (not (= (head!1503 l!5107) (h!14762 lt!326773))))))

(declare-fun b!866171 () Bool)

(declare-fun tp!273917 () Bool)

(assert (=> b!866171 (= e!569929 (and tp!273917 (inv!11892 (tag!2019 (rule!3180 separatorToken!297))) (inv!11895 (transformation!1757 (rule!3180 separatorToken!297))) e!569928))))

(declare-fun b!866172 () Bool)

(declare-fun res!394458 () Bool)

(assert (=> b!866172 (=> (not res!394458) (not e!569936))))

(declare-fun rulesProduceIndividualToken!623 (LexerInterface!1559 List!9376 Token!3180) Bool)

(assert (=> b!866172 (= res!394458 (rulesProduceIndividualToken!623 thiss!20117 rules!2621 separatorToken!297))))

(declare-fun b!866173 () Bool)

(declare-fun tp!273920 () Bool)

(assert (=> b!866173 (= e!569942 (and (inv!21 (value!56775 (h!14762 l!5107))) e!569939 tp!273920))))

(declare-fun b!866174 () Bool)

(declare-fun res!394460 () Bool)

(assert (=> b!866174 (=> (not res!394460) (not e!569936))))

(assert (=> b!866174 (= res!394460 (forall!2224 l!5107 lambda!25993))))

(declare-fun b!866175 () Bool)

(assert (=> b!866175 (= e!569940 e!569935)))

(declare-fun res!394467 () Bool)

(assert (=> b!866175 (=> res!394467 e!569935)))

(assert (=> b!866175 (= res!394467 (not (rulesProduceEachTokenIndividuallyList!447 thiss!20117 rules!2621 lt!326770)))))

(declare-fun separableTokensPredicate!77 (LexerInterface!1559 Token!3180 Token!3180 List!9376) Bool)

(assert (=> b!866175 (separableTokensPredicate!77 thiss!20117 (h!14762 lt!326773) (h!14762 (t!98781 lt!326773)) rules!2621)))

(declare-fun lt!326771 () Unit!13880)

(declare-fun lemmaTokensOfDifferentKindsAreSeparable!55 (LexerInterface!1559 Token!3180 Token!3180 List!9376) Unit!13880)

(assert (=> b!866175 (= lt!326771 (lemmaTokensOfDifferentKindsAreSeparable!55 thiss!20117 (h!14762 lt!326773) (h!14762 (t!98781 lt!326773)) rules!2621))))

(assert (= (and start!78152 res!394459) b!866165))

(assert (= (and b!866165 res!394468) b!866163))

(assert (= (and b!866163 res!394469) b!866169))

(assert (= (and b!866169 res!394471) b!866172))

(assert (= (and b!866172 res!394458) b!866153))

(assert (= (and b!866153 res!394463) b!866174))

(assert (= (and b!866174 res!394460) b!866152))

(assert (= (and b!866152 res!394462) b!866154))

(assert (= (and b!866154 (not res!394466)) b!866158))

(assert (= (and b!866158 (not res!394470)) b!866170))

(assert (= (and b!866170 (not res!394464)) b!866164))

(assert (= (and b!866164 (not res!394461)) b!866175))

(assert (= (and b!866175 (not res!394467)) b!866161))

(assert (= (and b!866161 (not res!394465)) b!866166))

(assert (= b!866167 b!866162))

(assert (= b!866157 b!866167))

(assert (= (and start!78152 (is-Cons!9360 rules!2621)) b!866157))

(assert (= b!866155 b!866160))

(assert (= b!866173 b!866155))

(assert (= b!866156 b!866173))

(assert (= (and start!78152 (is-Cons!9361 l!5107)) b!866156))

(assert (= b!866171 b!866168))

(assert (= b!866159 b!866171))

(assert (= start!78152 b!866159))

(declare-fun m!1113025 () Bool)

(assert (=> b!866171 m!1113025))

(declare-fun m!1113027 () Bool)

(assert (=> b!866171 m!1113027))

(declare-fun m!1113029 () Bool)

(assert (=> b!866156 m!1113029))

(declare-fun m!1113031 () Bool)

(assert (=> b!866155 m!1113031))

(declare-fun m!1113033 () Bool)

(assert (=> b!866155 m!1113033))

(declare-fun m!1113035 () Bool)

(assert (=> b!866158 m!1113035))

(declare-fun m!1113037 () Bool)

(assert (=> b!866158 m!1113037))

(declare-fun m!1113039 () Bool)

(assert (=> b!866173 m!1113039))

(declare-fun m!1113041 () Bool)

(assert (=> b!866161 m!1113041))

(declare-fun m!1113043 () Bool)

(assert (=> b!866152 m!1113043))

(declare-fun m!1113045 () Bool)

(assert (=> b!866166 m!1113045))

(declare-fun m!1113047 () Bool)

(assert (=> b!866166 m!1113047))

(declare-fun m!1113049 () Bool)

(assert (=> b!866154 m!1113049))

(declare-fun m!1113051 () Bool)

(assert (=> b!866154 m!1113051))

(declare-fun m!1113053 () Bool)

(assert (=> b!866154 m!1113053))

(declare-fun m!1113055 () Bool)

(assert (=> b!866165 m!1113055))

(declare-fun m!1113057 () Bool)

(assert (=> b!866167 m!1113057))

(declare-fun m!1113059 () Bool)

(assert (=> b!866167 m!1113059))

(declare-fun m!1113061 () Bool)

(assert (=> b!866163 m!1113061))

(declare-fun m!1113063 () Bool)

(assert (=> b!866174 m!1113063))

(declare-fun m!1113065 () Bool)

(assert (=> b!866172 m!1113065))

(declare-fun m!1113067 () Bool)

(assert (=> b!866169 m!1113067))

(declare-fun m!1113069 () Bool)

(assert (=> b!866159 m!1113069))

(declare-fun m!1113071 () Bool)

(assert (=> b!866170 m!1113071))

(declare-fun m!1113073 () Bool)

(assert (=> b!866175 m!1113073))

(declare-fun m!1113075 () Bool)

(assert (=> b!866175 m!1113075))

(declare-fun m!1113077 () Bool)

(assert (=> b!866175 m!1113077))

(declare-fun m!1113079 () Bool)

(assert (=> start!78152 m!1113079))

(push 1)

(assert (not b!866154))

(assert (not b!866167))

(assert (not b!866158))

(assert (not b!866175))

(assert (not b_next!26563))

(assert b_and!77657)

(assert (not b!866174))

(assert (not b!866171))

(assert (not b_next!26565))

(assert (not b!866163))

(assert (not b_next!26567))

(assert b_and!77653)

(assert b_and!77655)

(assert (not b_next!26557))

(assert (not b!866166))

(assert (not b!866155))

(assert (not start!78152))

(assert (not b!866159))

(assert (not b!866152))

(assert (not b!866156))

(assert (not b!866169))

(assert b_and!77649)

(assert (not b!866161))

(assert (not b!866157))

(assert (not b_next!26561))

(assert (not b!866165))

(assert b_and!77659)

(assert (not b!866173))

(assert (not b_next!26559))

(assert b_and!77651)

(assert (not b!866172))

(assert (not b!866170))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!26563))

(assert b_and!77657)

(assert (not b_next!26565))

(assert b_and!77649)

(assert (not b_next!26567))

(assert (not b_next!26561))

(assert b_and!77653)

(assert b_and!77659)

(assert b_and!77655)

(assert (not b_next!26557))

(assert (not b_next!26559))

(assert b_and!77651)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!272007 () Bool)

(declare-fun lt!326788 () Int)

(assert (=> d!272007 (>= lt!326788 0)))

(declare-fun e!570004 () Int)

(assert (=> d!272007 (= lt!326788 e!570004)))

(declare-fun c!140139 () Bool)

(assert (=> d!272007 (= c!140139 (is-Nil!9361 lt!326770))))

(assert (=> d!272007 (= (ListPrimitiveSize!61 lt!326770) lt!326788)))

(declare-fun b!866252 () Bool)

(assert (=> b!866252 (= e!570004 0)))

(declare-fun b!866253 () Bool)

(assert (=> b!866253 (= e!570004 (+ 1 (ListPrimitiveSize!61 (t!98781 lt!326770))))))

(assert (= (and d!272007 c!140139) b!866252))

(assert (= (and d!272007 (not c!140139)) b!866253))

(declare-fun m!1113137 () Bool)

(assert (=> b!866253 m!1113137))

(assert (=> b!866166 d!272007))

(declare-fun d!272009 () Bool)

(declare-fun lt!326789 () Int)

(assert (=> d!272009 (>= lt!326789 0)))

(declare-fun e!570005 () Int)

(assert (=> d!272009 (= lt!326789 e!570005)))

(declare-fun c!140140 () Bool)

(assert (=> d!272009 (= c!140140 (is-Nil!9361 l!5107))))

(assert (=> d!272009 (= (ListPrimitiveSize!61 l!5107) lt!326789)))

(declare-fun b!866254 () Bool)

(assert (=> b!866254 (= e!570005 0)))

(declare-fun b!866255 () Bool)

(assert (=> b!866255 (= e!570005 (+ 1 (ListPrimitiveSize!61 (t!98781 l!5107))))))

(assert (= (and d!272009 c!140140) b!866254))

(assert (= (and d!272009 (not c!140140)) b!866255))

(declare-fun m!1113139 () Bool)

(assert (=> b!866255 m!1113139))

(assert (=> b!866166 d!272009))

(declare-fun d!272011 () Bool)

(assert (=> d!272011 (= (inv!11892 (tag!2019 (rule!3180 (h!14762 l!5107)))) (= (mod (str.len (value!56774 (tag!2019 (rule!3180 (h!14762 l!5107))))) 2) 0))))

(assert (=> b!866155 d!272011))

(declare-fun d!272013 () Bool)

(declare-fun res!394519 () Bool)

(declare-fun e!570008 () Bool)

(assert (=> d!272013 (=> (not res!394519) (not e!570008))))

(declare-fun semiInverseModEq!697 (Int Int) Bool)

(assert (=> d!272013 (= res!394519 (semiInverseModEq!697 (toChars!2685 (transformation!1757 (rule!3180 (h!14762 l!5107)))) (toValue!2826 (transformation!1757 (rule!3180 (h!14762 l!5107))))))))

(assert (=> d!272013 (= (inv!11895 (transformation!1757 (rule!3180 (h!14762 l!5107)))) e!570008)))

(declare-fun b!866258 () Bool)

(declare-fun equivClasses!664 (Int Int) Bool)

(assert (=> b!866258 (= e!570008 (equivClasses!664 (toChars!2685 (transformation!1757 (rule!3180 (h!14762 l!5107)))) (toValue!2826 (transformation!1757 (rule!3180 (h!14762 l!5107))))))))

(assert (= (and d!272013 res!394519) b!866258))

(declare-fun m!1113141 () Bool)

(assert (=> d!272013 m!1113141))

(declare-fun m!1113143 () Bool)

(assert (=> b!866258 m!1113143))

(assert (=> b!866155 d!272013))

(declare-fun d!272015 () Bool)

(declare-fun res!394526 () Bool)

(declare-fun e!570011 () Bool)

(assert (=> d!272015 (=> (not res!394526) (not e!570011))))

(declare-fun isEmpty!5560 (List!9375) Bool)

(assert (=> d!272015 (= res!394526 (not (isEmpty!5560 (originalCharacters!2313 (h!14762 l!5107)))))))

(assert (=> d!272015 (= (inv!11896 (h!14762 l!5107)) e!570011)))

(declare-fun b!866263 () Bool)

(declare-fun res!394527 () Bool)

(assert (=> b!866263 (=> (not res!394527) (not e!570011))))

(declare-fun list!3695 (BalanceConc!6222) List!9375)

(declare-fun dynLambda!4445 (Int TokenValue!1823) BalanceConc!6222)

(assert (=> b!866263 (= res!394527 (= (originalCharacters!2313 (h!14762 l!5107)) (list!3695 (dynLambda!4445 (toChars!2685 (transformation!1757 (rule!3180 (h!14762 l!5107)))) (value!56775 (h!14762 l!5107))))))))

(declare-fun b!866264 () Bool)

(declare-fun size!7802 (List!9375) Int)

(assert (=> b!866264 (= e!570011 (= (size!7800 (h!14762 l!5107)) (size!7802 (originalCharacters!2313 (h!14762 l!5107)))))))

(assert (= (and d!272015 res!394526) b!866263))

(assert (= (and b!866263 res!394527) b!866264))

(declare-fun b_lambda!29463 () Bool)

(assert (=> (not b_lambda!29463) (not b!866263)))

(declare-fun tb!62613 () Bool)

(declare-fun t!98787 () Bool)

(assert (=> (and b!866168 (= (toChars!2685 (transformation!1757 (rule!3180 separatorToken!297))) (toChars!2685 (transformation!1757 (rule!3180 (h!14762 l!5107))))) t!98787) tb!62613))

(declare-fun b!866269 () Bool)

(declare-fun e!570014 () Bool)

(declare-fun tp!273969 () Bool)

(declare-fun inv!11899 (Conc!3104) Bool)

(assert (=> b!866269 (= e!570014 (and (inv!11899 (c!140134 (dynLambda!4445 (toChars!2685 (transformation!1757 (rule!3180 (h!14762 l!5107)))) (value!56775 (h!14762 l!5107))))) tp!273969))))

(declare-fun result!72386 () Bool)

(declare-fun inv!11900 (BalanceConc!6222) Bool)

(assert (=> tb!62613 (= result!72386 (and (inv!11900 (dynLambda!4445 (toChars!2685 (transformation!1757 (rule!3180 (h!14762 l!5107)))) (value!56775 (h!14762 l!5107)))) e!570014))))

(assert (= tb!62613 b!866269))

(declare-fun m!1113145 () Bool)

(assert (=> b!866269 m!1113145))

(declare-fun m!1113147 () Bool)

(assert (=> tb!62613 m!1113147))

(assert (=> b!866263 t!98787))

(declare-fun b_and!77673 () Bool)

(assert (= b_and!77651 (and (=> t!98787 result!72386) b_and!77673)))

(declare-fun t!98789 () Bool)

(declare-fun tb!62615 () Bool)

(assert (=> (and b!866162 (= (toChars!2685 (transformation!1757 (h!14761 rules!2621))) (toChars!2685 (transformation!1757 (rule!3180 (h!14762 l!5107))))) t!98789) tb!62615))

(declare-fun result!72390 () Bool)

(assert (= result!72390 result!72386))

(assert (=> b!866263 t!98789))

(declare-fun b_and!77675 () Bool)

(assert (= b_and!77655 (and (=> t!98789 result!72390) b_and!77675)))

(declare-fun t!98791 () Bool)

(declare-fun tb!62617 () Bool)

(assert (=> (and b!866160 (= (toChars!2685 (transformation!1757 (rule!3180 (h!14762 l!5107)))) (toChars!2685 (transformation!1757 (rule!3180 (h!14762 l!5107))))) t!98791) tb!62617))

(declare-fun result!72392 () Bool)

(assert (= result!72392 result!72386))

(assert (=> b!866263 t!98791))

(declare-fun b_and!77677 () Bool)

(assert (= b_and!77659 (and (=> t!98791 result!72392) b_and!77677)))

(declare-fun m!1113149 () Bool)

(assert (=> d!272015 m!1113149))

(declare-fun m!1113151 () Bool)

(assert (=> b!866263 m!1113151))

(assert (=> b!866263 m!1113151))

(declare-fun m!1113153 () Bool)

(assert (=> b!866263 m!1113153))

(declare-fun m!1113155 () Bool)

(assert (=> b!866264 m!1113155))

(assert (=> b!866156 d!272015))

(declare-fun bs!232878 () Bool)

(declare-fun d!272017 () Bool)

(assert (= bs!232878 (and d!272017 b!866174)))

(declare-fun lambda!26001 () Int)

(assert (=> bs!232878 (not (= lambda!26001 lambda!25993))))

(declare-fun b!866290 () Bool)

(declare-fun e!570033 () Bool)

(assert (=> b!866290 (= e!570033 true)))

(declare-fun b!866289 () Bool)

(declare-fun e!570032 () Bool)

(assert (=> b!866289 (= e!570032 e!570033)))

(declare-fun b!866288 () Bool)

(declare-fun e!570031 () Bool)

(assert (=> b!866288 (= e!570031 e!570032)))

(assert (=> d!272017 e!570031))

(assert (= b!866289 b!866290))

(assert (= b!866288 b!866289))

(assert (= (and d!272017 (is-Cons!9360 rules!2621)) b!866288))

(declare-fun order!6115 () Int)

(declare-fun order!6113 () Int)

(declare-fun dynLambda!4446 (Int Int) Int)

(declare-fun dynLambda!4447 (Int Int) Int)

(assert (=> b!866290 (< (dynLambda!4446 order!6113 (toValue!2826 (transformation!1757 (h!14761 rules!2621)))) (dynLambda!4447 order!6115 lambda!26001))))

(declare-fun order!6117 () Int)

(declare-fun dynLambda!4448 (Int Int) Int)

(assert (=> b!866290 (< (dynLambda!4448 order!6117 (toChars!2685 (transformation!1757 (h!14761 rules!2621)))) (dynLambda!4447 order!6115 lambda!26001))))

(assert (=> d!272017 true))

(declare-fun lt!326794 () Bool)

(assert (=> d!272017 (= lt!326794 (forall!2224 lt!326773 lambda!26001))))

(declare-fun e!570023 () Bool)

(assert (=> d!272017 (= lt!326794 e!570023)))

(declare-fun res!394539 () Bool)

(assert (=> d!272017 (=> res!394539 e!570023)))

(assert (=> d!272017 (= res!394539 (not (is-Cons!9361 lt!326773)))))

(assert (=> d!272017 (not (isEmpty!5558 rules!2621))))

(assert (=> d!272017 (= (rulesProduceEachTokenIndividuallyList!447 thiss!20117 rules!2621 lt!326773) lt!326794)))

(declare-fun b!866278 () Bool)

(declare-fun e!570024 () Bool)

(assert (=> b!866278 (= e!570023 e!570024)))

(declare-fun res!394538 () Bool)

(assert (=> b!866278 (=> (not res!394538) (not e!570024))))

(assert (=> b!866278 (= res!394538 (rulesProduceIndividualToken!623 thiss!20117 rules!2621 (h!14762 lt!326773)))))

(declare-fun b!866279 () Bool)

(assert (=> b!866279 (= e!570024 (rulesProduceEachTokenIndividuallyList!447 thiss!20117 rules!2621 (t!98781 lt!326773)))))

(assert (= (and d!272017 (not res!394539)) b!866278))

(assert (= (and b!866278 res!394538) b!866279))

(declare-fun m!1113157 () Bool)

(assert (=> d!272017 m!1113157))

(assert (=> d!272017 m!1113055))

(declare-fun m!1113159 () Bool)

(assert (=> b!866278 m!1113159))

(declare-fun m!1113161 () Bool)

(assert (=> b!866279 m!1113161))

(assert (=> b!866154 d!272017))

(declare-fun b!866313 () Bool)

(declare-fun e!570048 () List!9375)

(assert (=> b!866313 (= e!570048 Nil!9359)))

(declare-fun b!866314 () Bool)

(declare-fun e!570046 () List!9375)

(declare-fun lt!326811 () List!9377)

(declare-fun ++!2423 (List!9375 List!9375) List!9375)

(declare-fun charsOf!1016 (Token!3180) BalanceConc!6222)

(declare-fun printList!499 (LexerInterface!1559 List!9377) List!9375)

(assert (=> b!866314 (= e!570046 (++!2423 (list!3695 (charsOf!1016 (h!14762 lt!326811))) (printList!499 thiss!20117 (t!98781 lt!326811))))))

(declare-fun b!866315 () Bool)

(declare-fun e!570050 () Bool)

(declare-fun e!570051 () Bool)

(assert (=> b!866315 (= e!570050 e!570051)))

(declare-fun res!394548 () Bool)

(assert (=> b!866315 (=> res!394548 e!570051)))

(assert (=> b!866315 (= res!394548 (not (is-Cons!9361 l!5107)))))

(declare-fun b!866316 () Bool)

(declare-fun e!570049 () List!9377)

(assert (=> b!866316 (= e!570049 Nil!9361)))

(declare-fun b!866317 () Bool)

(assert (=> b!866317 (= e!570046 Nil!9359)))

(declare-fun b!866318 () Bool)

(declare-fun $colon$colon!112 (List!9377 Token!3180) List!9377)

(assert (=> b!866318 (= e!570051 (= (printList!499 thiss!20117 ($colon$colon!112 (withSeparatorTokenList!87 thiss!20117 (t!98781 l!5107) separatorToken!297) separatorToken!297)) e!570046))))

(declare-fun c!140148 () Bool)

(assert (=> b!866318 (= c!140148 (is-Cons!9361 lt!326811))))

(assert (=> b!866318 (= lt!326811 ($colon$colon!112 (withSeparatorTokenList!87 thiss!20117 (t!98781 l!5107) separatorToken!297) separatorToken!297))))

(declare-fun b!866319 () Bool)

(declare-fun lt!326813 () List!9377)

(assert (=> b!866319 (= e!570048 (++!2423 (list!3695 (charsOf!1016 (h!14762 lt!326813))) (printList!499 thiss!20117 (t!98781 lt!326813))))))

(declare-fun b!866321 () Bool)

(declare-fun res!394551 () Bool)

(assert (=> b!866321 (=> (not res!394551) (not e!570050))))

(declare-fun e!570047 () Bool)

(assert (=> b!866321 (= res!394551 e!570047)))

(declare-fun res!394550 () Bool)

(assert (=> b!866321 (=> res!394550 e!570047)))

(assert (=> b!866321 (= res!394550 (not (is-Cons!9361 l!5107)))))

(declare-fun b!866322 () Bool)

(assert (=> b!866322 (= e!570049 ($colon$colon!112 ($colon$colon!112 (withSeparatorTokenList!87 thiss!20117 (t!98781 l!5107) separatorToken!297) separatorToken!297) (h!14762 l!5107)))))

(declare-fun lt!326815 () List!9375)

(assert (=> b!866322 (= lt!326815 (list!3695 (charsOf!1016 (h!14762 l!5107))))))

(declare-fun lt!326818 () List!9375)

(assert (=> b!866322 (= lt!326818 (list!3695 (charsOf!1016 separatorToken!297)))))

(declare-fun lt!326814 () List!9375)

(assert (=> b!866322 (= lt!326814 (printList!499 thiss!20117 (withSeparatorTokenList!87 thiss!20117 (t!98781 l!5107) separatorToken!297)))))

(declare-fun lt!326816 () Unit!13880)

(declare-fun lemmaConcatAssociativity!776 (List!9375 List!9375 List!9375) Unit!13880)

(assert (=> b!866322 (= lt!326816 (lemmaConcatAssociativity!776 lt!326815 lt!326818 lt!326814))))

(assert (=> b!866322 (= (++!2423 (++!2423 lt!326815 lt!326818) lt!326814) (++!2423 lt!326815 (++!2423 lt!326818 lt!326814)))))

(declare-fun lt!326812 () Unit!13880)

(assert (=> b!866322 (= lt!326812 lt!326816)))

(declare-fun d!272021 () Bool)

(declare-fun lt!326817 () List!9377)

(declare-fun printWithSeparatorTokenList!57 (LexerInterface!1559 List!9377 Token!3180) List!9375)

(assert (=> d!272021 (= (printList!499 thiss!20117 lt!326817) (printWithSeparatorTokenList!57 thiss!20117 l!5107 separatorToken!297))))

(assert (=> d!272021 (= lt!326817 e!570049)))

(declare-fun c!140147 () Bool)

(assert (=> d!272021 (= c!140147 (is-Cons!9361 l!5107))))

(assert (=> d!272021 e!570050))

(declare-fun res!394549 () Bool)

(assert (=> d!272021 (=> (not res!394549) (not e!570050))))

(assert (=> d!272021 (= res!394549 (isSeparator!1757 (rule!3180 separatorToken!297)))))

(assert (=> d!272021 (= (withSeparatorTokenList!87 thiss!20117 l!5107 separatorToken!297) lt!326817)))

(declare-fun b!866320 () Bool)

(assert (=> b!866320 (= e!570047 (= (printList!499 thiss!20117 ($colon$colon!112 ($colon$colon!112 (withSeparatorTokenList!87 thiss!20117 (t!98781 l!5107) separatorToken!297) separatorToken!297) (h!14762 l!5107))) e!570048))))

(declare-fun c!140149 () Bool)

(assert (=> b!866320 (= c!140149 (is-Cons!9361 lt!326813))))

(assert (=> b!866320 (= lt!326813 ($colon$colon!112 ($colon$colon!112 (withSeparatorTokenList!87 thiss!20117 (t!98781 l!5107) separatorToken!297) separatorToken!297) (h!14762 l!5107)))))

(assert (= (and d!272021 res!394549) b!866321))

(assert (= (and b!866321 (not res!394550)) b!866320))

(assert (= (and b!866320 c!140149) b!866319))

(assert (= (and b!866320 (not c!140149)) b!866313))

(assert (= (and b!866321 res!394551) b!866315))

(assert (= (and b!866315 (not res!394548)) b!866318))

(assert (= (and b!866318 c!140148) b!866314))

(assert (= (and b!866318 (not c!140148)) b!866317))

(assert (= (and d!272021 c!140147) b!866322))

(assert (= (and d!272021 (not c!140147)) b!866316))

(declare-fun m!1113163 () Bool)

(assert (=> b!866320 m!1113163))

(assert (=> b!866320 m!1113163))

(declare-fun m!1113165 () Bool)

(assert (=> b!866320 m!1113165))

(assert (=> b!866320 m!1113165))

(declare-fun m!1113167 () Bool)

(assert (=> b!866320 m!1113167))

(assert (=> b!866320 m!1113167))

(declare-fun m!1113169 () Bool)

(assert (=> b!866320 m!1113169))

(assert (=> b!866318 m!1113163))

(assert (=> b!866318 m!1113163))

(assert (=> b!866318 m!1113165))

(assert (=> b!866318 m!1113165))

(declare-fun m!1113171 () Bool)

(assert (=> b!866318 m!1113171))

(declare-fun m!1113173 () Bool)

(assert (=> b!866319 m!1113173))

(assert (=> b!866319 m!1113173))

(declare-fun m!1113175 () Bool)

(assert (=> b!866319 m!1113175))

(declare-fun m!1113177 () Bool)

(assert (=> b!866319 m!1113177))

(assert (=> b!866319 m!1113175))

(assert (=> b!866319 m!1113177))

(declare-fun m!1113179 () Bool)

(assert (=> b!866319 m!1113179))

(declare-fun m!1113181 () Bool)

(assert (=> d!272021 m!1113181))

(declare-fun m!1113183 () Bool)

(assert (=> d!272021 m!1113183))

(declare-fun m!1113185 () Bool)

(assert (=> b!866322 m!1113185))

(declare-fun m!1113187 () Bool)

(assert (=> b!866322 m!1113187))

(declare-fun m!1113189 () Bool)

(assert (=> b!866322 m!1113189))

(declare-fun m!1113191 () Bool)

(assert (=> b!866322 m!1113191))

(declare-fun m!1113193 () Bool)

(assert (=> b!866322 m!1113193))

(assert (=> b!866322 m!1113185))

(assert (=> b!866322 m!1113163))

(assert (=> b!866322 m!1113189))

(declare-fun m!1113195 () Bool)

(assert (=> b!866322 m!1113195))

(declare-fun m!1113197 () Bool)

(assert (=> b!866322 m!1113197))

(assert (=> b!866322 m!1113165))

(assert (=> b!866322 m!1113167))

(assert (=> b!866322 m!1113163))

(declare-fun m!1113199 () Bool)

(assert (=> b!866322 m!1113199))

(declare-fun m!1113201 () Bool)

(assert (=> b!866322 m!1113201))

(assert (=> b!866322 m!1113201))

(declare-fun m!1113203 () Bool)

(assert (=> b!866322 m!1113203))

(assert (=> b!866322 m!1113163))

(assert (=> b!866322 m!1113165))

(assert (=> b!866322 m!1113195))

(declare-fun m!1113205 () Bool)

(assert (=> b!866314 m!1113205))

(assert (=> b!866314 m!1113205))

(declare-fun m!1113207 () Bool)

(assert (=> b!866314 m!1113207))

(declare-fun m!1113209 () Bool)

(assert (=> b!866314 m!1113209))

(assert (=> b!866314 m!1113207))

(assert (=> b!866314 m!1113209))

(declare-fun m!1113211 () Bool)

(assert (=> b!866314 m!1113211))

(assert (=> b!866154 d!272021))

(declare-fun d!272023 () Bool)

(assert (=> d!272023 (rulesProduceEachTokenIndividuallyList!447 thiss!20117 rules!2621 (withSeparatorTokenList!87 thiss!20117 l!5107 separatorToken!297))))

(declare-fun lt!326821 () Unit!13880)

(declare-fun choose!5091 (LexerInterface!1559 List!9376 List!9377 Token!3180) Unit!13880)

(assert (=> d!272023 (= lt!326821 (choose!5091 thiss!20117 rules!2621 l!5107 separatorToken!297))))

(assert (=> d!272023 (not (isEmpty!5558 rules!2621))))

(assert (=> d!272023 (= (withSeparatorTokenListPreservesRulesProduceTokens!87 thiss!20117 rules!2621 l!5107 separatorToken!297) lt!326821)))

(declare-fun bs!232879 () Bool)

(assert (= bs!232879 d!272023))

(assert (=> bs!232879 m!1113051))

(assert (=> bs!232879 m!1113051))

(declare-fun m!1113213 () Bool)

(assert (=> bs!232879 m!1113213))

(declare-fun m!1113215 () Bool)

(assert (=> bs!232879 m!1113215))

(assert (=> bs!232879 m!1113055))

(assert (=> b!866154 d!272023))

(declare-fun bs!232880 () Bool)

(declare-fun d!272025 () Bool)

(assert (= bs!232880 (and d!272025 b!866174)))

(declare-fun lambda!26002 () Int)

(assert (=> bs!232880 (not (= lambda!26002 lambda!25993))))

(declare-fun bs!232881 () Bool)

(assert (= bs!232881 (and d!272025 d!272017)))

(assert (=> bs!232881 (= lambda!26002 lambda!26001)))

(declare-fun b!866327 () Bool)

(declare-fun e!570056 () Bool)

(assert (=> b!866327 (= e!570056 true)))

(declare-fun b!866326 () Bool)

(declare-fun e!570055 () Bool)

(assert (=> b!866326 (= e!570055 e!570056)))

(declare-fun b!866325 () Bool)

(declare-fun e!570054 () Bool)

(assert (=> b!866325 (= e!570054 e!570055)))

(assert (=> d!272025 e!570054))

(assert (= b!866326 b!866327))

(assert (= b!866325 b!866326))

(assert (= (and d!272025 (is-Cons!9360 rules!2621)) b!866325))

(assert (=> b!866327 (< (dynLambda!4446 order!6113 (toValue!2826 (transformation!1757 (h!14761 rules!2621)))) (dynLambda!4447 order!6115 lambda!26002))))

(assert (=> b!866327 (< (dynLambda!4448 order!6117 (toChars!2685 (transformation!1757 (h!14761 rules!2621)))) (dynLambda!4447 order!6115 lambda!26002))))

(assert (=> d!272025 true))

(declare-fun lt!326822 () Bool)

(assert (=> d!272025 (= lt!326822 (forall!2224 lt!326770 lambda!26002))))

(declare-fun e!570052 () Bool)

(assert (=> d!272025 (= lt!326822 e!570052)))

(declare-fun res!394553 () Bool)

(assert (=> d!272025 (=> res!394553 e!570052)))

(assert (=> d!272025 (= res!394553 (not (is-Cons!9361 lt!326770)))))

(assert (=> d!272025 (not (isEmpty!5558 rules!2621))))

(assert (=> d!272025 (= (rulesProduceEachTokenIndividuallyList!447 thiss!20117 rules!2621 lt!326770) lt!326822)))

(declare-fun b!866323 () Bool)

(declare-fun e!570053 () Bool)

(assert (=> b!866323 (= e!570052 e!570053)))

(declare-fun res!394552 () Bool)

(assert (=> b!866323 (=> (not res!394552) (not e!570053))))

(assert (=> b!866323 (= res!394552 (rulesProduceIndividualToken!623 thiss!20117 rules!2621 (h!14762 lt!326770)))))

(declare-fun b!866324 () Bool)

(assert (=> b!866324 (= e!570053 (rulesProduceEachTokenIndividuallyList!447 thiss!20117 rules!2621 (t!98781 lt!326770)))))

(assert (= (and d!272025 (not res!394553)) b!866323))

(assert (= (and b!866323 res!394552) b!866324))

(declare-fun m!1113217 () Bool)

(assert (=> d!272025 m!1113217))

(assert (=> d!272025 m!1113055))

(declare-fun m!1113219 () Bool)

(assert (=> b!866323 m!1113219))

(declare-fun m!1113221 () Bool)

(assert (=> b!866324 m!1113221))

(assert (=> b!866175 d!272025))

(declare-fun d!272027 () Bool)

(declare-fun prefixMatchZipperSequence!48 (Regex!2190 BalanceConc!6222) Bool)

(declare-fun rulesRegex!33 (LexerInterface!1559 List!9376) Regex!2190)

(declare-fun ++!2424 (BalanceConc!6222 BalanceConc!6222) BalanceConc!6222)

(declare-fun singletonSeq!576 (C!4950) BalanceConc!6222)

(declare-fun apply!1968 (BalanceConc!6222 Int) C!4950)

(assert (=> d!272027 (= (separableTokensPredicate!77 thiss!20117 (h!14762 lt!326773) (h!14762 (t!98781 lt!326773)) rules!2621) (not (prefixMatchZipperSequence!48 (rulesRegex!33 thiss!20117 rules!2621) (++!2424 (charsOf!1016 (h!14762 lt!326773)) (singletonSeq!576 (apply!1968 (charsOf!1016 (h!14762 (t!98781 lt!326773))) 0))))))))

(declare-fun bs!232883 () Bool)

(assert (= bs!232883 d!272027))

(declare-fun m!1113223 () Bool)

(assert (=> bs!232883 m!1113223))

(declare-fun m!1113225 () Bool)

(assert (=> bs!232883 m!1113225))

(declare-fun m!1113227 () Bool)

(assert (=> bs!232883 m!1113227))

(declare-fun m!1113229 () Bool)

(assert (=> bs!232883 m!1113229))

(assert (=> bs!232883 m!1113227))

(declare-fun m!1113231 () Bool)

(assert (=> bs!232883 m!1113231))

(assert (=> bs!232883 m!1113223))

(assert (=> bs!232883 m!1113229))

(declare-fun m!1113235 () Bool)

(assert (=> bs!232883 m!1113235))

(declare-fun m!1113237 () Bool)

(assert (=> bs!232883 m!1113237))

(assert (=> bs!232883 m!1113235))

(assert (=> bs!232883 m!1113237))

(assert (=> bs!232883 m!1113225))

(assert (=> b!866175 d!272027))

(declare-fun d!272029 () Bool)

(assert (=> d!272029 (separableTokensPredicate!77 thiss!20117 (h!14762 lt!326773) (h!14762 (t!98781 lt!326773)) rules!2621)))

(declare-fun lt!326830 () Unit!13880)

(declare-fun choose!5092 (LexerInterface!1559 Token!3180 Token!3180 List!9376) Unit!13880)

(assert (=> d!272029 (= lt!326830 (choose!5092 thiss!20117 (h!14762 lt!326773) (h!14762 (t!98781 lt!326773)) rules!2621))))

(assert (=> d!272029 (not (isEmpty!5558 rules!2621))))

(assert (=> d!272029 (= (lemmaTokensOfDifferentKindsAreSeparable!55 thiss!20117 (h!14762 lt!326773) (h!14762 (t!98781 lt!326773)) rules!2621) lt!326830)))

(declare-fun bs!232884 () Bool)

(assert (= bs!232884 d!272029))

(assert (=> bs!232884 m!1113075))

(declare-fun m!1113285 () Bool)

(assert (=> bs!232884 m!1113285))

(assert (=> bs!232884 m!1113055))

(assert (=> b!866175 d!272029))

(declare-fun d!272047 () Bool)

(declare-fun res!394576 () Bool)

(declare-fun e!570098 () Bool)

(assert (=> d!272047 (=> (not res!394576) (not e!570098))))

(assert (=> d!272047 (= res!394576 (not (isEmpty!5560 (originalCharacters!2313 separatorToken!297))))))

(assert (=> d!272047 (= (inv!11896 separatorToken!297) e!570098)))

(declare-fun b!866389 () Bool)

(declare-fun res!394577 () Bool)

(assert (=> b!866389 (=> (not res!394577) (not e!570098))))

(assert (=> b!866389 (= res!394577 (= (originalCharacters!2313 separatorToken!297) (list!3695 (dynLambda!4445 (toChars!2685 (transformation!1757 (rule!3180 separatorToken!297))) (value!56775 separatorToken!297)))))))

(declare-fun b!866390 () Bool)

(assert (=> b!866390 (= e!570098 (= (size!7800 separatorToken!297) (size!7802 (originalCharacters!2313 separatorToken!297))))))

(assert (= (and d!272047 res!394576) b!866389))

(assert (= (and b!866389 res!394577) b!866390))

(declare-fun b_lambda!29471 () Bool)

(assert (=> (not b_lambda!29471) (not b!866389)))

(declare-fun t!98809 () Bool)

(declare-fun tb!62631 () Bool)

(assert (=> (and b!866168 (= (toChars!2685 (transformation!1757 (rule!3180 separatorToken!297))) (toChars!2685 (transformation!1757 (rule!3180 separatorToken!297)))) t!98809) tb!62631))

(declare-fun b!866391 () Bool)

(declare-fun e!570099 () Bool)

(declare-fun tp!273974 () Bool)

(assert (=> b!866391 (= e!570099 (and (inv!11899 (c!140134 (dynLambda!4445 (toChars!2685 (transformation!1757 (rule!3180 separatorToken!297))) (value!56775 separatorToken!297)))) tp!273974))))

(declare-fun result!72408 () Bool)

(assert (=> tb!62631 (= result!72408 (and (inv!11900 (dynLambda!4445 (toChars!2685 (transformation!1757 (rule!3180 separatorToken!297))) (value!56775 separatorToken!297))) e!570099))))

(assert (= tb!62631 b!866391))

(declare-fun m!1113287 () Bool)

(assert (=> b!866391 m!1113287))

(declare-fun m!1113289 () Bool)

(assert (=> tb!62631 m!1113289))

(assert (=> b!866389 t!98809))

(declare-fun b_and!77691 () Bool)

(assert (= b_and!77673 (and (=> t!98809 result!72408) b_and!77691)))

(declare-fun tb!62633 () Bool)

(declare-fun t!98811 () Bool)

(assert (=> (and b!866162 (= (toChars!2685 (transformation!1757 (h!14761 rules!2621))) (toChars!2685 (transformation!1757 (rule!3180 separatorToken!297)))) t!98811) tb!62633))

(declare-fun result!72410 () Bool)

(assert (= result!72410 result!72408))

(assert (=> b!866389 t!98811))

(declare-fun b_and!77693 () Bool)

(assert (= b_and!77675 (and (=> t!98811 result!72410) b_and!77693)))

(declare-fun t!98813 () Bool)

(declare-fun tb!62635 () Bool)

(assert (=> (and b!866160 (= (toChars!2685 (transformation!1757 (rule!3180 (h!14762 l!5107)))) (toChars!2685 (transformation!1757 (rule!3180 separatorToken!297)))) t!98813) tb!62635))

(declare-fun result!72412 () Bool)

(assert (= result!72412 result!72408))

(assert (=> b!866389 t!98813))

(declare-fun b_and!77695 () Bool)

(assert (= b_and!77677 (and (=> t!98813 result!72412) b_and!77695)))

(declare-fun m!1113291 () Bool)

(assert (=> d!272047 m!1113291))

(declare-fun m!1113293 () Bool)

(assert (=> b!866389 m!1113293))

(assert (=> b!866389 m!1113293))

(declare-fun m!1113295 () Bool)

(assert (=> b!866389 m!1113295))

(declare-fun m!1113297 () Bool)

(assert (=> b!866390 m!1113297))

(assert (=> start!78152 d!272047))

(declare-fun d!272053 () Bool)

(assert (=> d!272053 (= (isEmpty!5558 rules!2621) (is-Nil!9360 rules!2621))))

(assert (=> b!866165 d!272053))

(declare-fun d!272055 () Bool)

(declare-fun res!394584 () Bool)

(declare-fun e!570106 () Bool)

(assert (=> d!272055 (=> res!394584 e!570106)))

(assert (=> d!272055 (= res!394584 (is-Nil!9361 l!5107))))

(assert (=> d!272055 (= (forall!2224 l!5107 lambda!25993) e!570106)))

(declare-fun b!866398 () Bool)

(declare-fun e!570107 () Bool)

(assert (=> b!866398 (= e!570106 e!570107)))

(declare-fun res!394585 () Bool)

(assert (=> b!866398 (=> (not res!394585) (not e!570107))))

(declare-fun dynLambda!4449 (Int Token!3180) Bool)

(assert (=> b!866398 (= res!394585 (dynLambda!4449 lambda!25993 (h!14762 l!5107)))))

(declare-fun b!866399 () Bool)

(assert (=> b!866399 (= e!570107 (forall!2224 (t!98781 l!5107) lambda!25993))))

(assert (= (and d!272055 (not res!394584)) b!866398))

(assert (= (and b!866398 res!394585) b!866399))

(declare-fun b_lambda!29473 () Bool)

(assert (=> (not b_lambda!29473) (not b!866398)))

(declare-fun m!1113303 () Bool)

(assert (=> b!866398 m!1113303))

(declare-fun m!1113305 () Bool)

(assert (=> b!866399 m!1113305))

(assert (=> b!866174 d!272055))

(declare-fun d!272059 () Bool)

(declare-fun res!394593 () Bool)

(declare-fun e!570115 () Bool)

(assert (=> d!272059 (=> (not res!394593) (not e!570115))))

(declare-fun rulesValid!628 (LexerInterface!1559 List!9376) Bool)

(assert (=> d!272059 (= res!394593 (rulesValid!628 thiss!20117 rules!2621))))

(assert (=> d!272059 (= (rulesInvariant!1435 thiss!20117 rules!2621) e!570115)))

(declare-fun b!866407 () Bool)

(declare-datatypes ((List!9382 0))(
  ( (Nil!9366) (Cons!9366 (h!14767 String!11015) (t!98823 List!9382)) )
))
(declare-fun noDuplicateTag!628 (LexerInterface!1559 List!9376 List!9382) Bool)

(assert (=> b!866407 (= e!570115 (noDuplicateTag!628 thiss!20117 rules!2621 Nil!9366))))

(assert (= (and d!272059 res!394593) b!866407))

(declare-fun m!1113307 () Bool)

(assert (=> d!272059 m!1113307))

(declare-fun m!1113309 () Bool)

(assert (=> b!866407 m!1113309))

(assert (=> b!866163 d!272059))

(declare-fun d!272061 () Bool)

(declare-fun res!394603 () Bool)

(declare-fun e!570128 () Bool)

(assert (=> d!272061 (=> res!394603 e!570128)))

(assert (=> d!272061 (= res!394603 (not (is-Cons!9360 rules!2621)))))

(assert (=> d!272061 (= (sepAndNonSepRulesDisjointChars!557 rules!2621 rules!2621) e!570128)))

(declare-fun b!866420 () Bool)

(declare-fun e!570129 () Bool)

(assert (=> b!866420 (= e!570128 e!570129)))

(declare-fun res!394604 () Bool)

(assert (=> b!866420 (=> (not res!394604) (not e!570129))))

(declare-fun ruleDisjointCharsFromAllFromOtherType!264 (Rule!3314 List!9376) Bool)

(assert (=> b!866420 (= res!394604 (ruleDisjointCharsFromAllFromOtherType!264 (h!14761 rules!2621) rules!2621))))

(declare-fun b!866421 () Bool)

(assert (=> b!866421 (= e!570129 (sepAndNonSepRulesDisjointChars!557 rules!2621 (t!98780 rules!2621)))))

(assert (= (and d!272061 (not res!394603)) b!866420))

(assert (= (and b!866420 res!394604) b!866421))

(declare-fun m!1113325 () Bool)

(assert (=> b!866420 m!1113325))

(declare-fun m!1113327 () Bool)

(assert (=> b!866421 m!1113327))

(assert (=> b!866152 d!272061))

(declare-fun b!866432 () Bool)

(declare-fun e!570138 () Bool)

(declare-fun inv!15 (TokenValue!1823) Bool)

(assert (=> b!866432 (= e!570138 (inv!15 (value!56775 (h!14762 l!5107))))))

(declare-fun d!272071 () Bool)

(declare-fun c!140164 () Bool)

(assert (=> d!272071 (= c!140164 (is-IntegerValue!5469 (value!56775 (h!14762 l!5107))))))

(declare-fun e!570136 () Bool)

(assert (=> d!272071 (= (inv!21 (value!56775 (h!14762 l!5107))) e!570136)))

(declare-fun b!866433 () Bool)

(declare-fun e!570137 () Bool)

(declare-fun inv!17 (TokenValue!1823) Bool)

(assert (=> b!866433 (= e!570137 (inv!17 (value!56775 (h!14762 l!5107))))))

(declare-fun b!866434 () Bool)

(assert (=> b!866434 (= e!570136 e!570137)))

(declare-fun c!140165 () Bool)

(assert (=> b!866434 (= c!140165 (is-IntegerValue!5470 (value!56775 (h!14762 l!5107))))))

(declare-fun b!866435 () Bool)

(declare-fun res!394607 () Bool)

(assert (=> b!866435 (=> res!394607 e!570138)))

(assert (=> b!866435 (= res!394607 (not (is-IntegerValue!5471 (value!56775 (h!14762 l!5107)))))))

(assert (=> b!866435 (= e!570137 e!570138)))

(declare-fun b!866436 () Bool)

(declare-fun inv!16 (TokenValue!1823) Bool)

(assert (=> b!866436 (= e!570136 (inv!16 (value!56775 (h!14762 l!5107))))))

(assert (= (and d!272071 c!140164) b!866436))

(assert (= (and d!272071 (not c!140164)) b!866434))

(assert (= (and b!866434 c!140165) b!866433))

(assert (= (and b!866434 (not c!140165)) b!866435))

(assert (= (and b!866435 (not res!394607)) b!866432))

(declare-fun m!1113329 () Bool)

(assert (=> b!866432 m!1113329))

(declare-fun m!1113331 () Bool)

(assert (=> b!866433 m!1113331))

(declare-fun m!1113333 () Bool)

(assert (=> b!866436 m!1113333))

(assert (=> b!866173 d!272071))

(declare-fun d!272073 () Bool)

(assert (=> d!272073 (= (inv!11892 (tag!2019 (rule!3180 separatorToken!297))) (= (mod (str.len (value!56774 (tag!2019 (rule!3180 separatorToken!297)))) 2) 0))))

(assert (=> b!866171 d!272073))

(declare-fun d!272075 () Bool)

(declare-fun res!394608 () Bool)

(declare-fun e!570139 () Bool)

(assert (=> d!272075 (=> (not res!394608) (not e!570139))))

(assert (=> d!272075 (= res!394608 (semiInverseModEq!697 (toChars!2685 (transformation!1757 (rule!3180 separatorToken!297))) (toValue!2826 (transformation!1757 (rule!3180 separatorToken!297)))))))

(assert (=> d!272075 (= (inv!11895 (transformation!1757 (rule!3180 separatorToken!297))) e!570139)))

(declare-fun b!866437 () Bool)

(assert (=> b!866437 (= e!570139 (equivClasses!664 (toChars!2685 (transformation!1757 (rule!3180 separatorToken!297))) (toValue!2826 (transformation!1757 (rule!3180 separatorToken!297)))))))

(assert (= (and d!272075 res!394608) b!866437))

(declare-fun m!1113335 () Bool)

(assert (=> d!272075 m!1113335))

(declare-fun m!1113337 () Bool)

(assert (=> b!866437 m!1113337))

(assert (=> b!866171 d!272075))

(declare-fun d!272077 () Bool)

(declare-fun lt!326860 () Bool)

(declare-fun e!570163 () Bool)

(assert (=> d!272077 (= lt!326860 e!570163)))

(declare-fun res!394627 () Bool)

(assert (=> d!272077 (=> (not res!394627) (not e!570163))))

(declare-datatypes ((IArray!6217 0))(
  ( (IArray!6218 (innerList!3166 List!9377)) )
))
(declare-datatypes ((Conc!3106 0))(
  ( (Node!3106 (left!6934 Conc!3106) (right!7264 Conc!3106) (csize!6442 Int) (cheight!3317 Int)) (Leaf!4573 (xs!5795 IArray!6217) (csize!6443 Int)) (Empty!3106) )
))
(declare-datatypes ((BalanceConc!6226 0))(
  ( (BalanceConc!6227 (c!140185 Conc!3106)) )
))
(declare-fun list!3696 (BalanceConc!6226) List!9377)

(declare-datatypes ((tuple2!10474 0))(
  ( (tuple2!10475 (_1!6063 BalanceConc!6226) (_2!6063 BalanceConc!6222)) )
))
(declare-fun lex!645 (LexerInterface!1559 List!9376 BalanceConc!6222) tuple2!10474)

(declare-fun print!582 (LexerInterface!1559 BalanceConc!6226) BalanceConc!6222)

(declare-fun singletonSeq!577 (Token!3180) BalanceConc!6226)

(assert (=> d!272077 (= res!394627 (= (list!3696 (_1!6063 (lex!645 thiss!20117 rules!2621 (print!582 thiss!20117 (singletonSeq!577 separatorToken!297))))) (list!3696 (singletonSeq!577 separatorToken!297))))))

(declare-fun e!570162 () Bool)

(assert (=> d!272077 (= lt!326860 e!570162)))

(declare-fun res!394628 () Bool)

(assert (=> d!272077 (=> (not res!394628) (not e!570162))))

(declare-fun lt!326861 () tuple2!10474)

(declare-fun size!7803 (BalanceConc!6226) Int)

(assert (=> d!272077 (= res!394628 (= (size!7803 (_1!6063 lt!326861)) 1))))

(assert (=> d!272077 (= lt!326861 (lex!645 thiss!20117 rules!2621 (print!582 thiss!20117 (singletonSeq!577 separatorToken!297))))))

(assert (=> d!272077 (not (isEmpty!5558 rules!2621))))

(assert (=> d!272077 (= (rulesProduceIndividualToken!623 thiss!20117 rules!2621 separatorToken!297) lt!326860)))

(declare-fun b!866474 () Bool)

(declare-fun res!394629 () Bool)

(assert (=> b!866474 (=> (not res!394629) (not e!570162))))

(declare-fun apply!1969 (BalanceConc!6226 Int) Token!3180)

(assert (=> b!866474 (= res!394629 (= (apply!1969 (_1!6063 lt!326861) 0) separatorToken!297))))

(declare-fun b!866475 () Bool)

(declare-fun isEmpty!5561 (BalanceConc!6222) Bool)

(assert (=> b!866475 (= e!570162 (isEmpty!5561 (_2!6063 lt!326861)))))

(declare-fun b!866476 () Bool)

(assert (=> b!866476 (= e!570163 (isEmpty!5561 (_2!6063 (lex!645 thiss!20117 rules!2621 (print!582 thiss!20117 (singletonSeq!577 separatorToken!297))))))))

(assert (= (and d!272077 res!394628) b!866474))

(assert (= (and b!866474 res!394629) b!866475))

(assert (= (and d!272077 res!394627) b!866476))

(declare-fun m!1113389 () Bool)

(assert (=> d!272077 m!1113389))

(declare-fun m!1113391 () Bool)

(assert (=> d!272077 m!1113391))

(declare-fun m!1113393 () Bool)

(assert (=> d!272077 m!1113393))

(declare-fun m!1113395 () Bool)

(assert (=> d!272077 m!1113395))

(assert (=> d!272077 m!1113389))

(assert (=> d!272077 m!1113393))

(assert (=> d!272077 m!1113055))

(declare-fun m!1113397 () Bool)

(assert (=> d!272077 m!1113397))

(assert (=> d!272077 m!1113389))

(declare-fun m!1113399 () Bool)

(assert (=> d!272077 m!1113399))

(declare-fun m!1113401 () Bool)

(assert (=> b!866474 m!1113401))

(declare-fun m!1113403 () Bool)

(assert (=> b!866475 m!1113403))

(assert (=> b!866476 m!1113389))

(assert (=> b!866476 m!1113389))

(assert (=> b!866476 m!1113393))

(assert (=> b!866476 m!1113393))

(assert (=> b!866476 m!1113395))

(declare-fun m!1113405 () Bool)

(assert (=> b!866476 m!1113405))

(assert (=> b!866172 d!272077))

(declare-fun d!272081 () Bool)

(declare-fun res!394630 () Bool)

(declare-fun e!570164 () Bool)

(assert (=> d!272081 (=> res!394630 e!570164)))

(assert (=> d!272081 (= res!394630 (is-Nil!9361 lt!326770))))

(assert (=> d!272081 (= (forall!2224 lt!326770 lambda!25993) e!570164)))

(declare-fun b!866477 () Bool)

(declare-fun e!570165 () Bool)

(assert (=> b!866477 (= e!570164 e!570165)))

(declare-fun res!394631 () Bool)

(assert (=> b!866477 (=> (not res!394631) (not e!570165))))

(assert (=> b!866477 (= res!394631 (dynLambda!4449 lambda!25993 (h!14762 lt!326770)))))

(declare-fun b!866478 () Bool)

(assert (=> b!866478 (= e!570165 (forall!2224 (t!98781 lt!326770) lambda!25993))))

(assert (= (and d!272081 (not res!394630)) b!866477))

(assert (= (and b!866477 res!394631) b!866478))

(declare-fun b_lambda!29475 () Bool)

(assert (=> (not b_lambda!29475) (not b!866477)))

(declare-fun m!1113407 () Bool)

(assert (=> b!866477 m!1113407))

(declare-fun m!1113409 () Bool)

(assert (=> b!866478 m!1113409))

(assert (=> b!866161 d!272081))

(declare-fun d!272083 () Bool)

(assert (=> d!272083 (= (head!1503 l!5107) (h!14762 l!5107))))

(assert (=> b!866170 d!272083))

(declare-fun b!866479 () Bool)

(declare-fun e!570168 () Bool)

(assert (=> b!866479 (= e!570168 (inv!15 (value!56775 separatorToken!297)))))

(declare-fun d!272085 () Bool)

(declare-fun c!140175 () Bool)

(assert (=> d!272085 (= c!140175 (is-IntegerValue!5469 (value!56775 separatorToken!297)))))

(declare-fun e!570166 () Bool)

(assert (=> d!272085 (= (inv!21 (value!56775 separatorToken!297)) e!570166)))

(declare-fun b!866480 () Bool)

(declare-fun e!570167 () Bool)

(assert (=> b!866480 (= e!570167 (inv!17 (value!56775 separatorToken!297)))))

(declare-fun b!866481 () Bool)

(assert (=> b!866481 (= e!570166 e!570167)))

(declare-fun c!140176 () Bool)

(assert (=> b!866481 (= c!140176 (is-IntegerValue!5470 (value!56775 separatorToken!297)))))

(declare-fun b!866482 () Bool)

(declare-fun res!394632 () Bool)

(assert (=> b!866482 (=> res!394632 e!570168)))

(assert (=> b!866482 (= res!394632 (not (is-IntegerValue!5471 (value!56775 separatorToken!297))))))

(assert (=> b!866482 (= e!570167 e!570168)))

(declare-fun b!866483 () Bool)

(assert (=> b!866483 (= e!570166 (inv!16 (value!56775 separatorToken!297)))))

(assert (= (and d!272085 c!140175) b!866483))

(assert (= (and d!272085 (not c!140175)) b!866481))

(assert (= (and b!866481 c!140176) b!866480))

(assert (= (and b!866481 (not c!140176)) b!866482))

(assert (= (and b!866482 (not res!394632)) b!866479))

(declare-fun m!1113411 () Bool)

(assert (=> b!866479 m!1113411))

(declare-fun m!1113413 () Bool)

(assert (=> b!866480 m!1113413))

(declare-fun m!1113415 () Bool)

(assert (=> b!866483 m!1113415))

(assert (=> b!866159 d!272085))

(declare-fun b!866484 () Bool)

(declare-fun e!570171 () List!9375)

(assert (=> b!866484 (= e!570171 Nil!9359)))

(declare-fun b!866485 () Bool)

(declare-fun e!570169 () List!9375)

(declare-fun lt!326862 () List!9377)

(assert (=> b!866485 (= e!570169 (++!2423 (list!3695 (charsOf!1016 (h!14762 lt!326862))) (printList!499 thiss!20117 (t!98781 lt!326862))))))

(declare-fun b!866486 () Bool)

(declare-fun e!570173 () Bool)

(declare-fun e!570174 () Bool)

(assert (=> b!866486 (= e!570173 e!570174)))

(declare-fun res!394633 () Bool)

(assert (=> b!866486 (=> res!394633 e!570174)))

(assert (=> b!866486 (= res!394633 (not (is-Cons!9361 lt!326770)))))

(declare-fun b!866487 () Bool)

(declare-fun e!570172 () List!9377)

(assert (=> b!866487 (= e!570172 Nil!9361)))

(declare-fun b!866488 () Bool)

(assert (=> b!866488 (= e!570169 Nil!9359)))

(declare-fun b!866489 () Bool)

(assert (=> b!866489 (= e!570174 (= (printList!499 thiss!20117 ($colon$colon!112 (withSeparatorTokenList!87 thiss!20117 (t!98781 lt!326770) separatorToken!297) separatorToken!297)) e!570169))))

(declare-fun c!140178 () Bool)

(assert (=> b!866489 (= c!140178 (is-Cons!9361 lt!326862))))

(assert (=> b!866489 (= lt!326862 ($colon$colon!112 (withSeparatorTokenList!87 thiss!20117 (t!98781 lt!326770) separatorToken!297) separatorToken!297))))

(declare-fun b!866490 () Bool)

(declare-fun lt!326864 () List!9377)

(assert (=> b!866490 (= e!570171 (++!2423 (list!3695 (charsOf!1016 (h!14762 lt!326864))) (printList!499 thiss!20117 (t!98781 lt!326864))))))

(declare-fun b!866492 () Bool)

(declare-fun res!394636 () Bool)

(assert (=> b!866492 (=> (not res!394636) (not e!570173))))

(declare-fun e!570170 () Bool)

(assert (=> b!866492 (= res!394636 e!570170)))

(declare-fun res!394635 () Bool)

(assert (=> b!866492 (=> res!394635 e!570170)))

(assert (=> b!866492 (= res!394635 (not (is-Cons!9361 lt!326770)))))

(declare-fun b!866493 () Bool)

(assert (=> b!866493 (= e!570172 ($colon$colon!112 ($colon$colon!112 (withSeparatorTokenList!87 thiss!20117 (t!98781 lt!326770) separatorToken!297) separatorToken!297) (h!14762 lt!326770)))))

(declare-fun lt!326866 () List!9375)

(assert (=> b!866493 (= lt!326866 (list!3695 (charsOf!1016 (h!14762 lt!326770))))))

(declare-fun lt!326869 () List!9375)

(assert (=> b!866493 (= lt!326869 (list!3695 (charsOf!1016 separatorToken!297)))))

(declare-fun lt!326865 () List!9375)

(assert (=> b!866493 (= lt!326865 (printList!499 thiss!20117 (withSeparatorTokenList!87 thiss!20117 (t!98781 lt!326770) separatorToken!297)))))

(declare-fun lt!326867 () Unit!13880)

(assert (=> b!866493 (= lt!326867 (lemmaConcatAssociativity!776 lt!326866 lt!326869 lt!326865))))

(assert (=> b!866493 (= (++!2423 (++!2423 lt!326866 lt!326869) lt!326865) (++!2423 lt!326866 (++!2423 lt!326869 lt!326865)))))

(declare-fun lt!326863 () Unit!13880)

(assert (=> b!866493 (= lt!326863 lt!326867)))

(declare-fun lt!326868 () List!9377)

(declare-fun d!272087 () Bool)

(assert (=> d!272087 (= (printList!499 thiss!20117 lt!326868) (printWithSeparatorTokenList!57 thiss!20117 lt!326770 separatorToken!297))))

(assert (=> d!272087 (= lt!326868 e!570172)))

(declare-fun c!140177 () Bool)

(assert (=> d!272087 (= c!140177 (is-Cons!9361 lt!326770))))

(assert (=> d!272087 e!570173))

(declare-fun res!394634 () Bool)

(assert (=> d!272087 (=> (not res!394634) (not e!570173))))

(assert (=> d!272087 (= res!394634 (isSeparator!1757 (rule!3180 separatorToken!297)))))

(assert (=> d!272087 (= (withSeparatorTokenList!87 thiss!20117 lt!326770 separatorToken!297) lt!326868)))

(declare-fun b!866491 () Bool)

(assert (=> b!866491 (= e!570170 (= (printList!499 thiss!20117 ($colon$colon!112 ($colon$colon!112 (withSeparatorTokenList!87 thiss!20117 (t!98781 lt!326770) separatorToken!297) separatorToken!297) (h!14762 lt!326770))) e!570171))))

(declare-fun c!140179 () Bool)

(assert (=> b!866491 (= c!140179 (is-Cons!9361 lt!326864))))

(assert (=> b!866491 (= lt!326864 ($colon$colon!112 ($colon$colon!112 (withSeparatorTokenList!87 thiss!20117 (t!98781 lt!326770) separatorToken!297) separatorToken!297) (h!14762 lt!326770)))))

(assert (= (and d!272087 res!394634) b!866492))

(assert (= (and b!866492 (not res!394635)) b!866491))

(assert (= (and b!866491 c!140179) b!866490))

(assert (= (and b!866491 (not c!140179)) b!866484))

(assert (= (and b!866492 res!394636) b!866486))

(assert (= (and b!866486 (not res!394633)) b!866489))

(assert (= (and b!866489 c!140178) b!866485))

(assert (= (and b!866489 (not c!140178)) b!866488))

(assert (= (and d!272087 c!140177) b!866493))

(assert (= (and d!272087 (not c!140177)) b!866487))

(declare-fun m!1113417 () Bool)

(assert (=> b!866491 m!1113417))

(assert (=> b!866491 m!1113417))

(declare-fun m!1113419 () Bool)

(assert (=> b!866491 m!1113419))

(assert (=> b!866491 m!1113419))

(declare-fun m!1113421 () Bool)

(assert (=> b!866491 m!1113421))

(assert (=> b!866491 m!1113421))

(declare-fun m!1113423 () Bool)

(assert (=> b!866491 m!1113423))

(assert (=> b!866489 m!1113417))

(assert (=> b!866489 m!1113417))

(assert (=> b!866489 m!1113419))

(assert (=> b!866489 m!1113419))

(declare-fun m!1113425 () Bool)

(assert (=> b!866489 m!1113425))

(declare-fun m!1113427 () Bool)

(assert (=> b!866490 m!1113427))

(assert (=> b!866490 m!1113427))

(declare-fun m!1113429 () Bool)

(assert (=> b!866490 m!1113429))

(declare-fun m!1113431 () Bool)

(assert (=> b!866490 m!1113431))

(assert (=> b!866490 m!1113429))

(assert (=> b!866490 m!1113431))

(declare-fun m!1113433 () Bool)

(assert (=> b!866490 m!1113433))

(declare-fun m!1113435 () Bool)

(assert (=> d!272087 m!1113435))

(declare-fun m!1113437 () Bool)

(assert (=> d!272087 m!1113437))

(declare-fun m!1113439 () Bool)

(assert (=> b!866493 m!1113439))

(declare-fun m!1113441 () Bool)

(assert (=> b!866493 m!1113441))

(declare-fun m!1113443 () Bool)

(assert (=> b!866493 m!1113443))

(declare-fun m!1113445 () Bool)

(assert (=> b!866493 m!1113445))

(declare-fun m!1113447 () Bool)

(assert (=> b!866493 m!1113447))

(assert (=> b!866493 m!1113439))

(assert (=> b!866493 m!1113417))

(assert (=> b!866493 m!1113443))

(assert (=> b!866493 m!1113195))

(assert (=> b!866493 m!1113197))

(assert (=> b!866493 m!1113419))

(assert (=> b!866493 m!1113421))

(assert (=> b!866493 m!1113417))

(declare-fun m!1113449 () Bool)

(assert (=> b!866493 m!1113449))

(declare-fun m!1113451 () Bool)

(assert (=> b!866493 m!1113451))

(assert (=> b!866493 m!1113451))

(declare-fun m!1113453 () Bool)

(assert (=> b!866493 m!1113453))

(assert (=> b!866493 m!1113417))

(assert (=> b!866493 m!1113419))

(assert (=> b!866493 m!1113195))

(declare-fun m!1113455 () Bool)

(assert (=> b!866485 m!1113455))

(assert (=> b!866485 m!1113455))

(declare-fun m!1113457 () Bool)

(assert (=> b!866485 m!1113457))

(declare-fun m!1113459 () Bool)

(assert (=> b!866485 m!1113459))

(assert (=> b!866485 m!1113457))

(assert (=> b!866485 m!1113459))

(declare-fun m!1113461 () Bool)

(assert (=> b!866485 m!1113461))

(assert (=> b!866158 d!272087))

(declare-fun d!272089 () Bool)

(assert (=> d!272089 (= (tail!1065 l!5107) (t!98781 l!5107))))

(assert (=> b!866158 d!272089))

(declare-fun bs!232887 () Bool)

(declare-fun d!272091 () Bool)

(assert (= bs!232887 (and d!272091 b!866174)))

(declare-fun lambda!26007 () Int)

(assert (=> bs!232887 (not (= lambda!26007 lambda!25993))))

(declare-fun bs!232888 () Bool)

(assert (= bs!232888 (and d!272091 d!272017)))

(assert (=> bs!232888 (= lambda!26007 lambda!26001)))

(declare-fun bs!232889 () Bool)

(assert (= bs!232889 (and d!272091 d!272025)))

(assert (=> bs!232889 (= lambda!26007 lambda!26002)))

(declare-fun b!866498 () Bool)

(declare-fun e!570179 () Bool)

(assert (=> b!866498 (= e!570179 true)))

(declare-fun b!866497 () Bool)

(declare-fun e!570178 () Bool)

(assert (=> b!866497 (= e!570178 e!570179)))

(declare-fun b!866496 () Bool)

(declare-fun e!570177 () Bool)

(assert (=> b!866496 (= e!570177 e!570178)))

(assert (=> d!272091 e!570177))

(assert (= b!866497 b!866498))

(assert (= b!866496 b!866497))

(assert (= (and d!272091 (is-Cons!9360 rules!2621)) b!866496))

(assert (=> b!866498 (< (dynLambda!4446 order!6113 (toValue!2826 (transformation!1757 (h!14761 rules!2621)))) (dynLambda!4447 order!6115 lambda!26007))))

(assert (=> b!866498 (< (dynLambda!4448 order!6117 (toChars!2685 (transformation!1757 (h!14761 rules!2621)))) (dynLambda!4447 order!6115 lambda!26007))))

(assert (=> d!272091 true))

(declare-fun lt!326870 () Bool)

(assert (=> d!272091 (= lt!326870 (forall!2224 l!5107 lambda!26007))))

(declare-fun e!570175 () Bool)

(assert (=> d!272091 (= lt!326870 e!570175)))

(declare-fun res!394638 () Bool)

(assert (=> d!272091 (=> res!394638 e!570175)))

(assert (=> d!272091 (= res!394638 (not (is-Cons!9361 l!5107)))))

(assert (=> d!272091 (not (isEmpty!5558 rules!2621))))

(assert (=> d!272091 (= (rulesProduceEachTokenIndividuallyList!447 thiss!20117 rules!2621 l!5107) lt!326870)))

(declare-fun b!866494 () Bool)

(declare-fun e!570176 () Bool)

(assert (=> b!866494 (= e!570175 e!570176)))

(declare-fun res!394637 () Bool)

(assert (=> b!866494 (=> (not res!394637) (not e!570176))))

(assert (=> b!866494 (= res!394637 (rulesProduceIndividualToken!623 thiss!20117 rules!2621 (h!14762 l!5107)))))

(declare-fun b!866495 () Bool)

(assert (=> b!866495 (= e!570176 (rulesProduceEachTokenIndividuallyList!447 thiss!20117 rules!2621 (t!98781 l!5107)))))

(assert (= (and d!272091 (not res!394638)) b!866494))

(assert (= (and b!866494 res!394637) b!866495))

(declare-fun m!1113463 () Bool)

(assert (=> d!272091 m!1113463))

(assert (=> d!272091 m!1113055))

(declare-fun m!1113465 () Bool)

(assert (=> b!866494 m!1113465))

(declare-fun m!1113467 () Bool)

(assert (=> b!866495 m!1113467))

(assert (=> b!866169 d!272091))

(declare-fun d!272093 () Bool)

(assert (=> d!272093 (= (inv!11892 (tag!2019 (h!14761 rules!2621))) (= (mod (str.len (value!56774 (tag!2019 (h!14761 rules!2621)))) 2) 0))))

(assert (=> b!866167 d!272093))

(declare-fun d!272095 () Bool)

(declare-fun res!394639 () Bool)

(declare-fun e!570180 () Bool)

(assert (=> d!272095 (=> (not res!394639) (not e!570180))))

(assert (=> d!272095 (= res!394639 (semiInverseModEq!697 (toChars!2685 (transformation!1757 (h!14761 rules!2621))) (toValue!2826 (transformation!1757 (h!14761 rules!2621)))))))

(assert (=> d!272095 (= (inv!11895 (transformation!1757 (h!14761 rules!2621))) e!570180)))

(declare-fun b!866499 () Bool)

(assert (=> b!866499 (= e!570180 (equivClasses!664 (toChars!2685 (transformation!1757 (h!14761 rules!2621))) (toValue!2826 (transformation!1757 (h!14761 rules!2621)))))))

(assert (= (and d!272095 res!394639) b!866499))

(declare-fun m!1113469 () Bool)

(assert (=> d!272095 m!1113469))

(declare-fun m!1113471 () Bool)

(assert (=> b!866499 m!1113471))

(assert (=> b!866167 d!272095))

(declare-fun b!866512 () Bool)

(declare-fun e!570183 () Bool)

(declare-fun tp!273985 () Bool)

(assert (=> b!866512 (= e!570183 tp!273985)))

(declare-fun b!866513 () Bool)

(declare-fun tp!273989 () Bool)

(declare-fun tp!273988 () Bool)

(assert (=> b!866513 (= e!570183 (and tp!273989 tp!273988))))

(declare-fun b!866510 () Bool)

(declare-fun tp_is_empty!4027 () Bool)

(assert (=> b!866510 (= e!570183 tp_is_empty!4027)))

(assert (=> b!866155 (= tp!273927 e!570183)))

(declare-fun b!866511 () Bool)

(declare-fun tp!273986 () Bool)

(declare-fun tp!273987 () Bool)

(assert (=> b!866511 (= e!570183 (and tp!273986 tp!273987))))

(assert (= (and b!866155 (is-ElementMatch!2190 (regex!1757 (rule!3180 (h!14762 l!5107))))) b!866510))

(assert (= (and b!866155 (is-Concat!4014 (regex!1757 (rule!3180 (h!14762 l!5107))))) b!866511))

(assert (= (and b!866155 (is-Star!2190 (regex!1757 (rule!3180 (h!14762 l!5107))))) b!866512))

(assert (= (and b!866155 (is-Union!2190 (regex!1757 (rule!3180 (h!14762 l!5107))))) b!866513))

(declare-fun b!866527 () Bool)

(declare-fun b_free!26517 () Bool)

(declare-fun b_next!26581 () Bool)

(assert (=> b!866527 (= b_free!26517 (not b_next!26581))))

(declare-fun tp!274002 () Bool)

(declare-fun b_and!77697 () Bool)

(assert (=> b!866527 (= tp!274002 b_and!77697)))

(declare-fun b_free!26519 () Bool)

(declare-fun b_next!26583 () Bool)

(assert (=> b!866527 (= b_free!26519 (not b_next!26583))))

(declare-fun t!98816 () Bool)

(declare-fun tb!62637 () Bool)

(assert (=> (and b!866527 (= (toChars!2685 (transformation!1757 (rule!3180 (h!14762 (t!98781 l!5107))))) (toChars!2685 (transformation!1757 (rule!3180 (h!14762 l!5107))))) t!98816) tb!62637))

(declare-fun result!72418 () Bool)

(assert (= result!72418 result!72386))

(assert (=> b!866263 t!98816))

(declare-fun t!98818 () Bool)

(declare-fun tb!62639 () Bool)

(assert (=> (and b!866527 (= (toChars!2685 (transformation!1757 (rule!3180 (h!14762 (t!98781 l!5107))))) (toChars!2685 (transformation!1757 (rule!3180 separatorToken!297)))) t!98818) tb!62639))

(declare-fun result!72420 () Bool)

(assert (= result!72420 result!72408))

(assert (=> b!866389 t!98818))

(declare-fun b_and!77699 () Bool)

(declare-fun tp!274000 () Bool)

(assert (=> b!866527 (= tp!274000 (and (=> t!98816 result!72418) (=> t!98818 result!72420) b_and!77699))))

(declare-fun e!570198 () Bool)

(assert (=> b!866527 (= e!570198 (and tp!274002 tp!274000))))

(declare-fun e!570196 () Bool)

(declare-fun tp!274003 () Bool)

(declare-fun b!866524 () Bool)

(declare-fun e!570197 () Bool)

(assert (=> b!866524 (= e!570196 (and (inv!11896 (h!14762 (t!98781 l!5107))) e!570197 tp!274003))))

(declare-fun b!866525 () Bool)

(declare-fun e!570200 () Bool)

(declare-fun tp!274001 () Bool)

(assert (=> b!866525 (= e!570197 (and (inv!21 (value!56775 (h!14762 (t!98781 l!5107)))) e!570200 tp!274001))))

(assert (=> b!866156 (= tp!273915 e!570196)))

(declare-fun b!866526 () Bool)

(declare-fun tp!274004 () Bool)

(assert (=> b!866526 (= e!570200 (and tp!274004 (inv!11892 (tag!2019 (rule!3180 (h!14762 (t!98781 l!5107))))) (inv!11895 (transformation!1757 (rule!3180 (h!14762 (t!98781 l!5107))))) e!570198))))

(assert (= b!866526 b!866527))

(assert (= b!866525 b!866526))

(assert (= b!866524 b!866525))

(assert (= (and b!866156 (is-Cons!9361 (t!98781 l!5107))) b!866524))

(declare-fun m!1113473 () Bool)

(assert (=> b!866524 m!1113473))

(declare-fun m!1113475 () Bool)

(assert (=> b!866525 m!1113475))

(declare-fun m!1113477 () Bool)

(assert (=> b!866526 m!1113477))

(declare-fun m!1113479 () Bool)

(assert (=> b!866526 m!1113479))

(declare-fun b!866532 () Bool)

(declare-fun e!570204 () Bool)

(declare-fun tp!274007 () Bool)

(assert (=> b!866532 (= e!570204 (and tp_is_empty!4027 tp!274007))))

(assert (=> b!866173 (= tp!273920 e!570204)))

(assert (= (and b!866173 (is-Cons!9359 (originalCharacters!2313 (h!14762 l!5107)))) b!866532))

(declare-fun b!866535 () Bool)

(declare-fun e!570205 () Bool)

(declare-fun tp!274008 () Bool)

(assert (=> b!866535 (= e!570205 tp!274008)))

(declare-fun b!866536 () Bool)

(declare-fun tp!274012 () Bool)

(declare-fun tp!274011 () Bool)

(assert (=> b!866536 (= e!570205 (and tp!274012 tp!274011))))

(declare-fun b!866533 () Bool)

(assert (=> b!866533 (= e!570205 tp_is_empty!4027)))

(assert (=> b!866171 (= tp!273917 e!570205)))

(declare-fun b!866534 () Bool)

(declare-fun tp!274009 () Bool)

(declare-fun tp!274010 () Bool)

(assert (=> b!866534 (= e!570205 (and tp!274009 tp!274010))))

(assert (= (and b!866171 (is-ElementMatch!2190 (regex!1757 (rule!3180 separatorToken!297)))) b!866533))

(assert (= (and b!866171 (is-Concat!4014 (regex!1757 (rule!3180 separatorToken!297)))) b!866534))

(assert (= (and b!866171 (is-Star!2190 (regex!1757 (rule!3180 separatorToken!297)))) b!866535))

(assert (= (and b!866171 (is-Union!2190 (regex!1757 (rule!3180 separatorToken!297)))) b!866536))

(declare-fun b!866537 () Bool)

(declare-fun e!570206 () Bool)

(declare-fun tp!274013 () Bool)

(assert (=> b!866537 (= e!570206 (and tp_is_empty!4027 tp!274013))))

(assert (=> b!866159 (= tp!273923 e!570206)))

(assert (= (and b!866159 (is-Cons!9359 (originalCharacters!2313 separatorToken!297))) b!866537))

(declare-fun b!866540 () Bool)

(declare-fun e!570207 () Bool)

(declare-fun tp!274014 () Bool)

(assert (=> b!866540 (= e!570207 tp!274014)))

(declare-fun b!866541 () Bool)

(declare-fun tp!274018 () Bool)

(declare-fun tp!274017 () Bool)

(assert (=> b!866541 (= e!570207 (and tp!274018 tp!274017))))

(declare-fun b!866538 () Bool)

(assert (=> b!866538 (= e!570207 tp_is_empty!4027)))

(assert (=> b!866167 (= tp!273916 e!570207)))

(declare-fun b!866539 () Bool)

(declare-fun tp!274015 () Bool)

(declare-fun tp!274016 () Bool)

(assert (=> b!866539 (= e!570207 (and tp!274015 tp!274016))))

(assert (= (and b!866167 (is-ElementMatch!2190 (regex!1757 (h!14761 rules!2621)))) b!866538))

(assert (= (and b!866167 (is-Concat!4014 (regex!1757 (h!14761 rules!2621)))) b!866539))

(assert (= (and b!866167 (is-Star!2190 (regex!1757 (h!14761 rules!2621)))) b!866540))

(assert (= (and b!866167 (is-Union!2190 (regex!1757 (h!14761 rules!2621)))) b!866541))

(declare-fun b!866552 () Bool)

(declare-fun b_free!26521 () Bool)

(declare-fun b_next!26585 () Bool)

(assert (=> b!866552 (= b_free!26521 (not b_next!26585))))

(declare-fun tp!274030 () Bool)

(declare-fun b_and!77701 () Bool)

(assert (=> b!866552 (= tp!274030 b_and!77701)))

(declare-fun b_free!26523 () Bool)

(declare-fun b_next!26587 () Bool)

(assert (=> b!866552 (= b_free!26523 (not b_next!26587))))

(declare-fun tb!62641 () Bool)

(declare-fun t!98820 () Bool)

(assert (=> (and b!866552 (= (toChars!2685 (transformation!1757 (h!14761 (t!98780 rules!2621)))) (toChars!2685 (transformation!1757 (rule!3180 (h!14762 l!5107))))) t!98820) tb!62641))

(declare-fun result!72426 () Bool)

(assert (= result!72426 result!72386))

(assert (=> b!866263 t!98820))

(declare-fun tb!62643 () Bool)

(declare-fun t!98822 () Bool)

(assert (=> (and b!866552 (= (toChars!2685 (transformation!1757 (h!14761 (t!98780 rules!2621)))) (toChars!2685 (transformation!1757 (rule!3180 separatorToken!297)))) t!98822) tb!62643))

(declare-fun result!72428 () Bool)

(assert (= result!72428 result!72408))

(assert (=> b!866389 t!98822))

(declare-fun b_and!77703 () Bool)

(declare-fun tp!274029 () Bool)

(assert (=> b!866552 (= tp!274029 (and (=> t!98820 result!72426) (=> t!98822 result!72428) b_and!77703))))

(declare-fun e!570219 () Bool)

(assert (=> b!866552 (= e!570219 (and tp!274030 tp!274029))))

(declare-fun tp!274028 () Bool)

(declare-fun b!866551 () Bool)

(declare-fun e!570218 () Bool)

(assert (=> b!866551 (= e!570218 (and tp!274028 (inv!11892 (tag!2019 (h!14761 (t!98780 rules!2621)))) (inv!11895 (transformation!1757 (h!14761 (t!98780 rules!2621)))) e!570219))))

(declare-fun b!866550 () Bool)

(declare-fun e!570217 () Bool)

(declare-fun tp!274027 () Bool)

(assert (=> b!866550 (= e!570217 (and e!570218 tp!274027))))

(assert (=> b!866157 (= tp!273919 e!570217)))

(assert (= b!866551 b!866552))

(assert (= b!866550 b!866551))

(assert (= (and b!866157 (is-Cons!9360 (t!98780 rules!2621))) b!866550))

(declare-fun m!1113481 () Bool)

(assert (=> b!866551 m!1113481))

(declare-fun m!1113483 () Bool)

(assert (=> b!866551 m!1113483))

(declare-fun b_lambda!29477 () Bool)

(assert (= b_lambda!29471 (or (and b!866162 b_free!26499 (= (toChars!2685 (transformation!1757 (h!14761 rules!2621))) (toChars!2685 (transformation!1757 (rule!3180 separatorToken!297))))) (and b!866168 b_free!26495) (and b!866160 b_free!26503 (= (toChars!2685 (transformation!1757 (rule!3180 (h!14762 l!5107)))) (toChars!2685 (transformation!1757 (rule!3180 separatorToken!297))))) (and b!866552 b_free!26523 (= (toChars!2685 (transformation!1757 (h!14761 (t!98780 rules!2621)))) (toChars!2685 (transformation!1757 (rule!3180 separatorToken!297))))) (and b!866527 b_free!26519 (= (toChars!2685 (transformation!1757 (rule!3180 (h!14762 (t!98781 l!5107))))) (toChars!2685 (transformation!1757 (rule!3180 separatorToken!297))))) b_lambda!29477)))

(declare-fun b_lambda!29479 () Bool)

(assert (= b_lambda!29463 (or (and b!866552 b_free!26523 (= (toChars!2685 (transformation!1757 (h!14761 (t!98780 rules!2621)))) (toChars!2685 (transformation!1757 (rule!3180 (h!14762 l!5107)))))) (and b!866527 b_free!26519 (= (toChars!2685 (transformation!1757 (rule!3180 (h!14762 (t!98781 l!5107))))) (toChars!2685 (transformation!1757 (rule!3180 (h!14762 l!5107)))))) (and b!866160 b_free!26503) (and b!866162 b_free!26499 (= (toChars!2685 (transformation!1757 (h!14761 rules!2621))) (toChars!2685 (transformation!1757 (rule!3180 (h!14762 l!5107)))))) (and b!866168 b_free!26495 (= (toChars!2685 (transformation!1757 (rule!3180 separatorToken!297))) (toChars!2685 (transformation!1757 (rule!3180 (h!14762 l!5107)))))) b_lambda!29479)))

(declare-fun b_lambda!29481 () Bool)

(assert (= b_lambda!29475 (or b!866174 b_lambda!29481)))

(declare-fun bs!232890 () Bool)

(declare-fun d!272097 () Bool)

(assert (= bs!232890 (and d!272097 b!866174)))

(assert (=> bs!232890 (= (dynLambda!4449 lambda!25993 (h!14762 lt!326770)) (not (isSeparator!1757 (rule!3180 (h!14762 lt!326770)))))))

(assert (=> b!866477 d!272097))

(declare-fun b_lambda!29483 () Bool)

(assert (= b_lambda!29473 (or b!866174 b_lambda!29483)))

(declare-fun bs!232891 () Bool)

(declare-fun d!272099 () Bool)

(assert (= bs!232891 (and d!272099 b!866174)))

(assert (=> bs!232891 (= (dynLambda!4449 lambda!25993 (h!14762 l!5107)) (not (isSeparator!1757 (rule!3180 (h!14762 l!5107)))))))

(assert (=> b!866398 d!272099))

(push 1)

(assert (not b!866524))

(assert (not b_next!26559))

(assert (not b!866540))

(assert (not b!866550))

(assert (not b!866496))

(assert (not b!866322))

(assert (not b!866324))

(assert (not b!866279))

(assert (not b_lambda!29483))

(assert (not b!866325))

(assert (not b!866535))

(assert b_and!77697)

(assert (not b!866475))

(assert (not b!866483))

(assert (not d!272077))

(assert (not b_lambda!29477))

(assert (not d!272027))

(assert (not b_next!26563))

(assert (not b!866263))

(assert (not b!866478))

(assert tp_is_empty!4027)

(assert (not b!866537))

(assert b_and!77657)

(assert b_and!77699)

(assert (not b!866526))

(assert (not b_next!26587))

(assert (not b!866407))

(assert (not b!866534))

(assert (not b!866437))

(assert (not b!866476))

(assert (not d!272023))

(assert (not b!866420))

(assert (not b!866399))

(assert (not b!866255))

(assert (not b!866258))

(assert (not b!866436))

(assert (not d!272047))

(assert (not d!272013))

(assert (not b!866541))

(assert (not b_lambda!29481))

(assert (not b!866551))

(assert (not b!866421))

(assert (not d!272091))

(assert (not d!272059))

(assert (not b!866474))

(assert (not b!866264))

(assert b_and!77695)

(assert (not b_next!26565))

(assert (not tb!62613))

(assert b_and!77701)

(assert b_and!77693)

(assert (not b!866485))

(assert (not b!866320))

(assert (not b!866390))

(assert (not b!866525))

(assert b_and!77649)

(assert (not b!866269))

(assert (not d!272025))

(assert (not b!866489))

(assert (not d!272087))

(assert (not b!866513))

(assert (not b_next!26567))

(assert (not d!272017))

(assert (not b!866391))

(assert (not b!866318))

(assert (not b!866495))

(assert (not b_next!26561))

(assert (not b!866319))

(assert (not b_lambda!29479))

(assert (not b!866288))

(assert b_and!77653)

(assert (not b!866490))

(assert (not b!866479))

(assert (not b!866539))

(assert (not b!866532))

(assert (not b!866433))

(assert (not b!866511))

(assert (not b_next!26585))

(assert (not b!866493))

(assert (not d!272015))

(assert (not b!866253))

(assert (not b!866278))

(assert (not b!866499))

(assert (not d!272075))

(assert b_and!77691)

(assert b_and!77703)

(assert (not b!866512))

(assert (not b_next!26557))

(assert (not b!866432))

(assert (not b!866480))

(assert (not b!866389))

(assert (not b!866491))

(assert (not tb!62631))

(assert (not b_next!26581))

(assert (not d!272095))

(assert (not b!866314))

(assert (not b!866494))

(assert (not d!272029))

(assert (not b!866323))

(assert (not d!272021))

(assert (not b_next!26583))

(assert (not b!866536))

(check-sat)

(pop 1)

(push 1)

(assert b_and!77697)

(assert (not b_next!26563))

(assert b_and!77657)

(assert b_and!77649)

(assert (not b_next!26567))

(assert (not b_next!26561))

(assert b_and!77653)

(assert (not b_next!26559))

(assert (not b_next!26585))

(assert (not b_next!26557))

(assert (not b_next!26581))

(assert (not b_next!26583))

(assert b_and!77699)

(assert (not b_next!26587))

(assert b_and!77695)

(assert b_and!77693)

(assert b_and!77701)

(assert (not b_next!26565))

(assert b_and!77691)

(assert b_and!77703)

(check-sat)

(pop 1)

