; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!155182 () Bool)

(assert start!155182)

(declare-fun b!1630082 () Bool)

(declare-fun b_free!43991 () Bool)

(declare-fun b_next!44695 () Bool)

(assert (=> b!1630082 (= b_free!43991 (not b_next!44695))))

(declare-fun tp!473367 () Bool)

(declare-fun b_and!115613 () Bool)

(assert (=> b!1630082 (= tp!473367 b_and!115613)))

(declare-fun b_free!43993 () Bool)

(declare-fun b_next!44697 () Bool)

(assert (=> b!1630082 (= b_free!43993 (not b_next!44697))))

(declare-fun tp!473372 () Bool)

(declare-fun b_and!115615 () Bool)

(assert (=> b!1630082 (= tp!473372 b_and!115615)))

(declare-fun b!1630055 () Bool)

(declare-fun b_free!43995 () Bool)

(declare-fun b_next!44699 () Bool)

(assert (=> b!1630055 (= b_free!43995 (not b_next!44699))))

(declare-fun tp!473371 () Bool)

(declare-fun b_and!115617 () Bool)

(assert (=> b!1630055 (= tp!473371 b_and!115617)))

(declare-fun b_free!43997 () Bool)

(declare-fun b_next!44701 () Bool)

(assert (=> b!1630055 (= b_free!43997 (not b_next!44701))))

(declare-fun tp!473374 () Bool)

(declare-fun b_and!115619 () Bool)

(assert (=> b!1630055 (= tp!473374 b_and!115619)))

(declare-fun b!1630054 () Bool)

(declare-fun res!729092 () Bool)

(declare-fun e!1045402 () Bool)

(assert (=> b!1630054 (=> (not res!729092) (not e!1045402))))

(declare-datatypes ((List!17953 0))(
  ( (Nil!17883) (Cons!17883 (h!23284 (_ BitVec 16)) (t!149410 List!17953)) )
))
(declare-datatypes ((TokenValue!3241 0))(
  ( (FloatLiteralValue!6482 (text!23132 List!17953)) (TokenValueExt!3240 (__x!11784 Int)) (Broken!16205 (value!99450 List!17953)) (Object!3310) (End!3241) (Def!3241) (Underscore!3241) (Match!3241) (Else!3241) (Error!3241) (Case!3241) (If!3241) (Extends!3241) (Abstract!3241) (Class!3241) (Val!3241) (DelimiterValue!6482 (del!3301 List!17953)) (KeywordValue!3247 (value!99451 List!17953)) (CommentValue!6482 (value!99452 List!17953)) (WhitespaceValue!6482 (value!99453 List!17953)) (IndentationValue!3241 (value!99454 List!17953)) (String!20536) (Int32!3241) (Broken!16206 (value!99455 List!17953)) (Boolean!3242) (Unit!29054) (OperatorValue!3244 (op!3301 List!17953)) (IdentifierValue!6482 (value!99456 List!17953)) (IdentifierValue!6483 (value!99457 List!17953)) (WhitespaceValue!6483 (value!99458 List!17953)) (True!6482) (False!6482) (Broken!16207 (value!99459 List!17953)) (Broken!16208 (value!99460 List!17953)) (True!6483) (RightBrace!3241) (RightBracket!3241) (Colon!3241) (Null!3241) (Comma!3241) (LeftBracket!3241) (False!6483) (LeftBrace!3241) (ImaginaryLiteralValue!3241 (text!23133 List!17953)) (StringLiteralValue!9723 (value!99461 List!17953)) (EOFValue!3241 (value!99462 List!17953)) (IdentValue!3241 (value!99463 List!17953)) (DelimiterValue!6483 (value!99464 List!17953)) (DedentValue!3241 (value!99465 List!17953)) (NewLineValue!3241 (value!99466 List!17953)) (IntegerValue!9723 (value!99467 (_ BitVec 32)) (text!23134 List!17953)) (IntegerValue!9724 (value!99468 Int) (text!23135 List!17953)) (Times!3241) (Or!3241) (Equal!3241) (Minus!3241) (Broken!16209 (value!99469 List!17953)) (And!3241) (Div!3241) (LessEqual!3241) (Mod!3241) (Concat!7720) (Not!3241) (Plus!3241) (SpaceValue!3241 (value!99470 List!17953)) (IntegerValue!9725 (value!99471 Int) (text!23136 List!17953)) (StringLiteralValue!9724 (text!23137 List!17953)) (FloatLiteralValue!6483 (text!23138 List!17953)) (BytesLiteralValue!3241 (value!99472 List!17953)) (CommentValue!6483 (value!99473 List!17953)) (StringLiteralValue!9725 (value!99474 List!17953)) (ErrorTokenValue!3241 (msg!3302 List!17953)) )
))
(declare-datatypes ((C!9132 0))(
  ( (C!9133 (val!5162 Int)) )
))
(declare-datatypes ((List!17954 0))(
  ( (Nil!17884) (Cons!17884 (h!23285 C!9132) (t!149411 List!17954)) )
))
(declare-datatypes ((IArray!11905 0))(
  ( (IArray!11906 (innerList!6010 List!17954)) )
))
(declare-datatypes ((Conc!5950 0))(
  ( (Node!5950 (left!14367 Conc!5950) (right!14697 Conc!5950) (csize!12130 Int) (cheight!6161 Int)) (Leaf!8746 (xs!8786 IArray!11905) (csize!12131 Int)) (Empty!5950) )
))
(declare-datatypes ((BalanceConc!11844 0))(
  ( (BalanceConc!11845 (c!265367 Conc!5950)) )
))
(declare-datatypes ((Regex!4479 0))(
  ( (ElementMatch!4479 (c!265368 C!9132)) (Concat!7721 (regOne!9470 Regex!4479) (regTwo!9470 Regex!4479)) (EmptyExpr!4479) (Star!4479 (reg!4808 Regex!4479)) (EmptyLang!4479) (Union!4479 (regOne!9471 Regex!4479) (regTwo!9471 Regex!4479)) )
))
(declare-datatypes ((String!20537 0))(
  ( (String!20538 (value!99475 String)) )
))
(declare-datatypes ((TokenValueInjection!6142 0))(
  ( (TokenValueInjection!6143 (toValue!4582 Int) (toChars!4441 Int)) )
))
(declare-datatypes ((Rule!6102 0))(
  ( (Rule!6103 (regex!3151 Regex!4479) (tag!3431 String!20537) (isSeparator!3151 Bool) (transformation!3151 TokenValueInjection!6142)) )
))
(declare-datatypes ((List!17955 0))(
  ( (Nil!17885) (Cons!17885 (h!23286 Rule!6102) (t!149412 List!17955)) )
))
(declare-fun rules!1846 () List!17955)

(declare-fun isEmpty!10915 (List!17955) Bool)

(assert (=> b!1630054 (= res!729092 (not (isEmpty!10915 rules!1846)))))

(declare-fun e!1045389 () Bool)

(assert (=> b!1630055 (= e!1045389 (and tp!473371 tp!473374))))

(declare-fun b!1630056 () Bool)

(declare-fun res!729083 () Bool)

(assert (=> b!1630056 (=> (not res!729083) (not e!1045402))))

(declare-datatypes ((LexerInterface!2780 0))(
  ( (LexerInterfaceExt!2777 (__x!11785 Int)) (Lexer!2778) )
))
(declare-fun thiss!17113 () LexerInterface!2780)

(declare-fun rulesInvariant!2449 (LexerInterface!2780 List!17955) Bool)

(assert (=> b!1630056 (= res!729083 (rulesInvariant!2449 thiss!17113 rules!1846))))

(declare-fun b!1630057 () Bool)

(declare-fun res!729077 () Bool)

(assert (=> b!1630057 (=> (not res!729077) (not e!1045402))))

(declare-datatypes ((Token!5868 0))(
  ( (Token!5869 (value!99476 TokenValue!3241) (rule!4983 Rule!6102) (size!14300 Int) (originalCharacters!3965 List!17954)) )
))
(declare-datatypes ((List!17956 0))(
  ( (Nil!17886) (Cons!17886 (h!23287 Token!5868) (t!149413 List!17956)) )
))
(declare-fun tokens!457 () List!17956)

(get-info :version)

(assert (=> b!1630057 (= res!729077 (and (not ((_ is Nil!17886) tokens!457)) (not ((_ is Nil!17886) (t!149413 tokens!457)))))))

(declare-fun b!1630058 () Bool)

(declare-fun e!1045387 () Bool)

(assert (=> b!1630058 (= e!1045402 e!1045387)))

(declare-fun res!729094 () Bool)

(assert (=> b!1630058 (=> (not res!729094) (not e!1045387))))

(declare-fun lt!590750 () List!17954)

(declare-fun lt!590751 () List!17954)

(assert (=> b!1630058 (= res!729094 (= lt!590750 lt!590751))))

(declare-fun lt!590744 () List!17954)

(declare-fun lt!590763 () List!17954)

(declare-fun ++!4769 (List!17954 List!17954) List!17954)

(assert (=> b!1630058 (= lt!590751 (++!4769 lt!590744 lt!590763))))

(declare-fun lt!590759 () BalanceConc!11844)

(declare-fun list!7031 (BalanceConc!11844) List!17954)

(assert (=> b!1630058 (= lt!590750 (list!7031 lt!590759))))

(declare-fun lt!590746 () BalanceConc!11844)

(assert (=> b!1630058 (= lt!590763 (list!7031 lt!590746))))

(declare-fun lt!590753 () BalanceConc!11844)

(assert (=> b!1630058 (= lt!590744 (list!7031 lt!590753))))

(declare-fun charsOf!1800 (Token!5868) BalanceConc!11844)

(assert (=> b!1630058 (= lt!590753 (charsOf!1800 (h!23287 tokens!457)))))

(declare-datatypes ((IArray!11907 0))(
  ( (IArray!11908 (innerList!6011 List!17956)) )
))
(declare-datatypes ((Conc!5951 0))(
  ( (Node!5951 (left!14368 Conc!5951) (right!14698 Conc!5951) (csize!12132 Int) (cheight!6162 Int)) (Leaf!8747 (xs!8787 IArray!11907) (csize!12133 Int)) (Empty!5951) )
))
(declare-datatypes ((BalanceConc!11846 0))(
  ( (BalanceConc!11847 (c!265369 Conc!5951)) )
))
(declare-datatypes ((tuple2!17478 0))(
  ( (tuple2!17479 (_1!10141 BalanceConc!11846) (_2!10141 BalanceConc!11844)) )
))
(declare-fun lt!590743 () tuple2!17478)

(declare-fun lex!1264 (LexerInterface!2780 List!17955 BalanceConc!11844) tuple2!17478)

(assert (=> b!1630058 (= lt!590743 (lex!1264 thiss!17113 rules!1846 lt!590746))))

(declare-fun lt!590742 () BalanceConc!11846)

(declare-fun print!1311 (LexerInterface!2780 BalanceConc!11846) BalanceConc!11844)

(assert (=> b!1630058 (= lt!590746 (print!1311 thiss!17113 lt!590742))))

(declare-fun seqFromList!2051 (List!17956) BalanceConc!11846)

(assert (=> b!1630058 (= lt!590742 (seqFromList!2051 (t!149413 tokens!457)))))

(assert (=> b!1630058 (= lt!590759 (print!1311 thiss!17113 (seqFromList!2051 tokens!457)))))

(declare-fun b!1630059 () Bool)

(declare-fun e!1045392 () Bool)

(declare-fun e!1045388 () Bool)

(assert (=> b!1630059 (= e!1045392 e!1045388)))

(declare-fun res!729084 () Bool)

(assert (=> b!1630059 (=> res!729084 e!1045388)))

(declare-fun lt!590762 () List!17954)

(declare-fun lt!590766 () Regex!4479)

(declare-fun prefixMatch!414 (Regex!4479 List!17954) Bool)

(assert (=> b!1630059 (= res!729084 (prefixMatch!414 lt!590766 (++!4769 (originalCharacters!3965 (h!23287 tokens!457)) lt!590762)))))

(declare-fun e!1045398 () Bool)

(assert (=> b!1630059 e!1045398))

(declare-fun res!729080 () Bool)

(assert (=> b!1630059 (=> (not res!729080) (not e!1045398))))

(declare-datatypes ((tuple2!17480 0))(
  ( (tuple2!17481 (_1!10142 Token!5868) (_2!10142 List!17954)) )
))
(declare-fun lt!590741 () tuple2!17480)

(assert (=> b!1630059 (= res!729080 (= (_1!10142 lt!590741) (h!23287 tokens!457)))))

(declare-datatypes ((Option!3329 0))(
  ( (None!3328) (Some!3328 (v!24381 tuple2!17480)) )
))
(declare-fun lt!590758 () Option!3329)

(declare-fun get!5163 (Option!3329) tuple2!17480)

(assert (=> b!1630059 (= lt!590741 (get!5163 lt!590758))))

(declare-fun isDefined!2696 (Option!3329) Bool)

(assert (=> b!1630059 (isDefined!2696 lt!590758)))

(declare-fun maxPrefix!1344 (LexerInterface!2780 List!17955 List!17954) Option!3329)

(assert (=> b!1630059 (= lt!590758 (maxPrefix!1344 thiss!17113 rules!1846 lt!590744))))

(assert (=> b!1630059 (isDefined!2696 (maxPrefix!1344 thiss!17113 rules!1846 (originalCharacters!3965 (h!23287 tokens!457))))))

(declare-fun b!1630060 () Bool)

(declare-fun e!1045396 () Bool)

(declare-fun e!1045405 () Bool)

(declare-fun tp!473370 () Bool)

(assert (=> b!1630060 (= e!1045396 (and e!1045405 tp!473370))))

(declare-fun b!1630061 () Bool)

(declare-fun e!1045404 () Bool)

(declare-fun e!1045384 () Bool)

(assert (=> b!1630061 (= e!1045404 e!1045384)))

(declare-fun res!729087 () Bool)

(assert (=> b!1630061 (=> res!729087 e!1045384)))

(declare-fun lt!590765 () List!17956)

(declare-fun lt!590740 () List!17956)

(declare-fun lt!590760 () List!17956)

(assert (=> b!1630061 (= res!729087 (or (not (= lt!590765 lt!590740)) (not (= lt!590740 lt!590760))))))

(declare-fun list!7032 (BalanceConc!11846) List!17956)

(assert (=> b!1630061 (= lt!590740 (list!7032 lt!590742))))

(assert (=> b!1630061 (= lt!590765 lt!590760)))

(declare-fun prepend!681 (BalanceConc!11846 Token!5868) BalanceConc!11846)

(assert (=> b!1630061 (= lt!590760 (list!7032 (prepend!681 (seqFromList!2051 (t!149413 (t!149413 tokens!457))) (h!23287 (t!149413 tokens!457)))))))

(declare-datatypes ((Unit!29055 0))(
  ( (Unit!29056) )
))
(declare-fun lt!590752 () Unit!29055)

(declare-fun seqFromListBHdTlConstructive!228 (Token!5868 List!17956 BalanceConc!11846) Unit!29055)

(assert (=> b!1630061 (= lt!590752 (seqFromListBHdTlConstructive!228 (h!23287 (t!149413 tokens!457)) (t!149413 (t!149413 tokens!457)) (_1!10141 lt!590743)))))

(declare-fun res!729089 () Bool)

(assert (=> start!155182 (=> (not res!729089) (not e!1045402))))

(assert (=> start!155182 (= res!729089 ((_ is Lexer!2778) thiss!17113))))

(assert (=> start!155182 e!1045402))

(assert (=> start!155182 true))

(assert (=> start!155182 e!1045396))

(declare-fun e!1045401 () Bool)

(assert (=> start!155182 e!1045401))

(declare-fun b!1630062 () Bool)

(declare-fun res!729090 () Bool)

(assert (=> b!1630062 (=> res!729090 e!1045388)))

(assert (=> b!1630062 (= res!729090 (prefixMatch!414 lt!590766 (++!4769 lt!590744 lt!590762)))))

(declare-fun b!1630063 () Bool)

(declare-fun e!1045393 () Bool)

(assert (=> b!1630063 (= e!1045388 e!1045393)))

(declare-fun res!729093 () Bool)

(assert (=> b!1630063 (=> res!729093 e!1045393)))

(declare-fun lt!590739 () tuple2!17480)

(assert (=> b!1630063 (= res!729093 (or (not (= (_1!10142 lt!590739) (h!23287 tokens!457))) (not (= (_2!10142 lt!590739) lt!590763))))))

(declare-fun lt!590738 () Option!3329)

(assert (=> b!1630063 (= lt!590739 (get!5163 lt!590738))))

(declare-fun lt!590756 () Unit!29055)

(declare-fun lemmaMaxPrefWithNoPrefixMatchAllRulesThenSuffixReturnSame!116 (LexerInterface!2780 List!17955 Token!5868 Rule!6102 List!17954) Unit!29055)

(assert (=> b!1630063 (= lt!590756 (lemmaMaxPrefWithNoPrefixMatchAllRulesThenSuffixReturnSame!116 thiss!17113 rules!1846 (h!23287 tokens!457) (rule!4983 (h!23287 tokens!457)) lt!590763))))

(declare-fun b!1630064 () Bool)

(declare-fun res!729086 () Bool)

(declare-fun e!1045385 () Bool)

(assert (=> b!1630064 (=> res!729086 e!1045385)))

(declare-fun isEmpty!10916 (BalanceConc!11846) Bool)

(declare-fun seqFromList!2052 (List!17954) BalanceConc!11844)

(assert (=> b!1630064 (= res!729086 (isEmpty!10916 (_1!10141 (lex!1264 thiss!17113 rules!1846 (seqFromList!2052 lt!590744)))))))

(declare-fun b!1630065 () Bool)

(declare-fun e!1045391 () Bool)

(assert (=> b!1630065 (= e!1045391 e!1045392)))

(declare-fun res!729096 () Bool)

(assert (=> b!1630065 (=> res!729096 e!1045392)))

(declare-datatypes ((tuple2!17482 0))(
  ( (tuple2!17483 (_1!10143 Token!5868) (_2!10143 BalanceConc!11844)) )
))
(declare-datatypes ((Option!3330 0))(
  ( (None!3329) (Some!3329 (v!24382 tuple2!17482)) )
))
(declare-fun isDefined!2697 (Option!3330) Bool)

(declare-fun maxPrefixZipperSequence!675 (LexerInterface!2780 List!17955 BalanceConc!11844) Option!3330)

(assert (=> b!1630065 (= res!729096 (not (isDefined!2697 (maxPrefixZipperSequence!675 thiss!17113 rules!1846 (seqFromList!2052 (originalCharacters!3965 (h!23287 tokens!457)))))))))

(declare-fun lt!590755 () List!17954)

(assert (=> b!1630065 (= lt!590755 lt!590762)))

(declare-fun head!3466 (BalanceConc!11844) C!9132)

(assert (=> b!1630065 (= lt!590762 (Cons!17884 (head!3466 lt!590746) Nil!17884))))

(declare-fun e!1045406 () Bool)

(assert (=> b!1630065 e!1045406))

(declare-fun res!729082 () Bool)

(assert (=> b!1630065 (=> (not res!729082) (not e!1045406))))

(assert (=> b!1630065 (= res!729082 (= lt!590744 (originalCharacters!3965 (h!23287 tokens!457))))))

(declare-fun e!1045390 () Bool)

(declare-fun tp!473366 () Bool)

(declare-fun b!1630066 () Bool)

(declare-fun e!1045397 () Bool)

(declare-fun inv!21 (TokenValue!3241) Bool)

(assert (=> b!1630066 (= e!1045390 (and (inv!21 (value!99476 (h!23287 tokens!457))) e!1045397 tp!473366))))

(declare-fun b!1630067 () Bool)

(declare-fun res!729099 () Bool)

(assert (=> b!1630067 (=> (not res!729099) (not e!1045406))))

(declare-fun head!3467 (List!17954) C!9132)

(assert (=> b!1630067 (= res!729099 (= lt!590755 (Cons!17884 (head!3467 (originalCharacters!3965 (h!23287 (t!149413 tokens!457)))) Nil!17884)))))

(declare-fun b!1630068 () Bool)

(assert (=> b!1630068 (= e!1045406 (= lt!590755 (Cons!17884 (head!3467 lt!590763) Nil!17884)))))

(declare-fun b!1630069 () Bool)

(declare-fun res!729097 () Bool)

(assert (=> b!1630069 (=> res!729097 e!1045384)))

(declare-fun separableTokensPredicate!722 (LexerInterface!2780 Token!5868 Token!5868 List!17955) Bool)

(assert (=> b!1630069 (= res!729097 (not (separableTokensPredicate!722 thiss!17113 (h!23287 tokens!457) (h!23287 (t!149413 tokens!457)) rules!1846)))))

(declare-fun b!1630070 () Bool)

(declare-fun matchR!1978 (Regex!4479 List!17954) Bool)

(assert (=> b!1630070 (= e!1045398 (matchR!1978 (regex!3151 (rule!4983 (h!23287 tokens!457))) lt!590744))))

(declare-fun b!1630071 () Bool)

(declare-fun e!1045400 () Bool)

(declare-fun e!1045395 () Bool)

(assert (=> b!1630071 (= e!1045400 e!1045395)))

(declare-fun res!729100 () Bool)

(assert (=> b!1630071 (=> res!729100 e!1045395)))

(declare-fun lt!590754 () BalanceConc!11844)

(declare-fun prefixMatchZipperSequence!543 (Regex!4479 BalanceConc!11844) Bool)

(declare-fun ++!4770 (BalanceConc!11844 BalanceConc!11844) BalanceConc!11844)

(assert (=> b!1630071 (= res!729100 (prefixMatchZipperSequence!543 lt!590766 (++!4770 lt!590753 lt!590754)))))

(declare-fun singletonSeq!1580 (C!9132) BalanceConc!11844)

(declare-fun apply!4588 (BalanceConc!11844 Int) C!9132)

(assert (=> b!1630071 (= lt!590754 (singletonSeq!1580 (apply!4588 (charsOf!1800 (h!23287 (t!149413 tokens!457))) 0)))))

(declare-fun rulesRegex!541 (LexerInterface!2780 List!17955) Regex!4479)

(assert (=> b!1630071 (= lt!590766 (rulesRegex!541 thiss!17113 rules!1846))))

(declare-fun b!1630072 () Bool)

(declare-fun res!729079 () Bool)

(assert (=> b!1630072 (=> (not res!729079) (not e!1045402))))

(declare-fun tokensListTwoByTwoPredicateSeparableList!473 (LexerInterface!2780 List!17956 List!17955) Bool)

(assert (=> b!1630072 (= res!729079 (tokensListTwoByTwoPredicateSeparableList!473 thiss!17113 tokens!457 rules!1846))))

(declare-fun b!1630073 () Bool)

(assert (=> b!1630073 (= e!1045384 e!1045385)))

(declare-fun res!729078 () Bool)

(assert (=> b!1630073 (=> res!729078 e!1045385)))

(declare-fun lt!590748 () List!17954)

(declare-fun lt!590749 () List!17954)

(assert (=> b!1630073 (= res!729078 (or (not (= lt!590749 lt!590748)) (not (= lt!590748 lt!590744)) (not (= lt!590749 lt!590744))))))

(declare-fun printList!895 (LexerInterface!2780 List!17956) List!17954)

(assert (=> b!1630073 (= lt!590748 (printList!895 thiss!17113 (Cons!17886 (h!23287 tokens!457) Nil!17886)))))

(declare-fun lt!590761 () BalanceConc!11844)

(assert (=> b!1630073 (= lt!590749 (list!7031 lt!590761))))

(declare-fun lt!590757 () BalanceConc!11846)

(declare-fun printTailRec!833 (LexerInterface!2780 BalanceConc!11846 Int BalanceConc!11844) BalanceConc!11844)

(assert (=> b!1630073 (= lt!590761 (printTailRec!833 thiss!17113 lt!590757 0 (BalanceConc!11845 Empty!5950)))))

(assert (=> b!1630073 (= lt!590761 (print!1311 thiss!17113 lt!590757))))

(declare-fun singletonSeq!1581 (Token!5868) BalanceConc!11846)

(assert (=> b!1630073 (= lt!590757 (singletonSeq!1581 (h!23287 tokens!457)))))

(assert (=> b!1630073 (= lt!590738 (maxPrefix!1344 thiss!17113 rules!1846 lt!590750))))

(declare-fun b!1630074 () Bool)

(assert (=> b!1630074 (= e!1045387 (not e!1045404))))

(declare-fun res!729091 () Bool)

(assert (=> b!1630074 (=> res!729091 e!1045404)))

(assert (=> b!1630074 (= res!729091 (not (= lt!590765 (t!149413 tokens!457))))))

(assert (=> b!1630074 (= lt!590765 (list!7032 (_1!10141 lt!590743)))))

(declare-fun lt!590764 () Unit!29055)

(declare-fun theoremInvertabilityWhenTokenListSeparable!225 (LexerInterface!2780 List!17955 List!17956) Unit!29055)

(assert (=> b!1630074 (= lt!590764 (theoremInvertabilityWhenTokenListSeparable!225 thiss!17113 rules!1846 (t!149413 tokens!457)))))

(declare-fun isPrefix!1411 (List!17954 List!17954) Bool)

(assert (=> b!1630074 (isPrefix!1411 lt!590744 lt!590751)))

(declare-fun lt!590747 () Unit!29055)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!936 (List!17954 List!17954) Unit!29055)

(assert (=> b!1630074 (= lt!590747 (lemmaConcatTwoListThenFirstIsPrefix!936 lt!590744 lt!590763))))

(declare-fun b!1630075 () Bool)

(declare-fun res!729088 () Bool)

(assert (=> b!1630075 (=> res!729088 e!1045385)))

(declare-fun rulesProduceIndividualToken!1432 (LexerInterface!2780 List!17955 Token!5868) Bool)

(assert (=> b!1630075 (= res!729088 (not (rulesProduceIndividualToken!1432 thiss!17113 rules!1846 (h!23287 tokens!457))))))

(declare-fun tp!473368 () Bool)

(declare-fun b!1630076 () Bool)

(declare-fun inv!23256 (String!20537) Bool)

(declare-fun inv!23259 (TokenValueInjection!6142) Bool)

(assert (=> b!1630076 (= e!1045405 (and tp!473368 (inv!23256 (tag!3431 (h!23286 rules!1846))) (inv!23259 (transformation!3151 (h!23286 rules!1846))) e!1045389))))

(declare-fun b!1630077 () Bool)

(declare-fun tp!473373 () Bool)

(declare-fun inv!23260 (Token!5868) Bool)

(assert (=> b!1630077 (= e!1045401 (and (inv!23260 (h!23287 tokens!457)) e!1045390 tp!473373))))

(declare-fun b!1630078 () Bool)

(declare-fun rulesValidInductive!976 (LexerInterface!2780 List!17955) Bool)

(assert (=> b!1630078 (= e!1045393 (rulesValidInductive!976 thiss!17113 rules!1846))))

(declare-fun b!1630079 () Bool)

(assert (=> b!1630079 (= e!1045395 e!1045391)))

(declare-fun res!729095 () Bool)

(assert (=> b!1630079 (=> res!729095 e!1045391)))

(assert (=> b!1630079 (= res!729095 (prefixMatch!414 lt!590766 (++!4769 lt!590744 lt!590755)))))

(assert (=> b!1630079 (= lt!590755 (list!7031 lt!590754))))

(declare-fun b!1630080 () Bool)

(declare-fun res!729081 () Bool)

(assert (=> b!1630080 (=> (not res!729081) (not e!1045398))))

(declare-fun isEmpty!10917 (List!17954) Bool)

(assert (=> b!1630080 (= res!729081 (isEmpty!10917 (_2!10142 lt!590741)))))

(declare-fun tp!473369 () Bool)

(declare-fun e!1045403 () Bool)

(declare-fun b!1630081 () Bool)

(assert (=> b!1630081 (= e!1045397 (and tp!473369 (inv!23256 (tag!3431 (rule!4983 (h!23287 tokens!457)))) (inv!23259 (transformation!3151 (rule!4983 (h!23287 tokens!457)))) e!1045403))))

(assert (=> b!1630082 (= e!1045403 (and tp!473367 tp!473372))))

(declare-fun b!1630083 () Bool)

(declare-fun res!729098 () Bool)

(assert (=> b!1630083 (=> (not res!729098) (not e!1045402))))

(declare-fun rulesProduceEachTokenIndividuallyList!982 (LexerInterface!2780 List!17955 List!17956) Bool)

(assert (=> b!1630083 (= res!729098 (rulesProduceEachTokenIndividuallyList!982 thiss!17113 rules!1846 tokens!457))))

(declare-fun b!1630084 () Bool)

(assert (=> b!1630084 (= e!1045385 e!1045400)))

(declare-fun res!729085 () Bool)

(assert (=> b!1630084 (=> res!729085 e!1045400)))

(assert (=> b!1630084 (= res!729085 (not (isDefined!2696 lt!590738)))))

(declare-fun lt!590745 () Unit!29055)

(declare-fun lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!354 (LexerInterface!2780 List!17955 List!17954 List!17954) Unit!29055)

(assert (=> b!1630084 (= lt!590745 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!354 thiss!17113 rules!1846 lt!590744 lt!590763))))

(assert (= (and start!155182 res!729089) b!1630054))

(assert (= (and b!1630054 res!729092) b!1630056))

(assert (= (and b!1630056 res!729083) b!1630083))

(assert (= (and b!1630083 res!729098) b!1630072))

(assert (= (and b!1630072 res!729079) b!1630057))

(assert (= (and b!1630057 res!729077) b!1630058))

(assert (= (and b!1630058 res!729094) b!1630074))

(assert (= (and b!1630074 (not res!729091)) b!1630061))

(assert (= (and b!1630061 (not res!729087)) b!1630069))

(assert (= (and b!1630069 (not res!729097)) b!1630073))

(assert (= (and b!1630073 (not res!729078)) b!1630075))

(assert (= (and b!1630075 (not res!729088)) b!1630064))

(assert (= (and b!1630064 (not res!729086)) b!1630084))

(assert (= (and b!1630084 (not res!729085)) b!1630071))

(assert (= (and b!1630071 (not res!729100)) b!1630079))

(assert (= (and b!1630079 (not res!729095)) b!1630065))

(assert (= (and b!1630065 res!729082) b!1630067))

(assert (= (and b!1630067 res!729099) b!1630068))

(assert (= (and b!1630065 (not res!729096)) b!1630059))

(assert (= (and b!1630059 res!729080) b!1630080))

(assert (= (and b!1630080 res!729081) b!1630070))

(assert (= (and b!1630059 (not res!729084)) b!1630062))

(assert (= (and b!1630062 (not res!729090)) b!1630063))

(assert (= (and b!1630063 (not res!729093)) b!1630078))

(assert (= b!1630076 b!1630055))

(assert (= b!1630060 b!1630076))

(assert (= (and start!155182 ((_ is Cons!17885) rules!1846)) b!1630060))

(assert (= b!1630081 b!1630082))

(assert (= b!1630066 b!1630081))

(assert (= b!1630077 b!1630066))

(assert (= (and start!155182 ((_ is Cons!17886) tokens!457)) b!1630077))

(declare-fun m!1962111 () Bool)

(assert (=> b!1630067 m!1962111))

(declare-fun m!1962113 () Bool)

(assert (=> b!1630078 m!1962113))

(declare-fun m!1962115 () Bool)

(assert (=> b!1630081 m!1962115))

(declare-fun m!1962117 () Bool)

(assert (=> b!1630081 m!1962117))

(declare-fun m!1962119 () Bool)

(assert (=> b!1630068 m!1962119))

(declare-fun m!1962121 () Bool)

(assert (=> b!1630056 m!1962121))

(declare-fun m!1962123 () Bool)

(assert (=> b!1630070 m!1962123))

(declare-fun m!1962125 () Bool)

(assert (=> b!1630061 m!1962125))

(declare-fun m!1962127 () Bool)

(assert (=> b!1630061 m!1962127))

(declare-fun m!1962129 () Bool)

(assert (=> b!1630061 m!1962129))

(declare-fun m!1962131 () Bool)

(assert (=> b!1630061 m!1962131))

(declare-fun m!1962133 () Bool)

(assert (=> b!1630061 m!1962133))

(assert (=> b!1630061 m!1962129))

(assert (=> b!1630061 m!1962131))

(declare-fun m!1962135 () Bool)

(assert (=> b!1630059 m!1962135))

(declare-fun m!1962137 () Bool)

(assert (=> b!1630059 m!1962137))

(declare-fun m!1962139 () Bool)

(assert (=> b!1630059 m!1962139))

(declare-fun m!1962141 () Bool)

(assert (=> b!1630059 m!1962141))

(declare-fun m!1962143 () Bool)

(assert (=> b!1630059 m!1962143))

(declare-fun m!1962145 () Bool)

(assert (=> b!1630059 m!1962145))

(assert (=> b!1630059 m!1962135))

(declare-fun m!1962147 () Bool)

(assert (=> b!1630059 m!1962147))

(assert (=> b!1630059 m!1962137))

(declare-fun m!1962149 () Bool)

(assert (=> b!1630077 m!1962149))

(declare-fun m!1962151 () Bool)

(assert (=> b!1630063 m!1962151))

(declare-fun m!1962153 () Bool)

(assert (=> b!1630063 m!1962153))

(declare-fun m!1962155 () Bool)

(assert (=> b!1630073 m!1962155))

(declare-fun m!1962157 () Bool)

(assert (=> b!1630073 m!1962157))

(declare-fun m!1962159 () Bool)

(assert (=> b!1630073 m!1962159))

(declare-fun m!1962161 () Bool)

(assert (=> b!1630073 m!1962161))

(declare-fun m!1962163 () Bool)

(assert (=> b!1630073 m!1962163))

(declare-fun m!1962165 () Bool)

(assert (=> b!1630073 m!1962165))

(declare-fun m!1962167 () Bool)

(assert (=> b!1630072 m!1962167))

(declare-fun m!1962169 () Bool)

(assert (=> b!1630058 m!1962169))

(declare-fun m!1962171 () Bool)

(assert (=> b!1630058 m!1962171))

(declare-fun m!1962173 () Bool)

(assert (=> b!1630058 m!1962173))

(declare-fun m!1962175 () Bool)

(assert (=> b!1630058 m!1962175))

(declare-fun m!1962177 () Bool)

(assert (=> b!1630058 m!1962177))

(declare-fun m!1962179 () Bool)

(assert (=> b!1630058 m!1962179))

(declare-fun m!1962181 () Bool)

(assert (=> b!1630058 m!1962181))

(declare-fun m!1962183 () Bool)

(assert (=> b!1630058 m!1962183))

(declare-fun m!1962185 () Bool)

(assert (=> b!1630058 m!1962185))

(assert (=> b!1630058 m!1962175))

(declare-fun m!1962187 () Bool)

(assert (=> b!1630058 m!1962187))

(declare-fun m!1962189 () Bool)

(assert (=> b!1630076 m!1962189))

(declare-fun m!1962191 () Bool)

(assert (=> b!1630076 m!1962191))

(declare-fun m!1962193 () Bool)

(assert (=> b!1630069 m!1962193))

(declare-fun m!1962195 () Bool)

(assert (=> b!1630083 m!1962195))

(declare-fun m!1962197 () Bool)

(assert (=> b!1630071 m!1962197))

(declare-fun m!1962199 () Bool)

(assert (=> b!1630071 m!1962199))

(declare-fun m!1962201 () Bool)

(assert (=> b!1630071 m!1962201))

(declare-fun m!1962203 () Bool)

(assert (=> b!1630071 m!1962203))

(assert (=> b!1630071 m!1962203))

(declare-fun m!1962205 () Bool)

(assert (=> b!1630071 m!1962205))

(declare-fun m!1962207 () Bool)

(assert (=> b!1630071 m!1962207))

(assert (=> b!1630071 m!1962199))

(assert (=> b!1630071 m!1962207))

(declare-fun m!1962209 () Bool)

(assert (=> b!1630080 m!1962209))

(declare-fun m!1962211 () Bool)

(assert (=> b!1630066 m!1962211))

(declare-fun m!1962213 () Bool)

(assert (=> b!1630075 m!1962213))

(declare-fun m!1962215 () Bool)

(assert (=> b!1630062 m!1962215))

(assert (=> b!1630062 m!1962215))

(declare-fun m!1962217 () Bool)

(assert (=> b!1630062 m!1962217))

(declare-fun m!1962219 () Bool)

(assert (=> b!1630074 m!1962219))

(declare-fun m!1962221 () Bool)

(assert (=> b!1630074 m!1962221))

(declare-fun m!1962223 () Bool)

(assert (=> b!1630074 m!1962223))

(declare-fun m!1962225 () Bool)

(assert (=> b!1630074 m!1962225))

(declare-fun m!1962227 () Bool)

(assert (=> b!1630064 m!1962227))

(assert (=> b!1630064 m!1962227))

(declare-fun m!1962229 () Bool)

(assert (=> b!1630064 m!1962229))

(declare-fun m!1962231 () Bool)

(assert (=> b!1630064 m!1962231))

(declare-fun m!1962233 () Bool)

(assert (=> b!1630054 m!1962233))

(declare-fun m!1962235 () Bool)

(assert (=> b!1630084 m!1962235))

(declare-fun m!1962237 () Bool)

(assert (=> b!1630084 m!1962237))

(declare-fun m!1962239 () Bool)

(assert (=> b!1630065 m!1962239))

(assert (=> b!1630065 m!1962239))

(declare-fun m!1962241 () Bool)

(assert (=> b!1630065 m!1962241))

(assert (=> b!1630065 m!1962241))

(declare-fun m!1962243 () Bool)

(assert (=> b!1630065 m!1962243))

(declare-fun m!1962245 () Bool)

(assert (=> b!1630065 m!1962245))

(declare-fun m!1962247 () Bool)

(assert (=> b!1630079 m!1962247))

(assert (=> b!1630079 m!1962247))

(declare-fun m!1962249 () Bool)

(assert (=> b!1630079 m!1962249))

(declare-fun m!1962251 () Bool)

(assert (=> b!1630079 m!1962251))

(check-sat (not b!1630070) (not b!1630060) (not b!1630064) (not b!1630065) (not b!1630076) (not b!1630084) (not b!1630078) (not b!1630058) (not b!1630080) (not b!1630067) b_and!115619 (not b_next!44699) (not b!1630073) (not b!1630069) (not b!1630061) (not b_next!44701) b_and!115617 (not b!1630077) b_and!115615 (not b!1630075) (not b!1630072) (not b!1630059) (not b!1630063) (not b!1630074) (not b!1630081) (not b_next!44695) (not b!1630054) (not b!1630068) (not b!1630071) (not b!1630066) (not b!1630062) (not b!1630079) (not b!1630083) b_and!115613 (not b_next!44697) (not b!1630056))
(check-sat (not b_next!44701) b_and!115617 b_and!115615 (not b_next!44695) b_and!115619 (not b_next!44699) b_and!115613 (not b_next!44697))
(get-model)

(declare-fun d!491142 () Bool)

(assert (=> d!491142 (= (isEmpty!10917 (_2!10142 lt!590741)) ((_ is Nil!17884) (_2!10142 lt!590741)))))

(assert (=> b!1630080 d!491142))

(declare-fun d!491144 () Bool)

(declare-fun list!7033 (Conc!5950) List!17954)

(assert (=> d!491144 (= (list!7031 lt!590759) (list!7033 (c!265367 lt!590759)))))

(declare-fun bs!395095 () Bool)

(assert (= bs!395095 d!491144))

(declare-fun m!1962259 () Bool)

(assert (=> bs!395095 m!1962259))

(assert (=> b!1630058 d!491144))

(declare-fun d!491146 () Bool)

(assert (=> d!491146 (= (list!7031 lt!590746) (list!7033 (c!265367 lt!590746)))))

(declare-fun bs!395096 () Bool)

(assert (= bs!395096 d!491146))

(declare-fun m!1962261 () Bool)

(assert (=> bs!395096 m!1962261))

(assert (=> b!1630058 d!491146))

(declare-fun b!1630184 () Bool)

(declare-fun e!1045457 () Bool)

(declare-fun lt!590799 () tuple2!17478)

(assert (=> b!1630184 (= e!1045457 (not (isEmpty!10916 (_1!10141 lt!590799))))))

(declare-fun b!1630185 () Bool)

(declare-fun e!1045456 () Bool)

(assert (=> b!1630185 (= e!1045456 e!1045457)))

(declare-fun res!729172 () Bool)

(declare-fun size!14304 (BalanceConc!11844) Int)

(assert (=> b!1630185 (= res!729172 (< (size!14304 (_2!10141 lt!590799)) (size!14304 lt!590746)))))

(assert (=> b!1630185 (=> (not res!729172) (not e!1045457))))

(declare-fun b!1630186 () Bool)

(declare-fun res!729170 () Bool)

(declare-fun e!1045455 () Bool)

(assert (=> b!1630186 (=> (not res!729170) (not e!1045455))))

(declare-datatypes ((tuple2!17486 0))(
  ( (tuple2!17487 (_1!10145 List!17956) (_2!10145 List!17954)) )
))
(declare-fun lexList!833 (LexerInterface!2780 List!17955 List!17954) tuple2!17486)

(assert (=> b!1630186 (= res!729170 (= (list!7032 (_1!10141 lt!590799)) (_1!10145 (lexList!833 thiss!17113 rules!1846 (list!7031 lt!590746)))))))

(declare-fun b!1630187 () Bool)

(assert (=> b!1630187 (= e!1045455 (= (list!7031 (_2!10141 lt!590799)) (_2!10145 (lexList!833 thiss!17113 rules!1846 (list!7031 lt!590746)))))))

(declare-fun d!491148 () Bool)

(assert (=> d!491148 e!1045455))

(declare-fun res!729171 () Bool)

(assert (=> d!491148 (=> (not res!729171) (not e!1045455))))

(assert (=> d!491148 (= res!729171 e!1045456)))

(declare-fun c!265387 () Bool)

(declare-fun size!14305 (BalanceConc!11846) Int)

(assert (=> d!491148 (= c!265387 (> (size!14305 (_1!10141 lt!590799)) 0))))

(declare-fun lexTailRecV2!556 (LexerInterface!2780 List!17955 BalanceConc!11844 BalanceConc!11844 BalanceConc!11844 BalanceConc!11846) tuple2!17478)

(assert (=> d!491148 (= lt!590799 (lexTailRecV2!556 thiss!17113 rules!1846 lt!590746 (BalanceConc!11845 Empty!5950) lt!590746 (BalanceConc!11847 Empty!5951)))))

(assert (=> d!491148 (= (lex!1264 thiss!17113 rules!1846 lt!590746) lt!590799)))

(declare-fun b!1630188 () Bool)

(assert (=> b!1630188 (= e!1045456 (= (_2!10141 lt!590799) lt!590746))))

(assert (= (and d!491148 c!265387) b!1630185))

(assert (= (and d!491148 (not c!265387)) b!1630188))

(assert (= (and b!1630185 res!729172) b!1630184))

(assert (= (and d!491148 res!729171) b!1630186))

(assert (= (and b!1630186 res!729170) b!1630187))

(declare-fun m!1962409 () Bool)

(assert (=> b!1630186 m!1962409))

(assert (=> b!1630186 m!1962169))

(assert (=> b!1630186 m!1962169))

(declare-fun m!1962411 () Bool)

(assert (=> b!1630186 m!1962411))

(declare-fun m!1962413 () Bool)

(assert (=> d!491148 m!1962413))

(declare-fun m!1962415 () Bool)

(assert (=> d!491148 m!1962415))

(declare-fun m!1962417 () Bool)

(assert (=> b!1630187 m!1962417))

(assert (=> b!1630187 m!1962169))

(assert (=> b!1630187 m!1962169))

(assert (=> b!1630187 m!1962411))

(declare-fun m!1962419 () Bool)

(assert (=> b!1630185 m!1962419))

(declare-fun m!1962421 () Bool)

(assert (=> b!1630185 m!1962421))

(declare-fun m!1962423 () Bool)

(assert (=> b!1630184 m!1962423))

(assert (=> b!1630058 d!491148))

(declare-fun d!491178 () Bool)

(assert (=> d!491178 (= (list!7031 lt!590753) (list!7033 (c!265367 lt!590753)))))

(declare-fun bs!395101 () Bool)

(assert (= bs!395101 d!491178))

(declare-fun m!1962425 () Bool)

(assert (=> bs!395101 m!1962425))

(assert (=> b!1630058 d!491178))

(declare-fun b!1630199 () Bool)

(declare-fun res!729177 () Bool)

(declare-fun e!1045462 () Bool)

(assert (=> b!1630199 (=> (not res!729177) (not e!1045462))))

(declare-fun lt!590802 () List!17954)

(declare-fun size!14306 (List!17954) Int)

(assert (=> b!1630199 (= res!729177 (= (size!14306 lt!590802) (+ (size!14306 lt!590744) (size!14306 lt!590763))))))

(declare-fun b!1630197 () Bool)

(declare-fun e!1045463 () List!17954)

(assert (=> b!1630197 (= e!1045463 lt!590763)))

(declare-fun b!1630200 () Bool)

(assert (=> b!1630200 (= e!1045462 (or (not (= lt!590763 Nil!17884)) (= lt!590802 lt!590744)))))

(declare-fun d!491180 () Bool)

(assert (=> d!491180 e!1045462))

(declare-fun res!729178 () Bool)

(assert (=> d!491180 (=> (not res!729178) (not e!1045462))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!2483 (List!17954) (InoxSet C!9132))

(assert (=> d!491180 (= res!729178 (= (content!2483 lt!590802) ((_ map or) (content!2483 lt!590744) (content!2483 lt!590763))))))

(assert (=> d!491180 (= lt!590802 e!1045463)))

(declare-fun c!265390 () Bool)

(assert (=> d!491180 (= c!265390 ((_ is Nil!17884) lt!590744))))

(assert (=> d!491180 (= (++!4769 lt!590744 lt!590763) lt!590802)))

(declare-fun b!1630198 () Bool)

(assert (=> b!1630198 (= e!1045463 (Cons!17884 (h!23285 lt!590744) (++!4769 (t!149411 lt!590744) lt!590763)))))

(assert (= (and d!491180 c!265390) b!1630197))

(assert (= (and d!491180 (not c!265390)) b!1630198))

(assert (= (and d!491180 res!729178) b!1630199))

(assert (= (and b!1630199 res!729177) b!1630200))

(declare-fun m!1962427 () Bool)

(assert (=> b!1630199 m!1962427))

(declare-fun m!1962429 () Bool)

(assert (=> b!1630199 m!1962429))

(declare-fun m!1962431 () Bool)

(assert (=> b!1630199 m!1962431))

(declare-fun m!1962433 () Bool)

(assert (=> d!491180 m!1962433))

(declare-fun m!1962435 () Bool)

(assert (=> d!491180 m!1962435))

(declare-fun m!1962437 () Bool)

(assert (=> d!491180 m!1962437))

(declare-fun m!1962439 () Bool)

(assert (=> b!1630198 m!1962439))

(assert (=> b!1630058 d!491180))

(declare-fun d!491182 () Bool)

(declare-fun fromListB!901 (List!17956) BalanceConc!11846)

(assert (=> d!491182 (= (seqFromList!2051 tokens!457) (fromListB!901 tokens!457))))

(declare-fun bs!395102 () Bool)

(assert (= bs!395102 d!491182))

(declare-fun m!1962441 () Bool)

(assert (=> bs!395102 m!1962441))

(assert (=> b!1630058 d!491182))

(declare-fun d!491184 () Bool)

(declare-fun lt!590805 () BalanceConc!11844)

(assert (=> d!491184 (= (list!7031 lt!590805) (originalCharacters!3965 (h!23287 tokens!457)))))

(declare-fun dynLambda!7979 (Int TokenValue!3241) BalanceConc!11844)

(assert (=> d!491184 (= lt!590805 (dynLambda!7979 (toChars!4441 (transformation!3151 (rule!4983 (h!23287 tokens!457)))) (value!99476 (h!23287 tokens!457))))))

(assert (=> d!491184 (= (charsOf!1800 (h!23287 tokens!457)) lt!590805)))

(declare-fun b_lambda!51319 () Bool)

(assert (=> (not b_lambda!51319) (not d!491184)))

(declare-fun t!149419 () Bool)

(declare-fun tb!93627 () Bool)

(assert (=> (and b!1630082 (= (toChars!4441 (transformation!3151 (rule!4983 (h!23287 tokens!457)))) (toChars!4441 (transformation!3151 (rule!4983 (h!23287 tokens!457))))) t!149419) tb!93627))

(declare-fun b!1630205 () Bool)

(declare-fun e!1045466 () Bool)

(declare-fun tp!473380 () Bool)

(declare-fun inv!23263 (Conc!5950) Bool)

(assert (=> b!1630205 (= e!1045466 (and (inv!23263 (c!265367 (dynLambda!7979 (toChars!4441 (transformation!3151 (rule!4983 (h!23287 tokens!457)))) (value!99476 (h!23287 tokens!457))))) tp!473380))))

(declare-fun result!112896 () Bool)

(declare-fun inv!23264 (BalanceConc!11844) Bool)

(assert (=> tb!93627 (= result!112896 (and (inv!23264 (dynLambda!7979 (toChars!4441 (transformation!3151 (rule!4983 (h!23287 tokens!457)))) (value!99476 (h!23287 tokens!457)))) e!1045466))))

(assert (= tb!93627 b!1630205))

(declare-fun m!1962443 () Bool)

(assert (=> b!1630205 m!1962443))

(declare-fun m!1962445 () Bool)

(assert (=> tb!93627 m!1962445))

(assert (=> d!491184 t!149419))

(declare-fun b_and!115625 () Bool)

(assert (= b_and!115615 (and (=> t!149419 result!112896) b_and!115625)))

(declare-fun t!149421 () Bool)

(declare-fun tb!93629 () Bool)

(assert (=> (and b!1630055 (= (toChars!4441 (transformation!3151 (h!23286 rules!1846))) (toChars!4441 (transformation!3151 (rule!4983 (h!23287 tokens!457))))) t!149421) tb!93629))

(declare-fun result!112900 () Bool)

(assert (= result!112900 result!112896))

(assert (=> d!491184 t!149421))

(declare-fun b_and!115627 () Bool)

(assert (= b_and!115619 (and (=> t!149421 result!112900) b_and!115627)))

(declare-fun m!1962447 () Bool)

(assert (=> d!491184 m!1962447))

(declare-fun m!1962449 () Bool)

(assert (=> d!491184 m!1962449))

(assert (=> b!1630058 d!491184))

(declare-fun d!491186 () Bool)

(assert (=> d!491186 (= (seqFromList!2051 (t!149413 tokens!457)) (fromListB!901 (t!149413 tokens!457)))))

(declare-fun bs!395103 () Bool)

(assert (= bs!395103 d!491186))

(declare-fun m!1962451 () Bool)

(assert (=> bs!395103 m!1962451))

(assert (=> b!1630058 d!491186))

(declare-fun d!491188 () Bool)

(declare-fun lt!590808 () BalanceConc!11844)

(assert (=> d!491188 (= (list!7031 lt!590808) (printList!895 thiss!17113 (list!7032 (seqFromList!2051 tokens!457))))))

(assert (=> d!491188 (= lt!590808 (printTailRec!833 thiss!17113 (seqFromList!2051 tokens!457) 0 (BalanceConc!11845 Empty!5950)))))

(assert (=> d!491188 (= (print!1311 thiss!17113 (seqFromList!2051 tokens!457)) lt!590808)))

(declare-fun bs!395104 () Bool)

(assert (= bs!395104 d!491188))

(declare-fun m!1962453 () Bool)

(assert (=> bs!395104 m!1962453))

(assert (=> bs!395104 m!1962175))

(declare-fun m!1962455 () Bool)

(assert (=> bs!395104 m!1962455))

(assert (=> bs!395104 m!1962455))

(declare-fun m!1962457 () Bool)

(assert (=> bs!395104 m!1962457))

(assert (=> bs!395104 m!1962175))

(declare-fun m!1962459 () Bool)

(assert (=> bs!395104 m!1962459))

(assert (=> b!1630058 d!491188))

(declare-fun d!491190 () Bool)

(declare-fun lt!590809 () BalanceConc!11844)

(assert (=> d!491190 (= (list!7031 lt!590809) (printList!895 thiss!17113 (list!7032 lt!590742)))))

(assert (=> d!491190 (= lt!590809 (printTailRec!833 thiss!17113 lt!590742 0 (BalanceConc!11845 Empty!5950)))))

(assert (=> d!491190 (= (print!1311 thiss!17113 lt!590742) lt!590809)))

(declare-fun bs!395105 () Bool)

(assert (= bs!395105 d!491190))

(declare-fun m!1962461 () Bool)

(assert (=> bs!395105 m!1962461))

(assert (=> bs!395105 m!1962127))

(assert (=> bs!395105 m!1962127))

(declare-fun m!1962463 () Bool)

(assert (=> bs!395105 m!1962463))

(declare-fun m!1962465 () Bool)

(assert (=> bs!395105 m!1962465))

(assert (=> b!1630058 d!491190))

(declare-fun d!491192 () Bool)

(declare-fun c!265393 () Bool)

(assert (=> d!491192 (= c!265393 (isEmpty!10917 (++!4769 lt!590744 lt!590755)))))

(declare-fun e!1045469 () Bool)

(assert (=> d!491192 (= (prefixMatch!414 lt!590766 (++!4769 lt!590744 lt!590755)) e!1045469)))

(declare-fun b!1630210 () Bool)

(declare-fun lostCause!442 (Regex!4479) Bool)

(assert (=> b!1630210 (= e!1045469 (not (lostCause!442 lt!590766)))))

(declare-fun b!1630211 () Bool)

(declare-fun derivativeStep!1086 (Regex!4479 C!9132) Regex!4479)

(declare-fun tail!2372 (List!17954) List!17954)

(assert (=> b!1630211 (= e!1045469 (prefixMatch!414 (derivativeStep!1086 lt!590766 (head!3467 (++!4769 lt!590744 lt!590755))) (tail!2372 (++!4769 lt!590744 lt!590755))))))

(assert (= (and d!491192 c!265393) b!1630210))

(assert (= (and d!491192 (not c!265393)) b!1630211))

(assert (=> d!491192 m!1962247))

(declare-fun m!1962467 () Bool)

(assert (=> d!491192 m!1962467))

(declare-fun m!1962469 () Bool)

(assert (=> b!1630210 m!1962469))

(assert (=> b!1630211 m!1962247))

(declare-fun m!1962471 () Bool)

(assert (=> b!1630211 m!1962471))

(assert (=> b!1630211 m!1962471))

(declare-fun m!1962473 () Bool)

(assert (=> b!1630211 m!1962473))

(assert (=> b!1630211 m!1962247))

(declare-fun m!1962475 () Bool)

(assert (=> b!1630211 m!1962475))

(assert (=> b!1630211 m!1962473))

(assert (=> b!1630211 m!1962475))

(declare-fun m!1962477 () Bool)

(assert (=> b!1630211 m!1962477))

(assert (=> b!1630079 d!491192))

(declare-fun b!1630214 () Bool)

(declare-fun res!729179 () Bool)

(declare-fun e!1045470 () Bool)

(assert (=> b!1630214 (=> (not res!729179) (not e!1045470))))

(declare-fun lt!590810 () List!17954)

(assert (=> b!1630214 (= res!729179 (= (size!14306 lt!590810) (+ (size!14306 lt!590744) (size!14306 lt!590755))))))

(declare-fun b!1630212 () Bool)

(declare-fun e!1045471 () List!17954)

(assert (=> b!1630212 (= e!1045471 lt!590755)))

(declare-fun b!1630215 () Bool)

(assert (=> b!1630215 (= e!1045470 (or (not (= lt!590755 Nil!17884)) (= lt!590810 lt!590744)))))

(declare-fun d!491194 () Bool)

(assert (=> d!491194 e!1045470))

(declare-fun res!729180 () Bool)

(assert (=> d!491194 (=> (not res!729180) (not e!1045470))))

(assert (=> d!491194 (= res!729180 (= (content!2483 lt!590810) ((_ map or) (content!2483 lt!590744) (content!2483 lt!590755))))))

(assert (=> d!491194 (= lt!590810 e!1045471)))

(declare-fun c!265394 () Bool)

(assert (=> d!491194 (= c!265394 ((_ is Nil!17884) lt!590744))))

(assert (=> d!491194 (= (++!4769 lt!590744 lt!590755) lt!590810)))

(declare-fun b!1630213 () Bool)

(assert (=> b!1630213 (= e!1045471 (Cons!17884 (h!23285 lt!590744) (++!4769 (t!149411 lt!590744) lt!590755)))))

(assert (= (and d!491194 c!265394) b!1630212))

(assert (= (and d!491194 (not c!265394)) b!1630213))

(assert (= (and d!491194 res!729180) b!1630214))

(assert (= (and b!1630214 res!729179) b!1630215))

(declare-fun m!1962479 () Bool)

(assert (=> b!1630214 m!1962479))

(assert (=> b!1630214 m!1962429))

(declare-fun m!1962481 () Bool)

(assert (=> b!1630214 m!1962481))

(declare-fun m!1962483 () Bool)

(assert (=> d!491194 m!1962483))

(assert (=> d!491194 m!1962435))

(declare-fun m!1962485 () Bool)

(assert (=> d!491194 m!1962485))

(declare-fun m!1962487 () Bool)

(assert (=> b!1630213 m!1962487))

(assert (=> b!1630079 d!491194))

(declare-fun d!491196 () Bool)

(assert (=> d!491196 (= (list!7031 lt!590754) (list!7033 (c!265367 lt!590754)))))

(declare-fun bs!395106 () Bool)

(assert (= bs!395106 d!491196))

(declare-fun m!1962489 () Bool)

(assert (=> bs!395106 m!1962489))

(assert (=> b!1630079 d!491196))

(declare-fun d!491198 () Bool)

(assert (=> d!491198 (= (inv!23256 (tag!3431 (rule!4983 (h!23287 tokens!457)))) (= (mod (str.len (value!99475 (tag!3431 (rule!4983 (h!23287 tokens!457))))) 2) 0))))

(assert (=> b!1630081 d!491198))

(declare-fun d!491200 () Bool)

(declare-fun res!729191 () Bool)

(declare-fun e!1045482 () Bool)

(assert (=> d!491200 (=> (not res!729191) (not e!1045482))))

(declare-fun semiInverseModEq!1203 (Int Int) Bool)

(assert (=> d!491200 (= res!729191 (semiInverseModEq!1203 (toChars!4441 (transformation!3151 (rule!4983 (h!23287 tokens!457)))) (toValue!4582 (transformation!3151 (rule!4983 (h!23287 tokens!457))))))))

(assert (=> d!491200 (= (inv!23259 (transformation!3151 (rule!4983 (h!23287 tokens!457)))) e!1045482)))

(declare-fun b!1630228 () Bool)

(declare-fun equivClasses!1144 (Int Int) Bool)

(assert (=> b!1630228 (= e!1045482 (equivClasses!1144 (toChars!4441 (transformation!3151 (rule!4983 (h!23287 tokens!457)))) (toValue!4582 (transformation!3151 (rule!4983 (h!23287 tokens!457))))))))

(assert (= (and d!491200 res!729191) b!1630228))

(declare-fun m!1962491 () Bool)

(assert (=> d!491200 m!1962491))

(declare-fun m!1962493 () Bool)

(assert (=> b!1630228 m!1962493))

(assert (=> b!1630081 d!491200))

(declare-fun b!1630261 () Bool)

(declare-fun res!729221 () Bool)

(declare-fun e!1045500 () Bool)

(assert (=> b!1630261 (=> (not res!729221) (not e!1045500))))

(declare-fun lt!590848 () Option!3329)

(assert (=> b!1630261 (= res!729221 (= (list!7031 (charsOf!1800 (_1!10142 (get!5163 lt!590848)))) (originalCharacters!3965 (_1!10142 (get!5163 lt!590848)))))))

(declare-fun b!1630262 () Bool)

(declare-fun res!729217 () Bool)

(assert (=> b!1630262 (=> (not res!729217) (not e!1045500))))

(assert (=> b!1630262 (= res!729217 (= (++!4769 (list!7031 (charsOf!1800 (_1!10142 (get!5163 lt!590848)))) (_2!10142 (get!5163 lt!590848))) (originalCharacters!3965 (h!23287 tokens!457))))))

(declare-fun bm!105503 () Bool)

(declare-fun call!105508 () Option!3329)

(declare-fun maxPrefixOneRule!779 (LexerInterface!2780 Rule!6102 List!17954) Option!3329)

(assert (=> bm!105503 (= call!105508 (maxPrefixOneRule!779 thiss!17113 (h!23286 rules!1846) (originalCharacters!3965 (h!23287 tokens!457))))))

(declare-fun b!1630263 () Bool)

(declare-fun res!729222 () Bool)

(assert (=> b!1630263 (=> (not res!729222) (not e!1045500))))

(assert (=> b!1630263 (= res!729222 (matchR!1978 (regex!3151 (rule!4983 (_1!10142 (get!5163 lt!590848)))) (list!7031 (charsOf!1800 (_1!10142 (get!5163 lt!590848))))))))

(declare-fun b!1630264 () Bool)

(declare-fun res!729220 () Bool)

(assert (=> b!1630264 (=> (not res!729220) (not e!1045500))))

(assert (=> b!1630264 (= res!729220 (< (size!14306 (_2!10142 (get!5163 lt!590848))) (size!14306 (originalCharacters!3965 (h!23287 tokens!457)))))))

(declare-fun b!1630265 () Bool)

(declare-fun contains!3130 (List!17955 Rule!6102) Bool)

(assert (=> b!1630265 (= e!1045500 (contains!3130 rules!1846 (rule!4983 (_1!10142 (get!5163 lt!590848)))))))

(declare-fun d!491202 () Bool)

(declare-fun e!1045499 () Bool)

(assert (=> d!491202 e!1045499))

(declare-fun res!729218 () Bool)

(assert (=> d!491202 (=> res!729218 e!1045499)))

(declare-fun isEmpty!10923 (Option!3329) Bool)

(assert (=> d!491202 (= res!729218 (isEmpty!10923 lt!590848))))

(declare-fun e!1045501 () Option!3329)

(assert (=> d!491202 (= lt!590848 e!1045501)))

(declare-fun c!265400 () Bool)

(assert (=> d!491202 (= c!265400 (and ((_ is Cons!17885) rules!1846) ((_ is Nil!17885) (t!149412 rules!1846))))))

(declare-fun lt!590846 () Unit!29055)

(declare-fun lt!590849 () Unit!29055)

(assert (=> d!491202 (= lt!590846 lt!590849)))

(assert (=> d!491202 (isPrefix!1411 (originalCharacters!3965 (h!23287 tokens!457)) (originalCharacters!3965 (h!23287 tokens!457)))))

(declare-fun lemmaIsPrefixRefl!964 (List!17954 List!17954) Unit!29055)

(assert (=> d!491202 (= lt!590849 (lemmaIsPrefixRefl!964 (originalCharacters!3965 (h!23287 tokens!457)) (originalCharacters!3965 (h!23287 tokens!457))))))

(assert (=> d!491202 (rulesValidInductive!976 thiss!17113 rules!1846)))

(assert (=> d!491202 (= (maxPrefix!1344 thiss!17113 rules!1846 (originalCharacters!3965 (h!23287 tokens!457))) lt!590848)))

(declare-fun b!1630266 () Bool)

(declare-fun lt!590845 () Option!3329)

(declare-fun lt!590847 () Option!3329)

(assert (=> b!1630266 (= e!1045501 (ite (and ((_ is None!3328) lt!590845) ((_ is None!3328) lt!590847)) None!3328 (ite ((_ is None!3328) lt!590847) lt!590845 (ite ((_ is None!3328) lt!590845) lt!590847 (ite (>= (size!14300 (_1!10142 (v!24381 lt!590845))) (size!14300 (_1!10142 (v!24381 lt!590847)))) lt!590845 lt!590847)))))))

(assert (=> b!1630266 (= lt!590845 call!105508)))

(assert (=> b!1630266 (= lt!590847 (maxPrefix!1344 thiss!17113 (t!149412 rules!1846) (originalCharacters!3965 (h!23287 tokens!457))))))

(declare-fun b!1630267 () Bool)

(declare-fun res!729219 () Bool)

(assert (=> b!1630267 (=> (not res!729219) (not e!1045500))))

(declare-fun apply!4590 (TokenValueInjection!6142 BalanceConc!11844) TokenValue!3241)

(assert (=> b!1630267 (= res!729219 (= (value!99476 (_1!10142 (get!5163 lt!590848))) (apply!4590 (transformation!3151 (rule!4983 (_1!10142 (get!5163 lt!590848)))) (seqFromList!2052 (originalCharacters!3965 (_1!10142 (get!5163 lt!590848)))))))))

(declare-fun b!1630268 () Bool)

(assert (=> b!1630268 (= e!1045499 e!1045500)))

(declare-fun res!729216 () Bool)

(assert (=> b!1630268 (=> (not res!729216) (not e!1045500))))

(assert (=> b!1630268 (= res!729216 (isDefined!2696 lt!590848))))

(declare-fun b!1630269 () Bool)

(assert (=> b!1630269 (= e!1045501 call!105508)))

(assert (= (and d!491202 c!265400) b!1630269))

(assert (= (and d!491202 (not c!265400)) b!1630266))

(assert (= (or b!1630269 b!1630266) bm!105503))

(assert (= (and d!491202 (not res!729218)) b!1630268))

(assert (= (and b!1630268 res!729216) b!1630261))

(assert (= (and b!1630261 res!729221) b!1630264))

(assert (= (and b!1630264 res!729220) b!1630262))

(assert (= (and b!1630262 res!729217) b!1630267))

(assert (= (and b!1630267 res!729219) b!1630263))

(assert (= (and b!1630263 res!729222) b!1630265))

(declare-fun m!1962529 () Bool)

(assert (=> b!1630268 m!1962529))

(declare-fun m!1962531 () Bool)

(assert (=> b!1630261 m!1962531))

(declare-fun m!1962533 () Bool)

(assert (=> b!1630261 m!1962533))

(assert (=> b!1630261 m!1962533))

(declare-fun m!1962535 () Bool)

(assert (=> b!1630261 m!1962535))

(assert (=> b!1630262 m!1962531))

(assert (=> b!1630262 m!1962533))

(assert (=> b!1630262 m!1962533))

(assert (=> b!1630262 m!1962535))

(assert (=> b!1630262 m!1962535))

(declare-fun m!1962537 () Bool)

(assert (=> b!1630262 m!1962537))

(assert (=> b!1630263 m!1962531))

(assert (=> b!1630263 m!1962533))

(assert (=> b!1630263 m!1962533))

(assert (=> b!1630263 m!1962535))

(assert (=> b!1630263 m!1962535))

(declare-fun m!1962539 () Bool)

(assert (=> b!1630263 m!1962539))

(declare-fun m!1962541 () Bool)

(assert (=> b!1630266 m!1962541))

(declare-fun m!1962543 () Bool)

(assert (=> bm!105503 m!1962543))

(declare-fun m!1962545 () Bool)

(assert (=> d!491202 m!1962545))

(declare-fun m!1962547 () Bool)

(assert (=> d!491202 m!1962547))

(declare-fun m!1962549 () Bool)

(assert (=> d!491202 m!1962549))

(assert (=> d!491202 m!1962113))

(assert (=> b!1630264 m!1962531))

(declare-fun m!1962551 () Bool)

(assert (=> b!1630264 m!1962551))

(declare-fun m!1962553 () Bool)

(assert (=> b!1630264 m!1962553))

(assert (=> b!1630265 m!1962531))

(declare-fun m!1962555 () Bool)

(assert (=> b!1630265 m!1962555))

(assert (=> b!1630267 m!1962531))

(declare-fun m!1962557 () Bool)

(assert (=> b!1630267 m!1962557))

(assert (=> b!1630267 m!1962557))

(declare-fun m!1962559 () Bool)

(assert (=> b!1630267 m!1962559))

(assert (=> b!1630059 d!491202))

(declare-fun b!1630270 () Bool)

(declare-fun res!729228 () Bool)

(declare-fun e!1045503 () Bool)

(assert (=> b!1630270 (=> (not res!729228) (not e!1045503))))

(declare-fun lt!590853 () Option!3329)

(assert (=> b!1630270 (= res!729228 (= (list!7031 (charsOf!1800 (_1!10142 (get!5163 lt!590853)))) (originalCharacters!3965 (_1!10142 (get!5163 lt!590853)))))))

(declare-fun b!1630271 () Bool)

(declare-fun res!729224 () Bool)

(assert (=> b!1630271 (=> (not res!729224) (not e!1045503))))

(assert (=> b!1630271 (= res!729224 (= (++!4769 (list!7031 (charsOf!1800 (_1!10142 (get!5163 lt!590853)))) (_2!10142 (get!5163 lt!590853))) lt!590744))))

(declare-fun bm!105504 () Bool)

(declare-fun call!105509 () Option!3329)

(assert (=> bm!105504 (= call!105509 (maxPrefixOneRule!779 thiss!17113 (h!23286 rules!1846) lt!590744))))

(declare-fun b!1630272 () Bool)

(declare-fun res!729229 () Bool)

(assert (=> b!1630272 (=> (not res!729229) (not e!1045503))))

(assert (=> b!1630272 (= res!729229 (matchR!1978 (regex!3151 (rule!4983 (_1!10142 (get!5163 lt!590853)))) (list!7031 (charsOf!1800 (_1!10142 (get!5163 lt!590853))))))))

(declare-fun b!1630273 () Bool)

(declare-fun res!729227 () Bool)

(assert (=> b!1630273 (=> (not res!729227) (not e!1045503))))

(assert (=> b!1630273 (= res!729227 (< (size!14306 (_2!10142 (get!5163 lt!590853))) (size!14306 lt!590744)))))

(declare-fun b!1630274 () Bool)

(assert (=> b!1630274 (= e!1045503 (contains!3130 rules!1846 (rule!4983 (_1!10142 (get!5163 lt!590853)))))))

(declare-fun d!491212 () Bool)

(declare-fun e!1045502 () Bool)

(assert (=> d!491212 e!1045502))

(declare-fun res!729225 () Bool)

(assert (=> d!491212 (=> res!729225 e!1045502)))

(assert (=> d!491212 (= res!729225 (isEmpty!10923 lt!590853))))

(declare-fun e!1045504 () Option!3329)

(assert (=> d!491212 (= lt!590853 e!1045504)))

(declare-fun c!265401 () Bool)

(assert (=> d!491212 (= c!265401 (and ((_ is Cons!17885) rules!1846) ((_ is Nil!17885) (t!149412 rules!1846))))))

(declare-fun lt!590851 () Unit!29055)

(declare-fun lt!590854 () Unit!29055)

(assert (=> d!491212 (= lt!590851 lt!590854)))

(assert (=> d!491212 (isPrefix!1411 lt!590744 lt!590744)))

(assert (=> d!491212 (= lt!590854 (lemmaIsPrefixRefl!964 lt!590744 lt!590744))))

(assert (=> d!491212 (rulesValidInductive!976 thiss!17113 rules!1846)))

(assert (=> d!491212 (= (maxPrefix!1344 thiss!17113 rules!1846 lt!590744) lt!590853)))

(declare-fun b!1630275 () Bool)

(declare-fun lt!590850 () Option!3329)

(declare-fun lt!590852 () Option!3329)

(assert (=> b!1630275 (= e!1045504 (ite (and ((_ is None!3328) lt!590850) ((_ is None!3328) lt!590852)) None!3328 (ite ((_ is None!3328) lt!590852) lt!590850 (ite ((_ is None!3328) lt!590850) lt!590852 (ite (>= (size!14300 (_1!10142 (v!24381 lt!590850))) (size!14300 (_1!10142 (v!24381 lt!590852)))) lt!590850 lt!590852)))))))

(assert (=> b!1630275 (= lt!590850 call!105509)))

(assert (=> b!1630275 (= lt!590852 (maxPrefix!1344 thiss!17113 (t!149412 rules!1846) lt!590744))))

(declare-fun b!1630276 () Bool)

(declare-fun res!729226 () Bool)

(assert (=> b!1630276 (=> (not res!729226) (not e!1045503))))

(assert (=> b!1630276 (= res!729226 (= (value!99476 (_1!10142 (get!5163 lt!590853))) (apply!4590 (transformation!3151 (rule!4983 (_1!10142 (get!5163 lt!590853)))) (seqFromList!2052 (originalCharacters!3965 (_1!10142 (get!5163 lt!590853)))))))))

(declare-fun b!1630277 () Bool)

(assert (=> b!1630277 (= e!1045502 e!1045503)))

(declare-fun res!729223 () Bool)

(assert (=> b!1630277 (=> (not res!729223) (not e!1045503))))

(assert (=> b!1630277 (= res!729223 (isDefined!2696 lt!590853))))

(declare-fun b!1630278 () Bool)

(assert (=> b!1630278 (= e!1045504 call!105509)))

(assert (= (and d!491212 c!265401) b!1630278))

(assert (= (and d!491212 (not c!265401)) b!1630275))

(assert (= (or b!1630278 b!1630275) bm!105504))

(assert (= (and d!491212 (not res!729225)) b!1630277))

(assert (= (and b!1630277 res!729223) b!1630270))

(assert (= (and b!1630270 res!729228) b!1630273))

(assert (= (and b!1630273 res!729227) b!1630271))

(assert (= (and b!1630271 res!729224) b!1630276))

(assert (= (and b!1630276 res!729226) b!1630272))

(assert (= (and b!1630272 res!729229) b!1630274))

(declare-fun m!1962561 () Bool)

(assert (=> b!1630277 m!1962561))

(declare-fun m!1962563 () Bool)

(assert (=> b!1630270 m!1962563))

(declare-fun m!1962565 () Bool)

(assert (=> b!1630270 m!1962565))

(assert (=> b!1630270 m!1962565))

(declare-fun m!1962567 () Bool)

(assert (=> b!1630270 m!1962567))

(assert (=> b!1630271 m!1962563))

(assert (=> b!1630271 m!1962565))

(assert (=> b!1630271 m!1962565))

(assert (=> b!1630271 m!1962567))

(assert (=> b!1630271 m!1962567))

(declare-fun m!1962569 () Bool)

(assert (=> b!1630271 m!1962569))

(assert (=> b!1630272 m!1962563))

(assert (=> b!1630272 m!1962565))

(assert (=> b!1630272 m!1962565))

(assert (=> b!1630272 m!1962567))

(assert (=> b!1630272 m!1962567))

(declare-fun m!1962571 () Bool)

(assert (=> b!1630272 m!1962571))

(declare-fun m!1962573 () Bool)

(assert (=> b!1630275 m!1962573))

(declare-fun m!1962575 () Bool)

(assert (=> bm!105504 m!1962575))

(declare-fun m!1962577 () Bool)

(assert (=> d!491212 m!1962577))

(declare-fun m!1962579 () Bool)

(assert (=> d!491212 m!1962579))

(declare-fun m!1962581 () Bool)

(assert (=> d!491212 m!1962581))

(assert (=> d!491212 m!1962113))

(assert (=> b!1630273 m!1962563))

(declare-fun m!1962583 () Bool)

(assert (=> b!1630273 m!1962583))

(assert (=> b!1630273 m!1962429))

(assert (=> b!1630274 m!1962563))

(declare-fun m!1962585 () Bool)

(assert (=> b!1630274 m!1962585))

(assert (=> b!1630276 m!1962563))

(declare-fun m!1962587 () Bool)

(assert (=> b!1630276 m!1962587))

(assert (=> b!1630276 m!1962587))

(declare-fun m!1962589 () Bool)

(assert (=> b!1630276 m!1962589))

(assert (=> b!1630059 d!491212))

(declare-fun d!491214 () Bool)

(assert (=> d!491214 (= (get!5163 lt!590758) (v!24381 lt!590758))))

(assert (=> b!1630059 d!491214))

(declare-fun d!491216 () Bool)

(declare-fun c!265402 () Bool)

(assert (=> d!491216 (= c!265402 (isEmpty!10917 (++!4769 (originalCharacters!3965 (h!23287 tokens!457)) lt!590762)))))

(declare-fun e!1045505 () Bool)

(assert (=> d!491216 (= (prefixMatch!414 lt!590766 (++!4769 (originalCharacters!3965 (h!23287 tokens!457)) lt!590762)) e!1045505)))

(declare-fun b!1630279 () Bool)

(assert (=> b!1630279 (= e!1045505 (not (lostCause!442 lt!590766)))))

(declare-fun b!1630280 () Bool)

(assert (=> b!1630280 (= e!1045505 (prefixMatch!414 (derivativeStep!1086 lt!590766 (head!3467 (++!4769 (originalCharacters!3965 (h!23287 tokens!457)) lt!590762))) (tail!2372 (++!4769 (originalCharacters!3965 (h!23287 tokens!457)) lt!590762))))))

(assert (= (and d!491216 c!265402) b!1630279))

(assert (= (and d!491216 (not c!265402)) b!1630280))

(assert (=> d!491216 m!1962135))

(declare-fun m!1962591 () Bool)

(assert (=> d!491216 m!1962591))

(assert (=> b!1630279 m!1962469))

(assert (=> b!1630280 m!1962135))

(declare-fun m!1962593 () Bool)

(assert (=> b!1630280 m!1962593))

(assert (=> b!1630280 m!1962593))

(declare-fun m!1962595 () Bool)

(assert (=> b!1630280 m!1962595))

(assert (=> b!1630280 m!1962135))

(declare-fun m!1962597 () Bool)

(assert (=> b!1630280 m!1962597))

(assert (=> b!1630280 m!1962595))

(assert (=> b!1630280 m!1962597))

(declare-fun m!1962599 () Bool)

(assert (=> b!1630280 m!1962599))

(assert (=> b!1630059 d!491216))

(declare-fun b!1630283 () Bool)

(declare-fun res!729230 () Bool)

(declare-fun e!1045506 () Bool)

(assert (=> b!1630283 (=> (not res!729230) (not e!1045506))))

(declare-fun lt!590855 () List!17954)

(assert (=> b!1630283 (= res!729230 (= (size!14306 lt!590855) (+ (size!14306 (originalCharacters!3965 (h!23287 tokens!457))) (size!14306 lt!590762))))))

(declare-fun b!1630281 () Bool)

(declare-fun e!1045507 () List!17954)

(assert (=> b!1630281 (= e!1045507 lt!590762)))

(declare-fun b!1630284 () Bool)

(assert (=> b!1630284 (= e!1045506 (or (not (= lt!590762 Nil!17884)) (= lt!590855 (originalCharacters!3965 (h!23287 tokens!457)))))))

(declare-fun d!491218 () Bool)

(assert (=> d!491218 e!1045506))

(declare-fun res!729231 () Bool)

(assert (=> d!491218 (=> (not res!729231) (not e!1045506))))

(assert (=> d!491218 (= res!729231 (= (content!2483 lt!590855) ((_ map or) (content!2483 (originalCharacters!3965 (h!23287 tokens!457))) (content!2483 lt!590762))))))

(assert (=> d!491218 (= lt!590855 e!1045507)))

(declare-fun c!265403 () Bool)

(assert (=> d!491218 (= c!265403 ((_ is Nil!17884) (originalCharacters!3965 (h!23287 tokens!457))))))

(assert (=> d!491218 (= (++!4769 (originalCharacters!3965 (h!23287 tokens!457)) lt!590762) lt!590855)))

(declare-fun b!1630282 () Bool)

(assert (=> b!1630282 (= e!1045507 (Cons!17884 (h!23285 (originalCharacters!3965 (h!23287 tokens!457))) (++!4769 (t!149411 (originalCharacters!3965 (h!23287 tokens!457))) lt!590762)))))

(assert (= (and d!491218 c!265403) b!1630281))

(assert (= (and d!491218 (not c!265403)) b!1630282))

(assert (= (and d!491218 res!729231) b!1630283))

(assert (= (and b!1630283 res!729230) b!1630284))

(declare-fun m!1962601 () Bool)

(assert (=> b!1630283 m!1962601))

(assert (=> b!1630283 m!1962553))

(declare-fun m!1962603 () Bool)

(assert (=> b!1630283 m!1962603))

(declare-fun m!1962605 () Bool)

(assert (=> d!491218 m!1962605))

(declare-fun m!1962607 () Bool)

(assert (=> d!491218 m!1962607))

(declare-fun m!1962609 () Bool)

(assert (=> d!491218 m!1962609))

(declare-fun m!1962611 () Bool)

(assert (=> b!1630282 m!1962611))

(assert (=> b!1630059 d!491218))

(declare-fun d!491220 () Bool)

(assert (=> d!491220 (= (isDefined!2696 lt!590758) (not (isEmpty!10923 lt!590758)))))

(declare-fun bs!395109 () Bool)

(assert (= bs!395109 d!491220))

(declare-fun m!1962613 () Bool)

(assert (=> bs!395109 m!1962613))

(assert (=> b!1630059 d!491220))

(declare-fun d!491222 () Bool)

(assert (=> d!491222 (= (isDefined!2696 (maxPrefix!1344 thiss!17113 rules!1846 (originalCharacters!3965 (h!23287 tokens!457)))) (not (isEmpty!10923 (maxPrefix!1344 thiss!17113 rules!1846 (originalCharacters!3965 (h!23287 tokens!457))))))))

(declare-fun bs!395110 () Bool)

(assert (= bs!395110 d!491222))

(assert (=> bs!395110 m!1962137))

(declare-fun m!1962615 () Bool)

(assert (=> bs!395110 m!1962615))

(assert (=> b!1630059 d!491222))

(declare-fun d!491224 () Bool)

(assert (=> d!491224 (= (list!7032 (_1!10141 lt!590743)) (list!7032 (prepend!681 (seqFromList!2051 (t!149413 (t!149413 tokens!457))) (h!23287 (t!149413 tokens!457)))))))

(declare-fun lt!590858 () Unit!29055)

(declare-fun choose!9809 (Token!5868 List!17956 BalanceConc!11846) Unit!29055)

(assert (=> d!491224 (= lt!590858 (choose!9809 (h!23287 (t!149413 tokens!457)) (t!149413 (t!149413 tokens!457)) (_1!10141 lt!590743)))))

(declare-fun $colon$colon!334 (List!17956 Token!5868) List!17956)

(assert (=> d!491224 (= (list!7032 (_1!10141 lt!590743)) (list!7032 (seqFromList!2051 ($colon$colon!334 (t!149413 (t!149413 tokens!457)) (h!23287 (t!149413 tokens!457))))))))

(assert (=> d!491224 (= (seqFromListBHdTlConstructive!228 (h!23287 (t!149413 tokens!457)) (t!149413 (t!149413 tokens!457)) (_1!10141 lt!590743)) lt!590858)))

(declare-fun bs!395111 () Bool)

(assert (= bs!395111 d!491224))

(assert (=> bs!395111 m!1962129))

(assert (=> bs!395111 m!1962131))

(declare-fun m!1962617 () Bool)

(assert (=> bs!395111 m!1962617))

(assert (=> bs!395111 m!1962219))

(assert (=> bs!395111 m!1962129))

(declare-fun m!1962619 () Bool)

(assert (=> bs!395111 m!1962619))

(declare-fun m!1962621 () Bool)

(assert (=> bs!395111 m!1962621))

(assert (=> bs!395111 m!1962131))

(assert (=> bs!395111 m!1962133))

(assert (=> bs!395111 m!1962617))

(assert (=> bs!395111 m!1962619))

(declare-fun m!1962623 () Bool)

(assert (=> bs!395111 m!1962623))

(assert (=> b!1630061 d!491224))

(declare-fun d!491226 () Bool)

(declare-fun e!1045510 () Bool)

(assert (=> d!491226 e!1045510))

(declare-fun res!729234 () Bool)

(assert (=> d!491226 (=> (not res!729234) (not e!1045510))))

(declare-fun isBalanced!1795 (Conc!5951) Bool)

(declare-fun prepend!682 (Conc!5951 Token!5868) Conc!5951)

(assert (=> d!491226 (= res!729234 (isBalanced!1795 (prepend!682 (c!265369 (seqFromList!2051 (t!149413 (t!149413 tokens!457)))) (h!23287 (t!149413 tokens!457)))))))

(declare-fun lt!590861 () BalanceConc!11846)

(assert (=> d!491226 (= lt!590861 (BalanceConc!11847 (prepend!682 (c!265369 (seqFromList!2051 (t!149413 (t!149413 tokens!457)))) (h!23287 (t!149413 tokens!457)))))))

(assert (=> d!491226 (= (prepend!681 (seqFromList!2051 (t!149413 (t!149413 tokens!457))) (h!23287 (t!149413 tokens!457))) lt!590861)))

(declare-fun b!1630287 () Bool)

(assert (=> b!1630287 (= e!1045510 (= (list!7032 lt!590861) (Cons!17886 (h!23287 (t!149413 tokens!457)) (list!7032 (seqFromList!2051 (t!149413 (t!149413 tokens!457)))))))))

(assert (= (and d!491226 res!729234) b!1630287))

(declare-fun m!1962625 () Bool)

(assert (=> d!491226 m!1962625))

(assert (=> d!491226 m!1962625))

(declare-fun m!1962627 () Bool)

(assert (=> d!491226 m!1962627))

(declare-fun m!1962629 () Bool)

(assert (=> b!1630287 m!1962629))

(assert (=> b!1630287 m!1962129))

(declare-fun m!1962631 () Bool)

(assert (=> b!1630287 m!1962631))

(assert (=> b!1630061 d!491226))

(declare-fun d!491228 () Bool)

(declare-fun list!7034 (Conc!5951) List!17956)

(assert (=> d!491228 (= (list!7032 (prepend!681 (seqFromList!2051 (t!149413 (t!149413 tokens!457))) (h!23287 (t!149413 tokens!457)))) (list!7034 (c!265369 (prepend!681 (seqFromList!2051 (t!149413 (t!149413 tokens!457))) (h!23287 (t!149413 tokens!457))))))))

(declare-fun bs!395112 () Bool)

(assert (= bs!395112 d!491228))

(declare-fun m!1962633 () Bool)

(assert (=> bs!395112 m!1962633))

(assert (=> b!1630061 d!491228))

(declare-fun d!491230 () Bool)

(assert (=> d!491230 (= (seqFromList!2051 (t!149413 (t!149413 tokens!457))) (fromListB!901 (t!149413 (t!149413 tokens!457))))))

(declare-fun bs!395113 () Bool)

(assert (= bs!395113 d!491230))

(declare-fun m!1962635 () Bool)

(assert (=> bs!395113 m!1962635))

(assert (=> b!1630061 d!491230))

(declare-fun d!491232 () Bool)

(assert (=> d!491232 (= (list!7032 lt!590742) (list!7034 (c!265369 lt!590742)))))

(declare-fun bs!395114 () Bool)

(assert (= bs!395114 d!491232))

(declare-fun m!1962637 () Bool)

(assert (=> bs!395114 m!1962637))

(assert (=> b!1630061 d!491232))

(declare-fun d!491234 () Bool)

(assert (=> d!491234 (= (isDefined!2696 lt!590738) (not (isEmpty!10923 lt!590738)))))

(declare-fun bs!395115 () Bool)

(assert (= bs!395115 d!491234))

(declare-fun m!1962639 () Bool)

(assert (=> bs!395115 m!1962639))

(assert (=> b!1630084 d!491234))

(declare-fun b!1630299 () Bool)

(declare-fun e!1045516 () Unit!29055)

(declare-fun Unit!29070 () Unit!29055)

(assert (=> b!1630299 (= e!1045516 Unit!29070)))

(declare-fun b!1630297 () Bool)

(declare-fun e!1045515 () Bool)

(declare-fun lt!590911 () Token!5868)

(declare-datatypes ((Option!3332 0))(
  ( (None!3331) (Some!3331 (v!24390 Rule!6102)) )
))
(declare-fun get!5166 (Option!3332) Rule!6102)

(declare-fun getRuleFromTag!288 (LexerInterface!2780 List!17955 String!20537) Option!3332)

(assert (=> b!1630297 (= e!1045515 (= (rule!4983 lt!590911) (get!5166 (getRuleFromTag!288 thiss!17113 rules!1846 (tag!3431 (rule!4983 lt!590911))))))))

(declare-fun b!1630296 () Bool)

(declare-fun res!729239 () Bool)

(assert (=> b!1630296 (=> (not res!729239) (not e!1045515))))

(assert (=> b!1630296 (= res!729239 (matchR!1978 (regex!3151 (get!5166 (getRuleFromTag!288 thiss!17113 rules!1846 (tag!3431 (rule!4983 lt!590911))))) (list!7031 (charsOf!1800 lt!590911))))))

(declare-fun d!491236 () Bool)

(assert (=> d!491236 (isDefined!2696 (maxPrefix!1344 thiss!17113 rules!1846 (++!4769 lt!590744 lt!590763)))))

(declare-fun lt!590906 () Unit!29055)

(assert (=> d!491236 (= lt!590906 e!1045516)))

(declare-fun c!265407 () Bool)

(assert (=> d!491236 (= c!265407 (isEmpty!10923 (maxPrefix!1344 thiss!17113 rules!1846 (++!4769 lt!590744 lt!590763))))))

(declare-fun lt!590899 () Unit!29055)

(declare-fun lt!590901 () Unit!29055)

(assert (=> d!491236 (= lt!590899 lt!590901)))

(assert (=> d!491236 e!1045515))

(declare-fun res!729240 () Bool)

(assert (=> d!491236 (=> (not res!729240) (not e!1045515))))

(declare-fun isDefined!2699 (Option!3332) Bool)

(assert (=> d!491236 (= res!729240 (isDefined!2699 (getRuleFromTag!288 thiss!17113 rules!1846 (tag!3431 (rule!4983 lt!590911)))))))

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!288 (LexerInterface!2780 List!17955 List!17954 Token!5868) Unit!29055)

(assert (=> d!491236 (= lt!590901 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!288 thiss!17113 rules!1846 lt!590744 lt!590911))))

(declare-fun lt!590912 () Unit!29055)

(declare-fun lt!590902 () Unit!29055)

(assert (=> d!491236 (= lt!590912 lt!590902)))

(declare-fun lt!590897 () List!17954)

(assert (=> d!491236 (isPrefix!1411 lt!590897 (++!4769 lt!590744 lt!590763))))

(declare-fun lemmaPrefixStaysPrefixWhenAddingToSuffix!173 (List!17954 List!17954 List!17954) Unit!29055)

(assert (=> d!491236 (= lt!590902 (lemmaPrefixStaysPrefixWhenAddingToSuffix!173 lt!590897 lt!590744 lt!590763))))

(assert (=> d!491236 (= lt!590897 (list!7031 (charsOf!1800 lt!590911)))))

(declare-fun lt!590907 () Unit!29055)

(declare-fun lt!590898 () Unit!29055)

(assert (=> d!491236 (= lt!590907 lt!590898)))

(declare-fun lt!590905 () List!17954)

(declare-fun lt!590908 () List!17954)

(assert (=> d!491236 (isPrefix!1411 lt!590905 (++!4769 lt!590905 lt!590908))))

(assert (=> d!491236 (= lt!590898 (lemmaConcatTwoListThenFirstIsPrefix!936 lt!590905 lt!590908))))

(assert (=> d!491236 (= lt!590908 (_2!10142 (get!5163 (maxPrefix!1344 thiss!17113 rules!1846 lt!590744))))))

(assert (=> d!491236 (= lt!590905 (list!7031 (charsOf!1800 lt!590911)))))

(declare-fun head!3469 (List!17956) Token!5868)

(assert (=> d!491236 (= lt!590911 (head!3469 (list!7032 (_1!10141 (lex!1264 thiss!17113 rules!1846 (seqFromList!2052 lt!590744))))))))

(assert (=> d!491236 (not (isEmpty!10915 rules!1846))))

(assert (=> d!491236 (= (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!354 thiss!17113 rules!1846 lt!590744 lt!590763) lt!590906)))

(declare-fun b!1630298 () Bool)

(declare-fun Unit!29071 () Unit!29055)

(assert (=> b!1630298 (= e!1045516 Unit!29071)))

(declare-fun lt!590904 () List!17954)

(assert (=> b!1630298 (= lt!590904 (++!4769 lt!590744 lt!590763))))

(declare-fun lt!590903 () Unit!29055)

(declare-fun lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!181 (LexerInterface!2780 Rule!6102 List!17955 List!17954) Unit!29055)

(assert (=> b!1630298 (= lt!590903 (lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!181 thiss!17113 (rule!4983 lt!590911) rules!1846 lt!590904))))

(assert (=> b!1630298 (isEmpty!10923 (maxPrefixOneRule!779 thiss!17113 (rule!4983 lt!590911) lt!590904))))

(declare-fun lt!590900 () Unit!29055)

(assert (=> b!1630298 (= lt!590900 lt!590903)))

(declare-fun lt!590896 () List!17954)

(assert (=> b!1630298 (= lt!590896 (list!7031 (charsOf!1800 lt!590911)))))

(declare-fun lt!590910 () Unit!29055)

(declare-fun lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!177 (LexerInterface!2780 Rule!6102 List!17954 List!17954) Unit!29055)

(assert (=> b!1630298 (= lt!590910 (lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!177 thiss!17113 (rule!4983 lt!590911) lt!590896 (++!4769 lt!590744 lt!590763)))))

(assert (=> b!1630298 (not (matchR!1978 (regex!3151 (rule!4983 lt!590911)) lt!590896))))

(declare-fun lt!590909 () Unit!29055)

(assert (=> b!1630298 (= lt!590909 lt!590910)))

(assert (=> b!1630298 false))

(assert (= (and d!491236 res!729240) b!1630296))

(assert (= (and b!1630296 res!729239) b!1630297))

(assert (= (and d!491236 c!265407) b!1630298))

(assert (= (and d!491236 (not c!265407)) b!1630299))

(declare-fun m!1962641 () Bool)

(assert (=> b!1630297 m!1962641))

(assert (=> b!1630297 m!1962641))

(declare-fun m!1962643 () Bool)

(assert (=> b!1630297 m!1962643))

(declare-fun m!1962645 () Bool)

(assert (=> b!1630296 m!1962645))

(declare-fun m!1962647 () Bool)

(assert (=> b!1630296 m!1962647))

(declare-fun m!1962649 () Bool)

(assert (=> b!1630296 m!1962649))

(assert (=> b!1630296 m!1962641))

(assert (=> b!1630296 m!1962649))

(assert (=> b!1630296 m!1962645))

(assert (=> b!1630296 m!1962641))

(assert (=> b!1630296 m!1962643))

(declare-fun m!1962651 () Bool)

(assert (=> d!491236 m!1962651))

(declare-fun m!1962653 () Bool)

(assert (=> d!491236 m!1962653))

(assert (=> d!491236 m!1962641))

(declare-fun m!1962655 () Bool)

(assert (=> d!491236 m!1962655))

(assert (=> d!491236 m!1962649))

(declare-fun m!1962657 () Bool)

(assert (=> d!491236 m!1962657))

(declare-fun m!1962659 () Bool)

(assert (=> d!491236 m!1962659))

(declare-fun m!1962661 () Bool)

(assert (=> d!491236 m!1962661))

(declare-fun m!1962663 () Bool)

(assert (=> d!491236 m!1962663))

(declare-fun m!1962665 () Bool)

(assert (=> d!491236 m!1962665))

(assert (=> d!491236 m!1962657))

(declare-fun m!1962667 () Bool)

(assert (=> d!491236 m!1962667))

(assert (=> d!491236 m!1962141))

(declare-fun m!1962669 () Bool)

(assert (=> d!491236 m!1962669))

(assert (=> d!491236 m!1962227))

(assert (=> d!491236 m!1962641))

(assert (=> d!491236 m!1962227))

(assert (=> d!491236 m!1962229))

(assert (=> d!491236 m!1962649))

(assert (=> d!491236 m!1962645))

(assert (=> d!491236 m!1962183))

(declare-fun m!1962671 () Bool)

(assert (=> d!491236 m!1962671))

(assert (=> d!491236 m!1962661))

(assert (=> d!491236 m!1962141))

(assert (=> d!491236 m!1962653))

(declare-fun m!1962673 () Bool)

(assert (=> d!491236 m!1962673))

(assert (=> d!491236 m!1962183))

(declare-fun m!1962675 () Bool)

(assert (=> d!491236 m!1962675))

(assert (=> d!491236 m!1962183))

(assert (=> d!491236 m!1962657))

(assert (=> d!491236 m!1962233))

(assert (=> b!1630298 m!1962649))

(assert (=> b!1630298 m!1962645))

(declare-fun m!1962677 () Bool)

(assert (=> b!1630298 m!1962677))

(declare-fun m!1962679 () Bool)

(assert (=> b!1630298 m!1962679))

(assert (=> b!1630298 m!1962183))

(assert (=> b!1630298 m!1962649))

(declare-fun m!1962681 () Bool)

(assert (=> b!1630298 m!1962681))

(assert (=> b!1630298 m!1962183))

(declare-fun m!1962683 () Bool)

(assert (=> b!1630298 m!1962683))

(assert (=> b!1630298 m!1962681))

(declare-fun m!1962685 () Bool)

(assert (=> b!1630298 m!1962685))

(assert (=> b!1630084 d!491236))

(declare-fun d!491238 () Bool)

(declare-fun c!265408 () Bool)

(assert (=> d!491238 (= c!265408 (isEmpty!10917 (++!4769 lt!590744 lt!590762)))))

(declare-fun e!1045517 () Bool)

(assert (=> d!491238 (= (prefixMatch!414 lt!590766 (++!4769 lt!590744 lt!590762)) e!1045517)))

(declare-fun b!1630300 () Bool)

(assert (=> b!1630300 (= e!1045517 (not (lostCause!442 lt!590766)))))

(declare-fun b!1630301 () Bool)

(assert (=> b!1630301 (= e!1045517 (prefixMatch!414 (derivativeStep!1086 lt!590766 (head!3467 (++!4769 lt!590744 lt!590762))) (tail!2372 (++!4769 lt!590744 lt!590762))))))

(assert (= (and d!491238 c!265408) b!1630300))

(assert (= (and d!491238 (not c!265408)) b!1630301))

(assert (=> d!491238 m!1962215))

(declare-fun m!1962687 () Bool)

(assert (=> d!491238 m!1962687))

(assert (=> b!1630300 m!1962469))

(assert (=> b!1630301 m!1962215))

(declare-fun m!1962689 () Bool)

(assert (=> b!1630301 m!1962689))

(assert (=> b!1630301 m!1962689))

(declare-fun m!1962691 () Bool)

(assert (=> b!1630301 m!1962691))

(assert (=> b!1630301 m!1962215))

(declare-fun m!1962693 () Bool)

(assert (=> b!1630301 m!1962693))

(assert (=> b!1630301 m!1962691))

(assert (=> b!1630301 m!1962693))

(declare-fun m!1962695 () Bool)

(assert (=> b!1630301 m!1962695))

(assert (=> b!1630062 d!491238))

(declare-fun b!1630304 () Bool)

(declare-fun res!729241 () Bool)

(declare-fun e!1045518 () Bool)

(assert (=> b!1630304 (=> (not res!729241) (not e!1045518))))

(declare-fun lt!590913 () List!17954)

(assert (=> b!1630304 (= res!729241 (= (size!14306 lt!590913) (+ (size!14306 lt!590744) (size!14306 lt!590762))))))

(declare-fun b!1630302 () Bool)

(declare-fun e!1045519 () List!17954)

(assert (=> b!1630302 (= e!1045519 lt!590762)))

(declare-fun b!1630305 () Bool)

(assert (=> b!1630305 (= e!1045518 (or (not (= lt!590762 Nil!17884)) (= lt!590913 lt!590744)))))

(declare-fun d!491240 () Bool)

(assert (=> d!491240 e!1045518))

(declare-fun res!729242 () Bool)

(assert (=> d!491240 (=> (not res!729242) (not e!1045518))))

(assert (=> d!491240 (= res!729242 (= (content!2483 lt!590913) ((_ map or) (content!2483 lt!590744) (content!2483 lt!590762))))))

(assert (=> d!491240 (= lt!590913 e!1045519)))

(declare-fun c!265409 () Bool)

(assert (=> d!491240 (= c!265409 ((_ is Nil!17884) lt!590744))))

(assert (=> d!491240 (= (++!4769 lt!590744 lt!590762) lt!590913)))

(declare-fun b!1630303 () Bool)

(assert (=> b!1630303 (= e!1045519 (Cons!17884 (h!23285 lt!590744) (++!4769 (t!149411 lt!590744) lt!590762)))))

(assert (= (and d!491240 c!265409) b!1630302))

(assert (= (and d!491240 (not c!265409)) b!1630303))

(assert (= (and d!491240 res!729242) b!1630304))

(assert (= (and b!1630304 res!729241) b!1630305))

(declare-fun m!1962697 () Bool)

(assert (=> b!1630304 m!1962697))

(assert (=> b!1630304 m!1962429))

(assert (=> b!1630304 m!1962603))

(declare-fun m!1962699 () Bool)

(assert (=> d!491240 m!1962699))

(assert (=> d!491240 m!1962435))

(assert (=> d!491240 m!1962609))

(declare-fun m!1962701 () Bool)

(assert (=> b!1630303 m!1962701))

(assert (=> b!1630062 d!491240))

(declare-fun b!1630322 () Bool)

(declare-fun e!1045534 () Bool)

(assert (=> b!1630322 (= e!1045534 true)))

(declare-fun b!1630321 () Bool)

(declare-fun e!1045533 () Bool)

(assert (=> b!1630321 (= e!1045533 e!1045534)))

(declare-fun b!1630320 () Bool)

(declare-fun e!1045532 () Bool)

(assert (=> b!1630320 (= e!1045532 e!1045533)))

(declare-fun d!491242 () Bool)

(assert (=> d!491242 e!1045532))

(assert (= b!1630321 b!1630322))

(assert (= b!1630320 b!1630321))

(assert (= (and d!491242 ((_ is Cons!17885) rules!1846)) b!1630320))

(declare-fun order!10605 () Int)

(declare-fun order!10607 () Int)

(declare-fun lambda!67337 () Int)

(declare-fun dynLambda!7980 (Int Int) Int)

(declare-fun dynLambda!7981 (Int Int) Int)

(assert (=> b!1630322 (< (dynLambda!7980 order!10605 (toValue!4582 (transformation!3151 (h!23286 rules!1846)))) (dynLambda!7981 order!10607 lambda!67337))))

(declare-fun order!10609 () Int)

(declare-fun dynLambda!7982 (Int Int) Int)

(assert (=> b!1630322 (< (dynLambda!7982 order!10609 (toChars!4441 (transformation!3151 (h!23286 rules!1846)))) (dynLambda!7981 order!10607 lambda!67337))))

(assert (=> d!491242 true))

(declare-fun lt!590916 () Bool)

(declare-fun forall!4091 (List!17956 Int) Bool)

(assert (=> d!491242 (= lt!590916 (forall!4091 tokens!457 lambda!67337))))

(declare-fun e!1045525 () Bool)

(assert (=> d!491242 (= lt!590916 e!1045525)))

(declare-fun res!729247 () Bool)

(assert (=> d!491242 (=> res!729247 e!1045525)))

(assert (=> d!491242 (= res!729247 (not ((_ is Cons!17886) tokens!457)))))

(assert (=> d!491242 (not (isEmpty!10915 rules!1846))))

(assert (=> d!491242 (= (rulesProduceEachTokenIndividuallyList!982 thiss!17113 rules!1846 tokens!457) lt!590916)))

(declare-fun b!1630310 () Bool)

(declare-fun e!1045524 () Bool)

(assert (=> b!1630310 (= e!1045525 e!1045524)))

(declare-fun res!729248 () Bool)

(assert (=> b!1630310 (=> (not res!729248) (not e!1045524))))

(assert (=> b!1630310 (= res!729248 (rulesProduceIndividualToken!1432 thiss!17113 rules!1846 (h!23287 tokens!457)))))

(declare-fun b!1630311 () Bool)

(assert (=> b!1630311 (= e!1045524 (rulesProduceEachTokenIndividuallyList!982 thiss!17113 rules!1846 (t!149413 tokens!457)))))

(assert (= (and d!491242 (not res!729247)) b!1630310))

(assert (= (and b!1630310 res!729248) b!1630311))

(declare-fun m!1962703 () Bool)

(assert (=> d!491242 m!1962703))

(assert (=> d!491242 m!1962233))

(assert (=> b!1630310 m!1962213))

(declare-fun m!1962705 () Bool)

(assert (=> b!1630311 m!1962705))

(assert (=> b!1630083 d!491242))

(declare-fun d!491244 () Bool)

(assert (=> d!491244 (= (list!7032 (_1!10141 lt!590743)) (list!7034 (c!265369 (_1!10141 lt!590743))))))

(declare-fun bs!395116 () Bool)

(assert (= bs!395116 d!491244))

(declare-fun m!1962707 () Bool)

(assert (=> bs!395116 m!1962707))

(assert (=> b!1630074 d!491244))

(declare-fun d!491246 () Bool)

(declare-fun e!1045539 () Bool)

(assert (=> d!491246 e!1045539))

(declare-fun res!729251 () Bool)

(assert (=> d!491246 (=> (not res!729251) (not e!1045539))))

(assert (=> d!491246 (= res!729251 (= (list!7032 (_1!10141 (lex!1264 thiss!17113 rules!1846 (print!1311 thiss!17113 (seqFromList!2051 (t!149413 tokens!457)))))) (t!149413 tokens!457)))))

(declare-fun lt!590977 () Unit!29055)

(declare-fun e!1045540 () Unit!29055)

(assert (=> d!491246 (= lt!590977 e!1045540)))

(declare-fun c!265412 () Bool)

(assert (=> d!491246 (= c!265412 (or ((_ is Nil!17886) (t!149413 tokens!457)) ((_ is Nil!17886) (t!149413 (t!149413 tokens!457)))))))

(assert (=> d!491246 (not (isEmpty!10915 rules!1846))))

(assert (=> d!491246 (= (theoremInvertabilityWhenTokenListSeparable!225 thiss!17113 rules!1846 (t!149413 tokens!457)) lt!590977)))

(declare-fun b!1630331 () Bool)

(declare-fun Unit!29072 () Unit!29055)

(assert (=> b!1630331 (= e!1045540 Unit!29072)))

(declare-fun b!1630332 () Bool)

(declare-fun Unit!29073 () Unit!29055)

(assert (=> b!1630332 (= e!1045540 Unit!29073)))

(declare-fun lt!590974 () BalanceConc!11844)

(assert (=> b!1630332 (= lt!590974 (print!1311 thiss!17113 (seqFromList!2051 (t!149413 tokens!457))))))

(declare-fun lt!590969 () BalanceConc!11844)

(assert (=> b!1630332 (= lt!590969 (print!1311 thiss!17113 (seqFromList!2051 (t!149413 (t!149413 tokens!457)))))))

(declare-fun lt!590992 () tuple2!17478)

(assert (=> b!1630332 (= lt!590992 (lex!1264 thiss!17113 rules!1846 lt!590969))))

(declare-fun lt!590984 () List!17954)

(assert (=> b!1630332 (= lt!590984 (list!7031 (charsOf!1800 (h!23287 (t!149413 tokens!457)))))))

(declare-fun lt!590993 () List!17954)

(assert (=> b!1630332 (= lt!590993 (list!7031 lt!590969))))

(declare-fun lt!590976 () Unit!29055)

(assert (=> b!1630332 (= lt!590976 (lemmaConcatTwoListThenFirstIsPrefix!936 lt!590984 lt!590993))))

(assert (=> b!1630332 (isPrefix!1411 lt!590984 (++!4769 lt!590984 lt!590993))))

(declare-fun lt!590988 () Unit!29055)

(assert (=> b!1630332 (= lt!590988 lt!590976)))

(declare-fun lt!590990 () Unit!29055)

(assert (=> b!1630332 (= lt!590990 (theoremInvertabilityWhenTokenListSeparable!225 thiss!17113 rules!1846 (t!149413 (t!149413 tokens!457))))))

(declare-fun lt!590985 () Unit!29055)

(assert (=> b!1630332 (= lt!590985 (seqFromListBHdTlConstructive!228 (h!23287 (t!149413 (t!149413 tokens!457))) (t!149413 (t!149413 (t!149413 tokens!457))) (_1!10141 lt!590992)))))

(assert (=> b!1630332 (= (list!7032 (_1!10141 lt!590992)) (list!7032 (prepend!681 (seqFromList!2051 (t!149413 (t!149413 (t!149413 tokens!457)))) (h!23287 (t!149413 (t!149413 tokens!457))))))))

(declare-fun lt!590978 () Unit!29055)

(assert (=> b!1630332 (= lt!590978 lt!590985)))

(declare-fun lt!590982 () Option!3329)

(assert (=> b!1630332 (= lt!590982 (maxPrefix!1344 thiss!17113 rules!1846 (list!7031 lt!590974)))))

(assert (=> b!1630332 (= (print!1311 thiss!17113 (singletonSeq!1581 (h!23287 (t!149413 tokens!457)))) (printTailRec!833 thiss!17113 (singletonSeq!1581 (h!23287 (t!149413 tokens!457))) 0 (BalanceConc!11845 Empty!5950)))))

(declare-fun lt!590994 () Unit!29055)

(declare-fun Unit!29074 () Unit!29055)

(assert (=> b!1630332 (= lt!590994 Unit!29074)))

(declare-fun lt!590975 () Unit!29055)

(assert (=> b!1630332 (= lt!590975 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!354 thiss!17113 rules!1846 (list!7031 (charsOf!1800 (h!23287 (t!149413 tokens!457)))) (list!7031 lt!590969)))))

(assert (=> b!1630332 (= (list!7031 (charsOf!1800 (h!23287 (t!149413 tokens!457)))) (originalCharacters!3965 (h!23287 (t!149413 tokens!457))))))

(declare-fun lt!590980 () Unit!29055)

(declare-fun Unit!29075 () Unit!29055)

(assert (=> b!1630332 (= lt!590980 Unit!29075)))

(assert (=> b!1630332 (= (list!7031 (singletonSeq!1580 (apply!4588 (charsOf!1800 (h!23287 (t!149413 (t!149413 tokens!457)))) 0))) (Cons!17884 (head!3467 (originalCharacters!3965 (h!23287 (t!149413 (t!149413 tokens!457))))) Nil!17884))))

(declare-fun lt!590983 () Unit!29055)

(declare-fun Unit!29076 () Unit!29055)

(assert (=> b!1630332 (= lt!590983 Unit!29076)))

(assert (=> b!1630332 (= (list!7031 (singletonSeq!1580 (apply!4588 (charsOf!1800 (h!23287 (t!149413 (t!149413 tokens!457)))) 0))) (Cons!17884 (head!3467 (list!7031 lt!590969)) Nil!17884))))

(declare-fun lt!590971 () Unit!29055)

(declare-fun Unit!29077 () Unit!29055)

(assert (=> b!1630332 (= lt!590971 Unit!29077)))

(assert (=> b!1630332 (= (list!7031 (singletonSeq!1580 (apply!4588 (charsOf!1800 (h!23287 (t!149413 (t!149413 tokens!457)))) 0))) (Cons!17884 (head!3466 lt!590969) Nil!17884))))

(declare-fun lt!590973 () Unit!29055)

(declare-fun Unit!29078 () Unit!29055)

(assert (=> b!1630332 (= lt!590973 Unit!29078)))

(assert (=> b!1630332 (isDefined!2696 (maxPrefix!1344 thiss!17113 rules!1846 (originalCharacters!3965 (h!23287 (t!149413 tokens!457)))))))

(declare-fun lt!590986 () Unit!29055)

(declare-fun Unit!29079 () Unit!29055)

(assert (=> b!1630332 (= lt!590986 Unit!29079)))

(assert (=> b!1630332 (isDefined!2696 (maxPrefix!1344 thiss!17113 rules!1846 (list!7031 (charsOf!1800 (h!23287 (t!149413 tokens!457))))))))

(declare-fun lt!590989 () Unit!29055)

(declare-fun Unit!29080 () Unit!29055)

(assert (=> b!1630332 (= lt!590989 Unit!29080)))

(declare-fun lt!590979 () Unit!29055)

(declare-fun Unit!29081 () Unit!29055)

(assert (=> b!1630332 (= lt!590979 Unit!29081)))

(assert (=> b!1630332 (= (_1!10142 (get!5163 (maxPrefix!1344 thiss!17113 rules!1846 (list!7031 (charsOf!1800 (h!23287 (t!149413 tokens!457))))))) (h!23287 (t!149413 tokens!457)))))

(declare-fun lt!590972 () Unit!29055)

(declare-fun Unit!29082 () Unit!29055)

(assert (=> b!1630332 (= lt!590972 Unit!29082)))

(assert (=> b!1630332 (isEmpty!10917 (_2!10142 (get!5163 (maxPrefix!1344 thiss!17113 rules!1846 (list!7031 (charsOf!1800 (h!23287 (t!149413 tokens!457))))))))))

(declare-fun lt!590970 () Unit!29055)

(declare-fun Unit!29083 () Unit!29055)

(assert (=> b!1630332 (= lt!590970 Unit!29083)))

(assert (=> b!1630332 (matchR!1978 (regex!3151 (rule!4983 (h!23287 (t!149413 tokens!457)))) (list!7031 (charsOf!1800 (h!23287 (t!149413 tokens!457)))))))

(declare-fun lt!590991 () Unit!29055)

(declare-fun Unit!29084 () Unit!29055)

(assert (=> b!1630332 (= lt!590991 Unit!29084)))

(assert (=> b!1630332 (= (rule!4983 (h!23287 (t!149413 tokens!457))) (rule!4983 (h!23287 (t!149413 tokens!457))))))

(declare-fun lt!590981 () Unit!29055)

(declare-fun Unit!29085 () Unit!29055)

(assert (=> b!1630332 (= lt!590981 Unit!29085)))

(declare-fun lt!590987 () Unit!29055)

(assert (=> b!1630332 (= lt!590987 (lemmaMaxPrefWithNoPrefixMatchAllRulesThenSuffixReturnSame!116 thiss!17113 rules!1846 (h!23287 (t!149413 tokens!457)) (rule!4983 (h!23287 (t!149413 tokens!457))) (list!7031 lt!590969)))))

(declare-fun b!1630333 () Bool)

(declare-fun isEmpty!10924 (BalanceConc!11844) Bool)

(assert (=> b!1630333 (= e!1045539 (isEmpty!10924 (_2!10141 (lex!1264 thiss!17113 rules!1846 (print!1311 thiss!17113 (seqFromList!2051 (t!149413 tokens!457)))))))))

(assert (= (and d!491246 c!265412) b!1630331))

(assert (= (and d!491246 (not c!265412)) b!1630332))

(assert (= (and d!491246 res!729251) b!1630333))

(declare-fun m!1962709 () Bool)

(assert (=> d!491246 m!1962709))

(declare-fun m!1962711 () Bool)

(assert (=> d!491246 m!1962711))

(assert (=> d!491246 m!1962173))

(assert (=> d!491246 m!1962709))

(assert (=> d!491246 m!1962173))

(assert (=> d!491246 m!1962233))

(declare-fun m!1962713 () Bool)

(assert (=> d!491246 m!1962713))

(declare-fun m!1962715 () Bool)

(assert (=> b!1630332 m!1962715))

(declare-fun m!1962717 () Bool)

(assert (=> b!1630332 m!1962717))

(declare-fun m!1962719 () Bool)

(assert (=> b!1630332 m!1962719))

(declare-fun m!1962721 () Bool)

(assert (=> b!1630332 m!1962721))

(assert (=> b!1630332 m!1962207))

(declare-fun m!1962723 () Bool)

(assert (=> b!1630332 m!1962723))

(declare-fun m!1962725 () Bool)

(assert (=> b!1630332 m!1962725))

(declare-fun m!1962727 () Bool)

(assert (=> b!1630332 m!1962727))

(declare-fun m!1962729 () Bool)

(assert (=> b!1630332 m!1962729))

(declare-fun m!1962731 () Bool)

(assert (=> b!1630332 m!1962731))

(declare-fun m!1962733 () Bool)

(assert (=> b!1630332 m!1962733))

(assert (=> b!1630332 m!1962723))

(declare-fun m!1962735 () Bool)

(assert (=> b!1630332 m!1962735))

(assert (=> b!1630332 m!1962735))

(declare-fun m!1962737 () Bool)

(assert (=> b!1630332 m!1962737))

(assert (=> b!1630332 m!1962173))

(assert (=> b!1630332 m!1962709))

(declare-fun m!1962739 () Bool)

(assert (=> b!1630332 m!1962739))

(assert (=> b!1630332 m!1962207))

(declare-fun m!1962741 () Bool)

(assert (=> b!1630332 m!1962741))

(declare-fun m!1962743 () Bool)

(assert (=> b!1630332 m!1962743))

(declare-fun m!1962745 () Bool)

(assert (=> b!1630332 m!1962745))

(declare-fun m!1962747 () Bool)

(assert (=> b!1630332 m!1962747))

(assert (=> b!1630332 m!1962715))

(declare-fun m!1962749 () Bool)

(assert (=> b!1630332 m!1962749))

(assert (=> b!1630332 m!1962725))

(assert (=> b!1630332 m!1962731))

(declare-fun m!1962751 () Bool)

(assert (=> b!1630332 m!1962751))

(declare-fun m!1962753 () Bool)

(assert (=> b!1630332 m!1962753))

(declare-fun m!1962755 () Bool)

(assert (=> b!1630332 m!1962755))

(declare-fun m!1962757 () Bool)

(assert (=> b!1630332 m!1962757))

(declare-fun m!1962759 () Bool)

(assert (=> b!1630332 m!1962759))

(assert (=> b!1630332 m!1962723))

(declare-fun m!1962761 () Bool)

(assert (=> b!1630332 m!1962761))

(assert (=> b!1630332 m!1962719))

(assert (=> b!1630332 m!1962719))

(declare-fun m!1962763 () Bool)

(assert (=> b!1630332 m!1962763))

(assert (=> b!1630332 m!1962755))

(declare-fun m!1962765 () Bool)

(assert (=> b!1630332 m!1962765))

(assert (=> b!1630332 m!1962735))

(declare-fun m!1962767 () Bool)

(assert (=> b!1630332 m!1962767))

(declare-fun m!1962769 () Bool)

(assert (=> b!1630332 m!1962769))

(assert (=> b!1630332 m!1962129))

(declare-fun m!1962771 () Bool)

(assert (=> b!1630332 m!1962771))

(declare-fun m!1962773 () Bool)

(assert (=> b!1630332 m!1962773))

(assert (=> b!1630332 m!1962173))

(assert (=> b!1630332 m!1962729))

(assert (=> b!1630332 m!1962741))

(declare-fun m!1962775 () Bool)

(assert (=> b!1630332 m!1962775))

(assert (=> b!1630332 m!1962755))

(assert (=> b!1630332 m!1962129))

(assert (=> b!1630332 m!1962759))

(declare-fun m!1962777 () Bool)

(assert (=> b!1630332 m!1962777))

(assert (=> b!1630332 m!1962727))

(declare-fun m!1962779 () Bool)

(assert (=> b!1630332 m!1962779))

(assert (=> b!1630332 m!1962749))

(assert (=> b!1630332 m!1962723))

(assert (=> b!1630332 m!1962755))

(declare-fun m!1962781 () Bool)

(assert (=> b!1630332 m!1962781))

(assert (=> b!1630333 m!1962173))

(assert (=> b!1630333 m!1962173))

(assert (=> b!1630333 m!1962709))

(assert (=> b!1630333 m!1962709))

(assert (=> b!1630333 m!1962711))

(declare-fun m!1962783 () Bool)

(assert (=> b!1630333 m!1962783))

(assert (=> b!1630074 d!491246))

(declare-fun b!1630344 () Bool)

(declare-fun e!1045547 () Bool)

(assert (=> b!1630344 (= e!1045547 (isPrefix!1411 (tail!2372 lt!590744) (tail!2372 lt!590751)))))

(declare-fun b!1630342 () Bool)

(declare-fun e!1045549 () Bool)

(assert (=> b!1630342 (= e!1045549 e!1045547)))

(declare-fun res!729263 () Bool)

(assert (=> b!1630342 (=> (not res!729263) (not e!1045547))))

(assert (=> b!1630342 (= res!729263 (not ((_ is Nil!17884) lt!590751)))))

(declare-fun b!1630345 () Bool)

(declare-fun e!1045548 () Bool)

(assert (=> b!1630345 (= e!1045548 (>= (size!14306 lt!590751) (size!14306 lt!590744)))))

(declare-fun d!491248 () Bool)

(assert (=> d!491248 e!1045548))

(declare-fun res!729262 () Bool)

(assert (=> d!491248 (=> res!729262 e!1045548)))

(declare-fun lt!590997 () Bool)

(assert (=> d!491248 (= res!729262 (not lt!590997))))

(assert (=> d!491248 (= lt!590997 e!1045549)))

(declare-fun res!729261 () Bool)

(assert (=> d!491248 (=> res!729261 e!1045549)))

(assert (=> d!491248 (= res!729261 ((_ is Nil!17884) lt!590744))))

(assert (=> d!491248 (= (isPrefix!1411 lt!590744 lt!590751) lt!590997)))

(declare-fun b!1630343 () Bool)

(declare-fun res!729260 () Bool)

(assert (=> b!1630343 (=> (not res!729260) (not e!1045547))))

(assert (=> b!1630343 (= res!729260 (= (head!3467 lt!590744) (head!3467 lt!590751)))))

(assert (= (and d!491248 (not res!729261)) b!1630342))

(assert (= (and b!1630342 res!729263) b!1630343))

(assert (= (and b!1630343 res!729260) b!1630344))

(assert (= (and d!491248 (not res!729262)) b!1630345))

(declare-fun m!1962785 () Bool)

(assert (=> b!1630344 m!1962785))

(declare-fun m!1962787 () Bool)

(assert (=> b!1630344 m!1962787))

(assert (=> b!1630344 m!1962785))

(assert (=> b!1630344 m!1962787))

(declare-fun m!1962789 () Bool)

(assert (=> b!1630344 m!1962789))

(declare-fun m!1962791 () Bool)

(assert (=> b!1630345 m!1962791))

(assert (=> b!1630345 m!1962429))

(declare-fun m!1962793 () Bool)

(assert (=> b!1630343 m!1962793))

(declare-fun m!1962795 () Bool)

(assert (=> b!1630343 m!1962795))

(assert (=> b!1630074 d!491248))

(declare-fun d!491250 () Bool)

(assert (=> d!491250 (isPrefix!1411 lt!590744 (++!4769 lt!590744 lt!590763))))

(declare-fun lt!591000 () Unit!29055)

(declare-fun choose!9810 (List!17954 List!17954) Unit!29055)

(assert (=> d!491250 (= lt!591000 (choose!9810 lt!590744 lt!590763))))

(assert (=> d!491250 (= (lemmaConcatTwoListThenFirstIsPrefix!936 lt!590744 lt!590763) lt!591000)))

(declare-fun bs!395117 () Bool)

(assert (= bs!395117 d!491250))

(assert (=> bs!395117 m!1962183))

(assert (=> bs!395117 m!1962183))

(declare-fun m!1962797 () Bool)

(assert (=> bs!395117 m!1962797))

(declare-fun m!1962799 () Bool)

(assert (=> bs!395117 m!1962799))

(assert (=> b!1630074 d!491250))

(declare-fun d!491252 () Bool)

(assert (=> d!491252 (= (inv!23256 (tag!3431 (h!23286 rules!1846))) (= (mod (str.len (value!99475 (tag!3431 (h!23286 rules!1846)))) 2) 0))))

(assert (=> b!1630076 d!491252))

(declare-fun d!491254 () Bool)

(declare-fun res!729264 () Bool)

(declare-fun e!1045550 () Bool)

(assert (=> d!491254 (=> (not res!729264) (not e!1045550))))

(assert (=> d!491254 (= res!729264 (semiInverseModEq!1203 (toChars!4441 (transformation!3151 (h!23286 rules!1846))) (toValue!4582 (transformation!3151 (h!23286 rules!1846)))))))

(assert (=> d!491254 (= (inv!23259 (transformation!3151 (h!23286 rules!1846))) e!1045550)))

(declare-fun b!1630346 () Bool)

(assert (=> b!1630346 (= e!1045550 (equivClasses!1144 (toChars!4441 (transformation!3151 (h!23286 rules!1846))) (toValue!4582 (transformation!3151 (h!23286 rules!1846)))))))

(assert (= (and d!491254 res!729264) b!1630346))

(declare-fun m!1962801 () Bool)

(assert (=> d!491254 m!1962801))

(declare-fun m!1962803 () Bool)

(assert (=> b!1630346 m!1962803))

(assert (=> b!1630076 d!491254))

(declare-fun d!491256 () Bool)

(assert (=> d!491256 (= (isEmpty!10915 rules!1846) ((_ is Nil!17885) rules!1846))))

(assert (=> b!1630054 d!491256))

(declare-fun d!491258 () Bool)

(declare-fun lt!591220 () Bool)

(declare-fun e!1045578 () Bool)

(assert (=> d!491258 (= lt!591220 e!1045578)))

(declare-fun res!729281 () Bool)

(assert (=> d!491258 (=> (not res!729281) (not e!1045578))))

(assert (=> d!491258 (= res!729281 (= (list!7032 (_1!10141 (lex!1264 thiss!17113 rules!1846 (print!1311 thiss!17113 (singletonSeq!1581 (h!23287 tokens!457)))))) (list!7032 (singletonSeq!1581 (h!23287 tokens!457)))))))

(declare-fun e!1045579 () Bool)

(assert (=> d!491258 (= lt!591220 e!1045579)))

(declare-fun res!729280 () Bool)

(assert (=> d!491258 (=> (not res!729280) (not e!1045579))))

(declare-fun lt!591221 () tuple2!17478)

(assert (=> d!491258 (= res!729280 (= (size!14305 (_1!10141 lt!591221)) 1))))

(assert (=> d!491258 (= lt!591221 (lex!1264 thiss!17113 rules!1846 (print!1311 thiss!17113 (singletonSeq!1581 (h!23287 tokens!457)))))))

(assert (=> d!491258 (not (isEmpty!10915 rules!1846))))

(assert (=> d!491258 (= (rulesProduceIndividualToken!1432 thiss!17113 rules!1846 (h!23287 tokens!457)) lt!591220)))

(declare-fun b!1630395 () Bool)

(declare-fun res!729279 () Bool)

(assert (=> b!1630395 (=> (not res!729279) (not e!1045579))))

(declare-fun apply!4593 (BalanceConc!11846 Int) Token!5868)

(assert (=> b!1630395 (= res!729279 (= (apply!4593 (_1!10141 lt!591221) 0) (h!23287 tokens!457)))))

(declare-fun b!1630396 () Bool)

(assert (=> b!1630396 (= e!1045579 (isEmpty!10924 (_2!10141 lt!591221)))))

(declare-fun b!1630397 () Bool)

(assert (=> b!1630397 (= e!1045578 (isEmpty!10924 (_2!10141 (lex!1264 thiss!17113 rules!1846 (print!1311 thiss!17113 (singletonSeq!1581 (h!23287 tokens!457)))))))))

(assert (= (and d!491258 res!729280) b!1630395))

(assert (= (and b!1630395 res!729279) b!1630396))

(assert (= (and d!491258 res!729281) b!1630397))

(declare-fun m!1962925 () Bool)

(assert (=> d!491258 m!1962925))

(assert (=> d!491258 m!1962233))

(assert (=> d!491258 m!1962163))

(declare-fun m!1962927 () Bool)

(assert (=> d!491258 m!1962927))

(assert (=> d!491258 m!1962927))

(declare-fun m!1962929 () Bool)

(assert (=> d!491258 m!1962929))

(declare-fun m!1962931 () Bool)

(assert (=> d!491258 m!1962931))

(assert (=> d!491258 m!1962163))

(assert (=> d!491258 m!1962163))

(declare-fun m!1962933 () Bool)

(assert (=> d!491258 m!1962933))

(declare-fun m!1962935 () Bool)

(assert (=> b!1630395 m!1962935))

(declare-fun m!1962937 () Bool)

(assert (=> b!1630396 m!1962937))

(assert (=> b!1630397 m!1962163))

(assert (=> b!1630397 m!1962163))

(assert (=> b!1630397 m!1962927))

(assert (=> b!1630397 m!1962927))

(assert (=> b!1630397 m!1962929))

(declare-fun m!1962939 () Bool)

(assert (=> b!1630397 m!1962939))

(assert (=> b!1630075 d!491258))

(declare-fun d!491262 () Bool)

(declare-fun res!729285 () Bool)

(declare-fun e!1045583 () Bool)

(assert (=> d!491262 (=> (not res!729285) (not e!1045583))))

(declare-fun rulesValid!1132 (LexerInterface!2780 List!17955) Bool)

(assert (=> d!491262 (= res!729285 (rulesValid!1132 thiss!17113 rules!1846))))

(assert (=> d!491262 (= (rulesInvariant!2449 thiss!17113 rules!1846) e!1045583)))

(declare-fun b!1630403 () Bool)

(declare-datatypes ((List!17960 0))(
  ( (Nil!17890) (Cons!17890 (h!23291 String!20537) (t!149459 List!17960)) )
))
(declare-fun noDuplicateTag!1132 (LexerInterface!2780 List!17955 List!17960) Bool)

(assert (=> b!1630403 (= e!1045583 (noDuplicateTag!1132 thiss!17113 rules!1846 Nil!17890))))

(assert (= (and d!491262 res!729285) b!1630403))

(declare-fun m!1962947 () Bool)

(assert (=> d!491262 m!1962947))

(declare-fun m!1962949 () Bool)

(assert (=> b!1630403 m!1962949))

(assert (=> b!1630056 d!491262))

(declare-fun d!491266 () Bool)

(declare-fun res!729290 () Bool)

(declare-fun e!1045586 () Bool)

(assert (=> d!491266 (=> (not res!729290) (not e!1045586))))

(assert (=> d!491266 (= res!729290 (not (isEmpty!10917 (originalCharacters!3965 (h!23287 tokens!457)))))))

(assert (=> d!491266 (= (inv!23260 (h!23287 tokens!457)) e!1045586)))

(declare-fun b!1630408 () Bool)

(declare-fun res!729291 () Bool)

(assert (=> b!1630408 (=> (not res!729291) (not e!1045586))))

(assert (=> b!1630408 (= res!729291 (= (originalCharacters!3965 (h!23287 tokens!457)) (list!7031 (dynLambda!7979 (toChars!4441 (transformation!3151 (rule!4983 (h!23287 tokens!457)))) (value!99476 (h!23287 tokens!457))))))))

(declare-fun b!1630409 () Bool)

(assert (=> b!1630409 (= e!1045586 (= (size!14300 (h!23287 tokens!457)) (size!14306 (originalCharacters!3965 (h!23287 tokens!457)))))))

(assert (= (and d!491266 res!729290) b!1630408))

(assert (= (and b!1630408 res!729291) b!1630409))

(declare-fun b_lambda!51321 () Bool)

(assert (=> (not b_lambda!51321) (not b!1630408)))

(assert (=> b!1630408 t!149419))

(declare-fun b_and!115629 () Bool)

(assert (= b_and!115625 (and (=> t!149419 result!112896) b_and!115629)))

(assert (=> b!1630408 t!149421))

(declare-fun b_and!115631 () Bool)

(assert (= b_and!115627 (and (=> t!149421 result!112900) b_and!115631)))

(declare-fun m!1962951 () Bool)

(assert (=> d!491266 m!1962951))

(assert (=> b!1630408 m!1962449))

(assert (=> b!1630408 m!1962449))

(declare-fun m!1962953 () Bool)

(assert (=> b!1630408 m!1962953))

(assert (=> b!1630409 m!1962553))

(assert (=> b!1630077 d!491266))

(declare-fun d!491268 () Bool)

(assert (=> d!491268 true))

(declare-fun lt!591225 () Bool)

(declare-fun lambda!67340 () Int)

(declare-fun forall!4092 (List!17955 Int) Bool)

(assert (=> d!491268 (= lt!591225 (forall!4092 rules!1846 lambda!67340))))

(declare-fun e!1045592 () Bool)

(assert (=> d!491268 (= lt!591225 e!1045592)))

(declare-fun res!729297 () Bool)

(assert (=> d!491268 (=> res!729297 e!1045592)))

(assert (=> d!491268 (= res!729297 (not ((_ is Cons!17885) rules!1846)))))

(assert (=> d!491268 (= (rulesValidInductive!976 thiss!17113 rules!1846) lt!591225)))

(declare-fun b!1630414 () Bool)

(declare-fun e!1045591 () Bool)

(assert (=> b!1630414 (= e!1045592 e!1045591)))

(declare-fun res!729296 () Bool)

(assert (=> b!1630414 (=> (not res!729296) (not e!1045591))))

(declare-fun ruleValid!742 (LexerInterface!2780 Rule!6102) Bool)

(assert (=> b!1630414 (= res!729296 (ruleValid!742 thiss!17113 (h!23286 rules!1846)))))

(declare-fun b!1630415 () Bool)

(assert (=> b!1630415 (= e!1045591 (rulesValidInductive!976 thiss!17113 (t!149412 rules!1846)))))

(assert (= (and d!491268 (not res!729297)) b!1630414))

(assert (= (and b!1630414 res!729296) b!1630415))

(declare-fun m!1962955 () Bool)

(assert (=> d!491268 m!1962955))

(declare-fun m!1962957 () Bool)

(assert (=> b!1630414 m!1962957))

(declare-fun m!1962959 () Bool)

(assert (=> b!1630415 m!1962959))

(assert (=> b!1630078 d!491268))

(declare-fun d!491270 () Bool)

(assert (=> d!491270 (= (separableTokensPredicate!722 thiss!17113 (h!23287 tokens!457) (h!23287 (t!149413 tokens!457)) rules!1846) (not (prefixMatchZipperSequence!543 (rulesRegex!541 thiss!17113 rules!1846) (++!4770 (charsOf!1800 (h!23287 tokens!457)) (singletonSeq!1580 (apply!4588 (charsOf!1800 (h!23287 (t!149413 tokens!457))) 0))))))))

(declare-fun bs!395118 () Bool)

(assert (= bs!395118 d!491270))

(assert (=> bs!395118 m!1962171))

(assert (=> bs!395118 m!1962197))

(assert (=> bs!395118 m!1962207))

(assert (=> bs!395118 m!1962199))

(assert (=> bs!395118 m!1962197))

(declare-fun m!1962961 () Bool)

(assert (=> bs!395118 m!1962961))

(declare-fun m!1962963 () Bool)

(assert (=> bs!395118 m!1962963))

(assert (=> bs!395118 m!1962199))

(assert (=> bs!395118 m!1962201))

(assert (=> bs!395118 m!1962171))

(assert (=> bs!395118 m!1962201))

(assert (=> bs!395118 m!1962961))

(assert (=> bs!395118 m!1962207))

(assert (=> b!1630069 d!491270))

(declare-fun b!1630454 () Bool)

(declare-fun e!1045612 () Bool)

(assert (=> b!1630454 (= e!1045612 (= (head!3467 lt!590744) (c!265368 (regex!3151 (rule!4983 (h!23287 tokens!457))))))))

(declare-fun b!1630455 () Bool)

(declare-fun res!729325 () Bool)

(assert (=> b!1630455 (=> (not res!729325) (not e!1045612))))

(declare-fun call!105512 () Bool)

(assert (=> b!1630455 (= res!729325 (not call!105512))))

(declare-fun b!1630456 () Bool)

(declare-fun e!1045614 () Bool)

(declare-fun lt!591260 () Bool)

(assert (=> b!1630456 (= e!1045614 (not lt!591260))))

(declare-fun b!1630457 () Bool)

(declare-fun e!1045609 () Bool)

(declare-fun e!1045611 () Bool)

(assert (=> b!1630457 (= e!1045609 e!1045611)))

(declare-fun res!729322 () Bool)

(assert (=> b!1630457 (=> (not res!729322) (not e!1045611))))

(assert (=> b!1630457 (= res!729322 (not lt!591260))))

(declare-fun b!1630458 () Bool)

(declare-fun res!729324 () Bool)

(assert (=> b!1630458 (=> res!729324 e!1045609)))

(assert (=> b!1630458 (= res!729324 (not ((_ is ElementMatch!4479) (regex!3151 (rule!4983 (h!23287 tokens!457))))))))

(assert (=> b!1630458 (= e!1045614 e!1045609)))

(declare-fun b!1630459 () Bool)

(declare-fun e!1045615 () Bool)

(declare-fun nullable!1321 (Regex!4479) Bool)

(assert (=> b!1630459 (= e!1045615 (nullable!1321 (regex!3151 (rule!4983 (h!23287 tokens!457)))))))

(declare-fun b!1630460 () Bool)

(assert (=> b!1630460 (= e!1045615 (matchR!1978 (derivativeStep!1086 (regex!3151 (rule!4983 (h!23287 tokens!457))) (head!3467 lt!590744)) (tail!2372 lt!590744)))))

(declare-fun b!1630461 () Bool)

(declare-fun res!729326 () Bool)

(assert (=> b!1630461 (=> res!729326 e!1045609)))

(assert (=> b!1630461 (= res!729326 e!1045612)))

(declare-fun res!729329 () Bool)

(assert (=> b!1630461 (=> (not res!729329) (not e!1045612))))

(assert (=> b!1630461 (= res!729329 lt!591260)))

(declare-fun b!1630462 () Bool)

(declare-fun e!1045613 () Bool)

(assert (=> b!1630462 (= e!1045611 e!1045613)))

(declare-fun res!729327 () Bool)

(assert (=> b!1630462 (=> res!729327 e!1045613)))

(assert (=> b!1630462 (= res!729327 call!105512)))

(declare-fun b!1630463 () Bool)

(declare-fun e!1045610 () Bool)

(assert (=> b!1630463 (= e!1045610 e!1045614)))

(declare-fun c!265442 () Bool)

(assert (=> b!1630463 (= c!265442 ((_ is EmptyLang!4479) (regex!3151 (rule!4983 (h!23287 tokens!457)))))))

(declare-fun b!1630464 () Bool)

(assert (=> b!1630464 (= e!1045610 (= lt!591260 call!105512))))

(declare-fun b!1630465 () Bool)

(declare-fun res!729328 () Bool)

(assert (=> b!1630465 (=> (not res!729328) (not e!1045612))))

(assert (=> b!1630465 (= res!729328 (isEmpty!10917 (tail!2372 lt!590744)))))

(declare-fun bm!105507 () Bool)

(assert (=> bm!105507 (= call!105512 (isEmpty!10917 lt!590744))))

(declare-fun d!491272 () Bool)

(assert (=> d!491272 e!1045610))

(declare-fun c!265441 () Bool)

(assert (=> d!491272 (= c!265441 ((_ is EmptyExpr!4479) (regex!3151 (rule!4983 (h!23287 tokens!457)))))))

(assert (=> d!491272 (= lt!591260 e!1045615)))

(declare-fun c!265440 () Bool)

(assert (=> d!491272 (= c!265440 (isEmpty!10917 lt!590744))))

(declare-fun validRegex!1782 (Regex!4479) Bool)

(assert (=> d!491272 (validRegex!1782 (regex!3151 (rule!4983 (h!23287 tokens!457))))))

(assert (=> d!491272 (= (matchR!1978 (regex!3151 (rule!4983 (h!23287 tokens!457))) lt!590744) lt!591260)))

(declare-fun b!1630466 () Bool)

(declare-fun res!729323 () Bool)

(assert (=> b!1630466 (=> res!729323 e!1045613)))

(assert (=> b!1630466 (= res!729323 (not (isEmpty!10917 (tail!2372 lt!590744))))))

(declare-fun b!1630467 () Bool)

(assert (=> b!1630467 (= e!1045613 (not (= (head!3467 lt!590744) (c!265368 (regex!3151 (rule!4983 (h!23287 tokens!457)))))))))

(assert (= (and d!491272 c!265440) b!1630459))

(assert (= (and d!491272 (not c!265440)) b!1630460))

(assert (= (and d!491272 c!265441) b!1630464))

(assert (= (and d!491272 (not c!265441)) b!1630463))

(assert (= (and b!1630463 c!265442) b!1630456))

(assert (= (and b!1630463 (not c!265442)) b!1630458))

(assert (= (and b!1630458 (not res!729324)) b!1630461))

(assert (= (and b!1630461 res!729329) b!1630455))

(assert (= (and b!1630455 res!729325) b!1630465))

(assert (= (and b!1630465 res!729328) b!1630454))

(assert (= (and b!1630461 (not res!729326)) b!1630457))

(assert (= (and b!1630457 res!729322) b!1630462))

(assert (= (and b!1630462 (not res!729327)) b!1630466))

(assert (= (and b!1630466 (not res!729323)) b!1630467))

(assert (= (or b!1630464 b!1630455 b!1630462) bm!105507))

(assert (=> b!1630460 m!1962793))

(assert (=> b!1630460 m!1962793))

(declare-fun m!1962991 () Bool)

(assert (=> b!1630460 m!1962991))

(assert (=> b!1630460 m!1962785))

(assert (=> b!1630460 m!1962991))

(assert (=> b!1630460 m!1962785))

(declare-fun m!1962993 () Bool)

(assert (=> b!1630460 m!1962993))

(assert (=> b!1630466 m!1962785))

(assert (=> b!1630466 m!1962785))

(declare-fun m!1962995 () Bool)

(assert (=> b!1630466 m!1962995))

(assert (=> b!1630454 m!1962793))

(declare-fun m!1962997 () Bool)

(assert (=> b!1630459 m!1962997))

(assert (=> b!1630467 m!1962793))

(declare-fun m!1962999 () Bool)

(assert (=> bm!105507 m!1962999))

(assert (=> b!1630465 m!1962785))

(assert (=> b!1630465 m!1962785))

(assert (=> b!1630465 m!1962995))

(assert (=> d!491272 m!1962999))

(declare-fun m!1963001 () Bool)

(assert (=> d!491272 m!1963001))

(assert (=> b!1630070 d!491272))

(declare-fun d!491276 () Bool)

(declare-fun res!729370 () Bool)

(declare-fun e!1045651 () Bool)

(assert (=> d!491276 (=> res!729370 e!1045651)))

(assert (=> d!491276 (= res!729370 (or (not ((_ is Cons!17886) tokens!457)) (not ((_ is Cons!17886) (t!149413 tokens!457)))))))

(assert (=> d!491276 (= (tokensListTwoByTwoPredicateSeparableList!473 thiss!17113 tokens!457 rules!1846) e!1045651)))

(declare-fun b!1630526 () Bool)

(declare-fun e!1045650 () Bool)

(assert (=> b!1630526 (= e!1045651 e!1045650)))

(declare-fun res!729369 () Bool)

(assert (=> b!1630526 (=> (not res!729369) (not e!1045650))))

(assert (=> b!1630526 (= res!729369 (separableTokensPredicate!722 thiss!17113 (h!23287 tokens!457) (h!23287 (t!149413 tokens!457)) rules!1846))))

(declare-fun lt!591291 () Unit!29055)

(declare-fun Unit!29103 () Unit!29055)

(assert (=> b!1630526 (= lt!591291 Unit!29103)))

(assert (=> b!1630526 (> (size!14304 (charsOf!1800 (h!23287 (t!149413 tokens!457)))) 0)))

(declare-fun lt!591293 () Unit!29055)

(declare-fun Unit!29104 () Unit!29055)

(assert (=> b!1630526 (= lt!591293 Unit!29104)))

(assert (=> b!1630526 (rulesProduceIndividualToken!1432 thiss!17113 rules!1846 (h!23287 (t!149413 tokens!457)))))

(declare-fun lt!591294 () Unit!29055)

(declare-fun Unit!29105 () Unit!29055)

(assert (=> b!1630526 (= lt!591294 Unit!29105)))

(assert (=> b!1630526 (rulesProduceIndividualToken!1432 thiss!17113 rules!1846 (h!23287 tokens!457))))

(declare-fun lt!591290 () Unit!29055)

(declare-fun lt!591288 () Unit!29055)

(assert (=> b!1630526 (= lt!591290 lt!591288)))

(assert (=> b!1630526 (rulesProduceIndividualToken!1432 thiss!17113 rules!1846 (h!23287 (t!149413 tokens!457)))))

(declare-fun lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!569 (LexerInterface!2780 List!17955 List!17956 Token!5868) Unit!29055)

(assert (=> b!1630526 (= lt!591288 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!569 thiss!17113 rules!1846 tokens!457 (h!23287 (t!149413 tokens!457))))))

(declare-fun lt!591292 () Unit!29055)

(declare-fun lt!591289 () Unit!29055)

(assert (=> b!1630526 (= lt!591292 lt!591289)))

(assert (=> b!1630526 (rulesProduceIndividualToken!1432 thiss!17113 rules!1846 (h!23287 tokens!457))))

(assert (=> b!1630526 (= lt!591289 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!569 thiss!17113 rules!1846 tokens!457 (h!23287 tokens!457)))))

(declare-fun b!1630527 () Bool)

(assert (=> b!1630527 (= e!1045650 (tokensListTwoByTwoPredicateSeparableList!473 thiss!17113 (Cons!17886 (h!23287 (t!149413 tokens!457)) (t!149413 (t!149413 tokens!457))) rules!1846))))

(assert (= (and d!491276 (not res!729370)) b!1630526))

(assert (= (and b!1630526 res!729369) b!1630527))

(assert (=> b!1630526 m!1962213))

(declare-fun m!1963067 () Bool)

(assert (=> b!1630526 m!1963067))

(assert (=> b!1630526 m!1962207))

(declare-fun m!1963069 () Bool)

(assert (=> b!1630526 m!1963069))

(declare-fun m!1963071 () Bool)

(assert (=> b!1630526 m!1963071))

(assert (=> b!1630526 m!1962207))

(declare-fun m!1963073 () Bool)

(assert (=> b!1630526 m!1963073))

(assert (=> b!1630526 m!1962193))

(declare-fun m!1963075 () Bool)

(assert (=> b!1630527 m!1963075))

(assert (=> b!1630072 d!491276))

(declare-fun d!491298 () Bool)

(declare-fun e!1045654 () Bool)

(assert (=> d!491298 e!1045654))

(declare-fun res!729373 () Bool)

(assert (=> d!491298 (=> (not res!729373) (not e!1045654))))

(declare-fun lt!591297 () BalanceConc!11844)

(assert (=> d!491298 (= res!729373 (= (list!7031 lt!591297) (Cons!17884 (apply!4588 (charsOf!1800 (h!23287 (t!149413 tokens!457))) 0) Nil!17884)))))

(declare-fun singleton!676 (C!9132) BalanceConc!11844)

(assert (=> d!491298 (= lt!591297 (singleton!676 (apply!4588 (charsOf!1800 (h!23287 (t!149413 tokens!457))) 0)))))

(assert (=> d!491298 (= (singletonSeq!1580 (apply!4588 (charsOf!1800 (h!23287 (t!149413 tokens!457))) 0)) lt!591297)))

(declare-fun b!1630530 () Bool)

(declare-fun isBalanced!1797 (Conc!5950) Bool)

(assert (=> b!1630530 (= e!1045654 (isBalanced!1797 (c!265367 lt!591297)))))

(assert (= (and d!491298 res!729373) b!1630530))

(declare-fun m!1963077 () Bool)

(assert (=> d!491298 m!1963077))

(assert (=> d!491298 m!1962199))

(declare-fun m!1963079 () Bool)

(assert (=> d!491298 m!1963079))

(declare-fun m!1963081 () Bool)

(assert (=> b!1630530 m!1963081))

(assert (=> b!1630071 d!491298))

(declare-fun d!491300 () Bool)

(declare-fun lt!591343 () Bool)

(assert (=> d!491300 (= lt!591343 (prefixMatch!414 lt!590766 (list!7031 (++!4770 lt!590753 lt!590754))))))

(declare-datatypes ((List!17961 0))(
  ( (Nil!17891) (Cons!17891 (h!23292 Regex!4479) (t!149460 List!17961)) )
))
(declare-datatypes ((Context!1742 0))(
  ( (Context!1743 (exprs!1371 List!17961)) )
))
(declare-fun prefixMatchZipperSequence!545 ((InoxSet Context!1742) BalanceConc!11844 Int) Bool)

(declare-fun focus!177 (Regex!4479) (InoxSet Context!1742))

(assert (=> d!491300 (= lt!591343 (prefixMatchZipperSequence!545 (focus!177 lt!590766) (++!4770 lt!590753 lt!590754) 0))))

(declare-fun lt!591348 () Unit!29055)

(declare-fun lt!591339 () Unit!29055)

(assert (=> d!491300 (= lt!591348 lt!591339)))

(declare-fun lt!591341 () List!17954)

(declare-fun lt!591342 () (InoxSet Context!1742))

(declare-fun prefixMatchZipper!156 ((InoxSet Context!1742) List!17954) Bool)

(assert (=> d!491300 (= (prefixMatch!414 lt!590766 lt!591341) (prefixMatchZipper!156 lt!591342 lt!591341))))

(declare-datatypes ((List!17962 0))(
  ( (Nil!17892) (Cons!17892 (h!23293 Context!1742) (t!149461 List!17962)) )
))
(declare-fun lt!591347 () List!17962)

(declare-fun prefixMatchZipperRegexEquiv!156 ((InoxSet Context!1742) List!17962 Regex!4479 List!17954) Unit!29055)

(assert (=> d!491300 (= lt!591339 (prefixMatchZipperRegexEquiv!156 lt!591342 lt!591347 lt!590766 lt!591341))))

(assert (=> d!491300 (= lt!591341 (list!7031 (++!4770 lt!590753 lt!590754)))))

(declare-fun toList!917 ((InoxSet Context!1742)) List!17962)

(assert (=> d!491300 (= lt!591347 (toList!917 (focus!177 lt!590766)))))

(assert (=> d!491300 (= lt!591342 (focus!177 lt!590766))))

(declare-fun lt!591346 () Unit!29055)

(declare-fun lt!591344 () Unit!29055)

(assert (=> d!491300 (= lt!591346 lt!591344)))

(declare-fun lt!591340 () (InoxSet Context!1742))

(declare-fun lt!591345 () Int)

(declare-fun dropList!615 (BalanceConc!11844 Int) List!17954)

(assert (=> d!491300 (= (prefixMatchZipper!156 lt!591340 (dropList!615 (++!4770 lt!590753 lt!590754) lt!591345)) (prefixMatchZipperSequence!545 lt!591340 (++!4770 lt!590753 lt!590754) lt!591345))))

(declare-fun lemmaprefixMatchZipperSequenceEquivalent!156 ((InoxSet Context!1742) BalanceConc!11844 Int) Unit!29055)

(assert (=> d!491300 (= lt!591344 (lemmaprefixMatchZipperSequenceEquivalent!156 lt!591340 (++!4770 lt!590753 lt!590754) lt!591345))))

(assert (=> d!491300 (= lt!591345 0)))

(assert (=> d!491300 (= lt!591340 (focus!177 lt!590766))))

(assert (=> d!491300 (validRegex!1782 lt!590766)))

(assert (=> d!491300 (= (prefixMatchZipperSequence!543 lt!590766 (++!4770 lt!590753 lt!590754)) lt!591343)))

(declare-fun bs!395121 () Bool)

(assert (= bs!395121 d!491300))

(declare-fun m!1963091 () Bool)

(assert (=> bs!395121 m!1963091))

(assert (=> bs!395121 m!1962203))

(declare-fun m!1963093 () Bool)

(assert (=> bs!395121 m!1963093))

(assert (=> bs!395121 m!1962203))

(declare-fun m!1963095 () Bool)

(assert (=> bs!395121 m!1963095))

(declare-fun m!1963097 () Bool)

(assert (=> bs!395121 m!1963097))

(declare-fun m!1963099 () Bool)

(assert (=> bs!395121 m!1963099))

(declare-fun m!1963101 () Bool)

(assert (=> bs!395121 m!1963101))

(assert (=> bs!395121 m!1963091))

(assert (=> bs!395121 m!1962203))

(declare-fun m!1963103 () Bool)

(assert (=> bs!395121 m!1963103))

(declare-fun m!1963105 () Bool)

(assert (=> bs!395121 m!1963105))

(assert (=> bs!395121 m!1962203))

(assert (=> bs!395121 m!1963097))

(declare-fun m!1963107 () Bool)

(assert (=> bs!395121 m!1963107))

(declare-fun m!1963109 () Bool)

(assert (=> bs!395121 m!1963109))

(assert (=> bs!395121 m!1963091))

(declare-fun m!1963111 () Bool)

(assert (=> bs!395121 m!1963111))

(declare-fun m!1963113 () Bool)

(assert (=> bs!395121 m!1963113))

(declare-fun m!1963115 () Bool)

(assert (=> bs!395121 m!1963115))

(assert (=> bs!395121 m!1962203))

(assert (=> bs!395121 m!1963107))

(assert (=> b!1630071 d!491300))

(declare-fun b!1630547 () Bool)

(declare-fun res!729391 () Bool)

(declare-fun e!1045663 () Bool)

(assert (=> b!1630547 (=> (not res!729391) (not e!1045663))))

(declare-fun height!911 (Conc!5950) Int)

(declare-fun ++!4772 (Conc!5950 Conc!5950) Conc!5950)

(declare-fun max!0 (Int Int) Int)

(assert (=> b!1630547 (= res!729391 (>= (height!911 (++!4772 (c!265367 lt!590753) (c!265367 lt!590754))) (max!0 (height!911 (c!265367 lt!590753)) (height!911 (c!265367 lt!590754)))))))

(declare-fun b!1630548 () Bool)

(declare-fun lt!591351 () BalanceConc!11844)

(assert (=> b!1630548 (= e!1045663 (= (list!7031 lt!591351) (++!4769 (list!7031 lt!590753) (list!7031 lt!590754))))))

(declare-fun d!491304 () Bool)

(assert (=> d!491304 e!1045663))

(declare-fun res!729388 () Bool)

(assert (=> d!491304 (=> (not res!729388) (not e!1045663))))

(declare-fun appendAssocInst!439 (Conc!5950 Conc!5950) Bool)

(assert (=> d!491304 (= res!729388 (appendAssocInst!439 (c!265367 lt!590753) (c!265367 lt!590754)))))

(assert (=> d!491304 (= lt!591351 (BalanceConc!11845 (++!4772 (c!265367 lt!590753) (c!265367 lt!590754))))))

(assert (=> d!491304 (= (++!4770 lt!590753 lt!590754) lt!591351)))

(declare-fun b!1630545 () Bool)

(declare-fun res!729390 () Bool)

(assert (=> b!1630545 (=> (not res!729390) (not e!1045663))))

(assert (=> b!1630545 (= res!729390 (isBalanced!1797 (++!4772 (c!265367 lt!590753) (c!265367 lt!590754))))))

(declare-fun b!1630546 () Bool)

(declare-fun res!729389 () Bool)

(assert (=> b!1630546 (=> (not res!729389) (not e!1045663))))

(assert (=> b!1630546 (= res!729389 (<= (height!911 (++!4772 (c!265367 lt!590753) (c!265367 lt!590754))) (+ (max!0 (height!911 (c!265367 lt!590753)) (height!911 (c!265367 lt!590754))) 1)))))

(assert (= (and d!491304 res!729388) b!1630545))

(assert (= (and b!1630545 res!729390) b!1630546))

(assert (= (and b!1630546 res!729389) b!1630547))

(assert (= (and b!1630547 res!729391) b!1630548))

(declare-fun m!1963119 () Bool)

(assert (=> d!491304 m!1963119))

(declare-fun m!1963121 () Bool)

(assert (=> d!491304 m!1963121))

(declare-fun m!1963123 () Bool)

(assert (=> b!1630547 m!1963123))

(assert (=> b!1630547 m!1963121))

(declare-fun m!1963125 () Bool)

(assert (=> b!1630547 m!1963125))

(declare-fun m!1963127 () Bool)

(assert (=> b!1630547 m!1963127))

(assert (=> b!1630547 m!1963123))

(declare-fun m!1963129 () Bool)

(assert (=> b!1630547 m!1963129))

(assert (=> b!1630547 m!1963127))

(assert (=> b!1630547 m!1963121))

(assert (=> b!1630546 m!1963123))

(assert (=> b!1630546 m!1963121))

(assert (=> b!1630546 m!1963125))

(assert (=> b!1630546 m!1963127))

(assert (=> b!1630546 m!1963123))

(assert (=> b!1630546 m!1963129))

(assert (=> b!1630546 m!1963127))

(assert (=> b!1630546 m!1963121))

(declare-fun m!1963131 () Bool)

(assert (=> b!1630548 m!1963131))

(assert (=> b!1630548 m!1962179))

(assert (=> b!1630548 m!1962251))

(assert (=> b!1630548 m!1962179))

(assert (=> b!1630548 m!1962251))

(declare-fun m!1963133 () Bool)

(assert (=> b!1630548 m!1963133))

(assert (=> b!1630545 m!1963121))

(assert (=> b!1630545 m!1963121))

(declare-fun m!1963135 () Bool)

(assert (=> b!1630545 m!1963135))

(assert (=> b!1630071 d!491304))

(declare-fun d!491308 () Bool)

(declare-fun lt!591354 () C!9132)

(declare-fun apply!4596 (List!17954 Int) C!9132)

(assert (=> d!491308 (= lt!591354 (apply!4596 (list!7031 (charsOf!1800 (h!23287 (t!149413 tokens!457)))) 0))))

(declare-fun apply!4597 (Conc!5950 Int) C!9132)

(assert (=> d!491308 (= lt!591354 (apply!4597 (c!265367 (charsOf!1800 (h!23287 (t!149413 tokens!457)))) 0))))

(declare-fun e!1045666 () Bool)

(assert (=> d!491308 e!1045666))

(declare-fun res!729394 () Bool)

(assert (=> d!491308 (=> (not res!729394) (not e!1045666))))

(assert (=> d!491308 (= res!729394 (<= 0 0))))

(assert (=> d!491308 (= (apply!4588 (charsOf!1800 (h!23287 (t!149413 tokens!457))) 0) lt!591354)))

(declare-fun b!1630551 () Bool)

(assert (=> b!1630551 (= e!1045666 (< 0 (size!14304 (charsOf!1800 (h!23287 (t!149413 tokens!457))))))))

(assert (= (and d!491308 res!729394) b!1630551))

(assert (=> d!491308 m!1962207))

(assert (=> d!491308 m!1962723))

(assert (=> d!491308 m!1962723))

(declare-fun m!1963137 () Bool)

(assert (=> d!491308 m!1963137))

(declare-fun m!1963139 () Bool)

(assert (=> d!491308 m!1963139))

(assert (=> b!1630551 m!1962207))

(assert (=> b!1630551 m!1963073))

(assert (=> b!1630071 d!491308))

(declare-fun d!491310 () Bool)

(declare-fun lt!591357 () Unit!29055)

(declare-fun lemma!243 (List!17955 LexerInterface!2780 List!17955) Unit!29055)

(assert (=> d!491310 (= lt!591357 (lemma!243 rules!1846 thiss!17113 rules!1846))))

(declare-fun lambda!67346 () Int)

(declare-fun generalisedUnion!251 (List!17961) Regex!4479)

(declare-fun map!3698 (List!17955 Int) List!17961)

(assert (=> d!491310 (= (rulesRegex!541 thiss!17113 rules!1846) (generalisedUnion!251 (map!3698 rules!1846 lambda!67346)))))

(declare-fun bs!395123 () Bool)

(assert (= bs!395123 d!491310))

(declare-fun m!1963141 () Bool)

(assert (=> bs!395123 m!1963141))

(declare-fun m!1963143 () Bool)

(assert (=> bs!395123 m!1963143))

(assert (=> bs!395123 m!1963143))

(declare-fun m!1963145 () Bool)

(assert (=> bs!395123 m!1963145))

(assert (=> b!1630071 d!491310))

(declare-fun d!491312 () Bool)

(declare-fun lt!591358 () BalanceConc!11844)

(assert (=> d!491312 (= (list!7031 lt!591358) (originalCharacters!3965 (h!23287 (t!149413 tokens!457))))))

(assert (=> d!491312 (= lt!591358 (dynLambda!7979 (toChars!4441 (transformation!3151 (rule!4983 (h!23287 (t!149413 tokens!457))))) (value!99476 (h!23287 (t!149413 tokens!457)))))))

(assert (=> d!491312 (= (charsOf!1800 (h!23287 (t!149413 tokens!457))) lt!591358)))

(declare-fun b_lambda!51325 () Bool)

(assert (=> (not b_lambda!51325) (not d!491312)))

(declare-fun t!149432 () Bool)

(declare-fun tb!93635 () Bool)

(assert (=> (and b!1630082 (= (toChars!4441 (transformation!3151 (rule!4983 (h!23287 tokens!457)))) (toChars!4441 (transformation!3151 (rule!4983 (h!23287 (t!149413 tokens!457)))))) t!149432) tb!93635))

(declare-fun b!1630552 () Bool)

(declare-fun e!1045667 () Bool)

(declare-fun tp!473382 () Bool)

(assert (=> b!1630552 (= e!1045667 (and (inv!23263 (c!265367 (dynLambda!7979 (toChars!4441 (transformation!3151 (rule!4983 (h!23287 (t!149413 tokens!457))))) (value!99476 (h!23287 (t!149413 tokens!457)))))) tp!473382))))

(declare-fun result!112906 () Bool)

(assert (=> tb!93635 (= result!112906 (and (inv!23264 (dynLambda!7979 (toChars!4441 (transformation!3151 (rule!4983 (h!23287 (t!149413 tokens!457))))) (value!99476 (h!23287 (t!149413 tokens!457))))) e!1045667))))

(assert (= tb!93635 b!1630552))

(declare-fun m!1963147 () Bool)

(assert (=> b!1630552 m!1963147))

(declare-fun m!1963149 () Bool)

(assert (=> tb!93635 m!1963149))

(assert (=> d!491312 t!149432))

(declare-fun b_and!115637 () Bool)

(assert (= b_and!115629 (and (=> t!149432 result!112906) b_and!115637)))

(declare-fun t!149434 () Bool)

(declare-fun tb!93637 () Bool)

(assert (=> (and b!1630055 (= (toChars!4441 (transformation!3151 (h!23286 rules!1846))) (toChars!4441 (transformation!3151 (rule!4983 (h!23287 (t!149413 tokens!457)))))) t!149434) tb!93637))

(declare-fun result!112908 () Bool)

(assert (= result!112908 result!112906))

(assert (=> d!491312 t!149434))

(declare-fun b_and!115639 () Bool)

(assert (= b_and!115631 (and (=> t!149434 result!112908) b_and!115639)))

(declare-fun m!1963151 () Bool)

(assert (=> d!491312 m!1963151))

(declare-fun m!1963153 () Bool)

(assert (=> d!491312 m!1963153))

(assert (=> b!1630071 d!491312))

(declare-fun d!491314 () Bool)

(assert (=> d!491314 (= (list!7031 lt!590761) (list!7033 (c!265367 lt!590761)))))

(declare-fun bs!395124 () Bool)

(assert (= bs!395124 d!491314))

(declare-fun m!1963155 () Bool)

(assert (=> bs!395124 m!1963155))

(assert (=> b!1630073 d!491314))

(declare-fun d!491316 () Bool)

(declare-fun lt!591378 () BalanceConc!11844)

(declare-fun printListTailRec!359 (LexerInterface!2780 List!17956 List!17954) List!17954)

(declare-fun dropList!616 (BalanceConc!11846 Int) List!17956)

(assert (=> d!491316 (= (list!7031 lt!591378) (printListTailRec!359 thiss!17113 (dropList!616 lt!590757 0) (list!7031 (BalanceConc!11845 Empty!5950))))))

(declare-fun e!1045673 () BalanceConc!11844)

(assert (=> d!491316 (= lt!591378 e!1045673)))

(declare-fun c!265457 () Bool)

(assert (=> d!491316 (= c!265457 (>= 0 (size!14305 lt!590757)))))

(declare-fun e!1045672 () Bool)

(assert (=> d!491316 e!1045672))

(declare-fun res!729397 () Bool)

(assert (=> d!491316 (=> (not res!729397) (not e!1045672))))

(assert (=> d!491316 (= res!729397 (>= 0 0))))

(assert (=> d!491316 (= (printTailRec!833 thiss!17113 lt!590757 0 (BalanceConc!11845 Empty!5950)) lt!591378)))

(declare-fun b!1630559 () Bool)

(assert (=> b!1630559 (= e!1045672 (<= 0 (size!14305 lt!590757)))))

(declare-fun b!1630560 () Bool)

(assert (=> b!1630560 (= e!1045673 (BalanceConc!11845 Empty!5950))))

(declare-fun b!1630561 () Bool)

(assert (=> b!1630561 (= e!1045673 (printTailRec!833 thiss!17113 lt!590757 (+ 0 1) (++!4770 (BalanceConc!11845 Empty!5950) (charsOf!1800 (apply!4593 lt!590757 0)))))))

(declare-fun lt!591376 () List!17956)

(assert (=> b!1630561 (= lt!591376 (list!7032 lt!590757))))

(declare-fun lt!591375 () Unit!29055)

(declare-fun lemmaDropApply!566 (List!17956 Int) Unit!29055)

(assert (=> b!1630561 (= lt!591375 (lemmaDropApply!566 lt!591376 0))))

(declare-fun drop!878 (List!17956 Int) List!17956)

(declare-fun apply!4598 (List!17956 Int) Token!5868)

(assert (=> b!1630561 (= (head!3469 (drop!878 lt!591376 0)) (apply!4598 lt!591376 0))))

(declare-fun lt!591379 () Unit!29055)

(assert (=> b!1630561 (= lt!591379 lt!591375)))

(declare-fun lt!591373 () List!17956)

(assert (=> b!1630561 (= lt!591373 (list!7032 lt!590757))))

(declare-fun lt!591377 () Unit!29055)

(declare-fun lemmaDropTail!546 (List!17956 Int) Unit!29055)

(assert (=> b!1630561 (= lt!591377 (lemmaDropTail!546 lt!591373 0))))

(declare-fun tail!2374 (List!17956) List!17956)

(assert (=> b!1630561 (= (tail!2374 (drop!878 lt!591373 0)) (drop!878 lt!591373 (+ 0 1)))))

(declare-fun lt!591374 () Unit!29055)

(assert (=> b!1630561 (= lt!591374 lt!591377)))

(assert (= (and d!491316 res!729397) b!1630559))

(assert (= (and d!491316 c!265457) b!1630560))

(assert (= (and d!491316 (not c!265457)) b!1630561))

(declare-fun m!1963157 () Bool)

(assert (=> d!491316 m!1963157))

(assert (=> d!491316 m!1963157))

(declare-fun m!1963159 () Bool)

(assert (=> d!491316 m!1963159))

(declare-fun m!1963161 () Bool)

(assert (=> d!491316 m!1963161))

(declare-fun m!1963163 () Bool)

(assert (=> d!491316 m!1963163))

(declare-fun m!1963165 () Bool)

(assert (=> d!491316 m!1963165))

(assert (=> d!491316 m!1963159))

(assert (=> b!1630559 m!1963163))

(declare-fun m!1963167 () Bool)

(assert (=> b!1630561 m!1963167))

(declare-fun m!1963169 () Bool)

(assert (=> b!1630561 m!1963169))

(declare-fun m!1963171 () Bool)

(assert (=> b!1630561 m!1963171))

(declare-fun m!1963173 () Bool)

(assert (=> b!1630561 m!1963173))

(declare-fun m!1963175 () Bool)

(assert (=> b!1630561 m!1963175))

(declare-fun m!1963177 () Bool)

(assert (=> b!1630561 m!1963177))

(declare-fun m!1963179 () Bool)

(assert (=> b!1630561 m!1963179))

(assert (=> b!1630561 m!1963175))

(assert (=> b!1630561 m!1963167))

(declare-fun m!1963181 () Bool)

(assert (=> b!1630561 m!1963181))

(declare-fun m!1963183 () Bool)

(assert (=> b!1630561 m!1963183))

(declare-fun m!1963185 () Bool)

(assert (=> b!1630561 m!1963185))

(declare-fun m!1963187 () Bool)

(assert (=> b!1630561 m!1963187))

(assert (=> b!1630561 m!1963183))

(assert (=> b!1630561 m!1963179))

(assert (=> b!1630561 m!1963185))

(declare-fun m!1963189 () Bool)

(assert (=> b!1630561 m!1963189))

(declare-fun m!1963191 () Bool)

(assert (=> b!1630561 m!1963191))

(assert (=> b!1630073 d!491316))

(declare-fun b!1630562 () Bool)

(declare-fun res!729403 () Bool)

(declare-fun e!1045675 () Bool)

(assert (=> b!1630562 (=> (not res!729403) (not e!1045675))))

(declare-fun lt!591383 () Option!3329)

(assert (=> b!1630562 (= res!729403 (= (list!7031 (charsOf!1800 (_1!10142 (get!5163 lt!591383)))) (originalCharacters!3965 (_1!10142 (get!5163 lt!591383)))))))

(declare-fun b!1630563 () Bool)

(declare-fun res!729399 () Bool)

(assert (=> b!1630563 (=> (not res!729399) (not e!1045675))))

(assert (=> b!1630563 (= res!729399 (= (++!4769 (list!7031 (charsOf!1800 (_1!10142 (get!5163 lt!591383)))) (_2!10142 (get!5163 lt!591383))) lt!590750))))

(declare-fun call!105516 () Option!3329)

(declare-fun bm!105511 () Bool)

(assert (=> bm!105511 (= call!105516 (maxPrefixOneRule!779 thiss!17113 (h!23286 rules!1846) lt!590750))))

(declare-fun b!1630564 () Bool)

(declare-fun res!729404 () Bool)

(assert (=> b!1630564 (=> (not res!729404) (not e!1045675))))

(assert (=> b!1630564 (= res!729404 (matchR!1978 (regex!3151 (rule!4983 (_1!10142 (get!5163 lt!591383)))) (list!7031 (charsOf!1800 (_1!10142 (get!5163 lt!591383))))))))

(declare-fun b!1630565 () Bool)

(declare-fun res!729402 () Bool)

(assert (=> b!1630565 (=> (not res!729402) (not e!1045675))))

(assert (=> b!1630565 (= res!729402 (< (size!14306 (_2!10142 (get!5163 lt!591383))) (size!14306 lt!590750)))))

(declare-fun b!1630566 () Bool)

(assert (=> b!1630566 (= e!1045675 (contains!3130 rules!1846 (rule!4983 (_1!10142 (get!5163 lt!591383)))))))

(declare-fun d!491318 () Bool)

(declare-fun e!1045674 () Bool)

(assert (=> d!491318 e!1045674))

(declare-fun res!729400 () Bool)

(assert (=> d!491318 (=> res!729400 e!1045674)))

(assert (=> d!491318 (= res!729400 (isEmpty!10923 lt!591383))))

(declare-fun e!1045676 () Option!3329)

(assert (=> d!491318 (= lt!591383 e!1045676)))

(declare-fun c!265458 () Bool)

(assert (=> d!491318 (= c!265458 (and ((_ is Cons!17885) rules!1846) ((_ is Nil!17885) (t!149412 rules!1846))))))

(declare-fun lt!591381 () Unit!29055)

(declare-fun lt!591384 () Unit!29055)

(assert (=> d!491318 (= lt!591381 lt!591384)))

(assert (=> d!491318 (isPrefix!1411 lt!590750 lt!590750)))

(assert (=> d!491318 (= lt!591384 (lemmaIsPrefixRefl!964 lt!590750 lt!590750))))

(assert (=> d!491318 (rulesValidInductive!976 thiss!17113 rules!1846)))

(assert (=> d!491318 (= (maxPrefix!1344 thiss!17113 rules!1846 lt!590750) lt!591383)))

(declare-fun b!1630567 () Bool)

(declare-fun lt!591380 () Option!3329)

(declare-fun lt!591382 () Option!3329)

(assert (=> b!1630567 (= e!1045676 (ite (and ((_ is None!3328) lt!591380) ((_ is None!3328) lt!591382)) None!3328 (ite ((_ is None!3328) lt!591382) lt!591380 (ite ((_ is None!3328) lt!591380) lt!591382 (ite (>= (size!14300 (_1!10142 (v!24381 lt!591380))) (size!14300 (_1!10142 (v!24381 lt!591382)))) lt!591380 lt!591382)))))))

(assert (=> b!1630567 (= lt!591380 call!105516)))

(assert (=> b!1630567 (= lt!591382 (maxPrefix!1344 thiss!17113 (t!149412 rules!1846) lt!590750))))

(declare-fun b!1630568 () Bool)

(declare-fun res!729401 () Bool)

(assert (=> b!1630568 (=> (not res!729401) (not e!1045675))))

(assert (=> b!1630568 (= res!729401 (= (value!99476 (_1!10142 (get!5163 lt!591383))) (apply!4590 (transformation!3151 (rule!4983 (_1!10142 (get!5163 lt!591383)))) (seqFromList!2052 (originalCharacters!3965 (_1!10142 (get!5163 lt!591383)))))))))

(declare-fun b!1630569 () Bool)

(assert (=> b!1630569 (= e!1045674 e!1045675)))

(declare-fun res!729398 () Bool)

(assert (=> b!1630569 (=> (not res!729398) (not e!1045675))))

(assert (=> b!1630569 (= res!729398 (isDefined!2696 lt!591383))))

(declare-fun b!1630570 () Bool)

(assert (=> b!1630570 (= e!1045676 call!105516)))

(assert (= (and d!491318 c!265458) b!1630570))

(assert (= (and d!491318 (not c!265458)) b!1630567))

(assert (= (or b!1630570 b!1630567) bm!105511))

(assert (= (and d!491318 (not res!729400)) b!1630569))

(assert (= (and b!1630569 res!729398) b!1630562))

(assert (= (and b!1630562 res!729403) b!1630565))

(assert (= (and b!1630565 res!729402) b!1630563))

(assert (= (and b!1630563 res!729399) b!1630568))

(assert (= (and b!1630568 res!729401) b!1630564))

(assert (= (and b!1630564 res!729404) b!1630566))

(declare-fun m!1963193 () Bool)

(assert (=> b!1630569 m!1963193))

(declare-fun m!1963195 () Bool)

(assert (=> b!1630562 m!1963195))

(declare-fun m!1963197 () Bool)

(assert (=> b!1630562 m!1963197))

(assert (=> b!1630562 m!1963197))

(declare-fun m!1963199 () Bool)

(assert (=> b!1630562 m!1963199))

(assert (=> b!1630563 m!1963195))

(assert (=> b!1630563 m!1963197))

(assert (=> b!1630563 m!1963197))

(assert (=> b!1630563 m!1963199))

(assert (=> b!1630563 m!1963199))

(declare-fun m!1963201 () Bool)

(assert (=> b!1630563 m!1963201))

(assert (=> b!1630564 m!1963195))

(assert (=> b!1630564 m!1963197))

(assert (=> b!1630564 m!1963197))

(assert (=> b!1630564 m!1963199))

(assert (=> b!1630564 m!1963199))

(declare-fun m!1963203 () Bool)

(assert (=> b!1630564 m!1963203))

(declare-fun m!1963205 () Bool)

(assert (=> b!1630567 m!1963205))

(declare-fun m!1963207 () Bool)

(assert (=> bm!105511 m!1963207))

(declare-fun m!1963209 () Bool)

(assert (=> d!491318 m!1963209))

(declare-fun m!1963211 () Bool)

(assert (=> d!491318 m!1963211))

(declare-fun m!1963213 () Bool)

(assert (=> d!491318 m!1963213))

(assert (=> d!491318 m!1962113))

(assert (=> b!1630565 m!1963195))

(declare-fun m!1963215 () Bool)

(assert (=> b!1630565 m!1963215))

(declare-fun m!1963217 () Bool)

(assert (=> b!1630565 m!1963217))

(assert (=> b!1630566 m!1963195))

(declare-fun m!1963219 () Bool)

(assert (=> b!1630566 m!1963219))

(assert (=> b!1630568 m!1963195))

(declare-fun m!1963221 () Bool)

(assert (=> b!1630568 m!1963221))

(assert (=> b!1630568 m!1963221))

(declare-fun m!1963223 () Bool)

(assert (=> b!1630568 m!1963223))

(assert (=> b!1630073 d!491318))

(declare-fun d!491320 () Bool)

(declare-fun c!265461 () Bool)

(assert (=> d!491320 (= c!265461 ((_ is Cons!17886) (Cons!17886 (h!23287 tokens!457) Nil!17886)))))

(declare-fun e!1045679 () List!17954)

(assert (=> d!491320 (= (printList!895 thiss!17113 (Cons!17886 (h!23287 tokens!457) Nil!17886)) e!1045679)))

(declare-fun b!1630575 () Bool)

(assert (=> b!1630575 (= e!1045679 (++!4769 (list!7031 (charsOf!1800 (h!23287 (Cons!17886 (h!23287 tokens!457) Nil!17886)))) (printList!895 thiss!17113 (t!149413 (Cons!17886 (h!23287 tokens!457) Nil!17886)))))))

(declare-fun b!1630576 () Bool)

(assert (=> b!1630576 (= e!1045679 Nil!17884)))

(assert (= (and d!491320 c!265461) b!1630575))

(assert (= (and d!491320 (not c!265461)) b!1630576))

(declare-fun m!1963225 () Bool)

(assert (=> b!1630575 m!1963225))

(assert (=> b!1630575 m!1963225))

(declare-fun m!1963227 () Bool)

(assert (=> b!1630575 m!1963227))

(declare-fun m!1963229 () Bool)

(assert (=> b!1630575 m!1963229))

(assert (=> b!1630575 m!1963227))

(assert (=> b!1630575 m!1963229))

(declare-fun m!1963231 () Bool)

(assert (=> b!1630575 m!1963231))

(assert (=> b!1630073 d!491320))

(declare-fun d!491322 () Bool)

(declare-fun lt!591385 () BalanceConc!11844)

(assert (=> d!491322 (= (list!7031 lt!591385) (printList!895 thiss!17113 (list!7032 lt!590757)))))

(assert (=> d!491322 (= lt!591385 (printTailRec!833 thiss!17113 lt!590757 0 (BalanceConc!11845 Empty!5950)))))

(assert (=> d!491322 (= (print!1311 thiss!17113 lt!590757) lt!591385)))

(declare-fun bs!395125 () Bool)

(assert (= bs!395125 d!491322))

(declare-fun m!1963233 () Bool)

(assert (=> bs!395125 m!1963233))

(assert (=> bs!395125 m!1963173))

(assert (=> bs!395125 m!1963173))

(declare-fun m!1963235 () Bool)

(assert (=> bs!395125 m!1963235))

(assert (=> bs!395125 m!1962161))

(assert (=> b!1630073 d!491322))

(declare-fun d!491324 () Bool)

(declare-fun e!1045682 () Bool)

(assert (=> d!491324 e!1045682))

(declare-fun res!729407 () Bool)

(assert (=> d!491324 (=> (not res!729407) (not e!1045682))))

(declare-fun lt!591388 () BalanceConc!11846)

(assert (=> d!491324 (= res!729407 (= (list!7032 lt!591388) (Cons!17886 (h!23287 tokens!457) Nil!17886)))))

(declare-fun singleton!678 (Token!5868) BalanceConc!11846)

(assert (=> d!491324 (= lt!591388 (singleton!678 (h!23287 tokens!457)))))

(assert (=> d!491324 (= (singletonSeq!1581 (h!23287 tokens!457)) lt!591388)))

(declare-fun b!1630579 () Bool)

(assert (=> b!1630579 (= e!1045682 (isBalanced!1795 (c!265369 lt!591388)))))

(assert (= (and d!491324 res!729407) b!1630579))

(declare-fun m!1963237 () Bool)

(assert (=> d!491324 m!1963237))

(declare-fun m!1963239 () Bool)

(assert (=> d!491324 m!1963239))

(declare-fun m!1963241 () Bool)

(assert (=> b!1630579 m!1963241))

(assert (=> b!1630073 d!491324))

(declare-fun lt!591391 () Bool)

(declare-fun d!491326 () Bool)

(declare-fun isEmpty!10925 (List!17956) Bool)

(assert (=> d!491326 (= lt!591391 (isEmpty!10925 (list!7032 (_1!10141 (lex!1264 thiss!17113 rules!1846 (seqFromList!2052 lt!590744))))))))

(declare-fun isEmpty!10926 (Conc!5951) Bool)

(assert (=> d!491326 (= lt!591391 (isEmpty!10926 (c!265369 (_1!10141 (lex!1264 thiss!17113 rules!1846 (seqFromList!2052 lt!590744))))))))

(assert (=> d!491326 (= (isEmpty!10916 (_1!10141 (lex!1264 thiss!17113 rules!1846 (seqFromList!2052 lt!590744)))) lt!591391)))

(declare-fun bs!395126 () Bool)

(assert (= bs!395126 d!491326))

(assert (=> bs!395126 m!1962653))

(assert (=> bs!395126 m!1962653))

(declare-fun m!1963243 () Bool)

(assert (=> bs!395126 m!1963243))

(declare-fun m!1963245 () Bool)

(assert (=> bs!395126 m!1963245))

(assert (=> b!1630064 d!491326))

(declare-fun b!1630580 () Bool)

(declare-fun e!1045685 () Bool)

(declare-fun lt!591392 () tuple2!17478)

(assert (=> b!1630580 (= e!1045685 (not (isEmpty!10916 (_1!10141 lt!591392))))))

(declare-fun b!1630581 () Bool)

(declare-fun e!1045684 () Bool)

(assert (=> b!1630581 (= e!1045684 e!1045685)))

(declare-fun res!729410 () Bool)

(assert (=> b!1630581 (= res!729410 (< (size!14304 (_2!10141 lt!591392)) (size!14304 (seqFromList!2052 lt!590744))))))

(assert (=> b!1630581 (=> (not res!729410) (not e!1045685))))

(declare-fun b!1630582 () Bool)

(declare-fun res!729408 () Bool)

(declare-fun e!1045683 () Bool)

(assert (=> b!1630582 (=> (not res!729408) (not e!1045683))))

(assert (=> b!1630582 (= res!729408 (= (list!7032 (_1!10141 lt!591392)) (_1!10145 (lexList!833 thiss!17113 rules!1846 (list!7031 (seqFromList!2052 lt!590744))))))))

(declare-fun b!1630583 () Bool)

(assert (=> b!1630583 (= e!1045683 (= (list!7031 (_2!10141 lt!591392)) (_2!10145 (lexList!833 thiss!17113 rules!1846 (list!7031 (seqFromList!2052 lt!590744))))))))

(declare-fun d!491328 () Bool)

(assert (=> d!491328 e!1045683))

(declare-fun res!729409 () Bool)

(assert (=> d!491328 (=> (not res!729409) (not e!1045683))))

(assert (=> d!491328 (= res!729409 e!1045684)))

(declare-fun c!265462 () Bool)

(assert (=> d!491328 (= c!265462 (> (size!14305 (_1!10141 lt!591392)) 0))))

(assert (=> d!491328 (= lt!591392 (lexTailRecV2!556 thiss!17113 rules!1846 (seqFromList!2052 lt!590744) (BalanceConc!11845 Empty!5950) (seqFromList!2052 lt!590744) (BalanceConc!11847 Empty!5951)))))

(assert (=> d!491328 (= (lex!1264 thiss!17113 rules!1846 (seqFromList!2052 lt!590744)) lt!591392)))

(declare-fun b!1630584 () Bool)

(assert (=> b!1630584 (= e!1045684 (= (_2!10141 lt!591392) (seqFromList!2052 lt!590744)))))

(assert (= (and d!491328 c!265462) b!1630581))

(assert (= (and d!491328 (not c!265462)) b!1630584))

(assert (= (and b!1630581 res!729410) b!1630580))

(assert (= (and d!491328 res!729409) b!1630582))

(assert (= (and b!1630582 res!729408) b!1630583))

(declare-fun m!1963247 () Bool)

(assert (=> b!1630582 m!1963247))

(assert (=> b!1630582 m!1962227))

(declare-fun m!1963249 () Bool)

(assert (=> b!1630582 m!1963249))

(assert (=> b!1630582 m!1963249))

(declare-fun m!1963251 () Bool)

(assert (=> b!1630582 m!1963251))

(declare-fun m!1963253 () Bool)

(assert (=> d!491328 m!1963253))

(assert (=> d!491328 m!1962227))

(assert (=> d!491328 m!1962227))

(declare-fun m!1963255 () Bool)

(assert (=> d!491328 m!1963255))

(declare-fun m!1963257 () Bool)

(assert (=> b!1630583 m!1963257))

(assert (=> b!1630583 m!1962227))

(assert (=> b!1630583 m!1963249))

(assert (=> b!1630583 m!1963249))

(assert (=> b!1630583 m!1963251))

(declare-fun m!1963259 () Bool)

(assert (=> b!1630581 m!1963259))

(assert (=> b!1630581 m!1962227))

(declare-fun m!1963261 () Bool)

(assert (=> b!1630581 m!1963261))

(declare-fun m!1963263 () Bool)

(assert (=> b!1630580 m!1963263))

(assert (=> b!1630064 d!491328))

(declare-fun d!491330 () Bool)

(declare-fun fromListB!903 (List!17954) BalanceConc!11844)

(assert (=> d!491330 (= (seqFromList!2052 lt!590744) (fromListB!903 lt!590744))))

(declare-fun bs!395127 () Bool)

(assert (= bs!395127 d!491330))

(declare-fun m!1963265 () Bool)

(assert (=> bs!395127 m!1963265))

(assert (=> b!1630064 d!491330))

(declare-fun d!491332 () Bool)

(assert (=> d!491332 (= (get!5163 lt!590738) (v!24381 lt!590738))))

(assert (=> b!1630063 d!491332))

(declare-fun b!1630767 () Bool)

(assert (=> b!1630767 false))

(declare-fun lt!591772 () Unit!29055)

(declare-fun lt!591769 () Unit!29055)

(assert (=> b!1630767 (= lt!591772 lt!591769)))

(declare-fun lt!591774 () Token!5868)

(declare-fun lt!591783 () List!17954)

(assert (=> b!1630767 (not (matchR!1978 (regex!3151 (rule!4983 lt!591774)) lt!591783))))

(declare-fun lemmaMaxPrefNoSmallerRuleMatches!72 (LexerInterface!2780 List!17955 Rule!6102 List!17954 List!17954 Rule!6102) Unit!29055)

(assert (=> b!1630767 (= lt!591769 (lemmaMaxPrefNoSmallerRuleMatches!72 thiss!17113 rules!1846 (rule!4983 (h!23287 tokens!457)) lt!591783 (list!7031 (charsOf!1800 (h!23287 tokens!457))) (rule!4983 lt!591774)))))

(assert (=> b!1630767 (= lt!591783 (list!7031 (charsOf!1800 (h!23287 tokens!457))))))

(declare-fun e!1045803 () Unit!29055)

(declare-fun Unit!29108 () Unit!29055)

(assert (=> b!1630767 (= e!1045803 Unit!29108)))

(declare-fun b!1630768 () Bool)

(declare-fun e!1045802 () Unit!29055)

(declare-fun Unit!29109 () Unit!29055)

(assert (=> b!1630768 (= e!1045802 Unit!29109)))

(declare-fun c!265500 () Bool)

(declare-fun getIndex!100 (List!17955 Rule!6102) Int)

(assert (=> b!1630768 (= c!265500 (< (getIndex!100 rules!1846 (rule!4983 (h!23287 tokens!457))) (getIndex!100 rules!1846 (rule!4983 lt!591774))))))

(declare-fun lt!591746 () Unit!29055)

(declare-fun e!1045801 () Unit!29055)

(assert (=> b!1630768 (= lt!591746 e!1045801)))

(declare-fun c!265503 () Bool)

(assert (=> b!1630768 (= c!265503 (< (getIndex!100 rules!1846 (rule!4983 lt!591774)) (getIndex!100 rules!1846 (rule!4983 (h!23287 tokens!457)))))))

(declare-fun lt!591732 () Unit!29055)

(assert (=> b!1630768 (= lt!591732 e!1045803)))

(declare-fun c!265499 () Bool)

(assert (=> b!1630768 (= c!265499 (= (getIndex!100 rules!1846 (rule!4983 lt!591774)) (getIndex!100 rules!1846 (rule!4983 (h!23287 tokens!457)))))))

(declare-fun lt!591786 () Unit!29055)

(declare-fun e!1045800 () Unit!29055)

(assert (=> b!1630768 (= lt!591786 e!1045800)))

(assert (=> b!1630768 false))

(declare-fun b!1630769 () Bool)

(assert (=> b!1630769 false))

(declare-fun lt!591749 () Unit!29055)

(declare-fun lt!591728 () Unit!29055)

(assert (=> b!1630769 (= lt!591749 lt!591728)))

(assert (=> b!1630769 (= (rule!4983 lt!591774) (rule!4983 (h!23287 tokens!457)))))

(declare-fun lemmaSameIndexThenSameElement!48 (List!17955 Rule!6102 Rule!6102) Unit!29055)

(assert (=> b!1630769 (= lt!591728 (lemmaSameIndexThenSameElement!48 rules!1846 (rule!4983 lt!591774) (rule!4983 (h!23287 tokens!457))))))

(declare-fun Unit!29110 () Unit!29055)

(assert (=> b!1630769 (= e!1045800 Unit!29110)))

(declare-fun b!1630770 () Bool)

(declare-fun e!1045804 () Unit!29055)

(declare-fun Unit!29111 () Unit!29055)

(assert (=> b!1630770 (= e!1045804 Unit!29111)))

(declare-fun b!1630771 () Bool)

(declare-fun e!1045799 () Unit!29055)

(declare-fun Unit!29112 () Unit!29055)

(assert (=> b!1630771 (= e!1045799 Unit!29112)))

(declare-fun b!1630772 () Bool)

(declare-fun Unit!29113 () Unit!29055)

(assert (=> b!1630772 (= e!1045799 Unit!29113)))

(declare-fun lt!591735 () List!17954)

(assert (=> b!1630772 (= lt!591735 (list!7031 (charsOf!1800 lt!591774)))))

(declare-fun lt!591763 () List!17954)

(assert (=> b!1630772 (= lt!591763 (list!7031 (charsOf!1800 (h!23287 tokens!457))))))

(declare-fun lt!591775 () List!17954)

(declare-fun lt!591734 () Unit!29055)

(declare-fun lemmaMaxPrefixOutputsMaxPrefix!122 (LexerInterface!2780 List!17955 Rule!6102 List!17954 List!17954 List!17954 Rule!6102) Unit!29055)

(assert (=> b!1630772 (= lt!591734 (lemmaMaxPrefixOutputsMaxPrefix!122 thiss!17113 rules!1846 (rule!4983 lt!591774) lt!591735 lt!591775 lt!591763 (rule!4983 (h!23287 tokens!457))))))

(assert (=> b!1630772 (not (matchR!1978 (regex!3151 (rule!4983 (h!23287 tokens!457))) lt!591763))))

(declare-fun lt!591754 () Unit!29055)

(assert (=> b!1630772 (= lt!591754 lt!591734)))

(assert (=> b!1630772 false))

(declare-fun b!1630773 () Bool)

(declare-fun Unit!29114 () Unit!29055)

(assert (=> b!1630773 (= e!1045801 Unit!29114)))

(declare-fun d!491334 () Bool)

(assert (=> d!491334 (= (maxPrefix!1344 thiss!17113 rules!1846 (++!4769 (list!7031 (charsOf!1800 (h!23287 tokens!457))) lt!590763)) (Some!3328 (tuple2!17481 (h!23287 tokens!457) lt!590763)))))

(declare-fun lt!591771 () Unit!29055)

(declare-fun Unit!29115 () Unit!29055)

(assert (=> d!491334 (= lt!591771 Unit!29115)))

(declare-fun lt!591751 () Unit!29055)

(assert (=> d!491334 (= lt!591751 e!1045802)))

(declare-fun c!265501 () Bool)

(assert (=> d!491334 (= c!265501 (not (= (rule!4983 lt!591774) (rule!4983 (h!23287 tokens!457)))))))

(declare-fun lt!591740 () Unit!29055)

(declare-fun lt!591796 () Unit!29055)

(assert (=> d!491334 (= lt!591740 lt!591796)))

(declare-fun lt!591743 () List!17954)

(assert (=> d!491334 (= lt!590763 lt!591743)))

(declare-fun lemmaSamePrefixThenSameSuffix!654 (List!17954 List!17954 List!17954 List!17954 List!17954) Unit!29055)

(assert (=> d!491334 (= lt!591796 (lemmaSamePrefixThenSameSuffix!654 (list!7031 (charsOf!1800 (h!23287 tokens!457))) lt!590763 (list!7031 (charsOf!1800 (h!23287 tokens!457))) lt!591743 lt!591775))))

(declare-fun lt!591767 () Unit!29055)

(declare-fun lt!591742 () Unit!29055)

(assert (=> d!491334 (= lt!591767 lt!591742)))

(declare-fun lt!591738 () List!17954)

(declare-fun lt!591730 () List!17954)

(assert (=> d!491334 (= lt!591738 lt!591730)))

(declare-fun lemmaIsPrefixSameLengthThenSameList!156 (List!17954 List!17954 List!17954) Unit!29055)

(assert (=> d!491334 (= lt!591742 (lemmaIsPrefixSameLengthThenSameList!156 lt!591738 lt!591730 lt!591775))))

(assert (=> d!491334 (= lt!591730 (list!7031 (charsOf!1800 (h!23287 tokens!457))))))

(assert (=> d!491334 (= lt!591738 (list!7031 (charsOf!1800 lt!591774)))))

(declare-fun lt!591727 () Unit!29055)

(assert (=> d!491334 (= lt!591727 e!1045799)))

(declare-fun c!265502 () Bool)

(assert (=> d!491334 (= c!265502 (< (size!14304 (charsOf!1800 lt!591774)) (size!14304 (charsOf!1800 (h!23287 tokens!457)))))))

(declare-fun lt!591787 () Unit!29055)

(assert (=> d!491334 (= lt!591787 e!1045804)))

(declare-fun c!265504 () Bool)

(assert (=> d!491334 (= c!265504 (> (size!14304 (charsOf!1800 lt!591774)) (size!14304 (charsOf!1800 (h!23287 tokens!457)))))))

(declare-fun lt!591770 () Unit!29055)

(declare-fun lt!591750 () Unit!29055)

(assert (=> d!491334 (= lt!591770 lt!591750)))

(assert (=> d!491334 (matchR!1978 (rulesRegex!541 thiss!17113 rules!1846) (list!7031 (charsOf!1800 (h!23287 tokens!457))))))

(declare-fun lemmaMaxPrefixThenMatchesRulesRegex!32 (LexerInterface!2780 List!17955 List!17954 Token!5868 Rule!6102 List!17954) Unit!29055)

(assert (=> d!491334 (= lt!591750 (lemmaMaxPrefixThenMatchesRulesRegex!32 thiss!17113 rules!1846 (list!7031 (charsOf!1800 (h!23287 tokens!457))) (h!23287 tokens!457) (rule!4983 (h!23287 tokens!457)) Nil!17884))))

(declare-fun lt!591764 () Unit!29055)

(declare-fun lt!591780 () Unit!29055)

(assert (=> d!491334 (= lt!591764 lt!591780)))

(declare-fun lt!591766 () List!17954)

(assert (=> d!491334 (= lt!591743 lt!591766)))

(declare-fun lt!591785 () List!17954)

(declare-fun lt!591776 () List!17954)

(assert (=> d!491334 (= lt!591780 (lemmaSamePrefixThenSameSuffix!654 lt!591776 lt!591743 lt!591785 lt!591766 lt!591775))))

(declare-fun getSuffix!702 (List!17954 List!17954) List!17954)

(assert (=> d!491334 (= lt!591766 (getSuffix!702 lt!591775 (list!7031 (charsOf!1800 lt!591774))))))

(assert (=> d!491334 (= lt!591785 (list!7031 (charsOf!1800 lt!591774)))))

(assert (=> d!491334 (= lt!591776 (list!7031 (charsOf!1800 lt!591774)))))

(declare-fun lt!591729 () Unit!29055)

(declare-fun lt!591795 () Unit!29055)

(assert (=> d!491334 (= lt!591729 lt!591795)))

(declare-fun lt!591737 () List!17954)

(assert (=> d!491334 (= (maxPrefixOneRule!779 thiss!17113 (rule!4983 lt!591774) lt!591775) (Some!3328 (tuple2!17481 (Token!5869 (apply!4590 (transformation!3151 (rule!4983 lt!591774)) (seqFromList!2052 lt!591737)) (rule!4983 lt!591774) (size!14306 lt!591737) lt!591737) lt!591743)))))

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!222 (LexerInterface!2780 List!17955 List!17954 List!17954 List!17954 Rule!6102) Unit!29055)

(assert (=> d!491334 (= lt!591795 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!222 thiss!17113 rules!1846 lt!591737 lt!591775 lt!591743 (rule!4983 lt!591774)))))

(assert (=> d!491334 (= lt!591737 (list!7031 (charsOf!1800 lt!591774)))))

(declare-fun lt!591778 () Unit!29055)

(declare-fun lemmaCharactersSize!328 (Token!5868) Unit!29055)

(assert (=> d!491334 (= lt!591778 (lemmaCharactersSize!328 lt!591774))))

(declare-fun lt!591744 () Unit!29055)

(declare-fun lemmaEqSameImage!181 (TokenValueInjection!6142 BalanceConc!11844 BalanceConc!11844) Unit!29055)

(assert (=> d!491334 (= lt!591744 (lemmaEqSameImage!181 (transformation!3151 (rule!4983 lt!591774)) (charsOf!1800 lt!591774) (seqFromList!2052 (originalCharacters!3965 lt!591774))))))

(declare-fun lt!591753 () Unit!29055)

(declare-fun lemmaSemiInverse!396 (TokenValueInjection!6142 BalanceConc!11844) Unit!29055)

(assert (=> d!491334 (= lt!591753 (lemmaSemiInverse!396 (transformation!3151 (rule!4983 lt!591774)) (charsOf!1800 lt!591774)))))

(declare-fun lt!591790 () Unit!29055)

(declare-fun lemmaInv!461 (TokenValueInjection!6142) Unit!29055)

(assert (=> d!491334 (= lt!591790 (lemmaInv!461 (transformation!3151 (rule!4983 lt!591774))))))

(declare-fun lt!591761 () Unit!29055)

(declare-fun lt!591756 () Unit!29055)

(assert (=> d!491334 (= lt!591761 lt!591756)))

(declare-fun lt!591760 () List!17954)

(assert (=> d!491334 (isPrefix!1411 lt!591760 (++!4769 lt!591760 lt!591743))))

(assert (=> d!491334 (= lt!591756 (lemmaConcatTwoListThenFirstIsPrefix!936 lt!591760 lt!591743))))

(assert (=> d!491334 (= lt!591760 (list!7031 (charsOf!1800 lt!591774)))))

(declare-fun lt!591731 () Unit!29055)

(declare-fun lt!591741 () Unit!29055)

(assert (=> d!491334 (= lt!591731 lt!591741)))

(declare-fun e!1045798 () Bool)

(assert (=> d!491334 e!1045798))

(declare-fun res!729483 () Bool)

(assert (=> d!491334 (=> (not res!729483) (not e!1045798))))

(assert (=> d!491334 (= res!729483 (isDefined!2699 (getRuleFromTag!288 thiss!17113 rules!1846 (tag!3431 (rule!4983 lt!591774)))))))

(assert (=> d!491334 (= lt!591741 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!288 thiss!17113 rules!1846 lt!591775 lt!591774))))

(declare-fun lt!591793 () Option!3329)

(assert (=> d!491334 (= lt!591743 (_2!10142 (get!5163 lt!591793)))))

(assert (=> d!491334 (= lt!591774 (_1!10142 (get!5163 lt!591793)))))

(declare-fun lt!591762 () Unit!29055)

(assert (=> d!491334 (= lt!591762 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!354 thiss!17113 rules!1846 (list!7031 (charsOf!1800 (h!23287 tokens!457))) lt!590763))))

(assert (=> d!491334 (= lt!591793 (maxPrefix!1344 thiss!17113 rules!1846 lt!591775))))

(declare-fun lt!591777 () Unit!29055)

(declare-fun lt!591789 () Unit!29055)

(assert (=> d!491334 (= lt!591777 lt!591789)))

(declare-fun lt!591765 () List!17954)

(assert (=> d!491334 (isPrefix!1411 lt!591765 (++!4769 lt!591765 lt!590763))))

(assert (=> d!491334 (= lt!591789 (lemmaConcatTwoListThenFirstIsPrefix!936 lt!591765 lt!590763))))

(assert (=> d!491334 (= lt!591765 (list!7031 (charsOf!1800 (h!23287 tokens!457))))))

(assert (=> d!491334 (= lt!591775 (++!4769 (list!7031 (charsOf!1800 (h!23287 tokens!457))) lt!590763))))

(assert (=> d!491334 (not (isEmpty!10915 rules!1846))))

(assert (=> d!491334 (= (lemmaMaxPrefWithNoPrefixMatchAllRulesThenSuffixReturnSame!116 thiss!17113 rules!1846 (h!23287 tokens!457) (rule!4983 (h!23287 tokens!457)) lt!590763) lt!591771)))

(declare-fun b!1630774 () Bool)

(declare-fun res!729484 () Bool)

(assert (=> b!1630774 (=> (not res!729484) (not e!1045798))))

(assert (=> b!1630774 (= res!729484 (matchR!1978 (regex!3151 (get!5166 (getRuleFromTag!288 thiss!17113 rules!1846 (tag!3431 (rule!4983 lt!591774))))) (list!7031 (charsOf!1800 lt!591774))))))

(declare-fun b!1630775 () Bool)

(assert (=> b!1630775 (= e!1045798 (= (rule!4983 lt!591774) (get!5166 (getRuleFromTag!288 thiss!17113 rules!1846 (tag!3431 (rule!4983 lt!591774))))))))

(declare-fun b!1630776 () Bool)

(declare-fun Unit!29116 () Unit!29055)

(assert (=> b!1630776 (= e!1045803 Unit!29116)))

(declare-fun b!1630777 () Bool)

(declare-fun Unit!29117 () Unit!29055)

(assert (=> b!1630777 (= e!1045800 Unit!29117)))

(declare-fun b!1630778 () Bool)

(declare-fun Unit!29118 () Unit!29055)

(assert (=> b!1630778 (= e!1045802 Unit!29118)))

(declare-fun b!1630779 () Bool)

(assert (=> b!1630779 false))

(declare-fun lt!591726 () Unit!29055)

(declare-fun lt!591748 () Unit!29055)

(assert (=> b!1630779 (= lt!591726 lt!591748)))

(declare-fun lt!591791 () List!17954)

(assert (=> b!1630779 (not (matchR!1978 (regex!3151 (rule!4983 (h!23287 tokens!457))) lt!591791))))

(assert (=> b!1630779 (= lt!591748 (lemmaMaxPrefNoSmallerRuleMatches!72 thiss!17113 rules!1846 (rule!4983 lt!591774) lt!591791 lt!591775 (rule!4983 (h!23287 tokens!457))))))

(assert (=> b!1630779 (= lt!591791 (list!7031 (charsOf!1800 lt!591774)))))

(declare-fun Unit!29119 () Unit!29055)

(assert (=> b!1630779 (= e!1045801 Unit!29119)))

(declare-fun b!1630780 () Bool)

(declare-fun Unit!29120 () Unit!29055)

(assert (=> b!1630780 (= e!1045804 Unit!29120)))

(declare-fun lt!591768 () Unit!29055)

(assert (=> b!1630780 (= lt!591768 (lemmaMaxPrefixThenMatchesRulesRegex!32 thiss!17113 rules!1846 lt!591775 lt!591774 (rule!4983 lt!591774) lt!591743))))

(assert (=> b!1630780 (matchR!1978 (rulesRegex!541 thiss!17113 rules!1846) (list!7031 (charsOf!1800 lt!591774)))))

(declare-fun lt!591757 () Unit!29055)

(assert (=> b!1630780 (= lt!591757 lt!591768)))

(declare-fun lt!591788 () List!17954)

(assert (=> b!1630780 (= lt!591788 (list!7031 (charsOf!1800 (h!23287 tokens!457))))))

(declare-fun lt!591782 () List!17954)

(assert (=> b!1630780 (= lt!591782 (list!7031 (charsOf!1800 (h!23287 tokens!457))))))

(declare-fun lt!591784 () List!17954)

(assert (=> b!1630780 (= lt!591784 (getSuffix!702 lt!591775 (list!7031 (charsOf!1800 (h!23287 tokens!457)))))))

(declare-fun lt!591773 () Unit!29055)

(assert (=> b!1630780 (= lt!591773 (lemmaSamePrefixThenSameSuffix!654 lt!591788 lt!590763 lt!591782 lt!591784 lt!591775))))

(assert (=> b!1630780 (= lt!590763 lt!591784)))

(declare-fun lt!591745 () Unit!29055)

(assert (=> b!1630780 (= lt!591745 lt!591773)))

(declare-fun lt!591758 () List!17954)

(assert (=> b!1630780 (= lt!591758 (list!7031 (charsOf!1800 (h!23287 tokens!457))))))

(declare-fun lt!591781 () Unit!29055)

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!145 (List!17954 List!17954) Unit!29055)

(assert (=> b!1630780 (= lt!591781 (lemmaAddHeadSuffixToPrefixStillPrefix!145 lt!591758 lt!591775))))

(assert (=> b!1630780 (isPrefix!1411 (++!4769 lt!591758 (Cons!17884 (head!3467 (getSuffix!702 lt!591775 lt!591758)) Nil!17884)) lt!591775)))

(declare-fun lt!591755 () Unit!29055)

(assert (=> b!1630780 (= lt!591755 lt!591781)))

(declare-fun lt!591752 () List!17954)

(assert (=> b!1630780 (= lt!591752 (list!7031 (charsOf!1800 lt!591774)))))

(declare-fun lt!591733 () List!17954)

(assert (=> b!1630780 (= lt!591733 (++!4769 (list!7031 (charsOf!1800 (h!23287 tokens!457))) (Cons!17884 (head!3467 lt!590763) Nil!17884)))))

(declare-fun lt!591794 () Unit!29055)

(declare-fun lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!32 (List!17954 List!17954 List!17954) Unit!29055)

(assert (=> b!1630780 (= lt!591794 (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!32 lt!591752 lt!591733 lt!591775))))

(assert (=> b!1630780 (isPrefix!1411 lt!591733 lt!591752)))

(declare-fun lt!591747 () Unit!29055)

(assert (=> b!1630780 (= lt!591747 lt!591794)))

(declare-fun lt!591739 () Regex!4479)

(assert (=> b!1630780 (= lt!591739 (rulesRegex!541 thiss!17113 rules!1846))))

(declare-fun lt!591792 () List!17954)

(assert (=> b!1630780 (= lt!591792 (++!4769 (list!7031 (charsOf!1800 (h!23287 tokens!457))) (Cons!17884 (head!3467 lt!590763) Nil!17884)))))

(declare-fun lt!591779 () List!17954)

(assert (=> b!1630780 (= lt!591779 (list!7031 (charsOf!1800 lt!591774)))))

(declare-fun lt!591759 () Unit!29055)

(declare-fun lemmaNotPrefixMatchThenCannotMatchLonger!33 (Regex!4479 List!17954 List!17954) Unit!29055)

(assert (=> b!1630780 (= lt!591759 (lemmaNotPrefixMatchThenCannotMatchLonger!33 lt!591739 lt!591792 lt!591779))))

(assert (=> b!1630780 (not (matchR!1978 lt!591739 lt!591779))))

(declare-fun lt!591736 () Unit!29055)

(assert (=> b!1630780 (= lt!591736 lt!591759)))

(assert (=> b!1630780 false))

(assert (= (and d!491334 res!729483) b!1630774))

(assert (= (and b!1630774 res!729484) b!1630775))

(assert (= (and d!491334 c!265504) b!1630780))

(assert (= (and d!491334 (not c!265504)) b!1630770))

(assert (= (and d!491334 c!265502) b!1630772))

(assert (= (and d!491334 (not c!265502)) b!1630771))

(assert (= (and d!491334 c!265501) b!1630768))

(assert (= (and d!491334 (not c!265501)) b!1630778))

(assert (= (and b!1630768 c!265500) b!1630779))

(assert (= (and b!1630768 (not c!265500)) b!1630773))

(assert (= (and b!1630768 c!265503) b!1630767))

(assert (= (and b!1630768 (not c!265503)) b!1630776))

(assert (= (and b!1630768 c!265499) b!1630769))

(assert (= (and b!1630768 (not c!265499)) b!1630777))

(declare-fun m!1963631 () Bool)

(assert (=> b!1630779 m!1963631))

(declare-fun m!1963633 () Bool)

(assert (=> b!1630779 m!1963633))

(declare-fun m!1963635 () Bool)

(assert (=> b!1630779 m!1963635))

(assert (=> b!1630779 m!1963635))

(declare-fun m!1963637 () Bool)

(assert (=> b!1630779 m!1963637))

(declare-fun m!1963639 () Bool)

(assert (=> b!1630775 m!1963639))

(assert (=> b!1630775 m!1963639))

(declare-fun m!1963641 () Bool)

(assert (=> b!1630775 m!1963641))

(assert (=> b!1630774 m!1963635))

(assert (=> b!1630774 m!1963637))

(assert (=> b!1630774 m!1963639))

(assert (=> b!1630774 m!1963639))

(assert (=> b!1630774 m!1963641))

(assert (=> b!1630774 m!1963637))

(declare-fun m!1963643 () Bool)

(assert (=> b!1630774 m!1963643))

(assert (=> b!1630774 m!1963635))

(declare-fun m!1963645 () Bool)

(assert (=> b!1630780 m!1963645))

(assert (=> b!1630780 m!1962197))

(assert (=> b!1630780 m!1963637))

(declare-fun m!1963647 () Bool)

(assert (=> b!1630780 m!1963647))

(assert (=> b!1630780 m!1963635))

(assert (=> b!1630780 m!1963637))

(assert (=> b!1630780 m!1962119))

(declare-fun m!1963649 () Bool)

(assert (=> b!1630780 m!1963649))

(assert (=> b!1630780 m!1962197))

(declare-fun m!1963651 () Bool)

(assert (=> b!1630780 m!1963651))

(assert (=> b!1630780 m!1962171))

(declare-fun m!1963653 () Bool)

(assert (=> b!1630780 m!1963653))

(declare-fun m!1963655 () Bool)

(assert (=> b!1630780 m!1963655))

(assert (=> b!1630780 m!1963635))

(declare-fun m!1963657 () Bool)

(assert (=> b!1630780 m!1963657))

(declare-fun m!1963659 () Bool)

(assert (=> b!1630780 m!1963659))

(declare-fun m!1963661 () Bool)

(assert (=> b!1630780 m!1963661))

(declare-fun m!1963663 () Bool)

(assert (=> b!1630780 m!1963663))

(assert (=> b!1630780 m!1963653))

(declare-fun m!1963665 () Bool)

(assert (=> b!1630780 m!1963665))

(assert (=> b!1630780 m!1962171))

(assert (=> b!1630780 m!1963651))

(declare-fun m!1963667 () Bool)

(assert (=> b!1630780 m!1963667))

(declare-fun m!1963669 () Bool)

(assert (=> b!1630780 m!1963669))

(assert (=> b!1630780 m!1963655))

(declare-fun m!1963671 () Bool)

(assert (=> b!1630780 m!1963671))

(assert (=> b!1630780 m!1963653))

(declare-fun m!1963673 () Bool)

(assert (=> b!1630780 m!1963673))

(assert (=> b!1630772 m!1963635))

(assert (=> b!1630772 m!1963637))

(assert (=> b!1630772 m!1962171))

(assert (=> b!1630772 m!1963653))

(assert (=> b!1630772 m!1963635))

(declare-fun m!1963675 () Bool)

(assert (=> b!1630772 m!1963675))

(declare-fun m!1963677 () Bool)

(assert (=> b!1630772 m!1963677))

(assert (=> b!1630772 m!1962171))

(declare-fun m!1963679 () Bool)

(assert (=> b!1630768 m!1963679))

(declare-fun m!1963681 () Bool)

(assert (=> b!1630768 m!1963681))

(declare-fun m!1963683 () Bool)

(assert (=> d!491334 m!1963683))

(declare-fun m!1963685 () Bool)

(assert (=> d!491334 m!1963685))

(declare-fun m!1963687 () Bool)

(assert (=> d!491334 m!1963687))

(assert (=> d!491334 m!1963639))

(declare-fun m!1963689 () Bool)

(assert (=> d!491334 m!1963689))

(assert (=> d!491334 m!1963639))

(declare-fun m!1963691 () Bool)

(assert (=> d!491334 m!1963691))

(declare-fun m!1963693 () Bool)

(assert (=> d!491334 m!1963693))

(declare-fun m!1963695 () Bool)

(assert (=> d!491334 m!1963695))

(assert (=> d!491334 m!1963653))

(assert (=> d!491334 m!1963653))

(declare-fun m!1963697 () Bool)

(assert (=> d!491334 m!1963697))

(declare-fun m!1963699 () Bool)

(assert (=> d!491334 m!1963699))

(assert (=> d!491334 m!1963635))

(declare-fun m!1963701 () Bool)

(assert (=> d!491334 m!1963701))

(declare-fun m!1963703 () Bool)

(assert (=> d!491334 m!1963703))

(declare-fun m!1963705 () Bool)

(assert (=> d!491334 m!1963705))

(declare-fun m!1963707 () Bool)

(assert (=> d!491334 m!1963707))

(assert (=> d!491334 m!1963635))

(declare-fun m!1963709 () Bool)

(assert (=> d!491334 m!1963709))

(declare-fun m!1963711 () Bool)

(assert (=> d!491334 m!1963711))

(assert (=> d!491334 m!1963637))

(declare-fun m!1963713 () Bool)

(assert (=> d!491334 m!1963713))

(assert (=> d!491334 m!1963653))

(declare-fun m!1963715 () Bool)

(assert (=> d!491334 m!1963715))

(assert (=> d!491334 m!1962171))

(assert (=> d!491334 m!1962171))

(declare-fun m!1963717 () Bool)

(assert (=> d!491334 m!1963717))

(assert (=> d!491334 m!1963635))

(assert (=> d!491334 m!1963637))

(assert (=> d!491334 m!1963635))

(declare-fun m!1963719 () Bool)

(assert (=> d!491334 m!1963719))

(declare-fun m!1963721 () Bool)

(assert (=> d!491334 m!1963721))

(declare-fun m!1963723 () Bool)

(assert (=> d!491334 m!1963723))

(assert (=> d!491334 m!1963711))

(declare-fun m!1963725 () Bool)

(assert (=> d!491334 m!1963725))

(declare-fun m!1963727 () Bool)

(assert (=> d!491334 m!1963727))

(assert (=> d!491334 m!1962197))

(declare-fun m!1963729 () Bool)

(assert (=> d!491334 m!1963729))

(declare-fun m!1963731 () Bool)

(assert (=> d!491334 m!1963731))

(assert (=> d!491334 m!1963653))

(assert (=> d!491334 m!1963729))

(assert (=> d!491334 m!1962197))

(assert (=> d!491334 m!1963653))

(declare-fun m!1963733 () Bool)

(assert (=> d!491334 m!1963733))

(assert (=> d!491334 m!1962233))

(assert (=> d!491334 m!1962171))

(assert (=> d!491334 m!1963653))

(assert (=> d!491334 m!1963635))

(declare-fun m!1963735 () Bool)

(assert (=> d!491334 m!1963735))

(assert (=> d!491334 m!1963707))

(declare-fun m!1963737 () Bool)

(assert (=> d!491334 m!1963737))

(assert (=> d!491334 m!1963683))

(assert (=> d!491334 m!1963653))

(declare-fun m!1963739 () Bool)

(assert (=> d!491334 m!1963739))

(assert (=> d!491334 m!1963719))

(declare-fun m!1963741 () Bool)

(assert (=> d!491334 m!1963741))

(declare-fun m!1963743 () Bool)

(assert (=> d!491334 m!1963743))

(declare-fun m!1963745 () Bool)

(assert (=> b!1630767 m!1963745))

(assert (=> b!1630767 m!1962171))

(assert (=> b!1630767 m!1962171))

(assert (=> b!1630767 m!1963653))

(assert (=> b!1630767 m!1963653))

(declare-fun m!1963747 () Bool)

(assert (=> b!1630767 m!1963747))

(declare-fun m!1963749 () Bool)

(assert (=> b!1630769 m!1963749))

(assert (=> b!1630063 d!491334))

(declare-fun d!491408 () Bool)

(declare-fun isEmpty!10927 (Option!3330) Bool)

(assert (=> d!491408 (= (isDefined!2697 (maxPrefixZipperSequence!675 thiss!17113 rules!1846 (seqFromList!2052 (originalCharacters!3965 (h!23287 tokens!457))))) (not (isEmpty!10927 (maxPrefixZipperSequence!675 thiss!17113 rules!1846 (seqFromList!2052 (originalCharacters!3965 (h!23287 tokens!457)))))))))

(declare-fun bs!395145 () Bool)

(assert (= bs!395145 d!491408))

(assert (=> bs!395145 m!1962241))

(declare-fun m!1963751 () Bool)

(assert (=> bs!395145 m!1963751))

(assert (=> b!1630065 d!491408))

(declare-fun b!1630820 () Bool)

(declare-fun e!1045839 () Option!3330)

(declare-fun lt!591814 () Option!3330)

(declare-fun lt!591817 () Option!3330)

(assert (=> b!1630820 (= e!1045839 (ite (and ((_ is None!3329) lt!591814) ((_ is None!3329) lt!591817)) None!3329 (ite ((_ is None!3329) lt!591817) lt!591814 (ite ((_ is None!3329) lt!591814) lt!591817 (ite (>= (size!14300 (_1!10143 (v!24382 lt!591814))) (size!14300 (_1!10143 (v!24382 lt!591817)))) lt!591814 lt!591817)))))))

(declare-fun call!105520 () Option!3330)

(assert (=> b!1630820 (= lt!591814 call!105520)))

(assert (=> b!1630820 (= lt!591817 (maxPrefixZipperSequence!675 thiss!17113 (t!149412 rules!1846) (seqFromList!2052 (originalCharacters!3965 (h!23287 tokens!457)))))))

(declare-fun d!491410 () Bool)

(declare-fun e!1045842 () Bool)

(assert (=> d!491410 e!1045842))

(declare-fun res!729497 () Bool)

(assert (=> d!491410 (=> (not res!729497) (not e!1045842))))

(declare-fun lt!591812 () Option!3330)

(declare-fun maxPrefixZipper!310 (LexerInterface!2780 List!17955 List!17954) Option!3329)

(assert (=> d!491410 (= res!729497 (= (isDefined!2697 lt!591812) (isDefined!2696 (maxPrefixZipper!310 thiss!17113 rules!1846 (list!7031 (seqFromList!2052 (originalCharacters!3965 (h!23287 tokens!457))))))))))

(assert (=> d!491410 (= lt!591812 e!1045839)))

(declare-fun c!265507 () Bool)

(assert (=> d!491410 (= c!265507 (and ((_ is Cons!17885) rules!1846) ((_ is Nil!17885) (t!149412 rules!1846))))))

(declare-fun lt!591813 () Unit!29055)

(declare-fun lt!591816 () Unit!29055)

(assert (=> d!491410 (= lt!591813 lt!591816)))

(declare-fun lt!591811 () List!17954)

(declare-fun lt!591815 () List!17954)

(assert (=> d!491410 (isPrefix!1411 lt!591811 lt!591815)))

(assert (=> d!491410 (= lt!591816 (lemmaIsPrefixRefl!964 lt!591811 lt!591815))))

(assert (=> d!491410 (= lt!591815 (list!7031 (seqFromList!2052 (originalCharacters!3965 (h!23287 tokens!457)))))))

(assert (=> d!491410 (= lt!591811 (list!7031 (seqFromList!2052 (originalCharacters!3965 (h!23287 tokens!457)))))))

(assert (=> d!491410 (rulesValidInductive!976 thiss!17113 rules!1846)))

(assert (=> d!491410 (= (maxPrefixZipperSequence!675 thiss!17113 rules!1846 (seqFromList!2052 (originalCharacters!3965 (h!23287 tokens!457)))) lt!591812)))

(declare-fun bm!105515 () Bool)

(declare-fun maxPrefixOneRuleZipperSequence!320 (LexerInterface!2780 Rule!6102 BalanceConc!11844) Option!3330)

(assert (=> bm!105515 (= call!105520 (maxPrefixOneRuleZipperSequence!320 thiss!17113 (h!23286 rules!1846) (seqFromList!2052 (originalCharacters!3965 (h!23287 tokens!457)))))))

(declare-fun b!1630821 () Bool)

(declare-fun e!1045840 () Bool)

(declare-fun e!1045841 () Bool)

(assert (=> b!1630821 (= e!1045840 e!1045841)))

(declare-fun res!729499 () Bool)

(assert (=> b!1630821 (=> (not res!729499) (not e!1045841))))

(declare-fun get!5167 (Option!3330) tuple2!17482)

(assert (=> b!1630821 (= res!729499 (= (_1!10143 (get!5167 lt!591812)) (_1!10142 (get!5163 (maxPrefix!1344 thiss!17113 rules!1846 (list!7031 (seqFromList!2052 (originalCharacters!3965 (h!23287 tokens!457)))))))))))

(declare-fun b!1630822 () Bool)

(assert (=> b!1630822 (= e!1045842 e!1045840)))

(declare-fun res!729500 () Bool)

(assert (=> b!1630822 (=> res!729500 e!1045840)))

(assert (=> b!1630822 (= res!729500 (not (isDefined!2697 lt!591812)))))

(declare-fun b!1630823 () Bool)

(declare-fun e!1045843 () Bool)

(declare-fun e!1045844 () Bool)

(assert (=> b!1630823 (= e!1045843 e!1045844)))

(declare-fun res!729502 () Bool)

(assert (=> b!1630823 (=> (not res!729502) (not e!1045844))))

(assert (=> b!1630823 (= res!729502 (= (_1!10143 (get!5167 lt!591812)) (_1!10142 (get!5163 (maxPrefixZipper!310 thiss!17113 rules!1846 (list!7031 (seqFromList!2052 (originalCharacters!3965 (h!23287 tokens!457)))))))))))

(declare-fun b!1630824 () Bool)

(assert (=> b!1630824 (= e!1045844 (= (list!7031 (_2!10143 (get!5167 lt!591812))) (_2!10142 (get!5163 (maxPrefixZipper!310 thiss!17113 rules!1846 (list!7031 (seqFromList!2052 (originalCharacters!3965 (h!23287 tokens!457)))))))))))

(declare-fun b!1630825 () Bool)

(assert (=> b!1630825 (= e!1045839 call!105520)))

(declare-fun b!1630826 () Bool)

(declare-fun res!729501 () Bool)

(assert (=> b!1630826 (=> (not res!729501) (not e!1045842))))

(assert (=> b!1630826 (= res!729501 e!1045843)))

(declare-fun res!729498 () Bool)

(assert (=> b!1630826 (=> res!729498 e!1045843)))

(assert (=> b!1630826 (= res!729498 (not (isDefined!2697 lt!591812)))))

(declare-fun b!1630827 () Bool)

(assert (=> b!1630827 (= e!1045841 (= (list!7031 (_2!10143 (get!5167 lt!591812))) (_2!10142 (get!5163 (maxPrefix!1344 thiss!17113 rules!1846 (list!7031 (seqFromList!2052 (originalCharacters!3965 (h!23287 tokens!457)))))))))))

(assert (= (and d!491410 c!265507) b!1630825))

(assert (= (and d!491410 (not c!265507)) b!1630820))

(assert (= (or b!1630825 b!1630820) bm!105515))

(assert (= (and d!491410 res!729497) b!1630826))

(assert (= (and b!1630826 (not res!729498)) b!1630823))

(assert (= (and b!1630823 res!729502) b!1630824))

(assert (= (and b!1630826 res!729501) b!1630822))

(assert (= (and b!1630822 (not res!729500)) b!1630821))

(assert (= (and b!1630821 res!729499) b!1630827))

(declare-fun m!1963753 () Bool)

(assert (=> b!1630823 m!1963753))

(assert (=> b!1630823 m!1962239))

(declare-fun m!1963755 () Bool)

(assert (=> b!1630823 m!1963755))

(assert (=> b!1630823 m!1963755))

(declare-fun m!1963757 () Bool)

(assert (=> b!1630823 m!1963757))

(assert (=> b!1630823 m!1963757))

(declare-fun m!1963759 () Bool)

(assert (=> b!1630823 m!1963759))

(declare-fun m!1963761 () Bool)

(assert (=> b!1630827 m!1963761))

(declare-fun m!1963763 () Bool)

(assert (=> b!1630827 m!1963763))

(assert (=> b!1630827 m!1963753))

(declare-fun m!1963765 () Bool)

(assert (=> b!1630827 m!1963765))

(assert (=> b!1630827 m!1962239))

(assert (=> b!1630827 m!1963755))

(assert (=> b!1630827 m!1963755))

(assert (=> b!1630827 m!1963761))

(assert (=> d!491410 m!1963755))

(assert (=> d!491410 m!1963757))

(declare-fun m!1963767 () Bool)

(assert (=> d!491410 m!1963767))

(assert (=> d!491410 m!1962239))

(assert (=> d!491410 m!1963755))

(assert (=> d!491410 m!1962113))

(declare-fun m!1963769 () Bool)

(assert (=> d!491410 m!1963769))

(assert (=> d!491410 m!1963757))

(declare-fun m!1963771 () Bool)

(assert (=> d!491410 m!1963771))

(declare-fun m!1963773 () Bool)

(assert (=> d!491410 m!1963773))

(assert (=> b!1630824 m!1963757))

(assert (=> b!1630824 m!1963759))

(assert (=> b!1630824 m!1963765))

(assert (=> b!1630824 m!1962239))

(assert (=> b!1630824 m!1963755))

(assert (=> b!1630824 m!1963755))

(assert (=> b!1630824 m!1963757))

(assert (=> b!1630824 m!1963753))

(assert (=> bm!105515 m!1962239))

(declare-fun m!1963775 () Bool)

(assert (=> bm!105515 m!1963775))

(assert (=> b!1630820 m!1962239))

(declare-fun m!1963777 () Bool)

(assert (=> b!1630820 m!1963777))

(assert (=> b!1630826 m!1963767))

(assert (=> b!1630822 m!1963767))

(assert (=> b!1630821 m!1963753))

(assert (=> b!1630821 m!1962239))

(assert (=> b!1630821 m!1963755))

(assert (=> b!1630821 m!1963755))

(assert (=> b!1630821 m!1963761))

(assert (=> b!1630821 m!1963761))

(assert (=> b!1630821 m!1963763))

(assert (=> b!1630065 d!491410))

(declare-fun d!491412 () Bool)

(assert (=> d!491412 (= (seqFromList!2052 (originalCharacters!3965 (h!23287 tokens!457))) (fromListB!903 (originalCharacters!3965 (h!23287 tokens!457))))))

(declare-fun bs!395146 () Bool)

(assert (= bs!395146 d!491412))

(declare-fun m!1963779 () Bool)

(assert (=> bs!395146 m!1963779))

(assert (=> b!1630065 d!491412))

(declare-fun d!491414 () Bool)

(declare-fun lt!591820 () C!9132)

(assert (=> d!491414 (= lt!591820 (head!3467 (list!7031 lt!590746)))))

(declare-fun head!3471 (Conc!5950) C!9132)

(assert (=> d!491414 (= lt!591820 (head!3471 (c!265367 lt!590746)))))

(assert (=> d!491414 (not (isEmpty!10924 lt!590746))))

(assert (=> d!491414 (= (head!3466 lt!590746) lt!591820)))

(declare-fun bs!395147 () Bool)

(assert (= bs!395147 d!491414))

(assert (=> bs!395147 m!1962169))

(assert (=> bs!395147 m!1962169))

(declare-fun m!1963781 () Bool)

(assert (=> bs!395147 m!1963781))

(declare-fun m!1963783 () Bool)

(assert (=> bs!395147 m!1963783))

(declare-fun m!1963785 () Bool)

(assert (=> bs!395147 m!1963785))

(assert (=> b!1630065 d!491414))

(declare-fun d!491416 () Bool)

(declare-fun c!265513 () Bool)

(assert (=> d!491416 (= c!265513 ((_ is IntegerValue!9723) (value!99476 (h!23287 tokens!457))))))

(declare-fun e!1045851 () Bool)

(assert (=> d!491416 (= (inv!21 (value!99476 (h!23287 tokens!457))) e!1045851)))

(declare-fun b!1630838 () Bool)

(declare-fun res!729505 () Bool)

(declare-fun e!1045853 () Bool)

(assert (=> b!1630838 (=> res!729505 e!1045853)))

(assert (=> b!1630838 (= res!729505 (not ((_ is IntegerValue!9725) (value!99476 (h!23287 tokens!457)))))))

(declare-fun e!1045852 () Bool)

(assert (=> b!1630838 (= e!1045852 e!1045853)))

(declare-fun b!1630839 () Bool)

(assert (=> b!1630839 (= e!1045851 e!1045852)))

(declare-fun c!265512 () Bool)

(assert (=> b!1630839 (= c!265512 ((_ is IntegerValue!9724) (value!99476 (h!23287 tokens!457))))))

(declare-fun b!1630840 () Bool)

(declare-fun inv!17 (TokenValue!3241) Bool)

(assert (=> b!1630840 (= e!1045852 (inv!17 (value!99476 (h!23287 tokens!457))))))

(declare-fun b!1630841 () Bool)

(declare-fun inv!15 (TokenValue!3241) Bool)

(assert (=> b!1630841 (= e!1045853 (inv!15 (value!99476 (h!23287 tokens!457))))))

(declare-fun b!1630842 () Bool)

(declare-fun inv!16 (TokenValue!3241) Bool)

(assert (=> b!1630842 (= e!1045851 (inv!16 (value!99476 (h!23287 tokens!457))))))

(assert (= (and d!491416 c!265513) b!1630842))

(assert (= (and d!491416 (not c!265513)) b!1630839))

(assert (= (and b!1630839 c!265512) b!1630840))

(assert (= (and b!1630839 (not c!265512)) b!1630838))

(assert (= (and b!1630838 (not res!729505)) b!1630841))

(declare-fun m!1963787 () Bool)

(assert (=> b!1630840 m!1963787))

(declare-fun m!1963789 () Bool)

(assert (=> b!1630841 m!1963789))

(declare-fun m!1963791 () Bool)

(assert (=> b!1630842 m!1963791))

(assert (=> b!1630066 d!491416))

(declare-fun d!491418 () Bool)

(assert (=> d!491418 (= (head!3467 lt!590763) (h!23285 lt!590763))))

(assert (=> b!1630068 d!491418))

(declare-fun d!491420 () Bool)

(assert (=> d!491420 (= (head!3467 (originalCharacters!3965 (h!23287 (t!149413 tokens!457)))) (h!23285 (originalCharacters!3965 (h!23287 (t!149413 tokens!457)))))))

(assert (=> b!1630067 d!491420))

(declare-fun b!1630853 () Bool)

(declare-fun b_free!44007 () Bool)

(declare-fun b_next!44711 () Bool)

(assert (=> b!1630853 (= b_free!44007 (not b_next!44711))))

(declare-fun tp!473444 () Bool)

(declare-fun b_and!115653 () Bool)

(assert (=> b!1630853 (= tp!473444 b_and!115653)))

(declare-fun b_free!44009 () Bool)

(declare-fun b_next!44713 () Bool)

(assert (=> b!1630853 (= b_free!44009 (not b_next!44713))))

(declare-fun tb!93647 () Bool)

(declare-fun t!149449 () Bool)

(assert (=> (and b!1630853 (= (toChars!4441 (transformation!3151 (h!23286 (t!149412 rules!1846)))) (toChars!4441 (transformation!3151 (rule!4983 (h!23287 tokens!457))))) t!149449) tb!93647))

(declare-fun result!112928 () Bool)

(assert (= result!112928 result!112896))

(assert (=> d!491184 t!149449))

(assert (=> b!1630408 t!149449))

(declare-fun t!149451 () Bool)

(declare-fun tb!93649 () Bool)

(assert (=> (and b!1630853 (= (toChars!4441 (transformation!3151 (h!23286 (t!149412 rules!1846)))) (toChars!4441 (transformation!3151 (rule!4983 (h!23287 (t!149413 tokens!457)))))) t!149451) tb!93649))

(declare-fun result!112930 () Bool)

(assert (= result!112930 result!112906))

(assert (=> d!491312 t!149451))

(declare-fun tp!473442 () Bool)

(declare-fun b_and!115655 () Bool)

(assert (=> b!1630853 (= tp!473442 (and (=> t!149449 result!112928) (=> t!149451 result!112930) b_and!115655))))

(declare-fun e!1045864 () Bool)

(assert (=> b!1630853 (= e!1045864 (and tp!473444 tp!473442))))

(declare-fun b!1630852 () Bool)

(declare-fun e!1045862 () Bool)

(declare-fun tp!473443 () Bool)

(assert (=> b!1630852 (= e!1045862 (and tp!473443 (inv!23256 (tag!3431 (h!23286 (t!149412 rules!1846)))) (inv!23259 (transformation!3151 (h!23286 (t!149412 rules!1846)))) e!1045864))))

(declare-fun b!1630851 () Bool)

(declare-fun e!1045863 () Bool)

(declare-fun tp!473441 () Bool)

(assert (=> b!1630851 (= e!1045863 (and e!1045862 tp!473441))))

(assert (=> b!1630060 (= tp!473370 e!1045863)))

(assert (= b!1630852 b!1630853))

(assert (= b!1630851 b!1630852))

(assert (= (and b!1630060 ((_ is Cons!17885) (t!149412 rules!1846))) b!1630851))

(declare-fun m!1963793 () Bool)

(assert (=> b!1630852 m!1963793))

(declare-fun m!1963795 () Bool)

(assert (=> b!1630852 m!1963795))

(declare-fun b!1630866 () Bool)

(declare-fun e!1045868 () Bool)

(declare-fun tp!473458 () Bool)

(assert (=> b!1630866 (= e!1045868 tp!473458)))

(assert (=> b!1630076 (= tp!473368 e!1045868)))

(declare-fun b!1630867 () Bool)

(declare-fun tp!473455 () Bool)

(declare-fun tp!473459 () Bool)

(assert (=> b!1630867 (= e!1045868 (and tp!473455 tp!473459))))

(declare-fun b!1630865 () Bool)

(declare-fun tp!473457 () Bool)

(declare-fun tp!473456 () Bool)

(assert (=> b!1630865 (= e!1045868 (and tp!473457 tp!473456))))

(declare-fun b!1630864 () Bool)

(declare-fun tp_is_empty!7289 () Bool)

(assert (=> b!1630864 (= e!1045868 tp_is_empty!7289)))

(assert (= (and b!1630076 ((_ is ElementMatch!4479) (regex!3151 (h!23286 rules!1846)))) b!1630864))

(assert (= (and b!1630076 ((_ is Concat!7721) (regex!3151 (h!23286 rules!1846)))) b!1630865))

(assert (= (and b!1630076 ((_ is Star!4479) (regex!3151 (h!23286 rules!1846)))) b!1630866))

(assert (= (and b!1630076 ((_ is Union!4479) (regex!3151 (h!23286 rules!1846)))) b!1630867))

(declare-fun b!1630870 () Bool)

(declare-fun e!1045869 () Bool)

(declare-fun tp!473463 () Bool)

(assert (=> b!1630870 (= e!1045869 tp!473463)))

(assert (=> b!1630081 (= tp!473369 e!1045869)))

(declare-fun b!1630871 () Bool)

(declare-fun tp!473460 () Bool)

(declare-fun tp!473464 () Bool)

(assert (=> b!1630871 (= e!1045869 (and tp!473460 tp!473464))))

(declare-fun b!1630869 () Bool)

(declare-fun tp!473462 () Bool)

(declare-fun tp!473461 () Bool)

(assert (=> b!1630869 (= e!1045869 (and tp!473462 tp!473461))))

(declare-fun b!1630868 () Bool)

(assert (=> b!1630868 (= e!1045869 tp_is_empty!7289)))

(assert (= (and b!1630081 ((_ is ElementMatch!4479) (regex!3151 (rule!4983 (h!23287 tokens!457))))) b!1630868))

(assert (= (and b!1630081 ((_ is Concat!7721) (regex!3151 (rule!4983 (h!23287 tokens!457))))) b!1630869))

(assert (= (and b!1630081 ((_ is Star!4479) (regex!3151 (rule!4983 (h!23287 tokens!457))))) b!1630870))

(assert (= (and b!1630081 ((_ is Union!4479) (regex!3151 (rule!4983 (h!23287 tokens!457))))) b!1630871))

(declare-fun b!1630885 () Bool)

(declare-fun b_free!44011 () Bool)

(declare-fun b_next!44715 () Bool)

(assert (=> b!1630885 (= b_free!44011 (not b_next!44715))))

(declare-fun tp!473479 () Bool)

(declare-fun b_and!115657 () Bool)

(assert (=> b!1630885 (= tp!473479 b_and!115657)))

(declare-fun b_free!44013 () Bool)

(declare-fun b_next!44717 () Bool)

(assert (=> b!1630885 (= b_free!44013 (not b_next!44717))))

(declare-fun t!149453 () Bool)

(declare-fun tb!93651 () Bool)

(assert (=> (and b!1630885 (= (toChars!4441 (transformation!3151 (rule!4983 (h!23287 (t!149413 tokens!457))))) (toChars!4441 (transformation!3151 (rule!4983 (h!23287 tokens!457))))) t!149453) tb!93651))

(declare-fun result!112936 () Bool)

(assert (= result!112936 result!112896))

(assert (=> d!491184 t!149453))

(assert (=> b!1630408 t!149453))

(declare-fun t!149455 () Bool)

(declare-fun tb!93653 () Bool)

(assert (=> (and b!1630885 (= (toChars!4441 (transformation!3151 (rule!4983 (h!23287 (t!149413 tokens!457))))) (toChars!4441 (transformation!3151 (rule!4983 (h!23287 (t!149413 tokens!457)))))) t!149455) tb!93653))

(declare-fun result!112938 () Bool)

(assert (= result!112938 result!112906))

(assert (=> d!491312 t!149455))

(declare-fun tp!473476 () Bool)

(declare-fun b_and!115659 () Bool)

(assert (=> b!1630885 (= tp!473476 (and (=> t!149453 result!112936) (=> t!149455 result!112938) b_and!115659))))

(declare-fun b!1630884 () Bool)

(declare-fun tp!473475 () Bool)

(declare-fun e!1045883 () Bool)

(declare-fun e!1045886 () Bool)

(assert (=> b!1630884 (= e!1045886 (and tp!473475 (inv!23256 (tag!3431 (rule!4983 (h!23287 (t!149413 tokens!457))))) (inv!23259 (transformation!3151 (rule!4983 (h!23287 (t!149413 tokens!457))))) e!1045883))))

(declare-fun e!1045884 () Bool)

(declare-fun b!1630883 () Bool)

(declare-fun tp!473477 () Bool)

(assert (=> b!1630883 (= e!1045884 (and (inv!21 (value!99476 (h!23287 (t!149413 tokens!457)))) e!1045886 tp!473477))))

(declare-fun tp!473478 () Bool)

(declare-fun b!1630882 () Bool)

(declare-fun e!1045887 () Bool)

(assert (=> b!1630882 (= e!1045887 (and (inv!23260 (h!23287 (t!149413 tokens!457))) e!1045884 tp!473478))))

(assert (=> b!1630885 (= e!1045883 (and tp!473479 tp!473476))))

(assert (=> b!1630077 (= tp!473373 e!1045887)))

(assert (= b!1630884 b!1630885))

(assert (= b!1630883 b!1630884))

(assert (= b!1630882 b!1630883))

(assert (= (and b!1630077 ((_ is Cons!17886) (t!149413 tokens!457))) b!1630882))

(declare-fun m!1963797 () Bool)

(assert (=> b!1630884 m!1963797))

(declare-fun m!1963799 () Bool)

(assert (=> b!1630884 m!1963799))

(declare-fun m!1963801 () Bool)

(assert (=> b!1630883 m!1963801))

(declare-fun m!1963803 () Bool)

(assert (=> b!1630882 m!1963803))

(declare-fun b!1630890 () Bool)

(declare-fun e!1045890 () Bool)

(declare-fun tp!473482 () Bool)

(assert (=> b!1630890 (= e!1045890 (and tp_is_empty!7289 tp!473482))))

(assert (=> b!1630066 (= tp!473366 e!1045890)))

(assert (= (and b!1630066 ((_ is Cons!17884) (originalCharacters!3965 (h!23287 tokens!457)))) b!1630890))

(declare-fun b_lambda!51335 () Bool)

(assert (= b_lambda!51325 (or (and b!1630082 b_free!43993 (= (toChars!4441 (transformation!3151 (rule!4983 (h!23287 tokens!457)))) (toChars!4441 (transformation!3151 (rule!4983 (h!23287 (t!149413 tokens!457))))))) (and b!1630055 b_free!43997 (= (toChars!4441 (transformation!3151 (h!23286 rules!1846))) (toChars!4441 (transformation!3151 (rule!4983 (h!23287 (t!149413 tokens!457))))))) (and b!1630853 b_free!44009 (= (toChars!4441 (transformation!3151 (h!23286 (t!149412 rules!1846)))) (toChars!4441 (transformation!3151 (rule!4983 (h!23287 (t!149413 tokens!457))))))) (and b!1630885 b_free!44013) b_lambda!51335)))

(declare-fun b_lambda!51337 () Bool)

(assert (= b_lambda!51321 (or (and b!1630082 b_free!43993) (and b!1630055 b_free!43997 (= (toChars!4441 (transformation!3151 (h!23286 rules!1846))) (toChars!4441 (transformation!3151 (rule!4983 (h!23287 tokens!457)))))) (and b!1630853 b_free!44009 (= (toChars!4441 (transformation!3151 (h!23286 (t!149412 rules!1846)))) (toChars!4441 (transformation!3151 (rule!4983 (h!23287 tokens!457)))))) (and b!1630885 b_free!44013 (= (toChars!4441 (transformation!3151 (rule!4983 (h!23287 (t!149413 tokens!457))))) (toChars!4441 (transformation!3151 (rule!4983 (h!23287 tokens!457)))))) b_lambda!51337)))

(declare-fun b_lambda!51339 () Bool)

(assert (= b_lambda!51319 (or (and b!1630082 b_free!43993) (and b!1630055 b_free!43997 (= (toChars!4441 (transformation!3151 (h!23286 rules!1846))) (toChars!4441 (transformation!3151 (rule!4983 (h!23287 tokens!457)))))) (and b!1630853 b_free!44009 (= (toChars!4441 (transformation!3151 (h!23286 (t!149412 rules!1846)))) (toChars!4441 (transformation!3151 (rule!4983 (h!23287 tokens!457)))))) (and b!1630885 b_free!44013 (= (toChars!4441 (transformation!3151 (rule!4983 (h!23287 (t!149413 tokens!457))))) (toChars!4441 (transformation!3151 (rule!4983 (h!23287 tokens!457)))))) b_lambda!51339)))

(check-sat (not b!1630551) (not d!491186) (not d!491240) (not b!1630310) (not d!491220) (not b_next!44701) (not b!1630280) (not bm!105503) (not d!491412) (not b!1630820) (not d!491178) (not d!491270) (not b!1630821) (not b!1630883) (not b!1630403) (not b!1630866) (not b!1630261) (not d!491330) (not b!1630466) (not b!1630564) (not b!1630569) (not d!491224) (not b!1630772) (not d!491254) (not b!1630267) (not b!1630298) (not b!1630274) (not bm!105504) (not d!491194) (not b!1630304) (not b!1630823) (not d!491230) (not b!1630211) b_and!115653 (not d!491244) (not d!491242) b_and!115639 (not b!1630454) (not b!1630214) (not b!1630869) (not b_next!44713) (not d!491300) (not b!1630395) (not b!1630277) (not b!1630344) (not tb!93627) (not d!491234) (not b!1630301) (not b!1630768) (not b!1630272) (not b!1630852) (not b!1630414) (not d!491408) (not b!1630205) (not d!491410) (not b!1630187) (not d!491272) b_and!115657 (not b!1630409) (not d!491304) (not b!1630198) (not b!1630546) b_and!115617 (not b!1630262) (not d!491218) (not d!491250) (not b!1630870) (not b!1630526) (not d!491202) (not d!491192) (not b!1630579) (not d!491314) (not b!1630774) (not d!491200) (not d!491322) (not b!1630575) (not d!491414) (not b!1630851) (not d!491268) (not b!1630565) (not b!1630213) (not b!1630268) (not b!1630527) (not b!1630275) (not d!491238) (not b!1630264) (not b!1630871) (not b!1630343) (not b!1630568) (not d!491182) (not b!1630465) (not b!1630266) (not b!1630415) (not b!1630840) (not b!1630545) (not b!1630552) (not d!491212) (not b!1630563) (not b!1630282) (not b!1630775) (not b!1630332) (not b!1630283) (not b_next!44711) (not d!491190) (not b!1630561) (not b_lambda!51337) b_and!115637 (not d!491328) (not b!1630826) (not b!1630842) (not d!491298) (not b_next!44715) (not d!491326) (not b!1630882) (not b!1630320) (not d!491316) (not d!491180) (not d!491312) (not b!1630827) (not b!1630779) (not b!1630270) (not b!1630822) (not b_next!44717) (not b!1630210) (not b!1630459) (not tb!93635) (not d!491184) (not b!1630460) (not d!491148) (not b_next!44695) (not d!491258) (not b!1630841) (not b!1630884) (not b!1630583) (not bm!105507) (not b!1630467) (not b!1630566) (not d!491262) (not b!1630271) (not b!1630345) (not b!1630279) (not b!1630547) (not b!1630767) (not b!1630273) (not b!1630297) (not b!1630263) (not b!1630559) (not d!491222) (not b!1630228) (not b!1630346) (not b!1630769) (not d!491266) (not bm!105515) (not b_next!44699) (not b_lambda!51335) (not b!1630311) (not b!1630199) (not b!1630582) (not d!491216) (not d!491324) (not b!1630867) (not b!1630824) (not b!1630408) (not b!1630562) (not b!1630865) (not b!1630396) (not d!491310) (not d!491146) (not d!491246) (not d!491334) b_and!115659 (not d!491228) (not b!1630530) (not d!491196) (not b!1630287) (not b!1630333) (not b!1630581) (not d!491318) (not d!491188) (not d!491232) (not d!491308) (not b!1630296) (not b!1630185) tp_is_empty!7289 (not b_lambda!51339) (not d!491144) (not bm!105511) (not b!1630890) (not b!1630303) b_and!115613 (not d!491236) (not b_next!44697) (not b!1630300) (not b!1630397) (not b!1630276) (not b!1630580) (not b!1630780) (not b!1630184) (not b!1630548) (not b!1630567) (not d!491226) b_and!115655 (not b!1630186) (not b!1630265))
(check-sat (not b_next!44701) b_and!115653 b_and!115639 (not b_next!44713) b_and!115657 b_and!115617 (not b_next!44711) b_and!115637 (not b_next!44715) (not b_next!44717) (not b_next!44695) (not b_next!44699) b_and!115659 b_and!115655 b_and!115613 (not b_next!44697))
