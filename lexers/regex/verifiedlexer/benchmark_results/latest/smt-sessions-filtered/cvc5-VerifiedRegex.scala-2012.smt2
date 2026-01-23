; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!102276 () Bool)

(assert start!102276)

(declare-fun b!1165284 () Bool)

(declare-fun e!746654 () Bool)

(assert (=> b!1165284 (= e!746654 true)))

(declare-fun b!1165283 () Bool)

(declare-fun e!746653 () Bool)

(assert (=> b!1165283 (= e!746653 e!746654)))

(declare-fun b!1165271 () Bool)

(assert (=> b!1165271 e!746653))

(assert (= b!1165283 b!1165284))

(assert (= b!1165271 b!1165283))

(declare-fun b!1165264 () Bool)

(declare-fun e!746645 () Bool)

(declare-datatypes ((List!11528 0))(
  ( (Nil!11504) (Cons!11504 (h!16905 (_ BitVec 16)) (t!110253 List!11528)) )
))
(declare-datatypes ((TokenValue!2070 0))(
  ( (FloatLiteralValue!4140 (text!14935 List!11528)) (TokenValueExt!2069 (__x!7851 Int)) (Broken!10350 (value!65086 List!11528)) (Object!2093) (End!2070) (Def!2070) (Underscore!2070) (Match!2070) (Else!2070) (Error!2070) (Case!2070) (If!2070) (Extends!2070) (Abstract!2070) (Class!2070) (Val!2070) (DelimiterValue!4140 (del!2130 List!11528)) (KeywordValue!2076 (value!65087 List!11528)) (CommentValue!4140 (value!65088 List!11528)) (WhitespaceValue!4140 (value!65089 List!11528)) (IndentationValue!2070 (value!65090 List!11528)) (String!13939) (Int32!2070) (Broken!10351 (value!65091 List!11528)) (Boolean!2071) (Unit!17594) (OperatorValue!2073 (op!2130 List!11528)) (IdentifierValue!4140 (value!65092 List!11528)) (IdentifierValue!4141 (value!65093 List!11528)) (WhitespaceValue!4141 (value!65094 List!11528)) (True!4140) (False!4140) (Broken!10352 (value!65095 List!11528)) (Broken!10353 (value!65096 List!11528)) (True!4141) (RightBrace!2070) (RightBracket!2070) (Colon!2070) (Null!2070) (Comma!2070) (LeftBracket!2070) (False!4141) (LeftBrace!2070) (ImaginaryLiteralValue!2070 (text!14936 List!11528)) (StringLiteralValue!6210 (value!65097 List!11528)) (EOFValue!2070 (value!65098 List!11528)) (IdentValue!2070 (value!65099 List!11528)) (DelimiterValue!4141 (value!65100 List!11528)) (DedentValue!2070 (value!65101 List!11528)) (NewLineValue!2070 (value!65102 List!11528)) (IntegerValue!6210 (value!65103 (_ BitVec 32)) (text!14937 List!11528)) (IntegerValue!6211 (value!65104 Int) (text!14938 List!11528)) (Times!2070) (Or!2070) (Equal!2070) (Minus!2070) (Broken!10354 (value!65105 List!11528)) (And!2070) (Div!2070) (LessEqual!2070) (Mod!2070) (Concat!5344) (Not!2070) (Plus!2070) (SpaceValue!2070 (value!65106 List!11528)) (IntegerValue!6212 (value!65107 Int) (text!14939 List!11528)) (StringLiteralValue!6211 (text!14940 List!11528)) (FloatLiteralValue!4141 (text!14941 List!11528)) (BytesLiteralValue!2070 (value!65108 List!11528)) (CommentValue!4141 (value!65109 List!11528)) (StringLiteralValue!6212 (value!65110 List!11528)) (ErrorTokenValue!2070 (msg!2131 List!11528)) )
))
(declare-datatypes ((C!6866 0))(
  ( (C!6867 (val!3689 Int)) )
))
(declare-datatypes ((Regex!3274 0))(
  ( (ElementMatch!3274 (c!194610 C!6866)) (Concat!5345 (regOne!7060 Regex!3274) (regTwo!7060 Regex!3274)) (EmptyExpr!3274) (Star!3274 (reg!3603 Regex!3274)) (EmptyLang!3274) (Union!3274 (regOne!7061 Regex!3274) (regTwo!7061 Regex!3274)) )
))
(declare-datatypes ((String!13940 0))(
  ( (String!13941 (value!65111 String)) )
))
(declare-datatypes ((List!11529 0))(
  ( (Nil!11505) (Cons!11505 (h!16906 C!6866) (t!110254 List!11529)) )
))
(declare-datatypes ((IArray!7545 0))(
  ( (IArray!7546 (innerList!3830 List!11529)) )
))
(declare-datatypes ((Conc!3770 0))(
  ( (Node!3770 (left!10060 Conc!3770) (right!10390 Conc!3770) (csize!7770 Int) (cheight!3981 Int)) (Leaf!5783 (xs!6475 IArray!7545) (csize!7771 Int)) (Empty!3770) )
))
(declare-datatypes ((BalanceConc!7562 0))(
  ( (BalanceConc!7563 (c!194611 Conc!3770)) )
))
(declare-datatypes ((TokenValueInjection!3840 0))(
  ( (TokenValueInjection!3841 (toValue!3105 Int) (toChars!2964 Int)) )
))
(declare-datatypes ((Rule!3808 0))(
  ( (Rule!3809 (regex!2004 Regex!3274) (tag!2266 String!13940) (isSeparator!2004 Bool) (transformation!2004 TokenValueInjection!3840)) )
))
(declare-datatypes ((Token!3670 0))(
  ( (Token!3671 (value!65112 TokenValue!2070) (rule!3425 Rule!3808) (size!9056 Int) (originalCharacters!2558 List!11529)) )
))
(declare-datatypes ((List!11530 0))(
  ( (Nil!11506) (Cons!11506 (h!16907 Token!3670) (t!110255 List!11530)) )
))
(declare-datatypes ((List!11531 0))(
  ( (Nil!11507) (Cons!11507 (h!16908 Rule!3808) (t!110256 List!11531)) )
))
(declare-datatypes ((IArray!7547 0))(
  ( (IArray!7548 (innerList!3831 List!11530)) )
))
(declare-datatypes ((Conc!3771 0))(
  ( (Node!3771 (left!10061 Conc!3771) (right!10391 Conc!3771) (csize!7772 Int) (cheight!3982 Int)) (Leaf!5784 (xs!6476 IArray!7547) (csize!7773 Int)) (Empty!3771) )
))
(declare-datatypes ((BalanceConc!7564 0))(
  ( (BalanceConc!7565 (c!194612 Conc!3771)) )
))
(declare-datatypes ((PrintableTokens!694 0))(
  ( (PrintableTokens!695 (rules!9567 List!11531) (tokens!1621 BalanceConc!7564)) )
))
(declare-fun thiss!10527 () PrintableTokens!694)

(declare-fun lt!398383 () List!11530)

(declare-datatypes ((LexerInterface!1699 0))(
  ( (LexerInterfaceExt!1696 (__x!7852 Int)) (Lexer!1697) )
))
(declare-fun rulesProduceEachTokenIndividuallyList!565 (LexerInterface!1699 List!11531 List!11530) Bool)

(assert (=> b!1165264 (= e!746645 (rulesProduceEachTokenIndividuallyList!565 Lexer!1697 (rules!9567 thiss!10527) (t!110255 lt!398383)))))

(declare-fun b!1165265 () Bool)

(declare-fun e!746642 () Bool)

(declare-fun e!746638 () Bool)

(assert (=> b!1165265 (= e!746642 e!746638)))

(declare-fun res!525973 () Bool)

(assert (=> b!1165265 (=> (not res!525973) (not e!746638))))

(declare-fun rulesInvariant!1573 (LexerInterface!1699 List!11531) Bool)

(assert (=> b!1165265 (= res!525973 (rulesInvariant!1573 Lexer!1697 (rules!9567 thiss!10527)))))

(declare-datatypes ((Unit!17595 0))(
  ( (Unit!17596) )
))
(declare-fun lt!398386 () Unit!17595)

(declare-fun lemmaInvariant!191 (PrintableTokens!694) Unit!17595)

(assert (=> b!1165265 (= lt!398386 (lemmaInvariant!191 thiss!10527))))

(declare-fun b!1165266 () Bool)

(declare-fun e!746647 () Bool)

(declare-fun lt!398384 () List!11530)

(assert (=> b!1165266 (= e!746647 (rulesProduceEachTokenIndividuallyList!565 Lexer!1697 (rules!9567 thiss!10527) (t!110255 lt!398384)))))

(declare-fun b!1165267 () Bool)

(declare-fun e!746640 () Bool)

(assert (=> b!1165267 (= e!746640 e!746647)))

(declare-fun res!525975 () Bool)

(assert (=> b!1165267 (=> (not res!525975) (not e!746647))))

(declare-fun rulesProduceIndividualToken!734 (LexerInterface!1699 List!11531 Token!3670) Bool)

(assert (=> b!1165267 (= res!525975 (rulesProduceIndividualToken!734 Lexer!1697 (rules!9567 thiss!10527) (h!16907 lt!398384)))))

(declare-fun b!1165268 () Bool)

(declare-fun e!746643 () Bool)

(declare-fun e!746644 () Bool)

(assert (=> b!1165268 (= e!746643 (= (rulesProduceEachTokenIndividuallyList!565 Lexer!1697 (rules!9567 thiss!10527) lt!398383) e!746644))))

(declare-fun res!525977 () Bool)

(assert (=> b!1165268 (=> res!525977 e!746644)))

(assert (=> b!1165268 (= res!525977 (not (is-Cons!11506 lt!398383)))))

(declare-fun b!1165269 () Bool)

(assert (=> b!1165269 (= e!746644 e!746645)))

(declare-fun res!525981 () Bool)

(assert (=> b!1165269 (=> (not res!525981) (not e!746645))))

(assert (=> b!1165269 (= res!525981 (rulesProduceIndividualToken!734 Lexer!1697 (rules!9567 thiss!10527) (h!16907 lt!398383)))))

(declare-fun b!1165270 () Bool)

(declare-fun tp!334164 () Bool)

(declare-fun e!746639 () Bool)

(declare-fun e!746648 () Bool)

(declare-fun inv!15147 (BalanceConc!7564) Bool)

(assert (=> b!1165270 (= e!746639 (and tp!334164 (inv!15147 (tokens!1621 thiss!10527)) e!746648))))

(declare-fun e!746646 () Bool)

(assert (=> b!1165271 (= e!746638 (not e!746646))))

(declare-fun res!525980 () Bool)

(assert (=> b!1165271 (=> res!525980 e!746646)))

(declare-fun lambda!47784 () Int)

(declare-fun forall!3016 (BalanceConc!7564 Int) Bool)

(assert (=> b!1165271 (= res!525980 (not (forall!3016 (tokens!1621 thiss!10527) lambda!47784)))))

(assert (=> b!1165271 (= (rulesProduceEachTokenIndividuallyList!565 Lexer!1697 (rules!9567 thiss!10527) lt!398384) e!746640)))

(declare-fun res!525983 () Bool)

(assert (=> b!1165271 (=> res!525983 e!746640)))

(assert (=> b!1165271 (= res!525983 (not (is-Cons!11506 lt!398384)))))

(declare-fun list!4235 (BalanceConc!7564) List!11530)

(assert (=> b!1165271 (= lt!398384 (list!4235 (tokens!1621 thiss!10527)))))

(declare-fun rulesProduceEachTokenIndividually!737 (LexerInterface!1699 List!11531 BalanceConc!7564) Bool)

(assert (=> b!1165271 (= (rulesProduceEachTokenIndividually!737 Lexer!1697 (rules!9567 thiss!10527) (tokens!1621 thiss!10527)) (forall!3016 (tokens!1621 thiss!10527) lambda!47784))))

(declare-fun res!525974 () Bool)

(assert (=> start!102276 (=> (not res!525974) (not e!746642))))

(declare-fun from!787 () Int)

(declare-fun to!267 () Int)

(assert (=> start!102276 (= res!525974 (and (<= 0 from!787) (<= from!787 to!267)))))

(assert (=> start!102276 e!746642))

(assert (=> start!102276 true))

(declare-fun inv!15148 (PrintableTokens!694) Bool)

(assert (=> start!102276 (and (inv!15148 thiss!10527) e!746639)))

(declare-fun b!1165272 () Bool)

(declare-fun tp!334163 () Bool)

(declare-fun inv!15149 (Conc!3771) Bool)

(assert (=> b!1165272 (= e!746648 (and (inv!15149 (c!194612 (tokens!1621 thiss!10527))) tp!334163))))

(declare-fun b!1165273 () Bool)

(declare-fun res!525979 () Bool)

(assert (=> b!1165273 (=> (not res!525979) (not e!746642))))

(declare-fun size!9057 (BalanceConc!7564) Int)

(assert (=> b!1165273 (= res!525979 (<= to!267 (size!9057 (tokens!1621 thiss!10527))))))

(declare-fun b!1165274 () Bool)

(declare-fun e!746641 () Bool)

(declare-fun lt!398382 () BalanceConc!7564)

(assert (=> b!1165274 (= e!746641 (forall!3016 lt!398382 lambda!47784))))

(declare-fun b!1165275 () Bool)

(assert (=> b!1165275 (= e!746646 e!746641)))

(declare-fun res!525978 () Bool)

(assert (=> b!1165275 (=> res!525978 e!746641)))

(declare-fun forall!3017 (List!11530 Int) Bool)

(assert (=> b!1165275 (= res!525978 (not (forall!3017 lt!398383 lambda!47784)))))

(assert (=> b!1165275 e!746643))

(declare-fun res!525976 () Bool)

(assert (=> b!1165275 (=> (not res!525976) (not e!746643))))

(assert (=> b!1165275 (= res!525976 (forall!3017 lt!398383 lambda!47784))))

(declare-fun lt!398381 () Unit!17595)

(declare-fun lemmaForallSubseq!148 (List!11530 List!11530 Int) Unit!17595)

(assert (=> b!1165275 (= lt!398381 (lemmaForallSubseq!148 lt!398383 lt!398384 lambda!47784))))

(assert (=> b!1165275 (= lt!398383 (list!4235 lt!398382))))

(declare-fun slice!305 (BalanceConc!7564 Int Int) BalanceConc!7564)

(assert (=> b!1165275 (= lt!398382 (slice!305 (tokens!1621 thiss!10527) from!787 to!267))))

(declare-fun subseq!256 (List!11530 List!11530) Bool)

(declare-fun slice!306 (List!11530 Int Int) List!11530)

(assert (=> b!1165275 (subseq!256 (slice!306 lt!398384 from!787 to!267) lt!398384)))

(declare-fun lt!398385 () Unit!17595)

(declare-fun lemmaSliceSubseq!97 (List!11530 Int Int) Unit!17595)

(assert (=> b!1165275 (= lt!398385 (lemmaSliceSubseq!97 lt!398384 from!787 to!267))))

(declare-fun b!1165276 () Bool)

(declare-fun res!525982 () Bool)

(assert (=> b!1165276 (=> (not res!525982) (not e!746643))))

(assert (=> b!1165276 (= res!525982 (= (rulesProduceEachTokenIndividually!737 Lexer!1697 (rules!9567 thiss!10527) lt!398382) (forall!3016 lt!398382 lambda!47784)))))

(assert (= (and start!102276 res!525974) b!1165273))

(assert (= (and b!1165273 res!525979) b!1165265))

(assert (= (and b!1165265 res!525973) b!1165271))

(assert (= (and b!1165271 (not res!525983)) b!1165267))

(assert (= (and b!1165267 res!525975) b!1165266))

(assert (= (and b!1165271 (not res!525980)) b!1165275))

(assert (= (and b!1165275 res!525976) b!1165276))

(assert (= (and b!1165276 res!525982) b!1165268))

(assert (= (and b!1165268 (not res!525977)) b!1165269))

(assert (= (and b!1165269 res!525981) b!1165264))

(assert (= (and b!1165275 (not res!525978)) b!1165274))

(assert (= b!1165270 b!1165272))

(assert (= start!102276 b!1165270))

(declare-fun m!1334803 () Bool)

(assert (=> b!1165272 m!1334803))

(declare-fun m!1334805 () Bool)

(assert (=> b!1165267 m!1334805))

(declare-fun m!1334807 () Bool)

(assert (=> b!1165268 m!1334807))

(declare-fun m!1334809 () Bool)

(assert (=> b!1165276 m!1334809))

(declare-fun m!1334811 () Bool)

(assert (=> b!1165276 m!1334811))

(assert (=> b!1165274 m!1334811))

(declare-fun m!1334813 () Bool)

(assert (=> start!102276 m!1334813))

(declare-fun m!1334815 () Bool)

(assert (=> b!1165273 m!1334815))

(declare-fun m!1334817 () Bool)

(assert (=> b!1165275 m!1334817))

(declare-fun m!1334819 () Bool)

(assert (=> b!1165275 m!1334819))

(declare-fun m!1334821 () Bool)

(assert (=> b!1165275 m!1334821))

(declare-fun m!1334823 () Bool)

(assert (=> b!1165275 m!1334823))

(assert (=> b!1165275 m!1334817))

(declare-fun m!1334825 () Bool)

(assert (=> b!1165275 m!1334825))

(declare-fun m!1334827 () Bool)

(assert (=> b!1165275 m!1334827))

(assert (=> b!1165275 m!1334819))

(declare-fun m!1334829 () Bool)

(assert (=> b!1165275 m!1334829))

(declare-fun m!1334831 () Bool)

(assert (=> b!1165270 m!1334831))

(declare-fun m!1334833 () Bool)

(assert (=> b!1165269 m!1334833))

(declare-fun m!1334835 () Bool)

(assert (=> b!1165264 m!1334835))

(declare-fun m!1334837 () Bool)

(assert (=> b!1165266 m!1334837))

(declare-fun m!1334839 () Bool)

(assert (=> b!1165271 m!1334839))

(declare-fun m!1334841 () Bool)

(assert (=> b!1165271 m!1334841))

(declare-fun m!1334843 () Bool)

(assert (=> b!1165271 m!1334843))

(declare-fun m!1334845 () Bool)

(assert (=> b!1165271 m!1334845))

(assert (=> b!1165271 m!1334841))

(declare-fun m!1334847 () Bool)

(assert (=> b!1165265 m!1334847))

(declare-fun m!1334849 () Bool)

(assert (=> b!1165265 m!1334849))

(push 1)

(assert (not b!1165268))

(assert (not b!1165266))

(assert (not b!1165272))

(assert (not start!102276))

(assert (not b!1165275))

(assert (not b!1165264))

(assert (not b!1165274))

(assert (not b!1165271))

(assert (not b!1165269))

(assert (not b!1165273))

(assert (not b!1165276))

(assert (not b!1165284))

(assert (not b!1165265))

(assert (not b!1165283))

(assert (not b!1165267))

(assert (not b!1165270))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun bs!284178 () Bool)

(declare-fun d!332547 () Bool)

(assert (= bs!284178 (and d!332547 b!1165271)))

(declare-fun lambda!47802 () Int)

(assert (=> bs!284178 (= lambda!47802 lambda!47784)))

(declare-fun b!1165345 () Bool)

(declare-fun e!746705 () Bool)

(assert (=> b!1165345 (= e!746705 true)))

(declare-fun b!1165344 () Bool)

(declare-fun e!746704 () Bool)

(assert (=> b!1165344 (= e!746704 e!746705)))

(declare-fun b!1165343 () Bool)

(declare-fun e!746703 () Bool)

(assert (=> b!1165343 (= e!746703 e!746704)))

(assert (=> d!332547 e!746703))

(assert (= b!1165344 b!1165345))

(assert (= b!1165343 b!1165344))

(assert (= (and d!332547 (is-Cons!11507 (rules!9567 thiss!10527))) b!1165343))

(declare-fun order!7037 () Int)

(declare-fun order!7035 () Int)

(declare-fun dynLambda!5062 (Int Int) Int)

(declare-fun dynLambda!5063 (Int Int) Int)

(assert (=> b!1165345 (< (dynLambda!5062 order!7035 (toValue!3105 (transformation!2004 (h!16908 (rules!9567 thiss!10527))))) (dynLambda!5063 order!7037 lambda!47802))))

(declare-fun order!7039 () Int)

(declare-fun dynLambda!5064 (Int Int) Int)

(assert (=> b!1165345 (< (dynLambda!5064 order!7039 (toChars!2964 (transformation!2004 (h!16908 (rules!9567 thiss!10527))))) (dynLambda!5063 order!7037 lambda!47802))))

(assert (=> d!332547 true))

(declare-fun e!746696 () Bool)

(assert (=> d!332547 e!746696))

(declare-fun res!526019 () Bool)

(assert (=> d!332547 (=> (not res!526019) (not e!746696))))

(declare-fun lt!398407 () Bool)

(assert (=> d!332547 (= res!526019 (= lt!398407 (forall!3017 (list!4235 lt!398382) lambda!47802)))))

(assert (=> d!332547 (= lt!398407 (forall!3016 lt!398382 lambda!47802))))

(declare-fun isEmpty!6999 (List!11531) Bool)

(assert (=> d!332547 (not (isEmpty!6999 (rules!9567 thiss!10527)))))

(assert (=> d!332547 (= (rulesProduceEachTokenIndividually!737 Lexer!1697 (rules!9567 thiss!10527) lt!398382) lt!398407)))

(declare-fun b!1165334 () Bool)

(assert (=> b!1165334 (= e!746696 (= lt!398407 (rulesProduceEachTokenIndividuallyList!565 Lexer!1697 (rules!9567 thiss!10527) (list!4235 lt!398382))))))

(assert (= (and d!332547 res!526019) b!1165334))

(assert (=> d!332547 m!1334825))

(assert (=> d!332547 m!1334825))

(declare-fun m!1334899 () Bool)

(assert (=> d!332547 m!1334899))

(declare-fun m!1334901 () Bool)

(assert (=> d!332547 m!1334901))

(declare-fun m!1334903 () Bool)

(assert (=> d!332547 m!1334903))

(assert (=> b!1165334 m!1334825))

(assert (=> b!1165334 m!1334825))

(declare-fun m!1334905 () Bool)

(assert (=> b!1165334 m!1334905))

(assert (=> b!1165276 d!332547))

(declare-fun d!332551 () Bool)

(declare-fun lt!398410 () Bool)

(assert (=> d!332551 (= lt!398410 (forall!3017 (list!4235 lt!398382) lambda!47784))))

(declare-fun forall!3020 (Conc!3771 Int) Bool)

(assert (=> d!332551 (= lt!398410 (forall!3020 (c!194612 lt!398382) lambda!47784))))

(assert (=> d!332551 (= (forall!3016 lt!398382 lambda!47784) lt!398410)))

(declare-fun bs!284179 () Bool)

(assert (= bs!284179 d!332551))

(assert (=> bs!284179 m!1334825))

(assert (=> bs!284179 m!1334825))

(declare-fun m!1334907 () Bool)

(assert (=> bs!284179 m!1334907))

(declare-fun m!1334909 () Bool)

(assert (=> bs!284179 m!1334909))

(assert (=> b!1165276 d!332551))

(declare-fun d!332553 () Bool)

(declare-fun res!526022 () Bool)

(declare-fun e!746708 () Bool)

(assert (=> d!332553 (=> (not res!526022) (not e!746708))))

(declare-fun rulesValid!700 (LexerInterface!1699 List!11531) Bool)

(assert (=> d!332553 (= res!526022 (rulesValid!700 Lexer!1697 (rules!9567 thiss!10527)))))

(assert (=> d!332553 (= (rulesInvariant!1573 Lexer!1697 (rules!9567 thiss!10527)) e!746708)))

(declare-fun b!1165350 () Bool)

(declare-datatypes ((List!11536 0))(
  ( (Nil!11512) (Cons!11512 (h!16913 String!13940) (t!110287 List!11536)) )
))
(declare-fun noDuplicateTag!700 (LexerInterface!1699 List!11531 List!11536) Bool)

(assert (=> b!1165350 (= e!746708 (noDuplicateTag!700 Lexer!1697 (rules!9567 thiss!10527) Nil!11512))))

(assert (= (and d!332553 res!526022) b!1165350))

(declare-fun m!1334911 () Bool)

(assert (=> d!332553 m!1334911))

(declare-fun m!1334913 () Bool)

(assert (=> b!1165350 m!1334913))

(assert (=> b!1165265 d!332553))

(declare-fun d!332555 () Bool)

(declare-fun e!746711 () Bool)

(assert (=> d!332555 e!746711))

(declare-fun res!526027 () Bool)

(assert (=> d!332555 (=> (not res!526027) (not e!746711))))

(assert (=> d!332555 (= res!526027 (rulesInvariant!1573 Lexer!1697 (rules!9567 thiss!10527)))))

(declare-fun Unit!17600 () Unit!17595)

(assert (=> d!332555 (= (lemmaInvariant!191 thiss!10527) Unit!17600)))

(declare-fun b!1165355 () Bool)

(declare-fun res!526028 () Bool)

(assert (=> b!1165355 (=> (not res!526028) (not e!746711))))

(assert (=> b!1165355 (= res!526028 (rulesProduceEachTokenIndividually!737 Lexer!1697 (rules!9567 thiss!10527) (tokens!1621 thiss!10527)))))

(declare-fun b!1165356 () Bool)

(declare-fun separableTokens!137 (LexerInterface!1699 BalanceConc!7564 List!11531) Bool)

(assert (=> b!1165356 (= e!746711 (separableTokens!137 Lexer!1697 (tokens!1621 thiss!10527) (rules!9567 thiss!10527)))))

(assert (= (and d!332555 res!526027) b!1165355))

(assert (= (and b!1165355 res!526028) b!1165356))

(assert (=> d!332555 m!1334847))

(assert (=> b!1165355 m!1334839))

(declare-fun m!1334915 () Bool)

(assert (=> b!1165356 m!1334915))

(assert (=> b!1165265 d!332555))

(declare-fun d!332557 () Bool)

(declare-fun res!526038 () Bool)

(declare-fun e!746726 () Bool)

(assert (=> d!332557 (=> (not res!526038) (not e!746726))))

(assert (=> d!332557 (= res!526038 (not (isEmpty!6999 (rules!9567 thiss!10527))))))

(assert (=> d!332557 (= (inv!15148 thiss!10527) e!746726)))

(declare-fun b!1165379 () Bool)

(declare-fun res!526039 () Bool)

(assert (=> b!1165379 (=> (not res!526039) (not e!746726))))

(assert (=> b!1165379 (= res!526039 (rulesInvariant!1573 Lexer!1697 (rules!9567 thiss!10527)))))

(declare-fun b!1165380 () Bool)

(declare-fun res!526040 () Bool)

(assert (=> b!1165380 (=> (not res!526040) (not e!746726))))

(assert (=> b!1165380 (= res!526040 (rulesProduceEachTokenIndividually!737 Lexer!1697 (rules!9567 thiss!10527) (tokens!1621 thiss!10527)))))

(declare-fun b!1165381 () Bool)

(assert (=> b!1165381 (= e!746726 (separableTokens!137 Lexer!1697 (tokens!1621 thiss!10527) (rules!9567 thiss!10527)))))

(assert (= (and d!332557 res!526038) b!1165379))

(assert (= (and b!1165379 res!526039) b!1165380))

(assert (= (and b!1165380 res!526040) b!1165381))

(assert (=> d!332557 m!1334903))

(assert (=> b!1165379 m!1334847))

(assert (=> b!1165380 m!1334839))

(assert (=> b!1165381 m!1334915))

(assert (=> start!102276 d!332557))

(declare-fun bs!284188 () Bool)

(declare-fun d!332565 () Bool)

(assert (= bs!284188 (and d!332565 b!1165271)))

(declare-fun lambda!47813 () Int)

(assert (=> bs!284188 (= lambda!47813 lambda!47784)))

(declare-fun bs!284189 () Bool)

(assert (= bs!284189 (and d!332565 d!332547)))

(assert (=> bs!284189 (= lambda!47813 lambda!47802)))

(declare-fun b!1165429 () Bool)

(declare-fun e!746771 () Bool)

(assert (=> b!1165429 (= e!746771 true)))

(declare-fun b!1165428 () Bool)

(declare-fun e!746770 () Bool)

(assert (=> b!1165428 (= e!746770 e!746771)))

(declare-fun b!1165427 () Bool)

(declare-fun e!746769 () Bool)

(assert (=> b!1165427 (= e!746769 e!746770)))

(assert (=> d!332565 e!746769))

(assert (= b!1165428 b!1165429))

(assert (= b!1165427 b!1165428))

(assert (= (and d!332565 (is-Cons!11507 (rules!9567 thiss!10527))) b!1165427))

(assert (=> b!1165429 (< (dynLambda!5062 order!7035 (toValue!3105 (transformation!2004 (h!16908 (rules!9567 thiss!10527))))) (dynLambda!5063 order!7037 lambda!47813))))

(assert (=> b!1165429 (< (dynLambda!5064 order!7039 (toChars!2964 (transformation!2004 (h!16908 (rules!9567 thiss!10527))))) (dynLambda!5063 order!7037 lambda!47813))))

(assert (=> d!332565 true))

(declare-fun lt!398431 () Bool)

(assert (=> d!332565 (= lt!398431 (forall!3017 (t!110255 lt!398383) lambda!47813))))

(declare-fun e!746767 () Bool)

(assert (=> d!332565 (= lt!398431 e!746767)))

(declare-fun res!526082 () Bool)

(assert (=> d!332565 (=> res!526082 e!746767)))

(assert (=> d!332565 (= res!526082 (not (is-Cons!11506 (t!110255 lt!398383))))))

(assert (=> d!332565 (not (isEmpty!6999 (rules!9567 thiss!10527)))))

(assert (=> d!332565 (= (rulesProduceEachTokenIndividuallyList!565 Lexer!1697 (rules!9567 thiss!10527) (t!110255 lt!398383)) lt!398431)))

(declare-fun b!1165425 () Bool)

(declare-fun e!746768 () Bool)

(assert (=> b!1165425 (= e!746767 e!746768)))

(declare-fun res!526081 () Bool)

(assert (=> b!1165425 (=> (not res!526081) (not e!746768))))

(assert (=> b!1165425 (= res!526081 (rulesProduceIndividualToken!734 Lexer!1697 (rules!9567 thiss!10527) (h!16907 (t!110255 lt!398383))))))

(declare-fun b!1165426 () Bool)

(assert (=> b!1165426 (= e!746768 (rulesProduceEachTokenIndividuallyList!565 Lexer!1697 (rules!9567 thiss!10527) (t!110255 (t!110255 lt!398383))))))

(assert (= (and d!332565 (not res!526082)) b!1165425))

(assert (= (and b!1165425 res!526081) b!1165426))

(declare-fun m!1334965 () Bool)

(assert (=> d!332565 m!1334965))

(assert (=> d!332565 m!1334903))

(declare-fun m!1334967 () Bool)

(assert (=> b!1165425 m!1334967))

(declare-fun m!1334969 () Bool)

(assert (=> b!1165426 m!1334969))

(assert (=> b!1165264 d!332565))

(declare-fun d!332583 () Bool)

(assert (=> d!332583 (subseq!256 (slice!306 lt!398384 from!787 to!267) lt!398384)))

(declare-fun lt!398434 () Unit!17595)

(declare-fun choose!7514 (List!11530 Int Int) Unit!17595)

(assert (=> d!332583 (= lt!398434 (choose!7514 lt!398384 from!787 to!267))))

(declare-fun e!746774 () Bool)

(assert (=> d!332583 e!746774))

(declare-fun res!526085 () Bool)

(assert (=> d!332583 (=> (not res!526085) (not e!746774))))

(assert (=> d!332583 (= res!526085 (and (>= from!787 0) (>= to!267 from!787)))))

(assert (=> d!332583 (= (lemmaSliceSubseq!97 lt!398384 from!787 to!267) lt!398434)))

(declare-fun b!1165432 () Bool)

(declare-fun size!9060 (List!11530) Int)

(assert (=> b!1165432 (= e!746774 (<= to!267 (size!9060 lt!398384)))))

(assert (= (and d!332583 res!526085) b!1165432))

(assert (=> d!332583 m!1334819))

(assert (=> d!332583 m!1334819))

(assert (=> d!332583 m!1334821))

(declare-fun m!1334971 () Bool)

(assert (=> d!332583 m!1334971))

(declare-fun m!1334973 () Bool)

(assert (=> b!1165432 m!1334973))

(assert (=> b!1165275 d!332583))

(declare-fun d!332585 () Bool)

(assert (=> d!332585 (forall!3017 lt!398383 lambda!47784)))

(declare-fun lt!398437 () Unit!17595)

(declare-fun choose!7515 (List!11530 List!11530 Int) Unit!17595)

(assert (=> d!332585 (= lt!398437 (choose!7515 lt!398383 lt!398384 lambda!47784))))

(assert (=> d!332585 (forall!3017 lt!398384 lambda!47784)))

(assert (=> d!332585 (= (lemmaForallSubseq!148 lt!398383 lt!398384 lambda!47784) lt!398437)))

(declare-fun bs!284190 () Bool)

(assert (= bs!284190 d!332585))

(assert (=> bs!284190 m!1334817))

(declare-fun m!1334975 () Bool)

(assert (=> bs!284190 m!1334975))

(declare-fun m!1334977 () Bool)

(assert (=> bs!284190 m!1334977))

(assert (=> b!1165275 d!332585))

(declare-fun d!332587 () Bool)

(declare-fun e!746780 () Bool)

(assert (=> d!332587 e!746780))

(declare-fun res!526092 () Bool)

(assert (=> d!332587 (=> (not res!526092) (not e!746780))))

(declare-fun isBalanced!1058 (Conc!3771) Bool)

(declare-fun slice!309 (Conc!3771 Int Int) Conc!3771)

(assert (=> d!332587 (= res!526092 (isBalanced!1058 (slice!309 (c!194612 (tokens!1621 thiss!10527)) from!787 to!267)))))

(declare-fun lt!398440 () BalanceConc!7564)

(assert (=> d!332587 (= lt!398440 (BalanceConc!7565 (slice!309 (c!194612 (tokens!1621 thiss!10527)) from!787 to!267)))))

(declare-fun e!746779 () Bool)

(assert (=> d!332587 e!746779))

(declare-fun res!526094 () Bool)

(assert (=> d!332587 (=> (not res!526094) (not e!746779))))

(assert (=> d!332587 (= res!526094 (and (<= 0 from!787) (<= from!787 to!267)))))

(assert (=> d!332587 (= (slice!305 (tokens!1621 thiss!10527) from!787 to!267) lt!398440)))

(declare-fun b!1165439 () Bool)

(declare-fun res!526093 () Bool)

(assert (=> b!1165439 (=> (not res!526093) (not e!746779))))

(assert (=> b!1165439 (= res!526093 (<= to!267 (size!9057 (tokens!1621 thiss!10527))))))

(declare-fun b!1165440 () Bool)

(assert (=> b!1165440 (= e!746779 (isBalanced!1058 (c!194612 (tokens!1621 thiss!10527))))))

(declare-fun b!1165441 () Bool)

(assert (=> b!1165441 (= e!746780 (= (list!4235 lt!398440) (slice!306 (list!4235 (tokens!1621 thiss!10527)) from!787 to!267)))))

(assert (= (and d!332587 res!526094) b!1165439))

(assert (= (and b!1165439 res!526093) b!1165440))

(assert (= (and d!332587 res!526092) b!1165441))

(declare-fun m!1334979 () Bool)

(assert (=> d!332587 m!1334979))

(assert (=> d!332587 m!1334979))

(declare-fun m!1334981 () Bool)

(assert (=> d!332587 m!1334981))

(assert (=> b!1165439 m!1334815))

(declare-fun m!1334983 () Bool)

(assert (=> b!1165440 m!1334983))

(declare-fun m!1334985 () Bool)

(assert (=> b!1165441 m!1334985))

(assert (=> b!1165441 m!1334845))

(assert (=> b!1165441 m!1334845))

(declare-fun m!1334987 () Bool)

(assert (=> b!1165441 m!1334987))

(assert (=> b!1165275 d!332587))

(declare-fun d!332589 () Bool)

(declare-fun res!526099 () Bool)

(declare-fun e!746785 () Bool)

(assert (=> d!332589 (=> res!526099 e!746785)))

(assert (=> d!332589 (= res!526099 (is-Nil!11506 lt!398383))))

(assert (=> d!332589 (= (forall!3017 lt!398383 lambda!47784) e!746785)))

(declare-fun b!1165446 () Bool)

(declare-fun e!746786 () Bool)

(assert (=> b!1165446 (= e!746785 e!746786)))

(declare-fun res!526100 () Bool)

(assert (=> b!1165446 (=> (not res!526100) (not e!746786))))

(declare-fun dynLambda!5065 (Int Token!3670) Bool)

(assert (=> b!1165446 (= res!526100 (dynLambda!5065 lambda!47784 (h!16907 lt!398383)))))

(declare-fun b!1165447 () Bool)

(assert (=> b!1165447 (= e!746786 (forall!3017 (t!110255 lt!398383) lambda!47784))))

(assert (= (and d!332589 (not res!526099)) b!1165446))

(assert (= (and b!1165446 res!526100) b!1165447))

(declare-fun b_lambda!34721 () Bool)

(assert (=> (not b_lambda!34721) (not b!1165446)))

(declare-fun m!1334989 () Bool)

(assert (=> b!1165446 m!1334989))

(declare-fun m!1334991 () Bool)

(assert (=> b!1165447 m!1334991))

(assert (=> b!1165275 d!332589))

(declare-fun d!332591 () Bool)

(declare-fun list!4237 (Conc!3771) List!11530)

(assert (=> d!332591 (= (list!4235 lt!398382) (list!4237 (c!194612 lt!398382)))))

(declare-fun bs!284191 () Bool)

(assert (= bs!284191 d!332591))

(declare-fun m!1334993 () Bool)

(assert (=> bs!284191 m!1334993))

(assert (=> b!1165275 d!332591))

(declare-fun d!332593 () Bool)

(declare-fun take!70 (List!11530 Int) List!11530)

(declare-fun drop!480 (List!11530 Int) List!11530)

(assert (=> d!332593 (= (slice!306 lt!398384 from!787 to!267) (take!70 (drop!480 lt!398384 from!787) (- to!267 from!787)))))

(declare-fun bs!284192 () Bool)

(assert (= bs!284192 d!332593))

(declare-fun m!1334995 () Bool)

(assert (=> bs!284192 m!1334995))

(assert (=> bs!284192 m!1334995))

(declare-fun m!1334997 () Bool)

(assert (=> bs!284192 m!1334997))

(assert (=> b!1165275 d!332593))

(declare-fun b!1165456 () Bool)

(declare-fun e!746797 () Bool)

(declare-fun e!746796 () Bool)

(assert (=> b!1165456 (= e!746797 e!746796)))

(declare-fun res!526110 () Bool)

(assert (=> b!1165456 (=> (not res!526110) (not e!746796))))

(assert (=> b!1165456 (= res!526110 (is-Cons!11506 lt!398384))))

(declare-fun b!1165457 () Bool)

(declare-fun e!746795 () Bool)

(assert (=> b!1165457 (= e!746796 e!746795)))

(declare-fun res!526112 () Bool)

(assert (=> b!1165457 (=> res!526112 e!746795)))

(declare-fun e!746798 () Bool)

(assert (=> b!1165457 (= res!526112 e!746798)))

(declare-fun res!526111 () Bool)

(assert (=> b!1165457 (=> (not res!526111) (not e!746798))))

(assert (=> b!1165457 (= res!526111 (= (h!16907 (slice!306 lt!398384 from!787 to!267)) (h!16907 lt!398384)))))

(declare-fun d!332595 () Bool)

(declare-fun res!526109 () Bool)

(assert (=> d!332595 (=> res!526109 e!746797)))

(assert (=> d!332595 (= res!526109 (is-Nil!11506 (slice!306 lt!398384 from!787 to!267)))))

(assert (=> d!332595 (= (subseq!256 (slice!306 lt!398384 from!787 to!267) lt!398384) e!746797)))

(declare-fun b!1165458 () Bool)

(assert (=> b!1165458 (= e!746798 (subseq!256 (t!110255 (slice!306 lt!398384 from!787 to!267)) (t!110255 lt!398384)))))

(declare-fun b!1165459 () Bool)

(assert (=> b!1165459 (= e!746795 (subseq!256 (slice!306 lt!398384 from!787 to!267) (t!110255 lt!398384)))))

(assert (= (and d!332595 (not res!526109)) b!1165456))

(assert (= (and b!1165456 res!526110) b!1165457))

(assert (= (and b!1165457 res!526111) b!1165458))

(assert (= (and b!1165457 (not res!526112)) b!1165459))

(declare-fun m!1334999 () Bool)

(assert (=> b!1165458 m!1334999))

(assert (=> b!1165459 m!1334819))

(declare-fun m!1335001 () Bool)

(assert (=> b!1165459 m!1335001))

(assert (=> b!1165275 d!332595))

(assert (=> b!1165274 d!332551))

(declare-fun d!332597 () Bool)

(declare-fun lt!398443 () Int)

(assert (=> d!332597 (= lt!398443 (size!9060 (list!4235 (tokens!1621 thiss!10527))))))

(declare-fun size!9061 (Conc!3771) Int)

(assert (=> d!332597 (= lt!398443 (size!9061 (c!194612 (tokens!1621 thiss!10527))))))

(assert (=> d!332597 (= (size!9057 (tokens!1621 thiss!10527)) lt!398443)))

(declare-fun bs!284193 () Bool)

(assert (= bs!284193 d!332597))

(assert (=> bs!284193 m!1334845))

(assert (=> bs!284193 m!1334845))

(declare-fun m!1335003 () Bool)

(assert (=> bs!284193 m!1335003))

(declare-fun m!1335005 () Bool)

(assert (=> bs!284193 m!1335005))

(assert (=> b!1165273 d!332597))

(declare-fun d!332599 () Bool)

(declare-fun c!194620 () Bool)

(assert (=> d!332599 (= c!194620 (is-Node!3771 (c!194612 (tokens!1621 thiss!10527))))))

(declare-fun e!746803 () Bool)

(assert (=> d!332599 (= (inv!15149 (c!194612 (tokens!1621 thiss!10527))) e!746803)))

(declare-fun b!1165466 () Bool)

(declare-fun inv!15153 (Conc!3771) Bool)

(assert (=> b!1165466 (= e!746803 (inv!15153 (c!194612 (tokens!1621 thiss!10527))))))

(declare-fun b!1165467 () Bool)

(declare-fun e!746804 () Bool)

(assert (=> b!1165467 (= e!746803 e!746804)))

(declare-fun res!526115 () Bool)

(assert (=> b!1165467 (= res!526115 (not (is-Leaf!5784 (c!194612 (tokens!1621 thiss!10527)))))))

(assert (=> b!1165467 (=> res!526115 e!746804)))

(declare-fun b!1165468 () Bool)

(declare-fun inv!15154 (Conc!3771) Bool)

(assert (=> b!1165468 (= e!746804 (inv!15154 (c!194612 (tokens!1621 thiss!10527))))))

(assert (= (and d!332599 c!194620) b!1165466))

(assert (= (and d!332599 (not c!194620)) b!1165467))

(assert (= (and b!1165467 (not res!526115)) b!1165468))

(declare-fun m!1335007 () Bool)

(assert (=> b!1165466 m!1335007))

(declare-fun m!1335009 () Bool)

(assert (=> b!1165468 m!1335009))

(assert (=> b!1165272 d!332599))

(declare-fun d!332601 () Bool)

(declare-fun lt!398444 () Bool)

(assert (=> d!332601 (= lt!398444 (forall!3017 (list!4235 (tokens!1621 thiss!10527)) lambda!47784))))

(assert (=> d!332601 (= lt!398444 (forall!3020 (c!194612 (tokens!1621 thiss!10527)) lambda!47784))))

(assert (=> d!332601 (= (forall!3016 (tokens!1621 thiss!10527) lambda!47784) lt!398444)))

(declare-fun bs!284194 () Bool)

(assert (= bs!284194 d!332601))

(assert (=> bs!284194 m!1334845))

(assert (=> bs!284194 m!1334845))

(declare-fun m!1335011 () Bool)

(assert (=> bs!284194 m!1335011))

(declare-fun m!1335013 () Bool)

(assert (=> bs!284194 m!1335013))

(assert (=> b!1165271 d!332601))

(declare-fun bs!284195 () Bool)

(declare-fun d!332603 () Bool)

(assert (= bs!284195 (and d!332603 b!1165271)))

(declare-fun lambda!47814 () Int)

(assert (=> bs!284195 (= lambda!47814 lambda!47784)))

(declare-fun bs!284196 () Bool)

(assert (= bs!284196 (and d!332603 d!332547)))

(assert (=> bs!284196 (= lambda!47814 lambda!47802)))

(declare-fun bs!284197 () Bool)

(assert (= bs!284197 (and d!332603 d!332565)))

(assert (=> bs!284197 (= lambda!47814 lambda!47813)))

(declare-fun b!1165472 () Bool)

(declare-fun e!746808 () Bool)

(assert (=> b!1165472 (= e!746808 true)))

(declare-fun b!1165471 () Bool)

(declare-fun e!746807 () Bool)

(assert (=> b!1165471 (= e!746807 e!746808)))

(declare-fun b!1165470 () Bool)

(declare-fun e!746806 () Bool)

(assert (=> b!1165470 (= e!746806 e!746807)))

(assert (=> d!332603 e!746806))

(assert (= b!1165471 b!1165472))

(assert (= b!1165470 b!1165471))

(assert (= (and d!332603 (is-Cons!11507 (rules!9567 thiss!10527))) b!1165470))

(assert (=> b!1165472 (< (dynLambda!5062 order!7035 (toValue!3105 (transformation!2004 (h!16908 (rules!9567 thiss!10527))))) (dynLambda!5063 order!7037 lambda!47814))))

(assert (=> b!1165472 (< (dynLambda!5064 order!7039 (toChars!2964 (transformation!2004 (h!16908 (rules!9567 thiss!10527))))) (dynLambda!5063 order!7037 lambda!47814))))

(assert (=> d!332603 true))

(declare-fun e!746805 () Bool)

(assert (=> d!332603 e!746805))

(declare-fun res!526116 () Bool)

(assert (=> d!332603 (=> (not res!526116) (not e!746805))))

(declare-fun lt!398445 () Bool)

(assert (=> d!332603 (= res!526116 (= lt!398445 (forall!3017 (list!4235 (tokens!1621 thiss!10527)) lambda!47814)))))

(assert (=> d!332603 (= lt!398445 (forall!3016 (tokens!1621 thiss!10527) lambda!47814))))

(assert (=> d!332603 (not (isEmpty!6999 (rules!9567 thiss!10527)))))

(assert (=> d!332603 (= (rulesProduceEachTokenIndividually!737 Lexer!1697 (rules!9567 thiss!10527) (tokens!1621 thiss!10527)) lt!398445)))

(declare-fun b!1165469 () Bool)

(assert (=> b!1165469 (= e!746805 (= lt!398445 (rulesProduceEachTokenIndividuallyList!565 Lexer!1697 (rules!9567 thiss!10527) (list!4235 (tokens!1621 thiss!10527)))))))

(assert (= (and d!332603 res!526116) b!1165469))

(assert (=> d!332603 m!1334845))

(assert (=> d!332603 m!1334845))

(declare-fun m!1335015 () Bool)

(assert (=> d!332603 m!1335015))

(declare-fun m!1335017 () Bool)

(assert (=> d!332603 m!1335017))

(assert (=> d!332603 m!1334903))

(assert (=> b!1165469 m!1334845))

(assert (=> b!1165469 m!1334845))

(declare-fun m!1335019 () Bool)

(assert (=> b!1165469 m!1335019))

(assert (=> b!1165271 d!332603))

(declare-fun d!332605 () Bool)

(assert (=> d!332605 (= (list!4235 (tokens!1621 thiss!10527)) (list!4237 (c!194612 (tokens!1621 thiss!10527))))))

(declare-fun bs!284198 () Bool)

(assert (= bs!284198 d!332605))

(declare-fun m!1335021 () Bool)

(assert (=> bs!284198 m!1335021))

(assert (=> b!1165271 d!332605))

(declare-fun bs!284199 () Bool)

(declare-fun d!332607 () Bool)

(assert (= bs!284199 (and d!332607 b!1165271)))

(declare-fun lambda!47815 () Int)

(assert (=> bs!284199 (= lambda!47815 lambda!47784)))

(declare-fun bs!284200 () Bool)

(assert (= bs!284200 (and d!332607 d!332547)))

(assert (=> bs!284200 (= lambda!47815 lambda!47802)))

(declare-fun bs!284201 () Bool)

(assert (= bs!284201 (and d!332607 d!332565)))

(assert (=> bs!284201 (= lambda!47815 lambda!47813)))

(declare-fun bs!284202 () Bool)

(assert (= bs!284202 (and d!332607 d!332603)))

(assert (=> bs!284202 (= lambda!47815 lambda!47814)))

(declare-fun b!1165477 () Bool)

(declare-fun e!746813 () Bool)

(assert (=> b!1165477 (= e!746813 true)))

(declare-fun b!1165476 () Bool)

(declare-fun e!746812 () Bool)

(assert (=> b!1165476 (= e!746812 e!746813)))

(declare-fun b!1165475 () Bool)

(declare-fun e!746811 () Bool)

(assert (=> b!1165475 (= e!746811 e!746812)))

(assert (=> d!332607 e!746811))

(assert (= b!1165476 b!1165477))

(assert (= b!1165475 b!1165476))

(assert (= (and d!332607 (is-Cons!11507 (rules!9567 thiss!10527))) b!1165475))

(assert (=> b!1165477 (< (dynLambda!5062 order!7035 (toValue!3105 (transformation!2004 (h!16908 (rules!9567 thiss!10527))))) (dynLambda!5063 order!7037 lambda!47815))))

(assert (=> b!1165477 (< (dynLambda!5064 order!7039 (toChars!2964 (transformation!2004 (h!16908 (rules!9567 thiss!10527))))) (dynLambda!5063 order!7037 lambda!47815))))

(assert (=> d!332607 true))

(declare-fun lt!398446 () Bool)

(assert (=> d!332607 (= lt!398446 (forall!3017 lt!398384 lambda!47815))))

(declare-fun e!746809 () Bool)

(assert (=> d!332607 (= lt!398446 e!746809)))

(declare-fun res!526118 () Bool)

(assert (=> d!332607 (=> res!526118 e!746809)))

(assert (=> d!332607 (= res!526118 (not (is-Cons!11506 lt!398384)))))

(assert (=> d!332607 (not (isEmpty!6999 (rules!9567 thiss!10527)))))

(assert (=> d!332607 (= (rulesProduceEachTokenIndividuallyList!565 Lexer!1697 (rules!9567 thiss!10527) lt!398384) lt!398446)))

(declare-fun b!1165473 () Bool)

(declare-fun e!746810 () Bool)

(assert (=> b!1165473 (= e!746809 e!746810)))

(declare-fun res!526117 () Bool)

(assert (=> b!1165473 (=> (not res!526117) (not e!746810))))

(assert (=> b!1165473 (= res!526117 (rulesProduceIndividualToken!734 Lexer!1697 (rules!9567 thiss!10527) (h!16907 lt!398384)))))

(declare-fun b!1165474 () Bool)

(assert (=> b!1165474 (= e!746810 (rulesProduceEachTokenIndividuallyList!565 Lexer!1697 (rules!9567 thiss!10527) (t!110255 lt!398384)))))

(assert (= (and d!332607 (not res!526118)) b!1165473))

(assert (= (and b!1165473 res!526117) b!1165474))

(declare-fun m!1335023 () Bool)

(assert (=> d!332607 m!1335023))

(assert (=> d!332607 m!1334903))

(assert (=> b!1165473 m!1334805))

(assert (=> b!1165474 m!1334837))

(assert (=> b!1165271 d!332607))

(declare-fun d!332609 () Bool)

(assert (=> d!332609 (= (inv!15147 (tokens!1621 thiss!10527)) (isBalanced!1058 (c!194612 (tokens!1621 thiss!10527))))))

(declare-fun bs!284203 () Bool)

(assert (= bs!284203 d!332609))

(assert (=> bs!284203 m!1334983))

(assert (=> b!1165270 d!332609))

(declare-fun d!332611 () Bool)

(declare-fun lt!398451 () Bool)

(declare-fun e!746822 () Bool)

(assert (=> d!332611 (= lt!398451 e!746822)))

(declare-fun res!526134 () Bool)

(assert (=> d!332611 (=> (not res!526134) (not e!746822))))

(declare-datatypes ((tuple2!12018 0))(
  ( (tuple2!12019 (_1!6856 BalanceConc!7564) (_2!6856 BalanceConc!7562)) )
))
(declare-fun lex!702 (LexerInterface!1699 List!11531 BalanceConc!7562) tuple2!12018)

(declare-fun print!639 (LexerInterface!1699 BalanceConc!7564) BalanceConc!7562)

(declare-fun singletonSeq!665 (Token!3670) BalanceConc!7564)

(assert (=> d!332611 (= res!526134 (= (list!4235 (_1!6856 (lex!702 Lexer!1697 (rules!9567 thiss!10527) (print!639 Lexer!1697 (singletonSeq!665 (h!16907 lt!398383)))))) (list!4235 (singletonSeq!665 (h!16907 lt!398383)))))))

(declare-fun e!746821 () Bool)

(assert (=> d!332611 (= lt!398451 e!746821)))

(declare-fun res!526135 () Bool)

(assert (=> d!332611 (=> (not res!526135) (not e!746821))))

(declare-fun lt!398452 () tuple2!12018)

(assert (=> d!332611 (= res!526135 (= (size!9057 (_1!6856 lt!398452)) 1))))

(assert (=> d!332611 (= lt!398452 (lex!702 Lexer!1697 (rules!9567 thiss!10527) (print!639 Lexer!1697 (singletonSeq!665 (h!16907 lt!398383)))))))

(assert (=> d!332611 (not (isEmpty!6999 (rules!9567 thiss!10527)))))

(assert (=> d!332611 (= (rulesProduceIndividualToken!734 Lexer!1697 (rules!9567 thiss!10527) (h!16907 lt!398383)) lt!398451)))

(declare-fun b!1165493 () Bool)

(declare-fun res!526136 () Bool)

(assert (=> b!1165493 (=> (not res!526136) (not e!746821))))

(declare-fun apply!2476 (BalanceConc!7564 Int) Token!3670)

(assert (=> b!1165493 (= res!526136 (= (apply!2476 (_1!6856 lt!398452) 0) (h!16907 lt!398383)))))

(declare-fun b!1165494 () Bool)

(declare-fun isEmpty!7000 (BalanceConc!7562) Bool)

(assert (=> b!1165494 (= e!746821 (isEmpty!7000 (_2!6856 lt!398452)))))

(declare-fun b!1165495 () Bool)

(assert (=> b!1165495 (= e!746822 (isEmpty!7000 (_2!6856 (lex!702 Lexer!1697 (rules!9567 thiss!10527) (print!639 Lexer!1697 (singletonSeq!665 (h!16907 lt!398383)))))))))

(assert (= (and d!332611 res!526135) b!1165493))

(assert (= (and b!1165493 res!526136) b!1165494))

(assert (= (and d!332611 res!526134) b!1165495))

(declare-fun m!1335027 () Bool)

(assert (=> d!332611 m!1335027))

(declare-fun m!1335029 () Bool)

(assert (=> d!332611 m!1335029))

(declare-fun m!1335031 () Bool)

(assert (=> d!332611 m!1335031))

(assert (=> d!332611 m!1335029))

(assert (=> d!332611 m!1334903))

(assert (=> d!332611 m!1335029))

(declare-fun m!1335033 () Bool)

(assert (=> d!332611 m!1335033))

(assert (=> d!332611 m!1335031))

(declare-fun m!1335035 () Bool)

(assert (=> d!332611 m!1335035))

(declare-fun m!1335037 () Bool)

(assert (=> d!332611 m!1335037))

(declare-fun m!1335039 () Bool)

(assert (=> b!1165493 m!1335039))

(declare-fun m!1335041 () Bool)

(assert (=> b!1165494 m!1335041))

(assert (=> b!1165495 m!1335029))

(assert (=> b!1165495 m!1335029))

(assert (=> b!1165495 m!1335031))

(assert (=> b!1165495 m!1335031))

(assert (=> b!1165495 m!1335035))

(declare-fun m!1335043 () Bool)

(assert (=> b!1165495 m!1335043))

(assert (=> b!1165269 d!332611))

(declare-fun bs!284205 () Bool)

(declare-fun d!332617 () Bool)

(assert (= bs!284205 (and d!332617 d!332603)))

(declare-fun lambda!47816 () Int)

(assert (=> bs!284205 (= lambda!47816 lambda!47814)))

(declare-fun bs!284206 () Bool)

(assert (= bs!284206 (and d!332617 d!332565)))

(assert (=> bs!284206 (= lambda!47816 lambda!47813)))

(declare-fun bs!284207 () Bool)

(assert (= bs!284207 (and d!332617 d!332607)))

(assert (=> bs!284207 (= lambda!47816 lambda!47815)))

(declare-fun bs!284208 () Bool)

(assert (= bs!284208 (and d!332617 b!1165271)))

(assert (=> bs!284208 (= lambda!47816 lambda!47784)))

(declare-fun bs!284209 () Bool)

(assert (= bs!284209 (and d!332617 d!332547)))

(assert (=> bs!284209 (= lambda!47816 lambda!47802)))

(declare-fun b!1165500 () Bool)

(declare-fun e!746827 () Bool)

(assert (=> b!1165500 (= e!746827 true)))

(declare-fun b!1165499 () Bool)

(declare-fun e!746826 () Bool)

(assert (=> b!1165499 (= e!746826 e!746827)))

(declare-fun b!1165498 () Bool)

(declare-fun e!746825 () Bool)

(assert (=> b!1165498 (= e!746825 e!746826)))

(assert (=> d!332617 e!746825))

(assert (= b!1165499 b!1165500))

(assert (= b!1165498 b!1165499))

(assert (= (and d!332617 (is-Cons!11507 (rules!9567 thiss!10527))) b!1165498))

(assert (=> b!1165500 (< (dynLambda!5062 order!7035 (toValue!3105 (transformation!2004 (h!16908 (rules!9567 thiss!10527))))) (dynLambda!5063 order!7037 lambda!47816))))

(assert (=> b!1165500 (< (dynLambda!5064 order!7039 (toChars!2964 (transformation!2004 (h!16908 (rules!9567 thiss!10527))))) (dynLambda!5063 order!7037 lambda!47816))))

(assert (=> d!332617 true))

(declare-fun lt!398453 () Bool)

(assert (=> d!332617 (= lt!398453 (forall!3017 lt!398383 lambda!47816))))

(declare-fun e!746823 () Bool)

(assert (=> d!332617 (= lt!398453 e!746823)))

(declare-fun res!526138 () Bool)

(assert (=> d!332617 (=> res!526138 e!746823)))

(assert (=> d!332617 (= res!526138 (not (is-Cons!11506 lt!398383)))))

(assert (=> d!332617 (not (isEmpty!6999 (rules!9567 thiss!10527)))))

(assert (=> d!332617 (= (rulesProduceEachTokenIndividuallyList!565 Lexer!1697 (rules!9567 thiss!10527) lt!398383) lt!398453)))

(declare-fun b!1165496 () Bool)

(declare-fun e!746824 () Bool)

(assert (=> b!1165496 (= e!746823 e!746824)))

(declare-fun res!526137 () Bool)

(assert (=> b!1165496 (=> (not res!526137) (not e!746824))))

(assert (=> b!1165496 (= res!526137 (rulesProduceIndividualToken!734 Lexer!1697 (rules!9567 thiss!10527) (h!16907 lt!398383)))))

(declare-fun b!1165497 () Bool)

(assert (=> b!1165497 (= e!746824 (rulesProduceEachTokenIndividuallyList!565 Lexer!1697 (rules!9567 thiss!10527) (t!110255 lt!398383)))))

(assert (= (and d!332617 (not res!526138)) b!1165496))

(assert (= (and b!1165496 res!526137) b!1165497))

(declare-fun m!1335045 () Bool)

(assert (=> d!332617 m!1335045))

(assert (=> d!332617 m!1334903))

(assert (=> b!1165496 m!1334833))

(assert (=> b!1165497 m!1334835))

(assert (=> b!1165268 d!332617))

(declare-fun d!332619 () Bool)

(declare-fun lt!398454 () Bool)

(declare-fun e!746829 () Bool)

(assert (=> d!332619 (= lt!398454 e!746829)))

(declare-fun res!526139 () Bool)

(assert (=> d!332619 (=> (not res!526139) (not e!746829))))

(assert (=> d!332619 (= res!526139 (= (list!4235 (_1!6856 (lex!702 Lexer!1697 (rules!9567 thiss!10527) (print!639 Lexer!1697 (singletonSeq!665 (h!16907 lt!398384)))))) (list!4235 (singletonSeq!665 (h!16907 lt!398384)))))))

(declare-fun e!746828 () Bool)

(assert (=> d!332619 (= lt!398454 e!746828)))

(declare-fun res!526140 () Bool)

(assert (=> d!332619 (=> (not res!526140) (not e!746828))))

(declare-fun lt!398455 () tuple2!12018)

(assert (=> d!332619 (= res!526140 (= (size!9057 (_1!6856 lt!398455)) 1))))

(assert (=> d!332619 (= lt!398455 (lex!702 Lexer!1697 (rules!9567 thiss!10527) (print!639 Lexer!1697 (singletonSeq!665 (h!16907 lt!398384)))))))

(assert (=> d!332619 (not (isEmpty!6999 (rules!9567 thiss!10527)))))

(assert (=> d!332619 (= (rulesProduceIndividualToken!734 Lexer!1697 (rules!9567 thiss!10527) (h!16907 lt!398384)) lt!398454)))

(declare-fun b!1165501 () Bool)

(declare-fun res!526141 () Bool)

(assert (=> b!1165501 (=> (not res!526141) (not e!746828))))

(assert (=> b!1165501 (= res!526141 (= (apply!2476 (_1!6856 lt!398455) 0) (h!16907 lt!398384)))))

(declare-fun b!1165502 () Bool)

(assert (=> b!1165502 (= e!746828 (isEmpty!7000 (_2!6856 lt!398455)))))

(declare-fun b!1165503 () Bool)

(assert (=> b!1165503 (= e!746829 (isEmpty!7000 (_2!6856 (lex!702 Lexer!1697 (rules!9567 thiss!10527) (print!639 Lexer!1697 (singletonSeq!665 (h!16907 lt!398384)))))))))

(assert (= (and d!332619 res!526140) b!1165501))

(assert (= (and b!1165501 res!526141) b!1165502))

(assert (= (and d!332619 res!526139) b!1165503))

(declare-fun m!1335047 () Bool)

(assert (=> d!332619 m!1335047))

(declare-fun m!1335049 () Bool)

(assert (=> d!332619 m!1335049))

(declare-fun m!1335051 () Bool)

(assert (=> d!332619 m!1335051))

(assert (=> d!332619 m!1335049))

(assert (=> d!332619 m!1334903))

(assert (=> d!332619 m!1335049))

(declare-fun m!1335053 () Bool)

(assert (=> d!332619 m!1335053))

(assert (=> d!332619 m!1335051))

(declare-fun m!1335055 () Bool)

(assert (=> d!332619 m!1335055))

(declare-fun m!1335057 () Bool)

(assert (=> d!332619 m!1335057))

(declare-fun m!1335059 () Bool)

(assert (=> b!1165501 m!1335059))

(declare-fun m!1335061 () Bool)

(assert (=> b!1165502 m!1335061))

(assert (=> b!1165503 m!1335049))

(assert (=> b!1165503 m!1335049))

(assert (=> b!1165503 m!1335051))

(assert (=> b!1165503 m!1335051))

(assert (=> b!1165503 m!1335055))

(declare-fun m!1335063 () Bool)

(assert (=> b!1165503 m!1335063))

(assert (=> b!1165267 d!332619))

(declare-fun bs!284210 () Bool)

(declare-fun d!332621 () Bool)

(assert (= bs!284210 (and d!332621 d!332603)))

(declare-fun lambda!47817 () Int)

(assert (=> bs!284210 (= lambda!47817 lambda!47814)))

(declare-fun bs!284211 () Bool)

(assert (= bs!284211 (and d!332621 d!332565)))

(assert (=> bs!284211 (= lambda!47817 lambda!47813)))

(declare-fun bs!284212 () Bool)

(assert (= bs!284212 (and d!332621 d!332617)))

(assert (=> bs!284212 (= lambda!47817 lambda!47816)))

(declare-fun bs!284213 () Bool)

(assert (= bs!284213 (and d!332621 d!332607)))

(assert (=> bs!284213 (= lambda!47817 lambda!47815)))

(declare-fun bs!284214 () Bool)

(assert (= bs!284214 (and d!332621 b!1165271)))

(assert (=> bs!284214 (= lambda!47817 lambda!47784)))

(declare-fun bs!284215 () Bool)

(assert (= bs!284215 (and d!332621 d!332547)))

(assert (=> bs!284215 (= lambda!47817 lambda!47802)))

(declare-fun b!1165508 () Bool)

(declare-fun e!746834 () Bool)

(assert (=> b!1165508 (= e!746834 true)))

(declare-fun b!1165507 () Bool)

(declare-fun e!746833 () Bool)

(assert (=> b!1165507 (= e!746833 e!746834)))

(declare-fun b!1165506 () Bool)

(declare-fun e!746832 () Bool)

(assert (=> b!1165506 (= e!746832 e!746833)))

(assert (=> d!332621 e!746832))

(assert (= b!1165507 b!1165508))

(assert (= b!1165506 b!1165507))

(assert (= (and d!332621 (is-Cons!11507 (rules!9567 thiss!10527))) b!1165506))

(assert (=> b!1165508 (< (dynLambda!5062 order!7035 (toValue!3105 (transformation!2004 (h!16908 (rules!9567 thiss!10527))))) (dynLambda!5063 order!7037 lambda!47817))))

(assert (=> b!1165508 (< (dynLambda!5064 order!7039 (toChars!2964 (transformation!2004 (h!16908 (rules!9567 thiss!10527))))) (dynLambda!5063 order!7037 lambda!47817))))

(assert (=> d!332621 true))

(declare-fun lt!398456 () Bool)

(assert (=> d!332621 (= lt!398456 (forall!3017 (t!110255 lt!398384) lambda!47817))))

(declare-fun e!746830 () Bool)

(assert (=> d!332621 (= lt!398456 e!746830)))

(declare-fun res!526143 () Bool)

(assert (=> d!332621 (=> res!526143 e!746830)))

(assert (=> d!332621 (= res!526143 (not (is-Cons!11506 (t!110255 lt!398384))))))

(assert (=> d!332621 (not (isEmpty!6999 (rules!9567 thiss!10527)))))

(assert (=> d!332621 (= (rulesProduceEachTokenIndividuallyList!565 Lexer!1697 (rules!9567 thiss!10527) (t!110255 lt!398384)) lt!398456)))

(declare-fun b!1165504 () Bool)

(declare-fun e!746831 () Bool)

(assert (=> b!1165504 (= e!746830 e!746831)))

(declare-fun res!526142 () Bool)

(assert (=> b!1165504 (=> (not res!526142) (not e!746831))))

(assert (=> b!1165504 (= res!526142 (rulesProduceIndividualToken!734 Lexer!1697 (rules!9567 thiss!10527) (h!16907 (t!110255 lt!398384))))))

(declare-fun b!1165505 () Bool)

(assert (=> b!1165505 (= e!746831 (rulesProduceEachTokenIndividuallyList!565 Lexer!1697 (rules!9567 thiss!10527) (t!110255 (t!110255 lt!398384))))))

(assert (= (and d!332621 (not res!526143)) b!1165504))

(assert (= (and b!1165504 res!526142) b!1165505))

(declare-fun m!1335065 () Bool)

(assert (=> d!332621 m!1335065))

(assert (=> d!332621 m!1334903))

(declare-fun m!1335067 () Bool)

(assert (=> b!1165504 m!1335067))

(declare-fun m!1335069 () Bool)

(assert (=> b!1165505 m!1335069))

(assert (=> b!1165266 d!332621))

(declare-fun b!1165519 () Bool)

(declare-fun b_free!27781 () Bool)

(declare-fun b_next!28485 () Bool)

(assert (=> b!1165519 (= b_free!27781 (not b_next!28485))))

(declare-fun tp!334181 () Bool)

(declare-fun b_and!80657 () Bool)

(assert (=> b!1165519 (= tp!334181 b_and!80657)))

(declare-fun b_free!27783 () Bool)

(declare-fun b_next!28487 () Bool)

(assert (=> b!1165519 (= b_free!27783 (not b_next!28487))))

(declare-fun tp!334180 () Bool)

(declare-fun b_and!80659 () Bool)

(assert (=> b!1165519 (= tp!334180 b_and!80659)))

(declare-fun e!746843 () Bool)

(assert (=> b!1165519 (= e!746843 (and tp!334181 tp!334180))))

(declare-fun e!746845 () Bool)

(declare-fun b!1165518 () Bool)

(declare-fun tp!334179 () Bool)

(declare-fun inv!15144 (String!13940) Bool)

(declare-fun inv!15155 (TokenValueInjection!3840) Bool)

(assert (=> b!1165518 (= e!746845 (and tp!334179 (inv!15144 (tag!2266 (h!16908 (rules!9567 thiss!10527)))) (inv!15155 (transformation!2004 (h!16908 (rules!9567 thiss!10527)))) e!746843))))

(declare-fun b!1165517 () Bool)

(declare-fun e!746844 () Bool)

(declare-fun tp!334182 () Bool)

(assert (=> b!1165517 (= e!746844 (and e!746845 tp!334182))))

(assert (=> b!1165270 (= tp!334164 e!746844)))

(assert (= b!1165518 b!1165519))

(assert (= b!1165517 b!1165518))

(assert (= (and b!1165270 (is-Cons!11507 (rules!9567 thiss!10527))) b!1165517))

(declare-fun m!1335071 () Bool)

(assert (=> b!1165518 m!1335071))

(declare-fun m!1335073 () Bool)

(assert (=> b!1165518 m!1335073))

(declare-fun tp!334189 () Bool)

(declare-fun tp!334190 () Bool)

(declare-fun b!1165528 () Bool)

(declare-fun e!746852 () Bool)

(assert (=> b!1165528 (= e!746852 (and (inv!15149 (left!10061 (c!194612 (tokens!1621 thiss!10527)))) tp!334189 (inv!15149 (right!10391 (c!194612 (tokens!1621 thiss!10527)))) tp!334190))))

(declare-fun b!1165530 () Bool)

(declare-fun e!746851 () Bool)

(declare-fun tp!334191 () Bool)

(assert (=> b!1165530 (= e!746851 tp!334191)))

(declare-fun b!1165529 () Bool)

(declare-fun inv!15156 (IArray!7547) Bool)

(assert (=> b!1165529 (= e!746852 (and (inv!15156 (xs!6476 (c!194612 (tokens!1621 thiss!10527)))) e!746851))))

(assert (=> b!1165272 (= tp!334163 (and (inv!15149 (c!194612 (tokens!1621 thiss!10527))) e!746852))))

(assert (= (and b!1165272 (is-Node!3771 (c!194612 (tokens!1621 thiss!10527)))) b!1165528))

(assert (= b!1165529 b!1165530))

(assert (= (and b!1165272 (is-Leaf!5784 (c!194612 (tokens!1621 thiss!10527)))) b!1165529))

(declare-fun m!1335075 () Bool)

(assert (=> b!1165528 m!1335075))

(declare-fun m!1335077 () Bool)

(assert (=> b!1165528 m!1335077))

(declare-fun m!1335079 () Bool)

(assert (=> b!1165529 m!1335079))

(assert (=> b!1165272 m!1334803))

(declare-fun b!1165539 () Bool)

(declare-fun e!746857 () Bool)

(assert (=> b!1165539 (= e!746857 true)))

(declare-fun b!1165541 () Bool)

(declare-fun e!746858 () Bool)

(assert (=> b!1165541 (= e!746858 true)))

(declare-fun b!1165540 () Bool)

(assert (=> b!1165540 (= e!746857 e!746858)))

(assert (=> b!1165284 e!746857))

(assert (= (and b!1165284 (is-Node!3771 (c!194612 (tokens!1621 thiss!10527)))) b!1165539))

(assert (= b!1165540 b!1165541))

(assert (= (and b!1165284 (is-Leaf!5784 (c!194612 (tokens!1621 thiss!10527)))) b!1165540))

(declare-fun b!1165544 () Bool)

(declare-fun e!746861 () Bool)

(assert (=> b!1165544 (= e!746861 true)))

(declare-fun b!1165543 () Bool)

(declare-fun e!746860 () Bool)

(assert (=> b!1165543 (= e!746860 e!746861)))

(declare-fun b!1165542 () Bool)

(declare-fun e!746859 () Bool)

(assert (=> b!1165542 (= e!746859 e!746860)))

(assert (=> b!1165283 e!746859))

(assert (= b!1165543 b!1165544))

(assert (= b!1165542 b!1165543))

(assert (= (and b!1165283 (is-Cons!11507 (rules!9567 thiss!10527))) b!1165542))

(assert (=> b!1165544 (< (dynLambda!5062 order!7035 (toValue!3105 (transformation!2004 (h!16908 (rules!9567 thiss!10527))))) (dynLambda!5063 order!7037 lambda!47784))))

(assert (=> b!1165544 (< (dynLambda!5064 order!7039 (toChars!2964 (transformation!2004 (h!16908 (rules!9567 thiss!10527))))) (dynLambda!5063 order!7037 lambda!47784))))

(declare-fun b_lambda!34723 () Bool)

(assert (= b_lambda!34721 (or b!1165271 b_lambda!34723)))

(declare-fun bs!284216 () Bool)

(declare-fun d!332623 () Bool)

(assert (= bs!284216 (and d!332623 b!1165271)))

(assert (=> bs!284216 (= (dynLambda!5065 lambda!47784 (h!16907 lt!398383)) (rulesProduceIndividualToken!734 Lexer!1697 (rules!9567 thiss!10527) (h!16907 lt!398383)))))

(assert (=> bs!284216 m!1334833))

(assert (=> b!1165446 d!332623))

(push 1)

(assert (not b!1165539))

(assert (not b!1165518))

(assert (not b!1165441))

(assert (not b!1165272))

(assert (not b!1165381))

(assert (not b!1165334))

(assert (not b!1165379))

(assert (not b!1165541))

(assert (not b!1165426))

(assert (not b!1165447))

(assert (not b!1165496))

(assert (not b!1165530))

(assert (not b!1165501))

(assert (not b_next!28485))

(assert b_and!80657)

(assert (not b!1165505))

(assert (not b!1165528))

(assert (not d!332553))

(assert (not b!1165475))

(assert (not b!1165542))

(assert (not b!1165503))

(assert (not d!332591))

(assert (not b!1165425))

(assert (not b_next!28487))

(assert (not d!332593))

(assert (not b!1165355))

(assert (not b!1165504))

(assert (not b!1165466))

(assert (not b!1165502))

(assert (not b!1165380))

(assert (not d!332587))

(assert (not d!332565))

(assert (not d!332601))

(assert (not b!1165498))

(assert (not d!332557))

(assert (not d!332555))

(assert (not b!1165470))

(assert (not d!332607))

(assert (not d!332617))

(assert (not d!332551))

(assert (not b!1165506))

(assert (not b!1165468))

(assert (not b!1165458))

(assert (not d!332621))

(assert (not b!1165350))

(assert (not d!332609))

(assert (not b!1165529))

(assert (not b!1165494))

(assert (not d!332603))

(assert (not d!332585))

(assert (not b!1165440))

(assert (not b_lambda!34723))

(assert (not b!1165439))

(assert (not b!1165356))

(assert (not d!332547))

(assert (not b!1165493))

(assert (not b!1165427))

(assert b_and!80659)

(assert (not b!1165469))

(assert (not d!332597))

(assert (not d!332605))

(assert (not b!1165459))

(assert (not bs!284216))

(assert (not d!332611))

(assert (not b!1165497))

(assert (not b!1165432))

(assert (not d!332619))

(assert (not b!1165474))

(assert (not b!1165473))

(assert (not b!1165495))

(assert (not b!1165517))

(assert (not d!332583))

(assert (not b!1165343))

(check-sat)

(pop 1)

(push 1)

(assert b_and!80657)

(assert b_and!80659)

(assert (not b_next!28485))

(assert (not b_next!28487))

(check-sat)

(pop 1)

