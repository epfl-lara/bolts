; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!181946 () Bool)

(assert start!181946)

(declare-fun b!1832696 () Bool)

(declare-fun b_free!51275 () Bool)

(declare-fun b_next!51979 () Bool)

(assert (=> b!1832696 (= b_free!51275 (not b_next!51979))))

(declare-fun tp!518521 () Bool)

(declare-fun b_and!142793 () Bool)

(assert (=> b!1832696 (= tp!518521 b_and!142793)))

(declare-fun b_free!51277 () Bool)

(declare-fun b_next!51981 () Bool)

(assert (=> b!1832696 (= b_free!51277 (not b_next!51981))))

(declare-fun tp!518532 () Bool)

(declare-fun b_and!142795 () Bool)

(assert (=> b!1832696 (= tp!518532 b_and!142795)))

(declare-fun b!1832679 () Bool)

(declare-fun b_free!51279 () Bool)

(declare-fun b_next!51983 () Bool)

(assert (=> b!1832679 (= b_free!51279 (not b_next!51983))))

(declare-fun tp!518524 () Bool)

(declare-fun b_and!142797 () Bool)

(assert (=> b!1832679 (= tp!518524 b_and!142797)))

(declare-fun b_free!51281 () Bool)

(declare-fun b_next!51985 () Bool)

(assert (=> b!1832679 (= b_free!51281 (not b_next!51985))))

(declare-fun tp!518526 () Bool)

(declare-fun b_and!142799 () Bool)

(assert (=> b!1832679 (= tp!518526 b_and!142799)))

(declare-fun b!1832676 () Bool)

(declare-fun b_free!51283 () Bool)

(declare-fun b_next!51987 () Bool)

(assert (=> b!1832676 (= b_free!51283 (not b_next!51987))))

(declare-fun tp!518522 () Bool)

(declare-fun b_and!142801 () Bool)

(assert (=> b!1832676 (= tp!518522 b_and!142801)))

(declare-fun b_free!51285 () Bool)

(declare-fun b_next!51989 () Bool)

(assert (=> b!1832676 (= b_free!51285 (not b_next!51989))))

(declare-fun tp!518535 () Bool)

(declare-fun b_and!142803 () Bool)

(assert (=> b!1832676 (= tp!518535 b_and!142803)))

(declare-fun b!1832675 () Bool)

(declare-fun b_free!51287 () Bool)

(declare-fun b_next!51991 () Bool)

(assert (=> b!1832675 (= b_free!51287 (not b_next!51991))))

(declare-fun tp!518534 () Bool)

(declare-fun b_and!142805 () Bool)

(assert (=> b!1832675 (= tp!518534 b_and!142805)))

(declare-fun b_free!51289 () Bool)

(declare-fun b_next!51993 () Bool)

(assert (=> b!1832675 (= b_free!51289 (not b_next!51993))))

(declare-fun tp!518523 () Bool)

(declare-fun b_and!142807 () Bool)

(assert (=> b!1832675 (= tp!518523 b_and!142807)))

(declare-fun b!1832671 () Bool)

(declare-fun e!1171363 () Bool)

(declare-datatypes ((C!10116 0))(
  ( (C!10117 (val!5654 Int)) )
))
(declare-datatypes ((Regex!4971 0))(
  ( (ElementMatch!4971 (c!298886 C!10116)) (Concat!8704 (regOne!10454 Regex!4971) (regTwo!10454 Regex!4971)) (EmptyExpr!4971) (Star!4971 (reg!5300 Regex!4971)) (EmptyLang!4971) (Union!4971 (regOne!10455 Regex!4971) (regTwo!10455 Regex!4971)) )
))
(declare-datatypes ((List!20223 0))(
  ( (Nil!20153) (Cons!20153 (h!25554 (_ BitVec 16)) (t!170928 List!20223)) )
))
(declare-datatypes ((TokenValue!3733 0))(
  ( (FloatLiteralValue!7466 (text!26576 List!20223)) (TokenValueExt!3732 (__x!12768 Int)) (Broken!18665 (value!113466 List!20223)) (Object!3802) (End!3733) (Def!3733) (Underscore!3733) (Match!3733) (Else!3733) (Error!3733) (Case!3733) (If!3733) (Extends!3733) (Abstract!3733) (Class!3733) (Val!3733) (DelimiterValue!7466 (del!3793 List!20223)) (KeywordValue!3739 (value!113467 List!20223)) (CommentValue!7466 (value!113468 List!20223)) (WhitespaceValue!7466 (value!113469 List!20223)) (IndentationValue!3733 (value!113470 List!20223)) (String!22996) (Int32!3733) (Broken!18666 (value!113471 List!20223)) (Boolean!3734) (Unit!34830) (OperatorValue!3736 (op!3793 List!20223)) (IdentifierValue!7466 (value!113472 List!20223)) (IdentifierValue!7467 (value!113473 List!20223)) (WhitespaceValue!7467 (value!113474 List!20223)) (True!7466) (False!7466) (Broken!18667 (value!113475 List!20223)) (Broken!18668 (value!113476 List!20223)) (True!7467) (RightBrace!3733) (RightBracket!3733) (Colon!3733) (Null!3733) (Comma!3733) (LeftBracket!3733) (False!7467) (LeftBrace!3733) (ImaginaryLiteralValue!3733 (text!26577 List!20223)) (StringLiteralValue!11199 (value!113477 List!20223)) (EOFValue!3733 (value!113478 List!20223)) (IdentValue!3733 (value!113479 List!20223)) (DelimiterValue!7467 (value!113480 List!20223)) (DedentValue!3733 (value!113481 List!20223)) (NewLineValue!3733 (value!113482 List!20223)) (IntegerValue!11199 (value!113483 (_ BitVec 32)) (text!26578 List!20223)) (IntegerValue!11200 (value!113484 Int) (text!26579 List!20223)) (Times!3733) (Or!3733) (Equal!3733) (Minus!3733) (Broken!18669 (value!113485 List!20223)) (And!3733) (Div!3733) (LessEqual!3733) (Mod!3733) (Concat!8705) (Not!3733) (Plus!3733) (SpaceValue!3733 (value!113486 List!20223)) (IntegerValue!11201 (value!113487 Int) (text!26580 List!20223)) (StringLiteralValue!11200 (text!26581 List!20223)) (FloatLiteralValue!7467 (text!26582 List!20223)) (BytesLiteralValue!3733 (value!113488 List!20223)) (CommentValue!7467 (value!113489 List!20223)) (StringLiteralValue!11201 (value!113490 List!20223)) (ErrorTokenValue!3733 (msg!3794 List!20223)) )
))
(declare-datatypes ((List!20224 0))(
  ( (Nil!20154) (Cons!20154 (h!25555 C!10116) (t!170929 List!20224)) )
))
(declare-datatypes ((IArray!13355 0))(
  ( (IArray!13356 (innerList!6735 List!20224)) )
))
(declare-datatypes ((Conc!6675 0))(
  ( (Node!6675 (left!16106 Conc!6675) (right!16436 Conc!6675) (csize!13580 Int) (cheight!6886 Int)) (Leaf!9717 (xs!9551 IArray!13355) (csize!13581 Int)) (Empty!6675) )
))
(declare-datatypes ((BalanceConc!13294 0))(
  ( (BalanceConc!13295 (c!298887 Conc!6675)) )
))
(declare-datatypes ((TokenValueInjection!7126 0))(
  ( (TokenValueInjection!7127 (toValue!5190 Int) (toChars!5049 Int)) )
))
(declare-datatypes ((String!22997 0))(
  ( (String!22998 (value!113491 String)) )
))
(declare-datatypes ((Rule!7086 0))(
  ( (Rule!7087 (regex!3643 Regex!4971) (tag!4057 String!22997) (isSeparator!3643 Bool) (transformation!3643 TokenValueInjection!7126)) )
))
(declare-fun rule!580 () Rule!7086)

(declare-fun lt!711531 () List!20224)

(declare-fun matchR!2434 (Regex!4971 List!20224) Bool)

(assert (=> b!1832671 (= e!1171363 (not (not (matchR!2434 (regex!3643 rule!580) lt!711531))))))

(declare-datatypes ((LexerInterface!3272 0))(
  ( (LexerInterfaceExt!3269 (__x!12769 Int)) (Lexer!3270) )
))
(declare-fun thiss!28318 () LexerInterface!3272)

(declare-fun ruleValid!1133 (LexerInterface!3272 Rule!7086) Bool)

(assert (=> b!1832671 (ruleValid!1133 thiss!28318 rule!580)))

(declare-datatypes ((Unit!34831 0))(
  ( (Unit!34832) )
))
(declare-fun lt!711534 () Unit!34831)

(declare-datatypes ((List!20225 0))(
  ( (Nil!20155) (Cons!20155 (h!25556 Rule!7086) (t!170930 List!20225)) )
))
(declare-fun rules!4610 () List!20225)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!652 (LexerInterface!3272 Rule!7086 List!20225) Unit!34831)

(assert (=> b!1832671 (= lt!711534 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!652 thiss!28318 rule!580 rules!4610))))

(declare-fun b!1832672 () Bool)

(declare-fun res!824109 () Bool)

(declare-fun e!1171362 () Bool)

(assert (=> b!1832672 (=> (not res!824109) (not e!1171362))))

(declare-fun contains!3719 (List!20225 Rule!7086) Bool)

(assert (=> b!1832672 (= res!824109 (contains!3719 rules!4610 rule!580))))

(declare-fun res!824101 () Bool)

(assert (=> start!181946 (=> (not res!824101) (not e!1171362))))

(get-info :version)

(assert (=> start!181946 (= res!824101 ((_ is Lexer!3270) thiss!28318))))

(assert (=> start!181946 e!1171362))

(declare-fun e!1171358 () Bool)

(assert (=> start!181946 e!1171358))

(declare-datatypes ((Token!6840 0))(
  ( (Token!6841 (value!113492 TokenValue!3733) (rule!5819 Rule!7086) (size!15981 Int) (originalCharacters!4451 List!20224)) )
))
(declare-fun token!567 () Token!6840)

(declare-fun e!1171368 () Bool)

(declare-fun inv!26220 (Token!6840) Bool)

(assert (=> start!181946 (and (inv!26220 token!567) e!1171368)))

(assert (=> start!181946 true))

(declare-fun e!1171351 () Bool)

(assert (=> start!181946 e!1171351))

(declare-fun e!1171370 () Bool)

(assert (=> start!181946 e!1171370))

(declare-fun e!1171369 () Bool)

(assert (=> start!181946 e!1171369))

(declare-fun e!1171366 () Bool)

(assert (=> start!181946 e!1171366))

(declare-fun b!1832673 () Bool)

(declare-fun tp_is_empty!8177 () Bool)

(declare-fun tp!518527 () Bool)

(assert (=> b!1832673 (= e!1171351 (and tp_is_empty!8177 tp!518527))))

(declare-fun tp!518520 () Bool)

(declare-fun rs!808 () List!20225)

(declare-fun e!1171360 () Bool)

(declare-fun e!1171354 () Bool)

(declare-fun b!1832674 () Bool)

(declare-fun inv!26217 (String!22997) Bool)

(declare-fun inv!26221 (TokenValueInjection!7126) Bool)

(assert (=> b!1832674 (= e!1171354 (and tp!518520 (inv!26217 (tag!4057 (h!25556 rs!808))) (inv!26221 (transformation!3643 (h!25556 rs!808))) e!1171360))))

(assert (=> b!1832675 (= e!1171360 (and tp!518534 tp!518523))))

(declare-fun e!1171359 () Bool)

(assert (=> b!1832676 (= e!1171359 (and tp!518522 tp!518535))))

(declare-fun b!1832677 () Bool)

(declare-fun res!824100 () Bool)

(declare-fun e!1171350 () Bool)

(assert (=> b!1832677 (=> res!824100 e!1171350)))

(declare-fun lt!711533 () List!20224)

(assert (=> b!1832677 (= res!824100 (not (matchR!2434 (regex!3643 rule!580) lt!711533)))))

(declare-fun b!1832678 () Bool)

(declare-fun res!824104 () Bool)

(declare-fun e!1171367 () Bool)

(assert (=> b!1832678 (=> res!824104 e!1171367)))

(assert (=> b!1832678 (= res!824104 (not (contains!3719 rs!808 rule!580)))))

(declare-fun e!1171357 () Bool)

(assert (=> b!1832679 (= e!1171357 (and tp!518524 tp!518526))))

(declare-fun b!1832680 () Bool)

(declare-fun res!824102 () Bool)

(assert (=> b!1832680 (=> (not res!824102) (not e!1171362))))

(declare-fun suffix!1698 () List!20224)

(declare-fun input!3681 () List!20224)

(declare-datatypes ((tuple2!19610 0))(
  ( (tuple2!19611 (_1!11207 Token!6840) (_2!11207 List!20224)) )
))
(declare-datatypes ((Option!4223 0))(
  ( (None!4222) (Some!4222 (v!25797 tuple2!19610)) )
))
(declare-fun maxPrefix!1820 (LexerInterface!3272 List!20225 List!20224) Option!4223)

(assert (=> b!1832680 (= res!824102 (= (maxPrefix!1820 thiss!28318 rules!4610 input!3681) (Some!4222 (tuple2!19611 token!567 suffix!1698))))))

(declare-fun b!1832681 () Bool)

(declare-fun ListPrimitiveSize!110 (List!20225) Int)

(assert (=> b!1832681 (= e!1171367 (>= (ListPrimitiveSize!110 rs!808) 0))))

(declare-fun b!1832682 () Bool)

(declare-fun tp!518530 () Bool)

(assert (=> b!1832682 (= e!1171366 (and e!1171354 tp!518530))))

(declare-fun e!1171353 () Bool)

(declare-fun tp!518533 () Bool)

(declare-fun b!1832683 () Bool)

(declare-fun inv!21 (TokenValue!3733) Bool)

(assert (=> b!1832683 (= e!1171368 (and (inv!21 (value!113492 token!567)) e!1171353 tp!518533))))

(declare-fun tp!518528 () Bool)

(declare-fun b!1832684 () Bool)

(assert (=> b!1832684 (= e!1171353 (and tp!518528 (inv!26217 (tag!4057 (rule!5819 token!567))) (inv!26221 (transformation!3643 (rule!5819 token!567))) e!1171359))))

(declare-fun b!1832685 () Bool)

(assert (=> b!1832685 (= e!1171350 e!1171367)))

(declare-fun res!824106 () Bool)

(assert (=> b!1832685 (=> res!824106 e!1171367)))

(declare-fun lambda!72022 () Int)

(declare-fun rulesRegex!963 (LexerInterface!3272 List!20225) Regex!4971)

(declare-datatypes ((List!20226 0))(
  ( (Nil!20156) (Cons!20156 (h!25557 Regex!4971) (t!170931 List!20226)) )
))
(declare-fun generalisedUnion!486 (List!20226) Regex!4971)

(declare-fun map!4183 (List!20225 Int) List!20226)

(assert (=> b!1832685 (= res!824106 (not (= (rulesRegex!963 thiss!28318 rules!4610) (generalisedUnion!486 (map!4183 rules!4610 lambda!72022)))))))

(declare-fun lt!711530 () Unit!34831)

(declare-fun lemma!538 (List!20224 Rule!7086 List!20225 List!20224 LexerInterface!3272 Token!6840 List!20225) Unit!34831)

(assert (=> b!1832685 (= lt!711530 (lemma!538 input!3681 rule!580 rules!4610 suffix!1698 thiss!28318 token!567 rules!4610))))

(declare-fun b!1832686 () Bool)

(declare-fun res!824103 () Bool)

(assert (=> b!1832686 (=> (not res!824103) (not e!1171362))))

(assert (=> b!1832686 (= res!824103 (= (rule!5819 token!567) rule!580))))

(declare-fun b!1832687 () Bool)

(declare-fun res!824105 () Bool)

(assert (=> b!1832687 (=> res!824105 e!1171367)))

(declare-fun rulesValid!1390 (LexerInterface!3272 List!20225) Bool)

(assert (=> b!1832687 (= res!824105 (not (rulesValid!1390 thiss!28318 rs!808)))))

(declare-fun b!1832688 () Bool)

(declare-fun res!824110 () Bool)

(assert (=> b!1832688 (=> (not res!824110) (not e!1171362))))

(assert (=> b!1832688 (= res!824110 e!1171363)))

(declare-fun res!824099 () Bool)

(assert (=> b!1832688 (=> (not res!824099) (not e!1171363))))

(declare-fun ++!5467 (List!20224 List!20224) List!20224)

(assert (=> b!1832688 (= res!824099 (= input!3681 (++!5467 lt!711531 suffix!1698)))))

(declare-fun list!8189 (BalanceConc!13294) List!20224)

(declare-fun charsOf!2286 (Token!6840) BalanceConc!13294)

(assert (=> b!1832688 (= lt!711531 (list!8189 (charsOf!2286 token!567)))))

(declare-fun b!1832689 () Bool)

(declare-fun tp!518536 () Bool)

(assert (=> b!1832689 (= e!1171358 (and tp!518536 (inv!26217 (tag!4057 rule!580)) (inv!26221 (transformation!3643 rule!580)) e!1171357))))

(declare-fun tp!518525 () Bool)

(declare-fun e!1171356 () Bool)

(declare-fun b!1832690 () Bool)

(declare-fun e!1171352 () Bool)

(assert (=> b!1832690 (= e!1171356 (and tp!518525 (inv!26217 (tag!4057 (h!25556 rules!4610))) (inv!26221 (transformation!3643 (h!25556 rules!4610))) e!1171352))))

(declare-fun b!1832691 () Bool)

(assert (=> b!1832691 (= e!1171362 (not e!1171350))))

(declare-fun res!824098 () Bool)

(assert (=> b!1832691 (=> res!824098 e!1171350)))

(declare-fun lt!711528 () Option!4223)

(assert (=> b!1832691 (= res!824098 (not (= lt!711528 (Some!4222 (tuple2!19611 token!567 suffix!1698)))))))

(declare-fun lt!711529 () Int)

(declare-fun lt!711527 () TokenValue!3733)

(assert (=> b!1832691 (= lt!711528 (Some!4222 (tuple2!19611 (Token!6841 lt!711527 rule!580 lt!711529 lt!711533) suffix!1698)))))

(declare-fun maxPrefixOneRule!1181 (LexerInterface!3272 Rule!7086 List!20224) Option!4223)

(assert (=> b!1832691 (= lt!711528 (maxPrefixOneRule!1181 thiss!28318 rule!580 input!3681))))

(declare-fun size!15982 (List!20224) Int)

(assert (=> b!1832691 (= lt!711529 (size!15982 lt!711533))))

(declare-fun apply!5431 (TokenValueInjection!7126 BalanceConc!13294) TokenValue!3733)

(declare-fun seqFromList!2600 (List!20224) BalanceConc!13294)

(assert (=> b!1832691 (= lt!711527 (apply!5431 (transformation!3643 rule!580) (seqFromList!2600 lt!711533)))))

(declare-fun lt!711532 () Unit!34831)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!551 (LexerInterface!3272 List!20225 List!20224 List!20224 List!20224 Rule!7086) Unit!34831)

(assert (=> b!1832691 (= lt!711532 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!551 thiss!28318 rules!4610 lt!711533 input!3681 suffix!1698 rule!580))))

(assert (=> b!1832691 (= lt!711533 (list!8189 (charsOf!2286 token!567)))))

(declare-fun b!1832692 () Bool)

(declare-fun tp!518531 () Bool)

(assert (=> b!1832692 (= e!1171369 (and e!1171356 tp!518531))))

(declare-fun b!1832693 () Bool)

(declare-fun res!824107 () Bool)

(assert (=> b!1832693 (=> (not res!824107) (not e!1171362))))

(declare-fun isEmpty!12721 (List!20225) Bool)

(assert (=> b!1832693 (= res!824107 (not (isEmpty!12721 rules!4610)))))

(declare-fun b!1832694 () Bool)

(declare-fun tp!518529 () Bool)

(assert (=> b!1832694 (= e!1171370 (and tp_is_empty!8177 tp!518529))))

(declare-fun b!1832695 () Bool)

(declare-fun res!824108 () Bool)

(assert (=> b!1832695 (=> (not res!824108) (not e!1171362))))

(declare-fun rulesInvariant!2941 (LexerInterface!3272 List!20225) Bool)

(assert (=> b!1832695 (= res!824108 (rulesInvariant!2941 thiss!28318 rules!4610))))

(assert (=> b!1832696 (= e!1171352 (and tp!518521 tp!518532))))

(assert (= (and start!181946 res!824101) b!1832693))

(assert (= (and b!1832693 res!824107) b!1832695))

(assert (= (and b!1832695 res!824108) b!1832672))

(assert (= (and b!1832672 res!824109) b!1832680))

(assert (= (and b!1832680 res!824102) b!1832686))

(assert (= (and b!1832686 res!824103) b!1832688))

(assert (= (and b!1832688 res!824099) b!1832671))

(assert (= (and b!1832688 res!824110) b!1832691))

(assert (= (and b!1832691 (not res!824098)) b!1832677))

(assert (= (and b!1832677 (not res!824100)) b!1832685))

(assert (= (and b!1832685 (not res!824106)) b!1832687))

(assert (= (and b!1832687 (not res!824105)) b!1832678))

(assert (= (and b!1832678 (not res!824104)) b!1832681))

(assert (= b!1832689 b!1832679))

(assert (= start!181946 b!1832689))

(assert (= b!1832684 b!1832676))

(assert (= b!1832683 b!1832684))

(assert (= start!181946 b!1832683))

(assert (= (and start!181946 ((_ is Cons!20154) suffix!1698)) b!1832673))

(assert (= (and start!181946 ((_ is Cons!20154) input!3681)) b!1832694))

(assert (= b!1832690 b!1832696))

(assert (= b!1832692 b!1832690))

(assert (= (and start!181946 ((_ is Cons!20155) rules!4610)) b!1832692))

(assert (= b!1832674 b!1832675))

(assert (= b!1832682 b!1832674))

(assert (= (and start!181946 ((_ is Cons!20155) rs!808)) b!1832682))

(declare-fun m!2260439 () Bool)

(assert (=> b!1832677 m!2260439))

(declare-fun m!2260441 () Bool)

(assert (=> start!181946 m!2260441))

(declare-fun m!2260443 () Bool)

(assert (=> b!1832680 m!2260443))

(declare-fun m!2260445 () Bool)

(assert (=> b!1832693 m!2260445))

(declare-fun m!2260447 () Bool)

(assert (=> b!1832688 m!2260447))

(declare-fun m!2260449 () Bool)

(assert (=> b!1832688 m!2260449))

(assert (=> b!1832688 m!2260449))

(declare-fun m!2260451 () Bool)

(assert (=> b!1832688 m!2260451))

(declare-fun m!2260453 () Bool)

(assert (=> b!1832681 m!2260453))

(declare-fun m!2260455 () Bool)

(assert (=> b!1832695 m!2260455))

(declare-fun m!2260457 () Bool)

(assert (=> b!1832691 m!2260457))

(declare-fun m!2260459 () Bool)

(assert (=> b!1832691 m!2260459))

(declare-fun m!2260461 () Bool)

(assert (=> b!1832691 m!2260461))

(assert (=> b!1832691 m!2260449))

(declare-fun m!2260463 () Bool)

(assert (=> b!1832691 m!2260463))

(assert (=> b!1832691 m!2260461))

(declare-fun m!2260465 () Bool)

(assert (=> b!1832691 m!2260465))

(assert (=> b!1832691 m!2260449))

(assert (=> b!1832691 m!2260451))

(declare-fun m!2260467 () Bool)

(assert (=> b!1832685 m!2260467))

(declare-fun m!2260469 () Bool)

(assert (=> b!1832685 m!2260469))

(assert (=> b!1832685 m!2260469))

(declare-fun m!2260471 () Bool)

(assert (=> b!1832685 m!2260471))

(declare-fun m!2260473 () Bool)

(assert (=> b!1832685 m!2260473))

(declare-fun m!2260475 () Bool)

(assert (=> b!1832683 m!2260475))

(declare-fun m!2260477 () Bool)

(assert (=> b!1832689 m!2260477))

(declare-fun m!2260479 () Bool)

(assert (=> b!1832689 m!2260479))

(declare-fun m!2260481 () Bool)

(assert (=> b!1832674 m!2260481))

(declare-fun m!2260483 () Bool)

(assert (=> b!1832674 m!2260483))

(declare-fun m!2260485 () Bool)

(assert (=> b!1832684 m!2260485))

(declare-fun m!2260487 () Bool)

(assert (=> b!1832684 m!2260487))

(declare-fun m!2260489 () Bool)

(assert (=> b!1832687 m!2260489))

(declare-fun m!2260491 () Bool)

(assert (=> b!1832690 m!2260491))

(declare-fun m!2260493 () Bool)

(assert (=> b!1832690 m!2260493))

(declare-fun m!2260495 () Bool)

(assert (=> b!1832672 m!2260495))

(declare-fun m!2260497 () Bool)

(assert (=> b!1832671 m!2260497))

(declare-fun m!2260499 () Bool)

(assert (=> b!1832671 m!2260499))

(declare-fun m!2260501 () Bool)

(assert (=> b!1832671 m!2260501))

(declare-fun m!2260503 () Bool)

(assert (=> b!1832678 m!2260503))

(check-sat b_and!142807 (not b_next!51987) (not b!1832687) (not b_next!51981) (not b!1832674) (not b!1832692) (not b!1832677) tp_is_empty!8177 b_and!142797 b_and!142805 b_and!142793 (not b_next!51983) b_and!142801 b_and!142799 (not b!1832691) b_and!142803 (not b!1832693) b_and!142795 (not b!1832682) (not b!1832671) (not b!1832680) (not b!1832689) (not b!1832678) (not b!1832683) (not b!1832688) (not b!1832681) (not b_next!51991) (not b_next!51985) (not b_next!51993) (not b_next!51989) (not b!1832684) (not start!181946) (not b!1832685) (not b!1832690) (not b!1832694) (not b_next!51979) (not b!1832695) (not b!1832672) (not b!1832673))
(check-sat b_and!142803 b_and!142807 (not b_next!51987) b_and!142795 (not b_next!51981) (not b_next!51991) (not b_next!51979) b_and!142797 b_and!142805 b_and!142793 (not b_next!51983) b_and!142801 b_and!142799 (not b_next!51985) (not b_next!51993) (not b_next!51989))
(get-model)

(declare-fun d!560332 () Bool)

(assert (=> d!560332 (= (isEmpty!12721 rules!4610) ((_ is Nil!20155) rules!4610))))

(assert (=> b!1832693 d!560332))

(declare-fun d!560334 () Bool)

(declare-fun res!824119 () Bool)

(declare-fun e!1171373 () Bool)

(assert (=> d!560334 (=> (not res!824119) (not e!1171373))))

(declare-fun isEmpty!12723 (List!20224) Bool)

(assert (=> d!560334 (= res!824119 (not (isEmpty!12723 (originalCharacters!4451 token!567))))))

(assert (=> d!560334 (= (inv!26220 token!567) e!1171373)))

(declare-fun b!1832701 () Bool)

(declare-fun res!824120 () Bool)

(assert (=> b!1832701 (=> (not res!824120) (not e!1171373))))

(declare-fun dynLambda!10025 (Int TokenValue!3733) BalanceConc!13294)

(assert (=> b!1832701 (= res!824120 (= (originalCharacters!4451 token!567) (list!8189 (dynLambda!10025 (toChars!5049 (transformation!3643 (rule!5819 token!567))) (value!113492 token!567)))))))

(declare-fun b!1832702 () Bool)

(assert (=> b!1832702 (= e!1171373 (= (size!15981 token!567) (size!15982 (originalCharacters!4451 token!567))))))

(assert (= (and d!560334 res!824119) b!1832701))

(assert (= (and b!1832701 res!824120) b!1832702))

(declare-fun b_lambda!60665 () Bool)

(assert (=> (not b_lambda!60665) (not b!1832701)))

(declare-fun t!170933 () Bool)

(declare-fun tb!112089 () Bool)

(assert (=> (and b!1832696 (= (toChars!5049 (transformation!3643 (h!25556 rules!4610))) (toChars!5049 (transformation!3643 (rule!5819 token!567)))) t!170933) tb!112089))

(declare-fun b!1832707 () Bool)

(declare-fun e!1171376 () Bool)

(declare-fun tp!518539 () Bool)

(declare-fun inv!26224 (Conc!6675) Bool)

(assert (=> b!1832707 (= e!1171376 (and (inv!26224 (c!298887 (dynLambda!10025 (toChars!5049 (transformation!3643 (rule!5819 token!567))) (value!113492 token!567)))) tp!518539))))

(declare-fun result!134788 () Bool)

(declare-fun inv!26225 (BalanceConc!13294) Bool)

(assert (=> tb!112089 (= result!134788 (and (inv!26225 (dynLambda!10025 (toChars!5049 (transformation!3643 (rule!5819 token!567))) (value!113492 token!567))) e!1171376))))

(assert (= tb!112089 b!1832707))

(declare-fun m!2260505 () Bool)

(assert (=> b!1832707 m!2260505))

(declare-fun m!2260507 () Bool)

(assert (=> tb!112089 m!2260507))

(assert (=> b!1832701 t!170933))

(declare-fun b_and!142809 () Bool)

(assert (= b_and!142795 (and (=> t!170933 result!134788) b_and!142809)))

(declare-fun tb!112091 () Bool)

(declare-fun t!170935 () Bool)

(assert (=> (and b!1832679 (= (toChars!5049 (transformation!3643 rule!580)) (toChars!5049 (transformation!3643 (rule!5819 token!567)))) t!170935) tb!112091))

(declare-fun result!134792 () Bool)

(assert (= result!134792 result!134788))

(assert (=> b!1832701 t!170935))

(declare-fun b_and!142811 () Bool)

(assert (= b_and!142799 (and (=> t!170935 result!134792) b_and!142811)))

(declare-fun t!170937 () Bool)

(declare-fun tb!112093 () Bool)

(assert (=> (and b!1832676 (= (toChars!5049 (transformation!3643 (rule!5819 token!567))) (toChars!5049 (transformation!3643 (rule!5819 token!567)))) t!170937) tb!112093))

(declare-fun result!134794 () Bool)

(assert (= result!134794 result!134788))

(assert (=> b!1832701 t!170937))

(declare-fun b_and!142813 () Bool)

(assert (= b_and!142803 (and (=> t!170937 result!134794) b_and!142813)))

(declare-fun t!170939 () Bool)

(declare-fun tb!112095 () Bool)

(assert (=> (and b!1832675 (= (toChars!5049 (transformation!3643 (h!25556 rs!808))) (toChars!5049 (transformation!3643 (rule!5819 token!567)))) t!170939) tb!112095))

(declare-fun result!134796 () Bool)

(assert (= result!134796 result!134788))

(assert (=> b!1832701 t!170939))

(declare-fun b_and!142815 () Bool)

(assert (= b_and!142807 (and (=> t!170939 result!134796) b_and!142815)))

(declare-fun m!2260509 () Bool)

(assert (=> d!560334 m!2260509))

(declare-fun m!2260511 () Bool)

(assert (=> b!1832701 m!2260511))

(assert (=> b!1832701 m!2260511))

(declare-fun m!2260513 () Bool)

(assert (=> b!1832701 m!2260513))

(declare-fun m!2260515 () Bool)

(assert (=> b!1832702 m!2260515))

(assert (=> start!181946 d!560334))

(declare-fun b!1832725 () Bool)

(declare-fun e!1171392 () Bool)

(declare-fun inv!17 (TokenValue!3733) Bool)

(assert (=> b!1832725 (= e!1171392 (inv!17 (value!113492 token!567)))))

(declare-fun b!1832726 () Bool)

(declare-fun e!1171390 () Bool)

(declare-fun inv!16 (TokenValue!3733) Bool)

(assert (=> b!1832726 (= e!1171390 (inv!16 (value!113492 token!567)))))

(declare-fun b!1832727 () Bool)

(assert (=> b!1832727 (= e!1171390 e!1171392)))

(declare-fun c!298893 () Bool)

(assert (=> b!1832727 (= c!298893 ((_ is IntegerValue!11200) (value!113492 token!567)))))

(declare-fun b!1832728 () Bool)

(declare-fun e!1171391 () Bool)

(declare-fun inv!15 (TokenValue!3733) Bool)

(assert (=> b!1832728 (= e!1171391 (inv!15 (value!113492 token!567)))))

(declare-fun b!1832729 () Bool)

(declare-fun res!824130 () Bool)

(assert (=> b!1832729 (=> res!824130 e!1171391)))

(assert (=> b!1832729 (= res!824130 (not ((_ is IntegerValue!11201) (value!113492 token!567))))))

(assert (=> b!1832729 (= e!1171392 e!1171391)))

(declare-fun d!560340 () Bool)

(declare-fun c!298892 () Bool)

(assert (=> d!560340 (= c!298892 ((_ is IntegerValue!11199) (value!113492 token!567)))))

(assert (=> d!560340 (= (inv!21 (value!113492 token!567)) e!1171390)))

(assert (= (and d!560340 c!298892) b!1832726))

(assert (= (and d!560340 (not c!298892)) b!1832727))

(assert (= (and b!1832727 c!298893) b!1832725))

(assert (= (and b!1832727 (not c!298893)) b!1832729))

(assert (= (and b!1832729 (not res!824130)) b!1832728))

(declare-fun m!2260521 () Bool)

(assert (=> b!1832725 m!2260521))

(declare-fun m!2260523 () Bool)

(assert (=> b!1832726 m!2260523))

(declare-fun m!2260525 () Bool)

(assert (=> b!1832728 m!2260525))

(assert (=> b!1832683 d!560340))

(declare-fun d!560344 () Bool)

(declare-fun lt!711540 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!2988 (List!20225) (InoxSet Rule!7086))

(assert (=> d!560344 (= lt!711540 (select (content!2988 rules!4610) rule!580))))

(declare-fun e!1171402 () Bool)

(assert (=> d!560344 (= lt!711540 e!1171402)))

(declare-fun res!824141 () Bool)

(assert (=> d!560344 (=> (not res!824141) (not e!1171402))))

(assert (=> d!560344 (= res!824141 ((_ is Cons!20155) rules!4610))))

(assert (=> d!560344 (= (contains!3719 rules!4610 rule!580) lt!711540)))

(declare-fun b!1832739 () Bool)

(declare-fun e!1171403 () Bool)

(assert (=> b!1832739 (= e!1171402 e!1171403)))

(declare-fun res!824140 () Bool)

(assert (=> b!1832739 (=> res!824140 e!1171403)))

(assert (=> b!1832739 (= res!824140 (= (h!25556 rules!4610) rule!580))))

(declare-fun b!1832740 () Bool)

(assert (=> b!1832740 (= e!1171403 (contains!3719 (t!170930 rules!4610) rule!580))))

(assert (= (and d!560344 res!824141) b!1832739))

(assert (= (and b!1832739 (not res!824140)) b!1832740))

(declare-fun m!2260537 () Bool)

(assert (=> d!560344 m!2260537))

(declare-fun m!2260539 () Bool)

(assert (=> d!560344 m!2260539))

(declare-fun m!2260541 () Bool)

(assert (=> b!1832740 m!2260541))

(assert (=> b!1832672 d!560344))

(declare-fun d!560350 () Bool)

(declare-fun lt!711544 () Int)

(assert (=> d!560350 (>= lt!711544 0)))

(declare-fun e!1171408 () Int)

(assert (=> d!560350 (= lt!711544 e!1171408)))

(declare-fun c!298896 () Bool)

(assert (=> d!560350 (= c!298896 ((_ is Nil!20155) rs!808))))

(assert (=> d!560350 (= (ListPrimitiveSize!110 rs!808) lt!711544)))

(declare-fun b!1832747 () Bool)

(assert (=> b!1832747 (= e!1171408 0)))

(declare-fun b!1832748 () Bool)

(assert (=> b!1832748 (= e!1171408 (+ 1 (ListPrimitiveSize!110 (t!170930 rs!808))))))

(assert (= (and d!560350 c!298896) b!1832747))

(assert (= (and d!560350 (not c!298896)) b!1832748))

(declare-fun m!2260549 () Bool)

(assert (=> b!1832748 m!2260549))

(assert (=> b!1832681 d!560350))

(declare-fun bm!114785 () Bool)

(declare-fun call!114790 () Bool)

(assert (=> bm!114785 (= call!114790 (isEmpty!12723 lt!711531))))

(declare-fun b!1832825 () Bool)

(declare-fun e!1171452 () Bool)

(declare-fun head!4282 (List!20224) C!10116)

(assert (=> b!1832825 (= e!1171452 (= (head!4282 lt!711531) (c!298886 (regex!3643 rule!580))))))

(declare-fun b!1832826 () Bool)

(declare-fun res!824193 () Bool)

(assert (=> b!1832826 (=> (not res!824193) (not e!1171452))))

(declare-fun tail!2741 (List!20224) List!20224)

(assert (=> b!1832826 (= res!824193 (isEmpty!12723 (tail!2741 lt!711531)))))

(declare-fun b!1832827 () Bool)

(declare-fun e!1171450 () Bool)

(declare-fun e!1171451 () Bool)

(assert (=> b!1832827 (= e!1171450 e!1171451)))

(declare-fun res!824197 () Bool)

(assert (=> b!1832827 (=> res!824197 e!1171451)))

(assert (=> b!1832827 (= res!824197 call!114790)))

(declare-fun b!1832828 () Bool)

(declare-fun res!824191 () Bool)

(assert (=> b!1832828 (=> (not res!824191) (not e!1171452))))

(assert (=> b!1832828 (= res!824191 (not call!114790))))

(declare-fun b!1832829 () Bool)

(declare-fun e!1171449 () Bool)

(declare-fun derivativeStep!1311 (Regex!4971 C!10116) Regex!4971)

(assert (=> b!1832829 (= e!1171449 (matchR!2434 (derivativeStep!1311 (regex!3643 rule!580) (head!4282 lt!711531)) (tail!2741 lt!711531)))))

(declare-fun b!1832830 () Bool)

(declare-fun res!824196 () Bool)

(assert (=> b!1832830 (=> res!824196 e!1171451)))

(assert (=> b!1832830 (= res!824196 (not (isEmpty!12723 (tail!2741 lt!711531))))))

(declare-fun b!1832831 () Bool)

(declare-fun res!824192 () Bool)

(declare-fun e!1171448 () Bool)

(assert (=> b!1832831 (=> res!824192 e!1171448)))

(assert (=> b!1832831 (= res!824192 e!1171452)))

(declare-fun res!824195 () Bool)

(assert (=> b!1832831 (=> (not res!824195) (not e!1171452))))

(declare-fun lt!711552 () Bool)

(assert (=> b!1832831 (= res!824195 lt!711552)))

(declare-fun d!560354 () Bool)

(declare-fun e!1171453 () Bool)

(assert (=> d!560354 e!1171453))

(declare-fun c!298914 () Bool)

(assert (=> d!560354 (= c!298914 ((_ is EmptyExpr!4971) (regex!3643 rule!580)))))

(assert (=> d!560354 (= lt!711552 e!1171449)))

(declare-fun c!298912 () Bool)

(assert (=> d!560354 (= c!298912 (isEmpty!12723 lt!711531))))

(declare-fun validRegex!2029 (Regex!4971) Bool)

(assert (=> d!560354 (validRegex!2029 (regex!3643 rule!580))))

(assert (=> d!560354 (= (matchR!2434 (regex!3643 rule!580) lt!711531) lt!711552)))

(declare-fun b!1832832 () Bool)

(assert (=> b!1832832 (= e!1171448 e!1171450)))

(declare-fun res!824190 () Bool)

(assert (=> b!1832832 (=> (not res!824190) (not e!1171450))))

(assert (=> b!1832832 (= res!824190 (not lt!711552))))

(declare-fun b!1832833 () Bool)

(declare-fun res!824194 () Bool)

(assert (=> b!1832833 (=> res!824194 e!1171448)))

(assert (=> b!1832833 (= res!824194 (not ((_ is ElementMatch!4971) (regex!3643 rule!580))))))

(declare-fun e!1171447 () Bool)

(assert (=> b!1832833 (= e!1171447 e!1171448)))

(declare-fun b!1832834 () Bool)

(assert (=> b!1832834 (= e!1171451 (not (= (head!4282 lt!711531) (c!298886 (regex!3643 rule!580)))))))

(declare-fun b!1832835 () Bool)

(assert (=> b!1832835 (= e!1171453 e!1171447)))

(declare-fun c!298913 () Bool)

(assert (=> b!1832835 (= c!298913 ((_ is EmptyLang!4971) (regex!3643 rule!580)))))

(declare-fun b!1832836 () Bool)

(assert (=> b!1832836 (= e!1171447 (not lt!711552))))

(declare-fun b!1832837 () Bool)

(assert (=> b!1832837 (= e!1171453 (= lt!711552 call!114790))))

(declare-fun b!1832838 () Bool)

(declare-fun nullable!1547 (Regex!4971) Bool)

(assert (=> b!1832838 (= e!1171449 (nullable!1547 (regex!3643 rule!580)))))

(assert (= (and d!560354 c!298912) b!1832838))

(assert (= (and d!560354 (not c!298912)) b!1832829))

(assert (= (and d!560354 c!298914) b!1832837))

(assert (= (and d!560354 (not c!298914)) b!1832835))

(assert (= (and b!1832835 c!298913) b!1832836))

(assert (= (and b!1832835 (not c!298913)) b!1832833))

(assert (= (and b!1832833 (not res!824194)) b!1832831))

(assert (= (and b!1832831 res!824195) b!1832828))

(assert (= (and b!1832828 res!824191) b!1832826))

(assert (= (and b!1832826 res!824193) b!1832825))

(assert (= (and b!1832831 (not res!824192)) b!1832832))

(assert (= (and b!1832832 res!824190) b!1832827))

(assert (= (and b!1832827 (not res!824197)) b!1832830))

(assert (= (and b!1832830 (not res!824196)) b!1832834))

(assert (= (or b!1832837 b!1832827 b!1832828) bm!114785))

(declare-fun m!2260569 () Bool)

(assert (=> b!1832825 m!2260569))

(declare-fun m!2260571 () Bool)

(assert (=> b!1832838 m!2260571))

(declare-fun m!2260573 () Bool)

(assert (=> bm!114785 m!2260573))

(assert (=> b!1832834 m!2260569))

(declare-fun m!2260575 () Bool)

(assert (=> b!1832830 m!2260575))

(assert (=> b!1832830 m!2260575))

(declare-fun m!2260577 () Bool)

(assert (=> b!1832830 m!2260577))

(assert (=> b!1832826 m!2260575))

(assert (=> b!1832826 m!2260575))

(assert (=> b!1832826 m!2260577))

(assert (=> b!1832829 m!2260569))

(assert (=> b!1832829 m!2260569))

(declare-fun m!2260579 () Bool)

(assert (=> b!1832829 m!2260579))

(assert (=> b!1832829 m!2260575))

(assert (=> b!1832829 m!2260579))

(assert (=> b!1832829 m!2260575))

(declare-fun m!2260581 () Bool)

(assert (=> b!1832829 m!2260581))

(assert (=> d!560354 m!2260573))

(declare-fun m!2260583 () Bool)

(assert (=> d!560354 m!2260583))

(assert (=> b!1832671 d!560354))

(declare-fun d!560362 () Bool)

(declare-fun res!824202 () Bool)

(declare-fun e!1171459 () Bool)

(assert (=> d!560362 (=> (not res!824202) (not e!1171459))))

(assert (=> d!560362 (= res!824202 (validRegex!2029 (regex!3643 rule!580)))))

(assert (=> d!560362 (= (ruleValid!1133 thiss!28318 rule!580) e!1171459)))

(declare-fun b!1832849 () Bool)

(declare-fun res!824203 () Bool)

(assert (=> b!1832849 (=> (not res!824203) (not e!1171459))))

(assert (=> b!1832849 (= res!824203 (not (nullable!1547 (regex!3643 rule!580))))))

(declare-fun b!1832850 () Bool)

(assert (=> b!1832850 (= e!1171459 (not (= (tag!4057 rule!580) (String!22998 ""))))))

(assert (= (and d!560362 res!824202) b!1832849))

(assert (= (and b!1832849 res!824203) b!1832850))

(assert (=> d!560362 m!2260583))

(assert (=> b!1832849 m!2260571))

(assert (=> b!1832671 d!560362))

(declare-fun d!560366 () Bool)

(assert (=> d!560366 (ruleValid!1133 thiss!28318 rule!580)))

(declare-fun lt!711561 () Unit!34831)

(declare-fun choose!11538 (LexerInterface!3272 Rule!7086 List!20225) Unit!34831)

(assert (=> d!560366 (= lt!711561 (choose!11538 thiss!28318 rule!580 rules!4610))))

(assert (=> d!560366 (contains!3719 rules!4610 rule!580)))

(assert (=> d!560366 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!652 thiss!28318 rule!580 rules!4610) lt!711561)))

(declare-fun bs!408025 () Bool)

(assert (= bs!408025 d!560366))

(assert (=> bs!408025 m!2260499))

(declare-fun m!2260587 () Bool)

(assert (=> bs!408025 m!2260587))

(assert (=> bs!408025 m!2260495))

(assert (=> b!1832671 d!560366))

(declare-fun d!560368 () Bool)

(assert (=> d!560368 (= (inv!26217 (tag!4057 (h!25556 rules!4610))) (= (mod (str.len (value!113491 (tag!4057 (h!25556 rules!4610)))) 2) 0))))

(assert (=> b!1832690 d!560368))

(declare-fun d!560372 () Bool)

(declare-fun res!824212 () Bool)

(declare-fun e!1171470 () Bool)

(assert (=> d!560372 (=> (not res!824212) (not e!1171470))))

(declare-fun semiInverseModEq!1464 (Int Int) Bool)

(assert (=> d!560372 (= res!824212 (semiInverseModEq!1464 (toChars!5049 (transformation!3643 (h!25556 rules!4610))) (toValue!5190 (transformation!3643 (h!25556 rules!4610)))))))

(assert (=> d!560372 (= (inv!26221 (transformation!3643 (h!25556 rules!4610))) e!1171470)))

(declare-fun b!1832869 () Bool)

(declare-fun equivClasses!1405 (Int Int) Bool)

(assert (=> b!1832869 (= e!1171470 (equivClasses!1405 (toChars!5049 (transformation!3643 (h!25556 rules!4610))) (toValue!5190 (transformation!3643 (h!25556 rules!4610)))))))

(assert (= (and d!560372 res!824212) b!1832869))

(declare-fun m!2260609 () Bool)

(assert (=> d!560372 m!2260609))

(declare-fun m!2260611 () Bool)

(assert (=> b!1832869 m!2260611))

(assert (=> b!1832690 d!560372))

(declare-fun d!560376 () Bool)

(declare-fun list!8191 (Conc!6675) List!20224)

(assert (=> d!560376 (= (list!8189 (charsOf!2286 token!567)) (list!8191 (c!298887 (charsOf!2286 token!567))))))

(declare-fun bs!408027 () Bool)

(assert (= bs!408027 d!560376))

(declare-fun m!2260621 () Bool)

(assert (=> bs!408027 m!2260621))

(assert (=> b!1832691 d!560376))

(declare-fun d!560384 () Bool)

(assert (=> d!560384 (= (maxPrefixOneRule!1181 thiss!28318 rule!580 input!3681) (Some!4222 (tuple2!19611 (Token!6841 (apply!5431 (transformation!3643 rule!580) (seqFromList!2600 lt!711533)) rule!580 (size!15982 lt!711533) lt!711533) suffix!1698)))))

(declare-fun lt!711568 () Unit!34831)

(declare-fun choose!11539 (LexerInterface!3272 List!20225 List!20224 List!20224 List!20224 Rule!7086) Unit!34831)

(assert (=> d!560384 (= lt!711568 (choose!11539 thiss!28318 rules!4610 lt!711533 input!3681 suffix!1698 rule!580))))

(assert (=> d!560384 (not (isEmpty!12721 rules!4610))))

(assert (=> d!560384 (= (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!551 thiss!28318 rules!4610 lt!711533 input!3681 suffix!1698 rule!580) lt!711568)))

(declare-fun bs!408028 () Bool)

(assert (= bs!408028 d!560384))

(assert (=> bs!408028 m!2260463))

(assert (=> bs!408028 m!2260459))

(assert (=> bs!408028 m!2260461))

(declare-fun m!2260643 () Bool)

(assert (=> bs!408028 m!2260643))

(assert (=> bs!408028 m!2260445))

(assert (=> bs!408028 m!2260461))

(assert (=> bs!408028 m!2260465))

(assert (=> b!1832691 d!560384))

(declare-fun b!1832975 () Bool)

(declare-fun res!824287 () Bool)

(declare-fun e!1171525 () Bool)

(assert (=> b!1832975 (=> (not res!824287) (not e!1171525))))

(declare-fun lt!711618 () Option!4223)

(declare-fun get!6222 (Option!4223) tuple2!19610)

(assert (=> b!1832975 (= res!824287 (= (rule!5819 (_1!11207 (get!6222 lt!711618))) rule!580))))

(declare-fun b!1832976 () Bool)

(declare-fun e!1171523 () Option!4223)

(assert (=> b!1832976 (= e!1171523 None!4222)))

(declare-fun b!1832977 () Bool)

(declare-fun res!824284 () Bool)

(assert (=> b!1832977 (=> (not res!824284) (not e!1171525))))

(assert (=> b!1832977 (= res!824284 (< (size!15982 (_2!11207 (get!6222 lt!711618))) (size!15982 input!3681)))))

(declare-fun b!1832978 () Bool)

(declare-fun e!1171524 () Bool)

(declare-datatypes ((tuple2!19614 0))(
  ( (tuple2!19615 (_1!11209 List!20224) (_2!11209 List!20224)) )
))
(declare-fun findLongestMatchInner!519 (Regex!4971 List!20224 Int List!20224 List!20224 Int) tuple2!19614)

(assert (=> b!1832978 (= e!1171524 (matchR!2434 (regex!3643 rule!580) (_1!11209 (findLongestMatchInner!519 (regex!3643 rule!580) Nil!20154 (size!15982 Nil!20154) input!3681 input!3681 (size!15982 input!3681)))))))

(declare-fun b!1832979 () Bool)

(declare-fun res!824286 () Bool)

(assert (=> b!1832979 (=> (not res!824286) (not e!1171525))))

(assert (=> b!1832979 (= res!824286 (= (value!113492 (_1!11207 (get!6222 lt!711618))) (apply!5431 (transformation!3643 (rule!5819 (_1!11207 (get!6222 lt!711618)))) (seqFromList!2600 (originalCharacters!4451 (_1!11207 (get!6222 lt!711618)))))))))

(declare-fun b!1832980 () Bool)

(declare-fun e!1171522 () Bool)

(assert (=> b!1832980 (= e!1171522 e!1171525)))

(declare-fun res!824283 () Bool)

(assert (=> b!1832980 (=> (not res!824283) (not e!1171525))))

(assert (=> b!1832980 (= res!824283 (matchR!2434 (regex!3643 rule!580) (list!8189 (charsOf!2286 (_1!11207 (get!6222 lt!711618))))))))

(declare-fun d!560400 () Bool)

(assert (=> d!560400 e!1171522))

(declare-fun res!824282 () Bool)

(assert (=> d!560400 (=> res!824282 e!1171522)))

(declare-fun isEmpty!12725 (Option!4223) Bool)

(assert (=> d!560400 (= res!824282 (isEmpty!12725 lt!711618))))

(assert (=> d!560400 (= lt!711618 e!1171523)))

(declare-fun c!298938 () Bool)

(declare-fun lt!711620 () tuple2!19614)

(assert (=> d!560400 (= c!298938 (isEmpty!12723 (_1!11209 lt!711620)))))

(declare-fun findLongestMatch!446 (Regex!4971 List!20224) tuple2!19614)

(assert (=> d!560400 (= lt!711620 (findLongestMatch!446 (regex!3643 rule!580) input!3681))))

(assert (=> d!560400 (ruleValid!1133 thiss!28318 rule!580)))

(assert (=> d!560400 (= (maxPrefixOneRule!1181 thiss!28318 rule!580 input!3681) lt!711618)))

(declare-fun b!1832981 () Bool)

(declare-fun res!824285 () Bool)

(assert (=> b!1832981 (=> (not res!824285) (not e!1171525))))

(assert (=> b!1832981 (= res!824285 (= (++!5467 (list!8189 (charsOf!2286 (_1!11207 (get!6222 lt!711618)))) (_2!11207 (get!6222 lt!711618))) input!3681))))

(declare-fun b!1832982 () Bool)

(assert (=> b!1832982 (= e!1171525 (= (size!15981 (_1!11207 (get!6222 lt!711618))) (size!15982 (originalCharacters!4451 (_1!11207 (get!6222 lt!711618))))))))

(declare-fun b!1832983 () Bool)

(declare-fun size!15984 (BalanceConc!13294) Int)

(assert (=> b!1832983 (= e!1171523 (Some!4222 (tuple2!19611 (Token!6841 (apply!5431 (transformation!3643 rule!580) (seqFromList!2600 (_1!11209 lt!711620))) rule!580 (size!15984 (seqFromList!2600 (_1!11209 lt!711620))) (_1!11209 lt!711620)) (_2!11209 lt!711620))))))

(declare-fun lt!711621 () Unit!34831)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!503 (Regex!4971 List!20224) Unit!34831)

(assert (=> b!1832983 (= lt!711621 (longestMatchIsAcceptedByMatchOrIsEmpty!503 (regex!3643 rule!580) input!3681))))

(declare-fun res!824281 () Bool)

(assert (=> b!1832983 (= res!824281 (isEmpty!12723 (_1!11209 (findLongestMatchInner!519 (regex!3643 rule!580) Nil!20154 (size!15982 Nil!20154) input!3681 input!3681 (size!15982 input!3681)))))))

(assert (=> b!1832983 (=> res!824281 e!1171524)))

(assert (=> b!1832983 e!1171524))

(declare-fun lt!711619 () Unit!34831)

(assert (=> b!1832983 (= lt!711619 lt!711621)))

(declare-fun lt!711617 () Unit!34831)

(declare-fun lemmaSemiInverse!733 (TokenValueInjection!7126 BalanceConc!13294) Unit!34831)

(assert (=> b!1832983 (= lt!711617 (lemmaSemiInverse!733 (transformation!3643 rule!580) (seqFromList!2600 (_1!11209 lt!711620))))))

(assert (= (and d!560400 c!298938) b!1832976))

(assert (= (and d!560400 (not c!298938)) b!1832983))

(assert (= (and b!1832983 (not res!824281)) b!1832978))

(assert (= (and d!560400 (not res!824282)) b!1832980))

(assert (= (and b!1832980 res!824283) b!1832981))

(assert (= (and b!1832981 res!824285) b!1832977))

(assert (= (and b!1832977 res!824284) b!1832975))

(assert (= (and b!1832975 res!824287) b!1832979))

(assert (= (and b!1832979 res!824286) b!1832982))

(declare-fun m!2260737 () Bool)

(assert (=> b!1832981 m!2260737))

(declare-fun m!2260739 () Bool)

(assert (=> b!1832981 m!2260739))

(assert (=> b!1832981 m!2260739))

(declare-fun m!2260741 () Bool)

(assert (=> b!1832981 m!2260741))

(assert (=> b!1832981 m!2260741))

(declare-fun m!2260743 () Bool)

(assert (=> b!1832981 m!2260743))

(declare-fun m!2260745 () Bool)

(assert (=> b!1832978 m!2260745))

(declare-fun m!2260747 () Bool)

(assert (=> b!1832978 m!2260747))

(assert (=> b!1832978 m!2260745))

(assert (=> b!1832978 m!2260747))

(declare-fun m!2260749 () Bool)

(assert (=> b!1832978 m!2260749))

(declare-fun m!2260751 () Bool)

(assert (=> b!1832978 m!2260751))

(declare-fun m!2260753 () Bool)

(assert (=> b!1832983 m!2260753))

(declare-fun m!2260755 () Bool)

(assert (=> b!1832983 m!2260755))

(declare-fun m!2260757 () Bool)

(assert (=> b!1832983 m!2260757))

(assert (=> b!1832983 m!2260745))

(assert (=> b!1832983 m!2260747))

(assert (=> b!1832983 m!2260749))

(assert (=> b!1832983 m!2260757))

(declare-fun m!2260759 () Bool)

(assert (=> b!1832983 m!2260759))

(assert (=> b!1832983 m!2260747))

(assert (=> b!1832983 m!2260757))

(declare-fun m!2260761 () Bool)

(assert (=> b!1832983 m!2260761))

(assert (=> b!1832983 m!2260757))

(declare-fun m!2260763 () Bool)

(assert (=> b!1832983 m!2260763))

(assert (=> b!1832983 m!2260745))

(assert (=> b!1832977 m!2260737))

(declare-fun m!2260765 () Bool)

(assert (=> b!1832977 m!2260765))

(assert (=> b!1832977 m!2260747))

(assert (=> b!1832979 m!2260737))

(declare-fun m!2260767 () Bool)

(assert (=> b!1832979 m!2260767))

(assert (=> b!1832979 m!2260767))

(declare-fun m!2260769 () Bool)

(assert (=> b!1832979 m!2260769))

(assert (=> b!1832982 m!2260737))

(declare-fun m!2260771 () Bool)

(assert (=> b!1832982 m!2260771))

(declare-fun m!2260773 () Bool)

(assert (=> d!560400 m!2260773))

(declare-fun m!2260775 () Bool)

(assert (=> d!560400 m!2260775))

(declare-fun m!2260777 () Bool)

(assert (=> d!560400 m!2260777))

(assert (=> d!560400 m!2260499))

(assert (=> b!1832980 m!2260737))

(assert (=> b!1832980 m!2260739))

(assert (=> b!1832980 m!2260739))

(assert (=> b!1832980 m!2260741))

(assert (=> b!1832980 m!2260741))

(declare-fun m!2260779 () Bool)

(assert (=> b!1832980 m!2260779))

(assert (=> b!1832975 m!2260737))

(assert (=> b!1832691 d!560400))

(declare-fun d!560416 () Bool)

(declare-fun fromListB!1189 (List!20224) BalanceConc!13294)

(assert (=> d!560416 (= (seqFromList!2600 lt!711533) (fromListB!1189 lt!711533))))

(declare-fun bs!408033 () Bool)

(assert (= bs!408033 d!560416))

(declare-fun m!2260781 () Bool)

(assert (=> bs!408033 m!2260781))

(assert (=> b!1832691 d!560416))

(declare-fun d!560418 () Bool)

(declare-fun dynLambda!10027 (Int BalanceConc!13294) TokenValue!3733)

(assert (=> d!560418 (= (apply!5431 (transformation!3643 rule!580) (seqFromList!2600 lt!711533)) (dynLambda!10027 (toValue!5190 (transformation!3643 rule!580)) (seqFromList!2600 lt!711533)))))

(declare-fun b_lambda!60673 () Bool)

(assert (=> (not b_lambda!60673) (not d!560418)))

(declare-fun tb!112113 () Bool)

(declare-fun t!170957 () Bool)

(assert (=> (and b!1832696 (= (toValue!5190 (transformation!3643 (h!25556 rules!4610))) (toValue!5190 (transformation!3643 rule!580))) t!170957) tb!112113))

(declare-fun result!134818 () Bool)

(assert (=> tb!112113 (= result!134818 (inv!21 (dynLambda!10027 (toValue!5190 (transformation!3643 rule!580)) (seqFromList!2600 lt!711533))))))

(declare-fun m!2260783 () Bool)

(assert (=> tb!112113 m!2260783))

(assert (=> d!560418 t!170957))

(declare-fun b_and!142841 () Bool)

(assert (= b_and!142793 (and (=> t!170957 result!134818) b_and!142841)))

(declare-fun t!170959 () Bool)

(declare-fun tb!112115 () Bool)

(assert (=> (and b!1832679 (= (toValue!5190 (transformation!3643 rule!580)) (toValue!5190 (transformation!3643 rule!580))) t!170959) tb!112115))

(declare-fun result!134822 () Bool)

(assert (= result!134822 result!134818))

(assert (=> d!560418 t!170959))

(declare-fun b_and!142843 () Bool)

(assert (= b_and!142797 (and (=> t!170959 result!134822) b_and!142843)))

(declare-fun tb!112117 () Bool)

(declare-fun t!170961 () Bool)

(assert (=> (and b!1832676 (= (toValue!5190 (transformation!3643 (rule!5819 token!567))) (toValue!5190 (transformation!3643 rule!580))) t!170961) tb!112117))

(declare-fun result!134824 () Bool)

(assert (= result!134824 result!134818))

(assert (=> d!560418 t!170961))

(declare-fun b_and!142845 () Bool)

(assert (= b_and!142801 (and (=> t!170961 result!134824) b_and!142845)))

(declare-fun t!170963 () Bool)

(declare-fun tb!112119 () Bool)

(assert (=> (and b!1832675 (= (toValue!5190 (transformation!3643 (h!25556 rs!808))) (toValue!5190 (transformation!3643 rule!580))) t!170963) tb!112119))

(declare-fun result!134826 () Bool)

(assert (= result!134826 result!134818))

(assert (=> d!560418 t!170963))

(declare-fun b_and!142847 () Bool)

(assert (= b_and!142805 (and (=> t!170963 result!134826) b_and!142847)))

(assert (=> d!560418 m!2260461))

(declare-fun m!2260785 () Bool)

(assert (=> d!560418 m!2260785))

(assert (=> b!1832691 d!560418))

(declare-fun d!560420 () Bool)

(declare-fun lt!711625 () Int)

(assert (=> d!560420 (>= lt!711625 0)))

(declare-fun e!1171531 () Int)

(assert (=> d!560420 (= lt!711625 e!1171531)))

(declare-fun c!298941 () Bool)

(assert (=> d!560420 (= c!298941 ((_ is Nil!20154) lt!711533))))

(assert (=> d!560420 (= (size!15982 lt!711533) lt!711625)))

(declare-fun b!1832990 () Bool)

(assert (=> b!1832990 (= e!1171531 0)))

(declare-fun b!1832991 () Bool)

(assert (=> b!1832991 (= e!1171531 (+ 1 (size!15982 (t!170929 lt!711533))))))

(assert (= (and d!560420 c!298941) b!1832990))

(assert (= (and d!560420 (not c!298941)) b!1832991))

(declare-fun m!2260787 () Bool)

(assert (=> b!1832991 m!2260787))

(assert (=> b!1832691 d!560420))

(declare-fun d!560422 () Bool)

(declare-fun lt!711628 () BalanceConc!13294)

(assert (=> d!560422 (= (list!8189 lt!711628) (originalCharacters!4451 token!567))))

(assert (=> d!560422 (= lt!711628 (dynLambda!10025 (toChars!5049 (transformation!3643 (rule!5819 token!567))) (value!113492 token!567)))))

(assert (=> d!560422 (= (charsOf!2286 token!567) lt!711628)))

(declare-fun b_lambda!60675 () Bool)

(assert (=> (not b_lambda!60675) (not d!560422)))

(assert (=> d!560422 t!170933))

(declare-fun b_and!142849 () Bool)

(assert (= b_and!142809 (and (=> t!170933 result!134788) b_and!142849)))

(assert (=> d!560422 t!170935))

(declare-fun b_and!142851 () Bool)

(assert (= b_and!142811 (and (=> t!170935 result!134792) b_and!142851)))

(assert (=> d!560422 t!170937))

(declare-fun b_and!142853 () Bool)

(assert (= b_and!142813 (and (=> t!170937 result!134794) b_and!142853)))

(assert (=> d!560422 t!170939))

(declare-fun b_and!142855 () Bool)

(assert (= b_and!142815 (and (=> t!170939 result!134796) b_and!142855)))

(declare-fun m!2260789 () Bool)

(assert (=> d!560422 m!2260789))

(assert (=> d!560422 m!2260511))

(assert (=> b!1832691 d!560422))

(declare-fun b!1833010 () Bool)

(declare-fun e!1171540 () Option!4223)

(declare-fun call!114796 () Option!4223)

(assert (=> b!1833010 (= e!1171540 call!114796)))

(declare-fun b!1833011 () Bool)

(declare-fun res!824308 () Bool)

(declare-fun e!1171538 () Bool)

(assert (=> b!1833011 (=> (not res!824308) (not e!1171538))))

(declare-fun lt!711640 () Option!4223)

(assert (=> b!1833011 (= res!824308 (= (++!5467 (list!8189 (charsOf!2286 (_1!11207 (get!6222 lt!711640)))) (_2!11207 (get!6222 lt!711640))) input!3681))))

(declare-fun b!1833012 () Bool)

(declare-fun lt!711643 () Option!4223)

(declare-fun lt!711642 () Option!4223)

(assert (=> b!1833012 (= e!1171540 (ite (and ((_ is None!4222) lt!711643) ((_ is None!4222) lt!711642)) None!4222 (ite ((_ is None!4222) lt!711642) lt!711643 (ite ((_ is None!4222) lt!711643) lt!711642 (ite (>= (size!15981 (_1!11207 (v!25797 lt!711643))) (size!15981 (_1!11207 (v!25797 lt!711642)))) lt!711643 lt!711642)))))))

(assert (=> b!1833012 (= lt!711643 call!114796)))

(assert (=> b!1833012 (= lt!711642 (maxPrefix!1820 thiss!28318 (t!170930 rules!4610) input!3681))))

(declare-fun b!1833013 () Bool)

(declare-fun res!824304 () Bool)

(assert (=> b!1833013 (=> (not res!824304) (not e!1171538))))

(assert (=> b!1833013 (= res!824304 (matchR!2434 (regex!3643 (rule!5819 (_1!11207 (get!6222 lt!711640)))) (list!8189 (charsOf!2286 (_1!11207 (get!6222 lt!711640))))))))

(declare-fun b!1833014 () Bool)

(declare-fun res!824305 () Bool)

(assert (=> b!1833014 (=> (not res!824305) (not e!1171538))))

(assert (=> b!1833014 (= res!824305 (= (value!113492 (_1!11207 (get!6222 lt!711640))) (apply!5431 (transformation!3643 (rule!5819 (_1!11207 (get!6222 lt!711640)))) (seqFromList!2600 (originalCharacters!4451 (_1!11207 (get!6222 lt!711640)))))))))

(declare-fun b!1833015 () Bool)

(declare-fun res!824303 () Bool)

(assert (=> b!1833015 (=> (not res!824303) (not e!1171538))))

(assert (=> b!1833015 (= res!824303 (= (list!8189 (charsOf!2286 (_1!11207 (get!6222 lt!711640)))) (originalCharacters!4451 (_1!11207 (get!6222 lt!711640)))))))

(declare-fun bm!114791 () Bool)

(assert (=> bm!114791 (= call!114796 (maxPrefixOneRule!1181 thiss!28318 (h!25556 rules!4610) input!3681))))

(declare-fun d!560424 () Bool)

(declare-fun e!1171539 () Bool)

(assert (=> d!560424 e!1171539))

(declare-fun res!824302 () Bool)

(assert (=> d!560424 (=> res!824302 e!1171539)))

(assert (=> d!560424 (= res!824302 (isEmpty!12725 lt!711640))))

(assert (=> d!560424 (= lt!711640 e!1171540)))

(declare-fun c!298944 () Bool)

(assert (=> d!560424 (= c!298944 (and ((_ is Cons!20155) rules!4610) ((_ is Nil!20155) (t!170930 rules!4610))))))

(declare-fun lt!711639 () Unit!34831)

(declare-fun lt!711641 () Unit!34831)

(assert (=> d!560424 (= lt!711639 lt!711641)))

(declare-fun isPrefix!1839 (List!20224 List!20224) Bool)

(assert (=> d!560424 (isPrefix!1839 input!3681 input!3681)))

(declare-fun lemmaIsPrefixRefl!1216 (List!20224 List!20224) Unit!34831)

(assert (=> d!560424 (= lt!711641 (lemmaIsPrefixRefl!1216 input!3681 input!3681))))

(declare-fun rulesValidInductive!1258 (LexerInterface!3272 List!20225) Bool)

(assert (=> d!560424 (rulesValidInductive!1258 thiss!28318 rules!4610)))

(assert (=> d!560424 (= (maxPrefix!1820 thiss!28318 rules!4610 input!3681) lt!711640)))

(declare-fun b!1833016 () Bool)

(assert (=> b!1833016 (= e!1171538 (contains!3719 rules!4610 (rule!5819 (_1!11207 (get!6222 lt!711640)))))))

(declare-fun b!1833017 () Bool)

(declare-fun res!824306 () Bool)

(assert (=> b!1833017 (=> (not res!824306) (not e!1171538))))

(assert (=> b!1833017 (= res!824306 (< (size!15982 (_2!11207 (get!6222 lt!711640))) (size!15982 input!3681)))))

(declare-fun b!1833018 () Bool)

(assert (=> b!1833018 (= e!1171539 e!1171538)))

(declare-fun res!824307 () Bool)

(assert (=> b!1833018 (=> (not res!824307) (not e!1171538))))

(declare-fun isDefined!3526 (Option!4223) Bool)

(assert (=> b!1833018 (= res!824307 (isDefined!3526 lt!711640))))

(assert (= (and d!560424 c!298944) b!1833010))

(assert (= (and d!560424 (not c!298944)) b!1833012))

(assert (= (or b!1833010 b!1833012) bm!114791))

(assert (= (and d!560424 (not res!824302)) b!1833018))

(assert (= (and b!1833018 res!824307) b!1833015))

(assert (= (and b!1833015 res!824303) b!1833017))

(assert (= (and b!1833017 res!824306) b!1833011))

(assert (= (and b!1833011 res!824308) b!1833014))

(assert (= (and b!1833014 res!824305) b!1833013))

(assert (= (and b!1833013 res!824304) b!1833016))

(declare-fun m!2260791 () Bool)

(assert (=> b!1833011 m!2260791))

(declare-fun m!2260793 () Bool)

(assert (=> b!1833011 m!2260793))

(assert (=> b!1833011 m!2260793))

(declare-fun m!2260795 () Bool)

(assert (=> b!1833011 m!2260795))

(assert (=> b!1833011 m!2260795))

(declare-fun m!2260797 () Bool)

(assert (=> b!1833011 m!2260797))

(assert (=> b!1833016 m!2260791))

(declare-fun m!2260799 () Bool)

(assert (=> b!1833016 m!2260799))

(assert (=> b!1833017 m!2260791))

(declare-fun m!2260801 () Bool)

(assert (=> b!1833017 m!2260801))

(assert (=> b!1833017 m!2260747))

(assert (=> b!1833015 m!2260791))

(assert (=> b!1833015 m!2260793))

(assert (=> b!1833015 m!2260793))

(assert (=> b!1833015 m!2260795))

(declare-fun m!2260803 () Bool)

(assert (=> bm!114791 m!2260803))

(declare-fun m!2260805 () Bool)

(assert (=> b!1833012 m!2260805))

(declare-fun m!2260807 () Bool)

(assert (=> b!1833018 m!2260807))

(assert (=> b!1833013 m!2260791))

(assert (=> b!1833013 m!2260793))

(assert (=> b!1833013 m!2260793))

(assert (=> b!1833013 m!2260795))

(assert (=> b!1833013 m!2260795))

(declare-fun m!2260809 () Bool)

(assert (=> b!1833013 m!2260809))

(assert (=> b!1833014 m!2260791))

(declare-fun m!2260811 () Bool)

(assert (=> b!1833014 m!2260811))

(assert (=> b!1833014 m!2260811))

(declare-fun m!2260813 () Bool)

(assert (=> b!1833014 m!2260813))

(declare-fun m!2260815 () Bool)

(assert (=> d!560424 m!2260815))

(declare-fun m!2260817 () Bool)

(assert (=> d!560424 m!2260817))

(declare-fun m!2260819 () Bool)

(assert (=> d!560424 m!2260819))

(declare-fun m!2260821 () Bool)

(assert (=> d!560424 m!2260821))

(assert (=> b!1832680 d!560424))

(declare-fun d!560426 () Bool)

(assert (=> d!560426 (= (inv!26217 (tag!4057 rule!580)) (= (mod (str.len (value!113491 (tag!4057 rule!580))) 2) 0))))

(assert (=> b!1832689 d!560426))

(declare-fun d!560428 () Bool)

(declare-fun res!824309 () Bool)

(declare-fun e!1171541 () Bool)

(assert (=> d!560428 (=> (not res!824309) (not e!1171541))))

(assert (=> d!560428 (= res!824309 (semiInverseModEq!1464 (toChars!5049 (transformation!3643 rule!580)) (toValue!5190 (transformation!3643 rule!580))))))

(assert (=> d!560428 (= (inv!26221 (transformation!3643 rule!580)) e!1171541)))

(declare-fun b!1833019 () Bool)

(assert (=> b!1833019 (= e!1171541 (equivClasses!1405 (toChars!5049 (transformation!3643 rule!580)) (toValue!5190 (transformation!3643 rule!580))))))

(assert (= (and d!560428 res!824309) b!1833019))

(declare-fun m!2260823 () Bool)

(assert (=> d!560428 m!2260823))

(declare-fun m!2260825 () Bool)

(assert (=> b!1833019 m!2260825))

(assert (=> b!1832689 d!560428))

(declare-fun d!560430 () Bool)

(declare-fun lt!711644 () Bool)

(assert (=> d!560430 (= lt!711644 (select (content!2988 rs!808) rule!580))))

(declare-fun e!1171542 () Bool)

(assert (=> d!560430 (= lt!711644 e!1171542)))

(declare-fun res!824311 () Bool)

(assert (=> d!560430 (=> (not res!824311) (not e!1171542))))

(assert (=> d!560430 (= res!824311 ((_ is Cons!20155) rs!808))))

(assert (=> d!560430 (= (contains!3719 rs!808 rule!580) lt!711644)))

(declare-fun b!1833020 () Bool)

(declare-fun e!1171543 () Bool)

(assert (=> b!1833020 (= e!1171542 e!1171543)))

(declare-fun res!824310 () Bool)

(assert (=> b!1833020 (=> res!824310 e!1171543)))

(assert (=> b!1833020 (= res!824310 (= (h!25556 rs!808) rule!580))))

(declare-fun b!1833021 () Bool)

(assert (=> b!1833021 (= e!1171543 (contains!3719 (t!170930 rs!808) rule!580))))

(assert (= (and d!560430 res!824311) b!1833020))

(assert (= (and b!1833020 (not res!824310)) b!1833021))

(declare-fun m!2260827 () Bool)

(assert (=> d!560430 m!2260827))

(declare-fun m!2260829 () Bool)

(assert (=> d!560430 m!2260829))

(declare-fun m!2260831 () Bool)

(assert (=> b!1833021 m!2260831))

(assert (=> b!1832678 d!560430))

(declare-fun bm!114792 () Bool)

(declare-fun call!114797 () Bool)

(assert (=> bm!114792 (= call!114797 (isEmpty!12723 lt!711533))))

(declare-fun b!1833022 () Bool)

(declare-fun e!1171549 () Bool)

(assert (=> b!1833022 (= e!1171549 (= (head!4282 lt!711533) (c!298886 (regex!3643 rule!580))))))

(declare-fun b!1833023 () Bool)

(declare-fun res!824315 () Bool)

(assert (=> b!1833023 (=> (not res!824315) (not e!1171549))))

(assert (=> b!1833023 (= res!824315 (isEmpty!12723 (tail!2741 lt!711533)))))

(declare-fun b!1833024 () Bool)

(declare-fun e!1171547 () Bool)

(declare-fun e!1171548 () Bool)

(assert (=> b!1833024 (= e!1171547 e!1171548)))

(declare-fun res!824319 () Bool)

(assert (=> b!1833024 (=> res!824319 e!1171548)))

(assert (=> b!1833024 (= res!824319 call!114797)))

(declare-fun b!1833025 () Bool)

(declare-fun res!824313 () Bool)

(assert (=> b!1833025 (=> (not res!824313) (not e!1171549))))

(assert (=> b!1833025 (= res!824313 (not call!114797))))

(declare-fun b!1833026 () Bool)

(declare-fun e!1171546 () Bool)

(assert (=> b!1833026 (= e!1171546 (matchR!2434 (derivativeStep!1311 (regex!3643 rule!580) (head!4282 lt!711533)) (tail!2741 lt!711533)))))

(declare-fun b!1833027 () Bool)

(declare-fun res!824318 () Bool)

(assert (=> b!1833027 (=> res!824318 e!1171548)))

(assert (=> b!1833027 (= res!824318 (not (isEmpty!12723 (tail!2741 lt!711533))))))

(declare-fun b!1833028 () Bool)

(declare-fun res!824314 () Bool)

(declare-fun e!1171545 () Bool)

(assert (=> b!1833028 (=> res!824314 e!1171545)))

(assert (=> b!1833028 (= res!824314 e!1171549)))

(declare-fun res!824317 () Bool)

(assert (=> b!1833028 (=> (not res!824317) (not e!1171549))))

(declare-fun lt!711645 () Bool)

(assert (=> b!1833028 (= res!824317 lt!711645)))

(declare-fun d!560432 () Bool)

(declare-fun e!1171550 () Bool)

(assert (=> d!560432 e!1171550))

(declare-fun c!298947 () Bool)

(assert (=> d!560432 (= c!298947 ((_ is EmptyExpr!4971) (regex!3643 rule!580)))))

(assert (=> d!560432 (= lt!711645 e!1171546)))

(declare-fun c!298945 () Bool)

(assert (=> d!560432 (= c!298945 (isEmpty!12723 lt!711533))))

(assert (=> d!560432 (validRegex!2029 (regex!3643 rule!580))))

(assert (=> d!560432 (= (matchR!2434 (regex!3643 rule!580) lt!711533) lt!711645)))

(declare-fun b!1833029 () Bool)

(assert (=> b!1833029 (= e!1171545 e!1171547)))

(declare-fun res!824312 () Bool)

(assert (=> b!1833029 (=> (not res!824312) (not e!1171547))))

(assert (=> b!1833029 (= res!824312 (not lt!711645))))

(declare-fun b!1833030 () Bool)

(declare-fun res!824316 () Bool)

(assert (=> b!1833030 (=> res!824316 e!1171545)))

(assert (=> b!1833030 (= res!824316 (not ((_ is ElementMatch!4971) (regex!3643 rule!580))))))

(declare-fun e!1171544 () Bool)

(assert (=> b!1833030 (= e!1171544 e!1171545)))

(declare-fun b!1833031 () Bool)

(assert (=> b!1833031 (= e!1171548 (not (= (head!4282 lt!711533) (c!298886 (regex!3643 rule!580)))))))

(declare-fun b!1833032 () Bool)

(assert (=> b!1833032 (= e!1171550 e!1171544)))

(declare-fun c!298946 () Bool)

(assert (=> b!1833032 (= c!298946 ((_ is EmptyLang!4971) (regex!3643 rule!580)))))

(declare-fun b!1833033 () Bool)

(assert (=> b!1833033 (= e!1171544 (not lt!711645))))

(declare-fun b!1833034 () Bool)

(assert (=> b!1833034 (= e!1171550 (= lt!711645 call!114797))))

(declare-fun b!1833035 () Bool)

(assert (=> b!1833035 (= e!1171546 (nullable!1547 (regex!3643 rule!580)))))

(assert (= (and d!560432 c!298945) b!1833035))

(assert (= (and d!560432 (not c!298945)) b!1833026))

(assert (= (and d!560432 c!298947) b!1833034))

(assert (= (and d!560432 (not c!298947)) b!1833032))

(assert (= (and b!1833032 c!298946) b!1833033))

(assert (= (and b!1833032 (not c!298946)) b!1833030))

(assert (= (and b!1833030 (not res!824316)) b!1833028))

(assert (= (and b!1833028 res!824317) b!1833025))

(assert (= (and b!1833025 res!824313) b!1833023))

(assert (= (and b!1833023 res!824315) b!1833022))

(assert (= (and b!1833028 (not res!824314)) b!1833029))

(assert (= (and b!1833029 res!824312) b!1833024))

(assert (= (and b!1833024 (not res!824319)) b!1833027))

(assert (= (and b!1833027 (not res!824318)) b!1833031))

(assert (= (or b!1833034 b!1833024 b!1833025) bm!114792))

(declare-fun m!2260833 () Bool)

(assert (=> b!1833022 m!2260833))

(assert (=> b!1833035 m!2260571))

(declare-fun m!2260835 () Bool)

(assert (=> bm!114792 m!2260835))

(assert (=> b!1833031 m!2260833))

(declare-fun m!2260837 () Bool)

(assert (=> b!1833027 m!2260837))

(assert (=> b!1833027 m!2260837))

(declare-fun m!2260839 () Bool)

(assert (=> b!1833027 m!2260839))

(assert (=> b!1833023 m!2260837))

(assert (=> b!1833023 m!2260837))

(assert (=> b!1833023 m!2260839))

(assert (=> b!1833026 m!2260833))

(assert (=> b!1833026 m!2260833))

(declare-fun m!2260841 () Bool)

(assert (=> b!1833026 m!2260841))

(assert (=> b!1833026 m!2260837))

(assert (=> b!1833026 m!2260841))

(assert (=> b!1833026 m!2260837))

(declare-fun m!2260843 () Bool)

(assert (=> b!1833026 m!2260843))

(assert (=> d!560432 m!2260835))

(assert (=> d!560432 m!2260583))

(assert (=> b!1832677 d!560432))

(declare-fun b!1833045 () Bool)

(declare-fun e!1171556 () List!20224)

(assert (=> b!1833045 (= e!1171556 (Cons!20154 (h!25555 lt!711531) (++!5467 (t!170929 lt!711531) suffix!1698)))))

(declare-fun lt!711648 () List!20224)

(declare-fun e!1171555 () Bool)

(declare-fun b!1833047 () Bool)

(assert (=> b!1833047 (= e!1171555 (or (not (= suffix!1698 Nil!20154)) (= lt!711648 lt!711531)))))

(declare-fun b!1833044 () Bool)

(assert (=> b!1833044 (= e!1171556 suffix!1698)))

(declare-fun d!560434 () Bool)

(assert (=> d!560434 e!1171555))

(declare-fun res!824324 () Bool)

(assert (=> d!560434 (=> (not res!824324) (not e!1171555))))

(declare-fun content!2989 (List!20224) (InoxSet C!10116))

(assert (=> d!560434 (= res!824324 (= (content!2989 lt!711648) ((_ map or) (content!2989 lt!711531) (content!2989 suffix!1698))))))

(assert (=> d!560434 (= lt!711648 e!1171556)))

(declare-fun c!298950 () Bool)

(assert (=> d!560434 (= c!298950 ((_ is Nil!20154) lt!711531))))

(assert (=> d!560434 (= (++!5467 lt!711531 suffix!1698) lt!711648)))

(declare-fun b!1833046 () Bool)

(declare-fun res!824325 () Bool)

(assert (=> b!1833046 (=> (not res!824325) (not e!1171555))))

(assert (=> b!1833046 (= res!824325 (= (size!15982 lt!711648) (+ (size!15982 lt!711531) (size!15982 suffix!1698))))))

(assert (= (and d!560434 c!298950) b!1833044))

(assert (= (and d!560434 (not c!298950)) b!1833045))

(assert (= (and d!560434 res!824324) b!1833046))

(assert (= (and b!1833046 res!824325) b!1833047))

(declare-fun m!2260845 () Bool)

(assert (=> b!1833045 m!2260845))

(declare-fun m!2260847 () Bool)

(assert (=> d!560434 m!2260847))

(declare-fun m!2260849 () Bool)

(assert (=> d!560434 m!2260849))

(declare-fun m!2260851 () Bool)

(assert (=> d!560434 m!2260851))

(declare-fun m!2260853 () Bool)

(assert (=> b!1833046 m!2260853))

(declare-fun m!2260855 () Bool)

(assert (=> b!1833046 m!2260855))

(declare-fun m!2260857 () Bool)

(assert (=> b!1833046 m!2260857))

(assert (=> b!1832688 d!560434))

(assert (=> b!1832688 d!560376))

(assert (=> b!1832688 d!560422))

(declare-fun d!560436 () Bool)

(assert (=> d!560436 true))

(declare-fun lt!711676 () Bool)

(assert (=> d!560436 (= lt!711676 (rulesValidInductive!1258 thiss!28318 rs!808))))

(declare-fun lambda!72040 () Int)

(declare-fun forall!4340 (List!20225 Int) Bool)

(assert (=> d!560436 (= lt!711676 (forall!4340 rs!808 lambda!72040))))

(assert (=> d!560436 (= (rulesValid!1390 thiss!28318 rs!808) lt!711676)))

(declare-fun bs!408039 () Bool)

(assert (= bs!408039 d!560436))

(declare-fun m!2260927 () Bool)

(assert (=> bs!408039 m!2260927))

(declare-fun m!2260929 () Bool)

(assert (=> bs!408039 m!2260929))

(assert (=> b!1832687 d!560436))

(declare-fun bs!408040 () Bool)

(declare-fun d!560448 () Bool)

(assert (= bs!408040 (and d!560448 b!1832685)))

(declare-fun lambda!72043 () Int)

(assert (=> bs!408040 (= lambda!72043 lambda!72022)))

(declare-fun lt!711679 () Unit!34831)

(declare-fun lemma!540 (List!20225 LexerInterface!3272 List!20225) Unit!34831)

(assert (=> d!560448 (= lt!711679 (lemma!540 rules!4610 thiss!28318 rules!4610))))

(assert (=> d!560448 (= (rulesRegex!963 thiss!28318 rules!4610) (generalisedUnion!486 (map!4183 rules!4610 lambda!72043)))))

(declare-fun bs!408041 () Bool)

(assert (= bs!408041 d!560448))

(declare-fun m!2260931 () Bool)

(assert (=> bs!408041 m!2260931))

(declare-fun m!2260933 () Bool)

(assert (=> bs!408041 m!2260933))

(assert (=> bs!408041 m!2260933))

(declare-fun m!2260935 () Bool)

(assert (=> bs!408041 m!2260935))

(assert (=> b!1832685 d!560448))

(declare-fun b!1833175 () Bool)

(declare-fun e!1171631 () Regex!4971)

(declare-fun e!1171627 () Regex!4971)

(assert (=> b!1833175 (= e!1171631 e!1171627)))

(declare-fun c!298982 () Bool)

(assert (=> b!1833175 (= c!298982 ((_ is Cons!20156) (map!4183 rules!4610 lambda!72022)))))

(declare-fun b!1833176 () Bool)

(assert (=> b!1833176 (= e!1171627 EmptyLang!4971)))

(declare-fun e!1171632 () Bool)

(declare-fun lt!711682 () Regex!4971)

(declare-fun b!1833177 () Bool)

(declare-fun head!4284 (List!20226) Regex!4971)

(assert (=> b!1833177 (= e!1171632 (= lt!711682 (head!4284 (map!4183 rules!4610 lambda!72022))))))

(declare-fun d!560450 () Bool)

(declare-fun e!1171628 () Bool)

(assert (=> d!560450 e!1171628))

(declare-fun res!824345 () Bool)

(assert (=> d!560450 (=> (not res!824345) (not e!1171628))))

(assert (=> d!560450 (= res!824345 (validRegex!2029 lt!711682))))

(assert (=> d!560450 (= lt!711682 e!1171631)))

(declare-fun c!298980 () Bool)

(declare-fun e!1171630 () Bool)

(assert (=> d!560450 (= c!298980 e!1171630)))

(declare-fun res!824344 () Bool)

(assert (=> d!560450 (=> (not res!824344) (not e!1171630))))

(assert (=> d!560450 (= res!824344 ((_ is Cons!20156) (map!4183 rules!4610 lambda!72022)))))

(declare-fun lambda!72046 () Int)

(declare-fun forall!4341 (List!20226 Int) Bool)

(assert (=> d!560450 (forall!4341 (map!4183 rules!4610 lambda!72022) lambda!72046)))

(assert (=> d!560450 (= (generalisedUnion!486 (map!4183 rules!4610 lambda!72022)) lt!711682)))

(declare-fun b!1833178 () Bool)

(declare-fun e!1171629 () Bool)

(assert (=> b!1833178 (= e!1171628 e!1171629)))

(declare-fun c!298983 () Bool)

(declare-fun isEmpty!12727 (List!20226) Bool)

(assert (=> b!1833178 (= c!298983 (isEmpty!12727 (map!4183 rules!4610 lambda!72022)))))

(declare-fun b!1833179 () Bool)

(declare-fun isEmptyLang!129 (Regex!4971) Bool)

(assert (=> b!1833179 (= e!1171629 (isEmptyLang!129 lt!711682))))

(declare-fun b!1833180 () Bool)

(assert (=> b!1833180 (= e!1171629 e!1171632)))

(declare-fun c!298981 () Bool)

(declare-fun tail!2743 (List!20226) List!20226)

(assert (=> b!1833180 (= c!298981 (isEmpty!12727 (tail!2743 (map!4183 rules!4610 lambda!72022))))))

(declare-fun b!1833181 () Bool)

(assert (=> b!1833181 (= e!1171631 (h!25557 (map!4183 rules!4610 lambda!72022)))))

(declare-fun b!1833182 () Bool)

(assert (=> b!1833182 (= e!1171630 (isEmpty!12727 (t!170931 (map!4183 rules!4610 lambda!72022))))))

(declare-fun b!1833183 () Bool)

(assert (=> b!1833183 (= e!1171627 (Union!4971 (h!25557 (map!4183 rules!4610 lambda!72022)) (generalisedUnion!486 (t!170931 (map!4183 rules!4610 lambda!72022)))))))

(declare-fun b!1833184 () Bool)

(declare-fun isUnion!129 (Regex!4971) Bool)

(assert (=> b!1833184 (= e!1171632 (isUnion!129 lt!711682))))

(assert (= (and d!560450 res!824344) b!1833182))

(assert (= (and d!560450 c!298980) b!1833181))

(assert (= (and d!560450 (not c!298980)) b!1833175))

(assert (= (and b!1833175 c!298982) b!1833183))

(assert (= (and b!1833175 (not c!298982)) b!1833176))

(assert (= (and d!560450 res!824345) b!1833178))

(assert (= (and b!1833178 c!298983) b!1833179))

(assert (= (and b!1833178 (not c!298983)) b!1833180))

(assert (= (and b!1833180 c!298981) b!1833177))

(assert (= (and b!1833180 (not c!298981)) b!1833184))

(declare-fun m!2260937 () Bool)

(assert (=> b!1833179 m!2260937))

(declare-fun m!2260939 () Bool)

(assert (=> d!560450 m!2260939))

(assert (=> d!560450 m!2260469))

(declare-fun m!2260941 () Bool)

(assert (=> d!560450 m!2260941))

(declare-fun m!2260943 () Bool)

(assert (=> b!1833183 m!2260943))

(declare-fun m!2260945 () Bool)

(assert (=> b!1833184 m!2260945))

(assert (=> b!1833178 m!2260469))

(declare-fun m!2260947 () Bool)

(assert (=> b!1833178 m!2260947))

(assert (=> b!1833177 m!2260469))

(declare-fun m!2260949 () Bool)

(assert (=> b!1833177 m!2260949))

(assert (=> b!1833180 m!2260469))

(declare-fun m!2260951 () Bool)

(assert (=> b!1833180 m!2260951))

(assert (=> b!1833180 m!2260951))

(declare-fun m!2260953 () Bool)

(assert (=> b!1833180 m!2260953))

(declare-fun m!2260955 () Bool)

(assert (=> b!1833182 m!2260955))

(assert (=> b!1832685 d!560450))

(declare-fun d!560452 () Bool)

(declare-fun lt!711685 () List!20226)

(declare-fun size!15987 (List!20226) Int)

(declare-fun size!15988 (List!20225) Int)

(assert (=> d!560452 (= (size!15987 lt!711685) (size!15988 rules!4610))))

(declare-fun e!1171635 () List!20226)

(assert (=> d!560452 (= lt!711685 e!1171635)))

(declare-fun c!298986 () Bool)

(assert (=> d!560452 (= c!298986 ((_ is Nil!20155) rules!4610))))

(assert (=> d!560452 (= (map!4183 rules!4610 lambda!72022) lt!711685)))

(declare-fun b!1833189 () Bool)

(assert (=> b!1833189 (= e!1171635 Nil!20156)))

(declare-fun b!1833190 () Bool)

(declare-fun $colon$colon!462 (List!20226 Regex!4971) List!20226)

(declare-fun dynLambda!10029 (Int Rule!7086) Regex!4971)

(assert (=> b!1833190 (= e!1171635 ($colon$colon!462 (map!4183 (t!170930 rules!4610) lambda!72022) (dynLambda!10029 lambda!72022 (h!25556 rules!4610))))))

(assert (= (and d!560452 c!298986) b!1833189))

(assert (= (and d!560452 (not c!298986)) b!1833190))

(declare-fun b_lambda!60687 () Bool)

(assert (=> (not b_lambda!60687) (not b!1833190)))

(declare-fun m!2260957 () Bool)

(assert (=> d!560452 m!2260957))

(declare-fun m!2260959 () Bool)

(assert (=> d!560452 m!2260959))

(declare-fun m!2260961 () Bool)

(assert (=> b!1833190 m!2260961))

(declare-fun m!2260963 () Bool)

(assert (=> b!1833190 m!2260963))

(assert (=> b!1833190 m!2260961))

(assert (=> b!1833190 m!2260963))

(declare-fun m!2260965 () Bool)

(assert (=> b!1833190 m!2260965))

(assert (=> b!1832685 d!560452))

(declare-fun bs!408042 () Bool)

(declare-fun d!560454 () Bool)

(assert (= bs!408042 (and d!560454 b!1832685)))

(declare-fun lambda!72051 () Int)

(assert (=> bs!408042 (= lambda!72051 lambda!72022)))

(declare-fun bs!408043 () Bool)

(assert (= bs!408043 (and d!560454 d!560448)))

(assert (=> bs!408043 (= lambda!72051 lambda!72043)))

(declare-fun bs!408044 () Bool)

(assert (= bs!408044 (and d!560454 d!560450)))

(declare-fun lambda!72052 () Int)

(assert (=> bs!408044 (= lambda!72052 lambda!72046)))

(assert (=> d!560454 (forall!4341 (map!4183 rules!4610 lambda!72051) lambda!72052)))

(declare-fun lt!711697 () Unit!34831)

(declare-fun e!1171638 () Unit!34831)

(assert (=> d!560454 (= lt!711697 e!1171638)))

(declare-fun c!298989 () Bool)

(assert (=> d!560454 (= c!298989 ((_ is Nil!20155) rules!4610))))

(assert (=> d!560454 (rulesValid!1390 thiss!28318 rules!4610)))

(declare-fun lt!711700 () Unit!34831)

(declare-fun lt!711696 () Unit!34831)

(assert (=> d!560454 (= lt!711700 lt!711696)))

(declare-fun lt!711699 () List!20224)

(assert (=> d!560454 (= (maxPrefixOneRule!1181 thiss!28318 rule!580 input!3681) (Some!4222 (tuple2!19611 (Token!6841 (apply!5431 (transformation!3643 rule!580) (seqFromList!2600 lt!711699)) rule!580 (size!15982 lt!711699) lt!711699) suffix!1698)))))

(assert (=> d!560454 (= lt!711696 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!551 thiss!28318 rules!4610 lt!711699 input!3681 suffix!1698 rule!580))))

(assert (=> d!560454 (= lt!711699 (list!8189 (charsOf!2286 token!567)))))

(assert (=> d!560454 (= (lemma!538 input!3681 rule!580 rules!4610 suffix!1698 thiss!28318 token!567 rules!4610) lt!711697)))

(declare-fun b!1833195 () Bool)

(declare-fun Unit!34835 () Unit!34831)

(assert (=> b!1833195 (= e!1171638 Unit!34835)))

(declare-fun b!1833196 () Bool)

(declare-fun Unit!34836 () Unit!34831)

(assert (=> b!1833196 (= e!1171638 Unit!34836)))

(declare-fun lt!711698 () Unit!34831)

(assert (=> b!1833196 (= lt!711698 (lemma!538 input!3681 rule!580 rules!4610 suffix!1698 thiss!28318 token!567 (t!170930 rules!4610)))))

(assert (= (and d!560454 c!298989) b!1833195))

(assert (= (and d!560454 (not c!298989)) b!1833196))

(declare-fun m!2260967 () Bool)

(assert (=> d!560454 m!2260967))

(declare-fun m!2260969 () Bool)

(assert (=> d!560454 m!2260969))

(declare-fun m!2260971 () Bool)

(assert (=> d!560454 m!2260971))

(assert (=> d!560454 m!2260967))

(declare-fun m!2260973 () Bool)

(assert (=> d!560454 m!2260973))

(assert (=> d!560454 m!2260449))

(declare-fun m!2260975 () Bool)

(assert (=> d!560454 m!2260975))

(assert (=> d!560454 m!2260463))

(assert (=> d!560454 m!2260449))

(assert (=> d!560454 m!2260451))

(declare-fun m!2260977 () Bool)

(assert (=> d!560454 m!2260977))

(assert (=> d!560454 m!2260969))

(declare-fun m!2260979 () Bool)

(assert (=> d!560454 m!2260979))

(declare-fun m!2260981 () Bool)

(assert (=> b!1833196 m!2260981))

(assert (=> b!1832685 d!560454))

(declare-fun d!560456 () Bool)

(assert (=> d!560456 (= (inv!26217 (tag!4057 (h!25556 rs!808))) (= (mod (str.len (value!113491 (tag!4057 (h!25556 rs!808)))) 2) 0))))

(assert (=> b!1832674 d!560456))

(declare-fun d!560458 () Bool)

(declare-fun res!824346 () Bool)

(declare-fun e!1171639 () Bool)

(assert (=> d!560458 (=> (not res!824346) (not e!1171639))))

(assert (=> d!560458 (= res!824346 (semiInverseModEq!1464 (toChars!5049 (transformation!3643 (h!25556 rs!808))) (toValue!5190 (transformation!3643 (h!25556 rs!808)))))))

(assert (=> d!560458 (= (inv!26221 (transformation!3643 (h!25556 rs!808))) e!1171639)))

(declare-fun b!1833197 () Bool)

(assert (=> b!1833197 (= e!1171639 (equivClasses!1405 (toChars!5049 (transformation!3643 (h!25556 rs!808))) (toValue!5190 (transformation!3643 (h!25556 rs!808)))))))

(assert (= (and d!560458 res!824346) b!1833197))

(declare-fun m!2260983 () Bool)

(assert (=> d!560458 m!2260983))

(declare-fun m!2260985 () Bool)

(assert (=> b!1833197 m!2260985))

(assert (=> b!1832674 d!560458))

(declare-fun d!560460 () Bool)

(declare-fun res!824349 () Bool)

(declare-fun e!1171642 () Bool)

(assert (=> d!560460 (=> (not res!824349) (not e!1171642))))

(assert (=> d!560460 (= res!824349 (rulesValid!1390 thiss!28318 rules!4610))))

(assert (=> d!560460 (= (rulesInvariant!2941 thiss!28318 rules!4610) e!1171642)))

(declare-fun b!1833200 () Bool)

(declare-datatypes ((List!20228 0))(
  ( (Nil!20158) (Cons!20158 (h!25559 String!22997) (t!170981 List!20228)) )
))
(declare-fun noDuplicateTag!1388 (LexerInterface!3272 List!20225 List!20228) Bool)

(assert (=> b!1833200 (= e!1171642 (noDuplicateTag!1388 thiss!28318 rules!4610 Nil!20158))))

(assert (= (and d!560460 res!824349) b!1833200))

(assert (=> d!560460 m!2260977))

(declare-fun m!2260987 () Bool)

(assert (=> b!1833200 m!2260987))

(assert (=> b!1832695 d!560460))

(declare-fun d!560462 () Bool)

(assert (=> d!560462 (= (inv!26217 (tag!4057 (rule!5819 token!567))) (= (mod (str.len (value!113491 (tag!4057 (rule!5819 token!567)))) 2) 0))))

(assert (=> b!1832684 d!560462))

(declare-fun d!560464 () Bool)

(declare-fun res!824350 () Bool)

(declare-fun e!1171643 () Bool)

(assert (=> d!560464 (=> (not res!824350) (not e!1171643))))

(assert (=> d!560464 (= res!824350 (semiInverseModEq!1464 (toChars!5049 (transformation!3643 (rule!5819 token!567))) (toValue!5190 (transformation!3643 (rule!5819 token!567)))))))

(assert (=> d!560464 (= (inv!26221 (transformation!3643 (rule!5819 token!567))) e!1171643)))

(declare-fun b!1833201 () Bool)

(assert (=> b!1833201 (= e!1171643 (equivClasses!1405 (toChars!5049 (transformation!3643 (rule!5819 token!567))) (toValue!5190 (transformation!3643 (rule!5819 token!567)))))))

(assert (= (and d!560464 res!824350) b!1833201))

(declare-fun m!2260989 () Bool)

(assert (=> d!560464 m!2260989))

(declare-fun m!2260991 () Bool)

(assert (=> b!1833201 m!2260991))

(assert (=> b!1832684 d!560464))

(declare-fun b!1833212 () Bool)

(declare-fun b_free!51299 () Bool)

(declare-fun b_next!52003 () Bool)

(assert (=> b!1833212 (= b_free!51299 (not b_next!52003))))

(declare-fun t!170974 () Bool)

(declare-fun tb!112129 () Bool)

(assert (=> (and b!1833212 (= (toValue!5190 (transformation!3643 (h!25556 (t!170930 rs!808)))) (toValue!5190 (transformation!3643 rule!580))) t!170974) tb!112129))

(declare-fun result!134844 () Bool)

(assert (= result!134844 result!134818))

(assert (=> d!560418 t!170974))

(declare-fun b_and!142865 () Bool)

(declare-fun tp!518604 () Bool)

(assert (=> b!1833212 (= tp!518604 (and (=> t!170974 result!134844) b_and!142865))))

(declare-fun b_free!51301 () Bool)

(declare-fun b_next!52005 () Bool)

(assert (=> b!1833212 (= b_free!51301 (not b_next!52005))))

(declare-fun tb!112131 () Bool)

(declare-fun t!170976 () Bool)

(assert (=> (and b!1833212 (= (toChars!5049 (transformation!3643 (h!25556 (t!170930 rs!808)))) (toChars!5049 (transformation!3643 (rule!5819 token!567)))) t!170976) tb!112131))

(declare-fun result!134846 () Bool)

(assert (= result!134846 result!134788))

(assert (=> b!1832701 t!170976))

(assert (=> d!560422 t!170976))

(declare-fun tp!518602 () Bool)

(declare-fun b_and!142867 () Bool)

(assert (=> b!1833212 (= tp!518602 (and (=> t!170976 result!134846) b_and!142867))))

(declare-fun e!1171652 () Bool)

(assert (=> b!1833212 (= e!1171652 (and tp!518604 tp!518602))))

(declare-fun e!1171653 () Bool)

(declare-fun b!1833211 () Bool)

(declare-fun tp!518603 () Bool)

(assert (=> b!1833211 (= e!1171653 (and tp!518603 (inv!26217 (tag!4057 (h!25556 (t!170930 rs!808)))) (inv!26221 (transformation!3643 (h!25556 (t!170930 rs!808)))) e!1171652))))

(declare-fun b!1833210 () Bool)

(declare-fun e!1171655 () Bool)

(declare-fun tp!518605 () Bool)

(assert (=> b!1833210 (= e!1171655 (and e!1171653 tp!518605))))

(assert (=> b!1832682 (= tp!518530 e!1171655)))

(assert (= b!1833211 b!1833212))

(assert (= b!1833210 b!1833211))

(assert (= (and b!1832682 ((_ is Cons!20155) (t!170930 rs!808))) b!1833210))

(declare-fun m!2260993 () Bool)

(assert (=> b!1833211 m!2260993))

(declare-fun m!2260995 () Bool)

(assert (=> b!1833211 m!2260995))

(declare-fun b!1833217 () Bool)

(declare-fun e!1171658 () Bool)

(declare-fun tp!518608 () Bool)

(assert (=> b!1833217 (= e!1171658 (and tp_is_empty!8177 tp!518608))))

(assert (=> b!1832683 (= tp!518533 e!1171658)))

(assert (= (and b!1832683 ((_ is Cons!20154) (originalCharacters!4451 token!567))) b!1833217))

(declare-fun b!1833220 () Bool)

(declare-fun b_free!51303 () Bool)

(declare-fun b_next!52007 () Bool)

(assert (=> b!1833220 (= b_free!51303 (not b_next!52007))))

(declare-fun t!170978 () Bool)

(declare-fun tb!112133 () Bool)

(assert (=> (and b!1833220 (= (toValue!5190 (transformation!3643 (h!25556 (t!170930 rules!4610)))) (toValue!5190 (transformation!3643 rule!580))) t!170978) tb!112133))

(declare-fun result!134850 () Bool)

(assert (= result!134850 result!134818))

(assert (=> d!560418 t!170978))

(declare-fun tp!518611 () Bool)

(declare-fun b_and!142869 () Bool)

(assert (=> b!1833220 (= tp!518611 (and (=> t!170978 result!134850) b_and!142869))))

(declare-fun b_free!51305 () Bool)

(declare-fun b_next!52009 () Bool)

(assert (=> b!1833220 (= b_free!51305 (not b_next!52009))))

(declare-fun t!170980 () Bool)

(declare-fun tb!112135 () Bool)

(assert (=> (and b!1833220 (= (toChars!5049 (transformation!3643 (h!25556 (t!170930 rules!4610)))) (toChars!5049 (transformation!3643 (rule!5819 token!567)))) t!170980) tb!112135))

(declare-fun result!134852 () Bool)

(assert (= result!134852 result!134788))

(assert (=> b!1832701 t!170980))

(assert (=> d!560422 t!170980))

(declare-fun b_and!142871 () Bool)

(declare-fun tp!518609 () Bool)

(assert (=> b!1833220 (= tp!518609 (and (=> t!170980 result!134852) b_and!142871))))

(declare-fun e!1171659 () Bool)

(assert (=> b!1833220 (= e!1171659 (and tp!518611 tp!518609))))

(declare-fun e!1171660 () Bool)

(declare-fun tp!518610 () Bool)

(declare-fun b!1833219 () Bool)

(assert (=> b!1833219 (= e!1171660 (and tp!518610 (inv!26217 (tag!4057 (h!25556 (t!170930 rules!4610)))) (inv!26221 (transformation!3643 (h!25556 (t!170930 rules!4610)))) e!1171659))))

(declare-fun b!1833218 () Bool)

(declare-fun e!1171662 () Bool)

(declare-fun tp!518612 () Bool)

(assert (=> b!1833218 (= e!1171662 (and e!1171660 tp!518612))))

(assert (=> b!1832692 (= tp!518531 e!1171662)))

(assert (= b!1833219 b!1833220))

(assert (= b!1833218 b!1833219))

(assert (= (and b!1832692 ((_ is Cons!20155) (t!170930 rules!4610))) b!1833218))

(declare-fun m!2260997 () Bool)

(assert (=> b!1833219 m!2260997))

(declare-fun m!2260999 () Bool)

(assert (=> b!1833219 m!2260999))

(declare-fun b!1833234 () Bool)

(declare-fun e!1171665 () Bool)

(declare-fun tp!518627 () Bool)

(declare-fun tp!518626 () Bool)

(assert (=> b!1833234 (= e!1171665 (and tp!518627 tp!518626))))

(declare-fun b!1833231 () Bool)

(assert (=> b!1833231 (= e!1171665 tp_is_empty!8177)))

(declare-fun b!1833232 () Bool)

(declare-fun tp!518623 () Bool)

(declare-fun tp!518624 () Bool)

(assert (=> b!1833232 (= e!1171665 (and tp!518623 tp!518624))))

(assert (=> b!1832690 (= tp!518525 e!1171665)))

(declare-fun b!1833233 () Bool)

(declare-fun tp!518625 () Bool)

(assert (=> b!1833233 (= e!1171665 tp!518625)))

(assert (= (and b!1832690 ((_ is ElementMatch!4971) (regex!3643 (h!25556 rules!4610)))) b!1833231))

(assert (= (and b!1832690 ((_ is Concat!8704) (regex!3643 (h!25556 rules!4610)))) b!1833232))

(assert (= (and b!1832690 ((_ is Star!4971) (regex!3643 (h!25556 rules!4610)))) b!1833233))

(assert (= (and b!1832690 ((_ is Union!4971) (regex!3643 (h!25556 rules!4610)))) b!1833234))

(declare-fun b!1833238 () Bool)

(declare-fun e!1171666 () Bool)

(declare-fun tp!518632 () Bool)

(declare-fun tp!518631 () Bool)

(assert (=> b!1833238 (= e!1171666 (and tp!518632 tp!518631))))

(declare-fun b!1833235 () Bool)

(assert (=> b!1833235 (= e!1171666 tp_is_empty!8177)))

(declare-fun b!1833236 () Bool)

(declare-fun tp!518628 () Bool)

(declare-fun tp!518629 () Bool)

(assert (=> b!1833236 (= e!1171666 (and tp!518628 tp!518629))))

(assert (=> b!1832674 (= tp!518520 e!1171666)))

(declare-fun b!1833237 () Bool)

(declare-fun tp!518630 () Bool)

(assert (=> b!1833237 (= e!1171666 tp!518630)))

(assert (= (and b!1832674 ((_ is ElementMatch!4971) (regex!3643 (h!25556 rs!808)))) b!1833235))

(assert (= (and b!1832674 ((_ is Concat!8704) (regex!3643 (h!25556 rs!808)))) b!1833236))

(assert (= (and b!1832674 ((_ is Star!4971) (regex!3643 (h!25556 rs!808)))) b!1833237))

(assert (= (and b!1832674 ((_ is Union!4971) (regex!3643 (h!25556 rs!808)))) b!1833238))

(declare-fun b!1833242 () Bool)

(declare-fun e!1171667 () Bool)

(declare-fun tp!518637 () Bool)

(declare-fun tp!518636 () Bool)

(assert (=> b!1833242 (= e!1171667 (and tp!518637 tp!518636))))

(declare-fun b!1833239 () Bool)

(assert (=> b!1833239 (= e!1171667 tp_is_empty!8177)))

(declare-fun b!1833240 () Bool)

(declare-fun tp!518633 () Bool)

(declare-fun tp!518634 () Bool)

(assert (=> b!1833240 (= e!1171667 (and tp!518633 tp!518634))))

(assert (=> b!1832689 (= tp!518536 e!1171667)))

(declare-fun b!1833241 () Bool)

(declare-fun tp!518635 () Bool)

(assert (=> b!1833241 (= e!1171667 tp!518635)))

(assert (= (and b!1832689 ((_ is ElementMatch!4971) (regex!3643 rule!580))) b!1833239))

(assert (= (and b!1832689 ((_ is Concat!8704) (regex!3643 rule!580))) b!1833240))

(assert (= (and b!1832689 ((_ is Star!4971) (regex!3643 rule!580))) b!1833241))

(assert (= (and b!1832689 ((_ is Union!4971) (regex!3643 rule!580))) b!1833242))

(declare-fun b!1833243 () Bool)

(declare-fun e!1171668 () Bool)

(declare-fun tp!518638 () Bool)

(assert (=> b!1833243 (= e!1171668 (and tp_is_empty!8177 tp!518638))))

(assert (=> b!1832673 (= tp!518527 e!1171668)))

(assert (= (and b!1832673 ((_ is Cons!20154) (t!170929 suffix!1698))) b!1833243))

(declare-fun b!1833244 () Bool)

(declare-fun e!1171669 () Bool)

(declare-fun tp!518639 () Bool)

(assert (=> b!1833244 (= e!1171669 (and tp_is_empty!8177 tp!518639))))

(assert (=> b!1832694 (= tp!518529 e!1171669)))

(assert (= (and b!1832694 ((_ is Cons!20154) (t!170929 input!3681))) b!1833244))

(declare-fun b!1833248 () Bool)

(declare-fun e!1171670 () Bool)

(declare-fun tp!518644 () Bool)

(declare-fun tp!518643 () Bool)

(assert (=> b!1833248 (= e!1171670 (and tp!518644 tp!518643))))

(declare-fun b!1833245 () Bool)

(assert (=> b!1833245 (= e!1171670 tp_is_empty!8177)))

(declare-fun b!1833246 () Bool)

(declare-fun tp!518640 () Bool)

(declare-fun tp!518641 () Bool)

(assert (=> b!1833246 (= e!1171670 (and tp!518640 tp!518641))))

(assert (=> b!1832684 (= tp!518528 e!1171670)))

(declare-fun b!1833247 () Bool)

(declare-fun tp!518642 () Bool)

(assert (=> b!1833247 (= e!1171670 tp!518642)))

(assert (= (and b!1832684 ((_ is ElementMatch!4971) (regex!3643 (rule!5819 token!567)))) b!1833245))

(assert (= (and b!1832684 ((_ is Concat!8704) (regex!3643 (rule!5819 token!567)))) b!1833246))

(assert (= (and b!1832684 ((_ is Star!4971) (regex!3643 (rule!5819 token!567)))) b!1833247))

(assert (= (and b!1832684 ((_ is Union!4971) (regex!3643 (rule!5819 token!567)))) b!1833248))

(declare-fun b_lambda!60689 () Bool)

(assert (= b_lambda!60687 (or b!1832685 b_lambda!60689)))

(declare-fun bs!408045 () Bool)

(declare-fun d!560466 () Bool)

(assert (= bs!408045 (and d!560466 b!1832685)))

(assert (=> bs!408045 (= (dynLambda!10029 lambda!72022 (h!25556 rules!4610)) (regex!3643 (h!25556 rules!4610)))))

(assert (=> b!1833190 d!560466))

(declare-fun b_lambda!60691 () Bool)

(assert (= b_lambda!60665 (or (and b!1832679 b_free!51281 (= (toChars!5049 (transformation!3643 rule!580)) (toChars!5049 (transformation!3643 (rule!5819 token!567))))) (and b!1832675 b_free!51289 (= (toChars!5049 (transformation!3643 (h!25556 rs!808))) (toChars!5049 (transformation!3643 (rule!5819 token!567))))) (and b!1833220 b_free!51305 (= (toChars!5049 (transformation!3643 (h!25556 (t!170930 rules!4610)))) (toChars!5049 (transformation!3643 (rule!5819 token!567))))) (and b!1832676 b_free!51285) (and b!1832696 b_free!51277 (= (toChars!5049 (transformation!3643 (h!25556 rules!4610))) (toChars!5049 (transformation!3643 (rule!5819 token!567))))) (and b!1833212 b_free!51301 (= (toChars!5049 (transformation!3643 (h!25556 (t!170930 rs!808)))) (toChars!5049 (transformation!3643 (rule!5819 token!567))))) b_lambda!60691)))

(declare-fun b_lambda!60693 () Bool)

(assert (= b_lambda!60675 (or (and b!1832679 b_free!51281 (= (toChars!5049 (transformation!3643 rule!580)) (toChars!5049 (transformation!3643 (rule!5819 token!567))))) (and b!1832675 b_free!51289 (= (toChars!5049 (transformation!3643 (h!25556 rs!808))) (toChars!5049 (transformation!3643 (rule!5819 token!567))))) (and b!1833220 b_free!51305 (= (toChars!5049 (transformation!3643 (h!25556 (t!170930 rules!4610)))) (toChars!5049 (transformation!3643 (rule!5819 token!567))))) (and b!1832676 b_free!51285) (and b!1832696 b_free!51277 (= (toChars!5049 (transformation!3643 (h!25556 rules!4610))) (toChars!5049 (transformation!3643 (rule!5819 token!567))))) (and b!1833212 b_free!51301 (= (toChars!5049 (transformation!3643 (h!25556 (t!170930 rs!808)))) (toChars!5049 (transformation!3643 (rule!5819 token!567))))) b_lambda!60693)))

(declare-fun b_lambda!60695 () Bool)

(assert (= b_lambda!60673 (or (and b!1832679 b_free!51279) (and b!1833212 b_free!51299 (= (toValue!5190 (transformation!3643 (h!25556 (t!170930 rs!808)))) (toValue!5190 (transformation!3643 rule!580)))) (and b!1833220 b_free!51303 (= (toValue!5190 (transformation!3643 (h!25556 (t!170930 rules!4610)))) (toValue!5190 (transformation!3643 rule!580)))) (and b!1832675 b_free!51287 (= (toValue!5190 (transformation!3643 (h!25556 rs!808))) (toValue!5190 (transformation!3643 rule!580)))) (and b!1832696 b_free!51275 (= (toValue!5190 (transformation!3643 (h!25556 rules!4610))) (toValue!5190 (transformation!3643 rule!580)))) (and b!1832676 b_free!51283 (= (toValue!5190 (transformation!3643 (rule!5819 token!567))) (toValue!5190 (transformation!3643 rule!580)))) b_lambda!60695)))

(check-sat (not b!1832983) (not b_next!51991) (not d!560384) (not b!1833200) (not b!1833035) (not b_lambda!60693) (not b!1832726) (not b!1832869) (not b!1833240) (not b!1833242) (not b!1833012) (not b!1832725) (not b_next!52009) (not b!1833218) (not b!1832834) (not b!1833243) (not d!560376) (not bm!114792) (not b!1832981) (not b!1832826) (not b!1832748) (not b_next!51983) b_and!142849 (not b!1832825) (not b!1833248) (not d!560452) b_and!142847 (not bm!114785) (not b!1833232) (not d!560448) (not b!1832702) (not b!1832982) (not b!1833182) (not b_next!51987) (not b!1833016) (not b!1832978) (not b!1832728) (not b!1832979) (not d!560450) (not b!1832975) (not b!1832849) (not d!560430) (not b!1832740) (not b!1833211) (not b!1833019) (not b!1833184) (not b!1833013) (not b!1833014) (not b!1832701) (not d!560454) (not b!1833018) (not b!1833234) (not d!560344) (not b!1833197) (not b!1832707) b_and!142855 (not b!1833023) (not b_lambda!60695) (not b!1833021) (not d!560400) b_and!142851 (not d!560334) (not b!1833238) b_and!142869 (not b!1833217) (not tb!112113) (not b_next!52005) (not b!1833022) (not d!560434) b_and!142853 (not b!1833026) (not b_lambda!60689) (not b_next!51981) (not b!1832977) b_and!142843 (not b_next!52003) (not b!1833180) (not b!1833027) (not b!1833178) (not d!560460) (not b_next!52007) b_and!142841 b_and!142865 (not b!1832991) (not d!560416) (not b!1833015) (not b!1833236) (not b!1833201) (not b!1833196) (not b!1833233) (not b!1833045) (not b!1833179) (not b!1833237) (not d!560428) (not b!1833183) (not b!1833190) (not b!1833246) (not d!560362) (not d!560354) (not b_lambda!60691) (not b_next!51985) (not b_next!51993) (not d!560436) (not b!1833247) (not b!1832980) (not b_next!51989) b_and!142867 (not bm!114791) (not d!560424) (not d!560366) (not d!560432) (not d!560422) (not b!1833241) (not b!1833210) b_and!142871 (not d!560458) (not b!1833017) (not b!1833011) (not b!1832829) (not d!560372) tp_is_empty!8177 (not b!1832830) (not b_next!51979) (not b!1833219) (not b!1833046) (not b!1833244) (not b!1833177) (not d!560464) (not tb!112089) (not b!1832838) (not b!1833031) b_and!142845)
(check-sat (not b_next!52009) b_and!142847 (not b_next!51987) b_and!142855 (not b_next!52005) (not b_next!52007) (not b_next!51991) b_and!142867 b_and!142871 (not b_next!51979) b_and!142845 (not b_next!51983) b_and!142849 b_and!142851 b_and!142869 b_and!142853 (not b_next!51981) b_and!142843 (not b_next!52003) b_and!142841 b_and!142865 (not b_next!51985) (not b_next!51993) (not b_next!51989))
