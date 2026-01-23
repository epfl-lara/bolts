; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!99126 () Bool)

(assert start!99126)

(declare-fun b!1144826 () Bool)

(assert (=> b!1144826 true))

(declare-fun b!1144821 () Bool)

(declare-fun e!731723 () Bool)

(declare-datatypes ((List!11054 0))(
  ( (Nil!11030) (Cons!11030 (h!16431 (_ BitVec 16)) (t!107922 List!11054)) )
))
(declare-datatypes ((TokenValue!1967 0))(
  ( (FloatLiteralValue!3934 (text!14214 List!11054)) (TokenValueExt!1966 (__x!7651 Int)) (Broken!9835 (value!62149 List!11054)) (Object!1990) (End!1967) (Def!1967) (Underscore!1967) (Match!1967) (Else!1967) (Error!1967) (Case!1967) (If!1967) (Extends!1967) (Abstract!1967) (Class!1967) (Val!1967) (DelimiterValue!3934 (del!2027 List!11054)) (KeywordValue!1973 (value!62150 List!11054)) (CommentValue!3934 (value!62151 List!11054)) (WhitespaceValue!3934 (value!62152 List!11054)) (IndentationValue!1967 (value!62153 List!11054)) (String!13422) (Int32!1967) (Broken!9836 (value!62154 List!11054)) (Boolean!1968) (Unit!16953) (OperatorValue!1970 (op!2027 List!11054)) (IdentifierValue!3934 (value!62155 List!11054)) (IdentifierValue!3935 (value!62156 List!11054)) (WhitespaceValue!3935 (value!62157 List!11054)) (True!3934) (False!3934) (Broken!9837 (value!62158 List!11054)) (Broken!9838 (value!62159 List!11054)) (True!3935) (RightBrace!1967) (RightBracket!1967) (Colon!1967) (Null!1967) (Comma!1967) (LeftBracket!1967) (False!3935) (LeftBrace!1967) (ImaginaryLiteralValue!1967 (text!14215 List!11054)) (StringLiteralValue!5901 (value!62160 List!11054)) (EOFValue!1967 (value!62161 List!11054)) (IdentValue!1967 (value!62162 List!11054)) (DelimiterValue!3935 (value!62163 List!11054)) (DedentValue!1967 (value!62164 List!11054)) (NewLineValue!1967 (value!62165 List!11054)) (IntegerValue!5901 (value!62166 (_ BitVec 32)) (text!14216 List!11054)) (IntegerValue!5902 (value!62167 Int) (text!14217 List!11054)) (Times!1967) (Or!1967) (Equal!1967) (Minus!1967) (Broken!9839 (value!62168 List!11054)) (And!1967) (Div!1967) (LessEqual!1967) (Mod!1967) (Concat!5138) (Not!1967) (Plus!1967) (SpaceValue!1967 (value!62169 List!11054)) (IntegerValue!5903 (value!62170 Int) (text!14218 List!11054)) (StringLiteralValue!5902 (text!14219 List!11054)) (FloatLiteralValue!3935 (text!14220 List!11054)) (BytesLiteralValue!1967 (value!62171 List!11054)) (CommentValue!3935 (value!62172 List!11054)) (StringLiteralValue!5903 (value!62173 List!11054)) (ErrorTokenValue!1967 (msg!2028 List!11054)) )
))
(declare-datatypes ((Regex!3171 0))(
  ( (ElementMatch!3171 (c!192278 (_ BitVec 16))) (Concat!5139 (regOne!6854 Regex!3171) (regTwo!6854 Regex!3171)) (EmptyExpr!3171) (Star!3171 (reg!3500 Regex!3171)) (EmptyLang!3171) (Union!3171 (regOne!6855 Regex!3171) (regTwo!6855 Regex!3171)) )
))
(declare-datatypes ((String!13423 0))(
  ( (String!13424 (value!62174 String)) )
))
(declare-datatypes ((IArray!7081 0))(
  ( (IArray!7082 (innerList!3598 List!11054)) )
))
(declare-datatypes ((Conc!3538 0))(
  ( (Node!3538 (left!9586 Conc!3538) (right!9916 Conc!3538) (csize!7306 Int) (cheight!3749 Int)) (Leaf!5499 (xs!6239 IArray!7081) (csize!7307 Int)) (Empty!3538) )
))
(declare-datatypes ((BalanceConc!7098 0))(
  ( (BalanceConc!7099 (c!192279 Conc!3538)) )
))
(declare-datatypes ((TokenValueInjection!3634 0))(
  ( (TokenValueInjection!3635 (toValue!2998 Int) (toChars!2857 Int)) )
))
(declare-datatypes ((Rule!3602 0))(
  ( (Rule!3603 (regex!1901 Regex!3171) (tag!2163 String!13423) (isSeparator!1901 Bool) (transformation!1901 TokenValueInjection!3634)) )
))
(declare-datatypes ((Token!3464 0))(
  ( (Token!3465 (value!62175 TokenValue!1967) (rule!3322 Rule!3602) (size!8649 Int) (originalCharacters!2455 List!11054)) )
))
(declare-datatypes ((List!11055 0))(
  ( (Nil!11031) (Cons!11031 (h!16432 Token!3464) (t!107923 List!11055)) )
))
(declare-datatypes ((IArray!7083 0))(
  ( (IArray!7084 (innerList!3599 List!11055)) )
))
(declare-datatypes ((Conc!3539 0))(
  ( (Node!3539 (left!9587 Conc!3539) (right!9917 Conc!3539) (csize!7308 Int) (cheight!3750 Int)) (Leaf!5500 (xs!6240 IArray!7083) (csize!7309 Int)) (Empty!3539) )
))
(declare-datatypes ((List!11056 0))(
  ( (Nil!11032) (Cons!11032 (h!16433 Rule!3602) (t!107924 List!11056)) )
))
(declare-datatypes ((BalanceConc!7100 0))(
  ( (BalanceConc!7101 (c!192280 Conc!3539)) )
))
(declare-datatypes ((PrintableTokens!488 0))(
  ( (PrintableTokens!489 (rules!9312 List!11056) (tokens!1486 BalanceConc!7100)) )
))
(declare-fun pt!21 () PrintableTokens!488)

(declare-fun tp!331816 () Bool)

(declare-fun inv!14370 (Conc!3539) Bool)

(assert (=> b!1144821 (= e!731723 (and (inv!14370 (c!192280 (tokens!1486 pt!21))) tp!331816))))

(declare-fun b!1144822 () Bool)

(declare-fun e!731722 () Bool)

(declare-datatypes ((List!11057 0))(
  ( (Nil!11033) (Cons!11033 (h!16434 PrintableTokens!488) (t!107925 List!11057)) )
))
(declare-datatypes ((IArray!7085 0))(
  ( (IArray!7086 (innerList!3600 List!11057)) )
))
(declare-datatypes ((Conc!3540 0))(
  ( (Node!3540 (left!9588 Conc!3540) (right!9918 Conc!3540) (csize!7310 Int) (cheight!3751 Int)) (Leaf!5501 (xs!6241 IArray!7085) (csize!7311 Int)) (Empty!3540) )
))
(declare-datatypes ((BalanceConc!7102 0))(
  ( (BalanceConc!7103 (c!192281 Conc!3540)) )
))
(declare-fun acc!225 () BalanceConc!7102)

(declare-fun tp!331817 () Bool)

(declare-fun inv!14371 (Conc!3540) Bool)

(assert (=> b!1144822 (= e!731722 (and (inv!14371 (c!192281 acc!225)) tp!331817))))

(declare-fun lt!387201 () Int)

(declare-fun bm!81565 () Bool)

(declare-fun call!81570 () PrintableTokens!488)

(declare-fun lt!387200 () Int)

(declare-fun c!192277 () Bool)

(declare-fun slice!105 (PrintableTokens!488 Int Int) PrintableTokens!488)

(assert (=> bm!81565 (= call!81570 (slice!105 pt!21 (ite c!192277 lt!387201 lt!387200) (ite c!192277 (+ 1 lt!387200) (+ 1 lt!387201))))))

(declare-fun res!514796 () Bool)

(declare-fun e!731728 () Bool)

(assert (=> start!99126 (=> (not res!514796) (not e!731728))))

(declare-fun size!108 () Int)

(declare-fun size!8650 (PrintableTokens!488) Int)

(assert (=> start!99126 (= res!514796 (= (size!8650 pt!21) size!108))))

(assert (=> start!99126 e!731728))

(declare-fun e!731724 () Bool)

(declare-fun inv!14372 (PrintableTokens!488) Bool)

(assert (=> start!99126 (and (inv!14372 pt!21) e!731724)))

(assert (=> start!99126 true))

(declare-datatypes ((List!11058 0))(
  ( (Nil!11034) (Cons!11034 (h!16435 Int) (t!107926 List!11058)) )
))
(declare-datatypes ((IArray!7087 0))(
  ( (IArray!7088 (innerList!3601 List!11058)) )
))
(declare-datatypes ((Conc!3541 0))(
  ( (Node!3541 (left!9589 Conc!3541) (right!9919 Conc!3541) (csize!7312 Int) (cheight!3752 Int)) (Leaf!5502 (xs!6242 IArray!7087) (csize!7313 Int)) (Empty!3541) )
))
(declare-datatypes ((BalanceConc!7104 0))(
  ( (BalanceConc!7105 (c!192282 Conc!3541)) )
))
(declare-fun indices!2 () BalanceConc!7104)

(declare-fun e!731726 () Bool)

(declare-fun inv!14373 (BalanceConc!7104) Bool)

(assert (=> start!99126 (and (inv!14373 indices!2) e!731726)))

(declare-fun inv!14374 (BalanceConc!7102) Bool)

(assert (=> start!99126 (and (inv!14374 acc!225) e!731722)))

(declare-fun b!1144823 () Bool)

(declare-fun res!514793 () Bool)

(assert (=> b!1144823 (=> (not res!514793) (not e!731728))))

(declare-fun size!8651 (BalanceConc!7104) Int)

(assert (=> b!1144823 (= res!514793 (>= (size!8651 indices!2) 2))))

(declare-fun b!1144824 () Bool)

(declare-fun res!514795 () Bool)

(assert (=> b!1144824 (=> (not res!514795) (not e!731728))))

(declare-fun usesJsonRules!0 (PrintableTokens!488) Bool)

(assert (=> b!1144824 (= res!514795 (usesJsonRules!0 pt!21))))

(declare-fun b!1144825 () Bool)

(declare-fun e!731725 () PrintableTokens!488)

(assert (=> b!1144825 (= e!731725 call!81570)))

(declare-fun res!514799 () Bool)

(assert (=> b!1144826 (=> (not res!514799) (not e!731728))))

(declare-fun lambda!46026 () Int)

(declare-fun forall!2732 (BalanceConc!7104 Int) Bool)

(assert (=> b!1144826 (= res!514799 (forall!2732 indices!2 lambda!46026))))

(declare-fun b!1144827 () Bool)

(declare-fun res!514794 () Bool)

(declare-fun e!731729 () Bool)

(assert (=> b!1144827 (=> (not res!514794) (not e!731729))))

(declare-fun tail!1641 (BalanceConc!7104) BalanceConc!7104)

(assert (=> b!1144827 (= res!514794 (forall!2732 (tail!1641 (tail!1641 indices!2)) lambda!46026))))

(declare-fun b!1144828 () Bool)

(assert (=> b!1144828 (= e!731725 call!81570)))

(declare-fun b!1144829 () Bool)

(declare-fun e!731727 () Bool)

(assert (=> b!1144829 (= e!731727 e!731729)))

(declare-fun res!514800 () Bool)

(assert (=> b!1144829 (=> (not res!514800) (not e!731729))))

(declare-fun lt!387202 () BalanceConc!7102)

(declare-fun lambda!46027 () Int)

(declare-fun forall!2733 (BalanceConc!7102 Int) Bool)

(assert (=> b!1144829 (= res!514800 (forall!2733 lt!387202 lambda!46027))))

(declare-fun lt!387199 () PrintableTokens!488)

(declare-fun append!356 (BalanceConc!7102 PrintableTokens!488) BalanceConc!7102)

(assert (=> b!1144829 (= lt!387202 (append!356 acc!225 lt!387199))))

(declare-datatypes ((Unit!16954 0))(
  ( (Unit!16955) )
))
(declare-fun lt!387198 () Unit!16954)

(declare-fun lemmaConcatPreservesForall!114 (List!11057 List!11057 Int) Unit!16954)

(declare-fun list!4039 (BalanceConc!7102) List!11057)

(assert (=> b!1144829 (= lt!387198 (lemmaConcatPreservesForall!114 (list!4039 acc!225) (Cons!11033 lt!387199 Nil!11033) lambda!46027))))

(declare-fun b!1144830 () Bool)

(assert (=> b!1144830 (= e!731728 e!731727)))

(declare-fun res!514798 () Bool)

(assert (=> b!1144830 (=> (not res!514798) (not e!731727))))

(assert (=> b!1144830 (= res!514798 (usesJsonRules!0 lt!387199))))

(assert (=> b!1144830 (= lt!387199 e!731725)))

(assert (=> b!1144830 (= c!192277 (<= lt!387201 lt!387200))))

(declare-fun apply!2338 (BalanceConc!7104 Int) Int)

(assert (=> b!1144830 (= lt!387200 (apply!2338 indices!2 1))))

(assert (=> b!1144830 (= lt!387201 (apply!2338 indices!2 0))))

(declare-fun b!1144831 () Bool)

(assert (=> b!1144831 (= e!731729 (not (forall!2733 lt!387202 lambda!46027)))))

(declare-fun b!1144832 () Bool)

(declare-fun tp!331815 () Bool)

(declare-fun inv!14375 (Conc!3541) Bool)

(assert (=> b!1144832 (= e!731726 (and (inv!14375 (c!192282 indices!2)) tp!331815))))

(declare-fun tp!331818 () Bool)

(declare-fun b!1144833 () Bool)

(declare-fun inv!14376 (BalanceConc!7100) Bool)

(assert (=> b!1144833 (= e!731724 (and tp!331818 (inv!14376 (tokens!1486 pt!21)) e!731723))))

(declare-fun b!1144834 () Bool)

(declare-fun res!514797 () Bool)

(assert (=> b!1144834 (=> (not res!514797) (not e!731728))))

(assert (=> b!1144834 (= res!514797 (forall!2733 acc!225 lambda!46027))))

(assert (= (and start!99126 res!514796) b!1144826))

(assert (= (and b!1144826 res!514799) b!1144824))

(assert (= (and b!1144824 res!514795) b!1144834))

(assert (= (and b!1144834 res!514797) b!1144823))

(assert (= (and b!1144823 res!514793) b!1144830))

(assert (= (and b!1144830 c!192277) b!1144828))

(assert (= (and b!1144830 (not c!192277)) b!1144825))

(assert (= (or b!1144828 b!1144825) bm!81565))

(assert (= (and b!1144830 res!514798) b!1144829))

(assert (= (and b!1144829 res!514800) b!1144827))

(assert (= (and b!1144827 res!514794) b!1144831))

(assert (= b!1144833 b!1144821))

(assert (= start!99126 b!1144833))

(assert (= start!99126 b!1144832))

(assert (= start!99126 b!1144822))

(declare-fun m!1305623 () Bool)

(assert (=> b!1144830 m!1305623))

(declare-fun m!1305625 () Bool)

(assert (=> b!1144830 m!1305625))

(declare-fun m!1305627 () Bool)

(assert (=> b!1144830 m!1305627))

(declare-fun m!1305629 () Bool)

(assert (=> b!1144831 m!1305629))

(declare-fun m!1305631 () Bool)

(assert (=> b!1144823 m!1305631))

(declare-fun m!1305633 () Bool)

(assert (=> b!1144826 m!1305633))

(declare-fun m!1305635 () Bool)

(assert (=> b!1144834 m!1305635))

(assert (=> b!1144829 m!1305629))

(declare-fun m!1305637 () Bool)

(assert (=> b!1144829 m!1305637))

(declare-fun m!1305639 () Bool)

(assert (=> b!1144829 m!1305639))

(assert (=> b!1144829 m!1305639))

(declare-fun m!1305641 () Bool)

(assert (=> b!1144829 m!1305641))

(declare-fun m!1305643 () Bool)

(assert (=> b!1144827 m!1305643))

(assert (=> b!1144827 m!1305643))

(declare-fun m!1305645 () Bool)

(assert (=> b!1144827 m!1305645))

(assert (=> b!1144827 m!1305645))

(declare-fun m!1305647 () Bool)

(assert (=> b!1144827 m!1305647))

(declare-fun m!1305649 () Bool)

(assert (=> b!1144833 m!1305649))

(declare-fun m!1305651 () Bool)

(assert (=> bm!81565 m!1305651))

(declare-fun m!1305653 () Bool)

(assert (=> b!1144832 m!1305653))

(declare-fun m!1305655 () Bool)

(assert (=> b!1144824 m!1305655))

(declare-fun m!1305657 () Bool)

(assert (=> b!1144821 m!1305657))

(declare-fun m!1305659 () Bool)

(assert (=> b!1144822 m!1305659))

(declare-fun m!1305661 () Bool)

(assert (=> start!99126 m!1305661))

(declare-fun m!1305663 () Bool)

(assert (=> start!99126 m!1305663))

(declare-fun m!1305665 () Bool)

(assert (=> start!99126 m!1305665))

(declare-fun m!1305667 () Bool)

(assert (=> start!99126 m!1305667))

(check-sat (not bm!81565) (not b!1144833) (not b!1144824) (not b!1144829) (not b!1144822) (not b!1144823) (not b!1144826) (not b!1144830) (not b!1144831) (not start!99126) (not b!1144834) (not b!1144827) (not b!1144821) (not b!1144832))
(check-sat)
