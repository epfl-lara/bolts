; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!188342 () Bool)

(assert start!188342)

(declare-fun b!1878295 () Bool)

(declare-fun b_free!52281 () Bool)

(declare-fun b_next!52985 () Bool)

(assert (=> b!1878295 (= b_free!52281 (not b_next!52985))))

(declare-fun tp!535494 () Bool)

(declare-fun b_and!144727 () Bool)

(assert (=> b!1878295 (= tp!535494 b_and!144727)))

(declare-fun b_free!52283 () Bool)

(declare-fun b_next!52987 () Bool)

(assert (=> b!1878295 (= b_free!52283 (not b_next!52987))))

(declare-fun tp!535492 () Bool)

(declare-fun b_and!144729 () Bool)

(assert (=> b!1878295 (= tp!535492 b_and!144729)))

(declare-fun e!1198668 () Bool)

(assert (=> b!1878295 (= e!1198668 (and tp!535494 tp!535492))))

(declare-fun tp!535495 () Bool)

(declare-fun e!1198665 () Bool)

(declare-fun b!1878296 () Bool)

(declare-datatypes ((List!21003 0))(
  ( (Nil!20921) (Cons!20921 (h!26322 (_ BitVec 16)) (t!173788 List!21003)) )
))
(declare-datatypes ((TokenValue!3848 0))(
  ( (FloatLiteralValue!7696 (text!27381 List!21003)) (TokenValueExt!3847 (__x!13134 Int)) (Broken!19240 (value!117231 List!21003)) (Object!3929) (End!3848) (Def!3848) (Underscore!3848) (Match!3848) (Else!3848) (Error!3848) (Case!3848) (If!3848) (Extends!3848) (Abstract!3848) (Class!3848) (Val!3848) (DelimiterValue!7696 (del!3908 List!21003)) (KeywordValue!3854 (value!117232 List!21003)) (CommentValue!7696 (value!117233 List!21003)) (WhitespaceValue!7696 (value!117234 List!21003)) (IndentationValue!3848 (value!117235 List!21003)) (String!24189) (Int32!3848) (Broken!19241 (value!117236 List!21003)) (Boolean!3849) (Unit!35447) (OperatorValue!3851 (op!3908 List!21003)) (IdentifierValue!7696 (value!117237 List!21003)) (IdentifierValue!7697 (value!117238 List!21003)) (WhitespaceValue!7697 (value!117239 List!21003)) (True!7696) (False!7696) (Broken!19242 (value!117240 List!21003)) (Broken!19243 (value!117241 List!21003)) (True!7697) (RightBrace!3848) (RightBracket!3848) (Colon!3848) (Null!3848) (Comma!3848) (LeftBracket!3848) (False!7697) (LeftBrace!3848) (ImaginaryLiteralValue!3848 (text!27382 List!21003)) (StringLiteralValue!11544 (value!117242 List!21003)) (EOFValue!3848 (value!117243 List!21003)) (IdentValue!3848 (value!117244 List!21003)) (DelimiterValue!7697 (value!117245 List!21003)) (DedentValue!3848 (value!117246 List!21003)) (NewLineValue!3848 (value!117247 List!21003)) (IntegerValue!11544 (value!117248 (_ BitVec 32)) (text!27383 List!21003)) (IntegerValue!11545 (value!117249 Int) (text!27384 List!21003)) (Times!3848) (Or!3848) (Equal!3848) (Minus!3848) (Broken!19244 (value!117250 List!21003)) (And!3848) (Div!3848) (LessEqual!3848) (Mod!3848) (Concat!8969) (Not!3848) (Plus!3848) (SpaceValue!3848 (value!117251 List!21003)) (IntegerValue!11546 (value!117252 Int) (text!27385 List!21003)) (StringLiteralValue!11545 (text!27386 List!21003)) (FloatLiteralValue!7697 (text!27387 List!21003)) (BytesLiteralValue!3848 (value!117253 List!21003)) (CommentValue!7697 (value!117254 List!21003)) (StringLiteralValue!11546 (value!117255 List!21003)) (ErrorTokenValue!3848 (msg!3909 List!21003)) )
))
(declare-datatypes ((C!10400 0))(
  ( (C!10401 (val!6088 Int)) )
))
(declare-datatypes ((Regex!5121 0))(
  ( (ElementMatch!5121 (c!306200 C!10400)) (Concat!8970 (regOne!10754 Regex!5121) (regTwo!10754 Regex!5121)) (EmptyExpr!5121) (Star!5121 (reg!5450 Regex!5121)) (EmptyLang!5121) (Union!5121 (regOne!10755 Regex!5121) (regTwo!10755 Regex!5121)) )
))
(declare-datatypes ((String!24190 0))(
  ( (String!24191 (value!117256 String)) )
))
(declare-datatypes ((List!21004 0))(
  ( (Nil!20922) (Cons!20922 (h!26323 C!10400) (t!173789 List!21004)) )
))
(declare-datatypes ((IArray!13911 0))(
  ( (IArray!13912 (innerList!7013 List!21004)) )
))
(declare-datatypes ((Conc!6953 0))(
  ( (Node!6953 (left!16819 Conc!6953) (right!17149 Conc!6953) (csize!14136 Int) (cheight!7164 Int)) (Leaf!10230 (xs!9837 IArray!13911) (csize!14137 Int)) (Empty!6953) )
))
(declare-datatypes ((BalanceConc!13722 0))(
  ( (BalanceConc!13723 (c!306201 Conc!6953)) )
))
(declare-datatypes ((TokenValueInjection!7280 0))(
  ( (TokenValueInjection!7281 (toValue!5313 Int) (toChars!5172 Int)) )
))
(declare-datatypes ((Rule!7224 0))(
  ( (Rule!7225 (regex!3712 Regex!5121) (tag!4126 String!24190) (isSeparator!3712 Bool) (transformation!3712 TokenValueInjection!7280)) )
))
(declare-datatypes ((Token!6976 0))(
  ( (Token!6977 (value!117257 TokenValue!3848) (rule!5905 Rule!7224) (size!16607 Int) (originalCharacters!4519 List!21004)) )
))
(declare-fun separatorToken!84 () Token!6976)

(declare-fun inv!27842 (String!24190) Bool)

(declare-fun inv!27847 (TokenValueInjection!7280) Bool)

(assert (=> b!1878296 (= e!1198665 (and tp!535495 (inv!27842 (tag!4126 (rule!5905 separatorToken!84))) (inv!27847 (transformation!3712 (rule!5905 separatorToken!84))) e!1198668))))

(declare-fun tp!535496 () Bool)

(declare-fun e!1198669 () Bool)

(declare-fun b!1878298 () Bool)

(declare-fun inv!21 (TokenValue!3848) Bool)

(assert (=> b!1878298 (= e!1198669 (and (inv!21 (value!117257 separatorToken!84)) e!1198665 tp!535496))))

(declare-fun b!1878299 () Bool)

(declare-fun e!1198672 () Bool)

(declare-datatypes ((List!21005 0))(
  ( (Nil!20923) (Cons!20923 (h!26324 Token!6976) (t!173790 List!21005)) )
))
(declare-datatypes ((IArray!13913 0))(
  ( (IArray!13914 (innerList!7014 List!21005)) )
))
(declare-datatypes ((Conc!6954 0))(
  ( (Node!6954 (left!16820 Conc!6954) (right!17150 Conc!6954) (csize!14138 Int) (cheight!7165 Int)) (Leaf!10231 (xs!9838 IArray!13913) (csize!14139 Int)) (Empty!6954) )
))
(declare-datatypes ((BalanceConc!13724 0))(
  ( (BalanceConc!13725 (c!306202 Conc!6954)) )
))
(declare-fun acc!408 () BalanceConc!13724)

(declare-fun tp!535497 () Bool)

(declare-fun inv!27848 (Conc!6954) Bool)

(assert (=> b!1878299 (= e!1198672 (and (inv!27848 (c!306202 acc!408)) tp!535497))))

(declare-fun b!1878300 () Bool)

(declare-fun e!1198671 () Bool)

(declare-fun lt!721664 () Int)

(declare-fun from!845 () Int)

(assert (=> b!1878300 (= e!1198671 (not (< (- lt!721664 (+ 1 from!845)) (- lt!721664 from!845))))))

(declare-fun lt!721656 () BalanceConc!13724)

(declare-fun lt!721663 () Token!6976)

(declare-fun ++!5689 (BalanceConc!13724 BalanceConc!13724) BalanceConc!13724)

(declare-fun singletonSeq!1825 (Token!6976) BalanceConc!13724)

(assert (=> b!1878300 (= lt!721656 (++!5689 acc!408 (++!5689 (singletonSeq!1825 lt!721663) (singletonSeq!1825 separatorToken!84))))))

(declare-fun lt!721660 () List!21005)

(declare-fun lt!721654 () List!21005)

(declare-fun lt!721659 () List!21005)

(declare-fun ++!5690 (List!21005 List!21005) List!21005)

(assert (=> b!1878300 (= (++!5690 (++!5690 lt!721660 lt!721654) lt!721659) (++!5690 lt!721660 (++!5690 lt!721654 lt!721659)))))

(declare-datatypes ((Unit!35448 0))(
  ( (Unit!35449) )
))
(declare-fun lt!721662 () Unit!35448)

(declare-fun lemmaConcatAssociativity!1127 (List!21005 List!21005 List!21005) Unit!35448)

(assert (=> b!1878300 (= lt!721662 (lemmaConcatAssociativity!1127 lt!721660 lt!721654 lt!721659))))

(declare-datatypes ((LexerInterface!3334 0))(
  ( (LexerInterfaceExt!3331 (__x!13135 Int)) (Lexer!3332) )
))
(declare-fun thiss!13718 () LexerInterface!3334)

(declare-fun lt!721661 () List!21005)

(declare-fun withSeparatorTokenList!120 (LexerInterface!3334 List!21005 Token!6976) List!21005)

(assert (=> b!1878300 (= lt!721659 (withSeparatorTokenList!120 thiss!13718 lt!721661 separatorToken!84))))

(assert (=> b!1878300 (= lt!721654 (Cons!20923 lt!721663 (Cons!20923 separatorToken!84 Nil!20923)))))

(declare-fun v!6352 () BalanceConc!13724)

(declare-fun apply!5524 (BalanceConc!13724 Int) Token!6976)

(assert (=> b!1878300 (= lt!721663 (apply!5524 v!6352 from!845))))

(declare-fun list!8544 (BalanceConc!13724) List!21005)

(assert (=> b!1878300 (= lt!721660 (list!8544 acc!408))))

(declare-fun lt!721657 () List!21005)

(declare-fun tail!2910 (List!21005) List!21005)

(assert (=> b!1878300 (= (tail!2910 lt!721657) lt!721661)))

(declare-fun lt!721665 () List!21005)

(declare-fun drop!1032 (List!21005 Int) List!21005)

(assert (=> b!1878300 (= lt!721661 (drop!1032 lt!721665 (+ 1 from!845)))))

(declare-fun lt!721658 () Unit!35448)

(declare-fun lemmaDropTail!648 (List!21005 Int) Unit!35448)

(assert (=> b!1878300 (= lt!721658 (lemmaDropTail!648 lt!721665 from!845))))

(declare-fun head!4381 (List!21005) Token!6976)

(declare-fun apply!5525 (List!21005 Int) Token!6976)

(assert (=> b!1878300 (= (head!4381 lt!721657) (apply!5525 lt!721665 from!845))))

(assert (=> b!1878300 (= lt!721657 (drop!1032 lt!721665 from!845))))

(declare-fun lt!721655 () Unit!35448)

(declare-fun lemmaDropApply!668 (List!21005 Int) Unit!35448)

(assert (=> b!1878300 (= lt!721655 (lemmaDropApply!668 lt!721665 from!845))))

(assert (=> b!1878300 (= lt!721665 (list!8544 v!6352))))

(declare-fun b!1878301 () Bool)

(declare-fun e!1198673 () Bool)

(declare-fun tp!535493 () Bool)

(assert (=> b!1878301 (= e!1198673 (and (inv!27848 (c!306202 v!6352)) tp!535493))))

(declare-fun res!839581 () Bool)

(declare-fun e!1198666 () Bool)

(assert (=> start!188342 (=> (not res!839581) (not e!1198666))))

(get-info :version)

(assert (=> start!188342 (= res!839581 (and ((_ is Lexer!3332) thiss!13718) (>= from!845 0)))))

(assert (=> start!188342 e!1198666))

(assert (=> start!188342 true))

(declare-fun inv!27849 (BalanceConc!13724) Bool)

(assert (=> start!188342 (and (inv!27849 acc!408) e!1198672)))

(assert (=> start!188342 (and (inv!27849 v!6352) e!1198673)))

(declare-fun inv!27850 (Token!6976) Bool)

(assert (=> start!188342 (and (inv!27850 separatorToken!84) e!1198669)))

(declare-fun b!1878297 () Bool)

(assert (=> b!1878297 (= e!1198666 e!1198671)))

(declare-fun res!839580 () Bool)

(assert (=> b!1878297 (=> (not res!839580) (not e!1198671))))

(assert (=> b!1878297 (= res!839580 (and (<= from!845 lt!721664) (isSeparator!3712 (rule!5905 separatorToken!84)) (< from!845 lt!721664)))))

(declare-fun size!16608 (BalanceConc!13724) Int)

(assert (=> b!1878297 (= lt!721664 (size!16608 v!6352))))

(assert (= (and start!188342 res!839581) b!1878297))

(assert (= (and b!1878297 res!839580) b!1878300))

(assert (= start!188342 b!1878299))

(assert (= start!188342 b!1878301))

(assert (= b!1878296 b!1878295))

(assert (= b!1878298 b!1878296))

(assert (= start!188342 b!1878298))

(declare-fun m!2305653 () Bool)

(assert (=> b!1878301 m!2305653))

(declare-fun m!2305655 () Bool)

(assert (=> b!1878300 m!2305655))

(declare-fun m!2305657 () Bool)

(assert (=> b!1878300 m!2305657))

(declare-fun m!2305659 () Bool)

(assert (=> b!1878300 m!2305659))

(declare-fun m!2305661 () Bool)

(assert (=> b!1878300 m!2305661))

(declare-fun m!2305663 () Bool)

(assert (=> b!1878300 m!2305663))

(declare-fun m!2305665 () Bool)

(assert (=> b!1878300 m!2305665))

(declare-fun m!2305667 () Bool)

(assert (=> b!1878300 m!2305667))

(declare-fun m!2305669 () Bool)

(assert (=> b!1878300 m!2305669))

(declare-fun m!2305671 () Bool)

(assert (=> b!1878300 m!2305671))

(declare-fun m!2305673 () Bool)

(assert (=> b!1878300 m!2305673))

(declare-fun m!2305675 () Bool)

(assert (=> b!1878300 m!2305675))

(declare-fun m!2305677 () Bool)

(assert (=> b!1878300 m!2305677))

(declare-fun m!2305679 () Bool)

(assert (=> b!1878300 m!2305679))

(declare-fun m!2305681 () Bool)

(assert (=> b!1878300 m!2305681))

(assert (=> b!1878300 m!2305659))

(assert (=> b!1878300 m!2305655))

(assert (=> b!1878300 m!2305669))

(declare-fun m!2305683 () Bool)

(assert (=> b!1878300 m!2305683))

(declare-fun m!2305685 () Bool)

(assert (=> b!1878300 m!2305685))

(declare-fun m!2305687 () Bool)

(assert (=> b!1878300 m!2305687))

(declare-fun m!2305689 () Bool)

(assert (=> b!1878300 m!2305689))

(assert (=> b!1878300 m!2305677))

(declare-fun m!2305691 () Bool)

(assert (=> b!1878300 m!2305691))

(assert (=> b!1878300 m!2305689))

(declare-fun m!2305693 () Bool)

(assert (=> b!1878300 m!2305693))

(declare-fun m!2305695 () Bool)

(assert (=> b!1878299 m!2305695))

(declare-fun m!2305697 () Bool)

(assert (=> b!1878297 m!2305697))

(declare-fun m!2305699 () Bool)

(assert (=> b!1878298 m!2305699))

(declare-fun m!2305701 () Bool)

(assert (=> start!188342 m!2305701))

(declare-fun m!2305703 () Bool)

(assert (=> start!188342 m!2305703))

(declare-fun m!2305705 () Bool)

(assert (=> start!188342 m!2305705))

(declare-fun m!2305707 () Bool)

(assert (=> b!1878296 m!2305707))

(declare-fun m!2305709 () Bool)

(assert (=> b!1878296 m!2305709))

(check-sat (not b!1878300) (not b_next!52985) (not b!1878298) (not b!1878296) b_and!144729 (not b!1878299) (not b!1878301) (not b!1878297) (not start!188342) (not b_next!52987) b_and!144727)
(check-sat b_and!144729 b_and!144727 (not b_next!52985) (not b_next!52987))
