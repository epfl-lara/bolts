; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!104644 () Bool)

(assert start!104644)

(declare-fun b!1181539 () Bool)

(declare-fun b_free!28165 () Bool)

(declare-fun b_next!28869 () Bool)

(assert (=> b!1181539 (= b_free!28165 (not b_next!28869))))

(declare-fun tp!336600 () Bool)

(declare-fun b_and!81157 () Bool)

(assert (=> b!1181539 (= tp!336600 b_and!81157)))

(declare-fun b_free!28167 () Bool)

(declare-fun b_next!28871 () Bool)

(assert (=> b!1181539 (= b_free!28167 (not b_next!28871))))

(declare-fun tp!336601 () Bool)

(declare-fun b_and!81159 () Bool)

(assert (=> b!1181539 (= tp!336601 b_and!81159)))

(declare-fun b!1181541 () Bool)

(declare-fun b_free!28169 () Bool)

(declare-fun b_next!28873 () Bool)

(assert (=> b!1181541 (= b_free!28169 (not b_next!28873))))

(declare-fun tp!336599 () Bool)

(declare-fun b_and!81161 () Bool)

(assert (=> b!1181541 (= tp!336599 b_and!81161)))

(declare-fun b_free!28171 () Bool)

(declare-fun b_next!28875 () Bool)

(assert (=> b!1181541 (= b_free!28171 (not b_next!28875))))

(declare-fun tp!336594 () Bool)

(declare-fun b_and!81163 () Bool)

(assert (=> b!1181541 (= tp!336594 b_and!81163)))

(declare-fun res!534016 () Bool)

(declare-fun e!758430 () Bool)

(assert (=> start!104644 (=> (not res!534016) (not e!758430))))

(declare-datatypes ((LexerInterface!1747 0))(
  ( (LexerInterfaceExt!1744 (__x!7947 Int)) (Lexer!1745) )
))
(declare-fun thiss!27592 () LexerInterface!1747)

(assert (=> start!104644 (= res!534016 (is-Lexer!1745 thiss!27592))))

(assert (=> start!104644 e!758430))

(assert (=> start!104644 true))

(declare-fun e!758434 () Bool)

(assert (=> start!104644 e!758434))

(declare-fun e!758427 () Bool)

(assert (=> start!104644 e!758427))

(declare-fun e!758428 () Bool)

(declare-fun e!758435 () Bool)

(declare-fun b!1181538 () Bool)

(declare-datatypes ((C!6962 0))(
  ( (C!6963 (val!3777 Int)) )
))
(declare-datatypes ((List!11796 0))(
  ( (Nil!11772) (Cons!11772 (h!17173 C!6962) (t!111466 List!11796)) )
))
(declare-datatypes ((IArray!7721 0))(
  ( (IArray!7722 (innerList!3918 List!11796)) )
))
(declare-datatypes ((Conc!3858 0))(
  ( (Node!3858 (left!10258 Conc!3858) (right!10588 Conc!3858) (csize!7946 Int) (cheight!4069 Int)) (Leaf!5915 (xs!6563 IArray!7721) (csize!7947 Int)) (Empty!3858) )
))
(declare-datatypes ((List!11797 0))(
  ( (Nil!11773) (Cons!11773 (h!17174 (_ BitVec 16)) (t!111467 List!11797)) )
))
(declare-datatypes ((TokenValue!2118 0))(
  ( (FloatLiteralValue!4236 (text!15271 List!11797)) (TokenValueExt!2117 (__x!7948 Int)) (Broken!10590 (value!66514 List!11797)) (Object!2141) (End!2118) (Def!2118) (Underscore!2118) (Match!2118) (Else!2118) (Error!2118) (Case!2118) (If!2118) (Extends!2118) (Abstract!2118) (Class!2118) (Val!2118) (DelimiterValue!4236 (del!2178 List!11797)) (KeywordValue!2124 (value!66515 List!11797)) (CommentValue!4236 (value!66516 List!11797)) (WhitespaceValue!4236 (value!66517 List!11797)) (IndentationValue!2118 (value!66518 List!11797)) (String!14259) (Int32!2118) (Broken!10591 (value!66519 List!11797)) (Boolean!2119) (Unit!18092) (OperatorValue!2121 (op!2178 List!11797)) (IdentifierValue!4236 (value!66520 List!11797)) (IdentifierValue!4237 (value!66521 List!11797)) (WhitespaceValue!4237 (value!66522 List!11797)) (True!4236) (False!4236) (Broken!10592 (value!66523 List!11797)) (Broken!10593 (value!66524 List!11797)) (True!4237) (RightBrace!2118) (RightBracket!2118) (Colon!2118) (Null!2118) (Comma!2118) (LeftBracket!2118) (False!4237) (LeftBrace!2118) (ImaginaryLiteralValue!2118 (text!15272 List!11797)) (StringLiteralValue!6354 (value!66525 List!11797)) (EOFValue!2118 (value!66526 List!11797)) (IdentValue!2118 (value!66527 List!11797)) (DelimiterValue!4237 (value!66528 List!11797)) (DedentValue!2118 (value!66529 List!11797)) (NewLineValue!2118 (value!66530 List!11797)) (IntegerValue!6354 (value!66531 (_ BitVec 32)) (text!15273 List!11797)) (IntegerValue!6355 (value!66532 Int) (text!15274 List!11797)) (Times!2118) (Or!2118) (Equal!2118) (Minus!2118) (Broken!10594 (value!66533 List!11797)) (And!2118) (Div!2118) (LessEqual!2118) (Mod!2118) (Concat!5440) (Not!2118) (Plus!2118) (SpaceValue!2118 (value!66534 List!11797)) (IntegerValue!6356 (value!66535 Int) (text!15275 List!11797)) (StringLiteralValue!6355 (text!15276 List!11797)) (FloatLiteralValue!4237 (text!15277 List!11797)) (BytesLiteralValue!2118 (value!66536 List!11797)) (CommentValue!4237 (value!66537 List!11797)) (StringLiteralValue!6356 (value!66538 List!11797)) (ErrorTokenValue!2118 (msg!2179 List!11797)) )
))
(declare-datatypes ((Regex!3322 0))(
  ( (ElementMatch!3322 (c!196802 C!6962)) (Concat!5441 (regOne!7156 Regex!3322) (regTwo!7156 Regex!3322)) (EmptyExpr!3322) (Star!3322 (reg!3651 Regex!3322)) (EmptyLang!3322) (Union!3322 (regOne!7157 Regex!3322) (regTwo!7157 Regex!3322)) )
))
(declare-datatypes ((String!14260 0))(
  ( (String!14261 (value!66539 String)) )
))
(declare-datatypes ((BalanceConc!7738 0))(
  ( (BalanceConc!7739 (c!196803 Conc!3858)) )
))
(declare-datatypes ((TokenValueInjection!3936 0))(
  ( (TokenValueInjection!3937 (toValue!3161 Int) (toChars!3020 Int)) )
))
(declare-datatypes ((Rule!3904 0))(
  ( (Rule!3905 (regex!2052 Regex!3322) (tag!2314 String!14260) (isSeparator!2052 Bool) (transformation!2052 TokenValueInjection!3936)) )
))
(declare-datatypes ((Token!3766 0))(
  ( (Token!3767 (value!66540 TokenValue!2118) (rule!3473 Rule!3904) (size!9304 Int) (originalCharacters!2606 List!11796)) )
))
(declare-datatypes ((List!11798 0))(
  ( (Nil!11774) (Cons!11774 (h!17175 Token!3766) (t!111468 List!11798)) )
))
(declare-fun l!6534 () List!11798)

(declare-fun tp!336598 () Bool)

(declare-fun inv!21 (TokenValue!2118) Bool)

(assert (=> b!1181538 (= e!758428 (and (inv!21 (value!66540 (h!17175 l!6534))) e!758435 tp!336598))))

(declare-fun e!758426 () Bool)

(assert (=> b!1181539 (= e!758426 (and tp!336600 tp!336601))))

(declare-fun b!1181540 () Bool)

(declare-fun res!534018 () Bool)

(assert (=> b!1181540 (=> (not res!534018) (not e!758430))))

(declare-datatypes ((List!11799 0))(
  ( (Nil!11775) (Cons!11775 (h!17176 Rule!3904) (t!111469 List!11799)) )
))
(declare-fun rules!4386 () List!11799)

(declare-fun isEmpty!7105 (List!11799) Bool)

(assert (=> b!1181540 (= res!534018 (not (isEmpty!7105 rules!4386)))))

(declare-fun e!758433 () Bool)

(assert (=> b!1181541 (= e!758433 (and tp!336599 tp!336594))))

(declare-fun b!1181542 () Bool)

(declare-fun tp!336596 () Bool)

(declare-fun inv!15593 (String!14260) Bool)

(declare-fun inv!15596 (TokenValueInjection!3936) Bool)

(assert (=> b!1181542 (= e!758435 (and tp!336596 (inv!15593 (tag!2314 (rule!3473 (h!17175 l!6534)))) (inv!15596 (transformation!2052 (rule!3473 (h!17175 l!6534)))) e!758426))))

(declare-fun b!1181543 () Bool)

(declare-fun res!534022 () Bool)

(assert (=> b!1181543 (=> (not res!534022) (not e!758430))))

(declare-fun rulesProduceEachTokenIndividuallyList!613 (LexerInterface!1747 List!11799 List!11798) Bool)

(assert (=> b!1181543 (= res!534022 (rulesProduceEachTokenIndividuallyList!613 thiss!27592 rules!4386 l!6534))))

(declare-fun tp!336593 () Bool)

(declare-fun e!758431 () Bool)

(declare-fun b!1181544 () Bool)

(assert (=> b!1181544 (= e!758431 (and tp!336593 (inv!15593 (tag!2314 (h!17176 rules!4386))) (inv!15596 (transformation!2052 (h!17176 rules!4386))) e!758433))))

(declare-fun b!1181545 () Bool)

(declare-fun res!534023 () Bool)

(assert (=> b!1181545 (=> (not res!534023) (not e!758430))))

(declare-fun tokensListTwoByTwoPredicateSeparableList!141 (LexerInterface!1747 List!11798 List!11799) Bool)

(assert (=> b!1181545 (= res!534023 (tokensListTwoByTwoPredicateSeparableList!141 thiss!27592 l!6534 rules!4386))))

(declare-fun b!1181546 () Bool)

(declare-fun tp!336595 () Bool)

(assert (=> b!1181546 (= e!758434 (and e!758431 tp!336595))))

(declare-fun b!1181547 () Bool)

(assert (=> b!1181547 (= e!758430 (not true))))

(declare-fun lt!406781 () List!11798)

(declare-fun subseq!308 (List!11798 List!11798) Bool)

(assert (=> b!1181547 (subseq!308 lt!406781 l!6534)))

(declare-datatypes ((Unit!18093 0))(
  ( (Unit!18094) )
))
(declare-fun lt!406782 () Unit!18093)

(declare-fun i!1621 () Int)

(declare-fun lemmaDropSubseq!71 (List!11798 Int) Unit!18093)

(assert (=> b!1181547 (= lt!406782 (lemmaDropSubseq!71 l!6534 i!1621))))

(declare-fun e!758429 () Bool)

(assert (=> b!1181547 (= (rulesProduceEachTokenIndividuallyList!613 thiss!27592 rules!4386 lt!406781) e!758429)))

(declare-fun res!534021 () Bool)

(assert (=> b!1181547 (=> res!534021 e!758429)))

(assert (=> b!1181547 (= res!534021 (not (is-Cons!11774 lt!406781)))))

(declare-fun drop!532 (List!11798 Int) List!11798)

(assert (=> b!1181547 (= lt!406781 (drop!532 l!6534 i!1621))))

(declare-fun tp!336597 () Bool)

(declare-fun b!1181548 () Bool)

(declare-fun inv!15597 (Token!3766) Bool)

(assert (=> b!1181548 (= e!758427 (and (inv!15597 (h!17175 l!6534)) e!758428 tp!336597))))

(declare-fun e!758437 () Bool)

(declare-fun b!1181549 () Bool)

(assert (=> b!1181549 (= e!758437 (rulesProduceEachTokenIndividuallyList!613 thiss!27592 rules!4386 (t!111468 lt!406781)))))

(declare-fun b!1181550 () Bool)

(declare-fun res!534019 () Bool)

(assert (=> b!1181550 (=> (not res!534019) (not e!758430))))

(declare-fun rulesInvariant!1621 (LexerInterface!1747 List!11799) Bool)

(assert (=> b!1181550 (= res!534019 (rulesInvariant!1621 thiss!27592 rules!4386))))

(declare-fun b!1181551 () Bool)

(declare-fun res!534020 () Bool)

(assert (=> b!1181551 (=> (not res!534020) (not e!758430))))

(assert (=> b!1181551 (= res!534020 (and (not (is-Nil!11774 l!6534)) (<= i!1621 0)))))

(declare-fun b!1181552 () Bool)

(assert (=> b!1181552 (= e!758429 e!758437)))

(declare-fun res!534017 () Bool)

(assert (=> b!1181552 (=> (not res!534017) (not e!758437))))

(declare-fun rulesProduceIndividualToken!778 (LexerInterface!1747 List!11799 Token!3766) Bool)

(assert (=> b!1181552 (= res!534017 (rulesProduceIndividualToken!778 thiss!27592 rules!4386 (h!17175 lt!406781)))))

(assert (= (and start!104644 res!534016) b!1181540))

(assert (= (and b!1181540 res!534018) b!1181550))

(assert (= (and b!1181550 res!534019) b!1181543))

(assert (= (and b!1181543 res!534022) b!1181545))

(assert (= (and b!1181545 res!534023) b!1181551))

(assert (= (and b!1181551 res!534020) b!1181547))

(assert (= (and b!1181547 (not res!534021)) b!1181552))

(assert (= (and b!1181552 res!534017) b!1181549))

(assert (= b!1181544 b!1181541))

(assert (= b!1181546 b!1181544))

(assert (= (and start!104644 (is-Cons!11775 rules!4386)) b!1181546))

(assert (= b!1181542 b!1181539))

(assert (= b!1181538 b!1181542))

(assert (= b!1181548 b!1181538))

(assert (= (and start!104644 (is-Cons!11774 l!6534)) b!1181548))

(declare-fun m!1357653 () Bool)

(assert (=> b!1181540 m!1357653))

(declare-fun m!1357655 () Bool)

(assert (=> b!1181549 m!1357655))

(declare-fun m!1357657 () Bool)

(assert (=> b!1181538 m!1357657))

(declare-fun m!1357659 () Bool)

(assert (=> b!1181544 m!1357659))

(declare-fun m!1357661 () Bool)

(assert (=> b!1181544 m!1357661))

(declare-fun m!1357663 () Bool)

(assert (=> b!1181550 m!1357663))

(declare-fun m!1357665 () Bool)

(assert (=> b!1181542 m!1357665))

(declare-fun m!1357667 () Bool)

(assert (=> b!1181542 m!1357667))

(declare-fun m!1357669 () Bool)

(assert (=> b!1181552 m!1357669))

(declare-fun m!1357671 () Bool)

(assert (=> b!1181547 m!1357671))

(declare-fun m!1357673 () Bool)

(assert (=> b!1181547 m!1357673))

(declare-fun m!1357675 () Bool)

(assert (=> b!1181547 m!1357675))

(declare-fun m!1357677 () Bool)

(assert (=> b!1181547 m!1357677))

(declare-fun m!1357679 () Bool)

(assert (=> b!1181548 m!1357679))

(declare-fun m!1357681 () Bool)

(assert (=> b!1181543 m!1357681))

(declare-fun m!1357683 () Bool)

(assert (=> b!1181545 m!1357683))

(push 1)

(assert (not b_next!28873))

(assert (not b!1181540))

(assert (not b!1181538))

(assert (not b!1181549))

(assert (not b!1181542))

(assert b_and!81161)

(assert (not b!1181547))

(assert (not b!1181546))

(assert (not b_next!28875))

(assert (not b!1181552))

(assert b_and!81157)

(assert b_and!81163)

(assert b_and!81159)

(assert (not b!1181543))

(assert (not b_next!28871))

(assert (not b_next!28869))

(assert (not b!1181544))

(assert (not b!1181550))

(assert (not b!1181548))

(assert (not b!1181545))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!28873))

(assert b_and!81161)

(assert (not b_next!28875))

(assert b_and!81157)

(assert b_and!81163)

(assert b_and!81159)

(assert (not b_next!28871))

(assert (not b_next!28869))

(check-sat)

(pop 1)

