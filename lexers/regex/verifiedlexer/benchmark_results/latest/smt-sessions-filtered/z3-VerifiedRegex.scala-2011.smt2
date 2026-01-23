; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!102274 () Bool)

(assert start!102274)

(declare-fun b!1165237 () Bool)

(declare-fun e!746615 () Bool)

(assert (=> b!1165237 (= e!746615 true)))

(declare-fun b!1165236 () Bool)

(declare-fun e!746614 () Bool)

(assert (=> b!1165236 (= e!746614 e!746615)))

(declare-fun b!1165219 () Bool)

(assert (=> b!1165219 e!746614))

(assert (= b!1165236 b!1165237))

(assert (= b!1165219 b!1165236))

(declare-fun b!1165218 () Bool)

(declare-datatypes ((List!11524 0))(
  ( (Nil!11500) (Cons!11500 (h!16901 (_ BitVec 16)) (t!110236 List!11524)) )
))
(declare-datatypes ((TokenValue!2069 0))(
  ( (FloatLiteralValue!4138 (text!14928 List!11524)) (TokenValueExt!2068 (__x!7849 Int)) (Broken!10345 (value!65056 List!11524)) (Object!2092) (End!2069) (Def!2069) (Underscore!2069) (Match!2069) (Else!2069) (Error!2069) (Case!2069) (If!2069) (Extends!2069) (Abstract!2069) (Class!2069) (Val!2069) (DelimiterValue!4138 (del!2129 List!11524)) (KeywordValue!2075 (value!65057 List!11524)) (CommentValue!4138 (value!65058 List!11524)) (WhitespaceValue!4138 (value!65059 List!11524)) (IndentationValue!2069 (value!65060 List!11524)) (String!13932) (Int32!2069) (Broken!10346 (value!65061 List!11524)) (Boolean!2070) (Unit!17591) (OperatorValue!2072 (op!2129 List!11524)) (IdentifierValue!4138 (value!65062 List!11524)) (IdentifierValue!4139 (value!65063 List!11524)) (WhitespaceValue!4139 (value!65064 List!11524)) (True!4138) (False!4138) (Broken!10347 (value!65065 List!11524)) (Broken!10348 (value!65066 List!11524)) (True!4139) (RightBrace!2069) (RightBracket!2069) (Colon!2069) (Null!2069) (Comma!2069) (LeftBracket!2069) (False!4139) (LeftBrace!2069) (ImaginaryLiteralValue!2069 (text!14929 List!11524)) (StringLiteralValue!6207 (value!65067 List!11524)) (EOFValue!2069 (value!65068 List!11524)) (IdentValue!2069 (value!65069 List!11524)) (DelimiterValue!4139 (value!65070 List!11524)) (DedentValue!2069 (value!65071 List!11524)) (NewLineValue!2069 (value!65072 List!11524)) (IntegerValue!6207 (value!65073 (_ BitVec 32)) (text!14930 List!11524)) (IntegerValue!6208 (value!65074 Int) (text!14931 List!11524)) (Times!2069) (Or!2069) (Equal!2069) (Minus!2069) (Broken!10349 (value!65075 List!11524)) (And!2069) (Div!2069) (LessEqual!2069) (Mod!2069) (Concat!5342) (Not!2069) (Plus!2069) (SpaceValue!2069 (value!65076 List!11524)) (IntegerValue!6209 (value!65077 Int) (text!14932 List!11524)) (StringLiteralValue!6208 (text!14933 List!11524)) (FloatLiteralValue!4139 (text!14934 List!11524)) (BytesLiteralValue!2069 (value!65078 List!11524)) (CommentValue!4139 (value!65079 List!11524)) (StringLiteralValue!6209 (value!65080 List!11524)) (ErrorTokenValue!2069 (msg!2130 List!11524)) )
))
(declare-datatypes ((C!6864 0))(
  ( (C!6865 (val!3688 Int)) )
))
(declare-datatypes ((Regex!3273 0))(
  ( (ElementMatch!3273 (c!194607 C!6864)) (Concat!5343 (regOne!7058 Regex!3273) (regTwo!7058 Regex!3273)) (EmptyExpr!3273) (Star!3273 (reg!3602 Regex!3273)) (EmptyLang!3273) (Union!3273 (regOne!7059 Regex!3273) (regTwo!7059 Regex!3273)) )
))
(declare-datatypes ((String!13933 0))(
  ( (String!13934 (value!65081 String)) )
))
(declare-datatypes ((List!11525 0))(
  ( (Nil!11501) (Cons!11501 (h!16902 C!6864) (t!110237 List!11525)) )
))
(declare-datatypes ((IArray!7541 0))(
  ( (IArray!7542 (innerList!3828 List!11525)) )
))
(declare-datatypes ((Conc!3768 0))(
  ( (Node!3768 (left!10055 Conc!3768) (right!10385 Conc!3768) (csize!7766 Int) (cheight!3979 Int)) (Leaf!5780 (xs!6473 IArray!7541) (csize!7767 Int)) (Empty!3768) )
))
(declare-datatypes ((BalanceConc!7558 0))(
  ( (BalanceConc!7559 (c!194608 Conc!3768)) )
))
(declare-datatypes ((TokenValueInjection!3838 0))(
  ( (TokenValueInjection!3839 (toValue!3104 Int) (toChars!2963 Int)) )
))
(declare-datatypes ((Rule!3806 0))(
  ( (Rule!3807 (regex!2003 Regex!3273) (tag!2265 String!13933) (isSeparator!2003 Bool) (transformation!2003 TokenValueInjection!3838)) )
))
(declare-datatypes ((Token!3668 0))(
  ( (Token!3669 (value!65082 TokenValue!2069) (rule!3424 Rule!3806) (size!9054 Int) (originalCharacters!2557 List!11525)) )
))
(declare-datatypes ((List!11526 0))(
  ( (Nil!11502) (Cons!11502 (h!16903 Rule!3806) (t!110238 List!11526)) )
))
(declare-datatypes ((List!11527 0))(
  ( (Nil!11503) (Cons!11503 (h!16904 Token!3668) (t!110239 List!11527)) )
))
(declare-datatypes ((IArray!7543 0))(
  ( (IArray!7544 (innerList!3829 List!11527)) )
))
(declare-datatypes ((Conc!3769 0))(
  ( (Node!3769 (left!10056 Conc!3769) (right!10386 Conc!3769) (csize!7768 Int) (cheight!3980 Int)) (Leaf!5781 (xs!6474 IArray!7543) (csize!7769 Int)) (Empty!3769) )
))
(declare-datatypes ((BalanceConc!7560 0))(
  ( (BalanceConc!7561 (c!194609 Conc!3769)) )
))
(declare-datatypes ((PrintableTokens!692 0))(
  ( (PrintableTokens!693 (rules!9566 List!11526) (tokens!1620 BalanceConc!7560)) )
))
(declare-fun thiss!10527 () PrintableTokens!692)

(declare-fun tp!334158 () Bool)

(declare-fun e!746602 () Bool)

(declare-fun e!746604 () Bool)

(declare-fun inv!15141 (BalanceConc!7560) Bool)

(assert (=> b!1165218 (= e!746604 (and tp!334158 (inv!15141 (tokens!1620 thiss!10527)) e!746602))))

(declare-fun res!525949 () Bool)

(declare-fun e!746600 () Bool)

(assert (=> start!102274 (=> (not res!525949) (not e!746600))))

(declare-fun from!787 () Int)

(declare-fun to!267 () Int)

(assert (=> start!102274 (= res!525949 (and (<= 0 from!787) (<= from!787 to!267)))))

(assert (=> start!102274 e!746600))

(assert (=> start!102274 true))

(declare-fun inv!15142 (PrintableTokens!692) Bool)

(assert (=> start!102274 (and (inv!15142 thiss!10527) e!746604)))

(declare-fun e!746601 () Bool)

(declare-fun e!746606 () Bool)

(assert (=> b!1165219 (= e!746601 (not e!746606))))

(declare-fun res!525950 () Bool)

(assert (=> b!1165219 (=> res!525950 e!746606)))

(declare-fun lambda!47771 () Int)

(declare-fun forall!3014 (BalanceConc!7560 Int) Bool)

(assert (=> b!1165219 (= res!525950 (not (forall!3014 (tokens!1620 thiss!10527) lambda!47771)))))

(declare-fun lt!398368 () List!11527)

(declare-fun e!746608 () Bool)

(declare-datatypes ((LexerInterface!1698 0))(
  ( (LexerInterfaceExt!1695 (__x!7850 Int)) (Lexer!1696) )
))
(declare-fun rulesProduceEachTokenIndividuallyList!564 (LexerInterface!1698 List!11526 List!11527) Bool)

(assert (=> b!1165219 (= (rulesProduceEachTokenIndividuallyList!564 Lexer!1696 (rules!9566 thiss!10527) lt!398368) e!746608)))

(declare-fun res!525945 () Bool)

(assert (=> b!1165219 (=> res!525945 e!746608)))

(get-info :version)

(assert (=> b!1165219 (= res!525945 (not ((_ is Cons!11503) lt!398368)))))

(declare-fun list!4234 (BalanceConc!7560) List!11527)

(assert (=> b!1165219 (= lt!398368 (list!4234 (tokens!1620 thiss!10527)))))

(declare-fun rulesProduceEachTokenIndividually!736 (LexerInterface!1698 List!11526 BalanceConc!7560) Bool)

(assert (=> b!1165219 (= (rulesProduceEachTokenIndividually!736 Lexer!1696 (rules!9566 thiss!10527) (tokens!1620 thiss!10527)) (forall!3014 (tokens!1620 thiss!10527) lambda!47771))))

(declare-fun b!1165220 () Bool)

(declare-fun res!525943 () Bool)

(declare-fun e!746609 () Bool)

(assert (=> b!1165220 (=> (not res!525943) (not e!746609))))

(declare-fun lt!398364 () BalanceConc!7560)

(assert (=> b!1165220 (= res!525943 (= (rulesProduceEachTokenIndividually!736 Lexer!1696 (rules!9566 thiss!10527) lt!398364) (forall!3014 lt!398364 lambda!47771)))))

(declare-fun b!1165221 () Bool)

(declare-fun tp!334157 () Bool)

(declare-fun inv!15143 (Conc!3769) Bool)

(assert (=> b!1165221 (= e!746602 (and (inv!15143 (c!194609 (tokens!1620 thiss!10527))) tp!334157))))

(declare-fun b!1165222 () Bool)

(declare-fun lt!398366 () List!11527)

(declare-fun forall!3015 (List!11527 Int) Bool)

(assert (=> b!1165222 (= e!746606 (forall!3015 lt!398366 lambda!47771))))

(assert (=> b!1165222 e!746609))

(declare-fun res!525946 () Bool)

(assert (=> b!1165222 (=> (not res!525946) (not e!746609))))

(assert (=> b!1165222 (= res!525946 (forall!3015 lt!398366 lambda!47771))))

(declare-datatypes ((Unit!17592 0))(
  ( (Unit!17593) )
))
(declare-fun lt!398365 () Unit!17592)

(declare-fun lemmaForallSubseq!147 (List!11527 List!11527 Int) Unit!17592)

(assert (=> b!1165222 (= lt!398365 (lemmaForallSubseq!147 lt!398366 lt!398368 lambda!47771))))

(assert (=> b!1165222 (= lt!398366 (list!4234 lt!398364))))

(declare-fun slice!303 (BalanceConc!7560 Int Int) BalanceConc!7560)

(assert (=> b!1165222 (= lt!398364 (slice!303 (tokens!1620 thiss!10527) from!787 to!267))))

(declare-fun subseq!255 (List!11527 List!11527) Bool)

(declare-fun slice!304 (List!11527 Int Int) List!11527)

(assert (=> b!1165222 (subseq!255 (slice!304 lt!398368 from!787 to!267) lt!398368)))

(declare-fun lt!398363 () Unit!17592)

(declare-fun lemmaSliceSubseq!96 (List!11527 Int Int) Unit!17592)

(assert (=> b!1165222 (= lt!398363 (lemmaSliceSubseq!96 lt!398368 from!787 to!267))))

(declare-fun e!746607 () Bool)

(declare-fun b!1165223 () Bool)

(assert (=> b!1165223 (= e!746609 (= (rulesProduceEachTokenIndividuallyList!564 Lexer!1696 (rules!9566 thiss!10527) lt!398366) e!746607))))

(declare-fun res!525942 () Bool)

(assert (=> b!1165223 (=> res!525942 e!746607)))

(assert (=> b!1165223 (= res!525942 (not ((_ is Cons!11503) lt!398366)))))

(declare-fun b!1165224 () Bool)

(declare-fun e!746605 () Bool)

(assert (=> b!1165224 (= e!746605 (rulesProduceEachTokenIndividuallyList!564 Lexer!1696 (rules!9566 thiss!10527) (t!110239 lt!398366)))))

(declare-fun b!1165225 () Bool)

(assert (=> b!1165225 (= e!746607 e!746605)))

(declare-fun res!525947 () Bool)

(assert (=> b!1165225 (=> (not res!525947) (not e!746605))))

(declare-fun rulesProduceIndividualToken!733 (LexerInterface!1698 List!11526 Token!3668) Bool)

(assert (=> b!1165225 (= res!525947 (rulesProduceIndividualToken!733 Lexer!1696 (rules!9566 thiss!10527) (h!16904 lt!398366)))))

(declare-fun b!1165226 () Bool)

(declare-fun e!746603 () Bool)

(assert (=> b!1165226 (= e!746608 e!746603)))

(declare-fun res!525941 () Bool)

(assert (=> b!1165226 (=> (not res!525941) (not e!746603))))

(assert (=> b!1165226 (= res!525941 (rulesProduceIndividualToken!733 Lexer!1696 (rules!9566 thiss!10527) (h!16904 lt!398368)))))

(declare-fun b!1165227 () Bool)

(assert (=> b!1165227 (= e!746603 (rulesProduceEachTokenIndividuallyList!564 Lexer!1696 (rules!9566 thiss!10527) (t!110239 lt!398368)))))

(declare-fun b!1165228 () Bool)

(assert (=> b!1165228 (= e!746600 e!746601)))

(declare-fun res!525948 () Bool)

(assert (=> b!1165228 (=> (not res!525948) (not e!746601))))

(declare-fun rulesInvariant!1572 (LexerInterface!1698 List!11526) Bool)

(assert (=> b!1165228 (= res!525948 (rulesInvariant!1572 Lexer!1696 (rules!9566 thiss!10527)))))

(declare-fun lt!398367 () Unit!17592)

(declare-fun lemmaInvariant!190 (PrintableTokens!692) Unit!17592)

(assert (=> b!1165228 (= lt!398367 (lemmaInvariant!190 thiss!10527))))

(declare-fun b!1165229 () Bool)

(declare-fun res!525944 () Bool)

(assert (=> b!1165229 (=> (not res!525944) (not e!746600))))

(declare-fun size!9055 (BalanceConc!7560) Int)

(assert (=> b!1165229 (= res!525944 (<= to!267 (size!9055 (tokens!1620 thiss!10527))))))

(assert (= (and start!102274 res!525949) b!1165229))

(assert (= (and b!1165229 res!525944) b!1165228))

(assert (= (and b!1165228 res!525948) b!1165219))

(assert (= (and b!1165219 (not res!525945)) b!1165226))

(assert (= (and b!1165226 res!525941) b!1165227))

(assert (= (and b!1165219 (not res!525950)) b!1165222))

(assert (= (and b!1165222 res!525946) b!1165220))

(assert (= (and b!1165220 res!525943) b!1165223))

(assert (= (and b!1165223 (not res!525942)) b!1165225))

(assert (= (and b!1165225 res!525947) b!1165224))

(assert (= b!1165218 b!1165221))

(assert (= start!102274 b!1165218))

(declare-fun m!1334755 () Bool)

(assert (=> b!1165218 m!1334755))

(declare-fun m!1334757 () Bool)

(assert (=> b!1165228 m!1334757))

(declare-fun m!1334759 () Bool)

(assert (=> b!1165228 m!1334759))

(declare-fun m!1334761 () Bool)

(assert (=> b!1165224 m!1334761))

(declare-fun m!1334763 () Bool)

(assert (=> b!1165221 m!1334763))

(declare-fun m!1334765 () Bool)

(assert (=> b!1165219 m!1334765))

(declare-fun m!1334767 () Bool)

(assert (=> b!1165219 m!1334767))

(declare-fun m!1334769 () Bool)

(assert (=> b!1165219 m!1334769))

(assert (=> b!1165219 m!1334765))

(declare-fun m!1334771 () Bool)

(assert (=> b!1165219 m!1334771))

(declare-fun m!1334773 () Bool)

(assert (=> b!1165222 m!1334773))

(declare-fun m!1334775 () Bool)

(assert (=> b!1165222 m!1334775))

(declare-fun m!1334777 () Bool)

(assert (=> b!1165222 m!1334777))

(declare-fun m!1334779 () Bool)

(assert (=> b!1165222 m!1334779))

(assert (=> b!1165222 m!1334777))

(declare-fun m!1334781 () Bool)

(assert (=> b!1165222 m!1334781))

(assert (=> b!1165222 m!1334773))

(declare-fun m!1334783 () Bool)

(assert (=> b!1165222 m!1334783))

(declare-fun m!1334785 () Bool)

(assert (=> b!1165222 m!1334785))

(declare-fun m!1334787 () Bool)

(assert (=> b!1165226 m!1334787))

(declare-fun m!1334789 () Bool)

(assert (=> b!1165220 m!1334789))

(declare-fun m!1334791 () Bool)

(assert (=> b!1165220 m!1334791))

(declare-fun m!1334793 () Bool)

(assert (=> b!1165227 m!1334793))

(declare-fun m!1334795 () Bool)

(assert (=> b!1165223 m!1334795))

(declare-fun m!1334797 () Bool)

(assert (=> start!102274 m!1334797))

(declare-fun m!1334799 () Bool)

(assert (=> b!1165229 m!1334799))

(declare-fun m!1334801 () Bool)

(assert (=> b!1165225 m!1334801))

(check-sat (not b!1165228) (not b!1165226) (not b!1165237) (not b!1165218) (not b!1165229) (not b!1165225) (not b!1165227) (not b!1165219) (not b!1165236) (not b!1165221) (not start!102274) (not b!1165223) (not b!1165222) (not b!1165224) (not b!1165220))
(check-sat)
