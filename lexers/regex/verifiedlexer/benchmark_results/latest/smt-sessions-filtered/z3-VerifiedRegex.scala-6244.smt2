; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!303902 () Bool)

(assert start!303902)

(declare-fun b!3232210 () Bool)

(declare-fun b_free!86201 () Bool)

(declare-fun b_next!86905 () Bool)

(assert (=> b!3232210 (= b_free!86201 (not b_next!86905))))

(declare-fun tp!1018640 () Bool)

(declare-fun b_and!216583 () Bool)

(assert (=> b!3232210 (= tp!1018640 b_and!216583)))

(declare-fun b_free!86203 () Bool)

(declare-fun b_next!86907 () Bool)

(assert (=> b!3232210 (= b_free!86203 (not b_next!86907))))

(declare-fun tp!1018645 () Bool)

(declare-fun b_and!216585 () Bool)

(assert (=> b!3232210 (= tp!1018645 b_and!216585)))

(declare-fun b!3232208 () Bool)

(declare-fun b_free!86205 () Bool)

(declare-fun b_next!86909 () Bool)

(assert (=> b!3232208 (= b_free!86205 (not b_next!86909))))

(declare-fun tp!1018635 () Bool)

(declare-fun b_and!216587 () Bool)

(assert (=> b!3232208 (= tp!1018635 b_and!216587)))

(declare-fun b_free!86207 () Bool)

(declare-fun b_next!86911 () Bool)

(assert (=> b!3232208 (= b_free!86207 (not b_next!86911))))

(declare-fun tp!1018643 () Bool)

(declare-fun b_and!216589 () Bool)

(assert (=> b!3232208 (= tp!1018643 b_and!216589)))

(declare-fun b!3232205 () Bool)

(declare-fun b_free!86209 () Bool)

(declare-fun b_next!86913 () Bool)

(assert (=> b!3232205 (= b_free!86209 (not b_next!86913))))

(declare-fun tp!1018639 () Bool)

(declare-fun b_and!216591 () Bool)

(assert (=> b!3232205 (= tp!1018639 b_and!216591)))

(declare-fun b_free!86211 () Bool)

(declare-fun b_next!86915 () Bool)

(assert (=> b!3232205 (= b_free!86211 (not b_next!86915))))

(declare-fun tp!1018646 () Bool)

(declare-fun b_and!216593 () Bool)

(assert (=> b!3232205 (= tp!1018646 b_and!216593)))

(declare-fun b!3232200 () Bool)

(declare-fun tp!1018636 () Bool)

(declare-fun e!2015644 () Bool)

(declare-fun e!2015647 () Bool)

(declare-datatypes ((C!20240 0))(
  ( (C!20241 (val!12168 Int)) )
))
(declare-datatypes ((Regex!10027 0))(
  ( (ElementMatch!10027 (c!543256 C!20240)) (Concat!15525 (regOne!20566 Regex!10027) (regTwo!20566 Regex!10027)) (EmptyExpr!10027) (Star!10027 (reg!10356 Regex!10027)) (EmptyLang!10027) (Union!10027 (regOne!20567 Regex!10027) (regTwo!20567 Regex!10027)) )
))
(declare-datatypes ((List!36494 0))(
  ( (Nil!36370) (Cons!36370 (h!41790 (_ BitVec 16)) (t!241855 List!36494)) )
))
(declare-datatypes ((TokenValue!5498 0))(
  ( (FloatLiteralValue!10996 (text!38931 List!36494)) (TokenValueExt!5497 (__x!23213 Int)) (Broken!27490 (value!170572 List!36494)) (Object!5621) (End!5498) (Def!5498) (Underscore!5498) (Match!5498) (Else!5498) (Error!5498) (Case!5498) (If!5498) (Extends!5498) (Abstract!5498) (Class!5498) (Val!5498) (DelimiterValue!10996 (del!5558 List!36494)) (KeywordValue!5504 (value!170573 List!36494)) (CommentValue!10996 (value!170574 List!36494)) (WhitespaceValue!10996 (value!170575 List!36494)) (IndentationValue!5498 (value!170576 List!36494)) (String!40823) (Int32!5498) (Broken!27491 (value!170577 List!36494)) (Boolean!5499) (Unit!50967) (OperatorValue!5501 (op!5558 List!36494)) (IdentifierValue!10996 (value!170578 List!36494)) (IdentifierValue!10997 (value!170579 List!36494)) (WhitespaceValue!10997 (value!170580 List!36494)) (True!10996) (False!10996) (Broken!27492 (value!170581 List!36494)) (Broken!27493 (value!170582 List!36494)) (True!10997) (RightBrace!5498) (RightBracket!5498) (Colon!5498) (Null!5498) (Comma!5498) (LeftBracket!5498) (False!10997) (LeftBrace!5498) (ImaginaryLiteralValue!5498 (text!38932 List!36494)) (StringLiteralValue!16494 (value!170583 List!36494)) (EOFValue!5498 (value!170584 List!36494)) (IdentValue!5498 (value!170585 List!36494)) (DelimiterValue!10997 (value!170586 List!36494)) (DedentValue!5498 (value!170587 List!36494)) (NewLineValue!5498 (value!170588 List!36494)) (IntegerValue!16494 (value!170589 (_ BitVec 32)) (text!38933 List!36494)) (IntegerValue!16495 (value!170590 Int) (text!38934 List!36494)) (Times!5498) (Or!5498) (Equal!5498) (Minus!5498) (Broken!27494 (value!170591 List!36494)) (And!5498) (Div!5498) (LessEqual!5498) (Mod!5498) (Concat!15526) (Not!5498) (Plus!5498) (SpaceValue!5498 (value!170592 List!36494)) (IntegerValue!16496 (value!170593 Int) (text!38935 List!36494)) (StringLiteralValue!16495 (text!38936 List!36494)) (FloatLiteralValue!10997 (text!38937 List!36494)) (BytesLiteralValue!5498 (value!170594 List!36494)) (CommentValue!10997 (value!170595 List!36494)) (StringLiteralValue!16496 (value!170596 List!36494)) (ErrorTokenValue!5498 (msg!5559 List!36494)) )
))
(declare-datatypes ((List!36495 0))(
  ( (Nil!36371) (Cons!36371 (h!41791 C!20240) (t!241856 List!36495)) )
))
(declare-datatypes ((IArray!21827 0))(
  ( (IArray!21828 (innerList!10971 List!36495)) )
))
(declare-datatypes ((Conc!10911 0))(
  ( (Node!10911 (left!28323 Conc!10911) (right!28653 Conc!10911) (csize!22052 Int) (cheight!11122 Int)) (Leaf!17156 (xs!14033 IArray!21827) (csize!22053 Int)) (Empty!10911) )
))
(declare-datatypes ((BalanceConc!21436 0))(
  ( (BalanceConc!21437 (c!543257 Conc!10911)) )
))
(declare-datatypes ((String!40824 0))(
  ( (String!40825 (value!170597 String)) )
))
(declare-datatypes ((TokenValueInjection!10424 0))(
  ( (TokenValueInjection!10425 (toValue!7380 Int) (toChars!7239 Int)) )
))
(declare-datatypes ((Rule!10336 0))(
  ( (Rule!10337 (regex!5268 Regex!10027) (tag!5800 String!40824) (isSeparator!5268 Bool) (transformation!5268 TokenValueInjection!10424)) )
))
(declare-datatypes ((List!36496 0))(
  ( (Nil!36372) (Cons!36372 (h!41792 Rule!10336) (t!241857 List!36496)) )
))
(declare-fun rules!2135 () List!36496)

(declare-fun inv!49267 (String!40824) Bool)

(declare-fun inv!49270 (TokenValueInjection!10424) Bool)

(assert (=> b!3232200 (= e!2015647 (and tp!1018636 (inv!49267 (tag!5800 (h!41792 rules!2135))) (inv!49270 (transformation!5268 (h!41792 rules!2135))) e!2015644))))

(declare-fun b!3232201 () Bool)

(declare-fun e!2015648 () Bool)

(declare-datatypes ((Token!9902 0))(
  ( (Token!9903 (value!170598 TokenValue!5498) (rule!7726 Rule!10336) (size!27439 Int) (originalCharacters!5982 List!36495)) )
))
(declare-datatypes ((List!36497 0))(
  ( (Nil!36373) (Cons!36373 (h!41793 Token!9902) (t!241858 List!36497)) )
))
(declare-fun tokens!494 () List!36497)

(declare-fun lt!1096628 () Rule!10336)

(assert (=> b!3232201 (= e!2015648 (= (rule!7726 (h!41793 tokens!494)) lt!1096628))))

(declare-fun b!3232202 () Bool)

(declare-fun e!2015634 () Bool)

(assert (=> b!3232202 (= e!2015634 e!2015648)))

(declare-fun res!1315962 () Bool)

(assert (=> b!3232202 (=> (not res!1315962) (not e!2015648))))

(declare-fun lt!1096627 () List!36495)

(declare-fun matchR!4649 (Regex!10027 List!36495) Bool)

(assert (=> b!3232202 (= res!1315962 (matchR!4649 (regex!5268 lt!1096628) lt!1096627))))

(declare-datatypes ((Option!7220 0))(
  ( (None!7219) (Some!7219 (v!35839 Rule!10336)) )
))
(declare-fun lt!1096623 () Option!7220)

(declare-fun get!11583 (Option!7220) Rule!10336)

(assert (=> b!3232202 (= lt!1096628 (get!11583 lt!1096623))))

(declare-fun b!3232203 () Bool)

(declare-fun e!2015654 () Bool)

(declare-fun e!2015641 () Bool)

(assert (=> b!3232203 (= e!2015654 e!2015641)))

(declare-fun res!1315969 () Bool)

(assert (=> b!3232203 (=> res!1315969 e!2015641)))

(assert (=> b!3232203 (= res!1315969 (isSeparator!5268 (rule!7726 (h!41793 tokens!494))))))

(declare-datatypes ((Unit!50968 0))(
  ( (Unit!50969) )
))
(declare-fun lt!1096621 () Unit!50968)

(declare-fun lambda!118285 () Int)

(declare-fun forallContained!1229 (List!36497 Int Token!9902) Unit!50968)

(assert (=> b!3232203 (= lt!1096621 (forallContained!1229 tokens!494 lambda!118285 (h!41793 tokens!494)))))

(declare-fun b!3232204 () Bool)

(declare-fun res!1315968 () Bool)

(declare-fun e!2015650 () Bool)

(assert (=> b!3232204 (=> (not res!1315968) (not e!2015650))))

(declare-fun sepAndNonSepRulesDisjointChars!1462 (List!36496 List!36496) Bool)

(assert (=> b!3232204 (= res!1315968 (sepAndNonSepRulesDisjointChars!1462 rules!2135 rules!2135))))

(assert (=> b!3232205 (= e!2015644 (and tp!1018639 tp!1018646))))

(declare-fun b!3232206 () Bool)

(declare-fun res!1315977 () Bool)

(assert (=> b!3232206 (=> (not res!1315977) (not e!2015650))))

(declare-fun forall!7482 (List!36497 Int) Bool)

(assert (=> b!3232206 (= res!1315977 (forall!7482 tokens!494 lambda!118285))))

(declare-fun b!3232207 () Bool)

(declare-fun res!1315975 () Bool)

(assert (=> b!3232207 (=> res!1315975 e!2015641)))

(declare-fun separatorToken!241 () Token!9902)

(declare-datatypes ((LexerInterface!4857 0))(
  ( (LexerInterfaceExt!4854 (__x!23214 Int)) (Lexer!4855) )
))
(declare-fun thiss!18206 () LexerInterface!4857)

(declare-datatypes ((IArray!21829 0))(
  ( (IArray!21830 (innerList!10972 List!36497)) )
))
(declare-datatypes ((Conc!10912 0))(
  ( (Node!10912 (left!28324 Conc!10912) (right!28654 Conc!10912) (csize!22054 Int) (cheight!11123 Int)) (Leaf!17157 (xs!14034 IArray!21829) (csize!22055 Int)) (Empty!10912) )
))
(declare-datatypes ((BalanceConc!21438 0))(
  ( (BalanceConc!21439 (c!543258 Conc!10912)) )
))
(declare-fun lt!1096624 () BalanceConc!21438)

(declare-fun list!12987 (BalanceConc!21436) List!36495)

(declare-fun printWithSeparatorToken!74 (LexerInterface!4857 BalanceConc!21438 Token!9902) BalanceConc!21436)

(declare-fun ++!8764 (List!36495 List!36495) List!36495)

(declare-fun charsOf!3284 (Token!9902) BalanceConc!21436)

(assert (=> b!3232207 (= res!1315975 (not (= (list!12987 (printWithSeparatorToken!74 thiss!18206 lt!1096624 separatorToken!241)) (++!8764 lt!1096627 (list!12987 (charsOf!3284 separatorToken!241))))))))

(declare-fun b!3232209 () Bool)

(declare-fun res!1315965 () Bool)

(assert (=> b!3232209 (=> (not res!1315965) (not e!2015650))))

(declare-fun rulesProduceIndividualToken!2349 (LexerInterface!4857 List!36496 Token!9902) Bool)

(assert (=> b!3232209 (= res!1315965 (rulesProduceIndividualToken!2349 thiss!18206 rules!2135 separatorToken!241))))

(declare-fun e!2015642 () Bool)

(assert (=> b!3232210 (= e!2015642 (and tp!1018640 tp!1018645))))

(declare-fun b!3232211 () Bool)

(declare-fun res!1315967 () Bool)

(assert (=> b!3232211 (=> res!1315967 e!2015654)))

(assert (=> b!3232211 (= res!1315967 (not (rulesProduceIndividualToken!2349 thiss!18206 rules!2135 (h!41793 tokens!494))))))

(declare-fun tp!1018642 () Bool)

(declare-fun b!3232212 () Bool)

(declare-fun e!2015640 () Bool)

(assert (=> b!3232212 (= e!2015640 (and tp!1018642 (inv!49267 (tag!5800 (rule!7726 separatorToken!241))) (inv!49270 (transformation!5268 (rule!7726 separatorToken!241))) e!2015642))))

(declare-fun b!3232213 () Bool)

(declare-fun e!2015633 () Bool)

(assert (=> b!3232213 (= e!2015650 (not e!2015633))))

(declare-fun res!1315972 () Bool)

(assert (=> b!3232213 (=> res!1315972 e!2015633)))

(declare-fun lt!1096620 () List!36495)

(declare-fun lt!1096630 () List!36495)

(assert (=> b!3232213 (= res!1315972 (not (= lt!1096620 lt!1096630)))))

(declare-fun printList!1407 (LexerInterface!4857 List!36497) List!36495)

(assert (=> b!3232213 (= lt!1096630 (printList!1407 thiss!18206 (Cons!36373 (h!41793 tokens!494) Nil!36373)))))

(declare-fun lt!1096626 () BalanceConc!21436)

(assert (=> b!3232213 (= lt!1096620 (list!12987 lt!1096626))))

(declare-fun lt!1096629 () BalanceConc!21438)

(declare-fun printTailRec!1354 (LexerInterface!4857 BalanceConc!21438 Int BalanceConc!21436) BalanceConc!21436)

(assert (=> b!3232213 (= lt!1096626 (printTailRec!1354 thiss!18206 lt!1096629 0 (BalanceConc!21437 Empty!10911)))))

(declare-fun print!1922 (LexerInterface!4857 BalanceConc!21438) BalanceConc!21436)

(assert (=> b!3232213 (= lt!1096626 (print!1922 thiss!18206 lt!1096629))))

(declare-fun singletonSeq!2364 (Token!9902) BalanceConc!21438)

(assert (=> b!3232213 (= lt!1096629 (singletonSeq!2364 (h!41793 tokens!494)))))

(declare-fun b!3232214 () Bool)

(declare-fun res!1315973 () Bool)

(declare-fun e!2015649 () Bool)

(assert (=> b!3232214 (=> (not res!1315973) (not e!2015649))))

(declare-fun rulesInvariant!4254 (LexerInterface!4857 List!36496) Bool)

(assert (=> b!3232214 (= res!1315973 (rulesInvariant!4254 thiss!18206 rules!2135))))

(declare-fun e!2015645 () Bool)

(declare-fun e!2015652 () Bool)

(declare-fun tp!1018641 () Bool)

(declare-fun b!3232215 () Bool)

(declare-fun inv!49271 (Token!9902) Bool)

(assert (=> b!3232215 (= e!2015652 (and (inv!49271 (h!41793 tokens!494)) e!2015645 tp!1018641))))

(declare-fun b!3232216 () Bool)

(declare-fun res!1315971 () Bool)

(assert (=> b!3232216 (=> (not res!1315971) (not e!2015649))))

(declare-fun isEmpty!20463 (List!36496) Bool)

(assert (=> b!3232216 (= res!1315971 (not (isEmpty!20463 rules!2135)))))

(declare-fun b!3232217 () Bool)

(declare-fun res!1315963 () Bool)

(assert (=> b!3232217 (=> res!1315963 e!2015654)))

(declare-fun isEmpty!20464 (BalanceConc!21438) Bool)

(declare-datatypes ((tuple2!35804 0))(
  ( (tuple2!35805 (_1!21036 BalanceConc!21438) (_2!21036 BalanceConc!21436)) )
))
(declare-fun lex!2185 (LexerInterface!4857 List!36496 BalanceConc!21436) tuple2!35804)

(declare-fun seqFromList!3599 (List!36495) BalanceConc!21436)

(assert (=> b!3232217 (= res!1315963 (isEmpty!20464 (_1!21036 (lex!2185 thiss!18206 rules!2135 (seqFromList!3599 lt!1096627)))))))

(declare-fun b!3232218 () Bool)

(declare-fun res!1315964 () Bool)

(assert (=> b!3232218 (=> (not res!1315964) (not e!2015650))))

(get-info :version)

(assert (=> b!3232218 (= res!1315964 (and (not ((_ is Nil!36373) tokens!494)) ((_ is Nil!36373) (t!241858 tokens!494))))))

(declare-fun e!2015637 () Bool)

(assert (=> b!3232208 (= e!2015637 (and tp!1018635 tp!1018643))))

(declare-fun res!1315966 () Bool)

(assert (=> start!303902 (=> (not res!1315966) (not e!2015649))))

(assert (=> start!303902 (= res!1315966 ((_ is Lexer!4855) thiss!18206))))

(assert (=> start!303902 e!2015649))

(assert (=> start!303902 true))

(declare-fun e!2015643 () Bool)

(assert (=> start!303902 e!2015643))

(declare-fun e!2015638 () Bool)

(assert (=> start!303902 (and (inv!49271 separatorToken!241) e!2015638)))

(assert (=> start!303902 e!2015652))

(declare-fun b!3232219 () Bool)

(declare-fun e!2015639 () Bool)

(declare-fun tp!1018634 () Bool)

(declare-fun inv!21 (TokenValue!5498) Bool)

(assert (=> b!3232219 (= e!2015645 (and (inv!21 (value!170598 (h!41793 tokens!494))) e!2015639 tp!1018634))))

(declare-fun tp!1018637 () Bool)

(declare-fun b!3232220 () Bool)

(assert (=> b!3232220 (= e!2015639 (and tp!1018637 (inv!49267 (tag!5800 (rule!7726 (h!41793 tokens!494)))) (inv!49270 (transformation!5268 (rule!7726 (h!41793 tokens!494)))) e!2015637))))

(declare-fun b!3232221 () Bool)

(assert (=> b!3232221 (= e!2015641 true)))

(assert (=> b!3232221 e!2015634))

(declare-fun res!1315974 () Bool)

(assert (=> b!3232221 (=> (not res!1315974) (not e!2015634))))

(declare-fun isDefined!5596 (Option!7220) Bool)

(assert (=> b!3232221 (= res!1315974 (isDefined!5596 lt!1096623))))

(declare-fun getRuleFromTag!959 (LexerInterface!4857 List!36496 String!40824) Option!7220)

(assert (=> b!3232221 (= lt!1096623 (getRuleFromTag!959 thiss!18206 rules!2135 (tag!5800 (rule!7726 (h!41793 tokens!494)))))))

(declare-fun lt!1096625 () Unit!50968)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!959 (LexerInterface!4857 List!36496 List!36495 Token!9902) Unit!50968)

(assert (=> b!3232221 (= lt!1096625 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!959 thiss!18206 rules!2135 lt!1096627 (h!41793 tokens!494)))))

(declare-fun lt!1096622 () Unit!50968)

(declare-fun lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!882 (LexerInterface!4857 List!36496 List!36497 Token!9902) Unit!50968)

(assert (=> b!3232221 (= lt!1096622 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!882 thiss!18206 rules!2135 tokens!494 (h!41793 tokens!494)))))

(declare-fun isEmpty!20465 (List!36495) Bool)

(declare-fun getSuffix!1392 (List!36495 List!36495) List!36495)

(assert (=> b!3232221 (isEmpty!20465 (getSuffix!1392 lt!1096627 lt!1096627))))

(declare-fun lt!1096619 () Unit!50968)

(declare-fun lemmaGetSuffixOnListWithItSelfIsEmpty!56 (List!36495) Unit!50968)

(assert (=> b!3232221 (= lt!1096619 (lemmaGetSuffixOnListWithItSelfIsEmpty!56 lt!1096627))))

(declare-fun b!3232222 () Bool)

(assert (=> b!3232222 (= e!2015633 e!2015654)))

(declare-fun res!1315961 () Bool)

(assert (=> b!3232222 (=> res!1315961 e!2015654)))

(assert (=> b!3232222 (= res!1315961 (or (not (= lt!1096630 lt!1096627)) (not (= lt!1096620 lt!1096627))))))

(assert (=> b!3232222 (= lt!1096627 (list!12987 (charsOf!3284 (h!41793 tokens!494))))))

(declare-fun b!3232223 () Bool)

(assert (=> b!3232223 (= e!2015649 e!2015650)))

(declare-fun res!1315976 () Bool)

(assert (=> b!3232223 (=> (not res!1315976) (not e!2015650))))

(declare-fun rulesProduceEachTokenIndividually!1308 (LexerInterface!4857 List!36496 BalanceConc!21438) Bool)

(assert (=> b!3232223 (= res!1315976 (rulesProduceEachTokenIndividually!1308 thiss!18206 rules!2135 lt!1096624))))

(declare-fun seqFromList!3600 (List!36497) BalanceConc!21438)

(assert (=> b!3232223 (= lt!1096624 (seqFromList!3600 tokens!494))))

(declare-fun b!3232224 () Bool)

(declare-fun res!1315970 () Bool)

(assert (=> b!3232224 (=> (not res!1315970) (not e!2015650))))

(assert (=> b!3232224 (= res!1315970 (isSeparator!5268 (rule!7726 separatorToken!241)))))

(declare-fun b!3232225 () Bool)

(declare-fun tp!1018638 () Bool)

(assert (=> b!3232225 (= e!2015638 (and (inv!21 (value!170598 separatorToken!241)) e!2015640 tp!1018638))))

(declare-fun b!3232226 () Bool)

(declare-fun tp!1018644 () Bool)

(assert (=> b!3232226 (= e!2015643 (and e!2015647 tp!1018644))))

(assert (= (and start!303902 res!1315966) b!3232216))

(assert (= (and b!3232216 res!1315971) b!3232214))

(assert (= (and b!3232214 res!1315973) b!3232223))

(assert (= (and b!3232223 res!1315976) b!3232209))

(assert (= (and b!3232209 res!1315965) b!3232224))

(assert (= (and b!3232224 res!1315970) b!3232206))

(assert (= (and b!3232206 res!1315977) b!3232204))

(assert (= (and b!3232204 res!1315968) b!3232218))

(assert (= (and b!3232218 res!1315964) b!3232213))

(assert (= (and b!3232213 (not res!1315972)) b!3232222))

(assert (= (and b!3232222 (not res!1315961)) b!3232211))

(assert (= (and b!3232211 (not res!1315967)) b!3232217))

(assert (= (and b!3232217 (not res!1315963)) b!3232203))

(assert (= (and b!3232203 (not res!1315969)) b!3232207))

(assert (= (and b!3232207 (not res!1315975)) b!3232221))

(assert (= (and b!3232221 res!1315974) b!3232202))

(assert (= (and b!3232202 res!1315962) b!3232201))

(assert (= b!3232200 b!3232205))

(assert (= b!3232226 b!3232200))

(assert (= (and start!303902 ((_ is Cons!36372) rules!2135)) b!3232226))

(assert (= b!3232212 b!3232210))

(assert (= b!3232225 b!3232212))

(assert (= start!303902 b!3232225))

(assert (= b!3232220 b!3232208))

(assert (= b!3232219 b!3232220))

(assert (= b!3232215 b!3232219))

(assert (= (and start!303902 ((_ is Cons!36373) tokens!494)) b!3232215))

(declare-fun m!3513809 () Bool)

(assert (=> b!3232221 m!3513809))

(declare-fun m!3513811 () Bool)

(assert (=> b!3232221 m!3513811))

(declare-fun m!3513813 () Bool)

(assert (=> b!3232221 m!3513813))

(declare-fun m!3513815 () Bool)

(assert (=> b!3232221 m!3513815))

(declare-fun m!3513817 () Bool)

(assert (=> b!3232221 m!3513817))

(declare-fun m!3513819 () Bool)

(assert (=> b!3232221 m!3513819))

(declare-fun m!3513821 () Bool)

(assert (=> b!3232221 m!3513821))

(assert (=> b!3232221 m!3513813))

(declare-fun m!3513823 () Bool)

(assert (=> b!3232222 m!3513823))

(assert (=> b!3232222 m!3513823))

(declare-fun m!3513825 () Bool)

(assert (=> b!3232222 m!3513825))

(declare-fun m!3513827 () Bool)

(assert (=> b!3232211 m!3513827))

(declare-fun m!3513829 () Bool)

(assert (=> b!3232225 m!3513829))

(declare-fun m!3513831 () Bool)

(assert (=> b!3232202 m!3513831))

(declare-fun m!3513833 () Bool)

(assert (=> b!3232202 m!3513833))

(declare-fun m!3513835 () Bool)

(assert (=> b!3232215 m!3513835))

(declare-fun m!3513837 () Bool)

(assert (=> b!3232213 m!3513837))

(declare-fun m!3513839 () Bool)

(assert (=> b!3232213 m!3513839))

(declare-fun m!3513841 () Bool)

(assert (=> b!3232213 m!3513841))

(declare-fun m!3513843 () Bool)

(assert (=> b!3232213 m!3513843))

(declare-fun m!3513845 () Bool)

(assert (=> b!3232213 m!3513845))

(declare-fun m!3513847 () Bool)

(assert (=> b!3232214 m!3513847))

(declare-fun m!3513849 () Bool)

(assert (=> b!3232216 m!3513849))

(declare-fun m!3513851 () Bool)

(assert (=> b!3232217 m!3513851))

(assert (=> b!3232217 m!3513851))

(declare-fun m!3513853 () Bool)

(assert (=> b!3232217 m!3513853))

(declare-fun m!3513855 () Bool)

(assert (=> b!3232217 m!3513855))

(declare-fun m!3513857 () Bool)

(assert (=> b!3232200 m!3513857))

(declare-fun m!3513859 () Bool)

(assert (=> b!3232200 m!3513859))

(declare-fun m!3513861 () Bool)

(assert (=> b!3232204 m!3513861))

(declare-fun m!3513863 () Bool)

(assert (=> start!303902 m!3513863))

(declare-fun m!3513865 () Bool)

(assert (=> b!3232220 m!3513865))

(declare-fun m!3513867 () Bool)

(assert (=> b!3232220 m!3513867))

(declare-fun m!3513869 () Bool)

(assert (=> b!3232212 m!3513869))

(declare-fun m!3513871 () Bool)

(assert (=> b!3232212 m!3513871))

(declare-fun m!3513873 () Bool)

(assert (=> b!3232209 m!3513873))

(declare-fun m!3513875 () Bool)

(assert (=> b!3232207 m!3513875))

(declare-fun m!3513877 () Bool)

(assert (=> b!3232207 m!3513877))

(declare-fun m!3513879 () Bool)

(assert (=> b!3232207 m!3513879))

(assert (=> b!3232207 m!3513877))

(declare-fun m!3513881 () Bool)

(assert (=> b!3232207 m!3513881))

(declare-fun m!3513883 () Bool)

(assert (=> b!3232207 m!3513883))

(assert (=> b!3232207 m!3513875))

(assert (=> b!3232207 m!3513881))

(declare-fun m!3513885 () Bool)

(assert (=> b!3232203 m!3513885))

(declare-fun m!3513887 () Bool)

(assert (=> b!3232219 m!3513887))

(declare-fun m!3513889 () Bool)

(assert (=> b!3232206 m!3513889))

(declare-fun m!3513891 () Bool)

(assert (=> b!3232223 m!3513891))

(declare-fun m!3513893 () Bool)

(assert (=> b!3232223 m!3513893))

(check-sat (not b!3232200) (not b!3232202) (not b!3232216) (not b!3232209) (not b!3232206) (not b!3232225) (not start!303902) (not b!3232211) b_and!216583 (not b_next!86913) (not b!3232217) (not b!3232214) (not b!3232220) b_and!216585 (not b!3232207) (not b!3232221) (not b!3232222) (not b_next!86905) (not b!3232203) (not b!3232223) b_and!216593 (not b_next!86915) b_and!216589 (not b_next!86909) (not b_next!86907) (not b!3232204) b_and!216587 (not b!3232219) b_and!216591 (not b!3232213) (not b!3232226) (not b!3232212) (not b_next!86911) (not b!3232215))
(check-sat b_and!216585 (not b_next!86905) b_and!216583 (not b_next!86913) (not b_next!86907) b_and!216587 b_and!216591 (not b_next!86911) b_and!216593 (not b_next!86915) b_and!216589 (not b_next!86909))
