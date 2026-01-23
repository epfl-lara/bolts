; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!64616 () Bool)

(assert start!64616)

(declare-fun e!408859 () Bool)

(declare-fun e!408864 () Bool)

(declare-fun tp!201590 () Bool)

(declare-datatypes ((List!7186 0))(
  ( (Nil!7172) (Cons!7172 (h!12573 (_ BitVec 16)) (t!86288 List!7186)) )
))
(declare-datatypes ((TokenValue!1484 0))(
  ( (FloatLiteralValue!2968 (text!10833 List!7186)) (TokenValueExt!1483 (__x!5067 Int)) (Broken!7420 (value!46450 List!7186)) (Object!1497) (End!1484) (Def!1484) (Underscore!1484) (Match!1484) (Else!1484) (Error!1484) (Case!1484) (If!1484) (Extends!1484) (Abstract!1484) (Class!1484) (Val!1484) (DelimiterValue!2968 (del!1544 List!7186)) (KeywordValue!1490 (value!46451 List!7186)) (CommentValue!2968 (value!46452 List!7186)) (WhitespaceValue!2968 (value!46453 List!7186)) (IndentationValue!1484 (value!46454 List!7186)) (String!9157) (Int32!1484) (Broken!7421 (value!46455 List!7186)) (Boolean!1485) (Unit!12486) (OperatorValue!1487 (op!1544 List!7186)) (IdentifierValue!2968 (value!46456 List!7186)) (IdentifierValue!2969 (value!46457 List!7186)) (WhitespaceValue!2969 (value!46458 List!7186)) (True!2968) (False!2968) (Broken!7422 (value!46459 List!7186)) (Broken!7423 (value!46460 List!7186)) (True!2969) (RightBrace!1484) (RightBracket!1484) (Colon!1484) (Null!1484) (Comma!1484) (LeftBracket!1484) (False!2969) (LeftBrace!1484) (ImaginaryLiteralValue!1484 (text!10834 List!7186)) (StringLiteralValue!4452 (value!46461 List!7186)) (EOFValue!1484 (value!46462 List!7186)) (IdentValue!1484 (value!46463 List!7186)) (DelimiterValue!2969 (value!46464 List!7186)) (DedentValue!1484 (value!46465 List!7186)) (NewLineValue!1484 (value!46466 List!7186)) (IntegerValue!4452 (value!46467 (_ BitVec 32)) (text!10835 List!7186)) (IntegerValue!4453 (value!46468 Int) (text!10836 List!7186)) (Times!1484) (Or!1484) (Equal!1484) (Minus!1484) (Broken!7424 (value!46469 List!7186)) (And!1484) (Div!1484) (LessEqual!1484) (Mod!1484) (Concat!3269) (Not!1484) (Plus!1484) (SpaceValue!1484 (value!46470 List!7186)) (IntegerValue!4454 (value!46471 Int) (text!10837 List!7186)) (StringLiteralValue!4453 (text!10838 List!7186)) (FloatLiteralValue!2969 (text!10839 List!7186)) (BytesLiteralValue!1484 (value!46472 List!7186)) (CommentValue!2969 (value!46473 List!7186)) (StringLiteralValue!4454 (value!46474 List!7186)) (ErrorTokenValue!1484 (msg!1545 List!7186)) )
))
(declare-datatypes ((Regex!1785 0))(
  ( (ElementMatch!1785 (c!119005 (_ BitVec 16))) (Concat!3270 (regOne!4082 Regex!1785) (regTwo!4082 Regex!1785)) (EmptyExpr!1785) (Star!1785 (reg!2114 Regex!1785)) (EmptyLang!1785) (Union!1785 (regOne!4083 Regex!1785) (regTwo!4083 Regex!1785)) )
))
(declare-datatypes ((String!9158 0))(
  ( (String!9159 (value!46475 String)) )
))
(declare-datatypes ((IArray!5083 0))(
  ( (IArray!5084 (innerList!2599 List!7186)) )
))
(declare-datatypes ((Conc!2541 0))(
  ( (Node!2541 (left!5815 Conc!2541) (right!6145 Conc!2541) (csize!5312 Int) (cheight!2752 Int)) (Leaf!3782 (xs!5190 IArray!5083) (csize!5313 Int)) (Empty!2541) )
))
(declare-datatypes ((BalanceConc!5094 0))(
  ( (BalanceConc!5095 (c!119006 Conc!2541)) )
))
(declare-datatypes ((TokenValueInjection!2720 0))(
  ( (TokenValueInjection!2721 (toValue!2391 Int) (toChars!2250 Int)) )
))
(declare-datatypes ((Rule!2700 0))(
  ( (Rule!2701 (regex!1450 Regex!1785) (tag!1712 String!9158) (isSeparator!1450 Bool) (transformation!1450 TokenValueInjection!2720)) )
))
(declare-datatypes ((Token!2622 0))(
  ( (Token!2623 (value!46476 TokenValue!1484) (rule!2245 Rule!2700) (size!5686 Int) (originalCharacters!1482 List!7186)) )
))
(declare-datatypes ((List!7187 0))(
  ( (Nil!7173) (Cons!7173 (h!12574 Token!2622) (t!86289 List!7187)) )
))
(declare-datatypes ((IArray!5085 0))(
  ( (IArray!5086 (innerList!2600 List!7187)) )
))
(declare-datatypes ((Conc!2542 0))(
  ( (Node!2542 (left!5816 Conc!2542) (right!6146 Conc!2542) (csize!5314 Int) (cheight!2753 Int)) (Leaf!3783 (xs!5191 IArray!5085) (csize!5315 Int)) (Empty!2542) )
))
(declare-datatypes ((List!7188 0))(
  ( (Nil!7174) (Cons!7174 (h!12575 Rule!2700) (t!86290 List!7188)) )
))
(declare-datatypes ((BalanceConc!5096 0))(
  ( (BalanceConc!5097 (c!119007 Conc!2542)) )
))
(declare-datatypes ((PrintableTokens!204 0))(
  ( (PrintableTokens!205 (rules!8297 List!7188) (tokens!1275 BalanceConc!5096)) )
))
(declare-fun sepR!1 () PrintableTokens!204)

(declare-fun b!661042 () Bool)

(declare-fun inv!9211 (BalanceConc!5096) Bool)

(assert (=> b!661042 (= e!408864 (and tp!201590 (inv!9211 (tokens!1275 sepR!1)) e!408859))))

(declare-fun b!661043 () Bool)

(declare-fun tp!201589 () Bool)

(declare-fun e!408862 () Bool)

(declare-fun e!408860 () Bool)

(declare-fun sepL!1 () PrintableTokens!204)

(assert (=> b!661043 (= e!408862 (and tp!201589 (inv!9211 (tokens!1275 sepL!1)) e!408860))))

(declare-fun b!661044 () Bool)

(declare-fun res!293331 () Bool)

(declare-fun e!408861 () Bool)

(assert (=> b!661044 (=> (not res!293331) (not e!408861))))

(declare-datatypes ((Option!1693 0))(
  ( (None!1692) (Some!1692 (v!17370 PrintableTokens!204)) )
))
(declare-fun lt!282097 () Option!1693)

(get-info :version)

(declare-fun append!274 (PrintableTokens!204 PrintableTokens!204) Option!1693)

(assert (=> b!661044 (= res!293331 (not ((_ is Some!1692) (append!274 (v!17370 lt!282097) sepR!1))))))

(declare-fun b!661045 () Bool)

(declare-fun tp!201591 () Bool)

(declare-fun inv!9212 (Conc!2542) Bool)

(assert (=> b!661045 (= e!408860 (and (inv!9212 (c!119007 (tokens!1275 sepL!1))) tp!201591))))

(declare-fun res!293329 () Bool)

(declare-fun e!408857 () Bool)

(assert (=> start!64616 (=> (not res!293329) (not e!408857))))

(declare-fun objs!31 () PrintableTokens!204)

(declare-fun usesJsonRules!0 (PrintableTokens!204) Bool)

(assert (=> start!64616 (= res!293329 (usesJsonRules!0 objs!31))))

(assert (=> start!64616 e!408857))

(declare-fun e!408863 () Bool)

(declare-fun inv!9213 (PrintableTokens!204) Bool)

(assert (=> start!64616 (and (inv!9213 objs!31) e!408863)))

(assert (=> start!64616 (and (inv!9213 sepL!1) e!408862)))

(assert (=> start!64616 (and (inv!9213 sepR!1) e!408864)))

(declare-fun b!661046 () Bool)

(declare-fun get!2535 (Option!1693) PrintableTokens!204)

(assert (=> b!661046 (= e!408861 (not (usesJsonRules!0 (get!2535 None!1692))))))

(declare-fun b!661047 () Bool)

(declare-fun tp!201588 () Bool)

(assert (=> b!661047 (= e!408859 (and (inv!9212 (c!119007 (tokens!1275 sepR!1))) tp!201588))))

(declare-fun b!661048 () Bool)

(declare-fun e!408858 () Bool)

(declare-fun tp!201587 () Bool)

(assert (=> b!661048 (= e!408858 (and (inv!9212 (c!119007 (tokens!1275 objs!31))) tp!201587))))

(declare-fun b!661049 () Bool)

(declare-fun res!293332 () Bool)

(assert (=> b!661049 (=> (not res!293332) (not e!408857))))

(assert (=> b!661049 (= res!293332 (usesJsonRules!0 sepR!1))))

(declare-fun tp!201592 () Bool)

(declare-fun b!661050 () Bool)

(assert (=> b!661050 (= e!408863 (and tp!201592 (inv!9211 (tokens!1275 objs!31)) e!408858))))

(declare-fun b!661051 () Bool)

(declare-fun res!293328 () Bool)

(assert (=> b!661051 (=> (not res!293328) (not e!408861))))

(assert (=> b!661051 (= res!293328 false)))

(declare-fun b!661052 () Bool)

(assert (=> b!661052 (= e!408857 e!408861)))

(declare-fun res!293327 () Bool)

(assert (=> b!661052 (=> (not res!293327) (not e!408861))))

(assert (=> b!661052 (= res!293327 ((_ is Some!1692) lt!282097))))

(assert (=> b!661052 (= lt!282097 (append!274 sepL!1 objs!31))))

(declare-fun b!661053 () Bool)

(declare-fun res!293330 () Bool)

(assert (=> b!661053 (=> (not res!293330) (not e!408857))))

(assert (=> b!661053 (= res!293330 (usesJsonRules!0 sepL!1))))

(assert (= (and start!64616 res!293329) b!661053))

(assert (= (and b!661053 res!293330) b!661049))

(assert (= (and b!661049 res!293332) b!661052))

(assert (= (and b!661052 res!293327) b!661044))

(assert (= (and b!661044 res!293331) b!661051))

(assert (= (and b!661051 res!293328) b!661046))

(assert (= b!661050 b!661048))

(assert (= start!64616 b!661050))

(assert (= b!661043 b!661045))

(assert (= start!64616 b!661043))

(assert (= b!661042 b!661047))

(assert (= start!64616 b!661042))

(declare-fun m!927487 () Bool)

(assert (=> b!661052 m!927487))

(declare-fun m!927489 () Bool)

(assert (=> b!661050 m!927489))

(declare-fun m!927491 () Bool)

(assert (=> b!661053 m!927491))

(declare-fun m!927493 () Bool)

(assert (=> b!661049 m!927493))

(declare-fun m!927495 () Bool)

(assert (=> b!661048 m!927495))

(declare-fun m!927497 () Bool)

(assert (=> b!661043 m!927497))

(declare-fun m!927499 () Bool)

(assert (=> b!661045 m!927499))

(declare-fun m!927501 () Bool)

(assert (=> b!661042 m!927501))

(declare-fun m!927503 () Bool)

(assert (=> b!661046 m!927503))

(assert (=> b!661046 m!927503))

(declare-fun m!927505 () Bool)

(assert (=> b!661046 m!927505))

(declare-fun m!927507 () Bool)

(assert (=> b!661044 m!927507))

(declare-fun m!927509 () Bool)

(assert (=> b!661047 m!927509))

(declare-fun m!927511 () Bool)

(assert (=> start!64616 m!927511))

(declare-fun m!927513 () Bool)

(assert (=> start!64616 m!927513))

(declare-fun m!927515 () Bool)

(assert (=> start!64616 m!927515))

(declare-fun m!927517 () Bool)

(assert (=> start!64616 m!927517))

(check-sat (not b!661042) (not b!661044) (not b!661053) (not b!661046) (not b!661045) (not b!661052) (not b!661043) (not b!661047) (not b!661050) (not b!661048) (not start!64616) (not b!661049))
(check-sat)
