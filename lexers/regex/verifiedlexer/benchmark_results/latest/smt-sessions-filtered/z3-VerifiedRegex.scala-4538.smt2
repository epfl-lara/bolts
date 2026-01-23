; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!240470 () Bool)

(assert start!240470)

(declare-fun b!2465595 () Bool)

(declare-fun b_free!70869 () Bool)

(declare-fun b_next!71573 () Bool)

(assert (=> b!2465595 (= b_free!70869 (not b_next!71573))))

(declare-fun tp!786278 () Bool)

(declare-fun b_and!186293 () Bool)

(assert (=> b!2465595 (= tp!786278 b_and!186293)))

(declare-fun b_free!70871 () Bool)

(declare-fun b_next!71575 () Bool)

(assert (=> b!2465595 (= b_free!70871 (not b_next!71575))))

(declare-fun tp!786285 () Bool)

(declare-fun b_and!186295 () Bool)

(assert (=> b!2465595 (= tp!786285 b_and!186295)))

(declare-fun b!2465606 () Bool)

(declare-fun b_free!70873 () Bool)

(declare-fun b_next!71577 () Bool)

(assert (=> b!2465606 (= b_free!70873 (not b_next!71577))))

(declare-fun tp!786274 () Bool)

(declare-fun b_and!186297 () Bool)

(assert (=> b!2465606 (= tp!786274 b_and!186297)))

(declare-fun b_free!70875 () Bool)

(declare-fun b_next!71579 () Bool)

(assert (=> b!2465606 (= b_free!70875 (not b_next!71579))))

(declare-fun tp!786282 () Bool)

(declare-fun b_and!186299 () Bool)

(assert (=> b!2465606 (= tp!786282 b_and!186299)))

(declare-fun b!2465602 () Bool)

(declare-fun b_free!70877 () Bool)

(declare-fun b_next!71581 () Bool)

(assert (=> b!2465602 (= b_free!70877 (not b_next!71581))))

(declare-fun tp!786279 () Bool)

(declare-fun b_and!186301 () Bool)

(assert (=> b!2465602 (= tp!786279 b_and!186301)))

(declare-fun b_free!70879 () Bool)

(declare-fun b_next!71583 () Bool)

(assert (=> b!2465602 (= b_free!70879 (not b_next!71583))))

(declare-fun tp!786272 () Bool)

(declare-fun b_and!186303 () Bool)

(assert (=> b!2465602 (= tp!786272 b_and!186303)))

(declare-fun b!2465618 () Bool)

(declare-fun b_free!70881 () Bool)

(declare-fun b_next!71585 () Bool)

(assert (=> b!2465618 (= b_free!70881 (not b_next!71585))))

(declare-fun tp!786277 () Bool)

(declare-fun b_and!186305 () Bool)

(assert (=> b!2465618 (= tp!786277 b_and!186305)))

(declare-fun b_free!70883 () Bool)

(declare-fun b_next!71587 () Bool)

(assert (=> b!2465618 (= b_free!70883 (not b_next!71587))))

(declare-fun tp!786271 () Bool)

(declare-fun b_and!186307 () Bool)

(assert (=> b!2465618 (= tp!786271 b_and!186307)))

(declare-fun res!1044309 () Bool)

(declare-fun e!1563576 () Bool)

(assert (=> start!240470 (=> (not res!1044309) (not e!1563576))))

(declare-datatypes ((LexerInterface!4060 0))(
  ( (LexerInterfaceExt!4057 (__x!18553 Int)) (Lexer!4058) )
))
(declare-fun thiss!27932 () LexerInterface!4060)

(get-info :version)

(assert (=> start!240470 (= res!1044309 ((_ is Lexer!4058) thiss!27932))))

(assert (=> start!240470 e!1563576))

(assert (=> start!240470 true))

(declare-fun e!1563577 () Bool)

(assert (=> start!240470 e!1563577))

(declare-datatypes ((List!28796 0))(
  ( (Nil!28696) (Cons!28696 (h!34097 (_ BitVec 16)) (t!209303 List!28796)) )
))
(declare-datatypes ((TokenValue!4649 0))(
  ( (FloatLiteralValue!9298 (text!32988 List!28796)) (TokenValueExt!4648 (__x!18554 Int)) (Broken!23245 (value!142575 List!28796)) (Object!4748) (End!4649) (Def!4649) (Underscore!4649) (Match!4649) (Else!4649) (Error!4649) (Case!4649) (If!4649) (Extends!4649) (Abstract!4649) (Class!4649) (Val!4649) (DelimiterValue!9298 (del!4709 List!28796)) (KeywordValue!4655 (value!142576 List!28796)) (CommentValue!9298 (value!142577 List!28796)) (WhitespaceValue!9298 (value!142578 List!28796)) (IndentationValue!4649 (value!142579 List!28796)) (String!31540) (Int32!4649) (Broken!23246 (value!142580 List!28796)) (Boolean!4650) (Unit!42044) (OperatorValue!4652 (op!4709 List!28796)) (IdentifierValue!9298 (value!142581 List!28796)) (IdentifierValue!9299 (value!142582 List!28796)) (WhitespaceValue!9299 (value!142583 List!28796)) (True!9298) (False!9298) (Broken!23247 (value!142584 List!28796)) (Broken!23248 (value!142585 List!28796)) (True!9299) (RightBrace!4649) (RightBracket!4649) (Colon!4649) (Null!4649) (Comma!4649) (LeftBracket!4649) (False!9299) (LeftBrace!4649) (ImaginaryLiteralValue!4649 (text!32989 List!28796)) (StringLiteralValue!13947 (value!142586 List!28796)) (EOFValue!4649 (value!142587 List!28796)) (IdentValue!4649 (value!142588 List!28796)) (DelimiterValue!9299 (value!142589 List!28796)) (DedentValue!4649 (value!142590 List!28796)) (NewLineValue!4649 (value!142591 List!28796)) (IntegerValue!13947 (value!142592 (_ BitVec 32)) (text!32990 List!28796)) (IntegerValue!13948 (value!142593 Int) (text!32991 List!28796)) (Times!4649) (Or!4649) (Equal!4649) (Minus!4649) (Broken!23249 (value!142594 List!28796)) (And!4649) (Div!4649) (LessEqual!4649) (Mod!4649) (Concat!11900) (Not!4649) (Plus!4649) (SpaceValue!4649 (value!142595 List!28796)) (IntegerValue!13949 (value!142596 Int) (text!32992 List!28796)) (StringLiteralValue!13948 (text!32993 List!28796)) (FloatLiteralValue!9299 (text!32994 List!28796)) (BytesLiteralValue!4649 (value!142597 List!28796)) (CommentValue!9299 (value!142598 List!28796)) (StringLiteralValue!13949 (value!142599 List!28796)) (ErrorTokenValue!4649 (msg!4710 List!28796)) )
))
(declare-datatypes ((C!14660 0))(
  ( (C!14661 (val!8590 Int)) )
))
(declare-datatypes ((List!28797 0))(
  ( (Nil!28697) (Cons!28697 (h!34098 C!14660) (t!209304 List!28797)) )
))
(declare-datatypes ((IArray!18351 0))(
  ( (IArray!18352 (innerList!9233 List!28797)) )
))
(declare-datatypes ((Conc!9173 0))(
  ( (Node!9173 (left!22039 Conc!9173) (right!22369 Conc!9173) (csize!18576 Int) (cheight!9384 Int)) (Leaf!13712 (xs!12153 IArray!18351) (csize!18577 Int)) (Empty!9173) )
))
(declare-datatypes ((BalanceConc!17960 0))(
  ( (BalanceConc!17961 (c!393228 Conc!9173)) )
))
(declare-datatypes ((Regex!7251 0))(
  ( (ElementMatch!7251 (c!393229 C!14660)) (Concat!11901 (regOne!15014 Regex!7251) (regTwo!15014 Regex!7251)) (EmptyExpr!7251) (Star!7251 (reg!7580 Regex!7251)) (EmptyLang!7251) (Union!7251 (regOne!15015 Regex!7251) (regTwo!15015 Regex!7251)) )
))
(declare-datatypes ((String!31541 0))(
  ( (String!31542 (value!142600 String)) )
))
(declare-datatypes ((TokenValueInjection!8798 0))(
  ( (TokenValueInjection!8799 (toValue!6323 Int) (toChars!6182 Int)) )
))
(declare-datatypes ((Rule!8726 0))(
  ( (Rule!8727 (regex!4463 Regex!7251) (tag!4953 String!31541) (isSeparator!4463 Bool) (transformation!4463 TokenValueInjection!8798)) )
))
(declare-datatypes ((Token!8396 0))(
  ( (Token!8397 (value!142601 TokenValue!4649) (rule!6821 Rule!8726) (size!22338 Int) (originalCharacters!5229 List!28797)) )
))
(declare-fun t2!67 () Token!8396)

(declare-fun e!1563581 () Bool)

(declare-fun inv!38786 (Token!8396) Bool)

(assert (=> start!240470 (and (inv!38786 t2!67) e!1563581)))

(declare-fun e!1563575 () Bool)

(assert (=> start!240470 e!1563575))

(declare-fun t1!67 () Token!8396)

(declare-fun e!1563579 () Bool)

(assert (=> start!240470 (and (inv!38786 t1!67) e!1563579)))

(declare-fun e!1563571 () Bool)

(assert (=> b!2465595 (= e!1563571 (and tp!786278 tp!786285))))

(declare-fun b!2465596 () Bool)

(declare-fun e!1563582 () Bool)

(declare-fun tp!786273 () Bool)

(assert (=> b!2465596 (= e!1563577 (and e!1563582 tp!786273))))

(declare-fun tp!786281 () Bool)

(declare-fun e!1563583 () Bool)

(declare-fun e!1563567 () Bool)

(declare-fun b!2465597 () Bool)

(declare-fun inv!38783 (String!31541) Bool)

(declare-fun inv!38787 (TokenValueInjection!8798) Bool)

(assert (=> b!2465597 (= e!1563583 (and tp!786281 (inv!38783 (tag!4953 (rule!6821 t2!67))) (inv!38787 (transformation!4463 (rule!6821 t2!67))) e!1563567))))

(declare-fun b!2465598 () Bool)

(declare-fun res!1044314 () Bool)

(assert (=> b!2465598 (=> (not res!1044314) (not e!1563576))))

(declare-datatypes ((List!28798 0))(
  ( (Nil!28698) (Cons!28698 (h!34099 Rule!8726) (t!209305 List!28798)) )
))
(declare-fun rules!4472 () List!28798)

(declare-fun rulesInvariant!3560 (LexerInterface!4060 List!28798) Bool)

(assert (=> b!2465598 (= res!1044314 (rulesInvariant!3560 thiss!27932 rules!4472))))

(declare-fun b!2465599 () Bool)

(declare-fun res!1044312 () Bool)

(assert (=> b!2465599 (=> (not res!1044312) (not e!1563576))))

(declare-fun i!1803 () Int)

(assert (=> b!2465599 (= res!1044312 (= i!1803 0))))

(declare-fun b!2465600 () Bool)

(declare-fun res!1044318 () Bool)

(assert (=> b!2465600 (=> (not res!1044318) (not e!1563576))))

(declare-fun isEmpty!16685 (List!28798) Bool)

(assert (=> b!2465600 (= res!1044318 (not (isEmpty!16685 rules!4472)))))

(declare-fun e!1563572 () Bool)

(declare-fun tp!786283 () Bool)

(declare-fun b!2465601 () Bool)

(declare-datatypes ((List!28799 0))(
  ( (Nil!28699) (Cons!28699 (h!34100 Token!8396) (t!209306 List!28799)) )
))
(declare-fun l!6611 () List!28799)

(assert (=> b!2465601 (= e!1563572 (and tp!786283 (inv!38783 (tag!4953 (rule!6821 (h!34100 l!6611)))) (inv!38787 (transformation!4463 (rule!6821 (h!34100 l!6611)))) e!1563571))))

(declare-fun e!1563574 () Bool)

(assert (=> b!2465602 (= e!1563574 (and tp!786279 tp!786272))))

(declare-fun b!2465603 () Bool)

(declare-fun res!1044315 () Bool)

(assert (=> b!2465603 (=> (not res!1044315) (not e!1563576))))

(declare-fun apply!6747 (List!28799 Int) Token!8396)

(assert (=> b!2465603 (= res!1044315 (= (apply!6747 l!6611 (+ 1 i!1803)) t2!67))))

(declare-fun b!2465604 () Bool)

(declare-fun res!1044310 () Bool)

(assert (=> b!2465604 (=> (not res!1044310) (not e!1563576))))

(declare-fun separableTokensPredicate!840 (LexerInterface!4060 Token!8396 Token!8396 List!28798) Bool)

(assert (=> b!2465604 (= res!1044310 (separableTokensPredicate!840 thiss!27932 t1!67 t2!67 rules!4472))))

(declare-fun e!1563578 () Bool)

(declare-fun b!2465605 () Bool)

(declare-fun tp!786284 () Bool)

(declare-fun e!1563585 () Bool)

(assert (=> b!2465605 (= e!1563585 (and tp!786284 (inv!38783 (tag!4953 (rule!6821 t1!67))) (inv!38787 (transformation!4463 (rule!6821 t1!67))) e!1563578))))

(assert (=> b!2465606 (= e!1563578 (and tp!786274 tp!786282))))

(declare-fun b!2465607 () Bool)

(declare-fun res!1044313 () Bool)

(assert (=> b!2465607 (=> (not res!1044313) (not e!1563576))))

(assert (=> b!2465607 (= res!1044313 (= (apply!6747 l!6611 i!1803) t1!67))))

(declare-fun e!1563568 () Bool)

(declare-fun b!2465608 () Bool)

(declare-fun tp!786280 () Bool)

(assert (=> b!2465608 (= e!1563575 (and (inv!38786 (h!34100 l!6611)) e!1563568 tp!786280))))

(declare-fun b!2465609 () Bool)

(declare-fun tp!786275 () Bool)

(assert (=> b!2465609 (= e!1563582 (and tp!786275 (inv!38783 (tag!4953 (h!34099 rules!4472))) (inv!38787 (transformation!4463 (h!34099 rules!4472))) e!1563574))))

(declare-fun tp!786269 () Bool)

(declare-fun b!2465610 () Bool)

(declare-fun inv!21 (TokenValue!4649) Bool)

(assert (=> b!2465610 (= e!1563581 (and (inv!21 (value!142601 t2!67)) e!1563583 tp!786269))))

(declare-fun b!2465611 () Bool)

(declare-fun res!1044317 () Bool)

(assert (=> b!2465611 (=> (not res!1044317) (not e!1563576))))

(assert (=> b!2465611 (= res!1044317 (>= i!1803 0))))

(declare-fun b!2465612 () Bool)

(declare-fun res!1044316 () Bool)

(assert (=> b!2465612 (=> (not res!1044316) (not e!1563576))))

(declare-fun tokensListTwoByTwoPredicateSeparableList!599 (LexerInterface!4060 List!28799 List!28798) Bool)

(assert (=> b!2465612 (= res!1044316 (tokensListTwoByTwoPredicateSeparableList!599 thiss!27932 l!6611 rules!4472))))

(declare-fun b!2465613 () Bool)

(assert (=> b!2465613 (= e!1563576 false)))

(declare-fun lt!882178 () Bool)

(declare-fun contains!4899 (List!28799 Token!8396) Bool)

(assert (=> b!2465613 (= lt!882178 (contains!4899 l!6611 t1!67))))

(declare-fun b!2465614 () Bool)

(declare-fun res!1044319 () Bool)

(assert (=> b!2465614 (=> (not res!1044319) (not e!1563576))))

(declare-fun size!22339 (List!28799) Int)

(assert (=> b!2465614 (= res!1044319 (< (+ 1 i!1803) (size!22339 l!6611)))))

(declare-fun b!2465615 () Bool)

(declare-fun tp!786270 () Bool)

(assert (=> b!2465615 (= e!1563568 (and (inv!21 (value!142601 (h!34100 l!6611))) e!1563572 tp!786270))))

(declare-fun b!2465616 () Bool)

(declare-fun tp!786276 () Bool)

(assert (=> b!2465616 (= e!1563579 (and (inv!21 (value!142601 t1!67)) e!1563585 tp!786276))))

(declare-fun b!2465617 () Bool)

(declare-fun res!1044311 () Bool)

(assert (=> b!2465617 (=> (not res!1044311) (not e!1563576))))

(declare-fun rulesProduceEachTokenIndividuallyList!1376 (LexerInterface!4060 List!28798 List!28799) Bool)

(assert (=> b!2465617 (= res!1044311 (rulesProduceEachTokenIndividuallyList!1376 thiss!27932 rules!4472 l!6611))))

(assert (=> b!2465618 (= e!1563567 (and tp!786277 tp!786271))))

(assert (= (and start!240470 res!1044309) b!2465600))

(assert (= (and b!2465600 res!1044318) b!2465598))

(assert (= (and b!2465598 res!1044314) b!2465617))

(assert (= (and b!2465617 res!1044311) b!2465612))

(assert (= (and b!2465612 res!1044316) b!2465611))

(assert (= (and b!2465611 res!1044317) b!2465614))

(assert (= (and b!2465614 res!1044319) b!2465607))

(assert (= (and b!2465607 res!1044313) b!2465603))

(assert (= (and b!2465603 res!1044315) b!2465599))

(assert (= (and b!2465599 res!1044312) b!2465604))

(assert (= (and b!2465604 res!1044310) b!2465613))

(assert (= b!2465609 b!2465602))

(assert (= b!2465596 b!2465609))

(assert (= (and start!240470 ((_ is Cons!28698) rules!4472)) b!2465596))

(assert (= b!2465597 b!2465618))

(assert (= b!2465610 b!2465597))

(assert (= start!240470 b!2465610))

(assert (= b!2465601 b!2465595))

(assert (= b!2465615 b!2465601))

(assert (= b!2465608 b!2465615))

(assert (= (and start!240470 ((_ is Cons!28699) l!6611)) b!2465608))

(assert (= b!2465605 b!2465606))

(assert (= b!2465616 b!2465605))

(assert (= start!240470 b!2465616))

(declare-fun m!2835145 () Bool)

(assert (=> b!2465600 m!2835145))

(declare-fun m!2835147 () Bool)

(assert (=> b!2465603 m!2835147))

(declare-fun m!2835149 () Bool)

(assert (=> b!2465610 m!2835149))

(declare-fun m!2835151 () Bool)

(assert (=> start!240470 m!2835151))

(declare-fun m!2835153 () Bool)

(assert (=> start!240470 m!2835153))

(declare-fun m!2835155 () Bool)

(assert (=> b!2465597 m!2835155))

(declare-fun m!2835157 () Bool)

(assert (=> b!2465597 m!2835157))

(declare-fun m!2835159 () Bool)

(assert (=> b!2465617 m!2835159))

(declare-fun m!2835161 () Bool)

(assert (=> b!2465604 m!2835161))

(declare-fun m!2835163 () Bool)

(assert (=> b!2465616 m!2835163))

(declare-fun m!2835165 () Bool)

(assert (=> b!2465615 m!2835165))

(declare-fun m!2835167 () Bool)

(assert (=> b!2465614 m!2835167))

(declare-fun m!2835169 () Bool)

(assert (=> b!2465609 m!2835169))

(declare-fun m!2835171 () Bool)

(assert (=> b!2465609 m!2835171))

(declare-fun m!2835173 () Bool)

(assert (=> b!2465601 m!2835173))

(declare-fun m!2835175 () Bool)

(assert (=> b!2465601 m!2835175))

(declare-fun m!2835177 () Bool)

(assert (=> b!2465612 m!2835177))

(declare-fun m!2835179 () Bool)

(assert (=> b!2465605 m!2835179))

(declare-fun m!2835181 () Bool)

(assert (=> b!2465605 m!2835181))

(declare-fun m!2835183 () Bool)

(assert (=> b!2465598 m!2835183))

(declare-fun m!2835185 () Bool)

(assert (=> b!2465613 m!2835185))

(declare-fun m!2835187 () Bool)

(assert (=> b!2465608 m!2835187))

(declare-fun m!2835189 () Bool)

(assert (=> b!2465607 m!2835189))

(check-sat (not b!2465605) b_and!186297 (not b!2465607) (not b!2465596) (not b_next!71585) (not b!2465598) (not b_next!71573) b_and!186303 (not b_next!71587) (not b!2465615) (not start!240470) (not b_next!71577) (not b_next!71581) (not b_next!71575) b_and!186299 (not b!2465610) (not b!2465612) (not b_next!71579) b_and!186295 (not b_next!71583) b_and!186293 (not b!2465601) (not b!2465609) b_and!186307 (not b!2465616) (not b!2465597) b_and!186305 (not b!2465613) b_and!186301 (not b!2465603) (not b!2465614) (not b!2465600) (not b!2465608) (not b!2465617) (not b!2465604))
(check-sat b_and!186297 (not b_next!71585) (not b_next!71573) b_and!186307 b_and!186305 b_and!186303 b_and!186301 (not b_next!71587) (not b_next!71577) (not b_next!71581) (not b_next!71575) b_and!186299 (not b_next!71579) b_and!186295 (not b_next!71583) b_and!186293)
