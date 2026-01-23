; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!64770 () Bool)

(assert start!64770)

(assert (=> start!64770 false))

(declare-fun e!409626 () Bool)

(assert (=> start!64770 e!409626))

(declare-fun b!662081 () Bool)

(declare-fun e!409627 () Bool)

(declare-datatypes ((List!7241 0))(
  ( (Nil!7227) (Cons!7227 (h!12628 (_ BitVec 16)) (t!86383 List!7241)) )
))
(declare-datatypes ((TokenValue!1498 0))(
  ( (FloatLiteralValue!2996 (text!10931 List!7241)) (TokenValueExt!1497 (__x!5088 Int)) (Broken!7490 (value!46849 List!7241)) (Object!1511) (End!1498) (Def!1498) (Underscore!1498) (Match!1498) (Else!1498) (Error!1498) (Case!1498) (If!1498) (Extends!1498) (Abstract!1498) (Class!1498) (Val!1498) (DelimiterValue!2996 (del!1558 List!7241)) (KeywordValue!1504 (value!46850 List!7241)) (CommentValue!2996 (value!46851 List!7241)) (WhitespaceValue!2996 (value!46852 List!7241)) (IndentationValue!1498 (value!46853 List!7241)) (String!9227) (Int32!1498) (Broken!7491 (value!46854 List!7241)) (Boolean!1499) (Unit!12512) (OperatorValue!1501 (op!1558 List!7241)) (IdentifierValue!2996 (value!46855 List!7241)) (IdentifierValue!2997 (value!46856 List!7241)) (WhitespaceValue!2997 (value!46857 List!7241)) (True!2996) (False!2996) (Broken!7492 (value!46858 List!7241)) (Broken!7493 (value!46859 List!7241)) (True!2997) (RightBrace!1498) (RightBracket!1498) (Colon!1498) (Null!1498) (Comma!1498) (LeftBracket!1498) (False!2997) (LeftBrace!1498) (ImaginaryLiteralValue!1498 (text!10932 List!7241)) (StringLiteralValue!4494 (value!46860 List!7241)) (EOFValue!1498 (value!46861 List!7241)) (IdentValue!1498 (value!46862 List!7241)) (DelimiterValue!2997 (value!46863 List!7241)) (DedentValue!1498 (value!46864 List!7241)) (NewLineValue!1498 (value!46865 List!7241)) (IntegerValue!4494 (value!46866 (_ BitVec 32)) (text!10933 List!7241)) (IntegerValue!4495 (value!46867 Int) (text!10934 List!7241)) (Times!1498) (Or!1498) (Equal!1498) (Minus!1498) (Broken!7494 (value!46868 List!7241)) (And!1498) (Div!1498) (LessEqual!1498) (Mod!1498) (Concat!3297) (Not!1498) (Plus!1498) (SpaceValue!1498 (value!46869 List!7241)) (IntegerValue!4496 (value!46870 Int) (text!10935 List!7241)) (StringLiteralValue!4495 (text!10936 List!7241)) (FloatLiteralValue!2997 (text!10937 List!7241)) (BytesLiteralValue!1498 (value!46871 List!7241)) (CommentValue!2997 (value!46872 List!7241)) (StringLiteralValue!4496 (value!46873 List!7241)) (ErrorTokenValue!1498 (msg!1559 List!7241)) )
))
(declare-datatypes ((Regex!1799 0))(
  ( (ElementMatch!1799 (c!119095 (_ BitVec 16))) (Concat!3298 (regOne!4110 Regex!1799) (regTwo!4110 Regex!1799)) (EmptyExpr!1799) (Star!1799 (reg!2128 Regex!1799)) (EmptyLang!1799) (Union!1799 (regOne!4111 Regex!1799) (regTwo!4111 Regex!1799)) )
))
(declare-datatypes ((String!9228 0))(
  ( (String!9229 (value!46874 String)) )
))
(declare-datatypes ((IArray!5139 0))(
  ( (IArray!5140 (innerList!2627 List!7241)) )
))
(declare-datatypes ((Conc!2569 0))(
  ( (Node!2569 (left!5854 Conc!2569) (right!6184 Conc!2569) (csize!5368 Int) (cheight!2780 Int)) (Leaf!3817 (xs!5218 IArray!5139) (csize!5369 Int)) (Empty!2569) )
))
(declare-datatypes ((BalanceConc!5150 0))(
  ( (BalanceConc!5151 (c!119096 Conc!2569)) )
))
(declare-datatypes ((TokenValueInjection!2748 0))(
  ( (TokenValueInjection!2749 (toValue!2405 Int) (toChars!2264 Int)) )
))
(declare-datatypes ((Rule!2728 0))(
  ( (Rule!2729 (regex!1464 Regex!1799) (tag!1726 String!9228) (isSeparator!1464 Bool) (transformation!1464 TokenValueInjection!2748)) )
))
(declare-datatypes ((Token!2650 0))(
  ( (Token!2651 (value!46875 TokenValue!1498) (rule!2259 Rule!2728) (size!5704 Int) (originalCharacters!1496 List!7241)) )
))
(declare-datatypes ((List!7242 0))(
  ( (Nil!7228) (Cons!7228 (h!12629 Token!2650) (t!86384 List!7242)) )
))
(declare-datatypes ((IArray!5141 0))(
  ( (IArray!5142 (innerList!2628 List!7242)) )
))
(declare-datatypes ((Conc!2570 0))(
  ( (Node!2570 (left!5855 Conc!2570) (right!6185 Conc!2570) (csize!5370 Int) (cheight!2781 Int)) (Leaf!3818 (xs!5219 IArray!5141) (csize!5371 Int)) (Empty!2570) )
))
(declare-datatypes ((List!7243 0))(
  ( (Nil!7229) (Cons!7229 (h!12630 Rule!2728) (t!86385 List!7243)) )
))
(declare-datatypes ((BalanceConc!5152 0))(
  ( (BalanceConc!5153 (c!119097 Conc!2570)) )
))
(declare-datatypes ((PrintableTokens!232 0))(
  ( (PrintableTokens!233 (rules!8315 List!7243) (tokens!1291 BalanceConc!5152)) )
))
(declare-datatypes ((List!7244 0))(
  ( (Nil!7230) (Cons!7230 (h!12631 PrintableTokens!232) (t!86386 List!7244)) )
))
(declare-fun s!1385 () List!7244)

(declare-fun tp!202058 () Bool)

(declare-fun inv!9304 (Conc!2570) Bool)

(assert (=> b!662081 (= e!409627 (and (inv!9304 (c!119097 (tokens!1291 (h!12631 s!1385)))) tp!202058))))

(declare-fun e!409628 () Bool)

(declare-fun tp!202060 () Bool)

(declare-fun b!662080 () Bool)

(declare-fun inv!9305 (BalanceConc!5152) Bool)

(assert (=> b!662080 (= e!409628 (and tp!202060 (inv!9305 (tokens!1291 (h!12631 s!1385))) e!409627))))

(declare-fun tp!202059 () Bool)

(declare-fun b!662079 () Bool)

(declare-fun inv!9306 (PrintableTokens!232) Bool)

(assert (=> b!662079 (= e!409626 (and (inv!9306 (h!12631 s!1385)) e!409628 tp!202059))))

(assert (= b!662080 b!662081))

(assert (= b!662079 b!662080))

(get-info :version)

(assert (= (and start!64770 ((_ is Cons!7230) s!1385)) b!662079))

(declare-fun m!928275 () Bool)

(assert (=> b!662081 m!928275))

(declare-fun m!928277 () Bool)

(assert (=> b!662080 m!928277))

(declare-fun m!928279 () Bool)

(assert (=> b!662079 m!928279))

(check-sat (not b!662079) (not b!662080) (not b!662081))
(check-sat)
