; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!260696 () Bool)

(assert start!260696)

(declare-fun b!2677431 () Bool)

(declare-fun b_free!75477 () Bool)

(declare-fun b_next!76181 () Bool)

(assert (=> b!2677431 (= b_free!75477 (not b_next!76181))))

(declare-fun tp!846537 () Bool)

(declare-fun b_and!198053 () Bool)

(assert (=> b!2677431 (= tp!846537 b_and!198053)))

(declare-fun b_free!75479 () Bool)

(declare-fun b_next!76183 () Bool)

(assert (=> b!2677431 (= b_free!75479 (not b_next!76183))))

(declare-fun tp!846532 () Bool)

(declare-fun b_and!198055 () Bool)

(assert (=> b!2677431 (= tp!846532 b_and!198055)))

(declare-fun b!2677439 () Bool)

(declare-fun b_free!75481 () Bool)

(declare-fun b_next!76185 () Bool)

(assert (=> b!2677439 (= b_free!75481 (not b_next!76185))))

(declare-fun tp!846529 () Bool)

(declare-fun b_and!198057 () Bool)

(assert (=> b!2677439 (= tp!846529 b_and!198057)))

(declare-fun b_free!75483 () Bool)

(declare-fun b_next!76187 () Bool)

(assert (=> b!2677439 (= b_free!75483 (not b_next!76187))))

(declare-fun tp!846538 () Bool)

(declare-fun b_and!198059 () Bool)

(assert (=> b!2677439 (= tp!846538 b_and!198059)))

(declare-fun b!2677435 () Bool)

(declare-fun b_free!75485 () Bool)

(declare-fun b_next!76189 () Bool)

(assert (=> b!2677435 (= b_free!75485 (not b_next!76189))))

(declare-fun tp!846535 () Bool)

(declare-fun b_and!198061 () Bool)

(assert (=> b!2677435 (= tp!846535 b_and!198061)))

(declare-fun b_free!75487 () Bool)

(declare-fun b_next!76191 () Bool)

(assert (=> b!2677435 (= b_free!75487 (not b_next!76191))))

(declare-fun tp!846530 () Bool)

(declare-fun b_and!198063 () Bool)

(assert (=> b!2677435 (= tp!846530 b_and!198063)))

(declare-fun bs!479945 () Bool)

(declare-fun b!2677421 () Bool)

(declare-fun b!2677430 () Bool)

(assert (= bs!479945 (and b!2677421 b!2677430)))

(declare-fun lambda!100016 () Int)

(declare-fun lambda!100015 () Int)

(assert (=> bs!479945 (not (= lambda!100016 lambda!100015))))

(declare-fun b!2677450 () Bool)

(declare-fun e!1687667 () Bool)

(assert (=> b!2677450 (= e!1687667 true)))

(declare-fun b!2677449 () Bool)

(declare-fun e!1687666 () Bool)

(assert (=> b!2677449 (= e!1687666 e!1687667)))

(declare-fun b!2677448 () Bool)

(declare-fun e!1687665 () Bool)

(assert (=> b!2677448 (= e!1687665 e!1687666)))

(assert (=> b!2677421 e!1687665))

(assert (= b!2677449 b!2677450))

(assert (= b!2677448 b!2677449))

(declare-datatypes ((List!30903 0))(
  ( (Nil!30803) (Cons!30803 (h!36223 (_ BitVec 16)) (t!224076 List!30903)) )
))
(declare-datatypes ((TokenValue!4928 0))(
  ( (FloatLiteralValue!9856 (text!34941 List!30903)) (TokenValueExt!4927 (__x!19689 Int)) (Broken!24640 (value!151701 List!30903)) (Object!5027) (End!4928) (Def!4928) (Underscore!4928) (Match!4928) (Else!4928) (Error!4928) (Case!4928) (If!4928) (Extends!4928) (Abstract!4928) (Class!4928) (Val!4928) (DelimiterValue!9856 (del!4988 List!30903)) (KeywordValue!4934 (value!151702 List!30903)) (CommentValue!9856 (value!151703 List!30903)) (WhitespaceValue!9856 (value!151704 List!30903)) (IndentationValue!4928 (value!151705 List!30903)) (String!34525) (Int32!4928) (Broken!24641 (value!151706 List!30903)) (Boolean!4929) (Unit!45029) (OperatorValue!4931 (op!4988 List!30903)) (IdentifierValue!9856 (value!151707 List!30903)) (IdentifierValue!9857 (value!151708 List!30903)) (WhitespaceValue!9857 (value!151709 List!30903)) (True!9856) (False!9856) (Broken!24642 (value!151710 List!30903)) (Broken!24643 (value!151711 List!30903)) (True!9857) (RightBrace!4928) (RightBracket!4928) (Colon!4928) (Null!4928) (Comma!4928) (LeftBracket!4928) (False!9857) (LeftBrace!4928) (ImaginaryLiteralValue!4928 (text!34942 List!30903)) (StringLiteralValue!14784 (value!151712 List!30903)) (EOFValue!4928 (value!151713 List!30903)) (IdentValue!4928 (value!151714 List!30903)) (DelimiterValue!9857 (value!151715 List!30903)) (DedentValue!4928 (value!151716 List!30903)) (NewLineValue!4928 (value!151717 List!30903)) (IntegerValue!14784 (value!151718 (_ BitVec 32)) (text!34943 List!30903)) (IntegerValue!14785 (value!151719 Int) (text!34944 List!30903)) (Times!4928) (Or!4928) (Equal!4928) (Minus!4928) (Broken!24644 (value!151720 List!30903)) (And!4928) (Div!4928) (LessEqual!4928) (Mod!4928) (Concat!12778) (Not!4928) (Plus!4928) (SpaceValue!4928 (value!151721 List!30903)) (IntegerValue!14786 (value!151722 Int) (text!34945 List!30903)) (StringLiteralValue!14785 (text!34946 List!30903)) (FloatLiteralValue!9857 (text!34947 List!30903)) (BytesLiteralValue!4928 (value!151723 List!30903)) (CommentValue!9857 (value!151724 List!30903)) (StringLiteralValue!14786 (value!151725 List!30903)) (ErrorTokenValue!4928 (msg!4989 List!30903)) )
))
(declare-datatypes ((C!15858 0))(
  ( (C!15859 (val!9863 Int)) )
))
(declare-datatypes ((List!30904 0))(
  ( (Nil!30804) (Cons!30804 (h!36224 C!15858) (t!224077 List!30904)) )
))
(declare-datatypes ((IArray!19289 0))(
  ( (IArray!19290 (innerList!9702 List!30904)) )
))
(declare-datatypes ((Conc!9642 0))(
  ( (Node!9642 (left!23845 Conc!9642) (right!24175 Conc!9642) (csize!19514 Int) (cheight!9853 Int)) (Leaf!14736 (xs!12672 IArray!19289) (csize!19515 Int)) (Empty!9642) )
))
(declare-datatypes ((BalanceConc!18898 0))(
  ( (BalanceConc!18899 (c!431409 Conc!9642)) )
))
(declare-datatypes ((String!34526 0))(
  ( (String!34527 (value!151726 String)) )
))
(declare-datatypes ((Regex!7850 0))(
  ( (ElementMatch!7850 (c!431410 C!15858)) (Concat!12779 (regOne!16212 Regex!7850) (regTwo!16212 Regex!7850)) (EmptyExpr!7850) (Star!7850 (reg!8179 Regex!7850)) (EmptyLang!7850) (Union!7850 (regOne!16213 Regex!7850) (regTwo!16213 Regex!7850)) )
))
(declare-datatypes ((TokenValueInjection!9296 0))(
  ( (TokenValueInjection!9297 (toValue!6656 Int) (toChars!6515 Int)) )
))
(declare-datatypes ((Rule!9212 0))(
  ( (Rule!9213 (regex!4706 Regex!7850) (tag!5208 String!34526) (isSeparator!4706 Bool) (transformation!4706 TokenValueInjection!9296)) )
))
(declare-datatypes ((List!30905 0))(
  ( (Nil!30805) (Cons!30805 (h!36225 Rule!9212) (t!224078 List!30905)) )
))
(declare-fun rules!1712 () List!30905)

(assert (= (and b!2677421 (is-Cons!30805 rules!1712)) b!2677448))

(declare-fun order!17001 () Int)

(declare-fun order!17003 () Int)

(declare-fun dynLambda!13395 (Int Int) Int)

(declare-fun dynLambda!13396 (Int Int) Int)

(assert (=> b!2677450 (< (dynLambda!13395 order!17001 (toValue!6656 (transformation!4706 (h!36225 rules!1712)))) (dynLambda!13396 order!17003 lambda!100016))))

(declare-fun order!17005 () Int)

(declare-fun dynLambda!13397 (Int Int) Int)

(assert (=> b!2677450 (< (dynLambda!13397 order!17005 (toChars!6515 (transformation!4706 (h!36225 rules!1712)))) (dynLambda!13396 order!17003 lambda!100016))))

(assert (=> b!2677421 true))

(declare-fun b!2677420 () Bool)

(declare-fun res!1125622 () Bool)

(declare-fun e!1687645 () Bool)

(assert (=> b!2677420 (=> (not res!1125622) (not e!1687645))))

(declare-datatypes ((Token!8882 0))(
  ( (Token!8883 (value!151727 TokenValue!4928) (rule!7116 Rule!9212) (size!23812 Int) (originalCharacters!5472 List!30904)) )
))
(declare-datatypes ((List!30906 0))(
  ( (Nil!30806) (Cons!30806 (h!36226 Token!8882) (t!224079 List!30906)) )
))
(declare-fun l!4335 () List!30906)

(declare-fun contains!5930 (List!30906 Token!8882) Bool)

(assert (=> b!2677420 (= res!1125622 (contains!5930 l!4335 (h!36226 l!4335)))))

(declare-fun ListPrimitiveSize!198 (List!30906) Int)

(assert (=> b!2677421 (= e!1687645 (>= (ListPrimitiveSize!198 (t!224079 l!4335)) (ListPrimitiveSize!198 l!4335)))))

(declare-datatypes ((Unit!45030 0))(
  ( (Unit!45031) )
))
(declare-fun lt!942983 () Unit!45030)

(declare-fun forallContained!1046 (List!30906 Int Token!8882) Unit!45030)

(assert (=> b!2677421 (= lt!942983 (forallContained!1046 l!4335 lambda!100016 (h!36226 l!4335)))))

(declare-fun b!2677422 () Bool)

(declare-fun res!1125623 () Bool)

(assert (=> b!2677422 (=> (not res!1125623) (not e!1687645))))

(declare-datatypes ((LexerInterface!4303 0))(
  ( (LexerInterfaceExt!4300 (__x!19690 Int)) (Lexer!4301) )
))
(declare-fun thiss!14116 () LexerInterface!4303)

(declare-fun rulesProduceEachTokenIndividuallyList!1525 (LexerInterface!4303 List!30905 List!30906) Bool)

(assert (=> b!2677422 (= res!1125623 (rulesProduceEachTokenIndividuallyList!1525 thiss!14116 rules!1712 l!4335))))

(declare-fun b!2677423 () Bool)

(declare-fun res!1125624 () Bool)

(assert (=> b!2677423 (=> (not res!1125624) (not e!1687645))))

(declare-fun separatorToken!152 () Token!8882)

(assert (=> b!2677423 (= res!1125624 (isSeparator!4706 (rule!7116 separatorToken!152)))))

(declare-fun res!1125625 () Bool)

(assert (=> start!260696 (=> (not res!1125625) (not e!1687645))))

(assert (=> start!260696 (= res!1125625 (is-Lexer!4301 thiss!14116))))

(assert (=> start!260696 e!1687645))

(assert (=> start!260696 true))

(declare-fun e!1687656 () Bool)

(assert (=> start!260696 e!1687656))

(declare-fun e!1687653 () Bool)

(assert (=> start!260696 e!1687653))

(declare-fun e!1687655 () Bool)

(declare-fun inv!41828 (Token!8882) Bool)

(assert (=> start!260696 (and (inv!41828 separatorToken!152) e!1687655)))

(declare-fun b!2677424 () Bool)

(declare-fun e!1687644 () Bool)

(declare-fun tp!846540 () Bool)

(declare-fun inv!21 (TokenValue!4928) Bool)

(assert (=> b!2677424 (= e!1687655 (and (inv!21 (value!151727 separatorToken!152)) e!1687644 tp!846540))))

(declare-fun e!1687651 () Bool)

(declare-fun b!2677425 () Bool)

(declare-fun e!1687657 () Bool)

(declare-fun tp!846541 () Bool)

(declare-fun inv!41825 (String!34526) Bool)

(declare-fun inv!41829 (TokenValueInjection!9296) Bool)

(assert (=> b!2677425 (= e!1687651 (and tp!846541 (inv!41825 (tag!5208 (rule!7116 (h!36226 l!4335)))) (inv!41829 (transformation!4706 (rule!7116 (h!36226 l!4335)))) e!1687657))))

(declare-fun b!2677426 () Bool)

(declare-fun tp!846533 () Bool)

(declare-fun e!1687643 () Bool)

(declare-fun e!1687649 () Bool)

(assert (=> b!2677426 (= e!1687649 (and tp!846533 (inv!41825 (tag!5208 (h!36225 rules!1712))) (inv!41829 (transformation!4706 (h!36225 rules!1712))) e!1687643))))

(declare-fun b!2677427 () Bool)

(declare-fun res!1125620 () Bool)

(assert (=> b!2677427 (=> (not res!1125620) (not e!1687645))))

(assert (=> b!2677427 (= res!1125620 (is-Cons!30806 l!4335))))

(declare-fun b!2677428 () Bool)

(declare-fun tp!846531 () Bool)

(declare-fun e!1687654 () Bool)

(assert (=> b!2677428 (= e!1687653 (and (inv!41828 (h!36226 l!4335)) e!1687654 tp!846531))))

(declare-fun b!2677429 () Bool)

(declare-fun res!1125617 () Bool)

(assert (=> b!2677429 (=> (not res!1125617) (not e!1687645))))

(declare-fun isEmpty!17636 (List!30905) Bool)

(assert (=> b!2677429 (= res!1125617 (not (isEmpty!17636 rules!1712)))))

(declare-fun res!1125626 () Bool)

(assert (=> b!2677430 (=> (not res!1125626) (not e!1687645))))

(declare-fun forall!6525 (List!30906 Int) Bool)

(assert (=> b!2677430 (= res!1125626 (forall!6525 l!4335 lambda!100015))))

(declare-fun e!1687650 () Bool)

(assert (=> b!2677431 (= e!1687650 (and tp!846537 tp!846532))))

(declare-fun tp!846536 () Bool)

(declare-fun b!2677432 () Bool)

(assert (=> b!2677432 (= e!1687654 (and (inv!21 (value!151727 (h!36226 l!4335))) e!1687651 tp!846536))))

(declare-fun b!2677433 () Bool)

(declare-fun tp!846534 () Bool)

(assert (=> b!2677433 (= e!1687656 (and e!1687649 tp!846534))))

(declare-fun b!2677434 () Bool)

(declare-fun tp!846539 () Bool)

(assert (=> b!2677434 (= e!1687644 (and tp!846539 (inv!41825 (tag!5208 (rule!7116 separatorToken!152))) (inv!41829 (transformation!4706 (rule!7116 separatorToken!152))) e!1687650))))

(assert (=> b!2677435 (= e!1687657 (and tp!846535 tp!846530))))

(declare-fun b!2677436 () Bool)

(declare-fun res!1125621 () Bool)

(assert (=> b!2677436 (=> (not res!1125621) (not e!1687645))))

(declare-fun sepAndNonSepRulesDisjointChars!1279 (List!30905 List!30905) Bool)

(assert (=> b!2677436 (= res!1125621 (sepAndNonSepRulesDisjointChars!1279 rules!1712 rules!1712))))

(declare-fun b!2677437 () Bool)

(declare-fun res!1125618 () Bool)

(assert (=> b!2677437 (=> (not res!1125618) (not e!1687645))))

(declare-fun rulesProduceIndividualToken!2015 (LexerInterface!4303 List!30905 Token!8882) Bool)

(assert (=> b!2677437 (= res!1125618 (rulesProduceIndividualToken!2015 thiss!14116 rules!1712 separatorToken!152))))

(declare-fun b!2677438 () Bool)

(declare-fun res!1125619 () Bool)

(assert (=> b!2677438 (=> (not res!1125619) (not e!1687645))))

(declare-fun rulesInvariant!3803 (LexerInterface!4303 List!30905) Bool)

(assert (=> b!2677438 (= res!1125619 (rulesInvariant!3803 thiss!14116 rules!1712))))

(assert (=> b!2677439 (= e!1687643 (and tp!846529 tp!846538))))

(assert (= (and start!260696 res!1125625) b!2677429))

(assert (= (and b!2677429 res!1125617) b!2677438))

(assert (= (and b!2677438 res!1125619) b!2677422))

(assert (= (and b!2677422 res!1125623) b!2677437))

(assert (= (and b!2677437 res!1125618) b!2677423))

(assert (= (and b!2677423 res!1125624) b!2677430))

(assert (= (and b!2677430 res!1125626) b!2677436))

(assert (= (and b!2677436 res!1125621) b!2677427))

(assert (= (and b!2677427 res!1125620) b!2677420))

(assert (= (and b!2677420 res!1125622) b!2677421))

(assert (= b!2677426 b!2677439))

(assert (= b!2677433 b!2677426))

(assert (= (and start!260696 (is-Cons!30805 rules!1712)) b!2677433))

(assert (= b!2677425 b!2677435))

(assert (= b!2677432 b!2677425))

(assert (= b!2677428 b!2677432))

(assert (= (and start!260696 (is-Cons!30806 l!4335)) b!2677428))

(assert (= b!2677434 b!2677431))

(assert (= b!2677424 b!2677434))

(assert (= start!260696 b!2677424))

(declare-fun m!3044847 () Bool)

(assert (=> b!2677424 m!3044847))

(declare-fun m!3044849 () Bool)

(assert (=> b!2677432 m!3044849))

(declare-fun m!3044851 () Bool)

(assert (=> b!2677437 m!3044851))

(declare-fun m!3044853 () Bool)

(assert (=> b!2677436 m!3044853))

(declare-fun m!3044855 () Bool)

(assert (=> b!2677438 m!3044855))

(declare-fun m!3044857 () Bool)

(assert (=> b!2677420 m!3044857))

(declare-fun m!3044859 () Bool)

(assert (=> b!2677430 m!3044859))

(declare-fun m!3044861 () Bool)

(assert (=> b!2677429 m!3044861))

(declare-fun m!3044863 () Bool)

(assert (=> b!2677425 m!3044863))

(declare-fun m!3044865 () Bool)

(assert (=> b!2677425 m!3044865))

(declare-fun m!3044867 () Bool)

(assert (=> b!2677428 m!3044867))

(declare-fun m!3044869 () Bool)

(assert (=> b!2677422 m!3044869))

(declare-fun m!3044871 () Bool)

(assert (=> b!2677421 m!3044871))

(declare-fun m!3044873 () Bool)

(assert (=> b!2677421 m!3044873))

(declare-fun m!3044875 () Bool)

(assert (=> b!2677421 m!3044875))

(declare-fun m!3044877 () Bool)

(assert (=> start!260696 m!3044877))

(declare-fun m!3044879 () Bool)

(assert (=> b!2677426 m!3044879))

(declare-fun m!3044881 () Bool)

(assert (=> b!2677426 m!3044881))

(declare-fun m!3044883 () Bool)

(assert (=> b!2677434 m!3044883))

(declare-fun m!3044885 () Bool)

(assert (=> b!2677434 m!3044885))

(push 1)

(assert (not b!2677436))

(assert (not b!2677434))

(assert (not start!260696))

(assert (not b!2677432))

(assert b_and!198063)

(assert (not b!2677428))

(assert b_and!198053)

(assert (not b!2677430))

(assert (not b_next!76183))

(assert (not b_next!76191))

(assert (not b!2677425))

(assert (not b!2677437))

(assert (not b!2677438))

(assert (not b_next!76187))

(assert (not b!2677433))

(assert b_and!198055)

(assert (not b!2677448))

(assert b_and!198057)

(assert (not b_next!76189))

(assert b_and!198059)

(assert (not b!2677429))

(assert (not b_next!76181))

(assert (not b!2677426))

(assert b_and!198061)

(assert (not b!2677420))

(assert (not b!2677424))

(assert (not b!2677421))

(assert (not b!2677422))

(assert (not b_next!76185))

(check-sat)

(pop 1)

(push 1)

(assert b_and!198055)

(assert b_and!198063)

(assert b_and!198053)

(assert (not b_next!76181))

(assert b_and!198061)

(assert (not b_next!76183))

(assert (not b_next!76191))

(assert (not b_next!76185))

(assert (not b_next!76187))

(assert b_and!198057)

(assert (not b_next!76189))

(assert b_and!198059)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!765686 () Bool)

(assert (=> d!765686 (= (isEmpty!17636 rules!1712) (is-Nil!30805 rules!1712))))

(assert (=> b!2677429 d!765686))

(declare-fun d!765690 () Bool)

(declare-fun res!1125669 () Bool)

(declare-fun e!1687727 () Bool)

(assert (=> d!765690 (=> (not res!1125669) (not e!1687727))))

(declare-fun isEmpty!17638 (List!30904) Bool)

(assert (=> d!765690 (= res!1125669 (not (isEmpty!17638 (originalCharacters!5472 (h!36226 l!4335)))))))

(assert (=> d!765690 (= (inv!41828 (h!36226 l!4335)) e!1687727)))

(declare-fun b!2677530 () Bool)

(declare-fun res!1125670 () Bool)

(assert (=> b!2677530 (=> (not res!1125670) (not e!1687727))))

(declare-fun list!11644 (BalanceConc!18898) List!30904)

(declare-fun dynLambda!13401 (Int TokenValue!4928) BalanceConc!18898)

(assert (=> b!2677530 (= res!1125670 (= (originalCharacters!5472 (h!36226 l!4335)) (list!11644 (dynLambda!13401 (toChars!6515 (transformation!4706 (rule!7116 (h!36226 l!4335)))) (value!151727 (h!36226 l!4335))))))))

(declare-fun b!2677531 () Bool)

(declare-fun size!23814 (List!30904) Int)

(assert (=> b!2677531 (= e!1687727 (= (size!23812 (h!36226 l!4335)) (size!23814 (originalCharacters!5472 (h!36226 l!4335)))))))

(assert (= (and d!765690 res!1125669) b!2677530))

(assert (= (and b!2677530 res!1125670) b!2677531))

(declare-fun b_lambda!81739 () Bool)

(assert (=> (not b_lambda!81739) (not b!2677530)))

(declare-fun t!224087 () Bool)

(declare-fun tb!150297 () Bool)

(assert (=> (and b!2677431 (= (toChars!6515 (transformation!4706 (rule!7116 separatorToken!152))) (toChars!6515 (transformation!4706 (rule!7116 (h!36226 l!4335))))) t!224087) tb!150297))

(declare-fun b!2677536 () Bool)

(declare-fun e!1687730 () Bool)

(declare-fun tp!846583 () Bool)

(declare-fun inv!41832 (Conc!9642) Bool)

(assert (=> b!2677536 (= e!1687730 (and (inv!41832 (c!431409 (dynLambda!13401 (toChars!6515 (transformation!4706 (rule!7116 (h!36226 l!4335)))) (value!151727 (h!36226 l!4335))))) tp!846583))))

(declare-fun result!185616 () Bool)

(declare-fun inv!41833 (BalanceConc!18898) Bool)

(assert (=> tb!150297 (= result!185616 (and (inv!41833 (dynLambda!13401 (toChars!6515 (transformation!4706 (rule!7116 (h!36226 l!4335)))) (value!151727 (h!36226 l!4335)))) e!1687730))))

(assert (= tb!150297 b!2677536))

(declare-fun m!3044927 () Bool)

(assert (=> b!2677536 m!3044927))

(declare-fun m!3044929 () Bool)

(assert (=> tb!150297 m!3044929))

(assert (=> b!2677530 t!224087))

(declare-fun b_and!198077 () Bool)

(assert (= b_and!198055 (and (=> t!224087 result!185616) b_and!198077)))

(declare-fun tb!150299 () Bool)

(declare-fun t!224089 () Bool)

(assert (=> (and b!2677439 (= (toChars!6515 (transformation!4706 (h!36225 rules!1712))) (toChars!6515 (transformation!4706 (rule!7116 (h!36226 l!4335))))) t!224089) tb!150299))

(declare-fun result!185620 () Bool)

(assert (= result!185620 result!185616))

(assert (=> b!2677530 t!224089))

(declare-fun b_and!198079 () Bool)

(assert (= b_and!198059 (and (=> t!224089 result!185620) b_and!198079)))

(declare-fun t!224091 () Bool)

(declare-fun tb!150301 () Bool)

(assert (=> (and b!2677435 (= (toChars!6515 (transformation!4706 (rule!7116 (h!36226 l!4335)))) (toChars!6515 (transformation!4706 (rule!7116 (h!36226 l!4335))))) t!224091) tb!150301))

(declare-fun result!185622 () Bool)

(assert (= result!185622 result!185616))

(assert (=> b!2677530 t!224091))

(declare-fun b_and!198081 () Bool)

(assert (= b_and!198063 (and (=> t!224091 result!185622) b_and!198081)))

(declare-fun m!3044931 () Bool)

(assert (=> d!765690 m!3044931))

(declare-fun m!3044933 () Bool)

(assert (=> b!2677530 m!3044933))

(assert (=> b!2677530 m!3044933))

(declare-fun m!3044935 () Bool)

(assert (=> b!2677530 m!3044935))

(declare-fun m!3044937 () Bool)

(assert (=> b!2677531 m!3044937))

(assert (=> b!2677428 d!765690))

(declare-fun d!765692 () Bool)

(declare-fun res!1125679 () Bool)

(declare-fun e!1687739 () Bool)

(assert (=> d!765692 (=> (not res!1125679) (not e!1687739))))

(declare-fun rulesValid!1757 (LexerInterface!4303 List!30905) Bool)

(assert (=> d!765692 (= res!1125679 (rulesValid!1757 thiss!14116 rules!1712))))

(assert (=> d!765692 (= (rulesInvariant!3803 thiss!14116 rules!1712) e!1687739)))

(declare-fun b!2677545 () Bool)

(declare-datatypes ((List!30911 0))(
  ( (Nil!30811) (Cons!30811 (h!36231 String!34526) (t!224110 List!30911)) )
))
(declare-fun noDuplicateTag!1753 (LexerInterface!4303 List!30905 List!30911) Bool)

(assert (=> b!2677545 (= e!1687739 (noDuplicateTag!1753 thiss!14116 rules!1712 Nil!30811))))

(assert (= (and d!765692 res!1125679) b!2677545))

(declare-fun m!3044939 () Bool)

(assert (=> d!765692 m!3044939))

(declare-fun m!3044941 () Bool)

(assert (=> b!2677545 m!3044941))

(assert (=> b!2677438 d!765692))

(declare-fun d!765694 () Bool)

(declare-fun c!431417 () Bool)

(assert (=> d!765694 (= c!431417 (is-IntegerValue!14784 (value!151727 (h!36226 l!4335))))))

(declare-fun e!1687748 () Bool)

(assert (=> d!765694 (= (inv!21 (value!151727 (h!36226 l!4335))) e!1687748)))

(declare-fun b!2677556 () Bool)

(declare-fun e!1687746 () Bool)

(assert (=> b!2677556 (= e!1687748 e!1687746)))

(declare-fun c!431418 () Bool)

(assert (=> b!2677556 (= c!431418 (is-IntegerValue!14785 (value!151727 (h!36226 l!4335))))))

(declare-fun b!2677557 () Bool)

(declare-fun e!1687747 () Bool)

(declare-fun inv!15 (TokenValue!4928) Bool)

(assert (=> b!2677557 (= e!1687747 (inv!15 (value!151727 (h!36226 l!4335))))))

(declare-fun b!2677558 () Bool)

(declare-fun res!1125682 () Bool)

(assert (=> b!2677558 (=> res!1125682 e!1687747)))

(assert (=> b!2677558 (= res!1125682 (not (is-IntegerValue!14786 (value!151727 (h!36226 l!4335)))))))

(assert (=> b!2677558 (= e!1687746 e!1687747)))

(declare-fun b!2677559 () Bool)

(declare-fun inv!17 (TokenValue!4928) Bool)

(assert (=> b!2677559 (= e!1687746 (inv!17 (value!151727 (h!36226 l!4335))))))

(declare-fun b!2677560 () Bool)

(declare-fun inv!16 (TokenValue!4928) Bool)

(assert (=> b!2677560 (= e!1687748 (inv!16 (value!151727 (h!36226 l!4335))))))

(assert (= (and d!765694 c!431417) b!2677560))

(assert (= (and d!765694 (not c!431417)) b!2677556))

(assert (= (and b!2677556 c!431418) b!2677559))

(assert (= (and b!2677556 (not c!431418)) b!2677558))

(assert (= (and b!2677558 (not res!1125682)) b!2677557))

(declare-fun m!3044947 () Bool)

(assert (=> b!2677557 m!3044947))

(declare-fun m!3044949 () Bool)

(assert (=> b!2677559 m!3044949))

(declare-fun m!3044951 () Bool)

(assert (=> b!2677560 m!3044951))

(assert (=> b!2677432 d!765694))

(declare-fun d!765700 () Bool)

(declare-fun lt!942989 () Int)

(assert (=> d!765700 (>= lt!942989 0)))

(declare-fun e!1687751 () Int)

(assert (=> d!765700 (= lt!942989 e!1687751)))

(declare-fun c!431421 () Bool)

(assert (=> d!765700 (= c!431421 (is-Nil!30806 (t!224079 l!4335)))))

(assert (=> d!765700 (= (ListPrimitiveSize!198 (t!224079 l!4335)) lt!942989)))

(declare-fun b!2677565 () Bool)

(assert (=> b!2677565 (= e!1687751 0)))

(declare-fun b!2677566 () Bool)

(assert (=> b!2677566 (= e!1687751 (+ 1 (ListPrimitiveSize!198 (t!224079 (t!224079 l!4335)))))))

(assert (= (and d!765700 c!431421) b!2677565))

(assert (= (and d!765700 (not c!431421)) b!2677566))

(declare-fun m!3044953 () Bool)

(assert (=> b!2677566 m!3044953))

(assert (=> b!2677421 d!765700))

(declare-fun d!765702 () Bool)

(declare-fun lt!942990 () Int)

(assert (=> d!765702 (>= lt!942990 0)))

(declare-fun e!1687752 () Int)

(assert (=> d!765702 (= lt!942990 e!1687752)))

(declare-fun c!431422 () Bool)

(assert (=> d!765702 (= c!431422 (is-Nil!30806 l!4335))))

(assert (=> d!765702 (= (ListPrimitiveSize!198 l!4335) lt!942990)))

(declare-fun b!2677567 () Bool)

(assert (=> b!2677567 (= e!1687752 0)))

(declare-fun b!2677568 () Bool)

(assert (=> b!2677568 (= e!1687752 (+ 1 (ListPrimitiveSize!198 (t!224079 l!4335))))))

(assert (= (and d!765702 c!431422) b!2677567))

(assert (= (and d!765702 (not c!431422)) b!2677568))

(assert (=> b!2677568 m!3044871))

(assert (=> b!2677421 d!765702))

(declare-fun d!765704 () Bool)

(declare-fun dynLambda!13402 (Int Token!8882) Bool)

(assert (=> d!765704 (dynLambda!13402 lambda!100016 (h!36226 l!4335))))

(declare-fun lt!942993 () Unit!45030)

(declare-fun choose!15860 (List!30906 Int Token!8882) Unit!45030)

(assert (=> d!765704 (= lt!942993 (choose!15860 l!4335 lambda!100016 (h!36226 l!4335)))))

(declare-fun e!1687758 () Bool)

(assert (=> d!765704 e!1687758))

(declare-fun res!1125688 () Bool)

(assert (=> d!765704 (=> (not res!1125688) (not e!1687758))))

(assert (=> d!765704 (= res!1125688 (forall!6525 l!4335 lambda!100016))))

(assert (=> d!765704 (= (forallContained!1046 l!4335 lambda!100016 (h!36226 l!4335)) lt!942993)))

(declare-fun b!2677574 () Bool)

(assert (=> b!2677574 (= e!1687758 (contains!5930 l!4335 (h!36226 l!4335)))))

(assert (= (and d!765704 res!1125688) b!2677574))

(declare-fun b_lambda!81741 () Bool)

(assert (=> (not b_lambda!81741) (not d!765704)))

(declare-fun m!3044959 () Bool)

(assert (=> d!765704 m!3044959))

(declare-fun m!3044961 () Bool)

(assert (=> d!765704 m!3044961))

(declare-fun m!3044963 () Bool)

(assert (=> d!765704 m!3044963))

(assert (=> b!2677574 m!3044857))

(assert (=> b!2677421 d!765704))

(declare-fun d!765708 () Bool)

(declare-fun lt!942996 () Bool)

(declare-fun content!4382 (List!30906) (Set Token!8882))

(assert (=> d!765708 (= lt!942996 (set.member (h!36226 l!4335) (content!4382 l!4335)))))

(declare-fun e!1687764 () Bool)

(assert (=> d!765708 (= lt!942996 e!1687764)))

(declare-fun res!1125694 () Bool)

(assert (=> d!765708 (=> (not res!1125694) (not e!1687764))))

(assert (=> d!765708 (= res!1125694 (is-Cons!30806 l!4335))))

(assert (=> d!765708 (= (contains!5930 l!4335 (h!36226 l!4335)) lt!942996)))

(declare-fun b!2677579 () Bool)

(declare-fun e!1687763 () Bool)

(assert (=> b!2677579 (= e!1687764 e!1687763)))

(declare-fun res!1125693 () Bool)

(assert (=> b!2677579 (=> res!1125693 e!1687763)))

(assert (=> b!2677579 (= res!1125693 (= (h!36226 l!4335) (h!36226 l!4335)))))

(declare-fun b!2677580 () Bool)

(assert (=> b!2677580 (= e!1687763 (contains!5930 (t!224079 l!4335) (h!36226 l!4335)))))

(assert (= (and d!765708 res!1125694) b!2677579))

(assert (= (and b!2677579 (not res!1125693)) b!2677580))

(declare-fun m!3044965 () Bool)

(assert (=> d!765708 m!3044965))

(declare-fun m!3044967 () Bool)

(assert (=> d!765708 m!3044967))

(declare-fun m!3044969 () Bool)

(assert (=> b!2677580 m!3044969))

(assert (=> b!2677420 d!765708))

(declare-fun d!765712 () Bool)

(declare-fun res!1125699 () Bool)

(declare-fun e!1687771 () Bool)

(assert (=> d!765712 (=> res!1125699 e!1687771)))

(assert (=> d!765712 (= res!1125699 (is-Nil!30806 l!4335))))

(assert (=> d!765712 (= (forall!6525 l!4335 lambda!100015) e!1687771)))

(declare-fun b!2677589 () Bool)

(declare-fun e!1687772 () Bool)

(assert (=> b!2677589 (= e!1687771 e!1687772)))

(declare-fun res!1125700 () Bool)

(assert (=> b!2677589 (=> (not res!1125700) (not e!1687772))))

(assert (=> b!2677589 (= res!1125700 (dynLambda!13402 lambda!100015 (h!36226 l!4335)))))

(declare-fun b!2677590 () Bool)

(assert (=> b!2677590 (= e!1687772 (forall!6525 (t!224079 l!4335) lambda!100015))))

(assert (= (and d!765712 (not res!1125699)) b!2677589))

(assert (= (and b!2677589 res!1125700) b!2677590))

(declare-fun b_lambda!81743 () Bool)

(assert (=> (not b_lambda!81743) (not b!2677589)))

(declare-fun m!3044971 () Bool)

(assert (=> b!2677589 m!3044971))

(declare-fun m!3044973 () Bool)

(assert (=> b!2677590 m!3044973))

(assert (=> b!2677430 d!765712))

(declare-fun d!765714 () Bool)

(declare-fun c!431426 () Bool)

(assert (=> d!765714 (= c!431426 (is-IntegerValue!14784 (value!151727 separatorToken!152)))))

(declare-fun e!1687776 () Bool)

(assert (=> d!765714 (= (inv!21 (value!151727 separatorToken!152)) e!1687776)))

(declare-fun b!2677593 () Bool)

(declare-fun e!1687774 () Bool)

(assert (=> b!2677593 (= e!1687776 e!1687774)))

(declare-fun c!431427 () Bool)

(assert (=> b!2677593 (= c!431427 (is-IntegerValue!14785 (value!151727 separatorToken!152)))))

(declare-fun b!2677594 () Bool)

(declare-fun e!1687775 () Bool)

(assert (=> b!2677594 (= e!1687775 (inv!15 (value!151727 separatorToken!152)))))

(declare-fun b!2677595 () Bool)

(declare-fun res!1125701 () Bool)

(assert (=> b!2677595 (=> res!1125701 e!1687775)))

(assert (=> b!2677595 (= res!1125701 (not (is-IntegerValue!14786 (value!151727 separatorToken!152))))))

(assert (=> b!2677595 (= e!1687774 e!1687775)))

(declare-fun b!2677596 () Bool)

(assert (=> b!2677596 (= e!1687774 (inv!17 (value!151727 separatorToken!152)))))

(declare-fun b!2677597 () Bool)

(assert (=> b!2677597 (= e!1687776 (inv!16 (value!151727 separatorToken!152)))))

(assert (= (and d!765714 c!431426) b!2677597))

(assert (= (and d!765714 (not c!431426)) b!2677593))

(assert (= (and b!2677593 c!431427) b!2677596))

(assert (= (and b!2677593 (not c!431427)) b!2677595))

(assert (= (and b!2677595 (not res!1125701)) b!2677594))

(declare-fun m!3044977 () Bool)

(assert (=> b!2677594 m!3044977))

(declare-fun m!3044979 () Bool)

(assert (=> b!2677596 m!3044979))

(declare-fun m!3044981 () Bool)

(assert (=> b!2677597 m!3044981))

(assert (=> b!2677424 d!765714))

(declare-fun d!765718 () Bool)

(assert (=> d!765718 (= (inv!41825 (tag!5208 (rule!7116 separatorToken!152))) (= (mod (str.len (value!151726 (tag!5208 (rule!7116 separatorToken!152)))) 2) 0))))

(assert (=> b!2677434 d!765718))

(declare-fun d!765722 () Bool)

(declare-fun res!1125704 () Bool)

(declare-fun e!1687780 () Bool)

(assert (=> d!765722 (=> (not res!1125704) (not e!1687780))))

(declare-fun semiInverseModEq!1951 (Int Int) Bool)

(assert (=> d!765722 (= res!1125704 (semiInverseModEq!1951 (toChars!6515 (transformation!4706 (rule!7116 separatorToken!152))) (toValue!6656 (transformation!4706 (rule!7116 separatorToken!152)))))))

(assert (=> d!765722 (= (inv!41829 (transformation!4706 (rule!7116 separatorToken!152))) e!1687780)))

(declare-fun b!2677602 () Bool)

(declare-fun equivClasses!1852 (Int Int) Bool)

(assert (=> b!2677602 (= e!1687780 (equivClasses!1852 (toChars!6515 (transformation!4706 (rule!7116 separatorToken!152))) (toValue!6656 (transformation!4706 (rule!7116 separatorToken!152)))))))

(assert (= (and d!765722 res!1125704) b!2677602))

(declare-fun m!3044983 () Bool)

(assert (=> d!765722 m!3044983))

(declare-fun m!3044985 () Bool)

(assert (=> b!2677602 m!3044985))

(assert (=> b!2677434 d!765722))

(declare-fun d!765724 () Bool)

(declare-fun res!1125705 () Bool)

(declare-fun e!1687781 () Bool)

(assert (=> d!765724 (=> (not res!1125705) (not e!1687781))))

(assert (=> d!765724 (= res!1125705 (not (isEmpty!17638 (originalCharacters!5472 separatorToken!152))))))

(assert (=> d!765724 (= (inv!41828 separatorToken!152) e!1687781)))

(declare-fun b!2677603 () Bool)

(declare-fun res!1125706 () Bool)

(assert (=> b!2677603 (=> (not res!1125706) (not e!1687781))))

(assert (=> b!2677603 (= res!1125706 (= (originalCharacters!5472 separatorToken!152) (list!11644 (dynLambda!13401 (toChars!6515 (transformation!4706 (rule!7116 separatorToken!152))) (value!151727 separatorToken!152)))))))

(declare-fun b!2677604 () Bool)

(assert (=> b!2677604 (= e!1687781 (= (size!23812 separatorToken!152) (size!23814 (originalCharacters!5472 separatorToken!152))))))

(assert (= (and d!765724 res!1125705) b!2677603))

(assert (= (and b!2677603 res!1125706) b!2677604))

(declare-fun b_lambda!81745 () Bool)

(assert (=> (not b_lambda!81745) (not b!2677603)))

(declare-fun t!224093 () Bool)

(declare-fun tb!150303 () Bool)

(assert (=> (and b!2677431 (= (toChars!6515 (transformation!4706 (rule!7116 separatorToken!152))) (toChars!6515 (transformation!4706 (rule!7116 separatorToken!152)))) t!224093) tb!150303))

(declare-fun b!2677605 () Bool)

(declare-fun e!1687782 () Bool)

(declare-fun tp!846584 () Bool)

(assert (=> b!2677605 (= e!1687782 (and (inv!41832 (c!431409 (dynLambda!13401 (toChars!6515 (transformation!4706 (rule!7116 separatorToken!152))) (value!151727 separatorToken!152)))) tp!846584))))

(declare-fun result!185624 () Bool)

(assert (=> tb!150303 (= result!185624 (and (inv!41833 (dynLambda!13401 (toChars!6515 (transformation!4706 (rule!7116 separatorToken!152))) (value!151727 separatorToken!152))) e!1687782))))

(assert (= tb!150303 b!2677605))

(declare-fun m!3044987 () Bool)

(assert (=> b!2677605 m!3044987))

(declare-fun m!3044989 () Bool)

(assert (=> tb!150303 m!3044989))

(assert (=> b!2677603 t!224093))

(declare-fun b_and!198083 () Bool)

(assert (= b_and!198077 (and (=> t!224093 result!185624) b_and!198083)))

(declare-fun t!224095 () Bool)

(declare-fun tb!150305 () Bool)

(assert (=> (and b!2677439 (= (toChars!6515 (transformation!4706 (h!36225 rules!1712))) (toChars!6515 (transformation!4706 (rule!7116 separatorToken!152)))) t!224095) tb!150305))

(declare-fun result!185626 () Bool)

(assert (= result!185626 result!185624))

(assert (=> b!2677603 t!224095))

(declare-fun b_and!198085 () Bool)

(assert (= b_and!198079 (and (=> t!224095 result!185626) b_and!198085)))

(declare-fun tb!150307 () Bool)

(declare-fun t!224097 () Bool)

(assert (=> (and b!2677435 (= (toChars!6515 (transformation!4706 (rule!7116 (h!36226 l!4335)))) (toChars!6515 (transformation!4706 (rule!7116 separatorToken!152)))) t!224097) tb!150307))

(declare-fun result!185628 () Bool)

(assert (= result!185628 result!185624))

(assert (=> b!2677603 t!224097))

(declare-fun b_and!198087 () Bool)

(assert (= b_and!198081 (and (=> t!224097 result!185628) b_and!198087)))

(declare-fun m!3044991 () Bool)

(assert (=> d!765724 m!3044991))

(declare-fun m!3044993 () Bool)

(assert (=> b!2677603 m!3044993))

(assert (=> b!2677603 m!3044993))

(declare-fun m!3044995 () Bool)

(assert (=> b!2677603 m!3044995))

(declare-fun m!3044997 () Bool)

(assert (=> b!2677604 m!3044997))

(assert (=> start!260696 d!765724))

(declare-fun bs!479947 () Bool)

(declare-fun d!765726 () Bool)

(assert (= bs!479947 (and d!765726 b!2677430)))

(declare-fun lambda!100025 () Int)

(assert (=> bs!479947 (not (= lambda!100025 lambda!100015))))

(declare-fun bs!479948 () Bool)

(assert (= bs!479948 (and d!765726 b!2677421)))

(assert (=> bs!479948 (= lambda!100025 lambda!100016)))

(declare-fun b!2677617 () Bool)

(declare-fun e!1687794 () Bool)

(assert (=> b!2677617 (= e!1687794 true)))

(declare-fun b!2677616 () Bool)

(declare-fun e!1687793 () Bool)

(assert (=> b!2677616 (= e!1687793 e!1687794)))

(declare-fun b!2677615 () Bool)

(declare-fun e!1687792 () Bool)

(assert (=> b!2677615 (= e!1687792 e!1687793)))

(assert (=> d!765726 e!1687792))

(assert (= b!2677616 b!2677617))

(assert (= b!2677615 b!2677616))

(assert (= (and d!765726 (is-Cons!30805 rules!1712)) b!2677615))

(assert (=> b!2677617 (< (dynLambda!13395 order!17001 (toValue!6656 (transformation!4706 (h!36225 rules!1712)))) (dynLambda!13396 order!17003 lambda!100025))))

(assert (=> b!2677617 (< (dynLambda!13397 order!17005 (toChars!6515 (transformation!4706 (h!36225 rules!1712)))) (dynLambda!13396 order!17003 lambda!100025))))

(assert (=> d!765726 true))

(declare-fun lt!943006 () Bool)

(assert (=> d!765726 (= lt!943006 (forall!6525 l!4335 lambda!100025))))

(declare-fun e!1687790 () Bool)

(assert (=> d!765726 (= lt!943006 e!1687790)))

(declare-fun res!1125714 () Bool)

(assert (=> d!765726 (=> res!1125714 e!1687790)))

(assert (=> d!765726 (= res!1125714 (not (is-Cons!30806 l!4335)))))

(assert (=> d!765726 (not (isEmpty!17636 rules!1712))))

(assert (=> d!765726 (= (rulesProduceEachTokenIndividuallyList!1525 thiss!14116 rules!1712 l!4335) lt!943006)))

(declare-fun b!2677613 () Bool)

(declare-fun e!1687791 () Bool)

(assert (=> b!2677613 (= e!1687790 e!1687791)))

(declare-fun res!1125715 () Bool)

(assert (=> b!2677613 (=> (not res!1125715) (not e!1687791))))

(assert (=> b!2677613 (= res!1125715 (rulesProduceIndividualToken!2015 thiss!14116 rules!1712 (h!36226 l!4335)))))

(declare-fun b!2677614 () Bool)

(assert (=> b!2677614 (= e!1687791 (rulesProduceEachTokenIndividuallyList!1525 thiss!14116 rules!1712 (t!224079 l!4335)))))

(assert (= (and d!765726 (not res!1125714)) b!2677613))

(assert (= (and b!2677613 res!1125715) b!2677614))

(declare-fun m!3045005 () Bool)

(assert (=> d!765726 m!3045005))

(assert (=> d!765726 m!3044861))

(declare-fun m!3045007 () Bool)

(assert (=> b!2677613 m!3045007))

(declare-fun m!3045009 () Bool)

(assert (=> b!2677614 m!3045009))

(assert (=> b!2677422 d!765726))

(declare-fun d!765730 () Bool)

(declare-fun lt!943015 () Bool)

(declare-fun e!1687804 () Bool)

(assert (=> d!765730 (= lt!943015 e!1687804)))

(declare-fun res!1125728 () Bool)

(assert (=> d!765730 (=> (not res!1125728) (not e!1687804))))

(declare-datatypes ((IArray!19293 0))(
  ( (IArray!19294 (innerList!9704 List!30906)) )
))
(declare-datatypes ((Conc!9644 0))(
  ( (Node!9644 (left!23849 Conc!9644) (right!24179 Conc!9644) (csize!19518 Int) (cheight!9855 Int)) (Leaf!14738 (xs!12674 IArray!19293) (csize!19519 Int)) (Empty!9644) )
))
(declare-datatypes ((BalanceConc!18902 0))(
  ( (BalanceConc!18903 (c!431435 Conc!9644)) )
))
(declare-fun list!11645 (BalanceConc!18902) List!30906)

(declare-datatypes ((tuple2!30268 0))(
  ( (tuple2!30269 (_1!17676 BalanceConc!18902) (_2!17676 BalanceConc!18898)) )
))
(declare-fun lex!1938 (LexerInterface!4303 List!30905 BalanceConc!18898) tuple2!30268)

(declare-fun print!1682 (LexerInterface!4303 BalanceConc!18902) BalanceConc!18898)

(declare-fun singletonSeq!2103 (Token!8882) BalanceConc!18902)

(assert (=> d!765730 (= res!1125728 (= (list!11645 (_1!17676 (lex!1938 thiss!14116 rules!1712 (print!1682 thiss!14116 (singletonSeq!2103 separatorToken!152))))) (list!11645 (singletonSeq!2103 separatorToken!152))))))

(declare-fun e!1687803 () Bool)

(assert (=> d!765730 (= lt!943015 e!1687803)))

(declare-fun res!1125729 () Bool)

(assert (=> d!765730 (=> (not res!1125729) (not e!1687803))))

(declare-fun lt!943016 () tuple2!30268)

(declare-fun size!23815 (BalanceConc!18902) Int)

(assert (=> d!765730 (= res!1125729 (= (size!23815 (_1!17676 lt!943016)) 1))))

(assert (=> d!765730 (= lt!943016 (lex!1938 thiss!14116 rules!1712 (print!1682 thiss!14116 (singletonSeq!2103 separatorToken!152))))))

(assert (=> d!765730 (not (isEmpty!17636 rules!1712))))

(assert (=> d!765730 (= (rulesProduceIndividualToken!2015 thiss!14116 rules!1712 separatorToken!152) lt!943015)))

(declare-fun b!2677630 () Bool)

(declare-fun res!1125730 () Bool)

(assert (=> b!2677630 (=> (not res!1125730) (not e!1687803))))

(declare-fun apply!7395 (BalanceConc!18902 Int) Token!8882)

(assert (=> b!2677630 (= res!1125730 (= (apply!7395 (_1!17676 lt!943016) 0) separatorToken!152))))

(declare-fun b!2677631 () Bool)

(declare-fun isEmpty!17639 (BalanceConc!18898) Bool)

(assert (=> b!2677631 (= e!1687803 (isEmpty!17639 (_2!17676 lt!943016)))))

(declare-fun b!2677632 () Bool)

(assert (=> b!2677632 (= e!1687804 (isEmpty!17639 (_2!17676 (lex!1938 thiss!14116 rules!1712 (print!1682 thiss!14116 (singletonSeq!2103 separatorToken!152))))))))

(assert (= (and d!765730 res!1125729) b!2677630))

(assert (= (and b!2677630 res!1125730) b!2677631))

(assert (= (and d!765730 res!1125728) b!2677632))

(declare-fun m!3045011 () Bool)

(assert (=> d!765730 m!3045011))

(declare-fun m!3045013 () Bool)

(assert (=> d!765730 m!3045013))

(assert (=> d!765730 m!3045013))

(declare-fun m!3045015 () Bool)

(assert (=> d!765730 m!3045015))

(assert (=> d!765730 m!3044861))

(assert (=> d!765730 m!3045013))

(declare-fun m!3045017 () Bool)

(assert (=> d!765730 m!3045017))

(assert (=> d!765730 m!3045017))

(declare-fun m!3045019 () Bool)

(assert (=> d!765730 m!3045019))

(declare-fun m!3045021 () Bool)

(assert (=> d!765730 m!3045021))

(declare-fun m!3045023 () Bool)

(assert (=> b!2677630 m!3045023))

(declare-fun m!3045025 () Bool)

(assert (=> b!2677631 m!3045025))

(assert (=> b!2677632 m!3045013))

(assert (=> b!2677632 m!3045013))

(assert (=> b!2677632 m!3045017))

(assert (=> b!2677632 m!3045017))

(assert (=> b!2677632 m!3045019))

(declare-fun m!3045027 () Bool)

(assert (=> b!2677632 m!3045027))

(assert (=> b!2677437 d!765730))

(declare-fun d!765732 () Bool)

(assert (=> d!765732 (= (inv!41825 (tag!5208 (h!36225 rules!1712))) (= (mod (str.len (value!151726 (tag!5208 (h!36225 rules!1712)))) 2) 0))))

(assert (=> b!2677426 d!765732))

(declare-fun d!765734 () Bool)

(declare-fun res!1125734 () Bool)

(declare-fun e!1687807 () Bool)

(assert (=> d!765734 (=> (not res!1125734) (not e!1687807))))

(assert (=> d!765734 (= res!1125734 (semiInverseModEq!1951 (toChars!6515 (transformation!4706 (h!36225 rules!1712))) (toValue!6656 (transformation!4706 (h!36225 rules!1712)))))))

(assert (=> d!765734 (= (inv!41829 (transformation!4706 (h!36225 rules!1712))) e!1687807)))

(declare-fun b!2677636 () Bool)

(assert (=> b!2677636 (= e!1687807 (equivClasses!1852 (toChars!6515 (transformation!4706 (h!36225 rules!1712))) (toValue!6656 (transformation!4706 (h!36225 rules!1712)))))))

(assert (= (and d!765734 res!1125734) b!2677636))

(declare-fun m!3045031 () Bool)

(assert (=> d!765734 m!3045031))

(declare-fun m!3045035 () Bool)

(assert (=> b!2677636 m!3045035))

(assert (=> b!2677426 d!765734))

(declare-fun d!765736 () Bool)

(declare-fun res!1125739 () Bool)

(declare-fun e!1687812 () Bool)

(assert (=> d!765736 (=> res!1125739 e!1687812)))

(assert (=> d!765736 (= res!1125739 (not (is-Cons!30805 rules!1712)))))

(assert (=> d!765736 (= (sepAndNonSepRulesDisjointChars!1279 rules!1712 rules!1712) e!1687812)))

(declare-fun b!2677641 () Bool)

(declare-fun e!1687813 () Bool)

(assert (=> b!2677641 (= e!1687812 e!1687813)))

(declare-fun res!1125740 () Bool)

(assert (=> b!2677641 (=> (not res!1125740) (not e!1687813))))

(declare-fun ruleDisjointCharsFromAllFromOtherType!558 (Rule!9212 List!30905) Bool)

(assert (=> b!2677641 (= res!1125740 (ruleDisjointCharsFromAllFromOtherType!558 (h!36225 rules!1712) rules!1712))))

(declare-fun b!2677642 () Bool)

(assert (=> b!2677642 (= e!1687813 (sepAndNonSepRulesDisjointChars!1279 rules!1712 (t!224078 rules!1712)))))

(assert (= (and d!765736 (not res!1125739)) b!2677641))

(assert (= (and b!2677641 res!1125740) b!2677642))

(declare-fun m!3045051 () Bool)

(assert (=> b!2677641 m!3045051))

(declare-fun m!3045053 () Bool)

(assert (=> b!2677642 m!3045053))

(assert (=> b!2677436 d!765736))

(declare-fun d!765740 () Bool)

(assert (=> d!765740 (= (inv!41825 (tag!5208 (rule!7116 (h!36226 l!4335)))) (= (mod (str.len (value!151726 (tag!5208 (rule!7116 (h!36226 l!4335))))) 2) 0))))

(assert (=> b!2677425 d!765740))

(declare-fun d!765742 () Bool)

(declare-fun res!1125741 () Bool)

(declare-fun e!1687814 () Bool)

(assert (=> d!765742 (=> (not res!1125741) (not e!1687814))))

(assert (=> d!765742 (= res!1125741 (semiInverseModEq!1951 (toChars!6515 (transformation!4706 (rule!7116 (h!36226 l!4335)))) (toValue!6656 (transformation!4706 (rule!7116 (h!36226 l!4335))))))))

(assert (=> d!765742 (= (inv!41829 (transformation!4706 (rule!7116 (h!36226 l!4335)))) e!1687814)))

(declare-fun b!2677643 () Bool)

(assert (=> b!2677643 (= e!1687814 (equivClasses!1852 (toChars!6515 (transformation!4706 (rule!7116 (h!36226 l!4335)))) (toValue!6656 (transformation!4706 (rule!7116 (h!36226 l!4335))))))))

(assert (= (and d!765742 res!1125741) b!2677643))

(declare-fun m!3045055 () Bool)

(assert (=> d!765742 m!3045055))

(declare-fun m!3045057 () Bool)

(assert (=> b!2677643 m!3045057))

(assert (=> b!2677425 d!765742))

(declare-fun b!2677646 () Bool)

(declare-fun e!1687817 () Bool)

(assert (=> b!2677646 (= e!1687817 true)))

(declare-fun b!2677645 () Bool)

(declare-fun e!1687816 () Bool)

(assert (=> b!2677645 (= e!1687816 e!1687817)))

(declare-fun b!2677644 () Bool)

(declare-fun e!1687815 () Bool)

(assert (=> b!2677644 (= e!1687815 e!1687816)))

(assert (=> b!2677448 e!1687815))

(assert (= b!2677645 b!2677646))

(assert (= b!2677644 b!2677645))

(assert (= (and b!2677448 (is-Cons!30805 (t!224078 rules!1712))) b!2677644))

(assert (=> b!2677646 (< (dynLambda!13395 order!17001 (toValue!6656 (transformation!4706 (h!36225 (t!224078 rules!1712))))) (dynLambda!13396 order!17003 lambda!100016))))

(assert (=> b!2677646 (< (dynLambda!13397 order!17005 (toChars!6515 (transformation!4706 (h!36225 (t!224078 rules!1712))))) (dynLambda!13396 order!17003 lambda!100016))))

(declare-fun b!2677651 () Bool)

(declare-fun e!1687820 () Bool)

(declare-fun tp_is_empty!13831 () Bool)

(declare-fun tp!846587 () Bool)

(assert (=> b!2677651 (= e!1687820 (and tp_is_empty!13831 tp!846587))))

(assert (=> b!2677424 (= tp!846540 e!1687820)))

(assert (= (and b!2677424 (is-Cons!30804 (originalCharacters!5472 separatorToken!152))) b!2677651))

(declare-fun b!2677664 () Bool)

(declare-fun e!1687823 () Bool)

(declare-fun tp!846601 () Bool)

(assert (=> b!2677664 (= e!1687823 tp!846601)))

(declare-fun b!2677662 () Bool)

(assert (=> b!2677662 (= e!1687823 tp_is_empty!13831)))

(assert (=> b!2677434 (= tp!846539 e!1687823)))

(declare-fun b!2677663 () Bool)

(declare-fun tp!846598 () Bool)

(declare-fun tp!846599 () Bool)

(assert (=> b!2677663 (= e!1687823 (and tp!846598 tp!846599))))

(declare-fun b!2677665 () Bool)

(declare-fun tp!846602 () Bool)

(declare-fun tp!846600 () Bool)

(assert (=> b!2677665 (= e!1687823 (and tp!846602 tp!846600))))

(assert (= (and b!2677434 (is-ElementMatch!7850 (regex!4706 (rule!7116 separatorToken!152)))) b!2677662))

(assert (= (and b!2677434 (is-Concat!12779 (regex!4706 (rule!7116 separatorToken!152)))) b!2677663))

(assert (= (and b!2677434 (is-Star!7850 (regex!4706 (rule!7116 separatorToken!152)))) b!2677664))

(assert (= (and b!2677434 (is-Union!7850 (regex!4706 (rule!7116 separatorToken!152)))) b!2677665))

(declare-fun b!2677679 () Bool)

(declare-fun b_free!75501 () Bool)

(declare-fun b_next!76205 () Bool)

(assert (=> b!2677679 (= b_free!75501 (not b_next!76205))))

(declare-fun tp!846616 () Bool)

(declare-fun b_and!198089 () Bool)

(assert (=> b!2677679 (= tp!846616 b_and!198089)))

(declare-fun b_free!75503 () Bool)

(declare-fun b_next!76207 () Bool)

(assert (=> b!2677679 (= b_free!75503 (not b_next!76207))))

(declare-fun t!224103 () Bool)

(declare-fun tb!150309 () Bool)

(assert (=> (and b!2677679 (= (toChars!6515 (transformation!4706 (rule!7116 (h!36226 (t!224079 l!4335))))) (toChars!6515 (transformation!4706 (rule!7116 (h!36226 l!4335))))) t!224103) tb!150309))

(declare-fun result!185636 () Bool)

(assert (= result!185636 result!185616))

(assert (=> b!2677530 t!224103))

(declare-fun t!224105 () Bool)

(declare-fun tb!150311 () Bool)

(assert (=> (and b!2677679 (= (toChars!6515 (transformation!4706 (rule!7116 (h!36226 (t!224079 l!4335))))) (toChars!6515 (transformation!4706 (rule!7116 separatorToken!152)))) t!224105) tb!150311))

(declare-fun result!185638 () Bool)

(assert (= result!185638 result!185624))

(assert (=> b!2677603 t!224105))

(declare-fun tp!846615 () Bool)

(declare-fun b_and!198091 () Bool)

(assert (=> b!2677679 (= tp!846615 (and (=> t!224103 result!185636) (=> t!224105 result!185638) b_and!198091))))

(declare-fun tp!846617 () Bool)

(declare-fun e!1687841 () Bool)

(declare-fun b!2677676 () Bool)

(declare-fun e!1687838 () Bool)

(assert (=> b!2677676 (= e!1687838 (and (inv!41828 (h!36226 (t!224079 l!4335))) e!1687841 tp!846617))))

(declare-fun b!2677677 () Bool)

(declare-fun e!1687837 () Bool)

(declare-fun tp!846614 () Bool)

(assert (=> b!2677677 (= e!1687841 (and (inv!21 (value!151727 (h!36226 (t!224079 l!4335)))) e!1687837 tp!846614))))

(declare-fun tp!846613 () Bool)

(declare-fun e!1687839 () Bool)

(declare-fun b!2677678 () Bool)

(assert (=> b!2677678 (= e!1687837 (and tp!846613 (inv!41825 (tag!5208 (rule!7116 (h!36226 (t!224079 l!4335))))) (inv!41829 (transformation!4706 (rule!7116 (h!36226 (t!224079 l!4335))))) e!1687839))))

(assert (=> b!2677428 (= tp!846531 e!1687838)))

(assert (=> b!2677679 (= e!1687839 (and tp!846616 tp!846615))))

(assert (= b!2677678 b!2677679))

(assert (= b!2677677 b!2677678))

(assert (= b!2677676 b!2677677))

(assert (= (and b!2677428 (is-Cons!30806 (t!224079 l!4335))) b!2677676))

(declare-fun m!3045059 () Bool)

(assert (=> b!2677676 m!3045059))

(declare-fun m!3045061 () Bool)

(assert (=> b!2677677 m!3045061))

(declare-fun m!3045063 () Bool)

(assert (=> b!2677678 m!3045063))

(declare-fun m!3045065 () Bool)

(assert (=> b!2677678 m!3045065))

(declare-fun b!2677690 () Bool)

(declare-fun b_free!75505 () Bool)

(declare-fun b_next!76209 () Bool)

(assert (=> b!2677690 (= b_free!75505 (not b_next!76209))))

(declare-fun tp!846627 () Bool)

(declare-fun b_and!198093 () Bool)

(assert (=> b!2677690 (= tp!846627 b_and!198093)))

(declare-fun b_free!75507 () Bool)

(declare-fun b_next!76211 () Bool)

(assert (=> b!2677690 (= b_free!75507 (not b_next!76211))))

(declare-fun t!224107 () Bool)

(declare-fun tb!150313 () Bool)

(assert (=> (and b!2677690 (= (toChars!6515 (transformation!4706 (h!36225 (t!224078 rules!1712)))) (toChars!6515 (transformation!4706 (rule!7116 (h!36226 l!4335))))) t!224107) tb!150313))

(declare-fun result!185642 () Bool)

(assert (= result!185642 result!185616))

(assert (=> b!2677530 t!224107))

(declare-fun tb!150315 () Bool)

(declare-fun t!224109 () Bool)

(assert (=> (and b!2677690 (= (toChars!6515 (transformation!4706 (h!36225 (t!224078 rules!1712)))) (toChars!6515 (transformation!4706 (rule!7116 separatorToken!152)))) t!224109) tb!150315))

(declare-fun result!185644 () Bool)

(assert (= result!185644 result!185624))

(assert (=> b!2677603 t!224109))

(declare-fun b_and!198095 () Bool)

(declare-fun tp!846628 () Bool)

(assert (=> b!2677690 (= tp!846628 (and (=> t!224107 result!185642) (=> t!224109 result!185644) b_and!198095))))

(declare-fun e!1687852 () Bool)

(assert (=> b!2677690 (= e!1687852 (and tp!846627 tp!846628))))

(declare-fun e!1687853 () Bool)

(declare-fun b!2677689 () Bool)

(declare-fun tp!846629 () Bool)

(assert (=> b!2677689 (= e!1687853 (and tp!846629 (inv!41825 (tag!5208 (h!36225 (t!224078 rules!1712)))) (inv!41829 (transformation!4706 (h!36225 (t!224078 rules!1712)))) e!1687852))))

(declare-fun b!2677688 () Bool)

(declare-fun e!1687850 () Bool)

(declare-fun tp!846626 () Bool)

(assert (=> b!2677688 (= e!1687850 (and e!1687853 tp!846626))))

(assert (=> b!2677433 (= tp!846534 e!1687850)))

(assert (= b!2677689 b!2677690))

(assert (= b!2677688 b!2677689))

(assert (= (and b!2677433 (is-Cons!30805 (t!224078 rules!1712))) b!2677688))

(declare-fun m!3045067 () Bool)

(assert (=> b!2677689 m!3045067))

(declare-fun m!3045069 () Bool)

(assert (=> b!2677689 m!3045069))

(declare-fun b!2677691 () Bool)

(declare-fun e!1687854 () Bool)

(declare-fun tp!846630 () Bool)

(assert (=> b!2677691 (= e!1687854 (and tp_is_empty!13831 tp!846630))))

(assert (=> b!2677432 (= tp!846536 e!1687854)))

(assert (= (and b!2677432 (is-Cons!30804 (originalCharacters!5472 (h!36226 l!4335)))) b!2677691))

(declare-fun b!2677694 () Bool)

(declare-fun e!1687855 () Bool)

(declare-fun tp!846634 () Bool)

(assert (=> b!2677694 (= e!1687855 tp!846634)))

(declare-fun b!2677692 () Bool)

(assert (=> b!2677692 (= e!1687855 tp_is_empty!13831)))

(assert (=> b!2677426 (= tp!846533 e!1687855)))

(declare-fun b!2677693 () Bool)

(declare-fun tp!846631 () Bool)

(declare-fun tp!846632 () Bool)

(assert (=> b!2677693 (= e!1687855 (and tp!846631 tp!846632))))

(declare-fun b!2677695 () Bool)

(declare-fun tp!846635 () Bool)

(declare-fun tp!846633 () Bool)

(assert (=> b!2677695 (= e!1687855 (and tp!846635 tp!846633))))

(assert (= (and b!2677426 (is-ElementMatch!7850 (regex!4706 (h!36225 rules!1712)))) b!2677692))

(assert (= (and b!2677426 (is-Concat!12779 (regex!4706 (h!36225 rules!1712)))) b!2677693))

(assert (= (and b!2677426 (is-Star!7850 (regex!4706 (h!36225 rules!1712)))) b!2677694))

(assert (= (and b!2677426 (is-Union!7850 (regex!4706 (h!36225 rules!1712)))) b!2677695))

(declare-fun b!2677698 () Bool)

(declare-fun e!1687856 () Bool)

(declare-fun tp!846639 () Bool)

(assert (=> b!2677698 (= e!1687856 tp!846639)))

(declare-fun b!2677696 () Bool)

(assert (=> b!2677696 (= e!1687856 tp_is_empty!13831)))

(assert (=> b!2677425 (= tp!846541 e!1687856)))

(declare-fun b!2677697 () Bool)

(declare-fun tp!846636 () Bool)

(declare-fun tp!846637 () Bool)

(assert (=> b!2677697 (= e!1687856 (and tp!846636 tp!846637))))

(declare-fun b!2677699 () Bool)

(declare-fun tp!846640 () Bool)

(declare-fun tp!846638 () Bool)

(assert (=> b!2677699 (= e!1687856 (and tp!846640 tp!846638))))

(assert (= (and b!2677425 (is-ElementMatch!7850 (regex!4706 (rule!7116 (h!36226 l!4335))))) b!2677696))

(assert (= (and b!2677425 (is-Concat!12779 (regex!4706 (rule!7116 (h!36226 l!4335))))) b!2677697))

(assert (= (and b!2677425 (is-Star!7850 (regex!4706 (rule!7116 (h!36226 l!4335))))) b!2677698))

(assert (= (and b!2677425 (is-Union!7850 (regex!4706 (rule!7116 (h!36226 l!4335))))) b!2677699))

(declare-fun b_lambda!81749 () Bool)

(assert (= b_lambda!81741 (or b!2677421 b_lambda!81749)))

(declare-fun bs!479949 () Bool)

(declare-fun d!765744 () Bool)

(assert (= bs!479949 (and d!765744 b!2677421)))

(assert (=> bs!479949 (= (dynLambda!13402 lambda!100016 (h!36226 l!4335)) (rulesProduceIndividualToken!2015 thiss!14116 rules!1712 (h!36226 l!4335)))))

(assert (=> bs!479949 m!3045007))

(assert (=> d!765704 d!765744))

(declare-fun b_lambda!81751 () Bool)

(assert (= b_lambda!81739 (or (and b!2677435 b_free!75487) (and b!2677431 b_free!75479 (= (toChars!6515 (transformation!4706 (rule!7116 separatorToken!152))) (toChars!6515 (transformation!4706 (rule!7116 (h!36226 l!4335)))))) (and b!2677690 b_free!75507 (= (toChars!6515 (transformation!4706 (h!36225 (t!224078 rules!1712)))) (toChars!6515 (transformation!4706 (rule!7116 (h!36226 l!4335)))))) (and b!2677679 b_free!75503 (= (toChars!6515 (transformation!4706 (rule!7116 (h!36226 (t!224079 l!4335))))) (toChars!6515 (transformation!4706 (rule!7116 (h!36226 l!4335)))))) (and b!2677439 b_free!75483 (= (toChars!6515 (transformation!4706 (h!36225 rules!1712))) (toChars!6515 (transformation!4706 (rule!7116 (h!36226 l!4335)))))) b_lambda!81751)))

(declare-fun b_lambda!81753 () Bool)

(assert (= b_lambda!81745 (or (and b!2677690 b_free!75507 (= (toChars!6515 (transformation!4706 (h!36225 (t!224078 rules!1712)))) (toChars!6515 (transformation!4706 (rule!7116 separatorToken!152))))) (and b!2677435 b_free!75487 (= (toChars!6515 (transformation!4706 (rule!7116 (h!36226 l!4335)))) (toChars!6515 (transformation!4706 (rule!7116 separatorToken!152))))) (and b!2677679 b_free!75503 (= (toChars!6515 (transformation!4706 (rule!7116 (h!36226 (t!224079 l!4335))))) (toChars!6515 (transformation!4706 (rule!7116 separatorToken!152))))) (and b!2677439 b_free!75483 (= (toChars!6515 (transformation!4706 (h!36225 rules!1712))) (toChars!6515 (transformation!4706 (rule!7116 separatorToken!152))))) (and b!2677431 b_free!75479) b_lambda!81753)))

(declare-fun b_lambda!81755 () Bool)

(assert (= b_lambda!81743 (or b!2677430 b_lambda!81755)))

(declare-fun bs!479950 () Bool)

(declare-fun d!765746 () Bool)

(assert (= bs!479950 (and d!765746 b!2677430)))

(assert (=> bs!479950 (= (dynLambda!13402 lambda!100015 (h!36226 l!4335)) (not (isSeparator!4706 (rule!7116 (h!36226 l!4335)))))))

(assert (=> b!2677589 d!765746))

(push 1)

(assert (not bs!479949))

(assert (not b!2677688))

(assert (not b_next!76209))

(assert b_and!198091)

(assert (not b!2677664))

(assert (not b!2677580))

(assert (not b!2677536))

(assert (not b!2677613))

(assert (not b!2677644))

(assert (not d!765690))

(assert (not b!2677630))

(assert (not b_lambda!81749))

(assert (not d!765726))

(assert (not b!2677694))

(assert (not b!2677604))

(assert (not b!2677557))

(assert (not b!2677665))

(assert (not b!2677695))

(assert (not d!765742))

(assert (not tb!150297))

(assert (not d!765724))

(assert (not d!765722))

(assert (not d!765734))

(assert (not b_next!76205))

(assert (not b!2677678))

(assert b_and!198087)

(assert (not b!2677663))

(assert (not b_next!76211))

(assert (not b!2677545))

(assert b_and!198053)

(assert b_and!198083)

(assert (not b!2677531))

(assert (not b!2677691))

(assert (not b!2677693))

(assert b_and!198093)

(assert (not b!2677631))

(assert (not tb!150303))

(assert b_and!198057)

(assert (not d!765692))

(assert (not b_next!76189))

(assert (not b!2677559))

(assert (not b!2677568))

(assert b_and!198085)

(assert (not b!2677590))

(assert (not b!2677632))

(assert (not b_next!76181))

(assert (not d!765708))

(assert (not b_lambda!81751))

(assert (not b!2677602))

(assert (not b_lambda!81755))

(assert b_and!198061)

(assert (not b!2677560))

(assert (not b_next!76183))

(assert (not b!2677697))

(assert (not b!2677605))

(assert (not b_next!76191))

(assert (not b!2677642))

(assert (not b!2677530))

(assert (not b!2677698))

(assert (not b!2677594))

(assert (not b_next!76207))

(assert (not b!2677677))

(assert (not b!2677603))

(assert (not b!2677689))

(assert tp_is_empty!13831)

(assert b_and!198089)

(assert (not b!2677676))

(assert (not b!2677651))

(assert (not d!765730))

(assert (not d!765704))

(assert (not b_next!76185))

(assert (not b!2677614))

(assert (not b!2677699))

(assert (not b!2677641))

(assert (not b_lambda!81753))

(assert (not b!2677636))

(assert (not b!2677615))

(assert (not b!2677574))

(assert (not b!2677597))

(assert (not b!2677596))

(assert b_and!198095)

(assert (not b!2677643))

(assert (not b_next!76187))

(assert (not b!2677566))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!76209))

(assert b_and!198091)

(assert b_and!198093)

(assert b_and!198085)

(assert (not b_next!76181))

(assert b_and!198061)

(assert (not b_next!76183))

(assert (not b_next!76191))

(assert (not b_next!76207))

(assert b_and!198089)

(assert (not b_next!76185))

(assert b_and!198095)

(assert (not b_next!76187))

(assert (not b_next!76205))

(assert b_and!198087)

(assert (not b_next!76211))

(assert b_and!198053)

(assert b_and!198083)

(assert b_and!198057)

(assert (not b_next!76189))

(check-sat)

(pop 1)

