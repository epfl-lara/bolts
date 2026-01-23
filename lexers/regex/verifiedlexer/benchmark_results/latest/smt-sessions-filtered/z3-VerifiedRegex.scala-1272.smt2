; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!66152 () Bool)

(assert start!66152)

(declare-fun b!691729 () Bool)

(declare-fun b_free!19609 () Bool)

(declare-fun b_next!19673 () Bool)

(assert (=> b!691729 (= b_free!19609 (not b_next!19673))))

(declare-fun tp!208417 () Bool)

(declare-fun b_and!63403 () Bool)

(assert (=> b!691729 (= tp!208417 b_and!63403)))

(declare-fun b_free!19611 () Bool)

(declare-fun b_next!19675 () Bool)

(assert (=> b!691729 (= b_free!19611 (not b_next!19675))))

(declare-fun tp!208418 () Bool)

(declare-fun b_and!63405 () Bool)

(assert (=> b!691729 (= tp!208418 b_and!63405)))

(declare-fun b!691720 () Bool)

(declare-fun e!435154 () Bool)

(assert (=> b!691720 (= e!435154 false)))

(declare-datatypes ((C!4280 0))(
  ( (C!4281 (val!2370 Int)) )
))
(declare-datatypes ((List!7495 0))(
  ( (Nil!7481) (Cons!7481 (h!12882 C!4280) (t!87313 List!7495)) )
))
(declare-fun lt!284769 () List!7495)

(declare-datatypes ((List!7496 0))(
  ( (Nil!7482) (Cons!7482 (h!12883 (_ BitVec 16)) (t!87314 List!7496)) )
))
(declare-datatypes ((TokenValue!1545 0))(
  ( (FloatLiteralValue!3090 (text!11260 List!7496)) (TokenValueExt!1544 (__x!5397 Int)) (Broken!7725 (value!48416 List!7496)) (Object!1558) (End!1545) (Def!1545) (Underscore!1545) (Match!1545) (Else!1545) (Error!1545) (Case!1545) (If!1545) (Extends!1545) (Abstract!1545) (Class!1545) (Val!1545) (DelimiterValue!3090 (del!1605 List!7496)) (KeywordValue!1551 (value!48417 List!7496)) (CommentValue!3090 (value!48418 List!7496)) (WhitespaceValue!3090 (value!48419 List!7496)) (IndentationValue!1545 (value!48420 List!7496)) (String!9448) (Int32!1545) (Broken!7726 (value!48421 List!7496)) (Boolean!1546) (Unit!12646) (OperatorValue!1548 (op!1605 List!7496)) (IdentifierValue!3090 (value!48422 List!7496)) (IdentifierValue!3091 (value!48423 List!7496)) (WhitespaceValue!3091 (value!48424 List!7496)) (True!3090) (False!3090) (Broken!7727 (value!48425 List!7496)) (Broken!7728 (value!48426 List!7496)) (True!3091) (RightBrace!1545) (RightBracket!1545) (Colon!1545) (Null!1545) (Comma!1545) (LeftBracket!1545) (False!3091) (LeftBrace!1545) (ImaginaryLiteralValue!1545 (text!11261 List!7496)) (StringLiteralValue!4635 (value!48427 List!7496)) (EOFValue!1545 (value!48428 List!7496)) (IdentValue!1545 (value!48429 List!7496)) (DelimiterValue!3091 (value!48430 List!7496)) (DedentValue!1545 (value!48431 List!7496)) (NewLineValue!1545 (value!48432 List!7496)) (IntegerValue!4635 (value!48433 (_ BitVec 32)) (text!11262 List!7496)) (IntegerValue!4636 (value!48434 Int) (text!11263 List!7496)) (Times!1545) (Or!1545) (Equal!1545) (Minus!1545) (Broken!7729 (value!48435 List!7496)) (And!1545) (Div!1545) (LessEqual!1545) (Mod!1545) (Concat!3384) (Not!1545) (Plus!1545) (SpaceValue!1545 (value!48436 List!7496)) (IntegerValue!4637 (value!48437 Int) (text!11264 List!7496)) (StringLiteralValue!4636 (text!11265 List!7496)) (FloatLiteralValue!3091 (text!11266 List!7496)) (BytesLiteralValue!1545 (value!48438 List!7496)) (CommentValue!3091 (value!48439 List!7496)) (StringLiteralValue!4637 (value!48440 List!7496)) (ErrorTokenValue!1545 (msg!1606 List!7496)) )
))
(declare-datatypes ((Regex!1839 0))(
  ( (ElementMatch!1839 (c!121597 C!4280)) (Concat!3385 (regOne!4190 Regex!1839) (regTwo!4190 Regex!1839)) (EmptyExpr!1839) (Star!1839 (reg!2168 Regex!1839)) (EmptyLang!1839) (Union!1839 (regOne!4191 Regex!1839) (regTwo!4191 Regex!1839)) )
))
(declare-datatypes ((IArray!5283 0))(
  ( (IArray!5284 (innerList!2699 List!7495)) )
))
(declare-datatypes ((Conc!2641 0))(
  ( (Node!2641 (left!5993 Conc!2641) (right!6323 Conc!2641) (csize!5512 Int) (cheight!2852 Int)) (Leaf!3914 (xs!5292 IArray!5283) (csize!5513 Int)) (Empty!2641) )
))
(declare-datatypes ((BalanceConc!5294 0))(
  ( (BalanceConc!5295 (c!121598 Conc!2641)) )
))
(declare-datatypes ((String!9449 0))(
  ( (String!9450 (value!48441 String)) )
))
(declare-datatypes ((TokenValueInjection!2826 0))(
  ( (TokenValueInjection!2827 (toValue!2463 Int) (toChars!2322 Int)) )
))
(declare-datatypes ((Rule!2802 0))(
  ( (Rule!2803 (regex!1501 Regex!1839) (tag!1763 String!9449) (isSeparator!1501 Bool) (transformation!1501 TokenValueInjection!2826)) )
))
(declare-datatypes ((Token!2702 0))(
  ( (Token!2703 (value!48442 TokenValue!1545) (rule!2540 Rule!2802) (size!6124 Int) (originalCharacters!1776 List!7495)) )
))
(declare-datatypes ((List!7497 0))(
  ( (Nil!7483) (Cons!7483 (h!12884 Token!2702) (t!87315 List!7497)) )
))
(declare-datatypes ((IArray!5285 0))(
  ( (IArray!5286 (innerList!2700 List!7497)) )
))
(declare-datatypes ((Conc!2642 0))(
  ( (Node!2642 (left!5994 Conc!2642) (right!6324 Conc!2642) (csize!5514 Int) (cheight!2853 Int)) (Leaf!3915 (xs!5293 IArray!5285) (csize!5515 Int)) (Empty!2642) )
))
(declare-datatypes ((BalanceConc!5296 0))(
  ( (BalanceConc!5297 (c!121599 Conc!2642)) )
))
(declare-datatypes ((tuple2!7880 0))(
  ( (tuple2!7881 (_1!4355 BalanceConc!5296) (_2!4355 BalanceConc!5294)) )
))
(declare-fun lt!284770 () tuple2!7880)

(declare-fun list!3141 (BalanceConc!5294) List!7495)

(assert (=> b!691720 (= lt!284769 (list!3141 (_2!4355 lt!284770)))))

(declare-fun b!691721 () Bool)

(declare-fun e!435153 () Bool)

(assert (=> b!691721 (= e!435153 e!435154)))

(declare-fun res!313637 () Bool)

(assert (=> b!691721 (=> (not res!313637) (not e!435154))))

(declare-fun acc!372 () BalanceConc!5296)

(declare-fun list!3142 (BalanceConc!5296) List!7497)

(assert (=> b!691721 (= res!313637 (= (list!3142 (_1!4355 lt!284770)) (list!3142 acc!372)))))

(declare-fun treated!50 () BalanceConc!5294)

(declare-datatypes ((List!7498 0))(
  ( (Nil!7484) (Cons!7484 (h!12885 Rule!2802) (t!87316 List!7498)) )
))
(declare-fun rules!1486 () List!7498)

(declare-datatypes ((LexerInterface!1315 0))(
  ( (LexerInterfaceExt!1312 (__x!5398 Int)) (Lexer!1313) )
))
(declare-fun thiss!12529 () LexerInterface!1315)

(declare-fun lexRec!158 (LexerInterface!1315 List!7498 BalanceConc!5294) tuple2!7880)

(assert (=> b!691721 (= lt!284770 (lexRec!158 thiss!12529 rules!1486 treated!50))))

(declare-fun b!691722 () Bool)

(declare-fun res!313638 () Bool)

(assert (=> b!691722 (=> (not res!313638) (not e!435153))))

(declare-fun isEmpty!4871 (List!7498) Bool)

(assert (=> b!691722 (= res!313638 (not (isEmpty!4871 rules!1486)))))

(declare-fun b!691723 () Bool)

(declare-fun e!435152 () Bool)

(declare-fun input!870 () BalanceConc!5294)

(declare-fun tp!208419 () Bool)

(declare-fun inv!9593 (Conc!2641) Bool)

(assert (=> b!691723 (= e!435152 (and (inv!9593 (c!121598 input!870)) tp!208419))))

(declare-fun b!691724 () Bool)

(declare-fun res!313636 () Bool)

(assert (=> b!691724 (=> (not res!313636) (not e!435153))))

(declare-fun rulesInvariant!1248 (LexerInterface!1315 List!7498) Bool)

(assert (=> b!691724 (= res!313636 (rulesInvariant!1248 thiss!12529 rules!1486))))

(declare-fun b!691725 () Bool)

(declare-fun e!435155 () Bool)

(declare-fun tp!208416 () Bool)

(assert (=> b!691725 (= e!435155 (and (inv!9593 (c!121598 treated!50)) tp!208416))))

(declare-fun b!691726 () Bool)

(declare-fun e!435148 () Bool)

(declare-fun totalInput!378 () BalanceConc!5294)

(declare-fun tp!208420 () Bool)

(assert (=> b!691726 (= e!435148 (and (inv!9593 (c!121598 totalInput!378)) tp!208420))))

(declare-fun res!313634 () Bool)

(assert (=> start!66152 (=> (not res!313634) (not e!435153))))

(get-info :version)

(assert (=> start!66152 (= res!313634 ((_ is Lexer!1313) thiss!12529))))

(assert (=> start!66152 e!435153))

(declare-fun e!435151 () Bool)

(declare-fun inv!9594 (BalanceConc!5296) Bool)

(assert (=> start!66152 (and (inv!9594 acc!372) e!435151)))

(declare-fun inv!9595 (BalanceConc!5294) Bool)

(assert (=> start!66152 (and (inv!9595 treated!50) e!435155)))

(assert (=> start!66152 (and (inv!9595 totalInput!378) e!435148)))

(assert (=> start!66152 (and (inv!9595 input!870) e!435152)))

(declare-fun e!435156 () Bool)

(assert (=> start!66152 e!435156))

(assert (=> start!66152 true))

(declare-fun b!691719 () Bool)

(declare-fun tp!208421 () Bool)

(declare-fun inv!9596 (Conc!2642) Bool)

(assert (=> b!691719 (= e!435151 (and (inv!9596 (c!121599 acc!372)) tp!208421))))

(declare-fun b!691727 () Bool)

(declare-fun e!435150 () Bool)

(declare-fun tp!208423 () Bool)

(assert (=> b!691727 (= e!435156 (and e!435150 tp!208423))))

(declare-fun b!691728 () Bool)

(declare-fun res!313635 () Bool)

(assert (=> b!691728 (=> (not res!313635) (not e!435153))))

(declare-fun ++!1951 (List!7495 List!7495) List!7495)

(assert (=> b!691728 (= res!313635 (= (list!3141 totalInput!378) (++!1951 (list!3141 treated!50) (list!3141 input!870))))))

(declare-fun e!435149 () Bool)

(assert (=> b!691729 (= e!435149 (and tp!208417 tp!208418))))

(declare-fun b!691730 () Bool)

(declare-fun tp!208422 () Bool)

(declare-fun inv!9587 (String!9449) Bool)

(declare-fun inv!9597 (TokenValueInjection!2826) Bool)

(assert (=> b!691730 (= e!435150 (and tp!208422 (inv!9587 (tag!1763 (h!12885 rules!1486))) (inv!9597 (transformation!1501 (h!12885 rules!1486))) e!435149))))

(assert (= (and start!66152 res!313634) b!691722))

(assert (= (and b!691722 res!313638) b!691724))

(assert (= (and b!691724 res!313636) b!691728))

(assert (= (and b!691728 res!313635) b!691721))

(assert (= (and b!691721 res!313637) b!691720))

(assert (= start!66152 b!691719))

(assert (= start!66152 b!691725))

(assert (= start!66152 b!691726))

(assert (= start!66152 b!691723))

(assert (= b!691730 b!691729))

(assert (= b!691727 b!691730))

(assert (= (and start!66152 ((_ is Cons!7484) rules!1486)) b!691727))

(declare-fun m!947846 () Bool)

(assert (=> b!691730 m!947846))

(declare-fun m!947848 () Bool)

(assert (=> b!691730 m!947848))

(declare-fun m!947850 () Bool)

(assert (=> b!691725 m!947850))

(declare-fun m!947852 () Bool)

(assert (=> b!691721 m!947852))

(declare-fun m!947854 () Bool)

(assert (=> b!691721 m!947854))

(declare-fun m!947856 () Bool)

(assert (=> b!691721 m!947856))

(declare-fun m!947858 () Bool)

(assert (=> b!691728 m!947858))

(declare-fun m!947860 () Bool)

(assert (=> b!691728 m!947860))

(declare-fun m!947862 () Bool)

(assert (=> b!691728 m!947862))

(assert (=> b!691728 m!947860))

(assert (=> b!691728 m!947862))

(declare-fun m!947864 () Bool)

(assert (=> b!691728 m!947864))

(declare-fun m!947866 () Bool)

(assert (=> b!691724 m!947866))

(declare-fun m!947868 () Bool)

(assert (=> b!691723 m!947868))

(declare-fun m!947870 () Bool)

(assert (=> b!691720 m!947870))

(declare-fun m!947872 () Bool)

(assert (=> b!691719 m!947872))

(declare-fun m!947874 () Bool)

(assert (=> start!66152 m!947874))

(declare-fun m!947876 () Bool)

(assert (=> start!66152 m!947876))

(declare-fun m!947878 () Bool)

(assert (=> start!66152 m!947878))

(declare-fun m!947880 () Bool)

(assert (=> start!66152 m!947880))

(declare-fun m!947882 () Bool)

(assert (=> b!691726 m!947882))

(declare-fun m!947884 () Bool)

(assert (=> b!691722 m!947884))

(check-sat (not b!691719) (not b!691722) (not b!691727) (not start!66152) (not b!691728) b_and!63403 (not b!691730) (not b!691724) (not b_next!19673) b_and!63405 (not b_next!19675) (not b!691726) (not b!691721) (not b!691720) (not b!691723) (not b!691725))
(check-sat b_and!63405 b_and!63403 (not b_next!19675) (not b_next!19673))
