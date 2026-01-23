; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!134626 () Bool)

(assert start!134626)

(declare-fun b!1448085 () Bool)

(declare-fun e!923835 () Bool)

(declare-fun e!923836 () Bool)

(assert (=> b!1448085 (= e!923835 e!923836)))

(declare-fun res!655601 () Bool)

(assert (=> b!1448085 (=> (not res!655601) (not e!923836))))

(declare-datatypes ((C!8100 0))(
  ( (C!8101 (val!4620 Int)) )
))
(declare-datatypes ((List!15109 0))(
  ( (Nil!15043) (Cons!15043 (h!20444 C!8100) (t!130416 List!15109)) )
))
(declare-datatypes ((IArray!10245 0))(
  ( (IArray!10246 (innerList!5180 List!15109)) )
))
(declare-datatypes ((Conc!5120 0))(
  ( (Node!5120 (left!12802 Conc!5120) (right!13132 Conc!5120) (csize!10470 Int) (cheight!5331 Int)) (Leaf!7645 (xs!7861 IArray!10245) (csize!10471 Int)) (Empty!5120) )
))
(declare-datatypes ((BalanceConc!10180 0))(
  ( (BalanceConc!10181 (c!238576 Conc!5120)) )
))
(declare-datatypes ((List!15110 0))(
  ( (Nil!15044) (Cons!15044 (h!20445 (_ BitVec 16)) (t!130417 List!15110)) )
))
(declare-datatypes ((TokenValue!2737 0))(
  ( (FloatLiteralValue!5474 (text!19604 List!15110)) (TokenValueExt!2736 (__x!9264 Int)) (Broken!13685 (value!85061 List!15110)) (Object!2802) (End!2737) (Def!2737) (Underscore!2737) (Match!2737) (Else!2737) (Error!2737) (Case!2737) (If!2737) (Extends!2737) (Abstract!2737) (Class!2737) (Val!2737) (DelimiterValue!5474 (del!2797 List!15110)) (KeywordValue!2743 (value!85062 List!15110)) (CommentValue!5474 (value!85063 List!15110)) (WhitespaceValue!5474 (value!85064 List!15110)) (IndentationValue!2737 (value!85065 List!15110)) (String!17940) (Int32!2737) (Broken!13686 (value!85066 List!15110)) (Boolean!2738) (Unit!23954) (OperatorValue!2740 (op!2797 List!15110)) (IdentifierValue!5474 (value!85067 List!15110)) (IdentifierValue!5475 (value!85068 List!15110)) (WhitespaceValue!5475 (value!85069 List!15110)) (True!5474) (False!5474) (Broken!13687 (value!85070 List!15110)) (Broken!13688 (value!85071 List!15110)) (True!5475) (RightBrace!2737) (RightBracket!2737) (Colon!2737) (Null!2737) (Comma!2737) (LeftBracket!2737) (False!5475) (LeftBrace!2737) (ImaginaryLiteralValue!2737 (text!19605 List!15110)) (StringLiteralValue!8211 (value!85072 List!15110)) (EOFValue!2737 (value!85073 List!15110)) (IdentValue!2737 (value!85074 List!15110)) (DelimiterValue!5475 (value!85075 List!15110)) (DedentValue!2737 (value!85076 List!15110)) (NewLineValue!2737 (value!85077 List!15110)) (IntegerValue!8211 (value!85078 (_ BitVec 32)) (text!19606 List!15110)) (IntegerValue!8212 (value!85079 Int) (text!19607 List!15110)) (Times!2737) (Or!2737) (Equal!2737) (Minus!2737) (Broken!13689 (value!85080 List!15110)) (And!2737) (Div!2737) (LessEqual!2737) (Mod!2737) (Concat!6698) (Not!2737) (Plus!2737) (SpaceValue!2737 (value!85081 List!15110)) (IntegerValue!8213 (value!85082 Int) (text!19608 List!15110)) (StringLiteralValue!8212 (text!19609 List!15110)) (FloatLiteralValue!5475 (text!19610 List!15110)) (BytesLiteralValue!2737 (value!85083 List!15110)) (CommentValue!5475 (value!85084 List!15110)) (StringLiteralValue!8213 (value!85085 List!15110)) (ErrorTokenValue!2737 (msg!2798 List!15110)) )
))
(declare-datatypes ((Regex!3961 0))(
  ( (ElementMatch!3961 (c!238577 C!8100)) (Concat!6699 (regOne!8434 Regex!3961) (regTwo!8434 Regex!3961)) (EmptyExpr!3961) (Star!3961 (reg!4290 Regex!3961)) (EmptyLang!3961) (Union!3961 (regOne!8435 Regex!3961) (regTwo!8435 Regex!3961)) )
))
(declare-datatypes ((String!17941 0))(
  ( (String!17942 (value!85086 String)) )
))
(declare-datatypes ((TokenValueInjection!5134 0))(
  ( (TokenValueInjection!5135 (toValue!3954 Int) (toChars!3813 Int)) )
))
(declare-datatypes ((Rule!5094 0))(
  ( (Rule!5095 (regex!2647 Regex!3961) (tag!2911 String!17941) (isSeparator!2647 Bool) (transformation!2647 TokenValueInjection!5134)) )
))
(declare-datatypes ((Token!4956 0))(
  ( (Token!4957 (value!85087 TokenValue!2737) (rule!4420 Rule!5094) (size!12317 Int) (originalCharacters!3509 List!15109)) )
))
(declare-datatypes ((List!15111 0))(
  ( (Nil!15045) (Cons!15045 (h!20446 Token!4956) (t!130418 List!15111)) )
))
(declare-datatypes ((IArray!10247 0))(
  ( (IArray!10248 (innerList!5181 List!15111)) )
))
(declare-datatypes ((Conc!5121 0))(
  ( (Node!5121 (left!12803 Conc!5121) (right!13133 Conc!5121) (csize!10472 Int) (cheight!5332 Int)) (Leaf!7646 (xs!7862 IArray!10247) (csize!10473 Int)) (Empty!5121) )
))
(declare-datatypes ((BalanceConc!10182 0))(
  ( (BalanceConc!10183 (c!238578 Conc!5121)) )
))
(declare-datatypes ((List!15112 0))(
  ( (Nil!15046) (Cons!15046 (h!20447 Rule!5094) (t!130419 List!15112)) )
))
(declare-datatypes ((PrintableTokens!1076 0))(
  ( (PrintableTokens!1077 (rules!11532 List!15112) (tokens!2034 BalanceConc!10182)) )
))
(declare-fun thiss!10022 () PrintableTokens!1076)

(declare-fun isEmpty!9388 (List!15112) Bool)

(assert (=> b!1448085 (= res!655601 (not (isEmpty!9388 (rules!11532 thiss!10022))))))

(declare-fun lt!499275 () Token!4956)

(declare-fun last!201 (BalanceConc!10182) Token!4956)

(assert (=> b!1448085 (= lt!499275 (last!201 (tokens!2034 thiss!10022)))))

(declare-fun lt!499277 () List!15111)

(declare-fun list!6005 (BalanceConc!10182) List!15111)

(assert (=> b!1448085 (= lt!499277 (list!6005 (tokens!2034 thiss!10022)))))

(declare-fun b!1448086 () Bool)

(declare-fun e!923840 () Bool)

(declare-fun other!32 () PrintableTokens!1076)

(declare-fun tp!408450 () Bool)

(declare-fun inv!20054 (Conc!5121) Bool)

(assert (=> b!1448086 (= e!923840 (and (inv!20054 (c!238578 (tokens!2034 other!32))) tp!408450))))

(declare-fun res!655604 () Bool)

(declare-fun e!923837 () Bool)

(assert (=> start!134626 (=> (not res!655604) (not e!923837))))

(assert (=> start!134626 (= res!655604 (= (rules!11532 thiss!10022) (rules!11532 other!32)))))

(assert (=> start!134626 e!923837))

(declare-fun e!923834 () Bool)

(declare-fun inv!20055 (PrintableTokens!1076) Bool)

(assert (=> start!134626 (and (inv!20055 thiss!10022) e!923834)))

(declare-fun e!923838 () Bool)

(assert (=> start!134626 (and (inv!20055 other!32) e!923838)))

(declare-fun b!1448087 () Bool)

(declare-datatypes ((LexerInterface!2303 0))(
  ( (LexerInterfaceExt!2300 (__x!9265 Int)) (Lexer!2301) )
))
(declare-fun rulesProduceEachTokenIndividuallyList!734 (LexerInterface!2303 List!15112 List!15111) Bool)

(assert (=> b!1448087 (= e!923836 (not (rulesProduceEachTokenIndividuallyList!734 Lexer!2301 (rules!11532 thiss!10022) lt!499277)))))

(declare-fun b!1448088 () Bool)

(assert (=> b!1448088 (= e!923837 e!923835)))

(declare-fun res!655603 () Bool)

(assert (=> b!1448088 (=> (not res!655603) (not e!923835))))

(declare-fun isEmpty!9389 (BalanceConc!10182) Bool)

(assert (=> b!1448088 (= res!655603 (not (isEmpty!9389 (tokens!2034 other!32))))))

(declare-datatypes ((Unit!23955 0))(
  ( (Unit!23956) )
))
(declare-fun lt!499276 () Unit!23955)

(declare-fun lemmaInvariant!343 (PrintableTokens!1076) Unit!23955)

(assert (=> b!1448088 (= lt!499276 (lemmaInvariant!343 thiss!10022))))

(declare-fun lt!499274 () Unit!23955)

(assert (=> b!1448088 (= lt!499274 (lemmaInvariant!343 other!32))))

(declare-fun b!1448089 () Bool)

(declare-fun res!655605 () Bool)

(assert (=> b!1448089 (=> (not res!655605) (not e!923835))))

(assert (=> b!1448089 (= res!655605 (not (isEmpty!9389 (tokens!2034 thiss!10022))))))

(declare-fun b!1448090 () Bool)

(declare-fun tp!408448 () Bool)

(declare-fun inv!20056 (BalanceConc!10182) Bool)

(assert (=> b!1448090 (= e!923838 (and tp!408448 (inv!20056 (tokens!2034 other!32)) e!923840))))

(declare-fun b!1448091 () Bool)

(declare-fun res!655606 () Bool)

(assert (=> b!1448091 (=> (not res!655606) (not e!923836))))

(declare-fun contains!2879 (List!15111 Token!4956) Bool)

(assert (=> b!1448091 (= res!655606 (contains!2879 lt!499277 lt!499275))))

(declare-fun b!1448092 () Bool)

(declare-fun e!923839 () Bool)

(declare-fun tp!408449 () Bool)

(assert (=> b!1448092 (= e!923839 (and (inv!20054 (c!238578 (tokens!2034 thiss!10022))) tp!408449))))

(declare-fun b!1448093 () Bool)

(declare-fun res!655602 () Bool)

(assert (=> b!1448093 (=> (not res!655602) (not e!923836))))

(declare-fun rulesInvariant!2141 (LexerInterface!2303 List!15112) Bool)

(assert (=> b!1448093 (= res!655602 (rulesInvariant!2141 Lexer!2301 (rules!11532 thiss!10022)))))

(declare-fun tp!408447 () Bool)

(declare-fun b!1448094 () Bool)

(assert (=> b!1448094 (= e!923834 (and tp!408447 (inv!20056 (tokens!2034 thiss!10022)) e!923839))))

(assert (= (and start!134626 res!655604) b!1448088))

(assert (= (and b!1448088 res!655603) b!1448089))

(assert (= (and b!1448089 res!655605) b!1448085))

(assert (= (and b!1448085 res!655601) b!1448093))

(assert (= (and b!1448093 res!655602) b!1448091))

(assert (= (and b!1448091 res!655606) b!1448087))

(assert (= b!1448094 b!1448092))

(assert (= start!134626 b!1448094))

(assert (= b!1448090 b!1448086))

(assert (= start!134626 b!1448090))

(declare-fun m!1670925 () Bool)

(assert (=> b!1448092 m!1670925))

(declare-fun m!1670927 () Bool)

(assert (=> b!1448085 m!1670927))

(declare-fun m!1670929 () Bool)

(assert (=> b!1448085 m!1670929))

(declare-fun m!1670931 () Bool)

(assert (=> b!1448085 m!1670931))

(declare-fun m!1670933 () Bool)

(assert (=> b!1448093 m!1670933))

(declare-fun m!1670935 () Bool)

(assert (=> b!1448094 m!1670935))

(declare-fun m!1670937 () Bool)

(assert (=> start!134626 m!1670937))

(declare-fun m!1670939 () Bool)

(assert (=> start!134626 m!1670939))

(declare-fun m!1670941 () Bool)

(assert (=> b!1448088 m!1670941))

(declare-fun m!1670943 () Bool)

(assert (=> b!1448088 m!1670943))

(declare-fun m!1670945 () Bool)

(assert (=> b!1448088 m!1670945))

(declare-fun m!1670947 () Bool)

(assert (=> b!1448090 m!1670947))

(declare-fun m!1670949 () Bool)

(assert (=> b!1448087 m!1670949))

(declare-fun m!1670951 () Bool)

(assert (=> b!1448086 m!1670951))

(declare-fun m!1670953 () Bool)

(assert (=> b!1448091 m!1670953))

(declare-fun m!1670955 () Bool)

(assert (=> b!1448089 m!1670955))

(check-sat (not b!1448094) (not b!1448087) (not b!1448086) (not b!1448089) (not b!1448085) (not b!1448091) (not b!1448090) (not b!1448093) (not b!1448088) (not start!134626) (not b!1448092))
(check-sat)
(get-model)

(declare-fun d!420407 () Bool)

(declare-fun isBalanced!1528 (Conc!5121) Bool)

(assert (=> d!420407 (= (inv!20056 (tokens!2034 other!32)) (isBalanced!1528 (c!238578 (tokens!2034 other!32))))))

(declare-fun bs!342361 () Bool)

(assert (= bs!342361 d!420407))

(declare-fun m!1670971 () Bool)

(assert (=> bs!342361 m!1670971))

(assert (=> b!1448090 d!420407))

(declare-fun d!420409 () Bool)

(declare-fun lt!499280 () Bool)

(declare-fun isEmpty!9392 (List!15111) Bool)

(assert (=> d!420409 (= lt!499280 (isEmpty!9392 (list!6005 (tokens!2034 other!32))))))

(declare-fun isEmpty!9393 (Conc!5121) Bool)

(assert (=> d!420409 (= lt!499280 (isEmpty!9393 (c!238578 (tokens!2034 other!32))))))

(assert (=> d!420409 (= (isEmpty!9389 (tokens!2034 other!32)) lt!499280)))

(declare-fun bs!342362 () Bool)

(assert (= bs!342362 d!420409))

(declare-fun m!1670973 () Bool)

(assert (=> bs!342362 m!1670973))

(assert (=> bs!342362 m!1670973))

(declare-fun m!1670975 () Bool)

(assert (=> bs!342362 m!1670975))

(declare-fun m!1670977 () Bool)

(assert (=> bs!342362 m!1670977))

(assert (=> b!1448088 d!420409))

(declare-fun d!420411 () Bool)

(declare-fun e!923862 () Bool)

(assert (=> d!420411 e!923862))

(declare-fun res!655638 () Bool)

(assert (=> d!420411 (=> (not res!655638) (not e!923862))))

(assert (=> d!420411 (= res!655638 (rulesInvariant!2141 Lexer!2301 (rules!11532 thiss!10022)))))

(declare-fun Unit!23959 () Unit!23955)

(assert (=> d!420411 (= (lemmaInvariant!343 thiss!10022) Unit!23959)))

(declare-fun b!1448130 () Bool)

(declare-fun res!655639 () Bool)

(assert (=> b!1448130 (=> (not res!655639) (not e!923862))))

(declare-fun rulesProduceEachTokenIndividually!858 (LexerInterface!2303 List!15112 BalanceConc!10182) Bool)

(assert (=> b!1448130 (= res!655639 (rulesProduceEachTokenIndividually!858 Lexer!2301 (rules!11532 thiss!10022) (tokens!2034 thiss!10022)))))

(declare-fun b!1448131 () Bool)

(declare-fun separableTokens!242 (LexerInterface!2303 BalanceConc!10182 List!15112) Bool)

(assert (=> b!1448131 (= e!923862 (separableTokens!242 Lexer!2301 (tokens!2034 thiss!10022) (rules!11532 thiss!10022)))))

(assert (= (and d!420411 res!655638) b!1448130))

(assert (= (and b!1448130 res!655639) b!1448131))

(assert (=> d!420411 m!1670933))

(declare-fun m!1670991 () Bool)

(assert (=> b!1448130 m!1670991))

(declare-fun m!1670993 () Bool)

(assert (=> b!1448131 m!1670993))

(assert (=> b!1448088 d!420411))

(declare-fun d!420417 () Bool)

(declare-fun e!923863 () Bool)

(assert (=> d!420417 e!923863))

(declare-fun res!655640 () Bool)

(assert (=> d!420417 (=> (not res!655640) (not e!923863))))

(assert (=> d!420417 (= res!655640 (rulesInvariant!2141 Lexer!2301 (rules!11532 other!32)))))

(declare-fun Unit!23960 () Unit!23955)

(assert (=> d!420417 (= (lemmaInvariant!343 other!32) Unit!23960)))

(declare-fun b!1448132 () Bool)

(declare-fun res!655641 () Bool)

(assert (=> b!1448132 (=> (not res!655641) (not e!923863))))

(assert (=> b!1448132 (= res!655641 (rulesProduceEachTokenIndividually!858 Lexer!2301 (rules!11532 other!32) (tokens!2034 other!32)))))

(declare-fun b!1448133 () Bool)

(assert (=> b!1448133 (= e!923863 (separableTokens!242 Lexer!2301 (tokens!2034 other!32) (rules!11532 other!32)))))

(assert (= (and d!420417 res!655640) b!1448132))

(assert (= (and b!1448132 res!655641) b!1448133))

(declare-fun m!1670995 () Bool)

(assert (=> d!420417 m!1670995))

(declare-fun m!1670997 () Bool)

(assert (=> b!1448132 m!1670997))

(declare-fun m!1670999 () Bool)

(assert (=> b!1448133 m!1670999))

(assert (=> b!1448088 d!420417))

(declare-fun d!420419 () Bool)

(declare-fun lt!499283 () Bool)

(assert (=> d!420419 (= lt!499283 (isEmpty!9392 (list!6005 (tokens!2034 thiss!10022))))))

(assert (=> d!420419 (= lt!499283 (isEmpty!9393 (c!238578 (tokens!2034 thiss!10022))))))

(assert (=> d!420419 (= (isEmpty!9389 (tokens!2034 thiss!10022)) lt!499283)))

(declare-fun bs!342363 () Bool)

(assert (= bs!342363 d!420419))

(assert (=> bs!342363 m!1670931))

(assert (=> bs!342363 m!1670931))

(declare-fun m!1671001 () Bool)

(assert (=> bs!342363 m!1671001))

(declare-fun m!1671003 () Bool)

(assert (=> bs!342363 m!1671003))

(assert (=> b!1448089 d!420419))

(declare-fun d!420421 () Bool)

(declare-fun c!238585 () Bool)

(get-info :version)

(assert (=> d!420421 (= c!238585 ((_ is Node!5121) (c!238578 (tokens!2034 thiss!10022))))))

(declare-fun e!923868 () Bool)

(assert (=> d!420421 (= (inv!20054 (c!238578 (tokens!2034 thiss!10022))) e!923868)))

(declare-fun b!1448140 () Bool)

(declare-fun inv!20061 (Conc!5121) Bool)

(assert (=> b!1448140 (= e!923868 (inv!20061 (c!238578 (tokens!2034 thiss!10022))))))

(declare-fun b!1448141 () Bool)

(declare-fun e!923869 () Bool)

(assert (=> b!1448141 (= e!923868 e!923869)))

(declare-fun res!655644 () Bool)

(assert (=> b!1448141 (= res!655644 (not ((_ is Leaf!7646) (c!238578 (tokens!2034 thiss!10022)))))))

(assert (=> b!1448141 (=> res!655644 e!923869)))

(declare-fun b!1448142 () Bool)

(declare-fun inv!20062 (Conc!5121) Bool)

(assert (=> b!1448142 (= e!923869 (inv!20062 (c!238578 (tokens!2034 thiss!10022))))))

(assert (= (and d!420421 c!238585) b!1448140))

(assert (= (and d!420421 (not c!238585)) b!1448141))

(assert (= (and b!1448141 (not res!655644)) b!1448142))

(declare-fun m!1671005 () Bool)

(assert (=> b!1448140 m!1671005))

(declare-fun m!1671007 () Bool)

(assert (=> b!1448142 m!1671007))

(assert (=> b!1448092 d!420421))

(declare-fun d!420423 () Bool)

(declare-fun res!655647 () Bool)

(declare-fun e!923872 () Bool)

(assert (=> d!420423 (=> (not res!655647) (not e!923872))))

(declare-fun rulesValid!973 (LexerInterface!2303 List!15112) Bool)

(assert (=> d!420423 (= res!655647 (rulesValid!973 Lexer!2301 (rules!11532 thiss!10022)))))

(assert (=> d!420423 (= (rulesInvariant!2141 Lexer!2301 (rules!11532 thiss!10022)) e!923872)))

(declare-fun b!1448145 () Bool)

(declare-datatypes ((List!15114 0))(
  ( (Nil!15048) (Cons!15048 (h!20449 String!17941) (t!130425 List!15114)) )
))
(declare-fun noDuplicateTag!973 (LexerInterface!2303 List!15112 List!15114) Bool)

(assert (=> b!1448145 (= e!923872 (noDuplicateTag!973 Lexer!2301 (rules!11532 thiss!10022) Nil!15048))))

(assert (= (and d!420423 res!655647) b!1448145))

(declare-fun m!1671009 () Bool)

(assert (=> d!420423 m!1671009))

(declare-fun m!1671011 () Bool)

(assert (=> b!1448145 m!1671011))

(assert (=> b!1448093 d!420423))

(declare-fun d!420425 () Bool)

(declare-fun lt!499286 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!2227 (List!15111) (InoxSet Token!4956))

(assert (=> d!420425 (= lt!499286 (select (content!2227 lt!499277) lt!499275))))

(declare-fun e!923877 () Bool)

(assert (=> d!420425 (= lt!499286 e!923877)))

(declare-fun res!655653 () Bool)

(assert (=> d!420425 (=> (not res!655653) (not e!923877))))

(assert (=> d!420425 (= res!655653 ((_ is Cons!15045) lt!499277))))

(assert (=> d!420425 (= (contains!2879 lt!499277 lt!499275) lt!499286)))

(declare-fun b!1448150 () Bool)

(declare-fun e!923878 () Bool)

(assert (=> b!1448150 (= e!923877 e!923878)))

(declare-fun res!655652 () Bool)

(assert (=> b!1448150 (=> res!655652 e!923878)))

(assert (=> b!1448150 (= res!655652 (= (h!20446 lt!499277) lt!499275))))

(declare-fun b!1448151 () Bool)

(assert (=> b!1448151 (= e!923878 (contains!2879 (t!130418 lt!499277) lt!499275))))

(assert (= (and d!420425 res!655653) b!1448150))

(assert (= (and b!1448150 (not res!655652)) b!1448151))

(declare-fun m!1671013 () Bool)

(assert (=> d!420425 m!1671013))

(declare-fun m!1671015 () Bool)

(assert (=> d!420425 m!1671015))

(declare-fun m!1671017 () Bool)

(assert (=> b!1448151 m!1671017))

(assert (=> b!1448091 d!420425))

(declare-fun d!420427 () Bool)

(assert (=> d!420427 (= (isEmpty!9388 (rules!11532 thiss!10022)) ((_ is Nil!15046) (rules!11532 thiss!10022)))))

(assert (=> b!1448085 d!420427))

(declare-fun d!420429 () Bool)

(declare-fun lt!499289 () Token!4956)

(declare-fun last!204 (List!15111) Token!4956)

(assert (=> d!420429 (= lt!499289 (last!204 (list!6005 (tokens!2034 thiss!10022))))))

(declare-fun last!205 (Conc!5121) Token!4956)

(assert (=> d!420429 (= lt!499289 (last!205 (c!238578 (tokens!2034 thiss!10022))))))

(assert (=> d!420429 (not (isEmpty!9389 (tokens!2034 thiss!10022)))))

(assert (=> d!420429 (= (last!201 (tokens!2034 thiss!10022)) lt!499289)))

(declare-fun bs!342364 () Bool)

(assert (= bs!342364 d!420429))

(assert (=> bs!342364 m!1670931))

(assert (=> bs!342364 m!1670931))

(declare-fun m!1671019 () Bool)

(assert (=> bs!342364 m!1671019))

(declare-fun m!1671021 () Bool)

(assert (=> bs!342364 m!1671021))

(assert (=> bs!342364 m!1670955))

(assert (=> b!1448085 d!420429))

(declare-fun d!420431 () Bool)

(declare-fun list!6007 (Conc!5121) List!15111)

(assert (=> d!420431 (= (list!6005 (tokens!2034 thiss!10022)) (list!6007 (c!238578 (tokens!2034 thiss!10022))))))

(declare-fun bs!342365 () Bool)

(assert (= bs!342365 d!420431))

(declare-fun m!1671023 () Bool)

(assert (=> bs!342365 m!1671023))

(assert (=> b!1448085 d!420431))

(declare-fun d!420433 () Bool)

(assert (=> d!420433 (= (inv!20056 (tokens!2034 thiss!10022)) (isBalanced!1528 (c!238578 (tokens!2034 thiss!10022))))))

(declare-fun bs!342366 () Bool)

(assert (= bs!342366 d!420433))

(declare-fun m!1671025 () Bool)

(assert (=> bs!342366 m!1671025))

(assert (=> b!1448094 d!420433))

(declare-fun b!1448225 () Bool)

(declare-fun e!923938 () Bool)

(assert (=> b!1448225 (= e!923938 true)))

(declare-fun b!1448224 () Bool)

(declare-fun e!923937 () Bool)

(assert (=> b!1448224 (= e!923937 e!923938)))

(declare-fun b!1448223 () Bool)

(declare-fun e!923936 () Bool)

(assert (=> b!1448223 (= e!923936 e!923937)))

(declare-fun d!420435 () Bool)

(assert (=> d!420435 e!923936))

(assert (= b!1448224 b!1448225))

(assert (= b!1448223 b!1448224))

(assert (= (and d!420435 ((_ is Cons!15046) (rules!11532 thiss!10022))) b!1448223))

(declare-fun order!9053 () Int)

(declare-fun lambda!62987 () Int)

(declare-fun order!9055 () Int)

(declare-fun dynLambda!6859 (Int Int) Int)

(declare-fun dynLambda!6860 (Int Int) Int)

(assert (=> b!1448225 (< (dynLambda!6859 order!9053 (toValue!3954 (transformation!2647 (h!20447 (rules!11532 thiss!10022))))) (dynLambda!6860 order!9055 lambda!62987))))

(declare-fun order!9057 () Int)

(declare-fun dynLambda!6861 (Int Int) Int)

(assert (=> b!1448225 (< (dynLambda!6861 order!9057 (toChars!3813 (transformation!2647 (h!20447 (rules!11532 thiss!10022))))) (dynLambda!6860 order!9055 lambda!62987))))

(assert (=> d!420435 true))

(declare-fun lt!499303 () Bool)

(declare-fun forall!3698 (List!15111 Int) Bool)

(assert (=> d!420435 (= lt!499303 (forall!3698 lt!499277 lambda!62987))))

(declare-fun e!923928 () Bool)

(assert (=> d!420435 (= lt!499303 e!923928)))

(declare-fun res!655675 () Bool)

(assert (=> d!420435 (=> res!655675 e!923928)))

(assert (=> d!420435 (= res!655675 (not ((_ is Cons!15045) lt!499277)))))

(assert (=> d!420435 (not (isEmpty!9388 (rules!11532 thiss!10022)))))

(assert (=> d!420435 (= (rulesProduceEachTokenIndividuallyList!734 Lexer!2301 (rules!11532 thiss!10022) lt!499277) lt!499303)))

(declare-fun b!1448213 () Bool)

(declare-fun e!923929 () Bool)

(assert (=> b!1448213 (= e!923928 e!923929)))

(declare-fun res!655674 () Bool)

(assert (=> b!1448213 (=> (not res!655674) (not e!923929))))

(declare-fun rulesProduceIndividualToken!1222 (LexerInterface!2303 List!15112 Token!4956) Bool)

(assert (=> b!1448213 (= res!655674 (rulesProduceIndividualToken!1222 Lexer!2301 (rules!11532 thiss!10022) (h!20446 lt!499277)))))

(declare-fun b!1448214 () Bool)

(assert (=> b!1448214 (= e!923929 (rulesProduceEachTokenIndividuallyList!734 Lexer!2301 (rules!11532 thiss!10022) (t!130418 lt!499277)))))

(assert (= (and d!420435 (not res!655675)) b!1448213))

(assert (= (and b!1448213 res!655674) b!1448214))

(declare-fun m!1671077 () Bool)

(assert (=> d!420435 m!1671077))

(assert (=> d!420435 m!1670927))

(declare-fun m!1671079 () Bool)

(assert (=> b!1448213 m!1671079))

(declare-fun m!1671081 () Bool)

(assert (=> b!1448214 m!1671081))

(assert (=> b!1448087 d!420435))

(declare-fun d!420455 () Bool)

(declare-fun res!655682 () Bool)

(declare-fun e!923941 () Bool)

(assert (=> d!420455 (=> (not res!655682) (not e!923941))))

(assert (=> d!420455 (= res!655682 (not (isEmpty!9388 (rules!11532 thiss!10022))))))

(assert (=> d!420455 (= (inv!20055 thiss!10022) e!923941)))

(declare-fun b!1448234 () Bool)

(declare-fun res!655683 () Bool)

(assert (=> b!1448234 (=> (not res!655683) (not e!923941))))

(assert (=> b!1448234 (= res!655683 (rulesInvariant!2141 Lexer!2301 (rules!11532 thiss!10022)))))

(declare-fun b!1448235 () Bool)

(declare-fun res!655684 () Bool)

(assert (=> b!1448235 (=> (not res!655684) (not e!923941))))

(assert (=> b!1448235 (= res!655684 (rulesProduceEachTokenIndividually!858 Lexer!2301 (rules!11532 thiss!10022) (tokens!2034 thiss!10022)))))

(declare-fun b!1448236 () Bool)

(assert (=> b!1448236 (= e!923941 (separableTokens!242 Lexer!2301 (tokens!2034 thiss!10022) (rules!11532 thiss!10022)))))

(assert (= (and d!420455 res!655682) b!1448234))

(assert (= (and b!1448234 res!655683) b!1448235))

(assert (= (and b!1448235 res!655684) b!1448236))

(assert (=> d!420455 m!1670927))

(assert (=> b!1448234 m!1670933))

(assert (=> b!1448235 m!1670991))

(assert (=> b!1448236 m!1670993))

(assert (=> start!134626 d!420455))

(declare-fun d!420457 () Bool)

(declare-fun res!655685 () Bool)

(declare-fun e!923942 () Bool)

(assert (=> d!420457 (=> (not res!655685) (not e!923942))))

(assert (=> d!420457 (= res!655685 (not (isEmpty!9388 (rules!11532 other!32))))))

(assert (=> d!420457 (= (inv!20055 other!32) e!923942)))

(declare-fun b!1448237 () Bool)

(declare-fun res!655686 () Bool)

(assert (=> b!1448237 (=> (not res!655686) (not e!923942))))

(assert (=> b!1448237 (= res!655686 (rulesInvariant!2141 Lexer!2301 (rules!11532 other!32)))))

(declare-fun b!1448238 () Bool)

(declare-fun res!655687 () Bool)

(assert (=> b!1448238 (=> (not res!655687) (not e!923942))))

(assert (=> b!1448238 (= res!655687 (rulesProduceEachTokenIndividually!858 Lexer!2301 (rules!11532 other!32) (tokens!2034 other!32)))))

(declare-fun b!1448239 () Bool)

(assert (=> b!1448239 (= e!923942 (separableTokens!242 Lexer!2301 (tokens!2034 other!32) (rules!11532 other!32)))))

(assert (= (and d!420457 res!655685) b!1448237))

(assert (= (and b!1448237 res!655686) b!1448238))

(assert (= (and b!1448238 res!655687) b!1448239))

(declare-fun m!1671083 () Bool)

(assert (=> d!420457 m!1671083))

(assert (=> b!1448237 m!1670995))

(assert (=> b!1448238 m!1670997))

(assert (=> b!1448239 m!1670999))

(assert (=> start!134626 d!420457))

(declare-fun d!420459 () Bool)

(declare-fun c!238586 () Bool)

(assert (=> d!420459 (= c!238586 ((_ is Node!5121) (c!238578 (tokens!2034 other!32))))))

(declare-fun e!923943 () Bool)

(assert (=> d!420459 (= (inv!20054 (c!238578 (tokens!2034 other!32))) e!923943)))

(declare-fun b!1448240 () Bool)

(assert (=> b!1448240 (= e!923943 (inv!20061 (c!238578 (tokens!2034 other!32))))))

(declare-fun b!1448241 () Bool)

(declare-fun e!923944 () Bool)

(assert (=> b!1448241 (= e!923943 e!923944)))

(declare-fun res!655688 () Bool)

(assert (=> b!1448241 (= res!655688 (not ((_ is Leaf!7646) (c!238578 (tokens!2034 other!32)))))))

(assert (=> b!1448241 (=> res!655688 e!923944)))

(declare-fun b!1448242 () Bool)

(assert (=> b!1448242 (= e!923944 (inv!20062 (c!238578 (tokens!2034 other!32))))))

(assert (= (and d!420459 c!238586) b!1448240))

(assert (= (and d!420459 (not c!238586)) b!1448241))

(assert (= (and b!1448241 (not res!655688)) b!1448242))

(declare-fun m!1671085 () Bool)

(assert (=> b!1448240 m!1671085))

(declare-fun m!1671087 () Bool)

(assert (=> b!1448242 m!1671087))

(assert (=> b!1448086 d!420459))

(declare-fun b!1448253 () Bool)

(declare-fun b_free!35935 () Bool)

(declare-fun b_next!36639 () Bool)

(assert (=> b!1448253 (= b_free!35935 (not b_next!36639))))

(declare-fun tp!408488 () Bool)

(declare-fun b_and!97999 () Bool)

(assert (=> b!1448253 (= tp!408488 b_and!97999)))

(declare-fun b_free!35937 () Bool)

(declare-fun b_next!36641 () Bool)

(assert (=> b!1448253 (= b_free!35937 (not b_next!36641))))

(declare-fun tp!408487 () Bool)

(declare-fun b_and!98001 () Bool)

(assert (=> b!1448253 (= tp!408487 b_and!98001)))

(declare-fun e!923954 () Bool)

(assert (=> b!1448253 (= e!923954 (and tp!408488 tp!408487))))

(declare-fun e!923956 () Bool)

(declare-fun tp!408489 () Bool)

(declare-fun b!1448252 () Bool)

(declare-fun inv!20050 (String!17941) Bool)

(declare-fun inv!20063 (TokenValueInjection!5134) Bool)

(assert (=> b!1448252 (= e!923956 (and tp!408489 (inv!20050 (tag!2911 (h!20447 (rules!11532 other!32)))) (inv!20063 (transformation!2647 (h!20447 (rules!11532 other!32)))) e!923954))))

(declare-fun b!1448251 () Bool)

(declare-fun e!923955 () Bool)

(declare-fun tp!408490 () Bool)

(assert (=> b!1448251 (= e!923955 (and e!923956 tp!408490))))

(assert (=> b!1448090 (= tp!408448 e!923955)))

(assert (= b!1448252 b!1448253))

(assert (= b!1448251 b!1448252))

(assert (= (and b!1448090 ((_ is Cons!15046) (rules!11532 other!32))) b!1448251))

(declare-fun m!1671089 () Bool)

(assert (=> b!1448252 m!1671089))

(declare-fun m!1671091 () Bool)

(assert (=> b!1448252 m!1671091))

(declare-fun b!1448256 () Bool)

(declare-fun b_free!35939 () Bool)

(declare-fun b_next!36643 () Bool)

(assert (=> b!1448256 (= b_free!35939 (not b_next!36643))))

(declare-fun tp!408492 () Bool)

(declare-fun b_and!98003 () Bool)

(assert (=> b!1448256 (= tp!408492 b_and!98003)))

(declare-fun b_free!35941 () Bool)

(declare-fun b_next!36645 () Bool)

(assert (=> b!1448256 (= b_free!35941 (not b_next!36645))))

(declare-fun tp!408491 () Bool)

(declare-fun b_and!98005 () Bool)

(assert (=> b!1448256 (= tp!408491 b_and!98005)))

(declare-fun e!923958 () Bool)

(assert (=> b!1448256 (= e!923958 (and tp!408492 tp!408491))))

(declare-fun b!1448255 () Bool)

(declare-fun tp!408493 () Bool)

(declare-fun e!923960 () Bool)

(assert (=> b!1448255 (= e!923960 (and tp!408493 (inv!20050 (tag!2911 (h!20447 (rules!11532 thiss!10022)))) (inv!20063 (transformation!2647 (h!20447 (rules!11532 thiss!10022)))) e!923958))))

(declare-fun b!1448254 () Bool)

(declare-fun e!923959 () Bool)

(declare-fun tp!408494 () Bool)

(assert (=> b!1448254 (= e!923959 (and e!923960 tp!408494))))

(assert (=> b!1448094 (= tp!408447 e!923959)))

(assert (= b!1448255 b!1448256))

(assert (= b!1448254 b!1448255))

(assert (= (and b!1448094 ((_ is Cons!15046) (rules!11532 thiss!10022))) b!1448254))

(declare-fun m!1671093 () Bool)

(assert (=> b!1448255 m!1671093))

(declare-fun m!1671095 () Bool)

(assert (=> b!1448255 m!1671095))

(declare-fun e!923966 () Bool)

(declare-fun b!1448265 () Bool)

(declare-fun tp!408503 () Bool)

(declare-fun tp!408502 () Bool)

(assert (=> b!1448265 (= e!923966 (and (inv!20054 (left!12803 (c!238578 (tokens!2034 thiss!10022)))) tp!408502 (inv!20054 (right!13133 (c!238578 (tokens!2034 thiss!10022)))) tp!408503))))

(declare-fun b!1448267 () Bool)

(declare-fun e!923965 () Bool)

(declare-fun tp!408501 () Bool)

(assert (=> b!1448267 (= e!923965 tp!408501)))

(declare-fun b!1448266 () Bool)

(declare-fun inv!20064 (IArray!10247) Bool)

(assert (=> b!1448266 (= e!923966 (and (inv!20064 (xs!7862 (c!238578 (tokens!2034 thiss!10022)))) e!923965))))

(assert (=> b!1448092 (= tp!408449 (and (inv!20054 (c!238578 (tokens!2034 thiss!10022))) e!923966))))

(assert (= (and b!1448092 ((_ is Node!5121) (c!238578 (tokens!2034 thiss!10022)))) b!1448265))

(assert (= b!1448266 b!1448267))

(assert (= (and b!1448092 ((_ is Leaf!7646) (c!238578 (tokens!2034 thiss!10022)))) b!1448266))

(declare-fun m!1671097 () Bool)

(assert (=> b!1448265 m!1671097))

(declare-fun m!1671099 () Bool)

(assert (=> b!1448265 m!1671099))

(declare-fun m!1671101 () Bool)

(assert (=> b!1448266 m!1671101))

(assert (=> b!1448092 m!1670925))

(declare-fun b!1448268 () Bool)

(declare-fun tp!408506 () Bool)

(declare-fun tp!408505 () Bool)

(declare-fun e!923968 () Bool)

(assert (=> b!1448268 (= e!923968 (and (inv!20054 (left!12803 (c!238578 (tokens!2034 other!32)))) tp!408505 (inv!20054 (right!13133 (c!238578 (tokens!2034 other!32)))) tp!408506))))

(declare-fun b!1448270 () Bool)

(declare-fun e!923967 () Bool)

(declare-fun tp!408504 () Bool)

(assert (=> b!1448270 (= e!923967 tp!408504)))

(declare-fun b!1448269 () Bool)

(assert (=> b!1448269 (= e!923968 (and (inv!20064 (xs!7862 (c!238578 (tokens!2034 other!32)))) e!923967))))

(assert (=> b!1448086 (= tp!408450 (and (inv!20054 (c!238578 (tokens!2034 other!32))) e!923968))))

(assert (= (and b!1448086 ((_ is Node!5121) (c!238578 (tokens!2034 other!32)))) b!1448268))

(assert (= b!1448269 b!1448270))

(assert (= (and b!1448086 ((_ is Leaf!7646) (c!238578 (tokens!2034 other!32)))) b!1448269))

(declare-fun m!1671103 () Bool)

(assert (=> b!1448268 m!1671103))

(declare-fun m!1671105 () Bool)

(assert (=> b!1448268 m!1671105))

(declare-fun m!1671107 () Bool)

(assert (=> b!1448269 m!1671107))

(assert (=> b!1448086 m!1670951))

(check-sat (not b!1448140) (not b!1448133) (not d!420409) (not b!1448086) (not b!1448223) b_and!97999 (not b!1448214) (not b!1448092) (not d!420417) (not b!1448237) (not d!420431) (not d!420411) (not d!420433) (not b!1448213) (not b!1448142) (not d!420423) (not b!1448252) (not b!1448236) (not b!1448130) (not b!1448238) (not b!1448270) (not b!1448255) (not d!420455) b_and!98005 (not b!1448268) (not b_next!36639) b_and!98003 (not b!1448240) (not b!1448235) (not b!1448242) (not b!1448266) (not b!1448251) (not b!1448269) (not d!420407) (not b!1448234) (not b_next!36643) (not d!420457) (not b!1448132) (not b!1448254) (not b!1448145) (not b_next!36641) (not d!420425) (not d!420419) (not b!1448267) (not b!1448151) (not d!420429) (not b_next!36645) (not d!420435) (not b!1448239) (not b!1448265) b_and!98001 (not b!1448131))
(check-sat b_and!98005 (not b_next!36643) b_and!97999 (not b_next!36641) (not b_next!36645) b_and!98001 (not b_next!36639) b_and!98003)
(get-model)

(declare-fun d!420471 () Bool)

(declare-fun tokensListTwoByTwoPredicateSeparable!126 (LexerInterface!2303 BalanceConc!10182 Int List!15112) Bool)

(assert (=> d!420471 (= (separableTokens!242 Lexer!2301 (tokens!2034 thiss!10022) (rules!11532 thiss!10022)) (tokensListTwoByTwoPredicateSeparable!126 Lexer!2301 (tokens!2034 thiss!10022) 0 (rules!11532 thiss!10022)))))

(declare-fun bs!342375 () Bool)

(assert (= bs!342375 d!420471))

(declare-fun m!1671143 () Bool)

(assert (=> bs!342375 m!1671143))

(assert (=> b!1448236 d!420471))

(assert (=> b!1448131 d!420471))

(declare-fun d!420479 () Bool)

(declare-fun res!655735 () Bool)

(declare-fun e!923989 () Bool)

(assert (=> d!420479 (=> (not res!655735) (not e!923989))))

(declare-fun size!12320 (List!15111) Int)

(declare-fun list!6009 (IArray!10247) List!15111)

(assert (=> d!420479 (= res!655735 (<= (size!12320 (list!6009 (xs!7862 (c!238578 (tokens!2034 other!32))))) 512))))

(assert (=> d!420479 (= (inv!20062 (c!238578 (tokens!2034 other!32))) e!923989)))

(declare-fun b!1448314 () Bool)

(declare-fun res!655736 () Bool)

(assert (=> b!1448314 (=> (not res!655736) (not e!923989))))

(assert (=> b!1448314 (= res!655736 (= (csize!10473 (c!238578 (tokens!2034 other!32))) (size!12320 (list!6009 (xs!7862 (c!238578 (tokens!2034 other!32)))))))))

(declare-fun b!1448315 () Bool)

(assert (=> b!1448315 (= e!923989 (and (> (csize!10473 (c!238578 (tokens!2034 other!32))) 0) (<= (csize!10473 (c!238578 (tokens!2034 other!32))) 512)))))

(assert (= (and d!420479 res!655735) b!1448314))

(assert (= (and b!1448314 res!655736) b!1448315))

(declare-fun m!1671145 () Bool)

(assert (=> d!420479 m!1671145))

(assert (=> d!420479 m!1671145))

(declare-fun m!1671147 () Bool)

(assert (=> d!420479 m!1671147))

(assert (=> b!1448314 m!1671145))

(assert (=> b!1448314 m!1671145))

(assert (=> b!1448314 m!1671147))

(assert (=> b!1448242 d!420479))

(declare-fun d!420481 () Bool)

(declare-fun c!238587 () Bool)

(assert (=> d!420481 (= c!238587 ((_ is Node!5121) (left!12803 (c!238578 (tokens!2034 other!32)))))))

(declare-fun e!923990 () Bool)

(assert (=> d!420481 (= (inv!20054 (left!12803 (c!238578 (tokens!2034 other!32)))) e!923990)))

(declare-fun b!1448316 () Bool)

(assert (=> b!1448316 (= e!923990 (inv!20061 (left!12803 (c!238578 (tokens!2034 other!32)))))))

(declare-fun b!1448317 () Bool)

(declare-fun e!923991 () Bool)

(assert (=> b!1448317 (= e!923990 e!923991)))

(declare-fun res!655737 () Bool)

(assert (=> b!1448317 (= res!655737 (not ((_ is Leaf!7646) (left!12803 (c!238578 (tokens!2034 other!32))))))))

(assert (=> b!1448317 (=> res!655737 e!923991)))

(declare-fun b!1448318 () Bool)

(assert (=> b!1448318 (= e!923991 (inv!20062 (left!12803 (c!238578 (tokens!2034 other!32)))))))

(assert (= (and d!420481 c!238587) b!1448316))

(assert (= (and d!420481 (not c!238587)) b!1448317))

(assert (= (and b!1448317 (not res!655737)) b!1448318))

(declare-fun m!1671149 () Bool)

(assert (=> b!1448316 m!1671149))

(declare-fun m!1671151 () Bool)

(assert (=> b!1448318 m!1671151))

(assert (=> b!1448268 d!420481))

(declare-fun d!420483 () Bool)

(declare-fun c!238588 () Bool)

(assert (=> d!420483 (= c!238588 ((_ is Node!5121) (right!13133 (c!238578 (tokens!2034 other!32)))))))

(declare-fun e!923992 () Bool)

(assert (=> d!420483 (= (inv!20054 (right!13133 (c!238578 (tokens!2034 other!32)))) e!923992)))

(declare-fun b!1448319 () Bool)

(assert (=> b!1448319 (= e!923992 (inv!20061 (right!13133 (c!238578 (tokens!2034 other!32)))))))

(declare-fun b!1448320 () Bool)

(declare-fun e!923993 () Bool)

(assert (=> b!1448320 (= e!923992 e!923993)))

(declare-fun res!655738 () Bool)

(assert (=> b!1448320 (= res!655738 (not ((_ is Leaf!7646) (right!13133 (c!238578 (tokens!2034 other!32))))))))

(assert (=> b!1448320 (=> res!655738 e!923993)))

(declare-fun b!1448321 () Bool)

(assert (=> b!1448321 (= e!923993 (inv!20062 (right!13133 (c!238578 (tokens!2034 other!32)))))))

(assert (= (and d!420483 c!238588) b!1448319))

(assert (= (and d!420483 (not c!238588)) b!1448320))

(assert (= (and b!1448320 (not res!655738)) b!1448321))

(declare-fun m!1671153 () Bool)

(assert (=> b!1448319 m!1671153))

(declare-fun m!1671155 () Bool)

(assert (=> b!1448321 m!1671155))

(assert (=> b!1448268 d!420483))

(assert (=> d!420411 d!420423))

(declare-fun bs!342387 () Bool)

(declare-fun d!420485 () Bool)

(assert (= bs!342387 (and d!420485 d!420435)))

(declare-fun lambda!63002 () Int)

(assert (=> bs!342387 (= lambda!63002 lambda!62987)))

(declare-fun b!1448419 () Bool)

(declare-fun e!924063 () Bool)

(assert (=> b!1448419 (= e!924063 true)))

(declare-fun b!1448418 () Bool)

(declare-fun e!924062 () Bool)

(assert (=> b!1448418 (= e!924062 e!924063)))

(declare-fun b!1448417 () Bool)

(declare-fun e!924061 () Bool)

(assert (=> b!1448417 (= e!924061 e!924062)))

(assert (=> d!420485 e!924061))

(assert (= b!1448418 b!1448419))

(assert (= b!1448417 b!1448418))

(assert (= (and d!420485 ((_ is Cons!15046) (rules!11532 thiss!10022))) b!1448417))

(assert (=> b!1448419 (< (dynLambda!6859 order!9053 (toValue!3954 (transformation!2647 (h!20447 (rules!11532 thiss!10022))))) (dynLambda!6860 order!9055 lambda!63002))))

(assert (=> b!1448419 (< (dynLambda!6861 order!9057 (toChars!3813 (transformation!2647 (h!20447 (rules!11532 thiss!10022))))) (dynLambda!6860 order!9055 lambda!63002))))

(assert (=> d!420485 true))

(declare-fun e!924060 () Bool)

(assert (=> d!420485 e!924060))

(declare-fun res!655787 () Bool)

(assert (=> d!420485 (=> (not res!655787) (not e!924060))))

(declare-fun lt!499337 () Bool)

(assert (=> d!420485 (= res!655787 (= lt!499337 (forall!3698 (list!6005 (tokens!2034 thiss!10022)) lambda!63002)))))

(declare-fun forall!3701 (BalanceConc!10182 Int) Bool)

(assert (=> d!420485 (= lt!499337 (forall!3701 (tokens!2034 thiss!10022) lambda!63002))))

(assert (=> d!420485 (not (isEmpty!9388 (rules!11532 thiss!10022)))))

(assert (=> d!420485 (= (rulesProduceEachTokenIndividually!858 Lexer!2301 (rules!11532 thiss!10022) (tokens!2034 thiss!10022)) lt!499337)))

(declare-fun b!1448416 () Bool)

(assert (=> b!1448416 (= e!924060 (= lt!499337 (rulesProduceEachTokenIndividuallyList!734 Lexer!2301 (rules!11532 thiss!10022) (list!6005 (tokens!2034 thiss!10022)))))))

(assert (= (and d!420485 res!655787) b!1448416))

(assert (=> d!420485 m!1670931))

(assert (=> d!420485 m!1670931))

(declare-fun m!1671279 () Bool)

(assert (=> d!420485 m!1671279))

(declare-fun m!1671281 () Bool)

(assert (=> d!420485 m!1671281))

(assert (=> d!420485 m!1670927))

(assert (=> b!1448416 m!1670931))

(assert (=> b!1448416 m!1670931))

(declare-fun m!1671283 () Bool)

(assert (=> b!1448416 m!1671283))

(assert (=> b!1448235 d!420485))

(assert (=> b!1448130 d!420485))

(declare-fun b!1448430 () Bool)

(declare-fun e!924069 () List!15111)

(assert (=> b!1448430 (= e!924069 (list!6009 (xs!7862 (c!238578 (tokens!2034 thiss!10022)))))))

(declare-fun b!1448429 () Bool)

(declare-fun e!924068 () List!15111)

(assert (=> b!1448429 (= e!924068 e!924069)))

(declare-fun c!238613 () Bool)

(assert (=> b!1448429 (= c!238613 ((_ is Leaf!7646) (c!238578 (tokens!2034 thiss!10022))))))

(declare-fun d!420543 () Bool)

(declare-fun c!238612 () Bool)

(assert (=> d!420543 (= c!238612 ((_ is Empty!5121) (c!238578 (tokens!2034 thiss!10022))))))

(assert (=> d!420543 (= (list!6007 (c!238578 (tokens!2034 thiss!10022))) e!924068)))

(declare-fun b!1448431 () Bool)

(declare-fun ++!4048 (List!15111 List!15111) List!15111)

(assert (=> b!1448431 (= e!924069 (++!4048 (list!6007 (left!12803 (c!238578 (tokens!2034 thiss!10022)))) (list!6007 (right!13133 (c!238578 (tokens!2034 thiss!10022))))))))

(declare-fun b!1448428 () Bool)

(assert (=> b!1448428 (= e!924068 Nil!15045)))

(assert (= (and d!420543 c!238612) b!1448428))

(assert (= (and d!420543 (not c!238612)) b!1448429))

(assert (= (and b!1448429 c!238613) b!1448430))

(assert (= (and b!1448429 (not c!238613)) b!1448431))

(declare-fun m!1671285 () Bool)

(assert (=> b!1448430 m!1671285))

(declare-fun m!1671287 () Bool)

(assert (=> b!1448431 m!1671287))

(declare-fun m!1671289 () Bool)

(assert (=> b!1448431 m!1671289))

(assert (=> b!1448431 m!1671287))

(assert (=> b!1448431 m!1671289))

(declare-fun m!1671291 () Bool)

(assert (=> b!1448431 m!1671291))

(assert (=> d!420431 d!420543))

(assert (=> d!420455 d!420427))

(declare-fun d!420545 () Bool)

(assert (=> d!420545 (= (inv!20064 (xs!7862 (c!238578 (tokens!2034 other!32)))) (<= (size!12320 (innerList!5181 (xs!7862 (c!238578 (tokens!2034 other!32))))) 2147483647))))

(declare-fun bs!342388 () Bool)

(assert (= bs!342388 d!420545))

(declare-fun m!1671293 () Bool)

(assert (=> bs!342388 m!1671293))

(assert (=> b!1448269 d!420545))

(declare-fun bs!342389 () Bool)

(declare-fun d!420547 () Bool)

(assert (= bs!342389 (and d!420547 d!420435)))

(declare-fun lambda!63003 () Int)

(assert (=> bs!342389 (= lambda!63003 lambda!62987)))

(declare-fun bs!342390 () Bool)

(assert (= bs!342390 (and d!420547 d!420485)))

(assert (=> bs!342390 (= lambda!63003 lambda!63002)))

(declare-fun b!1448436 () Bool)

(declare-fun e!924074 () Bool)

(assert (=> b!1448436 (= e!924074 true)))

(declare-fun b!1448435 () Bool)

(declare-fun e!924073 () Bool)

(assert (=> b!1448435 (= e!924073 e!924074)))

(declare-fun b!1448434 () Bool)

(declare-fun e!924072 () Bool)

(assert (=> b!1448434 (= e!924072 e!924073)))

(assert (=> d!420547 e!924072))

(assert (= b!1448435 b!1448436))

(assert (= b!1448434 b!1448435))

(assert (= (and d!420547 ((_ is Cons!15046) (rules!11532 thiss!10022))) b!1448434))

(assert (=> b!1448436 (< (dynLambda!6859 order!9053 (toValue!3954 (transformation!2647 (h!20447 (rules!11532 thiss!10022))))) (dynLambda!6860 order!9055 lambda!63003))))

(assert (=> b!1448436 (< (dynLambda!6861 order!9057 (toChars!3813 (transformation!2647 (h!20447 (rules!11532 thiss!10022))))) (dynLambda!6860 order!9055 lambda!63003))))

(assert (=> d!420547 true))

(declare-fun lt!499338 () Bool)

(assert (=> d!420547 (= lt!499338 (forall!3698 (t!130418 lt!499277) lambda!63003))))

(declare-fun e!924070 () Bool)

(assert (=> d!420547 (= lt!499338 e!924070)))

(declare-fun res!655789 () Bool)

(assert (=> d!420547 (=> res!655789 e!924070)))

(assert (=> d!420547 (= res!655789 (not ((_ is Cons!15045) (t!130418 lt!499277))))))

(assert (=> d!420547 (not (isEmpty!9388 (rules!11532 thiss!10022)))))

(assert (=> d!420547 (= (rulesProduceEachTokenIndividuallyList!734 Lexer!2301 (rules!11532 thiss!10022) (t!130418 lt!499277)) lt!499338)))

(declare-fun b!1448432 () Bool)

(declare-fun e!924071 () Bool)

(assert (=> b!1448432 (= e!924070 e!924071)))

(declare-fun res!655788 () Bool)

(assert (=> b!1448432 (=> (not res!655788) (not e!924071))))

(assert (=> b!1448432 (= res!655788 (rulesProduceIndividualToken!1222 Lexer!2301 (rules!11532 thiss!10022) (h!20446 (t!130418 lt!499277))))))

(declare-fun b!1448433 () Bool)

(assert (=> b!1448433 (= e!924071 (rulesProduceEachTokenIndividuallyList!734 Lexer!2301 (rules!11532 thiss!10022) (t!130418 (t!130418 lt!499277))))))

(assert (= (and d!420547 (not res!655789)) b!1448432))

(assert (= (and b!1448432 res!655788) b!1448433))

(declare-fun m!1671295 () Bool)

(assert (=> d!420547 m!1671295))

(assert (=> d!420547 m!1670927))

(declare-fun m!1671297 () Bool)

(assert (=> b!1448432 m!1671297))

(declare-fun m!1671299 () Bool)

(assert (=> b!1448433 m!1671299))

(assert (=> b!1448214 d!420547))

(assert (=> b!1448092 d!420421))

(declare-fun d!420549 () Bool)

(assert (=> d!420549 (= (inv!20050 (tag!2911 (h!20447 (rules!11532 thiss!10022)))) (= (mod (str.len (value!85086 (tag!2911 (h!20447 (rules!11532 thiss!10022))))) 2) 0))))

(assert (=> b!1448255 d!420549))

(declare-fun d!420551 () Bool)

(declare-fun res!655792 () Bool)

(declare-fun e!924077 () Bool)

(assert (=> d!420551 (=> (not res!655792) (not e!924077))))

(declare-fun semiInverseModEq!998 (Int Int) Bool)

(assert (=> d!420551 (= res!655792 (semiInverseModEq!998 (toChars!3813 (transformation!2647 (h!20447 (rules!11532 thiss!10022)))) (toValue!3954 (transformation!2647 (h!20447 (rules!11532 thiss!10022))))))))

(assert (=> d!420551 (= (inv!20063 (transformation!2647 (h!20447 (rules!11532 thiss!10022)))) e!924077)))

(declare-fun b!1448439 () Bool)

(declare-fun equivClasses!957 (Int Int) Bool)

(assert (=> b!1448439 (= e!924077 (equivClasses!957 (toChars!3813 (transformation!2647 (h!20447 (rules!11532 thiss!10022)))) (toValue!3954 (transformation!2647 (h!20447 (rules!11532 thiss!10022))))))))

(assert (= (and d!420551 res!655792) b!1448439))

(declare-fun m!1671301 () Bool)

(assert (=> d!420551 m!1671301))

(declare-fun m!1671303 () Bool)

(assert (=> b!1448439 m!1671303))

(assert (=> b!1448255 d!420551))

(declare-fun d!420553 () Bool)

(declare-fun lt!499350 () Bool)

(declare-fun e!924135 () Bool)

(assert (=> d!420553 (= lt!499350 e!924135)))

(declare-fun res!655808 () Bool)

(assert (=> d!420553 (=> (not res!655808) (not e!924135))))

(declare-datatypes ((tuple2!14176 0))(
  ( (tuple2!14177 (_1!7974 BalanceConc!10182) (_2!7974 BalanceConc!10180)) )
))
(declare-fun lex!1053 (LexerInterface!2303 List!15112 BalanceConc!10180) tuple2!14176)

(declare-fun print!1080 (LexerInterface!2303 BalanceConc!10182) BalanceConc!10180)

(declare-fun singletonSeq!1244 (Token!4956) BalanceConc!10182)

(assert (=> d!420553 (= res!655808 (= (list!6005 (_1!7974 (lex!1053 Lexer!2301 (rules!11532 thiss!10022) (print!1080 Lexer!2301 (singletonSeq!1244 (h!20446 lt!499277)))))) (list!6005 (singletonSeq!1244 (h!20446 lt!499277)))))))

(declare-fun e!924136 () Bool)

(assert (=> d!420553 (= lt!499350 e!924136)))

(declare-fun res!655810 () Bool)

(assert (=> d!420553 (=> (not res!655810) (not e!924136))))

(declare-fun lt!499349 () tuple2!14176)

(declare-fun size!12321 (BalanceConc!10182) Int)

(assert (=> d!420553 (= res!655810 (= (size!12321 (_1!7974 lt!499349)) 1))))

(assert (=> d!420553 (= lt!499349 (lex!1053 Lexer!2301 (rules!11532 thiss!10022) (print!1080 Lexer!2301 (singletonSeq!1244 (h!20446 lt!499277)))))))

(assert (=> d!420553 (not (isEmpty!9388 (rules!11532 thiss!10022)))))

(assert (=> d!420553 (= (rulesProduceIndividualToken!1222 Lexer!2301 (rules!11532 thiss!10022) (h!20446 lt!499277)) lt!499350)))

(declare-fun b!1448512 () Bool)

(declare-fun res!655809 () Bool)

(assert (=> b!1448512 (=> (not res!655809) (not e!924136))))

(declare-fun apply!3881 (BalanceConc!10182 Int) Token!4956)

(assert (=> b!1448512 (= res!655809 (= (apply!3881 (_1!7974 lt!499349) 0) (h!20446 lt!499277)))))

(declare-fun b!1448513 () Bool)

(declare-fun isEmpty!9394 (BalanceConc!10180) Bool)

(assert (=> b!1448513 (= e!924136 (isEmpty!9394 (_2!7974 lt!499349)))))

(declare-fun b!1448514 () Bool)

(assert (=> b!1448514 (= e!924135 (isEmpty!9394 (_2!7974 (lex!1053 Lexer!2301 (rules!11532 thiss!10022) (print!1080 Lexer!2301 (singletonSeq!1244 (h!20446 lt!499277)))))))))

(assert (= (and d!420553 res!655810) b!1448512))

(assert (= (and b!1448512 res!655809) b!1448513))

(assert (= (and d!420553 res!655808) b!1448514))

(declare-fun m!1671371 () Bool)

(assert (=> d!420553 m!1671371))

(declare-fun m!1671373 () Bool)

(assert (=> d!420553 m!1671373))

(assert (=> d!420553 m!1671373))

(declare-fun m!1671375 () Bool)

(assert (=> d!420553 m!1671375))

(assert (=> d!420553 m!1671375))

(declare-fun m!1671377 () Bool)

(assert (=> d!420553 m!1671377))

(assert (=> d!420553 m!1670927))

(assert (=> d!420553 m!1671373))

(declare-fun m!1671379 () Bool)

(assert (=> d!420553 m!1671379))

(declare-fun m!1671381 () Bool)

(assert (=> d!420553 m!1671381))

(declare-fun m!1671383 () Bool)

(assert (=> b!1448512 m!1671383))

(declare-fun m!1671385 () Bool)

(assert (=> b!1448513 m!1671385))

(assert (=> b!1448514 m!1671373))

(assert (=> b!1448514 m!1671373))

(assert (=> b!1448514 m!1671375))

(assert (=> b!1448514 m!1671375))

(assert (=> b!1448514 m!1671377))

(declare-fun m!1671387 () Bool)

(assert (=> b!1448514 m!1671387))

(assert (=> b!1448213 d!420553))

(declare-fun d!420559 () Bool)

(assert (=> d!420559 (= (isEmpty!9388 (rules!11532 other!32)) ((_ is Nil!15046) (rules!11532 other!32)))))

(assert (=> d!420457 d!420559))

(declare-fun d!420561 () Bool)

(declare-fun lt!499351 () Bool)

(assert (=> d!420561 (= lt!499351 (select (content!2227 (t!130418 lt!499277)) lt!499275))))

(declare-fun e!924137 () Bool)

(assert (=> d!420561 (= lt!499351 e!924137)))

(declare-fun res!655812 () Bool)

(assert (=> d!420561 (=> (not res!655812) (not e!924137))))

(assert (=> d!420561 (= res!655812 ((_ is Cons!15045) (t!130418 lt!499277)))))

(assert (=> d!420561 (= (contains!2879 (t!130418 lt!499277) lt!499275) lt!499351)))

(declare-fun b!1448515 () Bool)

(declare-fun e!924138 () Bool)

(assert (=> b!1448515 (= e!924137 e!924138)))

(declare-fun res!655811 () Bool)

(assert (=> b!1448515 (=> res!655811 e!924138)))

(assert (=> b!1448515 (= res!655811 (= (h!20446 (t!130418 lt!499277)) lt!499275))))

(declare-fun b!1448516 () Bool)

(assert (=> b!1448516 (= e!924138 (contains!2879 (t!130418 (t!130418 lt!499277)) lt!499275))))

(assert (= (and d!420561 res!655812) b!1448515))

(assert (= (and b!1448515 (not res!655811)) b!1448516))

(declare-fun m!1671389 () Bool)

(assert (=> d!420561 m!1671389))

(declare-fun m!1671391 () Bool)

(assert (=> d!420561 m!1671391))

(declare-fun m!1671393 () Bool)

(assert (=> b!1448516 m!1671393))

(assert (=> b!1448151 d!420561))

(declare-fun d!420563 () Bool)

(assert (=> d!420563 true))

(declare-fun lt!499354 () Bool)

(declare-fun rulesValidInductive!822 (LexerInterface!2303 List!15112) Bool)

(assert (=> d!420563 (= lt!499354 (rulesValidInductive!822 Lexer!2301 (rules!11532 thiss!10022)))))

(declare-fun lambda!63006 () Int)

(declare-fun forall!3702 (List!15112 Int) Bool)

(assert (=> d!420563 (= lt!499354 (forall!3702 (rules!11532 thiss!10022) lambda!63006))))

(assert (=> d!420563 (= (rulesValid!973 Lexer!2301 (rules!11532 thiss!10022)) lt!499354)))

(declare-fun bs!342392 () Bool)

(assert (= bs!342392 d!420563))

(declare-fun m!1671395 () Bool)

(assert (=> bs!342392 m!1671395))

(declare-fun m!1671397 () Bool)

(assert (=> bs!342392 m!1671397))

(assert (=> d!420423 d!420563))

(declare-fun d!420565 () Bool)

(assert (=> d!420565 (= (isEmpty!9392 (list!6005 (tokens!2034 thiss!10022))) ((_ is Nil!15045) (list!6005 (tokens!2034 thiss!10022))))))

(assert (=> d!420419 d!420565))

(assert (=> d!420419 d!420431))

(declare-fun d!420567 () Bool)

(declare-fun lt!499357 () Bool)

(assert (=> d!420567 (= lt!499357 (isEmpty!9392 (list!6007 (c!238578 (tokens!2034 thiss!10022)))))))

(declare-fun size!12323 (Conc!5121) Int)

(assert (=> d!420567 (= lt!499357 (= (size!12323 (c!238578 (tokens!2034 thiss!10022))) 0))))

(assert (=> d!420567 (= (isEmpty!9393 (c!238578 (tokens!2034 thiss!10022))) lt!499357)))

(declare-fun bs!342393 () Bool)

(assert (= bs!342393 d!420567))

(assert (=> bs!342393 m!1671023))

(assert (=> bs!342393 m!1671023))

(declare-fun m!1671399 () Bool)

(assert (=> bs!342393 m!1671399))

(declare-fun m!1671401 () Bool)

(assert (=> bs!342393 m!1671401))

(assert (=> d!420419 d!420567))

(declare-fun d!420569 () Bool)

(assert (=> d!420569 (= (inv!20050 (tag!2911 (h!20447 (rules!11532 other!32)))) (= (mod (str.len (value!85086 (tag!2911 (h!20447 (rules!11532 other!32))))) 2) 0))))

(assert (=> b!1448252 d!420569))

(declare-fun d!420571 () Bool)

(declare-fun res!655813 () Bool)

(declare-fun e!924139 () Bool)

(assert (=> d!420571 (=> (not res!655813) (not e!924139))))

(assert (=> d!420571 (= res!655813 (semiInverseModEq!998 (toChars!3813 (transformation!2647 (h!20447 (rules!11532 other!32)))) (toValue!3954 (transformation!2647 (h!20447 (rules!11532 other!32))))))))

(assert (=> d!420571 (= (inv!20063 (transformation!2647 (h!20447 (rules!11532 other!32)))) e!924139)))

(declare-fun b!1448519 () Bool)

(assert (=> b!1448519 (= e!924139 (equivClasses!957 (toChars!3813 (transformation!2647 (h!20447 (rules!11532 other!32)))) (toValue!3954 (transformation!2647 (h!20447 (rules!11532 other!32))))))))

(assert (= (and d!420571 res!655813) b!1448519))

(declare-fun m!1671403 () Bool)

(assert (=> d!420571 m!1671403))

(declare-fun m!1671405 () Bool)

(assert (=> b!1448519 m!1671405))

(assert (=> b!1448252 d!420571))

(assert (=> b!1448234 d!420423))

(declare-fun b!1448533 () Bool)

(declare-fun res!655831 () Bool)

(declare-fun e!924145 () Bool)

(assert (=> b!1448533 (=> (not res!655831) (not e!924145))))

(assert (=> b!1448533 (= res!655831 (not (isEmpty!9393 (left!12803 (c!238578 (tokens!2034 other!32))))))))

(declare-fun b!1448534 () Bool)

(declare-fun res!655827 () Bool)

(assert (=> b!1448534 (=> (not res!655827) (not e!924145))))

(assert (=> b!1448534 (= res!655827 (isBalanced!1528 (left!12803 (c!238578 (tokens!2034 other!32)))))))

(declare-fun b!1448535 () Bool)

(declare-fun res!655829 () Bool)

(assert (=> b!1448535 (=> (not res!655829) (not e!924145))))

(assert (=> b!1448535 (= res!655829 (isBalanced!1528 (right!13133 (c!238578 (tokens!2034 other!32)))))))

(declare-fun d!420573 () Bool)

(declare-fun res!655830 () Bool)

(declare-fun e!924144 () Bool)

(assert (=> d!420573 (=> res!655830 e!924144)))

(assert (=> d!420573 (= res!655830 (not ((_ is Node!5121) (c!238578 (tokens!2034 other!32)))))))

(assert (=> d!420573 (= (isBalanced!1528 (c!238578 (tokens!2034 other!32))) e!924144)))

(declare-fun b!1448532 () Bool)

(assert (=> b!1448532 (= e!924144 e!924145)))

(declare-fun res!655828 () Bool)

(assert (=> b!1448532 (=> (not res!655828) (not e!924145))))

(declare-fun height!760 (Conc!5121) Int)

(assert (=> b!1448532 (= res!655828 (<= (- 1) (- (height!760 (left!12803 (c!238578 (tokens!2034 other!32)))) (height!760 (right!13133 (c!238578 (tokens!2034 other!32)))))))))

(declare-fun b!1448536 () Bool)

(declare-fun res!655826 () Bool)

(assert (=> b!1448536 (=> (not res!655826) (not e!924145))))

(assert (=> b!1448536 (= res!655826 (<= (- (height!760 (left!12803 (c!238578 (tokens!2034 other!32)))) (height!760 (right!13133 (c!238578 (tokens!2034 other!32))))) 1))))

(declare-fun b!1448537 () Bool)

(assert (=> b!1448537 (= e!924145 (not (isEmpty!9393 (right!13133 (c!238578 (tokens!2034 other!32))))))))

(assert (= (and d!420573 (not res!655830)) b!1448532))

(assert (= (and b!1448532 res!655828) b!1448536))

(assert (= (and b!1448536 res!655826) b!1448534))

(assert (= (and b!1448534 res!655827) b!1448535))

(assert (= (and b!1448535 res!655829) b!1448533))

(assert (= (and b!1448533 res!655831) b!1448537))

(declare-fun m!1671407 () Bool)

(assert (=> b!1448537 m!1671407))

(declare-fun m!1671409 () Bool)

(assert (=> b!1448536 m!1671409))

(declare-fun m!1671411 () Bool)

(assert (=> b!1448536 m!1671411))

(declare-fun m!1671413 () Bool)

(assert (=> b!1448535 m!1671413))

(assert (=> b!1448532 m!1671409))

(assert (=> b!1448532 m!1671411))

(declare-fun m!1671415 () Bool)

(assert (=> b!1448534 m!1671415))

(declare-fun m!1671417 () Bool)

(assert (=> b!1448533 m!1671417))

(assert (=> d!420407 d!420573))

(declare-fun d!420575 () Bool)

(declare-fun res!655838 () Bool)

(declare-fun e!924148 () Bool)

(assert (=> d!420575 (=> (not res!655838) (not e!924148))))

(assert (=> d!420575 (= res!655838 (= (csize!10472 (c!238578 (tokens!2034 other!32))) (+ (size!12323 (left!12803 (c!238578 (tokens!2034 other!32)))) (size!12323 (right!13133 (c!238578 (tokens!2034 other!32)))))))))

(assert (=> d!420575 (= (inv!20061 (c!238578 (tokens!2034 other!32))) e!924148)))

(declare-fun b!1448544 () Bool)

(declare-fun res!655839 () Bool)

(assert (=> b!1448544 (=> (not res!655839) (not e!924148))))

(assert (=> b!1448544 (= res!655839 (and (not (= (left!12803 (c!238578 (tokens!2034 other!32))) Empty!5121)) (not (= (right!13133 (c!238578 (tokens!2034 other!32))) Empty!5121))))))

(declare-fun b!1448545 () Bool)

(declare-fun res!655840 () Bool)

(assert (=> b!1448545 (=> (not res!655840) (not e!924148))))

(declare-fun max!0 (Int Int) Int)

(assert (=> b!1448545 (= res!655840 (= (cheight!5332 (c!238578 (tokens!2034 other!32))) (+ (max!0 (height!760 (left!12803 (c!238578 (tokens!2034 other!32)))) (height!760 (right!13133 (c!238578 (tokens!2034 other!32))))) 1)))))

(declare-fun b!1448546 () Bool)

(assert (=> b!1448546 (= e!924148 (<= 0 (cheight!5332 (c!238578 (tokens!2034 other!32)))))))

(assert (= (and d!420575 res!655838) b!1448544))

(assert (= (and b!1448544 res!655839) b!1448545))

(assert (= (and b!1448545 res!655840) b!1448546))

(declare-fun m!1671419 () Bool)

(assert (=> d!420575 m!1671419))

(declare-fun m!1671421 () Bool)

(assert (=> d!420575 m!1671421))

(assert (=> b!1448545 m!1671409))

(assert (=> b!1448545 m!1671411))

(assert (=> b!1448545 m!1671409))

(assert (=> b!1448545 m!1671411))

(declare-fun m!1671423 () Bool)

(assert (=> b!1448545 m!1671423))

(assert (=> b!1448240 d!420575))

(assert (=> b!1448086 d!420459))

(declare-fun d!420577 () Bool)

(assert (=> d!420577 (= (separableTokens!242 Lexer!2301 (tokens!2034 other!32) (rules!11532 other!32)) (tokensListTwoByTwoPredicateSeparable!126 Lexer!2301 (tokens!2034 other!32) 0 (rules!11532 other!32)))))

(declare-fun bs!342394 () Bool)

(assert (= bs!342394 d!420577))

(declare-fun m!1671425 () Bool)

(assert (=> bs!342394 m!1671425))

(assert (=> b!1448133 d!420577))

(declare-fun bs!342395 () Bool)

(declare-fun d!420579 () Bool)

(assert (= bs!342395 (and d!420579 d!420435)))

(declare-fun lambda!63007 () Int)

(assert (=> bs!342395 (= (= (rules!11532 other!32) (rules!11532 thiss!10022)) (= lambda!63007 lambda!62987))))

(declare-fun bs!342396 () Bool)

(assert (= bs!342396 (and d!420579 d!420485)))

(assert (=> bs!342396 (= (= (rules!11532 other!32) (rules!11532 thiss!10022)) (= lambda!63007 lambda!63002))))

(declare-fun bs!342397 () Bool)

(assert (= bs!342397 (and d!420579 d!420547)))

(assert (=> bs!342397 (= (= (rules!11532 other!32) (rules!11532 thiss!10022)) (= lambda!63007 lambda!63003))))

(declare-fun b!1448550 () Bool)

(declare-fun e!924152 () Bool)

(assert (=> b!1448550 (= e!924152 true)))

(declare-fun b!1448549 () Bool)

(declare-fun e!924151 () Bool)

(assert (=> b!1448549 (= e!924151 e!924152)))

(declare-fun b!1448548 () Bool)

(declare-fun e!924150 () Bool)

(assert (=> b!1448548 (= e!924150 e!924151)))

(assert (=> d!420579 e!924150))

(assert (= b!1448549 b!1448550))

(assert (= b!1448548 b!1448549))

(assert (= (and d!420579 ((_ is Cons!15046) (rules!11532 other!32))) b!1448548))

(assert (=> b!1448550 (< (dynLambda!6859 order!9053 (toValue!3954 (transformation!2647 (h!20447 (rules!11532 other!32))))) (dynLambda!6860 order!9055 lambda!63007))))

(assert (=> b!1448550 (< (dynLambda!6861 order!9057 (toChars!3813 (transformation!2647 (h!20447 (rules!11532 other!32))))) (dynLambda!6860 order!9055 lambda!63007))))

(assert (=> d!420579 true))

(declare-fun e!924149 () Bool)

(assert (=> d!420579 e!924149))

(declare-fun res!655841 () Bool)

(assert (=> d!420579 (=> (not res!655841) (not e!924149))))

(declare-fun lt!499358 () Bool)

(assert (=> d!420579 (= res!655841 (= lt!499358 (forall!3698 (list!6005 (tokens!2034 other!32)) lambda!63007)))))

(assert (=> d!420579 (= lt!499358 (forall!3701 (tokens!2034 other!32) lambda!63007))))

(assert (=> d!420579 (not (isEmpty!9388 (rules!11532 other!32)))))

(assert (=> d!420579 (= (rulesProduceEachTokenIndividually!858 Lexer!2301 (rules!11532 other!32) (tokens!2034 other!32)) lt!499358)))

(declare-fun b!1448547 () Bool)

(assert (=> b!1448547 (= e!924149 (= lt!499358 (rulesProduceEachTokenIndividuallyList!734 Lexer!2301 (rules!11532 other!32) (list!6005 (tokens!2034 other!32)))))))

(assert (= (and d!420579 res!655841) b!1448547))

(assert (=> d!420579 m!1670973))

(assert (=> d!420579 m!1670973))

(declare-fun m!1671427 () Bool)

(assert (=> d!420579 m!1671427))

(declare-fun m!1671429 () Bool)

(assert (=> d!420579 m!1671429))

(assert (=> d!420579 m!1671083))

(assert (=> b!1448547 m!1670973))

(assert (=> b!1448547 m!1670973))

(declare-fun m!1671431 () Bool)

(assert (=> b!1448547 m!1671431))

(assert (=> b!1448132 d!420579))

(declare-fun d!420581 () Bool)

(declare-fun c!238616 () Bool)

(assert (=> d!420581 (= c!238616 ((_ is Nil!15045) lt!499277))))

(declare-fun e!924155 () (InoxSet Token!4956))

(assert (=> d!420581 (= (content!2227 lt!499277) e!924155)))

(declare-fun b!1448555 () Bool)

(assert (=> b!1448555 (= e!924155 ((as const (Array Token!4956 Bool)) false))))

(declare-fun b!1448556 () Bool)

(assert (=> b!1448556 (= e!924155 ((_ map or) (store ((as const (Array Token!4956 Bool)) false) (h!20446 lt!499277) true) (content!2227 (t!130418 lt!499277))))))

(assert (= (and d!420581 c!238616) b!1448555))

(assert (= (and d!420581 (not c!238616)) b!1448556))

(declare-fun m!1671433 () Bool)

(assert (=> b!1448556 m!1671433))

(assert (=> b!1448556 m!1671389))

(assert (=> d!420425 d!420581))

(declare-fun d!420583 () Bool)

(declare-fun res!655846 () Bool)

(declare-fun e!924160 () Bool)

(assert (=> d!420583 (=> res!655846 e!924160)))

(assert (=> d!420583 (= res!655846 ((_ is Nil!15045) lt!499277))))

(assert (=> d!420583 (= (forall!3698 lt!499277 lambda!62987) e!924160)))

(declare-fun b!1448561 () Bool)

(declare-fun e!924161 () Bool)

(assert (=> b!1448561 (= e!924160 e!924161)))

(declare-fun res!655847 () Bool)

(assert (=> b!1448561 (=> (not res!655847) (not e!924161))))

(declare-fun dynLambda!6863 (Int Token!4956) Bool)

(assert (=> b!1448561 (= res!655847 (dynLambda!6863 lambda!62987 (h!20446 lt!499277)))))

(declare-fun b!1448562 () Bool)

(assert (=> b!1448562 (= e!924161 (forall!3698 (t!130418 lt!499277) lambda!62987))))

(assert (= (and d!420583 (not res!655846)) b!1448561))

(assert (= (and b!1448561 res!655847) b!1448562))

(declare-fun b_lambda!45183 () Bool)

(assert (=> (not b_lambda!45183) (not b!1448561)))

(declare-fun m!1671435 () Bool)

(assert (=> b!1448561 m!1671435))

(declare-fun m!1671437 () Bool)

(assert (=> b!1448562 m!1671437))

(assert (=> d!420435 d!420583))

(assert (=> d!420435 d!420427))

(declare-fun d!420585 () Bool)

(declare-fun c!238617 () Bool)

(assert (=> d!420585 (= c!238617 ((_ is Node!5121) (left!12803 (c!238578 (tokens!2034 thiss!10022)))))))

(declare-fun e!924162 () Bool)

(assert (=> d!420585 (= (inv!20054 (left!12803 (c!238578 (tokens!2034 thiss!10022)))) e!924162)))

(declare-fun b!1448563 () Bool)

(assert (=> b!1448563 (= e!924162 (inv!20061 (left!12803 (c!238578 (tokens!2034 thiss!10022)))))))

(declare-fun b!1448564 () Bool)

(declare-fun e!924163 () Bool)

(assert (=> b!1448564 (= e!924162 e!924163)))

(declare-fun res!655848 () Bool)

(assert (=> b!1448564 (= res!655848 (not ((_ is Leaf!7646) (left!12803 (c!238578 (tokens!2034 thiss!10022))))))))

(assert (=> b!1448564 (=> res!655848 e!924163)))

(declare-fun b!1448565 () Bool)

(assert (=> b!1448565 (= e!924163 (inv!20062 (left!12803 (c!238578 (tokens!2034 thiss!10022)))))))

(assert (= (and d!420585 c!238617) b!1448563))

(assert (= (and d!420585 (not c!238617)) b!1448564))

(assert (= (and b!1448564 (not res!655848)) b!1448565))

(declare-fun m!1671439 () Bool)

(assert (=> b!1448563 m!1671439))

(declare-fun m!1671441 () Bool)

(assert (=> b!1448565 m!1671441))

(assert (=> b!1448265 d!420585))

(declare-fun d!420587 () Bool)

(declare-fun c!238618 () Bool)

(assert (=> d!420587 (= c!238618 ((_ is Node!5121) (right!13133 (c!238578 (tokens!2034 thiss!10022)))))))

(declare-fun e!924164 () Bool)

(assert (=> d!420587 (= (inv!20054 (right!13133 (c!238578 (tokens!2034 thiss!10022)))) e!924164)))

(declare-fun b!1448566 () Bool)

(assert (=> b!1448566 (= e!924164 (inv!20061 (right!13133 (c!238578 (tokens!2034 thiss!10022)))))))

(declare-fun b!1448567 () Bool)

(declare-fun e!924165 () Bool)

(assert (=> b!1448567 (= e!924164 e!924165)))

(declare-fun res!655849 () Bool)

(assert (=> b!1448567 (= res!655849 (not ((_ is Leaf!7646) (right!13133 (c!238578 (tokens!2034 thiss!10022))))))))

(assert (=> b!1448567 (=> res!655849 e!924165)))

(declare-fun b!1448568 () Bool)

(assert (=> b!1448568 (= e!924165 (inv!20062 (right!13133 (c!238578 (tokens!2034 thiss!10022)))))))

(assert (= (and d!420587 c!238618) b!1448566))

(assert (= (and d!420587 (not c!238618)) b!1448567))

(assert (= (and b!1448567 (not res!655849)) b!1448568))

(declare-fun m!1671443 () Bool)

(assert (=> b!1448566 m!1671443))

(declare-fun m!1671445 () Bool)

(assert (=> b!1448568 m!1671445))

(assert (=> b!1448265 d!420587))

(declare-fun d!420589 () Bool)

(declare-fun res!655850 () Bool)

(declare-fun e!924166 () Bool)

(assert (=> d!420589 (=> (not res!655850) (not e!924166))))

(assert (=> d!420589 (= res!655850 (rulesValid!973 Lexer!2301 (rules!11532 other!32)))))

(assert (=> d!420589 (= (rulesInvariant!2141 Lexer!2301 (rules!11532 other!32)) e!924166)))

(declare-fun b!1448569 () Bool)

(assert (=> b!1448569 (= e!924166 (noDuplicateTag!973 Lexer!2301 (rules!11532 other!32) Nil!15048))))

(assert (= (and d!420589 res!655850) b!1448569))

(declare-fun m!1671447 () Bool)

(assert (=> d!420589 m!1671447))

(declare-fun m!1671449 () Bool)

(assert (=> b!1448569 m!1671449))

(assert (=> d!420417 d!420589))

(declare-fun d!420591 () Bool)

(declare-fun res!655855 () Bool)

(declare-fun e!924171 () Bool)

(assert (=> d!420591 (=> res!655855 e!924171)))

(assert (=> d!420591 (= res!655855 ((_ is Nil!15046) (rules!11532 thiss!10022)))))

(assert (=> d!420591 (= (noDuplicateTag!973 Lexer!2301 (rules!11532 thiss!10022) Nil!15048) e!924171)))

(declare-fun b!1448574 () Bool)

(declare-fun e!924172 () Bool)

(assert (=> b!1448574 (= e!924171 e!924172)))

(declare-fun res!655856 () Bool)

(assert (=> b!1448574 (=> (not res!655856) (not e!924172))))

(declare-fun contains!2881 (List!15114 String!17941) Bool)

(assert (=> b!1448574 (= res!655856 (not (contains!2881 Nil!15048 (tag!2911 (h!20447 (rules!11532 thiss!10022))))))))

(declare-fun b!1448575 () Bool)

(assert (=> b!1448575 (= e!924172 (noDuplicateTag!973 Lexer!2301 (t!130419 (rules!11532 thiss!10022)) (Cons!15048 (tag!2911 (h!20447 (rules!11532 thiss!10022))) Nil!15048)))))

(assert (= (and d!420591 (not res!655855)) b!1448574))

(assert (= (and b!1448574 res!655856) b!1448575))

(declare-fun m!1671451 () Bool)

(assert (=> b!1448574 m!1671451))

(declare-fun m!1671453 () Bool)

(assert (=> b!1448575 m!1671453))

(assert (=> b!1448145 d!420591))

(declare-fun d!420593 () Bool)

(assert (=> d!420593 (= (isEmpty!9392 (list!6005 (tokens!2034 other!32))) ((_ is Nil!15045) (list!6005 (tokens!2034 other!32))))))

(assert (=> d!420409 d!420593))

(declare-fun d!420595 () Bool)

(assert (=> d!420595 (= (list!6005 (tokens!2034 other!32)) (list!6007 (c!238578 (tokens!2034 other!32))))))

(declare-fun bs!342398 () Bool)

(assert (= bs!342398 d!420595))

(declare-fun m!1671455 () Bool)

(assert (=> bs!342398 m!1671455))

(assert (=> d!420409 d!420595))

(declare-fun d!420597 () Bool)

(declare-fun lt!499359 () Bool)

(assert (=> d!420597 (= lt!499359 (isEmpty!9392 (list!6007 (c!238578 (tokens!2034 other!32)))))))

(assert (=> d!420597 (= lt!499359 (= (size!12323 (c!238578 (tokens!2034 other!32))) 0))))

(assert (=> d!420597 (= (isEmpty!9393 (c!238578 (tokens!2034 other!32))) lt!499359)))

(declare-fun bs!342399 () Bool)

(assert (= bs!342399 d!420597))

(assert (=> bs!342399 m!1671455))

(assert (=> bs!342399 m!1671455))

(declare-fun m!1671457 () Bool)

(assert (=> bs!342399 m!1671457))

(declare-fun m!1671459 () Bool)

(assert (=> bs!342399 m!1671459))

(assert (=> d!420409 d!420597))

(assert (=> b!1448238 d!420579))

(declare-fun d!420599 () Bool)

(declare-fun res!655857 () Bool)

(declare-fun e!924173 () Bool)

(assert (=> d!420599 (=> (not res!655857) (not e!924173))))

(assert (=> d!420599 (= res!655857 (<= (size!12320 (list!6009 (xs!7862 (c!238578 (tokens!2034 thiss!10022))))) 512))))

(assert (=> d!420599 (= (inv!20062 (c!238578 (tokens!2034 thiss!10022))) e!924173)))

(declare-fun b!1448576 () Bool)

(declare-fun res!655858 () Bool)

(assert (=> b!1448576 (=> (not res!655858) (not e!924173))))

(assert (=> b!1448576 (= res!655858 (= (csize!10473 (c!238578 (tokens!2034 thiss!10022))) (size!12320 (list!6009 (xs!7862 (c!238578 (tokens!2034 thiss!10022)))))))))

(declare-fun b!1448577 () Bool)

(assert (=> b!1448577 (= e!924173 (and (> (csize!10473 (c!238578 (tokens!2034 thiss!10022))) 0) (<= (csize!10473 (c!238578 (tokens!2034 thiss!10022))) 512)))))

(assert (= (and d!420599 res!655857) b!1448576))

(assert (= (and b!1448576 res!655858) b!1448577))

(assert (=> d!420599 m!1671285))

(assert (=> d!420599 m!1671285))

(declare-fun m!1671461 () Bool)

(assert (=> d!420599 m!1671461))

(assert (=> b!1448576 m!1671285))

(assert (=> b!1448576 m!1671285))

(assert (=> b!1448576 m!1671461))

(assert (=> b!1448142 d!420599))

(assert (=> b!1448239 d!420577))

(declare-fun d!420601 () Bool)

(declare-fun res!655859 () Bool)

(declare-fun e!924174 () Bool)

(assert (=> d!420601 (=> (not res!655859) (not e!924174))))

(assert (=> d!420601 (= res!655859 (= (csize!10472 (c!238578 (tokens!2034 thiss!10022))) (+ (size!12323 (left!12803 (c!238578 (tokens!2034 thiss!10022)))) (size!12323 (right!13133 (c!238578 (tokens!2034 thiss!10022)))))))))

(assert (=> d!420601 (= (inv!20061 (c!238578 (tokens!2034 thiss!10022))) e!924174)))

(declare-fun b!1448578 () Bool)

(declare-fun res!655860 () Bool)

(assert (=> b!1448578 (=> (not res!655860) (not e!924174))))

(assert (=> b!1448578 (= res!655860 (and (not (= (left!12803 (c!238578 (tokens!2034 thiss!10022))) Empty!5121)) (not (= (right!13133 (c!238578 (tokens!2034 thiss!10022))) Empty!5121))))))

(declare-fun b!1448579 () Bool)

(declare-fun res!655861 () Bool)

(assert (=> b!1448579 (=> (not res!655861) (not e!924174))))

(assert (=> b!1448579 (= res!655861 (= (cheight!5332 (c!238578 (tokens!2034 thiss!10022))) (+ (max!0 (height!760 (left!12803 (c!238578 (tokens!2034 thiss!10022)))) (height!760 (right!13133 (c!238578 (tokens!2034 thiss!10022))))) 1)))))

(declare-fun b!1448580 () Bool)

(assert (=> b!1448580 (= e!924174 (<= 0 (cheight!5332 (c!238578 (tokens!2034 thiss!10022)))))))

(assert (= (and d!420601 res!655859) b!1448578))

(assert (= (and b!1448578 res!655860) b!1448579))

(assert (= (and b!1448579 res!655861) b!1448580))

(declare-fun m!1671463 () Bool)

(assert (=> d!420601 m!1671463))

(declare-fun m!1671465 () Bool)

(assert (=> d!420601 m!1671465))

(declare-fun m!1671467 () Bool)

(assert (=> b!1448579 m!1671467))

(declare-fun m!1671469 () Bool)

(assert (=> b!1448579 m!1671469))

(assert (=> b!1448579 m!1671467))

(assert (=> b!1448579 m!1671469))

(declare-fun m!1671471 () Bool)

(assert (=> b!1448579 m!1671471))

(assert (=> b!1448140 d!420601))

(assert (=> b!1448237 d!420589))

(declare-fun d!420603 () Bool)

(assert (=> d!420603 (= (inv!20064 (xs!7862 (c!238578 (tokens!2034 thiss!10022)))) (<= (size!12320 (innerList!5181 (xs!7862 (c!238578 (tokens!2034 thiss!10022))))) 2147483647))))

(declare-fun bs!342400 () Bool)

(assert (= bs!342400 d!420603))

(declare-fun m!1671473 () Bool)

(assert (=> bs!342400 m!1671473))

(assert (=> b!1448266 d!420603))

(declare-fun b!1448582 () Bool)

(declare-fun res!655867 () Bool)

(declare-fun e!924176 () Bool)

(assert (=> b!1448582 (=> (not res!655867) (not e!924176))))

(assert (=> b!1448582 (= res!655867 (not (isEmpty!9393 (left!12803 (c!238578 (tokens!2034 thiss!10022))))))))

(declare-fun b!1448583 () Bool)

(declare-fun res!655863 () Bool)

(assert (=> b!1448583 (=> (not res!655863) (not e!924176))))

(assert (=> b!1448583 (= res!655863 (isBalanced!1528 (left!12803 (c!238578 (tokens!2034 thiss!10022)))))))

(declare-fun b!1448584 () Bool)

(declare-fun res!655865 () Bool)

(assert (=> b!1448584 (=> (not res!655865) (not e!924176))))

(assert (=> b!1448584 (= res!655865 (isBalanced!1528 (right!13133 (c!238578 (tokens!2034 thiss!10022)))))))

(declare-fun d!420605 () Bool)

(declare-fun res!655866 () Bool)

(declare-fun e!924175 () Bool)

(assert (=> d!420605 (=> res!655866 e!924175)))

(assert (=> d!420605 (= res!655866 (not ((_ is Node!5121) (c!238578 (tokens!2034 thiss!10022)))))))

(assert (=> d!420605 (= (isBalanced!1528 (c!238578 (tokens!2034 thiss!10022))) e!924175)))

(declare-fun b!1448581 () Bool)

(assert (=> b!1448581 (= e!924175 e!924176)))

(declare-fun res!655864 () Bool)

(assert (=> b!1448581 (=> (not res!655864) (not e!924176))))

(assert (=> b!1448581 (= res!655864 (<= (- 1) (- (height!760 (left!12803 (c!238578 (tokens!2034 thiss!10022)))) (height!760 (right!13133 (c!238578 (tokens!2034 thiss!10022)))))))))

(declare-fun b!1448585 () Bool)

(declare-fun res!655862 () Bool)

(assert (=> b!1448585 (=> (not res!655862) (not e!924176))))

(assert (=> b!1448585 (= res!655862 (<= (- (height!760 (left!12803 (c!238578 (tokens!2034 thiss!10022)))) (height!760 (right!13133 (c!238578 (tokens!2034 thiss!10022))))) 1))))

(declare-fun b!1448586 () Bool)

(assert (=> b!1448586 (= e!924176 (not (isEmpty!9393 (right!13133 (c!238578 (tokens!2034 thiss!10022))))))))

(assert (= (and d!420605 (not res!655866)) b!1448581))

(assert (= (and b!1448581 res!655864) b!1448585))

(assert (= (and b!1448585 res!655862) b!1448583))

(assert (= (and b!1448583 res!655863) b!1448584))

(assert (= (and b!1448584 res!655865) b!1448582))

(assert (= (and b!1448582 res!655867) b!1448586))

(declare-fun m!1671475 () Bool)

(assert (=> b!1448586 m!1671475))

(assert (=> b!1448585 m!1671467))

(assert (=> b!1448585 m!1671469))

(declare-fun m!1671477 () Bool)

(assert (=> b!1448584 m!1671477))

(assert (=> b!1448581 m!1671467))

(assert (=> b!1448581 m!1671469))

(declare-fun m!1671479 () Bool)

(assert (=> b!1448583 m!1671479))

(declare-fun m!1671481 () Bool)

(assert (=> b!1448582 m!1671481))

(assert (=> d!420433 d!420605))

(declare-fun d!420607 () Bool)

(declare-fun lt!499362 () Token!4956)

(assert (=> d!420607 (contains!2879 (list!6005 (tokens!2034 thiss!10022)) lt!499362)))

(declare-fun e!924179 () Token!4956)

(assert (=> d!420607 (= lt!499362 e!924179)))

(declare-fun c!238621 () Bool)

(assert (=> d!420607 (= c!238621 (and ((_ is Cons!15045) (list!6005 (tokens!2034 thiss!10022))) ((_ is Nil!15045) (t!130418 (list!6005 (tokens!2034 thiss!10022))))))))

(assert (=> d!420607 (not (isEmpty!9392 (list!6005 (tokens!2034 thiss!10022))))))

(assert (=> d!420607 (= (last!204 (list!6005 (tokens!2034 thiss!10022))) lt!499362)))

(declare-fun b!1448591 () Bool)

(assert (=> b!1448591 (= e!924179 (h!20446 (list!6005 (tokens!2034 thiss!10022))))))

(declare-fun b!1448592 () Bool)

(assert (=> b!1448592 (= e!924179 (last!204 (t!130418 (list!6005 (tokens!2034 thiss!10022)))))))

(assert (= (and d!420607 c!238621) b!1448591))

(assert (= (and d!420607 (not c!238621)) b!1448592))

(assert (=> d!420607 m!1670931))

(declare-fun m!1671483 () Bool)

(assert (=> d!420607 m!1671483))

(assert (=> d!420607 m!1670931))

(assert (=> d!420607 m!1671001))

(declare-fun m!1671485 () Bool)

(assert (=> b!1448592 m!1671485))

(assert (=> d!420429 d!420607))

(assert (=> d!420429 d!420431))

(declare-fun d!420609 () Bool)

(declare-fun lt!499377 () Token!4956)

(assert (=> d!420609 (= lt!499377 (last!204 (list!6007 (c!238578 (tokens!2034 thiss!10022)))))))

(declare-fun e!924191 () Token!4956)

(assert (=> d!420609 (= lt!499377 e!924191)))

(declare-fun c!238624 () Bool)

(assert (=> d!420609 (= c!238624 ((_ is Leaf!7646) (c!238578 (tokens!2034 thiss!10022))))))

(assert (=> d!420609 (isBalanced!1528 (c!238578 (tokens!2034 thiss!10022)))))

(assert (=> d!420609 (= (last!205 (c!238578 (tokens!2034 thiss!10022))) lt!499377)))

(declare-fun b!1448603 () Bool)

(declare-fun last!207 (IArray!10247) Token!4956)

(assert (=> b!1448603 (= e!924191 (last!207 (xs!7862 (c!238578 (tokens!2034 thiss!10022)))))))

(declare-fun b!1448604 () Bool)

(declare-fun e!924189 () Bool)

(declare-fun lt!499376 () List!15111)

(declare-fun lt!499374 () List!15111)

(assert (=> b!1448604 (= e!924189 (= (last!204 (++!4048 lt!499376 lt!499374)) (last!204 lt!499374)))))

(declare-fun b!1448605 () Bool)

(declare-fun res!655874 () Bool)

(assert (=> b!1448605 (= res!655874 (not (isEmpty!9392 lt!499374)))))

(assert (=> b!1448605 (=> (not res!655874) (not e!924189))))

(declare-fun e!924188 () Bool)

(assert (=> b!1448605 (= e!924188 e!924189)))

(declare-fun b!1448606 () Bool)

(declare-fun e!924190 () Bool)

(assert (=> b!1448606 (= e!924190 (= (last!204 (++!4048 lt!499376 lt!499374)) (last!204 lt!499376)))))

(declare-fun b!1448607 () Bool)

(assert (=> b!1448607 (= e!924191 (last!205 (right!13133 (c!238578 (tokens!2034 thiss!10022)))))))

(assert (=> b!1448607 (= lt!499376 (list!6007 (left!12803 (c!238578 (tokens!2034 thiss!10022)))))))

(assert (=> b!1448607 (= lt!499374 (list!6007 (right!13133 (c!238578 (tokens!2034 thiss!10022)))))))

(declare-fun lt!499373 () Unit!23955)

(declare-fun lemmaLastOfConcatIsLastOfRhs!10 (List!15111 List!15111) Unit!23955)

(assert (=> b!1448607 (= lt!499373 (lemmaLastOfConcatIsLastOfRhs!10 lt!499376 lt!499374))))

(declare-fun res!655875 () Bool)

(assert (=> b!1448607 (= res!655875 (isEmpty!9392 lt!499374))))

(assert (=> b!1448607 (=> (not res!655875) (not e!924190))))

(declare-fun res!655876 () Bool)

(assert (=> b!1448607 (= res!655876 e!924190)))

(assert (=> b!1448607 (=> res!655876 e!924188)))

(assert (=> b!1448607 e!924188))

(declare-fun lt!499375 () Unit!23955)

(assert (=> b!1448607 (= lt!499375 lt!499373)))

(assert (= (and d!420609 c!238624) b!1448603))

(assert (= (and d!420609 (not c!238624)) b!1448607))

(assert (= (and b!1448607 res!655875) b!1448606))

(assert (= (and b!1448607 (not res!655876)) b!1448605))

(assert (= (and b!1448605 res!655874) b!1448604))

(declare-fun m!1671487 () Bool)

(assert (=> b!1448605 m!1671487))

(assert (=> b!1448607 m!1671289))

(declare-fun m!1671489 () Bool)

(assert (=> b!1448607 m!1671489))

(assert (=> b!1448607 m!1671487))

(declare-fun m!1671491 () Bool)

(assert (=> b!1448607 m!1671491))

(assert (=> b!1448607 m!1671287))

(declare-fun m!1671493 () Bool)

(assert (=> b!1448603 m!1671493))

(declare-fun m!1671495 () Bool)

(assert (=> b!1448604 m!1671495))

(assert (=> b!1448604 m!1671495))

(declare-fun m!1671497 () Bool)

(assert (=> b!1448604 m!1671497))

(declare-fun m!1671499 () Bool)

(assert (=> b!1448604 m!1671499))

(assert (=> b!1448606 m!1671495))

(assert (=> b!1448606 m!1671495))

(assert (=> b!1448606 m!1671497))

(declare-fun m!1671501 () Bool)

(assert (=> b!1448606 m!1671501))

(assert (=> d!420609 m!1671023))

(assert (=> d!420609 m!1671023))

(declare-fun m!1671503 () Bool)

(assert (=> d!420609 m!1671503))

(assert (=> d!420609 m!1671025))

(assert (=> d!420429 d!420609))

(assert (=> d!420429 d!420419))

(declare-fun b!1448621 () Bool)

(declare-fun b_free!35959 () Bool)

(declare-fun b_next!36663 () Bool)

(assert (=> b!1448621 (= b_free!35959 (not b_next!36663))))

(declare-fun tp!408579 () Bool)

(declare-fun b_and!98023 () Bool)

(assert (=> b!1448621 (= tp!408579 b_and!98023)))

(declare-fun b_free!35961 () Bool)

(declare-fun b_next!36665 () Bool)

(assert (=> b!1448621 (= b_free!35961 (not b_next!36665))))

(declare-fun tp!408577 () Bool)

(declare-fun b_and!98025 () Bool)

(assert (=> b!1448621 (= tp!408577 b_and!98025)))

(declare-fun e!924207 () Bool)

(declare-fun tp!408581 () Bool)

(declare-fun b!1448618 () Bool)

(declare-fun e!924209 () Bool)

(declare-fun inv!20066 (Token!4956) Bool)

(assert (=> b!1448618 (= e!924209 (and (inv!20066 (h!20446 (innerList!5181 (xs!7862 (c!238578 (tokens!2034 other!32)))))) e!924207 tp!408581))))

(assert (=> b!1448270 (= tp!408504 e!924209)))

(declare-fun e!924208 () Bool)

(assert (=> b!1448621 (= e!924208 (and tp!408579 tp!408577))))

(declare-fun b!1448619 () Bool)

(declare-fun tp!408578 () Bool)

(declare-fun e!924204 () Bool)

(declare-fun inv!21 (TokenValue!2737) Bool)

(assert (=> b!1448619 (= e!924207 (and (inv!21 (value!85087 (h!20446 (innerList!5181 (xs!7862 (c!238578 (tokens!2034 other!32))))))) e!924204 tp!408578))))

(declare-fun tp!408580 () Bool)

(declare-fun b!1448620 () Bool)

(assert (=> b!1448620 (= e!924204 (and tp!408580 (inv!20050 (tag!2911 (rule!4420 (h!20446 (innerList!5181 (xs!7862 (c!238578 (tokens!2034 other!32)))))))) (inv!20063 (transformation!2647 (rule!4420 (h!20446 (innerList!5181 (xs!7862 (c!238578 (tokens!2034 other!32)))))))) e!924208))))

(assert (= b!1448620 b!1448621))

(assert (= b!1448619 b!1448620))

(assert (= b!1448618 b!1448619))

(assert (= (and b!1448270 ((_ is Cons!15045) (innerList!5181 (xs!7862 (c!238578 (tokens!2034 other!32)))))) b!1448618))

(declare-fun m!1671505 () Bool)

(assert (=> b!1448618 m!1671505))

(declare-fun m!1671507 () Bool)

(assert (=> b!1448619 m!1671507))

(declare-fun m!1671509 () Bool)

(assert (=> b!1448620 m!1671509))

(declare-fun m!1671511 () Bool)

(assert (=> b!1448620 m!1671511))

(declare-fun tp!408584 () Bool)

(declare-fun b!1448622 () Bool)

(declare-fun tp!408583 () Bool)

(declare-fun e!924211 () Bool)

(assert (=> b!1448622 (= e!924211 (and (inv!20054 (left!12803 (left!12803 (c!238578 (tokens!2034 other!32))))) tp!408583 (inv!20054 (right!13133 (left!12803 (c!238578 (tokens!2034 other!32))))) tp!408584))))

(declare-fun b!1448624 () Bool)

(declare-fun e!924210 () Bool)

(declare-fun tp!408582 () Bool)

(assert (=> b!1448624 (= e!924210 tp!408582)))

(declare-fun b!1448623 () Bool)

(assert (=> b!1448623 (= e!924211 (and (inv!20064 (xs!7862 (left!12803 (c!238578 (tokens!2034 other!32))))) e!924210))))

(assert (=> b!1448268 (= tp!408505 (and (inv!20054 (left!12803 (c!238578 (tokens!2034 other!32)))) e!924211))))

(assert (= (and b!1448268 ((_ is Node!5121) (left!12803 (c!238578 (tokens!2034 other!32))))) b!1448622))

(assert (= b!1448623 b!1448624))

(assert (= (and b!1448268 ((_ is Leaf!7646) (left!12803 (c!238578 (tokens!2034 other!32))))) b!1448623))

(declare-fun m!1671513 () Bool)

(assert (=> b!1448622 m!1671513))

(declare-fun m!1671515 () Bool)

(assert (=> b!1448622 m!1671515))

(declare-fun m!1671517 () Bool)

(assert (=> b!1448623 m!1671517))

(assert (=> b!1448268 m!1671103))

(declare-fun tp!408587 () Bool)

(declare-fun tp!408586 () Bool)

(declare-fun b!1448625 () Bool)

(declare-fun e!924213 () Bool)

(assert (=> b!1448625 (= e!924213 (and (inv!20054 (left!12803 (right!13133 (c!238578 (tokens!2034 other!32))))) tp!408586 (inv!20054 (right!13133 (right!13133 (c!238578 (tokens!2034 other!32))))) tp!408587))))

(declare-fun b!1448627 () Bool)

(declare-fun e!924212 () Bool)

(declare-fun tp!408585 () Bool)

(assert (=> b!1448627 (= e!924212 tp!408585)))

(declare-fun b!1448626 () Bool)

(assert (=> b!1448626 (= e!924213 (and (inv!20064 (xs!7862 (right!13133 (c!238578 (tokens!2034 other!32))))) e!924212))))

(assert (=> b!1448268 (= tp!408506 (and (inv!20054 (right!13133 (c!238578 (tokens!2034 other!32)))) e!924213))))

(assert (= (and b!1448268 ((_ is Node!5121) (right!13133 (c!238578 (tokens!2034 other!32))))) b!1448625))

(assert (= b!1448626 b!1448627))

(assert (= (and b!1448268 ((_ is Leaf!7646) (right!13133 (c!238578 (tokens!2034 other!32))))) b!1448626))

(declare-fun m!1671519 () Bool)

(assert (=> b!1448625 m!1671519))

(declare-fun m!1671521 () Bool)

(assert (=> b!1448625 m!1671521))

(declare-fun m!1671523 () Bool)

(assert (=> b!1448626 m!1671523))

(assert (=> b!1448268 m!1671105))

(declare-fun b!1448630 () Bool)

(declare-fun b_free!35963 () Bool)

(declare-fun b_next!36667 () Bool)

(assert (=> b!1448630 (= b_free!35963 (not b_next!36667))))

(declare-fun tp!408589 () Bool)

(declare-fun b_and!98027 () Bool)

(assert (=> b!1448630 (= tp!408589 b_and!98027)))

(declare-fun b_free!35965 () Bool)

(declare-fun b_next!36669 () Bool)

(assert (=> b!1448630 (= b_free!35965 (not b_next!36669))))

(declare-fun tp!408588 () Bool)

(declare-fun b_and!98029 () Bool)

(assert (=> b!1448630 (= tp!408588 b_and!98029)))

(declare-fun e!924215 () Bool)

(assert (=> b!1448630 (= e!924215 (and tp!408589 tp!408588))))

(declare-fun tp!408590 () Bool)

(declare-fun b!1448629 () Bool)

(declare-fun e!924217 () Bool)

(assert (=> b!1448629 (= e!924217 (and tp!408590 (inv!20050 (tag!2911 (h!20447 (t!130419 (rules!11532 thiss!10022))))) (inv!20063 (transformation!2647 (h!20447 (t!130419 (rules!11532 thiss!10022))))) e!924215))))

(declare-fun b!1448628 () Bool)

(declare-fun e!924216 () Bool)

(declare-fun tp!408591 () Bool)

(assert (=> b!1448628 (= e!924216 (and e!924217 tp!408591))))

(assert (=> b!1448254 (= tp!408494 e!924216)))

(assert (= b!1448629 b!1448630))

(assert (= b!1448628 b!1448629))

(assert (= (and b!1448254 ((_ is Cons!15046) (t!130419 (rules!11532 thiss!10022)))) b!1448628))

(declare-fun m!1671525 () Bool)

(assert (=> b!1448629 m!1671525))

(declare-fun m!1671527 () Bool)

(assert (=> b!1448629 m!1671527))

(declare-fun e!924220 () Bool)

(assert (=> b!1448255 (= tp!408493 e!924220)))

(declare-fun b!1448644 () Bool)

(declare-fun tp!408604 () Bool)

(declare-fun tp!408605 () Bool)

(assert (=> b!1448644 (= e!924220 (and tp!408604 tp!408605))))

(declare-fun b!1448643 () Bool)

(declare-fun tp!408603 () Bool)

(assert (=> b!1448643 (= e!924220 tp!408603)))

(declare-fun b!1448642 () Bool)

(declare-fun tp!408602 () Bool)

(declare-fun tp!408606 () Bool)

(assert (=> b!1448642 (= e!924220 (and tp!408602 tp!408606))))

(declare-fun b!1448641 () Bool)

(declare-fun tp_is_empty!6863 () Bool)

(assert (=> b!1448641 (= e!924220 tp_is_empty!6863)))

(assert (= (and b!1448255 ((_ is ElementMatch!3961) (regex!2647 (h!20447 (rules!11532 thiss!10022))))) b!1448641))

(assert (= (and b!1448255 ((_ is Concat!6699) (regex!2647 (h!20447 (rules!11532 thiss!10022))))) b!1448642))

(assert (= (and b!1448255 ((_ is Star!3961) (regex!2647 (h!20447 (rules!11532 thiss!10022))))) b!1448643))

(assert (= (and b!1448255 ((_ is Union!3961) (regex!2647 (h!20447 (rules!11532 thiss!10022))))) b!1448644))

(declare-fun tp!408608 () Bool)

(declare-fun e!924222 () Bool)

(declare-fun b!1448645 () Bool)

(declare-fun tp!408609 () Bool)

(assert (=> b!1448645 (= e!924222 (and (inv!20054 (left!12803 (left!12803 (c!238578 (tokens!2034 thiss!10022))))) tp!408608 (inv!20054 (right!13133 (left!12803 (c!238578 (tokens!2034 thiss!10022))))) tp!408609))))

(declare-fun b!1448647 () Bool)

(declare-fun e!924221 () Bool)

(declare-fun tp!408607 () Bool)

(assert (=> b!1448647 (= e!924221 tp!408607)))

(declare-fun b!1448646 () Bool)

(assert (=> b!1448646 (= e!924222 (and (inv!20064 (xs!7862 (left!12803 (c!238578 (tokens!2034 thiss!10022))))) e!924221))))

(assert (=> b!1448265 (= tp!408502 (and (inv!20054 (left!12803 (c!238578 (tokens!2034 thiss!10022)))) e!924222))))

(assert (= (and b!1448265 ((_ is Node!5121) (left!12803 (c!238578 (tokens!2034 thiss!10022))))) b!1448645))

(assert (= b!1448646 b!1448647))

(assert (= (and b!1448265 ((_ is Leaf!7646) (left!12803 (c!238578 (tokens!2034 thiss!10022))))) b!1448646))

(declare-fun m!1671529 () Bool)

(assert (=> b!1448645 m!1671529))

(declare-fun m!1671531 () Bool)

(assert (=> b!1448645 m!1671531))

(declare-fun m!1671533 () Bool)

(assert (=> b!1448646 m!1671533))

(assert (=> b!1448265 m!1671097))

(declare-fun b!1448648 () Bool)

(declare-fun tp!408612 () Bool)

(declare-fun e!924224 () Bool)

(declare-fun tp!408611 () Bool)

(assert (=> b!1448648 (= e!924224 (and (inv!20054 (left!12803 (right!13133 (c!238578 (tokens!2034 thiss!10022))))) tp!408611 (inv!20054 (right!13133 (right!13133 (c!238578 (tokens!2034 thiss!10022))))) tp!408612))))

(declare-fun b!1448650 () Bool)

(declare-fun e!924223 () Bool)

(declare-fun tp!408610 () Bool)

(assert (=> b!1448650 (= e!924223 tp!408610)))

(declare-fun b!1448649 () Bool)

(assert (=> b!1448649 (= e!924224 (and (inv!20064 (xs!7862 (right!13133 (c!238578 (tokens!2034 thiss!10022))))) e!924223))))

(assert (=> b!1448265 (= tp!408503 (and (inv!20054 (right!13133 (c!238578 (tokens!2034 thiss!10022)))) e!924224))))

(assert (= (and b!1448265 ((_ is Node!5121) (right!13133 (c!238578 (tokens!2034 thiss!10022))))) b!1448648))

(assert (= b!1448649 b!1448650))

(assert (= (and b!1448265 ((_ is Leaf!7646) (right!13133 (c!238578 (tokens!2034 thiss!10022))))) b!1448649))

(declare-fun m!1671535 () Bool)

(assert (=> b!1448648 m!1671535))

(declare-fun m!1671537 () Bool)

(assert (=> b!1448648 m!1671537))

(declare-fun m!1671539 () Bool)

(assert (=> b!1448649 m!1671539))

(assert (=> b!1448265 m!1671099))

(declare-fun b!1448653 () Bool)

(declare-fun e!924227 () Bool)

(assert (=> b!1448653 (= e!924227 true)))

(declare-fun b!1448652 () Bool)

(declare-fun e!924226 () Bool)

(assert (=> b!1448652 (= e!924226 e!924227)))

(declare-fun b!1448651 () Bool)

(declare-fun e!924225 () Bool)

(assert (=> b!1448651 (= e!924225 e!924226)))

(assert (=> b!1448223 e!924225))

(assert (= b!1448652 b!1448653))

(assert (= b!1448651 b!1448652))

(assert (= (and b!1448223 ((_ is Cons!15046) (t!130419 (rules!11532 thiss!10022)))) b!1448651))

(assert (=> b!1448653 (< (dynLambda!6859 order!9053 (toValue!3954 (transformation!2647 (h!20447 (t!130419 (rules!11532 thiss!10022)))))) (dynLambda!6860 order!9055 lambda!62987))))

(assert (=> b!1448653 (< (dynLambda!6861 order!9057 (toChars!3813 (transformation!2647 (h!20447 (t!130419 (rules!11532 thiss!10022)))))) (dynLambda!6860 order!9055 lambda!62987))))

(declare-fun b!1448657 () Bool)

(declare-fun b_free!35967 () Bool)

(declare-fun b_next!36671 () Bool)

(assert (=> b!1448657 (= b_free!35967 (not b_next!36671))))

(declare-fun tp!408615 () Bool)

(declare-fun b_and!98031 () Bool)

(assert (=> b!1448657 (= tp!408615 b_and!98031)))

(declare-fun b_free!35969 () Bool)

(declare-fun b_next!36673 () Bool)

(assert (=> b!1448657 (= b_free!35969 (not b_next!36673))))

(declare-fun tp!408613 () Bool)

(declare-fun b_and!98033 () Bool)

(assert (=> b!1448657 (= tp!408613 b_and!98033)))

(declare-fun e!924231 () Bool)

(declare-fun tp!408617 () Bool)

(declare-fun b!1448654 () Bool)

(declare-fun e!924233 () Bool)

(assert (=> b!1448654 (= e!924233 (and (inv!20066 (h!20446 (innerList!5181 (xs!7862 (c!238578 (tokens!2034 thiss!10022)))))) e!924231 tp!408617))))

(assert (=> b!1448267 (= tp!408501 e!924233)))

(declare-fun e!924232 () Bool)

(assert (=> b!1448657 (= e!924232 (and tp!408615 tp!408613))))

(declare-fun b!1448655 () Bool)

(declare-fun tp!408614 () Bool)

(declare-fun e!924228 () Bool)

(assert (=> b!1448655 (= e!924231 (and (inv!21 (value!85087 (h!20446 (innerList!5181 (xs!7862 (c!238578 (tokens!2034 thiss!10022))))))) e!924228 tp!408614))))

(declare-fun tp!408616 () Bool)

(declare-fun b!1448656 () Bool)

(assert (=> b!1448656 (= e!924228 (and tp!408616 (inv!20050 (tag!2911 (rule!4420 (h!20446 (innerList!5181 (xs!7862 (c!238578 (tokens!2034 thiss!10022)))))))) (inv!20063 (transformation!2647 (rule!4420 (h!20446 (innerList!5181 (xs!7862 (c!238578 (tokens!2034 thiss!10022)))))))) e!924232))))

(assert (= b!1448656 b!1448657))

(assert (= b!1448655 b!1448656))

(assert (= b!1448654 b!1448655))

(assert (= (and b!1448267 ((_ is Cons!15045) (innerList!5181 (xs!7862 (c!238578 (tokens!2034 thiss!10022)))))) b!1448654))

(declare-fun m!1671541 () Bool)

(assert (=> b!1448654 m!1671541))

(declare-fun m!1671543 () Bool)

(assert (=> b!1448655 m!1671543))

(declare-fun m!1671545 () Bool)

(assert (=> b!1448656 m!1671545))

(declare-fun m!1671547 () Bool)

(assert (=> b!1448656 m!1671547))

(declare-fun e!924234 () Bool)

(assert (=> b!1448252 (= tp!408489 e!924234)))

(declare-fun b!1448661 () Bool)

(declare-fun tp!408620 () Bool)

(declare-fun tp!408621 () Bool)

(assert (=> b!1448661 (= e!924234 (and tp!408620 tp!408621))))

(declare-fun b!1448660 () Bool)

(declare-fun tp!408619 () Bool)

(assert (=> b!1448660 (= e!924234 tp!408619)))

(declare-fun b!1448659 () Bool)

(declare-fun tp!408618 () Bool)

(declare-fun tp!408622 () Bool)

(assert (=> b!1448659 (= e!924234 (and tp!408618 tp!408622))))

(declare-fun b!1448658 () Bool)

(assert (=> b!1448658 (= e!924234 tp_is_empty!6863)))

(assert (= (and b!1448252 ((_ is ElementMatch!3961) (regex!2647 (h!20447 (rules!11532 other!32))))) b!1448658))

(assert (= (and b!1448252 ((_ is Concat!6699) (regex!2647 (h!20447 (rules!11532 other!32))))) b!1448659))

(assert (= (and b!1448252 ((_ is Star!3961) (regex!2647 (h!20447 (rules!11532 other!32))))) b!1448660))

(assert (= (and b!1448252 ((_ is Union!3961) (regex!2647 (h!20447 (rules!11532 other!32))))) b!1448661))

(declare-fun b!1448664 () Bool)

(declare-fun b_free!35971 () Bool)

(declare-fun b_next!36675 () Bool)

(assert (=> b!1448664 (= b_free!35971 (not b_next!36675))))

(declare-fun tp!408624 () Bool)

(declare-fun b_and!98035 () Bool)

(assert (=> b!1448664 (= tp!408624 b_and!98035)))

(declare-fun b_free!35973 () Bool)

(declare-fun b_next!36677 () Bool)

(assert (=> b!1448664 (= b_free!35973 (not b_next!36677))))

(declare-fun tp!408623 () Bool)

(declare-fun b_and!98037 () Bool)

(assert (=> b!1448664 (= tp!408623 b_and!98037)))

(declare-fun e!924236 () Bool)

(assert (=> b!1448664 (= e!924236 (and tp!408624 tp!408623))))

(declare-fun e!924238 () Bool)

(declare-fun tp!408625 () Bool)

(declare-fun b!1448663 () Bool)

(assert (=> b!1448663 (= e!924238 (and tp!408625 (inv!20050 (tag!2911 (h!20447 (t!130419 (rules!11532 other!32))))) (inv!20063 (transformation!2647 (h!20447 (t!130419 (rules!11532 other!32))))) e!924236))))

(declare-fun b!1448662 () Bool)

(declare-fun e!924237 () Bool)

(declare-fun tp!408626 () Bool)

(assert (=> b!1448662 (= e!924237 (and e!924238 tp!408626))))

(assert (=> b!1448251 (= tp!408490 e!924237)))

(assert (= b!1448663 b!1448664))

(assert (= b!1448662 b!1448663))

(assert (= (and b!1448251 ((_ is Cons!15046) (t!130419 (rules!11532 other!32)))) b!1448662))

(declare-fun m!1671549 () Bool)

(assert (=> b!1448663 m!1671549))

(declare-fun m!1671551 () Bool)

(assert (=> b!1448663 m!1671551))

(declare-fun b_lambda!45185 () Bool)

(assert (= b_lambda!45183 (or d!420435 b_lambda!45185)))

(declare-fun bs!342401 () Bool)

(declare-fun d!420611 () Bool)

(assert (= bs!342401 (and d!420611 d!420435)))

(assert (=> bs!342401 (= (dynLambda!6863 lambda!62987 (h!20446 lt!499277)) (rulesProduceIndividualToken!1222 Lexer!2301 (rules!11532 thiss!10022) (h!20446 lt!499277)))))

(assert (=> bs!342401 m!1671079))

(assert (=> b!1448561 d!420611))

(check-sat (not b_next!36673) b_and!98031 (not b!1448628) b_and!98033 (not d!420547) (not b!1448619) (not b!1448650) b_and!98027 (not b!1448516) (not b!1448604) (not b!1448651) (not d!420471) (not b!1448321) (not b!1448660) (not b!1448618) (not b!1448642) (not b!1448439) (not d!420595) (not b_next!36671) (not b!1448562) tp_is_empty!6863 (not b!1448654) (not b_next!36667) (not d!420603) b_and!98037 (not b!1448316) (not b!1448575) (not d!420571) b_and!98005 (not b!1448268) (not d!420601) (not b!1448583) (not b!1448532) (not b!1448514) (not b!1448534) (not b!1448647) (not b!1448533) (not b_next!36639) (not b!1448625) (not b!1448644) b_and!98003 (not d!420561) (not b!1448656) (not b!1448513) (not b!1448605) (not d!420597) b_and!98029 (not d!420567) (not b!1448569) (not b!1448319) (not b!1448536) (not b!1448417) (not b!1448574) (not d!420579) (not b!1448314) (not b_next!36669) (not b!1448579) (not b!1448643) (not b!1448430) (not b_next!36675) (not b!1448649) (not b!1448624) (not b!1448584) (not b!1448626) (not b!1448646) (not b!1448565) (not b!1448566) (not b!1448547) (not d!420553) (not b_next!36663) (not b_next!36643) (not d!420609) b_and!98023 (not b!1448622) (not b!1448548) (not b_next!36665) b_and!98035 b_and!97999 b_and!98025 (not b!1448645) (not b!1448416) (not b!1448576) (not b!1448582) (not d!420551) (not b!1448620) (not b!1448603) (not b!1448655) (not bs!342401) (not b!1448586) (not b!1448606) (not d!420545) (not b!1448662) (not b_next!36641) (not b!1448585) (not d!420575) (not b!1448318) (not b!1448556) (not b!1448629) (not b!1448663) (not b!1448661) (not b_lambda!45185) (not b!1448648) (not b!1448434) (not b!1448431) (not d!420589) (not b!1448545) (not b!1448535) (not b!1448592) (not b!1448433) (not b!1448607) (not b!1448563) (not d!420607) (not b_next!36645) (not b!1448512) (not b!1448623) (not b!1448537) (not d!420599) (not b!1448265) b_and!98001 (not b!1448659) (not b!1448568) (not b!1448581) (not d!420485) (not b!1448627) (not b_next!36677) (not d!420563) (not d!420577) (not b!1448519) (not b!1448432) (not d!420479))
(check-sat (not b_next!36671) (not b_next!36667) b_and!98029 (not b_next!36669) (not b_next!36675) (not b_next!36641) (not b_next!36645) b_and!98001 (not b_next!36677) (not b_next!36673) b_and!98031 b_and!98033 b_and!98027 b_and!98037 b_and!98005 (not b_next!36639) b_and!98003 (not b_next!36663) (not b_next!36643) b_and!98023 (not b_next!36665) b_and!98035 b_and!97999 b_and!98025)
