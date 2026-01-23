; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!259704 () Bool)

(assert start!259704)

(declare-fun b!2670198 () Bool)

(declare-fun b_free!75021 () Bool)

(declare-fun b_next!75725 () Bool)

(assert (=> b!2670198 (= b_free!75021 (not b_next!75725))))

(declare-fun tp!844119 () Bool)

(declare-fun b_and!197053 () Bool)

(assert (=> b!2670198 (= tp!844119 b_and!197053)))

(declare-fun b_free!75023 () Bool)

(declare-fun b_next!75727 () Bool)

(assert (=> b!2670198 (= b_free!75023 (not b_next!75727))))

(declare-fun tp!844124 () Bool)

(declare-fun b_and!197055 () Bool)

(assert (=> b!2670198 (= tp!844124 b_and!197055)))

(declare-fun b!2670201 () Bool)

(declare-fun b_free!75025 () Bool)

(declare-fun b_next!75729 () Bool)

(assert (=> b!2670201 (= b_free!75025 (not b_next!75729))))

(declare-fun tp!844128 () Bool)

(declare-fun b_and!197057 () Bool)

(assert (=> b!2670201 (= tp!844128 b_and!197057)))

(declare-fun b_free!75027 () Bool)

(declare-fun b_next!75731 () Bool)

(assert (=> b!2670201 (= b_free!75027 (not b_next!75731))))

(declare-fun tp!844125 () Bool)

(declare-fun b_and!197059 () Bool)

(assert (=> b!2670201 (= tp!844125 b_and!197059)))

(declare-fun b!2670206 () Bool)

(declare-fun b_free!75029 () Bool)

(declare-fun b_next!75733 () Bool)

(assert (=> b!2670206 (= b_free!75029 (not b_next!75733))))

(declare-fun tp!844126 () Bool)

(declare-fun b_and!197061 () Bool)

(assert (=> b!2670206 (= tp!844126 b_and!197061)))

(declare-fun b_free!75031 () Bool)

(declare-fun b_next!75735 () Bool)

(assert (=> b!2670206 (= b_free!75031 (not b_next!75735))))

(declare-fun tp!844127 () Bool)

(declare-fun b_and!197063 () Bool)

(assert (=> b!2670206 (= tp!844127 b_and!197063)))

(declare-fun bs!479419 () Bool)

(declare-fun b!2670199 () Bool)

(declare-fun b!2670204 () Bool)

(assert (= bs!479419 (and b!2670199 b!2670204)))

(declare-fun lambda!99690 () Int)

(declare-fun lambda!99689 () Int)

(assert (=> bs!479419 (not (= lambda!99690 lambda!99689))))

(declare-fun b!2670220 () Bool)

(declare-fun e!1682863 () Bool)

(assert (=> b!2670220 (= e!1682863 true)))

(declare-fun b!2670219 () Bool)

(declare-fun e!1682862 () Bool)

(assert (=> b!2670219 (= e!1682862 e!1682863)))

(declare-fun b!2670218 () Bool)

(declare-fun e!1682861 () Bool)

(assert (=> b!2670218 (= e!1682861 e!1682862)))

(assert (=> b!2670199 e!1682861))

(assert (= b!2670219 b!2670220))

(assert (= b!2670218 b!2670219))

(declare-datatypes ((List!30787 0))(
  ( (Nil!30687) (Cons!30687 (h!36107 (_ BitVec 16)) (t!223150 List!30787)) )
))
(declare-datatypes ((TokenValue!4902 0))(
  ( (FloatLiteralValue!9804 (text!34759 List!30787)) (TokenValueExt!4901 (__x!19637 Int)) (Broken!24510 (value!150960 List!30787)) (Object!5001) (End!4902) (Def!4902) (Underscore!4902) (Match!4902) (Else!4902) (Error!4902) (Case!4902) (If!4902) (Extends!4902) (Abstract!4902) (Class!4902) (Val!4902) (DelimiterValue!9804 (del!4962 List!30787)) (KeywordValue!4908 (value!150961 List!30787)) (CommentValue!9804 (value!150962 List!30787)) (WhitespaceValue!9804 (value!150963 List!30787)) (IndentationValue!4902 (value!150964 List!30787)) (String!34395) (Int32!4902) (Broken!24511 (value!150965 List!30787)) (Boolean!4903) (Unit!44907) (OperatorValue!4905 (op!4962 List!30787)) (IdentifierValue!9804 (value!150966 List!30787)) (IdentifierValue!9805 (value!150967 List!30787)) (WhitespaceValue!9805 (value!150968 List!30787)) (True!9804) (False!9804) (Broken!24512 (value!150969 List!30787)) (Broken!24513 (value!150970 List!30787)) (True!9805) (RightBrace!4902) (RightBracket!4902) (Colon!4902) (Null!4902) (Comma!4902) (LeftBracket!4902) (False!9805) (LeftBrace!4902) (ImaginaryLiteralValue!4902 (text!34760 List!30787)) (StringLiteralValue!14706 (value!150971 List!30787)) (EOFValue!4902 (value!150972 List!30787)) (IdentValue!4902 (value!150973 List!30787)) (DelimiterValue!9805 (value!150974 List!30787)) (DedentValue!4902 (value!150975 List!30787)) (NewLineValue!4902 (value!150976 List!30787)) (IntegerValue!14706 (value!150977 (_ BitVec 32)) (text!34761 List!30787)) (IntegerValue!14707 (value!150978 Int) (text!34762 List!30787)) (Times!4902) (Or!4902) (Equal!4902) (Minus!4902) (Broken!24514 (value!150979 List!30787)) (And!4902) (Div!4902) (LessEqual!4902) (Mod!4902) (Concat!12726) (Not!4902) (Plus!4902) (SpaceValue!4902 (value!150980 List!30787)) (IntegerValue!14708 (value!150981 Int) (text!34763 List!30787)) (StringLiteralValue!14707 (text!34764 List!30787)) (FloatLiteralValue!9805 (text!34765 List!30787)) (BytesLiteralValue!4902 (value!150982 List!30787)) (CommentValue!9805 (value!150983 List!30787)) (StringLiteralValue!14708 (value!150984 List!30787)) (ErrorTokenValue!4902 (msg!4963 List!30787)) )
))
(declare-datatypes ((C!15806 0))(
  ( (C!15807 (val!9837 Int)) )
))
(declare-datatypes ((List!30788 0))(
  ( (Nil!30688) (Cons!30688 (h!36108 C!15806) (t!223151 List!30788)) )
))
(declare-datatypes ((IArray!19193 0))(
  ( (IArray!19194 (innerList!9654 List!30788)) )
))
(declare-datatypes ((Conc!9594 0))(
  ( (Node!9594 (left!23732 Conc!9594) (right!24062 Conc!9594) (csize!19418 Int) (cheight!9805 Int)) (Leaf!14675 (xs!12624 IArray!19193) (csize!19419 Int)) (Empty!9594) )
))
(declare-datatypes ((BalanceConc!18802 0))(
  ( (BalanceConc!18803 (c!430451 Conc!9594)) )
))
(declare-datatypes ((Regex!7824 0))(
  ( (ElementMatch!7824 (c!430452 C!15806)) (Concat!12727 (regOne!16160 Regex!7824) (regTwo!16160 Regex!7824)) (EmptyExpr!7824) (Star!7824 (reg!8153 Regex!7824)) (EmptyLang!7824) (Union!7824 (regOne!16161 Regex!7824) (regTwo!16161 Regex!7824)) )
))
(declare-datatypes ((TokenValueInjection!9244 0))(
  ( (TokenValueInjection!9245 (toValue!6618 Int) (toChars!6477 Int)) )
))
(declare-datatypes ((String!34396 0))(
  ( (String!34397 (value!150985 String)) )
))
(declare-datatypes ((Rule!9160 0))(
  ( (Rule!9161 (regex!4680 Regex!7824) (tag!5182 String!34396) (isSeparator!4680 Bool) (transformation!4680 TokenValueInjection!9244)) )
))
(declare-datatypes ((List!30789 0))(
  ( (Nil!30689) (Cons!30689 (h!36109 Rule!9160) (t!223152 List!30789)) )
))
(declare-fun rules!1712 () List!30789)

(assert (= (and b!2670199 (is-Cons!30689 rules!1712)) b!2670218))

(declare-fun order!16823 () Int)

(declare-fun order!16821 () Int)

(declare-fun dynLambda!13275 (Int Int) Int)

(declare-fun dynLambda!13276 (Int Int) Int)

(assert (=> b!2670220 (< (dynLambda!13275 order!16821 (toValue!6618 (transformation!4680 (h!36109 rules!1712)))) (dynLambda!13276 order!16823 lambda!99690))))

(declare-fun order!16825 () Int)

(declare-fun dynLambda!13277 (Int Int) Int)

(assert (=> b!2670220 (< (dynLambda!13277 order!16825 (toChars!6477 (transformation!4680 (h!36109 rules!1712)))) (dynLambda!13276 order!16823 lambda!99690))))

(assert (=> b!2670199 true))

(declare-fun b!2670190 () Bool)

(declare-fun res!1122663 () Bool)

(declare-fun e!1682843 () Bool)

(assert (=> b!2670190 (=> (not res!1122663) (not e!1682843))))

(declare-datatypes ((LexerInterface!4277 0))(
  ( (LexerInterfaceExt!4274 (__x!19638 Int)) (Lexer!4275) )
))
(declare-fun thiss!14116 () LexerInterface!4277)

(declare-datatypes ((Token!8830 0))(
  ( (Token!8831 (value!150986 TokenValue!4902) (rule!7086 Rule!9160) (size!23742 Int) (originalCharacters!5446 List!30788)) )
))
(declare-fun separatorToken!152 () Token!8830)

(declare-fun rulesProduceIndividualToken!1989 (LexerInterface!4277 List!30789 Token!8830) Bool)

(assert (=> b!2670190 (= res!1122663 (rulesProduceIndividualToken!1989 thiss!14116 rules!1712 separatorToken!152))))

(declare-fun b!2670191 () Bool)

(declare-fun res!1122660 () Bool)

(assert (=> b!2670191 (=> (not res!1122660) (not e!1682843))))

(declare-datatypes ((List!30790 0))(
  ( (Nil!30690) (Cons!30690 (h!36110 Token!8830) (t!223153 List!30790)) )
))
(declare-fun l!4335 () List!30790)

(declare-fun rulesProduceEachTokenIndividuallyList!1499 (LexerInterface!4277 List!30789 List!30790) Bool)

(assert (=> b!2670191 (= res!1122660 (rulesProduceEachTokenIndividuallyList!1499 thiss!14116 rules!1712 l!4335))))

(declare-fun b!2670192 () Bool)

(declare-fun e!1682852 () Bool)

(declare-fun e!1682839 () Bool)

(declare-fun tp!844122 () Bool)

(declare-fun inv!41695 (Token!8830) Bool)

(assert (=> b!2670192 (= e!1682852 (and (inv!41695 (h!36110 l!4335)) e!1682839 tp!844122))))

(declare-fun res!1122662 () Bool)

(assert (=> start!259704 (=> (not res!1122662) (not e!1682843))))

(assert (=> start!259704 (= res!1122662 (is-Lexer!4275 thiss!14116))))

(assert (=> start!259704 e!1682843))

(assert (=> start!259704 true))

(declare-fun e!1682840 () Bool)

(assert (=> start!259704 e!1682840))

(assert (=> start!259704 e!1682852))

(declare-fun e!1682845 () Bool)

(assert (=> start!259704 (and (inv!41695 separatorToken!152) e!1682845)))

(declare-fun b!2670193 () Bool)

(declare-fun res!1122664 () Bool)

(assert (=> b!2670193 (=> (not res!1122664) (not e!1682843))))

(assert (=> b!2670193 (= res!1122664 (is-Cons!30690 l!4335))))

(declare-fun e!1682844 () Bool)

(declare-fun b!2670194 () Bool)

(declare-fun tp!844123 () Bool)

(declare-fun inv!21 (TokenValue!4902) Bool)

(assert (=> b!2670194 (= e!1682839 (and (inv!21 (value!150986 (h!36110 l!4335))) e!1682844 tp!844123))))

(declare-fun b!2670195 () Bool)

(declare-fun res!1122661 () Bool)

(assert (=> b!2670195 (=> (not res!1122661) (not e!1682843))))

(declare-fun rulesInvariant!3777 (LexerInterface!4277 List!30789) Bool)

(assert (=> b!2670195 (= res!1122661 (rulesInvariant!3777 thiss!14116 rules!1712))))

(declare-fun b!2670196 () Bool)

(declare-fun res!1122655 () Bool)

(assert (=> b!2670196 (=> (not res!1122655) (not e!1682843))))

(assert (=> b!2670196 (= res!1122655 (isSeparator!4680 (rule!7086 separatorToken!152)))))

(declare-fun e!1682854 () Bool)

(declare-fun b!2670197 () Bool)

(declare-fun e!1682848 () Bool)

(declare-fun tp!844117 () Bool)

(declare-fun inv!41692 (String!34396) Bool)

(declare-fun inv!41696 (TokenValueInjection!9244) Bool)

(assert (=> b!2670197 (= e!1682854 (and tp!844117 (inv!41692 (tag!5182 (h!36109 rules!1712))) (inv!41696 (transformation!4680 (h!36109 rules!1712))) e!1682848))))

(declare-fun e!1682846 () Bool)

(assert (=> b!2670198 (= e!1682846 (and tp!844119 tp!844124))))

(assert (=> b!2670199 (= e!1682843 false)))

(declare-fun lt!940471 () List!30788)

(declare-fun ++!7484 (List!30788 List!30788) List!30788)

(declare-fun list!11584 (BalanceConc!18802) List!30788)

(declare-fun charsOf!2945 (Token!8830) BalanceConc!18802)

(declare-fun printWithSeparatorTokenWhenNeededList!673 (LexerInterface!4277 List!30789 List!30790 Token!8830) List!30788)

(assert (=> b!2670199 (= lt!940471 (++!7484 (list!11584 (charsOf!2945 (h!36110 l!4335))) (printWithSeparatorTokenWhenNeededList!673 thiss!14116 rules!1712 (t!223153 l!4335) separatorToken!152)))))

(declare-datatypes ((Unit!44908 0))(
  ( (Unit!44909) )
))
(declare-fun lt!940472 () Unit!44908)

(declare-fun forallContained!1022 (List!30790 Int Token!8830) Unit!44908)

(assert (=> b!2670199 (= lt!940472 (forallContained!1022 l!4335 lambda!99690 (h!36110 l!4335)))))

(declare-fun e!1682847 () Bool)

(declare-fun b!2670200 () Bool)

(declare-fun tp!844129 () Bool)

(declare-fun e!1682853 () Bool)

(assert (=> b!2670200 (= e!1682847 (and tp!844129 (inv!41692 (tag!5182 (rule!7086 separatorToken!152))) (inv!41696 (transformation!4680 (rule!7086 separatorToken!152))) e!1682853))))

(assert (=> b!2670201 (= e!1682853 (and tp!844128 tp!844125))))

(declare-fun b!2670202 () Bool)

(declare-fun tp!844120 () Bool)

(assert (=> b!2670202 (= e!1682840 (and e!1682854 tp!844120))))

(declare-fun b!2670203 () Bool)

(declare-fun res!1122656 () Bool)

(assert (=> b!2670203 (=> (not res!1122656) (not e!1682843))))

(declare-fun isEmpty!17556 (List!30789) Bool)

(assert (=> b!2670203 (= res!1122656 (not (isEmpty!17556 rules!1712)))))

(declare-fun res!1122657 () Bool)

(assert (=> b!2670204 (=> (not res!1122657) (not e!1682843))))

(declare-fun forall!6493 (List!30790 Int) Bool)

(assert (=> b!2670204 (= res!1122657 (forall!6493 l!4335 lambda!99689))))

(declare-fun b!2670205 () Bool)

(declare-fun res!1122658 () Bool)

(assert (=> b!2670205 (=> (not res!1122658) (not e!1682843))))

(declare-fun sepAndNonSepRulesDisjointChars!1253 (List!30789 List!30789) Bool)

(assert (=> b!2670205 (= res!1122658 (sepAndNonSepRulesDisjointChars!1253 rules!1712 rules!1712))))

(assert (=> b!2670206 (= e!1682848 (and tp!844126 tp!844127))))

(declare-fun tp!844121 () Bool)

(declare-fun b!2670207 () Bool)

(assert (=> b!2670207 (= e!1682844 (and tp!844121 (inv!41692 (tag!5182 (rule!7086 (h!36110 l!4335)))) (inv!41696 (transformation!4680 (rule!7086 (h!36110 l!4335)))) e!1682846))))

(declare-fun b!2670208 () Bool)

(declare-fun res!1122659 () Bool)

(assert (=> b!2670208 (=> (not res!1122659) (not e!1682843))))

(declare-fun contains!5888 (List!30790 Token!8830) Bool)

(assert (=> b!2670208 (= res!1122659 (contains!5888 l!4335 (h!36110 l!4335)))))

(declare-fun b!2670209 () Bool)

(declare-fun tp!844118 () Bool)

(assert (=> b!2670209 (= e!1682845 (and (inv!21 (value!150986 separatorToken!152)) e!1682847 tp!844118))))

(assert (= (and start!259704 res!1122662) b!2670203))

(assert (= (and b!2670203 res!1122656) b!2670195))

(assert (= (and b!2670195 res!1122661) b!2670191))

(assert (= (and b!2670191 res!1122660) b!2670190))

(assert (= (and b!2670190 res!1122663) b!2670196))

(assert (= (and b!2670196 res!1122655) b!2670204))

(assert (= (and b!2670204 res!1122657) b!2670205))

(assert (= (and b!2670205 res!1122658) b!2670193))

(assert (= (and b!2670193 res!1122664) b!2670208))

(assert (= (and b!2670208 res!1122659) b!2670199))

(assert (= b!2670197 b!2670206))

(assert (= b!2670202 b!2670197))

(assert (= (and start!259704 (is-Cons!30689 rules!1712)) b!2670202))

(assert (= b!2670207 b!2670198))

(assert (= b!2670194 b!2670207))

(assert (= b!2670192 b!2670194))

(assert (= (and start!259704 (is-Cons!30690 l!4335)) b!2670192))

(assert (= b!2670200 b!2670201))

(assert (= b!2670209 b!2670200))

(assert (= start!259704 b!2670209))

(declare-fun m!3036371 () Bool)

(assert (=> b!2670208 m!3036371))

(declare-fun m!3036373 () Bool)

(assert (=> b!2670209 m!3036373))

(declare-fun m!3036375 () Bool)

(assert (=> b!2670199 m!3036375))

(declare-fun m!3036377 () Bool)

(assert (=> b!2670199 m!3036377))

(declare-fun m!3036379 () Bool)

(assert (=> b!2670199 m!3036379))

(assert (=> b!2670199 m!3036379))

(declare-fun m!3036381 () Bool)

(assert (=> b!2670199 m!3036381))

(declare-fun m!3036383 () Bool)

(assert (=> b!2670199 m!3036383))

(assert (=> b!2670199 m!3036377))

(assert (=> b!2670199 m!3036381))

(declare-fun m!3036385 () Bool)

(assert (=> b!2670207 m!3036385))

(declare-fun m!3036387 () Bool)

(assert (=> b!2670207 m!3036387))

(declare-fun m!3036389 () Bool)

(assert (=> b!2670192 m!3036389))

(declare-fun m!3036391 () Bool)

(assert (=> b!2670203 m!3036391))

(declare-fun m!3036393 () Bool)

(assert (=> start!259704 m!3036393))

(declare-fun m!3036395 () Bool)

(assert (=> b!2670204 m!3036395))

(declare-fun m!3036397 () Bool)

(assert (=> b!2670194 m!3036397))

(declare-fun m!3036399 () Bool)

(assert (=> b!2670195 m!3036399))

(declare-fun m!3036401 () Bool)

(assert (=> b!2670205 m!3036401))

(declare-fun m!3036403 () Bool)

(assert (=> b!2670191 m!3036403))

(declare-fun m!3036405 () Bool)

(assert (=> b!2670190 m!3036405))

(declare-fun m!3036407 () Bool)

(assert (=> b!2670197 m!3036407))

(declare-fun m!3036409 () Bool)

(assert (=> b!2670197 m!3036409))

(declare-fun m!3036411 () Bool)

(assert (=> b!2670200 m!3036411))

(declare-fun m!3036413 () Bool)

(assert (=> b!2670200 m!3036413))

(push 1)

(assert (not b_next!75731))

(assert (not b!2670204))

(assert (not b!2670190))

(assert (not b!2670208))

(assert (not b!2670199))

(assert (not b_next!75729))

(assert (not b_next!75735))

(assert (not b_next!75725))

(assert (not b_next!75733))

(assert b_and!197055)

(assert (not b!2670207))

(assert b_and!197061)

(assert (not b!2670200))

(assert (not b!2670209))

(assert (not b!2670191))

(assert b_and!197057)

(assert (not b!2670197))

(assert (not b!2670195))

(assert (not b!2670194))

(assert (not b!2670203))

(assert (not b_next!75727))

(assert b_and!197053)

(assert (not b!2670202))

(assert (not start!259704))

(assert b_and!197059)

(assert (not b!2670192))

(assert (not b!2670218))

(assert (not b!2670205))

(assert b_and!197063)

(check-sat)

(pop 1)

(push 1)

(assert b_and!197061)

(assert (not b_next!75731))

(assert b_and!197057)

(assert (not b_next!75727))

(assert b_and!197053)

(assert (not b_next!75729))

(assert b_and!197059)

(assert (not b_next!75735))

(assert (not b_next!75725))

(assert b_and!197063)

(assert (not b_next!75733))

(assert b_and!197055)

(check-sat)

(pop 1)

