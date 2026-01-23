; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!112200 () Bool)

(assert start!112200)

(declare-fun b!1284505 () Bool)

(declare-fun b_free!30079 () Bool)

(declare-fun b_next!30783 () Bool)

(assert (=> b!1284505 (= b_free!30079 (not b_next!30783))))

(declare-fun tp!373751 () Bool)

(declare-fun b_and!85223 () Bool)

(assert (=> b!1284505 (= tp!373751 b_and!85223)))

(declare-fun b_free!30081 () Bool)

(declare-fun b_next!30785 () Bool)

(assert (=> b!1284505 (= b_free!30081 (not b_next!30785))))

(declare-fun tp!373754 () Bool)

(declare-fun b_and!85225 () Bool)

(assert (=> b!1284505 (= tp!373754 b_and!85225)))

(declare-fun b!1284514 () Bool)

(declare-fun b_free!30083 () Bool)

(declare-fun b_next!30787 () Bool)

(assert (=> b!1284514 (= b_free!30083 (not b_next!30787))))

(declare-fun tp!373752 () Bool)

(declare-fun b_and!85227 () Bool)

(assert (=> b!1284514 (= tp!373752 b_and!85227)))

(declare-fun b_free!30085 () Bool)

(declare-fun b_next!30789 () Bool)

(assert (=> b!1284514 (= b_free!30085 (not b_next!30789))))

(declare-fun tp!373745 () Bool)

(declare-fun b_and!85229 () Bool)

(assert (=> b!1284514 (= tp!373745 b_and!85229)))

(declare-fun b!1284503 () Bool)

(declare-fun b_free!30087 () Bool)

(declare-fun b_next!30791 () Bool)

(assert (=> b!1284503 (= b_free!30087 (not b_next!30791))))

(declare-fun tp!373749 () Bool)

(declare-fun b_and!85231 () Bool)

(assert (=> b!1284503 (= tp!373749 b_and!85231)))

(declare-fun b_free!30089 () Bool)

(declare-fun b_next!30793 () Bool)

(assert (=> b!1284503 (= b_free!30089 (not b_next!30793))))

(declare-fun tp!373746 () Bool)

(declare-fun b_and!85233 () Bool)

(assert (=> b!1284503 (= tp!373746 b_and!85233)))

(declare-fun b!1284500 () Bool)

(declare-fun e!823708 () Bool)

(declare-fun tp!373756 () Bool)

(declare-fun e!823705 () Bool)

(declare-datatypes ((List!12833 0))(
  ( (Nil!12767) (Cons!12767 (h!18168 (_ BitVec 16)) (t!116694 List!12833)) )
))
(declare-datatypes ((TokenValue!2284 0))(
  ( (FloatLiteralValue!4568 (text!16433 List!12833)) (TokenValueExt!2283 (__x!8397 Int)) (Broken!11420 (value!72137 List!12833)) (Object!2349) (End!2284) (Def!2284) (Underscore!2284) (Match!2284) (Else!2284) (Error!2284) (Case!2284) (If!2284) (Extends!2284) (Abstract!2284) (Class!2284) (Val!2284) (DelimiterValue!4568 (del!2344 List!12833)) (KeywordValue!2290 (value!72138 List!12833)) (CommentValue!4568 (value!72139 List!12833)) (WhitespaceValue!4568 (value!72140 List!12833)) (IndentationValue!2284 (value!72141 List!12833)) (String!15657) (Int32!2284) (Broken!11421 (value!72142 List!12833)) (Boolean!2285) (Unit!18984) (OperatorValue!2287 (op!2344 List!12833)) (IdentifierValue!4568 (value!72143 List!12833)) (IdentifierValue!4569 (value!72144 List!12833)) (WhitespaceValue!4569 (value!72145 List!12833)) (True!4568) (False!4568) (Broken!11422 (value!72146 List!12833)) (Broken!11423 (value!72147 List!12833)) (True!4569) (RightBrace!2284) (RightBracket!2284) (Colon!2284) (Null!2284) (Comma!2284) (LeftBracket!2284) (False!4569) (LeftBrace!2284) (ImaginaryLiteralValue!2284 (text!16434 List!12833)) (StringLiteralValue!6852 (value!72148 List!12833)) (EOFValue!2284 (value!72149 List!12833)) (IdentValue!2284 (value!72150 List!12833)) (DelimiterValue!4569 (value!72151 List!12833)) (DedentValue!2284 (value!72152 List!12833)) (NewLineValue!2284 (value!72153 List!12833)) (IntegerValue!6852 (value!72154 (_ BitVec 32)) (text!16435 List!12833)) (IntegerValue!6853 (value!72155 Int) (text!16436 List!12833)) (Times!2284) (Or!2284) (Equal!2284) (Minus!2284) (Broken!11424 (value!72156 List!12833)) (And!2284) (Div!2284) (LessEqual!2284) (Mod!2284) (Concat!5792) (Not!2284) (Plus!2284) (SpaceValue!2284 (value!72157 List!12833)) (IntegerValue!6854 (value!72158 Int) (text!16437 List!12833)) (StringLiteralValue!6853 (text!16438 List!12833)) (FloatLiteralValue!4569 (text!16439 List!12833)) (BytesLiteralValue!2284 (value!72159 List!12833)) (CommentValue!4569 (value!72160 List!12833)) (StringLiteralValue!6854 (value!72161 List!12833)) (ErrorTokenValue!2284 (msg!2345 List!12833)) )
))
(declare-datatypes ((C!7306 0))(
  ( (C!7307 (val!4213 Int)) )
))
(declare-datatypes ((List!12834 0))(
  ( (Nil!12768) (Cons!12768 (h!18169 C!7306) (t!116695 List!12834)) )
))
(declare-datatypes ((IArray!8397 0))(
  ( (IArray!8398 (innerList!4256 List!12834)) )
))
(declare-datatypes ((Conc!4196 0))(
  ( (Node!4196 (left!11011 Conc!4196) (right!11341 Conc!4196) (csize!8622 Int) (cheight!4407 Int)) (Leaf!6490 (xs!6907 IArray!8397) (csize!8623 Int)) (Empty!4196) )
))
(declare-datatypes ((BalanceConc!8332 0))(
  ( (BalanceConc!8333 (c!211513 Conc!4196)) )
))
(declare-datatypes ((Regex!3508 0))(
  ( (ElementMatch!3508 (c!211514 C!7306)) (Concat!5793 (regOne!7528 Regex!3508) (regTwo!7528 Regex!3508)) (EmptyExpr!3508) (Star!3508 (reg!3837 Regex!3508)) (EmptyLang!3508) (Union!3508 (regOne!7529 Regex!3508) (regTwo!7529 Regex!3508)) )
))
(declare-datatypes ((String!15658 0))(
  ( (String!15659 (value!72162 String)) )
))
(declare-datatypes ((TokenValueInjection!4228 0))(
  ( (TokenValueInjection!4229 (toValue!3373 Int) (toChars!3232 Int)) )
))
(declare-datatypes ((Rule!4188 0))(
  ( (Rule!4189 (regex!2194 Regex!3508) (tag!2456 String!15658) (isSeparator!2194 Bool) (transformation!2194 TokenValueInjection!4228)) )
))
(declare-datatypes ((List!12835 0))(
  ( (Nil!12769) (Cons!12769 (h!18170 Rule!4188) (t!116696 List!12835)) )
))
(declare-fun rules!2550 () List!12835)

(declare-fun inv!17167 (String!15658) Bool)

(declare-fun inv!17170 (TokenValueInjection!4228) Bool)

(assert (=> b!1284500 (= e!823705 (and tp!373756 (inv!17167 (tag!2456 (h!18170 rules!2550))) (inv!17170 (transformation!2194 (h!18170 rules!2550))) e!823708))))

(declare-fun b!1284501 () Bool)

(declare-fun res!576034 () Bool)

(declare-fun e!823714 () Bool)

(assert (=> b!1284501 (=> (not res!576034) (not e!823714))))

(declare-datatypes ((LexerInterface!1889 0))(
  ( (LexerInterfaceExt!1886 (__x!8398 Int)) (Lexer!1887) )
))
(declare-fun thiss!19762 () LexerInterface!1889)

(declare-datatypes ((Token!4050 0))(
  ( (Token!4051 (value!72163 TokenValue!2284) (rule!3933 Rule!4188) (size!10398 Int) (originalCharacters!3056 List!12834)) )
))
(declare-fun t2!34 () Token!4050)

(declare-fun rulesProduceIndividualToken!858 (LexerInterface!1889 List!12835 Token!4050) Bool)

(assert (=> b!1284501 (= res!576034 (rulesProduceIndividualToken!858 thiss!19762 rules!2550 t2!34))))

(declare-fun b!1284502 () Bool)

(declare-fun e!823703 () Bool)

(declare-fun tp!373748 () Bool)

(declare-fun e!823710 () Bool)

(assert (=> b!1284502 (= e!823703 (and tp!373748 (inv!17167 (tag!2456 (rule!3933 t2!34))) (inv!17170 (transformation!2194 (rule!3933 t2!34))) e!823710))))

(assert (=> b!1284503 (= e!823708 (and tp!373749 tp!373746))))

(declare-fun b!1284504 () Bool)

(declare-fun res!576032 () Bool)

(assert (=> b!1284504 (=> (not res!576032) (not e!823714))))

(declare-fun t1!34 () Token!4050)

(assert (=> b!1284504 (= res!576032 (not (= (isSeparator!2194 (rule!3933 t1!34)) (isSeparator!2194 (rule!3933 t2!34)))))))

(assert (=> b!1284505 (= e!823710 (and tp!373751 tp!373754))))

(declare-fun tp!373747 () Bool)

(declare-fun b!1284506 () Bool)

(declare-fun e!823711 () Bool)

(declare-fun e!823712 () Bool)

(assert (=> b!1284506 (= e!823711 (and tp!373747 (inv!17167 (tag!2456 (rule!3933 t1!34))) (inv!17170 (transformation!2194 (rule!3933 t1!34))) e!823712))))

(declare-fun b!1284507 () Bool)

(declare-fun e!823704 () Bool)

(declare-fun tp!373750 () Bool)

(assert (=> b!1284507 (= e!823704 (and e!823705 tp!373750))))

(declare-fun b!1284508 () Bool)

(assert (=> b!1284508 (= e!823714 false)))

(declare-fun lt!423509 () Bool)

(declare-fun sepAndNonSepRulesDisjointChars!567 (List!12835 List!12835) Bool)

(assert (=> b!1284508 (= lt!423509 (sepAndNonSepRulesDisjointChars!567 rules!2550 rules!2550))))

(declare-fun b!1284509 () Bool)

(declare-fun e!823701 () Bool)

(declare-fun tp!373753 () Bool)

(declare-fun inv!21 (TokenValue!2284) Bool)

(assert (=> b!1284509 (= e!823701 (and (inv!21 (value!72163 t1!34)) e!823711 tp!373753))))

(declare-fun tp!373755 () Bool)

(declare-fun b!1284510 () Bool)

(declare-fun e!823706 () Bool)

(assert (=> b!1284510 (= e!823706 (and (inv!21 (value!72163 t2!34)) e!823703 tp!373755))))

(declare-fun res!576033 () Bool)

(assert (=> start!112200 (=> (not res!576033) (not e!823714))))

(assert (=> start!112200 (= res!576033 (is-Lexer!1887 thiss!19762))))

(assert (=> start!112200 e!823714))

(assert (=> start!112200 true))

(assert (=> start!112200 e!823704))

(declare-fun inv!17171 (Token!4050) Bool)

(assert (=> start!112200 (and (inv!17171 t1!34) e!823701)))

(assert (=> start!112200 (and (inv!17171 t2!34) e!823706)))

(declare-fun b!1284511 () Bool)

(declare-fun res!576035 () Bool)

(assert (=> b!1284511 (=> (not res!576035) (not e!823714))))

(declare-fun size!10399 (BalanceConc!8332) Int)

(declare-fun charsOf!1166 (Token!4050) BalanceConc!8332)

(assert (=> b!1284511 (= res!576035 (> (size!10399 (charsOf!1166 t2!34)) 0))))

(declare-fun b!1284512 () Bool)

(declare-fun res!576031 () Bool)

(assert (=> b!1284512 (=> (not res!576031) (not e!823714))))

(assert (=> b!1284512 (= res!576031 (rulesProduceIndividualToken!858 thiss!19762 rules!2550 t1!34))))

(declare-fun b!1284513 () Bool)

(declare-fun res!576030 () Bool)

(assert (=> b!1284513 (=> (not res!576030) (not e!823714))))

(declare-fun isEmpty!7573 (List!12835) Bool)

(assert (=> b!1284513 (= res!576030 (not (isEmpty!7573 rules!2550)))))

(assert (=> b!1284514 (= e!823712 (and tp!373752 tp!373745))))

(declare-fun b!1284515 () Bool)

(declare-fun res!576036 () Bool)

(assert (=> b!1284515 (=> (not res!576036) (not e!823714))))

(declare-fun rulesInvariant!1759 (LexerInterface!1889 List!12835) Bool)

(assert (=> b!1284515 (= res!576036 (rulesInvariant!1759 thiss!19762 rules!2550))))

(assert (= (and start!112200 res!576033) b!1284513))

(assert (= (and b!1284513 res!576030) b!1284515))

(assert (= (and b!1284515 res!576036) b!1284512))

(assert (= (and b!1284512 res!576031) b!1284501))

(assert (= (and b!1284501 res!576034) b!1284504))

(assert (= (and b!1284504 res!576032) b!1284511))

(assert (= (and b!1284511 res!576035) b!1284508))

(assert (= b!1284500 b!1284503))

(assert (= b!1284507 b!1284500))

(assert (= (and start!112200 (is-Cons!12769 rules!2550)) b!1284507))

(assert (= b!1284506 b!1284514))

(assert (= b!1284509 b!1284506))

(assert (= start!112200 b!1284509))

(assert (= b!1284502 b!1284505))

(assert (= b!1284510 b!1284502))

(assert (= start!112200 b!1284510))

(declare-fun m!1434683 () Bool)

(assert (=> b!1284510 m!1434683))

(declare-fun m!1434685 () Bool)

(assert (=> b!1284502 m!1434685))

(declare-fun m!1434687 () Bool)

(assert (=> b!1284502 m!1434687))

(declare-fun m!1434689 () Bool)

(assert (=> b!1284513 m!1434689))

(declare-fun m!1434691 () Bool)

(assert (=> b!1284500 m!1434691))

(declare-fun m!1434693 () Bool)

(assert (=> b!1284500 m!1434693))

(declare-fun m!1434695 () Bool)

(assert (=> b!1284508 m!1434695))

(declare-fun m!1434697 () Bool)

(assert (=> b!1284511 m!1434697))

(assert (=> b!1284511 m!1434697))

(declare-fun m!1434699 () Bool)

(assert (=> b!1284511 m!1434699))

(declare-fun m!1434701 () Bool)

(assert (=> b!1284501 m!1434701))

(declare-fun m!1434703 () Bool)

(assert (=> b!1284515 m!1434703))

(declare-fun m!1434705 () Bool)

(assert (=> b!1284512 m!1434705))

(declare-fun m!1434707 () Bool)

(assert (=> b!1284506 m!1434707))

(declare-fun m!1434709 () Bool)

(assert (=> b!1284506 m!1434709))

(declare-fun m!1434711 () Bool)

(assert (=> start!112200 m!1434711))

(declare-fun m!1434713 () Bool)

(assert (=> start!112200 m!1434713))

(declare-fun m!1434715 () Bool)

(assert (=> b!1284509 m!1434715))

(push 1)

(assert (not b!1284515))

(assert b_and!85233)

(assert b_and!85231)

(assert (not b!1284501))

(assert (not b!1284509))

(assert (not b!1284508))

(assert (not b!1284507))

(assert (not b_next!30791))

(assert (not b!1284512))

(assert (not b!1284502))

(assert (not b_next!30789))

(assert b_and!85227)

(assert (not b!1284511))

(assert b_and!85225)

(assert (not b_next!30793))

(assert (not b_next!30785))

(assert (not b!1284506))

(assert (not b!1284500))

(assert (not b!1284510))

(assert (not start!112200))

(assert (not b!1284513))

(assert b_and!85229)

(assert (not b_next!30783))

(assert (not b_next!30787))

(assert b_and!85223)

(check-sat)

(pop 1)

(push 1)

(assert b_and!85233)

(assert b_and!85231)

(assert (not b_next!30785))

(assert (not b_next!30791))

(assert (not b_next!30789))

(assert b_and!85227)

(assert b_and!85229)

(assert b_and!85225)

(assert (not b_next!30793))

(assert (not b_next!30783))

(assert (not b_next!30787))

(assert b_and!85223)

(check-sat)

(pop 1)

