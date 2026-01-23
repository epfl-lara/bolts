; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!191038 () Bool)

(assert start!191038)

(declare-fun b!1904942 () Bool)

(declare-fun b_free!53637 () Bool)

(declare-fun b_next!54341 () Bool)

(assert (=> b!1904942 (= b_free!53637 (not b_next!54341))))

(declare-fun tp!544011 () Bool)

(declare-fun b_and!147859 () Bool)

(assert (=> b!1904942 (= tp!544011 b_and!147859)))

(declare-fun b_free!53639 () Bool)

(declare-fun b_next!54343 () Bool)

(assert (=> b!1904942 (= b_free!53639 (not b_next!54343))))

(declare-fun tp!544009 () Bool)

(declare-fun b_and!147861 () Bool)

(assert (=> b!1904942 (= tp!544009 b_and!147861)))

(declare-fun b!1904950 () Bool)

(declare-fun b_free!53641 () Bool)

(declare-fun b_next!54345 () Bool)

(assert (=> b!1904950 (= b_free!53641 (not b_next!54345))))

(declare-fun tp!544003 () Bool)

(declare-fun b_and!147863 () Bool)

(assert (=> b!1904950 (= tp!544003 b_and!147863)))

(declare-fun b_free!53643 () Bool)

(declare-fun b_next!54347 () Bool)

(assert (=> b!1904950 (= b_free!53643 (not b_next!54347))))

(declare-fun tp!544010 () Bool)

(declare-fun b_and!147865 () Bool)

(assert (=> b!1904950 (= tp!544010 b_and!147865)))

(declare-fun b!1904943 () Bool)

(declare-fun b_free!53645 () Bool)

(declare-fun b_next!54349 () Bool)

(assert (=> b!1904943 (= b_free!53645 (not b_next!54349))))

(declare-fun tp!544008 () Bool)

(declare-fun b_and!147867 () Bool)

(assert (=> b!1904943 (= tp!544008 b_and!147867)))

(declare-fun b_free!53647 () Bool)

(declare-fun b_next!54351 () Bool)

(assert (=> b!1904943 (= b_free!53647 (not b_next!54351))))

(declare-fun tp!544001 () Bool)

(declare-fun b_and!147869 () Bool)

(assert (=> b!1904943 (= tp!544001 b_and!147869)))

(declare-fun e!1216775 () Bool)

(assert (=> b!1904942 (= e!1216775 (and tp!544011 tp!544009))))

(declare-fun e!1216776 () Bool)

(assert (=> b!1904943 (= e!1216776 (and tp!544008 tp!544001))))

(declare-fun b!1904944 () Bool)

(declare-fun e!1216764 () Bool)

(declare-datatypes ((List!21542 0))(
  ( (Nil!21460) (Cons!21460 (h!26861 (_ BitVec 16)) (t!177355 List!21542)) )
))
(declare-datatypes ((TokenValue!3957 0))(
  ( (FloatLiteralValue!7914 (text!28144 List!21542)) (TokenValueExt!3956 (__x!13412 Int)) (Broken!19785 (value!120465 List!21542)) (Object!4038) (End!3957) (Def!3957) (Underscore!3957) (Match!3957) (Else!3957) (Error!3957) (Case!3957) (If!3957) (Extends!3957) (Abstract!3957) (Class!3957) (Val!3957) (DelimiterValue!7914 (del!4017 List!21542)) (KeywordValue!3963 (value!120466 List!21542)) (CommentValue!7914 (value!120467 List!21542)) (WhitespaceValue!7914 (value!120468 List!21542)) (IndentationValue!3957 (value!120469 List!21542)) (String!24904) (Int32!3957) (Broken!19786 (value!120470 List!21542)) (Boolean!3958) (Unit!35790) (OperatorValue!3960 (op!4017 List!21542)) (IdentifierValue!7914 (value!120471 List!21542)) (IdentifierValue!7915 (value!120472 List!21542)) (WhitespaceValue!7915 (value!120473 List!21542)) (True!7914) (False!7914) (Broken!19787 (value!120474 List!21542)) (Broken!19788 (value!120475 List!21542)) (True!7915) (RightBrace!3957) (RightBracket!3957) (Colon!3957) (Null!3957) (Comma!3957) (LeftBracket!3957) (False!7915) (LeftBrace!3957) (ImaginaryLiteralValue!3957 (text!28145 List!21542)) (StringLiteralValue!11871 (value!120476 List!21542)) (EOFValue!3957 (value!120477 List!21542)) (IdentValue!3957 (value!120478 List!21542)) (DelimiterValue!7915 (value!120479 List!21542)) (DedentValue!3957 (value!120480 List!21542)) (NewLineValue!3957 (value!120481 List!21542)) (IntegerValue!11871 (value!120482 (_ BitVec 32)) (text!28146 List!21542)) (IntegerValue!11872 (value!120483 Int) (text!28147 List!21542)) (Times!3957) (Or!3957) (Equal!3957) (Minus!3957) (Broken!19789 (value!120484 List!21542)) (And!3957) (Div!3957) (LessEqual!3957) (Mod!3957) (Concat!9203) (Not!3957) (Plus!3957) (SpaceValue!3957 (value!120485 List!21542)) (IntegerValue!11873 (value!120486 Int) (text!28148 List!21542)) (StringLiteralValue!11872 (text!28149 List!21542)) (FloatLiteralValue!7915 (text!28150 List!21542)) (BytesLiteralValue!3957 (value!120487 List!21542)) (CommentValue!7915 (value!120488 List!21542)) (StringLiteralValue!11873 (value!120489 List!21542)) (ErrorTokenValue!3957 (msg!4018 List!21542)) )
))
(declare-datatypes ((C!10638 0))(
  ( (C!10639 (val!6271 Int)) )
))
(declare-datatypes ((List!21543 0))(
  ( (Nil!21461) (Cons!21461 (h!26862 C!10638) (t!177356 List!21543)) )
))
(declare-datatypes ((Regex!5246 0))(
  ( (ElementMatch!5246 (c!310320 C!10638)) (Concat!9204 (regOne!11004 Regex!5246) (regTwo!11004 Regex!5246)) (EmptyExpr!5246) (Star!5246 (reg!5575 Regex!5246)) (EmptyLang!5246) (Union!5246 (regOne!11005 Regex!5246) (regTwo!11005 Regex!5246)) )
))
(declare-datatypes ((String!24905 0))(
  ( (String!24906 (value!120490 String)) )
))
(declare-datatypes ((IArray!14281 0))(
  ( (IArray!14282 (innerList!7198 List!21543)) )
))
(declare-datatypes ((Conc!7138 0))(
  ( (Node!7138 (left!17163 Conc!7138) (right!17493 Conc!7138) (csize!14506 Int) (cheight!7349 Int)) (Leaf!10512 (xs!10032 IArray!14281) (csize!14507 Int)) (Empty!7138) )
))
(declare-datatypes ((BalanceConc!14092 0))(
  ( (BalanceConc!14093 (c!310321 Conc!7138)) )
))
(declare-datatypes ((TokenValueInjection!7498 0))(
  ( (TokenValueInjection!7499 (toValue!5442 Int) (toChars!5301 Int)) )
))
(declare-datatypes ((Rule!7442 0))(
  ( (Rule!7443 (regex!3821 Regex!5246) (tag!4251 String!24905) (isSeparator!3821 Bool) (transformation!3821 TokenValueInjection!7498)) )
))
(declare-datatypes ((Token!7194 0))(
  ( (Token!7195 (value!120491 TokenValue!3957) (rule!6016 Rule!7442) (size!16929 Int) (originalCharacters!4628 List!21543)) )
))
(declare-datatypes ((tuple2!20198 0))(
  ( (tuple2!20199 (_1!11568 Token!7194) (_2!11568 List!21543)) )
))
(declare-datatypes ((Option!4347 0))(
  ( (None!4346) (Some!4346 (v!26381 tuple2!20198)) )
))
(declare-fun lt!728436 () Option!4347)

(declare-datatypes ((List!21544 0))(
  ( (Nil!21462) (Cons!21462 (h!26863 Token!7194) (t!177357 List!21544)) )
))
(declare-fun tokens!598 () List!21544)

(declare-fun get!6665 (Option!4347) tuple2!20198)

(assert (=> b!1904944 (= e!1216764 (= (_1!11568 (get!6665 lt!728436)) (h!26863 tokens!598)))))

(declare-fun b!1904945 () Bool)

(declare-fun res!850619 () Bool)

(declare-fun e!1216771 () Bool)

(assert (=> b!1904945 (=> (not res!850619) (not e!1216771))))

(declare-datatypes ((List!21545 0))(
  ( (Nil!21463) (Cons!21463 (h!26864 Rule!7442) (t!177358 List!21545)) )
))
(declare-fun rules!3198 () List!21545)

(declare-fun sepAndNonSepRulesDisjointChars!919 (List!21545 List!21545) Bool)

(assert (=> b!1904945 (= res!850619 (sepAndNonSepRulesDisjointChars!919 rules!3198 rules!3198))))

(declare-fun b!1904946 () Bool)

(declare-fun res!850615 () Bool)

(assert (=> b!1904946 (=> (not res!850615) (not e!1216771))))

(declare-fun separatorToken!354 () Token!7194)

(assert (=> b!1904946 (= res!850615 (isSeparator!3821 (rule!6016 separatorToken!354)))))

(declare-fun b!1904947 () Bool)

(declare-fun e!1216780 () Bool)

(declare-fun lt!728438 () List!21543)

(assert (=> b!1904947 (= e!1216780 (not (= lt!728438 Nil!21461)))))

(declare-fun b!1904948 () Bool)

(declare-fun e!1216779 () Bool)

(assert (=> b!1904948 (= e!1216771 (not e!1216779))))

(declare-fun res!850623 () Bool)

(assert (=> b!1904948 (=> res!850623 e!1216779)))

(declare-fun lt!728433 () Option!4347)

(declare-fun lt!728428 () Bool)

(assert (=> b!1904948 (= res!850623 (or (and (not lt!728428) (= (_1!11568 (v!26381 lt!728433)) (h!26863 tokens!598))) lt!728428 (= (_1!11568 (v!26381 lt!728433)) (h!26863 tokens!598))))))

(assert (=> b!1904948 (= lt!728428 (not (is-Some!4346 lt!728433)))))

(declare-datatypes ((LexerInterface!3434 0))(
  ( (LexerInterfaceExt!3431 (__x!13413 Int)) (Lexer!3432) )
))
(declare-fun thiss!23328 () LexerInterface!3434)

(declare-fun lt!728437 () List!21543)

(declare-fun lt!728429 () List!21543)

(declare-fun maxPrefix!1880 (LexerInterface!3434 List!21545 List!21543) Option!4347)

(declare-fun ++!5766 (List!21543 List!21543) List!21543)

(assert (=> b!1904948 (= lt!728433 (maxPrefix!1880 thiss!23328 rules!3198 (++!5766 lt!728437 lt!728429)))))

(declare-fun printWithSeparatorTokenWhenNeededList!477 (LexerInterface!3434 List!21545 List!21544 Token!7194) List!21543)

(assert (=> b!1904948 (= lt!728429 (printWithSeparatorTokenWhenNeededList!477 thiss!23328 rules!3198 (t!177357 tokens!598) separatorToken!354))))

(declare-fun e!1216761 () Bool)

(assert (=> b!1904948 e!1216761))

(declare-fun res!850613 () Bool)

(assert (=> b!1904948 (=> (not res!850613) (not e!1216761))))

(declare-datatypes ((Option!4348 0))(
  ( (None!4347) (Some!4347 (v!26382 Rule!7442)) )
))
(declare-fun lt!728432 () Option!4348)

(declare-fun isDefined!3645 (Option!4348) Bool)

(assert (=> b!1904948 (= res!850613 (isDefined!3645 lt!728432))))

(declare-fun getRuleFromTag!664 (LexerInterface!3434 List!21545 String!24905) Option!4348)

(assert (=> b!1904948 (= lt!728432 (getRuleFromTag!664 thiss!23328 rules!3198 (tag!4251 (rule!6016 (h!26863 tokens!598)))))))

(declare-datatypes ((Unit!35791 0))(
  ( (Unit!35792) )
))
(declare-fun lt!728434 () Unit!35791)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!664 (LexerInterface!3434 List!21545 List!21543 Token!7194) Unit!35791)

(assert (=> b!1904948 (= lt!728434 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!664 thiss!23328 rules!3198 lt!728437 (h!26863 tokens!598)))))

(assert (=> b!1904948 e!1216764))

(declare-fun res!850620 () Bool)

(assert (=> b!1904948 (=> (not res!850620) (not e!1216764))))

(declare-fun isDefined!3646 (Option!4347) Bool)

(assert (=> b!1904948 (= res!850620 (isDefined!3646 lt!728436))))

(assert (=> b!1904948 (= lt!728436 (maxPrefix!1880 thiss!23328 rules!3198 lt!728437))))

(declare-fun lt!728440 () BalanceConc!14092)

(declare-fun list!8725 (BalanceConc!14092) List!21543)

(assert (=> b!1904948 (= lt!728437 (list!8725 lt!728440))))

(declare-fun e!1216762 () Bool)

(assert (=> b!1904948 e!1216762))

(declare-fun res!850614 () Bool)

(assert (=> b!1904948 (=> (not res!850614) (not e!1216762))))

(declare-fun lt!728435 () Option!4348)

(assert (=> b!1904948 (= res!850614 (isDefined!3645 lt!728435))))

(assert (=> b!1904948 (= lt!728435 (getRuleFromTag!664 thiss!23328 rules!3198 (tag!4251 (rule!6016 separatorToken!354))))))

(declare-fun lt!728439 () Unit!35791)

(assert (=> b!1904948 (= lt!728439 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!664 thiss!23328 rules!3198 lt!728438 separatorToken!354))))

(declare-fun charsOf!2377 (Token!7194) BalanceConc!14092)

(assert (=> b!1904948 (= lt!728438 (list!8725 (charsOf!2377 separatorToken!354)))))

(declare-fun lt!728430 () Unit!35791)

(declare-fun lemmaEqSameImage!529 (TokenValueInjection!7498 BalanceConc!14092 BalanceConc!14092) Unit!35791)

(declare-fun seqFromList!2693 (List!21543) BalanceConc!14092)

(assert (=> b!1904948 (= lt!728430 (lemmaEqSameImage!529 (transformation!3821 (rule!6016 (h!26863 tokens!598))) lt!728440 (seqFromList!2693 (originalCharacters!4628 (h!26863 tokens!598)))))))

(declare-fun lt!728441 () Unit!35791)

(declare-fun lemmaSemiInverse!800 (TokenValueInjection!7498 BalanceConc!14092) Unit!35791)

(assert (=> b!1904948 (= lt!728441 (lemmaSemiInverse!800 (transformation!3821 (rule!6016 (h!26863 tokens!598))) lt!728440))))

(assert (=> b!1904948 (= lt!728440 (charsOf!2377 (h!26863 tokens!598)))))

(declare-fun b!1904949 () Bool)

(declare-fun res!850624 () Bool)

(assert (=> b!1904949 (=> (not res!850624) (not e!1216771))))

(declare-fun rulesProduceIndividualToken!1606 (LexerInterface!3434 List!21545 Token!7194) Bool)

(assert (=> b!1904949 (= res!850624 (rulesProduceIndividualToken!1606 thiss!23328 rules!3198 separatorToken!354))))

(declare-fun e!1216774 () Bool)

(assert (=> b!1904950 (= e!1216774 (and tp!544003 tp!544010))))

(declare-fun b!1904951 () Bool)

(declare-fun e!1216773 () Bool)

(assert (=> b!1904951 (= e!1216761 e!1216773)))

(declare-fun res!850628 () Bool)

(assert (=> b!1904951 (=> (not res!850628) (not e!1216773))))

(declare-fun lt!728431 () Rule!7442)

(declare-fun matchR!2532 (Regex!5246 List!21543) Bool)

(assert (=> b!1904951 (= res!850628 (matchR!2532 (regex!3821 lt!728431) lt!728437))))

(declare-fun get!6666 (Option!4348) Rule!7442)

(assert (=> b!1904951 (= lt!728431 (get!6666 lt!728432))))

(declare-fun e!1216763 () Bool)

(declare-fun tp!544006 () Bool)

(declare-fun b!1904952 () Bool)

(declare-fun e!1216768 () Bool)

(declare-fun inv!21 (TokenValue!3957) Bool)

(assert (=> b!1904952 (= e!1216768 (and (inv!21 (value!120491 separatorToken!354)) e!1216763 tp!544006))))

(declare-fun b!1904953 () Bool)

(declare-fun tp!544005 () Bool)

(declare-fun e!1216782 () Bool)

(declare-fun inv!28558 (String!24905) Bool)

(declare-fun inv!28561 (TokenValueInjection!7498) Bool)

(assert (=> b!1904953 (= e!1216782 (and tp!544005 (inv!28558 (tag!4251 (rule!6016 (h!26863 tokens!598)))) (inv!28561 (transformation!3821 (rule!6016 (h!26863 tokens!598)))) e!1216774))))

(declare-fun b!1904954 () Bool)

(declare-fun res!850621 () Bool)

(assert (=> b!1904954 (=> (not res!850621) (not e!1216771))))

(declare-fun rulesInvariant!3041 (LexerInterface!3434 List!21545) Bool)

(assert (=> b!1904954 (= res!850621 (rulesInvariant!3041 thiss!23328 rules!3198))))

(declare-fun b!1904955 () Bool)

(declare-fun e!1216781 () Bool)

(assert (=> b!1904955 (= e!1216762 e!1216781)))

(declare-fun res!850625 () Bool)

(assert (=> b!1904955 (=> (not res!850625) (not e!1216781))))

(declare-fun lt!728427 () Rule!7442)

(assert (=> b!1904955 (= res!850625 (matchR!2532 (regex!3821 lt!728427) lt!728438))))

(assert (=> b!1904955 (= lt!728427 (get!6666 lt!728435))))

(declare-fun res!850616 () Bool)

(assert (=> start!191038 (=> (not res!850616) (not e!1216771))))

(assert (=> start!191038 (= res!850616 (is-Lexer!3432 thiss!23328))))

(assert (=> start!191038 e!1216771))

(assert (=> start!191038 true))

(declare-fun e!1216783 () Bool)

(assert (=> start!191038 e!1216783))

(declare-fun e!1216766 () Bool)

(assert (=> start!191038 e!1216766))

(declare-fun inv!28562 (Token!7194) Bool)

(assert (=> start!191038 (and (inv!28562 separatorToken!354) e!1216768)))

(declare-fun b!1904941 () Bool)

(assert (=> b!1904941 (= e!1216781 (= (rule!6016 separatorToken!354) lt!728427))))

(declare-fun b!1904956 () Bool)

(declare-fun e!1216777 () Bool)

(declare-fun tp!543999 () Bool)

(assert (=> b!1904956 (= e!1216783 (and e!1216777 tp!543999))))

(declare-fun tp!544007 () Bool)

(declare-fun e!1216778 () Bool)

(declare-fun b!1904957 () Bool)

(assert (=> b!1904957 (= e!1216778 (and (inv!21 (value!120491 (h!26863 tokens!598))) e!1216782 tp!544007))))

(declare-fun tp!544004 () Bool)

(declare-fun b!1904958 () Bool)

(assert (=> b!1904958 (= e!1216777 (and tp!544004 (inv!28558 (tag!4251 (h!26864 rules!3198))) (inv!28561 (transformation!3821 (h!26864 rules!3198))) e!1216776))))

(declare-fun b!1904959 () Bool)

(declare-fun tp!544000 () Bool)

(assert (=> b!1904959 (= e!1216763 (and tp!544000 (inv!28558 (tag!4251 (rule!6016 separatorToken!354))) (inv!28561 (transformation!3821 (rule!6016 separatorToken!354))) e!1216775))))

(declare-fun b!1904960 () Bool)

(declare-fun res!850626 () Bool)

(assert (=> b!1904960 (=> (not res!850626) (not e!1216771))))

(declare-fun rulesProduceEachTokenIndividuallyList!1165 (LexerInterface!3434 List!21545 List!21544) Bool)

(assert (=> b!1904960 (= res!850626 (rulesProduceEachTokenIndividuallyList!1165 thiss!23328 rules!3198 tokens!598))))

(declare-fun b!1904961 () Bool)

(assert (=> b!1904961 (= e!1216779 e!1216780)))

(declare-fun res!850627 () Bool)

(assert (=> b!1904961 (=> res!850627 e!1216780)))

(declare-fun contains!3852 (List!21543 C!10638) Bool)

(declare-fun usedCharacters!329 (Regex!5246) List!21543)

(declare-fun head!4421 (List!21543) C!10638)

(assert (=> b!1904961 (= res!850627 (contains!3852 (usedCharacters!329 (regex!3821 (rule!6016 separatorToken!354))) (head!4421 lt!728438)))))

(assert (=> b!1904961 (= (++!5766 (++!5766 lt!728437 lt!728438) lt!728429) (++!5766 lt!728437 (++!5766 lt!728438 lt!728429)))))

(declare-fun lt!728442 () Unit!35791)

(declare-fun lemmaConcatAssociativity!1136 (List!21543 List!21543 List!21543) Unit!35791)

(assert (=> b!1904961 (= lt!728442 (lemmaConcatAssociativity!1136 lt!728437 lt!728438 lt!728429))))

(declare-fun b!1904962 () Bool)

(assert (=> b!1904962 (= e!1216773 (= (rule!6016 (h!26863 tokens!598)) lt!728431))))

(declare-fun b!1904963 () Bool)

(declare-fun res!850618 () Bool)

(assert (=> b!1904963 (=> (not res!850618) (not e!1216771))))

(declare-fun isEmpty!13175 (List!21545) Bool)

(assert (=> b!1904963 (= res!850618 (not (isEmpty!13175 rules!3198)))))

(declare-fun b!1904964 () Bool)

(declare-fun res!850617 () Bool)

(assert (=> b!1904964 (=> (not res!850617) (not e!1216771))))

(declare-fun lambda!74440 () Int)

(declare-fun forall!4507 (List!21544 Int) Bool)

(assert (=> b!1904964 (= res!850617 (forall!4507 tokens!598 lambda!74440))))

(declare-fun b!1904965 () Bool)

(declare-fun tp!544002 () Bool)

(assert (=> b!1904965 (= e!1216766 (and (inv!28562 (h!26863 tokens!598)) e!1216778 tp!544002))))

(declare-fun b!1904966 () Bool)

(declare-fun res!850622 () Bool)

(assert (=> b!1904966 (=> (not res!850622) (not e!1216771))))

(assert (=> b!1904966 (= res!850622 (is-Cons!21462 tokens!598))))

(assert (= (and start!191038 res!850616) b!1904963))

(assert (= (and b!1904963 res!850618) b!1904954))

(assert (= (and b!1904954 res!850621) b!1904960))

(assert (= (and b!1904960 res!850626) b!1904949))

(assert (= (and b!1904949 res!850624) b!1904946))

(assert (= (and b!1904946 res!850615) b!1904964))

(assert (= (and b!1904964 res!850617) b!1904945))

(assert (= (and b!1904945 res!850619) b!1904966))

(assert (= (and b!1904966 res!850622) b!1904948))

(assert (= (and b!1904948 res!850614) b!1904955))

(assert (= (and b!1904955 res!850625) b!1904941))

(assert (= (and b!1904948 res!850620) b!1904944))

(assert (= (and b!1904948 res!850613) b!1904951))

(assert (= (and b!1904951 res!850628) b!1904962))

(assert (= (and b!1904948 (not res!850623)) b!1904961))

(assert (= (and b!1904961 (not res!850627)) b!1904947))

(assert (= b!1904958 b!1904943))

(assert (= b!1904956 b!1904958))

(assert (= (and start!191038 (is-Cons!21463 rules!3198)) b!1904956))

(assert (= b!1904953 b!1904950))

(assert (= b!1904957 b!1904953))

(assert (= b!1904965 b!1904957))

(assert (= (and start!191038 (is-Cons!21462 tokens!598)) b!1904965))

(assert (= b!1904959 b!1904942))

(assert (= b!1904952 b!1904959))

(assert (= start!191038 b!1904952))

(declare-fun m!2336907 () Bool)

(assert (=> b!1904945 m!2336907))

(declare-fun m!2336909 () Bool)

(assert (=> b!1904957 m!2336909))

(declare-fun m!2336911 () Bool)

(assert (=> b!1904954 m!2336911))

(declare-fun m!2336913 () Bool)

(assert (=> b!1904951 m!2336913))

(declare-fun m!2336915 () Bool)

(assert (=> b!1904951 m!2336915))

(declare-fun m!2336917 () Bool)

(assert (=> b!1904949 m!2336917))

(declare-fun m!2336919 () Bool)

(assert (=> b!1904963 m!2336919))

(declare-fun m!2336921 () Bool)

(assert (=> b!1904965 m!2336921))

(declare-fun m!2336923 () Bool)

(assert (=> b!1904944 m!2336923))

(declare-fun m!2336925 () Bool)

(assert (=> b!1904959 m!2336925))

(declare-fun m!2336927 () Bool)

(assert (=> b!1904959 m!2336927))

(declare-fun m!2336929 () Bool)

(assert (=> b!1904952 m!2336929))

(declare-fun m!2336931 () Bool)

(assert (=> b!1904961 m!2336931))

(declare-fun m!2336933 () Bool)

(assert (=> b!1904961 m!2336933))

(declare-fun m!2336935 () Bool)

(assert (=> b!1904961 m!2336935))

(declare-fun m!2336937 () Bool)

(assert (=> b!1904961 m!2336937))

(assert (=> b!1904961 m!2336933))

(assert (=> b!1904961 m!2336931))

(declare-fun m!2336939 () Bool)

(assert (=> b!1904961 m!2336939))

(declare-fun m!2336941 () Bool)

(assert (=> b!1904961 m!2336941))

(assert (=> b!1904961 m!2336939))

(declare-fun m!2336943 () Bool)

(assert (=> b!1904961 m!2336943))

(assert (=> b!1904961 m!2336943))

(declare-fun m!2336945 () Bool)

(assert (=> b!1904961 m!2336945))

(declare-fun m!2336947 () Bool)

(assert (=> b!1904960 m!2336947))

(declare-fun m!2336949 () Bool)

(assert (=> start!191038 m!2336949))

(declare-fun m!2336951 () Bool)

(assert (=> b!1904955 m!2336951))

(declare-fun m!2336953 () Bool)

(assert (=> b!1904955 m!2336953))

(declare-fun m!2336955 () Bool)

(assert (=> b!1904958 m!2336955))

(declare-fun m!2336957 () Bool)

(assert (=> b!1904958 m!2336957))

(declare-fun m!2336959 () Bool)

(assert (=> b!1904964 m!2336959))

(declare-fun m!2336961 () Bool)

(assert (=> b!1904948 m!2336961))

(declare-fun m!2336963 () Bool)

(assert (=> b!1904948 m!2336963))

(declare-fun m!2336965 () Bool)

(assert (=> b!1904948 m!2336965))

(declare-fun m!2336967 () Bool)

(assert (=> b!1904948 m!2336967))

(declare-fun m!2336969 () Bool)

(assert (=> b!1904948 m!2336969))

(declare-fun m!2336971 () Bool)

(assert (=> b!1904948 m!2336971))

(declare-fun m!2336973 () Bool)

(assert (=> b!1904948 m!2336973))

(declare-fun m!2336975 () Bool)

(assert (=> b!1904948 m!2336975))

(declare-fun m!2336977 () Bool)

(assert (=> b!1904948 m!2336977))

(assert (=> b!1904948 m!2336963))

(declare-fun m!2336979 () Bool)

(assert (=> b!1904948 m!2336979))

(assert (=> b!1904948 m!2336971))

(declare-fun m!2336981 () Bool)

(assert (=> b!1904948 m!2336981))

(declare-fun m!2336983 () Bool)

(assert (=> b!1904948 m!2336983))

(declare-fun m!2336985 () Bool)

(assert (=> b!1904948 m!2336985))

(declare-fun m!2336987 () Bool)

(assert (=> b!1904948 m!2336987))

(declare-fun m!2336989 () Bool)

(assert (=> b!1904948 m!2336989))

(declare-fun m!2336991 () Bool)

(assert (=> b!1904948 m!2336991))

(declare-fun m!2336993 () Bool)

(assert (=> b!1904948 m!2336993))

(assert (=> b!1904948 m!2336973))

(declare-fun m!2336995 () Bool)

(assert (=> b!1904948 m!2336995))

(declare-fun m!2336997 () Bool)

(assert (=> b!1904953 m!2336997))

(declare-fun m!2336999 () Bool)

(assert (=> b!1904953 m!2336999))

(push 1)

(assert (not b!1904958))

(assert (not b_next!54349))

(assert b_and!147869)

(assert (not b_next!54343))

(assert (not b_next!54347))

(assert (not b!1904959))

(assert (not b!1904957))

(assert (not b!1904949))

(assert (not b!1904965))

(assert (not b!1904961))

(assert (not b!1904956))

(assert (not b!1904955))

(assert b_and!147867)

(assert (not b!1904954))

(assert (not b!1904953))

(assert (not b_next!54345))

(assert (not b_next!54341))

(assert b_and!147865)

(assert (not b!1904952))

(assert b_and!147861)

(assert (not b!1904951))

(assert (not start!191038))

(assert b_and!147863)

(assert (not b!1904964))

(assert (not b!1904944))

(assert (not b!1904948))

(assert (not b!1904963))

(assert b_and!147859)

(assert (not b_next!54351))

(assert (not b!1904960))

(assert (not b!1904945))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!54349))

(assert b_and!147869)

(assert b_and!147863)

(assert (not b_next!54343))

(assert (not b_next!54347))

(assert b_and!147867)

(assert (not b_next!54345))

(assert (not b_next!54341))

(assert b_and!147865)

(assert b_and!147861)

(assert b_and!147859)

(assert (not b_next!54351))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!582598 () Bool)

(declare-fun res!850691 () Bool)

(declare-fun e!1216857 () Bool)

(assert (=> d!582598 (=> res!850691 e!1216857)))

(assert (=> d!582598 (= res!850691 (is-Nil!21462 tokens!598))))

(assert (=> d!582598 (= (forall!4507 tokens!598 lambda!74440) e!1216857)))

(declare-fun b!1905049 () Bool)

(declare-fun e!1216858 () Bool)

(assert (=> b!1905049 (= e!1216857 e!1216858)))

(declare-fun res!850692 () Bool)

(assert (=> b!1905049 (=> (not res!850692) (not e!1216858))))

(declare-fun dynLambda!10450 (Int Token!7194) Bool)

(assert (=> b!1905049 (= res!850692 (dynLambda!10450 lambda!74440 (h!26863 tokens!598)))))

(declare-fun b!1905050 () Bool)

(assert (=> b!1905050 (= e!1216858 (forall!4507 (t!177357 tokens!598) lambda!74440))))

(assert (= (and d!582598 (not res!850691)) b!1905049))

(assert (= (and b!1905049 res!850692) b!1905050))

(declare-fun b_lambda!62881 () Bool)

(assert (=> (not b_lambda!62881) (not b!1905049)))

(declare-fun m!2337095 () Bool)

(assert (=> b!1905049 m!2337095))

(declare-fun m!2337097 () Bool)

(assert (=> b!1905050 m!2337097))

(assert (=> b!1904964 d!582598))

(declare-fun d!582600 () Bool)

(declare-fun res!850695 () Bool)

(declare-fun e!1216861 () Bool)

(assert (=> d!582600 (=> (not res!850695) (not e!1216861))))

(declare-fun rulesValid!1429 (LexerInterface!3434 List!21545) Bool)

(assert (=> d!582600 (= res!850695 (rulesValid!1429 thiss!23328 rules!3198))))

(assert (=> d!582600 (= (rulesInvariant!3041 thiss!23328 rules!3198) e!1216861)))

(declare-fun b!1905053 () Bool)

(declare-datatypes ((List!21550 0))(
  ( (Nil!21468) (Cons!21468 (h!26869 String!24905) (t!177433 List!21550)) )
))
(declare-fun noDuplicateTag!1427 (LexerInterface!3434 List!21545 List!21550) Bool)

(assert (=> b!1905053 (= e!1216861 (noDuplicateTag!1427 thiss!23328 rules!3198 Nil!21468))))

(assert (= (and d!582600 res!850695) b!1905053))

(declare-fun m!2337099 () Bool)

(assert (=> d!582600 m!2337099))

(declare-fun m!2337101 () Bool)

(assert (=> b!1905053 m!2337101))

(assert (=> b!1904954 d!582600))

(declare-fun d!582602 () Bool)

(declare-fun res!850700 () Bool)

(declare-fun e!1216864 () Bool)

(assert (=> d!582602 (=> (not res!850700) (not e!1216864))))

(declare-fun isEmpty!13177 (List!21543) Bool)

(assert (=> d!582602 (= res!850700 (not (isEmpty!13177 (originalCharacters!4628 (h!26863 tokens!598)))))))

(assert (=> d!582602 (= (inv!28562 (h!26863 tokens!598)) e!1216864)))

(declare-fun b!1905058 () Bool)

(declare-fun res!850701 () Bool)

(assert (=> b!1905058 (=> (not res!850701) (not e!1216864))))

(declare-fun dynLambda!10451 (Int TokenValue!3957) BalanceConc!14092)

(assert (=> b!1905058 (= res!850701 (= (originalCharacters!4628 (h!26863 tokens!598)) (list!8725 (dynLambda!10451 (toChars!5301 (transformation!3821 (rule!6016 (h!26863 tokens!598)))) (value!120491 (h!26863 tokens!598))))))))

(declare-fun b!1905059 () Bool)

(declare-fun size!16931 (List!21543) Int)

(assert (=> b!1905059 (= e!1216864 (= (size!16929 (h!26863 tokens!598)) (size!16931 (originalCharacters!4628 (h!26863 tokens!598)))))))

(assert (= (and d!582602 res!850700) b!1905058))

(assert (= (and b!1905058 res!850701) b!1905059))

(declare-fun b_lambda!62883 () Bool)

(assert (=> (not b_lambda!62883) (not b!1905058)))

(declare-fun tb!116357 () Bool)

(declare-fun t!177364 () Bool)

(assert (=> (and b!1904942 (= (toChars!5301 (transformation!3821 (rule!6016 separatorToken!354))) (toChars!5301 (transformation!3821 (rule!6016 (h!26863 tokens!598))))) t!177364) tb!116357))

(declare-fun b!1905064 () Bool)

(declare-fun e!1216867 () Bool)

(declare-fun tp!544053 () Bool)

(declare-fun inv!28565 (Conc!7138) Bool)

(assert (=> b!1905064 (= e!1216867 (and (inv!28565 (c!310321 (dynLambda!10451 (toChars!5301 (transformation!3821 (rule!6016 (h!26863 tokens!598)))) (value!120491 (h!26863 tokens!598))))) tp!544053))))

(declare-fun result!140660 () Bool)

(declare-fun inv!28566 (BalanceConc!14092) Bool)

(assert (=> tb!116357 (= result!140660 (and (inv!28566 (dynLambda!10451 (toChars!5301 (transformation!3821 (rule!6016 (h!26863 tokens!598)))) (value!120491 (h!26863 tokens!598)))) e!1216867))))

(assert (= tb!116357 b!1905064))

(declare-fun m!2337103 () Bool)

(assert (=> b!1905064 m!2337103))

(declare-fun m!2337105 () Bool)

(assert (=> tb!116357 m!2337105))

(assert (=> b!1905058 t!177364))

(declare-fun b_and!147883 () Bool)

(assert (= b_and!147861 (and (=> t!177364 result!140660) b_and!147883)))

(declare-fun t!177366 () Bool)

(declare-fun tb!116359 () Bool)

(assert (=> (and b!1904950 (= (toChars!5301 (transformation!3821 (rule!6016 (h!26863 tokens!598)))) (toChars!5301 (transformation!3821 (rule!6016 (h!26863 tokens!598))))) t!177366) tb!116359))

(declare-fun result!140664 () Bool)

(assert (= result!140664 result!140660))

(assert (=> b!1905058 t!177366))

(declare-fun b_and!147885 () Bool)

(assert (= b_and!147865 (and (=> t!177366 result!140664) b_and!147885)))

(declare-fun tb!116361 () Bool)

(declare-fun t!177368 () Bool)

(assert (=> (and b!1904943 (= (toChars!5301 (transformation!3821 (h!26864 rules!3198))) (toChars!5301 (transformation!3821 (rule!6016 (h!26863 tokens!598))))) t!177368) tb!116361))

(declare-fun result!140666 () Bool)

(assert (= result!140666 result!140660))

(assert (=> b!1905058 t!177368))

(declare-fun b_and!147887 () Bool)

(assert (= b_and!147869 (and (=> t!177368 result!140666) b_and!147887)))

(declare-fun m!2337107 () Bool)

(assert (=> d!582602 m!2337107))

(declare-fun m!2337109 () Bool)

(assert (=> b!1905058 m!2337109))

(assert (=> b!1905058 m!2337109))

(declare-fun m!2337111 () Bool)

(assert (=> b!1905058 m!2337111))

(declare-fun m!2337113 () Bool)

(assert (=> b!1905059 m!2337113))

(assert (=> b!1904965 d!582602))

(declare-fun d!582604 () Bool)

(assert (=> d!582604 (= (get!6665 lt!728436) (v!26381 lt!728436))))

(assert (=> b!1904944 d!582604))

(declare-fun b!1905093 () Bool)

(declare-fun e!1216886 () Bool)

(declare-fun derivativeStep!1351 (Regex!5246 C!10638) Regex!5246)

(declare-fun tail!2947 (List!21543) List!21543)

(assert (=> b!1905093 (= e!1216886 (matchR!2532 (derivativeStep!1351 (regex!3821 lt!728427) (head!4421 lt!728438)) (tail!2947 lt!728438)))))

(declare-fun b!1905094 () Bool)

(declare-fun e!1216888 () Bool)

(declare-fun lt!728493 () Bool)

(declare-fun call!117331 () Bool)

(assert (=> b!1905094 (= e!1216888 (= lt!728493 call!117331))))

(declare-fun b!1905095 () Bool)

(declare-fun e!1216887 () Bool)

(assert (=> b!1905095 (= e!1216887 (not (= (head!4421 lt!728438) (c!310320 (regex!3821 lt!728427)))))))

(declare-fun b!1905096 () Bool)

(declare-fun nullable!1592 (Regex!5246) Bool)

(assert (=> b!1905096 (= e!1216886 (nullable!1592 (regex!3821 lt!728427)))))

(declare-fun b!1905097 () Bool)

(declare-fun e!1216885 () Bool)

(declare-fun e!1216883 () Bool)

(assert (=> b!1905097 (= e!1216885 e!1216883)))

(declare-fun res!850718 () Bool)

(assert (=> b!1905097 (=> (not res!850718) (not e!1216883))))

(assert (=> b!1905097 (= res!850718 (not lt!728493))))

(declare-fun d!582606 () Bool)

(assert (=> d!582606 e!1216888))

(declare-fun c!310331 () Bool)

(assert (=> d!582606 (= c!310331 (is-EmptyExpr!5246 (regex!3821 lt!728427)))))

(assert (=> d!582606 (= lt!728493 e!1216886)))

(declare-fun c!310332 () Bool)

(assert (=> d!582606 (= c!310332 (isEmpty!13177 lt!728438))))

(declare-fun validRegex!2116 (Regex!5246) Bool)

(assert (=> d!582606 (validRegex!2116 (regex!3821 lt!728427))))

(assert (=> d!582606 (= (matchR!2532 (regex!3821 lt!728427) lt!728438) lt!728493)))

(declare-fun b!1905098 () Bool)

(declare-fun res!850721 () Bool)

(declare-fun e!1216882 () Bool)

(assert (=> b!1905098 (=> (not res!850721) (not e!1216882))))

(assert (=> b!1905098 (= res!850721 (isEmpty!13177 (tail!2947 lt!728438)))))

(declare-fun b!1905099 () Bool)

(assert (=> b!1905099 (= e!1216882 (= (head!4421 lt!728438) (c!310320 (regex!3821 lt!728427))))))

(declare-fun b!1905100 () Bool)

(declare-fun e!1216884 () Bool)

(assert (=> b!1905100 (= e!1216884 (not lt!728493))))

(declare-fun b!1905101 () Bool)

(assert (=> b!1905101 (= e!1216888 e!1216884)))

(declare-fun c!310333 () Bool)

(assert (=> b!1905101 (= c!310333 (is-EmptyLang!5246 (regex!3821 lt!728427)))))

(declare-fun b!1905102 () Bool)

(declare-fun res!850720 () Bool)

(assert (=> b!1905102 (=> res!850720 e!1216887)))

(assert (=> b!1905102 (= res!850720 (not (isEmpty!13177 (tail!2947 lt!728438))))))

(declare-fun b!1905103 () Bool)

(declare-fun res!850719 () Bool)

(assert (=> b!1905103 (=> (not res!850719) (not e!1216882))))

(assert (=> b!1905103 (= res!850719 (not call!117331))))

(declare-fun bm!117326 () Bool)

(assert (=> bm!117326 (= call!117331 (isEmpty!13177 lt!728438))))

(declare-fun b!1905104 () Bool)

(declare-fun res!850723 () Bool)

(assert (=> b!1905104 (=> res!850723 e!1216885)))

(assert (=> b!1905104 (= res!850723 e!1216882)))

(declare-fun res!850722 () Bool)

(assert (=> b!1905104 (=> (not res!850722) (not e!1216882))))

(assert (=> b!1905104 (= res!850722 lt!728493)))

(declare-fun b!1905105 () Bool)

(assert (=> b!1905105 (= e!1216883 e!1216887)))

(declare-fun res!850724 () Bool)

(assert (=> b!1905105 (=> res!850724 e!1216887)))

(assert (=> b!1905105 (= res!850724 call!117331)))

(declare-fun b!1905106 () Bool)

(declare-fun res!850725 () Bool)

(assert (=> b!1905106 (=> res!850725 e!1216885)))

(assert (=> b!1905106 (= res!850725 (not (is-ElementMatch!5246 (regex!3821 lt!728427))))))

(assert (=> b!1905106 (= e!1216884 e!1216885)))

(assert (= (and d!582606 c!310332) b!1905096))

(assert (= (and d!582606 (not c!310332)) b!1905093))

(assert (= (and d!582606 c!310331) b!1905094))

(assert (= (and d!582606 (not c!310331)) b!1905101))

(assert (= (and b!1905101 c!310333) b!1905100))

(assert (= (and b!1905101 (not c!310333)) b!1905106))

(assert (= (and b!1905106 (not res!850725)) b!1905104))

(assert (= (and b!1905104 res!850722) b!1905103))

(assert (= (and b!1905103 res!850719) b!1905098))

(assert (= (and b!1905098 res!850721) b!1905099))

(assert (= (and b!1905104 (not res!850723)) b!1905097))

(assert (= (and b!1905097 res!850718) b!1905105))

(assert (= (and b!1905105 (not res!850724)) b!1905102))

(assert (= (and b!1905102 (not res!850720)) b!1905095))

(assert (= (or b!1905094 b!1905103 b!1905105) bm!117326))

(assert (=> b!1905099 m!2336933))

(assert (=> b!1905093 m!2336933))

(assert (=> b!1905093 m!2336933))

(declare-fun m!2337115 () Bool)

(assert (=> b!1905093 m!2337115))

(declare-fun m!2337117 () Bool)

(assert (=> b!1905093 m!2337117))

(assert (=> b!1905093 m!2337115))

(assert (=> b!1905093 m!2337117))

(declare-fun m!2337119 () Bool)

(assert (=> b!1905093 m!2337119))

(assert (=> b!1905098 m!2337117))

(assert (=> b!1905098 m!2337117))

(declare-fun m!2337121 () Bool)

(assert (=> b!1905098 m!2337121))

(declare-fun m!2337123 () Bool)

(assert (=> b!1905096 m!2337123))

(declare-fun m!2337125 () Bool)

(assert (=> bm!117326 m!2337125))

(assert (=> b!1905095 m!2336933))

(assert (=> d!582606 m!2337125))

(declare-fun m!2337127 () Bool)

(assert (=> d!582606 m!2337127))

(assert (=> b!1905102 m!2337117))

(assert (=> b!1905102 m!2337117))

(assert (=> b!1905102 m!2337121))

(assert (=> b!1904955 d!582606))

(declare-fun d!582608 () Bool)

(assert (=> d!582608 (= (get!6666 lt!728435) (v!26382 lt!728435))))

(assert (=> b!1904955 d!582608))

(declare-fun d!582610 () Bool)

(declare-fun res!850730 () Bool)

(declare-fun e!1216893 () Bool)

(assert (=> d!582610 (=> res!850730 e!1216893)))

(assert (=> d!582610 (= res!850730 (not (is-Cons!21463 rules!3198)))))

(assert (=> d!582610 (= (sepAndNonSepRulesDisjointChars!919 rules!3198 rules!3198) e!1216893)))

(declare-fun b!1905111 () Bool)

(declare-fun e!1216894 () Bool)

(assert (=> b!1905111 (= e!1216893 e!1216894)))

(declare-fun res!850731 () Bool)

(assert (=> b!1905111 (=> (not res!850731) (not e!1216894))))

(declare-fun ruleDisjointCharsFromAllFromOtherType!427 (Rule!7442 List!21545) Bool)

(assert (=> b!1905111 (= res!850731 (ruleDisjointCharsFromAllFromOtherType!427 (h!26864 rules!3198) rules!3198))))

(declare-fun b!1905112 () Bool)

(assert (=> b!1905112 (= e!1216894 (sepAndNonSepRulesDisjointChars!919 rules!3198 (t!177358 rules!3198)))))

(assert (= (and d!582610 (not res!850730)) b!1905111))

(assert (= (and b!1905111 res!850731) b!1905112))

(declare-fun m!2337129 () Bool)

(assert (=> b!1905111 m!2337129))

(declare-fun m!2337131 () Bool)

(assert (=> b!1905112 m!2337131))

(assert (=> b!1904945 d!582610))

(declare-fun b!1905113 () Bool)

(declare-fun e!1216899 () Bool)

(assert (=> b!1905113 (= e!1216899 (matchR!2532 (derivativeStep!1351 (regex!3821 lt!728431) (head!4421 lt!728437)) (tail!2947 lt!728437)))))

(declare-fun b!1905114 () Bool)

(declare-fun e!1216901 () Bool)

(declare-fun lt!728494 () Bool)

(declare-fun call!117332 () Bool)

(assert (=> b!1905114 (= e!1216901 (= lt!728494 call!117332))))

(declare-fun b!1905115 () Bool)

(declare-fun e!1216900 () Bool)

(assert (=> b!1905115 (= e!1216900 (not (= (head!4421 lt!728437) (c!310320 (regex!3821 lt!728431)))))))

(declare-fun b!1905116 () Bool)

(assert (=> b!1905116 (= e!1216899 (nullable!1592 (regex!3821 lt!728431)))))

(declare-fun b!1905117 () Bool)

(declare-fun e!1216898 () Bool)

(declare-fun e!1216896 () Bool)

(assert (=> b!1905117 (= e!1216898 e!1216896)))

(declare-fun res!850732 () Bool)

(assert (=> b!1905117 (=> (not res!850732) (not e!1216896))))

(assert (=> b!1905117 (= res!850732 (not lt!728494))))

(declare-fun d!582612 () Bool)

(assert (=> d!582612 e!1216901))

(declare-fun c!310334 () Bool)

(assert (=> d!582612 (= c!310334 (is-EmptyExpr!5246 (regex!3821 lt!728431)))))

(assert (=> d!582612 (= lt!728494 e!1216899)))

(declare-fun c!310335 () Bool)

(assert (=> d!582612 (= c!310335 (isEmpty!13177 lt!728437))))

(assert (=> d!582612 (validRegex!2116 (regex!3821 lt!728431))))

(assert (=> d!582612 (= (matchR!2532 (regex!3821 lt!728431) lt!728437) lt!728494)))

(declare-fun b!1905118 () Bool)

(declare-fun res!850735 () Bool)

(declare-fun e!1216895 () Bool)

(assert (=> b!1905118 (=> (not res!850735) (not e!1216895))))

(assert (=> b!1905118 (= res!850735 (isEmpty!13177 (tail!2947 lt!728437)))))

(declare-fun b!1905119 () Bool)

(assert (=> b!1905119 (= e!1216895 (= (head!4421 lt!728437) (c!310320 (regex!3821 lt!728431))))))

(declare-fun b!1905120 () Bool)

(declare-fun e!1216897 () Bool)

(assert (=> b!1905120 (= e!1216897 (not lt!728494))))

(declare-fun b!1905121 () Bool)

(assert (=> b!1905121 (= e!1216901 e!1216897)))

(declare-fun c!310336 () Bool)

(assert (=> b!1905121 (= c!310336 (is-EmptyLang!5246 (regex!3821 lt!728431)))))

(declare-fun b!1905122 () Bool)

(declare-fun res!850734 () Bool)

(assert (=> b!1905122 (=> res!850734 e!1216900)))

(assert (=> b!1905122 (= res!850734 (not (isEmpty!13177 (tail!2947 lt!728437))))))

(declare-fun b!1905123 () Bool)

(declare-fun res!850733 () Bool)

(assert (=> b!1905123 (=> (not res!850733) (not e!1216895))))

(assert (=> b!1905123 (= res!850733 (not call!117332))))

(declare-fun bm!117327 () Bool)

(assert (=> bm!117327 (= call!117332 (isEmpty!13177 lt!728437))))

(declare-fun b!1905124 () Bool)

(declare-fun res!850737 () Bool)

(assert (=> b!1905124 (=> res!850737 e!1216898)))

(assert (=> b!1905124 (= res!850737 e!1216895)))

(declare-fun res!850736 () Bool)

(assert (=> b!1905124 (=> (not res!850736) (not e!1216895))))

(assert (=> b!1905124 (= res!850736 lt!728494)))

(declare-fun b!1905125 () Bool)

(assert (=> b!1905125 (= e!1216896 e!1216900)))

(declare-fun res!850738 () Bool)

(assert (=> b!1905125 (=> res!850738 e!1216900)))

(assert (=> b!1905125 (= res!850738 call!117332)))

(declare-fun b!1905126 () Bool)

(declare-fun res!850739 () Bool)

(assert (=> b!1905126 (=> res!850739 e!1216898)))

(assert (=> b!1905126 (= res!850739 (not (is-ElementMatch!5246 (regex!3821 lt!728431))))))

(assert (=> b!1905126 (= e!1216897 e!1216898)))

(assert (= (and d!582612 c!310335) b!1905116))

(assert (= (and d!582612 (not c!310335)) b!1905113))

(assert (= (and d!582612 c!310334) b!1905114))

(assert (= (and d!582612 (not c!310334)) b!1905121))

(assert (= (and b!1905121 c!310336) b!1905120))

(assert (= (and b!1905121 (not c!310336)) b!1905126))

(assert (= (and b!1905126 (not res!850739)) b!1905124))

(assert (= (and b!1905124 res!850736) b!1905123))

(assert (= (and b!1905123 res!850733) b!1905118))

(assert (= (and b!1905118 res!850735) b!1905119))

(assert (= (and b!1905124 (not res!850737)) b!1905117))

(assert (= (and b!1905117 res!850732) b!1905125))

(assert (= (and b!1905125 (not res!850738)) b!1905122))

(assert (= (and b!1905122 (not res!850734)) b!1905115))

(assert (= (or b!1905114 b!1905123 b!1905125) bm!117327))

(declare-fun m!2337133 () Bool)

(assert (=> b!1905119 m!2337133))

(assert (=> b!1905113 m!2337133))

(assert (=> b!1905113 m!2337133))

(declare-fun m!2337135 () Bool)

(assert (=> b!1905113 m!2337135))

(declare-fun m!2337137 () Bool)

(assert (=> b!1905113 m!2337137))

(assert (=> b!1905113 m!2337135))

(assert (=> b!1905113 m!2337137))

(declare-fun m!2337139 () Bool)

(assert (=> b!1905113 m!2337139))

(assert (=> b!1905118 m!2337137))

(assert (=> b!1905118 m!2337137))

(declare-fun m!2337141 () Bool)

(assert (=> b!1905118 m!2337141))

(declare-fun m!2337143 () Bool)

(assert (=> b!1905116 m!2337143))

(declare-fun m!2337145 () Bool)

(assert (=> bm!117327 m!2337145))

(assert (=> b!1905115 m!2337133))

(assert (=> d!582612 m!2337145))

(declare-fun m!2337147 () Bool)

(assert (=> d!582612 m!2337147))

(assert (=> b!1905122 m!2337137))

(assert (=> b!1905122 m!2337137))

(assert (=> b!1905122 m!2337141))

(assert (=> b!1904951 d!582612))

(declare-fun d!582614 () Bool)

(assert (=> d!582614 (= (get!6666 lt!728432) (v!26382 lt!728432))))

(assert (=> b!1904951 d!582614))

(declare-fun d!582616 () Bool)

(declare-fun c!310342 () Bool)

(assert (=> d!582616 (= c!310342 (is-IntegerValue!11871 (value!120491 separatorToken!354)))))

(declare-fun e!1216909 () Bool)

(assert (=> d!582616 (= (inv!21 (value!120491 separatorToken!354)) e!1216909)))

(declare-fun b!1905137 () Bool)

(declare-fun res!850742 () Bool)

(declare-fun e!1216908 () Bool)

(assert (=> b!1905137 (=> res!850742 e!1216908)))

(assert (=> b!1905137 (= res!850742 (not (is-IntegerValue!11873 (value!120491 separatorToken!354))))))

(declare-fun e!1216910 () Bool)

(assert (=> b!1905137 (= e!1216910 e!1216908)))

(declare-fun b!1905138 () Bool)

(declare-fun inv!15 (TokenValue!3957) Bool)

(assert (=> b!1905138 (= e!1216908 (inv!15 (value!120491 separatorToken!354)))))

(declare-fun b!1905139 () Bool)

(assert (=> b!1905139 (= e!1216909 e!1216910)))

(declare-fun c!310341 () Bool)

(assert (=> b!1905139 (= c!310341 (is-IntegerValue!11872 (value!120491 separatorToken!354)))))

(declare-fun b!1905140 () Bool)

(declare-fun inv!16 (TokenValue!3957) Bool)

(assert (=> b!1905140 (= e!1216909 (inv!16 (value!120491 separatorToken!354)))))

(declare-fun b!1905141 () Bool)

(declare-fun inv!17 (TokenValue!3957) Bool)

(assert (=> b!1905141 (= e!1216910 (inv!17 (value!120491 separatorToken!354)))))

(assert (= (and d!582616 c!310342) b!1905140))

(assert (= (and d!582616 (not c!310342)) b!1905139))

(assert (= (and b!1905139 c!310341) b!1905141))

(assert (= (and b!1905139 (not c!310341)) b!1905137))

(assert (= (and b!1905137 (not res!850742)) b!1905138))

(declare-fun m!2337149 () Bool)

(assert (=> b!1905138 m!2337149))

(declare-fun m!2337151 () Bool)

(assert (=> b!1905140 m!2337151))

(declare-fun m!2337153 () Bool)

(assert (=> b!1905141 m!2337153))

(assert (=> b!1904952 d!582616))

(declare-fun d!582618 () Bool)

(declare-fun res!850743 () Bool)

(declare-fun e!1216911 () Bool)

(assert (=> d!582618 (=> (not res!850743) (not e!1216911))))

(assert (=> d!582618 (= res!850743 (not (isEmpty!13177 (originalCharacters!4628 separatorToken!354))))))

(assert (=> d!582618 (= (inv!28562 separatorToken!354) e!1216911)))

(declare-fun b!1905142 () Bool)

(declare-fun res!850744 () Bool)

(assert (=> b!1905142 (=> (not res!850744) (not e!1216911))))

(assert (=> b!1905142 (= res!850744 (= (originalCharacters!4628 separatorToken!354) (list!8725 (dynLambda!10451 (toChars!5301 (transformation!3821 (rule!6016 separatorToken!354))) (value!120491 separatorToken!354)))))))

(declare-fun b!1905143 () Bool)

(assert (=> b!1905143 (= e!1216911 (= (size!16929 separatorToken!354) (size!16931 (originalCharacters!4628 separatorToken!354))))))

(assert (= (and d!582618 res!850743) b!1905142))

(assert (= (and b!1905142 res!850744) b!1905143))

(declare-fun b_lambda!62885 () Bool)

(assert (=> (not b_lambda!62885) (not b!1905142)))

(declare-fun t!177370 () Bool)

(declare-fun tb!116363 () Bool)

(assert (=> (and b!1904942 (= (toChars!5301 (transformation!3821 (rule!6016 separatorToken!354))) (toChars!5301 (transformation!3821 (rule!6016 separatorToken!354)))) t!177370) tb!116363))

(declare-fun b!1905144 () Bool)

(declare-fun e!1216912 () Bool)

(declare-fun tp!544054 () Bool)

(assert (=> b!1905144 (= e!1216912 (and (inv!28565 (c!310321 (dynLambda!10451 (toChars!5301 (transformation!3821 (rule!6016 separatorToken!354))) (value!120491 separatorToken!354)))) tp!544054))))

(declare-fun result!140668 () Bool)

(assert (=> tb!116363 (= result!140668 (and (inv!28566 (dynLambda!10451 (toChars!5301 (transformation!3821 (rule!6016 separatorToken!354))) (value!120491 separatorToken!354))) e!1216912))))

(assert (= tb!116363 b!1905144))

(declare-fun m!2337155 () Bool)

(assert (=> b!1905144 m!2337155))

(declare-fun m!2337157 () Bool)

(assert (=> tb!116363 m!2337157))

(assert (=> b!1905142 t!177370))

(declare-fun b_and!147889 () Bool)

(assert (= b_and!147883 (and (=> t!177370 result!140668) b_and!147889)))

(declare-fun t!177372 () Bool)

(declare-fun tb!116365 () Bool)

(assert (=> (and b!1904950 (= (toChars!5301 (transformation!3821 (rule!6016 (h!26863 tokens!598)))) (toChars!5301 (transformation!3821 (rule!6016 separatorToken!354)))) t!177372) tb!116365))

(declare-fun result!140670 () Bool)

(assert (= result!140670 result!140668))

(assert (=> b!1905142 t!177372))

(declare-fun b_and!147891 () Bool)

(assert (= b_and!147885 (and (=> t!177372 result!140670) b_and!147891)))

(declare-fun tb!116367 () Bool)

(declare-fun t!177374 () Bool)

(assert (=> (and b!1904943 (= (toChars!5301 (transformation!3821 (h!26864 rules!3198))) (toChars!5301 (transformation!3821 (rule!6016 separatorToken!354)))) t!177374) tb!116367))

(declare-fun result!140672 () Bool)

(assert (= result!140672 result!140668))

(assert (=> b!1905142 t!177374))

(declare-fun b_and!147893 () Bool)

(assert (= b_and!147887 (and (=> t!177374 result!140672) b_and!147893)))

(declare-fun m!2337159 () Bool)

(assert (=> d!582618 m!2337159))

(declare-fun m!2337161 () Bool)

(assert (=> b!1905142 m!2337161))

(assert (=> b!1905142 m!2337161))

(declare-fun m!2337163 () Bool)

(assert (=> b!1905142 m!2337163))

(declare-fun m!2337165 () Bool)

(assert (=> b!1905143 m!2337165))

(assert (=> start!191038 d!582618))

(declare-fun d!582620 () Bool)

(assert (=> d!582620 (= (isEmpty!13175 rules!3198) (is-Nil!21463 rules!3198))))

(assert (=> b!1904963 d!582620))

(declare-fun d!582622 () Bool)

(assert (=> d!582622 (= (inv!28558 (tag!4251 (rule!6016 (h!26863 tokens!598)))) (= (mod (str.len (value!120490 (tag!4251 (rule!6016 (h!26863 tokens!598))))) 2) 0))))

(assert (=> b!1904953 d!582622))

(declare-fun d!582624 () Bool)

(declare-fun res!850747 () Bool)

(declare-fun e!1216915 () Bool)

(assert (=> d!582624 (=> (not res!850747) (not e!1216915))))

(declare-fun semiInverseModEq!1542 (Int Int) Bool)

(assert (=> d!582624 (= res!850747 (semiInverseModEq!1542 (toChars!5301 (transformation!3821 (rule!6016 (h!26863 tokens!598)))) (toValue!5442 (transformation!3821 (rule!6016 (h!26863 tokens!598))))))))

(assert (=> d!582624 (= (inv!28561 (transformation!3821 (rule!6016 (h!26863 tokens!598)))) e!1216915)))

(declare-fun b!1905147 () Bool)

(declare-fun equivClasses!1469 (Int Int) Bool)

(assert (=> b!1905147 (= e!1216915 (equivClasses!1469 (toChars!5301 (transformation!3821 (rule!6016 (h!26863 tokens!598)))) (toValue!5442 (transformation!3821 (rule!6016 (h!26863 tokens!598))))))))

(assert (= (and d!582624 res!850747) b!1905147))

(declare-fun m!2337167 () Bool)

(assert (=> d!582624 m!2337167))

(declare-fun m!2337169 () Bool)

(assert (=> b!1905147 m!2337169))

(assert (=> b!1904953 d!582624))

(declare-fun d!582626 () Bool)

(declare-fun isEmpty!13178 (Option!4348) Bool)

(assert (=> d!582626 (= (isDefined!3645 lt!728435) (not (isEmpty!13178 lt!728435)))))

(declare-fun bs!413797 () Bool)

(assert (= bs!413797 d!582626))

(declare-fun m!2337171 () Bool)

(assert (=> bs!413797 m!2337171))

(assert (=> b!1904948 d!582626))

(declare-fun b!1905172 () Bool)

(declare-fun e!1216930 () Bool)

(declare-fun lt!728508 () Option!4347)

(declare-fun contains!3854 (List!21545 Rule!7442) Bool)

(assert (=> b!1905172 (= e!1216930 (contains!3854 rules!3198 (rule!6016 (_1!11568 (get!6665 lt!728508)))))))

(declare-fun b!1905173 () Bool)

(declare-fun res!850769 () Bool)

(assert (=> b!1905173 (=> (not res!850769) (not e!1216930))))

(assert (=> b!1905173 (= res!850769 (= (++!5766 (list!8725 (charsOf!2377 (_1!11568 (get!6665 lt!728508)))) (_2!11568 (get!6665 lt!728508))) lt!728437))))

(declare-fun bm!117330 () Bool)

(declare-fun call!117335 () Option!4347)

(declare-fun maxPrefixOneRule!1202 (LexerInterface!3434 Rule!7442 List!21543) Option!4347)

(assert (=> bm!117330 (= call!117335 (maxPrefixOneRule!1202 thiss!23328 (h!26864 rules!3198) lt!728437))))

(declare-fun b!1905174 () Bool)

(declare-fun e!1216929 () Option!4347)

(assert (=> b!1905174 (= e!1216929 call!117335)))

(declare-fun b!1905175 () Bool)

(declare-fun res!850768 () Bool)

(assert (=> b!1905175 (=> (not res!850768) (not e!1216930))))

(declare-fun apply!5629 (TokenValueInjection!7498 BalanceConc!14092) TokenValue!3957)

(assert (=> b!1905175 (= res!850768 (= (value!120491 (_1!11568 (get!6665 lt!728508))) (apply!5629 (transformation!3821 (rule!6016 (_1!11568 (get!6665 lt!728508)))) (seqFromList!2693 (originalCharacters!4628 (_1!11568 (get!6665 lt!728508)))))))))

(declare-fun b!1905177 () Bool)

(declare-fun e!1216928 () Bool)

(assert (=> b!1905177 (= e!1216928 e!1216930)))

(declare-fun res!850771 () Bool)

(assert (=> b!1905177 (=> (not res!850771) (not e!1216930))))

(assert (=> b!1905177 (= res!850771 (isDefined!3646 lt!728508))))

(declare-fun b!1905178 () Bool)

(declare-fun res!850772 () Bool)

(assert (=> b!1905178 (=> (not res!850772) (not e!1216930))))

(assert (=> b!1905178 (= res!850772 (matchR!2532 (regex!3821 (rule!6016 (_1!11568 (get!6665 lt!728508)))) (list!8725 (charsOf!2377 (_1!11568 (get!6665 lt!728508))))))))

(declare-fun b!1905179 () Bool)

(declare-fun res!850770 () Bool)

(assert (=> b!1905179 (=> (not res!850770) (not e!1216930))))

(assert (=> b!1905179 (= res!850770 (= (list!8725 (charsOf!2377 (_1!11568 (get!6665 lt!728508)))) (originalCharacters!4628 (_1!11568 (get!6665 lt!728508)))))))

(declare-fun b!1905180 () Bool)

(declare-fun res!850774 () Bool)

(assert (=> b!1905180 (=> (not res!850774) (not e!1216930))))

(assert (=> b!1905180 (= res!850774 (< (size!16931 (_2!11568 (get!6665 lt!728508))) (size!16931 lt!728437)))))

(declare-fun d!582628 () Bool)

(assert (=> d!582628 e!1216928))

(declare-fun res!850773 () Bool)

(assert (=> d!582628 (=> res!850773 e!1216928)))

(declare-fun isEmpty!13179 (Option!4347) Bool)

(assert (=> d!582628 (= res!850773 (isEmpty!13179 lt!728508))))

(assert (=> d!582628 (= lt!728508 e!1216929)))

(declare-fun c!310345 () Bool)

(assert (=> d!582628 (= c!310345 (and (is-Cons!21463 rules!3198) (is-Nil!21463 (t!177358 rules!3198))))))

(declare-fun lt!728507 () Unit!35791)

(declare-fun lt!728506 () Unit!35791)

(assert (=> d!582628 (= lt!728507 lt!728506)))

(declare-fun isPrefix!1920 (List!21543 List!21543) Bool)

(assert (=> d!582628 (isPrefix!1920 lt!728437 lt!728437)))

(declare-fun lemmaIsPrefixRefl!1238 (List!21543 List!21543) Unit!35791)

(assert (=> d!582628 (= lt!728506 (lemmaIsPrefixRefl!1238 lt!728437 lt!728437))))

(declare-fun rulesValidInductive!1299 (LexerInterface!3434 List!21545) Bool)

(assert (=> d!582628 (rulesValidInductive!1299 thiss!23328 rules!3198)))

(assert (=> d!582628 (= (maxPrefix!1880 thiss!23328 rules!3198 lt!728437) lt!728508)))

(declare-fun b!1905176 () Bool)

(declare-fun lt!728509 () Option!4347)

(declare-fun lt!728505 () Option!4347)

(assert (=> b!1905176 (= e!1216929 (ite (and (is-None!4346 lt!728509) (is-None!4346 lt!728505)) None!4346 (ite (is-None!4346 lt!728505) lt!728509 (ite (is-None!4346 lt!728509) lt!728505 (ite (>= (size!16929 (_1!11568 (v!26381 lt!728509))) (size!16929 (_1!11568 (v!26381 lt!728505)))) lt!728509 lt!728505)))))))

(assert (=> b!1905176 (= lt!728509 call!117335)))

(assert (=> b!1905176 (= lt!728505 (maxPrefix!1880 thiss!23328 (t!177358 rules!3198) lt!728437))))

(assert (= (and d!582628 c!310345) b!1905174))

(assert (= (and d!582628 (not c!310345)) b!1905176))

(assert (= (or b!1905174 b!1905176) bm!117330))

(assert (= (and d!582628 (not res!850773)) b!1905177))

(assert (= (and b!1905177 res!850771) b!1905179))

(assert (= (and b!1905179 res!850770) b!1905180))

(assert (= (and b!1905180 res!850774) b!1905173))

(assert (= (and b!1905173 res!850769) b!1905175))

(assert (= (and b!1905175 res!850768) b!1905178))

(assert (= (and b!1905178 res!850772) b!1905172))

(declare-fun m!2337177 () Bool)

(assert (=> d!582628 m!2337177))

(declare-fun m!2337179 () Bool)

(assert (=> d!582628 m!2337179))

(declare-fun m!2337181 () Bool)

(assert (=> d!582628 m!2337181))

(declare-fun m!2337183 () Bool)

(assert (=> d!582628 m!2337183))

(declare-fun m!2337185 () Bool)

(assert (=> bm!117330 m!2337185))

(declare-fun m!2337187 () Bool)

(assert (=> b!1905176 m!2337187))

(declare-fun m!2337189 () Bool)

(assert (=> b!1905178 m!2337189))

(declare-fun m!2337191 () Bool)

(assert (=> b!1905178 m!2337191))

(assert (=> b!1905178 m!2337191))

(declare-fun m!2337193 () Bool)

(assert (=> b!1905178 m!2337193))

(assert (=> b!1905178 m!2337193))

(declare-fun m!2337195 () Bool)

(assert (=> b!1905178 m!2337195))

(assert (=> b!1905173 m!2337189))

(assert (=> b!1905173 m!2337191))

(assert (=> b!1905173 m!2337191))

(assert (=> b!1905173 m!2337193))

(assert (=> b!1905173 m!2337193))

(declare-fun m!2337197 () Bool)

(assert (=> b!1905173 m!2337197))

(assert (=> b!1905179 m!2337189))

(assert (=> b!1905179 m!2337191))

(assert (=> b!1905179 m!2337191))

(assert (=> b!1905179 m!2337193))

(assert (=> b!1905180 m!2337189))

(declare-fun m!2337199 () Bool)

(assert (=> b!1905180 m!2337199))

(declare-fun m!2337201 () Bool)

(assert (=> b!1905180 m!2337201))

(declare-fun m!2337203 () Bool)

(assert (=> b!1905177 m!2337203))

(assert (=> b!1905175 m!2337189))

(declare-fun m!2337205 () Bool)

(assert (=> b!1905175 m!2337205))

(assert (=> b!1905175 m!2337205))

(declare-fun m!2337207 () Bool)

(assert (=> b!1905175 m!2337207))

(assert (=> b!1905172 m!2337189))

(declare-fun m!2337209 () Bool)

(assert (=> b!1905172 m!2337209))

(assert (=> b!1904948 d!582628))

(declare-fun d!582636 () Bool)

(assert (=> d!582636 (= (isDefined!3646 lt!728436) (not (isEmpty!13179 lt!728436)))))

(declare-fun bs!413798 () Bool)

(assert (= bs!413798 d!582636))

(declare-fun m!2337211 () Bool)

(assert (=> bs!413798 m!2337211))

(assert (=> b!1904948 d!582636))

(declare-fun bs!413799 () Bool)

(declare-fun b!1905210 () Bool)

(assert (= bs!413799 (and b!1905210 b!1904964)))

(declare-fun lambda!74446 () Int)

(assert (=> bs!413799 (not (= lambda!74446 lambda!74440))))

(declare-fun b!1905222 () Bool)

(declare-fun e!1216958 () Bool)

(assert (=> b!1905222 (= e!1216958 true)))

(declare-fun b!1905221 () Bool)

(declare-fun e!1216957 () Bool)

(assert (=> b!1905221 (= e!1216957 e!1216958)))

(declare-fun b!1905220 () Bool)

(declare-fun e!1216956 () Bool)

(assert (=> b!1905220 (= e!1216956 e!1216957)))

(assert (=> b!1905210 e!1216956))

(assert (= b!1905221 b!1905222))

(assert (= b!1905220 b!1905221))

(assert (= (and b!1905210 (is-Cons!21463 rules!3198)) b!1905220))

(declare-fun order!13563 () Int)

(declare-fun order!13561 () Int)

(declare-fun dynLambda!10452 (Int Int) Int)

(declare-fun dynLambda!10453 (Int Int) Int)

(assert (=> b!1905222 (< (dynLambda!10452 order!13561 (toValue!5442 (transformation!3821 (h!26864 rules!3198)))) (dynLambda!10453 order!13563 lambda!74446))))

(declare-fun order!13565 () Int)

(declare-fun dynLambda!10454 (Int Int) Int)

(assert (=> b!1905222 (< (dynLambda!10454 order!13565 (toChars!5301 (transformation!3821 (h!26864 rules!3198)))) (dynLambda!10453 order!13563 lambda!74446))))

(assert (=> b!1905210 true))

(declare-fun call!117349 () BalanceConc!14092)

(declare-fun c!310355 () Bool)

(declare-fun c!310357 () Bool)

(declare-fun bm!117341 () Bool)

(assert (=> bm!117341 (= call!117349 (charsOf!2377 (ite c!310357 (h!26863 (t!177357 tokens!598)) (ite c!310355 separatorToken!354 (h!26863 (t!177357 tokens!598))))))))

(declare-fun call!117347 () List!21543)

(declare-fun call!117348 () BalanceConc!14092)

(declare-fun bm!117342 () Bool)

(assert (=> bm!117342 (= call!117347 (list!8725 (ite c!310357 call!117349 call!117348)))))

(declare-fun b!1905204 () Bool)

(declare-fun e!1216947 () List!21543)

(declare-fun call!117350 () List!21543)

(assert (=> b!1905204 (= e!1216947 call!117350)))

(declare-fun d!582638 () Bool)

(declare-fun c!310356 () Bool)

(assert (=> d!582638 (= c!310356 (is-Cons!21462 (t!177357 tokens!598)))))

(declare-fun e!1216948 () List!21543)

(assert (=> d!582638 (= (printWithSeparatorTokenWhenNeededList!477 thiss!23328 rules!3198 (t!177357 tokens!598) separatorToken!354) e!1216948)))

(declare-fun bm!117343 () Bool)

(assert (=> bm!117343 (= call!117348 call!117349)))

(declare-fun b!1905205 () Bool)

(declare-fun e!1216949 () List!21543)

(assert (=> b!1905205 (= e!1216949 Nil!21461)))

(declare-datatypes ((IArray!14285 0))(
  ( (IArray!14286 (innerList!7200 List!21544)) )
))
(declare-datatypes ((Conc!7140 0))(
  ( (Node!7140 (left!17169 Conc!7140) (right!17499 Conc!7140) (csize!14510 Int) (cheight!7351 Int)) (Leaf!10514 (xs!10034 IArray!14285) (csize!14511 Int)) (Empty!7140) )
))
(declare-datatypes ((BalanceConc!14096 0))(
  ( (BalanceConc!14097 (c!310444 Conc!7140)) )
))
(declare-fun print!1450 (LexerInterface!3434 BalanceConc!14096) BalanceConc!14092)

(declare-fun singletonSeq!1848 (Token!7194) BalanceConc!14096)

(declare-fun printTailRec!957 (LexerInterface!3434 BalanceConc!14096 Int BalanceConc!14092) BalanceConc!14092)

(assert (=> b!1905205 (= (print!1450 thiss!23328 (singletonSeq!1848 (h!26863 (t!177357 tokens!598)))) (printTailRec!957 thiss!23328 (singletonSeq!1848 (h!26863 (t!177357 tokens!598))) 0 (BalanceConc!14093 Empty!7138)))))

(declare-fun lt!728527 () Unit!35791)

(declare-fun Unit!35796 () Unit!35791)

(assert (=> b!1905205 (= lt!728527 Unit!35796)))

(declare-fun call!117346 () List!21543)

(declare-fun lt!728529 () List!21543)

(declare-fun lt!728528 () Unit!35791)

(declare-fun lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!719 (LexerInterface!3434 List!21545 List!21543 List!21543) Unit!35791)

(assert (=> b!1905205 (= lt!728528 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!719 thiss!23328 rules!3198 call!117346 lt!728529))))

(assert (=> b!1905205 false))

(declare-fun lt!728524 () Unit!35791)

(declare-fun Unit!35797 () Unit!35791)

(assert (=> b!1905205 (= lt!728524 Unit!35797)))

(declare-fun b!1905206 () Bool)

(assert (=> b!1905206 (= e!1216948 Nil!21461)))

(declare-fun b!1905207 () Bool)

(assert (=> b!1905207 (= e!1216949 (++!5766 call!117350 lt!728529))))

(declare-fun b!1905208 () Bool)

(declare-fun e!1216946 () List!21543)

(assert (=> b!1905208 (= e!1216946 call!117347)))

(declare-fun b!1905209 () Bool)

(declare-fun lt!728526 () Option!4347)

(assert (=> b!1905209 (= c!310355 (and (is-Some!4346 lt!728526) (not (= (_1!11568 (v!26381 lt!728526)) (h!26863 (t!177357 tokens!598))))))))

(assert (=> b!1905209 (= e!1216947 e!1216949)))

(declare-fun bm!117344 () Bool)

(assert (=> bm!117344 (= call!117346 call!117347)))

(assert (=> b!1905210 (= e!1216948 e!1216947)))

(declare-fun lt!728525 () Unit!35791)

(declare-fun forallContained!689 (List!21544 Int Token!7194) Unit!35791)

(assert (=> b!1905210 (= lt!728525 (forallContained!689 (t!177357 tokens!598) lambda!74446 (h!26863 (t!177357 tokens!598))))))

(assert (=> b!1905210 (= lt!728529 (printWithSeparatorTokenWhenNeededList!477 thiss!23328 rules!3198 (t!177357 (t!177357 tokens!598)) separatorToken!354))))

(assert (=> b!1905210 (= lt!728526 (maxPrefix!1880 thiss!23328 rules!3198 (++!5766 (list!8725 (charsOf!2377 (h!26863 (t!177357 tokens!598)))) lt!728529)))))

(assert (=> b!1905210 (= c!310357 (and (is-Some!4346 lt!728526) (= (_1!11568 (v!26381 lt!728526)) (h!26863 (t!177357 tokens!598)))))))

(declare-fun b!1905211 () Bool)

(assert (=> b!1905211 (= e!1216946 (list!8725 (charsOf!2377 (h!26863 (t!177357 tokens!598)))))))

(declare-fun bm!117345 () Bool)

(declare-fun c!310354 () Bool)

(assert (=> bm!117345 (= c!310354 c!310357)))

(assert (=> bm!117345 (= call!117350 (++!5766 e!1216946 (ite c!310357 lt!728529 call!117346)))))

(assert (= (and d!582638 c!310356) b!1905210))

(assert (= (and d!582638 (not c!310356)) b!1905206))

(assert (= (and b!1905210 c!310357) b!1905204))

(assert (= (and b!1905210 (not c!310357)) b!1905209))

(assert (= (and b!1905209 c!310355) b!1905207))

(assert (= (and b!1905209 (not c!310355)) b!1905205))

(assert (= (or b!1905207 b!1905205) bm!117343))

(assert (= (or b!1905207 b!1905205) bm!117344))

(assert (= (or b!1905204 bm!117343) bm!117341))

(assert (= (or b!1905204 bm!117344) bm!117342))

(assert (= (or b!1905204 b!1905207) bm!117345))

(assert (= (and bm!117345 c!310354) b!1905208))

(assert (= (and bm!117345 (not c!310354)) b!1905211))

(declare-fun m!2337217 () Bool)

(assert (=> bm!117345 m!2337217))

(declare-fun m!2337219 () Bool)

(assert (=> bm!117341 m!2337219))

(declare-fun m!2337221 () Bool)

(assert (=> b!1905211 m!2337221))

(assert (=> b!1905211 m!2337221))

(declare-fun m!2337223 () Bool)

(assert (=> b!1905211 m!2337223))

(assert (=> b!1905210 m!2337223))

(declare-fun m!2337225 () Bool)

(assert (=> b!1905210 m!2337225))

(declare-fun m!2337227 () Bool)

(assert (=> b!1905210 m!2337227))

(declare-fun m!2337229 () Bool)

(assert (=> b!1905210 m!2337229))

(assert (=> b!1905210 m!2337221))

(assert (=> b!1905210 m!2337225))

(declare-fun m!2337231 () Bool)

(assert (=> b!1905210 m!2337231))

(assert (=> b!1905210 m!2337221))

(assert (=> b!1905210 m!2337223))

(declare-fun m!2337233 () Bool)

(assert (=> bm!117342 m!2337233))

(declare-fun m!2337235 () Bool)

(assert (=> b!1905205 m!2337235))

(assert (=> b!1905205 m!2337235))

(declare-fun m!2337237 () Bool)

(assert (=> b!1905205 m!2337237))

(assert (=> b!1905205 m!2337235))

(declare-fun m!2337239 () Bool)

(assert (=> b!1905205 m!2337239))

(declare-fun m!2337241 () Bool)

(assert (=> b!1905205 m!2337241))

(declare-fun m!2337243 () Bool)

(assert (=> b!1905207 m!2337243))

(assert (=> b!1904948 d!582638))

(declare-fun d!582642 () Bool)

(declare-fun e!1216963 () Bool)

(assert (=> d!582642 e!1216963))

(declare-fun res!850786 () Bool)

(assert (=> d!582642 (=> (not res!850786) (not e!1216963))))

(declare-fun lt!728532 () List!21543)

(declare-fun content!3142 (List!21543) (Set C!10638))

(assert (=> d!582642 (= res!850786 (= (content!3142 lt!728532) (set.union (content!3142 lt!728437) (content!3142 lt!728429))))))

(declare-fun e!1216964 () List!21543)

(assert (=> d!582642 (= lt!728532 e!1216964)))

(declare-fun c!310360 () Bool)

(assert (=> d!582642 (= c!310360 (is-Nil!21461 lt!728437))))

(assert (=> d!582642 (= (++!5766 lt!728437 lt!728429) lt!728532)))

(declare-fun b!1905235 () Bool)

(declare-fun res!850787 () Bool)

(assert (=> b!1905235 (=> (not res!850787) (not e!1216963))))

(assert (=> b!1905235 (= res!850787 (= (size!16931 lt!728532) (+ (size!16931 lt!728437) (size!16931 lt!728429))))))

(declare-fun b!1905236 () Bool)

(assert (=> b!1905236 (= e!1216963 (or (not (= lt!728429 Nil!21461)) (= lt!728532 lt!728437)))))

(declare-fun b!1905234 () Bool)

(assert (=> b!1905234 (= e!1216964 (Cons!21461 (h!26862 lt!728437) (++!5766 (t!177356 lt!728437) lt!728429)))))

(declare-fun b!1905233 () Bool)

(assert (=> b!1905233 (= e!1216964 lt!728429)))

(assert (= (and d!582642 c!310360) b!1905233))

(assert (= (and d!582642 (not c!310360)) b!1905234))

(assert (= (and d!582642 res!850786) b!1905235))

(assert (= (and b!1905235 res!850787) b!1905236))

(declare-fun m!2337245 () Bool)

(assert (=> d!582642 m!2337245))

(declare-fun m!2337247 () Bool)

(assert (=> d!582642 m!2337247))

(declare-fun m!2337249 () Bool)

(assert (=> d!582642 m!2337249))

(declare-fun m!2337251 () Bool)

(assert (=> b!1905235 m!2337251))

(assert (=> b!1905235 m!2337201))

(declare-fun m!2337253 () Bool)

(assert (=> b!1905235 m!2337253))

(declare-fun m!2337255 () Bool)

(assert (=> b!1905234 m!2337255))

(assert (=> b!1904948 d!582642))

(declare-fun d!582644 () Bool)

(declare-fun lt!728535 () BalanceConc!14092)

(assert (=> d!582644 (= (list!8725 lt!728535) (originalCharacters!4628 separatorToken!354))))

(assert (=> d!582644 (= lt!728535 (dynLambda!10451 (toChars!5301 (transformation!3821 (rule!6016 separatorToken!354))) (value!120491 separatorToken!354)))))

(assert (=> d!582644 (= (charsOf!2377 separatorToken!354) lt!728535)))

(declare-fun b_lambda!62887 () Bool)

(assert (=> (not b_lambda!62887) (not d!582644)))

(assert (=> d!582644 t!177370))

(declare-fun b_and!147895 () Bool)

(assert (= b_and!147889 (and (=> t!177370 result!140668) b_and!147895)))

(assert (=> d!582644 t!177372))

(declare-fun b_and!147897 () Bool)

(assert (= b_and!147891 (and (=> t!177372 result!140670) b_and!147897)))

(assert (=> d!582644 t!177374))

(declare-fun b_and!147899 () Bool)

(assert (= b_and!147893 (and (=> t!177374 result!140672) b_and!147899)))

(declare-fun m!2337257 () Bool)

(assert (=> d!582644 m!2337257))

(assert (=> d!582644 m!2337161))

(assert (=> b!1904948 d!582644))

(declare-fun d!582646 () Bool)

(declare-fun list!8727 (Conc!7138) List!21543)

(assert (=> d!582646 (= (list!8725 lt!728440) (list!8727 (c!310321 lt!728440)))))

(declare-fun bs!413800 () Bool)

(assert (= bs!413800 d!582646))

(declare-fun m!2337259 () Bool)

(assert (=> bs!413800 m!2337259))

(assert (=> b!1904948 d!582646))

(declare-fun b!1905249 () Bool)

(declare-fun e!1216976 () Option!4348)

(declare-fun e!1216975 () Option!4348)

(assert (=> b!1905249 (= e!1216976 e!1216975)))

(declare-fun c!310365 () Bool)

(assert (=> b!1905249 (= c!310365 (and (is-Cons!21463 rules!3198) (not (= (tag!4251 (h!26864 rules!3198)) (tag!4251 (rule!6016 separatorToken!354))))))))

(declare-fun b!1905250 () Bool)

(assert (=> b!1905250 (= e!1216975 None!4347)))

(declare-fun d!582648 () Bool)

(declare-fun e!1216974 () Bool)

(assert (=> d!582648 e!1216974))

(declare-fun res!850793 () Bool)

(assert (=> d!582648 (=> res!850793 e!1216974)))

(declare-fun lt!728544 () Option!4348)

(assert (=> d!582648 (= res!850793 (isEmpty!13178 lt!728544))))

(assert (=> d!582648 (= lt!728544 e!1216976)))

(declare-fun c!310366 () Bool)

(assert (=> d!582648 (= c!310366 (and (is-Cons!21463 rules!3198) (= (tag!4251 (h!26864 rules!3198)) (tag!4251 (rule!6016 separatorToken!354)))))))

(assert (=> d!582648 (rulesInvariant!3041 thiss!23328 rules!3198)))

(assert (=> d!582648 (= (getRuleFromTag!664 thiss!23328 rules!3198 (tag!4251 (rule!6016 separatorToken!354))) lt!728544)))

(declare-fun b!1905251 () Bool)

(declare-fun lt!728542 () Unit!35791)

(declare-fun lt!728543 () Unit!35791)

(assert (=> b!1905251 (= lt!728542 lt!728543)))

(assert (=> b!1905251 (rulesInvariant!3041 thiss!23328 (t!177358 rules!3198))))

(declare-fun lemmaInvariantOnRulesThenOnTail!253 (LexerInterface!3434 Rule!7442 List!21545) Unit!35791)

(assert (=> b!1905251 (= lt!728543 (lemmaInvariantOnRulesThenOnTail!253 thiss!23328 (h!26864 rules!3198) (t!177358 rules!3198)))))

(assert (=> b!1905251 (= e!1216975 (getRuleFromTag!664 thiss!23328 (t!177358 rules!3198) (tag!4251 (rule!6016 separatorToken!354))))))

(declare-fun b!1905252 () Bool)

(declare-fun e!1216973 () Bool)

(assert (=> b!1905252 (= e!1216973 (= (tag!4251 (get!6666 lt!728544)) (tag!4251 (rule!6016 separatorToken!354))))))

(declare-fun b!1905253 () Bool)

(assert (=> b!1905253 (= e!1216976 (Some!4347 (h!26864 rules!3198)))))

(declare-fun b!1905254 () Bool)

(assert (=> b!1905254 (= e!1216974 e!1216973)))

(declare-fun res!850792 () Bool)

(assert (=> b!1905254 (=> (not res!850792) (not e!1216973))))

(assert (=> b!1905254 (= res!850792 (contains!3854 rules!3198 (get!6666 lt!728544)))))

(assert (= (and d!582648 c!310366) b!1905253))

(assert (= (and d!582648 (not c!310366)) b!1905249))

(assert (= (and b!1905249 c!310365) b!1905251))

(assert (= (and b!1905249 (not c!310365)) b!1905250))

(assert (= (and d!582648 (not res!850793)) b!1905254))

(assert (= (and b!1905254 res!850792) b!1905252))

(declare-fun m!2337261 () Bool)

(assert (=> d!582648 m!2337261))

(assert (=> d!582648 m!2336911))

(declare-fun m!2337263 () Bool)

(assert (=> b!1905251 m!2337263))

(declare-fun m!2337265 () Bool)

(assert (=> b!1905251 m!2337265))

(declare-fun m!2337267 () Bool)

(assert (=> b!1905251 m!2337267))

(declare-fun m!2337269 () Bool)

(assert (=> b!1905252 m!2337269))

(assert (=> b!1905254 m!2337269))

(assert (=> b!1905254 m!2337269))

(declare-fun m!2337271 () Bool)

(assert (=> b!1905254 m!2337271))

(assert (=> b!1904948 d!582648))

(declare-fun b!1905255 () Bool)

(declare-fun e!1216980 () Option!4348)

(declare-fun e!1216979 () Option!4348)

(assert (=> b!1905255 (= e!1216980 e!1216979)))

(declare-fun c!310367 () Bool)

(assert (=> b!1905255 (= c!310367 (and (is-Cons!21463 rules!3198) (not (= (tag!4251 (h!26864 rules!3198)) (tag!4251 (rule!6016 (h!26863 tokens!598)))))))))

(declare-fun b!1905256 () Bool)

(assert (=> b!1905256 (= e!1216979 None!4347)))

(declare-fun d!582650 () Bool)

(declare-fun e!1216978 () Bool)

(assert (=> d!582650 e!1216978))

(declare-fun res!850795 () Bool)

(assert (=> d!582650 (=> res!850795 e!1216978)))

(declare-fun lt!728547 () Option!4348)

(assert (=> d!582650 (= res!850795 (isEmpty!13178 lt!728547))))

(assert (=> d!582650 (= lt!728547 e!1216980)))

(declare-fun c!310368 () Bool)

(assert (=> d!582650 (= c!310368 (and (is-Cons!21463 rules!3198) (= (tag!4251 (h!26864 rules!3198)) (tag!4251 (rule!6016 (h!26863 tokens!598))))))))

(assert (=> d!582650 (rulesInvariant!3041 thiss!23328 rules!3198)))

(assert (=> d!582650 (= (getRuleFromTag!664 thiss!23328 rules!3198 (tag!4251 (rule!6016 (h!26863 tokens!598)))) lt!728547)))

(declare-fun b!1905257 () Bool)

(declare-fun lt!728545 () Unit!35791)

(declare-fun lt!728546 () Unit!35791)

(assert (=> b!1905257 (= lt!728545 lt!728546)))

(assert (=> b!1905257 (rulesInvariant!3041 thiss!23328 (t!177358 rules!3198))))

(assert (=> b!1905257 (= lt!728546 (lemmaInvariantOnRulesThenOnTail!253 thiss!23328 (h!26864 rules!3198) (t!177358 rules!3198)))))

(assert (=> b!1905257 (= e!1216979 (getRuleFromTag!664 thiss!23328 (t!177358 rules!3198) (tag!4251 (rule!6016 (h!26863 tokens!598)))))))

(declare-fun b!1905258 () Bool)

(declare-fun e!1216977 () Bool)

(assert (=> b!1905258 (= e!1216977 (= (tag!4251 (get!6666 lt!728547)) (tag!4251 (rule!6016 (h!26863 tokens!598)))))))

(declare-fun b!1905259 () Bool)

(assert (=> b!1905259 (= e!1216980 (Some!4347 (h!26864 rules!3198)))))

(declare-fun b!1905260 () Bool)

(assert (=> b!1905260 (= e!1216978 e!1216977)))

(declare-fun res!850794 () Bool)

(assert (=> b!1905260 (=> (not res!850794) (not e!1216977))))

(assert (=> b!1905260 (= res!850794 (contains!3854 rules!3198 (get!6666 lt!728547)))))

(assert (= (and d!582650 c!310368) b!1905259))

(assert (= (and d!582650 (not c!310368)) b!1905255))

(assert (= (and b!1905255 c!310367) b!1905257))

(assert (= (and b!1905255 (not c!310367)) b!1905256))

(assert (= (and d!582650 (not res!850795)) b!1905260))

(assert (= (and b!1905260 res!850794) b!1905258))

(declare-fun m!2337273 () Bool)

(assert (=> d!582650 m!2337273))

(assert (=> d!582650 m!2336911))

(assert (=> b!1905257 m!2337263))

(assert (=> b!1905257 m!2337265))

(declare-fun m!2337275 () Bool)

(assert (=> b!1905257 m!2337275))

(declare-fun m!2337277 () Bool)

(assert (=> b!1905258 m!2337277))

(assert (=> b!1905260 m!2337277))

(assert (=> b!1905260 m!2337277))

(declare-fun m!2337279 () Bool)

(assert (=> b!1905260 m!2337279))

(assert (=> b!1904948 d!582650))

(declare-fun b!1905265 () Bool)

(declare-fun e!1216983 () Bool)

(assert (=> b!1905265 (= e!1216983 true)))

(declare-fun d!582652 () Bool)

(assert (=> d!582652 e!1216983))

(assert (= d!582652 b!1905265))

(declare-fun order!13567 () Int)

(declare-fun lambda!74449 () Int)

(declare-fun dynLambda!10455 (Int Int) Int)

(assert (=> b!1905265 (< (dynLambda!10452 order!13561 (toValue!5442 (transformation!3821 (rule!6016 (h!26863 tokens!598))))) (dynLambda!10455 order!13567 lambda!74449))))

(assert (=> b!1905265 (< (dynLambda!10454 order!13565 (toChars!5301 (transformation!3821 (rule!6016 (h!26863 tokens!598))))) (dynLambda!10455 order!13567 lambda!74449))))

(declare-fun dynLambda!10456 (Int BalanceConc!14092) TokenValue!3957)

(assert (=> d!582652 (= (list!8725 (dynLambda!10451 (toChars!5301 (transformation!3821 (rule!6016 (h!26863 tokens!598)))) (dynLambda!10456 (toValue!5442 (transformation!3821 (rule!6016 (h!26863 tokens!598)))) lt!728440))) (list!8725 lt!728440))))

(declare-fun lt!728550 () Unit!35791)

(declare-fun ForallOf!388 (Int BalanceConc!14092) Unit!35791)

(assert (=> d!582652 (= lt!728550 (ForallOf!388 lambda!74449 lt!728440))))

(assert (=> d!582652 (= (lemmaSemiInverse!800 (transformation!3821 (rule!6016 (h!26863 tokens!598))) lt!728440) lt!728550)))

(declare-fun b_lambda!62889 () Bool)

(assert (=> (not b_lambda!62889) (not d!582652)))

(declare-fun t!177380 () Bool)

(declare-fun tb!116369 () Bool)

(assert (=> (and b!1904942 (= (toChars!5301 (transformation!3821 (rule!6016 separatorToken!354))) (toChars!5301 (transformation!3821 (rule!6016 (h!26863 tokens!598))))) t!177380) tb!116369))

(declare-fun b!1905266 () Bool)

(declare-fun tp!544055 () Bool)

(declare-fun e!1216984 () Bool)

(assert (=> b!1905266 (= e!1216984 (and (inv!28565 (c!310321 (dynLambda!10451 (toChars!5301 (transformation!3821 (rule!6016 (h!26863 tokens!598)))) (dynLambda!10456 (toValue!5442 (transformation!3821 (rule!6016 (h!26863 tokens!598)))) lt!728440)))) tp!544055))))

(declare-fun result!140674 () Bool)

(assert (=> tb!116369 (= result!140674 (and (inv!28566 (dynLambda!10451 (toChars!5301 (transformation!3821 (rule!6016 (h!26863 tokens!598)))) (dynLambda!10456 (toValue!5442 (transformation!3821 (rule!6016 (h!26863 tokens!598)))) lt!728440))) e!1216984))))

(assert (= tb!116369 b!1905266))

(declare-fun m!2337281 () Bool)

(assert (=> b!1905266 m!2337281))

(declare-fun m!2337283 () Bool)

(assert (=> tb!116369 m!2337283))

(assert (=> d!582652 t!177380))

(declare-fun b_and!147901 () Bool)

(assert (= b_and!147895 (and (=> t!177380 result!140674) b_and!147901)))

(declare-fun t!177382 () Bool)

(declare-fun tb!116371 () Bool)

(assert (=> (and b!1904950 (= (toChars!5301 (transformation!3821 (rule!6016 (h!26863 tokens!598)))) (toChars!5301 (transformation!3821 (rule!6016 (h!26863 tokens!598))))) t!177382) tb!116371))

(declare-fun result!140676 () Bool)

(assert (= result!140676 result!140674))

(assert (=> d!582652 t!177382))

(declare-fun b_and!147903 () Bool)

(assert (= b_and!147897 (and (=> t!177382 result!140676) b_and!147903)))

(declare-fun tb!116373 () Bool)

(declare-fun t!177384 () Bool)

(assert (=> (and b!1904943 (= (toChars!5301 (transformation!3821 (h!26864 rules!3198))) (toChars!5301 (transformation!3821 (rule!6016 (h!26863 tokens!598))))) t!177384) tb!116373))

(declare-fun result!140678 () Bool)

(assert (= result!140678 result!140674))

(assert (=> d!582652 t!177384))

(declare-fun b_and!147905 () Bool)

(assert (= b_and!147899 (and (=> t!177384 result!140678) b_and!147905)))

(declare-fun b_lambda!62891 () Bool)

(assert (=> (not b_lambda!62891) (not d!582652)))

(declare-fun t!177386 () Bool)

(declare-fun tb!116375 () Bool)

(assert (=> (and b!1904942 (= (toValue!5442 (transformation!3821 (rule!6016 separatorToken!354))) (toValue!5442 (transformation!3821 (rule!6016 (h!26863 tokens!598))))) t!177386) tb!116375))

(declare-fun result!140680 () Bool)

(assert (=> tb!116375 (= result!140680 (inv!21 (dynLambda!10456 (toValue!5442 (transformation!3821 (rule!6016 (h!26863 tokens!598)))) lt!728440)))))

(declare-fun m!2337285 () Bool)

(assert (=> tb!116375 m!2337285))

(assert (=> d!582652 t!177386))

(declare-fun b_and!147907 () Bool)

(assert (= b_and!147859 (and (=> t!177386 result!140680) b_and!147907)))

(declare-fun t!177388 () Bool)

(declare-fun tb!116377 () Bool)

(assert (=> (and b!1904950 (= (toValue!5442 (transformation!3821 (rule!6016 (h!26863 tokens!598)))) (toValue!5442 (transformation!3821 (rule!6016 (h!26863 tokens!598))))) t!177388) tb!116377))

(declare-fun result!140684 () Bool)

(assert (= result!140684 result!140680))

(assert (=> d!582652 t!177388))

(declare-fun b_and!147909 () Bool)

(assert (= b_and!147863 (and (=> t!177388 result!140684) b_and!147909)))

(declare-fun t!177390 () Bool)

(declare-fun tb!116379 () Bool)

(assert (=> (and b!1904943 (= (toValue!5442 (transformation!3821 (h!26864 rules!3198))) (toValue!5442 (transformation!3821 (rule!6016 (h!26863 tokens!598))))) t!177390) tb!116379))

(declare-fun result!140686 () Bool)

(assert (= result!140686 result!140680))

(assert (=> d!582652 t!177390))

(declare-fun b_and!147911 () Bool)

(assert (= b_and!147867 (and (=> t!177390 result!140686) b_and!147911)))

(declare-fun m!2337287 () Bool)

(assert (=> d!582652 m!2337287))

(declare-fun m!2337289 () Bool)

(assert (=> d!582652 m!2337289))

(assert (=> d!582652 m!2337289))

(declare-fun m!2337291 () Bool)

(assert (=> d!582652 m!2337291))

(assert (=> d!582652 m!2337287))

(declare-fun m!2337293 () Bool)

(assert (=> d!582652 m!2337293))

(assert (=> d!582652 m!2336977))

(assert (=> b!1904948 d!582652))

(declare-fun b!1905269 () Bool)

(declare-fun e!1216990 () Bool)

(declare-fun lt!728554 () Option!4347)

(assert (=> b!1905269 (= e!1216990 (contains!3854 rules!3198 (rule!6016 (_1!11568 (get!6665 lt!728554)))))))

(declare-fun b!1905270 () Bool)

(declare-fun res!850797 () Bool)

(assert (=> b!1905270 (=> (not res!850797) (not e!1216990))))

(assert (=> b!1905270 (= res!850797 (= (++!5766 (list!8725 (charsOf!2377 (_1!11568 (get!6665 lt!728554)))) (_2!11568 (get!6665 lt!728554))) (++!5766 lt!728437 lt!728429)))))

(declare-fun call!117351 () Option!4347)

(declare-fun bm!117346 () Bool)

(assert (=> bm!117346 (= call!117351 (maxPrefixOneRule!1202 thiss!23328 (h!26864 rules!3198) (++!5766 lt!728437 lt!728429)))))

(declare-fun b!1905271 () Bool)

(declare-fun e!1216989 () Option!4347)

(assert (=> b!1905271 (= e!1216989 call!117351)))

(declare-fun b!1905272 () Bool)

(declare-fun res!850796 () Bool)

(assert (=> b!1905272 (=> (not res!850796) (not e!1216990))))

(assert (=> b!1905272 (= res!850796 (= (value!120491 (_1!11568 (get!6665 lt!728554))) (apply!5629 (transformation!3821 (rule!6016 (_1!11568 (get!6665 lt!728554)))) (seqFromList!2693 (originalCharacters!4628 (_1!11568 (get!6665 lt!728554)))))))))

(declare-fun b!1905274 () Bool)

(declare-fun e!1216988 () Bool)

(assert (=> b!1905274 (= e!1216988 e!1216990)))

(declare-fun res!850799 () Bool)

(assert (=> b!1905274 (=> (not res!850799) (not e!1216990))))

(assert (=> b!1905274 (= res!850799 (isDefined!3646 lt!728554))))

(declare-fun b!1905275 () Bool)

(declare-fun res!850800 () Bool)

(assert (=> b!1905275 (=> (not res!850800) (not e!1216990))))

(assert (=> b!1905275 (= res!850800 (matchR!2532 (regex!3821 (rule!6016 (_1!11568 (get!6665 lt!728554)))) (list!8725 (charsOf!2377 (_1!11568 (get!6665 lt!728554))))))))

(declare-fun b!1905276 () Bool)

(declare-fun res!850798 () Bool)

(assert (=> b!1905276 (=> (not res!850798) (not e!1216990))))

(assert (=> b!1905276 (= res!850798 (= (list!8725 (charsOf!2377 (_1!11568 (get!6665 lt!728554)))) (originalCharacters!4628 (_1!11568 (get!6665 lt!728554)))))))

(declare-fun b!1905277 () Bool)

(declare-fun res!850802 () Bool)

(assert (=> b!1905277 (=> (not res!850802) (not e!1216990))))

(assert (=> b!1905277 (= res!850802 (< (size!16931 (_2!11568 (get!6665 lt!728554))) (size!16931 (++!5766 lt!728437 lt!728429))))))

(declare-fun d!582654 () Bool)

(assert (=> d!582654 e!1216988))

(declare-fun res!850801 () Bool)

(assert (=> d!582654 (=> res!850801 e!1216988)))

(assert (=> d!582654 (= res!850801 (isEmpty!13179 lt!728554))))

(assert (=> d!582654 (= lt!728554 e!1216989)))

(declare-fun c!310370 () Bool)

(assert (=> d!582654 (= c!310370 (and (is-Cons!21463 rules!3198) (is-Nil!21463 (t!177358 rules!3198))))))

(declare-fun lt!728553 () Unit!35791)

(declare-fun lt!728552 () Unit!35791)

(assert (=> d!582654 (= lt!728553 lt!728552)))

(assert (=> d!582654 (isPrefix!1920 (++!5766 lt!728437 lt!728429) (++!5766 lt!728437 lt!728429))))

(assert (=> d!582654 (= lt!728552 (lemmaIsPrefixRefl!1238 (++!5766 lt!728437 lt!728429) (++!5766 lt!728437 lt!728429)))))

(assert (=> d!582654 (rulesValidInductive!1299 thiss!23328 rules!3198)))

(assert (=> d!582654 (= (maxPrefix!1880 thiss!23328 rules!3198 (++!5766 lt!728437 lt!728429)) lt!728554)))

(declare-fun b!1905273 () Bool)

(declare-fun lt!728555 () Option!4347)

(declare-fun lt!728551 () Option!4347)

(assert (=> b!1905273 (= e!1216989 (ite (and (is-None!4346 lt!728555) (is-None!4346 lt!728551)) None!4346 (ite (is-None!4346 lt!728551) lt!728555 (ite (is-None!4346 lt!728555) lt!728551 (ite (>= (size!16929 (_1!11568 (v!26381 lt!728555))) (size!16929 (_1!11568 (v!26381 lt!728551)))) lt!728555 lt!728551)))))))

(assert (=> b!1905273 (= lt!728555 call!117351)))

(assert (=> b!1905273 (= lt!728551 (maxPrefix!1880 thiss!23328 (t!177358 rules!3198) (++!5766 lt!728437 lt!728429)))))

(assert (= (and d!582654 c!310370) b!1905271))

(assert (= (and d!582654 (not c!310370)) b!1905273))

(assert (= (or b!1905271 b!1905273) bm!117346))

(assert (= (and d!582654 (not res!850801)) b!1905274))

(assert (= (and b!1905274 res!850799) b!1905276))

(assert (= (and b!1905276 res!850798) b!1905277))

(assert (= (and b!1905277 res!850802) b!1905270))

(assert (= (and b!1905270 res!850797) b!1905272))

(assert (= (and b!1905272 res!850796) b!1905275))

(assert (= (and b!1905275 res!850800) b!1905269))

(declare-fun m!2337295 () Bool)

(assert (=> d!582654 m!2337295))

(assert (=> d!582654 m!2336973))

(assert (=> d!582654 m!2336973))

(declare-fun m!2337297 () Bool)

(assert (=> d!582654 m!2337297))

(assert (=> d!582654 m!2336973))

(assert (=> d!582654 m!2336973))

(declare-fun m!2337299 () Bool)

(assert (=> d!582654 m!2337299))

(assert (=> d!582654 m!2337183))

(assert (=> bm!117346 m!2336973))

(declare-fun m!2337301 () Bool)

(assert (=> bm!117346 m!2337301))

(assert (=> b!1905273 m!2336973))

(declare-fun m!2337303 () Bool)

(assert (=> b!1905273 m!2337303))

(declare-fun m!2337305 () Bool)

(assert (=> b!1905275 m!2337305))

(declare-fun m!2337307 () Bool)

(assert (=> b!1905275 m!2337307))

(assert (=> b!1905275 m!2337307))

(declare-fun m!2337309 () Bool)

(assert (=> b!1905275 m!2337309))

(assert (=> b!1905275 m!2337309))

(declare-fun m!2337311 () Bool)

(assert (=> b!1905275 m!2337311))

(assert (=> b!1905270 m!2337305))

(assert (=> b!1905270 m!2337307))

(assert (=> b!1905270 m!2337307))

(assert (=> b!1905270 m!2337309))

(assert (=> b!1905270 m!2337309))

(declare-fun m!2337313 () Bool)

(assert (=> b!1905270 m!2337313))

(assert (=> b!1905276 m!2337305))

(assert (=> b!1905276 m!2337307))

(assert (=> b!1905276 m!2337307))

(assert (=> b!1905276 m!2337309))

(assert (=> b!1905277 m!2337305))

(declare-fun m!2337315 () Bool)

(assert (=> b!1905277 m!2337315))

(assert (=> b!1905277 m!2336973))

(declare-fun m!2337317 () Bool)

(assert (=> b!1905277 m!2337317))

(declare-fun m!2337319 () Bool)

(assert (=> b!1905274 m!2337319))

(assert (=> b!1905272 m!2337305))

(declare-fun m!2337321 () Bool)

(assert (=> b!1905272 m!2337321))

(assert (=> b!1905272 m!2337321))

(declare-fun m!2337323 () Bool)

(assert (=> b!1905272 m!2337323))

(assert (=> b!1905269 m!2337305))

(declare-fun m!2337325 () Bool)

(assert (=> b!1905269 m!2337325))

(assert (=> b!1904948 d!582654))

(declare-fun d!582656 () Bool)

(assert (=> d!582656 (= (isDefined!3645 lt!728432) (not (isEmpty!13178 lt!728432)))))

(declare-fun bs!413802 () Bool)

(assert (= bs!413802 d!582656))

(declare-fun m!2337327 () Bool)

(assert (=> bs!413802 m!2337327))

(assert (=> b!1904948 d!582656))

(declare-fun d!582658 () Bool)

(declare-fun e!1217018 () Bool)

(assert (=> d!582658 e!1217018))

(declare-fun res!850825 () Bool)

(assert (=> d!582658 (=> (not res!850825) (not e!1217018))))

(assert (=> d!582658 (= res!850825 (isDefined!3645 (getRuleFromTag!664 thiss!23328 rules!3198 (tag!4251 (rule!6016 (h!26863 tokens!598))))))))

(declare-fun lt!728561 () Unit!35791)

(declare-fun choose!11863 (LexerInterface!3434 List!21545 List!21543 Token!7194) Unit!35791)

(assert (=> d!582658 (= lt!728561 (choose!11863 thiss!23328 rules!3198 lt!728437 (h!26863 tokens!598)))))

(assert (=> d!582658 (rulesInvariant!3041 thiss!23328 rules!3198)))

(assert (=> d!582658 (= (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!664 thiss!23328 rules!3198 lt!728437 (h!26863 tokens!598)) lt!728561)))

(declare-fun b!1905325 () Bool)

(declare-fun res!850826 () Bool)

(assert (=> b!1905325 (=> (not res!850826) (not e!1217018))))

(assert (=> b!1905325 (= res!850826 (matchR!2532 (regex!3821 (get!6666 (getRuleFromTag!664 thiss!23328 rules!3198 (tag!4251 (rule!6016 (h!26863 tokens!598)))))) (list!8725 (charsOf!2377 (h!26863 tokens!598)))))))

(declare-fun b!1905326 () Bool)

(assert (=> b!1905326 (= e!1217018 (= (rule!6016 (h!26863 tokens!598)) (get!6666 (getRuleFromTag!664 thiss!23328 rules!3198 (tag!4251 (rule!6016 (h!26863 tokens!598)))))))))

(assert (= (and d!582658 res!850825) b!1905325))

(assert (= (and b!1905325 res!850826) b!1905326))

(assert (=> d!582658 m!2336983))

(assert (=> d!582658 m!2336983))

(declare-fun m!2337335 () Bool)

(assert (=> d!582658 m!2337335))

(declare-fun m!2337337 () Bool)

(assert (=> d!582658 m!2337337))

(assert (=> d!582658 m!2336911))

(assert (=> b!1905325 m!2336975))

(declare-fun m!2337339 () Bool)

(assert (=> b!1905325 m!2337339))

(assert (=> b!1905325 m!2336983))

(declare-fun m!2337341 () Bool)

(assert (=> b!1905325 m!2337341))

(assert (=> b!1905325 m!2336983))

(assert (=> b!1905325 m!2337339))

(declare-fun m!2337343 () Bool)

(assert (=> b!1905325 m!2337343))

(assert (=> b!1905325 m!2336975))

(assert (=> b!1905326 m!2336983))

(assert (=> b!1905326 m!2336983))

(assert (=> b!1905326 m!2337341))

(assert (=> b!1904948 d!582658))

(declare-fun d!582662 () Bool)

(assert (=> d!582662 (= (list!8725 (charsOf!2377 separatorToken!354)) (list!8727 (c!310321 (charsOf!2377 separatorToken!354))))))

(declare-fun bs!413803 () Bool)

(assert (= bs!413803 d!582662))

(declare-fun m!2337345 () Bool)

(assert (=> bs!413803 m!2337345))

(assert (=> b!1904948 d!582662))

(declare-fun b!1905349 () Bool)

(declare-fun e!1217032 () Bool)

(assert (=> b!1905349 (= e!1217032 true)))

(declare-fun d!582664 () Bool)

(assert (=> d!582664 e!1217032))

(assert (= d!582664 b!1905349))

(declare-fun order!13575 () Int)

(declare-fun lambda!74455 () Int)

(declare-fun dynLambda!10462 (Int Int) Int)

(assert (=> b!1905349 (< (dynLambda!10452 order!13561 (toValue!5442 (transformation!3821 (rule!6016 (h!26863 tokens!598))))) (dynLambda!10462 order!13575 lambda!74455))))

(assert (=> b!1905349 (< (dynLambda!10454 order!13565 (toChars!5301 (transformation!3821 (rule!6016 (h!26863 tokens!598))))) (dynLambda!10462 order!13575 lambda!74455))))

(assert (=> d!582664 (= (dynLambda!10456 (toValue!5442 (transformation!3821 (rule!6016 (h!26863 tokens!598)))) lt!728440) (dynLambda!10456 (toValue!5442 (transformation!3821 (rule!6016 (h!26863 tokens!598)))) (seqFromList!2693 (originalCharacters!4628 (h!26863 tokens!598)))))))

(declare-fun lt!728565 () Unit!35791)

(declare-fun Forall2of!184 (Int BalanceConc!14092 BalanceConc!14092) Unit!35791)

(assert (=> d!582664 (= lt!728565 (Forall2of!184 lambda!74455 lt!728440 (seqFromList!2693 (originalCharacters!4628 (h!26863 tokens!598)))))))

(assert (=> d!582664 (= (list!8725 lt!728440) (list!8725 (seqFromList!2693 (originalCharacters!4628 (h!26863 tokens!598)))))))

(assert (=> d!582664 (= (lemmaEqSameImage!529 (transformation!3821 (rule!6016 (h!26863 tokens!598))) lt!728440 (seqFromList!2693 (originalCharacters!4628 (h!26863 tokens!598)))) lt!728565)))

(declare-fun b_lambda!62893 () Bool)

(assert (=> (not b_lambda!62893) (not d!582664)))

(assert (=> d!582664 t!177386))

(declare-fun b_and!147913 () Bool)

(assert (= b_and!147907 (and (=> t!177386 result!140680) b_and!147913)))

(assert (=> d!582664 t!177388))

(declare-fun b_and!147915 () Bool)

(assert (= b_and!147909 (and (=> t!177388 result!140684) b_and!147915)))

(assert (=> d!582664 t!177390))

(declare-fun b_and!147917 () Bool)

(assert (= b_and!147911 (and (=> t!177390 result!140686) b_and!147917)))

(declare-fun b_lambda!62895 () Bool)

(assert (=> (not b_lambda!62895) (not d!582664)))

(declare-fun t!177392 () Bool)

(declare-fun tb!116381 () Bool)

(assert (=> (and b!1904942 (= (toValue!5442 (transformation!3821 (rule!6016 separatorToken!354))) (toValue!5442 (transformation!3821 (rule!6016 (h!26863 tokens!598))))) t!177392) tb!116381))

(declare-fun result!140688 () Bool)

(assert (=> tb!116381 (= result!140688 (inv!21 (dynLambda!10456 (toValue!5442 (transformation!3821 (rule!6016 (h!26863 tokens!598)))) (seqFromList!2693 (originalCharacters!4628 (h!26863 tokens!598))))))))

(declare-fun m!2337367 () Bool)

(assert (=> tb!116381 m!2337367))

(assert (=> d!582664 t!177392))

(declare-fun b_and!147919 () Bool)

(assert (= b_and!147913 (and (=> t!177392 result!140688) b_and!147919)))

(declare-fun t!177394 () Bool)

(declare-fun tb!116383 () Bool)

(assert (=> (and b!1904950 (= (toValue!5442 (transformation!3821 (rule!6016 (h!26863 tokens!598)))) (toValue!5442 (transformation!3821 (rule!6016 (h!26863 tokens!598))))) t!177394) tb!116383))

(declare-fun result!140690 () Bool)

(assert (= result!140690 result!140688))

(assert (=> d!582664 t!177394))

(declare-fun b_and!147921 () Bool)

(assert (= b_and!147915 (and (=> t!177394 result!140690) b_and!147921)))

(declare-fun t!177396 () Bool)

(declare-fun tb!116385 () Bool)

(assert (=> (and b!1904943 (= (toValue!5442 (transformation!3821 (h!26864 rules!3198))) (toValue!5442 (transformation!3821 (rule!6016 (h!26863 tokens!598))))) t!177396) tb!116385))

(declare-fun result!140692 () Bool)

(assert (= result!140692 result!140688))

(assert (=> d!582664 t!177396))

(declare-fun b_and!147923 () Bool)

(assert (= b_and!147917 (and (=> t!177396 result!140692) b_and!147923)))

(assert (=> d!582664 m!2336963))

(declare-fun m!2337369 () Bool)

(assert (=> d!582664 m!2337369))

(assert (=> d!582664 m!2336963))

(declare-fun m!2337371 () Bool)

(assert (=> d!582664 m!2337371))

(assert (=> d!582664 m!2337287))

(assert (=> d!582664 m!2336963))

(declare-fun m!2337373 () Bool)

(assert (=> d!582664 m!2337373))

(assert (=> d!582664 m!2336977))

(assert (=> b!1904948 d!582664))

(declare-fun d!582672 () Bool)

(declare-fun e!1217039 () Bool)

(assert (=> d!582672 e!1217039))

(declare-fun res!850844 () Bool)

(assert (=> d!582672 (=> (not res!850844) (not e!1217039))))

(assert (=> d!582672 (= res!850844 (isDefined!3645 (getRuleFromTag!664 thiss!23328 rules!3198 (tag!4251 (rule!6016 separatorToken!354)))))))

(declare-fun lt!728566 () Unit!35791)

(assert (=> d!582672 (= lt!728566 (choose!11863 thiss!23328 rules!3198 lt!728438 separatorToken!354))))

(assert (=> d!582672 (rulesInvariant!3041 thiss!23328 rules!3198)))

(assert (=> d!582672 (= (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!664 thiss!23328 rules!3198 lt!728438 separatorToken!354) lt!728566)))

(declare-fun b!1905355 () Bool)

(declare-fun res!850845 () Bool)

(assert (=> b!1905355 (=> (not res!850845) (not e!1217039))))

(assert (=> b!1905355 (= res!850845 (matchR!2532 (regex!3821 (get!6666 (getRuleFromTag!664 thiss!23328 rules!3198 (tag!4251 (rule!6016 separatorToken!354))))) (list!8725 (charsOf!2377 separatorToken!354))))))

(declare-fun b!1905356 () Bool)

(assert (=> b!1905356 (= e!1217039 (= (rule!6016 separatorToken!354) (get!6666 (getRuleFromTag!664 thiss!23328 rules!3198 (tag!4251 (rule!6016 separatorToken!354))))))))

(assert (= (and d!582672 res!850844) b!1905355))

(assert (= (and b!1905355 res!850845) b!1905356))

(assert (=> d!582672 m!2336993))

(assert (=> d!582672 m!2336993))

(declare-fun m!2337375 () Bool)

(assert (=> d!582672 m!2337375))

(declare-fun m!2337377 () Bool)

(assert (=> d!582672 m!2337377))

(assert (=> d!582672 m!2336911))

(assert (=> b!1905355 m!2336971))

(assert (=> b!1905355 m!2336981))

(assert (=> b!1905355 m!2336993))

(declare-fun m!2337379 () Bool)

(assert (=> b!1905355 m!2337379))

(assert (=> b!1905355 m!2336993))

(assert (=> b!1905355 m!2336981))

(declare-fun m!2337381 () Bool)

(assert (=> b!1905355 m!2337381))

(assert (=> b!1905355 m!2336971))

(assert (=> b!1905356 m!2336993))

(assert (=> b!1905356 m!2336993))

(assert (=> b!1905356 m!2337379))

(assert (=> b!1904948 d!582672))

(declare-fun d!582674 () Bool)

(declare-fun lt!728567 () BalanceConc!14092)

(assert (=> d!582674 (= (list!8725 lt!728567) (originalCharacters!4628 (h!26863 tokens!598)))))

(assert (=> d!582674 (= lt!728567 (dynLambda!10451 (toChars!5301 (transformation!3821 (rule!6016 (h!26863 tokens!598)))) (value!120491 (h!26863 tokens!598))))))

(assert (=> d!582674 (= (charsOf!2377 (h!26863 tokens!598)) lt!728567)))

(declare-fun b_lambda!62899 () Bool)

(assert (=> (not b_lambda!62899) (not d!582674)))

(assert (=> d!582674 t!177364))

(declare-fun b_and!147925 () Bool)

(assert (= b_and!147901 (and (=> t!177364 result!140660) b_and!147925)))

(assert (=> d!582674 t!177366))

(declare-fun b_and!147927 () Bool)

(assert (= b_and!147903 (and (=> t!177366 result!140664) b_and!147927)))

(assert (=> d!582674 t!177368))

(declare-fun b_and!147929 () Bool)

(assert (= b_and!147905 (and (=> t!177368 result!140666) b_and!147929)))

(declare-fun m!2337387 () Bool)

(assert (=> d!582674 m!2337387))

(assert (=> d!582674 m!2337109))

(assert (=> b!1904948 d!582674))

(declare-fun d!582678 () Bool)

(declare-fun fromListB!1221 (List!21543) BalanceConc!14092)

(assert (=> d!582678 (= (seqFromList!2693 (originalCharacters!4628 (h!26863 tokens!598))) (fromListB!1221 (originalCharacters!4628 (h!26863 tokens!598))))))

(declare-fun bs!413804 () Bool)

(assert (= bs!413804 d!582678))

(declare-fun m!2337389 () Bool)

(assert (=> bs!413804 m!2337389))

(assert (=> b!1904948 d!582678))

(declare-fun d!582680 () Bool)

(assert (=> d!582680 (= (inv!28558 (tag!4251 (rule!6016 separatorToken!354))) (= (mod (str.len (value!120490 (tag!4251 (rule!6016 separatorToken!354)))) 2) 0))))

(assert (=> b!1904959 d!582680))

(declare-fun d!582682 () Bool)

(declare-fun res!850852 () Bool)

(declare-fun e!1217044 () Bool)

(assert (=> d!582682 (=> (not res!850852) (not e!1217044))))

(assert (=> d!582682 (= res!850852 (semiInverseModEq!1542 (toChars!5301 (transformation!3821 (rule!6016 separatorToken!354))) (toValue!5442 (transformation!3821 (rule!6016 separatorToken!354)))))))

(assert (=> d!582682 (= (inv!28561 (transformation!3821 (rule!6016 separatorToken!354))) e!1217044)))

(declare-fun b!1905363 () Bool)

(assert (=> b!1905363 (= e!1217044 (equivClasses!1469 (toChars!5301 (transformation!3821 (rule!6016 separatorToken!354))) (toValue!5442 (transformation!3821 (rule!6016 separatorToken!354)))))))

(assert (= (and d!582682 res!850852) b!1905363))

(declare-fun m!2337391 () Bool)

(assert (=> d!582682 m!2337391))

(declare-fun m!2337393 () Bool)

(assert (=> b!1905363 m!2337393))

(assert (=> b!1904959 d!582682))

(declare-fun d!582684 () Bool)

(declare-fun lt!728572 () Bool)

(declare-fun e!1217066 () Bool)

(assert (=> d!582684 (= lt!728572 e!1217066)))

(declare-fun res!850867 () Bool)

(assert (=> d!582684 (=> (not res!850867) (not e!1217066))))

(declare-fun list!8729 (BalanceConc!14096) List!21544)

(declare-datatypes ((tuple2!20204 0))(
  ( (tuple2!20205 (_1!11571 BalanceConc!14096) (_2!11571 BalanceConc!14092)) )
))
(declare-fun lex!1522 (LexerInterface!3434 List!21545 BalanceConc!14092) tuple2!20204)

(assert (=> d!582684 (= res!850867 (= (list!8729 (_1!11571 (lex!1522 thiss!23328 rules!3198 (print!1450 thiss!23328 (singletonSeq!1848 separatorToken!354))))) (list!8729 (singletonSeq!1848 separatorToken!354))))))

(declare-fun e!1217065 () Bool)

(assert (=> d!582684 (= lt!728572 e!1217065)))

(declare-fun res!850865 () Bool)

(assert (=> d!582684 (=> (not res!850865) (not e!1217065))))

(declare-fun lt!728573 () tuple2!20204)

(declare-fun size!16934 (BalanceConc!14096) Int)

(assert (=> d!582684 (= res!850865 (= (size!16934 (_1!11571 lt!728573)) 1))))

(assert (=> d!582684 (= lt!728573 (lex!1522 thiss!23328 rules!3198 (print!1450 thiss!23328 (singletonSeq!1848 separatorToken!354))))))

(assert (=> d!582684 (not (isEmpty!13175 rules!3198))))

(assert (=> d!582684 (= (rulesProduceIndividualToken!1606 thiss!23328 rules!3198 separatorToken!354) lt!728572)))

(declare-fun b!1905397 () Bool)

(declare-fun res!850866 () Bool)

(assert (=> b!1905397 (=> (not res!850866) (not e!1217065))))

(declare-fun apply!5631 (BalanceConc!14096 Int) Token!7194)

(assert (=> b!1905397 (= res!850866 (= (apply!5631 (_1!11571 lt!728573) 0) separatorToken!354))))

(declare-fun b!1905398 () Bool)

(declare-fun isEmpty!13182 (BalanceConc!14092) Bool)

(assert (=> b!1905398 (= e!1217065 (isEmpty!13182 (_2!11571 lt!728573)))))

(declare-fun b!1905399 () Bool)

(assert (=> b!1905399 (= e!1217066 (isEmpty!13182 (_2!11571 (lex!1522 thiss!23328 rules!3198 (print!1450 thiss!23328 (singletonSeq!1848 separatorToken!354))))))))

(assert (= (and d!582684 res!850865) b!1905397))

(assert (= (and b!1905397 res!850866) b!1905398))

(assert (= (and d!582684 res!850867) b!1905399))

(assert (=> d!582684 m!2336919))

(declare-fun m!2337419 () Bool)

(assert (=> d!582684 m!2337419))

(declare-fun m!2337421 () Bool)

(assert (=> d!582684 m!2337421))

(declare-fun m!2337423 () Bool)

(assert (=> d!582684 m!2337423))

(declare-fun m!2337425 () Bool)

(assert (=> d!582684 m!2337425))

(declare-fun m!2337427 () Bool)

(assert (=> d!582684 m!2337427))

(declare-fun m!2337429 () Bool)

(assert (=> d!582684 m!2337429))

(assert (=> d!582684 m!2337425))

(assert (=> d!582684 m!2337419))

(assert (=> d!582684 m!2337425))

(declare-fun m!2337431 () Bool)

(assert (=> b!1905397 m!2337431))

(declare-fun m!2337433 () Bool)

(assert (=> b!1905398 m!2337433))

(assert (=> b!1905399 m!2337425))

(assert (=> b!1905399 m!2337425))

(assert (=> b!1905399 m!2337419))

(assert (=> b!1905399 m!2337419))

(assert (=> b!1905399 m!2337421))

(declare-fun m!2337435 () Bool)

(assert (=> b!1905399 m!2337435))

(assert (=> b!1904949 d!582684))

(declare-fun bs!413809 () Bool)

(declare-fun d!582692 () Bool)

(assert (= bs!413809 (and d!582692 b!1904964)))

(declare-fun lambda!74458 () Int)

(assert (=> bs!413809 (not (= lambda!74458 lambda!74440))))

(declare-fun bs!413810 () Bool)

(assert (= bs!413810 (and d!582692 b!1905210)))

(assert (=> bs!413810 (= lambda!74458 lambda!74446)))

(declare-fun b!1905525 () Bool)

(declare-fun e!1217135 () Bool)

(assert (=> b!1905525 (= e!1217135 true)))

(declare-fun b!1905524 () Bool)

(declare-fun e!1217134 () Bool)

(assert (=> b!1905524 (= e!1217134 e!1217135)))

(declare-fun b!1905523 () Bool)

(declare-fun e!1217133 () Bool)

(assert (=> b!1905523 (= e!1217133 e!1217134)))

(assert (=> d!582692 e!1217133))

(assert (= b!1905524 b!1905525))

(assert (= b!1905523 b!1905524))

(assert (= (and d!582692 (is-Cons!21463 rules!3198)) b!1905523))

(assert (=> b!1905525 (< (dynLambda!10452 order!13561 (toValue!5442 (transformation!3821 (h!26864 rules!3198)))) (dynLambda!10453 order!13563 lambda!74458))))

(assert (=> b!1905525 (< (dynLambda!10454 order!13565 (toChars!5301 (transformation!3821 (h!26864 rules!3198)))) (dynLambda!10453 order!13563 lambda!74458))))

(assert (=> d!582692 true))

(declare-fun lt!728614 () Bool)

(assert (=> d!582692 (= lt!728614 (forall!4507 tokens!598 lambda!74458))))

(declare-fun e!1217131 () Bool)

(assert (=> d!582692 (= lt!728614 e!1217131)))

(declare-fun res!850940 () Bool)

(assert (=> d!582692 (=> res!850940 e!1217131)))

(assert (=> d!582692 (= res!850940 (not (is-Cons!21462 tokens!598)))))

(assert (=> d!582692 (not (isEmpty!13175 rules!3198))))

(assert (=> d!582692 (= (rulesProduceEachTokenIndividuallyList!1165 thiss!23328 rules!3198 tokens!598) lt!728614)))

(declare-fun b!1905521 () Bool)

(declare-fun e!1217132 () Bool)

(assert (=> b!1905521 (= e!1217131 e!1217132)))

(declare-fun res!850941 () Bool)

(assert (=> b!1905521 (=> (not res!850941) (not e!1217132))))

(assert (=> b!1905521 (= res!850941 (rulesProduceIndividualToken!1606 thiss!23328 rules!3198 (h!26863 tokens!598)))))

(declare-fun b!1905522 () Bool)

(assert (=> b!1905522 (= e!1217132 (rulesProduceEachTokenIndividuallyList!1165 thiss!23328 rules!3198 (t!177357 tokens!598)))))

(assert (= (and d!582692 (not res!850940)) b!1905521))

(assert (= (and b!1905521 res!850941) b!1905522))

(declare-fun m!2337603 () Bool)

(assert (=> d!582692 m!2337603))

(assert (=> d!582692 m!2336919))

(declare-fun m!2337605 () Bool)

(assert (=> b!1905521 m!2337605))

(declare-fun m!2337607 () Bool)

(assert (=> b!1905522 m!2337607))

(assert (=> b!1904960 d!582692))

(declare-fun d!582742 () Bool)

(declare-fun lt!728617 () Bool)

(assert (=> d!582742 (= lt!728617 (set.member (head!4421 lt!728438) (content!3142 (usedCharacters!329 (regex!3821 (rule!6016 separatorToken!354))))))))

(declare-fun e!1217141 () Bool)

(assert (=> d!582742 (= lt!728617 e!1217141)))

(declare-fun res!850947 () Bool)

(assert (=> d!582742 (=> (not res!850947) (not e!1217141))))

(assert (=> d!582742 (= res!850947 (is-Cons!21461 (usedCharacters!329 (regex!3821 (rule!6016 separatorToken!354)))))))

(assert (=> d!582742 (= (contains!3852 (usedCharacters!329 (regex!3821 (rule!6016 separatorToken!354))) (head!4421 lt!728438)) lt!728617)))

(declare-fun b!1905530 () Bool)

(declare-fun e!1217140 () Bool)

(assert (=> b!1905530 (= e!1217141 e!1217140)))

(declare-fun res!850946 () Bool)

(assert (=> b!1905530 (=> res!850946 e!1217140)))

(assert (=> b!1905530 (= res!850946 (= (h!26862 (usedCharacters!329 (regex!3821 (rule!6016 separatorToken!354)))) (head!4421 lt!728438)))))

(declare-fun b!1905531 () Bool)

(assert (=> b!1905531 (= e!1217140 (contains!3852 (t!177356 (usedCharacters!329 (regex!3821 (rule!6016 separatorToken!354)))) (head!4421 lt!728438)))))

(assert (= (and d!582742 res!850947) b!1905530))

(assert (= (and b!1905530 (not res!850946)) b!1905531))

(assert (=> d!582742 m!2336931))

(declare-fun m!2337609 () Bool)

(assert (=> d!582742 m!2337609))

(assert (=> d!582742 m!2336933))

(declare-fun m!2337611 () Bool)

(assert (=> d!582742 m!2337611))

(assert (=> b!1905531 m!2336933))

(declare-fun m!2337613 () Bool)

(assert (=> b!1905531 m!2337613))

(assert (=> b!1904961 d!582742))

(declare-fun d!582744 () Bool)

(declare-fun e!1217142 () Bool)

(assert (=> d!582744 e!1217142))

(declare-fun res!850948 () Bool)

(assert (=> d!582744 (=> (not res!850948) (not e!1217142))))

(declare-fun lt!728618 () List!21543)

(assert (=> d!582744 (= res!850948 (= (content!3142 lt!728618) (set.union (content!3142 lt!728437) (content!3142 (++!5766 lt!728438 lt!728429)))))))

(declare-fun e!1217143 () List!21543)

(assert (=> d!582744 (= lt!728618 e!1217143)))

(declare-fun c!310412 () Bool)

(assert (=> d!582744 (= c!310412 (is-Nil!21461 lt!728437))))

(assert (=> d!582744 (= (++!5766 lt!728437 (++!5766 lt!728438 lt!728429)) lt!728618)))

(declare-fun b!1905534 () Bool)

(declare-fun res!850949 () Bool)

(assert (=> b!1905534 (=> (not res!850949) (not e!1217142))))

(assert (=> b!1905534 (= res!850949 (= (size!16931 lt!728618) (+ (size!16931 lt!728437) (size!16931 (++!5766 lt!728438 lt!728429)))))))

(declare-fun b!1905535 () Bool)

(assert (=> b!1905535 (= e!1217142 (or (not (= (++!5766 lt!728438 lt!728429) Nil!21461)) (= lt!728618 lt!728437)))))

(declare-fun b!1905533 () Bool)

(assert (=> b!1905533 (= e!1217143 (Cons!21461 (h!26862 lt!728437) (++!5766 (t!177356 lt!728437) (++!5766 lt!728438 lt!728429))))))

(declare-fun b!1905532 () Bool)

(assert (=> b!1905532 (= e!1217143 (++!5766 lt!728438 lt!728429))))

(assert (= (and d!582744 c!310412) b!1905532))

(assert (= (and d!582744 (not c!310412)) b!1905533))

(assert (= (and d!582744 res!850948) b!1905534))

(assert (= (and b!1905534 res!850949) b!1905535))

(declare-fun m!2337615 () Bool)

(assert (=> d!582744 m!2337615))

(assert (=> d!582744 m!2337247))

(assert (=> d!582744 m!2336939))

(declare-fun m!2337617 () Bool)

(assert (=> d!582744 m!2337617))

(declare-fun m!2337619 () Bool)

(assert (=> b!1905534 m!2337619))

(assert (=> b!1905534 m!2337201))

(assert (=> b!1905534 m!2336939))

(declare-fun m!2337621 () Bool)

(assert (=> b!1905534 m!2337621))

(assert (=> b!1905533 m!2336939))

(declare-fun m!2337623 () Bool)

(assert (=> b!1905533 m!2337623))

(assert (=> b!1904961 d!582744))

(declare-fun bm!117374 () Bool)

(declare-fun call!117381 () List!21543)

(declare-fun c!310422 () Bool)

(assert (=> bm!117374 (= call!117381 (usedCharacters!329 (ite c!310422 (regTwo!11005 (regex!3821 (rule!6016 separatorToken!354))) (regOne!11004 (regex!3821 (rule!6016 separatorToken!354))))))))

(declare-fun b!1905552 () Bool)

(declare-fun e!1217155 () List!21543)

(declare-fun call!117380 () List!21543)

(assert (=> b!1905552 (= e!1217155 call!117380)))

(declare-fun d!582746 () Bool)

(declare-fun c!310421 () Bool)

(assert (=> d!582746 (= c!310421 (or (is-EmptyExpr!5246 (regex!3821 (rule!6016 separatorToken!354))) (is-EmptyLang!5246 (regex!3821 (rule!6016 separatorToken!354)))))))

(declare-fun e!1217154 () List!21543)

(assert (=> d!582746 (= (usedCharacters!329 (regex!3821 (rule!6016 separatorToken!354))) e!1217154)))

(declare-fun b!1905553 () Bool)

(declare-fun e!1217153 () List!21543)

(assert (=> b!1905553 (= e!1217154 e!1217153)))

(declare-fun c!310424 () Bool)

(assert (=> b!1905553 (= c!310424 (is-ElementMatch!5246 (regex!3821 (rule!6016 separatorToken!354))))))

(declare-fun b!1905554 () Bool)

(declare-fun c!310423 () Bool)

(assert (=> b!1905554 (= c!310423 (is-Star!5246 (regex!3821 (rule!6016 separatorToken!354))))))

(declare-fun e!1217152 () List!21543)

(assert (=> b!1905554 (= e!1217153 e!1217152)))

(declare-fun b!1905555 () Bool)

(assert (=> b!1905555 (= e!1217155 call!117380)))

(declare-fun bm!117375 () Bool)

(declare-fun call!117382 () List!21543)

(declare-fun call!117379 () List!21543)

(assert (=> bm!117375 (= call!117382 call!117379)))

(declare-fun b!1905556 () Bool)

(assert (=> b!1905556 (= e!1217153 (Cons!21461 (c!310320 (regex!3821 (rule!6016 separatorToken!354))) Nil!21461))))

(declare-fun b!1905557 () Bool)

(assert (=> b!1905557 (= e!1217154 Nil!21461)))

(declare-fun bm!117376 () Bool)

(assert (=> bm!117376 (= call!117380 (++!5766 (ite c!310422 call!117382 call!117381) (ite c!310422 call!117381 call!117382)))))

(declare-fun b!1905558 () Bool)

(assert (=> b!1905558 (= e!1217152 call!117379)))

(declare-fun bm!117377 () Bool)

(assert (=> bm!117377 (= call!117379 (usedCharacters!329 (ite c!310423 (reg!5575 (regex!3821 (rule!6016 separatorToken!354))) (ite c!310422 (regOne!11005 (regex!3821 (rule!6016 separatorToken!354))) (regTwo!11004 (regex!3821 (rule!6016 separatorToken!354)))))))))

(declare-fun b!1905559 () Bool)

(assert (=> b!1905559 (= e!1217152 e!1217155)))

(assert (=> b!1905559 (= c!310422 (is-Union!5246 (regex!3821 (rule!6016 separatorToken!354))))))

(assert (= (and d!582746 c!310421) b!1905557))

(assert (= (and d!582746 (not c!310421)) b!1905553))

(assert (= (and b!1905553 c!310424) b!1905556))

(assert (= (and b!1905553 (not c!310424)) b!1905554))

(assert (= (and b!1905554 c!310423) b!1905558))

(assert (= (and b!1905554 (not c!310423)) b!1905559))

(assert (= (and b!1905559 c!310422) b!1905552))

(assert (= (and b!1905559 (not c!310422)) b!1905555))

(assert (= (or b!1905552 b!1905555) bm!117375))

(assert (= (or b!1905552 b!1905555) bm!117374))

(assert (= (or b!1905552 b!1905555) bm!117376))

(assert (= (or b!1905558 bm!117375) bm!117377))

(declare-fun m!2337625 () Bool)

(assert (=> bm!117374 m!2337625))

(declare-fun m!2337627 () Bool)

(assert (=> bm!117376 m!2337627))

(declare-fun m!2337629 () Bool)

(assert (=> bm!117377 m!2337629))

(assert (=> b!1904961 d!582746))

(declare-fun d!582748 () Bool)

(assert (=> d!582748 (= (head!4421 lt!728438) (h!26862 lt!728438))))

(assert (=> b!1904961 d!582748))

(declare-fun d!582750 () Bool)

(assert (=> d!582750 (= (++!5766 (++!5766 lt!728437 lt!728438) lt!728429) (++!5766 lt!728437 (++!5766 lt!728438 lt!728429)))))

(declare-fun lt!728621 () Unit!35791)

(declare-fun choose!11864 (List!21543 List!21543 List!21543) Unit!35791)

(assert (=> d!582750 (= lt!728621 (choose!11864 lt!728437 lt!728438 lt!728429))))

(assert (=> d!582750 (= (lemmaConcatAssociativity!1136 lt!728437 lt!728438 lt!728429) lt!728621)))

(declare-fun bs!413811 () Bool)

(assert (= bs!413811 d!582750))

(assert (=> bs!413811 m!2336943))

(assert (=> bs!413811 m!2336939))

(assert (=> bs!413811 m!2336943))

(assert (=> bs!413811 m!2336945))

(assert (=> bs!413811 m!2336939))

(assert (=> bs!413811 m!2336941))

(declare-fun m!2337631 () Bool)

(assert (=> bs!413811 m!2337631))

(assert (=> b!1904961 d!582750))

(declare-fun d!582752 () Bool)

(declare-fun e!1217156 () Bool)

(assert (=> d!582752 e!1217156))

(declare-fun res!850950 () Bool)

(assert (=> d!582752 (=> (not res!850950) (not e!1217156))))

(declare-fun lt!728622 () List!21543)

(assert (=> d!582752 (= res!850950 (= (content!3142 lt!728622) (set.union (content!3142 (++!5766 lt!728437 lt!728438)) (content!3142 lt!728429))))))

(declare-fun e!1217157 () List!21543)

(assert (=> d!582752 (= lt!728622 e!1217157)))

(declare-fun c!310425 () Bool)

(assert (=> d!582752 (= c!310425 (is-Nil!21461 (++!5766 lt!728437 lt!728438)))))

(assert (=> d!582752 (= (++!5766 (++!5766 lt!728437 lt!728438) lt!728429) lt!728622)))

(declare-fun b!1905562 () Bool)

(declare-fun res!850951 () Bool)

(assert (=> b!1905562 (=> (not res!850951) (not e!1217156))))

(assert (=> b!1905562 (= res!850951 (= (size!16931 lt!728622) (+ (size!16931 (++!5766 lt!728437 lt!728438)) (size!16931 lt!728429))))))

(declare-fun b!1905563 () Bool)

(assert (=> b!1905563 (= e!1217156 (or (not (= lt!728429 Nil!21461)) (= lt!728622 (++!5766 lt!728437 lt!728438))))))

(declare-fun b!1905561 () Bool)

(assert (=> b!1905561 (= e!1217157 (Cons!21461 (h!26862 (++!5766 lt!728437 lt!728438)) (++!5766 (t!177356 (++!5766 lt!728437 lt!728438)) lt!728429)))))

(declare-fun b!1905560 () Bool)

(assert (=> b!1905560 (= e!1217157 lt!728429)))

(assert (= (and d!582752 c!310425) b!1905560))

(assert (= (and d!582752 (not c!310425)) b!1905561))

(assert (= (and d!582752 res!850950) b!1905562))

(assert (= (and b!1905562 res!850951) b!1905563))

(declare-fun m!2337633 () Bool)

(assert (=> d!582752 m!2337633))

(assert (=> d!582752 m!2336943))

(declare-fun m!2337635 () Bool)

(assert (=> d!582752 m!2337635))

(assert (=> d!582752 m!2337249))

(declare-fun m!2337637 () Bool)

(assert (=> b!1905562 m!2337637))

(assert (=> b!1905562 m!2336943))

(declare-fun m!2337639 () Bool)

(assert (=> b!1905562 m!2337639))

(assert (=> b!1905562 m!2337253))

(declare-fun m!2337641 () Bool)

(assert (=> b!1905561 m!2337641))

(assert (=> b!1904961 d!582752))

(declare-fun d!582754 () Bool)

(declare-fun e!1217158 () Bool)

(assert (=> d!582754 e!1217158))

(declare-fun res!850952 () Bool)

(assert (=> d!582754 (=> (not res!850952) (not e!1217158))))

(declare-fun lt!728623 () List!21543)

(assert (=> d!582754 (= res!850952 (= (content!3142 lt!728623) (set.union (content!3142 lt!728438) (content!3142 lt!728429))))))

(declare-fun e!1217159 () List!21543)

(assert (=> d!582754 (= lt!728623 e!1217159)))

(declare-fun c!310426 () Bool)

(assert (=> d!582754 (= c!310426 (is-Nil!21461 lt!728438))))

(assert (=> d!582754 (= (++!5766 lt!728438 lt!728429) lt!728623)))

(declare-fun b!1905566 () Bool)

(declare-fun res!850953 () Bool)

(assert (=> b!1905566 (=> (not res!850953) (not e!1217158))))

(assert (=> b!1905566 (= res!850953 (= (size!16931 lt!728623) (+ (size!16931 lt!728438) (size!16931 lt!728429))))))

(declare-fun b!1905567 () Bool)

(assert (=> b!1905567 (= e!1217158 (or (not (= lt!728429 Nil!21461)) (= lt!728623 lt!728438)))))

(declare-fun b!1905565 () Bool)

(assert (=> b!1905565 (= e!1217159 (Cons!21461 (h!26862 lt!728438) (++!5766 (t!177356 lt!728438) lt!728429)))))

(declare-fun b!1905564 () Bool)

(assert (=> b!1905564 (= e!1217159 lt!728429)))

(assert (= (and d!582754 c!310426) b!1905564))

(assert (= (and d!582754 (not c!310426)) b!1905565))

(assert (= (and d!582754 res!850952) b!1905566))

(assert (= (and b!1905566 res!850953) b!1905567))

(declare-fun m!2337643 () Bool)

(assert (=> d!582754 m!2337643))

(declare-fun m!2337645 () Bool)

(assert (=> d!582754 m!2337645))

(assert (=> d!582754 m!2337249))

(declare-fun m!2337647 () Bool)

(assert (=> b!1905566 m!2337647))

(declare-fun m!2337649 () Bool)

(assert (=> b!1905566 m!2337649))

(assert (=> b!1905566 m!2337253))

(declare-fun m!2337651 () Bool)

(assert (=> b!1905565 m!2337651))

(assert (=> b!1904961 d!582754))

(declare-fun d!582756 () Bool)

(declare-fun e!1217160 () Bool)

(assert (=> d!582756 e!1217160))

(declare-fun res!850954 () Bool)

(assert (=> d!582756 (=> (not res!850954) (not e!1217160))))

(declare-fun lt!728624 () List!21543)

(assert (=> d!582756 (= res!850954 (= (content!3142 lt!728624) (set.union (content!3142 lt!728437) (content!3142 lt!728438))))))

(declare-fun e!1217161 () List!21543)

(assert (=> d!582756 (= lt!728624 e!1217161)))

(declare-fun c!310427 () Bool)

(assert (=> d!582756 (= c!310427 (is-Nil!21461 lt!728437))))

(assert (=> d!582756 (= (++!5766 lt!728437 lt!728438) lt!728624)))

(declare-fun b!1905570 () Bool)

(declare-fun res!850955 () Bool)

(assert (=> b!1905570 (=> (not res!850955) (not e!1217160))))

(assert (=> b!1905570 (= res!850955 (= (size!16931 lt!728624) (+ (size!16931 lt!728437) (size!16931 lt!728438))))))

(declare-fun b!1905571 () Bool)

(assert (=> b!1905571 (= e!1217160 (or (not (= lt!728438 Nil!21461)) (= lt!728624 lt!728437)))))

(declare-fun b!1905569 () Bool)

(assert (=> b!1905569 (= e!1217161 (Cons!21461 (h!26862 lt!728437) (++!5766 (t!177356 lt!728437) lt!728438)))))

(declare-fun b!1905568 () Bool)

(assert (=> b!1905568 (= e!1217161 lt!728438)))

(assert (= (and d!582756 c!310427) b!1905568))

(assert (= (and d!582756 (not c!310427)) b!1905569))

(assert (= (and d!582756 res!850954) b!1905570))

(assert (= (and b!1905570 res!850955) b!1905571))

(declare-fun m!2337653 () Bool)

(assert (=> d!582756 m!2337653))

(assert (=> d!582756 m!2337247))

(assert (=> d!582756 m!2337645))

(declare-fun m!2337655 () Bool)

(assert (=> b!1905570 m!2337655))

(assert (=> b!1905570 m!2337201))

(assert (=> b!1905570 m!2337649))

(declare-fun m!2337657 () Bool)

(assert (=> b!1905569 m!2337657))

(assert (=> b!1904961 d!582756))

(declare-fun d!582758 () Bool)

(declare-fun c!310429 () Bool)

(assert (=> d!582758 (= c!310429 (is-IntegerValue!11871 (value!120491 (h!26863 tokens!598))))))

(declare-fun e!1217163 () Bool)

(assert (=> d!582758 (= (inv!21 (value!120491 (h!26863 tokens!598))) e!1217163)))

(declare-fun b!1905572 () Bool)

(declare-fun res!850956 () Bool)

(declare-fun e!1217162 () Bool)

(assert (=> b!1905572 (=> res!850956 e!1217162)))

(assert (=> b!1905572 (= res!850956 (not (is-IntegerValue!11873 (value!120491 (h!26863 tokens!598)))))))

(declare-fun e!1217164 () Bool)

(assert (=> b!1905572 (= e!1217164 e!1217162)))

(declare-fun b!1905573 () Bool)

(assert (=> b!1905573 (= e!1217162 (inv!15 (value!120491 (h!26863 tokens!598))))))

(declare-fun b!1905574 () Bool)

(assert (=> b!1905574 (= e!1217163 e!1217164)))

(declare-fun c!310428 () Bool)

(assert (=> b!1905574 (= c!310428 (is-IntegerValue!11872 (value!120491 (h!26863 tokens!598))))))

(declare-fun b!1905575 () Bool)

(assert (=> b!1905575 (= e!1217163 (inv!16 (value!120491 (h!26863 tokens!598))))))

(declare-fun b!1905576 () Bool)

(assert (=> b!1905576 (= e!1217164 (inv!17 (value!120491 (h!26863 tokens!598))))))

(assert (= (and d!582758 c!310429) b!1905575))

(assert (= (and d!582758 (not c!310429)) b!1905574))

(assert (= (and b!1905574 c!310428) b!1905576))

(assert (= (and b!1905574 (not c!310428)) b!1905572))

(assert (= (and b!1905572 (not res!850956)) b!1905573))

(declare-fun m!2337659 () Bool)

(assert (=> b!1905573 m!2337659))

(declare-fun m!2337661 () Bool)

(assert (=> b!1905575 m!2337661))

(declare-fun m!2337663 () Bool)

(assert (=> b!1905576 m!2337663))

(assert (=> b!1904957 d!582758))

(declare-fun d!582760 () Bool)

(assert (=> d!582760 (= (inv!28558 (tag!4251 (h!26864 rules!3198))) (= (mod (str.len (value!120490 (tag!4251 (h!26864 rules!3198)))) 2) 0))))

(assert (=> b!1904958 d!582760))

(declare-fun d!582762 () Bool)

(declare-fun res!850957 () Bool)

(declare-fun e!1217165 () Bool)

(assert (=> d!582762 (=> (not res!850957) (not e!1217165))))

(assert (=> d!582762 (= res!850957 (semiInverseModEq!1542 (toChars!5301 (transformation!3821 (h!26864 rules!3198))) (toValue!5442 (transformation!3821 (h!26864 rules!3198)))))))

(assert (=> d!582762 (= (inv!28561 (transformation!3821 (h!26864 rules!3198))) e!1217165)))

(declare-fun b!1905577 () Bool)

(assert (=> b!1905577 (= e!1217165 (equivClasses!1469 (toChars!5301 (transformation!3821 (h!26864 rules!3198))) (toValue!5442 (transformation!3821 (h!26864 rules!3198)))))))

(assert (= (and d!582762 res!850957) b!1905577))

(declare-fun m!2337665 () Bool)

(assert (=> d!582762 m!2337665))

(declare-fun m!2337667 () Bool)

(assert (=> b!1905577 m!2337667))

(assert (=> b!1904958 d!582762))

(declare-fun b!1905591 () Bool)

(declare-fun b_free!53661 () Bool)

(declare-fun b_next!54365 () Bool)

(assert (=> b!1905591 (= b_free!53661 (not b_next!54365))))

(declare-fun t!177414 () Bool)

(declare-fun tb!116399 () Bool)

(assert (=> (and b!1905591 (= (toValue!5442 (transformation!3821 (rule!6016 (h!26863 (t!177357 tokens!598))))) (toValue!5442 (transformation!3821 (rule!6016 (h!26863 tokens!598))))) t!177414) tb!116399))

(declare-fun result!140710 () Bool)

(assert (= result!140710 result!140680))

(assert (=> d!582652 t!177414))

(assert (=> d!582664 t!177414))

(declare-fun t!177416 () Bool)

(declare-fun tb!116401 () Bool)

(assert (=> (and b!1905591 (= (toValue!5442 (transformation!3821 (rule!6016 (h!26863 (t!177357 tokens!598))))) (toValue!5442 (transformation!3821 (rule!6016 (h!26863 tokens!598))))) t!177416) tb!116401))

(declare-fun result!140712 () Bool)

(assert (= result!140712 result!140688))

(assert (=> d!582664 t!177416))

(declare-fun tp!544070 () Bool)

(declare-fun b_and!147943 () Bool)

(assert (=> b!1905591 (= tp!544070 (and (=> t!177414 result!140710) (=> t!177416 result!140712) b_and!147943))))

(declare-fun b_free!53663 () Bool)

(declare-fun b_next!54367 () Bool)

(assert (=> b!1905591 (= b_free!53663 (not b_next!54367))))

(declare-fun t!177418 () Bool)

(declare-fun tb!116403 () Bool)

(assert (=> (and b!1905591 (= (toChars!5301 (transformation!3821 (rule!6016 (h!26863 (t!177357 tokens!598))))) (toChars!5301 (transformation!3821 (rule!6016 (h!26863 tokens!598))))) t!177418) tb!116403))

(declare-fun result!140714 () Bool)

(assert (= result!140714 result!140674))

(assert (=> d!582652 t!177418))

(declare-fun t!177420 () Bool)

(declare-fun tb!116405 () Bool)

(assert (=> (and b!1905591 (= (toChars!5301 (transformation!3821 (rule!6016 (h!26863 (t!177357 tokens!598))))) (toChars!5301 (transformation!3821 (rule!6016 separatorToken!354)))) t!177420) tb!116405))

(declare-fun result!140716 () Bool)

(assert (= result!140716 result!140668))

(assert (=> d!582644 t!177420))

(declare-fun t!177422 () Bool)

(declare-fun tb!116407 () Bool)

(assert (=> (and b!1905591 (= (toChars!5301 (transformation!3821 (rule!6016 (h!26863 (t!177357 tokens!598))))) (toChars!5301 (transformation!3821 (rule!6016 (h!26863 tokens!598))))) t!177422) tb!116407))

(declare-fun result!140718 () Bool)

(assert (= result!140718 result!140660))

(assert (=> b!1905058 t!177422))

(assert (=> d!582674 t!177422))

(assert (=> b!1905142 t!177420))

(declare-fun b_and!147945 () Bool)

(declare-fun tp!544073 () Bool)

(assert (=> b!1905591 (= tp!544073 (and (=> t!177422 result!140718) (=> t!177418 result!140714) (=> t!177420 result!140716) b_and!147945))))

(declare-fun e!1217179 () Bool)

(assert (=> b!1904965 (= tp!544002 e!1217179)))

(declare-fun tp!544074 () Bool)

(declare-fun e!1217181 () Bool)

(declare-fun e!1217178 () Bool)

(declare-fun b!1905590 () Bool)

(assert (=> b!1905590 (= e!1217178 (and tp!544074 (inv!28558 (tag!4251 (rule!6016 (h!26863 (t!177357 tokens!598))))) (inv!28561 (transformation!3821 (rule!6016 (h!26863 (t!177357 tokens!598))))) e!1217181))))

(assert (=> b!1905591 (= e!1217181 (and tp!544070 tp!544073))))

(declare-fun e!1217180 () Bool)

(declare-fun tp!544071 () Bool)

(declare-fun b!1905589 () Bool)

(assert (=> b!1905589 (= e!1217180 (and (inv!21 (value!120491 (h!26863 (t!177357 tokens!598)))) e!1217178 tp!544071))))

(declare-fun b!1905588 () Bool)

(declare-fun tp!544072 () Bool)

(assert (=> b!1905588 (= e!1217179 (and (inv!28562 (h!26863 (t!177357 tokens!598))) e!1217180 tp!544072))))

(assert (= b!1905590 b!1905591))

(assert (= b!1905589 b!1905590))

(assert (= b!1905588 b!1905589))

(assert (= (and b!1904965 (is-Cons!21462 (t!177357 tokens!598))) b!1905588))

(declare-fun m!2337669 () Bool)

(assert (=> b!1905590 m!2337669))

(declare-fun m!2337671 () Bool)

(assert (=> b!1905590 m!2337671))

(declare-fun m!2337673 () Bool)

(assert (=> b!1905589 m!2337673))

(declare-fun m!2337675 () Bool)

(assert (=> b!1905588 m!2337675))

(declare-fun b!1905596 () Bool)

(declare-fun e!1217186 () Bool)

(declare-fun tp_is_empty!9091 () Bool)

(declare-fun tp!544077 () Bool)

(assert (=> b!1905596 (= e!1217186 (and tp_is_empty!9091 tp!544077))))

(assert (=> b!1904952 (= tp!544006 e!1217186)))

(assert (= (and b!1904952 (is-Cons!21461 (originalCharacters!4628 separatorToken!354))) b!1905596))

(declare-fun b!1905607 () Bool)

(declare-fun e!1217189 () Bool)

(assert (=> b!1905607 (= e!1217189 tp_is_empty!9091)))

(declare-fun b!1905608 () Bool)

(declare-fun tp!544088 () Bool)

(declare-fun tp!544090 () Bool)

(assert (=> b!1905608 (= e!1217189 (and tp!544088 tp!544090))))

(declare-fun b!1905609 () Bool)

(declare-fun tp!544092 () Bool)

(assert (=> b!1905609 (= e!1217189 tp!544092)))

(assert (=> b!1904953 (= tp!544005 e!1217189)))

(declare-fun b!1905610 () Bool)

(declare-fun tp!544091 () Bool)

(declare-fun tp!544089 () Bool)

(assert (=> b!1905610 (= e!1217189 (and tp!544091 tp!544089))))

(assert (= (and b!1904953 (is-ElementMatch!5246 (regex!3821 (rule!6016 (h!26863 tokens!598))))) b!1905607))

(assert (= (and b!1904953 (is-Concat!9204 (regex!3821 (rule!6016 (h!26863 tokens!598))))) b!1905608))

(assert (= (and b!1904953 (is-Star!5246 (regex!3821 (rule!6016 (h!26863 tokens!598))))) b!1905609))

(assert (= (and b!1904953 (is-Union!5246 (regex!3821 (rule!6016 (h!26863 tokens!598))))) b!1905610))

(declare-fun b!1905611 () Bool)

(declare-fun e!1217190 () Bool)

(assert (=> b!1905611 (= e!1217190 tp_is_empty!9091)))

(declare-fun b!1905612 () Bool)

(declare-fun tp!544093 () Bool)

(declare-fun tp!544095 () Bool)

(assert (=> b!1905612 (= e!1217190 (and tp!544093 tp!544095))))

(declare-fun b!1905613 () Bool)

(declare-fun tp!544097 () Bool)

(assert (=> b!1905613 (= e!1217190 tp!544097)))

(assert (=> b!1904959 (= tp!544000 e!1217190)))

(declare-fun b!1905614 () Bool)

(declare-fun tp!544096 () Bool)

(declare-fun tp!544094 () Bool)

(assert (=> b!1905614 (= e!1217190 (and tp!544096 tp!544094))))

(assert (= (and b!1904959 (is-ElementMatch!5246 (regex!3821 (rule!6016 separatorToken!354)))) b!1905611))

(assert (= (and b!1904959 (is-Concat!9204 (regex!3821 (rule!6016 separatorToken!354)))) b!1905612))

(assert (= (and b!1904959 (is-Star!5246 (regex!3821 (rule!6016 separatorToken!354)))) b!1905613))

(assert (= (and b!1904959 (is-Union!5246 (regex!3821 (rule!6016 separatorToken!354)))) b!1905614))

(declare-fun b!1905625 () Bool)

(declare-fun b_free!53665 () Bool)

(declare-fun b_next!54369 () Bool)

(assert (=> b!1905625 (= b_free!53665 (not b_next!54369))))

(declare-fun t!177424 () Bool)

(declare-fun tb!116409 () Bool)

(assert (=> (and b!1905625 (= (toValue!5442 (transformation!3821 (h!26864 (t!177358 rules!3198)))) (toValue!5442 (transformation!3821 (rule!6016 (h!26863 tokens!598))))) t!177424) tb!116409))

(declare-fun result!140726 () Bool)

(assert (= result!140726 result!140680))

(assert (=> d!582652 t!177424))

(assert (=> d!582664 t!177424))

(declare-fun tb!116411 () Bool)

(declare-fun t!177426 () Bool)

(assert (=> (and b!1905625 (= (toValue!5442 (transformation!3821 (h!26864 (t!177358 rules!3198)))) (toValue!5442 (transformation!3821 (rule!6016 (h!26863 tokens!598))))) t!177426) tb!116411))

(declare-fun result!140728 () Bool)

(assert (= result!140728 result!140688))

(assert (=> d!582664 t!177426))

(declare-fun b_and!147947 () Bool)

(declare-fun tp!544108 () Bool)

(assert (=> b!1905625 (= tp!544108 (and (=> t!177424 result!140726) (=> t!177426 result!140728) b_and!147947))))

(declare-fun b_free!53667 () Bool)

(declare-fun b_next!54371 () Bool)

(assert (=> b!1905625 (= b_free!53667 (not b_next!54371))))

(declare-fun tb!116413 () Bool)

(declare-fun t!177428 () Bool)

(assert (=> (and b!1905625 (= (toChars!5301 (transformation!3821 (h!26864 (t!177358 rules!3198)))) (toChars!5301 (transformation!3821 (rule!6016 (h!26863 tokens!598))))) t!177428) tb!116413))

(declare-fun result!140730 () Bool)

(assert (= result!140730 result!140674))

(assert (=> d!582652 t!177428))

(declare-fun t!177430 () Bool)

(declare-fun tb!116415 () Bool)

(assert (=> (and b!1905625 (= (toChars!5301 (transformation!3821 (h!26864 (t!177358 rules!3198)))) (toChars!5301 (transformation!3821 (rule!6016 separatorToken!354)))) t!177430) tb!116415))

(declare-fun result!140732 () Bool)

(assert (= result!140732 result!140668))

(assert (=> d!582644 t!177430))

(declare-fun t!177432 () Bool)

(declare-fun tb!116417 () Bool)

(assert (=> (and b!1905625 (= (toChars!5301 (transformation!3821 (h!26864 (t!177358 rules!3198)))) (toChars!5301 (transformation!3821 (rule!6016 (h!26863 tokens!598))))) t!177432) tb!116417))

(declare-fun result!140734 () Bool)

(assert (= result!140734 result!140660))

(assert (=> b!1905058 t!177432))

(assert (=> d!582674 t!177432))

(assert (=> b!1905142 t!177430))

(declare-fun tp!544106 () Bool)

(declare-fun b_and!147949 () Bool)

(assert (=> b!1905625 (= tp!544106 (and (=> t!177432 result!140734) (=> t!177428 result!140730) (=> t!177430 result!140732) b_and!147949))))

(declare-fun e!1217200 () Bool)

(assert (=> b!1905625 (= e!1217200 (and tp!544108 tp!544106))))

(declare-fun tp!544107 () Bool)

(declare-fun e!1217199 () Bool)

(declare-fun b!1905624 () Bool)

(assert (=> b!1905624 (= e!1217199 (and tp!544107 (inv!28558 (tag!4251 (h!26864 (t!177358 rules!3198)))) (inv!28561 (transformation!3821 (h!26864 (t!177358 rules!3198)))) e!1217200))))

(declare-fun b!1905623 () Bool)

(declare-fun e!1217202 () Bool)

(declare-fun tp!544109 () Bool)

(assert (=> b!1905623 (= e!1217202 (and e!1217199 tp!544109))))

(assert (=> b!1904956 (= tp!543999 e!1217202)))

(assert (= b!1905624 b!1905625))

(assert (= b!1905623 b!1905624))

(assert (= (and b!1904956 (is-Cons!21463 (t!177358 rules!3198))) b!1905623))

(declare-fun m!2337677 () Bool)

(assert (=> b!1905624 m!2337677))

(declare-fun m!2337679 () Bool)

(assert (=> b!1905624 m!2337679))

(declare-fun b!1905626 () Bool)

(declare-fun e!1217203 () Bool)

(declare-fun tp!544110 () Bool)

(assert (=> b!1905626 (= e!1217203 (and tp_is_empty!9091 tp!544110))))

(assert (=> b!1904957 (= tp!544007 e!1217203)))

(assert (= (and b!1904957 (is-Cons!21461 (originalCharacters!4628 (h!26863 tokens!598)))) b!1905626))

(declare-fun b!1905627 () Bool)

(declare-fun e!1217204 () Bool)

(assert (=> b!1905627 (= e!1217204 tp_is_empty!9091)))

(declare-fun b!1905628 () Bool)

(declare-fun tp!544111 () Bool)

(declare-fun tp!544113 () Bool)

(assert (=> b!1905628 (= e!1217204 (and tp!544111 tp!544113))))

(declare-fun b!1905629 () Bool)

(declare-fun tp!544115 () Bool)

(assert (=> b!1905629 (= e!1217204 tp!544115)))

(assert (=> b!1904958 (= tp!544004 e!1217204)))

(declare-fun b!1905630 () Bool)

(declare-fun tp!544114 () Bool)

(declare-fun tp!544112 () Bool)

(assert (=> b!1905630 (= e!1217204 (and tp!544114 tp!544112))))

(assert (= (and b!1904958 (is-ElementMatch!5246 (regex!3821 (h!26864 rules!3198)))) b!1905627))

(assert (= (and b!1904958 (is-Concat!9204 (regex!3821 (h!26864 rules!3198)))) b!1905628))

(assert (= (and b!1904958 (is-Star!5246 (regex!3821 (h!26864 rules!3198)))) b!1905629))

(assert (= (and b!1904958 (is-Union!5246 (regex!3821 (h!26864 rules!3198)))) b!1905630))

(declare-fun b_lambda!62905 () Bool)

(assert (= b_lambda!62889 (or (and b!1905625 b_free!53667 (= (toChars!5301 (transformation!3821 (h!26864 (t!177358 rules!3198)))) (toChars!5301 (transformation!3821 (rule!6016 (h!26863 tokens!598)))))) (and b!1904943 b_free!53647 (= (toChars!5301 (transformation!3821 (h!26864 rules!3198))) (toChars!5301 (transformation!3821 (rule!6016 (h!26863 tokens!598)))))) (and b!1904942 b_free!53639 (= (toChars!5301 (transformation!3821 (rule!6016 separatorToken!354))) (toChars!5301 (transformation!3821 (rule!6016 (h!26863 tokens!598)))))) (and b!1905591 b_free!53663 (= (toChars!5301 (transformation!3821 (rule!6016 (h!26863 (t!177357 tokens!598))))) (toChars!5301 (transformation!3821 (rule!6016 (h!26863 tokens!598)))))) (and b!1904950 b_free!53643) b_lambda!62905)))

(declare-fun b_lambda!62907 () Bool)

(assert (= b_lambda!62883 (or (and b!1905625 b_free!53667 (= (toChars!5301 (transformation!3821 (h!26864 (t!177358 rules!3198)))) (toChars!5301 (transformation!3821 (rule!6016 (h!26863 tokens!598)))))) (and b!1904943 b_free!53647 (= (toChars!5301 (transformation!3821 (h!26864 rules!3198))) (toChars!5301 (transformation!3821 (rule!6016 (h!26863 tokens!598)))))) (and b!1904942 b_free!53639 (= (toChars!5301 (transformation!3821 (rule!6016 separatorToken!354))) (toChars!5301 (transformation!3821 (rule!6016 (h!26863 tokens!598)))))) (and b!1905591 b_free!53663 (= (toChars!5301 (transformation!3821 (rule!6016 (h!26863 (t!177357 tokens!598))))) (toChars!5301 (transformation!3821 (rule!6016 (h!26863 tokens!598)))))) (and b!1904950 b_free!53643) b_lambda!62907)))

(declare-fun b_lambda!62909 () Bool)

(assert (= b_lambda!62881 (or b!1904964 b_lambda!62909)))

(declare-fun bs!413812 () Bool)

(declare-fun d!582764 () Bool)

(assert (= bs!413812 (and d!582764 b!1904964)))

(assert (=> bs!413812 (= (dynLambda!10450 lambda!74440 (h!26863 tokens!598)) (not (isSeparator!3821 (rule!6016 (h!26863 tokens!598)))))))

(assert (=> b!1905049 d!582764))

(declare-fun b_lambda!62911 () Bool)

(assert (= b_lambda!62887 (or (and b!1905591 b_free!53663 (= (toChars!5301 (transformation!3821 (rule!6016 (h!26863 (t!177357 tokens!598))))) (toChars!5301 (transformation!3821 (rule!6016 separatorToken!354))))) (and b!1905625 b_free!53667 (= (toChars!5301 (transformation!3821 (h!26864 (t!177358 rules!3198)))) (toChars!5301 (transformation!3821 (rule!6016 separatorToken!354))))) (and b!1904942 b_free!53639) (and b!1904943 b_free!53647 (= (toChars!5301 (transformation!3821 (h!26864 rules!3198))) (toChars!5301 (transformation!3821 (rule!6016 separatorToken!354))))) (and b!1904950 b_free!53643 (= (toChars!5301 (transformation!3821 (rule!6016 (h!26863 tokens!598)))) (toChars!5301 (transformation!3821 (rule!6016 separatorToken!354))))) b_lambda!62911)))

(declare-fun b_lambda!62913 () Bool)

(assert (= b_lambda!62885 (or (and b!1905591 b_free!53663 (= (toChars!5301 (transformation!3821 (rule!6016 (h!26863 (t!177357 tokens!598))))) (toChars!5301 (transformation!3821 (rule!6016 separatorToken!354))))) (and b!1905625 b_free!53667 (= (toChars!5301 (transformation!3821 (h!26864 (t!177358 rules!3198)))) (toChars!5301 (transformation!3821 (rule!6016 separatorToken!354))))) (and b!1904942 b_free!53639) (and b!1904943 b_free!53647 (= (toChars!5301 (transformation!3821 (h!26864 rules!3198))) (toChars!5301 (transformation!3821 (rule!6016 separatorToken!354))))) (and b!1904950 b_free!53643 (= (toChars!5301 (transformation!3821 (rule!6016 (h!26863 tokens!598)))) (toChars!5301 (transformation!3821 (rule!6016 separatorToken!354))))) b_lambda!62913)))

(declare-fun b_lambda!62915 () Bool)

(assert (= b_lambda!62899 (or (and b!1905625 b_free!53667 (= (toChars!5301 (transformation!3821 (h!26864 (t!177358 rules!3198)))) (toChars!5301 (transformation!3821 (rule!6016 (h!26863 tokens!598)))))) (and b!1904943 b_free!53647 (= (toChars!5301 (transformation!3821 (h!26864 rules!3198))) (toChars!5301 (transformation!3821 (rule!6016 (h!26863 tokens!598)))))) (and b!1904942 b_free!53639 (= (toChars!5301 (transformation!3821 (rule!6016 separatorToken!354))) (toChars!5301 (transformation!3821 (rule!6016 (h!26863 tokens!598)))))) (and b!1905591 b_free!53663 (= (toChars!5301 (transformation!3821 (rule!6016 (h!26863 (t!177357 tokens!598))))) (toChars!5301 (transformation!3821 (rule!6016 (h!26863 tokens!598)))))) (and b!1904950 b_free!53643) b_lambda!62915)))

(declare-fun b_lambda!62917 () Bool)

(assert (= b_lambda!62895 (or (and b!1905591 b_free!53661 (= (toValue!5442 (transformation!3821 (rule!6016 (h!26863 (t!177357 tokens!598))))) (toValue!5442 (transformation!3821 (rule!6016 (h!26863 tokens!598)))))) (and b!1904943 b_free!53645 (= (toValue!5442 (transformation!3821 (h!26864 rules!3198))) (toValue!5442 (transformation!3821 (rule!6016 (h!26863 tokens!598)))))) (and b!1904950 b_free!53641) (and b!1905625 b_free!53665 (= (toValue!5442 (transformation!3821 (h!26864 (t!177358 rules!3198)))) (toValue!5442 (transformation!3821 (rule!6016 (h!26863 tokens!598)))))) (and b!1904942 b_free!53637 (= (toValue!5442 (transformation!3821 (rule!6016 separatorToken!354))) (toValue!5442 (transformation!3821 (rule!6016 (h!26863 tokens!598)))))) b_lambda!62917)))

(declare-fun b_lambda!62919 () Bool)

(assert (= b_lambda!62891 (or (and b!1905591 b_free!53661 (= (toValue!5442 (transformation!3821 (rule!6016 (h!26863 (t!177357 tokens!598))))) (toValue!5442 (transformation!3821 (rule!6016 (h!26863 tokens!598)))))) (and b!1904943 b_free!53645 (= (toValue!5442 (transformation!3821 (h!26864 rules!3198))) (toValue!5442 (transformation!3821 (rule!6016 (h!26863 tokens!598)))))) (and b!1904950 b_free!53641) (and b!1905625 b_free!53665 (= (toValue!5442 (transformation!3821 (h!26864 (t!177358 rules!3198)))) (toValue!5442 (transformation!3821 (rule!6016 (h!26863 tokens!598)))))) (and b!1904942 b_free!53637 (= (toValue!5442 (transformation!3821 (rule!6016 separatorToken!354))) (toValue!5442 (transformation!3821 (rule!6016 (h!26863 tokens!598)))))) b_lambda!62919)))

(declare-fun b_lambda!62921 () Bool)

(assert (= b_lambda!62893 (or (and b!1905591 b_free!53661 (= (toValue!5442 (transformation!3821 (rule!6016 (h!26863 (t!177357 tokens!598))))) (toValue!5442 (transformation!3821 (rule!6016 (h!26863 tokens!598)))))) (and b!1904943 b_free!53645 (= (toValue!5442 (transformation!3821 (h!26864 rules!3198))) (toValue!5442 (transformation!3821 (rule!6016 (h!26863 tokens!598)))))) (and b!1904950 b_free!53641) (and b!1905625 b_free!53665 (= (toValue!5442 (transformation!3821 (h!26864 (t!177358 rules!3198)))) (toValue!5442 (transformation!3821 (rule!6016 (h!26863 tokens!598)))))) (and b!1904942 b_free!53637 (= (toValue!5442 (transformation!3821 (rule!6016 separatorToken!354))) (toValue!5442 (transformation!3821 (rule!6016 (h!26863 tokens!598)))))) b_lambda!62921)))

(push 1)

(assert (not b!1905260))

(assert (not d!582618))

(assert (not b!1905569))

(assert (not tb!116369))

(assert (not b!1905147))

(assert (not b!1905270))

(assert (not b!1905630))

(assert (not b!1905173))

(assert (not b_lambda!62913))

(assert (not bm!117330))

(assert (not bm!117376))

(assert (not b!1905118))

(assert (not d!582674))

(assert (not b!1905053))

(assert (not d!582684))

(assert (not d!582636))

(assert (not b_lambda!62917))

(assert (not b_next!54341))

(assert (not b!1905623))

(assert (not d!582652))

(assert b_and!147925)

(assert (not b!1905207))

(assert (not b_next!54345))

(assert (not b!1905522))

(assert (not b!1905613))

(assert (not b!1905608))

(assert (not b_next!54349))

(assert (not b!1905205))

(assert (not b!1905142))

(assert (not bm!117374))

(assert (not b!1905275))

(assert (not bm!117341))

(assert (not b!1905111))

(assert (not b!1905116))

(assert (not bm!117346))

(assert (not bm!117327))

(assert (not b!1905179))

(assert b_and!147927)

(assert (not b_lambda!62921))

(assert (not b_next!54369))

(assert (not b!1905523))

(assert (not b!1905534))

(assert (not b!1905577))

(assert (not d!582662))

(assert (not b_lambda!62911))

(assert (not b!1905220))

(assert (not b!1905276))

(assert (not d!582648))

(assert (not b!1905113))

(assert (not b!1905566))

(assert (not b!1905614))

(assert (not b!1905235))

(assert b_and!147943)

(assert (not b_next!54343))

(assert b_and!147929)

(assert b_and!147921)

(assert (not b!1905257))

(assert (not tb!116357))

(assert (not b_lambda!62909))

(assert (not b_next!54347))

(assert (not b!1905269))

(assert (not b!1905095))

(assert (not d!582756))

(assert (not d!582624))

(assert (not d!582682))

(assert (not b!1905143))

(assert (not b!1905144))

(assert (not b!1905612))

(assert (not b!1905172))

(assert (not d!582754))

(assert (not b!1905573))

(assert (not b!1905272))

(assert (not b!1905596))

(assert (not b!1905140))

(assert (not d!582628))

(assert (not b!1905119))

(assert (not b!1905258))

(assert (not b!1905093))

(assert (not b!1905277))

(assert (not d!582658))

(assert (not b_lambda!62915))

(assert b_and!147919)

(assert (not b!1905590))

(assert (not b!1905521))

(assert (not b!1905570))

(assert (not b!1905561))

(assert (not tb!116363))

(assert (not b!1905397))

(assert (not b!1905115))

(assert (not d!582744))

(assert (not b!1905610))

(assert (not b!1905177))

(assert (not d!582626))

(assert (not d!582656))

(assert (not b!1905399))

(assert (not d!582612))

(assert (not b!1905141))

(assert (not d!582602))

(assert (not b!1905326))

(assert (not tb!116375))

(assert (not d!582692))

(assert (not bm!117326))

(assert (not b!1905211))

(assert (not b!1905398))

(assert (not d!582742))

(assert (not b!1905588))

(assert (not b!1905064))

(assert (not b!1905178))

(assert (not b!1905562))

(assert (not b!1905325))

(assert (not b!1905355))

(assert (not b!1905531))

(assert b_and!147923)

(assert (not b!1905099))

(assert (not b_next!54365))

(assert (not b_lambda!62919))

(assert tp_is_empty!9091)

(assert (not b!1905628))

(assert (not b!1905058))

(assert (not b_lambda!62907))

(assert (not b!1905533))

(assert (not d!582646))

(assert (not b!1905363))

(assert (not b!1905629))

(assert (not d!582644))

(assert (not d!582750))

(assert (not b!1905096))

(assert (not b!1905575))

(assert (not b_lambda!62905))

(assert (not b!1905098))

(assert (not b!1905252))

(assert (not b!1905356))

(assert (not b!1905122))

(assert (not d!582650))

(assert (not d!582600))

(assert (not b!1905624))

(assert (not d!582606))

(assert (not b!1905565))

(assert b_and!147947)

(assert (not b!1905112))

(assert (not b_next!54371))

(assert (not d!582762))

(assert (not tb!116381))

(assert (not d!582642))

(assert (not d!582654))

(assert (not b!1905210))

(assert (not bm!117345))

(assert (not d!582672))

(assert (not b!1905059))

(assert (not b!1905576))

(assert b_and!147945)

(assert (not d!582752))

(assert (not bm!117377))

(assert (not b_next!54351))

(assert (not b!1905626))

(assert b_and!147949)

(assert (not b!1905176))

(assert (not b!1905274))

(assert (not b!1905609))

(assert (not b!1905050))

(assert (not b!1905138))

(assert (not b!1905102))

(assert (not b!1905175))

(assert (not d!582678))

(assert (not bm!117342))

(assert (not b!1905273))

(assert (not b!1905180))

(assert (not b!1905251))

(assert (not b!1905254))

(assert (not b_next!54367))

(assert (not d!582664))

(assert (not b!1905589))

(assert (not b!1905266))

(assert (not b!1905234))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!54349))

(assert b_and!147927)

(assert (not b_next!54369))

(assert (not b_next!54347))

(assert b_and!147919)

(assert b_and!147949)

(assert (not b_next!54367))

(assert (not b_next!54345))

(assert (not b_next!54341))

(assert b_and!147925)

(assert b_and!147943)

(assert (not b_next!54343))

(assert b_and!147929)

(assert b_and!147921)

(assert (not b_next!54365))

(assert b_and!147923)

(assert b_and!147947)

(assert (not b_next!54371))

(assert b_and!147945)

(assert (not b_next!54351))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!582790 () Bool)

(declare-fun c!310456 () Bool)

(assert (=> d!582790 (= c!310456 (is-IntegerValue!11871 (value!120491 (h!26863 (t!177357 tokens!598)))))))

(declare-fun e!1217294 () Bool)

(assert (=> d!582790 (= (inv!21 (value!120491 (h!26863 (t!177357 tokens!598)))) e!1217294)))

(declare-fun b!1905763 () Bool)

(declare-fun res!850977 () Bool)

(declare-fun e!1217293 () Bool)

(assert (=> b!1905763 (=> res!850977 e!1217293)))

(assert (=> b!1905763 (= res!850977 (not (is-IntegerValue!11873 (value!120491 (h!26863 (t!177357 tokens!598))))))))

(declare-fun e!1217295 () Bool)

(assert (=> b!1905763 (= e!1217295 e!1217293)))

(declare-fun b!1905764 () Bool)

(assert (=> b!1905764 (= e!1217293 (inv!15 (value!120491 (h!26863 (t!177357 tokens!598)))))))

(declare-fun b!1905765 () Bool)

(assert (=> b!1905765 (= e!1217294 e!1217295)))

(declare-fun c!310455 () Bool)

(assert (=> b!1905765 (= c!310455 (is-IntegerValue!11872 (value!120491 (h!26863 (t!177357 tokens!598)))))))

(declare-fun b!1905766 () Bool)

(assert (=> b!1905766 (= e!1217294 (inv!16 (value!120491 (h!26863 (t!177357 tokens!598)))))))

(declare-fun b!1905767 () Bool)

(assert (=> b!1905767 (= e!1217295 (inv!17 (value!120491 (h!26863 (t!177357 tokens!598)))))))

(assert (= (and d!582790 c!310456) b!1905766))

(assert (= (and d!582790 (not c!310456)) b!1905765))

(assert (= (and b!1905765 c!310455) b!1905767))

(assert (= (and b!1905765 (not c!310455)) b!1905763))

(assert (= (and b!1905763 (not res!850977)) b!1905764))

(declare-fun m!2337811 () Bool)

(assert (=> b!1905764 m!2337811))

(declare-fun m!2337813 () Bool)

(assert (=> b!1905766 m!2337813))

(declare-fun m!2337815 () Bool)

(assert (=> b!1905767 m!2337815))

(assert (=> b!1905589 d!582790))

(declare-fun d!582792 () Bool)

(assert (=> d!582792 (= (isDefined!3645 (getRuleFromTag!664 thiss!23328 rules!3198 (tag!4251 (rule!6016 (h!26863 tokens!598))))) (not (isEmpty!13178 (getRuleFromTag!664 thiss!23328 rules!3198 (tag!4251 (rule!6016 (h!26863 tokens!598)))))))))

(declare-fun bs!413819 () Bool)

(assert (= bs!413819 d!582792))

(assert (=> bs!413819 m!2336983))

(declare-fun m!2337817 () Bool)

(assert (=> bs!413819 m!2337817))

(assert (=> d!582658 d!582792))

(assert (=> d!582658 d!582650))

(declare-fun d!582794 () Bool)

(declare-fun e!1217298 () Bool)

(assert (=> d!582794 e!1217298))

(declare-fun res!850982 () Bool)

(assert (=> d!582794 (=> (not res!850982) (not e!1217298))))

(assert (=> d!582794 (= res!850982 (isDefined!3645 (getRuleFromTag!664 thiss!23328 rules!3198 (tag!4251 (rule!6016 (h!26863 tokens!598))))))))

(assert (=> d!582794 true))

(declare-fun _$52!1183 () Unit!35791)

(assert (=> d!582794 (= (choose!11863 thiss!23328 rules!3198 lt!728437 (h!26863 tokens!598)) _$52!1183)))

(declare-fun b!1905772 () Bool)

(declare-fun res!850983 () Bool)

(assert (=> b!1905772 (=> (not res!850983) (not e!1217298))))

(assert (=> b!1905772 (= res!850983 (matchR!2532 (regex!3821 (get!6666 (getRuleFromTag!664 thiss!23328 rules!3198 (tag!4251 (rule!6016 (h!26863 tokens!598)))))) (list!8725 (charsOf!2377 (h!26863 tokens!598)))))))

(declare-fun b!1905773 () Bool)

(assert (=> b!1905773 (= e!1217298 (= (rule!6016 (h!26863 tokens!598)) (get!6666 (getRuleFromTag!664 thiss!23328 rules!3198 (tag!4251 (rule!6016 (h!26863 tokens!598)))))))))

(assert (= (and d!582794 res!850982) b!1905772))

(assert (= (and b!1905772 res!850983) b!1905773))

(assert (=> d!582794 m!2336983))

(assert (=> d!582794 m!2336983))

(assert (=> d!582794 m!2337335))

(assert (=> b!1905772 m!2336983))

(assert (=> b!1905772 m!2337339))

(assert (=> b!1905772 m!2337343))

(assert (=> b!1905772 m!2336983))

(assert (=> b!1905772 m!2337341))

(assert (=> b!1905772 m!2336975))

(assert (=> b!1905772 m!2337339))

(assert (=> b!1905772 m!2336975))

(assert (=> b!1905773 m!2336983))

(assert (=> b!1905773 m!2336983))

(assert (=> b!1905773 m!2337341))

(assert (=> d!582658 d!582794))

(assert (=> d!582658 d!582600))

(declare-fun d!582796 () Bool)

(assert (=> d!582796 (= (isDefined!3646 lt!728508) (not (isEmpty!13179 lt!728508)))))

(declare-fun bs!413820 () Bool)

(assert (= bs!413820 d!582796))

(assert (=> bs!413820 m!2337177))

(assert (=> b!1905177 d!582796))

(declare-fun d!582798 () Bool)

(declare-fun e!1217299 () Bool)

(assert (=> d!582798 e!1217299))

(declare-fun res!850984 () Bool)

(assert (=> d!582798 (=> (not res!850984) (not e!1217299))))

(declare-fun lt!728671 () List!21543)

(assert (=> d!582798 (= res!850984 (= (content!3142 lt!728671) (set.union (content!3142 (ite c!310422 call!117382 call!117381)) (content!3142 (ite c!310422 call!117381 call!117382)))))))

(declare-fun e!1217300 () List!21543)

(assert (=> d!582798 (= lt!728671 e!1217300)))

(declare-fun c!310457 () Bool)

(assert (=> d!582798 (= c!310457 (is-Nil!21461 (ite c!310422 call!117382 call!117381)))))

(assert (=> d!582798 (= (++!5766 (ite c!310422 call!117382 call!117381) (ite c!310422 call!117381 call!117382)) lt!728671)))

(declare-fun b!1905776 () Bool)

(declare-fun res!850985 () Bool)

(assert (=> b!1905776 (=> (not res!850985) (not e!1217299))))

(assert (=> b!1905776 (= res!850985 (= (size!16931 lt!728671) (+ (size!16931 (ite c!310422 call!117382 call!117381)) (size!16931 (ite c!310422 call!117381 call!117382)))))))

(declare-fun b!1905777 () Bool)

(assert (=> b!1905777 (= e!1217299 (or (not (= (ite c!310422 call!117381 call!117382) Nil!21461)) (= lt!728671 (ite c!310422 call!117382 call!117381))))))

(declare-fun b!1905775 () Bool)

(assert (=> b!1905775 (= e!1217300 (Cons!21461 (h!26862 (ite c!310422 call!117382 call!117381)) (++!5766 (t!177356 (ite c!310422 call!117382 call!117381)) (ite c!310422 call!117381 call!117382))))))

(declare-fun b!1905774 () Bool)

(assert (=> b!1905774 (= e!1217300 (ite c!310422 call!117381 call!117382))))

(assert (= (and d!582798 c!310457) b!1905774))

(assert (= (and d!582798 (not c!310457)) b!1905775))

(assert (= (and d!582798 res!850984) b!1905776))

(assert (= (and b!1905776 res!850985) b!1905777))

(declare-fun m!2337819 () Bool)

(assert (=> d!582798 m!2337819))

(declare-fun m!2337821 () Bool)

(assert (=> d!582798 m!2337821))

(declare-fun m!2337823 () Bool)

(assert (=> d!582798 m!2337823))

(declare-fun m!2337825 () Bool)

(assert (=> b!1905776 m!2337825))

(declare-fun m!2337827 () Bool)

(assert (=> b!1905776 m!2337827))

(declare-fun m!2337829 () Bool)

(assert (=> b!1905776 m!2337829))

(declare-fun m!2337831 () Bool)

(assert (=> b!1905775 m!2337831))

(assert (=> bm!117376 d!582798))

(declare-fun d!582800 () Bool)

(assert (=> d!582800 (= (isEmpty!13177 lt!728438) (is-Nil!21461 lt!728438))))

(assert (=> d!582606 d!582800))

(declare-fun b!1905796 () Bool)

(declare-fun e!1217319 () Bool)

(declare-fun e!1217320 () Bool)

(assert (=> b!1905796 (= e!1217319 e!1217320)))

(declare-fun c!310463 () Bool)

(assert (=> b!1905796 (= c!310463 (is-Union!5246 (regex!3821 lt!728427)))))

(declare-fun b!1905797 () Bool)

(declare-fun res!850996 () Bool)

(declare-fun e!1217318 () Bool)

(assert (=> b!1905797 (=> res!850996 e!1217318)))

(assert (=> b!1905797 (= res!850996 (not (is-Concat!9204 (regex!3821 lt!728427))))))

(assert (=> b!1905797 (= e!1217320 e!1217318)))

(declare-fun bm!117400 () Bool)

(declare-fun call!117406 () Bool)

(declare-fun call!117407 () Bool)

(assert (=> bm!117400 (= call!117406 call!117407)))

(declare-fun b!1905798 () Bool)

(declare-fun e!1217321 () Bool)

(assert (=> b!1905798 (= e!1217321 e!1217319)))

(declare-fun c!310462 () Bool)

(assert (=> b!1905798 (= c!310462 (is-Star!5246 (regex!3821 lt!728427)))))

(declare-fun b!1905799 () Bool)

(declare-fun e!1217317 () Bool)

(assert (=> b!1905799 (= e!1217317 call!117407)))

(declare-fun b!1905800 () Bool)

(declare-fun e!1217315 () Bool)

(assert (=> b!1905800 (= e!1217315 call!117406)))

(declare-fun bm!117401 () Bool)

(declare-fun call!117405 () Bool)

(assert (=> bm!117401 (= call!117405 (validRegex!2116 (ite c!310463 (regOne!11005 (regex!3821 lt!728427)) (regOne!11004 (regex!3821 lt!728427)))))))

(declare-fun b!1905801 () Bool)

(declare-fun e!1217316 () Bool)

(assert (=> b!1905801 (= e!1217316 call!117406)))

(declare-fun b!1905802 () Bool)

(declare-fun res!850998 () Bool)

(assert (=> b!1905802 (=> (not res!850998) (not e!1217316))))

(assert (=> b!1905802 (= res!850998 call!117405)))

(assert (=> b!1905802 (= e!1217320 e!1217316)))

(declare-fun d!582802 () Bool)

(declare-fun res!850997 () Bool)

(assert (=> d!582802 (=> res!850997 e!1217321)))

(assert (=> d!582802 (= res!850997 (is-ElementMatch!5246 (regex!3821 lt!728427)))))

(assert (=> d!582802 (= (validRegex!2116 (regex!3821 lt!728427)) e!1217321)))

(declare-fun bm!117402 () Bool)

(assert (=> bm!117402 (= call!117407 (validRegex!2116 (ite c!310462 (reg!5575 (regex!3821 lt!728427)) (ite c!310463 (regTwo!11005 (regex!3821 lt!728427)) (regTwo!11004 (regex!3821 lt!728427))))))))

(declare-fun b!1905803 () Bool)

(assert (=> b!1905803 (= e!1217319 e!1217317)))

(declare-fun res!850999 () Bool)

(assert (=> b!1905803 (= res!850999 (not (nullable!1592 (reg!5575 (regex!3821 lt!728427)))))))

(assert (=> b!1905803 (=> (not res!850999) (not e!1217317))))

(declare-fun b!1905804 () Bool)

(assert (=> b!1905804 (= e!1217318 e!1217315)))

(declare-fun res!851000 () Bool)

(assert (=> b!1905804 (=> (not res!851000) (not e!1217315))))

(assert (=> b!1905804 (= res!851000 call!117405)))

(assert (= (and d!582802 (not res!850997)) b!1905798))

(assert (= (and b!1905798 c!310462) b!1905803))

(assert (= (and b!1905798 (not c!310462)) b!1905796))

(assert (= (and b!1905803 res!850999) b!1905799))

(assert (= (and b!1905796 c!310463) b!1905802))

(assert (= (and b!1905796 (not c!310463)) b!1905797))

(assert (= (and b!1905802 res!850998) b!1905801))

(assert (= (and b!1905797 (not res!850996)) b!1905804))

(assert (= (and b!1905804 res!851000) b!1905800))

(assert (= (or b!1905802 b!1905804) bm!117401))

(assert (= (or b!1905801 b!1905800) bm!117400))

(assert (= (or b!1905799 bm!117400) bm!117402))

(declare-fun m!2337833 () Bool)

(assert (=> bm!117401 m!2337833))

(declare-fun m!2337835 () Bool)

(assert (=> bm!117402 m!2337835))

(declare-fun m!2337837 () Bool)

(assert (=> b!1905803 m!2337837))

(assert (=> d!582606 d!582802))

(declare-fun bm!117403 () Bool)

(declare-fun call!117410 () List!21543)

(declare-fun c!310465 () Bool)

(assert (=> bm!117403 (= call!117410 (usedCharacters!329 (ite c!310465 (regTwo!11005 (ite c!310422 (regTwo!11005 (regex!3821 (rule!6016 separatorToken!354))) (regOne!11004 (regex!3821 (rule!6016 separatorToken!354))))) (regOne!11004 (ite c!310422 (regTwo!11005 (regex!3821 (rule!6016 separatorToken!354))) (regOne!11004 (regex!3821 (rule!6016 separatorToken!354))))))))))

(declare-fun b!1905805 () Bool)

(declare-fun e!1217325 () List!21543)

(declare-fun call!117409 () List!21543)

(assert (=> b!1905805 (= e!1217325 call!117409)))

(declare-fun d!582804 () Bool)

(declare-fun c!310464 () Bool)

(assert (=> d!582804 (= c!310464 (or (is-EmptyExpr!5246 (ite c!310422 (regTwo!11005 (regex!3821 (rule!6016 separatorToken!354))) (regOne!11004 (regex!3821 (rule!6016 separatorToken!354))))) (is-EmptyLang!5246 (ite c!310422 (regTwo!11005 (regex!3821 (rule!6016 separatorToken!354))) (regOne!11004 (regex!3821 (rule!6016 separatorToken!354)))))))))

(declare-fun e!1217324 () List!21543)

(assert (=> d!582804 (= (usedCharacters!329 (ite c!310422 (regTwo!11005 (regex!3821 (rule!6016 separatorToken!354))) (regOne!11004 (regex!3821 (rule!6016 separatorToken!354))))) e!1217324)))

(declare-fun b!1905806 () Bool)

(declare-fun e!1217323 () List!21543)

(assert (=> b!1905806 (= e!1217324 e!1217323)))

(declare-fun c!310467 () Bool)

(assert (=> b!1905806 (= c!310467 (is-ElementMatch!5246 (ite c!310422 (regTwo!11005 (regex!3821 (rule!6016 separatorToken!354))) (regOne!11004 (regex!3821 (rule!6016 separatorToken!354))))))))

(declare-fun b!1905807 () Bool)

(declare-fun c!310466 () Bool)

(assert (=> b!1905807 (= c!310466 (is-Star!5246 (ite c!310422 (regTwo!11005 (regex!3821 (rule!6016 separatorToken!354))) (regOne!11004 (regex!3821 (rule!6016 separatorToken!354))))))))

(declare-fun e!1217322 () List!21543)

(assert (=> b!1905807 (= e!1217323 e!1217322)))

(declare-fun b!1905808 () Bool)

(assert (=> b!1905808 (= e!1217325 call!117409)))

(declare-fun bm!117404 () Bool)

(declare-fun call!117411 () List!21543)

(declare-fun call!117408 () List!21543)

(assert (=> bm!117404 (= call!117411 call!117408)))

(declare-fun b!1905809 () Bool)

(assert (=> b!1905809 (= e!1217323 (Cons!21461 (c!310320 (ite c!310422 (regTwo!11005 (regex!3821 (rule!6016 separatorToken!354))) (regOne!11004 (regex!3821 (rule!6016 separatorToken!354))))) Nil!21461))))

(declare-fun b!1905810 () Bool)

(assert (=> b!1905810 (= e!1217324 Nil!21461)))

(declare-fun bm!117405 () Bool)

(assert (=> bm!117405 (= call!117409 (++!5766 (ite c!310465 call!117411 call!117410) (ite c!310465 call!117410 call!117411)))))

(declare-fun b!1905811 () Bool)

(assert (=> b!1905811 (= e!1217322 call!117408)))

(declare-fun bm!117406 () Bool)

(assert (=> bm!117406 (= call!117408 (usedCharacters!329 (ite c!310466 (reg!5575 (ite c!310422 (regTwo!11005 (regex!3821 (rule!6016 separatorToken!354))) (regOne!11004 (regex!3821 (rule!6016 separatorToken!354))))) (ite c!310465 (regOne!11005 (ite c!310422 (regTwo!11005 (regex!3821 (rule!6016 separatorToken!354))) (regOne!11004 (regex!3821 (rule!6016 separatorToken!354))))) (regTwo!11004 (ite c!310422 (regTwo!11005 (regex!3821 (rule!6016 separatorToken!354))) (regOne!11004 (regex!3821 (rule!6016 separatorToken!354)))))))))))

(declare-fun b!1905812 () Bool)

(assert (=> b!1905812 (= e!1217322 e!1217325)))

(assert (=> b!1905812 (= c!310465 (is-Union!5246 (ite c!310422 (regTwo!11005 (regex!3821 (rule!6016 separatorToken!354))) (regOne!11004 (regex!3821 (rule!6016 separatorToken!354))))))))

(assert (= (and d!582804 c!310464) b!1905810))

(assert (= (and d!582804 (not c!310464)) b!1905806))

(assert (= (and b!1905806 c!310467) b!1905809))

(assert (= (and b!1905806 (not c!310467)) b!1905807))

(assert (= (and b!1905807 c!310466) b!1905811))

(assert (= (and b!1905807 (not c!310466)) b!1905812))

(assert (= (and b!1905812 c!310465) b!1905805))

(assert (= (and b!1905812 (not c!310465)) b!1905808))

(assert (= (or b!1905805 b!1905808) bm!117404))

(assert (= (or b!1905805 b!1905808) bm!117403))

(assert (= (or b!1905805 b!1905808) bm!117405))

(assert (= (or b!1905811 bm!117404) bm!117406))

(declare-fun m!2337839 () Bool)

(assert (=> bm!117403 m!2337839))

(declare-fun m!2337841 () Bool)

(assert (=> bm!117405 m!2337841))

(declare-fun m!2337843 () Bool)

(assert (=> bm!117406 m!2337843))

(assert (=> bm!117374 d!582804))

(declare-fun b!1905813 () Bool)

(declare-fun e!1217330 () Bool)

(assert (=> b!1905813 (= e!1217330 (matchR!2532 (derivativeStep!1351 (regex!3821 (get!6666 (getRuleFromTag!664 thiss!23328 rules!3198 (tag!4251 (rule!6016 (h!26863 tokens!598)))))) (head!4421 (list!8725 (charsOf!2377 (h!26863 tokens!598))))) (tail!2947 (list!8725 (charsOf!2377 (h!26863 tokens!598))))))))

(declare-fun b!1905814 () Bool)

(declare-fun e!1217332 () Bool)

(declare-fun lt!728672 () Bool)

(declare-fun call!117412 () Bool)

(assert (=> b!1905814 (= e!1217332 (= lt!728672 call!117412))))

(declare-fun e!1217331 () Bool)

(declare-fun b!1905815 () Bool)

(assert (=> b!1905815 (= e!1217331 (not (= (head!4421 (list!8725 (charsOf!2377 (h!26863 tokens!598)))) (c!310320 (regex!3821 (get!6666 (getRuleFromTag!664 thiss!23328 rules!3198 (tag!4251 (rule!6016 (h!26863 tokens!598))))))))))))

(declare-fun b!1905816 () Bool)

(assert (=> b!1905816 (= e!1217330 (nullable!1592 (regex!3821 (get!6666 (getRuleFromTag!664 thiss!23328 rules!3198 (tag!4251 (rule!6016 (h!26863 tokens!598))))))))))

(declare-fun b!1905817 () Bool)

(declare-fun e!1217329 () Bool)

(declare-fun e!1217327 () Bool)

(assert (=> b!1905817 (= e!1217329 e!1217327)))

(declare-fun res!851001 () Bool)

(assert (=> b!1905817 (=> (not res!851001) (not e!1217327))))

(assert (=> b!1905817 (= res!851001 (not lt!728672))))

(declare-fun d!582806 () Bool)

(assert (=> d!582806 e!1217332))

(declare-fun c!310468 () Bool)

(assert (=> d!582806 (= c!310468 (is-EmptyExpr!5246 (regex!3821 (get!6666 (getRuleFromTag!664 thiss!23328 rules!3198 (tag!4251 (rule!6016 (h!26863 tokens!598))))))))))

(assert (=> d!582806 (= lt!728672 e!1217330)))

(declare-fun c!310469 () Bool)

(assert (=> d!582806 (= c!310469 (isEmpty!13177 (list!8725 (charsOf!2377 (h!26863 tokens!598)))))))

(assert (=> d!582806 (validRegex!2116 (regex!3821 (get!6666 (getRuleFromTag!664 thiss!23328 rules!3198 (tag!4251 (rule!6016 (h!26863 tokens!598)))))))))

(assert (=> d!582806 (= (matchR!2532 (regex!3821 (get!6666 (getRuleFromTag!664 thiss!23328 rules!3198 (tag!4251 (rule!6016 (h!26863 tokens!598)))))) (list!8725 (charsOf!2377 (h!26863 tokens!598)))) lt!728672)))

(declare-fun b!1905818 () Bool)

(declare-fun res!851004 () Bool)

(declare-fun e!1217326 () Bool)

(assert (=> b!1905818 (=> (not res!851004) (not e!1217326))))

(assert (=> b!1905818 (= res!851004 (isEmpty!13177 (tail!2947 (list!8725 (charsOf!2377 (h!26863 tokens!598))))))))

(declare-fun b!1905819 () Bool)

(assert (=> b!1905819 (= e!1217326 (= (head!4421 (list!8725 (charsOf!2377 (h!26863 tokens!598)))) (c!310320 (regex!3821 (get!6666 (getRuleFromTag!664 thiss!23328 rules!3198 (tag!4251 (rule!6016 (h!26863 tokens!598)))))))))))

(declare-fun b!1905820 () Bool)

(declare-fun e!1217328 () Bool)

(assert (=> b!1905820 (= e!1217328 (not lt!728672))))

(declare-fun b!1905821 () Bool)

(assert (=> b!1905821 (= e!1217332 e!1217328)))

(declare-fun c!310470 () Bool)

(assert (=> b!1905821 (= c!310470 (is-EmptyLang!5246 (regex!3821 (get!6666 (getRuleFromTag!664 thiss!23328 rules!3198 (tag!4251 (rule!6016 (h!26863 tokens!598))))))))))

(declare-fun b!1905822 () Bool)

(declare-fun res!851003 () Bool)

(assert (=> b!1905822 (=> res!851003 e!1217331)))

(assert (=> b!1905822 (= res!851003 (not (isEmpty!13177 (tail!2947 (list!8725 (charsOf!2377 (h!26863 tokens!598)))))))))

(declare-fun b!1905823 () Bool)

(declare-fun res!851002 () Bool)

(assert (=> b!1905823 (=> (not res!851002) (not e!1217326))))

(assert (=> b!1905823 (= res!851002 (not call!117412))))

(declare-fun bm!117407 () Bool)

(assert (=> bm!117407 (= call!117412 (isEmpty!13177 (list!8725 (charsOf!2377 (h!26863 tokens!598)))))))

(declare-fun b!1905824 () Bool)

(declare-fun res!851006 () Bool)

(assert (=> b!1905824 (=> res!851006 e!1217329)))

(assert (=> b!1905824 (= res!851006 e!1217326)))

(declare-fun res!851005 () Bool)

(assert (=> b!1905824 (=> (not res!851005) (not e!1217326))))

(assert (=> b!1905824 (= res!851005 lt!728672)))

(declare-fun b!1905825 () Bool)

(assert (=> b!1905825 (= e!1217327 e!1217331)))

(declare-fun res!851007 () Bool)

(assert (=> b!1905825 (=> res!851007 e!1217331)))

(assert (=> b!1905825 (= res!851007 call!117412)))

(declare-fun b!1905826 () Bool)

(declare-fun res!851008 () Bool)

(assert (=> b!1905826 (=> res!851008 e!1217329)))

(assert (=> b!1905826 (= res!851008 (not (is-ElementMatch!5246 (regex!3821 (get!6666 (getRuleFromTag!664 thiss!23328 rules!3198 (tag!4251 (rule!6016 (h!26863 tokens!598)))))))))))

(assert (=> b!1905826 (= e!1217328 e!1217329)))

(assert (= (and d!582806 c!310469) b!1905816))

(assert (= (and d!582806 (not c!310469)) b!1905813))

(assert (= (and d!582806 c!310468) b!1905814))

(assert (= (and d!582806 (not c!310468)) b!1905821))

(assert (= (and b!1905821 c!310470) b!1905820))

(assert (= (and b!1905821 (not c!310470)) b!1905826))

(assert (= (and b!1905826 (not res!851008)) b!1905824))

(assert (= (and b!1905824 res!851005) b!1905823))

(assert (= (and b!1905823 res!851002) b!1905818))

(assert (= (and b!1905818 res!851004) b!1905819))

(assert (= (and b!1905824 (not res!851006)) b!1905817))

(assert (= (and b!1905817 res!851001) b!1905825))

(assert (= (and b!1905825 (not res!851007)) b!1905822))

(assert (= (and b!1905822 (not res!851003)) b!1905815))

(assert (= (or b!1905814 b!1905823 b!1905825) bm!117407))

(assert (=> b!1905819 m!2337339))

(declare-fun m!2337845 () Bool)

(assert (=> b!1905819 m!2337845))

(assert (=> b!1905813 m!2337339))

(assert (=> b!1905813 m!2337845))

(assert (=> b!1905813 m!2337845))

(declare-fun m!2337847 () Bool)

(assert (=> b!1905813 m!2337847))

(assert (=> b!1905813 m!2337339))

(declare-fun m!2337849 () Bool)

(assert (=> b!1905813 m!2337849))

(assert (=> b!1905813 m!2337847))

(assert (=> b!1905813 m!2337849))

(declare-fun m!2337851 () Bool)

(assert (=> b!1905813 m!2337851))

(assert (=> b!1905818 m!2337339))

(assert (=> b!1905818 m!2337849))

(assert (=> b!1905818 m!2337849))

(declare-fun m!2337853 () Bool)

(assert (=> b!1905818 m!2337853))

(declare-fun m!2337855 () Bool)

(assert (=> b!1905816 m!2337855))

(assert (=> bm!117407 m!2337339))

(declare-fun m!2337857 () Bool)

(assert (=> bm!117407 m!2337857))

(assert (=> b!1905815 m!2337339))

(assert (=> b!1905815 m!2337845))

(assert (=> d!582806 m!2337339))

(assert (=> d!582806 m!2337857))

(declare-fun m!2337859 () Bool)

(assert (=> d!582806 m!2337859))

(assert (=> b!1905822 m!2337339))

(assert (=> b!1905822 m!2337849))

(assert (=> b!1905822 m!2337849))

(assert (=> b!1905822 m!2337853))

(assert (=> b!1905325 d!582806))

(declare-fun d!582808 () Bool)

(assert (=> d!582808 (= (get!6666 (getRuleFromTag!664 thiss!23328 rules!3198 (tag!4251 (rule!6016 (h!26863 tokens!598))))) (v!26382 (getRuleFromTag!664 thiss!23328 rules!3198 (tag!4251 (rule!6016 (h!26863 tokens!598))))))))

(assert (=> b!1905325 d!582808))

(assert (=> b!1905325 d!582674))

(declare-fun d!582810 () Bool)

(assert (=> d!582810 (= (list!8725 (charsOf!2377 (h!26863 tokens!598))) (list!8727 (c!310321 (charsOf!2377 (h!26863 tokens!598)))))))

(declare-fun bs!413821 () Bool)

(assert (= bs!413821 d!582810))

(declare-fun m!2337861 () Bool)

(assert (=> bs!413821 m!2337861))

(assert (=> b!1905325 d!582810))

(assert (=> b!1905325 d!582650))

(declare-fun d!582812 () Bool)

(declare-fun charsToInt!0 (List!21542) (_ BitVec 32))

(assert (=> d!582812 (= (inv!16 (value!120491 separatorToken!354)) (= (charsToInt!0 (text!28146 (value!120491 separatorToken!354))) (value!120482 (value!120491 separatorToken!354))))))

(declare-fun bs!413822 () Bool)

(assert (= bs!413822 d!582812))

(declare-fun m!2337863 () Bool)

(assert (=> bs!413822 m!2337863))

(assert (=> b!1905140 d!582812))

(declare-fun b!1905845 () Bool)

(declare-fun res!851024 () Bool)

(declare-fun e!1217341 () Bool)

(assert (=> b!1905845 (=> (not res!851024) (not e!1217341))))

(declare-fun lt!728686 () Option!4347)

(assert (=> b!1905845 (= res!851024 (= (value!120491 (_1!11568 (get!6665 lt!728686))) (apply!5629 (transformation!3821 (rule!6016 (_1!11568 (get!6665 lt!728686)))) (seqFromList!2693 (originalCharacters!4628 (_1!11568 (get!6665 lt!728686)))))))))

(declare-fun b!1905846 () Bool)

(declare-fun e!1217344 () Bool)

(declare-datatypes ((tuple2!20206 0))(
  ( (tuple2!20207 (_1!11572 List!21543) (_2!11572 List!21543)) )
))
(declare-fun findLongestMatchInner!528 (Regex!5246 List!21543 Int List!21543 List!21543 Int) tuple2!20206)

(assert (=> b!1905846 (= e!1217344 (matchR!2532 (regex!3821 (h!26864 rules!3198)) (_1!11572 (findLongestMatchInner!528 (regex!3821 (h!26864 rules!3198)) Nil!21461 (size!16931 Nil!21461) lt!728437 lt!728437 (size!16931 lt!728437)))))))

(declare-fun b!1905847 () Bool)

(declare-fun res!851028 () Bool)

(assert (=> b!1905847 (=> (not res!851028) (not e!1217341))))

(assert (=> b!1905847 (= res!851028 (= (++!5766 (list!8725 (charsOf!2377 (_1!11568 (get!6665 lt!728686)))) (_2!11568 (get!6665 lt!728686))) lt!728437))))

(declare-fun b!1905848 () Bool)

(declare-fun res!851026 () Bool)

(assert (=> b!1905848 (=> (not res!851026) (not e!1217341))))

(assert (=> b!1905848 (= res!851026 (< (size!16931 (_2!11568 (get!6665 lt!728686))) (size!16931 lt!728437)))))

(declare-fun d!582814 () Bool)

(declare-fun e!1217342 () Bool)

(assert (=> d!582814 e!1217342))

(declare-fun res!851029 () Bool)

(assert (=> d!582814 (=> res!851029 e!1217342)))

(assert (=> d!582814 (= res!851029 (isEmpty!13179 lt!728686))))

(declare-fun e!1217343 () Option!4347)

(assert (=> d!582814 (= lt!728686 e!1217343)))

(declare-fun c!310473 () Bool)

(declare-fun lt!728683 () tuple2!20206)

(assert (=> d!582814 (= c!310473 (isEmpty!13177 (_1!11572 lt!728683)))))

(declare-fun findLongestMatch!455 (Regex!5246 List!21543) tuple2!20206)

(assert (=> d!582814 (= lt!728683 (findLongestMatch!455 (regex!3821 (h!26864 rules!3198)) lt!728437))))

(declare-fun ruleValid!1156 (LexerInterface!3434 Rule!7442) Bool)

(assert (=> d!582814 (ruleValid!1156 thiss!23328 (h!26864 rules!3198))))

(assert (=> d!582814 (= (maxPrefixOneRule!1202 thiss!23328 (h!26864 rules!3198) lt!728437) lt!728686)))

(declare-fun b!1905849 () Bool)

(assert (=> b!1905849 (= e!1217342 e!1217341)))

(declare-fun res!851023 () Bool)

(assert (=> b!1905849 (=> (not res!851023) (not e!1217341))))

(assert (=> b!1905849 (= res!851023 (matchR!2532 (regex!3821 (h!26864 rules!3198)) (list!8725 (charsOf!2377 (_1!11568 (get!6665 lt!728686))))))))

(declare-fun b!1905850 () Bool)

(assert (=> b!1905850 (= e!1217343 None!4346)))

(declare-fun b!1905851 () Bool)

(declare-fun size!16935 (BalanceConc!14092) Int)

(assert (=> b!1905851 (= e!1217343 (Some!4346 (tuple2!20199 (Token!7195 (apply!5629 (transformation!3821 (h!26864 rules!3198)) (seqFromList!2693 (_1!11572 lt!728683))) (h!26864 rules!3198) (size!16935 (seqFromList!2693 (_1!11572 lt!728683))) (_1!11572 lt!728683)) (_2!11572 lt!728683))))))

(declare-fun lt!728685 () Unit!35791)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!512 (Regex!5246 List!21543) Unit!35791)

(assert (=> b!1905851 (= lt!728685 (longestMatchIsAcceptedByMatchOrIsEmpty!512 (regex!3821 (h!26864 rules!3198)) lt!728437))))

(declare-fun res!851027 () Bool)

(assert (=> b!1905851 (= res!851027 (isEmpty!13177 (_1!11572 (findLongestMatchInner!528 (regex!3821 (h!26864 rules!3198)) Nil!21461 (size!16931 Nil!21461) lt!728437 lt!728437 (size!16931 lt!728437)))))))

(assert (=> b!1905851 (=> res!851027 e!1217344)))

(assert (=> b!1905851 e!1217344))

(declare-fun lt!728687 () Unit!35791)

(assert (=> b!1905851 (= lt!728687 lt!728685)))

(declare-fun lt!728684 () Unit!35791)

(assert (=> b!1905851 (= lt!728684 (lemmaSemiInverse!800 (transformation!3821 (h!26864 rules!3198)) (seqFromList!2693 (_1!11572 lt!728683))))))

(declare-fun b!1905852 () Bool)

(assert (=> b!1905852 (= e!1217341 (= (size!16929 (_1!11568 (get!6665 lt!728686))) (size!16931 (originalCharacters!4628 (_1!11568 (get!6665 lt!728686))))))))

(declare-fun b!1905853 () Bool)

(declare-fun res!851025 () Bool)

(assert (=> b!1905853 (=> (not res!851025) (not e!1217341))))

(assert (=> b!1905853 (= res!851025 (= (rule!6016 (_1!11568 (get!6665 lt!728686))) (h!26864 rules!3198)))))

(assert (= (and d!582814 c!310473) b!1905850))

(assert (= (and d!582814 (not c!310473)) b!1905851))

(assert (= (and b!1905851 (not res!851027)) b!1905846))

(assert (= (and d!582814 (not res!851029)) b!1905849))

(assert (= (and b!1905849 res!851023) b!1905847))

(assert (= (and b!1905847 res!851028) b!1905848))

(assert (= (and b!1905848 res!851026) b!1905853))

(assert (= (and b!1905853 res!851025) b!1905845))

(assert (= (and b!1905845 res!851024) b!1905852))

(declare-fun m!2337865 () Bool)

(assert (=> b!1905847 m!2337865))

(declare-fun m!2337867 () Bool)

(assert (=> b!1905847 m!2337867))

(assert (=> b!1905847 m!2337867))

(declare-fun m!2337869 () Bool)

(assert (=> b!1905847 m!2337869))

(assert (=> b!1905847 m!2337869))

(declare-fun m!2337871 () Bool)

(assert (=> b!1905847 m!2337871))

(assert (=> b!1905852 m!2337865))

(declare-fun m!2337873 () Bool)

(assert (=> b!1905852 m!2337873))

(assert (=> b!1905845 m!2337865))

(declare-fun m!2337875 () Bool)

(assert (=> b!1905845 m!2337875))

(assert (=> b!1905845 m!2337875))

(declare-fun m!2337877 () Bool)

(assert (=> b!1905845 m!2337877))

(declare-fun m!2337879 () Bool)

(assert (=> d!582814 m!2337879))

(declare-fun m!2337881 () Bool)

(assert (=> d!582814 m!2337881))

(declare-fun m!2337883 () Bool)

(assert (=> d!582814 m!2337883))

(declare-fun m!2337885 () Bool)

(assert (=> d!582814 m!2337885))

(declare-fun m!2337887 () Bool)

(assert (=> b!1905846 m!2337887))

(assert (=> b!1905846 m!2337201))

(assert (=> b!1905846 m!2337887))

(assert (=> b!1905846 m!2337201))

(declare-fun m!2337889 () Bool)

(assert (=> b!1905846 m!2337889))

(declare-fun m!2337891 () Bool)

(assert (=> b!1905846 m!2337891))

(assert (=> b!1905851 m!2337201))

(declare-fun m!2337893 () Bool)

(assert (=> b!1905851 m!2337893))

(assert (=> b!1905851 m!2337893))

(declare-fun m!2337895 () Bool)

(assert (=> b!1905851 m!2337895))

(assert (=> b!1905851 m!2337893))

(declare-fun m!2337897 () Bool)

(assert (=> b!1905851 m!2337897))

(assert (=> b!1905851 m!2337887))

(assert (=> b!1905851 m!2337893))

(declare-fun m!2337899 () Bool)

(assert (=> b!1905851 m!2337899))

(declare-fun m!2337901 () Bool)

(assert (=> b!1905851 m!2337901))

(assert (=> b!1905851 m!2337887))

(assert (=> b!1905851 m!2337201))

(assert (=> b!1905851 m!2337889))

(declare-fun m!2337903 () Bool)

(assert (=> b!1905851 m!2337903))

(assert (=> b!1905853 m!2337865))

(assert (=> b!1905849 m!2337865))

(assert (=> b!1905849 m!2337867))

(assert (=> b!1905849 m!2337867))

(assert (=> b!1905849 m!2337869))

(assert (=> b!1905849 m!2337869))

(declare-fun m!2337905 () Bool)

(assert (=> b!1905849 m!2337905))

(assert (=> b!1905848 m!2337865))

(declare-fun m!2337907 () Bool)

(assert (=> b!1905848 m!2337907))

(assert (=> b!1905848 m!2337201))

(assert (=> bm!117330 d!582814))

(declare-fun d!582816 () Bool)

(declare-fun c!310476 () Bool)

(assert (=> d!582816 (= c!310476 (is-Node!7138 (c!310321 (dynLambda!10451 (toChars!5301 (transformation!3821 (rule!6016 separatorToken!354))) (value!120491 separatorToken!354)))))))

(declare-fun e!1217349 () Bool)

(assert (=> d!582816 (= (inv!28565 (c!310321 (dynLambda!10451 (toChars!5301 (transformation!3821 (rule!6016 separatorToken!354))) (value!120491 separatorToken!354)))) e!1217349)))

(declare-fun b!1905860 () Bool)

(declare-fun inv!28569 (Conc!7138) Bool)

(assert (=> b!1905860 (= e!1217349 (inv!28569 (c!310321 (dynLambda!10451 (toChars!5301 (transformation!3821 (rule!6016 separatorToken!354))) (value!120491 separatorToken!354)))))))

(declare-fun b!1905861 () Bool)

(declare-fun e!1217350 () Bool)

(assert (=> b!1905861 (= e!1217349 e!1217350)))

(declare-fun res!851032 () Bool)

(assert (=> b!1905861 (= res!851032 (not (is-Leaf!10512 (c!310321 (dynLambda!10451 (toChars!5301 (transformation!3821 (rule!6016 separatorToken!354))) (value!120491 separatorToken!354))))))))

(assert (=> b!1905861 (=> res!851032 e!1217350)))

(declare-fun b!1905862 () Bool)

(declare-fun inv!28570 (Conc!7138) Bool)

(assert (=> b!1905862 (= e!1217350 (inv!28570 (c!310321 (dynLambda!10451 (toChars!5301 (transformation!3821 (rule!6016 separatorToken!354))) (value!120491 separatorToken!354)))))))

(assert (= (and d!582816 c!310476) b!1905860))

(assert (= (and d!582816 (not c!310476)) b!1905861))

(assert (= (and b!1905861 (not res!851032)) b!1905862))

(declare-fun m!2337909 () Bool)

(assert (=> b!1905860 m!2337909))

(declare-fun m!2337911 () Bool)

(assert (=> b!1905862 m!2337911))

(assert (=> b!1905144 d!582816))

(declare-fun d!582818 () Bool)

(assert (=> d!582818 (= (inv!16 (value!120491 (h!26863 tokens!598))) (= (charsToInt!0 (text!28146 (value!120491 (h!26863 tokens!598)))) (value!120482 (value!120491 (h!26863 tokens!598)))))))

(declare-fun bs!413823 () Bool)

(assert (= bs!413823 d!582818))

(declare-fun m!2337913 () Bool)

(assert (=> bs!413823 m!2337913))

(assert (=> b!1905575 d!582818))

(declare-fun d!582820 () Bool)

(declare-fun lt!728690 () Int)

(assert (=> d!582820 (>= lt!728690 0)))

(declare-fun e!1217353 () Int)

(assert (=> d!582820 (= lt!728690 e!1217353)))

(declare-fun c!310479 () Bool)

(assert (=> d!582820 (= c!310479 (is-Nil!21461 lt!728622))))

(assert (=> d!582820 (= (size!16931 lt!728622) lt!728690)))

(declare-fun b!1905867 () Bool)

(assert (=> b!1905867 (= e!1217353 0)))

(declare-fun b!1905868 () Bool)

(assert (=> b!1905868 (= e!1217353 (+ 1 (size!16931 (t!177356 lt!728622))))))

(assert (= (and d!582820 c!310479) b!1905867))

(assert (= (and d!582820 (not c!310479)) b!1905868))

(declare-fun m!2337915 () Bool)

(assert (=> b!1905868 m!2337915))

(assert (=> b!1905562 d!582820))

(declare-fun d!582822 () Bool)

(declare-fun lt!728691 () Int)

(assert (=> d!582822 (>= lt!728691 0)))

(declare-fun e!1217354 () Int)

(assert (=> d!582822 (= lt!728691 e!1217354)))

(declare-fun c!310480 () Bool)

(assert (=> d!582822 (= c!310480 (is-Nil!21461 (++!5766 lt!728437 lt!728438)))))

(assert (=> d!582822 (= (size!16931 (++!5766 lt!728437 lt!728438)) lt!728691)))

(declare-fun b!1905869 () Bool)

(assert (=> b!1905869 (= e!1217354 0)))

(declare-fun b!1905870 () Bool)

(assert (=> b!1905870 (= e!1217354 (+ 1 (size!16931 (t!177356 (++!5766 lt!728437 lt!728438)))))))

(assert (= (and d!582822 c!310480) b!1905869))

(assert (= (and d!582822 (not c!310480)) b!1905870))

(declare-fun m!2337917 () Bool)

(assert (=> b!1905870 m!2337917))

(assert (=> b!1905562 d!582822))

(declare-fun d!582824 () Bool)

(declare-fun lt!728692 () Int)

(assert (=> d!582824 (>= lt!728692 0)))

(declare-fun e!1217355 () Int)

(assert (=> d!582824 (= lt!728692 e!1217355)))

(declare-fun c!310481 () Bool)

(assert (=> d!582824 (= c!310481 (is-Nil!21461 lt!728429))))

(assert (=> d!582824 (= (size!16931 lt!728429) lt!728692)))

(declare-fun b!1905871 () Bool)

(assert (=> b!1905871 (= e!1217355 0)))

(declare-fun b!1905872 () Bool)

(assert (=> b!1905872 (= e!1217355 (+ 1 (size!16931 (t!177356 lt!728429))))))

(assert (= (and d!582824 c!310481) b!1905871))

(assert (= (and d!582824 (not c!310481)) b!1905872))

(declare-fun m!2337919 () Bool)

(assert (=> b!1905872 m!2337919))

(assert (=> b!1905562 d!582824))

(declare-fun d!582826 () Bool)

(declare-fun e!1217356 () Bool)

(assert (=> d!582826 e!1217356))

(declare-fun res!851033 () Bool)

(assert (=> d!582826 (=> (not res!851033) (not e!1217356))))

(declare-fun lt!728693 () List!21543)

(assert (=> d!582826 (= res!851033 (= (content!3142 lt!728693) (set.union (content!3142 (t!177356 lt!728438)) (content!3142 lt!728429))))))

(declare-fun e!1217357 () List!21543)

(assert (=> d!582826 (= lt!728693 e!1217357)))

(declare-fun c!310482 () Bool)

(assert (=> d!582826 (= c!310482 (is-Nil!21461 (t!177356 lt!728438)))))

(assert (=> d!582826 (= (++!5766 (t!177356 lt!728438) lt!728429) lt!728693)))

(declare-fun b!1905875 () Bool)

(declare-fun res!851034 () Bool)

(assert (=> b!1905875 (=> (not res!851034) (not e!1217356))))

(assert (=> b!1905875 (= res!851034 (= (size!16931 lt!728693) (+ (size!16931 (t!177356 lt!728438)) (size!16931 lt!728429))))))

(declare-fun b!1905876 () Bool)

(assert (=> b!1905876 (= e!1217356 (or (not (= lt!728429 Nil!21461)) (= lt!728693 (t!177356 lt!728438))))))

(declare-fun b!1905874 () Bool)

(assert (=> b!1905874 (= e!1217357 (Cons!21461 (h!26862 (t!177356 lt!728438)) (++!5766 (t!177356 (t!177356 lt!728438)) lt!728429)))))

(declare-fun b!1905873 () Bool)

(assert (=> b!1905873 (= e!1217357 lt!728429)))

(assert (= (and d!582826 c!310482) b!1905873))

(assert (= (and d!582826 (not c!310482)) b!1905874))

(assert (= (and d!582826 res!851033) b!1905875))

(assert (= (and b!1905875 res!851034) b!1905876))

(declare-fun m!2337921 () Bool)

(assert (=> d!582826 m!2337921))

(declare-fun m!2337923 () Bool)

(assert (=> d!582826 m!2337923))

(assert (=> d!582826 m!2337249))

(declare-fun m!2337925 () Bool)

(assert (=> b!1905875 m!2337925))

(declare-fun m!2337927 () Bool)

(assert (=> b!1905875 m!2337927))

(assert (=> b!1905875 m!2337253))

(declare-fun m!2337929 () Bool)

(assert (=> b!1905874 m!2337929))

(assert (=> b!1905565 d!582826))

(declare-fun d!582828 () Bool)

(declare-fun c!310487 () Bool)

(assert (=> d!582828 (= c!310487 (is-Empty!7138 (c!310321 lt!728440)))))

(declare-fun e!1217362 () List!21543)

(assert (=> d!582828 (= (list!8727 (c!310321 lt!728440)) e!1217362)))

(declare-fun b!1905886 () Bool)

(declare-fun e!1217363 () List!21543)

(assert (=> b!1905886 (= e!1217362 e!1217363)))

(declare-fun c!310488 () Bool)

(assert (=> b!1905886 (= c!310488 (is-Leaf!10512 (c!310321 lt!728440)))))

(declare-fun b!1905887 () Bool)

(declare-fun list!8731 (IArray!14281) List!21543)

(assert (=> b!1905887 (= e!1217363 (list!8731 (xs!10032 (c!310321 lt!728440))))))

(declare-fun b!1905885 () Bool)

(assert (=> b!1905885 (= e!1217362 Nil!21461)))

(declare-fun b!1905888 () Bool)

(assert (=> b!1905888 (= e!1217363 (++!5766 (list!8727 (left!17163 (c!310321 lt!728440))) (list!8727 (right!17493 (c!310321 lt!728440)))))))

(assert (= (and d!582828 c!310487) b!1905885))

(assert (= (and d!582828 (not c!310487)) b!1905886))

(assert (= (and b!1905886 c!310488) b!1905887))

(assert (= (and b!1905886 (not c!310488)) b!1905888))

(declare-fun m!2337931 () Bool)

(assert (=> b!1905887 m!2337931))

(declare-fun m!2337933 () Bool)

(assert (=> b!1905888 m!2337933))

(declare-fun m!2337935 () Bool)

(assert (=> b!1905888 m!2337935))

(assert (=> b!1905888 m!2337933))

(assert (=> b!1905888 m!2337935))

(declare-fun m!2337937 () Bool)

(assert (=> b!1905888 m!2337937))

(assert (=> d!582646 d!582828))

(declare-fun d!582830 () Bool)

(assert (=> d!582830 (= (list!8725 (dynLambda!10451 (toChars!5301 (transformation!3821 (rule!6016 (h!26863 tokens!598)))) (dynLambda!10456 (toValue!5442 (transformation!3821 (rule!6016 (h!26863 tokens!598)))) lt!728440))) (list!8727 (c!310321 (dynLambda!10451 (toChars!5301 (transformation!3821 (rule!6016 (h!26863 tokens!598)))) (dynLambda!10456 (toValue!5442 (transformation!3821 (rule!6016 (h!26863 tokens!598)))) lt!728440)))))))

(declare-fun bs!413824 () Bool)

(assert (= bs!413824 d!582830))

(declare-fun m!2337939 () Bool)

(assert (=> bs!413824 m!2337939))

(assert (=> d!582652 d!582830))

(assert (=> d!582652 d!582646))

(declare-fun d!582832 () Bool)

(declare-fun dynLambda!10466 (Int BalanceConc!14092) Bool)

(assert (=> d!582832 (dynLambda!10466 lambda!74449 lt!728440)))

(declare-fun lt!728696 () Unit!35791)

(declare-fun choose!11867 (Int BalanceConc!14092) Unit!35791)

(assert (=> d!582832 (= lt!728696 (choose!11867 lambda!74449 lt!728440))))

(declare-fun Forall!993 (Int) Bool)

(assert (=> d!582832 (Forall!993 lambda!74449)))

(assert (=> d!582832 (= (ForallOf!388 lambda!74449 lt!728440) lt!728696)))

(declare-fun b_lambda!62953 () Bool)

(assert (=> (not b_lambda!62953) (not d!582832)))

(declare-fun bs!413825 () Bool)

(assert (= bs!413825 d!582832))

(declare-fun m!2337941 () Bool)

(assert (=> bs!413825 m!2337941))

(declare-fun m!2337943 () Bool)

(assert (=> bs!413825 m!2337943))

(declare-fun m!2337945 () Bool)

(assert (=> bs!413825 m!2337945))

(assert (=> d!582652 d!582832))

(declare-fun d!582834 () Bool)

(declare-fun c!310489 () Bool)

(assert (=> d!582834 (= c!310489 (is-Empty!7138 (c!310321 (charsOf!2377 separatorToken!354))))))

(declare-fun e!1217364 () List!21543)

(assert (=> d!582834 (= (list!8727 (c!310321 (charsOf!2377 separatorToken!354))) e!1217364)))

(declare-fun b!1905890 () Bool)

(declare-fun e!1217365 () List!21543)

(assert (=> b!1905890 (= e!1217364 e!1217365)))

(declare-fun c!310490 () Bool)

(assert (=> b!1905890 (= c!310490 (is-Leaf!10512 (c!310321 (charsOf!2377 separatorToken!354))))))

(declare-fun b!1905891 () Bool)

(assert (=> b!1905891 (= e!1217365 (list!8731 (xs!10032 (c!310321 (charsOf!2377 separatorToken!354)))))))

(declare-fun b!1905889 () Bool)

(assert (=> b!1905889 (= e!1217364 Nil!21461)))

(declare-fun b!1905892 () Bool)

(assert (=> b!1905892 (= e!1217365 (++!5766 (list!8727 (left!17163 (c!310321 (charsOf!2377 separatorToken!354)))) (list!8727 (right!17493 (c!310321 (charsOf!2377 separatorToken!354))))))))

(assert (= (and d!582834 c!310489) b!1905889))

(assert (= (and d!582834 (not c!310489)) b!1905890))

(assert (= (and b!1905890 c!310490) b!1905891))

(assert (= (and b!1905890 (not c!310490)) b!1905892))

(declare-fun m!2337947 () Bool)

(assert (=> b!1905891 m!2337947))

(declare-fun m!2337949 () Bool)

(assert (=> b!1905892 m!2337949))

(declare-fun m!2337951 () Bool)

(assert (=> b!1905892 m!2337951))

(assert (=> b!1905892 m!2337949))

(assert (=> b!1905892 m!2337951))

(declare-fun m!2337953 () Bool)

(assert (=> b!1905892 m!2337953))

(assert (=> d!582662 d!582834))

(declare-fun bs!413826 () Bool)

(declare-fun d!582836 () Bool)

(assert (= bs!413826 (and d!582836 d!582652)))

(declare-fun lambda!74470 () Int)

(assert (=> bs!413826 (= (and (= (toChars!5301 (transformation!3821 (rule!6016 separatorToken!354))) (toChars!5301 (transformation!3821 (rule!6016 (h!26863 tokens!598))))) (= (toValue!5442 (transformation!3821 (rule!6016 separatorToken!354))) (toValue!5442 (transformation!3821 (rule!6016 (h!26863 tokens!598)))))) (= lambda!74470 lambda!74449))))

(assert (=> d!582836 true))

(assert (=> d!582836 (< (dynLambda!10454 order!13565 (toChars!5301 (transformation!3821 (rule!6016 separatorToken!354)))) (dynLambda!10455 order!13567 lambda!74470))))

(assert (=> d!582836 true))

(assert (=> d!582836 (< (dynLambda!10452 order!13561 (toValue!5442 (transformation!3821 (rule!6016 separatorToken!354)))) (dynLambda!10455 order!13567 lambda!74470))))

(assert (=> d!582836 (= (semiInverseModEq!1542 (toChars!5301 (transformation!3821 (rule!6016 separatorToken!354))) (toValue!5442 (transformation!3821 (rule!6016 separatorToken!354)))) (Forall!993 lambda!74470))))

(declare-fun bs!413827 () Bool)

(assert (= bs!413827 d!582836))

(declare-fun m!2337955 () Bool)

(assert (=> bs!413827 m!2337955))

(assert (=> d!582682 d!582836))

(declare-fun d!582838 () Bool)

(declare-fun c!310493 () Bool)

(assert (=> d!582838 (= c!310493 (is-Nil!21461 lt!728623))))

(declare-fun e!1217368 () (Set C!10638))

(assert (=> d!582838 (= (content!3142 lt!728623) e!1217368)))

(declare-fun b!1905901 () Bool)

(assert (=> b!1905901 (= e!1217368 (as set.empty (Set C!10638)))))

(declare-fun b!1905902 () Bool)

(assert (=> b!1905902 (= e!1217368 (set.union (set.insert (h!26862 lt!728623) (as set.empty (Set C!10638))) (content!3142 (t!177356 lt!728623))))))

(assert (= (and d!582838 c!310493) b!1905901))

(assert (= (and d!582838 (not c!310493)) b!1905902))

(declare-fun m!2337957 () Bool)

(assert (=> b!1905902 m!2337957))

(declare-fun m!2337959 () Bool)

(assert (=> b!1905902 m!2337959))

(assert (=> d!582754 d!582838))

(declare-fun d!582840 () Bool)

(declare-fun c!310494 () Bool)

(assert (=> d!582840 (= c!310494 (is-Nil!21461 lt!728438))))

(declare-fun e!1217369 () (Set C!10638))

(assert (=> d!582840 (= (content!3142 lt!728438) e!1217369)))

(declare-fun b!1905903 () Bool)

(assert (=> b!1905903 (= e!1217369 (as set.empty (Set C!10638)))))

(declare-fun b!1905904 () Bool)

(assert (=> b!1905904 (= e!1217369 (set.union (set.insert (h!26862 lt!728438) (as set.empty (Set C!10638))) (content!3142 (t!177356 lt!728438))))))

(assert (= (and d!582840 c!310494) b!1905903))

(assert (= (and d!582840 (not c!310494)) b!1905904))

(declare-fun m!2337961 () Bool)

(assert (=> b!1905904 m!2337961))

(assert (=> b!1905904 m!2337923))

(assert (=> d!582754 d!582840))

(declare-fun d!582842 () Bool)

(declare-fun c!310495 () Bool)

(assert (=> d!582842 (= c!310495 (is-Nil!21461 lt!728429))))

(declare-fun e!1217370 () (Set C!10638))

(assert (=> d!582842 (= (content!3142 lt!728429) e!1217370)))

(declare-fun b!1905905 () Bool)

(assert (=> b!1905905 (= e!1217370 (as set.empty (Set C!10638)))))

(declare-fun b!1905906 () Bool)

(assert (=> b!1905906 (= e!1217370 (set.union (set.insert (h!26862 lt!728429) (as set.empty (Set C!10638))) (content!3142 (t!177356 lt!728429))))))

(assert (= (and d!582842 c!310495) b!1905905))

(assert (= (and d!582842 (not c!310495)) b!1905906))

(declare-fun m!2337963 () Bool)

(assert (=> b!1905906 m!2337963))

(declare-fun m!2337965 () Bool)

(assert (=> b!1905906 m!2337965))

(assert (=> d!582754 d!582842))

(declare-fun b!1905907 () Bool)

(declare-fun e!1217375 () Bool)

(assert (=> b!1905907 (= e!1217375 (matchR!2532 (derivativeStep!1351 (regex!3821 (rule!6016 (_1!11568 (get!6665 lt!728554)))) (head!4421 (list!8725 (charsOf!2377 (_1!11568 (get!6665 lt!728554)))))) (tail!2947 (list!8725 (charsOf!2377 (_1!11568 (get!6665 lt!728554)))))))))

(declare-fun b!1905908 () Bool)

(declare-fun e!1217377 () Bool)

(declare-fun lt!728697 () Bool)

(declare-fun call!117413 () Bool)

(assert (=> b!1905908 (= e!1217377 (= lt!728697 call!117413))))

(declare-fun b!1905909 () Bool)

(declare-fun e!1217376 () Bool)

(assert (=> b!1905909 (= e!1217376 (not (= (head!4421 (list!8725 (charsOf!2377 (_1!11568 (get!6665 lt!728554))))) (c!310320 (regex!3821 (rule!6016 (_1!11568 (get!6665 lt!728554))))))))))

(declare-fun b!1905910 () Bool)

(assert (=> b!1905910 (= e!1217375 (nullable!1592 (regex!3821 (rule!6016 (_1!11568 (get!6665 lt!728554))))))))

(declare-fun b!1905911 () Bool)

(declare-fun e!1217374 () Bool)

(declare-fun e!1217372 () Bool)

(assert (=> b!1905911 (= e!1217374 e!1217372)))

(declare-fun res!851035 () Bool)

(assert (=> b!1905911 (=> (not res!851035) (not e!1217372))))

(assert (=> b!1905911 (= res!851035 (not lt!728697))))

(declare-fun d!582844 () Bool)

(assert (=> d!582844 e!1217377))

(declare-fun c!310496 () Bool)

(assert (=> d!582844 (= c!310496 (is-EmptyExpr!5246 (regex!3821 (rule!6016 (_1!11568 (get!6665 lt!728554))))))))

(assert (=> d!582844 (= lt!728697 e!1217375)))

(declare-fun c!310497 () Bool)

(assert (=> d!582844 (= c!310497 (isEmpty!13177 (list!8725 (charsOf!2377 (_1!11568 (get!6665 lt!728554))))))))

(assert (=> d!582844 (validRegex!2116 (regex!3821 (rule!6016 (_1!11568 (get!6665 lt!728554)))))))

(assert (=> d!582844 (= (matchR!2532 (regex!3821 (rule!6016 (_1!11568 (get!6665 lt!728554)))) (list!8725 (charsOf!2377 (_1!11568 (get!6665 lt!728554))))) lt!728697)))

(declare-fun b!1905912 () Bool)

(declare-fun res!851038 () Bool)

(declare-fun e!1217371 () Bool)

(assert (=> b!1905912 (=> (not res!851038) (not e!1217371))))

(assert (=> b!1905912 (= res!851038 (isEmpty!13177 (tail!2947 (list!8725 (charsOf!2377 (_1!11568 (get!6665 lt!728554)))))))))

(declare-fun b!1905913 () Bool)

(assert (=> b!1905913 (= e!1217371 (= (head!4421 (list!8725 (charsOf!2377 (_1!11568 (get!6665 lt!728554))))) (c!310320 (regex!3821 (rule!6016 (_1!11568 (get!6665 lt!728554)))))))))

(declare-fun b!1905914 () Bool)

(declare-fun e!1217373 () Bool)

(assert (=> b!1905914 (= e!1217373 (not lt!728697))))

(declare-fun b!1905915 () Bool)

(assert (=> b!1905915 (= e!1217377 e!1217373)))

(declare-fun c!310498 () Bool)

(assert (=> b!1905915 (= c!310498 (is-EmptyLang!5246 (regex!3821 (rule!6016 (_1!11568 (get!6665 lt!728554))))))))

(declare-fun b!1905916 () Bool)

(declare-fun res!851037 () Bool)

(assert (=> b!1905916 (=> res!851037 e!1217376)))

(assert (=> b!1905916 (= res!851037 (not (isEmpty!13177 (tail!2947 (list!8725 (charsOf!2377 (_1!11568 (get!6665 lt!728554))))))))))

(declare-fun b!1905917 () Bool)

(declare-fun res!851036 () Bool)

(assert (=> b!1905917 (=> (not res!851036) (not e!1217371))))

(assert (=> b!1905917 (= res!851036 (not call!117413))))

(declare-fun bm!117408 () Bool)

(assert (=> bm!117408 (= call!117413 (isEmpty!13177 (list!8725 (charsOf!2377 (_1!11568 (get!6665 lt!728554))))))))

(declare-fun b!1905918 () Bool)

(declare-fun res!851040 () Bool)

(assert (=> b!1905918 (=> res!851040 e!1217374)))

(assert (=> b!1905918 (= res!851040 e!1217371)))

(declare-fun res!851039 () Bool)

(assert (=> b!1905918 (=> (not res!851039) (not e!1217371))))

(assert (=> b!1905918 (= res!851039 lt!728697)))

(declare-fun b!1905919 () Bool)

(assert (=> b!1905919 (= e!1217372 e!1217376)))

(declare-fun res!851041 () Bool)

(assert (=> b!1905919 (=> res!851041 e!1217376)))

(assert (=> b!1905919 (= res!851041 call!117413)))

(declare-fun b!1905920 () Bool)

(declare-fun res!851042 () Bool)

(assert (=> b!1905920 (=> res!851042 e!1217374)))

(assert (=> b!1905920 (= res!851042 (not (is-ElementMatch!5246 (regex!3821 (rule!6016 (_1!11568 (get!6665 lt!728554)))))))))

(assert (=> b!1905920 (= e!1217373 e!1217374)))

(assert (= (and d!582844 c!310497) b!1905910))

(assert (= (and d!582844 (not c!310497)) b!1905907))

(assert (= (and d!582844 c!310496) b!1905908))

(assert (= (and d!582844 (not c!310496)) b!1905915))

(assert (= (and b!1905915 c!310498) b!1905914))

(assert (= (and b!1905915 (not c!310498)) b!1905920))

(assert (= (and b!1905920 (not res!851042)) b!1905918))

(assert (= (and b!1905918 res!851039) b!1905917))

(assert (= (and b!1905917 res!851036) b!1905912))

(assert (= (and b!1905912 res!851038) b!1905913))

(assert (= (and b!1905918 (not res!851040)) b!1905911))

(assert (= (and b!1905911 res!851035) b!1905919))

(assert (= (and b!1905919 (not res!851041)) b!1905916))

(assert (= (and b!1905916 (not res!851037)) b!1905909))

(assert (= (or b!1905908 b!1905917 b!1905919) bm!117408))

(assert (=> b!1905913 m!2337309))

(declare-fun m!2337967 () Bool)

(assert (=> b!1905913 m!2337967))

(assert (=> b!1905907 m!2337309))

(assert (=> b!1905907 m!2337967))

(assert (=> b!1905907 m!2337967))

(declare-fun m!2337969 () Bool)

(assert (=> b!1905907 m!2337969))

(assert (=> b!1905907 m!2337309))

(declare-fun m!2337971 () Bool)

(assert (=> b!1905907 m!2337971))

(assert (=> b!1905907 m!2337969))

(assert (=> b!1905907 m!2337971))

(declare-fun m!2337973 () Bool)

(assert (=> b!1905907 m!2337973))

(assert (=> b!1905912 m!2337309))

(assert (=> b!1905912 m!2337971))

(assert (=> b!1905912 m!2337971))

(declare-fun m!2337975 () Bool)

(assert (=> b!1905912 m!2337975))

(declare-fun m!2337977 () Bool)

(assert (=> b!1905910 m!2337977))

(assert (=> bm!117408 m!2337309))

(declare-fun m!2337979 () Bool)

(assert (=> bm!117408 m!2337979))

(assert (=> b!1905909 m!2337309))

(assert (=> b!1905909 m!2337967))

(assert (=> d!582844 m!2337309))

(assert (=> d!582844 m!2337979))

(declare-fun m!2337981 () Bool)

(assert (=> d!582844 m!2337981))

(assert (=> b!1905916 m!2337309))

(assert (=> b!1905916 m!2337971))

(assert (=> b!1905916 m!2337971))

(assert (=> b!1905916 m!2337975))

(assert (=> b!1905275 d!582844))

(declare-fun d!582846 () Bool)

(assert (=> d!582846 (= (get!6665 lt!728554) (v!26381 lt!728554))))

(assert (=> b!1905275 d!582846))

(declare-fun d!582848 () Bool)

(assert (=> d!582848 (= (list!8725 (charsOf!2377 (_1!11568 (get!6665 lt!728554)))) (list!8727 (c!310321 (charsOf!2377 (_1!11568 (get!6665 lt!728554))))))))

(declare-fun bs!413828 () Bool)

(assert (= bs!413828 d!582848))

(declare-fun m!2337983 () Bool)

(assert (=> bs!413828 m!2337983))

(assert (=> b!1905275 d!582848))

(declare-fun d!582850 () Bool)

(declare-fun lt!728698 () BalanceConc!14092)

(assert (=> d!582850 (= (list!8725 lt!728698) (originalCharacters!4628 (_1!11568 (get!6665 lt!728554))))))

(assert (=> d!582850 (= lt!728698 (dynLambda!10451 (toChars!5301 (transformation!3821 (rule!6016 (_1!11568 (get!6665 lt!728554))))) (value!120491 (_1!11568 (get!6665 lt!728554)))))))

(assert (=> d!582850 (= (charsOf!2377 (_1!11568 (get!6665 lt!728554))) lt!728698)))

(declare-fun b_lambda!62955 () Bool)

(assert (=> (not b_lambda!62955) (not d!582850)))

(declare-fun t!177477 () Bool)

(declare-fun tb!116457 () Bool)

(assert (=> (and b!1904950 (= (toChars!5301 (transformation!3821 (rule!6016 (h!26863 tokens!598)))) (toChars!5301 (transformation!3821 (rule!6016 (_1!11568 (get!6665 lt!728554)))))) t!177477) tb!116457))

(declare-fun b!1905921 () Bool)

(declare-fun e!1217378 () Bool)

(declare-fun tp!544173 () Bool)

(assert (=> b!1905921 (= e!1217378 (and (inv!28565 (c!310321 (dynLambda!10451 (toChars!5301 (transformation!3821 (rule!6016 (_1!11568 (get!6665 lt!728554))))) (value!120491 (_1!11568 (get!6665 lt!728554)))))) tp!544173))))

(declare-fun result!140784 () Bool)

(assert (=> tb!116457 (= result!140784 (and (inv!28566 (dynLambda!10451 (toChars!5301 (transformation!3821 (rule!6016 (_1!11568 (get!6665 lt!728554))))) (value!120491 (_1!11568 (get!6665 lt!728554))))) e!1217378))))

(assert (= tb!116457 b!1905921))

(declare-fun m!2337985 () Bool)

(assert (=> b!1905921 m!2337985))

(declare-fun m!2337987 () Bool)

(assert (=> tb!116457 m!2337987))

(assert (=> d!582850 t!177477))

(declare-fun b_and!147995 () Bool)

(assert (= b_and!147927 (and (=> t!177477 result!140784) b_and!147995)))

(declare-fun tb!116459 () Bool)

(declare-fun t!177479 () Bool)

(assert (=> (and b!1904942 (= (toChars!5301 (transformation!3821 (rule!6016 separatorToken!354))) (toChars!5301 (transformation!3821 (rule!6016 (_1!11568 (get!6665 lt!728554)))))) t!177479) tb!116459))

(declare-fun result!140786 () Bool)

(assert (= result!140786 result!140784))

(assert (=> d!582850 t!177479))

(declare-fun b_and!147997 () Bool)

(assert (= b_and!147925 (and (=> t!177479 result!140786) b_and!147997)))

(declare-fun t!177481 () Bool)

(declare-fun tb!116461 () Bool)

(assert (=> (and b!1904943 (= (toChars!5301 (transformation!3821 (h!26864 rules!3198))) (toChars!5301 (transformation!3821 (rule!6016 (_1!11568 (get!6665 lt!728554)))))) t!177481) tb!116461))

(declare-fun result!140788 () Bool)

(assert (= result!140788 result!140784))

(assert (=> d!582850 t!177481))

(declare-fun b_and!147999 () Bool)

(assert (= b_and!147929 (and (=> t!177481 result!140788) b_and!147999)))

(declare-fun tb!116463 () Bool)

(declare-fun t!177483 () Bool)

(assert (=> (and b!1905625 (= (toChars!5301 (transformation!3821 (h!26864 (t!177358 rules!3198)))) (toChars!5301 (transformation!3821 (rule!6016 (_1!11568 (get!6665 lt!728554)))))) t!177483) tb!116463))

(declare-fun result!140790 () Bool)

(assert (= result!140790 result!140784))

(assert (=> d!582850 t!177483))

(declare-fun b_and!148001 () Bool)

(assert (= b_and!147949 (and (=> t!177483 result!140790) b_and!148001)))

(declare-fun tb!116465 () Bool)

(declare-fun t!177485 () Bool)

(assert (=> (and b!1905591 (= (toChars!5301 (transformation!3821 (rule!6016 (h!26863 (t!177357 tokens!598))))) (toChars!5301 (transformation!3821 (rule!6016 (_1!11568 (get!6665 lt!728554)))))) t!177485) tb!116465))

(declare-fun result!140792 () Bool)

(assert (= result!140792 result!140784))

(assert (=> d!582850 t!177485))

(declare-fun b_and!148003 () Bool)

(assert (= b_and!147945 (and (=> t!177485 result!140792) b_and!148003)))

(declare-fun m!2337989 () Bool)

(assert (=> d!582850 m!2337989))

(declare-fun m!2337991 () Bool)

(assert (=> d!582850 m!2337991))

(assert (=> b!1905275 d!582850))

(declare-fun d!582852 () Bool)

(assert (=> d!582852 true))

(declare-fun lt!728701 () Bool)

(assert (=> d!582852 (= lt!728701 (rulesValidInductive!1299 thiss!23328 rules!3198))))

(declare-fun lambda!74473 () Int)

(declare-fun forall!4509 (List!21545 Int) Bool)

(assert (=> d!582852 (= lt!728701 (forall!4509 rules!3198 lambda!74473))))

(assert (=> d!582852 (= (rulesValid!1429 thiss!23328 rules!3198) lt!728701)))

(declare-fun bs!413829 () Bool)

(assert (= bs!413829 d!582852))

(assert (=> bs!413829 m!2337183))

(declare-fun m!2337993 () Bool)

(assert (=> bs!413829 m!2337993))

(assert (=> d!582600 d!582852))

(declare-fun d!582854 () Bool)

(assert (=> d!582854 (= (list!8725 (ite c!310357 call!117349 call!117348)) (list!8727 (c!310321 (ite c!310357 call!117349 call!117348))))))

(declare-fun bs!413830 () Bool)

(assert (= bs!413830 d!582854))

(declare-fun m!2337995 () Bool)

(assert (=> bs!413830 m!2337995))

(assert (=> bm!117342 d!582854))

(declare-fun d!582856 () Bool)

(assert (=> d!582856 (= (isEmpty!13179 lt!728508) (not (is-Some!4346 lt!728508)))))

(assert (=> d!582628 d!582856))

(declare-fun d!582858 () Bool)

(declare-fun e!1217387 () Bool)

(assert (=> d!582858 e!1217387))

(declare-fun res!851051 () Bool)

(assert (=> d!582858 (=> res!851051 e!1217387)))

(declare-fun lt!728704 () Bool)

(assert (=> d!582858 (= res!851051 (not lt!728704))))

(declare-fun e!1217386 () Bool)

(assert (=> d!582858 (= lt!728704 e!1217386)))

(declare-fun res!851053 () Bool)

(assert (=> d!582858 (=> res!851053 e!1217386)))

(assert (=> d!582858 (= res!851053 (is-Nil!21461 lt!728437))))

(assert (=> d!582858 (= (isPrefix!1920 lt!728437 lt!728437) lt!728704)))

(declare-fun b!1905935 () Bool)

(assert (=> b!1905935 (= e!1217387 (>= (size!16931 lt!728437) (size!16931 lt!728437)))))

(declare-fun b!1905932 () Bool)

(declare-fun e!1217385 () Bool)

(assert (=> b!1905932 (= e!1217386 e!1217385)))

(declare-fun res!851054 () Bool)

(assert (=> b!1905932 (=> (not res!851054) (not e!1217385))))

(assert (=> b!1905932 (= res!851054 (not (is-Nil!21461 lt!728437)))))

(declare-fun b!1905933 () Bool)

(declare-fun res!851052 () Bool)

(assert (=> b!1905933 (=> (not res!851052) (not e!1217385))))

(assert (=> b!1905933 (= res!851052 (= (head!4421 lt!728437) (head!4421 lt!728437)))))

(declare-fun b!1905934 () Bool)

(assert (=> b!1905934 (= e!1217385 (isPrefix!1920 (tail!2947 lt!728437) (tail!2947 lt!728437)))))

(assert (= (and d!582858 (not res!851053)) b!1905932))

(assert (= (and b!1905932 res!851054) b!1905933))

(assert (= (and b!1905933 res!851052) b!1905934))

(assert (= (and d!582858 (not res!851051)) b!1905935))

(assert (=> b!1905935 m!2337201))

(assert (=> b!1905935 m!2337201))

(assert (=> b!1905933 m!2337133))

(assert (=> b!1905933 m!2337133))

(assert (=> b!1905934 m!2337137))

(assert (=> b!1905934 m!2337137))

(assert (=> b!1905934 m!2337137))

(assert (=> b!1905934 m!2337137))

(declare-fun m!2337997 () Bool)

(assert (=> b!1905934 m!2337997))

(assert (=> d!582628 d!582858))

(declare-fun d!582860 () Bool)

(assert (=> d!582860 (isPrefix!1920 lt!728437 lt!728437)))

(declare-fun lt!728707 () Unit!35791)

(declare-fun choose!11868 (List!21543 List!21543) Unit!35791)

(assert (=> d!582860 (= lt!728707 (choose!11868 lt!728437 lt!728437))))

(assert (=> d!582860 (= (lemmaIsPrefixRefl!1238 lt!728437 lt!728437) lt!728707)))

(declare-fun bs!413831 () Bool)

(assert (= bs!413831 d!582860))

(assert (=> bs!413831 m!2337179))

(declare-fun m!2337999 () Bool)

(assert (=> bs!413831 m!2337999))

(assert (=> d!582628 d!582860))

(declare-fun bs!413832 () Bool)

(declare-fun d!582862 () Bool)

(assert (= bs!413832 (and d!582862 d!582852)))

(declare-fun lambda!74476 () Int)

(assert (=> bs!413832 (= lambda!74476 lambda!74473)))

(assert (=> d!582862 true))

(declare-fun lt!728710 () Bool)

(assert (=> d!582862 (= lt!728710 (forall!4509 rules!3198 lambda!74476))))

(declare-fun e!1217393 () Bool)

(assert (=> d!582862 (= lt!728710 e!1217393)))

(declare-fun res!851059 () Bool)

(assert (=> d!582862 (=> res!851059 e!1217393)))

(assert (=> d!582862 (= res!851059 (not (is-Cons!21463 rules!3198)))))

(assert (=> d!582862 (= (rulesValidInductive!1299 thiss!23328 rules!3198) lt!728710)))

(declare-fun b!1905940 () Bool)

(declare-fun e!1217392 () Bool)

(assert (=> b!1905940 (= e!1217393 e!1217392)))

(declare-fun res!851060 () Bool)

(assert (=> b!1905940 (=> (not res!851060) (not e!1217392))))

(assert (=> b!1905940 (= res!851060 (ruleValid!1156 thiss!23328 (h!26864 rules!3198)))))

(declare-fun b!1905941 () Bool)

(assert (=> b!1905941 (= e!1217392 (rulesValidInductive!1299 thiss!23328 (t!177358 rules!3198)))))

(assert (= (and d!582862 (not res!851059)) b!1905940))

(assert (= (and b!1905940 res!851060) b!1905941))

(declare-fun m!2338001 () Bool)

(assert (=> d!582862 m!2338001))

(assert (=> b!1905940 m!2337885))

(declare-fun m!2338003 () Bool)

(assert (=> b!1905941 m!2338003))

(assert (=> d!582628 d!582862))

(declare-fun d!582864 () Bool)

(assert (=> d!582864 (= (get!6666 lt!728547) (v!26382 lt!728547))))

(assert (=> b!1905258 d!582864))

(declare-fun d!582866 () Bool)

(declare-fun c!310500 () Bool)

(assert (=> d!582866 (= c!310500 (is-IntegerValue!11871 (dynLambda!10456 (toValue!5442 (transformation!3821 (rule!6016 (h!26863 tokens!598)))) (seqFromList!2693 (originalCharacters!4628 (h!26863 tokens!598))))))))

(declare-fun e!1217395 () Bool)

(assert (=> d!582866 (= (inv!21 (dynLambda!10456 (toValue!5442 (transformation!3821 (rule!6016 (h!26863 tokens!598)))) (seqFromList!2693 (originalCharacters!4628 (h!26863 tokens!598))))) e!1217395)))

(declare-fun b!1905942 () Bool)

(declare-fun res!851061 () Bool)

(declare-fun e!1217394 () Bool)

(assert (=> b!1905942 (=> res!851061 e!1217394)))

(assert (=> b!1905942 (= res!851061 (not (is-IntegerValue!11873 (dynLambda!10456 (toValue!5442 (transformation!3821 (rule!6016 (h!26863 tokens!598)))) (seqFromList!2693 (originalCharacters!4628 (h!26863 tokens!598)))))))))

(declare-fun e!1217396 () Bool)

(assert (=> b!1905942 (= e!1217396 e!1217394)))

(declare-fun b!1905943 () Bool)

(assert (=> b!1905943 (= e!1217394 (inv!15 (dynLambda!10456 (toValue!5442 (transformation!3821 (rule!6016 (h!26863 tokens!598)))) (seqFromList!2693 (originalCharacters!4628 (h!26863 tokens!598))))))))

(declare-fun b!1905944 () Bool)

(assert (=> b!1905944 (= e!1217395 e!1217396)))

(declare-fun c!310499 () Bool)

(assert (=> b!1905944 (= c!310499 (is-IntegerValue!11872 (dynLambda!10456 (toValue!5442 (transformation!3821 (rule!6016 (h!26863 tokens!598)))) (seqFromList!2693 (originalCharacters!4628 (h!26863 tokens!598))))))))

(declare-fun b!1905945 () Bool)

(assert (=> b!1905945 (= e!1217395 (inv!16 (dynLambda!10456 (toValue!5442 (transformation!3821 (rule!6016 (h!26863 tokens!598)))) (seqFromList!2693 (originalCharacters!4628 (h!26863 tokens!598))))))))

(declare-fun b!1905946 () Bool)

(assert (=> b!1905946 (= e!1217396 (inv!17 (dynLambda!10456 (toValue!5442 (transformation!3821 (rule!6016 (h!26863 tokens!598)))) (seqFromList!2693 (originalCharacters!4628 (h!26863 tokens!598))))))))

(assert (= (and d!582866 c!310500) b!1905945))

(assert (= (and d!582866 (not c!310500)) b!1905944))

(assert (= (and b!1905944 c!310499) b!1905946))

(assert (= (and b!1905944 (not c!310499)) b!1905942))

(assert (= (and b!1905942 (not res!851061)) b!1905943))

(declare-fun m!2338005 () Bool)

(assert (=> b!1905943 m!2338005))

(declare-fun m!2338007 () Bool)

(assert (=> b!1905945 m!2338007))

(declare-fun m!2338009 () Bool)

(assert (=> b!1905946 m!2338009))

(assert (=> tb!116381 d!582866))

(declare-fun d!582868 () Bool)

(assert (=> d!582868 (= (isEmpty!13177 lt!728437) (is-Nil!21461 lt!728437))))

(assert (=> d!582612 d!582868))

(declare-fun b!1905947 () Bool)

(declare-fun e!1217401 () Bool)

(declare-fun e!1217402 () Bool)

(assert (=> b!1905947 (= e!1217401 e!1217402)))

(declare-fun c!310502 () Bool)

(assert (=> b!1905947 (= c!310502 (is-Union!5246 (regex!3821 lt!728431)))))

(declare-fun b!1905948 () Bool)

(declare-fun res!851062 () Bool)

(declare-fun e!1217400 () Bool)

(assert (=> b!1905948 (=> res!851062 e!1217400)))

(assert (=> b!1905948 (= res!851062 (not (is-Concat!9204 (regex!3821 lt!728431))))))

(assert (=> b!1905948 (= e!1217402 e!1217400)))

(declare-fun bm!117409 () Bool)

(declare-fun call!117415 () Bool)

(declare-fun call!117416 () Bool)

(assert (=> bm!117409 (= call!117415 call!117416)))

(declare-fun b!1905949 () Bool)

(declare-fun e!1217403 () Bool)

(assert (=> b!1905949 (= e!1217403 e!1217401)))

(declare-fun c!310501 () Bool)

(assert (=> b!1905949 (= c!310501 (is-Star!5246 (regex!3821 lt!728431)))))

(declare-fun b!1905950 () Bool)

(declare-fun e!1217399 () Bool)

(assert (=> b!1905950 (= e!1217399 call!117416)))

(declare-fun b!1905951 () Bool)

(declare-fun e!1217397 () Bool)

(assert (=> b!1905951 (= e!1217397 call!117415)))

(declare-fun bm!117410 () Bool)

(declare-fun call!117414 () Bool)

(assert (=> bm!117410 (= call!117414 (validRegex!2116 (ite c!310502 (regOne!11005 (regex!3821 lt!728431)) (regOne!11004 (regex!3821 lt!728431)))))))

(declare-fun b!1905952 () Bool)

(declare-fun e!1217398 () Bool)

(assert (=> b!1905952 (= e!1217398 call!117415)))

(declare-fun b!1905953 () Bool)

(declare-fun res!851064 () Bool)

(assert (=> b!1905953 (=> (not res!851064) (not e!1217398))))

(assert (=> b!1905953 (= res!851064 call!117414)))

(assert (=> b!1905953 (= e!1217402 e!1217398)))

(declare-fun d!582870 () Bool)

(declare-fun res!851063 () Bool)

(assert (=> d!582870 (=> res!851063 e!1217403)))

(assert (=> d!582870 (= res!851063 (is-ElementMatch!5246 (regex!3821 lt!728431)))))

(assert (=> d!582870 (= (validRegex!2116 (regex!3821 lt!728431)) e!1217403)))

(declare-fun bm!117411 () Bool)

(assert (=> bm!117411 (= call!117416 (validRegex!2116 (ite c!310501 (reg!5575 (regex!3821 lt!728431)) (ite c!310502 (regTwo!11005 (regex!3821 lt!728431)) (regTwo!11004 (regex!3821 lt!728431))))))))

(declare-fun b!1905954 () Bool)

(assert (=> b!1905954 (= e!1217401 e!1217399)))

(declare-fun res!851065 () Bool)

(assert (=> b!1905954 (= res!851065 (not (nullable!1592 (reg!5575 (regex!3821 lt!728431)))))))

(assert (=> b!1905954 (=> (not res!851065) (not e!1217399))))

(declare-fun b!1905955 () Bool)

(assert (=> b!1905955 (= e!1217400 e!1217397)))

(declare-fun res!851066 () Bool)

(assert (=> b!1905955 (=> (not res!851066) (not e!1217397))))

(assert (=> b!1905955 (= res!851066 call!117414)))

(assert (= (and d!582870 (not res!851063)) b!1905949))

(assert (= (and b!1905949 c!310501) b!1905954))

(assert (= (and b!1905949 (not c!310501)) b!1905947))

(assert (= (and b!1905954 res!851065) b!1905950))

(assert (= (and b!1905947 c!310502) b!1905953))

(assert (= (and b!1905947 (not c!310502)) b!1905948))

(assert (= (and b!1905953 res!851064) b!1905952))

(assert (= (and b!1905948 (not res!851062)) b!1905955))

(assert (= (and b!1905955 res!851066) b!1905951))

(assert (= (or b!1905953 b!1905955) bm!117410))

(assert (= (or b!1905952 b!1905951) bm!117409))

(assert (= (or b!1905950 bm!117409) bm!117411))

(declare-fun m!2338011 () Bool)

(assert (=> bm!117410 m!2338011))

(declare-fun m!2338013 () Bool)

(assert (=> bm!117411 m!2338013))

(declare-fun m!2338015 () Bool)

(assert (=> b!1905954 m!2338015))

(assert (=> d!582612 d!582870))

(declare-fun b!1905956 () Bool)

(declare-fun e!1217408 () Bool)

(assert (=> b!1905956 (= e!1217408 (matchR!2532 (derivativeStep!1351 (derivativeStep!1351 (regex!3821 lt!728431) (head!4421 lt!728437)) (head!4421 (tail!2947 lt!728437))) (tail!2947 (tail!2947 lt!728437))))))

(declare-fun b!1905957 () Bool)

(declare-fun e!1217410 () Bool)

(declare-fun lt!728711 () Bool)

(declare-fun call!117417 () Bool)

(assert (=> b!1905957 (= e!1217410 (= lt!728711 call!117417))))

(declare-fun b!1905958 () Bool)

(declare-fun e!1217409 () Bool)

(assert (=> b!1905958 (= e!1217409 (not (= (head!4421 (tail!2947 lt!728437)) (c!310320 (derivativeStep!1351 (regex!3821 lt!728431) (head!4421 lt!728437))))))))

(declare-fun b!1905959 () Bool)

(assert (=> b!1905959 (= e!1217408 (nullable!1592 (derivativeStep!1351 (regex!3821 lt!728431) (head!4421 lt!728437))))))

(declare-fun b!1905960 () Bool)

(declare-fun e!1217407 () Bool)

(declare-fun e!1217405 () Bool)

(assert (=> b!1905960 (= e!1217407 e!1217405)))

(declare-fun res!851067 () Bool)

(assert (=> b!1905960 (=> (not res!851067) (not e!1217405))))

(assert (=> b!1905960 (= res!851067 (not lt!728711))))

(declare-fun d!582872 () Bool)

(assert (=> d!582872 e!1217410))

(declare-fun c!310503 () Bool)

(assert (=> d!582872 (= c!310503 (is-EmptyExpr!5246 (derivativeStep!1351 (regex!3821 lt!728431) (head!4421 lt!728437))))))

(assert (=> d!582872 (= lt!728711 e!1217408)))

(declare-fun c!310504 () Bool)

(assert (=> d!582872 (= c!310504 (isEmpty!13177 (tail!2947 lt!728437)))))

(assert (=> d!582872 (validRegex!2116 (derivativeStep!1351 (regex!3821 lt!728431) (head!4421 lt!728437)))))

(assert (=> d!582872 (= (matchR!2532 (derivativeStep!1351 (regex!3821 lt!728431) (head!4421 lt!728437)) (tail!2947 lt!728437)) lt!728711)))

(declare-fun b!1905961 () Bool)

(declare-fun res!851070 () Bool)

(declare-fun e!1217404 () Bool)

(assert (=> b!1905961 (=> (not res!851070) (not e!1217404))))

(assert (=> b!1905961 (= res!851070 (isEmpty!13177 (tail!2947 (tail!2947 lt!728437))))))

(declare-fun b!1905962 () Bool)

(assert (=> b!1905962 (= e!1217404 (= (head!4421 (tail!2947 lt!728437)) (c!310320 (derivativeStep!1351 (regex!3821 lt!728431) (head!4421 lt!728437)))))))

(declare-fun b!1905963 () Bool)

(declare-fun e!1217406 () Bool)

(assert (=> b!1905963 (= e!1217406 (not lt!728711))))

(declare-fun b!1905964 () Bool)

(assert (=> b!1905964 (= e!1217410 e!1217406)))

(declare-fun c!310505 () Bool)

(assert (=> b!1905964 (= c!310505 (is-EmptyLang!5246 (derivativeStep!1351 (regex!3821 lt!728431) (head!4421 lt!728437))))))

(declare-fun b!1905965 () Bool)

(declare-fun res!851069 () Bool)

(assert (=> b!1905965 (=> res!851069 e!1217409)))

(assert (=> b!1905965 (= res!851069 (not (isEmpty!13177 (tail!2947 (tail!2947 lt!728437)))))))

(declare-fun b!1905966 () Bool)

(declare-fun res!851068 () Bool)

(assert (=> b!1905966 (=> (not res!851068) (not e!1217404))))

(assert (=> b!1905966 (= res!851068 (not call!117417))))

(declare-fun bm!117412 () Bool)

(assert (=> bm!117412 (= call!117417 (isEmpty!13177 (tail!2947 lt!728437)))))

(declare-fun b!1905967 () Bool)

(declare-fun res!851072 () Bool)

(assert (=> b!1905967 (=> res!851072 e!1217407)))

(assert (=> b!1905967 (= res!851072 e!1217404)))

(declare-fun res!851071 () Bool)

(assert (=> b!1905967 (=> (not res!851071) (not e!1217404))))

(assert (=> b!1905967 (= res!851071 lt!728711)))

(declare-fun b!1905968 () Bool)

(assert (=> b!1905968 (= e!1217405 e!1217409)))

(declare-fun res!851073 () Bool)

(assert (=> b!1905968 (=> res!851073 e!1217409)))

(assert (=> b!1905968 (= res!851073 call!117417)))

(declare-fun b!1905969 () Bool)

(declare-fun res!851074 () Bool)

(assert (=> b!1905969 (=> res!851074 e!1217407)))

(assert (=> b!1905969 (= res!851074 (not (is-ElementMatch!5246 (derivativeStep!1351 (regex!3821 lt!728431) (head!4421 lt!728437)))))))

(assert (=> b!1905969 (= e!1217406 e!1217407)))

(assert (= (and d!582872 c!310504) b!1905959))

(assert (= (and d!582872 (not c!310504)) b!1905956))

(assert (= (and d!582872 c!310503) b!1905957))

(assert (= (and d!582872 (not c!310503)) b!1905964))

(assert (= (and b!1905964 c!310505) b!1905963))

(assert (= (and b!1905964 (not c!310505)) b!1905969))

(assert (= (and b!1905969 (not res!851074)) b!1905967))

(assert (= (and b!1905967 res!851071) b!1905966))

(assert (= (and b!1905966 res!851068) b!1905961))

(assert (= (and b!1905961 res!851070) b!1905962))

(assert (= (and b!1905967 (not res!851072)) b!1905960))

(assert (= (and b!1905960 res!851067) b!1905968))

(assert (= (and b!1905968 (not res!851073)) b!1905965))

(assert (= (and b!1905965 (not res!851069)) b!1905958))

(assert (= (or b!1905957 b!1905966 b!1905968) bm!117412))

(assert (=> b!1905962 m!2337137))

(declare-fun m!2338017 () Bool)

(assert (=> b!1905962 m!2338017))

(assert (=> b!1905956 m!2337137))

(assert (=> b!1905956 m!2338017))

(assert (=> b!1905956 m!2337135))

(assert (=> b!1905956 m!2338017))

(declare-fun m!2338019 () Bool)

(assert (=> b!1905956 m!2338019))

(assert (=> b!1905956 m!2337137))

(declare-fun m!2338021 () Bool)

(assert (=> b!1905956 m!2338021))

(assert (=> b!1905956 m!2338019))

(assert (=> b!1905956 m!2338021))

(declare-fun m!2338023 () Bool)

(assert (=> b!1905956 m!2338023))

(assert (=> b!1905961 m!2337137))

(assert (=> b!1905961 m!2338021))

(assert (=> b!1905961 m!2338021))

(declare-fun m!2338025 () Bool)

(assert (=> b!1905961 m!2338025))

(assert (=> b!1905959 m!2337135))

(declare-fun m!2338027 () Bool)

(assert (=> b!1905959 m!2338027))

(assert (=> bm!117412 m!2337137))

(assert (=> bm!117412 m!2337141))

(assert (=> b!1905958 m!2337137))

(assert (=> b!1905958 m!2338017))

(assert (=> d!582872 m!2337137))

(assert (=> d!582872 m!2337141))

(assert (=> d!582872 m!2337135))

(declare-fun m!2338029 () Bool)

(assert (=> d!582872 m!2338029))

(assert (=> b!1905965 m!2337137))

(assert (=> b!1905965 m!2338021))

(assert (=> b!1905965 m!2338021))

(assert (=> b!1905965 m!2338025))

(assert (=> b!1905113 d!582872))

(declare-fun bm!117421 () Bool)

(declare-fun call!117428 () Regex!5246)

(declare-fun call!117427 () Regex!5246)

(assert (=> bm!117421 (= call!117428 call!117427)))

(declare-fun b!1905991 () Bool)

(declare-fun e!1217421 () Regex!5246)

(assert (=> b!1905991 (= e!1217421 (Concat!9204 call!117428 (regex!3821 lt!728431)))))

(declare-fun b!1905992 () Bool)

(declare-fun e!1217423 () Regex!5246)

(declare-fun call!117429 () Regex!5246)

(assert (=> b!1905992 (= e!1217423 (Union!5246 call!117429 call!117427))))

(declare-fun b!1905993 () Bool)

(declare-fun e!1217425 () Regex!5246)

(assert (=> b!1905993 (= e!1217425 EmptyLang!5246)))

(declare-fun c!310516 () Bool)

(declare-fun c!310518 () Bool)

(declare-fun bm!117422 () Bool)

(declare-fun c!310517 () Bool)

(assert (=> bm!117422 (= call!117427 (derivativeStep!1351 (ite c!310518 (regTwo!11005 (regex!3821 lt!728431)) (ite c!310517 (reg!5575 (regex!3821 lt!728431)) (ite c!310516 (regTwo!11004 (regex!3821 lt!728431)) (regOne!11004 (regex!3821 lt!728431))))) (head!4421 lt!728437)))))

(declare-fun b!1905994 () Bool)

(assert (=> b!1905994 (= e!1217423 e!1217421)))

(assert (=> b!1905994 (= c!310517 (is-Star!5246 (regex!3821 lt!728431)))))

(declare-fun bm!117423 () Bool)

(assert (=> bm!117423 (= call!117429 (derivativeStep!1351 (ite c!310518 (regOne!11005 (regex!3821 lt!728431)) (regOne!11004 (regex!3821 lt!728431))) (head!4421 lt!728437)))))

(declare-fun b!1905995 () Bool)

(declare-fun e!1217424 () Regex!5246)

(assert (=> b!1905995 (= e!1217425 e!1217424)))

(declare-fun c!310519 () Bool)

(assert (=> b!1905995 (= c!310519 (is-ElementMatch!5246 (regex!3821 lt!728431)))))

(declare-fun b!1905990 () Bool)

(declare-fun e!1217422 () Regex!5246)

(declare-fun call!117426 () Regex!5246)

(assert (=> b!1905990 (= e!1217422 (Union!5246 (Concat!9204 call!117426 (regTwo!11004 (regex!3821 lt!728431))) EmptyLang!5246))))

(declare-fun d!582874 () Bool)

(declare-fun lt!728714 () Regex!5246)

(assert (=> d!582874 (validRegex!2116 lt!728714)))

(assert (=> d!582874 (= lt!728714 e!1217425)))

(declare-fun c!310520 () Bool)

(assert (=> d!582874 (= c!310520 (or (is-EmptyExpr!5246 (regex!3821 lt!728431)) (is-EmptyLang!5246 (regex!3821 lt!728431))))))

(assert (=> d!582874 (validRegex!2116 (regex!3821 lt!728431))))

(assert (=> d!582874 (= (derivativeStep!1351 (regex!3821 lt!728431) (head!4421 lt!728437)) lt!728714)))

(declare-fun b!1905996 () Bool)

(assert (=> b!1905996 (= e!1217422 (Union!5246 (Concat!9204 call!117429 (regTwo!11004 (regex!3821 lt!728431))) call!117426))))

(declare-fun b!1905997 () Bool)

(assert (=> b!1905997 (= c!310518 (is-Union!5246 (regex!3821 lt!728431)))))

(assert (=> b!1905997 (= e!1217424 e!1217423)))

(declare-fun b!1905998 () Bool)

(assert (=> b!1905998 (= c!310516 (nullable!1592 (regOne!11004 (regex!3821 lt!728431))))))

(assert (=> b!1905998 (= e!1217421 e!1217422)))

(declare-fun bm!117424 () Bool)

(assert (=> bm!117424 (= call!117426 call!117428)))

(declare-fun b!1905999 () Bool)

(assert (=> b!1905999 (= e!1217424 (ite (= (head!4421 lt!728437) (c!310320 (regex!3821 lt!728431))) EmptyExpr!5246 EmptyLang!5246))))

(assert (= (and d!582874 c!310520) b!1905993))

(assert (= (and d!582874 (not c!310520)) b!1905995))

(assert (= (and b!1905995 c!310519) b!1905999))

(assert (= (and b!1905995 (not c!310519)) b!1905997))

(assert (= (and b!1905997 c!310518) b!1905992))

(assert (= (and b!1905997 (not c!310518)) b!1905994))

(assert (= (and b!1905994 c!310517) b!1905991))

(assert (= (and b!1905994 (not c!310517)) b!1905998))

(assert (= (and b!1905998 c!310516) b!1905996))

(assert (= (and b!1905998 (not c!310516)) b!1905990))

(assert (= (or b!1905996 b!1905990) bm!117424))

(assert (= (or b!1905991 bm!117424) bm!117421))

(assert (= (or b!1905992 b!1905996) bm!117423))

(assert (= (or b!1905992 bm!117421) bm!117422))

(assert (=> bm!117422 m!2337133))

(declare-fun m!2338031 () Bool)

(assert (=> bm!117422 m!2338031))

(assert (=> bm!117423 m!2337133))

(declare-fun m!2338033 () Bool)

(assert (=> bm!117423 m!2338033))

(declare-fun m!2338035 () Bool)

(assert (=> d!582874 m!2338035))

(assert (=> d!582874 m!2337147))

(declare-fun m!2338037 () Bool)

(assert (=> b!1905998 m!2338037))

(assert (=> b!1905113 d!582874))

(declare-fun d!582876 () Bool)

(assert (=> d!582876 (= (head!4421 lt!728437) (h!26862 lt!728437))))

(assert (=> b!1905113 d!582876))

(declare-fun d!582878 () Bool)

(assert (=> d!582878 (= (tail!2947 lt!728437) (t!177356 lt!728437))))

(assert (=> b!1905113 d!582878))

(declare-fun d!582880 () Bool)

(declare-fun c!310522 () Bool)

(assert (=> d!582880 (= c!310522 (is-IntegerValue!11871 (dynLambda!10456 (toValue!5442 (transformation!3821 (rule!6016 (h!26863 tokens!598)))) lt!728440)))))

(declare-fun e!1217427 () Bool)

(assert (=> d!582880 (= (inv!21 (dynLambda!10456 (toValue!5442 (transformation!3821 (rule!6016 (h!26863 tokens!598)))) lt!728440)) e!1217427)))

(declare-fun b!1906000 () Bool)

(declare-fun res!851075 () Bool)

(declare-fun e!1217426 () Bool)

(assert (=> b!1906000 (=> res!851075 e!1217426)))

(assert (=> b!1906000 (= res!851075 (not (is-IntegerValue!11873 (dynLambda!10456 (toValue!5442 (transformation!3821 (rule!6016 (h!26863 tokens!598)))) lt!728440))))))

(declare-fun e!1217428 () Bool)

(assert (=> b!1906000 (= e!1217428 e!1217426)))

(declare-fun b!1906001 () Bool)

(assert (=> b!1906001 (= e!1217426 (inv!15 (dynLambda!10456 (toValue!5442 (transformation!3821 (rule!6016 (h!26863 tokens!598)))) lt!728440)))))

(declare-fun b!1906002 () Bool)

(assert (=> b!1906002 (= e!1217427 e!1217428)))

(declare-fun c!310521 () Bool)

(assert (=> b!1906002 (= c!310521 (is-IntegerValue!11872 (dynLambda!10456 (toValue!5442 (transformation!3821 (rule!6016 (h!26863 tokens!598)))) lt!728440)))))

(declare-fun b!1906003 () Bool)

(assert (=> b!1906003 (= e!1217427 (inv!16 (dynLambda!10456 (toValue!5442 (transformation!3821 (rule!6016 (h!26863 tokens!598)))) lt!728440)))))

(declare-fun b!1906004 () Bool)

(assert (=> b!1906004 (= e!1217428 (inv!17 (dynLambda!10456 (toValue!5442 (transformation!3821 (rule!6016 (h!26863 tokens!598)))) lt!728440)))))

(assert (= (and d!582880 c!310522) b!1906003))

(assert (= (and d!582880 (not c!310522)) b!1906002))

(assert (= (and b!1906002 c!310521) b!1906004))

(assert (= (and b!1906002 (not c!310521)) b!1906000))

(assert (= (and b!1906000 (not res!851075)) b!1906001))

(declare-fun m!2338039 () Bool)

(assert (=> b!1906001 m!2338039))

(declare-fun m!2338041 () Bool)

(assert (=> b!1906003 m!2338041))

(declare-fun m!2338043 () Bool)

(assert (=> b!1906004 m!2338043))

(assert (=> tb!116375 d!582880))

(declare-fun d!582882 () Bool)

(assert (=> d!582882 (= (list!8725 (dynLambda!10451 (toChars!5301 (transformation!3821 (rule!6016 separatorToken!354))) (value!120491 separatorToken!354))) (list!8727 (c!310321 (dynLambda!10451 (toChars!5301 (transformation!3821 (rule!6016 separatorToken!354))) (value!120491 separatorToken!354)))))))

(declare-fun bs!413833 () Bool)

(assert (= bs!413833 d!582882))

(declare-fun m!2338045 () Bool)

(assert (=> bs!413833 m!2338045))

(assert (=> b!1905142 d!582882))

(declare-fun d!582884 () Bool)

(declare-fun lt!728715 () Int)

(assert (=> d!582884 (>= lt!728715 0)))

(declare-fun e!1217429 () Int)

(assert (=> d!582884 (= lt!728715 e!1217429)))

(declare-fun c!310523 () Bool)

(assert (=> d!582884 (= c!310523 (is-Nil!21461 lt!728532))))

(assert (=> d!582884 (= (size!16931 lt!728532) lt!728715)))

(declare-fun b!1906005 () Bool)

(assert (=> b!1906005 (= e!1217429 0)))

(declare-fun b!1906006 () Bool)

(assert (=> b!1906006 (= e!1217429 (+ 1 (size!16931 (t!177356 lt!728532))))))

(assert (= (and d!582884 c!310523) b!1906005))

(assert (= (and d!582884 (not c!310523)) b!1906006))

(declare-fun m!2338047 () Bool)

(assert (=> b!1906006 m!2338047))

(assert (=> b!1905235 d!582884))

(declare-fun d!582886 () Bool)

(declare-fun lt!728716 () Int)

(assert (=> d!582886 (>= lt!728716 0)))

(declare-fun e!1217430 () Int)

(assert (=> d!582886 (= lt!728716 e!1217430)))

(declare-fun c!310524 () Bool)

(assert (=> d!582886 (= c!310524 (is-Nil!21461 lt!728437))))

(assert (=> d!582886 (= (size!16931 lt!728437) lt!728716)))

(declare-fun b!1906007 () Bool)

(assert (=> b!1906007 (= e!1217430 0)))

(declare-fun b!1906008 () Bool)

(assert (=> b!1906008 (= e!1217430 (+ 1 (size!16931 (t!177356 lt!728437))))))

(assert (= (and d!582886 c!310524) b!1906007))

(assert (= (and d!582886 (not c!310524)) b!1906008))

(declare-fun m!2338049 () Bool)

(assert (=> b!1906008 m!2338049))

(assert (=> b!1905235 d!582886))

(assert (=> b!1905235 d!582824))

(declare-fun d!582888 () Bool)

(assert (=> d!582888 (= (isEmpty!13179 lt!728554) (not (is-Some!4346 lt!728554)))))

(assert (=> d!582654 d!582888))

(declare-fun d!582890 () Bool)

(declare-fun e!1217433 () Bool)

(assert (=> d!582890 e!1217433))

(declare-fun res!851076 () Bool)

(assert (=> d!582890 (=> res!851076 e!1217433)))

(declare-fun lt!728717 () Bool)

(assert (=> d!582890 (= res!851076 (not lt!728717))))

(declare-fun e!1217432 () Bool)

(assert (=> d!582890 (= lt!728717 e!1217432)))

(declare-fun res!851078 () Bool)

(assert (=> d!582890 (=> res!851078 e!1217432)))

(assert (=> d!582890 (= res!851078 (is-Nil!21461 (++!5766 lt!728437 lt!728429)))))

(assert (=> d!582890 (= (isPrefix!1920 (++!5766 lt!728437 lt!728429) (++!5766 lt!728437 lt!728429)) lt!728717)))

(declare-fun b!1906012 () Bool)

(assert (=> b!1906012 (= e!1217433 (>= (size!16931 (++!5766 lt!728437 lt!728429)) (size!16931 (++!5766 lt!728437 lt!728429))))))

(declare-fun b!1906009 () Bool)

(declare-fun e!1217431 () Bool)

(assert (=> b!1906009 (= e!1217432 e!1217431)))

(declare-fun res!851079 () Bool)

(assert (=> b!1906009 (=> (not res!851079) (not e!1217431))))

(assert (=> b!1906009 (= res!851079 (not (is-Nil!21461 (++!5766 lt!728437 lt!728429))))))

(declare-fun b!1906010 () Bool)

(declare-fun res!851077 () Bool)

(assert (=> b!1906010 (=> (not res!851077) (not e!1217431))))

(assert (=> b!1906010 (= res!851077 (= (head!4421 (++!5766 lt!728437 lt!728429)) (head!4421 (++!5766 lt!728437 lt!728429))))))

(declare-fun b!1906011 () Bool)

(assert (=> b!1906011 (= e!1217431 (isPrefix!1920 (tail!2947 (++!5766 lt!728437 lt!728429)) (tail!2947 (++!5766 lt!728437 lt!728429))))))

(assert (= (and d!582890 (not res!851078)) b!1906009))

(assert (= (and b!1906009 res!851079) b!1906010))

(assert (= (and b!1906010 res!851077) b!1906011))

(assert (= (and d!582890 (not res!851076)) b!1906012))

(assert (=> b!1906012 m!2336973))

(assert (=> b!1906012 m!2337317))

(assert (=> b!1906012 m!2336973))

(assert (=> b!1906012 m!2337317))

(assert (=> b!1906010 m!2336973))

(declare-fun m!2338051 () Bool)

(assert (=> b!1906010 m!2338051))

(assert (=> b!1906010 m!2336973))

(assert (=> b!1906010 m!2338051))

(assert (=> b!1906011 m!2336973))

(declare-fun m!2338053 () Bool)

(assert (=> b!1906011 m!2338053))

(assert (=> b!1906011 m!2336973))

(assert (=> b!1906011 m!2338053))

(assert (=> b!1906011 m!2338053))

(assert (=> b!1906011 m!2338053))

(declare-fun m!2338055 () Bool)

(assert (=> b!1906011 m!2338055))

(assert (=> d!582654 d!582890))

(declare-fun d!582892 () Bool)

(assert (=> d!582892 (isPrefix!1920 (++!5766 lt!728437 lt!728429) (++!5766 lt!728437 lt!728429))))

(declare-fun lt!728718 () Unit!35791)

(assert (=> d!582892 (= lt!728718 (choose!11868 (++!5766 lt!728437 lt!728429) (++!5766 lt!728437 lt!728429)))))

(assert (=> d!582892 (= (lemmaIsPrefixRefl!1238 (++!5766 lt!728437 lt!728429) (++!5766 lt!728437 lt!728429)) lt!728718)))

(declare-fun bs!413834 () Bool)

(assert (= bs!413834 d!582892))

(assert (=> bs!413834 m!2336973))

(assert (=> bs!413834 m!2336973))

(assert (=> bs!413834 m!2337297))

(assert (=> bs!413834 m!2336973))

(assert (=> bs!413834 m!2336973))

(declare-fun m!2338057 () Bool)

(assert (=> bs!413834 m!2338057))

(assert (=> d!582654 d!582892))

(assert (=> d!582654 d!582862))

(declare-fun b!1906013 () Bool)

(declare-fun e!1217436 () Bool)

(declare-fun lt!728722 () Option!4347)

(assert (=> b!1906013 (= e!1217436 (contains!3854 rules!3198 (rule!6016 (_1!11568 (get!6665 lt!728722)))))))

(declare-fun b!1906014 () Bool)

(declare-fun res!851081 () Bool)

(assert (=> b!1906014 (=> (not res!851081) (not e!1217436))))

(assert (=> b!1906014 (= res!851081 (= (++!5766 (list!8725 (charsOf!2377 (_1!11568 (get!6665 lt!728722)))) (_2!11568 (get!6665 lt!728722))) (++!5766 (list!8725 (charsOf!2377 (h!26863 (t!177357 tokens!598)))) lt!728529)))))

(declare-fun bm!117425 () Bool)

(declare-fun call!117430 () Option!4347)

(assert (=> bm!117425 (= call!117430 (maxPrefixOneRule!1202 thiss!23328 (h!26864 rules!3198) (++!5766 (list!8725 (charsOf!2377 (h!26863 (t!177357 tokens!598)))) lt!728529)))))

(declare-fun b!1906015 () Bool)

(declare-fun e!1217435 () Option!4347)

(assert (=> b!1906015 (= e!1217435 call!117430)))

(declare-fun b!1906016 () Bool)

(declare-fun res!851080 () Bool)

(assert (=> b!1906016 (=> (not res!851080) (not e!1217436))))

(assert (=> b!1906016 (= res!851080 (= (value!120491 (_1!11568 (get!6665 lt!728722))) (apply!5629 (transformation!3821 (rule!6016 (_1!11568 (get!6665 lt!728722)))) (seqFromList!2693 (originalCharacters!4628 (_1!11568 (get!6665 lt!728722)))))))))

(declare-fun b!1906018 () Bool)

(declare-fun e!1217434 () Bool)

(assert (=> b!1906018 (= e!1217434 e!1217436)))

(declare-fun res!851083 () Bool)

(assert (=> b!1906018 (=> (not res!851083) (not e!1217436))))

(assert (=> b!1906018 (= res!851083 (isDefined!3646 lt!728722))))

(declare-fun b!1906019 () Bool)

(declare-fun res!851084 () Bool)

(assert (=> b!1906019 (=> (not res!851084) (not e!1217436))))

(assert (=> b!1906019 (= res!851084 (matchR!2532 (regex!3821 (rule!6016 (_1!11568 (get!6665 lt!728722)))) (list!8725 (charsOf!2377 (_1!11568 (get!6665 lt!728722))))))))

(declare-fun b!1906020 () Bool)

(declare-fun res!851082 () Bool)

(assert (=> b!1906020 (=> (not res!851082) (not e!1217436))))

(assert (=> b!1906020 (= res!851082 (= (list!8725 (charsOf!2377 (_1!11568 (get!6665 lt!728722)))) (originalCharacters!4628 (_1!11568 (get!6665 lt!728722)))))))

(declare-fun b!1906021 () Bool)

(declare-fun res!851086 () Bool)

(assert (=> b!1906021 (=> (not res!851086) (not e!1217436))))

(assert (=> b!1906021 (= res!851086 (< (size!16931 (_2!11568 (get!6665 lt!728722))) (size!16931 (++!5766 (list!8725 (charsOf!2377 (h!26863 (t!177357 tokens!598)))) lt!728529))))))

(declare-fun d!582894 () Bool)

(assert (=> d!582894 e!1217434))

(declare-fun res!851085 () Bool)

(assert (=> d!582894 (=> res!851085 e!1217434)))

(assert (=> d!582894 (= res!851085 (isEmpty!13179 lt!728722))))

(assert (=> d!582894 (= lt!728722 e!1217435)))

(declare-fun c!310525 () Bool)

(assert (=> d!582894 (= c!310525 (and (is-Cons!21463 rules!3198) (is-Nil!21463 (t!177358 rules!3198))))))

(declare-fun lt!728721 () Unit!35791)

(declare-fun lt!728720 () Unit!35791)

(assert (=> d!582894 (= lt!728721 lt!728720)))

(assert (=> d!582894 (isPrefix!1920 (++!5766 (list!8725 (charsOf!2377 (h!26863 (t!177357 tokens!598)))) lt!728529) (++!5766 (list!8725 (charsOf!2377 (h!26863 (t!177357 tokens!598)))) lt!728529))))

(assert (=> d!582894 (= lt!728720 (lemmaIsPrefixRefl!1238 (++!5766 (list!8725 (charsOf!2377 (h!26863 (t!177357 tokens!598)))) lt!728529) (++!5766 (list!8725 (charsOf!2377 (h!26863 (t!177357 tokens!598)))) lt!728529)))))

(assert (=> d!582894 (rulesValidInductive!1299 thiss!23328 rules!3198)))

(assert (=> d!582894 (= (maxPrefix!1880 thiss!23328 rules!3198 (++!5766 (list!8725 (charsOf!2377 (h!26863 (t!177357 tokens!598)))) lt!728529)) lt!728722)))

(declare-fun b!1906017 () Bool)

(declare-fun lt!728723 () Option!4347)

(declare-fun lt!728719 () Option!4347)

(assert (=> b!1906017 (= e!1217435 (ite (and (is-None!4346 lt!728723) (is-None!4346 lt!728719)) None!4346 (ite (is-None!4346 lt!728719) lt!728723 (ite (is-None!4346 lt!728723) lt!728719 (ite (>= (size!16929 (_1!11568 (v!26381 lt!728723))) (size!16929 (_1!11568 (v!26381 lt!728719)))) lt!728723 lt!728719)))))))

(assert (=> b!1906017 (= lt!728723 call!117430)))

(assert (=> b!1906017 (= lt!728719 (maxPrefix!1880 thiss!23328 (t!177358 rules!3198) (++!5766 (list!8725 (charsOf!2377 (h!26863 (t!177357 tokens!598)))) lt!728529)))))

(assert (= (and d!582894 c!310525) b!1906015))

(assert (= (and d!582894 (not c!310525)) b!1906017))

(assert (= (or b!1906015 b!1906017) bm!117425))

(assert (= (and d!582894 (not res!851085)) b!1906018))

(assert (= (and b!1906018 res!851083) b!1906020))

(assert (= (and b!1906020 res!851082) b!1906021))

(assert (= (and b!1906021 res!851086) b!1906014))

(assert (= (and b!1906014 res!851081) b!1906016))

(assert (= (and b!1906016 res!851080) b!1906019))

(assert (= (and b!1906019 res!851084) b!1906013))

(declare-fun m!2338059 () Bool)

(assert (=> d!582894 m!2338059))

(assert (=> d!582894 m!2337225))

(assert (=> d!582894 m!2337225))

(declare-fun m!2338061 () Bool)

(assert (=> d!582894 m!2338061))

(assert (=> d!582894 m!2337225))

(assert (=> d!582894 m!2337225))

(declare-fun m!2338063 () Bool)

(assert (=> d!582894 m!2338063))

(assert (=> d!582894 m!2337183))

(assert (=> bm!117425 m!2337225))

(declare-fun m!2338065 () Bool)

(assert (=> bm!117425 m!2338065))

(assert (=> b!1906017 m!2337225))

(declare-fun m!2338067 () Bool)

(assert (=> b!1906017 m!2338067))

(declare-fun m!2338069 () Bool)

(assert (=> b!1906019 m!2338069))

(declare-fun m!2338071 () Bool)

(assert (=> b!1906019 m!2338071))

(assert (=> b!1906019 m!2338071))

(declare-fun m!2338073 () Bool)

(assert (=> b!1906019 m!2338073))

(assert (=> b!1906019 m!2338073))

(declare-fun m!2338075 () Bool)

(assert (=> b!1906019 m!2338075))

(assert (=> b!1906014 m!2338069))

(assert (=> b!1906014 m!2338071))

(assert (=> b!1906014 m!2338071))

(assert (=> b!1906014 m!2338073))

(assert (=> b!1906014 m!2338073))

(declare-fun m!2338077 () Bool)

(assert (=> b!1906014 m!2338077))

(assert (=> b!1906020 m!2338069))

(assert (=> b!1906020 m!2338071))

(assert (=> b!1906020 m!2338071))

(assert (=> b!1906020 m!2338073))

(assert (=> b!1906021 m!2338069))

(declare-fun m!2338079 () Bool)

(assert (=> b!1906021 m!2338079))

(assert (=> b!1906021 m!2337225))

(declare-fun m!2338081 () Bool)

(assert (=> b!1906021 m!2338081))

(declare-fun m!2338083 () Bool)

(assert (=> b!1906018 m!2338083))

(assert (=> b!1906016 m!2338069))

(declare-fun m!2338085 () Bool)

(assert (=> b!1906016 m!2338085))

(assert (=> b!1906016 m!2338085))

(declare-fun m!2338087 () Bool)

(assert (=> b!1906016 m!2338087))

(assert (=> b!1906013 m!2338069))

(declare-fun m!2338089 () Bool)

(assert (=> b!1906013 m!2338089))

(assert (=> b!1905210 d!582894))

(declare-fun d!582896 () Bool)

(declare-fun lt!728724 () BalanceConc!14092)

(assert (=> d!582896 (= (list!8725 lt!728724) (originalCharacters!4628 (h!26863 (t!177357 tokens!598))))))

(assert (=> d!582896 (= lt!728724 (dynLambda!10451 (toChars!5301 (transformation!3821 (rule!6016 (h!26863 (t!177357 tokens!598))))) (value!120491 (h!26863 (t!177357 tokens!598)))))))

(assert (=> d!582896 (= (charsOf!2377 (h!26863 (t!177357 tokens!598))) lt!728724)))

(declare-fun b_lambda!62957 () Bool)

(assert (=> (not b_lambda!62957) (not d!582896)))

(declare-fun t!177487 () Bool)

(declare-fun tb!116467 () Bool)

(assert (=> (and b!1904943 (= (toChars!5301 (transformation!3821 (h!26864 rules!3198))) (toChars!5301 (transformation!3821 (rule!6016 (h!26863 (t!177357 tokens!598)))))) t!177487) tb!116467))

(declare-fun b!1906022 () Bool)

(declare-fun e!1217437 () Bool)

(declare-fun tp!544174 () Bool)

(assert (=> b!1906022 (= e!1217437 (and (inv!28565 (c!310321 (dynLambda!10451 (toChars!5301 (transformation!3821 (rule!6016 (h!26863 (t!177357 tokens!598))))) (value!120491 (h!26863 (t!177357 tokens!598)))))) tp!544174))))

(declare-fun result!140794 () Bool)

(assert (=> tb!116467 (= result!140794 (and (inv!28566 (dynLambda!10451 (toChars!5301 (transformation!3821 (rule!6016 (h!26863 (t!177357 tokens!598))))) (value!120491 (h!26863 (t!177357 tokens!598))))) e!1217437))))

(assert (= tb!116467 b!1906022))

(declare-fun m!2338091 () Bool)

(assert (=> b!1906022 m!2338091))

(declare-fun m!2338093 () Bool)

(assert (=> tb!116467 m!2338093))

(assert (=> d!582896 t!177487))

(declare-fun b_and!148005 () Bool)

(assert (= b_and!147999 (and (=> t!177487 result!140794) b_and!148005)))

(declare-fun tb!116469 () Bool)

(declare-fun t!177489 () Bool)

(assert (=> (and b!1905625 (= (toChars!5301 (transformation!3821 (h!26864 (t!177358 rules!3198)))) (toChars!5301 (transformation!3821 (rule!6016 (h!26863 (t!177357 tokens!598)))))) t!177489) tb!116469))

(declare-fun result!140796 () Bool)

(assert (= result!140796 result!140794))

(assert (=> d!582896 t!177489))

(declare-fun b_and!148007 () Bool)

(assert (= b_and!148001 (and (=> t!177489 result!140796) b_and!148007)))

(declare-fun t!177491 () Bool)

(declare-fun tb!116471 () Bool)

(assert (=> (and b!1905591 (= (toChars!5301 (transformation!3821 (rule!6016 (h!26863 (t!177357 tokens!598))))) (toChars!5301 (transformation!3821 (rule!6016 (h!26863 (t!177357 tokens!598)))))) t!177491) tb!116471))

(declare-fun result!140798 () Bool)

(assert (= result!140798 result!140794))

(assert (=> d!582896 t!177491))

(declare-fun b_and!148009 () Bool)

(assert (= b_and!148003 (and (=> t!177491 result!140798) b_and!148009)))

(declare-fun t!177493 () Bool)

(declare-fun tb!116473 () Bool)

(assert (=> (and b!1904942 (= (toChars!5301 (transformation!3821 (rule!6016 separatorToken!354))) (toChars!5301 (transformation!3821 (rule!6016 (h!26863 (t!177357 tokens!598)))))) t!177493) tb!116473))

(declare-fun result!140800 () Bool)

(assert (= result!140800 result!140794))

(assert (=> d!582896 t!177493))

(declare-fun b_and!148011 () Bool)

(assert (= b_and!147997 (and (=> t!177493 result!140800) b_and!148011)))

(declare-fun t!177495 () Bool)

(declare-fun tb!116475 () Bool)

(assert (=> (and b!1904950 (= (toChars!5301 (transformation!3821 (rule!6016 (h!26863 tokens!598)))) (toChars!5301 (transformation!3821 (rule!6016 (h!26863 (t!177357 tokens!598)))))) t!177495) tb!116475))

(declare-fun result!140802 () Bool)

(assert (= result!140802 result!140794))

(assert (=> d!582896 t!177495))

(declare-fun b_and!148013 () Bool)

(assert (= b_and!147995 (and (=> t!177495 result!140802) b_and!148013)))

(declare-fun m!2338095 () Bool)

(assert (=> d!582896 m!2338095))

(declare-fun m!2338097 () Bool)

(assert (=> d!582896 m!2338097))

(assert (=> b!1905210 d!582896))

(declare-fun d!582898 () Bool)

(declare-fun e!1217438 () Bool)

(assert (=> d!582898 e!1217438))

(declare-fun res!851087 () Bool)

(assert (=> d!582898 (=> (not res!851087) (not e!1217438))))

(declare-fun lt!728725 () List!21543)

(assert (=> d!582898 (= res!851087 (= (content!3142 lt!728725) (set.union (content!3142 (list!8725 (charsOf!2377 (h!26863 (t!177357 tokens!598))))) (content!3142 lt!728529))))))

(declare-fun e!1217439 () List!21543)

(assert (=> d!582898 (= lt!728725 e!1217439)))

(declare-fun c!310526 () Bool)

(assert (=> d!582898 (= c!310526 (is-Nil!21461 (list!8725 (charsOf!2377 (h!26863 (t!177357 tokens!598))))))))

(assert (=> d!582898 (= (++!5766 (list!8725 (charsOf!2377 (h!26863 (t!177357 tokens!598)))) lt!728529) lt!728725)))

(declare-fun b!1906025 () Bool)

(declare-fun res!851088 () Bool)

(assert (=> b!1906025 (=> (not res!851088) (not e!1217438))))

(assert (=> b!1906025 (= res!851088 (= (size!16931 lt!728725) (+ (size!16931 (list!8725 (charsOf!2377 (h!26863 (t!177357 tokens!598))))) (size!16931 lt!728529))))))

(declare-fun b!1906026 () Bool)

(assert (=> b!1906026 (= e!1217438 (or (not (= lt!728529 Nil!21461)) (= lt!728725 (list!8725 (charsOf!2377 (h!26863 (t!177357 tokens!598)))))))))

(declare-fun b!1906024 () Bool)

(assert (=> b!1906024 (= e!1217439 (Cons!21461 (h!26862 (list!8725 (charsOf!2377 (h!26863 (t!177357 tokens!598))))) (++!5766 (t!177356 (list!8725 (charsOf!2377 (h!26863 (t!177357 tokens!598))))) lt!728529)))))

(declare-fun b!1906023 () Bool)

(assert (=> b!1906023 (= e!1217439 lt!728529)))

(assert (= (and d!582898 c!310526) b!1906023))

(assert (= (and d!582898 (not c!310526)) b!1906024))

(assert (= (and d!582898 res!851087) b!1906025))

(assert (= (and b!1906025 res!851088) b!1906026))

(declare-fun m!2338099 () Bool)

(assert (=> d!582898 m!2338099))

(assert (=> d!582898 m!2337223))

(declare-fun m!2338101 () Bool)

(assert (=> d!582898 m!2338101))

(declare-fun m!2338103 () Bool)

(assert (=> d!582898 m!2338103))

(declare-fun m!2338105 () Bool)

(assert (=> b!1906025 m!2338105))

(assert (=> b!1906025 m!2337223))

(declare-fun m!2338107 () Bool)

(assert (=> b!1906025 m!2338107))

(declare-fun m!2338109 () Bool)

(assert (=> b!1906025 m!2338109))

(declare-fun m!2338111 () Bool)

(assert (=> b!1906024 m!2338111))

(assert (=> b!1905210 d!582898))

(declare-fun d!582900 () Bool)

(assert (=> d!582900 (dynLambda!10450 lambda!74446 (h!26863 (t!177357 tokens!598)))))

(declare-fun lt!728728 () Unit!35791)

(declare-fun choose!11869 (List!21544 Int Token!7194) Unit!35791)

(assert (=> d!582900 (= lt!728728 (choose!11869 (t!177357 tokens!598) lambda!74446 (h!26863 (t!177357 tokens!598))))))

(declare-fun e!1217442 () Bool)

(assert (=> d!582900 e!1217442))

(declare-fun res!851091 () Bool)

(assert (=> d!582900 (=> (not res!851091) (not e!1217442))))

(assert (=> d!582900 (= res!851091 (forall!4507 (t!177357 tokens!598) lambda!74446))))

(assert (=> d!582900 (= (forallContained!689 (t!177357 tokens!598) lambda!74446 (h!26863 (t!177357 tokens!598))) lt!728728)))

(declare-fun b!1906029 () Bool)

(declare-fun contains!3856 (List!21544 Token!7194) Bool)

(assert (=> b!1906029 (= e!1217442 (contains!3856 (t!177357 tokens!598) (h!26863 (t!177357 tokens!598))))))

(assert (= (and d!582900 res!851091) b!1906029))

(declare-fun b_lambda!62959 () Bool)

(assert (=> (not b_lambda!62959) (not d!582900)))

(declare-fun m!2338113 () Bool)

(assert (=> d!582900 m!2338113))

(declare-fun m!2338115 () Bool)

(assert (=> d!582900 m!2338115))

(declare-fun m!2338117 () Bool)

(assert (=> d!582900 m!2338117))

(declare-fun m!2338119 () Bool)

(assert (=> b!1906029 m!2338119))

(assert (=> b!1905210 d!582900))

(declare-fun bs!413835 () Bool)

(declare-fun b!1906036 () Bool)

(assert (= bs!413835 (and b!1906036 b!1904964)))

(declare-fun lambda!74477 () Int)

(assert (=> bs!413835 (not (= lambda!74477 lambda!74440))))

(declare-fun bs!413836 () Bool)

(assert (= bs!413836 (and b!1906036 b!1905210)))

(assert (=> bs!413836 (= lambda!74477 lambda!74446)))

(declare-fun bs!413837 () Bool)

(assert (= bs!413837 (and b!1906036 d!582692)))

(assert (=> bs!413837 (= lambda!74477 lambda!74458)))

(declare-fun b!1906040 () Bool)

(declare-fun e!1217449 () Bool)

(assert (=> b!1906040 (= e!1217449 true)))

(declare-fun b!1906039 () Bool)

(declare-fun e!1217448 () Bool)

(assert (=> b!1906039 (= e!1217448 e!1217449)))

(declare-fun b!1906038 () Bool)

(declare-fun e!1217447 () Bool)

(assert (=> b!1906038 (= e!1217447 e!1217448)))

(assert (=> b!1906036 e!1217447))

(assert (= b!1906039 b!1906040))

(assert (= b!1906038 b!1906039))

(assert (= (and b!1906036 (is-Cons!21463 rules!3198)) b!1906038))

(assert (=> b!1906040 (< (dynLambda!10452 order!13561 (toValue!5442 (transformation!3821 (h!26864 rules!3198)))) (dynLambda!10453 order!13563 lambda!74477))))

(assert (=> b!1906040 (< (dynLambda!10454 order!13565 (toChars!5301 (transformation!3821 (h!26864 rules!3198)))) (dynLambda!10453 order!13563 lambda!74477))))

(assert (=> b!1906036 true))

(declare-fun bm!117426 () Bool)

(declare-fun c!310528 () Bool)

(declare-fun call!117434 () BalanceConc!14092)

(declare-fun c!310530 () Bool)

(assert (=> bm!117426 (= call!117434 (charsOf!2377 (ite c!310530 (h!26863 (t!177357 (t!177357 tokens!598))) (ite c!310528 separatorToken!354 (h!26863 (t!177357 (t!177357 tokens!598)))))))))

(declare-fun call!117433 () BalanceConc!14092)

(declare-fun bm!117427 () Bool)

(declare-fun call!117432 () List!21543)

(assert (=> bm!117427 (= call!117432 (list!8725 (ite c!310530 call!117434 call!117433)))))

(declare-fun b!1906030 () Bool)

(declare-fun e!1217444 () List!21543)

(declare-fun call!117435 () List!21543)

(assert (=> b!1906030 (= e!1217444 call!117435)))

(declare-fun d!582902 () Bool)

(declare-fun c!310529 () Bool)

(assert (=> d!582902 (= c!310529 (is-Cons!21462 (t!177357 (t!177357 tokens!598))))))

(declare-fun e!1217445 () List!21543)

(assert (=> d!582902 (= (printWithSeparatorTokenWhenNeededList!477 thiss!23328 rules!3198 (t!177357 (t!177357 tokens!598)) separatorToken!354) e!1217445)))

(declare-fun bm!117428 () Bool)

(assert (=> bm!117428 (= call!117433 call!117434)))

(declare-fun b!1906031 () Bool)

(declare-fun e!1217446 () List!21543)

(assert (=> b!1906031 (= e!1217446 Nil!21461)))

(assert (=> b!1906031 (= (print!1450 thiss!23328 (singletonSeq!1848 (h!26863 (t!177357 (t!177357 tokens!598))))) (printTailRec!957 thiss!23328 (singletonSeq!1848 (h!26863 (t!177357 (t!177357 tokens!598)))) 0 (BalanceConc!14093 Empty!7138)))))

(declare-fun lt!728732 () Unit!35791)

(declare-fun Unit!35800 () Unit!35791)

(assert (=> b!1906031 (= lt!728732 Unit!35800)))

(declare-fun lt!728734 () List!21543)

(declare-fun lt!728733 () Unit!35791)

(declare-fun call!117431 () List!21543)

(assert (=> b!1906031 (= lt!728733 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!719 thiss!23328 rules!3198 call!117431 lt!728734))))

(assert (=> b!1906031 false))

(declare-fun lt!728729 () Unit!35791)

(declare-fun Unit!35801 () Unit!35791)

(assert (=> b!1906031 (= lt!728729 Unit!35801)))

(declare-fun b!1906032 () Bool)

(assert (=> b!1906032 (= e!1217445 Nil!21461)))

(declare-fun b!1906033 () Bool)

(assert (=> b!1906033 (= e!1217446 (++!5766 call!117435 lt!728734))))

(declare-fun b!1906034 () Bool)

(declare-fun e!1217443 () List!21543)

(assert (=> b!1906034 (= e!1217443 call!117432)))

(declare-fun b!1906035 () Bool)

(declare-fun lt!728731 () Option!4347)

(assert (=> b!1906035 (= c!310528 (and (is-Some!4346 lt!728731) (not (= (_1!11568 (v!26381 lt!728731)) (h!26863 (t!177357 (t!177357 tokens!598)))))))))

(assert (=> b!1906035 (= e!1217444 e!1217446)))

(declare-fun bm!117429 () Bool)

(assert (=> bm!117429 (= call!117431 call!117432)))

(assert (=> b!1906036 (= e!1217445 e!1217444)))

(declare-fun lt!728730 () Unit!35791)

(assert (=> b!1906036 (= lt!728730 (forallContained!689 (t!177357 (t!177357 tokens!598)) lambda!74477 (h!26863 (t!177357 (t!177357 tokens!598)))))))

(assert (=> b!1906036 (= lt!728734 (printWithSeparatorTokenWhenNeededList!477 thiss!23328 rules!3198 (t!177357 (t!177357 (t!177357 tokens!598))) separatorToken!354))))

(assert (=> b!1906036 (= lt!728731 (maxPrefix!1880 thiss!23328 rules!3198 (++!5766 (list!8725 (charsOf!2377 (h!26863 (t!177357 (t!177357 tokens!598))))) lt!728734)))))

(assert (=> b!1906036 (= c!310530 (and (is-Some!4346 lt!728731) (= (_1!11568 (v!26381 lt!728731)) (h!26863 (t!177357 (t!177357 tokens!598))))))))

(declare-fun b!1906037 () Bool)

(assert (=> b!1906037 (= e!1217443 (list!8725 (charsOf!2377 (h!26863 (t!177357 (t!177357 tokens!598))))))))

(declare-fun bm!117430 () Bool)

(declare-fun c!310527 () Bool)

(assert (=> bm!117430 (= c!310527 c!310530)))

(assert (=> bm!117430 (= call!117435 (++!5766 e!1217443 (ite c!310530 lt!728734 call!117431)))))

(assert (= (and d!582902 c!310529) b!1906036))

(assert (= (and d!582902 (not c!310529)) b!1906032))

(assert (= (and b!1906036 c!310530) b!1906030))

(assert (= (and b!1906036 (not c!310530)) b!1906035))

(assert (= (and b!1906035 c!310528) b!1906033))

(assert (= (and b!1906035 (not c!310528)) b!1906031))

(assert (= (or b!1906033 b!1906031) bm!117428))

(assert (= (or b!1906033 b!1906031) bm!117429))

(assert (= (or b!1906030 bm!117428) bm!117426))

(assert (= (or b!1906030 bm!117429) bm!117427))

(assert (= (or b!1906030 b!1906033) bm!117430))

(assert (= (and bm!117430 c!310527) b!1906034))

(assert (= (and bm!117430 (not c!310527)) b!1906037))

(declare-fun m!2338121 () Bool)

(assert (=> bm!117430 m!2338121))

(declare-fun m!2338123 () Bool)

(assert (=> bm!117426 m!2338123))

(declare-fun m!2338125 () Bool)

(assert (=> b!1906037 m!2338125))

(assert (=> b!1906037 m!2338125))

(declare-fun m!2338127 () Bool)

(assert (=> b!1906037 m!2338127))

(assert (=> b!1906036 m!2338127))

(declare-fun m!2338129 () Bool)

(assert (=> b!1906036 m!2338129))

(declare-fun m!2338131 () Bool)

(assert (=> b!1906036 m!2338131))

(declare-fun m!2338133 () Bool)

(assert (=> b!1906036 m!2338133))

(assert (=> b!1906036 m!2338125))

(assert (=> b!1906036 m!2338129))

(declare-fun m!2338135 () Bool)

(assert (=> b!1906036 m!2338135))

(assert (=> b!1906036 m!2338125))

(assert (=> b!1906036 m!2338127))

(declare-fun m!2338137 () Bool)

(assert (=> bm!117427 m!2338137))

(declare-fun m!2338139 () Bool)

(assert (=> b!1906031 m!2338139))

(assert (=> b!1906031 m!2338139))

(declare-fun m!2338141 () Bool)

(assert (=> b!1906031 m!2338141))

(assert (=> b!1906031 m!2338139))

(declare-fun m!2338143 () Bool)

(assert (=> b!1906031 m!2338143))

(declare-fun m!2338145 () Bool)

(assert (=> b!1906031 m!2338145))

(declare-fun m!2338147 () Bool)

(assert (=> b!1906033 m!2338147))

(assert (=> b!1905210 d!582902))

(declare-fun d!582904 () Bool)

(assert (=> d!582904 (= (list!8725 (charsOf!2377 (h!26863 (t!177357 tokens!598)))) (list!8727 (c!310321 (charsOf!2377 (h!26863 (t!177357 tokens!598))))))))

(declare-fun bs!413838 () Bool)

(assert (= bs!413838 d!582904))

(declare-fun m!2338149 () Bool)

(assert (=> bs!413838 m!2338149))

(assert (=> b!1905210 d!582904))

(declare-fun b!1906041 () Bool)

(declare-fun e!1217454 () Bool)

(assert (=> b!1906041 (= e!1217454 (matchR!2532 (derivativeStep!1351 (regex!3821 (rule!6016 (_1!11568 (get!6665 lt!728508)))) (head!4421 (list!8725 (charsOf!2377 (_1!11568 (get!6665 lt!728508)))))) (tail!2947 (list!8725 (charsOf!2377 (_1!11568 (get!6665 lt!728508)))))))))

(declare-fun b!1906042 () Bool)

(declare-fun e!1217456 () Bool)

(declare-fun lt!728735 () Bool)

(declare-fun call!117436 () Bool)

(assert (=> b!1906042 (= e!1217456 (= lt!728735 call!117436))))

(declare-fun b!1906043 () Bool)

(declare-fun e!1217455 () Bool)

(assert (=> b!1906043 (= e!1217455 (not (= (head!4421 (list!8725 (charsOf!2377 (_1!11568 (get!6665 lt!728508))))) (c!310320 (regex!3821 (rule!6016 (_1!11568 (get!6665 lt!728508))))))))))

(declare-fun b!1906044 () Bool)

(assert (=> b!1906044 (= e!1217454 (nullable!1592 (regex!3821 (rule!6016 (_1!11568 (get!6665 lt!728508))))))))

(declare-fun b!1906045 () Bool)

(declare-fun e!1217453 () Bool)

(declare-fun e!1217451 () Bool)

(assert (=> b!1906045 (= e!1217453 e!1217451)))

(declare-fun res!851092 () Bool)

(assert (=> b!1906045 (=> (not res!851092) (not e!1217451))))

(assert (=> b!1906045 (= res!851092 (not lt!728735))))

(declare-fun d!582906 () Bool)

(assert (=> d!582906 e!1217456))

(declare-fun c!310531 () Bool)

(assert (=> d!582906 (= c!310531 (is-EmptyExpr!5246 (regex!3821 (rule!6016 (_1!11568 (get!6665 lt!728508))))))))

(assert (=> d!582906 (= lt!728735 e!1217454)))

(declare-fun c!310532 () Bool)

(assert (=> d!582906 (= c!310532 (isEmpty!13177 (list!8725 (charsOf!2377 (_1!11568 (get!6665 lt!728508))))))))

(assert (=> d!582906 (validRegex!2116 (regex!3821 (rule!6016 (_1!11568 (get!6665 lt!728508)))))))

(assert (=> d!582906 (= (matchR!2532 (regex!3821 (rule!6016 (_1!11568 (get!6665 lt!728508)))) (list!8725 (charsOf!2377 (_1!11568 (get!6665 lt!728508))))) lt!728735)))

(declare-fun b!1906046 () Bool)

(declare-fun res!851095 () Bool)

(declare-fun e!1217450 () Bool)

(assert (=> b!1906046 (=> (not res!851095) (not e!1217450))))

(assert (=> b!1906046 (= res!851095 (isEmpty!13177 (tail!2947 (list!8725 (charsOf!2377 (_1!11568 (get!6665 lt!728508)))))))))

(declare-fun b!1906047 () Bool)

(assert (=> b!1906047 (= e!1217450 (= (head!4421 (list!8725 (charsOf!2377 (_1!11568 (get!6665 lt!728508))))) (c!310320 (regex!3821 (rule!6016 (_1!11568 (get!6665 lt!728508)))))))))

(declare-fun b!1906048 () Bool)

(declare-fun e!1217452 () Bool)

(assert (=> b!1906048 (= e!1217452 (not lt!728735))))

(declare-fun b!1906049 () Bool)

(assert (=> b!1906049 (= e!1217456 e!1217452)))

(declare-fun c!310533 () Bool)

(assert (=> b!1906049 (= c!310533 (is-EmptyLang!5246 (regex!3821 (rule!6016 (_1!11568 (get!6665 lt!728508))))))))

(declare-fun b!1906050 () Bool)

(declare-fun res!851094 () Bool)

(assert (=> b!1906050 (=> res!851094 e!1217455)))

(assert (=> b!1906050 (= res!851094 (not (isEmpty!13177 (tail!2947 (list!8725 (charsOf!2377 (_1!11568 (get!6665 lt!728508))))))))))

(declare-fun b!1906051 () Bool)

(declare-fun res!851093 () Bool)

(assert (=> b!1906051 (=> (not res!851093) (not e!1217450))))

(assert (=> b!1906051 (= res!851093 (not call!117436))))

(declare-fun bm!117431 () Bool)

(assert (=> bm!117431 (= call!117436 (isEmpty!13177 (list!8725 (charsOf!2377 (_1!11568 (get!6665 lt!728508))))))))

(declare-fun b!1906052 () Bool)

(declare-fun res!851097 () Bool)

(assert (=> b!1906052 (=> res!851097 e!1217453)))

(assert (=> b!1906052 (= res!851097 e!1217450)))

(declare-fun res!851096 () Bool)

(assert (=> b!1906052 (=> (not res!851096) (not e!1217450))))

(assert (=> b!1906052 (= res!851096 lt!728735)))

(declare-fun b!1906053 () Bool)

(assert (=> b!1906053 (= e!1217451 e!1217455)))

(declare-fun res!851098 () Bool)

(assert (=> b!1906053 (=> res!851098 e!1217455)))

(assert (=> b!1906053 (= res!851098 call!117436)))

(declare-fun b!1906054 () Bool)

(declare-fun res!851099 () Bool)

(assert (=> b!1906054 (=> res!851099 e!1217453)))

(assert (=> b!1906054 (= res!851099 (not (is-ElementMatch!5246 (regex!3821 (rule!6016 (_1!11568 (get!6665 lt!728508)))))))))

(assert (=> b!1906054 (= e!1217452 e!1217453)))

(assert (= (and d!582906 c!310532) b!1906044))

(assert (= (and d!582906 (not c!310532)) b!1906041))

(assert (= (and d!582906 c!310531) b!1906042))

(assert (= (and d!582906 (not c!310531)) b!1906049))

(assert (= (and b!1906049 c!310533) b!1906048))

(assert (= (and b!1906049 (not c!310533)) b!1906054))

(assert (= (and b!1906054 (not res!851099)) b!1906052))

(assert (= (and b!1906052 res!851096) b!1906051))

(assert (= (and b!1906051 res!851093) b!1906046))

(assert (= (and b!1906046 res!851095) b!1906047))

(assert (= (and b!1906052 (not res!851097)) b!1906045))

(assert (= (and b!1906045 res!851092) b!1906053))

(assert (= (and b!1906053 (not res!851098)) b!1906050))

(assert (= (and b!1906050 (not res!851094)) b!1906043))

(assert (= (or b!1906042 b!1906051 b!1906053) bm!117431))

(assert (=> b!1906047 m!2337193))

(declare-fun m!2338151 () Bool)

(assert (=> b!1906047 m!2338151))

(assert (=> b!1906041 m!2337193))

(assert (=> b!1906041 m!2338151))

(assert (=> b!1906041 m!2338151))

(declare-fun m!2338153 () Bool)

(assert (=> b!1906041 m!2338153))

(assert (=> b!1906041 m!2337193))

(declare-fun m!2338155 () Bool)

(assert (=> b!1906041 m!2338155))

(assert (=> b!1906041 m!2338153))

(assert (=> b!1906041 m!2338155))

(declare-fun m!2338157 () Bool)

(assert (=> b!1906041 m!2338157))

(assert (=> b!1906046 m!2337193))

(assert (=> b!1906046 m!2338155))

(assert (=> b!1906046 m!2338155))

(declare-fun m!2338159 () Bool)

(assert (=> b!1906046 m!2338159))

(declare-fun m!2338161 () Bool)

(assert (=> b!1906044 m!2338161))

(assert (=> bm!117431 m!2337193))

(declare-fun m!2338163 () Bool)

(assert (=> bm!117431 m!2338163))

(assert (=> b!1906043 m!2337193))

(assert (=> b!1906043 m!2338151))

(assert (=> d!582906 m!2337193))

(assert (=> d!582906 m!2338163))

(declare-fun m!2338165 () Bool)

(assert (=> d!582906 m!2338165))

(assert (=> b!1906050 m!2337193))

(assert (=> b!1906050 m!2338155))

(assert (=> b!1906050 m!2338155))

(assert (=> b!1906050 m!2338159))

(assert (=> b!1905178 d!582906))

(declare-fun d!582908 () Bool)

(assert (=> d!582908 (= (get!6665 lt!728508) (v!26381 lt!728508))))

(assert (=> b!1905178 d!582908))

(declare-fun d!582910 () Bool)

(assert (=> d!582910 (= (list!8725 (charsOf!2377 (_1!11568 (get!6665 lt!728508)))) (list!8727 (c!310321 (charsOf!2377 (_1!11568 (get!6665 lt!728508))))))))

(declare-fun bs!413839 () Bool)

(assert (= bs!413839 d!582910))

(declare-fun m!2338167 () Bool)

(assert (=> bs!413839 m!2338167))

(assert (=> b!1905178 d!582910))

(declare-fun d!582912 () Bool)

(declare-fun lt!728736 () BalanceConc!14092)

(assert (=> d!582912 (= (list!8725 lt!728736) (originalCharacters!4628 (_1!11568 (get!6665 lt!728508))))))

(assert (=> d!582912 (= lt!728736 (dynLambda!10451 (toChars!5301 (transformation!3821 (rule!6016 (_1!11568 (get!6665 lt!728508))))) (value!120491 (_1!11568 (get!6665 lt!728508)))))))

(assert (=> d!582912 (= (charsOf!2377 (_1!11568 (get!6665 lt!728508))) lt!728736)))

(declare-fun b_lambda!62961 () Bool)

(assert (=> (not b_lambda!62961) (not d!582912)))

(declare-fun tb!116477 () Bool)

(declare-fun t!177497 () Bool)

(assert (=> (and b!1904942 (= (toChars!5301 (transformation!3821 (rule!6016 separatorToken!354))) (toChars!5301 (transformation!3821 (rule!6016 (_1!11568 (get!6665 lt!728508)))))) t!177497) tb!116477))

(declare-fun b!1906055 () Bool)

(declare-fun e!1217457 () Bool)

(declare-fun tp!544175 () Bool)

(assert (=> b!1906055 (= e!1217457 (and (inv!28565 (c!310321 (dynLambda!10451 (toChars!5301 (transformation!3821 (rule!6016 (_1!11568 (get!6665 lt!728508))))) (value!120491 (_1!11568 (get!6665 lt!728508)))))) tp!544175))))

(declare-fun result!140804 () Bool)

(assert (=> tb!116477 (= result!140804 (and (inv!28566 (dynLambda!10451 (toChars!5301 (transformation!3821 (rule!6016 (_1!11568 (get!6665 lt!728508))))) (value!120491 (_1!11568 (get!6665 lt!728508))))) e!1217457))))

(assert (= tb!116477 b!1906055))

(declare-fun m!2338169 () Bool)

(assert (=> b!1906055 m!2338169))

(declare-fun m!2338171 () Bool)

(assert (=> tb!116477 m!2338171))

(assert (=> d!582912 t!177497))

(declare-fun b_and!148015 () Bool)

(assert (= b_and!148011 (and (=> t!177497 result!140804) b_and!148015)))

(declare-fun t!177499 () Bool)

(declare-fun tb!116479 () Bool)

(assert (=> (and b!1904950 (= (toChars!5301 (transformation!3821 (rule!6016 (h!26863 tokens!598)))) (toChars!5301 (transformation!3821 (rule!6016 (_1!11568 (get!6665 lt!728508)))))) t!177499) tb!116479))

(declare-fun result!140806 () Bool)

(assert (= result!140806 result!140804))

(assert (=> d!582912 t!177499))

(declare-fun b_and!148017 () Bool)

(assert (= b_and!148013 (and (=> t!177499 result!140806) b_and!148017)))

(declare-fun t!177501 () Bool)

(declare-fun tb!116481 () Bool)

(assert (=> (and b!1904943 (= (toChars!5301 (transformation!3821 (h!26864 rules!3198))) (toChars!5301 (transformation!3821 (rule!6016 (_1!11568 (get!6665 lt!728508)))))) t!177501) tb!116481))

(declare-fun result!140808 () Bool)

(assert (= result!140808 result!140804))

(assert (=> d!582912 t!177501))

(declare-fun b_and!148019 () Bool)

(assert (= b_and!148005 (and (=> t!177501 result!140808) b_and!148019)))

(declare-fun tb!116483 () Bool)

(declare-fun t!177503 () Bool)

(assert (=> (and b!1905625 (= (toChars!5301 (transformation!3821 (h!26864 (t!177358 rules!3198)))) (toChars!5301 (transformation!3821 (rule!6016 (_1!11568 (get!6665 lt!728508)))))) t!177503) tb!116483))

(declare-fun result!140810 () Bool)

(assert (= result!140810 result!140804))

(assert (=> d!582912 t!177503))

(declare-fun b_and!148021 () Bool)

(assert (= b_and!148007 (and (=> t!177503 result!140810) b_and!148021)))

(declare-fun t!177505 () Bool)

(declare-fun tb!116485 () Bool)

(assert (=> (and b!1905591 (= (toChars!5301 (transformation!3821 (rule!6016 (h!26863 (t!177357 tokens!598))))) (toChars!5301 (transformation!3821 (rule!6016 (_1!11568 (get!6665 lt!728508)))))) t!177505) tb!116485))

(declare-fun result!140812 () Bool)

(assert (= result!140812 result!140804))

(assert (=> d!582912 t!177505))

(declare-fun b_and!148023 () Bool)

(assert (= b_and!148009 (and (=> t!177505 result!140812) b_and!148023)))

(declare-fun m!2338173 () Bool)

(assert (=> d!582912 m!2338173))

(declare-fun m!2338175 () Bool)

(assert (=> d!582912 m!2338175))

(assert (=> b!1905178 d!582912))

(declare-fun d!582914 () Bool)

(declare-fun e!1217458 () Bool)

(assert (=> d!582914 e!1217458))

(declare-fun res!851100 () Bool)

(assert (=> d!582914 (=> (not res!851100) (not e!1217458))))

(declare-fun lt!728737 () List!21543)

(assert (=> d!582914 (= res!851100 (= (content!3142 lt!728737) (set.union (content!3142 (t!177356 lt!728437)) (content!3142 lt!728438))))))

(declare-fun e!1217459 () List!21543)

(assert (=> d!582914 (= lt!728737 e!1217459)))

(declare-fun c!310534 () Bool)

(assert (=> d!582914 (= c!310534 (is-Nil!21461 (t!177356 lt!728437)))))

(assert (=> d!582914 (= (++!5766 (t!177356 lt!728437) lt!728438) lt!728737)))

(declare-fun b!1906058 () Bool)

(declare-fun res!851101 () Bool)

(assert (=> b!1906058 (=> (not res!851101) (not e!1217458))))

(assert (=> b!1906058 (= res!851101 (= (size!16931 lt!728737) (+ (size!16931 (t!177356 lt!728437)) (size!16931 lt!728438))))))

(declare-fun b!1906059 () Bool)

(assert (=> b!1906059 (= e!1217458 (or (not (= lt!728438 Nil!21461)) (= lt!728737 (t!177356 lt!728437))))))

(declare-fun b!1906057 () Bool)

(assert (=> b!1906057 (= e!1217459 (Cons!21461 (h!26862 (t!177356 lt!728437)) (++!5766 (t!177356 (t!177356 lt!728437)) lt!728438)))))

(declare-fun b!1906056 () Bool)

(assert (=> b!1906056 (= e!1217459 lt!728438)))

(assert (= (and d!582914 c!310534) b!1906056))

(assert (= (and d!582914 (not c!310534)) b!1906057))

(assert (= (and d!582914 res!851100) b!1906058))

(assert (= (and b!1906058 res!851101) b!1906059))

(declare-fun m!2338177 () Bool)

(assert (=> d!582914 m!2338177))

(declare-fun m!2338179 () Bool)

(assert (=> d!582914 m!2338179))

(assert (=> d!582914 m!2337645))

(declare-fun m!2338181 () Bool)

(assert (=> b!1906058 m!2338181))

(assert (=> b!1906058 m!2338049))

(assert (=> b!1906058 m!2337649))

(declare-fun m!2338183 () Bool)

(assert (=> b!1906057 m!2338183))

(assert (=> b!1905569 d!582914))

(declare-fun d!582916 () Bool)

(declare-fun lt!728738 () Int)

(assert (=> d!582916 (>= lt!728738 0)))

(declare-fun e!1217460 () Int)

(assert (=> d!582916 (= lt!728738 e!1217460)))

(declare-fun c!310535 () Bool)

(assert (=> d!582916 (= c!310535 (is-Nil!21461 lt!728623))))

(assert (=> d!582916 (= (size!16931 lt!728623) lt!728738)))

(declare-fun b!1906060 () Bool)

(assert (=> b!1906060 (= e!1217460 0)))

(declare-fun b!1906061 () Bool)

(assert (=> b!1906061 (= e!1217460 (+ 1 (size!16931 (t!177356 lt!728623))))))

(assert (= (and d!582916 c!310535) b!1906060))

(assert (= (and d!582916 (not c!310535)) b!1906061))

(declare-fun m!2338185 () Bool)

(assert (=> b!1906061 m!2338185))

(assert (=> b!1905566 d!582916))

(declare-fun d!582918 () Bool)

(declare-fun lt!728739 () Int)

(assert (=> d!582918 (>= lt!728739 0)))

(declare-fun e!1217461 () Int)

(assert (=> d!582918 (= lt!728739 e!1217461)))

(declare-fun c!310536 () Bool)

(assert (=> d!582918 (= c!310536 (is-Nil!21461 lt!728438))))

(assert (=> d!582918 (= (size!16931 lt!728438) lt!728739)))

(declare-fun b!1906062 () Bool)

(assert (=> b!1906062 (= e!1217461 0)))

(declare-fun b!1906063 () Bool)

(assert (=> b!1906063 (= e!1217461 (+ 1 (size!16931 (t!177356 lt!728438))))))

(assert (= (and d!582918 c!310536) b!1906062))

(assert (= (and d!582918 (not c!310536)) b!1906063))

(assert (=> b!1906063 m!2337927))

(assert (=> b!1905566 d!582918))

(assert (=> b!1905566 d!582824))

(declare-fun d!582920 () Bool)

(declare-fun e!1217464 () Bool)

(assert (=> d!582920 e!1217464))

(declare-fun res!851104 () Bool)

(assert (=> d!582920 (=> (not res!851104) (not e!1217464))))

(declare-fun lt!728742 () BalanceConc!14096)

(assert (=> d!582920 (= res!851104 (= (list!8729 lt!728742) (Cons!21462 separatorToken!354 Nil!21462)))))

(declare-fun singleton!832 (Token!7194) BalanceConc!14096)

(assert (=> d!582920 (= lt!728742 (singleton!832 separatorToken!354))))

(assert (=> d!582920 (= (singletonSeq!1848 separatorToken!354) lt!728742)))

(declare-fun b!1906066 () Bool)

(declare-fun isBalanced!2237 (Conc!7140) Bool)

(assert (=> b!1906066 (= e!1217464 (isBalanced!2237 (c!310444 lt!728742)))))

(assert (= (and d!582920 res!851104) b!1906066))

(declare-fun m!2338187 () Bool)

(assert (=> d!582920 m!2338187))

(declare-fun m!2338189 () Bool)

(assert (=> d!582920 m!2338189))

(declare-fun m!2338191 () Bool)

(assert (=> b!1906066 m!2338191))

(assert (=> d!582684 d!582920))

(declare-fun d!582922 () Bool)

(declare-fun lt!728745 () BalanceConc!14092)

(declare-fun printList!1026 (LexerInterface!3434 List!21544) List!21543)

(assert (=> d!582922 (= (list!8725 lt!728745) (printList!1026 thiss!23328 (list!8729 (singletonSeq!1848 separatorToken!354))))))

(assert (=> d!582922 (= lt!728745 (printTailRec!957 thiss!23328 (singletonSeq!1848 separatorToken!354) 0 (BalanceConc!14093 Empty!7138)))))

(assert (=> d!582922 (= (print!1450 thiss!23328 (singletonSeq!1848 separatorToken!354)) lt!728745)))

(declare-fun bs!413840 () Bool)

(assert (= bs!413840 d!582922))

(declare-fun m!2338193 () Bool)

(assert (=> bs!413840 m!2338193))

(assert (=> bs!413840 m!2337425))

(assert (=> bs!413840 m!2337427))

(assert (=> bs!413840 m!2337427))

(declare-fun m!2338195 () Bool)

(assert (=> bs!413840 m!2338195))

(assert (=> bs!413840 m!2337425))

(declare-fun m!2338197 () Bool)

(assert (=> bs!413840 m!2338197))

(assert (=> d!582684 d!582922))

(declare-fun d!582924 () Bool)

(declare-fun list!8733 (Conc!7140) List!21544)

(assert (=> d!582924 (= (list!8729 (_1!11571 (lex!1522 thiss!23328 rules!3198 (print!1450 thiss!23328 (singletonSeq!1848 separatorToken!354))))) (list!8733 (c!310444 (_1!11571 (lex!1522 thiss!23328 rules!3198 (print!1450 thiss!23328 (singletonSeq!1848 separatorToken!354)))))))))

(declare-fun bs!413841 () Bool)

(assert (= bs!413841 d!582924))

(declare-fun m!2338199 () Bool)

(assert (=> bs!413841 m!2338199))

(assert (=> d!582684 d!582924))

(declare-fun d!582926 () Bool)

(assert (=> d!582926 (= (list!8729 (singletonSeq!1848 separatorToken!354)) (list!8733 (c!310444 (singletonSeq!1848 separatorToken!354))))))

(declare-fun bs!413842 () Bool)

(assert (= bs!413842 d!582926))

(declare-fun m!2338201 () Bool)

(assert (=> bs!413842 m!2338201))

(assert (=> d!582684 d!582926))

(declare-fun e!1217474 () Bool)

(declare-fun b!1906082 () Bool)

(declare-fun lt!728751 () tuple2!20204)

(declare-datatypes ((tuple2!20210 0))(
  ( (tuple2!20211 (_1!11574 List!21544) (_2!11574 List!21543)) )
))
(declare-fun lexList!939 (LexerInterface!3434 List!21545 List!21543) tuple2!20210)

(assert (=> b!1906082 (= e!1217474 (= (list!8725 (_2!11571 lt!728751)) (_2!11574 (lexList!939 thiss!23328 rules!3198 (list!8725 (print!1450 thiss!23328 (singletonSeq!1848 separatorToken!354)))))))))

(declare-fun b!1906083 () Bool)

(declare-fun e!1217476 () Bool)

(assert (=> b!1906083 (= e!1217476 (= (_2!11571 lt!728751) (print!1450 thiss!23328 (singletonSeq!1848 separatorToken!354))))))

(declare-fun d!582928 () Bool)

(assert (=> d!582928 e!1217474))

(declare-fun res!851114 () Bool)

(assert (=> d!582928 (=> (not res!851114) (not e!1217474))))

(assert (=> d!582928 (= res!851114 e!1217476)))

(declare-fun c!310541 () Bool)

(assert (=> d!582928 (= c!310541 (> (size!16934 (_1!11571 lt!728751)) 0))))

(declare-fun lexTailRecV2!662 (LexerInterface!3434 List!21545 BalanceConc!14092 BalanceConc!14092 BalanceConc!14092 BalanceConc!14096) tuple2!20204)

(assert (=> d!582928 (= lt!728751 (lexTailRecV2!662 thiss!23328 rules!3198 (print!1450 thiss!23328 (singletonSeq!1848 separatorToken!354)) (BalanceConc!14093 Empty!7138) (print!1450 thiss!23328 (singletonSeq!1848 separatorToken!354)) (BalanceConc!14097 Empty!7140)))))

(assert (=> d!582928 (= (lex!1522 thiss!23328 rules!3198 (print!1450 thiss!23328 (singletonSeq!1848 separatorToken!354))) lt!728751)))

(declare-fun b!1906084 () Bool)

(declare-fun e!1217475 () Bool)

(assert (=> b!1906084 (= e!1217476 e!1217475)))

(declare-fun res!851113 () Bool)

(assert (=> b!1906084 (= res!851113 (< (size!16935 (_2!11571 lt!728751)) (size!16935 (print!1450 thiss!23328 (singletonSeq!1848 separatorToken!354)))))))

(assert (=> b!1906084 (=> (not res!851113) (not e!1217475))))

(declare-fun b!1906085 () Bool)

(declare-fun res!851112 () Bool)

(assert (=> b!1906085 (=> (not res!851112) (not e!1217474))))

(assert (=> b!1906085 (= res!851112 (= (list!8729 (_1!11571 lt!728751)) (_1!11574 (lexList!939 thiss!23328 rules!3198 (list!8725 (print!1450 thiss!23328 (singletonSeq!1848 separatorToken!354)))))))))

(declare-fun b!1906086 () Bool)

(declare-fun isEmpty!13187 (BalanceConc!14096) Bool)

(assert (=> b!1906086 (= e!1217475 (not (isEmpty!13187 (_1!11571 lt!728751))))))

(assert (= (and d!582928 c!310541) b!1906084))

(assert (= (and d!582928 (not c!310541)) b!1906083))

(assert (= (and b!1906084 res!851113) b!1906086))

(assert (= (and d!582928 res!851114) b!1906085))

(assert (= (and b!1906085 res!851112) b!1906082))

(declare-fun m!2338215 () Bool)

(assert (=> b!1906084 m!2338215))

(assert (=> b!1906084 m!2337419))

(declare-fun m!2338217 () Bool)

(assert (=> b!1906084 m!2338217))

(declare-fun m!2338219 () Bool)

(assert (=> b!1906086 m!2338219))

(declare-fun m!2338221 () Bool)

(assert (=> d!582928 m!2338221))

(assert (=> d!582928 m!2337419))

(assert (=> d!582928 m!2337419))

(declare-fun m!2338223 () Bool)

(assert (=> d!582928 m!2338223))

(declare-fun m!2338225 () Bool)

(assert (=> b!1906082 m!2338225))

(assert (=> b!1906082 m!2337419))

(declare-fun m!2338227 () Bool)

(assert (=> b!1906082 m!2338227))

(assert (=> b!1906082 m!2338227))

(declare-fun m!2338229 () Bool)

(assert (=> b!1906082 m!2338229))

(declare-fun m!2338231 () Bool)

(assert (=> b!1906085 m!2338231))

(assert (=> b!1906085 m!2337419))

(assert (=> b!1906085 m!2338227))

(assert (=> b!1906085 m!2338227))

(assert (=> b!1906085 m!2338229))

(assert (=> d!582684 d!582928))

(declare-fun d!582936 () Bool)

(declare-fun lt!728754 () Int)

(declare-fun size!16937 (List!21544) Int)

(assert (=> d!582936 (= lt!728754 (size!16937 (list!8729 (_1!11571 lt!728573))))))

(declare-fun size!16938 (Conc!7140) Int)

(assert (=> d!582936 (= lt!728754 (size!16938 (c!310444 (_1!11571 lt!728573))))))

(assert (=> d!582936 (= (size!16934 (_1!11571 lt!728573)) lt!728754)))

(declare-fun bs!413844 () Bool)

(assert (= bs!413844 d!582936))

(declare-fun m!2338233 () Bool)

(assert (=> bs!413844 m!2338233))

(assert (=> bs!413844 m!2338233))

(declare-fun m!2338235 () Bool)

(assert (=> bs!413844 m!2338235))

(declare-fun m!2338237 () Bool)

(assert (=> bs!413844 m!2338237))

(assert (=> d!582684 d!582936))

(assert (=> d!582684 d!582620))

(declare-fun d!582938 () Bool)

(assert (=> d!582938 (= (isEmpty!13177 (originalCharacters!4628 separatorToken!354)) (is-Nil!21461 (originalCharacters!4628 separatorToken!354)))))

(assert (=> d!582618 d!582938))

(declare-fun b!1906087 () Bool)

(declare-fun e!1217481 () Bool)

(assert (=> b!1906087 (= e!1217481 (matchR!2532 (derivativeStep!1351 (derivativeStep!1351 (regex!3821 lt!728427) (head!4421 lt!728438)) (head!4421 (tail!2947 lt!728438))) (tail!2947 (tail!2947 lt!728438))))))

(declare-fun b!1906088 () Bool)

(declare-fun e!1217483 () Bool)

(declare-fun lt!728755 () Bool)

(declare-fun call!117437 () Bool)

(assert (=> b!1906088 (= e!1217483 (= lt!728755 call!117437))))

(declare-fun b!1906089 () Bool)

(declare-fun e!1217482 () Bool)

(assert (=> b!1906089 (= e!1217482 (not (= (head!4421 (tail!2947 lt!728438)) (c!310320 (derivativeStep!1351 (regex!3821 lt!728427) (head!4421 lt!728438))))))))

(declare-fun b!1906090 () Bool)

(assert (=> b!1906090 (= e!1217481 (nullable!1592 (derivativeStep!1351 (regex!3821 lt!728427) (head!4421 lt!728438))))))

(declare-fun b!1906091 () Bool)

(declare-fun e!1217480 () Bool)

(declare-fun e!1217478 () Bool)

(assert (=> b!1906091 (= e!1217480 e!1217478)))

(declare-fun res!851115 () Bool)

(assert (=> b!1906091 (=> (not res!851115) (not e!1217478))))

(assert (=> b!1906091 (= res!851115 (not lt!728755))))

(declare-fun d!582940 () Bool)

(assert (=> d!582940 e!1217483))

(declare-fun c!310542 () Bool)

(assert (=> d!582940 (= c!310542 (is-EmptyExpr!5246 (derivativeStep!1351 (regex!3821 lt!728427) (head!4421 lt!728438))))))

(assert (=> d!582940 (= lt!728755 e!1217481)))

(declare-fun c!310543 () Bool)

(assert (=> d!582940 (= c!310543 (isEmpty!13177 (tail!2947 lt!728438)))))

(assert (=> d!582940 (validRegex!2116 (derivativeStep!1351 (regex!3821 lt!728427) (head!4421 lt!728438)))))

(assert (=> d!582940 (= (matchR!2532 (derivativeStep!1351 (regex!3821 lt!728427) (head!4421 lt!728438)) (tail!2947 lt!728438)) lt!728755)))

(declare-fun b!1906092 () Bool)

(declare-fun res!851118 () Bool)

(declare-fun e!1217477 () Bool)

(assert (=> b!1906092 (=> (not res!851118) (not e!1217477))))

(assert (=> b!1906092 (= res!851118 (isEmpty!13177 (tail!2947 (tail!2947 lt!728438))))))

(declare-fun b!1906093 () Bool)

(assert (=> b!1906093 (= e!1217477 (= (head!4421 (tail!2947 lt!728438)) (c!310320 (derivativeStep!1351 (regex!3821 lt!728427) (head!4421 lt!728438)))))))

(declare-fun b!1906094 () Bool)

(declare-fun e!1217479 () Bool)

(assert (=> b!1906094 (= e!1217479 (not lt!728755))))

(declare-fun b!1906095 () Bool)

(assert (=> b!1906095 (= e!1217483 e!1217479)))

(declare-fun c!310544 () Bool)

(assert (=> b!1906095 (= c!310544 (is-EmptyLang!5246 (derivativeStep!1351 (regex!3821 lt!728427) (head!4421 lt!728438))))))

(declare-fun b!1906096 () Bool)

(declare-fun res!851117 () Bool)

(assert (=> b!1906096 (=> res!851117 e!1217482)))

(assert (=> b!1906096 (= res!851117 (not (isEmpty!13177 (tail!2947 (tail!2947 lt!728438)))))))

(declare-fun b!1906097 () Bool)

(declare-fun res!851116 () Bool)

(assert (=> b!1906097 (=> (not res!851116) (not e!1217477))))

(assert (=> b!1906097 (= res!851116 (not call!117437))))

(declare-fun bm!117432 () Bool)

(assert (=> bm!117432 (= call!117437 (isEmpty!13177 (tail!2947 lt!728438)))))

(declare-fun b!1906098 () Bool)

(declare-fun res!851120 () Bool)

(assert (=> b!1906098 (=> res!851120 e!1217480)))

(assert (=> b!1906098 (= res!851120 e!1217477)))

(declare-fun res!851119 () Bool)

(assert (=> b!1906098 (=> (not res!851119) (not e!1217477))))

(assert (=> b!1906098 (= res!851119 lt!728755)))

(declare-fun b!1906099 () Bool)

(assert (=> b!1906099 (= e!1217478 e!1217482)))

(declare-fun res!851121 () Bool)

(assert (=> b!1906099 (=> res!851121 e!1217482)))

(assert (=> b!1906099 (= res!851121 call!117437)))

(declare-fun b!1906100 () Bool)

(declare-fun res!851122 () Bool)

(assert (=> b!1906100 (=> res!851122 e!1217480)))

(assert (=> b!1906100 (= res!851122 (not (is-ElementMatch!5246 (derivativeStep!1351 (regex!3821 lt!728427) (head!4421 lt!728438)))))))

(assert (=> b!1906100 (= e!1217479 e!1217480)))

(assert (= (and d!582940 c!310543) b!1906090))

(assert (= (and d!582940 (not c!310543)) b!1906087))

(assert (= (and d!582940 c!310542) b!1906088))

(assert (= (and d!582940 (not c!310542)) b!1906095))

(assert (= (and b!1906095 c!310544) b!1906094))

(assert (= (and b!1906095 (not c!310544)) b!1906100))

(assert (= (and b!1906100 (not res!851122)) b!1906098))

(assert (= (and b!1906098 res!851119) b!1906097))

(assert (= (and b!1906097 res!851116) b!1906092))

(assert (= (and b!1906092 res!851118) b!1906093))

(assert (= (and b!1906098 (not res!851120)) b!1906091))

(assert (= (and b!1906091 res!851115) b!1906099))

(assert (= (and b!1906099 (not res!851121)) b!1906096))

(assert (= (and b!1906096 (not res!851117)) b!1906089))

(assert (= (or b!1906088 b!1906097 b!1906099) bm!117432))

(assert (=> b!1906093 m!2337117))

(declare-fun m!2338239 () Bool)

(assert (=> b!1906093 m!2338239))

(assert (=> b!1906087 m!2337117))

(assert (=> b!1906087 m!2338239))

(assert (=> b!1906087 m!2337115))

(assert (=> b!1906087 m!2338239))

(declare-fun m!2338241 () Bool)

(assert (=> b!1906087 m!2338241))

(assert (=> b!1906087 m!2337117))

(declare-fun m!2338243 () Bool)

(assert (=> b!1906087 m!2338243))

(assert (=> b!1906087 m!2338241))

(assert (=> b!1906087 m!2338243))

(declare-fun m!2338245 () Bool)

(assert (=> b!1906087 m!2338245))

(assert (=> b!1906092 m!2337117))

(assert (=> b!1906092 m!2338243))

(assert (=> b!1906092 m!2338243))

(declare-fun m!2338247 () Bool)

(assert (=> b!1906092 m!2338247))

(assert (=> b!1906090 m!2337115))

(declare-fun m!2338249 () Bool)

(assert (=> b!1906090 m!2338249))

(assert (=> bm!117432 m!2337117))

(assert (=> bm!117432 m!2337121))

(assert (=> b!1906089 m!2337117))

(assert (=> b!1906089 m!2338239))

(assert (=> d!582940 m!2337117))

(assert (=> d!582940 m!2337121))

(assert (=> d!582940 m!2337115))

(declare-fun m!2338251 () Bool)

(assert (=> d!582940 m!2338251))

(assert (=> b!1906096 m!2337117))

(assert (=> b!1906096 m!2338243))

(assert (=> b!1906096 m!2338243))

(assert (=> b!1906096 m!2338247))

(assert (=> b!1905093 d!582940))

(declare-fun bm!117433 () Bool)

(declare-fun call!117440 () Regex!5246)

(declare-fun call!117439 () Regex!5246)

(assert (=> bm!117433 (= call!117440 call!117439)))

(declare-fun b!1906102 () Bool)

(declare-fun e!1217484 () Regex!5246)

(assert (=> b!1906102 (= e!1217484 (Concat!9204 call!117440 (regex!3821 lt!728427)))))

(declare-fun b!1906103 () Bool)

(declare-fun e!1217486 () Regex!5246)

(declare-fun call!117441 () Regex!5246)

(assert (=> b!1906103 (= e!1217486 (Union!5246 call!117441 call!117439))))

(declare-fun b!1906104 () Bool)

(declare-fun e!1217488 () Regex!5246)

(assert (=> b!1906104 (= e!1217488 EmptyLang!5246)))

(declare-fun bm!117434 () Bool)

(declare-fun c!310546 () Bool)

(declare-fun c!310547 () Bool)

(declare-fun c!310545 () Bool)

(assert (=> bm!117434 (= call!117439 (derivativeStep!1351 (ite c!310547 (regTwo!11005 (regex!3821 lt!728427)) (ite c!310546 (reg!5575 (regex!3821 lt!728427)) (ite c!310545 (regTwo!11004 (regex!3821 lt!728427)) (regOne!11004 (regex!3821 lt!728427))))) (head!4421 lt!728438)))))

(declare-fun b!1906105 () Bool)

(assert (=> b!1906105 (= e!1217486 e!1217484)))

(assert (=> b!1906105 (= c!310546 (is-Star!5246 (regex!3821 lt!728427)))))

(declare-fun bm!117435 () Bool)

(assert (=> bm!117435 (= call!117441 (derivativeStep!1351 (ite c!310547 (regOne!11005 (regex!3821 lt!728427)) (regOne!11004 (regex!3821 lt!728427))) (head!4421 lt!728438)))))

(declare-fun b!1906106 () Bool)

(declare-fun e!1217487 () Regex!5246)

(assert (=> b!1906106 (= e!1217488 e!1217487)))

(declare-fun c!310548 () Bool)

(assert (=> b!1906106 (= c!310548 (is-ElementMatch!5246 (regex!3821 lt!728427)))))

(declare-fun b!1906101 () Bool)

(declare-fun e!1217485 () Regex!5246)

(declare-fun call!117438 () Regex!5246)

(assert (=> b!1906101 (= e!1217485 (Union!5246 (Concat!9204 call!117438 (regTwo!11004 (regex!3821 lt!728427))) EmptyLang!5246))))

(declare-fun d!582942 () Bool)

(declare-fun lt!728756 () Regex!5246)

(assert (=> d!582942 (validRegex!2116 lt!728756)))

(assert (=> d!582942 (= lt!728756 e!1217488)))

(declare-fun c!310549 () Bool)

(assert (=> d!582942 (= c!310549 (or (is-EmptyExpr!5246 (regex!3821 lt!728427)) (is-EmptyLang!5246 (regex!3821 lt!728427))))))

(assert (=> d!582942 (validRegex!2116 (regex!3821 lt!728427))))

(assert (=> d!582942 (= (derivativeStep!1351 (regex!3821 lt!728427) (head!4421 lt!728438)) lt!728756)))

(declare-fun b!1906107 () Bool)

(assert (=> b!1906107 (= e!1217485 (Union!5246 (Concat!9204 call!117441 (regTwo!11004 (regex!3821 lt!728427))) call!117438))))

(declare-fun b!1906108 () Bool)

(assert (=> b!1906108 (= c!310547 (is-Union!5246 (regex!3821 lt!728427)))))

(assert (=> b!1906108 (= e!1217487 e!1217486)))

(declare-fun b!1906109 () Bool)

(assert (=> b!1906109 (= c!310545 (nullable!1592 (regOne!11004 (regex!3821 lt!728427))))))

(assert (=> b!1906109 (= e!1217484 e!1217485)))

(declare-fun bm!117436 () Bool)

(assert (=> bm!117436 (= call!117438 call!117440)))

(declare-fun b!1906110 () Bool)

(assert (=> b!1906110 (= e!1217487 (ite (= (head!4421 lt!728438) (c!310320 (regex!3821 lt!728427))) EmptyExpr!5246 EmptyLang!5246))))

(assert (= (and d!582942 c!310549) b!1906104))

(assert (= (and d!582942 (not c!310549)) b!1906106))

(assert (= (and b!1906106 c!310548) b!1906110))

(assert (= (and b!1906106 (not c!310548)) b!1906108))

(assert (= (and b!1906108 c!310547) b!1906103))

(assert (= (and b!1906108 (not c!310547)) b!1906105))

(assert (= (and b!1906105 c!310546) b!1906102))

(assert (= (and b!1906105 (not c!310546)) b!1906109))

(assert (= (and b!1906109 c!310545) b!1906107))

(assert (= (and b!1906109 (not c!310545)) b!1906101))

(assert (= (or b!1906107 b!1906101) bm!117436))

(assert (= (or b!1906102 bm!117436) bm!117433))

(assert (= (or b!1906103 b!1906107) bm!117435))

(assert (= (or b!1906103 bm!117433) bm!117434))

(assert (=> bm!117434 m!2336933))

(declare-fun m!2338253 () Bool)

(assert (=> bm!117434 m!2338253))

(assert (=> bm!117435 m!2336933))

(declare-fun m!2338255 () Bool)

(assert (=> bm!117435 m!2338255))

(declare-fun m!2338257 () Bool)

(assert (=> d!582942 m!2338257))

(assert (=> d!582942 m!2337127))

(declare-fun m!2338259 () Bool)

(assert (=> b!1906109 m!2338259))

(assert (=> b!1905093 d!582942))

(assert (=> b!1905093 d!582748))

(declare-fun d!582944 () Bool)

(assert (=> d!582944 (= (tail!2947 lt!728438) (t!177356 lt!728438))))

(assert (=> b!1905093 d!582944))

(declare-fun d!582946 () Bool)

(assert (=> d!582946 (= (inv!28558 (tag!4251 (rule!6016 (h!26863 (t!177357 tokens!598))))) (= (mod (str.len (value!120490 (tag!4251 (rule!6016 (h!26863 (t!177357 tokens!598)))))) 2) 0))))

(assert (=> b!1905590 d!582946))

(declare-fun d!582948 () Bool)

(declare-fun res!851123 () Bool)

(declare-fun e!1217489 () Bool)

(assert (=> d!582948 (=> (not res!851123) (not e!1217489))))

(assert (=> d!582948 (= res!851123 (semiInverseModEq!1542 (toChars!5301 (transformation!3821 (rule!6016 (h!26863 (t!177357 tokens!598))))) (toValue!5442 (transformation!3821 (rule!6016 (h!26863 (t!177357 tokens!598)))))))))

(assert (=> d!582948 (= (inv!28561 (transformation!3821 (rule!6016 (h!26863 (t!177357 tokens!598))))) e!1217489)))

(declare-fun b!1906111 () Bool)

(assert (=> b!1906111 (= e!1217489 (equivClasses!1469 (toChars!5301 (transformation!3821 (rule!6016 (h!26863 (t!177357 tokens!598))))) (toValue!5442 (transformation!3821 (rule!6016 (h!26863 (t!177357 tokens!598)))))))))

(assert (= (and d!582948 res!851123) b!1906111))

(declare-fun m!2338261 () Bool)

(assert (=> d!582948 m!2338261))

(declare-fun m!2338263 () Bool)

(assert (=> b!1906111 m!2338263))

(assert (=> b!1905590 d!582948))

(declare-fun d!582950 () Bool)

(declare-fun res!851124 () Bool)

(declare-fun e!1217490 () Bool)

(assert (=> d!582950 (=> res!851124 e!1217490)))

(assert (=> d!582950 (= res!851124 (is-Nil!21462 (t!177357 tokens!598)))))

(assert (=> d!582950 (= (forall!4507 (t!177357 tokens!598) lambda!74440) e!1217490)))

(declare-fun b!1906112 () Bool)

(declare-fun e!1217491 () Bool)

(assert (=> b!1906112 (= e!1217490 e!1217491)))

(declare-fun res!851125 () Bool)

(assert (=> b!1906112 (=> (not res!851125) (not e!1217491))))

(assert (=> b!1906112 (= res!851125 (dynLambda!10450 lambda!74440 (h!26863 (t!177357 tokens!598))))))

(declare-fun b!1906113 () Bool)

(assert (=> b!1906113 (= e!1217491 (forall!4507 (t!177357 (t!177357 tokens!598)) lambda!74440))))

(assert (= (and d!582950 (not res!851124)) b!1906112))

(assert (= (and b!1906112 res!851125) b!1906113))

(declare-fun b_lambda!62963 () Bool)

(assert (=> (not b_lambda!62963) (not b!1906112)))

(declare-fun m!2338265 () Bool)

(assert (=> b!1906112 m!2338265))

(declare-fun m!2338267 () Bool)

(assert (=> b!1906113 m!2338267))

(assert (=> b!1905050 d!582950))

(declare-fun d!582952 () Bool)

(declare-fun res!851130 () Bool)

(declare-fun e!1217496 () Bool)

(assert (=> d!582952 (=> res!851130 e!1217496)))

(assert (=> d!582952 (= res!851130 (is-Nil!21463 rules!3198))))

(assert (=> d!582952 (= (noDuplicateTag!1427 thiss!23328 rules!3198 Nil!21468) e!1217496)))

(declare-fun b!1906118 () Bool)

(declare-fun e!1217497 () Bool)

(assert (=> b!1906118 (= e!1217496 e!1217497)))

(declare-fun res!851131 () Bool)

(assert (=> b!1906118 (=> (not res!851131) (not e!1217497))))

(declare-fun contains!3857 (List!21550 String!24905) Bool)

(assert (=> b!1906118 (= res!851131 (not (contains!3857 Nil!21468 (tag!4251 (h!26864 rules!3198)))))))

(declare-fun b!1906119 () Bool)

(assert (=> b!1906119 (= e!1217497 (noDuplicateTag!1427 thiss!23328 (t!177358 rules!3198) (Cons!21468 (tag!4251 (h!26864 rules!3198)) Nil!21468)))))

(assert (= (and d!582952 (not res!851130)) b!1906118))

(assert (= (and b!1906118 res!851131) b!1906119))

(declare-fun m!2338269 () Bool)

(assert (=> b!1906118 m!2338269))

(declare-fun m!2338271 () Bool)

(assert (=> b!1906119 m!2338271))

(assert (=> b!1905053 d!582952))

(declare-fun d!582954 () Bool)

(declare-fun charsToBigInt!1 (List!21542) Int)

(assert (=> d!582954 (= (inv!17 (value!120491 separatorToken!354)) (= (charsToBigInt!1 (text!28147 (value!120491 separatorToken!354))) (value!120483 (value!120491 separatorToken!354))))))

(declare-fun bs!413845 () Bool)

(assert (= bs!413845 d!582954))

(declare-fun m!2338273 () Bool)

(assert (=> bs!413845 m!2338273))

(assert (=> b!1905141 d!582954))

(declare-fun d!582956 () Bool)

(declare-fun dynLambda!10467 (Int BalanceConc!14092 BalanceConc!14092) Bool)

(assert (=> d!582956 (dynLambda!10467 lambda!74455 lt!728440 (seqFromList!2693 (originalCharacters!4628 (h!26863 tokens!598))))))

(declare-fun lt!728759 () Unit!35791)

(declare-fun choose!11872 (Int BalanceConc!14092 BalanceConc!14092) Unit!35791)

(assert (=> d!582956 (= lt!728759 (choose!11872 lambda!74455 lt!728440 (seqFromList!2693 (originalCharacters!4628 (h!26863 tokens!598)))))))

(declare-fun Forall2!619 (Int) Bool)

(assert (=> d!582956 (Forall2!619 lambda!74455)))

(assert (=> d!582956 (= (Forall2of!184 lambda!74455 lt!728440 (seqFromList!2693 (originalCharacters!4628 (h!26863 tokens!598)))) lt!728759)))

(declare-fun b_lambda!62965 () Bool)

(assert (=> (not b_lambda!62965) (not d!582956)))

(declare-fun bs!413846 () Bool)

(assert (= bs!413846 d!582956))

(assert (=> bs!413846 m!2336963))

(declare-fun m!2338275 () Bool)

(assert (=> bs!413846 m!2338275))

(assert (=> bs!413846 m!2336963))

(declare-fun m!2338277 () Bool)

(assert (=> bs!413846 m!2338277))

(declare-fun m!2338279 () Bool)

(assert (=> bs!413846 m!2338279))

(assert (=> d!582664 d!582956))

(assert (=> d!582664 d!582646))

(declare-fun d!582958 () Bool)

(assert (=> d!582958 (= (list!8725 (seqFromList!2693 (originalCharacters!4628 (h!26863 tokens!598)))) (list!8727 (c!310321 (seqFromList!2693 (originalCharacters!4628 (h!26863 tokens!598))))))))

(declare-fun bs!413847 () Bool)

(assert (= bs!413847 d!582958))

(declare-fun m!2338281 () Bool)

(assert (=> bs!413847 m!2338281))

(assert (=> d!582664 d!582958))

(declare-fun d!582960 () Bool)

(declare-fun c!310550 () Bool)

(assert (=> d!582960 (= c!310550 (is-Nil!21461 lt!728532))))

(declare-fun e!1217498 () (Set C!10638))

(assert (=> d!582960 (= (content!3142 lt!728532) e!1217498)))

(declare-fun b!1906121 () Bool)

(assert (=> b!1906121 (= e!1217498 (as set.empty (Set C!10638)))))

(declare-fun b!1906122 () Bool)

(assert (=> b!1906122 (= e!1217498 (set.union (set.insert (h!26862 lt!728532) (as set.empty (Set C!10638))) (content!3142 (t!177356 lt!728532))))))

(assert (= (and d!582960 c!310550) b!1906121))

(assert (= (and d!582960 (not c!310550)) b!1906122))

(declare-fun m!2338283 () Bool)

(assert (=> b!1906122 m!2338283))

(declare-fun m!2338285 () Bool)

(assert (=> b!1906122 m!2338285))

(assert (=> d!582642 d!582960))

(declare-fun d!582962 () Bool)

(declare-fun c!310551 () Bool)

(assert (=> d!582962 (= c!310551 (is-Nil!21461 lt!728437))))

(declare-fun e!1217499 () (Set C!10638))

(assert (=> d!582962 (= (content!3142 lt!728437) e!1217499)))

(declare-fun b!1906123 () Bool)

(assert (=> b!1906123 (= e!1217499 (as set.empty (Set C!10638)))))

(declare-fun b!1906124 () Bool)

(assert (=> b!1906124 (= e!1217499 (set.union (set.insert (h!26862 lt!728437) (as set.empty (Set C!10638))) (content!3142 (t!177356 lt!728437))))))

(assert (= (and d!582962 c!310551) b!1906123))

(assert (= (and d!582962 (not c!310551)) b!1906124))

(declare-fun m!2338287 () Bool)

(assert (=> b!1906124 m!2338287))

(assert (=> b!1906124 m!2338179))

(assert (=> d!582642 d!582962))

(assert (=> d!582642 d!582842))

(assert (=> b!1905326 d!582808))

(assert (=> b!1905326 d!582650))

(declare-fun d!582964 () Bool)

(assert (=> d!582964 (= (isEmpty!13178 lt!728435) (not (is-Some!4347 lt!728435)))))

(assert (=> d!582626 d!582964))

(declare-fun d!582966 () Bool)

(declare-fun lt!728762 () Bool)

(declare-fun content!3144 (List!21545) (Set Rule!7442))

(assert (=> d!582966 (= lt!728762 (set.member (get!6666 lt!728544) (content!3144 rules!3198)))))

(declare-fun e!1217505 () Bool)

(assert (=> d!582966 (= lt!728762 e!1217505)))

(declare-fun res!851136 () Bool)

(assert (=> d!582966 (=> (not res!851136) (not e!1217505))))

(assert (=> d!582966 (= res!851136 (is-Cons!21463 rules!3198))))

(assert (=> d!582966 (= (contains!3854 rules!3198 (get!6666 lt!728544)) lt!728762)))

(declare-fun b!1906129 () Bool)

(declare-fun e!1217504 () Bool)

(assert (=> b!1906129 (= e!1217505 e!1217504)))

(declare-fun res!851137 () Bool)

(assert (=> b!1906129 (=> res!851137 e!1217504)))

(assert (=> b!1906129 (= res!851137 (= (h!26864 rules!3198) (get!6666 lt!728544)))))

(declare-fun b!1906130 () Bool)

(assert (=> b!1906130 (= e!1217504 (contains!3854 (t!177358 rules!3198) (get!6666 lt!728544)))))

(assert (= (and d!582966 res!851136) b!1906129))

(assert (= (and b!1906129 (not res!851137)) b!1906130))

(declare-fun m!2338289 () Bool)

(assert (=> d!582966 m!2338289))

(assert (=> d!582966 m!2337269))

(declare-fun m!2338291 () Bool)

(assert (=> d!582966 m!2338291))

(assert (=> b!1906130 m!2337269))

(declare-fun m!2338293 () Bool)

(assert (=> b!1906130 m!2338293))

(assert (=> b!1905254 d!582966))

(declare-fun d!582968 () Bool)

(assert (=> d!582968 (= (get!6666 lt!728544) (v!26382 lt!728544))))

(assert (=> b!1905254 d!582968))

(declare-fun d!582970 () Bool)

(assert (=> d!582970 (= (inv!17 (value!120491 (h!26863 tokens!598))) (= (charsToBigInt!1 (text!28147 (value!120491 (h!26863 tokens!598)))) (value!120483 (value!120491 (h!26863 tokens!598)))))))

(declare-fun bs!413848 () Bool)

(assert (= bs!413848 d!582970))

(declare-fun m!2338295 () Bool)

(assert (=> bs!413848 m!2338295))

(assert (=> b!1905576 d!582970))

(declare-fun d!582972 () Bool)

(declare-fun e!1217506 () Bool)

(assert (=> d!582972 e!1217506))

(declare-fun res!851138 () Bool)

(assert (=> d!582972 (=> (not res!851138) (not e!1217506))))

(declare-fun lt!728763 () List!21543)

(assert (=> d!582972 (= res!851138 (= (content!3142 lt!728763) (set.union (content!3142 call!117350) (content!3142 lt!728529))))))

(declare-fun e!1217507 () List!21543)

(assert (=> d!582972 (= lt!728763 e!1217507)))

(declare-fun c!310552 () Bool)

(assert (=> d!582972 (= c!310552 (is-Nil!21461 call!117350))))

(assert (=> d!582972 (= (++!5766 call!117350 lt!728529) lt!728763)))

(declare-fun b!1906133 () Bool)

(declare-fun res!851139 () Bool)

(assert (=> b!1906133 (=> (not res!851139) (not e!1217506))))

(assert (=> b!1906133 (= res!851139 (= (size!16931 lt!728763) (+ (size!16931 call!117350) (size!16931 lt!728529))))))

(declare-fun b!1906134 () Bool)

(assert (=> b!1906134 (= e!1217506 (or (not (= lt!728529 Nil!21461)) (= lt!728763 call!117350)))))

(declare-fun b!1906132 () Bool)

(assert (=> b!1906132 (= e!1217507 (Cons!21461 (h!26862 call!117350) (++!5766 (t!177356 call!117350) lt!728529)))))

(declare-fun b!1906131 () Bool)

(assert (=> b!1906131 (= e!1217507 lt!728529)))

(assert (= (and d!582972 c!310552) b!1906131))

(assert (= (and d!582972 (not c!310552)) b!1906132))

(assert (= (and d!582972 res!851138) b!1906133))

(assert (= (and b!1906133 res!851139) b!1906134))

(declare-fun m!2338297 () Bool)

(assert (=> d!582972 m!2338297))

(declare-fun m!2338299 () Bool)

(assert (=> d!582972 m!2338299))

(assert (=> d!582972 m!2338103))

(declare-fun m!2338301 () Bool)

(assert (=> b!1906133 m!2338301))

(declare-fun m!2338303 () Bool)

(assert (=> b!1906133 m!2338303))

(assert (=> b!1906133 m!2338109))

(declare-fun m!2338305 () Bool)

(assert (=> b!1906132 m!2338305))

(assert (=> b!1905207 d!582972))

(declare-fun d!582974 () Bool)

(assert (=> d!582974 (= (isEmpty!13177 (tail!2947 lt!728438)) (is-Nil!21461 (tail!2947 lt!728438)))))

(assert (=> b!1905102 d!582974))

(assert (=> b!1905102 d!582944))

(declare-fun bs!413849 () Bool)

(declare-fun d!582976 () Bool)

(assert (= bs!413849 (and d!582976 d!582664)))

(declare-fun lambda!74480 () Int)

(assert (=> bs!413849 (= (= (toValue!5442 (transformation!3821 (h!26864 rules!3198))) (toValue!5442 (transformation!3821 (rule!6016 (h!26863 tokens!598))))) (= lambda!74480 lambda!74455))))

(assert (=> d!582976 true))

(assert (=> d!582976 (< (dynLambda!10452 order!13561 (toValue!5442 (transformation!3821 (h!26864 rules!3198)))) (dynLambda!10462 order!13575 lambda!74480))))

(assert (=> d!582976 (= (equivClasses!1469 (toChars!5301 (transformation!3821 (h!26864 rules!3198))) (toValue!5442 (transformation!3821 (h!26864 rules!3198)))) (Forall2!619 lambda!74480))))

(declare-fun bs!413850 () Bool)

(assert (= bs!413850 d!582976))

(declare-fun m!2338307 () Bool)

(assert (=> bs!413850 m!2338307))

(assert (=> b!1905577 d!582976))

(declare-fun d!582978 () Bool)

(declare-fun isBalanced!2238 (Conc!7138) Bool)

(assert (=> d!582978 (= (inv!28566 (dynLambda!10451 (toChars!5301 (transformation!3821 (rule!6016 (h!26863 tokens!598)))) (value!120491 (h!26863 tokens!598)))) (isBalanced!2238 (c!310321 (dynLambda!10451 (toChars!5301 (transformation!3821 (rule!6016 (h!26863 tokens!598)))) (value!120491 (h!26863 tokens!598))))))))

(declare-fun bs!413851 () Bool)

(assert (= bs!413851 d!582978))

(declare-fun m!2338309 () Bool)

(assert (=> bs!413851 m!2338309))

(assert (=> tb!116357 d!582978))

(declare-fun d!582980 () Bool)

(assert (=> d!582980 (= (isEmpty!13177 (tail!2947 lt!728437)) (is-Nil!21461 (tail!2947 lt!728437)))))

(assert (=> b!1905118 d!582980))

(assert (=> b!1905118 d!582878))

(declare-fun d!582982 () Bool)

(assert (=> d!582982 (= (isDefined!3645 (getRuleFromTag!664 thiss!23328 rules!3198 (tag!4251 (rule!6016 separatorToken!354)))) (not (isEmpty!13178 (getRuleFromTag!664 thiss!23328 rules!3198 (tag!4251 (rule!6016 separatorToken!354))))))))

(declare-fun bs!413852 () Bool)

(assert (= bs!413852 d!582982))

(assert (=> bs!413852 m!2336993))

(declare-fun m!2338311 () Bool)

(assert (=> bs!413852 m!2338311))

(assert (=> d!582672 d!582982))

(assert (=> d!582672 d!582648))

(declare-fun d!582984 () Bool)

(declare-fun e!1217510 () Bool)

(assert (=> d!582984 e!1217510))

(declare-fun res!851142 () Bool)

(assert (=> d!582984 (=> (not res!851142) (not e!1217510))))

(assert (=> d!582984 (= res!851142 (isDefined!3645 (getRuleFromTag!664 thiss!23328 rules!3198 (tag!4251 (rule!6016 separatorToken!354)))))))

(assert (=> d!582984 true))

(declare-fun _$52!1184 () Unit!35791)

(assert (=> d!582984 (= (choose!11863 thiss!23328 rules!3198 lt!728438 separatorToken!354) _$52!1184)))

(declare-fun b!1906139 () Bool)

(declare-fun res!851143 () Bool)

(assert (=> b!1906139 (=> (not res!851143) (not e!1217510))))

(assert (=> b!1906139 (= res!851143 (matchR!2532 (regex!3821 (get!6666 (getRuleFromTag!664 thiss!23328 rules!3198 (tag!4251 (rule!6016 separatorToken!354))))) (list!8725 (charsOf!2377 separatorToken!354))))))

(declare-fun b!1906140 () Bool)

(assert (=> b!1906140 (= e!1217510 (= (rule!6016 separatorToken!354) (get!6666 (getRuleFromTag!664 thiss!23328 rules!3198 (tag!4251 (rule!6016 separatorToken!354))))))))

(assert (= (and d!582984 res!851142) b!1906139))

(assert (= (and b!1906139 res!851143) b!1906140))

(assert (=> d!582984 m!2336993))

(assert (=> d!582984 m!2336993))

(assert (=> d!582984 m!2337375))

(assert (=> b!1906139 m!2336993))

(assert (=> b!1906139 m!2336981))

(assert (=> b!1906139 m!2337381))

(assert (=> b!1906139 m!2336993))

(assert (=> b!1906139 m!2337379))

(assert (=> b!1906139 m!2336971))

(assert (=> b!1906139 m!2336981))

(assert (=> b!1906139 m!2336971))

(assert (=> b!1906140 m!2336993))

(assert (=> b!1906140 m!2336993))

(assert (=> b!1906140 m!2337379))

(assert (=> d!582672 d!582984))

(assert (=> d!582672 d!582600))

(assert (=> b!1905122 d!582980))

(assert (=> b!1905122 d!582878))

(declare-fun d!582986 () Bool)

(declare-fun c!310553 () Bool)

(assert (=> d!582986 (= c!310553 (is-Nil!21461 lt!728624))))

(declare-fun e!1217511 () (Set C!10638))

(assert (=> d!582986 (= (content!3142 lt!728624) e!1217511)))

(declare-fun b!1906141 () Bool)

(assert (=> b!1906141 (= e!1217511 (as set.empty (Set C!10638)))))

(declare-fun b!1906142 () Bool)

(assert (=> b!1906142 (= e!1217511 (set.union (set.insert (h!26862 lt!728624) (as set.empty (Set C!10638))) (content!3142 (t!177356 lt!728624))))))

(assert (= (and d!582986 c!310553) b!1906141))

(assert (= (and d!582986 (not c!310553)) b!1906142))

(declare-fun m!2338313 () Bool)

(assert (=> b!1906142 m!2338313))

(declare-fun m!2338315 () Bool)

(assert (=> b!1906142 m!2338315))

(assert (=> d!582756 d!582986))

(assert (=> d!582756 d!582962))

(assert (=> d!582756 d!582840))

(assert (=> b!1905276 d!582848))

(assert (=> b!1905276 d!582850))

(assert (=> b!1905276 d!582846))

(declare-fun d!582988 () Bool)

(declare-fun lt!728766 () Token!7194)

(declare-fun apply!5633 (List!21544 Int) Token!7194)

(assert (=> d!582988 (= lt!728766 (apply!5633 (list!8729 (_1!11571 lt!728573)) 0))))

(declare-fun apply!5634 (Conc!7140 Int) Token!7194)

(assert (=> d!582988 (= lt!728766 (apply!5634 (c!310444 (_1!11571 lt!728573)) 0))))

(declare-fun e!1217514 () Bool)

(assert (=> d!582988 e!1217514))

(declare-fun res!851146 () Bool)

(assert (=> d!582988 (=> (not res!851146) (not e!1217514))))

(assert (=> d!582988 (= res!851146 (<= 0 0))))

(assert (=> d!582988 (= (apply!5631 (_1!11571 lt!728573) 0) lt!728766)))

(declare-fun b!1906145 () Bool)

(assert (=> b!1906145 (= e!1217514 (< 0 (size!16934 (_1!11571 lt!728573))))))

(assert (= (and d!582988 res!851146) b!1906145))

(assert (=> d!582988 m!2338233))

(assert (=> d!582988 m!2338233))

(declare-fun m!2338317 () Bool)

(assert (=> d!582988 m!2338317))

(declare-fun m!2338319 () Bool)

(assert (=> d!582988 m!2338319))

(assert (=> b!1906145 m!2337423))

(assert (=> b!1905397 d!582988))

(declare-fun d!582990 () Bool)

(assert (=> d!582990 (= (inv!28558 (tag!4251 (h!26864 (t!177358 rules!3198)))) (= (mod (str.len (value!120490 (tag!4251 (h!26864 (t!177358 rules!3198))))) 2) 0))))

(assert (=> b!1905624 d!582990))

(declare-fun d!582992 () Bool)

(declare-fun res!851147 () Bool)

(declare-fun e!1217515 () Bool)

(assert (=> d!582992 (=> (not res!851147) (not e!1217515))))

(assert (=> d!582992 (= res!851147 (semiInverseModEq!1542 (toChars!5301 (transformation!3821 (h!26864 (t!177358 rules!3198)))) (toValue!5442 (transformation!3821 (h!26864 (t!177358 rules!3198))))))))

(assert (=> d!582992 (= (inv!28561 (transformation!3821 (h!26864 (t!177358 rules!3198)))) e!1217515)))

(declare-fun b!1906146 () Bool)

(assert (=> b!1906146 (= e!1217515 (equivClasses!1469 (toChars!5301 (transformation!3821 (h!26864 (t!177358 rules!3198)))) (toValue!5442 (transformation!3821 (h!26864 (t!177358 rules!3198))))))))

(assert (= (and d!582992 res!851147) b!1906146))

(declare-fun m!2338321 () Bool)

(assert (=> d!582992 m!2338321))

(declare-fun m!2338323 () Bool)

(assert (=> b!1906146 m!2338323))

(assert (=> b!1905624 d!582992))

(declare-fun d!582994 () Bool)

(declare-fun lt!728767 () Bool)

(assert (=> d!582994 (= lt!728767 (set.member (rule!6016 (_1!11568 (get!6665 lt!728554))) (content!3144 rules!3198)))))

(declare-fun e!1217517 () Bool)

(assert (=> d!582994 (= lt!728767 e!1217517)))

(declare-fun res!851148 () Bool)

(assert (=> d!582994 (=> (not res!851148) (not e!1217517))))

(assert (=> d!582994 (= res!851148 (is-Cons!21463 rules!3198))))

(assert (=> d!582994 (= (contains!3854 rules!3198 (rule!6016 (_1!11568 (get!6665 lt!728554)))) lt!728767)))

(declare-fun b!1906147 () Bool)

(declare-fun e!1217516 () Bool)

(assert (=> b!1906147 (= e!1217517 e!1217516)))

(declare-fun res!851149 () Bool)

(assert (=> b!1906147 (=> res!851149 e!1217516)))

(assert (=> b!1906147 (= res!851149 (= (h!26864 rules!3198) (rule!6016 (_1!11568 (get!6665 lt!728554)))))))

(declare-fun b!1906148 () Bool)

(assert (=> b!1906148 (= e!1217516 (contains!3854 (t!177358 rules!3198) (rule!6016 (_1!11568 (get!6665 lt!728554)))))))

(assert (= (and d!582994 res!851148) b!1906147))

(assert (= (and b!1906147 (not res!851149)) b!1906148))

(assert (=> d!582994 m!2338289))

(declare-fun m!2338325 () Bool)

(assert (=> d!582994 m!2338325))

(declare-fun m!2338327 () Bool)

(assert (=> b!1906148 m!2338327))

(assert (=> b!1905269 d!582994))

(assert (=> b!1905269 d!582846))

(declare-fun call!117444 () List!21543)

(declare-fun c!310555 () Bool)

(declare-fun bm!117437 () Bool)

(assert (=> bm!117437 (= call!117444 (usedCharacters!329 (ite c!310555 (regTwo!11005 (ite c!310423 (reg!5575 (regex!3821 (rule!6016 separatorToken!354))) (ite c!310422 (regOne!11005 (regex!3821 (rule!6016 separatorToken!354))) (regTwo!11004 (regex!3821 (rule!6016 separatorToken!354)))))) (regOne!11004 (ite c!310423 (reg!5575 (regex!3821 (rule!6016 separatorToken!354))) (ite c!310422 (regOne!11005 (regex!3821 (rule!6016 separatorToken!354))) (regTwo!11004 (regex!3821 (rule!6016 separatorToken!354)))))))))))

(declare-fun b!1906149 () Bool)

(declare-fun e!1217521 () List!21543)

(declare-fun call!117443 () List!21543)

(assert (=> b!1906149 (= e!1217521 call!117443)))

(declare-fun c!310554 () Bool)

(declare-fun d!582996 () Bool)

(assert (=> d!582996 (= c!310554 (or (is-EmptyExpr!5246 (ite c!310423 (reg!5575 (regex!3821 (rule!6016 separatorToken!354))) (ite c!310422 (regOne!11005 (regex!3821 (rule!6016 separatorToken!354))) (regTwo!11004 (regex!3821 (rule!6016 separatorToken!354)))))) (is-EmptyLang!5246 (ite c!310423 (reg!5575 (regex!3821 (rule!6016 separatorToken!354))) (ite c!310422 (regOne!11005 (regex!3821 (rule!6016 separatorToken!354))) (regTwo!11004 (regex!3821 (rule!6016 separatorToken!354))))))))))

(declare-fun e!1217520 () List!21543)

(assert (=> d!582996 (= (usedCharacters!329 (ite c!310423 (reg!5575 (regex!3821 (rule!6016 separatorToken!354))) (ite c!310422 (regOne!11005 (regex!3821 (rule!6016 separatorToken!354))) (regTwo!11004 (regex!3821 (rule!6016 separatorToken!354)))))) e!1217520)))

(declare-fun b!1906150 () Bool)

(declare-fun e!1217519 () List!21543)

(assert (=> b!1906150 (= e!1217520 e!1217519)))

(declare-fun c!310557 () Bool)

(assert (=> b!1906150 (= c!310557 (is-ElementMatch!5246 (ite c!310423 (reg!5575 (regex!3821 (rule!6016 separatorToken!354))) (ite c!310422 (regOne!11005 (regex!3821 (rule!6016 separatorToken!354))) (regTwo!11004 (regex!3821 (rule!6016 separatorToken!354)))))))))

(declare-fun c!310556 () Bool)

(declare-fun b!1906151 () Bool)

(assert (=> b!1906151 (= c!310556 (is-Star!5246 (ite c!310423 (reg!5575 (regex!3821 (rule!6016 separatorToken!354))) (ite c!310422 (regOne!11005 (regex!3821 (rule!6016 separatorToken!354))) (regTwo!11004 (regex!3821 (rule!6016 separatorToken!354)))))))))

(declare-fun e!1217518 () List!21543)

(assert (=> b!1906151 (= e!1217519 e!1217518)))

(declare-fun b!1906152 () Bool)

(assert (=> b!1906152 (= e!1217521 call!117443)))

(declare-fun bm!117438 () Bool)

(declare-fun call!117445 () List!21543)

(declare-fun call!117442 () List!21543)

(assert (=> bm!117438 (= call!117445 call!117442)))

(declare-fun b!1906153 () Bool)

(assert (=> b!1906153 (= e!1217519 (Cons!21461 (c!310320 (ite c!310423 (reg!5575 (regex!3821 (rule!6016 separatorToken!354))) (ite c!310422 (regOne!11005 (regex!3821 (rule!6016 separatorToken!354))) (regTwo!11004 (regex!3821 (rule!6016 separatorToken!354)))))) Nil!21461))))

(declare-fun b!1906154 () Bool)

(assert (=> b!1906154 (= e!1217520 Nil!21461)))

(declare-fun bm!117439 () Bool)

(assert (=> bm!117439 (= call!117443 (++!5766 (ite c!310555 call!117445 call!117444) (ite c!310555 call!117444 call!117445)))))

(declare-fun b!1906155 () Bool)

(assert (=> b!1906155 (= e!1217518 call!117442)))

(declare-fun bm!117440 () Bool)

(assert (=> bm!117440 (= call!117442 (usedCharacters!329 (ite c!310556 (reg!5575 (ite c!310423 (reg!5575 (regex!3821 (rule!6016 separatorToken!354))) (ite c!310422 (regOne!11005 (regex!3821 (rule!6016 separatorToken!354))) (regTwo!11004 (regex!3821 (rule!6016 separatorToken!354)))))) (ite c!310555 (regOne!11005 (ite c!310423 (reg!5575 (regex!3821 (rule!6016 separatorToken!354))) (ite c!310422 (regOne!11005 (regex!3821 (rule!6016 separatorToken!354))) (regTwo!11004 (regex!3821 (rule!6016 separatorToken!354)))))) (regTwo!11004 (ite c!310423 (reg!5575 (regex!3821 (rule!6016 separatorToken!354))) (ite c!310422 (regOne!11005 (regex!3821 (rule!6016 separatorToken!354))) (regTwo!11004 (regex!3821 (rule!6016 separatorToken!354))))))))))))

(declare-fun b!1906156 () Bool)

(assert (=> b!1906156 (= e!1217518 e!1217521)))

(assert (=> b!1906156 (= c!310555 (is-Union!5246 (ite c!310423 (reg!5575 (regex!3821 (rule!6016 separatorToken!354))) (ite c!310422 (regOne!11005 (regex!3821 (rule!6016 separatorToken!354))) (regTwo!11004 (regex!3821 (rule!6016 separatorToken!354)))))))))

(assert (= (and d!582996 c!310554) b!1906154))

(assert (= (and d!582996 (not c!310554)) b!1906150))

(assert (= (and b!1906150 c!310557) b!1906153))

(assert (= (and b!1906150 (not c!310557)) b!1906151))

(assert (= (and b!1906151 c!310556) b!1906155))

(assert (= (and b!1906151 (not c!310556)) b!1906156))

(assert (= (and b!1906156 c!310555) b!1906149))

(assert (= (and b!1906156 (not c!310555)) b!1906152))

(assert (= (or b!1906149 b!1906152) bm!117438))

(assert (= (or b!1906149 b!1906152) bm!117437))

(assert (= (or b!1906149 b!1906152) bm!117439))

(assert (= (or b!1906155 bm!117438) bm!117440))

(declare-fun m!2338329 () Bool)

(assert (=> bm!117437 m!2338329))

(declare-fun m!2338331 () Bool)

(assert (=> bm!117439 m!2338331))

(declare-fun m!2338333 () Bool)

(assert (=> bm!117440 m!2338333))

(assert (=> bm!117377 d!582996))

(declare-fun d!582998 () Bool)

(assert (=> d!582998 (= (isEmpty!13179 lt!728436) (not (is-Some!4346 lt!728436)))))

(assert (=> d!582636 d!582998))

(declare-fun d!583000 () Bool)

(declare-fun lt!728770 () Int)

(assert (=> d!583000 (>= lt!728770 0)))

(declare-fun e!1217528 () Int)

(assert (=> d!583000 (= lt!728770 e!1217528)))

(declare-fun c!310560 () Bool)

(assert (=> d!583000 (= c!310560 (is-Nil!21461 (originalCharacters!4628 separatorToken!354)))))

(assert (=> d!583000 (= (size!16931 (originalCharacters!4628 separatorToken!354)) lt!728770)))

(declare-fun b!1906167 () Bool)

(assert (=> b!1906167 (= e!1217528 0)))

(declare-fun b!1906168 () Bool)

(assert (=> b!1906168 (= e!1217528 (+ 1 (size!16931 (t!177356 (originalCharacters!4628 separatorToken!354)))))))

(assert (= (and d!583000 c!310560) b!1906167))

(assert (= (and d!583000 (not c!310560)) b!1906168))

(declare-fun m!2338335 () Bool)

(assert (=> b!1906168 m!2338335))

(assert (=> b!1905143 d!583000))

(assert (=> b!1905272 d!582846))

(declare-fun d!583002 () Bool)

(assert (=> d!583002 (= (apply!5629 (transformation!3821 (rule!6016 (_1!11568 (get!6665 lt!728554)))) (seqFromList!2693 (originalCharacters!4628 (_1!11568 (get!6665 lt!728554))))) (dynLambda!10456 (toValue!5442 (transformation!3821 (rule!6016 (_1!11568 (get!6665 lt!728554))))) (seqFromList!2693 (originalCharacters!4628 (_1!11568 (get!6665 lt!728554))))))))

(declare-fun b_lambda!62967 () Bool)

(assert (=> (not b_lambda!62967) (not d!583002)))

(declare-fun tb!116487 () Bool)

(declare-fun t!177508 () Bool)

(assert (=> (and b!1904950 (= (toValue!5442 (transformation!3821 (rule!6016 (h!26863 tokens!598)))) (toValue!5442 (transformation!3821 (rule!6016 (_1!11568 (get!6665 lt!728554)))))) t!177508) tb!116487))

(declare-fun result!140814 () Bool)

(assert (=> tb!116487 (= result!140814 (inv!21 (dynLambda!10456 (toValue!5442 (transformation!3821 (rule!6016 (_1!11568 (get!6665 lt!728554))))) (seqFromList!2693 (originalCharacters!4628 (_1!11568 (get!6665 lt!728554)))))))))

(declare-fun m!2338337 () Bool)

(assert (=> tb!116487 m!2338337))

(assert (=> d!583002 t!177508))

(declare-fun b_and!148025 () Bool)

(assert (= b_and!147921 (and (=> t!177508 result!140814) b_and!148025)))

(declare-fun tb!116489 () Bool)

(declare-fun t!177510 () Bool)

(assert (=> (and b!1905625 (= (toValue!5442 (transformation!3821 (h!26864 (t!177358 rules!3198)))) (toValue!5442 (transformation!3821 (rule!6016 (_1!11568 (get!6665 lt!728554)))))) t!177510) tb!116489))

(declare-fun result!140816 () Bool)

(assert (= result!140816 result!140814))

(assert (=> d!583002 t!177510))

(declare-fun b_and!148027 () Bool)

(assert (= b_and!147947 (and (=> t!177510 result!140816) b_and!148027)))

(declare-fun t!177512 () Bool)

(declare-fun tb!116491 () Bool)

(assert (=> (and b!1904943 (= (toValue!5442 (transformation!3821 (h!26864 rules!3198))) (toValue!5442 (transformation!3821 (rule!6016 (_1!11568 (get!6665 lt!728554)))))) t!177512) tb!116491))

(declare-fun result!140818 () Bool)

(assert (= result!140818 result!140814))

(assert (=> d!583002 t!177512))

(declare-fun b_and!148029 () Bool)

(assert (= b_and!147923 (and (=> t!177512 result!140818) b_and!148029)))

(declare-fun t!177514 () Bool)

(declare-fun tb!116493 () Bool)

(assert (=> (and b!1904942 (= (toValue!5442 (transformation!3821 (rule!6016 separatorToken!354))) (toValue!5442 (transformation!3821 (rule!6016 (_1!11568 (get!6665 lt!728554)))))) t!177514) tb!116493))

(declare-fun result!140820 () Bool)

(assert (= result!140820 result!140814))

(assert (=> d!583002 t!177514))

(declare-fun b_and!148031 () Bool)

(assert (= b_and!147919 (and (=> t!177514 result!140820) b_and!148031)))

(declare-fun t!177516 () Bool)

(declare-fun tb!116495 () Bool)

(assert (=> (and b!1905591 (= (toValue!5442 (transformation!3821 (rule!6016 (h!26863 (t!177357 tokens!598))))) (toValue!5442 (transformation!3821 (rule!6016 (_1!11568 (get!6665 lt!728554)))))) t!177516) tb!116495))

(declare-fun result!140822 () Bool)

(assert (= result!140822 result!140814))

(assert (=> d!583002 t!177516))

(declare-fun b_and!148033 () Bool)

(assert (= b_and!147943 (and (=> t!177516 result!140822) b_and!148033)))

(assert (=> d!583002 m!2337321))

(declare-fun m!2338339 () Bool)

(assert (=> d!583002 m!2338339))

(assert (=> b!1905272 d!583002))

(declare-fun d!583004 () Bool)

(assert (=> d!583004 (= (seqFromList!2693 (originalCharacters!4628 (_1!11568 (get!6665 lt!728554)))) (fromListB!1221 (originalCharacters!4628 (_1!11568 (get!6665 lt!728554)))))))

(declare-fun bs!413853 () Bool)

(assert (= bs!413853 d!583004))

(declare-fun m!2338341 () Bool)

(assert (=> bs!413853 m!2338341))

(assert (=> b!1905272 d!583004))

(assert (=> b!1905098 d!582974))

(assert (=> b!1905098 d!582944))

(declare-fun d!583006 () Bool)

(declare-fun lt!728772 () Bool)

(declare-fun e!1217534 () Bool)

(assert (=> d!583006 (= lt!728772 e!1217534)))

(declare-fun res!851161 () Bool)

(assert (=> d!583006 (=> (not res!851161) (not e!1217534))))

(assert (=> d!583006 (= res!851161 (= (list!8729 (_1!11571 (lex!1522 thiss!23328 rules!3198 (print!1450 thiss!23328 (singletonSeq!1848 (h!26863 tokens!598)))))) (list!8729 (singletonSeq!1848 (h!26863 tokens!598)))))))

(declare-fun e!1217533 () Bool)

(assert (=> d!583006 (= lt!728772 e!1217533)))

(declare-fun res!851159 () Bool)

(assert (=> d!583006 (=> (not res!851159) (not e!1217533))))

(declare-fun lt!728773 () tuple2!20204)

(assert (=> d!583006 (= res!851159 (= (size!16934 (_1!11571 lt!728773)) 1))))

(assert (=> d!583006 (= lt!728773 (lex!1522 thiss!23328 rules!3198 (print!1450 thiss!23328 (singletonSeq!1848 (h!26863 tokens!598)))))))

(assert (=> d!583006 (not (isEmpty!13175 rules!3198))))

(assert (=> d!583006 (= (rulesProduceIndividualToken!1606 thiss!23328 rules!3198 (h!26863 tokens!598)) lt!728772)))

(declare-fun b!1906174 () Bool)

(declare-fun res!851160 () Bool)

(assert (=> b!1906174 (=> (not res!851160) (not e!1217533))))

(assert (=> b!1906174 (= res!851160 (= (apply!5631 (_1!11571 lt!728773) 0) (h!26863 tokens!598)))))

(declare-fun b!1906175 () Bool)

(assert (=> b!1906175 (= e!1217533 (isEmpty!13182 (_2!11571 lt!728773)))))

(declare-fun b!1906176 () Bool)

(assert (=> b!1906176 (= e!1217534 (isEmpty!13182 (_2!11571 (lex!1522 thiss!23328 rules!3198 (print!1450 thiss!23328 (singletonSeq!1848 (h!26863 tokens!598)))))))))

(assert (= (and d!583006 res!851159) b!1906174))

(assert (= (and b!1906174 res!851160) b!1906175))

(assert (= (and d!583006 res!851161) b!1906176))

(assert (=> d!583006 m!2336919))

(declare-fun m!2338359 () Bool)

(assert (=> d!583006 m!2338359))

(declare-fun m!2338363 () Bool)

(assert (=> d!583006 m!2338363))

(declare-fun m!2338365 () Bool)

(assert (=> d!583006 m!2338365))

(declare-fun m!2338367 () Bool)

(assert (=> d!583006 m!2338367))

(declare-fun m!2338369 () Bool)

(assert (=> d!583006 m!2338369))

(declare-fun m!2338371 () Bool)

(assert (=> d!583006 m!2338371))

(assert (=> d!583006 m!2338367))

(assert (=> d!583006 m!2338359))

(assert (=> d!583006 m!2338367))

(declare-fun m!2338373 () Bool)

(assert (=> b!1906174 m!2338373))

(declare-fun m!2338375 () Bool)

(assert (=> b!1906175 m!2338375))

(assert (=> b!1906176 m!2338367))

(assert (=> b!1906176 m!2338367))

(assert (=> b!1906176 m!2338359))

(assert (=> b!1906176 m!2338359))

(assert (=> b!1906176 m!2338363))

(declare-fun m!2338377 () Bool)

(assert (=> b!1906176 m!2338377))

(assert (=> b!1905521 d!583006))

(assert (=> b!1905179 d!582910))

(assert (=> b!1905179 d!582912))

(assert (=> b!1905179 d!582908))

(declare-fun bs!413854 () Bool)

(declare-fun d!583010 () Bool)

(assert (= bs!413854 (and d!583010 d!582652)))

(declare-fun lambda!74481 () Int)

(assert (=> bs!413854 (= lambda!74481 lambda!74449)))

(declare-fun bs!413855 () Bool)

(assert (= bs!413855 (and d!583010 d!582836)))

(assert (=> bs!413855 (= (and (= (toChars!5301 (transformation!3821 (rule!6016 (h!26863 tokens!598)))) (toChars!5301 (transformation!3821 (rule!6016 separatorToken!354)))) (= (toValue!5442 (transformation!3821 (rule!6016 (h!26863 tokens!598)))) (toValue!5442 (transformation!3821 (rule!6016 separatorToken!354))))) (= lambda!74481 lambda!74470))))

(assert (=> d!583010 true))

(assert (=> d!583010 (< (dynLambda!10454 order!13565 (toChars!5301 (transformation!3821 (rule!6016 (h!26863 tokens!598))))) (dynLambda!10455 order!13567 lambda!74481))))

(assert (=> d!583010 true))

(assert (=> d!583010 (< (dynLambda!10452 order!13561 (toValue!5442 (transformation!3821 (rule!6016 (h!26863 tokens!598))))) (dynLambda!10455 order!13567 lambda!74481))))

(assert (=> d!583010 (= (semiInverseModEq!1542 (toChars!5301 (transformation!3821 (rule!6016 (h!26863 tokens!598)))) (toValue!5442 (transformation!3821 (rule!6016 (h!26863 tokens!598))))) (Forall!993 lambda!74481))))

(declare-fun bs!413856 () Bool)

(assert (= bs!413856 d!583010))

(declare-fun m!2338379 () Bool)

(assert (=> bs!413856 m!2338379))

(assert (=> d!582624 d!583010))

(declare-fun d!583012 () Bool)

(declare-fun lt!728774 () Int)

(assert (=> d!583012 (>= lt!728774 0)))

(declare-fun e!1217535 () Int)

(assert (=> d!583012 (= lt!728774 e!1217535)))

(declare-fun c!310562 () Bool)

(assert (=> d!583012 (= c!310562 (is-Nil!21461 lt!728624))))

(assert (=> d!583012 (= (size!16931 lt!728624) lt!728774)))

(declare-fun b!1906177 () Bool)

(assert (=> b!1906177 (= e!1217535 0)))

(declare-fun b!1906178 () Bool)

(assert (=> b!1906178 (= e!1217535 (+ 1 (size!16931 (t!177356 lt!728624))))))

(assert (= (and d!583012 c!310562) b!1906177))

(assert (= (and d!583012 (not c!310562)) b!1906178))

(declare-fun m!2338381 () Bool)

(assert (=> b!1906178 m!2338381))

(assert (=> b!1905570 d!583012))

(assert (=> b!1905570 d!582886))

(assert (=> b!1905570 d!582918))

(assert (=> b!1905211 d!582904))

(assert (=> b!1905211 d!582896))

(declare-fun d!583014 () Bool)

(declare-fun e!1217536 () Bool)

(assert (=> d!583014 e!1217536))

(declare-fun res!851162 () Bool)

(assert (=> d!583014 (=> (not res!851162) (not e!1217536))))

(declare-fun lt!728775 () List!21543)

(assert (=> d!583014 (= res!851162 (= (content!3142 lt!728775) (set.union (content!3142 (t!177356 lt!728437)) (content!3142 (++!5766 lt!728438 lt!728429)))))))

(declare-fun e!1217537 () List!21543)

(assert (=> d!583014 (= lt!728775 e!1217537)))

(declare-fun c!310563 () Bool)

(assert (=> d!583014 (= c!310563 (is-Nil!21461 (t!177356 lt!728437)))))

(assert (=> d!583014 (= (++!5766 (t!177356 lt!728437) (++!5766 lt!728438 lt!728429)) lt!728775)))

(declare-fun b!1906181 () Bool)

(declare-fun res!851163 () Bool)

(assert (=> b!1906181 (=> (not res!851163) (not e!1217536))))

(assert (=> b!1906181 (= res!851163 (= (size!16931 lt!728775) (+ (size!16931 (t!177356 lt!728437)) (size!16931 (++!5766 lt!728438 lt!728429)))))))

(declare-fun b!1906182 () Bool)

(assert (=> b!1906182 (= e!1217536 (or (not (= (++!5766 lt!728438 lt!728429) Nil!21461)) (= lt!728775 (t!177356 lt!728437))))))

(declare-fun b!1906180 () Bool)

(assert (=> b!1906180 (= e!1217537 (Cons!21461 (h!26862 (t!177356 lt!728437)) (++!5766 (t!177356 (t!177356 lt!728437)) (++!5766 lt!728438 lt!728429))))))

(declare-fun b!1906179 () Bool)

(assert (=> b!1906179 (= e!1217537 (++!5766 lt!728438 lt!728429))))

(assert (= (and d!583014 c!310563) b!1906179))

(assert (= (and d!583014 (not c!310563)) b!1906180))

(assert (= (and d!583014 res!851162) b!1906181))

(assert (= (and b!1906181 res!851163) b!1906182))

(declare-fun m!2338383 () Bool)

(assert (=> d!583014 m!2338383))

(assert (=> d!583014 m!2338179))

(assert (=> d!583014 m!2336939))

(assert (=> d!583014 m!2337617))

(declare-fun m!2338385 () Bool)

(assert (=> b!1906181 m!2338385))

(assert (=> b!1906181 m!2338049))

(assert (=> b!1906181 m!2336939))

(assert (=> b!1906181 m!2337621))

(assert (=> b!1906180 m!2336939))

(declare-fun m!2338387 () Bool)

(assert (=> b!1906180 m!2338387))

(assert (=> b!1905533 d!583014))

(declare-fun d!583016 () Bool)

(declare-fun res!851164 () Bool)

(declare-fun e!1217538 () Bool)

(assert (=> d!583016 (=> (not res!851164) (not e!1217538))))

(assert (=> d!583016 (= res!851164 (rulesValid!1429 thiss!23328 (t!177358 rules!3198)))))

(assert (=> d!583016 (= (rulesInvariant!3041 thiss!23328 (t!177358 rules!3198)) e!1217538)))

(declare-fun b!1906183 () Bool)

(assert (=> b!1906183 (= e!1217538 (noDuplicateTag!1427 thiss!23328 (t!177358 rules!3198) Nil!21468))))

(assert (= (and d!583016 res!851164) b!1906183))

(declare-fun m!2338389 () Bool)

(assert (=> d!583016 m!2338389))

(declare-fun m!2338391 () Bool)

(assert (=> b!1906183 m!2338391))

(assert (=> b!1905251 d!583016))

(declare-fun d!583018 () Bool)

(assert (=> d!583018 (rulesInvariant!3041 thiss!23328 (t!177358 rules!3198))))

(declare-fun lt!728778 () Unit!35791)

(declare-fun choose!11873 (LexerInterface!3434 Rule!7442 List!21545) Unit!35791)

(assert (=> d!583018 (= lt!728778 (choose!11873 thiss!23328 (h!26864 rules!3198) (t!177358 rules!3198)))))

(assert (=> d!583018 (rulesInvariant!3041 thiss!23328 (Cons!21463 (h!26864 rules!3198) (t!177358 rules!3198)))))

(assert (=> d!583018 (= (lemmaInvariantOnRulesThenOnTail!253 thiss!23328 (h!26864 rules!3198) (t!177358 rules!3198)) lt!728778)))

(declare-fun bs!413857 () Bool)

(assert (= bs!413857 d!583018))

(assert (=> bs!413857 m!2337263))

(declare-fun m!2338393 () Bool)

(assert (=> bs!413857 m!2338393))

(declare-fun m!2338395 () Bool)

(assert (=> bs!413857 m!2338395))

(assert (=> b!1905251 d!583018))

(declare-fun b!1906184 () Bool)

(declare-fun e!1217542 () Option!4348)

(declare-fun e!1217541 () Option!4348)

(assert (=> b!1906184 (= e!1217542 e!1217541)))

(declare-fun c!310564 () Bool)

(assert (=> b!1906184 (= c!310564 (and (is-Cons!21463 (t!177358 rules!3198)) (not (= (tag!4251 (h!26864 (t!177358 rules!3198))) (tag!4251 (rule!6016 separatorToken!354))))))))

(declare-fun b!1906185 () Bool)

(assert (=> b!1906185 (= e!1217541 None!4347)))

(declare-fun d!583020 () Bool)

(declare-fun e!1217540 () Bool)

(assert (=> d!583020 e!1217540))

(declare-fun res!851166 () Bool)

(assert (=> d!583020 (=> res!851166 e!1217540)))

(declare-fun lt!728781 () Option!4348)

(assert (=> d!583020 (= res!851166 (isEmpty!13178 lt!728781))))

(assert (=> d!583020 (= lt!728781 e!1217542)))

(declare-fun c!310565 () Bool)

(assert (=> d!583020 (= c!310565 (and (is-Cons!21463 (t!177358 rules!3198)) (= (tag!4251 (h!26864 (t!177358 rules!3198))) (tag!4251 (rule!6016 separatorToken!354)))))))

(assert (=> d!583020 (rulesInvariant!3041 thiss!23328 (t!177358 rules!3198))))

(assert (=> d!583020 (= (getRuleFromTag!664 thiss!23328 (t!177358 rules!3198) (tag!4251 (rule!6016 separatorToken!354))) lt!728781)))

(declare-fun b!1906186 () Bool)

(declare-fun lt!728779 () Unit!35791)

(declare-fun lt!728780 () Unit!35791)

(assert (=> b!1906186 (= lt!728779 lt!728780)))

(assert (=> b!1906186 (rulesInvariant!3041 thiss!23328 (t!177358 (t!177358 rules!3198)))))

(assert (=> b!1906186 (= lt!728780 (lemmaInvariantOnRulesThenOnTail!253 thiss!23328 (h!26864 (t!177358 rules!3198)) (t!177358 (t!177358 rules!3198))))))

(assert (=> b!1906186 (= e!1217541 (getRuleFromTag!664 thiss!23328 (t!177358 (t!177358 rules!3198)) (tag!4251 (rule!6016 separatorToken!354))))))

(declare-fun b!1906187 () Bool)

(declare-fun e!1217539 () Bool)

(assert (=> b!1906187 (= e!1217539 (= (tag!4251 (get!6666 lt!728781)) (tag!4251 (rule!6016 separatorToken!354))))))

(declare-fun b!1906188 () Bool)

(assert (=> b!1906188 (= e!1217542 (Some!4347 (h!26864 (t!177358 rules!3198))))))

(declare-fun b!1906189 () Bool)

(assert (=> b!1906189 (= e!1217540 e!1217539)))

(declare-fun res!851165 () Bool)

(assert (=> b!1906189 (=> (not res!851165) (not e!1217539))))

(assert (=> b!1906189 (= res!851165 (contains!3854 (t!177358 rules!3198) (get!6666 lt!728781)))))

(assert (= (and d!583020 c!310565) b!1906188))

(assert (= (and d!583020 (not c!310565)) b!1906184))

(assert (= (and b!1906184 c!310564) b!1906186))

(assert (= (and b!1906184 (not c!310564)) b!1906185))

(assert (= (and d!583020 (not res!851166)) b!1906189))

(assert (= (and b!1906189 res!851165) b!1906187))

(declare-fun m!2338397 () Bool)

(assert (=> d!583020 m!2338397))

(assert (=> d!583020 m!2337263))

(declare-fun m!2338399 () Bool)

(assert (=> b!1906186 m!2338399))

(declare-fun m!2338401 () Bool)

(assert (=> b!1906186 m!2338401))

(declare-fun m!2338403 () Bool)

(assert (=> b!1906186 m!2338403))

(declare-fun m!2338405 () Bool)

(assert (=> b!1906187 m!2338405))

(assert (=> b!1906189 m!2338405))

(assert (=> b!1906189 m!2338405))

(declare-fun m!2338407 () Bool)

(assert (=> b!1906189 m!2338407))

(assert (=> b!1905251 d!583020))

(declare-fun d!583022 () Bool)

(declare-fun charsToBigInt!0 (List!21542 Int) Int)

(assert (=> d!583022 (= (inv!15 (value!120491 (h!26863 tokens!598))) (= (charsToBigInt!0 (text!28148 (value!120491 (h!26863 tokens!598))) 0) (value!120486 (value!120491 (h!26863 tokens!598)))))))

(declare-fun bs!413858 () Bool)

(assert (= bs!413858 d!583022))

(declare-fun m!2338409 () Bool)

(assert (=> bs!413858 m!2338409))

(assert (=> b!1905573 d!583022))

(declare-fun d!583024 () Bool)

(assert (=> d!583024 (= (isEmpty!13178 lt!728432) (not (is-Some!4347 lt!728432)))))

(assert (=> d!582656 d!583024))

(declare-fun d!583026 () Bool)

(assert (=> d!583026 (= (inv!28566 (dynLambda!10451 (toChars!5301 (transformation!3821 (rule!6016 (h!26863 tokens!598)))) (dynLambda!10456 (toValue!5442 (transformation!3821 (rule!6016 (h!26863 tokens!598)))) lt!728440))) (isBalanced!2238 (c!310321 (dynLambda!10451 (toChars!5301 (transformation!3821 (rule!6016 (h!26863 tokens!598)))) (dynLambda!10456 (toValue!5442 (transformation!3821 (rule!6016 (h!26863 tokens!598)))) lt!728440)))))))

(declare-fun bs!413859 () Bool)

(assert (= bs!413859 d!583026))

(declare-fun m!2338411 () Bool)

(assert (=> bs!413859 m!2338411))

(assert (=> tb!116369 d!583026))

(declare-fun b!1906190 () Bool)

(declare-fun e!1217547 () Bool)

(assert (=> b!1906190 (= e!1217547 (matchR!2532 (derivativeStep!1351 (regex!3821 (get!6666 (getRuleFromTag!664 thiss!23328 rules!3198 (tag!4251 (rule!6016 separatorToken!354))))) (head!4421 (list!8725 (charsOf!2377 separatorToken!354)))) (tail!2947 (list!8725 (charsOf!2377 separatorToken!354)))))))

(declare-fun b!1906191 () Bool)

(declare-fun e!1217549 () Bool)

(declare-fun lt!728784 () Bool)

(declare-fun call!117446 () Bool)

(assert (=> b!1906191 (= e!1217549 (= lt!728784 call!117446))))

(declare-fun b!1906192 () Bool)

(declare-fun e!1217548 () Bool)

(assert (=> b!1906192 (= e!1217548 (not (= (head!4421 (list!8725 (charsOf!2377 separatorToken!354))) (c!310320 (regex!3821 (get!6666 (getRuleFromTag!664 thiss!23328 rules!3198 (tag!4251 (rule!6016 separatorToken!354)))))))))))

(declare-fun b!1906193 () Bool)

(assert (=> b!1906193 (= e!1217547 (nullable!1592 (regex!3821 (get!6666 (getRuleFromTag!664 thiss!23328 rules!3198 (tag!4251 (rule!6016 separatorToken!354)))))))))

(declare-fun b!1906194 () Bool)

(declare-fun e!1217546 () Bool)

(declare-fun e!1217544 () Bool)

(assert (=> b!1906194 (= e!1217546 e!1217544)))

(declare-fun res!851167 () Bool)

(assert (=> b!1906194 (=> (not res!851167) (not e!1217544))))

(assert (=> b!1906194 (= res!851167 (not lt!728784))))

(declare-fun d!583028 () Bool)

(assert (=> d!583028 e!1217549))

(declare-fun c!310566 () Bool)

(assert (=> d!583028 (= c!310566 (is-EmptyExpr!5246 (regex!3821 (get!6666 (getRuleFromTag!664 thiss!23328 rules!3198 (tag!4251 (rule!6016 separatorToken!354)))))))))

(assert (=> d!583028 (= lt!728784 e!1217547)))

(declare-fun c!310567 () Bool)

(assert (=> d!583028 (= c!310567 (isEmpty!13177 (list!8725 (charsOf!2377 separatorToken!354))))))

(assert (=> d!583028 (validRegex!2116 (regex!3821 (get!6666 (getRuleFromTag!664 thiss!23328 rules!3198 (tag!4251 (rule!6016 separatorToken!354))))))))

(assert (=> d!583028 (= (matchR!2532 (regex!3821 (get!6666 (getRuleFromTag!664 thiss!23328 rules!3198 (tag!4251 (rule!6016 separatorToken!354))))) (list!8725 (charsOf!2377 separatorToken!354))) lt!728784)))

(declare-fun b!1906195 () Bool)

(declare-fun res!851170 () Bool)

(declare-fun e!1217543 () Bool)

(assert (=> b!1906195 (=> (not res!851170) (not e!1217543))))

(assert (=> b!1906195 (= res!851170 (isEmpty!13177 (tail!2947 (list!8725 (charsOf!2377 separatorToken!354)))))))

(declare-fun b!1906196 () Bool)

(assert (=> b!1906196 (= e!1217543 (= (head!4421 (list!8725 (charsOf!2377 separatorToken!354))) (c!310320 (regex!3821 (get!6666 (getRuleFromTag!664 thiss!23328 rules!3198 (tag!4251 (rule!6016 separatorToken!354))))))))))

(declare-fun b!1906197 () Bool)

(declare-fun e!1217545 () Bool)

(assert (=> b!1906197 (= e!1217545 (not lt!728784))))

(declare-fun b!1906198 () Bool)

(assert (=> b!1906198 (= e!1217549 e!1217545)))

(declare-fun c!310568 () Bool)

(assert (=> b!1906198 (= c!310568 (is-EmptyLang!5246 (regex!3821 (get!6666 (getRuleFromTag!664 thiss!23328 rules!3198 (tag!4251 (rule!6016 separatorToken!354)))))))))

(declare-fun b!1906199 () Bool)

(declare-fun res!851169 () Bool)

(assert (=> b!1906199 (=> res!851169 e!1217548)))

(assert (=> b!1906199 (= res!851169 (not (isEmpty!13177 (tail!2947 (list!8725 (charsOf!2377 separatorToken!354))))))))

(declare-fun b!1906200 () Bool)

(declare-fun res!851168 () Bool)

(assert (=> b!1906200 (=> (not res!851168) (not e!1217543))))

(assert (=> b!1906200 (= res!851168 (not call!117446))))

(declare-fun bm!117441 () Bool)

(assert (=> bm!117441 (= call!117446 (isEmpty!13177 (list!8725 (charsOf!2377 separatorToken!354))))))

(declare-fun b!1906201 () Bool)

(declare-fun res!851172 () Bool)

(assert (=> b!1906201 (=> res!851172 e!1217546)))

(assert (=> b!1906201 (= res!851172 e!1217543)))

(declare-fun res!851171 () Bool)

(assert (=> b!1906201 (=> (not res!851171) (not e!1217543))))

(assert (=> b!1906201 (= res!851171 lt!728784)))

(declare-fun b!1906202 () Bool)

(assert (=> b!1906202 (= e!1217544 e!1217548)))

(declare-fun res!851173 () Bool)

(assert (=> b!1906202 (=> res!851173 e!1217548)))

(assert (=> b!1906202 (= res!851173 call!117446)))

(declare-fun b!1906203 () Bool)

(declare-fun res!851174 () Bool)

(assert (=> b!1906203 (=> res!851174 e!1217546)))

(assert (=> b!1906203 (= res!851174 (not (is-ElementMatch!5246 (regex!3821 (get!6666 (getRuleFromTag!664 thiss!23328 rules!3198 (tag!4251 (rule!6016 separatorToken!354))))))))))

(assert (=> b!1906203 (= e!1217545 e!1217546)))

(assert (= (and d!583028 c!310567) b!1906193))

(assert (= (and d!583028 (not c!310567)) b!1906190))

(assert (= (and d!583028 c!310566) b!1906191))

(assert (= (and d!583028 (not c!310566)) b!1906198))

(assert (= (and b!1906198 c!310568) b!1906197))

(assert (= (and b!1906198 (not c!310568)) b!1906203))

(assert (= (and b!1906203 (not res!851174)) b!1906201))

(assert (= (and b!1906201 res!851171) b!1906200))

(assert (= (and b!1906200 res!851168) b!1906195))

(assert (= (and b!1906195 res!851170) b!1906196))

(assert (= (and b!1906201 (not res!851172)) b!1906194))

(assert (= (and b!1906194 res!851167) b!1906202))

(assert (= (and b!1906202 (not res!851173)) b!1906199))

(assert (= (and b!1906199 (not res!851169)) b!1906192))

(assert (= (or b!1906191 b!1906200 b!1906202) bm!117441))

(assert (=> b!1906196 m!2336981))

(declare-fun m!2338419 () Bool)

(assert (=> b!1906196 m!2338419))

(assert (=> b!1906190 m!2336981))

(assert (=> b!1906190 m!2338419))

(assert (=> b!1906190 m!2338419))

(declare-fun m!2338421 () Bool)

(assert (=> b!1906190 m!2338421))

(assert (=> b!1906190 m!2336981))

(declare-fun m!2338423 () Bool)

(assert (=> b!1906190 m!2338423))

(assert (=> b!1906190 m!2338421))

(assert (=> b!1906190 m!2338423))

(declare-fun m!2338425 () Bool)

(assert (=> b!1906190 m!2338425))

(assert (=> b!1906195 m!2336981))

(assert (=> b!1906195 m!2338423))

(assert (=> b!1906195 m!2338423))

(declare-fun m!2338427 () Bool)

(assert (=> b!1906195 m!2338427))

(declare-fun m!2338429 () Bool)

(assert (=> b!1906193 m!2338429))

(assert (=> bm!117441 m!2336981))

(declare-fun m!2338431 () Bool)

(assert (=> bm!117441 m!2338431))

(assert (=> b!1906192 m!2336981))

(assert (=> b!1906192 m!2338419))

(assert (=> d!583028 m!2336981))

(assert (=> d!583028 m!2338431))

(declare-fun m!2338433 () Bool)

(assert (=> d!583028 m!2338433))

(assert (=> b!1906199 m!2336981))

(assert (=> b!1906199 m!2338423))

(assert (=> b!1906199 m!2338423))

(assert (=> b!1906199 m!2338427))

(assert (=> b!1905355 d!583028))

(declare-fun d!583032 () Bool)

(assert (=> d!583032 (= (get!6666 (getRuleFromTag!664 thiss!23328 rules!3198 (tag!4251 (rule!6016 separatorToken!354)))) (v!26382 (getRuleFromTag!664 thiss!23328 rules!3198 (tag!4251 (rule!6016 separatorToken!354)))))))

(assert (=> b!1905355 d!583032))

(assert (=> b!1905355 d!582662))

(assert (=> b!1905355 d!582644))

(assert (=> b!1905355 d!582648))

(declare-fun d!583034 () Bool)

(declare-fun c!310569 () Bool)

(assert (=> d!583034 (= c!310569 (is-Nil!21461 lt!728618))))

(declare-fun e!1217550 () (Set C!10638))

(assert (=> d!583034 (= (content!3142 lt!728618) e!1217550)))

(declare-fun b!1906204 () Bool)

(assert (=> b!1906204 (= e!1217550 (as set.empty (Set C!10638)))))

(declare-fun b!1906205 () Bool)

(assert (=> b!1906205 (= e!1217550 (set.union (set.insert (h!26862 lt!728618) (as set.empty (Set C!10638))) (content!3142 (t!177356 lt!728618))))))

(assert (= (and d!583034 c!310569) b!1906204))

(assert (= (and d!583034 (not c!310569)) b!1906205))

(declare-fun m!2338435 () Bool)

(assert (=> b!1906205 m!2338435))

(declare-fun m!2338437 () Bool)

(assert (=> b!1906205 m!2338437))

(assert (=> d!582744 d!583034))

(assert (=> d!582744 d!582962))

(declare-fun d!583036 () Bool)

(declare-fun c!310570 () Bool)

(assert (=> d!583036 (= c!310570 (is-Nil!21461 (++!5766 lt!728438 lt!728429)))))

(declare-fun e!1217551 () (Set C!10638))

(assert (=> d!583036 (= (content!3142 (++!5766 lt!728438 lt!728429)) e!1217551)))

(declare-fun b!1906206 () Bool)

(assert (=> b!1906206 (= e!1217551 (as set.empty (Set C!10638)))))

(declare-fun b!1906207 () Bool)

(assert (=> b!1906207 (= e!1217551 (set.union (set.insert (h!26862 (++!5766 lt!728438 lt!728429)) (as set.empty (Set C!10638))) (content!3142 (t!177356 (++!5766 lt!728438 lt!728429)))))))

(assert (= (and d!583036 c!310570) b!1906206))

(assert (= (and d!583036 (not c!310570)) b!1906207))

(declare-fun m!2338439 () Bool)

(assert (=> b!1906207 m!2338439))

(declare-fun m!2338441 () Bool)

(assert (=> b!1906207 m!2338441))

(assert (=> d!582744 d!583036))

(declare-fun b!1906229 () Bool)

(declare-fun e!1217566 () Bool)

(declare-fun call!117449 () Bool)

(assert (=> b!1906229 (= e!1217566 call!117449)))

(declare-fun d!583038 () Bool)

(declare-fun c!310577 () Bool)

(assert (=> d!583038 (= c!310577 (and (is-Cons!21463 rules!3198) (not (= (isSeparator!3821 (h!26864 rules!3198)) (isSeparator!3821 (h!26864 rules!3198))))))))

(declare-fun e!1217568 () Bool)

(assert (=> d!583038 (= (ruleDisjointCharsFromAllFromOtherType!427 (h!26864 rules!3198) rules!3198) e!1217568)))

(declare-fun b!1906230 () Bool)

(assert (=> b!1906230 (= e!1217568 e!1217566)))

(declare-fun res!851185 () Bool)

(assert (=> b!1906230 (= res!851185 (not (is-Cons!21463 rules!3198)))))

(assert (=> b!1906230 (=> res!851185 e!1217566)))

(declare-fun b!1906231 () Bool)

(declare-fun e!1217567 () Bool)

(assert (=> b!1906231 (= e!1217567 call!117449)))

(declare-fun b!1906232 () Bool)

(assert (=> b!1906232 (= e!1217568 e!1217567)))

(declare-fun res!851184 () Bool)

(declare-fun rulesUseDisjointChars!199 (Rule!7442 Rule!7442) Bool)

(assert (=> b!1906232 (= res!851184 (rulesUseDisjointChars!199 (h!26864 rules!3198) (h!26864 rules!3198)))))

(assert (=> b!1906232 (=> (not res!851184) (not e!1217567))))

(declare-fun bm!117444 () Bool)

(assert (=> bm!117444 (= call!117449 (ruleDisjointCharsFromAllFromOtherType!427 (h!26864 rules!3198) (t!177358 rules!3198)))))

(assert (= (and d!583038 c!310577) b!1906232))

(assert (= (and d!583038 (not c!310577)) b!1906230))

(assert (= (and b!1906232 res!851184) b!1906231))

(assert (= (and b!1906230 (not res!851185)) b!1906229))

(assert (= (or b!1906231 b!1906229) bm!117444))

(declare-fun m!2338467 () Bool)

(assert (=> b!1906232 m!2338467))

(declare-fun m!2338469 () Bool)

(assert (=> bm!117444 m!2338469))

(assert (=> b!1905111 d!583038))

(assert (=> b!1905175 d!582908))

(declare-fun d!583048 () Bool)

(assert (=> d!583048 (= (apply!5629 (transformation!3821 (rule!6016 (_1!11568 (get!6665 lt!728508)))) (seqFromList!2693 (originalCharacters!4628 (_1!11568 (get!6665 lt!728508))))) (dynLambda!10456 (toValue!5442 (transformation!3821 (rule!6016 (_1!11568 (get!6665 lt!728508))))) (seqFromList!2693 (originalCharacters!4628 (_1!11568 (get!6665 lt!728508))))))))

(declare-fun b_lambda!62969 () Bool)

(assert (=> (not b_lambda!62969) (not d!583048)))

(declare-fun t!177519 () Bool)

(declare-fun tb!116497 () Bool)

(assert (=> (and b!1905625 (= (toValue!5442 (transformation!3821 (h!26864 (t!177358 rules!3198)))) (toValue!5442 (transformation!3821 (rule!6016 (_1!11568 (get!6665 lt!728508)))))) t!177519) tb!116497))

(declare-fun result!140824 () Bool)

(assert (=> tb!116497 (= result!140824 (inv!21 (dynLambda!10456 (toValue!5442 (transformation!3821 (rule!6016 (_1!11568 (get!6665 lt!728508))))) (seqFromList!2693 (originalCharacters!4628 (_1!11568 (get!6665 lt!728508)))))))))

(declare-fun m!2338475 () Bool)

(assert (=> tb!116497 m!2338475))

(assert (=> d!583048 t!177519))

(declare-fun b_and!148035 () Bool)

(assert (= b_and!148027 (and (=> t!177519 result!140824) b_and!148035)))

(declare-fun tb!116499 () Bool)

(declare-fun t!177521 () Bool)

(assert (=> (and b!1904942 (= (toValue!5442 (transformation!3821 (rule!6016 separatorToken!354))) (toValue!5442 (transformation!3821 (rule!6016 (_1!11568 (get!6665 lt!728508)))))) t!177521) tb!116499))

(declare-fun result!140826 () Bool)

(assert (= result!140826 result!140824))

(assert (=> d!583048 t!177521))

(declare-fun b_and!148037 () Bool)

(assert (= b_and!148031 (and (=> t!177521 result!140826) b_and!148037)))

(declare-fun t!177523 () Bool)

(declare-fun tb!116501 () Bool)

(assert (=> (and b!1904943 (= (toValue!5442 (transformation!3821 (h!26864 rules!3198))) (toValue!5442 (transformation!3821 (rule!6016 (_1!11568 (get!6665 lt!728508)))))) t!177523) tb!116501))

(declare-fun result!140828 () Bool)

(assert (= result!140828 result!140824))

(assert (=> d!583048 t!177523))

(declare-fun b_and!148039 () Bool)

(assert (= b_and!148029 (and (=> t!177523 result!140828) b_and!148039)))

(declare-fun t!177525 () Bool)

(declare-fun tb!116503 () Bool)

(assert (=> (and b!1904950 (= (toValue!5442 (transformation!3821 (rule!6016 (h!26863 tokens!598)))) (toValue!5442 (transformation!3821 (rule!6016 (_1!11568 (get!6665 lt!728508)))))) t!177525) tb!116503))

(declare-fun result!140830 () Bool)

(assert (= result!140830 result!140824))

(assert (=> d!583048 t!177525))

(declare-fun b_and!148041 () Bool)

(assert (= b_and!148025 (and (=> t!177525 result!140830) b_and!148041)))

(declare-fun tb!116505 () Bool)

(declare-fun t!177527 () Bool)

(assert (=> (and b!1905591 (= (toValue!5442 (transformation!3821 (rule!6016 (h!26863 (t!177357 tokens!598))))) (toValue!5442 (transformation!3821 (rule!6016 (_1!11568 (get!6665 lt!728508)))))) t!177527) tb!116505))

(declare-fun result!140832 () Bool)

(assert (= result!140832 result!140824))

(assert (=> d!583048 t!177527))

(declare-fun b_and!148043 () Bool)

(assert (= b_and!148033 (and (=> t!177527 result!140832) b_and!148043)))

(assert (=> d!583048 m!2337205))

(declare-fun m!2338477 () Bool)

(assert (=> d!583048 m!2338477))

(assert (=> b!1905175 d!583048))

(declare-fun d!583056 () Bool)

(assert (=> d!583056 (= (seqFromList!2693 (originalCharacters!4628 (_1!11568 (get!6665 lt!728508)))) (fromListB!1221 (originalCharacters!4628 (_1!11568 (get!6665 lt!728508)))))))

(declare-fun bs!413862 () Bool)

(assert (= bs!413862 d!583056))

(declare-fun m!2338479 () Bool)

(assert (=> bs!413862 m!2338479))

(assert (=> b!1905175 d!583056))

(declare-fun d!583058 () Bool)

(assert (=> d!583058 (= (isEmpty!13178 lt!728547) (not (is-Some!4347 lt!728547)))))

(assert (=> d!582650 d!583058))

(assert (=> d!582650 d!582600))

(assert (=> b!1905119 d!582876))

(declare-fun d!583060 () Bool)

(assert (=> d!583060 (= (list!8725 lt!728567) (list!8727 (c!310321 lt!728567)))))

(declare-fun bs!413864 () Bool)

(assert (= bs!413864 d!583060))

(declare-fun m!2338481 () Bool)

(assert (=> bs!413864 m!2338481))

(assert (=> d!582674 d!583060))

(declare-fun d!583062 () Bool)

(declare-fun e!1217577 () Bool)

(assert (=> d!583062 e!1217577))

(declare-fun res!851190 () Bool)

(assert (=> d!583062 (=> (not res!851190) (not e!1217577))))

(declare-fun lt!728798 () BalanceConc!14092)

(assert (=> d!583062 (= res!851190 (= (list!8725 lt!728798) (originalCharacters!4628 (h!26863 tokens!598))))))

(declare-fun fromList!473 (List!21543) Conc!7138)

(assert (=> d!583062 (= lt!728798 (BalanceConc!14093 (fromList!473 (originalCharacters!4628 (h!26863 tokens!598)))))))

(assert (=> d!583062 (= (fromListB!1221 (originalCharacters!4628 (h!26863 tokens!598))) lt!728798)))

(declare-fun b!1906243 () Bool)

(assert (=> b!1906243 (= e!1217577 (isBalanced!2238 (fromList!473 (originalCharacters!4628 (h!26863 tokens!598)))))))

(assert (= (and d!583062 res!851190) b!1906243))

(declare-fun m!2338483 () Bool)

(assert (=> d!583062 m!2338483))

(declare-fun m!2338485 () Bool)

(assert (=> d!583062 m!2338485))

(assert (=> b!1906243 m!2338485))

(assert (=> b!1906243 m!2338485))

(declare-fun m!2338487 () Bool)

(assert (=> b!1906243 m!2338487))

(assert (=> d!582678 d!583062))

(declare-fun d!583066 () Bool)

(assert (=> d!583066 (= (inv!15 (value!120491 separatorToken!354)) (= (charsToBigInt!0 (text!28148 (value!120491 separatorToken!354)) 0) (value!120486 (value!120491 separatorToken!354))))))

(declare-fun bs!413865 () Bool)

(assert (= bs!413865 d!583066))

(declare-fun m!2338489 () Bool)

(assert (=> bs!413865 m!2338489))

(assert (=> b!1905138 d!583066))

(declare-fun d!583068 () Bool)

(declare-fun lt!728799 () Bool)

(assert (=> d!583068 (= lt!728799 (set.member (rule!6016 (_1!11568 (get!6665 lt!728508))) (content!3144 rules!3198)))))

(declare-fun e!1217579 () Bool)

(assert (=> d!583068 (= lt!728799 e!1217579)))

(declare-fun res!851191 () Bool)

(assert (=> d!583068 (=> (not res!851191) (not e!1217579))))

(assert (=> d!583068 (= res!851191 (is-Cons!21463 rules!3198))))

(assert (=> d!583068 (= (contains!3854 rules!3198 (rule!6016 (_1!11568 (get!6665 lt!728508)))) lt!728799)))

(declare-fun b!1906244 () Bool)

(declare-fun e!1217578 () Bool)

(assert (=> b!1906244 (= e!1217579 e!1217578)))

(declare-fun res!851192 () Bool)

(assert (=> b!1906244 (=> res!851192 e!1217578)))

(assert (=> b!1906244 (= res!851192 (= (h!26864 rules!3198) (rule!6016 (_1!11568 (get!6665 lt!728508)))))))

(declare-fun b!1906245 () Bool)

(assert (=> b!1906245 (= e!1217578 (contains!3854 (t!177358 rules!3198) (rule!6016 (_1!11568 (get!6665 lt!728508)))))))

(assert (= (and d!583068 res!851191) b!1906244))

(assert (= (and b!1906244 (not res!851192)) b!1906245))

(assert (=> d!583068 m!2338289))

(declare-fun m!2338491 () Bool)

(assert (=> d!583068 m!2338491))

(declare-fun m!2338493 () Bool)

(assert (=> b!1906245 m!2338493))

(assert (=> b!1905172 d!583068))

(assert (=> b!1905172 d!582908))

(declare-fun d!583070 () Bool)

(declare-fun lt!728800 () Int)

(assert (=> d!583070 (>= lt!728800 0)))

(declare-fun e!1217580 () Int)

(assert (=> d!583070 (= lt!728800 e!1217580)))

(declare-fun c!310582 () Bool)

(assert (=> d!583070 (= c!310582 (is-Nil!21461 (_2!11568 (get!6665 lt!728554))))))

(assert (=> d!583070 (= (size!16931 (_2!11568 (get!6665 lt!728554))) lt!728800)))

(declare-fun b!1906247 () Bool)

(assert (=> b!1906247 (= e!1217580 0)))

(declare-fun b!1906249 () Bool)

(assert (=> b!1906249 (= e!1217580 (+ 1 (size!16931 (t!177356 (_2!11568 (get!6665 lt!728554))))))))

(assert (= (and d!583070 c!310582) b!1906247))

(assert (= (and d!583070 (not c!310582)) b!1906249))

(declare-fun m!2338495 () Bool)

(assert (=> b!1906249 m!2338495))

(assert (=> b!1905277 d!583070))

(assert (=> b!1905277 d!582846))

(declare-fun d!583072 () Bool)

(declare-fun lt!728801 () Int)

(assert (=> d!583072 (>= lt!728801 0)))

(declare-fun e!1217581 () Int)

(assert (=> d!583072 (= lt!728801 e!1217581)))

(declare-fun c!310583 () Bool)

(assert (=> d!583072 (= c!310583 (is-Nil!21461 (++!5766 lt!728437 lt!728429)))))

(assert (=> d!583072 (= (size!16931 (++!5766 lt!728437 lt!728429)) lt!728801)))

(declare-fun b!1906250 () Bool)

(assert (=> b!1906250 (= e!1217581 0)))

(declare-fun b!1906251 () Bool)

(assert (=> b!1906251 (= e!1217581 (+ 1 (size!16931 (t!177356 (++!5766 lt!728437 lt!728429)))))))

(assert (= (and d!583072 c!310583) b!1906250))

(assert (= (and d!583072 (not c!310583)) b!1906251))

(declare-fun m!2338497 () Bool)

(assert (=> b!1906251 m!2338497))

(assert (=> b!1905277 d!583072))

(declare-fun d!583074 () Bool)

(declare-fun e!1217582 () Bool)

(assert (=> d!583074 e!1217582))

(declare-fun res!851193 () Bool)

(assert (=> d!583074 (=> (not res!851193) (not e!1217582))))

(declare-fun lt!728802 () List!21543)

(assert (=> d!583074 (= res!851193 (= (content!3142 lt!728802) (set.union (content!3142 (list!8725 (charsOf!2377 (_1!11568 (get!6665 lt!728554))))) (content!3142 (_2!11568 (get!6665 lt!728554))))))))

(declare-fun e!1217583 () List!21543)

(assert (=> d!583074 (= lt!728802 e!1217583)))

(declare-fun c!310584 () Bool)

(assert (=> d!583074 (= c!310584 (is-Nil!21461 (list!8725 (charsOf!2377 (_1!11568 (get!6665 lt!728554))))))))

(assert (=> d!583074 (= (++!5766 (list!8725 (charsOf!2377 (_1!11568 (get!6665 lt!728554)))) (_2!11568 (get!6665 lt!728554))) lt!728802)))

(declare-fun b!1906254 () Bool)

(declare-fun res!851194 () Bool)

(assert (=> b!1906254 (=> (not res!851194) (not e!1217582))))

(assert (=> b!1906254 (= res!851194 (= (size!16931 lt!728802) (+ (size!16931 (list!8725 (charsOf!2377 (_1!11568 (get!6665 lt!728554))))) (size!16931 (_2!11568 (get!6665 lt!728554))))))))

(declare-fun b!1906255 () Bool)

(assert (=> b!1906255 (= e!1217582 (or (not (= (_2!11568 (get!6665 lt!728554)) Nil!21461)) (= lt!728802 (list!8725 (charsOf!2377 (_1!11568 (get!6665 lt!728554)))))))))

(declare-fun b!1906253 () Bool)

(assert (=> b!1906253 (= e!1217583 (Cons!21461 (h!26862 (list!8725 (charsOf!2377 (_1!11568 (get!6665 lt!728554))))) (++!5766 (t!177356 (list!8725 (charsOf!2377 (_1!11568 (get!6665 lt!728554))))) (_2!11568 (get!6665 lt!728554)))))))

(declare-fun b!1906252 () Bool)

(assert (=> b!1906252 (= e!1217583 (_2!11568 (get!6665 lt!728554)))))

(assert (= (and d!583074 c!310584) b!1906252))

(assert (= (and d!583074 (not c!310584)) b!1906253))

(assert (= (and d!583074 res!851193) b!1906254))

(assert (= (and b!1906254 res!851194) b!1906255))

(declare-fun m!2338501 () Bool)

(assert (=> d!583074 m!2338501))

(assert (=> d!583074 m!2337309))

(declare-fun m!2338505 () Bool)

(assert (=> d!583074 m!2338505))

(declare-fun m!2338509 () Bool)

(assert (=> d!583074 m!2338509))

(declare-fun m!2338511 () Bool)

(assert (=> b!1906254 m!2338511))

(assert (=> b!1906254 m!2337309))

(declare-fun m!2338513 () Bool)

(assert (=> b!1906254 m!2338513))

(assert (=> b!1906254 m!2337315))

(declare-fun m!2338515 () Bool)

(assert (=> b!1906253 m!2338515))

(assert (=> b!1905270 d!583074))

(assert (=> b!1905270 d!582848))

(assert (=> b!1905270 d!582850))

(assert (=> b!1905270 d!582846))

(declare-fun d!583084 () Bool)

(declare-fun c!310585 () Bool)

(assert (=> d!583084 (= c!310585 (is-Nil!21461 (usedCharacters!329 (regex!3821 (rule!6016 separatorToken!354)))))))

(declare-fun e!1217587 () (Set C!10638))

(assert (=> d!583084 (= (content!3142 (usedCharacters!329 (regex!3821 (rule!6016 separatorToken!354)))) e!1217587)))

(declare-fun b!1906260 () Bool)

(assert (=> b!1906260 (= e!1217587 (as set.empty (Set C!10638)))))

(declare-fun b!1906261 () Bool)

(assert (=> b!1906261 (= e!1217587 (set.union (set.insert (h!26862 (usedCharacters!329 (regex!3821 (rule!6016 separatorToken!354)))) (as set.empty (Set C!10638))) (content!3142 (t!177356 (usedCharacters!329 (regex!3821 (rule!6016 separatorToken!354)))))))))

(assert (= (and d!583084 c!310585) b!1906260))

(assert (= (and d!583084 (not c!310585)) b!1906261))

(declare-fun m!2338517 () Bool)

(assert (=> b!1906261 m!2338517))

(declare-fun m!2338519 () Bool)

(assert (=> b!1906261 m!2338519))

(assert (=> d!582742 d!583084))

(assert (=> b!1905095 d!582748))

(declare-fun bs!413869 () Bool)

(declare-fun d!583086 () Bool)

(assert (= bs!413869 (and d!583086 b!1904964)))

(declare-fun lambda!74485 () Int)

(assert (=> bs!413869 (not (= lambda!74485 lambda!74440))))

(declare-fun bs!413870 () Bool)

(assert (= bs!413870 (and d!583086 b!1905210)))

(assert (=> bs!413870 (= lambda!74485 lambda!74446)))

(declare-fun bs!413871 () Bool)

(assert (= bs!413871 (and d!583086 d!582692)))

(assert (=> bs!413871 (= lambda!74485 lambda!74458)))

(declare-fun bs!413872 () Bool)

(assert (= bs!413872 (and d!583086 b!1906036)))

(assert (=> bs!413872 (= lambda!74485 lambda!74477)))

(declare-fun b!1906266 () Bool)

(declare-fun e!1217592 () Bool)

(assert (=> b!1906266 (= e!1217592 true)))

(declare-fun b!1906265 () Bool)

(declare-fun e!1217591 () Bool)

(assert (=> b!1906265 (= e!1217591 e!1217592)))

(declare-fun b!1906264 () Bool)

(declare-fun e!1217590 () Bool)

(assert (=> b!1906264 (= e!1217590 e!1217591)))

(assert (=> d!583086 e!1217590))

(assert (= b!1906265 b!1906266))

(assert (= b!1906264 b!1906265))

(assert (= (and d!583086 (is-Cons!21463 rules!3198)) b!1906264))

(assert (=> b!1906266 (< (dynLambda!10452 order!13561 (toValue!5442 (transformation!3821 (h!26864 rules!3198)))) (dynLambda!10453 order!13563 lambda!74485))))

(assert (=> b!1906266 (< (dynLambda!10454 order!13565 (toChars!5301 (transformation!3821 (h!26864 rules!3198)))) (dynLambda!10453 order!13563 lambda!74485))))

(assert (=> d!583086 true))

(declare-fun lt!728805 () Bool)

(assert (=> d!583086 (= lt!728805 (forall!4507 (t!177357 tokens!598) lambda!74485))))

(declare-fun e!1217588 () Bool)

(assert (=> d!583086 (= lt!728805 e!1217588)))

(declare-fun res!851199 () Bool)

(assert (=> d!583086 (=> res!851199 e!1217588)))

(assert (=> d!583086 (= res!851199 (not (is-Cons!21462 (t!177357 tokens!598))))))

(assert (=> d!583086 (not (isEmpty!13175 rules!3198))))

(assert (=> d!583086 (= (rulesProduceEachTokenIndividuallyList!1165 thiss!23328 rules!3198 (t!177357 tokens!598)) lt!728805)))

(declare-fun b!1906262 () Bool)

(declare-fun e!1217589 () Bool)

(assert (=> b!1906262 (= e!1217588 e!1217589)))

(declare-fun res!851200 () Bool)

(assert (=> b!1906262 (=> (not res!851200) (not e!1217589))))

(assert (=> b!1906262 (= res!851200 (rulesProduceIndividualToken!1606 thiss!23328 rules!3198 (h!26863 (t!177357 tokens!598))))))

(declare-fun b!1906263 () Bool)

(assert (=> b!1906263 (= e!1217589 (rulesProduceEachTokenIndividuallyList!1165 thiss!23328 rules!3198 (t!177357 (t!177357 tokens!598))))))

(assert (= (and d!583086 (not res!851199)) b!1906262))

(assert (= (and b!1906262 res!851200) b!1906263))

(declare-fun m!2338539 () Bool)

(assert (=> d!583086 m!2338539))

(assert (=> d!583086 m!2336919))

(declare-fun m!2338541 () Bool)

(assert (=> b!1906262 m!2338541))

(declare-fun m!2338543 () Bool)

(assert (=> b!1906263 m!2338543))

(assert (=> b!1905522 d!583086))

(declare-fun b!1906267 () Bool)

(declare-fun e!1217595 () Bool)

(declare-fun lt!728809 () Option!4347)

(assert (=> b!1906267 (= e!1217595 (contains!3854 (t!177358 rules!3198) (rule!6016 (_1!11568 (get!6665 lt!728809)))))))

(declare-fun b!1906268 () Bool)

(declare-fun res!851202 () Bool)

(assert (=> b!1906268 (=> (not res!851202) (not e!1217595))))

(assert (=> b!1906268 (= res!851202 (= (++!5766 (list!8725 (charsOf!2377 (_1!11568 (get!6665 lt!728809)))) (_2!11568 (get!6665 lt!728809))) (++!5766 lt!728437 lt!728429)))))

(declare-fun bm!117445 () Bool)

(declare-fun call!117450 () Option!4347)

(assert (=> bm!117445 (= call!117450 (maxPrefixOneRule!1202 thiss!23328 (h!26864 (t!177358 rules!3198)) (++!5766 lt!728437 lt!728429)))))

(declare-fun b!1906269 () Bool)

(declare-fun e!1217594 () Option!4347)

(assert (=> b!1906269 (= e!1217594 call!117450)))

(declare-fun b!1906270 () Bool)

(declare-fun res!851201 () Bool)

(assert (=> b!1906270 (=> (not res!851201) (not e!1217595))))

(assert (=> b!1906270 (= res!851201 (= (value!120491 (_1!11568 (get!6665 lt!728809))) (apply!5629 (transformation!3821 (rule!6016 (_1!11568 (get!6665 lt!728809)))) (seqFromList!2693 (originalCharacters!4628 (_1!11568 (get!6665 lt!728809)))))))))

(declare-fun b!1906272 () Bool)

(declare-fun e!1217593 () Bool)

(assert (=> b!1906272 (= e!1217593 e!1217595)))

(declare-fun res!851204 () Bool)

(assert (=> b!1906272 (=> (not res!851204) (not e!1217595))))

(assert (=> b!1906272 (= res!851204 (isDefined!3646 lt!728809))))

(declare-fun b!1906273 () Bool)

(declare-fun res!851205 () Bool)

(assert (=> b!1906273 (=> (not res!851205) (not e!1217595))))

(assert (=> b!1906273 (= res!851205 (matchR!2532 (regex!3821 (rule!6016 (_1!11568 (get!6665 lt!728809)))) (list!8725 (charsOf!2377 (_1!11568 (get!6665 lt!728809))))))))

(declare-fun b!1906274 () Bool)

(declare-fun res!851203 () Bool)

(assert (=> b!1906274 (=> (not res!851203) (not e!1217595))))

(assert (=> b!1906274 (= res!851203 (= (list!8725 (charsOf!2377 (_1!11568 (get!6665 lt!728809)))) (originalCharacters!4628 (_1!11568 (get!6665 lt!728809)))))))

(declare-fun b!1906275 () Bool)

(declare-fun res!851207 () Bool)

(assert (=> b!1906275 (=> (not res!851207) (not e!1217595))))

(assert (=> b!1906275 (= res!851207 (< (size!16931 (_2!11568 (get!6665 lt!728809))) (size!16931 (++!5766 lt!728437 lt!728429))))))

(declare-fun d!583090 () Bool)

(assert (=> d!583090 e!1217593))

(declare-fun res!851206 () Bool)

(assert (=> d!583090 (=> res!851206 e!1217593)))

(assert (=> d!583090 (= res!851206 (isEmpty!13179 lt!728809))))

(assert (=> d!583090 (= lt!728809 e!1217594)))

(declare-fun c!310586 () Bool)

(assert (=> d!583090 (= c!310586 (and (is-Cons!21463 (t!177358 rules!3198)) (is-Nil!21463 (t!177358 (t!177358 rules!3198)))))))

(declare-fun lt!728808 () Unit!35791)

(declare-fun lt!728807 () Unit!35791)

(assert (=> d!583090 (= lt!728808 lt!728807)))

(assert (=> d!583090 (isPrefix!1920 (++!5766 lt!728437 lt!728429) (++!5766 lt!728437 lt!728429))))

(assert (=> d!583090 (= lt!728807 (lemmaIsPrefixRefl!1238 (++!5766 lt!728437 lt!728429) (++!5766 lt!728437 lt!728429)))))

(assert (=> d!583090 (rulesValidInductive!1299 thiss!23328 (t!177358 rules!3198))))

(assert (=> d!583090 (= (maxPrefix!1880 thiss!23328 (t!177358 rules!3198) (++!5766 lt!728437 lt!728429)) lt!728809)))

(declare-fun b!1906271 () Bool)

(declare-fun lt!728810 () Option!4347)

(declare-fun lt!728806 () Option!4347)

(assert (=> b!1906271 (= e!1217594 (ite (and (is-None!4346 lt!728810) (is-None!4346 lt!728806)) None!4346 (ite (is-None!4346 lt!728806) lt!728810 (ite (is-None!4346 lt!728810) lt!728806 (ite (>= (size!16929 (_1!11568 (v!26381 lt!728810))) (size!16929 (_1!11568 (v!26381 lt!728806)))) lt!728810 lt!728806)))))))

(assert (=> b!1906271 (= lt!728810 call!117450)))

(assert (=> b!1906271 (= lt!728806 (maxPrefix!1880 thiss!23328 (t!177358 (t!177358 rules!3198)) (++!5766 lt!728437 lt!728429)))))

(assert (= (and d!583090 c!310586) b!1906269))

(assert (= (and d!583090 (not c!310586)) b!1906271))

(assert (= (or b!1906269 b!1906271) bm!117445))

(assert (= (and d!583090 (not res!851206)) b!1906272))

(assert (= (and b!1906272 res!851204) b!1906274))

(assert (= (and b!1906274 res!851203) b!1906275))

(assert (= (and b!1906275 res!851207) b!1906268))

(assert (= (and b!1906268 res!851202) b!1906270))

(assert (= (and b!1906270 res!851201) b!1906273))

(assert (= (and b!1906273 res!851205) b!1906267))

(declare-fun m!2338545 () Bool)

(assert (=> d!583090 m!2338545))

(assert (=> d!583090 m!2336973))

(assert (=> d!583090 m!2336973))

(assert (=> d!583090 m!2337297))

(assert (=> d!583090 m!2336973))

(assert (=> d!583090 m!2336973))

(assert (=> d!583090 m!2337299))

(assert (=> d!583090 m!2338003))

(assert (=> bm!117445 m!2336973))

(declare-fun m!2338547 () Bool)

(assert (=> bm!117445 m!2338547))

(assert (=> b!1906271 m!2336973))

(declare-fun m!2338549 () Bool)

(assert (=> b!1906271 m!2338549))

(declare-fun m!2338551 () Bool)

(assert (=> b!1906273 m!2338551))

(declare-fun m!2338553 () Bool)

(assert (=> b!1906273 m!2338553))

(assert (=> b!1906273 m!2338553))

(declare-fun m!2338555 () Bool)

(assert (=> b!1906273 m!2338555))

(assert (=> b!1906273 m!2338555))

(declare-fun m!2338559 () Bool)

(assert (=> b!1906273 m!2338559))

(assert (=> b!1906268 m!2338551))

(assert (=> b!1906268 m!2338553))

(assert (=> b!1906268 m!2338553))

(assert (=> b!1906268 m!2338555))

(assert (=> b!1906268 m!2338555))

(declare-fun m!2338561 () Bool)

(assert (=> b!1906268 m!2338561))

(assert (=> b!1906274 m!2338551))

(assert (=> b!1906274 m!2338553))

(assert (=> b!1906274 m!2338553))

(assert (=> b!1906274 m!2338555))

(assert (=> b!1906275 m!2338551))

(declare-fun m!2338563 () Bool)

(assert (=> b!1906275 m!2338563))

(assert (=> b!1906275 m!2336973))

(assert (=> b!1906275 m!2337317))

(declare-fun m!2338565 () Bool)

(assert (=> b!1906272 m!2338565))

(assert (=> b!1906270 m!2338551))

(declare-fun m!2338567 () Bool)

(assert (=> b!1906270 m!2338567))

(assert (=> b!1906270 m!2338567))

(declare-fun m!2338569 () Bool)

(assert (=> b!1906270 m!2338569))

(assert (=> b!1906267 m!2338551))

(declare-fun m!2338571 () Bool)

(assert (=> b!1906267 m!2338571))

(assert (=> b!1905273 d!583090))

(declare-fun bs!413874 () Bool)

(declare-fun d!583094 () Bool)

(assert (= bs!413874 (and d!583094 d!582652)))

(declare-fun lambda!74489 () Int)

(assert (=> bs!413874 (= (and (= (toChars!5301 (transformation!3821 (h!26864 rules!3198))) (toChars!5301 (transformation!3821 (rule!6016 (h!26863 tokens!598))))) (= (toValue!5442 (transformation!3821 (h!26864 rules!3198))) (toValue!5442 (transformation!3821 (rule!6016 (h!26863 tokens!598)))))) (= lambda!74489 lambda!74449))))

(declare-fun bs!413875 () Bool)

(assert (= bs!413875 (and d!583094 d!582836)))

(assert (=> bs!413875 (= (and (= (toChars!5301 (transformation!3821 (h!26864 rules!3198))) (toChars!5301 (transformation!3821 (rule!6016 separatorToken!354)))) (= (toValue!5442 (transformation!3821 (h!26864 rules!3198))) (toValue!5442 (transformation!3821 (rule!6016 separatorToken!354))))) (= lambda!74489 lambda!74470))))

(declare-fun bs!413876 () Bool)

(assert (= bs!413876 (and d!583094 d!583010)))

(assert (=> bs!413876 (= (and (= (toChars!5301 (transformation!3821 (h!26864 rules!3198))) (toChars!5301 (transformation!3821 (rule!6016 (h!26863 tokens!598))))) (= (toValue!5442 (transformation!3821 (h!26864 rules!3198))) (toValue!5442 (transformation!3821 (rule!6016 (h!26863 tokens!598)))))) (= lambda!74489 lambda!74481))))

(assert (=> d!583094 true))

(assert (=> d!583094 (< (dynLambda!10454 order!13565 (toChars!5301 (transformation!3821 (h!26864 rules!3198)))) (dynLambda!10455 order!13567 lambda!74489))))

(assert (=> d!583094 true))

(assert (=> d!583094 (< (dynLambda!10452 order!13561 (toValue!5442 (transformation!3821 (h!26864 rules!3198)))) (dynLambda!10455 order!13567 lambda!74489))))

(assert (=> d!583094 (= (semiInverseModEq!1542 (toChars!5301 (transformation!3821 (h!26864 rules!3198))) (toValue!5442 (transformation!3821 (h!26864 rules!3198)))) (Forall!993 lambda!74489))))

(declare-fun bs!413877 () Bool)

(assert (= bs!413877 d!583094))

(declare-fun m!2338573 () Bool)

(assert (=> bs!413877 m!2338573))

(assert (=> d!582762 d!583094))

(assert (=> b!1905099 d!582748))

(declare-fun d!583096 () Bool)

(declare-fun lt!728814 () Bool)

(assert (=> d!583096 (= lt!728814 (set.member (get!6666 lt!728547) (content!3144 rules!3198)))))

(declare-fun e!1217601 () Bool)

(assert (=> d!583096 (= lt!728814 e!1217601)))

(declare-fun res!851208 () Bool)

(assert (=> d!583096 (=> (not res!851208) (not e!1217601))))

(assert (=> d!583096 (= res!851208 (is-Cons!21463 rules!3198))))

(assert (=> d!583096 (= (contains!3854 rules!3198 (get!6666 lt!728547)) lt!728814)))

(declare-fun b!1906286 () Bool)

(declare-fun e!1217600 () Bool)

(assert (=> b!1906286 (= e!1217601 e!1217600)))

(declare-fun res!851209 () Bool)

(assert (=> b!1906286 (=> res!851209 e!1217600)))

(assert (=> b!1906286 (= res!851209 (= (h!26864 rules!3198) (get!6666 lt!728547)))))

(declare-fun b!1906287 () Bool)

(assert (=> b!1906287 (= e!1217600 (contains!3854 (t!177358 rules!3198) (get!6666 lt!728547)))))

(assert (= (and d!583096 res!851208) b!1906286))

(assert (= (and b!1906286 (not res!851209)) b!1906287))

(assert (=> d!583096 m!2338289))

(assert (=> d!583096 m!2337277))

(declare-fun m!2338575 () Bool)

(assert (=> d!583096 m!2338575))

(assert (=> b!1906287 m!2337277))

(declare-fun m!2338577 () Bool)

(assert (=> b!1906287 m!2338577))

(assert (=> b!1905260 d!583096))

(assert (=> b!1905260 d!582864))

(declare-fun d!583098 () Bool)

(declare-fun lt!728817 () Bool)

(assert (=> d!583098 (= lt!728817 (isEmpty!13177 (list!8725 (_2!11571 lt!728573))))))

(declare-fun isEmpty!13188 (Conc!7138) Bool)

(assert (=> d!583098 (= lt!728817 (isEmpty!13188 (c!310321 (_2!11571 lt!728573))))))

(assert (=> d!583098 (= (isEmpty!13182 (_2!11571 lt!728573)) lt!728817)))

(declare-fun bs!413878 () Bool)

(assert (= bs!413878 d!583098))

(declare-fun m!2338587 () Bool)

(assert (=> bs!413878 m!2338587))

(assert (=> bs!413878 m!2338587))

(declare-fun m!2338589 () Bool)

(assert (=> bs!413878 m!2338589))

(declare-fun m!2338591 () Bool)

(assert (=> bs!413878 m!2338591))

(assert (=> b!1905398 d!583098))

(declare-fun d!583104 () Bool)

(assert (=> d!583104 (= (isEmpty!13177 (originalCharacters!4628 (h!26863 tokens!598))) (is-Nil!21461 (originalCharacters!4628 (h!26863 tokens!598))))))

(assert (=> d!582602 d!583104))

(declare-fun d!583106 () Bool)

(declare-fun res!851210 () Bool)

(declare-fun e!1217604 () Bool)

(assert (=> d!583106 (=> res!851210 e!1217604)))

(assert (=> d!583106 (= res!851210 (is-Nil!21462 tokens!598))))

(assert (=> d!583106 (= (forall!4507 tokens!598 lambda!74458) e!1217604)))

(declare-fun b!1906292 () Bool)

(declare-fun e!1217605 () Bool)

(assert (=> b!1906292 (= e!1217604 e!1217605)))

(declare-fun res!851211 () Bool)

(assert (=> b!1906292 (=> (not res!851211) (not e!1217605))))

(assert (=> b!1906292 (= res!851211 (dynLambda!10450 lambda!74458 (h!26863 tokens!598)))))

(declare-fun b!1906293 () Bool)

(assert (=> b!1906293 (= e!1217605 (forall!4507 (t!177357 tokens!598) lambda!74458))))

(assert (= (and d!583106 (not res!851210)) b!1906292))

(assert (= (and b!1906292 res!851211) b!1906293))

(declare-fun b_lambda!62971 () Bool)

(assert (=> (not b_lambda!62971) (not b!1906292)))

(declare-fun m!2338593 () Bool)

(assert (=> b!1906292 m!2338593))

(declare-fun m!2338595 () Bool)

(assert (=> b!1906293 m!2338595))

(assert (=> d!582692 d!583106))

(assert (=> d!582692 d!582620))

(assert (=> b!1905115 d!582876))

(declare-fun d!583108 () Bool)

(declare-fun lt!728818 () Bool)

(assert (=> d!583108 (= lt!728818 (set.member (head!4421 lt!728438) (content!3142 (t!177356 (usedCharacters!329 (regex!3821 (rule!6016 separatorToken!354)))))))))

(declare-fun e!1217607 () Bool)

(assert (=> d!583108 (= lt!728818 e!1217607)))

(declare-fun res!851213 () Bool)

(assert (=> d!583108 (=> (not res!851213) (not e!1217607))))

(assert (=> d!583108 (= res!851213 (is-Cons!21461 (t!177356 (usedCharacters!329 (regex!3821 (rule!6016 separatorToken!354))))))))

(assert (=> d!583108 (= (contains!3852 (t!177356 (usedCharacters!329 (regex!3821 (rule!6016 separatorToken!354)))) (head!4421 lt!728438)) lt!728818)))

(declare-fun b!1906294 () Bool)

(declare-fun e!1217606 () Bool)

(assert (=> b!1906294 (= e!1217607 e!1217606)))

(declare-fun res!851212 () Bool)

(assert (=> b!1906294 (=> res!851212 e!1217606)))

(assert (=> b!1906294 (= res!851212 (= (h!26862 (t!177356 (usedCharacters!329 (regex!3821 (rule!6016 separatorToken!354))))) (head!4421 lt!728438)))))

(declare-fun b!1906295 () Bool)

(assert (=> b!1906295 (= e!1217606 (contains!3852 (t!177356 (t!177356 (usedCharacters!329 (regex!3821 (rule!6016 separatorToken!354))))) (head!4421 lt!728438)))))

(assert (= (and d!583108 res!851213) b!1906294))

(assert (= (and b!1906294 (not res!851212)) b!1906295))

(assert (=> d!583108 m!2338519))

(assert (=> d!583108 m!2336933))

(declare-fun m!2338597 () Bool)

(assert (=> d!583108 m!2338597))

(assert (=> b!1906295 m!2336933))

(declare-fun m!2338599 () Bool)

(assert (=> b!1906295 m!2338599))

(assert (=> b!1905531 d!583108))

(declare-fun d!583110 () Bool)

(assert (=> d!583110 (= (list!8725 lt!728535) (list!8727 (c!310321 lt!728535)))))

(declare-fun bs!413879 () Bool)

(assert (= bs!413879 d!583110))

(declare-fun m!2338601 () Bool)

(assert (=> bs!413879 m!2338601))

(assert (=> d!582644 d!583110))

(declare-fun d!583112 () Bool)

(declare-fun res!851214 () Bool)

(declare-fun e!1217608 () Bool)

(assert (=> d!583112 (=> res!851214 e!1217608)))

(assert (=> d!583112 (= res!851214 (not (is-Cons!21463 (t!177358 rules!3198))))))

(assert (=> d!583112 (= (sepAndNonSepRulesDisjointChars!919 rules!3198 (t!177358 rules!3198)) e!1217608)))

(declare-fun b!1906296 () Bool)

(declare-fun e!1217609 () Bool)

(assert (=> b!1906296 (= e!1217608 e!1217609)))

(declare-fun res!851215 () Bool)

(assert (=> b!1906296 (=> (not res!851215) (not e!1217609))))

(assert (=> b!1906296 (= res!851215 (ruleDisjointCharsFromAllFromOtherType!427 (h!26864 (t!177358 rules!3198)) rules!3198))))

(declare-fun b!1906297 () Bool)

(assert (=> b!1906297 (= e!1217609 (sepAndNonSepRulesDisjointChars!919 rules!3198 (t!177358 (t!177358 rules!3198))))))

(assert (= (and d!583112 (not res!851214)) b!1906296))

(assert (= (and b!1906296 res!851215) b!1906297))

(declare-fun m!2338603 () Bool)

(assert (=> b!1906296 m!2338603))

(declare-fun m!2338605 () Bool)

(assert (=> b!1906297 m!2338605))

(assert (=> b!1905112 d!583112))

(declare-fun d!583114 () Bool)

(declare-fun res!851216 () Bool)

(declare-fun e!1217610 () Bool)

(assert (=> d!583114 (=> (not res!851216) (not e!1217610))))

(assert (=> d!583114 (= res!851216 (not (isEmpty!13177 (originalCharacters!4628 (h!26863 (t!177357 tokens!598))))))))

(assert (=> d!583114 (= (inv!28562 (h!26863 (t!177357 tokens!598))) e!1217610)))

(declare-fun b!1906298 () Bool)

(declare-fun res!851217 () Bool)

(assert (=> b!1906298 (=> (not res!851217) (not e!1217610))))

(assert (=> b!1906298 (= res!851217 (= (originalCharacters!4628 (h!26863 (t!177357 tokens!598))) (list!8725 (dynLambda!10451 (toChars!5301 (transformation!3821 (rule!6016 (h!26863 (t!177357 tokens!598))))) (value!120491 (h!26863 (t!177357 tokens!598)))))))))

(declare-fun b!1906299 () Bool)

(assert (=> b!1906299 (= e!1217610 (= (size!16929 (h!26863 (t!177357 tokens!598))) (size!16931 (originalCharacters!4628 (h!26863 (t!177357 tokens!598))))))))

(assert (= (and d!583114 res!851216) b!1906298))

(assert (= (and b!1906298 res!851217) b!1906299))

(declare-fun b_lambda!62973 () Bool)

(assert (=> (not b_lambda!62973) (not b!1906298)))

(assert (=> b!1906298 t!177495))

(declare-fun b_and!148045 () Bool)

(assert (= b_and!148017 (and (=> t!177495 result!140802) b_and!148045)))

(assert (=> b!1906298 t!177489))

(declare-fun b_and!148047 () Bool)

(assert (= b_and!148021 (and (=> t!177489 result!140796) b_and!148047)))

(assert (=> b!1906298 t!177491))

(declare-fun b_and!148049 () Bool)

(assert (= b_and!148023 (and (=> t!177491 result!140798) b_and!148049)))

(assert (=> b!1906298 t!177487))

(declare-fun b_and!148051 () Bool)

(assert (= b_and!148019 (and (=> t!177487 result!140794) b_and!148051)))

(assert (=> b!1906298 t!177493))

(declare-fun b_and!148053 () Bool)

(assert (= b_and!148015 (and (=> t!177493 result!140800) b_and!148053)))

(declare-fun m!2338607 () Bool)

(assert (=> d!583114 m!2338607))

(assert (=> b!1906298 m!2338097))

(assert (=> b!1906298 m!2338097))

(declare-fun m!2338609 () Bool)

(assert (=> b!1906298 m!2338609))

(declare-fun m!2338611 () Bool)

(assert (=> b!1906299 m!2338611))

(assert (=> b!1905588 d!583114))

(declare-fun d!583116 () Bool)

(assert (=> d!583116 (= (list!8725 (dynLambda!10451 (toChars!5301 (transformation!3821 (rule!6016 (h!26863 tokens!598)))) (value!120491 (h!26863 tokens!598)))) (list!8727 (c!310321 (dynLambda!10451 (toChars!5301 (transformation!3821 (rule!6016 (h!26863 tokens!598)))) (value!120491 (h!26863 tokens!598))))))))

(declare-fun bs!413880 () Bool)

(assert (= bs!413880 d!583116))

(declare-fun m!2338613 () Bool)

(assert (=> bs!413880 m!2338613))

(assert (=> b!1905058 d!583116))

(declare-fun d!583118 () Bool)

(declare-fun e!1217617 () Bool)

(assert (=> d!583118 e!1217617))

(declare-fun res!851226 () Bool)

(assert (=> d!583118 (=> (not res!851226) (not e!1217617))))

(declare-fun lt!728821 () List!21543)

(assert (=> d!583118 (= res!851226 (= (content!3142 lt!728821) (set.union (content!3142 e!1216946) (content!3142 (ite c!310357 lt!728529 call!117346)))))))

(declare-fun e!1217618 () List!21543)

(assert (=> d!583118 (= lt!728821 e!1217618)))

(declare-fun c!310593 () Bool)

(assert (=> d!583118 (= c!310593 (is-Nil!21461 e!1216946))))

(assert (=> d!583118 (= (++!5766 e!1216946 (ite c!310357 lt!728529 call!117346)) lt!728821)))

(declare-fun b!1906310 () Bool)

(declare-fun res!851227 () Bool)

(assert (=> b!1906310 (=> (not res!851227) (not e!1217617))))

(assert (=> b!1906310 (= res!851227 (= (size!16931 lt!728821) (+ (size!16931 e!1216946) (size!16931 (ite c!310357 lt!728529 call!117346)))))))

(declare-fun b!1906311 () Bool)

(assert (=> b!1906311 (= e!1217617 (or (not (= (ite c!310357 lt!728529 call!117346) Nil!21461)) (= lt!728821 e!1216946)))))

(declare-fun b!1906309 () Bool)

(assert (=> b!1906309 (= e!1217618 (Cons!21461 (h!26862 e!1216946) (++!5766 (t!177356 e!1216946) (ite c!310357 lt!728529 call!117346))))))

(declare-fun b!1906308 () Bool)

(assert (=> b!1906308 (= e!1217618 (ite c!310357 lt!728529 call!117346))))

(assert (= (and d!583118 c!310593) b!1906308))

(assert (= (and d!583118 (not c!310593)) b!1906309))

(assert (= (and d!583118 res!851226) b!1906310))

(assert (= (and b!1906310 res!851227) b!1906311))

(declare-fun m!2338615 () Bool)

(assert (=> d!583118 m!2338615))

(declare-fun m!2338617 () Bool)

(assert (=> d!583118 m!2338617))

(declare-fun m!2338619 () Bool)

(assert (=> d!583118 m!2338619))

(declare-fun m!2338621 () Bool)

(assert (=> b!1906310 m!2338621))

(declare-fun m!2338623 () Bool)

(assert (=> b!1906310 m!2338623))

(declare-fun m!2338625 () Bool)

(assert (=> b!1906310 m!2338625))

(declare-fun m!2338627 () Bool)

(assert (=> b!1906309 m!2338627))

(assert (=> bm!117345 d!583118))

(declare-fun d!583120 () Bool)

(declare-fun lt!728822 () Int)

(assert (=> d!583120 (>= lt!728822 0)))

(declare-fun e!1217619 () Int)

(assert (=> d!583120 (= lt!728822 e!1217619)))

(declare-fun c!310594 () Bool)

(assert (=> d!583120 (= c!310594 (is-Nil!21461 lt!728618))))

(assert (=> d!583120 (= (size!16931 lt!728618) lt!728822)))

(declare-fun b!1906312 () Bool)

(assert (=> b!1906312 (= e!1217619 0)))

(declare-fun b!1906313 () Bool)

(assert (=> b!1906313 (= e!1217619 (+ 1 (size!16931 (t!177356 lt!728618))))))

(assert (= (and d!583120 c!310594) b!1906312))

(assert (= (and d!583120 (not c!310594)) b!1906313))

(declare-fun m!2338629 () Bool)

(assert (=> b!1906313 m!2338629))

(assert (=> b!1905534 d!583120))

(assert (=> b!1905534 d!582886))

(declare-fun d!583122 () Bool)

(declare-fun lt!728823 () Int)

(assert (=> d!583122 (>= lt!728823 0)))

(declare-fun e!1217621 () Int)

(assert (=> d!583122 (= lt!728823 e!1217621)))

(declare-fun c!310595 () Bool)

(assert (=> d!583122 (= c!310595 (is-Nil!21461 (++!5766 lt!728438 lt!728429)))))

(assert (=> d!583122 (= (size!16931 (++!5766 lt!728438 lt!728429)) lt!728823)))

(declare-fun b!1906314 () Bool)

(assert (=> b!1906314 (= e!1217621 0)))

(declare-fun b!1906315 () Bool)

(assert (=> b!1906315 (= e!1217621 (+ 1 (size!16931 (t!177356 (++!5766 lt!728438 lt!728429)))))))

(assert (= (and d!583122 c!310595) b!1906314))

(assert (= (and d!583122 (not c!310595)) b!1906315))

(declare-fun m!2338631 () Bool)

(assert (=> b!1906315 m!2338631))

(assert (=> b!1905534 d!583122))

(declare-fun d!583124 () Bool)

(declare-fun lt!728825 () Int)

(assert (=> d!583124 (>= lt!728825 0)))

(declare-fun e!1217624 () Int)

(assert (=> d!583124 (= lt!728825 e!1217624)))

(declare-fun c!310596 () Bool)

(assert (=> d!583124 (= c!310596 (is-Nil!21461 (_2!11568 (get!6665 lt!728508))))))

(assert (=> d!583124 (= (size!16931 (_2!11568 (get!6665 lt!728508))) lt!728825)))

(declare-fun b!1906320 () Bool)

(assert (=> b!1906320 (= e!1217624 0)))

(declare-fun b!1906321 () Bool)

(assert (=> b!1906321 (= e!1217624 (+ 1 (size!16931 (t!177356 (_2!11568 (get!6665 lt!728508))))))))

(assert (= (and d!583124 c!310596) b!1906320))

(assert (= (and d!583124 (not c!310596)) b!1906321))

(declare-fun m!2338633 () Bool)

(assert (=> b!1906321 m!2338633))

(assert (=> b!1905180 d!583124))

(assert (=> b!1905180 d!582908))

(assert (=> b!1905180 d!582886))

(assert (=> b!1905252 d!582968))

(assert (=> bm!117327 d!582868))

(declare-fun d!583126 () Bool)

(declare-fun lt!728826 () BalanceConc!14092)

(assert (=> d!583126 (= (list!8725 lt!728826) (printList!1026 thiss!23328 (list!8729 (singletonSeq!1848 (h!26863 (t!177357 tokens!598))))))))

(assert (=> d!583126 (= lt!728826 (printTailRec!957 thiss!23328 (singletonSeq!1848 (h!26863 (t!177357 tokens!598))) 0 (BalanceConc!14093 Empty!7138)))))

(assert (=> d!583126 (= (print!1450 thiss!23328 (singletonSeq!1848 (h!26863 (t!177357 tokens!598)))) lt!728826)))

(declare-fun bs!413881 () Bool)

(assert (= bs!413881 d!583126))

(declare-fun m!2338639 () Bool)

(assert (=> bs!413881 m!2338639))

(assert (=> bs!413881 m!2337235))

(declare-fun m!2338643 () Bool)

(assert (=> bs!413881 m!2338643))

(assert (=> bs!413881 m!2338643))

(declare-fun m!2338645 () Bool)

(assert (=> bs!413881 m!2338645))

(assert (=> bs!413881 m!2337235))

(assert (=> bs!413881 m!2337239))

(assert (=> b!1905205 d!583126))

(declare-fun d!583130 () Bool)

(declare-fun e!1217625 () Bool)

(assert (=> d!583130 e!1217625))

(declare-fun res!851232 () Bool)

(assert (=> d!583130 (=> (not res!851232) (not e!1217625))))

(declare-fun lt!728827 () BalanceConc!14096)

(assert (=> d!583130 (= res!851232 (= (list!8729 lt!728827) (Cons!21462 (h!26863 (t!177357 tokens!598)) Nil!21462)))))

(assert (=> d!583130 (= lt!728827 (singleton!832 (h!26863 (t!177357 tokens!598))))))

(assert (=> d!583130 (= (singletonSeq!1848 (h!26863 (t!177357 tokens!598))) lt!728827)))

(declare-fun b!1906322 () Bool)

(assert (=> b!1906322 (= e!1217625 (isBalanced!2237 (c!310444 lt!728827)))))

(assert (= (and d!583130 res!851232) b!1906322))

(declare-fun m!2338647 () Bool)

(assert (=> d!583130 m!2338647))

(declare-fun m!2338649 () Bool)

(assert (=> d!583130 m!2338649))

(declare-fun m!2338651 () Bool)

(assert (=> b!1906322 m!2338651))

(assert (=> b!1905205 d!583130))

(declare-fun d!583132 () Bool)

(declare-fun lt!728864 () BalanceConc!14092)

(declare-fun printListTailRec!436 (LexerInterface!3434 List!21544 List!21543) List!21543)

(declare-fun dropList!767 (BalanceConc!14096 Int) List!21544)

(assert (=> d!583132 (= (list!8725 lt!728864) (printListTailRec!436 thiss!23328 (dropList!767 (singletonSeq!1848 (h!26863 (t!177357 tokens!598))) 0) (list!8725 (BalanceConc!14093 Empty!7138))))))

(declare-fun e!1217659 () BalanceConc!14092)

(assert (=> d!583132 (= lt!728864 e!1217659)))

(declare-fun c!310605 () Bool)

(assert (=> d!583132 (= c!310605 (>= 0 (size!16934 (singletonSeq!1848 (h!26863 (t!177357 tokens!598))))))))

(declare-fun e!1217660 () Bool)

(assert (=> d!583132 e!1217660))

(declare-fun res!851256 () Bool)

(assert (=> d!583132 (=> (not res!851256) (not e!1217660))))

(assert (=> d!583132 (= res!851256 (>= 0 0))))

(assert (=> d!583132 (= (printTailRec!957 thiss!23328 (singletonSeq!1848 (h!26863 (t!177357 tokens!598))) 0 (BalanceConc!14093 Empty!7138)) lt!728864)))

(declare-fun b!1906366 () Bool)

(assert (=> b!1906366 (= e!1217660 (<= 0 (size!16934 (singletonSeq!1848 (h!26863 (t!177357 tokens!598))))))))

(declare-fun b!1906367 () Bool)

(assert (=> b!1906367 (= e!1217659 (BalanceConc!14093 Empty!7138))))

(declare-fun b!1906368 () Bool)

(declare-fun ++!5768 (BalanceConc!14092 BalanceConc!14092) BalanceConc!14092)

(assert (=> b!1906368 (= e!1217659 (printTailRec!957 thiss!23328 (singletonSeq!1848 (h!26863 (t!177357 tokens!598))) (+ 0 1) (++!5768 (BalanceConc!14093 Empty!7138) (charsOf!2377 (apply!5631 (singletonSeq!1848 (h!26863 (t!177357 tokens!598))) 0)))))))

(declare-fun lt!728869 () List!21544)

(assert (=> b!1906368 (= lt!728869 (list!8729 (singletonSeq!1848 (h!26863 (t!177357 tokens!598)))))))

(declare-fun lt!728867 () Unit!35791)

(declare-fun lemmaDropApply!691 (List!21544 Int) Unit!35791)

(assert (=> b!1906368 (= lt!728867 (lemmaDropApply!691 lt!728869 0))))

(declare-fun head!4423 (List!21544) Token!7194)

(declare-fun drop!1058 (List!21544 Int) List!21544)

(assert (=> b!1906368 (= (head!4423 (drop!1058 lt!728869 0)) (apply!5633 lt!728869 0))))

(declare-fun lt!728868 () Unit!35791)

(assert (=> b!1906368 (= lt!728868 lt!728867)))

(declare-fun lt!728866 () List!21544)

(assert (=> b!1906368 (= lt!728866 (list!8729 (singletonSeq!1848 (h!26863 (t!177357 tokens!598)))))))

(declare-fun lt!728863 () Unit!35791)

(declare-fun lemmaDropTail!667 (List!21544 Int) Unit!35791)

(assert (=> b!1906368 (= lt!728863 (lemmaDropTail!667 lt!728866 0))))

(declare-fun tail!2949 (List!21544) List!21544)

(assert (=> b!1906368 (= (tail!2949 (drop!1058 lt!728866 0)) (drop!1058 lt!728866 (+ 0 1)))))

(declare-fun lt!728865 () Unit!35791)

(assert (=> b!1906368 (= lt!728865 lt!728863)))

(assert (= (and d!583132 res!851256) b!1906366))

(assert (= (and d!583132 c!310605) b!1906367))

(assert (= (and d!583132 (not c!310605)) b!1906368))

(assert (=> d!583132 m!2337235))

(declare-fun m!2338727 () Bool)

(assert (=> d!583132 m!2338727))

(declare-fun m!2338729 () Bool)

(assert (=> d!583132 m!2338729))

(assert (=> d!583132 m!2337235))

(declare-fun m!2338731 () Bool)

(assert (=> d!583132 m!2338731))

(assert (=> d!583132 m!2338727))

(declare-fun m!2338734 () Bool)

(assert (=> d!583132 m!2338734))

(declare-fun m!2338737 () Bool)

(assert (=> d!583132 m!2338737))

(assert (=> d!583132 m!2338734))

(assert (=> b!1906366 m!2337235))

(assert (=> b!1906366 m!2338731))

(declare-fun m!2338739 () Bool)

(assert (=> b!1906368 m!2338739))

(declare-fun m!2338741 () Bool)

(assert (=> b!1906368 m!2338741))

(assert (=> b!1906368 m!2337235))

(assert (=> b!1906368 m!2338643))

(declare-fun m!2338745 () Bool)

(assert (=> b!1906368 m!2338745))

(assert (=> b!1906368 m!2337235))

(declare-fun m!2338747 () Bool)

(assert (=> b!1906368 m!2338747))

(declare-fun m!2338749 () Bool)

(assert (=> b!1906368 m!2338749))

(declare-fun m!2338751 () Bool)

(assert (=> b!1906368 m!2338751))

(assert (=> b!1906368 m!2338749))

(assert (=> b!1906368 m!2338739))

(declare-fun m!2338753 () Bool)

(assert (=> b!1906368 m!2338753))

(declare-fun m!2338755 () Bool)

(assert (=> b!1906368 m!2338755))

(assert (=> b!1906368 m!2337235))

(declare-fun m!2338757 () Bool)

(assert (=> b!1906368 m!2338757))

(declare-fun m!2338759 () Bool)

(assert (=> b!1906368 m!2338759))

(declare-fun m!2338761 () Bool)

(assert (=> b!1906368 m!2338761))

(declare-fun m!2338763 () Bool)

(assert (=> b!1906368 m!2338763))

(assert (=> b!1906368 m!2338757))

(assert (=> b!1906368 m!2338747))

(assert (=> b!1906368 m!2338763))

(assert (=> b!1905205 d!583132))

(declare-fun b!1906523 () Bool)

(declare-fun e!1217740 () Unit!35791)

(declare-fun Unit!35802 () Unit!35791)

(assert (=> b!1906523 (= e!1217740 Unit!35802)))

(declare-fun lt!728943 () List!21543)

(assert (=> b!1906523 (= lt!728943 (++!5766 call!117346 lt!728529))))

(declare-fun lt!728944 () Unit!35791)

(declare-fun lt!728936 () Token!7194)

(declare-fun lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!368 (LexerInterface!3434 Rule!7442 List!21545 List!21543) Unit!35791)

(assert (=> b!1906523 (= lt!728944 (lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!368 thiss!23328 (rule!6016 lt!728936) rules!3198 lt!728943))))

(assert (=> b!1906523 (isEmpty!13179 (maxPrefixOneRule!1202 thiss!23328 (rule!6016 lt!728936) lt!728943))))

(declare-fun lt!728946 () Unit!35791)

(assert (=> b!1906523 (= lt!728946 lt!728944)))

(declare-fun lt!728939 () List!21543)

(assert (=> b!1906523 (= lt!728939 (list!8725 (charsOf!2377 lt!728936)))))

(declare-fun lt!728937 () Unit!35791)

(declare-fun lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!364 (LexerInterface!3434 Rule!7442 List!21543 List!21543) Unit!35791)

(assert (=> b!1906523 (= lt!728937 (lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!364 thiss!23328 (rule!6016 lt!728936) lt!728939 (++!5766 call!117346 lt!728529)))))

(assert (=> b!1906523 (not (matchR!2532 (regex!3821 (rule!6016 lt!728936)) lt!728939))))

(declare-fun lt!728948 () Unit!35791)

(assert (=> b!1906523 (= lt!728948 lt!728937)))

(assert (=> b!1906523 false))

(declare-fun e!1217741 () Bool)

(declare-fun b!1906522 () Bool)

(assert (=> b!1906522 (= e!1217741 (= (rule!6016 lt!728936) (get!6666 (getRuleFromTag!664 thiss!23328 rules!3198 (tag!4251 (rule!6016 lt!728936))))))))

(declare-fun b!1906524 () Bool)

(declare-fun Unit!35803 () Unit!35791)

(assert (=> b!1906524 (= e!1217740 Unit!35803)))

(declare-fun b!1906521 () Bool)

(declare-fun res!851315 () Bool)

(assert (=> b!1906521 (=> (not res!851315) (not e!1217741))))

(assert (=> b!1906521 (= res!851315 (matchR!2532 (regex!3821 (get!6666 (getRuleFromTag!664 thiss!23328 rules!3198 (tag!4251 (rule!6016 lt!728936))))) (list!8725 (charsOf!2377 lt!728936))))))

(declare-fun d!583188 () Bool)

(assert (=> d!583188 (isDefined!3646 (maxPrefix!1880 thiss!23328 rules!3198 (++!5766 call!117346 lt!728529)))))

(declare-fun lt!728933 () Unit!35791)

(assert (=> d!583188 (= lt!728933 e!1217740)))

(declare-fun c!310650 () Bool)

(assert (=> d!583188 (= c!310650 (isEmpty!13179 (maxPrefix!1880 thiss!23328 rules!3198 (++!5766 call!117346 lt!728529))))))

(declare-fun lt!728949 () Unit!35791)

(declare-fun lt!728938 () Unit!35791)

(assert (=> d!583188 (= lt!728949 lt!728938)))

(assert (=> d!583188 e!1217741))

(declare-fun res!851316 () Bool)

(assert (=> d!583188 (=> (not res!851316) (not e!1217741))))

(assert (=> d!583188 (= res!851316 (isDefined!3645 (getRuleFromTag!664 thiss!23328 rules!3198 (tag!4251 (rule!6016 lt!728936)))))))

(assert (=> d!583188 (= lt!728938 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!664 thiss!23328 rules!3198 call!117346 lt!728936))))

(declare-fun lt!728941 () Unit!35791)

(declare-fun lt!728942 () Unit!35791)

(assert (=> d!583188 (= lt!728941 lt!728942)))

(declare-fun lt!728935 () List!21543)

(assert (=> d!583188 (isPrefix!1920 lt!728935 (++!5766 call!117346 lt!728529))))

(declare-fun lemmaPrefixStaysPrefixWhenAddingToSuffix!360 (List!21543 List!21543 List!21543) Unit!35791)

(assert (=> d!583188 (= lt!728942 (lemmaPrefixStaysPrefixWhenAddingToSuffix!360 lt!728935 call!117346 lt!728529))))

(assert (=> d!583188 (= lt!728935 (list!8725 (charsOf!2377 lt!728936)))))

(declare-fun lt!728934 () Unit!35791)

(declare-fun lt!728945 () Unit!35791)

(assert (=> d!583188 (= lt!728934 lt!728945)))

(declare-fun lt!728940 () List!21543)

(declare-fun lt!728947 () List!21543)

(assert (=> d!583188 (isPrefix!1920 lt!728940 (++!5766 lt!728940 lt!728947))))

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!1319 (List!21543 List!21543) Unit!35791)

(assert (=> d!583188 (= lt!728945 (lemmaConcatTwoListThenFirstIsPrefix!1319 lt!728940 lt!728947))))

(assert (=> d!583188 (= lt!728947 (_2!11568 (get!6665 (maxPrefix!1880 thiss!23328 rules!3198 call!117346))))))

(assert (=> d!583188 (= lt!728940 (list!8725 (charsOf!2377 lt!728936)))))

(assert (=> d!583188 (= lt!728936 (head!4423 (list!8729 (_1!11571 (lex!1522 thiss!23328 rules!3198 (seqFromList!2693 call!117346))))))))

(assert (=> d!583188 (not (isEmpty!13175 rules!3198))))

(assert (=> d!583188 (= (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!719 thiss!23328 rules!3198 call!117346 lt!728529) lt!728933)))

(assert (= (and d!583188 res!851316) b!1906521))

(assert (= (and b!1906521 res!851315) b!1906522))

(assert (= (and d!583188 c!310650) b!1906523))

(assert (= (and d!583188 (not c!310650)) b!1906524))

(declare-fun m!2338933 () Bool)

(assert (=> b!1906523 m!2338933))

(declare-fun m!2338935 () Bool)

(assert (=> b!1906523 m!2338935))

(declare-fun m!2338937 () Bool)

(assert (=> b!1906523 m!2338937))

(declare-fun m!2338939 () Bool)

(assert (=> b!1906523 m!2338939))

(declare-fun m!2338941 () Bool)

(assert (=> b!1906523 m!2338941))

(assert (=> b!1906523 m!2338933))

(declare-fun m!2338943 () Bool)

(assert (=> b!1906523 m!2338943))

(assert (=> b!1906523 m!2338941))

(declare-fun m!2338945 () Bool)

(assert (=> b!1906523 m!2338945))

(assert (=> b!1906523 m!2338937))

(declare-fun m!2338947 () Bool)

(assert (=> b!1906523 m!2338947))

(declare-fun m!2338949 () Bool)

(assert (=> b!1906522 m!2338949))

(assert (=> b!1906522 m!2338949))

(declare-fun m!2338951 () Bool)

(assert (=> b!1906522 m!2338951))

(assert (=> b!1906521 m!2338937))

(assert (=> b!1906521 m!2338939))

(assert (=> b!1906521 m!2338939))

(declare-fun m!2338953 () Bool)

(assert (=> b!1906521 m!2338953))

(assert (=> b!1906521 m!2338949))

(assert (=> b!1906521 m!2338949))

(assert (=> b!1906521 m!2338951))

(assert (=> b!1906521 m!2338937))

(assert (=> d!583188 m!2336919))

(declare-fun m!2338955 () Bool)

(assert (=> d!583188 m!2338955))

(declare-fun m!2338957 () Bool)

(assert (=> d!583188 m!2338957))

(assert (=> d!583188 m!2338957))

(declare-fun m!2338959 () Bool)

(assert (=> d!583188 m!2338959))

(assert (=> d!583188 m!2338949))

(assert (=> d!583188 m!2338933))

(declare-fun m!2338961 () Bool)

(assert (=> d!583188 m!2338961))

(declare-fun m!2338963 () Bool)

(assert (=> d!583188 m!2338963))

(declare-fun m!2338965 () Bool)

(assert (=> d!583188 m!2338965))

(declare-fun m!2338967 () Bool)

(assert (=> d!583188 m!2338967))

(declare-fun m!2338969 () Bool)

(assert (=> d!583188 m!2338969))

(assert (=> d!583188 m!2338955))

(declare-fun m!2338971 () Bool)

(assert (=> d!583188 m!2338971))

(assert (=> d!583188 m!2338933))

(declare-fun m!2338973 () Bool)

(assert (=> d!583188 m!2338973))

(assert (=> d!583188 m!2338961))

(declare-fun m!2338975 () Bool)

(assert (=> d!583188 m!2338975))

(assert (=> d!583188 m!2338937))

(assert (=> d!583188 m!2338949))

(declare-fun m!2338977 () Bool)

(assert (=> d!583188 m!2338977))

(assert (=> d!583188 m!2338933))

(assert (=> d!583188 m!2338961))

(declare-fun m!2338979 () Bool)

(assert (=> d!583188 m!2338979))

(declare-fun m!2338981 () Bool)

(assert (=> d!583188 m!2338981))

(declare-fun m!2338983 () Bool)

(assert (=> d!583188 m!2338983))

(declare-fun m!2338985 () Bool)

(assert (=> d!583188 m!2338985))

(assert (=> d!583188 m!2338937))

(assert (=> d!583188 m!2338939))

(assert (=> d!583188 m!2338981))

(assert (=> d!583188 m!2338965))

(assert (=> b!1905205 d!583188))

(declare-fun d!583258 () Bool)

(declare-fun e!1217742 () Bool)

(assert (=> d!583258 e!1217742))

(declare-fun res!851317 () Bool)

(assert (=> d!583258 (=> (not res!851317) (not e!1217742))))

(declare-fun lt!728950 () List!21543)

(assert (=> d!583258 (= res!851317 (= (content!3142 lt!728950) (set.union (content!3142 (list!8725 (charsOf!2377 (_1!11568 (get!6665 lt!728508))))) (content!3142 (_2!11568 (get!6665 lt!728508))))))))

(declare-fun e!1217743 () List!21543)

(assert (=> d!583258 (= lt!728950 e!1217743)))

(declare-fun c!310651 () Bool)

(assert (=> d!583258 (= c!310651 (is-Nil!21461 (list!8725 (charsOf!2377 (_1!11568 (get!6665 lt!728508))))))))

(assert (=> d!583258 (= (++!5766 (list!8725 (charsOf!2377 (_1!11568 (get!6665 lt!728508)))) (_2!11568 (get!6665 lt!728508))) lt!728950)))

(declare-fun b!1906527 () Bool)

(declare-fun res!851318 () Bool)

(assert (=> b!1906527 (=> (not res!851318) (not e!1217742))))

(assert (=> b!1906527 (= res!851318 (= (size!16931 lt!728950) (+ (size!16931 (list!8725 (charsOf!2377 (_1!11568 (get!6665 lt!728508))))) (size!16931 (_2!11568 (get!6665 lt!728508))))))))

(declare-fun b!1906528 () Bool)

(assert (=> b!1906528 (= e!1217742 (or (not (= (_2!11568 (get!6665 lt!728508)) Nil!21461)) (= lt!728950 (list!8725 (charsOf!2377 (_1!11568 (get!6665 lt!728508)))))))))

(declare-fun b!1906526 () Bool)

(assert (=> b!1906526 (= e!1217743 (Cons!21461 (h!26862 (list!8725 (charsOf!2377 (_1!11568 (get!6665 lt!728508))))) (++!5766 (t!177356 (list!8725 (charsOf!2377 (_1!11568 (get!6665 lt!728508))))) (_2!11568 (get!6665 lt!728508)))))))

(declare-fun b!1906525 () Bool)

(assert (=> b!1906525 (= e!1217743 (_2!11568 (get!6665 lt!728508)))))

(assert (= (and d!583258 c!310651) b!1906525))

(assert (= (and d!583258 (not c!310651)) b!1906526))

(assert (= (and d!583258 res!851317) b!1906527))

(assert (= (and b!1906527 res!851318) b!1906528))

(declare-fun m!2338987 () Bool)

(assert (=> d!583258 m!2338987))

(assert (=> d!583258 m!2337193))

(declare-fun m!2338989 () Bool)

(assert (=> d!583258 m!2338989))

(declare-fun m!2338991 () Bool)

(assert (=> d!583258 m!2338991))

(declare-fun m!2338993 () Bool)

(assert (=> b!1906527 m!2338993))

(assert (=> b!1906527 m!2337193))

(declare-fun m!2338995 () Bool)

(assert (=> b!1906527 m!2338995))

(assert (=> b!1906527 m!2337199))

(declare-fun m!2338997 () Bool)

(assert (=> b!1906526 m!2338997))

(assert (=> b!1905173 d!583258))

(assert (=> b!1905173 d!582910))

(assert (=> b!1905173 d!582912))

(assert (=> b!1905173 d!582908))

(assert (=> b!1905356 d!583032))

(assert (=> b!1905356 d!582648))

(declare-fun bs!413910 () Bool)

(declare-fun d!583260 () Bool)

(assert (= bs!413910 (and d!583260 d!582664)))

(declare-fun lambda!74500 () Int)

(assert (=> bs!413910 (= (= (toValue!5442 (transformation!3821 (rule!6016 separatorToken!354))) (toValue!5442 (transformation!3821 (rule!6016 (h!26863 tokens!598))))) (= lambda!74500 lambda!74455))))

(declare-fun bs!413911 () Bool)

(assert (= bs!413911 (and d!583260 d!582976)))

(assert (=> bs!413911 (= (= (toValue!5442 (transformation!3821 (rule!6016 separatorToken!354))) (toValue!5442 (transformation!3821 (h!26864 rules!3198)))) (= lambda!74500 lambda!74480))))

(assert (=> d!583260 true))

(assert (=> d!583260 (< (dynLambda!10452 order!13561 (toValue!5442 (transformation!3821 (rule!6016 separatorToken!354)))) (dynLambda!10462 order!13575 lambda!74500))))

(assert (=> d!583260 (= (equivClasses!1469 (toChars!5301 (transformation!3821 (rule!6016 separatorToken!354))) (toValue!5442 (transformation!3821 (rule!6016 separatorToken!354)))) (Forall2!619 lambda!74500))))

(declare-fun bs!413912 () Bool)

(assert (= bs!413912 d!583260))

(declare-fun m!2338999 () Bool)

(assert (=> bs!413912 m!2338999))

(assert (=> b!1905363 d!583260))

(declare-fun d!583262 () Bool)

(assert (=> d!583262 (= (inv!28566 (dynLambda!10451 (toChars!5301 (transformation!3821 (rule!6016 separatorToken!354))) (value!120491 separatorToken!354))) (isBalanced!2238 (c!310321 (dynLambda!10451 (toChars!5301 (transformation!3821 (rule!6016 separatorToken!354))) (value!120491 separatorToken!354)))))))

(declare-fun bs!413913 () Bool)

(assert (= bs!413913 d!583262))

(declare-fun m!2339001 () Bool)

(assert (=> bs!413913 m!2339001))

(assert (=> tb!116363 d!583262))

(declare-fun b!1906529 () Bool)

(declare-fun e!1217746 () Bool)

(declare-fun lt!728954 () Option!4347)

(assert (=> b!1906529 (= e!1217746 (contains!3854 (t!177358 rules!3198) (rule!6016 (_1!11568 (get!6665 lt!728954)))))))

(declare-fun b!1906530 () Bool)

(declare-fun res!851320 () Bool)

(assert (=> b!1906530 (=> (not res!851320) (not e!1217746))))

(assert (=> b!1906530 (= res!851320 (= (++!5766 (list!8725 (charsOf!2377 (_1!11568 (get!6665 lt!728954)))) (_2!11568 (get!6665 lt!728954))) lt!728437))))

(declare-fun bm!117467 () Bool)

(declare-fun call!117472 () Option!4347)

(assert (=> bm!117467 (= call!117472 (maxPrefixOneRule!1202 thiss!23328 (h!26864 (t!177358 rules!3198)) lt!728437))))

(declare-fun b!1906531 () Bool)

(declare-fun e!1217745 () Option!4347)

(assert (=> b!1906531 (= e!1217745 call!117472)))

(declare-fun b!1906532 () Bool)

(declare-fun res!851319 () Bool)

(assert (=> b!1906532 (=> (not res!851319) (not e!1217746))))

(assert (=> b!1906532 (= res!851319 (= (value!120491 (_1!11568 (get!6665 lt!728954))) (apply!5629 (transformation!3821 (rule!6016 (_1!11568 (get!6665 lt!728954)))) (seqFromList!2693 (originalCharacters!4628 (_1!11568 (get!6665 lt!728954)))))))))

(declare-fun b!1906534 () Bool)

(declare-fun e!1217744 () Bool)

(assert (=> b!1906534 (= e!1217744 e!1217746)))

(declare-fun res!851322 () Bool)

(assert (=> b!1906534 (=> (not res!851322) (not e!1217746))))

(assert (=> b!1906534 (= res!851322 (isDefined!3646 lt!728954))))

(declare-fun b!1906535 () Bool)

(declare-fun res!851323 () Bool)

(assert (=> b!1906535 (=> (not res!851323) (not e!1217746))))

(assert (=> b!1906535 (= res!851323 (matchR!2532 (regex!3821 (rule!6016 (_1!11568 (get!6665 lt!728954)))) (list!8725 (charsOf!2377 (_1!11568 (get!6665 lt!728954))))))))

(declare-fun b!1906536 () Bool)

(declare-fun res!851321 () Bool)

(assert (=> b!1906536 (=> (not res!851321) (not e!1217746))))

(assert (=> b!1906536 (= res!851321 (= (list!8725 (charsOf!2377 (_1!11568 (get!6665 lt!728954)))) (originalCharacters!4628 (_1!11568 (get!6665 lt!728954)))))))

(declare-fun b!1906537 () Bool)

(declare-fun res!851325 () Bool)

(assert (=> b!1906537 (=> (not res!851325) (not e!1217746))))

(assert (=> b!1906537 (= res!851325 (< (size!16931 (_2!11568 (get!6665 lt!728954))) (size!16931 lt!728437)))))

(declare-fun d!583264 () Bool)

(assert (=> d!583264 e!1217744))

(declare-fun res!851324 () Bool)

(assert (=> d!583264 (=> res!851324 e!1217744)))

(assert (=> d!583264 (= res!851324 (isEmpty!13179 lt!728954))))

(assert (=> d!583264 (= lt!728954 e!1217745)))

(declare-fun c!310652 () Bool)

(assert (=> d!583264 (= c!310652 (and (is-Cons!21463 (t!177358 rules!3198)) (is-Nil!21463 (t!177358 (t!177358 rules!3198)))))))

(declare-fun lt!728953 () Unit!35791)

(declare-fun lt!728952 () Unit!35791)

(assert (=> d!583264 (= lt!728953 lt!728952)))

(assert (=> d!583264 (isPrefix!1920 lt!728437 lt!728437)))

(assert (=> d!583264 (= lt!728952 (lemmaIsPrefixRefl!1238 lt!728437 lt!728437))))

(assert (=> d!583264 (rulesValidInductive!1299 thiss!23328 (t!177358 rules!3198))))

(assert (=> d!583264 (= (maxPrefix!1880 thiss!23328 (t!177358 rules!3198) lt!728437) lt!728954)))

(declare-fun b!1906533 () Bool)

(declare-fun lt!728955 () Option!4347)

(declare-fun lt!728951 () Option!4347)

(assert (=> b!1906533 (= e!1217745 (ite (and (is-None!4346 lt!728955) (is-None!4346 lt!728951)) None!4346 (ite (is-None!4346 lt!728951) lt!728955 (ite (is-None!4346 lt!728955) lt!728951 (ite (>= (size!16929 (_1!11568 (v!26381 lt!728955))) (size!16929 (_1!11568 (v!26381 lt!728951)))) lt!728955 lt!728951)))))))

(assert (=> b!1906533 (= lt!728955 call!117472)))

(assert (=> b!1906533 (= lt!728951 (maxPrefix!1880 thiss!23328 (t!177358 (t!177358 rules!3198)) lt!728437))))

(assert (= (and d!583264 c!310652) b!1906531))

(assert (= (and d!583264 (not c!310652)) b!1906533))

(assert (= (or b!1906531 b!1906533) bm!117467))

(assert (= (and d!583264 (not res!851324)) b!1906534))

(assert (= (and b!1906534 res!851322) b!1906536))

(assert (= (and b!1906536 res!851321) b!1906537))

(assert (= (and b!1906537 res!851325) b!1906530))

(assert (= (and b!1906530 res!851320) b!1906532))

(assert (= (and b!1906532 res!851319) b!1906535))

(assert (= (and b!1906535 res!851323) b!1906529))

(declare-fun m!2339003 () Bool)

(assert (=> d!583264 m!2339003))

(assert (=> d!583264 m!2337179))

(assert (=> d!583264 m!2337181))

(assert (=> d!583264 m!2338003))

(declare-fun m!2339005 () Bool)

(assert (=> bm!117467 m!2339005))

(declare-fun m!2339007 () Bool)

(assert (=> b!1906533 m!2339007))

(declare-fun m!2339009 () Bool)

(assert (=> b!1906535 m!2339009))

(declare-fun m!2339011 () Bool)

(assert (=> b!1906535 m!2339011))

(assert (=> b!1906535 m!2339011))

(declare-fun m!2339013 () Bool)

(assert (=> b!1906535 m!2339013))

(assert (=> b!1906535 m!2339013))

(declare-fun m!2339015 () Bool)

(assert (=> b!1906535 m!2339015))

(assert (=> b!1906530 m!2339009))

(assert (=> b!1906530 m!2339011))

(assert (=> b!1906530 m!2339011))

(assert (=> b!1906530 m!2339013))

(assert (=> b!1906530 m!2339013))

(declare-fun m!2339017 () Bool)

(assert (=> b!1906530 m!2339017))

(assert (=> b!1906536 m!2339009))

(assert (=> b!1906536 m!2339011))

(assert (=> b!1906536 m!2339011))

(assert (=> b!1906536 m!2339013))

(assert (=> b!1906537 m!2339009))

(declare-fun m!2339019 () Bool)

(assert (=> b!1906537 m!2339019))

(assert (=> b!1906537 m!2337201))

(declare-fun m!2339021 () Bool)

(assert (=> b!1906534 m!2339021))

(assert (=> b!1906532 m!2339009))

(declare-fun m!2339023 () Bool)

(assert (=> b!1906532 m!2339023))

(assert (=> b!1906532 m!2339023))

(declare-fun m!2339025 () Bool)

(assert (=> b!1906532 m!2339025))

(assert (=> b!1906529 m!2339009))

(declare-fun m!2339027 () Bool)

(assert (=> b!1906529 m!2339027))

(assert (=> b!1905176 d!583264))

(assert (=> d!582750 d!582744))

(declare-fun d!583266 () Bool)

(assert (=> d!583266 (= (++!5766 (++!5766 lt!728437 lt!728438) lt!728429) (++!5766 lt!728437 (++!5766 lt!728438 lt!728429)))))

(assert (=> d!583266 true))

(declare-fun _$52!1193 () Unit!35791)

(assert (=> d!583266 (= (choose!11864 lt!728437 lt!728438 lt!728429) _$52!1193)))

(declare-fun bs!413914 () Bool)

(assert (= bs!413914 d!583266))

(assert (=> bs!413914 m!2336943))

(assert (=> bs!413914 m!2336943))

(assert (=> bs!413914 m!2336945))

(assert (=> bs!413914 m!2336939))

(assert (=> bs!413914 m!2336939))

(assert (=> bs!413914 m!2336941))

(assert (=> d!582750 d!583266))

(assert (=> d!582750 d!582752))

(assert (=> d!582750 d!582754))

(assert (=> d!582750 d!582756))

(declare-fun d!583268 () Bool)

(declare-fun c!310655 () Bool)

(assert (=> d!583268 (= c!310655 (is-Node!7138 (c!310321 (dynLambda!10451 (toChars!5301 (transformation!3821 (rule!6016 (h!26863 tokens!598)))) (dynLambda!10456 (toValue!5442 (transformation!3821 (rule!6016 (h!26863 tokens!598)))) lt!728440)))))))

(declare-fun e!1217751 () Bool)

(assert (=> d!583268 (= (inv!28565 (c!310321 (dynLambda!10451 (toChars!5301 (transformation!3821 (rule!6016 (h!26863 tokens!598)))) (dynLambda!10456 (toValue!5442 (transformation!3821 (rule!6016 (h!26863 tokens!598)))) lt!728440)))) e!1217751)))

(declare-fun b!1906544 () Bool)

(assert (=> b!1906544 (= e!1217751 (inv!28569 (c!310321 (dynLambda!10451 (toChars!5301 (transformation!3821 (rule!6016 (h!26863 tokens!598)))) (dynLambda!10456 (toValue!5442 (transformation!3821 (rule!6016 (h!26863 tokens!598)))) lt!728440)))))))

(declare-fun b!1906545 () Bool)

(declare-fun e!1217752 () Bool)

(assert (=> b!1906545 (= e!1217751 e!1217752)))

(declare-fun res!851328 () Bool)

(assert (=> b!1906545 (= res!851328 (not (is-Leaf!10512 (c!310321 (dynLambda!10451 (toChars!5301 (transformation!3821 (rule!6016 (h!26863 tokens!598)))) (dynLambda!10456 (toValue!5442 (transformation!3821 (rule!6016 (h!26863 tokens!598)))) lt!728440))))))))

(assert (=> b!1906545 (=> res!851328 e!1217752)))

(declare-fun b!1906546 () Bool)

(assert (=> b!1906546 (= e!1217752 (inv!28570 (c!310321 (dynLambda!10451 (toChars!5301 (transformation!3821 (rule!6016 (h!26863 tokens!598)))) (dynLambda!10456 (toValue!5442 (transformation!3821 (rule!6016 (h!26863 tokens!598)))) lt!728440)))))))

(assert (= (and d!583268 c!310655) b!1906544))

(assert (= (and d!583268 (not c!310655)) b!1906545))

(assert (= (and b!1906545 (not res!851328)) b!1906546))

(declare-fun m!2339029 () Bool)

(assert (=> b!1906544 m!2339029))

(declare-fun m!2339031 () Bool)

(assert (=> b!1906546 m!2339031))

(assert (=> b!1905266 d!583268))

(declare-fun d!583270 () Bool)

(declare-fun e!1217753 () Bool)

(assert (=> d!583270 e!1217753))

(declare-fun res!851329 () Bool)

(assert (=> d!583270 (=> (not res!851329) (not e!1217753))))

(declare-fun lt!728970 () List!21543)

(assert (=> d!583270 (= res!851329 (= (content!3142 lt!728970) (set.union (content!3142 (t!177356 (++!5766 lt!728437 lt!728438))) (content!3142 lt!728429))))))

(declare-fun e!1217754 () List!21543)

(assert (=> d!583270 (= lt!728970 e!1217754)))

(declare-fun c!310656 () Bool)

(assert (=> d!583270 (= c!310656 (is-Nil!21461 (t!177356 (++!5766 lt!728437 lt!728438))))))

(assert (=> d!583270 (= (++!5766 (t!177356 (++!5766 lt!728437 lt!728438)) lt!728429) lt!728970)))

(declare-fun b!1906549 () Bool)

(declare-fun res!851330 () Bool)

(assert (=> b!1906549 (=> (not res!851330) (not e!1217753))))

(assert (=> b!1906549 (= res!851330 (= (size!16931 lt!728970) (+ (size!16931 (t!177356 (++!5766 lt!728437 lt!728438))) (size!16931 lt!728429))))))

(declare-fun b!1906550 () Bool)

(assert (=> b!1906550 (= e!1217753 (or (not (= lt!728429 Nil!21461)) (= lt!728970 (t!177356 (++!5766 lt!728437 lt!728438)))))))

(declare-fun b!1906548 () Bool)

(assert (=> b!1906548 (= e!1217754 (Cons!21461 (h!26862 (t!177356 (++!5766 lt!728437 lt!728438))) (++!5766 (t!177356 (t!177356 (++!5766 lt!728437 lt!728438))) lt!728429)))))

(declare-fun b!1906547 () Bool)

(assert (=> b!1906547 (= e!1217754 lt!728429)))

(assert (= (and d!583270 c!310656) b!1906547))

(assert (= (and d!583270 (not c!310656)) b!1906548))

(assert (= (and d!583270 res!851329) b!1906549))

(assert (= (and b!1906549 res!851330) b!1906550))

(declare-fun m!2339033 () Bool)

(assert (=> d!583270 m!2339033))

(declare-fun m!2339035 () Bool)

(assert (=> d!583270 m!2339035))

(assert (=> d!583270 m!2337249))

(declare-fun m!2339037 () Bool)

(assert (=> b!1906549 m!2339037))

(assert (=> b!1906549 m!2337917))

(assert (=> b!1906549 m!2337253))

(declare-fun m!2339039 () Bool)

(assert (=> b!1906548 m!2339039))

(assert (=> b!1905561 d!583270))

(declare-fun d!583272 () Bool)

(declare-fun c!310657 () Bool)

(assert (=> d!583272 (= c!310657 (is-Nil!21461 lt!728622))))

(declare-fun e!1217755 () (Set C!10638))

(assert (=> d!583272 (= (content!3142 lt!728622) e!1217755)))

(declare-fun b!1906551 () Bool)

(assert (=> b!1906551 (= e!1217755 (as set.empty (Set C!10638)))))

(declare-fun b!1906552 () Bool)

(assert (=> b!1906552 (= e!1217755 (set.union (set.insert (h!26862 lt!728622) (as set.empty (Set C!10638))) (content!3142 (t!177356 lt!728622))))))

(assert (= (and d!583272 c!310657) b!1906551))

(assert (= (and d!583272 (not c!310657)) b!1906552))

(declare-fun m!2339041 () Bool)

(assert (=> b!1906552 m!2339041))

(declare-fun m!2339043 () Bool)

(assert (=> b!1906552 m!2339043))

(assert (=> d!582752 d!583272))

(declare-fun d!583274 () Bool)

(declare-fun c!310658 () Bool)

(assert (=> d!583274 (= c!310658 (is-Nil!21461 (++!5766 lt!728437 lt!728438)))))

(declare-fun e!1217756 () (Set C!10638))

(assert (=> d!583274 (= (content!3142 (++!5766 lt!728437 lt!728438)) e!1217756)))

(declare-fun b!1906553 () Bool)

(assert (=> b!1906553 (= e!1217756 (as set.empty (Set C!10638)))))

(declare-fun b!1906554 () Bool)

(assert (=> b!1906554 (= e!1217756 (set.union (set.insert (h!26862 (++!5766 lt!728437 lt!728438)) (as set.empty (Set C!10638))) (content!3142 (t!177356 (++!5766 lt!728437 lt!728438)))))))

(assert (= (and d!583274 c!310658) b!1906553))

(assert (= (and d!583274 (not c!310658)) b!1906554))

(declare-fun m!2339045 () Bool)

(assert (=> b!1906554 m!2339045))

(assert (=> b!1906554 m!2339035))

(assert (=> d!582752 d!583274))

(assert (=> d!582752 d!582842))

(declare-fun d!583276 () Bool)

(assert (=> d!583276 (= (isDefined!3646 lt!728554) (not (isEmpty!13179 lt!728554)))))

(declare-fun bs!413915 () Bool)

(assert (= bs!413915 d!583276))

(assert (=> bs!413915 m!2337295))

(assert (=> b!1905274 d!583276))

(declare-fun bs!413916 () Bool)

(declare-fun d!583278 () Bool)

(assert (= bs!413916 (and d!583278 d!582664)))

(declare-fun lambda!74501 () Int)

(assert (=> bs!413916 (= lambda!74501 lambda!74455)))

(declare-fun bs!413917 () Bool)

(assert (= bs!413917 (and d!583278 d!582976)))

(assert (=> bs!413917 (= (= (toValue!5442 (transformation!3821 (rule!6016 (h!26863 tokens!598)))) (toValue!5442 (transformation!3821 (h!26864 rules!3198)))) (= lambda!74501 lambda!74480))))

(declare-fun bs!413918 () Bool)

(assert (= bs!413918 (and d!583278 d!583260)))

(assert (=> bs!413918 (= (= (toValue!5442 (transformation!3821 (rule!6016 (h!26863 tokens!598)))) (toValue!5442 (transformation!3821 (rule!6016 separatorToken!354)))) (= lambda!74501 lambda!74500))))

(assert (=> d!583278 true))

(assert (=> d!583278 (< (dynLambda!10452 order!13561 (toValue!5442 (transformation!3821 (rule!6016 (h!26863 tokens!598))))) (dynLambda!10462 order!13575 lambda!74501))))

(assert (=> d!583278 (= (equivClasses!1469 (toChars!5301 (transformation!3821 (rule!6016 (h!26863 tokens!598)))) (toValue!5442 (transformation!3821 (rule!6016 (h!26863 tokens!598))))) (Forall2!619 lambda!74501))))

(declare-fun bs!413919 () Bool)

(assert (= bs!413919 d!583278))

(declare-fun m!2339047 () Bool)

(assert (=> bs!413919 m!2339047))

(assert (=> b!1905147 d!583278))

(assert (=> bm!117326 d!582800))

(declare-fun lt!728978 () BalanceConc!14092)

(declare-fun d!583280 () Bool)

(assert (=> d!583280 (= (list!8725 lt!728978) (originalCharacters!4628 (ite c!310357 (h!26863 (t!177357 tokens!598)) (ite c!310355 separatorToken!354 (h!26863 (t!177357 tokens!598))))))))

(assert (=> d!583280 (= lt!728978 (dynLambda!10451 (toChars!5301 (transformation!3821 (rule!6016 (ite c!310357 (h!26863 (t!177357 tokens!598)) (ite c!310355 separatorToken!354 (h!26863 (t!177357 tokens!598))))))) (value!120491 (ite c!310357 (h!26863 (t!177357 tokens!598)) (ite c!310355 separatorToken!354 (h!26863 (t!177357 tokens!598)))))))))

(assert (=> d!583280 (= (charsOf!2377 (ite c!310357 (h!26863 (t!177357 tokens!598)) (ite c!310355 separatorToken!354 (h!26863 (t!177357 tokens!598))))) lt!728978)))

(declare-fun b_lambda!62981 () Bool)

(assert (=> (not b_lambda!62981) (not d!583280)))

(declare-fun tb!116537 () Bool)

(declare-fun t!177560 () Bool)

(assert (=> (and b!1904942 (= (toChars!5301 (transformation!3821 (rule!6016 separatorToken!354))) (toChars!5301 (transformation!3821 (rule!6016 (ite c!310357 (h!26863 (t!177357 tokens!598)) (ite c!310355 separatorToken!354 (h!26863 (t!177357 tokens!598)))))))) t!177560) tb!116537))

(declare-fun b!1906558 () Bool)

(declare-fun tp!544179 () Bool)

(declare-fun e!1217759 () Bool)

(assert (=> b!1906558 (= e!1217759 (and (inv!28565 (c!310321 (dynLambda!10451 (toChars!5301 (transformation!3821 (rule!6016 (ite c!310357 (h!26863 (t!177357 tokens!598)) (ite c!310355 separatorToken!354 (h!26863 (t!177357 tokens!598))))))) (value!120491 (ite c!310357 (h!26863 (t!177357 tokens!598)) (ite c!310355 separatorToken!354 (h!26863 (t!177357 tokens!598)))))))) tp!544179))))

(declare-fun result!140864 () Bool)

(assert (=> tb!116537 (= result!140864 (and (inv!28566 (dynLambda!10451 (toChars!5301 (transformation!3821 (rule!6016 (ite c!310357 (h!26863 (t!177357 tokens!598)) (ite c!310355 separatorToken!354 (h!26863 (t!177357 tokens!598))))))) (value!120491 (ite c!310357 (h!26863 (t!177357 tokens!598)) (ite c!310355 separatorToken!354 (h!26863 (t!177357 tokens!598))))))) e!1217759))))

(assert (= tb!116537 b!1906558))

(declare-fun m!2339061 () Bool)

(assert (=> b!1906558 m!2339061))

(declare-fun m!2339065 () Bool)

(assert (=> tb!116537 m!2339065))

(assert (=> d!583280 t!177560))

(declare-fun b_and!148085 () Bool)

(assert (= b_and!148053 (and (=> t!177560 result!140864) b_and!148085)))

(declare-fun t!177562 () Bool)

(declare-fun tb!116539 () Bool)

(assert (=> (and b!1904950 (= (toChars!5301 (transformation!3821 (rule!6016 (h!26863 tokens!598)))) (toChars!5301 (transformation!3821 (rule!6016 (ite c!310357 (h!26863 (t!177357 tokens!598)) (ite c!310355 separatorToken!354 (h!26863 (t!177357 tokens!598)))))))) t!177562) tb!116539))

(declare-fun result!140866 () Bool)

(assert (= result!140866 result!140864))

(assert (=> d!583280 t!177562))

(declare-fun b_and!148087 () Bool)

(assert (= b_and!148045 (and (=> t!177562 result!140866) b_and!148087)))

(declare-fun t!177564 () Bool)

(declare-fun tb!116541 () Bool)

(assert (=> (and b!1904943 (= (toChars!5301 (transformation!3821 (h!26864 rules!3198))) (toChars!5301 (transformation!3821 (rule!6016 (ite c!310357 (h!26863 (t!177357 tokens!598)) (ite c!310355 separatorToken!354 (h!26863 (t!177357 tokens!598)))))))) t!177564) tb!116541))

(declare-fun result!140868 () Bool)

(assert (= result!140868 result!140864))

(assert (=> d!583280 t!177564))

(declare-fun b_and!148089 () Bool)

(assert (= b_and!148051 (and (=> t!177564 result!140868) b_and!148089)))

(declare-fun t!177566 () Bool)

(declare-fun tb!116543 () Bool)

(assert (=> (and b!1905625 (= (toChars!5301 (transformation!3821 (h!26864 (t!177358 rules!3198)))) (toChars!5301 (transformation!3821 (rule!6016 (ite c!310357 (h!26863 (t!177357 tokens!598)) (ite c!310355 separatorToken!354 (h!26863 (t!177357 tokens!598)))))))) t!177566) tb!116543))

(declare-fun result!140870 () Bool)

(assert (= result!140870 result!140864))

(assert (=> d!583280 t!177566))

(declare-fun b_and!148091 () Bool)

(assert (= b_and!148047 (and (=> t!177566 result!140870) b_and!148091)))

(declare-fun tb!116545 () Bool)

(declare-fun t!177568 () Bool)

(assert (=> (and b!1905591 (= (toChars!5301 (transformation!3821 (rule!6016 (h!26863 (t!177357 tokens!598))))) (toChars!5301 (transformation!3821 (rule!6016 (ite c!310357 (h!26863 (t!177357 tokens!598)) (ite c!310355 separatorToken!354 (h!26863 (t!177357 tokens!598)))))))) t!177568) tb!116545))

(declare-fun result!140872 () Bool)

(assert (= result!140872 result!140864))

(assert (=> d!583280 t!177568))

(declare-fun b_and!148093 () Bool)

(assert (= b_and!148049 (and (=> t!177568 result!140872) b_and!148093)))

(declare-fun m!2339085 () Bool)

(assert (=> d!583280 m!2339085))

(declare-fun m!2339089 () Bool)

(assert (=> d!583280 m!2339089))

(assert (=> bm!117341 d!583280))

(declare-fun b!1906559 () Bool)

(declare-fun res!851333 () Bool)

(declare-fun e!1217760 () Bool)

(assert (=> b!1906559 (=> (not res!851333) (not e!1217760))))

(declare-fun lt!728982 () Option!4347)

(assert (=> b!1906559 (= res!851333 (= (value!120491 (_1!11568 (get!6665 lt!728982))) (apply!5629 (transformation!3821 (rule!6016 (_1!11568 (get!6665 lt!728982)))) (seqFromList!2693 (originalCharacters!4628 (_1!11568 (get!6665 lt!728982)))))))))

(declare-fun e!1217763 () Bool)

(declare-fun b!1906560 () Bool)

(assert (=> b!1906560 (= e!1217763 (matchR!2532 (regex!3821 (h!26864 rules!3198)) (_1!11572 (findLongestMatchInner!528 (regex!3821 (h!26864 rules!3198)) Nil!21461 (size!16931 Nil!21461) (++!5766 lt!728437 lt!728429) (++!5766 lt!728437 lt!728429) (size!16931 (++!5766 lt!728437 lt!728429))))))))

(declare-fun b!1906561 () Bool)

(declare-fun res!851337 () Bool)

(assert (=> b!1906561 (=> (not res!851337) (not e!1217760))))

(assert (=> b!1906561 (= res!851337 (= (++!5766 (list!8725 (charsOf!2377 (_1!11568 (get!6665 lt!728982)))) (_2!11568 (get!6665 lt!728982))) (++!5766 lt!728437 lt!728429)))))

(declare-fun b!1906562 () Bool)

(declare-fun res!851335 () Bool)

(assert (=> b!1906562 (=> (not res!851335) (not e!1217760))))

(assert (=> b!1906562 (= res!851335 (< (size!16931 (_2!11568 (get!6665 lt!728982))) (size!16931 (++!5766 lt!728437 lt!728429))))))

(declare-fun d!583284 () Bool)

(declare-fun e!1217761 () Bool)

(assert (=> d!583284 e!1217761))

(declare-fun res!851338 () Bool)

(assert (=> d!583284 (=> res!851338 e!1217761)))

(assert (=> d!583284 (= res!851338 (isEmpty!13179 lt!728982))))

(declare-fun e!1217762 () Option!4347)

(assert (=> d!583284 (= lt!728982 e!1217762)))

(declare-fun c!310660 () Bool)

(declare-fun lt!728979 () tuple2!20206)

(assert (=> d!583284 (= c!310660 (isEmpty!13177 (_1!11572 lt!728979)))))

(assert (=> d!583284 (= lt!728979 (findLongestMatch!455 (regex!3821 (h!26864 rules!3198)) (++!5766 lt!728437 lt!728429)))))

(assert (=> d!583284 (ruleValid!1156 thiss!23328 (h!26864 rules!3198))))

(assert (=> d!583284 (= (maxPrefixOneRule!1202 thiss!23328 (h!26864 rules!3198) (++!5766 lt!728437 lt!728429)) lt!728982)))

(declare-fun b!1906563 () Bool)

(assert (=> b!1906563 (= e!1217761 e!1217760)))

(declare-fun res!851332 () Bool)

(assert (=> b!1906563 (=> (not res!851332) (not e!1217760))))

(assert (=> b!1906563 (= res!851332 (matchR!2532 (regex!3821 (h!26864 rules!3198)) (list!8725 (charsOf!2377 (_1!11568 (get!6665 lt!728982))))))))

(declare-fun b!1906564 () Bool)

(assert (=> b!1906564 (= e!1217762 None!4346)))

(declare-fun b!1906565 () Bool)

(assert (=> b!1906565 (= e!1217762 (Some!4346 (tuple2!20199 (Token!7195 (apply!5629 (transformation!3821 (h!26864 rules!3198)) (seqFromList!2693 (_1!11572 lt!728979))) (h!26864 rules!3198) (size!16935 (seqFromList!2693 (_1!11572 lt!728979))) (_1!11572 lt!728979)) (_2!11572 lt!728979))))))

(declare-fun lt!728981 () Unit!35791)

(assert (=> b!1906565 (= lt!728981 (longestMatchIsAcceptedByMatchOrIsEmpty!512 (regex!3821 (h!26864 rules!3198)) (++!5766 lt!728437 lt!728429)))))

(declare-fun res!851336 () Bool)

(assert (=> b!1906565 (= res!851336 (isEmpty!13177 (_1!11572 (findLongestMatchInner!528 (regex!3821 (h!26864 rules!3198)) Nil!21461 (size!16931 Nil!21461) (++!5766 lt!728437 lt!728429) (++!5766 lt!728437 lt!728429) (size!16931 (++!5766 lt!728437 lt!728429))))))))

(assert (=> b!1906565 (=> res!851336 e!1217763)))

(assert (=> b!1906565 e!1217763))

(declare-fun lt!728983 () Unit!35791)

(assert (=> b!1906565 (= lt!728983 lt!728981)))

(declare-fun lt!728980 () Unit!35791)

(assert (=> b!1906565 (= lt!728980 (lemmaSemiInverse!800 (transformation!3821 (h!26864 rules!3198)) (seqFromList!2693 (_1!11572 lt!728979))))))

(declare-fun b!1906566 () Bool)

(assert (=> b!1906566 (= e!1217760 (= (size!16929 (_1!11568 (get!6665 lt!728982))) (size!16931 (originalCharacters!4628 (_1!11568 (get!6665 lt!728982))))))))

(declare-fun b!1906567 () Bool)

(declare-fun res!851334 () Bool)

(assert (=> b!1906567 (=> (not res!851334) (not e!1217760))))

(assert (=> b!1906567 (= res!851334 (= (rule!6016 (_1!11568 (get!6665 lt!728982))) (h!26864 rules!3198)))))

(assert (= (and d!583284 c!310660) b!1906564))

(assert (= (and d!583284 (not c!310660)) b!1906565))

(assert (= (and b!1906565 (not res!851336)) b!1906560))

(assert (= (and d!583284 (not res!851338)) b!1906563))

(assert (= (and b!1906563 res!851332) b!1906561))

(assert (= (and b!1906561 res!851337) b!1906562))

(assert (= (and b!1906562 res!851335) b!1906567))

(assert (= (and b!1906567 res!851334) b!1906559))

(assert (= (and b!1906559 res!851333) b!1906566))

(declare-fun m!2339091 () Bool)

(assert (=> b!1906561 m!2339091))

(declare-fun m!2339093 () Bool)

(assert (=> b!1906561 m!2339093))

(assert (=> b!1906561 m!2339093))

(declare-fun m!2339095 () Bool)

(assert (=> b!1906561 m!2339095))

(assert (=> b!1906561 m!2339095))

(declare-fun m!2339097 () Bool)

(assert (=> b!1906561 m!2339097))

(assert (=> b!1906566 m!2339091))

(declare-fun m!2339099 () Bool)

(assert (=> b!1906566 m!2339099))

(assert (=> b!1906559 m!2339091))

(declare-fun m!2339101 () Bool)

(assert (=> b!1906559 m!2339101))

(assert (=> b!1906559 m!2339101))

(declare-fun m!2339103 () Bool)

(assert (=> b!1906559 m!2339103))

(declare-fun m!2339105 () Bool)

(assert (=> d!583284 m!2339105))

(declare-fun m!2339107 () Bool)

(assert (=> d!583284 m!2339107))

(assert (=> d!583284 m!2336973))

(declare-fun m!2339109 () Bool)

(assert (=> d!583284 m!2339109))

(assert (=> d!583284 m!2337885))

(assert (=> b!1906560 m!2337887))

(assert (=> b!1906560 m!2336973))

(assert (=> b!1906560 m!2337317))

(assert (=> b!1906560 m!2337887))

(assert (=> b!1906560 m!2336973))

(assert (=> b!1906560 m!2336973))

(assert (=> b!1906560 m!2337317))

(declare-fun m!2339111 () Bool)

(assert (=> b!1906560 m!2339111))

(declare-fun m!2339113 () Bool)

(assert (=> b!1906560 m!2339113))

(assert (=> b!1906565 m!2336973))

(assert (=> b!1906565 m!2337317))

(declare-fun m!2339115 () Bool)

(assert (=> b!1906565 m!2339115))

(assert (=> b!1906565 m!2339115))

(declare-fun m!2339117 () Bool)

(assert (=> b!1906565 m!2339117))

(assert (=> b!1906565 m!2339115))

(declare-fun m!2339119 () Bool)

(assert (=> b!1906565 m!2339119))

(assert (=> b!1906565 m!2337887))

(assert (=> b!1906565 m!2339115))

(declare-fun m!2339121 () Bool)

(assert (=> b!1906565 m!2339121))

(assert (=> b!1906565 m!2336973))

(declare-fun m!2339123 () Bool)

(assert (=> b!1906565 m!2339123))

(assert (=> b!1906565 m!2337887))

(assert (=> b!1906565 m!2336973))

(assert (=> b!1906565 m!2336973))

(assert (=> b!1906565 m!2337317))

(assert (=> b!1906565 m!2339111))

(declare-fun m!2339125 () Bool)

(assert (=> b!1906565 m!2339125))

(assert (=> b!1906567 m!2339091))

(assert (=> b!1906563 m!2339091))

(assert (=> b!1906563 m!2339093))

(assert (=> b!1906563 m!2339093))

(assert (=> b!1906563 m!2339095))

(assert (=> b!1906563 m!2339095))

(declare-fun m!2339127 () Bool)

(assert (=> b!1906563 m!2339127))

(assert (=> b!1906562 m!2339091))

(declare-fun m!2339129 () Bool)

(assert (=> b!1906562 m!2339129))

(assert (=> b!1906562 m!2336973))

(assert (=> b!1906562 m!2337317))

(assert (=> bm!117346 d!583284))

(declare-fun d!583286 () Bool)

(declare-fun e!1217764 () Bool)

(assert (=> d!583286 e!1217764))

(declare-fun res!851339 () Bool)

(assert (=> d!583286 (=> (not res!851339) (not e!1217764))))

(declare-fun lt!728984 () List!21543)

(assert (=> d!583286 (= res!851339 (= (content!3142 lt!728984) (set.union (content!3142 (t!177356 lt!728437)) (content!3142 lt!728429))))))

(declare-fun e!1217765 () List!21543)

(assert (=> d!583286 (= lt!728984 e!1217765)))

(declare-fun c!310661 () Bool)

(assert (=> d!583286 (= c!310661 (is-Nil!21461 (t!177356 lt!728437)))))

(assert (=> d!583286 (= (++!5766 (t!177356 lt!728437) lt!728429) lt!728984)))

(declare-fun b!1906570 () Bool)

(declare-fun res!851340 () Bool)

(assert (=> b!1906570 (=> (not res!851340) (not e!1217764))))

(assert (=> b!1906570 (= res!851340 (= (size!16931 lt!728984) (+ (size!16931 (t!177356 lt!728437)) (size!16931 lt!728429))))))

(declare-fun b!1906571 () Bool)

(assert (=> b!1906571 (= e!1217764 (or (not (= lt!728429 Nil!21461)) (= lt!728984 (t!177356 lt!728437))))))

(declare-fun b!1906569 () Bool)

(assert (=> b!1906569 (= e!1217765 (Cons!21461 (h!26862 (t!177356 lt!728437)) (++!5766 (t!177356 (t!177356 lt!728437)) lt!728429)))))

(declare-fun b!1906568 () Bool)

(assert (=> b!1906568 (= e!1217765 lt!728429)))

(assert (= (and d!583286 c!310661) b!1906568))

(assert (= (and d!583286 (not c!310661)) b!1906569))

(assert (= (and d!583286 res!851339) b!1906570))

(assert (= (and b!1906570 res!851340) b!1906571))

(declare-fun m!2339131 () Bool)

(assert (=> d!583286 m!2339131))

(assert (=> d!583286 m!2338179))

(assert (=> d!583286 m!2337249))

(declare-fun m!2339133 () Bool)

(assert (=> b!1906570 m!2339133))

(assert (=> b!1906570 m!2338049))

(assert (=> b!1906570 m!2337253))

(declare-fun m!2339135 () Bool)

(assert (=> b!1906569 m!2339135))

(assert (=> b!1905234 d!583286))

(declare-fun d!583288 () Bool)

(declare-fun nullableFct!356 (Regex!5246) Bool)

(assert (=> d!583288 (= (nullable!1592 (regex!3821 lt!728427)) (nullableFct!356 (regex!3821 lt!728427)))))

(declare-fun bs!413920 () Bool)

(assert (= bs!413920 d!583288))

(declare-fun m!2339137 () Bool)

(assert (=> bs!413920 m!2339137))

(assert (=> b!1905096 d!583288))

(declare-fun d!583290 () Bool)

(assert (=> d!583290 (= (isEmpty!13178 lt!728544) (not (is-Some!4347 lt!728544)))))

(assert (=> d!582648 d!583290))

(assert (=> d!582648 d!582600))

(declare-fun d!583292 () Bool)

(declare-fun lt!728985 () Int)

(assert (=> d!583292 (>= lt!728985 0)))

(declare-fun e!1217766 () Int)

(assert (=> d!583292 (= lt!728985 e!1217766)))

(declare-fun c!310662 () Bool)

(assert (=> d!583292 (= c!310662 (is-Nil!21461 (originalCharacters!4628 (h!26863 tokens!598))))))

(assert (=> d!583292 (= (size!16931 (originalCharacters!4628 (h!26863 tokens!598))) lt!728985)))

(declare-fun b!1906572 () Bool)

(assert (=> b!1906572 (= e!1217766 0)))

(declare-fun b!1906573 () Bool)

(assert (=> b!1906573 (= e!1217766 (+ 1 (size!16931 (t!177356 (originalCharacters!4628 (h!26863 tokens!598))))))))

(assert (= (and d!583292 c!310662) b!1906572))

(assert (= (and d!583292 (not c!310662)) b!1906573))

(declare-fun m!2339139 () Bool)

(assert (=> b!1906573 m!2339139))

(assert (=> b!1905059 d!583292))

(assert (=> b!1905257 d!583016))

(assert (=> b!1905257 d!583018))

(declare-fun b!1906574 () Bool)

(declare-fun e!1217770 () Option!4348)

(declare-fun e!1217769 () Option!4348)

(assert (=> b!1906574 (= e!1217770 e!1217769)))

(declare-fun c!310663 () Bool)

(assert (=> b!1906574 (= c!310663 (and (is-Cons!21463 (t!177358 rules!3198)) (not (= (tag!4251 (h!26864 (t!177358 rules!3198))) (tag!4251 (rule!6016 (h!26863 tokens!598)))))))))

(declare-fun b!1906575 () Bool)

(assert (=> b!1906575 (= e!1217769 None!4347)))

(declare-fun d!583294 () Bool)

(declare-fun e!1217768 () Bool)

(assert (=> d!583294 e!1217768))

(declare-fun res!851342 () Bool)

(assert (=> d!583294 (=> res!851342 e!1217768)))

(declare-fun lt!728988 () Option!4348)

(assert (=> d!583294 (= res!851342 (isEmpty!13178 lt!728988))))

(assert (=> d!583294 (= lt!728988 e!1217770)))

(declare-fun c!310664 () Bool)

(assert (=> d!583294 (= c!310664 (and (is-Cons!21463 (t!177358 rules!3198)) (= (tag!4251 (h!26864 (t!177358 rules!3198))) (tag!4251 (rule!6016 (h!26863 tokens!598))))))))

(assert (=> d!583294 (rulesInvariant!3041 thiss!23328 (t!177358 rules!3198))))

(assert (=> d!583294 (= (getRuleFromTag!664 thiss!23328 (t!177358 rules!3198) (tag!4251 (rule!6016 (h!26863 tokens!598)))) lt!728988)))

(declare-fun b!1906576 () Bool)

(declare-fun lt!728986 () Unit!35791)

(declare-fun lt!728987 () Unit!35791)

(assert (=> b!1906576 (= lt!728986 lt!728987)))

(assert (=> b!1906576 (rulesInvariant!3041 thiss!23328 (t!177358 (t!177358 rules!3198)))))

(assert (=> b!1906576 (= lt!728987 (lemmaInvariantOnRulesThenOnTail!253 thiss!23328 (h!26864 (t!177358 rules!3198)) (t!177358 (t!177358 rules!3198))))))

(assert (=> b!1906576 (= e!1217769 (getRuleFromTag!664 thiss!23328 (t!177358 (t!177358 rules!3198)) (tag!4251 (rule!6016 (h!26863 tokens!598)))))))

(declare-fun b!1906577 () Bool)

(declare-fun e!1217767 () Bool)

(assert (=> b!1906577 (= e!1217767 (= (tag!4251 (get!6666 lt!728988)) (tag!4251 (rule!6016 (h!26863 tokens!598)))))))

(declare-fun b!1906578 () Bool)

(assert (=> b!1906578 (= e!1217770 (Some!4347 (h!26864 (t!177358 rules!3198))))))

(declare-fun b!1906579 () Bool)

(assert (=> b!1906579 (= e!1217768 e!1217767)))

(declare-fun res!851341 () Bool)

(assert (=> b!1906579 (=> (not res!851341) (not e!1217767))))

(assert (=> b!1906579 (= res!851341 (contains!3854 (t!177358 rules!3198) (get!6666 lt!728988)))))

(assert (= (and d!583294 c!310664) b!1906578))

(assert (= (and d!583294 (not c!310664)) b!1906574))

(assert (= (and b!1906574 c!310663) b!1906576))

(assert (= (and b!1906574 (not c!310663)) b!1906575))

(assert (= (and d!583294 (not res!851342)) b!1906579))

(assert (= (and b!1906579 res!851341) b!1906577))

(declare-fun m!2339141 () Bool)

(assert (=> d!583294 m!2339141))

(assert (=> d!583294 m!2337263))

(assert (=> b!1906576 m!2338399))

(assert (=> b!1906576 m!2338401))

(declare-fun m!2339143 () Bool)

(assert (=> b!1906576 m!2339143))

(declare-fun m!2339145 () Bool)

(assert (=> b!1906577 m!2339145))

(assert (=> b!1906579 m!2339145))

(assert (=> b!1906579 m!2339145))

(declare-fun m!2339147 () Bool)

(assert (=> b!1906579 m!2339147))

(assert (=> b!1905257 d!583294))

(declare-fun d!583296 () Bool)

(declare-fun lt!728989 () Bool)

(assert (=> d!583296 (= lt!728989 (isEmpty!13177 (list!8725 (_2!11571 (lex!1522 thiss!23328 rules!3198 (print!1450 thiss!23328 (singletonSeq!1848 separatorToken!354)))))))))

(assert (=> d!583296 (= lt!728989 (isEmpty!13188 (c!310321 (_2!11571 (lex!1522 thiss!23328 rules!3198 (print!1450 thiss!23328 (singletonSeq!1848 separatorToken!354)))))))))

(assert (=> d!583296 (= (isEmpty!13182 (_2!11571 (lex!1522 thiss!23328 rules!3198 (print!1450 thiss!23328 (singletonSeq!1848 separatorToken!354))))) lt!728989)))

(declare-fun bs!413921 () Bool)

(assert (= bs!413921 d!583296))

(declare-fun m!2339149 () Bool)

(assert (=> bs!413921 m!2339149))

(assert (=> bs!413921 m!2339149))

(declare-fun m!2339151 () Bool)

(assert (=> bs!413921 m!2339151))

(declare-fun m!2339153 () Bool)

(assert (=> bs!413921 m!2339153))

(assert (=> b!1905399 d!583296))

(assert (=> b!1905399 d!582928))

(assert (=> b!1905399 d!582922))

(assert (=> b!1905399 d!582920))

(declare-fun d!583298 () Bool)

(assert (=> d!583298 (= (nullable!1592 (regex!3821 lt!728431)) (nullableFct!356 (regex!3821 lt!728431)))))

(declare-fun bs!413922 () Bool)

(assert (= bs!413922 d!583298))

(declare-fun m!2339155 () Bool)

(assert (=> bs!413922 m!2339155))

(assert (=> b!1905116 d!583298))

(declare-fun d!583300 () Bool)

(declare-fun c!310665 () Bool)

(assert (=> d!583300 (= c!310665 (is-Node!7138 (c!310321 (dynLambda!10451 (toChars!5301 (transformation!3821 (rule!6016 (h!26863 tokens!598)))) (value!120491 (h!26863 tokens!598))))))))

(declare-fun e!1217771 () Bool)

(assert (=> d!583300 (= (inv!28565 (c!310321 (dynLambda!10451 (toChars!5301 (transformation!3821 (rule!6016 (h!26863 tokens!598)))) (value!120491 (h!26863 tokens!598))))) e!1217771)))

(declare-fun b!1906580 () Bool)

(assert (=> b!1906580 (= e!1217771 (inv!28569 (c!310321 (dynLambda!10451 (toChars!5301 (transformation!3821 (rule!6016 (h!26863 tokens!598)))) (value!120491 (h!26863 tokens!598))))))))

(declare-fun b!1906581 () Bool)

(declare-fun e!1217772 () Bool)

(assert (=> b!1906581 (= e!1217771 e!1217772)))

(declare-fun res!851343 () Bool)

(assert (=> b!1906581 (= res!851343 (not (is-Leaf!10512 (c!310321 (dynLambda!10451 (toChars!5301 (transformation!3821 (rule!6016 (h!26863 tokens!598)))) (value!120491 (h!26863 tokens!598)))))))))

(assert (=> b!1906581 (=> res!851343 e!1217772)))

(declare-fun b!1906582 () Bool)

(assert (=> b!1906582 (= e!1217772 (inv!28570 (c!310321 (dynLambda!10451 (toChars!5301 (transformation!3821 (rule!6016 (h!26863 tokens!598)))) (value!120491 (h!26863 tokens!598))))))))

(assert (= (and d!583300 c!310665) b!1906580))

(assert (= (and d!583300 (not c!310665)) b!1906581))

(assert (= (and b!1906581 (not res!851343)) b!1906582))

(declare-fun m!2339157 () Bool)

(assert (=> b!1906580 m!2339157))

(declare-fun m!2339159 () Bool)

(assert (=> b!1906582 m!2339159))

(assert (=> b!1905064 d!583300))

(declare-fun b!1906583 () Bool)

(declare-fun e!1217773 () Bool)

(assert (=> b!1906583 (= e!1217773 tp_is_empty!9091)))

(declare-fun b!1906584 () Bool)

(declare-fun tp!544180 () Bool)

(declare-fun tp!544182 () Bool)

(assert (=> b!1906584 (= e!1217773 (and tp!544180 tp!544182))))

(declare-fun b!1906585 () Bool)

(declare-fun tp!544184 () Bool)

(assert (=> b!1906585 (= e!1217773 tp!544184)))

(assert (=> b!1905630 (= tp!544114 e!1217773)))

(declare-fun b!1906586 () Bool)

(declare-fun tp!544183 () Bool)

(declare-fun tp!544181 () Bool)

(assert (=> b!1906586 (= e!1217773 (and tp!544183 tp!544181))))

(assert (= (and b!1905630 (is-ElementMatch!5246 (regOne!11005 (regex!3821 (h!26864 rules!3198))))) b!1906583))

(assert (= (and b!1905630 (is-Concat!9204 (regOne!11005 (regex!3821 (h!26864 rules!3198))))) b!1906584))

(assert (= (and b!1905630 (is-Star!5246 (regOne!11005 (regex!3821 (h!26864 rules!3198))))) b!1906585))

(assert (= (and b!1905630 (is-Union!5246 (regOne!11005 (regex!3821 (h!26864 rules!3198))))) b!1906586))

(declare-fun b!1906587 () Bool)

(declare-fun e!1217774 () Bool)

(assert (=> b!1906587 (= e!1217774 tp_is_empty!9091)))

(declare-fun b!1906588 () Bool)

(declare-fun tp!544185 () Bool)

(declare-fun tp!544187 () Bool)

(assert (=> b!1906588 (= e!1217774 (and tp!544185 tp!544187))))

(declare-fun b!1906589 () Bool)

(declare-fun tp!544189 () Bool)

(assert (=> b!1906589 (= e!1217774 tp!544189)))

(assert (=> b!1905630 (= tp!544112 e!1217774)))

(declare-fun b!1906590 () Bool)

(declare-fun tp!544188 () Bool)

(declare-fun tp!544186 () Bool)

(assert (=> b!1906590 (= e!1217774 (and tp!544188 tp!544186))))

(assert (= (and b!1905630 (is-ElementMatch!5246 (regTwo!11005 (regex!3821 (h!26864 rules!3198))))) b!1906587))

(assert (= (and b!1905630 (is-Concat!9204 (regTwo!11005 (regex!3821 (h!26864 rules!3198))))) b!1906588))

(assert (= (and b!1905630 (is-Star!5246 (regTwo!11005 (regex!3821 (h!26864 rules!3198))))) b!1906589))

(assert (= (and b!1905630 (is-Union!5246 (regTwo!11005 (regex!3821 (h!26864 rules!3198))))) b!1906590))

(declare-fun b!1906591 () Bool)

(declare-fun e!1217775 () Bool)

(declare-fun tp!544190 () Bool)

(assert (=> b!1906591 (= e!1217775 (and tp_is_empty!9091 tp!544190))))

(assert (=> b!1905589 (= tp!544071 e!1217775)))

(assert (= (and b!1905589 (is-Cons!21461 (originalCharacters!4628 (h!26863 (t!177357 tokens!598))))) b!1906591))

(declare-fun b!1906594 () Bool)

(declare-fun e!1217778 () Bool)

(assert (=> b!1906594 (= e!1217778 true)))

(declare-fun b!1906593 () Bool)

(declare-fun e!1217777 () Bool)

(assert (=> b!1906593 (= e!1217777 e!1217778)))

(declare-fun b!1906592 () Bool)

(declare-fun e!1217776 () Bool)

(assert (=> b!1906592 (= e!1217776 e!1217777)))

(assert (=> b!1905220 e!1217776))

(assert (= b!1906593 b!1906594))

(assert (= b!1906592 b!1906593))

(assert (= (and b!1905220 (is-Cons!21463 (t!177358 rules!3198))) b!1906592))

(assert (=> b!1906594 (< (dynLambda!10452 order!13561 (toValue!5442 (transformation!3821 (h!26864 (t!177358 rules!3198))))) (dynLambda!10453 order!13563 lambda!74446))))

(assert (=> b!1906594 (< (dynLambda!10454 order!13565 (toChars!5301 (transformation!3821 (h!26864 (t!177358 rules!3198))))) (dynLambda!10453 order!13563 lambda!74446))))

(declare-fun b!1906595 () Bool)

(declare-fun e!1217779 () Bool)

(assert (=> b!1906595 (= e!1217779 tp_is_empty!9091)))

(declare-fun b!1906596 () Bool)

(declare-fun tp!544191 () Bool)

(declare-fun tp!544193 () Bool)

(assert (=> b!1906596 (= e!1217779 (and tp!544191 tp!544193))))

(declare-fun b!1906597 () Bool)

(declare-fun tp!544195 () Bool)

(assert (=> b!1906597 (= e!1217779 tp!544195)))

(assert (=> b!1905610 (= tp!544091 e!1217779)))

(declare-fun b!1906598 () Bool)

(declare-fun tp!544194 () Bool)

(declare-fun tp!544192 () Bool)

(assert (=> b!1906598 (= e!1217779 (and tp!544194 tp!544192))))

(assert (= (and b!1905610 (is-ElementMatch!5246 (regOne!11005 (regex!3821 (rule!6016 (h!26863 tokens!598)))))) b!1906595))

(assert (= (and b!1905610 (is-Concat!9204 (regOne!11005 (regex!3821 (rule!6016 (h!26863 tokens!598)))))) b!1906596))

(assert (= (and b!1905610 (is-Star!5246 (regOne!11005 (regex!3821 (rule!6016 (h!26863 tokens!598)))))) b!1906597))

(assert (= (and b!1905610 (is-Union!5246 (regOne!11005 (regex!3821 (rule!6016 (h!26863 tokens!598)))))) b!1906598))

(declare-fun b!1906599 () Bool)

(declare-fun e!1217780 () Bool)

(assert (=> b!1906599 (= e!1217780 tp_is_empty!9091)))

(declare-fun b!1906600 () Bool)

(declare-fun tp!544196 () Bool)

(declare-fun tp!544198 () Bool)

(assert (=> b!1906600 (= e!1217780 (and tp!544196 tp!544198))))

(declare-fun b!1906601 () Bool)

(declare-fun tp!544200 () Bool)

(assert (=> b!1906601 (= e!1217780 tp!544200)))

(assert (=> b!1905610 (= tp!544089 e!1217780)))

(declare-fun b!1906602 () Bool)

(declare-fun tp!544199 () Bool)

(declare-fun tp!544197 () Bool)

(assert (=> b!1906602 (= e!1217780 (and tp!544199 tp!544197))))

(assert (= (and b!1905610 (is-ElementMatch!5246 (regTwo!11005 (regex!3821 (rule!6016 (h!26863 tokens!598)))))) b!1906599))

(assert (= (and b!1905610 (is-Concat!9204 (regTwo!11005 (regex!3821 (rule!6016 (h!26863 tokens!598)))))) b!1906600))

(assert (= (and b!1905610 (is-Star!5246 (regTwo!11005 (regex!3821 (rule!6016 (h!26863 tokens!598)))))) b!1906601))

(assert (= (and b!1905610 (is-Union!5246 (regTwo!11005 (regex!3821 (rule!6016 (h!26863 tokens!598)))))) b!1906602))

(declare-fun b!1906603 () Bool)

(declare-fun e!1217781 () Bool)

(assert (=> b!1906603 (= e!1217781 tp_is_empty!9091)))

(declare-fun b!1906604 () Bool)

(declare-fun tp!544201 () Bool)

(declare-fun tp!544203 () Bool)

(assert (=> b!1906604 (= e!1217781 (and tp!544201 tp!544203))))

(declare-fun b!1906605 () Bool)

(declare-fun tp!544205 () Bool)

(assert (=> b!1906605 (= e!1217781 tp!544205)))

(assert (=> b!1905629 (= tp!544115 e!1217781)))

(declare-fun b!1906606 () Bool)

(declare-fun tp!544204 () Bool)

(declare-fun tp!544202 () Bool)

(assert (=> b!1906606 (= e!1217781 (and tp!544204 tp!544202))))

(assert (= (and b!1905629 (is-ElementMatch!5246 (reg!5575 (regex!3821 (h!26864 rules!3198))))) b!1906603))

(assert (= (and b!1905629 (is-Concat!9204 (reg!5575 (regex!3821 (h!26864 rules!3198))))) b!1906604))

(assert (= (and b!1905629 (is-Star!5246 (reg!5575 (regex!3821 (h!26864 rules!3198))))) b!1906605))

(assert (= (and b!1905629 (is-Union!5246 (reg!5575 (regex!3821 (h!26864 rules!3198))))) b!1906606))

(declare-fun b!1906610 () Bool)

(declare-fun b_free!53677 () Bool)

(declare-fun b_next!54381 () Bool)

(assert (=> b!1906610 (= b_free!53677 (not b_next!54381))))

(declare-fun t!177570 () Bool)

(declare-fun tb!116547 () Bool)

(assert (=> (and b!1906610 (= (toValue!5442 (transformation!3821 (rule!6016 (h!26863 (t!177357 (t!177357 tokens!598)))))) (toValue!5442 (transformation!3821 (rule!6016 (h!26863 tokens!598))))) t!177570) tb!116547))

(declare-fun result!140874 () Bool)

(assert (= result!140874 result!140680))

(assert (=> d!582652 t!177570))

(assert (=> d!582664 t!177570))

(declare-fun t!177572 () Bool)

(declare-fun tb!116549 () Bool)

(assert (=> (and b!1906610 (= (toValue!5442 (transformation!3821 (rule!6016 (h!26863 (t!177357 (t!177357 tokens!598)))))) (toValue!5442 (transformation!3821 (rule!6016 (_1!11568 (get!6665 lt!728508)))))) t!177572) tb!116549))

(declare-fun result!140876 () Bool)

(assert (= result!140876 result!140824))

(assert (=> d!583048 t!177572))

(declare-fun t!177574 () Bool)

(declare-fun tb!116551 () Bool)

(assert (=> (and b!1906610 (= (toValue!5442 (transformation!3821 (rule!6016 (h!26863 (t!177357 (t!177357 tokens!598)))))) (toValue!5442 (transformation!3821 (rule!6016 (_1!11568 (get!6665 lt!728554)))))) t!177574) tb!116551))

(declare-fun result!140878 () Bool)

(assert (= result!140878 result!140814))

(assert (=> d!583002 t!177574))

(declare-fun t!177576 () Bool)

(declare-fun tb!116553 () Bool)

(assert (=> (and b!1906610 (= (toValue!5442 (transformation!3821 (rule!6016 (h!26863 (t!177357 (t!177357 tokens!598)))))) (toValue!5442 (transformation!3821 (rule!6016 (h!26863 tokens!598))))) t!177576) tb!116553))

(declare-fun result!140880 () Bool)

(assert (= result!140880 result!140688))

(assert (=> d!582664 t!177576))

(declare-fun b_and!148095 () Bool)

(declare-fun tp!544206 () Bool)

(assert (=> b!1906610 (= tp!544206 (and (=> t!177576 result!140880) (=> t!177572 result!140876) (=> t!177574 result!140878) (=> t!177570 result!140874) b_and!148095))))

(declare-fun b_free!53679 () Bool)

(declare-fun b_next!54383 () Bool)

(assert (=> b!1906610 (= b_free!53679 (not b_next!54383))))

(declare-fun t!177578 () Bool)

(declare-fun tb!116555 () Bool)

(assert (=> (and b!1906610 (= (toChars!5301 (transformation!3821 (rule!6016 (h!26863 (t!177357 (t!177357 tokens!598)))))) (toChars!5301 (transformation!3821 (rule!6016 (_1!11568 (get!6665 lt!728508)))))) t!177578) tb!116555))

(declare-fun result!140882 () Bool)

(assert (= result!140882 result!140804))

(assert (=> d!582912 t!177578))

(declare-fun t!177580 () Bool)

(declare-fun tb!116557 () Bool)

(assert (=> (and b!1906610 (= (toChars!5301 (transformation!3821 (rule!6016 (h!26863 (t!177357 (t!177357 tokens!598)))))) (toChars!5301 (transformation!3821 (rule!6016 (h!26863 tokens!598))))) t!177580) tb!116557))

(declare-fun result!140884 () Bool)

(assert (= result!140884 result!140674))

(assert (=> d!582652 t!177580))

(declare-fun t!177582 () Bool)

(declare-fun tb!116559 () Bool)

(assert (=> (and b!1906610 (= (toChars!5301 (transformation!3821 (rule!6016 (h!26863 (t!177357 (t!177357 tokens!598)))))) (toChars!5301 (transformation!3821 (rule!6016 (h!26863 (t!177357 tokens!598)))))) t!177582) tb!116559))

(declare-fun result!140886 () Bool)

(assert (= result!140886 result!140794))

(assert (=> b!1906298 t!177582))

(declare-fun tb!116561 () Bool)

(declare-fun t!177584 () Bool)

(assert (=> (and b!1906610 (= (toChars!5301 (transformation!3821 (rule!6016 (h!26863 (t!177357 (t!177357 tokens!598)))))) (toChars!5301 (transformation!3821 (rule!6016 separatorToken!354)))) t!177584) tb!116561))

(declare-fun result!140888 () Bool)

(assert (= result!140888 result!140668))

(assert (=> d!582644 t!177584))

(declare-fun t!177586 () Bool)

(declare-fun tb!116563 () Bool)

(assert (=> (and b!1906610 (= (toChars!5301 (transformation!3821 (rule!6016 (h!26863 (t!177357 (t!177357 tokens!598)))))) (toChars!5301 (transformation!3821 (rule!6016 (h!26863 tokens!598))))) t!177586) tb!116563))

(declare-fun result!140890 () Bool)

(assert (= result!140890 result!140660))

(assert (=> b!1905058 t!177586))

(assert (=> b!1905142 t!177584))

(declare-fun tb!116565 () Bool)

(declare-fun t!177588 () Bool)

(assert (=> (and b!1906610 (= (toChars!5301 (transformation!3821 (rule!6016 (h!26863 (t!177357 (t!177357 tokens!598)))))) (toChars!5301 (transformation!3821 (rule!6016 (ite c!310357 (h!26863 (t!177357 tokens!598)) (ite c!310355 separatorToken!354 (h!26863 (t!177357 tokens!598)))))))) t!177588) tb!116565))

(declare-fun result!140892 () Bool)

(assert (= result!140892 result!140864))

(assert (=> d!583280 t!177588))

(assert (=> d!582896 t!177582))

(declare-fun t!177590 () Bool)

(declare-fun tb!116567 () Bool)

(assert (=> (and b!1906610 (= (toChars!5301 (transformation!3821 (rule!6016 (h!26863 (t!177357 (t!177357 tokens!598)))))) (toChars!5301 (transformation!3821 (rule!6016 (_1!11568 (get!6665 lt!728554)))))) t!177590) tb!116567))

(declare-fun result!140894 () Bool)

(assert (= result!140894 result!140784))

(assert (=> d!582850 t!177590))

(assert (=> d!582674 t!177586))

(declare-fun tp!544209 () Bool)

(declare-fun b_and!148097 () Bool)

(assert (=> b!1906610 (= tp!544209 (and (=> t!177584 result!140888) (=> t!177588 result!140892) (=> t!177578 result!140882) (=> t!177586 result!140890) (=> t!177582 result!140886) (=> t!177590 result!140894) (=> t!177580 result!140884) b_and!148097))))

(declare-fun e!1217783 () Bool)

(assert (=> b!1905588 (= tp!544072 e!1217783)))

(declare-fun b!1906609 () Bool)

(declare-fun e!1217785 () Bool)

(declare-fun e!1217782 () Bool)

(declare-fun tp!544210 () Bool)

(assert (=> b!1906609 (= e!1217782 (and tp!544210 (inv!28558 (tag!4251 (rule!6016 (h!26863 (t!177357 (t!177357 tokens!598)))))) (inv!28561 (transformation!3821 (rule!6016 (h!26863 (t!177357 (t!177357 tokens!598)))))) e!1217785))))

(assert (=> b!1906610 (= e!1217785 (and tp!544206 tp!544209))))

(declare-fun tp!544207 () Bool)

(declare-fun e!1217784 () Bool)

(declare-fun b!1906608 () Bool)

(assert (=> b!1906608 (= e!1217784 (and (inv!21 (value!120491 (h!26863 (t!177357 (t!177357 tokens!598))))) e!1217782 tp!544207))))

(declare-fun b!1906607 () Bool)

(declare-fun tp!544208 () Bool)

(assert (=> b!1906607 (= e!1217783 (and (inv!28562 (h!26863 (t!177357 (t!177357 tokens!598)))) e!1217784 tp!544208))))

(assert (= b!1906609 b!1906610))

(assert (= b!1906608 b!1906609))

(assert (= b!1906607 b!1906608))

(assert (= (and b!1905588 (is-Cons!21462 (t!177357 (t!177357 tokens!598)))) b!1906607))

(declare-fun m!2339161 () Bool)

(assert (=> b!1906609 m!2339161))

(declare-fun m!2339163 () Bool)

(assert (=> b!1906609 m!2339163))

(declare-fun m!2339165 () Bool)

(assert (=> b!1906608 m!2339165))

(declare-fun m!2339167 () Bool)

(assert (=> b!1906607 m!2339167))

(declare-fun b!1906613 () Bool)

(declare-fun b_free!53681 () Bool)

(declare-fun b_next!54385 () Bool)

(assert (=> b!1906613 (= b_free!53681 (not b_next!54385))))

(declare-fun tb!116569 () Bool)

(declare-fun t!177592 () Bool)

(assert (=> (and b!1906613 (= (toValue!5442 (transformation!3821 (h!26864 (t!177358 (t!177358 rules!3198))))) (toValue!5442 (transformation!3821 (rule!6016 (h!26863 tokens!598))))) t!177592) tb!116569))

(declare-fun result!140896 () Bool)

(assert (= result!140896 result!140680))

(assert (=> d!582652 t!177592))

(assert (=> d!582664 t!177592))

(declare-fun t!177594 () Bool)

(declare-fun tb!116571 () Bool)

(assert (=> (and b!1906613 (= (toValue!5442 (transformation!3821 (h!26864 (t!177358 (t!177358 rules!3198))))) (toValue!5442 (transformation!3821 (rule!6016 (_1!11568 (get!6665 lt!728508)))))) t!177594) tb!116571))

(declare-fun result!140898 () Bool)

(assert (= result!140898 result!140824))

(assert (=> d!583048 t!177594))

(declare-fun t!177596 () Bool)

(declare-fun tb!116573 () Bool)

(assert (=> (and b!1906613 (= (toValue!5442 (transformation!3821 (h!26864 (t!177358 (t!177358 rules!3198))))) (toValue!5442 (transformation!3821 (rule!6016 (_1!11568 (get!6665 lt!728554)))))) t!177596) tb!116573))

(declare-fun result!140900 () Bool)

(assert (= result!140900 result!140814))

(assert (=> d!583002 t!177596))

(declare-fun t!177598 () Bool)

(declare-fun tb!116575 () Bool)

(assert (=> (and b!1906613 (= (toValue!5442 (transformation!3821 (h!26864 (t!177358 (t!177358 rules!3198))))) (toValue!5442 (transformation!3821 (rule!6016 (h!26863 tokens!598))))) t!177598) tb!116575))

(declare-fun result!140902 () Bool)

(assert (= result!140902 result!140688))

(assert (=> d!582664 t!177598))

(declare-fun b_and!148099 () Bool)

(declare-fun tp!544213 () Bool)

(assert (=> b!1906613 (= tp!544213 (and (=> t!177598 result!140902) (=> t!177592 result!140896) (=> t!177594 result!140898) (=> t!177596 result!140900) b_and!148099))))

(declare-fun b_free!53683 () Bool)

(declare-fun b_next!54387 () Bool)

(assert (=> b!1906613 (= b_free!53683 (not b_next!54387))))

(declare-fun tb!116577 () Bool)

(declare-fun t!177600 () Bool)

(assert (=> (and b!1906613 (= (toChars!5301 (transformation!3821 (h!26864 (t!177358 (t!177358 rules!3198))))) (toChars!5301 (transformation!3821 (rule!6016 (_1!11568 (get!6665 lt!728508)))))) t!177600) tb!116577))

(declare-fun result!140904 () Bool)

(assert (= result!140904 result!140804))

(assert (=> d!582912 t!177600))

(declare-fun t!177602 () Bool)

(declare-fun tb!116579 () Bool)

(assert (=> (and b!1906613 (= (toChars!5301 (transformation!3821 (h!26864 (t!177358 (t!177358 rules!3198))))) (toChars!5301 (transformation!3821 (rule!6016 (h!26863 tokens!598))))) t!177602) tb!116579))

(declare-fun result!140906 () Bool)

(assert (= result!140906 result!140674))

(assert (=> d!582652 t!177602))

(declare-fun tb!116581 () Bool)

(declare-fun t!177604 () Bool)

(assert (=> (and b!1906613 (= (toChars!5301 (transformation!3821 (h!26864 (t!177358 (t!177358 rules!3198))))) (toChars!5301 (transformation!3821 (rule!6016 (h!26863 (t!177357 tokens!598)))))) t!177604) tb!116581))

(declare-fun result!140908 () Bool)

(assert (= result!140908 result!140794))

(assert (=> b!1906298 t!177604))

(declare-fun tb!116583 () Bool)

(declare-fun t!177606 () Bool)

(assert (=> (and b!1906613 (= (toChars!5301 (transformation!3821 (h!26864 (t!177358 (t!177358 rules!3198))))) (toChars!5301 (transformation!3821 (rule!6016 separatorToken!354)))) t!177606) tb!116583))

(declare-fun result!140910 () Bool)

(assert (= result!140910 result!140668))

(assert (=> d!582644 t!177606))

(declare-fun t!177608 () Bool)

(declare-fun tb!116585 () Bool)

(assert (=> (and b!1906613 (= (toChars!5301 (transformation!3821 (h!26864 (t!177358 (t!177358 rules!3198))))) (toChars!5301 (transformation!3821 (rule!6016 (h!26863 tokens!598))))) t!177608) tb!116585))

(declare-fun result!140912 () Bool)

(assert (= result!140912 result!140660))

(assert (=> b!1905058 t!177608))

(assert (=> b!1905142 t!177606))

(declare-fun tb!116587 () Bool)

(declare-fun t!177610 () Bool)

(assert (=> (and b!1906613 (= (toChars!5301 (transformation!3821 (h!26864 (t!177358 (t!177358 rules!3198))))) (toChars!5301 (transformation!3821 (rule!6016 (ite c!310357 (h!26863 (t!177357 tokens!598)) (ite c!310355 separatorToken!354 (h!26863 (t!177357 tokens!598)))))))) t!177610) tb!116587))

(declare-fun result!140914 () Bool)

(assert (= result!140914 result!140864))

(assert (=> d!583280 t!177610))

(assert (=> d!582896 t!177604))

(declare-fun tb!116589 () Bool)

(declare-fun t!177612 () Bool)

(assert (=> (and b!1906613 (= (toChars!5301 (transformation!3821 (h!26864 (t!177358 (t!177358 rules!3198))))) (toChars!5301 (transformation!3821 (rule!6016 (_1!11568 (get!6665 lt!728554)))))) t!177612) tb!116589))

(declare-fun result!140916 () Bool)

(assert (= result!140916 result!140784))

(assert (=> d!582850 t!177612))

(assert (=> d!582674 t!177608))

(declare-fun tp!544211 () Bool)

(declare-fun b_and!148101 () Bool)

(assert (=> b!1906613 (= tp!544211 (and (=> t!177612 result!140916) (=> t!177606 result!140910) (=> t!177600 result!140904) (=> t!177602 result!140906) (=> t!177610 result!140914) (=> t!177608 result!140912) (=> t!177604 result!140908) b_and!148101))))

(declare-fun e!1217789 () Bool)

(assert (=> b!1906613 (= e!1217789 (and tp!544213 tp!544211))))

(declare-fun e!1217788 () Bool)

(declare-fun b!1906612 () Bool)

(declare-fun tp!544212 () Bool)

(assert (=> b!1906612 (= e!1217788 (and tp!544212 (inv!28558 (tag!4251 (h!26864 (t!177358 (t!177358 rules!3198))))) (inv!28561 (transformation!3821 (h!26864 (t!177358 (t!177358 rules!3198))))) e!1217789))))

(declare-fun b!1906611 () Bool)

(declare-fun e!1217791 () Bool)

(declare-fun tp!544214 () Bool)

(assert (=> b!1906611 (= e!1217791 (and e!1217788 tp!544214))))

(assert (=> b!1905623 (= tp!544109 e!1217791)))

(assert (= b!1906612 b!1906613))

(assert (= b!1906611 b!1906612))

(assert (= (and b!1905623 (is-Cons!21463 (t!177358 (t!177358 rules!3198)))) b!1906611))

(declare-fun m!2339169 () Bool)

(assert (=> b!1906612 m!2339169))

(declare-fun m!2339171 () Bool)

(assert (=> b!1906612 m!2339171))

(declare-fun b!1906614 () Bool)

(declare-fun e!1217792 () Bool)

(assert (=> b!1906614 (= e!1217792 tp_is_empty!9091)))

(declare-fun b!1906615 () Bool)

(declare-fun tp!544215 () Bool)

(declare-fun tp!544217 () Bool)

(assert (=> b!1906615 (= e!1217792 (and tp!544215 tp!544217))))

(declare-fun b!1906616 () Bool)

(declare-fun tp!544219 () Bool)

(assert (=> b!1906616 (= e!1217792 tp!544219)))

(assert (=> b!1905590 (= tp!544074 e!1217792)))

(declare-fun b!1906617 () Bool)

(declare-fun tp!544218 () Bool)

(declare-fun tp!544216 () Bool)

(assert (=> b!1906617 (= e!1217792 (and tp!544218 tp!544216))))

(assert (= (and b!1905590 (is-ElementMatch!5246 (regex!3821 (rule!6016 (h!26863 (t!177357 tokens!598)))))) b!1906614))

(assert (= (and b!1905590 (is-Concat!9204 (regex!3821 (rule!6016 (h!26863 (t!177357 tokens!598)))))) b!1906615))

(assert (= (and b!1905590 (is-Star!5246 (regex!3821 (rule!6016 (h!26863 (t!177357 tokens!598)))))) b!1906616))

(assert (= (and b!1905590 (is-Union!5246 (regex!3821 (rule!6016 (h!26863 (t!177357 tokens!598)))))) b!1906617))

(declare-fun tp!544227 () Bool)

(declare-fun e!1217798 () Bool)

(declare-fun tp!544228 () Bool)

(declare-fun b!1906626 () Bool)

(assert (=> b!1906626 (= e!1217798 (and (inv!28565 (left!17163 (c!310321 (dynLambda!10451 (toChars!5301 (transformation!3821 (rule!6016 separatorToken!354))) (value!120491 separatorToken!354))))) tp!544227 (inv!28565 (right!17493 (c!310321 (dynLambda!10451 (toChars!5301 (transformation!3821 (rule!6016 separatorToken!354))) (value!120491 separatorToken!354))))) tp!544228))))

(declare-fun b!1906628 () Bool)

(declare-fun e!1217797 () Bool)

(declare-fun tp!544226 () Bool)

(assert (=> b!1906628 (= e!1217797 tp!544226)))

(declare-fun b!1906627 () Bool)

(declare-fun inv!28573 (IArray!14281) Bool)

(assert (=> b!1906627 (= e!1217798 (and (inv!28573 (xs!10032 (c!310321 (dynLambda!10451 (toChars!5301 (transformation!3821 (rule!6016 separatorToken!354))) (value!120491 separatorToken!354))))) e!1217797))))

(assert (=> b!1905144 (= tp!544054 (and (inv!28565 (c!310321 (dynLambda!10451 (toChars!5301 (transformation!3821 (rule!6016 separatorToken!354))) (value!120491 separatorToken!354)))) e!1217798))))

(assert (= (and b!1905144 (is-Node!7138 (c!310321 (dynLambda!10451 (toChars!5301 (transformation!3821 (rule!6016 separatorToken!354))) (value!120491 separatorToken!354))))) b!1906626))

(assert (= b!1906627 b!1906628))

(assert (= (and b!1905144 (is-Leaf!10512 (c!310321 (dynLambda!10451 (toChars!5301 (transformation!3821 (rule!6016 separatorToken!354))) (value!120491 separatorToken!354))))) b!1906627))

(declare-fun m!2339173 () Bool)

(assert (=> b!1906626 m!2339173))

(declare-fun m!2339175 () Bool)

(assert (=> b!1906626 m!2339175))

(declare-fun m!2339177 () Bool)

(assert (=> b!1906627 m!2339177))

(assert (=> b!1905144 m!2337155))

(declare-fun e!1217800 () Bool)

(declare-fun tp!544231 () Bool)

(declare-fun b!1906629 () Bool)

(declare-fun tp!544230 () Bool)

(assert (=> b!1906629 (= e!1217800 (and (inv!28565 (left!17163 (c!310321 (dynLambda!10451 (toChars!5301 (transformation!3821 (rule!6016 (h!26863 tokens!598)))) (dynLambda!10456 (toValue!5442 (transformation!3821 (rule!6016 (h!26863 tokens!598)))) lt!728440))))) tp!544230 (inv!28565 (right!17493 (c!310321 (dynLambda!10451 (toChars!5301 (transformation!3821 (rule!6016 (h!26863 tokens!598)))) (dynLambda!10456 (toValue!5442 (transformation!3821 (rule!6016 (h!26863 tokens!598)))) lt!728440))))) tp!544231))))

(declare-fun b!1906631 () Bool)

(declare-fun e!1217799 () Bool)

(declare-fun tp!544229 () Bool)

(assert (=> b!1906631 (= e!1217799 tp!544229)))

(declare-fun b!1906630 () Bool)

(assert (=> b!1906630 (= e!1217800 (and (inv!28573 (xs!10032 (c!310321 (dynLambda!10451 (toChars!5301 (transformation!3821 (rule!6016 (h!26863 tokens!598)))) (dynLambda!10456 (toValue!5442 (transformation!3821 (rule!6016 (h!26863 tokens!598)))) lt!728440))))) e!1217799))))

(assert (=> b!1905266 (= tp!544055 (and (inv!28565 (c!310321 (dynLambda!10451 (toChars!5301 (transformation!3821 (rule!6016 (h!26863 tokens!598)))) (dynLambda!10456 (toValue!5442 (transformation!3821 (rule!6016 (h!26863 tokens!598)))) lt!728440)))) e!1217800))))

(assert (= (and b!1905266 (is-Node!7138 (c!310321 (dynLambda!10451 (toChars!5301 (transformation!3821 (rule!6016 (h!26863 tokens!598)))) (dynLambda!10456 (toValue!5442 (transformation!3821 (rule!6016 (h!26863 tokens!598)))) lt!728440))))) b!1906629))

(assert (= b!1906630 b!1906631))

(assert (= (and b!1905266 (is-Leaf!10512 (c!310321 (dynLambda!10451 (toChars!5301 (transformation!3821 (rule!6016 (h!26863 tokens!598)))) (dynLambda!10456 (toValue!5442 (transformation!3821 (rule!6016 (h!26863 tokens!598)))) lt!728440))))) b!1906630))

(declare-fun m!2339179 () Bool)

(assert (=> b!1906629 m!2339179))

(declare-fun m!2339181 () Bool)

(assert (=> b!1906629 m!2339181))

(declare-fun m!2339183 () Bool)

(assert (=> b!1906630 m!2339183))

(assert (=> b!1905266 m!2337281))

(declare-fun b!1906632 () Bool)

(declare-fun e!1217801 () Bool)

(assert (=> b!1906632 (= e!1217801 tp_is_empty!9091)))

(declare-fun b!1906633 () Bool)

(declare-fun tp!544232 () Bool)

(declare-fun tp!544234 () Bool)

(assert (=> b!1906633 (= e!1217801 (and tp!544232 tp!544234))))

(declare-fun b!1906634 () Bool)

(declare-fun tp!544236 () Bool)

(assert (=> b!1906634 (= e!1217801 tp!544236)))

(assert (=> b!1905609 (= tp!544092 e!1217801)))

(declare-fun b!1906635 () Bool)

(declare-fun tp!544235 () Bool)

(declare-fun tp!544233 () Bool)

(assert (=> b!1906635 (= e!1217801 (and tp!544235 tp!544233))))

(assert (= (and b!1905609 (is-ElementMatch!5246 (reg!5575 (regex!3821 (rule!6016 (h!26863 tokens!598)))))) b!1906632))

(assert (= (and b!1905609 (is-Concat!9204 (reg!5575 (regex!3821 (rule!6016 (h!26863 tokens!598)))))) b!1906633))

(assert (= (and b!1905609 (is-Star!5246 (reg!5575 (regex!3821 (rule!6016 (h!26863 tokens!598)))))) b!1906634))

(assert (= (and b!1905609 (is-Union!5246 (reg!5575 (regex!3821 (rule!6016 (h!26863 tokens!598)))))) b!1906635))

(declare-fun b!1906636 () Bool)

(declare-fun e!1217802 () Bool)

(assert (=> b!1906636 (= e!1217802 tp_is_empty!9091)))

(declare-fun b!1906637 () Bool)

(declare-fun tp!544237 () Bool)

(declare-fun tp!544239 () Bool)

(assert (=> b!1906637 (= e!1217802 (and tp!544237 tp!544239))))

(declare-fun b!1906638 () Bool)

(declare-fun tp!544241 () Bool)

(assert (=> b!1906638 (= e!1217802 tp!544241)))

(assert (=> b!1905628 (= tp!544111 e!1217802)))

(declare-fun b!1906639 () Bool)

(declare-fun tp!544240 () Bool)

(declare-fun tp!544238 () Bool)

(assert (=> b!1906639 (= e!1217802 (and tp!544240 tp!544238))))

(assert (= (and b!1905628 (is-ElementMatch!5246 (regOne!11004 (regex!3821 (h!26864 rules!3198))))) b!1906636))

(assert (= (and b!1905628 (is-Concat!9204 (regOne!11004 (regex!3821 (h!26864 rules!3198))))) b!1906637))

(assert (= (and b!1905628 (is-Star!5246 (regOne!11004 (regex!3821 (h!26864 rules!3198))))) b!1906638))

(assert (= (and b!1905628 (is-Union!5246 (regOne!11004 (regex!3821 (h!26864 rules!3198))))) b!1906639))

(declare-fun b!1906640 () Bool)

(declare-fun e!1217803 () Bool)

(assert (=> b!1906640 (= e!1217803 tp_is_empty!9091)))

(declare-fun b!1906641 () Bool)

(declare-fun tp!544242 () Bool)

(declare-fun tp!544244 () Bool)

(assert (=> b!1906641 (= e!1217803 (and tp!544242 tp!544244))))

(declare-fun b!1906642 () Bool)

(declare-fun tp!544246 () Bool)

(assert (=> b!1906642 (= e!1217803 tp!544246)))

(assert (=> b!1905628 (= tp!544113 e!1217803)))

(declare-fun b!1906643 () Bool)

(declare-fun tp!544245 () Bool)

(declare-fun tp!544243 () Bool)

(assert (=> b!1906643 (= e!1217803 (and tp!544245 tp!544243))))

(assert (= (and b!1905628 (is-ElementMatch!5246 (regTwo!11004 (regex!3821 (h!26864 rules!3198))))) b!1906640))

(assert (= (and b!1905628 (is-Concat!9204 (regTwo!11004 (regex!3821 (h!26864 rules!3198))))) b!1906641))

(assert (= (and b!1905628 (is-Star!5246 (regTwo!11004 (regex!3821 (h!26864 rules!3198))))) b!1906642))

(assert (= (and b!1905628 (is-Union!5246 (regTwo!11004 (regex!3821 (h!26864 rules!3198))))) b!1906643))

(declare-fun b!1906644 () Bool)

(declare-fun e!1217804 () Bool)

(assert (=> b!1906644 (= e!1217804 tp_is_empty!9091)))

(declare-fun b!1906645 () Bool)

(declare-fun tp!544247 () Bool)

(declare-fun tp!544249 () Bool)

(assert (=> b!1906645 (= e!1217804 (and tp!544247 tp!544249))))

(declare-fun b!1906646 () Bool)

(declare-fun tp!544251 () Bool)

(assert (=> b!1906646 (= e!1217804 tp!544251)))

(assert (=> b!1905608 (= tp!544088 e!1217804)))

(declare-fun b!1906647 () Bool)

(declare-fun tp!544250 () Bool)

(declare-fun tp!544248 () Bool)

(assert (=> b!1906647 (= e!1217804 (and tp!544250 tp!544248))))

(assert (= (and b!1905608 (is-ElementMatch!5246 (regOne!11004 (regex!3821 (rule!6016 (h!26863 tokens!598)))))) b!1906644))

(assert (= (and b!1905608 (is-Concat!9204 (regOne!11004 (regex!3821 (rule!6016 (h!26863 tokens!598)))))) b!1906645))

(assert (= (and b!1905608 (is-Star!5246 (regOne!11004 (regex!3821 (rule!6016 (h!26863 tokens!598)))))) b!1906646))

(assert (= (and b!1905608 (is-Union!5246 (regOne!11004 (regex!3821 (rule!6016 (h!26863 tokens!598)))))) b!1906647))

(declare-fun b!1906648 () Bool)

(declare-fun e!1217805 () Bool)

(assert (=> b!1906648 (= e!1217805 tp_is_empty!9091)))

(declare-fun b!1906649 () Bool)

(declare-fun tp!544252 () Bool)

(declare-fun tp!544254 () Bool)

(assert (=> b!1906649 (= e!1217805 (and tp!544252 tp!544254))))

(declare-fun b!1906650 () Bool)

(declare-fun tp!544256 () Bool)

(assert (=> b!1906650 (= e!1217805 tp!544256)))

(assert (=> b!1905608 (= tp!544090 e!1217805)))

(declare-fun b!1906651 () Bool)

(declare-fun tp!544255 () Bool)

(declare-fun tp!544253 () Bool)

(assert (=> b!1906651 (= e!1217805 (and tp!544255 tp!544253))))

(assert (= (and b!1905608 (is-ElementMatch!5246 (regTwo!11004 (regex!3821 (rule!6016 (h!26863 tokens!598)))))) b!1906648))

(assert (= (and b!1905608 (is-Concat!9204 (regTwo!11004 (regex!3821 (rule!6016 (h!26863 tokens!598)))))) b!1906649))

(assert (= (and b!1905608 (is-Star!5246 (regTwo!11004 (regex!3821 (rule!6016 (h!26863 tokens!598)))))) b!1906650))

(assert (= (and b!1905608 (is-Union!5246 (regTwo!11004 (regex!3821 (rule!6016 (h!26863 tokens!598)))))) b!1906651))

(declare-fun b!1906652 () Bool)

(declare-fun e!1217806 () Bool)

(declare-fun tp!544257 () Bool)

(assert (=> b!1906652 (= e!1217806 (and tp_is_empty!9091 tp!544257))))

(assert (=> b!1905626 (= tp!544110 e!1217806)))

(assert (= (and b!1905626 (is-Cons!21461 (t!177356 (originalCharacters!4628 (h!26863 tokens!598))))) b!1906652))

(declare-fun b!1906655 () Bool)

(declare-fun e!1217809 () Bool)

(assert (=> b!1906655 (= e!1217809 true)))

(declare-fun b!1906654 () Bool)

(declare-fun e!1217808 () Bool)

(assert (=> b!1906654 (= e!1217808 e!1217809)))

(declare-fun b!1906653 () Bool)

(declare-fun e!1217807 () Bool)

(assert (=> b!1906653 (= e!1217807 e!1217808)))

(assert (=> b!1905523 e!1217807))

(assert (= b!1906654 b!1906655))

(assert (= b!1906653 b!1906654))

(assert (= (and b!1905523 (is-Cons!21463 (t!177358 rules!3198))) b!1906653))

(assert (=> b!1906655 (< (dynLambda!10452 order!13561 (toValue!5442 (transformation!3821 (h!26864 (t!177358 rules!3198))))) (dynLambda!10453 order!13563 lambda!74458))))

(assert (=> b!1906655 (< (dynLambda!10454 order!13565 (toChars!5301 (transformation!3821 (h!26864 (t!177358 rules!3198))))) (dynLambda!10453 order!13563 lambda!74458))))

(declare-fun b!1906656 () Bool)

(declare-fun e!1217810 () Bool)

(declare-fun tp!544258 () Bool)

(assert (=> b!1906656 (= e!1217810 (and tp_is_empty!9091 tp!544258))))

(assert (=> b!1905596 (= tp!544077 e!1217810)))

(assert (= (and b!1905596 (is-Cons!21461 (t!177356 (originalCharacters!4628 separatorToken!354)))) b!1906656))

(declare-fun b!1906657 () Bool)

(declare-fun e!1217811 () Bool)

(assert (=> b!1906657 (= e!1217811 tp_is_empty!9091)))

(declare-fun b!1906658 () Bool)

(declare-fun tp!544259 () Bool)

(declare-fun tp!544261 () Bool)

(assert (=> b!1906658 (= e!1217811 (and tp!544259 tp!544261))))

(declare-fun b!1906659 () Bool)

(declare-fun tp!544263 () Bool)

(assert (=> b!1906659 (= e!1217811 tp!544263)))

(assert (=> b!1905624 (= tp!544107 e!1217811)))

(declare-fun b!1906660 () Bool)

(declare-fun tp!544262 () Bool)

(declare-fun tp!544260 () Bool)

(assert (=> b!1906660 (= e!1217811 (and tp!544262 tp!544260))))

(assert (= (and b!1905624 (is-ElementMatch!5246 (regex!3821 (h!26864 (t!177358 rules!3198))))) b!1906657))

(assert (= (and b!1905624 (is-Concat!9204 (regex!3821 (h!26864 (t!177358 rules!3198))))) b!1906658))

(assert (= (and b!1905624 (is-Star!5246 (regex!3821 (h!26864 (t!177358 rules!3198))))) b!1906659))

(assert (= (and b!1905624 (is-Union!5246 (regex!3821 (h!26864 (t!177358 rules!3198))))) b!1906660))

(declare-fun b!1906661 () Bool)

(declare-fun e!1217812 () Bool)

(assert (=> b!1906661 (= e!1217812 tp_is_empty!9091)))

(declare-fun b!1906662 () Bool)

(declare-fun tp!544264 () Bool)

(declare-fun tp!544266 () Bool)

(assert (=> b!1906662 (= e!1217812 (and tp!544264 tp!544266))))

(declare-fun b!1906663 () Bool)

(declare-fun tp!544268 () Bool)

(assert (=> b!1906663 (= e!1217812 tp!544268)))

(assert (=> b!1905614 (= tp!544096 e!1217812)))

(declare-fun b!1906664 () Bool)

(declare-fun tp!544267 () Bool)

(declare-fun tp!544265 () Bool)

(assert (=> b!1906664 (= e!1217812 (and tp!544267 tp!544265))))

(assert (= (and b!1905614 (is-ElementMatch!5246 (regOne!11005 (regex!3821 (rule!6016 separatorToken!354))))) b!1906661))

(assert (= (and b!1905614 (is-Concat!9204 (regOne!11005 (regex!3821 (rule!6016 separatorToken!354))))) b!1906662))

(assert (= (and b!1905614 (is-Star!5246 (regOne!11005 (regex!3821 (rule!6016 separatorToken!354))))) b!1906663))

(assert (= (and b!1905614 (is-Union!5246 (regOne!11005 (regex!3821 (rule!6016 separatorToken!354))))) b!1906664))

(declare-fun b!1906665 () Bool)

(declare-fun e!1217813 () Bool)

(assert (=> b!1906665 (= e!1217813 tp_is_empty!9091)))

(declare-fun b!1906666 () Bool)

(declare-fun tp!544269 () Bool)

(declare-fun tp!544271 () Bool)

(assert (=> b!1906666 (= e!1217813 (and tp!544269 tp!544271))))

(declare-fun b!1906667 () Bool)

(declare-fun tp!544273 () Bool)

(assert (=> b!1906667 (= e!1217813 tp!544273)))

(assert (=> b!1905614 (= tp!544094 e!1217813)))

(declare-fun b!1906668 () Bool)

(declare-fun tp!544272 () Bool)

(declare-fun tp!544270 () Bool)

(assert (=> b!1906668 (= e!1217813 (and tp!544272 tp!544270))))

(assert (= (and b!1905614 (is-ElementMatch!5246 (regTwo!11005 (regex!3821 (rule!6016 separatorToken!354))))) b!1906665))

(assert (= (and b!1905614 (is-Concat!9204 (regTwo!11005 (regex!3821 (rule!6016 separatorToken!354))))) b!1906666))

(assert (= (and b!1905614 (is-Star!5246 (regTwo!11005 (regex!3821 (rule!6016 separatorToken!354))))) b!1906667))

(assert (= (and b!1905614 (is-Union!5246 (regTwo!11005 (regex!3821 (rule!6016 separatorToken!354))))) b!1906668))

(declare-fun b!1906669 () Bool)

(declare-fun tp!544275 () Bool)

(declare-fun tp!544276 () Bool)

(declare-fun e!1217815 () Bool)

(assert (=> b!1906669 (= e!1217815 (and (inv!28565 (left!17163 (c!310321 (dynLambda!10451 (toChars!5301 (transformation!3821 (rule!6016 (h!26863 tokens!598)))) (value!120491 (h!26863 tokens!598)))))) tp!544275 (inv!28565 (right!17493 (c!310321 (dynLambda!10451 (toChars!5301 (transformation!3821 (rule!6016 (h!26863 tokens!598)))) (value!120491 (h!26863 tokens!598)))))) tp!544276))))

(declare-fun b!1906671 () Bool)

(declare-fun e!1217814 () Bool)

(declare-fun tp!544274 () Bool)

(assert (=> b!1906671 (= e!1217814 tp!544274)))

(declare-fun b!1906670 () Bool)

(assert (=> b!1906670 (= e!1217815 (and (inv!28573 (xs!10032 (c!310321 (dynLambda!10451 (toChars!5301 (transformation!3821 (rule!6016 (h!26863 tokens!598)))) (value!120491 (h!26863 tokens!598)))))) e!1217814))))

(assert (=> b!1905064 (= tp!544053 (and (inv!28565 (c!310321 (dynLambda!10451 (toChars!5301 (transformation!3821 (rule!6016 (h!26863 tokens!598)))) (value!120491 (h!26863 tokens!598))))) e!1217815))))

(assert (= (and b!1905064 (is-Node!7138 (c!310321 (dynLambda!10451 (toChars!5301 (transformation!3821 (rule!6016 (h!26863 tokens!598)))) (value!120491 (h!26863 tokens!598)))))) b!1906669))

(assert (= b!1906670 b!1906671))

(assert (= (and b!1905064 (is-Leaf!10512 (c!310321 (dynLambda!10451 (toChars!5301 (transformation!3821 (rule!6016 (h!26863 tokens!598)))) (value!120491 (h!26863 tokens!598)))))) b!1906670))

(declare-fun m!2339185 () Bool)

(assert (=> b!1906669 m!2339185))

(declare-fun m!2339187 () Bool)

(assert (=> b!1906669 m!2339187))

(declare-fun m!2339189 () Bool)

(assert (=> b!1906670 m!2339189))

(assert (=> b!1905064 m!2337103))

(declare-fun b!1906672 () Bool)

(declare-fun e!1217816 () Bool)

(assert (=> b!1906672 (= e!1217816 tp_is_empty!9091)))

(declare-fun b!1906673 () Bool)

(declare-fun tp!544277 () Bool)

(declare-fun tp!544279 () Bool)

(assert (=> b!1906673 (= e!1217816 (and tp!544277 tp!544279))))

(declare-fun b!1906674 () Bool)

(declare-fun tp!544281 () Bool)

(assert (=> b!1906674 (= e!1217816 tp!544281)))

(assert (=> b!1905612 (= tp!544093 e!1217816)))

(declare-fun b!1906675 () Bool)

(declare-fun tp!544280 () Bool)

(declare-fun tp!544278 () Bool)

(assert (=> b!1906675 (= e!1217816 (and tp!544280 tp!544278))))

(assert (= (and b!1905612 (is-ElementMatch!5246 (regOne!11004 (regex!3821 (rule!6016 separatorToken!354))))) b!1906672))

(assert (= (and b!1905612 (is-Concat!9204 (regOne!11004 (regex!3821 (rule!6016 separatorToken!354))))) b!1906673))

(assert (= (and b!1905612 (is-Star!5246 (regOne!11004 (regex!3821 (rule!6016 separatorToken!354))))) b!1906674))

(assert (= (and b!1905612 (is-Union!5246 (regOne!11004 (regex!3821 (rule!6016 separatorToken!354))))) b!1906675))

(declare-fun b!1906676 () Bool)

(declare-fun e!1217817 () Bool)

(assert (=> b!1906676 (= e!1217817 tp_is_empty!9091)))

(declare-fun b!1906677 () Bool)

(declare-fun tp!544282 () Bool)

(declare-fun tp!544284 () Bool)

(assert (=> b!1906677 (= e!1217817 (and tp!544282 tp!544284))))

(declare-fun b!1906678 () Bool)

(declare-fun tp!544286 () Bool)

(assert (=> b!1906678 (= e!1217817 tp!544286)))

(assert (=> b!1905612 (= tp!544095 e!1217817)))

(declare-fun b!1906679 () Bool)

(declare-fun tp!544285 () Bool)

(declare-fun tp!544283 () Bool)

(assert (=> b!1906679 (= e!1217817 (and tp!544285 tp!544283))))

(assert (= (and b!1905612 (is-ElementMatch!5246 (regTwo!11004 (regex!3821 (rule!6016 separatorToken!354))))) b!1906676))

(assert (= (and b!1905612 (is-Concat!9204 (regTwo!11004 (regex!3821 (rule!6016 separatorToken!354))))) b!1906677))

(assert (= (and b!1905612 (is-Star!5246 (regTwo!11004 (regex!3821 (rule!6016 separatorToken!354))))) b!1906678))

(assert (= (and b!1905612 (is-Union!5246 (regTwo!11004 (regex!3821 (rule!6016 separatorToken!354))))) b!1906679))

(declare-fun b!1906680 () Bool)

(declare-fun e!1217818 () Bool)

(assert (=> b!1906680 (= e!1217818 tp_is_empty!9091)))

(declare-fun b!1906681 () Bool)

(declare-fun tp!544287 () Bool)

(declare-fun tp!544289 () Bool)

(assert (=> b!1906681 (= e!1217818 (and tp!544287 tp!544289))))

(declare-fun b!1906682 () Bool)

(declare-fun tp!544291 () Bool)

(assert (=> b!1906682 (= e!1217818 tp!544291)))

(assert (=> b!1905613 (= tp!544097 e!1217818)))

(declare-fun b!1906683 () Bool)

(declare-fun tp!544290 () Bool)

(declare-fun tp!544288 () Bool)

(assert (=> b!1906683 (= e!1217818 (and tp!544290 tp!544288))))

(assert (= (and b!1905613 (is-ElementMatch!5246 (reg!5575 (regex!3821 (rule!6016 separatorToken!354))))) b!1906680))

(assert (= (and b!1905613 (is-Concat!9204 (reg!5575 (regex!3821 (rule!6016 separatorToken!354))))) b!1906681))

(assert (= (and b!1905613 (is-Star!5246 (reg!5575 (regex!3821 (rule!6016 separatorToken!354))))) b!1906682))

(assert (= (and b!1905613 (is-Union!5246 (reg!5575 (regex!3821 (rule!6016 separatorToken!354))))) b!1906683))

(declare-fun b_lambda!62983 () Bool)

(assert (= b_lambda!62957 (or (and b!1904943 b_free!53647 (= (toChars!5301 (transformation!3821 (h!26864 rules!3198))) (toChars!5301 (transformation!3821 (rule!6016 (h!26863 (t!177357 tokens!598))))))) (and b!1905625 b_free!53667 (= (toChars!5301 (transformation!3821 (h!26864 (t!177358 rules!3198)))) (toChars!5301 (transformation!3821 (rule!6016 (h!26863 (t!177357 tokens!598))))))) (and b!1905591 b_free!53663) (and b!1906610 b_free!53679 (= (toChars!5301 (transformation!3821 (rule!6016 (h!26863 (t!177357 (t!177357 tokens!598)))))) (toChars!5301 (transformation!3821 (rule!6016 (h!26863 (t!177357 tokens!598))))))) (and b!1904942 b_free!53639 (= (toChars!5301 (transformation!3821 (rule!6016 separatorToken!354))) (toChars!5301 (transformation!3821 (rule!6016 (h!26863 (t!177357 tokens!598))))))) (and b!1904950 b_free!53643 (= (toChars!5301 (transformation!3821 (rule!6016 (h!26863 tokens!598)))) (toChars!5301 (transformation!3821 (rule!6016 (h!26863 (t!177357 tokens!598))))))) (and b!1906613 b_free!53683 (= (toChars!5301 (transformation!3821 (h!26864 (t!177358 (t!177358 rules!3198))))) (toChars!5301 (transformation!3821 (rule!6016 (h!26863 (t!177357 tokens!598))))))) b_lambda!62983)))

(declare-fun b_lambda!62985 () Bool)

(assert (= b_lambda!62963 (or b!1904964 b_lambda!62985)))

(declare-fun bs!413923 () Bool)

(declare-fun d!583302 () Bool)

(assert (= bs!413923 (and d!583302 b!1904964)))

(assert (=> bs!413923 (= (dynLambda!10450 lambda!74440 (h!26863 (t!177357 tokens!598))) (not (isSeparator!3821 (rule!6016 (h!26863 (t!177357 tokens!598))))))))

(assert (=> b!1906112 d!583302))

(declare-fun b_lambda!62987 () Bool)

(assert (= b_lambda!62973 (or (and b!1904943 b_free!53647 (= (toChars!5301 (transformation!3821 (h!26864 rules!3198))) (toChars!5301 (transformation!3821 (rule!6016 (h!26863 (t!177357 tokens!598))))))) (and b!1905625 b_free!53667 (= (toChars!5301 (transformation!3821 (h!26864 (t!177358 rules!3198)))) (toChars!5301 (transformation!3821 (rule!6016 (h!26863 (t!177357 tokens!598))))))) (and b!1905591 b_free!53663) (and b!1906610 b_free!53679 (= (toChars!5301 (transformation!3821 (rule!6016 (h!26863 (t!177357 (t!177357 tokens!598)))))) (toChars!5301 (transformation!3821 (rule!6016 (h!26863 (t!177357 tokens!598))))))) (and b!1904942 b_free!53639 (= (toChars!5301 (transformation!3821 (rule!6016 separatorToken!354))) (toChars!5301 (transformation!3821 (rule!6016 (h!26863 (t!177357 tokens!598))))))) (and b!1904950 b_free!53643 (= (toChars!5301 (transformation!3821 (rule!6016 (h!26863 tokens!598)))) (toChars!5301 (transformation!3821 (rule!6016 (h!26863 (t!177357 tokens!598))))))) (and b!1906613 b_free!53683 (= (toChars!5301 (transformation!3821 (h!26864 (t!177358 (t!177358 rules!3198))))) (toChars!5301 (transformation!3821 (rule!6016 (h!26863 (t!177357 tokens!598))))))) b_lambda!62987)))

(declare-fun b_lambda!62989 () Bool)

(assert (= b_lambda!62953 (or d!582652 b_lambda!62989)))

(declare-fun bs!413924 () Bool)

(declare-fun d!583304 () Bool)

(assert (= bs!413924 (and d!583304 d!582652)))

(assert (=> bs!413924 (= (dynLambda!10466 lambda!74449 lt!728440) (= (list!8725 (dynLambda!10451 (toChars!5301 (transformation!3821 (rule!6016 (h!26863 tokens!598)))) (dynLambda!10456 (toValue!5442 (transformation!3821 (rule!6016 (h!26863 tokens!598)))) lt!728440))) (list!8725 lt!728440)))))

(declare-fun b_lambda!62997 () Bool)

(assert (=> (not b_lambda!62997) (not bs!413924)))

(assert (=> bs!413924 t!177602))

(declare-fun b_and!148103 () Bool)

(assert (= b_and!148101 (and (=> t!177602 result!140906) b_and!148103)))

(assert (=> bs!413924 t!177580))

(declare-fun b_and!148105 () Bool)

(assert (= b_and!148097 (and (=> t!177580 result!140884) b_and!148105)))

(assert (=> bs!413924 t!177382))

(declare-fun b_and!148107 () Bool)

(assert (= b_and!148087 (and (=> t!177382 result!140676) b_and!148107)))

(assert (=> bs!413924 t!177418))

(declare-fun b_and!148109 () Bool)

(assert (= b_and!148093 (and (=> t!177418 result!140714) b_and!148109)))

(assert (=> bs!413924 t!177384))

(declare-fun b_and!148111 () Bool)

(assert (= b_and!148089 (and (=> t!177384 result!140678) b_and!148111)))

(assert (=> bs!413924 t!177380))

(declare-fun b_and!148113 () Bool)

(assert (= b_and!148085 (and (=> t!177380 result!140674) b_and!148113)))

(assert (=> bs!413924 t!177428))

(declare-fun b_and!148115 () Bool)

(assert (= b_and!148091 (and (=> t!177428 result!140730) b_and!148115)))

(declare-fun b_lambda!62999 () Bool)

(assert (=> (not b_lambda!62999) (not bs!413924)))

(assert (=> bs!413924 t!177386))

(declare-fun b_and!148117 () Bool)

(assert (= b_and!148037 (and (=> t!177386 result!140680) b_and!148117)))

(assert (=> bs!413924 t!177388))

(declare-fun b_and!148119 () Bool)

(assert (= b_and!148041 (and (=> t!177388 result!140684) b_and!148119)))

(assert (=> bs!413924 t!177390))

(declare-fun b_and!148121 () Bool)

(assert (= b_and!148039 (and (=> t!177390 result!140686) b_and!148121)))

(assert (=> bs!413924 t!177424))

(declare-fun b_and!148123 () Bool)

(assert (= b_and!148035 (and (=> t!177424 result!140726) b_and!148123)))

(assert (=> bs!413924 t!177414))

(declare-fun b_and!148125 () Bool)

(assert (= b_and!148043 (and (=> t!177414 result!140710) b_and!148125)))

(assert (=> bs!413924 t!177570))

(declare-fun b_and!148127 () Bool)

(assert (= b_and!148095 (and (=> t!177570 result!140874) b_and!148127)))

(assert (=> bs!413924 t!177592))

(declare-fun b_and!148129 () Bool)

(assert (= b_and!148099 (and (=> t!177592 result!140896) b_and!148129)))

(assert (=> bs!413924 m!2337287))

(assert (=> bs!413924 m!2337287))

(assert (=> bs!413924 m!2337289))

(assert (=> bs!413924 m!2336977))

(assert (=> bs!413924 m!2337289))

(assert (=> bs!413924 m!2337291))

(assert (=> d!582832 d!583304))

(declare-fun b_lambda!62991 () Bool)

(assert (= b_lambda!62965 (or d!582664 b_lambda!62991)))

(declare-fun bs!413925 () Bool)

(declare-fun d!583306 () Bool)

(assert (= bs!413925 (and d!583306 d!582664)))

(declare-fun res!851344 () Bool)

(declare-fun e!1217819 () Bool)

(assert (=> bs!413925 (=> res!851344 e!1217819)))

(assert (=> bs!413925 (= res!851344 (not (= (list!8725 lt!728440) (list!8725 (seqFromList!2693 (originalCharacters!4628 (h!26863 tokens!598)))))))))

(assert (=> bs!413925 (= (dynLambda!10467 lambda!74455 lt!728440 (seqFromList!2693 (originalCharacters!4628 (h!26863 tokens!598)))) e!1217819)))

(declare-fun b!1906684 () Bool)

(assert (=> b!1906684 (= e!1217819 (= (dynLambda!10456 (toValue!5442 (transformation!3821 (rule!6016 (h!26863 tokens!598)))) lt!728440) (dynLambda!10456 (toValue!5442 (transformation!3821 (rule!6016 (h!26863 tokens!598)))) (seqFromList!2693 (originalCharacters!4628 (h!26863 tokens!598))))))))

(assert (= (and bs!413925 (not res!851344)) b!1906684))

(declare-fun b_lambda!63001 () Bool)

(assert (=> (not b_lambda!63001) (not b!1906684)))

(assert (=> b!1906684 t!177570))

(declare-fun b_and!148131 () Bool)

(assert (= b_and!148127 (and (=> t!177570 result!140874) b_and!148131)))

(assert (=> b!1906684 t!177424))

(declare-fun b_and!148133 () Bool)

(assert (= b_and!148123 (and (=> t!177424 result!140726) b_and!148133)))

(assert (=> b!1906684 t!177390))

(declare-fun b_and!148135 () Bool)

(assert (= b_and!148121 (and (=> t!177390 result!140686) b_and!148135)))

(assert (=> b!1906684 t!177592))

(declare-fun b_and!148137 () Bool)

(assert (= b_and!148129 (and (=> t!177592 result!140896) b_and!148137)))

(assert (=> b!1906684 t!177414))

(declare-fun b_and!148139 () Bool)

(assert (= b_and!148125 (and (=> t!177414 result!140710) b_and!148139)))

(assert (=> b!1906684 t!177388))

(declare-fun b_and!148141 () Bool)

(assert (= b_and!148119 (and (=> t!177388 result!140684) b_and!148141)))

(assert (=> b!1906684 t!177386))

(declare-fun b_and!148143 () Bool)

(assert (= b_and!148117 (and (=> t!177386 result!140680) b_and!148143)))

(declare-fun b_lambda!63003 () Bool)

(assert (=> (not b_lambda!63003) (not b!1906684)))

(assert (=> b!1906684 t!177426))

(declare-fun b_and!148145 () Bool)

(assert (= b_and!148133 (and (=> t!177426 result!140728) b_and!148145)))

(assert (=> b!1906684 t!177392))

(declare-fun b_and!148147 () Bool)

(assert (= b_and!148143 (and (=> t!177392 result!140688) b_and!148147)))

(assert (=> b!1906684 t!177394))

(declare-fun b_and!148149 () Bool)

(assert (= b_and!148141 (and (=> t!177394 result!140690) b_and!148149)))

(assert (=> b!1906684 t!177416))

(declare-fun b_and!148151 () Bool)

(assert (= b_and!148139 (and (=> t!177416 result!140712) b_and!148151)))

(assert (=> b!1906684 t!177598))

(declare-fun b_and!148153 () Bool)

(assert (= b_and!148137 (and (=> t!177598 result!140902) b_and!148153)))

(assert (=> b!1906684 t!177576))

(declare-fun b_and!148155 () Bool)

(assert (= b_and!148131 (and (=> t!177576 result!140880) b_and!148155)))

(assert (=> b!1906684 t!177396))

(declare-fun b_and!148157 () Bool)

(assert (= b_and!148135 (and (=> t!177396 result!140692) b_and!148157)))

(assert (=> bs!413925 m!2336977))

(assert (=> bs!413925 m!2336963))

(assert (=> bs!413925 m!2337369))

(assert (=> b!1906684 m!2337287))

(assert (=> b!1906684 m!2336963))

(assert (=> b!1906684 m!2337371))

(assert (=> d!582956 d!583306))

(declare-fun b_lambda!62993 () Bool)

(assert (= b_lambda!62971 (or d!582692 b_lambda!62993)))

(declare-fun bs!413926 () Bool)

(declare-fun d!583308 () Bool)

(assert (= bs!413926 (and d!583308 d!582692)))

(assert (=> bs!413926 (= (dynLambda!10450 lambda!74458 (h!26863 tokens!598)) (rulesProduceIndividualToken!1606 thiss!23328 rules!3198 (h!26863 tokens!598)))))

(assert (=> bs!413926 m!2337605))

(assert (=> b!1906292 d!583308))

(declare-fun b_lambda!62995 () Bool)

(assert (= b_lambda!62959 (or b!1905210 b_lambda!62995)))

(declare-fun bs!413927 () Bool)

(declare-fun d!583310 () Bool)

(assert (= bs!413927 (and d!583310 b!1905210)))

(assert (=> bs!413927 (= (dynLambda!10450 lambda!74446 (h!26863 (t!177357 tokens!598))) (rulesProduceIndividualToken!1606 thiss!23328 rules!3198 (h!26863 (t!177357 tokens!598))))))

(assert (=> bs!413927 m!2338541))

(assert (=> d!582900 d!583310))

(push 1)

(assert (not bs!413926))

(assert (not b!1906085))

(assert (not b!1906592))

(assert (not d!583264))

(assert (not d!582854))

(assert (not b!1906322))

(assert (not b!1906113))

(assert (not d!582966))

(assert (not b!1906617))

(assert (not b!1905862))

(assert (not b!1906315))

(assert (not b!1906635))

(assert (not b!1906582))

(assert (not b!1905767))

(assert (not b!1905764))

(assert (not b!1906180))

(assert (not b!1905816))

(assert (not b!1906558))

(assert (not b!1906295))

(assert (not d!583094))

(assert (not d!582818))

(assert (not d!583262))

(assert (not bs!413924))

(assert (not b_lambda!62969))

(assert (not bm!117432))

(assert (not d!582928))

(assert (not b!1906086))

(assert (not b!1906084))

(assert (not d!583026))

(assert (not b!1906629))

(assert (not b_lambda!62955))

(assert (not d!583060))

(assert (not bm!117402))

(assert (not b!1906633))

(assert (not b!1906522))

(assert (not b!1906093))

(assert b_and!148107)

(assert (not b!1906175))

(assert (not b_lambda!62913))

(assert (not b_lambda!62917))

(assert (not b!1906669))

(assert (not b!1906142))

(assert b_and!148145)

(assert (not b!1906584))

(assert (not d!583018))

(assert (not b!1906579))

(assert (not b!1906145))

(assert (not d!583014))

(assert (not d!583266))

(assert (not b_next!54345))

(assert (not b_next!54341))

(assert (not b!1906569))

(assert (not b!1905962))

(assert (not b!1906627))

(assert (not b!1906535))

(assert (not b!1906016))

(assert (not d!582898))

(assert (not b!1906287))

(assert (not b!1906667))

(assert (not b!1906025))

(assert (not d!582958))

(assert (not b!1906012))

(assert (not d!583270))

(assert (not b!1905909))

(assert (not b!1905921))

(assert (not tb!116497))

(assert (not b!1906298))

(assert (not b!1906029))

(assert (not d!583062))

(assert (not d!582978))

(assert (not b_next!54349))

(assert (not b!1906600))

(assert b_and!148111)

(assert (not d!582948))

(assert (not d!582894))

(assert (not d!582972))

(assert (not b!1906090))

(assert (not b!1906267))

(assert (not b!1906148))

(assert (not b!1906055))

(assert (not b!1905959))

(assert (not b!1906275))

(assert (not bm!117405))

(assert (not b!1906631))

(assert (not b!1906673))

(assert (not b!1906565))

(assert (not b!1906570))

(assert (not b!1906174))

(assert (not b!1905870))

(assert (not b!1906671))

(assert (not b!1905961))

(assert (not b!1906168))

(assert (not bs!413927))

(assert (not b!1906585))

(assert (not d!583296))

(assert (not b!1906245))

(assert (not b!1906628))

(assert (not d!583260))

(assert (not b!1906293))

(assert (not d!583010))

(assert b_and!148103)

(assert (not b_lambda!62981))

(assert (not d!582984))

(assert (not b_lambda!62921))

(assert (not d!582806))

(assert (not b!1906013))

(assert (not bm!117439))

(assert (not d!583074))

(assert (not b!1905776))

(assert (not b!1906602))

(assert (not d!583108))

(assert (not b_next!54369))

(assert (not b!1906096))

(assert (not d!582852))

(assert (not b!1905819))

(assert (not d!582830))

(assert (not bm!117431))

(assert (not b!1906038))

(assert (not b!1906024))

(assert (not d!583276))

(assert (not b!1906521))

(assert (not b!1906205))

(assert (not bm!117427))

(assert (not b!1906652))

(assert (not b_lambda!62911))

(assert (not b!1906296))

(assert (not b!1906017))

(assert (not b!1906366))

(assert (not d!582922))

(assert (not d!582862))

(assert (not tb!116487))

(assert (not b!1906647))

(assert (not b!1906089))

(assert (not b!1905912))

(assert (not d!582906))

(assert (not d!583298))

(assert (not b!1906588))

(assert (not b!1906682))

(assert (not b!1906118))

(assert (not d!583130))

(assert (not d!583056))

(assert (not b!1906014))

(assert (not d!583068))

(assert (not b!1905853))

(assert (not b!1905941))

(assert (not b!1905904))

(assert (not b!1906597))

(assert (not d!583188))

(assert (not b!1906199))

(assert (not d!582812))

(assert (not d!583066))

(assert (not b!1906183))

(assert (not bm!117434))

(assert (not d!583028))

(assert (not d!582914))

(assert (not b!1906567))

(assert (not b!1906133))

(assert (not b_next!54387))

(assert (not b_lambda!62989))

(assert (not b_next!54343))

(assert (not b_next!54383))

(assert (not b!1905846))

(assert (not b!1906590))

(assert (not b!1905907))

(assert (not b!1906109))

(assert (not b!1906006))

(assert (not b!1906612))

(assert (not b!1906523))

(assert (not b!1906609))

(assert (not b!1906660))

(assert (not tb!116477))

(assert (not d!582810))

(assert (not b!1906186))

(assert (not tb!116467))

(assert (not b!1905935))

(assert (not d!582994))

(assert (not bm!117430))

(assert (not d!583022))

(assert (not b!1906549))

(assert (not bm!117440))

(assert (not b!1906092))

(assert (not b!1906637))

(assert (not b!1906642))

(assert (not b!1906666))

(assert (not b_lambda!62909))

(assert (not b_next!54347))

(assert (not b!1905934))

(assert (not b!1906008))

(assert (not b_lambda!62961))

(assert (not b!1905891))

(assert (not b!1906207))

(assert (not b!1906031))

(assert (not b!1905849))

(assert (not b!1906616))

(assert (not b!1906004))

(assert (not b!1906111))

(assert (not b!1906646))

(assert (not d!582936))

(assert (not b!1906251))

(assert (not b_lambda!62997))

(assert (not b!1905144))

(assert (not b!1905822))

(assert (not b!1906063))

(assert (not b!1906591))

(assert (not d!583098))

(assert (not b!1906530))

(assert (not b!1906596))

(assert (not b!1906061))

(assert (not b!1905851))

(assert b_and!148105)

(assert (not b!1906022))

(assert (not b!1906272))

(assert (not b!1906192))

(assert (not b!1906132))

(assert (not b!1906066))

(assert b_and!148115)

(assert (not b!1905940))

(assert (not b!1906649))

(assert (not d!582796))

(assert (not b!1906576))

(assert (not d!582910))

(assert (not d!582920))

(assert (not b!1906552))

(assert (not d!582970))

(assert (not b!1906573))

(assert (not b!1906663))

(assert (not b_lambda!62915))

(assert (not bm!117425))

(assert (not b!1905847))

(assert (not b!1906638))

(assert (not b!1906253))

(assert (not d!582982))

(assert (not b!1906681))

(assert (not b!1906577))

(assert (not b!1905943))

(assert (not b!1905946))

(assert (not b!1906021))

(assert (not b_lambda!62987))

(assert (not b!1906639))

(assert (not b!1906249))

(assert (not b!1906641))

(assert (not b!1906683))

(assert (not b!1906674))

(assert (not d!582794))

(assert (not b!1906262))

(assert (not d!582832))

(assert (not bm!117435))

(assert (not b!1906678))

(assert (not b!1906041))

(assert (not b!1905954))

(assert (not d!582882))

(assert b_and!148149)

(assert (not b!1905875))

(assert (not bm!117426))

(assert (not b!1906563))

(assert (not b!1906057))

(assert (not b!1906537))

(assert (not b!1906036))

(assert (not b!1906011))

(assert (not d!583096))

(assert (not bm!117444))

(assert (not b!1906003))

(assert (not b!1905906))

(assert (not b!1905803))

(assert (not d!582874))

(assert (not b!1906554))

(assert (not b!1906536))

(assert (not b!1906033))

(assert (not b!1905766))

(assert (not b!1906196))

(assert (not bm!117441))

(assert (not d!583132))

(assert (not d!583286))

(assert (not b!1906658))

(assert (not b!1906139))

(assert (not b!1906598))

(assert (not b!1906533))

(assert (not bm!117437))

(assert (not b!1906653))

(assert (not b!1906662))

(assert (not d!582904))

(assert (not bm!117407))

(assert (not b!1906309))

(assert (not b!1906607))

(assert (not b!1906046))

(assert (not bm!117410))

(assert (not b!1905860))

(assert (not b!1906527))

(assert (not b!1905845))

(assert (not d!583114))

(assert (not b!1906270))

(assert (not b!1906645))

(assert (not d!583278))

(assert (not b!1906001))

(assert (not d!582924))

(assert (not b!1905815))

(assert (not d!582850))

(assert (not b_lambda!62993))

(assert (not b!1906195))

(assert (not d!582926))

(assert (not b!1905956))

(assert (not d!583284))

(assert (not b!1906643))

(assert (not d!582872))

(assert (not b!1906010))

(assert (not b!1906019))

(assert (not d!582912))

(assert (not b!1906044))

(assert (not b!1906189))

(assert (not b_lambda!63003))

(assert (not b!1906546))

(assert (not b!1905958))

(assert (not b!1906677))

(assert (not b!1906310))

(assert (not b!1906670))

(assert (not b_lambda!62995))

(assert (not d!583006))

(assert (not b!1906321))

(assert (not b!1906190))

(assert (not d!582826))

(assert (not bm!117406))

(assert (not b!1905064))

(assert (not b!1905888))

(assert (not b!1905998))

(assert (not b_lambda!63001))

(assert (not d!583086))

(assert b_and!148113)

(assert (not d!582860))

(assert (not b!1906656))

(assert (not b!1906532))

(assert (not b_next!54365))

(assert (not b_lambda!62919))

(assert (not d!582814))

(assert (not b!1906020))

(assert tp_is_empty!9091)

(assert (not b!1906561))

(assert b_and!148153)

(assert b_and!148157)

(assert (not d!583110))

(assert (not b!1905910))

(assert (not bm!117422))

(assert (not b!1906082))

(assert (not b!1906193))

(assert (not b!1906254))

(assert (not d!583016))

(assert (not b!1906675))

(assert (not b!1906651))

(assert (not b!1906626))

(assert (not b!1905902))

(assert (not d!582954))

(assert (not b!1906630))

(assert (not b!1905813))

(assert (not b_lambda!62967))

(assert (not bm!117401))

(assert (not b!1905775))

(assert (not b!1906368))

(assert (not bm!117403))

(assert (not b!1905913))

(assert (not b_next!54381))

(assert (not b_lambda!62983))

(assert (not b_lambda!62907))

(assert (not bm!117411))

(assert (not d!583294))

(assert b_and!148151)

(assert (not b!1906560))

(assert (not b!1906047))

(assert (not b!1906526))

(assert (not b!1906608))

(assert (not b!1906534))

(assert (not b!1906187))

(assert (not b!1905874))

(assert (not b_lambda!62905))

(assert (not b!1906606))

(assert b_and!148109)

(assert (not b!1906122))

(assert (not d!583258))

(assert (not bs!413925))

(assert (not b!1906313))

(assert (not d!582942))

(assert (not b!1906268))

(assert (not b_lambda!62991))

(assert (not b!1906605))

(assert (not b!1906604))

(assert (not d!582892))

(assert (not b!1906130))

(assert (not bm!117412))

(assert (not b!1906664))

(assert (not d!583288))

(assert (not b!1905887))

(assert (not b!1906178))

(assert (not d!582988))

(assert (not b!1905772))

(assert (not d!583020))

(assert (not b!1905773))

(assert (not b!1905933))

(assert (not b!1906176))

(assert (not d!583116))

(assert b_and!148155)

(assert (not b!1906559))

(assert (not b!1906611))

(assert (not b!1905892))

(assert (not b!1906589))

(assert (not b!1906615))

(assert (not b!1906261))

(assert (not b!1906243))

(assert (not b!1906140))

(assert (not b!1906043))

(assert (not b!1905868))

(assert (not b_next!54371))

(assert (not b!1906580))

(assert (not b!1906273))

(assert (not b!1905818))

(assert (not b!1906264))

(assert (not b!1906274))

(assert (not b!1905965))

(assert (not b!1906263))

(assert (not b!1906119))

(assert (not b!1906058))

(assert (not b!1905848))

(assert (not d!582900))

(assert (not b!1906297))

(assert (not b!1906679))

(assert (not b_next!54385))

(assert (not b!1906562))

(assert (not d!583004))

(assert (not d!583118))

(assert (not d!582836))

(assert (not d!582844))

(assert (not b!1906586))

(assert (not b!1906037))

(assert (not b!1906659))

(assert (not b!1906181))

(assert (not b!1906544))

(assert (not d!582792))

(assert (not b!1906232))

(assert (not bm!117445))

(assert (not d!582896))

(assert (not b!1906650))

(assert b_and!148147)

(assert (not b!1905916))

(assert (not b_next!54351))

(assert (not b!1905945))

(assert (not b!1905872))

(assert (not d!582798))

(assert (not bm!117423))

(assert (not b!1906050))

(assert (not bm!117467))

(assert (not d!582940))

(assert (not b!1906548))

(assert (not d!583126))

(assert (not b!1906529))

(assert (not b!1906601))

(assert (not d!582992))

(assert (not d!583280))

(assert (not b!1906299))

(assert (not tb!116537))

(assert (not tb!116457))

(assert (not b!1906566))

(assert (not d!582956))

(assert (not d!582976))

(assert (not b_lambda!62999))

(assert (not bm!117408))

(assert (not b!1906018))

(assert (not d!583090))

(assert (not b!1906124))

(assert (not b!1905266))

(assert (not b!1906087))

(assert (not b!1906668))

(assert (not b_lambda!62985))

(assert (not d!582848))

(assert (not b_next!54367))

(assert (not b!1906634))

(assert (not b!1906271))

(assert (not b!1906146))

(assert (not b!1905852))

(check-sat)

(pop 1)

(push 1)

(assert b_and!148103)

(assert (not b_next!54369))

(assert (not b_next!54347))

(assert b_and!148149)

(assert (not b_next!54381))

(assert b_and!148155)

(assert (not b_next!54371))

(assert (not b_next!54385))

(assert (not b_next!54367))

(assert b_and!148107)

(assert b_and!148145)

(assert (not b_next!54345))

(assert (not b_next!54341))

(assert (not b_next!54349))

(assert b_and!148111)

(assert (not b_next!54383))

(assert (not b_next!54387))

(assert (not b_next!54343))

(assert b_and!148105)

(assert b_and!148115)

(assert (not b_next!54365))

(assert b_and!148113)

(assert b_and!148153)

(assert b_and!148157)

(assert b_and!148151)

(assert b_and!148109)

(assert b_and!148147)

(assert (not b_next!54351))

(check-sat)

(pop 1)

