; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!153562 () Bool)

(assert start!153562)

(declare-fun b!1620318 () Bool)

(declare-fun b_free!43655 () Bool)

(declare-fun b_next!44359 () Bool)

(assert (=> b!1620318 (= b_free!43655 (not b_next!44359))))

(declare-fun tp!471728 () Bool)

(declare-fun b_and!114933 () Bool)

(assert (=> b!1620318 (= tp!471728 b_and!114933)))

(declare-fun b_free!43657 () Bool)

(declare-fun b_next!44361 () Bool)

(assert (=> b!1620318 (= b_free!43657 (not b_next!44361))))

(declare-fun tp!471734 () Bool)

(declare-fun b_and!114935 () Bool)

(assert (=> b!1620318 (= tp!471734 b_and!114935)))

(declare-fun b!1620302 () Bool)

(declare-fun b_free!43659 () Bool)

(declare-fun b_next!44363 () Bool)

(assert (=> b!1620302 (= b_free!43659 (not b_next!44363))))

(declare-fun tp!471731 () Bool)

(declare-fun b_and!114937 () Bool)

(assert (=> b!1620302 (= tp!471731 b_and!114937)))

(declare-fun b_free!43661 () Bool)

(declare-fun b_next!44365 () Bool)

(assert (=> b!1620302 (= b_free!43661 (not b_next!44365))))

(declare-fun tp!471736 () Bool)

(declare-fun b_and!114939 () Bool)

(assert (=> b!1620302 (= tp!471736 b_and!114939)))

(declare-fun b!1620296 () Bool)

(declare-fun res!723570 () Bool)

(declare-fun e!1039214 () Bool)

(assert (=> b!1620296 (=> (not res!723570) (not e!1039214))))

(declare-datatypes ((LexerInterface!2754 0))(
  ( (LexerInterfaceExt!2751 (__x!11732 Int)) (Lexer!2752) )
))
(declare-fun thiss!17113 () LexerInterface!2754)

(declare-datatypes ((List!17807 0))(
  ( (Nil!17737) (Cons!17737 (h!23138 (_ BitVec 16)) (t!148688 List!17807)) )
))
(declare-datatypes ((TokenValue!3215 0))(
  ( (FloatLiteralValue!6430 (text!22950 List!17807)) (TokenValueExt!3214 (__x!11733 Int)) (Broken!16075 (value!98709 List!17807)) (Object!3284) (End!3215) (Def!3215) (Underscore!3215) (Match!3215) (Else!3215) (Error!3215) (Case!3215) (If!3215) (Extends!3215) (Abstract!3215) (Class!3215) (Val!3215) (DelimiterValue!6430 (del!3275 List!17807)) (KeywordValue!3221 (value!98710 List!17807)) (CommentValue!6430 (value!98711 List!17807)) (WhitespaceValue!6430 (value!98712 List!17807)) (IndentationValue!3215 (value!98713 List!17807)) (String!20406) (Int32!3215) (Broken!16076 (value!98714 List!17807)) (Boolean!3216) (Unit!28634) (OperatorValue!3218 (op!3275 List!17807)) (IdentifierValue!6430 (value!98715 List!17807)) (IdentifierValue!6431 (value!98716 List!17807)) (WhitespaceValue!6431 (value!98717 List!17807)) (True!6430) (False!6430) (Broken!16077 (value!98718 List!17807)) (Broken!16078 (value!98719 List!17807)) (True!6431) (RightBrace!3215) (RightBracket!3215) (Colon!3215) (Null!3215) (Comma!3215) (LeftBracket!3215) (False!6431) (LeftBrace!3215) (ImaginaryLiteralValue!3215 (text!22951 List!17807)) (StringLiteralValue!9645 (value!98720 List!17807)) (EOFValue!3215 (value!98721 List!17807)) (IdentValue!3215 (value!98722 List!17807)) (DelimiterValue!6431 (value!98723 List!17807)) (DedentValue!3215 (value!98724 List!17807)) (NewLineValue!3215 (value!98725 List!17807)) (IntegerValue!9645 (value!98726 (_ BitVec 32)) (text!22952 List!17807)) (IntegerValue!9646 (value!98727 Int) (text!22953 List!17807)) (Times!3215) (Or!3215) (Equal!3215) (Minus!3215) (Broken!16079 (value!98728 List!17807)) (And!3215) (Div!3215) (LessEqual!3215) (Mod!3215) (Concat!7668) (Not!3215) (Plus!3215) (SpaceValue!3215 (value!98729 List!17807)) (IntegerValue!9647 (value!98730 Int) (text!22954 List!17807)) (StringLiteralValue!9646 (text!22955 List!17807)) (FloatLiteralValue!6431 (text!22956 List!17807)) (BytesLiteralValue!3215 (value!98731 List!17807)) (CommentValue!6431 (value!98732 List!17807)) (StringLiteralValue!9647 (value!98733 List!17807)) (ErrorTokenValue!3215 (msg!3276 List!17807)) )
))
(declare-datatypes ((C!9080 0))(
  ( (C!9081 (val!5136 Int)) )
))
(declare-datatypes ((List!17808 0))(
  ( (Nil!17738) (Cons!17738 (h!23139 C!9080) (t!148689 List!17808)) )
))
(declare-datatypes ((IArray!11801 0))(
  ( (IArray!11802 (innerList!5958 List!17808)) )
))
(declare-datatypes ((Conc!5898 0))(
  ( (Node!5898 (left!14274 Conc!5898) (right!14604 Conc!5898) (csize!12026 Int) (cheight!6109 Int)) (Leaf!8681 (xs!8730 IArray!11801) (csize!12027 Int)) (Empty!5898) )
))
(declare-datatypes ((BalanceConc!11740 0))(
  ( (BalanceConc!11741 (c!263895 Conc!5898)) )
))
(declare-datatypes ((Regex!4453 0))(
  ( (ElementMatch!4453 (c!263896 C!9080)) (Concat!7669 (regOne!9418 Regex!4453) (regTwo!9418 Regex!4453)) (EmptyExpr!4453) (Star!4453 (reg!4782 Regex!4453)) (EmptyLang!4453) (Union!4453 (regOne!9419 Regex!4453) (regTwo!9419 Regex!4453)) )
))
(declare-datatypes ((String!20407 0))(
  ( (String!20408 (value!98734 String)) )
))
(declare-datatypes ((TokenValueInjection!6090 0))(
  ( (TokenValueInjection!6091 (toValue!4552 Int) (toChars!4411 Int)) )
))
(declare-datatypes ((Rule!6050 0))(
  ( (Rule!6051 (regex!3125 Regex!4453) (tag!3403 String!20407) (isSeparator!3125 Bool) (transformation!3125 TokenValueInjection!6090)) )
))
(declare-datatypes ((List!17809 0))(
  ( (Nil!17739) (Cons!17739 (h!23140 Rule!6050) (t!148690 List!17809)) )
))
(declare-fun rules!1846 () List!17809)

(declare-fun rulesInvariant!2423 (LexerInterface!2754 List!17809) Bool)

(assert (=> b!1620296 (= res!723570 (rulesInvariant!2423 thiss!17113 rules!1846))))

(declare-fun b!1620297 () Bool)

(declare-fun e!1039208 () Bool)

(declare-fun e!1039219 () Bool)

(declare-fun tp!471730 () Bool)

(assert (=> b!1620297 (= e!1039208 (and e!1039219 tp!471730))))

(declare-fun b!1620298 () Bool)

(declare-fun e!1039221 () Bool)

(declare-datatypes ((Token!5816 0))(
  ( (Token!5817 (value!98735 TokenValue!3215) (rule!4951 Rule!6050) (size!14222 Int) (originalCharacters!3939 List!17808)) )
))
(declare-datatypes ((List!17810 0))(
  ( (Nil!17740) (Cons!17740 (h!23141 Token!5816) (t!148691 List!17810)) )
))
(declare-fun tokens!457 () List!17810)

(declare-fun tp!471729 () Bool)

(declare-fun e!1039204 () Bool)

(declare-fun inv!23131 (String!20407) Bool)

(declare-fun inv!23134 (TokenValueInjection!6090) Bool)

(assert (=> b!1620298 (= e!1039204 (and tp!471729 (inv!23131 (tag!3403 (rule!4951 (h!23141 tokens!457)))) (inv!23134 (transformation!3125 (rule!4951 (h!23141 tokens!457)))) e!1039221))))

(declare-fun b!1620299 () Bool)

(declare-fun e!1039222 () Bool)

(declare-fun lt!582569 () List!17808)

(declare-fun matchR!1952 (Regex!4453 List!17808) Bool)

(assert (=> b!1620299 (= e!1039222 (matchR!1952 (regex!3125 (rule!4951 (h!23141 tokens!457))) lt!582569))))

(declare-fun b!1620300 () Bool)

(declare-fun res!723562 () Bool)

(declare-fun e!1039220 () Bool)

(assert (=> b!1620300 (=> res!723562 e!1039220)))

(declare-fun rulesProduceIndividualToken!1406 (LexerInterface!2754 List!17809 Token!5816) Bool)

(assert (=> b!1620300 (= res!723562 (not (rulesProduceIndividualToken!1406 thiss!17113 rules!1846 (h!23141 tokens!457))))))

(declare-fun b!1620301 () Bool)

(declare-fun res!723561 () Bool)

(declare-fun e!1039216 () Bool)

(assert (=> b!1620301 (=> res!723561 e!1039216)))

(declare-fun separableTokensPredicate!696 (LexerInterface!2754 Token!5816 Token!5816 List!17809) Bool)

(assert (=> b!1620301 (= res!723561 (not (separableTokensPredicate!696 thiss!17113 (h!23141 tokens!457) (h!23141 (t!148691 tokens!457)) rules!1846)))))

(assert (=> b!1620302 (= e!1039221 (and tp!471731 tp!471736))))

(declare-fun b!1620303 () Bool)

(declare-fun e!1039202 () Bool)

(assert (=> b!1620303 (= e!1039214 e!1039202)))

(declare-fun res!723568 () Bool)

(assert (=> b!1620303 (=> (not res!723568) (not e!1039202))))

(declare-fun lt!582582 () List!17808)

(declare-fun lt!582585 () List!17808)

(assert (=> b!1620303 (= res!723568 (= lt!582582 lt!582585))))

(declare-fun lt!582588 () List!17808)

(declare-fun ++!4699 (List!17808 List!17808) List!17808)

(assert (=> b!1620303 (= lt!582585 (++!4699 lt!582569 lt!582588))))

(declare-fun lt!582570 () BalanceConc!11740)

(declare-fun list!6947 (BalanceConc!11740) List!17808)

(assert (=> b!1620303 (= lt!582582 (list!6947 lt!582570))))

(declare-fun lt!582586 () BalanceConc!11740)

(assert (=> b!1620303 (= lt!582588 (list!6947 lt!582586))))

(declare-fun lt!582590 () BalanceConc!11740)

(assert (=> b!1620303 (= lt!582569 (list!6947 lt!582590))))

(declare-fun charsOf!1774 (Token!5816) BalanceConc!11740)

(assert (=> b!1620303 (= lt!582590 (charsOf!1774 (h!23141 tokens!457)))))

(declare-datatypes ((IArray!11803 0))(
  ( (IArray!11804 (innerList!5959 List!17810)) )
))
(declare-datatypes ((Conc!5899 0))(
  ( (Node!5899 (left!14275 Conc!5899) (right!14605 Conc!5899) (csize!12028 Int) (cheight!6110 Int)) (Leaf!8682 (xs!8731 IArray!11803) (csize!12029 Int)) (Empty!5899) )
))
(declare-datatypes ((BalanceConc!11742 0))(
  ( (BalanceConc!11743 (c!263897 Conc!5899)) )
))
(declare-datatypes ((tuple2!17286 0))(
  ( (tuple2!17287 (_1!10045 BalanceConc!11742) (_2!10045 BalanceConc!11740)) )
))
(declare-fun lt!582580 () tuple2!17286)

(declare-fun lex!1238 (LexerInterface!2754 List!17809 BalanceConc!11740) tuple2!17286)

(assert (=> b!1620303 (= lt!582580 (lex!1238 thiss!17113 rules!1846 lt!582586))))

(declare-fun lt!582575 () BalanceConc!11742)

(declare-fun print!1285 (LexerInterface!2754 BalanceConc!11742) BalanceConc!11740)

(assert (=> b!1620303 (= lt!582586 (print!1285 thiss!17113 lt!582575))))

(declare-fun seqFromList!1999 (List!17810) BalanceConc!11742)

(assert (=> b!1620303 (= lt!582575 (seqFromList!1999 (t!148691 tokens!457)))))

(assert (=> b!1620303 (= lt!582570 (print!1285 thiss!17113 (seqFromList!1999 tokens!457)))))

(declare-fun b!1620304 () Bool)

(declare-fun e!1039211 () Bool)

(assert (=> b!1620304 (= e!1039220 e!1039211)))

(declare-fun res!723566 () Bool)

(assert (=> b!1620304 (=> res!723566 e!1039211)))

(declare-datatypes ((tuple2!17288 0))(
  ( (tuple2!17289 (_1!10046 Token!5816) (_2!10046 List!17808)) )
))
(declare-datatypes ((Option!3263 0))(
  ( (None!3262) (Some!3262 (v!24267 tuple2!17288)) )
))
(declare-fun lt!582578 () Option!3263)

(declare-fun isDefined!2630 (Option!3263) Bool)

(assert (=> b!1620304 (= res!723566 (not (isDefined!2630 lt!582578)))))

(declare-datatypes ((Unit!28635 0))(
  ( (Unit!28636) )
))
(declare-fun lt!582581 () Unit!28635)

(declare-fun lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!328 (LexerInterface!2754 List!17809 List!17808 List!17808) Unit!28635)

(assert (=> b!1620304 (= lt!582581 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!328 thiss!17113 rules!1846 lt!582569 lt!582588))))

(declare-fun b!1620305 () Bool)

(declare-fun res!723560 () Bool)

(assert (=> b!1620305 (=> (not res!723560) (not e!1039214))))

(get-info :version)

(assert (=> b!1620305 (= res!723560 (and (not ((_ is Nil!17740) tokens!457)) (not ((_ is Nil!17740) (t!148691 tokens!457)))))))

(declare-fun b!1620306 () Bool)

(declare-fun e!1039207 () Bool)

(declare-fun isEmpty!10758 (BalanceConc!11740) Bool)

(assert (=> b!1620306 (= e!1039207 (not (isEmpty!10758 lt!582586)))))

(assert (=> b!1620306 e!1039222))

(declare-fun res!723565 () Bool)

(assert (=> b!1620306 (=> (not res!723565) (not e!1039222))))

(declare-fun lt!582583 () tuple2!17288)

(assert (=> b!1620306 (= res!723565 (= (_1!10046 lt!582583) (h!23141 tokens!457)))))

(declare-fun lt!582572 () Option!3263)

(declare-fun get!5096 (Option!3263) tuple2!17288)

(assert (=> b!1620306 (= lt!582583 (get!5096 lt!582572))))

(assert (=> b!1620306 (isDefined!2630 lt!582572)))

(declare-fun maxPrefix!1318 (LexerInterface!2754 List!17809 List!17808) Option!3263)

(assert (=> b!1620306 (= lt!582572 (maxPrefix!1318 thiss!17113 rules!1846 lt!582569))))

(assert (=> b!1620306 (isDefined!2630 (maxPrefix!1318 thiss!17113 rules!1846 (originalCharacters!3939 (h!23141 tokens!457))))))

(declare-fun b!1620307 () Bool)

(declare-fun res!723569 () Bool)

(assert (=> b!1620307 (=> (not res!723569) (not e!1039214))))

(declare-fun isEmpty!10759 (List!17809) Bool)

(assert (=> b!1620307 (= res!723569 (not (isEmpty!10759 rules!1846)))))

(declare-fun b!1620308 () Bool)

(declare-fun res!723550 () Bool)

(declare-fun e!1039205 () Bool)

(assert (=> b!1620308 (=> (not res!723550) (not e!1039205))))

(declare-fun lt!582591 () List!17808)

(declare-fun head!3384 (List!17808) C!9080)

(assert (=> b!1620308 (= res!723550 (= lt!582591 (Cons!17738 (head!3384 lt!582588) Nil!17738)))))

(declare-fun b!1620309 () Bool)

(declare-fun e!1039217 () Bool)

(declare-fun e!1039218 () Bool)

(assert (=> b!1620309 (= e!1039217 e!1039218)))

(declare-fun res!723559 () Bool)

(assert (=> b!1620309 (=> res!723559 e!1039218)))

(declare-fun lt!582567 () Regex!4453)

(declare-fun prefixMatch!388 (Regex!4453 List!17808) Bool)

(assert (=> b!1620309 (= res!723559 (prefixMatch!388 lt!582567 (++!4699 lt!582569 lt!582591)))))

(declare-fun lt!582576 () BalanceConc!11740)

(assert (=> b!1620309 (= lt!582591 (list!6947 lt!582576))))

(declare-fun b!1620310 () Bool)

(declare-fun res!723553 () Bool)

(assert (=> b!1620310 (=> (not res!723553) (not e!1039214))))

(declare-fun tokensListTwoByTwoPredicateSeparableList!447 (LexerInterface!2754 List!17810 List!17809) Bool)

(assert (=> b!1620310 (= res!723553 (tokensListTwoByTwoPredicateSeparableList!447 thiss!17113 tokens!457 rules!1846))))

(declare-fun b!1620311 () Bool)

(assert (=> b!1620311 (= e!1039218 e!1039207)))

(declare-fun res!723567 () Bool)

(assert (=> b!1620311 (=> res!723567 e!1039207)))

(declare-datatypes ((tuple2!17290 0))(
  ( (tuple2!17291 (_1!10047 Token!5816) (_2!10047 BalanceConc!11740)) )
))
(declare-datatypes ((Option!3264 0))(
  ( (None!3263) (Some!3263 (v!24268 tuple2!17290)) )
))
(declare-fun isDefined!2631 (Option!3264) Bool)

(declare-fun maxPrefixZipperSequence!649 (LexerInterface!2754 List!17809 BalanceConc!11740) Option!3264)

(declare-fun seqFromList!2000 (List!17808) BalanceConc!11740)

(assert (=> b!1620311 (= res!723567 (not (isDefined!2631 (maxPrefixZipperSequence!649 thiss!17113 rules!1846 (seqFromList!2000 (originalCharacters!3939 (h!23141 tokens!457)))))))))

(assert (=> b!1620311 e!1039205))

(declare-fun res!723549 () Bool)

(assert (=> b!1620311 (=> (not res!723549) (not e!1039205))))

(assert (=> b!1620311 (= res!723549 (= lt!582569 (originalCharacters!3939 (h!23141 tokens!457))))))

(declare-fun b!1620312 () Bool)

(declare-fun head!3385 (BalanceConc!11740) C!9080)

(assert (=> b!1620312 (= e!1039205 (= lt!582591 (Cons!17738 (head!3385 lt!582586) Nil!17738)))))

(declare-fun b!1620313 () Bool)

(declare-fun tp!471735 () Bool)

(declare-fun e!1039212 () Bool)

(assert (=> b!1620313 (= e!1039219 (and tp!471735 (inv!23131 (tag!3403 (h!23140 rules!1846))) (inv!23134 (transformation!3125 (h!23140 rules!1846))) e!1039212))))

(declare-fun res!723557 () Bool)

(assert (=> start!153562 (=> (not res!723557) (not e!1039214))))

(assert (=> start!153562 (= res!723557 ((_ is Lexer!2752) thiss!17113))))

(assert (=> start!153562 e!1039214))

(assert (=> start!153562 true))

(assert (=> start!153562 e!1039208))

(declare-fun e!1039209 () Bool)

(assert (=> start!153562 e!1039209))

(declare-fun b!1620314 () Bool)

(declare-fun e!1039210 () Bool)

(assert (=> b!1620314 (= e!1039202 (not e!1039210))))

(declare-fun res!723554 () Bool)

(assert (=> b!1620314 (=> res!723554 e!1039210)))

(declare-fun lt!582587 () List!17810)

(assert (=> b!1620314 (= res!723554 (not (= lt!582587 (t!148691 tokens!457))))))

(declare-fun list!6948 (BalanceConc!11742) List!17810)

(assert (=> b!1620314 (= lt!582587 (list!6948 (_1!10045 lt!582580)))))

(declare-fun lt!582571 () Unit!28635)

(declare-fun theoremInvertabilityWhenTokenListSeparable!199 (LexerInterface!2754 List!17809 List!17810) Unit!28635)

(assert (=> b!1620314 (= lt!582571 (theoremInvertabilityWhenTokenListSeparable!199 thiss!17113 rules!1846 (t!148691 tokens!457)))))

(declare-fun isPrefix!1385 (List!17808 List!17808) Bool)

(assert (=> b!1620314 (isPrefix!1385 lt!582569 lt!582585)))

(declare-fun lt!582579 () Unit!28635)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!910 (List!17808 List!17808) Unit!28635)

(assert (=> b!1620314 (= lt!582579 (lemmaConcatTwoListThenFirstIsPrefix!910 lt!582569 lt!582588))))

(declare-fun b!1620315 () Bool)

(declare-fun tp!471732 () Bool)

(declare-fun e!1039203 () Bool)

(declare-fun inv!21 (TokenValue!3215) Bool)

(assert (=> b!1620315 (= e!1039203 (and (inv!21 (value!98735 (h!23141 tokens!457))) e!1039204 tp!471732))))

(declare-fun b!1620316 () Bool)

(declare-fun res!723556 () Bool)

(assert (=> b!1620316 (=> (not res!723556) (not e!1039222))))

(declare-fun isEmpty!10760 (List!17808) Bool)

(assert (=> b!1620316 (= res!723556 (isEmpty!10760 (_2!10046 lt!582583)))))

(declare-fun tp!471733 () Bool)

(declare-fun b!1620317 () Bool)

(declare-fun inv!23135 (Token!5816) Bool)

(assert (=> b!1620317 (= e!1039209 (and (inv!23135 (h!23141 tokens!457)) e!1039203 tp!471733))))

(assert (=> b!1620318 (= e!1039212 (and tp!471728 tp!471734))))

(declare-fun b!1620319 () Bool)

(declare-fun res!723558 () Bool)

(assert (=> b!1620319 (=> (not res!723558) (not e!1039214))))

(declare-fun rulesProduceEachTokenIndividuallyList!956 (LexerInterface!2754 List!17809 List!17810) Bool)

(assert (=> b!1620319 (= res!723558 (rulesProduceEachTokenIndividuallyList!956 thiss!17113 rules!1846 tokens!457))))

(declare-fun b!1620320 () Bool)

(assert (=> b!1620320 (= e!1039210 e!1039216)))

(declare-fun res!723564 () Bool)

(assert (=> b!1620320 (=> res!723564 e!1039216)))

(declare-fun lt!582584 () List!17810)

(declare-fun lt!582573 () List!17810)

(assert (=> b!1620320 (= res!723564 (or (not (= lt!582587 lt!582584)) (not (= lt!582584 lt!582573))))))

(assert (=> b!1620320 (= lt!582584 (list!6948 lt!582575))))

(assert (=> b!1620320 (= lt!582587 lt!582573)))

(declare-fun prepend!641 (BalanceConc!11742 Token!5816) BalanceConc!11742)

(assert (=> b!1620320 (= lt!582573 (list!6948 (prepend!641 (seqFromList!1999 (t!148691 (t!148691 tokens!457))) (h!23141 (t!148691 tokens!457)))))))

(declare-fun lt!582592 () Unit!28635)

(declare-fun seqFromListBHdTlConstructive!202 (Token!5816 List!17810 BalanceConc!11742) Unit!28635)

(assert (=> b!1620320 (= lt!582592 (seqFromListBHdTlConstructive!202 (h!23141 (t!148691 tokens!457)) (t!148691 (t!148691 tokens!457)) (_1!10045 lt!582580)))))

(declare-fun b!1620321 () Bool)

(assert (=> b!1620321 (= e!1039211 e!1039217)))

(declare-fun res!723555 () Bool)

(assert (=> b!1620321 (=> res!723555 e!1039217)))

(declare-fun prefixMatchZipperSequence!503 (Regex!4453 BalanceConc!11740) Bool)

(declare-fun ++!4700 (BalanceConc!11740 BalanceConc!11740) BalanceConc!11740)

(assert (=> b!1620321 (= res!723555 (prefixMatchZipperSequence!503 lt!582567 (++!4700 lt!582590 lt!582576)))))

(declare-fun singletonSeq!1528 (C!9080) BalanceConc!11740)

(declare-fun apply!4488 (BalanceConc!11740 Int) C!9080)

(assert (=> b!1620321 (= lt!582576 (singletonSeq!1528 (apply!4488 (charsOf!1774 (h!23141 (t!148691 tokens!457))) 0)))))

(declare-fun rulesRegex!515 (LexerInterface!2754 List!17809) Regex!4453)

(assert (=> b!1620321 (= lt!582567 (rulesRegex!515 thiss!17113 rules!1846))))

(declare-fun b!1620322 () Bool)

(declare-fun res!723563 () Bool)

(assert (=> b!1620322 (=> res!723563 e!1039220)))

(declare-fun isEmpty!10761 (BalanceConc!11742) Bool)

(assert (=> b!1620322 (= res!723563 (isEmpty!10761 (_1!10045 (lex!1238 thiss!17113 rules!1846 (seqFromList!2000 lt!582569)))))))

(declare-fun b!1620323 () Bool)

(assert (=> b!1620323 (= e!1039216 e!1039220)))

(declare-fun res!723552 () Bool)

(assert (=> b!1620323 (=> res!723552 e!1039220)))

(declare-fun lt!582568 () List!17808)

(declare-fun lt!582589 () List!17808)

(assert (=> b!1620323 (= res!723552 (or (not (= lt!582568 lt!582589)) (not (= lt!582589 lt!582569)) (not (= lt!582568 lt!582569))))))

(declare-fun printList!869 (LexerInterface!2754 List!17810) List!17808)

(assert (=> b!1620323 (= lt!582589 (printList!869 thiss!17113 (Cons!17740 (h!23141 tokens!457) Nil!17740)))))

(declare-fun lt!582574 () BalanceConc!11740)

(assert (=> b!1620323 (= lt!582568 (list!6947 lt!582574))))

(declare-fun lt!582577 () BalanceConc!11742)

(declare-fun printTailRec!807 (LexerInterface!2754 BalanceConc!11742 Int BalanceConc!11740) BalanceConc!11740)

(assert (=> b!1620323 (= lt!582574 (printTailRec!807 thiss!17113 lt!582577 0 (BalanceConc!11741 Empty!5898)))))

(assert (=> b!1620323 (= lt!582574 (print!1285 thiss!17113 lt!582577))))

(declare-fun singletonSeq!1529 (Token!5816) BalanceConc!11742)

(assert (=> b!1620323 (= lt!582577 (singletonSeq!1529 (h!23141 tokens!457)))))

(assert (=> b!1620323 (= lt!582578 (maxPrefix!1318 thiss!17113 rules!1846 lt!582582))))

(declare-fun b!1620324 () Bool)

(declare-fun res!723551 () Bool)

(assert (=> b!1620324 (=> (not res!723551) (not e!1039205))))

(assert (=> b!1620324 (= res!723551 (= lt!582591 (Cons!17738 (head!3384 (originalCharacters!3939 (h!23141 (t!148691 tokens!457)))) Nil!17738)))))

(assert (= (and start!153562 res!723557) b!1620307))

(assert (= (and b!1620307 res!723569) b!1620296))

(assert (= (and b!1620296 res!723570) b!1620319))

(assert (= (and b!1620319 res!723558) b!1620310))

(assert (= (and b!1620310 res!723553) b!1620305))

(assert (= (and b!1620305 res!723560) b!1620303))

(assert (= (and b!1620303 res!723568) b!1620314))

(assert (= (and b!1620314 (not res!723554)) b!1620320))

(assert (= (and b!1620320 (not res!723564)) b!1620301))

(assert (= (and b!1620301 (not res!723561)) b!1620323))

(assert (= (and b!1620323 (not res!723552)) b!1620300))

(assert (= (and b!1620300 (not res!723562)) b!1620322))

(assert (= (and b!1620322 (not res!723563)) b!1620304))

(assert (= (and b!1620304 (not res!723566)) b!1620321))

(assert (= (and b!1620321 (not res!723555)) b!1620309))

(assert (= (and b!1620309 (not res!723559)) b!1620311))

(assert (= (and b!1620311 res!723549) b!1620324))

(assert (= (and b!1620324 res!723551) b!1620308))

(assert (= (and b!1620308 res!723550) b!1620312))

(assert (= (and b!1620311 (not res!723567)) b!1620306))

(assert (= (and b!1620306 res!723565) b!1620316))

(assert (= (and b!1620316 res!723556) b!1620299))

(assert (= b!1620313 b!1620318))

(assert (= b!1620297 b!1620313))

(assert (= (and start!153562 ((_ is Cons!17739) rules!1846)) b!1620297))

(assert (= b!1620298 b!1620302))

(assert (= b!1620315 b!1620298))

(assert (= b!1620317 b!1620315))

(assert (= (and start!153562 ((_ is Cons!17740) tokens!457)) b!1620317))

(declare-fun m!1944523 () Bool)

(assert (=> b!1620309 m!1944523))

(assert (=> b!1620309 m!1944523))

(declare-fun m!1944525 () Bool)

(assert (=> b!1620309 m!1944525))

(declare-fun m!1944527 () Bool)

(assert (=> b!1620309 m!1944527))

(declare-fun m!1944529 () Bool)

(assert (=> b!1620301 m!1944529))

(declare-fun m!1944531 () Bool)

(assert (=> b!1620312 m!1944531))

(declare-fun m!1944533 () Bool)

(assert (=> b!1620322 m!1944533))

(assert (=> b!1620322 m!1944533))

(declare-fun m!1944535 () Bool)

(assert (=> b!1620322 m!1944535))

(declare-fun m!1944537 () Bool)

(assert (=> b!1620322 m!1944537))

(declare-fun m!1944539 () Bool)

(assert (=> b!1620316 m!1944539))

(declare-fun m!1944541 () Bool)

(assert (=> b!1620317 m!1944541))

(declare-fun m!1944543 () Bool)

(assert (=> b!1620306 m!1944543))

(declare-fun m!1944545 () Bool)

(assert (=> b!1620306 m!1944545))

(declare-fun m!1944547 () Bool)

(assert (=> b!1620306 m!1944547))

(declare-fun m!1944549 () Bool)

(assert (=> b!1620306 m!1944549))

(declare-fun m!1944551 () Bool)

(assert (=> b!1620306 m!1944551))

(declare-fun m!1944553 () Bool)

(assert (=> b!1620306 m!1944553))

(assert (=> b!1620306 m!1944545))

(declare-fun m!1944555 () Bool)

(assert (=> b!1620308 m!1944555))

(declare-fun m!1944557 () Bool)

(assert (=> b!1620310 m!1944557))

(declare-fun m!1944559 () Bool)

(assert (=> b!1620311 m!1944559))

(assert (=> b!1620311 m!1944559))

(declare-fun m!1944561 () Bool)

(assert (=> b!1620311 m!1944561))

(assert (=> b!1620311 m!1944561))

(declare-fun m!1944563 () Bool)

(assert (=> b!1620311 m!1944563))

(declare-fun m!1944565 () Bool)

(assert (=> b!1620298 m!1944565))

(declare-fun m!1944567 () Bool)

(assert (=> b!1620298 m!1944567))

(declare-fun m!1944569 () Bool)

(assert (=> b!1620299 m!1944569))

(declare-fun m!1944571 () Bool)

(assert (=> b!1620300 m!1944571))

(declare-fun m!1944573 () Bool)

(assert (=> b!1620320 m!1944573))

(declare-fun m!1944575 () Bool)

(assert (=> b!1620320 m!1944575))

(declare-fun m!1944577 () Bool)

(assert (=> b!1620320 m!1944577))

(declare-fun m!1944579 () Bool)

(assert (=> b!1620320 m!1944579))

(declare-fun m!1944581 () Bool)

(assert (=> b!1620320 m!1944581))

(assert (=> b!1620320 m!1944577))

(assert (=> b!1620320 m!1944579))

(declare-fun m!1944583 () Bool)

(assert (=> b!1620304 m!1944583))

(declare-fun m!1944585 () Bool)

(assert (=> b!1620304 m!1944585))

(declare-fun m!1944587 () Bool)

(assert (=> b!1620313 m!1944587))

(declare-fun m!1944589 () Bool)

(assert (=> b!1620313 m!1944589))

(declare-fun m!1944591 () Bool)

(assert (=> b!1620307 m!1944591))

(declare-fun m!1944593 () Bool)

(assert (=> b!1620315 m!1944593))

(declare-fun m!1944595 () Bool)

(assert (=> b!1620296 m!1944595))

(declare-fun m!1944597 () Bool)

(assert (=> b!1620324 m!1944597))

(declare-fun m!1944599 () Bool)

(assert (=> b!1620303 m!1944599))

(declare-fun m!1944601 () Bool)

(assert (=> b!1620303 m!1944601))

(declare-fun m!1944603 () Bool)

(assert (=> b!1620303 m!1944603))

(declare-fun m!1944605 () Bool)

(assert (=> b!1620303 m!1944605))

(declare-fun m!1944607 () Bool)

(assert (=> b!1620303 m!1944607))

(declare-fun m!1944609 () Bool)

(assert (=> b!1620303 m!1944609))

(assert (=> b!1620303 m!1944603))

(declare-fun m!1944611 () Bool)

(assert (=> b!1620303 m!1944611))

(declare-fun m!1944613 () Bool)

(assert (=> b!1620303 m!1944613))

(declare-fun m!1944615 () Bool)

(assert (=> b!1620303 m!1944615))

(declare-fun m!1944617 () Bool)

(assert (=> b!1620303 m!1944617))

(declare-fun m!1944619 () Bool)

(assert (=> b!1620323 m!1944619))

(declare-fun m!1944621 () Bool)

(assert (=> b!1620323 m!1944621))

(declare-fun m!1944623 () Bool)

(assert (=> b!1620323 m!1944623))

(declare-fun m!1944625 () Bool)

(assert (=> b!1620323 m!1944625))

(declare-fun m!1944627 () Bool)

(assert (=> b!1620323 m!1944627))

(declare-fun m!1944629 () Bool)

(assert (=> b!1620323 m!1944629))

(declare-fun m!1944631 () Bool)

(assert (=> b!1620314 m!1944631))

(declare-fun m!1944633 () Bool)

(assert (=> b!1620314 m!1944633))

(declare-fun m!1944635 () Bool)

(assert (=> b!1620314 m!1944635))

(declare-fun m!1944637 () Bool)

(assert (=> b!1620314 m!1944637))

(declare-fun m!1944639 () Bool)

(assert (=> b!1620319 m!1944639))

(declare-fun m!1944641 () Bool)

(assert (=> b!1620321 m!1944641))

(declare-fun m!1944643 () Bool)

(assert (=> b!1620321 m!1944643))

(declare-fun m!1944645 () Bool)

(assert (=> b!1620321 m!1944645))

(declare-fun m!1944647 () Bool)

(assert (=> b!1620321 m!1944647))

(assert (=> b!1620321 m!1944643))

(declare-fun m!1944649 () Bool)

(assert (=> b!1620321 m!1944649))

(declare-fun m!1944651 () Bool)

(assert (=> b!1620321 m!1944651))

(assert (=> b!1620321 m!1944645))

(assert (=> b!1620321 m!1944651))

(check-sat (not b!1620304) (not b!1620317) (not b!1620297) (not b!1620311) (not b!1620296) (not b!1620298) (not b!1620321) (not b!1620310) b_and!114933 (not b!1620324) (not b!1620319) (not b!1620312) b_and!114937 (not b!1620309) (not b!1620303) (not b_next!44359) (not b!1620313) (not b_next!44361) (not b!1620315) (not b!1620301) (not b!1620322) b_and!114939 (not b!1620320) (not b_next!44363) (not b!1620316) (not b!1620314) (not b!1620299) (not b!1620323) (not b_next!44365) b_and!114935 (not b!1620307) (not b!1620308) (not b!1620300) (not b!1620306))
(check-sat b_and!114933 b_and!114937 (not b_next!44359) (not b_next!44361) b_and!114939 (not b_next!44363) (not b_next!44365) b_and!114935)
(get-model)

(declare-fun d!487919 () Bool)

(declare-fun c!263909 () Bool)

(assert (=> d!487919 (= c!263909 (isEmpty!10760 (++!4699 lt!582569 lt!582591)))))

(declare-fun e!1039246 () Bool)

(assert (=> d!487919 (= (prefixMatch!388 lt!582567 (++!4699 lt!582569 lt!582591)) e!1039246)))

(declare-fun b!1620371 () Bool)

(declare-fun lostCause!428 (Regex!4453) Bool)

(assert (=> b!1620371 (= e!1039246 (not (lostCause!428 lt!582567)))))

(declare-fun b!1620372 () Bool)

(declare-fun derivativeStep!1072 (Regex!4453 C!9080) Regex!4453)

(declare-fun tail!2342 (List!17808) List!17808)

(assert (=> b!1620372 (= e!1039246 (prefixMatch!388 (derivativeStep!1072 lt!582567 (head!3384 (++!4699 lt!582569 lt!582591))) (tail!2342 (++!4699 lt!582569 lt!582591))))))

(assert (= (and d!487919 c!263909) b!1620371))

(assert (= (and d!487919 (not c!263909)) b!1620372))

(assert (=> d!487919 m!1944523))

(declare-fun m!1944675 () Bool)

(assert (=> d!487919 m!1944675))

(declare-fun m!1944677 () Bool)

(assert (=> b!1620371 m!1944677))

(assert (=> b!1620372 m!1944523))

(declare-fun m!1944679 () Bool)

(assert (=> b!1620372 m!1944679))

(assert (=> b!1620372 m!1944679))

(declare-fun m!1944681 () Bool)

(assert (=> b!1620372 m!1944681))

(assert (=> b!1620372 m!1944523))

(declare-fun m!1944683 () Bool)

(assert (=> b!1620372 m!1944683))

(assert (=> b!1620372 m!1944681))

(assert (=> b!1620372 m!1944683))

(declare-fun m!1944685 () Bool)

(assert (=> b!1620372 m!1944685))

(assert (=> b!1620309 d!487919))

(declare-fun b!1620383 () Bool)

(declare-fun res!723608 () Bool)

(declare-fun e!1039252 () Bool)

(assert (=> b!1620383 (=> (not res!723608) (not e!1039252))))

(declare-fun lt!582601 () List!17808)

(declare-fun size!14225 (List!17808) Int)

(assert (=> b!1620383 (= res!723608 (= (size!14225 lt!582601) (+ (size!14225 lt!582569) (size!14225 lt!582591))))))

(declare-fun d!487921 () Bool)

(assert (=> d!487921 e!1039252))

(declare-fun res!723609 () Bool)

(assert (=> d!487921 (=> (not res!723609) (not e!1039252))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!2461 (List!17808) (InoxSet C!9080))

(assert (=> d!487921 (= res!723609 (= (content!2461 lt!582601) ((_ map or) (content!2461 lt!582569) (content!2461 lt!582591))))))

(declare-fun e!1039251 () List!17808)

(assert (=> d!487921 (= lt!582601 e!1039251)))

(declare-fun c!263912 () Bool)

(assert (=> d!487921 (= c!263912 ((_ is Nil!17738) lt!582569))))

(assert (=> d!487921 (= (++!4699 lt!582569 lt!582591) lt!582601)))

(declare-fun b!1620384 () Bool)

(assert (=> b!1620384 (= e!1039252 (or (not (= lt!582591 Nil!17738)) (= lt!582601 lt!582569)))))

(declare-fun b!1620382 () Bool)

(assert (=> b!1620382 (= e!1039251 (Cons!17738 (h!23139 lt!582569) (++!4699 (t!148689 lt!582569) lt!582591)))))

(declare-fun b!1620381 () Bool)

(assert (=> b!1620381 (= e!1039251 lt!582591)))

(assert (= (and d!487921 c!263912) b!1620381))

(assert (= (and d!487921 (not c!263912)) b!1620382))

(assert (= (and d!487921 res!723609) b!1620383))

(assert (= (and b!1620383 res!723608) b!1620384))

(declare-fun m!1944687 () Bool)

(assert (=> b!1620383 m!1944687))

(declare-fun m!1944689 () Bool)

(assert (=> b!1620383 m!1944689))

(declare-fun m!1944691 () Bool)

(assert (=> b!1620383 m!1944691))

(declare-fun m!1944693 () Bool)

(assert (=> d!487921 m!1944693))

(declare-fun m!1944695 () Bool)

(assert (=> d!487921 m!1944695))

(declare-fun m!1944697 () Bool)

(assert (=> d!487921 m!1944697))

(declare-fun m!1944699 () Bool)

(assert (=> b!1620382 m!1944699))

(assert (=> b!1620309 d!487921))

(declare-fun d!487923 () Bool)

(declare-fun list!6950 (Conc!5898) List!17808)

(assert (=> d!487923 (= (list!6947 lt!582576) (list!6950 (c!263895 lt!582576)))))

(declare-fun bs!394455 () Bool)

(assert (= bs!394455 d!487923))

(declare-fun m!1944701 () Bool)

(assert (=> bs!394455 m!1944701))

(assert (=> b!1620309 d!487923))

(declare-fun d!487925 () Bool)

(declare-fun res!723635 () Bool)

(declare-fun e!1039278 () Bool)

(assert (=> d!487925 (=> res!723635 e!1039278)))

(assert (=> d!487925 (= res!723635 (or (not ((_ is Cons!17740) tokens!457)) (not ((_ is Cons!17740) (t!148691 tokens!457)))))))

(assert (=> d!487925 (= (tokensListTwoByTwoPredicateSeparableList!447 thiss!17113 tokens!457 rules!1846) e!1039278)))

(declare-fun b!1620422 () Bool)

(declare-fun e!1039279 () Bool)

(assert (=> b!1620422 (= e!1039278 e!1039279)))

(declare-fun res!723636 () Bool)

(assert (=> b!1620422 (=> (not res!723636) (not e!1039279))))

(assert (=> b!1620422 (= res!723636 (separableTokensPredicate!696 thiss!17113 (h!23141 tokens!457) (h!23141 (t!148691 tokens!457)) rules!1846))))

(declare-fun lt!582680 () Unit!28635)

(declare-fun Unit!28639 () Unit!28635)

(assert (=> b!1620422 (= lt!582680 Unit!28639)))

(declare-fun size!14227 (BalanceConc!11740) Int)

(assert (=> b!1620422 (> (size!14227 (charsOf!1774 (h!23141 (t!148691 tokens!457)))) 0)))

(declare-fun lt!582679 () Unit!28635)

(declare-fun Unit!28640 () Unit!28635)

(assert (=> b!1620422 (= lt!582679 Unit!28640)))

(assert (=> b!1620422 (rulesProduceIndividualToken!1406 thiss!17113 rules!1846 (h!23141 (t!148691 tokens!457)))))

(declare-fun lt!582682 () Unit!28635)

(declare-fun Unit!28641 () Unit!28635)

(assert (=> b!1620422 (= lt!582682 Unit!28641)))

(assert (=> b!1620422 (rulesProduceIndividualToken!1406 thiss!17113 rules!1846 (h!23141 tokens!457))))

(declare-fun lt!582676 () Unit!28635)

(declare-fun lt!582678 () Unit!28635)

(assert (=> b!1620422 (= lt!582676 lt!582678)))

(assert (=> b!1620422 (rulesProduceIndividualToken!1406 thiss!17113 rules!1846 (h!23141 (t!148691 tokens!457)))))

(declare-fun lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!554 (LexerInterface!2754 List!17809 List!17810 Token!5816) Unit!28635)

(assert (=> b!1620422 (= lt!582678 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!554 thiss!17113 rules!1846 tokens!457 (h!23141 (t!148691 tokens!457))))))

(declare-fun lt!582677 () Unit!28635)

(declare-fun lt!582681 () Unit!28635)

(assert (=> b!1620422 (= lt!582677 lt!582681)))

(assert (=> b!1620422 (rulesProduceIndividualToken!1406 thiss!17113 rules!1846 (h!23141 tokens!457))))

(assert (=> b!1620422 (= lt!582681 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!554 thiss!17113 rules!1846 tokens!457 (h!23141 tokens!457)))))

(declare-fun b!1620423 () Bool)

(assert (=> b!1620423 (= e!1039279 (tokensListTwoByTwoPredicateSeparableList!447 thiss!17113 (Cons!17740 (h!23141 (t!148691 tokens!457)) (t!148691 (t!148691 tokens!457))) rules!1846))))

(assert (= (and d!487925 (not res!723635)) b!1620422))

(assert (= (and b!1620422 res!723636) b!1620423))

(assert (=> b!1620422 m!1944571))

(assert (=> b!1620422 m!1944651))

(declare-fun m!1944783 () Bool)

(assert (=> b!1620422 m!1944783))

(assert (=> b!1620422 m!1944651))

(declare-fun m!1944785 () Bool)

(assert (=> b!1620422 m!1944785))

(declare-fun m!1944787 () Bool)

(assert (=> b!1620422 m!1944787))

(declare-fun m!1944789 () Bool)

(assert (=> b!1620422 m!1944789))

(assert (=> b!1620422 m!1944529))

(declare-fun m!1944791 () Bool)

(assert (=> b!1620423 m!1944791))

(assert (=> b!1620310 d!487925))

(declare-fun d!487939 () Bool)

(declare-fun isEmpty!10765 (Option!3264) Bool)

(assert (=> d!487939 (= (isDefined!2631 (maxPrefixZipperSequence!649 thiss!17113 rules!1846 (seqFromList!2000 (originalCharacters!3939 (h!23141 tokens!457))))) (not (isEmpty!10765 (maxPrefixZipperSequence!649 thiss!17113 rules!1846 (seqFromList!2000 (originalCharacters!3939 (h!23141 tokens!457)))))))))

(declare-fun bs!394458 () Bool)

(assert (= bs!394458 d!487939))

(assert (=> bs!394458 m!1944561))

(declare-fun m!1944793 () Bool)

(assert (=> bs!394458 m!1944793))

(assert (=> b!1620311 d!487939))

(declare-fun b!1620457 () Bool)

(declare-fun e!1039302 () Option!3264)

(declare-fun call!105092 () Option!3264)

(assert (=> b!1620457 (= e!1039302 call!105092)))

(declare-fun b!1620458 () Bool)

(declare-fun res!723666 () Bool)

(declare-fun e!1039299 () Bool)

(assert (=> b!1620458 (=> (not res!723666) (not e!1039299))))

(declare-fun e!1039301 () Bool)

(assert (=> b!1620458 (= res!723666 e!1039301)))

(declare-fun res!723661 () Bool)

(assert (=> b!1620458 (=> res!723661 e!1039301)))

(declare-fun lt!582737 () Option!3264)

(assert (=> b!1620458 (= res!723661 (not (isDefined!2631 lt!582737)))))

(declare-fun b!1620459 () Bool)

(declare-fun e!1039300 () Bool)

(declare-fun get!5098 (Option!3264) tuple2!17290)

(declare-fun maxPrefixZipper!295 (LexerInterface!2754 List!17809 List!17808) Option!3263)

(assert (=> b!1620459 (= e!1039300 (= (list!6947 (_2!10047 (get!5098 lt!582737))) (_2!10046 (get!5096 (maxPrefixZipper!295 thiss!17113 rules!1846 (list!6947 (seqFromList!2000 (originalCharacters!3939 (h!23141 tokens!457)))))))))))

(declare-fun b!1620460 () Bool)

(declare-fun e!1039303 () Bool)

(assert (=> b!1620460 (= e!1039299 e!1039303)))

(declare-fun res!723665 () Bool)

(assert (=> b!1620460 (=> res!723665 e!1039303)))

(assert (=> b!1620460 (= res!723665 (not (isDefined!2631 lt!582737)))))

(declare-fun b!1620462 () Bool)

(assert (=> b!1620462 (= e!1039301 e!1039300)))

(declare-fun res!723664 () Bool)

(assert (=> b!1620462 (=> (not res!723664) (not e!1039300))))

(assert (=> b!1620462 (= res!723664 (= (_1!10047 (get!5098 lt!582737)) (_1!10046 (get!5096 (maxPrefixZipper!295 thiss!17113 rules!1846 (list!6947 (seqFromList!2000 (originalCharacters!3939 (h!23141 tokens!457)))))))))))

(declare-fun d!487941 () Bool)

(assert (=> d!487941 e!1039299))

(declare-fun res!723662 () Bool)

(assert (=> d!487941 (=> (not res!723662) (not e!1039299))))

(assert (=> d!487941 (= res!723662 (= (isDefined!2631 lt!582737) (isDefined!2630 (maxPrefixZipper!295 thiss!17113 rules!1846 (list!6947 (seqFromList!2000 (originalCharacters!3939 (h!23141 tokens!457))))))))))

(assert (=> d!487941 (= lt!582737 e!1039302)))

(declare-fun c!263924 () Bool)

(assert (=> d!487941 (= c!263924 (and ((_ is Cons!17739) rules!1846) ((_ is Nil!17739) (t!148690 rules!1846))))))

(declare-fun lt!582742 () Unit!28635)

(declare-fun lt!582739 () Unit!28635)

(assert (=> d!487941 (= lt!582742 lt!582739)))

(declare-fun lt!582740 () List!17808)

(declare-fun lt!582736 () List!17808)

(assert (=> d!487941 (isPrefix!1385 lt!582740 lt!582736)))

(declare-fun lemmaIsPrefixRefl!950 (List!17808 List!17808) Unit!28635)

(assert (=> d!487941 (= lt!582739 (lemmaIsPrefixRefl!950 lt!582740 lt!582736))))

(assert (=> d!487941 (= lt!582736 (list!6947 (seqFromList!2000 (originalCharacters!3939 (h!23141 tokens!457)))))))

(assert (=> d!487941 (= lt!582740 (list!6947 (seqFromList!2000 (originalCharacters!3939 (h!23141 tokens!457)))))))

(declare-fun rulesValidInductive!962 (LexerInterface!2754 List!17809) Bool)

(assert (=> d!487941 (rulesValidInductive!962 thiss!17113 rules!1846)))

(assert (=> d!487941 (= (maxPrefixZipperSequence!649 thiss!17113 rules!1846 (seqFromList!2000 (originalCharacters!3939 (h!23141 tokens!457)))) lt!582737)))

(declare-fun b!1620461 () Bool)

(declare-fun e!1039298 () Bool)

(assert (=> b!1620461 (= e!1039298 (= (list!6947 (_2!10047 (get!5098 lt!582737))) (_2!10046 (get!5096 (maxPrefix!1318 thiss!17113 rules!1846 (list!6947 (seqFromList!2000 (originalCharacters!3939 (h!23141 tokens!457)))))))))))

(declare-fun b!1620463 () Bool)

(declare-fun lt!582738 () Option!3264)

(declare-fun lt!582741 () Option!3264)

(assert (=> b!1620463 (= e!1039302 (ite (and ((_ is None!3263) lt!582738) ((_ is None!3263) lt!582741)) None!3263 (ite ((_ is None!3263) lt!582741) lt!582738 (ite ((_ is None!3263) lt!582738) lt!582741 (ite (>= (size!14222 (_1!10047 (v!24268 lt!582738))) (size!14222 (_1!10047 (v!24268 lt!582741)))) lt!582738 lt!582741)))))))

(assert (=> b!1620463 (= lt!582738 call!105092)))

(assert (=> b!1620463 (= lt!582741 (maxPrefixZipperSequence!649 thiss!17113 (t!148690 rules!1846) (seqFromList!2000 (originalCharacters!3939 (h!23141 tokens!457)))))))

(declare-fun bm!105087 () Bool)

(declare-fun maxPrefixOneRuleZipperSequence!305 (LexerInterface!2754 Rule!6050 BalanceConc!11740) Option!3264)

(assert (=> bm!105087 (= call!105092 (maxPrefixOneRuleZipperSequence!305 thiss!17113 (h!23140 rules!1846) (seqFromList!2000 (originalCharacters!3939 (h!23141 tokens!457)))))))

(declare-fun b!1620464 () Bool)

(assert (=> b!1620464 (= e!1039303 e!1039298)))

(declare-fun res!723663 () Bool)

(assert (=> b!1620464 (=> (not res!723663) (not e!1039298))))

(assert (=> b!1620464 (= res!723663 (= (_1!10047 (get!5098 lt!582737)) (_1!10046 (get!5096 (maxPrefix!1318 thiss!17113 rules!1846 (list!6947 (seqFromList!2000 (originalCharacters!3939 (h!23141 tokens!457)))))))))))

(assert (= (and d!487941 c!263924) b!1620457))

(assert (= (and d!487941 (not c!263924)) b!1620463))

(assert (= (or b!1620457 b!1620463) bm!105087))

(assert (= (and d!487941 res!723662) b!1620458))

(assert (= (and b!1620458 (not res!723661)) b!1620462))

(assert (= (and b!1620462 res!723664) b!1620459))

(assert (= (and b!1620458 res!723666) b!1620460))

(assert (= (and b!1620460 (not res!723665)) b!1620464))

(assert (= (and b!1620464 res!723663) b!1620461))

(declare-fun m!1944853 () Bool)

(assert (=> b!1620461 m!1944853))

(declare-fun m!1944855 () Bool)

(assert (=> b!1620461 m!1944855))

(declare-fun m!1944857 () Bool)

(assert (=> b!1620461 m!1944857))

(assert (=> b!1620461 m!1944855))

(declare-fun m!1944859 () Bool)

(assert (=> b!1620461 m!1944859))

(declare-fun m!1944861 () Bool)

(assert (=> b!1620461 m!1944861))

(assert (=> b!1620461 m!1944559))

(assert (=> b!1620461 m!1944853))

(assert (=> b!1620463 m!1944559))

(declare-fun m!1944863 () Bool)

(assert (=> b!1620463 m!1944863))

(declare-fun m!1944865 () Bool)

(assert (=> b!1620459 m!1944865))

(declare-fun m!1944867 () Bool)

(assert (=> b!1620459 m!1944867))

(assert (=> b!1620459 m!1944857))

(assert (=> b!1620459 m!1944853))

(assert (=> b!1620459 m!1944865))

(assert (=> b!1620459 m!1944861))

(assert (=> b!1620459 m!1944559))

(assert (=> b!1620459 m!1944853))

(declare-fun m!1944869 () Bool)

(assert (=> b!1620458 m!1944869))

(declare-fun m!1944871 () Bool)

(assert (=> d!487941 m!1944871))

(declare-fun m!1944873 () Bool)

(assert (=> d!487941 m!1944873))

(assert (=> d!487941 m!1944869))

(assert (=> d!487941 m!1944853))

(assert (=> d!487941 m!1944865))

(assert (=> d!487941 m!1944559))

(assert (=> d!487941 m!1944853))

(declare-fun m!1944875 () Bool)

(assert (=> d!487941 m!1944875))

(assert (=> d!487941 m!1944865))

(declare-fun m!1944877 () Bool)

(assert (=> d!487941 m!1944877))

(assert (=> b!1620460 m!1944869))

(assert (=> b!1620464 m!1944861))

(assert (=> b!1620464 m!1944559))

(assert (=> b!1620464 m!1944853))

(assert (=> b!1620464 m!1944853))

(assert (=> b!1620464 m!1944855))

(assert (=> b!1620464 m!1944855))

(assert (=> b!1620464 m!1944859))

(assert (=> b!1620462 m!1944861))

(assert (=> b!1620462 m!1944559))

(assert (=> b!1620462 m!1944853))

(assert (=> b!1620462 m!1944853))

(assert (=> b!1620462 m!1944865))

(assert (=> b!1620462 m!1944865))

(assert (=> b!1620462 m!1944867))

(assert (=> bm!105087 m!1944559))

(declare-fun m!1944879 () Bool)

(assert (=> bm!105087 m!1944879))

(assert (=> b!1620311 d!487941))

(declare-fun d!487951 () Bool)

(declare-fun fromListB!874 (List!17808) BalanceConc!11740)

(assert (=> d!487951 (= (seqFromList!2000 (originalCharacters!3939 (h!23141 tokens!457))) (fromListB!874 (originalCharacters!3939 (h!23141 tokens!457))))))

(declare-fun bs!394461 () Bool)

(assert (= bs!394461 d!487951))

(declare-fun m!1944881 () Bool)

(assert (=> bs!394461 m!1944881))

(assert (=> b!1620311 d!487951))

(declare-fun d!487953 () Bool)

(assert (=> d!487953 (= (isEmpty!10759 rules!1846) ((_ is Nil!17739) rules!1846))))

(assert (=> b!1620307 d!487953))

(declare-fun d!487955 () Bool)

(assert (=> d!487955 (= (head!3384 lt!582588) (h!23139 lt!582588))))

(assert (=> b!1620308 d!487955))

(declare-fun d!487957 () Bool)

(declare-fun isEmpty!10766 (Option!3263) Bool)

(assert (=> d!487957 (= (isDefined!2630 lt!582578) (not (isEmpty!10766 lt!582578)))))

(declare-fun bs!394462 () Bool)

(assert (= bs!394462 d!487957))

(declare-fun m!1944883 () Bool)

(assert (=> bs!394462 m!1944883))

(assert (=> b!1620304 d!487957))

(declare-fun b!1620479 () Bool)

(declare-fun e!1039312 () Unit!28635)

(declare-fun Unit!28642 () Unit!28635)

(assert (=> b!1620479 (= e!1039312 Unit!28642)))

(declare-fun lt!582788 () List!17808)

(assert (=> b!1620479 (= lt!582788 (++!4699 lt!582569 lt!582588))))

(declare-fun lt!582792 () Unit!28635)

(declare-fun lt!582791 () Token!5816)

(declare-fun lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!168 (LexerInterface!2754 Rule!6050 List!17809 List!17808) Unit!28635)

(assert (=> b!1620479 (= lt!582792 (lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!168 thiss!17113 (rule!4951 lt!582791) rules!1846 lt!582788))))

(declare-fun maxPrefixOneRule!765 (LexerInterface!2754 Rule!6050 List!17808) Option!3263)

(assert (=> b!1620479 (isEmpty!10766 (maxPrefixOneRule!765 thiss!17113 (rule!4951 lt!582791) lt!582788))))

(declare-fun lt!582784 () Unit!28635)

(assert (=> b!1620479 (= lt!582784 lt!582792)))

(declare-fun lt!582781 () List!17808)

(assert (=> b!1620479 (= lt!582781 (list!6947 (charsOf!1774 lt!582791)))))

(declare-fun lt!582789 () Unit!28635)

(declare-fun lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!164 (LexerInterface!2754 Rule!6050 List!17808 List!17808) Unit!28635)

(assert (=> b!1620479 (= lt!582789 (lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!164 thiss!17113 (rule!4951 lt!582791) lt!582781 (++!4699 lt!582569 lt!582588)))))

(assert (=> b!1620479 (not (matchR!1952 (regex!3125 (rule!4951 lt!582791)) lt!582781))))

(declare-fun lt!582794 () Unit!28635)

(assert (=> b!1620479 (= lt!582794 lt!582789)))

(assert (=> b!1620479 false))

(declare-fun e!1039313 () Bool)

(declare-fun b!1620478 () Bool)

(declare-datatypes ((Option!3266 0))(
  ( (None!3265) (Some!3265 (v!24276 Rule!6050)) )
))
(declare-fun get!5099 (Option!3266) Rule!6050)

(declare-fun getRuleFromTag!274 (LexerInterface!2754 List!17809 String!20407) Option!3266)

(assert (=> b!1620478 (= e!1039313 (= (rule!4951 lt!582791) (get!5099 (getRuleFromTag!274 thiss!17113 rules!1846 (tag!3403 (rule!4951 lt!582791))))))))

(declare-fun b!1620480 () Bool)

(declare-fun Unit!28643 () Unit!28635)

(assert (=> b!1620480 (= e!1039312 Unit!28643)))

(declare-fun d!487959 () Bool)

(assert (=> d!487959 (isDefined!2630 (maxPrefix!1318 thiss!17113 rules!1846 (++!4699 lt!582569 lt!582588)))))

(declare-fun lt!582780 () Unit!28635)

(assert (=> d!487959 (= lt!582780 e!1039312)))

(declare-fun c!263927 () Bool)

(assert (=> d!487959 (= c!263927 (isEmpty!10766 (maxPrefix!1318 thiss!17113 rules!1846 (++!4699 lt!582569 lt!582588))))))

(declare-fun lt!582795 () Unit!28635)

(declare-fun lt!582786 () Unit!28635)

(assert (=> d!487959 (= lt!582795 lt!582786)))

(assert (=> d!487959 e!1039313))

(declare-fun res!723676 () Bool)

(assert (=> d!487959 (=> (not res!723676) (not e!1039313))))

(declare-fun isDefined!2633 (Option!3266) Bool)

(assert (=> d!487959 (= res!723676 (isDefined!2633 (getRuleFromTag!274 thiss!17113 rules!1846 (tag!3403 (rule!4951 lt!582791)))))))

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!274 (LexerInterface!2754 List!17809 List!17808 Token!5816) Unit!28635)

(assert (=> d!487959 (= lt!582786 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!274 thiss!17113 rules!1846 lt!582569 lt!582791))))

(declare-fun lt!582785 () Unit!28635)

(declare-fun lt!582793 () Unit!28635)

(assert (=> d!487959 (= lt!582785 lt!582793)))

(declare-fun lt!582790 () List!17808)

(assert (=> d!487959 (isPrefix!1385 lt!582790 (++!4699 lt!582569 lt!582588))))

(declare-fun lemmaPrefixStaysPrefixWhenAddingToSuffix!160 (List!17808 List!17808 List!17808) Unit!28635)

(assert (=> d!487959 (= lt!582793 (lemmaPrefixStaysPrefixWhenAddingToSuffix!160 lt!582790 lt!582569 lt!582588))))

(assert (=> d!487959 (= lt!582790 (list!6947 (charsOf!1774 lt!582791)))))

(declare-fun lt!582779 () Unit!28635)

(declare-fun lt!582783 () Unit!28635)

(assert (=> d!487959 (= lt!582779 lt!582783)))

(declare-fun lt!582782 () List!17808)

(declare-fun lt!582787 () List!17808)

(assert (=> d!487959 (isPrefix!1385 lt!582782 (++!4699 lt!582782 lt!582787))))

(assert (=> d!487959 (= lt!582783 (lemmaConcatTwoListThenFirstIsPrefix!910 lt!582782 lt!582787))))

(assert (=> d!487959 (= lt!582787 (_2!10046 (get!5096 (maxPrefix!1318 thiss!17113 rules!1846 lt!582569))))))

(assert (=> d!487959 (= lt!582782 (list!6947 (charsOf!1774 lt!582791)))))

(declare-fun head!3388 (List!17810) Token!5816)

(assert (=> d!487959 (= lt!582791 (head!3388 (list!6948 (_1!10045 (lex!1238 thiss!17113 rules!1846 (seqFromList!2000 lt!582569))))))))

(assert (=> d!487959 (not (isEmpty!10759 rules!1846))))

(assert (=> d!487959 (= (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!328 thiss!17113 rules!1846 lt!582569 lt!582588) lt!582780)))

(declare-fun b!1620477 () Bool)

(declare-fun res!723675 () Bool)

(assert (=> b!1620477 (=> (not res!723675) (not e!1039313))))

(assert (=> b!1620477 (= res!723675 (matchR!1952 (regex!3125 (get!5099 (getRuleFromTag!274 thiss!17113 rules!1846 (tag!3403 (rule!4951 lt!582791))))) (list!6947 (charsOf!1774 lt!582791))))))

(assert (= (and d!487959 res!723676) b!1620477))

(assert (= (and b!1620477 res!723675) b!1620478))

(assert (= (and d!487959 c!263927) b!1620479))

(assert (= (and d!487959 (not c!263927)) b!1620480))

(declare-fun m!1944885 () Bool)

(assert (=> b!1620479 m!1944885))

(assert (=> b!1620479 m!1944607))

(assert (=> b!1620479 m!1944607))

(declare-fun m!1944887 () Bool)

(assert (=> b!1620479 m!1944887))

(assert (=> b!1620479 m!1944885))

(declare-fun m!1944889 () Bool)

(assert (=> b!1620479 m!1944889))

(declare-fun m!1944891 () Bool)

(assert (=> b!1620479 m!1944891))

(declare-fun m!1944893 () Bool)

(assert (=> b!1620479 m!1944893))

(declare-fun m!1944895 () Bool)

(assert (=> b!1620479 m!1944895))

(assert (=> b!1620479 m!1944891))

(declare-fun m!1944897 () Bool)

(assert (=> b!1620479 m!1944897))

(declare-fun m!1944899 () Bool)

(assert (=> b!1620478 m!1944899))

(assert (=> b!1620478 m!1944899))

(declare-fun m!1944901 () Bool)

(assert (=> b!1620478 m!1944901))

(declare-fun m!1944903 () Bool)

(assert (=> d!487959 m!1944903))

(assert (=> d!487959 m!1944899))

(declare-fun m!1944905 () Bool)

(assert (=> d!487959 m!1944905))

(assert (=> d!487959 m!1944607))

(assert (=> d!487959 m!1944607))

(declare-fun m!1944907 () Bool)

(assert (=> d!487959 m!1944907))

(assert (=> d!487959 m!1944533))

(assert (=> d!487959 m!1944535))

(assert (=> d!487959 m!1944543))

(declare-fun m!1944909 () Bool)

(assert (=> d!487959 m!1944909))

(assert (=> d!487959 m!1944907))

(declare-fun m!1944911 () Bool)

(assert (=> d!487959 m!1944911))

(assert (=> d!487959 m!1944885))

(assert (=> d!487959 m!1944889))

(assert (=> d!487959 m!1944607))

(declare-fun m!1944913 () Bool)

(assert (=> d!487959 m!1944913))

(declare-fun m!1944915 () Bool)

(assert (=> d!487959 m!1944915))

(declare-fun m!1944917 () Bool)

(assert (=> d!487959 m!1944917))

(assert (=> d!487959 m!1944885))

(assert (=> d!487959 m!1944533))

(declare-fun m!1944919 () Bool)

(assert (=> d!487959 m!1944919))

(declare-fun m!1944921 () Bool)

(assert (=> d!487959 m!1944921))

(assert (=> d!487959 m!1944543))

(assert (=> d!487959 m!1944591))

(assert (=> d!487959 m!1944907))

(declare-fun m!1944923 () Bool)

(assert (=> d!487959 m!1944923))

(assert (=> d!487959 m!1944899))

(declare-fun m!1944925 () Bool)

(assert (=> d!487959 m!1944925))

(assert (=> d!487959 m!1944905))

(declare-fun m!1944927 () Bool)

(assert (=> d!487959 m!1944927))

(assert (=> d!487959 m!1944919))

(assert (=> b!1620477 m!1944885))

(assert (=> b!1620477 m!1944899))

(assert (=> b!1620477 m!1944885))

(assert (=> b!1620477 m!1944889))

(assert (=> b!1620477 m!1944899))

(assert (=> b!1620477 m!1944901))

(assert (=> b!1620477 m!1944889))

(declare-fun m!1944929 () Bool)

(assert (=> b!1620477 m!1944929))

(assert (=> b!1620304 d!487959))

(declare-fun b!1620499 () Bool)

(declare-fun res!723694 () Bool)

(declare-fun e!1039322 () Bool)

(assert (=> b!1620499 (=> (not res!723694) (not e!1039322))))

(declare-fun lt!582806 () Option!3263)

(assert (=> b!1620499 (= res!723694 (matchR!1952 (regex!3125 (rule!4951 (_1!10046 (get!5096 lt!582806)))) (list!6947 (charsOf!1774 (_1!10046 (get!5096 lt!582806))))))))

(declare-fun b!1620500 () Bool)

(declare-fun res!723695 () Bool)

(assert (=> b!1620500 (=> (not res!723695) (not e!1039322))))

(assert (=> b!1620500 (= res!723695 (< (size!14225 (_2!10046 (get!5096 lt!582806))) (size!14225 (originalCharacters!3939 (h!23141 tokens!457)))))))

(declare-fun b!1620501 () Bool)

(declare-fun e!1039321 () Option!3263)

(declare-fun call!105095 () Option!3263)

(assert (=> b!1620501 (= e!1039321 call!105095)))

(declare-fun d!487961 () Bool)

(declare-fun e!1039320 () Bool)

(assert (=> d!487961 e!1039320))

(declare-fun res!723697 () Bool)

(assert (=> d!487961 (=> res!723697 e!1039320)))

(assert (=> d!487961 (= res!723697 (isEmpty!10766 lt!582806))))

(assert (=> d!487961 (= lt!582806 e!1039321)))

(declare-fun c!263930 () Bool)

(assert (=> d!487961 (= c!263930 (and ((_ is Cons!17739) rules!1846) ((_ is Nil!17739) (t!148690 rules!1846))))))

(declare-fun lt!582808 () Unit!28635)

(declare-fun lt!582807 () Unit!28635)

(assert (=> d!487961 (= lt!582808 lt!582807)))

(assert (=> d!487961 (isPrefix!1385 (originalCharacters!3939 (h!23141 tokens!457)) (originalCharacters!3939 (h!23141 tokens!457)))))

(assert (=> d!487961 (= lt!582807 (lemmaIsPrefixRefl!950 (originalCharacters!3939 (h!23141 tokens!457)) (originalCharacters!3939 (h!23141 tokens!457))))))

(assert (=> d!487961 (rulesValidInductive!962 thiss!17113 rules!1846)))

(assert (=> d!487961 (= (maxPrefix!1318 thiss!17113 rules!1846 (originalCharacters!3939 (h!23141 tokens!457))) lt!582806)))

(declare-fun b!1620502 () Bool)

(declare-fun res!723693 () Bool)

(assert (=> b!1620502 (=> (not res!723693) (not e!1039322))))

(assert (=> b!1620502 (= res!723693 (= (++!4699 (list!6947 (charsOf!1774 (_1!10046 (get!5096 lt!582806)))) (_2!10046 (get!5096 lt!582806))) (originalCharacters!3939 (h!23141 tokens!457))))))

(declare-fun bm!105090 () Bool)

(assert (=> bm!105090 (= call!105095 (maxPrefixOneRule!765 thiss!17113 (h!23140 rules!1846) (originalCharacters!3939 (h!23141 tokens!457))))))

(declare-fun b!1620503 () Bool)

(assert (=> b!1620503 (= e!1039320 e!1039322)))

(declare-fun res!723691 () Bool)

(assert (=> b!1620503 (=> (not res!723691) (not e!1039322))))

(assert (=> b!1620503 (= res!723691 (isDefined!2630 lt!582806))))

(declare-fun b!1620504 () Bool)

(declare-fun res!723696 () Bool)

(assert (=> b!1620504 (=> (not res!723696) (not e!1039322))))

(declare-fun apply!4494 (TokenValueInjection!6090 BalanceConc!11740) TokenValue!3215)

(assert (=> b!1620504 (= res!723696 (= (value!98735 (_1!10046 (get!5096 lt!582806))) (apply!4494 (transformation!3125 (rule!4951 (_1!10046 (get!5096 lt!582806)))) (seqFromList!2000 (originalCharacters!3939 (_1!10046 (get!5096 lt!582806)))))))))

(declare-fun b!1620505 () Bool)

(declare-fun res!723692 () Bool)

(assert (=> b!1620505 (=> (not res!723692) (not e!1039322))))

(assert (=> b!1620505 (= res!723692 (= (list!6947 (charsOf!1774 (_1!10046 (get!5096 lt!582806)))) (originalCharacters!3939 (_1!10046 (get!5096 lt!582806)))))))

(declare-fun b!1620506 () Bool)

(declare-fun lt!582810 () Option!3263)

(declare-fun lt!582809 () Option!3263)

(assert (=> b!1620506 (= e!1039321 (ite (and ((_ is None!3262) lt!582810) ((_ is None!3262) lt!582809)) None!3262 (ite ((_ is None!3262) lt!582809) lt!582810 (ite ((_ is None!3262) lt!582810) lt!582809 (ite (>= (size!14222 (_1!10046 (v!24267 lt!582810))) (size!14222 (_1!10046 (v!24267 lt!582809)))) lt!582810 lt!582809)))))))

(assert (=> b!1620506 (= lt!582810 call!105095)))

(assert (=> b!1620506 (= lt!582809 (maxPrefix!1318 thiss!17113 (t!148690 rules!1846) (originalCharacters!3939 (h!23141 tokens!457))))))

(declare-fun b!1620507 () Bool)

(declare-fun contains!3104 (List!17809 Rule!6050) Bool)

(assert (=> b!1620507 (= e!1039322 (contains!3104 rules!1846 (rule!4951 (_1!10046 (get!5096 lt!582806)))))))

(assert (= (and d!487961 c!263930) b!1620501))

(assert (= (and d!487961 (not c!263930)) b!1620506))

(assert (= (or b!1620501 b!1620506) bm!105090))

(assert (= (and d!487961 (not res!723697)) b!1620503))

(assert (= (and b!1620503 res!723691) b!1620505))

(assert (= (and b!1620505 res!723692) b!1620500))

(assert (= (and b!1620500 res!723695) b!1620502))

(assert (= (and b!1620502 res!723693) b!1620504))

(assert (= (and b!1620504 res!723696) b!1620499))

(assert (= (and b!1620499 res!723694) b!1620507))

(declare-fun m!1944931 () Bool)

(assert (=> bm!105090 m!1944931))

(declare-fun m!1944933 () Bool)

(assert (=> b!1620500 m!1944933))

(declare-fun m!1944935 () Bool)

(assert (=> b!1620500 m!1944935))

(declare-fun m!1944937 () Bool)

(assert (=> b!1620500 m!1944937))

(declare-fun m!1944939 () Bool)

(assert (=> b!1620503 m!1944939))

(assert (=> b!1620507 m!1944933))

(declare-fun m!1944941 () Bool)

(assert (=> b!1620507 m!1944941))

(declare-fun m!1944943 () Bool)

(assert (=> d!487961 m!1944943))

(declare-fun m!1944945 () Bool)

(assert (=> d!487961 m!1944945))

(declare-fun m!1944947 () Bool)

(assert (=> d!487961 m!1944947))

(assert (=> d!487961 m!1944871))

(assert (=> b!1620499 m!1944933))

(declare-fun m!1944949 () Bool)

(assert (=> b!1620499 m!1944949))

(assert (=> b!1620499 m!1944949))

(declare-fun m!1944951 () Bool)

(assert (=> b!1620499 m!1944951))

(assert (=> b!1620499 m!1944951))

(declare-fun m!1944953 () Bool)

(assert (=> b!1620499 m!1944953))

(assert (=> b!1620504 m!1944933))

(declare-fun m!1944955 () Bool)

(assert (=> b!1620504 m!1944955))

(assert (=> b!1620504 m!1944955))

(declare-fun m!1944957 () Bool)

(assert (=> b!1620504 m!1944957))

(declare-fun m!1944959 () Bool)

(assert (=> b!1620506 m!1944959))

(assert (=> b!1620502 m!1944933))

(assert (=> b!1620502 m!1944949))

(assert (=> b!1620502 m!1944949))

(assert (=> b!1620502 m!1944951))

(assert (=> b!1620502 m!1944951))

(declare-fun m!1944961 () Bool)

(assert (=> b!1620502 m!1944961))

(assert (=> b!1620505 m!1944933))

(assert (=> b!1620505 m!1944949))

(assert (=> b!1620505 m!1944949))

(assert (=> b!1620505 m!1944951))

(assert (=> b!1620306 d!487961))

(declare-fun d!487963 () Bool)

(declare-fun lt!582813 () Bool)

(assert (=> d!487963 (= lt!582813 (isEmpty!10760 (list!6947 lt!582586)))))

(declare-fun isEmpty!10768 (Conc!5898) Bool)

(assert (=> d!487963 (= lt!582813 (isEmpty!10768 (c!263895 lt!582586)))))

(assert (=> d!487963 (= (isEmpty!10758 lt!582586) lt!582813)))

(declare-fun bs!394463 () Bool)

(assert (= bs!394463 d!487963))

(assert (=> bs!394463 m!1944601))

(assert (=> bs!394463 m!1944601))

(declare-fun m!1944963 () Bool)

(assert (=> bs!394463 m!1944963))

(declare-fun m!1944965 () Bool)

(assert (=> bs!394463 m!1944965))

(assert (=> b!1620306 d!487963))

(declare-fun d!487965 () Bool)

(assert (=> d!487965 (= (isDefined!2630 (maxPrefix!1318 thiss!17113 rules!1846 (originalCharacters!3939 (h!23141 tokens!457)))) (not (isEmpty!10766 (maxPrefix!1318 thiss!17113 rules!1846 (originalCharacters!3939 (h!23141 tokens!457))))))))

(declare-fun bs!394464 () Bool)

(assert (= bs!394464 d!487965))

(assert (=> bs!394464 m!1944545))

(declare-fun m!1944967 () Bool)

(assert (=> bs!394464 m!1944967))

(assert (=> b!1620306 d!487965))

(declare-fun d!487967 () Bool)

(assert (=> d!487967 (= (isDefined!2630 lt!582572) (not (isEmpty!10766 lt!582572)))))

(declare-fun bs!394465 () Bool)

(assert (= bs!394465 d!487967))

(declare-fun m!1944969 () Bool)

(assert (=> bs!394465 m!1944969))

(assert (=> b!1620306 d!487967))

(declare-fun b!1620508 () Bool)

(declare-fun res!723701 () Bool)

(declare-fun e!1039325 () Bool)

(assert (=> b!1620508 (=> (not res!723701) (not e!1039325))))

(declare-fun lt!582814 () Option!3263)

(assert (=> b!1620508 (= res!723701 (matchR!1952 (regex!3125 (rule!4951 (_1!10046 (get!5096 lt!582814)))) (list!6947 (charsOf!1774 (_1!10046 (get!5096 lt!582814))))))))

(declare-fun b!1620509 () Bool)

(declare-fun res!723702 () Bool)

(assert (=> b!1620509 (=> (not res!723702) (not e!1039325))))

(assert (=> b!1620509 (= res!723702 (< (size!14225 (_2!10046 (get!5096 lt!582814))) (size!14225 lt!582569)))))

(declare-fun b!1620510 () Bool)

(declare-fun e!1039324 () Option!3263)

(declare-fun call!105096 () Option!3263)

(assert (=> b!1620510 (= e!1039324 call!105096)))

(declare-fun d!487969 () Bool)

(declare-fun e!1039323 () Bool)

(assert (=> d!487969 e!1039323))

(declare-fun res!723704 () Bool)

(assert (=> d!487969 (=> res!723704 e!1039323)))

(assert (=> d!487969 (= res!723704 (isEmpty!10766 lt!582814))))

(assert (=> d!487969 (= lt!582814 e!1039324)))

(declare-fun c!263931 () Bool)

(assert (=> d!487969 (= c!263931 (and ((_ is Cons!17739) rules!1846) ((_ is Nil!17739) (t!148690 rules!1846))))))

(declare-fun lt!582816 () Unit!28635)

(declare-fun lt!582815 () Unit!28635)

(assert (=> d!487969 (= lt!582816 lt!582815)))

(assert (=> d!487969 (isPrefix!1385 lt!582569 lt!582569)))

(assert (=> d!487969 (= lt!582815 (lemmaIsPrefixRefl!950 lt!582569 lt!582569))))

(assert (=> d!487969 (rulesValidInductive!962 thiss!17113 rules!1846)))

(assert (=> d!487969 (= (maxPrefix!1318 thiss!17113 rules!1846 lt!582569) lt!582814)))

(declare-fun b!1620511 () Bool)

(declare-fun res!723700 () Bool)

(assert (=> b!1620511 (=> (not res!723700) (not e!1039325))))

(assert (=> b!1620511 (= res!723700 (= (++!4699 (list!6947 (charsOf!1774 (_1!10046 (get!5096 lt!582814)))) (_2!10046 (get!5096 lt!582814))) lt!582569))))

(declare-fun bm!105091 () Bool)

(assert (=> bm!105091 (= call!105096 (maxPrefixOneRule!765 thiss!17113 (h!23140 rules!1846) lt!582569))))

(declare-fun b!1620512 () Bool)

(assert (=> b!1620512 (= e!1039323 e!1039325)))

(declare-fun res!723698 () Bool)

(assert (=> b!1620512 (=> (not res!723698) (not e!1039325))))

(assert (=> b!1620512 (= res!723698 (isDefined!2630 lt!582814))))

(declare-fun b!1620513 () Bool)

(declare-fun res!723703 () Bool)

(assert (=> b!1620513 (=> (not res!723703) (not e!1039325))))

(assert (=> b!1620513 (= res!723703 (= (value!98735 (_1!10046 (get!5096 lt!582814))) (apply!4494 (transformation!3125 (rule!4951 (_1!10046 (get!5096 lt!582814)))) (seqFromList!2000 (originalCharacters!3939 (_1!10046 (get!5096 lt!582814)))))))))

(declare-fun b!1620514 () Bool)

(declare-fun res!723699 () Bool)

(assert (=> b!1620514 (=> (not res!723699) (not e!1039325))))

(assert (=> b!1620514 (= res!723699 (= (list!6947 (charsOf!1774 (_1!10046 (get!5096 lt!582814)))) (originalCharacters!3939 (_1!10046 (get!5096 lt!582814)))))))

(declare-fun b!1620515 () Bool)

(declare-fun lt!582818 () Option!3263)

(declare-fun lt!582817 () Option!3263)

(assert (=> b!1620515 (= e!1039324 (ite (and ((_ is None!3262) lt!582818) ((_ is None!3262) lt!582817)) None!3262 (ite ((_ is None!3262) lt!582817) lt!582818 (ite ((_ is None!3262) lt!582818) lt!582817 (ite (>= (size!14222 (_1!10046 (v!24267 lt!582818))) (size!14222 (_1!10046 (v!24267 lt!582817)))) lt!582818 lt!582817)))))))

(assert (=> b!1620515 (= lt!582818 call!105096)))

(assert (=> b!1620515 (= lt!582817 (maxPrefix!1318 thiss!17113 (t!148690 rules!1846) lt!582569))))

(declare-fun b!1620516 () Bool)

(assert (=> b!1620516 (= e!1039325 (contains!3104 rules!1846 (rule!4951 (_1!10046 (get!5096 lt!582814)))))))

(assert (= (and d!487969 c!263931) b!1620510))

(assert (= (and d!487969 (not c!263931)) b!1620515))

(assert (= (or b!1620510 b!1620515) bm!105091))

(assert (= (and d!487969 (not res!723704)) b!1620512))

(assert (= (and b!1620512 res!723698) b!1620514))

(assert (= (and b!1620514 res!723699) b!1620509))

(assert (= (and b!1620509 res!723702) b!1620511))

(assert (= (and b!1620511 res!723700) b!1620513))

(assert (= (and b!1620513 res!723703) b!1620508))

(assert (= (and b!1620508 res!723701) b!1620516))

(declare-fun m!1944971 () Bool)

(assert (=> bm!105091 m!1944971))

(declare-fun m!1944973 () Bool)

(assert (=> b!1620509 m!1944973))

(declare-fun m!1944975 () Bool)

(assert (=> b!1620509 m!1944975))

(assert (=> b!1620509 m!1944689))

(declare-fun m!1944977 () Bool)

(assert (=> b!1620512 m!1944977))

(assert (=> b!1620516 m!1944973))

(declare-fun m!1944979 () Bool)

(assert (=> b!1620516 m!1944979))

(declare-fun m!1944981 () Bool)

(assert (=> d!487969 m!1944981))

(declare-fun m!1944983 () Bool)

(assert (=> d!487969 m!1944983))

(declare-fun m!1944985 () Bool)

(assert (=> d!487969 m!1944985))

(assert (=> d!487969 m!1944871))

(assert (=> b!1620508 m!1944973))

(declare-fun m!1944987 () Bool)

(assert (=> b!1620508 m!1944987))

(assert (=> b!1620508 m!1944987))

(declare-fun m!1944989 () Bool)

(assert (=> b!1620508 m!1944989))

(assert (=> b!1620508 m!1944989))

(declare-fun m!1944991 () Bool)

(assert (=> b!1620508 m!1944991))

(assert (=> b!1620513 m!1944973))

(declare-fun m!1944993 () Bool)

(assert (=> b!1620513 m!1944993))

(assert (=> b!1620513 m!1944993))

(declare-fun m!1944995 () Bool)

(assert (=> b!1620513 m!1944995))

(declare-fun m!1944997 () Bool)

(assert (=> b!1620515 m!1944997))

(assert (=> b!1620511 m!1944973))

(assert (=> b!1620511 m!1944987))

(assert (=> b!1620511 m!1944987))

(assert (=> b!1620511 m!1944989))

(assert (=> b!1620511 m!1944989))

(declare-fun m!1944999 () Bool)

(assert (=> b!1620511 m!1944999))

(assert (=> b!1620514 m!1944973))

(assert (=> b!1620514 m!1944987))

(assert (=> b!1620514 m!1944987))

(assert (=> b!1620514 m!1944989))

(assert (=> b!1620306 d!487969))

(declare-fun d!487971 () Bool)

(assert (=> d!487971 (= (get!5096 lt!582572) (v!24267 lt!582572))))

(assert (=> b!1620306 d!487971))

(declare-fun d!487973 () Bool)

(assert (=> d!487973 (= (separableTokensPredicate!696 thiss!17113 (h!23141 tokens!457) (h!23141 (t!148691 tokens!457)) rules!1846) (not (prefixMatchZipperSequence!503 (rulesRegex!515 thiss!17113 rules!1846) (++!4700 (charsOf!1774 (h!23141 tokens!457)) (singletonSeq!1528 (apply!4488 (charsOf!1774 (h!23141 (t!148691 tokens!457))) 0))))))))

(declare-fun bs!394466 () Bool)

(assert (= bs!394466 d!487973))

(assert (=> bs!394466 m!1944599))

(assert (=> bs!394466 m!1944651))

(assert (=> bs!394466 m!1944651))

(assert (=> bs!394466 m!1944645))

(assert (=> bs!394466 m!1944645))

(assert (=> bs!394466 m!1944647))

(assert (=> bs!394466 m!1944641))

(assert (=> bs!394466 m!1944641))

(declare-fun m!1945001 () Bool)

(assert (=> bs!394466 m!1945001))

(declare-fun m!1945003 () Bool)

(assert (=> bs!394466 m!1945003))

(assert (=> bs!394466 m!1944599))

(assert (=> bs!394466 m!1944647))

(assert (=> bs!394466 m!1945001))

(assert (=> b!1620301 d!487973))

(declare-fun d!487975 () Bool)

(declare-fun lt!582821 () BalanceConc!11740)

(assert (=> d!487975 (= (list!6947 lt!582821) (printList!869 thiss!17113 (list!6948 lt!582577)))))

(assert (=> d!487975 (= lt!582821 (printTailRec!807 thiss!17113 lt!582577 0 (BalanceConc!11741 Empty!5898)))))

(assert (=> d!487975 (= (print!1285 thiss!17113 lt!582577) lt!582821)))

(declare-fun bs!394467 () Bool)

(assert (= bs!394467 d!487975))

(declare-fun m!1945005 () Bool)

(assert (=> bs!394467 m!1945005))

(declare-fun m!1945007 () Bool)

(assert (=> bs!394467 m!1945007))

(assert (=> bs!394467 m!1945007))

(declare-fun m!1945009 () Bool)

(assert (=> bs!394467 m!1945009))

(assert (=> bs!394467 m!1944623))

(assert (=> b!1620323 d!487975))

(declare-fun d!487977 () Bool)

(declare-fun lt!582839 () BalanceConc!11740)

(declare-fun printListTailRec!345 (LexerInterface!2754 List!17810 List!17808) List!17808)

(declare-fun dropList!587 (BalanceConc!11742 Int) List!17810)

(assert (=> d!487977 (= (list!6947 lt!582839) (printListTailRec!345 thiss!17113 (dropList!587 lt!582577 0) (list!6947 (BalanceConc!11741 Empty!5898))))))

(declare-fun e!1039330 () BalanceConc!11740)

(assert (=> d!487977 (= lt!582839 e!1039330)))

(declare-fun c!263934 () Bool)

(declare-fun size!14228 (BalanceConc!11742) Int)

(assert (=> d!487977 (= c!263934 (>= 0 (size!14228 lt!582577)))))

(declare-fun e!1039331 () Bool)

(assert (=> d!487977 e!1039331))

(declare-fun res!723707 () Bool)

(assert (=> d!487977 (=> (not res!723707) (not e!1039331))))

(assert (=> d!487977 (= res!723707 (>= 0 0))))

(assert (=> d!487977 (= (printTailRec!807 thiss!17113 lt!582577 0 (BalanceConc!11741 Empty!5898)) lt!582839)))

(declare-fun b!1620523 () Bool)

(assert (=> b!1620523 (= e!1039331 (<= 0 (size!14228 lt!582577)))))

(declare-fun b!1620524 () Bool)

(assert (=> b!1620524 (= e!1039330 (BalanceConc!11741 Empty!5898))))

(declare-fun b!1620525 () Bool)

(declare-fun apply!4495 (BalanceConc!11742 Int) Token!5816)

(assert (=> b!1620525 (= e!1039330 (printTailRec!807 thiss!17113 lt!582577 (+ 0 1) (++!4700 (BalanceConc!11741 Empty!5898) (charsOf!1774 (apply!4495 lt!582577 0)))))))

(declare-fun lt!582842 () List!17810)

(assert (=> b!1620525 (= lt!582842 (list!6948 lt!582577))))

(declare-fun lt!582836 () Unit!28635)

(declare-fun lemmaDropApply!552 (List!17810 Int) Unit!28635)

(assert (=> b!1620525 (= lt!582836 (lemmaDropApply!552 lt!582842 0))))

(declare-fun drop!862 (List!17810 Int) List!17810)

(declare-fun apply!4496 (List!17810 Int) Token!5816)

(assert (=> b!1620525 (= (head!3388 (drop!862 lt!582842 0)) (apply!4496 lt!582842 0))))

(declare-fun lt!582841 () Unit!28635)

(assert (=> b!1620525 (= lt!582841 lt!582836)))

(declare-fun lt!582838 () List!17810)

(assert (=> b!1620525 (= lt!582838 (list!6948 lt!582577))))

(declare-fun lt!582840 () Unit!28635)

(declare-fun lemmaDropTail!532 (List!17810 Int) Unit!28635)

(assert (=> b!1620525 (= lt!582840 (lemmaDropTail!532 lt!582838 0))))

(declare-fun tail!2344 (List!17810) List!17810)

(assert (=> b!1620525 (= (tail!2344 (drop!862 lt!582838 0)) (drop!862 lt!582838 (+ 0 1)))))

(declare-fun lt!582837 () Unit!28635)

(assert (=> b!1620525 (= lt!582837 lt!582840)))

(assert (= (and d!487977 res!723707) b!1620523))

(assert (= (and d!487977 c!263934) b!1620524))

(assert (= (and d!487977 (not c!263934)) b!1620525))

(declare-fun m!1945011 () Bool)

(assert (=> d!487977 m!1945011))

(declare-fun m!1945013 () Bool)

(assert (=> d!487977 m!1945013))

(assert (=> d!487977 m!1945013))

(declare-fun m!1945015 () Bool)

(assert (=> d!487977 m!1945015))

(declare-fun m!1945017 () Bool)

(assert (=> d!487977 m!1945017))

(declare-fun m!1945019 () Bool)

(assert (=> d!487977 m!1945019))

(assert (=> d!487977 m!1945015))

(assert (=> b!1620523 m!1945019))

(declare-fun m!1945021 () Bool)

(assert (=> b!1620525 m!1945021))

(declare-fun m!1945023 () Bool)

(assert (=> b!1620525 m!1945023))

(declare-fun m!1945025 () Bool)

(assert (=> b!1620525 m!1945025))

(declare-fun m!1945027 () Bool)

(assert (=> b!1620525 m!1945027))

(declare-fun m!1945029 () Bool)

(assert (=> b!1620525 m!1945029))

(declare-fun m!1945031 () Bool)

(assert (=> b!1620525 m!1945031))

(declare-fun m!1945033 () Bool)

(assert (=> b!1620525 m!1945033))

(declare-fun m!1945035 () Bool)

(assert (=> b!1620525 m!1945035))

(declare-fun m!1945037 () Bool)

(assert (=> b!1620525 m!1945037))

(declare-fun m!1945039 () Bool)

(assert (=> b!1620525 m!1945039))

(assert (=> b!1620525 m!1945031))

(declare-fun m!1945041 () Bool)

(assert (=> b!1620525 m!1945041))

(assert (=> b!1620525 m!1945039))

(assert (=> b!1620525 m!1945025))

(declare-fun m!1945043 () Bool)

(assert (=> b!1620525 m!1945043))

(assert (=> b!1620525 m!1945007))

(assert (=> b!1620525 m!1945041))

(assert (=> b!1620525 m!1945027))

(assert (=> b!1620323 d!487977))

(declare-fun d!487979 () Bool)

(declare-fun c!263937 () Bool)

(assert (=> d!487979 (= c!263937 ((_ is Cons!17740) (Cons!17740 (h!23141 tokens!457) Nil!17740)))))

(declare-fun e!1039334 () List!17808)

(assert (=> d!487979 (= (printList!869 thiss!17113 (Cons!17740 (h!23141 tokens!457) Nil!17740)) e!1039334)))

(declare-fun b!1620530 () Bool)

(assert (=> b!1620530 (= e!1039334 (++!4699 (list!6947 (charsOf!1774 (h!23141 (Cons!17740 (h!23141 tokens!457) Nil!17740)))) (printList!869 thiss!17113 (t!148691 (Cons!17740 (h!23141 tokens!457) Nil!17740)))))))

(declare-fun b!1620531 () Bool)

(assert (=> b!1620531 (= e!1039334 Nil!17738)))

(assert (= (and d!487979 c!263937) b!1620530))

(assert (= (and d!487979 (not c!263937)) b!1620531))

(declare-fun m!1945045 () Bool)

(assert (=> b!1620530 m!1945045))

(assert (=> b!1620530 m!1945045))

(declare-fun m!1945047 () Bool)

(assert (=> b!1620530 m!1945047))

(declare-fun m!1945049 () Bool)

(assert (=> b!1620530 m!1945049))

(assert (=> b!1620530 m!1945047))

(assert (=> b!1620530 m!1945049))

(declare-fun m!1945051 () Bool)

(assert (=> b!1620530 m!1945051))

(assert (=> b!1620323 d!487979))

(declare-fun b!1620532 () Bool)

(declare-fun res!723711 () Bool)

(declare-fun e!1039337 () Bool)

(assert (=> b!1620532 (=> (not res!723711) (not e!1039337))))

(declare-fun lt!582843 () Option!3263)

(assert (=> b!1620532 (= res!723711 (matchR!1952 (regex!3125 (rule!4951 (_1!10046 (get!5096 lt!582843)))) (list!6947 (charsOf!1774 (_1!10046 (get!5096 lt!582843))))))))

(declare-fun b!1620533 () Bool)

(declare-fun res!723712 () Bool)

(assert (=> b!1620533 (=> (not res!723712) (not e!1039337))))

(assert (=> b!1620533 (= res!723712 (< (size!14225 (_2!10046 (get!5096 lt!582843))) (size!14225 lt!582582)))))

(declare-fun b!1620534 () Bool)

(declare-fun e!1039336 () Option!3263)

(declare-fun call!105097 () Option!3263)

(assert (=> b!1620534 (= e!1039336 call!105097)))

(declare-fun d!487981 () Bool)

(declare-fun e!1039335 () Bool)

(assert (=> d!487981 e!1039335))

(declare-fun res!723714 () Bool)

(assert (=> d!487981 (=> res!723714 e!1039335)))

(assert (=> d!487981 (= res!723714 (isEmpty!10766 lt!582843))))

(assert (=> d!487981 (= lt!582843 e!1039336)))

(declare-fun c!263938 () Bool)

(assert (=> d!487981 (= c!263938 (and ((_ is Cons!17739) rules!1846) ((_ is Nil!17739) (t!148690 rules!1846))))))

(declare-fun lt!582845 () Unit!28635)

(declare-fun lt!582844 () Unit!28635)

(assert (=> d!487981 (= lt!582845 lt!582844)))

(assert (=> d!487981 (isPrefix!1385 lt!582582 lt!582582)))

(assert (=> d!487981 (= lt!582844 (lemmaIsPrefixRefl!950 lt!582582 lt!582582))))

(assert (=> d!487981 (rulesValidInductive!962 thiss!17113 rules!1846)))

(assert (=> d!487981 (= (maxPrefix!1318 thiss!17113 rules!1846 lt!582582) lt!582843)))

(declare-fun b!1620535 () Bool)

(declare-fun res!723710 () Bool)

(assert (=> b!1620535 (=> (not res!723710) (not e!1039337))))

(assert (=> b!1620535 (= res!723710 (= (++!4699 (list!6947 (charsOf!1774 (_1!10046 (get!5096 lt!582843)))) (_2!10046 (get!5096 lt!582843))) lt!582582))))

(declare-fun bm!105092 () Bool)

(assert (=> bm!105092 (= call!105097 (maxPrefixOneRule!765 thiss!17113 (h!23140 rules!1846) lt!582582))))

(declare-fun b!1620536 () Bool)

(assert (=> b!1620536 (= e!1039335 e!1039337)))

(declare-fun res!723708 () Bool)

(assert (=> b!1620536 (=> (not res!723708) (not e!1039337))))

(assert (=> b!1620536 (= res!723708 (isDefined!2630 lt!582843))))

(declare-fun b!1620537 () Bool)

(declare-fun res!723713 () Bool)

(assert (=> b!1620537 (=> (not res!723713) (not e!1039337))))

(assert (=> b!1620537 (= res!723713 (= (value!98735 (_1!10046 (get!5096 lt!582843))) (apply!4494 (transformation!3125 (rule!4951 (_1!10046 (get!5096 lt!582843)))) (seqFromList!2000 (originalCharacters!3939 (_1!10046 (get!5096 lt!582843)))))))))

(declare-fun b!1620538 () Bool)

(declare-fun res!723709 () Bool)

(assert (=> b!1620538 (=> (not res!723709) (not e!1039337))))

(assert (=> b!1620538 (= res!723709 (= (list!6947 (charsOf!1774 (_1!10046 (get!5096 lt!582843)))) (originalCharacters!3939 (_1!10046 (get!5096 lt!582843)))))))

(declare-fun b!1620539 () Bool)

(declare-fun lt!582847 () Option!3263)

(declare-fun lt!582846 () Option!3263)

(assert (=> b!1620539 (= e!1039336 (ite (and ((_ is None!3262) lt!582847) ((_ is None!3262) lt!582846)) None!3262 (ite ((_ is None!3262) lt!582846) lt!582847 (ite ((_ is None!3262) lt!582847) lt!582846 (ite (>= (size!14222 (_1!10046 (v!24267 lt!582847))) (size!14222 (_1!10046 (v!24267 lt!582846)))) lt!582847 lt!582846)))))))

(assert (=> b!1620539 (= lt!582847 call!105097)))

(assert (=> b!1620539 (= lt!582846 (maxPrefix!1318 thiss!17113 (t!148690 rules!1846) lt!582582))))

(declare-fun b!1620540 () Bool)

(assert (=> b!1620540 (= e!1039337 (contains!3104 rules!1846 (rule!4951 (_1!10046 (get!5096 lt!582843)))))))

(assert (= (and d!487981 c!263938) b!1620534))

(assert (= (and d!487981 (not c!263938)) b!1620539))

(assert (= (or b!1620534 b!1620539) bm!105092))

(assert (= (and d!487981 (not res!723714)) b!1620536))

(assert (= (and b!1620536 res!723708) b!1620538))

(assert (= (and b!1620538 res!723709) b!1620533))

(assert (= (and b!1620533 res!723712) b!1620535))

(assert (= (and b!1620535 res!723710) b!1620537))

(assert (= (and b!1620537 res!723713) b!1620532))

(assert (= (and b!1620532 res!723711) b!1620540))

(declare-fun m!1945053 () Bool)

(assert (=> bm!105092 m!1945053))

(declare-fun m!1945055 () Bool)

(assert (=> b!1620533 m!1945055))

(declare-fun m!1945057 () Bool)

(assert (=> b!1620533 m!1945057))

(declare-fun m!1945059 () Bool)

(assert (=> b!1620533 m!1945059))

(declare-fun m!1945061 () Bool)

(assert (=> b!1620536 m!1945061))

(assert (=> b!1620540 m!1945055))

(declare-fun m!1945063 () Bool)

(assert (=> b!1620540 m!1945063))

(declare-fun m!1945065 () Bool)

(assert (=> d!487981 m!1945065))

(declare-fun m!1945067 () Bool)

(assert (=> d!487981 m!1945067))

(declare-fun m!1945069 () Bool)

(assert (=> d!487981 m!1945069))

(assert (=> d!487981 m!1944871))

(assert (=> b!1620532 m!1945055))

(declare-fun m!1945071 () Bool)

(assert (=> b!1620532 m!1945071))

(assert (=> b!1620532 m!1945071))

(declare-fun m!1945073 () Bool)

(assert (=> b!1620532 m!1945073))

(assert (=> b!1620532 m!1945073))

(declare-fun m!1945075 () Bool)

(assert (=> b!1620532 m!1945075))

(assert (=> b!1620537 m!1945055))

(declare-fun m!1945077 () Bool)

(assert (=> b!1620537 m!1945077))

(assert (=> b!1620537 m!1945077))

(declare-fun m!1945079 () Bool)

(assert (=> b!1620537 m!1945079))

(declare-fun m!1945081 () Bool)

(assert (=> b!1620539 m!1945081))

(assert (=> b!1620535 m!1945055))

(assert (=> b!1620535 m!1945071))

(assert (=> b!1620535 m!1945071))

(assert (=> b!1620535 m!1945073))

(assert (=> b!1620535 m!1945073))

(declare-fun m!1945083 () Bool)

(assert (=> b!1620535 m!1945083))

(assert (=> b!1620538 m!1945055))

(assert (=> b!1620538 m!1945071))

(assert (=> b!1620538 m!1945071))

(assert (=> b!1620538 m!1945073))

(assert (=> b!1620323 d!487981))

(declare-fun d!487983 () Bool)

(declare-fun e!1039340 () Bool)

(assert (=> d!487983 e!1039340))

(declare-fun res!723717 () Bool)

(assert (=> d!487983 (=> (not res!723717) (not e!1039340))))

(declare-fun lt!582850 () BalanceConc!11742)

(assert (=> d!487983 (= res!723717 (= (list!6948 lt!582850) (Cons!17740 (h!23141 tokens!457) Nil!17740)))))

(declare-fun singleton!649 (Token!5816) BalanceConc!11742)

(assert (=> d!487983 (= lt!582850 (singleton!649 (h!23141 tokens!457)))))

(assert (=> d!487983 (= (singletonSeq!1529 (h!23141 tokens!457)) lt!582850)))

(declare-fun b!1620543 () Bool)

(declare-fun isBalanced!1769 (Conc!5899) Bool)

(assert (=> b!1620543 (= e!1039340 (isBalanced!1769 (c!263897 lt!582850)))))

(assert (= (and d!487983 res!723717) b!1620543))

(declare-fun m!1945085 () Bool)

(assert (=> d!487983 m!1945085))

(declare-fun m!1945087 () Bool)

(assert (=> d!487983 m!1945087))

(declare-fun m!1945089 () Bool)

(assert (=> b!1620543 m!1945089))

(assert (=> b!1620323 d!487983))

(declare-fun d!487985 () Bool)

(assert (=> d!487985 (= (list!6947 lt!582574) (list!6950 (c!263895 lt!582574)))))

(declare-fun bs!394468 () Bool)

(assert (= bs!394468 d!487985))

(declare-fun m!1945091 () Bool)

(assert (=> bs!394468 m!1945091))

(assert (=> b!1620323 d!487985))

(declare-fun d!487987 () Bool)

(assert (=> d!487987 (= (head!3384 (originalCharacters!3939 (h!23141 (t!148691 tokens!457)))) (h!23139 (originalCharacters!3939 (h!23141 (t!148691 tokens!457)))))))

(assert (=> b!1620324 d!487987))

(declare-fun d!487989 () Bool)

(assert (=> d!487989 (= (list!6947 lt!582586) (list!6950 (c!263895 lt!582586)))))

(declare-fun bs!394469 () Bool)

(assert (= bs!394469 d!487989))

(declare-fun m!1945093 () Bool)

(assert (=> bs!394469 m!1945093))

(assert (=> b!1620303 d!487989))

(declare-fun b!1620546 () Bool)

(declare-fun res!723718 () Bool)

(declare-fun e!1039342 () Bool)

(assert (=> b!1620546 (=> (not res!723718) (not e!1039342))))

(declare-fun lt!582851 () List!17808)

(assert (=> b!1620546 (= res!723718 (= (size!14225 lt!582851) (+ (size!14225 lt!582569) (size!14225 lt!582588))))))

(declare-fun d!487991 () Bool)

(assert (=> d!487991 e!1039342))

(declare-fun res!723719 () Bool)

(assert (=> d!487991 (=> (not res!723719) (not e!1039342))))

(assert (=> d!487991 (= res!723719 (= (content!2461 lt!582851) ((_ map or) (content!2461 lt!582569) (content!2461 lt!582588))))))

(declare-fun e!1039341 () List!17808)

(assert (=> d!487991 (= lt!582851 e!1039341)))

(declare-fun c!263939 () Bool)

(assert (=> d!487991 (= c!263939 ((_ is Nil!17738) lt!582569))))

(assert (=> d!487991 (= (++!4699 lt!582569 lt!582588) lt!582851)))

(declare-fun b!1620547 () Bool)

(assert (=> b!1620547 (= e!1039342 (or (not (= lt!582588 Nil!17738)) (= lt!582851 lt!582569)))))

(declare-fun b!1620545 () Bool)

(assert (=> b!1620545 (= e!1039341 (Cons!17738 (h!23139 lt!582569) (++!4699 (t!148689 lt!582569) lt!582588)))))

(declare-fun b!1620544 () Bool)

(assert (=> b!1620544 (= e!1039341 lt!582588)))

(assert (= (and d!487991 c!263939) b!1620544))

(assert (= (and d!487991 (not c!263939)) b!1620545))

(assert (= (and d!487991 res!723719) b!1620546))

(assert (= (and b!1620546 res!723718) b!1620547))

(declare-fun m!1945095 () Bool)

(assert (=> b!1620546 m!1945095))

(assert (=> b!1620546 m!1944689))

(declare-fun m!1945097 () Bool)

(assert (=> b!1620546 m!1945097))

(declare-fun m!1945099 () Bool)

(assert (=> d!487991 m!1945099))

(assert (=> d!487991 m!1944695))

(declare-fun m!1945101 () Bool)

(assert (=> d!487991 m!1945101))

(declare-fun m!1945103 () Bool)

(assert (=> b!1620545 m!1945103))

(assert (=> b!1620303 d!487991))

(declare-fun b!1620576 () Bool)

(declare-fun e!1039365 () Bool)

(declare-fun e!1039363 () Bool)

(assert (=> b!1620576 (= e!1039365 e!1039363)))

(declare-fun res!723731 () Bool)

(declare-fun lt!582855 () tuple2!17286)

(assert (=> b!1620576 (= res!723731 (< (size!14227 (_2!10045 lt!582855)) (size!14227 lt!582586)))))

(assert (=> b!1620576 (=> (not res!723731) (not e!1039363))))

(declare-fun b!1620577 () Bool)

(declare-fun e!1039364 () Bool)

(declare-datatypes ((tuple2!17294 0))(
  ( (tuple2!17295 (_1!10049 List!17810) (_2!10049 List!17808)) )
))
(declare-fun lexList!819 (LexerInterface!2754 List!17809 List!17808) tuple2!17294)

(assert (=> b!1620577 (= e!1039364 (= (list!6947 (_2!10045 lt!582855)) (_2!10049 (lexList!819 thiss!17113 rules!1846 (list!6947 lt!582586)))))))

(declare-fun b!1620578 () Bool)

(assert (=> b!1620578 (= e!1039365 (= (_2!10045 lt!582855) lt!582586))))

(declare-fun b!1620579 () Bool)

(declare-fun res!723733 () Bool)

(assert (=> b!1620579 (=> (not res!723733) (not e!1039364))))

(assert (=> b!1620579 (= res!723733 (= (list!6948 (_1!10045 lt!582855)) (_1!10049 (lexList!819 thiss!17113 rules!1846 (list!6947 lt!582586)))))))

(declare-fun d!487993 () Bool)

(assert (=> d!487993 e!1039364))

(declare-fun res!723732 () Bool)

(assert (=> d!487993 (=> (not res!723732) (not e!1039364))))

(assert (=> d!487993 (= res!723732 e!1039365)))

(declare-fun c!263942 () Bool)

(assert (=> d!487993 (= c!263942 (> (size!14228 (_1!10045 lt!582855)) 0))))

(declare-fun lexTailRecV2!542 (LexerInterface!2754 List!17809 BalanceConc!11740 BalanceConc!11740 BalanceConc!11740 BalanceConc!11742) tuple2!17286)

(assert (=> d!487993 (= lt!582855 (lexTailRecV2!542 thiss!17113 rules!1846 lt!582586 (BalanceConc!11741 Empty!5898) lt!582586 (BalanceConc!11743 Empty!5899)))))

(assert (=> d!487993 (= (lex!1238 thiss!17113 rules!1846 lt!582586) lt!582855)))

(declare-fun b!1620580 () Bool)

(assert (=> b!1620580 (= e!1039363 (not (isEmpty!10761 (_1!10045 lt!582855))))))

(assert (= (and d!487993 c!263942) b!1620576))

(assert (= (and d!487993 (not c!263942)) b!1620578))

(assert (= (and b!1620576 res!723731) b!1620580))

(assert (= (and d!487993 res!723732) b!1620579))

(assert (= (and b!1620579 res!723733) b!1620577))

(declare-fun m!1945117 () Bool)

(assert (=> b!1620576 m!1945117))

(declare-fun m!1945119 () Bool)

(assert (=> b!1620576 m!1945119))

(declare-fun m!1945121 () Bool)

(assert (=> b!1620577 m!1945121))

(assert (=> b!1620577 m!1944601))

(assert (=> b!1620577 m!1944601))

(declare-fun m!1945123 () Bool)

(assert (=> b!1620577 m!1945123))

(declare-fun m!1945125 () Bool)

(assert (=> b!1620579 m!1945125))

(assert (=> b!1620579 m!1944601))

(assert (=> b!1620579 m!1944601))

(assert (=> b!1620579 m!1945123))

(declare-fun m!1945127 () Bool)

(assert (=> b!1620580 m!1945127))

(declare-fun m!1945129 () Bool)

(assert (=> d!487993 m!1945129))

(declare-fun m!1945131 () Bool)

(assert (=> d!487993 m!1945131))

(assert (=> b!1620303 d!487993))

(declare-fun d!488003 () Bool)

(declare-fun fromListB!875 (List!17810) BalanceConc!11742)

(assert (=> d!488003 (= (seqFromList!1999 tokens!457) (fromListB!875 tokens!457))))

(declare-fun bs!394471 () Bool)

(assert (= bs!394471 d!488003))

(declare-fun m!1945133 () Bool)

(assert (=> bs!394471 m!1945133))

(assert (=> b!1620303 d!488003))

(declare-fun d!488005 () Bool)

(declare-fun lt!582861 () BalanceConc!11740)

(assert (=> d!488005 (= (list!6947 lt!582861) (originalCharacters!3939 (h!23141 tokens!457)))))

(declare-fun dynLambda!7916 (Int TokenValue!3215) BalanceConc!11740)

(assert (=> d!488005 (= lt!582861 (dynLambda!7916 (toChars!4411 (transformation!3125 (rule!4951 (h!23141 tokens!457)))) (value!98735 (h!23141 tokens!457))))))

(assert (=> d!488005 (= (charsOf!1774 (h!23141 tokens!457)) lt!582861)))

(declare-fun b_lambda!51083 () Bool)

(assert (=> (not b_lambda!51083) (not d!488005)))

(declare-fun t!148701 () Bool)

(declare-fun tb!93147 () Bool)

(assert (=> (and b!1620318 (= (toChars!4411 (transformation!3125 (h!23140 rules!1846))) (toChars!4411 (transformation!3125 (rule!4951 (h!23141 tokens!457))))) t!148701) tb!93147))

(declare-fun b!1620585 () Bool)

(declare-fun e!1039368 () Bool)

(declare-fun tp!471742 () Bool)

(declare-fun inv!23138 (Conc!5898) Bool)

(assert (=> b!1620585 (= e!1039368 (and (inv!23138 (c!263895 (dynLambda!7916 (toChars!4411 (transformation!3125 (rule!4951 (h!23141 tokens!457)))) (value!98735 (h!23141 tokens!457))))) tp!471742))))

(declare-fun result!112268 () Bool)

(declare-fun inv!23139 (BalanceConc!11740) Bool)

(assert (=> tb!93147 (= result!112268 (and (inv!23139 (dynLambda!7916 (toChars!4411 (transformation!3125 (rule!4951 (h!23141 tokens!457)))) (value!98735 (h!23141 tokens!457)))) e!1039368))))

(assert (= tb!93147 b!1620585))

(declare-fun m!1945139 () Bool)

(assert (=> b!1620585 m!1945139))

(declare-fun m!1945141 () Bool)

(assert (=> tb!93147 m!1945141))

(assert (=> d!488005 t!148701))

(declare-fun b_and!114945 () Bool)

(assert (= b_and!114935 (and (=> t!148701 result!112268) b_and!114945)))

(declare-fun t!148703 () Bool)

(declare-fun tb!93149 () Bool)

(assert (=> (and b!1620302 (= (toChars!4411 (transformation!3125 (rule!4951 (h!23141 tokens!457)))) (toChars!4411 (transformation!3125 (rule!4951 (h!23141 tokens!457))))) t!148703) tb!93149))

(declare-fun result!112272 () Bool)

(assert (= result!112272 result!112268))

(assert (=> d!488005 t!148703))

(declare-fun b_and!114947 () Bool)

(assert (= b_and!114939 (and (=> t!148703 result!112272) b_and!114947)))

(declare-fun m!1945143 () Bool)

(assert (=> d!488005 m!1945143))

(declare-fun m!1945145 () Bool)

(assert (=> d!488005 m!1945145))

(assert (=> b!1620303 d!488005))

(declare-fun d!488011 () Bool)

(assert (=> d!488011 (= (seqFromList!1999 (t!148691 tokens!457)) (fromListB!875 (t!148691 tokens!457)))))

(declare-fun bs!394473 () Bool)

(assert (= bs!394473 d!488011))

(declare-fun m!1945147 () Bool)

(assert (=> bs!394473 m!1945147))

(assert (=> b!1620303 d!488011))

(declare-fun d!488013 () Bool)

(declare-fun lt!582862 () BalanceConc!11740)

(assert (=> d!488013 (= (list!6947 lt!582862) (printList!869 thiss!17113 (list!6948 (seqFromList!1999 tokens!457))))))

(assert (=> d!488013 (= lt!582862 (printTailRec!807 thiss!17113 (seqFromList!1999 tokens!457) 0 (BalanceConc!11741 Empty!5898)))))

(assert (=> d!488013 (= (print!1285 thiss!17113 (seqFromList!1999 tokens!457)) lt!582862)))

(declare-fun bs!394474 () Bool)

(assert (= bs!394474 d!488013))

(declare-fun m!1945149 () Bool)

(assert (=> bs!394474 m!1945149))

(assert (=> bs!394474 m!1944603))

(declare-fun m!1945151 () Bool)

(assert (=> bs!394474 m!1945151))

(assert (=> bs!394474 m!1945151))

(declare-fun m!1945153 () Bool)

(assert (=> bs!394474 m!1945153))

(assert (=> bs!394474 m!1944603))

(declare-fun m!1945155 () Bool)

(assert (=> bs!394474 m!1945155))

(assert (=> b!1620303 d!488013))

(declare-fun d!488015 () Bool)

(assert (=> d!488015 (= (list!6947 lt!582570) (list!6950 (c!263895 lt!582570)))))

(declare-fun bs!394475 () Bool)

(assert (= bs!394475 d!488015))

(declare-fun m!1945157 () Bool)

(assert (=> bs!394475 m!1945157))

(assert (=> b!1620303 d!488015))

(declare-fun d!488017 () Bool)

(assert (=> d!488017 (= (list!6947 lt!582590) (list!6950 (c!263895 lt!582590)))))

(declare-fun bs!394476 () Bool)

(assert (= bs!394476 d!488017))

(declare-fun m!1945159 () Bool)

(assert (=> bs!394476 m!1945159))

(assert (=> b!1620303 d!488017))

(declare-fun d!488019 () Bool)

(declare-fun lt!582863 () BalanceConc!11740)

(assert (=> d!488019 (= (list!6947 lt!582863) (printList!869 thiss!17113 (list!6948 lt!582575)))))

(assert (=> d!488019 (= lt!582863 (printTailRec!807 thiss!17113 lt!582575 0 (BalanceConc!11741 Empty!5898)))))

(assert (=> d!488019 (= (print!1285 thiss!17113 lt!582575) lt!582863)))

(declare-fun bs!394477 () Bool)

(assert (= bs!394477 d!488019))

(declare-fun m!1945161 () Bool)

(assert (=> bs!394477 m!1945161))

(assert (=> bs!394477 m!1944575))

(assert (=> bs!394477 m!1944575))

(declare-fun m!1945163 () Bool)

(assert (=> bs!394477 m!1945163))

(declare-fun m!1945165 () Bool)

(assert (=> bs!394477 m!1945165))

(assert (=> b!1620303 d!488019))

(declare-fun d!488021 () Bool)

(declare-fun e!1039378 () Bool)

(assert (=> d!488021 e!1039378))

(declare-fun res!723740 () Bool)

(assert (=> d!488021 (=> (not res!723740) (not e!1039378))))

(declare-fun prepend!643 (Conc!5899 Token!5816) Conc!5899)

(assert (=> d!488021 (= res!723740 (isBalanced!1769 (prepend!643 (c!263897 (seqFromList!1999 (t!148691 (t!148691 tokens!457)))) (h!23141 (t!148691 tokens!457)))))))

(declare-fun lt!582868 () BalanceConc!11742)

(assert (=> d!488021 (= lt!582868 (BalanceConc!11743 (prepend!643 (c!263897 (seqFromList!1999 (t!148691 (t!148691 tokens!457)))) (h!23141 (t!148691 tokens!457)))))))

(assert (=> d!488021 (= (prepend!641 (seqFromList!1999 (t!148691 (t!148691 tokens!457))) (h!23141 (t!148691 tokens!457))) lt!582868)))

(declare-fun b!1620602 () Bool)

(assert (=> b!1620602 (= e!1039378 (= (list!6948 lt!582868) (Cons!17740 (h!23141 (t!148691 tokens!457)) (list!6948 (seqFromList!1999 (t!148691 (t!148691 tokens!457)))))))))

(assert (= (and d!488021 res!723740) b!1620602))

(declare-fun m!1945179 () Bool)

(assert (=> d!488021 m!1945179))

(assert (=> d!488021 m!1945179))

(declare-fun m!1945181 () Bool)

(assert (=> d!488021 m!1945181))

(declare-fun m!1945183 () Bool)

(assert (=> b!1620602 m!1945183))

(assert (=> b!1620602 m!1944577))

(declare-fun m!1945185 () Bool)

(assert (=> b!1620602 m!1945185))

(assert (=> b!1620320 d!488021))

(declare-fun d!488025 () Bool)

(declare-fun list!6952 (Conc!5899) List!17810)

(assert (=> d!488025 (= (list!6948 (prepend!641 (seqFromList!1999 (t!148691 (t!148691 tokens!457))) (h!23141 (t!148691 tokens!457)))) (list!6952 (c!263897 (prepend!641 (seqFromList!1999 (t!148691 (t!148691 tokens!457))) (h!23141 (t!148691 tokens!457))))))))

(declare-fun bs!394478 () Bool)

(assert (= bs!394478 d!488025))

(declare-fun m!1945201 () Bool)

(assert (=> bs!394478 m!1945201))

(assert (=> b!1620320 d!488025))

(declare-fun d!488029 () Bool)

(assert (=> d!488029 (= (list!6948 (_1!10045 lt!582580)) (list!6948 (prepend!641 (seqFromList!1999 (t!148691 (t!148691 tokens!457))) (h!23141 (t!148691 tokens!457)))))))

(declare-fun lt!582874 () Unit!28635)

(declare-fun choose!9755 (Token!5816 List!17810 BalanceConc!11742) Unit!28635)

(assert (=> d!488029 (= lt!582874 (choose!9755 (h!23141 (t!148691 tokens!457)) (t!148691 (t!148691 tokens!457)) (_1!10045 lt!582580)))))

(declare-fun $colon$colon!319 (List!17810 Token!5816) List!17810)

(assert (=> d!488029 (= (list!6948 (_1!10045 lt!582580)) (list!6948 (seqFromList!1999 ($colon$colon!319 (t!148691 (t!148691 tokens!457)) (h!23141 (t!148691 tokens!457))))))))

(assert (=> d!488029 (= (seqFromListBHdTlConstructive!202 (h!23141 (t!148691 tokens!457)) (t!148691 (t!148691 tokens!457)) (_1!10045 lt!582580)) lt!582874)))

(declare-fun bs!394480 () Bool)

(assert (= bs!394480 d!488029))

(assert (=> bs!394480 m!1944579))

(assert (=> bs!394480 m!1944581))

(assert (=> bs!394480 m!1944577))

(declare-fun m!1945207 () Bool)

(assert (=> bs!394480 m!1945207))

(declare-fun m!1945209 () Bool)

(assert (=> bs!394480 m!1945209))

(assert (=> bs!394480 m!1944631))

(declare-fun m!1945215 () Bool)

(assert (=> bs!394480 m!1945215))

(assert (=> bs!394480 m!1944577))

(assert (=> bs!394480 m!1944579))

(assert (=> bs!394480 m!1945207))

(assert (=> bs!394480 m!1945209))

(declare-fun m!1945219 () Bool)

(assert (=> bs!394480 m!1945219))

(assert (=> b!1620320 d!488029))

(declare-fun d!488035 () Bool)

(assert (=> d!488035 (= (list!6948 lt!582575) (list!6952 (c!263897 lt!582575)))))

(declare-fun bs!394481 () Bool)

(assert (= bs!394481 d!488035))

(declare-fun m!1945221 () Bool)

(assert (=> bs!394481 m!1945221))

(assert (=> b!1620320 d!488035))

(declare-fun d!488037 () Bool)

(assert (=> d!488037 (= (seqFromList!1999 (t!148691 (t!148691 tokens!457))) (fromListB!875 (t!148691 (t!148691 tokens!457))))))

(declare-fun bs!394482 () Bool)

(assert (= bs!394482 d!488037))

(declare-fun m!1945223 () Bool)

(assert (=> bs!394482 m!1945223))

(assert (=> b!1620320 d!488037))

(declare-fun b!1620638 () Bool)

(declare-fun e!1039401 () Bool)

(declare-fun lt!582881 () Bool)

(assert (=> b!1620638 (= e!1039401 (not lt!582881))))

(declare-fun b!1620639 () Bool)

(declare-fun res!723762 () Bool)

(declare-fun e!1039403 () Bool)

(assert (=> b!1620639 (=> (not res!723762) (not e!1039403))))

(declare-fun call!105100 () Bool)

(assert (=> b!1620639 (= res!723762 (not call!105100))))

(declare-fun b!1620640 () Bool)

(declare-fun res!723767 () Bool)

(declare-fun e!1039399 () Bool)

(assert (=> b!1620640 (=> res!723767 e!1039399)))

(assert (=> b!1620640 (= res!723767 (not ((_ is ElementMatch!4453) (regex!3125 (rule!4951 (h!23141 tokens!457))))))))

(assert (=> b!1620640 (= e!1039401 e!1039399)))

(declare-fun b!1620641 () Bool)

(declare-fun e!1039402 () Bool)

(declare-fun nullable!1307 (Regex!4453) Bool)

(assert (=> b!1620641 (= e!1039402 (nullable!1307 (regex!3125 (rule!4951 (h!23141 tokens!457)))))))

(declare-fun b!1620642 () Bool)

(declare-fun e!1039398 () Bool)

(assert (=> b!1620642 (= e!1039399 e!1039398)))

(declare-fun res!723765 () Bool)

(assert (=> b!1620642 (=> (not res!723765) (not e!1039398))))

(assert (=> b!1620642 (= res!723765 (not lt!582881))))

(declare-fun b!1620643 () Bool)

(declare-fun e!1039400 () Bool)

(assert (=> b!1620643 (= e!1039398 e!1039400)))

(declare-fun res!723766 () Bool)

(assert (=> b!1620643 (=> res!723766 e!1039400)))

(assert (=> b!1620643 (= res!723766 call!105100)))

(declare-fun bm!105095 () Bool)

(assert (=> bm!105095 (= call!105100 (isEmpty!10760 lt!582569))))

(declare-fun d!488039 () Bool)

(declare-fun e!1039404 () Bool)

(assert (=> d!488039 e!1039404))

(declare-fun c!263959 () Bool)

(assert (=> d!488039 (= c!263959 ((_ is EmptyExpr!4453) (regex!3125 (rule!4951 (h!23141 tokens!457)))))))

(assert (=> d!488039 (= lt!582881 e!1039402)))

(declare-fun c!263957 () Bool)

(assert (=> d!488039 (= c!263957 (isEmpty!10760 lt!582569))))

(declare-fun validRegex!1768 (Regex!4453) Bool)

(assert (=> d!488039 (validRegex!1768 (regex!3125 (rule!4951 (h!23141 tokens!457))))))

(assert (=> d!488039 (= (matchR!1952 (regex!3125 (rule!4951 (h!23141 tokens!457))) lt!582569) lt!582881)))

(declare-fun b!1620644 () Bool)

(declare-fun res!723769 () Bool)

(assert (=> b!1620644 (=> res!723769 e!1039399)))

(assert (=> b!1620644 (= res!723769 e!1039403)))

(declare-fun res!723763 () Bool)

(assert (=> b!1620644 (=> (not res!723763) (not e!1039403))))

(assert (=> b!1620644 (= res!723763 lt!582881)))

(declare-fun b!1620645 () Bool)

(assert (=> b!1620645 (= e!1039400 (not (= (head!3384 lt!582569) (c!263896 (regex!3125 (rule!4951 (h!23141 tokens!457)))))))))

(declare-fun b!1620646 () Bool)

(assert (=> b!1620646 (= e!1039403 (= (head!3384 lt!582569) (c!263896 (regex!3125 (rule!4951 (h!23141 tokens!457))))))))

(declare-fun b!1620647 () Bool)

(assert (=> b!1620647 (= e!1039404 (= lt!582881 call!105100))))

(declare-fun b!1620648 () Bool)

(assert (=> b!1620648 (= e!1039404 e!1039401)))

(declare-fun c!263958 () Bool)

(assert (=> b!1620648 (= c!263958 ((_ is EmptyLang!4453) (regex!3125 (rule!4951 (h!23141 tokens!457)))))))

(declare-fun b!1620649 () Bool)

(declare-fun res!723768 () Bool)

(assert (=> b!1620649 (=> (not res!723768) (not e!1039403))))

(assert (=> b!1620649 (= res!723768 (isEmpty!10760 (tail!2342 lt!582569)))))

(declare-fun b!1620650 () Bool)

(assert (=> b!1620650 (= e!1039402 (matchR!1952 (derivativeStep!1072 (regex!3125 (rule!4951 (h!23141 tokens!457))) (head!3384 lt!582569)) (tail!2342 lt!582569)))))

(declare-fun b!1620651 () Bool)

(declare-fun res!723764 () Bool)

(assert (=> b!1620651 (=> res!723764 e!1039400)))

(assert (=> b!1620651 (= res!723764 (not (isEmpty!10760 (tail!2342 lt!582569))))))

(assert (= (and d!488039 c!263957) b!1620641))

(assert (= (and d!488039 (not c!263957)) b!1620650))

(assert (= (and d!488039 c!263959) b!1620647))

(assert (= (and d!488039 (not c!263959)) b!1620648))

(assert (= (and b!1620648 c!263958) b!1620638))

(assert (= (and b!1620648 (not c!263958)) b!1620640))

(assert (= (and b!1620640 (not res!723767)) b!1620644))

(assert (= (and b!1620644 res!723763) b!1620639))

(assert (= (and b!1620639 res!723762) b!1620649))

(assert (= (and b!1620649 res!723768) b!1620646))

(assert (= (and b!1620644 (not res!723769)) b!1620642))

(assert (= (and b!1620642 res!723765) b!1620643))

(assert (= (and b!1620643 (not res!723766)) b!1620651))

(assert (= (and b!1620651 (not res!723764)) b!1620645))

(assert (= (or b!1620647 b!1620639 b!1620643) bm!105095))

(declare-fun m!1945239 () Bool)

(assert (=> b!1620641 m!1945239))

(declare-fun m!1945241 () Bool)

(assert (=> b!1620649 m!1945241))

(assert (=> b!1620649 m!1945241))

(declare-fun m!1945243 () Bool)

(assert (=> b!1620649 m!1945243))

(declare-fun m!1945245 () Bool)

(assert (=> b!1620646 m!1945245))

(assert (=> b!1620650 m!1945245))

(assert (=> b!1620650 m!1945245))

(declare-fun m!1945247 () Bool)

(assert (=> b!1620650 m!1945247))

(assert (=> b!1620650 m!1945241))

(assert (=> b!1620650 m!1945247))

(assert (=> b!1620650 m!1945241))

(declare-fun m!1945249 () Bool)

(assert (=> b!1620650 m!1945249))

(declare-fun m!1945251 () Bool)

(assert (=> bm!105095 m!1945251))

(assert (=> d!488039 m!1945251))

(declare-fun m!1945253 () Bool)

(assert (=> d!488039 m!1945253))

(assert (=> b!1620645 m!1945245))

(assert (=> b!1620651 m!1945241))

(assert (=> b!1620651 m!1945241))

(assert (=> b!1620651 m!1945243))

(assert (=> b!1620299 d!488039))

(declare-fun d!488049 () Bool)

(declare-fun e!1039407 () Bool)

(assert (=> d!488049 e!1039407))

(declare-fun res!723772 () Bool)

(assert (=> d!488049 (=> (not res!723772) (not e!1039407))))

(declare-fun lt!582884 () BalanceConc!11740)

(assert (=> d!488049 (= res!723772 (= (list!6947 lt!582884) (Cons!17738 (apply!4488 (charsOf!1774 (h!23141 (t!148691 tokens!457))) 0) Nil!17738)))))

(declare-fun singleton!650 (C!9080) BalanceConc!11740)

(assert (=> d!488049 (= lt!582884 (singleton!650 (apply!4488 (charsOf!1774 (h!23141 (t!148691 tokens!457))) 0)))))

(assert (=> d!488049 (= (singletonSeq!1528 (apply!4488 (charsOf!1774 (h!23141 (t!148691 tokens!457))) 0)) lt!582884)))

(declare-fun b!1620654 () Bool)

(declare-fun isBalanced!1770 (Conc!5898) Bool)

(assert (=> b!1620654 (= e!1039407 (isBalanced!1770 (c!263895 lt!582884)))))

(assert (= (and d!488049 res!723772) b!1620654))

(declare-fun m!1945255 () Bool)

(assert (=> d!488049 m!1945255))

(assert (=> d!488049 m!1944645))

(declare-fun m!1945257 () Bool)

(assert (=> d!488049 m!1945257))

(declare-fun m!1945259 () Bool)

(assert (=> b!1620654 m!1945259))

(assert (=> b!1620321 d!488049))

(declare-fun d!488051 () Bool)

(declare-fun lt!582929 () Bool)

(assert (=> d!488051 (= lt!582929 (prefixMatch!388 lt!582567 (list!6947 (++!4700 lt!582590 lt!582576))))))

(declare-datatypes ((List!17814 0))(
  ( (Nil!17744) (Cons!17744 (h!23145 Regex!4453) (t!148737 List!17814)) )
))
(declare-datatypes ((Context!1714 0))(
  ( (Context!1715 (exprs!1357 List!17814)) )
))
(declare-fun prefixMatchZipperSequence!505 ((InoxSet Context!1714) BalanceConc!11740 Int) Bool)

(declare-fun focus!163 (Regex!4453) (InoxSet Context!1714))

(assert (=> d!488051 (= lt!582929 (prefixMatchZipperSequence!505 (focus!163 lt!582567) (++!4700 lt!582590 lt!582576) 0))))

(declare-fun lt!582922 () Unit!28635)

(declare-fun lt!582920 () Unit!28635)

(assert (=> d!488051 (= lt!582922 lt!582920)))

(declare-fun lt!582924 () List!17808)

(declare-fun lt!582927 () (InoxSet Context!1714))

(declare-fun prefixMatchZipper!142 ((InoxSet Context!1714) List!17808) Bool)

(assert (=> d!488051 (= (prefixMatch!388 lt!582567 lt!582924) (prefixMatchZipper!142 lt!582927 lt!582924))))

(declare-datatypes ((List!17815 0))(
  ( (Nil!17745) (Cons!17745 (h!23146 Context!1714) (t!148738 List!17815)) )
))
(declare-fun lt!582926 () List!17815)

(declare-fun prefixMatchZipperRegexEquiv!142 ((InoxSet Context!1714) List!17815 Regex!4453 List!17808) Unit!28635)

(assert (=> d!488051 (= lt!582920 (prefixMatchZipperRegexEquiv!142 lt!582927 lt!582926 lt!582567 lt!582924))))

(assert (=> d!488051 (= lt!582924 (list!6947 (++!4700 lt!582590 lt!582576)))))

(declare-fun toList!903 ((InoxSet Context!1714)) List!17815)

(assert (=> d!488051 (= lt!582926 (toList!903 (focus!163 lt!582567)))))

(assert (=> d!488051 (= lt!582927 (focus!163 lt!582567))))

(declare-fun lt!582923 () Unit!28635)

(declare-fun lt!582928 () Unit!28635)

(assert (=> d!488051 (= lt!582923 lt!582928)))

(declare-fun lt!582921 () Int)

(declare-fun lt!582925 () (InoxSet Context!1714))

(declare-fun dropList!588 (BalanceConc!11740 Int) List!17808)

(assert (=> d!488051 (= (prefixMatchZipper!142 lt!582925 (dropList!588 (++!4700 lt!582590 lt!582576) lt!582921)) (prefixMatchZipperSequence!505 lt!582925 (++!4700 lt!582590 lt!582576) lt!582921))))

(declare-fun lemmaprefixMatchZipperSequenceEquivalent!142 ((InoxSet Context!1714) BalanceConc!11740 Int) Unit!28635)

(assert (=> d!488051 (= lt!582928 (lemmaprefixMatchZipperSequenceEquivalent!142 lt!582925 (++!4700 lt!582590 lt!582576) lt!582921))))

(assert (=> d!488051 (= lt!582921 0)))

(assert (=> d!488051 (= lt!582925 (focus!163 lt!582567))))

(assert (=> d!488051 (validRegex!1768 lt!582567)))

(assert (=> d!488051 (= (prefixMatchZipperSequence!503 lt!582567 (++!4700 lt!582590 lt!582576)) lt!582929)))

(declare-fun bs!394487 () Bool)

(assert (= bs!394487 d!488051))

(assert (=> bs!394487 m!1944643))

(declare-fun m!1945295 () Bool)

(assert (=> bs!394487 m!1945295))

(declare-fun m!1945297 () Bool)

(assert (=> bs!394487 m!1945297))

(assert (=> bs!394487 m!1944643))

(declare-fun m!1945299 () Bool)

(assert (=> bs!394487 m!1945299))

(declare-fun m!1945301 () Bool)

(assert (=> bs!394487 m!1945301))

(declare-fun m!1945303 () Bool)

(assert (=> bs!394487 m!1945303))

(assert (=> bs!394487 m!1944643))

(declare-fun m!1945305 () Bool)

(assert (=> bs!394487 m!1945305))

(assert (=> bs!394487 m!1945297))

(declare-fun m!1945307 () Bool)

(assert (=> bs!394487 m!1945307))

(assert (=> bs!394487 m!1945305))

(declare-fun m!1945309 () Bool)

(assert (=> bs!394487 m!1945309))

(declare-fun m!1945311 () Bool)

(assert (=> bs!394487 m!1945311))

(declare-fun m!1945313 () Bool)

(assert (=> bs!394487 m!1945313))

(assert (=> bs!394487 m!1945297))

(declare-fun m!1945315 () Bool)

(assert (=> bs!394487 m!1945315))

(declare-fun m!1945317 () Bool)

(assert (=> bs!394487 m!1945317))

(assert (=> bs!394487 m!1944643))

(declare-fun m!1945319 () Bool)

(assert (=> bs!394487 m!1945319))

(assert (=> bs!394487 m!1944643))

(assert (=> bs!394487 m!1945311))

(assert (=> b!1620321 d!488051))

(declare-fun b!1620690 () Bool)

(declare-fun res!723802 () Bool)

(declare-fun e!1039419 () Bool)

(assert (=> b!1620690 (=> (not res!723802) (not e!1039419))))

(declare-fun ++!4702 (Conc!5898 Conc!5898) Conc!5898)

(assert (=> b!1620690 (= res!723802 (isBalanced!1770 (++!4702 (c!263895 lt!582590) (c!263895 lt!582576))))))

(declare-fun b!1620691 () Bool)

(declare-fun res!723805 () Bool)

(assert (=> b!1620691 (=> (not res!723805) (not e!1039419))))

(declare-fun height!895 (Conc!5898) Int)

(declare-fun max!0 (Int Int) Int)

(assert (=> b!1620691 (= res!723805 (<= (height!895 (++!4702 (c!263895 lt!582590) (c!263895 lt!582576))) (+ (max!0 (height!895 (c!263895 lt!582590)) (height!895 (c!263895 lt!582576))) 1)))))

(declare-fun b!1620692 () Bool)

(declare-fun res!723804 () Bool)

(assert (=> b!1620692 (=> (not res!723804) (not e!1039419))))

(assert (=> b!1620692 (= res!723804 (>= (height!895 (++!4702 (c!263895 lt!582590) (c!263895 lt!582576))) (max!0 (height!895 (c!263895 lt!582590)) (height!895 (c!263895 lt!582576)))))))

(declare-fun d!488055 () Bool)

(assert (=> d!488055 e!1039419))

(declare-fun res!723803 () Bool)

(assert (=> d!488055 (=> (not res!723803) (not e!1039419))))

(declare-fun appendAssocInst!425 (Conc!5898 Conc!5898) Bool)

(assert (=> d!488055 (= res!723803 (appendAssocInst!425 (c!263895 lt!582590) (c!263895 lt!582576)))))

(declare-fun lt!582932 () BalanceConc!11740)

(assert (=> d!488055 (= lt!582932 (BalanceConc!11741 (++!4702 (c!263895 lt!582590) (c!263895 lt!582576))))))

(assert (=> d!488055 (= (++!4700 lt!582590 lt!582576) lt!582932)))

(declare-fun b!1620693 () Bool)

(assert (=> b!1620693 (= e!1039419 (= (list!6947 lt!582932) (++!4699 (list!6947 lt!582590) (list!6947 lt!582576))))))

(assert (= (and d!488055 res!723803) b!1620690))

(assert (= (and b!1620690 res!723802) b!1620691))

(assert (= (and b!1620691 res!723805) b!1620692))

(assert (= (and b!1620692 res!723804) b!1620693))

(declare-fun m!1945321 () Bool)

(assert (=> d!488055 m!1945321))

(declare-fun m!1945323 () Bool)

(assert (=> d!488055 m!1945323))

(assert (=> b!1620691 m!1945323))

(declare-fun m!1945325 () Bool)

(assert (=> b!1620691 m!1945325))

(assert (=> b!1620691 m!1945323))

(declare-fun m!1945327 () Bool)

(assert (=> b!1620691 m!1945327))

(declare-fun m!1945329 () Bool)

(assert (=> b!1620691 m!1945329))

(assert (=> b!1620691 m!1945325))

(assert (=> b!1620691 m!1945329))

(declare-fun m!1945331 () Bool)

(assert (=> b!1620691 m!1945331))

(assert (=> b!1620690 m!1945323))

(assert (=> b!1620690 m!1945323))

(declare-fun m!1945333 () Bool)

(assert (=> b!1620690 m!1945333))

(declare-fun m!1945335 () Bool)

(assert (=> b!1620693 m!1945335))

(assert (=> b!1620693 m!1944617))

(assert (=> b!1620693 m!1944527))

(assert (=> b!1620693 m!1944617))

(assert (=> b!1620693 m!1944527))

(declare-fun m!1945337 () Bool)

(assert (=> b!1620693 m!1945337))

(assert (=> b!1620692 m!1945323))

(assert (=> b!1620692 m!1945325))

(assert (=> b!1620692 m!1945323))

(assert (=> b!1620692 m!1945327))

(assert (=> b!1620692 m!1945329))

(assert (=> b!1620692 m!1945325))

(assert (=> b!1620692 m!1945329))

(assert (=> b!1620692 m!1945331))

(assert (=> b!1620321 d!488055))

(declare-fun d!488057 () Bool)

(declare-fun lt!582935 () C!9080)

(declare-fun apply!4497 (List!17808 Int) C!9080)

(assert (=> d!488057 (= lt!582935 (apply!4497 (list!6947 (charsOf!1774 (h!23141 (t!148691 tokens!457)))) 0))))

(declare-fun apply!4498 (Conc!5898 Int) C!9080)

(assert (=> d!488057 (= lt!582935 (apply!4498 (c!263895 (charsOf!1774 (h!23141 (t!148691 tokens!457)))) 0))))

(declare-fun e!1039422 () Bool)

(assert (=> d!488057 e!1039422))

(declare-fun res!723808 () Bool)

(assert (=> d!488057 (=> (not res!723808) (not e!1039422))))

(assert (=> d!488057 (= res!723808 (<= 0 0))))

(assert (=> d!488057 (= (apply!4488 (charsOf!1774 (h!23141 (t!148691 tokens!457))) 0) lt!582935)))

(declare-fun b!1620696 () Bool)

(assert (=> b!1620696 (= e!1039422 (< 0 (size!14227 (charsOf!1774 (h!23141 (t!148691 tokens!457))))))))

(assert (= (and d!488057 res!723808) b!1620696))

(assert (=> d!488057 m!1944651))

(declare-fun m!1945339 () Bool)

(assert (=> d!488057 m!1945339))

(assert (=> d!488057 m!1945339))

(declare-fun m!1945341 () Bool)

(assert (=> d!488057 m!1945341))

(declare-fun m!1945343 () Bool)

(assert (=> d!488057 m!1945343))

(assert (=> b!1620696 m!1944651))

(assert (=> b!1620696 m!1944783))

(assert (=> b!1620321 d!488057))

(declare-fun d!488059 () Bool)

(declare-fun lt!582952 () Unit!28635)

(declare-fun lemma!229 (List!17809 LexerInterface!2754 List!17809) Unit!28635)

(assert (=> d!488059 (= lt!582952 (lemma!229 rules!1846 thiss!17113 rules!1846))))

(declare-fun lambda!67195 () Int)

(declare-fun generalisedUnion!237 (List!17814) Regex!4453)

(declare-fun map!3671 (List!17809 Int) List!17814)

(assert (=> d!488059 (= (rulesRegex!515 thiss!17113 rules!1846) (generalisedUnion!237 (map!3671 rules!1846 lambda!67195)))))

(declare-fun bs!394488 () Bool)

(assert (= bs!394488 d!488059))

(declare-fun m!1945345 () Bool)

(assert (=> bs!394488 m!1945345))

(declare-fun m!1945347 () Bool)

(assert (=> bs!394488 m!1945347))

(assert (=> bs!394488 m!1945347))

(declare-fun m!1945349 () Bool)

(assert (=> bs!394488 m!1945349))

(assert (=> b!1620321 d!488059))

(declare-fun d!488061 () Bool)

(declare-fun lt!582953 () BalanceConc!11740)

(assert (=> d!488061 (= (list!6947 lt!582953) (originalCharacters!3939 (h!23141 (t!148691 tokens!457))))))

(assert (=> d!488061 (= lt!582953 (dynLambda!7916 (toChars!4411 (transformation!3125 (rule!4951 (h!23141 (t!148691 tokens!457))))) (value!98735 (h!23141 (t!148691 tokens!457)))))))

(assert (=> d!488061 (= (charsOf!1774 (h!23141 (t!148691 tokens!457))) lt!582953)))

(declare-fun b_lambda!51085 () Bool)

(assert (=> (not b_lambda!51085) (not d!488061)))

(declare-fun tb!93151 () Bool)

(declare-fun t!148706 () Bool)

(assert (=> (and b!1620318 (= (toChars!4411 (transformation!3125 (h!23140 rules!1846))) (toChars!4411 (transformation!3125 (rule!4951 (h!23141 (t!148691 tokens!457)))))) t!148706) tb!93151))

(declare-fun b!1620703 () Bool)

(declare-fun e!1039427 () Bool)

(declare-fun tp!471743 () Bool)

(assert (=> b!1620703 (= e!1039427 (and (inv!23138 (c!263895 (dynLambda!7916 (toChars!4411 (transformation!3125 (rule!4951 (h!23141 (t!148691 tokens!457))))) (value!98735 (h!23141 (t!148691 tokens!457)))))) tp!471743))))

(declare-fun result!112274 () Bool)

(assert (=> tb!93151 (= result!112274 (and (inv!23139 (dynLambda!7916 (toChars!4411 (transformation!3125 (rule!4951 (h!23141 (t!148691 tokens!457))))) (value!98735 (h!23141 (t!148691 tokens!457))))) e!1039427))))

(assert (= tb!93151 b!1620703))

(declare-fun m!1945351 () Bool)

(assert (=> b!1620703 m!1945351))

(declare-fun m!1945353 () Bool)

(assert (=> tb!93151 m!1945353))

(assert (=> d!488061 t!148706))

(declare-fun b_and!114949 () Bool)

(assert (= b_and!114945 (and (=> t!148706 result!112274) b_and!114949)))

(declare-fun t!148708 () Bool)

(declare-fun tb!93153 () Bool)

(assert (=> (and b!1620302 (= (toChars!4411 (transformation!3125 (rule!4951 (h!23141 tokens!457)))) (toChars!4411 (transformation!3125 (rule!4951 (h!23141 (t!148691 tokens!457)))))) t!148708) tb!93153))

(declare-fun result!112276 () Bool)

(assert (= result!112276 result!112274))

(assert (=> d!488061 t!148708))

(declare-fun b_and!114951 () Bool)

(assert (= b_and!114947 (and (=> t!148708 result!112276) b_and!114951)))

(declare-fun m!1945355 () Bool)

(assert (=> d!488061 m!1945355))

(declare-fun m!1945357 () Bool)

(assert (=> d!488061 m!1945357))

(assert (=> b!1620321 d!488061))

(declare-fun d!488063 () Bool)

(declare-fun lt!582984 () Bool)

(declare-fun e!1039456 () Bool)

(assert (=> d!488063 (= lt!582984 e!1039456)))

(declare-fun res!723840 () Bool)

(assert (=> d!488063 (=> (not res!723840) (not e!1039456))))

(assert (=> d!488063 (= res!723840 (= (list!6948 (_1!10045 (lex!1238 thiss!17113 rules!1846 (print!1285 thiss!17113 (singletonSeq!1529 (h!23141 tokens!457)))))) (list!6948 (singletonSeq!1529 (h!23141 tokens!457)))))))

(declare-fun e!1039455 () Bool)

(assert (=> d!488063 (= lt!582984 e!1039455)))

(declare-fun res!723839 () Bool)

(assert (=> d!488063 (=> (not res!723839) (not e!1039455))))

(declare-fun lt!582985 () tuple2!17286)

(assert (=> d!488063 (= res!723839 (= (size!14228 (_1!10045 lt!582985)) 1))))

(assert (=> d!488063 (= lt!582985 (lex!1238 thiss!17113 rules!1846 (print!1285 thiss!17113 (singletonSeq!1529 (h!23141 tokens!457)))))))

(assert (=> d!488063 (not (isEmpty!10759 rules!1846))))

(assert (=> d!488063 (= (rulesProduceIndividualToken!1406 thiss!17113 rules!1846 (h!23141 tokens!457)) lt!582984)))

(declare-fun b!1620755 () Bool)

(declare-fun res!723838 () Bool)

(assert (=> b!1620755 (=> (not res!723838) (not e!1039455))))

(assert (=> b!1620755 (= res!723838 (= (apply!4495 (_1!10045 lt!582985) 0) (h!23141 tokens!457)))))

(declare-fun b!1620756 () Bool)

(assert (=> b!1620756 (= e!1039455 (isEmpty!10758 (_2!10045 lt!582985)))))

(declare-fun b!1620757 () Bool)

(assert (=> b!1620757 (= e!1039456 (isEmpty!10758 (_2!10045 (lex!1238 thiss!17113 rules!1846 (print!1285 thiss!17113 (singletonSeq!1529 (h!23141 tokens!457)))))))))

(assert (= (and d!488063 res!723839) b!1620755))

(assert (= (and b!1620755 res!723838) b!1620756))

(assert (= (and d!488063 res!723840) b!1620757))

(assert (=> d!488063 m!1944627))

(declare-fun m!1945491 () Bool)

(assert (=> d!488063 m!1945491))

(assert (=> d!488063 m!1944591))

(assert (=> d!488063 m!1944627))

(assert (=> d!488063 m!1945491))

(declare-fun m!1945493 () Bool)

(assert (=> d!488063 m!1945493))

(assert (=> d!488063 m!1944627))

(declare-fun m!1945495 () Bool)

(assert (=> d!488063 m!1945495))

(declare-fun m!1945497 () Bool)

(assert (=> d!488063 m!1945497))

(declare-fun m!1945499 () Bool)

(assert (=> d!488063 m!1945499))

(declare-fun m!1945501 () Bool)

(assert (=> b!1620755 m!1945501))

(declare-fun m!1945503 () Bool)

(assert (=> b!1620756 m!1945503))

(assert (=> b!1620757 m!1944627))

(assert (=> b!1620757 m!1944627))

(assert (=> b!1620757 m!1945491))

(assert (=> b!1620757 m!1945491))

(assert (=> b!1620757 m!1945493))

(declare-fun m!1945505 () Bool)

(assert (=> b!1620757 m!1945505))

(assert (=> b!1620300 d!488063))

(declare-fun lt!582988 () Bool)

(declare-fun d!488091 () Bool)

(declare-fun isEmpty!10770 (List!17810) Bool)

(assert (=> d!488091 (= lt!582988 (isEmpty!10770 (list!6948 (_1!10045 (lex!1238 thiss!17113 rules!1846 (seqFromList!2000 lt!582569))))))))

(declare-fun isEmpty!10771 (Conc!5899) Bool)

(assert (=> d!488091 (= lt!582988 (isEmpty!10771 (c!263897 (_1!10045 (lex!1238 thiss!17113 rules!1846 (seqFromList!2000 lt!582569))))))))

(assert (=> d!488091 (= (isEmpty!10761 (_1!10045 (lex!1238 thiss!17113 rules!1846 (seqFromList!2000 lt!582569)))) lt!582988)))

(declare-fun bs!394494 () Bool)

(assert (= bs!394494 d!488091))

(assert (=> bs!394494 m!1944919))

(assert (=> bs!394494 m!1944919))

(declare-fun m!1945507 () Bool)

(assert (=> bs!394494 m!1945507))

(declare-fun m!1945509 () Bool)

(assert (=> bs!394494 m!1945509))

(assert (=> b!1620322 d!488091))

(declare-fun b!1620758 () Bool)

(declare-fun e!1039459 () Bool)

(declare-fun e!1039457 () Bool)

(assert (=> b!1620758 (= e!1039459 e!1039457)))

(declare-fun res!723841 () Bool)

(declare-fun lt!582989 () tuple2!17286)

(assert (=> b!1620758 (= res!723841 (< (size!14227 (_2!10045 lt!582989)) (size!14227 (seqFromList!2000 lt!582569))))))

(assert (=> b!1620758 (=> (not res!723841) (not e!1039457))))

(declare-fun b!1620759 () Bool)

(declare-fun e!1039458 () Bool)

(assert (=> b!1620759 (= e!1039458 (= (list!6947 (_2!10045 lt!582989)) (_2!10049 (lexList!819 thiss!17113 rules!1846 (list!6947 (seqFromList!2000 lt!582569))))))))

(declare-fun b!1620760 () Bool)

(assert (=> b!1620760 (= e!1039459 (= (_2!10045 lt!582989) (seqFromList!2000 lt!582569)))))

(declare-fun b!1620761 () Bool)

(declare-fun res!723843 () Bool)

(assert (=> b!1620761 (=> (not res!723843) (not e!1039458))))

(assert (=> b!1620761 (= res!723843 (= (list!6948 (_1!10045 lt!582989)) (_1!10049 (lexList!819 thiss!17113 rules!1846 (list!6947 (seqFromList!2000 lt!582569))))))))

(declare-fun d!488093 () Bool)

(assert (=> d!488093 e!1039458))

(declare-fun res!723842 () Bool)

(assert (=> d!488093 (=> (not res!723842) (not e!1039458))))

(assert (=> d!488093 (= res!723842 e!1039459)))

(declare-fun c!263980 () Bool)

(assert (=> d!488093 (= c!263980 (> (size!14228 (_1!10045 lt!582989)) 0))))

(assert (=> d!488093 (= lt!582989 (lexTailRecV2!542 thiss!17113 rules!1846 (seqFromList!2000 lt!582569) (BalanceConc!11741 Empty!5898) (seqFromList!2000 lt!582569) (BalanceConc!11743 Empty!5899)))))

(assert (=> d!488093 (= (lex!1238 thiss!17113 rules!1846 (seqFromList!2000 lt!582569)) lt!582989)))

(declare-fun b!1620762 () Bool)

(assert (=> b!1620762 (= e!1039457 (not (isEmpty!10761 (_1!10045 lt!582989))))))

(assert (= (and d!488093 c!263980) b!1620758))

(assert (= (and d!488093 (not c!263980)) b!1620760))

(assert (= (and b!1620758 res!723841) b!1620762))

(assert (= (and d!488093 res!723842) b!1620761))

(assert (= (and b!1620761 res!723843) b!1620759))

(declare-fun m!1945511 () Bool)

(assert (=> b!1620758 m!1945511))

(assert (=> b!1620758 m!1944533))

(declare-fun m!1945513 () Bool)

(assert (=> b!1620758 m!1945513))

(declare-fun m!1945515 () Bool)

(assert (=> b!1620759 m!1945515))

(assert (=> b!1620759 m!1944533))

(declare-fun m!1945517 () Bool)

(assert (=> b!1620759 m!1945517))

(assert (=> b!1620759 m!1945517))

(declare-fun m!1945519 () Bool)

(assert (=> b!1620759 m!1945519))

(declare-fun m!1945521 () Bool)

(assert (=> b!1620761 m!1945521))

(assert (=> b!1620761 m!1944533))

(assert (=> b!1620761 m!1945517))

(assert (=> b!1620761 m!1945517))

(assert (=> b!1620761 m!1945519))

(declare-fun m!1945523 () Bool)

(assert (=> b!1620762 m!1945523))

(declare-fun m!1945525 () Bool)

(assert (=> d!488093 m!1945525))

(assert (=> d!488093 m!1944533))

(assert (=> d!488093 m!1944533))

(declare-fun m!1945527 () Bool)

(assert (=> d!488093 m!1945527))

(assert (=> b!1620322 d!488093))

(declare-fun d!488095 () Bool)

(assert (=> d!488095 (= (seqFromList!2000 lt!582569) (fromListB!874 lt!582569))))

(declare-fun bs!394495 () Bool)

(assert (= bs!394495 d!488095))

(declare-fun m!1945529 () Bool)

(assert (=> bs!394495 m!1945529))

(assert (=> b!1620322 d!488095))

(declare-fun d!488097 () Bool)

(declare-fun res!723848 () Bool)

(declare-fun e!1039462 () Bool)

(assert (=> d!488097 (=> (not res!723848) (not e!1039462))))

(assert (=> d!488097 (= res!723848 (not (isEmpty!10760 (originalCharacters!3939 (h!23141 tokens!457)))))))

(assert (=> d!488097 (= (inv!23135 (h!23141 tokens!457)) e!1039462)))

(declare-fun b!1620767 () Bool)

(declare-fun res!723849 () Bool)

(assert (=> b!1620767 (=> (not res!723849) (not e!1039462))))

(assert (=> b!1620767 (= res!723849 (= (originalCharacters!3939 (h!23141 tokens!457)) (list!6947 (dynLambda!7916 (toChars!4411 (transformation!3125 (rule!4951 (h!23141 tokens!457)))) (value!98735 (h!23141 tokens!457))))))))

(declare-fun b!1620768 () Bool)

(assert (=> b!1620768 (= e!1039462 (= (size!14222 (h!23141 tokens!457)) (size!14225 (originalCharacters!3939 (h!23141 tokens!457)))))))

(assert (= (and d!488097 res!723848) b!1620767))

(assert (= (and b!1620767 res!723849) b!1620768))

(declare-fun b_lambda!51087 () Bool)

(assert (=> (not b_lambda!51087) (not b!1620767)))

(assert (=> b!1620767 t!148701))

(declare-fun b_and!114953 () Bool)

(assert (= b_and!114949 (and (=> t!148701 result!112268) b_and!114953)))

(assert (=> b!1620767 t!148703))

(declare-fun b_and!114955 () Bool)

(assert (= b_and!114951 (and (=> t!148703 result!112272) b_and!114955)))

(declare-fun m!1945531 () Bool)

(assert (=> d!488097 m!1945531))

(assert (=> b!1620767 m!1945145))

(assert (=> b!1620767 m!1945145))

(declare-fun m!1945533 () Bool)

(assert (=> b!1620767 m!1945533))

(assert (=> b!1620768 m!1944937))

(assert (=> b!1620317 d!488097))

(declare-fun d!488099 () Bool)

(declare-fun res!723852 () Bool)

(declare-fun e!1039465 () Bool)

(assert (=> d!488099 (=> (not res!723852) (not e!1039465))))

(declare-fun rulesValid!1118 (LexerInterface!2754 List!17809) Bool)

(assert (=> d!488099 (= res!723852 (rulesValid!1118 thiss!17113 rules!1846))))

(assert (=> d!488099 (= (rulesInvariant!2423 thiss!17113 rules!1846) e!1039465)))

(declare-fun b!1620771 () Bool)

(declare-datatypes ((List!17816 0))(
  ( (Nil!17746) (Cons!17746 (h!23147 String!20407) (t!148739 List!17816)) )
))
(declare-fun noDuplicateTag!1118 (LexerInterface!2754 List!17809 List!17816) Bool)

(assert (=> b!1620771 (= e!1039465 (noDuplicateTag!1118 thiss!17113 rules!1846 Nil!17746))))

(assert (= (and d!488099 res!723852) b!1620771))

(declare-fun m!1945535 () Bool)

(assert (=> d!488099 m!1945535))

(declare-fun m!1945537 () Bool)

(assert (=> b!1620771 m!1945537))

(assert (=> b!1620296 d!488099))

(declare-fun b!1620828 () Bool)

(declare-fun e!1039508 () Bool)

(assert (=> b!1620828 (= e!1039508 true)))

(declare-fun b!1620827 () Bool)

(declare-fun e!1039507 () Bool)

(assert (=> b!1620827 (= e!1039507 e!1039508)))

(declare-fun b!1620826 () Bool)

(declare-fun e!1039506 () Bool)

(assert (=> b!1620826 (= e!1039506 e!1039507)))

(declare-fun d!488101 () Bool)

(assert (=> d!488101 e!1039506))

(assert (= b!1620827 b!1620828))

(assert (= b!1620826 b!1620827))

(assert (= (and d!488101 ((_ is Cons!17739) rules!1846)) b!1620826))

(declare-fun order!10521 () Int)

(declare-fun lambda!67198 () Int)

(declare-fun order!10519 () Int)

(declare-fun dynLambda!7917 (Int Int) Int)

(declare-fun dynLambda!7918 (Int Int) Int)

(assert (=> b!1620828 (< (dynLambda!7917 order!10519 (toValue!4552 (transformation!3125 (h!23140 rules!1846)))) (dynLambda!7918 order!10521 lambda!67198))))

(declare-fun order!10523 () Int)

(declare-fun dynLambda!7919 (Int Int) Int)

(assert (=> b!1620828 (< (dynLambda!7919 order!10523 (toChars!4411 (transformation!3125 (h!23140 rules!1846)))) (dynLambda!7918 order!10521 lambda!67198))))

(assert (=> d!488101 true))

(declare-fun lt!583082 () Bool)

(declare-fun forall!4072 (List!17810 Int) Bool)

(assert (=> d!488101 (= lt!583082 (forall!4072 tokens!457 lambda!67198))))

(declare-fun e!1039498 () Bool)

(assert (=> d!488101 (= lt!583082 e!1039498)))

(declare-fun res!723891 () Bool)

(assert (=> d!488101 (=> res!723891 e!1039498)))

(assert (=> d!488101 (= res!723891 (not ((_ is Cons!17740) tokens!457)))))

(assert (=> d!488101 (not (isEmpty!10759 rules!1846))))

(assert (=> d!488101 (= (rulesProduceEachTokenIndividuallyList!956 thiss!17113 rules!1846 tokens!457) lt!583082)))

(declare-fun b!1620816 () Bool)

(declare-fun e!1039499 () Bool)

(assert (=> b!1620816 (= e!1039498 e!1039499)))

(declare-fun res!723890 () Bool)

(assert (=> b!1620816 (=> (not res!723890) (not e!1039499))))

(assert (=> b!1620816 (= res!723890 (rulesProduceIndividualToken!1406 thiss!17113 rules!1846 (h!23141 tokens!457)))))

(declare-fun b!1620817 () Bool)

(assert (=> b!1620817 (= e!1039499 (rulesProduceEachTokenIndividuallyList!956 thiss!17113 rules!1846 (t!148691 tokens!457)))))

(assert (= (and d!488101 (not res!723891)) b!1620816))

(assert (= (and b!1620816 res!723890) b!1620817))

(declare-fun m!1945657 () Bool)

(assert (=> d!488101 m!1945657))

(assert (=> d!488101 m!1944591))

(assert (=> b!1620816 m!1944571))

(declare-fun m!1945659 () Bool)

(assert (=> b!1620817 m!1945659))

(assert (=> b!1620319 d!488101))

(declare-fun d!488117 () Bool)

(assert (=> d!488117 (= (inv!23131 (tag!3403 (rule!4951 (h!23141 tokens!457)))) (= (mod (str.len (value!98734 (tag!3403 (rule!4951 (h!23141 tokens!457))))) 2) 0))))

(assert (=> b!1620298 d!488117))

(declare-fun d!488119 () Bool)

(declare-fun res!723894 () Bool)

(declare-fun e!1039511 () Bool)

(assert (=> d!488119 (=> (not res!723894) (not e!1039511))))

(declare-fun semiInverseModEq!1190 (Int Int) Bool)

(assert (=> d!488119 (= res!723894 (semiInverseModEq!1190 (toChars!4411 (transformation!3125 (rule!4951 (h!23141 tokens!457)))) (toValue!4552 (transformation!3125 (rule!4951 (h!23141 tokens!457))))))))

(assert (=> d!488119 (= (inv!23134 (transformation!3125 (rule!4951 (h!23141 tokens!457)))) e!1039511)))

(declare-fun b!1620833 () Bool)

(declare-fun equivClasses!1131 (Int Int) Bool)

(assert (=> b!1620833 (= e!1039511 (equivClasses!1131 (toChars!4411 (transformation!3125 (rule!4951 (h!23141 tokens!457)))) (toValue!4552 (transformation!3125 (rule!4951 (h!23141 tokens!457))))))))

(assert (= (and d!488119 res!723894) b!1620833))

(declare-fun m!1945661 () Bool)

(assert (=> d!488119 m!1945661))

(declare-fun m!1945663 () Bool)

(assert (=> b!1620833 m!1945663))

(assert (=> b!1620298 d!488119))

(declare-fun d!488121 () Bool)

(declare-fun c!263989 () Bool)

(assert (=> d!488121 (= c!263989 ((_ is IntegerValue!9645) (value!98735 (h!23141 tokens!457))))))

(declare-fun e!1039518 () Bool)

(assert (=> d!488121 (= (inv!21 (value!98735 (h!23141 tokens!457))) e!1039518)))

(declare-fun b!1620844 () Bool)

(declare-fun e!1039520 () Bool)

(declare-fun inv!15 (TokenValue!3215) Bool)

(assert (=> b!1620844 (= e!1039520 (inv!15 (value!98735 (h!23141 tokens!457))))))

(declare-fun b!1620845 () Bool)

(declare-fun inv!16 (TokenValue!3215) Bool)

(assert (=> b!1620845 (= e!1039518 (inv!16 (value!98735 (h!23141 tokens!457))))))

(declare-fun b!1620846 () Bool)

(declare-fun res!723897 () Bool)

(assert (=> b!1620846 (=> res!723897 e!1039520)))

(assert (=> b!1620846 (= res!723897 (not ((_ is IntegerValue!9647) (value!98735 (h!23141 tokens!457)))))))

(declare-fun e!1039519 () Bool)

(assert (=> b!1620846 (= e!1039519 e!1039520)))

(declare-fun b!1620847 () Bool)

(declare-fun inv!17 (TokenValue!3215) Bool)

(assert (=> b!1620847 (= e!1039519 (inv!17 (value!98735 (h!23141 tokens!457))))))

(declare-fun b!1620848 () Bool)

(assert (=> b!1620848 (= e!1039518 e!1039519)))

(declare-fun c!263988 () Bool)

(assert (=> b!1620848 (= c!263988 ((_ is IntegerValue!9646) (value!98735 (h!23141 tokens!457))))))

(assert (= (and d!488121 c!263989) b!1620845))

(assert (= (and d!488121 (not c!263989)) b!1620848))

(assert (= (and b!1620848 c!263988) b!1620847))

(assert (= (and b!1620848 (not c!263988)) b!1620846))

(assert (= (and b!1620846 (not res!723897)) b!1620844))

(declare-fun m!1945665 () Bool)

(assert (=> b!1620844 m!1945665))

(declare-fun m!1945667 () Bool)

(assert (=> b!1620845 m!1945667))

(declare-fun m!1945669 () Bool)

(assert (=> b!1620847 m!1945669))

(assert (=> b!1620315 d!488121))

(declare-fun d!488123 () Bool)

(assert (=> d!488123 (= (isEmpty!10760 (_2!10046 lt!582583)) ((_ is Nil!17738) (_2!10046 lt!582583)))))

(assert (=> b!1620316 d!488123))

(declare-fun d!488125 () Bool)

(declare-fun lt!583085 () C!9080)

(assert (=> d!488125 (= lt!583085 (head!3384 (list!6947 lt!582586)))))

(declare-fun head!3389 (Conc!5898) C!9080)

(assert (=> d!488125 (= lt!583085 (head!3389 (c!263895 lt!582586)))))

(assert (=> d!488125 (not (isEmpty!10758 lt!582586))))

(assert (=> d!488125 (= (head!3385 lt!582586) lt!583085)))

(declare-fun bs!394498 () Bool)

(assert (= bs!394498 d!488125))

(assert (=> bs!394498 m!1944601))

(assert (=> bs!394498 m!1944601))

(declare-fun m!1945671 () Bool)

(assert (=> bs!394498 m!1945671))

(declare-fun m!1945673 () Bool)

(assert (=> bs!394498 m!1945673))

(assert (=> bs!394498 m!1944553))

(assert (=> b!1620312 d!488125))

(declare-fun d!488127 () Bool)

(assert (=> d!488127 (= (inv!23131 (tag!3403 (h!23140 rules!1846))) (= (mod (str.len (value!98734 (tag!3403 (h!23140 rules!1846)))) 2) 0))))

(assert (=> b!1620313 d!488127))

(declare-fun d!488129 () Bool)

(declare-fun res!723898 () Bool)

(declare-fun e!1039521 () Bool)

(assert (=> d!488129 (=> (not res!723898) (not e!1039521))))

(assert (=> d!488129 (= res!723898 (semiInverseModEq!1190 (toChars!4411 (transformation!3125 (h!23140 rules!1846))) (toValue!4552 (transformation!3125 (h!23140 rules!1846)))))))

(assert (=> d!488129 (= (inv!23134 (transformation!3125 (h!23140 rules!1846))) e!1039521)))

(declare-fun b!1620849 () Bool)

(assert (=> b!1620849 (= e!1039521 (equivClasses!1131 (toChars!4411 (transformation!3125 (h!23140 rules!1846))) (toValue!4552 (transformation!3125 (h!23140 rules!1846)))))))

(assert (= (and d!488129 res!723898) b!1620849))

(declare-fun m!1945675 () Bool)

(assert (=> d!488129 m!1945675))

(declare-fun m!1945677 () Bool)

(assert (=> b!1620849 m!1945677))

(assert (=> b!1620313 d!488129))

(declare-fun d!488131 () Bool)

(assert (=> d!488131 (= (list!6948 (_1!10045 lt!582580)) (list!6952 (c!263897 (_1!10045 lt!582580))))))

(declare-fun bs!394499 () Bool)

(assert (= bs!394499 d!488131))

(declare-fun m!1945679 () Bool)

(assert (=> bs!394499 m!1945679))

(assert (=> b!1620314 d!488131))

(declare-fun d!488133 () Bool)

(declare-fun e!1039594 () Bool)

(assert (=> d!488133 e!1039594))

(declare-fun res!723931 () Bool)

(assert (=> d!488133 (=> (not res!723931) (not e!1039594))))

(assert (=> d!488133 (= res!723931 (= (list!6948 (_1!10045 (lex!1238 thiss!17113 rules!1846 (print!1285 thiss!17113 (seqFromList!1999 (t!148691 tokens!457)))))) (t!148691 tokens!457)))))

(declare-fun lt!583197 () Unit!28635)

(declare-fun e!1039593 () Unit!28635)

(assert (=> d!488133 (= lt!583197 e!1039593)))

(declare-fun c!263997 () Bool)

(assert (=> d!488133 (= c!263997 (or ((_ is Nil!17740) (t!148691 tokens!457)) ((_ is Nil!17740) (t!148691 (t!148691 tokens!457)))))))

(assert (=> d!488133 (not (isEmpty!10759 rules!1846))))

(assert (=> d!488133 (= (theoremInvertabilityWhenTokenListSeparable!199 thiss!17113 rules!1846 (t!148691 tokens!457)) lt!583197)))

(declare-fun b!1620944 () Bool)

(declare-fun Unit!28661 () Unit!28635)

(assert (=> b!1620944 (= e!1039593 Unit!28661)))

(declare-fun b!1620945 () Bool)

(declare-fun Unit!28662 () Unit!28635)

(assert (=> b!1620945 (= e!1039593 Unit!28662)))

(declare-fun lt!583191 () BalanceConc!11740)

(assert (=> b!1620945 (= lt!583191 (print!1285 thiss!17113 (seqFromList!1999 (t!148691 tokens!457))))))

(declare-fun lt!583201 () BalanceConc!11740)

(assert (=> b!1620945 (= lt!583201 (print!1285 thiss!17113 (seqFromList!1999 (t!148691 (t!148691 tokens!457)))))))

(declare-fun lt!583206 () tuple2!17286)

(assert (=> b!1620945 (= lt!583206 (lex!1238 thiss!17113 rules!1846 lt!583201))))

(declare-fun lt!583185 () List!17808)

(assert (=> b!1620945 (= lt!583185 (list!6947 (charsOf!1774 (h!23141 (t!148691 tokens!457)))))))

(declare-fun lt!583210 () List!17808)

(assert (=> b!1620945 (= lt!583210 (list!6947 lt!583201))))

(declare-fun lt!583202 () Unit!28635)

(assert (=> b!1620945 (= lt!583202 (lemmaConcatTwoListThenFirstIsPrefix!910 lt!583185 lt!583210))))

(assert (=> b!1620945 (isPrefix!1385 lt!583185 (++!4699 lt!583185 lt!583210))))

(declare-fun lt!583205 () Unit!28635)

(assert (=> b!1620945 (= lt!583205 lt!583202)))

(declare-fun lt!583199 () Unit!28635)

(assert (=> b!1620945 (= lt!583199 (theoremInvertabilityWhenTokenListSeparable!199 thiss!17113 rules!1846 (t!148691 (t!148691 tokens!457))))))

(declare-fun lt!583187 () Unit!28635)

(assert (=> b!1620945 (= lt!583187 (seqFromListBHdTlConstructive!202 (h!23141 (t!148691 (t!148691 tokens!457))) (t!148691 (t!148691 (t!148691 tokens!457))) (_1!10045 lt!583206)))))

(assert (=> b!1620945 (= (list!6948 (_1!10045 lt!583206)) (list!6948 (prepend!641 (seqFromList!1999 (t!148691 (t!148691 (t!148691 tokens!457)))) (h!23141 (t!148691 (t!148691 tokens!457))))))))

(declare-fun lt!583195 () Unit!28635)

(assert (=> b!1620945 (= lt!583195 lt!583187)))

(declare-fun lt!583192 () Option!3263)

(assert (=> b!1620945 (= lt!583192 (maxPrefix!1318 thiss!17113 rules!1846 (list!6947 lt!583191)))))

(assert (=> b!1620945 (= (print!1285 thiss!17113 (singletonSeq!1529 (h!23141 (t!148691 tokens!457)))) (printTailRec!807 thiss!17113 (singletonSeq!1529 (h!23141 (t!148691 tokens!457))) 0 (BalanceConc!11741 Empty!5898)))))

(declare-fun lt!583209 () Unit!28635)

(declare-fun Unit!28663 () Unit!28635)

(assert (=> b!1620945 (= lt!583209 Unit!28663)))

(declare-fun lt!583190 () Unit!28635)

(assert (=> b!1620945 (= lt!583190 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!328 thiss!17113 rules!1846 (list!6947 (charsOf!1774 (h!23141 (t!148691 tokens!457)))) (list!6947 lt!583201)))))

(assert (=> b!1620945 (= (list!6947 (charsOf!1774 (h!23141 (t!148691 tokens!457)))) (originalCharacters!3939 (h!23141 (t!148691 tokens!457))))))

(declare-fun lt!583196 () Unit!28635)

(declare-fun Unit!28664 () Unit!28635)

(assert (=> b!1620945 (= lt!583196 Unit!28664)))

(assert (=> b!1620945 (= (list!6947 (singletonSeq!1528 (apply!4488 (charsOf!1774 (h!23141 (t!148691 (t!148691 tokens!457)))) 0))) (Cons!17738 (head!3384 (originalCharacters!3939 (h!23141 (t!148691 (t!148691 tokens!457))))) Nil!17738))))

(declare-fun lt!583198 () Unit!28635)

(declare-fun Unit!28665 () Unit!28635)

(assert (=> b!1620945 (= lt!583198 Unit!28665)))

(assert (=> b!1620945 (= (list!6947 (singletonSeq!1528 (apply!4488 (charsOf!1774 (h!23141 (t!148691 (t!148691 tokens!457)))) 0))) (Cons!17738 (head!3384 (list!6947 lt!583201)) Nil!17738))))

(declare-fun lt!583203 () Unit!28635)

(declare-fun Unit!28666 () Unit!28635)

(assert (=> b!1620945 (= lt!583203 Unit!28666)))

(assert (=> b!1620945 (= (list!6947 (singletonSeq!1528 (apply!4488 (charsOf!1774 (h!23141 (t!148691 (t!148691 tokens!457)))) 0))) (Cons!17738 (head!3385 lt!583201) Nil!17738))))

(declare-fun lt!583207 () Unit!28635)

(declare-fun Unit!28667 () Unit!28635)

(assert (=> b!1620945 (= lt!583207 Unit!28667)))

(assert (=> b!1620945 (isDefined!2630 (maxPrefix!1318 thiss!17113 rules!1846 (originalCharacters!3939 (h!23141 (t!148691 tokens!457)))))))

(declare-fun lt!583208 () Unit!28635)

(declare-fun Unit!28668 () Unit!28635)

(assert (=> b!1620945 (= lt!583208 Unit!28668)))

(assert (=> b!1620945 (isDefined!2630 (maxPrefix!1318 thiss!17113 rules!1846 (list!6947 (charsOf!1774 (h!23141 (t!148691 tokens!457))))))))

(declare-fun lt!583188 () Unit!28635)

(declare-fun Unit!28669 () Unit!28635)

(assert (=> b!1620945 (= lt!583188 Unit!28669)))

(declare-fun lt!583189 () Unit!28635)

(declare-fun Unit!28670 () Unit!28635)

(assert (=> b!1620945 (= lt!583189 Unit!28670)))

(assert (=> b!1620945 (= (_1!10046 (get!5096 (maxPrefix!1318 thiss!17113 rules!1846 (list!6947 (charsOf!1774 (h!23141 (t!148691 tokens!457))))))) (h!23141 (t!148691 tokens!457)))))

(declare-fun lt!583194 () Unit!28635)

(declare-fun Unit!28671 () Unit!28635)

(assert (=> b!1620945 (= lt!583194 Unit!28671)))

(assert (=> b!1620945 (isEmpty!10760 (_2!10046 (get!5096 (maxPrefix!1318 thiss!17113 rules!1846 (list!6947 (charsOf!1774 (h!23141 (t!148691 tokens!457))))))))))

(declare-fun lt!583204 () Unit!28635)

(declare-fun Unit!28672 () Unit!28635)

(assert (=> b!1620945 (= lt!583204 Unit!28672)))

(assert (=> b!1620945 (matchR!1952 (regex!3125 (rule!4951 (h!23141 (t!148691 tokens!457)))) (list!6947 (charsOf!1774 (h!23141 (t!148691 tokens!457)))))))

(declare-fun lt!583186 () Unit!28635)

(declare-fun Unit!28673 () Unit!28635)

(assert (=> b!1620945 (= lt!583186 Unit!28673)))

(assert (=> b!1620945 (= (rule!4951 (h!23141 (t!148691 tokens!457))) (rule!4951 (h!23141 (t!148691 tokens!457))))))

(declare-fun lt!583200 () Unit!28635)

(declare-fun Unit!28674 () Unit!28635)

(assert (=> b!1620945 (= lt!583200 Unit!28674)))

(declare-fun lt!583193 () Unit!28635)

(declare-fun lemmaMaxPrefWithNoPrefixMatchAllRulesThenSuffixReturnSame!100 (LexerInterface!2754 List!17809 Token!5816 Rule!6050 List!17808) Unit!28635)

(assert (=> b!1620945 (= lt!583193 (lemmaMaxPrefWithNoPrefixMatchAllRulesThenSuffixReturnSame!100 thiss!17113 rules!1846 (h!23141 (t!148691 tokens!457)) (rule!4951 (h!23141 (t!148691 tokens!457))) (list!6947 lt!583201)))))

(declare-fun b!1620946 () Bool)

(assert (=> b!1620946 (= e!1039594 (isEmpty!10758 (_2!10045 (lex!1238 thiss!17113 rules!1846 (print!1285 thiss!17113 (seqFromList!1999 (t!148691 tokens!457)))))))))

(assert (= (and d!488133 c!263997) b!1620944))

(assert (= (and d!488133 (not c!263997)) b!1620945))

(assert (= (and d!488133 res!723931) b!1620946))

(declare-fun m!1945787 () Bool)

(assert (=> d!488133 m!1945787))

(assert (=> d!488133 m!1944613))

(declare-fun m!1945789 () Bool)

(assert (=> d!488133 m!1945789))

(declare-fun m!1945791 () Bool)

(assert (=> d!488133 m!1945791))

(assert (=> d!488133 m!1944613))

(assert (=> d!488133 m!1945789))

(assert (=> d!488133 m!1944591))

(assert (=> b!1620945 m!1945339))

(declare-fun m!1945793 () Bool)

(assert (=> b!1620945 m!1945793))

(declare-fun m!1945795 () Bool)

(assert (=> b!1620945 m!1945795))

(assert (=> b!1620945 m!1944577))

(declare-fun m!1945797 () Bool)

(assert (=> b!1620945 m!1945797))

(declare-fun m!1945799 () Bool)

(assert (=> b!1620945 m!1945799))

(declare-fun m!1945801 () Bool)

(assert (=> b!1620945 m!1945801))

(declare-fun m!1945803 () Bool)

(assert (=> b!1620945 m!1945803))

(declare-fun m!1945805 () Bool)

(assert (=> b!1620945 m!1945805))

(assert (=> b!1620945 m!1944577))

(declare-fun m!1945807 () Bool)

(assert (=> b!1620945 m!1945807))

(assert (=> b!1620945 m!1945807))

(declare-fun m!1945809 () Bool)

(assert (=> b!1620945 m!1945809))

(assert (=> b!1620945 m!1944613))

(assert (=> b!1620945 m!1945339))

(assert (=> b!1620945 m!1945803))

(declare-fun m!1945811 () Bool)

(assert (=> b!1620945 m!1945811))

(declare-fun m!1945813 () Bool)

(assert (=> b!1620945 m!1945813))

(declare-fun m!1945815 () Bool)

(assert (=> b!1620945 m!1945815))

(declare-fun m!1945817 () Bool)

(assert (=> b!1620945 m!1945817))

(declare-fun m!1945819 () Bool)

(assert (=> b!1620945 m!1945819))

(assert (=> b!1620945 m!1945799))

(assert (=> b!1620945 m!1944651))

(assert (=> b!1620945 m!1945339))

(assert (=> b!1620945 m!1945807))

(declare-fun m!1945821 () Bool)

(assert (=> b!1620945 m!1945821))

(declare-fun m!1945823 () Bool)

(assert (=> b!1620945 m!1945823))

(assert (=> b!1620945 m!1945817))

(declare-fun m!1945825 () Bool)

(assert (=> b!1620945 m!1945825))

(assert (=> b!1620945 m!1945811))

(declare-fun m!1945827 () Bool)

(assert (=> b!1620945 m!1945827))

(declare-fun m!1945829 () Bool)

(assert (=> b!1620945 m!1945829))

(declare-fun m!1945831 () Bool)

(assert (=> b!1620945 m!1945831))

(declare-fun m!1945833 () Bool)

(assert (=> b!1620945 m!1945833))

(declare-fun m!1945835 () Bool)

(assert (=> b!1620945 m!1945835))

(declare-fun m!1945837 () Bool)

(assert (=> b!1620945 m!1945837))

(assert (=> b!1620945 m!1944651))

(declare-fun m!1945839 () Bool)

(assert (=> b!1620945 m!1945839))

(assert (=> b!1620945 m!1945827))

(assert (=> b!1620945 m!1945795))

(declare-fun m!1945841 () Bool)

(assert (=> b!1620945 m!1945841))

(assert (=> b!1620945 m!1945339))

(assert (=> b!1620945 m!1945799))

(declare-fun m!1945843 () Bool)

(assert (=> b!1620945 m!1945843))

(assert (=> b!1620945 m!1945841))

(declare-fun m!1945845 () Bool)

(assert (=> b!1620945 m!1945845))

(declare-fun m!1945847 () Bool)

(assert (=> b!1620945 m!1945847))

(assert (=> b!1620945 m!1945799))

(declare-fun m!1945849 () Bool)

(assert (=> b!1620945 m!1945849))

(declare-fun m!1945851 () Bool)

(assert (=> b!1620945 m!1945851))

(declare-fun m!1945853 () Bool)

(assert (=> b!1620945 m!1945853))

(assert (=> b!1620945 m!1945839))

(assert (=> b!1620945 m!1945823))

(assert (=> b!1620945 m!1944613))

(assert (=> b!1620945 m!1945789))

(assert (=> b!1620945 m!1945803))

(declare-fun m!1945855 () Bool)

(assert (=> b!1620945 m!1945855))

(assert (=> b!1620945 m!1945851))

(declare-fun m!1945857 () Bool)

(assert (=> b!1620945 m!1945857))

(assert (=> b!1620946 m!1944613))

(assert (=> b!1620946 m!1944613))

(assert (=> b!1620946 m!1945789))

(assert (=> b!1620946 m!1945789))

(assert (=> b!1620946 m!1945791))

(declare-fun m!1945859 () Bool)

(assert (=> b!1620946 m!1945859))

(assert (=> b!1620314 d!488133))

(declare-fun b!1620957 () Bool)

(declare-fun e!1039603 () Bool)

(assert (=> b!1620957 (= e!1039603 (isPrefix!1385 (tail!2342 lt!582569) (tail!2342 lt!582585)))))

(declare-fun b!1620958 () Bool)

(declare-fun e!1039601 () Bool)

(assert (=> b!1620958 (= e!1039601 (>= (size!14225 lt!582585) (size!14225 lt!582569)))))

(declare-fun b!1620956 () Bool)

(declare-fun res!723942 () Bool)

(assert (=> b!1620956 (=> (not res!723942) (not e!1039603))))

(assert (=> b!1620956 (= res!723942 (= (head!3384 lt!582569) (head!3384 lt!582585)))))

(declare-fun d!488169 () Bool)

(assert (=> d!488169 e!1039601))

(declare-fun res!723941 () Bool)

(assert (=> d!488169 (=> res!723941 e!1039601)))

(declare-fun lt!583213 () Bool)

(assert (=> d!488169 (= res!723941 (not lt!583213))))

(declare-fun e!1039602 () Bool)

(assert (=> d!488169 (= lt!583213 e!1039602)))

(declare-fun res!723940 () Bool)

(assert (=> d!488169 (=> res!723940 e!1039602)))

(assert (=> d!488169 (= res!723940 ((_ is Nil!17738) lt!582569))))

(assert (=> d!488169 (= (isPrefix!1385 lt!582569 lt!582585) lt!583213)))

(declare-fun b!1620955 () Bool)

(assert (=> b!1620955 (= e!1039602 e!1039603)))

(declare-fun res!723943 () Bool)

(assert (=> b!1620955 (=> (not res!723943) (not e!1039603))))

(assert (=> b!1620955 (= res!723943 (not ((_ is Nil!17738) lt!582585)))))

(assert (= (and d!488169 (not res!723940)) b!1620955))

(assert (= (and b!1620955 res!723943) b!1620956))

(assert (= (and b!1620956 res!723942) b!1620957))

(assert (= (and d!488169 (not res!723941)) b!1620958))

(assert (=> b!1620957 m!1945241))

(declare-fun m!1945861 () Bool)

(assert (=> b!1620957 m!1945861))

(assert (=> b!1620957 m!1945241))

(assert (=> b!1620957 m!1945861))

(declare-fun m!1945863 () Bool)

(assert (=> b!1620957 m!1945863))

(declare-fun m!1945865 () Bool)

(assert (=> b!1620958 m!1945865))

(assert (=> b!1620958 m!1944689))

(assert (=> b!1620956 m!1945245))

(declare-fun m!1945867 () Bool)

(assert (=> b!1620956 m!1945867))

(assert (=> b!1620314 d!488169))

(declare-fun d!488171 () Bool)

(assert (=> d!488171 (isPrefix!1385 lt!582569 (++!4699 lt!582569 lt!582588))))

(declare-fun lt!583216 () Unit!28635)

(declare-fun choose!9756 (List!17808 List!17808) Unit!28635)

(assert (=> d!488171 (= lt!583216 (choose!9756 lt!582569 lt!582588))))

(assert (=> d!488171 (= (lemmaConcatTwoListThenFirstIsPrefix!910 lt!582569 lt!582588) lt!583216)))

(declare-fun bs!394509 () Bool)

(assert (= bs!394509 d!488171))

(assert (=> bs!394509 m!1944607))

(assert (=> bs!394509 m!1944607))

(declare-fun m!1945869 () Bool)

(assert (=> bs!394509 m!1945869))

(declare-fun m!1945871 () Bool)

(assert (=> bs!394509 m!1945871))

(assert (=> b!1620314 d!488171))

(declare-fun b!1620963 () Bool)

(declare-fun e!1039606 () Bool)

(declare-fun tp_is_empty!7261 () Bool)

(declare-fun tp!471797 () Bool)

(assert (=> b!1620963 (= e!1039606 (and tp_is_empty!7261 tp!471797))))

(assert (=> b!1620315 (= tp!471732 e!1039606)))

(assert (= (and b!1620315 ((_ is Cons!17738) (originalCharacters!3939 (h!23141 tokens!457)))) b!1620963))

(declare-fun b!1620977 () Bool)

(declare-fun b_free!43671 () Bool)

(declare-fun b_next!44375 () Bool)

(assert (=> b!1620977 (= b_free!43671 (not b_next!44375))))

(declare-fun tp!471811 () Bool)

(declare-fun b_and!114973 () Bool)

(assert (=> b!1620977 (= tp!471811 b_and!114973)))

(declare-fun b_free!43673 () Bool)

(declare-fun b_next!44377 () Bool)

(assert (=> b!1620977 (= b_free!43673 (not b_next!44377))))

(declare-fun t!148729 () Bool)

(declare-fun tb!93167 () Bool)

(assert (=> (and b!1620977 (= (toChars!4411 (transformation!3125 (rule!4951 (h!23141 (t!148691 tokens!457))))) (toChars!4411 (transformation!3125 (rule!4951 (h!23141 tokens!457))))) t!148729) tb!93167))

(declare-fun result!112302 () Bool)

(assert (= result!112302 result!112268))

(assert (=> d!488005 t!148729))

(declare-fun t!148731 () Bool)

(declare-fun tb!93169 () Bool)

(assert (=> (and b!1620977 (= (toChars!4411 (transformation!3125 (rule!4951 (h!23141 (t!148691 tokens!457))))) (toChars!4411 (transformation!3125 (rule!4951 (h!23141 (t!148691 tokens!457)))))) t!148731) tb!93169))

(declare-fun result!112304 () Bool)

(assert (= result!112304 result!112274))

(assert (=> d!488061 t!148731))

(assert (=> b!1620767 t!148729))

(declare-fun b_and!114975 () Bool)

(declare-fun tp!471809 () Bool)

(assert (=> b!1620977 (= tp!471809 (and (=> t!148729 result!112302) (=> t!148731 result!112304) b_and!114975))))

(declare-fun e!1039624 () Bool)

(declare-fun e!1039619 () Bool)

(declare-fun b!1620974 () Bool)

(declare-fun tp!471810 () Bool)

(assert (=> b!1620974 (= e!1039619 (and (inv!23135 (h!23141 (t!148691 tokens!457))) e!1039624 tp!471810))))

(declare-fun e!1039623 () Bool)

(declare-fun tp!471808 () Bool)

(declare-fun b!1620975 () Bool)

(assert (=> b!1620975 (= e!1039624 (and (inv!21 (value!98735 (h!23141 (t!148691 tokens!457)))) e!1039623 tp!471808))))

(declare-fun tp!471812 () Bool)

(declare-fun e!1039621 () Bool)

(declare-fun b!1620976 () Bool)

(assert (=> b!1620976 (= e!1039623 (and tp!471812 (inv!23131 (tag!3403 (rule!4951 (h!23141 (t!148691 tokens!457))))) (inv!23134 (transformation!3125 (rule!4951 (h!23141 (t!148691 tokens!457))))) e!1039621))))

(assert (=> b!1620977 (= e!1039621 (and tp!471811 tp!471809))))

(assert (=> b!1620317 (= tp!471733 e!1039619)))

(assert (= b!1620976 b!1620977))

(assert (= b!1620975 b!1620976))

(assert (= b!1620974 b!1620975))

(assert (= (and b!1620317 ((_ is Cons!17740) (t!148691 tokens!457))) b!1620974))

(declare-fun m!1945873 () Bool)

(assert (=> b!1620974 m!1945873))

(declare-fun m!1945875 () Bool)

(assert (=> b!1620975 m!1945875))

(declare-fun m!1945877 () Bool)

(assert (=> b!1620976 m!1945877))

(declare-fun m!1945879 () Bool)

(assert (=> b!1620976 m!1945879))

(declare-fun b!1620988 () Bool)

(declare-fun b_free!43675 () Bool)

(declare-fun b_next!44379 () Bool)

(assert (=> b!1620988 (= b_free!43675 (not b_next!44379))))

(declare-fun tp!471824 () Bool)

(declare-fun b_and!114977 () Bool)

(assert (=> b!1620988 (= tp!471824 b_and!114977)))

(declare-fun b_free!43677 () Bool)

(declare-fun b_next!44381 () Bool)

(assert (=> b!1620988 (= b_free!43677 (not b_next!44381))))

(declare-fun tb!93171 () Bool)

(declare-fun t!148733 () Bool)

(assert (=> (and b!1620988 (= (toChars!4411 (transformation!3125 (h!23140 (t!148690 rules!1846)))) (toChars!4411 (transformation!3125 (rule!4951 (h!23141 tokens!457))))) t!148733) tb!93171))

(declare-fun result!112308 () Bool)

(assert (= result!112308 result!112268))

(assert (=> d!488005 t!148733))

(declare-fun tb!93173 () Bool)

(declare-fun t!148735 () Bool)

(assert (=> (and b!1620988 (= (toChars!4411 (transformation!3125 (h!23140 (t!148690 rules!1846)))) (toChars!4411 (transformation!3125 (rule!4951 (h!23141 (t!148691 tokens!457)))))) t!148735) tb!93173))

(declare-fun result!112310 () Bool)

(assert (= result!112310 result!112274))

(assert (=> d!488061 t!148735))

(assert (=> b!1620767 t!148733))

(declare-fun b_and!114979 () Bool)

(declare-fun tp!471821 () Bool)

(assert (=> b!1620988 (= tp!471821 (and (=> t!148733 result!112308) (=> t!148735 result!112310) b_and!114979))))

(declare-fun e!1039636 () Bool)

(assert (=> b!1620988 (= e!1039636 (and tp!471824 tp!471821))))

(declare-fun tp!471822 () Bool)

(declare-fun b!1620987 () Bool)

(declare-fun e!1039633 () Bool)

(assert (=> b!1620987 (= e!1039633 (and tp!471822 (inv!23131 (tag!3403 (h!23140 (t!148690 rules!1846)))) (inv!23134 (transformation!3125 (h!23140 (t!148690 rules!1846)))) e!1039636))))

(declare-fun b!1620986 () Bool)

(declare-fun e!1039634 () Bool)

(declare-fun tp!471823 () Bool)

(assert (=> b!1620986 (= e!1039634 (and e!1039633 tp!471823))))

(assert (=> b!1620297 (= tp!471730 e!1039634)))

(assert (= b!1620987 b!1620988))

(assert (= b!1620986 b!1620987))

(assert (= (and b!1620297 ((_ is Cons!17739) (t!148690 rules!1846))) b!1620986))

(declare-fun m!1945881 () Bool)

(assert (=> b!1620987 m!1945881))

(declare-fun m!1945883 () Bool)

(assert (=> b!1620987 m!1945883))

(declare-fun b!1621000 () Bool)

(declare-fun e!1039639 () Bool)

(declare-fun tp!471838 () Bool)

(declare-fun tp!471839 () Bool)

(assert (=> b!1621000 (= e!1039639 (and tp!471838 tp!471839))))

(assert (=> b!1620313 (= tp!471735 e!1039639)))

(declare-fun b!1621002 () Bool)

(declare-fun tp!471836 () Bool)

(declare-fun tp!471835 () Bool)

(assert (=> b!1621002 (= e!1039639 (and tp!471836 tp!471835))))

(declare-fun b!1620999 () Bool)

(assert (=> b!1620999 (= e!1039639 tp_is_empty!7261)))

(declare-fun b!1621001 () Bool)

(declare-fun tp!471837 () Bool)

(assert (=> b!1621001 (= e!1039639 tp!471837)))

(assert (= (and b!1620313 ((_ is ElementMatch!4453) (regex!3125 (h!23140 rules!1846)))) b!1620999))

(assert (= (and b!1620313 ((_ is Concat!7669) (regex!3125 (h!23140 rules!1846)))) b!1621000))

(assert (= (and b!1620313 ((_ is Star!4453) (regex!3125 (h!23140 rules!1846)))) b!1621001))

(assert (= (and b!1620313 ((_ is Union!4453) (regex!3125 (h!23140 rules!1846)))) b!1621002))

(declare-fun b!1621004 () Bool)

(declare-fun e!1039640 () Bool)

(declare-fun tp!471843 () Bool)

(declare-fun tp!471844 () Bool)

(assert (=> b!1621004 (= e!1039640 (and tp!471843 tp!471844))))

(assert (=> b!1620298 (= tp!471729 e!1039640)))

(declare-fun b!1621006 () Bool)

(declare-fun tp!471841 () Bool)

(declare-fun tp!471840 () Bool)

(assert (=> b!1621006 (= e!1039640 (and tp!471841 tp!471840))))

(declare-fun b!1621003 () Bool)

(assert (=> b!1621003 (= e!1039640 tp_is_empty!7261)))

(declare-fun b!1621005 () Bool)

(declare-fun tp!471842 () Bool)

(assert (=> b!1621005 (= e!1039640 tp!471842)))

(assert (= (and b!1620298 ((_ is ElementMatch!4453) (regex!3125 (rule!4951 (h!23141 tokens!457))))) b!1621003))

(assert (= (and b!1620298 ((_ is Concat!7669) (regex!3125 (rule!4951 (h!23141 tokens!457))))) b!1621004))

(assert (= (and b!1620298 ((_ is Star!4453) (regex!3125 (rule!4951 (h!23141 tokens!457))))) b!1621005))

(assert (= (and b!1620298 ((_ is Union!4453) (regex!3125 (rule!4951 (h!23141 tokens!457))))) b!1621006))

(declare-fun b_lambda!51099 () Bool)

(assert (= b_lambda!51085 (or (and b!1620318 b_free!43657 (= (toChars!4411 (transformation!3125 (h!23140 rules!1846))) (toChars!4411 (transformation!3125 (rule!4951 (h!23141 (t!148691 tokens!457))))))) (and b!1620302 b_free!43661 (= (toChars!4411 (transformation!3125 (rule!4951 (h!23141 tokens!457)))) (toChars!4411 (transformation!3125 (rule!4951 (h!23141 (t!148691 tokens!457))))))) (and b!1620977 b_free!43673) (and b!1620988 b_free!43677 (= (toChars!4411 (transformation!3125 (h!23140 (t!148690 rules!1846)))) (toChars!4411 (transformation!3125 (rule!4951 (h!23141 (t!148691 tokens!457))))))) b_lambda!51099)))

(declare-fun b_lambda!51101 () Bool)

(assert (= b_lambda!51087 (or (and b!1620318 b_free!43657 (= (toChars!4411 (transformation!3125 (h!23140 rules!1846))) (toChars!4411 (transformation!3125 (rule!4951 (h!23141 tokens!457)))))) (and b!1620302 b_free!43661) (and b!1620977 b_free!43673 (= (toChars!4411 (transformation!3125 (rule!4951 (h!23141 (t!148691 tokens!457))))) (toChars!4411 (transformation!3125 (rule!4951 (h!23141 tokens!457)))))) (and b!1620988 b_free!43677 (= (toChars!4411 (transformation!3125 (h!23140 (t!148690 rules!1846)))) (toChars!4411 (transformation!3125 (rule!4951 (h!23141 tokens!457)))))) b_lambda!51101)))

(declare-fun b_lambda!51103 () Bool)

(assert (= b_lambda!51083 (or (and b!1620318 b_free!43657 (= (toChars!4411 (transformation!3125 (h!23140 rules!1846))) (toChars!4411 (transformation!3125 (rule!4951 (h!23141 tokens!457)))))) (and b!1620302 b_free!43661) (and b!1620977 b_free!43673 (= (toChars!4411 (transformation!3125 (rule!4951 (h!23141 (t!148691 tokens!457))))) (toChars!4411 (transformation!3125 (rule!4951 (h!23141 tokens!457)))))) (and b!1620988 b_free!43677 (= (toChars!4411 (transformation!3125 (h!23140 (t!148690 rules!1846)))) (toChars!4411 (transformation!3125 (rule!4951 (h!23141 tokens!457)))))) b_lambda!51103)))

(check-sat (not d!487985) (not b!1620507) (not b!1620645) (not b!1620515) (not b!1620817) (not b!1621002) (not b!1620505) b_and!114979 (not d!487921) (not b!1620761) (not b!1620503) (not b_lambda!51099) (not d!488099) (not b!1620945) (not b!1620845) b_and!114933 (not d!487963) (not b!1620477) (not b!1620460) (not d!488037) (not b!1620759) (not b!1620958) (not b!1620514) (not b!1620691) (not d!487969) (not b!1620530) (not b!1620371) (not d!487989) (not b!1620383) (not d!487977) b_and!114973 (not b!1620641) (not b!1620651) (not bm!105091) (not b!1620646) b_and!114937 (not b_next!44377) (not b!1620956) (not b!1621000) (not b!1620650) (not b!1620543) (not b!1620690) (not bm!105090) (not b!1620986) (not b!1620693) (not b!1620508) (not d!488131) (not d!487967) (not d!487991) (not d!487919) (not b!1620423) (not d!488017) (not b_next!44375) (not d!488005) (not b!1620462) (not b!1620963) (not b_next!44359) (not d!487975) (not b!1620502) (not b_next!44381) (not b!1620816) (not b!1620577) (not b!1620464) (not b_lambda!51103) (not b!1620459) (not d!488019) (not d!488093) (not b!1621001) (not b!1620532) (not d!488015) (not d!487973) (not b_next!44361) (not d!487923) (not bm!105095) (not d!488059) (not b!1620847) (not b!1620422) (not d!488039) (not d!488095) (not b!1620479) (not b!1620576) (not b!1620478) (not b!1620696) (not b!1620585) (not tb!93151) (not b!1620525) (not d!488025) (not d!487961) (not b!1620768) (not b!1620499) (not b!1620372) (not tb!93147) (not b!1620506) (not b!1620545) (not b!1620826) (not b!1620654) (not b!1620946) (not b!1620767) (not d!488133) (not b!1620536) (not b_next!44379) (not d!488049) (not d!488029) (not bm!105087) (not b!1620513) (not b!1620538) b_and!114953 (not d!488061) (not bm!105092) (not b!1620511) (not b!1620504) (not d!487993) (not d!488055) (not d!488129) (not b!1621005) (not d!488097) (not d!487951) (not d!488057) b_and!114975 (not d!488125) (not d!488003) (not b!1620771) (not b!1620500) (not b!1620692) (not b_next!44363) (not b!1620976) (not d!488091) (not b!1620757) b_and!114955 (not b!1620516) (not d!488171) (not b!1620833) (not b!1621006) (not b!1620537) (not d!488021) (not b_lambda!51101) (not d!488011) (not d!487959) (not b!1620755) (not b!1620703) (not b!1620382) (not b!1620458) tp_is_empty!7261 (not b!1620539) (not d!488101) (not d!487965) (not b!1620512) (not b!1620579) (not b!1620602) (not b!1620762) (not b!1620580) (not b!1620533) (not d!487981) (not b!1620756) (not d!487957) (not b!1620975) (not d!488013) (not d!488051) (not b!1620849) (not b!1620463) (not d!487939) (not b!1620523) (not d!488119) (not d!487983) (not b!1620649) (not b!1620546) (not b!1620461) (not b!1620535) (not b!1621004) (not b!1620844) (not b!1620540) (not d!488063) (not d!488035) (not b!1620987) (not b_next!44365) (not b!1620758) (not b!1620509) (not b!1620974) (not b!1620957) b_and!114977 (not d!487941))
(check-sat b_and!114979 b_and!114933 b_and!114973 (not b_next!44375) (not b_next!44359) (not b_next!44381) (not b_next!44361) (not b_next!44379) b_and!114953 b_and!114975 (not b_next!44365) b_and!114977 b_and!114937 (not b_next!44377) (not b_next!44363) b_and!114955)
