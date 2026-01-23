; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!253702 () Bool)

(assert start!253702)

(declare-fun b!2609987 () Bool)

(declare-fun b_free!73325 () Bool)

(declare-fun b_next!74029 () Bool)

(assert (=> b!2609987 (= b_free!73325 (not b_next!74029))))

(declare-fun tp!829176 () Bool)

(declare-fun b_and!190883 () Bool)

(assert (=> b!2609987 (= tp!829176 b_and!190883)))

(declare-fun b_free!73327 () Bool)

(declare-fun b_next!74031 () Bool)

(assert (=> b!2609987 (= b_free!73327 (not b_next!74031))))

(declare-fun tp!829177 () Bool)

(declare-fun b_and!190885 () Bool)

(assert (=> b!2609987 (= tp!829177 b_and!190885)))

(declare-fun b!2609974 () Bool)

(declare-fun b_free!73329 () Bool)

(declare-fun b_next!74033 () Bool)

(assert (=> b!2609974 (= b_free!73329 (not b_next!74033))))

(declare-fun tp!829179 () Bool)

(declare-fun b_and!190887 () Bool)

(assert (=> b!2609974 (= tp!829179 b_and!190887)))

(declare-fun b_free!73331 () Bool)

(declare-fun b_next!74035 () Bool)

(assert (=> b!2609974 (= b_free!73331 (not b_next!74035))))

(declare-fun tp!829180 () Bool)

(declare-fun b_and!190889 () Bool)

(assert (=> b!2609974 (= tp!829180 b_and!190889)))

(declare-fun b!2609973 () Bool)

(declare-fun res!1098524 () Bool)

(declare-fun e!1646699 () Bool)

(assert (=> b!2609973 (=> (not res!1098524) (not e!1646699))))

(declare-datatypes ((LexerInterface!4146 0))(
  ( (LexerInterfaceExt!4143 (__x!19375 Int)) (Lexer!4144) )
))
(declare-fun thiss!14197 () LexerInterface!4146)

(declare-datatypes ((List!30221 0))(
  ( (Nil!30121) (Cons!30121 (h!35541 (_ BitVec 16)) (t!213996 List!30221)) )
))
(declare-datatypes ((C!15544 0))(
  ( (C!15545 (val!9706 Int)) )
))
(declare-datatypes ((Regex!7693 0))(
  ( (ElementMatch!7693 (c!419600 C!15544)) (Concat!12464 (regOne!15898 Regex!7693) (regTwo!15898 Regex!7693)) (EmptyExpr!7693) (Star!7693 (reg!8022 Regex!7693)) (EmptyLang!7693) (Union!7693 (regOne!15899 Regex!7693) (regTwo!15899 Regex!7693)) )
))
(declare-datatypes ((TokenValue!4771 0))(
  ( (FloatLiteralValue!9542 (text!33842 List!30221)) (TokenValueExt!4770 (__x!19376 Int)) (Broken!23855 (value!147225 List!30221)) (Object!4870) (End!4771) (Def!4771) (Underscore!4771) (Match!4771) (Else!4771) (Error!4771) (Case!4771) (If!4771) (Extends!4771) (Abstract!4771) (Class!4771) (Val!4771) (DelimiterValue!9542 (del!4831 List!30221)) (KeywordValue!4777 (value!147226 List!30221)) (CommentValue!9542 (value!147227 List!30221)) (WhitespaceValue!9542 (value!147228 List!30221)) (IndentationValue!4771 (value!147229 List!30221)) (String!33738) (Int32!4771) (Broken!23856 (value!147230 List!30221)) (Boolean!4772) (Unit!44112) (OperatorValue!4774 (op!4831 List!30221)) (IdentifierValue!9542 (value!147231 List!30221)) (IdentifierValue!9543 (value!147232 List!30221)) (WhitespaceValue!9543 (value!147233 List!30221)) (True!9542) (False!9542) (Broken!23857 (value!147234 List!30221)) (Broken!23858 (value!147235 List!30221)) (True!9543) (RightBrace!4771) (RightBracket!4771) (Colon!4771) (Null!4771) (Comma!4771) (LeftBracket!4771) (False!9543) (LeftBrace!4771) (ImaginaryLiteralValue!4771 (text!33843 List!30221)) (StringLiteralValue!14313 (value!147236 List!30221)) (EOFValue!4771 (value!147237 List!30221)) (IdentValue!4771 (value!147238 List!30221)) (DelimiterValue!9543 (value!147239 List!30221)) (DedentValue!4771 (value!147240 List!30221)) (NewLineValue!4771 (value!147241 List!30221)) (IntegerValue!14313 (value!147242 (_ BitVec 32)) (text!33844 List!30221)) (IntegerValue!14314 (value!147243 Int) (text!33845 List!30221)) (Times!4771) (Or!4771) (Equal!4771) (Minus!4771) (Broken!23859 (value!147244 List!30221)) (And!4771) (Div!4771) (LessEqual!4771) (Mod!4771) (Concat!12465) (Not!4771) (Plus!4771) (SpaceValue!4771 (value!147245 List!30221)) (IntegerValue!14315 (value!147246 Int) (text!33846 List!30221)) (StringLiteralValue!14314 (text!33847 List!30221)) (FloatLiteralValue!9543 (text!33848 List!30221)) (BytesLiteralValue!4771 (value!147247 List!30221)) (CommentValue!9543 (value!147248 List!30221)) (StringLiteralValue!14315 (value!147249 List!30221)) (ErrorTokenValue!4771 (msg!4832 List!30221)) )
))
(declare-datatypes ((List!30222 0))(
  ( (Nil!30122) (Cons!30122 (h!35542 C!15544) (t!213997 List!30222)) )
))
(declare-datatypes ((IArray!18685 0))(
  ( (IArray!18686 (innerList!9400 List!30222)) )
))
(declare-datatypes ((Conc!9340 0))(
  ( (Node!9340 (left!23162 Conc!9340) (right!23492 Conc!9340) (csize!18910 Int) (cheight!9551 Int)) (Leaf!14355 (xs!12324 IArray!18685) (csize!18911 Int)) (Empty!9340) )
))
(declare-datatypes ((BalanceConc!18294 0))(
  ( (BalanceConc!18295 (c!419601 Conc!9340)) )
))
(declare-datatypes ((TokenValueInjection!8982 0))(
  ( (TokenValueInjection!8983 (toValue!6451 Int) (toChars!6310 Int)) )
))
(declare-datatypes ((String!33739 0))(
  ( (String!33740 (value!147250 String)) )
))
(declare-datatypes ((Rule!8898 0))(
  ( (Rule!8899 (regex!4549 Regex!7693) (tag!5039 String!33739) (isSeparator!4549 Bool) (transformation!4549 TokenValueInjection!8982)) )
))
(declare-datatypes ((List!30223 0))(
  ( (Nil!30123) (Cons!30123 (h!35543 Rule!8898) (t!213998 List!30223)) )
))
(declare-fun rules!1726 () List!30223)

(declare-fun rulesInvariant!3646 (LexerInterface!4146 List!30223) Bool)

(assert (=> b!2609973 (= res!1098524 (rulesInvariant!3646 thiss!14197 rules!1726))))

(declare-fun res!1098522 () Bool)

(declare-fun e!1646705 () Bool)

(assert (=> start!253702 (=> (not res!1098522) (not e!1646705))))

(declare-fun from!862 () Int)

(get-info :version)

(assert (=> start!253702 (= res!1098522 (and ((_ is Lexer!4144) thiss!14197) (>= from!862 0)))))

(assert (=> start!253702 e!1646705))

(assert (=> start!253702 true))

(declare-fun e!1646707 () Bool)

(assert (=> start!253702 e!1646707))

(declare-datatypes ((Token!8568 0))(
  ( (Token!8569 (value!147251 TokenValue!4771) (rule!6919 Rule!8898) (size!23330 Int) (originalCharacters!5315 List!30222)) )
))
(declare-fun separatorToken!156 () Token!8568)

(declare-fun e!1646697 () Bool)

(declare-fun inv!40756 (Token!8568) Bool)

(assert (=> start!253702 (and (inv!40756 separatorToken!156) e!1646697)))

(declare-datatypes ((List!30224 0))(
  ( (Nil!30124) (Cons!30124 (h!35544 Token!8568) (t!213999 List!30224)) )
))
(declare-datatypes ((IArray!18687 0))(
  ( (IArray!18688 (innerList!9401 List!30224)) )
))
(declare-datatypes ((Conc!9341 0))(
  ( (Node!9341 (left!23163 Conc!9341) (right!23493 Conc!9341) (csize!18912 Int) (cheight!9552 Int)) (Leaf!14356 (xs!12325 IArray!18687) (csize!18913 Int)) (Empty!9341) )
))
(declare-datatypes ((BalanceConc!18296 0))(
  ( (BalanceConc!18297 (c!419602 Conc!9341)) )
))
(declare-fun v!6381 () BalanceConc!18296)

(declare-fun e!1646702 () Bool)

(declare-fun inv!40757 (BalanceConc!18296) Bool)

(assert (=> start!253702 (and (inv!40757 v!6381) e!1646702)))

(declare-fun e!1646700 () Bool)

(assert (=> b!2609974 (= e!1646700 (and tp!829179 tp!829180))))

(declare-fun b!2609975 () Bool)

(assert (=> b!2609975 (= e!1646705 e!1646699)))

(declare-fun res!1098523 () Bool)

(assert (=> b!2609975 (=> (not res!1098523) (not e!1646699))))

(declare-fun lt!917134 () Int)

(assert (=> b!2609975 (= res!1098523 (<= from!862 lt!917134))))

(declare-fun size!23331 (BalanceConc!18296) Int)

(assert (=> b!2609975 (= lt!917134 (size!23331 v!6381))))

(declare-fun b!2609976 () Bool)

(declare-fun res!1098531 () Bool)

(assert (=> b!2609976 (=> (not res!1098531) (not e!1646699))))

(declare-fun lambda!97618 () Int)

(declare-fun forall!6241 (BalanceConc!18296 Int) Bool)

(assert (=> b!2609976 (= res!1098531 (forall!6241 v!6381 lambda!97618))))

(declare-fun b!2609977 () Bool)

(declare-fun res!1098526 () Bool)

(assert (=> b!2609977 (=> (not res!1098526) (not e!1646699))))

(assert (=> b!2609977 (= res!1098526 (isSeparator!4549 (rule!6919 separatorToken!156)))))

(declare-fun b!2609978 () Bool)

(declare-fun res!1098527 () Bool)

(assert (=> b!2609978 (=> (not res!1098527) (not e!1646699))))

(declare-fun sepAndNonSepRulesDisjointChars!1122 (List!30223 List!30223) Bool)

(assert (=> b!2609978 (= res!1098527 (sepAndNonSepRulesDisjointChars!1122 rules!1726 rules!1726))))

(declare-fun b!2609979 () Bool)

(declare-fun e!1646696 () Bool)

(declare-fun tp!829181 () Bool)

(assert (=> b!2609979 (= e!1646707 (and e!1646696 tp!829181))))

(declare-fun b!2609980 () Bool)

(declare-fun e!1646695 () Bool)

(declare-fun e!1646706 () Bool)

(declare-fun tp!829175 () Bool)

(declare-fun inv!40751 (String!33739) Bool)

(declare-fun inv!40758 (TokenValueInjection!8982) Bool)

(assert (=> b!2609980 (= e!1646706 (and tp!829175 (inv!40751 (tag!5039 (rule!6919 separatorToken!156))) (inv!40758 (transformation!4549 (rule!6919 separatorToken!156))) e!1646695))))

(declare-fun b!2609981 () Bool)

(declare-fun res!1098529 () Bool)

(assert (=> b!2609981 (=> (not res!1098529) (not e!1646699))))

(declare-fun rulesProduceIndividualToken!1858 (LexerInterface!4146 List!30223 Token!8568) Bool)

(assert (=> b!2609981 (= res!1098529 (rulesProduceIndividualToken!1858 thiss!14197 rules!1726 separatorToken!156))))

(declare-fun b!2609982 () Bool)

(declare-fun res!1098528 () Bool)

(assert (=> b!2609982 (=> (not res!1098528) (not e!1646699))))

(declare-fun rulesProduceEachTokenIndividually!966 (LexerInterface!4146 List!30223 BalanceConc!18296) Bool)

(assert (=> b!2609982 (= res!1098528 (rulesProduceEachTokenIndividually!966 thiss!14197 rules!1726 v!6381))))

(declare-fun b!2609983 () Bool)

(declare-fun tp!829182 () Bool)

(declare-fun inv!40759 (Conc!9341) Bool)

(assert (=> b!2609983 (= e!1646702 (and (inv!40759 (c!419602 v!6381)) tp!829182))))

(declare-fun tp!829174 () Bool)

(declare-fun b!2609984 () Bool)

(declare-fun inv!21 (TokenValue!4771) Bool)

(assert (=> b!2609984 (= e!1646697 (and (inv!21 (value!147251 separatorToken!156)) e!1646706 tp!829174))))

(declare-fun b!2609985 () Bool)

(declare-fun e!1646698 () Bool)

(assert (=> b!2609985 (= e!1646698 true)))

(declare-fun lt!917136 () Bool)

(declare-fun lt!917133 () List!30224)

(declare-fun lt!917130 () Token!8568)

(declare-fun contains!5572 (List!30224 Token!8568) Bool)

(assert (=> b!2609985 (= lt!917136 (contains!5572 lt!917133 lt!917130))))

(declare-fun b!2609986 () Bool)

(declare-fun res!1098530 () Bool)

(assert (=> b!2609986 (=> (not res!1098530) (not e!1646699))))

(declare-fun isEmpty!17222 (List!30223) Bool)

(assert (=> b!2609986 (= res!1098530 (not (isEmpty!17222 rules!1726)))))

(assert (=> b!2609987 (= e!1646695 (and tp!829176 tp!829177))))

(declare-fun b!2609988 () Bool)

(declare-fun e!1646703 () Bool)

(assert (=> b!2609988 (= e!1646699 e!1646703)))

(declare-fun res!1098532 () Bool)

(assert (=> b!2609988 (=> (not res!1098532) (not e!1646703))))

(assert (=> b!2609988 (= res!1098532 (< from!862 lt!917134))))

(declare-datatypes ((Unit!44113 0))(
  ( (Unit!44114) )
))
(declare-fun lt!917131 () Unit!44113)

(declare-fun lemmaContentSubsetPreservesForall!218 (List!30224 List!30224 Int) Unit!44113)

(declare-fun dropList!852 (BalanceConc!18296 Int) List!30224)

(assert (=> b!2609988 (= lt!917131 (lemmaContentSubsetPreservesForall!218 lt!917133 (dropList!852 v!6381 from!862) lambda!97618))))

(declare-fun list!11307 (BalanceConc!18296) List!30224)

(assert (=> b!2609988 (= lt!917133 (list!11307 v!6381))))

(declare-fun b!2609989 () Bool)

(declare-fun tp!829178 () Bool)

(assert (=> b!2609989 (= e!1646696 (and tp!829178 (inv!40751 (tag!5039 (h!35543 rules!1726))) (inv!40758 (transformation!4549 (h!35543 rules!1726))) e!1646700))))

(declare-fun b!2609990 () Bool)

(assert (=> b!2609990 (= e!1646703 (not e!1646698))))

(declare-fun res!1098525 () Bool)

(assert (=> b!2609990 (=> res!1098525 e!1646698)))

(declare-fun contains!5573 (BalanceConc!18296 Token!8568) Bool)

(assert (=> b!2609990 (= res!1098525 (not (contains!5573 v!6381 lt!917130)))))

(declare-fun apply!7058 (BalanceConc!18296 Int) Token!8568)

(assert (=> b!2609990 (= lt!917130 (apply!7058 v!6381 from!862))))

(declare-fun lt!917137 () List!30224)

(declare-fun tail!4182 (List!30224) List!30224)

(declare-fun drop!1545 (List!30224 Int) List!30224)

(assert (=> b!2609990 (= (tail!4182 lt!917137) (drop!1545 lt!917133 (+ 1 from!862)))))

(declare-fun lt!917132 () Unit!44113)

(declare-fun lemmaDropTail!734 (List!30224 Int) Unit!44113)

(assert (=> b!2609990 (= lt!917132 (lemmaDropTail!734 lt!917133 from!862))))

(declare-fun head!5944 (List!30224) Token!8568)

(declare-fun apply!7059 (List!30224 Int) Token!8568)

(assert (=> b!2609990 (= (head!5944 lt!917137) (apply!7059 lt!917133 from!862))))

(assert (=> b!2609990 (= lt!917137 (drop!1545 lt!917133 from!862))))

(declare-fun lt!917135 () Unit!44113)

(declare-fun lemmaDropApply!760 (List!30224 Int) Unit!44113)

(assert (=> b!2609990 (= lt!917135 (lemmaDropApply!760 lt!917133 from!862))))

(assert (= (and start!253702 res!1098522) b!2609975))

(assert (= (and b!2609975 res!1098523) b!2609986))

(assert (= (and b!2609986 res!1098530) b!2609973))

(assert (= (and b!2609973 res!1098524) b!2609982))

(assert (= (and b!2609982 res!1098528) b!2609981))

(assert (= (and b!2609981 res!1098529) b!2609977))

(assert (= (and b!2609977 res!1098526) b!2609976))

(assert (= (and b!2609976 res!1098531) b!2609978))

(assert (= (and b!2609978 res!1098527) b!2609988))

(assert (= (and b!2609988 res!1098532) b!2609990))

(assert (= (and b!2609990 (not res!1098525)) b!2609985))

(assert (= b!2609989 b!2609974))

(assert (= b!2609979 b!2609989))

(assert (= (and start!253702 ((_ is Cons!30123) rules!1726)) b!2609979))

(assert (= b!2609980 b!2609987))

(assert (= b!2609984 b!2609980))

(assert (= start!253702 b!2609984))

(assert (= start!253702 b!2609983))

(declare-fun m!2944665 () Bool)

(assert (=> b!2609985 m!2944665))

(declare-fun m!2944667 () Bool)

(assert (=> b!2609973 m!2944667))

(declare-fun m!2944669 () Bool)

(assert (=> b!2609983 m!2944669))

(declare-fun m!2944671 () Bool)

(assert (=> b!2609976 m!2944671))

(declare-fun m!2944673 () Bool)

(assert (=> start!253702 m!2944673))

(declare-fun m!2944675 () Bool)

(assert (=> start!253702 m!2944675))

(declare-fun m!2944677 () Bool)

(assert (=> b!2609975 m!2944677))

(declare-fun m!2944679 () Bool)

(assert (=> b!2609986 m!2944679))

(declare-fun m!2944681 () Bool)

(assert (=> b!2609989 m!2944681))

(declare-fun m!2944683 () Bool)

(assert (=> b!2609989 m!2944683))

(declare-fun m!2944685 () Bool)

(assert (=> b!2609990 m!2944685))

(declare-fun m!2944687 () Bool)

(assert (=> b!2609990 m!2944687))

(declare-fun m!2944689 () Bool)

(assert (=> b!2609990 m!2944689))

(declare-fun m!2944691 () Bool)

(assert (=> b!2609990 m!2944691))

(declare-fun m!2944693 () Bool)

(assert (=> b!2609990 m!2944693))

(declare-fun m!2944695 () Bool)

(assert (=> b!2609990 m!2944695))

(declare-fun m!2944697 () Bool)

(assert (=> b!2609990 m!2944697))

(declare-fun m!2944699 () Bool)

(assert (=> b!2609990 m!2944699))

(declare-fun m!2944701 () Bool)

(assert (=> b!2609990 m!2944701))

(declare-fun m!2944703 () Bool)

(assert (=> b!2609981 m!2944703))

(declare-fun m!2944705 () Bool)

(assert (=> b!2609984 m!2944705))

(declare-fun m!2944707 () Bool)

(assert (=> b!2609980 m!2944707))

(declare-fun m!2944709 () Bool)

(assert (=> b!2609980 m!2944709))

(declare-fun m!2944711 () Bool)

(assert (=> b!2609988 m!2944711))

(assert (=> b!2609988 m!2944711))

(declare-fun m!2944713 () Bool)

(assert (=> b!2609988 m!2944713))

(declare-fun m!2944715 () Bool)

(assert (=> b!2609988 m!2944715))

(declare-fun m!2944717 () Bool)

(assert (=> b!2609982 m!2944717))

(declare-fun m!2944719 () Bool)

(assert (=> b!2609978 m!2944719))

(check-sat (not b!2609975) (not b!2609983) b_and!190887 b_and!190889 (not b!2609973) b_and!190885 (not b_next!74035) (not b!2609986) (not b!2609982) (not b!2609990) (not b!2609979) (not b!2609980) (not b_next!74029) (not b_next!74031) (not b!2609988) (not b!2609978) (not b_next!74033) (not b!2609984) (not start!253702) (not b!2609981) (not b!2609985) b_and!190883 (not b!2609989) (not b!2609976))
(check-sat b_and!190887 (not b_next!74033) b_and!190889 b_and!190885 (not b_next!74035) b_and!190883 (not b_next!74029) (not b_next!74031))
