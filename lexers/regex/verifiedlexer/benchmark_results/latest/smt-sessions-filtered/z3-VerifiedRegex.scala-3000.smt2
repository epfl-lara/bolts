; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!179642 () Bool)

(assert start!179642)

(declare-fun b!1815878 () Bool)

(declare-fun b_free!50075 () Bool)

(declare-fun b_next!50779 () Bool)

(assert (=> b!1815878 (= b_free!50075 (not b_next!50779))))

(declare-fun tp!512679 () Bool)

(declare-fun b_and!140521 () Bool)

(assert (=> b!1815878 (= tp!512679 b_and!140521)))

(declare-fun b_free!50077 () Bool)

(declare-fun b_next!50781 () Bool)

(assert (=> b!1815878 (= b_free!50077 (not b_next!50781))))

(declare-fun tp!512684 () Bool)

(declare-fun b_and!140523 () Bool)

(assert (=> b!1815878 (= tp!512684 b_and!140523)))

(declare-fun b!1815881 () Bool)

(declare-fun b_free!50079 () Bool)

(declare-fun b_next!50783 () Bool)

(assert (=> b!1815881 (= b_free!50079 (not b_next!50783))))

(declare-fun tp!512682 () Bool)

(declare-fun b_and!140525 () Bool)

(assert (=> b!1815881 (= tp!512682 b_and!140525)))

(declare-fun b_free!50081 () Bool)

(declare-fun b_next!50785 () Bool)

(assert (=> b!1815881 (= b_free!50081 (not b_next!50785))))

(declare-fun tp!512680 () Bool)

(declare-fun b_and!140527 () Bool)

(assert (=> b!1815881 (= tp!512680 b_and!140527)))

(declare-fun b!1815875 () Bool)

(declare-fun e!1160121 () Bool)

(assert (=> b!1815875 (= e!1160121 false)))

(declare-fun lt!705960 () Bool)

(declare-datatypes ((List!19887 0))(
  ( (Nil!19817) (Cons!19817 (h!25218 (_ BitVec 16)) (t!169556 List!19887)) )
))
(declare-datatypes ((TokenValue!3651 0))(
  ( (FloatLiteralValue!7302 (text!26002 List!19887)) (TokenValueExt!3650 (__x!12604 Int)) (Broken!18255 (value!111134 List!19887)) (Object!3720) (End!3651) (Def!3651) (Underscore!3651) (Match!3651) (Else!3651) (Error!3651) (Case!3651) (If!3651) (Extends!3651) (Abstract!3651) (Class!3651) (Val!3651) (DelimiterValue!7302 (del!3711 List!19887)) (KeywordValue!3657 (value!111135 List!19887)) (CommentValue!7302 (value!111136 List!19887)) (WhitespaceValue!7302 (value!111137 List!19887)) (IndentationValue!3651 (value!111138 List!19887)) (String!22586) (Int32!3651) (Broken!18256 (value!111139 List!19887)) (Boolean!3652) (Unit!34522) (OperatorValue!3654 (op!3711 List!19887)) (IdentifierValue!7302 (value!111140 List!19887)) (IdentifierValue!7303 (value!111141 List!19887)) (WhitespaceValue!7303 (value!111142 List!19887)) (True!7302) (False!7302) (Broken!18257 (value!111143 List!19887)) (Broken!18258 (value!111144 List!19887)) (True!7303) (RightBrace!3651) (RightBracket!3651) (Colon!3651) (Null!3651) (Comma!3651) (LeftBracket!3651) (False!7303) (LeftBrace!3651) (ImaginaryLiteralValue!3651 (text!26003 List!19887)) (StringLiteralValue!10953 (value!111145 List!19887)) (EOFValue!3651 (value!111146 List!19887)) (IdentValue!3651 (value!111147 List!19887)) (DelimiterValue!7303 (value!111148 List!19887)) (DedentValue!3651 (value!111149 List!19887)) (NewLineValue!3651 (value!111150 List!19887)) (IntegerValue!10953 (value!111151 (_ BitVec 32)) (text!26004 List!19887)) (IntegerValue!10954 (value!111152 Int) (text!26005 List!19887)) (Times!3651) (Or!3651) (Equal!3651) (Minus!3651) (Broken!18259 (value!111153 List!19887)) (And!3651) (Div!3651) (LessEqual!3651) (Mod!3651) (Concat!8540) (Not!3651) (Plus!3651) (SpaceValue!3651 (value!111154 List!19887)) (IntegerValue!10955 (value!111155 Int) (text!26006 List!19887)) (StringLiteralValue!10954 (text!26007 List!19887)) (FloatLiteralValue!7303 (text!26008 List!19887)) (BytesLiteralValue!3651 (value!111156 List!19887)) (CommentValue!7303 (value!111157 List!19887)) (StringLiteralValue!10955 (value!111158 List!19887)) (ErrorTokenValue!3651 (msg!3712 List!19887)) )
))
(declare-datatypes ((C!9952 0))(
  ( (C!9953 (val!5572 Int)) )
))
(declare-datatypes ((List!19888 0))(
  ( (Nil!19818) (Cons!19818 (h!25219 C!9952) (t!169557 List!19888)) )
))
(declare-datatypes ((IArray!13191 0))(
  ( (IArray!13192 (innerList!6653 List!19888)) )
))
(declare-datatypes ((Conc!6593 0))(
  ( (Node!6593 (left!15903 Conc!6593) (right!16233 Conc!6593) (csize!13416 Int) (cheight!6804 Int)) (Leaf!9594 (xs!9469 IArray!13191) (csize!13417 Int)) (Empty!6593) )
))
(declare-datatypes ((BalanceConc!13130 0))(
  ( (BalanceConc!13131 (c!296600 Conc!6593)) )
))
(declare-datatypes ((TokenValueInjection!6962 0))(
  ( (TokenValueInjection!6963 (toValue!5092 Int) (toChars!4951 Int)) )
))
(declare-datatypes ((Regex!4889 0))(
  ( (ElementMatch!4889 (c!296601 C!9952)) (Concat!8541 (regOne!10290 Regex!4889) (regTwo!10290 Regex!4889)) (EmptyExpr!4889) (Star!4889 (reg!5218 Regex!4889)) (EmptyLang!4889) (Union!4889 (regOne!10291 Regex!4889) (regTwo!10291 Regex!4889)) )
))
(declare-datatypes ((String!22587 0))(
  ( (String!22588 (value!111159 String)) )
))
(declare-datatypes ((Rule!6922 0))(
  ( (Rule!6923 (regex!3561 Regex!4889) (tag!3975 String!22587) (isSeparator!3561 Bool) (transformation!3561 TokenValueInjection!6962)) )
))
(declare-datatypes ((List!19889 0))(
  ( (Nil!19819) (Cons!19819 (h!25220 Rule!6922) (t!169558 List!19889)) )
))
(declare-fun rules!4538 () List!19889)

(declare-fun rule!559 () Rule!6922)

(declare-fun contains!3595 (List!19889 Rule!6922) Bool)

(assert (=> b!1815875 (= lt!705960 (contains!3595 rules!4538 rule!559))))

(declare-fun b!1815876 () Bool)

(declare-fun e!1160116 () Bool)

(declare-fun e!1160120 () Bool)

(declare-fun tp!512678 () Bool)

(assert (=> b!1815876 (= e!1160116 (and e!1160120 tp!512678))))

(declare-fun b!1815877 () Bool)

(declare-fun res!816456 () Bool)

(assert (=> b!1815877 (=> (not res!816456) (not e!1160121))))

(declare-fun isEmpty!12541 (List!19889) Bool)

(assert (=> b!1815877 (= res!816456 (not (isEmpty!12541 rules!4538)))))

(declare-fun res!816454 () Bool)

(assert (=> start!179642 (=> (not res!816454) (not e!1160121))))

(declare-datatypes ((LexerInterface!3190 0))(
  ( (LexerInterfaceExt!3187 (__x!12605 Int)) (Lexer!3188) )
))
(declare-fun thiss!28068 () LexerInterface!3190)

(get-info :version)

(assert (=> start!179642 (= res!816454 ((_ is Lexer!3188) thiss!28068))))

(assert (=> start!179642 e!1160121))

(assert (=> start!179642 true))

(assert (=> start!179642 e!1160116))

(declare-fun e!1160118 () Bool)

(assert (=> start!179642 e!1160118))

(declare-fun e!1160115 () Bool)

(assert (=> b!1815878 (= e!1160115 (and tp!512679 tp!512684))))

(declare-fun b!1815879 () Bool)

(declare-fun e!1160122 () Bool)

(declare-fun tp!512681 () Bool)

(declare-fun inv!25842 (String!22587) Bool)

(declare-fun inv!25844 (TokenValueInjection!6962) Bool)

(assert (=> b!1815879 (= e!1160120 (and tp!512681 (inv!25842 (tag!3975 (h!25220 rules!4538))) (inv!25844 (transformation!3561 (h!25220 rules!4538))) e!1160122))))

(declare-fun b!1815880 () Bool)

(declare-fun tp!512683 () Bool)

(assert (=> b!1815880 (= e!1160118 (and tp!512683 (inv!25842 (tag!3975 rule!559)) (inv!25844 (transformation!3561 rule!559)) e!1160115))))

(assert (=> b!1815881 (= e!1160122 (and tp!512682 tp!512680))))

(declare-fun b!1815882 () Bool)

(declare-fun res!816455 () Bool)

(assert (=> b!1815882 (=> (not res!816455) (not e!1160121))))

(declare-fun rulesInvariant!2859 (LexerInterface!3190 List!19889) Bool)

(assert (=> b!1815882 (= res!816455 (rulesInvariant!2859 thiss!28068 rules!4538))))

(assert (= (and start!179642 res!816454) b!1815877))

(assert (= (and b!1815877 res!816456) b!1815882))

(assert (= (and b!1815882 res!816455) b!1815875))

(assert (= b!1815879 b!1815881))

(assert (= b!1815876 b!1815879))

(assert (= (and start!179642 ((_ is Cons!19819) rules!4538)) b!1815876))

(assert (= b!1815880 b!1815878))

(assert (= start!179642 b!1815880))

(declare-fun m!2245699 () Bool)

(assert (=> b!1815879 m!2245699))

(declare-fun m!2245701 () Bool)

(assert (=> b!1815879 m!2245701))

(declare-fun m!2245703 () Bool)

(assert (=> b!1815875 m!2245703))

(declare-fun m!2245705 () Bool)

(assert (=> b!1815880 m!2245705))

(declare-fun m!2245707 () Bool)

(assert (=> b!1815880 m!2245707))

(declare-fun m!2245709 () Bool)

(assert (=> b!1815877 m!2245709))

(declare-fun m!2245711 () Bool)

(assert (=> b!1815882 m!2245711))

(check-sat b_and!140525 (not b!1815879) (not b_next!50781) b_and!140521 (not b!1815875) (not b_next!50785) (not b_next!50779) b_and!140523 (not b_next!50783) (not b!1815877) (not b!1815882) b_and!140527 (not b!1815880) (not b!1815876))
(check-sat b_and!140525 b_and!140527 (not b_next!50781) b_and!140521 (not b_next!50785) (not b_next!50779) b_and!140523 (not b_next!50783))
