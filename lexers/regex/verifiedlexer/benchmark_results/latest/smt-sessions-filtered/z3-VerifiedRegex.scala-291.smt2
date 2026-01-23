; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!6714 () Bool)

(assert start!6714)

(declare-fun b!79782 () Bool)

(declare-fun b_free!2585 () Bool)

(declare-fun b_next!2585 () Bool)

(assert (=> b!79782 (= b_free!2585 (not b_next!2585))))

(declare-fun tp!50425 () Bool)

(declare-fun b_and!3687 () Bool)

(assert (=> b!79782 (= tp!50425 b_and!3687)))

(declare-fun b_free!2587 () Bool)

(declare-fun b_next!2587 () Bool)

(assert (=> b!79782 (= b_free!2587 (not b_next!2587))))

(declare-fun tp!50428 () Bool)

(declare-fun b_and!3689 () Bool)

(assert (=> b!79782 (= tp!50428 b_and!3689)))

(declare-fun b!79775 () Bool)

(declare-fun e!44750 () Bool)

(declare-fun tp_is_empty!685 () Bool)

(declare-fun tp!50424 () Bool)

(assert (=> b!79775 (= e!44750 (and tp_is_empty!685 tp!50424))))

(declare-fun e!44752 () Bool)

(declare-datatypes ((C!1684 0))(
  ( (C!1685 (val!449 Int)) )
))
(declare-datatypes ((List!1436 0))(
  ( (Nil!1430) (Cons!1430 (h!6827 C!1684) (t!20315 List!1436)) )
))
(declare-datatypes ((IArray!857 0))(
  ( (IArray!858 (innerList!486 List!1436)) )
))
(declare-datatypes ((Conc!428 0))(
  ( (Node!428 (left!1085 Conc!428) (right!1415 Conc!428) (csize!1086 Int) (cheight!639 Int)) (Leaf!720 (xs!3007 IArray!857) (csize!1087 Int)) (Empty!428) )
))
(declare-datatypes ((BalanceConc!860 0))(
  ( (BalanceConc!861 (c!20256 Conc!428)) )
))
(declare-datatypes ((Regex!381 0))(
  ( (ElementMatch!381 (c!20257 C!1684)) (Concat!684 (regOne!1274 Regex!381) (regTwo!1274 Regex!381)) (EmptyExpr!381) (Star!381 (reg!710 Regex!381)) (EmptyLang!381) (Union!381 (regOne!1275 Regex!381) (regTwo!1275 Regex!381)) )
))
(declare-datatypes ((String!1906 0))(
  ( (String!1907 (value!11790 String)) )
))
(declare-datatypes ((List!1437 0))(
  ( (Nil!1431) (Cons!1431 (h!6828 (_ BitVec 16)) (t!20316 List!1437)) )
))
(declare-datatypes ((TokenValue!303 0))(
  ( (FloatLiteralValue!606 (text!2566 List!1437)) (TokenValueExt!302 (__x!1701 Int)) (Broken!1515 (value!11791 List!1437)) (Object!308) (End!303) (Def!303) (Underscore!303) (Match!303) (Else!303) (Error!303) (Case!303) (If!303) (Extends!303) (Abstract!303) (Class!303) (Val!303) (DelimiterValue!606 (del!363 List!1437)) (KeywordValue!309 (value!11792 List!1437)) (CommentValue!606 (value!11793 List!1437)) (WhitespaceValue!606 (value!11794 List!1437)) (IndentationValue!303 (value!11795 List!1437)) (String!1908) (Int32!303) (Broken!1516 (value!11796 List!1437)) (Boolean!304) (Unit!883) (OperatorValue!306 (op!363 List!1437)) (IdentifierValue!606 (value!11797 List!1437)) (IdentifierValue!607 (value!11798 List!1437)) (WhitespaceValue!607 (value!11799 List!1437)) (True!606) (False!606) (Broken!1517 (value!11800 List!1437)) (Broken!1518 (value!11801 List!1437)) (True!607) (RightBrace!303) (RightBracket!303) (Colon!303) (Null!303) (Comma!303) (LeftBracket!303) (False!607) (LeftBrace!303) (ImaginaryLiteralValue!303 (text!2567 List!1437)) (StringLiteralValue!909 (value!11802 List!1437)) (EOFValue!303 (value!11803 List!1437)) (IdentValue!303 (value!11804 List!1437)) (DelimiterValue!607 (value!11805 List!1437)) (DedentValue!303 (value!11806 List!1437)) (NewLineValue!303 (value!11807 List!1437)) (IntegerValue!909 (value!11808 (_ BitVec 32)) (text!2568 List!1437)) (IntegerValue!910 (value!11809 Int) (text!2569 List!1437)) (Times!303) (Or!303) (Equal!303) (Minus!303) (Broken!1519 (value!11810 List!1437)) (And!303) (Div!303) (LessEqual!303) (Mod!303) (Concat!685) (Not!303) (Plus!303) (SpaceValue!303 (value!11811 List!1437)) (IntegerValue!911 (value!11812 Int) (text!2570 List!1437)) (StringLiteralValue!910 (text!2571 List!1437)) (FloatLiteralValue!607 (text!2572 List!1437)) (BytesLiteralValue!303 (value!11813 List!1437)) (CommentValue!607 (value!11814 List!1437)) (StringLiteralValue!911 (value!11815 List!1437)) (ErrorTokenValue!303 (msg!364 List!1437)) )
))
(declare-datatypes ((TokenValueInjection!430 0))(
  ( (TokenValueInjection!431 (toValue!828 Int) (toChars!687 Int)) )
))
(declare-datatypes ((Rule!426 0))(
  ( (Rule!427 (regex!313 Regex!381) (tag!491 String!1906) (isSeparator!313 Bool) (transformation!313 TokenValueInjection!430)) )
))
(declare-datatypes ((List!1438 0))(
  ( (Nil!1432) (Cons!1432 (h!6829 Rule!426) (t!20317 List!1438)) )
))
(declare-fun rules!2471 () List!1438)

(declare-fun tp!50427 () Bool)

(declare-fun e!44753 () Bool)

(declare-fun b!79776 () Bool)

(declare-fun inv!1779 (String!1906) Bool)

(declare-fun inv!1781 (TokenValueInjection!430) Bool)

(assert (=> b!79776 (= e!44752 (and tp!50427 (inv!1779 (tag!491 (h!6829 rules!2471))) (inv!1781 (transformation!313 (h!6829 rules!2471))) e!44753))))

(declare-fun b!79777 () Bool)

(declare-fun e!44746 () Bool)

(declare-datatypes ((Token!386 0))(
  ( (Token!387 (value!11816 TokenValue!303) (rule!794 Rule!426) (size!1235 Int) (originalCharacters!364 List!1436)) )
))
(declare-datatypes ((tuple2!1458 0))(
  ( (tuple2!1459 (_1!936 Token!386) (_2!936 List!1436)) )
))
(declare-datatypes ((Option!120 0))(
  ( (None!119) (Some!119 (v!12802 tuple2!1458)) )
))
(declare-fun lt!17535 () Option!120)

(declare-fun isDefined!30 (Option!120) Bool)

(assert (=> b!79777 (= e!44746 (isDefined!30 lt!17535))))

(declare-fun b!79778 () Bool)

(declare-fun e!44748 () Bool)

(assert (=> b!79778 (= e!44748 (not e!44746))))

(declare-fun res!41588 () Bool)

(assert (=> b!79778 (=> res!41588 e!44746)))

(declare-fun input!2238 () List!1436)

(declare-fun lt!17533 () tuple2!1458)

(declare-fun ++!144 (List!1436 List!1436) List!1436)

(declare-fun list!481 (BalanceConc!860) List!1436)

(declare-fun charsOf!50 (Token!386) BalanceConc!860)

(assert (=> b!79778 (= res!41588 (not (= input!2238 (++!144 (list!481 (charsOf!50 (_1!936 lt!17533))) (_2!936 lt!17533)))))))

(declare-datatypes ((List!1439 0))(
  ( (Nil!1433) (Cons!1433 (h!6830 Token!386) (t!20318 List!1439)) )
))
(declare-datatypes ((IArray!859 0))(
  ( (IArray!860 (innerList!487 List!1439)) )
))
(declare-datatypes ((Conc!429 0))(
  ( (Node!429 (left!1086 Conc!429) (right!1416 Conc!429) (csize!1088 Int) (cheight!640 Int)) (Leaf!721 (xs!3008 IArray!859) (csize!1089 Int)) (Empty!429) )
))
(declare-datatypes ((BalanceConc!862 0))(
  ( (BalanceConc!863 (c!20258 Conc!429)) )
))
(declare-datatypes ((tuple2!1460 0))(
  ( (tuple2!1461 (_1!937 BalanceConc!862) (_2!937 BalanceConc!860)) )
))
(declare-fun lt!17539 () tuple2!1460)

(declare-fun lt!17531 () List!1436)

(declare-fun lt!17537 () List!1439)

(declare-fun lt!17534 () List!1436)

(declare-datatypes ((tuple2!1462 0))(
  ( (tuple2!1463 (_1!938 List!1439) (_2!938 List!1436)) )
))
(declare-fun list!482 (BalanceConc!862) List!1439)

(declare-fun tail!124 (List!1439) List!1439)

(assert (=> b!79778 (= (tuple2!1463 (list!482 (_1!937 lt!17539)) lt!17531) (tuple2!1463 (tail!124 lt!17537) lt!17534))))

(declare-datatypes ((Unit!884 0))(
  ( (Unit!885) )
))
(declare-fun lt!17541 () Unit!884)

(declare-datatypes ((LexerInterface!205 0))(
  ( (LexerInterfaceExt!202 (__x!1702 Int)) (Lexer!203) )
))
(declare-fun thiss!19403 () LexerInterface!205)

(declare-fun lemmaRemovingFirstTokensCharactersPreservesLexSuffix!24 (LexerInterface!205 List!1438 List!1436 List!1439 List!1436) Unit!884)

(assert (=> b!79778 (= lt!17541 (lemmaRemovingFirstTokensCharactersPreservesLexSuffix!24 thiss!19403 rules!2471 input!2238 lt!17537 lt!17534))))

(declare-fun lt!17538 () tuple2!1460)

(assert (=> b!79778 (= lt!17534 (list!481 (_2!937 lt!17538)))))

(declare-fun lt!17532 () List!1436)

(assert (=> b!79778 (= (++!144 lt!17532 lt!17531) (_2!936 lt!17533))))

(assert (=> b!79778 (= lt!17531 (list!481 (_2!937 lt!17539)))))

(declare-fun print!44 (LexerInterface!205 BalanceConc!862) BalanceConc!860)

(assert (=> b!79778 (= lt!17532 (list!481 (print!44 thiss!19403 (_1!937 lt!17539))))))

(declare-fun lex!113 (LexerInterface!205 List!1438 BalanceConc!860) tuple2!1460)

(declare-fun seqFromList!138 (List!1436) BalanceConc!860)

(assert (=> b!79778 (= lt!17539 (lex!113 thiss!19403 rules!2471 (seqFromList!138 (_2!936 lt!17533))))))

(declare-fun lt!17536 () Unit!884)

(declare-fun theoremInvertFromString!28 (LexerInterface!205 List!1438 List!1436) Unit!884)

(assert (=> b!79778 (= lt!17536 (theoremInvertFromString!28 thiss!19403 rules!2471 (_2!936 lt!17533)))))

(declare-fun get!358 (Option!120) tuple2!1458)

(assert (=> b!79778 (= lt!17533 (get!358 lt!17535))))

(declare-fun maxPrefix!49 (LexerInterface!205 List!1438 List!1436) Option!120)

(assert (=> b!79778 (= lt!17535 (maxPrefix!49 thiss!19403 rules!2471 input!2238))))

(declare-fun prepend!71 (BalanceConc!862 Token!386) BalanceConc!862)

(declare-fun seqFromList!139 (List!1439) BalanceConc!862)

(assert (=> b!79778 (= lt!17537 (list!482 (prepend!71 (seqFromList!139 (t!20318 lt!17537)) (h!6830 lt!17537))))))

(declare-fun lt!17540 () Unit!884)

(declare-fun seqFromListBHdTlConstructive!36 (Token!386 List!1439 BalanceConc!862) Unit!884)

(assert (=> b!79778 (= lt!17540 (seqFromListBHdTlConstructive!36 (h!6830 lt!17537) (t!20318 lt!17537) (_1!937 lt!17538)))))

(declare-fun b!79779 () Bool)

(declare-fun res!41590 () Bool)

(declare-fun e!44754 () Bool)

(assert (=> b!79779 (=> (not res!41590) (not e!44754))))

(declare-fun rulesInvariant!199 (LexerInterface!205 List!1438) Bool)

(assert (=> b!79779 (= res!41590 (rulesInvariant!199 thiss!19403 rules!2471))))

(declare-fun b!79781 () Bool)

(declare-fun e!44749 () Bool)

(assert (=> b!79781 (= e!44754 e!44749)))

(declare-fun res!41589 () Bool)

(assert (=> b!79781 (=> (not res!41589) (not e!44749))))

(declare-fun isEmpty!479 (BalanceConc!860) Bool)

(assert (=> b!79781 (= res!41589 (not (isEmpty!479 (_2!937 lt!17538))))))

(assert (=> b!79781 (= lt!17538 (lex!113 thiss!19403 rules!2471 (seqFromList!138 input!2238)))))

(assert (=> b!79782 (= e!44753 (and tp!50425 tp!50428))))

(declare-fun b!79780 () Bool)

(declare-fun e!44747 () Bool)

(declare-fun tp!50426 () Bool)

(assert (=> b!79780 (= e!44747 (and e!44752 tp!50426))))

(declare-fun res!41587 () Bool)

(assert (=> start!6714 (=> (not res!41587) (not e!44754))))

(get-info :version)

(assert (=> start!6714 (= res!41587 ((_ is Lexer!203) thiss!19403))))

(assert (=> start!6714 e!44754))

(assert (=> start!6714 true))

(assert (=> start!6714 e!44747))

(assert (=> start!6714 e!44750))

(declare-fun b!79783 () Bool)

(assert (=> b!79783 (= e!44749 e!44748)))

(declare-fun res!41592 () Bool)

(assert (=> b!79783 (=> (not res!41592) (not e!44748))))

(declare-fun lt!17542 () Bool)

(assert (=> b!79783 (= res!41592 (and (or lt!17542 (not ((_ is Nil!1433) (t!20318 lt!17537)))) (not lt!17542)))))

(assert (=> b!79783 (= lt!17542 (not ((_ is Cons!1433) lt!17537)))))

(assert (=> b!79783 (= lt!17537 (list!482 (_1!937 lt!17538)))))

(declare-fun b!79784 () Bool)

(declare-fun res!41591 () Bool)

(assert (=> b!79784 (=> (not res!41591) (not e!44754))))

(declare-fun isEmpty!480 (List!1438) Bool)

(assert (=> b!79784 (= res!41591 (not (isEmpty!480 rules!2471)))))

(assert (= (and start!6714 res!41587) b!79784))

(assert (= (and b!79784 res!41591) b!79779))

(assert (= (and b!79779 res!41590) b!79781))

(assert (= (and b!79781 res!41589) b!79783))

(assert (= (and b!79783 res!41592) b!79778))

(assert (= (and b!79778 (not res!41588)) b!79777))

(assert (= b!79776 b!79782))

(assert (= b!79780 b!79776))

(assert (= (and start!6714 ((_ is Cons!1432) rules!2471)) b!79780))

(assert (= (and start!6714 ((_ is Cons!1430) input!2238)) b!79775))

(declare-fun m!54340 () Bool)

(assert (=> b!79781 m!54340))

(declare-fun m!54342 () Bool)

(assert (=> b!79781 m!54342))

(assert (=> b!79781 m!54342))

(declare-fun m!54344 () Bool)

(assert (=> b!79781 m!54344))

(declare-fun m!54346 () Bool)

(assert (=> b!79783 m!54346))

(declare-fun m!54348 () Bool)

(assert (=> b!79784 m!54348))

(declare-fun m!54350 () Bool)

(assert (=> b!79777 m!54350))

(declare-fun m!54352 () Bool)

(assert (=> b!79776 m!54352))

(declare-fun m!54354 () Bool)

(assert (=> b!79776 m!54354))

(declare-fun m!54356 () Bool)

(assert (=> b!79779 m!54356))

(declare-fun m!54358 () Bool)

(assert (=> b!79778 m!54358))

(declare-fun m!54360 () Bool)

(assert (=> b!79778 m!54360))

(declare-fun m!54362 () Bool)

(assert (=> b!79778 m!54362))

(declare-fun m!54364 () Bool)

(assert (=> b!79778 m!54364))

(declare-fun m!54366 () Bool)

(assert (=> b!79778 m!54366))

(declare-fun m!54368 () Bool)

(assert (=> b!79778 m!54368))

(declare-fun m!54370 () Bool)

(assert (=> b!79778 m!54370))

(declare-fun m!54372 () Bool)

(assert (=> b!79778 m!54372))

(declare-fun m!54374 () Bool)

(assert (=> b!79778 m!54374))

(declare-fun m!54376 () Bool)

(assert (=> b!79778 m!54376))

(assert (=> b!79778 m!54360))

(declare-fun m!54378 () Bool)

(assert (=> b!79778 m!54378))

(assert (=> b!79778 m!54362))

(declare-fun m!54380 () Bool)

(assert (=> b!79778 m!54380))

(declare-fun m!54382 () Bool)

(assert (=> b!79778 m!54382))

(declare-fun m!54384 () Bool)

(assert (=> b!79778 m!54384))

(declare-fun m!54386 () Bool)

(assert (=> b!79778 m!54386))

(declare-fun m!54388 () Bool)

(assert (=> b!79778 m!54388))

(declare-fun m!54390 () Bool)

(assert (=> b!79778 m!54390))

(declare-fun m!54392 () Bool)

(assert (=> b!79778 m!54392))

(assert (=> b!79778 m!54382))

(assert (=> b!79778 m!54384))

(assert (=> b!79778 m!54358))

(declare-fun m!54394 () Bool)

(assert (=> b!79778 m!54394))

(assert (=> b!79778 m!54372))

(declare-fun m!54396 () Bool)

(assert (=> b!79778 m!54396))

(check-sat b_and!3687 (not b_next!2585) (not b!79775) (not b_next!2587) (not b!79777) (not b!79784) (not b!79776) (not b!79780) (not b!79778) b_and!3689 (not b!79781) tp_is_empty!685 (not b!79783) (not b!79779))
(check-sat b_and!3689 b_and!3687 (not b_next!2587) (not b_next!2585))
(get-model)

(declare-fun d!14880 () Bool)

(declare-fun lt!17548 () Bool)

(declare-fun isEmpty!485 (List!1436) Bool)

(assert (=> d!14880 (= lt!17548 (isEmpty!485 (list!481 (_2!937 lt!17538))))))

(declare-fun isEmpty!486 (Conc!428) Bool)

(assert (=> d!14880 (= lt!17548 (isEmpty!486 (c!20256 (_2!937 lt!17538))))))

(assert (=> d!14880 (= (isEmpty!479 (_2!937 lt!17538)) lt!17548)))

(declare-fun bs!8288 () Bool)

(assert (= bs!8288 d!14880))

(assert (=> bs!8288 m!54368))

(assert (=> bs!8288 m!54368))

(declare-fun m!54402 () Bool)

(assert (=> bs!8288 m!54402))

(declare-fun m!54404 () Bool)

(assert (=> bs!8288 m!54404))

(assert (=> b!79781 d!14880))

(declare-fun b!79828 () Bool)

(declare-fun res!41628 () Bool)

(declare-fun e!44782 () Bool)

(assert (=> b!79828 (=> (not res!41628) (not e!44782))))

(declare-fun lt!17563 () tuple2!1460)

(declare-fun lexList!45 (LexerInterface!205 List!1438 List!1436) tuple2!1462)

(assert (=> b!79828 (= res!41628 (= (list!482 (_1!937 lt!17563)) (_1!938 (lexList!45 thiss!19403 rules!2471 (list!481 (seqFromList!138 input!2238))))))))

(declare-fun b!79829 () Bool)

(assert (=> b!79829 (= e!44782 (= (list!481 (_2!937 lt!17563)) (_2!938 (lexList!45 thiss!19403 rules!2471 (list!481 (seqFromList!138 input!2238))))))))

(declare-fun b!79830 () Bool)

(declare-fun e!44783 () Bool)

(declare-fun e!44784 () Bool)

(assert (=> b!79830 (= e!44783 e!44784)))

(declare-fun res!41629 () Bool)

(declare-fun size!1239 (BalanceConc!860) Int)

(assert (=> b!79830 (= res!41629 (< (size!1239 (_2!937 lt!17563)) (size!1239 (seqFromList!138 input!2238))))))

(assert (=> b!79830 (=> (not res!41629) (not e!44784))))

(declare-fun d!14882 () Bool)

(assert (=> d!14882 e!44782))

(declare-fun res!41630 () Bool)

(assert (=> d!14882 (=> (not res!41630) (not e!44782))))

(assert (=> d!14882 (= res!41630 e!44783)))

(declare-fun c!20267 () Bool)

(declare-fun size!1240 (BalanceConc!862) Int)

(assert (=> d!14882 (= c!20267 (> (size!1240 (_1!937 lt!17563)) 0))))

(declare-fun lexTailRecV2!42 (LexerInterface!205 List!1438 BalanceConc!860 BalanceConc!860 BalanceConc!860 BalanceConc!862) tuple2!1460)

(assert (=> d!14882 (= lt!17563 (lexTailRecV2!42 thiss!19403 rules!2471 (seqFromList!138 input!2238) (BalanceConc!861 Empty!428) (seqFromList!138 input!2238) (BalanceConc!863 Empty!429)))))

(assert (=> d!14882 (= (lex!113 thiss!19403 rules!2471 (seqFromList!138 input!2238)) lt!17563)))

(declare-fun b!79831 () Bool)

(assert (=> b!79831 (= e!44783 (= (_2!937 lt!17563) (seqFromList!138 input!2238)))))

(declare-fun b!79832 () Bool)

(declare-fun isEmpty!487 (BalanceConc!862) Bool)

(assert (=> b!79832 (= e!44784 (not (isEmpty!487 (_1!937 lt!17563))))))

(assert (= (and d!14882 c!20267) b!79830))

(assert (= (and d!14882 (not c!20267)) b!79831))

(assert (= (and b!79830 res!41629) b!79832))

(assert (= (and d!14882 res!41630) b!79828))

(assert (= (and b!79828 res!41628) b!79829))

(declare-fun m!54466 () Bool)

(assert (=> b!79829 m!54466))

(assert (=> b!79829 m!54342))

(declare-fun m!54468 () Bool)

(assert (=> b!79829 m!54468))

(assert (=> b!79829 m!54468))

(declare-fun m!54470 () Bool)

(assert (=> b!79829 m!54470))

(declare-fun m!54472 () Bool)

(assert (=> d!14882 m!54472))

(assert (=> d!14882 m!54342))

(assert (=> d!14882 m!54342))

(declare-fun m!54474 () Bool)

(assert (=> d!14882 m!54474))

(declare-fun m!54476 () Bool)

(assert (=> b!79828 m!54476))

(assert (=> b!79828 m!54342))

(assert (=> b!79828 m!54468))

(assert (=> b!79828 m!54468))

(assert (=> b!79828 m!54470))

(declare-fun m!54478 () Bool)

(assert (=> b!79832 m!54478))

(declare-fun m!54480 () Bool)

(assert (=> b!79830 m!54480))

(assert (=> b!79830 m!54342))

(declare-fun m!54482 () Bool)

(assert (=> b!79830 m!54482))

(assert (=> b!79781 d!14882))

(declare-fun d!14908 () Bool)

(declare-fun fromListB!48 (List!1436) BalanceConc!860)

(assert (=> d!14908 (= (seqFromList!138 input!2238) (fromListB!48 input!2238))))

(declare-fun bs!8294 () Bool)

(assert (= bs!8294 d!14908))

(declare-fun m!54484 () Bool)

(assert (=> bs!8294 m!54484))

(assert (=> b!79781 d!14908))

(declare-fun d!14910 () Bool)

(assert (=> d!14910 (= (inv!1779 (tag!491 (h!6829 rules!2471))) (= (mod (str.len (value!11790 (tag!491 (h!6829 rules!2471)))) 2) 0))))

(assert (=> b!79776 d!14910))

(declare-fun d!14912 () Bool)

(declare-fun res!41636 () Bool)

(declare-fun e!44790 () Bool)

(assert (=> d!14912 (=> (not res!41636) (not e!44790))))

(declare-fun semiInverseModEq!57 (Int Int) Bool)

(assert (=> d!14912 (= res!41636 (semiInverseModEq!57 (toChars!687 (transformation!313 (h!6829 rules!2471))) (toValue!828 (transformation!313 (h!6829 rules!2471)))))))

(assert (=> d!14912 (= (inv!1781 (transformation!313 (h!6829 rules!2471))) e!44790)))

(declare-fun b!79840 () Bool)

(declare-fun equivClasses!53 (Int Int) Bool)

(assert (=> b!79840 (= e!44790 (equivClasses!53 (toChars!687 (transformation!313 (h!6829 rules!2471))) (toValue!828 (transformation!313 (h!6829 rules!2471)))))))

(assert (= (and d!14912 res!41636) b!79840))

(declare-fun m!54518 () Bool)

(assert (=> d!14912 m!54518))

(declare-fun m!54520 () Bool)

(assert (=> b!79840 m!54520))

(assert (=> b!79776 d!14912))

(declare-fun d!14928 () Bool)

(declare-fun isEmpty!488 (Option!120) Bool)

(assert (=> d!14928 (= (isDefined!30 lt!17535) (not (isEmpty!488 lt!17535)))))

(declare-fun bs!8300 () Bool)

(assert (= bs!8300 d!14928))

(declare-fun m!54522 () Bool)

(assert (=> bs!8300 m!54522))

(assert (=> b!79777 d!14928))

(declare-fun d!14930 () Bool)

(declare-fun list!485 (Conc!429) List!1439)

(assert (=> d!14930 (= (list!482 (_1!937 lt!17538)) (list!485 (c!20258 (_1!937 lt!17538))))))

(declare-fun bs!8301 () Bool)

(assert (= bs!8301 d!14930))

(declare-fun m!54524 () Bool)

(assert (=> bs!8301 m!54524))

(assert (=> b!79783 d!14930))

(declare-fun d!14932 () Bool)

(declare-fun list!486 (Conc!428) List!1436)

(assert (=> d!14932 (= (list!481 (_2!937 lt!17538)) (list!486 (c!20256 (_2!937 lt!17538))))))

(declare-fun bs!8302 () Bool)

(assert (= bs!8302 d!14932))

(declare-fun m!54526 () Bool)

(assert (=> bs!8302 m!54526))

(assert (=> b!79778 d!14932))

(declare-fun b!79890 () Bool)

(declare-fun e!44809 () Option!120)

(declare-fun lt!17595 () Option!120)

(declare-fun lt!17594 () Option!120)

(assert (=> b!79890 (= e!44809 (ite (and ((_ is None!119) lt!17595) ((_ is None!119) lt!17594)) None!119 (ite ((_ is None!119) lt!17594) lt!17595 (ite ((_ is None!119) lt!17595) lt!17594 (ite (>= (size!1235 (_1!936 (v!12802 lt!17595))) (size!1235 (_1!936 (v!12802 lt!17594)))) lt!17595 lt!17594)))))))

(declare-fun call!3700 () Option!120)

(assert (=> b!79890 (= lt!17595 call!3700)))

(assert (=> b!79890 (= lt!17594 (maxPrefix!49 thiss!19403 (t!20317 rules!2471) input!2238))))

(declare-fun bm!3695 () Bool)

(declare-fun maxPrefixOneRule!19 (LexerInterface!205 Rule!426 List!1436) Option!120)

(assert (=> bm!3695 (= call!3700 (maxPrefixOneRule!19 thiss!19403 (h!6829 rules!2471) input!2238))))

(declare-fun d!14934 () Bool)

(declare-fun e!44810 () Bool)

(assert (=> d!14934 e!44810))

(declare-fun res!41675 () Bool)

(assert (=> d!14934 (=> res!41675 e!44810)))

(declare-fun lt!17596 () Option!120)

(assert (=> d!14934 (= res!41675 (isEmpty!488 lt!17596))))

(assert (=> d!14934 (= lt!17596 e!44809)))

(declare-fun c!20275 () Bool)

(assert (=> d!14934 (= c!20275 (and ((_ is Cons!1432) rules!2471) ((_ is Nil!1432) (t!20317 rules!2471))))))

(declare-fun lt!17597 () Unit!884)

(declare-fun lt!17598 () Unit!884)

(assert (=> d!14934 (= lt!17597 lt!17598)))

(declare-fun isPrefix!21 (List!1436 List!1436) Bool)

(assert (=> d!14934 (isPrefix!21 input!2238 input!2238)))

(declare-fun lemmaIsPrefixRefl!21 (List!1436 List!1436) Unit!884)

(assert (=> d!14934 (= lt!17598 (lemmaIsPrefixRefl!21 input!2238 input!2238))))

(declare-fun rulesValidInductive!44 (LexerInterface!205 List!1438) Bool)

(assert (=> d!14934 (rulesValidInductive!44 thiss!19403 rules!2471)))

(assert (=> d!14934 (= (maxPrefix!49 thiss!19403 rules!2471 input!2238) lt!17596)))

(declare-fun b!79891 () Bool)

(declare-fun e!44808 () Bool)

(declare-fun contains!213 (List!1438 Rule!426) Bool)

(assert (=> b!79891 (= e!44808 (contains!213 rules!2471 (rule!794 (_1!936 (get!358 lt!17596)))))))

(declare-fun b!79892 () Bool)

(assert (=> b!79892 (= e!44810 e!44808)))

(declare-fun res!41674 () Bool)

(assert (=> b!79892 (=> (not res!41674) (not e!44808))))

(assert (=> b!79892 (= res!41674 (isDefined!30 lt!17596))))

(declare-fun b!79893 () Bool)

(assert (=> b!79893 (= e!44809 call!3700)))

(declare-fun b!79894 () Bool)

(declare-fun res!41680 () Bool)

(assert (=> b!79894 (=> (not res!41680) (not e!44808))))

(declare-fun size!1241 (List!1436) Int)

(assert (=> b!79894 (= res!41680 (< (size!1241 (_2!936 (get!358 lt!17596))) (size!1241 input!2238)))))

(declare-fun b!79895 () Bool)

(declare-fun res!41677 () Bool)

(assert (=> b!79895 (=> (not res!41677) (not e!44808))))

(declare-fun apply!195 (TokenValueInjection!430 BalanceConc!860) TokenValue!303)

(assert (=> b!79895 (= res!41677 (= (value!11816 (_1!936 (get!358 lt!17596))) (apply!195 (transformation!313 (rule!794 (_1!936 (get!358 lt!17596)))) (seqFromList!138 (originalCharacters!364 (_1!936 (get!358 lt!17596)))))))))

(declare-fun b!79896 () Bool)

(declare-fun res!41679 () Bool)

(assert (=> b!79896 (=> (not res!41679) (not e!44808))))

(assert (=> b!79896 (= res!41679 (= (list!481 (charsOf!50 (_1!936 (get!358 lt!17596)))) (originalCharacters!364 (_1!936 (get!358 lt!17596)))))))

(declare-fun b!79897 () Bool)

(declare-fun res!41678 () Bool)

(assert (=> b!79897 (=> (not res!41678) (not e!44808))))

(assert (=> b!79897 (= res!41678 (= (++!144 (list!481 (charsOf!50 (_1!936 (get!358 lt!17596)))) (_2!936 (get!358 lt!17596))) input!2238))))

(declare-fun b!79898 () Bool)

(declare-fun res!41676 () Bool)

(assert (=> b!79898 (=> (not res!41676) (not e!44808))))

(declare-fun matchR!23 (Regex!381 List!1436) Bool)

(assert (=> b!79898 (= res!41676 (matchR!23 (regex!313 (rule!794 (_1!936 (get!358 lt!17596)))) (list!481 (charsOf!50 (_1!936 (get!358 lt!17596))))))))

(assert (= (and d!14934 c!20275) b!79893))

(assert (= (and d!14934 (not c!20275)) b!79890))

(assert (= (or b!79893 b!79890) bm!3695))

(assert (= (and d!14934 (not res!41675)) b!79892))

(assert (= (and b!79892 res!41674) b!79896))

(assert (= (and b!79896 res!41679) b!79894))

(assert (= (and b!79894 res!41680) b!79897))

(assert (= (and b!79897 res!41678) b!79895))

(assert (= (and b!79895 res!41677) b!79898))

(assert (= (and b!79898 res!41676) b!79891))

(declare-fun m!54580 () Bool)

(assert (=> b!79890 m!54580))

(declare-fun m!54582 () Bool)

(assert (=> b!79894 m!54582))

(declare-fun m!54584 () Bool)

(assert (=> b!79894 m!54584))

(declare-fun m!54586 () Bool)

(assert (=> b!79894 m!54586))

(declare-fun m!54588 () Bool)

(assert (=> b!79892 m!54588))

(assert (=> b!79896 m!54582))

(declare-fun m!54590 () Bool)

(assert (=> b!79896 m!54590))

(assert (=> b!79896 m!54590))

(declare-fun m!54592 () Bool)

(assert (=> b!79896 m!54592))

(declare-fun m!54594 () Bool)

(assert (=> bm!3695 m!54594))

(assert (=> b!79895 m!54582))

(declare-fun m!54596 () Bool)

(assert (=> b!79895 m!54596))

(assert (=> b!79895 m!54596))

(declare-fun m!54598 () Bool)

(assert (=> b!79895 m!54598))

(assert (=> b!79891 m!54582))

(declare-fun m!54600 () Bool)

(assert (=> b!79891 m!54600))

(assert (=> b!79898 m!54582))

(assert (=> b!79898 m!54590))

(assert (=> b!79898 m!54590))

(assert (=> b!79898 m!54592))

(assert (=> b!79898 m!54592))

(declare-fun m!54602 () Bool)

(assert (=> b!79898 m!54602))

(assert (=> b!79897 m!54582))

(assert (=> b!79897 m!54590))

(assert (=> b!79897 m!54590))

(assert (=> b!79897 m!54592))

(assert (=> b!79897 m!54592))

(declare-fun m!54604 () Bool)

(assert (=> b!79897 m!54604))

(declare-fun m!54606 () Bool)

(assert (=> d!14934 m!54606))

(declare-fun m!54608 () Bool)

(assert (=> d!14934 m!54608))

(declare-fun m!54610 () Bool)

(assert (=> d!14934 m!54610))

(declare-fun m!54612 () Bool)

(assert (=> d!14934 m!54612))

(assert (=> b!79778 d!14934))

(declare-fun d!14944 () Bool)

(declare-fun lt!17604 () BalanceConc!860)

(assert (=> d!14944 (= (list!481 lt!17604) (originalCharacters!364 (_1!936 lt!17533)))))

(declare-fun dynLambda!342 (Int TokenValue!303) BalanceConc!860)

(assert (=> d!14944 (= lt!17604 (dynLambda!342 (toChars!687 (transformation!313 (rule!794 (_1!936 lt!17533)))) (value!11816 (_1!936 lt!17533))))))

(assert (=> d!14944 (= (charsOf!50 (_1!936 lt!17533)) lt!17604)))

(declare-fun b_lambda!905 () Bool)

(assert (=> (not b_lambda!905) (not d!14944)))

(declare-fun tb!2455 () Bool)

(declare-fun t!20320 () Bool)

(assert (=> (and b!79782 (= (toChars!687 (transformation!313 (h!6829 rules!2471))) (toChars!687 (transformation!313 (rule!794 (_1!936 lt!17533))))) t!20320) tb!2455))

(declare-fun b!79908 () Bool)

(declare-fun e!44816 () Bool)

(declare-fun tp!50431 () Bool)

(declare-fun inv!1784 (Conc!428) Bool)

(assert (=> b!79908 (= e!44816 (and (inv!1784 (c!20256 (dynLambda!342 (toChars!687 (transformation!313 (rule!794 (_1!936 lt!17533)))) (value!11816 (_1!936 lt!17533))))) tp!50431))))

(declare-fun result!3544 () Bool)

(declare-fun inv!1785 (BalanceConc!860) Bool)

(assert (=> tb!2455 (= result!3544 (and (inv!1785 (dynLambda!342 (toChars!687 (transformation!313 (rule!794 (_1!936 lt!17533)))) (value!11816 (_1!936 lt!17533)))) e!44816))))

(assert (= tb!2455 b!79908))

(declare-fun m!54622 () Bool)

(assert (=> b!79908 m!54622))

(declare-fun m!54624 () Bool)

(assert (=> tb!2455 m!54624))

(assert (=> d!14944 t!20320))

(declare-fun b_and!3691 () Bool)

(assert (= b_and!3689 (and (=> t!20320 result!3544) b_and!3691)))

(declare-fun m!54626 () Bool)

(assert (=> d!14944 m!54626))

(declare-fun m!54628 () Bool)

(assert (=> d!14944 m!54628))

(assert (=> b!79778 d!14944))

(declare-fun d!14948 () Bool)

(assert (=> d!14948 (= (list!481 (charsOf!50 (_1!936 lt!17533))) (list!486 (c!20256 (charsOf!50 (_1!936 lt!17533)))))))

(declare-fun bs!8305 () Bool)

(assert (= bs!8305 d!14948))

(declare-fun m!54630 () Bool)

(assert (=> bs!8305 m!54630))

(assert (=> b!79778 d!14948))

(declare-fun d!14950 () Bool)

(declare-fun lt!17619 () tuple2!1460)

(assert (=> d!14950 (= (tuple2!1463 (list!482 (_1!937 lt!17619)) (list!481 (_2!937 lt!17619))) (tuple2!1463 (tail!124 lt!17537) lt!17534))))

(assert (=> d!14950 (= lt!17619 (lex!113 thiss!19403 rules!2471 (seqFromList!138 (_2!936 (get!358 (maxPrefix!49 thiss!19403 rules!2471 input!2238))))))))

(declare-fun lt!17618 () Unit!884)

(declare-fun choose!1294 (LexerInterface!205 List!1438 List!1436 List!1439 List!1436) Unit!884)

(assert (=> d!14950 (= lt!17618 (choose!1294 thiss!19403 rules!2471 input!2238 lt!17537 lt!17534))))

(assert (=> d!14950 (rulesInvariant!199 thiss!19403 rules!2471)))

(assert (=> d!14950 (= (lemmaRemovingFirstTokensCharactersPreservesLexSuffix!24 thiss!19403 rules!2471 input!2238 lt!17537 lt!17534) lt!17618)))

(declare-fun bs!8308 () Bool)

(assert (= bs!8308 d!14950))

(declare-fun m!54652 () Bool)

(assert (=> bs!8308 m!54652))

(assert (=> bs!8308 m!54652))

(declare-fun m!54654 () Bool)

(assert (=> bs!8308 m!54654))

(assert (=> bs!8308 m!54356))

(declare-fun m!54656 () Bool)

(assert (=> bs!8308 m!54656))

(assert (=> bs!8308 m!54388))

(declare-fun m!54658 () Bool)

(assert (=> bs!8308 m!54658))

(assert (=> bs!8308 m!54388))

(declare-fun m!54660 () Bool)

(assert (=> bs!8308 m!54660))

(declare-fun m!54662 () Bool)

(assert (=> bs!8308 m!54662))

(assert (=> bs!8308 m!54366))

(assert (=> b!79778 d!14950))

(declare-fun d!14958 () Bool)

(assert (=> d!14958 (= (list!482 (_1!937 lt!17538)) (list!482 (prepend!71 (seqFromList!139 (t!20318 lt!17537)) (h!6830 lt!17537))))))

(declare-fun lt!17625 () Unit!884)

(declare-fun choose!1295 (Token!386 List!1439 BalanceConc!862) Unit!884)

(assert (=> d!14958 (= lt!17625 (choose!1295 (h!6830 lt!17537) (t!20318 lt!17537) (_1!937 lt!17538)))))

(declare-fun $colon$colon!22 (List!1439 Token!386) List!1439)

(assert (=> d!14958 (= (list!482 (_1!937 lt!17538)) (list!482 (seqFromList!139 ($colon$colon!22 (t!20318 lt!17537) (h!6830 lt!17537)))))))

(assert (=> d!14958 (= (seqFromListBHdTlConstructive!36 (h!6830 lt!17537) (t!20318 lt!17537) (_1!937 lt!17538)) lt!17625)))

(declare-fun bs!8310 () Bool)

(assert (= bs!8310 d!14958))

(assert (=> bs!8310 m!54360))

(assert (=> bs!8310 m!54362))

(declare-fun m!54672 () Bool)

(assert (=> bs!8310 m!54672))

(declare-fun m!54674 () Bool)

(assert (=> bs!8310 m!54674))

(declare-fun m!54676 () Bool)

(assert (=> bs!8310 m!54676))

(declare-fun m!54678 () Bool)

(assert (=> bs!8310 m!54678))

(assert (=> bs!8310 m!54362))

(assert (=> bs!8310 m!54380))

(assert (=> bs!8310 m!54672))

(assert (=> bs!8310 m!54674))

(assert (=> bs!8310 m!54360))

(assert (=> bs!8310 m!54346))

(assert (=> b!79778 d!14958))

(declare-fun d!14960 () Bool)

(declare-fun fromListB!49 (List!1439) BalanceConc!862)

(assert (=> d!14960 (= (seqFromList!139 (t!20318 lt!17537)) (fromListB!49 (t!20318 lt!17537)))))

(declare-fun bs!8311 () Bool)

(assert (= bs!8311 d!14960))

(declare-fun m!54680 () Bool)

(assert (=> bs!8311 m!54680))

(assert (=> b!79778 d!14960))

(declare-fun d!14962 () Bool)

(assert (=> d!14962 (= (tail!124 lt!17537) (t!20318 lt!17537))))

(assert (=> b!79778 d!14962))

(declare-fun d!14964 () Bool)

(declare-fun lt!17631 () tuple2!1460)

(assert (=> d!14964 (= (++!144 (list!481 (print!44 thiss!19403 (_1!937 lt!17631))) (list!481 (_2!937 lt!17631))) (_2!936 lt!17533))))

(assert (=> d!14964 (= lt!17631 (lex!113 thiss!19403 rules!2471 (seqFromList!138 (_2!936 lt!17533))))))

(declare-fun lt!17630 () Unit!884)

(declare-fun choose!1296 (LexerInterface!205 List!1438 List!1436) Unit!884)

(assert (=> d!14964 (= lt!17630 (choose!1296 thiss!19403 rules!2471 (_2!936 lt!17533)))))

(assert (=> d!14964 (not (isEmpty!480 rules!2471))))

(assert (=> d!14964 (= (theoremInvertFromString!28 thiss!19403 rules!2471 (_2!936 lt!17533)) lt!17630)))

(declare-fun bs!8312 () Bool)

(assert (= bs!8312 d!14964))

(declare-fun m!54686 () Bool)

(assert (=> bs!8312 m!54686))

(declare-fun m!54688 () Bool)

(assert (=> bs!8312 m!54688))

(declare-fun m!54690 () Bool)

(assert (=> bs!8312 m!54690))

(declare-fun m!54692 () Bool)

(assert (=> bs!8312 m!54692))

(assert (=> bs!8312 m!54686))

(assert (=> bs!8312 m!54688))

(assert (=> bs!8312 m!54358))

(assert (=> bs!8312 m!54394))

(assert (=> bs!8312 m!54690))

(declare-fun m!54694 () Bool)

(assert (=> bs!8312 m!54694))

(assert (=> bs!8312 m!54348))

(assert (=> bs!8312 m!54358))

(assert (=> b!79778 d!14964))

(declare-fun d!14966 () Bool)

(declare-fun lt!17634 () BalanceConc!860)

(declare-fun printList!17 (LexerInterface!205 List!1439) List!1436)

(assert (=> d!14966 (= (list!481 lt!17634) (printList!17 thiss!19403 (list!482 (_1!937 lt!17539))))))

(declare-fun printTailRec!17 (LexerInterface!205 BalanceConc!862 Int BalanceConc!860) BalanceConc!860)

(assert (=> d!14966 (= lt!17634 (printTailRec!17 thiss!19403 (_1!937 lt!17539) 0 (BalanceConc!861 Empty!428)))))

(assert (=> d!14966 (= (print!44 thiss!19403 (_1!937 lt!17539)) lt!17634)))

(declare-fun bs!8313 () Bool)

(assert (= bs!8313 d!14966))

(declare-fun m!54696 () Bool)

(assert (=> bs!8313 m!54696))

(assert (=> bs!8313 m!54370))

(assert (=> bs!8313 m!54370))

(declare-fun m!54698 () Bool)

(assert (=> bs!8313 m!54698))

(declare-fun m!54700 () Bool)

(assert (=> bs!8313 m!54700))

(assert (=> b!79778 d!14966))

(declare-fun b!79942 () Bool)

(declare-fun res!41684 () Bool)

(declare-fun e!44838 () Bool)

(assert (=> b!79942 (=> (not res!41684) (not e!44838))))

(declare-fun lt!17635 () tuple2!1460)

(assert (=> b!79942 (= res!41684 (= (list!482 (_1!937 lt!17635)) (_1!938 (lexList!45 thiss!19403 rules!2471 (list!481 (seqFromList!138 (_2!936 lt!17533)))))))))

(declare-fun b!79943 () Bool)

(assert (=> b!79943 (= e!44838 (= (list!481 (_2!937 lt!17635)) (_2!938 (lexList!45 thiss!19403 rules!2471 (list!481 (seqFromList!138 (_2!936 lt!17533)))))))))

(declare-fun b!79944 () Bool)

(declare-fun e!44839 () Bool)

(declare-fun e!44840 () Bool)

(assert (=> b!79944 (= e!44839 e!44840)))

(declare-fun res!41685 () Bool)

(assert (=> b!79944 (= res!41685 (< (size!1239 (_2!937 lt!17635)) (size!1239 (seqFromList!138 (_2!936 lt!17533)))))))

(assert (=> b!79944 (=> (not res!41685) (not e!44840))))

(declare-fun d!14968 () Bool)

(assert (=> d!14968 e!44838))

(declare-fun res!41686 () Bool)

(assert (=> d!14968 (=> (not res!41686) (not e!44838))))

(assert (=> d!14968 (= res!41686 e!44839)))

(declare-fun c!20277 () Bool)

(assert (=> d!14968 (= c!20277 (> (size!1240 (_1!937 lt!17635)) 0))))

(assert (=> d!14968 (= lt!17635 (lexTailRecV2!42 thiss!19403 rules!2471 (seqFromList!138 (_2!936 lt!17533)) (BalanceConc!861 Empty!428) (seqFromList!138 (_2!936 lt!17533)) (BalanceConc!863 Empty!429)))))

(assert (=> d!14968 (= (lex!113 thiss!19403 rules!2471 (seqFromList!138 (_2!936 lt!17533))) lt!17635)))

(declare-fun b!79945 () Bool)

(assert (=> b!79945 (= e!44839 (= (_2!937 lt!17635) (seqFromList!138 (_2!936 lt!17533))))))

(declare-fun b!79946 () Bool)

(assert (=> b!79946 (= e!44840 (not (isEmpty!487 (_1!937 lt!17635))))))

(assert (= (and d!14968 c!20277) b!79944))

(assert (= (and d!14968 (not c!20277)) b!79945))

(assert (= (and b!79944 res!41685) b!79946))

(assert (= (and d!14968 res!41686) b!79942))

(assert (= (and b!79942 res!41684) b!79943))

(declare-fun m!54702 () Bool)

(assert (=> b!79943 m!54702))

(assert (=> b!79943 m!54358))

(declare-fun m!54704 () Bool)

(assert (=> b!79943 m!54704))

(assert (=> b!79943 m!54704))

(declare-fun m!54706 () Bool)

(assert (=> b!79943 m!54706))

(declare-fun m!54708 () Bool)

(assert (=> d!14968 m!54708))

(assert (=> d!14968 m!54358))

(assert (=> d!14968 m!54358))

(declare-fun m!54710 () Bool)

(assert (=> d!14968 m!54710))

(declare-fun m!54712 () Bool)

(assert (=> b!79942 m!54712))

(assert (=> b!79942 m!54358))

(assert (=> b!79942 m!54704))

(assert (=> b!79942 m!54704))

(assert (=> b!79942 m!54706))

(declare-fun m!54714 () Bool)

(assert (=> b!79946 m!54714))

(declare-fun m!54716 () Bool)

(assert (=> b!79944 m!54716))

(assert (=> b!79944 m!54358))

(declare-fun m!54718 () Bool)

(assert (=> b!79944 m!54718))

(assert (=> b!79778 d!14968))

(declare-fun b!79957 () Bool)

(declare-fun res!41692 () Bool)

(declare-fun e!44845 () Bool)

(assert (=> b!79957 (=> (not res!41692) (not e!44845))))

(declare-fun lt!17638 () List!1436)

(assert (=> b!79957 (= res!41692 (= (size!1241 lt!17638) (+ (size!1241 lt!17532) (size!1241 lt!17531))))))

(declare-fun b!79955 () Bool)

(declare-fun e!44846 () List!1436)

(assert (=> b!79955 (= e!44846 lt!17531)))

(declare-fun b!79958 () Bool)

(assert (=> b!79958 (= e!44845 (or (not (= lt!17531 Nil!1430)) (= lt!17638 lt!17532)))))

(declare-fun b!79956 () Bool)

(assert (=> b!79956 (= e!44846 (Cons!1430 (h!6827 lt!17532) (++!144 (t!20315 lt!17532) lt!17531)))))

(declare-fun d!14970 () Bool)

(assert (=> d!14970 e!44845))

(declare-fun res!41691 () Bool)

(assert (=> d!14970 (=> (not res!41691) (not e!44845))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!74 (List!1436) (InoxSet C!1684))

(assert (=> d!14970 (= res!41691 (= (content!74 lt!17638) ((_ map or) (content!74 lt!17532) (content!74 lt!17531))))))

(assert (=> d!14970 (= lt!17638 e!44846)))

(declare-fun c!20280 () Bool)

(assert (=> d!14970 (= c!20280 ((_ is Nil!1430) lt!17532))))

(assert (=> d!14970 (= (++!144 lt!17532 lt!17531) lt!17638)))

(assert (= (and d!14970 c!20280) b!79955))

(assert (= (and d!14970 (not c!20280)) b!79956))

(assert (= (and d!14970 res!41691) b!79957))

(assert (= (and b!79957 res!41692) b!79958))

(declare-fun m!54720 () Bool)

(assert (=> b!79957 m!54720))

(declare-fun m!54722 () Bool)

(assert (=> b!79957 m!54722))

(declare-fun m!54724 () Bool)

(assert (=> b!79957 m!54724))

(declare-fun m!54726 () Bool)

(assert (=> b!79956 m!54726))

(declare-fun m!54728 () Bool)

(assert (=> d!14970 m!54728))

(declare-fun m!54730 () Bool)

(assert (=> d!14970 m!54730))

(declare-fun m!54732 () Bool)

(assert (=> d!14970 m!54732))

(assert (=> b!79778 d!14970))

(declare-fun d!14972 () Bool)

(assert (=> d!14972 (= (list!481 (print!44 thiss!19403 (_1!937 lt!17539))) (list!486 (c!20256 (print!44 thiss!19403 (_1!937 lt!17539)))))))

(declare-fun bs!8314 () Bool)

(assert (= bs!8314 d!14972))

(declare-fun m!54734 () Bool)

(assert (=> bs!8314 m!54734))

(assert (=> b!79778 d!14972))

(declare-fun d!14974 () Bool)

(assert (=> d!14974 (= (list!482 (_1!937 lt!17539)) (list!485 (c!20258 (_1!937 lt!17539))))))

(declare-fun bs!8315 () Bool)

(assert (= bs!8315 d!14974))

(declare-fun m!54736 () Bool)

(assert (=> bs!8315 m!54736))

(assert (=> b!79778 d!14974))

(declare-fun d!14976 () Bool)

(assert (=> d!14976 (= (list!482 (prepend!71 (seqFromList!139 (t!20318 lt!17537)) (h!6830 lt!17537))) (list!485 (c!20258 (prepend!71 (seqFromList!139 (t!20318 lt!17537)) (h!6830 lt!17537)))))))

(declare-fun bs!8316 () Bool)

(assert (= bs!8316 d!14976))

(declare-fun m!54738 () Bool)

(assert (=> bs!8316 m!54738))

(assert (=> b!79778 d!14976))

(declare-fun d!14978 () Bool)

(assert (=> d!14978 (= (seqFromList!138 (_2!936 lt!17533)) (fromListB!48 (_2!936 lt!17533)))))

(declare-fun bs!8317 () Bool)

(assert (= bs!8317 d!14978))

(declare-fun m!54740 () Bool)

(assert (=> bs!8317 m!54740))

(assert (=> b!79778 d!14978))

(declare-fun d!14980 () Bool)

(assert (=> d!14980 (= (get!358 lt!17535) (v!12802 lt!17535))))

(assert (=> b!79778 d!14980))

(declare-fun b!79961 () Bool)

(declare-fun res!41694 () Bool)

(declare-fun e!44847 () Bool)

(assert (=> b!79961 (=> (not res!41694) (not e!44847))))

(declare-fun lt!17639 () List!1436)

(assert (=> b!79961 (= res!41694 (= (size!1241 lt!17639) (+ (size!1241 (list!481 (charsOf!50 (_1!936 lt!17533)))) (size!1241 (_2!936 lt!17533)))))))

(declare-fun b!79959 () Bool)

(declare-fun e!44848 () List!1436)

(assert (=> b!79959 (= e!44848 (_2!936 lt!17533))))

(declare-fun b!79962 () Bool)

(assert (=> b!79962 (= e!44847 (or (not (= (_2!936 lt!17533) Nil!1430)) (= lt!17639 (list!481 (charsOf!50 (_1!936 lt!17533))))))))

(declare-fun b!79960 () Bool)

(assert (=> b!79960 (= e!44848 (Cons!1430 (h!6827 (list!481 (charsOf!50 (_1!936 lt!17533)))) (++!144 (t!20315 (list!481 (charsOf!50 (_1!936 lt!17533)))) (_2!936 lt!17533))))))

(declare-fun d!14982 () Bool)

(assert (=> d!14982 e!44847))

(declare-fun res!41693 () Bool)

(assert (=> d!14982 (=> (not res!41693) (not e!44847))))

(assert (=> d!14982 (= res!41693 (= (content!74 lt!17639) ((_ map or) (content!74 (list!481 (charsOf!50 (_1!936 lt!17533)))) (content!74 (_2!936 lt!17533)))))))

(assert (=> d!14982 (= lt!17639 e!44848)))

(declare-fun c!20281 () Bool)

(assert (=> d!14982 (= c!20281 ((_ is Nil!1430) (list!481 (charsOf!50 (_1!936 lt!17533)))))))

(assert (=> d!14982 (= (++!144 (list!481 (charsOf!50 (_1!936 lt!17533))) (_2!936 lt!17533)) lt!17639)))

(assert (= (and d!14982 c!20281) b!79959))

(assert (= (and d!14982 (not c!20281)) b!79960))

(assert (= (and d!14982 res!41693) b!79961))

(assert (= (and b!79961 res!41694) b!79962))

(declare-fun m!54742 () Bool)

(assert (=> b!79961 m!54742))

(assert (=> b!79961 m!54384))

(declare-fun m!54744 () Bool)

(assert (=> b!79961 m!54744))

(declare-fun m!54746 () Bool)

(assert (=> b!79961 m!54746))

(declare-fun m!54748 () Bool)

(assert (=> b!79960 m!54748))

(declare-fun m!54750 () Bool)

(assert (=> d!14982 m!54750))

(assert (=> d!14982 m!54384))

(declare-fun m!54752 () Bool)

(assert (=> d!14982 m!54752))

(declare-fun m!54754 () Bool)

(assert (=> d!14982 m!54754))

(assert (=> b!79778 d!14982))

(declare-fun d!14984 () Bool)

(assert (=> d!14984 (= (list!481 (_2!937 lt!17539)) (list!486 (c!20256 (_2!937 lt!17539))))))

(declare-fun bs!8318 () Bool)

(assert (= bs!8318 d!14984))

(declare-fun m!54756 () Bool)

(assert (=> bs!8318 m!54756))

(assert (=> b!79778 d!14984))

(declare-fun d!14986 () Bool)

(declare-fun e!44851 () Bool)

(assert (=> d!14986 e!44851))

(declare-fun res!41697 () Bool)

(assert (=> d!14986 (=> (not res!41697) (not e!44851))))

(declare-fun isBalanced!86 (Conc!429) Bool)

(declare-fun prepend!73 (Conc!429 Token!386) Conc!429)

(assert (=> d!14986 (= res!41697 (isBalanced!86 (prepend!73 (c!20258 (seqFromList!139 (t!20318 lt!17537))) (h!6830 lt!17537))))))

(declare-fun lt!17642 () BalanceConc!862)

(assert (=> d!14986 (= lt!17642 (BalanceConc!863 (prepend!73 (c!20258 (seqFromList!139 (t!20318 lt!17537))) (h!6830 lt!17537))))))

(assert (=> d!14986 (= (prepend!71 (seqFromList!139 (t!20318 lt!17537)) (h!6830 lt!17537)) lt!17642)))

(declare-fun b!79965 () Bool)

(assert (=> b!79965 (= e!44851 (= (list!482 lt!17642) (Cons!1433 (h!6830 lt!17537) (list!482 (seqFromList!139 (t!20318 lt!17537))))))))

(assert (= (and d!14986 res!41697) b!79965))

(declare-fun m!54758 () Bool)

(assert (=> d!14986 m!54758))

(assert (=> d!14986 m!54758))

(declare-fun m!54760 () Bool)

(assert (=> d!14986 m!54760))

(declare-fun m!54762 () Bool)

(assert (=> b!79965 m!54762))

(assert (=> b!79965 m!54360))

(declare-fun m!54764 () Bool)

(assert (=> b!79965 m!54764))

(assert (=> b!79778 d!14986))

(declare-fun d!14988 () Bool)

(assert (=> d!14988 (= (isEmpty!480 rules!2471) ((_ is Nil!1432) rules!2471))))

(assert (=> b!79784 d!14988))

(declare-fun d!14990 () Bool)

(declare-fun res!41700 () Bool)

(declare-fun e!44854 () Bool)

(assert (=> d!14990 (=> (not res!41700) (not e!44854))))

(declare-fun rulesValid!65 (LexerInterface!205 List!1438) Bool)

(assert (=> d!14990 (= res!41700 (rulesValid!65 thiss!19403 rules!2471))))

(assert (=> d!14990 (= (rulesInvariant!199 thiss!19403 rules!2471) e!44854)))

(declare-fun b!79968 () Bool)

(declare-datatypes ((List!1441 0))(
  ( (Nil!1435) (Cons!1435 (h!6832 String!1906) (t!20328 List!1441)) )
))
(declare-fun noDuplicateTag!65 (LexerInterface!205 List!1438 List!1441) Bool)

(assert (=> b!79968 (= e!44854 (noDuplicateTag!65 thiss!19403 rules!2471 Nil!1435))))

(assert (= (and d!14990 res!41700) b!79968))

(declare-fun m!54766 () Bool)

(assert (=> d!14990 m!54766))

(declare-fun m!54768 () Bool)

(assert (=> b!79968 m!54768))

(assert (=> b!79779 d!14990))

(declare-fun b!79979 () Bool)

(declare-fun b_free!2593 () Bool)

(declare-fun b_next!2593 () Bool)

(assert (=> b!79979 (= b_free!2593 (not b_next!2593))))

(declare-fun tp!50473 () Bool)

(declare-fun b_and!3699 () Bool)

(assert (=> b!79979 (= tp!50473 b_and!3699)))

(declare-fun b_free!2595 () Bool)

(declare-fun b_next!2595 () Bool)

(assert (=> b!79979 (= b_free!2595 (not b_next!2595))))

(declare-fun tb!2461 () Bool)

(declare-fun t!20327 () Bool)

(assert (=> (and b!79979 (= (toChars!687 (transformation!313 (h!6829 (t!20317 rules!2471)))) (toChars!687 (transformation!313 (rule!794 (_1!936 lt!17533))))) t!20327) tb!2461))

(declare-fun result!3562 () Bool)

(assert (= result!3562 result!3544))

(assert (=> d!14944 t!20327))

(declare-fun tp!50476 () Bool)

(declare-fun b_and!3701 () Bool)

(assert (=> b!79979 (= tp!50476 (and (=> t!20327 result!3562) b_and!3701))))

(declare-fun e!44864 () Bool)

(assert (=> b!79979 (= e!44864 (and tp!50473 tp!50476))))

(declare-fun e!44866 () Bool)

(declare-fun tp!50475 () Bool)

(declare-fun b!79978 () Bool)

(assert (=> b!79978 (= e!44866 (and tp!50475 (inv!1779 (tag!491 (h!6829 (t!20317 rules!2471)))) (inv!1781 (transformation!313 (h!6829 (t!20317 rules!2471)))) e!44864))))

(declare-fun b!79977 () Bool)

(declare-fun e!44865 () Bool)

(declare-fun tp!50474 () Bool)

(assert (=> b!79977 (= e!44865 (and e!44866 tp!50474))))

(assert (=> b!79780 (= tp!50426 e!44865)))

(assert (= b!79978 b!79979))

(assert (= b!79977 b!79978))

(assert (= (and b!79780 ((_ is Cons!1432) (t!20317 rules!2471))) b!79977))

(declare-fun m!54770 () Bool)

(assert (=> b!79978 m!54770))

(declare-fun m!54772 () Bool)

(assert (=> b!79978 m!54772))

(declare-fun b!79984 () Bool)

(declare-fun e!44869 () Bool)

(declare-fun tp!50479 () Bool)

(assert (=> b!79984 (= e!44869 (and tp_is_empty!685 tp!50479))))

(assert (=> b!79775 (= tp!50424 e!44869)))

(assert (= (and b!79775 ((_ is Cons!1430) (t!20315 input!2238))) b!79984))

(declare-fun b!79995 () Bool)

(declare-fun e!44872 () Bool)

(assert (=> b!79995 (= e!44872 tp_is_empty!685)))

(declare-fun b!79998 () Bool)

(declare-fun tp!50492 () Bool)

(declare-fun tp!50493 () Bool)

(assert (=> b!79998 (= e!44872 (and tp!50492 tp!50493))))

(declare-fun b!79997 () Bool)

(declare-fun tp!50491 () Bool)

(assert (=> b!79997 (= e!44872 tp!50491)))

(declare-fun b!79996 () Bool)

(declare-fun tp!50490 () Bool)

(declare-fun tp!50494 () Bool)

(assert (=> b!79996 (= e!44872 (and tp!50490 tp!50494))))

(assert (=> b!79776 (= tp!50427 e!44872)))

(assert (= (and b!79776 ((_ is ElementMatch!381) (regex!313 (h!6829 rules!2471)))) b!79995))

(assert (= (and b!79776 ((_ is Concat!684) (regex!313 (h!6829 rules!2471)))) b!79996))

(assert (= (and b!79776 ((_ is Star!381) (regex!313 (h!6829 rules!2471)))) b!79997))

(assert (= (and b!79776 ((_ is Union!381) (regex!313 (h!6829 rules!2471)))) b!79998))

(check-sat (not b!79942) (not d!14912) (not b!79978) (not b!79997) (not b!79960) (not b_next!2585) (not b!79908) (not d!14974) (not d!14880) (not d!14976) (not b!79840) (not d!14960) (not b!79830) (not bm!3695) (not b!79890) (not b!79832) (not b!79943) (not d!14984) (not d!14982) (not d!14990) (not b!79894) (not d!14882) (not d!14966) b_and!3701 (not b!79968) (not d!14948) (not d!14934) (not d!14958) (not b!79965) (not b!79892) (not b!79944) b_and!3691 (not d!14970) (not b!79961) b_and!3687 (not d!14908) (not d!14972) (not b!79957) (not b!79829) (not b!79984) (not b!79896) (not b!79977) (not d!14986) (not d!14950) (not b!79956) (not b_next!2595) tp_is_empty!685 (not b!79946) (not b!79898) (not b_next!2587) (not d!14964) b_and!3699 (not b_next!2593) (not b!79897) (not b!79895) (not b!79998) (not d!14930) (not d!14944) (not d!14932) (not d!14968) (not b!79828) (not b!79996) (not d!14928) (not tb!2455) (not d!14978) (not b!79891) (not b_lambda!905))
(check-sat b_and!3701 b_and!3691 b_and!3687 (not b_next!2585) (not b_next!2595) (not b_next!2587) b_and!3699 (not b_next!2593))
(get-model)

(declare-fun d!14992 () Bool)

(assert (=> d!14992 (= (isDefined!30 lt!17596) (not (isEmpty!488 lt!17596)))))

(declare-fun bs!8319 () Bool)

(assert (= bs!8319 d!14992))

(assert (=> bs!8319 m!54606))

(assert (=> b!79892 d!14992))

(declare-fun b!80017 () Bool)

(declare-fun e!44881 () Option!120)

(declare-datatypes ((tuple2!1464 0))(
  ( (tuple2!1465 (_1!939 List!1436) (_2!939 List!1436)) )
))
(declare-fun lt!17656 () tuple2!1464)

(assert (=> b!80017 (= e!44881 (Some!119 (tuple2!1459 (Token!387 (apply!195 (transformation!313 (h!6829 rules!2471)) (seqFromList!138 (_1!939 lt!17656))) (h!6829 rules!2471) (size!1239 (seqFromList!138 (_1!939 lt!17656))) (_1!939 lt!17656)) (_2!939 lt!17656))))))

(declare-fun lt!17657 () Unit!884)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!11 (Regex!381 List!1436) Unit!884)

(assert (=> b!80017 (= lt!17657 (longestMatchIsAcceptedByMatchOrIsEmpty!11 (regex!313 (h!6829 rules!2471)) input!2238))))

(declare-fun res!41724 () Bool)

(declare-fun findLongestMatchInner!10 (Regex!381 List!1436 Int List!1436 List!1436 Int) tuple2!1464)

(assert (=> b!80017 (= res!41724 (isEmpty!485 (_1!939 (findLongestMatchInner!10 (regex!313 (h!6829 rules!2471)) Nil!1430 (size!1241 Nil!1430) input!2238 input!2238 (size!1241 input!2238)))))))

(declare-fun e!44883 () Bool)

(assert (=> b!80017 (=> res!41724 e!44883)))

(assert (=> b!80017 e!44883))

(declare-fun lt!17655 () Unit!884)

(assert (=> b!80017 (= lt!17655 lt!17657)))

(declare-fun lt!17654 () Unit!884)

(declare-fun lemmaSemiInverse!9 (TokenValueInjection!430 BalanceConc!860) Unit!884)

(assert (=> b!80017 (= lt!17654 (lemmaSemiInverse!9 (transformation!313 (h!6829 rules!2471)) (seqFromList!138 (_1!939 lt!17656))))))

(declare-fun d!14994 () Bool)

(declare-fun e!44884 () Bool)

(assert (=> d!14994 e!44884))

(declare-fun res!41723 () Bool)

(assert (=> d!14994 (=> res!41723 e!44884)))

(declare-fun lt!17653 () Option!120)

(assert (=> d!14994 (= res!41723 (isEmpty!488 lt!17653))))

(assert (=> d!14994 (= lt!17653 e!44881)))

(declare-fun c!20285 () Bool)

(assert (=> d!14994 (= c!20285 (isEmpty!485 (_1!939 lt!17656)))))

(declare-fun findLongestMatch!9 (Regex!381 List!1436) tuple2!1464)

(assert (=> d!14994 (= lt!17656 (findLongestMatch!9 (regex!313 (h!6829 rules!2471)) input!2238))))

(declare-fun ruleValid!23 (LexerInterface!205 Rule!426) Bool)

(assert (=> d!14994 (ruleValid!23 thiss!19403 (h!6829 rules!2471))))

(assert (=> d!14994 (= (maxPrefixOneRule!19 thiss!19403 (h!6829 rules!2471) input!2238) lt!17653)))

(declare-fun b!80018 () Bool)

(declare-fun res!41728 () Bool)

(declare-fun e!44882 () Bool)

(assert (=> b!80018 (=> (not res!41728) (not e!44882))))

(assert (=> b!80018 (= res!41728 (< (size!1241 (_2!936 (get!358 lt!17653))) (size!1241 input!2238)))))

(declare-fun b!80019 () Bool)

(assert (=> b!80019 (= e!44881 None!119)))

(declare-fun b!80020 () Bool)

(assert (=> b!80020 (= e!44882 (= (size!1235 (_1!936 (get!358 lt!17653))) (size!1241 (originalCharacters!364 (_1!936 (get!358 lt!17653))))))))

(declare-fun b!80021 () Bool)

(declare-fun res!41725 () Bool)

(assert (=> b!80021 (=> (not res!41725) (not e!44882))))

(assert (=> b!80021 (= res!41725 (= (++!144 (list!481 (charsOf!50 (_1!936 (get!358 lt!17653)))) (_2!936 (get!358 lt!17653))) input!2238))))

(declare-fun b!80022 () Bool)

(assert (=> b!80022 (= e!44883 (matchR!23 (regex!313 (h!6829 rules!2471)) (_1!939 (findLongestMatchInner!10 (regex!313 (h!6829 rules!2471)) Nil!1430 (size!1241 Nil!1430) input!2238 input!2238 (size!1241 input!2238)))))))

(declare-fun b!80023 () Bool)

(assert (=> b!80023 (= e!44884 e!44882)))

(declare-fun res!41727 () Bool)

(assert (=> b!80023 (=> (not res!41727) (not e!44882))))

(assert (=> b!80023 (= res!41727 (matchR!23 (regex!313 (h!6829 rules!2471)) (list!481 (charsOf!50 (_1!936 (get!358 lt!17653))))))))

(declare-fun b!80024 () Bool)

(declare-fun res!41729 () Bool)

(assert (=> b!80024 (=> (not res!41729) (not e!44882))))

(assert (=> b!80024 (= res!41729 (= (value!11816 (_1!936 (get!358 lt!17653))) (apply!195 (transformation!313 (rule!794 (_1!936 (get!358 lt!17653)))) (seqFromList!138 (originalCharacters!364 (_1!936 (get!358 lt!17653)))))))))

(declare-fun b!80025 () Bool)

(declare-fun res!41726 () Bool)

(assert (=> b!80025 (=> (not res!41726) (not e!44882))))

(assert (=> b!80025 (= res!41726 (= (rule!794 (_1!936 (get!358 lt!17653))) (h!6829 rules!2471)))))

(assert (= (and d!14994 c!20285) b!80019))

(assert (= (and d!14994 (not c!20285)) b!80017))

(assert (= (and b!80017 (not res!41724)) b!80022))

(assert (= (and d!14994 (not res!41723)) b!80023))

(assert (= (and b!80023 res!41727) b!80021))

(assert (= (and b!80021 res!41725) b!80018))

(assert (= (and b!80018 res!41728) b!80025))

(assert (= (and b!80025 res!41726) b!80024))

(assert (= (and b!80024 res!41729) b!80020))

(declare-fun m!54774 () Bool)

(assert (=> b!80021 m!54774))

(declare-fun m!54776 () Bool)

(assert (=> b!80021 m!54776))

(assert (=> b!80021 m!54776))

(declare-fun m!54778 () Bool)

(assert (=> b!80021 m!54778))

(assert (=> b!80021 m!54778))

(declare-fun m!54780 () Bool)

(assert (=> b!80021 m!54780))

(assert (=> b!80018 m!54774))

(declare-fun m!54782 () Bool)

(assert (=> b!80018 m!54782))

(assert (=> b!80018 m!54586))

(assert (=> b!80023 m!54774))

(assert (=> b!80023 m!54776))

(assert (=> b!80023 m!54776))

(assert (=> b!80023 m!54778))

(assert (=> b!80023 m!54778))

(declare-fun m!54784 () Bool)

(assert (=> b!80023 m!54784))

(assert (=> b!80025 m!54774))

(assert (=> b!80020 m!54774))

(declare-fun m!54786 () Bool)

(assert (=> b!80020 m!54786))

(assert (=> b!80024 m!54774))

(declare-fun m!54788 () Bool)

(assert (=> b!80024 m!54788))

(assert (=> b!80024 m!54788))

(declare-fun m!54790 () Bool)

(assert (=> b!80024 m!54790))

(declare-fun m!54792 () Bool)

(assert (=> b!80017 m!54792))

(declare-fun m!54794 () Bool)

(assert (=> b!80017 m!54794))

(assert (=> b!80017 m!54586))

(declare-fun m!54796 () Bool)

(assert (=> b!80017 m!54796))

(assert (=> b!80017 m!54794))

(assert (=> b!80017 m!54792))

(declare-fun m!54798 () Bool)

(assert (=> b!80017 m!54798))

(declare-fun m!54800 () Bool)

(assert (=> b!80017 m!54800))

(assert (=> b!80017 m!54586))

(assert (=> b!80017 m!54792))

(declare-fun m!54802 () Bool)

(assert (=> b!80017 m!54802))

(assert (=> b!80017 m!54792))

(declare-fun m!54804 () Bool)

(assert (=> b!80017 m!54804))

(declare-fun m!54806 () Bool)

(assert (=> b!80017 m!54806))

(declare-fun m!54808 () Bool)

(assert (=> d!14994 m!54808))

(declare-fun m!54810 () Bool)

(assert (=> d!14994 m!54810))

(declare-fun m!54812 () Bool)

(assert (=> d!14994 m!54812))

(declare-fun m!54814 () Bool)

(assert (=> d!14994 m!54814))

(assert (=> b!80022 m!54794))

(assert (=> b!80022 m!54586))

(assert (=> b!80022 m!54794))

(assert (=> b!80022 m!54586))

(assert (=> b!80022 m!54796))

(declare-fun m!54816 () Bool)

(assert (=> b!80022 m!54816))

(assert (=> bm!3695 d!14994))

(declare-fun d!14996 () Bool)

(assert (=> d!14996 true))

(declare-fun order!541 () Int)

(declare-fun lambda!1470 () Int)

(declare-fun order!543 () Int)

(declare-fun dynLambda!343 (Int Int) Int)

(declare-fun dynLambda!344 (Int Int) Int)

(assert (=> d!14996 (< (dynLambda!343 order!541 (toChars!687 (transformation!313 (h!6829 rules!2471)))) (dynLambda!344 order!543 lambda!1470))))

(assert (=> d!14996 true))

(declare-fun order!545 () Int)

(declare-fun dynLambda!345 (Int Int) Int)

(assert (=> d!14996 (< (dynLambda!345 order!545 (toValue!828 (transformation!313 (h!6829 rules!2471)))) (dynLambda!344 order!543 lambda!1470))))

(declare-fun Forall!42 (Int) Bool)

(assert (=> d!14996 (= (semiInverseModEq!57 (toChars!687 (transformation!313 (h!6829 rules!2471))) (toValue!828 (transformation!313 (h!6829 rules!2471)))) (Forall!42 lambda!1470))))

(declare-fun bs!8321 () Bool)

(assert (= bs!8321 d!14996))

(declare-fun m!54822 () Bool)

(assert (=> bs!8321 m!54822))

(assert (=> d!14912 d!14996))

(declare-fun b!80032 () Bool)

(declare-fun res!41731 () Bool)

(declare-fun e!44885 () Bool)

(assert (=> b!80032 (=> (not res!41731) (not e!44885))))

(declare-fun lt!17661 () List!1436)

(assert (=> b!80032 (= res!41731 (= (size!1241 lt!17661) (+ (size!1241 (t!20315 lt!17532)) (size!1241 lt!17531))))))

(declare-fun b!80030 () Bool)

(declare-fun e!44886 () List!1436)

(assert (=> b!80030 (= e!44886 lt!17531)))

(declare-fun b!80033 () Bool)

(assert (=> b!80033 (= e!44885 (or (not (= lt!17531 Nil!1430)) (= lt!17661 (t!20315 lt!17532))))))

(declare-fun b!80031 () Bool)

(assert (=> b!80031 (= e!44886 (Cons!1430 (h!6827 (t!20315 lt!17532)) (++!144 (t!20315 (t!20315 lt!17532)) lt!17531)))))

(declare-fun d!15002 () Bool)

(assert (=> d!15002 e!44885))

(declare-fun res!41730 () Bool)

(assert (=> d!15002 (=> (not res!41730) (not e!44885))))

(assert (=> d!15002 (= res!41730 (= (content!74 lt!17661) ((_ map or) (content!74 (t!20315 lt!17532)) (content!74 lt!17531))))))

(assert (=> d!15002 (= lt!17661 e!44886)))

(declare-fun c!20286 () Bool)

(assert (=> d!15002 (= c!20286 ((_ is Nil!1430) (t!20315 lt!17532)))))

(assert (=> d!15002 (= (++!144 (t!20315 lt!17532) lt!17531) lt!17661)))

(assert (= (and d!15002 c!20286) b!80030))

(assert (= (and d!15002 (not c!20286)) b!80031))

(assert (= (and d!15002 res!41730) b!80032))

(assert (= (and b!80032 res!41731) b!80033))

(declare-fun m!54824 () Bool)

(assert (=> b!80032 m!54824))

(declare-fun m!54826 () Bool)

(assert (=> b!80032 m!54826))

(assert (=> b!80032 m!54724))

(declare-fun m!54828 () Bool)

(assert (=> b!80031 m!54828))

(declare-fun m!54830 () Bool)

(assert (=> d!15002 m!54830))

(declare-fun m!54832 () Bool)

(assert (=> d!15002 m!54832))

(assert (=> d!15002 m!54732))

(assert (=> b!79956 d!15002))

(declare-fun d!15004 () Bool)

(declare-fun lt!17664 () Int)

(assert (=> d!15004 (>= lt!17664 0)))

(declare-fun e!44891 () Int)

(assert (=> d!15004 (= lt!17664 e!44891)))

(declare-fun c!20289 () Bool)

(assert (=> d!15004 (= c!20289 ((_ is Nil!1430) (_2!936 (get!358 lt!17596))))))

(assert (=> d!15004 (= (size!1241 (_2!936 (get!358 lt!17596))) lt!17664)))

(declare-fun b!80040 () Bool)

(assert (=> b!80040 (= e!44891 0)))

(declare-fun b!80041 () Bool)

(assert (=> b!80041 (= e!44891 (+ 1 (size!1241 (t!20315 (_2!936 (get!358 lt!17596))))))))

(assert (= (and d!15004 c!20289) b!80040))

(assert (= (and d!15004 (not c!20289)) b!80041))

(declare-fun m!54834 () Bool)

(assert (=> b!80041 m!54834))

(assert (=> b!79894 d!15004))

(declare-fun d!15006 () Bool)

(assert (=> d!15006 (= (get!358 lt!17596) (v!12802 lt!17596))))

(assert (=> b!79894 d!15006))

(declare-fun d!15008 () Bool)

(declare-fun lt!17665 () Int)

(assert (=> d!15008 (>= lt!17665 0)))

(declare-fun e!44892 () Int)

(assert (=> d!15008 (= lt!17665 e!44892)))

(declare-fun c!20290 () Bool)

(assert (=> d!15008 (= c!20290 ((_ is Nil!1430) input!2238))))

(assert (=> d!15008 (= (size!1241 input!2238) lt!17665)))

(declare-fun b!80042 () Bool)

(assert (=> b!80042 (= e!44892 0)))

(declare-fun b!80043 () Bool)

(assert (=> b!80043 (= e!44892 (+ 1 (size!1241 (t!20315 input!2238))))))

(assert (= (and d!15008 c!20290) b!80042))

(assert (= (and d!15008 (not c!20290)) b!80043))

(declare-fun m!54836 () Bool)

(assert (=> b!80043 m!54836))

(assert (=> b!79894 d!15008))

(declare-fun d!15010 () Bool)

(declare-fun lt!17668 () Int)

(declare-fun size!1242 (List!1439) Int)

(assert (=> d!15010 (= lt!17668 (size!1242 (list!482 (_1!937 lt!17635))))))

(declare-fun size!1243 (Conc!429) Int)

(assert (=> d!15010 (= lt!17668 (size!1243 (c!20258 (_1!937 lt!17635))))))

(assert (=> d!15010 (= (size!1240 (_1!937 lt!17635)) lt!17668)))

(declare-fun bs!8323 () Bool)

(assert (= bs!8323 d!15010))

(assert (=> bs!8323 m!54712))

(assert (=> bs!8323 m!54712))

(declare-fun m!54840 () Bool)

(assert (=> bs!8323 m!54840))

(declare-fun m!54842 () Bool)

(assert (=> bs!8323 m!54842))

(assert (=> d!14968 d!15010))

(declare-fun b!80158 () Bool)

(declare-fun e!44953 () tuple2!1460)

(declare-fun lt!17817 () BalanceConc!860)

(assert (=> b!80158 (= e!44953 (tuple2!1461 (BalanceConc!863 Empty!429) lt!17817))))

(declare-fun b!80159 () Bool)

(declare-fun e!44956 () tuple2!1460)

(declare-datatypes ((tuple2!1466 0))(
  ( (tuple2!1467 (_1!940 Token!386) (_2!940 BalanceConc!860)) )
))
(declare-datatypes ((Option!121 0))(
  ( (None!120) (Some!120 (v!12813 tuple2!1466)) )
))
(declare-fun lt!17813 () Option!121)

(declare-fun lt!17808 () BalanceConc!860)

(declare-fun append!26 (BalanceConc!862 Token!386) BalanceConc!862)

(assert (=> b!80159 (= e!44956 (lexTailRecV2!42 thiss!19403 rules!2471 (seqFromList!138 (_2!936 lt!17533)) lt!17808 (_2!940 (v!12813 lt!17813)) (append!26 (BalanceConc!863 Empty!429) (_1!940 (v!12813 lt!17813)))))))

(declare-fun lt!17809 () tuple2!1460)

(declare-fun lexRec!25 (LexerInterface!205 List!1438 BalanceConc!860) tuple2!1460)

(assert (=> b!80159 (= lt!17809 (lexRec!25 thiss!19403 rules!2471 (_2!940 (v!12813 lt!17813))))))

(declare-fun lt!17804 () List!1436)

(assert (=> b!80159 (= lt!17804 (list!481 (BalanceConc!861 Empty!428)))))

(declare-fun lt!17810 () List!1436)

(assert (=> b!80159 (= lt!17810 (list!481 (charsOf!50 (_1!940 (v!12813 lt!17813)))))))

(declare-fun lt!17818 () List!1436)

(assert (=> b!80159 (= lt!17818 (list!481 (_2!940 (v!12813 lt!17813))))))

(declare-fun lt!17803 () Unit!884)

(declare-fun lemmaConcatAssociativity!44 (List!1436 List!1436 List!1436) Unit!884)

(assert (=> b!80159 (= lt!17803 (lemmaConcatAssociativity!44 lt!17804 lt!17810 lt!17818))))

(assert (=> b!80159 (= (++!144 (++!144 lt!17804 lt!17810) lt!17818) (++!144 lt!17804 (++!144 lt!17810 lt!17818)))))

(declare-fun lt!17793 () Unit!884)

(assert (=> b!80159 (= lt!17793 lt!17803)))

(declare-fun lt!17799 () Option!121)

(declare-fun maxPrefixZipperSequence!23 (LexerInterface!205 List!1438 BalanceConc!860) Option!121)

(assert (=> b!80159 (= lt!17799 (maxPrefixZipperSequence!23 thiss!19403 rules!2471 (seqFromList!138 (_2!936 lt!17533))))))

(declare-fun c!20320 () Bool)

(assert (=> b!80159 (= c!20320 ((_ is Some!120) lt!17799))))

(declare-fun e!44954 () tuple2!1460)

(assert (=> b!80159 (= (lexRec!25 thiss!19403 rules!2471 (seqFromList!138 (_2!936 lt!17533))) e!44954)))

(declare-fun lt!17801 () Unit!884)

(declare-fun Unit!886 () Unit!884)

(assert (=> b!80159 (= lt!17801 Unit!886)))

(declare-fun lt!17821 () List!1439)

(assert (=> b!80159 (= lt!17821 (list!482 (BalanceConc!863 Empty!429)))))

(declare-fun lt!17800 () List!1439)

(assert (=> b!80159 (= lt!17800 (Cons!1433 (_1!940 (v!12813 lt!17813)) Nil!1433))))

(declare-fun lt!17797 () List!1439)

(assert (=> b!80159 (= lt!17797 (list!482 (_1!937 lt!17809)))))

(declare-fun lt!17819 () Unit!884)

(declare-fun lemmaConcatAssociativity!45 (List!1439 List!1439 List!1439) Unit!884)

(assert (=> b!80159 (= lt!17819 (lemmaConcatAssociativity!45 lt!17821 lt!17800 lt!17797))))

(declare-fun ++!145 (List!1439 List!1439) List!1439)

(assert (=> b!80159 (= (++!145 (++!145 lt!17821 lt!17800) lt!17797) (++!145 lt!17821 (++!145 lt!17800 lt!17797)))))

(declare-fun lt!17812 () Unit!884)

(assert (=> b!80159 (= lt!17812 lt!17819)))

(declare-fun lt!17825 () List!1436)

(assert (=> b!80159 (= lt!17825 (++!144 (list!481 (BalanceConc!861 Empty!428)) (list!481 (charsOf!50 (_1!940 (v!12813 lt!17813))))))))

(declare-fun lt!17807 () List!1436)

(assert (=> b!80159 (= lt!17807 (list!481 (_2!940 (v!12813 lt!17813))))))

(declare-fun lt!17794 () List!1439)

(assert (=> b!80159 (= lt!17794 (list!482 (append!26 (BalanceConc!863 Empty!429) (_1!940 (v!12813 lt!17813)))))))

(declare-fun lt!17820 () Unit!884)

(declare-fun lemmaLexThenLexPrefix!20 (LexerInterface!205 List!1438 List!1436 List!1436 List!1439 List!1439 List!1436) Unit!884)

(assert (=> b!80159 (= lt!17820 (lemmaLexThenLexPrefix!20 thiss!19403 rules!2471 lt!17825 lt!17807 lt!17794 (list!482 (_1!937 lt!17809)) (list!481 (_2!937 lt!17809))))))

(assert (=> b!80159 (= (lexList!45 thiss!19403 rules!2471 lt!17825) (tuple2!1463 lt!17794 Nil!1430))))

(declare-fun lt!17815 () Unit!884)

(assert (=> b!80159 (= lt!17815 lt!17820)))

(declare-fun ++!146 (BalanceConc!860 BalanceConc!860) BalanceConc!860)

(assert (=> b!80159 (= lt!17817 (++!146 (BalanceConc!861 Empty!428) (charsOf!50 (_1!940 (v!12813 lt!17813)))))))

(declare-fun lt!17824 () Option!121)

(assert (=> b!80159 (= lt!17824 (maxPrefixZipperSequence!23 thiss!19403 rules!2471 lt!17817))))

(declare-fun c!20321 () Bool)

(assert (=> b!80159 (= c!20321 ((_ is Some!120) lt!17824))))

(assert (=> b!80159 (= (lexRec!25 thiss!19403 rules!2471 (++!146 (BalanceConc!861 Empty!428) (charsOf!50 (_1!940 (v!12813 lt!17813))))) e!44953)))

(declare-fun lt!17792 () Unit!884)

(declare-fun Unit!887 () Unit!884)

(assert (=> b!80159 (= lt!17792 Unit!887)))

(assert (=> b!80159 (= lt!17808 (++!146 (BalanceConc!861 Empty!428) (charsOf!50 (_1!940 (v!12813 lt!17813)))))))

(declare-fun lt!17802 () List!1436)

(assert (=> b!80159 (= lt!17802 (list!481 lt!17808))))

(declare-fun lt!17816 () List!1436)

(assert (=> b!80159 (= lt!17816 (list!481 (_2!940 (v!12813 lt!17813))))))

(declare-fun lt!17814 () Unit!884)

(declare-fun lemmaConcatTwoListThenFSndIsSuffix!20 (List!1436 List!1436) Unit!884)

(assert (=> b!80159 (= lt!17814 (lemmaConcatTwoListThenFSndIsSuffix!20 lt!17802 lt!17816))))

(declare-fun isSuffix!20 (List!1436 List!1436) Bool)

(assert (=> b!80159 (isSuffix!20 lt!17816 (++!144 lt!17802 lt!17816))))

(declare-fun lt!17796 () Unit!884)

(assert (=> b!80159 (= lt!17796 lt!17814)))

(declare-fun b!80160 () Bool)

(declare-fun lt!17823 () tuple2!1460)

(assert (=> b!80160 (= lt!17823 (lexRec!25 thiss!19403 rules!2471 (_2!940 (v!12813 lt!17799))))))

(assert (=> b!80160 (= e!44954 (tuple2!1461 (prepend!71 (_1!937 lt!17823) (_1!940 (v!12813 lt!17799))) (_2!937 lt!17823)))))

(declare-fun b!80161 () Bool)

(assert (=> b!80161 (= e!44954 (tuple2!1461 (BalanceConc!863 Empty!429) (seqFromList!138 (_2!936 lt!17533))))))

(declare-fun b!80162 () Bool)

(declare-fun lt!17806 () tuple2!1460)

(assert (=> b!80162 (= lt!17806 (lexRec!25 thiss!19403 rules!2471 (_2!940 (v!12813 lt!17824))))))

(assert (=> b!80162 (= e!44953 (tuple2!1461 (prepend!71 (_1!937 lt!17806) (_1!940 (v!12813 lt!17824))) (_2!937 lt!17806)))))

(declare-fun b!80163 () Bool)

(assert (=> b!80163 (= e!44956 (tuple2!1461 (BalanceConc!863 Empty!429) (seqFromList!138 (_2!936 lt!17533))))))

(declare-fun e!44955 () Bool)

(declare-fun lt!17795 () tuple2!1460)

(declare-fun b!80164 () Bool)

(assert (=> b!80164 (= e!44955 (= (list!481 (_2!937 lt!17795)) (list!481 (_2!937 (lexRec!25 thiss!19403 rules!2471 (seqFromList!138 (_2!936 lt!17533)))))))))

(declare-fun d!15016 () Bool)

(assert (=> d!15016 e!44955))

(declare-fun res!41787 () Bool)

(assert (=> d!15016 (=> (not res!41787) (not e!44955))))

(assert (=> d!15016 (= res!41787 (= (list!482 (_1!937 lt!17795)) (list!482 (_1!937 (lexRec!25 thiss!19403 rules!2471 (seqFromList!138 (_2!936 lt!17533)))))))))

(assert (=> d!15016 (= lt!17795 e!44956)))

(declare-fun c!20319 () Bool)

(assert (=> d!15016 (= c!20319 ((_ is Some!120) lt!17813))))

(declare-fun maxPrefixZipperSequenceV2!20 (LexerInterface!205 List!1438 BalanceConc!860 BalanceConc!860) Option!121)

(assert (=> d!15016 (= lt!17813 (maxPrefixZipperSequenceV2!20 thiss!19403 rules!2471 (seqFromList!138 (_2!936 lt!17533)) (seqFromList!138 (_2!936 lt!17533))))))

(declare-fun lt!17822 () Unit!884)

(declare-fun lt!17805 () Unit!884)

(assert (=> d!15016 (= lt!17822 lt!17805)))

(declare-fun lt!17811 () List!1436)

(declare-fun lt!17798 () List!1436)

(assert (=> d!15016 (isSuffix!20 lt!17811 (++!144 lt!17798 lt!17811))))

(assert (=> d!15016 (= lt!17805 (lemmaConcatTwoListThenFSndIsSuffix!20 lt!17798 lt!17811))))

(assert (=> d!15016 (= lt!17811 (list!481 (seqFromList!138 (_2!936 lt!17533))))))

(assert (=> d!15016 (= lt!17798 (list!481 (BalanceConc!861 Empty!428)))))

(assert (=> d!15016 (= (lexTailRecV2!42 thiss!19403 rules!2471 (seqFromList!138 (_2!936 lt!17533)) (BalanceConc!861 Empty!428) (seqFromList!138 (_2!936 lt!17533)) (BalanceConc!863 Empty!429)) lt!17795)))

(assert (= (and d!15016 c!20319) b!80159))

(assert (= (and d!15016 (not c!20319)) b!80163))

(assert (= (and b!80159 c!20320) b!80160))

(assert (= (and b!80159 (not c!20320)) b!80161))

(assert (= (and b!80159 c!20321) b!80162))

(assert (= (and b!80159 (not c!20321)) b!80158))

(assert (= (and d!15016 res!41787) b!80164))

(declare-fun m!55010 () Bool)

(assert (=> b!80162 m!55010))

(declare-fun m!55012 () Bool)

(assert (=> b!80162 m!55012))

(declare-fun m!55014 () Bool)

(assert (=> b!80160 m!55014))

(declare-fun m!55016 () Bool)

(assert (=> b!80160 m!55016))

(declare-fun m!55018 () Bool)

(assert (=> b!80159 m!55018))

(declare-fun m!55020 () Bool)

(assert (=> b!80159 m!55020))

(declare-fun m!55022 () Bool)

(assert (=> b!80159 m!55022))

(declare-fun m!55024 () Bool)

(assert (=> b!80159 m!55024))

(declare-fun m!55026 () Bool)

(assert (=> b!80159 m!55026))

(declare-fun m!55028 () Bool)

(assert (=> b!80159 m!55028))

(assert (=> b!80159 m!54358))

(assert (=> b!80159 m!55028))

(declare-fun m!55030 () Bool)

(assert (=> b!80159 m!55030))

(declare-fun m!55032 () Bool)

(assert (=> b!80159 m!55032))

(declare-fun m!55034 () Bool)

(assert (=> b!80159 m!55034))

(declare-fun m!55036 () Bool)

(assert (=> b!80159 m!55036))

(assert (=> b!80159 m!54358))

(declare-fun m!55038 () Bool)

(assert (=> b!80159 m!55038))

(declare-fun m!55040 () Bool)

(assert (=> b!80159 m!55040))

(declare-fun m!55042 () Bool)

(assert (=> b!80159 m!55042))

(declare-fun m!55044 () Bool)

(assert (=> b!80159 m!55044))

(declare-fun m!55046 () Bool)

(assert (=> b!80159 m!55046))

(declare-fun m!55048 () Bool)

(assert (=> b!80159 m!55048))

(declare-fun m!55050 () Bool)

(assert (=> b!80159 m!55050))

(declare-fun m!55052 () Bool)

(assert (=> b!80159 m!55052))

(declare-fun m!55054 () Bool)

(assert (=> b!80159 m!55054))

(declare-fun m!55056 () Bool)

(assert (=> b!80159 m!55056))

(assert (=> b!80159 m!55018))

(assert (=> b!80159 m!55040))

(declare-fun m!55058 () Bool)

(assert (=> b!80159 m!55058))

(declare-fun m!55060 () Bool)

(assert (=> b!80159 m!55060))

(assert (=> b!80159 m!55052))

(declare-fun m!55062 () Bool)

(assert (=> b!80159 m!55062))

(declare-fun m!55064 () Bool)

(assert (=> b!80159 m!55064))

(declare-fun m!55066 () Bool)

(assert (=> b!80159 m!55066))

(declare-fun m!55068 () Bool)

(assert (=> b!80159 m!55068))

(declare-fun m!55070 () Bool)

(assert (=> b!80159 m!55070))

(assert (=> b!80159 m!54358))

(declare-fun m!55072 () Bool)

(assert (=> b!80159 m!55072))

(assert (=> b!80159 m!55062))

(assert (=> b!80159 m!55032))

(assert (=> b!80159 m!55044))

(assert (=> b!80159 m!55064))

(assert (=> b!80159 m!55048))

(assert (=> b!80159 m!55020))

(declare-fun m!55074 () Bool)

(assert (=> b!80159 m!55074))

(declare-fun m!55076 () Bool)

(assert (=> b!80159 m!55076))

(declare-fun m!55078 () Bool)

(assert (=> b!80159 m!55078))

(declare-fun m!55080 () Bool)

(assert (=> b!80159 m!55080))

(assert (=> b!80159 m!55076))

(assert (=> b!80159 m!55058))

(assert (=> b!80159 m!55018))

(assert (=> b!80159 m!55028))

(declare-fun m!55082 () Bool)

(assert (=> b!80159 m!55082))

(declare-fun m!55084 () Bool)

(assert (=> b!80164 m!55084))

(assert (=> b!80164 m!54358))

(assert (=> b!80164 m!55038))

(declare-fun m!55086 () Bool)

(assert (=> b!80164 m!55086))

(declare-fun m!55088 () Bool)

(assert (=> d!15016 m!55088))

(declare-fun m!55090 () Bool)

(assert (=> d!15016 m!55090))

(assert (=> d!15016 m!54358))

(assert (=> d!15016 m!55038))

(assert (=> d!15016 m!55088))

(declare-fun m!55092 () Bool)

(assert (=> d!15016 m!55092))

(assert (=> d!15016 m!54358))

(assert (=> d!15016 m!54704))

(assert (=> d!15016 m!54358))

(assert (=> d!15016 m!54358))

(declare-fun m!55094 () Bool)

(assert (=> d!15016 m!55094))

(assert (=> d!15016 m!55048))

(declare-fun m!55096 () Bool)

(assert (=> d!15016 m!55096))

(declare-fun m!55098 () Bool)

(assert (=> d!15016 m!55098))

(assert (=> d!14968 d!15016))

(declare-fun d!15056 () Bool)

(declare-fun isBalanced!87 (Conc!428) Bool)

(assert (=> d!15056 (= (inv!1785 (dynLambda!342 (toChars!687 (transformation!313 (rule!794 (_1!936 lt!17533)))) (value!11816 (_1!936 lt!17533)))) (isBalanced!87 (c!20256 (dynLambda!342 (toChars!687 (transformation!313 (rule!794 (_1!936 lt!17533)))) (value!11816 (_1!936 lt!17533))))))))

(declare-fun bs!8332 () Bool)

(assert (= bs!8332 d!15056))

(declare-fun m!55100 () Bool)

(assert (=> bs!8332 m!55100))

(assert (=> tb!2455 d!15056))

(declare-fun b!80176 () Bool)

(declare-fun e!44962 () List!1439)

(assert (=> b!80176 (= e!44962 (++!145 (list!485 (left!1086 (c!20258 (_1!937 lt!17539)))) (list!485 (right!1416 (c!20258 (_1!937 lt!17539))))))))

(declare-fun d!15058 () Bool)

(declare-fun c!20326 () Bool)

(assert (=> d!15058 (= c!20326 ((_ is Empty!429) (c!20258 (_1!937 lt!17539))))))

(declare-fun e!44961 () List!1439)

(assert (=> d!15058 (= (list!485 (c!20258 (_1!937 lt!17539))) e!44961)))

(declare-fun b!80175 () Bool)

(declare-fun list!487 (IArray!859) List!1439)

(assert (=> b!80175 (= e!44962 (list!487 (xs!3008 (c!20258 (_1!937 lt!17539)))))))

(declare-fun b!80174 () Bool)

(assert (=> b!80174 (= e!44961 e!44962)))

(declare-fun c!20327 () Bool)

(assert (=> b!80174 (= c!20327 ((_ is Leaf!721) (c!20258 (_1!937 lt!17539))))))

(declare-fun b!80173 () Bool)

(assert (=> b!80173 (= e!44961 Nil!1433)))

(assert (= (and d!15058 c!20326) b!80173))

(assert (= (and d!15058 (not c!20326)) b!80174))

(assert (= (and b!80174 c!20327) b!80175))

(assert (= (and b!80174 (not c!20327)) b!80176))

(declare-fun m!55102 () Bool)

(assert (=> b!80176 m!55102))

(declare-fun m!55104 () Bool)

(assert (=> b!80176 m!55104))

(assert (=> b!80176 m!55102))

(assert (=> b!80176 m!55104))

(declare-fun m!55106 () Bool)

(assert (=> b!80176 m!55106))

(declare-fun m!55108 () Bool)

(assert (=> b!80175 m!55108))

(assert (=> d!14974 d!15058))

(declare-fun d!15060 () Bool)

(assert (=> d!15060 (= (list!481 (charsOf!50 (_1!936 (get!358 lt!17596)))) (list!486 (c!20256 (charsOf!50 (_1!936 (get!358 lt!17596))))))))

(declare-fun bs!8333 () Bool)

(assert (= bs!8333 d!15060))

(declare-fun m!55110 () Bool)

(assert (=> bs!8333 m!55110))

(assert (=> b!79896 d!15060))

(declare-fun d!15062 () Bool)

(declare-fun lt!17829 () BalanceConc!860)

(assert (=> d!15062 (= (list!481 lt!17829) (originalCharacters!364 (_1!936 (get!358 lt!17596))))))

(assert (=> d!15062 (= lt!17829 (dynLambda!342 (toChars!687 (transformation!313 (rule!794 (_1!936 (get!358 lt!17596))))) (value!11816 (_1!936 (get!358 lt!17596)))))))

(assert (=> d!15062 (= (charsOf!50 (_1!936 (get!358 lt!17596))) lt!17829)))

(declare-fun b_lambda!913 () Bool)

(assert (=> (not b_lambda!913) (not d!15062)))

(declare-fun t!20342 () Bool)

(declare-fun tb!2471 () Bool)

(assert (=> (and b!79782 (= (toChars!687 (transformation!313 (h!6829 rules!2471))) (toChars!687 (transformation!313 (rule!794 (_1!936 (get!358 lt!17596)))))) t!20342) tb!2471))

(declare-fun b!80177 () Bool)

(declare-fun e!44963 () Bool)

(declare-fun tp!50496 () Bool)

(assert (=> b!80177 (= e!44963 (and (inv!1784 (c!20256 (dynLambda!342 (toChars!687 (transformation!313 (rule!794 (_1!936 (get!358 lt!17596))))) (value!11816 (_1!936 (get!358 lt!17596)))))) tp!50496))))

(declare-fun result!3578 () Bool)

(assert (=> tb!2471 (= result!3578 (and (inv!1785 (dynLambda!342 (toChars!687 (transformation!313 (rule!794 (_1!936 (get!358 lt!17596))))) (value!11816 (_1!936 (get!358 lt!17596))))) e!44963))))

(assert (= tb!2471 b!80177))

(declare-fun m!55112 () Bool)

(assert (=> b!80177 m!55112))

(declare-fun m!55114 () Bool)

(assert (=> tb!2471 m!55114))

(assert (=> d!15062 t!20342))

(declare-fun b_and!3711 () Bool)

(assert (= b_and!3691 (and (=> t!20342 result!3578) b_and!3711)))

(declare-fun t!20344 () Bool)

(declare-fun tb!2473 () Bool)

(assert (=> (and b!79979 (= (toChars!687 (transformation!313 (h!6829 (t!20317 rules!2471)))) (toChars!687 (transformation!313 (rule!794 (_1!936 (get!358 lt!17596)))))) t!20344) tb!2473))

(declare-fun result!3580 () Bool)

(assert (= result!3580 result!3578))

(assert (=> d!15062 t!20344))

(declare-fun b_and!3713 () Bool)

(assert (= b_and!3701 (and (=> t!20344 result!3580) b_and!3713)))

(declare-fun m!55116 () Bool)

(assert (=> d!15062 m!55116))

(declare-fun m!55118 () Bool)

(assert (=> d!15062 m!55118))

(assert (=> b!79896 d!15062))

(assert (=> b!79896 d!15006))

(declare-fun d!15064 () Bool)

(assert (=> d!15064 (= (list!481 lt!17634) (list!486 (c!20256 lt!17634)))))

(declare-fun bs!8334 () Bool)

(assert (= bs!8334 d!15064))

(declare-fun m!55120 () Bool)

(assert (=> bs!8334 m!55120))

(assert (=> d!14966 d!15064))

(declare-fun d!15066 () Bool)

(declare-fun c!20330 () Bool)

(assert (=> d!15066 (= c!20330 ((_ is Cons!1433) (list!482 (_1!937 lt!17539))))))

(declare-fun e!44966 () List!1436)

(assert (=> d!15066 (= (printList!17 thiss!19403 (list!482 (_1!937 lt!17539))) e!44966)))

(declare-fun b!80182 () Bool)

(assert (=> b!80182 (= e!44966 (++!144 (list!481 (charsOf!50 (h!6830 (list!482 (_1!937 lt!17539))))) (printList!17 thiss!19403 (t!20318 (list!482 (_1!937 lt!17539))))))))

(declare-fun b!80183 () Bool)

(assert (=> b!80183 (= e!44966 Nil!1430)))

(assert (= (and d!15066 c!20330) b!80182))

(assert (= (and d!15066 (not c!20330)) b!80183))

(declare-fun m!55122 () Bool)

(assert (=> b!80182 m!55122))

(assert (=> b!80182 m!55122))

(declare-fun m!55124 () Bool)

(assert (=> b!80182 m!55124))

(declare-fun m!55126 () Bool)

(assert (=> b!80182 m!55126))

(assert (=> b!80182 m!55124))

(assert (=> b!80182 m!55126))

(declare-fun m!55128 () Bool)

(assert (=> b!80182 m!55128))

(assert (=> d!14966 d!15066))

(assert (=> d!14966 d!14974))

(declare-fun d!15068 () Bool)

(declare-fun lt!17844 () BalanceConc!860)

(declare-fun printListTailRec!9 (LexerInterface!205 List!1439 List!1436) List!1436)

(declare-fun dropList!17 (BalanceConc!862 Int) List!1439)

(assert (=> d!15068 (= (list!481 lt!17844) (printListTailRec!9 thiss!19403 (dropList!17 (_1!937 lt!17539) 0) (list!481 (BalanceConc!861 Empty!428))))))

(declare-fun e!44972 () BalanceConc!860)

(assert (=> d!15068 (= lt!17844 e!44972)))

(declare-fun c!20333 () Bool)

(assert (=> d!15068 (= c!20333 (>= 0 (size!1240 (_1!937 lt!17539))))))

(declare-fun e!44971 () Bool)

(assert (=> d!15068 e!44971))

(declare-fun res!41790 () Bool)

(assert (=> d!15068 (=> (not res!41790) (not e!44971))))

(assert (=> d!15068 (= res!41790 (>= 0 0))))

(assert (=> d!15068 (= (printTailRec!17 thiss!19403 (_1!937 lt!17539) 0 (BalanceConc!861 Empty!428)) lt!17844)))

(declare-fun b!80190 () Bool)

(assert (=> b!80190 (= e!44971 (<= 0 (size!1240 (_1!937 lt!17539))))))

(declare-fun b!80191 () Bool)

(assert (=> b!80191 (= e!44972 (BalanceConc!861 Empty!428))))

(declare-fun b!80192 () Bool)

(declare-fun apply!196 (BalanceConc!862 Int) Token!386)

(assert (=> b!80192 (= e!44972 (printTailRec!17 thiss!19403 (_1!937 lt!17539) (+ 0 1) (++!146 (BalanceConc!861 Empty!428) (charsOf!50 (apply!196 (_1!937 lt!17539) 0)))))))

(declare-fun lt!17848 () List!1439)

(assert (=> b!80192 (= lt!17848 (list!482 (_1!937 lt!17539)))))

(declare-fun lt!17845 () Unit!884)

(declare-fun lemmaDropApply!73 (List!1439 Int) Unit!884)

(assert (=> b!80192 (= lt!17845 (lemmaDropApply!73 lt!17848 0))))

(declare-fun head!421 (List!1439) Token!386)

(declare-fun drop!75 (List!1439 Int) List!1439)

(declare-fun apply!197 (List!1439 Int) Token!386)

(assert (=> b!80192 (= (head!421 (drop!75 lt!17848 0)) (apply!197 lt!17848 0))))

(declare-fun lt!17849 () Unit!884)

(assert (=> b!80192 (= lt!17849 lt!17845)))

(declare-fun lt!17846 () List!1439)

(assert (=> b!80192 (= lt!17846 (list!482 (_1!937 lt!17539)))))

(declare-fun lt!17847 () Unit!884)

(declare-fun lemmaDropTail!65 (List!1439 Int) Unit!884)

(assert (=> b!80192 (= lt!17847 (lemmaDropTail!65 lt!17846 0))))

(assert (=> b!80192 (= (tail!124 (drop!75 lt!17846 0)) (drop!75 lt!17846 (+ 0 1)))))

(declare-fun lt!17850 () Unit!884)

(assert (=> b!80192 (= lt!17850 lt!17847)))

(assert (= (and d!15068 res!41790) b!80190))

(assert (= (and d!15068 c!20333) b!80191))

(assert (= (and d!15068 (not c!20333)) b!80192))

(declare-fun m!55130 () Bool)

(assert (=> d!15068 m!55130))

(assert (=> d!15068 m!55048))

(declare-fun m!55132 () Bool)

(assert (=> d!15068 m!55132))

(declare-fun m!55134 () Bool)

(assert (=> d!15068 m!55134))

(assert (=> d!15068 m!55134))

(assert (=> d!15068 m!55048))

(declare-fun m!55136 () Bool)

(assert (=> d!15068 m!55136))

(assert (=> b!80190 m!55132))

(declare-fun m!55138 () Bool)

(assert (=> b!80192 m!55138))

(declare-fun m!55140 () Bool)

(assert (=> b!80192 m!55140))

(declare-fun m!55142 () Bool)

(assert (=> b!80192 m!55142))

(assert (=> b!80192 m!55140))

(declare-fun m!55144 () Bool)

(assert (=> b!80192 m!55144))

(declare-fun m!55146 () Bool)

(assert (=> b!80192 m!55146))

(declare-fun m!55148 () Bool)

(assert (=> b!80192 m!55148))

(declare-fun m!55150 () Bool)

(assert (=> b!80192 m!55150))

(assert (=> b!80192 m!55144))

(declare-fun m!55152 () Bool)

(assert (=> b!80192 m!55152))

(assert (=> b!80192 m!54370))

(assert (=> b!80192 m!55148))

(declare-fun m!55154 () Bool)

(assert (=> b!80192 m!55154))

(declare-fun m!55156 () Bool)

(assert (=> b!80192 m!55156))

(assert (=> b!80192 m!55138))

(assert (=> b!80192 m!55142))

(declare-fun m!55158 () Bool)

(assert (=> b!80192 m!55158))

(declare-fun m!55160 () Bool)

(assert (=> b!80192 m!55160))

(assert (=> d!14966 d!15068))

(declare-fun d!15070 () Bool)

(declare-fun c!20338 () Bool)

(assert (=> d!15070 (= c!20338 ((_ is Empty!428) (c!20256 (charsOf!50 (_1!936 lt!17533)))))))

(declare-fun e!44977 () List!1436)

(assert (=> d!15070 (= (list!486 (c!20256 (charsOf!50 (_1!936 lt!17533)))) e!44977)))

(declare-fun b!80201 () Bool)

(assert (=> b!80201 (= e!44977 Nil!1430)))

(declare-fun b!80203 () Bool)

(declare-fun e!44978 () List!1436)

(declare-fun list!488 (IArray!857) List!1436)

(assert (=> b!80203 (= e!44978 (list!488 (xs!3007 (c!20256 (charsOf!50 (_1!936 lt!17533))))))))

(declare-fun b!80202 () Bool)

(assert (=> b!80202 (= e!44977 e!44978)))

(declare-fun c!20339 () Bool)

(assert (=> b!80202 (= c!20339 ((_ is Leaf!720) (c!20256 (charsOf!50 (_1!936 lt!17533)))))))

(declare-fun b!80204 () Bool)

(assert (=> b!80204 (= e!44978 (++!144 (list!486 (left!1085 (c!20256 (charsOf!50 (_1!936 lt!17533))))) (list!486 (right!1415 (c!20256 (charsOf!50 (_1!936 lt!17533)))))))))

(assert (= (and d!15070 c!20338) b!80201))

(assert (= (and d!15070 (not c!20338)) b!80202))

(assert (= (and b!80202 c!20339) b!80203))

(assert (= (and b!80202 (not c!20339)) b!80204))

(declare-fun m!55162 () Bool)

(assert (=> b!80203 m!55162))

(declare-fun m!55164 () Bool)

(assert (=> b!80204 m!55164))

(declare-fun m!55166 () Bool)

(assert (=> b!80204 m!55166))

(assert (=> b!80204 m!55164))

(assert (=> b!80204 m!55166))

(declare-fun m!55168 () Bool)

(assert (=> b!80204 m!55168))

(assert (=> d!14948 d!15070))

(declare-fun d!15072 () Bool)

(assert (=> d!15072 (= (list!481 (_2!937 lt!17563)) (list!486 (c!20256 (_2!937 lt!17563))))))

(declare-fun bs!8335 () Bool)

(assert (= bs!8335 d!15072))

(declare-fun m!55170 () Bool)

(assert (=> bs!8335 m!55170))

(assert (=> b!79829 d!15072))

(declare-fun d!15074 () Bool)

(declare-fun e!44985 () Bool)

(assert (=> d!15074 e!44985))

(declare-fun c!20345 () Bool)

(declare-fun lt!17859 () tuple2!1462)

(assert (=> d!15074 (= c!20345 (> (size!1242 (_1!938 lt!17859)) 0))))

(declare-fun e!44986 () tuple2!1462)

(assert (=> d!15074 (= lt!17859 e!44986)))

(declare-fun c!20344 () Bool)

(declare-fun lt!17857 () Option!120)

(assert (=> d!15074 (= c!20344 ((_ is Some!119) lt!17857))))

(assert (=> d!15074 (= lt!17857 (maxPrefix!49 thiss!19403 rules!2471 (list!481 (seqFromList!138 input!2238))))))

(assert (=> d!15074 (= (lexList!45 thiss!19403 rules!2471 (list!481 (seqFromList!138 input!2238))) lt!17859)))

(declare-fun b!80215 () Bool)

(assert (=> b!80215 (= e!44986 (tuple2!1463 Nil!1433 (list!481 (seqFromList!138 input!2238))))))

(declare-fun b!80216 () Bool)

(declare-fun e!44987 () Bool)

(assert (=> b!80216 (= e!44985 e!44987)))

(declare-fun res!41793 () Bool)

(assert (=> b!80216 (= res!41793 (< (size!1241 (_2!938 lt!17859)) (size!1241 (list!481 (seqFromList!138 input!2238)))))))

(assert (=> b!80216 (=> (not res!41793) (not e!44987))))

(declare-fun b!80217 () Bool)

(assert (=> b!80217 (= e!44985 (= (_2!938 lt!17859) (list!481 (seqFromList!138 input!2238))))))

(declare-fun b!80218 () Bool)

(declare-fun isEmpty!491 (List!1439) Bool)

(assert (=> b!80218 (= e!44987 (not (isEmpty!491 (_1!938 lt!17859))))))

(declare-fun b!80219 () Bool)

(declare-fun lt!17858 () tuple2!1462)

(assert (=> b!80219 (= e!44986 (tuple2!1463 (Cons!1433 (_1!936 (v!12802 lt!17857)) (_1!938 lt!17858)) (_2!938 lt!17858)))))

(assert (=> b!80219 (= lt!17858 (lexList!45 thiss!19403 rules!2471 (_2!936 (v!12802 lt!17857))))))

(assert (= (and d!15074 c!20344) b!80219))

(assert (= (and d!15074 (not c!20344)) b!80215))

(assert (= (and d!15074 c!20345) b!80216))

(assert (= (and d!15074 (not c!20345)) b!80217))

(assert (= (and b!80216 res!41793) b!80218))

(declare-fun m!55172 () Bool)

(assert (=> d!15074 m!55172))

(assert (=> d!15074 m!54468))

(declare-fun m!55174 () Bool)

(assert (=> d!15074 m!55174))

(declare-fun m!55176 () Bool)

(assert (=> b!80216 m!55176))

(assert (=> b!80216 m!54468))

(declare-fun m!55178 () Bool)

(assert (=> b!80216 m!55178))

(declare-fun m!55180 () Bool)

(assert (=> b!80218 m!55180))

(declare-fun m!55182 () Bool)

(assert (=> b!80219 m!55182))

(assert (=> b!79829 d!15074))

(declare-fun d!15076 () Bool)

(assert (=> d!15076 (= (list!481 (seqFromList!138 input!2238)) (list!486 (c!20256 (seqFromList!138 input!2238))))))

(declare-fun bs!8336 () Bool)

(assert (= bs!8336 d!15076))

(declare-fun m!55184 () Bool)

(assert (=> bs!8336 m!55184))

(assert (=> b!79829 d!15076))

(declare-fun d!15078 () Bool)

(assert (=> d!15078 true))

(declare-fun lt!17862 () Bool)

(assert (=> d!15078 (= lt!17862 (rulesValidInductive!44 thiss!19403 rules!2471))))

(declare-fun lambda!1479 () Int)

(declare-fun forall!191 (List!1438 Int) Bool)

(assert (=> d!15078 (= lt!17862 (forall!191 rules!2471 lambda!1479))))

(assert (=> d!15078 (= (rulesValid!65 thiss!19403 rules!2471) lt!17862)))

(declare-fun bs!8337 () Bool)

(assert (= bs!8337 d!15078))

(assert (=> bs!8337 m!54612))

(declare-fun m!55186 () Bool)

(assert (=> bs!8337 m!55186))

(assert (=> d!14990 d!15078))

(declare-fun d!15080 () Bool)

(assert (=> d!15080 true))

(declare-fun order!551 () Int)

(declare-fun lambda!1482 () Int)

(declare-fun dynLambda!349 (Int Int) Int)

(assert (=> d!15080 (< (dynLambda!345 order!545 (toValue!828 (transformation!313 (h!6829 rules!2471)))) (dynLambda!349 order!551 lambda!1482))))

(declare-fun Forall2!31 (Int) Bool)

(assert (=> d!15080 (= (equivClasses!53 (toChars!687 (transformation!313 (h!6829 rules!2471))) (toValue!828 (transformation!313 (h!6829 rules!2471)))) (Forall2!31 lambda!1482))))

(declare-fun bs!8338 () Bool)

(assert (= bs!8338 d!15080))

(declare-fun m!55188 () Bool)

(assert (=> bs!8338 m!55188))

(assert (=> b!79840 d!15080))

(declare-fun b!80254 () Bool)

(declare-fun e!45008 () Bool)

(declare-fun lt!17865 () Bool)

(declare-fun call!3703 () Bool)

(assert (=> b!80254 (= e!45008 (= lt!17865 call!3703))))

(declare-fun d!15082 () Bool)

(assert (=> d!15082 e!45008))

(declare-fun c!20353 () Bool)

(assert (=> d!15082 (= c!20353 ((_ is EmptyExpr!381) (regex!313 (rule!794 (_1!936 (get!358 lt!17596))))))))

(declare-fun e!45009 () Bool)

(assert (=> d!15082 (= lt!17865 e!45009)))

(declare-fun c!20354 () Bool)

(assert (=> d!15082 (= c!20354 (isEmpty!485 (list!481 (charsOf!50 (_1!936 (get!358 lt!17596))))))))

(declare-fun validRegex!40 (Regex!381) Bool)

(assert (=> d!15082 (validRegex!40 (regex!313 (rule!794 (_1!936 (get!358 lt!17596)))))))

(assert (=> d!15082 (= (matchR!23 (regex!313 (rule!794 (_1!936 (get!358 lt!17596)))) (list!481 (charsOf!50 (_1!936 (get!358 lt!17596))))) lt!17865)))

(declare-fun b!80255 () Bool)

(declare-fun nullable!33 (Regex!381) Bool)

(assert (=> b!80255 (= e!45009 (nullable!33 (regex!313 (rule!794 (_1!936 (get!358 lt!17596))))))))

(declare-fun b!80256 () Bool)

(declare-fun res!41812 () Bool)

(declare-fun e!45004 () Bool)

(assert (=> b!80256 (=> res!41812 e!45004)))

(assert (=> b!80256 (= res!41812 (not ((_ is ElementMatch!381) (regex!313 (rule!794 (_1!936 (get!358 lt!17596)))))))))

(declare-fun e!45005 () Bool)

(assert (=> b!80256 (= e!45005 e!45004)))

(declare-fun b!80257 () Bool)

(declare-fun e!45010 () Bool)

(declare-fun e!45007 () Bool)

(assert (=> b!80257 (= e!45010 e!45007)))

(declare-fun res!41819 () Bool)

(assert (=> b!80257 (=> res!41819 e!45007)))

(assert (=> b!80257 (= res!41819 call!3703)))

(declare-fun b!80258 () Bool)

(declare-fun head!423 (List!1436) C!1684)

(assert (=> b!80258 (= e!45007 (not (= (head!423 (list!481 (charsOf!50 (_1!936 (get!358 lt!17596))))) (c!20257 (regex!313 (rule!794 (_1!936 (get!358 lt!17596))))))))))

(declare-fun b!80259 () Bool)

(declare-fun e!45006 () Bool)

(assert (=> b!80259 (= e!45006 (= (head!423 (list!481 (charsOf!50 (_1!936 (get!358 lt!17596))))) (c!20257 (regex!313 (rule!794 (_1!936 (get!358 lt!17596)))))))))

(declare-fun b!80260 () Bool)

(declare-fun res!41813 () Bool)

(assert (=> b!80260 (=> (not res!41813) (not e!45006))))

(declare-fun tail!125 (List!1436) List!1436)

(assert (=> b!80260 (= res!41813 (isEmpty!485 (tail!125 (list!481 (charsOf!50 (_1!936 (get!358 lt!17596)))))))))

(declare-fun bm!3698 () Bool)

(assert (=> bm!3698 (= call!3703 (isEmpty!485 (list!481 (charsOf!50 (_1!936 (get!358 lt!17596))))))))

(declare-fun b!80261 () Bool)

(declare-fun derivativeStep!15 (Regex!381 C!1684) Regex!381)

(assert (=> b!80261 (= e!45009 (matchR!23 (derivativeStep!15 (regex!313 (rule!794 (_1!936 (get!358 lt!17596)))) (head!423 (list!481 (charsOf!50 (_1!936 (get!358 lt!17596)))))) (tail!125 (list!481 (charsOf!50 (_1!936 (get!358 lt!17596)))))))))

(declare-fun b!80262 () Bool)

(assert (=> b!80262 (= e!45005 (not lt!17865))))

(declare-fun b!80263 () Bool)

(declare-fun res!41814 () Bool)

(assert (=> b!80263 (=> res!41814 e!45007)))

(assert (=> b!80263 (= res!41814 (not (isEmpty!485 (tail!125 (list!481 (charsOf!50 (_1!936 (get!358 lt!17596))))))))))

(declare-fun b!80264 () Bool)

(assert (=> b!80264 (= e!45008 e!45005)))

(declare-fun c!20352 () Bool)

(assert (=> b!80264 (= c!20352 ((_ is EmptyLang!381) (regex!313 (rule!794 (_1!936 (get!358 lt!17596))))))))

(declare-fun b!80265 () Bool)

(assert (=> b!80265 (= e!45004 e!45010)))

(declare-fun res!41818 () Bool)

(assert (=> b!80265 (=> (not res!41818) (not e!45010))))

(assert (=> b!80265 (= res!41818 (not lt!17865))))

(declare-fun b!80266 () Bool)

(declare-fun res!41815 () Bool)

(assert (=> b!80266 (=> (not res!41815) (not e!45006))))

(assert (=> b!80266 (= res!41815 (not call!3703))))

(declare-fun b!80267 () Bool)

(declare-fun res!41816 () Bool)

(assert (=> b!80267 (=> res!41816 e!45004)))

(assert (=> b!80267 (= res!41816 e!45006)))

(declare-fun res!41817 () Bool)

(assert (=> b!80267 (=> (not res!41817) (not e!45006))))

(assert (=> b!80267 (= res!41817 lt!17865)))

(assert (= (and d!15082 c!20354) b!80255))

(assert (= (and d!15082 (not c!20354)) b!80261))

(assert (= (and d!15082 c!20353) b!80254))

(assert (= (and d!15082 (not c!20353)) b!80264))

(assert (= (and b!80264 c!20352) b!80262))

(assert (= (and b!80264 (not c!20352)) b!80256))

(assert (= (and b!80256 (not res!41812)) b!80267))

(assert (= (and b!80267 res!41817) b!80266))

(assert (= (and b!80266 res!41815) b!80260))

(assert (= (and b!80260 res!41813) b!80259))

(assert (= (and b!80267 (not res!41816)) b!80265))

(assert (= (and b!80265 res!41818) b!80257))

(assert (= (and b!80257 (not res!41819)) b!80263))

(assert (= (and b!80263 (not res!41814)) b!80258))

(assert (= (or b!80254 b!80257 b!80266) bm!3698))

(assert (=> bm!3698 m!54592))

(declare-fun m!55190 () Bool)

(assert (=> bm!3698 m!55190))

(assert (=> b!80259 m!54592))

(declare-fun m!55192 () Bool)

(assert (=> b!80259 m!55192))

(assert (=> b!80263 m!54592))

(declare-fun m!55194 () Bool)

(assert (=> b!80263 m!55194))

(assert (=> b!80263 m!55194))

(declare-fun m!55196 () Bool)

(assert (=> b!80263 m!55196))

(assert (=> b!80258 m!54592))

(assert (=> b!80258 m!55192))

(declare-fun m!55198 () Bool)

(assert (=> b!80255 m!55198))

(assert (=> d!15082 m!54592))

(assert (=> d!15082 m!55190))

(declare-fun m!55200 () Bool)

(assert (=> d!15082 m!55200))

(assert (=> b!80261 m!54592))

(assert (=> b!80261 m!55192))

(assert (=> b!80261 m!55192))

(declare-fun m!55202 () Bool)

(assert (=> b!80261 m!55202))

(assert (=> b!80261 m!54592))

(assert (=> b!80261 m!55194))

(assert (=> b!80261 m!55202))

(assert (=> b!80261 m!55194))

(declare-fun m!55204 () Bool)

(assert (=> b!80261 m!55204))

(assert (=> b!80260 m!54592))

(assert (=> b!80260 m!55194))

(assert (=> b!80260 m!55194))

(assert (=> b!80260 m!55196))

(assert (=> b!79898 d!15082))

(assert (=> b!79898 d!15006))

(assert (=> b!79898 d!15060))

(assert (=> b!79898 d!15062))

(declare-fun d!15084 () Bool)

(assert (=> d!15084 (= (list!481 (_2!937 lt!17635)) (list!486 (c!20256 (_2!937 lt!17635))))))

(declare-fun bs!8339 () Bool)

(assert (= bs!8339 d!15084))

(declare-fun m!55206 () Bool)

(assert (=> bs!8339 m!55206))

(assert (=> b!79943 d!15084))

(declare-fun d!15086 () Bool)

(declare-fun e!45011 () Bool)

(assert (=> d!15086 e!45011))

(declare-fun c!20356 () Bool)

(declare-fun lt!17868 () tuple2!1462)

(assert (=> d!15086 (= c!20356 (> (size!1242 (_1!938 lt!17868)) 0))))

(declare-fun e!45012 () tuple2!1462)

(assert (=> d!15086 (= lt!17868 e!45012)))

(declare-fun c!20355 () Bool)

(declare-fun lt!17866 () Option!120)

(assert (=> d!15086 (= c!20355 ((_ is Some!119) lt!17866))))

(assert (=> d!15086 (= lt!17866 (maxPrefix!49 thiss!19403 rules!2471 (list!481 (seqFromList!138 (_2!936 lt!17533)))))))

(assert (=> d!15086 (= (lexList!45 thiss!19403 rules!2471 (list!481 (seqFromList!138 (_2!936 lt!17533)))) lt!17868)))

(declare-fun b!80268 () Bool)

(assert (=> b!80268 (= e!45012 (tuple2!1463 Nil!1433 (list!481 (seqFromList!138 (_2!936 lt!17533)))))))

(declare-fun b!80269 () Bool)

(declare-fun e!45013 () Bool)

(assert (=> b!80269 (= e!45011 e!45013)))

(declare-fun res!41820 () Bool)

(assert (=> b!80269 (= res!41820 (< (size!1241 (_2!938 lt!17868)) (size!1241 (list!481 (seqFromList!138 (_2!936 lt!17533))))))))

(assert (=> b!80269 (=> (not res!41820) (not e!45013))))

(declare-fun b!80270 () Bool)

(assert (=> b!80270 (= e!45011 (= (_2!938 lt!17868) (list!481 (seqFromList!138 (_2!936 lt!17533)))))))

(declare-fun b!80271 () Bool)

(assert (=> b!80271 (= e!45013 (not (isEmpty!491 (_1!938 lt!17868))))))

(declare-fun b!80272 () Bool)

(declare-fun lt!17867 () tuple2!1462)

(assert (=> b!80272 (= e!45012 (tuple2!1463 (Cons!1433 (_1!936 (v!12802 lt!17866)) (_1!938 lt!17867)) (_2!938 lt!17867)))))

(assert (=> b!80272 (= lt!17867 (lexList!45 thiss!19403 rules!2471 (_2!936 (v!12802 lt!17866))))))

(assert (= (and d!15086 c!20355) b!80272))

(assert (= (and d!15086 (not c!20355)) b!80268))

(assert (= (and d!15086 c!20356) b!80269))

(assert (= (and d!15086 (not c!20356)) b!80270))

(assert (= (and b!80269 res!41820) b!80271))

(declare-fun m!55208 () Bool)

(assert (=> d!15086 m!55208))

(assert (=> d!15086 m!54704))

(declare-fun m!55210 () Bool)

(assert (=> d!15086 m!55210))

(declare-fun m!55212 () Bool)

(assert (=> b!80269 m!55212))

(assert (=> b!80269 m!54704))

(declare-fun m!55214 () Bool)

(assert (=> b!80269 m!55214))

(declare-fun m!55216 () Bool)

(assert (=> b!80271 m!55216))

(declare-fun m!55218 () Bool)

(assert (=> b!80272 m!55218))

(assert (=> b!79943 d!15086))

(declare-fun d!15088 () Bool)

(assert (=> d!15088 (= (list!481 (seqFromList!138 (_2!936 lt!17533))) (list!486 (c!20256 (seqFromList!138 (_2!936 lt!17533)))))))

(declare-fun bs!8340 () Bool)

(assert (= bs!8340 d!15088))

(declare-fun m!55220 () Bool)

(assert (=> bs!8340 m!55220))

(assert (=> b!79943 d!15088))

(declare-fun d!15090 () Bool)

(declare-fun c!20357 () Bool)

(assert (=> d!15090 (= c!20357 ((_ is Empty!428) (c!20256 (_2!937 lt!17539))))))

(declare-fun e!45014 () List!1436)

(assert (=> d!15090 (= (list!486 (c!20256 (_2!937 lt!17539))) e!45014)))

(declare-fun b!80273 () Bool)

(assert (=> b!80273 (= e!45014 Nil!1430)))

(declare-fun b!80275 () Bool)

(declare-fun e!45015 () List!1436)

(assert (=> b!80275 (= e!45015 (list!488 (xs!3007 (c!20256 (_2!937 lt!17539)))))))

(declare-fun b!80274 () Bool)

(assert (=> b!80274 (= e!45014 e!45015)))

(declare-fun c!20358 () Bool)

(assert (=> b!80274 (= c!20358 ((_ is Leaf!720) (c!20256 (_2!937 lt!17539))))))

(declare-fun b!80276 () Bool)

(assert (=> b!80276 (= e!45015 (++!144 (list!486 (left!1085 (c!20256 (_2!937 lt!17539)))) (list!486 (right!1415 (c!20256 (_2!937 lt!17539))))))))

(assert (= (and d!15090 c!20357) b!80273))

(assert (= (and d!15090 (not c!20357)) b!80274))

(assert (= (and b!80274 c!20358) b!80275))

(assert (= (and b!80274 (not c!20358)) b!80276))

(declare-fun m!55222 () Bool)

(assert (=> b!80275 m!55222))

(declare-fun m!55224 () Bool)

(assert (=> b!80276 m!55224))

(declare-fun m!55226 () Bool)

(assert (=> b!80276 m!55226))

(assert (=> b!80276 m!55224))

(assert (=> b!80276 m!55226))

(declare-fun m!55228 () Bool)

(assert (=> b!80276 m!55228))

(assert (=> d!14984 d!15090))

(declare-fun d!15092 () Bool)

(declare-fun lt!17869 () Int)

(assert (=> d!15092 (>= lt!17869 0)))

(declare-fun e!45016 () Int)

(assert (=> d!15092 (= lt!17869 e!45016)))

(declare-fun c!20359 () Bool)

(assert (=> d!15092 (= c!20359 ((_ is Nil!1430) lt!17639))))

(assert (=> d!15092 (= (size!1241 lt!17639) lt!17869)))

(declare-fun b!80277 () Bool)

(assert (=> b!80277 (= e!45016 0)))

(declare-fun b!80278 () Bool)

(assert (=> b!80278 (= e!45016 (+ 1 (size!1241 (t!20315 lt!17639))))))

(assert (= (and d!15092 c!20359) b!80277))

(assert (= (and d!15092 (not c!20359)) b!80278))

(declare-fun m!55230 () Bool)

(assert (=> b!80278 m!55230))

(assert (=> b!79961 d!15092))

(declare-fun d!15094 () Bool)

(declare-fun lt!17870 () Int)

(assert (=> d!15094 (>= lt!17870 0)))

(declare-fun e!45017 () Int)

(assert (=> d!15094 (= lt!17870 e!45017)))

(declare-fun c!20360 () Bool)

(assert (=> d!15094 (= c!20360 ((_ is Nil!1430) (list!481 (charsOf!50 (_1!936 lt!17533)))))))

(assert (=> d!15094 (= (size!1241 (list!481 (charsOf!50 (_1!936 lt!17533)))) lt!17870)))

(declare-fun b!80279 () Bool)

(assert (=> b!80279 (= e!45017 0)))

(declare-fun b!80280 () Bool)

(assert (=> b!80280 (= e!45017 (+ 1 (size!1241 (t!20315 (list!481 (charsOf!50 (_1!936 lt!17533)))))))))

(assert (= (and d!15094 c!20360) b!80279))

(assert (= (and d!15094 (not c!20360)) b!80280))

(declare-fun m!55232 () Bool)

(assert (=> b!80280 m!55232))

(assert (=> b!79961 d!15094))

(declare-fun d!15096 () Bool)

(declare-fun lt!17871 () Int)

(assert (=> d!15096 (>= lt!17871 0)))

(declare-fun e!45018 () Int)

(assert (=> d!15096 (= lt!17871 e!45018)))

(declare-fun c!20361 () Bool)

(assert (=> d!15096 (= c!20361 ((_ is Nil!1430) (_2!936 lt!17533)))))

(assert (=> d!15096 (= (size!1241 (_2!936 lt!17533)) lt!17871)))

(declare-fun b!80281 () Bool)

(assert (=> b!80281 (= e!45018 0)))

(declare-fun b!80282 () Bool)

(assert (=> b!80282 (= e!45018 (+ 1 (size!1241 (t!20315 (_2!936 lt!17533)))))))

(assert (= (and d!15096 c!20361) b!80281))

(assert (= (and d!15096 (not c!20361)) b!80282))

(declare-fun m!55234 () Bool)

(assert (=> b!80282 m!55234))

(assert (=> b!79961 d!15096))

(declare-fun d!15098 () Bool)

(assert (=> d!15098 (= (list!482 lt!17642) (list!485 (c!20258 lt!17642)))))

(declare-fun bs!8341 () Bool)

(assert (= bs!8341 d!15098))

(declare-fun m!55236 () Bool)

(assert (=> bs!8341 m!55236))

(assert (=> b!79965 d!15098))

(declare-fun d!15100 () Bool)

(assert (=> d!15100 (= (list!482 (seqFromList!139 (t!20318 lt!17537))) (list!485 (c!20258 (seqFromList!139 (t!20318 lt!17537)))))))

(declare-fun bs!8342 () Bool)

(assert (= bs!8342 d!15100))

(declare-fun m!55238 () Bool)

(assert (=> bs!8342 m!55238))

(assert (=> b!79965 d!15100))

(declare-fun d!15102 () Bool)

(declare-fun c!20364 () Bool)

(assert (=> d!15102 (= c!20364 ((_ is Nil!1430) lt!17638))))

(declare-fun e!45021 () (InoxSet C!1684))

(assert (=> d!15102 (= (content!74 lt!17638) e!45021)))

(declare-fun b!80287 () Bool)

(assert (=> b!80287 (= e!45021 ((as const (Array C!1684 Bool)) false))))

(declare-fun b!80288 () Bool)

(assert (=> b!80288 (= e!45021 ((_ map or) (store ((as const (Array C!1684 Bool)) false) (h!6827 lt!17638) true) (content!74 (t!20315 lt!17638))))))

(assert (= (and d!15102 c!20364) b!80287))

(assert (= (and d!15102 (not c!20364)) b!80288))

(declare-fun m!55240 () Bool)

(assert (=> b!80288 m!55240))

(declare-fun m!55242 () Bool)

(assert (=> b!80288 m!55242))

(assert (=> d!14970 d!15102))

(declare-fun d!15104 () Bool)

(declare-fun c!20365 () Bool)

(assert (=> d!15104 (= c!20365 ((_ is Nil!1430) lt!17532))))

(declare-fun e!45022 () (InoxSet C!1684))

(assert (=> d!15104 (= (content!74 lt!17532) e!45022)))

(declare-fun b!80289 () Bool)

(assert (=> b!80289 (= e!45022 ((as const (Array C!1684 Bool)) false))))

(declare-fun b!80290 () Bool)

(assert (=> b!80290 (= e!45022 ((_ map or) (store ((as const (Array C!1684 Bool)) false) (h!6827 lt!17532) true) (content!74 (t!20315 lt!17532))))))

(assert (= (and d!15104 c!20365) b!80289))

(assert (= (and d!15104 (not c!20365)) b!80290))

(declare-fun m!55244 () Bool)

(assert (=> b!80290 m!55244))

(assert (=> b!80290 m!54832))

(assert (=> d!14970 d!15104))

(declare-fun d!15106 () Bool)

(declare-fun c!20366 () Bool)

(assert (=> d!15106 (= c!20366 ((_ is Nil!1430) lt!17531))))

(declare-fun e!45023 () (InoxSet C!1684))

(assert (=> d!15106 (= (content!74 lt!17531) e!45023)))

(declare-fun b!80291 () Bool)

(assert (=> b!80291 (= e!45023 ((as const (Array C!1684 Bool)) false))))

(declare-fun b!80292 () Bool)

(assert (=> b!80292 (= e!45023 ((_ map or) (store ((as const (Array C!1684 Bool)) false) (h!6827 lt!17531) true) (content!74 (t!20315 lt!17531))))))

(assert (= (and d!15106 c!20366) b!80291))

(assert (= (and d!15106 (not c!20366)) b!80292))

(declare-fun m!55246 () Bool)

(assert (=> b!80292 m!55246))

(declare-fun m!55248 () Bool)

(assert (=> b!80292 m!55248))

(assert (=> d!14970 d!15106))

(declare-fun d!15108 () Bool)

(assert (=> d!15108 (= (isEmpty!488 lt!17535) (not ((_ is Some!119) lt!17535)))))

(assert (=> d!14928 d!15108))

(declare-fun d!15110 () Bool)

(declare-fun e!45026 () Bool)

(assert (=> d!15110 e!45026))

(declare-fun res!41823 () Bool)

(assert (=> d!15110 (=> (not res!41823) (not e!45026))))

(declare-fun lt!17874 () BalanceConc!860)

(assert (=> d!15110 (= res!41823 (= (list!481 lt!17874) input!2238))))

(declare-fun fromList!27 (List!1436) Conc!428)

(assert (=> d!15110 (= lt!17874 (BalanceConc!861 (fromList!27 input!2238)))))

(assert (=> d!15110 (= (fromListB!48 input!2238) lt!17874)))

(declare-fun b!80295 () Bool)

(assert (=> b!80295 (= e!45026 (isBalanced!87 (fromList!27 input!2238)))))

(assert (= (and d!15110 res!41823) b!80295))

(declare-fun m!55250 () Bool)

(assert (=> d!15110 m!55250))

(declare-fun m!55252 () Bool)

(assert (=> d!15110 m!55252))

(assert (=> b!80295 m!55252))

(assert (=> b!80295 m!55252))

(declare-fun m!55254 () Bool)

(assert (=> b!80295 m!55254))

(assert (=> d!14908 d!15110))

(declare-fun d!15112 () Bool)

(declare-fun e!45027 () Bool)

(assert (=> d!15112 e!45027))

(declare-fun res!41824 () Bool)

(assert (=> d!15112 (=> (not res!41824) (not e!45027))))

(declare-fun lt!17875 () BalanceConc!860)

(assert (=> d!15112 (= res!41824 (= (list!481 lt!17875) (_2!936 lt!17533)))))

(assert (=> d!15112 (= lt!17875 (BalanceConc!861 (fromList!27 (_2!936 lt!17533))))))

(assert (=> d!15112 (= (fromListB!48 (_2!936 lt!17533)) lt!17875)))

(declare-fun b!80296 () Bool)

(assert (=> b!80296 (= e!45027 (isBalanced!87 (fromList!27 (_2!936 lt!17533))))))

(assert (= (and d!15112 res!41824) b!80296))

(declare-fun m!55256 () Bool)

(assert (=> d!15112 m!55256))

(declare-fun m!55258 () Bool)

(assert (=> d!15112 m!55258))

(assert (=> b!80296 m!55258))

(assert (=> b!80296 m!55258))

(declare-fun m!55260 () Bool)

(assert (=> b!80296 m!55260))

(assert (=> d!14978 d!15112))

(declare-fun d!15114 () Bool)

(declare-fun lt!17876 () Int)

(assert (=> d!15114 (= lt!17876 (size!1242 (list!482 (_1!937 lt!17563))))))

(assert (=> d!15114 (= lt!17876 (size!1243 (c!20258 (_1!937 lt!17563))))))

(assert (=> d!15114 (= (size!1240 (_1!937 lt!17563)) lt!17876)))

(declare-fun bs!8343 () Bool)

(assert (= bs!8343 d!15114))

(assert (=> bs!8343 m!54476))

(assert (=> bs!8343 m!54476))

(declare-fun m!55262 () Bool)

(assert (=> bs!8343 m!55262))

(declare-fun m!55264 () Bool)

(assert (=> bs!8343 m!55264))

(assert (=> d!14882 d!15114))

(declare-fun b!80297 () Bool)

(declare-fun e!45028 () tuple2!1460)

(declare-fun lt!17902 () BalanceConc!860)

(assert (=> b!80297 (= e!45028 (tuple2!1461 (BalanceConc!863 Empty!429) lt!17902))))

(declare-fun b!80298 () Bool)

(declare-fun e!45031 () tuple2!1460)

(declare-fun lt!17893 () BalanceConc!860)

(declare-fun lt!17898 () Option!121)

(assert (=> b!80298 (= e!45031 (lexTailRecV2!42 thiss!19403 rules!2471 (seqFromList!138 input!2238) lt!17893 (_2!940 (v!12813 lt!17898)) (append!26 (BalanceConc!863 Empty!429) (_1!940 (v!12813 lt!17898)))))))

(declare-fun lt!17894 () tuple2!1460)

(assert (=> b!80298 (= lt!17894 (lexRec!25 thiss!19403 rules!2471 (_2!940 (v!12813 lt!17898))))))

(declare-fun lt!17889 () List!1436)

(assert (=> b!80298 (= lt!17889 (list!481 (BalanceConc!861 Empty!428)))))

(declare-fun lt!17895 () List!1436)

(assert (=> b!80298 (= lt!17895 (list!481 (charsOf!50 (_1!940 (v!12813 lt!17898)))))))

(declare-fun lt!17903 () List!1436)

(assert (=> b!80298 (= lt!17903 (list!481 (_2!940 (v!12813 lt!17898))))))

(declare-fun lt!17888 () Unit!884)

(assert (=> b!80298 (= lt!17888 (lemmaConcatAssociativity!44 lt!17889 lt!17895 lt!17903))))

(assert (=> b!80298 (= (++!144 (++!144 lt!17889 lt!17895) lt!17903) (++!144 lt!17889 (++!144 lt!17895 lt!17903)))))

(declare-fun lt!17878 () Unit!884)

(assert (=> b!80298 (= lt!17878 lt!17888)))

(declare-fun lt!17884 () Option!121)

(assert (=> b!80298 (= lt!17884 (maxPrefixZipperSequence!23 thiss!19403 rules!2471 (seqFromList!138 input!2238)))))

(declare-fun c!20369 () Bool)

(assert (=> b!80298 (= c!20369 ((_ is Some!120) lt!17884))))

(declare-fun e!45029 () tuple2!1460)

(assert (=> b!80298 (= (lexRec!25 thiss!19403 rules!2471 (seqFromList!138 input!2238)) e!45029)))

(declare-fun lt!17886 () Unit!884)

(declare-fun Unit!888 () Unit!884)

(assert (=> b!80298 (= lt!17886 Unit!888)))

(declare-fun lt!17906 () List!1439)

(assert (=> b!80298 (= lt!17906 (list!482 (BalanceConc!863 Empty!429)))))

(declare-fun lt!17885 () List!1439)

(assert (=> b!80298 (= lt!17885 (Cons!1433 (_1!940 (v!12813 lt!17898)) Nil!1433))))

(declare-fun lt!17882 () List!1439)

(assert (=> b!80298 (= lt!17882 (list!482 (_1!937 lt!17894)))))

(declare-fun lt!17904 () Unit!884)

(assert (=> b!80298 (= lt!17904 (lemmaConcatAssociativity!45 lt!17906 lt!17885 lt!17882))))

(assert (=> b!80298 (= (++!145 (++!145 lt!17906 lt!17885) lt!17882) (++!145 lt!17906 (++!145 lt!17885 lt!17882)))))

(declare-fun lt!17897 () Unit!884)

(assert (=> b!80298 (= lt!17897 lt!17904)))

(declare-fun lt!17910 () List!1436)

(assert (=> b!80298 (= lt!17910 (++!144 (list!481 (BalanceConc!861 Empty!428)) (list!481 (charsOf!50 (_1!940 (v!12813 lt!17898))))))))

(declare-fun lt!17892 () List!1436)

(assert (=> b!80298 (= lt!17892 (list!481 (_2!940 (v!12813 lt!17898))))))

(declare-fun lt!17879 () List!1439)

(assert (=> b!80298 (= lt!17879 (list!482 (append!26 (BalanceConc!863 Empty!429) (_1!940 (v!12813 lt!17898)))))))

(declare-fun lt!17905 () Unit!884)

(assert (=> b!80298 (= lt!17905 (lemmaLexThenLexPrefix!20 thiss!19403 rules!2471 lt!17910 lt!17892 lt!17879 (list!482 (_1!937 lt!17894)) (list!481 (_2!937 lt!17894))))))

(assert (=> b!80298 (= (lexList!45 thiss!19403 rules!2471 lt!17910) (tuple2!1463 lt!17879 Nil!1430))))

(declare-fun lt!17900 () Unit!884)

(assert (=> b!80298 (= lt!17900 lt!17905)))

(assert (=> b!80298 (= lt!17902 (++!146 (BalanceConc!861 Empty!428) (charsOf!50 (_1!940 (v!12813 lt!17898)))))))

(declare-fun lt!17909 () Option!121)

(assert (=> b!80298 (= lt!17909 (maxPrefixZipperSequence!23 thiss!19403 rules!2471 lt!17902))))

(declare-fun c!20370 () Bool)

(assert (=> b!80298 (= c!20370 ((_ is Some!120) lt!17909))))

(assert (=> b!80298 (= (lexRec!25 thiss!19403 rules!2471 (++!146 (BalanceConc!861 Empty!428) (charsOf!50 (_1!940 (v!12813 lt!17898))))) e!45028)))

(declare-fun lt!17877 () Unit!884)

(declare-fun Unit!889 () Unit!884)

(assert (=> b!80298 (= lt!17877 Unit!889)))

(assert (=> b!80298 (= lt!17893 (++!146 (BalanceConc!861 Empty!428) (charsOf!50 (_1!940 (v!12813 lt!17898)))))))

(declare-fun lt!17887 () List!1436)

(assert (=> b!80298 (= lt!17887 (list!481 lt!17893))))

(declare-fun lt!17901 () List!1436)

(assert (=> b!80298 (= lt!17901 (list!481 (_2!940 (v!12813 lt!17898))))))

(declare-fun lt!17899 () Unit!884)

(assert (=> b!80298 (= lt!17899 (lemmaConcatTwoListThenFSndIsSuffix!20 lt!17887 lt!17901))))

(assert (=> b!80298 (isSuffix!20 lt!17901 (++!144 lt!17887 lt!17901))))

(declare-fun lt!17881 () Unit!884)

(assert (=> b!80298 (= lt!17881 lt!17899)))

(declare-fun b!80299 () Bool)

(declare-fun lt!17908 () tuple2!1460)

(assert (=> b!80299 (= lt!17908 (lexRec!25 thiss!19403 rules!2471 (_2!940 (v!12813 lt!17884))))))

(assert (=> b!80299 (= e!45029 (tuple2!1461 (prepend!71 (_1!937 lt!17908) (_1!940 (v!12813 lt!17884))) (_2!937 lt!17908)))))

(declare-fun b!80300 () Bool)

(assert (=> b!80300 (= e!45029 (tuple2!1461 (BalanceConc!863 Empty!429) (seqFromList!138 input!2238)))))

(declare-fun lt!17891 () tuple2!1460)

(declare-fun b!80301 () Bool)

(assert (=> b!80301 (= lt!17891 (lexRec!25 thiss!19403 rules!2471 (_2!940 (v!12813 lt!17909))))))

(assert (=> b!80301 (= e!45028 (tuple2!1461 (prepend!71 (_1!937 lt!17891) (_1!940 (v!12813 lt!17909))) (_2!937 lt!17891)))))

(declare-fun b!80302 () Bool)

(assert (=> b!80302 (= e!45031 (tuple2!1461 (BalanceConc!863 Empty!429) (seqFromList!138 input!2238)))))

(declare-fun lt!17880 () tuple2!1460)

(declare-fun b!80303 () Bool)

(declare-fun e!45030 () Bool)

(assert (=> b!80303 (= e!45030 (= (list!481 (_2!937 lt!17880)) (list!481 (_2!937 (lexRec!25 thiss!19403 rules!2471 (seqFromList!138 input!2238))))))))

(declare-fun d!15116 () Bool)

(assert (=> d!15116 e!45030))

(declare-fun res!41825 () Bool)

(assert (=> d!15116 (=> (not res!41825) (not e!45030))))

(assert (=> d!15116 (= res!41825 (= (list!482 (_1!937 lt!17880)) (list!482 (_1!937 (lexRec!25 thiss!19403 rules!2471 (seqFromList!138 input!2238))))))))

(assert (=> d!15116 (= lt!17880 e!45031)))

(declare-fun c!20368 () Bool)

(assert (=> d!15116 (= c!20368 ((_ is Some!120) lt!17898))))

(assert (=> d!15116 (= lt!17898 (maxPrefixZipperSequenceV2!20 thiss!19403 rules!2471 (seqFromList!138 input!2238) (seqFromList!138 input!2238)))))

(declare-fun lt!17907 () Unit!884)

(declare-fun lt!17890 () Unit!884)

(assert (=> d!15116 (= lt!17907 lt!17890)))

(declare-fun lt!17896 () List!1436)

(declare-fun lt!17883 () List!1436)

(assert (=> d!15116 (isSuffix!20 lt!17896 (++!144 lt!17883 lt!17896))))

(assert (=> d!15116 (= lt!17890 (lemmaConcatTwoListThenFSndIsSuffix!20 lt!17883 lt!17896))))

(assert (=> d!15116 (= lt!17896 (list!481 (seqFromList!138 input!2238)))))

(assert (=> d!15116 (= lt!17883 (list!481 (BalanceConc!861 Empty!428)))))

(assert (=> d!15116 (= (lexTailRecV2!42 thiss!19403 rules!2471 (seqFromList!138 input!2238) (BalanceConc!861 Empty!428) (seqFromList!138 input!2238) (BalanceConc!863 Empty!429)) lt!17880)))

(assert (= (and d!15116 c!20368) b!80298))

(assert (= (and d!15116 (not c!20368)) b!80302))

(assert (= (and b!80298 c!20369) b!80299))

(assert (= (and b!80298 (not c!20369)) b!80300))

(assert (= (and b!80298 c!20370) b!80301))

(assert (= (and b!80298 (not c!20370)) b!80297))

(assert (= (and d!15116 res!41825) b!80303))

(declare-fun m!55266 () Bool)

(assert (=> b!80301 m!55266))

(declare-fun m!55268 () Bool)

(assert (=> b!80301 m!55268))

(declare-fun m!55270 () Bool)

(assert (=> b!80299 m!55270))

(declare-fun m!55272 () Bool)

(assert (=> b!80299 m!55272))

(declare-fun m!55274 () Bool)

(assert (=> b!80298 m!55274))

(declare-fun m!55276 () Bool)

(assert (=> b!80298 m!55276))

(declare-fun m!55278 () Bool)

(assert (=> b!80298 m!55278))

(declare-fun m!55280 () Bool)

(assert (=> b!80298 m!55280))

(declare-fun m!55282 () Bool)

(assert (=> b!80298 m!55282))

(declare-fun m!55284 () Bool)

(assert (=> b!80298 m!55284))

(assert (=> b!80298 m!54342))

(assert (=> b!80298 m!55284))

(declare-fun m!55286 () Bool)

(assert (=> b!80298 m!55286))

(declare-fun m!55288 () Bool)

(assert (=> b!80298 m!55288))

(declare-fun m!55290 () Bool)

(assert (=> b!80298 m!55290))

(declare-fun m!55292 () Bool)

(assert (=> b!80298 m!55292))

(assert (=> b!80298 m!54342))

(declare-fun m!55294 () Bool)

(assert (=> b!80298 m!55294))

(declare-fun m!55296 () Bool)

(assert (=> b!80298 m!55296))

(declare-fun m!55298 () Bool)

(assert (=> b!80298 m!55298))

(declare-fun m!55300 () Bool)

(assert (=> b!80298 m!55300))

(declare-fun m!55302 () Bool)

(assert (=> b!80298 m!55302))

(assert (=> b!80298 m!55048))

(declare-fun m!55304 () Bool)

(assert (=> b!80298 m!55304))

(declare-fun m!55306 () Bool)

(assert (=> b!80298 m!55306))

(declare-fun m!55308 () Bool)

(assert (=> b!80298 m!55308))

(assert (=> b!80298 m!55056))

(assert (=> b!80298 m!55274))

(assert (=> b!80298 m!55296))

(declare-fun m!55310 () Bool)

(assert (=> b!80298 m!55310))

(declare-fun m!55312 () Bool)

(assert (=> b!80298 m!55312))

(assert (=> b!80298 m!55306))

(declare-fun m!55314 () Bool)

(assert (=> b!80298 m!55314))

(declare-fun m!55316 () Bool)

(assert (=> b!80298 m!55316))

(declare-fun m!55318 () Bool)

(assert (=> b!80298 m!55318))

(declare-fun m!55320 () Bool)

(assert (=> b!80298 m!55320))

(declare-fun m!55322 () Bool)

(assert (=> b!80298 m!55322))

(assert (=> b!80298 m!54342))

(declare-fun m!55324 () Bool)

(assert (=> b!80298 m!55324))

(assert (=> b!80298 m!55314))

(assert (=> b!80298 m!55288))

(assert (=> b!80298 m!55300))

(assert (=> b!80298 m!55316))

(assert (=> b!80298 m!55048))

(assert (=> b!80298 m!55276))

(declare-fun m!55326 () Bool)

(assert (=> b!80298 m!55326))

(declare-fun m!55328 () Bool)

(assert (=> b!80298 m!55328))

(declare-fun m!55330 () Bool)

(assert (=> b!80298 m!55330))

(declare-fun m!55332 () Bool)

(assert (=> b!80298 m!55332))

(assert (=> b!80298 m!55328))

(assert (=> b!80298 m!55310))

(assert (=> b!80298 m!55274))

(assert (=> b!80298 m!55284))

(declare-fun m!55334 () Bool)

(assert (=> b!80298 m!55334))

(declare-fun m!55336 () Bool)

(assert (=> b!80303 m!55336))

(assert (=> b!80303 m!54342))

(assert (=> b!80303 m!55294))

(declare-fun m!55338 () Bool)

(assert (=> b!80303 m!55338))

(declare-fun m!55340 () Bool)

(assert (=> d!15116 m!55340))

(declare-fun m!55342 () Bool)

(assert (=> d!15116 m!55342))

(assert (=> d!15116 m!54342))

(assert (=> d!15116 m!55294))

(assert (=> d!15116 m!55340))

(declare-fun m!55344 () Bool)

(assert (=> d!15116 m!55344))

(assert (=> d!15116 m!54342))

(assert (=> d!15116 m!54468))

(assert (=> d!15116 m!54342))

(assert (=> d!15116 m!54342))

(declare-fun m!55346 () Bool)

(assert (=> d!15116 m!55346))

(assert (=> d!15116 m!55048))

(declare-fun m!55348 () Bool)

(assert (=> d!15116 m!55348))

(declare-fun m!55350 () Bool)

(assert (=> d!15116 m!55350))

(assert (=> d!14882 d!15116))

(declare-fun b!80304 () Bool)

(declare-fun e!45033 () Option!120)

(declare-fun lt!17912 () Option!120)

(declare-fun lt!17911 () Option!120)

(assert (=> b!80304 (= e!45033 (ite (and ((_ is None!119) lt!17912) ((_ is None!119) lt!17911)) None!119 (ite ((_ is None!119) lt!17911) lt!17912 (ite ((_ is None!119) lt!17912) lt!17911 (ite (>= (size!1235 (_1!936 (v!12802 lt!17912))) (size!1235 (_1!936 (v!12802 lt!17911)))) lt!17912 lt!17911)))))))

(declare-fun call!3704 () Option!120)

(assert (=> b!80304 (= lt!17912 call!3704)))

(assert (=> b!80304 (= lt!17911 (maxPrefix!49 thiss!19403 (t!20317 (t!20317 rules!2471)) input!2238))))

(declare-fun bm!3699 () Bool)

(assert (=> bm!3699 (= call!3704 (maxPrefixOneRule!19 thiss!19403 (h!6829 (t!20317 rules!2471)) input!2238))))

(declare-fun d!15118 () Bool)

(declare-fun e!45034 () Bool)

(assert (=> d!15118 e!45034))

(declare-fun res!41827 () Bool)

(assert (=> d!15118 (=> res!41827 e!45034)))

(declare-fun lt!17913 () Option!120)

(assert (=> d!15118 (= res!41827 (isEmpty!488 lt!17913))))

(assert (=> d!15118 (= lt!17913 e!45033)))

(declare-fun c!20371 () Bool)

(assert (=> d!15118 (= c!20371 (and ((_ is Cons!1432) (t!20317 rules!2471)) ((_ is Nil!1432) (t!20317 (t!20317 rules!2471)))))))

(declare-fun lt!17914 () Unit!884)

(declare-fun lt!17915 () Unit!884)

(assert (=> d!15118 (= lt!17914 lt!17915)))

(assert (=> d!15118 (isPrefix!21 input!2238 input!2238)))

(assert (=> d!15118 (= lt!17915 (lemmaIsPrefixRefl!21 input!2238 input!2238))))

(assert (=> d!15118 (rulesValidInductive!44 thiss!19403 (t!20317 rules!2471))))

(assert (=> d!15118 (= (maxPrefix!49 thiss!19403 (t!20317 rules!2471) input!2238) lt!17913)))

(declare-fun b!80305 () Bool)

(declare-fun e!45032 () Bool)

(assert (=> b!80305 (= e!45032 (contains!213 (t!20317 rules!2471) (rule!794 (_1!936 (get!358 lt!17913)))))))

(declare-fun b!80306 () Bool)

(assert (=> b!80306 (= e!45034 e!45032)))

(declare-fun res!41826 () Bool)

(assert (=> b!80306 (=> (not res!41826) (not e!45032))))

(assert (=> b!80306 (= res!41826 (isDefined!30 lt!17913))))

(declare-fun b!80307 () Bool)

(assert (=> b!80307 (= e!45033 call!3704)))

(declare-fun b!80308 () Bool)

(declare-fun res!41832 () Bool)

(assert (=> b!80308 (=> (not res!41832) (not e!45032))))

(assert (=> b!80308 (= res!41832 (< (size!1241 (_2!936 (get!358 lt!17913))) (size!1241 input!2238)))))

(declare-fun b!80309 () Bool)

(declare-fun res!41829 () Bool)

(assert (=> b!80309 (=> (not res!41829) (not e!45032))))

(assert (=> b!80309 (= res!41829 (= (value!11816 (_1!936 (get!358 lt!17913))) (apply!195 (transformation!313 (rule!794 (_1!936 (get!358 lt!17913)))) (seqFromList!138 (originalCharacters!364 (_1!936 (get!358 lt!17913)))))))))

(declare-fun b!80310 () Bool)

(declare-fun res!41831 () Bool)

(assert (=> b!80310 (=> (not res!41831) (not e!45032))))

(assert (=> b!80310 (= res!41831 (= (list!481 (charsOf!50 (_1!936 (get!358 lt!17913)))) (originalCharacters!364 (_1!936 (get!358 lt!17913)))))))

(declare-fun b!80311 () Bool)

(declare-fun res!41830 () Bool)

(assert (=> b!80311 (=> (not res!41830) (not e!45032))))

(assert (=> b!80311 (= res!41830 (= (++!144 (list!481 (charsOf!50 (_1!936 (get!358 lt!17913)))) (_2!936 (get!358 lt!17913))) input!2238))))

(declare-fun b!80312 () Bool)

(declare-fun res!41828 () Bool)

(assert (=> b!80312 (=> (not res!41828) (not e!45032))))

(assert (=> b!80312 (= res!41828 (matchR!23 (regex!313 (rule!794 (_1!936 (get!358 lt!17913)))) (list!481 (charsOf!50 (_1!936 (get!358 lt!17913))))))))

(assert (= (and d!15118 c!20371) b!80307))

(assert (= (and d!15118 (not c!20371)) b!80304))

(assert (= (or b!80307 b!80304) bm!3699))

(assert (= (and d!15118 (not res!41827)) b!80306))

(assert (= (and b!80306 res!41826) b!80310))

(assert (= (and b!80310 res!41831) b!80308))

(assert (= (and b!80308 res!41832) b!80311))

(assert (= (and b!80311 res!41830) b!80309))

(assert (= (and b!80309 res!41829) b!80312))

(assert (= (and b!80312 res!41828) b!80305))

(declare-fun m!55352 () Bool)

(assert (=> b!80304 m!55352))

(declare-fun m!55354 () Bool)

(assert (=> b!80308 m!55354))

(declare-fun m!55356 () Bool)

(assert (=> b!80308 m!55356))

(assert (=> b!80308 m!54586))

(declare-fun m!55358 () Bool)

(assert (=> b!80306 m!55358))

(assert (=> b!80310 m!55354))

(declare-fun m!55360 () Bool)

(assert (=> b!80310 m!55360))

(assert (=> b!80310 m!55360))

(declare-fun m!55362 () Bool)

(assert (=> b!80310 m!55362))

(declare-fun m!55364 () Bool)

(assert (=> bm!3699 m!55364))

(assert (=> b!80309 m!55354))

(declare-fun m!55366 () Bool)

(assert (=> b!80309 m!55366))

(assert (=> b!80309 m!55366))

(declare-fun m!55368 () Bool)

(assert (=> b!80309 m!55368))

(assert (=> b!80305 m!55354))

(declare-fun m!55370 () Bool)

(assert (=> b!80305 m!55370))

(assert (=> b!80312 m!55354))

(assert (=> b!80312 m!55360))

(assert (=> b!80312 m!55360))

(assert (=> b!80312 m!55362))

(assert (=> b!80312 m!55362))

(declare-fun m!55372 () Bool)

(assert (=> b!80312 m!55372))

(assert (=> b!80311 m!55354))

(assert (=> b!80311 m!55360))

(assert (=> b!80311 m!55360))

(assert (=> b!80311 m!55362))

(assert (=> b!80311 m!55362))

(declare-fun m!55374 () Bool)

(assert (=> b!80311 m!55374))

(declare-fun m!55376 () Bool)

(assert (=> d!15118 m!55376))

(assert (=> d!15118 m!54608))

(assert (=> d!15118 m!54610))

(declare-fun m!55378 () Bool)

(assert (=> d!15118 m!55378))

(assert (=> b!79890 d!15118))

(declare-fun d!15120 () Bool)

(assert (=> d!15120 (= (isEmpty!485 (list!481 (_2!937 lt!17538))) ((_ is Nil!1430) (list!481 (_2!937 lt!17538))))))

(assert (=> d!14880 d!15120))

(assert (=> d!14880 d!14932))

(declare-fun d!15122 () Bool)

(declare-fun lt!17918 () Bool)

(assert (=> d!15122 (= lt!17918 (isEmpty!485 (list!486 (c!20256 (_2!937 lt!17538)))))))

(declare-fun size!1246 (Conc!428) Int)

(assert (=> d!15122 (= lt!17918 (= (size!1246 (c!20256 (_2!937 lt!17538))) 0))))

(assert (=> d!15122 (= (isEmpty!486 (c!20256 (_2!937 lt!17538))) lt!17918)))

(declare-fun bs!8344 () Bool)

(assert (= bs!8344 d!15122))

(assert (=> bs!8344 m!54526))

(assert (=> bs!8344 m!54526))

(declare-fun m!55380 () Bool)

(assert (=> bs!8344 m!55380))

(declare-fun m!55382 () Bool)

(assert (=> bs!8344 m!55382))

(assert (=> d!14880 d!15122))

(declare-fun d!15124 () Bool)

(assert (=> d!15124 (= (list!481 (_2!937 lt!17631)) (list!486 (c!20256 (_2!937 lt!17631))))))

(declare-fun bs!8345 () Bool)

(assert (= bs!8345 d!15124))

(declare-fun m!55384 () Bool)

(assert (=> bs!8345 m!55384))

(assert (=> d!14964 d!15124))

(declare-fun d!15126 () Bool)

(declare-fun lt!17919 () BalanceConc!860)

(assert (=> d!15126 (= (list!481 lt!17919) (printList!17 thiss!19403 (list!482 (_1!937 lt!17631))))))

(assert (=> d!15126 (= lt!17919 (printTailRec!17 thiss!19403 (_1!937 lt!17631) 0 (BalanceConc!861 Empty!428)))))

(assert (=> d!15126 (= (print!44 thiss!19403 (_1!937 lt!17631)) lt!17919)))

(declare-fun bs!8346 () Bool)

(assert (= bs!8346 d!15126))

(declare-fun m!55386 () Bool)

(assert (=> bs!8346 m!55386))

(declare-fun m!55388 () Bool)

(assert (=> bs!8346 m!55388))

(assert (=> bs!8346 m!55388))

(declare-fun m!55390 () Bool)

(assert (=> bs!8346 m!55390))

(declare-fun m!55392 () Bool)

(assert (=> bs!8346 m!55392))

(assert (=> d!14964 d!15126))

(declare-fun d!15128 () Bool)

(assert (=> d!15128 (= (list!481 (print!44 thiss!19403 (_1!937 lt!17631))) (list!486 (c!20256 (print!44 thiss!19403 (_1!937 lt!17631)))))))

(declare-fun bs!8347 () Bool)

(assert (= bs!8347 d!15128))

(declare-fun m!55394 () Bool)

(assert (=> bs!8347 m!55394))

(assert (=> d!14964 d!15128))

(assert (=> d!14964 d!14988))

(assert (=> d!14964 d!14978))

(assert (=> d!14964 d!14968))

(declare-fun d!15130 () Bool)

(declare-fun lt!18046 () tuple2!1460)

(assert (=> d!15130 (= (++!144 (list!481 (print!44 thiss!19403 (_1!937 lt!18046))) (list!481 (_2!937 lt!18046))) (_2!936 lt!17533))))

(assert (=> d!15130 (= lt!18046 (lex!113 thiss!19403 rules!2471 (seqFromList!138 (_2!936 lt!17533))))))

(assert (=> d!15130 true))

(declare-fun _$31!97 () Unit!884)

(assert (=> d!15130 (= (choose!1296 thiss!19403 rules!2471 (_2!936 lt!17533)) _$31!97)))

(declare-fun bs!8355 () Bool)

(assert (= bs!8355 d!15130))

(assert (=> bs!8355 m!54358))

(assert (=> bs!8355 m!54394))

(declare-fun m!55586 () Bool)

(assert (=> bs!8355 m!55586))

(declare-fun m!55588 () Bool)

(assert (=> bs!8355 m!55588))

(declare-fun m!55590 () Bool)

(assert (=> bs!8355 m!55590))

(assert (=> bs!8355 m!54358))

(declare-fun m!55592 () Bool)

(assert (=> bs!8355 m!55592))

(assert (=> bs!8355 m!55586))

(assert (=> bs!8355 m!55588))

(assert (=> bs!8355 m!55592))

(assert (=> d!14964 d!15130))

(declare-fun b!80390 () Bool)

(declare-fun res!41849 () Bool)

(declare-fun e!45074 () Bool)

(assert (=> b!80390 (=> (not res!41849) (not e!45074))))

(declare-fun lt!18047 () List!1436)

(assert (=> b!80390 (= res!41849 (= (size!1241 lt!18047) (+ (size!1241 (list!481 (print!44 thiss!19403 (_1!937 lt!17631)))) (size!1241 (list!481 (_2!937 lt!17631))))))))

(declare-fun b!80388 () Bool)

(declare-fun e!45075 () List!1436)

(assert (=> b!80388 (= e!45075 (list!481 (_2!937 lt!17631)))))

(declare-fun b!80391 () Bool)

(assert (=> b!80391 (= e!45074 (or (not (= (list!481 (_2!937 lt!17631)) Nil!1430)) (= lt!18047 (list!481 (print!44 thiss!19403 (_1!937 lt!17631))))))))

(declare-fun b!80389 () Bool)

(assert (=> b!80389 (= e!45075 (Cons!1430 (h!6827 (list!481 (print!44 thiss!19403 (_1!937 lt!17631)))) (++!144 (t!20315 (list!481 (print!44 thiss!19403 (_1!937 lt!17631)))) (list!481 (_2!937 lt!17631)))))))

(declare-fun d!15174 () Bool)

(assert (=> d!15174 e!45074))

(declare-fun res!41848 () Bool)

(assert (=> d!15174 (=> (not res!41848) (not e!45074))))

(assert (=> d!15174 (= res!41848 (= (content!74 lt!18047) ((_ map or) (content!74 (list!481 (print!44 thiss!19403 (_1!937 lt!17631)))) (content!74 (list!481 (_2!937 lt!17631))))))))

(assert (=> d!15174 (= lt!18047 e!45075)))

(declare-fun c!20403 () Bool)

(assert (=> d!15174 (= c!20403 ((_ is Nil!1430) (list!481 (print!44 thiss!19403 (_1!937 lt!17631)))))))

(assert (=> d!15174 (= (++!144 (list!481 (print!44 thiss!19403 (_1!937 lt!17631))) (list!481 (_2!937 lt!17631))) lt!18047)))

(assert (= (and d!15174 c!20403) b!80388))

(assert (= (and d!15174 (not c!20403)) b!80389))

(assert (= (and d!15174 res!41848) b!80390))

(assert (= (and b!80390 res!41849) b!80391))

(declare-fun m!55594 () Bool)

(assert (=> b!80390 m!55594))

(assert (=> b!80390 m!54688))

(declare-fun m!55596 () Bool)

(assert (=> b!80390 m!55596))

(assert (=> b!80390 m!54690))

(declare-fun m!55598 () Bool)

(assert (=> b!80390 m!55598))

(assert (=> b!80389 m!54690))

(declare-fun m!55600 () Bool)

(assert (=> b!80389 m!55600))

(declare-fun m!55602 () Bool)

(assert (=> d!15174 m!55602))

(assert (=> d!15174 m!54688))

(declare-fun m!55604 () Bool)

(assert (=> d!15174 m!55604))

(assert (=> d!15174 m!54690))

(declare-fun m!55606 () Bool)

(assert (=> d!15174 m!55606))

(assert (=> d!14964 d!15174))

(declare-fun d!15176 () Bool)

(assert (=> d!15176 (= (list!482 (seqFromList!139 ($colon$colon!22 (t!20318 lt!17537) (h!6830 lt!17537)))) (list!485 (c!20258 (seqFromList!139 ($colon$colon!22 (t!20318 lt!17537) (h!6830 lt!17537))))))))

(declare-fun bs!8356 () Bool)

(assert (= bs!8356 d!15176))

(declare-fun m!55608 () Bool)

(assert (=> bs!8356 m!55608))

(assert (=> d!14958 d!15176))

(assert (=> d!14958 d!14930))

(assert (=> d!14958 d!14960))

(assert (=> d!14958 d!14976))

(declare-fun d!15178 () Bool)

(assert (=> d!15178 (= ($colon$colon!22 (t!20318 lt!17537) (h!6830 lt!17537)) (Cons!1433 (h!6830 lt!17537) (t!20318 lt!17537)))))

(assert (=> d!14958 d!15178))

(declare-fun d!15180 () Bool)

(assert (=> d!15180 (= (list!482 (_1!937 lt!17538)) (list!482 (prepend!71 (seqFromList!139 (t!20318 lt!17537)) (h!6830 lt!17537))))))

(assert (=> d!15180 true))

(declare-fun _$1!9859 () Unit!884)

(assert (=> d!15180 (= (choose!1295 (h!6830 lt!17537) (t!20318 lt!17537) (_1!937 lt!17538)) _$1!9859)))

(declare-fun bs!8357 () Bool)

(assert (= bs!8357 d!15180))

(assert (=> bs!8357 m!54346))

(assert (=> bs!8357 m!54360))

(assert (=> bs!8357 m!54360))

(assert (=> bs!8357 m!54362))

(assert (=> bs!8357 m!54362))

(assert (=> bs!8357 m!54380))

(assert (=> d!14958 d!15180))

(declare-fun d!15182 () Bool)

(assert (=> d!15182 (= (seqFromList!139 ($colon$colon!22 (t!20318 lt!17537) (h!6830 lt!17537))) (fromListB!49 ($colon$colon!22 (t!20318 lt!17537) (h!6830 lt!17537))))))

(declare-fun bs!8358 () Bool)

(assert (= bs!8358 d!15182))

(assert (=> bs!8358 m!54672))

(declare-fun m!55610 () Bool)

(assert (=> bs!8358 m!55610))

(assert (=> d!14958 d!15182))

(assert (=> d!14958 d!14986))

(declare-fun d!15184 () Bool)

(declare-fun res!41854 () Bool)

(declare-fun e!45080 () Bool)

(assert (=> d!15184 (=> res!41854 e!45080)))

(assert (=> d!15184 (= res!41854 ((_ is Nil!1432) rules!2471))))

(assert (=> d!15184 (= (noDuplicateTag!65 thiss!19403 rules!2471 Nil!1435) e!45080)))

(declare-fun b!80396 () Bool)

(declare-fun e!45081 () Bool)

(assert (=> b!80396 (= e!45080 e!45081)))

(declare-fun res!41855 () Bool)

(assert (=> b!80396 (=> (not res!41855) (not e!45081))))

(declare-fun contains!214 (List!1441 String!1906) Bool)

(assert (=> b!80396 (= res!41855 (not (contains!214 Nil!1435 (tag!491 (h!6829 rules!2471)))))))

(declare-fun b!80397 () Bool)

(assert (=> b!80397 (= e!45081 (noDuplicateTag!65 thiss!19403 (t!20317 rules!2471) (Cons!1435 (tag!491 (h!6829 rules!2471)) Nil!1435)))))

(assert (= (and d!15184 (not res!41854)) b!80396))

(assert (= (and b!80396 res!41855) b!80397))

(declare-fun m!55612 () Bool)

(assert (=> b!80396 m!55612))

(declare-fun m!55614 () Bool)

(assert (=> b!80397 m!55614))

(assert (=> b!79968 d!15184))

(declare-fun d!15186 () Bool)

(declare-fun lt!18050 () Bool)

(declare-fun content!75 (List!1438) (InoxSet Rule!426))

(assert (=> d!15186 (= lt!18050 (select (content!75 rules!2471) (rule!794 (_1!936 (get!358 lt!17596)))))))

(declare-fun e!45086 () Bool)

(assert (=> d!15186 (= lt!18050 e!45086)))

(declare-fun res!41861 () Bool)

(assert (=> d!15186 (=> (not res!41861) (not e!45086))))

(assert (=> d!15186 (= res!41861 ((_ is Cons!1432) rules!2471))))

(assert (=> d!15186 (= (contains!213 rules!2471 (rule!794 (_1!936 (get!358 lt!17596)))) lt!18050)))

(declare-fun b!80402 () Bool)

(declare-fun e!45087 () Bool)

(assert (=> b!80402 (= e!45086 e!45087)))

(declare-fun res!41860 () Bool)

(assert (=> b!80402 (=> res!41860 e!45087)))

(assert (=> b!80402 (= res!41860 (= (h!6829 rules!2471) (rule!794 (_1!936 (get!358 lt!17596)))))))

(declare-fun b!80403 () Bool)

(assert (=> b!80403 (= e!45087 (contains!213 (t!20317 rules!2471) (rule!794 (_1!936 (get!358 lt!17596)))))))

(assert (= (and d!15186 res!41861) b!80402))

(assert (= (and b!80402 (not res!41860)) b!80403))

(declare-fun m!55616 () Bool)

(assert (=> d!15186 m!55616))

(declare-fun m!55618 () Bool)

(assert (=> d!15186 m!55618))

(declare-fun m!55620 () Bool)

(assert (=> b!80403 m!55620))

(assert (=> b!79891 d!15186))

(assert (=> b!79891 d!15006))

(declare-fun b!80407 () Bool)

(declare-fun e!45089 () List!1439)

(assert (=> b!80407 (= e!45089 (++!145 (list!485 (left!1086 (c!20258 (_1!937 lt!17538)))) (list!485 (right!1416 (c!20258 (_1!937 lt!17538))))))))

(declare-fun d!15188 () Bool)

(declare-fun c!20404 () Bool)

(assert (=> d!15188 (= c!20404 ((_ is Empty!429) (c!20258 (_1!937 lt!17538))))))

(declare-fun e!45088 () List!1439)

(assert (=> d!15188 (= (list!485 (c!20258 (_1!937 lt!17538))) e!45088)))

(declare-fun b!80406 () Bool)

(assert (=> b!80406 (= e!45089 (list!487 (xs!3008 (c!20258 (_1!937 lt!17538)))))))

(declare-fun b!80405 () Bool)

(assert (=> b!80405 (= e!45088 e!45089)))

(declare-fun c!20405 () Bool)

(assert (=> b!80405 (= c!20405 ((_ is Leaf!721) (c!20258 (_1!937 lt!17538))))))

(declare-fun b!80404 () Bool)

(assert (=> b!80404 (= e!45088 Nil!1433)))

(assert (= (and d!15188 c!20404) b!80404))

(assert (= (and d!15188 (not c!20404)) b!80405))

(assert (= (and b!80405 c!20405) b!80406))

(assert (= (and b!80405 (not c!20405)) b!80407))

(declare-fun m!55622 () Bool)

(assert (=> b!80407 m!55622))

(declare-fun m!55624 () Bool)

(assert (=> b!80407 m!55624))

(assert (=> b!80407 m!55622))

(assert (=> b!80407 m!55624))

(declare-fun m!55626 () Bool)

(assert (=> b!80407 m!55626))

(declare-fun m!55628 () Bool)

(assert (=> b!80406 m!55628))

(assert (=> d!14930 d!15188))

(declare-fun d!15190 () Bool)

(declare-fun e!45092 () Bool)

(assert (=> d!15190 e!45092))

(declare-fun res!41864 () Bool)

(assert (=> d!15190 (=> (not res!41864) (not e!45092))))

(declare-fun lt!18053 () BalanceConc!862)

(assert (=> d!15190 (= res!41864 (= (list!482 lt!18053) (t!20318 lt!17537)))))

(declare-fun fromList!28 (List!1439) Conc!429)

(assert (=> d!15190 (= lt!18053 (BalanceConc!863 (fromList!28 (t!20318 lt!17537))))))

(assert (=> d!15190 (= (fromListB!49 (t!20318 lt!17537)) lt!18053)))

(declare-fun b!80410 () Bool)

(assert (=> b!80410 (= e!45092 (isBalanced!86 (fromList!28 (t!20318 lt!17537))))))

(assert (= (and d!15190 res!41864) b!80410))

(declare-fun m!55630 () Bool)

(assert (=> d!15190 m!55630))

(declare-fun m!55632 () Bool)

(assert (=> d!15190 m!55632))

(assert (=> b!80410 m!55632))

(assert (=> b!80410 m!55632))

(declare-fun m!55634 () Bool)

(assert (=> b!80410 m!55634))

(assert (=> d!14960 d!15190))

(declare-fun d!15192 () Bool)

(assert (=> d!15192 (= (inv!1779 (tag!491 (h!6829 (t!20317 rules!2471)))) (= (mod (str.len (value!11790 (tag!491 (h!6829 (t!20317 rules!2471))))) 2) 0))))

(assert (=> b!79978 d!15192))

(declare-fun d!15194 () Bool)

(declare-fun res!41865 () Bool)

(declare-fun e!45093 () Bool)

(assert (=> d!15194 (=> (not res!41865) (not e!45093))))

(assert (=> d!15194 (= res!41865 (semiInverseModEq!57 (toChars!687 (transformation!313 (h!6829 (t!20317 rules!2471)))) (toValue!828 (transformation!313 (h!6829 (t!20317 rules!2471))))))))

(assert (=> d!15194 (= (inv!1781 (transformation!313 (h!6829 (t!20317 rules!2471)))) e!45093)))

(declare-fun b!80411 () Bool)

(assert (=> b!80411 (= e!45093 (equivClasses!53 (toChars!687 (transformation!313 (h!6829 (t!20317 rules!2471)))) (toValue!828 (transformation!313 (h!6829 (t!20317 rules!2471))))))))

(assert (= (and d!15194 res!41865) b!80411))

(declare-fun m!55636 () Bool)

(assert (=> d!15194 m!55636))

(declare-fun m!55638 () Bool)

(assert (=> b!80411 m!55638))

(assert (=> b!79978 d!15194))

(declare-fun d!15196 () Bool)

(declare-fun lt!18054 () Int)

(assert (=> d!15196 (>= lt!18054 0)))

(declare-fun e!45094 () Int)

(assert (=> d!15196 (= lt!18054 e!45094)))

(declare-fun c!20407 () Bool)

(assert (=> d!15196 (= c!20407 ((_ is Nil!1430) lt!17638))))

(assert (=> d!15196 (= (size!1241 lt!17638) lt!18054)))

(declare-fun b!80412 () Bool)

(assert (=> b!80412 (= e!45094 0)))

(declare-fun b!80413 () Bool)

(assert (=> b!80413 (= e!45094 (+ 1 (size!1241 (t!20315 lt!17638))))))

(assert (= (and d!15196 c!20407) b!80412))

(assert (= (and d!15196 (not c!20407)) b!80413))

(declare-fun m!55640 () Bool)

(assert (=> b!80413 m!55640))

(assert (=> b!79957 d!15196))

(declare-fun d!15198 () Bool)

(declare-fun lt!18055 () Int)

(assert (=> d!15198 (>= lt!18055 0)))

(declare-fun e!45095 () Int)

(assert (=> d!15198 (= lt!18055 e!45095)))

(declare-fun c!20408 () Bool)

(assert (=> d!15198 (= c!20408 ((_ is Nil!1430) lt!17532))))

(assert (=> d!15198 (= (size!1241 lt!17532) lt!18055)))

(declare-fun b!80414 () Bool)

(assert (=> b!80414 (= e!45095 0)))

(declare-fun b!80415 () Bool)

(assert (=> b!80415 (= e!45095 (+ 1 (size!1241 (t!20315 lt!17532))))))

(assert (= (and d!15198 c!20408) b!80414))

(assert (= (and d!15198 (not c!20408)) b!80415))

(assert (=> b!80415 m!54826))

(assert (=> b!79957 d!15198))

(declare-fun d!15200 () Bool)

(declare-fun lt!18056 () Int)

(assert (=> d!15200 (>= lt!18056 0)))

(declare-fun e!45096 () Int)

(assert (=> d!15200 (= lt!18056 e!45096)))

(declare-fun c!20409 () Bool)

(assert (=> d!15200 (= c!20409 ((_ is Nil!1430) lt!17531))))

(assert (=> d!15200 (= (size!1241 lt!17531) lt!18056)))

(declare-fun b!80416 () Bool)

(assert (=> b!80416 (= e!45096 0)))

(declare-fun b!80417 () Bool)

(assert (=> b!80417 (= e!45096 (+ 1 (size!1241 (t!20315 lt!17531))))))

(assert (= (and d!15200 c!20409) b!80416))

(assert (= (and d!15200 (not c!20409)) b!80417))

(declare-fun m!55642 () Bool)

(assert (=> b!80417 m!55642))

(assert (=> b!79957 d!15200))

(assert (=> b!79895 d!15006))

(declare-fun d!15202 () Bool)

(declare-fun dynLambda!350 (Int BalanceConc!860) TokenValue!303)

(assert (=> d!15202 (= (apply!195 (transformation!313 (rule!794 (_1!936 (get!358 lt!17596)))) (seqFromList!138 (originalCharacters!364 (_1!936 (get!358 lt!17596))))) (dynLambda!350 (toValue!828 (transformation!313 (rule!794 (_1!936 (get!358 lt!17596))))) (seqFromList!138 (originalCharacters!364 (_1!936 (get!358 lt!17596))))))))

(declare-fun b_lambda!915 () Bool)

(assert (=> (not b_lambda!915) (not d!15202)))

(declare-fun tb!2475 () Bool)

(declare-fun t!20350 () Bool)

(assert (=> (and b!79782 (= (toValue!828 (transformation!313 (h!6829 rules!2471))) (toValue!828 (transformation!313 (rule!794 (_1!936 (get!358 lt!17596)))))) t!20350) tb!2475))

(declare-fun result!3582 () Bool)

(declare-fun inv!21 (TokenValue!303) Bool)

(assert (=> tb!2475 (= result!3582 (inv!21 (dynLambda!350 (toValue!828 (transformation!313 (rule!794 (_1!936 (get!358 lt!17596))))) (seqFromList!138 (originalCharacters!364 (_1!936 (get!358 lt!17596)))))))))

(declare-fun m!55644 () Bool)

(assert (=> tb!2475 m!55644))

(assert (=> d!15202 t!20350))

(declare-fun b_and!3715 () Bool)

(assert (= b_and!3687 (and (=> t!20350 result!3582) b_and!3715)))

(declare-fun tb!2477 () Bool)

(declare-fun t!20352 () Bool)

(assert (=> (and b!79979 (= (toValue!828 (transformation!313 (h!6829 (t!20317 rules!2471)))) (toValue!828 (transformation!313 (rule!794 (_1!936 (get!358 lt!17596)))))) t!20352) tb!2477))

(declare-fun result!3586 () Bool)

(assert (= result!3586 result!3582))

(assert (=> d!15202 t!20352))

(declare-fun b_and!3717 () Bool)

(assert (= b_and!3699 (and (=> t!20352 result!3586) b_and!3717)))

(assert (=> d!15202 m!54596))

(declare-fun m!55646 () Bool)

(assert (=> d!15202 m!55646))

(assert (=> b!79895 d!15202))

(declare-fun d!15204 () Bool)

(assert (=> d!15204 (= (seqFromList!138 (originalCharacters!364 (_1!936 (get!358 lt!17596)))) (fromListB!48 (originalCharacters!364 (_1!936 (get!358 lt!17596)))))))

(declare-fun bs!8359 () Bool)

(assert (= bs!8359 d!15204))

(declare-fun m!55648 () Bool)

(assert (=> bs!8359 m!55648))

(assert (=> b!79895 d!15204))

(declare-fun d!15206 () Bool)

(declare-fun c!20410 () Bool)

(assert (=> d!15206 (= c!20410 ((_ is Empty!428) (c!20256 (print!44 thiss!19403 (_1!937 lt!17539)))))))

(declare-fun e!45100 () List!1436)

(assert (=> d!15206 (= (list!486 (c!20256 (print!44 thiss!19403 (_1!937 lt!17539)))) e!45100)))

(declare-fun b!80420 () Bool)

(assert (=> b!80420 (= e!45100 Nil!1430)))

(declare-fun b!80422 () Bool)

(declare-fun e!45101 () List!1436)

(assert (=> b!80422 (= e!45101 (list!488 (xs!3007 (c!20256 (print!44 thiss!19403 (_1!937 lt!17539))))))))

(declare-fun b!80421 () Bool)

(assert (=> b!80421 (= e!45100 e!45101)))

(declare-fun c!20411 () Bool)

(assert (=> b!80421 (= c!20411 ((_ is Leaf!720) (c!20256 (print!44 thiss!19403 (_1!937 lt!17539)))))))

(declare-fun b!80423 () Bool)

(assert (=> b!80423 (= e!45101 (++!144 (list!486 (left!1085 (c!20256 (print!44 thiss!19403 (_1!937 lt!17539))))) (list!486 (right!1415 (c!20256 (print!44 thiss!19403 (_1!937 lt!17539)))))))))

(assert (= (and d!15206 c!20410) b!80420))

(assert (= (and d!15206 (not c!20410)) b!80421))

(assert (= (and b!80421 c!20411) b!80422))

(assert (= (and b!80421 (not c!20411)) b!80423))

(declare-fun m!55650 () Bool)

(assert (=> b!80422 m!55650))

(declare-fun m!55652 () Bool)

(assert (=> b!80423 m!55652))

(declare-fun m!55654 () Bool)

(assert (=> b!80423 m!55654))

(assert (=> b!80423 m!55652))

(assert (=> b!80423 m!55654))

(declare-fun m!55656 () Bool)

(assert (=> b!80423 m!55656))

(assert (=> d!14972 d!15206))

(declare-fun b!80426 () Bool)

(declare-fun res!41867 () Bool)

(declare-fun e!45102 () Bool)

(assert (=> b!80426 (=> (not res!41867) (not e!45102))))

(declare-fun lt!18057 () List!1436)

(assert (=> b!80426 (= res!41867 (= (size!1241 lt!18057) (+ (size!1241 (list!481 (charsOf!50 (_1!936 (get!358 lt!17596))))) (size!1241 (_2!936 (get!358 lt!17596))))))))

(declare-fun b!80424 () Bool)

(declare-fun e!45103 () List!1436)

(assert (=> b!80424 (= e!45103 (_2!936 (get!358 lt!17596)))))

(declare-fun b!80427 () Bool)

(assert (=> b!80427 (= e!45102 (or (not (= (_2!936 (get!358 lt!17596)) Nil!1430)) (= lt!18057 (list!481 (charsOf!50 (_1!936 (get!358 lt!17596)))))))))

(declare-fun b!80425 () Bool)

(assert (=> b!80425 (= e!45103 (Cons!1430 (h!6827 (list!481 (charsOf!50 (_1!936 (get!358 lt!17596))))) (++!144 (t!20315 (list!481 (charsOf!50 (_1!936 (get!358 lt!17596))))) (_2!936 (get!358 lt!17596)))))))

(declare-fun d!15208 () Bool)

(assert (=> d!15208 e!45102))

(declare-fun res!41866 () Bool)

(assert (=> d!15208 (=> (not res!41866) (not e!45102))))

(assert (=> d!15208 (= res!41866 (= (content!74 lt!18057) ((_ map or) (content!74 (list!481 (charsOf!50 (_1!936 (get!358 lt!17596))))) (content!74 (_2!936 (get!358 lt!17596))))))))

(assert (=> d!15208 (= lt!18057 e!45103)))

(declare-fun c!20412 () Bool)

(assert (=> d!15208 (= c!20412 ((_ is Nil!1430) (list!481 (charsOf!50 (_1!936 (get!358 lt!17596))))))))

(assert (=> d!15208 (= (++!144 (list!481 (charsOf!50 (_1!936 (get!358 lt!17596)))) (_2!936 (get!358 lt!17596))) lt!18057)))

(assert (= (and d!15208 c!20412) b!80424))

(assert (= (and d!15208 (not c!20412)) b!80425))

(assert (= (and d!15208 res!41866) b!80426))

(assert (= (and b!80426 res!41867) b!80427))

(declare-fun m!55658 () Bool)

(assert (=> b!80426 m!55658))

(assert (=> b!80426 m!54592))

(declare-fun m!55660 () Bool)

(assert (=> b!80426 m!55660))

(assert (=> b!80426 m!54584))

(declare-fun m!55662 () Bool)

(assert (=> b!80425 m!55662))

(declare-fun m!55664 () Bool)

(assert (=> d!15208 m!55664))

(assert (=> d!15208 m!54592))

(declare-fun m!55666 () Bool)

(assert (=> d!15208 m!55666))

(declare-fun m!55668 () Bool)

(assert (=> d!15208 m!55668))

(assert (=> b!79897 d!15208))

(assert (=> b!79897 d!15060))

(assert (=> b!79897 d!15062))

(assert (=> b!79897 d!15006))

(declare-fun d!15210 () Bool)

(declare-fun c!20413 () Bool)

(assert (=> d!15210 (= c!20413 ((_ is Nil!1430) lt!17639))))

(declare-fun e!45104 () (InoxSet C!1684))

(assert (=> d!15210 (= (content!74 lt!17639) e!45104)))

(declare-fun b!80428 () Bool)

(assert (=> b!80428 (= e!45104 ((as const (Array C!1684 Bool)) false))))

(declare-fun b!80429 () Bool)

(assert (=> b!80429 (= e!45104 ((_ map or) (store ((as const (Array C!1684 Bool)) false) (h!6827 lt!17639) true) (content!74 (t!20315 lt!17639))))))

(assert (= (and d!15210 c!20413) b!80428))

(assert (= (and d!15210 (not c!20413)) b!80429))

(declare-fun m!55670 () Bool)

(assert (=> b!80429 m!55670))

(declare-fun m!55672 () Bool)

(assert (=> b!80429 m!55672))

(assert (=> d!14982 d!15210))

(declare-fun d!15212 () Bool)

(declare-fun c!20414 () Bool)

(assert (=> d!15212 (= c!20414 ((_ is Nil!1430) (list!481 (charsOf!50 (_1!936 lt!17533)))))))

(declare-fun e!45105 () (InoxSet C!1684))

(assert (=> d!15212 (= (content!74 (list!481 (charsOf!50 (_1!936 lt!17533)))) e!45105)))

(declare-fun b!80430 () Bool)

(assert (=> b!80430 (= e!45105 ((as const (Array C!1684 Bool)) false))))

(declare-fun b!80431 () Bool)

(assert (=> b!80431 (= e!45105 ((_ map or) (store ((as const (Array C!1684 Bool)) false) (h!6827 (list!481 (charsOf!50 (_1!936 lt!17533)))) true) (content!74 (t!20315 (list!481 (charsOf!50 (_1!936 lt!17533)))))))))

(assert (= (and d!15212 c!20414) b!80430))

(assert (= (and d!15212 (not c!20414)) b!80431))

(declare-fun m!55674 () Bool)

(assert (=> b!80431 m!55674))

(declare-fun m!55676 () Bool)

(assert (=> b!80431 m!55676))

(assert (=> d!14982 d!15212))

(declare-fun d!15214 () Bool)

(declare-fun c!20415 () Bool)

(assert (=> d!15214 (= c!20415 ((_ is Nil!1430) (_2!936 lt!17533)))))

(declare-fun e!45106 () (InoxSet C!1684))

(assert (=> d!15214 (= (content!74 (_2!936 lt!17533)) e!45106)))

(declare-fun b!80432 () Bool)

(assert (=> b!80432 (= e!45106 ((as const (Array C!1684 Bool)) false))))

(declare-fun b!80433 () Bool)

(assert (=> b!80433 (= e!45106 ((_ map or) (store ((as const (Array C!1684 Bool)) false) (h!6827 (_2!936 lt!17533)) true) (content!74 (t!20315 (_2!936 lt!17533)))))))

(assert (= (and d!15214 c!20415) b!80432))

(assert (= (and d!15214 (not c!20415)) b!80433))

(declare-fun m!55678 () Bool)

(assert (=> b!80433 m!55678))

(declare-fun m!55680 () Bool)

(assert (=> b!80433 m!55680))

(assert (=> d!14982 d!15214))

(declare-fun d!15216 () Bool)

(assert (=> d!15216 (= (list!482 (_1!937 lt!17563)) (list!485 (c!20258 (_1!937 lt!17563))))))

(declare-fun bs!8360 () Bool)

(assert (= bs!8360 d!15216))

(declare-fun m!55682 () Bool)

(assert (=> bs!8360 m!55682))

(assert (=> b!79828 d!15216))

(assert (=> b!79828 d!15074))

(assert (=> b!79828 d!15076))

(declare-fun d!15218 () Bool)

(declare-fun c!20416 () Bool)

(assert (=> d!15218 (= c!20416 ((_ is Empty!428) (c!20256 (_2!937 lt!17538))))))

(declare-fun e!45107 () List!1436)

(assert (=> d!15218 (= (list!486 (c!20256 (_2!937 lt!17538))) e!45107)))

(declare-fun b!80434 () Bool)

(assert (=> b!80434 (= e!45107 Nil!1430)))

(declare-fun b!80436 () Bool)

(declare-fun e!45108 () List!1436)

(assert (=> b!80436 (= e!45108 (list!488 (xs!3007 (c!20256 (_2!937 lt!17538)))))))

(declare-fun b!80435 () Bool)

(assert (=> b!80435 (= e!45107 e!45108)))

(declare-fun c!20417 () Bool)

(assert (=> b!80435 (= c!20417 ((_ is Leaf!720) (c!20256 (_2!937 lt!17538))))))

(declare-fun b!80437 () Bool)

(assert (=> b!80437 (= e!45108 (++!144 (list!486 (left!1085 (c!20256 (_2!937 lt!17538)))) (list!486 (right!1415 (c!20256 (_2!937 lt!17538))))))))

(assert (= (and d!15218 c!20416) b!80434))

(assert (= (and d!15218 (not c!20416)) b!80435))

(assert (= (and b!80435 c!20417) b!80436))

(assert (= (and b!80435 (not c!20417)) b!80437))

(declare-fun m!55684 () Bool)

(assert (=> b!80436 m!55684))

(declare-fun m!55686 () Bool)

(assert (=> b!80437 m!55686))

(declare-fun m!55688 () Bool)

(assert (=> b!80437 m!55688))

(assert (=> b!80437 m!55686))

(assert (=> b!80437 m!55688))

(declare-fun m!55690 () Bool)

(assert (=> b!80437 m!55690))

(assert (=> d!14932 d!15218))

(declare-fun b!80441 () Bool)

(declare-fun e!45110 () List!1439)

(assert (=> b!80441 (= e!45110 (++!145 (list!485 (left!1086 (c!20258 (prepend!71 (seqFromList!139 (t!20318 lt!17537)) (h!6830 lt!17537))))) (list!485 (right!1416 (c!20258 (prepend!71 (seqFromList!139 (t!20318 lt!17537)) (h!6830 lt!17537)))))))))

(declare-fun d!15220 () Bool)

(declare-fun c!20418 () Bool)

(assert (=> d!15220 (= c!20418 ((_ is Empty!429) (c!20258 (prepend!71 (seqFromList!139 (t!20318 lt!17537)) (h!6830 lt!17537)))))))

(declare-fun e!45109 () List!1439)

(assert (=> d!15220 (= (list!485 (c!20258 (prepend!71 (seqFromList!139 (t!20318 lt!17537)) (h!6830 lt!17537)))) e!45109)))

(declare-fun b!80440 () Bool)

(assert (=> b!80440 (= e!45110 (list!487 (xs!3008 (c!20258 (prepend!71 (seqFromList!139 (t!20318 lt!17537)) (h!6830 lt!17537))))))))

(declare-fun b!80439 () Bool)

(assert (=> b!80439 (= e!45109 e!45110)))

(declare-fun c!20419 () Bool)

(assert (=> b!80439 (= c!20419 ((_ is Leaf!721) (c!20258 (prepend!71 (seqFromList!139 (t!20318 lt!17537)) (h!6830 lt!17537)))))))

(declare-fun b!80438 () Bool)

(assert (=> b!80438 (= e!45109 Nil!1433)))

(assert (= (and d!15220 c!20418) b!80438))

(assert (= (and d!15220 (not c!20418)) b!80439))

(assert (= (and b!80439 c!20419) b!80440))

(assert (= (and b!80439 (not c!20419)) b!80441))

(declare-fun m!55692 () Bool)

(assert (=> b!80441 m!55692))

(declare-fun m!55694 () Bool)

(assert (=> b!80441 m!55694))

(assert (=> b!80441 m!55692))

(assert (=> b!80441 m!55694))

(declare-fun m!55696 () Bool)

(assert (=> b!80441 m!55696))

(declare-fun m!55698 () Bool)

(assert (=> b!80440 m!55698))

(assert (=> d!14976 d!15220))

(declare-fun d!15222 () Bool)

(assert (=> d!15222 (= (list!482 (_1!937 lt!17635)) (list!485 (c!20258 (_1!937 lt!17635))))))

(declare-fun bs!8361 () Bool)

(assert (= bs!8361 d!15222))

(declare-fun m!55700 () Bool)

(assert (=> bs!8361 m!55700))

(assert (=> b!79942 d!15222))

(assert (=> b!79942 d!15086))

(assert (=> b!79942 d!15088))

(assert (=> d!14950 d!14990))

(declare-fun d!15224 () Bool)

(assert (=> d!15224 (= (seqFromList!138 (_2!936 (get!358 (maxPrefix!49 thiss!19403 rules!2471 input!2238)))) (fromListB!48 (_2!936 (get!358 (maxPrefix!49 thiss!19403 rules!2471 input!2238)))))))

(declare-fun bs!8362 () Bool)

(assert (= bs!8362 d!15224))

(declare-fun m!55702 () Bool)

(assert (=> bs!8362 m!55702))

(assert (=> d!14950 d!15224))

(assert (=> d!14950 d!14962))

(declare-fun d!15226 () Bool)

(declare-fun lt!18067 () tuple2!1460)

(assert (=> d!15226 (= (tuple2!1463 (list!482 (_1!937 lt!18067)) (list!481 (_2!937 lt!18067))) (tuple2!1463 (tail!124 lt!17537) lt!17534))))

(assert (=> d!15226 (= lt!18067 (lex!113 thiss!19403 rules!2471 (seqFromList!138 (_2!936 (get!358 (maxPrefix!49 thiss!19403 rules!2471 input!2238))))))))

(assert (=> d!15226 true))

(declare-fun _$54!153 () Unit!884)

(assert (=> d!15226 (= (choose!1294 thiss!19403 rules!2471 input!2238 lt!17537 lt!17534) _$54!153)))

(declare-fun bs!8366 () Bool)

(assert (= bs!8366 d!15226))

(declare-fun m!55780 () Bool)

(assert (=> bs!8366 m!55780))

(assert (=> bs!8366 m!54388))

(assert (=> bs!8366 m!54366))

(assert (=> bs!8366 m!54388))

(assert (=> bs!8366 m!54660))

(assert (=> bs!8366 m!54652))

(assert (=> bs!8366 m!54652))

(assert (=> bs!8366 m!54654))

(declare-fun m!55782 () Bool)

(assert (=> bs!8366 m!55782))

(assert (=> d!14950 d!15226))

(declare-fun d!15252 () Bool)

(assert (=> d!15252 (= (list!481 (_2!937 lt!17619)) (list!486 (c!20256 (_2!937 lt!17619))))))

(declare-fun bs!8367 () Bool)

(assert (= bs!8367 d!15252))

(declare-fun m!55784 () Bool)

(assert (=> bs!8367 m!55784))

(assert (=> d!14950 d!15252))

(declare-fun d!15254 () Bool)

(assert (=> d!15254 (= (get!358 (maxPrefix!49 thiss!19403 rules!2471 input!2238)) (v!12802 (maxPrefix!49 thiss!19403 rules!2471 input!2238)))))

(assert (=> d!14950 d!15254))

(declare-fun b!80478 () Bool)

(declare-fun res!41874 () Bool)

(declare-fun e!45131 () Bool)

(assert (=> b!80478 (=> (not res!41874) (not e!45131))))

(declare-fun lt!18068 () tuple2!1460)

(assert (=> b!80478 (= res!41874 (= (list!482 (_1!937 lt!18068)) (_1!938 (lexList!45 thiss!19403 rules!2471 (list!481 (seqFromList!138 (_2!936 (get!358 (maxPrefix!49 thiss!19403 rules!2471 input!2238)))))))))))

(declare-fun b!80479 () Bool)

(assert (=> b!80479 (= e!45131 (= (list!481 (_2!937 lt!18068)) (_2!938 (lexList!45 thiss!19403 rules!2471 (list!481 (seqFromList!138 (_2!936 (get!358 (maxPrefix!49 thiss!19403 rules!2471 input!2238)))))))))))

(declare-fun b!80480 () Bool)

(declare-fun e!45132 () Bool)

(declare-fun e!45133 () Bool)

(assert (=> b!80480 (= e!45132 e!45133)))

(declare-fun res!41875 () Bool)

(assert (=> b!80480 (= res!41875 (< (size!1239 (_2!937 lt!18068)) (size!1239 (seqFromList!138 (_2!936 (get!358 (maxPrefix!49 thiss!19403 rules!2471 input!2238)))))))))

(assert (=> b!80480 (=> (not res!41875) (not e!45133))))

(declare-fun d!15256 () Bool)

(assert (=> d!15256 e!45131))

(declare-fun res!41876 () Bool)

(assert (=> d!15256 (=> (not res!41876) (not e!45131))))

(assert (=> d!15256 (= res!41876 e!45132)))

(declare-fun c!20435 () Bool)

(assert (=> d!15256 (= c!20435 (> (size!1240 (_1!937 lt!18068)) 0))))

(assert (=> d!15256 (= lt!18068 (lexTailRecV2!42 thiss!19403 rules!2471 (seqFromList!138 (_2!936 (get!358 (maxPrefix!49 thiss!19403 rules!2471 input!2238)))) (BalanceConc!861 Empty!428) (seqFromList!138 (_2!936 (get!358 (maxPrefix!49 thiss!19403 rules!2471 input!2238)))) (BalanceConc!863 Empty!429)))))

(assert (=> d!15256 (= (lex!113 thiss!19403 rules!2471 (seqFromList!138 (_2!936 (get!358 (maxPrefix!49 thiss!19403 rules!2471 input!2238))))) lt!18068)))

(declare-fun b!80481 () Bool)

(assert (=> b!80481 (= e!45132 (= (_2!937 lt!18068) (seqFromList!138 (_2!936 (get!358 (maxPrefix!49 thiss!19403 rules!2471 input!2238))))))))

(declare-fun b!80482 () Bool)

(assert (=> b!80482 (= e!45133 (not (isEmpty!487 (_1!937 lt!18068))))))

(assert (= (and d!15256 c!20435) b!80480))

(assert (= (and d!15256 (not c!20435)) b!80481))

(assert (= (and b!80480 res!41875) b!80482))

(assert (= (and d!15256 res!41876) b!80478))

(assert (= (and b!80478 res!41874) b!80479))

(declare-fun m!55786 () Bool)

(assert (=> b!80479 m!55786))

(assert (=> b!80479 m!54652))

(declare-fun m!55788 () Bool)

(assert (=> b!80479 m!55788))

(assert (=> b!80479 m!55788))

(declare-fun m!55790 () Bool)

(assert (=> b!80479 m!55790))

(declare-fun m!55792 () Bool)

(assert (=> d!15256 m!55792))

(assert (=> d!15256 m!54652))

(assert (=> d!15256 m!54652))

(declare-fun m!55794 () Bool)

(assert (=> d!15256 m!55794))

(declare-fun m!55796 () Bool)

(assert (=> b!80478 m!55796))

(assert (=> b!80478 m!54652))

(assert (=> b!80478 m!55788))

(assert (=> b!80478 m!55788))

(assert (=> b!80478 m!55790))

(declare-fun m!55798 () Bool)

(assert (=> b!80482 m!55798))

(declare-fun m!55800 () Bool)

(assert (=> b!80480 m!55800))

(assert (=> b!80480 m!54652))

(declare-fun m!55802 () Bool)

(assert (=> b!80480 m!55802))

(assert (=> d!14950 d!15256))

(declare-fun d!15258 () Bool)

(assert (=> d!15258 (= (list!482 (_1!937 lt!17619)) (list!485 (c!20258 (_1!937 lt!17619))))))

(declare-fun bs!8368 () Bool)

(assert (= bs!8368 d!15258))

(declare-fun m!55804 () Bool)

(assert (=> bs!8368 m!55804))

(assert (=> d!14950 d!15258))

(assert (=> d!14950 d!14934))

(declare-fun b!80485 () Bool)

(declare-fun res!41878 () Bool)

(declare-fun e!45134 () Bool)

(assert (=> b!80485 (=> (not res!41878) (not e!45134))))

(declare-fun lt!18069 () List!1436)

(assert (=> b!80485 (= res!41878 (= (size!1241 lt!18069) (+ (size!1241 (t!20315 (list!481 (charsOf!50 (_1!936 lt!17533))))) (size!1241 (_2!936 lt!17533)))))))

(declare-fun b!80483 () Bool)

(declare-fun e!45135 () List!1436)

(assert (=> b!80483 (= e!45135 (_2!936 lt!17533))))

(declare-fun b!80486 () Bool)

(assert (=> b!80486 (= e!45134 (or (not (= (_2!936 lt!17533) Nil!1430)) (= lt!18069 (t!20315 (list!481 (charsOf!50 (_1!936 lt!17533)))))))))

(declare-fun b!80484 () Bool)

(assert (=> b!80484 (= e!45135 (Cons!1430 (h!6827 (t!20315 (list!481 (charsOf!50 (_1!936 lt!17533))))) (++!144 (t!20315 (t!20315 (list!481 (charsOf!50 (_1!936 lt!17533))))) (_2!936 lt!17533))))))

(declare-fun d!15260 () Bool)

(assert (=> d!15260 e!45134))

(declare-fun res!41877 () Bool)

(assert (=> d!15260 (=> (not res!41877) (not e!45134))))

(assert (=> d!15260 (= res!41877 (= (content!74 lt!18069) ((_ map or) (content!74 (t!20315 (list!481 (charsOf!50 (_1!936 lt!17533))))) (content!74 (_2!936 lt!17533)))))))

(assert (=> d!15260 (= lt!18069 e!45135)))

(declare-fun c!20436 () Bool)

(assert (=> d!15260 (= c!20436 ((_ is Nil!1430) (t!20315 (list!481 (charsOf!50 (_1!936 lt!17533))))))))

(assert (=> d!15260 (= (++!144 (t!20315 (list!481 (charsOf!50 (_1!936 lt!17533)))) (_2!936 lt!17533)) lt!18069)))

(assert (= (and d!15260 c!20436) b!80483))

(assert (= (and d!15260 (not c!20436)) b!80484))

(assert (= (and d!15260 res!41877) b!80485))

(assert (= (and b!80485 res!41878) b!80486))

(declare-fun m!55806 () Bool)

(assert (=> b!80485 m!55806))

(assert (=> b!80485 m!55232))

(assert (=> b!80485 m!54746))

(declare-fun m!55808 () Bool)

(assert (=> b!80484 m!55808))

(declare-fun m!55810 () Bool)

(assert (=> d!15260 m!55810))

(assert (=> d!15260 m!55676))

(assert (=> d!15260 m!54754))

(assert (=> b!79960 d!15260))

(declare-fun d!15262 () Bool)

(assert (=> d!15262 (= (list!481 lt!17604) (list!486 (c!20256 lt!17604)))))

(declare-fun bs!8369 () Bool)

(assert (= bs!8369 d!15262))

(declare-fun m!55812 () Bool)

(assert (=> bs!8369 m!55812))

(assert (=> d!14944 d!15262))

(declare-fun d!15264 () Bool)

(declare-fun lt!18072 () Int)

(assert (=> d!15264 (= lt!18072 (size!1241 (list!481 (_2!937 lt!17635))))))

(assert (=> d!15264 (= lt!18072 (size!1246 (c!20256 (_2!937 lt!17635))))))

(assert (=> d!15264 (= (size!1239 (_2!937 lt!17635)) lt!18072)))

(declare-fun bs!8370 () Bool)

(assert (= bs!8370 d!15264))

(assert (=> bs!8370 m!54702))

(assert (=> bs!8370 m!54702))

(declare-fun m!55814 () Bool)

(assert (=> bs!8370 m!55814))

(declare-fun m!55816 () Bool)

(assert (=> bs!8370 m!55816))

(assert (=> b!79944 d!15264))

(declare-fun d!15266 () Bool)

(declare-fun lt!18073 () Int)

(assert (=> d!15266 (= lt!18073 (size!1241 (list!481 (seqFromList!138 (_2!936 lt!17533)))))))

(assert (=> d!15266 (= lt!18073 (size!1246 (c!20256 (seqFromList!138 (_2!936 lt!17533)))))))

(assert (=> d!15266 (= (size!1239 (seqFromList!138 (_2!936 lt!17533))) lt!18073)))

(declare-fun bs!8371 () Bool)

(assert (= bs!8371 d!15266))

(assert (=> bs!8371 m!54358))

(assert (=> bs!8371 m!54704))

(assert (=> bs!8371 m!54704))

(assert (=> bs!8371 m!55214))

(declare-fun m!55818 () Bool)

(assert (=> bs!8371 m!55818))

(assert (=> b!79944 d!15266))

(declare-fun d!15268 () Bool)

(declare-fun c!20439 () Bool)

(assert (=> d!15268 (= c!20439 ((_ is Node!428) (c!20256 (dynLambda!342 (toChars!687 (transformation!313 (rule!794 (_1!936 lt!17533)))) (value!11816 (_1!936 lt!17533))))))))

(declare-fun e!45140 () Bool)

(assert (=> d!15268 (= (inv!1784 (c!20256 (dynLambda!342 (toChars!687 (transformation!313 (rule!794 (_1!936 lt!17533)))) (value!11816 (_1!936 lt!17533))))) e!45140)))

(declare-fun b!80493 () Bool)

(declare-fun inv!1788 (Conc!428) Bool)

(assert (=> b!80493 (= e!45140 (inv!1788 (c!20256 (dynLambda!342 (toChars!687 (transformation!313 (rule!794 (_1!936 lt!17533)))) (value!11816 (_1!936 lt!17533))))))))

(declare-fun b!80494 () Bool)

(declare-fun e!45141 () Bool)

(assert (=> b!80494 (= e!45140 e!45141)))

(declare-fun res!41881 () Bool)

(assert (=> b!80494 (= res!41881 (not ((_ is Leaf!720) (c!20256 (dynLambda!342 (toChars!687 (transformation!313 (rule!794 (_1!936 lt!17533)))) (value!11816 (_1!936 lt!17533)))))))))

(assert (=> b!80494 (=> res!41881 e!45141)))

(declare-fun b!80495 () Bool)

(declare-fun inv!1789 (Conc!428) Bool)

(assert (=> b!80495 (= e!45141 (inv!1789 (c!20256 (dynLambda!342 (toChars!687 (transformation!313 (rule!794 (_1!936 lt!17533)))) (value!11816 (_1!936 lt!17533))))))))

(assert (= (and d!15268 c!20439) b!80493))

(assert (= (and d!15268 (not c!20439)) b!80494))

(assert (= (and b!80494 (not res!41881)) b!80495))

(declare-fun m!55820 () Bool)

(assert (=> b!80493 m!55820))

(declare-fun m!55822 () Bool)

(assert (=> b!80495 m!55822))

(assert (=> b!79908 d!15268))

(declare-fun d!15270 () Bool)

(declare-fun lt!18074 () Int)

(assert (=> d!15270 (= lt!18074 (size!1241 (list!481 (_2!937 lt!17563))))))

(assert (=> d!15270 (= lt!18074 (size!1246 (c!20256 (_2!937 lt!17563))))))

(assert (=> d!15270 (= (size!1239 (_2!937 lt!17563)) lt!18074)))

(declare-fun bs!8372 () Bool)

(assert (= bs!8372 d!15270))

(assert (=> bs!8372 m!54466))

(assert (=> bs!8372 m!54466))

(declare-fun m!55824 () Bool)

(assert (=> bs!8372 m!55824))

(declare-fun m!55826 () Bool)

(assert (=> bs!8372 m!55826))

(assert (=> b!79830 d!15270))

(declare-fun d!15272 () Bool)

(declare-fun lt!18075 () Int)

(assert (=> d!15272 (= lt!18075 (size!1241 (list!481 (seqFromList!138 input!2238))))))

(assert (=> d!15272 (= lt!18075 (size!1246 (c!20256 (seqFromList!138 input!2238))))))

(assert (=> d!15272 (= (size!1239 (seqFromList!138 input!2238)) lt!18075)))

(declare-fun bs!8373 () Bool)

(assert (= bs!8373 d!15272))

(assert (=> bs!8373 m!54342))

(assert (=> bs!8373 m!54468))

(assert (=> bs!8373 m!54468))

(assert (=> bs!8373 m!55178))

(declare-fun m!55828 () Bool)

(assert (=> bs!8373 m!55828))

(assert (=> b!79830 d!15272))

(declare-fun d!15274 () Bool)

(assert (=> d!15274 (= (isEmpty!488 lt!17596) (not ((_ is Some!119) lt!17596)))))

(assert (=> d!14934 d!15274))

(declare-fun b!80505 () Bool)

(declare-fun res!41892 () Bool)

(declare-fun e!45149 () Bool)

(assert (=> b!80505 (=> (not res!41892) (not e!45149))))

(assert (=> b!80505 (= res!41892 (= (head!423 input!2238) (head!423 input!2238)))))

(declare-fun b!80504 () Bool)

(declare-fun e!45150 () Bool)

(assert (=> b!80504 (= e!45150 e!45149)))

(declare-fun res!41890 () Bool)

(assert (=> b!80504 (=> (not res!41890) (not e!45149))))

(assert (=> b!80504 (= res!41890 (not ((_ is Nil!1430) input!2238)))))

(declare-fun b!80507 () Bool)

(declare-fun e!45148 () Bool)

(assert (=> b!80507 (= e!45148 (>= (size!1241 input!2238) (size!1241 input!2238)))))

(declare-fun d!15276 () Bool)

(assert (=> d!15276 e!45148))

(declare-fun res!41893 () Bool)

(assert (=> d!15276 (=> res!41893 e!45148)))

(declare-fun lt!18078 () Bool)

(assert (=> d!15276 (= res!41893 (not lt!18078))))

(assert (=> d!15276 (= lt!18078 e!45150)))

(declare-fun res!41891 () Bool)

(assert (=> d!15276 (=> res!41891 e!45150)))

(assert (=> d!15276 (= res!41891 ((_ is Nil!1430) input!2238))))

(assert (=> d!15276 (= (isPrefix!21 input!2238 input!2238) lt!18078)))

(declare-fun b!80506 () Bool)

(assert (=> b!80506 (= e!45149 (isPrefix!21 (tail!125 input!2238) (tail!125 input!2238)))))

(assert (= (and d!15276 (not res!41891)) b!80504))

(assert (= (and b!80504 res!41890) b!80505))

(assert (= (and b!80505 res!41892) b!80506))

(assert (= (and d!15276 (not res!41893)) b!80507))

(declare-fun m!55830 () Bool)

(assert (=> b!80505 m!55830))

(assert (=> b!80505 m!55830))

(assert (=> b!80507 m!54586))

(assert (=> b!80507 m!54586))

(declare-fun m!55832 () Bool)

(assert (=> b!80506 m!55832))

(assert (=> b!80506 m!55832))

(assert (=> b!80506 m!55832))

(assert (=> b!80506 m!55832))

(declare-fun m!55834 () Bool)

(assert (=> b!80506 m!55834))

(assert (=> d!14934 d!15276))

(declare-fun d!15278 () Bool)

(assert (=> d!15278 (isPrefix!21 input!2238 input!2238)))

(declare-fun lt!18081 () Unit!884)

(declare-fun choose!1297 (List!1436 List!1436) Unit!884)

(assert (=> d!15278 (= lt!18081 (choose!1297 input!2238 input!2238))))

(assert (=> d!15278 (= (lemmaIsPrefixRefl!21 input!2238 input!2238) lt!18081)))

(declare-fun bs!8374 () Bool)

(assert (= bs!8374 d!15278))

(assert (=> bs!8374 m!54608))

(declare-fun m!55836 () Bool)

(assert (=> bs!8374 m!55836))

(assert (=> d!14934 d!15278))

(declare-fun bs!8375 () Bool)

(declare-fun d!15280 () Bool)

(assert (= bs!8375 (and d!15280 d!15078)))

(declare-fun lambda!1485 () Int)

(assert (=> bs!8375 (= lambda!1485 lambda!1479)))

(assert (=> d!15280 true))

(declare-fun lt!18084 () Bool)

(assert (=> d!15280 (= lt!18084 (forall!191 rules!2471 lambda!1485))))

(declare-fun e!45155 () Bool)

(assert (=> d!15280 (= lt!18084 e!45155)))

(declare-fun res!41898 () Bool)

(assert (=> d!15280 (=> res!41898 e!45155)))

(assert (=> d!15280 (= res!41898 (not ((_ is Cons!1432) rules!2471)))))

(assert (=> d!15280 (= (rulesValidInductive!44 thiss!19403 rules!2471) lt!18084)))

(declare-fun b!80512 () Bool)

(declare-fun e!45156 () Bool)

(assert (=> b!80512 (= e!45155 e!45156)))

(declare-fun res!41899 () Bool)

(assert (=> b!80512 (=> (not res!41899) (not e!45156))))

(assert (=> b!80512 (= res!41899 (ruleValid!23 thiss!19403 (h!6829 rules!2471)))))

(declare-fun b!80513 () Bool)

(assert (=> b!80513 (= e!45156 (rulesValidInductive!44 thiss!19403 (t!20317 rules!2471)))))

(assert (= (and d!15280 (not res!41898)) b!80512))

(assert (= (and b!80512 res!41899) b!80513))

(declare-fun m!55838 () Bool)

(assert (=> d!15280 m!55838))

(assert (=> b!80512 m!54814))

(assert (=> b!80513 m!55378))

(assert (=> d!14934 d!15280))

(declare-fun d!15282 () Bool)

(declare-fun lt!18087 () Bool)

(assert (=> d!15282 (= lt!18087 (isEmpty!491 (list!482 (_1!937 lt!17563))))))

(declare-fun isEmpty!492 (Conc!429) Bool)

(assert (=> d!15282 (= lt!18087 (isEmpty!492 (c!20258 (_1!937 lt!17563))))))

(assert (=> d!15282 (= (isEmpty!487 (_1!937 lt!17563)) lt!18087)))

(declare-fun bs!8376 () Bool)

(assert (= bs!8376 d!15282))

(assert (=> bs!8376 m!54476))

(assert (=> bs!8376 m!54476))

(declare-fun m!55840 () Bool)

(assert (=> bs!8376 m!55840))

(declare-fun m!55842 () Bool)

(assert (=> bs!8376 m!55842))

(assert (=> b!79832 d!15282))

(declare-fun d!15284 () Bool)

(declare-fun lt!18088 () Bool)

(assert (=> d!15284 (= lt!18088 (isEmpty!491 (list!482 (_1!937 lt!17635))))))

(assert (=> d!15284 (= lt!18088 (isEmpty!492 (c!20258 (_1!937 lt!17635))))))

(assert (=> d!15284 (= (isEmpty!487 (_1!937 lt!17635)) lt!18088)))

(declare-fun bs!8377 () Bool)

(assert (= bs!8377 d!15284))

(assert (=> bs!8377 m!54712))

(assert (=> bs!8377 m!54712))

(declare-fun m!55844 () Bool)

(assert (=> bs!8377 m!55844))

(declare-fun m!55846 () Bool)

(assert (=> bs!8377 m!55846))

(assert (=> b!79946 d!15284))

(declare-fun b!80526 () Bool)

(declare-fun res!41913 () Bool)

(declare-fun e!45161 () Bool)

(assert (=> b!80526 (=> (not res!41913) (not e!45161))))

(declare-fun height!30 (Conc!429) Int)

(assert (=> b!80526 (= res!41913 (<= (- (height!30 (left!1086 (prepend!73 (c!20258 (seqFromList!139 (t!20318 lt!17537))) (h!6830 lt!17537)))) (height!30 (right!1416 (prepend!73 (c!20258 (seqFromList!139 (t!20318 lt!17537))) (h!6830 lt!17537))))) 1))))

(declare-fun d!15286 () Bool)

(declare-fun res!41912 () Bool)

(declare-fun e!45162 () Bool)

(assert (=> d!15286 (=> res!41912 e!45162)))

(assert (=> d!15286 (= res!41912 (not ((_ is Node!429) (prepend!73 (c!20258 (seqFromList!139 (t!20318 lt!17537))) (h!6830 lt!17537)))))))

(assert (=> d!15286 (= (isBalanced!86 (prepend!73 (c!20258 (seqFromList!139 (t!20318 lt!17537))) (h!6830 lt!17537))) e!45162)))

(declare-fun b!80527 () Bool)

(declare-fun res!41917 () Bool)

(assert (=> b!80527 (=> (not res!41917) (not e!45161))))

(assert (=> b!80527 (= res!41917 (isBalanced!86 (left!1086 (prepend!73 (c!20258 (seqFromList!139 (t!20318 lt!17537))) (h!6830 lt!17537)))))))

(declare-fun b!80528 () Bool)

(declare-fun res!41915 () Bool)

(assert (=> b!80528 (=> (not res!41915) (not e!45161))))

(assert (=> b!80528 (= res!41915 (isBalanced!86 (right!1416 (prepend!73 (c!20258 (seqFromList!139 (t!20318 lt!17537))) (h!6830 lt!17537)))))))

(declare-fun b!80529 () Bool)

(assert (=> b!80529 (= e!45162 e!45161)))

(declare-fun res!41914 () Bool)

(assert (=> b!80529 (=> (not res!41914) (not e!45161))))

(assert (=> b!80529 (= res!41914 (<= (- 1) (- (height!30 (left!1086 (prepend!73 (c!20258 (seqFromList!139 (t!20318 lt!17537))) (h!6830 lt!17537)))) (height!30 (right!1416 (prepend!73 (c!20258 (seqFromList!139 (t!20318 lt!17537))) (h!6830 lt!17537)))))))))

(declare-fun b!80530 () Bool)

(declare-fun res!41916 () Bool)

(assert (=> b!80530 (=> (not res!41916) (not e!45161))))

(assert (=> b!80530 (= res!41916 (not (isEmpty!492 (left!1086 (prepend!73 (c!20258 (seqFromList!139 (t!20318 lt!17537))) (h!6830 lt!17537))))))))

(declare-fun b!80531 () Bool)

(assert (=> b!80531 (= e!45161 (not (isEmpty!492 (right!1416 (prepend!73 (c!20258 (seqFromList!139 (t!20318 lt!17537))) (h!6830 lt!17537))))))))

(assert (= (and d!15286 (not res!41912)) b!80529))

(assert (= (and b!80529 res!41914) b!80526))

(assert (= (and b!80526 res!41913) b!80527))

(assert (= (and b!80527 res!41917) b!80528))

(assert (= (and b!80528 res!41915) b!80530))

(assert (= (and b!80530 res!41916) b!80531))

(declare-fun m!55848 () Bool)

(assert (=> b!80530 m!55848))

(declare-fun m!55850 () Bool)

(assert (=> b!80531 m!55850))

(declare-fun m!55852 () Bool)

(assert (=> b!80529 m!55852))

(declare-fun m!55854 () Bool)

(assert (=> b!80529 m!55854))

(declare-fun m!55856 () Bool)

(assert (=> b!80527 m!55856))

(declare-fun m!55858 () Bool)

(assert (=> b!80528 m!55858))

(assert (=> b!80526 m!55852))

(assert (=> b!80526 m!55854))

(assert (=> d!14986 d!15286))

(declare-fun d!15288 () Bool)

(declare-fun e!45168 () Bool)

(assert (=> d!15288 e!45168))

(declare-fun res!41923 () Bool)

(assert (=> d!15288 (=> (not res!41923) (not e!45168))))

(declare-fun lt!18096 () Conc!429)

(assert (=> d!15288 (= res!41923 (isBalanced!86 lt!18096))))

(declare-fun ++!150 (Conc!429 Conc!429) Conc!429)

(declare-fun fill!15 (Int Token!386) IArray!859)

(assert (=> d!15288 (= lt!18096 (++!150 (Leaf!721 (fill!15 1 (h!6830 lt!17537)) 1) (c!20258 (seqFromList!139 (t!20318 lt!17537)))))))

(assert (=> d!15288 (isBalanced!86 (c!20258 (seqFromList!139 (t!20318 lt!17537))))))

(assert (=> d!15288 (= (prepend!73 (c!20258 (seqFromList!139 (t!20318 lt!17537))) (h!6830 lt!17537)) lt!18096)))

(declare-fun b!80539 () Bool)

(assert (=> b!80539 (= e!45168 (= (list!485 lt!18096) (Cons!1433 (h!6830 lt!17537) (list!485 (c!20258 (seqFromList!139 (t!20318 lt!17537)))))))))

(assert (= (and d!15288 res!41923) b!80539))

(declare-fun m!55892 () Bool)

(assert (=> d!15288 m!55892))

(declare-fun m!55894 () Bool)

(assert (=> d!15288 m!55894))

(declare-fun m!55896 () Bool)

(assert (=> d!15288 m!55896))

(declare-fun m!55898 () Bool)

(assert (=> d!15288 m!55898))

(declare-fun m!55900 () Bool)

(assert (=> b!80539 m!55900))

(assert (=> b!80539 m!55238))

(assert (=> d!14986 d!15288))

(declare-fun b!80542 () Bool)

(declare-fun b_free!2597 () Bool)

(declare-fun b_next!2597 () Bool)

(assert (=> b!80542 (= b_free!2597 (not b_next!2597))))

(declare-fun t!20356 () Bool)

(declare-fun tb!2479 () Bool)

(assert (=> (and b!80542 (= (toValue!828 (transformation!313 (h!6829 (t!20317 (t!20317 rules!2471))))) (toValue!828 (transformation!313 (rule!794 (_1!936 (get!358 lt!17596)))))) t!20356) tb!2479))

(declare-fun result!3588 () Bool)

(assert (= result!3588 result!3582))

(assert (=> d!15202 t!20356))

(declare-fun tp!50497 () Bool)

(declare-fun b_and!3719 () Bool)

(assert (=> b!80542 (= tp!50497 (and (=> t!20356 result!3588) b_and!3719))))

(declare-fun b_free!2599 () Bool)

(declare-fun b_next!2599 () Bool)

(assert (=> b!80542 (= b_free!2599 (not b_next!2599))))

(declare-fun tb!2481 () Bool)

(declare-fun t!20358 () Bool)

(assert (=> (and b!80542 (= (toChars!687 (transformation!313 (h!6829 (t!20317 (t!20317 rules!2471))))) (toChars!687 (transformation!313 (rule!794 (_1!936 lt!17533))))) t!20358) tb!2481))

(declare-fun result!3590 () Bool)

(assert (= result!3590 result!3544))

(assert (=> d!14944 t!20358))

(declare-fun tb!2483 () Bool)

(declare-fun t!20360 () Bool)

(assert (=> (and b!80542 (= (toChars!687 (transformation!313 (h!6829 (t!20317 (t!20317 rules!2471))))) (toChars!687 (transformation!313 (rule!794 (_1!936 (get!358 lt!17596)))))) t!20360) tb!2483))

(declare-fun result!3592 () Bool)

(assert (= result!3592 result!3578))

(assert (=> d!15062 t!20360))

(declare-fun b_and!3721 () Bool)

(declare-fun tp!50500 () Bool)

(assert (=> b!80542 (= tp!50500 (and (=> t!20358 result!3590) (=> t!20360 result!3592) b_and!3721))))

(declare-fun e!45170 () Bool)

(assert (=> b!80542 (= e!45170 (and tp!50497 tp!50500))))

(declare-fun b!80541 () Bool)

(declare-fun tp!50499 () Bool)

(declare-fun e!45172 () Bool)

(assert (=> b!80541 (= e!45172 (and tp!50499 (inv!1779 (tag!491 (h!6829 (t!20317 (t!20317 rules!2471))))) (inv!1781 (transformation!313 (h!6829 (t!20317 (t!20317 rules!2471))))) e!45170))))

(declare-fun b!80540 () Bool)

(declare-fun e!45171 () Bool)

(declare-fun tp!50498 () Bool)

(assert (=> b!80540 (= e!45171 (and e!45172 tp!50498))))

(assert (=> b!79977 (= tp!50474 e!45171)))

(assert (= b!80541 b!80542))

(assert (= b!80540 b!80541))

(assert (= (and b!79977 ((_ is Cons!1432) (t!20317 (t!20317 rules!2471)))) b!80540))

(declare-fun m!55902 () Bool)

(assert (=> b!80541 m!55902))

(declare-fun m!55904 () Bool)

(assert (=> b!80541 m!55904))

(declare-fun b!80543 () Bool)

(declare-fun e!45173 () Bool)

(assert (=> b!80543 (= e!45173 tp_is_empty!685)))

(declare-fun b!80546 () Bool)

(declare-fun tp!50503 () Bool)

(declare-fun tp!50504 () Bool)

(assert (=> b!80546 (= e!45173 (and tp!50503 tp!50504))))

(declare-fun b!80545 () Bool)

(declare-fun tp!50502 () Bool)

(assert (=> b!80545 (= e!45173 tp!50502)))

(declare-fun b!80544 () Bool)

(declare-fun tp!50501 () Bool)

(declare-fun tp!50505 () Bool)

(assert (=> b!80544 (= e!45173 (and tp!50501 tp!50505))))

(assert (=> b!79996 (= tp!50490 e!45173)))

(assert (= (and b!79996 ((_ is ElementMatch!381) (regOne!1274 (regex!313 (h!6829 rules!2471))))) b!80543))

(assert (= (and b!79996 ((_ is Concat!684) (regOne!1274 (regex!313 (h!6829 rules!2471))))) b!80544))

(assert (= (and b!79996 ((_ is Star!381) (regOne!1274 (regex!313 (h!6829 rules!2471))))) b!80545))

(assert (= (and b!79996 ((_ is Union!381) (regOne!1274 (regex!313 (h!6829 rules!2471))))) b!80546))

(declare-fun b!80547 () Bool)

(declare-fun e!45174 () Bool)

(assert (=> b!80547 (= e!45174 tp_is_empty!685)))

(declare-fun b!80550 () Bool)

(declare-fun tp!50508 () Bool)

(declare-fun tp!50509 () Bool)

(assert (=> b!80550 (= e!45174 (and tp!50508 tp!50509))))

(declare-fun b!80549 () Bool)

(declare-fun tp!50507 () Bool)

(assert (=> b!80549 (= e!45174 tp!50507)))

(declare-fun b!80548 () Bool)

(declare-fun tp!50506 () Bool)

(declare-fun tp!50510 () Bool)

(assert (=> b!80548 (= e!45174 (and tp!50506 tp!50510))))

(assert (=> b!79996 (= tp!50494 e!45174)))

(assert (= (and b!79996 ((_ is ElementMatch!381) (regTwo!1274 (regex!313 (h!6829 rules!2471))))) b!80547))

(assert (= (and b!79996 ((_ is Concat!684) (regTwo!1274 (regex!313 (h!6829 rules!2471))))) b!80548))

(assert (= (and b!79996 ((_ is Star!381) (regTwo!1274 (regex!313 (h!6829 rules!2471))))) b!80549))

(assert (= (and b!79996 ((_ is Union!381) (regTwo!1274 (regex!313 (h!6829 rules!2471))))) b!80550))

(declare-fun b!80563 () Bool)

(declare-fun tp!50519 () Bool)

(declare-fun e!45182 () Bool)

(declare-fun tp!50518 () Bool)

(assert (=> b!80563 (= e!45182 (and (inv!1784 (left!1085 (c!20256 (dynLambda!342 (toChars!687 (transformation!313 (rule!794 (_1!936 lt!17533)))) (value!11816 (_1!936 lt!17533)))))) tp!50519 (inv!1784 (right!1415 (c!20256 (dynLambda!342 (toChars!687 (transformation!313 (rule!794 (_1!936 lt!17533)))) (value!11816 (_1!936 lt!17533)))))) tp!50518))))

(declare-fun b!80565 () Bool)

(declare-fun e!45181 () Bool)

(declare-fun tp!50517 () Bool)

(assert (=> b!80565 (= e!45181 tp!50517)))

(declare-fun b!80564 () Bool)

(declare-fun inv!1790 (IArray!857) Bool)

(assert (=> b!80564 (= e!45182 (and (inv!1790 (xs!3007 (c!20256 (dynLambda!342 (toChars!687 (transformation!313 (rule!794 (_1!936 lt!17533)))) (value!11816 (_1!936 lt!17533)))))) e!45181))))

(assert (=> b!79908 (= tp!50431 (and (inv!1784 (c!20256 (dynLambda!342 (toChars!687 (transformation!313 (rule!794 (_1!936 lt!17533)))) (value!11816 (_1!936 lt!17533))))) e!45182))))

(assert (= (and b!79908 ((_ is Node!428) (c!20256 (dynLambda!342 (toChars!687 (transformation!313 (rule!794 (_1!936 lt!17533)))) (value!11816 (_1!936 lt!17533)))))) b!80563))

(assert (= b!80564 b!80565))

(assert (= (and b!79908 ((_ is Leaf!720) (c!20256 (dynLambda!342 (toChars!687 (transformation!313 (rule!794 (_1!936 lt!17533)))) (value!11816 (_1!936 lt!17533)))))) b!80564))

(declare-fun m!55906 () Bool)

(assert (=> b!80563 m!55906))

(declare-fun m!55908 () Bool)

(assert (=> b!80563 m!55908))

(declare-fun m!55910 () Bool)

(assert (=> b!80564 m!55910))

(assert (=> b!79908 m!54622))

(declare-fun b!80570 () Bool)

(declare-fun e!45185 () Bool)

(declare-fun tp!50520 () Bool)

(assert (=> b!80570 (= e!45185 (and tp_is_empty!685 tp!50520))))

(assert (=> b!79984 (= tp!50479 e!45185)))

(assert (= (and b!79984 ((_ is Cons!1430) (t!20315 (t!20315 input!2238)))) b!80570))

(declare-fun b!80575 () Bool)

(declare-fun e!45188 () Bool)

(assert (=> b!80575 (= e!45188 tp_is_empty!685)))

(declare-fun b!80578 () Bool)

(declare-fun tp!50523 () Bool)

(declare-fun tp!50524 () Bool)

(assert (=> b!80578 (= e!45188 (and tp!50523 tp!50524))))

(declare-fun b!80577 () Bool)

(declare-fun tp!50522 () Bool)

(assert (=> b!80577 (= e!45188 tp!50522)))

(declare-fun b!80576 () Bool)

(declare-fun tp!50521 () Bool)

(declare-fun tp!50525 () Bool)

(assert (=> b!80576 (= e!45188 (and tp!50521 tp!50525))))

(assert (=> b!79998 (= tp!50492 e!45188)))

(assert (= (and b!79998 ((_ is ElementMatch!381) (regOne!1275 (regex!313 (h!6829 rules!2471))))) b!80575))

(assert (= (and b!79998 ((_ is Concat!684) (regOne!1275 (regex!313 (h!6829 rules!2471))))) b!80576))

(assert (= (and b!79998 ((_ is Star!381) (regOne!1275 (regex!313 (h!6829 rules!2471))))) b!80577))

(assert (= (and b!79998 ((_ is Union!381) (regOne!1275 (regex!313 (h!6829 rules!2471))))) b!80578))

(declare-fun b!80589 () Bool)

(declare-fun e!45193 () Bool)

(assert (=> b!80589 (= e!45193 tp_is_empty!685)))

(declare-fun b!80592 () Bool)

(declare-fun tp!50528 () Bool)

(declare-fun tp!50529 () Bool)

(assert (=> b!80592 (= e!45193 (and tp!50528 tp!50529))))

(declare-fun b!80591 () Bool)

(declare-fun tp!50527 () Bool)

(assert (=> b!80591 (= e!45193 tp!50527)))

(declare-fun b!80590 () Bool)

(declare-fun tp!50526 () Bool)

(declare-fun tp!50530 () Bool)

(assert (=> b!80590 (= e!45193 (and tp!50526 tp!50530))))

(assert (=> b!79998 (= tp!50493 e!45193)))

(assert (= (and b!79998 ((_ is ElementMatch!381) (regTwo!1275 (regex!313 (h!6829 rules!2471))))) b!80589))

(assert (= (and b!79998 ((_ is Concat!684) (regTwo!1275 (regex!313 (h!6829 rules!2471))))) b!80590))

(assert (= (and b!79998 ((_ is Star!381) (regTwo!1275 (regex!313 (h!6829 rules!2471))))) b!80591))

(assert (= (and b!79998 ((_ is Union!381) (regTwo!1275 (regex!313 (h!6829 rules!2471))))) b!80592))

(declare-fun b!80599 () Bool)

(declare-fun e!45198 () Bool)

(assert (=> b!80599 (= e!45198 tp_is_empty!685)))

(declare-fun b!80602 () Bool)

(declare-fun tp!50533 () Bool)

(declare-fun tp!50534 () Bool)

(assert (=> b!80602 (= e!45198 (and tp!50533 tp!50534))))

(declare-fun b!80601 () Bool)

(declare-fun tp!50532 () Bool)

(assert (=> b!80601 (= e!45198 tp!50532)))

(declare-fun b!80600 () Bool)

(declare-fun tp!50531 () Bool)

(declare-fun tp!50535 () Bool)

(assert (=> b!80600 (= e!45198 (and tp!50531 tp!50535))))

(assert (=> b!79997 (= tp!50491 e!45198)))

(assert (= (and b!79997 ((_ is ElementMatch!381) (reg!710 (regex!313 (h!6829 rules!2471))))) b!80599))

(assert (= (and b!79997 ((_ is Concat!684) (reg!710 (regex!313 (h!6829 rules!2471))))) b!80600))

(assert (= (and b!79997 ((_ is Star!381) (reg!710 (regex!313 (h!6829 rules!2471))))) b!80601))

(assert (= (and b!79997 ((_ is Union!381) (reg!710 (regex!313 (h!6829 rules!2471))))) b!80602))

(declare-fun b!80603 () Bool)

(declare-fun e!45199 () Bool)

(assert (=> b!80603 (= e!45199 tp_is_empty!685)))

(declare-fun b!80606 () Bool)

(declare-fun tp!50538 () Bool)

(declare-fun tp!50539 () Bool)

(assert (=> b!80606 (= e!45199 (and tp!50538 tp!50539))))

(declare-fun b!80605 () Bool)

(declare-fun tp!50537 () Bool)

(assert (=> b!80605 (= e!45199 tp!50537)))

(declare-fun b!80604 () Bool)

(declare-fun tp!50536 () Bool)

(declare-fun tp!50540 () Bool)

(assert (=> b!80604 (= e!45199 (and tp!50536 tp!50540))))

(assert (=> b!79978 (= tp!50475 e!45199)))

(assert (= (and b!79978 ((_ is ElementMatch!381) (regex!313 (h!6829 (t!20317 rules!2471))))) b!80603))

(assert (= (and b!79978 ((_ is Concat!684) (regex!313 (h!6829 (t!20317 rules!2471))))) b!80604))

(assert (= (and b!79978 ((_ is Star!381) (regex!313 (h!6829 (t!20317 rules!2471))))) b!80605))

(assert (= (and b!79978 ((_ is Union!381) (regex!313 (h!6829 (t!20317 rules!2471))))) b!80606))

(declare-fun b_lambda!917 () Bool)

(assert (= b_lambda!905 (or (and b!79782 b_free!2587 (= (toChars!687 (transformation!313 (h!6829 rules!2471))) (toChars!687 (transformation!313 (rule!794 (_1!936 lt!17533)))))) (and b!79979 b_free!2595 (= (toChars!687 (transformation!313 (h!6829 (t!20317 rules!2471)))) (toChars!687 (transformation!313 (rule!794 (_1!936 lt!17533)))))) (and b!80542 b_free!2599 (= (toChars!687 (transformation!313 (h!6829 (t!20317 (t!20317 rules!2471))))) (toChars!687 (transformation!313 (rule!794 (_1!936 lt!17533)))))) b_lambda!917)))

(check-sat (not d!15266) (not d!15118) (not b!80303) (not b!80216) (not d!15124) (not d!15288) (not b!80407) (not b!80041) (not b!80160) (not b!80513) (not b!80278) (not b!80605) (not b!80570) (not b_lambda!915) (not b!80024) (not d!15272) (not b!80021) (not b!80527) (not d!15282) (not tb!2475) (not d!15010) (not d!15258) (not b!80260) (not b!80312) (not b!80495) (not b!80440) (not d!15100) (not b!80397) (not b!80280) (not d!15264) (not b!80417) (not b!80507) (not b!80528) (not b!80403) (not b!80606) (not b!80304) (not d!15086) (not b!80192) b_and!3721 (not d!15074) (not d!15122) (not b!80433) (not b!80162) (not b!80177) (not d!15260) (not b_lambda!917) (not b!80017) (not b!80437) (not b!80020) (not b!80530) (not d!15182) (not b!80550) (not b!80190) (not b!80176) (not b!80175) (not d!14992) (not b!80493) (not d!15222) (not d!15186) (not b!80436) (not b!80298) (not d!15126) b_and!3715 (not b!80301) (not b!80271) (not b!80290) (not b!80182) (not d!14994) (not b!80479) (not d!15174) b_and!3719 (not d!15064) (not b!80390) (not b!80310) (not b!80600) (not d!15208) (not b!80565) (not d!15176) (not b!80204) (not b!80484) (not b!80576) (not b!80203) (not b!80031) (not b!80529) (not d!15280) (not b!80218) (not b!80423) (not d!15224) (not b!80389) (not b!80269) (not b!80032) (not d!15062) (not d!15082) (not b!80526) (not d!15002) (not b!80259) (not b!80431) (not d!15080) (not b_next!2599) (not d!15128) (not b!80299) (not d!15114) (not b!80564) (not d!15016) (not b!80545) (not b!80308) (not b!80311) (not d!15098) (not d!15262) (not b!80505) (not b!80025) (not b_next!2585) b_and!3711 (not b!80023) (not b!80546) (not b!80485) (not b!80602) (not b!80292) (not b!80541) (not b!80413) (not b!80043) (not b!80478) (not b!80480) (not d!15130) (not b!80396) (not b!80601) (not b!80255) (not b!80578) (not d!15278) (not b!80263) (not b_next!2595) (not d!15190) (not d!15060) b_and!3713 tp_is_empty!685 (not b!80305) (not b!80531) (not b!80604) (not d!15088) (not b!80276) (not b!80544) (not d!15078) (not d!15116) (not d!15204) (not d!15056) (not b!80539) (not b!80018) (not b!79908) (not b!80425) (not b!80548) (not d!15110) (not b!80549) (not b!80591) (not b!80577) (not b!80410) (not b_next!2587) (not b!80275) (not bm!3699) (not b_next!2593) (not b!80306) (not b!80411) (not b!80563) (not b!80219) (not b!80406) (not b!80272) (not b!80422) (not d!14996) (not b!80540) (not b!80288) (not b!80295) (not b!80164) (not d!15180) (not d!15270) (not b!80512) (not b_next!2597) (not b!80282) (not d!15216) (not b!80258) (not b!80022) (not d!15068) (not b_lambda!913) (not d!15256) (not b!80415) (not b!80261) (not b!80159) (not b!80592) (not tb!2471) (not b!80482) (not b!80506) (not d!15284) (not b!80426) (not bm!3698) (not d!15194) (not d!15226) (not b!80590) (not b!80309) (not d!15084) (not d!15112) b_and!3717 (not b!80441) (not d!15072) (not d!15076) (not b!80296) (not b!80429) (not d!15252))
(check-sat b_and!3721 b_and!3715 b_and!3719 (not b_next!2599) (not b_next!2587) (not b_next!2593) (not b_next!2597) b_and!3717 (not b_next!2585) b_and!3711 (not b_next!2595) b_and!3713)
