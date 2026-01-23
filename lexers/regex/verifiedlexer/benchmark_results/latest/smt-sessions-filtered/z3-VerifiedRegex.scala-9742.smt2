; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!510656 () Bool)

(assert start!510656)

(declare-fun b!4881115 () Bool)

(declare-fun b_free!130859 () Bool)

(declare-fun b_next!131649 () Bool)

(assert (=> b!4881115 (= b_free!130859 (not b_next!131649))))

(declare-fun tp!1373139 () Bool)

(declare-fun b_and!343691 () Bool)

(assert (=> b!4881115 (= tp!1373139 b_and!343691)))

(declare-fun b_free!130861 () Bool)

(declare-fun b_next!131651 () Bool)

(assert (=> b!4881115 (= b_free!130861 (not b_next!131651))))

(declare-fun tp!1373136 () Bool)

(declare-fun b_and!343693 () Bool)

(assert (=> b!4881115 (= tp!1373136 b_and!343693)))

(declare-fun b!4881113 () Bool)

(declare-fun e!3050467 () Bool)

(declare-datatypes ((String!63251 0))(
  ( (String!63252 (value!258615 String)) )
))
(declare-datatypes ((C!26452 0))(
  ( (C!26453 (val!22560 Int)) )
))
(declare-datatypes ((List!56161 0))(
  ( (Nil!56037) (Cons!56037 (h!62485 C!26452) (t!364807 List!56161)) )
))
(declare-datatypes ((IArray!29301 0))(
  ( (IArray!29302 (innerList!14708 List!56161)) )
))
(declare-datatypes ((Conc!14620 0))(
  ( (Node!14620 (left!40716 Conc!14620) (right!41046 Conc!14620) (csize!29470 Int) (cheight!14831 Int)) (Leaf!24363 (xs!17936 IArray!29301) (csize!29471 Int)) (Empty!14620) )
))
(declare-datatypes ((BalanceConc!28670 0))(
  ( (BalanceConc!28671 (c!830265 Conc!14620)) )
))
(declare-datatypes ((List!56162 0))(
  ( (Nil!56038) (Cons!56038 (h!62486 (_ BitVec 16)) (t!364808 List!56162)) )
))
(declare-datatypes ((TokenValue!8362 0))(
  ( (FloatLiteralValue!16724 (text!58979 List!56162)) (TokenValueExt!8361 (__x!34017 Int)) (Broken!41810 (value!258616 List!56162)) (Object!8485) (End!8362) (Def!8362) (Underscore!8362) (Match!8362) (Else!8362) (Error!8362) (Case!8362) (If!8362) (Extends!8362) (Abstract!8362) (Class!8362) (Val!8362) (DelimiterValue!16724 (del!8422 List!56162)) (KeywordValue!8368 (value!258617 List!56162)) (CommentValue!16724 (value!258618 List!56162)) (WhitespaceValue!16724 (value!258619 List!56162)) (IndentationValue!8362 (value!258620 List!56162)) (String!63253) (Int32!8362) (Broken!41811 (value!258621 List!56162)) (Boolean!8363) (Unit!146029) (OperatorValue!8365 (op!8422 List!56162)) (IdentifierValue!16724 (value!258622 List!56162)) (IdentifierValue!16725 (value!258623 List!56162)) (WhitespaceValue!16725 (value!258624 List!56162)) (True!16724) (False!16724) (Broken!41812 (value!258625 List!56162)) (Broken!41813 (value!258626 List!56162)) (True!16725) (RightBrace!8362) (RightBracket!8362) (Colon!8362) (Null!8362) (Comma!8362) (LeftBracket!8362) (False!16725) (LeftBrace!8362) (ImaginaryLiteralValue!8362 (text!58980 List!56162)) (StringLiteralValue!25086 (value!258627 List!56162)) (EOFValue!8362 (value!258628 List!56162)) (IdentValue!8362 (value!258629 List!56162)) (DelimiterValue!16725 (value!258630 List!56162)) (DedentValue!8362 (value!258631 List!56162)) (NewLineValue!8362 (value!258632 List!56162)) (IntegerValue!25086 (value!258633 (_ BitVec 32)) (text!58981 List!56162)) (IntegerValue!25087 (value!258634 Int) (text!58982 List!56162)) (Times!8362) (Or!8362) (Equal!8362) (Minus!8362) (Broken!41814 (value!258635 List!56162)) (And!8362) (Div!8362) (LessEqual!8362) (Mod!8362) (Concat!21489) (Not!8362) (Plus!8362) (SpaceValue!8362 (value!258636 List!56162)) (IntegerValue!25088 (value!258637 Int) (text!58983 List!56162)) (StringLiteralValue!25087 (text!58984 List!56162)) (FloatLiteralValue!16725 (text!58985 List!56162)) (BytesLiteralValue!8362 (value!258638 List!56162)) (CommentValue!16725 (value!258639 List!56162)) (StringLiteralValue!25088 (value!258640 List!56162)) (ErrorTokenValue!8362 (msg!8423 List!56162)) )
))
(declare-datatypes ((Regex!13127 0))(
  ( (ElementMatch!13127 (c!830266 C!26452)) (Concat!21490 (regOne!26766 Regex!13127) (regTwo!26766 Regex!13127)) (EmptyExpr!13127) (Star!13127 (reg!13456 Regex!13127)) (EmptyLang!13127) (Union!13127 (regOne!26767 Regex!13127) (regTwo!26767 Regex!13127)) )
))
(declare-datatypes ((TokenValueInjection!16032 0))(
  ( (TokenValueInjection!16033 (toValue!10939 Int) (toChars!10798 Int)) )
))
(declare-datatypes ((Rule!15904 0))(
  ( (Rule!15905 (regex!8052 Regex!13127) (tag!8916 String!63251) (isSeparator!8052 Bool) (transformation!8052 TokenValueInjection!16032)) )
))
(declare-datatypes ((List!56163 0))(
  ( (Nil!56039) (Cons!56039 (h!62487 Rule!15904) (t!364809 List!56163)) )
))
(declare-fun rulesArg!165 () List!56163)

(declare-fun e!3050469 () Bool)

(declare-fun tp!1373137 () Bool)

(declare-fun inv!72031 (String!63251) Bool)

(declare-fun inv!72035 (TokenValueInjection!16032) Bool)

(assert (=> b!4881113 (= e!3050467 (and tp!1373137 (inv!72031 (tag!8916 (h!62487 rulesArg!165))) (inv!72035 (transformation!8052 (h!62487 rulesArg!165))) e!3050469))))

(declare-fun res!2083567 () Bool)

(declare-fun e!3050470 () Bool)

(assert (=> start!510656 (=> (not res!2083567) (not e!3050470))))

(declare-datatypes ((LexerInterface!7644 0))(
  ( (LexerInterfaceExt!7641 (__x!34018 Int)) (Lexer!7642) )
))
(declare-fun thiss!14805 () LexerInterface!7644)

(get-info :version)

(assert (=> start!510656 (= res!2083567 ((_ is Lexer!7642) thiss!14805))))

(assert (=> start!510656 e!3050470))

(assert (=> start!510656 true))

(declare-fun e!3050466 () Bool)

(assert (=> start!510656 e!3050466))

(declare-fun input!1236 () BalanceConc!28670)

(declare-fun e!3050468 () Bool)

(declare-fun inv!72036 (BalanceConc!28670) Bool)

(assert (=> start!510656 (and (inv!72036 input!1236) e!3050468)))

(declare-fun b!4881114 () Bool)

(declare-fun res!2083568 () Bool)

(assert (=> b!4881114 (=> (not res!2083568) (not e!3050470))))

(declare-fun rulesValidInductive!3031 (LexerInterface!7644 List!56163) Bool)

(assert (=> b!4881114 (= res!2083568 (rulesValidInductive!3031 thiss!14805 rulesArg!165))))

(assert (=> b!4881115 (= e!3050469 (and tp!1373139 tp!1373136))))

(declare-fun b!4881116 () Bool)

(assert (=> b!4881116 (= e!3050470 false)))

(declare-fun lt!1999380 () List!56161)

(declare-fun list!17569 (BalanceConc!28670) List!56161)

(assert (=> b!4881116 (= lt!1999380 (list!17569 input!1236))))

(declare-fun b!4881117 () Bool)

(declare-fun tp!1373138 () Bool)

(assert (=> b!4881117 (= e!3050466 (and e!3050467 tp!1373138))))

(declare-fun b!4881118 () Bool)

(declare-fun tp!1373135 () Bool)

(declare-fun inv!72037 (Conc!14620) Bool)

(assert (=> b!4881118 (= e!3050468 (and (inv!72037 (c!830265 input!1236)) tp!1373135))))

(declare-fun b!4881119 () Bool)

(declare-fun res!2083566 () Bool)

(assert (=> b!4881119 (=> (not res!2083566) (not e!3050470))))

(declare-fun isEmpty!30035 (List!56163) Bool)

(assert (=> b!4881119 (= res!2083566 (not (isEmpty!30035 rulesArg!165)))))

(assert (= (and start!510656 res!2083567) b!4881114))

(assert (= (and b!4881114 res!2083568) b!4881119))

(assert (= (and b!4881119 res!2083566) b!4881116))

(assert (= b!4881113 b!4881115))

(assert (= b!4881117 b!4881113))

(assert (= (and start!510656 ((_ is Cons!56039) rulesArg!165)) b!4881117))

(assert (= start!510656 b!4881118))

(declare-fun m!5885466 () Bool)

(assert (=> b!4881113 m!5885466))

(declare-fun m!5885468 () Bool)

(assert (=> b!4881113 m!5885468))

(declare-fun m!5885470 () Bool)

(assert (=> b!4881118 m!5885470))

(declare-fun m!5885472 () Bool)

(assert (=> start!510656 m!5885472))

(declare-fun m!5885474 () Bool)

(assert (=> b!4881114 m!5885474))

(declare-fun m!5885476 () Bool)

(assert (=> b!4881119 m!5885476))

(declare-fun m!5885478 () Bool)

(assert (=> b!4881116 m!5885478))

(check-sat (not b!4881117) (not b!4881118) (not b!4881114) b_and!343691 (not start!510656) (not b!4881119) (not b_next!131649) (not b!4881113) b_and!343693 (not b_next!131651) (not b!4881116))
(check-sat b_and!343693 b_and!343691 (not b_next!131649) (not b_next!131651))
