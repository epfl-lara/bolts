; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!104642 () Bool)

(assert start!104642)

(declare-fun b!1181499 () Bool)

(declare-fun b_free!28157 () Bool)

(declare-fun b_next!28861 () Bool)

(assert (=> b!1181499 (= b_free!28157 (not b_next!28861))))

(declare-fun tp!336567 () Bool)

(declare-fun b_and!81149 () Bool)

(assert (=> b!1181499 (= tp!336567 b_and!81149)))

(declare-fun b_free!28159 () Bool)

(declare-fun b_next!28863 () Bool)

(assert (=> b!1181499 (= b_free!28159 (not b_next!28863))))

(declare-fun tp!336569 () Bool)

(declare-fun b_and!81151 () Bool)

(assert (=> b!1181499 (= tp!336569 b_and!81151)))

(declare-fun b!1181504 () Bool)

(declare-fun b_free!28161 () Bool)

(declare-fun b_next!28865 () Bool)

(assert (=> b!1181504 (= b_free!28161 (not b_next!28865))))

(declare-fun tp!336570 () Bool)

(declare-fun b_and!81153 () Bool)

(assert (=> b!1181504 (= tp!336570 b_and!81153)))

(declare-fun b_free!28163 () Bool)

(declare-fun b_next!28867 () Bool)

(assert (=> b!1181504 (= b_free!28163 (not b_next!28867))))

(declare-fun tp!336568 () Bool)

(declare-fun b_and!81155 () Bool)

(assert (=> b!1181504 (= tp!336568 b_and!81155)))

(declare-fun tp!336571 () Bool)

(declare-datatypes ((C!6960 0))(
  ( (C!6961 (val!3776 Int)) )
))
(declare-datatypes ((List!11792 0))(
  ( (Nil!11768) (Cons!11768 (h!17169 C!6960) (t!111462 List!11792)) )
))
(declare-datatypes ((IArray!7719 0))(
  ( (IArray!7720 (innerList!3917 List!11792)) )
))
(declare-datatypes ((Conc!3857 0))(
  ( (Node!3857 (left!10256 Conc!3857) (right!10586 Conc!3857) (csize!7944 Int) (cheight!4068 Int)) (Leaf!5913 (xs!6562 IArray!7719) (csize!7945 Int)) (Empty!3857) )
))
(declare-datatypes ((List!11793 0))(
  ( (Nil!11769) (Cons!11769 (h!17170 (_ BitVec 16)) (t!111463 List!11793)) )
))
(declare-datatypes ((TokenValue!2117 0))(
  ( (FloatLiteralValue!4234 (text!15264 List!11793)) (TokenValueExt!2116 (__x!7945 Int)) (Broken!10585 (value!66484 List!11793)) (Object!2140) (End!2117) (Def!2117) (Underscore!2117) (Match!2117) (Else!2117) (Error!2117) (Case!2117) (If!2117) (Extends!2117) (Abstract!2117) (Class!2117) (Val!2117) (DelimiterValue!4234 (del!2177 List!11793)) (KeywordValue!2123 (value!66485 List!11793)) (CommentValue!4234 (value!66486 List!11793)) (WhitespaceValue!4234 (value!66487 List!11793)) (IndentationValue!2117 (value!66488 List!11793)) (String!14252) (Int32!2117) (Broken!10586 (value!66489 List!11793)) (Boolean!2118) (Unit!18089) (OperatorValue!2120 (op!2177 List!11793)) (IdentifierValue!4234 (value!66490 List!11793)) (IdentifierValue!4235 (value!66491 List!11793)) (WhitespaceValue!4235 (value!66492 List!11793)) (True!4234) (False!4234) (Broken!10587 (value!66493 List!11793)) (Broken!10588 (value!66494 List!11793)) (True!4235) (RightBrace!2117) (RightBracket!2117) (Colon!2117) (Null!2117) (Comma!2117) (LeftBracket!2117) (False!4235) (LeftBrace!2117) (ImaginaryLiteralValue!2117 (text!15265 List!11793)) (StringLiteralValue!6351 (value!66495 List!11793)) (EOFValue!2117 (value!66496 List!11793)) (IdentValue!2117 (value!66497 List!11793)) (DelimiterValue!4235 (value!66498 List!11793)) (DedentValue!2117 (value!66499 List!11793)) (NewLineValue!2117 (value!66500 List!11793)) (IntegerValue!6351 (value!66501 (_ BitVec 32)) (text!15266 List!11793)) (IntegerValue!6352 (value!66502 Int) (text!15267 List!11793)) (Times!2117) (Or!2117) (Equal!2117) (Minus!2117) (Broken!10589 (value!66503 List!11793)) (And!2117) (Div!2117) (LessEqual!2117) (Mod!2117) (Concat!5438) (Not!2117) (Plus!2117) (SpaceValue!2117 (value!66504 List!11793)) (IntegerValue!6353 (value!66505 Int) (text!15268 List!11793)) (StringLiteralValue!6352 (text!15269 List!11793)) (FloatLiteralValue!4235 (text!15270 List!11793)) (BytesLiteralValue!2117 (value!66506 List!11793)) (CommentValue!4235 (value!66507 List!11793)) (StringLiteralValue!6353 (value!66508 List!11793)) (ErrorTokenValue!2117 (msg!2178 List!11793)) )
))
(declare-datatypes ((Regex!3321 0))(
  ( (ElementMatch!3321 (c!196800 C!6960)) (Concat!5439 (regOne!7154 Regex!3321) (regTwo!7154 Regex!3321)) (EmptyExpr!3321) (Star!3321 (reg!3650 Regex!3321)) (EmptyLang!3321) (Union!3321 (regOne!7155 Regex!3321) (regTwo!7155 Regex!3321)) )
))
(declare-datatypes ((String!14253 0))(
  ( (String!14254 (value!66509 String)) )
))
(declare-datatypes ((BalanceConc!7736 0))(
  ( (BalanceConc!7737 (c!196801 Conc!3857)) )
))
(declare-datatypes ((TokenValueInjection!3934 0))(
  ( (TokenValueInjection!3935 (toValue!3160 Int) (toChars!3019 Int)) )
))
(declare-datatypes ((Rule!3902 0))(
  ( (Rule!3903 (regex!2051 Regex!3321) (tag!2313 String!14253) (isSeparator!2051 Bool) (transformation!2051 TokenValueInjection!3934)) )
))
(declare-datatypes ((Token!3764 0))(
  ( (Token!3765 (value!66510 TokenValue!2117) (rule!3472 Rule!3902) (size!9303 Int) (originalCharacters!2605 List!11792)) )
))
(declare-datatypes ((List!11794 0))(
  ( (Nil!11770) (Cons!11770 (h!17171 Token!3764) (t!111464 List!11794)) )
))
(declare-fun l!6534 () List!11794)

(declare-fun b!1181493 () Bool)

(declare-fun e!758389 () Bool)

(declare-fun e!758387 () Bool)

(declare-fun inv!15588 (String!14253) Bool)

(declare-fun inv!15591 (TokenValueInjection!3934) Bool)

(assert (=> b!1181493 (= e!758389 (and tp!336571 (inv!15588 (tag!2313 (rule!3472 (h!17171 l!6534)))) (inv!15591 (transformation!2051 (rule!3472 (h!17171 l!6534)))) e!758387))))

(declare-fun tp!336573 () Bool)

(declare-fun e!758394 () Bool)

(declare-fun b!1181494 () Bool)

(declare-fun inv!21 (TokenValue!2117) Bool)

(assert (=> b!1181494 (= e!758394 (and (inv!21 (value!66510 (h!17171 l!6534))) e!758389 tp!336573))))

(declare-fun b!1181495 () Bool)

(declare-fun res!533997 () Bool)

(declare-fun e!758399 () Bool)

(assert (=> b!1181495 (=> (not res!533997) (not e!758399))))

(declare-datatypes ((LexerInterface!1746 0))(
  ( (LexerInterfaceExt!1743 (__x!7946 Int)) (Lexer!1744) )
))
(declare-fun thiss!27592 () LexerInterface!1746)

(declare-datatypes ((List!11795 0))(
  ( (Nil!11771) (Cons!11771 (h!17172 Rule!3902) (t!111465 List!11795)) )
))
(declare-fun rules!4386 () List!11795)

(declare-fun rulesInvariant!1620 (LexerInterface!1746 List!11795) Bool)

(assert (=> b!1181495 (= res!533997 (rulesInvariant!1620 thiss!27592 rules!4386))))

(declare-fun b!1181496 () Bool)

(declare-fun res!533996 () Bool)

(assert (=> b!1181496 (=> (not res!533996) (not e!758399))))

(declare-fun i!1621 () Int)

(get-info :version)

(assert (=> b!1181496 (= res!533996 (and (not ((_ is Nil!11770) l!6534)) (<= i!1621 0)))))

(declare-fun b!1181497 () Bool)

(declare-fun res!533992 () Bool)

(assert (=> b!1181497 (=> (not res!533992) (not e!758399))))

(declare-fun isEmpty!7104 (List!11795) Bool)

(assert (=> b!1181497 (= res!533992 (not (isEmpty!7104 rules!4386)))))

(declare-fun b!1181498 () Bool)

(declare-fun e!758397 () Bool)

(declare-fun e!758391 () Bool)

(assert (=> b!1181498 (= e!758397 e!758391)))

(declare-fun res!533998 () Bool)

(assert (=> b!1181498 (=> (not res!533998) (not e!758391))))

(declare-fun lt!406775 () List!11794)

(declare-fun rulesProduceIndividualToken!777 (LexerInterface!1746 List!11795 Token!3764) Bool)

(assert (=> b!1181498 (= res!533998 (rulesProduceIndividualToken!777 thiss!27592 rules!4386 (h!17171 lt!406775)))))

(declare-fun e!758392 () Bool)

(assert (=> b!1181499 (= e!758392 (and tp!336567 tp!336569))))

(declare-fun b!1181500 () Bool)

(assert (=> b!1181500 (= e!758399 (not (rulesInvariant!1620 Lexer!1744 rules!4386)))))

(declare-fun subseq!307 (List!11794 List!11794) Bool)

(assert (=> b!1181500 (subseq!307 lt!406775 l!6534)))

(declare-datatypes ((Unit!18090 0))(
  ( (Unit!18091) )
))
(declare-fun lt!406776 () Unit!18090)

(declare-fun lemmaDropSubseq!70 (List!11794 Int) Unit!18090)

(assert (=> b!1181500 (= lt!406776 (lemmaDropSubseq!70 l!6534 i!1621))))

(declare-fun rulesProduceEachTokenIndividuallyList!612 (LexerInterface!1746 List!11795 List!11794) Bool)

(assert (=> b!1181500 (= (rulesProduceEachTokenIndividuallyList!612 thiss!27592 rules!4386 lt!406775) e!758397)))

(declare-fun res!533994 () Bool)

(assert (=> b!1181500 (=> res!533994 e!758397)))

(assert (=> b!1181500 (= res!533994 (not ((_ is Cons!11770) lt!406775)))))

(declare-fun drop!531 (List!11794 Int) List!11794)

(assert (=> b!1181500 (= lt!406775 (drop!531 l!6534 i!1621))))

(declare-fun b!1181501 () Bool)

(declare-fun e!758388 () Bool)

(declare-fun e!758390 () Bool)

(declare-fun tp!336574 () Bool)

(assert (=> b!1181501 (= e!758388 (and e!758390 tp!336574))))

(declare-fun b!1181502 () Bool)

(declare-fun e!758393 () Bool)

(declare-fun tp!336566 () Bool)

(declare-fun inv!15592 (Token!3764) Bool)

(assert (=> b!1181502 (= e!758393 (and (inv!15592 (h!17171 l!6534)) e!758394 tp!336566))))

(declare-fun tp!336572 () Bool)

(declare-fun b!1181503 () Bool)

(assert (=> b!1181503 (= e!758390 (and tp!336572 (inv!15588 (tag!2313 (h!17172 rules!4386))) (inv!15591 (transformation!2051 (h!17172 rules!4386))) e!758392))))

(assert (=> b!1181504 (= e!758387 (and tp!336570 tp!336568))))

(declare-fun b!1181505 () Bool)

(declare-fun res!533999 () Bool)

(assert (=> b!1181505 (=> (not res!533999) (not e!758399))))

(assert (=> b!1181505 (= res!533999 (rulesProduceEachTokenIndividuallyList!612 thiss!27592 rules!4386 l!6534))))

(declare-fun b!1181506 () Bool)

(assert (=> b!1181506 (= e!758391 (rulesProduceEachTokenIndividuallyList!612 thiss!27592 rules!4386 (t!111464 lt!406775)))))

(declare-fun res!533995 () Bool)

(assert (=> start!104642 (=> (not res!533995) (not e!758399))))

(assert (=> start!104642 (= res!533995 ((_ is Lexer!1744) thiss!27592))))

(assert (=> start!104642 e!758399))

(assert (=> start!104642 true))

(assert (=> start!104642 e!758388))

(assert (=> start!104642 e!758393))

(declare-fun b!1181507 () Bool)

(declare-fun res!533993 () Bool)

(assert (=> b!1181507 (=> (not res!533993) (not e!758399))))

(declare-fun tokensListTwoByTwoPredicateSeparableList!140 (LexerInterface!1746 List!11794 List!11795) Bool)

(assert (=> b!1181507 (= res!533993 (tokensListTwoByTwoPredicateSeparableList!140 thiss!27592 l!6534 rules!4386))))

(assert (= (and start!104642 res!533995) b!1181497))

(assert (= (and b!1181497 res!533992) b!1181495))

(assert (= (and b!1181495 res!533997) b!1181505))

(assert (= (and b!1181505 res!533999) b!1181507))

(assert (= (and b!1181507 res!533993) b!1181496))

(assert (= (and b!1181496 res!533996) b!1181500))

(assert (= (and b!1181500 (not res!533994)) b!1181498))

(assert (= (and b!1181498 res!533998) b!1181506))

(assert (= b!1181503 b!1181499))

(assert (= b!1181501 b!1181503))

(assert (= (and start!104642 ((_ is Cons!11771) rules!4386)) b!1181501))

(assert (= b!1181493 b!1181504))

(assert (= b!1181494 b!1181493))

(assert (= b!1181502 b!1181494))

(assert (= (and start!104642 ((_ is Cons!11770) l!6534)) b!1181502))

(declare-fun m!1357619 () Bool)

(assert (=> b!1181493 m!1357619))

(declare-fun m!1357621 () Bool)

(assert (=> b!1181493 m!1357621))

(declare-fun m!1357623 () Bool)

(assert (=> b!1181498 m!1357623))

(declare-fun m!1357625 () Bool)

(assert (=> b!1181494 m!1357625))

(declare-fun m!1357627 () Bool)

(assert (=> b!1181503 m!1357627))

(declare-fun m!1357629 () Bool)

(assert (=> b!1181503 m!1357629))

(declare-fun m!1357631 () Bool)

(assert (=> b!1181495 m!1357631))

(declare-fun m!1357633 () Bool)

(assert (=> b!1181507 m!1357633))

(declare-fun m!1357635 () Bool)

(assert (=> b!1181497 m!1357635))

(declare-fun m!1357637 () Bool)

(assert (=> b!1181502 m!1357637))

(declare-fun m!1357639 () Bool)

(assert (=> b!1181500 m!1357639))

(declare-fun m!1357641 () Bool)

(assert (=> b!1181500 m!1357641))

(declare-fun m!1357643 () Bool)

(assert (=> b!1181500 m!1357643))

(declare-fun m!1357645 () Bool)

(assert (=> b!1181500 m!1357645))

(declare-fun m!1357647 () Bool)

(assert (=> b!1181500 m!1357647))

(declare-fun m!1357649 () Bool)

(assert (=> b!1181505 m!1357649))

(declare-fun m!1357651 () Bool)

(assert (=> b!1181506 m!1357651))

(check-sat (not b!1181497) (not b!1181507) (not b_next!28863) (not b_next!28867) (not b!1181498) b_and!81149 (not b!1181503) (not b!1181506) (not b!1181502) (not b_next!28865) b_and!81151 (not b!1181505) (not b_next!28861) b_and!81155 (not b!1181493) (not b!1181494) (not b!1181501) b_and!81153 (not b!1181500) (not b!1181495))
(check-sat (not b_next!28863) (not b_next!28867) b_and!81149 (not b_next!28865) b_and!81153 b_and!81151 (not b_next!28861) b_and!81155)
