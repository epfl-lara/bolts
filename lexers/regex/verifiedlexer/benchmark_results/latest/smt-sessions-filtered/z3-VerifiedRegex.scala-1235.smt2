; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!64568 () Bool)

(assert start!64568)

(declare-fun b!660461 () Bool)

(declare-fun res!293125 () Bool)

(declare-fun e!408455 () Bool)

(assert (=> b!660461 (=> (not res!293125) (not e!408455))))

(declare-datatypes ((List!7156 0))(
  ( (Nil!7142) (Cons!7142 (h!12543 (_ BitVec 16)) (t!86228 List!7156)) )
))
(declare-datatypes ((TokenValue!1474 0))(
  ( (FloatLiteralValue!2948 (text!10763 List!7156)) (TokenValueExt!1473 (__x!5055 Int)) (Broken!7370 (value!46165 List!7156)) (Object!1487) (End!1474) (Def!1474) (Underscore!1474) (Match!1474) (Else!1474) (Error!1474) (Case!1474) (If!1474) (Extends!1474) (Abstract!1474) (Class!1474) (Val!1474) (DelimiterValue!2948 (del!1534 List!7156)) (KeywordValue!1480 (value!46166 List!7156)) (CommentValue!2948 (value!46167 List!7156)) (WhitespaceValue!2948 (value!46168 List!7156)) (IndentationValue!1474 (value!46169 List!7156)) (String!9107) (Int32!1474) (Broken!7371 (value!46170 List!7156)) (Boolean!1475) (Unit!12420) (OperatorValue!1477 (op!1534 List!7156)) (IdentifierValue!2948 (value!46171 List!7156)) (IdentifierValue!2949 (value!46172 List!7156)) (WhitespaceValue!2949 (value!46173 List!7156)) (True!2948) (False!2948) (Broken!7372 (value!46174 List!7156)) (Broken!7373 (value!46175 List!7156)) (True!2949) (RightBrace!1474) (RightBracket!1474) (Colon!1474) (Null!1474) (Comma!1474) (LeftBracket!1474) (False!2949) (LeftBrace!1474) (ImaginaryLiteralValue!1474 (text!10764 List!7156)) (StringLiteralValue!4422 (value!46176 List!7156)) (EOFValue!1474 (value!46177 List!7156)) (IdentValue!1474 (value!46178 List!7156)) (DelimiterValue!2949 (value!46179 List!7156)) (DedentValue!1474 (value!46180 List!7156)) (NewLineValue!1474 (value!46181 List!7156)) (IntegerValue!4422 (value!46182 (_ BitVec 32)) (text!10765 List!7156)) (IntegerValue!4423 (value!46183 Int) (text!10766 List!7156)) (Times!1474) (Or!1474) (Equal!1474) (Minus!1474) (Broken!7374 (value!46184 List!7156)) (And!1474) (Div!1474) (LessEqual!1474) (Mod!1474) (Concat!3249) (Not!1474) (Plus!1474) (SpaceValue!1474 (value!46185 List!7156)) (IntegerValue!4424 (value!46186 Int) (text!10767 List!7156)) (StringLiteralValue!4423 (text!10768 List!7156)) (FloatLiteralValue!2949 (text!10769 List!7156)) (BytesLiteralValue!1474 (value!46187 List!7156)) (CommentValue!2949 (value!46188 List!7156)) (StringLiteralValue!4424 (value!46189 List!7156)) (ErrorTokenValue!1474 (msg!1535 List!7156)) )
))
(declare-datatypes ((Regex!1775 0))(
  ( (ElementMatch!1775 (c!118907 (_ BitVec 16))) (Concat!3250 (regOne!4062 Regex!1775) (regTwo!4062 Regex!1775)) (EmptyExpr!1775) (Star!1775 (reg!2104 Regex!1775)) (EmptyLang!1775) (Union!1775 (regOne!4063 Regex!1775) (regTwo!4063 Regex!1775)) )
))
(declare-datatypes ((String!9108 0))(
  ( (String!9109 (value!46190 String)) )
))
(declare-datatypes ((IArray!5043 0))(
  ( (IArray!5044 (innerList!2579 List!7156)) )
))
(declare-datatypes ((Conc!2521 0))(
  ( (Node!2521 (left!5790 Conc!2521) (right!6120 Conc!2521) (csize!5272 Int) (cheight!2732 Int)) (Leaf!3757 (xs!5170 IArray!5043) (csize!5273 Int)) (Empty!2521) )
))
(declare-datatypes ((BalanceConc!5054 0))(
  ( (BalanceConc!5055 (c!118908 Conc!2521)) )
))
(declare-datatypes ((TokenValueInjection!2700 0))(
  ( (TokenValueInjection!2701 (toValue!2381 Int) (toChars!2240 Int)) )
))
(declare-datatypes ((Rule!2680 0))(
  ( (Rule!2681 (regex!1440 Regex!1775) (tag!1702 String!9108) (isSeparator!1440 Bool) (transformation!1440 TokenValueInjection!2700)) )
))
(declare-datatypes ((Token!2602 0))(
  ( (Token!2603 (value!46191 TokenValue!1474) (rule!2235 Rule!2680) (size!5676 Int) (originalCharacters!1472 List!7156)) )
))
(declare-datatypes ((List!7157 0))(
  ( (Nil!7143) (Cons!7143 (h!12544 Token!2602) (t!86229 List!7157)) )
))
(declare-datatypes ((IArray!5045 0))(
  ( (IArray!5046 (innerList!2580 List!7157)) )
))
(declare-datatypes ((Conc!2522 0))(
  ( (Node!2522 (left!5791 Conc!2522) (right!6121 Conc!2522) (csize!5274 Int) (cheight!2733 Int)) (Leaf!3758 (xs!5171 IArray!5045) (csize!5275 Int)) (Empty!2522) )
))
(declare-datatypes ((List!7158 0))(
  ( (Nil!7144) (Cons!7144 (h!12545 Rule!2680) (t!86230 List!7158)) )
))
(declare-datatypes ((BalanceConc!5056 0))(
  ( (BalanceConc!5057 (c!118909 Conc!2522)) )
))
(declare-datatypes ((PrintableTokens!184 0))(
  ( (PrintableTokens!185 (rules!8281 List!7158) (tokens!1259 BalanceConc!5056)) )
))
(declare-fun sepR!1 () PrintableTokens!184)

(declare-fun usesJsonRules!0 (PrintableTokens!184) Bool)

(assert (=> b!660461 (= res!293125 (usesJsonRules!0 sepR!1))))

(declare-fun b!660462 () Bool)

(declare-fun e!408462 () Bool)

(assert (=> b!660462 (= e!408455 e!408462)))

(declare-fun res!293128 () Bool)

(assert (=> b!660462 (=> (not res!293128) (not e!408462))))

(declare-datatypes ((Option!1683 0))(
  ( (None!1682) (Some!1682 (v!17324 PrintableTokens!184)) )
))
(declare-fun lt!281543 () Option!1683)

(get-info :version)

(assert (=> b!660462 (= res!293128 ((_ is Some!1682) lt!281543))))

(declare-fun sepL!1 () PrintableTokens!184)

(declare-fun objs!31 () PrintableTokens!184)

(declare-fun append!264 (PrintableTokens!184 PrintableTokens!184) Option!1683)

(assert (=> b!660462 (= lt!281543 (append!264 sepL!1 objs!31))))

(declare-fun e!408458 () Bool)

(declare-fun e!408461 () Bool)

(declare-fun tp!201347 () Bool)

(declare-fun b!660463 () Bool)

(declare-fun inv!9158 (BalanceConc!5056) Bool)

(assert (=> b!660463 (= e!408458 (and tp!201347 (inv!9158 (tokens!1259 sepL!1)) e!408461))))

(declare-fun b!660464 () Bool)

(declare-fun res!293127 () Bool)

(assert (=> b!660464 (=> (not res!293127) (not e!408455))))

(assert (=> b!660464 (= res!293127 (usesJsonRules!0 sepL!1))))

(declare-fun e!408459 () Bool)

(declare-fun e!408456 () Bool)

(declare-fun b!660465 () Bool)

(declare-fun tp!201348 () Bool)

(assert (=> b!660465 (= e!408456 (and tp!201348 (inv!9158 (tokens!1259 objs!31)) e!408459))))

(declare-fun b!660466 () Bool)

(declare-fun e!408457 () Bool)

(declare-fun tp!201351 () Bool)

(declare-fun inv!9159 (Conc!2522) Bool)

(assert (=> b!660466 (= e!408457 (and (inv!9159 (c!118909 (tokens!1259 sepR!1))) tp!201351))))

(declare-fun res!293124 () Bool)

(assert (=> start!64568 (=> (not res!293124) (not e!408455))))

(assert (=> start!64568 (= res!293124 (usesJsonRules!0 objs!31))))

(assert (=> start!64568 e!408455))

(declare-fun inv!9160 (PrintableTokens!184) Bool)

(assert (=> start!64568 (and (inv!9160 objs!31) e!408456)))

(assert (=> start!64568 (and (inv!9160 sepL!1) e!408458)))

(declare-fun e!408460 () Bool)

(assert (=> start!64568 (and (inv!9160 sepR!1) e!408460)))

(declare-fun b!660467 () Bool)

(declare-fun tp!201349 () Bool)

(assert (=> b!660467 (= e!408460 (and tp!201349 (inv!9158 (tokens!1259 sepR!1)) e!408457))))

(declare-fun b!660468 () Bool)

(declare-fun res!293126 () Bool)

(assert (=> b!660468 (=> (not res!293126) (not e!408462))))

(assert (=> b!660468 (= res!293126 (not ((_ is Some!1682) (append!264 (v!17324 lt!281543) sepR!1))))))

(declare-fun b!660469 () Bool)

(declare-fun tp!201350 () Bool)

(assert (=> b!660469 (= e!408461 (and (inv!9159 (c!118909 (tokens!1259 sepL!1))) tp!201350))))

(declare-fun b!660470 () Bool)

(declare-fun tp!201352 () Bool)

(assert (=> b!660470 (= e!408459 (and (inv!9159 (c!118909 (tokens!1259 objs!31))) tp!201352))))

(declare-fun b!660471 () Bool)

(assert (=> b!660471 (= e!408462 false)))

(assert (= (and start!64568 res!293124) b!660464))

(assert (= (and b!660464 res!293127) b!660461))

(assert (= (and b!660461 res!293125) b!660462))

(assert (= (and b!660462 res!293128) b!660468))

(assert (= (and b!660468 res!293126) b!660471))

(assert (= b!660465 b!660470))

(assert (= start!64568 b!660465))

(assert (= b!660463 b!660469))

(assert (= start!64568 b!660463))

(assert (= b!660467 b!660466))

(assert (= start!64568 b!660467))

(declare-fun m!926611 () Bool)

(assert (=> b!660466 m!926611))

(declare-fun m!926613 () Bool)

(assert (=> b!660465 m!926613))

(declare-fun m!926615 () Bool)

(assert (=> start!64568 m!926615))

(declare-fun m!926617 () Bool)

(assert (=> start!64568 m!926617))

(declare-fun m!926619 () Bool)

(assert (=> start!64568 m!926619))

(declare-fun m!926621 () Bool)

(assert (=> start!64568 m!926621))

(declare-fun m!926623 () Bool)

(assert (=> b!660463 m!926623))

(declare-fun m!926625 () Bool)

(assert (=> b!660467 m!926625))

(declare-fun m!926627 () Bool)

(assert (=> b!660462 m!926627))

(declare-fun m!926629 () Bool)

(assert (=> b!660461 m!926629))

(declare-fun m!926631 () Bool)

(assert (=> b!660468 m!926631))

(declare-fun m!926633 () Bool)

(assert (=> b!660470 m!926633))

(declare-fun m!926635 () Bool)

(assert (=> b!660464 m!926635))

(declare-fun m!926637 () Bool)

(assert (=> b!660469 m!926637))

(check-sat (not b!660462) (not b!660461) (not b!660470) (not b!660469) (not b!660463) (not b!660464) (not b!660466) (not start!64568) (not b!660468) (not b!660467) (not b!660465))
(check-sat)
