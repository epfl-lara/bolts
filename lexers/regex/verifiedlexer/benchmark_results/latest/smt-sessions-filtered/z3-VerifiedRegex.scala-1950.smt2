; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!95786 () Bool)

(assert start!95786)

(declare-fun b!1108586 () Bool)

(assert (=> b!1108586 true))

(declare-fun res!490753 () Bool)

(declare-fun e!703076 () Bool)

(assert (=> start!95786 (=> (not res!490753) (not e!703076))))

(declare-datatypes ((List!10934 0))(
  ( (Nil!10910) (Cons!10910 (h!16311 (_ BitVec 16)) (t!105526 List!10934)) )
))
(declare-datatypes ((TokenValue!1947 0))(
  ( (FloatLiteralValue!3894 (text!14074 List!10934)) (TokenValueExt!1946 (__x!7618 Int)) (Broken!9735 (value!61579 List!10934)) (Object!1970) (End!1947) (Def!1947) (Underscore!1947) (Match!1947) (Else!1947) (Error!1947) (Case!1947) (If!1947) (Extends!1947) (Abstract!1947) (Class!1947) (Val!1947) (DelimiterValue!3894 (del!2007 List!10934)) (KeywordValue!1953 (value!61580 List!10934)) (CommentValue!3894 (value!61581 List!10934)) (WhitespaceValue!3894 (value!61582 List!10934)) (IndentationValue!1947 (value!61583 List!10934)) (String!13322) (Int32!1947) (Broken!9736 (value!61584 List!10934)) (Boolean!1948) (Unit!16484) (OperatorValue!1950 (op!2007 List!10934)) (IdentifierValue!3894 (value!61585 List!10934)) (IdentifierValue!3895 (value!61586 List!10934)) (WhitespaceValue!3895 (value!61587 List!10934)) (True!3894) (False!3894) (Broken!9737 (value!61588 List!10934)) (Broken!9738 (value!61589 List!10934)) (True!3895) (RightBrace!1947) (RightBracket!1947) (Colon!1947) (Null!1947) (Comma!1947) (LeftBracket!1947) (False!3895) (LeftBrace!1947) (ImaginaryLiteralValue!1947 (text!14075 List!10934)) (StringLiteralValue!5841 (value!61590 List!10934)) (EOFValue!1947 (value!61591 List!10934)) (IdentValue!1947 (value!61592 List!10934)) (DelimiterValue!3895 (value!61593 List!10934)) (DedentValue!1947 (value!61594 List!10934)) (NewLineValue!1947 (value!61595 List!10934)) (IntegerValue!5841 (value!61596 (_ BitVec 32)) (text!14076 List!10934)) (IntegerValue!5842 (value!61597 Int) (text!14077 List!10934)) (Times!1947) (Or!1947) (Equal!1947) (Minus!1947) (Broken!9739 (value!61598 List!10934)) (And!1947) (Div!1947) (LessEqual!1947) (Mod!1947) (Concat!5098) (Not!1947) (Plus!1947) (SpaceValue!1947 (value!61599 List!10934)) (IntegerValue!5843 (value!61600 Int) (text!14078 List!10934)) (StringLiteralValue!5842 (text!14079 List!10934)) (FloatLiteralValue!3895 (text!14080 List!10934)) (BytesLiteralValue!1947 (value!61601 List!10934)) (CommentValue!3895 (value!61602 List!10934)) (StringLiteralValue!5843 (value!61603 List!10934)) (ErrorTokenValue!1947 (msg!2008 List!10934)) )
))
(declare-datatypes ((Regex!3151 0))(
  ( (ElementMatch!3151 (c!188042 (_ BitVec 16))) (Concat!5099 (regOne!6814 Regex!3151) (regTwo!6814 Regex!3151)) (EmptyExpr!3151) (Star!3151 (reg!3480 Regex!3151)) (EmptyLang!3151) (Union!3151 (regOne!6815 Regex!3151) (regTwo!6815 Regex!3151)) )
))
(declare-datatypes ((String!13323 0))(
  ( (String!13324 (value!61604 String)) )
))
(declare-datatypes ((IArray!6921 0))(
  ( (IArray!6922 (innerList!3518 List!10934)) )
))
(declare-datatypes ((Conc!3458 0))(
  ( (Node!3458 (left!9456 Conc!3458) (right!9786 Conc!3458) (csize!7146 Int) (cheight!3669 Int)) (Leaf!5409 (xs!6151 IArray!6921) (csize!7147 Int)) (Empty!3458) )
))
(declare-datatypes ((BalanceConc!6938 0))(
  ( (BalanceConc!6939 (c!188043 Conc!3458)) )
))
(declare-datatypes ((TokenValueInjection!3594 0))(
  ( (TokenValueInjection!3595 (toValue!2962 Int) (toChars!2821 Int)) )
))
(declare-datatypes ((Rule!3562 0))(
  ( (Rule!3563 (regex!1881 Regex!3151) (tag!2143 String!13323) (isSeparator!1881 Bool) (transformation!1881 TokenValueInjection!3594)) )
))
(declare-datatypes ((Token!3424 0))(
  ( (Token!3425 (value!61605 TokenValue!1947) (rule!3302 Rule!3562) (size!8454 Int) (originalCharacters!2435 List!10934)) )
))
(declare-datatypes ((List!10935 0))(
  ( (Nil!10911) (Cons!10911 (h!16312 Token!3424) (t!105527 List!10935)) )
))
(declare-datatypes ((IArray!6923 0))(
  ( (IArray!6924 (innerList!3519 List!10935)) )
))
(declare-datatypes ((Conc!3459 0))(
  ( (Node!3459 (left!9457 Conc!3459) (right!9787 Conc!3459) (csize!7148 Int) (cheight!3670 Int)) (Leaf!5410 (xs!6152 IArray!6923) (csize!7149 Int)) (Empty!3459) )
))
(declare-datatypes ((List!10936 0))(
  ( (Nil!10912) (Cons!10912 (h!16313 Rule!3562) (t!105528 List!10936)) )
))
(declare-datatypes ((BalanceConc!6940 0))(
  ( (BalanceConc!6941 (c!188044 Conc!3459)) )
))
(declare-datatypes ((PrintableTokens!448 0))(
  ( (PrintableTokens!449 (rules!9168 List!10936) (tokens!1430 BalanceConc!6940)) )
))
(declare-fun pt!21 () PrintableTokens!448)

(declare-fun size!108 () Int)

(declare-fun size!8455 (PrintableTokens!448) Int)

(assert (=> start!95786 (= res!490753 (= (size!8455 pt!21) size!108))))

(assert (=> start!95786 e!703076))

(declare-fun e!703078 () Bool)

(declare-fun inv!14011 (PrintableTokens!448) Bool)

(assert (=> start!95786 (and (inv!14011 pt!21) e!703078)))

(assert (=> start!95786 true))

(declare-datatypes ((List!10937 0))(
  ( (Nil!10913) (Cons!10913 (h!16314 Int) (t!105529 List!10937)) )
))
(declare-datatypes ((IArray!6925 0))(
  ( (IArray!6926 (innerList!3520 List!10937)) )
))
(declare-datatypes ((Conc!3460 0))(
  ( (Node!3460 (left!9458 Conc!3460) (right!9788 Conc!3460) (csize!7150 Int) (cheight!3671 Int)) (Leaf!5411 (xs!6153 IArray!6925) (csize!7151 Int)) (Empty!3460) )
))
(declare-datatypes ((BalanceConc!6942 0))(
  ( (BalanceConc!6943 (c!188045 Conc!3460)) )
))
(declare-fun indices!2 () BalanceConc!6942)

(declare-fun e!703079 () Bool)

(declare-fun inv!14012 (BalanceConc!6942) Bool)

(assert (=> start!95786 (and (inv!14012 indices!2) e!703079)))

(declare-datatypes ((List!10938 0))(
  ( (Nil!10914) (Cons!10914 (h!16315 PrintableTokens!448) (t!105530 List!10938)) )
))
(declare-datatypes ((IArray!6927 0))(
  ( (IArray!6928 (innerList!3521 List!10938)) )
))
(declare-datatypes ((Conc!3461 0))(
  ( (Node!3461 (left!9459 Conc!3461) (right!9789 Conc!3461) (csize!7152 Int) (cheight!3672 Int)) (Leaf!5412 (xs!6154 IArray!6927) (csize!7153 Int)) (Empty!3461) )
))
(declare-datatypes ((BalanceConc!6944 0))(
  ( (BalanceConc!6945 (c!188046 Conc!3461)) )
))
(declare-fun acc!225 () BalanceConc!6944)

(declare-fun e!703075 () Bool)

(declare-fun inv!14013 (BalanceConc!6944) Bool)

(assert (=> start!95786 (and (inv!14013 acc!225) e!703075)))

(declare-fun b!1108580 () Bool)

(declare-fun res!490751 () Bool)

(assert (=> b!1108580 (=> (not res!490751) (not e!703076))))

(declare-fun usesJsonRules!0 (PrintableTokens!448) Bool)

(assert (=> b!1108580 (= res!490751 (usesJsonRules!0 pt!21))))

(declare-fun b!1108581 () Bool)

(declare-fun res!490752 () Bool)

(assert (=> b!1108581 (=> (not res!490752) (not e!703076))))

(declare-fun lambda!44801 () Int)

(declare-fun forall!2561 (BalanceConc!6944 Int) Bool)

(assert (=> b!1108581 (= res!490752 (forall!2561 acc!225 lambda!44801))))

(declare-fun b!1108582 () Bool)

(declare-fun e!703077 () Bool)

(declare-fun tp!329334 () Bool)

(declare-fun inv!14014 (Conc!3459) Bool)

(assert (=> b!1108582 (= e!703077 (and (inv!14014 (c!188044 (tokens!1430 pt!21))) tp!329334))))

(declare-fun b!1108583 () Bool)

(declare-fun tp!329333 () Bool)

(declare-fun inv!14015 (Conc!3461) Bool)

(assert (=> b!1108583 (= e!703075 (and (inv!14015 (c!188046 acc!225)) tp!329333))))

(declare-fun b!1108584 () Bool)

(declare-fun e!703074 () Bool)

(declare-fun lt!376265 () Int)

(assert (=> b!1108584 (= e!703074 (>= 1 lt!376265))))

(declare-fun lt!376266 () Int)

(declare-fun apply!2219 (BalanceConc!6942 Int) Int)

(assert (=> b!1108584 (= lt!376266 (apply!2219 indices!2 0))))

(declare-fun b!1108585 () Bool)

(assert (=> b!1108585 (= e!703076 e!703074)))

(declare-fun res!490750 () Bool)

(assert (=> b!1108585 (=> (not res!490750) (not e!703074))))

(assert (=> b!1108585 (= res!490750 (>= lt!376265 2))))

(declare-fun size!8456 (BalanceConc!6942) Int)

(assert (=> b!1108585 (= lt!376265 (size!8456 indices!2))))

(declare-fun res!490749 () Bool)

(assert (=> b!1108586 (=> (not res!490749) (not e!703076))))

(declare-fun lambda!44800 () Int)

(declare-fun forall!2562 (BalanceConc!6942 Int) Bool)

(assert (=> b!1108586 (= res!490749 (forall!2562 indices!2 lambda!44800))))

(declare-fun tp!329336 () Bool)

(declare-fun b!1108587 () Bool)

(declare-fun inv!14016 (BalanceConc!6940) Bool)

(assert (=> b!1108587 (= e!703078 (and tp!329336 (inv!14016 (tokens!1430 pt!21)) e!703077))))

(declare-fun b!1108588 () Bool)

(declare-fun tp!329335 () Bool)

(declare-fun inv!14017 (Conc!3460) Bool)

(assert (=> b!1108588 (= e!703079 (and (inv!14017 (c!188045 indices!2)) tp!329335))))

(assert (= (and start!95786 res!490753) b!1108586))

(assert (= (and b!1108586 res!490749) b!1108580))

(assert (= (and b!1108580 res!490751) b!1108581))

(assert (= (and b!1108581 res!490752) b!1108585))

(assert (= (and b!1108585 res!490750) b!1108584))

(assert (= b!1108587 b!1108582))

(assert (= start!95786 b!1108587))

(assert (= start!95786 b!1108588))

(assert (= start!95786 b!1108583))

(declare-fun m!1265397 () Bool)

(assert (=> b!1108583 m!1265397))

(declare-fun m!1265399 () Bool)

(assert (=> b!1108582 m!1265399))

(declare-fun m!1265401 () Bool)

(assert (=> start!95786 m!1265401))

(declare-fun m!1265403 () Bool)

(assert (=> start!95786 m!1265403))

(declare-fun m!1265405 () Bool)

(assert (=> start!95786 m!1265405))

(declare-fun m!1265407 () Bool)

(assert (=> start!95786 m!1265407))

(declare-fun m!1265409 () Bool)

(assert (=> b!1108580 m!1265409))

(declare-fun m!1265411 () Bool)

(assert (=> b!1108587 m!1265411))

(declare-fun m!1265413 () Bool)

(assert (=> b!1108588 m!1265413))

(declare-fun m!1265415 () Bool)

(assert (=> b!1108586 m!1265415))

(declare-fun m!1265417 () Bool)

(assert (=> b!1108581 m!1265417))

(declare-fun m!1265419 () Bool)

(assert (=> b!1108584 m!1265419))

(declare-fun m!1265421 () Bool)

(assert (=> b!1108585 m!1265421))

(check-sat (not b!1108585) (not b!1108584) (not b!1108581) (not b!1108586) (not b!1108580) (not b!1108583) (not b!1108582) (not b!1108587) (not start!95786) (not b!1108588))
(check-sat)
