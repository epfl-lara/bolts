; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!99122 () Bool)

(assert start!99122)

(declare-fun b!1144740 () Bool)

(assert (=> b!1144740 true))

(declare-fun b!1144734 () Bool)

(declare-fun res!514747 () Bool)

(declare-fun e!731675 () Bool)

(assert (=> b!1144734 (=> (not res!514747) (not e!731675))))

(declare-datatypes ((List!11044 0))(
  ( (Nil!11020) (Cons!11020 (h!16421 (_ BitVec 16)) (t!107912 List!11044)) )
))
(declare-datatypes ((TokenValue!1965 0))(
  ( (FloatLiteralValue!3930 (text!14200 List!11044)) (TokenValueExt!1964 (__x!7649 Int)) (Broken!9825 (value!62092 List!11044)) (Object!1988) (End!1965) (Def!1965) (Underscore!1965) (Match!1965) (Else!1965) (Error!1965) (Case!1965) (If!1965) (Extends!1965) (Abstract!1965) (Class!1965) (Val!1965) (DelimiterValue!3930 (del!2025 List!11044)) (KeywordValue!1971 (value!62093 List!11044)) (CommentValue!3930 (value!62094 List!11044)) (WhitespaceValue!3930 (value!62095 List!11044)) (IndentationValue!1965 (value!62096 List!11044)) (String!13412) (Int32!1965) (Broken!9826 (value!62097 List!11044)) (Boolean!1966) (Unit!16947) (OperatorValue!1968 (op!2025 List!11044)) (IdentifierValue!3930 (value!62098 List!11044)) (IdentifierValue!3931 (value!62099 List!11044)) (WhitespaceValue!3931 (value!62100 List!11044)) (True!3930) (False!3930) (Broken!9827 (value!62101 List!11044)) (Broken!9828 (value!62102 List!11044)) (True!3931) (RightBrace!1965) (RightBracket!1965) (Colon!1965) (Null!1965) (Comma!1965) (LeftBracket!1965) (False!3931) (LeftBrace!1965) (ImaginaryLiteralValue!1965 (text!14201 List!11044)) (StringLiteralValue!5895 (value!62103 List!11044)) (EOFValue!1965 (value!62104 List!11044)) (IdentValue!1965 (value!62105 List!11044)) (DelimiterValue!3931 (value!62106 List!11044)) (DedentValue!1965 (value!62107 List!11044)) (NewLineValue!1965 (value!62108 List!11044)) (IntegerValue!5895 (value!62109 (_ BitVec 32)) (text!14202 List!11044)) (IntegerValue!5896 (value!62110 Int) (text!14203 List!11044)) (Times!1965) (Or!1965) (Equal!1965) (Minus!1965) (Broken!9829 (value!62111 List!11044)) (And!1965) (Div!1965) (LessEqual!1965) (Mod!1965) (Concat!5134) (Not!1965) (Plus!1965) (SpaceValue!1965 (value!62112 List!11044)) (IntegerValue!5897 (value!62113 Int) (text!14204 List!11044)) (StringLiteralValue!5896 (text!14205 List!11044)) (FloatLiteralValue!3931 (text!14206 List!11044)) (BytesLiteralValue!1965 (value!62114 List!11044)) (CommentValue!3931 (value!62115 List!11044)) (StringLiteralValue!5897 (value!62116 List!11044)) (ErrorTokenValue!1965 (msg!2026 List!11044)) )
))
(declare-datatypes ((Regex!3169 0))(
  ( (ElementMatch!3169 (c!192262 (_ BitVec 16))) (Concat!5135 (regOne!6850 Regex!3169) (regTwo!6850 Regex!3169)) (EmptyExpr!3169) (Star!3169 (reg!3498 Regex!3169)) (EmptyLang!3169) (Union!3169 (regOne!6851 Regex!3169) (regTwo!6851 Regex!3169)) )
))
(declare-datatypes ((String!13413 0))(
  ( (String!13414 (value!62117 String)) )
))
(declare-datatypes ((IArray!7065 0))(
  ( (IArray!7066 (innerList!3590 List!11044)) )
))
(declare-datatypes ((Conc!3530 0))(
  ( (Node!3530 (left!9573 Conc!3530) (right!9903 Conc!3530) (csize!7290 Int) (cheight!3741 Int)) (Leaf!5490 (xs!6231 IArray!7065) (csize!7291 Int)) (Empty!3530) )
))
(declare-datatypes ((BalanceConc!7082 0))(
  ( (BalanceConc!7083 (c!192263 Conc!3530)) )
))
(declare-datatypes ((TokenValueInjection!3630 0))(
  ( (TokenValueInjection!3631 (toValue!2996 Int) (toChars!2855 Int)) )
))
(declare-datatypes ((Rule!3598 0))(
  ( (Rule!3599 (regex!1899 Regex!3169) (tag!2161 String!13413) (isSeparator!1899 Bool) (transformation!1899 TokenValueInjection!3630)) )
))
(declare-datatypes ((Token!3460 0))(
  ( (Token!3461 (value!62118 TokenValue!1965) (rule!3320 Rule!3598) (size!8643 Int) (originalCharacters!2453 List!11044)) )
))
(declare-datatypes ((List!11045 0))(
  ( (Nil!11021) (Cons!11021 (h!16422 Token!3460) (t!107913 List!11045)) )
))
(declare-datatypes ((IArray!7067 0))(
  ( (IArray!7068 (innerList!3591 List!11045)) )
))
(declare-datatypes ((Conc!3531 0))(
  ( (Node!3531 (left!9574 Conc!3531) (right!9904 Conc!3531) (csize!7292 Int) (cheight!3742 Int)) (Leaf!5491 (xs!6232 IArray!7067) (csize!7293 Int)) (Empty!3531) )
))
(declare-datatypes ((List!11046 0))(
  ( (Nil!11022) (Cons!11022 (h!16423 Rule!3598) (t!107914 List!11046)) )
))
(declare-datatypes ((BalanceConc!7084 0))(
  ( (BalanceConc!7085 (c!192264 Conc!3531)) )
))
(declare-datatypes ((PrintableTokens!484 0))(
  ( (PrintableTokens!485 (rules!9310 List!11046) (tokens!1484 BalanceConc!7084)) )
))
(declare-datatypes ((List!11047 0))(
  ( (Nil!11023) (Cons!11023 (h!16424 PrintableTokens!484) (t!107915 List!11047)) )
))
(declare-datatypes ((IArray!7069 0))(
  ( (IArray!7070 (innerList!3592 List!11047)) )
))
(declare-datatypes ((Conc!3532 0))(
  ( (Node!3532 (left!9575 Conc!3532) (right!9905 Conc!3532) (csize!7294 Int) (cheight!3743 Int)) (Leaf!5492 (xs!6233 IArray!7069) (csize!7295 Int)) (Empty!3532) )
))
(declare-datatypes ((BalanceConc!7086 0))(
  ( (BalanceConc!7087 (c!192265 Conc!3532)) )
))
(declare-fun acc!225 () BalanceConc!7086)

(declare-fun lambda!45999 () Int)

(declare-fun forall!2728 (BalanceConc!7086 Int) Bool)

(assert (=> b!1144734 (= res!514747 (forall!2728 acc!225 lambda!45999))))

(declare-fun b!1144735 () Bool)

(declare-fun e!731680 () Bool)

(assert (=> b!1144735 (= e!731675 e!731680)))

(declare-fun res!514746 () Bool)

(assert (=> b!1144735 (=> (not res!514746) (not e!731680))))

(declare-fun lt!387169 () PrintableTokens!484)

(declare-fun usesJsonRules!0 (PrintableTokens!484) Bool)

(assert (=> b!1144735 (= res!514746 (usesJsonRules!0 lt!387169))))

(declare-fun e!731677 () PrintableTokens!484)

(assert (=> b!1144735 (= lt!387169 e!731677)))

(declare-fun c!192261 () Bool)

(declare-fun lt!387171 () Int)

(declare-fun lt!387170 () Int)

(assert (=> b!1144735 (= c!192261 (<= lt!387171 lt!387170))))

(declare-datatypes ((List!11048 0))(
  ( (Nil!11024) (Cons!11024 (h!16425 Int) (t!107916 List!11048)) )
))
(declare-datatypes ((IArray!7071 0))(
  ( (IArray!7072 (innerList!3593 List!11048)) )
))
(declare-datatypes ((Conc!3533 0))(
  ( (Node!3533 (left!9576 Conc!3533) (right!9906 Conc!3533) (csize!7296 Int) (cheight!3744 Int)) (Leaf!5493 (xs!6234 IArray!7071) (csize!7297 Int)) (Empty!3533) )
))
(declare-datatypes ((BalanceConc!7088 0))(
  ( (BalanceConc!7089 (c!192266 Conc!3533)) )
))
(declare-fun indices!2 () BalanceConc!7088)

(declare-fun apply!2336 (BalanceConc!7088 Int) Int)

(assert (=> b!1144735 (= lt!387170 (apply!2336 indices!2 1))))

(assert (=> b!1144735 (= lt!387171 (apply!2336 indices!2 0))))

(declare-fun b!1144736 () Bool)

(declare-fun res!514748 () Bool)

(assert (=> b!1144736 (=> (not res!514748) (not e!731675))))

(declare-fun size!8644 (BalanceConc!7088) Int)

(assert (=> b!1144736 (= res!514748 (>= (size!8644 indices!2) 2))))

(declare-fun call!81564 () PrintableTokens!484)

(declare-fun bm!81559 () Bool)

(declare-fun pt!21 () PrintableTokens!484)

(declare-fun slice!103 (PrintableTokens!484 Int Int) PrintableTokens!484)

(assert (=> bm!81559 (= call!81564 (slice!103 pt!21 (ite c!192261 lt!387171 lt!387170) (ite c!192261 (+ 1 lt!387170) (+ 1 lt!387171))))))

(declare-fun b!1144738 () Bool)

(assert (=> b!1144738 (= e!731677 call!81564)))

(declare-fun b!1144739 () Bool)

(declare-fun e!731674 () Bool)

(declare-fun tp!331794 () Bool)

(declare-fun inv!14353 (Conc!3531) Bool)

(assert (=> b!1144739 (= e!731674 (and (inv!14353 (c!192264 (tokens!1484 pt!21))) tp!331794))))

(declare-fun res!514751 () Bool)

(assert (=> b!1144740 (=> (not res!514751) (not e!731675))))

(declare-fun lambda!45998 () Int)

(declare-fun forall!2729 (BalanceConc!7088 Int) Bool)

(assert (=> b!1144740 (= res!514751 (forall!2729 indices!2 lambda!45998))))

(declare-fun b!1144741 () Bool)

(declare-fun e!731681 () Bool)

(assert (=> b!1144741 (= e!731680 e!731681)))

(declare-fun res!514749 () Bool)

(assert (=> b!1144741 (=> (not res!514749) (not e!731681))))

(declare-fun append!354 (BalanceConc!7086 PrintableTokens!484) BalanceConc!7086)

(assert (=> b!1144741 (= res!514749 (forall!2728 (append!354 acc!225 lt!387169) lambda!45999))))

(declare-datatypes ((Unit!16948 0))(
  ( (Unit!16949) )
))
(declare-fun lt!387172 () Unit!16948)

(declare-fun lemmaConcatPreservesForall!112 (List!11047 List!11047 Int) Unit!16948)

(declare-fun list!4037 (BalanceConc!7086) List!11047)

(assert (=> b!1144741 (= lt!387172 (lemmaConcatPreservesForall!112 (list!4037 acc!225) (Cons!11023 lt!387169 Nil!11023) lambda!45999))))

(declare-fun tp!331791 () Bool)

(declare-fun e!731678 () Bool)

(declare-fun b!1144742 () Bool)

(declare-fun inv!14354 (BalanceConc!7084) Bool)

(assert (=> b!1144742 (= e!731678 (and tp!331791 (inv!14354 (tokens!1484 pt!21)) e!731674))))

(declare-fun res!514750 () Bool)

(assert (=> start!99122 (=> (not res!514750) (not e!731675))))

(declare-fun size!108 () Int)

(declare-fun size!8645 (PrintableTokens!484) Int)

(assert (=> start!99122 (= res!514750 (= (size!8645 pt!21) size!108))))

(assert (=> start!99122 e!731675))

(declare-fun inv!14355 (PrintableTokens!484) Bool)

(assert (=> start!99122 (and (inv!14355 pt!21) e!731678)))

(assert (=> start!99122 true))

(declare-fun e!731679 () Bool)

(declare-fun inv!14356 (BalanceConc!7088) Bool)

(assert (=> start!99122 (and (inv!14356 indices!2) e!731679)))

(declare-fun e!731676 () Bool)

(declare-fun inv!14357 (BalanceConc!7086) Bool)

(assert (=> start!99122 (and (inv!14357 acc!225) e!731676)))

(declare-fun b!1144737 () Bool)

(declare-fun tp!331792 () Bool)

(declare-fun inv!14358 (Conc!3533) Bool)

(assert (=> b!1144737 (= e!731679 (and (inv!14358 (c!192266 indices!2)) tp!331792))))

(declare-fun b!1144743 () Bool)

(declare-fun tp!331793 () Bool)

(declare-fun inv!14359 (Conc!3532) Bool)

(assert (=> b!1144743 (= e!731676 (and (inv!14359 (c!192265 acc!225)) tp!331793))))

(declare-fun b!1144744 () Bool)

(assert (=> b!1144744 (= e!731677 call!81564)))

(declare-fun b!1144745 () Bool)

(assert (=> b!1144745 (= e!731681 false)))

(declare-fun lt!387168 () Bool)

(declare-fun tail!1639 (BalanceConc!7088) BalanceConc!7088)

(assert (=> b!1144745 (= lt!387168 (forall!2729 (tail!1639 (tail!1639 indices!2)) lambda!45998))))

(declare-fun b!1144746 () Bool)

(declare-fun res!514752 () Bool)

(assert (=> b!1144746 (=> (not res!514752) (not e!731675))))

(assert (=> b!1144746 (= res!514752 (usesJsonRules!0 pt!21))))

(assert (= (and start!99122 res!514750) b!1144740))

(assert (= (and b!1144740 res!514751) b!1144746))

(assert (= (and b!1144746 res!514752) b!1144734))

(assert (= (and b!1144734 res!514747) b!1144736))

(assert (= (and b!1144736 res!514748) b!1144735))

(assert (= (and b!1144735 c!192261) b!1144738))

(assert (= (and b!1144735 (not c!192261)) b!1144744))

(assert (= (or b!1144738 b!1144744) bm!81559))

(assert (= (and b!1144735 res!514746) b!1144741))

(assert (= (and b!1144741 res!514749) b!1144745))

(assert (= b!1144742 b!1144739))

(assert (= start!99122 b!1144742))

(assert (= start!99122 b!1144737))

(assert (= start!99122 b!1144743))

(declare-fun m!1305531 () Bool)

(assert (=> b!1144746 m!1305531))

(declare-fun m!1305533 () Bool)

(assert (=> bm!81559 m!1305533))

(declare-fun m!1305535 () Bool)

(assert (=> b!1144735 m!1305535))

(declare-fun m!1305537 () Bool)

(assert (=> b!1144735 m!1305537))

(declare-fun m!1305539 () Bool)

(assert (=> b!1144735 m!1305539))

(declare-fun m!1305541 () Bool)

(assert (=> b!1144743 m!1305541))

(declare-fun m!1305543 () Bool)

(assert (=> b!1144734 m!1305543))

(declare-fun m!1305545 () Bool)

(assert (=> b!1144736 m!1305545))

(declare-fun m!1305547 () Bool)

(assert (=> start!99122 m!1305547))

(declare-fun m!1305549 () Bool)

(assert (=> start!99122 m!1305549))

(declare-fun m!1305551 () Bool)

(assert (=> start!99122 m!1305551))

(declare-fun m!1305553 () Bool)

(assert (=> start!99122 m!1305553))

(declare-fun m!1305555 () Bool)

(assert (=> b!1144742 m!1305555))

(declare-fun m!1305557 () Bool)

(assert (=> b!1144740 m!1305557))

(declare-fun m!1305559 () Bool)

(assert (=> b!1144741 m!1305559))

(assert (=> b!1144741 m!1305559))

(declare-fun m!1305561 () Bool)

(assert (=> b!1144741 m!1305561))

(declare-fun m!1305563 () Bool)

(assert (=> b!1144741 m!1305563))

(assert (=> b!1144741 m!1305563))

(declare-fun m!1305565 () Bool)

(assert (=> b!1144741 m!1305565))

(declare-fun m!1305567 () Bool)

(assert (=> b!1144739 m!1305567))

(declare-fun m!1305569 () Bool)

(assert (=> b!1144745 m!1305569))

(assert (=> b!1144745 m!1305569))

(declare-fun m!1305571 () Bool)

(assert (=> b!1144745 m!1305571))

(assert (=> b!1144745 m!1305571))

(declare-fun m!1305573 () Bool)

(assert (=> b!1144745 m!1305573))

(declare-fun m!1305575 () Bool)

(assert (=> b!1144737 m!1305575))

(check-sat (not b!1144742) (not bm!81559) (not b!1144734) (not b!1144739) (not start!99122) (not b!1144746) (not b!1144736) (not b!1144740) (not b!1144743) (not b!1144745) (not b!1144741) (not b!1144737) (not b!1144735))
(check-sat)
