; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!134796 () Bool)

(assert start!134796)

(declare-fun b!1448903 () Bool)

(declare-fun e!924417 () Bool)

(declare-datatypes ((C!8110 0))(
  ( (C!8111 (val!4625 Int)) )
))
(declare-datatypes ((List!15131 0))(
  ( (Nil!15065) (Cons!15065 (h!20466 C!8110) (t!130464 List!15131)) )
))
(declare-datatypes ((IArray!10265 0))(
  ( (IArray!10266 (innerList!5190 List!15131)) )
))
(declare-datatypes ((Conc!5130 0))(
  ( (Node!5130 (left!12819 Conc!5130) (right!13149 Conc!5130) (csize!10490 Int) (cheight!5341 Int)) (Leaf!7658 (xs!7871 IArray!10265) (csize!10491 Int)) (Empty!5130) )
))
(declare-datatypes ((BalanceConc!10200 0))(
  ( (BalanceConc!10201 (c!238645 Conc!5130)) )
))
(declare-datatypes ((List!15132 0))(
  ( (Nil!15066) (Cons!15066 (h!20467 (_ BitVec 16)) (t!130465 List!15132)) )
))
(declare-datatypes ((TokenValue!2742 0))(
  ( (FloatLiteralValue!5484 (text!19639 List!15132)) (TokenValueExt!2741 (__x!9274 Int)) (Broken!13710 (value!85205 List!15132)) (Object!2807) (End!2742) (Def!2742) (Underscore!2742) (Match!2742) (Else!2742) (Error!2742) (Case!2742) (If!2742) (Extends!2742) (Abstract!2742) (Class!2742) (Val!2742) (DelimiterValue!5484 (del!2802 List!15132)) (KeywordValue!2748 (value!85206 List!15132)) (CommentValue!5484 (value!85207 List!15132)) (WhitespaceValue!5484 (value!85208 List!15132)) (IndentationValue!2742 (value!85209 List!15132)) (String!17967) (Int32!2742) (Broken!13711 (value!85210 List!15132)) (Boolean!2743) (Unit!23975) (OperatorValue!2745 (op!2802 List!15132)) (IdentifierValue!5484 (value!85211 List!15132)) (IdentifierValue!5485 (value!85212 List!15132)) (WhitespaceValue!5485 (value!85213 List!15132)) (True!5484) (False!5484) (Broken!13712 (value!85214 List!15132)) (Broken!13713 (value!85215 List!15132)) (True!5485) (RightBrace!2742) (RightBracket!2742) (Colon!2742) (Null!2742) (Comma!2742) (LeftBracket!2742) (False!5485) (LeftBrace!2742) (ImaginaryLiteralValue!2742 (text!19640 List!15132)) (StringLiteralValue!8226 (value!85216 List!15132)) (EOFValue!2742 (value!85217 List!15132)) (IdentValue!2742 (value!85218 List!15132)) (DelimiterValue!5485 (value!85219 List!15132)) (DedentValue!2742 (value!85220 List!15132)) (NewLineValue!2742 (value!85221 List!15132)) (IntegerValue!8226 (value!85222 (_ BitVec 32)) (text!19641 List!15132)) (IntegerValue!8227 (value!85223 Int) (text!19642 List!15132)) (Times!2742) (Or!2742) (Equal!2742) (Minus!2742) (Broken!13714 (value!85224 List!15132)) (And!2742) (Div!2742) (LessEqual!2742) (Mod!2742) (Concat!6708) (Not!2742) (Plus!2742) (SpaceValue!2742 (value!85225 List!15132)) (IntegerValue!8228 (value!85226 Int) (text!19643 List!15132)) (StringLiteralValue!8227 (text!19644 List!15132)) (FloatLiteralValue!5485 (text!19645 List!15132)) (BytesLiteralValue!2742 (value!85227 List!15132)) (CommentValue!5485 (value!85228 List!15132)) (StringLiteralValue!8228 (value!85229 List!15132)) (ErrorTokenValue!2742 (msg!2803 List!15132)) )
))
(declare-datatypes ((Regex!3966 0))(
  ( (ElementMatch!3966 (c!238646 C!8110)) (Concat!6709 (regOne!8444 Regex!3966) (regTwo!8444 Regex!3966)) (EmptyExpr!3966) (Star!3966 (reg!4295 Regex!3966)) (EmptyLang!3966) (Union!3966 (regOne!8445 Regex!3966) (regTwo!8445 Regex!3966)) )
))
(declare-datatypes ((String!17968 0))(
  ( (String!17969 (value!85230 String)) )
))
(declare-datatypes ((TokenValueInjection!5144 0))(
  ( (TokenValueInjection!5145 (toValue!3959 Int) (toChars!3818 Int)) )
))
(declare-datatypes ((Rule!5104 0))(
  ( (Rule!5105 (regex!2652 Regex!3966) (tag!2916 String!17968) (isSeparator!2652 Bool) (transformation!2652 TokenValueInjection!5144)) )
))
(declare-datatypes ((Token!4966 0))(
  ( (Token!4967 (value!85231 TokenValue!2742) (rule!4425 Rule!5104) (size!12329 Int) (originalCharacters!3514 List!15131)) )
))
(declare-datatypes ((List!15133 0))(
  ( (Nil!15067) (Cons!15067 (h!20468 Token!4966) (t!130466 List!15133)) )
))
(declare-datatypes ((IArray!10267 0))(
  ( (IArray!10268 (innerList!5191 List!15133)) )
))
(declare-datatypes ((Conc!5131 0))(
  ( (Node!5131 (left!12820 Conc!5131) (right!13150 Conc!5131) (csize!10492 Int) (cheight!5342 Int)) (Leaf!7659 (xs!7872 IArray!10267) (csize!10493 Int)) (Empty!5131) )
))
(declare-datatypes ((BalanceConc!10202 0))(
  ( (BalanceConc!10203 (c!238647 Conc!5131)) )
))
(declare-datatypes ((List!15134 0))(
  ( (Nil!15068) (Cons!15068 (h!20469 Rule!5104) (t!130467 List!15134)) )
))
(declare-datatypes ((PrintableTokens!1086 0))(
  ( (PrintableTokens!1087 (rules!11545 List!15134) (tokens!2043 BalanceConc!10202)) )
))
(declare-fun other!32 () PrintableTokens!1086)

(declare-fun tp!408739 () Bool)

(declare-fun inv!20092 (Conc!5131) Bool)

(assert (=> b!1448903 (= e!924417 (and (inv!20092 (c!238647 (tokens!2043 other!32))) tp!408739))))

(declare-fun b!1448904 () Bool)

(declare-fun e!924419 () Bool)

(declare-fun e!924420 () Bool)

(assert (=> b!1448904 (= e!924419 e!924420)))

(declare-fun res!655992 () Bool)

(assert (=> b!1448904 (=> (not res!655992) (not e!924420))))

(declare-fun isEmpty!9405 (BalanceConc!10202) Bool)

(assert (=> b!1448904 (= res!655992 (not (isEmpty!9405 (tokens!2043 other!32))))))

(declare-datatypes ((Unit!23976 0))(
  ( (Unit!23977) )
))
(declare-fun lt!499517 () Unit!23976)

(declare-fun thiss!10022 () PrintableTokens!1086)

(declare-fun lemmaInvariant!348 (PrintableTokens!1086) Unit!23976)

(assert (=> b!1448904 (= lt!499517 (lemmaInvariant!348 thiss!10022))))

(declare-fun lt!499518 () Unit!23976)

(assert (=> b!1448904 (= lt!499518 (lemmaInvariant!348 other!32))))

(declare-fun b!1448905 () Bool)

(declare-fun e!924421 () Bool)

(declare-datatypes ((LexerInterface!2308 0))(
  ( (LexerInterfaceExt!2305 (__x!9275 Int)) (Lexer!2306) )
))
(declare-fun rulesInvariant!2143 (LexerInterface!2308 List!15134) Bool)

(assert (=> b!1448905 (= e!924421 (rulesInvariant!2143 Lexer!2306 (rules!11545 thiss!10022)))))

(declare-fun res!655994 () Bool)

(assert (=> start!134796 (=> (not res!655994) (not e!924419))))

(assert (=> start!134796 (= res!655994 (= (rules!11545 thiss!10022) (rules!11545 other!32)))))

(assert (=> start!134796 e!924419))

(declare-fun e!924418 () Bool)

(declare-fun inv!20093 (PrintableTokens!1086) Bool)

(assert (=> start!134796 (and (inv!20093 thiss!10022) e!924418)))

(declare-fun e!924422 () Bool)

(assert (=> start!134796 (and (inv!20093 other!32) e!924422)))

(declare-fun b!1448906 () Bool)

(declare-fun e!924423 () Bool)

(declare-fun tp!408742 () Bool)

(declare-fun inv!20094 (BalanceConc!10202) Bool)

(assert (=> b!1448906 (= e!924418 (and tp!408742 (inv!20094 (tokens!2043 thiss!10022)) e!924423))))

(declare-fun b!1448907 () Bool)

(declare-fun res!655991 () Bool)

(assert (=> b!1448907 (=> (not res!655991) (not e!924420))))

(assert (=> b!1448907 (= res!655991 (not (isEmpty!9405 (tokens!2043 thiss!10022))))))

(declare-fun b!1448908 () Bool)

(assert (=> b!1448908 (= e!924420 (not e!924421))))

(declare-fun res!655993 () Bool)

(assert (=> b!1448908 (=> res!655993 e!924421)))

(declare-fun isEmpty!9406 (List!15134) Bool)

(assert (=> b!1448908 (= res!655993 (isEmpty!9406 (rules!11545 thiss!10022)))))

(declare-fun lt!499515 () Token!4966)

(declare-fun head!2946 (BalanceConc!10202) Token!4966)

(assert (=> b!1448908 (= lt!499515 (head!2946 (tokens!2043 other!32)))))

(declare-fun lt!499514 () List!15133)

(declare-fun list!6015 (BalanceConc!10202) List!15133)

(assert (=> b!1448908 (= lt!499514 (list!6015 (tokens!2043 other!32)))))

(declare-fun lt!499520 () Token!4966)

(declare-fun rulesProduceIndividualToken!1227 (LexerInterface!2308 List!15134 Token!4966) Bool)

(assert (=> b!1448908 (rulesProduceIndividualToken!1227 Lexer!2306 (rules!11545 thiss!10022) lt!499520)))

(declare-fun lt!499519 () Unit!23976)

(declare-fun lt!499516 () List!15133)

(declare-fun lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!410 (LexerInterface!2308 List!15134 List!15133 Token!4966) Unit!23976)

(assert (=> b!1448908 (= lt!499519 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!410 Lexer!2306 (rules!11545 thiss!10022) lt!499516 lt!499520))))

(declare-fun last!214 (BalanceConc!10202) Token!4966)

(assert (=> b!1448908 (= lt!499520 (last!214 (tokens!2043 thiss!10022)))))

(assert (=> b!1448908 (= lt!499516 (list!6015 (tokens!2043 thiss!10022)))))

(declare-fun b!1448909 () Bool)

(declare-fun tp!408740 () Bool)

(assert (=> b!1448909 (= e!924423 (and (inv!20092 (c!238647 (tokens!2043 thiss!10022))) tp!408740))))

(declare-fun b!1448910 () Bool)

(declare-fun tp!408741 () Bool)

(assert (=> b!1448910 (= e!924422 (and tp!408741 (inv!20094 (tokens!2043 other!32)) e!924417))))

(assert (= (and start!134796 res!655994) b!1448904))

(assert (= (and b!1448904 res!655992) b!1448907))

(assert (= (and b!1448907 res!655991) b!1448908))

(assert (= (and b!1448908 (not res!655993)) b!1448905))

(assert (= b!1448906 b!1448909))

(assert (= start!134796 b!1448906))

(assert (= b!1448910 b!1448903))

(assert (= start!134796 b!1448910))

(declare-fun m!1671849 () Bool)

(assert (=> b!1448907 m!1671849))

(declare-fun m!1671851 () Bool)

(assert (=> b!1448906 m!1671851))

(declare-fun m!1671853 () Bool)

(assert (=> b!1448903 m!1671853))

(declare-fun m!1671855 () Bool)

(assert (=> b!1448909 m!1671855))

(declare-fun m!1671857 () Bool)

(assert (=> b!1448905 m!1671857))

(declare-fun m!1671859 () Bool)

(assert (=> b!1448910 m!1671859))

(declare-fun m!1671861 () Bool)

(assert (=> b!1448908 m!1671861))

(declare-fun m!1671863 () Bool)

(assert (=> b!1448908 m!1671863))

(declare-fun m!1671865 () Bool)

(assert (=> b!1448908 m!1671865))

(declare-fun m!1671867 () Bool)

(assert (=> b!1448908 m!1671867))

(declare-fun m!1671869 () Bool)

(assert (=> b!1448908 m!1671869))

(declare-fun m!1671871 () Bool)

(assert (=> b!1448908 m!1671871))

(declare-fun m!1671873 () Bool)

(assert (=> b!1448908 m!1671873))

(declare-fun m!1671875 () Bool)

(assert (=> start!134796 m!1671875))

(declare-fun m!1671877 () Bool)

(assert (=> start!134796 m!1671877))

(declare-fun m!1671879 () Bool)

(assert (=> b!1448904 m!1671879))

(declare-fun m!1671881 () Bool)

(assert (=> b!1448904 m!1671881))

(declare-fun m!1671883 () Bool)

(assert (=> b!1448904 m!1671883))

(push 1)

(assert (not b!1448908))

(assert (not b!1448903))

(assert (not b!1448905))

(assert (not b!1448910))

(assert (not b!1448907))

(assert (not b!1448906))

(assert (not start!134796))

(assert (not b!1448904))

(assert (not b!1448909))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!420684 () Bool)

(declare-fun res!656020 () Bool)

(declare-fun e!924453 () Bool)

(assert (=> d!420684 (=> (not res!656020) (not e!924453))))

(assert (=> d!420684 (= res!656020 (not (isEmpty!9406 (rules!11545 thiss!10022))))))

(assert (=> d!420684 (= (inv!20093 thiss!10022) e!924453)))

(declare-fun b!1448950 () Bool)

(declare-fun res!656021 () Bool)

(assert (=> b!1448950 (=> (not res!656021) (not e!924453))))

(assert (=> b!1448950 (= res!656021 (rulesInvariant!2143 Lexer!2306 (rules!11545 thiss!10022)))))

(declare-fun b!1448951 () Bool)

(declare-fun res!656022 () Bool)

(assert (=> b!1448951 (=> (not res!656022) (not e!924453))))

(declare-fun rulesProduceEachTokenIndividually!860 (LexerInterface!2308 List!15134 BalanceConc!10202) Bool)

(assert (=> b!1448951 (= res!656022 (rulesProduceEachTokenIndividually!860 Lexer!2306 (rules!11545 thiss!10022) (tokens!2043 thiss!10022)))))

(declare-fun b!1448952 () Bool)

(declare-fun separableTokens!244 (LexerInterface!2308 BalanceConc!10202 List!15134) Bool)

(assert (=> b!1448952 (= e!924453 (separableTokens!244 Lexer!2306 (tokens!2043 thiss!10022) (rules!11545 thiss!10022)))))

(assert (= (and d!420684 res!656020) b!1448950))

(assert (= (and b!1448950 res!656021) b!1448951))

(assert (= (and b!1448951 res!656022) b!1448952))

(assert (=> d!420684 m!1671873))

(assert (=> b!1448950 m!1671857))

(declare-fun m!1671925 () Bool)

(assert (=> b!1448951 m!1671925))

(declare-fun m!1671927 () Bool)

(assert (=> b!1448952 m!1671927))

(assert (=> start!134796 d!420684))

(declare-fun d!420690 () Bool)

(declare-fun res!656023 () Bool)

(declare-fun e!924454 () Bool)

(assert (=> d!420690 (=> (not res!656023) (not e!924454))))

(assert (=> d!420690 (= res!656023 (not (isEmpty!9406 (rules!11545 other!32))))))

(assert (=> d!420690 (= (inv!20093 other!32) e!924454)))

(declare-fun b!1448953 () Bool)

(declare-fun res!656024 () Bool)

(assert (=> b!1448953 (=> (not res!656024) (not e!924454))))

(assert (=> b!1448953 (= res!656024 (rulesInvariant!2143 Lexer!2306 (rules!11545 other!32)))))

(declare-fun b!1448954 () Bool)

(declare-fun res!656025 () Bool)

(assert (=> b!1448954 (=> (not res!656025) (not e!924454))))

(assert (=> b!1448954 (= res!656025 (rulesProduceEachTokenIndividually!860 Lexer!2306 (rules!11545 other!32) (tokens!2043 other!32)))))

(declare-fun b!1448955 () Bool)

(assert (=> b!1448955 (= e!924454 (separableTokens!244 Lexer!2306 (tokens!2043 other!32) (rules!11545 other!32)))))

(assert (= (and d!420690 res!656023) b!1448953))

(assert (= (and b!1448953 res!656024) b!1448954))

(assert (= (and b!1448954 res!656025) b!1448955))

(declare-fun m!1671929 () Bool)

(assert (=> d!420690 m!1671929))

(declare-fun m!1671931 () Bool)

(assert (=> b!1448953 m!1671931))

(declare-fun m!1671933 () Bool)

(assert (=> b!1448954 m!1671933))

(declare-fun m!1671935 () Bool)

(assert (=> b!1448955 m!1671935))

(assert (=> start!134796 d!420690))

(declare-fun d!420692 () Bool)

(declare-fun res!656028 () Bool)

(declare-fun e!924457 () Bool)

(assert (=> d!420692 (=> (not res!656028) (not e!924457))))

(declare-fun rulesValid!974 (LexerInterface!2308 List!15134) Bool)

(assert (=> d!420692 (= res!656028 (rulesValid!974 Lexer!2306 (rules!11545 thiss!10022)))))

(assert (=> d!420692 (= (rulesInvariant!2143 Lexer!2306 (rules!11545 thiss!10022)) e!924457)))

(declare-fun b!1448958 () Bool)

(declare-datatypes ((List!15139 0))(
  ( (Nil!15073) (Cons!15073 (h!20474 String!17968) (t!130475 List!15139)) )
))
(declare-fun noDuplicateTag!974 (LexerInterface!2308 List!15134 List!15139) Bool)

(assert (=> b!1448958 (= e!924457 (noDuplicateTag!974 Lexer!2306 (rules!11545 thiss!10022) Nil!15073))))

(assert (= (and d!420692 res!656028) b!1448958))

(declare-fun m!1671937 () Bool)

(assert (=> d!420692 m!1671937))

(declare-fun m!1671939 () Bool)

(assert (=> b!1448958 m!1671939))

(assert (=> b!1448905 d!420692))

(declare-fun d!420694 () Bool)

(declare-fun isBalanced!1530 (Conc!5131) Bool)

(assert (=> d!420694 (= (inv!20094 (tokens!2043 other!32)) (isBalanced!1530 (c!238647 (tokens!2043 other!32))))))

(declare-fun bs!342426 () Bool)

(assert (= bs!342426 d!420694))

(declare-fun m!1671941 () Bool)

(assert (=> bs!342426 m!1671941))

(assert (=> b!1448910 d!420694))

(declare-fun d!420696 () Bool)

(declare-fun lt!499544 () Bool)

(declare-fun isEmpty!9409 (List!15133) Bool)

(assert (=> d!420696 (= lt!499544 (isEmpty!9409 (list!6015 (tokens!2043 other!32))))))

(declare-fun isEmpty!9410 (Conc!5131) Bool)

(assert (=> d!420696 (= lt!499544 (isEmpty!9410 (c!238647 (tokens!2043 other!32))))))

(assert (=> d!420696 (= (isEmpty!9405 (tokens!2043 other!32)) lt!499544)))

(declare-fun bs!342427 () Bool)

(assert (= bs!342427 d!420696))

(assert (=> bs!342427 m!1671867))

(assert (=> bs!342427 m!1671867))

(declare-fun m!1671943 () Bool)

(assert (=> bs!342427 m!1671943))

(declare-fun m!1671945 () Bool)

(assert (=> bs!342427 m!1671945))

(assert (=> b!1448904 d!420696))

(declare-fun d!420698 () Bool)

(declare-fun e!924464 () Bool)

(assert (=> d!420698 e!924464))

(declare-fun res!656045 () Bool)

(assert (=> d!420698 (=> (not res!656045) (not e!924464))))

(assert (=> d!420698 (= res!656045 (rulesInvariant!2143 Lexer!2306 (rules!11545 thiss!10022)))))

(declare-fun Unit!23981 () Unit!23976)

(assert (=> d!420698 (= (lemmaInvariant!348 thiss!10022) Unit!23981)))

(declare-fun b!1448975 () Bool)

(declare-fun res!656046 () Bool)

(assert (=> b!1448975 (=> (not res!656046) (not e!924464))))

(assert (=> b!1448975 (= res!656046 (rulesProduceEachTokenIndividually!860 Lexer!2306 (rules!11545 thiss!10022) (tokens!2043 thiss!10022)))))

(declare-fun b!1448976 () Bool)

(assert (=> b!1448976 (= e!924464 (separableTokens!244 Lexer!2306 (tokens!2043 thiss!10022) (rules!11545 thiss!10022)))))

(assert (= (and d!420698 res!656045) b!1448975))

(assert (= (and b!1448975 res!656046) b!1448976))

(assert (=> d!420698 m!1671857))

(assert (=> b!1448975 m!1671925))

(assert (=> b!1448976 m!1671927))

(assert (=> b!1448904 d!420698))

(declare-fun d!420708 () Bool)

(declare-fun e!924465 () Bool)

(assert (=> d!420708 e!924465))

(declare-fun res!656047 () Bool)

(assert (=> d!420708 (=> (not res!656047) (not e!924465))))

(assert (=> d!420708 (= res!656047 (rulesInvariant!2143 Lexer!2306 (rules!11545 other!32)))))

(declare-fun Unit!23982 () Unit!23976)

(assert (=> d!420708 (= (lemmaInvariant!348 other!32) Unit!23982)))

(declare-fun b!1448977 () Bool)

(declare-fun res!656048 () Bool)

(assert (=> b!1448977 (=> (not res!656048) (not e!924465))))

(assert (=> b!1448977 (= res!656048 (rulesProduceEachTokenIndividually!860 Lexer!2306 (rules!11545 other!32) (tokens!2043 other!32)))))

(declare-fun b!1448978 () Bool)

(assert (=> b!1448978 (= e!924465 (separableTokens!244 Lexer!2306 (tokens!2043 other!32) (rules!11545 other!32)))))

(assert (= (and d!420708 res!656047) b!1448977))

(assert (= (and b!1448977 res!656048) b!1448978))

(assert (=> d!420708 m!1671931))

(assert (=> b!1448977 m!1671933))

(assert (=> b!1448978 m!1671935))

(assert (=> b!1448904 d!420708))

(declare-fun d!420710 () Bool)

(declare-fun c!238656 () Bool)

(assert (=> d!420710 (= c!238656 (is-Node!5131 (c!238647 (tokens!2043 thiss!10022))))))

(declare-fun e!924470 () Bool)

(assert (=> d!420710 (= (inv!20092 (c!238647 (tokens!2043 thiss!10022))) e!924470)))

(declare-fun b!1448985 () Bool)

(declare-fun inv!20098 (Conc!5131) Bool)

(assert (=> b!1448985 (= e!924470 (inv!20098 (c!238647 (tokens!2043 thiss!10022))))))

(declare-fun b!1448986 () Bool)

(declare-fun e!924471 () Bool)

(assert (=> b!1448986 (= e!924470 e!924471)))

(declare-fun res!656051 () Bool)

(assert (=> b!1448986 (= res!656051 (not (is-Leaf!7659 (c!238647 (tokens!2043 thiss!10022)))))))

(assert (=> b!1448986 (=> res!656051 e!924471)))

(declare-fun b!1448987 () Bool)

(declare-fun inv!20099 (Conc!5131) Bool)

(assert (=> b!1448987 (= e!924471 (inv!20099 (c!238647 (tokens!2043 thiss!10022))))))

(assert (= (and d!420710 c!238656) b!1448985))

(assert (= (and d!420710 (not c!238656)) b!1448986))

(assert (= (and b!1448986 (not res!656051)) b!1448987))

(declare-fun m!1671967 () Bool)

(assert (=> b!1448985 m!1671967))

(declare-fun m!1671969 () Bool)

(assert (=> b!1448987 m!1671969))

(assert (=> b!1448909 d!420710))

(declare-fun d!420712 () Bool)

(declare-fun c!238657 () Bool)

(assert (=> d!420712 (= c!238657 (is-Node!5131 (c!238647 (tokens!2043 other!32))))))

(declare-fun e!924472 () Bool)

(assert (=> d!420712 (= (inv!20092 (c!238647 (tokens!2043 other!32))) e!924472)))

(declare-fun b!1448988 () Bool)

(assert (=> b!1448988 (= e!924472 (inv!20098 (c!238647 (tokens!2043 other!32))))))

(declare-fun b!1448989 () Bool)

(declare-fun e!924473 () Bool)

(assert (=> b!1448989 (= e!924472 e!924473)))

(declare-fun res!656052 () Bool)

(assert (=> b!1448989 (= res!656052 (not (is-Leaf!7659 (c!238647 (tokens!2043 other!32)))))))

(assert (=> b!1448989 (=> res!656052 e!924473)))

(declare-fun b!1448990 () Bool)

(assert (=> b!1448990 (= e!924473 (inv!20099 (c!238647 (tokens!2043 other!32))))))

(assert (= (and d!420712 c!238657) b!1448988))

(assert (= (and d!420712 (not c!238657)) b!1448989))

(assert (= (and b!1448989 (not res!656052)) b!1448990))

(declare-fun m!1671971 () Bool)

(assert (=> b!1448988 m!1671971))

(declare-fun m!1671973 () Bool)

(assert (=> b!1448990 m!1671973))

(assert (=> b!1448903 d!420712))

(declare-fun d!420714 () Bool)

(declare-fun list!6017 (Conc!5131) List!15133)

(assert (=> d!420714 (= (list!6015 (tokens!2043 other!32)) (list!6017 (c!238647 (tokens!2043 other!32))))))

(declare-fun bs!342430 () Bool)

(assert (= bs!342430 d!420714))

(declare-fun m!1671975 () Bool)

(assert (=> bs!342430 m!1671975))

(assert (=> b!1448908 d!420714))

(declare-fun d!420716 () Bool)

(declare-fun lt!499551 () Token!4966)

(declare-fun last!216 (List!15133) Token!4966)

(assert (=> d!420716 (= lt!499551 (last!216 (list!6015 (tokens!2043 thiss!10022))))))

(declare-fun last!217 (Conc!5131) Token!4966)

(assert (=> d!420716 (= lt!499551 (last!217 (c!238647 (tokens!2043 thiss!10022))))))

(assert (=> d!420716 (not (isEmpty!9405 (tokens!2043 thiss!10022)))))

(assert (=> d!420716 (= (last!214 (tokens!2043 thiss!10022)) lt!499551)))

(declare-fun bs!342431 () Bool)

(assert (= bs!342431 d!420716))

(assert (=> bs!342431 m!1671871))

(assert (=> bs!342431 m!1671871))

(declare-fun m!1671977 () Bool)

(assert (=> bs!342431 m!1671977))

(declare-fun m!1671979 () Bool)

(assert (=> bs!342431 m!1671979))

(assert (=> bs!342431 m!1671849))

(assert (=> b!1448908 d!420716))

(declare-fun d!420718 () Bool)

(assert (=> d!420718 (= (list!6015 (tokens!2043 thiss!10022)) (list!6017 (c!238647 (tokens!2043 thiss!10022))))))

(declare-fun bs!342432 () Bool)

(assert (= bs!342432 d!420718))

(declare-fun m!1671981 () Bool)

(assert (=> bs!342432 m!1671981))

(assert (=> b!1448908 d!420718))

(declare-fun d!420720 () Bool)

(assert (=> d!420720 (rulesProduceIndividualToken!1227 Lexer!2306 (rules!11545 thiss!10022) lt!499520)))

(declare-fun lt!499554 () Unit!23976)

(declare-fun choose!8921 (LexerInterface!2308 List!15134 List!15133 Token!4966) Unit!23976)

(assert (=> d!420720 (= lt!499554 (choose!8921 Lexer!2306 (rules!11545 thiss!10022) lt!499516 lt!499520))))

(assert (=> d!420720 (not (isEmpty!9406 (rules!11545 thiss!10022)))))

(assert (=> d!420720 (= (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!410 Lexer!2306 (rules!11545 thiss!10022) lt!499516 lt!499520) lt!499554)))

(declare-fun bs!342433 () Bool)

(assert (= bs!342433 d!420720))

(assert (=> bs!342433 m!1671861))

(declare-fun m!1671983 () Bool)

(assert (=> bs!342433 m!1671983))

(assert (=> bs!342433 m!1671873))

(assert (=> b!1448908 d!420720))

(declare-fun d!420726 () Bool)

(assert (=> d!420726 (= (isEmpty!9406 (rules!11545 thiss!10022)) (is-Nil!15068 (rules!11545 thiss!10022)))))

(assert (=> b!1448908 d!420726))

(declare-fun d!420728 () Bool)

(declare-fun lt!499565 () Bool)

(declare-fun e!924488 () Bool)

(assert (=> d!420728 (= lt!499565 e!924488)))

(declare-fun res!656076 () Bool)

(assert (=> d!420728 (=> (not res!656076) (not e!924488))))

(declare-datatypes ((tuple2!14182 0))(
  ( (tuple2!14183 (_1!7977 BalanceConc!10202) (_2!7977 BalanceConc!10200)) )
))
(declare-fun lex!1056 (LexerInterface!2308 List!15134 BalanceConc!10200) tuple2!14182)

(declare-fun print!1083 (LexerInterface!2308 BalanceConc!10202) BalanceConc!10200)

(declare-fun singletonSeq!1247 (Token!4966) BalanceConc!10202)

(assert (=> d!420728 (= res!656076 (= (list!6015 (_1!7977 (lex!1056 Lexer!2306 (rules!11545 thiss!10022) (print!1083 Lexer!2306 (singletonSeq!1247 lt!499520))))) (list!6015 (singletonSeq!1247 lt!499520))))))

(declare-fun e!924489 () Bool)

(assert (=> d!420728 (= lt!499565 e!924489)))

(declare-fun res!656077 () Bool)

(assert (=> d!420728 (=> (not res!656077) (not e!924489))))

(declare-fun lt!499566 () tuple2!14182)

(declare-fun size!12331 (BalanceConc!10202) Int)

(assert (=> d!420728 (= res!656077 (= (size!12331 (_1!7977 lt!499566)) 1))))

(assert (=> d!420728 (= lt!499566 (lex!1056 Lexer!2306 (rules!11545 thiss!10022) (print!1083 Lexer!2306 (singletonSeq!1247 lt!499520))))))

(assert (=> d!420728 (not (isEmpty!9406 (rules!11545 thiss!10022)))))

(assert (=> d!420728 (= (rulesProduceIndividualToken!1227 Lexer!2306 (rules!11545 thiss!10022) lt!499520) lt!499565)))

(declare-fun b!1449014 () Bool)

(declare-fun res!656078 () Bool)

(assert (=> b!1449014 (=> (not res!656078) (not e!924489))))

(declare-fun apply!3884 (BalanceConc!10202 Int) Token!4966)

(assert (=> b!1449014 (= res!656078 (= (apply!3884 (_1!7977 lt!499566) 0) lt!499520))))

(declare-fun b!1449015 () Bool)

(declare-fun isEmpty!9411 (BalanceConc!10200) Bool)

(assert (=> b!1449015 (= e!924489 (isEmpty!9411 (_2!7977 lt!499566)))))

(declare-fun b!1449016 () Bool)

(assert (=> b!1449016 (= e!924488 (isEmpty!9411 (_2!7977 (lex!1056 Lexer!2306 (rules!11545 thiss!10022) (print!1083 Lexer!2306 (singletonSeq!1247 lt!499520))))))))

(assert (= (and d!420728 res!656077) b!1449014))

(assert (= (and b!1449014 res!656078) b!1449015))

(assert (= (and d!420728 res!656076) b!1449016))

(assert (=> d!420728 m!1671873))

(declare-fun m!1672005 () Bool)

(assert (=> d!420728 m!1672005))

(declare-fun m!1672007 () Bool)

(assert (=> d!420728 m!1672007))

(declare-fun m!1672009 () Bool)

(assert (=> d!420728 m!1672009))

(assert (=> d!420728 m!1672007))

(assert (=> d!420728 m!1672007))

(declare-fun m!1672011 () Bool)

(assert (=> d!420728 m!1672011))

(declare-fun m!1672013 () Bool)

(assert (=> d!420728 m!1672013))

(assert (=> d!420728 m!1672009))

(declare-fun m!1672015 () Bool)

(assert (=> d!420728 m!1672015))

(declare-fun m!1672017 () Bool)

(assert (=> b!1449014 m!1672017))

(declare-fun m!1672019 () Bool)

(assert (=> b!1449015 m!1672019))

(assert (=> b!1449016 m!1672007))

(assert (=> b!1449016 m!1672007))

(assert (=> b!1449016 m!1672009))

(assert (=> b!1449016 m!1672009))

(assert (=> b!1449016 m!1672015))

(declare-fun m!1672021 () Bool)

(assert (=> b!1449016 m!1672021))

(assert (=> b!1448908 d!420728))

(declare-fun d!420734 () Bool)

(declare-fun lt!499572 () Token!4966)

(declare-fun head!2948 (List!15133) Token!4966)

(assert (=> d!420734 (= lt!499572 (head!2948 (list!6015 (tokens!2043 other!32))))))

(declare-fun head!2949 (Conc!5131) Token!4966)

(assert (=> d!420734 (= lt!499572 (head!2949 (c!238647 (tokens!2043 other!32))))))

(assert (=> d!420734 (not (isEmpty!9405 (tokens!2043 other!32)))))

(assert (=> d!420734 (= (head!2946 (tokens!2043 other!32)) lt!499572)))

(declare-fun bs!342436 () Bool)

(assert (= bs!342436 d!420734))

(assert (=> bs!342436 m!1671867))

(assert (=> bs!342436 m!1671867))

(declare-fun m!1672027 () Bool)

(assert (=> bs!342436 m!1672027))

(declare-fun m!1672029 () Bool)

(assert (=> bs!342436 m!1672029))

(assert (=> bs!342436 m!1671879))

(assert (=> b!1448908 d!420734))

(declare-fun d!420738 () Bool)

(declare-fun lt!499573 () Bool)

(assert (=> d!420738 (= lt!499573 (isEmpty!9409 (list!6015 (tokens!2043 thiss!10022))))))

(assert (=> d!420738 (= lt!499573 (isEmpty!9410 (c!238647 (tokens!2043 thiss!10022))))))

(assert (=> d!420738 (= (isEmpty!9405 (tokens!2043 thiss!10022)) lt!499573)))

(declare-fun bs!342437 () Bool)

(assert (= bs!342437 d!420738))

(assert (=> bs!342437 m!1671871))

(assert (=> bs!342437 m!1671871))

(declare-fun m!1672031 () Bool)

(assert (=> bs!342437 m!1672031))

(declare-fun m!1672033 () Bool)

(assert (=> bs!342437 m!1672033))

(assert (=> b!1448907 d!420738))

(declare-fun d!420740 () Bool)

(assert (=> d!420740 (= (inv!20094 (tokens!2043 thiss!10022)) (isBalanced!1530 (c!238647 (tokens!2043 thiss!10022))))))

(declare-fun bs!342438 () Bool)

(assert (= bs!342438 d!420740))

(declare-fun m!1672035 () Bool)

(assert (=> bs!342438 m!1672035))

(assert (=> b!1448906 d!420740))

(declare-fun b!1449027 () Bool)

(declare-fun b_free!35983 () Bool)

(declare-fun b_next!36687 () Bool)

(assert (=> b!1449027 (= b_free!35983 (not b_next!36687))))

(declare-fun tp!408763 () Bool)

(declare-fun b_and!98047 () Bool)

(assert (=> b!1449027 (= tp!408763 b_and!98047)))

(declare-fun b_free!35985 () Bool)

(declare-fun b_next!36689 () Bool)

(assert (=> b!1449027 (= b_free!35985 (not b_next!36689))))

(declare-fun tp!408766 () Bool)

(declare-fun b_and!98049 () Bool)

(assert (=> b!1449027 (= tp!408766 b_and!98049)))

(declare-fun e!924501 () Bool)

(assert (=> b!1449027 (= e!924501 (and tp!408763 tp!408766))))

(declare-fun e!924499 () Bool)

(declare-fun tp!408765 () Bool)

(declare-fun b!1449026 () Bool)

(declare-fun inv!20089 (String!17968) Bool)

(declare-fun inv!20100 (TokenValueInjection!5144) Bool)

(assert (=> b!1449026 (= e!924499 (and tp!408765 (inv!20089 (tag!2916 (h!20469 (rules!11545 other!32)))) (inv!20100 (transformation!2652 (h!20469 (rules!11545 other!32)))) e!924501))))

(declare-fun b!1449025 () Bool)

(declare-fun e!924500 () Bool)

(declare-fun tp!408764 () Bool)

(assert (=> b!1449025 (= e!924500 (and e!924499 tp!408764))))

(assert (=> b!1448910 (= tp!408741 e!924500)))

(assert (= b!1449026 b!1449027))

(assert (= b!1449025 b!1449026))

(assert (= (and b!1448910 (is-Cons!15068 (rules!11545 other!32))) b!1449025))

(declare-fun m!1672043 () Bool)

(assert (=> b!1449026 m!1672043))

(declare-fun m!1672045 () Bool)

(assert (=> b!1449026 m!1672045))

(declare-fun tp!408773 () Bool)

(declare-fun e!924507 () Bool)

(declare-fun tp!408774 () Bool)

(declare-fun b!1449036 () Bool)

(assert (=> b!1449036 (= e!924507 (and (inv!20092 (left!12820 (c!238647 (tokens!2043 thiss!10022)))) tp!408774 (inv!20092 (right!13150 (c!238647 (tokens!2043 thiss!10022)))) tp!408773))))

(declare-fun b!1449038 () Bool)

(declare-fun e!924506 () Bool)

(declare-fun tp!408775 () Bool)

(assert (=> b!1449038 (= e!924506 tp!408775)))

(declare-fun b!1449037 () Bool)

(declare-fun inv!20101 (IArray!10267) Bool)

(assert (=> b!1449037 (= e!924507 (and (inv!20101 (xs!7872 (c!238647 (tokens!2043 thiss!10022)))) e!924506))))

(assert (=> b!1448909 (= tp!408740 (and (inv!20092 (c!238647 (tokens!2043 thiss!10022))) e!924507))))

(assert (= (and b!1448909 (is-Node!5131 (c!238647 (tokens!2043 thiss!10022)))) b!1449036))

(assert (= b!1449037 b!1449038))

(assert (= (and b!1448909 (is-Leaf!7659 (c!238647 (tokens!2043 thiss!10022)))) b!1449037))

(declare-fun m!1672047 () Bool)

(assert (=> b!1449036 m!1672047))

(declare-fun m!1672049 () Bool)

(assert (=> b!1449036 m!1672049))

(declare-fun m!1672051 () Bool)

(assert (=> b!1449037 m!1672051))

(assert (=> b!1448909 m!1671855))

(declare-fun e!924509 () Bool)

(declare-fun b!1449039 () Bool)

(declare-fun tp!408776 () Bool)

(declare-fun tp!408777 () Bool)

(assert (=> b!1449039 (= e!924509 (and (inv!20092 (left!12820 (c!238647 (tokens!2043 other!32)))) tp!408777 (inv!20092 (right!13150 (c!238647 (tokens!2043 other!32)))) tp!408776))))

(declare-fun b!1449041 () Bool)

(declare-fun e!924508 () Bool)

(declare-fun tp!408778 () Bool)

(assert (=> b!1449041 (= e!924508 tp!408778)))

(declare-fun b!1449040 () Bool)

(assert (=> b!1449040 (= e!924509 (and (inv!20101 (xs!7872 (c!238647 (tokens!2043 other!32)))) e!924508))))

(assert (=> b!1448903 (= tp!408739 (and (inv!20092 (c!238647 (tokens!2043 other!32))) e!924509))))

(assert (= (and b!1448903 (is-Node!5131 (c!238647 (tokens!2043 other!32)))) b!1449039))

(assert (= b!1449040 b!1449041))

(assert (= (and b!1448903 (is-Leaf!7659 (c!238647 (tokens!2043 other!32)))) b!1449040))

(declare-fun m!1672053 () Bool)

(assert (=> b!1449039 m!1672053))

(declare-fun m!1672055 () Bool)

(assert (=> b!1449039 m!1672055))

(declare-fun m!1672057 () Bool)

(assert (=> b!1449040 m!1672057))

(assert (=> b!1448903 m!1671853))

(declare-fun b!1449044 () Bool)

(declare-fun b_free!35987 () Bool)

(declare-fun b_next!36691 () Bool)

(assert (=> b!1449044 (= b_free!35987 (not b_next!36691))))

(declare-fun tp!408779 () Bool)

(declare-fun b_and!98051 () Bool)

(assert (=> b!1449044 (= tp!408779 b_and!98051)))

(declare-fun b_free!35989 () Bool)

(declare-fun b_next!36693 () Bool)

(assert (=> b!1449044 (= b_free!35989 (not b_next!36693))))

(declare-fun tp!408782 () Bool)

(declare-fun b_and!98053 () Bool)

(assert (=> b!1449044 (= tp!408782 b_and!98053)))

(declare-fun e!924513 () Bool)

(assert (=> b!1449044 (= e!924513 (and tp!408779 tp!408782))))

(declare-fun b!1449043 () Bool)

(declare-fun e!924511 () Bool)

(declare-fun tp!408781 () Bool)

(assert (=> b!1449043 (= e!924511 (and tp!408781 (inv!20089 (tag!2916 (h!20469 (rules!11545 thiss!10022)))) (inv!20100 (transformation!2652 (h!20469 (rules!11545 thiss!10022)))) e!924513))))

(declare-fun b!1449042 () Bool)

(declare-fun e!924512 () Bool)

(declare-fun tp!408780 () Bool)

(assert (=> b!1449042 (= e!924512 (and e!924511 tp!408780))))

(assert (=> b!1448906 (= tp!408742 e!924512)))

(assert (= b!1449043 b!1449044))

(assert (= b!1449042 b!1449043))

(assert (= (and b!1448906 (is-Cons!15068 (rules!11545 thiss!10022))) b!1449042))

(declare-fun m!1672059 () Bool)

(assert (=> b!1449043 m!1672059))

(declare-fun m!1672061 () Bool)

(assert (=> b!1449043 m!1672061))

(push 1)

(assert (not d!420728))

(assert (not d!420714))

(assert (not b!1449043))

(assert (not b!1449038))

(assert (not b!1449016))

(assert (not b!1448976))

(assert (not d!420684))

(assert (not b!1448955))

(assert (not b_next!36691))

(assert (not b!1449037))

(assert (not b!1448988))

(assert (not d!420694))

(assert (not b!1448990))

(assert b_and!98047)

(assert (not d!420696))

(assert (not d!420740))

(assert b_and!98051)

(assert (not b!1448978))

(assert (not b!1449014))

(assert (not b!1448903))

(assert (not b!1448985))

(assert (not b!1448958))

(assert (not d!420716))

(assert (not b!1448950))

(assert (not d!420718))

(assert (not b!1449041))

(assert (not b_next!36689))

(assert b_and!98049)

(assert (not b!1448977))

(assert (not b!1449025))

(assert (not b!1449039))

(assert (not b!1448952))

(assert (not d!420692))

(assert (not b!1448953))

(assert (not b!1449040))

(assert (not d!420720))

(assert (not b!1449042))

(assert (not b!1449026))

(assert (not b_next!36693))

(assert (not b_next!36687))

(assert (not d!420734))

(assert (not b!1448975))

(assert (not b!1448951))

(assert (not b!1448954))

(assert (not b!1449015))

(assert b_and!98053)

(assert (not d!420698))

(assert (not b!1448987))

(assert (not d!420708))

(assert (not b!1449036))

(assert (not d!420738))

(assert (not d!420690))

(assert (not b!1448909))

(check-sat)

(pop 1)

(push 1)

(assert b_and!98047)

(assert b_and!98051)

(assert (not b_next!36691))

(assert b_and!98053)

(assert (not b_next!36689))

(assert b_and!98049)

(assert (not b_next!36693))

(assert (not b_next!36687))

(check-sat)

(pop 1)

