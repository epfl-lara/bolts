; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!193514 () Bool)

(assert start!193514)

(declare-fun b!1929438 () Bool)

(declare-fun b_free!55261 () Bool)

(declare-fun b_next!55965 () Bool)

(assert (=> b!1929438 (= b_free!55261 (not b_next!55965))))

(declare-fun tp!550846 () Bool)

(declare-fun b_and!151507 () Bool)

(assert (=> b!1929438 (= tp!550846 b_and!151507)))

(declare-fun b_free!55263 () Bool)

(declare-fun b_next!55967 () Bool)

(assert (=> b!1929438 (= b_free!55263 (not b_next!55967))))

(declare-fun tp!550845 () Bool)

(declare-fun b_and!151509 () Bool)

(assert (=> b!1929438 (= tp!550845 b_and!151509)))

(declare-fun b!1929437 () Bool)

(declare-fun b_free!55265 () Bool)

(declare-fun b_next!55969 () Bool)

(assert (=> b!1929437 (= b_free!55265 (not b_next!55969))))

(declare-fun tp!550844 () Bool)

(declare-fun b_and!151511 () Bool)

(assert (=> b!1929437 (= tp!550844 b_and!151511)))

(declare-fun b_free!55267 () Bool)

(declare-fun b_next!55971 () Bool)

(assert (=> b!1929437 (= b_free!55267 (not b_next!55971))))

(declare-fun tp!550851 () Bool)

(declare-fun b_and!151513 () Bool)

(assert (=> b!1929437 (= tp!550851 b_and!151513)))

(declare-fun b!1929449 () Bool)

(declare-fun b_free!55269 () Bool)

(declare-fun b_next!55973 () Bool)

(assert (=> b!1929449 (= b_free!55269 (not b_next!55973))))

(declare-fun tp!550847 () Bool)

(declare-fun b_and!151515 () Bool)

(assert (=> b!1929449 (= tp!550847 b_and!151515)))

(declare-fun b_free!55271 () Bool)

(declare-fun b_next!55975 () Bool)

(assert (=> b!1929449 (= b_free!55271 (not b_next!55975))))

(declare-fun tp!550839 () Bool)

(declare-fun b_and!151517 () Bool)

(assert (=> b!1929449 (= tp!550839 b_and!151517)))

(declare-fun e!1233267 () Bool)

(declare-datatypes ((List!22022 0))(
  ( (Nil!21940) (Cons!21940 (h!27341 (_ BitVec 16)) (t!179955 List!22022)) )
))
(declare-datatypes ((TokenValue!4071 0))(
  ( (FloatLiteralValue!8142 (text!28942 List!22022)) (TokenValueExt!4070 (__x!13640 Int)) (Broken!20355 (value!123714 List!22022)) (Object!4152) (End!4071) (Def!4071) (Underscore!4071) (Match!4071) (Else!4071) (Error!4071) (Case!4071) (If!4071) (Extends!4071) (Abstract!4071) (Class!4071) (Val!4071) (DelimiterValue!8142 (del!4131 List!22022)) (KeywordValue!4077 (value!123715 List!22022)) (CommentValue!8142 (value!123716 List!22022)) (WhitespaceValue!8142 (value!123717 List!22022)) (IndentationValue!4071 (value!123718 List!22022)) (String!25474) (Int32!4071) (Broken!20356 (value!123719 List!22022)) (Boolean!4072) (Unit!36298) (OperatorValue!4074 (op!4131 List!22022)) (IdentifierValue!8142 (value!123720 List!22022)) (IdentifierValue!8143 (value!123721 List!22022)) (WhitespaceValue!8143 (value!123722 List!22022)) (True!8142) (False!8142) (Broken!20357 (value!123723 List!22022)) (Broken!20358 (value!123724 List!22022)) (True!8143) (RightBrace!4071) (RightBracket!4071) (Colon!4071) (Null!4071) (Comma!4071) (LeftBracket!4071) (False!8143) (LeftBrace!4071) (ImaginaryLiteralValue!4071 (text!28943 List!22022)) (StringLiteralValue!12213 (value!123725 List!22022)) (EOFValue!4071 (value!123726 List!22022)) (IdentValue!4071 (value!123727 List!22022)) (DelimiterValue!8143 (value!123728 List!22022)) (DedentValue!4071 (value!123729 List!22022)) (NewLineValue!4071 (value!123730 List!22022)) (IntegerValue!12213 (value!123731 (_ BitVec 32)) (text!28944 List!22022)) (IntegerValue!12214 (value!123732 Int) (text!28945 List!22022)) (Times!4071) (Or!4071) (Equal!4071) (Minus!4071) (Broken!20359 (value!123733 List!22022)) (And!4071) (Div!4071) (LessEqual!4071) (Mod!4071) (Concat!9431) (Not!4071) (Plus!4071) (SpaceValue!4071 (value!123734 List!22022)) (IntegerValue!12215 (value!123735 Int) (text!28946 List!22022)) (StringLiteralValue!12214 (text!28947 List!22022)) (FloatLiteralValue!8143 (text!28948 List!22022)) (BytesLiteralValue!4071 (value!123736 List!22022)) (CommentValue!8143 (value!123737 List!22022)) (StringLiteralValue!12215 (value!123738 List!22022)) (ErrorTokenValue!4071 (msg!4132 List!22022)) )
))
(declare-datatypes ((C!10866 0))(
  ( (C!10867 (val!6385 Int)) )
))
(declare-datatypes ((List!22023 0))(
  ( (Nil!21941) (Cons!21941 (h!27342 C!10866) (t!179956 List!22023)) )
))
(declare-datatypes ((String!25475 0))(
  ( (String!25476 (value!123739 String)) )
))
(declare-datatypes ((Regex!5360 0))(
  ( (ElementMatch!5360 (c!313854 C!10866)) (Concat!9432 (regOne!11232 Regex!5360) (regTwo!11232 Regex!5360)) (EmptyExpr!5360) (Star!5360 (reg!5689 Regex!5360)) (EmptyLang!5360) (Union!5360 (regOne!11233 Regex!5360) (regTwo!11233 Regex!5360)) )
))
(declare-datatypes ((IArray!14653 0))(
  ( (IArray!14654 (innerList!7384 List!22023)) )
))
(declare-datatypes ((Conc!7324 0))(
  ( (Node!7324 (left!17454 Conc!7324) (right!17784 Conc!7324) (csize!14878 Int) (cheight!7535 Int)) (Leaf!10755 (xs!10218 IArray!14653) (csize!14879 Int)) (Empty!7324) )
))
(declare-datatypes ((BalanceConc!14464 0))(
  ( (BalanceConc!14465 (c!313855 Conc!7324)) )
))
(declare-datatypes ((TokenValueInjection!7726 0))(
  ( (TokenValueInjection!7727 (toValue!5572 Int) (toChars!5431 Int)) )
))
(declare-datatypes ((Rule!7670 0))(
  ( (Rule!7671 (regex!3935 Regex!5360) (tag!4383 String!25475) (isSeparator!3935 Bool) (transformation!3935 TokenValueInjection!7726)) )
))
(declare-datatypes ((Token!7422 0))(
  ( (Token!7423 (value!123740 TokenValue!4071) (rule!6142 Rule!7670) (size!17121 Int) (originalCharacters!4742 List!22023)) )
))
(declare-fun separatorToken!354 () Token!7422)

(declare-fun b!1929431 () Bool)

(declare-fun tp!550848 () Bool)

(declare-fun e!1233270 () Bool)

(declare-fun inv!29026 (String!25475) Bool)

(declare-fun inv!29029 (TokenValueInjection!7726) Bool)

(assert (=> b!1929431 (= e!1233267 (and tp!550848 (inv!29026 (tag!4383 (rule!6142 separatorToken!354))) (inv!29029 (transformation!3935 (rule!6142 separatorToken!354))) e!1233270))))

(declare-fun tp!550849 () Bool)

(declare-fun b!1929432 () Bool)

(declare-fun e!1233262 () Bool)

(declare-datatypes ((List!22024 0))(
  ( (Nil!21942) (Cons!21942 (h!27343 Rule!7670) (t!179957 List!22024)) )
))
(declare-fun rules!3198 () List!22024)

(declare-fun e!1233254 () Bool)

(assert (=> b!1929432 (= e!1233262 (and tp!550849 (inv!29026 (tag!4383 (h!27343 rules!3198))) (inv!29029 (transformation!3935 (h!27343 rules!3198))) e!1233254))))

(declare-fun b!1929433 () Bool)

(declare-fun e!1233253 () Bool)

(declare-fun e!1233261 () Bool)

(assert (=> b!1929433 (= e!1233253 e!1233261)))

(declare-fun res!862660 () Bool)

(assert (=> b!1929433 (=> (not res!862660) (not e!1233261))))

(declare-fun lt!739572 () Rule!7670)

(declare-fun lt!739564 () List!22023)

(declare-fun matchR!2628 (Regex!5360 List!22023) Bool)

(assert (=> b!1929433 (= res!862660 (matchR!2628 (regex!3935 lt!739572) lt!739564))))

(declare-datatypes ((Option!4547 0))(
  ( (None!4546) (Some!4546 (v!26647 Rule!7670)) )
))
(declare-fun lt!739565 () Option!4547)

(declare-fun get!6910 (Option!4547) Rule!7670)

(assert (=> b!1929433 (= lt!739572 (get!6910 lt!739565))))

(declare-fun b!1929434 () Bool)

(declare-fun res!862658 () Bool)

(declare-fun e!1233271 () Bool)

(assert (=> b!1929434 (=> (not res!862658) (not e!1233271))))

(declare-datatypes ((LexerInterface!3548 0))(
  ( (LexerInterfaceExt!3545 (__x!13641 Int)) (Lexer!3546) )
))
(declare-fun thiss!23328 () LexerInterface!3548)

(declare-fun rulesInvariant!3155 (LexerInterface!3548 List!22024) Bool)

(assert (=> b!1929434 (= res!862658 (rulesInvariant!3155 thiss!23328 rules!3198))))

(declare-fun b!1929435 () Bool)

(declare-fun res!862662 () Bool)

(assert (=> b!1929435 (=> (not res!862662) (not e!1233271))))

(declare-fun sepAndNonSepRulesDisjointChars!1033 (List!22024 List!22024) Bool)

(assert (=> b!1929435 (= res!862662 (sepAndNonSepRulesDisjointChars!1033 rules!3198 rules!3198))))

(declare-fun b!1929436 () Bool)

(declare-fun res!862654 () Bool)

(assert (=> b!1929436 (=> (not res!862654) (not e!1233271))))

(assert (=> b!1929436 (= res!862654 (isSeparator!3935 (rule!6142 separatorToken!354)))))

(declare-fun e!1233257 () Bool)

(assert (=> b!1929437 (= e!1233257 (and tp!550844 tp!550851))))

(assert (=> b!1929438 (= e!1233254 (and tp!550846 tp!550845))))

(declare-fun b!1929439 () Bool)

(declare-fun res!862652 () Bool)

(assert (=> b!1929439 (=> (not res!862652) (not e!1233271))))

(declare-fun isEmpty!13523 (List!22024) Bool)

(assert (=> b!1929439 (= res!862652 (not (isEmpty!13523 rules!3198)))))

(declare-fun b!1929440 () Bool)

(declare-fun e!1233266 () Bool)

(declare-datatypes ((tuple2!20564 0))(
  ( (tuple2!20565 (_1!11751 Token!7422) (_2!11751 List!22023)) )
))
(declare-datatypes ((Option!4548 0))(
  ( (None!4547) (Some!4547 (v!26648 tuple2!20564)) )
))
(declare-fun lt!739560 () Option!4548)

(declare-datatypes ((List!22025 0))(
  ( (Nil!21943) (Cons!21943 (h!27344 Token!7422) (t!179958 List!22025)) )
))
(declare-fun tokens!598 () List!22025)

(declare-fun get!6911 (Option!4548) tuple2!20564)

(assert (=> b!1929440 (= e!1233266 (= (_1!11751 (get!6911 lt!739560)) (h!27344 tokens!598)))))

(declare-fun b!1929441 () Bool)

(declare-fun e!1233264 () Bool)

(assert (=> b!1929441 (= e!1233271 (not e!1233264))))

(declare-fun res!862659 () Bool)

(assert (=> b!1929441 (=> res!862659 e!1233264)))

(declare-fun lt!739573 () Bool)

(declare-fun lt!739561 () Option!4548)

(assert (=> b!1929441 (= res!862659 (or (and (not lt!739573) (= (_1!11751 (v!26648 lt!739561)) (h!27344 tokens!598))) (and (not lt!739573) (not (= (_1!11751 (v!26648 lt!739561)) (h!27344 tokens!598)))) (not (is-None!4547 lt!739561))))))

(assert (=> b!1929441 (= lt!739573 (not (is-Some!4547 lt!739561)))))

(declare-fun lt!739568 () List!22023)

(declare-fun maxPrefix!1986 (LexerInterface!3548 List!22024 List!22023) Option!4548)

(declare-fun ++!5888 (List!22023 List!22023) List!22023)

(declare-fun printWithSeparatorTokenWhenNeededList!587 (LexerInterface!3548 List!22024 List!22025 Token!7422) List!22023)

(assert (=> b!1929441 (= lt!739561 (maxPrefix!1986 thiss!23328 rules!3198 (++!5888 lt!739568 (printWithSeparatorTokenWhenNeededList!587 thiss!23328 rules!3198 (t!179958 tokens!598) separatorToken!354))))))

(declare-fun e!1233252 () Bool)

(assert (=> b!1929441 e!1233252))

(declare-fun res!862664 () Bool)

(assert (=> b!1929441 (=> (not res!862664) (not e!1233252))))

(declare-fun lt!739566 () Option!4547)

(declare-fun isDefined!3839 (Option!4547) Bool)

(assert (=> b!1929441 (= res!862664 (isDefined!3839 lt!739566))))

(declare-fun getRuleFromTag!756 (LexerInterface!3548 List!22024 String!25475) Option!4547)

(assert (=> b!1929441 (= lt!739566 (getRuleFromTag!756 thiss!23328 rules!3198 (tag!4383 (rule!6142 (h!27344 tokens!598)))))))

(declare-datatypes ((Unit!36299 0))(
  ( (Unit!36300) )
))
(declare-fun lt!739571 () Unit!36299)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!756 (LexerInterface!3548 List!22024 List!22023 Token!7422) Unit!36299)

(assert (=> b!1929441 (= lt!739571 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!756 thiss!23328 rules!3198 lt!739568 (h!27344 tokens!598)))))

(assert (=> b!1929441 e!1233266))

(declare-fun res!862655 () Bool)

(assert (=> b!1929441 (=> (not res!862655) (not e!1233266))))

(declare-fun isDefined!3840 (Option!4548) Bool)

(assert (=> b!1929441 (= res!862655 (isDefined!3840 lt!739560))))

(assert (=> b!1929441 (= lt!739560 (maxPrefix!1986 thiss!23328 rules!3198 lt!739568))))

(declare-fun lt!739562 () BalanceConc!14464)

(declare-fun list!8880 (BalanceConc!14464) List!22023)

(assert (=> b!1929441 (= lt!739568 (list!8880 lt!739562))))

(assert (=> b!1929441 e!1233253))

(declare-fun res!862651 () Bool)

(assert (=> b!1929441 (=> (not res!862651) (not e!1233253))))

(assert (=> b!1929441 (= res!862651 (isDefined!3839 lt!739565))))

(assert (=> b!1929441 (= lt!739565 (getRuleFromTag!756 thiss!23328 rules!3198 (tag!4383 (rule!6142 separatorToken!354))))))

(declare-fun lt!739559 () Unit!36299)

(assert (=> b!1929441 (= lt!739559 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!756 thiss!23328 rules!3198 lt!739564 separatorToken!354))))

(declare-fun charsOf!2475 (Token!7422) BalanceConc!14464)

(assert (=> b!1929441 (= lt!739564 (list!8880 (charsOf!2475 separatorToken!354)))))

(declare-fun lt!739569 () Unit!36299)

(declare-fun lemmaEqSameImage!621 (TokenValueInjection!7726 BalanceConc!14464 BalanceConc!14464) Unit!36299)

(declare-fun seqFromList!2789 (List!22023) BalanceConc!14464)

(assert (=> b!1929441 (= lt!739569 (lemmaEqSameImage!621 (transformation!3935 (rule!6142 (h!27344 tokens!598))) lt!739562 (seqFromList!2789 (originalCharacters!4742 (h!27344 tokens!598)))))))

(declare-fun lt!739574 () Unit!36299)

(declare-fun lemmaSemiInverse!892 (TokenValueInjection!7726 BalanceConc!14464) Unit!36299)

(assert (=> b!1929441 (= lt!739574 (lemmaSemiInverse!892 (transformation!3935 (rule!6142 (h!27344 tokens!598))) lt!739562))))

(assert (=> b!1929441 (= lt!739562 (charsOf!2475 (h!27344 tokens!598)))))

(declare-fun b!1929442 () Bool)

(declare-fun e!1233269 () Bool)

(declare-fun e!1233260 () Bool)

(declare-fun tp!550843 () Bool)

(declare-fun inv!21 (TokenValue!4071) Bool)

(assert (=> b!1929442 (= e!1233269 (and (inv!21 (value!123740 (h!27344 tokens!598))) e!1233260 tp!550843))))

(declare-fun lt!739563 () BalanceConc!14464)

(declare-fun b!1929443 () Bool)

(declare-fun printList!1083 (LexerInterface!3548 List!22025) List!22023)

(assert (=> b!1929443 (= e!1233264 (= (list!8880 lt!739563) (printList!1083 thiss!23328 (Cons!21943 (h!27344 tokens!598) Nil!21943))))))

(declare-datatypes ((IArray!14655 0))(
  ( (IArray!14656 (innerList!7385 List!22025)) )
))
(declare-datatypes ((Conc!7325 0))(
  ( (Node!7325 (left!17455 Conc!7325) (right!17785 Conc!7325) (csize!14880 Int) (cheight!7536 Int)) (Leaf!10756 (xs!10219 IArray!14655) (csize!14881 Int)) (Empty!7325) )
))
(declare-datatypes ((BalanceConc!14466 0))(
  ( (BalanceConc!14467 (c!313856 Conc!7325)) )
))
(declare-fun lt!739570 () BalanceConc!14466)

(declare-fun printTailRec!1024 (LexerInterface!3548 BalanceConc!14466 Int BalanceConc!14464) BalanceConc!14464)

(assert (=> b!1929443 (= lt!739563 (printTailRec!1024 thiss!23328 lt!739570 0 (BalanceConc!14465 Empty!7324)))))

(declare-fun print!1518 (LexerInterface!3548 BalanceConc!14466) BalanceConc!14464)

(assert (=> b!1929443 (= lt!739563 (print!1518 thiss!23328 lt!739570))))

(declare-fun singletonSeq!1919 (Token!7422) BalanceConc!14466)

(assert (=> b!1929443 (= lt!739570 (singletonSeq!1919 (h!27344 tokens!598)))))

(declare-fun b!1929444 () Bool)

(declare-fun e!1233263 () Bool)

(declare-fun lt!739567 () Rule!7670)

(assert (=> b!1929444 (= e!1233263 (= (rule!6142 (h!27344 tokens!598)) lt!739567))))

(declare-fun b!1929445 () Bool)

(assert (=> b!1929445 (= e!1233252 e!1233263)))

(declare-fun res!862656 () Bool)

(assert (=> b!1929445 (=> (not res!862656) (not e!1233263))))

(assert (=> b!1929445 (= res!862656 (matchR!2628 (regex!3935 lt!739567) lt!739568))))

(assert (=> b!1929445 (= lt!739567 (get!6910 lt!739566))))

(declare-fun e!1233258 () Bool)

(declare-fun b!1929446 () Bool)

(declare-fun tp!550850 () Bool)

(assert (=> b!1929446 (= e!1233258 (and (inv!21 (value!123740 separatorToken!354)) e!1233267 tp!550850))))

(declare-fun tp!550840 () Bool)

(declare-fun b!1929447 () Bool)

(declare-fun e!1233259 () Bool)

(declare-fun inv!29030 (Token!7422) Bool)

(assert (=> b!1929447 (= e!1233259 (and (inv!29030 (h!27344 tokens!598)) e!1233269 tp!550840))))

(declare-fun b!1929448 () Bool)

(declare-fun res!862653 () Bool)

(assert (=> b!1929448 (=> (not res!862653) (not e!1233271))))

(declare-fun rulesProduceIndividualToken!1720 (LexerInterface!3548 List!22024 Token!7422) Bool)

(assert (=> b!1929448 (= res!862653 (rulesProduceIndividualToken!1720 thiss!23328 rules!3198 separatorToken!354))))

(declare-fun res!862657 () Bool)

(assert (=> start!193514 (=> (not res!862657) (not e!1233271))))

(assert (=> start!193514 (= res!862657 (is-Lexer!3546 thiss!23328))))

(assert (=> start!193514 e!1233271))

(assert (=> start!193514 true))

(declare-fun e!1233256 () Bool)

(assert (=> start!193514 e!1233256))

(assert (=> start!193514 e!1233259))

(assert (=> start!193514 (and (inv!29030 separatorToken!354) e!1233258)))

(assert (=> b!1929449 (= e!1233270 (and tp!550847 tp!550839))))

(declare-fun b!1929450 () Bool)

(declare-fun res!862665 () Bool)

(assert (=> b!1929450 (=> (not res!862665) (not e!1233271))))

(assert (=> b!1929450 (= res!862665 (is-Cons!21943 tokens!598))))

(declare-fun tp!550841 () Bool)

(declare-fun b!1929451 () Bool)

(assert (=> b!1929451 (= e!1233260 (and tp!550841 (inv!29026 (tag!4383 (rule!6142 (h!27344 tokens!598)))) (inv!29029 (transformation!3935 (rule!6142 (h!27344 tokens!598)))) e!1233257))))

(declare-fun b!1929452 () Bool)

(declare-fun res!862663 () Bool)

(assert (=> b!1929452 (=> (not res!862663) (not e!1233271))))

(declare-fun rulesProduceEachTokenIndividuallyList!1279 (LexerInterface!3548 List!22024 List!22025) Bool)

(assert (=> b!1929452 (= res!862663 (rulesProduceEachTokenIndividuallyList!1279 thiss!23328 rules!3198 tokens!598))))

(declare-fun b!1929453 () Bool)

(declare-fun tp!550842 () Bool)

(assert (=> b!1929453 (= e!1233256 (and e!1233262 tp!550842))))

(declare-fun b!1929454 () Bool)

(declare-fun res!862661 () Bool)

(assert (=> b!1929454 (=> (not res!862661) (not e!1233271))))

(declare-fun lambda!75236 () Int)

(declare-fun forall!4639 (List!22025 Int) Bool)

(assert (=> b!1929454 (= res!862661 (forall!4639 tokens!598 lambda!75236))))

(declare-fun b!1929455 () Bool)

(assert (=> b!1929455 (= e!1233261 (= (rule!6142 separatorToken!354) lt!739572))))

(assert (= (and start!193514 res!862657) b!1929439))

(assert (= (and b!1929439 res!862652) b!1929434))

(assert (= (and b!1929434 res!862658) b!1929452))

(assert (= (and b!1929452 res!862663) b!1929448))

(assert (= (and b!1929448 res!862653) b!1929436))

(assert (= (and b!1929436 res!862654) b!1929454))

(assert (= (and b!1929454 res!862661) b!1929435))

(assert (= (and b!1929435 res!862662) b!1929450))

(assert (= (and b!1929450 res!862665) b!1929441))

(assert (= (and b!1929441 res!862651) b!1929433))

(assert (= (and b!1929433 res!862660) b!1929455))

(assert (= (and b!1929441 res!862655) b!1929440))

(assert (= (and b!1929441 res!862664) b!1929445))

(assert (= (and b!1929445 res!862656) b!1929444))

(assert (= (and b!1929441 (not res!862659)) b!1929443))

(assert (= b!1929432 b!1929438))

(assert (= b!1929453 b!1929432))

(assert (= (and start!193514 (is-Cons!21942 rules!3198)) b!1929453))

(assert (= b!1929451 b!1929437))

(assert (= b!1929442 b!1929451))

(assert (= b!1929447 b!1929442))

(assert (= (and start!193514 (is-Cons!21943 tokens!598)) b!1929447))

(assert (= b!1929431 b!1929449))

(assert (= b!1929446 b!1929431))

(assert (= start!193514 b!1929446))

(declare-fun m!2366877 () Bool)

(assert (=> b!1929442 m!2366877))

(declare-fun m!2366879 () Bool)

(assert (=> b!1929431 m!2366879))

(declare-fun m!2366881 () Bool)

(assert (=> b!1929431 m!2366881))

(declare-fun m!2366883 () Bool)

(assert (=> b!1929432 m!2366883))

(declare-fun m!2366885 () Bool)

(assert (=> b!1929432 m!2366885))

(declare-fun m!2366887 () Bool)

(assert (=> b!1929448 m!2366887))

(declare-fun m!2366889 () Bool)

(assert (=> b!1929441 m!2366889))

(declare-fun m!2366891 () Bool)

(assert (=> b!1929441 m!2366891))

(declare-fun m!2366893 () Bool)

(assert (=> b!1929441 m!2366893))

(declare-fun m!2366895 () Bool)

(assert (=> b!1929441 m!2366895))

(declare-fun m!2366897 () Bool)

(assert (=> b!1929441 m!2366897))

(declare-fun m!2366899 () Bool)

(assert (=> b!1929441 m!2366899))

(declare-fun m!2366901 () Bool)

(assert (=> b!1929441 m!2366901))

(declare-fun m!2366903 () Bool)

(assert (=> b!1929441 m!2366903))

(declare-fun m!2366905 () Bool)

(assert (=> b!1929441 m!2366905))

(declare-fun m!2366907 () Bool)

(assert (=> b!1929441 m!2366907))

(assert (=> b!1929441 m!2366903))

(declare-fun m!2366909 () Bool)

(assert (=> b!1929441 m!2366909))

(declare-fun m!2366911 () Bool)

(assert (=> b!1929441 m!2366911))

(assert (=> b!1929441 m!2366891))

(declare-fun m!2366913 () Bool)

(assert (=> b!1929441 m!2366913))

(declare-fun m!2366915 () Bool)

(assert (=> b!1929441 m!2366915))

(declare-fun m!2366917 () Bool)

(assert (=> b!1929441 m!2366917))

(assert (=> b!1929441 m!2366899))

(declare-fun m!2366919 () Bool)

(assert (=> b!1929441 m!2366919))

(declare-fun m!2366921 () Bool)

(assert (=> b!1929441 m!2366921))

(declare-fun m!2366923 () Bool)

(assert (=> b!1929441 m!2366923))

(assert (=> b!1929441 m!2366917))

(declare-fun m!2366925 () Bool)

(assert (=> b!1929451 m!2366925))

(declare-fun m!2366927 () Bool)

(assert (=> b!1929451 m!2366927))

(declare-fun m!2366929 () Bool)

(assert (=> b!1929446 m!2366929))

(declare-fun m!2366931 () Bool)

(assert (=> b!1929443 m!2366931))

(declare-fun m!2366933 () Bool)

(assert (=> b!1929443 m!2366933))

(declare-fun m!2366935 () Bool)

(assert (=> b!1929443 m!2366935))

(declare-fun m!2366937 () Bool)

(assert (=> b!1929443 m!2366937))

(declare-fun m!2366939 () Bool)

(assert (=> b!1929443 m!2366939))

(declare-fun m!2366941 () Bool)

(assert (=> b!1929439 m!2366941))

(declare-fun m!2366943 () Bool)

(assert (=> b!1929454 m!2366943))

(declare-fun m!2366945 () Bool)

(assert (=> b!1929435 m!2366945))

(declare-fun m!2366947 () Bool)

(assert (=> b!1929433 m!2366947))

(declare-fun m!2366949 () Bool)

(assert (=> b!1929433 m!2366949))

(declare-fun m!2366951 () Bool)

(assert (=> b!1929445 m!2366951))

(declare-fun m!2366953 () Bool)

(assert (=> b!1929445 m!2366953))

(declare-fun m!2366955 () Bool)

(assert (=> b!1929440 m!2366955))

(declare-fun m!2366957 () Bool)

(assert (=> b!1929434 m!2366957))

(declare-fun m!2366959 () Bool)

(assert (=> start!193514 m!2366959))

(declare-fun m!2366961 () Bool)

(assert (=> b!1929452 m!2366961))

(declare-fun m!2366963 () Bool)

(assert (=> b!1929447 m!2366963))

(push 1)

(assert (not b!1929452))

(assert (not b!1929451))

(assert (not b!1929433))

(assert (not b!1929445))

(assert (not b_next!55973))

(assert (not b!1929432))

(assert (not b!1929440))

(assert (not b!1929454))

(assert (not b_next!55971))

(assert (not b!1929443))

(assert (not b!1929434))

(assert b_and!151517)

(assert (not b!1929448))

(assert b_and!151507)

(assert (not b_next!55969))

(assert (not b!1929446))

(assert (not start!193514))

(assert b_and!151515)

(assert (not b!1929439))

(assert (not b!1929453))

(assert (not b!1929441))

(assert b_and!151511)

(assert (not b_next!55975))

(assert b_and!151513)

(assert (not b_next!55965))

(assert b_and!151509)

(assert (not b!1929447))

(assert (not b!1929435))

(assert (not b!1929442))

(assert (not b!1929431))

(assert (not b_next!55967))

(check-sat)

(pop 1)

(push 1)

(assert b_and!151515)

(assert (not b_next!55973))

(assert (not b_next!55971))

(assert b_and!151517)

(assert b_and!151507)

(assert b_and!151509)

(assert (not b_next!55969))

(assert (not b_next!55967))

(assert b_and!151511)

(assert (not b_next!55975))

(assert b_and!151513)

(assert (not b_next!55965))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!588367 () Bool)

(assert (=> d!588367 (= (get!6911 lt!739560) (v!26648 lt!739560))))

(assert (=> b!1929440 d!588367))

(declare-fun d!588369 () Bool)

(assert (=> d!588369 (= (inv!29026 (tag!4383 (rule!6142 (h!27344 tokens!598)))) (= (mod (str.len (value!123739 (tag!4383 (rule!6142 (h!27344 tokens!598))))) 2) 0))))

(assert (=> b!1929451 d!588369))

(declare-fun d!588371 () Bool)

(declare-fun res!862717 () Bool)

(declare-fun e!1233341 () Bool)

(assert (=> d!588371 (=> (not res!862717) (not e!1233341))))

(declare-fun semiInverseModEq!1566 (Int Int) Bool)

(assert (=> d!588371 (= res!862717 (semiInverseModEq!1566 (toChars!5431 (transformation!3935 (rule!6142 (h!27344 tokens!598)))) (toValue!5572 (transformation!3935 (rule!6142 (h!27344 tokens!598))))))))

(assert (=> d!588371 (= (inv!29029 (transformation!3935 (rule!6142 (h!27344 tokens!598)))) e!1233341)))

(declare-fun b!1929533 () Bool)

(declare-fun equivClasses!1493 (Int Int) Bool)

(assert (=> b!1929533 (= e!1233341 (equivClasses!1493 (toChars!5431 (transformation!3935 (rule!6142 (h!27344 tokens!598)))) (toValue!5572 (transformation!3935 (rule!6142 (h!27344 tokens!598))))))))

(assert (= (and d!588371 res!862717) b!1929533))

(declare-fun m!2367053 () Bool)

(assert (=> d!588371 m!2367053))

(declare-fun m!2367055 () Bool)

(assert (=> b!1929533 m!2367055))

(assert (=> b!1929451 d!588371))

(declare-fun d!588373 () Bool)

(assert (=> d!588373 (= (isEmpty!13523 rules!3198) (is-Nil!21942 rules!3198))))

(assert (=> b!1929439 d!588373))

(declare-fun d!588375 () Bool)

(assert (=> d!588375 (= (inv!29026 (tag!4383 (h!27343 rules!3198))) (= (mod (str.len (value!123739 (tag!4383 (h!27343 rules!3198)))) 2) 0))))

(assert (=> b!1929432 d!588375))

(declare-fun d!588377 () Bool)

(declare-fun res!862718 () Bool)

(declare-fun e!1233342 () Bool)

(assert (=> d!588377 (=> (not res!862718) (not e!1233342))))

(assert (=> d!588377 (= res!862718 (semiInverseModEq!1566 (toChars!5431 (transformation!3935 (h!27343 rules!3198))) (toValue!5572 (transformation!3935 (h!27343 rules!3198)))))))

(assert (=> d!588377 (= (inv!29029 (transformation!3935 (h!27343 rules!3198))) e!1233342)))

(declare-fun b!1929534 () Bool)

(assert (=> b!1929534 (= e!1233342 (equivClasses!1493 (toChars!5431 (transformation!3935 (h!27343 rules!3198))) (toValue!5572 (transformation!3935 (h!27343 rules!3198)))))))

(assert (= (and d!588377 res!862718) b!1929534))

(declare-fun m!2367057 () Bool)

(assert (=> d!588377 m!2367057))

(declare-fun m!2367059 () Bool)

(assert (=> b!1929534 m!2367059))

(assert (=> b!1929432 d!588377))

(declare-fun d!588379 () Bool)

(declare-fun c!313863 () Bool)

(assert (=> d!588379 (= c!313863 (is-Cons!21943 (Cons!21943 (h!27344 tokens!598) Nil!21943)))))

(declare-fun e!1233345 () List!22023)

(assert (=> d!588379 (= (printList!1083 thiss!23328 (Cons!21943 (h!27344 tokens!598) Nil!21943)) e!1233345)))

(declare-fun b!1929539 () Bool)

(assert (=> b!1929539 (= e!1233345 (++!5888 (list!8880 (charsOf!2475 (h!27344 (Cons!21943 (h!27344 tokens!598) Nil!21943)))) (printList!1083 thiss!23328 (t!179958 (Cons!21943 (h!27344 tokens!598) Nil!21943)))))))

(declare-fun b!1929540 () Bool)

(assert (=> b!1929540 (= e!1233345 Nil!21941)))

(assert (= (and d!588379 c!313863) b!1929539))

(assert (= (and d!588379 (not c!313863)) b!1929540))

(declare-fun m!2367061 () Bool)

(assert (=> b!1929539 m!2367061))

(assert (=> b!1929539 m!2367061))

(declare-fun m!2367063 () Bool)

(assert (=> b!1929539 m!2367063))

(declare-fun m!2367065 () Bool)

(assert (=> b!1929539 m!2367065))

(assert (=> b!1929539 m!2367063))

(assert (=> b!1929539 m!2367065))

(declare-fun m!2367067 () Bool)

(assert (=> b!1929539 m!2367067))

(assert (=> b!1929443 d!588379))

(declare-fun d!588381 () Bool)

(declare-fun lt!739625 () BalanceConc!14464)

(declare-fun list!8882 (BalanceConc!14466) List!22025)

(assert (=> d!588381 (= (list!8880 lt!739625) (printList!1083 thiss!23328 (list!8882 lt!739570)))))

(assert (=> d!588381 (= lt!739625 (printTailRec!1024 thiss!23328 lt!739570 0 (BalanceConc!14465 Empty!7324)))))

(assert (=> d!588381 (= (print!1518 thiss!23328 lt!739570) lt!739625)))

(declare-fun bs!414895 () Bool)

(assert (= bs!414895 d!588381))

(declare-fun m!2367069 () Bool)

(assert (=> bs!414895 m!2367069))

(declare-fun m!2367071 () Bool)

(assert (=> bs!414895 m!2367071))

(assert (=> bs!414895 m!2367071))

(declare-fun m!2367073 () Bool)

(assert (=> bs!414895 m!2367073))

(assert (=> bs!414895 m!2366939))

(assert (=> b!1929443 d!588381))

(declare-fun d!588383 () Bool)

(declare-fun e!1233348 () Bool)

(assert (=> d!588383 e!1233348))

(declare-fun res!862725 () Bool)

(assert (=> d!588383 (=> (not res!862725) (not e!1233348))))

(declare-fun lt!739628 () BalanceConc!14466)

(assert (=> d!588383 (= res!862725 (= (list!8882 lt!739628) (Cons!21943 (h!27344 tokens!598) Nil!21943)))))

(declare-fun singleton!849 (Token!7422) BalanceConc!14466)

(assert (=> d!588383 (= lt!739628 (singleton!849 (h!27344 tokens!598)))))

(assert (=> d!588383 (= (singletonSeq!1919 (h!27344 tokens!598)) lt!739628)))

(declare-fun b!1929543 () Bool)

(declare-fun isBalanced!2262 (Conc!7325) Bool)

(assert (=> b!1929543 (= e!1233348 (isBalanced!2262 (c!313856 lt!739628)))))

(assert (= (and d!588383 res!862725) b!1929543))

(declare-fun m!2367075 () Bool)

(assert (=> d!588383 m!2367075))

(declare-fun m!2367077 () Bool)

(assert (=> d!588383 m!2367077))

(declare-fun m!2367079 () Bool)

(assert (=> b!1929543 m!2367079))

(assert (=> b!1929443 d!588383))

(declare-fun d!588385 () Bool)

(declare-fun lt!739647 () BalanceConc!14464)

(declare-fun printListTailRec!454 (LexerInterface!3548 List!22025 List!22023) List!22023)

(declare-fun dropList!785 (BalanceConc!14466 Int) List!22025)

(assert (=> d!588385 (= (list!8880 lt!739647) (printListTailRec!454 thiss!23328 (dropList!785 lt!739570 0) (list!8880 (BalanceConc!14465 Empty!7324))))))

(declare-fun e!1233354 () BalanceConc!14464)

(assert (=> d!588385 (= lt!739647 e!1233354)))

(declare-fun c!313866 () Bool)

(declare-fun size!17123 (BalanceConc!14466) Int)

(assert (=> d!588385 (= c!313866 (>= 0 (size!17123 lt!739570)))))

(declare-fun e!1233353 () Bool)

(assert (=> d!588385 e!1233353))

(declare-fun res!862730 () Bool)

(assert (=> d!588385 (=> (not res!862730) (not e!1233353))))

(assert (=> d!588385 (= res!862730 (>= 0 0))))

(assert (=> d!588385 (= (printTailRec!1024 thiss!23328 lt!739570 0 (BalanceConc!14465 Empty!7324)) lt!739647)))

(declare-fun b!1929550 () Bool)

(assert (=> b!1929550 (= e!1233353 (<= 0 (size!17123 lt!739570)))))

(declare-fun b!1929551 () Bool)

(assert (=> b!1929551 (= e!1233354 (BalanceConc!14465 Empty!7324))))

(declare-fun b!1929552 () Bool)

(declare-fun ++!5890 (BalanceConc!14464 BalanceConc!14464) BalanceConc!14464)

(declare-fun apply!5700 (BalanceConc!14466 Int) Token!7422)

(assert (=> b!1929552 (= e!1233354 (printTailRec!1024 thiss!23328 lt!739570 (+ 0 1) (++!5890 (BalanceConc!14465 Empty!7324) (charsOf!2475 (apply!5700 lt!739570 0)))))))

(declare-fun lt!739648 () List!22025)

(assert (=> b!1929552 (= lt!739648 (list!8882 lt!739570))))

(declare-fun lt!739649 () Unit!36299)

(declare-fun lemmaDropApply!709 (List!22025 Int) Unit!36299)

(assert (=> b!1929552 (= lt!739649 (lemmaDropApply!709 lt!739648 0))))

(declare-fun head!4497 (List!22025) Token!7422)

(declare-fun drop!1076 (List!22025 Int) List!22025)

(declare-fun apply!5701 (List!22025 Int) Token!7422)

(assert (=> b!1929552 (= (head!4497 (drop!1076 lt!739648 0)) (apply!5701 lt!739648 0))))

(declare-fun lt!739644 () Unit!36299)

(assert (=> b!1929552 (= lt!739644 lt!739649)))

(declare-fun lt!739646 () List!22025)

(assert (=> b!1929552 (= lt!739646 (list!8882 lt!739570))))

(declare-fun lt!739643 () Unit!36299)

(declare-fun lemmaDropTail!685 (List!22025 Int) Unit!36299)

(assert (=> b!1929552 (= lt!739643 (lemmaDropTail!685 lt!739646 0))))

(declare-fun tail!2983 (List!22025) List!22025)

(assert (=> b!1929552 (= (tail!2983 (drop!1076 lt!739646 0)) (drop!1076 lt!739646 (+ 0 1)))))

(declare-fun lt!739645 () Unit!36299)

(assert (=> b!1929552 (= lt!739645 lt!739643)))

(assert (= (and d!588385 res!862730) b!1929550))

(assert (= (and d!588385 c!313866) b!1929551))

(assert (= (and d!588385 (not c!313866)) b!1929552))

(declare-fun m!2367081 () Bool)

(assert (=> d!588385 m!2367081))

(declare-fun m!2367083 () Bool)

(assert (=> d!588385 m!2367083))

(assert (=> d!588385 m!2367083))

(declare-fun m!2367085 () Bool)

(assert (=> d!588385 m!2367085))

(declare-fun m!2367087 () Bool)

(assert (=> d!588385 m!2367087))

(assert (=> d!588385 m!2367085))

(declare-fun m!2367089 () Bool)

(assert (=> d!588385 m!2367089))

(assert (=> b!1929550 m!2367081))

(declare-fun m!2367091 () Bool)

(assert (=> b!1929552 m!2367091))

(declare-fun m!2367093 () Bool)

(assert (=> b!1929552 m!2367093))

(declare-fun m!2367095 () Bool)

(assert (=> b!1929552 m!2367095))

(assert (=> b!1929552 m!2367071))

(declare-fun m!2367097 () Bool)

(assert (=> b!1929552 m!2367097))

(declare-fun m!2367099 () Bool)

(assert (=> b!1929552 m!2367099))

(declare-fun m!2367101 () Bool)

(assert (=> b!1929552 m!2367101))

(declare-fun m!2367103 () Bool)

(assert (=> b!1929552 m!2367103))

(declare-fun m!2367105 () Bool)

(assert (=> b!1929552 m!2367105))

(assert (=> b!1929552 m!2367099))

(declare-fun m!2367107 () Bool)

(assert (=> b!1929552 m!2367107))

(declare-fun m!2367109 () Bool)

(assert (=> b!1929552 m!2367109))

(assert (=> b!1929552 m!2367091))

(assert (=> b!1929552 m!2367093))

(assert (=> b!1929552 m!2367095))

(declare-fun m!2367111 () Bool)

(assert (=> b!1929552 m!2367111))

(assert (=> b!1929552 m!2367107))

(declare-fun m!2367113 () Bool)

(assert (=> b!1929552 m!2367113))

(assert (=> b!1929443 d!588385))

(declare-fun d!588387 () Bool)

(declare-fun list!8883 (Conc!7324) List!22023)

(assert (=> d!588387 (= (list!8880 lt!739563) (list!8883 (c!313855 lt!739563)))))

(declare-fun bs!414896 () Bool)

(assert (= bs!414896 d!588387))

(declare-fun m!2367115 () Bool)

(assert (=> bs!414896 m!2367115))

(assert (=> b!1929443 d!588387))

(declare-fun d!588389 () Bool)

(declare-fun res!862735 () Bool)

(declare-fun e!1233359 () Bool)

(assert (=> d!588389 (=> res!862735 e!1233359)))

(assert (=> d!588389 (= res!862735 (is-Nil!21943 tokens!598))))

(assert (=> d!588389 (= (forall!4639 tokens!598 lambda!75236) e!1233359)))

(declare-fun b!1929557 () Bool)

(declare-fun e!1233360 () Bool)

(assert (=> b!1929557 (= e!1233359 e!1233360)))

(declare-fun res!862736 () Bool)

(assert (=> b!1929557 (=> (not res!862736) (not e!1233360))))

(declare-fun dynLambda!10637 (Int Token!7422) Bool)

(assert (=> b!1929557 (= res!862736 (dynLambda!10637 lambda!75236 (h!27344 tokens!598)))))

(declare-fun b!1929558 () Bool)

(assert (=> b!1929558 (= e!1233360 (forall!4639 (t!179958 tokens!598) lambda!75236))))

(assert (= (and d!588389 (not res!862735)) b!1929557))

(assert (= (and b!1929557 res!862736) b!1929558))

(declare-fun b_lambda!63985 () Bool)

(assert (=> (not b_lambda!63985) (not b!1929557)))

(declare-fun m!2367117 () Bool)

(assert (=> b!1929557 m!2367117))

(declare-fun m!2367119 () Bool)

(assert (=> b!1929558 m!2367119))

(assert (=> b!1929454 d!588389))

(declare-fun b!1929577 () Bool)

(declare-fun e!1233367 () Bool)

(declare-fun lt!739660 () Option!4548)

(declare-fun contains!3972 (List!22024 Rule!7670) Bool)

(assert (=> b!1929577 (= e!1233367 (contains!3972 rules!3198 (rule!6142 (_1!11751 (get!6911 lt!739660)))))))

(declare-fun b!1929578 () Bool)

(declare-fun e!1233369 () Option!4548)

(declare-fun lt!739664 () Option!4548)

(declare-fun lt!739662 () Option!4548)

(assert (=> b!1929578 (= e!1233369 (ite (and (is-None!4547 lt!739664) (is-None!4547 lt!739662)) None!4547 (ite (is-None!4547 lt!739662) lt!739664 (ite (is-None!4547 lt!739664) lt!739662 (ite (>= (size!17121 (_1!11751 (v!26648 lt!739664))) (size!17121 (_1!11751 (v!26648 lt!739662)))) lt!739664 lt!739662)))))))

(declare-fun call!118689 () Option!4548)

(assert (=> b!1929578 (= lt!739664 call!118689)))

(assert (=> b!1929578 (= lt!739662 (maxPrefix!1986 thiss!23328 (t!179957 rules!3198) (++!5888 lt!739568 (printWithSeparatorTokenWhenNeededList!587 thiss!23328 rules!3198 (t!179958 tokens!598) separatorToken!354))))))

(declare-fun b!1929579 () Bool)

(declare-fun res!862751 () Bool)

(assert (=> b!1929579 (=> (not res!862751) (not e!1233367))))

(assert (=> b!1929579 (= res!862751 (matchR!2628 (regex!3935 (rule!6142 (_1!11751 (get!6911 lt!739660)))) (list!8880 (charsOf!2475 (_1!11751 (get!6911 lt!739660))))))))

(declare-fun b!1929580 () Bool)

(assert (=> b!1929580 (= e!1233369 call!118689)))

(declare-fun b!1929581 () Bool)

(declare-fun res!862756 () Bool)

(assert (=> b!1929581 (=> (not res!862756) (not e!1233367))))

(assert (=> b!1929581 (= res!862756 (= (list!8880 (charsOf!2475 (_1!11751 (get!6911 lt!739660)))) (originalCharacters!4742 (_1!11751 (get!6911 lt!739660)))))))

(declare-fun bm!118684 () Bool)

(declare-fun maxPrefixOneRule!1224 (LexerInterface!3548 Rule!7670 List!22023) Option!4548)

(assert (=> bm!118684 (= call!118689 (maxPrefixOneRule!1224 thiss!23328 (h!27343 rules!3198) (++!5888 lt!739568 (printWithSeparatorTokenWhenNeededList!587 thiss!23328 rules!3198 (t!179958 tokens!598) separatorToken!354))))))

(declare-fun b!1929582 () Bool)

(declare-fun e!1233368 () Bool)

(assert (=> b!1929582 (= e!1233368 e!1233367)))

(declare-fun res!862753 () Bool)

(assert (=> b!1929582 (=> (not res!862753) (not e!1233367))))

(assert (=> b!1929582 (= res!862753 (isDefined!3840 lt!739660))))

(declare-fun b!1929583 () Bool)

(declare-fun res!862755 () Bool)

(assert (=> b!1929583 (=> (not res!862755) (not e!1233367))))

(declare-fun size!17124 (List!22023) Int)

(assert (=> b!1929583 (= res!862755 (< (size!17124 (_2!11751 (get!6911 lt!739660))) (size!17124 (++!5888 lt!739568 (printWithSeparatorTokenWhenNeededList!587 thiss!23328 rules!3198 (t!179958 tokens!598) separatorToken!354)))))))

(declare-fun d!588391 () Bool)

(assert (=> d!588391 e!1233368))

(declare-fun res!862754 () Bool)

(assert (=> d!588391 (=> res!862754 e!1233368)))

(declare-fun isEmpty!13525 (Option!4548) Bool)

(assert (=> d!588391 (= res!862754 (isEmpty!13525 lt!739660))))

(assert (=> d!588391 (= lt!739660 e!1233369)))

(declare-fun c!313869 () Bool)

(assert (=> d!588391 (= c!313869 (and (is-Cons!21942 rules!3198) (is-Nil!21942 (t!179957 rules!3198))))))

(declare-fun lt!739661 () Unit!36299)

(declare-fun lt!739663 () Unit!36299)

(assert (=> d!588391 (= lt!739661 lt!739663)))

(declare-fun isPrefix!1942 (List!22023 List!22023) Bool)

(assert (=> d!588391 (isPrefix!1942 (++!5888 lt!739568 (printWithSeparatorTokenWhenNeededList!587 thiss!23328 rules!3198 (t!179958 tokens!598) separatorToken!354)) (++!5888 lt!739568 (printWithSeparatorTokenWhenNeededList!587 thiss!23328 rules!3198 (t!179958 tokens!598) separatorToken!354)))))

(declare-fun lemmaIsPrefixRefl!1260 (List!22023 List!22023) Unit!36299)

(assert (=> d!588391 (= lt!739663 (lemmaIsPrefixRefl!1260 (++!5888 lt!739568 (printWithSeparatorTokenWhenNeededList!587 thiss!23328 rules!3198 (t!179958 tokens!598) separatorToken!354)) (++!5888 lt!739568 (printWithSeparatorTokenWhenNeededList!587 thiss!23328 rules!3198 (t!179958 tokens!598) separatorToken!354))))))

(declare-fun rulesValidInductive!1341 (LexerInterface!3548 List!22024) Bool)

(assert (=> d!588391 (rulesValidInductive!1341 thiss!23328 rules!3198)))

(assert (=> d!588391 (= (maxPrefix!1986 thiss!23328 rules!3198 (++!5888 lt!739568 (printWithSeparatorTokenWhenNeededList!587 thiss!23328 rules!3198 (t!179958 tokens!598) separatorToken!354))) lt!739660)))

(declare-fun b!1929584 () Bool)

(declare-fun res!862757 () Bool)

(assert (=> b!1929584 (=> (not res!862757) (not e!1233367))))

(assert (=> b!1929584 (= res!862757 (= (++!5888 (list!8880 (charsOf!2475 (_1!11751 (get!6911 lt!739660)))) (_2!11751 (get!6911 lt!739660))) (++!5888 lt!739568 (printWithSeparatorTokenWhenNeededList!587 thiss!23328 rules!3198 (t!179958 tokens!598) separatorToken!354))))))

(declare-fun b!1929585 () Bool)

(declare-fun res!862752 () Bool)

(assert (=> b!1929585 (=> (not res!862752) (not e!1233367))))

(declare-fun apply!5702 (TokenValueInjection!7726 BalanceConc!14464) TokenValue!4071)

(assert (=> b!1929585 (= res!862752 (= (value!123740 (_1!11751 (get!6911 lt!739660))) (apply!5702 (transformation!3935 (rule!6142 (_1!11751 (get!6911 lt!739660)))) (seqFromList!2789 (originalCharacters!4742 (_1!11751 (get!6911 lt!739660)))))))))

(assert (= (and d!588391 c!313869) b!1929580))

(assert (= (and d!588391 (not c!313869)) b!1929578))

(assert (= (or b!1929580 b!1929578) bm!118684))

(assert (= (and d!588391 (not res!862754)) b!1929582))

(assert (= (and b!1929582 res!862753) b!1929581))

(assert (= (and b!1929581 res!862756) b!1929583))

(assert (= (and b!1929583 res!862755) b!1929584))

(assert (= (and b!1929584 res!862757) b!1929585))

(assert (= (and b!1929585 res!862752) b!1929579))

(assert (= (and b!1929579 res!862751) b!1929577))

(declare-fun m!2367121 () Bool)

(assert (=> b!1929584 m!2367121))

(declare-fun m!2367123 () Bool)

(assert (=> b!1929584 m!2367123))

(assert (=> b!1929584 m!2367123))

(declare-fun m!2367125 () Bool)

(assert (=> b!1929584 m!2367125))

(assert (=> b!1929584 m!2367125))

(declare-fun m!2367127 () Bool)

(assert (=> b!1929584 m!2367127))

(assert (=> b!1929585 m!2367121))

(declare-fun m!2367129 () Bool)

(assert (=> b!1929585 m!2367129))

(assert (=> b!1929585 m!2367129))

(declare-fun m!2367131 () Bool)

(assert (=> b!1929585 m!2367131))

(assert (=> b!1929578 m!2366899))

(declare-fun m!2367133 () Bool)

(assert (=> b!1929578 m!2367133))

(declare-fun m!2367135 () Bool)

(assert (=> d!588391 m!2367135))

(assert (=> d!588391 m!2366899))

(assert (=> d!588391 m!2366899))

(declare-fun m!2367137 () Bool)

(assert (=> d!588391 m!2367137))

(assert (=> d!588391 m!2366899))

(assert (=> d!588391 m!2366899))

(declare-fun m!2367139 () Bool)

(assert (=> d!588391 m!2367139))

(declare-fun m!2367141 () Bool)

(assert (=> d!588391 m!2367141))

(assert (=> b!1929579 m!2367121))

(assert (=> b!1929579 m!2367123))

(assert (=> b!1929579 m!2367123))

(assert (=> b!1929579 m!2367125))

(assert (=> b!1929579 m!2367125))

(declare-fun m!2367143 () Bool)

(assert (=> b!1929579 m!2367143))

(declare-fun m!2367145 () Bool)

(assert (=> b!1929582 m!2367145))

(assert (=> b!1929583 m!2367121))

(declare-fun m!2367147 () Bool)

(assert (=> b!1929583 m!2367147))

(assert (=> b!1929583 m!2366899))

(declare-fun m!2367149 () Bool)

(assert (=> b!1929583 m!2367149))

(assert (=> b!1929581 m!2367121))

(assert (=> b!1929581 m!2367123))

(assert (=> b!1929581 m!2367123))

(assert (=> b!1929581 m!2367125))

(assert (=> bm!118684 m!2366899))

(declare-fun m!2367151 () Bool)

(assert (=> bm!118684 m!2367151))

(assert (=> b!1929577 m!2367121))

(declare-fun m!2367153 () Bool)

(assert (=> b!1929577 m!2367153))

(assert (=> b!1929441 d!588391))

(declare-fun b!1929602 () Bool)

(declare-fun e!1233384 () Bool)

(assert (=> b!1929602 (= e!1233384 true)))

(declare-fun d!588393 () Bool)

(assert (=> d!588393 e!1233384))

(assert (= d!588393 b!1929602))

(declare-fun order!13779 () Int)

(declare-fun order!13777 () Int)

(declare-fun lambda!75242 () Int)

(declare-fun dynLambda!10638 (Int Int) Int)

(declare-fun dynLambda!10639 (Int Int) Int)

(assert (=> b!1929602 (< (dynLambda!10638 order!13777 (toValue!5572 (transformation!3935 (rule!6142 (h!27344 tokens!598))))) (dynLambda!10639 order!13779 lambda!75242))))

(declare-fun order!13781 () Int)

(declare-fun dynLambda!10640 (Int Int) Int)

(assert (=> b!1929602 (< (dynLambda!10640 order!13781 (toChars!5431 (transformation!3935 (rule!6142 (h!27344 tokens!598))))) (dynLambda!10639 order!13779 lambda!75242))))

(declare-fun dynLambda!10641 (Int BalanceConc!14464) TokenValue!4071)

(assert (=> d!588393 (= (dynLambda!10641 (toValue!5572 (transformation!3935 (rule!6142 (h!27344 tokens!598)))) lt!739562) (dynLambda!10641 (toValue!5572 (transformation!3935 (rule!6142 (h!27344 tokens!598)))) (seqFromList!2789 (originalCharacters!4742 (h!27344 tokens!598)))))))

(declare-fun lt!739669 () Unit!36299)

(declare-fun Forall2of!202 (Int BalanceConc!14464 BalanceConc!14464) Unit!36299)

(assert (=> d!588393 (= lt!739669 (Forall2of!202 lambda!75242 lt!739562 (seqFromList!2789 (originalCharacters!4742 (h!27344 tokens!598)))))))

(assert (=> d!588393 (= (list!8880 lt!739562) (list!8880 (seqFromList!2789 (originalCharacters!4742 (h!27344 tokens!598)))))))

(assert (=> d!588393 (= (lemmaEqSameImage!621 (transformation!3935 (rule!6142 (h!27344 tokens!598))) lt!739562 (seqFromList!2789 (originalCharacters!4742 (h!27344 tokens!598)))) lt!739669)))

(declare-fun b_lambda!63987 () Bool)

(assert (=> (not b_lambda!63987) (not d!588393)))

(declare-fun t!179967 () Bool)

(declare-fun tb!118321 () Bool)

(assert (=> (and b!1929438 (= (toValue!5572 (transformation!3935 (h!27343 rules!3198))) (toValue!5572 (transformation!3935 (rule!6142 (h!27344 tokens!598))))) t!179967) tb!118321))

(declare-fun result!142916 () Bool)

(assert (=> tb!118321 (= result!142916 (inv!21 (dynLambda!10641 (toValue!5572 (transformation!3935 (rule!6142 (h!27344 tokens!598)))) lt!739562)))))

(declare-fun m!2367159 () Bool)

(assert (=> tb!118321 m!2367159))

(assert (=> d!588393 t!179967))

(declare-fun b_and!151531 () Bool)

(assert (= b_and!151507 (and (=> t!179967 result!142916) b_and!151531)))

(declare-fun t!179969 () Bool)

(declare-fun tb!118323 () Bool)

(assert (=> (and b!1929437 (= (toValue!5572 (transformation!3935 (rule!6142 (h!27344 tokens!598)))) (toValue!5572 (transformation!3935 (rule!6142 (h!27344 tokens!598))))) t!179969) tb!118323))

(declare-fun result!142920 () Bool)

(assert (= result!142920 result!142916))

(assert (=> d!588393 t!179969))

(declare-fun b_and!151533 () Bool)

(assert (= b_and!151511 (and (=> t!179969 result!142920) b_and!151533)))

(declare-fun tb!118325 () Bool)

(declare-fun t!179971 () Bool)

(assert (=> (and b!1929449 (= (toValue!5572 (transformation!3935 (rule!6142 separatorToken!354))) (toValue!5572 (transformation!3935 (rule!6142 (h!27344 tokens!598))))) t!179971) tb!118325))

(declare-fun result!142922 () Bool)

(assert (= result!142922 result!142916))

(assert (=> d!588393 t!179971))

(declare-fun b_and!151535 () Bool)

(assert (= b_and!151515 (and (=> t!179971 result!142922) b_and!151535)))

(declare-fun b_lambda!63989 () Bool)

(assert (=> (not b_lambda!63989) (not d!588393)))

(declare-fun tb!118327 () Bool)

(declare-fun t!179973 () Bool)

(assert (=> (and b!1929438 (= (toValue!5572 (transformation!3935 (h!27343 rules!3198))) (toValue!5572 (transformation!3935 (rule!6142 (h!27344 tokens!598))))) t!179973) tb!118327))

(declare-fun result!142924 () Bool)

(assert (=> tb!118327 (= result!142924 (inv!21 (dynLambda!10641 (toValue!5572 (transformation!3935 (rule!6142 (h!27344 tokens!598)))) (seqFromList!2789 (originalCharacters!4742 (h!27344 tokens!598))))))))

(declare-fun m!2367161 () Bool)

(assert (=> tb!118327 m!2367161))

(assert (=> d!588393 t!179973))

(declare-fun b_and!151537 () Bool)

(assert (= b_and!151531 (and (=> t!179973 result!142924) b_and!151537)))

(declare-fun t!179975 () Bool)

(declare-fun tb!118329 () Bool)

(assert (=> (and b!1929437 (= (toValue!5572 (transformation!3935 (rule!6142 (h!27344 tokens!598)))) (toValue!5572 (transformation!3935 (rule!6142 (h!27344 tokens!598))))) t!179975) tb!118329))

(declare-fun result!142926 () Bool)

(assert (= result!142926 result!142924))

(assert (=> d!588393 t!179975))

(declare-fun b_and!151539 () Bool)

(assert (= b_and!151533 (and (=> t!179975 result!142926) b_and!151539)))

(declare-fun tb!118331 () Bool)

(declare-fun t!179977 () Bool)

(assert (=> (and b!1929449 (= (toValue!5572 (transformation!3935 (rule!6142 separatorToken!354))) (toValue!5572 (transformation!3935 (rule!6142 (h!27344 tokens!598))))) t!179977) tb!118331))

(declare-fun result!142928 () Bool)

(assert (= result!142928 result!142924))

(assert (=> d!588393 t!179977))

(declare-fun b_and!151541 () Bool)

(assert (= b_and!151535 (and (=> t!179977 result!142928) b_and!151541)))

(assert (=> d!588393 m!2366891))

(declare-fun m!2367163 () Bool)

(assert (=> d!588393 m!2367163))

(assert (=> d!588393 m!2366893))

(declare-fun m!2367165 () Bool)

(assert (=> d!588393 m!2367165))

(assert (=> d!588393 m!2366891))

(declare-fun m!2367167 () Bool)

(assert (=> d!588393 m!2367167))

(assert (=> d!588393 m!2366891))

(declare-fun m!2367169 () Bool)

(assert (=> d!588393 m!2367169))

(assert (=> b!1929441 d!588393))

(declare-fun b!1929616 () Bool)

(declare-fun e!1233394 () Bool)

(declare-fun lt!739672 () List!22023)

(assert (=> b!1929616 (= e!1233394 (or (not (= (printWithSeparatorTokenWhenNeededList!587 thiss!23328 rules!3198 (t!179958 tokens!598) separatorToken!354) Nil!21941)) (= lt!739672 lt!739568)))))

(declare-fun d!588399 () Bool)

(assert (=> d!588399 e!1233394))

(declare-fun res!862775 () Bool)

(assert (=> d!588399 (=> (not res!862775) (not e!1233394))))

(declare-fun content!3176 (List!22023) (Set C!10866))

(assert (=> d!588399 (= res!862775 (= (content!3176 lt!739672) (set.union (content!3176 lt!739568) (content!3176 (printWithSeparatorTokenWhenNeededList!587 thiss!23328 rules!3198 (t!179958 tokens!598) separatorToken!354)))))))

(declare-fun e!1233393 () List!22023)

(assert (=> d!588399 (= lt!739672 e!1233393)))

(declare-fun c!313872 () Bool)

(assert (=> d!588399 (= c!313872 (is-Nil!21941 lt!739568))))

(assert (=> d!588399 (= (++!5888 lt!739568 (printWithSeparatorTokenWhenNeededList!587 thiss!23328 rules!3198 (t!179958 tokens!598) separatorToken!354)) lt!739672)))

(declare-fun b!1929614 () Bool)

(assert (=> b!1929614 (= e!1233393 (Cons!21941 (h!27342 lt!739568) (++!5888 (t!179956 lt!739568) (printWithSeparatorTokenWhenNeededList!587 thiss!23328 rules!3198 (t!179958 tokens!598) separatorToken!354))))))

(declare-fun b!1929615 () Bool)

(declare-fun res!862774 () Bool)

(assert (=> b!1929615 (=> (not res!862774) (not e!1233394))))

(assert (=> b!1929615 (= res!862774 (= (size!17124 lt!739672) (+ (size!17124 lt!739568) (size!17124 (printWithSeparatorTokenWhenNeededList!587 thiss!23328 rules!3198 (t!179958 tokens!598) separatorToken!354)))))))

(declare-fun b!1929613 () Bool)

(assert (=> b!1929613 (= e!1233393 (printWithSeparatorTokenWhenNeededList!587 thiss!23328 rules!3198 (t!179958 tokens!598) separatorToken!354))))

(assert (= (and d!588399 c!313872) b!1929613))

(assert (= (and d!588399 (not c!313872)) b!1929614))

(assert (= (and d!588399 res!862775) b!1929615))

(assert (= (and b!1929615 res!862774) b!1929616))

(declare-fun m!2367171 () Bool)

(assert (=> d!588399 m!2367171))

(declare-fun m!2367173 () Bool)

(assert (=> d!588399 m!2367173))

(assert (=> d!588399 m!2366917))

(declare-fun m!2367175 () Bool)

(assert (=> d!588399 m!2367175))

(assert (=> b!1929614 m!2366917))

(declare-fun m!2367177 () Bool)

(assert (=> b!1929614 m!2367177))

(declare-fun m!2367179 () Bool)

(assert (=> b!1929615 m!2367179))

(declare-fun m!2367181 () Bool)

(assert (=> b!1929615 m!2367181))

(assert (=> b!1929615 m!2366917))

(declare-fun m!2367183 () Bool)

(assert (=> b!1929615 m!2367183))

(assert (=> b!1929441 d!588399))

(declare-fun d!588401 () Bool)

(declare-fun isEmpty!13526 (Option!4547) Bool)

(assert (=> d!588401 (= (isDefined!3839 lt!739566) (not (isEmpty!13526 lt!739566)))))

(declare-fun bs!414897 () Bool)

(assert (= bs!414897 d!588401))

(declare-fun m!2367185 () Bool)

(assert (=> bs!414897 m!2367185))

(assert (=> b!1929441 d!588401))

(declare-fun d!588403 () Bool)

(declare-fun e!1233397 () Bool)

(assert (=> d!588403 e!1233397))

(declare-fun res!862780 () Bool)

(assert (=> d!588403 (=> (not res!862780) (not e!1233397))))

(assert (=> d!588403 (= res!862780 (isDefined!3839 (getRuleFromTag!756 thiss!23328 rules!3198 (tag!4383 (rule!6142 (h!27344 tokens!598))))))))

(declare-fun lt!739675 () Unit!36299)

(declare-fun choose!11989 (LexerInterface!3548 List!22024 List!22023 Token!7422) Unit!36299)

(assert (=> d!588403 (= lt!739675 (choose!11989 thiss!23328 rules!3198 lt!739568 (h!27344 tokens!598)))))

(assert (=> d!588403 (rulesInvariant!3155 thiss!23328 rules!3198)))

(assert (=> d!588403 (= (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!756 thiss!23328 rules!3198 lt!739568 (h!27344 tokens!598)) lt!739675)))

(declare-fun b!1929621 () Bool)

(declare-fun res!862781 () Bool)

(assert (=> b!1929621 (=> (not res!862781) (not e!1233397))))

(assert (=> b!1929621 (= res!862781 (matchR!2628 (regex!3935 (get!6910 (getRuleFromTag!756 thiss!23328 rules!3198 (tag!4383 (rule!6142 (h!27344 tokens!598)))))) (list!8880 (charsOf!2475 (h!27344 tokens!598)))))))

(declare-fun b!1929622 () Bool)

(assert (=> b!1929622 (= e!1233397 (= (rule!6142 (h!27344 tokens!598)) (get!6910 (getRuleFromTag!756 thiss!23328 rules!3198 (tag!4383 (rule!6142 (h!27344 tokens!598)))))))))

(assert (= (and d!588403 res!862780) b!1929621))

(assert (= (and b!1929621 res!862781) b!1929622))

(assert (=> d!588403 m!2366911))

(assert (=> d!588403 m!2366911))

(declare-fun m!2367187 () Bool)

(assert (=> d!588403 m!2367187))

(declare-fun m!2367189 () Bool)

(assert (=> d!588403 m!2367189))

(assert (=> d!588403 m!2366957))

(assert (=> b!1929621 m!2366911))

(declare-fun m!2367191 () Bool)

(assert (=> b!1929621 m!2367191))

(declare-fun m!2367193 () Bool)

(assert (=> b!1929621 m!2367193))

(declare-fun m!2367195 () Bool)

(assert (=> b!1929621 m!2367195))

(assert (=> b!1929621 m!2366905))

(assert (=> b!1929621 m!2366905))

(assert (=> b!1929621 m!2367193))

(assert (=> b!1929621 m!2366911))

(assert (=> b!1929622 m!2366911))

(assert (=> b!1929622 m!2366911))

(assert (=> b!1929622 m!2367191))

(assert (=> b!1929441 d!588403))

(declare-fun d!588405 () Bool)

(assert (=> d!588405 (= (list!8880 (charsOf!2475 separatorToken!354)) (list!8883 (c!313855 (charsOf!2475 separatorToken!354))))))

(declare-fun bs!414898 () Bool)

(assert (= bs!414898 d!588405))

(declare-fun m!2367197 () Bool)

(assert (=> bs!414898 m!2367197))

(assert (=> b!1929441 d!588405))

(declare-fun d!588407 () Bool)

(declare-fun e!1233398 () Bool)

(assert (=> d!588407 e!1233398))

(declare-fun res!862782 () Bool)

(assert (=> d!588407 (=> (not res!862782) (not e!1233398))))

(assert (=> d!588407 (= res!862782 (isDefined!3839 (getRuleFromTag!756 thiss!23328 rules!3198 (tag!4383 (rule!6142 separatorToken!354)))))))

(declare-fun lt!739676 () Unit!36299)

(assert (=> d!588407 (= lt!739676 (choose!11989 thiss!23328 rules!3198 lt!739564 separatorToken!354))))

(assert (=> d!588407 (rulesInvariant!3155 thiss!23328 rules!3198)))

(assert (=> d!588407 (= (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!756 thiss!23328 rules!3198 lt!739564 separatorToken!354) lt!739676)))

(declare-fun b!1929623 () Bool)

(declare-fun res!862783 () Bool)

(assert (=> b!1929623 (=> (not res!862783) (not e!1233398))))

(assert (=> b!1929623 (= res!862783 (matchR!2628 (regex!3935 (get!6910 (getRuleFromTag!756 thiss!23328 rules!3198 (tag!4383 (rule!6142 separatorToken!354))))) (list!8880 (charsOf!2475 separatorToken!354))))))

(declare-fun b!1929624 () Bool)

(assert (=> b!1929624 (= e!1233398 (= (rule!6142 separatorToken!354) (get!6910 (getRuleFromTag!756 thiss!23328 rules!3198 (tag!4383 (rule!6142 separatorToken!354))))))))

(assert (= (and d!588407 res!862782) b!1929623))

(assert (= (and b!1929623 res!862783) b!1929624))

(assert (=> d!588407 m!2366919))

(assert (=> d!588407 m!2366919))

(declare-fun m!2367199 () Bool)

(assert (=> d!588407 m!2367199))

(declare-fun m!2367201 () Bool)

(assert (=> d!588407 m!2367201))

(assert (=> d!588407 m!2366957))

(assert (=> b!1929623 m!2366919))

(declare-fun m!2367203 () Bool)

(assert (=> b!1929623 m!2367203))

(assert (=> b!1929623 m!2366909))

(declare-fun m!2367205 () Bool)

(assert (=> b!1929623 m!2367205))

(assert (=> b!1929623 m!2366903))

(assert (=> b!1929623 m!2366903))

(assert (=> b!1929623 m!2366909))

(assert (=> b!1929623 m!2366919))

(assert (=> b!1929624 m!2366919))

(assert (=> b!1929624 m!2366919))

(assert (=> b!1929624 m!2367203))

(assert (=> b!1929441 d!588407))

(declare-fun d!588409 () Bool)

(assert (=> d!588409 (= (isDefined!3839 lt!739565) (not (isEmpty!13526 lt!739565)))))

(declare-fun bs!414899 () Bool)

(assert (= bs!414899 d!588409))

(declare-fun m!2367207 () Bool)

(assert (=> bs!414899 m!2367207))

(assert (=> b!1929441 d!588409))

(declare-fun d!588411 () Bool)

(declare-fun lt!739679 () BalanceConc!14464)

(assert (=> d!588411 (= (list!8880 lt!739679) (originalCharacters!4742 separatorToken!354))))

(declare-fun dynLambda!10642 (Int TokenValue!4071) BalanceConc!14464)

(assert (=> d!588411 (= lt!739679 (dynLambda!10642 (toChars!5431 (transformation!3935 (rule!6142 separatorToken!354))) (value!123740 separatorToken!354)))))

(assert (=> d!588411 (= (charsOf!2475 separatorToken!354) lt!739679)))

(declare-fun b_lambda!63991 () Bool)

(assert (=> (not b_lambda!63991) (not d!588411)))

(declare-fun tb!118333 () Bool)

(declare-fun t!179979 () Bool)

(assert (=> (and b!1929438 (= (toChars!5431 (transformation!3935 (h!27343 rules!3198))) (toChars!5431 (transformation!3935 (rule!6142 separatorToken!354)))) t!179979) tb!118333))

(declare-fun b!1929629 () Bool)

(declare-fun e!1233401 () Bool)

(declare-fun tp!550893 () Bool)

(declare-fun inv!29033 (Conc!7324) Bool)

(assert (=> b!1929629 (= e!1233401 (and (inv!29033 (c!313855 (dynLambda!10642 (toChars!5431 (transformation!3935 (rule!6142 separatorToken!354))) (value!123740 separatorToken!354)))) tp!550893))))

(declare-fun result!142930 () Bool)

(declare-fun inv!29034 (BalanceConc!14464) Bool)

(assert (=> tb!118333 (= result!142930 (and (inv!29034 (dynLambda!10642 (toChars!5431 (transformation!3935 (rule!6142 separatorToken!354))) (value!123740 separatorToken!354))) e!1233401))))

(assert (= tb!118333 b!1929629))

(declare-fun m!2367209 () Bool)

(assert (=> b!1929629 m!2367209))

(declare-fun m!2367211 () Bool)

(assert (=> tb!118333 m!2367211))

(assert (=> d!588411 t!179979))

(declare-fun b_and!151543 () Bool)

(assert (= b_and!151509 (and (=> t!179979 result!142930) b_and!151543)))

(declare-fun t!179981 () Bool)

(declare-fun tb!118335 () Bool)

(assert (=> (and b!1929437 (= (toChars!5431 (transformation!3935 (rule!6142 (h!27344 tokens!598)))) (toChars!5431 (transformation!3935 (rule!6142 separatorToken!354)))) t!179981) tb!118335))

(declare-fun result!142934 () Bool)

(assert (= result!142934 result!142930))

(assert (=> d!588411 t!179981))

(declare-fun b_and!151545 () Bool)

(assert (= b_and!151513 (and (=> t!179981 result!142934) b_and!151545)))

(declare-fun t!179983 () Bool)

(declare-fun tb!118337 () Bool)

(assert (=> (and b!1929449 (= (toChars!5431 (transformation!3935 (rule!6142 separatorToken!354))) (toChars!5431 (transformation!3935 (rule!6142 separatorToken!354)))) t!179983) tb!118337))

(declare-fun result!142936 () Bool)

(assert (= result!142936 result!142930))

(assert (=> d!588411 t!179983))

(declare-fun b_and!151547 () Bool)

(assert (= b_and!151517 (and (=> t!179983 result!142936) b_and!151547)))

(declare-fun m!2367213 () Bool)

(assert (=> d!588411 m!2367213))

(declare-fun m!2367215 () Bool)

(assert (=> d!588411 m!2367215))

(assert (=> b!1929441 d!588411))

(declare-fun b!1929642 () Bool)

(declare-fun e!1233411 () Bool)

(declare-fun lt!739686 () Option!4547)

(assert (=> b!1929642 (= e!1233411 (= (tag!4383 (get!6910 lt!739686)) (tag!4383 (rule!6142 (h!27344 tokens!598)))))))

(declare-fun b!1929643 () Bool)

(declare-fun e!1233412 () Option!4547)

(assert (=> b!1929643 (= e!1233412 (Some!4546 (h!27343 rules!3198)))))

(declare-fun b!1929644 () Bool)

(declare-fun e!1233410 () Option!4547)

(assert (=> b!1929644 (= e!1233410 None!4546)))

(declare-fun b!1929646 () Bool)

(declare-fun lt!739688 () Unit!36299)

(declare-fun lt!739687 () Unit!36299)

(assert (=> b!1929646 (= lt!739688 lt!739687)))

(assert (=> b!1929646 (rulesInvariant!3155 thiss!23328 (t!179957 rules!3198))))

(declare-fun lemmaInvariantOnRulesThenOnTail!271 (LexerInterface!3548 Rule!7670 List!22024) Unit!36299)

(assert (=> b!1929646 (= lt!739687 (lemmaInvariantOnRulesThenOnTail!271 thiss!23328 (h!27343 rules!3198) (t!179957 rules!3198)))))

(assert (=> b!1929646 (= e!1233410 (getRuleFromTag!756 thiss!23328 (t!179957 rules!3198) (tag!4383 (rule!6142 (h!27344 tokens!598)))))))

(declare-fun b!1929647 () Bool)

(assert (=> b!1929647 (= e!1233412 e!1233410)))

(declare-fun c!313878 () Bool)

(assert (=> b!1929647 (= c!313878 (and (is-Cons!21942 rules!3198) (not (= (tag!4383 (h!27343 rules!3198)) (tag!4383 (rule!6142 (h!27344 tokens!598)))))))))

(declare-fun b!1929645 () Bool)

(declare-fun e!1233413 () Bool)

(assert (=> b!1929645 (= e!1233413 e!1233411)))

(declare-fun res!862788 () Bool)

(assert (=> b!1929645 (=> (not res!862788) (not e!1233411))))

(assert (=> b!1929645 (= res!862788 (contains!3972 rules!3198 (get!6910 lt!739686)))))

(declare-fun d!588413 () Bool)

(assert (=> d!588413 e!1233413))

(declare-fun res!862789 () Bool)

(assert (=> d!588413 (=> res!862789 e!1233413)))

(assert (=> d!588413 (= res!862789 (isEmpty!13526 lt!739686))))

(assert (=> d!588413 (= lt!739686 e!1233412)))

(declare-fun c!313877 () Bool)

(assert (=> d!588413 (= c!313877 (and (is-Cons!21942 rules!3198) (= (tag!4383 (h!27343 rules!3198)) (tag!4383 (rule!6142 (h!27344 tokens!598))))))))

(assert (=> d!588413 (rulesInvariant!3155 thiss!23328 rules!3198)))

(assert (=> d!588413 (= (getRuleFromTag!756 thiss!23328 rules!3198 (tag!4383 (rule!6142 (h!27344 tokens!598)))) lt!739686)))

(assert (= (and d!588413 c!313877) b!1929643))

(assert (= (and d!588413 (not c!313877)) b!1929647))

(assert (= (and b!1929647 c!313878) b!1929646))

(assert (= (and b!1929647 (not c!313878)) b!1929644))

(assert (= (and d!588413 (not res!862789)) b!1929645))

(assert (= (and b!1929645 res!862788) b!1929642))

(declare-fun m!2367217 () Bool)

(assert (=> b!1929642 m!2367217))

(declare-fun m!2367219 () Bool)

(assert (=> b!1929646 m!2367219))

(declare-fun m!2367221 () Bool)

(assert (=> b!1929646 m!2367221))

(declare-fun m!2367223 () Bool)

(assert (=> b!1929646 m!2367223))

(assert (=> b!1929645 m!2367217))

(assert (=> b!1929645 m!2367217))

(declare-fun m!2367225 () Bool)

(assert (=> b!1929645 m!2367225))

(declare-fun m!2367227 () Bool)

(assert (=> d!588413 m!2367227))

(assert (=> d!588413 m!2366957))

(assert (=> b!1929441 d!588413))

(declare-fun d!588415 () Bool)

(assert (=> d!588415 (= (isDefined!3840 lt!739560) (not (isEmpty!13525 lt!739560)))))

(declare-fun bs!414900 () Bool)

(assert (= bs!414900 d!588415))

(declare-fun m!2367229 () Bool)

(assert (=> bs!414900 m!2367229))

(assert (=> b!1929441 d!588415))

(declare-fun b!1929648 () Bool)

(declare-fun e!1233414 () Bool)

(declare-fun lt!739689 () Option!4548)

(assert (=> b!1929648 (= e!1233414 (contains!3972 rules!3198 (rule!6142 (_1!11751 (get!6911 lt!739689)))))))

(declare-fun b!1929649 () Bool)

(declare-fun e!1233416 () Option!4548)

(declare-fun lt!739693 () Option!4548)

(declare-fun lt!739691 () Option!4548)

(assert (=> b!1929649 (= e!1233416 (ite (and (is-None!4547 lt!739693) (is-None!4547 lt!739691)) None!4547 (ite (is-None!4547 lt!739691) lt!739693 (ite (is-None!4547 lt!739693) lt!739691 (ite (>= (size!17121 (_1!11751 (v!26648 lt!739693))) (size!17121 (_1!11751 (v!26648 lt!739691)))) lt!739693 lt!739691)))))))

(declare-fun call!118690 () Option!4548)

(assert (=> b!1929649 (= lt!739693 call!118690)))

(assert (=> b!1929649 (= lt!739691 (maxPrefix!1986 thiss!23328 (t!179957 rules!3198) lt!739568))))

(declare-fun b!1929650 () Bool)

(declare-fun res!862790 () Bool)

(assert (=> b!1929650 (=> (not res!862790) (not e!1233414))))

(assert (=> b!1929650 (= res!862790 (matchR!2628 (regex!3935 (rule!6142 (_1!11751 (get!6911 lt!739689)))) (list!8880 (charsOf!2475 (_1!11751 (get!6911 lt!739689))))))))

(declare-fun b!1929651 () Bool)

(assert (=> b!1929651 (= e!1233416 call!118690)))

(declare-fun b!1929652 () Bool)

(declare-fun res!862795 () Bool)

(assert (=> b!1929652 (=> (not res!862795) (not e!1233414))))

(assert (=> b!1929652 (= res!862795 (= (list!8880 (charsOf!2475 (_1!11751 (get!6911 lt!739689)))) (originalCharacters!4742 (_1!11751 (get!6911 lt!739689)))))))

(declare-fun bm!118685 () Bool)

(assert (=> bm!118685 (= call!118690 (maxPrefixOneRule!1224 thiss!23328 (h!27343 rules!3198) lt!739568))))

(declare-fun b!1929653 () Bool)

(declare-fun e!1233415 () Bool)

(assert (=> b!1929653 (= e!1233415 e!1233414)))

(declare-fun res!862792 () Bool)

(assert (=> b!1929653 (=> (not res!862792) (not e!1233414))))

(assert (=> b!1929653 (= res!862792 (isDefined!3840 lt!739689))))

(declare-fun b!1929654 () Bool)

(declare-fun res!862794 () Bool)

(assert (=> b!1929654 (=> (not res!862794) (not e!1233414))))

(assert (=> b!1929654 (= res!862794 (< (size!17124 (_2!11751 (get!6911 lt!739689))) (size!17124 lt!739568)))))

(declare-fun d!588417 () Bool)

(assert (=> d!588417 e!1233415))

(declare-fun res!862793 () Bool)

(assert (=> d!588417 (=> res!862793 e!1233415)))

(assert (=> d!588417 (= res!862793 (isEmpty!13525 lt!739689))))

(assert (=> d!588417 (= lt!739689 e!1233416)))

(declare-fun c!313879 () Bool)

(assert (=> d!588417 (= c!313879 (and (is-Cons!21942 rules!3198) (is-Nil!21942 (t!179957 rules!3198))))))

(declare-fun lt!739690 () Unit!36299)

(declare-fun lt!739692 () Unit!36299)

(assert (=> d!588417 (= lt!739690 lt!739692)))

(assert (=> d!588417 (isPrefix!1942 lt!739568 lt!739568)))

(assert (=> d!588417 (= lt!739692 (lemmaIsPrefixRefl!1260 lt!739568 lt!739568))))

(assert (=> d!588417 (rulesValidInductive!1341 thiss!23328 rules!3198)))

(assert (=> d!588417 (= (maxPrefix!1986 thiss!23328 rules!3198 lt!739568) lt!739689)))

(declare-fun b!1929655 () Bool)

(declare-fun res!862796 () Bool)

(assert (=> b!1929655 (=> (not res!862796) (not e!1233414))))

(assert (=> b!1929655 (= res!862796 (= (++!5888 (list!8880 (charsOf!2475 (_1!11751 (get!6911 lt!739689)))) (_2!11751 (get!6911 lt!739689))) lt!739568))))

(declare-fun b!1929656 () Bool)

(declare-fun res!862791 () Bool)

(assert (=> b!1929656 (=> (not res!862791) (not e!1233414))))

(assert (=> b!1929656 (= res!862791 (= (value!123740 (_1!11751 (get!6911 lt!739689))) (apply!5702 (transformation!3935 (rule!6142 (_1!11751 (get!6911 lt!739689)))) (seqFromList!2789 (originalCharacters!4742 (_1!11751 (get!6911 lt!739689)))))))))

(assert (= (and d!588417 c!313879) b!1929651))

(assert (= (and d!588417 (not c!313879)) b!1929649))

(assert (= (or b!1929651 b!1929649) bm!118685))

(assert (= (and d!588417 (not res!862793)) b!1929653))

(assert (= (and b!1929653 res!862792) b!1929652))

(assert (= (and b!1929652 res!862795) b!1929654))

(assert (= (and b!1929654 res!862794) b!1929655))

(assert (= (and b!1929655 res!862796) b!1929656))

(assert (= (and b!1929656 res!862791) b!1929650))

(assert (= (and b!1929650 res!862790) b!1929648))

(declare-fun m!2367231 () Bool)

(assert (=> b!1929655 m!2367231))

(declare-fun m!2367233 () Bool)

(assert (=> b!1929655 m!2367233))

(assert (=> b!1929655 m!2367233))

(declare-fun m!2367235 () Bool)

(assert (=> b!1929655 m!2367235))

(assert (=> b!1929655 m!2367235))

(declare-fun m!2367237 () Bool)

(assert (=> b!1929655 m!2367237))

(assert (=> b!1929656 m!2367231))

(declare-fun m!2367239 () Bool)

(assert (=> b!1929656 m!2367239))

(assert (=> b!1929656 m!2367239))

(declare-fun m!2367241 () Bool)

(assert (=> b!1929656 m!2367241))

(declare-fun m!2367243 () Bool)

(assert (=> b!1929649 m!2367243))

(declare-fun m!2367245 () Bool)

(assert (=> d!588417 m!2367245))

(declare-fun m!2367247 () Bool)

(assert (=> d!588417 m!2367247))

(declare-fun m!2367249 () Bool)

(assert (=> d!588417 m!2367249))

(assert (=> d!588417 m!2367141))

(assert (=> b!1929650 m!2367231))

(assert (=> b!1929650 m!2367233))

(assert (=> b!1929650 m!2367233))

(assert (=> b!1929650 m!2367235))

(assert (=> b!1929650 m!2367235))

(declare-fun m!2367251 () Bool)

(assert (=> b!1929650 m!2367251))

(declare-fun m!2367253 () Bool)

(assert (=> b!1929653 m!2367253))

(assert (=> b!1929654 m!2367231))

(declare-fun m!2367255 () Bool)

(assert (=> b!1929654 m!2367255))

(assert (=> b!1929654 m!2367181))

(assert (=> b!1929652 m!2367231))

(assert (=> b!1929652 m!2367233))

(assert (=> b!1929652 m!2367233))

(assert (=> b!1929652 m!2367235))

(declare-fun m!2367257 () Bool)

(assert (=> bm!118685 m!2367257))

(assert (=> b!1929648 m!2367231))

(declare-fun m!2367259 () Bool)

(assert (=> b!1929648 m!2367259))

(assert (=> b!1929441 d!588417))

(declare-fun bs!414901 () Bool)

(declare-fun b!1929674 () Bool)

(assert (= bs!414901 (and b!1929674 b!1929454)))

(declare-fun lambda!75245 () Int)

(assert (=> bs!414901 (not (= lambda!75245 lambda!75236))))

(declare-fun b!1929691 () Bool)

(declare-fun e!1233437 () Bool)

(assert (=> b!1929691 (= e!1233437 true)))

(declare-fun b!1929690 () Bool)

(declare-fun e!1233436 () Bool)

(assert (=> b!1929690 (= e!1233436 e!1233437)))

(declare-fun b!1929689 () Bool)

(declare-fun e!1233435 () Bool)

(assert (=> b!1929689 (= e!1233435 e!1233436)))

(assert (=> b!1929674 e!1233435))

(assert (= b!1929690 b!1929691))

(assert (= b!1929689 b!1929690))

(assert (= (and b!1929674 (is-Cons!21942 rules!3198)) b!1929689))

(declare-fun order!13783 () Int)

(declare-fun dynLambda!10643 (Int Int) Int)

(assert (=> b!1929691 (< (dynLambda!10638 order!13777 (toValue!5572 (transformation!3935 (h!27343 rules!3198)))) (dynLambda!10643 order!13783 lambda!75245))))

(assert (=> b!1929691 (< (dynLambda!10640 order!13781 (toChars!5431 (transformation!3935 (h!27343 rules!3198)))) (dynLambda!10643 order!13783 lambda!75245))))

(assert (=> b!1929674 true))

(declare-fun call!118704 () BalanceConc!14464)

(declare-fun c!313888 () Bool)

(declare-fun bm!118696 () Bool)

(declare-fun c!313891 () Bool)

(assert (=> bm!118696 (= call!118704 (charsOf!2475 (ite c!313891 (h!27344 (t!179958 tokens!598)) (ite c!313888 separatorToken!354 (h!27344 (t!179958 tokens!598))))))))

(declare-fun bm!118697 () Bool)

(declare-fun call!118703 () BalanceConc!14464)

(assert (=> bm!118697 (= call!118703 call!118704)))

(declare-fun call!118705 () List!22023)

(declare-fun bm!118698 () Bool)

(assert (=> bm!118698 (= call!118705 (list!8880 (ite c!313891 call!118704 call!118703)))))

(declare-fun b!1929673 () Bool)

(declare-fun e!1233425 () List!22023)

(assert (=> b!1929673 (= e!1233425 Nil!21941)))

(assert (=> b!1929673 (= (print!1518 thiss!23328 (singletonSeq!1919 (h!27344 (t!179958 tokens!598)))) (printTailRec!1024 thiss!23328 (singletonSeq!1919 (h!27344 (t!179958 tokens!598))) 0 (BalanceConc!14465 Empty!7324)))))

(declare-fun lt!739711 () Unit!36299)

(declare-fun Unit!36304 () Unit!36299)

(assert (=> b!1929673 (= lt!739711 Unit!36304)))

(declare-fun call!118702 () List!22023)

(declare-fun lt!739706 () Unit!36299)

(declare-fun lt!739710 () List!22023)

(declare-fun lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!744 (LexerInterface!3548 List!22024 List!22023 List!22023) Unit!36299)

(assert (=> b!1929673 (= lt!739706 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!744 thiss!23328 rules!3198 call!118702 lt!739710))))

(assert (=> b!1929673 false))

(declare-fun lt!739709 () Unit!36299)

(declare-fun Unit!36305 () Unit!36299)

(assert (=> b!1929673 (= lt!739709 Unit!36305)))

(declare-fun bm!118699 () Bool)

(assert (=> bm!118699 (= call!118702 call!118705)))

(declare-fun bm!118700 () Bool)

(declare-fun c!313890 () Bool)

(assert (=> bm!118700 (= c!313890 c!313891)))

(declare-fun e!1233426 () List!22023)

(declare-fun call!118701 () List!22023)

(assert (=> bm!118700 (= call!118701 (++!5888 e!1233426 (ite c!313891 lt!739710 call!118702)))))

(declare-fun e!1233427 () List!22023)

(declare-fun e!1233428 () List!22023)

(assert (=> b!1929674 (= e!1233427 e!1233428)))

(declare-fun lt!739708 () Unit!36299)

(declare-fun forallContained!713 (List!22025 Int Token!7422) Unit!36299)

(assert (=> b!1929674 (= lt!739708 (forallContained!713 (t!179958 tokens!598) lambda!75245 (h!27344 (t!179958 tokens!598))))))

(assert (=> b!1929674 (= lt!739710 (printWithSeparatorTokenWhenNeededList!587 thiss!23328 rules!3198 (t!179958 (t!179958 tokens!598)) separatorToken!354))))

(declare-fun lt!739707 () Option!4548)

(assert (=> b!1929674 (= lt!739707 (maxPrefix!1986 thiss!23328 rules!3198 (++!5888 (list!8880 (charsOf!2475 (h!27344 (t!179958 tokens!598)))) lt!739710)))))

(assert (=> b!1929674 (= c!313891 (and (is-Some!4547 lt!739707) (= (_1!11751 (v!26648 lt!739707)) (h!27344 (t!179958 tokens!598)))))))

(declare-fun b!1929675 () Bool)

(assert (=> b!1929675 (= e!1233426 call!118705)))

(declare-fun b!1929676 () Bool)

(assert (=> b!1929676 (= e!1233425 (++!5888 call!118701 lt!739710))))

(declare-fun d!588419 () Bool)

(declare-fun c!313889 () Bool)

(assert (=> d!588419 (= c!313889 (is-Cons!21943 (t!179958 tokens!598)))))

(assert (=> d!588419 (= (printWithSeparatorTokenWhenNeededList!587 thiss!23328 rules!3198 (t!179958 tokens!598) separatorToken!354) e!1233427)))

(declare-fun b!1929677 () Bool)

(assert (=> b!1929677 (= e!1233427 Nil!21941)))

(declare-fun b!1929678 () Bool)

(assert (=> b!1929678 (= c!313888 (and (is-Some!4547 lt!739707) (not (= (_1!11751 (v!26648 lt!739707)) (h!27344 (t!179958 tokens!598))))))))

(assert (=> b!1929678 (= e!1233428 e!1233425)))

(declare-fun b!1929679 () Bool)

(assert (=> b!1929679 (= e!1233426 (list!8880 (charsOf!2475 (h!27344 (t!179958 tokens!598)))))))

(declare-fun b!1929680 () Bool)

(assert (=> b!1929680 (= e!1233428 call!118701)))

(assert (= (and d!588419 c!313889) b!1929674))

(assert (= (and d!588419 (not c!313889)) b!1929677))

(assert (= (and b!1929674 c!313891) b!1929680))

(assert (= (and b!1929674 (not c!313891)) b!1929678))

(assert (= (and b!1929678 c!313888) b!1929676))

(assert (= (and b!1929678 (not c!313888)) b!1929673))

(assert (= (or b!1929676 b!1929673) bm!118697))

(assert (= (or b!1929676 b!1929673) bm!118699))

(assert (= (or b!1929680 bm!118697) bm!118696))

(assert (= (or b!1929680 bm!118699) bm!118698))

(assert (= (or b!1929680 b!1929676) bm!118700))

(assert (= (and bm!118700 c!313890) b!1929675))

(assert (= (and bm!118700 (not c!313890)) b!1929679))

(declare-fun m!2367261 () Bool)

(assert (=> b!1929676 m!2367261))

(declare-fun m!2367263 () Bool)

(assert (=> b!1929679 m!2367263))

(assert (=> b!1929679 m!2367263))

(declare-fun m!2367265 () Bool)

(assert (=> b!1929679 m!2367265))

(declare-fun m!2367267 () Bool)

(assert (=> bm!118698 m!2367267))

(declare-fun m!2367269 () Bool)

(assert (=> b!1929673 m!2367269))

(assert (=> b!1929673 m!2367269))

(declare-fun m!2367271 () Bool)

(assert (=> b!1929673 m!2367271))

(assert (=> b!1929673 m!2367269))

(declare-fun m!2367273 () Bool)

(assert (=> b!1929673 m!2367273))

(declare-fun m!2367275 () Bool)

(assert (=> b!1929673 m!2367275))

(declare-fun m!2367277 () Bool)

(assert (=> b!1929674 m!2367277))

(assert (=> b!1929674 m!2367265))

(declare-fun m!2367279 () Bool)

(assert (=> b!1929674 m!2367279))

(declare-fun m!2367281 () Bool)

(assert (=> b!1929674 m!2367281))

(assert (=> b!1929674 m!2367263))

(assert (=> b!1929674 m!2367263))

(assert (=> b!1929674 m!2367265))

(assert (=> b!1929674 m!2367279))

(declare-fun m!2367283 () Bool)

(assert (=> b!1929674 m!2367283))

(declare-fun m!2367285 () Bool)

(assert (=> bm!118696 m!2367285))

(declare-fun m!2367287 () Bool)

(assert (=> bm!118700 m!2367287))

(assert (=> b!1929441 d!588419))

(declare-fun b!1929698 () Bool)

(declare-fun e!1233440 () Bool)

(assert (=> b!1929698 (= e!1233440 true)))

(declare-fun d!588421 () Bool)

(assert (=> d!588421 e!1233440))

(assert (= d!588421 b!1929698))

(declare-fun lambda!75248 () Int)

(declare-fun order!13785 () Int)

(declare-fun dynLambda!10644 (Int Int) Int)

(assert (=> b!1929698 (< (dynLambda!10638 order!13777 (toValue!5572 (transformation!3935 (rule!6142 (h!27344 tokens!598))))) (dynLambda!10644 order!13785 lambda!75248))))

(assert (=> b!1929698 (< (dynLambda!10640 order!13781 (toChars!5431 (transformation!3935 (rule!6142 (h!27344 tokens!598))))) (dynLambda!10644 order!13785 lambda!75248))))

(assert (=> d!588421 (= (list!8880 (dynLambda!10642 (toChars!5431 (transformation!3935 (rule!6142 (h!27344 tokens!598)))) (dynLambda!10641 (toValue!5572 (transformation!3935 (rule!6142 (h!27344 tokens!598)))) lt!739562))) (list!8880 lt!739562))))

(declare-fun lt!739714 () Unit!36299)

(declare-fun ForallOf!406 (Int BalanceConc!14464) Unit!36299)

(assert (=> d!588421 (= lt!739714 (ForallOf!406 lambda!75248 lt!739562))))

(assert (=> d!588421 (= (lemmaSemiInverse!892 (transformation!3935 (rule!6142 (h!27344 tokens!598))) lt!739562) lt!739714)))

(declare-fun b_lambda!63993 () Bool)

(assert (=> (not b_lambda!63993) (not d!588421)))

(declare-fun t!179987 () Bool)

(declare-fun tb!118339 () Bool)

(assert (=> (and b!1929438 (= (toChars!5431 (transformation!3935 (h!27343 rules!3198))) (toChars!5431 (transformation!3935 (rule!6142 (h!27344 tokens!598))))) t!179987) tb!118339))

(declare-fun e!1233441 () Bool)

(declare-fun b!1929699 () Bool)

(declare-fun tp!550894 () Bool)

(assert (=> b!1929699 (= e!1233441 (and (inv!29033 (c!313855 (dynLambda!10642 (toChars!5431 (transformation!3935 (rule!6142 (h!27344 tokens!598)))) (dynLambda!10641 (toValue!5572 (transformation!3935 (rule!6142 (h!27344 tokens!598)))) lt!739562)))) tp!550894))))

(declare-fun result!142938 () Bool)

(assert (=> tb!118339 (= result!142938 (and (inv!29034 (dynLambda!10642 (toChars!5431 (transformation!3935 (rule!6142 (h!27344 tokens!598)))) (dynLambda!10641 (toValue!5572 (transformation!3935 (rule!6142 (h!27344 tokens!598)))) lt!739562))) e!1233441))))

(assert (= tb!118339 b!1929699))

(declare-fun m!2367289 () Bool)

(assert (=> b!1929699 m!2367289))

(declare-fun m!2367291 () Bool)

(assert (=> tb!118339 m!2367291))

(assert (=> d!588421 t!179987))

(declare-fun b_and!151549 () Bool)

(assert (= b_and!151543 (and (=> t!179987 result!142938) b_and!151549)))

(declare-fun t!179989 () Bool)

(declare-fun tb!118341 () Bool)

(assert (=> (and b!1929437 (= (toChars!5431 (transformation!3935 (rule!6142 (h!27344 tokens!598)))) (toChars!5431 (transformation!3935 (rule!6142 (h!27344 tokens!598))))) t!179989) tb!118341))

(declare-fun result!142940 () Bool)

(assert (= result!142940 result!142938))

(assert (=> d!588421 t!179989))

(declare-fun b_and!151551 () Bool)

(assert (= b_and!151545 (and (=> t!179989 result!142940) b_and!151551)))

(declare-fun t!179991 () Bool)

(declare-fun tb!118343 () Bool)

(assert (=> (and b!1929449 (= (toChars!5431 (transformation!3935 (rule!6142 separatorToken!354))) (toChars!5431 (transformation!3935 (rule!6142 (h!27344 tokens!598))))) t!179991) tb!118343))

(declare-fun result!142942 () Bool)

(assert (= result!142942 result!142938))

(assert (=> d!588421 t!179991))

(declare-fun b_and!151553 () Bool)

(assert (= b_and!151547 (and (=> t!179991 result!142942) b_and!151553)))

(declare-fun b_lambda!63995 () Bool)

(assert (=> (not b_lambda!63995) (not d!588421)))

(assert (=> d!588421 t!179967))

(declare-fun b_and!151555 () Bool)

(assert (= b_and!151537 (and (=> t!179967 result!142916) b_and!151555)))

(assert (=> d!588421 t!179969))

(declare-fun b_and!151557 () Bool)

(assert (= b_and!151539 (and (=> t!179969 result!142920) b_and!151557)))

(assert (=> d!588421 t!179971))

(declare-fun b_and!151559 () Bool)

(assert (= b_and!151541 (and (=> t!179971 result!142922) b_and!151559)))

(assert (=> d!588421 m!2367165))

(declare-fun m!2367293 () Bool)

(assert (=> d!588421 m!2367293))

(declare-fun m!2367295 () Bool)

(assert (=> d!588421 m!2367295))

(assert (=> d!588421 m!2366893))

(assert (=> d!588421 m!2367165))

(assert (=> d!588421 m!2367293))

(declare-fun m!2367297 () Bool)

(assert (=> d!588421 m!2367297))

(assert (=> b!1929441 d!588421))

(declare-fun d!588423 () Bool)

(declare-fun lt!739715 () BalanceConc!14464)

(assert (=> d!588423 (= (list!8880 lt!739715) (originalCharacters!4742 (h!27344 tokens!598)))))

(assert (=> d!588423 (= lt!739715 (dynLambda!10642 (toChars!5431 (transformation!3935 (rule!6142 (h!27344 tokens!598)))) (value!123740 (h!27344 tokens!598))))))

(assert (=> d!588423 (= (charsOf!2475 (h!27344 tokens!598)) lt!739715)))

(declare-fun b_lambda!63997 () Bool)

(assert (=> (not b_lambda!63997) (not d!588423)))

(declare-fun tb!118345 () Bool)

(declare-fun t!179993 () Bool)

(assert (=> (and b!1929438 (= (toChars!5431 (transformation!3935 (h!27343 rules!3198))) (toChars!5431 (transformation!3935 (rule!6142 (h!27344 tokens!598))))) t!179993) tb!118345))

(declare-fun b!1929700 () Bool)

(declare-fun e!1233442 () Bool)

(declare-fun tp!550895 () Bool)

(assert (=> b!1929700 (= e!1233442 (and (inv!29033 (c!313855 (dynLambda!10642 (toChars!5431 (transformation!3935 (rule!6142 (h!27344 tokens!598)))) (value!123740 (h!27344 tokens!598))))) tp!550895))))

(declare-fun result!142944 () Bool)

(assert (=> tb!118345 (= result!142944 (and (inv!29034 (dynLambda!10642 (toChars!5431 (transformation!3935 (rule!6142 (h!27344 tokens!598)))) (value!123740 (h!27344 tokens!598)))) e!1233442))))

(assert (= tb!118345 b!1929700))

(declare-fun m!2367299 () Bool)

(assert (=> b!1929700 m!2367299))

(declare-fun m!2367301 () Bool)

(assert (=> tb!118345 m!2367301))

(assert (=> d!588423 t!179993))

(declare-fun b_and!151561 () Bool)

(assert (= b_and!151549 (and (=> t!179993 result!142944) b_and!151561)))

(declare-fun t!179995 () Bool)

(declare-fun tb!118347 () Bool)

(assert (=> (and b!1929437 (= (toChars!5431 (transformation!3935 (rule!6142 (h!27344 tokens!598)))) (toChars!5431 (transformation!3935 (rule!6142 (h!27344 tokens!598))))) t!179995) tb!118347))

(declare-fun result!142946 () Bool)

(assert (= result!142946 result!142944))

(assert (=> d!588423 t!179995))

(declare-fun b_and!151563 () Bool)

(assert (= b_and!151551 (and (=> t!179995 result!142946) b_and!151563)))

(declare-fun tb!118349 () Bool)

(declare-fun t!179997 () Bool)

(assert (=> (and b!1929449 (= (toChars!5431 (transformation!3935 (rule!6142 separatorToken!354))) (toChars!5431 (transformation!3935 (rule!6142 (h!27344 tokens!598))))) t!179997) tb!118349))

(declare-fun result!142948 () Bool)

(assert (= result!142948 result!142944))

(assert (=> d!588423 t!179997))

(declare-fun b_and!151565 () Bool)

(assert (= b_and!151553 (and (=> t!179997 result!142948) b_and!151565)))

(declare-fun m!2367303 () Bool)

(assert (=> d!588423 m!2367303))

(declare-fun m!2367305 () Bool)

(assert (=> d!588423 m!2367305))

(assert (=> b!1929441 d!588423))

(declare-fun d!588425 () Bool)

(declare-fun fromListB!1239 (List!22023) BalanceConc!14464)

(assert (=> d!588425 (= (seqFromList!2789 (originalCharacters!4742 (h!27344 tokens!598))) (fromListB!1239 (originalCharacters!4742 (h!27344 tokens!598))))))

(declare-fun bs!414902 () Bool)

(assert (= bs!414902 d!588425))

(declare-fun m!2367307 () Bool)

(assert (=> bs!414902 m!2367307))

(assert (=> b!1929441 d!588425))

(declare-fun d!588427 () Bool)

(assert (=> d!588427 (= (list!8880 lt!739562) (list!8883 (c!313855 lt!739562)))))

(declare-fun bs!414903 () Bool)

(assert (= bs!414903 d!588427))

(declare-fun m!2367309 () Bool)

(assert (=> bs!414903 m!2367309))

(assert (=> b!1929441 d!588427))

(declare-fun b!1929701 () Bool)

(declare-fun e!1233444 () Bool)

(declare-fun lt!739716 () Option!4547)

(assert (=> b!1929701 (= e!1233444 (= (tag!4383 (get!6910 lt!739716)) (tag!4383 (rule!6142 separatorToken!354))))))

(declare-fun b!1929702 () Bool)

(declare-fun e!1233445 () Option!4547)

(assert (=> b!1929702 (= e!1233445 (Some!4546 (h!27343 rules!3198)))))

(declare-fun b!1929703 () Bool)

(declare-fun e!1233443 () Option!4547)

(assert (=> b!1929703 (= e!1233443 None!4546)))

(declare-fun b!1929705 () Bool)

(declare-fun lt!739718 () Unit!36299)

(declare-fun lt!739717 () Unit!36299)

(assert (=> b!1929705 (= lt!739718 lt!739717)))

(assert (=> b!1929705 (rulesInvariant!3155 thiss!23328 (t!179957 rules!3198))))

(assert (=> b!1929705 (= lt!739717 (lemmaInvariantOnRulesThenOnTail!271 thiss!23328 (h!27343 rules!3198) (t!179957 rules!3198)))))

(assert (=> b!1929705 (= e!1233443 (getRuleFromTag!756 thiss!23328 (t!179957 rules!3198) (tag!4383 (rule!6142 separatorToken!354))))))

(declare-fun b!1929706 () Bool)

(assert (=> b!1929706 (= e!1233445 e!1233443)))

(declare-fun c!313894 () Bool)

(assert (=> b!1929706 (= c!313894 (and (is-Cons!21942 rules!3198) (not (= (tag!4383 (h!27343 rules!3198)) (tag!4383 (rule!6142 separatorToken!354))))))))

(declare-fun b!1929704 () Bool)

(declare-fun e!1233446 () Bool)

(assert (=> b!1929704 (= e!1233446 e!1233444)))

(declare-fun res!862797 () Bool)

(assert (=> b!1929704 (=> (not res!862797) (not e!1233444))))

(assert (=> b!1929704 (= res!862797 (contains!3972 rules!3198 (get!6910 lt!739716)))))

(declare-fun d!588429 () Bool)

(assert (=> d!588429 e!1233446))

(declare-fun res!862798 () Bool)

(assert (=> d!588429 (=> res!862798 e!1233446)))

(assert (=> d!588429 (= res!862798 (isEmpty!13526 lt!739716))))

(assert (=> d!588429 (= lt!739716 e!1233445)))

(declare-fun c!313893 () Bool)

(assert (=> d!588429 (= c!313893 (and (is-Cons!21942 rules!3198) (= (tag!4383 (h!27343 rules!3198)) (tag!4383 (rule!6142 separatorToken!354)))))))

(assert (=> d!588429 (rulesInvariant!3155 thiss!23328 rules!3198)))

(assert (=> d!588429 (= (getRuleFromTag!756 thiss!23328 rules!3198 (tag!4383 (rule!6142 separatorToken!354))) lt!739716)))

(assert (= (and d!588429 c!313893) b!1929702))

(assert (= (and d!588429 (not c!313893)) b!1929706))

(assert (= (and b!1929706 c!313894) b!1929705))

(assert (= (and b!1929706 (not c!313894)) b!1929703))

(assert (= (and d!588429 (not res!862798)) b!1929704))

(assert (= (and b!1929704 res!862797) b!1929701))

(declare-fun m!2367311 () Bool)

(assert (=> b!1929701 m!2367311))

(assert (=> b!1929705 m!2367219))

(assert (=> b!1929705 m!2367221))

(declare-fun m!2367313 () Bool)

(assert (=> b!1929705 m!2367313))

(assert (=> b!1929704 m!2367311))

(assert (=> b!1929704 m!2367311))

(declare-fun m!2367315 () Bool)

(assert (=> b!1929704 m!2367315))

(declare-fun m!2367317 () Bool)

(assert (=> d!588429 m!2367317))

(assert (=> d!588429 m!2366957))

(assert (=> b!1929441 d!588429))

(declare-fun bs!414906 () Bool)

(declare-fun d!588431 () Bool)

(assert (= bs!414906 (and d!588431 b!1929454)))

(declare-fun lambda!75254 () Int)

(assert (=> bs!414906 (not (= lambda!75254 lambda!75236))))

(declare-fun bs!414907 () Bool)

(assert (= bs!414907 (and d!588431 b!1929674)))

(assert (=> bs!414907 (= lambda!75254 lambda!75245)))

(declare-fun b!1929833 () Bool)

(declare-fun e!1233529 () Bool)

(assert (=> b!1929833 (= e!1233529 true)))

(declare-fun b!1929832 () Bool)

(declare-fun e!1233528 () Bool)

(assert (=> b!1929832 (= e!1233528 e!1233529)))

(declare-fun b!1929831 () Bool)

(declare-fun e!1233527 () Bool)

(assert (=> b!1929831 (= e!1233527 e!1233528)))

(assert (=> d!588431 e!1233527))

(assert (= b!1929832 b!1929833))

(assert (= b!1929831 b!1929832))

(assert (= (and d!588431 (is-Cons!21942 rules!3198)) b!1929831))

(assert (=> b!1929833 (< (dynLambda!10638 order!13777 (toValue!5572 (transformation!3935 (h!27343 rules!3198)))) (dynLambda!10643 order!13783 lambda!75254))))

(assert (=> b!1929833 (< (dynLambda!10640 order!13781 (toChars!5431 (transformation!3935 (h!27343 rules!3198)))) (dynLambda!10643 order!13783 lambda!75254))))

(assert (=> d!588431 true))

(declare-fun lt!739749 () Bool)

(assert (=> d!588431 (= lt!739749 (forall!4639 tokens!598 lambda!75254))))

(declare-fun e!1233526 () Bool)

(assert (=> d!588431 (= lt!739749 e!1233526)))

(declare-fun res!862857 () Bool)

(assert (=> d!588431 (=> res!862857 e!1233526)))

(assert (=> d!588431 (= res!862857 (not (is-Cons!21943 tokens!598)))))

(assert (=> d!588431 (not (isEmpty!13523 rules!3198))))

(assert (=> d!588431 (= (rulesProduceEachTokenIndividuallyList!1279 thiss!23328 rules!3198 tokens!598) lt!739749)))

(declare-fun b!1929829 () Bool)

(declare-fun e!1233525 () Bool)

(assert (=> b!1929829 (= e!1233526 e!1233525)))

(declare-fun res!862858 () Bool)

(assert (=> b!1929829 (=> (not res!862858) (not e!1233525))))

(assert (=> b!1929829 (= res!862858 (rulesProduceIndividualToken!1720 thiss!23328 rules!3198 (h!27344 tokens!598)))))

(declare-fun b!1929830 () Bool)

(assert (=> b!1929830 (= e!1233525 (rulesProduceEachTokenIndividuallyList!1279 thiss!23328 rules!3198 (t!179958 tokens!598)))))

(assert (= (and d!588431 (not res!862857)) b!1929829))

(assert (= (and b!1929829 res!862858) b!1929830))

(declare-fun m!2367429 () Bool)

(assert (=> d!588431 m!2367429))

(assert (=> d!588431 m!2366941))

(declare-fun m!2367431 () Bool)

(assert (=> b!1929829 m!2367431))

(declare-fun m!2367433 () Bool)

(assert (=> b!1929830 m!2367433))

(assert (=> b!1929452 d!588431))

(declare-fun d!588463 () Bool)

(assert (=> d!588463 (= (inv!29026 (tag!4383 (rule!6142 separatorToken!354))) (= (mod (str.len (value!123739 (tag!4383 (rule!6142 separatorToken!354)))) 2) 0))))

(assert (=> b!1929431 d!588463))

(declare-fun d!588465 () Bool)

(declare-fun res!862859 () Bool)

(declare-fun e!1233530 () Bool)

(assert (=> d!588465 (=> (not res!862859) (not e!1233530))))

(assert (=> d!588465 (= res!862859 (semiInverseModEq!1566 (toChars!5431 (transformation!3935 (rule!6142 separatorToken!354))) (toValue!5572 (transformation!3935 (rule!6142 separatorToken!354)))))))

(assert (=> d!588465 (= (inv!29029 (transformation!3935 (rule!6142 separatorToken!354))) e!1233530)))

(declare-fun b!1929834 () Bool)

(assert (=> b!1929834 (= e!1233530 (equivClasses!1493 (toChars!5431 (transformation!3935 (rule!6142 separatorToken!354))) (toValue!5572 (transformation!3935 (rule!6142 separatorToken!354)))))))

(assert (= (and d!588465 res!862859) b!1929834))

(declare-fun m!2367435 () Bool)

(assert (=> d!588465 m!2367435))

(declare-fun m!2367437 () Bool)

(assert (=> b!1929834 m!2367437))

(assert (=> b!1929431 d!588465))

(declare-fun b!1929845 () Bool)

(declare-fun e!1233538 () Bool)

(declare-fun inv!17 (TokenValue!4071) Bool)

(assert (=> b!1929845 (= e!1233538 (inv!17 (value!123740 (h!27344 tokens!598))))))

(declare-fun b!1929846 () Bool)

(declare-fun e!1233537 () Bool)

(declare-fun inv!15 (TokenValue!4071) Bool)

(assert (=> b!1929846 (= e!1233537 (inv!15 (value!123740 (h!27344 tokens!598))))))

(declare-fun b!1929847 () Bool)

(declare-fun e!1233539 () Bool)

(assert (=> b!1929847 (= e!1233539 e!1233538)))

(declare-fun c!313922 () Bool)

(assert (=> b!1929847 (= c!313922 (is-IntegerValue!12214 (value!123740 (h!27344 tokens!598))))))

(declare-fun b!1929848 () Bool)

(declare-fun res!862862 () Bool)

(assert (=> b!1929848 (=> res!862862 e!1233537)))

(assert (=> b!1929848 (= res!862862 (not (is-IntegerValue!12215 (value!123740 (h!27344 tokens!598)))))))

(assert (=> b!1929848 (= e!1233538 e!1233537)))

(declare-fun b!1929849 () Bool)

(declare-fun inv!16 (TokenValue!4071) Bool)

(assert (=> b!1929849 (= e!1233539 (inv!16 (value!123740 (h!27344 tokens!598))))))

(declare-fun d!588467 () Bool)

(declare-fun c!313923 () Bool)

(assert (=> d!588467 (= c!313923 (is-IntegerValue!12213 (value!123740 (h!27344 tokens!598))))))

(assert (=> d!588467 (= (inv!21 (value!123740 (h!27344 tokens!598))) e!1233539)))

(assert (= (and d!588467 c!313923) b!1929849))

(assert (= (and d!588467 (not c!313923)) b!1929847))

(assert (= (and b!1929847 c!313922) b!1929845))

(assert (= (and b!1929847 (not c!313922)) b!1929848))

(assert (= (and b!1929848 (not res!862862)) b!1929846))

(declare-fun m!2367439 () Bool)

(assert (=> b!1929845 m!2367439))

(declare-fun m!2367441 () Bool)

(assert (=> b!1929846 m!2367441))

(declare-fun m!2367443 () Bool)

(assert (=> b!1929849 m!2367443))

(assert (=> b!1929442 d!588467))

(declare-fun d!588469 () Bool)

(declare-fun e!1233560 () Bool)

(assert (=> d!588469 e!1233560))

(declare-fun c!313930 () Bool)

(assert (=> d!588469 (= c!313930 (is-EmptyExpr!5360 (regex!3935 lt!739567)))))

(declare-fun lt!739755 () Bool)

(declare-fun e!1233557 () Bool)

(assert (=> d!588469 (= lt!739755 e!1233557)))

(declare-fun c!313932 () Bool)

(declare-fun isEmpty!13527 (List!22023) Bool)

(assert (=> d!588469 (= c!313932 (isEmpty!13527 lt!739568))))

(declare-fun validRegex!2136 (Regex!5360) Bool)

(assert (=> d!588469 (validRegex!2136 (regex!3935 lt!739567))))

(assert (=> d!588469 (= (matchR!2628 (regex!3935 lt!739567) lt!739568) lt!739755)))

(declare-fun bm!118706 () Bool)

(declare-fun call!118711 () Bool)

(assert (=> bm!118706 (= call!118711 (isEmpty!13527 lt!739568))))

(declare-fun b!1929879 () Bool)

(declare-fun e!1233558 () Bool)

(declare-fun e!1233559 () Bool)

(assert (=> b!1929879 (= e!1233558 e!1233559)))

(declare-fun res!862880 () Bool)

(assert (=> b!1929879 (=> res!862880 e!1233559)))

(assert (=> b!1929879 (= res!862880 call!118711)))

(declare-fun b!1929880 () Bool)

(assert (=> b!1929880 (= e!1233560 (= lt!739755 call!118711))))

(declare-fun b!1929881 () Bool)

(declare-fun e!1233555 () Bool)

(assert (=> b!1929881 (= e!1233555 e!1233558)))

(declare-fun res!862881 () Bool)

(assert (=> b!1929881 (=> (not res!862881) (not e!1233558))))

(assert (=> b!1929881 (= res!862881 (not lt!739755))))

(declare-fun b!1929882 () Bool)

(declare-fun res!862882 () Bool)

(assert (=> b!1929882 (=> res!862882 e!1233559)))

(declare-fun tail!2984 (List!22023) List!22023)

(assert (=> b!1929882 (= res!862882 (not (isEmpty!13527 (tail!2984 lt!739568))))))

(declare-fun b!1929883 () Bool)

(declare-fun e!1233556 () Bool)

(assert (=> b!1929883 (= e!1233556 (not lt!739755))))

(declare-fun b!1929884 () Bool)

(declare-fun derivativeStep!1369 (Regex!5360 C!10866) Regex!5360)

(declare-fun head!4498 (List!22023) C!10866)

(assert (=> b!1929884 (= e!1233557 (matchR!2628 (derivativeStep!1369 (regex!3935 lt!739567) (head!4498 lt!739568)) (tail!2984 lt!739568)))))

(declare-fun b!1929885 () Bool)

(assert (=> b!1929885 (= e!1233560 e!1233556)))

(declare-fun c!313931 () Bool)

(assert (=> b!1929885 (= c!313931 (is-EmptyLang!5360 (regex!3935 lt!739567)))))

(declare-fun b!1929886 () Bool)

(declare-fun nullable!1610 (Regex!5360) Bool)

(assert (=> b!1929886 (= e!1233557 (nullable!1610 (regex!3935 lt!739567)))))

(declare-fun b!1929887 () Bool)

(assert (=> b!1929887 (= e!1233559 (not (= (head!4498 lt!739568) (c!313854 (regex!3935 lt!739567)))))))

(declare-fun b!1929888 () Bool)

(declare-fun res!862886 () Bool)

(assert (=> b!1929888 (=> res!862886 e!1233555)))

(assert (=> b!1929888 (= res!862886 (not (is-ElementMatch!5360 (regex!3935 lt!739567))))))

(assert (=> b!1929888 (= e!1233556 e!1233555)))

(declare-fun b!1929889 () Bool)

(declare-fun res!862883 () Bool)

(declare-fun e!1233561 () Bool)

(assert (=> b!1929889 (=> (not res!862883) (not e!1233561))))

(assert (=> b!1929889 (= res!862883 (not call!118711))))

(declare-fun b!1929890 () Bool)

(assert (=> b!1929890 (= e!1233561 (= (head!4498 lt!739568) (c!313854 (regex!3935 lt!739567))))))

(declare-fun b!1929891 () Bool)

(declare-fun res!862885 () Bool)

(assert (=> b!1929891 (=> (not res!862885) (not e!1233561))))

(assert (=> b!1929891 (= res!862885 (isEmpty!13527 (tail!2984 lt!739568)))))

(declare-fun b!1929892 () Bool)

(declare-fun res!862884 () Bool)

(assert (=> b!1929892 (=> res!862884 e!1233555)))

(assert (=> b!1929892 (= res!862884 e!1233561)))

(declare-fun res!862887 () Bool)

(assert (=> b!1929892 (=> (not res!862887) (not e!1233561))))

(assert (=> b!1929892 (= res!862887 lt!739755)))

(assert (= (and d!588469 c!313932) b!1929886))

(assert (= (and d!588469 (not c!313932)) b!1929884))

(assert (= (and d!588469 c!313930) b!1929880))

(assert (= (and d!588469 (not c!313930)) b!1929885))

(assert (= (and b!1929885 c!313931) b!1929883))

(assert (= (and b!1929885 (not c!313931)) b!1929888))

(assert (= (and b!1929888 (not res!862886)) b!1929892))

(assert (= (and b!1929892 res!862887) b!1929889))

(assert (= (and b!1929889 res!862883) b!1929891))

(assert (= (and b!1929891 res!862885) b!1929890))

(assert (= (and b!1929892 (not res!862884)) b!1929881))

(assert (= (and b!1929881 res!862881) b!1929879))

(assert (= (and b!1929879 (not res!862880)) b!1929882))

(assert (= (and b!1929882 (not res!862882)) b!1929887))

(assert (= (or b!1929880 b!1929879 b!1929889) bm!118706))

(declare-fun m!2367453 () Bool)

(assert (=> b!1929891 m!2367453))

(assert (=> b!1929891 m!2367453))

(declare-fun m!2367455 () Bool)

(assert (=> b!1929891 m!2367455))

(declare-fun m!2367457 () Bool)

(assert (=> b!1929887 m!2367457))

(declare-fun m!2367459 () Bool)

(assert (=> b!1929886 m!2367459))

(assert (=> b!1929884 m!2367457))

(assert (=> b!1929884 m!2367457))

(declare-fun m!2367461 () Bool)

(assert (=> b!1929884 m!2367461))

(assert (=> b!1929884 m!2367453))

(assert (=> b!1929884 m!2367461))

(assert (=> b!1929884 m!2367453))

(declare-fun m!2367463 () Bool)

(assert (=> b!1929884 m!2367463))

(declare-fun m!2367465 () Bool)

(assert (=> bm!118706 m!2367465))

(assert (=> b!1929890 m!2367457))

(assert (=> b!1929882 m!2367453))

(assert (=> b!1929882 m!2367453))

(assert (=> b!1929882 m!2367455))

(assert (=> d!588469 m!2367465))

(declare-fun m!2367467 () Bool)

(assert (=> d!588469 m!2367467))

(assert (=> b!1929445 d!588469))

(declare-fun d!588477 () Bool)

(assert (=> d!588477 (= (get!6910 lt!739566) (v!26647 lt!739566))))

(assert (=> b!1929445 d!588477))

(declare-fun d!588479 () Bool)

(declare-fun res!862892 () Bool)

(declare-fun e!1233566 () Bool)

(assert (=> d!588479 (=> res!862892 e!1233566)))

(assert (=> d!588479 (= res!862892 (not (is-Cons!21942 rules!3198)))))

(assert (=> d!588479 (= (sepAndNonSepRulesDisjointChars!1033 rules!3198 rules!3198) e!1233566)))

(declare-fun b!1929897 () Bool)

(declare-fun e!1233567 () Bool)

(assert (=> b!1929897 (= e!1233566 e!1233567)))

(declare-fun res!862893 () Bool)

(assert (=> b!1929897 (=> (not res!862893) (not e!1233567))))

(declare-fun ruleDisjointCharsFromAllFromOtherType!451 (Rule!7670 List!22024) Bool)

(assert (=> b!1929897 (= res!862893 (ruleDisjointCharsFromAllFromOtherType!451 (h!27343 rules!3198) rules!3198))))

(declare-fun b!1929898 () Bool)

(assert (=> b!1929898 (= e!1233567 (sepAndNonSepRulesDisjointChars!1033 rules!3198 (t!179957 rules!3198)))))

(assert (= (and d!588479 (not res!862892)) b!1929897))

(assert (= (and b!1929897 res!862893) b!1929898))

(declare-fun m!2367469 () Bool)

(assert (=> b!1929897 m!2367469))

(declare-fun m!2367471 () Bool)

(assert (=> b!1929898 m!2367471))

(assert (=> b!1929435 d!588479))

(declare-fun b!1929899 () Bool)

(declare-fun e!1233569 () Bool)

(assert (=> b!1929899 (= e!1233569 (inv!17 (value!123740 separatorToken!354)))))

(declare-fun b!1929900 () Bool)

(declare-fun e!1233568 () Bool)

(assert (=> b!1929900 (= e!1233568 (inv!15 (value!123740 separatorToken!354)))))

(declare-fun b!1929901 () Bool)

(declare-fun e!1233570 () Bool)

(assert (=> b!1929901 (= e!1233570 e!1233569)))

(declare-fun c!313933 () Bool)

(assert (=> b!1929901 (= c!313933 (is-IntegerValue!12214 (value!123740 separatorToken!354)))))

(declare-fun b!1929902 () Bool)

(declare-fun res!862894 () Bool)

(assert (=> b!1929902 (=> res!862894 e!1233568)))

(assert (=> b!1929902 (= res!862894 (not (is-IntegerValue!12215 (value!123740 separatorToken!354))))))

(assert (=> b!1929902 (= e!1233569 e!1233568)))

(declare-fun b!1929903 () Bool)

(assert (=> b!1929903 (= e!1233570 (inv!16 (value!123740 separatorToken!354)))))

(declare-fun d!588481 () Bool)

(declare-fun c!313934 () Bool)

(assert (=> d!588481 (= c!313934 (is-IntegerValue!12213 (value!123740 separatorToken!354)))))

(assert (=> d!588481 (= (inv!21 (value!123740 separatorToken!354)) e!1233570)))

(assert (= (and d!588481 c!313934) b!1929903))

(assert (= (and d!588481 (not c!313934)) b!1929901))

(assert (= (and b!1929901 c!313933) b!1929899))

(assert (= (and b!1929901 (not c!313933)) b!1929902))

(assert (= (and b!1929902 (not res!862894)) b!1929900))

(declare-fun m!2367473 () Bool)

(assert (=> b!1929899 m!2367473))

(declare-fun m!2367475 () Bool)

(assert (=> b!1929900 m!2367475))

(declare-fun m!2367477 () Bool)

(assert (=> b!1929903 m!2367477))

(assert (=> b!1929446 d!588481))

(declare-fun d!588483 () Bool)

(declare-fun e!1233576 () Bool)

(assert (=> d!588483 e!1233576))

(declare-fun c!313935 () Bool)

(assert (=> d!588483 (= c!313935 (is-EmptyExpr!5360 (regex!3935 lt!739572)))))

(declare-fun lt!739756 () Bool)

(declare-fun e!1233573 () Bool)

(assert (=> d!588483 (= lt!739756 e!1233573)))

(declare-fun c!313937 () Bool)

(assert (=> d!588483 (= c!313937 (isEmpty!13527 lt!739564))))

(assert (=> d!588483 (validRegex!2136 (regex!3935 lt!739572))))

(assert (=> d!588483 (= (matchR!2628 (regex!3935 lt!739572) lt!739564) lt!739756)))

(declare-fun bm!118707 () Bool)

(declare-fun call!118712 () Bool)

(assert (=> bm!118707 (= call!118712 (isEmpty!13527 lt!739564))))

(declare-fun b!1929904 () Bool)

(declare-fun e!1233574 () Bool)

(declare-fun e!1233575 () Bool)

(assert (=> b!1929904 (= e!1233574 e!1233575)))

(declare-fun res!862895 () Bool)

(assert (=> b!1929904 (=> res!862895 e!1233575)))

(assert (=> b!1929904 (= res!862895 call!118712)))

(declare-fun b!1929905 () Bool)

(assert (=> b!1929905 (= e!1233576 (= lt!739756 call!118712))))

(declare-fun b!1929906 () Bool)

(declare-fun e!1233571 () Bool)

(assert (=> b!1929906 (= e!1233571 e!1233574)))

(declare-fun res!862896 () Bool)

(assert (=> b!1929906 (=> (not res!862896) (not e!1233574))))

(assert (=> b!1929906 (= res!862896 (not lt!739756))))

(declare-fun b!1929907 () Bool)

(declare-fun res!862897 () Bool)

(assert (=> b!1929907 (=> res!862897 e!1233575)))

(assert (=> b!1929907 (= res!862897 (not (isEmpty!13527 (tail!2984 lt!739564))))))

(declare-fun b!1929908 () Bool)

(declare-fun e!1233572 () Bool)

(assert (=> b!1929908 (= e!1233572 (not lt!739756))))

(declare-fun b!1929909 () Bool)

(assert (=> b!1929909 (= e!1233573 (matchR!2628 (derivativeStep!1369 (regex!3935 lt!739572) (head!4498 lt!739564)) (tail!2984 lt!739564)))))

(declare-fun b!1929910 () Bool)

(assert (=> b!1929910 (= e!1233576 e!1233572)))

(declare-fun c!313936 () Bool)

(assert (=> b!1929910 (= c!313936 (is-EmptyLang!5360 (regex!3935 lt!739572)))))

(declare-fun b!1929911 () Bool)

(assert (=> b!1929911 (= e!1233573 (nullable!1610 (regex!3935 lt!739572)))))

(declare-fun b!1929912 () Bool)

(assert (=> b!1929912 (= e!1233575 (not (= (head!4498 lt!739564) (c!313854 (regex!3935 lt!739572)))))))

(declare-fun b!1929913 () Bool)

(declare-fun res!862901 () Bool)

(assert (=> b!1929913 (=> res!862901 e!1233571)))

(assert (=> b!1929913 (= res!862901 (not (is-ElementMatch!5360 (regex!3935 lt!739572))))))

(assert (=> b!1929913 (= e!1233572 e!1233571)))

(declare-fun b!1929914 () Bool)

(declare-fun res!862898 () Bool)

(declare-fun e!1233577 () Bool)

(assert (=> b!1929914 (=> (not res!862898) (not e!1233577))))

(assert (=> b!1929914 (= res!862898 (not call!118712))))

(declare-fun b!1929915 () Bool)

(assert (=> b!1929915 (= e!1233577 (= (head!4498 lt!739564) (c!313854 (regex!3935 lt!739572))))))

(declare-fun b!1929916 () Bool)

(declare-fun res!862900 () Bool)

(assert (=> b!1929916 (=> (not res!862900) (not e!1233577))))

(assert (=> b!1929916 (= res!862900 (isEmpty!13527 (tail!2984 lt!739564)))))

(declare-fun b!1929917 () Bool)

(declare-fun res!862899 () Bool)

(assert (=> b!1929917 (=> res!862899 e!1233571)))

(assert (=> b!1929917 (= res!862899 e!1233577)))

(declare-fun res!862902 () Bool)

(assert (=> b!1929917 (=> (not res!862902) (not e!1233577))))

(assert (=> b!1929917 (= res!862902 lt!739756)))

(assert (= (and d!588483 c!313937) b!1929911))

(assert (= (and d!588483 (not c!313937)) b!1929909))

(assert (= (and d!588483 c!313935) b!1929905))

(assert (= (and d!588483 (not c!313935)) b!1929910))

(assert (= (and b!1929910 c!313936) b!1929908))

(assert (= (and b!1929910 (not c!313936)) b!1929913))

(assert (= (and b!1929913 (not res!862901)) b!1929917))

(assert (= (and b!1929917 res!862902) b!1929914))

(assert (= (and b!1929914 res!862898) b!1929916))

(assert (= (and b!1929916 res!862900) b!1929915))

(assert (= (and b!1929917 (not res!862899)) b!1929906))

(assert (= (and b!1929906 res!862896) b!1929904))

(assert (= (and b!1929904 (not res!862895)) b!1929907))

(assert (= (and b!1929907 (not res!862897)) b!1929912))

(assert (= (or b!1929905 b!1929904 b!1929914) bm!118707))

(declare-fun m!2367479 () Bool)

(assert (=> b!1929916 m!2367479))

(assert (=> b!1929916 m!2367479))

(declare-fun m!2367481 () Bool)

(assert (=> b!1929916 m!2367481))

(declare-fun m!2367483 () Bool)

(assert (=> b!1929912 m!2367483))

(declare-fun m!2367485 () Bool)

(assert (=> b!1929911 m!2367485))

(assert (=> b!1929909 m!2367483))

(assert (=> b!1929909 m!2367483))

(declare-fun m!2367487 () Bool)

(assert (=> b!1929909 m!2367487))

(assert (=> b!1929909 m!2367479))

(assert (=> b!1929909 m!2367487))

(assert (=> b!1929909 m!2367479))

(declare-fun m!2367489 () Bool)

(assert (=> b!1929909 m!2367489))

(declare-fun m!2367491 () Bool)

(assert (=> bm!118707 m!2367491))

(assert (=> b!1929915 m!2367483))

(assert (=> b!1929907 m!2367479))

(assert (=> b!1929907 m!2367479))

(assert (=> b!1929907 m!2367481))

(assert (=> d!588483 m!2367491))

(declare-fun m!2367493 () Bool)

(assert (=> d!588483 m!2367493))

(assert (=> b!1929433 d!588483))

(declare-fun d!588485 () Bool)

(assert (=> d!588485 (= (get!6910 lt!739565) (v!26647 lt!739565))))

(assert (=> b!1929433 d!588485))

(declare-fun d!588487 () Bool)

(declare-fun res!862905 () Bool)

(declare-fun e!1233580 () Bool)

(assert (=> d!588487 (=> (not res!862905) (not e!1233580))))

(declare-fun rulesValid!1454 (LexerInterface!3548 List!22024) Bool)

(assert (=> d!588487 (= res!862905 (rulesValid!1454 thiss!23328 rules!3198))))

(assert (=> d!588487 (= (rulesInvariant!3155 thiss!23328 rules!3198) e!1233580)))

(declare-fun b!1929920 () Bool)

(declare-datatypes ((List!22031 0))(
  ( (Nil!21949) (Cons!21949 (h!27350 String!25475) (t!180076 List!22031)) )
))
(declare-fun noDuplicateTag!1452 (LexerInterface!3548 List!22024 List!22031) Bool)

(assert (=> b!1929920 (= e!1233580 (noDuplicateTag!1452 thiss!23328 rules!3198 Nil!21949))))

(assert (= (and d!588487 res!862905) b!1929920))

(declare-fun m!2367495 () Bool)

(assert (=> d!588487 m!2367495))

(declare-fun m!2367497 () Bool)

(assert (=> b!1929920 m!2367497))

(assert (=> b!1929434 d!588487))

(declare-fun d!588489 () Bool)

(declare-fun lt!739770 () Bool)

(declare-fun e!1233600 () Bool)

(assert (=> d!588489 (= lt!739770 e!1233600)))

(declare-fun res!862924 () Bool)

(assert (=> d!588489 (=> (not res!862924) (not e!1233600))))

(declare-datatypes ((tuple2!20568 0))(
  ( (tuple2!20569 (_1!11753 BalanceConc!14466) (_2!11753 BalanceConc!14464)) )
))
(declare-fun lex!1574 (LexerInterface!3548 List!22024 BalanceConc!14464) tuple2!20568)

(assert (=> d!588489 (= res!862924 (= (list!8882 (_1!11753 (lex!1574 thiss!23328 rules!3198 (print!1518 thiss!23328 (singletonSeq!1919 separatorToken!354))))) (list!8882 (singletonSeq!1919 separatorToken!354))))))

(declare-fun e!1233601 () Bool)

(assert (=> d!588489 (= lt!739770 e!1233601)))

(declare-fun res!862925 () Bool)

(assert (=> d!588489 (=> (not res!862925) (not e!1233601))))

(declare-fun lt!739771 () tuple2!20568)

(assert (=> d!588489 (= res!862925 (= (size!17123 (_1!11753 lt!739771)) 1))))

(assert (=> d!588489 (= lt!739771 (lex!1574 thiss!23328 rules!3198 (print!1518 thiss!23328 (singletonSeq!1919 separatorToken!354))))))

(assert (=> d!588489 (not (isEmpty!13523 rules!3198))))

(assert (=> d!588489 (= (rulesProduceIndividualToken!1720 thiss!23328 rules!3198 separatorToken!354) lt!739770)))

(declare-fun b!1929945 () Bool)

(declare-fun res!862923 () Bool)

(assert (=> b!1929945 (=> (not res!862923) (not e!1233601))))

(assert (=> b!1929945 (= res!862923 (= (apply!5700 (_1!11753 lt!739771) 0) separatorToken!354))))

(declare-fun b!1929946 () Bool)

(declare-fun isEmpty!13529 (BalanceConc!14464) Bool)

(assert (=> b!1929946 (= e!1233601 (isEmpty!13529 (_2!11753 lt!739771)))))

(declare-fun b!1929947 () Bool)

(assert (=> b!1929947 (= e!1233600 (isEmpty!13529 (_2!11753 (lex!1574 thiss!23328 rules!3198 (print!1518 thiss!23328 (singletonSeq!1919 separatorToken!354))))))))

(assert (= (and d!588489 res!862925) b!1929945))

(assert (= (and b!1929945 res!862923) b!1929946))

(assert (= (and d!588489 res!862924) b!1929947))

(declare-fun m!2367533 () Bool)

(assert (=> d!588489 m!2367533))

(declare-fun m!2367535 () Bool)

(assert (=> d!588489 m!2367535))

(declare-fun m!2367537 () Bool)

(assert (=> d!588489 m!2367537))

(declare-fun m!2367539 () Bool)

(assert (=> d!588489 m!2367539))

(declare-fun m!2367541 () Bool)

(assert (=> d!588489 m!2367541))

(assert (=> d!588489 m!2367535))

(declare-fun m!2367543 () Bool)

(assert (=> d!588489 m!2367543))

(assert (=> d!588489 m!2366941))

(assert (=> d!588489 m!2367535))

(assert (=> d!588489 m!2367539))

(declare-fun m!2367545 () Bool)

(assert (=> b!1929945 m!2367545))

(declare-fun m!2367547 () Bool)

(assert (=> b!1929946 m!2367547))

(assert (=> b!1929947 m!2367535))

(assert (=> b!1929947 m!2367535))

(assert (=> b!1929947 m!2367539))

(assert (=> b!1929947 m!2367539))

(assert (=> b!1929947 m!2367541))

(declare-fun m!2367549 () Bool)

(assert (=> b!1929947 m!2367549))

(assert (=> b!1929448 d!588489))

(declare-fun d!588499 () Bool)

(declare-fun res!862936 () Bool)

(declare-fun e!1233610 () Bool)

(assert (=> d!588499 (=> (not res!862936) (not e!1233610))))

(assert (=> d!588499 (= res!862936 (not (isEmpty!13527 (originalCharacters!4742 separatorToken!354))))))

(assert (=> d!588499 (= (inv!29030 separatorToken!354) e!1233610)))

(declare-fun b!1929964 () Bool)

(declare-fun res!862937 () Bool)

(assert (=> b!1929964 (=> (not res!862937) (not e!1233610))))

(assert (=> b!1929964 (= res!862937 (= (originalCharacters!4742 separatorToken!354) (list!8880 (dynLambda!10642 (toChars!5431 (transformation!3935 (rule!6142 separatorToken!354))) (value!123740 separatorToken!354)))))))

(declare-fun b!1929965 () Bool)

(assert (=> b!1929965 (= e!1233610 (= (size!17121 separatorToken!354) (size!17124 (originalCharacters!4742 separatorToken!354))))))

(assert (= (and d!588499 res!862936) b!1929964))

(assert (= (and b!1929964 res!862937) b!1929965))

(declare-fun b_lambda!64007 () Bool)

(assert (=> (not b_lambda!64007) (not b!1929964)))

(assert (=> b!1929964 t!179979))

(declare-fun b_and!151585 () Bool)

(assert (= b_and!151561 (and (=> t!179979 result!142930) b_and!151585)))

(assert (=> b!1929964 t!179981))

(declare-fun b_and!151587 () Bool)

(assert (= b_and!151563 (and (=> t!179981 result!142934) b_and!151587)))

(assert (=> b!1929964 t!179983))

(declare-fun b_and!151589 () Bool)

(assert (= b_and!151565 (and (=> t!179983 result!142936) b_and!151589)))

(declare-fun m!2367565 () Bool)

(assert (=> d!588499 m!2367565))

(assert (=> b!1929964 m!2367215))

(assert (=> b!1929964 m!2367215))

(declare-fun m!2367567 () Bool)

(assert (=> b!1929964 m!2367567))

(declare-fun m!2367569 () Bool)

(assert (=> b!1929965 m!2367569))

(assert (=> start!193514 d!588499))

(declare-fun d!588503 () Bool)

(declare-fun res!862938 () Bool)

(declare-fun e!1233611 () Bool)

(assert (=> d!588503 (=> (not res!862938) (not e!1233611))))

(assert (=> d!588503 (= res!862938 (not (isEmpty!13527 (originalCharacters!4742 (h!27344 tokens!598)))))))

(assert (=> d!588503 (= (inv!29030 (h!27344 tokens!598)) e!1233611)))

(declare-fun b!1929966 () Bool)

(declare-fun res!862939 () Bool)

(assert (=> b!1929966 (=> (not res!862939) (not e!1233611))))

(assert (=> b!1929966 (= res!862939 (= (originalCharacters!4742 (h!27344 tokens!598)) (list!8880 (dynLambda!10642 (toChars!5431 (transformation!3935 (rule!6142 (h!27344 tokens!598)))) (value!123740 (h!27344 tokens!598))))))))

(declare-fun b!1929967 () Bool)

(assert (=> b!1929967 (= e!1233611 (= (size!17121 (h!27344 tokens!598)) (size!17124 (originalCharacters!4742 (h!27344 tokens!598)))))))

(assert (= (and d!588503 res!862938) b!1929966))

(assert (= (and b!1929966 res!862939) b!1929967))

(declare-fun b_lambda!64009 () Bool)

(assert (=> (not b_lambda!64009) (not b!1929966)))

(assert (=> b!1929966 t!179993))

(declare-fun b_and!151591 () Bool)

(assert (= b_and!151585 (and (=> t!179993 result!142944) b_and!151591)))

(assert (=> b!1929966 t!179995))

(declare-fun b_and!151593 () Bool)

(assert (= b_and!151587 (and (=> t!179995 result!142946) b_and!151593)))

(assert (=> b!1929966 t!179997))

(declare-fun b_and!151595 () Bool)

(assert (= b_and!151589 (and (=> t!179997 result!142948) b_and!151595)))

(declare-fun m!2367571 () Bool)

(assert (=> d!588503 m!2367571))

(assert (=> b!1929966 m!2367305))

(assert (=> b!1929966 m!2367305))

(declare-fun m!2367573 () Bool)

(assert (=> b!1929966 m!2367573))

(declare-fun m!2367575 () Bool)

(assert (=> b!1929967 m!2367575))

(assert (=> b!1929447 d!588503))

(declare-fun e!1233614 () Bool)

(assert (=> b!1929451 (= tp!550841 e!1233614)))

(declare-fun b!1929979 () Bool)

(declare-fun tp!550912 () Bool)

(declare-fun tp!550909 () Bool)

(assert (=> b!1929979 (= e!1233614 (and tp!550912 tp!550909))))

(declare-fun b!1929980 () Bool)

(declare-fun tp!550910 () Bool)

(assert (=> b!1929980 (= e!1233614 tp!550910)))

(declare-fun b!1929981 () Bool)

(declare-fun tp!550911 () Bool)

(declare-fun tp!550913 () Bool)

(assert (=> b!1929981 (= e!1233614 (and tp!550911 tp!550913))))

(declare-fun b!1929978 () Bool)

(declare-fun tp_is_empty!9139 () Bool)

(assert (=> b!1929978 (= e!1233614 tp_is_empty!9139)))

(assert (= (and b!1929451 (is-ElementMatch!5360 (regex!3935 (rule!6142 (h!27344 tokens!598))))) b!1929978))

(assert (= (and b!1929451 (is-Concat!9432 (regex!3935 (rule!6142 (h!27344 tokens!598))))) b!1929979))

(assert (= (and b!1929451 (is-Star!5360 (regex!3935 (rule!6142 (h!27344 tokens!598))))) b!1929980))

(assert (= (and b!1929451 (is-Union!5360 (regex!3935 (rule!6142 (h!27344 tokens!598))))) b!1929981))

(declare-fun b!1929992 () Bool)

(declare-fun b_free!55285 () Bool)

(declare-fun b_next!55989 () Bool)

(assert (=> b!1929992 (= b_free!55285 (not b_next!55989))))

(declare-fun tb!118369 () Bool)

(declare-fun t!180022 () Bool)

(assert (=> (and b!1929992 (= (toValue!5572 (transformation!3935 (h!27343 (t!179957 rules!3198)))) (toValue!5572 (transformation!3935 (rule!6142 (h!27344 tokens!598))))) t!180022) tb!118369))

(declare-fun result!142976 () Bool)

(assert (= result!142976 result!142916))

(assert (=> d!588393 t!180022))

(declare-fun tb!118371 () Bool)

(declare-fun t!180024 () Bool)

(assert (=> (and b!1929992 (= (toValue!5572 (transformation!3935 (h!27343 (t!179957 rules!3198)))) (toValue!5572 (transformation!3935 (rule!6142 (h!27344 tokens!598))))) t!180024) tb!118371))

(declare-fun result!142978 () Bool)

(assert (= result!142978 result!142924))

(assert (=> d!588393 t!180024))

(assert (=> d!588421 t!180022))

(declare-fun b_and!151597 () Bool)

(declare-fun tp!550923 () Bool)

(assert (=> b!1929992 (= tp!550923 (and (=> t!180022 result!142976) (=> t!180024 result!142978) b_and!151597))))

(declare-fun b_free!55287 () Bool)

(declare-fun b_next!55991 () Bool)

(assert (=> b!1929992 (= b_free!55287 (not b_next!55991))))

(declare-fun tb!118373 () Bool)

(declare-fun t!180026 () Bool)

(assert (=> (and b!1929992 (= (toChars!5431 (transformation!3935 (h!27343 (t!179957 rules!3198)))) (toChars!5431 (transformation!3935 (rule!6142 (h!27344 tokens!598))))) t!180026) tb!118373))

(declare-fun result!142980 () Bool)

(assert (= result!142980 result!142938))

(assert (=> d!588421 t!180026))

(declare-fun t!180028 () Bool)

(declare-fun tb!118375 () Bool)

(assert (=> (and b!1929992 (= (toChars!5431 (transformation!3935 (h!27343 (t!179957 rules!3198)))) (toChars!5431 (transformation!3935 (rule!6142 (h!27344 tokens!598))))) t!180028) tb!118375))

(declare-fun result!142982 () Bool)

(assert (= result!142982 result!142944))

(assert (=> b!1929966 t!180028))

(assert (=> d!588423 t!180028))

(declare-fun t!180030 () Bool)

(declare-fun tb!118377 () Bool)

(assert (=> (and b!1929992 (= (toChars!5431 (transformation!3935 (h!27343 (t!179957 rules!3198)))) (toChars!5431 (transformation!3935 (rule!6142 separatorToken!354)))) t!180030) tb!118377))

(declare-fun result!142984 () Bool)

(assert (= result!142984 result!142930))

(assert (=> b!1929964 t!180030))

(assert (=> d!588411 t!180030))

(declare-fun tp!550925 () Bool)

(declare-fun b_and!151599 () Bool)

(assert (=> b!1929992 (= tp!550925 (and (=> t!180030 result!142984) (=> t!180026 result!142980) (=> t!180028 result!142982) b_and!151599))))

(declare-fun e!1233624 () Bool)

(assert (=> b!1929992 (= e!1233624 (and tp!550923 tp!550925))))

(declare-fun e!1233626 () Bool)

(declare-fun b!1929991 () Bool)

(declare-fun tp!550922 () Bool)

(assert (=> b!1929991 (= e!1233626 (and tp!550922 (inv!29026 (tag!4383 (h!27343 (t!179957 rules!3198)))) (inv!29029 (transformation!3935 (h!27343 (t!179957 rules!3198)))) e!1233624))))

(declare-fun b!1929990 () Bool)

(declare-fun e!1233623 () Bool)

(declare-fun tp!550924 () Bool)

(assert (=> b!1929990 (= e!1233623 (and e!1233626 tp!550924))))

(assert (=> b!1929453 (= tp!550842 e!1233623)))

(assert (= b!1929991 b!1929992))

(assert (= b!1929990 b!1929991))

(assert (= (and b!1929453 (is-Cons!21942 (t!179957 rules!3198))) b!1929990))

(declare-fun m!2367577 () Bool)

(assert (=> b!1929991 m!2367577))

(declare-fun m!2367579 () Bool)

(assert (=> b!1929991 m!2367579))

(declare-fun e!1233627 () Bool)

(assert (=> b!1929432 (= tp!550849 e!1233627)))

(declare-fun b!1929994 () Bool)

(declare-fun tp!550929 () Bool)

(declare-fun tp!550926 () Bool)

(assert (=> b!1929994 (= e!1233627 (and tp!550929 tp!550926))))

(declare-fun b!1929995 () Bool)

(declare-fun tp!550927 () Bool)

(assert (=> b!1929995 (= e!1233627 tp!550927)))

(declare-fun b!1929996 () Bool)

(declare-fun tp!550928 () Bool)

(declare-fun tp!550930 () Bool)

(assert (=> b!1929996 (= e!1233627 (and tp!550928 tp!550930))))

(declare-fun b!1929993 () Bool)

(assert (=> b!1929993 (= e!1233627 tp_is_empty!9139)))

(assert (= (and b!1929432 (is-ElementMatch!5360 (regex!3935 (h!27343 rules!3198)))) b!1929993))

(assert (= (and b!1929432 (is-Concat!9432 (regex!3935 (h!27343 rules!3198)))) b!1929994))

(assert (= (and b!1929432 (is-Star!5360 (regex!3935 (h!27343 rules!3198)))) b!1929995))

(assert (= (and b!1929432 (is-Union!5360 (regex!3935 (h!27343 rules!3198)))) b!1929996))

(declare-fun e!1233628 () Bool)

(assert (=> b!1929431 (= tp!550848 e!1233628)))

(declare-fun b!1929998 () Bool)

(declare-fun tp!550934 () Bool)

(declare-fun tp!550931 () Bool)

(assert (=> b!1929998 (= e!1233628 (and tp!550934 tp!550931))))

(declare-fun b!1929999 () Bool)

(declare-fun tp!550932 () Bool)

(assert (=> b!1929999 (= e!1233628 tp!550932)))

(declare-fun b!1930000 () Bool)

(declare-fun tp!550933 () Bool)

(declare-fun tp!550935 () Bool)

(assert (=> b!1930000 (= e!1233628 (and tp!550933 tp!550935))))

(declare-fun b!1929997 () Bool)

(assert (=> b!1929997 (= e!1233628 tp_is_empty!9139)))

(assert (= (and b!1929431 (is-ElementMatch!5360 (regex!3935 (rule!6142 separatorToken!354)))) b!1929997))

(assert (= (and b!1929431 (is-Concat!9432 (regex!3935 (rule!6142 separatorToken!354)))) b!1929998))

(assert (= (and b!1929431 (is-Star!5360 (regex!3935 (rule!6142 separatorToken!354)))) b!1929999))

(assert (= (and b!1929431 (is-Union!5360 (regex!3935 (rule!6142 separatorToken!354)))) b!1930000))

(declare-fun b!1930005 () Bool)

(declare-fun e!1233631 () Bool)

(declare-fun tp!550938 () Bool)

(assert (=> b!1930005 (= e!1233631 (and tp_is_empty!9139 tp!550938))))

(assert (=> b!1929442 (= tp!550843 e!1233631)))

(assert (= (and b!1929442 (is-Cons!21941 (originalCharacters!4742 (h!27344 tokens!598)))) b!1930005))

(declare-fun b!1930006 () Bool)

(declare-fun e!1233632 () Bool)

(declare-fun tp!550939 () Bool)

(assert (=> b!1930006 (= e!1233632 (and tp_is_empty!9139 tp!550939))))

(assert (=> b!1929446 (= tp!550850 e!1233632)))

(assert (= (and b!1929446 (is-Cons!21941 (originalCharacters!4742 separatorToken!354))) b!1930006))

(declare-fun b!1930020 () Bool)

(declare-fun b_free!55289 () Bool)

(declare-fun b_next!55993 () Bool)

(assert (=> b!1930020 (= b_free!55289 (not b_next!55993))))

(declare-fun t!180032 () Bool)

(declare-fun tb!118379 () Bool)

(assert (=> (and b!1930020 (= (toValue!5572 (transformation!3935 (rule!6142 (h!27344 (t!179958 tokens!598))))) (toValue!5572 (transformation!3935 (rule!6142 (h!27344 tokens!598))))) t!180032) tb!118379))

(declare-fun result!142990 () Bool)

(assert (= result!142990 result!142916))

(assert (=> d!588393 t!180032))

(declare-fun t!180034 () Bool)

(declare-fun tb!118381 () Bool)

(assert (=> (and b!1930020 (= (toValue!5572 (transformation!3935 (rule!6142 (h!27344 (t!179958 tokens!598))))) (toValue!5572 (transformation!3935 (rule!6142 (h!27344 tokens!598))))) t!180034) tb!118381))

(declare-fun result!142992 () Bool)

(assert (= result!142992 result!142924))

(assert (=> d!588393 t!180034))

(assert (=> d!588421 t!180032))

(declare-fun tp!550953 () Bool)

(declare-fun b_and!151601 () Bool)

(assert (=> b!1930020 (= tp!550953 (and (=> t!180032 result!142990) (=> t!180034 result!142992) b_and!151601))))

(declare-fun b_free!55291 () Bool)

(declare-fun b_next!55995 () Bool)

(assert (=> b!1930020 (= b_free!55291 (not b_next!55995))))

(declare-fun t!180036 () Bool)

(declare-fun tb!118383 () Bool)

(assert (=> (and b!1930020 (= (toChars!5431 (transformation!3935 (rule!6142 (h!27344 (t!179958 tokens!598))))) (toChars!5431 (transformation!3935 (rule!6142 (h!27344 tokens!598))))) t!180036) tb!118383))

(declare-fun result!142994 () Bool)

(assert (= result!142994 result!142938))

(assert (=> d!588421 t!180036))

(declare-fun t!180038 () Bool)

(declare-fun tb!118385 () Bool)

(assert (=> (and b!1930020 (= (toChars!5431 (transformation!3935 (rule!6142 (h!27344 (t!179958 tokens!598))))) (toChars!5431 (transformation!3935 (rule!6142 (h!27344 tokens!598))))) t!180038) tb!118385))

(declare-fun result!142996 () Bool)

(assert (= result!142996 result!142944))

(assert (=> b!1929966 t!180038))

(assert (=> d!588423 t!180038))

(declare-fun t!180040 () Bool)

(declare-fun tb!118387 () Bool)

(assert (=> (and b!1930020 (= (toChars!5431 (transformation!3935 (rule!6142 (h!27344 (t!179958 tokens!598))))) (toChars!5431 (transformation!3935 (rule!6142 separatorToken!354)))) t!180040) tb!118387))

(declare-fun result!142998 () Bool)

(assert (= result!142998 result!142930))

(assert (=> b!1929964 t!180040))

(assert (=> d!588411 t!180040))

(declare-fun b_and!151603 () Bool)

(declare-fun tp!550951 () Bool)

(assert (=> b!1930020 (= tp!550951 (and (=> t!180036 result!142994) (=> t!180040 result!142998) (=> t!180038 result!142996) b_and!151603))))

(declare-fun e!1233646 () Bool)

(declare-fun b!1930018 () Bool)

(declare-fun e!1233647 () Bool)

(declare-fun tp!550954 () Bool)

(assert (=> b!1930018 (= e!1233647 (and (inv!21 (value!123740 (h!27344 (t!179958 tokens!598)))) e!1233646 tp!550954))))

(declare-fun e!1233649 () Bool)

(declare-fun tp!550952 () Bool)

(declare-fun b!1930019 () Bool)

(assert (=> b!1930019 (= e!1233646 (and tp!550952 (inv!29026 (tag!4383 (rule!6142 (h!27344 (t!179958 tokens!598))))) (inv!29029 (transformation!3935 (rule!6142 (h!27344 (t!179958 tokens!598))))) e!1233649))))

(declare-fun tp!550950 () Bool)

(declare-fun b!1930017 () Bool)

(declare-fun e!1233645 () Bool)

(assert (=> b!1930017 (= e!1233645 (and (inv!29030 (h!27344 (t!179958 tokens!598))) e!1233647 tp!550950))))

(assert (=> b!1929447 (= tp!550840 e!1233645)))

(assert (=> b!1930020 (= e!1233649 (and tp!550953 tp!550951))))

(assert (= b!1930019 b!1930020))

(assert (= b!1930018 b!1930019))

(assert (= b!1930017 b!1930018))

(assert (= (and b!1929447 (is-Cons!21943 (t!179958 tokens!598))) b!1930017))

(declare-fun m!2367581 () Bool)

(assert (=> b!1930018 m!2367581))

(declare-fun m!2367583 () Bool)

(assert (=> b!1930019 m!2367583))

(declare-fun m!2367585 () Bool)

(assert (=> b!1930019 m!2367585))

(declare-fun m!2367587 () Bool)

(assert (=> b!1930017 m!2367587))

(declare-fun b_lambda!64011 () Bool)

(assert (= b_lambda!63997 (or (and b!1929992 b_free!55287 (= (toChars!5431 (transformation!3935 (h!27343 (t!179957 rules!3198)))) (toChars!5431 (transformation!3935 (rule!6142 (h!27344 tokens!598)))))) (and b!1929449 b_free!55271 (= (toChars!5431 (transformation!3935 (rule!6142 separatorToken!354))) (toChars!5431 (transformation!3935 (rule!6142 (h!27344 tokens!598)))))) (and b!1930020 b_free!55291 (= (toChars!5431 (transformation!3935 (rule!6142 (h!27344 (t!179958 tokens!598))))) (toChars!5431 (transformation!3935 (rule!6142 (h!27344 tokens!598)))))) (and b!1929438 b_free!55263 (= (toChars!5431 (transformation!3935 (h!27343 rules!3198))) (toChars!5431 (transformation!3935 (rule!6142 (h!27344 tokens!598)))))) (and b!1929437 b_free!55267) b_lambda!64011)))

(declare-fun b_lambda!64013 () Bool)

(assert (= b_lambda!64007 (or (and b!1930020 b_free!55291 (= (toChars!5431 (transformation!3935 (rule!6142 (h!27344 (t!179958 tokens!598))))) (toChars!5431 (transformation!3935 (rule!6142 separatorToken!354))))) (and b!1929992 b_free!55287 (= (toChars!5431 (transformation!3935 (h!27343 (t!179957 rules!3198)))) (toChars!5431 (transformation!3935 (rule!6142 separatorToken!354))))) (and b!1929438 b_free!55263 (= (toChars!5431 (transformation!3935 (h!27343 rules!3198))) (toChars!5431 (transformation!3935 (rule!6142 separatorToken!354))))) (and b!1929437 b_free!55267 (= (toChars!5431 (transformation!3935 (rule!6142 (h!27344 tokens!598)))) (toChars!5431 (transformation!3935 (rule!6142 separatorToken!354))))) (and b!1929449 b_free!55271) b_lambda!64013)))

(declare-fun b_lambda!64015 () Bool)

(assert (= b_lambda!63989 (or (and b!1929992 b_free!55285 (= (toValue!5572 (transformation!3935 (h!27343 (t!179957 rules!3198)))) (toValue!5572 (transformation!3935 (rule!6142 (h!27344 tokens!598)))))) (and b!1929449 b_free!55269 (= (toValue!5572 (transformation!3935 (rule!6142 separatorToken!354))) (toValue!5572 (transformation!3935 (rule!6142 (h!27344 tokens!598)))))) (and b!1929437 b_free!55265) (and b!1929438 b_free!55261 (= (toValue!5572 (transformation!3935 (h!27343 rules!3198))) (toValue!5572 (transformation!3935 (rule!6142 (h!27344 tokens!598)))))) (and b!1930020 b_free!55289 (= (toValue!5572 (transformation!3935 (rule!6142 (h!27344 (t!179958 tokens!598))))) (toValue!5572 (transformation!3935 (rule!6142 (h!27344 tokens!598)))))) b_lambda!64015)))

(declare-fun b_lambda!64017 () Bool)

(assert (= b_lambda!63991 (or (and b!1930020 b_free!55291 (= (toChars!5431 (transformation!3935 (rule!6142 (h!27344 (t!179958 tokens!598))))) (toChars!5431 (transformation!3935 (rule!6142 separatorToken!354))))) (and b!1929992 b_free!55287 (= (toChars!5431 (transformation!3935 (h!27343 (t!179957 rules!3198)))) (toChars!5431 (transformation!3935 (rule!6142 separatorToken!354))))) (and b!1929438 b_free!55263 (= (toChars!5431 (transformation!3935 (h!27343 rules!3198))) (toChars!5431 (transformation!3935 (rule!6142 separatorToken!354))))) (and b!1929437 b_free!55267 (= (toChars!5431 (transformation!3935 (rule!6142 (h!27344 tokens!598)))) (toChars!5431 (transformation!3935 (rule!6142 separatorToken!354))))) (and b!1929449 b_free!55271) b_lambda!64017)))

(declare-fun b_lambda!64019 () Bool)

(assert (= b_lambda!63993 (or (and b!1929992 b_free!55287 (= (toChars!5431 (transformation!3935 (h!27343 (t!179957 rules!3198)))) (toChars!5431 (transformation!3935 (rule!6142 (h!27344 tokens!598)))))) (and b!1929449 b_free!55271 (= (toChars!5431 (transformation!3935 (rule!6142 separatorToken!354))) (toChars!5431 (transformation!3935 (rule!6142 (h!27344 tokens!598)))))) (and b!1930020 b_free!55291 (= (toChars!5431 (transformation!3935 (rule!6142 (h!27344 (t!179958 tokens!598))))) (toChars!5431 (transformation!3935 (rule!6142 (h!27344 tokens!598)))))) (and b!1929438 b_free!55263 (= (toChars!5431 (transformation!3935 (h!27343 rules!3198))) (toChars!5431 (transformation!3935 (rule!6142 (h!27344 tokens!598)))))) (and b!1929437 b_free!55267) b_lambda!64019)))

(declare-fun b_lambda!64021 () Bool)

(assert (= b_lambda!63985 (or b!1929454 b_lambda!64021)))

(declare-fun bs!414911 () Bool)

(declare-fun d!588505 () Bool)

(assert (= bs!414911 (and d!588505 b!1929454)))

(assert (=> bs!414911 (= (dynLambda!10637 lambda!75236 (h!27344 tokens!598)) (not (isSeparator!3935 (rule!6142 (h!27344 tokens!598)))))))

(assert (=> b!1929557 d!588505))

(declare-fun b_lambda!64023 () Bool)

(assert (= b_lambda!63995 (or (and b!1929992 b_free!55285 (= (toValue!5572 (transformation!3935 (h!27343 (t!179957 rules!3198)))) (toValue!5572 (transformation!3935 (rule!6142 (h!27344 tokens!598)))))) (and b!1929449 b_free!55269 (= (toValue!5572 (transformation!3935 (rule!6142 separatorToken!354))) (toValue!5572 (transformation!3935 (rule!6142 (h!27344 tokens!598)))))) (and b!1929437 b_free!55265) (and b!1929438 b_free!55261 (= (toValue!5572 (transformation!3935 (h!27343 rules!3198))) (toValue!5572 (transformation!3935 (rule!6142 (h!27344 tokens!598)))))) (and b!1930020 b_free!55289 (= (toValue!5572 (transformation!3935 (rule!6142 (h!27344 (t!179958 tokens!598))))) (toValue!5572 (transformation!3935 (rule!6142 (h!27344 tokens!598)))))) b_lambda!64023)))

(declare-fun b_lambda!64025 () Bool)

(assert (= b_lambda!64009 (or (and b!1929992 b_free!55287 (= (toChars!5431 (transformation!3935 (h!27343 (t!179957 rules!3198)))) (toChars!5431 (transformation!3935 (rule!6142 (h!27344 tokens!598)))))) (and b!1929449 b_free!55271 (= (toChars!5431 (transformation!3935 (rule!6142 separatorToken!354))) (toChars!5431 (transformation!3935 (rule!6142 (h!27344 tokens!598)))))) (and b!1930020 b_free!55291 (= (toChars!5431 (transformation!3935 (rule!6142 (h!27344 (t!179958 tokens!598))))) (toChars!5431 (transformation!3935 (rule!6142 (h!27344 tokens!598)))))) (and b!1929438 b_free!55263 (= (toChars!5431 (transformation!3935 (h!27343 rules!3198))) (toChars!5431 (transformation!3935 (rule!6142 (h!27344 tokens!598)))))) (and b!1929437 b_free!55267) b_lambda!64025)))

(declare-fun b_lambda!64027 () Bool)

(assert (= b_lambda!63987 (or (and b!1929992 b_free!55285 (= (toValue!5572 (transformation!3935 (h!27343 (t!179957 rules!3198)))) (toValue!5572 (transformation!3935 (rule!6142 (h!27344 tokens!598)))))) (and b!1929449 b_free!55269 (= (toValue!5572 (transformation!3935 (rule!6142 separatorToken!354))) (toValue!5572 (transformation!3935 (rule!6142 (h!27344 tokens!598)))))) (and b!1929437 b_free!55265) (and b!1929438 b_free!55261 (= (toValue!5572 (transformation!3935 (h!27343 rules!3198))) (toValue!5572 (transformation!3935 (rule!6142 (h!27344 tokens!598)))))) (and b!1930020 b_free!55289 (= (toValue!5572 (transformation!3935 (rule!6142 (h!27344 (t!179958 tokens!598))))) (toValue!5572 (transformation!3935 (rule!6142 (h!27344 tokens!598)))))) b_lambda!64027)))

(push 1)

(assert (not b_lambda!64015))

(assert (not b!1930019))

(assert (not bm!118700))

(assert (not d!588409))

(assert (not b!1929614))

(assert (not b!1930017))

(assert (not bm!118706))

(assert (not bm!118696))

(assert (not d!588391))

(assert (not b!1929829))

(assert (not b!1929534))

(assert (not b!1929533))

(assert (not b!1929996))

(assert (not b!1929700))

(assert (not d!588469))

(assert (not b!1929623))

(assert (not b!1929654))

(assert (not d!588403))

(assert tp_is_empty!9139)

(assert (not b!1929699))

(assert (not b!1929966))

(assert (not b_next!55993))

(assert (not d!588415))

(assert (not b!1929899))

(assert (not b!1929674))

(assert (not b!1929615))

(assert (not b!1929704))

(assert (not b_lambda!64017))

(assert (not b!1929967))

(assert (not b!1929701))

(assert (not b!1929676))

(assert (not b!1929903))

(assert (not b!1929945))

(assert (not d!588423))

(assert (not b_lambda!64019))

(assert b_and!151595)

(assert b_and!151593)

(assert (not b!1929849))

(assert (not b_next!55973))

(assert (not b_lambda!64023))

(assert (not b!1929912))

(assert (not d!588417))

(assert (not b!1929583))

(assert (not b!1929990))

(assert (not b!1929629))

(assert (not d!588427))

(assert (not b!1929689))

(assert (not b!1929991))

(assert (not d!588413))

(assert b_and!151603)

(assert (not d!588387))

(assert (not d!588429))

(assert (not d!588425))

(assert b_and!151555)

(assert (not b!1929621))

(assert (not b_lambda!64013))

(assert (not b!1929900))

(assert (not b!1929655))

(assert (not b!1929649))

(assert (not b!1929650))

(assert (not d!588499))

(assert b_and!151597)

(assert (not d!588383))

(assert (not d!588489))

(assert (not b!1929679))

(assert (not b!1929979))

(assert (not b!1929998))

(assert (not b_next!55991))

(assert (not b!1929656))

(assert (not b!1929648))

(assert (not b!1929964))

(assert b_and!151599)

(assert (not b!1930005))

(assert (not b!1929582))

(assert (not b!1929994))

(assert (not d!588407))

(assert (not b!1930018))

(assert (not b!1929581))

(assert (not b_next!55971))

(assert (not d!588465))

(assert (not b!1929965))

(assert (not b!1929887))

(assert (not b!1929845))

(assert (not b!1929550))

(assert (not b!1929705))

(assert b_and!151559)

(assert (not b!1929909))

(assert (not b!1929653))

(assert b_and!151557)

(assert (not d!588401))

(assert (not bm!118698))

(assert (not b_lambda!64011))

(assert (not b_next!55975))

(assert (not b!1929886))

(assert (not d!588421))

(assert (not b!1929624))

(assert (not b!1929890))

(assert (not b!1929578))

(assert (not b!1929891))

(assert (not b!1929673))

(assert (not d!588393))

(assert (not b_lambda!64021))

(assert (not d!588431))

(assert (not b!1930006))

(assert (not bm!118684))

(assert (not b!1929577))

(assert (not tb!118345))

(assert (not d!588487))

(assert (not b!1929907))

(assert (not d!588483))

(assert (not b!1929884))

(assert (not b!1929947))

(assert (not d!588377))

(assert (not b!1929995))

(assert (not d!588399))

(assert (not b!1929846))

(assert (not b!1929882))

(assert (not b_next!55965))

(assert (not b!1929622))

(assert b_and!151591)

(assert (not b!1929898))

(assert (not b_lambda!64025))

(assert (not d!588411))

(assert (not d!588503))

(assert (not b!1929558))

(assert (not b!1929920))

(assert (not b!1929645))

(assert (not d!588381))

(assert (not b!1929980))

(assert b_and!151601)

(assert (not tb!118321))

(assert (not bm!118685))

(assert (not bm!118707))

(assert (not b_lambda!64027))

(assert (not b!1929584))

(assert (not b_next!55969))

(assert (not d!588385))

(assert (not b!1929911))

(assert (not b!1929897))

(assert (not b!1929831))

(assert (not b!1929543))

(assert (not b!1929652))

(assert (not b!1929830))

(assert (not b!1929981))

(assert (not b!1929585))

(assert (not d!588405))

(assert (not b!1929916))

(assert (not d!588371))

(assert (not b!1929642))

(assert (not tb!118339))

(assert (not tb!118327))

(assert (not b_next!55995))

(assert (not b!1930000))

(assert (not b!1929915))

(assert (not b!1929539))

(assert (not b_next!55967))

(assert (not tb!118333))

(assert (not b!1929999))

(assert (not b!1929552))

(assert (not b!1929646))

(assert (not b!1929946))

(assert (not b!1929834))

(assert (not b!1929579))

(assert (not b_next!55989))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!55993))

(assert b_and!151595)

(assert b_and!151603)

(assert b_and!151555)

(assert b_and!151597)

(assert (not b_next!55971))

(assert b_and!151559)

(assert (not b_next!55965))

(assert b_and!151591)

(assert b_and!151601)

(assert (not b_next!55969))

(assert (not b_next!55995))

(assert (not b_next!55967))

(assert (not b_next!55989))

(assert b_and!151593)

(assert (not b_next!55973))

(assert (not b_next!55991))

(assert b_and!151599)

(assert b_and!151557)

(assert (not b_next!55975))

(check-sat)

(pop 1)

