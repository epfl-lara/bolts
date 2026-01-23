; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!129136 () Bool)

(assert start!129136)

(declare-fun b!1411503 () Bool)

(declare-fun e!901068 () Bool)

(declare-datatypes ((List!14481 0))(
  ( (Nil!14415) (Cons!14415 (h!19816 (_ BitVec 16)) (t!123544 List!14481)) )
))
(declare-datatypes ((TokenValue!2593 0))(
  ( (FloatLiteralValue!5186 (text!18596 List!14481)) (TokenValueExt!2592 (__x!9007 Int)) (Broken!12965 (value!80942 List!14481)) (Object!2658) (End!2593) (Def!2593) (Underscore!2593) (Match!2593) (Else!2593) (Error!2593) (Case!2593) (If!2593) (Extends!2593) (Abstract!2593) (Class!2593) (Val!2593) (DelimiterValue!5186 (del!2653 List!14481)) (KeywordValue!2599 (value!80943 List!14481)) (CommentValue!5186 (value!80944 List!14481)) (WhitespaceValue!5186 (value!80945 List!14481)) (IndentationValue!2593 (value!80946 List!14481)) (String!17200) (Int32!2593) (Broken!12966 (value!80947 List!14481)) (Boolean!2594) (Unit!20942) (OperatorValue!2596 (op!2653 List!14481)) (IdentifierValue!5186 (value!80948 List!14481)) (IdentifierValue!5187 (value!80949 List!14481)) (WhitespaceValue!5187 (value!80950 List!14481)) (True!5186) (False!5186) (Broken!12967 (value!80951 List!14481)) (Broken!12968 (value!80952 List!14481)) (True!5187) (RightBrace!2593) (RightBracket!2593) (Colon!2593) (Null!2593) (Comma!2593) (LeftBracket!2593) (False!5187) (LeftBrace!2593) (ImaginaryLiteralValue!2593 (text!18597 List!14481)) (StringLiteralValue!7779 (value!80953 List!14481)) (EOFValue!2593 (value!80954 List!14481)) (IdentValue!2593 (value!80955 List!14481)) (DelimiterValue!5187 (value!80956 List!14481)) (DedentValue!2593 (value!80957 List!14481)) (NewLineValue!2593 (value!80958 List!14481)) (IntegerValue!7779 (value!80959 (_ BitVec 32)) (text!18598 List!14481)) (IntegerValue!7780 (value!80960 Int) (text!18599 List!14481)) (Times!2593) (Or!2593) (Equal!2593) (Minus!2593) (Broken!12969 (value!80961 List!14481)) (And!2593) (Div!2593) (LessEqual!2593) (Mod!2593) (Concat!6410) (Not!2593) (Plus!2593) (SpaceValue!2593 (value!80962 List!14481)) (IntegerValue!7781 (value!80963 Int) (text!18600 List!14481)) (StringLiteralValue!7780 (text!18601 List!14481)) (FloatLiteralValue!5187 (text!18602 List!14481)) (BytesLiteralValue!2593 (value!80964 List!14481)) (CommentValue!5187 (value!80965 List!14481)) (StringLiteralValue!7781 (value!80966 List!14481)) (ErrorTokenValue!2593 (msg!2654 List!14481)) )
))
(declare-datatypes ((Regex!3817 0))(
  ( (ElementMatch!3817 (c!231984 (_ BitVec 16))) (Concat!6411 (regOne!8146 Regex!3817) (regTwo!8146 Regex!3817)) (EmptyExpr!3817) (Star!3817 (reg!4146 Regex!3817)) (EmptyLang!3817) (Union!3817 (regOne!8147 Regex!3817) (regTwo!8147 Regex!3817)) )
))
(declare-datatypes ((String!17201 0))(
  ( (String!17202 (value!80967 String)) )
))
(declare-datatypes ((IArray!9571 0))(
  ( (IArray!9572 (innerList!4843 List!14481)) )
))
(declare-datatypes ((Conc!4783 0))(
  ( (Node!4783 (left!12312 Conc!4783) (right!12642 Conc!4783) (csize!9796 Int) (cheight!4994 Int)) (Leaf!7231 (xs!7510 IArray!9571) (csize!9797 Int)) (Empty!4783) )
))
(declare-datatypes ((BalanceConc!9506 0))(
  ( (BalanceConc!9507 (c!231985 Conc!4783)) )
))
(declare-datatypes ((TokenValueInjection!4846 0))(
  ( (TokenValueInjection!4847 (toValue!3798 Int) (toChars!3657 Int)) )
))
(declare-datatypes ((Rule!4806 0))(
  ( (Rule!4807 (regex!2503 Regex!3817) (tag!2765 String!17201) (isSeparator!2503 Bool) (transformation!2503 TokenValueInjection!4846)) )
))
(declare-datatypes ((Token!4668 0))(
  ( (Token!4669 (value!80968 TokenValue!2593) (rule!4266 Rule!4806) (size!11873 Int) (originalCharacters!3365 List!14481)) )
))
(declare-datatypes ((List!14482 0))(
  ( (Nil!14416) (Cons!14416 (h!19817 Token!4668) (t!123545 List!14482)) )
))
(declare-datatypes ((IArray!9573 0))(
  ( (IArray!9574 (innerList!4844 List!14482)) )
))
(declare-datatypes ((Conc!4784 0))(
  ( (Node!4784 (left!12313 Conc!4784) (right!12643 Conc!4784) (csize!9798 Int) (cheight!4995 Int)) (Leaf!7232 (xs!7511 IArray!9573) (csize!9799 Int)) (Empty!4784) )
))
(declare-datatypes ((List!14483 0))(
  ( (Nil!14417) (Cons!14417 (h!19818 Rule!4806) (t!123546 List!14483)) )
))
(declare-datatypes ((BalanceConc!9508 0))(
  ( (BalanceConc!9509 (c!231986 Conc!4784)) )
))
(declare-datatypes ((PrintableTokens!788 0))(
  ( (PrintableTokens!789 (rules!11010 List!14483) (tokens!1746 BalanceConc!9508)) )
))
(declare-fun acc!229 () PrintableTokens!788)

(declare-fun tp!400672 () Bool)

(declare-fun inv!18825 (Conc!4784) Bool)

(assert (=> b!1411503 (= e!901068 (and (inv!18825 (c!231986 (tokens!1746 acc!229))) tp!400672))))

(declare-fun b!1411504 () Bool)

(declare-fun res!639207 () Bool)

(declare-fun e!901070 () Bool)

(assert (=> b!1411504 (=> (not res!639207) (not e!901070))))

(declare-datatypes ((List!14484 0))(
  ( (Nil!14418) (Cons!14418 (h!19819 PrintableTokens!788) (t!123547 List!14484)) )
))
(declare-datatypes ((IArray!9575 0))(
  ( (IArray!9576 (innerList!4845 List!14484)) )
))
(declare-datatypes ((Conc!4785 0))(
  ( (Node!4785 (left!12314 Conc!4785) (right!12644 Conc!4785) (csize!9800 Int) (cheight!4996 Int)) (Leaf!7233 (xs!7512 IArray!9575) (csize!9801 Int)) (Empty!4785) )
))
(declare-datatypes ((BalanceConc!9510 0))(
  ( (BalanceConc!9511 (c!231987 Conc!4785)) )
))
(declare-fun objs!24 () BalanceConc!9510)

(declare-fun size!11874 (BalanceConc!9510) Int)

(assert (=> b!1411504 (= res!639207 (= (size!11874 objs!24) 1))))

(declare-fun res!639203 () Bool)

(assert (=> start!129136 (=> (not res!639203) (not e!901070))))

(declare-fun lambda!62397 () Int)

(declare-fun forall!3523 (BalanceConc!9510 Int) Bool)

(assert (=> start!129136 (= res!639203 (forall!3523 objs!24 lambda!62397))))

(assert (=> start!129136 e!901070))

(declare-fun e!901071 () Bool)

(declare-fun inv!18826 (BalanceConc!9510) Bool)

(assert (=> start!129136 (and (inv!18826 objs!24) e!901071)))

(declare-fun e!901069 () Bool)

(declare-fun inv!18827 (PrintableTokens!788) Bool)

(assert (=> start!129136 (and (inv!18827 acc!229) e!901069)))

(declare-fun sep!3 () PrintableTokens!788)

(declare-fun e!901072 () Bool)

(assert (=> start!129136 (and (inv!18827 sep!3) e!901072)))

(declare-fun b!1411505 () Bool)

(declare-fun res!639205 () Bool)

(assert (=> b!1411505 (=> (not res!639205) (not e!901070))))

(get-info :version)

(declare-datatypes ((Option!2764 0))(
  ( (None!2763) (Some!2763 (v!21849 PrintableTokens!788)) )
))
(declare-fun append!424 (PrintableTokens!788 PrintableTokens!788) Option!2764)

(declare-fun head!2673 (BalanceConc!9510) PrintableTokens!788)

(assert (=> b!1411505 (= res!639205 (not ((_ is Some!2763) (append!424 acc!229 (head!2673 objs!24)))))))

(declare-fun b!1411506 () Bool)

(declare-fun res!639208 () Bool)

(assert (=> b!1411506 (=> (not res!639208) (not e!901070))))

(declare-fun usesJsonRules!0 (PrintableTokens!788) Bool)

(assert (=> b!1411506 (= res!639208 (usesJsonRules!0 sep!3))))

(declare-fun b!1411507 () Bool)

(assert (=> b!1411507 (= e!901070 false)))

(declare-fun b!1411508 () Bool)

(declare-fun e!901073 () Bool)

(declare-fun tp!400670 () Bool)

(assert (=> b!1411508 (= e!901073 (and (inv!18825 (c!231986 (tokens!1746 sep!3))) tp!400670))))

(declare-fun b!1411509 () Bool)

(declare-fun res!639204 () Bool)

(assert (=> b!1411509 (=> (not res!639204) (not e!901070))))

(declare-fun isEmpty!8808 (BalanceConc!9510) Bool)

(assert (=> b!1411509 (= res!639204 (not (isEmpty!8808 objs!24)))))

(declare-fun tp!400674 () Bool)

(declare-fun b!1411510 () Bool)

(declare-fun inv!18828 (BalanceConc!9508) Bool)

(assert (=> b!1411510 (= e!901069 (and tp!400674 (inv!18828 (tokens!1746 acc!229)) e!901068))))

(declare-fun b!1411511 () Bool)

(declare-fun res!639206 () Bool)

(assert (=> b!1411511 (=> (not res!639206) (not e!901070))))

(assert (=> b!1411511 (= res!639206 (usesJsonRules!0 acc!229))))

(declare-fun b!1411512 () Bool)

(declare-fun tp!400671 () Bool)

(declare-fun inv!18829 (Conc!4785) Bool)

(assert (=> b!1411512 (= e!901071 (and (inv!18829 (c!231987 objs!24)) tp!400671))))

(declare-fun tp!400673 () Bool)

(declare-fun b!1411513 () Bool)

(assert (=> b!1411513 (= e!901072 (and tp!400673 (inv!18828 (tokens!1746 sep!3)) e!901073))))

(assert (= (and start!129136 res!639203) b!1411511))

(assert (= (and b!1411511 res!639206) b!1411506))

(assert (= (and b!1411506 res!639208) b!1411509))

(assert (= (and b!1411509 res!639204) b!1411504))

(assert (= (and b!1411504 res!639207) b!1411505))

(assert (= (and b!1411505 res!639205) b!1411507))

(assert (= start!129136 b!1411512))

(assert (= b!1411510 b!1411503))

(assert (= start!129136 b!1411510))

(assert (= b!1411513 b!1411508))

(assert (= start!129136 b!1411513))

(declare-fun m!1591865 () Bool)

(assert (=> b!1411503 m!1591865))

(declare-fun m!1591867 () Bool)

(assert (=> b!1411512 m!1591867))

(declare-fun m!1591869 () Bool)

(assert (=> b!1411506 m!1591869))

(declare-fun m!1591871 () Bool)

(assert (=> b!1411510 m!1591871))

(declare-fun m!1591873 () Bool)

(assert (=> start!129136 m!1591873))

(declare-fun m!1591875 () Bool)

(assert (=> start!129136 m!1591875))

(declare-fun m!1591877 () Bool)

(assert (=> start!129136 m!1591877))

(declare-fun m!1591879 () Bool)

(assert (=> start!129136 m!1591879))

(declare-fun m!1591881 () Bool)

(assert (=> b!1411508 m!1591881))

(declare-fun m!1591883 () Bool)

(assert (=> b!1411505 m!1591883))

(assert (=> b!1411505 m!1591883))

(declare-fun m!1591885 () Bool)

(assert (=> b!1411505 m!1591885))

(declare-fun m!1591887 () Bool)

(assert (=> b!1411511 m!1591887))

(declare-fun m!1591889 () Bool)

(assert (=> b!1411513 m!1591889))

(declare-fun m!1591891 () Bool)

(assert (=> b!1411504 m!1591891))

(declare-fun m!1591893 () Bool)

(assert (=> b!1411509 m!1591893))

(check-sat (not b!1411512) (not start!129136) (not b!1411504) (not b!1411513) (not b!1411503) (not b!1411510) (not b!1411508) (not b!1411509) (not b!1411511) (not b!1411506) (not b!1411505))
(check-sat)
