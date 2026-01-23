; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!190746 () Bool)

(assert start!190746)

(declare-fun b!1902464 () Bool)

(declare-fun b_free!53533 () Bool)

(declare-fun b_next!54237 () Bool)

(assert (=> b!1902464 (= b_free!53533 (not b_next!54237))))

(declare-fun tp!543414 () Bool)

(declare-fun b_and!147407 () Bool)

(assert (=> b!1902464 (= tp!543414 b_and!147407)))

(declare-fun b_free!53535 () Bool)

(declare-fun b_next!54239 () Bool)

(assert (=> b!1902464 (= b_free!53535 (not b_next!54239))))

(declare-fun tp!543411 () Bool)

(declare-fun b_and!147409 () Bool)

(assert (=> b!1902464 (= tp!543411 b_and!147409)))

(declare-fun b!1902465 () Bool)

(declare-fun b_free!53537 () Bool)

(declare-fun b_next!54241 () Bool)

(assert (=> b!1902465 (= b_free!53537 (not b_next!54241))))

(declare-fun tp!543417 () Bool)

(declare-fun b_and!147411 () Bool)

(assert (=> b!1902465 (= tp!543417 b_and!147411)))

(declare-fun b_free!53539 () Bool)

(declare-fun b_next!54243 () Bool)

(assert (=> b!1902465 (= b_free!53539 (not b_next!54243))))

(declare-fun tp!543420 () Bool)

(declare-fun b_and!147413 () Bool)

(assert (=> b!1902465 (= tp!543420 b_and!147413)))

(declare-fun b!1902463 () Bool)

(declare-fun b_free!53541 () Bool)

(declare-fun b_next!54245 () Bool)

(assert (=> b!1902463 (= b_free!53541 (not b_next!54245))))

(declare-fun tp!543413 () Bool)

(declare-fun b_and!147415 () Bool)

(assert (=> b!1902463 (= tp!543413 b_and!147415)))

(declare-fun b_free!53543 () Bool)

(declare-fun b_next!54247 () Bool)

(assert (=> b!1902463 (= b_free!53543 (not b_next!54247))))

(declare-fun tp!543415 () Bool)

(declare-fun b_and!147417 () Bool)

(assert (=> b!1902463 (= tp!543415 b_and!147417)))

(declare-fun b!1902453 () Bool)

(declare-fun res!849538 () Bool)

(declare-fun e!1215199 () Bool)

(assert (=> b!1902453 (=> (not res!849538) (not e!1215199))))

(declare-datatypes ((List!21516 0))(
  ( (Nil!21434) (Cons!21434 (h!26835 (_ BitVec 16)) (t!177007 List!21516)) )
))
(declare-datatypes ((TokenValue!3951 0))(
  ( (FloatLiteralValue!7902 (text!28102 List!21516)) (TokenValueExt!3950 (__x!13400 Int)) (Broken!19755 (value!120294 List!21516)) (Object!4032) (End!3951) (Def!3951) (Underscore!3951) (Match!3951) (Else!3951) (Error!3951) (Case!3951) (If!3951) (Extends!3951) (Abstract!3951) (Class!3951) (Val!3951) (DelimiterValue!7902 (del!4011 List!21516)) (KeywordValue!3957 (value!120295 List!21516)) (CommentValue!7902 (value!120296 List!21516)) (WhitespaceValue!7902 (value!120297 List!21516)) (IndentationValue!3951 (value!120298 List!21516)) (String!24874) (Int32!3951) (Broken!19756 (value!120299 List!21516)) (Boolean!3952) (Unit!35760) (OperatorValue!3954 (op!4011 List!21516)) (IdentifierValue!7902 (value!120300 List!21516)) (IdentifierValue!7903 (value!120301 List!21516)) (WhitespaceValue!7903 (value!120302 List!21516)) (True!7902) (False!7902) (Broken!19757 (value!120303 List!21516)) (Broken!19758 (value!120304 List!21516)) (True!7903) (RightBrace!3951) (RightBracket!3951) (Colon!3951) (Null!3951) (Comma!3951) (LeftBracket!3951) (False!7903) (LeftBrace!3951) (ImaginaryLiteralValue!3951 (text!28103 List!21516)) (StringLiteralValue!11853 (value!120305 List!21516)) (EOFValue!3951 (value!120306 List!21516)) (IdentValue!3951 (value!120307 List!21516)) (DelimiterValue!7903 (value!120308 List!21516)) (DedentValue!3951 (value!120309 List!21516)) (NewLineValue!3951 (value!120310 List!21516)) (IntegerValue!11853 (value!120311 (_ BitVec 32)) (text!28104 List!21516)) (IntegerValue!11854 (value!120312 Int) (text!28105 List!21516)) (Times!3951) (Or!3951) (Equal!3951) (Minus!3951) (Broken!19759 (value!120313 List!21516)) (And!3951) (Div!3951) (LessEqual!3951) (Mod!3951) (Concat!9191) (Not!3951) (Plus!3951) (SpaceValue!3951 (value!120314 List!21516)) (IntegerValue!11855 (value!120315 Int) (text!28106 List!21516)) (StringLiteralValue!11854 (text!28107 List!21516)) (FloatLiteralValue!7903 (text!28108 List!21516)) (BytesLiteralValue!3951 (value!120316 List!21516)) (CommentValue!7903 (value!120317 List!21516)) (StringLiteralValue!11855 (value!120318 List!21516)) (ErrorTokenValue!3951 (msg!4012 List!21516)) )
))
(declare-datatypes ((C!10626 0))(
  ( (C!10627 (val!6265 Int)) )
))
(declare-datatypes ((List!21517 0))(
  ( (Nil!21435) (Cons!21435 (h!26836 C!10626) (t!177008 List!21517)) )
))
(declare-datatypes ((IArray!14265 0))(
  ( (IArray!14266 (innerList!7190 List!21517)) )
))
(declare-datatypes ((Conc!7130 0))(
  ( (Node!7130 (left!17148 Conc!7130) (right!17478 Conc!7130) (csize!14490 Int) (cheight!7341 Int)) (Leaf!10501 (xs!10024 IArray!14265) (csize!14491 Int)) (Empty!7130) )
))
(declare-datatypes ((BalanceConc!14076 0))(
  ( (BalanceConc!14077 (c!309890 Conc!7130)) )
))
(declare-datatypes ((TokenValueInjection!7486 0))(
  ( (TokenValueInjection!7487 (toValue!5432 Int) (toChars!5291 Int)) )
))
(declare-datatypes ((Regex!5240 0))(
  ( (ElementMatch!5240 (c!309891 C!10626)) (Concat!9192 (regOne!10992 Regex!5240) (regTwo!10992 Regex!5240)) (EmptyExpr!5240) (Star!5240 (reg!5569 Regex!5240)) (EmptyLang!5240) (Union!5240 (regOne!10993 Regex!5240) (regTwo!10993 Regex!5240)) )
))
(declare-datatypes ((String!24875 0))(
  ( (String!24876 (value!120319 String)) )
))
(declare-datatypes ((Rule!7430 0))(
  ( (Rule!7431 (regex!3815 Regex!5240) (tag!4243 String!24875) (isSeparator!3815 Bool) (transformation!3815 TokenValueInjection!7486)) )
))
(declare-datatypes ((List!21518 0))(
  ( (Nil!21436) (Cons!21436 (h!26837 Rule!7430) (t!177009 List!21518)) )
))
(declare-fun rules!3198 () List!21518)

(declare-fun sepAndNonSepRulesDisjointChars!913 (List!21518 List!21518) Bool)

(assert (=> b!1902453 (= res!849538 (sepAndNonSepRulesDisjointChars!913 rules!3198 rules!3198))))

(declare-fun b!1902454 () Bool)

(declare-fun e!1215206 () Bool)

(declare-datatypes ((Token!7182 0))(
  ( (Token!7183 (value!120320 TokenValue!3951) (rule!6008 Rule!7430) (size!16913 Int) (originalCharacters!4622 List!21517)) )
))
(declare-fun separatorToken!354 () Token!7182)

(declare-fun lt!727553 () Rule!7430)

(assert (=> b!1902454 (= e!1215206 (= (rule!6008 separatorToken!354) lt!727553))))

(declare-fun b!1902455 () Bool)

(declare-fun e!1215211 () Bool)

(declare-fun e!1215214 () Bool)

(declare-fun tp!543423 () Bool)

(assert (=> b!1902455 (= e!1215211 (and e!1215214 tp!543423))))

(declare-fun b!1902456 () Bool)

(declare-fun e!1215207 () Bool)

(declare-fun tp!543412 () Bool)

(declare-fun inv!28527 (String!24875) Bool)

(declare-fun inv!28530 (TokenValueInjection!7486) Bool)

(assert (=> b!1902456 (= e!1215214 (and tp!543412 (inv!28527 (tag!4243 (h!26837 rules!3198))) (inv!28530 (transformation!3815 (h!26837 rules!3198))) e!1215207))))

(declare-fun b!1902457 () Bool)

(declare-fun e!1215194 () Bool)

(assert (=> b!1902457 (= e!1215194 e!1215206)))

(declare-fun res!849531 () Bool)

(assert (=> b!1902457 (=> (not res!849531) (not e!1215206))))

(declare-fun lt!727550 () List!21517)

(declare-fun matchR!2526 (Regex!5240 List!21517) Bool)

(assert (=> b!1902457 (= res!849531 (matchR!2526 (regex!3815 lt!727553) lt!727550))))

(declare-datatypes ((Option!4335 0))(
  ( (None!4334) (Some!4334 (v!26363 Rule!7430)) )
))
(declare-fun lt!727547 () Option!4335)

(declare-fun get!6650 (Option!4335) Rule!7430)

(assert (=> b!1902457 (= lt!727553 (get!6650 lt!727547))))

(declare-fun b!1902458 () Bool)

(declare-fun res!849539 () Bool)

(assert (=> b!1902458 (=> (not res!849539) (not e!1215199))))

(declare-datatypes ((LexerInterface!3428 0))(
  ( (LexerInterfaceExt!3425 (__x!13401 Int)) (Lexer!3426) )
))
(declare-fun thiss!23328 () LexerInterface!3428)

(declare-fun rulesProduceIndividualToken!1600 (LexerInterface!3428 List!21518 Token!7182) Bool)

(assert (=> b!1902458 (= res!849539 (rulesProduceIndividualToken!1600 thiss!23328 rules!3198 separatorToken!354))))

(declare-fun b!1902459 () Bool)

(declare-fun e!1215198 () Bool)

(declare-fun e!1215200 () Bool)

(assert (=> b!1902459 (= e!1215198 e!1215200)))

(declare-fun res!849530 () Bool)

(assert (=> b!1902459 (=> (not res!849530) (not e!1215200))))

(declare-fun lt!727558 () Rule!7430)

(declare-fun lt!727554 () List!21517)

(assert (=> b!1902459 (= res!849530 (matchR!2526 (regex!3815 lt!727558) lt!727554))))

(declare-fun lt!727556 () Option!4335)

(assert (=> b!1902459 (= lt!727558 (get!6650 lt!727556))))

(declare-fun b!1902460 () Bool)

(declare-fun res!849527 () Bool)

(assert (=> b!1902460 (=> (not res!849527) (not e!1215199))))

(declare-fun rulesInvariant!3035 (LexerInterface!3428 List!21518) Bool)

(assert (=> b!1902460 (= res!849527 (rulesInvariant!3035 thiss!23328 rules!3198))))

(declare-fun tp!543421 () Bool)

(declare-fun e!1215210 () Bool)

(declare-datatypes ((List!21519 0))(
  ( (Nil!21437) (Cons!21437 (h!26838 Token!7182) (t!177010 List!21519)) )
))
(declare-fun tokens!598 () List!21519)

(declare-fun b!1902461 () Bool)

(declare-fun e!1215208 () Bool)

(declare-fun inv!28531 (Token!7182) Bool)

(assert (=> b!1902461 (= e!1215208 (and (inv!28531 (h!26838 tokens!598)) e!1215210 tp!543421))))

(declare-fun b!1902462 () Bool)

(declare-fun res!849536 () Bool)

(declare-fun e!1215193 () Bool)

(assert (=> b!1902462 (=> res!849536 e!1215193)))

(declare-fun isEmpty!13153 (List!21519) Bool)

(assert (=> b!1902462 (= res!849536 (isEmpty!13153 tokens!598))))

(declare-fun e!1215203 () Bool)

(assert (=> b!1902463 (= e!1215203 (and tp!543413 tp!543415))))

(assert (=> b!1902465 (= e!1215207 (and tp!543417 tp!543420))))

(declare-fun b!1902466 () Bool)

(declare-fun res!849525 () Bool)

(assert (=> b!1902466 (=> (not res!849525) (not e!1215199))))

(declare-fun isEmpty!13154 (List!21518) Bool)

(assert (=> b!1902466 (= res!849525 (not (isEmpty!13154 rules!3198)))))

(declare-fun b!1902467 () Bool)

(assert (=> b!1902467 (= e!1215200 (= (rule!6008 (h!26838 tokens!598)) lt!727558))))

(declare-fun b!1902468 () Bool)

(declare-fun res!849532 () Bool)

(assert (=> b!1902468 (=> (not res!849532) (not e!1215199))))

(declare-fun lambda!74362 () Int)

(declare-fun forall!4499 (List!21519 Int) Bool)

(assert (=> b!1902468 (= res!849532 (forall!4499 tokens!598 lambda!74362))))

(declare-fun b!1902469 () Bool)

(declare-fun tp!543422 () Bool)

(declare-fun e!1215209 () Bool)

(assert (=> b!1902469 (= e!1215209 (and tp!543422 (inv!28527 (tag!4243 (rule!6008 separatorToken!354))) (inv!28530 (transformation!3815 (rule!6008 separatorToken!354))) e!1215203))))

(declare-fun e!1215196 () Bool)

(declare-fun tp!543416 () Bool)

(declare-fun b!1902470 () Bool)

(declare-fun inv!21 (TokenValue!3951) Bool)

(assert (=> b!1902470 (= e!1215210 (and (inv!21 (value!120320 (h!26838 tokens!598))) e!1215196 tp!543416))))

(declare-fun b!1902471 () Bool)

(declare-fun e!1215195 () Bool)

(declare-datatypes ((tuple2!20174 0))(
  ( (tuple2!20175 (_1!11556 Token!7182) (_2!11556 List!21517)) )
))
(declare-datatypes ((Option!4336 0))(
  ( (None!4335) (Some!4335 (v!26364 tuple2!20174)) )
))
(declare-fun lt!727548 () Option!4336)

(declare-fun get!6651 (Option!4336) tuple2!20174)

(assert (=> b!1902471 (= e!1215195 (= (_1!11556 (get!6651 lt!727548)) (h!26838 tokens!598)))))

(declare-fun e!1215212 () Bool)

(declare-fun b!1902472 () Bool)

(declare-fun tp!543418 () Bool)

(assert (=> b!1902472 (= e!1215212 (and (inv!21 (value!120320 separatorToken!354)) e!1215209 tp!543418))))

(declare-fun b!1902473 () Bool)

(assert (=> b!1902473 (= e!1215193 true)))

(declare-fun lt!727557 () Bool)

(declare-fun rulesValidInductive!1295 (LexerInterface!3428 List!21518) Bool)

(assert (=> b!1902473 (= lt!727557 (rulesValidInductive!1295 thiss!23328 rules!3198))))

(declare-fun b!1902474 () Bool)

(declare-fun res!849528 () Bool)

(assert (=> b!1902474 (=> (not res!849528) (not e!1215199))))

(assert (=> b!1902474 (= res!849528 (is-Cons!21437 tokens!598))))

(declare-fun b!1902475 () Bool)

(declare-fun res!849524 () Bool)

(assert (=> b!1902475 (=> res!849524 e!1215193)))

(declare-fun isDefined!3633 (Option!4336) Bool)

(declare-fun maxPrefix!1874 (LexerInterface!3428 List!21518 List!21517) Option!4336)

(declare-fun printWithSeparatorTokenWhenNeededList!471 (LexerInterface!3428 List!21518 List!21519 Token!7182) List!21517)

(assert (=> b!1902475 (= res!849524 (not (isDefined!3633 (maxPrefix!1874 thiss!23328 rules!3198 (printWithSeparatorTokenWhenNeededList!471 thiss!23328 rules!3198 tokens!598 separatorToken!354)))))))

(declare-fun e!1215213 () Bool)

(assert (=> b!1902464 (= e!1215213 (and tp!543414 tp!543411))))

(declare-fun res!849533 () Bool)

(assert (=> start!190746 (=> (not res!849533) (not e!1215199))))

(assert (=> start!190746 (= res!849533 (is-Lexer!3426 thiss!23328))))

(assert (=> start!190746 e!1215199))

(assert (=> start!190746 true))

(assert (=> start!190746 e!1215211))

(assert (=> start!190746 e!1215208))

(assert (=> start!190746 (and (inv!28531 separatorToken!354) e!1215212)))

(declare-fun b!1902476 () Bool)

(declare-fun res!849523 () Bool)

(assert (=> b!1902476 (=> (not res!849523) (not e!1215199))))

(declare-fun rulesProduceEachTokenIndividuallyList!1159 (LexerInterface!3428 List!21518 List!21519) Bool)

(assert (=> b!1902476 (= res!849523 (rulesProduceEachTokenIndividuallyList!1159 thiss!23328 rules!3198 tokens!598))))

(declare-fun b!1902477 () Bool)

(declare-fun res!849526 () Bool)

(assert (=> b!1902477 (=> (not res!849526) (not e!1215199))))

(assert (=> b!1902477 (= res!849526 (isSeparator!3815 (rule!6008 separatorToken!354)))))

(declare-fun b!1902478 () Bool)

(assert (=> b!1902478 (= e!1215199 (not e!1215193))))

(declare-fun res!849534 () Bool)

(assert (=> b!1902478 (=> res!849534 e!1215193)))

(declare-fun lt!727546 () Option!4336)

(assert (=> b!1902478 (= res!849534 (or (not (is-Some!4335 lt!727546)) (not (= (_1!11556 (v!26364 lt!727546)) (h!26838 tokens!598)))))))

(declare-fun ++!5758 (List!21517 List!21517) List!21517)

(assert (=> b!1902478 (= lt!727546 (maxPrefix!1874 thiss!23328 rules!3198 (++!5758 lt!727554 (printWithSeparatorTokenWhenNeededList!471 thiss!23328 rules!3198 (t!177010 tokens!598) separatorToken!354))))))

(assert (=> b!1902478 e!1215198))

(declare-fun res!849535 () Bool)

(assert (=> b!1902478 (=> (not res!849535) (not e!1215198))))

(declare-fun isDefined!3634 (Option!4335) Bool)

(assert (=> b!1902478 (= res!849535 (isDefined!3634 lt!727556))))

(declare-fun getRuleFromTag!658 (LexerInterface!3428 List!21518 String!24875) Option!4335)

(assert (=> b!1902478 (= lt!727556 (getRuleFromTag!658 thiss!23328 rules!3198 (tag!4243 (rule!6008 (h!26838 tokens!598)))))))

(declare-datatypes ((Unit!35761 0))(
  ( (Unit!35762) )
))
(declare-fun lt!727555 () Unit!35761)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!658 (LexerInterface!3428 List!21518 List!21517 Token!7182) Unit!35761)

(assert (=> b!1902478 (= lt!727555 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!658 thiss!23328 rules!3198 lt!727554 (h!26838 tokens!598)))))

(assert (=> b!1902478 e!1215195))

(declare-fun res!849529 () Bool)

(assert (=> b!1902478 (=> (not res!849529) (not e!1215195))))

(assert (=> b!1902478 (= res!849529 (isDefined!3633 lt!727548))))

(assert (=> b!1902478 (= lt!727548 (maxPrefix!1874 thiss!23328 rules!3198 lt!727554))))

(declare-fun lt!727551 () BalanceConc!14076)

(declare-fun list!8711 (BalanceConc!14076) List!21517)

(assert (=> b!1902478 (= lt!727554 (list!8711 lt!727551))))

(assert (=> b!1902478 e!1215194))

(declare-fun res!849537 () Bool)

(assert (=> b!1902478 (=> (not res!849537) (not e!1215194))))

(assert (=> b!1902478 (= res!849537 (isDefined!3634 lt!727547))))

(assert (=> b!1902478 (= lt!727547 (getRuleFromTag!658 thiss!23328 rules!3198 (tag!4243 (rule!6008 separatorToken!354))))))

(declare-fun lt!727552 () Unit!35761)

(assert (=> b!1902478 (= lt!727552 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!658 thiss!23328 rules!3198 lt!727550 separatorToken!354))))

(declare-fun charsOf!2371 (Token!7182) BalanceConc!14076)

(assert (=> b!1902478 (= lt!727550 (list!8711 (charsOf!2371 separatorToken!354)))))

(declare-fun lt!727545 () Unit!35761)

(declare-fun lemmaEqSameImage!523 (TokenValueInjection!7486 BalanceConc!14076 BalanceConc!14076) Unit!35761)

(declare-fun seqFromList!2687 (List!21517) BalanceConc!14076)

(assert (=> b!1902478 (= lt!727545 (lemmaEqSameImage!523 (transformation!3815 (rule!6008 (h!26838 tokens!598))) lt!727551 (seqFromList!2687 (originalCharacters!4622 (h!26838 tokens!598)))))))

(declare-fun lt!727549 () Unit!35761)

(declare-fun lemmaSemiInverse!794 (TokenValueInjection!7486 BalanceConc!14076) Unit!35761)

(assert (=> b!1902478 (= lt!727549 (lemmaSemiInverse!794 (transformation!3815 (rule!6008 (h!26838 tokens!598))) lt!727551))))

(assert (=> b!1902478 (= lt!727551 (charsOf!2371 (h!26838 tokens!598)))))

(declare-fun tp!543419 () Bool)

(declare-fun b!1902479 () Bool)

(assert (=> b!1902479 (= e!1215196 (and tp!543419 (inv!28527 (tag!4243 (rule!6008 (h!26838 tokens!598)))) (inv!28530 (transformation!3815 (rule!6008 (h!26838 tokens!598)))) e!1215213))))

(assert (= (and start!190746 res!849533) b!1902466))

(assert (= (and b!1902466 res!849525) b!1902460))

(assert (= (and b!1902460 res!849527) b!1902476))

(assert (= (and b!1902476 res!849523) b!1902458))

(assert (= (and b!1902458 res!849539) b!1902477))

(assert (= (and b!1902477 res!849526) b!1902468))

(assert (= (and b!1902468 res!849532) b!1902453))

(assert (= (and b!1902453 res!849538) b!1902474))

(assert (= (and b!1902474 res!849528) b!1902478))

(assert (= (and b!1902478 res!849537) b!1902457))

(assert (= (and b!1902457 res!849531) b!1902454))

(assert (= (and b!1902478 res!849529) b!1902471))

(assert (= (and b!1902478 res!849535) b!1902459))

(assert (= (and b!1902459 res!849530) b!1902467))

(assert (= (and b!1902478 (not res!849534)) b!1902462))

(assert (= (and b!1902462 (not res!849536)) b!1902475))

(assert (= (and b!1902475 (not res!849524)) b!1902473))

(assert (= b!1902456 b!1902465))

(assert (= b!1902455 b!1902456))

(assert (= (and start!190746 (is-Cons!21436 rules!3198)) b!1902455))

(assert (= b!1902479 b!1902464))

(assert (= b!1902470 b!1902479))

(assert (= b!1902461 b!1902470))

(assert (= (and start!190746 (is-Cons!21437 tokens!598)) b!1902461))

(assert (= b!1902469 b!1902463))

(assert (= b!1902472 b!1902469))

(assert (= start!190746 b!1902472))

(declare-fun m!2333695 () Bool)

(assert (=> b!1902471 m!2333695))

(declare-fun m!2333697 () Bool)

(assert (=> b!1902475 m!2333697))

(assert (=> b!1902475 m!2333697))

(declare-fun m!2333699 () Bool)

(assert (=> b!1902475 m!2333699))

(assert (=> b!1902475 m!2333699))

(declare-fun m!2333701 () Bool)

(assert (=> b!1902475 m!2333701))

(declare-fun m!2333703 () Bool)

(assert (=> b!1902472 m!2333703))

(declare-fun m!2333705 () Bool)

(assert (=> b!1902461 m!2333705))

(declare-fun m!2333707 () Bool)

(assert (=> b!1902462 m!2333707))

(declare-fun m!2333709 () Bool)

(assert (=> b!1902468 m!2333709))

(declare-fun m!2333711 () Bool)

(assert (=> b!1902460 m!2333711))

(declare-fun m!2333713 () Bool)

(assert (=> b!1902470 m!2333713))

(declare-fun m!2333715 () Bool)

(assert (=> b!1902479 m!2333715))

(declare-fun m!2333717 () Bool)

(assert (=> b!1902479 m!2333717))

(declare-fun m!2333719 () Bool)

(assert (=> b!1902473 m!2333719))

(declare-fun m!2333721 () Bool)

(assert (=> b!1902478 m!2333721))

(declare-fun m!2333723 () Bool)

(assert (=> b!1902478 m!2333723))

(assert (=> b!1902478 m!2333723))

(declare-fun m!2333725 () Bool)

(assert (=> b!1902478 m!2333725))

(declare-fun m!2333727 () Bool)

(assert (=> b!1902478 m!2333727))

(declare-fun m!2333729 () Bool)

(assert (=> b!1902478 m!2333729))

(declare-fun m!2333731 () Bool)

(assert (=> b!1902478 m!2333731))

(declare-fun m!2333733 () Bool)

(assert (=> b!1902478 m!2333733))

(declare-fun m!2333735 () Bool)

(assert (=> b!1902478 m!2333735))

(assert (=> b!1902478 m!2333727))

(declare-fun m!2333737 () Bool)

(assert (=> b!1902478 m!2333737))

(declare-fun m!2333739 () Bool)

(assert (=> b!1902478 m!2333739))

(declare-fun m!2333741 () Bool)

(assert (=> b!1902478 m!2333741))

(declare-fun m!2333743 () Bool)

(assert (=> b!1902478 m!2333743))

(assert (=> b!1902478 m!2333737))

(declare-fun m!2333745 () Bool)

(assert (=> b!1902478 m!2333745))

(declare-fun m!2333747 () Bool)

(assert (=> b!1902478 m!2333747))

(declare-fun m!2333749 () Bool)

(assert (=> b!1902478 m!2333749))

(declare-fun m!2333751 () Bool)

(assert (=> b!1902478 m!2333751))

(declare-fun m!2333753 () Bool)

(assert (=> b!1902478 m!2333753))

(assert (=> b!1902478 m!2333729))

(declare-fun m!2333755 () Bool)

(assert (=> b!1902478 m!2333755))

(declare-fun m!2333757 () Bool)

(assert (=> b!1902457 m!2333757))

(declare-fun m!2333759 () Bool)

(assert (=> b!1902457 m!2333759))

(declare-fun m!2333761 () Bool)

(assert (=> b!1902458 m!2333761))

(declare-fun m!2333763 () Bool)

(assert (=> b!1902466 m!2333763))

(declare-fun m!2333765 () Bool)

(assert (=> b!1902459 m!2333765))

(declare-fun m!2333767 () Bool)

(assert (=> b!1902459 m!2333767))

(declare-fun m!2333769 () Bool)

(assert (=> b!1902456 m!2333769))

(declare-fun m!2333771 () Bool)

(assert (=> b!1902456 m!2333771))

(declare-fun m!2333773 () Bool)

(assert (=> b!1902469 m!2333773))

(declare-fun m!2333775 () Bool)

(assert (=> b!1902469 m!2333775))

(declare-fun m!2333777 () Bool)

(assert (=> b!1902453 m!2333777))

(declare-fun m!2333779 () Bool)

(assert (=> b!1902476 m!2333779))

(declare-fun m!2333781 () Bool)

(assert (=> start!190746 m!2333781))

(push 1)

(assert (not b!1902466))

(assert (not b!1902475))

(assert (not b_next!54237))

(assert (not b!1902453))

(assert (not b!1902478))

(assert (not b!1902473))

(assert (not b!1902459))

(assert (not b_next!54245))

(assert b_and!147417)

(assert (not b!1902479))

(assert (not b!1902456))

(assert b_and!147407)

(assert (not b!1902461))

(assert (not b!1902470))

(assert (not b_next!54243))

(assert (not b_next!54247))

(assert (not b!1902472))

(assert (not b!1902457))

(assert (not b!1902462))

(assert (not b!1902476))

(assert b_and!147411)

(assert (not b_next!54241))

(assert b_and!147413)

(assert (not b!1902455))

(assert (not b!1902460))

(assert (not b!1902458))

(assert b_and!147409)

(assert (not b!1902471))

(assert (not b!1902468))

(assert b_and!147415)

(assert (not b!1902469))

(assert (not b_next!54239))

(assert (not start!190746))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!54243))

(assert (not b_next!54237))

(assert (not b_next!54247))

(assert b_and!147413)

(assert b_and!147409)

(assert b_and!147415)

(assert (not b_next!54245))

(assert b_and!147417)

(assert b_and!147407)

(assert (not b_next!54239))

(assert b_and!147411)

(assert (not b_next!54241))

(check-sat)

(pop 1)

