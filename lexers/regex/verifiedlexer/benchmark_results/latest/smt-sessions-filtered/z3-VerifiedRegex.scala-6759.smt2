; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!352964 () Bool)

(assert start!352964)

(declare-fun b!3759905 () Bool)

(declare-fun b_free!100609 () Bool)

(declare-fun b_next!101313 () Bool)

(assert (=> b!3759905 (= b_free!100609 (not b_next!101313))))

(declare-fun tp!1148702 () Bool)

(declare-fun b_and!279219 () Bool)

(assert (=> b!3759905 (= tp!1148702 b_and!279219)))

(declare-fun b_free!100611 () Bool)

(declare-fun b_next!101315 () Bool)

(assert (=> b!3759905 (= b_free!100611 (not b_next!101315))))

(declare-fun tp!1148699 () Bool)

(declare-fun b_and!279221 () Bool)

(assert (=> b!3759905 (= tp!1148699 b_and!279221)))

(declare-fun b!3759904 () Bool)

(declare-fun b_free!100613 () Bool)

(declare-fun b_next!101317 () Bool)

(assert (=> b!3759904 (= b_free!100613 (not b_next!101317))))

(declare-fun tp!1148700 () Bool)

(declare-fun b_and!279223 () Bool)

(assert (=> b!3759904 (= tp!1148700 b_and!279223)))

(declare-fun b_free!100615 () Bool)

(declare-fun b_next!101319 () Bool)

(assert (=> b!3759904 (= b_free!100615 (not b_next!101319))))

(declare-fun tp!1148703 () Bool)

(declare-fun b_and!279225 () Bool)

(assert (=> b!3759904 (= tp!1148703 b_and!279225)))

(declare-fun e!2325228 () Bool)

(assert (=> b!3759904 (= e!2325228 (and tp!1148700 tp!1148703))))

(declare-fun e!2325217 () Bool)

(assert (=> b!3759905 (= e!2325217 (and tp!1148702 tp!1148699))))

(declare-fun b!3759906 () Bool)

(declare-fun tp!1148706 () Bool)

(declare-fun e!2325219 () Bool)

(declare-datatypes ((List!40191 0))(
  ( (Nil!40067) (Cons!40067 (h!45487 (_ BitVec 16)) (t!303744 List!40191)) )
))
(declare-datatypes ((TokenValue!6366 0))(
  ( (FloatLiteralValue!12732 (text!45007 List!40191)) (TokenValueExt!6365 (__x!24949 Int)) (Broken!31830 (value!195439 List!40191)) (Object!6489) (End!6366) (Def!6366) (Underscore!6366) (Match!6366) (Else!6366) (Error!6366) (Case!6366) (If!6366) (Extends!6366) (Abstract!6366) (Class!6366) (Val!6366) (DelimiterValue!12732 (del!6426 List!40191)) (KeywordValue!6372 (value!195440 List!40191)) (CommentValue!12732 (value!195441 List!40191)) (WhitespaceValue!12732 (value!195442 List!40191)) (IndentationValue!6366 (value!195443 List!40191)) (String!45487) (Int32!6366) (Broken!31831 (value!195444 List!40191)) (Boolean!6367) (Unit!57791) (OperatorValue!6369 (op!6426 List!40191)) (IdentifierValue!12732 (value!195445 List!40191)) (IdentifierValue!12733 (value!195446 List!40191)) (WhitespaceValue!12733 (value!195447 List!40191)) (True!12732) (False!12732) (Broken!31832 (value!195448 List!40191)) (Broken!31833 (value!195449 List!40191)) (True!12733) (RightBrace!6366) (RightBracket!6366) (Colon!6366) (Null!6366) (Comma!6366) (LeftBracket!6366) (False!12733) (LeftBrace!6366) (ImaginaryLiteralValue!6366 (text!45008 List!40191)) (StringLiteralValue!19098 (value!195450 List!40191)) (EOFValue!6366 (value!195451 List!40191)) (IdentValue!6366 (value!195452 List!40191)) (DelimiterValue!12733 (value!195453 List!40191)) (DedentValue!6366 (value!195454 List!40191)) (NewLineValue!6366 (value!195455 List!40191)) (IntegerValue!19098 (value!195456 (_ BitVec 32)) (text!45009 List!40191)) (IntegerValue!19099 (value!195457 Int) (text!45010 List!40191)) (Times!6366) (Or!6366) (Equal!6366) (Minus!6366) (Broken!31834 (value!195458 List!40191)) (And!6366) (Div!6366) (LessEqual!6366) (Mod!6366) (Concat!17407) (Not!6366) (Plus!6366) (SpaceValue!6366 (value!195459 List!40191)) (IntegerValue!19100 (value!195460 Int) (text!45011 List!40191)) (StringLiteralValue!19099 (text!45012 List!40191)) (FloatLiteralValue!12733 (text!45013 List!40191)) (BytesLiteralValue!6366 (value!195461 List!40191)) (CommentValue!12733 (value!195462 List!40191)) (StringLiteralValue!19100 (value!195463 List!40191)) (ErrorTokenValue!6366 (msg!6427 List!40191)) )
))
(declare-datatypes ((C!22268 0))(
  ( (C!22269 (val!13198 Int)) )
))
(declare-datatypes ((List!40192 0))(
  ( (Nil!40068) (Cons!40068 (h!45488 C!22268) (t!303745 List!40192)) )
))
(declare-datatypes ((IArray!24543 0))(
  ( (IArray!24544 (innerList!12329 List!40192)) )
))
(declare-datatypes ((Conc!12269 0))(
  ( (Node!12269 (left!31028 Conc!12269) (right!31358 Conc!12269) (csize!24768 Int) (cheight!12480 Int)) (Leaf!19029 (xs!15475 IArray!24543) (csize!24769 Int)) (Empty!12269) )
))
(declare-datatypes ((BalanceConc!24132 0))(
  ( (BalanceConc!24133 (c!651066 Conc!12269)) )
))
(declare-datatypes ((Regex!11041 0))(
  ( (ElementMatch!11041 (c!651067 C!22268)) (Concat!17408 (regOne!22594 Regex!11041) (regTwo!22594 Regex!11041)) (EmptyExpr!11041) (Star!11041 (reg!11370 Regex!11041)) (EmptyLang!11041) (Union!11041 (regOne!22595 Regex!11041) (regTwo!22595 Regex!11041)) )
))
(declare-datatypes ((String!45488 0))(
  ( (String!45489 (value!195464 String)) )
))
(declare-datatypes ((TokenValueInjection!12160 0))(
  ( (TokenValueInjection!12161 (toValue!8492 Int) (toChars!8351 Int)) )
))
(declare-datatypes ((Rule!12072 0))(
  ( (Rule!12073 (regex!6136 Regex!11041) (tag!6996 String!45488) (isSeparator!6136 Bool) (transformation!6136 TokenValueInjection!12160)) )
))
(declare-datatypes ((Token!11410 0))(
  ( (Token!11411 (value!195465 TokenValue!6366) (rule!8900 Rule!12072) (size!30160 Int) (originalCharacters!6736 List!40192)) )
))
(declare-datatypes ((List!40193 0))(
  ( (Nil!40069) (Cons!40069 (h!45489 Token!11410) (t!303746 List!40193)) )
))
(declare-fun l!4295 () List!40193)

(declare-fun inv!53726 (String!45488) Bool)

(declare-fun inv!53729 (TokenValueInjection!12160) Bool)

(assert (=> b!3759906 (= e!2325219 (and tp!1148706 (inv!53726 (tag!6996 (rule!8900 (h!45489 l!4295)))) (inv!53729 (transformation!6136 (rule!8900 (h!45489 l!4295)))) e!2325217))))

(declare-fun tp!1148704 () Bool)

(declare-fun b!3759907 () Bool)

(declare-fun e!2325222 () Bool)

(declare-fun e!2325224 () Bool)

(declare-fun inv!53730 (Token!11410) Bool)

(assert (=> b!3759907 (= e!2325224 (and (inv!53730 (h!45489 l!4295)) e!2325222 tp!1148704))))

(declare-fun tp!1148707 () Bool)

(declare-fun b!3759908 () Bool)

(declare-fun e!2325223 () Bool)

(declare-fun separatorToken!124 () Token!11410)

(assert (=> b!3759908 (= e!2325223 (and tp!1148707 (inv!53726 (tag!6996 (rule!8900 separatorToken!124))) (inv!53729 (transformation!6136 (rule!8900 separatorToken!124))) e!2325228))))

(declare-fun res!1522689 () Bool)

(declare-fun e!2325220 () Bool)

(assert (=> start!352964 (=> (not res!1522689) (not e!2325220))))

(declare-datatypes ((LexerInterface!5725 0))(
  ( (LexerInterfaceExt!5722 (__x!24950 Int)) (Lexer!5723) )
))
(declare-fun thiss!13942 () LexerInterface!5725)

(get-info :version)

(assert (=> start!352964 (= res!1522689 (and ((_ is Lexer!5723) thiss!13942) (isSeparator!6136 (rule!8900 separatorToken!124)) ((_ is Cons!40069) l!4295)))))

(assert (=> start!352964 e!2325220))

(assert (=> start!352964 true))

(declare-fun e!2325221 () Bool)

(assert (=> start!352964 (and (inv!53730 separatorToken!124) e!2325221)))

(assert (=> start!352964 e!2325224))

(declare-fun e!2325218 () Bool)

(assert (=> start!352964 e!2325218))

(declare-fun b!3759909 () Bool)

(declare-fun tp!1148708 () Bool)

(declare-fun inv!21 (TokenValue!6366) Bool)

(assert (=> b!3759909 (= e!2325221 (and (inv!21 (value!195465 separatorToken!124)) e!2325223 tp!1148708))))

(declare-fun b!3759910 () Bool)

(assert (=> b!3759910 (= e!2325220 (not true))))

(declare-fun lt!1301437 () List!40192)

(declare-fun lt!1301436 () List!40192)

(declare-fun acc!415 () List!40192)

(declare-fun lt!1301439 () List!40192)

(declare-fun ++!9933 (List!40192 List!40192) List!40192)

(assert (=> b!3759910 (= (++!9933 (++!9933 acc!415 lt!1301439) lt!1301436) lt!1301437)))

(declare-datatypes ((Unit!57792 0))(
  ( (Unit!57793) )
))
(declare-fun lt!1301435 () Unit!57792)

(declare-fun lemmaConcatAssociativity!2096 (List!40192 List!40192 List!40192) Unit!57792)

(assert (=> b!3759910 (= lt!1301435 (lemmaConcatAssociativity!2096 acc!415 lt!1301439 lt!1301436))))

(declare-fun lt!1301441 () List!40192)

(declare-fun lt!1301438 () List!40192)

(assert (=> b!3759910 (= (++!9933 lt!1301437 lt!1301441) (++!9933 acc!415 (++!9933 lt!1301438 lt!1301441)))))

(assert (=> b!3759910 (= lt!1301437 (++!9933 acc!415 lt!1301438))))

(declare-fun lt!1301440 () Unit!57792)

(assert (=> b!3759910 (= lt!1301440 (lemmaConcatAssociativity!2096 acc!415 lt!1301438 lt!1301441))))

(declare-fun printWithSeparatorTokenList!404 (LexerInterface!5725 List!40193 Token!11410) List!40192)

(assert (=> b!3759910 (= lt!1301441 (printWithSeparatorTokenList!404 thiss!13942 (t!303746 l!4295) separatorToken!124))))

(assert (=> b!3759910 (= lt!1301438 (++!9933 lt!1301439 lt!1301436))))

(declare-fun list!14788 (BalanceConc!24132) List!40192)

(declare-fun charsOf!3989 (Token!11410) BalanceConc!24132)

(assert (=> b!3759910 (= lt!1301436 (list!14788 (charsOf!3989 separatorToken!124)))))

(assert (=> b!3759910 (= lt!1301439 (list!14788 (charsOf!3989 (h!45489 l!4295))))))

(declare-fun tp!1148705 () Bool)

(declare-fun b!3759911 () Bool)

(assert (=> b!3759911 (= e!2325222 (and (inv!21 (value!195465 (h!45489 l!4295))) e!2325219 tp!1148705))))

(declare-fun b!3759912 () Bool)

(declare-fun tp_is_empty!19077 () Bool)

(declare-fun tp!1148701 () Bool)

(assert (=> b!3759912 (= e!2325218 (and tp_is_empty!19077 tp!1148701))))

(assert (= (and start!352964 res!1522689) b!3759910))

(assert (= b!3759908 b!3759904))

(assert (= b!3759909 b!3759908))

(assert (= start!352964 b!3759909))

(assert (= b!3759906 b!3759905))

(assert (= b!3759911 b!3759906))

(assert (= b!3759907 b!3759911))

(assert (= (and start!352964 ((_ is Cons!40069) l!4295)) b!3759907))

(assert (= (and start!352964 ((_ is Cons!40068) acc!415)) b!3759912))

(declare-fun m!4253665 () Bool)

(assert (=> b!3759909 m!4253665))

(declare-fun m!4253667 () Bool)

(assert (=> b!3759907 m!4253667))

(declare-fun m!4253669 () Bool)

(assert (=> start!352964 m!4253669))

(declare-fun m!4253671 () Bool)

(assert (=> b!3759908 m!4253671))

(declare-fun m!4253673 () Bool)

(assert (=> b!3759908 m!4253673))

(declare-fun m!4253675 () Bool)

(assert (=> b!3759906 m!4253675))

(declare-fun m!4253677 () Bool)

(assert (=> b!3759906 m!4253677))

(declare-fun m!4253679 () Bool)

(assert (=> b!3759910 m!4253679))

(declare-fun m!4253681 () Bool)

(assert (=> b!3759910 m!4253681))

(declare-fun m!4253683 () Bool)

(assert (=> b!3759910 m!4253683))

(declare-fun m!4253685 () Bool)

(assert (=> b!3759910 m!4253685))

(declare-fun m!4253687 () Bool)

(assert (=> b!3759910 m!4253687))

(declare-fun m!4253689 () Bool)

(assert (=> b!3759910 m!4253689))

(declare-fun m!4253691 () Bool)

(assert (=> b!3759910 m!4253691))

(assert (=> b!3759910 m!4253679))

(declare-fun m!4253693 () Bool)

(assert (=> b!3759910 m!4253693))

(assert (=> b!3759910 m!4253685))

(declare-fun m!4253695 () Bool)

(assert (=> b!3759910 m!4253695))

(declare-fun m!4253697 () Bool)

(assert (=> b!3759910 m!4253697))

(assert (=> b!3759910 m!4253697))

(declare-fun m!4253699 () Bool)

(assert (=> b!3759910 m!4253699))

(declare-fun m!4253701 () Bool)

(assert (=> b!3759910 m!4253701))

(declare-fun m!4253703 () Bool)

(assert (=> b!3759910 m!4253703))

(assert (=> b!3759910 m!4253701))

(declare-fun m!4253705 () Bool)

(assert (=> b!3759910 m!4253705))

(declare-fun m!4253707 () Bool)

(assert (=> b!3759911 m!4253707))

(check-sat b_and!279223 (not b!3759911) (not b_next!101315) tp_is_empty!19077 (not b!3759907) b_and!279221 b_and!279219 (not b!3759909) (not b!3759908) (not b!3759910) (not b_next!101313) (not b!3759912) (not b!3759906) (not start!352964) b_and!279225 (not b_next!101317) (not b_next!101319))
(check-sat b_and!279223 (not b_next!101315) (not b_next!101313) b_and!279221 b_and!279219 b_and!279225 (not b_next!101317) (not b_next!101319))
