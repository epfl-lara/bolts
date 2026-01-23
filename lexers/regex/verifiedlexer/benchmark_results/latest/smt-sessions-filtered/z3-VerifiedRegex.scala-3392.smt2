; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!192020 () Bool)

(assert start!192020)

(declare-fun b!1914834 () Bool)

(declare-fun b_free!54201 () Bool)

(declare-fun b_next!54905 () Bool)

(assert (=> b!1914834 (= b_free!54201 (not b_next!54905))))

(declare-fun tp!546484 () Bool)

(declare-fun b_and!149311 () Bool)

(assert (=> b!1914834 (= tp!546484 b_and!149311)))

(declare-fun b_free!54203 () Bool)

(declare-fun b_next!54907 () Bool)

(assert (=> b!1914834 (= b_free!54203 (not b_next!54907))))

(declare-fun tp!546476 () Bool)

(declare-fun b_and!149313 () Bool)

(assert (=> b!1914834 (= tp!546476 b_and!149313)))

(declare-fun b!1914848 () Bool)

(declare-fun b_free!54205 () Bool)

(declare-fun b_next!54909 () Bool)

(assert (=> b!1914848 (= b_free!54205 (not b_next!54909))))

(declare-fun tp!546477 () Bool)

(declare-fun b_and!149315 () Bool)

(assert (=> b!1914848 (= tp!546477 b_and!149315)))

(declare-fun b_free!54207 () Bool)

(declare-fun b_next!54911 () Bool)

(assert (=> b!1914848 (= b_free!54207 (not b_next!54911))))

(declare-fun tp!546482 () Bool)

(declare-fun b_and!149317 () Bool)

(assert (=> b!1914848 (= tp!546482 b_and!149317)))

(declare-fun b!1914819 () Bool)

(declare-fun b_free!54209 () Bool)

(declare-fun b_next!54913 () Bool)

(assert (=> b!1914819 (= b_free!54209 (not b_next!54913))))

(declare-fun tp!546472 () Bool)

(declare-fun b_and!149319 () Bool)

(assert (=> b!1914819 (= tp!546472 b_and!149319)))

(declare-fun b_free!54211 () Bool)

(declare-fun b_next!54915 () Bool)

(assert (=> b!1914819 (= b_free!54211 (not b_next!54915))))

(declare-fun tp!546481 () Bool)

(declare-fun b_and!149321 () Bool)

(assert (=> b!1914819 (= tp!546481 b_and!149321)))

(declare-fun b!1914811 () Bool)

(declare-fun res!855595 () Bool)

(declare-fun e!1223289 () Bool)

(assert (=> b!1914811 (=> (not res!855595) (not e!1223289))))

(declare-datatypes ((List!21706 0))(
  ( (Nil!21624) (Cons!21624 (h!27025 (_ BitVec 16)) (t!178387 List!21706)) )
))
(declare-datatypes ((TokenValue!3996 0))(
  ( (FloatLiteralValue!7992 (text!28417 List!21706)) (TokenValueExt!3995 (__x!13490 Int)) (Broken!19980 (value!121575 List!21706)) (Object!4077) (End!3996) (Def!3996) (Underscore!3996) (Match!3996) (Else!3996) (Error!3996) (Case!3996) (If!3996) (Extends!3996) (Abstract!3996) (Class!3996) (Val!3996) (DelimiterValue!7992 (del!4056 List!21706)) (KeywordValue!4002 (value!121576 List!21706)) (CommentValue!7992 (value!121577 List!21706)) (WhitespaceValue!7992 (value!121578 List!21706)) (IndentationValue!3996 (value!121579 List!21706)) (String!25097) (Int32!3996) (Broken!19981 (value!121580 List!21706)) (Boolean!3997) (Unit!36013) (OperatorValue!3999 (op!4056 List!21706)) (IdentifierValue!7992 (value!121581 List!21706)) (IdentifierValue!7993 (value!121582 List!21706)) (WhitespaceValue!7993 (value!121583 List!21706)) (True!7992) (False!7992) (Broken!19982 (value!121584 List!21706)) (Broken!19983 (value!121585 List!21706)) (True!7993) (RightBrace!3996) (RightBracket!3996) (Colon!3996) (Null!3996) (Comma!3996) (LeftBracket!3996) (False!7993) (LeftBrace!3996) (ImaginaryLiteralValue!3996 (text!28418 List!21706)) (StringLiteralValue!11988 (value!121586 List!21706)) (EOFValue!3996 (value!121587 List!21706)) (IdentValue!3996 (value!121588 List!21706)) (DelimiterValue!7993 (value!121589 List!21706)) (DedentValue!3996 (value!121590 List!21706)) (NewLineValue!3996 (value!121591 List!21706)) (IntegerValue!11988 (value!121592 (_ BitVec 32)) (text!28419 List!21706)) (IntegerValue!11989 (value!121593 Int) (text!28420 List!21706)) (Times!3996) (Or!3996) (Equal!3996) (Minus!3996) (Broken!19984 (value!121594 List!21706)) (And!3996) (Div!3996) (LessEqual!3996) (Mod!3996) (Concat!9281) (Not!3996) (Plus!3996) (SpaceValue!3996 (value!121595 List!21706)) (IntegerValue!11990 (value!121596 Int) (text!28421 List!21706)) (StringLiteralValue!11989 (text!28422 List!21706)) (FloatLiteralValue!7993 (text!28423 List!21706)) (BytesLiteralValue!3996 (value!121597 List!21706)) (CommentValue!7993 (value!121598 List!21706)) (StringLiteralValue!11990 (value!121599 List!21706)) (ErrorTokenValue!3996 (msg!4057 List!21706)) )
))
(declare-datatypes ((C!10716 0))(
  ( (C!10717 (val!6310 Int)) )
))
(declare-datatypes ((List!21707 0))(
  ( (Nil!21625) (Cons!21625 (h!27026 C!10716) (t!178388 List!21707)) )
))
(declare-datatypes ((Regex!5285 0))(
  ( (ElementMatch!5285 (c!311778 C!10716)) (Concat!9282 (regOne!11082 Regex!5285) (regTwo!11082 Regex!5285)) (EmptyExpr!5285) (Star!5285 (reg!5614 Regex!5285)) (EmptyLang!5285) (Union!5285 (regOne!11083 Regex!5285) (regTwo!11083 Regex!5285)) )
))
(declare-datatypes ((String!25098 0))(
  ( (String!25099 (value!121600 String)) )
))
(declare-datatypes ((IArray!14429 0))(
  ( (IArray!14430 (innerList!7272 List!21707)) )
))
(declare-datatypes ((Conc!7212 0))(
  ( (Node!7212 (left!17272 Conc!7212) (right!17602 Conc!7212) (csize!14654 Int) (cheight!7423 Int)) (Leaf!10605 (xs!10106 IArray!14429) (csize!14655 Int)) (Empty!7212) )
))
(declare-datatypes ((BalanceConc!14240 0))(
  ( (BalanceConc!14241 (c!311779 Conc!7212)) )
))
(declare-datatypes ((TokenValueInjection!7576 0))(
  ( (TokenValueInjection!7577 (toValue!5489 Int) (toChars!5348 Int)) )
))
(declare-datatypes ((Rule!7520 0))(
  ( (Rule!7521 (regex!3860 Regex!5285) (tag!4298 String!25098) (isSeparator!3860 Bool) (transformation!3860 TokenValueInjection!7576)) )
))
(declare-datatypes ((Token!7272 0))(
  ( (Token!7273 (value!121601 TokenValue!3996) (rule!6061 Rule!7520) (size!17000 Int) (originalCharacters!4667 List!21707)) )
))
(declare-fun separatorToken!354 () Token!7272)

(assert (=> b!1914811 (= res!855595 (isSeparator!3860 (rule!6061 separatorToken!354)))))

(declare-fun b!1914812 () Bool)

(declare-fun res!855612 () Bool)

(declare-fun e!1223292 () Bool)

(assert (=> b!1914812 (=> res!855612 e!1223292)))

(declare-datatypes ((tuple2!20354 0))(
  ( (tuple2!20355 (_1!11646 Token!7272) (_2!11646 List!21707)) )
))
(declare-fun lt!733497 () tuple2!20354)

(declare-fun isEmpty!13309 (List!21707) Bool)

(assert (=> b!1914812 (= res!855612 (not (isEmpty!13309 (_2!11646 lt!733497))))))

(declare-fun b!1914813 () Bool)

(declare-fun res!855616 () Bool)

(assert (=> b!1914813 (=> res!855616 e!1223292)))

(declare-datatypes ((List!21708 0))(
  ( (Nil!21626) (Cons!21626 (h!27027 Token!7272) (t!178389 List!21708)) )
))
(declare-fun tokens!598 () List!21708)

(assert (=> b!1914813 (= res!855616 (isSeparator!3860 (rule!6061 (h!27027 tokens!598))))))

(declare-fun tp!546483 () Bool)

(declare-fun e!1223270 () Bool)

(declare-fun e!1223295 () Bool)

(declare-fun b!1914814 () Bool)

(declare-fun inv!28721 (String!25098) Bool)

(declare-fun inv!28724 (TokenValueInjection!7576) Bool)

(assert (=> b!1914814 (= e!1223295 (and tp!546483 (inv!28721 (tag!4298 (rule!6061 separatorToken!354))) (inv!28724 (transformation!3860 (rule!6061 separatorToken!354))) e!1223270))))

(declare-fun tp!546478 () Bool)

(declare-datatypes ((List!21709 0))(
  ( (Nil!21627) (Cons!21627 (h!27028 Rule!7520) (t!178390 List!21709)) )
))
(declare-fun rules!3198 () List!21709)

(declare-fun e!1223280 () Bool)

(declare-fun b!1914815 () Bool)

(declare-fun e!1223273 () Bool)

(assert (=> b!1914815 (= e!1223280 (and tp!546478 (inv!28721 (tag!4298 (h!27028 rules!3198))) (inv!28724 (transformation!3860 (h!27028 rules!3198))) e!1223273))))

(declare-fun tp!546474 () Bool)

(declare-fun b!1914817 () Bool)

(declare-fun e!1223271 () Bool)

(declare-fun e!1223284 () Bool)

(declare-fun inv!28725 (Token!7272) Bool)

(assert (=> b!1914817 (= e!1223284 (and (inv!28725 (h!27027 tokens!598)) e!1223271 tp!546474))))

(declare-fun b!1914818 () Bool)

(declare-fun e!1223275 () Bool)

(assert (=> b!1914818 (= e!1223289 (not e!1223275))))

(declare-fun res!855607 () Bool)

(assert (=> b!1914818 (=> res!855607 e!1223275)))

(declare-fun lt!733505 () Bool)

(declare-datatypes ((Option!4425 0))(
  ( (None!4424) (Some!4424 (v!26489 tuple2!20354)) )
))
(declare-fun lt!733494 () Option!4425)

(assert (=> b!1914818 (= res!855607 (or (and (not lt!733505) (= (_1!11646 (v!26489 lt!733494)) (h!27027 tokens!598))) lt!733505 (= (_1!11646 (v!26489 lt!733494)) (h!27027 tokens!598))))))

(get-info :version)

(assert (=> b!1914818 (= lt!733505 (not ((_ is Some!4424) lt!733494)))))

(declare-fun lt!733507 () List!21707)

(declare-fun lt!733515 () List!21707)

(declare-datatypes ((LexerInterface!3473 0))(
  ( (LexerInterfaceExt!3470 (__x!13491 Int)) (Lexer!3471) )
))
(declare-fun thiss!23328 () LexerInterface!3473)

(declare-fun maxPrefix!1919 (LexerInterface!3473 List!21709 List!21707) Option!4425)

(declare-fun ++!5813 (List!21707 List!21707) List!21707)

(assert (=> b!1914818 (= lt!733494 (maxPrefix!1919 thiss!23328 rules!3198 (++!5813 lt!733507 lt!733515)))))

(declare-fun printWithSeparatorTokenWhenNeededList!516 (LexerInterface!3473 List!21709 List!21708 Token!7272) List!21707)

(assert (=> b!1914818 (= lt!733515 (printWithSeparatorTokenWhenNeededList!516 thiss!23328 rules!3198 (t!178389 tokens!598) separatorToken!354))))

(declare-fun e!1223277 () Bool)

(assert (=> b!1914818 e!1223277))

(declare-fun res!855600 () Bool)

(assert (=> b!1914818 (=> (not res!855600) (not e!1223277))))

(declare-datatypes ((Option!4426 0))(
  ( (None!4425) (Some!4425 (v!26490 Rule!7520)) )
))
(declare-fun lt!733500 () Option!4426)

(declare-fun isDefined!3723 (Option!4426) Bool)

(assert (=> b!1914818 (= res!855600 (isDefined!3723 lt!733500))))

(declare-fun getRuleFromTag!703 (LexerInterface!3473 List!21709 String!25098) Option!4426)

(assert (=> b!1914818 (= lt!733500 (getRuleFromTag!703 thiss!23328 rules!3198 (tag!4298 (rule!6061 (h!27027 tokens!598)))))))

(declare-datatypes ((Unit!36014 0))(
  ( (Unit!36015) )
))
(declare-fun lt!733516 () Unit!36014)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!703 (LexerInterface!3473 List!21709 List!21707 Token!7272) Unit!36014)

(assert (=> b!1914818 (= lt!733516 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!703 thiss!23328 rules!3198 lt!733507 (h!27027 tokens!598)))))

(assert (=> b!1914818 (= (_1!11646 lt!733497) (h!27027 tokens!598))))

(declare-fun lt!733504 () Option!4425)

(declare-fun get!6762 (Option!4425) tuple2!20354)

(assert (=> b!1914818 (= lt!733497 (get!6762 lt!733504))))

(declare-fun isDefined!3724 (Option!4425) Bool)

(assert (=> b!1914818 (isDefined!3724 lt!733504)))

(assert (=> b!1914818 (= lt!733504 (maxPrefix!1919 thiss!23328 rules!3198 lt!733507))))

(declare-fun lt!733520 () BalanceConc!14240)

(declare-fun list!8788 (BalanceConc!14240) List!21707)

(assert (=> b!1914818 (= lt!733507 (list!8788 lt!733520))))

(declare-fun e!1223286 () Bool)

(assert (=> b!1914818 e!1223286))

(declare-fun res!855609 () Bool)

(assert (=> b!1914818 (=> (not res!855609) (not e!1223286))))

(declare-fun lt!733514 () Option!4426)

(assert (=> b!1914818 (= res!855609 (isDefined!3723 lt!733514))))

(assert (=> b!1914818 (= lt!733514 (getRuleFromTag!703 thiss!23328 rules!3198 (tag!4298 (rule!6061 separatorToken!354))))))

(declare-fun lt!733513 () Unit!36014)

(declare-fun lt!733492 () List!21707)

(assert (=> b!1914818 (= lt!733513 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!703 thiss!23328 rules!3198 lt!733492 separatorToken!354))))

(declare-fun charsOf!2416 (Token!7272) BalanceConc!14240)

(assert (=> b!1914818 (= lt!733492 (list!8788 (charsOf!2416 separatorToken!354)))))

(declare-fun lt!733509 () Unit!36014)

(declare-fun lemmaEqSameImage!568 (TokenValueInjection!7576 BalanceConc!14240 BalanceConc!14240) Unit!36014)

(declare-fun seqFromList!2732 (List!21707) BalanceConc!14240)

(assert (=> b!1914818 (= lt!733509 (lemmaEqSameImage!568 (transformation!3860 (rule!6061 (h!27027 tokens!598))) lt!733520 (seqFromList!2732 (originalCharacters!4667 (h!27027 tokens!598)))))))

(declare-fun lt!733508 () Unit!36014)

(declare-fun lemmaSemiInverse!839 (TokenValueInjection!7576 BalanceConc!14240) Unit!36014)

(assert (=> b!1914818 (= lt!733508 (lemmaSemiInverse!839 (transformation!3860 (rule!6061 (h!27027 tokens!598))) lt!733520))))

(assert (=> b!1914818 (= lt!733520 (charsOf!2416 (h!27027 tokens!598)))))

(declare-fun e!1223278 () Bool)

(assert (=> b!1914819 (= e!1223278 (and tp!546472 tp!546481))))

(declare-fun b!1914820 () Bool)

(declare-fun res!855593 () Bool)

(assert (=> b!1914820 (=> res!855593 e!1223292)))

(declare-datatypes ((IArray!14431 0))(
  ( (IArray!14432 (innerList!7273 List!21708)) )
))
(declare-datatypes ((Conc!7213 0))(
  ( (Node!7213 (left!17273 Conc!7213) (right!17603 Conc!7213) (csize!14656 Int) (cheight!7424 Int)) (Leaf!10606 (xs!10107 IArray!14431) (csize!14657 Int)) (Empty!7213) )
))
(declare-datatypes ((BalanceConc!14242 0))(
  ( (BalanceConc!14243 (c!311780 Conc!7213)) )
))
(declare-fun isEmpty!13310 (BalanceConc!14242) Bool)

(declare-datatypes ((tuple2!20356 0))(
  ( (tuple2!20357 (_1!11647 BalanceConc!14242) (_2!11647 BalanceConc!14240)) )
))
(declare-fun lex!1548 (LexerInterface!3473 List!21709 BalanceConc!14240) tuple2!20356)

(assert (=> b!1914820 (= res!855593 (isEmpty!13310 (_1!11647 (lex!1548 thiss!23328 rules!3198 (seqFromList!2732 lt!733507)))))))

(declare-fun b!1914821 () Bool)

(declare-fun res!855601 () Bool)

(assert (=> b!1914821 (=> (not res!855601) (not e!1223289))))

(declare-fun isEmpty!13311 (List!21709) Bool)

(assert (=> b!1914821 (= res!855601 (not (isEmpty!13311 rules!3198)))))

(declare-fun e!1223282 () Bool)

(declare-fun tp!546475 () Bool)

(declare-fun b!1914822 () Bool)

(declare-fun inv!21 (TokenValue!3996) Bool)

(assert (=> b!1914822 (= e!1223282 (and (inv!21 (value!121601 separatorToken!354)) e!1223295 tp!546475))))

(declare-fun b!1914823 () Bool)

(declare-fun res!855617 () Bool)

(assert (=> b!1914823 (=> (not res!855617) (not e!1223289))))

(declare-fun lambda!74747 () Int)

(declare-fun forall!4554 (List!21708 Int) Bool)

(assert (=> b!1914823 (= res!855617 (forall!4554 tokens!598 lambda!74747))))

(declare-fun b!1914824 () Bool)

(declare-fun res!855598 () Bool)

(assert (=> b!1914824 (=> (not res!855598) (not e!1223289))))

(declare-fun rulesProduceEachTokenIndividuallyList!1204 (LexerInterface!3473 List!21709 List!21708) Bool)

(assert (=> b!1914824 (= res!855598 (rulesProduceEachTokenIndividuallyList!1204 thiss!23328 rules!3198 tokens!598))))

(declare-fun b!1914825 () Bool)

(declare-fun res!855606 () Bool)

(declare-fun e!1223276 () Bool)

(assert (=> b!1914825 (=> res!855606 e!1223276)))

(declare-fun lt!733499 () List!21707)

(assert (=> b!1914825 (= res!855606 (isEmpty!13309 lt!733499))))

(declare-fun b!1914826 () Bool)

(declare-fun res!855594 () Bool)

(assert (=> b!1914826 (=> (not res!855594) (not e!1223289))))

(declare-fun sepAndNonSepRulesDisjointChars!958 (List!21709 List!21709) Bool)

(assert (=> b!1914826 (= res!855594 (sepAndNonSepRulesDisjointChars!958 rules!3198 rules!3198))))

(declare-fun b!1914827 () Bool)

(declare-fun e!1223288 () Unit!36014)

(declare-fun Unit!36016 () Unit!36014)

(assert (=> b!1914827 (= e!1223288 Unit!36016)))

(declare-fun b!1914828 () Bool)

(declare-fun res!855604 () Bool)

(assert (=> b!1914828 (=> res!855604 e!1223292)))

(declare-fun rulesProduceIndividualToken!1645 (LexerInterface!3473 List!21709 Token!7272) Bool)

(assert (=> b!1914828 (= res!855604 (not (rulesProduceIndividualToken!1645 thiss!23328 rules!3198 (h!27027 tokens!598))))))

(declare-fun b!1914829 () Bool)

(assert (=> b!1914829 (= e!1223275 e!1223292)))

(declare-fun res!855599 () Bool)

(assert (=> b!1914829 (=> res!855599 e!1223292)))

(declare-fun lt!733510 () List!21707)

(declare-fun lt!733496 () List!21707)

(assert (=> b!1914829 (= res!855599 (or (not (= lt!733510 lt!733496)) (not (= lt!733496 lt!733507)) (not (= lt!733510 lt!733507))))))

(declare-fun printList!1056 (LexerInterface!3473 List!21708) List!21707)

(assert (=> b!1914829 (= lt!733496 (printList!1056 thiss!23328 (Cons!21626 (h!27027 tokens!598) Nil!21626)))))

(declare-fun lt!733506 () BalanceConc!14240)

(assert (=> b!1914829 (= lt!733510 (list!8788 lt!733506))))

(declare-fun lt!733502 () BalanceConc!14242)

(declare-fun printTailRec!990 (LexerInterface!3473 BalanceConc!14242 Int BalanceConc!14240) BalanceConc!14240)

(assert (=> b!1914829 (= lt!733506 (printTailRec!990 thiss!23328 lt!733502 0 (BalanceConc!14241 Empty!7212)))))

(declare-fun print!1483 (LexerInterface!3473 BalanceConc!14242) BalanceConc!14240)

(assert (=> b!1914829 (= lt!733506 (print!1483 thiss!23328 lt!733502))))

(declare-fun singletonSeq!1883 (Token!7272) BalanceConc!14242)

(assert (=> b!1914829 (= lt!733502 (singletonSeq!1883 (h!27027 tokens!598)))))

(declare-fun lt!733491 () List!21707)

(declare-fun lt!733498 () C!10716)

(declare-fun contains!3924 (List!21707 C!10716) Bool)

(assert (=> b!1914829 (not (contains!3924 lt!733491 lt!733498))))

(declare-fun usedCharacters!368 (Regex!5285) List!21707)

(assert (=> b!1914829 (= lt!733491 (usedCharacters!368 (regex!3860 (rule!6061 (h!27027 tokens!598)))))))

(declare-fun lt!733511 () Unit!36014)

(declare-fun lemmaNonSepRuleNotContainsCharContainedInASepRule!64 (LexerInterface!3473 List!21709 List!21709 Rule!7520 Rule!7520 C!10716) Unit!36014)

(assert (=> b!1914829 (= lt!733511 (lemmaNonSepRuleNotContainsCharContainedInASepRule!64 thiss!23328 rules!3198 rules!3198 (rule!6061 (h!27027 tokens!598)) (rule!6061 separatorToken!354) lt!733498))))

(declare-fun lt!733512 () Unit!36014)

(assert (=> b!1914829 (= lt!733512 e!1223288)))

(declare-fun c!311777 () Bool)

(declare-fun lt!733501 () List!21707)

(assert (=> b!1914829 (= c!311777 (not (contains!3924 lt!733501 lt!733498)))))

(declare-fun head!4468 (List!21707) C!10716)

(assert (=> b!1914829 (= lt!733498 (head!4468 lt!733492))))

(assert (=> b!1914829 (= lt!733501 (usedCharacters!368 (regex!3860 (rule!6061 separatorToken!354))))))

(declare-fun lt!733522 () List!21707)

(declare-fun lt!733518 () List!21707)

(assert (=> b!1914829 (= lt!733522 lt!733518)))

(assert (=> b!1914829 (= lt!733518 (++!5813 lt!733507 lt!733499))))

(declare-fun lt!733517 () List!21707)

(assert (=> b!1914829 (= lt!733522 (++!5813 lt!733517 lt!733515))))

(assert (=> b!1914829 (= lt!733499 (++!5813 lt!733492 lt!733515))))

(assert (=> b!1914829 (= lt!733517 (++!5813 lt!733507 lt!733492))))

(declare-fun lt!733495 () Unit!36014)

(declare-fun lemmaConcatAssociativity!1175 (List!21707 List!21707 List!21707) Unit!36014)

(assert (=> b!1914829 (= lt!733495 (lemmaConcatAssociativity!1175 lt!733507 lt!733492 lt!733515))))

(declare-fun b!1914830 () Bool)

(declare-fun res!855620 () Bool)

(declare-fun e!1223281 () Bool)

(assert (=> b!1914830 (=> res!855620 e!1223281)))

(assert (=> b!1914830 (= res!855620 (not (isDefined!3724 (maxPrefix!1919 thiss!23328 rules!3198 (printWithSeparatorTokenWhenNeededList!516 thiss!23328 rules!3198 tokens!598 separatorToken!354)))))))

(declare-fun b!1914831 () Bool)

(assert (=> b!1914831 (= e!1223292 e!1223276)))

(declare-fun res!855602 () Bool)

(assert (=> b!1914831 (=> res!855602 e!1223276)))

(declare-fun matchR!2571 (Regex!5285 List!21707) Bool)

(assert (=> b!1914831 (= res!855602 (not (matchR!2571 (regex!3860 (rule!6061 (h!27027 tokens!598))) lt!733507)))))

(declare-fun ruleValid!1179 (LexerInterface!3473 Rule!7520) Bool)

(assert (=> b!1914831 (ruleValid!1179 thiss!23328 (rule!6061 (h!27027 tokens!598)))))

(declare-fun lt!733503 () Unit!36014)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!676 (LexerInterface!3473 Rule!7520 List!21709) Unit!36014)

(assert (=> b!1914831 (= lt!733503 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!676 thiss!23328 (rule!6061 (h!27027 tokens!598)) rules!3198))))

(declare-fun b!1914832 () Bool)

(declare-fun e!1223272 () Bool)

(declare-fun tp!546479 () Bool)

(assert (=> b!1914832 (= e!1223272 (and e!1223280 tp!546479))))

(declare-fun b!1914833 () Bool)

(assert (=> b!1914833 (= e!1223281 (forall!4554 tokens!598 lambda!74747))))

(assert (=> b!1914834 (= e!1223270 (and tp!546484 tp!546476))))

(declare-fun b!1914835 () Bool)

(declare-fun res!855614 () Bool)

(assert (=> b!1914835 (=> (not res!855614) (not e!1223289))))

(assert (=> b!1914835 (= res!855614 ((_ is Cons!21626) tokens!598))))

(declare-fun b!1914836 () Bool)

(declare-fun res!855597 () Bool)

(assert (=> b!1914836 (=> (not res!855597) (not e!1223289))))

(declare-fun rulesInvariant!3080 (LexerInterface!3473 List!21709) Bool)

(assert (=> b!1914836 (= res!855597 (rulesInvariant!3080 thiss!23328 rules!3198))))

(declare-fun b!1914837 () Bool)

(declare-fun tp!546480 () Bool)

(declare-fun e!1223296 () Bool)

(assert (=> b!1914837 (= e!1223271 (and (inv!21 (value!121601 (h!27027 tokens!598))) e!1223296 tp!546480))))

(declare-fun b!1914838 () Bool)

(declare-fun e!1223274 () Bool)

(assert (=> b!1914838 (= e!1223286 e!1223274)))

(declare-fun res!855610 () Bool)

(assert (=> b!1914838 (=> (not res!855610) (not e!1223274))))

(declare-fun lt!733524 () Rule!7520)

(assert (=> b!1914838 (= res!855610 (matchR!2571 (regex!3860 lt!733524) lt!733492))))

(declare-fun get!6763 (Option!4426) Rule!7520)

(assert (=> b!1914838 (= lt!733524 (get!6763 lt!733514))))

(declare-fun b!1914839 () Bool)

(declare-fun res!855618 () Bool)

(assert (=> b!1914839 (=> res!855618 e!1223292)))

(declare-fun contains!3925 (List!21709 Rule!7520) Bool)

(assert (=> b!1914839 (= res!855618 (not (contains!3925 rules!3198 (rule!6061 (h!27027 tokens!598)))))))

(declare-fun res!855615 () Bool)

(assert (=> start!192020 (=> (not res!855615) (not e!1223289))))

(assert (=> start!192020 (= res!855615 ((_ is Lexer!3471) thiss!23328))))

(assert (=> start!192020 e!1223289))

(assert (=> start!192020 true))

(assert (=> start!192020 e!1223272))

(assert (=> start!192020 e!1223284))

(assert (=> start!192020 (and (inv!28725 separatorToken!354) e!1223282)))

(declare-fun b!1914816 () Bool)

(declare-fun e!1223287 () Bool)

(assert (=> b!1914816 (= e!1223287 false)))

(declare-fun b!1914840 () Bool)

(declare-fun res!855605 () Bool)

(declare-fun e!1223293 () Bool)

(assert (=> b!1914840 (=> res!855605 e!1223293)))

(declare-fun lt!733493 () C!10716)

(assert (=> b!1914840 (= res!855605 (not (contains!3924 lt!733501 lt!733493)))))

(declare-fun b!1914841 () Bool)

(assert (=> b!1914841 (= e!1223293 e!1223281)))

(declare-fun res!855603 () Bool)

(assert (=> b!1914841 (=> res!855603 e!1223281)))

(declare-fun isEmpty!13312 (List!21708) Bool)

(assert (=> b!1914841 (= res!855603 (isEmpty!13312 tokens!598))))

(assert (=> b!1914841 (= (maxPrefix!1919 thiss!23328 rules!3198 lt!733518) (Some!4424 (tuple2!20355 (h!27027 tokens!598) lt!733499)))))

(declare-fun lt!733523 () Unit!36014)

(declare-fun lemmaMaxPrefWithOtherTypeUsedCharAtStartOfSuffixReturnSame!96 (LexerInterface!3473 List!21709 Token!7272 Rule!7520 List!21707 Rule!7520) Unit!36014)

(assert (=> b!1914841 (= lt!733523 (lemmaMaxPrefWithOtherTypeUsedCharAtStartOfSuffixReturnSame!96 thiss!23328 rules!3198 (h!27027 tokens!598) (rule!6061 (h!27027 tokens!598)) lt!733499 (rule!6061 separatorToken!354)))))

(declare-fun b!1914842 () Bool)

(assert (=> b!1914842 (= e!1223274 (= (rule!6061 separatorToken!354) lt!733524))))

(declare-fun b!1914843 () Bool)

(declare-fun res!855608 () Bool)

(assert (=> b!1914843 (=> res!855608 e!1223292)))

(assert (=> b!1914843 (= res!855608 (not (contains!3925 rules!3198 (rule!6061 separatorToken!354))))))

(declare-fun b!1914844 () Bool)

(declare-fun res!855596 () Bool)

(assert (=> b!1914844 (=> (not res!855596) (not e!1223289))))

(assert (=> b!1914844 (= res!855596 (rulesProduceIndividualToken!1645 thiss!23328 rules!3198 separatorToken!354))))

(declare-fun b!1914845 () Bool)

(declare-fun tp!546473 () Bool)

(assert (=> b!1914845 (= e!1223296 (and tp!546473 (inv!28721 (tag!4298 (rule!6061 (h!27027 tokens!598)))) (inv!28724 (transformation!3860 (rule!6061 (h!27027 tokens!598)))) e!1223278))))

(declare-fun b!1914846 () Bool)

(assert (=> b!1914846 (= e!1223276 e!1223293)))

(declare-fun res!855619 () Bool)

(assert (=> b!1914846 (=> res!855619 e!1223293)))

(assert (=> b!1914846 (= res!855619 (contains!3924 lt!733491 lt!733493))))

(assert (=> b!1914846 (= lt!733493 (head!4468 lt!733499))))

(declare-fun b!1914847 () Bool)

(declare-fun e!1223290 () Bool)

(declare-fun lt!733519 () Rule!7520)

(assert (=> b!1914847 (= e!1223290 (= (rule!6061 (h!27027 tokens!598)) lt!733519))))

(assert (=> b!1914848 (= e!1223273 (and tp!546477 tp!546482))))

(declare-fun b!1914849 () Bool)

(assert (=> b!1914849 (= e!1223277 e!1223290)))

(declare-fun res!855611 () Bool)

(assert (=> b!1914849 (=> (not res!855611) (not e!1223290))))

(assert (=> b!1914849 (= res!855611 (matchR!2571 (regex!3860 lt!733519) lt!733507))))

(assert (=> b!1914849 (= lt!733519 (get!6763 lt!733500))))

(declare-fun b!1914850 () Bool)

(declare-fun Unit!36017 () Unit!36014)

(assert (=> b!1914850 (= e!1223288 Unit!36017)))

(declare-fun lt!733521 () Unit!36014)

(declare-fun lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!268 (Regex!5285 List!21707 C!10716) Unit!36014)

(assert (=> b!1914850 (= lt!733521 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!268 (regex!3860 (rule!6061 separatorToken!354)) lt!733492 lt!733498))))

(declare-fun res!855613 () Bool)

(assert (=> b!1914850 (= res!855613 (not (matchR!2571 (regex!3860 (rule!6061 separatorToken!354)) lt!733492)))))

(assert (=> b!1914850 (=> (not res!855613) (not e!1223287))))

(assert (=> b!1914850 e!1223287))

(assert (= (and start!192020 res!855615) b!1914821))

(assert (= (and b!1914821 res!855601) b!1914836))

(assert (= (and b!1914836 res!855597) b!1914824))

(assert (= (and b!1914824 res!855598) b!1914844))

(assert (= (and b!1914844 res!855596) b!1914811))

(assert (= (and b!1914811 res!855595) b!1914823))

(assert (= (and b!1914823 res!855617) b!1914826))

(assert (= (and b!1914826 res!855594) b!1914835))

(assert (= (and b!1914835 res!855614) b!1914818))

(assert (= (and b!1914818 res!855609) b!1914838))

(assert (= (and b!1914838 res!855610) b!1914842))

(assert (= (and b!1914818 res!855600) b!1914849))

(assert (= (and b!1914849 res!855611) b!1914847))

(assert (= (and b!1914818 (not res!855607)) b!1914829))

(assert (= (and b!1914829 c!311777) b!1914850))

(assert (= (and b!1914829 (not c!311777)) b!1914827))

(assert (= (and b!1914850 res!855613) b!1914816))

(assert (= (and b!1914829 (not res!855599)) b!1914828))

(assert (= (and b!1914828 (not res!855604)) b!1914820))

(assert (= (and b!1914820 (not res!855593)) b!1914839))

(assert (= (and b!1914839 (not res!855618)) b!1914843))

(assert (= (and b!1914843 (not res!855608)) b!1914813))

(assert (= (and b!1914813 (not res!855616)) b!1914812))

(assert (= (and b!1914812 (not res!855612)) b!1914831))

(assert (= (and b!1914831 (not res!855602)) b!1914825))

(assert (= (and b!1914825 (not res!855606)) b!1914846))

(assert (= (and b!1914846 (not res!855619)) b!1914840))

(assert (= (and b!1914840 (not res!855605)) b!1914841))

(assert (= (and b!1914841 (not res!855603)) b!1914830))

(assert (= (and b!1914830 (not res!855620)) b!1914833))

(assert (= b!1914815 b!1914848))

(assert (= b!1914832 b!1914815))

(assert (= (and start!192020 ((_ is Cons!21627) rules!3198)) b!1914832))

(assert (= b!1914845 b!1914819))

(assert (= b!1914837 b!1914845))

(assert (= b!1914817 b!1914837))

(assert (= (and start!192020 ((_ is Cons!21626) tokens!598)) b!1914817))

(assert (= b!1914814 b!1914834))

(assert (= b!1914822 b!1914814))

(assert (= start!192020 b!1914822))

(declare-fun m!2349457 () Bool)

(assert (=> b!1914840 m!2349457))

(declare-fun m!2349459 () Bool)

(assert (=> b!1914831 m!2349459))

(declare-fun m!2349461 () Bool)

(assert (=> b!1914831 m!2349461))

(declare-fun m!2349463 () Bool)

(assert (=> b!1914831 m!2349463))

(declare-fun m!2349465 () Bool)

(assert (=> b!1914850 m!2349465))

(declare-fun m!2349467 () Bool)

(assert (=> b!1914850 m!2349467))

(declare-fun m!2349469 () Bool)

(assert (=> b!1914817 m!2349469))

(declare-fun m!2349471 () Bool)

(assert (=> b!1914822 m!2349471))

(declare-fun m!2349473 () Bool)

(assert (=> b!1914826 m!2349473))

(declare-fun m!2349475 () Bool)

(assert (=> b!1914844 m!2349475))

(declare-fun m!2349477 () Bool)

(assert (=> b!1914820 m!2349477))

(assert (=> b!1914820 m!2349477))

(declare-fun m!2349479 () Bool)

(assert (=> b!1914820 m!2349479))

(declare-fun m!2349481 () Bool)

(assert (=> b!1914820 m!2349481))

(declare-fun m!2349483 () Bool)

(assert (=> b!1914849 m!2349483))

(declare-fun m!2349485 () Bool)

(assert (=> b!1914849 m!2349485))

(declare-fun m!2349487 () Bool)

(assert (=> b!1914814 m!2349487))

(declare-fun m!2349489 () Bool)

(assert (=> b!1914814 m!2349489))

(declare-fun m!2349491 () Bool)

(assert (=> b!1914829 m!2349491))

(declare-fun m!2349493 () Bool)

(assert (=> b!1914829 m!2349493))

(declare-fun m!2349495 () Bool)

(assert (=> b!1914829 m!2349495))

(declare-fun m!2349497 () Bool)

(assert (=> b!1914829 m!2349497))

(declare-fun m!2349499 () Bool)

(assert (=> b!1914829 m!2349499))

(declare-fun m!2349501 () Bool)

(assert (=> b!1914829 m!2349501))

(declare-fun m!2349503 () Bool)

(assert (=> b!1914829 m!2349503))

(declare-fun m!2349505 () Bool)

(assert (=> b!1914829 m!2349505))

(declare-fun m!2349507 () Bool)

(assert (=> b!1914829 m!2349507))

(declare-fun m!2349509 () Bool)

(assert (=> b!1914829 m!2349509))

(declare-fun m!2349511 () Bool)

(assert (=> b!1914829 m!2349511))

(declare-fun m!2349513 () Bool)

(assert (=> b!1914829 m!2349513))

(declare-fun m!2349515 () Bool)

(assert (=> b!1914829 m!2349515))

(declare-fun m!2349517 () Bool)

(assert (=> b!1914829 m!2349517))

(declare-fun m!2349519 () Bool)

(assert (=> b!1914829 m!2349519))

(declare-fun m!2349521 () Bool)

(assert (=> b!1914829 m!2349521))

(declare-fun m!2349523 () Bool)

(assert (=> b!1914830 m!2349523))

(assert (=> b!1914830 m!2349523))

(declare-fun m!2349525 () Bool)

(assert (=> b!1914830 m!2349525))

(assert (=> b!1914830 m!2349525))

(declare-fun m!2349527 () Bool)

(assert (=> b!1914830 m!2349527))

(declare-fun m!2349529 () Bool)

(assert (=> b!1914843 m!2349529))

(declare-fun m!2349531 () Bool)

(assert (=> b!1914846 m!2349531))

(declare-fun m!2349533 () Bool)

(assert (=> b!1914846 m!2349533))

(declare-fun m!2349535 () Bool)

(assert (=> b!1914818 m!2349535))

(declare-fun m!2349537 () Bool)

(assert (=> b!1914818 m!2349537))

(assert (=> b!1914818 m!2349535))

(declare-fun m!2349539 () Bool)

(assert (=> b!1914818 m!2349539))

(declare-fun m!2349541 () Bool)

(assert (=> b!1914818 m!2349541))

(declare-fun m!2349543 () Bool)

(assert (=> b!1914818 m!2349543))

(declare-fun m!2349545 () Bool)

(assert (=> b!1914818 m!2349545))

(declare-fun m!2349547 () Bool)

(assert (=> b!1914818 m!2349547))

(declare-fun m!2349549 () Bool)

(assert (=> b!1914818 m!2349549))

(declare-fun m!2349551 () Bool)

(assert (=> b!1914818 m!2349551))

(declare-fun m!2349553 () Bool)

(assert (=> b!1914818 m!2349553))

(assert (=> b!1914818 m!2349547))

(declare-fun m!2349555 () Bool)

(assert (=> b!1914818 m!2349555))

(declare-fun m!2349557 () Bool)

(assert (=> b!1914818 m!2349557))

(declare-fun m!2349559 () Bool)

(assert (=> b!1914818 m!2349559))

(declare-fun m!2349561 () Bool)

(assert (=> b!1914818 m!2349561))

(declare-fun m!2349563 () Bool)

(assert (=> b!1914818 m!2349563))

(declare-fun m!2349565 () Bool)

(assert (=> b!1914818 m!2349565))

(assert (=> b!1914818 m!2349549))

(declare-fun m!2349567 () Bool)

(assert (=> b!1914818 m!2349567))

(declare-fun m!2349569 () Bool)

(assert (=> b!1914818 m!2349569))

(declare-fun m!2349571 () Bool)

(assert (=> b!1914818 m!2349571))

(declare-fun m!2349573 () Bool)

(assert (=> b!1914812 m!2349573))

(declare-fun m!2349575 () Bool)

(assert (=> b!1914821 m!2349575))

(declare-fun m!2349577 () Bool)

(assert (=> start!192020 m!2349577))

(declare-fun m!2349579 () Bool)

(assert (=> b!1914841 m!2349579))

(declare-fun m!2349581 () Bool)

(assert (=> b!1914841 m!2349581))

(declare-fun m!2349583 () Bool)

(assert (=> b!1914841 m!2349583))

(declare-fun m!2349585 () Bool)

(assert (=> b!1914833 m!2349585))

(declare-fun m!2349587 () Bool)

(assert (=> b!1914825 m!2349587))

(declare-fun m!2349589 () Bool)

(assert (=> b!1914839 m!2349589))

(declare-fun m!2349591 () Bool)

(assert (=> b!1914836 m!2349591))

(declare-fun m!2349593 () Bool)

(assert (=> b!1914837 m!2349593))

(declare-fun m!2349595 () Bool)

(assert (=> b!1914815 m!2349595))

(declare-fun m!2349597 () Bool)

(assert (=> b!1914815 m!2349597))

(declare-fun m!2349599 () Bool)

(assert (=> b!1914838 m!2349599))

(declare-fun m!2349601 () Bool)

(assert (=> b!1914838 m!2349601))

(declare-fun m!2349603 () Bool)

(assert (=> b!1914828 m!2349603))

(declare-fun m!2349605 () Bool)

(assert (=> b!1914824 m!2349605))

(assert (=> b!1914823 m!2349585))

(declare-fun m!2349607 () Bool)

(assert (=> b!1914845 m!2349607))

(declare-fun m!2349609 () Bool)

(assert (=> b!1914845 m!2349609))

(check-sat (not b_next!54915) b_and!149315 b_and!149313 (not b!1914846) (not b!1914831) (not b!1914815) (not b!1914844) (not start!192020) (not b!1914825) (not b!1914818) (not b!1914820) (not b!1914849) (not b_next!54913) (not b!1914828) (not b!1914812) (not b!1914822) (not b!1914837) (not b!1914839) (not b!1914826) (not b!1914824) (not b_next!54907) (not b!1914832) (not b!1914821) (not b!1914850) (not b!1914843) b_and!149319 (not b!1914829) (not b!1914814) b_and!149311 (not b_next!54911) (not b!1914841) (not b!1914836) (not b!1914840) (not b_next!54909) (not b!1914845) (not b_next!54905) (not b!1914823) (not b!1914838) (not b!1914817) b_and!149321 (not b!1914833) b_and!149317 (not b!1914830))
(check-sat (not b_next!54907) (not b_next!54915) b_and!149315 b_and!149313 b_and!149319 (not b_next!54909) (not b_next!54905) (not b_next!54913) b_and!149311 (not b_next!54911) b_and!149321 b_and!149317)
