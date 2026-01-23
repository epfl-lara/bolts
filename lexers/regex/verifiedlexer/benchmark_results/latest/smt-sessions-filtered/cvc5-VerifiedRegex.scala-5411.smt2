; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!275138 () Bool)

(assert start!275138)

(declare-fun b!2832047 () Bool)

(declare-fun b_free!81461 () Bool)

(declare-fun b_next!82165 () Bool)

(assert (=> b!2832047 (= b_free!81461 (not b_next!82165))))

(declare-fun tp!905186 () Bool)

(declare-fun b_and!207155 () Bool)

(assert (=> b!2832047 (= tp!905186 b_and!207155)))

(declare-fun b_free!81463 () Bool)

(declare-fun b_next!82167 () Bool)

(assert (=> b!2832047 (= b_free!81463 (not b_next!82167))))

(declare-fun tp!905187 () Bool)

(declare-fun b_and!207157 () Bool)

(assert (=> b!2832047 (= tp!905187 b_and!207157)))

(declare-fun b!2832045 () Bool)

(declare-fun b_free!81465 () Bool)

(declare-fun b_next!82169 () Bool)

(assert (=> b!2832045 (= b_free!81465 (not b_next!82169))))

(declare-fun tp!905188 () Bool)

(declare-fun b_and!207159 () Bool)

(assert (=> b!2832045 (= tp!905188 b_and!207159)))

(declare-fun b_free!81467 () Bool)

(declare-fun b_next!82171 () Bool)

(assert (=> b!2832045 (= b_free!81467 (not b_next!82171))))

(declare-fun tp!905183 () Bool)

(declare-fun b_and!207161 () Bool)

(assert (=> b!2832045 (= tp!905183 b_and!207161)))

(declare-fun b!2832035 () Bool)

(declare-fun e!1793069 () Bool)

(declare-datatypes ((List!33517 0))(
  ( (Nil!33393) (Cons!33393 (h!38813 (_ BitVec 16)) (t!231466 List!33517)) )
))
(declare-datatypes ((TokenValue!5237 0))(
  ( (FloatLiteralValue!10474 (text!37104 List!33517)) (TokenValueExt!5236 (__x!22212 Int)) (Broken!26185 (value!161044 List!33517)) (Object!5360) (End!5237) (Def!5237) (Underscore!5237) (Match!5237) (Else!5237) (Error!5237) (Case!5237) (If!5237) (Extends!5237) (Abstract!5237) (Class!5237) (Val!5237) (DelimiterValue!10474 (del!5297 List!33517)) (KeywordValue!5243 (value!161045 List!33517)) (CommentValue!10474 (value!161046 List!33517)) (WhitespaceValue!10474 (value!161047 List!33517)) (IndentationValue!5237 (value!161048 List!33517)) (String!36708) (Int32!5237) (Broken!26186 (value!161049 List!33517)) (Boolean!5238) (Unit!47377) (OperatorValue!5240 (op!5297 List!33517)) (IdentifierValue!10474 (value!161050 List!33517)) (IdentifierValue!10475 (value!161051 List!33517)) (WhitespaceValue!10475 (value!161052 List!33517)) (True!10474) (False!10474) (Broken!26187 (value!161053 List!33517)) (Broken!26188 (value!161054 List!33517)) (True!10475) (RightBrace!5237) (RightBracket!5237) (Colon!5237) (Null!5237) (Comma!5237) (LeftBracket!5237) (False!10475) (LeftBrace!5237) (ImaginaryLiteralValue!5237 (text!37105 List!33517)) (StringLiteralValue!15711 (value!161055 List!33517)) (EOFValue!5237 (value!161056 List!33517)) (IdentValue!5237 (value!161057 List!33517)) (DelimiterValue!10475 (value!161058 List!33517)) (DedentValue!5237 (value!161059 List!33517)) (NewLineValue!5237 (value!161060 List!33517)) (IntegerValue!15711 (value!161061 (_ BitVec 32)) (text!37106 List!33517)) (IntegerValue!15712 (value!161062 Int) (text!37107 List!33517)) (Times!5237) (Or!5237) (Equal!5237) (Minus!5237) (Broken!26189 (value!161063 List!33517)) (And!5237) (Div!5237) (LessEqual!5237) (Mod!5237) (Concat!13635) (Not!5237) (Plus!5237) (SpaceValue!5237 (value!161064 List!33517)) (IntegerValue!15713 (value!161065 Int) (text!37108 List!33517)) (StringLiteralValue!15712 (text!37109 List!33517)) (FloatLiteralValue!10475 (text!37110 List!33517)) (BytesLiteralValue!5237 (value!161066 List!33517)) (CommentValue!10475 (value!161067 List!33517)) (StringLiteralValue!15713 (value!161068 List!33517)) (ErrorTokenValue!5237 (msg!5298 List!33517)) )
))
(declare-datatypes ((C!16978 0))(
  ( (C!16979 (val!10501 Int)) )
))
(declare-datatypes ((List!33518 0))(
  ( (Nil!33394) (Cons!33394 (h!38814 C!16978) (t!231467 List!33518)) )
))
(declare-datatypes ((IArray!20743 0))(
  ( (IArray!20744 (innerList!10429 List!33518)) )
))
(declare-datatypes ((Conc!10369 0))(
  ( (Node!10369 (left!25196 Conc!10369) (right!25526 Conc!10369) (csize!20968 Int) (cheight!10580 Int)) (Leaf!15781 (xs!13481 IArray!20743) (csize!20969 Int)) (Empty!10369) )
))
(declare-datatypes ((Regex!8398 0))(
  ( (ElementMatch!8398 (c!457949 C!16978)) (Concat!13636 (regOne!17308 Regex!8398) (regTwo!17308 Regex!8398)) (EmptyExpr!8398) (Star!8398 (reg!8727 Regex!8398)) (EmptyLang!8398) (Union!8398 (regOne!17309 Regex!8398) (regTwo!17309 Regex!8398)) )
))
(declare-datatypes ((String!36709 0))(
  ( (String!36710 (value!161069 String)) )
))
(declare-datatypes ((BalanceConc!20376 0))(
  ( (BalanceConc!20377 (c!457950 Conc!10369)) )
))
(declare-datatypes ((TokenValueInjection!9902 0))(
  ( (TokenValueInjection!9903 (toValue!7037 Int) (toChars!6896 Int)) )
))
(declare-datatypes ((Rule!9814 0))(
  ( (Rule!9815 (regex!5007 Regex!8398) (tag!5511 String!36709) (isSeparator!5007 Bool) (transformation!5007 TokenValueInjection!9902)) )
))
(declare-datatypes ((Token!9416 0))(
  ( (Token!9417 (value!161070 TokenValue!5237) (rule!7435 Rule!9814) (size!25986 Int) (originalCharacters!5739 List!33518)) )
))
(declare-datatypes ((List!33519 0))(
  ( (Nil!33395) (Cons!33395 (h!38815 Token!9416) (t!231468 List!33519)) )
))
(declare-fun l!4019 () List!33519)

(declare-fun e!1793064 () Bool)

(declare-fun tp!905185 () Bool)

(declare-fun inv!21 (TokenValue!5237) Bool)

(assert (=> b!2832035 (= e!1793064 (and (inv!21 (value!161070 (h!38815 l!4019))) e!1793069 tp!905185))))

(declare-fun b!2832036 () Bool)

(declare-fun res!1178887 () Bool)

(declare-fun e!1793066 () Bool)

(assert (=> b!2832036 (=> (not res!1178887) (not e!1793066))))

(assert (=> b!2832036 (= res!1178887 (and (is-Cons!33395 l!4019) (is-Cons!33395 (t!231468 l!4019))))))

(declare-fun b!2832037 () Bool)

(declare-fun e!1793065 () Bool)

(declare-fun tp!905182 () Bool)

(declare-fun inv!45351 (Token!9416) Bool)

(assert (=> b!2832037 (= e!1793065 (and (inv!45351 (h!38815 l!4019)) e!1793064 tp!905182))))

(declare-fun res!1178889 () Bool)

(assert (=> start!275138 (=> (not res!1178889) (not e!1793066))))

(declare-datatypes ((LexerInterface!4597 0))(
  ( (LexerInterfaceExt!4594 (__x!22213 Int)) (Lexer!4595) )
))
(declare-fun thiss!11007 () LexerInterface!4597)

(assert (=> start!275138 (= res!1178889 (is-Lexer!4595 thiss!11007))))

(assert (=> start!275138 e!1793066))

(assert (=> start!275138 true))

(declare-fun e!1793061 () Bool)

(assert (=> start!275138 e!1793061))

(assert (=> start!275138 e!1793065))

(declare-fun b!2832038 () Bool)

(declare-fun res!1178885 () Bool)

(assert (=> b!2832038 (=> (not res!1178885) (not e!1793066))))

(declare-datatypes ((List!33520 0))(
  ( (Nil!33396) (Cons!33396 (h!38816 Rule!9814) (t!231469 List!33520)) )
))
(declare-fun rules!1047 () List!33520)

(declare-fun rulesInvariant!4013 (LexerInterface!4597 List!33520) Bool)

(assert (=> b!2832038 (= res!1178885 (rulesInvariant!4013 thiss!11007 rules!1047))))

(declare-fun b!2832039 () Bool)

(declare-fun res!1178892 () Bool)

(assert (=> b!2832039 (=> (not res!1178892) (not e!1793066))))

(declare-fun isEmpty!18412 (List!33520) Bool)

(assert (=> b!2832039 (= res!1178892 (not (isEmpty!18412 rules!1047)))))

(declare-fun b!2832040 () Bool)

(declare-fun e!1793068 () Bool)

(declare-fun tp!905181 () Bool)

(declare-fun inv!45348 (String!36709) Bool)

(declare-fun inv!45352 (TokenValueInjection!9902) Bool)

(assert (=> b!2832040 (= e!1793069 (and tp!905181 (inv!45348 (tag!5511 (rule!7435 (h!38815 l!4019)))) (inv!45352 (transformation!5007 (rule!7435 (h!38815 l!4019)))) e!1793068))))

(declare-fun b!2832041 () Bool)

(declare-fun e!1793059 () Bool)

(declare-fun tp!905189 () Bool)

(assert (=> b!2832041 (= e!1793061 (and e!1793059 tp!905189))))

(declare-fun b!2832042 () Bool)

(declare-fun res!1178886 () Bool)

(assert (=> b!2832042 (=> (not res!1178886) (not e!1793066))))

(declare-fun rulesProduceEachTokenIndividuallyList!1640 (LexerInterface!4597 List!33520 List!33519) Bool)

(assert (=> b!2832042 (= res!1178886 (rulesProduceEachTokenIndividuallyList!1640 thiss!11007 rules!1047 l!4019))))

(declare-fun b!2832043 () Bool)

(declare-fun e!1793060 () Bool)

(declare-fun size!25987 (BalanceConc!20376) Int)

(declare-fun charsOf!3103 (Token!9416) BalanceConc!20376)

(assert (=> b!2832043 (= e!1793060 (> (size!25987 (charsOf!3103 (h!38815 (t!231468 l!4019)))) 0))))

(declare-fun e!1793063 () Bool)

(declare-fun b!2832044 () Bool)

(assert (=> b!2832044 (= e!1793063 (rulesProduceEachTokenIndividuallyList!1640 thiss!11007 rules!1047 (t!231468 l!4019)))))

(assert (=> b!2832045 (= e!1793068 (and tp!905188 tp!905183))))

(declare-fun b!2832046 () Bool)

(declare-fun res!1178890 () Bool)

(assert (=> b!2832046 (=> (not res!1178890) (not e!1793066))))

(declare-datatypes ((IArray!20745 0))(
  ( (IArray!20746 (innerList!10430 List!33519)) )
))
(declare-datatypes ((Conc!10370 0))(
  ( (Node!10370 (left!25197 Conc!10370) (right!25527 Conc!10370) (csize!20970 Int) (cheight!10581 Int)) (Leaf!15782 (xs!13482 IArray!20745) (csize!20971 Int)) (Empty!10370) )
))
(declare-datatypes ((BalanceConc!20378 0))(
  ( (BalanceConc!20379 (c!457951 Conc!10370)) )
))
(declare-fun rulesProduceEachTokenIndividually!1113 (LexerInterface!4597 List!33520 BalanceConc!20378) Bool)

(declare-fun seqFromList!3253 (List!33519) BalanceConc!20378)

(assert (=> b!2832046 (= res!1178890 (rulesProduceEachTokenIndividually!1113 thiss!11007 rules!1047 (seqFromList!3253 l!4019)))))

(declare-fun e!1793067 () Bool)

(assert (=> b!2832047 (= e!1793067 (and tp!905186 tp!905187))))

(declare-fun tp!905184 () Bool)

(declare-fun b!2832048 () Bool)

(assert (=> b!2832048 (= e!1793059 (and tp!905184 (inv!45348 (tag!5511 (h!38816 rules!1047))) (inv!45352 (transformation!5007 (h!38816 rules!1047))) e!1793067))))

(declare-fun b!2832049 () Bool)

(assert (=> b!2832049 (= e!1793066 (not e!1793063))))

(declare-fun res!1178888 () Bool)

(assert (=> b!2832049 (=> res!1178888 e!1793063)))

(declare-fun separableTokensPredicate!916 (LexerInterface!4597 Token!9416 Token!9416 List!33520) Bool)

(assert (=> b!2832049 (= res!1178888 (not (separableTokensPredicate!916 thiss!11007 (h!38815 l!4019) (h!38815 (t!231468 l!4019)) rules!1047)))))

(assert (=> b!2832049 e!1793060))

(declare-fun res!1178891 () Bool)

(assert (=> b!2832049 (=> (not res!1178891) (not e!1793060))))

(declare-fun rulesProduceIndividualToken!2129 (LexerInterface!4597 List!33520 Token!9416) Bool)

(assert (=> b!2832049 (= res!1178891 (rulesProduceIndividualToken!2129 thiss!11007 rules!1047 (h!38815 (t!231468 l!4019))))))

(declare-datatypes ((Unit!47378 0))(
  ( (Unit!47379) )
))
(declare-fun lt!1010297 () Unit!47378)

(declare-fun lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!747 (LexerInterface!4597 List!33520 List!33519 Token!9416) Unit!47378)

(assert (=> b!2832049 (= lt!1010297 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!747 thiss!11007 rules!1047 l!4019 (h!38815 (t!231468 l!4019))))))

(assert (=> b!2832049 (rulesProduceIndividualToken!2129 thiss!11007 rules!1047 (h!38815 l!4019))))

(declare-fun lt!1010296 () Unit!47378)

(assert (=> b!2832049 (= lt!1010296 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!747 thiss!11007 rules!1047 l!4019 (h!38815 l!4019)))))

(assert (= (and start!275138 res!1178889) b!2832039))

(assert (= (and b!2832039 res!1178892) b!2832038))

(assert (= (and b!2832038 res!1178885) b!2832042))

(assert (= (and b!2832042 res!1178886) b!2832046))

(assert (= (and b!2832046 res!1178890) b!2832036))

(assert (= (and b!2832036 res!1178887) b!2832049))

(assert (= (and b!2832049 res!1178891) b!2832043))

(assert (= (and b!2832049 (not res!1178888)) b!2832044))

(assert (= b!2832048 b!2832047))

(assert (= b!2832041 b!2832048))

(assert (= (and start!275138 (is-Cons!33396 rules!1047)) b!2832041))

(assert (= b!2832040 b!2832045))

(assert (= b!2832035 b!2832040))

(assert (= b!2832037 b!2832035))

(assert (= (and start!275138 (is-Cons!33395 l!4019)) b!2832037))

(declare-fun m!3261667 () Bool)

(assert (=> b!2832046 m!3261667))

(assert (=> b!2832046 m!3261667))

(declare-fun m!3261669 () Bool)

(assert (=> b!2832046 m!3261669))

(declare-fun m!3261671 () Bool)

(assert (=> b!2832044 m!3261671))

(declare-fun m!3261673 () Bool)

(assert (=> b!2832049 m!3261673))

(declare-fun m!3261675 () Bool)

(assert (=> b!2832049 m!3261675))

(declare-fun m!3261677 () Bool)

(assert (=> b!2832049 m!3261677))

(declare-fun m!3261679 () Bool)

(assert (=> b!2832049 m!3261679))

(declare-fun m!3261681 () Bool)

(assert (=> b!2832049 m!3261681))

(declare-fun m!3261683 () Bool)

(assert (=> b!2832042 m!3261683))

(declare-fun m!3261685 () Bool)

(assert (=> b!2832040 m!3261685))

(declare-fun m!3261687 () Bool)

(assert (=> b!2832040 m!3261687))

(declare-fun m!3261689 () Bool)

(assert (=> b!2832048 m!3261689))

(declare-fun m!3261691 () Bool)

(assert (=> b!2832048 m!3261691))

(declare-fun m!3261693 () Bool)

(assert (=> b!2832043 m!3261693))

(assert (=> b!2832043 m!3261693))

(declare-fun m!3261695 () Bool)

(assert (=> b!2832043 m!3261695))

(declare-fun m!3261697 () Bool)

(assert (=> b!2832037 m!3261697))

(declare-fun m!3261699 () Bool)

(assert (=> b!2832038 m!3261699))

(declare-fun m!3261701 () Bool)

(assert (=> b!2832039 m!3261701))

(declare-fun m!3261703 () Bool)

(assert (=> b!2832035 m!3261703))

(push 1)

(assert (not b!2832035))

(assert b_and!207155)

(assert (not b!2832048))

(assert (not b!2832040))

(assert (not b!2832038))

(assert (not b!2832043))

(assert (not b_next!82169))

(assert (not b!2832044))

(assert (not b!2832041))

(assert (not b!2832039))

(assert b_and!207159)

(assert (not b_next!82167))

(assert (not b!2832046))

(assert b_and!207161)

(assert (not b!2832042))

(assert (not b_next!82165))

(assert b_and!207157)

(assert (not b!2832037))

(assert (not b!2832049))

(assert (not b_next!82171))

(check-sat)

(pop 1)

(push 1)

(assert b_and!207161)

(assert b_and!207155)

(assert (not b_next!82169))

(assert (not b_next!82171))

(assert b_and!207159)

(assert (not b_next!82167))

(assert (not b_next!82165))

(assert b_and!207157)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!2832112 () Bool)

(declare-fun e!1793125 () Bool)

(assert (=> b!2832112 (= e!1793125 true)))

(declare-fun b!2832111 () Bool)

(declare-fun e!1793124 () Bool)

(assert (=> b!2832111 (= e!1793124 e!1793125)))

(declare-fun b!2832110 () Bool)

(declare-fun e!1793123 () Bool)

(assert (=> b!2832110 (= e!1793123 e!1793124)))

(declare-fun d!821642 () Bool)

(assert (=> d!821642 e!1793123))

(assert (= b!2832111 b!2832112))

(assert (= b!2832110 b!2832111))

(assert (= (and d!821642 (is-Cons!33396 rules!1047)) b!2832110))

(declare-fun lambda!103958 () Int)

(declare-fun order!17787 () Int)

(declare-fun order!17785 () Int)

(declare-fun dynLambda!14016 (Int Int) Int)

(declare-fun dynLambda!14017 (Int Int) Int)

(assert (=> b!2832112 (< (dynLambda!14016 order!17785 (toValue!7037 (transformation!5007 (h!38816 rules!1047)))) (dynLambda!14017 order!17787 lambda!103958))))

(declare-fun order!17789 () Int)

(declare-fun dynLambda!14018 (Int Int) Int)

(assert (=> b!2832112 (< (dynLambda!14018 order!17789 (toChars!6896 (transformation!5007 (h!38816 rules!1047)))) (dynLambda!14017 order!17787 lambda!103958))))

(assert (=> d!821642 true))

(declare-fun e!1793116 () Bool)

(assert (=> d!821642 e!1793116))

(declare-fun res!1178930 () Bool)

(assert (=> d!821642 (=> (not res!1178930) (not e!1793116))))

(declare-fun lt!1010308 () Bool)

(declare-fun forall!6857 (List!33519 Int) Bool)

(declare-fun list!12478 (BalanceConc!20378) List!33519)

(assert (=> d!821642 (= res!1178930 (= lt!1010308 (forall!6857 (list!12478 (seqFromList!3253 l!4019)) lambda!103958)))))

(declare-fun forall!6858 (BalanceConc!20378 Int) Bool)

(assert (=> d!821642 (= lt!1010308 (forall!6858 (seqFromList!3253 l!4019) lambda!103958))))

(assert (=> d!821642 (not (isEmpty!18412 rules!1047))))

(assert (=> d!821642 (= (rulesProduceEachTokenIndividually!1113 thiss!11007 rules!1047 (seqFromList!3253 l!4019)) lt!1010308)))

(declare-fun b!2832101 () Bool)

(assert (=> b!2832101 (= e!1793116 (= lt!1010308 (rulesProduceEachTokenIndividuallyList!1640 thiss!11007 rules!1047 (list!12478 (seqFromList!3253 l!4019)))))))

(assert (= (and d!821642 res!1178930) b!2832101))

(assert (=> d!821642 m!3261667))

(declare-fun m!3261743 () Bool)

(assert (=> d!821642 m!3261743))

(assert (=> d!821642 m!3261743))

(declare-fun m!3261745 () Bool)

(assert (=> d!821642 m!3261745))

(assert (=> d!821642 m!3261667))

(declare-fun m!3261747 () Bool)

(assert (=> d!821642 m!3261747))

(assert (=> d!821642 m!3261701))

(assert (=> b!2832101 m!3261667))

(assert (=> b!2832101 m!3261743))

(assert (=> b!2832101 m!3261743))

(declare-fun m!3261749 () Bool)

(assert (=> b!2832101 m!3261749))

(assert (=> b!2832046 d!821642))

(declare-fun d!821646 () Bool)

(declare-fun fromListB!1470 (List!33519) BalanceConc!20378)

(assert (=> d!821646 (= (seqFromList!3253 l!4019) (fromListB!1470 l!4019))))

(declare-fun bs!518342 () Bool)

(assert (= bs!518342 d!821646))

(declare-fun m!3261751 () Bool)

(assert (=> bs!518342 m!3261751))

(assert (=> b!2832046 d!821646))

(declare-fun d!821648 () Bool)

(declare-fun c!457960 () Bool)

(assert (=> d!821648 (= c!457960 (is-IntegerValue!15711 (value!161070 (h!38815 l!4019))))))

(declare-fun e!1793133 () Bool)

(assert (=> d!821648 (= (inv!21 (value!161070 (h!38815 l!4019))) e!1793133)))

(declare-fun b!2832125 () Bool)

(declare-fun res!1178933 () Bool)

(declare-fun e!1793132 () Bool)

(assert (=> b!2832125 (=> res!1178933 e!1793132)))

(assert (=> b!2832125 (= res!1178933 (not (is-IntegerValue!15713 (value!161070 (h!38815 l!4019)))))))

(declare-fun e!1793134 () Bool)

(assert (=> b!2832125 (= e!1793134 e!1793132)))

(declare-fun b!2832126 () Bool)

(declare-fun inv!17 (TokenValue!5237) Bool)

(assert (=> b!2832126 (= e!1793134 (inv!17 (value!161070 (h!38815 l!4019))))))

(declare-fun b!2832127 () Bool)

(declare-fun inv!16 (TokenValue!5237) Bool)

(assert (=> b!2832127 (= e!1793133 (inv!16 (value!161070 (h!38815 l!4019))))))

(declare-fun b!2832128 () Bool)

(assert (=> b!2832128 (= e!1793133 e!1793134)))

(declare-fun c!457961 () Bool)

(assert (=> b!2832128 (= c!457961 (is-IntegerValue!15712 (value!161070 (h!38815 l!4019))))))

(declare-fun b!2832129 () Bool)

(declare-fun inv!15 (TokenValue!5237) Bool)

(assert (=> b!2832129 (= e!1793132 (inv!15 (value!161070 (h!38815 l!4019))))))

(assert (= (and d!821648 c!457960) b!2832127))

(assert (= (and d!821648 (not c!457960)) b!2832128))

(assert (= (and b!2832128 c!457961) b!2832126))

(assert (= (and b!2832128 (not c!457961)) b!2832125))

(assert (= (and b!2832125 (not res!1178933)) b!2832129))

(declare-fun m!3261753 () Bool)

(assert (=> b!2832126 m!3261753))

(declare-fun m!3261755 () Bool)

(assert (=> b!2832127 m!3261755))

(declare-fun m!3261757 () Bool)

(assert (=> b!2832129 m!3261757))

(assert (=> b!2832035 d!821648))

(declare-fun d!821650 () Bool)

(assert (=> d!821650 (= (inv!45348 (tag!5511 (rule!7435 (h!38815 l!4019)))) (= (mod (str.len (value!161069 (tag!5511 (rule!7435 (h!38815 l!4019))))) 2) 0))))

(assert (=> b!2832040 d!821650))

(declare-fun d!821652 () Bool)

(declare-fun res!1178936 () Bool)

(declare-fun e!1793137 () Bool)

(assert (=> d!821652 (=> (not res!1178936) (not e!1793137))))

(declare-fun semiInverseModEq!2079 (Int Int) Bool)

(assert (=> d!821652 (= res!1178936 (semiInverseModEq!2079 (toChars!6896 (transformation!5007 (rule!7435 (h!38815 l!4019)))) (toValue!7037 (transformation!5007 (rule!7435 (h!38815 l!4019))))))))

(assert (=> d!821652 (= (inv!45352 (transformation!5007 (rule!7435 (h!38815 l!4019)))) e!1793137)))

(declare-fun b!2832132 () Bool)

(declare-fun equivClasses!1978 (Int Int) Bool)

(assert (=> b!2832132 (= e!1793137 (equivClasses!1978 (toChars!6896 (transformation!5007 (rule!7435 (h!38815 l!4019)))) (toValue!7037 (transformation!5007 (rule!7435 (h!38815 l!4019))))))))

(assert (= (and d!821652 res!1178936) b!2832132))

(declare-fun m!3261759 () Bool)

(assert (=> d!821652 m!3261759))

(declare-fun m!3261761 () Bool)

(assert (=> b!2832132 m!3261761))

(assert (=> b!2832040 d!821652))

(declare-fun d!821654 () Bool)

(assert (=> d!821654 (= (isEmpty!18412 rules!1047) (is-Nil!33396 rules!1047))))

(assert (=> b!2832039 d!821654))

(declare-fun bs!518343 () Bool)

(declare-fun d!821656 () Bool)

(assert (= bs!518343 (and d!821656 d!821642)))

(declare-fun lambda!103961 () Int)

(assert (=> bs!518343 (= lambda!103961 lambda!103958)))

(declare-fun b!2832141 () Bool)

(declare-fun e!1793146 () Bool)

(assert (=> b!2832141 (= e!1793146 true)))

(declare-fun b!2832140 () Bool)

(declare-fun e!1793145 () Bool)

(assert (=> b!2832140 (= e!1793145 e!1793146)))

(declare-fun b!2832139 () Bool)

(declare-fun e!1793144 () Bool)

(assert (=> b!2832139 (= e!1793144 e!1793145)))

(assert (=> d!821656 e!1793144))

(assert (= b!2832140 b!2832141))

(assert (= b!2832139 b!2832140))

(assert (= (and d!821656 (is-Cons!33396 rules!1047)) b!2832139))

(assert (=> b!2832141 (< (dynLambda!14016 order!17785 (toValue!7037 (transformation!5007 (h!38816 rules!1047)))) (dynLambda!14017 order!17787 lambda!103961))))

(assert (=> b!2832141 (< (dynLambda!14018 order!17789 (toChars!6896 (transformation!5007 (h!38816 rules!1047)))) (dynLambda!14017 order!17787 lambda!103961))))

(assert (=> d!821656 true))

(declare-fun lt!1010311 () Bool)

(assert (=> d!821656 (= lt!1010311 (forall!6857 (t!231468 l!4019) lambda!103961))))

(declare-fun e!1793143 () Bool)

(assert (=> d!821656 (= lt!1010311 e!1793143)))

(declare-fun res!1178942 () Bool)

(assert (=> d!821656 (=> res!1178942 e!1793143)))

(assert (=> d!821656 (= res!1178942 (not (is-Cons!33395 (t!231468 l!4019))))))

(assert (=> d!821656 (not (isEmpty!18412 rules!1047))))

(assert (=> d!821656 (= (rulesProduceEachTokenIndividuallyList!1640 thiss!11007 rules!1047 (t!231468 l!4019)) lt!1010311)))

(declare-fun b!2832137 () Bool)

(declare-fun e!1793142 () Bool)

(assert (=> b!2832137 (= e!1793143 e!1793142)))

(declare-fun res!1178941 () Bool)

(assert (=> b!2832137 (=> (not res!1178941) (not e!1793142))))

(assert (=> b!2832137 (= res!1178941 (rulesProduceIndividualToken!2129 thiss!11007 rules!1047 (h!38815 (t!231468 l!4019))))))

(declare-fun b!2832138 () Bool)

(assert (=> b!2832138 (= e!1793142 (rulesProduceEachTokenIndividuallyList!1640 thiss!11007 rules!1047 (t!231468 (t!231468 l!4019))))))

(assert (= (and d!821656 (not res!1178942)) b!2832137))

(assert (= (and b!2832137 res!1178941) b!2832138))

(declare-fun m!3261763 () Bool)

(assert (=> d!821656 m!3261763))

(assert (=> d!821656 m!3261701))

(assert (=> b!2832137 m!3261681))

(declare-fun m!3261765 () Bool)

(assert (=> b!2832138 m!3261765))

(assert (=> b!2832044 d!821656))

(declare-fun d!821658 () Bool)

(declare-fun prefixMatchZipperSequence!737 (Regex!8398 BalanceConc!20376) Bool)

(declare-fun rulesRegex!995 (LexerInterface!4597 List!33520) Regex!8398)

(declare-fun ++!8099 (BalanceConc!20376 BalanceConc!20376) BalanceConc!20376)

(declare-fun singletonSeq!2162 (C!16978) BalanceConc!20376)

(declare-fun apply!7794 (BalanceConc!20376 Int) C!16978)

(assert (=> d!821658 (= (separableTokensPredicate!916 thiss!11007 (h!38815 l!4019) (h!38815 (t!231468 l!4019)) rules!1047) (not (prefixMatchZipperSequence!737 (rulesRegex!995 thiss!11007 rules!1047) (++!8099 (charsOf!3103 (h!38815 l!4019)) (singletonSeq!2162 (apply!7794 (charsOf!3103 (h!38815 (t!231468 l!4019))) 0))))))))

(declare-fun bs!518344 () Bool)

(assert (= bs!518344 d!821658))

(declare-fun m!3261767 () Bool)

(assert (=> bs!518344 m!3261767))

(declare-fun m!3261769 () Bool)

(assert (=> bs!518344 m!3261769))

(declare-fun m!3261771 () Bool)

(assert (=> bs!518344 m!3261771))

(declare-fun m!3261773 () Bool)

(assert (=> bs!518344 m!3261773))

(declare-fun m!3261775 () Bool)

(assert (=> bs!518344 m!3261775))

(declare-fun m!3261777 () Bool)

(assert (=> bs!518344 m!3261777))

(assert (=> bs!518344 m!3261693))

(assert (=> bs!518344 m!3261775))

(assert (=> bs!518344 m!3261769))

(assert (=> bs!518344 m!3261693))

(assert (=> bs!518344 m!3261767))

(assert (=> bs!518344 m!3261777))

(assert (=> bs!518344 m!3261771))

(assert (=> b!2832049 d!821658))

(declare-fun d!821660 () Bool)

(assert (=> d!821660 (rulesProduceIndividualToken!2129 thiss!11007 rules!1047 (h!38815 (t!231468 l!4019)))))

(declare-fun lt!1010322 () Unit!47378)

(declare-fun choose!16721 (LexerInterface!4597 List!33520 List!33519 Token!9416) Unit!47378)

(assert (=> d!821660 (= lt!1010322 (choose!16721 thiss!11007 rules!1047 l!4019 (h!38815 (t!231468 l!4019))))))

(assert (=> d!821660 (not (isEmpty!18412 rules!1047))))

(assert (=> d!821660 (= (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!747 thiss!11007 rules!1047 l!4019 (h!38815 (t!231468 l!4019))) lt!1010322)))

(declare-fun bs!518348 () Bool)

(assert (= bs!518348 d!821660))

(assert (=> bs!518348 m!3261681))

(declare-fun m!3261819 () Bool)

(assert (=> bs!518348 m!3261819))

(assert (=> bs!518348 m!3261701))

(assert (=> b!2832049 d!821660))

(declare-fun d!821678 () Bool)

(declare-fun lt!1010330 () Bool)

(declare-fun e!1793177 () Bool)

(assert (=> d!821678 (= lt!1010330 e!1793177)))

(declare-fun res!1178959 () Bool)

(assert (=> d!821678 (=> (not res!1178959) (not e!1793177))))

(declare-datatypes ((tuple2!33514 0))(
  ( (tuple2!33515 (_1!19869 BalanceConc!20378) (_2!19869 BalanceConc!20376)) )
))
(declare-fun lex!2015 (LexerInterface!4597 List!33520 BalanceConc!20376) tuple2!33514)

(declare-fun print!1734 (LexerInterface!4597 BalanceConc!20378) BalanceConc!20376)

(declare-fun singletonSeq!2163 (Token!9416) BalanceConc!20378)

(assert (=> d!821678 (= res!1178959 (= (list!12478 (_1!19869 (lex!2015 thiss!11007 rules!1047 (print!1734 thiss!11007 (singletonSeq!2163 (h!38815 l!4019)))))) (list!12478 (singletonSeq!2163 (h!38815 l!4019)))))))

(declare-fun e!1793176 () Bool)

(assert (=> d!821678 (= lt!1010330 e!1793176)))

(declare-fun res!1178960 () Bool)

(assert (=> d!821678 (=> (not res!1178960) (not e!1793176))))

(declare-fun lt!1010331 () tuple2!33514)

(declare-fun size!25990 (BalanceConc!20378) Int)

(assert (=> d!821678 (= res!1178960 (= (size!25990 (_1!19869 lt!1010331)) 1))))

(assert (=> d!821678 (= lt!1010331 (lex!2015 thiss!11007 rules!1047 (print!1734 thiss!11007 (singletonSeq!2163 (h!38815 l!4019)))))))

(assert (=> d!821678 (not (isEmpty!18412 rules!1047))))

(assert (=> d!821678 (= (rulesProduceIndividualToken!2129 thiss!11007 rules!1047 (h!38815 l!4019)) lt!1010330)))

(declare-fun b!2832179 () Bool)

(declare-fun res!1178961 () Bool)

(assert (=> b!2832179 (=> (not res!1178961) (not e!1793176))))

(declare-fun apply!7795 (BalanceConc!20378 Int) Token!9416)

(assert (=> b!2832179 (= res!1178961 (= (apply!7795 (_1!19869 lt!1010331) 0) (h!38815 l!4019)))))

(declare-fun b!2832180 () Bool)

(declare-fun isEmpty!18414 (BalanceConc!20376) Bool)

(assert (=> b!2832180 (= e!1793176 (isEmpty!18414 (_2!19869 lt!1010331)))))

(declare-fun b!2832181 () Bool)

(assert (=> b!2832181 (= e!1793177 (isEmpty!18414 (_2!19869 (lex!2015 thiss!11007 rules!1047 (print!1734 thiss!11007 (singletonSeq!2163 (h!38815 l!4019)))))))))

(assert (= (and d!821678 res!1178960) b!2832179))

(assert (= (and b!2832179 res!1178961) b!2832180))

(assert (= (and d!821678 res!1178959) b!2832181))

(declare-fun m!3261823 () Bool)

(assert (=> d!821678 m!3261823))

(declare-fun m!3261825 () Bool)

(assert (=> d!821678 m!3261825))

(declare-fun m!3261827 () Bool)

(assert (=> d!821678 m!3261827))

(declare-fun m!3261829 () Bool)

(assert (=> d!821678 m!3261829))

(declare-fun m!3261831 () Bool)

(assert (=> d!821678 m!3261831))

(assert (=> d!821678 m!3261701))

(assert (=> d!821678 m!3261827))

(assert (=> d!821678 m!3261827))

(assert (=> d!821678 m!3261823))

(declare-fun m!3261833 () Bool)

(assert (=> d!821678 m!3261833))

(declare-fun m!3261835 () Bool)

(assert (=> b!2832179 m!3261835))

(declare-fun m!3261837 () Bool)

(assert (=> b!2832180 m!3261837))

(assert (=> b!2832181 m!3261827))

(assert (=> b!2832181 m!3261827))

(assert (=> b!2832181 m!3261823))

(assert (=> b!2832181 m!3261823))

(assert (=> b!2832181 m!3261825))

(declare-fun m!3261839 () Bool)

(assert (=> b!2832181 m!3261839))

(assert (=> b!2832049 d!821678))

(declare-fun d!821682 () Bool)

(assert (=> d!821682 (rulesProduceIndividualToken!2129 thiss!11007 rules!1047 (h!38815 l!4019))))

(declare-fun lt!1010332 () Unit!47378)

(assert (=> d!821682 (= lt!1010332 (choose!16721 thiss!11007 rules!1047 l!4019 (h!38815 l!4019)))))

(assert (=> d!821682 (not (isEmpty!18412 rules!1047))))

(assert (=> d!821682 (= (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!747 thiss!11007 rules!1047 l!4019 (h!38815 l!4019)) lt!1010332)))

(declare-fun bs!518350 () Bool)

(assert (= bs!518350 d!821682))

(assert (=> bs!518350 m!3261679))

(declare-fun m!3261841 () Bool)

(assert (=> bs!518350 m!3261841))

(assert (=> bs!518350 m!3261701))

(assert (=> b!2832049 d!821682))

(declare-fun d!821684 () Bool)

(declare-fun lt!1010333 () Bool)

(declare-fun e!1793179 () Bool)

(assert (=> d!821684 (= lt!1010333 e!1793179)))

(declare-fun res!1178962 () Bool)

(assert (=> d!821684 (=> (not res!1178962) (not e!1793179))))

(assert (=> d!821684 (= res!1178962 (= (list!12478 (_1!19869 (lex!2015 thiss!11007 rules!1047 (print!1734 thiss!11007 (singletonSeq!2163 (h!38815 (t!231468 l!4019))))))) (list!12478 (singletonSeq!2163 (h!38815 (t!231468 l!4019))))))))

(declare-fun e!1793178 () Bool)

(assert (=> d!821684 (= lt!1010333 e!1793178)))

(declare-fun res!1178963 () Bool)

(assert (=> d!821684 (=> (not res!1178963) (not e!1793178))))

(declare-fun lt!1010334 () tuple2!33514)

(assert (=> d!821684 (= res!1178963 (= (size!25990 (_1!19869 lt!1010334)) 1))))

(assert (=> d!821684 (= lt!1010334 (lex!2015 thiss!11007 rules!1047 (print!1734 thiss!11007 (singletonSeq!2163 (h!38815 (t!231468 l!4019))))))))

(assert (=> d!821684 (not (isEmpty!18412 rules!1047))))

(assert (=> d!821684 (= (rulesProduceIndividualToken!2129 thiss!11007 rules!1047 (h!38815 (t!231468 l!4019))) lt!1010333)))

(declare-fun b!2832182 () Bool)

(declare-fun res!1178964 () Bool)

(assert (=> b!2832182 (=> (not res!1178964) (not e!1793178))))

(assert (=> b!2832182 (= res!1178964 (= (apply!7795 (_1!19869 lt!1010334) 0) (h!38815 (t!231468 l!4019))))))

(declare-fun b!2832183 () Bool)

(assert (=> b!2832183 (= e!1793178 (isEmpty!18414 (_2!19869 lt!1010334)))))

(declare-fun b!2832184 () Bool)

(assert (=> b!2832184 (= e!1793179 (isEmpty!18414 (_2!19869 (lex!2015 thiss!11007 rules!1047 (print!1734 thiss!11007 (singletonSeq!2163 (h!38815 (t!231468 l!4019))))))))))

(assert (= (and d!821684 res!1178963) b!2832182))

(assert (= (and b!2832182 res!1178964) b!2832183))

(assert (= (and d!821684 res!1178962) b!2832184))

(declare-fun m!3261843 () Bool)

(assert (=> d!821684 m!3261843))

(declare-fun m!3261845 () Bool)

(assert (=> d!821684 m!3261845))

(declare-fun m!3261847 () Bool)

(assert (=> d!821684 m!3261847))

(declare-fun m!3261849 () Bool)

(assert (=> d!821684 m!3261849))

(declare-fun m!3261851 () Bool)

(assert (=> d!821684 m!3261851))

(assert (=> d!821684 m!3261701))

(assert (=> d!821684 m!3261847))

(assert (=> d!821684 m!3261847))

(assert (=> d!821684 m!3261843))

(declare-fun m!3261853 () Bool)

(assert (=> d!821684 m!3261853))

(declare-fun m!3261855 () Bool)

(assert (=> b!2832182 m!3261855))

(declare-fun m!3261857 () Bool)

(assert (=> b!2832183 m!3261857))

(assert (=> b!2832184 m!3261847))

(assert (=> b!2832184 m!3261847))

(assert (=> b!2832184 m!3261843))

(assert (=> b!2832184 m!3261843))

(assert (=> b!2832184 m!3261845))

(declare-fun m!3261859 () Bool)

(assert (=> b!2832184 m!3261859))

(assert (=> b!2832049 d!821684))

(declare-fun d!821686 () Bool)

(declare-fun res!1178967 () Bool)

(declare-fun e!1793182 () Bool)

(assert (=> d!821686 (=> (not res!1178967) (not e!1793182))))

(declare-fun rulesValid!1849 (LexerInterface!4597 List!33520) Bool)

(assert (=> d!821686 (= res!1178967 (rulesValid!1849 thiss!11007 rules!1047))))

(assert (=> d!821686 (= (rulesInvariant!4013 thiss!11007 rules!1047) e!1793182)))

(declare-fun b!2832187 () Bool)

(declare-datatypes ((List!33525 0))(
  ( (Nil!33401) (Cons!33401 (h!38821 String!36709) (t!231506 List!33525)) )
))
(declare-fun noDuplicateTag!1845 (LexerInterface!4597 List!33520 List!33525) Bool)

(assert (=> b!2832187 (= e!1793182 (noDuplicateTag!1845 thiss!11007 rules!1047 Nil!33401))))

(assert (= (and d!821686 res!1178967) b!2832187))

(declare-fun m!3261861 () Bool)

(assert (=> d!821686 m!3261861))

(declare-fun m!3261863 () Bool)

(assert (=> b!2832187 m!3261863))

(assert (=> b!2832038 d!821686))

(declare-fun d!821688 () Bool)

(declare-fun lt!1010337 () Int)

(declare-fun size!25991 (List!33518) Int)

(declare-fun list!12479 (BalanceConc!20376) List!33518)

(assert (=> d!821688 (= lt!1010337 (size!25991 (list!12479 (charsOf!3103 (h!38815 (t!231468 l!4019))))))))

(declare-fun size!25992 (Conc!10369) Int)

(assert (=> d!821688 (= lt!1010337 (size!25992 (c!457950 (charsOf!3103 (h!38815 (t!231468 l!4019))))))))

(assert (=> d!821688 (= (size!25987 (charsOf!3103 (h!38815 (t!231468 l!4019)))) lt!1010337)))

(declare-fun bs!518351 () Bool)

(assert (= bs!518351 d!821688))

(assert (=> bs!518351 m!3261693))

(declare-fun m!3261865 () Bool)

(assert (=> bs!518351 m!3261865))

(assert (=> bs!518351 m!3261865))

(declare-fun m!3261867 () Bool)

(assert (=> bs!518351 m!3261867))

(declare-fun m!3261869 () Bool)

(assert (=> bs!518351 m!3261869))

(assert (=> b!2832043 d!821688))

(declare-fun d!821690 () Bool)

(declare-fun lt!1010340 () BalanceConc!20376)

(assert (=> d!821690 (= (list!12479 lt!1010340) (originalCharacters!5739 (h!38815 (t!231468 l!4019))))))

(declare-fun dynLambda!14019 (Int TokenValue!5237) BalanceConc!20376)

(assert (=> d!821690 (= lt!1010340 (dynLambda!14019 (toChars!6896 (transformation!5007 (rule!7435 (h!38815 (t!231468 l!4019))))) (value!161070 (h!38815 (t!231468 l!4019)))))))

(assert (=> d!821690 (= (charsOf!3103 (h!38815 (t!231468 l!4019))) lt!1010340)))

(declare-fun b_lambda!85041 () Bool)

(assert (=> (not b_lambda!85041) (not d!821690)))

(declare-fun t!231490 () Bool)

(declare-fun tb!154233 () Bool)

(assert (=> (and b!2832047 (= (toChars!6896 (transformation!5007 (h!38816 rules!1047))) (toChars!6896 (transformation!5007 (rule!7435 (h!38815 (t!231468 l!4019)))))) t!231490) tb!154233))

(declare-fun b!2832192 () Bool)

(declare-fun e!1793185 () Bool)

(declare-fun tp!905222 () Bool)

(declare-fun inv!45355 (Conc!10369) Bool)

(assert (=> b!2832192 (= e!1793185 (and (inv!45355 (c!457950 (dynLambda!14019 (toChars!6896 (transformation!5007 (rule!7435 (h!38815 (t!231468 l!4019))))) (value!161070 (h!38815 (t!231468 l!4019)))))) tp!905222))))

(declare-fun result!192268 () Bool)

(declare-fun inv!45356 (BalanceConc!20376) Bool)

(assert (=> tb!154233 (= result!192268 (and (inv!45356 (dynLambda!14019 (toChars!6896 (transformation!5007 (rule!7435 (h!38815 (t!231468 l!4019))))) (value!161070 (h!38815 (t!231468 l!4019))))) e!1793185))))

(assert (= tb!154233 b!2832192))

(declare-fun m!3261871 () Bool)

(assert (=> b!2832192 m!3261871))

(declare-fun m!3261873 () Bool)

(assert (=> tb!154233 m!3261873))

(assert (=> d!821690 t!231490))

(declare-fun b_and!207175 () Bool)

(assert (= b_and!207157 (and (=> t!231490 result!192268) b_and!207175)))

(declare-fun t!231492 () Bool)

(declare-fun tb!154235 () Bool)

(assert (=> (and b!2832045 (= (toChars!6896 (transformation!5007 (rule!7435 (h!38815 l!4019)))) (toChars!6896 (transformation!5007 (rule!7435 (h!38815 (t!231468 l!4019)))))) t!231492) tb!154235))

(declare-fun result!192272 () Bool)

(assert (= result!192272 result!192268))

(assert (=> d!821690 t!231492))

(declare-fun b_and!207177 () Bool)

(assert (= b_and!207161 (and (=> t!231492 result!192272) b_and!207177)))

(declare-fun m!3261875 () Bool)

(assert (=> d!821690 m!3261875))

(declare-fun m!3261877 () Bool)

(assert (=> d!821690 m!3261877))

(assert (=> b!2832043 d!821690))

(declare-fun d!821692 () Bool)

(assert (=> d!821692 (= (inv!45348 (tag!5511 (h!38816 rules!1047))) (= (mod (str.len (value!161069 (tag!5511 (h!38816 rules!1047)))) 2) 0))))

(assert (=> b!2832048 d!821692))

(declare-fun d!821694 () Bool)

(declare-fun res!1178968 () Bool)

(declare-fun e!1793186 () Bool)

(assert (=> d!821694 (=> (not res!1178968) (not e!1793186))))

(assert (=> d!821694 (= res!1178968 (semiInverseModEq!2079 (toChars!6896 (transformation!5007 (h!38816 rules!1047))) (toValue!7037 (transformation!5007 (h!38816 rules!1047)))))))

(assert (=> d!821694 (= (inv!45352 (transformation!5007 (h!38816 rules!1047))) e!1793186)))

(declare-fun b!2832193 () Bool)

(assert (=> b!2832193 (= e!1793186 (equivClasses!1978 (toChars!6896 (transformation!5007 (h!38816 rules!1047))) (toValue!7037 (transformation!5007 (h!38816 rules!1047)))))))

(assert (= (and d!821694 res!1178968) b!2832193))

(declare-fun m!3261879 () Bool)

(assert (=> d!821694 m!3261879))

(declare-fun m!3261881 () Bool)

(assert (=> b!2832193 m!3261881))

(assert (=> b!2832048 d!821694))

(declare-fun d!821696 () Bool)

(declare-fun res!1178973 () Bool)

(declare-fun e!1793189 () Bool)

(assert (=> d!821696 (=> (not res!1178973) (not e!1793189))))

(declare-fun isEmpty!18415 (List!33518) Bool)

(assert (=> d!821696 (= res!1178973 (not (isEmpty!18415 (originalCharacters!5739 (h!38815 l!4019)))))))

(assert (=> d!821696 (= (inv!45351 (h!38815 l!4019)) e!1793189)))

(declare-fun b!2832198 () Bool)

(declare-fun res!1178974 () Bool)

(assert (=> b!2832198 (=> (not res!1178974) (not e!1793189))))

(assert (=> b!2832198 (= res!1178974 (= (originalCharacters!5739 (h!38815 l!4019)) (list!12479 (dynLambda!14019 (toChars!6896 (transformation!5007 (rule!7435 (h!38815 l!4019)))) (value!161070 (h!38815 l!4019))))))))

(declare-fun b!2832199 () Bool)

(assert (=> b!2832199 (= e!1793189 (= (size!25986 (h!38815 l!4019)) (size!25991 (originalCharacters!5739 (h!38815 l!4019)))))))

(assert (= (and d!821696 res!1178973) b!2832198))

(assert (= (and b!2832198 res!1178974) b!2832199))

(declare-fun b_lambda!85043 () Bool)

(assert (=> (not b_lambda!85043) (not b!2832198)))

(declare-fun t!231494 () Bool)

(declare-fun tb!154237 () Bool)

(assert (=> (and b!2832047 (= (toChars!6896 (transformation!5007 (h!38816 rules!1047))) (toChars!6896 (transformation!5007 (rule!7435 (h!38815 l!4019))))) t!231494) tb!154237))

(declare-fun b!2832200 () Bool)

(declare-fun e!1793190 () Bool)

(declare-fun tp!905223 () Bool)

(assert (=> b!2832200 (= e!1793190 (and (inv!45355 (c!457950 (dynLambda!14019 (toChars!6896 (transformation!5007 (rule!7435 (h!38815 l!4019)))) (value!161070 (h!38815 l!4019))))) tp!905223))))

(declare-fun result!192274 () Bool)

(assert (=> tb!154237 (= result!192274 (and (inv!45356 (dynLambda!14019 (toChars!6896 (transformation!5007 (rule!7435 (h!38815 l!4019)))) (value!161070 (h!38815 l!4019)))) e!1793190))))

(assert (= tb!154237 b!2832200))

(declare-fun m!3261883 () Bool)

(assert (=> b!2832200 m!3261883))

(declare-fun m!3261885 () Bool)

(assert (=> tb!154237 m!3261885))

(assert (=> b!2832198 t!231494))

(declare-fun b_and!207179 () Bool)

(assert (= b_and!207175 (and (=> t!231494 result!192274) b_and!207179)))

(declare-fun t!231496 () Bool)

(declare-fun tb!154239 () Bool)

(assert (=> (and b!2832045 (= (toChars!6896 (transformation!5007 (rule!7435 (h!38815 l!4019)))) (toChars!6896 (transformation!5007 (rule!7435 (h!38815 l!4019))))) t!231496) tb!154239))

(declare-fun result!192276 () Bool)

(assert (= result!192276 result!192274))

(assert (=> b!2832198 t!231496))

(declare-fun b_and!207181 () Bool)

(assert (= b_and!207177 (and (=> t!231496 result!192276) b_and!207181)))

(declare-fun m!3261887 () Bool)

(assert (=> d!821696 m!3261887))

(declare-fun m!3261889 () Bool)

(assert (=> b!2832198 m!3261889))

(assert (=> b!2832198 m!3261889))

(declare-fun m!3261891 () Bool)

(assert (=> b!2832198 m!3261891))

(declare-fun m!3261893 () Bool)

(assert (=> b!2832199 m!3261893))

(assert (=> b!2832037 d!821696))

(declare-fun bs!518352 () Bool)

(declare-fun d!821698 () Bool)

(assert (= bs!518352 (and d!821698 d!821642)))

(declare-fun lambda!103966 () Int)

(assert (=> bs!518352 (= lambda!103966 lambda!103958)))

(declare-fun bs!518353 () Bool)

(assert (= bs!518353 (and d!821698 d!821656)))

(assert (=> bs!518353 (= lambda!103966 lambda!103961)))

(declare-fun b!2832205 () Bool)

(declare-fun e!1793195 () Bool)

(assert (=> b!2832205 (= e!1793195 true)))

(declare-fun b!2832204 () Bool)

(declare-fun e!1793194 () Bool)

(assert (=> b!2832204 (= e!1793194 e!1793195)))

(declare-fun b!2832203 () Bool)

(declare-fun e!1793193 () Bool)

(assert (=> b!2832203 (= e!1793193 e!1793194)))

(assert (=> d!821698 e!1793193))

(assert (= b!2832204 b!2832205))

(assert (= b!2832203 b!2832204))

(assert (= (and d!821698 (is-Cons!33396 rules!1047)) b!2832203))

(assert (=> b!2832205 (< (dynLambda!14016 order!17785 (toValue!7037 (transformation!5007 (h!38816 rules!1047)))) (dynLambda!14017 order!17787 lambda!103966))))

(assert (=> b!2832205 (< (dynLambda!14018 order!17789 (toChars!6896 (transformation!5007 (h!38816 rules!1047)))) (dynLambda!14017 order!17787 lambda!103966))))

(assert (=> d!821698 true))

(declare-fun lt!1010341 () Bool)

(assert (=> d!821698 (= lt!1010341 (forall!6857 l!4019 lambda!103966))))

(declare-fun e!1793192 () Bool)

(assert (=> d!821698 (= lt!1010341 e!1793192)))

(declare-fun res!1178976 () Bool)

(assert (=> d!821698 (=> res!1178976 e!1793192)))

(assert (=> d!821698 (= res!1178976 (not (is-Cons!33395 l!4019)))))

(assert (=> d!821698 (not (isEmpty!18412 rules!1047))))

(assert (=> d!821698 (= (rulesProduceEachTokenIndividuallyList!1640 thiss!11007 rules!1047 l!4019) lt!1010341)))

(declare-fun b!2832201 () Bool)

(declare-fun e!1793191 () Bool)

(assert (=> b!2832201 (= e!1793192 e!1793191)))

(declare-fun res!1178975 () Bool)

(assert (=> b!2832201 (=> (not res!1178975) (not e!1793191))))

(assert (=> b!2832201 (= res!1178975 (rulesProduceIndividualToken!2129 thiss!11007 rules!1047 (h!38815 l!4019)))))

(declare-fun b!2832202 () Bool)

(assert (=> b!2832202 (= e!1793191 (rulesProduceEachTokenIndividuallyList!1640 thiss!11007 rules!1047 (t!231468 l!4019)))))

(assert (= (and d!821698 (not res!1178976)) b!2832201))

(assert (= (and b!2832201 res!1178975) b!2832202))

(declare-fun m!3261895 () Bool)

(assert (=> d!821698 m!3261895))

(assert (=> d!821698 m!3261701))

(assert (=> b!2832201 m!3261679))

(assert (=> b!2832202 m!3261671))

(assert (=> b!2832042 d!821698))

(declare-fun b!2832216 () Bool)

(declare-fun b_free!81477 () Bool)

(declare-fun b_next!82181 () Bool)

(assert (=> b!2832216 (= b_free!81477 (not b_next!82181))))

(declare-fun tp!905235 () Bool)

(declare-fun b_and!207183 () Bool)

(assert (=> b!2832216 (= tp!905235 b_and!207183)))

(declare-fun b_free!81479 () Bool)

(declare-fun b_next!82183 () Bool)

(assert (=> b!2832216 (= b_free!81479 (not b_next!82183))))

(declare-fun t!231498 () Bool)

(declare-fun tb!154241 () Bool)

(assert (=> (and b!2832216 (= (toChars!6896 (transformation!5007 (h!38816 (t!231469 rules!1047)))) (toChars!6896 (transformation!5007 (rule!7435 (h!38815 (t!231468 l!4019)))))) t!231498) tb!154241))

(declare-fun result!192280 () Bool)

(assert (= result!192280 result!192268))

(assert (=> d!821690 t!231498))

(declare-fun t!231500 () Bool)

(declare-fun tb!154243 () Bool)

(assert (=> (and b!2832216 (= (toChars!6896 (transformation!5007 (h!38816 (t!231469 rules!1047)))) (toChars!6896 (transformation!5007 (rule!7435 (h!38815 l!4019))))) t!231500) tb!154243))

(declare-fun result!192282 () Bool)

(assert (= result!192282 result!192274))

(assert (=> b!2832198 t!231500))

(declare-fun tp!905234 () Bool)

(declare-fun b_and!207185 () Bool)

(assert (=> b!2832216 (= tp!905234 (and (=> t!231498 result!192280) (=> t!231500 result!192282) b_and!207185))))

(declare-fun e!1793207 () Bool)

(assert (=> b!2832216 (= e!1793207 (and tp!905235 tp!905234))))

(declare-fun tp!905233 () Bool)

(declare-fun e!1793206 () Bool)

(declare-fun b!2832215 () Bool)

(assert (=> b!2832215 (= e!1793206 (and tp!905233 (inv!45348 (tag!5511 (h!38816 (t!231469 rules!1047)))) (inv!45352 (transformation!5007 (h!38816 (t!231469 rules!1047)))) e!1793207))))

(declare-fun b!2832214 () Bool)

(declare-fun e!1793205 () Bool)

(declare-fun tp!905232 () Bool)

(assert (=> b!2832214 (= e!1793205 (and e!1793206 tp!905232))))

(assert (=> b!2832041 (= tp!905189 e!1793205)))

(assert (= b!2832215 b!2832216))

(assert (= b!2832214 b!2832215))

(assert (= (and b!2832041 (is-Cons!33396 (t!231469 rules!1047))) b!2832214))

(declare-fun m!3261897 () Bool)

(assert (=> b!2832215 m!3261897))

(declare-fun m!3261899 () Bool)

(assert (=> b!2832215 m!3261899))

(declare-fun b!2832221 () Bool)

(declare-fun e!1793210 () Bool)

(declare-fun tp_is_empty!14569 () Bool)

(declare-fun tp!905238 () Bool)

(assert (=> b!2832221 (= e!1793210 (and tp_is_empty!14569 tp!905238))))

(assert (=> b!2832035 (= tp!905185 e!1793210)))

(assert (= (and b!2832035 (is-Cons!33394 (originalCharacters!5739 (h!38815 l!4019)))) b!2832221))

(declare-fun b!2832235 () Bool)

(declare-fun e!1793213 () Bool)

(declare-fun tp!905253 () Bool)

(declare-fun tp!905251 () Bool)

(assert (=> b!2832235 (= e!1793213 (and tp!905253 tp!905251))))

(declare-fun b!2832233 () Bool)

(declare-fun tp!905249 () Bool)

(declare-fun tp!905252 () Bool)

(assert (=> b!2832233 (= e!1793213 (and tp!905249 tp!905252))))

(declare-fun b!2832232 () Bool)

(assert (=> b!2832232 (= e!1793213 tp_is_empty!14569)))

(declare-fun b!2832234 () Bool)

(declare-fun tp!905250 () Bool)

(assert (=> b!2832234 (= e!1793213 tp!905250)))

(assert (=> b!2832040 (= tp!905181 e!1793213)))

(assert (= (and b!2832040 (is-ElementMatch!8398 (regex!5007 (rule!7435 (h!38815 l!4019))))) b!2832232))

(assert (= (and b!2832040 (is-Concat!13636 (regex!5007 (rule!7435 (h!38815 l!4019))))) b!2832233))

(assert (= (and b!2832040 (is-Star!8398 (regex!5007 (rule!7435 (h!38815 l!4019))))) b!2832234))

(assert (= (and b!2832040 (is-Union!8398 (regex!5007 (rule!7435 (h!38815 l!4019))))) b!2832235))

(declare-fun b!2832239 () Bool)

(declare-fun e!1793214 () Bool)

(declare-fun tp!905258 () Bool)

(declare-fun tp!905256 () Bool)

(assert (=> b!2832239 (= e!1793214 (and tp!905258 tp!905256))))

(declare-fun b!2832237 () Bool)

(declare-fun tp!905254 () Bool)

(declare-fun tp!905257 () Bool)

(assert (=> b!2832237 (= e!1793214 (and tp!905254 tp!905257))))

(declare-fun b!2832236 () Bool)

(assert (=> b!2832236 (= e!1793214 tp_is_empty!14569)))

(declare-fun b!2832238 () Bool)

(declare-fun tp!905255 () Bool)

(assert (=> b!2832238 (= e!1793214 tp!905255)))

(assert (=> b!2832048 (= tp!905184 e!1793214)))

(assert (= (and b!2832048 (is-ElementMatch!8398 (regex!5007 (h!38816 rules!1047)))) b!2832236))

(assert (= (and b!2832048 (is-Concat!13636 (regex!5007 (h!38816 rules!1047)))) b!2832237))

(assert (= (and b!2832048 (is-Star!8398 (regex!5007 (h!38816 rules!1047)))) b!2832238))

(assert (= (and b!2832048 (is-Union!8398 (regex!5007 (h!38816 rules!1047)))) b!2832239))

(declare-fun b!2832253 () Bool)

(declare-fun b_free!81481 () Bool)

(declare-fun b_next!82185 () Bool)

(assert (=> b!2832253 (= b_free!81481 (not b_next!82185))))

(declare-fun tp!905271 () Bool)

(declare-fun b_and!207187 () Bool)

(assert (=> b!2832253 (= tp!905271 b_and!207187)))

(declare-fun b_free!81483 () Bool)

(declare-fun b_next!82187 () Bool)

(assert (=> b!2832253 (= b_free!81483 (not b_next!82187))))

(declare-fun t!231502 () Bool)

(declare-fun tb!154245 () Bool)

(assert (=> (and b!2832253 (= (toChars!6896 (transformation!5007 (rule!7435 (h!38815 (t!231468 l!4019))))) (toChars!6896 (transformation!5007 (rule!7435 (h!38815 (t!231468 l!4019)))))) t!231502) tb!154245))

(declare-fun result!192290 () Bool)

(assert (= result!192290 result!192268))

(assert (=> d!821690 t!231502))

(declare-fun t!231504 () Bool)

(declare-fun tb!154247 () Bool)

(assert (=> (and b!2832253 (= (toChars!6896 (transformation!5007 (rule!7435 (h!38815 (t!231468 l!4019))))) (toChars!6896 (transformation!5007 (rule!7435 (h!38815 l!4019))))) t!231504) tb!154247))

(declare-fun result!192292 () Bool)

(assert (= result!192292 result!192274))

(assert (=> b!2832198 t!231504))

(declare-fun tp!905273 () Bool)

(declare-fun b_and!207189 () Bool)

(assert (=> b!2832253 (= tp!905273 (and (=> t!231502 result!192290) (=> t!231504 result!192292) b_and!207189))))

(declare-fun e!1793228 () Bool)

(assert (=> b!2832037 (= tp!905182 e!1793228)))

(declare-fun e!1793231 () Bool)

(declare-fun e!1793230 () Bool)

(declare-fun b!2832251 () Bool)

(declare-fun tp!905270 () Bool)

(assert (=> b!2832251 (= e!1793230 (and (inv!21 (value!161070 (h!38815 (t!231468 l!4019)))) e!1793231 tp!905270))))

(declare-fun e!1793229 () Bool)

(assert (=> b!2832253 (= e!1793229 (and tp!905271 tp!905273))))

(declare-fun b!2832252 () Bool)

(declare-fun tp!905269 () Bool)

(assert (=> b!2832252 (= e!1793231 (and tp!905269 (inv!45348 (tag!5511 (rule!7435 (h!38815 (t!231468 l!4019))))) (inv!45352 (transformation!5007 (rule!7435 (h!38815 (t!231468 l!4019))))) e!1793229))))

(declare-fun tp!905272 () Bool)

(declare-fun b!2832250 () Bool)

(assert (=> b!2832250 (= e!1793228 (and (inv!45351 (h!38815 (t!231468 l!4019))) e!1793230 tp!905272))))

(assert (= b!2832252 b!2832253))

(assert (= b!2832251 b!2832252))

(assert (= b!2832250 b!2832251))

(assert (= (and b!2832037 (is-Cons!33395 (t!231468 l!4019))) b!2832250))

(declare-fun m!3261901 () Bool)

(assert (=> b!2832251 m!3261901))

(declare-fun m!3261903 () Bool)

(assert (=> b!2832252 m!3261903))

(declare-fun m!3261905 () Bool)

(assert (=> b!2832252 m!3261905))

(declare-fun m!3261907 () Bool)

(assert (=> b!2832250 m!3261907))

(declare-fun b_lambda!85045 () Bool)

(assert (= b_lambda!85043 (or (and b!2832047 b_free!81463 (= (toChars!6896 (transformation!5007 (h!38816 rules!1047))) (toChars!6896 (transformation!5007 (rule!7435 (h!38815 l!4019)))))) (and b!2832045 b_free!81467) (and b!2832216 b_free!81479 (= (toChars!6896 (transformation!5007 (h!38816 (t!231469 rules!1047)))) (toChars!6896 (transformation!5007 (rule!7435 (h!38815 l!4019)))))) (and b!2832253 b_free!81483 (= (toChars!6896 (transformation!5007 (rule!7435 (h!38815 (t!231468 l!4019))))) (toChars!6896 (transformation!5007 (rule!7435 (h!38815 l!4019)))))) b_lambda!85045)))

(declare-fun b_lambda!85047 () Bool)

(assert (= b_lambda!85041 (or (and b!2832047 b_free!81463 (= (toChars!6896 (transformation!5007 (h!38816 rules!1047))) (toChars!6896 (transformation!5007 (rule!7435 (h!38815 (t!231468 l!4019))))))) (and b!2832045 b_free!81467 (= (toChars!6896 (transformation!5007 (rule!7435 (h!38815 l!4019)))) (toChars!6896 (transformation!5007 (rule!7435 (h!38815 (t!231468 l!4019))))))) (and b!2832216 b_free!81479 (= (toChars!6896 (transformation!5007 (h!38816 (t!231469 rules!1047)))) (toChars!6896 (transformation!5007 (rule!7435 (h!38815 (t!231468 l!4019))))))) (and b!2832253 b_free!81483) b_lambda!85047)))

(push 1)

(assert (not b!2832138))

(assert (not b!2832187))

(assert (not b_next!82187))

(assert (not b!2832126))

(assert tp_is_empty!14569)

(assert (not b!2832201))

(assert (not b_next!82169))

(assert (not b_lambda!85047))

(assert (not b!2832203))

(assert (not b!2832252))

(assert (not b_next!82167))

(assert (not b!2832101))

(assert (not b!2832234))

(assert (not b_next!82183))

(assert b_and!207159)

(assert (not d!821652))

(assert (not b!2832251))

(assert (not tb!154237))

(assert (not b!2832192))

(assert (not d!821642))

(assert b_and!207155)

(assert (not b!2832239))

(assert (not b!2832202))

(assert (not d!821658))

(assert (not b_next!82181))

(assert b_and!207179)

(assert (not d!821688))

(assert (not b!2832179))

(assert (not b!2832214))

(assert (not b!2832181))

(assert (not b!2832221))

(assert (not b!2832182))

(assert (not b!2832200))

(assert (not b!2832238))

(assert (not b!2832180))

(assert (not b!2832235))

(assert (not b!2832137))

(assert (not b!2832198))

(assert (not d!821678))

(assert (not b!2832237))

(assert (not b!2832127))

(assert (not b!2832183))

(assert (not d!821660))

(assert (not b_next!82185))

(assert (not b!2832199))

(assert (not b!2832129))

(assert b_and!207183)

(assert (not d!821694))

(assert (not b!2832193))

(assert (not d!821684))

(assert b_and!207185)

(assert (not d!821696))

(assert (not b!2832110))

(assert (not d!821646))

(assert (not tb!154233))

(assert b_and!207181)

(assert (not b!2832184))

(assert (not b!2832139))

(assert b_and!207187)

(assert (not b!2832215))

(assert (not b!2832132))

(assert (not b_next!82165))

(assert (not d!821656))

(assert (not d!821698))

(assert (not b!2832233))

(assert (not d!821686))

(assert (not b!2832250))

(assert (not b_lambda!85045))

(assert b_and!207189)

(assert (not b_next!82171))

(assert (not d!821682))

(assert (not d!821690))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!82187))

(assert b_and!207155)

(assert (not b_next!82185))

(assert b_and!207183)

(assert b_and!207185)

(assert (not b_next!82169))

(assert (not b_next!82165))

(assert (not b_next!82167))

(assert (not b_next!82183))

(assert b_and!207159)

(assert (not b_next!82181))

(assert b_and!207179)

(assert b_and!207181)

(assert b_and!207187)

(assert b_and!207189)

(assert (not b_next!82171))

(check-sat)

(pop 1)

