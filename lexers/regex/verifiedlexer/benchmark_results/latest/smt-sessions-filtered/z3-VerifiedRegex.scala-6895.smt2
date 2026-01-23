; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!363352 () Bool)

(assert start!363352)

(declare-fun b!3871389 () Bool)

(declare-fun b_free!104533 () Bool)

(declare-fun b_next!105237 () Bool)

(assert (=> b!3871389 (= b_free!104533 (not b_next!105237))))

(declare-fun tp!1173793 () Bool)

(declare-fun b_and!290187 () Bool)

(assert (=> b!3871389 (= tp!1173793 b_and!290187)))

(declare-fun b_free!104535 () Bool)

(declare-fun b_next!105239 () Bool)

(assert (=> b!3871389 (= b_free!104535 (not b_next!105239))))

(declare-fun tp!1173788 () Bool)

(declare-fun b_and!290189 () Bool)

(assert (=> b!3871389 (= tp!1173788 b_and!290189)))

(declare-fun b!3871415 () Bool)

(declare-fun b_free!104537 () Bool)

(declare-fun b_next!105241 () Bool)

(assert (=> b!3871415 (= b_free!104537 (not b_next!105241))))

(declare-fun tp!1173791 () Bool)

(declare-fun b_and!290191 () Bool)

(assert (=> b!3871415 (= tp!1173791 b_and!290191)))

(declare-fun b_free!104539 () Bool)

(declare-fun b_next!105243 () Bool)

(assert (=> b!3871415 (= b_free!104539 (not b_next!105243))))

(declare-fun tp!1173789 () Bool)

(declare-fun b_and!290193 () Bool)

(assert (=> b!3871415 (= tp!1173789 b_and!290193)))

(declare-fun b!3871407 () Bool)

(declare-fun b_free!104541 () Bool)

(declare-fun b_next!105245 () Bool)

(assert (=> b!3871407 (= b_free!104541 (not b_next!105245))))

(declare-fun tp!1173786 () Bool)

(declare-fun b_and!290195 () Bool)

(assert (=> b!3871407 (= tp!1173786 b_and!290195)))

(declare-fun b_free!104543 () Bool)

(declare-fun b_next!105247 () Bool)

(assert (=> b!3871407 (= b_free!104543 (not b_next!105247))))

(declare-fun tp!1173784 () Bool)

(declare-fun b_and!290197 () Bool)

(assert (=> b!3871407 (= tp!1173784 b_and!290197)))

(declare-fun e!2394573 () Bool)

(assert (=> b!3871389 (= e!2394573 (and tp!1173793 tp!1173788))))

(declare-fun res!1568119 () Bool)

(declare-fun e!2394542 () Bool)

(assert (=> start!363352 (=> (not res!1568119) (not e!2394542))))

(declare-datatypes ((LexerInterface!5967 0))(
  ( (LexerInterfaceExt!5964 (__x!25433 Int)) (Lexer!5965) )
))
(declare-fun thiss!20629 () LexerInterface!5967)

(get-info :version)

(assert (=> start!363352 (= res!1568119 ((_ is Lexer!5965) thiss!20629))))

(assert (=> start!363352 e!2394542))

(declare-fun e!2394552 () Bool)

(assert (=> start!363352 e!2394552))

(assert (=> start!363352 true))

(declare-fun e!2394538 () Bool)

(assert (=> start!363352 e!2394538))

(declare-fun e!2394567 () Bool)

(assert (=> start!363352 e!2394567))

(declare-fun e!2394548 () Bool)

(assert (=> start!363352 e!2394548))

(declare-fun e!2394550 () Bool)

(assert (=> start!363352 e!2394550))

(declare-fun e!2394569 () Bool)

(assert (=> start!363352 e!2394569))

(declare-fun b!3871390 () Bool)

(declare-fun res!1568098 () Bool)

(assert (=> b!3871390 (=> (not res!1568098) (not e!2394542))))

(declare-datatypes ((List!41246 0))(
  ( (Nil!41122) (Cons!41122 (h!46542 (_ BitVec 16)) (t!314505 List!41246)) )
))
(declare-datatypes ((TokenValue!6608 0))(
  ( (FloatLiteralValue!13216 (text!46701 List!41246)) (TokenValueExt!6607 (__x!25434 Int)) (Broken!33040 (value!202381 List!41246)) (Object!6731) (End!6608) (Def!6608) (Underscore!6608) (Match!6608) (Else!6608) (Error!6608) (Case!6608) (If!6608) (Extends!6608) (Abstract!6608) (Class!6608) (Val!6608) (DelimiterValue!13216 (del!6668 List!41246)) (KeywordValue!6614 (value!202382 List!41246)) (CommentValue!13216 (value!202383 List!41246)) (WhitespaceValue!13216 (value!202384 List!41246)) (IndentationValue!6608 (value!202385 List!41246)) (String!46757) (Int32!6608) (Broken!33041 (value!202386 List!41246)) (Boolean!6609) (Unit!58958) (OperatorValue!6611 (op!6668 List!41246)) (IdentifierValue!13216 (value!202387 List!41246)) (IdentifierValue!13217 (value!202388 List!41246)) (WhitespaceValue!13217 (value!202389 List!41246)) (True!13216) (False!13216) (Broken!33042 (value!202390 List!41246)) (Broken!33043 (value!202391 List!41246)) (True!13217) (RightBrace!6608) (RightBracket!6608) (Colon!6608) (Null!6608) (Comma!6608) (LeftBracket!6608) (False!13217) (LeftBrace!6608) (ImaginaryLiteralValue!6608 (text!46702 List!41246)) (StringLiteralValue!19824 (value!202392 List!41246)) (EOFValue!6608 (value!202393 List!41246)) (IdentValue!6608 (value!202394 List!41246)) (DelimiterValue!13217 (value!202395 List!41246)) (DedentValue!6608 (value!202396 List!41246)) (NewLineValue!6608 (value!202397 List!41246)) (IntegerValue!19824 (value!202398 (_ BitVec 32)) (text!46703 List!41246)) (IntegerValue!19825 (value!202399 Int) (text!46704 List!41246)) (Times!6608) (Or!6608) (Equal!6608) (Minus!6608) (Broken!33044 (value!202400 List!41246)) (And!6608) (Div!6608) (LessEqual!6608) (Mod!6608) (Concat!17891) (Not!6608) (Plus!6608) (SpaceValue!6608 (value!202401 List!41246)) (IntegerValue!19826 (value!202402 Int) (text!46705 List!41246)) (StringLiteralValue!19825 (text!46706 List!41246)) (FloatLiteralValue!13217 (text!46707 List!41246)) (BytesLiteralValue!6608 (value!202403 List!41246)) (CommentValue!13217 (value!202404 List!41246)) (StringLiteralValue!19826 (value!202405 List!41246)) (ErrorTokenValue!6608 (msg!6669 List!41246)) )
))
(declare-datatypes ((C!22752 0))(
  ( (C!22753 (val!13470 Int)) )
))
(declare-datatypes ((Regex!11283 0))(
  ( (ElementMatch!11283 (c!673690 C!22752)) (Concat!17892 (regOne!23078 Regex!11283) (regTwo!23078 Regex!11283)) (EmptyExpr!11283) (Star!11283 (reg!11612 Regex!11283)) (EmptyLang!11283) (Union!11283 (regOne!23079 Regex!11283) (regTwo!23079 Regex!11283)) )
))
(declare-datatypes ((String!46758 0))(
  ( (String!46759 (value!202406 String)) )
))
(declare-datatypes ((List!41247 0))(
  ( (Nil!41123) (Cons!41123 (h!46543 C!22752) (t!314506 List!41247)) )
))
(declare-datatypes ((IArray!25183 0))(
  ( (IArray!25184 (innerList!12649 List!41247)) )
))
(declare-datatypes ((Conc!12589 0))(
  ( (Node!12589 (left!31596 Conc!12589) (right!31926 Conc!12589) (csize!25408 Int) (cheight!12800 Int)) (Leaf!19485 (xs!15895 IArray!25183) (csize!25409 Int)) (Empty!12589) )
))
(declare-datatypes ((BalanceConc!24772 0))(
  ( (BalanceConc!24773 (c!673691 Conc!12589)) )
))
(declare-datatypes ((TokenValueInjection!12644 0))(
  ( (TokenValueInjection!12645 (toValue!8806 Int) (toChars!8665 Int)) )
))
(declare-datatypes ((Rule!12556 0))(
  ( (Rule!12557 (regex!6378 Regex!11283) (tag!7238 String!46758) (isSeparator!6378 Bool) (transformation!6378 TokenValueInjection!12644)) )
))
(declare-datatypes ((Token!11894 0))(
  ( (Token!11895 (value!202407 TokenValue!6608) (rule!9266 Rule!12556) (size!30909 Int) (originalCharacters!6978 List!41247)) )
))
(declare-datatypes ((List!41248 0))(
  ( (Nil!41124) (Cons!41124 (h!46544 Token!11894) (t!314507 List!41248)) )
))
(declare-fun prefixTokens!80 () List!41248)

(declare-fun isEmpty!24396 (List!41248) Bool)

(assert (=> b!3871390 (= res!1568098 (not (isEmpty!24396 prefixTokens!80)))))

(declare-fun b!3871391 () Bool)

(declare-datatypes ((Unit!58959 0))(
  ( (Unit!58960) )
))
(declare-fun e!2394543 () Unit!58959)

(declare-fun Unit!58961 () Unit!58959)

(assert (=> b!3871391 (= e!2394543 Unit!58961)))

(declare-fun lt!1347744 () Unit!58959)

(declare-fun suffixResult!91 () List!41247)

(declare-fun suffix!1176 () List!41247)

(declare-datatypes ((tuple2!40346 0))(
  ( (tuple2!40347 (_1!23307 Token!11894) (_2!23307 List!41247)) )
))
(declare-fun lt!1347755 () tuple2!40346)

(declare-datatypes ((List!41249 0))(
  ( (Nil!41125) (Cons!41125 (h!46545 Rule!12556) (t!314508 List!41249)) )
))
(declare-fun rules!2768 () List!41249)

(declare-fun suffixTokens!72 () List!41248)

(declare-fun lt!1347739 () List!41248)

(declare-fun lemmaLexWithSmallerInputCannotProduceAdditionalTokens!38 (LexerInterface!5967 List!41249 List!41247 List!41247 List!41248 List!41247 List!41248) Unit!58959)

(assert (=> b!3871391 (= lt!1347744 (lemmaLexWithSmallerInputCannotProduceAdditionalTokens!38 thiss!20629 rules!2768 suffix!1176 (_2!23307 lt!1347755) suffixTokens!72 suffixResult!91 lt!1347739))))

(declare-datatypes ((tuple2!40348 0))(
  ( (tuple2!40349 (_1!23308 List!41248) (_2!23308 List!41247)) )
))
(declare-fun call!282732 () tuple2!40348)

(declare-fun res!1568115 () Bool)

(declare-fun ++!10513 (List!41248 List!41248) List!41248)

(assert (=> b!3871391 (= res!1568115 (not (= call!282732 (tuple2!40349 (++!10513 lt!1347739 suffixTokens!72) suffixResult!91))))))

(declare-fun e!2394554 () Bool)

(assert (=> b!3871391 (=> (not res!1568115) (not e!2394554))))

(assert (=> b!3871391 e!2394554))

(declare-fun b!3871392 () Bool)

(declare-fun e!2394549 () Unit!58959)

(declare-fun Unit!58962 () Unit!58959)

(assert (=> b!3871392 (= e!2394549 Unit!58962)))

(declare-fun b!3871393 () Bool)

(declare-fun e!2394546 () Bool)

(declare-fun e!2394568 () Bool)

(assert (=> b!3871393 (= e!2394546 e!2394568)))

(declare-fun res!1568106 () Bool)

(assert (=> b!3871393 (=> res!1568106 e!2394568)))

(declare-fun lt!1347725 () Int)

(declare-fun lt!1347748 () Int)

(assert (=> b!3871393 (= res!1568106 (<= lt!1347725 lt!1347748))))

(declare-fun lt!1347719 () Unit!58959)

(declare-fun e!2394537 () Unit!58959)

(assert (=> b!3871393 (= lt!1347719 e!2394537)))

(declare-fun c!673686 () Bool)

(assert (=> b!3871393 (= c!673686 (= lt!1347725 lt!1347748))))

(declare-fun lt!1347741 () Unit!58959)

(declare-fun e!2394570 () Unit!58959)

(assert (=> b!3871393 (= lt!1347741 e!2394570)))

(declare-fun c!673689 () Bool)

(assert (=> b!3871393 (= c!673689 (< lt!1347725 lt!1347748))))

(declare-fun size!30910 (List!41247) Int)

(assert (=> b!3871393 (= lt!1347748 (size!30910 suffix!1176))))

(declare-datatypes ((Option!8796 0))(
  ( (None!8795) (Some!8795 (v!39093 tuple2!40346)) )
))
(declare-fun lt!1347761 () Option!8796)

(assert (=> b!3871393 (= lt!1347725 (size!30910 (_2!23307 (v!39093 lt!1347761))))))

(declare-fun b!3871394 () Bool)

(declare-fun e!2394561 () Bool)

(declare-fun e!2394551 () Bool)

(declare-fun tp!1173785 () Bool)

(declare-fun inv!21 (TokenValue!6608) Bool)

(assert (=> b!3871394 (= e!2394551 (and (inv!21 (value!202407 (h!46544 suffixTokens!72))) e!2394561 tp!1173785))))

(declare-fun e!2394555 () Bool)

(declare-fun tp!1173797 () Bool)

(declare-fun b!3871395 () Bool)

(declare-fun inv!55280 (String!46758) Bool)

(declare-fun inv!55283 (TokenValueInjection!12644) Bool)

(assert (=> b!3871395 (= e!2394555 (and tp!1173797 (inv!55280 (tag!7238 (h!46545 rules!2768))) (inv!55283 (transformation!6378 (h!46545 rules!2768))) e!2394573))))

(declare-fun b!3871396 () Bool)

(declare-fun e!2394563 () Bool)

(assert (=> b!3871396 (= e!2394568 e!2394563)))

(declare-fun res!1568109 () Bool)

(assert (=> b!3871396 (=> res!1568109 e!2394563)))

(declare-fun lt!1347732 () Int)

(declare-fun prefix!426 () List!41247)

(assert (=> b!3871396 (= res!1568109 (>= lt!1347732 (size!30910 prefix!426)))))

(declare-fun lt!1347729 () List!41247)

(declare-fun isPrefix!3477 (List!41247 List!41247) Bool)

(assert (=> b!3871396 (isPrefix!3477 lt!1347729 prefix!426)))

(declare-fun lt!1347754 () Unit!58959)

(declare-fun lt!1347762 () List!41247)

(declare-fun lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!227 (List!41247 List!41247 List!41247) Unit!58959)

(assert (=> b!3871396 (= lt!1347754 (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!227 prefix!426 lt!1347729 lt!1347762))))

(assert (=> b!3871396 (isPrefix!3477 prefix!426 lt!1347762)))

(declare-fun lt!1347742 () Unit!58959)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!2340 (List!41247 List!41247) Unit!58959)

(assert (=> b!3871396 (= lt!1347742 (lemmaConcatTwoListThenFirstIsPrefix!2340 prefix!426 suffix!1176))))

(declare-fun tp!1173783 () Bool)

(declare-fun b!3871397 () Bool)

(declare-fun e!2394545 () Bool)

(declare-fun inv!55284 (Token!11894) Bool)

(assert (=> b!3871397 (= e!2394548 (and (inv!55284 (h!46544 prefixTokens!80)) e!2394545 tp!1173783))))

(declare-fun b!3871398 () Bool)

(declare-fun e!2394572 () Unit!58959)

(declare-fun Unit!58963 () Unit!58959)

(assert (=> b!3871398 (= e!2394572 Unit!58963)))

(declare-fun lt!1347735 () Unit!58959)

(declare-fun lemmaLexWithSmallerInputCannotProduceSameResults!38 (LexerInterface!5967 List!41249 List!41247 List!41247 List!41248 List!41247) Unit!58959)

(assert (=> b!3871398 (= lt!1347735 (lemmaLexWithSmallerInputCannotProduceSameResults!38 thiss!20629 rules!2768 (_2!23307 (v!39093 lt!1347761)) suffix!1176 suffixTokens!72 suffixResult!91))))

(assert (=> b!3871398 false))

(declare-fun b!3871399 () Bool)

(declare-fun e!2394559 () Bool)

(declare-fun e!2394564 () Bool)

(assert (=> b!3871399 (= e!2394559 e!2394564)))

(declare-fun res!1568118 () Bool)

(assert (=> b!3871399 (=> res!1568118 e!2394564)))

(declare-fun lt!1347751 () tuple2!40348)

(declare-fun lt!1347747 () List!41248)

(assert (=> b!3871399 (= res!1568118 (not (= lt!1347751 (tuple2!40349 lt!1347747 suffixResult!91))))))

(declare-fun lt!1347721 () List!41248)

(assert (=> b!3871399 (= lt!1347747 (++!10513 lt!1347721 suffixTokens!72))))

(declare-fun tail!5913 (List!41248) List!41248)

(assert (=> b!3871399 (= lt!1347721 (tail!5913 prefixTokens!80))))

(declare-fun lt!1347753 () List!41247)

(declare-fun lt!1347726 () List!41247)

(assert (=> b!3871399 (isPrefix!3477 lt!1347753 lt!1347726)))

(declare-fun lt!1347724 () Unit!58959)

(assert (=> b!3871399 (= lt!1347724 (lemmaConcatTwoListThenFirstIsPrefix!2340 lt!1347753 suffix!1176))))

(declare-fun e!2394558 () Bool)

(declare-fun tp!1173795 () Bool)

(declare-fun b!3871400 () Bool)

(assert (=> b!3871400 (= e!2394545 (and (inv!21 (value!202407 (h!46544 prefixTokens!80))) e!2394558 tp!1173795))))

(declare-fun b!3871401 () Bool)

(declare-fun e!2394536 () Bool)

(assert (=> b!3871401 (= e!2394536 e!2394546)))

(declare-fun res!1568107 () Bool)

(assert (=> b!3871401 (=> res!1568107 e!2394546)))

(declare-fun lt!1347731 () List!41248)

(declare-fun lt!1347733 () tuple2!40348)

(assert (=> b!3871401 (= res!1568107 (not (= lt!1347733 (tuple2!40349 (++!10513 lt!1347731 (_1!23308 lt!1347751)) (_2!23308 lt!1347751)))))))

(assert (=> b!3871401 (= lt!1347731 (Cons!41124 (_1!23307 (v!39093 lt!1347761)) Nil!41124))))

(declare-fun b!3871402 () Bool)

(assert (=> b!3871402 (= e!2394554 false)))

(declare-fun b!3871403 () Bool)

(declare-fun tp!1173787 () Bool)

(assert (=> b!3871403 (= e!2394567 (and e!2394555 tp!1173787))))

(declare-fun b!3871404 () Bool)

(declare-fun Unit!58964 () Unit!58959)

(assert (=> b!3871404 (= e!2394537 Unit!58964)))

(declare-fun b!3871405 () Bool)

(assert (=> b!3871405 (= e!2394564 true)))

(assert (=> b!3871405 (= (++!10513 (++!10513 lt!1347731 lt!1347721) suffixTokens!72) (++!10513 lt!1347731 lt!1347747))))

(declare-fun lt!1347727 () Unit!58959)

(declare-fun lemmaConcatAssociativity!2227 (List!41248 List!41248 List!41248) Unit!58959)

(assert (=> b!3871405 (= lt!1347727 (lemmaConcatAssociativity!2227 lt!1347731 lt!1347721 suffixTokens!72))))

(declare-fun lt!1347745 () Unit!58959)

(assert (=> b!3871405 (= lt!1347745 e!2394572)))

(declare-fun c!673685 () Bool)

(assert (=> b!3871405 (= c!673685 (isEmpty!24396 lt!1347721))))

(declare-fun b!3871406 () Bool)

(declare-fun e!2394560 () Bool)

(declare-fun e!2394565 () Bool)

(assert (=> b!3871406 (= e!2394560 e!2394565)))

(declare-fun res!1568114 () Bool)

(assert (=> b!3871406 (=> (not res!1568114) (not e!2394565))))

(declare-fun lt!1347763 () tuple2!40348)

(declare-fun lexList!1735 (LexerInterface!5967 List!41249 List!41247) tuple2!40348)

(assert (=> b!3871406 (= res!1568114 (= (lexList!1735 thiss!20629 rules!2768 suffix!1176) lt!1347763))))

(assert (=> b!3871406 (= lt!1347763 (tuple2!40349 suffixTokens!72 suffixResult!91))))

(declare-fun e!2394553 () Bool)

(assert (=> b!3871407 (= e!2394553 (and tp!1173786 tp!1173784))))

(declare-fun b!3871408 () Bool)

(declare-fun e!2394544 () Bool)

(assert (=> b!3871408 (= e!2394544 e!2394559)))

(declare-fun res!1568103 () Bool)

(assert (=> b!3871408 (=> res!1568103 e!2394559)))

(assert (=> b!3871408 (= res!1568103 (not (= lt!1347726 (_2!23307 (v!39093 lt!1347761)))))))

(assert (=> b!3871408 (= (_2!23307 (v!39093 lt!1347761)) lt!1347726)))

(declare-fun lt!1347750 () Unit!58959)

(declare-fun lemmaSamePrefixThenSameSuffix!1698 (List!41247 List!41247 List!41247 List!41247 List!41247) Unit!58959)

(assert (=> b!3871408 (= lt!1347750 (lemmaSamePrefixThenSameSuffix!1698 lt!1347729 (_2!23307 (v!39093 lt!1347761)) lt!1347729 lt!1347726 lt!1347762))))

(declare-fun lt!1347728 () List!41247)

(assert (=> b!3871408 (isPrefix!3477 lt!1347729 lt!1347728)))

(declare-fun lt!1347752 () Unit!58959)

(assert (=> b!3871408 (= lt!1347752 (lemmaConcatTwoListThenFirstIsPrefix!2340 lt!1347729 lt!1347726))))

(declare-fun b!3871409 () Bool)

(declare-fun tp_is_empty!19537 () Bool)

(declare-fun tp!1173798 () Bool)

(assert (=> b!3871409 (= e!2394569 (and tp_is_empty!19537 tp!1173798))))

(declare-fun b!3871410 () Bool)

(declare-fun Unit!58965 () Unit!58959)

(assert (=> b!3871410 (= e!2394537 Unit!58965)))

(declare-fun lt!1347757 () Unit!58959)

(assert (=> b!3871410 (= lt!1347757 (lemmaConcatTwoListThenFirstIsPrefix!2340 prefix!426 suffix!1176))))

(assert (=> b!3871410 (isPrefix!3477 prefix!426 lt!1347762)))

(declare-fun lt!1347720 () Unit!58959)

(declare-fun lemmaIsPrefixSameLengthThenSameList!729 (List!41247 List!41247 List!41247) Unit!58959)

(assert (=> b!3871410 (= lt!1347720 (lemmaIsPrefixSameLengthThenSameList!729 lt!1347729 prefix!426 lt!1347762))))

(assert (=> b!3871410 (= lt!1347729 prefix!426)))

(declare-fun lt!1347722 () Unit!58959)

(assert (=> b!3871410 (= lt!1347722 (lemmaSamePrefixThenSameSuffix!1698 lt!1347729 (_2!23307 (v!39093 lt!1347761)) prefix!426 suffix!1176 lt!1347762))))

(assert (=> b!3871410 false))

(declare-fun b!3871411 () Bool)

(declare-fun c!673687 () Bool)

(assert (=> b!3871411 (= c!673687 (isEmpty!24396 lt!1347739))))

(assert (=> b!3871411 (= lt!1347739 (tail!5913 prefixTokens!80))))

(assert (=> b!3871411 (= e!2394549 e!2394543)))

(declare-fun tp!1173782 () Bool)

(declare-fun e!2394574 () Bool)

(declare-fun b!3871412 () Bool)

(assert (=> b!3871412 (= e!2394561 (and tp!1173782 (inv!55280 (tag!7238 (rule!9266 (h!46544 suffixTokens!72)))) (inv!55283 (transformation!6378 (rule!9266 (h!46544 suffixTokens!72)))) e!2394574))))

(declare-fun b!3871413 () Bool)

(declare-fun res!1568111 () Bool)

(assert (=> b!3871413 (=> res!1568111 e!2394546)))

(assert (=> b!3871413 (= res!1568111 (or (not (= lt!1347751 (tuple2!40349 (_1!23308 lt!1347751) (_2!23308 lt!1347751)))) (= (_2!23307 (v!39093 lt!1347761)) suffix!1176)))))

(declare-fun b!3871414 () Bool)

(declare-fun e!2394571 () Bool)

(assert (=> b!3871414 (= e!2394563 e!2394571)))

(declare-fun res!1568117 () Bool)

(assert (=> b!3871414 (=> res!1568117 e!2394571)))

(declare-fun lt!1347758 () List!41247)

(assert (=> b!3871414 (= res!1568117 (not (= lt!1347758 prefix!426)))))

(declare-fun ++!10514 (List!41247 List!41247) List!41247)

(assert (=> b!3871414 (= lt!1347758 (++!10514 lt!1347729 lt!1347753))))

(declare-fun getSuffix!1932 (List!41247 List!41247) List!41247)

(assert (=> b!3871414 (= lt!1347753 (getSuffix!1932 prefix!426 lt!1347729))))

(assert (=> b!3871415 (= e!2394574 (and tp!1173791 tp!1173789))))

(declare-fun b!3871416 () Bool)

(declare-fun Unit!58966 () Unit!58959)

(assert (=> b!3871416 (= e!2394570 Unit!58966)))

(declare-fun lt!1347746 () Int)

(assert (=> b!3871416 (= lt!1347746 (size!30910 lt!1347762))))

(declare-fun lt!1347765 () Unit!58959)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1251 (LexerInterface!5967 List!41249 List!41247 List!41247 List!41247 Rule!12556) Unit!58959)

(assert (=> b!3871416 (= lt!1347765 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1251 thiss!20629 rules!2768 lt!1347729 lt!1347762 (_2!23307 (v!39093 lt!1347761)) (rule!9266 (_1!23307 (v!39093 lt!1347761)))))))

(declare-fun lt!1347756 () TokenValue!6608)

(declare-fun maxPrefixOneRule!2353 (LexerInterface!5967 Rule!12556 List!41247) Option!8796)

(assert (=> b!3871416 (= (maxPrefixOneRule!2353 thiss!20629 (rule!9266 (_1!23307 (v!39093 lt!1347761))) lt!1347762) (Some!8795 (tuple2!40347 (Token!11895 lt!1347756 (rule!9266 (_1!23307 (v!39093 lt!1347761))) lt!1347732 lt!1347729) (_2!23307 (v!39093 lt!1347761)))))))

(declare-fun get!13607 (Option!8796) tuple2!40346)

(assert (=> b!3871416 (= lt!1347755 (get!13607 lt!1347761))))

(declare-fun c!673688 () Bool)

(assert (=> b!3871416 (= c!673688 (< (size!30910 (_2!23307 lt!1347755)) lt!1347748))))

(declare-fun lt!1347759 () Unit!58959)

(assert (=> b!3871416 (= lt!1347759 e!2394549)))

(assert (=> b!3871416 false))

(declare-fun b!3871417 () Bool)

(declare-fun e!2394562 () Bool)

(assert (=> b!3871417 (= e!2394562 (= (size!30909 (_1!23307 (v!39093 lt!1347761))) (size!30910 (originalCharacters!6978 (_1!23307 (v!39093 lt!1347761))))))))

(declare-fun b!3871418 () Bool)

(declare-fun Unit!58967 () Unit!58959)

(assert (=> b!3871418 (= e!2394572 Unit!58967)))

(declare-fun tp!1173796 () Bool)

(declare-fun b!3871419 () Bool)

(assert (=> b!3871419 (= e!2394558 (and tp!1173796 (inv!55280 (tag!7238 (rule!9266 (h!46544 prefixTokens!80)))) (inv!55283 (transformation!6378 (rule!9266 (h!46544 prefixTokens!80)))) e!2394553))))

(declare-fun bm!282727 () Bool)

(assert (=> bm!282727 (= call!282732 (lexList!1735 thiss!20629 rules!2768 (_2!23307 lt!1347755)))))

(declare-fun b!3871420 () Bool)

(declare-fun tp!1173794 () Bool)

(assert (=> b!3871420 (= e!2394538 (and tp_is_empty!19537 tp!1173794))))

(declare-fun b!3871421 () Bool)

(declare-fun res!1568101 () Bool)

(assert (=> b!3871421 (=> res!1568101 e!2394568)))

(declare-fun head!8196 (List!41248) Token!11894)

(assert (=> b!3871421 (= res!1568101 (not (= (head!8196 prefixTokens!80) (_1!23307 (v!39093 lt!1347761)))))))

(declare-fun b!3871422 () Bool)

(declare-fun Unit!58968 () Unit!58959)

(assert (=> b!3871422 (= e!2394570 Unit!58968)))

(declare-fun b!3871423 () Bool)

(declare-fun res!1568099 () Bool)

(assert (=> b!3871423 (=> (not res!1568099) (not e!2394542))))

(declare-fun rulesInvariant!5310 (LexerInterface!5967 List!41249) Bool)

(assert (=> b!3871423 (= res!1568099 (rulesInvariant!5310 thiss!20629 rules!2768))))

(declare-fun b!3871424 () Bool)

(declare-fun Unit!58969 () Unit!58959)

(assert (=> b!3871424 (= e!2394543 Unit!58969)))

(declare-fun lt!1347740 () Unit!58959)

(declare-fun lemmaConcatSameAndSameSizesThenSameLists!462 (List!41247 List!41247 List!41247 List!41247) Unit!58959)

(assert (=> b!3871424 (= lt!1347740 (lemmaConcatSameAndSameSizesThenSameLists!462 lt!1347729 (_2!23307 (v!39093 lt!1347761)) lt!1347729 (_2!23307 lt!1347755)))))

(assert (=> b!3871424 (= (_2!23307 (v!39093 lt!1347761)) (_2!23307 lt!1347755))))

(declare-fun lt!1347737 () Unit!58959)

(assert (=> b!3871424 (= lt!1347737 (lemmaLexWithSmallerInputCannotProduceSameResults!38 thiss!20629 rules!2768 suffix!1176 (_2!23307 lt!1347755) suffixTokens!72 suffixResult!91))))

(declare-fun res!1568110 () Bool)

(assert (=> b!3871424 (= res!1568110 (not (= call!282732 lt!1347763)))))

(declare-fun e!2394541 () Bool)

(assert (=> b!3871424 (=> (not res!1568110) (not e!2394541))))

(assert (=> b!3871424 e!2394541))

(declare-fun b!3871425 () Bool)

(declare-fun res!1568102 () Bool)

(assert (=> b!3871425 (=> (not res!1568102) (not e!2394542))))

(declare-fun isEmpty!24397 (List!41247) Bool)

(assert (=> b!3871425 (= res!1568102 (not (isEmpty!24397 prefix!426)))))

(declare-fun b!3871426 () Bool)

(declare-fun e!2394539 () Bool)

(assert (=> b!3871426 (= e!2394565 e!2394539)))

(declare-fun res!1568105 () Bool)

(assert (=> b!3871426 (=> (not res!1568105) (not e!2394539))))

(assert (=> b!3871426 (= res!1568105 ((_ is Some!8795) lt!1347761))))

(declare-fun maxPrefix!3271 (LexerInterface!5967 List!41249 List!41247) Option!8796)

(assert (=> b!3871426 (= lt!1347761 (maxPrefix!3271 thiss!20629 rules!2768 lt!1347762))))

(declare-fun b!3871427 () Bool)

(assert (=> b!3871427 (= e!2394539 (not e!2394536))))

(declare-fun res!1568113 () Bool)

(assert (=> b!3871427 (=> res!1568113 e!2394536)))

(declare-fun lt!1347738 () List!41247)

(assert (=> b!3871427 (= res!1568113 (not (= lt!1347738 lt!1347762)))))

(assert (=> b!3871427 (= lt!1347751 (lexList!1735 thiss!20629 rules!2768 (_2!23307 (v!39093 lt!1347761))))))

(declare-fun lt!1347749 () List!41247)

(assert (=> b!3871427 (and (= (size!30909 (_1!23307 (v!39093 lt!1347761))) lt!1347732) (= (originalCharacters!6978 (_1!23307 (v!39093 lt!1347761))) lt!1347729) (= (v!39093 lt!1347761) (tuple2!40347 (Token!11895 lt!1347756 (rule!9266 (_1!23307 (v!39093 lt!1347761))) lt!1347732 lt!1347729) lt!1347749)))))

(assert (=> b!3871427 (= lt!1347732 (size!30910 lt!1347729))))

(assert (=> b!3871427 e!2394562))

(declare-fun res!1568108 () Bool)

(assert (=> b!3871427 (=> (not res!1568108) (not e!2394562))))

(assert (=> b!3871427 (= res!1568108 (= (value!202407 (_1!23307 (v!39093 lt!1347761))) lt!1347756))))

(declare-fun apply!9621 (TokenValueInjection!12644 BalanceConc!24772) TokenValue!6608)

(declare-fun seqFromList!4649 (List!41247) BalanceConc!24772)

(assert (=> b!3871427 (= lt!1347756 (apply!9621 (transformation!6378 (rule!9266 (_1!23307 (v!39093 lt!1347761)))) (seqFromList!4649 lt!1347729)))))

(assert (=> b!3871427 (= (_2!23307 (v!39093 lt!1347761)) lt!1347749)))

(declare-fun lt!1347730 () Unit!58959)

(assert (=> b!3871427 (= lt!1347730 (lemmaSamePrefixThenSameSuffix!1698 lt!1347729 (_2!23307 (v!39093 lt!1347761)) lt!1347729 lt!1347749 lt!1347762))))

(assert (=> b!3871427 (= lt!1347749 (getSuffix!1932 lt!1347762 lt!1347729))))

(assert (=> b!3871427 (isPrefix!3477 lt!1347729 lt!1347738)))

(assert (=> b!3871427 (= lt!1347738 (++!10514 lt!1347729 (_2!23307 (v!39093 lt!1347761))))))

(declare-fun lt!1347723 () Unit!58959)

(assert (=> b!3871427 (= lt!1347723 (lemmaConcatTwoListThenFirstIsPrefix!2340 lt!1347729 (_2!23307 (v!39093 lt!1347761))))))

(declare-fun list!15298 (BalanceConc!24772) List!41247)

(declare-fun charsOf!4206 (Token!11894) BalanceConc!24772)

(assert (=> b!3871427 (= lt!1347729 (list!15298 (charsOf!4206 (_1!23307 (v!39093 lt!1347761)))))))

(declare-fun ruleValid!2330 (LexerInterface!5967 Rule!12556) Bool)

(assert (=> b!3871427 (ruleValid!2330 thiss!20629 (rule!9266 (_1!23307 (v!39093 lt!1347761))))))

(declare-fun lt!1347760 () Unit!58959)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1410 (LexerInterface!5967 Rule!12556 List!41249) Unit!58959)

(assert (=> b!3871427 (= lt!1347760 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1410 thiss!20629 (rule!9266 (_1!23307 (v!39093 lt!1347761))) rules!2768))))

(declare-fun lt!1347734 () Unit!58959)

(declare-fun lemmaCharactersSize!1039 (Token!11894) Unit!58959)

(assert (=> b!3871427 (= lt!1347734 (lemmaCharactersSize!1039 (_1!23307 (v!39093 lt!1347761))))))

(declare-fun b!3871428 () Bool)

(declare-fun e!2394566 () Bool)

(assert (=> b!3871428 (= e!2394571 e!2394566)))

(declare-fun res!1568112 () Bool)

(assert (=> b!3871428 (=> res!1568112 e!2394566)))

(declare-fun lt!1347736 () List!41247)

(assert (=> b!3871428 (= res!1568112 (or (not (= lt!1347736 lt!1347762)) (not (= lt!1347736 lt!1347738))))))

(assert (=> b!3871428 (= lt!1347736 (++!10514 lt!1347758 suffix!1176))))

(declare-fun b!3871429 () Bool)

(declare-fun res!1568116 () Bool)

(assert (=> b!3871429 (=> (not res!1568116) (not e!2394542))))

(declare-fun isEmpty!24398 (List!41249) Bool)

(assert (=> b!3871429 (= res!1568116 (not (isEmpty!24398 rules!2768)))))

(declare-fun b!3871430 () Bool)

(assert (=> b!3871430 (= e!2394542 e!2394560)))

(declare-fun res!1568104 () Bool)

(assert (=> b!3871430 (=> (not res!1568104) (not e!2394560))))

(declare-fun lt!1347743 () List!41248)

(assert (=> b!3871430 (= res!1568104 (= lt!1347733 (tuple2!40349 lt!1347743 suffixResult!91)))))

(assert (=> b!3871430 (= lt!1347733 (lexList!1735 thiss!20629 rules!2768 lt!1347762))))

(assert (=> b!3871430 (= lt!1347743 (++!10513 prefixTokens!80 suffixTokens!72))))

(assert (=> b!3871430 (= lt!1347762 (++!10514 prefix!426 suffix!1176))))

(declare-fun b!3871431 () Bool)

(assert (=> b!3871431 (= e!2394541 false)))

(declare-fun b!3871432 () Bool)

(declare-fun tp!1173792 () Bool)

(assert (=> b!3871432 (= e!2394552 (and tp_is_empty!19537 tp!1173792))))

(declare-fun b!3871433 () Bool)

(declare-fun tp!1173790 () Bool)

(assert (=> b!3871433 (= e!2394550 (and (inv!55284 (h!46544 suffixTokens!72)) e!2394551 tp!1173790))))

(declare-fun b!3871434 () Bool)

(assert (=> b!3871434 (= e!2394566 e!2394544)))

(declare-fun res!1568100 () Bool)

(assert (=> b!3871434 (=> res!1568100 e!2394544)))

(assert (=> b!3871434 (= res!1568100 (or (not (= lt!1347762 lt!1347736)) (not (= lt!1347762 lt!1347728)) (not (= lt!1347738 lt!1347728))))))

(assert (=> b!3871434 (= lt!1347736 lt!1347728)))

(assert (=> b!3871434 (= lt!1347728 (++!10514 lt!1347729 lt!1347726))))

(assert (=> b!3871434 (= lt!1347726 (++!10514 lt!1347753 suffix!1176))))

(declare-fun lt!1347764 () Unit!58959)

(declare-fun lemmaConcatAssociativity!2228 (List!41247 List!41247 List!41247) Unit!58959)

(assert (=> b!3871434 (= lt!1347764 (lemmaConcatAssociativity!2228 lt!1347729 lt!1347753 suffix!1176))))

(assert (= (and start!363352 res!1568119) b!3871429))

(assert (= (and b!3871429 res!1568116) b!3871423))

(assert (= (and b!3871423 res!1568099) b!3871390))

(assert (= (and b!3871390 res!1568098) b!3871425))

(assert (= (and b!3871425 res!1568102) b!3871430))

(assert (= (and b!3871430 res!1568104) b!3871406))

(assert (= (and b!3871406 res!1568114) b!3871426))

(assert (= (and b!3871426 res!1568105) b!3871427))

(assert (= (and b!3871427 res!1568108) b!3871417))

(assert (= (and b!3871427 (not res!1568113)) b!3871401))

(assert (= (and b!3871401 (not res!1568107)) b!3871413))

(assert (= (and b!3871413 (not res!1568111)) b!3871393))

(assert (= (and b!3871393 c!673689) b!3871416))

(assert (= (and b!3871393 (not c!673689)) b!3871422))

(assert (= (and b!3871416 c!673688) b!3871411))

(assert (= (and b!3871416 (not c!673688)) b!3871392))

(assert (= (and b!3871411 c!673687) b!3871424))

(assert (= (and b!3871411 (not c!673687)) b!3871391))

(assert (= (and b!3871424 res!1568110) b!3871431))

(assert (= (and b!3871391 res!1568115) b!3871402))

(assert (= (or b!3871424 b!3871391) bm!282727))

(assert (= (and b!3871393 c!673686) b!3871410))

(assert (= (and b!3871393 (not c!673686)) b!3871404))

(assert (= (and b!3871393 (not res!1568106)) b!3871421))

(assert (= (and b!3871421 (not res!1568101)) b!3871396))

(assert (= (and b!3871396 (not res!1568109)) b!3871414))

(assert (= (and b!3871414 (not res!1568117)) b!3871428))

(assert (= (and b!3871428 (not res!1568112)) b!3871434))

(assert (= (and b!3871434 (not res!1568100)) b!3871408))

(assert (= (and b!3871408 (not res!1568103)) b!3871399))

(assert (= (and b!3871399 (not res!1568118)) b!3871405))

(assert (= (and b!3871405 c!673685) b!3871398))

(assert (= (and b!3871405 (not c!673685)) b!3871418))

(assert (= (and start!363352 ((_ is Cons!41123) suffixResult!91)) b!3871432))

(assert (= (and start!363352 ((_ is Cons!41123) suffix!1176)) b!3871420))

(assert (= b!3871395 b!3871389))

(assert (= b!3871403 b!3871395))

(assert (= (and start!363352 ((_ is Cons!41125) rules!2768)) b!3871403))

(assert (= b!3871419 b!3871407))

(assert (= b!3871400 b!3871419))

(assert (= b!3871397 b!3871400))

(assert (= (and start!363352 ((_ is Cons!41124) prefixTokens!80)) b!3871397))

(assert (= b!3871412 b!3871415))

(assert (= b!3871394 b!3871412))

(assert (= b!3871433 b!3871394))

(assert (= (and start!363352 ((_ is Cons!41124) suffixTokens!72)) b!3871433))

(assert (= (and start!363352 ((_ is Cons!41123) prefix!426)) b!3871409))

(declare-fun m!4428011 () Bool)

(assert (=> b!3871425 m!4428011))

(declare-fun m!4428013 () Bool)

(assert (=> b!3871426 m!4428013))

(declare-fun m!4428015 () Bool)

(assert (=> b!3871406 m!4428015))

(declare-fun m!4428017 () Bool)

(assert (=> b!3871390 m!4428017))

(declare-fun m!4428019 () Bool)

(assert (=> b!3871429 m!4428019))

(declare-fun m!4428021 () Bool)

(assert (=> b!3871394 m!4428021))

(declare-fun m!4428023 () Bool)

(assert (=> b!3871424 m!4428023))

(declare-fun m!4428025 () Bool)

(assert (=> b!3871424 m!4428025))

(declare-fun m!4428027 () Bool)

(assert (=> b!3871405 m!4428027))

(declare-fun m!4428029 () Bool)

(assert (=> b!3871405 m!4428029))

(declare-fun m!4428031 () Bool)

(assert (=> b!3871405 m!4428031))

(declare-fun m!4428033 () Bool)

(assert (=> b!3871405 m!4428033))

(assert (=> b!3871405 m!4428027))

(declare-fun m!4428035 () Bool)

(assert (=> b!3871405 m!4428035))

(declare-fun m!4428037 () Bool)

(assert (=> b!3871400 m!4428037))

(declare-fun m!4428039 () Bool)

(assert (=> b!3871434 m!4428039))

(declare-fun m!4428041 () Bool)

(assert (=> b!3871434 m!4428041))

(declare-fun m!4428043 () Bool)

(assert (=> b!3871434 m!4428043))

(declare-fun m!4428045 () Bool)

(assert (=> bm!282727 m!4428045))

(declare-fun m!4428047 () Bool)

(assert (=> b!3871397 m!4428047))

(declare-fun m!4428049 () Bool)

(assert (=> b!3871410 m!4428049))

(declare-fun m!4428051 () Bool)

(assert (=> b!3871410 m!4428051))

(declare-fun m!4428053 () Bool)

(assert (=> b!3871410 m!4428053))

(declare-fun m!4428055 () Bool)

(assert (=> b!3871410 m!4428055))

(declare-fun m!4428057 () Bool)

(assert (=> b!3871417 m!4428057))

(declare-fun m!4428059 () Bool)

(assert (=> b!3871412 m!4428059))

(declare-fun m!4428061 () Bool)

(assert (=> b!3871412 m!4428061))

(declare-fun m!4428063 () Bool)

(assert (=> b!3871416 m!4428063))

(declare-fun m!4428065 () Bool)

(assert (=> b!3871416 m!4428065))

(declare-fun m!4428067 () Bool)

(assert (=> b!3871416 m!4428067))

(declare-fun m!4428069 () Bool)

(assert (=> b!3871416 m!4428069))

(declare-fun m!4428071 () Bool)

(assert (=> b!3871416 m!4428071))

(declare-fun m!4428073 () Bool)

(assert (=> b!3871433 m!4428073))

(declare-fun m!4428075 () Bool)

(assert (=> b!3871430 m!4428075))

(declare-fun m!4428077 () Bool)

(assert (=> b!3871430 m!4428077))

(declare-fun m!4428079 () Bool)

(assert (=> b!3871430 m!4428079))

(declare-fun m!4428081 () Bool)

(assert (=> b!3871391 m!4428081))

(declare-fun m!4428083 () Bool)

(assert (=> b!3871391 m!4428083))

(declare-fun m!4428085 () Bool)

(assert (=> b!3871427 m!4428085))

(declare-fun m!4428087 () Bool)

(assert (=> b!3871427 m!4428087))

(declare-fun m!4428089 () Bool)

(assert (=> b!3871427 m!4428089))

(declare-fun m!4428091 () Bool)

(assert (=> b!3871427 m!4428091))

(declare-fun m!4428093 () Bool)

(assert (=> b!3871427 m!4428093))

(declare-fun m!4428095 () Bool)

(assert (=> b!3871427 m!4428095))

(declare-fun m!4428097 () Bool)

(assert (=> b!3871427 m!4428097))

(declare-fun m!4428099 () Bool)

(assert (=> b!3871427 m!4428099))

(declare-fun m!4428101 () Bool)

(assert (=> b!3871427 m!4428101))

(assert (=> b!3871427 m!4428085))

(declare-fun m!4428103 () Bool)

(assert (=> b!3871427 m!4428103))

(declare-fun m!4428105 () Bool)

(assert (=> b!3871427 m!4428105))

(declare-fun m!4428107 () Bool)

(assert (=> b!3871427 m!4428107))

(declare-fun m!4428109 () Bool)

(assert (=> b!3871427 m!4428109))

(assert (=> b!3871427 m!4428101))

(declare-fun m!4428111 () Bool)

(assert (=> b!3871427 m!4428111))

(declare-fun m!4428113 () Bool)

(assert (=> b!3871421 m!4428113))

(declare-fun m!4428115 () Bool)

(assert (=> b!3871419 m!4428115))

(declare-fun m!4428117 () Bool)

(assert (=> b!3871419 m!4428117))

(declare-fun m!4428119 () Bool)

(assert (=> b!3871414 m!4428119))

(declare-fun m!4428121 () Bool)

(assert (=> b!3871414 m!4428121))

(declare-fun m!4428123 () Bool)

(assert (=> b!3871428 m!4428123))

(declare-fun m!4428125 () Bool)

(assert (=> b!3871399 m!4428125))

(declare-fun m!4428127 () Bool)

(assert (=> b!3871399 m!4428127))

(declare-fun m!4428129 () Bool)

(assert (=> b!3871399 m!4428129))

(declare-fun m!4428131 () Bool)

(assert (=> b!3871399 m!4428131))

(declare-fun m!4428133 () Bool)

(assert (=> b!3871393 m!4428133))

(declare-fun m!4428135 () Bool)

(assert (=> b!3871393 m!4428135))

(declare-fun m!4428137 () Bool)

(assert (=> b!3871401 m!4428137))

(declare-fun m!4428139 () Bool)

(assert (=> b!3871398 m!4428139))

(declare-fun m!4428141 () Bool)

(assert (=> b!3871408 m!4428141))

(declare-fun m!4428143 () Bool)

(assert (=> b!3871408 m!4428143))

(declare-fun m!4428145 () Bool)

(assert (=> b!3871408 m!4428145))

(declare-fun m!4428147 () Bool)

(assert (=> b!3871395 m!4428147))

(declare-fun m!4428149 () Bool)

(assert (=> b!3871395 m!4428149))

(declare-fun m!4428151 () Bool)

(assert (=> b!3871423 m!4428151))

(declare-fun m!4428153 () Bool)

(assert (=> b!3871411 m!4428153))

(assert (=> b!3871411 m!4428127))

(declare-fun m!4428155 () Bool)

(assert (=> b!3871396 m!4428155))

(declare-fun m!4428157 () Bool)

(assert (=> b!3871396 m!4428157))

(declare-fun m!4428159 () Bool)

(assert (=> b!3871396 m!4428159))

(assert (=> b!3871396 m!4428049))

(assert (=> b!3871396 m!4428051))

(check-sat b_and!290195 b_and!290191 (not b!3871430) b_and!290197 (not b!3871409) (not b!3871405) (not b_next!105245) (not b!3871394) (not b!3871412) (not b!3871397) (not bm!282727) (not b!3871423) (not b_next!105239) (not b!3871432) (not b!3871399) (not b!3871411) (not b!3871401) (not b!3871416) b_and!290193 b_and!290187 (not b!3871414) b_and!290189 (not b!3871398) (not b!3871425) (not b!3871421) (not b!3871410) (not b!3871428) (not b!3871395) (not b!3871403) (not b!3871424) (not b!3871406) (not b_next!105237) (not b_next!105243) (not b!3871393) (not b!3871390) (not b!3871433) (not b!3871408) (not b!3871419) (not b!3871427) (not b!3871391) (not b!3871396) (not b!3871400) tp_is_empty!19537 (not b!3871434) (not b!3871420) (not b_next!105247) (not b!3871426) (not b!3871417) (not b_next!105241) (not b!3871429))
(check-sat (not b_next!105239) b_and!290195 b_and!290193 b_and!290191 b_and!290197 (not b_next!105245) (not b_next!105247) (not b_next!105241) b_and!290187 b_and!290189 (not b_next!105237) (not b_next!105243))
