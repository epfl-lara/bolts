; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!509276 () Bool)

(assert start!509276)

(declare-fun b!4870664 () Bool)

(declare-fun b_free!130715 () Bool)

(declare-fun b_next!131505 () Bool)

(assert (=> b!4870664 (= b_free!130715 (not b_next!131505))))

(declare-fun tp!1370451 () Bool)

(declare-fun b_and!342995 () Bool)

(assert (=> b!4870664 (= tp!1370451 b_and!342995)))

(declare-fun b_free!130717 () Bool)

(declare-fun b_next!131507 () Bool)

(assert (=> b!4870664 (= b_free!130717 (not b_next!131507))))

(declare-fun tp!1370455 () Bool)

(declare-fun b_and!342997 () Bool)

(assert (=> b!4870664 (= tp!1370455 b_and!342997)))

(declare-fun b!4870657 () Bool)

(declare-fun res!2079152 () Bool)

(declare-fun e!3044791 () Bool)

(assert (=> b!4870657 (=> (not res!2079152) (not e!3044791))))

(declare-datatypes ((List!56096 0))(
  ( (Nil!55972) (Cons!55972 (h!62420 (_ BitVec 16)) (t!364166 List!56096)) )
))
(declare-datatypes ((TokenValue!8350 0))(
  ( (FloatLiteralValue!16700 (text!58895 List!56096)) (TokenValueExt!8349 (__x!33993 Int)) (Broken!41750 (value!258256 List!56096)) (Object!8473) (End!8350) (Def!8350) (Underscore!8350) (Match!8350) (Else!8350) (Error!8350) (Case!8350) (If!8350) (Extends!8350) (Abstract!8350) (Class!8350) (Val!8350) (DelimiterValue!16700 (del!8410 List!56096)) (KeywordValue!8356 (value!258257 List!56096)) (CommentValue!16700 (value!258258 List!56096)) (WhitespaceValue!16700 (value!258259 List!56096)) (IndentationValue!8350 (value!258260 List!56096)) (String!63167) (Int32!8350) (Broken!41751 (value!258261 List!56096)) (Boolean!8351) (Unit!145969) (OperatorValue!8353 (op!8410 List!56096)) (IdentifierValue!16700 (value!258262 List!56096)) (IdentifierValue!16701 (value!258263 List!56096)) (WhitespaceValue!16701 (value!258264 List!56096)) (True!16700) (False!16700) (Broken!41752 (value!258265 List!56096)) (Broken!41753 (value!258266 List!56096)) (True!16701) (RightBrace!8350) (RightBracket!8350) (Colon!8350) (Null!8350) (Comma!8350) (LeftBracket!8350) (False!16701) (LeftBrace!8350) (ImaginaryLiteralValue!8350 (text!58896 List!56096)) (StringLiteralValue!25050 (value!258267 List!56096)) (EOFValue!8350 (value!258268 List!56096)) (IdentValue!8350 (value!258269 List!56096)) (DelimiterValue!16701 (value!258270 List!56096)) (DedentValue!8350 (value!258271 List!56096)) (NewLineValue!8350 (value!258272 List!56096)) (IntegerValue!25050 (value!258273 (_ BitVec 32)) (text!58897 List!56096)) (IntegerValue!25051 (value!258274 Int) (text!58898 List!56096)) (Times!8350) (Or!8350) (Equal!8350) (Minus!8350) (Broken!41754 (value!258275 List!56096)) (And!8350) (Div!8350) (LessEqual!8350) (Mod!8350) (Concat!21465) (Not!8350) (Plus!8350) (SpaceValue!8350 (value!258276 List!56096)) (IntegerValue!25052 (value!258277 Int) (text!58899 List!56096)) (StringLiteralValue!25051 (text!58900 List!56096)) (FloatLiteralValue!16701 (text!58901 List!56096)) (BytesLiteralValue!8350 (value!258278 List!56096)) (CommentValue!16701 (value!258279 List!56096)) (StringLiteralValue!25052 (value!258280 List!56096)) (ErrorTokenValue!8350 (msg!8411 List!56096)) )
))
(declare-datatypes ((C!26428 0))(
  ( (C!26429 (val!22536 Int)) )
))
(declare-datatypes ((List!56097 0))(
  ( (Nil!55973) (Cons!55973 (h!62421 C!26428) (t!364167 List!56097)) )
))
(declare-datatypes ((IArray!29235 0))(
  ( (IArray!29236 (innerList!14675 List!56097)) )
))
(declare-datatypes ((Regex!13115 0))(
  ( (ElementMatch!13115 (c!828434 C!26428)) (Concat!21466 (regOne!26742 Regex!13115) (regTwo!26742 Regex!13115)) (EmptyExpr!13115) (Star!13115 (reg!13444 Regex!13115)) (EmptyLang!13115) (Union!13115 (regOne!26743 Regex!13115) (regTwo!26743 Regex!13115)) )
))
(declare-datatypes ((String!63168 0))(
  ( (String!63169 (value!258281 String)) )
))
(declare-datatypes ((Conc!14587 0))(
  ( (Node!14587 (left!40655 Conc!14587) (right!40985 Conc!14587) (csize!29404 Int) (cheight!14798 Int)) (Leaf!24318 (xs!17895 IArray!29235) (csize!29405 Int)) (Empty!14587) )
))
(declare-datatypes ((BalanceConc!28616 0))(
  ( (BalanceConc!28617 (c!828435 Conc!14587)) )
))
(declare-datatypes ((TokenValueInjection!16008 0))(
  ( (TokenValueInjection!16009 (toValue!10911 Int) (toChars!10770 Int)) )
))
(declare-datatypes ((Rule!15880 0))(
  ( (Rule!15881 (regex!8040 Regex!13115) (tag!8904 String!63168) (isSeparator!8040 Bool) (transformation!8040 TokenValueInjection!16008)) )
))
(declare-datatypes ((List!56098 0))(
  ( (Nil!55974) (Cons!55974 (h!62422 Rule!15880) (t!364168 List!56098)) )
))
(declare-fun rules!1164 () List!56098)

(declare-fun input!585 () BalanceConc!28616)

(declare-datatypes ((LexerInterface!7632 0))(
  ( (LexerInterfaceExt!7629 (__x!33994 Int)) (Lexer!7630) )
))
(declare-fun thiss!11460 () LexerInterface!7632)

(get-info :version)

(declare-datatypes ((Token!14664 0))(
  ( (Token!14665 (value!258282 TokenValue!8350) (rule!11178 Rule!15880) (size!36896 Int) (originalCharacters!8363 List!56097)) )
))
(declare-datatypes ((tuple2!59828 0))(
  ( (tuple2!59829 (_1!33217 Token!14664) (_2!33217 BalanceConc!28616)) )
))
(declare-datatypes ((Option!13789 0))(
  ( (None!13788) (Some!13788 (v!49710 tuple2!59828)) )
))
(declare-fun maxPrefixZipperSequence!1231 (LexerInterface!7632 List!56098 BalanceConc!28616) Option!13789)

(assert (=> b!4870657 (= res!2079152 (not ((_ is Some!13788) (maxPrefixZipperSequence!1231 thiss!11460 rules!1164 input!585))))))

(declare-fun b!4870658 () Bool)

(assert (=> b!4870658 (= e!3044791 false)))

(declare-fun lt!1995724 () List!56097)

(declare-fun list!17508 (BalanceConc!28616) List!56097)

(assert (=> b!4870658 (= lt!1995724 (list!17508 input!585))))

(declare-fun e!3044790 () Bool)

(declare-fun tp!1370452 () Bool)

(declare-fun b!4870659 () Bool)

(declare-fun e!3044792 () Bool)

(declare-fun inv!71890 (String!63168) Bool)

(declare-fun inv!71894 (TokenValueInjection!16008) Bool)

(assert (=> b!4870659 (= e!3044792 (and tp!1370452 (inv!71890 (tag!8904 (h!62422 rules!1164))) (inv!71894 (transformation!8040 (h!62422 rules!1164))) e!3044790))))

(declare-fun b!4870660 () Bool)

(declare-fun e!3044794 () Bool)

(declare-fun tp!1370454 () Bool)

(declare-fun inv!71895 (Conc!14587) Bool)

(assert (=> b!4870660 (= e!3044794 (and (inv!71895 (c!828435 input!585)) tp!1370454))))

(declare-fun b!4870661 () Bool)

(declare-fun e!3044789 () Bool)

(declare-fun tp!1370453 () Bool)

(assert (=> b!4870661 (= e!3044789 (and e!3044792 tp!1370453))))

(declare-fun b!4870662 () Bool)

(declare-fun res!2079151 () Bool)

(assert (=> b!4870662 (=> (not res!2079151) (not e!3044791))))

(declare-fun e!3044795 () Bool)

(assert (=> b!4870662 (= res!2079151 e!3044795)))

(declare-fun c!828433 () Bool)

(declare-datatypes ((List!56099 0))(
  ( (Nil!55975) (Cons!55975 (h!62423 Token!14664) (t!364169 List!56099)) )
))
(declare-datatypes ((IArray!29237 0))(
  ( (IArray!29238 (innerList!14676 List!56099)) )
))
(declare-datatypes ((Conc!14588 0))(
  ( (Node!14588 (left!40656 Conc!14588) (right!40986 Conc!14588) (csize!29406 Int) (cheight!14799 Int)) (Leaf!24319 (xs!17896 IArray!29237) (csize!29407 Int)) (Empty!14588) )
))
(declare-datatypes ((BalanceConc!28618 0))(
  ( (BalanceConc!28619 (c!828436 Conc!14588)) )
))
(declare-fun size!36897 (BalanceConc!28618) Int)

(assert (=> b!4870662 (= c!828433 (> (size!36897 (BalanceConc!28619 Empty!14588)) 0))))

(declare-fun b!4870663 () Bool)

(declare-fun res!2079155 () Bool)

(assert (=> b!4870663 (=> (not res!2079155) (not e!3044791))))

(declare-fun rulesInvariant!6730 (LexerInterface!7632 List!56098) Bool)

(assert (=> b!4870663 (= res!2079155 (rulesInvariant!6730 thiss!11460 rules!1164))))

(assert (=> b!4870664 (= e!3044790 (and tp!1370451 tp!1370455))))

(declare-fun b!4870665 () Bool)

(declare-fun res!2079154 () Bool)

(assert (=> b!4870665 (=> (not res!2079154) (not e!3044791))))

(declare-fun isEmpty!29955 (List!56098) Bool)

(assert (=> b!4870665 (= res!2079154 (not (isEmpty!29955 rules!1164)))))

(declare-fun res!2079153 () Bool)

(assert (=> start!509276 (=> (not res!2079153) (not e!3044791))))

(assert (=> start!509276 (= res!2079153 ((_ is Lexer!7630) thiss!11460))))

(assert (=> start!509276 e!3044791))

(assert (=> start!509276 true))

(assert (=> start!509276 e!3044789))

(declare-fun inv!71896 (BalanceConc!28616) Bool)

(assert (=> start!509276 (and (inv!71896 input!585) e!3044794)))

(declare-fun b!4870666 () Bool)

(assert (=> b!4870666 (= e!3044795 true)))

(declare-fun lt!1995726 () List!56097)

(assert (=> b!4870666 (= lt!1995726 (list!17508 input!585))))

(declare-fun b!4870667 () Bool)

(assert (=> b!4870667 (= e!3044795 false)))

(declare-fun lt!1995725 () Int)

(declare-fun size!36898 (BalanceConc!28616) Int)

(assert (=> b!4870667 (= lt!1995725 (size!36898 input!585))))

(assert (= (and start!509276 res!2079153) b!4870665))

(assert (= (and b!4870665 res!2079154) b!4870663))

(assert (= (and b!4870663 res!2079155) b!4870657))

(assert (= (and b!4870657 res!2079152) b!4870662))

(assert (= (and b!4870662 c!828433) b!4870667))

(assert (= (and b!4870662 (not c!828433)) b!4870666))

(assert (= (and b!4870662 res!2079151) b!4870658))

(assert (= b!4870659 b!4870664))

(assert (= b!4870661 b!4870659))

(assert (= (and start!509276 ((_ is Cons!55974) rules!1164)) b!4870661))

(assert (= start!509276 b!4870660))

(declare-fun m!5870916 () Bool)

(assert (=> b!4870660 m!5870916))

(declare-fun m!5870918 () Bool)

(assert (=> start!509276 m!5870918))

(declare-fun m!5870920 () Bool)

(assert (=> b!4870666 m!5870920))

(declare-fun m!5870922 () Bool)

(assert (=> b!4870659 m!5870922))

(declare-fun m!5870924 () Bool)

(assert (=> b!4870659 m!5870924))

(declare-fun m!5870926 () Bool)

(assert (=> b!4870657 m!5870926))

(declare-fun m!5870928 () Bool)

(assert (=> b!4870665 m!5870928))

(declare-fun m!5870930 () Bool)

(assert (=> b!4870667 m!5870930))

(declare-fun m!5870932 () Bool)

(assert (=> b!4870663 m!5870932))

(assert (=> b!4870658 m!5870920))

(declare-fun m!5870934 () Bool)

(assert (=> b!4870662 m!5870934))

(check-sat (not b!4870663) (not b!4870662) (not b!4870665) (not b!4870657) b_and!342997 b_and!342995 (not b!4870666) (not b!4870660) (not b!4870667) (not b!4870659) (not b!4870661) (not b!4870658) (not start!509276) (not b_next!131507) (not b_next!131505))
(check-sat b_and!342997 b_and!342995 (not b_next!131505) (not b_next!131507))
