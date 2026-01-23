; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!146812 () Bool)

(assert start!146812)

(declare-fun b!1573404 () Bool)

(declare-fun b_free!42175 () Bool)

(declare-fun b_next!42879 () Bool)

(assert (=> b!1573404 (= b_free!42175 (not b_next!42879))))

(declare-fun tp!462882 () Bool)

(declare-fun b_and!109981 () Bool)

(assert (=> b!1573404 (= tp!462882 b_and!109981)))

(declare-fun b_free!42177 () Bool)

(declare-fun b_next!42881 () Bool)

(assert (=> b!1573404 (= b_free!42177 (not b_next!42881))))

(declare-fun tp!462885 () Bool)

(declare-fun b_and!109983 () Bool)

(assert (=> b!1573404 (= tp!462885 b_and!109983)))

(declare-fun b!1573402 () Bool)

(declare-fun b_free!42179 () Bool)

(declare-fun b_next!42883 () Bool)

(assert (=> b!1573402 (= b_free!42179 (not b_next!42883))))

(declare-fun tp!462883 () Bool)

(declare-fun b_and!109985 () Bool)

(assert (=> b!1573402 (= tp!462883 b_and!109985)))

(declare-fun b_free!42181 () Bool)

(declare-fun b_next!42885 () Bool)

(assert (=> b!1573402 (= b_free!42181 (not b_next!42885))))

(declare-fun tp!462886 () Bool)

(declare-fun b_and!109987 () Bool)

(assert (=> b!1573402 (= tp!462886 b_and!109987)))

(declare-fun b!1573397 () Bool)

(declare-fun e!1010377 () Bool)

(declare-fun e!1010387 () Bool)

(declare-fun tp!462881 () Bool)

(assert (=> b!1573397 (= e!1010377 (and e!1010387 tp!462881))))

(declare-fun b!1573398 () Bool)

(declare-fun e!1010384 () Bool)

(declare-datatypes ((List!17235 0))(
  ( (Nil!17165) (Cons!17165 (h!22566 (_ BitVec 16)) (t!143138 List!17235)) )
))
(declare-datatypes ((TokenValue!3104 0))(
  ( (FloatLiteralValue!6208 (text!22173 List!17235)) (TokenValueExt!3103 (__x!11510 Int)) (Broken!15520 (value!95547 List!17235)) (Object!3173) (End!3104) (Def!3104) (Underscore!3104) (Match!3104) (Else!3104) (Error!3104) (Case!3104) (If!3104) (Extends!3104) (Abstract!3104) (Class!3104) (Val!3104) (DelimiterValue!6208 (del!3164 List!17235)) (KeywordValue!3110 (value!95548 List!17235)) (CommentValue!6208 (value!95549 List!17235)) (WhitespaceValue!6208 (value!95550 List!17235)) (IndentationValue!3104 (value!95551 List!17235)) (String!19853) (Int32!3104) (Broken!15521 (value!95552 List!17235)) (Boolean!3105) (Unit!26553) (OperatorValue!3107 (op!3164 List!17235)) (IdentifierValue!6208 (value!95553 List!17235)) (IdentifierValue!6209 (value!95554 List!17235)) (WhitespaceValue!6209 (value!95555 List!17235)) (True!6208) (False!6208) (Broken!15522 (value!95556 List!17235)) (Broken!15523 (value!95557 List!17235)) (True!6209) (RightBrace!3104) (RightBracket!3104) (Colon!3104) (Null!3104) (Comma!3104) (LeftBracket!3104) (False!6209) (LeftBrace!3104) (ImaginaryLiteralValue!3104 (text!22174 List!17235)) (StringLiteralValue!9312 (value!95558 List!17235)) (EOFValue!3104 (value!95559 List!17235)) (IdentValue!3104 (value!95560 List!17235)) (DelimiterValue!6209 (value!95561 List!17235)) (DedentValue!3104 (value!95562 List!17235)) (NewLineValue!3104 (value!95563 List!17235)) (IntegerValue!9312 (value!95564 (_ BitVec 32)) (text!22175 List!17235)) (IntegerValue!9313 (value!95565 Int) (text!22176 List!17235)) (Times!3104) (Or!3104) (Equal!3104) (Minus!3104) (Broken!15524 (value!95566 List!17235)) (And!3104) (Div!3104) (LessEqual!3104) (Mod!3104) (Concat!7446) (Not!3104) (Plus!3104) (SpaceValue!3104 (value!95567 List!17235)) (IntegerValue!9314 (value!95568 Int) (text!22177 List!17235)) (StringLiteralValue!9313 (text!22178 List!17235)) (FloatLiteralValue!6209 (text!22179 List!17235)) (BytesLiteralValue!3104 (value!95569 List!17235)) (CommentValue!6209 (value!95570 List!17235)) (StringLiteralValue!9314 (value!95571 List!17235)) (ErrorTokenValue!3104 (msg!3165 List!17235)) )
))
(declare-datatypes ((C!8858 0))(
  ( (C!8859 (val!5025 Int)) )
))
(declare-datatypes ((List!17236 0))(
  ( (Nil!17166) (Cons!17166 (h!22567 C!8858) (t!143139 List!17236)) )
))
(declare-datatypes ((IArray!11357 0))(
  ( (IArray!11358 (innerList!5736 List!17236)) )
))
(declare-datatypes ((Conc!5676 0))(
  ( (Node!5676 (left!13889 Conc!5676) (right!14219 Conc!5676) (csize!11582 Int) (cheight!5887 Int)) (Leaf!8404 (xs!8480 IArray!11357) (csize!11583 Int)) (Empty!5676) )
))
(declare-datatypes ((BalanceConc!11296 0))(
  ( (BalanceConc!11297 (c!255179 Conc!5676)) )
))
(declare-datatypes ((Regex!4342 0))(
  ( (ElementMatch!4342 (c!255180 C!8858)) (Concat!7447 (regOne!9196 Regex!4342) (regTwo!9196 Regex!4342)) (EmptyExpr!4342) (Star!4342 (reg!4671 Regex!4342)) (EmptyLang!4342) (Union!4342 (regOne!9197 Regex!4342) (regTwo!9197 Regex!4342)) )
))
(declare-datatypes ((String!19854 0))(
  ( (String!19855 (value!95572 String)) )
))
(declare-datatypes ((TokenValueInjection!5868 0))(
  ( (TokenValueInjection!5869 (toValue!4409 Int) (toChars!4268 Int)) )
))
(declare-datatypes ((Rule!5828 0))(
  ( (Rule!5829 (regex!3014 Regex!4342) (tag!3280 String!19854) (isSeparator!3014 Bool) (transformation!3014 TokenValueInjection!5868)) )
))
(declare-datatypes ((List!17237 0))(
  ( (Nil!17167) (Cons!17167 (h!22568 Rule!5828) (t!143140 List!17237)) )
))
(declare-fun rules!1846 () List!17237)

(declare-fun tp!462884 () Bool)

(declare-fun inv!22578 (String!19854) Bool)

(declare-fun inv!22581 (TokenValueInjection!5868) Bool)

(assert (=> b!1573398 (= e!1010387 (and tp!462884 (inv!22578 (tag!3280 (h!22568 rules!1846))) (inv!22581 (transformation!3014 (h!22568 rules!1846))) e!1010384))))

(declare-fun b!1573400 () Bool)

(declare-fun e!1010386 () Bool)

(assert (=> b!1573400 (= e!1010386 false)))

(declare-datatypes ((Token!5594 0))(
  ( (Token!5595 (value!95573 TokenValue!3104) (rule!4806 Rule!5828) (size!13867 Int) (originalCharacters!3828 List!17236)) )
))
(declare-datatypes ((List!17238 0))(
  ( (Nil!17168) (Cons!17168 (h!22569 Token!5594) (t!143141 List!17238)) )
))
(declare-datatypes ((IArray!11359 0))(
  ( (IArray!11360 (innerList!5737 List!17238)) )
))
(declare-datatypes ((Conc!5677 0))(
  ( (Node!5677 (left!13890 Conc!5677) (right!14220 Conc!5677) (csize!11584 Int) (cheight!5888 Int)) (Leaf!8405 (xs!8481 IArray!11359) (csize!11585 Int)) (Empty!5677) )
))
(declare-datatypes ((BalanceConc!11298 0))(
  ( (BalanceConc!11299 (c!255181 Conc!5677)) )
))
(declare-fun lt!546917 () BalanceConc!11298)

(declare-fun tokens!457 () List!17238)

(declare-fun seqFromList!1811 (List!17238) BalanceConc!11298)

(assert (=> b!1573400 (= lt!546917 (seqFromList!1811 (t!143141 tokens!457)))))

(declare-fun lt!546918 () BalanceConc!11296)

(declare-datatypes ((LexerInterface!2643 0))(
  ( (LexerInterfaceExt!2640 (__x!11511 Int)) (Lexer!2641) )
))
(declare-fun thiss!17113 () LexerInterface!2643)

(declare-fun print!1174 (LexerInterface!2643 BalanceConc!11298) BalanceConc!11296)

(assert (=> b!1573400 (= lt!546918 (print!1174 thiss!17113 (seqFromList!1811 tokens!457)))))

(declare-fun b!1573401 () Bool)

(declare-fun res!701229 () Bool)

(assert (=> b!1573401 (=> (not res!701229) (not e!1010386))))

(declare-fun isEmpty!10264 (List!17237) Bool)

(assert (=> b!1573401 (= res!701229 (not (isEmpty!10264 rules!1846)))))

(declare-fun e!1010382 () Bool)

(assert (=> b!1573402 (= e!1010382 (and tp!462883 tp!462886))))

(declare-fun b!1573403 () Bool)

(declare-fun res!701233 () Bool)

(assert (=> b!1573403 (=> (not res!701233) (not e!1010386))))

(assert (=> b!1573403 (= res!701233 (and (not (is-Nil!17168 tokens!457)) (not (is-Nil!17168 (t!143141 tokens!457)))))))

(assert (=> b!1573404 (= e!1010384 (and tp!462882 tp!462885))))

(declare-fun b!1573405 () Bool)

(declare-fun res!701232 () Bool)

(assert (=> b!1573405 (=> (not res!701232) (not e!1010386))))

(declare-fun rulesInvariant!2312 (LexerInterface!2643 List!17237) Bool)

(assert (=> b!1573405 (= res!701232 (rulesInvariant!2312 thiss!17113 rules!1846))))

(declare-fun b!1573399 () Bool)

(declare-fun res!701231 () Bool)

(assert (=> b!1573399 (=> (not res!701231) (not e!1010386))))

(declare-fun tokensListTwoByTwoPredicateSeparableList!336 (LexerInterface!2643 List!17238 List!17237) Bool)

(assert (=> b!1573399 (= res!701231 (tokensListTwoByTwoPredicateSeparableList!336 thiss!17113 tokens!457 rules!1846))))

(declare-fun res!701234 () Bool)

(assert (=> start!146812 (=> (not res!701234) (not e!1010386))))

(assert (=> start!146812 (= res!701234 (is-Lexer!2641 thiss!17113))))

(assert (=> start!146812 e!1010386))

(assert (=> start!146812 true))

(assert (=> start!146812 e!1010377))

(declare-fun e!1010380 () Bool)

(assert (=> start!146812 e!1010380))

(declare-fun e!1010379 () Bool)

(declare-fun tp!462889 () Bool)

(declare-fun e!1010381 () Bool)

(declare-fun b!1573406 () Bool)

(declare-fun inv!21 (TokenValue!3104) Bool)

(assert (=> b!1573406 (= e!1010381 (and (inv!21 (value!95573 (h!22569 tokens!457))) e!1010379 tp!462889))))

(declare-fun b!1573407 () Bool)

(declare-fun tp!462888 () Bool)

(assert (=> b!1573407 (= e!1010379 (and tp!462888 (inv!22578 (tag!3280 (rule!4806 (h!22569 tokens!457)))) (inv!22581 (transformation!3014 (rule!4806 (h!22569 tokens!457)))) e!1010382))))

(declare-fun b!1573408 () Bool)

(declare-fun tp!462887 () Bool)

(declare-fun inv!22582 (Token!5594) Bool)

(assert (=> b!1573408 (= e!1010380 (and (inv!22582 (h!22569 tokens!457)) e!1010381 tp!462887))))

(declare-fun b!1573409 () Bool)

(declare-fun res!701230 () Bool)

(assert (=> b!1573409 (=> (not res!701230) (not e!1010386))))

(declare-fun rulesProduceEachTokenIndividuallyList!845 (LexerInterface!2643 List!17237 List!17238) Bool)

(assert (=> b!1573409 (= res!701230 (rulesProduceEachTokenIndividuallyList!845 thiss!17113 rules!1846 tokens!457))))

(assert (= (and start!146812 res!701234) b!1573401))

(assert (= (and b!1573401 res!701229) b!1573405))

(assert (= (and b!1573405 res!701232) b!1573409))

(assert (= (and b!1573409 res!701230) b!1573399))

(assert (= (and b!1573399 res!701231) b!1573403))

(assert (= (and b!1573403 res!701233) b!1573400))

(assert (= b!1573398 b!1573404))

(assert (= b!1573397 b!1573398))

(assert (= (and start!146812 (is-Cons!17167 rules!1846)) b!1573397))

(assert (= b!1573407 b!1573402))

(assert (= b!1573406 b!1573407))

(assert (= b!1573408 b!1573406))

(assert (= (and start!146812 (is-Cons!17168 tokens!457)) b!1573408))

(declare-fun m!1852361 () Bool)

(assert (=> b!1573399 m!1852361))

(declare-fun m!1852363 () Bool)

(assert (=> b!1573405 m!1852363))

(declare-fun m!1852365 () Bool)

(assert (=> b!1573407 m!1852365))

(declare-fun m!1852367 () Bool)

(assert (=> b!1573407 m!1852367))

(declare-fun m!1852369 () Bool)

(assert (=> b!1573409 m!1852369))

(declare-fun m!1852371 () Bool)

(assert (=> b!1573408 m!1852371))

(declare-fun m!1852373 () Bool)

(assert (=> b!1573406 m!1852373))

(declare-fun m!1852375 () Bool)

(assert (=> b!1573401 m!1852375))

(declare-fun m!1852377 () Bool)

(assert (=> b!1573398 m!1852377))

(declare-fun m!1852379 () Bool)

(assert (=> b!1573398 m!1852379))

(declare-fun m!1852381 () Bool)

(assert (=> b!1573400 m!1852381))

(declare-fun m!1852383 () Bool)

(assert (=> b!1573400 m!1852383))

(assert (=> b!1573400 m!1852383))

(declare-fun m!1852385 () Bool)

(assert (=> b!1573400 m!1852385))

(push 1)

(assert (not b!1573409))

(assert (not b_next!42881))

(assert (not b!1573399))

(assert b_and!109987)

(assert b_and!109981)

(assert (not b!1573400))

(assert (not b!1573397))

(assert (not b!1573398))

(assert (not b!1573406))

(assert (not b!1573407))

(assert (not b!1573401))

(assert (not b_next!42879))

(assert b_and!109985)

(assert (not b_next!42883))

(assert (not b!1573405))

(assert b_and!109983)

(assert (not b!1573408))

(assert (not b_next!42885))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!42881))

(assert b_and!109987)

(assert b_and!109981)

(assert (not b_next!42883))

(assert (not b_next!42879))

(assert b_and!109985)

(assert b_and!109983)

(assert (not b_next!42885))

(check-sat)

(pop 1)

