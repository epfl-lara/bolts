; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!403122 () Bool)

(assert start!403122)

(declare-fun b!4217556 () Bool)

(declare-fun b_free!123755 () Bool)

(declare-fun b_next!124459 () Bool)

(assert (=> b!4217556 (= b_free!123755 (not b_next!124459))))

(declare-fun tp!1290206 () Bool)

(declare-fun b_and!332381 () Bool)

(assert (=> b!4217556 (= tp!1290206 b_and!332381)))

(declare-fun b_free!123757 () Bool)

(declare-fun b_next!124461 () Bool)

(assert (=> b!4217556 (= b_free!123757 (not b_next!124461))))

(declare-fun tp!1290202 () Bool)

(declare-fun b_and!332383 () Bool)

(assert (=> b!4217556 (= tp!1290202 b_and!332383)))

(declare-fun b!4217562 () Bool)

(declare-fun b_free!123759 () Bool)

(declare-fun b_next!124463 () Bool)

(assert (=> b!4217562 (= b_free!123759 (not b_next!124463))))

(declare-fun tp!1290199 () Bool)

(declare-fun b_and!332385 () Bool)

(assert (=> b!4217562 (= tp!1290199 b_and!332385)))

(declare-fun b_free!123761 () Bool)

(declare-fun b_next!124465 () Bool)

(assert (=> b!4217562 (= b_free!123761 (not b_next!124465))))

(declare-fun tp!1290189 () Bool)

(declare-fun b_and!332387 () Bool)

(assert (=> b!4217562 (= tp!1290189 b_and!332387)))

(declare-fun b!4217561 () Bool)

(declare-fun b_free!123763 () Bool)

(declare-fun b_next!124467 () Bool)

(assert (=> b!4217561 (= b_free!123763 (not b_next!124467))))

(declare-fun tp!1290197 () Bool)

(declare-fun b_and!332389 () Bool)

(assert (=> b!4217561 (= tp!1290197 b_and!332389)))

(declare-fun b_free!123765 () Bool)

(declare-fun b_next!124469 () Bool)

(assert (=> b!4217561 (= b_free!123765 (not b_next!124469))))

(declare-fun tp!1290203 () Bool)

(declare-fun b_and!332391 () Bool)

(assert (=> b!4217561 (= tp!1290203 b_and!332391)))

(declare-fun b!4217571 () Bool)

(declare-fun b_free!123767 () Bool)

(declare-fun b_next!124471 () Bool)

(assert (=> b!4217571 (= b_free!123767 (not b_next!124471))))

(declare-fun tp!1290192 () Bool)

(declare-fun b_and!332393 () Bool)

(assert (=> b!4217571 (= tp!1290192 b_and!332393)))

(declare-fun b_free!123769 () Bool)

(declare-fun b_next!124473 () Bool)

(assert (=> b!4217571 (= b_free!123769 (not b_next!124473))))

(declare-fun tp!1290200 () Bool)

(declare-fun b_and!332395 () Bool)

(assert (=> b!4217571 (= tp!1290200 b_and!332395)))

(declare-fun b!4217546 () Bool)

(declare-fun res!1733358 () Bool)

(declare-fun e!2618361 () Bool)

(assert (=> b!4217546 (=> (not res!1733358) (not e!2618361))))

(declare-datatypes ((LexerInterface!7371 0))(
  ( (LexerInterfaceExt!7368 (__x!28235 Int)) (Lexer!7369) )
))
(declare-fun thiss!26544 () LexerInterface!7371)

(declare-datatypes ((List!46519 0))(
  ( (Nil!46395) (Cons!46395 (h!51815 (_ BitVec 16)) (t!348538 List!46519)) )
))
(declare-datatypes ((TokenValue!8006 0))(
  ( (FloatLiteralValue!16012 (text!56487 List!46519)) (TokenValueExt!8005 (__x!28236 Int)) (Broken!40030 (value!242119 List!46519)) (Object!8129) (End!8006) (Def!8006) (Underscore!8006) (Match!8006) (Else!8006) (Error!8006) (Case!8006) (If!8006) (Extends!8006) (Abstract!8006) (Class!8006) (Val!8006) (DelimiterValue!16012 (del!8066 List!46519)) (KeywordValue!8012 (value!242120 List!46519)) (CommentValue!16012 (value!242121 List!46519)) (WhitespaceValue!16012 (value!242122 List!46519)) (IndentationValue!8006 (value!242123 List!46519)) (String!53899) (Int32!8006) (Broken!40031 (value!242124 List!46519)) (Boolean!8007) (Unit!65542) (OperatorValue!8009 (op!8066 List!46519)) (IdentifierValue!16012 (value!242125 List!46519)) (IdentifierValue!16013 (value!242126 List!46519)) (WhitespaceValue!16013 (value!242127 List!46519)) (True!16012) (False!16012) (Broken!40032 (value!242128 List!46519)) (Broken!40033 (value!242129 List!46519)) (True!16013) (RightBrace!8006) (RightBracket!8006) (Colon!8006) (Null!8006) (Comma!8006) (LeftBracket!8006) (False!16013) (LeftBrace!8006) (ImaginaryLiteralValue!8006 (text!56488 List!46519)) (StringLiteralValue!24018 (value!242130 List!46519)) (EOFValue!8006 (value!242131 List!46519)) (IdentValue!8006 (value!242132 List!46519)) (DelimiterValue!16013 (value!242133 List!46519)) (DedentValue!8006 (value!242134 List!46519)) (NewLineValue!8006 (value!242135 List!46519)) (IntegerValue!24018 (value!242136 (_ BitVec 32)) (text!56489 List!46519)) (IntegerValue!24019 (value!242137 Int) (text!56490 List!46519)) (Times!8006) (Or!8006) (Equal!8006) (Minus!8006) (Broken!40034 (value!242138 List!46519)) (And!8006) (Div!8006) (LessEqual!8006) (Mod!8006) (Concat!20687) (Not!8006) (Plus!8006) (SpaceValue!8006 (value!242139 List!46519)) (IntegerValue!24020 (value!242140 Int) (text!56491 List!46519)) (StringLiteralValue!24019 (text!56492 List!46519)) (FloatLiteralValue!16013 (text!56493 List!46519)) (BytesLiteralValue!8006 (value!242141 List!46519)) (CommentValue!16013 (value!242142 List!46519)) (StringLiteralValue!24020 (value!242143 List!46519)) (ErrorTokenValue!8006 (msg!8067 List!46519)) )
))
(declare-datatypes ((C!25556 0))(
  ( (C!25557 (val!14940 Int)) )
))
(declare-datatypes ((List!46520 0))(
  ( (Nil!46396) (Cons!46396 (h!51816 C!25556) (t!348539 List!46520)) )
))
(declare-datatypes ((IArray!27979 0))(
  ( (IArray!27980 (innerList!14047 List!46520)) )
))
(declare-datatypes ((Regex!12681 0))(
  ( (ElementMatch!12681 (c!717888 C!25556)) (Concat!20688 (regOne!25874 Regex!12681) (regTwo!25874 Regex!12681)) (EmptyExpr!12681) (Star!12681 (reg!13010 Regex!12681)) (EmptyLang!12681) (Union!12681 (regOne!25875 Regex!12681) (regTwo!25875 Regex!12681)) )
))
(declare-datatypes ((String!53900 0))(
  ( (String!53901 (value!242144 String)) )
))
(declare-datatypes ((Conc!13987 0))(
  ( (Node!13987 (left!34514 Conc!13987) (right!34844 Conc!13987) (csize!28204 Int) (cheight!14198 Int)) (Leaf!21619 (xs!17293 IArray!27979) (csize!28205 Int)) (Empty!13987) )
))
(declare-datatypes ((BalanceConc!27568 0))(
  ( (BalanceConc!27569 (c!717889 Conc!13987)) )
))
(declare-datatypes ((TokenValueInjection!15440 0))(
  ( (TokenValueInjection!15441 (toValue!10496 Int) (toChars!10355 Int)) )
))
(declare-datatypes ((Rule!15352 0))(
  ( (Rule!15353 (regex!7776 Regex!12681) (tag!8640 String!53900) (isSeparator!7776 Bool) (transformation!7776 TokenValueInjection!15440)) )
))
(declare-datatypes ((List!46521 0))(
  ( (Nil!46397) (Cons!46397 (h!51817 Rule!15352) (t!348540 List!46521)) )
))
(declare-fun rules!3967 () List!46521)

(declare-fun rulesInvariant!6582 (LexerInterface!7371 List!46521) Bool)

(assert (=> b!4217546 (= res!1733358 (rulesInvariant!6582 thiss!26544 rules!3967))))

(declare-fun b!4217547 () Bool)

(declare-fun res!1733367 () Bool)

(declare-fun e!2618363 () Bool)

(assert (=> b!4217547 (=> res!1733367 e!2618363)))

(declare-fun rBis!178 () Rule!15352)

(get-info :version)

(assert (=> b!4217547 (= res!1733367 (or (and ((_ is Cons!46397) rules!3967) ((_ is Nil!46397) (t!348540 rules!3967))) (not ((_ is Cons!46397) rules!3967)) (= (h!51817 rules!3967) rBis!178)))))

(declare-fun b!4217548 () Bool)

(declare-fun tp!1290194 () Bool)

(declare-fun e!2618344 () Bool)

(declare-datatypes ((Token!14254 0))(
  ( (Token!14255 (value!242145 TokenValue!8006) (rule!10906 Rule!15352) (size!34070 Int) (originalCharacters!8158 List!46520)) )
))
(declare-fun tBis!41 () Token!14254)

(declare-fun e!2618350 () Bool)

(declare-fun inv!21 (TokenValue!8006) Bool)

(assert (=> b!4217548 (= e!2618344 (and (inv!21 (value!242145 tBis!41)) e!2618350 tp!1290194))))

(declare-fun b!4217549 () Bool)

(declare-datatypes ((Unit!65543 0))(
  ( (Unit!65544) )
))
(declare-fun e!2618358 () Unit!65543)

(declare-fun Unit!65545 () Unit!65543)

(assert (=> b!4217549 (= e!2618358 Unit!65545)))

(declare-fun lt!1500906 () Unit!65543)

(declare-fun input!3517 () List!46520)

(declare-fun lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!634 (LexerInterface!7371 Rule!15352 List!46521 List!46520) Unit!65543)

(assert (=> b!4217549 (= lt!1500906 (lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!634 thiss!26544 rBis!178 (t!348540 rules!3967) input!3517))))

(assert (=> b!4217549 false))

(declare-fun b!4217550 () Bool)

(declare-fun res!1733356 () Bool)

(declare-fun e!2618352 () Bool)

(assert (=> b!4217550 (=> (not res!1733356) (not e!2618352))))

(declare-fun ruleValid!3488 (LexerInterface!7371 Rule!15352) Bool)

(assert (=> b!4217550 (= res!1733356 (ruleValid!3488 thiss!26544 rBis!178))))

(declare-fun b!4217551 () Bool)

(declare-fun Unit!65546 () Unit!65543)

(assert (=> b!4217551 (= e!2618358 Unit!65546)))

(declare-fun b!4217552 () Bool)

(assert (=> b!4217552 (= e!2618363 true)))

(declare-fun lt!1500902 () Unit!65543)

(declare-datatypes ((tuple2!44126 0))(
  ( (tuple2!44127 (_1!25197 Token!14254) (_2!25197 List!46520)) )
))
(declare-fun lt!1500899 () tuple2!44126)

(declare-fun lemmaCharactersSize!1503 (Token!14254) Unit!65543)

(assert (=> b!4217552 (= lt!1500902 (lemmaCharactersSize!1503 (_1!25197 lt!1500899)))))

(declare-fun lt!1500898 () Unit!65543)

(assert (=> b!4217552 (= lt!1500898 (lemmaCharactersSize!1503 tBis!41))))

(declare-fun lt!1500901 () Unit!65543)

(declare-fun t!8364 () Token!14254)

(assert (=> b!4217552 (= lt!1500901 (lemmaCharactersSize!1503 t!8364))))

(declare-fun pBis!121 () List!46520)

(declare-fun lt!1500907 () List!46520)

(declare-fun size!34071 (List!46520) Int)

(assert (=> b!4217552 (<= (size!34071 pBis!121) (size!34071 lt!1500907))))

(declare-fun lt!1500908 () Unit!65543)

(declare-fun suffixBis!41 () List!46520)

(declare-fun lemmaRuleReturnsPrefixSmallerEqualThanGlobalMaxPref!34 (LexerInterface!7371 List!46521 List!46520 Token!14254 List!46520 List!46520 List!46520 List!46520 Rule!15352 Token!14254) Unit!65543)

(assert (=> b!4217552 (= lt!1500908 (lemmaRuleReturnsPrefixSmallerEqualThanGlobalMaxPref!34 thiss!26544 (t!348540 rules!3967) lt!1500907 (_1!25197 lt!1500899) input!3517 (_2!25197 lt!1500899) pBis!121 suffixBis!41 rBis!178 tBis!41))))

(assert (=> b!4217552 (rulesInvariant!6582 thiss!26544 (t!348540 rules!3967))))

(declare-fun lt!1500905 () Unit!65543)

(declare-fun lemmaInvariantOnRulesThenOnTail!866 (LexerInterface!7371 Rule!15352 List!46521) Unit!65543)

(assert (=> b!4217552 (= lt!1500905 (lemmaInvariantOnRulesThenOnTail!866 thiss!26544 (h!51817 rules!3967) (t!348540 rules!3967)))))

(declare-fun isPrefix!4635 (List!46520 List!46520) Bool)

(declare-fun ++!11850 (List!46520 List!46520) List!46520)

(assert (=> b!4217552 (isPrefix!4635 lt!1500907 (++!11850 lt!1500907 (_2!25197 lt!1500899)))))

(declare-fun lt!1500910 () Unit!65543)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!3090 (List!46520 List!46520) Unit!65543)

(assert (=> b!4217552 (= lt!1500910 (lemmaConcatTwoListThenFirstIsPrefix!3090 lt!1500907 (_2!25197 lt!1500899)))))

(declare-fun list!16785 (BalanceConc!27568) List!46520)

(declare-fun charsOf!5199 (Token!14254) BalanceConc!27568)

(assert (=> b!4217552 (= lt!1500907 (list!16785 (charsOf!5199 (_1!25197 lt!1500899))))))

(declare-datatypes ((Option!9964 0))(
  ( (None!9963) (Some!9963 (v!40849 tuple2!44126)) )
))
(declare-fun lt!1500904 () Option!9964)

(declare-fun get!15098 (Option!9964) tuple2!44126)

(assert (=> b!4217552 (= lt!1500899 (get!15098 lt!1500904))))

(declare-fun lt!1500903 () Unit!65543)

(assert (=> b!4217552 (= lt!1500903 e!2618358)))

(declare-fun c!717887 () Bool)

(declare-fun isEmpty!27486 (Option!9964) Bool)

(assert (=> b!4217552 (= c!717887 (isEmpty!27486 lt!1500904))))

(declare-fun maxPrefix!4411 (LexerInterface!7371 List!46521 List!46520) Option!9964)

(assert (=> b!4217552 (= lt!1500904 (maxPrefix!4411 thiss!26544 (t!348540 rules!3967) input!3517))))

(declare-fun b!4217553 () Bool)

(declare-fun e!2618342 () Bool)

(declare-fun tp!1290198 () Bool)

(declare-fun e!2618366 () Bool)

(declare-fun inv!61039 (String!53900) Bool)

(declare-fun inv!61042 (TokenValueInjection!15440) Bool)

(assert (=> b!4217553 (= e!2618366 (and tp!1290198 (inv!61039 (tag!8640 rBis!178)) (inv!61042 (transformation!7776 rBis!178)) e!2618342))))

(declare-fun b!4217554 () Bool)

(declare-fun e!2618345 () Bool)

(declare-fun tp_is_empty!22329 () Bool)

(declare-fun tp!1290193 () Bool)

(assert (=> b!4217554 (= e!2618345 (and tp_is_empty!22329 tp!1290193))))

(declare-fun b!4217555 () Bool)

(declare-fun res!1733357 () Bool)

(assert (=> b!4217555 (=> res!1733357 e!2618363)))

(assert (=> b!4217555 (= res!1733357 (not (= (rule!10906 tBis!41) rBis!178)))))

(declare-fun e!2618354 () Bool)

(assert (=> b!4217556 (= e!2618354 (and tp!1290206 tp!1290202))))

(declare-fun tp!1290204 () Bool)

(declare-fun e!2618355 () Bool)

(declare-fun b!4217557 () Bool)

(assert (=> b!4217557 (= e!2618350 (and tp!1290204 (inv!61039 (tag!8640 (rule!10906 tBis!41))) (inv!61042 (transformation!7776 (rule!10906 tBis!41))) e!2618355))))

(declare-fun b!4217558 () Bool)

(declare-fun e!2618343 () Bool)

(declare-fun tp!1290196 () Bool)

(assert (=> b!4217558 (= e!2618343 (and tp_is_empty!22329 tp!1290196))))

(declare-fun b!4217559 () Bool)

(declare-fun res!1733364 () Bool)

(assert (=> b!4217559 (=> res!1733364 e!2618363)))

(declare-fun lt!1500909 () Option!9964)

(declare-fun maxPrefixOneRule!3366 (LexerInterface!7371 Rule!15352 List!46520) Option!9964)

(assert (=> b!4217559 (= res!1733364 (not (= (maxPrefixOneRule!3366 thiss!26544 (h!51817 rules!3967) input!3517) lt!1500909)))))

(declare-fun e!2618353 () Bool)

(declare-fun e!2618356 () Bool)

(declare-fun tp!1290191 () Bool)

(declare-fun b!4217560 () Bool)

(assert (=> b!4217560 (= e!2618356 (and (inv!21 (value!242145 t!8364)) e!2618353 tp!1290191))))

(declare-fun e!2618349 () Bool)

(assert (=> b!4217561 (= e!2618349 (and tp!1290197 tp!1290203))))

(assert (=> b!4217562 (= e!2618342 (and tp!1290199 tp!1290189))))

(declare-fun e!2618351 () Bool)

(declare-fun tp!1290205 () Bool)

(declare-fun b!4217563 () Bool)

(assert (=> b!4217563 (= e!2618351 (and tp!1290205 (inv!61039 (tag!8640 (h!51817 rules!3967))) (inv!61042 (transformation!7776 (h!51817 rules!3967))) e!2618354))))

(declare-fun tp!1290207 () Bool)

(declare-fun b!4217564 () Bool)

(assert (=> b!4217564 (= e!2618353 (and tp!1290207 (inv!61039 (tag!8640 (rule!10906 t!8364))) (inv!61042 (transformation!7776 (rule!10906 t!8364))) e!2618349))))

(declare-fun b!4217565 () Bool)

(declare-fun res!1733362 () Bool)

(assert (=> b!4217565 (=> (not res!1733362) (not e!2618361))))

(declare-fun p!3001 () List!46520)

(declare-fun suffix!1557 () List!46520)

(assert (=> b!4217565 (= res!1733362 (= (++!11850 p!3001 suffix!1557) input!3517))))

(declare-fun b!4217566 () Bool)

(declare-fun res!1733361 () Bool)

(assert (=> b!4217566 (=> (not res!1733361) (not e!2618361))))

(assert (=> b!4217566 (= res!1733361 (isPrefix!4635 pBis!121 input!3517))))

(declare-fun res!1733365 () Bool)

(assert (=> start!403122 (=> (not res!1733365) (not e!2618361))))

(assert (=> start!403122 (= res!1733365 ((_ is Lexer!7369) thiss!26544))))

(assert (=> start!403122 e!2618361))

(declare-fun inv!61043 (Token!14254) Bool)

(assert (=> start!403122 (and (inv!61043 tBis!41) e!2618344)))

(assert (=> start!403122 true))

(assert (=> start!403122 e!2618366))

(assert (=> start!403122 e!2618345))

(declare-fun e!2618362 () Bool)

(assert (=> start!403122 e!2618362))

(declare-fun e!2618360 () Bool)

(assert (=> start!403122 e!2618360))

(assert (=> start!403122 (and (inv!61043 t!8364) e!2618356)))

(declare-fun e!2618346 () Bool)

(assert (=> start!403122 e!2618346))

(assert (=> start!403122 e!2618343))

(declare-fun e!2618347 () Bool)

(assert (=> start!403122 e!2618347))

(declare-fun b!4217567 () Bool)

(declare-fun tp!1290190 () Bool)

(assert (=> b!4217567 (= e!2618347 (and tp_is_empty!22329 tp!1290190))))

(declare-fun b!4217568 () Bool)

(declare-fun res!1733360 () Bool)

(assert (=> b!4217568 (=> (not res!1733360) (not e!2618361))))

(declare-fun isEmpty!27487 (List!46521) Bool)

(assert (=> b!4217568 (= res!1733360 (not (isEmpty!27487 rules!3967)))))

(declare-fun b!4217569 () Bool)

(declare-fun res!1733359 () Bool)

(assert (=> b!4217569 (=> res!1733359 e!2618363)))

(assert (=> b!4217569 (= res!1733359 (not (= (list!16785 (charsOf!5199 tBis!41)) pBis!121)))))

(declare-fun b!4217570 () Bool)

(declare-fun tp!1290195 () Bool)

(assert (=> b!4217570 (= e!2618360 (and tp_is_empty!22329 tp!1290195))))

(assert (=> b!4217571 (= e!2618355 (and tp!1290192 tp!1290200))))

(declare-fun b!4217572 () Bool)

(declare-fun res!1733355 () Bool)

(assert (=> b!4217572 (=> res!1733355 e!2618363)))

(assert (=> b!4217572 (= res!1733355 (not (= (++!11850 pBis!121 suffixBis!41) input!3517)))))

(declare-fun b!4217573 () Bool)

(assert (=> b!4217573 (= e!2618352 (not e!2618363))))

(declare-fun res!1733369 () Bool)

(assert (=> b!4217573 (=> res!1733369 e!2618363)))

(assert (=> b!4217573 (= res!1733369 (not (= (maxPrefixOneRule!3366 thiss!26544 rBis!178 input!3517) (Some!9963 (tuple2!44127 tBis!41 suffixBis!41)))))))

(assert (=> b!4217573 (isPrefix!4635 input!3517 input!3517)))

(declare-fun lt!1500900 () Unit!65543)

(declare-fun lemmaIsPrefixRefl!3052 (List!46520 List!46520) Unit!65543)

(assert (=> b!4217573 (= lt!1500900 (lemmaIsPrefixRefl!3052 input!3517 input!3517))))

(declare-fun b!4217574 () Bool)

(assert (=> b!4217574 (= e!2618361 e!2618352)))

(declare-fun res!1733363 () Bool)

(assert (=> b!4217574 (=> (not res!1733363) (not e!2618352))))

(assert (=> b!4217574 (= res!1733363 (= (maxPrefix!4411 thiss!26544 rules!3967 input!3517) lt!1500909))))

(assert (=> b!4217574 (= lt!1500909 (Some!9963 (tuple2!44127 t!8364 suffix!1557)))))

(declare-fun b!4217575 () Bool)

(declare-fun tp!1290208 () Bool)

(assert (=> b!4217575 (= e!2618362 (and e!2618351 tp!1290208))))

(declare-fun b!4217576 () Bool)

(declare-fun tp!1290201 () Bool)

(assert (=> b!4217576 (= e!2618346 (and tp_is_empty!22329 tp!1290201))))

(declare-fun b!4217577 () Bool)

(declare-fun res!1733366 () Bool)

(assert (=> b!4217577 (=> (not res!1733366) (not e!2618361))))

(declare-fun contains!9597 (List!46521 Rule!15352) Bool)

(assert (=> b!4217577 (= res!1733366 (contains!9597 rules!3967 rBis!178))))

(declare-fun b!4217578 () Bool)

(declare-fun res!1733368 () Bool)

(assert (=> b!4217578 (=> (not res!1733368) (not e!2618361))))

(assert (=> b!4217578 (= res!1733368 (isPrefix!4635 p!3001 input!3517))))

(assert (= (and start!403122 res!1733365) b!4217565))

(assert (= (and b!4217565 res!1733362) b!4217578))

(assert (= (and b!4217578 res!1733368) b!4217566))

(assert (= (and b!4217566 res!1733361) b!4217568))

(assert (= (and b!4217568 res!1733360) b!4217546))

(assert (= (and b!4217546 res!1733358) b!4217577))

(assert (= (and b!4217577 res!1733366) b!4217574))

(assert (= (and b!4217574 res!1733363) b!4217550))

(assert (= (and b!4217550 res!1733356) b!4217573))

(assert (= (and b!4217573 (not res!1733369)) b!4217555))

(assert (= (and b!4217555 (not res!1733357)) b!4217569))

(assert (= (and b!4217569 (not res!1733359)) b!4217572))

(assert (= (and b!4217572 (not res!1733355)) b!4217547))

(assert (= (and b!4217547 (not res!1733367)) b!4217559))

(assert (= (and b!4217559 (not res!1733364)) b!4217552))

(assert (= (and b!4217552 c!717887) b!4217549))

(assert (= (and b!4217552 (not c!717887)) b!4217551))

(assert (= b!4217557 b!4217571))

(assert (= b!4217548 b!4217557))

(assert (= start!403122 b!4217548))

(assert (= b!4217553 b!4217562))

(assert (= start!403122 b!4217553))

(assert (= (and start!403122 ((_ is Cons!46396) p!3001)) b!4217554))

(assert (= b!4217563 b!4217556))

(assert (= b!4217575 b!4217563))

(assert (= (and start!403122 ((_ is Cons!46397) rules!3967)) b!4217575))

(assert (= (and start!403122 ((_ is Cons!46396) input!3517)) b!4217570))

(assert (= b!4217564 b!4217561))

(assert (= b!4217560 b!4217564))

(assert (= start!403122 b!4217560))

(assert (= (and start!403122 ((_ is Cons!46396) pBis!121)) b!4217576))

(assert (= (and start!403122 ((_ is Cons!46396) suffix!1557)) b!4217558))

(assert (= (and start!403122 ((_ is Cons!46396) suffixBis!41)) b!4217567))

(declare-fun m!4805855 () Bool)

(assert (=> b!4217560 m!4805855))

(declare-fun m!4805857 () Bool)

(assert (=> b!4217574 m!4805857))

(declare-fun m!4805859 () Bool)

(assert (=> start!403122 m!4805859))

(declare-fun m!4805861 () Bool)

(assert (=> start!403122 m!4805861))

(declare-fun m!4805863 () Bool)

(assert (=> b!4217552 m!4805863))

(declare-fun m!4805865 () Bool)

(assert (=> b!4217552 m!4805865))

(declare-fun m!4805867 () Bool)

(assert (=> b!4217552 m!4805867))

(declare-fun m!4805869 () Bool)

(assert (=> b!4217552 m!4805869))

(declare-fun m!4805871 () Bool)

(assert (=> b!4217552 m!4805871))

(declare-fun m!4805873 () Bool)

(assert (=> b!4217552 m!4805873))

(declare-fun m!4805875 () Bool)

(assert (=> b!4217552 m!4805875))

(declare-fun m!4805877 () Bool)

(assert (=> b!4217552 m!4805877))

(declare-fun m!4805879 () Bool)

(assert (=> b!4217552 m!4805879))

(assert (=> b!4217552 m!4805879))

(declare-fun m!4805881 () Bool)

(assert (=> b!4217552 m!4805881))

(declare-fun m!4805883 () Bool)

(assert (=> b!4217552 m!4805883))

(declare-fun m!4805885 () Bool)

(assert (=> b!4217552 m!4805885))

(declare-fun m!4805887 () Bool)

(assert (=> b!4217552 m!4805887))

(assert (=> b!4217552 m!4805883))

(declare-fun m!4805889 () Bool)

(assert (=> b!4217552 m!4805889))

(declare-fun m!4805891 () Bool)

(assert (=> b!4217552 m!4805891))

(declare-fun m!4805893 () Bool)

(assert (=> b!4217552 m!4805893))

(declare-fun m!4805895 () Bool)

(assert (=> b!4217565 m!4805895))

(declare-fun m!4805897 () Bool)

(assert (=> b!4217549 m!4805897))

(declare-fun m!4805899 () Bool)

(assert (=> b!4217566 m!4805899))

(declare-fun m!4805901 () Bool)

(assert (=> b!4217568 m!4805901))

(declare-fun m!4805903 () Bool)

(assert (=> b!4217559 m!4805903))

(declare-fun m!4805905 () Bool)

(assert (=> b!4217577 m!4805905))

(declare-fun m!4805907 () Bool)

(assert (=> b!4217548 m!4805907))

(declare-fun m!4805909 () Bool)

(assert (=> b!4217573 m!4805909))

(declare-fun m!4805911 () Bool)

(assert (=> b!4217573 m!4805911))

(declare-fun m!4805913 () Bool)

(assert (=> b!4217573 m!4805913))

(declare-fun m!4805915 () Bool)

(assert (=> b!4217557 m!4805915))

(declare-fun m!4805917 () Bool)

(assert (=> b!4217557 m!4805917))

(declare-fun m!4805919 () Bool)

(assert (=> b!4217546 m!4805919))

(declare-fun m!4805921 () Bool)

(assert (=> b!4217563 m!4805921))

(declare-fun m!4805923 () Bool)

(assert (=> b!4217563 m!4805923))

(declare-fun m!4805925 () Bool)

(assert (=> b!4217550 m!4805925))

(declare-fun m!4805927 () Bool)

(assert (=> b!4217553 m!4805927))

(declare-fun m!4805929 () Bool)

(assert (=> b!4217553 m!4805929))

(declare-fun m!4805931 () Bool)

(assert (=> b!4217578 m!4805931))

(declare-fun m!4805933 () Bool)

(assert (=> b!4217569 m!4805933))

(assert (=> b!4217569 m!4805933))

(declare-fun m!4805935 () Bool)

(assert (=> b!4217569 m!4805935))

(declare-fun m!4805937 () Bool)

(assert (=> b!4217564 m!4805937))

(declare-fun m!4805939 () Bool)

(assert (=> b!4217564 m!4805939))

(declare-fun m!4805941 () Bool)

(assert (=> b!4217572 m!4805941))

(check-sat (not b!4217558) b_and!332385 (not b!4217560) (not b!4217563) (not b_next!124467) (not b!4217568) (not b_next!124473) b_and!332387 b_and!332383 (not b!4217578) (not b_next!124469) tp_is_empty!22329 (not b!4217574) (not b!4217559) (not b!4217564) (not b!4217567) (not b!4217546) (not b!4217575) (not b_next!124459) (not b_next!124461) (not b!4217549) (not b!4217557) (not b!4217570) (not b!4217550) (not b!4217553) (not b!4217548) (not b!4217572) (not start!403122) b_and!332391 (not b_next!124471) b_and!332395 b_and!332381 (not b!4217552) (not b_next!124463) (not b!4217569) (not b!4217565) (not b!4217577) (not b!4217566) (not b!4217573) (not b!4217576) b_and!332393 b_and!332389 (not b!4217554) (not b_next!124465))
(check-sat b_and!332385 (not b_next!124467) (not b_next!124473) b_and!332387 b_and!332383 (not b_next!124469) (not b_next!124463) (not b_next!124465) (not b_next!124459) (not b_next!124461) b_and!332391 (not b_next!124471) b_and!332395 b_and!332381 b_and!332393 b_and!332389)
