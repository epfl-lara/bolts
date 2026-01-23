; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!192290 () Bool)

(assert start!192290)

(declare-fun b!1919738 () Bool)

(declare-fun b_free!54781 () Bool)

(declare-fun b_next!55485 () Bool)

(assert (=> b!1919738 (= b_free!54781 (not b_next!55485))))

(declare-fun tp!548434 () Bool)

(declare-fun b_and!149987 () Bool)

(assert (=> b!1919738 (= tp!548434 b_and!149987)))

(declare-fun b_free!54783 () Bool)

(declare-fun b_next!55487 () Bool)

(assert (=> b!1919738 (= b_free!54783 (not b_next!55487))))

(declare-fun tp!548429 () Bool)

(declare-fun b_and!149989 () Bool)

(assert (=> b!1919738 (= tp!548429 b_and!149989)))

(declare-fun b!1919743 () Bool)

(declare-fun b_free!54785 () Bool)

(declare-fun b_next!55489 () Bool)

(assert (=> b!1919743 (= b_free!54785 (not b_next!55489))))

(declare-fun tp!548428 () Bool)

(declare-fun b_and!149991 () Bool)

(assert (=> b!1919743 (= tp!548428 b_and!149991)))

(declare-fun b_free!54787 () Bool)

(declare-fun b_next!55491 () Bool)

(assert (=> b!1919743 (= b_free!54787 (not b_next!55491))))

(declare-fun tp!548436 () Bool)

(declare-fun b_and!149993 () Bool)

(assert (=> b!1919743 (= tp!548436 b_and!149993)))

(declare-fun b!1919744 () Bool)

(declare-fun b_free!54789 () Bool)

(declare-fun b_next!55493 () Bool)

(assert (=> b!1919744 (= b_free!54789 (not b_next!55493))))

(declare-fun tp!548427 () Bool)

(declare-fun b_and!149995 () Bool)

(assert (=> b!1919744 (= tp!548427 b_and!149995)))

(declare-fun b_free!54791 () Bool)

(declare-fun b_next!55495 () Bool)

(assert (=> b!1919744 (= b_free!54791 (not b_next!55495))))

(declare-fun tp!548439 () Bool)

(declare-fun b_and!149997 () Bool)

(assert (=> b!1919744 (= tp!548439 b_and!149997)))

(declare-fun b!1919731 () Bool)

(declare-fun res!858528 () Bool)

(declare-fun e!1227034 () Bool)

(assert (=> b!1919731 (=> (not res!858528) (not e!1227034))))

(declare-datatypes ((C!10810 0))(
  ( (C!10811 (val!6357 Int)) )
))
(declare-datatypes ((List!21896 0))(
  ( (Nil!21814) (Cons!21814 (h!27215 C!10810) (t!178689 List!21896)) )
))
(declare-datatypes ((List!21897 0))(
  ( (Nil!21815) (Cons!21815 (h!27216 (_ BitVec 16)) (t!178690 List!21897)) )
))
(declare-datatypes ((TokenValue!4043 0))(
  ( (FloatLiteralValue!8086 (text!28746 List!21897)) (TokenValueExt!4042 (__x!13584 Int)) (Broken!20215 (value!122916 List!21897)) (Object!4124) (End!4043) (Def!4043) (Underscore!4043) (Match!4043) (Else!4043) (Error!4043) (Case!4043) (If!4043) (Extends!4043) (Abstract!4043) (Class!4043) (Val!4043) (DelimiterValue!8086 (del!4103 List!21897)) (KeywordValue!4049 (value!122917 List!21897)) (CommentValue!8086 (value!122918 List!21897)) (WhitespaceValue!8086 (value!122919 List!21897)) (IndentationValue!4043 (value!122920 List!21897)) (String!25334) (Int32!4043) (Broken!20216 (value!122921 List!21897)) (Boolean!4044) (Unit!36172) (OperatorValue!4046 (op!4103 List!21897)) (IdentifierValue!8086 (value!122922 List!21897)) (IdentifierValue!8087 (value!122923 List!21897)) (WhitespaceValue!8087 (value!122924 List!21897)) (True!8086) (False!8086) (Broken!20217 (value!122925 List!21897)) (Broken!20218 (value!122926 List!21897)) (True!8087) (RightBrace!4043) (RightBracket!4043) (Colon!4043) (Null!4043) (Comma!4043) (LeftBracket!4043) (False!8087) (LeftBrace!4043) (ImaginaryLiteralValue!4043 (text!28747 List!21897)) (StringLiteralValue!12129 (value!122927 List!21897)) (EOFValue!4043 (value!122928 List!21897)) (IdentValue!4043 (value!122929 List!21897)) (DelimiterValue!8087 (value!122930 List!21897)) (DedentValue!4043 (value!122931 List!21897)) (NewLineValue!4043 (value!122932 List!21897)) (IntegerValue!12129 (value!122933 (_ BitVec 32)) (text!28748 List!21897)) (IntegerValue!12130 (value!122934 Int) (text!28749 List!21897)) (Times!4043) (Or!4043) (Equal!4043) (Minus!4043) (Broken!20219 (value!122935 List!21897)) (And!4043) (Div!4043) (LessEqual!4043) (Mod!4043) (Concat!9375) (Not!4043) (Plus!4043) (SpaceValue!4043 (value!122936 List!21897)) (IntegerValue!12131 (value!122937 Int) (text!28750 List!21897)) (StringLiteralValue!12130 (text!28751 List!21897)) (FloatLiteralValue!8087 (text!28752 List!21897)) (BytesLiteralValue!4043 (value!122938 List!21897)) (CommentValue!8087 (value!122939 List!21897)) (StringLiteralValue!12131 (value!122940 List!21897)) (ErrorTokenValue!4043 (msg!4104 List!21897)) )
))
(declare-datatypes ((Regex!5332 0))(
  ( (ElementMatch!5332 (c!312141 C!10810)) (Concat!9376 (regOne!11176 Regex!5332) (regTwo!11176 Regex!5332)) (EmptyExpr!5332) (Star!5332 (reg!5661 Regex!5332)) (EmptyLang!5332) (Union!5332 (regOne!11177 Regex!5332) (regTwo!11177 Regex!5332)) )
))
(declare-datatypes ((String!25335 0))(
  ( (String!25336 (value!122941 String)) )
))
(declare-datatypes ((IArray!14565 0))(
  ( (IArray!14566 (innerList!7340 List!21896)) )
))
(declare-datatypes ((Conc!7280 0))(
  ( (Node!7280 (left!17368 Conc!7280) (right!17698 Conc!7280) (csize!14790 Int) (cheight!7491 Int)) (Leaf!10697 (xs!10174 IArray!14565) (csize!14791 Int)) (Empty!7280) )
))
(declare-datatypes ((BalanceConc!14376 0))(
  ( (BalanceConc!14377 (c!312142 Conc!7280)) )
))
(declare-datatypes ((TokenValueInjection!7670 0))(
  ( (TokenValueInjection!7671 (toValue!5536 Int) (toChars!5395 Int)) )
))
(declare-datatypes ((Rule!7614 0))(
  ( (Rule!7615 (regex!3907 Regex!5332) (tag!4347 String!25335) (isSeparator!3907 Bool) (transformation!3907 TokenValueInjection!7670)) )
))
(declare-datatypes ((Token!7366 0))(
  ( (Token!7367 (value!122942 TokenValue!4043) (rule!6110 Rule!7614) (size!17053 Int) (originalCharacters!4714 List!21896)) )
))
(declare-datatypes ((List!21898 0))(
  ( (Nil!21816) (Cons!21816 (h!27217 Token!7366) (t!178691 List!21898)) )
))
(declare-fun tokens!598 () List!21898)

(declare-fun isEmpty!13417 (List!21898) Bool)

(assert (=> b!1919731 (= res!858528 (not (isEmpty!13417 tokens!598)))))

(declare-fun b!1919732 () Bool)

(declare-fun res!858529 () Bool)

(assert (=> b!1919732 (=> (not res!858529) (not e!1227034))))

(declare-fun separatorToken!354 () Token!7366)

(declare-datatypes ((LexerInterface!3520 0))(
  ( (LexerInterfaceExt!3517 (__x!13585 Int)) (Lexer!3518) )
))
(declare-fun thiss!23328 () LexerInterface!3520)

(declare-datatypes ((List!21899 0))(
  ( (Nil!21817) (Cons!21817 (h!27218 Rule!7614) (t!178692 List!21899)) )
))
(declare-fun rules!3198 () List!21899)

(declare-fun rulesProduceIndividualToken!1692 (LexerInterface!3520 List!21899 Token!7366) Bool)

(assert (=> b!1919732 (= res!858529 (rulesProduceIndividualToken!1692 thiss!23328 rules!3198 separatorToken!354))))

(declare-fun b!1919733 () Bool)

(declare-fun res!858526 () Bool)

(assert (=> b!1919733 (=> (not res!858526) (not e!1227034))))

(declare-fun rulesProduceEachTokenIndividuallyList!1251 (LexerInterface!3520 List!21899 List!21898) Bool)

(assert (=> b!1919733 (= res!858526 (rulesProduceEachTokenIndividuallyList!1251 thiss!23328 rules!3198 tokens!598))))

(declare-fun e!1227019 () Bool)

(declare-fun b!1919734 () Bool)

(declare-fun tp!548430 () Bool)

(declare-fun e!1227024 () Bool)

(declare-fun inv!28894 (Token!7366) Bool)

(assert (=> b!1919734 (= e!1227019 (and (inv!28894 (h!27217 tokens!598)) e!1227024 tp!548430))))

(declare-fun b!1919735 () Bool)

(declare-fun res!858531 () Bool)

(assert (=> b!1919735 (=> (not res!858531) (not e!1227034))))

(declare-fun rulesInvariant!3127 (LexerInterface!3520 List!21899) Bool)

(assert (=> b!1919735 (= res!858531 (rulesInvariant!3127 thiss!23328 rules!3198))))

(declare-fun e!1227029 () Bool)

(declare-fun tp!548437 () Bool)

(declare-fun b!1919736 () Bool)

(declare-fun e!1227023 () Bool)

(declare-fun inv!28891 (String!25335) Bool)

(declare-fun inv!28895 (TokenValueInjection!7670) Bool)

(assert (=> b!1919736 (= e!1227029 (and tp!548437 (inv!28891 (tag!4347 (rule!6110 separatorToken!354))) (inv!28895 (transformation!3907 (rule!6110 separatorToken!354))) e!1227023))))

(declare-fun e!1227022 () Bool)

(declare-fun b!1919737 () Bool)

(declare-fun e!1227030 () Bool)

(declare-fun tp!548438 () Bool)

(assert (=> b!1919737 (= e!1227030 (and tp!548438 (inv!28891 (tag!4347 (rule!6110 (h!27217 tokens!598)))) (inv!28895 (transformation!3907 (rule!6110 (h!27217 tokens!598)))) e!1227022))))

(declare-fun e!1227020 () Bool)

(assert (=> b!1919738 (= e!1227020 (and tp!548434 tp!548429))))

(declare-fun b!1919739 () Bool)

(declare-fun res!858533 () Bool)

(assert (=> b!1919739 (=> (not res!858533) (not e!1227034))))

(declare-fun lambda!74932 () Int)

(declare-fun forall!4603 (List!21898 Int) Bool)

(assert (=> b!1919739 (= res!858533 (forall!4603 tokens!598 lambda!74932))))

(declare-fun tp!548431 () Bool)

(declare-fun e!1227021 () Bool)

(declare-fun b!1919740 () Bool)

(assert (=> b!1919740 (= e!1227021 (and tp!548431 (inv!28891 (tag!4347 (h!27218 rules!3198))) (inv!28895 (transformation!3907 (h!27218 rules!3198))) e!1227020))))

(declare-fun tp!548435 () Bool)

(declare-fun e!1227031 () Bool)

(declare-fun b!1919741 () Bool)

(declare-fun inv!21 (TokenValue!4043) Bool)

(assert (=> b!1919741 (= e!1227031 (and (inv!21 (value!122942 separatorToken!354)) e!1227029 tp!548435))))

(declare-fun res!858534 () Bool)

(assert (=> start!192290 (=> (not res!858534) (not e!1227034))))

(assert (=> start!192290 (= res!858534 (is-Lexer!3518 thiss!23328))))

(assert (=> start!192290 e!1227034))

(assert (=> start!192290 true))

(declare-fun e!1227033 () Bool)

(assert (=> start!192290 e!1227033))

(assert (=> start!192290 e!1227019))

(assert (=> start!192290 (and (inv!28894 separatorToken!354) e!1227031)))

(declare-fun b!1919742 () Bool)

(declare-fun res!858527 () Bool)

(assert (=> b!1919742 (=> (not res!858527) (not e!1227034))))

(declare-fun isEmpty!13418 (List!21899) Bool)

(assert (=> b!1919742 (= res!858527 (not (isEmpty!13418 rules!3198)))))

(assert (=> b!1919743 (= e!1227023 (and tp!548428 tp!548436))))

(assert (=> b!1919744 (= e!1227022 (and tp!548427 tp!548439))))

(declare-fun b!1919745 () Bool)

(declare-fun res!858532 () Bool)

(assert (=> b!1919745 (=> (not res!858532) (not e!1227034))))

(declare-fun sepAndNonSepRulesDisjointChars!1005 (List!21899 List!21899) Bool)

(assert (=> b!1919745 (= res!858532 (sepAndNonSepRulesDisjointChars!1005 rules!3198 rules!3198))))

(declare-fun b!1919746 () Bool)

(declare-fun tp!548432 () Bool)

(assert (=> b!1919746 (= e!1227033 (and e!1227021 tp!548432))))

(declare-fun b!1919747 () Bool)

(declare-fun res!858525 () Bool)

(assert (=> b!1919747 (=> (not res!858525) (not e!1227034))))

(assert (=> b!1919747 (= res!858525 (isSeparator!3907 (rule!6110 separatorToken!354)))))

(declare-fun b!1919748 () Bool)

(declare-fun res!858530 () Bool)

(assert (=> b!1919748 (=> (not res!858530) (not e!1227034))))

(assert (=> b!1919748 (= res!858530 (not (is-Cons!21816 tokens!598)))))

(declare-fun b!1919749 () Bool)

(assert (=> b!1919749 (= e!1227034 false)))

(declare-fun lt!736269 () List!21896)

(declare-fun printWithSeparatorTokenWhenNeededList!559 (LexerInterface!3520 List!21899 List!21898 Token!7366) List!21896)

(assert (=> b!1919749 (= lt!736269 (printWithSeparatorTokenWhenNeededList!559 thiss!23328 rules!3198 tokens!598 separatorToken!354))))

(declare-fun b!1919750 () Bool)

(declare-fun tp!548433 () Bool)

(assert (=> b!1919750 (= e!1227024 (and (inv!21 (value!122942 (h!27217 tokens!598))) e!1227030 tp!548433))))

(assert (= (and start!192290 res!858534) b!1919742))

(assert (= (and b!1919742 res!858527) b!1919735))

(assert (= (and b!1919735 res!858531) b!1919733))

(assert (= (and b!1919733 res!858526) b!1919732))

(assert (= (and b!1919732 res!858529) b!1919747))

(assert (= (and b!1919747 res!858525) b!1919739))

(assert (= (and b!1919739 res!858533) b!1919745))

(assert (= (and b!1919745 res!858532) b!1919748))

(assert (= (and b!1919748 res!858530) b!1919731))

(assert (= (and b!1919731 res!858528) b!1919749))

(assert (= b!1919740 b!1919738))

(assert (= b!1919746 b!1919740))

(assert (= (and start!192290 (is-Cons!21817 rules!3198)) b!1919746))

(assert (= b!1919737 b!1919744))

(assert (= b!1919750 b!1919737))

(assert (= b!1919734 b!1919750))

(assert (= (and start!192290 (is-Cons!21816 tokens!598)) b!1919734))

(assert (= b!1919736 b!1919743))

(assert (= b!1919741 b!1919736))

(assert (= start!192290 b!1919741))

(declare-fun m!2355123 () Bool)

(assert (=> b!1919749 m!2355123))

(declare-fun m!2355125 () Bool)

(assert (=> b!1919739 m!2355125))

(declare-fun m!2355127 () Bool)

(assert (=> b!1919737 m!2355127))

(declare-fun m!2355129 () Bool)

(assert (=> b!1919737 m!2355129))

(declare-fun m!2355131 () Bool)

(assert (=> b!1919735 m!2355131))

(declare-fun m!2355133 () Bool)

(assert (=> b!1919732 m!2355133))

(declare-fun m!2355135 () Bool)

(assert (=> b!1919734 m!2355135))

(declare-fun m!2355137 () Bool)

(assert (=> b!1919741 m!2355137))

(declare-fun m!2355139 () Bool)

(assert (=> b!1919733 m!2355139))

(declare-fun m!2355141 () Bool)

(assert (=> b!1919750 m!2355141))

(declare-fun m!2355143 () Bool)

(assert (=> b!1919731 m!2355143))

(declare-fun m!2355145 () Bool)

(assert (=> b!1919742 m!2355145))

(declare-fun m!2355147 () Bool)

(assert (=> start!192290 m!2355147))

(declare-fun m!2355149 () Bool)

(assert (=> b!1919740 m!2355149))

(declare-fun m!2355151 () Bool)

(assert (=> b!1919740 m!2355151))

(declare-fun m!2355153 () Bool)

(assert (=> b!1919736 m!2355153))

(declare-fun m!2355155 () Bool)

(assert (=> b!1919736 m!2355155))

(declare-fun m!2355157 () Bool)

(assert (=> b!1919745 m!2355157))

(push 1)

(assert (not b_next!55491))

(assert (not b!1919734))

(assert (not b!1919735))

(assert (not b!1919732))

(assert (not b!1919731))

(assert (not b!1919750))

(assert (not b_next!55489))

(assert (not b!1919740))

(assert b_and!149993)

(assert (not b_next!55493))

(assert (not b!1919736))

(assert (not b!1919739))

(assert b_and!149995)

(assert b_and!149997)

(assert (not b!1919746))

(assert (not b!1919741))

(assert b_and!149991)

(assert b_and!149987)

(assert (not b!1919749))

(assert (not b!1919737))

(assert (not b!1919733))

(assert (not b!1919745))

(assert (not b_next!55495))

(assert (not b!1919742))

(assert (not start!192290))

(assert (not b_next!55485))

(assert (not b_next!55487))

(assert b_and!149989)

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!55491))

(assert b_and!149991)

(assert b_and!149987)

(assert (not b_next!55489))

(assert b_and!149993)

(assert (not b_next!55493))

(assert (not b_next!55495))

(assert b_and!149995)

(assert b_and!149997)

(assert (not b_next!55485))

(assert (not b_next!55487))

(assert b_and!149989)

(check-sat)

(pop 1)

