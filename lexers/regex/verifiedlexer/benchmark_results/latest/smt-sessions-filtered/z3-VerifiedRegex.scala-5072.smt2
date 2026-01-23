; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!259534 () Bool)

(assert start!259534)

(declare-fun b!2668274 () Bool)

(declare-fun b_free!74797 () Bool)

(declare-fun b_next!75501 () Bool)

(assert (=> b!2668274 (= b_free!74797 (not b_next!75501))))

(declare-fun tp!843178 () Bool)

(declare-fun b_and!196757 () Bool)

(assert (=> b!2668274 (= tp!843178 b_and!196757)))

(declare-fun b_free!74799 () Bool)

(declare-fun b_next!75503 () Bool)

(assert (=> b!2668274 (= b_free!74799 (not b_next!75503))))

(declare-fun tp!843179 () Bool)

(declare-fun b_and!196759 () Bool)

(assert (=> b!2668274 (= tp!843179 b_and!196759)))

(declare-fun b!2668273 () Bool)

(declare-fun b_free!74801 () Bool)

(declare-fun b_next!75505 () Bool)

(assert (=> b!2668273 (= b_free!74801 (not b_next!75505))))

(declare-fun tp!843181 () Bool)

(declare-fun b_and!196761 () Bool)

(assert (=> b!2668273 (= tp!843181 b_and!196761)))

(declare-fun b_free!74803 () Bool)

(declare-fun b_next!75507 () Bool)

(assert (=> b!2668273 (= b_free!74803 (not b_next!75507))))

(declare-fun tp!843176 () Bool)

(declare-fun b_and!196763 () Bool)

(assert (=> b!2668273 (= tp!843176 b_and!196763)))

(declare-fun bs!479352 () Bool)

(declare-fun b!2668276 () Bool)

(declare-fun b!2668289 () Bool)

(assert (= bs!479352 (and b!2668276 b!2668289)))

(declare-fun lambda!99580 () Int)

(declare-fun lambda!99579 () Int)

(assert (=> bs!479352 (not (= lambda!99580 lambda!99579))))

(declare-fun b!2668301 () Bool)

(declare-fun e!1681356 () Bool)

(assert (=> b!2668301 (= e!1681356 true)))

(declare-fun b!2668300 () Bool)

(declare-fun e!1681355 () Bool)

(assert (=> b!2668300 (= e!1681355 e!1681356)))

(declare-fun b!2668299 () Bool)

(declare-fun e!1681354 () Bool)

(assert (=> b!2668299 (= e!1681354 e!1681355)))

(assert (=> b!2668276 e!1681354))

(assert (= b!2668300 b!2668301))

(assert (= b!2668299 b!2668300))

(declare-datatypes ((List!30721 0))(
  ( (Nil!30621) (Cons!30621 (h!36041 (_ BitVec 16)) (t!222920 List!30721)) )
))
(declare-datatypes ((C!15776 0))(
  ( (C!15777 (val!9822 Int)) )
))
(declare-datatypes ((Regex!7809 0))(
  ( (ElementMatch!7809 (c!430366 C!15776)) (Concat!12696 (regOne!16130 Regex!7809) (regTwo!16130 Regex!7809)) (EmptyExpr!7809) (Star!7809 (reg!8138 Regex!7809)) (EmptyLang!7809) (Union!7809 (regOne!16131 Regex!7809) (regTwo!16131 Regex!7809)) )
))
(declare-datatypes ((TokenValue!4887 0))(
  ( (FloatLiteralValue!9774 (text!34654 List!30721)) (TokenValueExt!4886 (__x!19607 Int)) (Broken!24435 (value!150531 List!30721)) (Object!4986) (End!4887) (Def!4887) (Underscore!4887) (Match!4887) (Else!4887) (Error!4887) (Case!4887) (If!4887) (Extends!4887) (Abstract!4887) (Class!4887) (Val!4887) (DelimiterValue!9774 (del!4947 List!30721)) (KeywordValue!4893 (value!150532 List!30721)) (CommentValue!9774 (value!150533 List!30721)) (WhitespaceValue!9774 (value!150534 List!30721)) (IndentationValue!4887 (value!150535 List!30721)) (String!34318) (Int32!4887) (Broken!24436 (value!150536 List!30721)) (Boolean!4888) (Unit!44870) (OperatorValue!4890 (op!4947 List!30721)) (IdentifierValue!9774 (value!150537 List!30721)) (IdentifierValue!9775 (value!150538 List!30721)) (WhitespaceValue!9775 (value!150539 List!30721)) (True!9774) (False!9774) (Broken!24437 (value!150540 List!30721)) (Broken!24438 (value!150541 List!30721)) (True!9775) (RightBrace!4887) (RightBracket!4887) (Colon!4887) (Null!4887) (Comma!4887) (LeftBracket!4887) (False!9775) (LeftBrace!4887) (ImaginaryLiteralValue!4887 (text!34655 List!30721)) (StringLiteralValue!14661 (value!150542 List!30721)) (EOFValue!4887 (value!150543 List!30721)) (IdentValue!4887 (value!150544 List!30721)) (DelimiterValue!9775 (value!150545 List!30721)) (DedentValue!4887 (value!150546 List!30721)) (NewLineValue!4887 (value!150547 List!30721)) (IntegerValue!14661 (value!150548 (_ BitVec 32)) (text!34656 List!30721)) (IntegerValue!14662 (value!150549 Int) (text!34657 List!30721)) (Times!4887) (Or!4887) (Equal!4887) (Minus!4887) (Broken!24439 (value!150550 List!30721)) (And!4887) (Div!4887) (LessEqual!4887) (Mod!4887) (Concat!12697) (Not!4887) (Plus!4887) (SpaceValue!4887 (value!150551 List!30721)) (IntegerValue!14663 (value!150552 Int) (text!34658 List!30721)) (StringLiteralValue!14662 (text!34659 List!30721)) (FloatLiteralValue!9775 (text!34660 List!30721)) (BytesLiteralValue!4887 (value!150553 List!30721)) (CommentValue!9775 (value!150554 List!30721)) (StringLiteralValue!14663 (value!150555 List!30721)) (ErrorTokenValue!4887 (msg!4948 List!30721)) )
))
(declare-datatypes ((List!30722 0))(
  ( (Nil!30622) (Cons!30622 (h!36042 C!15776) (t!222921 List!30722)) )
))
(declare-datatypes ((IArray!19149 0))(
  ( (IArray!19150 (innerList!9632 List!30722)) )
))
(declare-datatypes ((Conc!9572 0))(
  ( (Node!9572 (left!23676 Conc!9572) (right!24006 Conc!9572) (csize!19374 Int) (cheight!9783 Int)) (Leaf!14645 (xs!12602 IArray!19149) (csize!19375 Int)) (Empty!9572) )
))
(declare-datatypes ((BalanceConc!18758 0))(
  ( (BalanceConc!18759 (c!430367 Conc!9572)) )
))
(declare-datatypes ((TokenValueInjection!9214 0))(
  ( (TokenValueInjection!9215 (toValue!6603 Int) (toChars!6462 Int)) )
))
(declare-datatypes ((String!34319 0))(
  ( (String!34320 (value!150556 String)) )
))
(declare-datatypes ((Rule!9130 0))(
  ( (Rule!9131 (regex!4665 Regex!7809) (tag!5167 String!34319) (isSeparator!4665 Bool) (transformation!4665 TokenValueInjection!9214)) )
))
(declare-datatypes ((List!30723 0))(
  ( (Nil!30623) (Cons!30623 (h!36043 Rule!9130) (t!222922 List!30723)) )
))
(declare-fun rules!1726 () List!30723)

(get-info :version)

(assert (= (and b!2668276 ((_ is Cons!30623) rules!1726)) b!2668299))

(declare-fun order!16745 () Int)

(declare-fun order!16743 () Int)

(declare-fun dynLambda!13224 (Int Int) Int)

(declare-fun dynLambda!13225 (Int Int) Int)

(assert (=> b!2668301 (< (dynLambda!13224 order!16743 (toValue!6603 (transformation!4665 (h!36043 rules!1726)))) (dynLambda!13225 order!16745 lambda!99580))))

(declare-fun order!16747 () Int)

(declare-fun dynLambda!13226 (Int Int) Int)

(assert (=> b!2668301 (< (dynLambda!13226 order!16747 (toChars!6462 (transformation!4665 (h!36043 rules!1726)))) (dynLambda!13225 order!16745 lambda!99580))))

(assert (=> b!2668276 true))

(declare-fun b!2668270 () Bool)

(declare-fun e!1681338 () Bool)

(declare-fun e!1681347 () Bool)

(assert (=> b!2668270 (= e!1681338 e!1681347)))

(declare-fun res!1121827 () Bool)

(assert (=> b!2668270 (=> (not res!1121827) (not e!1681347))))

(declare-fun from!862 () Int)

(declare-fun lt!940329 () Int)

(assert (=> b!2668270 (= res!1121827 (<= from!862 lt!940329))))

(declare-datatypes ((Token!8800 0))(
  ( (Token!8801 (value!150557 TokenValue!4887) (rule!7071 Rule!9130) (size!23714 Int) (originalCharacters!5431 List!30722)) )
))
(declare-datatypes ((List!30724 0))(
  ( (Nil!30624) (Cons!30624 (h!36044 Token!8800) (t!222923 List!30724)) )
))
(declare-datatypes ((IArray!19151 0))(
  ( (IArray!19152 (innerList!9633 List!30724)) )
))
(declare-datatypes ((Conc!9573 0))(
  ( (Node!9573 (left!23677 Conc!9573) (right!24007 Conc!9573) (csize!19376 Int) (cheight!9784 Int)) (Leaf!14646 (xs!12603 IArray!19151) (csize!19377 Int)) (Empty!9573) )
))
(declare-datatypes ((BalanceConc!18760 0))(
  ( (BalanceConc!18761 (c!430368 Conc!9573)) )
))
(declare-fun v!6381 () BalanceConc!18760)

(declare-fun size!23715 (BalanceConc!18760) Int)

(assert (=> b!2668270 (= lt!940329 (size!23715 v!6381))))

(declare-fun b!2668271 () Bool)

(declare-fun e!1681344 () Bool)

(declare-fun err!4153 () BalanceConc!18758)

(declare-fun tp!843175 () Bool)

(declare-fun inv!41625 (Conc!9572) Bool)

(assert (=> b!2668271 (= e!1681344 (and (inv!41625 (c!430367 err!4153)) tp!843175))))

(declare-fun e!1681345 () Bool)

(declare-fun tp!843184 () Bool)

(declare-fun b!2668272 () Bool)

(declare-fun e!1681343 () Bool)

(declare-fun inv!41618 (String!34319) Bool)

(declare-fun inv!41626 (TokenValueInjection!9214) Bool)

(assert (=> b!2668272 (= e!1681345 (and tp!843184 (inv!41618 (tag!5167 (h!36043 rules!1726))) (inv!41626 (transformation!4665 (h!36043 rules!1726))) e!1681343))))

(declare-fun e!1681346 () Bool)

(assert (=> b!2668273 (= e!1681346 (and tp!843181 tp!843176))))

(assert (=> b!2668274 (= e!1681343 (and tp!843178 tp!843179))))

(declare-fun res!1121837 () Bool)

(assert (=> start!259534 (=> (not res!1121837) (not e!1681338))))

(declare-datatypes ((LexerInterface!4262 0))(
  ( (LexerInterfaceExt!4259 (__x!19608 Int)) (Lexer!4260) )
))
(declare-fun thiss!14197 () LexerInterface!4262)

(assert (=> start!259534 (= res!1121837 (and ((_ is Lexer!4260) thiss!14197) (>= from!862 0)))))

(assert (=> start!259534 e!1681338))

(assert (=> start!259534 true))

(declare-fun e!1681333 () Bool)

(assert (=> start!259534 e!1681333))

(declare-fun separatorToken!156 () Token!8800)

(declare-fun e!1681332 () Bool)

(declare-fun inv!41627 (Token!8800) Bool)

(assert (=> start!259534 (and (inv!41627 separatorToken!156) e!1681332)))

(declare-fun e!1681342 () Bool)

(declare-fun inv!41628 (BalanceConc!18760) Bool)

(assert (=> start!259534 (and (inv!41628 v!6381) e!1681342)))

(declare-fun b!2668275 () Bool)

(declare-fun tp!843182 () Bool)

(assert (=> b!2668275 (= e!1681333 (and e!1681345 tp!843182))))

(declare-fun e!1681341 () Bool)

(declare-fun e!1681335 () Bool)

(assert (=> b!2668276 (= e!1681341 e!1681335)))

(declare-fun res!1121829 () Bool)

(assert (=> b!2668276 (=> res!1121829 e!1681335)))

(declare-fun lt!940327 () Token!8800)

(declare-datatypes ((tuple2!30162 0))(
  ( (tuple2!30163 (_1!17623 Token!8800) (_2!17623 BalanceConc!18758)) )
))
(declare-datatypes ((Option!6072 0))(
  ( (None!6071) (Some!6071 (v!32594 tuple2!30162)) )
))
(declare-fun lt!940333 () Option!6072)

(declare-fun lt!940326 () Bool)

(assert (=> b!2668276 (= res!1121829 (or (and (not lt!940326) (= (_1!17623 (v!32594 lt!940333)) lt!940327)) (and (not lt!940326) (not (= (_1!17623 (v!32594 lt!940333)) lt!940327))) ((_ is None!6071) lt!940333)))))

(assert (=> b!2668276 (= lt!940326 (not ((_ is Some!6071) lt!940333)))))

(declare-fun maxPrefixZipperSequence!980 (LexerInterface!4262 List!30723 BalanceConc!18758) Option!6072)

(declare-fun ++!7483 (BalanceConc!18758 BalanceConc!18758) BalanceConc!18758)

(declare-fun charsOf!2944 (Token!8800) BalanceConc!18758)

(declare-fun printWithSeparatorTokenWhenNeededRec!526 (LexerInterface!4262 List!30723 BalanceConc!18760 Token!8800 Int) BalanceConc!18758)

(assert (=> b!2668276 (= lt!940333 (maxPrefixZipperSequence!980 thiss!14197 rules!1726 (++!7483 (charsOf!2944 lt!940327) (printWithSeparatorTokenWhenNeededRec!526 thiss!14197 rules!1726 v!6381 separatorToken!156 (+ 1 from!862)))))))

(declare-datatypes ((Unit!44871 0))(
  ( (Unit!44872) )
))
(declare-fun lt!940336 () Unit!44871)

(declare-fun lt!940334 () List!30724)

(declare-fun forallContained!1011 (List!30724 Int Token!8800) Unit!44871)

(assert (=> b!2668276 (= lt!940336 (forallContained!1011 lt!940334 lambda!99580 lt!940327))))

(declare-fun tp!843177 () Bool)

(declare-fun e!1681334 () Bool)

(declare-fun b!2668277 () Bool)

(declare-fun inv!21 (TokenValue!4887) Bool)

(assert (=> b!2668277 (= e!1681332 (and (inv!21 (value!150557 separatorToken!156)) e!1681334 tp!843177))))

(declare-fun b!2668278 () Bool)

(declare-fun res!1121832 () Bool)

(assert (=> b!2668278 (=> (not res!1121832) (not e!1681347))))

(assert (=> b!2668278 (= res!1121832 (isSeparator!4665 (rule!7071 separatorToken!156)))))

(declare-fun b!2668279 () Bool)

(declare-fun res!1121835 () Bool)

(assert (=> b!2668279 (=> (not res!1121835) (not e!1681347))))

(declare-fun rulesInvariant!3762 (LexerInterface!4262 List!30723) Bool)

(assert (=> b!2668279 (= res!1121835 (rulesInvariant!3762 thiss!14197 rules!1726))))

(declare-fun b!2668280 () Bool)

(declare-fun res!1121831 () Bool)

(assert (=> b!2668280 (=> (not res!1121831) (not e!1681347))))

(declare-fun rulesProduceEachTokenIndividually!1082 (LexerInterface!4262 List!30723 BalanceConc!18760) Bool)

(assert (=> b!2668280 (= res!1121831 (rulesProduceEachTokenIndividually!1082 thiss!14197 rules!1726 v!6381))))

(declare-fun b!2668281 () Bool)

(declare-fun res!1121833 () Bool)

(assert (=> b!2668281 (=> (not res!1121833) (not e!1681347))))

(declare-fun isEmpty!17529 (List!30723) Bool)

(assert (=> b!2668281 (= res!1121833 (not (isEmpty!17529 rules!1726)))))

(declare-fun lt!940332 () List!30724)

(declare-fun b!2668282 () Bool)

(declare-fun list!11570 (BalanceConc!18758) List!30722)

(declare-fun printWithSeparatorTokenWhenNeededList!672 (LexerInterface!4262 List!30723 List!30724 Token!8800) List!30722)

(assert (=> b!2668282 (= e!1681335 (= (list!11570 err!4153) (printWithSeparatorTokenWhenNeededList!672 thiss!14197 rules!1726 lt!940332 separatorToken!156)))))

(assert (=> b!2668282 true))

(declare-fun inv!41629 (BalanceConc!18758) Bool)

(assert (=> b!2668282 (and (inv!41629 err!4153) e!1681344)))

(declare-fun b!2668283 () Bool)

(declare-fun e!1681337 () Bool)

(assert (=> b!2668283 (= e!1681347 e!1681337)))

(declare-fun res!1121828 () Bool)

(assert (=> b!2668283 (=> (not res!1121828) (not e!1681337))))

(assert (=> b!2668283 (= res!1121828 (< from!862 lt!940329))))

(declare-fun lt!940331 () Unit!44871)

(declare-fun lemmaContentSubsetPreservesForall!332 (List!30724 List!30724 Int) Unit!44871)

(assert (=> b!2668283 (= lt!940331 (lemmaContentSubsetPreservesForall!332 lt!940334 lt!940332 lambda!99579))))

(declare-fun dropList!966 (BalanceConc!18760 Int) List!30724)

(assert (=> b!2668283 (= lt!940332 (dropList!966 v!6381 from!862))))

(declare-fun list!11571 (BalanceConc!18760) List!30724)

(assert (=> b!2668283 (= lt!940334 (list!11571 v!6381))))

(declare-fun b!2668284 () Bool)

(declare-fun res!1121826 () Bool)

(assert (=> b!2668284 (=> (not res!1121826) (not e!1681347))))

(declare-fun sepAndNonSepRulesDisjointChars!1238 (List!30723 List!30723) Bool)

(assert (=> b!2668284 (= res!1121826 (sepAndNonSepRulesDisjointChars!1238 rules!1726 rules!1726))))

(declare-fun b!2668285 () Bool)

(declare-fun res!1121834 () Bool)

(assert (=> b!2668285 (=> (not res!1121834) (not e!1681347))))

(declare-fun rulesProduceIndividualToken!1974 (LexerInterface!4262 List!30723 Token!8800) Bool)

(assert (=> b!2668285 (= res!1121834 (rulesProduceIndividualToken!1974 thiss!14197 rules!1726 separatorToken!156))))

(declare-fun b!2668286 () Bool)

(declare-fun tp!843183 () Bool)

(declare-fun inv!41630 (Conc!9573) Bool)

(assert (=> b!2668286 (= e!1681342 (and (inv!41630 (c!430368 v!6381)) tp!843183))))

(declare-fun b!2668287 () Bool)

(assert (=> b!2668287 (= e!1681337 (not e!1681341))))

(declare-fun res!1121836 () Bool)

(assert (=> b!2668287 (=> res!1121836 e!1681341)))

(declare-fun contains!5872 (BalanceConc!18760 Token!8800) Bool)

(assert (=> b!2668287 (= res!1121836 (not (contains!5872 v!6381 lt!940327)))))

(declare-fun apply!7349 (BalanceConc!18760 Int) Token!8800)

(assert (=> b!2668287 (= lt!940327 (apply!7349 v!6381 from!862))))

(declare-fun lt!940335 () List!30724)

(declare-fun tail!4309 (List!30724) List!30724)

(declare-fun drop!1663 (List!30724 Int) List!30724)

(assert (=> b!2668287 (= (tail!4309 lt!940335) (drop!1663 lt!940334 (+ 1 from!862)))))

(declare-fun lt!940330 () Unit!44871)

(declare-fun lemmaDropTail!844 (List!30724 Int) Unit!44871)

(assert (=> b!2668287 (= lt!940330 (lemmaDropTail!844 lt!940334 from!862))))

(declare-fun head!6071 (List!30724) Token!8800)

(declare-fun apply!7350 (List!30724 Int) Token!8800)

(assert (=> b!2668287 (= (head!6071 lt!940335) (apply!7350 lt!940334 from!862))))

(assert (=> b!2668287 (= lt!940335 (drop!1663 lt!940334 from!862))))

(declare-fun lt!940328 () Unit!44871)

(declare-fun lemmaDropApply!872 (List!30724 Int) Unit!44871)

(assert (=> b!2668287 (= lt!940328 (lemmaDropApply!872 lt!940334 from!862))))

(declare-fun tp!843180 () Bool)

(declare-fun b!2668288 () Bool)

(assert (=> b!2668288 (= e!1681334 (and tp!843180 (inv!41618 (tag!5167 (rule!7071 separatorToken!156))) (inv!41626 (transformation!4665 (rule!7071 separatorToken!156))) e!1681346))))

(declare-fun res!1121830 () Bool)

(assert (=> b!2668289 (=> (not res!1121830) (not e!1681347))))

(declare-fun forall!6478 (BalanceConc!18760 Int) Bool)

(assert (=> b!2668289 (= res!1121830 (forall!6478 v!6381 lambda!99579))))

(declare-fun b!2668290 () Bool)

(declare-fun res!1121838 () Bool)

(assert (=> b!2668290 (=> res!1121838 e!1681341)))

(declare-fun contains!5873 (List!30724 Token!8800) Bool)

(assert (=> b!2668290 (= res!1121838 (not (contains!5873 lt!940334 lt!940327)))))

(assert (= (and start!259534 res!1121837) b!2668270))

(assert (= (and b!2668270 res!1121827) b!2668281))

(assert (= (and b!2668281 res!1121833) b!2668279))

(assert (= (and b!2668279 res!1121835) b!2668280))

(assert (= (and b!2668280 res!1121831) b!2668285))

(assert (= (and b!2668285 res!1121834) b!2668278))

(assert (= (and b!2668278 res!1121832) b!2668289))

(assert (= (and b!2668289 res!1121830) b!2668284))

(assert (= (and b!2668284 res!1121826) b!2668283))

(assert (= (and b!2668283 res!1121828) b!2668287))

(assert (= (and b!2668287 (not res!1121836)) b!2668290))

(assert (= (and b!2668290 (not res!1121838)) b!2668276))

(assert (= (and b!2668276 (not res!1121829)) b!2668282))

(assert (= b!2668282 b!2668271))

(assert (= b!2668272 b!2668274))

(assert (= b!2668275 b!2668272))

(assert (= (and start!259534 ((_ is Cons!30623) rules!1726)) b!2668275))

(assert (= b!2668288 b!2668273))

(assert (= b!2668277 b!2668288))

(assert (= start!259534 b!2668277))

(assert (= start!259534 b!2668286))

(declare-fun m!3035113 () Bool)

(assert (=> b!2668279 m!3035113))

(declare-fun m!3035115 () Bool)

(assert (=> b!2668280 m!3035115))

(declare-fun m!3035117 () Bool)

(assert (=> b!2668288 m!3035117))

(declare-fun m!3035119 () Bool)

(assert (=> b!2668288 m!3035119))

(declare-fun m!3035121 () Bool)

(assert (=> b!2668283 m!3035121))

(declare-fun m!3035123 () Bool)

(assert (=> b!2668283 m!3035123))

(declare-fun m!3035125 () Bool)

(assert (=> b!2668283 m!3035125))

(declare-fun m!3035127 () Bool)

(assert (=> b!2668285 m!3035127))

(declare-fun m!3035129 () Bool)

(assert (=> b!2668282 m!3035129))

(declare-fun m!3035131 () Bool)

(assert (=> b!2668282 m!3035131))

(declare-fun m!3035133 () Bool)

(assert (=> b!2668282 m!3035133))

(declare-fun m!3035135 () Bool)

(assert (=> b!2668272 m!3035135))

(declare-fun m!3035137 () Bool)

(assert (=> b!2668272 m!3035137))

(declare-fun m!3035139 () Bool)

(assert (=> b!2668289 m!3035139))

(declare-fun m!3035141 () Bool)

(assert (=> b!2668276 m!3035141))

(declare-fun m!3035143 () Bool)

(assert (=> b!2668276 m!3035143))

(declare-fun m!3035145 () Bool)

(assert (=> b!2668276 m!3035145))

(assert (=> b!2668276 m!3035143))

(assert (=> b!2668276 m!3035145))

(declare-fun m!3035147 () Bool)

(assert (=> b!2668276 m!3035147))

(assert (=> b!2668276 m!3035141))

(declare-fun m!3035149 () Bool)

(assert (=> b!2668276 m!3035149))

(declare-fun m!3035151 () Bool)

(assert (=> b!2668277 m!3035151))

(declare-fun m!3035153 () Bool)

(assert (=> b!2668271 m!3035153))

(declare-fun m!3035155 () Bool)

(assert (=> b!2668281 m!3035155))

(declare-fun m!3035157 () Bool)

(assert (=> b!2668287 m!3035157))

(declare-fun m!3035159 () Bool)

(assert (=> b!2668287 m!3035159))

(declare-fun m!3035161 () Bool)

(assert (=> b!2668287 m!3035161))

(declare-fun m!3035163 () Bool)

(assert (=> b!2668287 m!3035163))

(declare-fun m!3035165 () Bool)

(assert (=> b!2668287 m!3035165))

(declare-fun m!3035167 () Bool)

(assert (=> b!2668287 m!3035167))

(declare-fun m!3035169 () Bool)

(assert (=> b!2668287 m!3035169))

(declare-fun m!3035171 () Bool)

(assert (=> b!2668287 m!3035171))

(declare-fun m!3035173 () Bool)

(assert (=> b!2668287 m!3035173))

(declare-fun m!3035175 () Bool)

(assert (=> start!259534 m!3035175))

(declare-fun m!3035177 () Bool)

(assert (=> start!259534 m!3035177))

(declare-fun m!3035179 () Bool)

(assert (=> b!2668290 m!3035179))

(declare-fun m!3035181 () Bool)

(assert (=> b!2668284 m!3035181))

(declare-fun m!3035183 () Bool)

(assert (=> b!2668286 m!3035183))

(declare-fun m!3035185 () Bool)

(assert (=> b!2668270 m!3035185))

(check-sat (not b!2668289) b_and!196757 (not b!2668284) (not b_next!75505) b_and!196759 (not b!2668275) (not b!2668283) (not b!2668282) (not b!2668288) (not b!2668271) (not b!2668281) (not b!2668285) (not b!2668299) (not b!2668272) (not b!2668287) (not b_next!75507) (not start!259534) b_and!196763 (not b!2668280) (not b!2668286) (not b!2668279) (not b!2668277) (not b_next!75501) b_and!196761 (not b_next!75503) (not b!2668270) (not b!2668276) (not b!2668290))
(check-sat (not b_next!75507) b_and!196757 b_and!196763 (not b_next!75505) b_and!196759 (not b_next!75503) (not b_next!75501) b_and!196761)
