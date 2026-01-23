; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!135282 () Bool)

(assert start!135282)

(declare-fun e!925819 () Bool)

(declare-datatypes ((C!8136 0))(
  ( (C!8137 (val!4638 Int)) )
))
(declare-datatypes ((List!15190 0))(
  ( (Nil!15124) (Cons!15124 (h!20525 C!8136) (t!130591 List!15190)) )
))
(declare-datatypes ((IArray!10317 0))(
  ( (IArray!10318 (innerList!5216 List!15190)) )
))
(declare-datatypes ((Conc!5156 0))(
  ( (Node!5156 (left!12859 Conc!5156) (right!13189 Conc!5156) (csize!10542 Int) (cheight!5367 Int)) (Leaf!7690 (xs!7897 IArray!10317) (csize!10543 Int)) (Empty!5156) )
))
(declare-datatypes ((BalanceConc!10252 0))(
  ( (BalanceConc!10253 (c!238836 Conc!5156)) )
))
(declare-datatypes ((List!15191 0))(
  ( (Nil!15125) (Cons!15125 (h!20526 (_ BitVec 16)) (t!130592 List!15191)) )
))
(declare-datatypes ((TokenValue!2755 0))(
  ( (FloatLiteralValue!5510 (text!19730 List!15191)) (TokenValueExt!2754 (__x!9300 Int)) (Broken!13775 (value!85574 List!15191)) (Object!2820) (End!2755) (Def!2755) (Underscore!2755) (Match!2755) (Else!2755) (Error!2755) (Case!2755) (If!2755) (Extends!2755) (Abstract!2755) (Class!2755) (Val!2755) (DelimiterValue!5510 (del!2815 List!15191)) (KeywordValue!2761 (value!85575 List!15191)) (CommentValue!5510 (value!85576 List!15191)) (WhitespaceValue!5510 (value!85577 List!15191)) (IndentationValue!2755 (value!85578 List!15191)) (String!18030) (Int32!2755) (Broken!13776 (value!85579 List!15191)) (Boolean!2756) (Unit!24034) (OperatorValue!2758 (op!2815 List!15191)) (IdentifierValue!5510 (value!85580 List!15191)) (IdentifierValue!5511 (value!85581 List!15191)) (WhitespaceValue!5511 (value!85582 List!15191)) (True!5510) (False!5510) (Broken!13777 (value!85583 List!15191)) (Broken!13778 (value!85584 List!15191)) (True!5511) (RightBrace!2755) (RightBracket!2755) (Colon!2755) (Null!2755) (Comma!2755) (LeftBracket!2755) (False!5511) (LeftBrace!2755) (ImaginaryLiteralValue!2755 (text!19731 List!15191)) (StringLiteralValue!8265 (value!85585 List!15191)) (EOFValue!2755 (value!85586 List!15191)) (IdentValue!2755 (value!85587 List!15191)) (DelimiterValue!5511 (value!85588 List!15191)) (DedentValue!2755 (value!85589 List!15191)) (NewLineValue!2755 (value!85590 List!15191)) (IntegerValue!8265 (value!85591 (_ BitVec 32)) (text!19732 List!15191)) (IntegerValue!8266 (value!85592 Int) (text!19733 List!15191)) (Times!2755) (Or!2755) (Equal!2755) (Minus!2755) (Broken!13779 (value!85593 List!15191)) (And!2755) (Div!2755) (LessEqual!2755) (Mod!2755) (Concat!6734) (Not!2755) (Plus!2755) (SpaceValue!2755 (value!85594 List!15191)) (IntegerValue!8267 (value!85595 Int) (text!19734 List!15191)) (StringLiteralValue!8266 (text!19735 List!15191)) (FloatLiteralValue!5511 (text!19736 List!15191)) (BytesLiteralValue!2755 (value!85596 List!15191)) (CommentValue!5511 (value!85597 List!15191)) (StringLiteralValue!8267 (value!85598 List!15191)) (ErrorTokenValue!2755 (msg!2816 List!15191)) )
))
(declare-datatypes ((Regex!3979 0))(
  ( (ElementMatch!3979 (c!238837 C!8136)) (Concat!6735 (regOne!8470 Regex!3979) (regTwo!8470 Regex!3979)) (EmptyExpr!3979) (Star!3979 (reg!4308 Regex!3979)) (EmptyLang!3979) (Union!3979 (regOne!8471 Regex!3979) (regTwo!8471 Regex!3979)) )
))
(declare-datatypes ((String!18031 0))(
  ( (String!18032 (value!85599 String)) )
))
(declare-datatypes ((TokenValueInjection!5170 0))(
  ( (TokenValueInjection!5171 (toValue!3972 Int) (toChars!3831 Int)) )
))
(declare-datatypes ((Rule!5130 0))(
  ( (Rule!5131 (regex!2665 Regex!3979) (tag!2929 String!18031) (isSeparator!2665 Bool) (transformation!2665 TokenValueInjection!5170)) )
))
(declare-datatypes ((Token!4992 0))(
  ( (Token!4993 (value!85600 TokenValue!2755) (rule!4438 Rule!5130) (size!12363 Int) (originalCharacters!3527 List!15190)) )
))
(declare-datatypes ((List!15192 0))(
  ( (Nil!15126) (Cons!15126 (h!20527 Token!4992) (t!130593 List!15192)) )
))
(declare-datatypes ((IArray!10319 0))(
  ( (IArray!10320 (innerList!5217 List!15192)) )
))
(declare-datatypes ((Conc!5157 0))(
  ( (Node!5157 (left!12860 Conc!5157) (right!13190 Conc!5157) (csize!10544 Int) (cheight!5368 Int)) (Leaf!7691 (xs!7898 IArray!10319) (csize!10545 Int)) (Empty!5157) )
))
(declare-datatypes ((BalanceConc!10254 0))(
  ( (BalanceConc!10255 (c!238838 Conc!5157)) )
))
(declare-datatypes ((List!15193 0))(
  ( (Nil!15127) (Cons!15127 (h!20528 Rule!5130) (t!130594 List!15193)) )
))
(declare-datatypes ((PrintableTokens!1112 0))(
  ( (PrintableTokens!1113 (rules!11596 List!15193) (tokens!2074 BalanceConc!10254)) )
))
(declare-fun thiss!10022 () PrintableTokens!1112)

(declare-fun b!1450910 () Bool)

(declare-fun e!925825 () Bool)

(declare-fun tp!409415 () Bool)

(declare-fun inv!20187 (BalanceConc!10254) Bool)

(assert (=> b!1450910 (= e!925819 (and tp!409415 (inv!20187 (tokens!2074 thiss!10022)) e!925825))))

(declare-fun b!1450911 () Bool)

(declare-fun e!925826 () Bool)

(declare-fun e!925820 () Bool)

(assert (=> b!1450911 (= e!925826 (not e!925820))))

(declare-fun res!656998 () Bool)

(assert (=> b!1450911 (=> res!656998 e!925820)))

(declare-fun lt!500253 () Token!4992)

(declare-fun lt!500254 () Token!4992)

(declare-datatypes ((LexerInterface!2321 0))(
  ( (LexerInterfaceExt!2318 (__x!9301 Int)) (Lexer!2319) )
))
(declare-fun separableTokensPredicate!530 (LexerInterface!2321 Token!4992 Token!4992 List!15193) Bool)

(assert (=> b!1450911 (= res!656998 (not (separableTokensPredicate!530 Lexer!2319 lt!500254 lt!500253 (rules!11596 thiss!10022))))))

(declare-fun rulesProduceIndividualToken!1240 (LexerInterface!2321 List!15193 Token!4992) Bool)

(assert (=> b!1450911 (rulesProduceIndividualToken!1240 Lexer!2319 (rules!11596 thiss!10022) lt!500253)))

(declare-datatypes ((Unit!24035 0))(
  ( (Unit!24036) )
))
(declare-fun lt!500256 () Unit!24035)

(declare-fun lt!500252 () List!15192)

(declare-fun lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!423 (LexerInterface!2321 List!15193 List!15192 Token!4992) Unit!24035)

(assert (=> b!1450911 (= lt!500256 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!423 Lexer!2319 (rules!11596 thiss!10022) lt!500252 lt!500253))))

(declare-fun other!32 () PrintableTokens!1112)

(declare-fun head!2977 (BalanceConc!10254) Token!4992)

(assert (=> b!1450911 (= lt!500253 (head!2977 (tokens!2074 other!32)))))

(declare-fun list!6045 (BalanceConc!10254) List!15192)

(assert (=> b!1450911 (= lt!500252 (list!6045 (tokens!2074 other!32)))))

(assert (=> b!1450911 (rulesProduceIndividualToken!1240 Lexer!2319 (rules!11596 thiss!10022) lt!500254)))

(declare-fun lt!500257 () List!15192)

(declare-fun lt!500250 () Unit!24035)

(assert (=> b!1450911 (= lt!500250 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!423 Lexer!2319 (rules!11596 thiss!10022) lt!500257 lt!500254))))

(declare-fun last!249 (BalanceConc!10254) Token!4992)

(assert (=> b!1450911 (= lt!500254 (last!249 (tokens!2074 thiss!10022)))))

(assert (=> b!1450911 (= lt!500257 (list!6045 (tokens!2074 thiss!10022)))))

(declare-fun res!656997 () Bool)

(declare-fun e!925823 () Bool)

(assert (=> start!135282 (=> (not res!656997) (not e!925823))))

(assert (=> start!135282 (= res!656997 (= (rules!11596 thiss!10022) (rules!11596 other!32)))))

(assert (=> start!135282 e!925823))

(declare-fun inv!20188 (PrintableTokens!1112) Bool)

(assert (=> start!135282 (and (inv!20188 thiss!10022) e!925819)))

(declare-fun e!925824 () Bool)

(assert (=> start!135282 (and (inv!20188 other!32) e!925824)))

(declare-fun b!1450912 () Bool)

(declare-fun e!925821 () Bool)

(assert (=> b!1450912 (= e!925820 e!925821)))

(declare-fun res!656994 () Bool)

(assert (=> b!1450912 (=> (not res!656994) (not e!925821))))

(declare-fun rulesProduceEachTokenIndividuallyList!740 (LexerInterface!2321 List!15193 List!15192) Bool)

(assert (=> b!1450912 (= res!656994 (rulesProduceEachTokenIndividuallyList!740 Lexer!2319 (rules!11596 thiss!10022) lt!500257))))

(declare-fun b!1450913 () Bool)

(declare-fun res!656995 () Bool)

(assert (=> b!1450913 (=> res!656995 e!925820)))

(declare-fun isEmpty!9466 (List!15193) Bool)

(assert (=> b!1450913 (= res!656995 (isEmpty!9466 (rules!11596 thiss!10022)))))

(declare-fun b!1450914 () Bool)

(declare-fun tp!409417 () Bool)

(declare-fun inv!20189 (Conc!5157) Bool)

(assert (=> b!1450914 (= e!925825 (and (inv!20189 (c!238838 (tokens!2074 thiss!10022))) tp!409417))))

(declare-fun b!1450915 () Bool)

(declare-fun res!656992 () Bool)

(assert (=> b!1450915 (=> res!656992 e!925820)))

(declare-fun rulesInvariant!2154 (LexerInterface!2321 List!15193) Bool)

(assert (=> b!1450915 (= res!656992 (not (rulesInvariant!2154 Lexer!2319 (rules!11596 thiss!10022))))))

(declare-fun b!1450916 () Bool)

(assert (=> b!1450916 (= e!925821 (rulesProduceEachTokenIndividuallyList!740 Lexer!2319 (rules!11596 thiss!10022) lt!500252))))

(declare-fun b!1450917 () Bool)

(declare-fun res!656993 () Bool)

(assert (=> b!1450917 (=> (not res!656993) (not e!925826))))

(declare-fun isEmpty!9467 (BalanceConc!10254) Bool)

(assert (=> b!1450917 (= res!656993 (not (isEmpty!9467 (tokens!2074 thiss!10022))))))

(declare-fun b!1450918 () Bool)

(declare-fun e!925822 () Bool)

(declare-fun tp!409418 () Bool)

(assert (=> b!1450918 (= e!925822 (and (inv!20189 (c!238838 (tokens!2074 other!32))) tp!409418))))

(declare-fun tp!409416 () Bool)

(declare-fun b!1450919 () Bool)

(assert (=> b!1450919 (= e!925824 (and tp!409416 (inv!20187 (tokens!2074 other!32)) e!925822))))

(declare-fun b!1450920 () Bool)

(assert (=> b!1450920 (= e!925823 e!925826)))

(declare-fun res!656996 () Bool)

(assert (=> b!1450920 (=> (not res!656996) (not e!925826))))

(assert (=> b!1450920 (= res!656996 (not (isEmpty!9467 (tokens!2074 other!32))))))

(declare-fun lt!500251 () Unit!24035)

(declare-fun lemmaInvariant!361 (PrintableTokens!1112) Unit!24035)

(assert (=> b!1450920 (= lt!500251 (lemmaInvariant!361 thiss!10022))))

(declare-fun lt!500255 () Unit!24035)

(assert (=> b!1450920 (= lt!500255 (lemmaInvariant!361 other!32))))

(assert (= (and start!135282 res!656997) b!1450920))

(assert (= (and b!1450920 res!656996) b!1450917))

(assert (= (and b!1450917 res!656993) b!1450911))

(assert (= (and b!1450911 (not res!656998)) b!1450913))

(assert (= (and b!1450913 (not res!656995)) b!1450915))

(assert (= (and b!1450915 (not res!656992)) b!1450912))

(assert (= (and b!1450912 res!656994) b!1450916))

(assert (= b!1450910 b!1450914))

(assert (= start!135282 b!1450910))

(assert (= b!1450919 b!1450918))

(assert (= start!135282 b!1450919))

(declare-fun m!1674507 () Bool)

(assert (=> b!1450915 m!1674507))

(declare-fun m!1674509 () Bool)

(assert (=> start!135282 m!1674509))

(declare-fun m!1674511 () Bool)

(assert (=> start!135282 m!1674511))

(declare-fun m!1674513 () Bool)

(assert (=> b!1450917 m!1674513))

(declare-fun m!1674515 () Bool)

(assert (=> b!1450916 m!1674515))

(declare-fun m!1674517 () Bool)

(assert (=> b!1450918 m!1674517))

(declare-fun m!1674519 () Bool)

(assert (=> b!1450911 m!1674519))

(declare-fun m!1674521 () Bool)

(assert (=> b!1450911 m!1674521))

(declare-fun m!1674523 () Bool)

(assert (=> b!1450911 m!1674523))

(declare-fun m!1674525 () Bool)

(assert (=> b!1450911 m!1674525))

(declare-fun m!1674527 () Bool)

(assert (=> b!1450911 m!1674527))

(declare-fun m!1674529 () Bool)

(assert (=> b!1450911 m!1674529))

(declare-fun m!1674531 () Bool)

(assert (=> b!1450911 m!1674531))

(declare-fun m!1674533 () Bool)

(assert (=> b!1450911 m!1674533))

(declare-fun m!1674535 () Bool)

(assert (=> b!1450911 m!1674535))

(declare-fun m!1674537 () Bool)

(assert (=> b!1450912 m!1674537))

(declare-fun m!1674539 () Bool)

(assert (=> b!1450910 m!1674539))

(declare-fun m!1674541 () Bool)

(assert (=> b!1450919 m!1674541))

(declare-fun m!1674543 () Bool)

(assert (=> b!1450914 m!1674543))

(declare-fun m!1674545 () Bool)

(assert (=> b!1450913 m!1674545))

(declare-fun m!1674547 () Bool)

(assert (=> b!1450920 m!1674547))

(declare-fun m!1674549 () Bool)

(assert (=> b!1450920 m!1674549))

(declare-fun m!1674551 () Bool)

(assert (=> b!1450920 m!1674551))

(check-sat (not start!135282) (not b!1450914) (not b!1450917) (not b!1450920) (not b!1450916) (not b!1450915) (not b!1450910) (not b!1450911) (not b!1450913) (not b!1450912) (not b!1450918) (not b!1450919))
(check-sat)
(get-model)

(declare-fun d!421466 () Bool)

(declare-fun isBalanced!1538 (Conc!5157) Bool)

(assert (=> d!421466 (= (inv!20187 (tokens!2074 thiss!10022)) (isBalanced!1538 (c!238838 (tokens!2074 thiss!10022))))))

(declare-fun bs!342608 () Bool)

(assert (= bs!342608 d!421466))

(declare-fun m!1674553 () Bool)

(assert (=> bs!342608 m!1674553))

(assert (=> b!1450910 d!421466))

(declare-fun d!421470 () Bool)

(declare-fun lt!500265 () Bool)

(declare-fun e!925840 () Bool)

(assert (=> d!421470 (= lt!500265 e!925840)))

(declare-fun res!657015 () Bool)

(assert (=> d!421470 (=> (not res!657015) (not e!925840))))

(declare-datatypes ((tuple2!14208 0))(
  ( (tuple2!14209 (_1!7990 BalanceConc!10254) (_2!7990 BalanceConc!10252)) )
))
(declare-fun lex!1065 (LexerInterface!2321 List!15193 BalanceConc!10252) tuple2!14208)

(declare-fun print!1092 (LexerInterface!2321 BalanceConc!10254) BalanceConc!10252)

(declare-fun singletonSeq!1259 (Token!4992) BalanceConc!10254)

(assert (=> d!421470 (= res!657015 (= (list!6045 (_1!7990 (lex!1065 Lexer!2319 (rules!11596 thiss!10022) (print!1092 Lexer!2319 (singletonSeq!1259 lt!500253))))) (list!6045 (singletonSeq!1259 lt!500253))))))

(declare-fun e!925839 () Bool)

(assert (=> d!421470 (= lt!500265 e!925839)))

(declare-fun res!657013 () Bool)

(assert (=> d!421470 (=> (not res!657013) (not e!925839))))

(declare-fun lt!500266 () tuple2!14208)

(declare-fun size!12364 (BalanceConc!10254) Int)

(assert (=> d!421470 (= res!657013 (= (size!12364 (_1!7990 lt!500266)) 1))))

(assert (=> d!421470 (= lt!500266 (lex!1065 Lexer!2319 (rules!11596 thiss!10022) (print!1092 Lexer!2319 (singletonSeq!1259 lt!500253))))))

(assert (=> d!421470 (not (isEmpty!9466 (rules!11596 thiss!10022)))))

(assert (=> d!421470 (= (rulesProduceIndividualToken!1240 Lexer!2319 (rules!11596 thiss!10022) lt!500253) lt!500265)))

(declare-fun b!1450939 () Bool)

(declare-fun res!657014 () Bool)

(assert (=> b!1450939 (=> (not res!657014) (not e!925839))))

(declare-fun apply!3908 (BalanceConc!10254 Int) Token!4992)

(assert (=> b!1450939 (= res!657014 (= (apply!3908 (_1!7990 lt!500266) 0) lt!500253))))

(declare-fun b!1450940 () Bool)

(declare-fun isEmpty!9469 (BalanceConc!10252) Bool)

(assert (=> b!1450940 (= e!925839 (isEmpty!9469 (_2!7990 lt!500266)))))

(declare-fun b!1450941 () Bool)

(assert (=> b!1450941 (= e!925840 (isEmpty!9469 (_2!7990 (lex!1065 Lexer!2319 (rules!11596 thiss!10022) (print!1092 Lexer!2319 (singletonSeq!1259 lt!500253))))))))

(assert (= (and d!421470 res!657013) b!1450939))

(assert (= (and b!1450939 res!657014) b!1450940))

(assert (= (and d!421470 res!657015) b!1450941))

(declare-fun m!1674569 () Bool)

(assert (=> d!421470 m!1674569))

(declare-fun m!1674571 () Bool)

(assert (=> d!421470 m!1674571))

(declare-fun m!1674573 () Bool)

(assert (=> d!421470 m!1674573))

(declare-fun m!1674575 () Bool)

(assert (=> d!421470 m!1674575))

(assert (=> d!421470 m!1674571))

(assert (=> d!421470 m!1674545))

(assert (=> d!421470 m!1674571))

(declare-fun m!1674577 () Bool)

(assert (=> d!421470 m!1674577))

(assert (=> d!421470 m!1674577))

(declare-fun m!1674579 () Bool)

(assert (=> d!421470 m!1674579))

(declare-fun m!1674581 () Bool)

(assert (=> b!1450939 m!1674581))

(declare-fun m!1674583 () Bool)

(assert (=> b!1450940 m!1674583))

(assert (=> b!1450941 m!1674571))

(assert (=> b!1450941 m!1674571))

(assert (=> b!1450941 m!1674577))

(assert (=> b!1450941 m!1674577))

(assert (=> b!1450941 m!1674579))

(declare-fun m!1674585 () Bool)

(assert (=> b!1450941 m!1674585))

(assert (=> b!1450911 d!421470))

(declare-fun d!421482 () Bool)

(declare-fun list!6046 (Conc!5157) List!15192)

(assert (=> d!421482 (= (list!6045 (tokens!2074 other!32)) (list!6046 (c!238838 (tokens!2074 other!32))))))

(declare-fun bs!342611 () Bool)

(assert (= bs!342611 d!421482))

(declare-fun m!1674587 () Bool)

(assert (=> bs!342611 m!1674587))

(assert (=> b!1450911 d!421482))

(declare-fun d!421484 () Bool)

(declare-fun lt!500269 () Token!4992)

(declare-fun head!2978 (List!15192) Token!4992)

(assert (=> d!421484 (= lt!500269 (head!2978 (list!6045 (tokens!2074 other!32))))))

(declare-fun head!2979 (Conc!5157) Token!4992)

(assert (=> d!421484 (= lt!500269 (head!2979 (c!238838 (tokens!2074 other!32))))))

(assert (=> d!421484 (not (isEmpty!9467 (tokens!2074 other!32)))))

(assert (=> d!421484 (= (head!2977 (tokens!2074 other!32)) lt!500269)))

(declare-fun bs!342612 () Bool)

(assert (= bs!342612 d!421484))

(assert (=> bs!342612 m!1674527))

(assert (=> bs!342612 m!1674527))

(declare-fun m!1674589 () Bool)

(assert (=> bs!342612 m!1674589))

(declare-fun m!1674591 () Bool)

(assert (=> bs!342612 m!1674591))

(assert (=> bs!342612 m!1674547))

(assert (=> b!1450911 d!421484))

(declare-fun d!421486 () Bool)

(assert (=> d!421486 (rulesProduceIndividualToken!1240 Lexer!2319 (rules!11596 thiss!10022) lt!500253)))

(declare-fun lt!500272 () Unit!24035)

(declare-fun choose!8929 (LexerInterface!2321 List!15193 List!15192 Token!4992) Unit!24035)

(assert (=> d!421486 (= lt!500272 (choose!8929 Lexer!2319 (rules!11596 thiss!10022) lt!500252 lt!500253))))

(assert (=> d!421486 (not (isEmpty!9466 (rules!11596 thiss!10022)))))

(assert (=> d!421486 (= (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!423 Lexer!2319 (rules!11596 thiss!10022) lt!500252 lt!500253) lt!500272)))

(declare-fun bs!342613 () Bool)

(assert (= bs!342613 d!421486))

(assert (=> bs!342613 m!1674531))

(declare-fun m!1674605 () Bool)

(assert (=> bs!342613 m!1674605))

(assert (=> bs!342613 m!1674545))

(assert (=> b!1450911 d!421486))

(declare-fun d!421492 () Bool)

(declare-fun lt!500275 () Token!4992)

(declare-fun last!250 (List!15192) Token!4992)

(assert (=> d!421492 (= lt!500275 (last!250 (list!6045 (tokens!2074 thiss!10022))))))

(declare-fun last!251 (Conc!5157) Token!4992)

(assert (=> d!421492 (= lt!500275 (last!251 (c!238838 (tokens!2074 thiss!10022))))))

(assert (=> d!421492 (not (isEmpty!9467 (tokens!2074 thiss!10022)))))

(assert (=> d!421492 (= (last!249 (tokens!2074 thiss!10022)) lt!500275)))

(declare-fun bs!342614 () Bool)

(assert (= bs!342614 d!421492))

(assert (=> bs!342614 m!1674533))

(assert (=> bs!342614 m!1674533))

(declare-fun m!1674607 () Bool)

(assert (=> bs!342614 m!1674607))

(declare-fun m!1674609 () Bool)

(assert (=> bs!342614 m!1674609))

(assert (=> bs!342614 m!1674513))

(assert (=> b!1450911 d!421492))

(declare-fun d!421494 () Bool)

(assert (=> d!421494 (= (list!6045 (tokens!2074 thiss!10022)) (list!6046 (c!238838 (tokens!2074 thiss!10022))))))

(declare-fun bs!342615 () Bool)

(assert (= bs!342615 d!421494))

(declare-fun m!1674611 () Bool)

(assert (=> bs!342615 m!1674611))

(assert (=> b!1450911 d!421494))

(declare-fun d!421496 () Bool)

(assert (=> d!421496 (rulesProduceIndividualToken!1240 Lexer!2319 (rules!11596 thiss!10022) lt!500254)))

(declare-fun lt!500276 () Unit!24035)

(assert (=> d!421496 (= lt!500276 (choose!8929 Lexer!2319 (rules!11596 thiss!10022) lt!500257 lt!500254))))

(assert (=> d!421496 (not (isEmpty!9466 (rules!11596 thiss!10022)))))

(assert (=> d!421496 (= (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!423 Lexer!2319 (rules!11596 thiss!10022) lt!500257 lt!500254) lt!500276)))

(declare-fun bs!342616 () Bool)

(assert (= bs!342616 d!421496))

(assert (=> bs!342616 m!1674535))

(declare-fun m!1674613 () Bool)

(assert (=> bs!342616 m!1674613))

(assert (=> bs!342616 m!1674545))

(assert (=> b!1450911 d!421496))

(declare-fun d!421498 () Bool)

(declare-fun prefixMatchZipperSequence!339 (Regex!3979 BalanceConc!10252) Bool)

(declare-fun rulesRegex!401 (LexerInterface!2321 List!15193) Regex!3979)

(declare-fun ++!4056 (BalanceConc!10252 BalanceConc!10252) BalanceConc!10252)

(declare-fun charsOf!1527 (Token!4992) BalanceConc!10252)

(declare-fun singletonSeq!1260 (C!8136) BalanceConc!10252)

(declare-fun apply!3909 (BalanceConc!10252 Int) C!8136)

(assert (=> d!421498 (= (separableTokensPredicate!530 Lexer!2319 lt!500254 lt!500253 (rules!11596 thiss!10022)) (not (prefixMatchZipperSequence!339 (rulesRegex!401 Lexer!2319 (rules!11596 thiss!10022)) (++!4056 (charsOf!1527 lt!500254) (singletonSeq!1260 (apply!3909 (charsOf!1527 lt!500253) 0))))))))

(declare-fun bs!342617 () Bool)

(assert (= bs!342617 d!421498))

(declare-fun m!1674615 () Bool)

(assert (=> bs!342617 m!1674615))

(declare-fun m!1674617 () Bool)

(assert (=> bs!342617 m!1674617))

(declare-fun m!1674619 () Bool)

(assert (=> bs!342617 m!1674619))

(declare-fun m!1674621 () Bool)

(assert (=> bs!342617 m!1674621))

(declare-fun m!1674623 () Bool)

(assert (=> bs!342617 m!1674623))

(assert (=> bs!342617 m!1674621))

(declare-fun m!1674625 () Bool)

(assert (=> bs!342617 m!1674625))

(assert (=> bs!342617 m!1674619))

(declare-fun m!1674627 () Bool)

(assert (=> bs!342617 m!1674627))

(assert (=> bs!342617 m!1674623))

(assert (=> bs!342617 m!1674617))

(assert (=> bs!342617 m!1674625))

(assert (=> bs!342617 m!1674615))

(assert (=> b!1450911 d!421498))

(declare-fun d!421500 () Bool)

(declare-fun lt!500279 () Bool)

(declare-fun e!925850 () Bool)

(assert (=> d!421500 (= lt!500279 e!925850)))

(declare-fun res!657034 () Bool)

(assert (=> d!421500 (=> (not res!657034) (not e!925850))))

(assert (=> d!421500 (= res!657034 (= (list!6045 (_1!7990 (lex!1065 Lexer!2319 (rules!11596 thiss!10022) (print!1092 Lexer!2319 (singletonSeq!1259 lt!500254))))) (list!6045 (singletonSeq!1259 lt!500254))))))

(declare-fun e!925849 () Bool)

(assert (=> d!421500 (= lt!500279 e!925849)))

(declare-fun res!657032 () Bool)

(assert (=> d!421500 (=> (not res!657032) (not e!925849))))

(declare-fun lt!500280 () tuple2!14208)

(assert (=> d!421500 (= res!657032 (= (size!12364 (_1!7990 lt!500280)) 1))))

(assert (=> d!421500 (= lt!500280 (lex!1065 Lexer!2319 (rules!11596 thiss!10022) (print!1092 Lexer!2319 (singletonSeq!1259 lt!500254))))))

(assert (=> d!421500 (not (isEmpty!9466 (rules!11596 thiss!10022)))))

(assert (=> d!421500 (= (rulesProduceIndividualToken!1240 Lexer!2319 (rules!11596 thiss!10022) lt!500254) lt!500279)))

(declare-fun b!1450958 () Bool)

(declare-fun res!657033 () Bool)

(assert (=> b!1450958 (=> (not res!657033) (not e!925849))))

(assert (=> b!1450958 (= res!657033 (= (apply!3908 (_1!7990 lt!500280) 0) lt!500254))))

(declare-fun b!1450959 () Bool)

(assert (=> b!1450959 (= e!925849 (isEmpty!9469 (_2!7990 lt!500280)))))

(declare-fun b!1450960 () Bool)

(assert (=> b!1450960 (= e!925850 (isEmpty!9469 (_2!7990 (lex!1065 Lexer!2319 (rules!11596 thiss!10022) (print!1092 Lexer!2319 (singletonSeq!1259 lt!500254))))))))

(assert (= (and d!421500 res!657032) b!1450958))

(assert (= (and b!1450958 res!657033) b!1450959))

(assert (= (and d!421500 res!657034) b!1450960))

(declare-fun m!1674629 () Bool)

(assert (=> d!421500 m!1674629))

(declare-fun m!1674631 () Bool)

(assert (=> d!421500 m!1674631))

(declare-fun m!1674633 () Bool)

(assert (=> d!421500 m!1674633))

(declare-fun m!1674635 () Bool)

(assert (=> d!421500 m!1674635))

(assert (=> d!421500 m!1674631))

(assert (=> d!421500 m!1674545))

(assert (=> d!421500 m!1674631))

(declare-fun m!1674637 () Bool)

(assert (=> d!421500 m!1674637))

(assert (=> d!421500 m!1674637))

(declare-fun m!1674639 () Bool)

(assert (=> d!421500 m!1674639))

(declare-fun m!1674641 () Bool)

(assert (=> b!1450958 m!1674641))

(declare-fun m!1674643 () Bool)

(assert (=> b!1450959 m!1674643))

(assert (=> b!1450960 m!1674631))

(assert (=> b!1450960 m!1674631))

(assert (=> b!1450960 m!1674637))

(assert (=> b!1450960 m!1674637))

(assert (=> b!1450960 m!1674639))

(declare-fun m!1674645 () Bool)

(assert (=> b!1450960 m!1674645))

(assert (=> b!1450911 d!421500))

(declare-fun b!1450995 () Bool)

(declare-fun e!925879 () Bool)

(assert (=> b!1450995 (= e!925879 true)))

(declare-fun b!1450994 () Bool)

(declare-fun e!925878 () Bool)

(assert (=> b!1450994 (= e!925878 e!925879)))

(declare-fun b!1450993 () Bool)

(declare-fun e!925877 () Bool)

(assert (=> b!1450993 (= e!925877 e!925878)))

(declare-fun d!421502 () Bool)

(assert (=> d!421502 e!925877))

(assert (= b!1450994 b!1450995))

(assert (= b!1450993 b!1450994))

(get-info :version)

(assert (= (and d!421502 ((_ is Cons!15127) (rules!11596 thiss!10022))) b!1450993))

(declare-fun lambda!63057 () Int)

(declare-fun order!9089 () Int)

(declare-fun order!9091 () Int)

(declare-fun dynLambda!6881 (Int Int) Int)

(declare-fun dynLambda!6882 (Int Int) Int)

(assert (=> b!1450995 (< (dynLambda!6881 order!9089 (toValue!3972 (transformation!2665 (h!20528 (rules!11596 thiss!10022))))) (dynLambda!6882 order!9091 lambda!63057))))

(declare-fun order!9093 () Int)

(declare-fun dynLambda!6883 (Int Int) Int)

(assert (=> b!1450995 (< (dynLambda!6883 order!9093 (toChars!3831 (transformation!2665 (h!20528 (rules!11596 thiss!10022))))) (dynLambda!6882 order!9091 lambda!63057))))

(assert (=> d!421502 true))

(declare-fun lt!500285 () Bool)

(declare-fun forall!3716 (List!15192 Int) Bool)

(assert (=> d!421502 (= lt!500285 (forall!3716 lt!500257 lambda!63057))))

(declare-fun e!925869 () Bool)

(assert (=> d!421502 (= lt!500285 e!925869)))

(declare-fun res!657044 () Bool)

(assert (=> d!421502 (=> res!657044 e!925869)))

(assert (=> d!421502 (= res!657044 (not ((_ is Cons!15126) lt!500257)))))

(assert (=> d!421502 (not (isEmpty!9466 (rules!11596 thiss!10022)))))

(assert (=> d!421502 (= (rulesProduceEachTokenIndividuallyList!740 Lexer!2319 (rules!11596 thiss!10022) lt!500257) lt!500285)))

(declare-fun b!1450983 () Bool)

(declare-fun e!925870 () Bool)

(assert (=> b!1450983 (= e!925869 e!925870)))

(declare-fun res!657045 () Bool)

(assert (=> b!1450983 (=> (not res!657045) (not e!925870))))

(assert (=> b!1450983 (= res!657045 (rulesProduceIndividualToken!1240 Lexer!2319 (rules!11596 thiss!10022) (h!20527 lt!500257)))))

(declare-fun b!1450984 () Bool)

(assert (=> b!1450984 (= e!925870 (rulesProduceEachTokenIndividuallyList!740 Lexer!2319 (rules!11596 thiss!10022) (t!130593 lt!500257)))))

(assert (= (and d!421502 (not res!657044)) b!1450983))

(assert (= (and b!1450983 res!657045) b!1450984))

(declare-fun m!1674663 () Bool)

(assert (=> d!421502 m!1674663))

(assert (=> d!421502 m!1674545))

(declare-fun m!1674665 () Bool)

(assert (=> b!1450983 m!1674665))

(declare-fun m!1674667 () Bool)

(assert (=> b!1450984 m!1674667))

(assert (=> b!1450912 d!421502))

(declare-fun d!421512 () Bool)

(declare-fun res!657068 () Bool)

(declare-fun e!925895 () Bool)

(assert (=> d!421512 (=> (not res!657068) (not e!925895))))

(assert (=> d!421512 (= res!657068 (not (isEmpty!9466 (rules!11596 thiss!10022))))))

(assert (=> d!421512 (= (inv!20188 thiss!10022) e!925895)))

(declare-fun b!1451023 () Bool)

(declare-fun res!657069 () Bool)

(assert (=> b!1451023 (=> (not res!657069) (not e!925895))))

(assert (=> b!1451023 (= res!657069 (rulesInvariant!2154 Lexer!2319 (rules!11596 thiss!10022)))))

(declare-fun b!1451024 () Bool)

(declare-fun res!657070 () Bool)

(assert (=> b!1451024 (=> (not res!657070) (not e!925895))))

(declare-fun rulesProduceEachTokenIndividually!871 (LexerInterface!2321 List!15193 BalanceConc!10254) Bool)

(assert (=> b!1451024 (= res!657070 (rulesProduceEachTokenIndividually!871 Lexer!2319 (rules!11596 thiss!10022) (tokens!2074 thiss!10022)))))

(declare-fun b!1451025 () Bool)

(declare-fun separableTokens!255 (LexerInterface!2321 BalanceConc!10254 List!15193) Bool)

(assert (=> b!1451025 (= e!925895 (separableTokens!255 Lexer!2319 (tokens!2074 thiss!10022) (rules!11596 thiss!10022)))))

(assert (= (and d!421512 res!657068) b!1451023))

(assert (= (and b!1451023 res!657069) b!1451024))

(assert (= (and b!1451024 res!657070) b!1451025))

(assert (=> d!421512 m!1674545))

(assert (=> b!1451023 m!1674507))

(declare-fun m!1674675 () Bool)

(assert (=> b!1451024 m!1674675))

(declare-fun m!1674677 () Bool)

(assert (=> b!1451025 m!1674677))

(assert (=> start!135282 d!421512))

(declare-fun d!421520 () Bool)

(declare-fun res!657071 () Bool)

(declare-fun e!925896 () Bool)

(assert (=> d!421520 (=> (not res!657071) (not e!925896))))

(assert (=> d!421520 (= res!657071 (not (isEmpty!9466 (rules!11596 other!32))))))

(assert (=> d!421520 (= (inv!20188 other!32) e!925896)))

(declare-fun b!1451026 () Bool)

(declare-fun res!657072 () Bool)

(assert (=> b!1451026 (=> (not res!657072) (not e!925896))))

(assert (=> b!1451026 (= res!657072 (rulesInvariant!2154 Lexer!2319 (rules!11596 other!32)))))

(declare-fun b!1451027 () Bool)

(declare-fun res!657073 () Bool)

(assert (=> b!1451027 (=> (not res!657073) (not e!925896))))

(assert (=> b!1451027 (= res!657073 (rulesProduceEachTokenIndividually!871 Lexer!2319 (rules!11596 other!32) (tokens!2074 other!32)))))

(declare-fun b!1451028 () Bool)

(assert (=> b!1451028 (= e!925896 (separableTokens!255 Lexer!2319 (tokens!2074 other!32) (rules!11596 other!32)))))

(assert (= (and d!421520 res!657071) b!1451026))

(assert (= (and b!1451026 res!657072) b!1451027))

(assert (= (and b!1451027 res!657073) b!1451028))

(declare-fun m!1674679 () Bool)

(assert (=> d!421520 m!1674679))

(declare-fun m!1674681 () Bool)

(assert (=> b!1451026 m!1674681))

(declare-fun m!1674683 () Bool)

(assert (=> b!1451027 m!1674683))

(declare-fun m!1674685 () Bool)

(assert (=> b!1451028 m!1674685))

(assert (=> start!135282 d!421520))

(declare-fun d!421522 () Bool)

(assert (=> d!421522 (= (isEmpty!9466 (rules!11596 thiss!10022)) ((_ is Nil!15127) (rules!11596 thiss!10022)))))

(assert (=> b!1450913 d!421522))

(declare-fun d!421524 () Bool)

(declare-fun c!238845 () Bool)

(assert (=> d!421524 (= c!238845 ((_ is Node!5157) (c!238838 (tokens!2074 thiss!10022))))))

(declare-fun e!925903 () Bool)

(assert (=> d!421524 (= (inv!20189 (c!238838 (tokens!2074 thiss!10022))) e!925903)))

(declare-fun b!1451038 () Bool)

(declare-fun inv!20192 (Conc!5157) Bool)

(assert (=> b!1451038 (= e!925903 (inv!20192 (c!238838 (tokens!2074 thiss!10022))))))

(declare-fun b!1451039 () Bool)

(declare-fun e!925904 () Bool)

(assert (=> b!1451039 (= e!925903 e!925904)))

(declare-fun res!657079 () Bool)

(assert (=> b!1451039 (= res!657079 (not ((_ is Leaf!7691) (c!238838 (tokens!2074 thiss!10022)))))))

(assert (=> b!1451039 (=> res!657079 e!925904)))

(declare-fun b!1451040 () Bool)

(declare-fun inv!20193 (Conc!5157) Bool)

(assert (=> b!1451040 (= e!925904 (inv!20193 (c!238838 (tokens!2074 thiss!10022))))))

(assert (= (and d!421524 c!238845) b!1451038))

(assert (= (and d!421524 (not c!238845)) b!1451039))

(assert (= (and b!1451039 (not res!657079)) b!1451040))

(declare-fun m!1674707 () Bool)

(assert (=> b!1451038 m!1674707))

(declare-fun m!1674709 () Bool)

(assert (=> b!1451040 m!1674709))

(assert (=> b!1450914 d!421524))

(declare-fun d!421530 () Bool)

(declare-fun res!657082 () Bool)

(declare-fun e!925907 () Bool)

(assert (=> d!421530 (=> (not res!657082) (not e!925907))))

(declare-fun rulesValid!982 (LexerInterface!2321 List!15193) Bool)

(assert (=> d!421530 (= res!657082 (rulesValid!982 Lexer!2319 (rules!11596 thiss!10022)))))

(assert (=> d!421530 (= (rulesInvariant!2154 Lexer!2319 (rules!11596 thiss!10022)) e!925907)))

(declare-fun b!1451043 () Bool)

(declare-datatypes ((List!15195 0))(
  ( (Nil!15129) (Cons!15129 (h!20530 String!18031) (t!130604 List!15195)) )
))
(declare-fun noDuplicateTag!982 (LexerInterface!2321 List!15193 List!15195) Bool)

(assert (=> b!1451043 (= e!925907 (noDuplicateTag!982 Lexer!2319 (rules!11596 thiss!10022) Nil!15129))))

(assert (= (and d!421530 res!657082) b!1451043))

(declare-fun m!1674711 () Bool)

(assert (=> d!421530 m!1674711))

(declare-fun m!1674713 () Bool)

(assert (=> b!1451043 m!1674713))

(assert (=> b!1450915 d!421530))

(declare-fun bs!342622 () Bool)

(declare-fun d!421532 () Bool)

(assert (= bs!342622 (and d!421532 d!421502)))

(declare-fun lambda!63059 () Int)

(assert (=> bs!342622 (= lambda!63059 lambda!63057)))

(declare-fun b!1451048 () Bool)

(declare-fun e!925912 () Bool)

(assert (=> b!1451048 (= e!925912 true)))

(declare-fun b!1451047 () Bool)

(declare-fun e!925911 () Bool)

(assert (=> b!1451047 (= e!925911 e!925912)))

(declare-fun b!1451046 () Bool)

(declare-fun e!925910 () Bool)

(assert (=> b!1451046 (= e!925910 e!925911)))

(assert (=> d!421532 e!925910))

(assert (= b!1451047 b!1451048))

(assert (= b!1451046 b!1451047))

(assert (= (and d!421532 ((_ is Cons!15127) (rules!11596 thiss!10022))) b!1451046))

(assert (=> b!1451048 (< (dynLambda!6881 order!9089 (toValue!3972 (transformation!2665 (h!20528 (rules!11596 thiss!10022))))) (dynLambda!6882 order!9091 lambda!63059))))

(assert (=> b!1451048 (< (dynLambda!6883 order!9093 (toChars!3831 (transformation!2665 (h!20528 (rules!11596 thiss!10022))))) (dynLambda!6882 order!9091 lambda!63059))))

(assert (=> d!421532 true))

(declare-fun lt!500295 () Bool)

(assert (=> d!421532 (= lt!500295 (forall!3716 lt!500252 lambda!63059))))

(declare-fun e!925908 () Bool)

(assert (=> d!421532 (= lt!500295 e!925908)))

(declare-fun res!657083 () Bool)

(assert (=> d!421532 (=> res!657083 e!925908)))

(assert (=> d!421532 (= res!657083 (not ((_ is Cons!15126) lt!500252)))))

(assert (=> d!421532 (not (isEmpty!9466 (rules!11596 thiss!10022)))))

(assert (=> d!421532 (= (rulesProduceEachTokenIndividuallyList!740 Lexer!2319 (rules!11596 thiss!10022) lt!500252) lt!500295)))

(declare-fun b!1451044 () Bool)

(declare-fun e!925909 () Bool)

(assert (=> b!1451044 (= e!925908 e!925909)))

(declare-fun res!657084 () Bool)

(assert (=> b!1451044 (=> (not res!657084) (not e!925909))))

(assert (=> b!1451044 (= res!657084 (rulesProduceIndividualToken!1240 Lexer!2319 (rules!11596 thiss!10022) (h!20527 lt!500252)))))

(declare-fun b!1451045 () Bool)

(assert (=> b!1451045 (= e!925909 (rulesProduceEachTokenIndividuallyList!740 Lexer!2319 (rules!11596 thiss!10022) (t!130593 lt!500252)))))

(assert (= (and d!421532 (not res!657083)) b!1451044))

(assert (= (and b!1451044 res!657084) b!1451045))

(declare-fun m!1674721 () Bool)

(assert (=> d!421532 m!1674721))

(assert (=> d!421532 m!1674545))

(declare-fun m!1674723 () Bool)

(assert (=> b!1451044 m!1674723))

(declare-fun m!1674725 () Bool)

(assert (=> b!1451045 m!1674725))

(assert (=> b!1450916 d!421532))

(declare-fun d!421538 () Bool)

(declare-fun lt!500299 () Bool)

(declare-fun isEmpty!9472 (List!15192) Bool)

(assert (=> d!421538 (= lt!500299 (isEmpty!9472 (list!6045 (tokens!2074 thiss!10022))))))

(declare-fun isEmpty!9473 (Conc!5157) Bool)

(assert (=> d!421538 (= lt!500299 (isEmpty!9473 (c!238838 (tokens!2074 thiss!10022))))))

(assert (=> d!421538 (= (isEmpty!9467 (tokens!2074 thiss!10022)) lt!500299)))

(declare-fun bs!342625 () Bool)

(assert (= bs!342625 d!421538))

(assert (=> bs!342625 m!1674533))

(assert (=> bs!342625 m!1674533))

(declare-fun m!1674727 () Bool)

(assert (=> bs!342625 m!1674727))

(declare-fun m!1674729 () Bool)

(assert (=> bs!342625 m!1674729))

(assert (=> b!1450917 d!421538))

(declare-fun d!421540 () Bool)

(declare-fun c!238846 () Bool)

(assert (=> d!421540 (= c!238846 ((_ is Node!5157) (c!238838 (tokens!2074 other!32))))))

(declare-fun e!925913 () Bool)

(assert (=> d!421540 (= (inv!20189 (c!238838 (tokens!2074 other!32))) e!925913)))

(declare-fun b!1451049 () Bool)

(assert (=> b!1451049 (= e!925913 (inv!20192 (c!238838 (tokens!2074 other!32))))))

(declare-fun b!1451050 () Bool)

(declare-fun e!925914 () Bool)

(assert (=> b!1451050 (= e!925913 e!925914)))

(declare-fun res!657085 () Bool)

(assert (=> b!1451050 (= res!657085 (not ((_ is Leaf!7691) (c!238838 (tokens!2074 other!32)))))))

(assert (=> b!1451050 (=> res!657085 e!925914)))

(declare-fun b!1451051 () Bool)

(assert (=> b!1451051 (= e!925914 (inv!20193 (c!238838 (tokens!2074 other!32))))))

(assert (= (and d!421540 c!238846) b!1451049))

(assert (= (and d!421540 (not c!238846)) b!1451050))

(assert (= (and b!1451050 (not res!657085)) b!1451051))

(declare-fun m!1674731 () Bool)

(assert (=> b!1451049 m!1674731))

(declare-fun m!1674733 () Bool)

(assert (=> b!1451051 m!1674733))

(assert (=> b!1450918 d!421540))

(declare-fun d!421542 () Bool)

(assert (=> d!421542 (= (inv!20187 (tokens!2074 other!32)) (isBalanced!1538 (c!238838 (tokens!2074 other!32))))))

(declare-fun bs!342626 () Bool)

(assert (= bs!342626 d!421542))

(declare-fun m!1674735 () Bool)

(assert (=> bs!342626 m!1674735))

(assert (=> b!1450919 d!421542))

(declare-fun d!421544 () Bool)

(declare-fun lt!500300 () Bool)

(assert (=> d!421544 (= lt!500300 (isEmpty!9472 (list!6045 (tokens!2074 other!32))))))

(assert (=> d!421544 (= lt!500300 (isEmpty!9473 (c!238838 (tokens!2074 other!32))))))

(assert (=> d!421544 (= (isEmpty!9467 (tokens!2074 other!32)) lt!500300)))

(declare-fun bs!342627 () Bool)

(assert (= bs!342627 d!421544))

(assert (=> bs!342627 m!1674527))

(assert (=> bs!342627 m!1674527))

(declare-fun m!1674737 () Bool)

(assert (=> bs!342627 m!1674737))

(declare-fun m!1674739 () Bool)

(assert (=> bs!342627 m!1674739))

(assert (=> b!1450920 d!421544))

(declare-fun d!421546 () Bool)

(declare-fun e!925917 () Bool)

(assert (=> d!421546 e!925917))

(declare-fun res!657090 () Bool)

(assert (=> d!421546 (=> (not res!657090) (not e!925917))))

(assert (=> d!421546 (= res!657090 (rulesInvariant!2154 Lexer!2319 (rules!11596 thiss!10022)))))

(declare-fun Unit!24039 () Unit!24035)

(assert (=> d!421546 (= (lemmaInvariant!361 thiss!10022) Unit!24039)))

(declare-fun b!1451056 () Bool)

(declare-fun res!657091 () Bool)

(assert (=> b!1451056 (=> (not res!657091) (not e!925917))))

(assert (=> b!1451056 (= res!657091 (rulesProduceEachTokenIndividually!871 Lexer!2319 (rules!11596 thiss!10022) (tokens!2074 thiss!10022)))))

(declare-fun b!1451057 () Bool)

(assert (=> b!1451057 (= e!925917 (separableTokens!255 Lexer!2319 (tokens!2074 thiss!10022) (rules!11596 thiss!10022)))))

(assert (= (and d!421546 res!657090) b!1451056))

(assert (= (and b!1451056 res!657091) b!1451057))

(assert (=> d!421546 m!1674507))

(assert (=> b!1451056 m!1674675))

(assert (=> b!1451057 m!1674677))

(assert (=> b!1450920 d!421546))

(declare-fun d!421550 () Bool)

(declare-fun e!925918 () Bool)

(assert (=> d!421550 e!925918))

(declare-fun res!657092 () Bool)

(assert (=> d!421550 (=> (not res!657092) (not e!925918))))

(assert (=> d!421550 (= res!657092 (rulesInvariant!2154 Lexer!2319 (rules!11596 other!32)))))

(declare-fun Unit!24040 () Unit!24035)

(assert (=> d!421550 (= (lemmaInvariant!361 other!32) Unit!24040)))

(declare-fun b!1451058 () Bool)

(declare-fun res!657093 () Bool)

(assert (=> b!1451058 (=> (not res!657093) (not e!925918))))

(assert (=> b!1451058 (= res!657093 (rulesProduceEachTokenIndividually!871 Lexer!2319 (rules!11596 other!32) (tokens!2074 other!32)))))

(declare-fun b!1451059 () Bool)

(assert (=> b!1451059 (= e!925918 (separableTokens!255 Lexer!2319 (tokens!2074 other!32) (rules!11596 other!32)))))

(assert (= (and d!421550 res!657092) b!1451058))

(assert (= (and b!1451058 res!657093) b!1451059))

(assert (=> d!421550 m!1674681))

(assert (=> b!1451058 m!1674683))

(assert (=> b!1451059 m!1674685))

(assert (=> b!1450920 d!421550))

(declare-fun b!1451070 () Bool)

(declare-fun b_free!36127 () Bool)

(declare-fun b_next!36831 () Bool)

(assert (=> b!1451070 (= b_free!36127 (not b_next!36831))))

(declare-fun tp!409428 () Bool)

(declare-fun b_and!98191 () Bool)

(assert (=> b!1451070 (= tp!409428 b_and!98191)))

(declare-fun b_free!36129 () Bool)

(declare-fun b_next!36833 () Bool)

(assert (=> b!1451070 (= b_free!36129 (not b_next!36833))))

(declare-fun tp!409430 () Bool)

(declare-fun b_and!98193 () Bool)

(assert (=> b!1451070 (= tp!409430 b_and!98193)))

(declare-fun e!925929 () Bool)

(assert (=> b!1451070 (= e!925929 (and tp!409428 tp!409430))))

(declare-fun e!925930 () Bool)

(declare-fun b!1451069 () Bool)

(declare-fun tp!409427 () Bool)

(declare-fun inv!20183 (String!18031) Bool)

(declare-fun inv!20194 (TokenValueInjection!5170) Bool)

(assert (=> b!1451069 (= e!925930 (and tp!409427 (inv!20183 (tag!2929 (h!20528 (rules!11596 thiss!10022)))) (inv!20194 (transformation!2665 (h!20528 (rules!11596 thiss!10022)))) e!925929))))

(declare-fun b!1451068 () Bool)

(declare-fun e!925928 () Bool)

(declare-fun tp!409429 () Bool)

(assert (=> b!1451068 (= e!925928 (and e!925930 tp!409429))))

(assert (=> b!1450910 (= tp!409415 e!925928)))

(assert (= b!1451069 b!1451070))

(assert (= b!1451068 b!1451069))

(assert (= (and b!1450910 ((_ is Cons!15127) (rules!11596 thiss!10022))) b!1451068))

(declare-fun m!1674759 () Bool)

(assert (=> b!1451069 m!1674759))

(declare-fun m!1674761 () Bool)

(assert (=> b!1451069 m!1674761))

(declare-fun e!925936 () Bool)

(declare-fun b!1451079 () Bool)

(declare-fun tp!409438 () Bool)

(declare-fun tp!409439 () Bool)

(assert (=> b!1451079 (= e!925936 (and (inv!20189 (left!12860 (c!238838 (tokens!2074 other!32)))) tp!409439 (inv!20189 (right!13190 (c!238838 (tokens!2074 other!32)))) tp!409438))))

(declare-fun b!1451081 () Bool)

(declare-fun e!925935 () Bool)

(declare-fun tp!409437 () Bool)

(assert (=> b!1451081 (= e!925935 tp!409437)))

(declare-fun b!1451080 () Bool)

(declare-fun inv!20195 (IArray!10319) Bool)

(assert (=> b!1451080 (= e!925936 (and (inv!20195 (xs!7898 (c!238838 (tokens!2074 other!32)))) e!925935))))

(assert (=> b!1450918 (= tp!409418 (and (inv!20189 (c!238838 (tokens!2074 other!32))) e!925936))))

(assert (= (and b!1450918 ((_ is Node!5157) (c!238838 (tokens!2074 other!32)))) b!1451079))

(assert (= b!1451080 b!1451081))

(assert (= (and b!1450918 ((_ is Leaf!7691) (c!238838 (tokens!2074 other!32)))) b!1451080))

(declare-fun m!1674763 () Bool)

(assert (=> b!1451079 m!1674763))

(declare-fun m!1674765 () Bool)

(assert (=> b!1451079 m!1674765))

(declare-fun m!1674767 () Bool)

(assert (=> b!1451080 m!1674767))

(assert (=> b!1450918 m!1674517))

(declare-fun tp!409442 () Bool)

(declare-fun tp!409441 () Bool)

(declare-fun e!925938 () Bool)

(declare-fun b!1451082 () Bool)

(assert (=> b!1451082 (= e!925938 (and (inv!20189 (left!12860 (c!238838 (tokens!2074 thiss!10022)))) tp!409442 (inv!20189 (right!13190 (c!238838 (tokens!2074 thiss!10022)))) tp!409441))))

(declare-fun b!1451084 () Bool)

(declare-fun e!925937 () Bool)

(declare-fun tp!409440 () Bool)

(assert (=> b!1451084 (= e!925937 tp!409440)))

(declare-fun b!1451083 () Bool)

(assert (=> b!1451083 (= e!925938 (and (inv!20195 (xs!7898 (c!238838 (tokens!2074 thiss!10022)))) e!925937))))

(assert (=> b!1450914 (= tp!409417 (and (inv!20189 (c!238838 (tokens!2074 thiss!10022))) e!925938))))

(assert (= (and b!1450914 ((_ is Node!5157) (c!238838 (tokens!2074 thiss!10022)))) b!1451082))

(assert (= b!1451083 b!1451084))

(assert (= (and b!1450914 ((_ is Leaf!7691) (c!238838 (tokens!2074 thiss!10022)))) b!1451083))

(declare-fun m!1674769 () Bool)

(assert (=> b!1451082 m!1674769))

(declare-fun m!1674771 () Bool)

(assert (=> b!1451082 m!1674771))

(declare-fun m!1674773 () Bool)

(assert (=> b!1451083 m!1674773))

(assert (=> b!1450914 m!1674543))

(declare-fun b!1451087 () Bool)

(declare-fun b_free!36131 () Bool)

(declare-fun b_next!36835 () Bool)

(assert (=> b!1451087 (= b_free!36131 (not b_next!36835))))

(declare-fun tp!409444 () Bool)

(declare-fun b_and!98195 () Bool)

(assert (=> b!1451087 (= tp!409444 b_and!98195)))

(declare-fun b_free!36133 () Bool)

(declare-fun b_next!36837 () Bool)

(assert (=> b!1451087 (= b_free!36133 (not b_next!36837))))

(declare-fun tp!409446 () Bool)

(declare-fun b_and!98197 () Bool)

(assert (=> b!1451087 (= tp!409446 b_and!98197)))

(declare-fun e!925941 () Bool)

(assert (=> b!1451087 (= e!925941 (and tp!409444 tp!409446))))

(declare-fun tp!409443 () Bool)

(declare-fun b!1451086 () Bool)

(declare-fun e!925942 () Bool)

(assert (=> b!1451086 (= e!925942 (and tp!409443 (inv!20183 (tag!2929 (h!20528 (rules!11596 other!32)))) (inv!20194 (transformation!2665 (h!20528 (rules!11596 other!32)))) e!925941))))

(declare-fun b!1451085 () Bool)

(declare-fun e!925940 () Bool)

(declare-fun tp!409445 () Bool)

(assert (=> b!1451085 (= e!925940 (and e!925942 tp!409445))))

(assert (=> b!1450919 (= tp!409416 e!925940)))

(assert (= b!1451086 b!1451087))

(assert (= b!1451085 b!1451086))

(assert (= (and b!1450919 ((_ is Cons!15127) (rules!11596 other!32))) b!1451085))

(declare-fun m!1674775 () Bool)

(assert (=> b!1451086 m!1674775))

(declare-fun m!1674777 () Bool)

(assert (=> b!1451086 m!1674777))

(check-sat (not d!421466) (not b!1451082) (not b!1451028) (not d!421492) (not d!421538) (not b!1451051) (not b!1451026) (not b_next!36833) (not d!421530) (not b!1451069) (not d!421544) (not b!1450984) (not b!1451040) (not b!1450939) (not b!1451057) (not b!1451086) (not b!1450914) (not d!421546) (not b!1451025) (not d!421486) b_and!98197 (not b!1451044) (not b!1451085) (not b!1450993) (not d!421484) b_and!98191 (not b!1451046) (not d!421494) (not b!1451023) (not b!1450983) (not b_next!36835) (not b!1451068) (not b!1450959) (not b!1451058) (not b!1451081) (not b!1451059) (not d!421532) (not b!1451038) (not b!1450918) (not d!421512) (not d!421550) (not b!1451043) (not b!1451045) (not b!1451083) (not b!1451080) (not b!1451056) (not d!421496) (not b_next!36831) (not d!421502) (not b!1450958) (not b!1451084) (not b_next!36837) (not b!1451024) (not d!421498) (not d!421470) (not d!421500) (not b!1450940) (not d!421482) (not b!1450960) b_and!98193 (not b!1451049) (not d!421520) (not b!1451079) (not b!1451027) b_and!98195 (not b!1450941) (not d!421542))
(check-sat (not b_next!36833) b_and!98197 b_and!98191 (not b_next!36835) (not b_next!36831) (not b_next!36837) b_and!98193 b_and!98195)
(get-model)

(declare-fun d!421558 () Bool)

(assert (=> d!421558 (= (inv!20183 (tag!2929 (h!20528 (rules!11596 other!32)))) (= (mod (str.len (value!85599 (tag!2929 (h!20528 (rules!11596 other!32))))) 2) 0))))

(assert (=> b!1451086 d!421558))

(declare-fun d!421560 () Bool)

(declare-fun res!657103 () Bool)

(declare-fun e!925971 () Bool)

(assert (=> d!421560 (=> (not res!657103) (not e!925971))))

(declare-fun semiInverseModEq!1003 (Int Int) Bool)

(assert (=> d!421560 (= res!657103 (semiInverseModEq!1003 (toChars!3831 (transformation!2665 (h!20528 (rules!11596 other!32)))) (toValue!3972 (transformation!2665 (h!20528 (rules!11596 other!32))))))))

(assert (=> d!421560 (= (inv!20194 (transformation!2665 (h!20528 (rules!11596 other!32)))) e!925971)))

(declare-fun b!1451121 () Bool)

(declare-fun equivClasses!962 (Int Int) Bool)

(assert (=> b!1451121 (= e!925971 (equivClasses!962 (toChars!3831 (transformation!2665 (h!20528 (rules!11596 other!32)))) (toValue!3972 (transformation!2665 (h!20528 (rules!11596 other!32))))))))

(assert (= (and d!421560 res!657103) b!1451121))

(declare-fun m!1674821 () Bool)

(assert (=> d!421560 m!1674821))

(declare-fun m!1674823 () Bool)

(assert (=> b!1451121 m!1674823))

(assert (=> b!1451086 d!421560))

(declare-fun bs!342632 () Bool)

(declare-fun d!421562 () Bool)

(assert (= bs!342632 (and d!421562 d!421502)))

(declare-fun lambda!63060 () Int)

(assert (=> bs!342632 (= lambda!63060 lambda!63057)))

(declare-fun bs!342633 () Bool)

(assert (= bs!342633 (and d!421562 d!421532)))

(assert (=> bs!342633 (= lambda!63060 lambda!63059)))

(declare-fun b!1451126 () Bool)

(declare-fun e!925976 () Bool)

(assert (=> b!1451126 (= e!925976 true)))

(declare-fun b!1451125 () Bool)

(declare-fun e!925975 () Bool)

(assert (=> b!1451125 (= e!925975 e!925976)))

(declare-fun b!1451124 () Bool)

(declare-fun e!925974 () Bool)

(assert (=> b!1451124 (= e!925974 e!925975)))

(assert (=> d!421562 e!925974))

(assert (= b!1451125 b!1451126))

(assert (= b!1451124 b!1451125))

(assert (= (and d!421562 ((_ is Cons!15127) (rules!11596 thiss!10022))) b!1451124))

(assert (=> b!1451126 (< (dynLambda!6881 order!9089 (toValue!3972 (transformation!2665 (h!20528 (rules!11596 thiss!10022))))) (dynLambda!6882 order!9091 lambda!63060))))

(assert (=> b!1451126 (< (dynLambda!6883 order!9093 (toChars!3831 (transformation!2665 (h!20528 (rules!11596 thiss!10022))))) (dynLambda!6882 order!9091 lambda!63060))))

(assert (=> d!421562 true))

(declare-fun lt!500310 () Bool)

(assert (=> d!421562 (= lt!500310 (forall!3716 (t!130593 lt!500257) lambda!63060))))

(declare-fun e!925972 () Bool)

(assert (=> d!421562 (= lt!500310 e!925972)))

(declare-fun res!657104 () Bool)

(assert (=> d!421562 (=> res!657104 e!925972)))

(assert (=> d!421562 (= res!657104 (not ((_ is Cons!15126) (t!130593 lt!500257))))))

(assert (=> d!421562 (not (isEmpty!9466 (rules!11596 thiss!10022)))))

(assert (=> d!421562 (= (rulesProduceEachTokenIndividuallyList!740 Lexer!2319 (rules!11596 thiss!10022) (t!130593 lt!500257)) lt!500310)))

(declare-fun b!1451122 () Bool)

(declare-fun e!925973 () Bool)

(assert (=> b!1451122 (= e!925972 e!925973)))

(declare-fun res!657105 () Bool)

(assert (=> b!1451122 (=> (not res!657105) (not e!925973))))

(assert (=> b!1451122 (= res!657105 (rulesProduceIndividualToken!1240 Lexer!2319 (rules!11596 thiss!10022) (h!20527 (t!130593 lt!500257))))))

(declare-fun b!1451123 () Bool)

(assert (=> b!1451123 (= e!925973 (rulesProduceEachTokenIndividuallyList!740 Lexer!2319 (rules!11596 thiss!10022) (t!130593 (t!130593 lt!500257))))))

(assert (= (and d!421562 (not res!657104)) b!1451122))

(assert (= (and b!1451122 res!657105) b!1451123))

(declare-fun m!1674825 () Bool)

(assert (=> d!421562 m!1674825))

(assert (=> d!421562 m!1674545))

(declare-fun m!1674827 () Bool)

(assert (=> b!1451122 m!1674827))

(declare-fun m!1674829 () Bool)

(assert (=> b!1451123 m!1674829))

(assert (=> b!1450984 d!421562))

(declare-fun b!1451135 () Bool)

(declare-fun e!925981 () List!15192)

(assert (=> b!1451135 (= e!925981 Nil!15126)))

(declare-fun d!421564 () Bool)

(declare-fun c!238851 () Bool)

(assert (=> d!421564 (= c!238851 ((_ is Empty!5157) (c!238838 (tokens!2074 other!32))))))

(assert (=> d!421564 (= (list!6046 (c!238838 (tokens!2074 other!32))) e!925981)))

(declare-fun b!1451136 () Bool)

(declare-fun e!925982 () List!15192)

(assert (=> b!1451136 (= e!925981 e!925982)))

(declare-fun c!238852 () Bool)

(assert (=> b!1451136 (= c!238852 ((_ is Leaf!7691) (c!238838 (tokens!2074 other!32))))))

(declare-fun b!1451137 () Bool)

(declare-fun list!6048 (IArray!10319) List!15192)

(assert (=> b!1451137 (= e!925982 (list!6048 (xs!7898 (c!238838 (tokens!2074 other!32)))))))

(declare-fun b!1451138 () Bool)

(declare-fun ++!4058 (List!15192 List!15192) List!15192)

(assert (=> b!1451138 (= e!925982 (++!4058 (list!6046 (left!12860 (c!238838 (tokens!2074 other!32)))) (list!6046 (right!13190 (c!238838 (tokens!2074 other!32))))))))

(assert (= (and d!421564 c!238851) b!1451135))

(assert (= (and d!421564 (not c!238851)) b!1451136))

(assert (= (and b!1451136 c!238852) b!1451137))

(assert (= (and b!1451136 (not c!238852)) b!1451138))

(declare-fun m!1674831 () Bool)

(assert (=> b!1451137 m!1674831))

(declare-fun m!1674833 () Bool)

(assert (=> b!1451138 m!1674833))

(declare-fun m!1674835 () Bool)

(assert (=> b!1451138 m!1674835))

(assert (=> b!1451138 m!1674833))

(assert (=> b!1451138 m!1674835))

(declare-fun m!1674837 () Bool)

(assert (=> b!1451138 m!1674837))

(assert (=> d!421482 d!421564))

(assert (=> d!421486 d!421470))

(declare-fun d!421566 () Bool)

(assert (=> d!421566 (rulesProduceIndividualToken!1240 Lexer!2319 (rules!11596 thiss!10022) lt!500253)))

(assert (=> d!421566 true))

(declare-fun _$77!585 () Unit!24035)

(assert (=> d!421566 (= (choose!8929 Lexer!2319 (rules!11596 thiss!10022) lt!500252 lt!500253) _$77!585)))

(declare-fun bs!342634 () Bool)

(assert (= bs!342634 d!421566))

(assert (=> bs!342634 m!1674531))

(assert (=> d!421486 d!421566))

(assert (=> d!421486 d!421522))

(declare-fun d!421570 () Bool)

(declare-fun lt!500313 () Bool)

(declare-fun isEmpty!9474 (List!15190) Bool)

(declare-fun list!6049 (BalanceConc!10252) List!15190)

(assert (=> d!421570 (= lt!500313 (isEmpty!9474 (list!6049 (_2!7990 lt!500266))))))

(declare-fun isEmpty!9475 (Conc!5156) Bool)

(assert (=> d!421570 (= lt!500313 (isEmpty!9475 (c!238836 (_2!7990 lt!500266))))))

(assert (=> d!421570 (= (isEmpty!9469 (_2!7990 lt!500266)) lt!500313)))

(declare-fun bs!342635 () Bool)

(assert (= bs!342635 d!421570))

(declare-fun m!1674839 () Bool)

(assert (=> bs!342635 m!1674839))

(assert (=> bs!342635 m!1674839))

(declare-fun m!1674841 () Bool)

(assert (=> bs!342635 m!1674841))

(declare-fun m!1674843 () Bool)

(assert (=> bs!342635 m!1674843))

(assert (=> b!1450940 d!421570))

(declare-fun bs!342638 () Bool)

(declare-fun d!421572 () Bool)

(assert (= bs!342638 (and d!421572 d!421502)))

(declare-fun lambda!63070 () Int)

(assert (=> bs!342638 (= lambda!63070 lambda!63057)))

(declare-fun bs!342639 () Bool)

(assert (= bs!342639 (and d!421572 d!421532)))

(assert (=> bs!342639 (= lambda!63070 lambda!63059)))

(declare-fun bs!342640 () Bool)

(assert (= bs!342640 (and d!421572 d!421562)))

(assert (=> bs!342640 (= lambda!63070 lambda!63060)))

(declare-fun b!1451186 () Bool)

(declare-fun e!926012 () Bool)

(assert (=> b!1451186 (= e!926012 true)))

(declare-fun b!1451185 () Bool)

(declare-fun e!926011 () Bool)

(assert (=> b!1451185 (= e!926011 e!926012)))

(declare-fun b!1451184 () Bool)

(declare-fun e!926010 () Bool)

(assert (=> b!1451184 (= e!926010 e!926011)))

(assert (=> d!421572 e!926010))

(assert (= b!1451185 b!1451186))

(assert (= b!1451184 b!1451185))

(assert (= (and d!421572 ((_ is Cons!15127) (rules!11596 thiss!10022))) b!1451184))

(assert (=> b!1451186 (< (dynLambda!6881 order!9089 (toValue!3972 (transformation!2665 (h!20528 (rules!11596 thiss!10022))))) (dynLambda!6882 order!9091 lambda!63070))))

(assert (=> b!1451186 (< (dynLambda!6883 order!9093 (toChars!3831 (transformation!2665 (h!20528 (rules!11596 thiss!10022))))) (dynLambda!6882 order!9091 lambda!63070))))

(assert (=> d!421572 true))

(declare-fun e!926009 () Bool)

(assert (=> d!421572 e!926009))

(declare-fun res!657143 () Bool)

(assert (=> d!421572 (=> (not res!657143) (not e!926009))))

(declare-fun lt!500334 () Bool)

(assert (=> d!421572 (= res!657143 (= lt!500334 (forall!3716 (list!6045 (tokens!2074 thiss!10022)) lambda!63070)))))

(declare-fun forall!3717 (BalanceConc!10254 Int) Bool)

(assert (=> d!421572 (= lt!500334 (forall!3717 (tokens!2074 thiss!10022) lambda!63070))))

(assert (=> d!421572 (not (isEmpty!9466 (rules!11596 thiss!10022)))))

(assert (=> d!421572 (= (rulesProduceEachTokenIndividually!871 Lexer!2319 (rules!11596 thiss!10022) (tokens!2074 thiss!10022)) lt!500334)))

(declare-fun b!1451183 () Bool)

(assert (=> b!1451183 (= e!926009 (= lt!500334 (rulesProduceEachTokenIndividuallyList!740 Lexer!2319 (rules!11596 thiss!10022) (list!6045 (tokens!2074 thiss!10022)))))))

(assert (= (and d!421572 res!657143) b!1451183))

(assert (=> d!421572 m!1674533))

(assert (=> d!421572 m!1674533))

(declare-fun m!1674931 () Bool)

(assert (=> d!421572 m!1674931))

(declare-fun m!1674933 () Bool)

(assert (=> d!421572 m!1674933))

(assert (=> d!421572 m!1674545))

(assert (=> b!1451183 m!1674533))

(assert (=> b!1451183 m!1674533))

(declare-fun m!1674935 () Bool)

(assert (=> b!1451183 m!1674935))

(assert (=> b!1451024 d!421572))

(declare-fun bs!342641 () Bool)

(declare-fun d!421590 () Bool)

(assert (= bs!342641 (and d!421590 d!421502)))

(declare-fun lambda!63071 () Int)

(assert (=> bs!342641 (= lambda!63071 lambda!63057)))

(declare-fun bs!342642 () Bool)

(assert (= bs!342642 (and d!421590 d!421532)))

(assert (=> bs!342642 (= lambda!63071 lambda!63059)))

(declare-fun bs!342643 () Bool)

(assert (= bs!342643 (and d!421590 d!421562)))

(assert (=> bs!342643 (= lambda!63071 lambda!63060)))

(declare-fun bs!342644 () Bool)

(assert (= bs!342644 (and d!421590 d!421572)))

(assert (=> bs!342644 (= lambda!63071 lambda!63070)))

(declare-fun b!1451191 () Bool)

(declare-fun e!926017 () Bool)

(assert (=> b!1451191 (= e!926017 true)))

(declare-fun b!1451190 () Bool)

(declare-fun e!926016 () Bool)

(assert (=> b!1451190 (= e!926016 e!926017)))

(declare-fun b!1451189 () Bool)

(declare-fun e!926015 () Bool)

(assert (=> b!1451189 (= e!926015 e!926016)))

(assert (=> d!421590 e!926015))

(assert (= b!1451190 b!1451191))

(assert (= b!1451189 b!1451190))

(assert (= (and d!421590 ((_ is Cons!15127) (rules!11596 thiss!10022))) b!1451189))

(assert (=> b!1451191 (< (dynLambda!6881 order!9089 (toValue!3972 (transformation!2665 (h!20528 (rules!11596 thiss!10022))))) (dynLambda!6882 order!9091 lambda!63071))))

(assert (=> b!1451191 (< (dynLambda!6883 order!9093 (toChars!3831 (transformation!2665 (h!20528 (rules!11596 thiss!10022))))) (dynLambda!6882 order!9091 lambda!63071))))

(assert (=> d!421590 true))

(declare-fun lt!500335 () Bool)

(assert (=> d!421590 (= lt!500335 (forall!3716 (t!130593 lt!500252) lambda!63071))))

(declare-fun e!926013 () Bool)

(assert (=> d!421590 (= lt!500335 e!926013)))

(declare-fun res!657144 () Bool)

(assert (=> d!421590 (=> res!657144 e!926013)))

(assert (=> d!421590 (= res!657144 (not ((_ is Cons!15126) (t!130593 lt!500252))))))

(assert (=> d!421590 (not (isEmpty!9466 (rules!11596 thiss!10022)))))

(assert (=> d!421590 (= (rulesProduceEachTokenIndividuallyList!740 Lexer!2319 (rules!11596 thiss!10022) (t!130593 lt!500252)) lt!500335)))

(declare-fun b!1451187 () Bool)

(declare-fun e!926014 () Bool)

(assert (=> b!1451187 (= e!926013 e!926014)))

(declare-fun res!657145 () Bool)

(assert (=> b!1451187 (=> (not res!657145) (not e!926014))))

(assert (=> b!1451187 (= res!657145 (rulesProduceIndividualToken!1240 Lexer!2319 (rules!11596 thiss!10022) (h!20527 (t!130593 lt!500252))))))

(declare-fun b!1451188 () Bool)

(assert (=> b!1451188 (= e!926014 (rulesProduceEachTokenIndividuallyList!740 Lexer!2319 (rules!11596 thiss!10022) (t!130593 (t!130593 lt!500252))))))

(assert (= (and d!421590 (not res!657144)) b!1451187))

(assert (= (and b!1451187 res!657145) b!1451188))

(declare-fun m!1674937 () Bool)

(assert (=> d!421590 m!1674937))

(assert (=> d!421590 m!1674545))

(declare-fun m!1674939 () Bool)

(assert (=> b!1451187 m!1674939))

(declare-fun m!1674941 () Bool)

(assert (=> b!1451188 m!1674941))

(assert (=> b!1451045 d!421590))

(declare-fun d!421592 () Bool)

(declare-fun size!12366 (List!15192) Int)

(assert (=> d!421592 (= (inv!20195 (xs!7898 (c!238838 (tokens!2074 thiss!10022)))) (<= (size!12366 (innerList!5217 (xs!7898 (c!238838 (tokens!2074 thiss!10022))))) 2147483647))))

(declare-fun bs!342645 () Bool)

(assert (= bs!342645 d!421592))

(declare-fun m!1674943 () Bool)

(assert (=> bs!342645 m!1674943))

(assert (=> b!1451083 d!421592))

(declare-fun b!1451219 () Bool)

(declare-fun e!926038 () Bool)

(declare-fun lt!500372 () tuple2!14208)

(assert (=> b!1451219 (= e!926038 (= (_2!7990 lt!500372) (print!1092 Lexer!2319 (singletonSeq!1259 lt!500253))))))

(declare-fun b!1451220 () Bool)

(declare-fun e!926036 () Bool)

(assert (=> b!1451220 (= e!926036 (not (isEmpty!9467 (_1!7990 lt!500372))))))

(declare-fun b!1451221 () Bool)

(assert (=> b!1451221 (= e!926038 e!926036)))

(declare-fun res!657163 () Bool)

(declare-fun size!12367 (BalanceConc!10252) Int)

(assert (=> b!1451221 (= res!657163 (< (size!12367 (_2!7990 lt!500372)) (size!12367 (print!1092 Lexer!2319 (singletonSeq!1259 lt!500253)))))))

(assert (=> b!1451221 (=> (not res!657163) (not e!926036))))

(declare-fun b!1451222 () Bool)

(declare-fun res!657162 () Bool)

(declare-fun e!926037 () Bool)

(assert (=> b!1451222 (=> (not res!657162) (not e!926037))))

(declare-datatypes ((tuple2!14212 0))(
  ( (tuple2!14213 (_1!7992 List!15192) (_2!7992 List!15190)) )
))
(declare-fun lexList!711 (LexerInterface!2321 List!15193 List!15190) tuple2!14212)

(assert (=> b!1451222 (= res!657162 (= (list!6045 (_1!7990 lt!500372)) (_1!7992 (lexList!711 Lexer!2319 (rules!11596 thiss!10022) (list!6049 (print!1092 Lexer!2319 (singletonSeq!1259 lt!500253)))))))))

(declare-fun b!1451223 () Bool)

(assert (=> b!1451223 (= e!926037 (= (list!6049 (_2!7990 lt!500372)) (_2!7992 (lexList!711 Lexer!2319 (rules!11596 thiss!10022) (list!6049 (print!1092 Lexer!2319 (singletonSeq!1259 lt!500253)))))))))

(declare-fun d!421594 () Bool)

(assert (=> d!421594 e!926037))

(declare-fun res!657164 () Bool)

(assert (=> d!421594 (=> (not res!657164) (not e!926037))))

(assert (=> d!421594 (= res!657164 e!926038)))

(declare-fun c!238861 () Bool)

(assert (=> d!421594 (= c!238861 (> (size!12364 (_1!7990 lt!500372)) 0))))

(declare-fun lexTailRecV2!466 (LexerInterface!2321 List!15193 BalanceConc!10252 BalanceConc!10252 BalanceConc!10252 BalanceConc!10254) tuple2!14208)

(assert (=> d!421594 (= lt!500372 (lexTailRecV2!466 Lexer!2319 (rules!11596 thiss!10022) (print!1092 Lexer!2319 (singletonSeq!1259 lt!500253)) (BalanceConc!10253 Empty!5156) (print!1092 Lexer!2319 (singletonSeq!1259 lt!500253)) (BalanceConc!10255 Empty!5157)))))

(assert (=> d!421594 (= (lex!1065 Lexer!2319 (rules!11596 thiss!10022) (print!1092 Lexer!2319 (singletonSeq!1259 lt!500253))) lt!500372)))

(assert (= (and d!421594 c!238861) b!1451221))

(assert (= (and d!421594 (not c!238861)) b!1451219))

(assert (= (and b!1451221 res!657163) b!1451220))

(assert (= (and d!421594 res!657164) b!1451222))

(assert (= (and b!1451222 res!657162) b!1451223))

(declare-fun m!1674995 () Bool)

(assert (=> b!1451221 m!1674995))

(assert (=> b!1451221 m!1674577))

(declare-fun m!1674997 () Bool)

(assert (=> b!1451221 m!1674997))

(declare-fun m!1674999 () Bool)

(assert (=> b!1451223 m!1674999))

(assert (=> b!1451223 m!1674577))

(declare-fun m!1675001 () Bool)

(assert (=> b!1451223 m!1675001))

(assert (=> b!1451223 m!1675001))

(declare-fun m!1675003 () Bool)

(assert (=> b!1451223 m!1675003))

(declare-fun m!1675005 () Bool)

(assert (=> d!421594 m!1675005))

(assert (=> d!421594 m!1674577))

(assert (=> d!421594 m!1674577))

(declare-fun m!1675007 () Bool)

(assert (=> d!421594 m!1675007))

(declare-fun m!1675009 () Bool)

(assert (=> b!1451220 m!1675009))

(declare-fun m!1675011 () Bool)

(assert (=> b!1451222 m!1675011))

(assert (=> b!1451222 m!1674577))

(assert (=> b!1451222 m!1675001))

(assert (=> b!1451222 m!1675001))

(assert (=> b!1451222 m!1675003))

(assert (=> d!421470 d!421594))

(declare-fun d!421608 () Bool)

(declare-fun lt!500375 () Int)

(assert (=> d!421608 (= lt!500375 (size!12366 (list!6045 (_1!7990 lt!500266))))))

(declare-fun size!12369 (Conc!5157) Int)

(assert (=> d!421608 (= lt!500375 (size!12369 (c!238838 (_1!7990 lt!500266))))))

(assert (=> d!421608 (= (size!12364 (_1!7990 lt!500266)) lt!500375)))

(declare-fun bs!342651 () Bool)

(assert (= bs!342651 d!421608))

(declare-fun m!1675013 () Bool)

(assert (=> bs!342651 m!1675013))

(assert (=> bs!342651 m!1675013))

(declare-fun m!1675015 () Bool)

(assert (=> bs!342651 m!1675015))

(declare-fun m!1675017 () Bool)

(assert (=> bs!342651 m!1675017))

(assert (=> d!421470 d!421608))

(declare-fun d!421610 () Bool)

(assert (=> d!421610 (= (list!6045 (singletonSeq!1259 lt!500253)) (list!6046 (c!238838 (singletonSeq!1259 lt!500253))))))

(declare-fun bs!342652 () Bool)

(assert (= bs!342652 d!421610))

(declare-fun m!1675019 () Bool)

(assert (=> bs!342652 m!1675019))

(assert (=> d!421470 d!421610))

(assert (=> d!421470 d!421522))

(declare-fun d!421612 () Bool)

(declare-fun e!926041 () Bool)

(assert (=> d!421612 e!926041))

(declare-fun res!657167 () Bool)

(assert (=> d!421612 (=> (not res!657167) (not e!926041))))

(declare-fun lt!500378 () BalanceConc!10254)

(assert (=> d!421612 (= res!657167 (= (list!6045 lt!500378) (Cons!15126 lt!500253 Nil!15126)))))

(declare-fun singleton!527 (Token!4992) BalanceConc!10254)

(assert (=> d!421612 (= lt!500378 (singleton!527 lt!500253))))

(assert (=> d!421612 (= (singletonSeq!1259 lt!500253) lt!500378)))

(declare-fun b!1451226 () Bool)

(assert (=> b!1451226 (= e!926041 (isBalanced!1538 (c!238838 lt!500378)))))

(assert (= (and d!421612 res!657167) b!1451226))

(declare-fun m!1675021 () Bool)

(assert (=> d!421612 m!1675021))

(declare-fun m!1675023 () Bool)

(assert (=> d!421612 m!1675023))

(declare-fun m!1675025 () Bool)

(assert (=> b!1451226 m!1675025))

(assert (=> d!421470 d!421612))

(declare-fun d!421614 () Bool)

(declare-fun lt!500381 () BalanceConc!10252)

(declare-fun printList!720 (LexerInterface!2321 List!15192) List!15190)

(assert (=> d!421614 (= (list!6049 lt!500381) (printList!720 Lexer!2319 (list!6045 (singletonSeq!1259 lt!500253))))))

(declare-fun printTailRec!692 (LexerInterface!2321 BalanceConc!10254 Int BalanceConc!10252) BalanceConc!10252)

(assert (=> d!421614 (= lt!500381 (printTailRec!692 Lexer!2319 (singletonSeq!1259 lt!500253) 0 (BalanceConc!10253 Empty!5156)))))

(assert (=> d!421614 (= (print!1092 Lexer!2319 (singletonSeq!1259 lt!500253)) lt!500381)))

(declare-fun bs!342653 () Bool)

(assert (= bs!342653 d!421614))

(declare-fun m!1675027 () Bool)

(assert (=> bs!342653 m!1675027))

(assert (=> bs!342653 m!1674571))

(assert (=> bs!342653 m!1674573))

(assert (=> bs!342653 m!1674573))

(declare-fun m!1675029 () Bool)

(assert (=> bs!342653 m!1675029))

(assert (=> bs!342653 m!1674571))

(declare-fun m!1675031 () Bool)

(assert (=> bs!342653 m!1675031))

(assert (=> d!421470 d!421614))

(declare-fun d!421616 () Bool)

(assert (=> d!421616 (= (list!6045 (_1!7990 (lex!1065 Lexer!2319 (rules!11596 thiss!10022) (print!1092 Lexer!2319 (singletonSeq!1259 lt!500253))))) (list!6046 (c!238838 (_1!7990 (lex!1065 Lexer!2319 (rules!11596 thiss!10022) (print!1092 Lexer!2319 (singletonSeq!1259 lt!500253)))))))))

(declare-fun bs!342654 () Bool)

(assert (= bs!342654 d!421616))

(declare-fun m!1675033 () Bool)

(assert (=> bs!342654 m!1675033))

(assert (=> d!421470 d!421616))

(assert (=> b!1451056 d!421572))

(declare-fun d!421618 () Bool)

(assert (=> d!421618 (= (head!2978 (list!6045 (tokens!2074 other!32))) (h!20527 (list!6045 (tokens!2074 other!32))))))

(assert (=> d!421484 d!421618))

(assert (=> d!421484 d!421482))

(declare-fun d!421620 () Bool)

(declare-fun lt!500384 () Token!4992)

(assert (=> d!421620 (= lt!500384 (head!2978 (list!6046 (c!238838 (tokens!2074 other!32)))))))

(declare-fun e!926044 () Token!4992)

(assert (=> d!421620 (= lt!500384 e!926044)))

(declare-fun c!238864 () Bool)

(assert (=> d!421620 (= c!238864 ((_ is Leaf!7691) (c!238838 (tokens!2074 other!32))))))

(assert (=> d!421620 (isBalanced!1538 (c!238838 (tokens!2074 other!32)))))

(assert (=> d!421620 (= (head!2979 (c!238838 (tokens!2074 other!32))) lt!500384)))

(declare-fun b!1451231 () Bool)

(declare-fun apply!3912 (IArray!10319 Int) Token!4992)

(assert (=> b!1451231 (= e!926044 (apply!3912 (xs!7898 (c!238838 (tokens!2074 other!32))) 0))))

(declare-fun b!1451232 () Bool)

(assert (=> b!1451232 (= e!926044 (head!2979 (left!12860 (c!238838 (tokens!2074 other!32)))))))

(assert (= (and d!421620 c!238864) b!1451231))

(assert (= (and d!421620 (not c!238864)) b!1451232))

(assert (=> d!421620 m!1674587))

(assert (=> d!421620 m!1674587))

(declare-fun m!1675035 () Bool)

(assert (=> d!421620 m!1675035))

(assert (=> d!421620 m!1674735))

(declare-fun m!1675037 () Bool)

(assert (=> b!1451231 m!1675037))

(declare-fun m!1675039 () Bool)

(assert (=> b!1451232 m!1675039))

(assert (=> d!421484 d!421620))

(assert (=> d!421484 d!421544))

(declare-fun d!421622 () Bool)

(declare-fun res!657172 () Bool)

(declare-fun e!926047 () Bool)

(assert (=> d!421622 (=> (not res!657172) (not e!926047))))

(assert (=> d!421622 (= res!657172 (<= (size!12366 (list!6048 (xs!7898 (c!238838 (tokens!2074 other!32))))) 512))))

(assert (=> d!421622 (= (inv!20193 (c!238838 (tokens!2074 other!32))) e!926047)))

(declare-fun b!1451237 () Bool)

(declare-fun res!657173 () Bool)

(assert (=> b!1451237 (=> (not res!657173) (not e!926047))))

(assert (=> b!1451237 (= res!657173 (= (csize!10545 (c!238838 (tokens!2074 other!32))) (size!12366 (list!6048 (xs!7898 (c!238838 (tokens!2074 other!32)))))))))

(declare-fun b!1451238 () Bool)

(assert (=> b!1451238 (= e!926047 (and (> (csize!10545 (c!238838 (tokens!2074 other!32))) 0) (<= (csize!10545 (c!238838 (tokens!2074 other!32))) 512)))))

(assert (= (and d!421622 res!657172) b!1451237))

(assert (= (and b!1451237 res!657173) b!1451238))

(assert (=> d!421622 m!1674831))

(assert (=> d!421622 m!1674831))

(declare-fun m!1675041 () Bool)

(assert (=> d!421622 m!1675041))

(assert (=> b!1451237 m!1674831))

(assert (=> b!1451237 m!1674831))

(assert (=> b!1451237 m!1675041))

(assert (=> b!1451051 d!421622))

(declare-fun b!1451239 () Bool)

(declare-fun e!926048 () List!15192)

(assert (=> b!1451239 (= e!926048 Nil!15126)))

(declare-fun d!421624 () Bool)

(declare-fun c!238865 () Bool)

(assert (=> d!421624 (= c!238865 ((_ is Empty!5157) (c!238838 (tokens!2074 thiss!10022))))))

(assert (=> d!421624 (= (list!6046 (c!238838 (tokens!2074 thiss!10022))) e!926048)))

(declare-fun b!1451240 () Bool)

(declare-fun e!926049 () List!15192)

(assert (=> b!1451240 (= e!926048 e!926049)))

(declare-fun c!238866 () Bool)

(assert (=> b!1451240 (= c!238866 ((_ is Leaf!7691) (c!238838 (tokens!2074 thiss!10022))))))

(declare-fun b!1451241 () Bool)

(assert (=> b!1451241 (= e!926049 (list!6048 (xs!7898 (c!238838 (tokens!2074 thiss!10022)))))))

(declare-fun b!1451242 () Bool)

(assert (=> b!1451242 (= e!926049 (++!4058 (list!6046 (left!12860 (c!238838 (tokens!2074 thiss!10022)))) (list!6046 (right!13190 (c!238838 (tokens!2074 thiss!10022))))))))

(assert (= (and d!421624 c!238865) b!1451239))

(assert (= (and d!421624 (not c!238865)) b!1451240))

(assert (= (and b!1451240 c!238866) b!1451241))

(assert (= (and b!1451240 (not c!238866)) b!1451242))

(declare-fun m!1675043 () Bool)

(assert (=> b!1451241 m!1675043))

(declare-fun m!1675045 () Bool)

(assert (=> b!1451242 m!1675045))

(declare-fun m!1675047 () Bool)

(assert (=> b!1451242 m!1675047))

(assert (=> b!1451242 m!1675045))

(assert (=> b!1451242 m!1675047))

(declare-fun m!1675049 () Bool)

(assert (=> b!1451242 m!1675049))

(assert (=> d!421494 d!421624))

(declare-fun d!421626 () Bool)

(assert (=> d!421626 (= (isEmpty!9466 (rules!11596 other!32)) ((_ is Nil!15127) (rules!11596 other!32)))))

(assert (=> d!421520 d!421626))

(declare-fun d!421628 () Bool)

(assert (=> d!421628 (= (inv!20195 (xs!7898 (c!238838 (tokens!2074 other!32)))) (<= (size!12366 (innerList!5217 (xs!7898 (c!238838 (tokens!2074 other!32))))) 2147483647))))

(declare-fun bs!342655 () Bool)

(assert (= bs!342655 d!421628))

(declare-fun m!1675051 () Bool)

(assert (=> bs!342655 m!1675051))

(assert (=> b!1451080 d!421628))

(declare-fun d!421630 () Bool)

(declare-fun lt!500385 () Bool)

(assert (=> d!421630 (= lt!500385 (isEmpty!9474 (list!6049 (_2!7990 (lex!1065 Lexer!2319 (rules!11596 thiss!10022) (print!1092 Lexer!2319 (singletonSeq!1259 lt!500254)))))))))

(assert (=> d!421630 (= lt!500385 (isEmpty!9475 (c!238836 (_2!7990 (lex!1065 Lexer!2319 (rules!11596 thiss!10022) (print!1092 Lexer!2319 (singletonSeq!1259 lt!500254)))))))))

(assert (=> d!421630 (= (isEmpty!9469 (_2!7990 (lex!1065 Lexer!2319 (rules!11596 thiss!10022) (print!1092 Lexer!2319 (singletonSeq!1259 lt!500254))))) lt!500385)))

(declare-fun bs!342656 () Bool)

(assert (= bs!342656 d!421630))

(declare-fun m!1675053 () Bool)

(assert (=> bs!342656 m!1675053))

(assert (=> bs!342656 m!1675053))

(declare-fun m!1675055 () Bool)

(assert (=> bs!342656 m!1675055))

(declare-fun m!1675057 () Bool)

(assert (=> bs!342656 m!1675057))

(assert (=> b!1450960 d!421630))

(declare-fun b!1451243 () Bool)

(declare-fun e!926052 () Bool)

(declare-fun lt!500386 () tuple2!14208)

(assert (=> b!1451243 (= e!926052 (= (_2!7990 lt!500386) (print!1092 Lexer!2319 (singletonSeq!1259 lt!500254))))))

(declare-fun b!1451244 () Bool)

(declare-fun e!926050 () Bool)

(assert (=> b!1451244 (= e!926050 (not (isEmpty!9467 (_1!7990 lt!500386))))))

(declare-fun b!1451245 () Bool)

(assert (=> b!1451245 (= e!926052 e!926050)))

(declare-fun res!657175 () Bool)

(assert (=> b!1451245 (= res!657175 (< (size!12367 (_2!7990 lt!500386)) (size!12367 (print!1092 Lexer!2319 (singletonSeq!1259 lt!500254)))))))

(assert (=> b!1451245 (=> (not res!657175) (not e!926050))))

(declare-fun b!1451246 () Bool)

(declare-fun res!657174 () Bool)

(declare-fun e!926051 () Bool)

(assert (=> b!1451246 (=> (not res!657174) (not e!926051))))

(assert (=> b!1451246 (= res!657174 (= (list!6045 (_1!7990 lt!500386)) (_1!7992 (lexList!711 Lexer!2319 (rules!11596 thiss!10022) (list!6049 (print!1092 Lexer!2319 (singletonSeq!1259 lt!500254)))))))))

(declare-fun b!1451247 () Bool)

(assert (=> b!1451247 (= e!926051 (= (list!6049 (_2!7990 lt!500386)) (_2!7992 (lexList!711 Lexer!2319 (rules!11596 thiss!10022) (list!6049 (print!1092 Lexer!2319 (singletonSeq!1259 lt!500254)))))))))

(declare-fun d!421632 () Bool)

(assert (=> d!421632 e!926051))

(declare-fun res!657176 () Bool)

(assert (=> d!421632 (=> (not res!657176) (not e!926051))))

(assert (=> d!421632 (= res!657176 e!926052)))

(declare-fun c!238867 () Bool)

(assert (=> d!421632 (= c!238867 (> (size!12364 (_1!7990 lt!500386)) 0))))

(assert (=> d!421632 (= lt!500386 (lexTailRecV2!466 Lexer!2319 (rules!11596 thiss!10022) (print!1092 Lexer!2319 (singletonSeq!1259 lt!500254)) (BalanceConc!10253 Empty!5156) (print!1092 Lexer!2319 (singletonSeq!1259 lt!500254)) (BalanceConc!10255 Empty!5157)))))

(assert (=> d!421632 (= (lex!1065 Lexer!2319 (rules!11596 thiss!10022) (print!1092 Lexer!2319 (singletonSeq!1259 lt!500254))) lt!500386)))

(assert (= (and d!421632 c!238867) b!1451245))

(assert (= (and d!421632 (not c!238867)) b!1451243))

(assert (= (and b!1451245 res!657175) b!1451244))

(assert (= (and d!421632 res!657176) b!1451246))

(assert (= (and b!1451246 res!657174) b!1451247))

(declare-fun m!1675059 () Bool)

(assert (=> b!1451245 m!1675059))

(assert (=> b!1451245 m!1674637))

(declare-fun m!1675061 () Bool)

(assert (=> b!1451245 m!1675061))

(declare-fun m!1675063 () Bool)

(assert (=> b!1451247 m!1675063))

(assert (=> b!1451247 m!1674637))

(declare-fun m!1675065 () Bool)

(assert (=> b!1451247 m!1675065))

(assert (=> b!1451247 m!1675065))

(declare-fun m!1675067 () Bool)

(assert (=> b!1451247 m!1675067))

(declare-fun m!1675069 () Bool)

(assert (=> d!421632 m!1675069))

(assert (=> d!421632 m!1674637))

(assert (=> d!421632 m!1674637))

(declare-fun m!1675071 () Bool)

(assert (=> d!421632 m!1675071))

(declare-fun m!1675073 () Bool)

(assert (=> b!1451244 m!1675073))

(declare-fun m!1675075 () Bool)

(assert (=> b!1451246 m!1675075))

(assert (=> b!1451246 m!1674637))

(assert (=> b!1451246 m!1675065))

(assert (=> b!1451246 m!1675065))

(assert (=> b!1451246 m!1675067))

(assert (=> b!1450960 d!421632))

(declare-fun d!421634 () Bool)

(declare-fun lt!500387 () BalanceConc!10252)

(assert (=> d!421634 (= (list!6049 lt!500387) (printList!720 Lexer!2319 (list!6045 (singletonSeq!1259 lt!500254))))))

(assert (=> d!421634 (= lt!500387 (printTailRec!692 Lexer!2319 (singletonSeq!1259 lt!500254) 0 (BalanceConc!10253 Empty!5156)))))

(assert (=> d!421634 (= (print!1092 Lexer!2319 (singletonSeq!1259 lt!500254)) lt!500387)))

(declare-fun bs!342657 () Bool)

(assert (= bs!342657 d!421634))

(declare-fun m!1675077 () Bool)

(assert (=> bs!342657 m!1675077))

(assert (=> bs!342657 m!1674631))

(assert (=> bs!342657 m!1674633))

(assert (=> bs!342657 m!1674633))

(declare-fun m!1675079 () Bool)

(assert (=> bs!342657 m!1675079))

(assert (=> bs!342657 m!1674631))

(declare-fun m!1675081 () Bool)

(assert (=> bs!342657 m!1675081))

(assert (=> b!1450960 d!421634))

(declare-fun d!421636 () Bool)

(declare-fun e!926053 () Bool)

(assert (=> d!421636 e!926053))

(declare-fun res!657177 () Bool)

(assert (=> d!421636 (=> (not res!657177) (not e!926053))))

(declare-fun lt!500388 () BalanceConc!10254)

(assert (=> d!421636 (= res!657177 (= (list!6045 lt!500388) (Cons!15126 lt!500254 Nil!15126)))))

(assert (=> d!421636 (= lt!500388 (singleton!527 lt!500254))))

(assert (=> d!421636 (= (singletonSeq!1259 lt!500254) lt!500388)))

(declare-fun b!1451248 () Bool)

(assert (=> b!1451248 (= e!926053 (isBalanced!1538 (c!238838 lt!500388)))))

(assert (= (and d!421636 res!657177) b!1451248))

(declare-fun m!1675083 () Bool)

(assert (=> d!421636 m!1675083))

(declare-fun m!1675085 () Bool)

(assert (=> d!421636 m!1675085))

(declare-fun m!1675087 () Bool)

(assert (=> b!1451248 m!1675087))

(assert (=> b!1450960 d!421636))

(assert (=> d!421512 d!421522))

(declare-fun bs!342658 () Bool)

(declare-fun d!421638 () Bool)

(assert (= bs!342658 (and d!421638 d!421562)))

(declare-fun lambda!63076 () Int)

(assert (=> bs!342658 (= (= (rules!11596 other!32) (rules!11596 thiss!10022)) (= lambda!63076 lambda!63060))))

(declare-fun bs!342659 () Bool)

(assert (= bs!342659 (and d!421638 d!421502)))

(assert (=> bs!342659 (= (= (rules!11596 other!32) (rules!11596 thiss!10022)) (= lambda!63076 lambda!63057))))

(declare-fun bs!342660 () Bool)

(assert (= bs!342660 (and d!421638 d!421572)))

(assert (=> bs!342660 (= (= (rules!11596 other!32) (rules!11596 thiss!10022)) (= lambda!63076 lambda!63070))))

(declare-fun bs!342661 () Bool)

(assert (= bs!342661 (and d!421638 d!421590)))

(assert (=> bs!342661 (= (= (rules!11596 other!32) (rules!11596 thiss!10022)) (= lambda!63076 lambda!63071))))

(declare-fun bs!342662 () Bool)

(assert (= bs!342662 (and d!421638 d!421532)))

(assert (=> bs!342662 (= (= (rules!11596 other!32) (rules!11596 thiss!10022)) (= lambda!63076 lambda!63059))))

(declare-fun b!1451252 () Bool)

(declare-fun e!926057 () Bool)

(assert (=> b!1451252 (= e!926057 true)))

(declare-fun b!1451251 () Bool)

(declare-fun e!926056 () Bool)

(assert (=> b!1451251 (= e!926056 e!926057)))

(declare-fun b!1451250 () Bool)

(declare-fun e!926055 () Bool)

(assert (=> b!1451250 (= e!926055 e!926056)))

(assert (=> d!421638 e!926055))

(assert (= b!1451251 b!1451252))

(assert (= b!1451250 b!1451251))

(assert (= (and d!421638 ((_ is Cons!15127) (rules!11596 other!32))) b!1451250))

(assert (=> b!1451252 (< (dynLambda!6881 order!9089 (toValue!3972 (transformation!2665 (h!20528 (rules!11596 other!32))))) (dynLambda!6882 order!9091 lambda!63076))))

(assert (=> b!1451252 (< (dynLambda!6883 order!9093 (toChars!3831 (transformation!2665 (h!20528 (rules!11596 other!32))))) (dynLambda!6882 order!9091 lambda!63076))))

(assert (=> d!421638 true))

(declare-fun e!926054 () Bool)

(assert (=> d!421638 e!926054))

(declare-fun res!657178 () Bool)

(assert (=> d!421638 (=> (not res!657178) (not e!926054))))

(declare-fun lt!500389 () Bool)

(assert (=> d!421638 (= res!657178 (= lt!500389 (forall!3716 (list!6045 (tokens!2074 other!32)) lambda!63076)))))

(assert (=> d!421638 (= lt!500389 (forall!3717 (tokens!2074 other!32) lambda!63076))))

(assert (=> d!421638 (not (isEmpty!9466 (rules!11596 other!32)))))

(assert (=> d!421638 (= (rulesProduceEachTokenIndividually!871 Lexer!2319 (rules!11596 other!32) (tokens!2074 other!32)) lt!500389)))

(declare-fun b!1451249 () Bool)

(assert (=> b!1451249 (= e!926054 (= lt!500389 (rulesProduceEachTokenIndividuallyList!740 Lexer!2319 (rules!11596 other!32) (list!6045 (tokens!2074 other!32)))))))

(assert (= (and d!421638 res!657178) b!1451249))

(assert (=> d!421638 m!1674527))

(assert (=> d!421638 m!1674527))

(declare-fun m!1675089 () Bool)

(assert (=> d!421638 m!1675089))

(declare-fun m!1675091 () Bool)

(assert (=> d!421638 m!1675091))

(assert (=> d!421638 m!1674679))

(assert (=> b!1451249 m!1674527))

(assert (=> b!1451249 m!1674527))

(declare-fun m!1675093 () Bool)

(assert (=> b!1451249 m!1675093))

(assert (=> b!1451058 d!421638))

(declare-fun d!421640 () Bool)

(assert (=> d!421640 true))

(declare-fun lt!500392 () Bool)

(declare-fun rulesValidInductive!827 (LexerInterface!2321 List!15193) Bool)

(assert (=> d!421640 (= lt!500392 (rulesValidInductive!827 Lexer!2319 (rules!11596 thiss!10022)))))

(declare-fun lambda!63079 () Int)

(declare-fun forall!3719 (List!15193 Int) Bool)

(assert (=> d!421640 (= lt!500392 (forall!3719 (rules!11596 thiss!10022) lambda!63079))))

(assert (=> d!421640 (= (rulesValid!982 Lexer!2319 (rules!11596 thiss!10022)) lt!500392)))

(declare-fun bs!342663 () Bool)

(assert (= bs!342663 d!421640))

(declare-fun m!1675095 () Bool)

(assert (=> bs!342663 m!1675095))

(declare-fun m!1675097 () Bool)

(assert (=> bs!342663 m!1675097))

(assert (=> d!421530 d!421640))

(declare-fun d!421642 () Bool)

(declare-fun res!657191 () Bool)

(declare-fun e!926063 () Bool)

(assert (=> d!421642 (=> res!657191 e!926063)))

(assert (=> d!421642 (= res!657191 (not ((_ is Node!5157) (c!238838 (tokens!2074 thiss!10022)))))))

(assert (=> d!421642 (= (isBalanced!1538 (c!238838 (tokens!2074 thiss!10022))) e!926063)))

(declare-fun b!1451267 () Bool)

(declare-fun res!657195 () Bool)

(declare-fun e!926062 () Bool)

(assert (=> b!1451267 (=> (not res!657195) (not e!926062))))

(assert (=> b!1451267 (= res!657195 (isBalanced!1538 (left!12860 (c!238838 (tokens!2074 thiss!10022)))))))

(declare-fun b!1451268 () Bool)

(declare-fun res!657196 () Bool)

(assert (=> b!1451268 (=> (not res!657196) (not e!926062))))

(assert (=> b!1451268 (= res!657196 (not (isEmpty!9473 (left!12860 (c!238838 (tokens!2074 thiss!10022))))))))

(declare-fun b!1451269 () Bool)

(assert (=> b!1451269 (= e!926063 e!926062)))

(declare-fun res!657192 () Bool)

(assert (=> b!1451269 (=> (not res!657192) (not e!926062))))

(declare-fun height!767 (Conc!5157) Int)

(assert (=> b!1451269 (= res!657192 (<= (- 1) (- (height!767 (left!12860 (c!238838 (tokens!2074 thiss!10022)))) (height!767 (right!13190 (c!238838 (tokens!2074 thiss!10022)))))))))

(declare-fun b!1451270 () Bool)

(assert (=> b!1451270 (= e!926062 (not (isEmpty!9473 (right!13190 (c!238838 (tokens!2074 thiss!10022))))))))

(declare-fun b!1451271 () Bool)

(declare-fun res!657194 () Bool)

(assert (=> b!1451271 (=> (not res!657194) (not e!926062))))

(assert (=> b!1451271 (= res!657194 (<= (- (height!767 (left!12860 (c!238838 (tokens!2074 thiss!10022)))) (height!767 (right!13190 (c!238838 (tokens!2074 thiss!10022))))) 1))))

(declare-fun b!1451272 () Bool)

(declare-fun res!657193 () Bool)

(assert (=> b!1451272 (=> (not res!657193) (not e!926062))))

(assert (=> b!1451272 (= res!657193 (isBalanced!1538 (right!13190 (c!238838 (tokens!2074 thiss!10022)))))))

(assert (= (and d!421642 (not res!657191)) b!1451269))

(assert (= (and b!1451269 res!657192) b!1451271))

(assert (= (and b!1451271 res!657194) b!1451267))

(assert (= (and b!1451267 res!657195) b!1451272))

(assert (= (and b!1451272 res!657193) b!1451268))

(assert (= (and b!1451268 res!657196) b!1451270))

(declare-fun m!1675101 () Bool)

(assert (=> b!1451267 m!1675101))

(declare-fun m!1675103 () Bool)

(assert (=> b!1451272 m!1675103))

(declare-fun m!1675105 () Bool)

(assert (=> b!1451270 m!1675105))

(declare-fun m!1675107 () Bool)

(assert (=> b!1451271 m!1675107))

(declare-fun m!1675109 () Bool)

(assert (=> b!1451271 m!1675109))

(declare-fun m!1675111 () Bool)

(assert (=> b!1451268 m!1675111))

(assert (=> b!1451269 m!1675107))

(assert (=> b!1451269 m!1675109))

(assert (=> d!421466 d!421642))

(declare-fun d!421648 () Bool)

(declare-fun res!657197 () Bool)

(declare-fun e!926067 () Bool)

(assert (=> d!421648 (=> res!657197 e!926067)))

(assert (=> d!421648 (= res!657197 (not ((_ is Node!5157) (c!238838 (tokens!2074 other!32)))))))

(assert (=> d!421648 (= (isBalanced!1538 (c!238838 (tokens!2074 other!32))) e!926067)))

(declare-fun b!1451277 () Bool)

(declare-fun res!657201 () Bool)

(declare-fun e!926066 () Bool)

(assert (=> b!1451277 (=> (not res!657201) (not e!926066))))

(assert (=> b!1451277 (= res!657201 (isBalanced!1538 (left!12860 (c!238838 (tokens!2074 other!32)))))))

(declare-fun b!1451278 () Bool)

(declare-fun res!657202 () Bool)

(assert (=> b!1451278 (=> (not res!657202) (not e!926066))))

(assert (=> b!1451278 (= res!657202 (not (isEmpty!9473 (left!12860 (c!238838 (tokens!2074 other!32))))))))

(declare-fun b!1451279 () Bool)

(assert (=> b!1451279 (= e!926067 e!926066)))

(declare-fun res!657198 () Bool)

(assert (=> b!1451279 (=> (not res!657198) (not e!926066))))

(assert (=> b!1451279 (= res!657198 (<= (- 1) (- (height!767 (left!12860 (c!238838 (tokens!2074 other!32)))) (height!767 (right!13190 (c!238838 (tokens!2074 other!32)))))))))

(declare-fun b!1451280 () Bool)

(assert (=> b!1451280 (= e!926066 (not (isEmpty!9473 (right!13190 (c!238838 (tokens!2074 other!32))))))))

(declare-fun b!1451281 () Bool)

(declare-fun res!657200 () Bool)

(assert (=> b!1451281 (=> (not res!657200) (not e!926066))))

(assert (=> b!1451281 (= res!657200 (<= (- (height!767 (left!12860 (c!238838 (tokens!2074 other!32)))) (height!767 (right!13190 (c!238838 (tokens!2074 other!32))))) 1))))

(declare-fun b!1451282 () Bool)

(declare-fun res!657199 () Bool)

(assert (=> b!1451282 (=> (not res!657199) (not e!926066))))

(assert (=> b!1451282 (= res!657199 (isBalanced!1538 (right!13190 (c!238838 (tokens!2074 other!32)))))))

(assert (= (and d!421648 (not res!657197)) b!1451279))

(assert (= (and b!1451279 res!657198) b!1451281))

(assert (= (and b!1451281 res!657200) b!1451277))

(assert (= (and b!1451277 res!657201) b!1451282))

(assert (= (and b!1451282 res!657199) b!1451278))

(assert (= (and b!1451278 res!657202) b!1451280))

(declare-fun m!1675113 () Bool)

(assert (=> b!1451277 m!1675113))

(declare-fun m!1675115 () Bool)

(assert (=> b!1451282 m!1675115))

(declare-fun m!1675117 () Bool)

(assert (=> b!1451280 m!1675117))

(declare-fun m!1675119 () Bool)

(assert (=> b!1451281 m!1675119))

(declare-fun m!1675121 () Bool)

(assert (=> b!1451281 m!1675121))

(declare-fun m!1675123 () Bool)

(assert (=> b!1451278 m!1675123))

(assert (=> b!1451279 m!1675119))

(assert (=> b!1451279 m!1675121))

(assert (=> d!421542 d!421648))

(assert (=> b!1451027 d!421638))

(declare-fun d!421650 () Bool)

(declare-fun lt!500398 () Token!4992)

(declare-fun contains!2890 (List!15192 Token!4992) Bool)

(assert (=> d!421650 (contains!2890 (list!6045 (tokens!2074 thiss!10022)) lt!500398)))

(declare-fun e!926071 () Token!4992)

(assert (=> d!421650 (= lt!500398 e!926071)))

(declare-fun c!238873 () Bool)

(assert (=> d!421650 (= c!238873 (and ((_ is Cons!15126) (list!6045 (tokens!2074 thiss!10022))) ((_ is Nil!15126) (t!130593 (list!6045 (tokens!2074 thiss!10022))))))))

(assert (=> d!421650 (not (isEmpty!9472 (list!6045 (tokens!2074 thiss!10022))))))

(assert (=> d!421650 (= (last!250 (list!6045 (tokens!2074 thiss!10022))) lt!500398)))

(declare-fun b!1451289 () Bool)

(assert (=> b!1451289 (= e!926071 (h!20527 (list!6045 (tokens!2074 thiss!10022))))))

(declare-fun b!1451290 () Bool)

(assert (=> b!1451290 (= e!926071 (last!250 (t!130593 (list!6045 (tokens!2074 thiss!10022)))))))

(assert (= (and d!421650 c!238873) b!1451289))

(assert (= (and d!421650 (not c!238873)) b!1451290))

(assert (=> d!421650 m!1674533))

(declare-fun m!1675131 () Bool)

(assert (=> d!421650 m!1675131))

(assert (=> d!421650 m!1674533))

(assert (=> d!421650 m!1674727))

(declare-fun m!1675133 () Bool)

(assert (=> b!1451290 m!1675133))

(assert (=> d!421492 d!421650))

(assert (=> d!421492 d!421494))

(declare-fun b!1451324 () Bool)

(declare-fun e!926092 () Bool)

(declare-fun lt!500411 () List!15192)

(declare-fun lt!500414 () List!15192)

(assert (=> b!1451324 (= e!926092 (= (last!250 (++!4058 lt!500411 lt!500414)) (last!250 lt!500414)))))

(declare-fun b!1451325 () Bool)

(declare-fun res!657233 () Bool)

(assert (=> b!1451325 (= res!657233 (not (isEmpty!9472 lt!500414)))))

(assert (=> b!1451325 (=> (not res!657233) (not e!926092))))

(declare-fun e!926093 () Bool)

(assert (=> b!1451325 (= e!926093 e!926092)))

(declare-fun b!1451326 () Bool)

(declare-fun e!926094 () Token!4992)

(assert (=> b!1451326 (= e!926094 (last!251 (right!13190 (c!238838 (tokens!2074 thiss!10022)))))))

(assert (=> b!1451326 (= lt!500411 (list!6046 (left!12860 (c!238838 (tokens!2074 thiss!10022)))))))

(assert (=> b!1451326 (= lt!500414 (list!6046 (right!13190 (c!238838 (tokens!2074 thiss!10022)))))))

(declare-fun lt!500415 () Unit!24035)

(declare-fun lemmaLastOfConcatIsLastOfRhs!15 (List!15192 List!15192) Unit!24035)

(assert (=> b!1451326 (= lt!500415 (lemmaLastOfConcatIsLastOfRhs!15 lt!500411 lt!500414))))

(declare-fun res!657232 () Bool)

(assert (=> b!1451326 (= res!657232 (isEmpty!9472 lt!500414))))

(declare-fun e!926091 () Bool)

(assert (=> b!1451326 (=> (not res!657232) (not e!926091))))

(declare-fun res!657234 () Bool)

(assert (=> b!1451326 (= res!657234 e!926091)))

(assert (=> b!1451326 (=> res!657234 e!926093)))

(assert (=> b!1451326 e!926093))

(declare-fun lt!500412 () Unit!24035)

(assert (=> b!1451326 (= lt!500412 lt!500415)))

(declare-fun b!1451328 () Bool)

(assert (=> b!1451328 (= e!926091 (= (last!250 (++!4058 lt!500411 lt!500414)) (last!250 lt!500411)))))

(declare-fun d!421656 () Bool)

(declare-fun lt!500413 () Token!4992)

(assert (=> d!421656 (= lt!500413 (last!250 (list!6046 (c!238838 (tokens!2074 thiss!10022)))))))

(assert (=> d!421656 (= lt!500413 e!926094)))

(declare-fun c!238876 () Bool)

(assert (=> d!421656 (= c!238876 ((_ is Leaf!7691) (c!238838 (tokens!2074 thiss!10022))))))

(assert (=> d!421656 (isBalanced!1538 (c!238838 (tokens!2074 thiss!10022)))))

(assert (=> d!421656 (= (last!251 (c!238838 (tokens!2074 thiss!10022))) lt!500413)))

(declare-fun b!1451327 () Bool)

(declare-fun last!254 (IArray!10319) Token!4992)

(assert (=> b!1451327 (= e!926094 (last!254 (xs!7898 (c!238838 (tokens!2074 thiss!10022)))))))

(assert (= (and d!421656 c!238876) b!1451327))

(assert (= (and d!421656 (not c!238876)) b!1451326))

(assert (= (and b!1451326 res!657232) b!1451328))

(assert (= (and b!1451326 (not res!657234)) b!1451325))

(assert (= (and b!1451325 res!657233) b!1451324))

(declare-fun m!1675147 () Bool)

(assert (=> b!1451327 m!1675147))

(assert (=> d!421656 m!1674611))

(assert (=> d!421656 m!1674611))

(declare-fun m!1675149 () Bool)

(assert (=> d!421656 m!1675149))

(assert (=> d!421656 m!1674553))

(declare-fun m!1675153 () Bool)

(assert (=> b!1451326 m!1675153))

(declare-fun m!1675157 () Bool)

(assert (=> b!1451326 m!1675157))

(declare-fun m!1675159 () Bool)

(assert (=> b!1451326 m!1675159))

(assert (=> b!1451326 m!1675045))

(assert (=> b!1451326 m!1675047))

(declare-fun m!1675163 () Bool)

(assert (=> b!1451328 m!1675163))

(assert (=> b!1451328 m!1675163))

(declare-fun m!1675165 () Bool)

(assert (=> b!1451328 m!1675165))

(declare-fun m!1675167 () Bool)

(assert (=> b!1451328 m!1675167))

(assert (=> b!1451324 m!1675163))

(assert (=> b!1451324 m!1675163))

(assert (=> b!1451324 m!1675165))

(declare-fun m!1675169 () Bool)

(assert (=> b!1451324 m!1675169))

(assert (=> b!1451325 m!1675159))

(assert (=> d!421492 d!421656))

(assert (=> d!421492 d!421538))

(declare-fun d!421664 () Bool)

(assert (=> d!421664 (= (isEmpty!9472 (list!6045 (tokens!2074 other!32))) ((_ is Nil!15126) (list!6045 (tokens!2074 other!32))))))

(assert (=> d!421544 d!421664))

(assert (=> d!421544 d!421482))

(declare-fun d!421666 () Bool)

(declare-fun lt!500420 () Bool)

(assert (=> d!421666 (= lt!500420 (isEmpty!9472 (list!6046 (c!238838 (tokens!2074 other!32)))))))

(assert (=> d!421666 (= lt!500420 (= (size!12369 (c!238838 (tokens!2074 other!32))) 0))))

(assert (=> d!421666 (= (isEmpty!9473 (c!238838 (tokens!2074 other!32))) lt!500420)))

(declare-fun bs!342669 () Bool)

(assert (= bs!342669 d!421666))

(assert (=> bs!342669 m!1674587))

(assert (=> bs!342669 m!1674587))

(declare-fun m!1675177 () Bool)

(assert (=> bs!342669 m!1675177))

(declare-fun m!1675179 () Bool)

(assert (=> bs!342669 m!1675179))

(assert (=> d!421544 d!421666))

(declare-fun d!421670 () Bool)

(declare-fun lt!500429 () Token!4992)

(declare-fun apply!3916 (List!15192 Int) Token!4992)

(assert (=> d!421670 (= lt!500429 (apply!3916 (list!6045 (_1!7990 lt!500266)) 0))))

(declare-fun apply!3917 (Conc!5157 Int) Token!4992)

(assert (=> d!421670 (= lt!500429 (apply!3917 (c!238838 (_1!7990 lt!500266)) 0))))

(declare-fun e!926102 () Bool)

(assert (=> d!421670 e!926102))

(declare-fun res!657239 () Bool)

(assert (=> d!421670 (=> (not res!657239) (not e!926102))))

(assert (=> d!421670 (= res!657239 (<= 0 0))))

(assert (=> d!421670 (= (apply!3908 (_1!7990 lt!500266) 0) lt!500429)))

(declare-fun b!1451338 () Bool)

(assert (=> b!1451338 (= e!926102 (< 0 (size!12364 (_1!7990 lt!500266))))))

(assert (= (and d!421670 res!657239) b!1451338))

(assert (=> d!421670 m!1675013))

(assert (=> d!421670 m!1675013))

(declare-fun m!1675193 () Bool)

(assert (=> d!421670 m!1675193))

(declare-fun m!1675195 () Bool)

(assert (=> d!421670 m!1675195))

(assert (=> b!1451338 m!1674575))

(assert (=> b!1450939 d!421670))

(declare-fun d!421678 () Bool)

(declare-fun lt!500432 () BalanceConc!10252)

(assert (=> d!421678 (= (list!6049 lt!500432) (originalCharacters!3527 lt!500254))))

(declare-fun dynLambda!6885 (Int TokenValue!2755) BalanceConc!10252)

(assert (=> d!421678 (= lt!500432 (dynLambda!6885 (toChars!3831 (transformation!2665 (rule!4438 lt!500254))) (value!85600 lt!500254)))))

(assert (=> d!421678 (= (charsOf!1527 lt!500254) lt!500432)))

(declare-fun b_lambda!45199 () Bool)

(assert (=> (not b_lambda!45199) (not d!421678)))

(declare-fun t!130632 () Bool)

(declare-fun tb!78809 () Bool)

(assert (=> (and b!1451070 (= (toChars!3831 (transformation!2665 (h!20528 (rules!11596 thiss!10022)))) (toChars!3831 (transformation!2665 (rule!4438 lt!500254)))) t!130632) tb!78809))

(declare-fun b!1451343 () Bool)

(declare-fun e!926105 () Bool)

(declare-fun tp!409481 () Bool)

(declare-fun inv!20200 (Conc!5156) Bool)

(assert (=> b!1451343 (= e!926105 (and (inv!20200 (c!238836 (dynLambda!6885 (toChars!3831 (transformation!2665 (rule!4438 lt!500254))) (value!85600 lt!500254)))) tp!409481))))

(declare-fun result!95376 () Bool)

(declare-fun inv!20201 (BalanceConc!10252) Bool)

(assert (=> tb!78809 (= result!95376 (and (inv!20201 (dynLambda!6885 (toChars!3831 (transformation!2665 (rule!4438 lt!500254))) (value!85600 lt!500254))) e!926105))))

(assert (= tb!78809 b!1451343))

(declare-fun m!1675197 () Bool)

(assert (=> b!1451343 m!1675197))

(declare-fun m!1675199 () Bool)

(assert (=> tb!78809 m!1675199))

(assert (=> d!421678 t!130632))

(declare-fun b_and!98215 () Bool)

(assert (= b_and!98193 (and (=> t!130632 result!95376) b_and!98215)))

(declare-fun tb!78811 () Bool)

(declare-fun t!130634 () Bool)

(assert (=> (and b!1451087 (= (toChars!3831 (transformation!2665 (h!20528 (rules!11596 other!32)))) (toChars!3831 (transformation!2665 (rule!4438 lt!500254)))) t!130634) tb!78811))

(declare-fun result!95380 () Bool)

(assert (= result!95380 result!95376))

(assert (=> d!421678 t!130634))

(declare-fun b_and!98217 () Bool)

(assert (= b_and!98197 (and (=> t!130634 result!95380) b_and!98217)))

(declare-fun m!1675201 () Bool)

(assert (=> d!421678 m!1675201))

(declare-fun m!1675203 () Bool)

(assert (=> d!421678 m!1675203))

(assert (=> d!421498 d!421678))

(declare-fun d!421680 () Bool)

(declare-fun e!926108 () Bool)

(assert (=> d!421680 e!926108))

(declare-fun res!657242 () Bool)

(assert (=> d!421680 (=> (not res!657242) (not e!926108))))

(declare-fun lt!500435 () BalanceConc!10252)

(assert (=> d!421680 (= res!657242 (= (list!6049 lt!500435) (Cons!15124 (apply!3909 (charsOf!1527 lt!500253) 0) Nil!15124)))))

(declare-fun singleton!529 (C!8136) BalanceConc!10252)

(assert (=> d!421680 (= lt!500435 (singleton!529 (apply!3909 (charsOf!1527 lt!500253) 0)))))

(assert (=> d!421680 (= (singletonSeq!1260 (apply!3909 (charsOf!1527 lt!500253) 0)) lt!500435)))

(declare-fun b!1451346 () Bool)

(declare-fun isBalanced!1541 (Conc!5156) Bool)

(assert (=> b!1451346 (= e!926108 (isBalanced!1541 (c!238836 lt!500435)))))

(assert (= (and d!421680 res!657242) b!1451346))

(declare-fun m!1675205 () Bool)

(assert (=> d!421680 m!1675205))

(assert (=> d!421680 m!1674623))

(declare-fun m!1675207 () Bool)

(assert (=> d!421680 m!1675207))

(declare-fun m!1675209 () Bool)

(assert (=> b!1451346 m!1675209))

(assert (=> d!421498 d!421680))

(declare-fun d!421682 () Bool)

(declare-fun lt!500438 () C!8136)

(declare-fun apply!3918 (List!15190 Int) C!8136)

(assert (=> d!421682 (= lt!500438 (apply!3918 (list!6049 (charsOf!1527 lt!500253)) 0))))

(declare-fun apply!3920 (Conc!5156 Int) C!8136)

(assert (=> d!421682 (= lt!500438 (apply!3920 (c!238836 (charsOf!1527 lt!500253)) 0))))

(declare-fun e!926111 () Bool)

(assert (=> d!421682 e!926111))

(declare-fun res!657245 () Bool)

(assert (=> d!421682 (=> (not res!657245) (not e!926111))))

(assert (=> d!421682 (= res!657245 (<= 0 0))))

(assert (=> d!421682 (= (apply!3909 (charsOf!1527 lt!500253) 0) lt!500438)))

(declare-fun b!1451349 () Bool)

(assert (=> b!1451349 (= e!926111 (< 0 (size!12367 (charsOf!1527 lt!500253))))))

(assert (= (and d!421682 res!657245) b!1451349))

(assert (=> d!421682 m!1674621))

(declare-fun m!1675211 () Bool)

(assert (=> d!421682 m!1675211))

(assert (=> d!421682 m!1675211))

(declare-fun m!1675213 () Bool)

(assert (=> d!421682 m!1675213))

(declare-fun m!1675215 () Bool)

(assert (=> d!421682 m!1675215))

(assert (=> b!1451349 m!1674621))

(declare-fun m!1675217 () Bool)

(assert (=> b!1451349 m!1675217))

(assert (=> d!421498 d!421682))

(declare-fun d!421684 () Bool)

(declare-fun lt!500439 () BalanceConc!10252)

(assert (=> d!421684 (= (list!6049 lt!500439) (originalCharacters!3527 lt!500253))))

(assert (=> d!421684 (= lt!500439 (dynLambda!6885 (toChars!3831 (transformation!2665 (rule!4438 lt!500253))) (value!85600 lt!500253)))))

(assert (=> d!421684 (= (charsOf!1527 lt!500253) lt!500439)))

(declare-fun b_lambda!45201 () Bool)

(assert (=> (not b_lambda!45201) (not d!421684)))

(declare-fun t!130637 () Bool)

(declare-fun tb!78813 () Bool)

(assert (=> (and b!1451070 (= (toChars!3831 (transformation!2665 (h!20528 (rules!11596 thiss!10022)))) (toChars!3831 (transformation!2665 (rule!4438 lt!500253)))) t!130637) tb!78813))

(declare-fun b!1451350 () Bool)

(declare-fun e!926112 () Bool)

(declare-fun tp!409482 () Bool)

(assert (=> b!1451350 (= e!926112 (and (inv!20200 (c!238836 (dynLambda!6885 (toChars!3831 (transformation!2665 (rule!4438 lt!500253))) (value!85600 lt!500253)))) tp!409482))))

(declare-fun result!95382 () Bool)

(assert (=> tb!78813 (= result!95382 (and (inv!20201 (dynLambda!6885 (toChars!3831 (transformation!2665 (rule!4438 lt!500253))) (value!85600 lt!500253))) e!926112))))

(assert (= tb!78813 b!1451350))

(declare-fun m!1675219 () Bool)

(assert (=> b!1451350 m!1675219))

(declare-fun m!1675221 () Bool)

(assert (=> tb!78813 m!1675221))

(assert (=> d!421684 t!130637))

(declare-fun b_and!98219 () Bool)

(assert (= b_and!98215 (and (=> t!130637 result!95382) b_and!98219)))

(declare-fun tb!78815 () Bool)

(declare-fun t!130639 () Bool)

(assert (=> (and b!1451087 (= (toChars!3831 (transformation!2665 (h!20528 (rules!11596 other!32)))) (toChars!3831 (transformation!2665 (rule!4438 lt!500253)))) t!130639) tb!78815))

(declare-fun result!95384 () Bool)

(assert (= result!95384 result!95382))

(assert (=> d!421684 t!130639))

(declare-fun b_and!98221 () Bool)

(assert (= b_and!98217 (and (=> t!130639 result!95384) b_and!98221)))

(declare-fun m!1675223 () Bool)

(assert (=> d!421684 m!1675223))

(declare-fun m!1675225 () Bool)

(assert (=> d!421684 m!1675225))

(assert (=> d!421498 d!421684))

(declare-fun lt!500464 () Bool)

(declare-fun d!421686 () Bool)

(declare-fun prefixMatch!314 (Regex!3979 List!15190) Bool)

(assert (=> d!421686 (= lt!500464 (prefixMatch!314 (rulesRegex!401 Lexer!2319 (rules!11596 thiss!10022)) (list!6049 (++!4056 (charsOf!1527 lt!500254) (singletonSeq!1260 (apply!3909 (charsOf!1527 lt!500253) 0))))))))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((List!15198 0))(
  ( (Nil!15132) (Cons!15132 (h!20533 Regex!3979) (t!130679 List!15198)) )
))
(declare-datatypes ((Context!1238 0))(
  ( (Context!1239 (exprs!1119 List!15198)) )
))
(declare-fun prefixMatchZipperSequence!342 ((InoxSet Context!1238) BalanceConc!10252 Int) Bool)

(declare-fun focus!110 (Regex!3979) (InoxSet Context!1238))

(assert (=> d!421686 (= lt!500464 (prefixMatchZipperSequence!342 (focus!110 (rulesRegex!401 Lexer!2319 (rules!11596 thiss!10022))) (++!4056 (charsOf!1527 lt!500254) (singletonSeq!1260 (apply!3909 (charsOf!1527 lt!500253) 0))) 0))))

(declare-fun lt!500469 () Unit!24035)

(declare-fun lt!500460 () Unit!24035)

(assert (=> d!421686 (= lt!500469 lt!500460)))

(declare-fun lt!500468 () List!15190)

(declare-fun lt!500466 () (InoxSet Context!1238))

(declare-fun prefixMatchZipper!90 ((InoxSet Context!1238) List!15190) Bool)

(assert (=> d!421686 (= (prefixMatch!314 (rulesRegex!401 Lexer!2319 (rules!11596 thiss!10022)) lt!500468) (prefixMatchZipper!90 lt!500466 lt!500468))))

(declare-datatypes ((List!15199 0))(
  ( (Nil!15133) (Cons!15133 (h!20534 Context!1238) (t!130680 List!15199)) )
))
(declare-fun lt!500467 () List!15199)

(declare-fun prefixMatchZipperRegexEquiv!90 ((InoxSet Context!1238) List!15199 Regex!3979 List!15190) Unit!24035)

(assert (=> d!421686 (= lt!500460 (prefixMatchZipperRegexEquiv!90 lt!500466 lt!500467 (rulesRegex!401 Lexer!2319 (rules!11596 thiss!10022)) lt!500468))))

(assert (=> d!421686 (= lt!500468 (list!6049 (++!4056 (charsOf!1527 lt!500254) (singletonSeq!1260 (apply!3909 (charsOf!1527 lt!500253) 0)))))))

(declare-fun toList!774 ((InoxSet Context!1238)) List!15199)

(assert (=> d!421686 (= lt!500467 (toList!774 (focus!110 (rulesRegex!401 Lexer!2319 (rules!11596 thiss!10022)))))))

(assert (=> d!421686 (= lt!500466 (focus!110 (rulesRegex!401 Lexer!2319 (rules!11596 thiss!10022))))))

(declare-fun lt!500463 () Unit!24035)

(declare-fun lt!500465 () Unit!24035)

(assert (=> d!421686 (= lt!500463 lt!500465)))

(declare-fun lt!500461 () Int)

(declare-fun lt!500462 () (InoxSet Context!1238))

(declare-fun dropList!474 (BalanceConc!10252 Int) List!15190)

(assert (=> d!421686 (= (prefixMatchZipper!90 lt!500462 (dropList!474 (++!4056 (charsOf!1527 lt!500254) (singletonSeq!1260 (apply!3909 (charsOf!1527 lt!500253) 0))) lt!500461)) (prefixMatchZipperSequence!342 lt!500462 (++!4056 (charsOf!1527 lt!500254) (singletonSeq!1260 (apply!3909 (charsOf!1527 lt!500253) 0))) lt!500461))))

(declare-fun lemmaprefixMatchZipperSequenceEquivalent!90 ((InoxSet Context!1238) BalanceConc!10252 Int) Unit!24035)

(assert (=> d!421686 (= lt!500465 (lemmaprefixMatchZipperSequenceEquivalent!90 lt!500462 (++!4056 (charsOf!1527 lt!500254) (singletonSeq!1260 (apply!3909 (charsOf!1527 lt!500253) 0))) lt!500461))))

(assert (=> d!421686 (= lt!500461 0)))

(assert (=> d!421686 (= lt!500462 (focus!110 (rulesRegex!401 Lexer!2319 (rules!11596 thiss!10022))))))

(declare-fun validRegex!1679 (Regex!3979) Bool)

(assert (=> d!421686 (validRegex!1679 (rulesRegex!401 Lexer!2319 (rules!11596 thiss!10022)))))

(assert (=> d!421686 (= (prefixMatchZipperSequence!339 (rulesRegex!401 Lexer!2319 (rules!11596 thiss!10022)) (++!4056 (charsOf!1527 lt!500254) (singletonSeq!1260 (apply!3909 (charsOf!1527 lt!500253) 0)))) lt!500464)))

(declare-fun bs!342673 () Bool)

(assert (= bs!342673 d!421686))

(assert (=> bs!342673 m!1674625))

(declare-fun m!1675227 () Bool)

(assert (=> bs!342673 m!1675227))

(declare-fun m!1675229 () Bool)

(assert (=> bs!342673 m!1675229))

(declare-fun m!1675231 () Bool)

(assert (=> bs!342673 m!1675231))

(declare-fun m!1675233 () Bool)

(assert (=> bs!342673 m!1675233))

(assert (=> bs!342673 m!1674619))

(assert (=> bs!342673 m!1675229))

(assert (=> bs!342673 m!1674625))

(declare-fun m!1675235 () Bool)

(assert (=> bs!342673 m!1675235))

(declare-fun m!1675237 () Bool)

(assert (=> bs!342673 m!1675237))

(declare-fun m!1675239 () Bool)

(assert (=> bs!342673 m!1675239))

(assert (=> bs!342673 m!1674619))

(declare-fun m!1675241 () Bool)

(assert (=> bs!342673 m!1675241))

(assert (=> bs!342673 m!1674619))

(declare-fun m!1675243 () Bool)

(assert (=> bs!342673 m!1675243))

(assert (=> bs!342673 m!1674619))

(declare-fun m!1675245 () Bool)

(assert (=> bs!342673 m!1675245))

(assert (=> bs!342673 m!1674625))

(assert (=> bs!342673 m!1675239))

(assert (=> bs!342673 m!1675239))

(declare-fun m!1675247 () Bool)

(assert (=> bs!342673 m!1675247))

(assert (=> bs!342673 m!1674625))

(declare-fun m!1675249 () Bool)

(assert (=> bs!342673 m!1675249))

(assert (=> bs!342673 m!1674619))

(assert (=> bs!342673 m!1675235))

(assert (=> bs!342673 m!1674625))

(declare-fun m!1675251 () Bool)

(assert (=> bs!342673 m!1675251))

(assert (=> d!421498 d!421686))

(declare-fun d!421688 () Bool)

(declare-fun lt!500472 () Unit!24035)

(declare-fun lemma!173 (List!15193 LexerInterface!2321 List!15193) Unit!24035)

(assert (=> d!421688 (= lt!500472 (lemma!173 (rules!11596 thiss!10022) Lexer!2319 (rules!11596 thiss!10022)))))

(declare-fun lambda!63086 () Int)

(declare-fun generalisedUnion!181 (List!15198) Regex!3979)

(declare-fun map!3291 (List!15193 Int) List!15198)

(assert (=> d!421688 (= (rulesRegex!401 Lexer!2319 (rules!11596 thiss!10022)) (generalisedUnion!181 (map!3291 (rules!11596 thiss!10022) lambda!63086)))))

(declare-fun bs!342674 () Bool)

(assert (= bs!342674 d!421688))

(declare-fun m!1675253 () Bool)

(assert (=> bs!342674 m!1675253))

(declare-fun m!1675255 () Bool)

(assert (=> bs!342674 m!1675255))

(assert (=> bs!342674 m!1675255))

(declare-fun m!1675257 () Bool)

(assert (=> bs!342674 m!1675257))

(assert (=> d!421498 d!421688))

(declare-fun b!1451361 () Bool)

(declare-fun res!657256 () Bool)

(declare-fun e!926115 () Bool)

(assert (=> b!1451361 (=> (not res!657256) (not e!926115))))

(declare-fun height!768 (Conc!5156) Int)

(declare-fun ++!4061 (Conc!5156 Conc!5156) Conc!5156)

(declare-fun max!0 (Int Int) Int)

(assert (=> b!1451361 (= res!657256 (>= (height!768 (++!4061 (c!238836 (charsOf!1527 lt!500254)) (c!238836 (singletonSeq!1260 (apply!3909 (charsOf!1527 lt!500253) 0))))) (max!0 (height!768 (c!238836 (charsOf!1527 lt!500254))) (height!768 (c!238836 (singletonSeq!1260 (apply!3909 (charsOf!1527 lt!500253) 0)))))))))

(declare-fun b!1451360 () Bool)

(declare-fun res!657254 () Bool)

(assert (=> b!1451360 (=> (not res!657254) (not e!926115))))

(assert (=> b!1451360 (= res!657254 (<= (height!768 (++!4061 (c!238836 (charsOf!1527 lt!500254)) (c!238836 (singletonSeq!1260 (apply!3909 (charsOf!1527 lt!500253) 0))))) (+ (max!0 (height!768 (c!238836 (charsOf!1527 lt!500254))) (height!768 (c!238836 (singletonSeq!1260 (apply!3909 (charsOf!1527 lt!500253) 0))))) 1)))))

(declare-fun b!1451359 () Bool)

(declare-fun res!657255 () Bool)

(assert (=> b!1451359 (=> (not res!657255) (not e!926115))))

(assert (=> b!1451359 (= res!657255 (isBalanced!1541 (++!4061 (c!238836 (charsOf!1527 lt!500254)) (c!238836 (singletonSeq!1260 (apply!3909 (charsOf!1527 lt!500253) 0))))))))

(declare-fun d!421690 () Bool)

(assert (=> d!421690 e!926115))

(declare-fun res!657257 () Bool)

(assert (=> d!421690 (=> (not res!657257) (not e!926115))))

(declare-fun appendAssocInst!329 (Conc!5156 Conc!5156) Bool)

(assert (=> d!421690 (= res!657257 (appendAssocInst!329 (c!238836 (charsOf!1527 lt!500254)) (c!238836 (singletonSeq!1260 (apply!3909 (charsOf!1527 lt!500253) 0)))))))

(declare-fun lt!500475 () BalanceConc!10252)

(assert (=> d!421690 (= lt!500475 (BalanceConc!10253 (++!4061 (c!238836 (charsOf!1527 lt!500254)) (c!238836 (singletonSeq!1260 (apply!3909 (charsOf!1527 lt!500253) 0))))))))

(assert (=> d!421690 (= (++!4056 (charsOf!1527 lt!500254) (singletonSeq!1260 (apply!3909 (charsOf!1527 lt!500253) 0))) lt!500475)))

(declare-fun b!1451362 () Bool)

(declare-fun ++!4062 (List!15190 List!15190) List!15190)

(assert (=> b!1451362 (= e!926115 (= (list!6049 lt!500475) (++!4062 (list!6049 (charsOf!1527 lt!500254)) (list!6049 (singletonSeq!1260 (apply!3909 (charsOf!1527 lt!500253) 0))))))))

(assert (= (and d!421690 res!657257) b!1451359))

(assert (= (and b!1451359 res!657255) b!1451360))

(assert (= (and b!1451360 res!657254) b!1451361))

(assert (= (and b!1451361 res!657256) b!1451362))

(declare-fun m!1675259 () Bool)

(assert (=> b!1451361 m!1675259))

(declare-fun m!1675261 () Bool)

(assert (=> b!1451361 m!1675261))

(declare-fun m!1675263 () Bool)

(assert (=> b!1451361 m!1675263))

(assert (=> b!1451361 m!1675263))

(declare-fun m!1675265 () Bool)

(assert (=> b!1451361 m!1675265))

(assert (=> b!1451361 m!1675261))

(assert (=> b!1451361 m!1675259))

(declare-fun m!1675267 () Bool)

(assert (=> b!1451361 m!1675267))

(declare-fun m!1675269 () Bool)

(assert (=> d!421690 m!1675269))

(assert (=> d!421690 m!1675263))

(assert (=> b!1451360 m!1675259))

(assert (=> b!1451360 m!1675261))

(assert (=> b!1451360 m!1675263))

(assert (=> b!1451360 m!1675263))

(assert (=> b!1451360 m!1675265))

(assert (=> b!1451360 m!1675261))

(assert (=> b!1451360 m!1675259))

(assert (=> b!1451360 m!1675267))

(declare-fun m!1675271 () Bool)

(assert (=> b!1451362 m!1675271))

(assert (=> b!1451362 m!1674615))

(declare-fun m!1675273 () Bool)

(assert (=> b!1451362 m!1675273))

(assert (=> b!1451362 m!1674617))

(declare-fun m!1675275 () Bool)

(assert (=> b!1451362 m!1675275))

(assert (=> b!1451362 m!1675273))

(assert (=> b!1451362 m!1675275))

(declare-fun m!1675277 () Bool)

(assert (=> b!1451362 m!1675277))

(assert (=> b!1451359 m!1675263))

(assert (=> b!1451359 m!1675263))

(declare-fun m!1675279 () Bool)

(assert (=> b!1451359 m!1675279))

(assert (=> d!421498 d!421690))

(declare-fun d!421692 () Bool)

(assert (=> d!421692 (= (list!6045 (singletonSeq!1259 lt!500254)) (list!6046 (c!238838 (singletonSeq!1259 lt!500254))))))

(declare-fun bs!342675 () Bool)

(assert (= bs!342675 d!421692))

(declare-fun m!1675281 () Bool)

(assert (=> bs!342675 m!1675281))

(assert (=> d!421500 d!421692))

(assert (=> d!421500 d!421632))

(assert (=> d!421500 d!421522))

(declare-fun d!421694 () Bool)

(assert (=> d!421694 (= (list!6045 (_1!7990 (lex!1065 Lexer!2319 (rules!11596 thiss!10022) (print!1092 Lexer!2319 (singletonSeq!1259 lt!500254))))) (list!6046 (c!238838 (_1!7990 (lex!1065 Lexer!2319 (rules!11596 thiss!10022) (print!1092 Lexer!2319 (singletonSeq!1259 lt!500254)))))))))

(declare-fun bs!342676 () Bool)

(assert (= bs!342676 d!421694))

(declare-fun m!1675283 () Bool)

(assert (=> bs!342676 m!1675283))

(assert (=> d!421500 d!421694))

(assert (=> d!421500 d!421636))

(assert (=> d!421500 d!421634))

(declare-fun d!421696 () Bool)

(declare-fun lt!500476 () Int)

(assert (=> d!421696 (= lt!500476 (size!12366 (list!6045 (_1!7990 lt!500280))))))

(assert (=> d!421696 (= lt!500476 (size!12369 (c!238838 (_1!7990 lt!500280))))))

(assert (=> d!421696 (= (size!12364 (_1!7990 lt!500280)) lt!500476)))

(declare-fun bs!342677 () Bool)

(assert (= bs!342677 d!421696))

(declare-fun m!1675285 () Bool)

(assert (=> bs!342677 m!1675285))

(assert (=> bs!342677 m!1675285))

(declare-fun m!1675287 () Bool)

(assert (=> bs!342677 m!1675287))

(declare-fun m!1675289 () Bool)

(assert (=> bs!342677 m!1675289))

(assert (=> d!421500 d!421696))

(declare-fun d!421698 () Bool)

(declare-fun lt!500477 () Bool)

(assert (=> d!421698 (= lt!500477 (isEmpty!9474 (list!6049 (_2!7990 (lex!1065 Lexer!2319 (rules!11596 thiss!10022) (print!1092 Lexer!2319 (singletonSeq!1259 lt!500253)))))))))

(assert (=> d!421698 (= lt!500477 (isEmpty!9475 (c!238836 (_2!7990 (lex!1065 Lexer!2319 (rules!11596 thiss!10022) (print!1092 Lexer!2319 (singletonSeq!1259 lt!500253)))))))))

(assert (=> d!421698 (= (isEmpty!9469 (_2!7990 (lex!1065 Lexer!2319 (rules!11596 thiss!10022) (print!1092 Lexer!2319 (singletonSeq!1259 lt!500253))))) lt!500477)))

(declare-fun bs!342678 () Bool)

(assert (= bs!342678 d!421698))

(declare-fun m!1675291 () Bool)

(assert (=> bs!342678 m!1675291))

(assert (=> bs!342678 m!1675291))

(declare-fun m!1675293 () Bool)

(assert (=> bs!342678 m!1675293))

(declare-fun m!1675295 () Bool)

(assert (=> bs!342678 m!1675295))

(assert (=> b!1450941 d!421698))

(assert (=> b!1450941 d!421594))

(assert (=> b!1450941 d!421614))

(assert (=> b!1450941 d!421612))

(assert (=> b!1451023 d!421530))

(declare-fun d!421700 () Bool)

(declare-fun lt!500478 () Bool)

(declare-fun e!926117 () Bool)

(assert (=> d!421700 (= lt!500478 e!926117)))

(declare-fun res!657260 () Bool)

(assert (=> d!421700 (=> (not res!657260) (not e!926117))))

(assert (=> d!421700 (= res!657260 (= (list!6045 (_1!7990 (lex!1065 Lexer!2319 (rules!11596 thiss!10022) (print!1092 Lexer!2319 (singletonSeq!1259 (h!20527 lt!500252)))))) (list!6045 (singletonSeq!1259 (h!20527 lt!500252)))))))

(declare-fun e!926116 () Bool)

(assert (=> d!421700 (= lt!500478 e!926116)))

(declare-fun res!657258 () Bool)

(assert (=> d!421700 (=> (not res!657258) (not e!926116))))

(declare-fun lt!500479 () tuple2!14208)

(assert (=> d!421700 (= res!657258 (= (size!12364 (_1!7990 lt!500479)) 1))))

(assert (=> d!421700 (= lt!500479 (lex!1065 Lexer!2319 (rules!11596 thiss!10022) (print!1092 Lexer!2319 (singletonSeq!1259 (h!20527 lt!500252)))))))

(assert (=> d!421700 (not (isEmpty!9466 (rules!11596 thiss!10022)))))

(assert (=> d!421700 (= (rulesProduceIndividualToken!1240 Lexer!2319 (rules!11596 thiss!10022) (h!20527 lt!500252)) lt!500478)))

(declare-fun b!1451363 () Bool)

(declare-fun res!657259 () Bool)

(assert (=> b!1451363 (=> (not res!657259) (not e!926116))))

(assert (=> b!1451363 (= res!657259 (= (apply!3908 (_1!7990 lt!500479) 0) (h!20527 lt!500252)))))

(declare-fun b!1451364 () Bool)

(assert (=> b!1451364 (= e!926116 (isEmpty!9469 (_2!7990 lt!500479)))))

(declare-fun b!1451365 () Bool)

(assert (=> b!1451365 (= e!926117 (isEmpty!9469 (_2!7990 (lex!1065 Lexer!2319 (rules!11596 thiss!10022) (print!1092 Lexer!2319 (singletonSeq!1259 (h!20527 lt!500252)))))))))

(assert (= (and d!421700 res!657258) b!1451363))

(assert (= (and b!1451363 res!657259) b!1451364))

(assert (= (and d!421700 res!657260) b!1451365))

(declare-fun m!1675297 () Bool)

(assert (=> d!421700 m!1675297))

(declare-fun m!1675299 () Bool)

(assert (=> d!421700 m!1675299))

(declare-fun m!1675301 () Bool)

(assert (=> d!421700 m!1675301))

(declare-fun m!1675303 () Bool)

(assert (=> d!421700 m!1675303))

(assert (=> d!421700 m!1675299))

(assert (=> d!421700 m!1674545))

(assert (=> d!421700 m!1675299))

(declare-fun m!1675305 () Bool)

(assert (=> d!421700 m!1675305))

(assert (=> d!421700 m!1675305))

(declare-fun m!1675307 () Bool)

(assert (=> d!421700 m!1675307))

(declare-fun m!1675309 () Bool)

(assert (=> b!1451363 m!1675309))

(declare-fun m!1675311 () Bool)

(assert (=> b!1451364 m!1675311))

(assert (=> b!1451365 m!1675299))

(assert (=> b!1451365 m!1675299))

(assert (=> b!1451365 m!1675305))

(assert (=> b!1451365 m!1675305))

(assert (=> b!1451365 m!1675307))

(declare-fun m!1675313 () Bool)

(assert (=> b!1451365 m!1675313))

(assert (=> b!1451044 d!421700))

(declare-fun d!421702 () Bool)

(declare-fun c!238880 () Bool)

(assert (=> d!421702 (= c!238880 ((_ is Node!5157) (left!12860 (c!238838 (tokens!2074 thiss!10022)))))))

(declare-fun e!926118 () Bool)

(assert (=> d!421702 (= (inv!20189 (left!12860 (c!238838 (tokens!2074 thiss!10022)))) e!926118)))

(declare-fun b!1451366 () Bool)

(assert (=> b!1451366 (= e!926118 (inv!20192 (left!12860 (c!238838 (tokens!2074 thiss!10022)))))))

(declare-fun b!1451367 () Bool)

(declare-fun e!926119 () Bool)

(assert (=> b!1451367 (= e!926118 e!926119)))

(declare-fun res!657261 () Bool)

(assert (=> b!1451367 (= res!657261 (not ((_ is Leaf!7691) (left!12860 (c!238838 (tokens!2074 thiss!10022))))))))

(assert (=> b!1451367 (=> res!657261 e!926119)))

(declare-fun b!1451368 () Bool)

(assert (=> b!1451368 (= e!926119 (inv!20193 (left!12860 (c!238838 (tokens!2074 thiss!10022)))))))

(assert (= (and d!421702 c!238880) b!1451366))

(assert (= (and d!421702 (not c!238880)) b!1451367))

(assert (= (and b!1451367 (not res!657261)) b!1451368))

(declare-fun m!1675315 () Bool)

(assert (=> b!1451366 m!1675315))

(declare-fun m!1675317 () Bool)

(assert (=> b!1451368 m!1675317))

(assert (=> b!1451082 d!421702))

(declare-fun d!421704 () Bool)

(declare-fun c!238881 () Bool)

(assert (=> d!421704 (= c!238881 ((_ is Node!5157) (right!13190 (c!238838 (tokens!2074 thiss!10022)))))))

(declare-fun e!926120 () Bool)

(assert (=> d!421704 (= (inv!20189 (right!13190 (c!238838 (tokens!2074 thiss!10022)))) e!926120)))

(declare-fun b!1451369 () Bool)

(assert (=> b!1451369 (= e!926120 (inv!20192 (right!13190 (c!238838 (tokens!2074 thiss!10022)))))))

(declare-fun b!1451370 () Bool)

(declare-fun e!926121 () Bool)

(assert (=> b!1451370 (= e!926120 e!926121)))

(declare-fun res!657262 () Bool)

(assert (=> b!1451370 (= res!657262 (not ((_ is Leaf!7691) (right!13190 (c!238838 (tokens!2074 thiss!10022))))))))

(assert (=> b!1451370 (=> res!657262 e!926121)))

(declare-fun b!1451371 () Bool)

(assert (=> b!1451371 (= e!926121 (inv!20193 (right!13190 (c!238838 (tokens!2074 thiss!10022)))))))

(assert (= (and d!421704 c!238881) b!1451369))

(assert (= (and d!421704 (not c!238881)) b!1451370))

(assert (= (and b!1451370 (not res!657262)) b!1451371))

(declare-fun m!1675319 () Bool)

(assert (=> b!1451369 m!1675319))

(declare-fun m!1675321 () Bool)

(assert (=> b!1451371 m!1675321))

(assert (=> b!1451082 d!421704))

(declare-fun d!421706 () Bool)

(declare-fun tokensListTwoByTwoPredicateSeparable!132 (LexerInterface!2321 BalanceConc!10254 Int List!15193) Bool)

(assert (=> d!421706 (= (separableTokens!255 Lexer!2319 (tokens!2074 thiss!10022) (rules!11596 thiss!10022)) (tokensListTwoByTwoPredicateSeparable!132 Lexer!2319 (tokens!2074 thiss!10022) 0 (rules!11596 thiss!10022)))))

(declare-fun bs!342695 () Bool)

(assert (= bs!342695 d!421706))

(declare-fun m!1675501 () Bool)

(assert (=> bs!342695 m!1675501))

(assert (=> b!1451025 d!421706))

(declare-fun d!421764 () Bool)

(assert (=> d!421764 (= (inv!20183 (tag!2929 (h!20528 (rules!11596 thiss!10022)))) (= (mod (str.len (value!85599 (tag!2929 (h!20528 (rules!11596 thiss!10022))))) 2) 0))))

(assert (=> b!1451069 d!421764))

(declare-fun d!421766 () Bool)

(declare-fun res!657317 () Bool)

(declare-fun e!926184 () Bool)

(assert (=> d!421766 (=> (not res!657317) (not e!926184))))

(assert (=> d!421766 (= res!657317 (semiInverseModEq!1003 (toChars!3831 (transformation!2665 (h!20528 (rules!11596 thiss!10022)))) (toValue!3972 (transformation!2665 (h!20528 (rules!11596 thiss!10022))))))))

(assert (=> d!421766 (= (inv!20194 (transformation!2665 (h!20528 (rules!11596 thiss!10022)))) e!926184)))

(declare-fun b!1451461 () Bool)

(assert (=> b!1451461 (= e!926184 (equivClasses!962 (toChars!3831 (transformation!2665 (h!20528 (rules!11596 thiss!10022)))) (toValue!3972 (transformation!2665 (h!20528 (rules!11596 thiss!10022))))))))

(assert (= (and d!421766 res!657317) b!1451461))

(declare-fun m!1675503 () Bool)

(assert (=> d!421766 m!1675503))

(declare-fun m!1675505 () Bool)

(assert (=> b!1451461 m!1675505))

(assert (=> b!1451069 d!421766))

(declare-fun d!421768 () Bool)

(declare-fun res!657322 () Bool)

(declare-fun e!926189 () Bool)

(assert (=> d!421768 (=> res!657322 e!926189)))

(assert (=> d!421768 (= res!657322 ((_ is Nil!15127) (rules!11596 thiss!10022)))))

(assert (=> d!421768 (= (noDuplicateTag!982 Lexer!2319 (rules!11596 thiss!10022) Nil!15129) e!926189)))

(declare-fun b!1451466 () Bool)

(declare-fun e!926190 () Bool)

(assert (=> b!1451466 (= e!926189 e!926190)))

(declare-fun res!657323 () Bool)

(assert (=> b!1451466 (=> (not res!657323) (not e!926190))))

(declare-fun contains!2891 (List!15195 String!18031) Bool)

(assert (=> b!1451466 (= res!657323 (not (contains!2891 Nil!15129 (tag!2929 (h!20528 (rules!11596 thiss!10022))))))))

(declare-fun b!1451467 () Bool)

(assert (=> b!1451467 (= e!926190 (noDuplicateTag!982 Lexer!2319 (t!130594 (rules!11596 thiss!10022)) (Cons!15129 (tag!2929 (h!20528 (rules!11596 thiss!10022))) Nil!15129)))))

(assert (= (and d!421768 (not res!657322)) b!1451466))

(assert (= (and b!1451466 res!657323) b!1451467))

(declare-fun m!1675507 () Bool)

(assert (=> b!1451466 m!1675507))

(declare-fun m!1675509 () Bool)

(assert (=> b!1451467 m!1675509))

(assert (=> b!1451043 d!421768))

(assert (=> b!1451057 d!421706))

(declare-fun d!421770 () Bool)

(declare-fun res!657330 () Bool)

(declare-fun e!926193 () Bool)

(assert (=> d!421770 (=> (not res!657330) (not e!926193))))

(assert (=> d!421770 (= res!657330 (= (csize!10544 (c!238838 (tokens!2074 thiss!10022))) (+ (size!12369 (left!12860 (c!238838 (tokens!2074 thiss!10022)))) (size!12369 (right!13190 (c!238838 (tokens!2074 thiss!10022)))))))))

(assert (=> d!421770 (= (inv!20192 (c!238838 (tokens!2074 thiss!10022))) e!926193)))

(declare-fun b!1451474 () Bool)

(declare-fun res!657331 () Bool)

(assert (=> b!1451474 (=> (not res!657331) (not e!926193))))

(assert (=> b!1451474 (= res!657331 (and (not (= (left!12860 (c!238838 (tokens!2074 thiss!10022))) Empty!5157)) (not (= (right!13190 (c!238838 (tokens!2074 thiss!10022))) Empty!5157))))))

(declare-fun b!1451475 () Bool)

(declare-fun res!657332 () Bool)

(assert (=> b!1451475 (=> (not res!657332) (not e!926193))))

(assert (=> b!1451475 (= res!657332 (= (cheight!5368 (c!238838 (tokens!2074 thiss!10022))) (+ (max!0 (height!767 (left!12860 (c!238838 (tokens!2074 thiss!10022)))) (height!767 (right!13190 (c!238838 (tokens!2074 thiss!10022))))) 1)))))

(declare-fun b!1451476 () Bool)

(assert (=> b!1451476 (= e!926193 (<= 0 (cheight!5368 (c!238838 (tokens!2074 thiss!10022)))))))

(assert (= (and d!421770 res!657330) b!1451474))

(assert (= (and b!1451474 res!657331) b!1451475))

(assert (= (and b!1451475 res!657332) b!1451476))

(declare-fun m!1675511 () Bool)

(assert (=> d!421770 m!1675511))

(declare-fun m!1675513 () Bool)

(assert (=> d!421770 m!1675513))

(assert (=> b!1451475 m!1675107))

(assert (=> b!1451475 m!1675109))

(assert (=> b!1451475 m!1675107))

(assert (=> b!1451475 m!1675109))

(declare-fun m!1675515 () Bool)

(assert (=> b!1451475 m!1675515))

(assert (=> b!1451038 d!421770))

(assert (=> d!421546 d!421530))

(declare-fun d!421772 () Bool)

(declare-fun res!657333 () Bool)

(declare-fun e!926194 () Bool)

(assert (=> d!421772 (=> (not res!657333) (not e!926194))))

(assert (=> d!421772 (= res!657333 (= (csize!10544 (c!238838 (tokens!2074 other!32))) (+ (size!12369 (left!12860 (c!238838 (tokens!2074 other!32)))) (size!12369 (right!13190 (c!238838 (tokens!2074 other!32)))))))))

(assert (=> d!421772 (= (inv!20192 (c!238838 (tokens!2074 other!32))) e!926194)))

(declare-fun b!1451477 () Bool)

(declare-fun res!657334 () Bool)

(assert (=> b!1451477 (=> (not res!657334) (not e!926194))))

(assert (=> b!1451477 (= res!657334 (and (not (= (left!12860 (c!238838 (tokens!2074 other!32))) Empty!5157)) (not (= (right!13190 (c!238838 (tokens!2074 other!32))) Empty!5157))))))

(declare-fun b!1451478 () Bool)

(declare-fun res!657335 () Bool)

(assert (=> b!1451478 (=> (not res!657335) (not e!926194))))

(assert (=> b!1451478 (= res!657335 (= (cheight!5368 (c!238838 (tokens!2074 other!32))) (+ (max!0 (height!767 (left!12860 (c!238838 (tokens!2074 other!32)))) (height!767 (right!13190 (c!238838 (tokens!2074 other!32))))) 1)))))

(declare-fun b!1451479 () Bool)

(assert (=> b!1451479 (= e!926194 (<= 0 (cheight!5368 (c!238838 (tokens!2074 other!32)))))))

(assert (= (and d!421772 res!657333) b!1451477))

(assert (= (and b!1451477 res!657334) b!1451478))

(assert (= (and b!1451478 res!657335) b!1451479))

(declare-fun m!1675517 () Bool)

(assert (=> d!421772 m!1675517))

(declare-fun m!1675519 () Bool)

(assert (=> d!421772 m!1675519))

(assert (=> b!1451478 m!1675119))

(assert (=> b!1451478 m!1675121))

(assert (=> b!1451478 m!1675119))

(assert (=> b!1451478 m!1675121))

(declare-fun m!1675521 () Bool)

(assert (=> b!1451478 m!1675521))

(assert (=> b!1451049 d!421772))

(declare-fun d!421774 () Bool)

(declare-fun res!657336 () Bool)

(declare-fun e!926195 () Bool)

(assert (=> d!421774 (=> (not res!657336) (not e!926195))))

(assert (=> d!421774 (= res!657336 (rulesValid!982 Lexer!2319 (rules!11596 other!32)))))

(assert (=> d!421774 (= (rulesInvariant!2154 Lexer!2319 (rules!11596 other!32)) e!926195)))

(declare-fun b!1451480 () Bool)

(assert (=> b!1451480 (= e!926195 (noDuplicateTag!982 Lexer!2319 (rules!11596 other!32) Nil!15129))))

(assert (= (and d!421774 res!657336) b!1451480))

(declare-fun m!1675523 () Bool)

(assert (=> d!421774 m!1675523))

(declare-fun m!1675525 () Bool)

(assert (=> b!1451480 m!1675525))

(assert (=> d!421550 d!421774))

(declare-fun d!421776 () Bool)

(declare-fun res!657337 () Bool)

(declare-fun e!926196 () Bool)

(assert (=> d!421776 (=> (not res!657337) (not e!926196))))

(assert (=> d!421776 (= res!657337 (<= (size!12366 (list!6048 (xs!7898 (c!238838 (tokens!2074 thiss!10022))))) 512))))

(assert (=> d!421776 (= (inv!20193 (c!238838 (tokens!2074 thiss!10022))) e!926196)))

(declare-fun b!1451481 () Bool)

(declare-fun res!657338 () Bool)

(assert (=> b!1451481 (=> (not res!657338) (not e!926196))))

(assert (=> b!1451481 (= res!657338 (= (csize!10545 (c!238838 (tokens!2074 thiss!10022))) (size!12366 (list!6048 (xs!7898 (c!238838 (tokens!2074 thiss!10022)))))))))

(declare-fun b!1451482 () Bool)

(assert (=> b!1451482 (= e!926196 (and (> (csize!10545 (c!238838 (tokens!2074 thiss!10022))) 0) (<= (csize!10545 (c!238838 (tokens!2074 thiss!10022))) 512)))))

(assert (= (and d!421776 res!657337) b!1451481))

(assert (= (and b!1451481 res!657338) b!1451482))

(assert (=> d!421776 m!1675043))

(assert (=> d!421776 m!1675043))

(declare-fun m!1675527 () Bool)

(assert (=> d!421776 m!1675527))

(assert (=> b!1451481 m!1675043))

(assert (=> b!1451481 m!1675043))

(assert (=> b!1451481 m!1675527))

(assert (=> b!1451040 d!421776))

(declare-fun d!421778 () Bool)

(declare-fun lt!500518 () Token!4992)

(assert (=> d!421778 (= lt!500518 (apply!3916 (list!6045 (_1!7990 lt!500280)) 0))))

(assert (=> d!421778 (= lt!500518 (apply!3917 (c!238838 (_1!7990 lt!500280)) 0))))

(declare-fun e!926197 () Bool)

(assert (=> d!421778 e!926197))

(declare-fun res!657339 () Bool)

(assert (=> d!421778 (=> (not res!657339) (not e!926197))))

(assert (=> d!421778 (= res!657339 (<= 0 0))))

(assert (=> d!421778 (= (apply!3908 (_1!7990 lt!500280) 0) lt!500518)))

(declare-fun b!1451483 () Bool)

(assert (=> b!1451483 (= e!926197 (< 0 (size!12364 (_1!7990 lt!500280))))))

(assert (= (and d!421778 res!657339) b!1451483))

(assert (=> d!421778 m!1675285))

(assert (=> d!421778 m!1675285))

(declare-fun m!1675529 () Bool)

(assert (=> d!421778 m!1675529))

(declare-fun m!1675531 () Bool)

(assert (=> d!421778 m!1675531))

(assert (=> b!1451483 m!1674635))

(assert (=> b!1450958 d!421778))

(declare-fun d!421780 () Bool)

(declare-fun res!657344 () Bool)

(declare-fun e!926202 () Bool)

(assert (=> d!421780 (=> res!657344 e!926202)))

(assert (=> d!421780 (= res!657344 ((_ is Nil!15126) lt!500257))))

(assert (=> d!421780 (= (forall!3716 lt!500257 lambda!63057) e!926202)))

(declare-fun b!1451488 () Bool)

(declare-fun e!926203 () Bool)

(assert (=> b!1451488 (= e!926202 e!926203)))

(declare-fun res!657345 () Bool)

(assert (=> b!1451488 (=> (not res!657345) (not e!926203))))

(declare-fun dynLambda!6887 (Int Token!4992) Bool)

(assert (=> b!1451488 (= res!657345 (dynLambda!6887 lambda!63057 (h!20527 lt!500257)))))

(declare-fun b!1451489 () Bool)

(assert (=> b!1451489 (= e!926203 (forall!3716 (t!130593 lt!500257) lambda!63057))))

(assert (= (and d!421780 (not res!657344)) b!1451488))

(assert (= (and b!1451488 res!657345) b!1451489))

(declare-fun b_lambda!45207 () Bool)

(assert (=> (not b_lambda!45207) (not b!1451488)))

(declare-fun m!1675533 () Bool)

(assert (=> b!1451488 m!1675533))

(declare-fun m!1675535 () Bool)

(assert (=> b!1451489 m!1675535))

(assert (=> d!421502 d!421780))

(assert (=> d!421502 d!421522))

(declare-fun d!421782 () Bool)

(declare-fun c!238899 () Bool)

(assert (=> d!421782 (= c!238899 ((_ is Node!5157) (left!12860 (c!238838 (tokens!2074 other!32)))))))

(declare-fun e!926204 () Bool)

(assert (=> d!421782 (= (inv!20189 (left!12860 (c!238838 (tokens!2074 other!32)))) e!926204)))

(declare-fun b!1451490 () Bool)

(assert (=> b!1451490 (= e!926204 (inv!20192 (left!12860 (c!238838 (tokens!2074 other!32)))))))

(declare-fun b!1451491 () Bool)

(declare-fun e!926205 () Bool)

(assert (=> b!1451491 (= e!926204 e!926205)))

(declare-fun res!657346 () Bool)

(assert (=> b!1451491 (= res!657346 (not ((_ is Leaf!7691) (left!12860 (c!238838 (tokens!2074 other!32))))))))

(assert (=> b!1451491 (=> res!657346 e!926205)))

(declare-fun b!1451492 () Bool)

(assert (=> b!1451492 (= e!926205 (inv!20193 (left!12860 (c!238838 (tokens!2074 other!32)))))))

(assert (= (and d!421782 c!238899) b!1451490))

(assert (= (and d!421782 (not c!238899)) b!1451491))

(assert (= (and b!1451491 (not res!657346)) b!1451492))

(declare-fun m!1675537 () Bool)

(assert (=> b!1451490 m!1675537))

(declare-fun m!1675539 () Bool)

(assert (=> b!1451492 m!1675539))

(assert (=> b!1451079 d!421782))

(declare-fun d!421784 () Bool)

(declare-fun c!238900 () Bool)

(assert (=> d!421784 (= c!238900 ((_ is Node!5157) (right!13190 (c!238838 (tokens!2074 other!32)))))))

(declare-fun e!926206 () Bool)

(assert (=> d!421784 (= (inv!20189 (right!13190 (c!238838 (tokens!2074 other!32)))) e!926206)))

(declare-fun b!1451493 () Bool)

(assert (=> b!1451493 (= e!926206 (inv!20192 (right!13190 (c!238838 (tokens!2074 other!32)))))))

(declare-fun b!1451494 () Bool)

(declare-fun e!926207 () Bool)

(assert (=> b!1451494 (= e!926206 e!926207)))

(declare-fun res!657347 () Bool)

(assert (=> b!1451494 (= res!657347 (not ((_ is Leaf!7691) (right!13190 (c!238838 (tokens!2074 other!32))))))))

(assert (=> b!1451494 (=> res!657347 e!926207)))

(declare-fun b!1451495 () Bool)

(assert (=> b!1451495 (= e!926207 (inv!20193 (right!13190 (c!238838 (tokens!2074 other!32)))))))

(assert (= (and d!421784 c!238900) b!1451493))

(assert (= (and d!421784 (not c!238900)) b!1451494))

(assert (= (and b!1451494 (not res!657347)) b!1451495))

(declare-fun m!1675541 () Bool)

(assert (=> b!1451493 m!1675541))

(declare-fun m!1675543 () Bool)

(assert (=> b!1451495 m!1675543))

(assert (=> b!1451079 d!421784))

(declare-fun d!421786 () Bool)

(declare-fun lt!500519 () Bool)

(assert (=> d!421786 (= lt!500519 (isEmpty!9474 (list!6049 (_2!7990 lt!500280))))))

(assert (=> d!421786 (= lt!500519 (isEmpty!9475 (c!238836 (_2!7990 lt!500280))))))

(assert (=> d!421786 (= (isEmpty!9469 (_2!7990 lt!500280)) lt!500519)))

(declare-fun bs!342696 () Bool)

(assert (= bs!342696 d!421786))

(declare-fun m!1675545 () Bool)

(assert (=> bs!342696 m!1675545))

(assert (=> bs!342696 m!1675545))

(declare-fun m!1675547 () Bool)

(assert (=> bs!342696 m!1675547))

(declare-fun m!1675549 () Bool)

(assert (=> bs!342696 m!1675549))

(assert (=> b!1450959 d!421786))

(declare-fun d!421788 () Bool)

(assert (=> d!421788 (= (isEmpty!9472 (list!6045 (tokens!2074 thiss!10022))) ((_ is Nil!15126) (list!6045 (tokens!2074 thiss!10022))))))

(assert (=> d!421538 d!421788))

(assert (=> d!421538 d!421494))

(declare-fun d!421790 () Bool)

(declare-fun lt!500520 () Bool)

(assert (=> d!421790 (= lt!500520 (isEmpty!9472 (list!6046 (c!238838 (tokens!2074 thiss!10022)))))))

(assert (=> d!421790 (= lt!500520 (= (size!12369 (c!238838 (tokens!2074 thiss!10022))) 0))))

(assert (=> d!421790 (= (isEmpty!9473 (c!238838 (tokens!2074 thiss!10022))) lt!500520)))

(declare-fun bs!342697 () Bool)

(assert (= bs!342697 d!421790))

(assert (=> bs!342697 m!1674611))

(assert (=> bs!342697 m!1674611))

(declare-fun m!1675551 () Bool)

(assert (=> bs!342697 m!1675551))

(declare-fun m!1675553 () Bool)

(assert (=> bs!342697 m!1675553))

(assert (=> d!421538 d!421790))

(assert (=> b!1450914 d!421524))

(declare-fun d!421792 () Bool)

(assert (=> d!421792 (= (separableTokens!255 Lexer!2319 (tokens!2074 other!32) (rules!11596 other!32)) (tokensListTwoByTwoPredicateSeparable!132 Lexer!2319 (tokens!2074 other!32) 0 (rules!11596 other!32)))))

(declare-fun bs!342698 () Bool)

(assert (= bs!342698 d!421792))

(declare-fun m!1675555 () Bool)

(assert (=> bs!342698 m!1675555))

(assert (=> b!1451059 d!421792))

(assert (=> d!421496 d!421500))

(declare-fun d!421794 () Bool)

(assert (=> d!421794 (rulesProduceIndividualToken!1240 Lexer!2319 (rules!11596 thiss!10022) lt!500254)))

(assert (=> d!421794 true))

(declare-fun _$77!586 () Unit!24035)

(assert (=> d!421794 (= (choose!8929 Lexer!2319 (rules!11596 thiss!10022) lt!500257 lt!500254) _$77!586)))

(declare-fun bs!342699 () Bool)

(assert (= bs!342699 d!421794))

(assert (=> bs!342699 m!1674535))

(assert (=> d!421496 d!421794))

(assert (=> d!421496 d!421522))

(assert (=> b!1451026 d!421774))

(declare-fun d!421796 () Bool)

(declare-fun res!657348 () Bool)

(declare-fun e!926208 () Bool)

(assert (=> d!421796 (=> res!657348 e!926208)))

(assert (=> d!421796 (= res!657348 ((_ is Nil!15126) lt!500252))))

(assert (=> d!421796 (= (forall!3716 lt!500252 lambda!63059) e!926208)))

(declare-fun b!1451496 () Bool)

(declare-fun e!926209 () Bool)

(assert (=> b!1451496 (= e!926208 e!926209)))

(declare-fun res!657349 () Bool)

(assert (=> b!1451496 (=> (not res!657349) (not e!926209))))

(assert (=> b!1451496 (= res!657349 (dynLambda!6887 lambda!63059 (h!20527 lt!500252)))))

(declare-fun b!1451497 () Bool)

(assert (=> b!1451497 (= e!926209 (forall!3716 (t!130593 lt!500252) lambda!63059))))

(assert (= (and d!421796 (not res!657348)) b!1451496))

(assert (= (and b!1451496 res!657349) b!1451497))

(declare-fun b_lambda!45209 () Bool)

(assert (=> (not b_lambda!45209) (not b!1451496)))

(declare-fun m!1675557 () Bool)

(assert (=> b!1451496 m!1675557))

(declare-fun m!1675559 () Bool)

(assert (=> b!1451497 m!1675559))

(assert (=> d!421532 d!421796))

(assert (=> d!421532 d!421522))

(assert (=> b!1451028 d!421792))

(assert (=> b!1450918 d!421540))

(declare-fun d!421798 () Bool)

(declare-fun lt!500521 () Bool)

(declare-fun e!926211 () Bool)

(assert (=> d!421798 (= lt!500521 e!926211)))

(declare-fun res!657352 () Bool)

(assert (=> d!421798 (=> (not res!657352) (not e!926211))))

(assert (=> d!421798 (= res!657352 (= (list!6045 (_1!7990 (lex!1065 Lexer!2319 (rules!11596 thiss!10022) (print!1092 Lexer!2319 (singletonSeq!1259 (h!20527 lt!500257)))))) (list!6045 (singletonSeq!1259 (h!20527 lt!500257)))))))

(declare-fun e!926210 () Bool)

(assert (=> d!421798 (= lt!500521 e!926210)))

(declare-fun res!657350 () Bool)

(assert (=> d!421798 (=> (not res!657350) (not e!926210))))

(declare-fun lt!500522 () tuple2!14208)

(assert (=> d!421798 (= res!657350 (= (size!12364 (_1!7990 lt!500522)) 1))))

(assert (=> d!421798 (= lt!500522 (lex!1065 Lexer!2319 (rules!11596 thiss!10022) (print!1092 Lexer!2319 (singletonSeq!1259 (h!20527 lt!500257)))))))

(assert (=> d!421798 (not (isEmpty!9466 (rules!11596 thiss!10022)))))

(assert (=> d!421798 (= (rulesProduceIndividualToken!1240 Lexer!2319 (rules!11596 thiss!10022) (h!20527 lt!500257)) lt!500521)))

(declare-fun b!1451498 () Bool)

(declare-fun res!657351 () Bool)

(assert (=> b!1451498 (=> (not res!657351) (not e!926210))))

(assert (=> b!1451498 (= res!657351 (= (apply!3908 (_1!7990 lt!500522) 0) (h!20527 lt!500257)))))

(declare-fun b!1451499 () Bool)

(assert (=> b!1451499 (= e!926210 (isEmpty!9469 (_2!7990 lt!500522)))))

(declare-fun b!1451500 () Bool)

(assert (=> b!1451500 (= e!926211 (isEmpty!9469 (_2!7990 (lex!1065 Lexer!2319 (rules!11596 thiss!10022) (print!1092 Lexer!2319 (singletonSeq!1259 (h!20527 lt!500257)))))))))

(assert (= (and d!421798 res!657350) b!1451498))

(assert (= (and b!1451498 res!657351) b!1451499))

(assert (= (and d!421798 res!657352) b!1451500))

(declare-fun m!1675561 () Bool)

(assert (=> d!421798 m!1675561))

(declare-fun m!1675563 () Bool)

(assert (=> d!421798 m!1675563))

(declare-fun m!1675565 () Bool)

(assert (=> d!421798 m!1675565))

(declare-fun m!1675567 () Bool)

(assert (=> d!421798 m!1675567))

(assert (=> d!421798 m!1675563))

(assert (=> d!421798 m!1674545))

(assert (=> d!421798 m!1675563))

(declare-fun m!1675569 () Bool)

(assert (=> d!421798 m!1675569))

(assert (=> d!421798 m!1675569))

(declare-fun m!1675571 () Bool)

(assert (=> d!421798 m!1675571))

(declare-fun m!1675573 () Bool)

(assert (=> b!1451498 m!1675573))

(declare-fun m!1675575 () Bool)

(assert (=> b!1451499 m!1675575))

(assert (=> b!1451500 m!1675563))

(assert (=> b!1451500 m!1675563))

(assert (=> b!1451500 m!1675569))

(assert (=> b!1451500 m!1675569))

(assert (=> b!1451500 m!1675571))

(declare-fun m!1675577 () Bool)

(assert (=> b!1451500 m!1675577))

(assert (=> b!1450983 d!421798))

(declare-fun tp!409485 () Bool)

(declare-fun b!1451501 () Bool)

(declare-fun e!926213 () Bool)

(declare-fun tp!409484 () Bool)

(assert (=> b!1451501 (= e!926213 (and (inv!20189 (left!12860 (left!12860 (c!238838 (tokens!2074 other!32))))) tp!409485 (inv!20189 (right!13190 (left!12860 (c!238838 (tokens!2074 other!32))))) tp!409484))))

(declare-fun b!1451503 () Bool)

(declare-fun e!926212 () Bool)

(declare-fun tp!409483 () Bool)

(assert (=> b!1451503 (= e!926212 tp!409483)))

(declare-fun b!1451502 () Bool)

(assert (=> b!1451502 (= e!926213 (and (inv!20195 (xs!7898 (left!12860 (c!238838 (tokens!2074 other!32))))) e!926212))))

(assert (=> b!1451079 (= tp!409439 (and (inv!20189 (left!12860 (c!238838 (tokens!2074 other!32)))) e!926213))))

(assert (= (and b!1451079 ((_ is Node!5157) (left!12860 (c!238838 (tokens!2074 other!32))))) b!1451501))

(assert (= b!1451502 b!1451503))

(assert (= (and b!1451079 ((_ is Leaf!7691) (left!12860 (c!238838 (tokens!2074 other!32))))) b!1451502))

(declare-fun m!1675579 () Bool)

(assert (=> b!1451501 m!1675579))

(declare-fun m!1675581 () Bool)

(assert (=> b!1451501 m!1675581))

(declare-fun m!1675583 () Bool)

(assert (=> b!1451502 m!1675583))

(assert (=> b!1451079 m!1674763))

(declare-fun e!926215 () Bool)

(declare-fun tp!409487 () Bool)

(declare-fun b!1451504 () Bool)

(declare-fun tp!409488 () Bool)

(assert (=> b!1451504 (= e!926215 (and (inv!20189 (left!12860 (right!13190 (c!238838 (tokens!2074 other!32))))) tp!409488 (inv!20189 (right!13190 (right!13190 (c!238838 (tokens!2074 other!32))))) tp!409487))))

(declare-fun b!1451506 () Bool)

(declare-fun e!926214 () Bool)

(declare-fun tp!409486 () Bool)

(assert (=> b!1451506 (= e!926214 tp!409486)))

(declare-fun b!1451505 () Bool)

(assert (=> b!1451505 (= e!926215 (and (inv!20195 (xs!7898 (right!13190 (c!238838 (tokens!2074 other!32))))) e!926214))))

(assert (=> b!1451079 (= tp!409438 (and (inv!20189 (right!13190 (c!238838 (tokens!2074 other!32)))) e!926215))))

(assert (= (and b!1451079 ((_ is Node!5157) (right!13190 (c!238838 (tokens!2074 other!32))))) b!1451504))

(assert (= b!1451505 b!1451506))

(assert (= (and b!1451079 ((_ is Leaf!7691) (right!13190 (c!238838 (tokens!2074 other!32))))) b!1451505))

(declare-fun m!1675585 () Bool)

(assert (=> b!1451504 m!1675585))

(declare-fun m!1675587 () Bool)

(assert (=> b!1451504 m!1675587))

(declare-fun m!1675589 () Bool)

(assert (=> b!1451505 m!1675589))

(assert (=> b!1451079 m!1674765))

(declare-fun b!1451520 () Bool)

(declare-fun e!926218 () Bool)

(declare-fun tp!409502 () Bool)

(declare-fun tp!409499 () Bool)

(assert (=> b!1451520 (= e!926218 (and tp!409502 tp!409499))))

(declare-fun b!1451517 () Bool)

(declare-fun tp_is_empty!6873 () Bool)

(assert (=> b!1451517 (= e!926218 tp_is_empty!6873)))

(assert (=> b!1451086 (= tp!409443 e!926218)))

(declare-fun b!1451519 () Bool)

(declare-fun tp!409500 () Bool)

(assert (=> b!1451519 (= e!926218 tp!409500)))

(declare-fun b!1451518 () Bool)

(declare-fun tp!409501 () Bool)

(declare-fun tp!409503 () Bool)

(assert (=> b!1451518 (= e!926218 (and tp!409501 tp!409503))))

(assert (= (and b!1451086 ((_ is ElementMatch!3979) (regex!2665 (h!20528 (rules!11596 other!32))))) b!1451517))

(assert (= (and b!1451086 ((_ is Concat!6735) (regex!2665 (h!20528 (rules!11596 other!32))))) b!1451518))

(assert (= (and b!1451086 ((_ is Star!3979) (regex!2665 (h!20528 (rules!11596 other!32))))) b!1451519))

(assert (= (and b!1451086 ((_ is Union!3979) (regex!2665 (h!20528 (rules!11596 other!32))))) b!1451520))

(declare-fun b!1451534 () Bool)

(declare-fun b_free!36143 () Bool)

(declare-fun b_next!36847 () Bool)

(assert (=> b!1451534 (= b_free!36143 (not b_next!36847))))

(declare-fun tp!409515 () Bool)

(declare-fun b_and!98223 () Bool)

(assert (=> b!1451534 (= tp!409515 b_and!98223)))

(declare-fun b_free!36145 () Bool)

(declare-fun b_next!36849 () Bool)

(assert (=> b!1451534 (= b_free!36145 (not b_next!36849))))

(declare-fun t!130644 () Bool)

(declare-fun tb!78817 () Bool)

(assert (=> (and b!1451534 (= (toChars!3831 (transformation!2665 (rule!4438 (h!20527 (innerList!5217 (xs!7898 (c!238838 (tokens!2074 other!32)))))))) (toChars!3831 (transformation!2665 (rule!4438 lt!500254)))) t!130644) tb!78817))

(declare-fun result!95390 () Bool)

(assert (= result!95390 result!95376))

(assert (=> d!421678 t!130644))

(declare-fun tb!78819 () Bool)

(declare-fun t!130646 () Bool)

(assert (=> (and b!1451534 (= (toChars!3831 (transformation!2665 (rule!4438 (h!20527 (innerList!5217 (xs!7898 (c!238838 (tokens!2074 other!32)))))))) (toChars!3831 (transformation!2665 (rule!4438 lt!500253)))) t!130646) tb!78819))

(declare-fun result!95392 () Bool)

(assert (= result!95392 result!95382))

(assert (=> d!421684 t!130646))

(declare-fun tp!409516 () Bool)

(declare-fun b_and!98225 () Bool)

(assert (=> b!1451534 (= tp!409516 (and (=> t!130644 result!95390) (=> t!130646 result!95392) b_and!98225))))

(declare-fun tp!409518 () Bool)

(declare-fun b!1451532 () Bool)

(declare-fun e!926231 () Bool)

(declare-fun e!926235 () Bool)

(declare-fun inv!21 (TokenValue!2755) Bool)

(assert (=> b!1451532 (= e!926235 (and (inv!21 (value!85600 (h!20527 (innerList!5217 (xs!7898 (c!238838 (tokens!2074 other!32))))))) e!926231 tp!409518))))

(declare-fun e!926233 () Bool)

(declare-fun tp!409517 () Bool)

(declare-fun b!1451531 () Bool)

(declare-fun inv!20202 (Token!4992) Bool)

(assert (=> b!1451531 (= e!926233 (and (inv!20202 (h!20527 (innerList!5217 (xs!7898 (c!238838 (tokens!2074 other!32)))))) e!926235 tp!409517))))

(declare-fun e!926236 () Bool)

(assert (=> b!1451534 (= e!926236 (and tp!409515 tp!409516))))

(declare-fun tp!409514 () Bool)

(declare-fun b!1451533 () Bool)

(assert (=> b!1451533 (= e!926231 (and tp!409514 (inv!20183 (tag!2929 (rule!4438 (h!20527 (innerList!5217 (xs!7898 (c!238838 (tokens!2074 other!32)))))))) (inv!20194 (transformation!2665 (rule!4438 (h!20527 (innerList!5217 (xs!7898 (c!238838 (tokens!2074 other!32)))))))) e!926236))))

(assert (=> b!1451081 (= tp!409437 e!926233)))

(assert (= b!1451533 b!1451534))

(assert (= b!1451532 b!1451533))

(assert (= b!1451531 b!1451532))

(assert (= (and b!1451081 ((_ is Cons!15126) (innerList!5217 (xs!7898 (c!238838 (tokens!2074 other!32)))))) b!1451531))

(declare-fun m!1675591 () Bool)

(assert (=> b!1451532 m!1675591))

(declare-fun m!1675593 () Bool)

(assert (=> b!1451531 m!1675593))

(declare-fun m!1675595 () Bool)

(assert (=> b!1451533 m!1675595))

(declare-fun m!1675597 () Bool)

(assert (=> b!1451533 m!1675597))

(declare-fun tp!409520 () Bool)

(declare-fun b!1451535 () Bool)

(declare-fun tp!409521 () Bool)

(declare-fun e!926238 () Bool)

(assert (=> b!1451535 (= e!926238 (and (inv!20189 (left!12860 (left!12860 (c!238838 (tokens!2074 thiss!10022))))) tp!409521 (inv!20189 (right!13190 (left!12860 (c!238838 (tokens!2074 thiss!10022))))) tp!409520))))

(declare-fun b!1451537 () Bool)

(declare-fun e!926237 () Bool)

(declare-fun tp!409519 () Bool)

(assert (=> b!1451537 (= e!926237 tp!409519)))

(declare-fun b!1451536 () Bool)

(assert (=> b!1451536 (= e!926238 (and (inv!20195 (xs!7898 (left!12860 (c!238838 (tokens!2074 thiss!10022))))) e!926237))))

(assert (=> b!1451082 (= tp!409442 (and (inv!20189 (left!12860 (c!238838 (tokens!2074 thiss!10022)))) e!926238))))

(assert (= (and b!1451082 ((_ is Node!5157) (left!12860 (c!238838 (tokens!2074 thiss!10022))))) b!1451535))

(assert (= b!1451536 b!1451537))

(assert (= (and b!1451082 ((_ is Leaf!7691) (left!12860 (c!238838 (tokens!2074 thiss!10022))))) b!1451536))

(declare-fun m!1675599 () Bool)

(assert (=> b!1451535 m!1675599))

(declare-fun m!1675601 () Bool)

(assert (=> b!1451535 m!1675601))

(declare-fun m!1675603 () Bool)

(assert (=> b!1451536 m!1675603))

(assert (=> b!1451082 m!1674769))

(declare-fun e!926240 () Bool)

(declare-fun tp!409524 () Bool)

(declare-fun b!1451538 () Bool)

(declare-fun tp!409523 () Bool)

(assert (=> b!1451538 (= e!926240 (and (inv!20189 (left!12860 (right!13190 (c!238838 (tokens!2074 thiss!10022))))) tp!409524 (inv!20189 (right!13190 (right!13190 (c!238838 (tokens!2074 thiss!10022))))) tp!409523))))

(declare-fun b!1451540 () Bool)

(declare-fun e!926239 () Bool)

(declare-fun tp!409522 () Bool)

(assert (=> b!1451540 (= e!926239 tp!409522)))

(declare-fun b!1451539 () Bool)

(assert (=> b!1451539 (= e!926240 (and (inv!20195 (xs!7898 (right!13190 (c!238838 (tokens!2074 thiss!10022))))) e!926239))))

(assert (=> b!1451082 (= tp!409441 (and (inv!20189 (right!13190 (c!238838 (tokens!2074 thiss!10022)))) e!926240))))

(assert (= (and b!1451082 ((_ is Node!5157) (right!13190 (c!238838 (tokens!2074 thiss!10022))))) b!1451538))

(assert (= b!1451539 b!1451540))

(assert (= (and b!1451082 ((_ is Leaf!7691) (right!13190 (c!238838 (tokens!2074 thiss!10022))))) b!1451539))

(declare-fun m!1675605 () Bool)

(assert (=> b!1451538 m!1675605))

(declare-fun m!1675607 () Bool)

(assert (=> b!1451538 m!1675607))

(declare-fun m!1675609 () Bool)

(assert (=> b!1451539 m!1675609))

(assert (=> b!1451082 m!1674771))

(declare-fun b!1451543 () Bool)

(declare-fun b_free!36147 () Bool)

(declare-fun b_next!36851 () Bool)

(assert (=> b!1451543 (= b_free!36147 (not b_next!36851))))

(declare-fun tp!409526 () Bool)

(declare-fun b_and!98227 () Bool)

(assert (=> b!1451543 (= tp!409526 b_and!98227)))

(declare-fun b_free!36149 () Bool)

(declare-fun b_next!36853 () Bool)

(assert (=> b!1451543 (= b_free!36149 (not b_next!36853))))

(declare-fun t!130648 () Bool)

(declare-fun tb!78821 () Bool)

(assert (=> (and b!1451543 (= (toChars!3831 (transformation!2665 (h!20528 (t!130594 (rules!11596 thiss!10022))))) (toChars!3831 (transformation!2665 (rule!4438 lt!500254)))) t!130648) tb!78821))

(declare-fun result!95394 () Bool)

(assert (= result!95394 result!95376))

(assert (=> d!421678 t!130648))

(declare-fun tb!78823 () Bool)

(declare-fun t!130650 () Bool)

(assert (=> (and b!1451543 (= (toChars!3831 (transformation!2665 (h!20528 (t!130594 (rules!11596 thiss!10022))))) (toChars!3831 (transformation!2665 (rule!4438 lt!500253)))) t!130650) tb!78823))

(declare-fun result!95396 () Bool)

(assert (= result!95396 result!95382))

(assert (=> d!421684 t!130650))

(declare-fun b_and!98229 () Bool)

(declare-fun tp!409528 () Bool)

(assert (=> b!1451543 (= tp!409528 (and (=> t!130648 result!95394) (=> t!130650 result!95396) b_and!98229))))

(declare-fun e!926243 () Bool)

(assert (=> b!1451543 (= e!926243 (and tp!409526 tp!409528))))

(declare-fun tp!409525 () Bool)

(declare-fun e!926244 () Bool)

(declare-fun b!1451542 () Bool)

(assert (=> b!1451542 (= e!926244 (and tp!409525 (inv!20183 (tag!2929 (h!20528 (t!130594 (rules!11596 thiss!10022))))) (inv!20194 (transformation!2665 (h!20528 (t!130594 (rules!11596 thiss!10022))))) e!926243))))

(declare-fun b!1451541 () Bool)

(declare-fun e!926242 () Bool)

(declare-fun tp!409527 () Bool)

(assert (=> b!1451541 (= e!926242 (and e!926244 tp!409527))))

(assert (=> b!1451068 (= tp!409429 e!926242)))

(assert (= b!1451542 b!1451543))

(assert (= b!1451541 b!1451542))

(assert (= (and b!1451068 ((_ is Cons!15127) (t!130594 (rules!11596 thiss!10022)))) b!1451541))

(declare-fun m!1675611 () Bool)

(assert (=> b!1451542 m!1675611))

(declare-fun m!1675613 () Bool)

(assert (=> b!1451542 m!1675613))

(declare-fun b!1451547 () Bool)

(declare-fun b_free!36151 () Bool)

(declare-fun b_next!36855 () Bool)

(assert (=> b!1451547 (= b_free!36151 (not b_next!36855))))

(declare-fun tp!409530 () Bool)

(declare-fun b_and!98231 () Bool)

(assert (=> b!1451547 (= tp!409530 b_and!98231)))

(declare-fun b_free!36153 () Bool)

(declare-fun b_next!36857 () Bool)

(assert (=> b!1451547 (= b_free!36153 (not b_next!36857))))

(declare-fun tb!78825 () Bool)

(declare-fun t!130652 () Bool)

(assert (=> (and b!1451547 (= (toChars!3831 (transformation!2665 (rule!4438 (h!20527 (innerList!5217 (xs!7898 (c!238838 (tokens!2074 thiss!10022)))))))) (toChars!3831 (transformation!2665 (rule!4438 lt!500254)))) t!130652) tb!78825))

(declare-fun result!95398 () Bool)

(assert (= result!95398 result!95376))

(assert (=> d!421678 t!130652))

(declare-fun tb!78827 () Bool)

(declare-fun t!130654 () Bool)

(assert (=> (and b!1451547 (= (toChars!3831 (transformation!2665 (rule!4438 (h!20527 (innerList!5217 (xs!7898 (c!238838 (tokens!2074 thiss!10022)))))))) (toChars!3831 (transformation!2665 (rule!4438 lt!500253)))) t!130654) tb!78827))

(declare-fun result!95400 () Bool)

(assert (= result!95400 result!95382))

(assert (=> d!421684 t!130654))

(declare-fun b_and!98233 () Bool)

(declare-fun tp!409531 () Bool)

(assert (=> b!1451547 (= tp!409531 (and (=> t!130652 result!95398) (=> t!130654 result!95400) b_and!98233))))

(declare-fun b!1451545 () Bool)

(declare-fun e!926245 () Bool)

(declare-fun tp!409533 () Bool)

(declare-fun e!926249 () Bool)

(assert (=> b!1451545 (= e!926249 (and (inv!21 (value!85600 (h!20527 (innerList!5217 (xs!7898 (c!238838 (tokens!2074 thiss!10022))))))) e!926245 tp!409533))))

(declare-fun b!1451544 () Bool)

(declare-fun tp!409532 () Bool)

(declare-fun e!926247 () Bool)

(assert (=> b!1451544 (= e!926247 (and (inv!20202 (h!20527 (innerList!5217 (xs!7898 (c!238838 (tokens!2074 thiss!10022)))))) e!926249 tp!409532))))

(declare-fun e!926250 () Bool)

(assert (=> b!1451547 (= e!926250 (and tp!409530 tp!409531))))

(declare-fun b!1451546 () Bool)

(declare-fun tp!409529 () Bool)

(assert (=> b!1451546 (= e!926245 (and tp!409529 (inv!20183 (tag!2929 (rule!4438 (h!20527 (innerList!5217 (xs!7898 (c!238838 (tokens!2074 thiss!10022)))))))) (inv!20194 (transformation!2665 (rule!4438 (h!20527 (innerList!5217 (xs!7898 (c!238838 (tokens!2074 thiss!10022)))))))) e!926250))))

(assert (=> b!1451084 (= tp!409440 e!926247)))

(assert (= b!1451546 b!1451547))

(assert (= b!1451545 b!1451546))

(assert (= b!1451544 b!1451545))

(assert (= (and b!1451084 ((_ is Cons!15126) (innerList!5217 (xs!7898 (c!238838 (tokens!2074 thiss!10022)))))) b!1451544))

(declare-fun m!1675615 () Bool)

(assert (=> b!1451545 m!1675615))

(declare-fun m!1675617 () Bool)

(assert (=> b!1451544 m!1675617))

(declare-fun m!1675619 () Bool)

(assert (=> b!1451546 m!1675619))

(declare-fun m!1675621 () Bool)

(assert (=> b!1451546 m!1675621))

(declare-fun b!1451551 () Bool)

(declare-fun e!926251 () Bool)

(declare-fun tp!409537 () Bool)

(declare-fun tp!409534 () Bool)

(assert (=> b!1451551 (= e!926251 (and tp!409537 tp!409534))))

(declare-fun b!1451548 () Bool)

(assert (=> b!1451548 (= e!926251 tp_is_empty!6873)))

(assert (=> b!1451069 (= tp!409427 e!926251)))

(declare-fun b!1451550 () Bool)

(declare-fun tp!409535 () Bool)

(assert (=> b!1451550 (= e!926251 tp!409535)))

(declare-fun b!1451549 () Bool)

(declare-fun tp!409536 () Bool)

(declare-fun tp!409538 () Bool)

(assert (=> b!1451549 (= e!926251 (and tp!409536 tp!409538))))

(assert (= (and b!1451069 ((_ is ElementMatch!3979) (regex!2665 (h!20528 (rules!11596 thiss!10022))))) b!1451548))

(assert (= (and b!1451069 ((_ is Concat!6735) (regex!2665 (h!20528 (rules!11596 thiss!10022))))) b!1451549))

(assert (= (and b!1451069 ((_ is Star!3979) (regex!2665 (h!20528 (rules!11596 thiss!10022))))) b!1451550))

(assert (= (and b!1451069 ((_ is Union!3979) (regex!2665 (h!20528 (rules!11596 thiss!10022))))) b!1451551))

(declare-fun b!1451554 () Bool)

(declare-fun e!926254 () Bool)

(assert (=> b!1451554 (= e!926254 true)))

(declare-fun b!1451553 () Bool)

(declare-fun e!926253 () Bool)

(assert (=> b!1451553 (= e!926253 e!926254)))

(declare-fun b!1451552 () Bool)

(declare-fun e!926252 () Bool)

(assert (=> b!1451552 (= e!926252 e!926253)))

(assert (=> b!1450993 e!926252))

(assert (= b!1451553 b!1451554))

(assert (= b!1451552 b!1451553))

(assert (= (and b!1450993 ((_ is Cons!15127) (t!130594 (rules!11596 thiss!10022)))) b!1451552))

(assert (=> b!1451554 (< (dynLambda!6881 order!9089 (toValue!3972 (transformation!2665 (h!20528 (t!130594 (rules!11596 thiss!10022)))))) (dynLambda!6882 order!9091 lambda!63057))))

(assert (=> b!1451554 (< (dynLambda!6883 order!9093 (toChars!3831 (transformation!2665 (h!20528 (t!130594 (rules!11596 thiss!10022)))))) (dynLambda!6882 order!9091 lambda!63057))))

(declare-fun b!1451557 () Bool)

(declare-fun e!926257 () Bool)

(assert (=> b!1451557 (= e!926257 true)))

(declare-fun b!1451556 () Bool)

(declare-fun e!926256 () Bool)

(assert (=> b!1451556 (= e!926256 e!926257)))

(declare-fun b!1451555 () Bool)

(declare-fun e!926255 () Bool)

(assert (=> b!1451555 (= e!926255 e!926256)))

(assert (=> b!1451046 e!926255))

(assert (= b!1451556 b!1451557))

(assert (= b!1451555 b!1451556))

(assert (= (and b!1451046 ((_ is Cons!15127) (t!130594 (rules!11596 thiss!10022)))) b!1451555))

(assert (=> b!1451557 (< (dynLambda!6881 order!9089 (toValue!3972 (transformation!2665 (h!20528 (t!130594 (rules!11596 thiss!10022)))))) (dynLambda!6882 order!9091 lambda!63059))))

(assert (=> b!1451557 (< (dynLambda!6883 order!9093 (toChars!3831 (transformation!2665 (h!20528 (t!130594 (rules!11596 thiss!10022)))))) (dynLambda!6882 order!9091 lambda!63059))))

(declare-fun b!1451560 () Bool)

(declare-fun b_free!36155 () Bool)

(declare-fun b_next!36859 () Bool)

(assert (=> b!1451560 (= b_free!36155 (not b_next!36859))))

(declare-fun tp!409540 () Bool)

(declare-fun b_and!98235 () Bool)

(assert (=> b!1451560 (= tp!409540 b_and!98235)))

(declare-fun b_free!36157 () Bool)

(declare-fun b_next!36861 () Bool)

(assert (=> b!1451560 (= b_free!36157 (not b_next!36861))))

(declare-fun tb!78829 () Bool)

(declare-fun t!130656 () Bool)

(assert (=> (and b!1451560 (= (toChars!3831 (transformation!2665 (h!20528 (t!130594 (rules!11596 other!32))))) (toChars!3831 (transformation!2665 (rule!4438 lt!500254)))) t!130656) tb!78829))

(declare-fun result!95402 () Bool)

(assert (= result!95402 result!95376))

(assert (=> d!421678 t!130656))

(declare-fun t!130658 () Bool)

(declare-fun tb!78831 () Bool)

(assert (=> (and b!1451560 (= (toChars!3831 (transformation!2665 (h!20528 (t!130594 (rules!11596 other!32))))) (toChars!3831 (transformation!2665 (rule!4438 lt!500253)))) t!130658) tb!78831))

(declare-fun result!95404 () Bool)

(assert (= result!95404 result!95382))

(assert (=> d!421684 t!130658))

(declare-fun tp!409542 () Bool)

(declare-fun b_and!98237 () Bool)

(assert (=> b!1451560 (= tp!409542 (and (=> t!130656 result!95402) (=> t!130658 result!95404) b_and!98237))))

(declare-fun e!926260 () Bool)

(assert (=> b!1451560 (= e!926260 (and tp!409540 tp!409542))))

(declare-fun e!926261 () Bool)

(declare-fun tp!409539 () Bool)

(declare-fun b!1451559 () Bool)

(assert (=> b!1451559 (= e!926261 (and tp!409539 (inv!20183 (tag!2929 (h!20528 (t!130594 (rules!11596 other!32))))) (inv!20194 (transformation!2665 (h!20528 (t!130594 (rules!11596 other!32))))) e!926260))))

(declare-fun b!1451558 () Bool)

(declare-fun e!926259 () Bool)

(declare-fun tp!409541 () Bool)

(assert (=> b!1451558 (= e!926259 (and e!926261 tp!409541))))

(assert (=> b!1451085 (= tp!409445 e!926259)))

(assert (= b!1451559 b!1451560))

(assert (= b!1451558 b!1451559))

(assert (= (and b!1451085 ((_ is Cons!15127) (t!130594 (rules!11596 other!32)))) b!1451558))

(declare-fun m!1675623 () Bool)

(assert (=> b!1451559 m!1675623))

(declare-fun m!1675625 () Bool)

(assert (=> b!1451559 m!1675625))

(declare-fun b_lambda!45211 () Bool)

(assert (= b_lambda!45209 (or d!421532 b_lambda!45211)))

(declare-fun bs!342700 () Bool)

(declare-fun d!421800 () Bool)

(assert (= bs!342700 (and d!421800 d!421532)))

(assert (=> bs!342700 (= (dynLambda!6887 lambda!63059 (h!20527 lt!500252)) (rulesProduceIndividualToken!1240 Lexer!2319 (rules!11596 thiss!10022) (h!20527 lt!500252)))))

(assert (=> bs!342700 m!1674723))

(assert (=> b!1451496 d!421800))

(declare-fun b_lambda!45213 () Bool)

(assert (= b_lambda!45207 (or d!421502 b_lambda!45213)))

(declare-fun bs!342701 () Bool)

(declare-fun d!421802 () Bool)

(assert (= bs!342701 (and d!421802 d!421502)))

(assert (=> bs!342701 (= (dynLambda!6887 lambda!63057 (h!20527 lt!500257)) (rulesProduceIndividualToken!1240 Lexer!2319 (rules!11596 thiss!10022) (h!20527 lt!500257)))))

(assert (=> bs!342701 m!1674665))

(assert (=> b!1451488 d!421802))

(check-sat (not b!1451501) (not b_next!36833) (not tb!78809) (not d!421766) (not b_next!36859) (not b!1451343) (not d!421798) (not b!1451531) (not d!421776) (not b!1451187) (not b!1451503) b_and!98231 (not b!1451475) (not b!1451483) (not b!1451326) (not b!1451492) (not d!421608) (not d!421690) (not b!1451520) (not b!1451535) (not d!421656) (not b!1451545) (not b_lambda!45201) (not d!421572) (not d!421786) (not b!1451282) (not d!421614) b_and!98227 (not b_next!36847) (not b!1451279) (not b!1451247) (not b!1451267) (not b!1451277) b_and!98235 (not b!1451220) (not d!421610) (not b!1451537) b_and!98237 (not d!421640) (not d!421570) (not b!1451495) (not d!421682) (not b!1451540) (not d!421790) (not b!1451244) (not b!1451223) (not d!421638) (not d!421792) (not b!1451505) (not b!1451280) (not b!1451533) (not b!1451290) b_and!98191 (not b!1451281) (not b!1451489) (not b!1451499) (not b!1451122) (not d!421794) (not b!1451222) (not d!421692) (not b!1451539) b_and!98225 (not b!1451362) (not bs!342701) (not b_lambda!45211) (not d!421686) (not d!421778) (not b!1451364) (not b!1451542) (not d!421684) (not d!421616) (not b!1451498) (not b_next!36835) (not b_next!36857) (not d!421666) (not b!1451188) (not b!1451123) (not b_next!36855) (not b!1451519) (not b!1451480) b_and!98229 (not b!1451245) (not b!1451248) (not d!421634) (not d!421670) (not b!1451226) (not b!1451550) (not b!1451241) (not b!1451558) b_and!98219 (not b!1451555) (not b!1451467) (not d!421590) (not b!1451278) b_and!98223 (not d!421622) (not d!421592) (not b!1451504) (not b_next!36851) (not b!1451478) (not d!421694) (not b!1451502) (not b!1451365) (not d!421706) (not d!421688) (not b!1451272) (not d!421678) (not b!1451324) (not d!421620) (not b_lambda!45199) (not d!421594) (not b!1451082) (not d!421700) b_and!98221 (not d!421774) (not b!1451231) (not d!421696) (not b!1451346) (not b!1451268) (not b!1451349) (not b!1451371) (not b!1451250) (not b!1451368) (not d!421770) (not b!1451138) (not b!1451124) (not b!1451551) (not b!1451184) (not d!421612) (not b!1451366) (not b_next!36831) (not b!1451538) (not d!421630) (not b!1451183) (not b!1451271) (not d!421628) (not b_next!36849) (not b_next!36837) (not b!1451541) (not b!1451536) (not b!1451466) (not b!1451559) (not b!1451369) (not b!1451246) (not b!1451270) (not b!1451497) (not b!1451350) (not d!421772) (not b!1451361) (not d!421632) (not b!1451461) (not d!421698) (not b!1451500) (not b!1451242) (not b!1451552) (not b!1451544) (not d!421680) (not b!1451327) (not b!1451532) (not b!1451360) (not d!421562) (not b!1451221) (not b_next!36861) (not b!1451338) (not b!1451121) (not bs!342700) (not b!1451079) (not b!1451237) (not b!1451232) (not b_lambda!45213) (not b!1451325) (not b!1451269) (not b!1451481) (not b!1451137) (not b!1451493) (not b!1451359) (not d!421636) b_and!98195 (not d!421560) (not d!421566) (not b!1451518) b_and!98233 tp_is_empty!6873 (not tb!78813) (not b!1451490) (not d!421650) (not b!1451363) (not b_next!36853) (not b!1451506) (not b!1451549) (not b!1451328) (not b!1451546) (not b!1451189) (not b!1451249))
(check-sat b_and!98231 b_and!98235 b_and!98237 b_and!98191 b_and!98225 (not b_next!36855) b_and!98229 b_and!98219 b_and!98221 (not b_next!36831) (not b_next!36861) b_and!98195 b_and!98233 (not b_next!36853) (not b_next!36833) (not b_next!36859) b_and!98227 (not b_next!36847) (not b_next!36835) (not b_next!36857) b_and!98223 (not b_next!36851) (not b_next!36849) (not b_next!36837))
