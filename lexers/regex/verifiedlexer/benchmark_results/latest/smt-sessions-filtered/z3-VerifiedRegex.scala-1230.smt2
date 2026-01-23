; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!64466 () Bool)

(assert start!64466)

(declare-fun b!659471 () Bool)

(assert (=> b!659471 true))

(declare-fun res!292796 () Bool)

(declare-fun e!407792 () Bool)

(assert (=> start!64466 (=> (not res!292796) (not e!407792))))

(declare-fun from!502 () Int)

(assert (=> start!64466 (= res!292796 (>= from!502 0))))

(assert (=> start!64466 e!407792))

(assert (=> start!64466 true))

(declare-datatypes ((List!7126 0))(
  ( (Nil!7112) (Cons!7112 (h!12513 Int) (t!86107 List!7126)) )
))
(declare-datatypes ((IArray!4997 0))(
  ( (IArray!4998 (innerList!2556 List!7126)) )
))
(declare-datatypes ((Conc!2498 0))(
  ( (Node!2498 (left!5758 Conc!2498) (right!6088 Conc!2498) (csize!5226 Int) (cheight!2709 Int)) (Leaf!3729 (xs!5147 IArray!4997) (csize!5227 Int)) (Empty!2498) )
))
(declare-datatypes ((BalanceConc!5008 0))(
  ( (BalanceConc!5009 (c!118720 Conc!2498)) )
))
(declare-fun acc!218 () BalanceConc!5008)

(declare-fun e!407794 () Bool)

(declare-fun inv!9083 (BalanceConc!5008) Bool)

(assert (=> start!64466 (and (inv!9083 acc!218) e!407794)))

(declare-datatypes ((List!7127 0))(
  ( (Nil!7113) (Cons!7113 (h!12514 (_ BitVec 16)) (t!86108 List!7127)) )
))
(declare-datatypes ((TokenValue!1464 0))(
  ( (FloatLiteralValue!2928 (text!10693 List!7127)) (TokenValueExt!1463 (__x!5040 Int)) (Broken!7320 (value!45880 List!7127)) (Object!1477) (End!1464) (Def!1464) (Underscore!1464) (Match!1464) (Else!1464) (Error!1464) (Case!1464) (If!1464) (Extends!1464) (Abstract!1464) (Class!1464) (Val!1464) (DelimiterValue!2928 (del!1524 List!7127)) (KeywordValue!1470 (value!45881 List!7127)) (CommentValue!2928 (value!45882 List!7127)) (WhitespaceValue!2928 (value!45883 List!7127)) (IndentationValue!1464 (value!45884 List!7127)) (String!9057) (Int32!1464) (Broken!7321 (value!45885 List!7127)) (Boolean!1465) (Unit!12322) (OperatorValue!1467 (op!1524 List!7127)) (IdentifierValue!2928 (value!45886 List!7127)) (IdentifierValue!2929 (value!45887 List!7127)) (WhitespaceValue!2929 (value!45888 List!7127)) (True!2928) (False!2928) (Broken!7322 (value!45889 List!7127)) (Broken!7323 (value!45890 List!7127)) (True!2929) (RightBrace!1464) (RightBracket!1464) (Colon!1464) (Null!1464) (Comma!1464) (LeftBracket!1464) (False!2929) (LeftBrace!1464) (ImaginaryLiteralValue!1464 (text!10694 List!7127)) (StringLiteralValue!4392 (value!45891 List!7127)) (EOFValue!1464 (value!45892 List!7127)) (IdentValue!1464 (value!45893 List!7127)) (DelimiterValue!2929 (value!45894 List!7127)) (DedentValue!1464 (value!45895 List!7127)) (NewLineValue!1464 (value!45896 List!7127)) (IntegerValue!4392 (value!45897 (_ BitVec 32)) (text!10695 List!7127)) (IntegerValue!4393 (value!45898 Int) (text!10696 List!7127)) (Times!1464) (Or!1464) (Equal!1464) (Minus!1464) (Broken!7324 (value!45899 List!7127)) (And!1464) (Div!1464) (LessEqual!1464) (Mod!1464) (Concat!3229) (Not!1464) (Plus!1464) (SpaceValue!1464 (value!45900 List!7127)) (IntegerValue!4394 (value!45901 Int) (text!10697 List!7127)) (StringLiteralValue!4393 (text!10698 List!7127)) (FloatLiteralValue!2929 (text!10699 List!7127)) (BytesLiteralValue!1464 (value!45902 List!7127)) (CommentValue!2929 (value!45903 List!7127)) (StringLiteralValue!4394 (value!45904 List!7127)) (ErrorTokenValue!1464 (msg!1525 List!7127)) )
))
(declare-datatypes ((Regex!1765 0))(
  ( (ElementMatch!1765 (c!118721 (_ BitVec 16))) (Concat!3230 (regOne!4042 Regex!1765) (regTwo!4042 Regex!1765)) (EmptyExpr!1765) (Star!1765 (reg!2094 Regex!1765)) (EmptyLang!1765) (Union!1765 (regOne!4043 Regex!1765) (regTwo!4043 Regex!1765)) )
))
(declare-datatypes ((String!9058 0))(
  ( (String!9059 (value!45905 String)) )
))
(declare-datatypes ((IArray!4999 0))(
  ( (IArray!5000 (innerList!2557 List!7127)) )
))
(declare-datatypes ((Conc!2499 0))(
  ( (Node!2499 (left!5759 Conc!2499) (right!6089 Conc!2499) (csize!5228 Int) (cheight!2710 Int)) (Leaf!3730 (xs!5148 IArray!4999) (csize!5229 Int)) (Empty!2499) )
))
(declare-datatypes ((BalanceConc!5010 0))(
  ( (BalanceConc!5011 (c!118722 Conc!2499)) )
))
(declare-datatypes ((TokenValueInjection!2680 0))(
  ( (TokenValueInjection!2681 (toValue!2371 Int) (toChars!2230 Int)) )
))
(declare-datatypes ((Rule!2660 0))(
  ( (Rule!2661 (regex!1430 Regex!1765) (tag!1692 String!9058) (isSeparator!1430 Bool) (transformation!1430 TokenValueInjection!2680)) )
))
(declare-datatypes ((Token!2582 0))(
  ( (Token!2583 (value!45906 TokenValue!1464) (rule!2225 Rule!2660) (size!5660 Int) (originalCharacters!1462 List!7127)) )
))
(declare-datatypes ((List!7128 0))(
  ( (Nil!7114) (Cons!7114 (h!12515 Token!2582) (t!86109 List!7128)) )
))
(declare-datatypes ((IArray!5001 0))(
  ( (IArray!5002 (innerList!2558 List!7128)) )
))
(declare-datatypes ((Conc!2500 0))(
  ( (Node!2500 (left!5760 Conc!2500) (right!6090 Conc!2500) (csize!5230 Int) (cheight!2711 Int)) (Leaf!3731 (xs!5149 IArray!5001) (csize!5231 Int)) (Empty!2500) )
))
(declare-datatypes ((BalanceConc!5012 0))(
  ( (BalanceConc!5013 (c!118723 Conc!2500)) )
))
(declare-fun ts!14 () BalanceConc!5012)

(declare-fun e!407795 () Bool)

(declare-fun inv!9084 (BalanceConc!5012) Bool)

(assert (=> start!64466 (and (inv!9084 ts!14) e!407795)))

(declare-fun b!659464 () Bool)

(declare-fun e!407791 () Bool)

(declare-fun e!407793 () Bool)

(assert (=> b!659464 (= e!407791 e!407793)))

(declare-fun res!292798 () Bool)

(assert (=> b!659464 (=> (not res!292798) (not e!407793))))

(declare-fun lt!280586 () Token!2582)

(declare-fun isKeywordValue!0 (Token!2582 TokenValue!1464) Bool)

(assert (=> b!659464 (= res!292798 (not (isKeywordValue!0 lt!280586 LeftBrace!1464)))))

(declare-fun apply!1731 (BalanceConc!5012 Int) Token!2582)

(assert (=> b!659464 (= lt!280586 (apply!1731 ts!14 from!502))))

(declare-fun b!659465 () Bool)

(assert (=> b!659465 (= e!407792 e!407791)))

(declare-fun res!292793 () Bool)

(assert (=> b!659465 (=> (not res!292793) (not e!407791))))

(declare-fun size!101 () Int)

(declare-fun lt!280585 () Int)

(assert (=> b!659465 (= res!292793 (and (<= from!502 lt!280585) (= lt!280585 size!101)))))

(declare-fun size!5661 (BalanceConc!5012) Int)

(assert (=> b!659465 (= lt!280585 (size!5661 ts!14))))

(declare-fun b!659466 () Bool)

(assert (=> b!659466 (= e!407793 (>= (- lt!280585 (+ 1 from!502)) (- lt!280585 from!502)))))

(declare-fun b!659467 () Bool)

(declare-fun res!292794 () Bool)

(assert (=> b!659467 (=> (not res!292794) (not e!407793))))

(assert (=> b!659467 (= res!292794 (not (isKeywordValue!0 lt!280586 RightBrace!1464)))))

(declare-fun b!659468 () Bool)

(declare-fun tp!201001 () Bool)

(declare-fun inv!9085 (Conc!2500) Bool)

(assert (=> b!659468 (= e!407795 (and (inv!9085 (c!118723 ts!14)) tp!201001))))

(declare-fun b!659469 () Bool)

(declare-fun res!292797 () Bool)

(assert (=> b!659469 (=> (not res!292797) (not e!407791))))

(assert (=> b!659469 (= res!292797 (< from!502 lt!280585))))

(declare-fun b!659470 () Bool)

(declare-fun tp!201000 () Bool)

(declare-fun inv!9086 (Conc!2498) Bool)

(assert (=> b!659470 (= e!407794 (and (inv!9086 (c!118720 acc!218)) tp!201000))))

(declare-fun res!292795 () Bool)

(assert (=> b!659471 (=> (not res!292795) (not e!407791))))

(declare-fun lambda!20451 () Int)

(declare-fun forall!1896 (BalanceConc!5008 Int) Bool)

(assert (=> b!659471 (= res!292795 (forall!1896 acc!218 lambda!20451))))

(assert (= (and start!64466 res!292796) b!659465))

(assert (= (and b!659465 res!292793) b!659471))

(assert (= (and b!659471 res!292795) b!659469))

(assert (= (and b!659469 res!292797) b!659464))

(assert (= (and b!659464 res!292798) b!659467))

(assert (= (and b!659467 res!292794) b!659466))

(assert (= start!64466 b!659470))

(assert (= start!64466 b!659468))

(declare-fun m!925185 () Bool)

(assert (=> b!659468 m!925185))

(declare-fun m!925187 () Bool)

(assert (=> b!659464 m!925187))

(declare-fun m!925189 () Bool)

(assert (=> b!659464 m!925189))

(declare-fun m!925191 () Bool)

(assert (=> b!659467 m!925191))

(declare-fun m!925193 () Bool)

(assert (=> start!64466 m!925193))

(declare-fun m!925195 () Bool)

(assert (=> start!64466 m!925195))

(declare-fun m!925197 () Bool)

(assert (=> b!659465 m!925197))

(declare-fun m!925199 () Bool)

(assert (=> b!659471 m!925199))

(declare-fun m!925201 () Bool)

(assert (=> b!659470 m!925201))

(check-sat (not b!659468) (not b!659465) (not b!659467) (not start!64466) (not b!659471) (not b!659470) (not b!659464))
(check-sat)
