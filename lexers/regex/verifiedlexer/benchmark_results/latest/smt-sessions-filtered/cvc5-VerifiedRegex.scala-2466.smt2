; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!130674 () Bool)

(assert start!130674)

(declare-fun b!1419884 () Bool)

(declare-fun e!906345 () Bool)

(declare-datatypes ((List!14639 0))(
  ( (Nil!14573) (Cons!14573 (h!19974 (_ BitVec 16)) (t!124412 List!14639)) )
))
(declare-datatypes ((TokenValue!2630 0))(
  ( (FloatLiteralValue!5260 (text!18855 List!14639)) (TokenValueExt!2629 (__x!9066 Int)) (Broken!13150 (value!81998 List!14639)) (Object!2695) (End!2630) (Def!2630) (Underscore!2630) (Match!2630) (Else!2630) (Error!2630) (Case!2630) (If!2630) (Extends!2630) (Abstract!2630) (Class!2630) (Val!2630) (DelimiterValue!5260 (del!2690 List!14639)) (KeywordValue!2636 (value!81999 List!14639)) (CommentValue!5260 (value!82000 List!14639)) (WhitespaceValue!5260 (value!82001 List!14639)) (IndentationValue!2630 (value!82002 List!14639)) (String!17387) (Int32!2630) (Broken!13151 (value!82003 List!14639)) (Boolean!2631) (Unit!21778) (OperatorValue!2633 (op!2690 List!14639)) (IdentifierValue!5260 (value!82004 List!14639)) (IdentifierValue!5261 (value!82005 List!14639)) (WhitespaceValue!5261 (value!82006 List!14639)) (True!5260) (False!5260) (Broken!13152 (value!82007 List!14639)) (Broken!13153 (value!82008 List!14639)) (True!5261) (RightBrace!2630) (RightBracket!2630) (Colon!2630) (Null!2630) (Comma!2630) (LeftBracket!2630) (False!5261) (LeftBrace!2630) (ImaginaryLiteralValue!2630 (text!18856 List!14639)) (StringLiteralValue!7890 (value!82009 List!14639)) (EOFValue!2630 (value!82010 List!14639)) (IdentValue!2630 (value!82011 List!14639)) (DelimiterValue!5261 (value!82012 List!14639)) (DedentValue!2630 (value!82013 List!14639)) (NewLineValue!2630 (value!82014 List!14639)) (IntegerValue!7890 (value!82015 (_ BitVec 32)) (text!18857 List!14639)) (IntegerValue!7891 (value!82016 Int) (text!18858 List!14639)) (Times!2630) (Or!2630) (Equal!2630) (Minus!2630) (Broken!13154 (value!82017 List!14639)) (And!2630) (Div!2630) (LessEqual!2630) (Mod!2630) (Concat!6484) (Not!2630) (Plus!2630) (SpaceValue!2630 (value!82018 List!14639)) (IntegerValue!7892 (value!82019 Int) (text!18859 List!14639)) (StringLiteralValue!7891 (text!18860 List!14639)) (FloatLiteralValue!5261 (text!18861 List!14639)) (BytesLiteralValue!2630 (value!82020 List!14639)) (CommentValue!5261 (value!82021 List!14639)) (StringLiteralValue!7892 (value!82022 List!14639)) (ErrorTokenValue!2630 (msg!2691 List!14639)) )
))
(declare-datatypes ((Regex!3854 0))(
  ( (ElementMatch!3854 (c!233377 (_ BitVec 16))) (Concat!6485 (regOne!8220 Regex!3854) (regTwo!8220 Regex!3854)) (EmptyExpr!3854) (Star!3854 (reg!4183 Regex!3854)) (EmptyLang!3854) (Union!3854 (regOne!8221 Regex!3854) (regTwo!8221 Regex!3854)) )
))
(declare-datatypes ((String!17388 0))(
  ( (String!17389 (value!82023 String)) )
))
(declare-datatypes ((IArray!9793 0))(
  ( (IArray!9794 (innerList!4954 List!14639)) )
))
(declare-datatypes ((Conc!4894 0))(
  ( (Node!4894 (left!12462 Conc!4894) (right!12792 Conc!4894) (csize!10018 Int) (cheight!5105 Int)) (Leaf!7361 (xs!7621 IArray!9793) (csize!10019 Int)) (Empty!4894) )
))
(declare-datatypes ((BalanceConc!9728 0))(
  ( (BalanceConc!9729 (c!233378 Conc!4894)) )
))
(declare-datatypes ((TokenValueInjection!4920 0))(
  ( (TokenValueInjection!4921 (toValue!3839 Int) (toChars!3698 Int)) )
))
(declare-datatypes ((Rule!4880 0))(
  ( (Rule!4881 (regex!2540 Regex!3854) (tag!2802 String!17388) (isSeparator!2540 Bool) (transformation!2540 TokenValueInjection!4920)) )
))
(declare-datatypes ((Token!4742 0))(
  ( (Token!4743 (value!82024 TokenValue!2630) (rule!4303 Rule!4880) (size!12031 Int) (originalCharacters!3402 List!14639)) )
))
(declare-datatypes ((List!14640 0))(
  ( (Nil!14574) (Cons!14574 (h!19975 Token!4742) (t!124413 List!14640)) )
))
(declare-datatypes ((IArray!9795 0))(
  ( (IArray!9796 (innerList!4955 List!14640)) )
))
(declare-datatypes ((Conc!4895 0))(
  ( (Node!4895 (left!12463 Conc!4895) (right!12793 Conc!4895) (csize!10020 Int) (cheight!5106 Int)) (Leaf!7362 (xs!7622 IArray!9795) (csize!10021 Int)) (Empty!4895) )
))
(declare-datatypes ((List!14641 0))(
  ( (Nil!14575) (Cons!14575 (h!19976 Rule!4880) (t!124414 List!14641)) )
))
(declare-datatypes ((BalanceConc!9730 0))(
  ( (BalanceConc!9731 (c!233379 Conc!4895)) )
))
(declare-datatypes ((PrintableTokens!862 0))(
  ( (PrintableTokens!863 (rules!11161 List!14641) (tokens!1853 BalanceConc!9730)) )
))
(declare-datatypes ((List!14642 0))(
  ( (Nil!14576) (Cons!14576 (h!19977 PrintableTokens!862) (t!124415 List!14642)) )
))
(declare-datatypes ((IArray!9797 0))(
  ( (IArray!9798 (innerList!4956 List!14642)) )
))
(declare-datatypes ((Conc!4896 0))(
  ( (Node!4896 (left!12464 Conc!4896) (right!12794 Conc!4896) (csize!10022 Int) (cheight!5107 Int)) (Leaf!7363 (xs!7623 IArray!9797) (csize!10023 Int)) (Empty!4896) )
))
(declare-datatypes ((BalanceConc!9732 0))(
  ( (BalanceConc!9733 (c!233380 Conc!4896)) )
))
(declare-fun objs!24 () BalanceConc!9732)

(declare-fun tp!402585 () Bool)

(declare-fun inv!19238 (Conc!4896) Bool)

(assert (=> b!1419884 (= e!906345 (and (inv!19238 (c!233380 objs!24)) tp!402585))))

(declare-fun b!1419885 () Bool)

(declare-fun e!906346 () Bool)

(declare-fun acc!229 () PrintableTokens!862)

(declare-fun tp!402584 () Bool)

(declare-fun inv!19239 (Conc!4895) Bool)

(assert (=> b!1419885 (= e!906346 (and (inv!19239 (c!233379 (tokens!1853 acc!229))) tp!402584))))

(declare-fun b!1419886 () Bool)

(declare-fun res!642892 () Bool)

(declare-fun e!906348 () Bool)

(assert (=> b!1419886 (=> (not res!642892) (not e!906348))))

(declare-fun size!12032 (BalanceConc!9732) Int)

(assert (=> b!1419886 (= res!642892 (not (= (size!12032 objs!24) 1)))))

(declare-fun res!642898 () Bool)

(assert (=> start!130674 (=> (not res!642898) (not e!906348))))

(declare-fun lambda!62652 () Int)

(declare-fun forall!3638 (BalanceConc!9732 Int) Bool)

(assert (=> start!130674 (= res!642898 (forall!3638 objs!24 lambda!62652))))

(assert (=> start!130674 e!906348))

(declare-fun inv!19240 (BalanceConc!9732) Bool)

(assert (=> start!130674 (and (inv!19240 objs!24) e!906345)))

(declare-fun e!906343 () Bool)

(declare-fun inv!19241 (PrintableTokens!862) Bool)

(assert (=> start!130674 (and (inv!19241 acc!229) e!906343)))

(declare-fun sep!3 () PrintableTokens!862)

(declare-fun e!906347 () Bool)

(assert (=> start!130674 (and (inv!19241 sep!3) e!906347)))

(declare-fun b!1419887 () Bool)

(declare-fun res!642896 () Bool)

(assert (=> b!1419887 (=> (not res!642896) (not e!906348))))

(declare-fun isEmpty!8971 (BalanceConc!9732) Bool)

(assert (=> b!1419887 (= res!642896 (not (isEmpty!8971 objs!24)))))

(declare-fun b!1419888 () Bool)

(declare-fun res!642895 () Bool)

(assert (=> b!1419888 (=> (not res!642895) (not e!906348))))

(assert (=> b!1419888 (= res!642895 false)))

(declare-fun b!1419889 () Bool)

(declare-fun tp!402583 () Bool)

(declare-fun inv!19242 (BalanceConc!9730) Bool)

(assert (=> b!1419889 (= e!906343 (and tp!402583 (inv!19242 (tokens!1853 acc!229)) e!906346))))

(declare-fun b!1419890 () Bool)

(declare-fun usesJsonRules!0 (PrintableTokens!862) Bool)

(declare-datatypes ((Option!2803 0))(
  ( (None!2802) (Some!2802 (v!22202 PrintableTokens!862)) )
))
(declare-fun get!4483 (Option!2803) PrintableTokens!862)

(assert (=> b!1419890 (= e!906348 (not (usesJsonRules!0 (get!4483 None!2802))))))

(declare-fun b!1419891 () Bool)

(declare-fun e!906344 () Bool)

(declare-fun tp!402582 () Bool)

(assert (=> b!1419891 (= e!906344 (and (inv!19239 (c!233379 (tokens!1853 sep!3))) tp!402582))))

(declare-fun b!1419892 () Bool)

(declare-fun res!642894 () Bool)

(assert (=> b!1419892 (=> (not res!642894) (not e!906348))))

(assert (=> b!1419892 (= res!642894 (usesJsonRules!0 acc!229))))

(declare-fun b!1419893 () Bool)

(declare-fun res!642897 () Bool)

(assert (=> b!1419893 (=> (not res!642897) (not e!906348))))

(declare-fun append!455 (PrintableTokens!862 PrintableTokens!862) Option!2803)

(declare-fun head!2780 (BalanceConc!9732) PrintableTokens!862)

(assert (=> b!1419893 (= res!642897 (not (is-Some!2802 (append!455 (head!2780 objs!24) sep!3))))))

(declare-fun tp!402581 () Bool)

(declare-fun b!1419894 () Bool)

(assert (=> b!1419894 (= e!906347 (and tp!402581 (inv!19242 (tokens!1853 sep!3)) e!906344))))

(declare-fun b!1419895 () Bool)

(declare-fun res!642893 () Bool)

(assert (=> b!1419895 (=> (not res!642893) (not e!906348))))

(assert (=> b!1419895 (= res!642893 (usesJsonRules!0 sep!3))))

(assert (= (and start!130674 res!642898) b!1419892))

(assert (= (and b!1419892 res!642894) b!1419895))

(assert (= (and b!1419895 res!642893) b!1419887))

(assert (= (and b!1419887 res!642896) b!1419886))

(assert (= (and b!1419886 res!642892) b!1419893))

(assert (= (and b!1419893 res!642897) b!1419888))

(assert (= (and b!1419888 res!642895) b!1419890))

(assert (= start!130674 b!1419884))

(assert (= b!1419889 b!1419885))

(assert (= start!130674 b!1419889))

(assert (= b!1419894 b!1419891))

(assert (= start!130674 b!1419894))

(declare-fun m!1609485 () Bool)

(assert (=> start!130674 m!1609485))

(declare-fun m!1609487 () Bool)

(assert (=> start!130674 m!1609487))

(declare-fun m!1609489 () Bool)

(assert (=> start!130674 m!1609489))

(declare-fun m!1609491 () Bool)

(assert (=> start!130674 m!1609491))

(declare-fun m!1609493 () Bool)

(assert (=> b!1419887 m!1609493))

(declare-fun m!1609495 () Bool)

(assert (=> b!1419884 m!1609495))

(declare-fun m!1609497 () Bool)

(assert (=> b!1419890 m!1609497))

(assert (=> b!1419890 m!1609497))

(declare-fun m!1609499 () Bool)

(assert (=> b!1419890 m!1609499))

(declare-fun m!1609501 () Bool)

(assert (=> b!1419886 m!1609501))

(declare-fun m!1609503 () Bool)

(assert (=> b!1419889 m!1609503))

(declare-fun m!1609505 () Bool)

(assert (=> b!1419885 m!1609505))

(declare-fun m!1609507 () Bool)

(assert (=> b!1419892 m!1609507))

(declare-fun m!1609509 () Bool)

(assert (=> b!1419891 m!1609509))

(declare-fun m!1609511 () Bool)

(assert (=> b!1419895 m!1609511))

(declare-fun m!1609513 () Bool)

(assert (=> b!1419893 m!1609513))

(assert (=> b!1419893 m!1609513))

(declare-fun m!1609515 () Bool)

(assert (=> b!1419893 m!1609515))

(declare-fun m!1609517 () Bool)

(assert (=> b!1419894 m!1609517))

(push 1)

(assert (not b!1419885))

(assert (not b!1419895))

(assert (not b!1419891))

(assert (not b!1419887))

(assert (not b!1419893))

(assert (not b!1419886))

(assert (not b!1419884))

(assert (not b!1419889))

(assert (not b!1419892))

(assert (not start!130674))

(assert (not b!1419890))

(assert (not b!1419894))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

