; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!253602 () Bool)

(assert start!253602)

(declare-fun b!2608976 () Bool)

(declare-fun b_free!73205 () Bool)

(declare-fun b_next!73909 () Bool)

(assert (=> b!2608976 (= b_free!73205 (not b_next!73909))))

(declare-fun tp!828710 () Bool)

(declare-fun b_and!190755 () Bool)

(assert (=> b!2608976 (= tp!828710 b_and!190755)))

(declare-fun b_free!73207 () Bool)

(declare-fun b_next!73911 () Bool)

(assert (=> b!2608976 (= b_free!73207 (not b_next!73911))))

(declare-fun tp!828703 () Bool)

(declare-fun b_and!190757 () Bool)

(assert (=> b!2608976 (= tp!828703 b_and!190757)))

(declare-fun b!2608981 () Bool)

(declare-fun b_free!73209 () Bool)

(declare-fun b_next!73913 () Bool)

(assert (=> b!2608981 (= b_free!73209 (not b_next!73913))))

(declare-fun tp!828707 () Bool)

(declare-fun b_and!190759 () Bool)

(assert (=> b!2608981 (= tp!828707 b_and!190759)))

(declare-fun b_free!73211 () Bool)

(declare-fun b_next!73915 () Bool)

(assert (=> b!2608981 (= b_free!73211 (not b_next!73915))))

(declare-fun tp!828704 () Bool)

(declare-fun b_and!190761 () Bool)

(assert (=> b!2608981 (= tp!828704 b_and!190761)))

(declare-fun b!2608970 () Bool)

(declare-fun e!1645964 () Bool)

(declare-fun e!1645954 () Bool)

(assert (=> b!2608970 (= e!1645964 e!1645954)))

(declare-fun res!1097982 () Bool)

(assert (=> b!2608970 (=> (not res!1097982) (not e!1645954))))

(declare-fun from!862 () Int)

(declare-fun lt!916873 () Int)

(assert (=> b!2608970 (= res!1097982 (<= from!862 lt!916873))))

(declare-datatypes ((C!15516 0))(
  ( (C!15517 (val!9692 Int)) )
))
(declare-datatypes ((List!30163 0))(
  ( (Nil!30063) (Cons!30063 (h!35483 (_ BitVec 16)) (t!213884 List!30163)) )
))
(declare-datatypes ((TokenValue!4757 0))(
  ( (FloatLiteralValue!9514 (text!33744 List!30163)) (TokenValueExt!4756 (__x!19347 Int)) (Broken!23785 (value!146826 List!30163)) (Object!4856) (End!4757) (Def!4757) (Underscore!4757) (Match!4757) (Else!4757) (Error!4757) (Case!4757) (If!4757) (Extends!4757) (Abstract!4757) (Class!4757) (Val!4757) (DelimiterValue!9514 (del!4817 List!30163)) (KeywordValue!4763 (value!146827 List!30163)) (CommentValue!9514 (value!146828 List!30163)) (WhitespaceValue!9514 (value!146829 List!30163)) (IndentationValue!4757 (value!146830 List!30163)) (String!33668) (Int32!4757) (Broken!23786 (value!146831 List!30163)) (Boolean!4758) (Unit!44070) (OperatorValue!4760 (op!4817 List!30163)) (IdentifierValue!9514 (value!146832 List!30163)) (IdentifierValue!9515 (value!146833 List!30163)) (WhitespaceValue!9515 (value!146834 List!30163)) (True!9514) (False!9514) (Broken!23787 (value!146835 List!30163)) (Broken!23788 (value!146836 List!30163)) (True!9515) (RightBrace!4757) (RightBracket!4757) (Colon!4757) (Null!4757) (Comma!4757) (LeftBracket!4757) (False!9515) (LeftBrace!4757) (ImaginaryLiteralValue!4757 (text!33745 List!30163)) (StringLiteralValue!14271 (value!146837 List!30163)) (EOFValue!4757 (value!146838 List!30163)) (IdentValue!4757 (value!146839 List!30163)) (DelimiterValue!9515 (value!146840 List!30163)) (DedentValue!4757 (value!146841 List!30163)) (NewLineValue!4757 (value!146842 List!30163)) (IntegerValue!14271 (value!146843 (_ BitVec 32)) (text!33746 List!30163)) (IntegerValue!14272 (value!146844 Int) (text!33747 List!30163)) (Times!4757) (Or!4757) (Equal!4757) (Minus!4757) (Broken!23789 (value!146845 List!30163)) (And!4757) (Div!4757) (LessEqual!4757) (Mod!4757) (Concat!12436) (Not!4757) (Plus!4757) (SpaceValue!4757 (value!146846 List!30163)) (IntegerValue!14273 (value!146847 Int) (text!33748 List!30163)) (StringLiteralValue!14272 (text!33749 List!30163)) (FloatLiteralValue!9515 (text!33750 List!30163)) (BytesLiteralValue!4757 (value!146848 List!30163)) (CommentValue!9515 (value!146849 List!30163)) (StringLiteralValue!14273 (value!146850 List!30163)) (ErrorTokenValue!4757 (msg!4818 List!30163)) )
))
(declare-datatypes ((Regex!7679 0))(
  ( (ElementMatch!7679 (c!419540 C!15516)) (Concat!12437 (regOne!15870 Regex!7679) (regTwo!15870 Regex!7679)) (EmptyExpr!7679) (Star!7679 (reg!8008 Regex!7679)) (EmptyLang!7679) (Union!7679 (regOne!15871 Regex!7679) (regTwo!15871 Regex!7679)) )
))
(declare-datatypes ((String!33669 0))(
  ( (String!33670 (value!146851 String)) )
))
(declare-datatypes ((List!30164 0))(
  ( (Nil!30064) (Cons!30064 (h!35484 C!15516) (t!213885 List!30164)) )
))
(declare-datatypes ((IArray!18629 0))(
  ( (IArray!18630 (innerList!9372 List!30164)) )
))
(declare-datatypes ((Conc!9312 0))(
  ( (Node!9312 (left!23123 Conc!9312) (right!23453 Conc!9312) (csize!18854 Int) (cheight!9523 Int)) (Leaf!14320 (xs!12296 IArray!18629) (csize!18855 Int)) (Empty!9312) )
))
(declare-datatypes ((BalanceConc!18238 0))(
  ( (BalanceConc!18239 (c!419541 Conc!9312)) )
))
(declare-datatypes ((TokenValueInjection!8954 0))(
  ( (TokenValueInjection!8955 (toValue!6437 Int) (toChars!6296 Int)) )
))
(declare-datatypes ((Rule!8870 0))(
  ( (Rule!8871 (regex!4535 Regex!7679) (tag!5025 String!33669) (isSeparator!4535 Bool) (transformation!4535 TokenValueInjection!8954)) )
))
(declare-datatypes ((Token!8540 0))(
  ( (Token!8541 (value!146852 TokenValue!4757) (rule!6905 Rule!8870) (size!23292 Int) (originalCharacters!5301 List!30164)) )
))
(declare-datatypes ((List!30165 0))(
  ( (Nil!30065) (Cons!30065 (h!35485 Token!8540) (t!213886 List!30165)) )
))
(declare-datatypes ((IArray!18631 0))(
  ( (IArray!18632 (innerList!9373 List!30165)) )
))
(declare-datatypes ((Conc!9313 0))(
  ( (Node!9313 (left!23124 Conc!9313) (right!23454 Conc!9313) (csize!18856 Int) (cheight!9524 Int)) (Leaf!14321 (xs!12297 IArray!18631) (csize!18857 Int)) (Empty!9313) )
))
(declare-datatypes ((BalanceConc!18240 0))(
  ( (BalanceConc!18241 (c!419542 Conc!9313)) )
))
(declare-fun v!6381 () BalanceConc!18240)

(declare-fun size!23293 (BalanceConc!18240) Int)

(assert (=> b!2608970 (= lt!916873 (size!23293 v!6381))))

(declare-fun b!2608971 () Bool)

(declare-fun res!1097983 () Bool)

(assert (=> b!2608971 (=> (not res!1097983) (not e!1645954))))

(declare-datatypes ((LexerInterface!4132 0))(
  ( (LexerInterfaceExt!4129 (__x!19348 Int)) (Lexer!4130) )
))
(declare-fun thiss!14197 () LexerInterface!4132)

(declare-datatypes ((List!30166 0))(
  ( (Nil!30066) (Cons!30066 (h!35486 Rule!8870) (t!213887 List!30166)) )
))
(declare-fun rules!1726 () List!30166)

(declare-fun rulesProduceEachTokenIndividually!952 (LexerInterface!4132 List!30166 BalanceConc!18240) Bool)

(assert (=> b!2608971 (= res!1097983 (rulesProduceEachTokenIndividually!952 thiss!14197 rules!1726 v!6381))))

(declare-fun b!2608972 () Bool)

(declare-fun res!1097975 () Bool)

(assert (=> b!2608972 (=> (not res!1097975) (not e!1645954))))

(declare-fun sepAndNonSepRulesDisjointChars!1108 (List!30166 List!30166) Bool)

(assert (=> b!2608972 (= res!1097975 (sepAndNonSepRulesDisjointChars!1108 rules!1726 rules!1726))))

(declare-fun b!2608973 () Bool)

(declare-fun e!1645966 () Bool)

(declare-fun e!1645959 () Bool)

(declare-fun tp!828708 () Bool)

(assert (=> b!2608973 (= e!1645966 (and e!1645959 tp!828708))))

(declare-fun b!2608974 () Bool)

(declare-fun e!1645962 () Bool)

(declare-fun tp!828705 () Bool)

(declare-fun inv!40669 (Conc!9313) Bool)

(assert (=> b!2608974 (= e!1645962 (and (inv!40669 (c!419542 v!6381)) tp!828705))))

(declare-fun b!2608975 () Bool)

(declare-fun res!1097979 () Bool)

(assert (=> b!2608975 (=> (not res!1097979) (not e!1645954))))

(declare-fun rulesInvariant!3632 (LexerInterface!4132 List!30166) Bool)

(assert (=> b!2608975 (= res!1097979 (rulesInvariant!3632 thiss!14197 rules!1726))))

(declare-fun e!1645956 () Bool)

(assert (=> b!2608976 (= e!1645956 (and tp!828710 tp!828703))))

(declare-fun b!2608977 () Bool)

(declare-fun res!1097974 () Bool)

(assert (=> b!2608977 (=> (not res!1097974) (not e!1645954))))

(declare-fun separatorToken!156 () Token!8540)

(assert (=> b!2608977 (= res!1097974 (isSeparator!4535 (rule!6905 separatorToken!156)))))

(declare-fun b!2608978 () Bool)

(declare-fun res!1097978 () Bool)

(assert (=> b!2608978 (=> (not res!1097978) (not e!1645954))))

(declare-fun isEmpty!17204 (List!30166) Bool)

(assert (=> b!2608978 (= res!1097978 (not (isEmpty!17204 rules!1726)))))

(declare-fun e!1645958 () Bool)

(declare-fun e!1645965 () Bool)

(declare-fun tp!828709 () Bool)

(declare-fun b!2608979 () Bool)

(declare-fun inv!21 (TokenValue!4757) Bool)

(assert (=> b!2608979 (= e!1645958 (and (inv!21 (value!146852 separatorToken!156)) e!1645965 tp!828709))))

(declare-fun b!2608980 () Bool)

(declare-fun e!1645963 () Bool)

(assert (=> b!2608980 (= e!1645954 e!1645963)))

(declare-fun res!1097981 () Bool)

(assert (=> b!2608980 (=> (not res!1097981) (not e!1645963))))

(assert (=> b!2608980 (= res!1097981 (>= from!862 lt!916873))))

(declare-fun lambda!97528 () Int)

(declare-datatypes ((Unit!44071 0))(
  ( (Unit!44072) )
))
(declare-fun lt!916870 () Unit!44071)

(declare-fun lt!916871 () List!30165)

(declare-fun lt!916869 () List!30165)

(declare-fun lemmaContentSubsetPreservesForall!204 (List!30165 List!30165 Int) Unit!44071)

(assert (=> b!2608980 (= lt!916870 (lemmaContentSubsetPreservesForall!204 lt!916869 lt!916871 lambda!97528))))

(declare-fun dropList!838 (BalanceConc!18240 Int) List!30165)

(assert (=> b!2608980 (= lt!916871 (dropList!838 v!6381 from!862))))

(declare-fun list!11289 (BalanceConc!18240) List!30165)

(assert (=> b!2608980 (= lt!916869 (list!11289 v!6381))))

(declare-fun e!1645957 () Bool)

(assert (=> b!2608981 (= e!1645957 (and tp!828707 tp!828704))))

(declare-fun tp!828702 () Bool)

(declare-fun b!2608982 () Bool)

(declare-fun inv!40664 (String!33669) Bool)

(declare-fun inv!40670 (TokenValueInjection!8954) Bool)

(assert (=> b!2608982 (= e!1645965 (and tp!828702 (inv!40664 (tag!5025 (rule!6905 separatorToken!156))) (inv!40670 (transformation!4535 (rule!6905 separatorToken!156))) e!1645957))))

(declare-fun b!2608983 () Bool)

(declare-fun res!1097977 () Bool)

(assert (=> b!2608983 (=> (not res!1097977) (not e!1645954))))

(declare-fun rulesProduceIndividualToken!1844 (LexerInterface!4132 List!30166 Token!8540) Bool)

(assert (=> b!2608983 (= res!1097977 (rulesProduceIndividualToken!1844 thiss!14197 rules!1726 separatorToken!156))))

(declare-fun b!2608984 () Bool)

(declare-fun res!1097976 () Bool)

(assert (=> b!2608984 (=> (not res!1097976) (not e!1645954))))

(declare-fun forall!6223 (BalanceConc!18240 Int) Bool)

(assert (=> b!2608984 (= res!1097976 (forall!6223 v!6381 lambda!97528))))

(declare-fun b!2608985 () Bool)

(declare-fun tp!828706 () Bool)

(assert (=> b!2608985 (= e!1645959 (and tp!828706 (inv!40664 (tag!5025 (h!35486 rules!1726))) (inv!40670 (transformation!4535 (h!35486 rules!1726))) e!1645956))))

(declare-fun res!1097980 () Bool)

(assert (=> start!253602 (=> (not res!1097980) (not e!1645964))))

(get-info :version)

(assert (=> start!253602 (= res!1097980 (and ((_ is Lexer!4130) thiss!14197) (>= from!862 0)))))

(assert (=> start!253602 e!1645964))

(assert (=> start!253602 true))

(assert (=> start!253602 e!1645966))

(declare-fun inv!40671 (Token!8540) Bool)

(assert (=> start!253602 (and (inv!40671 separatorToken!156) e!1645958)))

(declare-fun inv!40672 (BalanceConc!18240) Bool)

(assert (=> start!253602 (and (inv!40672 v!6381) e!1645962)))

(declare-fun b!2608986 () Bool)

(assert (=> b!2608986 (= e!1645963 false)))

(declare-fun lt!916872 () Bool)

(declare-fun rulesProduceEachTokenIndividuallyList!1429 (LexerInterface!4132 List!30166 List!30165) Bool)

(assert (=> b!2608986 (= lt!916872 (rulesProduceEachTokenIndividuallyList!1429 thiss!14197 rules!1726 lt!916871))))

(assert (= (and start!253602 res!1097980) b!2608970))

(assert (= (and b!2608970 res!1097982) b!2608978))

(assert (= (and b!2608978 res!1097978) b!2608975))

(assert (= (and b!2608975 res!1097979) b!2608971))

(assert (= (and b!2608971 res!1097983) b!2608983))

(assert (= (and b!2608983 res!1097977) b!2608977))

(assert (= (and b!2608977 res!1097974) b!2608984))

(assert (= (and b!2608984 res!1097976) b!2608972))

(assert (= (and b!2608972 res!1097975) b!2608980))

(assert (= (and b!2608980 res!1097981) b!2608986))

(assert (= b!2608985 b!2608976))

(assert (= b!2608973 b!2608985))

(assert (= (and start!253602 ((_ is Cons!30066) rules!1726)) b!2608973))

(assert (= b!2608982 b!2608981))

(assert (= b!2608979 b!2608982))

(assert (= start!253602 b!2608979))

(assert (= start!253602 b!2608974))

(declare-fun m!2943839 () Bool)

(assert (=> b!2608971 m!2943839))

(declare-fun m!2943841 () Bool)

(assert (=> b!2608980 m!2943841))

(declare-fun m!2943843 () Bool)

(assert (=> b!2608980 m!2943843))

(declare-fun m!2943845 () Bool)

(assert (=> b!2608980 m!2943845))

(declare-fun m!2943847 () Bool)

(assert (=> b!2608984 m!2943847))

(declare-fun m!2943849 () Bool)

(assert (=> b!2608970 m!2943849))

(declare-fun m!2943851 () Bool)

(assert (=> b!2608979 m!2943851))

(declare-fun m!2943853 () Bool)

(assert (=> b!2608983 m!2943853))

(declare-fun m!2943855 () Bool)

(assert (=> start!253602 m!2943855))

(declare-fun m!2943857 () Bool)

(assert (=> start!253602 m!2943857))

(declare-fun m!2943859 () Bool)

(assert (=> b!2608975 m!2943859))

(declare-fun m!2943861 () Bool)

(assert (=> b!2608986 m!2943861))

(declare-fun m!2943863 () Bool)

(assert (=> b!2608974 m!2943863))

(declare-fun m!2943865 () Bool)

(assert (=> b!2608972 m!2943865))

(declare-fun m!2943867 () Bool)

(assert (=> b!2608982 m!2943867))

(declare-fun m!2943869 () Bool)

(assert (=> b!2608982 m!2943869))

(declare-fun m!2943871 () Bool)

(assert (=> b!2608985 m!2943871))

(declare-fun m!2943873 () Bool)

(assert (=> b!2608985 m!2943873))

(declare-fun m!2943875 () Bool)

(assert (=> b!2608978 m!2943875))

(check-sat (not b!2608980) (not b_next!73909) (not b!2608975) (not b_next!73911) (not b!2608978) (not b!2608972) (not b!2608973) (not b!2608979) (not b_next!73913) (not b!2608985) (not b!2608984) b_and!190757 (not b!2608986) (not b!2608974) (not b!2608983) (not b!2608970) (not start!253602) b_and!190755 (not b!2608982) (not b!2608971) (not b_next!73915) b_and!190761 b_and!190759)
(check-sat (not b_next!73909) (not b_next!73913) (not b_next!73911) b_and!190757 b_and!190755 (not b_next!73915) b_and!190761 b_and!190759)
