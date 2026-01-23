; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!363660 () Bool)

(assert start!363660)

(declare-fun b!3874100 () Bool)

(declare-fun b_free!104701 () Bool)

(declare-fun b_next!105405 () Bool)

(assert (=> b!3874100 (= b_free!104701 (not b_next!105405))))

(declare-fun tp!1174569 () Bool)

(declare-fun b_and!290451 () Bool)

(assert (=> b!3874100 (= tp!1174569 b_and!290451)))

(declare-fun b_free!104703 () Bool)

(declare-fun b_next!105407 () Bool)

(assert (=> b!3874100 (= b_free!104703 (not b_next!105407))))

(declare-fun tp!1174570 () Bool)

(declare-fun b_and!290453 () Bool)

(assert (=> b!3874100 (= tp!1174570 b_and!290453)))

(declare-fun b!3874110 () Bool)

(declare-fun b_free!104705 () Bool)

(declare-fun b_next!105409 () Bool)

(assert (=> b!3874110 (= b_free!104705 (not b_next!105409))))

(declare-fun tp!1174573 () Bool)

(declare-fun b_and!290455 () Bool)

(assert (=> b!3874110 (= tp!1174573 b_and!290455)))

(declare-fun b_free!104707 () Bool)

(declare-fun b_next!105411 () Bool)

(assert (=> b!3874110 (= b_free!104707 (not b_next!105411))))

(declare-fun tp!1174582 () Bool)

(declare-fun b_and!290457 () Bool)

(assert (=> b!3874110 (= tp!1174582 b_and!290457)))

(declare-fun b!3874102 () Bool)

(declare-fun b_free!104709 () Bool)

(declare-fun b_next!105413 () Bool)

(assert (=> b!3874102 (= b_free!104709 (not b_next!105413))))

(declare-fun tp!1174579 () Bool)

(declare-fun b_and!290459 () Bool)

(assert (=> b!3874102 (= tp!1174579 b_and!290459)))

(declare-fun b_free!104711 () Bool)

(declare-fun b_next!105415 () Bool)

(assert (=> b!3874102 (= b_free!104711 (not b_next!105415))))

(declare-fun tp!1174568 () Bool)

(declare-fun b_and!290461 () Bool)

(assert (=> b!3874102 (= tp!1174568 b_and!290461)))

(declare-fun res!1569367 () Bool)

(declare-fun e!2396550 () Bool)

(assert (=> start!363660 (=> (not res!1569367) (not e!2396550))))

(declare-datatypes ((LexerInterface!5977 0))(
  ( (LexerInterfaceExt!5974 (__x!25453 Int)) (Lexer!5975) )
))
(declare-fun thiss!20629 () LexerInterface!5977)

(get-info :version)

(assert (=> start!363660 (= res!1569367 ((_ is Lexer!5975) thiss!20629))))

(assert (=> start!363660 e!2396550))

(declare-fun e!2396534 () Bool)

(assert (=> start!363660 e!2396534))

(assert (=> start!363660 true))

(declare-fun e!2396544 () Bool)

(assert (=> start!363660 e!2396544))

(declare-fun e!2396553 () Bool)

(assert (=> start!363660 e!2396553))

(declare-fun e!2396551 () Bool)

(assert (=> start!363660 e!2396551))

(declare-fun e!2396527 () Bool)

(assert (=> start!363660 e!2396527))

(declare-fun e!2396559 () Bool)

(assert (=> start!363660 e!2396559))

(declare-fun b!3874087 () Bool)

(declare-fun e!2396525 () Bool)

(declare-fun e!2396560 () Bool)

(assert (=> b!3874087 (= e!2396525 e!2396560)))

(declare-fun res!1569364 () Bool)

(assert (=> b!3874087 (=> res!1569364 e!2396560)))

(declare-datatypes ((List!41290 0))(
  ( (Nil!41166) (Cons!41166 (h!46586 (_ BitVec 16)) (t!314741 List!41290)) )
))
(declare-datatypes ((TokenValue!6618 0))(
  ( (FloatLiteralValue!13236 (text!46771 List!41290)) (TokenValueExt!6617 (__x!25454 Int)) (Broken!33090 (value!202666 List!41290)) (Object!6741) (End!6618) (Def!6618) (Underscore!6618) (Match!6618) (Else!6618) (Error!6618) (Case!6618) (If!6618) (Extends!6618) (Abstract!6618) (Class!6618) (Val!6618) (DelimiterValue!13236 (del!6678 List!41290)) (KeywordValue!6624 (value!202667 List!41290)) (CommentValue!13236 (value!202668 List!41290)) (WhitespaceValue!13236 (value!202669 List!41290)) (IndentationValue!6618 (value!202670 List!41290)) (String!46807) (Int32!6618) (Broken!33091 (value!202671 List!41290)) (Boolean!6619) (Unit!59082) (OperatorValue!6621 (op!6678 List!41290)) (IdentifierValue!13236 (value!202672 List!41290)) (IdentifierValue!13237 (value!202673 List!41290)) (WhitespaceValue!13237 (value!202674 List!41290)) (True!13236) (False!13236) (Broken!33092 (value!202675 List!41290)) (Broken!33093 (value!202676 List!41290)) (True!13237) (RightBrace!6618) (RightBracket!6618) (Colon!6618) (Null!6618) (Comma!6618) (LeftBracket!6618) (False!13237) (LeftBrace!6618) (ImaginaryLiteralValue!6618 (text!46772 List!41290)) (StringLiteralValue!19854 (value!202677 List!41290)) (EOFValue!6618 (value!202678 List!41290)) (IdentValue!6618 (value!202679 List!41290)) (DelimiterValue!13237 (value!202680 List!41290)) (DedentValue!6618 (value!202681 List!41290)) (NewLineValue!6618 (value!202682 List!41290)) (IntegerValue!19854 (value!202683 (_ BitVec 32)) (text!46773 List!41290)) (IntegerValue!19855 (value!202684 Int) (text!46774 List!41290)) (Times!6618) (Or!6618) (Equal!6618) (Minus!6618) (Broken!33094 (value!202685 List!41290)) (And!6618) (Div!6618) (LessEqual!6618) (Mod!6618) (Concat!17911) (Not!6618) (Plus!6618) (SpaceValue!6618 (value!202686 List!41290)) (IntegerValue!19856 (value!202687 Int) (text!46775 List!41290)) (StringLiteralValue!19855 (text!46776 List!41290)) (FloatLiteralValue!13237 (text!46777 List!41290)) (BytesLiteralValue!6618 (value!202688 List!41290)) (CommentValue!13237 (value!202689 List!41290)) (StringLiteralValue!19856 (value!202690 List!41290)) (ErrorTokenValue!6618 (msg!6679 List!41290)) )
))
(declare-datatypes ((C!22772 0))(
  ( (C!22773 (val!13480 Int)) )
))
(declare-datatypes ((Regex!11293 0))(
  ( (ElementMatch!11293 (c!674098 C!22772)) (Concat!17912 (regOne!23098 Regex!11293) (regTwo!23098 Regex!11293)) (EmptyExpr!11293) (Star!11293 (reg!11622 Regex!11293)) (EmptyLang!11293) (Union!11293 (regOne!23099 Regex!11293) (regTwo!23099 Regex!11293)) )
))
(declare-datatypes ((String!46808 0))(
  ( (String!46809 (value!202691 String)) )
))
(declare-datatypes ((List!41291 0))(
  ( (Nil!41167) (Cons!41167 (h!46587 C!22772) (t!314742 List!41291)) )
))
(declare-datatypes ((IArray!25203 0))(
  ( (IArray!25204 (innerList!12659 List!41291)) )
))
(declare-datatypes ((Conc!12599 0))(
  ( (Node!12599 (left!31611 Conc!12599) (right!31941 Conc!12599) (csize!25428 Int) (cheight!12810 Int)) (Leaf!19500 (xs!15905 IArray!25203) (csize!25429 Int)) (Empty!12599) )
))
(declare-datatypes ((BalanceConc!24792 0))(
  ( (BalanceConc!24793 (c!674099 Conc!12599)) )
))
(declare-datatypes ((TokenValueInjection!12664 0))(
  ( (TokenValueInjection!12665 (toValue!8816 Int) (toChars!8675 Int)) )
))
(declare-datatypes ((Rule!12576 0))(
  ( (Rule!12577 (regex!6388 Regex!11293) (tag!7248 String!46808) (isSeparator!6388 Bool) (transformation!6388 TokenValueInjection!12664)) )
))
(declare-datatypes ((Token!11914 0))(
  ( (Token!11915 (value!202692 TokenValue!6618) (rule!9280 Rule!12576) (size!30937 Int) (originalCharacters!6988 List!41291)) )
))
(declare-datatypes ((List!41292 0))(
  ( (Nil!41168) (Cons!41168 (h!46588 Token!11914) (t!314743 List!41292)) )
))
(declare-fun lt!1349753 () List!41292)

(declare-fun lt!1349720 () List!41292)

(assert (=> b!3874087 (= res!1569364 (not (= lt!1349753 lt!1349720)))))

(declare-fun lt!1349733 () List!41292)

(declare-fun lt!1349718 () List!41292)

(declare-fun ++!10533 (List!41292 List!41292) List!41292)

(assert (=> b!3874087 (= lt!1349753 (++!10533 lt!1349733 lt!1349718))))

(declare-fun lt!1349708 () List!41292)

(declare-fun suffixTokens!72 () List!41292)

(assert (=> b!3874087 (= lt!1349753 (++!10533 (++!10533 lt!1349733 lt!1349708) suffixTokens!72))))

(declare-datatypes ((Unit!59083 0))(
  ( (Unit!59084) )
))
(declare-fun lt!1349747 () Unit!59083)

(declare-fun lemmaConcatAssociativity!2247 (List!41292 List!41292 List!41292) Unit!59083)

(assert (=> b!3874087 (= lt!1349747 (lemmaConcatAssociativity!2247 lt!1349733 lt!1349708 suffixTokens!72))))

(declare-fun lt!1349719 () Unit!59083)

(declare-fun e!2396548 () Unit!59083)

(assert (=> b!3874087 (= lt!1349719 e!2396548)))

(declare-fun c!674097 () Bool)

(declare-fun isEmpty!24430 (List!41292) Bool)

(assert (=> b!3874087 (= c!674097 (isEmpty!24430 lt!1349708))))

(declare-fun b!3874088 () Bool)

(declare-fun tp_is_empty!19557 () Bool)

(declare-fun tp!1174575 () Bool)

(assert (=> b!3874088 (= e!2396559 (and tp_is_empty!19557 tp!1174575))))

(declare-fun b!3874089 () Bool)

(declare-fun tp!1174581 () Bool)

(assert (=> b!3874089 (= e!2396534 (and tp_is_empty!19557 tp!1174581))))

(declare-fun tp!1174583 () Bool)

(declare-fun prefixTokens!80 () List!41292)

(declare-fun b!3874090 () Bool)

(declare-fun e!2396546 () Bool)

(declare-fun inv!55326 (Token!11914) Bool)

(assert (=> b!3874090 (= e!2396551 (and (inv!55326 (h!46588 prefixTokens!80)) e!2396546 tp!1174583))))

(declare-fun b!3874091 () Bool)

(declare-fun res!1569365 () Bool)

(declare-fun e!2396564 () Bool)

(assert (=> b!3874091 (=> res!1569365 e!2396564)))

(declare-datatypes ((tuple2!40394 0))(
  ( (tuple2!40395 (_1!23331 Token!11914) (_2!23331 List!41291)) )
))
(declare-datatypes ((Option!8806 0))(
  ( (None!8805) (Some!8805 (v!39103 tuple2!40394)) )
))
(declare-fun lt!1349737 () Option!8806)

(declare-fun head!8210 (List!41292) Token!11914)

(assert (=> b!3874091 (= res!1569365 (not (= (head!8210 prefixTokens!80) (_1!23331 (v!39103 lt!1349737)))))))

(declare-fun b!3874092 () Bool)

(declare-fun e!2396538 () Bool)

(declare-fun e!2396558 () Bool)

(assert (=> b!3874092 (= e!2396538 e!2396558)))

(declare-fun res!1569361 () Bool)

(assert (=> b!3874092 (=> res!1569361 e!2396558)))

(declare-fun lt!1349743 () List!41291)

(declare-fun lt!1349731 () List!41291)

(declare-fun lt!1349735 () List!41291)

(assert (=> b!3874092 (= res!1569361 (or (not (= lt!1349731 lt!1349735)) (not (= lt!1349731 lt!1349743))))))

(declare-fun lt!1349729 () List!41291)

(declare-fun suffix!1176 () List!41291)

(declare-fun ++!10534 (List!41291 List!41291) List!41291)

(assert (=> b!3874092 (= lt!1349731 (++!10534 lt!1349729 suffix!1176))))

(declare-fun b!3874093 () Bool)

(declare-fun e!2396556 () Bool)

(assert (=> b!3874093 (= e!2396556 e!2396564)))

(declare-fun res!1569378 () Bool)

(assert (=> b!3874093 (=> res!1569378 e!2396564)))

(declare-fun lt!1349712 () Int)

(declare-fun lt!1349707 () Int)

(assert (=> b!3874093 (= res!1569378 (<= lt!1349712 lt!1349707))))

(declare-fun lt!1349727 () Unit!59083)

(declare-fun e!2396532 () Unit!59083)

(assert (=> b!3874093 (= lt!1349727 e!2396532)))

(declare-fun c!674094 () Bool)

(assert (=> b!3874093 (= c!674094 (= lt!1349712 lt!1349707))))

(declare-fun lt!1349748 () Unit!59083)

(declare-fun e!2396533 () Unit!59083)

(assert (=> b!3874093 (= lt!1349748 e!2396533)))

(declare-fun c!674096 () Bool)

(assert (=> b!3874093 (= c!674096 (< lt!1349712 lt!1349707))))

(declare-fun size!30938 (List!41291) Int)

(assert (=> b!3874093 (= lt!1349707 (size!30938 suffix!1176))))

(assert (=> b!3874093 (= lt!1349712 (size!30938 (_2!23331 (v!39103 lt!1349737))))))

(declare-fun e!2396541 () Bool)

(declare-fun b!3874094 () Bool)

(declare-fun tp!1174580 () Bool)

(assert (=> b!3874094 (= e!2396527 (and (inv!55326 (h!46588 suffixTokens!72)) e!2396541 tp!1174580))))

(declare-fun b!3874095 () Bool)

(declare-fun Unit!59085 () Unit!59083)

(assert (=> b!3874095 (= e!2396548 Unit!59085)))

(declare-datatypes ((List!41293 0))(
  ( (Nil!41169) (Cons!41169 (h!46589 Rule!12576) (t!314744 List!41293)) )
))
(declare-fun rules!2768 () List!41293)

(declare-fun lt!1349732 () Unit!59083)

(declare-fun suffixResult!91 () List!41291)

(declare-fun lemmaLexWithSmallerInputCannotProduceSameResults!48 (LexerInterface!5977 List!41293 List!41291 List!41291 List!41292 List!41291) Unit!59083)

(assert (=> b!3874095 (= lt!1349732 (lemmaLexWithSmallerInputCannotProduceSameResults!48 thiss!20629 rules!2768 (_2!23331 (v!39103 lt!1349737)) suffix!1176 suffixTokens!72 suffixResult!91))))

(assert (=> b!3874095 false))

(declare-fun b!3874096 () Bool)

(declare-fun tp!1174574 () Bool)

(assert (=> b!3874096 (= e!2396544 (and tp_is_empty!19557 tp!1174574))))

(declare-fun b!3874097 () Bool)

(declare-fun res!1569375 () Bool)

(assert (=> b!3874097 (=> (not res!1569375) (not e!2396550))))

(declare-fun isEmpty!24431 (List!41293) Bool)

(assert (=> b!3874097 (= res!1569375 (not (isEmpty!24431 rules!2768)))))

(declare-fun b!3874098 () Bool)

(declare-fun Unit!59086 () Unit!59083)

(assert (=> b!3874098 (= e!2396533 Unit!59086)))

(declare-fun b!3874099 () Bool)

(declare-fun Unit!59087 () Unit!59083)

(assert (=> b!3874099 (= e!2396532 Unit!59087)))

(declare-fun e!2396563 () Bool)

(assert (=> b!3874100 (= e!2396563 (and tp!1174569 tp!1174570))))

(declare-fun b!3874101 () Bool)

(declare-fun res!1569366 () Bool)

(assert (=> b!3874101 (=> res!1569366 e!2396556)))

(declare-datatypes ((tuple2!40396 0))(
  ( (tuple2!40397 (_1!23332 List!41292) (_2!23332 List!41291)) )
))
(declare-fun lt!1349717 () tuple2!40396)

(assert (=> b!3874101 (= res!1569366 (or (not (= lt!1349717 (tuple2!40397 (_1!23332 lt!1349717) (_2!23332 lt!1349717)))) (= (_2!23331 (v!39103 lt!1349737)) suffix!1176)))))

(declare-fun e!2396540 () Bool)

(assert (=> b!3874102 (= e!2396540 (and tp!1174579 tp!1174568))))

(declare-fun b!3874103 () Bool)

(declare-fun e!2396526 () Bool)

(declare-fun e!2396557 () Bool)

(assert (=> b!3874103 (= e!2396526 (not e!2396557))))

(declare-fun res!1569360 () Bool)

(assert (=> b!3874103 (=> res!1569360 e!2396557)))

(assert (=> b!3874103 (= res!1569360 (not (= lt!1349743 lt!1349735)))))

(declare-fun lexList!1745 (LexerInterface!5977 List!41293 List!41291) tuple2!40396)

(assert (=> b!3874103 (= lt!1349717 (lexList!1745 thiss!20629 rules!2768 (_2!23331 (v!39103 lt!1349737))))))

(declare-fun lt!1349738 () TokenValue!6618)

(declare-fun lt!1349754 () Int)

(declare-fun lt!1349721 () List!41291)

(declare-fun lt!1349744 () List!41291)

(assert (=> b!3874103 (and (= (size!30937 (_1!23331 (v!39103 lt!1349737))) lt!1349754) (= (originalCharacters!6988 (_1!23331 (v!39103 lt!1349737))) lt!1349744) (= (v!39103 lt!1349737) (tuple2!40395 (Token!11915 lt!1349738 (rule!9280 (_1!23331 (v!39103 lt!1349737))) lt!1349754 lt!1349744) lt!1349721)))))

(assert (=> b!3874103 (= lt!1349754 (size!30938 lt!1349744))))

(declare-fun e!2396537 () Bool)

(assert (=> b!3874103 e!2396537))

(declare-fun res!1569376 () Bool)

(assert (=> b!3874103 (=> (not res!1569376) (not e!2396537))))

(assert (=> b!3874103 (= res!1569376 (= (value!202692 (_1!23331 (v!39103 lt!1349737))) lt!1349738))))

(declare-fun apply!9631 (TokenValueInjection!12664 BalanceConc!24792) TokenValue!6618)

(declare-fun seqFromList!4659 (List!41291) BalanceConc!24792)

(assert (=> b!3874103 (= lt!1349738 (apply!9631 (transformation!6388 (rule!9280 (_1!23331 (v!39103 lt!1349737)))) (seqFromList!4659 lt!1349744)))))

(assert (=> b!3874103 (= (_2!23331 (v!39103 lt!1349737)) lt!1349721)))

(declare-fun lt!1349749 () Unit!59083)

(declare-fun lemmaSamePrefixThenSameSuffix!1708 (List!41291 List!41291 List!41291 List!41291 List!41291) Unit!59083)

(assert (=> b!3874103 (= lt!1349749 (lemmaSamePrefixThenSameSuffix!1708 lt!1349744 (_2!23331 (v!39103 lt!1349737)) lt!1349744 lt!1349721 lt!1349735))))

(declare-fun getSuffix!1942 (List!41291 List!41291) List!41291)

(assert (=> b!3874103 (= lt!1349721 (getSuffix!1942 lt!1349735 lt!1349744))))

(declare-fun isPrefix!3487 (List!41291 List!41291) Bool)

(assert (=> b!3874103 (isPrefix!3487 lt!1349744 lt!1349743)))

(assert (=> b!3874103 (= lt!1349743 (++!10534 lt!1349744 (_2!23331 (v!39103 lt!1349737))))))

(declare-fun lt!1349722 () Unit!59083)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!2350 (List!41291 List!41291) Unit!59083)

(assert (=> b!3874103 (= lt!1349722 (lemmaConcatTwoListThenFirstIsPrefix!2350 lt!1349744 (_2!23331 (v!39103 lt!1349737))))))

(declare-fun list!15312 (BalanceConc!24792) List!41291)

(declare-fun charsOf!4216 (Token!11914) BalanceConc!24792)

(assert (=> b!3874103 (= lt!1349744 (list!15312 (charsOf!4216 (_1!23331 (v!39103 lt!1349737)))))))

(declare-fun ruleValid!2340 (LexerInterface!5977 Rule!12576) Bool)

(assert (=> b!3874103 (ruleValid!2340 thiss!20629 (rule!9280 (_1!23331 (v!39103 lt!1349737))))))

(declare-fun lt!1349706 () Unit!59083)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1420 (LexerInterface!5977 Rule!12576 List!41293) Unit!59083)

(assert (=> b!3874103 (= lt!1349706 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1420 thiss!20629 (rule!9280 (_1!23331 (v!39103 lt!1349737))) rules!2768))))

(declare-fun lt!1349713 () Unit!59083)

(declare-fun lemmaCharactersSize!1049 (Token!11914) Unit!59083)

(assert (=> b!3874103 (= lt!1349713 (lemmaCharactersSize!1049 (_1!23331 (v!39103 lt!1349737))))))

(declare-fun b!3874104 () Bool)

(declare-fun e!2396535 () Unit!59083)

(declare-fun Unit!59088 () Unit!59083)

(assert (=> b!3874104 (= e!2396535 Unit!59088)))

(declare-fun lt!1349710 () Unit!59083)

(declare-fun lt!1349740 () List!41292)

(declare-fun lt!1349751 () tuple2!40394)

(declare-fun lemmaLexWithSmallerInputCannotProduceAdditionalTokens!48 (LexerInterface!5977 List!41293 List!41291 List!41291 List!41292 List!41291 List!41292) Unit!59083)

(assert (=> b!3874104 (= lt!1349710 (lemmaLexWithSmallerInputCannotProduceAdditionalTokens!48 thiss!20629 rules!2768 suffix!1176 (_2!23331 lt!1349751) suffixTokens!72 suffixResult!91 lt!1349740))))

(declare-fun res!1569380 () Bool)

(declare-fun call!282774 () tuple2!40396)

(assert (=> b!3874104 (= res!1569380 (not (= call!282774 (tuple2!40397 (++!10533 lt!1349740 suffixTokens!72) suffixResult!91))))))

(declare-fun e!2396530 () Bool)

(assert (=> b!3874104 (=> (not res!1569380) (not e!2396530))))

(assert (=> b!3874104 e!2396530))

(declare-fun b!3874105 () Bool)

(assert (=> b!3874105 (= e!2396560 (not (= prefixTokens!80 Nil!41168)))))

(declare-fun lt!1349728 () List!41291)

(assert (=> b!3874105 (= (lexList!1745 thiss!20629 rules!2768 lt!1349728) (tuple2!40397 lt!1349708 Nil!41167))))

(declare-fun lt!1349711 () Unit!59083)

(declare-fun lemmaLexThenLexPrefix!577 (LexerInterface!5977 List!41293 List!41291 List!41291 List!41292 List!41292 List!41291) Unit!59083)

(assert (=> b!3874105 (= lt!1349711 (lemmaLexThenLexPrefix!577 thiss!20629 rules!2768 lt!1349728 suffix!1176 lt!1349708 suffixTokens!72 suffixResult!91))))

(declare-fun b!3874106 () Bool)

(assert (=> b!3874106 (= e!2396557 e!2396556)))

(declare-fun res!1569381 () Bool)

(assert (=> b!3874106 (=> res!1569381 e!2396556)))

(declare-fun lt!1349752 () tuple2!40396)

(assert (=> b!3874106 (= res!1569381 (not (= lt!1349752 (tuple2!40397 (++!10533 lt!1349733 (_1!23332 lt!1349717)) (_2!23332 lt!1349717)))))))

(assert (=> b!3874106 (= lt!1349733 (Cons!41168 (_1!23331 (v!39103 lt!1349737)) Nil!41168))))

(declare-fun b!3874107 () Bool)

(declare-fun e!2396547 () Bool)

(declare-fun tp!1174576 () Bool)

(declare-fun inv!55323 (String!46808) Bool)

(declare-fun inv!55327 (TokenValueInjection!12664) Bool)

(assert (=> b!3874107 (= e!2396547 (and tp!1174576 (inv!55323 (tag!7248 (rule!9280 (h!46588 suffixTokens!72)))) (inv!55327 (transformation!6388 (rule!9280 (h!46588 suffixTokens!72)))) e!2396540))))

(declare-fun b!3874108 () Bool)

(declare-fun e!2396528 () Unit!59083)

(declare-fun Unit!59089 () Unit!59083)

(assert (=> b!3874108 (= e!2396528 Unit!59089)))

(declare-fun b!3874109 () Bool)

(declare-fun e!2396545 () Bool)

(assert (=> b!3874109 (= e!2396558 e!2396545)))

(declare-fun res!1569369 () Bool)

(assert (=> b!3874109 (=> res!1569369 e!2396545)))

(declare-fun lt!1349739 () List!41291)

(assert (=> b!3874109 (= res!1569369 (or (not (= lt!1349735 lt!1349731)) (not (= lt!1349735 lt!1349739)) (not (= lt!1349743 lt!1349739))))))

(assert (=> b!3874109 (= lt!1349731 lt!1349739)))

(declare-fun lt!1349709 () List!41291)

(assert (=> b!3874109 (= lt!1349739 (++!10534 lt!1349744 lt!1349709))))

(assert (=> b!3874109 (= lt!1349709 (++!10534 lt!1349728 suffix!1176))))

(declare-fun lt!1349725 () Unit!59083)

(declare-fun lemmaConcatAssociativity!2248 (List!41291 List!41291 List!41291) Unit!59083)

(assert (=> b!3874109 (= lt!1349725 (lemmaConcatAssociativity!2248 lt!1349744 lt!1349728 suffix!1176))))

(declare-fun e!2396524 () Bool)

(assert (=> b!3874110 (= e!2396524 (and tp!1174573 tp!1174582))))

(declare-fun b!3874111 () Bool)

(declare-fun res!1569363 () Bool)

(assert (=> b!3874111 (=> (not res!1569363) (not e!2396550))))

(declare-fun prefix!426 () List!41291)

(declare-fun isEmpty!24432 (List!41291) Bool)

(assert (=> b!3874111 (= res!1569363 (not (isEmpty!24432 prefix!426)))))

(declare-fun b!3874112 () Bool)

(declare-fun Unit!59090 () Unit!59083)

(assert (=> b!3874112 (= e!2396548 Unit!59090)))

(declare-fun b!3874113 () Bool)

(declare-fun e!2396552 () Bool)

(assert (=> b!3874113 (= e!2396550 e!2396552)))

(declare-fun res!1569377 () Bool)

(assert (=> b!3874113 (=> (not res!1569377) (not e!2396552))))

(assert (=> b!3874113 (= res!1569377 (= lt!1349752 (tuple2!40397 lt!1349720 suffixResult!91)))))

(assert (=> b!3874113 (= lt!1349752 (lexList!1745 thiss!20629 rules!2768 lt!1349735))))

(assert (=> b!3874113 (= lt!1349720 (++!10533 prefixTokens!80 suffixTokens!72))))

(assert (=> b!3874113 (= lt!1349735 (++!10534 prefix!426 suffix!1176))))

(declare-fun b!3874114 () Bool)

(declare-fun Unit!59091 () Unit!59083)

(assert (=> b!3874114 (= e!2396535 Unit!59091)))

(declare-fun lt!1349714 () Unit!59083)

(declare-fun lemmaConcatSameAndSameSizesThenSameLists!472 (List!41291 List!41291 List!41291 List!41291) Unit!59083)

(assert (=> b!3874114 (= lt!1349714 (lemmaConcatSameAndSameSizesThenSameLists!472 lt!1349744 (_2!23331 (v!39103 lt!1349737)) lt!1349744 (_2!23331 lt!1349751)))))

(assert (=> b!3874114 (= (_2!23331 (v!39103 lt!1349737)) (_2!23331 lt!1349751))))

(declare-fun lt!1349745 () Unit!59083)

(assert (=> b!3874114 (= lt!1349745 (lemmaLexWithSmallerInputCannotProduceSameResults!48 thiss!20629 rules!2768 suffix!1176 (_2!23331 lt!1349751) suffixTokens!72 suffixResult!91))))

(declare-fun res!1569372 () Bool)

(declare-fun lt!1349746 () tuple2!40396)

(assert (=> b!3874114 (= res!1569372 (not (= call!282774 lt!1349746)))))

(declare-fun e!2396554 () Bool)

(assert (=> b!3874114 (=> (not res!1569372) (not e!2396554))))

(assert (=> b!3874114 e!2396554))

(declare-fun b!3874115 () Bool)

(declare-fun res!1569359 () Bool)

(assert (=> b!3874115 (=> (not res!1569359) (not e!2396550))))

(declare-fun rulesInvariant!5320 (LexerInterface!5977 List!41293) Bool)

(assert (=> b!3874115 (= res!1569359 (rulesInvariant!5320 thiss!20629 rules!2768))))

(declare-fun b!3874116 () Bool)

(declare-fun Unit!59092 () Unit!59083)

(assert (=> b!3874116 (= e!2396533 Unit!59092)))

(declare-fun lt!1349715 () Int)

(assert (=> b!3874116 (= lt!1349715 (size!30938 lt!1349735))))

(declare-fun lt!1349750 () Unit!59083)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1261 (LexerInterface!5977 List!41293 List!41291 List!41291 List!41291 Rule!12576) Unit!59083)

(assert (=> b!3874116 (= lt!1349750 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1261 thiss!20629 rules!2768 lt!1349744 lt!1349735 (_2!23331 (v!39103 lt!1349737)) (rule!9280 (_1!23331 (v!39103 lt!1349737)))))))

(declare-fun maxPrefixOneRule!2363 (LexerInterface!5977 Rule!12576 List!41291) Option!8806)

(assert (=> b!3874116 (= (maxPrefixOneRule!2363 thiss!20629 (rule!9280 (_1!23331 (v!39103 lt!1349737))) lt!1349735) (Some!8805 (tuple2!40395 (Token!11915 lt!1349738 (rule!9280 (_1!23331 (v!39103 lt!1349737))) lt!1349754 lt!1349744) (_2!23331 (v!39103 lt!1349737)))))))

(declare-fun get!13622 (Option!8806) tuple2!40394)

(assert (=> b!3874116 (= lt!1349751 (get!13622 lt!1349737))))

(declare-fun c!674095 () Bool)

(assert (=> b!3874116 (= c!674095 (< (size!30938 (_2!23331 lt!1349751)) lt!1349707))))

(declare-fun lt!1349726 () Unit!59083)

(assert (=> b!3874116 (= lt!1349726 e!2396528)))

(assert (=> b!3874116 false))

(declare-fun b!3874117 () Bool)

(declare-fun e!2396562 () Bool)

(assert (=> b!3874117 (= e!2396545 e!2396562)))

(declare-fun res!1569373 () Bool)

(assert (=> b!3874117 (=> res!1569373 e!2396562)))

(assert (=> b!3874117 (= res!1569373 (not (= lt!1349709 (_2!23331 (v!39103 lt!1349737)))))))

(assert (=> b!3874117 (= (_2!23331 (v!39103 lt!1349737)) lt!1349709)))

(declare-fun lt!1349723 () Unit!59083)

(assert (=> b!3874117 (= lt!1349723 (lemmaSamePrefixThenSameSuffix!1708 lt!1349744 (_2!23331 (v!39103 lt!1349737)) lt!1349744 lt!1349709 lt!1349735))))

(assert (=> b!3874117 (isPrefix!3487 lt!1349744 lt!1349739)))

(declare-fun lt!1349716 () Unit!59083)

(assert (=> b!3874117 (= lt!1349716 (lemmaConcatTwoListThenFirstIsPrefix!2350 lt!1349744 lt!1349709))))

(declare-fun b!3874118 () Bool)

(declare-fun e!2396549 () Bool)

(assert (=> b!3874118 (= e!2396549 e!2396538)))

(declare-fun res!1569379 () Bool)

(assert (=> b!3874118 (=> res!1569379 e!2396538)))

(assert (=> b!3874118 (= res!1569379 (not (= lt!1349729 prefix!426)))))

(assert (=> b!3874118 (= lt!1349729 (++!10534 lt!1349744 lt!1349728))))

(assert (=> b!3874118 (= lt!1349728 (getSuffix!1942 prefix!426 lt!1349744))))

(declare-fun e!2396561 () Bool)

(declare-fun b!3874119 () Bool)

(declare-fun tp!1174577 () Bool)

(declare-fun inv!21 (TokenValue!6618) Bool)

(assert (=> b!3874119 (= e!2396546 (and (inv!21 (value!202692 (h!46588 prefixTokens!80))) e!2396561 tp!1174577))))

(declare-fun b!3874120 () Bool)

(declare-fun Unit!59093 () Unit!59083)

(assert (=> b!3874120 (= e!2396532 Unit!59093)))

(declare-fun lt!1349755 () Unit!59083)

(assert (=> b!3874120 (= lt!1349755 (lemmaConcatTwoListThenFirstIsPrefix!2350 prefix!426 suffix!1176))))

(assert (=> b!3874120 (isPrefix!3487 prefix!426 lt!1349735)))

(declare-fun lt!1349730 () Unit!59083)

(declare-fun lemmaIsPrefixSameLengthThenSameList!739 (List!41291 List!41291 List!41291) Unit!59083)

(assert (=> b!3874120 (= lt!1349730 (lemmaIsPrefixSameLengthThenSameList!739 lt!1349744 prefix!426 lt!1349735))))

(assert (=> b!3874120 (= lt!1349744 prefix!426)))

(declare-fun lt!1349741 () Unit!59083)

(assert (=> b!3874120 (= lt!1349741 (lemmaSamePrefixThenSameSuffix!1708 lt!1349744 (_2!23331 (v!39103 lt!1349737)) prefix!426 suffix!1176 lt!1349735))))

(assert (=> b!3874120 false))

(declare-fun b!3874121 () Bool)

(declare-fun res!1569371 () Bool)

(assert (=> b!3874121 (=> res!1569371 e!2396560)))

(declare-fun lt!1349724 () tuple2!40396)

(assert (=> b!3874121 (= res!1569371 (not (= (lexList!1745 thiss!20629 rules!2768 lt!1349709) lt!1349724)))))

(declare-fun bm!282769 () Bool)

(assert (=> bm!282769 (= call!282774 (lexList!1745 thiss!20629 rules!2768 (_2!23331 lt!1349751)))))

(declare-fun b!3874122 () Bool)

(declare-fun e!2396531 () Bool)

(assert (=> b!3874122 (= e!2396531 e!2396526)))

(declare-fun res!1569358 () Bool)

(assert (=> b!3874122 (=> (not res!1569358) (not e!2396526))))

(assert (=> b!3874122 (= res!1569358 ((_ is Some!8805) lt!1349737))))

(declare-fun maxPrefix!3281 (LexerInterface!5977 List!41293 List!41291) Option!8806)

(assert (=> b!3874122 (= lt!1349737 (maxPrefix!3281 thiss!20629 rules!2768 lt!1349735))))

(declare-fun b!3874123 () Bool)

(assert (=> b!3874123 (= e!2396552 e!2396531)))

(declare-fun res!1569368 () Bool)

(assert (=> b!3874123 (=> (not res!1569368) (not e!2396531))))

(assert (=> b!3874123 (= res!1569368 (= (lexList!1745 thiss!20629 rules!2768 suffix!1176) lt!1349746))))

(assert (=> b!3874123 (= lt!1349746 (tuple2!40397 suffixTokens!72 suffixResult!91))))

(declare-fun b!3874124 () Bool)

(assert (=> b!3874124 (= e!2396564 e!2396549)))

(declare-fun res!1569374 () Bool)

(assert (=> b!3874124 (=> res!1569374 e!2396549)))

(assert (=> b!3874124 (= res!1569374 (>= lt!1349754 (size!30938 prefix!426)))))

(assert (=> b!3874124 (isPrefix!3487 lt!1349744 prefix!426)))

(declare-fun lt!1349742 () Unit!59083)

(declare-fun lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!237 (List!41291 List!41291 List!41291) Unit!59083)

(assert (=> b!3874124 (= lt!1349742 (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!237 prefix!426 lt!1349744 lt!1349735))))

(assert (=> b!3874124 (isPrefix!3487 prefix!426 lt!1349735)))

(declare-fun lt!1349734 () Unit!59083)

(assert (=> b!3874124 (= lt!1349734 (lemmaConcatTwoListThenFirstIsPrefix!2350 prefix!426 suffix!1176))))

(declare-fun b!3874125 () Bool)

(declare-fun c!674093 () Bool)

(assert (=> b!3874125 (= c!674093 (isEmpty!24430 lt!1349740))))

(declare-fun tail!5927 (List!41292) List!41292)

(assert (=> b!3874125 (= lt!1349740 (tail!5927 prefixTokens!80))))

(assert (=> b!3874125 (= e!2396528 e!2396535)))

(declare-fun b!3874126 () Bool)

(declare-fun res!1569370 () Bool)

(assert (=> b!3874126 (=> (not res!1569370) (not e!2396550))))

(assert (=> b!3874126 (= res!1569370 (not (isEmpty!24430 prefixTokens!80)))))

(declare-fun tp!1174571 () Bool)

(declare-fun b!3874127 () Bool)

(assert (=> b!3874127 (= e!2396541 (and (inv!21 (value!202692 (h!46588 suffixTokens!72))) e!2396547 tp!1174571))))

(declare-fun b!3874128 () Bool)

(assert (=> b!3874128 (= e!2396554 false)))

(declare-fun b!3874129 () Bool)

(assert (=> b!3874129 (= e!2396562 e!2396525)))

(declare-fun res!1569362 () Bool)

(assert (=> b!3874129 (=> res!1569362 e!2396525)))

(assert (=> b!3874129 (= res!1569362 (not (= lt!1349717 lt!1349724)))))

(assert (=> b!3874129 (= lt!1349724 (tuple2!40397 lt!1349718 suffixResult!91))))

(assert (=> b!3874129 (= lt!1349718 (++!10533 lt!1349708 suffixTokens!72))))

(assert (=> b!3874129 (= lt!1349708 (tail!5927 prefixTokens!80))))

(assert (=> b!3874129 (isPrefix!3487 lt!1349728 lt!1349709)))

(declare-fun lt!1349736 () Unit!59083)

(assert (=> b!3874129 (= lt!1349736 (lemmaConcatTwoListThenFirstIsPrefix!2350 lt!1349728 suffix!1176))))

(declare-fun b!3874130 () Bool)

(declare-fun e!2396555 () Bool)

(declare-fun tp!1174572 () Bool)

(assert (=> b!3874130 (= e!2396553 (and e!2396555 tp!1174572))))

(declare-fun b!3874131 () Bool)

(assert (=> b!3874131 (= e!2396530 false)))

(declare-fun b!3874132 () Bool)

(declare-fun tp!1174584 () Bool)

(assert (=> b!3874132 (= e!2396561 (and tp!1174584 (inv!55323 (tag!7248 (rule!9280 (h!46588 prefixTokens!80)))) (inv!55327 (transformation!6388 (rule!9280 (h!46588 prefixTokens!80)))) e!2396524))))

(declare-fun b!3874133 () Bool)

(assert (=> b!3874133 (= e!2396537 (= (size!30937 (_1!23331 (v!39103 lt!1349737))) (size!30938 (originalCharacters!6988 (_1!23331 (v!39103 lt!1349737))))))))

(declare-fun b!3874134 () Bool)

(declare-fun tp!1174578 () Bool)

(assert (=> b!3874134 (= e!2396555 (and tp!1174578 (inv!55323 (tag!7248 (h!46589 rules!2768))) (inv!55327 (transformation!6388 (h!46589 rules!2768))) e!2396563))))

(assert (= (and start!363660 res!1569367) b!3874097))

(assert (= (and b!3874097 res!1569375) b!3874115))

(assert (= (and b!3874115 res!1569359) b!3874126))

(assert (= (and b!3874126 res!1569370) b!3874111))

(assert (= (and b!3874111 res!1569363) b!3874113))

(assert (= (and b!3874113 res!1569377) b!3874123))

(assert (= (and b!3874123 res!1569368) b!3874122))

(assert (= (and b!3874122 res!1569358) b!3874103))

(assert (= (and b!3874103 res!1569376) b!3874133))

(assert (= (and b!3874103 (not res!1569360)) b!3874106))

(assert (= (and b!3874106 (not res!1569381)) b!3874101))

(assert (= (and b!3874101 (not res!1569366)) b!3874093))

(assert (= (and b!3874093 c!674096) b!3874116))

(assert (= (and b!3874093 (not c!674096)) b!3874098))

(assert (= (and b!3874116 c!674095) b!3874125))

(assert (= (and b!3874116 (not c!674095)) b!3874108))

(assert (= (and b!3874125 c!674093) b!3874114))

(assert (= (and b!3874125 (not c!674093)) b!3874104))

(assert (= (and b!3874114 res!1569372) b!3874128))

(assert (= (and b!3874104 res!1569380) b!3874131))

(assert (= (or b!3874114 b!3874104) bm!282769))

(assert (= (and b!3874093 c!674094) b!3874120))

(assert (= (and b!3874093 (not c!674094)) b!3874099))

(assert (= (and b!3874093 (not res!1569378)) b!3874091))

(assert (= (and b!3874091 (not res!1569365)) b!3874124))

(assert (= (and b!3874124 (not res!1569374)) b!3874118))

(assert (= (and b!3874118 (not res!1569379)) b!3874092))

(assert (= (and b!3874092 (not res!1569361)) b!3874109))

(assert (= (and b!3874109 (not res!1569369)) b!3874117))

(assert (= (and b!3874117 (not res!1569373)) b!3874129))

(assert (= (and b!3874129 (not res!1569362)) b!3874087))

(assert (= (and b!3874087 c!674097) b!3874095))

(assert (= (and b!3874087 (not c!674097)) b!3874112))

(assert (= (and b!3874087 (not res!1569364)) b!3874121))

(assert (= (and b!3874121 (not res!1569371)) b!3874105))

(assert (= (and start!363660 ((_ is Cons!41167) suffixResult!91)) b!3874089))

(assert (= (and start!363660 ((_ is Cons!41167) suffix!1176)) b!3874096))

(assert (= b!3874134 b!3874100))

(assert (= b!3874130 b!3874134))

(assert (= (and start!363660 ((_ is Cons!41169) rules!2768)) b!3874130))

(assert (= b!3874132 b!3874110))

(assert (= b!3874119 b!3874132))

(assert (= b!3874090 b!3874119))

(assert (= (and start!363660 ((_ is Cons!41168) prefixTokens!80)) b!3874090))

(assert (= b!3874107 b!3874102))

(assert (= b!3874127 b!3874107))

(assert (= b!3874094 b!3874127))

(assert (= (and start!363660 ((_ is Cons!41168) suffixTokens!72)) b!3874094))

(assert (= (and start!363660 ((_ is Cons!41167) prefix!426)) b!3874088))

(declare-fun m!4431365 () Bool)

(assert (=> b!3874094 m!4431365))

(declare-fun m!4431367 () Bool)

(assert (=> b!3874122 m!4431367))

(declare-fun m!4431369 () Bool)

(assert (=> b!3874118 m!4431369))

(declare-fun m!4431371 () Bool)

(assert (=> b!3874118 m!4431371))

(declare-fun m!4431373 () Bool)

(assert (=> b!3874123 m!4431373))

(declare-fun m!4431375 () Bool)

(assert (=> b!3874133 m!4431375))

(declare-fun m!4431377 () Bool)

(assert (=> b!3874119 m!4431377))

(declare-fun m!4431379 () Bool)

(assert (=> b!3874124 m!4431379))

(declare-fun m!4431381 () Bool)

(assert (=> b!3874124 m!4431381))

(declare-fun m!4431383 () Bool)

(assert (=> b!3874124 m!4431383))

(declare-fun m!4431385 () Bool)

(assert (=> b!3874124 m!4431385))

(declare-fun m!4431387 () Bool)

(assert (=> b!3874124 m!4431387))

(declare-fun m!4431389 () Bool)

(assert (=> b!3874095 m!4431389))

(declare-fun m!4431391 () Bool)

(assert (=> bm!282769 m!4431391))

(declare-fun m!4431393 () Bool)

(assert (=> b!3874121 m!4431393))

(declare-fun m!4431395 () Bool)

(assert (=> b!3874093 m!4431395))

(declare-fun m!4431397 () Bool)

(assert (=> b!3874093 m!4431397))

(declare-fun m!4431399 () Bool)

(assert (=> b!3874103 m!4431399))

(declare-fun m!4431401 () Bool)

(assert (=> b!3874103 m!4431401))

(declare-fun m!4431403 () Bool)

(assert (=> b!3874103 m!4431403))

(declare-fun m!4431405 () Bool)

(assert (=> b!3874103 m!4431405))

(declare-fun m!4431407 () Bool)

(assert (=> b!3874103 m!4431407))

(declare-fun m!4431409 () Bool)

(assert (=> b!3874103 m!4431409))

(declare-fun m!4431411 () Bool)

(assert (=> b!3874103 m!4431411))

(declare-fun m!4431413 () Bool)

(assert (=> b!3874103 m!4431413))

(declare-fun m!4431415 () Bool)

(assert (=> b!3874103 m!4431415))

(assert (=> b!3874103 m!4431405))

(declare-fun m!4431417 () Bool)

(assert (=> b!3874103 m!4431417))

(declare-fun m!4431419 () Bool)

(assert (=> b!3874103 m!4431419))

(declare-fun m!4431421 () Bool)

(assert (=> b!3874103 m!4431421))

(declare-fun m!4431423 () Bool)

(assert (=> b!3874103 m!4431423))

(assert (=> b!3874103 m!4431413))

(declare-fun m!4431425 () Bool)

(assert (=> b!3874103 m!4431425))

(declare-fun m!4431427 () Bool)

(assert (=> b!3874132 m!4431427))

(declare-fun m!4431429 () Bool)

(assert (=> b!3874132 m!4431429))

(declare-fun m!4431431 () Bool)

(assert (=> b!3874097 m!4431431))

(declare-fun m!4431433 () Bool)

(assert (=> b!3874114 m!4431433))

(declare-fun m!4431435 () Bool)

(assert (=> b!3874114 m!4431435))

(declare-fun m!4431437 () Bool)

(assert (=> b!3874104 m!4431437))

(declare-fun m!4431439 () Bool)

(assert (=> b!3874104 m!4431439))

(declare-fun m!4431441 () Bool)

(assert (=> b!3874087 m!4431441))

(declare-fun m!4431443 () Bool)

(assert (=> b!3874087 m!4431443))

(assert (=> b!3874087 m!4431443))

(declare-fun m!4431445 () Bool)

(assert (=> b!3874087 m!4431445))

(declare-fun m!4431447 () Bool)

(assert (=> b!3874087 m!4431447))

(declare-fun m!4431449 () Bool)

(assert (=> b!3874087 m!4431449))

(declare-fun m!4431451 () Bool)

(assert (=> b!3874134 m!4431451))

(declare-fun m!4431453 () Bool)

(assert (=> b!3874134 m!4431453))

(declare-fun m!4431455 () Bool)

(assert (=> b!3874111 m!4431455))

(declare-fun m!4431457 () Bool)

(assert (=> b!3874129 m!4431457))

(declare-fun m!4431459 () Bool)

(assert (=> b!3874129 m!4431459))

(declare-fun m!4431461 () Bool)

(assert (=> b!3874129 m!4431461))

(declare-fun m!4431463 () Bool)

(assert (=> b!3874129 m!4431463))

(declare-fun m!4431465 () Bool)

(assert (=> b!3874126 m!4431465))

(declare-fun m!4431467 () Bool)

(assert (=> b!3874091 m!4431467))

(assert (=> b!3874120 m!4431381))

(assert (=> b!3874120 m!4431383))

(declare-fun m!4431469 () Bool)

(assert (=> b!3874120 m!4431469))

(declare-fun m!4431471 () Bool)

(assert (=> b!3874120 m!4431471))

(declare-fun m!4431473 () Bool)

(assert (=> b!3874106 m!4431473))

(declare-fun m!4431475 () Bool)

(assert (=> b!3874117 m!4431475))

(declare-fun m!4431477 () Bool)

(assert (=> b!3874117 m!4431477))

(declare-fun m!4431479 () Bool)

(assert (=> b!3874117 m!4431479))

(declare-fun m!4431481 () Bool)

(assert (=> b!3874107 m!4431481))

(declare-fun m!4431483 () Bool)

(assert (=> b!3874107 m!4431483))

(declare-fun m!4431485 () Bool)

(assert (=> b!3874127 m!4431485))

(declare-fun m!4431487 () Bool)

(assert (=> b!3874092 m!4431487))

(declare-fun m!4431489 () Bool)

(assert (=> b!3874105 m!4431489))

(declare-fun m!4431491 () Bool)

(assert (=> b!3874105 m!4431491))

(declare-fun m!4431493 () Bool)

(assert (=> b!3874090 m!4431493))

(declare-fun m!4431495 () Bool)

(assert (=> b!3874109 m!4431495))

(declare-fun m!4431497 () Bool)

(assert (=> b!3874109 m!4431497))

(declare-fun m!4431499 () Bool)

(assert (=> b!3874109 m!4431499))

(declare-fun m!4431501 () Bool)

(assert (=> b!3874113 m!4431501))

(declare-fun m!4431503 () Bool)

(assert (=> b!3874113 m!4431503))

(declare-fun m!4431505 () Bool)

(assert (=> b!3874113 m!4431505))

(declare-fun m!4431507 () Bool)

(assert (=> b!3874115 m!4431507))

(declare-fun m!4431509 () Bool)

(assert (=> b!3874125 m!4431509))

(assert (=> b!3874125 m!4431459))

(declare-fun m!4431511 () Bool)

(assert (=> b!3874116 m!4431511))

(declare-fun m!4431513 () Bool)

(assert (=> b!3874116 m!4431513))

(declare-fun m!4431515 () Bool)

(assert (=> b!3874116 m!4431515))

(declare-fun m!4431517 () Bool)

(assert (=> b!3874116 m!4431517))

(declare-fun m!4431519 () Bool)

(assert (=> b!3874116 m!4431519))

(check-sat (not b_next!105407) (not b!3874093) (not bm!282769) (not b_next!105411) (not b!3874132) b_and!290453 b_and!290451 (not b!3874113) (not b!3874106) (not b!3874095) tp_is_empty!19557 b_and!290459 (not b!3874124) (not b!3874094) (not b!3874133) (not b!3874130) (not b!3874091) (not b!3874122) (not b!3874092) (not b_next!105415) (not b!3874109) (not b!3874104) (not b!3874120) b_and!290455 (not b!3874087) (not b!3874121) (not b!3874118) (not b!3874105) (not b!3874103) (not b!3874107) (not b_next!105413) (not b!3874114) (not b!3874127) (not b!3874129) b_and!290461 (not b!3874117) (not b!3874123) (not b!3874088) (not b_next!105405) (not b!3874111) (not b!3874115) (not b!3874097) (not b!3874116) (not b_next!105409) (not b!3874119) b_and!290457 (not b!3874125) (not b!3874134) (not b!3874090) (not b!3874089) (not b!3874126) (not b!3874096))
(check-sat b_and!290459 (not b_next!105407) (not b_next!105411) (not b_next!105415) b_and!290453 b_and!290455 b_and!290451 (not b_next!105413) b_and!290461 (not b_next!105405) (not b_next!105409) b_and!290457)
(get-model)

(declare-fun d!1147221 () Bool)

(assert (=> d!1147221 (not (= (lexList!1745 thiss!20629 rules!2768 (_2!23331 lt!1349751)) (tuple2!40397 (++!10533 lt!1349740 suffixTokens!72) suffixResult!91)))))

(declare-fun lt!1349758 () Unit!59083)

(declare-fun choose!22928 (LexerInterface!5977 List!41293 List!41291 List!41291 List!41292 List!41291 List!41292) Unit!59083)

(assert (=> d!1147221 (= lt!1349758 (choose!22928 thiss!20629 rules!2768 suffix!1176 (_2!23331 lt!1349751) suffixTokens!72 suffixResult!91 lt!1349740))))

(assert (=> d!1147221 (not (isEmpty!24431 rules!2768))))

(assert (=> d!1147221 (= (lemmaLexWithSmallerInputCannotProduceAdditionalTokens!48 thiss!20629 rules!2768 suffix!1176 (_2!23331 lt!1349751) suffixTokens!72 suffixResult!91 lt!1349740) lt!1349758)))

(declare-fun bs!583569 () Bool)

(assert (= bs!583569 d!1147221))

(assert (=> bs!583569 m!4431391))

(assert (=> bs!583569 m!4431439))

(declare-fun m!4431521 () Bool)

(assert (=> bs!583569 m!4431521))

(assert (=> bs!583569 m!4431431))

(assert (=> b!3874104 d!1147221))

(declare-fun b!3874145 () Bool)

(declare-fun res!1569390 () Bool)

(declare-fun e!2396569 () Bool)

(assert (=> b!3874145 (=> (not res!1569390) (not e!2396569))))

(declare-fun lt!1349761 () List!41292)

(declare-fun size!30939 (List!41292) Int)

(assert (=> b!3874145 (= res!1569390 (= (size!30939 lt!1349761) (+ (size!30939 lt!1349740) (size!30939 suffixTokens!72))))))

(declare-fun b!3874144 () Bool)

(declare-fun e!2396570 () List!41292)

(assert (=> b!3874144 (= e!2396570 (Cons!41168 (h!46588 lt!1349740) (++!10533 (t!314743 lt!1349740) suffixTokens!72)))))

(declare-fun d!1147223 () Bool)

(assert (=> d!1147223 e!2396569))

(declare-fun res!1569391 () Bool)

(assert (=> d!1147223 (=> (not res!1569391) (not e!2396569))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!6150 (List!41292) (InoxSet Token!11914))

(assert (=> d!1147223 (= res!1569391 (= (content!6150 lt!1349761) ((_ map or) (content!6150 lt!1349740) (content!6150 suffixTokens!72))))))

(assert (=> d!1147223 (= lt!1349761 e!2396570)))

(declare-fun c!674102 () Bool)

(assert (=> d!1147223 (= c!674102 ((_ is Nil!41168) lt!1349740))))

(assert (=> d!1147223 (= (++!10533 lt!1349740 suffixTokens!72) lt!1349761)))

(declare-fun b!3874143 () Bool)

(assert (=> b!3874143 (= e!2396570 suffixTokens!72)))

(declare-fun b!3874146 () Bool)

(assert (=> b!3874146 (= e!2396569 (or (not (= suffixTokens!72 Nil!41168)) (= lt!1349761 lt!1349740)))))

(assert (= (and d!1147223 c!674102) b!3874143))

(assert (= (and d!1147223 (not c!674102)) b!3874144))

(assert (= (and d!1147223 res!1569391) b!3874145))

(assert (= (and b!3874145 res!1569390) b!3874146))

(declare-fun m!4431523 () Bool)

(assert (=> b!3874145 m!4431523))

(declare-fun m!4431525 () Bool)

(assert (=> b!3874145 m!4431525))

(declare-fun m!4431527 () Bool)

(assert (=> b!3874145 m!4431527))

(declare-fun m!4431529 () Bool)

(assert (=> b!3874144 m!4431529))

(declare-fun m!4431531 () Bool)

(assert (=> d!1147223 m!4431531))

(declare-fun m!4431533 () Bool)

(assert (=> d!1147223 m!4431533))

(declare-fun m!4431535 () Bool)

(assert (=> d!1147223 m!4431535))

(assert (=> b!3874104 d!1147223))

(declare-fun d!1147225 () Bool)

(declare-fun e!2396579 () Bool)

(assert (=> d!1147225 e!2396579))

(declare-fun res!1569402 () Bool)

(assert (=> d!1147225 (=> res!1569402 e!2396579)))

(declare-fun lt!1349764 () Bool)

(assert (=> d!1147225 (= res!1569402 (not lt!1349764))))

(declare-fun e!2396577 () Bool)

(assert (=> d!1147225 (= lt!1349764 e!2396577)))

(declare-fun res!1569403 () Bool)

(assert (=> d!1147225 (=> res!1569403 e!2396577)))

(assert (=> d!1147225 (= res!1569403 ((_ is Nil!41167) lt!1349744))))

(assert (=> d!1147225 (= (isPrefix!3487 lt!1349744 prefix!426) lt!1349764)))

(declare-fun b!3874155 () Bool)

(declare-fun e!2396578 () Bool)

(assert (=> b!3874155 (= e!2396577 e!2396578)))

(declare-fun res!1569400 () Bool)

(assert (=> b!3874155 (=> (not res!1569400) (not e!2396578))))

(assert (=> b!3874155 (= res!1569400 (not ((_ is Nil!41167) prefix!426)))))

(declare-fun b!3874157 () Bool)

(declare-fun tail!5928 (List!41291) List!41291)

(assert (=> b!3874157 (= e!2396578 (isPrefix!3487 (tail!5928 lt!1349744) (tail!5928 prefix!426)))))

(declare-fun b!3874158 () Bool)

(assert (=> b!3874158 (= e!2396579 (>= (size!30938 prefix!426) (size!30938 lt!1349744)))))

(declare-fun b!3874156 () Bool)

(declare-fun res!1569401 () Bool)

(assert (=> b!3874156 (=> (not res!1569401) (not e!2396578))))

(declare-fun head!8211 (List!41291) C!22772)

(assert (=> b!3874156 (= res!1569401 (= (head!8211 lt!1349744) (head!8211 prefix!426)))))

(assert (= (and d!1147225 (not res!1569403)) b!3874155))

(assert (= (and b!3874155 res!1569400) b!3874156))

(assert (= (and b!3874156 res!1569401) b!3874157))

(assert (= (and d!1147225 (not res!1569402)) b!3874158))

(declare-fun m!4431537 () Bool)

(assert (=> b!3874157 m!4431537))

(declare-fun m!4431539 () Bool)

(assert (=> b!3874157 m!4431539))

(assert (=> b!3874157 m!4431537))

(assert (=> b!3874157 m!4431539))

(declare-fun m!4431541 () Bool)

(assert (=> b!3874157 m!4431541))

(assert (=> b!3874158 m!4431379))

(assert (=> b!3874158 m!4431423))

(declare-fun m!4431543 () Bool)

(assert (=> b!3874156 m!4431543))

(declare-fun m!4431545 () Bool)

(assert (=> b!3874156 m!4431545))

(assert (=> b!3874124 d!1147225))

(declare-fun d!1147227 () Bool)

(assert (=> d!1147227 (isPrefix!3487 lt!1349744 prefix!426)))

(declare-fun lt!1349767 () Unit!59083)

(declare-fun choose!22929 (List!41291 List!41291 List!41291) Unit!59083)

(assert (=> d!1147227 (= lt!1349767 (choose!22929 prefix!426 lt!1349744 lt!1349735))))

(assert (=> d!1147227 (isPrefix!3487 prefix!426 lt!1349735)))

(assert (=> d!1147227 (= (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!237 prefix!426 lt!1349744 lt!1349735) lt!1349767)))

(declare-fun bs!583570 () Bool)

(assert (= bs!583570 d!1147227))

(assert (=> bs!583570 m!4431387))

(declare-fun m!4431547 () Bool)

(assert (=> bs!583570 m!4431547))

(assert (=> bs!583570 m!4431383))

(assert (=> b!3874124 d!1147227))

(declare-fun d!1147229 () Bool)

(assert (=> d!1147229 (isPrefix!3487 prefix!426 (++!10534 prefix!426 suffix!1176))))

(declare-fun lt!1349770 () Unit!59083)

(declare-fun choose!22930 (List!41291 List!41291) Unit!59083)

(assert (=> d!1147229 (= lt!1349770 (choose!22930 prefix!426 suffix!1176))))

(assert (=> d!1147229 (= (lemmaConcatTwoListThenFirstIsPrefix!2350 prefix!426 suffix!1176) lt!1349770)))

(declare-fun bs!583571 () Bool)

(assert (= bs!583571 d!1147229))

(assert (=> bs!583571 m!4431505))

(assert (=> bs!583571 m!4431505))

(declare-fun m!4431549 () Bool)

(assert (=> bs!583571 m!4431549))

(declare-fun m!4431551 () Bool)

(assert (=> bs!583571 m!4431551))

(assert (=> b!3874124 d!1147229))

(declare-fun d!1147231 () Bool)

(declare-fun e!2396582 () Bool)

(assert (=> d!1147231 e!2396582))

(declare-fun res!1569406 () Bool)

(assert (=> d!1147231 (=> res!1569406 e!2396582)))

(declare-fun lt!1349771 () Bool)

(assert (=> d!1147231 (= res!1569406 (not lt!1349771))))

(declare-fun e!2396580 () Bool)

(assert (=> d!1147231 (= lt!1349771 e!2396580)))

(declare-fun res!1569407 () Bool)

(assert (=> d!1147231 (=> res!1569407 e!2396580)))

(assert (=> d!1147231 (= res!1569407 ((_ is Nil!41167) prefix!426))))

(assert (=> d!1147231 (= (isPrefix!3487 prefix!426 lt!1349735) lt!1349771)))

(declare-fun b!3874159 () Bool)

(declare-fun e!2396581 () Bool)

(assert (=> b!3874159 (= e!2396580 e!2396581)))

(declare-fun res!1569404 () Bool)

(assert (=> b!3874159 (=> (not res!1569404) (not e!2396581))))

(assert (=> b!3874159 (= res!1569404 (not ((_ is Nil!41167) lt!1349735)))))

(declare-fun b!3874161 () Bool)

(assert (=> b!3874161 (= e!2396581 (isPrefix!3487 (tail!5928 prefix!426) (tail!5928 lt!1349735)))))

(declare-fun b!3874162 () Bool)

(assert (=> b!3874162 (= e!2396582 (>= (size!30938 lt!1349735) (size!30938 prefix!426)))))

(declare-fun b!3874160 () Bool)

(declare-fun res!1569405 () Bool)

(assert (=> b!3874160 (=> (not res!1569405) (not e!2396581))))

(assert (=> b!3874160 (= res!1569405 (= (head!8211 prefix!426) (head!8211 lt!1349735)))))

(assert (= (and d!1147231 (not res!1569407)) b!3874159))

(assert (= (and b!3874159 res!1569404) b!3874160))

(assert (= (and b!3874160 res!1569405) b!3874161))

(assert (= (and d!1147231 (not res!1569406)) b!3874162))

(assert (=> b!3874161 m!4431539))

(declare-fun m!4431553 () Bool)

(assert (=> b!3874161 m!4431553))

(assert (=> b!3874161 m!4431539))

(assert (=> b!3874161 m!4431553))

(declare-fun m!4431555 () Bool)

(assert (=> b!3874161 m!4431555))

(assert (=> b!3874162 m!4431515))

(assert (=> b!3874162 m!4431379))

(assert (=> b!3874160 m!4431545))

(declare-fun m!4431557 () Bool)

(assert (=> b!3874160 m!4431557))

(assert (=> b!3874124 d!1147231))

(declare-fun d!1147233 () Bool)

(declare-fun lt!1349774 () Int)

(assert (=> d!1147233 (>= lt!1349774 0)))

(declare-fun e!2396585 () Int)

(assert (=> d!1147233 (= lt!1349774 e!2396585)))

(declare-fun c!674105 () Bool)

(assert (=> d!1147233 (= c!674105 ((_ is Nil!41167) prefix!426))))

(assert (=> d!1147233 (= (size!30938 prefix!426) lt!1349774)))

(declare-fun b!3874167 () Bool)

(assert (=> b!3874167 (= e!2396585 0)))

(declare-fun b!3874168 () Bool)

(assert (=> b!3874168 (= e!2396585 (+ 1 (size!30938 (t!314742 prefix!426))))))

(assert (= (and d!1147233 c!674105) b!3874167))

(assert (= (and d!1147233 (not c!674105)) b!3874168))

(declare-fun m!4431559 () Bool)

(assert (=> b!3874168 m!4431559))

(assert (=> b!3874124 d!1147233))

(declare-fun b!3874182 () Bool)

(declare-fun e!2396597 () tuple2!40396)

(declare-fun lt!1349783 () Option!8806)

(declare-fun lt!1349782 () tuple2!40396)

(assert (=> b!3874182 (= e!2396597 (tuple2!40397 (Cons!41168 (_1!23331 (v!39103 lt!1349783)) (_1!23332 lt!1349782)) (_2!23332 lt!1349782)))))

(assert (=> b!3874182 (= lt!1349782 (lexList!1745 thiss!20629 rules!2768 (_2!23331 (v!39103 lt!1349783))))))

(declare-fun b!3874183 () Bool)

(assert (=> b!3874183 (= e!2396597 (tuple2!40397 Nil!41168 suffix!1176))))

(declare-fun d!1147235 () Bool)

(declare-fun e!2396595 () Bool)

(assert (=> d!1147235 e!2396595))

(declare-fun c!674111 () Bool)

(declare-fun lt!1349781 () tuple2!40396)

(assert (=> d!1147235 (= c!674111 (> (size!30939 (_1!23332 lt!1349781)) 0))))

(assert (=> d!1147235 (= lt!1349781 e!2396597)))

(declare-fun c!674110 () Bool)

(assert (=> d!1147235 (= c!674110 ((_ is Some!8805) lt!1349783))))

(assert (=> d!1147235 (= lt!1349783 (maxPrefix!3281 thiss!20629 rules!2768 suffix!1176))))

(assert (=> d!1147235 (= (lexList!1745 thiss!20629 rules!2768 suffix!1176) lt!1349781)))

(declare-fun b!3874184 () Bool)

(declare-fun e!2396596 () Bool)

(assert (=> b!3874184 (= e!2396595 e!2396596)))

(declare-fun res!1569416 () Bool)

(assert (=> b!3874184 (= res!1569416 (< (size!30938 (_2!23332 lt!1349781)) (size!30938 suffix!1176)))))

(assert (=> b!3874184 (=> (not res!1569416) (not e!2396596))))

(declare-fun b!3874185 () Bool)

(assert (=> b!3874185 (= e!2396595 (= (_2!23332 lt!1349781) suffix!1176))))

(declare-fun b!3874186 () Bool)

(assert (=> b!3874186 (= e!2396596 (not (isEmpty!24430 (_1!23332 lt!1349781))))))

(assert (= (and d!1147235 c!674110) b!3874182))

(assert (= (and d!1147235 (not c!674110)) b!3874183))

(assert (= (and d!1147235 c!674111) b!3874184))

(assert (= (and d!1147235 (not c!674111)) b!3874185))

(assert (= (and b!3874184 res!1569416) b!3874186))

(declare-fun m!4431565 () Bool)

(assert (=> b!3874182 m!4431565))

(declare-fun m!4431567 () Bool)

(assert (=> d!1147235 m!4431567))

(declare-fun m!4431569 () Bool)

(assert (=> d!1147235 m!4431569))

(declare-fun m!4431571 () Bool)

(assert (=> b!3874184 m!4431571))

(assert (=> b!3874184 m!4431395))

(declare-fun m!4431573 () Bool)

(assert (=> b!3874186 m!4431573))

(assert (=> b!3874123 d!1147235))

(declare-fun b!3874205 () Bool)

(declare-fun e!2396608 () List!41291)

(assert (=> b!3874205 (= e!2396608 (_2!23331 (v!39103 lt!1349737)))))

(declare-fun d!1147243 () Bool)

(declare-fun e!2396609 () Bool)

(assert (=> d!1147243 e!2396609))

(declare-fun res!1569424 () Bool)

(assert (=> d!1147243 (=> (not res!1569424) (not e!2396609))))

(declare-fun lt!1349792 () List!41291)

(declare-fun content!6153 (List!41291) (InoxSet C!22772))

(assert (=> d!1147243 (= res!1569424 (= (content!6153 lt!1349792) ((_ map or) (content!6153 lt!1349744) (content!6153 (_2!23331 (v!39103 lt!1349737))))))))

(assert (=> d!1147243 (= lt!1349792 e!2396608)))

(declare-fun c!674118 () Bool)

(assert (=> d!1147243 (= c!674118 ((_ is Nil!41167) lt!1349744))))

(assert (=> d!1147243 (= (++!10534 lt!1349744 (_2!23331 (v!39103 lt!1349737))) lt!1349792)))

(declare-fun b!3874208 () Bool)

(assert (=> b!3874208 (= e!2396609 (or (not (= (_2!23331 (v!39103 lt!1349737)) Nil!41167)) (= lt!1349792 lt!1349744)))))

(declare-fun b!3874206 () Bool)

(assert (=> b!3874206 (= e!2396608 (Cons!41167 (h!46587 lt!1349744) (++!10534 (t!314742 lt!1349744) (_2!23331 (v!39103 lt!1349737)))))))

(declare-fun b!3874207 () Bool)

(declare-fun res!1569423 () Bool)

(assert (=> b!3874207 (=> (not res!1569423) (not e!2396609))))

(assert (=> b!3874207 (= res!1569423 (= (size!30938 lt!1349792) (+ (size!30938 lt!1349744) (size!30938 (_2!23331 (v!39103 lt!1349737))))))))

(assert (= (and d!1147243 c!674118) b!3874205))

(assert (= (and d!1147243 (not c!674118)) b!3874206))

(assert (= (and d!1147243 res!1569424) b!3874207))

(assert (= (and b!3874207 res!1569423) b!3874208))

(declare-fun m!4431575 () Bool)

(assert (=> d!1147243 m!4431575))

(declare-fun m!4431577 () Bool)

(assert (=> d!1147243 m!4431577))

(declare-fun m!4431579 () Bool)

(assert (=> d!1147243 m!4431579))

(declare-fun m!4431581 () Bool)

(assert (=> b!3874206 m!4431581))

(declare-fun m!4431583 () Bool)

(assert (=> b!3874207 m!4431583))

(assert (=> b!3874207 m!4431423))

(assert (=> b!3874207 m!4431397))

(assert (=> b!3874103 d!1147243))

(declare-fun d!1147245 () Bool)

(declare-fun lt!1349793 () Int)

(assert (=> d!1147245 (>= lt!1349793 0)))

(declare-fun e!2396610 () Int)

(assert (=> d!1147245 (= lt!1349793 e!2396610)))

(declare-fun c!674119 () Bool)

(assert (=> d!1147245 (= c!674119 ((_ is Nil!41167) lt!1349744))))

(assert (=> d!1147245 (= (size!30938 lt!1349744) lt!1349793)))

(declare-fun b!3874209 () Bool)

(assert (=> b!3874209 (= e!2396610 0)))

(declare-fun b!3874210 () Bool)

(assert (=> b!3874210 (= e!2396610 (+ 1 (size!30938 (t!314742 lt!1349744))))))

(assert (= (and d!1147245 c!674119) b!3874209))

(assert (= (and d!1147245 (not c!674119)) b!3874210))

(declare-fun m!4431585 () Bool)

(assert (=> b!3874210 m!4431585))

(assert (=> b!3874103 d!1147245))

(declare-fun d!1147247 () Bool)

(declare-fun dynLambda!17703 (Int BalanceConc!24792) TokenValue!6618)

(assert (=> d!1147247 (= (apply!9631 (transformation!6388 (rule!9280 (_1!23331 (v!39103 lt!1349737)))) (seqFromList!4659 lt!1349744)) (dynLambda!17703 (toValue!8816 (transformation!6388 (rule!9280 (_1!23331 (v!39103 lt!1349737))))) (seqFromList!4659 lt!1349744)))))

(declare-fun b_lambda!113127 () Bool)

(assert (=> (not b_lambda!113127) (not d!1147247)))

(declare-fun tb!224753 () Bool)

(declare-fun t!314746 () Bool)

(assert (=> (and b!3874100 (= (toValue!8816 (transformation!6388 (h!46589 rules!2768))) (toValue!8816 (transformation!6388 (rule!9280 (_1!23331 (v!39103 lt!1349737)))))) t!314746) tb!224753))

(declare-fun result!273754 () Bool)

(assert (=> tb!224753 (= result!273754 (inv!21 (dynLambda!17703 (toValue!8816 (transformation!6388 (rule!9280 (_1!23331 (v!39103 lt!1349737))))) (seqFromList!4659 lt!1349744))))))

(declare-fun m!4431595 () Bool)

(assert (=> tb!224753 m!4431595))

(assert (=> d!1147247 t!314746))

(declare-fun b_and!290463 () Bool)

(assert (= b_and!290451 (and (=> t!314746 result!273754) b_and!290463)))

(declare-fun tb!224755 () Bool)

(declare-fun t!314748 () Bool)

(assert (=> (and b!3874110 (= (toValue!8816 (transformation!6388 (rule!9280 (h!46588 prefixTokens!80)))) (toValue!8816 (transformation!6388 (rule!9280 (_1!23331 (v!39103 lt!1349737)))))) t!314748) tb!224755))

(declare-fun result!273758 () Bool)

(assert (= result!273758 result!273754))

(assert (=> d!1147247 t!314748))

(declare-fun b_and!290465 () Bool)

(assert (= b_and!290455 (and (=> t!314748 result!273758) b_and!290465)))

(declare-fun t!314750 () Bool)

(declare-fun tb!224757 () Bool)

(assert (=> (and b!3874102 (= (toValue!8816 (transformation!6388 (rule!9280 (h!46588 suffixTokens!72)))) (toValue!8816 (transformation!6388 (rule!9280 (_1!23331 (v!39103 lt!1349737)))))) t!314750) tb!224757))

(declare-fun result!273760 () Bool)

(assert (= result!273760 result!273754))

(assert (=> d!1147247 t!314750))

(declare-fun b_and!290467 () Bool)

(assert (= b_and!290459 (and (=> t!314750 result!273760) b_and!290467)))

(assert (=> d!1147247 m!4431413))

(declare-fun m!4431597 () Bool)

(assert (=> d!1147247 m!4431597))

(assert (=> b!3874103 d!1147247))

(declare-fun d!1147251 () Bool)

(assert (=> d!1147251 (isPrefix!3487 lt!1349744 (++!10534 lt!1349744 (_2!23331 (v!39103 lt!1349737))))))

(declare-fun lt!1349797 () Unit!59083)

(assert (=> d!1147251 (= lt!1349797 (choose!22930 lt!1349744 (_2!23331 (v!39103 lt!1349737))))))

(assert (=> d!1147251 (= (lemmaConcatTwoListThenFirstIsPrefix!2350 lt!1349744 (_2!23331 (v!39103 lt!1349737))) lt!1349797)))

(declare-fun bs!583572 () Bool)

(assert (= bs!583572 d!1147251))

(assert (=> bs!583572 m!4431421))

(assert (=> bs!583572 m!4431421))

(declare-fun m!4431599 () Bool)

(assert (=> bs!583572 m!4431599))

(declare-fun m!4431601 () Bool)

(assert (=> bs!583572 m!4431601))

(assert (=> b!3874103 d!1147251))

(declare-fun d!1147253 () Bool)

(declare-fun e!2396621 () Bool)

(assert (=> d!1147253 e!2396621))

(declare-fun res!1569428 () Bool)

(assert (=> d!1147253 (=> res!1569428 e!2396621)))

(declare-fun lt!1349800 () Bool)

(assert (=> d!1147253 (= res!1569428 (not lt!1349800))))

(declare-fun e!2396619 () Bool)

(assert (=> d!1147253 (= lt!1349800 e!2396619)))

(declare-fun res!1569429 () Bool)

(assert (=> d!1147253 (=> res!1569429 e!2396619)))

(assert (=> d!1147253 (= res!1569429 ((_ is Nil!41167) lt!1349744))))

(assert (=> d!1147253 (= (isPrefix!3487 lt!1349744 lt!1349743) lt!1349800)))

(declare-fun b!3874222 () Bool)

(declare-fun e!2396620 () Bool)

(assert (=> b!3874222 (= e!2396619 e!2396620)))

(declare-fun res!1569426 () Bool)

(assert (=> b!3874222 (=> (not res!1569426) (not e!2396620))))

(assert (=> b!3874222 (= res!1569426 (not ((_ is Nil!41167) lt!1349743)))))

(declare-fun b!3874224 () Bool)

(assert (=> b!3874224 (= e!2396620 (isPrefix!3487 (tail!5928 lt!1349744) (tail!5928 lt!1349743)))))

(declare-fun b!3874225 () Bool)

(assert (=> b!3874225 (= e!2396621 (>= (size!30938 lt!1349743) (size!30938 lt!1349744)))))

(declare-fun b!3874223 () Bool)

(declare-fun res!1569427 () Bool)

(assert (=> b!3874223 (=> (not res!1569427) (not e!2396620))))

(assert (=> b!3874223 (= res!1569427 (= (head!8211 lt!1349744) (head!8211 lt!1349743)))))

(assert (= (and d!1147253 (not res!1569429)) b!3874222))

(assert (= (and b!3874222 res!1569426) b!3874223))

(assert (= (and b!3874223 res!1569427) b!3874224))

(assert (= (and d!1147253 (not res!1569428)) b!3874225))

(assert (=> b!3874224 m!4431537))

(declare-fun m!4431603 () Bool)

(assert (=> b!3874224 m!4431603))

(assert (=> b!3874224 m!4431537))

(assert (=> b!3874224 m!4431603))

(declare-fun m!4431605 () Bool)

(assert (=> b!3874224 m!4431605))

(declare-fun m!4431607 () Bool)

(assert (=> b!3874225 m!4431607))

(assert (=> b!3874225 m!4431423))

(assert (=> b!3874223 m!4431543))

(declare-fun m!4431609 () Bool)

(assert (=> b!3874223 m!4431609))

(assert (=> b!3874103 d!1147253))

(declare-fun d!1147255 () Bool)

(declare-fun lt!1349804 () BalanceConc!24792)

(assert (=> d!1147255 (= (list!15312 lt!1349804) (originalCharacters!6988 (_1!23331 (v!39103 lt!1349737))))))

(declare-fun dynLambda!17704 (Int TokenValue!6618) BalanceConc!24792)

(assert (=> d!1147255 (= lt!1349804 (dynLambda!17704 (toChars!8675 (transformation!6388 (rule!9280 (_1!23331 (v!39103 lt!1349737))))) (value!202692 (_1!23331 (v!39103 lt!1349737)))))))

(assert (=> d!1147255 (= (charsOf!4216 (_1!23331 (v!39103 lt!1349737))) lt!1349804)))

(declare-fun b_lambda!113129 () Bool)

(assert (=> (not b_lambda!113129) (not d!1147255)))

(declare-fun tb!224759 () Bool)

(declare-fun t!314752 () Bool)

(assert (=> (and b!3874100 (= (toChars!8675 (transformation!6388 (h!46589 rules!2768))) (toChars!8675 (transformation!6388 (rule!9280 (_1!23331 (v!39103 lt!1349737)))))) t!314752) tb!224759))

(declare-fun b!3874246 () Bool)

(declare-fun e!2396632 () Bool)

(declare-fun tp!1174587 () Bool)

(declare-fun inv!55328 (Conc!12599) Bool)

(assert (=> b!3874246 (= e!2396632 (and (inv!55328 (c!674099 (dynLambda!17704 (toChars!8675 (transformation!6388 (rule!9280 (_1!23331 (v!39103 lt!1349737))))) (value!202692 (_1!23331 (v!39103 lt!1349737)))))) tp!1174587))))

(declare-fun result!273762 () Bool)

(declare-fun inv!55329 (BalanceConc!24792) Bool)

(assert (=> tb!224759 (= result!273762 (and (inv!55329 (dynLambda!17704 (toChars!8675 (transformation!6388 (rule!9280 (_1!23331 (v!39103 lt!1349737))))) (value!202692 (_1!23331 (v!39103 lt!1349737))))) e!2396632))))

(assert (= tb!224759 b!3874246))

(declare-fun m!4431625 () Bool)

(assert (=> b!3874246 m!4431625))

(declare-fun m!4431627 () Bool)

(assert (=> tb!224759 m!4431627))

(assert (=> d!1147255 t!314752))

(declare-fun b_and!290469 () Bool)

(assert (= b_and!290453 (and (=> t!314752 result!273762) b_and!290469)))

(declare-fun t!314754 () Bool)

(declare-fun tb!224761 () Bool)

(assert (=> (and b!3874110 (= (toChars!8675 (transformation!6388 (rule!9280 (h!46588 prefixTokens!80)))) (toChars!8675 (transformation!6388 (rule!9280 (_1!23331 (v!39103 lt!1349737)))))) t!314754) tb!224761))

(declare-fun result!273766 () Bool)

(assert (= result!273766 result!273762))

(assert (=> d!1147255 t!314754))

(declare-fun b_and!290471 () Bool)

(assert (= b_and!290457 (and (=> t!314754 result!273766) b_and!290471)))

(declare-fun tb!224763 () Bool)

(declare-fun t!314756 () Bool)

(assert (=> (and b!3874102 (= (toChars!8675 (transformation!6388 (rule!9280 (h!46588 suffixTokens!72)))) (toChars!8675 (transformation!6388 (rule!9280 (_1!23331 (v!39103 lt!1349737)))))) t!314756) tb!224763))

(declare-fun result!273768 () Bool)

(assert (= result!273768 result!273762))

(assert (=> d!1147255 t!314756))

(declare-fun b_and!290473 () Bool)

(assert (= b_and!290461 (and (=> t!314756 result!273768) b_and!290473)))

(declare-fun m!4431639 () Bool)

(assert (=> d!1147255 m!4431639))

(declare-fun m!4431641 () Bool)

(assert (=> d!1147255 m!4431641))

(assert (=> b!3874103 d!1147255))

(declare-fun d!1147261 () Bool)

(assert (=> d!1147261 (= (_2!23331 (v!39103 lt!1349737)) lt!1349721)))

(declare-fun lt!1349820 () Unit!59083)

(declare-fun choose!22932 (List!41291 List!41291 List!41291 List!41291 List!41291) Unit!59083)

(assert (=> d!1147261 (= lt!1349820 (choose!22932 lt!1349744 (_2!23331 (v!39103 lt!1349737)) lt!1349744 lt!1349721 lt!1349735))))

(assert (=> d!1147261 (isPrefix!3487 lt!1349744 lt!1349735)))

(assert (=> d!1147261 (= (lemmaSamePrefixThenSameSuffix!1708 lt!1349744 (_2!23331 (v!39103 lt!1349737)) lt!1349744 lt!1349721 lt!1349735) lt!1349820)))

(declare-fun bs!583573 () Bool)

(assert (= bs!583573 d!1147261))

(declare-fun m!4431659 () Bool)

(assert (=> bs!583573 m!4431659))

(declare-fun m!4431663 () Bool)

(assert (=> bs!583573 m!4431663))

(assert (=> b!3874103 d!1147261))

(declare-fun b!3874269 () Bool)

(declare-fun e!2396647 () tuple2!40396)

(declare-fun lt!1349823 () Option!8806)

(declare-fun lt!1349822 () tuple2!40396)

(assert (=> b!3874269 (= e!2396647 (tuple2!40397 (Cons!41168 (_1!23331 (v!39103 lt!1349823)) (_1!23332 lt!1349822)) (_2!23332 lt!1349822)))))

(assert (=> b!3874269 (= lt!1349822 (lexList!1745 thiss!20629 rules!2768 (_2!23331 (v!39103 lt!1349823))))))

(declare-fun b!3874270 () Bool)

(assert (=> b!3874270 (= e!2396647 (tuple2!40397 Nil!41168 (_2!23331 (v!39103 lt!1349737))))))

(declare-fun d!1147273 () Bool)

(declare-fun e!2396645 () Bool)

(assert (=> d!1147273 e!2396645))

(declare-fun c!674137 () Bool)

(declare-fun lt!1349821 () tuple2!40396)

(assert (=> d!1147273 (= c!674137 (> (size!30939 (_1!23332 lt!1349821)) 0))))

(assert (=> d!1147273 (= lt!1349821 e!2396647)))

(declare-fun c!674136 () Bool)

(assert (=> d!1147273 (= c!674136 ((_ is Some!8805) lt!1349823))))

(assert (=> d!1147273 (= lt!1349823 (maxPrefix!3281 thiss!20629 rules!2768 (_2!23331 (v!39103 lt!1349737))))))

(assert (=> d!1147273 (= (lexList!1745 thiss!20629 rules!2768 (_2!23331 (v!39103 lt!1349737))) lt!1349821)))

(declare-fun b!3874271 () Bool)

(declare-fun e!2396646 () Bool)

(assert (=> b!3874271 (= e!2396645 e!2396646)))

(declare-fun res!1569444 () Bool)

(assert (=> b!3874271 (= res!1569444 (< (size!30938 (_2!23332 lt!1349821)) (size!30938 (_2!23331 (v!39103 lt!1349737)))))))

(assert (=> b!3874271 (=> (not res!1569444) (not e!2396646))))

(declare-fun b!3874272 () Bool)

(assert (=> b!3874272 (= e!2396645 (= (_2!23332 lt!1349821) (_2!23331 (v!39103 lt!1349737))))))

(declare-fun b!3874273 () Bool)

(assert (=> b!3874273 (= e!2396646 (not (isEmpty!24430 (_1!23332 lt!1349821))))))

(assert (= (and d!1147273 c!674136) b!3874269))

(assert (= (and d!1147273 (not c!674136)) b!3874270))

(assert (= (and d!1147273 c!674137) b!3874271))

(assert (= (and d!1147273 (not c!674137)) b!3874272))

(assert (= (and b!3874271 res!1569444) b!3874273))

(declare-fun m!4431675 () Bool)

(assert (=> b!3874269 m!4431675))

(declare-fun m!4431677 () Bool)

(assert (=> d!1147273 m!4431677))

(declare-fun m!4431679 () Bool)

(assert (=> d!1147273 m!4431679))

(declare-fun m!4431681 () Bool)

(assert (=> b!3874271 m!4431681))

(assert (=> b!3874271 m!4431397))

(declare-fun m!4431683 () Bool)

(assert (=> b!3874273 m!4431683))

(assert (=> b!3874103 d!1147273))

(declare-fun d!1147277 () Bool)

(assert (=> d!1147277 (= (size!30937 (_1!23331 (v!39103 lt!1349737))) (size!30938 (originalCharacters!6988 (_1!23331 (v!39103 lt!1349737)))))))

(declare-fun Unit!59094 () Unit!59083)

(assert (=> d!1147277 (= (lemmaCharactersSize!1049 (_1!23331 (v!39103 lt!1349737))) Unit!59094)))

(declare-fun bs!583574 () Bool)

(assert (= bs!583574 d!1147277))

(assert (=> bs!583574 m!4431375))

(assert (=> b!3874103 d!1147277))

(declare-fun d!1147279 () Bool)

(assert (=> d!1147279 (ruleValid!2340 thiss!20629 (rule!9280 (_1!23331 (v!39103 lt!1349737))))))

(declare-fun lt!1349826 () Unit!59083)

(declare-fun choose!22934 (LexerInterface!5977 Rule!12576 List!41293) Unit!59083)

(assert (=> d!1147279 (= lt!1349826 (choose!22934 thiss!20629 (rule!9280 (_1!23331 (v!39103 lt!1349737))) rules!2768))))

(declare-fun contains!8292 (List!41293 Rule!12576) Bool)

(assert (=> d!1147279 (contains!8292 rules!2768 (rule!9280 (_1!23331 (v!39103 lt!1349737))))))

(assert (=> d!1147279 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1420 thiss!20629 (rule!9280 (_1!23331 (v!39103 lt!1349737))) rules!2768) lt!1349826)))

(declare-fun bs!583575 () Bool)

(assert (= bs!583575 d!1147279))

(assert (=> bs!583575 m!4431407))

(declare-fun m!4431685 () Bool)

(assert (=> bs!583575 m!4431685))

(declare-fun m!4431687 () Bool)

(assert (=> bs!583575 m!4431687))

(assert (=> b!3874103 d!1147279))

(declare-fun d!1147281 () Bool)

(declare-fun lt!1349833 () List!41291)

(assert (=> d!1147281 (= (++!10534 lt!1349744 lt!1349833) lt!1349735)))

(declare-fun e!2396652 () List!41291)

(assert (=> d!1147281 (= lt!1349833 e!2396652)))

(declare-fun c!674141 () Bool)

(assert (=> d!1147281 (= c!674141 ((_ is Cons!41167) lt!1349744))))

(assert (=> d!1147281 (>= (size!30938 lt!1349735) (size!30938 lt!1349744))))

(assert (=> d!1147281 (= (getSuffix!1942 lt!1349735 lt!1349744) lt!1349833)))

(declare-fun b!3874282 () Bool)

(assert (=> b!3874282 (= e!2396652 (getSuffix!1942 (tail!5928 lt!1349735) (t!314742 lt!1349744)))))

(declare-fun b!3874283 () Bool)

(assert (=> b!3874283 (= e!2396652 lt!1349735)))

(assert (= (and d!1147281 c!674141) b!3874282))

(assert (= (and d!1147281 (not c!674141)) b!3874283))

(declare-fun m!4431701 () Bool)

(assert (=> d!1147281 m!4431701))

(assert (=> d!1147281 m!4431515))

(assert (=> d!1147281 m!4431423))

(assert (=> b!3874282 m!4431553))

(assert (=> b!3874282 m!4431553))

(declare-fun m!4431703 () Bool)

(assert (=> b!3874282 m!4431703))

(assert (=> b!3874103 d!1147281))

(declare-fun d!1147287 () Bool)

(declare-fun res!1569465 () Bool)

(declare-fun e!2396666 () Bool)

(assert (=> d!1147287 (=> (not res!1569465) (not e!2396666))))

(declare-fun validRegex!5139 (Regex!11293) Bool)

(assert (=> d!1147287 (= res!1569465 (validRegex!5139 (regex!6388 (rule!9280 (_1!23331 (v!39103 lt!1349737))))))))

(assert (=> d!1147287 (= (ruleValid!2340 thiss!20629 (rule!9280 (_1!23331 (v!39103 lt!1349737)))) e!2396666)))

(declare-fun b!3874304 () Bool)

(declare-fun res!1569466 () Bool)

(assert (=> b!3874304 (=> (not res!1569466) (not e!2396666))))

(declare-fun nullable!3940 (Regex!11293) Bool)

(assert (=> b!3874304 (= res!1569466 (not (nullable!3940 (regex!6388 (rule!9280 (_1!23331 (v!39103 lt!1349737)))))))))

(declare-fun b!3874305 () Bool)

(assert (=> b!3874305 (= e!2396666 (not (= (tag!7248 (rule!9280 (_1!23331 (v!39103 lt!1349737)))) (String!46809 ""))))))

(assert (= (and d!1147287 res!1569465) b!3874304))

(assert (= (and b!3874304 res!1569466) b!3874305))

(declare-fun m!4431733 () Bool)

(assert (=> d!1147287 m!4431733))

(declare-fun m!4431735 () Bool)

(assert (=> b!3874304 m!4431735))

(assert (=> b!3874103 d!1147287))

(declare-fun d!1147295 () Bool)

(declare-fun fromListB!2150 (List!41291) BalanceConc!24792)

(assert (=> d!1147295 (= (seqFromList!4659 lt!1349744) (fromListB!2150 lt!1349744))))

(declare-fun bs!583578 () Bool)

(assert (= bs!583578 d!1147295))

(declare-fun m!4431737 () Bool)

(assert (=> bs!583578 m!4431737))

(assert (=> b!3874103 d!1147295))

(declare-fun d!1147297 () Bool)

(declare-fun list!15313 (Conc!12599) List!41291)

(assert (=> d!1147297 (= (list!15312 (charsOf!4216 (_1!23331 (v!39103 lt!1349737)))) (list!15313 (c!674099 (charsOf!4216 (_1!23331 (v!39103 lt!1349737))))))))

(declare-fun bs!583579 () Bool)

(assert (= bs!583579 d!1147297))

(declare-fun m!4431739 () Bool)

(assert (=> bs!583579 m!4431739))

(assert (=> b!3874103 d!1147297))

(declare-fun b!3874316 () Bool)

(declare-fun res!1569469 () Bool)

(declare-fun e!2396675 () Bool)

(assert (=> b!3874316 (=> res!1569469 e!2396675)))

(assert (=> b!3874316 (= res!1569469 (not ((_ is IntegerValue!19856) (value!202692 (h!46588 suffixTokens!72)))))))

(declare-fun e!2396674 () Bool)

(assert (=> b!3874316 (= e!2396674 e!2396675)))

(declare-fun b!3874317 () Bool)

(declare-fun inv!15 (TokenValue!6618) Bool)

(assert (=> b!3874317 (= e!2396675 (inv!15 (value!202692 (h!46588 suffixTokens!72))))))

(declare-fun b!3874318 () Bool)

(declare-fun e!2396673 () Bool)

(declare-fun inv!16 (TokenValue!6618) Bool)

(assert (=> b!3874318 (= e!2396673 (inv!16 (value!202692 (h!46588 suffixTokens!72))))))

(declare-fun b!3874319 () Bool)

(assert (=> b!3874319 (= e!2396673 e!2396674)))

(declare-fun c!674148 () Bool)

(assert (=> b!3874319 (= c!674148 ((_ is IntegerValue!19855) (value!202692 (h!46588 suffixTokens!72))))))

(declare-fun d!1147299 () Bool)

(declare-fun c!674147 () Bool)

(assert (=> d!1147299 (= c!674147 ((_ is IntegerValue!19854) (value!202692 (h!46588 suffixTokens!72))))))

(assert (=> d!1147299 (= (inv!21 (value!202692 (h!46588 suffixTokens!72))) e!2396673)))

(declare-fun b!3874320 () Bool)

(declare-fun inv!17 (TokenValue!6618) Bool)

(assert (=> b!3874320 (= e!2396674 (inv!17 (value!202692 (h!46588 suffixTokens!72))))))

(assert (= (and d!1147299 c!674147) b!3874318))

(assert (= (and d!1147299 (not c!674147)) b!3874319))

(assert (= (and b!3874319 c!674148) b!3874320))

(assert (= (and b!3874319 (not c!674148)) b!3874316))

(assert (= (and b!3874316 (not res!1569469)) b!3874317))

(declare-fun m!4431741 () Bool)

(assert (=> b!3874317 m!4431741))

(declare-fun m!4431743 () Bool)

(assert (=> b!3874318 m!4431743))

(declare-fun m!4431745 () Bool)

(assert (=> b!3874320 m!4431745))

(assert (=> b!3874127 d!1147299))

(declare-fun d!1147301 () Bool)

(assert (=> d!1147301 (= (inv!55323 (tag!7248 (rule!9280 (h!46588 suffixTokens!72)))) (= (mod (str.len (value!202691 (tag!7248 (rule!9280 (h!46588 suffixTokens!72))))) 2) 0))))

(assert (=> b!3874107 d!1147301))

(declare-fun d!1147303 () Bool)

(declare-fun res!1569476 () Bool)

(declare-fun e!2396686 () Bool)

(assert (=> d!1147303 (=> (not res!1569476) (not e!2396686))))

(declare-fun semiInverseModEq!2741 (Int Int) Bool)

(assert (=> d!1147303 (= res!1569476 (semiInverseModEq!2741 (toChars!8675 (transformation!6388 (rule!9280 (h!46588 suffixTokens!72)))) (toValue!8816 (transformation!6388 (rule!9280 (h!46588 suffixTokens!72))))))))

(assert (=> d!1147303 (= (inv!55327 (transformation!6388 (rule!9280 (h!46588 suffixTokens!72)))) e!2396686)))

(declare-fun b!3874335 () Bool)

(declare-fun equivClasses!2640 (Int Int) Bool)

(assert (=> b!3874335 (= e!2396686 (equivClasses!2640 (toChars!8675 (transformation!6388 (rule!9280 (h!46588 suffixTokens!72)))) (toValue!8816 (transformation!6388 (rule!9280 (h!46588 suffixTokens!72))))))))

(assert (= (and d!1147303 res!1569476) b!3874335))

(declare-fun m!4431757 () Bool)

(assert (=> d!1147303 m!4431757))

(declare-fun m!4431759 () Bool)

(assert (=> b!3874335 m!4431759))

(assert (=> b!3874107 d!1147303))

(declare-fun b!3874338 () Bool)

(declare-fun res!1569477 () Bool)

(declare-fun e!2396687 () Bool)

(assert (=> b!3874338 (=> (not res!1569477) (not e!2396687))))

(declare-fun lt!1349844 () List!41292)

(assert (=> b!3874338 (= res!1569477 (= (size!30939 lt!1349844) (+ (size!30939 lt!1349733) (size!30939 (_1!23332 lt!1349717)))))))

(declare-fun b!3874337 () Bool)

(declare-fun e!2396688 () List!41292)

(assert (=> b!3874337 (= e!2396688 (Cons!41168 (h!46588 lt!1349733) (++!10533 (t!314743 lt!1349733) (_1!23332 lt!1349717))))))

(declare-fun d!1147317 () Bool)

(assert (=> d!1147317 e!2396687))

(declare-fun res!1569478 () Bool)

(assert (=> d!1147317 (=> (not res!1569478) (not e!2396687))))

(assert (=> d!1147317 (= res!1569478 (= (content!6150 lt!1349844) ((_ map or) (content!6150 lt!1349733) (content!6150 (_1!23332 lt!1349717)))))))

(assert (=> d!1147317 (= lt!1349844 e!2396688)))

(declare-fun c!674153 () Bool)

(assert (=> d!1147317 (= c!674153 ((_ is Nil!41168) lt!1349733))))

(assert (=> d!1147317 (= (++!10533 lt!1349733 (_1!23332 lt!1349717)) lt!1349844)))

(declare-fun b!3874336 () Bool)

(assert (=> b!3874336 (= e!2396688 (_1!23332 lt!1349717))))

(declare-fun b!3874339 () Bool)

(assert (=> b!3874339 (= e!2396687 (or (not (= (_1!23332 lt!1349717) Nil!41168)) (= lt!1349844 lt!1349733)))))

(assert (= (and d!1147317 c!674153) b!3874336))

(assert (= (and d!1147317 (not c!674153)) b!3874337))

(assert (= (and d!1147317 res!1569478) b!3874338))

(assert (= (and b!3874338 res!1569477) b!3874339))

(declare-fun m!4431767 () Bool)

(assert (=> b!3874338 m!4431767))

(declare-fun m!4431769 () Bool)

(assert (=> b!3874338 m!4431769))

(declare-fun m!4431771 () Bool)

(assert (=> b!3874338 m!4431771))

(declare-fun m!4431773 () Bool)

(assert (=> b!3874337 m!4431773))

(declare-fun m!4431775 () Bool)

(assert (=> d!1147317 m!4431775))

(declare-fun m!4431777 () Bool)

(assert (=> d!1147317 m!4431777))

(declare-fun m!4431779 () Bool)

(assert (=> d!1147317 m!4431779))

(assert (=> b!3874106 d!1147317))

(declare-fun d!1147321 () Bool)

(assert (=> d!1147321 (= (isEmpty!24430 prefixTokens!80) ((_ is Nil!41168) prefixTokens!80))))

(assert (=> b!3874126 d!1147321))

(declare-fun d!1147325 () Bool)

(assert (=> d!1147325 (= (isEmpty!24430 lt!1349740) ((_ is Nil!41168) lt!1349740))))

(assert (=> b!3874125 d!1147325))

(declare-fun d!1147327 () Bool)

(assert (=> d!1147327 (= (tail!5927 prefixTokens!80) (t!314743 prefixTokens!80))))

(assert (=> b!3874125 d!1147327))

(declare-fun b!3874347 () Bool)

(declare-fun e!2396695 () tuple2!40396)

(declare-fun lt!1349848 () Option!8806)

(declare-fun lt!1349847 () tuple2!40396)

(assert (=> b!3874347 (= e!2396695 (tuple2!40397 (Cons!41168 (_1!23331 (v!39103 lt!1349848)) (_1!23332 lt!1349847)) (_2!23332 lt!1349847)))))

(assert (=> b!3874347 (= lt!1349847 (lexList!1745 thiss!20629 rules!2768 (_2!23331 (v!39103 lt!1349848))))))

(declare-fun b!3874348 () Bool)

(assert (=> b!3874348 (= e!2396695 (tuple2!40397 Nil!41168 lt!1349728))))

(declare-fun d!1147331 () Bool)

(declare-fun e!2396693 () Bool)

(assert (=> d!1147331 e!2396693))

(declare-fun c!674158 () Bool)

(declare-fun lt!1349846 () tuple2!40396)

(assert (=> d!1147331 (= c!674158 (> (size!30939 (_1!23332 lt!1349846)) 0))))

(assert (=> d!1147331 (= lt!1349846 e!2396695)))

(declare-fun c!674157 () Bool)

(assert (=> d!1147331 (= c!674157 ((_ is Some!8805) lt!1349848))))

(assert (=> d!1147331 (= lt!1349848 (maxPrefix!3281 thiss!20629 rules!2768 lt!1349728))))

(assert (=> d!1147331 (= (lexList!1745 thiss!20629 rules!2768 lt!1349728) lt!1349846)))

(declare-fun b!3874349 () Bool)

(declare-fun e!2396694 () Bool)

(assert (=> b!3874349 (= e!2396693 e!2396694)))

(declare-fun res!1569480 () Bool)

(assert (=> b!3874349 (= res!1569480 (< (size!30938 (_2!23332 lt!1349846)) (size!30938 lt!1349728)))))

(assert (=> b!3874349 (=> (not res!1569480) (not e!2396694))))

(declare-fun b!3874350 () Bool)

(assert (=> b!3874350 (= e!2396693 (= (_2!23332 lt!1349846) lt!1349728))))

(declare-fun b!3874351 () Bool)

(assert (=> b!3874351 (= e!2396694 (not (isEmpty!24430 (_1!23332 lt!1349846))))))

(assert (= (and d!1147331 c!674157) b!3874347))

(assert (= (and d!1147331 (not c!674157)) b!3874348))

(assert (= (and d!1147331 c!674158) b!3874349))

(assert (= (and d!1147331 (not c!674158)) b!3874350))

(assert (= (and b!3874349 res!1569480) b!3874351))

(declare-fun m!4431783 () Bool)

(assert (=> b!3874347 m!4431783))

(declare-fun m!4431785 () Bool)

(assert (=> d!1147331 m!4431785))

(declare-fun m!4431787 () Bool)

(assert (=> d!1147331 m!4431787))

(declare-fun m!4431789 () Bool)

(assert (=> b!3874349 m!4431789))

(declare-fun m!4431791 () Bool)

(assert (=> b!3874349 m!4431791))

(declare-fun m!4431793 () Bool)

(assert (=> b!3874351 m!4431793))

(assert (=> b!3874105 d!1147331))

(declare-fun d!1147333 () Bool)

(assert (=> d!1147333 (= (lexList!1745 thiss!20629 rules!2768 lt!1349728) (tuple2!40397 lt!1349708 Nil!41167))))

(declare-fun lt!1349851 () Unit!59083)

(declare-fun choose!22936 (LexerInterface!5977 List!41293 List!41291 List!41291 List!41292 List!41292 List!41291) Unit!59083)

(assert (=> d!1147333 (= lt!1349851 (choose!22936 thiss!20629 rules!2768 lt!1349728 suffix!1176 lt!1349708 suffixTokens!72 suffixResult!91))))

(assert (=> d!1147333 (not (isEmpty!24431 rules!2768))))

(assert (=> d!1147333 (= (lemmaLexThenLexPrefix!577 thiss!20629 rules!2768 lt!1349728 suffix!1176 lt!1349708 suffixTokens!72 suffixResult!91) lt!1349851)))

(declare-fun bs!583581 () Bool)

(assert (= bs!583581 d!1147333))

(assert (=> bs!583581 m!4431489))

(declare-fun m!4431795 () Bool)

(assert (=> bs!583581 m!4431795))

(assert (=> bs!583581 m!4431431))

(assert (=> b!3874105 d!1147333))

(declare-fun b!3874354 () Bool)

(declare-fun res!1569481 () Bool)

(declare-fun e!2396696 () Bool)

(assert (=> b!3874354 (=> (not res!1569481) (not e!2396696))))

(declare-fun lt!1349852 () List!41292)

(assert (=> b!3874354 (= res!1569481 (= (size!30939 lt!1349852) (+ (size!30939 lt!1349708) (size!30939 suffixTokens!72))))))

(declare-fun b!3874353 () Bool)

(declare-fun e!2396697 () List!41292)

(assert (=> b!3874353 (= e!2396697 (Cons!41168 (h!46588 lt!1349708) (++!10533 (t!314743 lt!1349708) suffixTokens!72)))))

(declare-fun d!1147335 () Bool)

(assert (=> d!1147335 e!2396696))

(declare-fun res!1569482 () Bool)

(assert (=> d!1147335 (=> (not res!1569482) (not e!2396696))))

(assert (=> d!1147335 (= res!1569482 (= (content!6150 lt!1349852) ((_ map or) (content!6150 lt!1349708) (content!6150 suffixTokens!72))))))

(assert (=> d!1147335 (= lt!1349852 e!2396697)))

(declare-fun c!674159 () Bool)

(assert (=> d!1147335 (= c!674159 ((_ is Nil!41168) lt!1349708))))

(assert (=> d!1147335 (= (++!10533 lt!1349708 suffixTokens!72) lt!1349852)))

(declare-fun b!3874352 () Bool)

(assert (=> b!3874352 (= e!2396697 suffixTokens!72)))

(declare-fun b!3874355 () Bool)

(assert (=> b!3874355 (= e!2396696 (or (not (= suffixTokens!72 Nil!41168)) (= lt!1349852 lt!1349708)))))

(assert (= (and d!1147335 c!674159) b!3874352))

(assert (= (and d!1147335 (not c!674159)) b!3874353))

(assert (= (and d!1147335 res!1569482) b!3874354))

(assert (= (and b!3874354 res!1569481) b!3874355))

(declare-fun m!4431797 () Bool)

(assert (=> b!3874354 m!4431797))

(declare-fun m!4431799 () Bool)

(assert (=> b!3874354 m!4431799))

(assert (=> b!3874354 m!4431527))

(declare-fun m!4431801 () Bool)

(assert (=> b!3874353 m!4431801))

(declare-fun m!4431803 () Bool)

(assert (=> d!1147335 m!4431803))

(declare-fun m!4431805 () Bool)

(assert (=> d!1147335 m!4431805))

(assert (=> d!1147335 m!4431535))

(assert (=> b!3874129 d!1147335))

(assert (=> b!3874129 d!1147327))

(declare-fun d!1147337 () Bool)

(declare-fun e!2396700 () Bool)

(assert (=> d!1147337 e!2396700))

(declare-fun res!1569485 () Bool)

(assert (=> d!1147337 (=> res!1569485 e!2396700)))

(declare-fun lt!1349853 () Bool)

(assert (=> d!1147337 (= res!1569485 (not lt!1349853))))

(declare-fun e!2396698 () Bool)

(assert (=> d!1147337 (= lt!1349853 e!2396698)))

(declare-fun res!1569486 () Bool)

(assert (=> d!1147337 (=> res!1569486 e!2396698)))

(assert (=> d!1147337 (= res!1569486 ((_ is Nil!41167) lt!1349728))))

(assert (=> d!1147337 (= (isPrefix!3487 lt!1349728 lt!1349709) lt!1349853)))

(declare-fun b!3874356 () Bool)

(declare-fun e!2396699 () Bool)

(assert (=> b!3874356 (= e!2396698 e!2396699)))

(declare-fun res!1569483 () Bool)

(assert (=> b!3874356 (=> (not res!1569483) (not e!2396699))))

(assert (=> b!3874356 (= res!1569483 (not ((_ is Nil!41167) lt!1349709)))))

(declare-fun b!3874358 () Bool)

(assert (=> b!3874358 (= e!2396699 (isPrefix!3487 (tail!5928 lt!1349728) (tail!5928 lt!1349709)))))

(declare-fun b!3874359 () Bool)

(assert (=> b!3874359 (= e!2396700 (>= (size!30938 lt!1349709) (size!30938 lt!1349728)))))

(declare-fun b!3874357 () Bool)

(declare-fun res!1569484 () Bool)

(assert (=> b!3874357 (=> (not res!1569484) (not e!2396699))))

(assert (=> b!3874357 (= res!1569484 (= (head!8211 lt!1349728) (head!8211 lt!1349709)))))

(assert (= (and d!1147337 (not res!1569486)) b!3874356))

(assert (= (and b!3874356 res!1569483) b!3874357))

(assert (= (and b!3874357 res!1569484) b!3874358))

(assert (= (and d!1147337 (not res!1569485)) b!3874359))

(declare-fun m!4431807 () Bool)

(assert (=> b!3874358 m!4431807))

(declare-fun m!4431809 () Bool)

(assert (=> b!3874358 m!4431809))

(assert (=> b!3874358 m!4431807))

(assert (=> b!3874358 m!4431809))

(declare-fun m!4431811 () Bool)

(assert (=> b!3874358 m!4431811))

(declare-fun m!4431813 () Bool)

(assert (=> b!3874359 m!4431813))

(assert (=> b!3874359 m!4431791))

(declare-fun m!4431815 () Bool)

(assert (=> b!3874357 m!4431815))

(declare-fun m!4431817 () Bool)

(assert (=> b!3874357 m!4431817))

(assert (=> b!3874129 d!1147337))

(declare-fun d!1147339 () Bool)

(assert (=> d!1147339 (isPrefix!3487 lt!1349728 (++!10534 lt!1349728 suffix!1176))))

(declare-fun lt!1349854 () Unit!59083)

(assert (=> d!1147339 (= lt!1349854 (choose!22930 lt!1349728 suffix!1176))))

(assert (=> d!1147339 (= (lemmaConcatTwoListThenFirstIsPrefix!2350 lt!1349728 suffix!1176) lt!1349854)))

(declare-fun bs!583582 () Bool)

(assert (= bs!583582 d!1147339))

(assert (=> bs!583582 m!4431497))

(assert (=> bs!583582 m!4431497))

(declare-fun m!4431819 () Bool)

(assert (=> bs!583582 m!4431819))

(declare-fun m!4431821 () Bool)

(assert (=> bs!583582 m!4431821))

(assert (=> b!3874129 d!1147339))

(declare-fun b!3874360 () Bool)

(declare-fun e!2396701 () List!41291)

(assert (=> b!3874360 (= e!2396701 lt!1349709)))

(declare-fun d!1147341 () Bool)

(declare-fun e!2396702 () Bool)

(assert (=> d!1147341 e!2396702))

(declare-fun res!1569488 () Bool)

(assert (=> d!1147341 (=> (not res!1569488) (not e!2396702))))

(declare-fun lt!1349855 () List!41291)

(assert (=> d!1147341 (= res!1569488 (= (content!6153 lt!1349855) ((_ map or) (content!6153 lt!1349744) (content!6153 lt!1349709))))))

(assert (=> d!1147341 (= lt!1349855 e!2396701)))

(declare-fun c!674160 () Bool)

(assert (=> d!1147341 (= c!674160 ((_ is Nil!41167) lt!1349744))))

(assert (=> d!1147341 (= (++!10534 lt!1349744 lt!1349709) lt!1349855)))

(declare-fun b!3874363 () Bool)

(assert (=> b!3874363 (= e!2396702 (or (not (= lt!1349709 Nil!41167)) (= lt!1349855 lt!1349744)))))

(declare-fun b!3874361 () Bool)

(assert (=> b!3874361 (= e!2396701 (Cons!41167 (h!46587 lt!1349744) (++!10534 (t!314742 lt!1349744) lt!1349709)))))

(declare-fun b!3874362 () Bool)

(declare-fun res!1569487 () Bool)

(assert (=> b!3874362 (=> (not res!1569487) (not e!2396702))))

(assert (=> b!3874362 (= res!1569487 (= (size!30938 lt!1349855) (+ (size!30938 lt!1349744) (size!30938 lt!1349709))))))

(assert (= (and d!1147341 c!674160) b!3874360))

(assert (= (and d!1147341 (not c!674160)) b!3874361))

(assert (= (and d!1147341 res!1569488) b!3874362))

(assert (= (and b!3874362 res!1569487) b!3874363))

(declare-fun m!4431823 () Bool)

(assert (=> d!1147341 m!4431823))

(assert (=> d!1147341 m!4431577))

(declare-fun m!4431825 () Bool)

(assert (=> d!1147341 m!4431825))

(declare-fun m!4431827 () Bool)

(assert (=> b!3874361 m!4431827))

(declare-fun m!4431829 () Bool)

(assert (=> b!3874362 m!4431829))

(assert (=> b!3874362 m!4431423))

(assert (=> b!3874362 m!4431813))

(assert (=> b!3874109 d!1147341))

(declare-fun b!3874364 () Bool)

(declare-fun e!2396703 () List!41291)

(assert (=> b!3874364 (= e!2396703 suffix!1176)))

(declare-fun d!1147343 () Bool)

(declare-fun e!2396704 () Bool)

(assert (=> d!1147343 e!2396704))

(declare-fun res!1569490 () Bool)

(assert (=> d!1147343 (=> (not res!1569490) (not e!2396704))))

(declare-fun lt!1349856 () List!41291)

(assert (=> d!1147343 (= res!1569490 (= (content!6153 lt!1349856) ((_ map or) (content!6153 lt!1349728) (content!6153 suffix!1176))))))

(assert (=> d!1147343 (= lt!1349856 e!2396703)))

(declare-fun c!674161 () Bool)

(assert (=> d!1147343 (= c!674161 ((_ is Nil!41167) lt!1349728))))

(assert (=> d!1147343 (= (++!10534 lt!1349728 suffix!1176) lt!1349856)))

(declare-fun b!3874367 () Bool)

(assert (=> b!3874367 (= e!2396704 (or (not (= suffix!1176 Nil!41167)) (= lt!1349856 lt!1349728)))))

(declare-fun b!3874365 () Bool)

(assert (=> b!3874365 (= e!2396703 (Cons!41167 (h!46587 lt!1349728) (++!10534 (t!314742 lt!1349728) suffix!1176)))))

(declare-fun b!3874366 () Bool)

(declare-fun res!1569489 () Bool)

(assert (=> b!3874366 (=> (not res!1569489) (not e!2396704))))

(assert (=> b!3874366 (= res!1569489 (= (size!30938 lt!1349856) (+ (size!30938 lt!1349728) (size!30938 suffix!1176))))))

(assert (= (and d!1147343 c!674161) b!3874364))

(assert (= (and d!1147343 (not c!674161)) b!3874365))

(assert (= (and d!1147343 res!1569490) b!3874366))

(assert (= (and b!3874366 res!1569489) b!3874367))

(declare-fun m!4431831 () Bool)

(assert (=> d!1147343 m!4431831))

(declare-fun m!4431833 () Bool)

(assert (=> d!1147343 m!4431833))

(declare-fun m!4431835 () Bool)

(assert (=> d!1147343 m!4431835))

(declare-fun m!4431837 () Bool)

(assert (=> b!3874365 m!4431837))

(declare-fun m!4431839 () Bool)

(assert (=> b!3874366 m!4431839))

(assert (=> b!3874366 m!4431791))

(assert (=> b!3874366 m!4431395))

(assert (=> b!3874109 d!1147343))

(declare-fun d!1147345 () Bool)

(assert (=> d!1147345 (= (++!10534 (++!10534 lt!1349744 lt!1349728) suffix!1176) (++!10534 lt!1349744 (++!10534 lt!1349728 suffix!1176)))))

(declare-fun lt!1349859 () Unit!59083)

(declare-fun choose!22938 (List!41291 List!41291 List!41291) Unit!59083)

(assert (=> d!1147345 (= lt!1349859 (choose!22938 lt!1349744 lt!1349728 suffix!1176))))

(assert (=> d!1147345 (= (lemmaConcatAssociativity!2248 lt!1349744 lt!1349728 suffix!1176) lt!1349859)))

(declare-fun bs!583583 () Bool)

(assert (= bs!583583 d!1147345))

(assert (=> bs!583583 m!4431497))

(assert (=> bs!583583 m!4431369))

(declare-fun m!4431841 () Bool)

(assert (=> bs!583583 m!4431841))

(assert (=> bs!583583 m!4431497))

(declare-fun m!4431843 () Bool)

(assert (=> bs!583583 m!4431843))

(assert (=> bs!583583 m!4431369))

(declare-fun m!4431845 () Bool)

(assert (=> bs!583583 m!4431845))

(assert (=> b!3874109 d!1147345))

(declare-fun d!1147347 () Bool)

(assert (=> d!1147347 (= (++!10533 (++!10533 lt!1349733 lt!1349708) suffixTokens!72) (++!10533 lt!1349733 (++!10533 lt!1349708 suffixTokens!72)))))

(declare-fun lt!1349862 () Unit!59083)

(declare-fun choose!22939 (List!41292 List!41292 List!41292) Unit!59083)

(assert (=> d!1147347 (= lt!1349862 (choose!22939 lt!1349733 lt!1349708 suffixTokens!72))))

(assert (=> d!1147347 (= (lemmaConcatAssociativity!2247 lt!1349733 lt!1349708 suffixTokens!72) lt!1349862)))

(declare-fun bs!583584 () Bool)

(assert (= bs!583584 d!1147347))

(assert (=> bs!583584 m!4431457))

(declare-fun m!4431847 () Bool)

(assert (=> bs!583584 m!4431847))

(assert (=> bs!583584 m!4431457))

(assert (=> bs!583584 m!4431443))

(assert (=> bs!583584 m!4431445))

(assert (=> bs!583584 m!4431443))

(declare-fun m!4431849 () Bool)

(assert (=> bs!583584 m!4431849))

(assert (=> b!3874087 d!1147347))

(declare-fun b!3874370 () Bool)

(declare-fun res!1569491 () Bool)

(declare-fun e!2396705 () Bool)

(assert (=> b!3874370 (=> (not res!1569491) (not e!2396705))))

(declare-fun lt!1349863 () List!41292)

(assert (=> b!3874370 (= res!1569491 (= (size!30939 lt!1349863) (+ (size!30939 lt!1349733) (size!30939 lt!1349718))))))

(declare-fun b!3874369 () Bool)

(declare-fun e!2396706 () List!41292)

(assert (=> b!3874369 (= e!2396706 (Cons!41168 (h!46588 lt!1349733) (++!10533 (t!314743 lt!1349733) lt!1349718)))))

(declare-fun d!1147349 () Bool)

(assert (=> d!1147349 e!2396705))

(declare-fun res!1569492 () Bool)

(assert (=> d!1147349 (=> (not res!1569492) (not e!2396705))))

(assert (=> d!1147349 (= res!1569492 (= (content!6150 lt!1349863) ((_ map or) (content!6150 lt!1349733) (content!6150 lt!1349718))))))

(assert (=> d!1147349 (= lt!1349863 e!2396706)))

(declare-fun c!674162 () Bool)

(assert (=> d!1147349 (= c!674162 ((_ is Nil!41168) lt!1349733))))

(assert (=> d!1147349 (= (++!10533 lt!1349733 lt!1349718) lt!1349863)))

(declare-fun b!3874368 () Bool)

(assert (=> b!3874368 (= e!2396706 lt!1349718)))

(declare-fun b!3874371 () Bool)

(assert (=> b!3874371 (= e!2396705 (or (not (= lt!1349718 Nil!41168)) (= lt!1349863 lt!1349733)))))

(assert (= (and d!1147349 c!674162) b!3874368))

(assert (= (and d!1147349 (not c!674162)) b!3874369))

(assert (= (and d!1147349 res!1569492) b!3874370))

(assert (= (and b!3874370 res!1569491) b!3874371))

(declare-fun m!4431851 () Bool)

(assert (=> b!3874370 m!4431851))

(assert (=> b!3874370 m!4431769))

(declare-fun m!4431853 () Bool)

(assert (=> b!3874370 m!4431853))

(declare-fun m!4431855 () Bool)

(assert (=> b!3874369 m!4431855))

(declare-fun m!4431857 () Bool)

(assert (=> d!1147349 m!4431857))

(assert (=> d!1147349 m!4431777))

(declare-fun m!4431859 () Bool)

(assert (=> d!1147349 m!4431859))

(assert (=> b!3874087 d!1147349))

(declare-fun d!1147351 () Bool)

(assert (=> d!1147351 (= (isEmpty!24430 lt!1349708) ((_ is Nil!41168) lt!1349708))))

(assert (=> b!3874087 d!1147351))

(declare-fun b!3874374 () Bool)

(declare-fun res!1569493 () Bool)

(declare-fun e!2396707 () Bool)

(assert (=> b!3874374 (=> (not res!1569493) (not e!2396707))))

(declare-fun lt!1349864 () List!41292)

(assert (=> b!3874374 (= res!1569493 (= (size!30939 lt!1349864) (+ (size!30939 (++!10533 lt!1349733 lt!1349708)) (size!30939 suffixTokens!72))))))

(declare-fun b!3874373 () Bool)

(declare-fun e!2396708 () List!41292)

(assert (=> b!3874373 (= e!2396708 (Cons!41168 (h!46588 (++!10533 lt!1349733 lt!1349708)) (++!10533 (t!314743 (++!10533 lt!1349733 lt!1349708)) suffixTokens!72)))))

(declare-fun d!1147353 () Bool)

(assert (=> d!1147353 e!2396707))

(declare-fun res!1569494 () Bool)

(assert (=> d!1147353 (=> (not res!1569494) (not e!2396707))))

(assert (=> d!1147353 (= res!1569494 (= (content!6150 lt!1349864) ((_ map or) (content!6150 (++!10533 lt!1349733 lt!1349708)) (content!6150 suffixTokens!72))))))

(assert (=> d!1147353 (= lt!1349864 e!2396708)))

(declare-fun c!674163 () Bool)

(assert (=> d!1147353 (= c!674163 ((_ is Nil!41168) (++!10533 lt!1349733 lt!1349708)))))

(assert (=> d!1147353 (= (++!10533 (++!10533 lt!1349733 lt!1349708) suffixTokens!72) lt!1349864)))

(declare-fun b!3874372 () Bool)

(assert (=> b!3874372 (= e!2396708 suffixTokens!72)))

(declare-fun b!3874375 () Bool)

(assert (=> b!3874375 (= e!2396707 (or (not (= suffixTokens!72 Nil!41168)) (= lt!1349864 (++!10533 lt!1349733 lt!1349708))))))

(assert (= (and d!1147353 c!674163) b!3874372))

(assert (= (and d!1147353 (not c!674163)) b!3874373))

(assert (= (and d!1147353 res!1569494) b!3874374))

(assert (= (and b!3874374 res!1569493) b!3874375))

(declare-fun m!4431861 () Bool)

(assert (=> b!3874374 m!4431861))

(assert (=> b!3874374 m!4431443))

(declare-fun m!4431863 () Bool)

(assert (=> b!3874374 m!4431863))

(assert (=> b!3874374 m!4431527))

(declare-fun m!4431865 () Bool)

(assert (=> b!3874373 m!4431865))

(declare-fun m!4431867 () Bool)

(assert (=> d!1147353 m!4431867))

(assert (=> d!1147353 m!4431443))

(declare-fun m!4431869 () Bool)

(assert (=> d!1147353 m!4431869))

(assert (=> d!1147353 m!4431535))

(assert (=> b!3874087 d!1147353))

(declare-fun b!3874378 () Bool)

(declare-fun res!1569495 () Bool)

(declare-fun e!2396709 () Bool)

(assert (=> b!3874378 (=> (not res!1569495) (not e!2396709))))

(declare-fun lt!1349865 () List!41292)

(assert (=> b!3874378 (= res!1569495 (= (size!30939 lt!1349865) (+ (size!30939 lt!1349733) (size!30939 lt!1349708))))))

(declare-fun b!3874377 () Bool)

(declare-fun e!2396710 () List!41292)

(assert (=> b!3874377 (= e!2396710 (Cons!41168 (h!46588 lt!1349733) (++!10533 (t!314743 lt!1349733) lt!1349708)))))

(declare-fun d!1147355 () Bool)

(assert (=> d!1147355 e!2396709))

(declare-fun res!1569496 () Bool)

(assert (=> d!1147355 (=> (not res!1569496) (not e!2396709))))

(assert (=> d!1147355 (= res!1569496 (= (content!6150 lt!1349865) ((_ map or) (content!6150 lt!1349733) (content!6150 lt!1349708))))))

(assert (=> d!1147355 (= lt!1349865 e!2396710)))

(declare-fun c!674164 () Bool)

(assert (=> d!1147355 (= c!674164 ((_ is Nil!41168) lt!1349733))))

(assert (=> d!1147355 (= (++!10533 lt!1349733 lt!1349708) lt!1349865)))

(declare-fun b!3874376 () Bool)

(assert (=> b!3874376 (= e!2396710 lt!1349708)))

(declare-fun b!3874379 () Bool)

(assert (=> b!3874379 (= e!2396709 (or (not (= lt!1349708 Nil!41168)) (= lt!1349865 lt!1349733)))))

(assert (= (and d!1147355 c!674164) b!3874376))

(assert (= (and d!1147355 (not c!674164)) b!3874377))

(assert (= (and d!1147355 res!1569496) b!3874378))

(assert (= (and b!3874378 res!1569495) b!3874379))

(declare-fun m!4431871 () Bool)

(assert (=> b!3874378 m!4431871))

(assert (=> b!3874378 m!4431769))

(assert (=> b!3874378 m!4431799))

(declare-fun m!4431873 () Bool)

(assert (=> b!3874377 m!4431873))

(declare-fun m!4431875 () Bool)

(assert (=> d!1147355 m!4431875))

(assert (=> d!1147355 m!4431777))

(assert (=> d!1147355 m!4431805))

(assert (=> b!3874087 d!1147355))

(declare-fun d!1147357 () Bool)

(assert (=> d!1147357 (= (head!8210 prefixTokens!80) (h!46588 prefixTokens!80))))

(assert (=> b!3874091 d!1147357))

(declare-fun d!1147359 () Bool)

(declare-fun res!1569501 () Bool)

(declare-fun e!2396713 () Bool)

(assert (=> d!1147359 (=> (not res!1569501) (not e!2396713))))

(assert (=> d!1147359 (= res!1569501 (not (isEmpty!24432 (originalCharacters!6988 (h!46588 prefixTokens!80)))))))

(assert (=> d!1147359 (= (inv!55326 (h!46588 prefixTokens!80)) e!2396713)))

(declare-fun b!3874384 () Bool)

(declare-fun res!1569502 () Bool)

(assert (=> b!3874384 (=> (not res!1569502) (not e!2396713))))

(assert (=> b!3874384 (= res!1569502 (= (originalCharacters!6988 (h!46588 prefixTokens!80)) (list!15312 (dynLambda!17704 (toChars!8675 (transformation!6388 (rule!9280 (h!46588 prefixTokens!80)))) (value!202692 (h!46588 prefixTokens!80))))))))

(declare-fun b!3874385 () Bool)

(assert (=> b!3874385 (= e!2396713 (= (size!30937 (h!46588 prefixTokens!80)) (size!30938 (originalCharacters!6988 (h!46588 prefixTokens!80)))))))

(assert (= (and d!1147359 res!1569501) b!3874384))

(assert (= (and b!3874384 res!1569502) b!3874385))

(declare-fun b_lambda!113131 () Bool)

(assert (=> (not b_lambda!113131) (not b!3874384)))

(declare-fun tb!224765 () Bool)

(declare-fun t!314758 () Bool)

(assert (=> (and b!3874100 (= (toChars!8675 (transformation!6388 (h!46589 rules!2768))) (toChars!8675 (transformation!6388 (rule!9280 (h!46588 prefixTokens!80))))) t!314758) tb!224765))

(declare-fun b!3874386 () Bool)

(declare-fun e!2396714 () Bool)

(declare-fun tp!1174588 () Bool)

(assert (=> b!3874386 (= e!2396714 (and (inv!55328 (c!674099 (dynLambda!17704 (toChars!8675 (transformation!6388 (rule!9280 (h!46588 prefixTokens!80)))) (value!202692 (h!46588 prefixTokens!80))))) tp!1174588))))

(declare-fun result!273770 () Bool)

(assert (=> tb!224765 (= result!273770 (and (inv!55329 (dynLambda!17704 (toChars!8675 (transformation!6388 (rule!9280 (h!46588 prefixTokens!80)))) (value!202692 (h!46588 prefixTokens!80)))) e!2396714))))

(assert (= tb!224765 b!3874386))

(declare-fun m!4431877 () Bool)

(assert (=> b!3874386 m!4431877))

(declare-fun m!4431879 () Bool)

(assert (=> tb!224765 m!4431879))

(assert (=> b!3874384 t!314758))

(declare-fun b_and!290475 () Bool)

(assert (= b_and!290469 (and (=> t!314758 result!273770) b_and!290475)))

(declare-fun t!314760 () Bool)

(declare-fun tb!224767 () Bool)

(assert (=> (and b!3874110 (= (toChars!8675 (transformation!6388 (rule!9280 (h!46588 prefixTokens!80)))) (toChars!8675 (transformation!6388 (rule!9280 (h!46588 prefixTokens!80))))) t!314760) tb!224767))

(declare-fun result!273772 () Bool)

(assert (= result!273772 result!273770))

(assert (=> b!3874384 t!314760))

(declare-fun b_and!290477 () Bool)

(assert (= b_and!290471 (and (=> t!314760 result!273772) b_and!290477)))

(declare-fun t!314762 () Bool)

(declare-fun tb!224769 () Bool)

(assert (=> (and b!3874102 (= (toChars!8675 (transformation!6388 (rule!9280 (h!46588 suffixTokens!72)))) (toChars!8675 (transformation!6388 (rule!9280 (h!46588 prefixTokens!80))))) t!314762) tb!224769))

(declare-fun result!273774 () Bool)

(assert (= result!273774 result!273770))

(assert (=> b!3874384 t!314762))

(declare-fun b_and!290479 () Bool)

(assert (= b_and!290473 (and (=> t!314762 result!273774) b_and!290479)))

(declare-fun m!4431881 () Bool)

(assert (=> d!1147359 m!4431881))

(declare-fun m!4431883 () Bool)

(assert (=> b!3874384 m!4431883))

(assert (=> b!3874384 m!4431883))

(declare-fun m!4431885 () Bool)

(assert (=> b!3874384 m!4431885))

(declare-fun m!4431887 () Bool)

(assert (=> b!3874385 m!4431887))

(assert (=> b!3874090 d!1147359))

(declare-fun d!1147361 () Bool)

(assert (=> d!1147361 (= (inv!55323 (tag!7248 (rule!9280 (h!46588 prefixTokens!80)))) (= (mod (str.len (value!202691 (tag!7248 (rule!9280 (h!46588 prefixTokens!80))))) 2) 0))))

(assert (=> b!3874132 d!1147361))

(declare-fun d!1147363 () Bool)

(declare-fun res!1569503 () Bool)

(declare-fun e!2396715 () Bool)

(assert (=> d!1147363 (=> (not res!1569503) (not e!2396715))))

(assert (=> d!1147363 (= res!1569503 (semiInverseModEq!2741 (toChars!8675 (transformation!6388 (rule!9280 (h!46588 prefixTokens!80)))) (toValue!8816 (transformation!6388 (rule!9280 (h!46588 prefixTokens!80))))))))

(assert (=> d!1147363 (= (inv!55327 (transformation!6388 (rule!9280 (h!46588 prefixTokens!80)))) e!2396715)))

(declare-fun b!3874387 () Bool)

(assert (=> b!3874387 (= e!2396715 (equivClasses!2640 (toChars!8675 (transformation!6388 (rule!9280 (h!46588 prefixTokens!80)))) (toValue!8816 (transformation!6388 (rule!9280 (h!46588 prefixTokens!80))))))))

(assert (= (and d!1147363 res!1569503) b!3874387))

(declare-fun m!4431889 () Bool)

(assert (=> d!1147363 m!4431889))

(declare-fun m!4431891 () Bool)

(assert (=> b!3874387 m!4431891))

(assert (=> b!3874132 d!1147363))

(declare-fun d!1147365 () Bool)

(assert (=> d!1147365 (= (isEmpty!24432 prefix!426) ((_ is Nil!41167) prefix!426))))

(assert (=> b!3874111 d!1147365))

(declare-fun d!1147367 () Bool)

(declare-fun res!1569506 () Bool)

(declare-fun e!2396718 () Bool)

(assert (=> d!1147367 (=> (not res!1569506) (not e!2396718))))

(declare-fun rulesValid!2475 (LexerInterface!5977 List!41293) Bool)

(assert (=> d!1147367 (= res!1569506 (rulesValid!2475 thiss!20629 rules!2768))))

(assert (=> d!1147367 (= (rulesInvariant!5320 thiss!20629 rules!2768) e!2396718)))

(declare-fun b!3874390 () Bool)

(declare-datatypes ((List!41294 0))(
  ( (Nil!41170) (Cons!41170 (h!46590 String!46808) (t!314841 List!41294)) )
))
(declare-fun noDuplicateTag!2476 (LexerInterface!5977 List!41293 List!41294) Bool)

(assert (=> b!3874390 (= e!2396718 (noDuplicateTag!2476 thiss!20629 rules!2768 Nil!41170))))

(assert (= (and d!1147367 res!1569506) b!3874390))

(declare-fun m!4431893 () Bool)

(assert (=> d!1147367 m!4431893))

(declare-fun m!4431895 () Bool)

(assert (=> b!3874390 m!4431895))

(assert (=> b!3874115 d!1147367))

(declare-fun d!1147369 () Bool)

(assert (=> d!1147369 (and (= lt!1349744 lt!1349744) (= (_2!23331 (v!39103 lt!1349737)) (_2!23331 lt!1349751)))))

(declare-fun lt!1349868 () Unit!59083)

(declare-fun choose!22942 (List!41291 List!41291 List!41291 List!41291) Unit!59083)

(assert (=> d!1147369 (= lt!1349868 (choose!22942 lt!1349744 (_2!23331 (v!39103 lt!1349737)) lt!1349744 (_2!23331 lt!1349751)))))

(assert (=> d!1147369 (= (++!10534 lt!1349744 (_2!23331 (v!39103 lt!1349737))) (++!10534 lt!1349744 (_2!23331 lt!1349751)))))

(assert (=> d!1147369 (= (lemmaConcatSameAndSameSizesThenSameLists!472 lt!1349744 (_2!23331 (v!39103 lt!1349737)) lt!1349744 (_2!23331 lt!1349751)) lt!1349868)))

(declare-fun bs!583585 () Bool)

(assert (= bs!583585 d!1147369))

(declare-fun m!4431897 () Bool)

(assert (=> bs!583585 m!4431897))

(assert (=> bs!583585 m!4431421))

(declare-fun m!4431899 () Bool)

(assert (=> bs!583585 m!4431899))

(assert (=> b!3874114 d!1147369))

(declare-fun d!1147371 () Bool)

(assert (=> d!1147371 (not (= (lexList!1745 thiss!20629 rules!2768 (_2!23331 lt!1349751)) (tuple2!40397 suffixTokens!72 suffixResult!91)))))

(declare-fun lt!1349881 () Unit!59083)

(declare-fun choose!22943 (LexerInterface!5977 List!41293 List!41291 List!41291 List!41292 List!41291) Unit!59083)

(assert (=> d!1147371 (= lt!1349881 (choose!22943 thiss!20629 rules!2768 suffix!1176 (_2!23331 lt!1349751) suffixTokens!72 suffixResult!91))))

(assert (=> d!1147371 (not (isEmpty!24431 rules!2768))))

(assert (=> d!1147371 (= (lemmaLexWithSmallerInputCannotProduceSameResults!48 thiss!20629 rules!2768 suffix!1176 (_2!23331 lt!1349751) suffixTokens!72 suffixResult!91) lt!1349881)))

(declare-fun bs!583586 () Bool)

(assert (= bs!583586 d!1147371))

(assert (=> bs!583586 m!4431391))

(declare-fun m!4431901 () Bool)

(assert (=> bs!583586 m!4431901))

(assert (=> bs!583586 m!4431431))

(assert (=> b!3874114 d!1147371))

(declare-fun d!1147373 () Bool)

(declare-fun lt!1349882 () Int)

(assert (=> d!1147373 (>= lt!1349882 0)))

(declare-fun e!2396727 () Int)

(assert (=> d!1147373 (= lt!1349882 e!2396727)))

(declare-fun c!674167 () Bool)

(assert (=> d!1147373 (= c!674167 ((_ is Nil!41167) suffix!1176))))

(assert (=> d!1147373 (= (size!30938 suffix!1176) lt!1349882)))

(declare-fun b!3874409 () Bool)

(assert (=> b!3874409 (= e!2396727 0)))

(declare-fun b!3874410 () Bool)

(assert (=> b!3874410 (= e!2396727 (+ 1 (size!30938 (t!314742 suffix!1176))))))

(assert (= (and d!1147373 c!674167) b!3874409))

(assert (= (and d!1147373 (not c!674167)) b!3874410))

(declare-fun m!4431903 () Bool)

(assert (=> b!3874410 m!4431903))

(assert (=> b!3874093 d!1147373))

(declare-fun d!1147375 () Bool)

(declare-fun lt!1349883 () Int)

(assert (=> d!1147375 (>= lt!1349883 0)))

(declare-fun e!2396728 () Int)

(assert (=> d!1147375 (= lt!1349883 e!2396728)))

(declare-fun c!674168 () Bool)

(assert (=> d!1147375 (= c!674168 ((_ is Nil!41167) (_2!23331 (v!39103 lt!1349737))))))

(assert (=> d!1147375 (= (size!30938 (_2!23331 (v!39103 lt!1349737))) lt!1349883)))

(declare-fun b!3874411 () Bool)

(assert (=> b!3874411 (= e!2396728 0)))

(declare-fun b!3874412 () Bool)

(assert (=> b!3874412 (= e!2396728 (+ 1 (size!30938 (t!314742 (_2!23331 (v!39103 lt!1349737))))))))

(assert (= (and d!1147375 c!674168) b!3874411))

(assert (= (and d!1147375 (not c!674168)) b!3874412))

(declare-fun m!4431905 () Bool)

(assert (=> b!3874412 m!4431905))

(assert (=> b!3874093 d!1147375))

(declare-fun b!3874413 () Bool)

(declare-fun e!2396729 () List!41291)

(assert (=> b!3874413 (= e!2396729 suffix!1176)))

(declare-fun d!1147377 () Bool)

(declare-fun e!2396730 () Bool)

(assert (=> d!1147377 e!2396730))

(declare-fun res!1569522 () Bool)

(assert (=> d!1147377 (=> (not res!1569522) (not e!2396730))))

(declare-fun lt!1349884 () List!41291)

(assert (=> d!1147377 (= res!1569522 (= (content!6153 lt!1349884) ((_ map or) (content!6153 lt!1349729) (content!6153 suffix!1176))))))

(assert (=> d!1147377 (= lt!1349884 e!2396729)))

(declare-fun c!674169 () Bool)

(assert (=> d!1147377 (= c!674169 ((_ is Nil!41167) lt!1349729))))

(assert (=> d!1147377 (= (++!10534 lt!1349729 suffix!1176) lt!1349884)))

(declare-fun b!3874416 () Bool)

(assert (=> b!3874416 (= e!2396730 (or (not (= suffix!1176 Nil!41167)) (= lt!1349884 lt!1349729)))))

(declare-fun b!3874414 () Bool)

(assert (=> b!3874414 (= e!2396729 (Cons!41167 (h!46587 lt!1349729) (++!10534 (t!314742 lt!1349729) suffix!1176)))))

(declare-fun b!3874415 () Bool)

(declare-fun res!1569521 () Bool)

(assert (=> b!3874415 (=> (not res!1569521) (not e!2396730))))

(assert (=> b!3874415 (= res!1569521 (= (size!30938 lt!1349884) (+ (size!30938 lt!1349729) (size!30938 suffix!1176))))))

(assert (= (and d!1147377 c!674169) b!3874413))

(assert (= (and d!1147377 (not c!674169)) b!3874414))

(assert (= (and d!1147377 res!1569522) b!3874415))

(assert (= (and b!3874415 res!1569521) b!3874416))

(declare-fun m!4431907 () Bool)

(assert (=> d!1147377 m!4431907))

(declare-fun m!4431909 () Bool)

(assert (=> d!1147377 m!4431909))

(assert (=> d!1147377 m!4431835))

(declare-fun m!4431911 () Bool)

(assert (=> b!3874414 m!4431911))

(declare-fun m!4431913 () Bool)

(assert (=> b!3874415 m!4431913))

(declare-fun m!4431915 () Bool)

(assert (=> b!3874415 m!4431915))

(assert (=> b!3874415 m!4431395))

(assert (=> b!3874092 d!1147377))

(declare-fun d!1147379 () Bool)

(assert (=> d!1147379 (= (inv!55323 (tag!7248 (h!46589 rules!2768))) (= (mod (str.len (value!202691 (tag!7248 (h!46589 rules!2768)))) 2) 0))))

(assert (=> b!3874134 d!1147379))

(declare-fun d!1147381 () Bool)

(declare-fun res!1569523 () Bool)

(declare-fun e!2396731 () Bool)

(assert (=> d!1147381 (=> (not res!1569523) (not e!2396731))))

(assert (=> d!1147381 (= res!1569523 (semiInverseModEq!2741 (toChars!8675 (transformation!6388 (h!46589 rules!2768))) (toValue!8816 (transformation!6388 (h!46589 rules!2768)))))))

(assert (=> d!1147381 (= (inv!55327 (transformation!6388 (h!46589 rules!2768))) e!2396731)))

(declare-fun b!3874417 () Bool)

(assert (=> b!3874417 (= e!2396731 (equivClasses!2640 (toChars!8675 (transformation!6388 (h!46589 rules!2768))) (toValue!8816 (transformation!6388 (h!46589 rules!2768)))))))

(assert (= (and d!1147381 res!1569523) b!3874417))

(declare-fun m!4431917 () Bool)

(assert (=> d!1147381 m!4431917))

(declare-fun m!4431919 () Bool)

(assert (=> b!3874417 m!4431919))

(assert (=> b!3874134 d!1147381))

(declare-fun d!1147383 () Bool)

(declare-fun lt!1349885 () Int)

(assert (=> d!1147383 (>= lt!1349885 0)))

(declare-fun e!2396732 () Int)

(assert (=> d!1147383 (= lt!1349885 e!2396732)))

(declare-fun c!674170 () Bool)

(assert (=> d!1147383 (= c!674170 ((_ is Nil!41167) (originalCharacters!6988 (_1!23331 (v!39103 lt!1349737)))))))

(assert (=> d!1147383 (= (size!30938 (originalCharacters!6988 (_1!23331 (v!39103 lt!1349737)))) lt!1349885)))

(declare-fun b!3874418 () Bool)

(assert (=> b!3874418 (= e!2396732 0)))

(declare-fun b!3874419 () Bool)

(assert (=> b!3874419 (= e!2396732 (+ 1 (size!30938 (t!314742 (originalCharacters!6988 (_1!23331 (v!39103 lt!1349737)))))))))

(assert (= (and d!1147383 c!674170) b!3874418))

(assert (= (and d!1147383 (not c!674170)) b!3874419))

(declare-fun m!4431921 () Bool)

(assert (=> b!3874419 m!4431921))

(assert (=> b!3874133 d!1147383))

(declare-fun b!3874420 () Bool)

(declare-fun e!2396735 () tuple2!40396)

(declare-fun lt!1349888 () Option!8806)

(declare-fun lt!1349887 () tuple2!40396)

(assert (=> b!3874420 (= e!2396735 (tuple2!40397 (Cons!41168 (_1!23331 (v!39103 lt!1349888)) (_1!23332 lt!1349887)) (_2!23332 lt!1349887)))))

(assert (=> b!3874420 (= lt!1349887 (lexList!1745 thiss!20629 rules!2768 (_2!23331 (v!39103 lt!1349888))))))

(declare-fun b!3874421 () Bool)

(assert (=> b!3874421 (= e!2396735 (tuple2!40397 Nil!41168 lt!1349735))))

(declare-fun d!1147385 () Bool)

(declare-fun e!2396733 () Bool)

(assert (=> d!1147385 e!2396733))

(declare-fun c!674172 () Bool)

(declare-fun lt!1349886 () tuple2!40396)

(assert (=> d!1147385 (= c!674172 (> (size!30939 (_1!23332 lt!1349886)) 0))))

(assert (=> d!1147385 (= lt!1349886 e!2396735)))

(declare-fun c!674171 () Bool)

(assert (=> d!1147385 (= c!674171 ((_ is Some!8805) lt!1349888))))

(assert (=> d!1147385 (= lt!1349888 (maxPrefix!3281 thiss!20629 rules!2768 lt!1349735))))

(assert (=> d!1147385 (= (lexList!1745 thiss!20629 rules!2768 lt!1349735) lt!1349886)))

(declare-fun b!3874422 () Bool)

(declare-fun e!2396734 () Bool)

(assert (=> b!3874422 (= e!2396733 e!2396734)))

(declare-fun res!1569524 () Bool)

(assert (=> b!3874422 (= res!1569524 (< (size!30938 (_2!23332 lt!1349886)) (size!30938 lt!1349735)))))

(assert (=> b!3874422 (=> (not res!1569524) (not e!2396734))))

(declare-fun b!3874423 () Bool)

(assert (=> b!3874423 (= e!2396733 (= (_2!23332 lt!1349886) lt!1349735))))

(declare-fun b!3874424 () Bool)

(assert (=> b!3874424 (= e!2396734 (not (isEmpty!24430 (_1!23332 lt!1349886))))))

(assert (= (and d!1147385 c!674171) b!3874420))

(assert (= (and d!1147385 (not c!674171)) b!3874421))

(assert (= (and d!1147385 c!674172) b!3874422))

(assert (= (and d!1147385 (not c!674172)) b!3874423))

(assert (= (and b!3874422 res!1569524) b!3874424))

(declare-fun m!4431923 () Bool)

(assert (=> b!3874420 m!4431923))

(declare-fun m!4431925 () Bool)

(assert (=> d!1147385 m!4431925))

(assert (=> d!1147385 m!4431367))

(declare-fun m!4431927 () Bool)

(assert (=> b!3874422 m!4431927))

(assert (=> b!3874422 m!4431515))

(declare-fun m!4431929 () Bool)

(assert (=> b!3874424 m!4431929))

(assert (=> b!3874113 d!1147385))

(declare-fun b!3874427 () Bool)

(declare-fun res!1569525 () Bool)

(declare-fun e!2396736 () Bool)

(assert (=> b!3874427 (=> (not res!1569525) (not e!2396736))))

(declare-fun lt!1349889 () List!41292)

(assert (=> b!3874427 (= res!1569525 (= (size!30939 lt!1349889) (+ (size!30939 prefixTokens!80) (size!30939 suffixTokens!72))))))

(declare-fun b!3874426 () Bool)

(declare-fun e!2396737 () List!41292)

(assert (=> b!3874426 (= e!2396737 (Cons!41168 (h!46588 prefixTokens!80) (++!10533 (t!314743 prefixTokens!80) suffixTokens!72)))))

(declare-fun d!1147387 () Bool)

(assert (=> d!1147387 e!2396736))

(declare-fun res!1569526 () Bool)

(assert (=> d!1147387 (=> (not res!1569526) (not e!2396736))))

(assert (=> d!1147387 (= res!1569526 (= (content!6150 lt!1349889) ((_ map or) (content!6150 prefixTokens!80) (content!6150 suffixTokens!72))))))

(assert (=> d!1147387 (= lt!1349889 e!2396737)))

(declare-fun c!674173 () Bool)

(assert (=> d!1147387 (= c!674173 ((_ is Nil!41168) prefixTokens!80))))

(assert (=> d!1147387 (= (++!10533 prefixTokens!80 suffixTokens!72) lt!1349889)))

(declare-fun b!3874425 () Bool)

(assert (=> b!3874425 (= e!2396737 suffixTokens!72)))

(declare-fun b!3874428 () Bool)

(assert (=> b!3874428 (= e!2396736 (or (not (= suffixTokens!72 Nil!41168)) (= lt!1349889 prefixTokens!80)))))

(assert (= (and d!1147387 c!674173) b!3874425))

(assert (= (and d!1147387 (not c!674173)) b!3874426))

(assert (= (and d!1147387 res!1569526) b!3874427))

(assert (= (and b!3874427 res!1569525) b!3874428))

(declare-fun m!4431931 () Bool)

(assert (=> b!3874427 m!4431931))

(declare-fun m!4431933 () Bool)

(assert (=> b!3874427 m!4431933))

(assert (=> b!3874427 m!4431527))

(declare-fun m!4431935 () Bool)

(assert (=> b!3874426 m!4431935))

(declare-fun m!4431937 () Bool)

(assert (=> d!1147387 m!4431937))

(declare-fun m!4431939 () Bool)

(assert (=> d!1147387 m!4431939))

(assert (=> d!1147387 m!4431535))

(assert (=> b!3874113 d!1147387))

(declare-fun b!3874429 () Bool)

(declare-fun e!2396738 () List!41291)

(assert (=> b!3874429 (= e!2396738 suffix!1176)))

(declare-fun d!1147389 () Bool)

(declare-fun e!2396739 () Bool)

(assert (=> d!1147389 e!2396739))

(declare-fun res!1569528 () Bool)

(assert (=> d!1147389 (=> (not res!1569528) (not e!2396739))))

(declare-fun lt!1349890 () List!41291)

(assert (=> d!1147389 (= res!1569528 (= (content!6153 lt!1349890) ((_ map or) (content!6153 prefix!426) (content!6153 suffix!1176))))))

(assert (=> d!1147389 (= lt!1349890 e!2396738)))

(declare-fun c!674174 () Bool)

(assert (=> d!1147389 (= c!674174 ((_ is Nil!41167) prefix!426))))

(assert (=> d!1147389 (= (++!10534 prefix!426 suffix!1176) lt!1349890)))

(declare-fun b!3874432 () Bool)

(assert (=> b!3874432 (= e!2396739 (or (not (= suffix!1176 Nil!41167)) (= lt!1349890 prefix!426)))))

(declare-fun b!3874430 () Bool)

(assert (=> b!3874430 (= e!2396738 (Cons!41167 (h!46587 prefix!426) (++!10534 (t!314742 prefix!426) suffix!1176)))))

(declare-fun b!3874431 () Bool)

(declare-fun res!1569527 () Bool)

(assert (=> b!3874431 (=> (not res!1569527) (not e!2396739))))

(assert (=> b!3874431 (= res!1569527 (= (size!30938 lt!1349890) (+ (size!30938 prefix!426) (size!30938 suffix!1176))))))

(assert (= (and d!1147389 c!674174) b!3874429))

(assert (= (and d!1147389 (not c!674174)) b!3874430))

(assert (= (and d!1147389 res!1569528) b!3874431))

(assert (= (and b!3874431 res!1569527) b!3874432))

(declare-fun m!4431941 () Bool)

(assert (=> d!1147389 m!4431941))

(declare-fun m!4431943 () Bool)

(assert (=> d!1147389 m!4431943))

(assert (=> d!1147389 m!4431835))

(declare-fun m!4431945 () Bool)

(assert (=> b!3874430 m!4431945))

(declare-fun m!4431947 () Bool)

(assert (=> b!3874431 m!4431947))

(assert (=> b!3874431 m!4431379))

(assert (=> b!3874431 m!4431395))

(assert (=> b!3874113 d!1147389))

(declare-fun d!1147391 () Bool)

(assert (=> d!1147391 (= (_2!23331 (v!39103 lt!1349737)) lt!1349709)))

(declare-fun lt!1349891 () Unit!59083)

(assert (=> d!1147391 (= lt!1349891 (choose!22932 lt!1349744 (_2!23331 (v!39103 lt!1349737)) lt!1349744 lt!1349709 lt!1349735))))

(assert (=> d!1147391 (isPrefix!3487 lt!1349744 lt!1349735)))

(assert (=> d!1147391 (= (lemmaSamePrefixThenSameSuffix!1708 lt!1349744 (_2!23331 (v!39103 lt!1349737)) lt!1349744 lt!1349709 lt!1349735) lt!1349891)))

(declare-fun bs!583587 () Bool)

(assert (= bs!583587 d!1147391))

(declare-fun m!4431949 () Bool)

(assert (=> bs!583587 m!4431949))

(assert (=> bs!583587 m!4431663))

(assert (=> b!3874117 d!1147391))

(declare-fun d!1147393 () Bool)

(declare-fun e!2396742 () Bool)

(assert (=> d!1147393 e!2396742))

(declare-fun res!1569531 () Bool)

(assert (=> d!1147393 (=> res!1569531 e!2396742)))

(declare-fun lt!1349892 () Bool)

(assert (=> d!1147393 (= res!1569531 (not lt!1349892))))

(declare-fun e!2396740 () Bool)

(assert (=> d!1147393 (= lt!1349892 e!2396740)))

(declare-fun res!1569532 () Bool)

(assert (=> d!1147393 (=> res!1569532 e!2396740)))

(assert (=> d!1147393 (= res!1569532 ((_ is Nil!41167) lt!1349744))))

(assert (=> d!1147393 (= (isPrefix!3487 lt!1349744 lt!1349739) lt!1349892)))

(declare-fun b!3874433 () Bool)

(declare-fun e!2396741 () Bool)

(assert (=> b!3874433 (= e!2396740 e!2396741)))

(declare-fun res!1569529 () Bool)

(assert (=> b!3874433 (=> (not res!1569529) (not e!2396741))))

(assert (=> b!3874433 (= res!1569529 (not ((_ is Nil!41167) lt!1349739)))))

(declare-fun b!3874435 () Bool)

(assert (=> b!3874435 (= e!2396741 (isPrefix!3487 (tail!5928 lt!1349744) (tail!5928 lt!1349739)))))

(declare-fun b!3874436 () Bool)

(assert (=> b!3874436 (= e!2396742 (>= (size!30938 lt!1349739) (size!30938 lt!1349744)))))

(declare-fun b!3874434 () Bool)

(declare-fun res!1569530 () Bool)

(assert (=> b!3874434 (=> (not res!1569530) (not e!2396741))))

(assert (=> b!3874434 (= res!1569530 (= (head!8211 lt!1349744) (head!8211 lt!1349739)))))

(assert (= (and d!1147393 (not res!1569532)) b!3874433))

(assert (= (and b!3874433 res!1569529) b!3874434))

(assert (= (and b!3874434 res!1569530) b!3874435))

(assert (= (and d!1147393 (not res!1569531)) b!3874436))

(assert (=> b!3874435 m!4431537))

(declare-fun m!4431951 () Bool)

(assert (=> b!3874435 m!4431951))

(assert (=> b!3874435 m!4431537))

(assert (=> b!3874435 m!4431951))

(declare-fun m!4431953 () Bool)

(assert (=> b!3874435 m!4431953))

(declare-fun m!4431955 () Bool)

(assert (=> b!3874436 m!4431955))

(assert (=> b!3874436 m!4431423))

(assert (=> b!3874434 m!4431543))

(declare-fun m!4431957 () Bool)

(assert (=> b!3874434 m!4431957))

(assert (=> b!3874117 d!1147393))

(declare-fun d!1147395 () Bool)

(assert (=> d!1147395 (isPrefix!3487 lt!1349744 (++!10534 lt!1349744 lt!1349709))))

(declare-fun lt!1349898 () Unit!59083)

(assert (=> d!1147395 (= lt!1349898 (choose!22930 lt!1349744 lt!1349709))))

(assert (=> d!1147395 (= (lemmaConcatTwoListThenFirstIsPrefix!2350 lt!1349744 lt!1349709) lt!1349898)))

(declare-fun bs!583588 () Bool)

(assert (= bs!583588 d!1147395))

(assert (=> bs!583588 m!4431495))

(assert (=> bs!583588 m!4431495))

(declare-fun m!4431959 () Bool)

(assert (=> bs!583588 m!4431959))

(declare-fun m!4431961 () Bool)

(assert (=> bs!583588 m!4431961))

(assert (=> b!3874117 d!1147395))

(declare-fun d!1147397 () Bool)

(declare-fun lt!1349899 () Int)

(assert (=> d!1147397 (>= lt!1349899 0)))

(declare-fun e!2396747 () Int)

(assert (=> d!1147397 (= lt!1349899 e!2396747)))

(declare-fun c!674176 () Bool)

(assert (=> d!1147397 (= c!674176 ((_ is Nil!41167) (_2!23331 lt!1349751)))))

(assert (=> d!1147397 (= (size!30938 (_2!23331 lt!1349751)) lt!1349899)))

(declare-fun b!3874446 () Bool)

(assert (=> b!3874446 (= e!2396747 0)))

(declare-fun b!3874447 () Bool)

(assert (=> b!3874447 (= e!2396747 (+ 1 (size!30938 (t!314742 (_2!23331 lt!1349751)))))))

(assert (= (and d!1147397 c!674176) b!3874446))

(assert (= (and d!1147397 (not c!674176)) b!3874447))

(declare-fun m!4431963 () Bool)

(assert (=> b!3874447 m!4431963))

(assert (=> b!3874116 d!1147397))

(declare-fun b!3874535 () Bool)

(declare-fun e!2396800 () Option!8806)

(declare-datatypes ((tuple2!40400 0))(
  ( (tuple2!40401 (_1!23334 List!41291) (_2!23334 List!41291)) )
))
(declare-fun lt!1349956 () tuple2!40400)

(declare-fun size!30942 (BalanceConc!24792) Int)

(assert (=> b!3874535 (= e!2396800 (Some!8805 (tuple2!40395 (Token!11915 (apply!9631 (transformation!6388 (rule!9280 (_1!23331 (v!39103 lt!1349737)))) (seqFromList!4659 (_1!23334 lt!1349956))) (rule!9280 (_1!23331 (v!39103 lt!1349737))) (size!30942 (seqFromList!4659 (_1!23334 lt!1349956))) (_1!23334 lt!1349956)) (_2!23334 lt!1349956))))))

(declare-fun lt!1349953 () Unit!59083)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!1181 (Regex!11293 List!41291) Unit!59083)

(assert (=> b!3874535 (= lt!1349953 (longestMatchIsAcceptedByMatchOrIsEmpty!1181 (regex!6388 (rule!9280 (_1!23331 (v!39103 lt!1349737)))) lt!1349735))))

(declare-fun res!1569591 () Bool)

(declare-fun findLongestMatchInner!1208 (Regex!11293 List!41291 Int List!41291 List!41291 Int) tuple2!40400)

(assert (=> b!3874535 (= res!1569591 (isEmpty!24432 (_1!23334 (findLongestMatchInner!1208 (regex!6388 (rule!9280 (_1!23331 (v!39103 lt!1349737)))) Nil!41167 (size!30938 Nil!41167) lt!1349735 lt!1349735 (size!30938 lt!1349735)))))))

(declare-fun e!2396799 () Bool)

(assert (=> b!3874535 (=> res!1569591 e!2396799)))

(assert (=> b!3874535 e!2396799))

(declare-fun lt!1349955 () Unit!59083)

(assert (=> b!3874535 (= lt!1349955 lt!1349953)))

(declare-fun lt!1349954 () Unit!59083)

(declare-fun lemmaSemiInverse!1714 (TokenValueInjection!12664 BalanceConc!24792) Unit!59083)

(assert (=> b!3874535 (= lt!1349954 (lemmaSemiInverse!1714 (transformation!6388 (rule!9280 (_1!23331 (v!39103 lt!1349737)))) (seqFromList!4659 (_1!23334 lt!1349956))))))

(declare-fun b!3874536 () Bool)

(declare-fun e!2396801 () Bool)

(declare-fun e!2396798 () Bool)

(assert (=> b!3874536 (= e!2396801 e!2396798)))

(declare-fun res!1569589 () Bool)

(assert (=> b!3874536 (=> (not res!1569589) (not e!2396798))))

(declare-fun lt!1349952 () Option!8806)

(declare-fun matchR!5418 (Regex!11293 List!41291) Bool)

(assert (=> b!3874536 (= res!1569589 (matchR!5418 (regex!6388 (rule!9280 (_1!23331 (v!39103 lt!1349737)))) (list!15312 (charsOf!4216 (_1!23331 (get!13622 lt!1349952))))))))

(declare-fun d!1147399 () Bool)

(assert (=> d!1147399 e!2396801))

(declare-fun res!1569590 () Bool)

(assert (=> d!1147399 (=> res!1569590 e!2396801)))

(declare-fun isEmpty!24434 (Option!8806) Bool)

(assert (=> d!1147399 (= res!1569590 (isEmpty!24434 lt!1349952))))

(assert (=> d!1147399 (= lt!1349952 e!2396800)))

(declare-fun c!674192 () Bool)

(assert (=> d!1147399 (= c!674192 (isEmpty!24432 (_1!23334 lt!1349956)))))

(declare-fun findLongestMatch!1121 (Regex!11293 List!41291) tuple2!40400)

(assert (=> d!1147399 (= lt!1349956 (findLongestMatch!1121 (regex!6388 (rule!9280 (_1!23331 (v!39103 lt!1349737)))) lt!1349735))))

(assert (=> d!1147399 (ruleValid!2340 thiss!20629 (rule!9280 (_1!23331 (v!39103 lt!1349737))))))

(assert (=> d!1147399 (= (maxPrefixOneRule!2363 thiss!20629 (rule!9280 (_1!23331 (v!39103 lt!1349737))) lt!1349735) lt!1349952)))

(declare-fun b!3874537 () Bool)

(declare-fun res!1569593 () Bool)

(assert (=> b!3874537 (=> (not res!1569593) (not e!2396798))))

(assert (=> b!3874537 (= res!1569593 (< (size!30938 (_2!23331 (get!13622 lt!1349952))) (size!30938 lt!1349735)))))

(declare-fun b!3874538 () Bool)

(assert (=> b!3874538 (= e!2396799 (matchR!5418 (regex!6388 (rule!9280 (_1!23331 (v!39103 lt!1349737)))) (_1!23334 (findLongestMatchInner!1208 (regex!6388 (rule!9280 (_1!23331 (v!39103 lt!1349737)))) Nil!41167 (size!30938 Nil!41167) lt!1349735 lt!1349735 (size!30938 lt!1349735)))))))

(declare-fun b!3874539 () Bool)

(assert (=> b!3874539 (= e!2396798 (= (size!30937 (_1!23331 (get!13622 lt!1349952))) (size!30938 (originalCharacters!6988 (_1!23331 (get!13622 lt!1349952))))))))

(declare-fun b!3874540 () Bool)

(declare-fun res!1569594 () Bool)

(assert (=> b!3874540 (=> (not res!1569594) (not e!2396798))))

(assert (=> b!3874540 (= res!1569594 (= (++!10534 (list!15312 (charsOf!4216 (_1!23331 (get!13622 lt!1349952)))) (_2!23331 (get!13622 lt!1349952))) lt!1349735))))

(declare-fun b!3874541 () Bool)

(declare-fun res!1569588 () Bool)

(assert (=> b!3874541 (=> (not res!1569588) (not e!2396798))))

(assert (=> b!3874541 (= res!1569588 (= (value!202692 (_1!23331 (get!13622 lt!1349952))) (apply!9631 (transformation!6388 (rule!9280 (_1!23331 (get!13622 lt!1349952)))) (seqFromList!4659 (originalCharacters!6988 (_1!23331 (get!13622 lt!1349952)))))))))

(declare-fun b!3874542 () Bool)

(assert (=> b!3874542 (= e!2396800 None!8805)))

(declare-fun b!3874543 () Bool)

(declare-fun res!1569592 () Bool)

(assert (=> b!3874543 (=> (not res!1569592) (not e!2396798))))

(assert (=> b!3874543 (= res!1569592 (= (rule!9280 (_1!23331 (get!13622 lt!1349952))) (rule!9280 (_1!23331 (v!39103 lt!1349737)))))))

(assert (= (and d!1147399 c!674192) b!3874542))

(assert (= (and d!1147399 (not c!674192)) b!3874535))

(assert (= (and b!3874535 (not res!1569591)) b!3874538))

(assert (= (and d!1147399 (not res!1569590)) b!3874536))

(assert (= (and b!3874536 res!1569589) b!3874540))

(assert (= (and b!3874540 res!1569594) b!3874537))

(assert (= (and b!3874537 res!1569593) b!3874543))

(assert (= (and b!3874543 res!1569592) b!3874541))

(assert (= (and b!3874541 res!1569588) b!3874539))

(declare-fun m!4432177 () Bool)

(assert (=> b!3874535 m!4432177))

(declare-fun m!4432179 () Bool)

(assert (=> b!3874535 m!4432179))

(assert (=> b!3874535 m!4432177))

(declare-fun m!4432181 () Bool)

(assert (=> b!3874535 m!4432181))

(declare-fun m!4432183 () Bool)

(assert (=> b!3874535 m!4432183))

(assert (=> b!3874535 m!4432183))

(assert (=> b!3874535 m!4431515))

(declare-fun m!4432185 () Bool)

(assert (=> b!3874535 m!4432185))

(assert (=> b!3874535 m!4432177))

(declare-fun m!4432187 () Bool)

(assert (=> b!3874535 m!4432187))

(assert (=> b!3874535 m!4432177))

(declare-fun m!4432189 () Bool)

(assert (=> b!3874535 m!4432189))

(declare-fun m!4432191 () Bool)

(assert (=> b!3874535 m!4432191))

(assert (=> b!3874535 m!4431515))

(declare-fun m!4432193 () Bool)

(assert (=> b!3874539 m!4432193))

(declare-fun m!4432195 () Bool)

(assert (=> b!3874539 m!4432195))

(declare-fun m!4432197 () Bool)

(assert (=> d!1147399 m!4432197))

(declare-fun m!4432199 () Bool)

(assert (=> d!1147399 m!4432199))

(declare-fun m!4432201 () Bool)

(assert (=> d!1147399 m!4432201))

(assert (=> d!1147399 m!4431407))

(assert (=> b!3874538 m!4432183))

(assert (=> b!3874538 m!4431515))

(assert (=> b!3874538 m!4432183))

(assert (=> b!3874538 m!4431515))

(assert (=> b!3874538 m!4432185))

(declare-fun m!4432203 () Bool)

(assert (=> b!3874538 m!4432203))

(assert (=> b!3874543 m!4432193))

(assert (=> b!3874540 m!4432193))

(declare-fun m!4432205 () Bool)

(assert (=> b!3874540 m!4432205))

(assert (=> b!3874540 m!4432205))

(declare-fun m!4432207 () Bool)

(assert (=> b!3874540 m!4432207))

(assert (=> b!3874540 m!4432207))

(declare-fun m!4432209 () Bool)

(assert (=> b!3874540 m!4432209))

(assert (=> b!3874537 m!4432193))

(declare-fun m!4432211 () Bool)

(assert (=> b!3874537 m!4432211))

(assert (=> b!3874537 m!4431515))

(assert (=> b!3874541 m!4432193))

(declare-fun m!4432213 () Bool)

(assert (=> b!3874541 m!4432213))

(assert (=> b!3874541 m!4432213))

(declare-fun m!4432215 () Bool)

(assert (=> b!3874541 m!4432215))

(assert (=> b!3874536 m!4432193))

(assert (=> b!3874536 m!4432205))

(assert (=> b!3874536 m!4432205))

(assert (=> b!3874536 m!4432207))

(assert (=> b!3874536 m!4432207))

(declare-fun m!4432217 () Bool)

(assert (=> b!3874536 m!4432217))

(assert (=> b!3874116 d!1147399))

(declare-fun d!1147467 () Bool)

(assert (=> d!1147467 (= (maxPrefixOneRule!2363 thiss!20629 (rule!9280 (_1!23331 (v!39103 lt!1349737))) lt!1349735) (Some!8805 (tuple2!40395 (Token!11915 (apply!9631 (transformation!6388 (rule!9280 (_1!23331 (v!39103 lt!1349737)))) (seqFromList!4659 lt!1349744)) (rule!9280 (_1!23331 (v!39103 lt!1349737))) (size!30938 lt!1349744) lt!1349744) (_2!23331 (v!39103 lt!1349737)))))))

(declare-fun lt!1349963 () Unit!59083)

(declare-fun choose!22946 (LexerInterface!5977 List!41293 List!41291 List!41291 List!41291 Rule!12576) Unit!59083)

(assert (=> d!1147467 (= lt!1349963 (choose!22946 thiss!20629 rules!2768 lt!1349744 lt!1349735 (_2!23331 (v!39103 lt!1349737)) (rule!9280 (_1!23331 (v!39103 lt!1349737)))))))

(assert (=> d!1147467 (not (isEmpty!24431 rules!2768))))

(assert (=> d!1147467 (= (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1261 thiss!20629 rules!2768 lt!1349744 lt!1349735 (_2!23331 (v!39103 lt!1349737)) (rule!9280 (_1!23331 (v!39103 lt!1349737)))) lt!1349963)))

(declare-fun bs!583604 () Bool)

(assert (= bs!583604 d!1147467))

(assert (=> bs!583604 m!4431413))

(assert (=> bs!583604 m!4431425))

(declare-fun m!4432221 () Bool)

(assert (=> bs!583604 m!4432221))

(assert (=> bs!583604 m!4431413))

(assert (=> bs!583604 m!4431431))

(assert (=> bs!583604 m!4431423))

(assert (=> bs!583604 m!4431517))

(assert (=> b!3874116 d!1147467))

(declare-fun d!1147471 () Bool)

(declare-fun lt!1349965 () Int)

(assert (=> d!1147471 (>= lt!1349965 0)))

(declare-fun e!2396805 () Int)

(assert (=> d!1147471 (= lt!1349965 e!2396805)))

(declare-fun c!674195 () Bool)

(assert (=> d!1147471 (= c!674195 ((_ is Nil!41167) lt!1349735))))

(assert (=> d!1147471 (= (size!30938 lt!1349735) lt!1349965)))

(declare-fun b!3874550 () Bool)

(assert (=> b!3874550 (= e!2396805 0)))

(declare-fun b!3874551 () Bool)

(assert (=> b!3874551 (= e!2396805 (+ 1 (size!30938 (t!314742 lt!1349735))))))

(assert (= (and d!1147471 c!674195) b!3874550))

(assert (= (and d!1147471 (not c!674195)) b!3874551))

(declare-fun m!4432233 () Bool)

(assert (=> b!3874551 m!4432233))

(assert (=> b!3874116 d!1147471))

(declare-fun d!1147475 () Bool)

(assert (=> d!1147475 (= (get!13622 lt!1349737) (v!39103 lt!1349737))))

(assert (=> b!3874116 d!1147475))

(declare-fun d!1147479 () Bool)

(assert (=> d!1147479 (not (= (lexList!1745 thiss!20629 rules!2768 suffix!1176) (tuple2!40397 suffixTokens!72 suffixResult!91)))))

(declare-fun lt!1349968 () Unit!59083)

(assert (=> d!1147479 (= lt!1349968 (choose!22943 thiss!20629 rules!2768 (_2!23331 (v!39103 lt!1349737)) suffix!1176 suffixTokens!72 suffixResult!91))))

(assert (=> d!1147479 (not (isEmpty!24431 rules!2768))))

(assert (=> d!1147479 (= (lemmaLexWithSmallerInputCannotProduceSameResults!48 thiss!20629 rules!2768 (_2!23331 (v!39103 lt!1349737)) suffix!1176 suffixTokens!72 suffixResult!91) lt!1349968)))

(declare-fun bs!583605 () Bool)

(assert (= bs!583605 d!1147479))

(assert (=> bs!583605 m!4431373))

(declare-fun m!4432249 () Bool)

(assert (=> bs!583605 m!4432249))

(assert (=> bs!583605 m!4431431))

(assert (=> b!3874095 d!1147479))

(declare-fun d!1147483 () Bool)

(declare-fun res!1569601 () Bool)

(declare-fun e!2396810 () Bool)

(assert (=> d!1147483 (=> (not res!1569601) (not e!2396810))))

(assert (=> d!1147483 (= res!1569601 (not (isEmpty!24432 (originalCharacters!6988 (h!46588 suffixTokens!72)))))))

(assert (=> d!1147483 (= (inv!55326 (h!46588 suffixTokens!72)) e!2396810)))

(declare-fun b!3874560 () Bool)

(declare-fun res!1569602 () Bool)

(assert (=> b!3874560 (=> (not res!1569602) (not e!2396810))))

(assert (=> b!3874560 (= res!1569602 (= (originalCharacters!6988 (h!46588 suffixTokens!72)) (list!15312 (dynLambda!17704 (toChars!8675 (transformation!6388 (rule!9280 (h!46588 suffixTokens!72)))) (value!202692 (h!46588 suffixTokens!72))))))))

(declare-fun b!3874561 () Bool)

(assert (=> b!3874561 (= e!2396810 (= (size!30937 (h!46588 suffixTokens!72)) (size!30938 (originalCharacters!6988 (h!46588 suffixTokens!72)))))))

(assert (= (and d!1147483 res!1569601) b!3874560))

(assert (= (and b!3874560 res!1569602) b!3874561))

(declare-fun b_lambda!113141 () Bool)

(assert (=> (not b_lambda!113141) (not b!3874560)))

(declare-fun t!314788 () Bool)

(declare-fun tb!224795 () Bool)

(assert (=> (and b!3874100 (= (toChars!8675 (transformation!6388 (h!46589 rules!2768))) (toChars!8675 (transformation!6388 (rule!9280 (h!46588 suffixTokens!72))))) t!314788) tb!224795))

(declare-fun b!3874562 () Bool)

(declare-fun e!2396811 () Bool)

(declare-fun tp!1174594 () Bool)

(assert (=> b!3874562 (= e!2396811 (and (inv!55328 (c!674099 (dynLambda!17704 (toChars!8675 (transformation!6388 (rule!9280 (h!46588 suffixTokens!72)))) (value!202692 (h!46588 suffixTokens!72))))) tp!1174594))))

(declare-fun result!273804 () Bool)

(assert (=> tb!224795 (= result!273804 (and (inv!55329 (dynLambda!17704 (toChars!8675 (transformation!6388 (rule!9280 (h!46588 suffixTokens!72)))) (value!202692 (h!46588 suffixTokens!72)))) e!2396811))))

(assert (= tb!224795 b!3874562))

(declare-fun m!4432251 () Bool)

(assert (=> b!3874562 m!4432251))

(declare-fun m!4432253 () Bool)

(assert (=> tb!224795 m!4432253))

(assert (=> b!3874560 t!314788))

(declare-fun b_and!290505 () Bool)

(assert (= b_and!290475 (and (=> t!314788 result!273804) b_and!290505)))

(declare-fun t!314790 () Bool)

(declare-fun tb!224797 () Bool)

(assert (=> (and b!3874110 (= (toChars!8675 (transformation!6388 (rule!9280 (h!46588 prefixTokens!80)))) (toChars!8675 (transformation!6388 (rule!9280 (h!46588 suffixTokens!72))))) t!314790) tb!224797))

(declare-fun result!273806 () Bool)

(assert (= result!273806 result!273804))

(assert (=> b!3874560 t!314790))

(declare-fun b_and!290507 () Bool)

(assert (= b_and!290477 (and (=> t!314790 result!273806) b_and!290507)))

(declare-fun t!314792 () Bool)

(declare-fun tb!224799 () Bool)

(assert (=> (and b!3874102 (= (toChars!8675 (transformation!6388 (rule!9280 (h!46588 suffixTokens!72)))) (toChars!8675 (transformation!6388 (rule!9280 (h!46588 suffixTokens!72))))) t!314792) tb!224799))

(declare-fun result!273808 () Bool)

(assert (= result!273808 result!273804))

(assert (=> b!3874560 t!314792))

(declare-fun b_and!290509 () Bool)

(assert (= b_and!290479 (and (=> t!314792 result!273808) b_and!290509)))

(declare-fun m!4432255 () Bool)

(assert (=> d!1147483 m!4432255))

(declare-fun m!4432257 () Bool)

(assert (=> b!3874560 m!4432257))

(assert (=> b!3874560 m!4432257))

(declare-fun m!4432259 () Bool)

(assert (=> b!3874560 m!4432259))

(declare-fun m!4432261 () Bool)

(assert (=> b!3874561 m!4432261))

(assert (=> b!3874094 d!1147483))

(assert (=> b!3874120 d!1147229))

(assert (=> b!3874120 d!1147231))

(declare-fun d!1147485 () Bool)

(assert (=> d!1147485 (= lt!1349744 prefix!426)))

(declare-fun lt!1349975 () Unit!59083)

(declare-fun choose!22948 (List!41291 List!41291 List!41291) Unit!59083)

(assert (=> d!1147485 (= lt!1349975 (choose!22948 lt!1349744 prefix!426 lt!1349735))))

(assert (=> d!1147485 (isPrefix!3487 lt!1349744 lt!1349735)))

(assert (=> d!1147485 (= (lemmaIsPrefixSameLengthThenSameList!739 lt!1349744 prefix!426 lt!1349735) lt!1349975)))

(declare-fun bs!583607 () Bool)

(assert (= bs!583607 d!1147485))

(declare-fun m!4432279 () Bool)

(assert (=> bs!583607 m!4432279))

(assert (=> bs!583607 m!4431663))

(assert (=> b!3874120 d!1147485))

(declare-fun d!1147493 () Bool)

(assert (=> d!1147493 (= (_2!23331 (v!39103 lt!1349737)) suffix!1176)))

(declare-fun lt!1349976 () Unit!59083)

(assert (=> d!1147493 (= lt!1349976 (choose!22932 lt!1349744 (_2!23331 (v!39103 lt!1349737)) prefix!426 suffix!1176 lt!1349735))))

(assert (=> d!1147493 (isPrefix!3487 lt!1349744 lt!1349735)))

(assert (=> d!1147493 (= (lemmaSamePrefixThenSameSuffix!1708 lt!1349744 (_2!23331 (v!39103 lt!1349737)) prefix!426 suffix!1176 lt!1349735) lt!1349976)))

(declare-fun bs!583608 () Bool)

(assert (= bs!583608 d!1147493))

(declare-fun m!4432281 () Bool)

(assert (=> bs!583608 m!4432281))

(assert (=> bs!583608 m!4431663))

(assert (=> b!3874120 d!1147493))

(declare-fun b!3874567 () Bool)

(declare-fun res!1569605 () Bool)

(declare-fun e!2396816 () Bool)

(assert (=> b!3874567 (=> res!1569605 e!2396816)))

(assert (=> b!3874567 (= res!1569605 (not ((_ is IntegerValue!19856) (value!202692 (h!46588 prefixTokens!80)))))))

(declare-fun e!2396815 () Bool)

(assert (=> b!3874567 (= e!2396815 e!2396816)))

(declare-fun b!3874568 () Bool)

(assert (=> b!3874568 (= e!2396816 (inv!15 (value!202692 (h!46588 prefixTokens!80))))))

(declare-fun b!3874569 () Bool)

(declare-fun e!2396814 () Bool)

(assert (=> b!3874569 (= e!2396814 (inv!16 (value!202692 (h!46588 prefixTokens!80))))))

(declare-fun b!3874570 () Bool)

(assert (=> b!3874570 (= e!2396814 e!2396815)))

(declare-fun c!674200 () Bool)

(assert (=> b!3874570 (= c!674200 ((_ is IntegerValue!19855) (value!202692 (h!46588 prefixTokens!80))))))

(declare-fun d!1147495 () Bool)

(declare-fun c!674199 () Bool)

(assert (=> d!1147495 (= c!674199 ((_ is IntegerValue!19854) (value!202692 (h!46588 prefixTokens!80))))))

(assert (=> d!1147495 (= (inv!21 (value!202692 (h!46588 prefixTokens!80))) e!2396814)))

(declare-fun b!3874571 () Bool)

(assert (=> b!3874571 (= e!2396815 (inv!17 (value!202692 (h!46588 prefixTokens!80))))))

(assert (= (and d!1147495 c!674199) b!3874569))

(assert (= (and d!1147495 (not c!674199)) b!3874570))

(assert (= (and b!3874570 c!674200) b!3874571))

(assert (= (and b!3874570 (not c!674200)) b!3874567))

(assert (= (and b!3874567 (not res!1569605)) b!3874568))

(declare-fun m!4432283 () Bool)

(assert (=> b!3874568 m!4432283))

(declare-fun m!4432285 () Bool)

(assert (=> b!3874569 m!4432285))

(declare-fun m!4432287 () Bool)

(assert (=> b!3874571 m!4432287))

(assert (=> b!3874119 d!1147495))

(declare-fun b!3874572 () Bool)

(declare-fun e!2396817 () List!41291)

(assert (=> b!3874572 (= e!2396817 lt!1349728)))

(declare-fun d!1147497 () Bool)

(declare-fun e!2396818 () Bool)

(assert (=> d!1147497 e!2396818))

(declare-fun res!1569607 () Bool)

(assert (=> d!1147497 (=> (not res!1569607) (not e!2396818))))

(declare-fun lt!1349977 () List!41291)

(assert (=> d!1147497 (= res!1569607 (= (content!6153 lt!1349977) ((_ map or) (content!6153 lt!1349744) (content!6153 lt!1349728))))))

(assert (=> d!1147497 (= lt!1349977 e!2396817)))

(declare-fun c!674201 () Bool)

(assert (=> d!1147497 (= c!674201 ((_ is Nil!41167) lt!1349744))))

(assert (=> d!1147497 (= (++!10534 lt!1349744 lt!1349728) lt!1349977)))

(declare-fun b!3874575 () Bool)

(assert (=> b!3874575 (= e!2396818 (or (not (= lt!1349728 Nil!41167)) (= lt!1349977 lt!1349744)))))

(declare-fun b!3874573 () Bool)

(assert (=> b!3874573 (= e!2396817 (Cons!41167 (h!46587 lt!1349744) (++!10534 (t!314742 lt!1349744) lt!1349728)))))

(declare-fun b!3874574 () Bool)

(declare-fun res!1569606 () Bool)

(assert (=> b!3874574 (=> (not res!1569606) (not e!2396818))))

(assert (=> b!3874574 (= res!1569606 (= (size!30938 lt!1349977) (+ (size!30938 lt!1349744) (size!30938 lt!1349728))))))

(assert (= (and d!1147497 c!674201) b!3874572))

(assert (= (and d!1147497 (not c!674201)) b!3874573))

(assert (= (and d!1147497 res!1569607) b!3874574))

(assert (= (and b!3874574 res!1569606) b!3874575))

(declare-fun m!4432289 () Bool)

(assert (=> d!1147497 m!4432289))

(assert (=> d!1147497 m!4431577))

(assert (=> d!1147497 m!4431833))

(declare-fun m!4432291 () Bool)

(assert (=> b!3874573 m!4432291))

(declare-fun m!4432293 () Bool)

(assert (=> b!3874574 m!4432293))

(assert (=> b!3874574 m!4431423))

(assert (=> b!3874574 m!4431791))

(assert (=> b!3874118 d!1147497))

(declare-fun d!1147499 () Bool)

(declare-fun lt!1349980 () List!41291)

(assert (=> d!1147499 (= (++!10534 lt!1349744 lt!1349980) prefix!426)))

(declare-fun e!2396819 () List!41291)

(assert (=> d!1147499 (= lt!1349980 e!2396819)))

(declare-fun c!674202 () Bool)

(assert (=> d!1147499 (= c!674202 ((_ is Cons!41167) lt!1349744))))

(assert (=> d!1147499 (>= (size!30938 prefix!426) (size!30938 lt!1349744))))

(assert (=> d!1147499 (= (getSuffix!1942 prefix!426 lt!1349744) lt!1349980)))

(declare-fun b!3874576 () Bool)

(assert (=> b!3874576 (= e!2396819 (getSuffix!1942 (tail!5928 prefix!426) (t!314742 lt!1349744)))))

(declare-fun b!3874577 () Bool)

(assert (=> b!3874577 (= e!2396819 prefix!426)))

(assert (= (and d!1147499 c!674202) b!3874576))

(assert (= (and d!1147499 (not c!674202)) b!3874577))

(declare-fun m!4432295 () Bool)

(assert (=> d!1147499 m!4432295))

(assert (=> d!1147499 m!4431379))

(assert (=> d!1147499 m!4431423))

(assert (=> b!3874576 m!4431539))

(assert (=> b!3874576 m!4431539))

(declare-fun m!4432297 () Bool)

(assert (=> b!3874576 m!4432297))

(assert (=> b!3874118 d!1147499))

(declare-fun d!1147501 () Bool)

(assert (=> d!1147501 (= (isEmpty!24431 rules!2768) ((_ is Nil!41169) rules!2768))))

(assert (=> b!3874097 d!1147501))

(declare-fun b!3874623 () Bool)

(declare-fun e!2396843 () Option!8806)

(declare-fun lt!1350002 () Option!8806)

(declare-fun lt!1350005 () Option!8806)

(assert (=> b!3874623 (= e!2396843 (ite (and ((_ is None!8805) lt!1350002) ((_ is None!8805) lt!1350005)) None!8805 (ite ((_ is None!8805) lt!1350005) lt!1350002 (ite ((_ is None!8805) lt!1350002) lt!1350005 (ite (>= (size!30937 (_1!23331 (v!39103 lt!1350002))) (size!30937 (_1!23331 (v!39103 lt!1350005)))) lt!1350002 lt!1350005)))))))

(declare-fun call!282777 () Option!8806)

(assert (=> b!3874623 (= lt!1350002 call!282777)))

(assert (=> b!3874623 (= lt!1350005 (maxPrefix!3281 thiss!20629 (t!314744 rules!2768) lt!1349735))))

(declare-fun b!3874624 () Bool)

(declare-fun e!2396844 () Bool)

(declare-fun e!2396845 () Bool)

(assert (=> b!3874624 (= e!2396844 e!2396845)))

(declare-fun res!1569636 () Bool)

(assert (=> b!3874624 (=> (not res!1569636) (not e!2396845))))

(declare-fun lt!1350006 () Option!8806)

(declare-fun isDefined!6888 (Option!8806) Bool)

(assert (=> b!3874624 (= res!1569636 (isDefined!6888 lt!1350006))))

(declare-fun b!3874625 () Bool)

(declare-fun res!1569639 () Bool)

(assert (=> b!3874625 (=> (not res!1569639) (not e!2396845))))

(assert (=> b!3874625 (= res!1569639 (= (value!202692 (_1!23331 (get!13622 lt!1350006))) (apply!9631 (transformation!6388 (rule!9280 (_1!23331 (get!13622 lt!1350006)))) (seqFromList!4659 (originalCharacters!6988 (_1!23331 (get!13622 lt!1350006)))))))))

(declare-fun d!1147503 () Bool)

(assert (=> d!1147503 e!2396844))

(declare-fun res!1569635 () Bool)

(assert (=> d!1147503 (=> res!1569635 e!2396844)))

(assert (=> d!1147503 (= res!1569635 (isEmpty!24434 lt!1350006))))

(assert (=> d!1147503 (= lt!1350006 e!2396843)))

(declare-fun c!674212 () Bool)

(assert (=> d!1147503 (= c!674212 (and ((_ is Cons!41169) rules!2768) ((_ is Nil!41169) (t!314744 rules!2768))))))

(declare-fun lt!1350003 () Unit!59083)

(declare-fun lt!1350004 () Unit!59083)

(assert (=> d!1147503 (= lt!1350003 lt!1350004)))

(assert (=> d!1147503 (isPrefix!3487 lt!1349735 lt!1349735)))

(declare-fun lemmaIsPrefixRefl!2211 (List!41291 List!41291) Unit!59083)

(assert (=> d!1147503 (= lt!1350004 (lemmaIsPrefixRefl!2211 lt!1349735 lt!1349735))))

(declare-fun rulesValidInductive!2285 (LexerInterface!5977 List!41293) Bool)

(assert (=> d!1147503 (rulesValidInductive!2285 thiss!20629 rules!2768)))

(assert (=> d!1147503 (= (maxPrefix!3281 thiss!20629 rules!2768 lt!1349735) lt!1350006)))

(declare-fun bm!282772 () Bool)

(assert (=> bm!282772 (= call!282777 (maxPrefixOneRule!2363 thiss!20629 (h!46589 rules!2768) lt!1349735))))

(declare-fun b!3874626 () Bool)

(declare-fun res!1569638 () Bool)

(assert (=> b!3874626 (=> (not res!1569638) (not e!2396845))))

(assert (=> b!3874626 (= res!1569638 (= (list!15312 (charsOf!4216 (_1!23331 (get!13622 lt!1350006)))) (originalCharacters!6988 (_1!23331 (get!13622 lt!1350006)))))))

(declare-fun b!3874627 () Bool)

(declare-fun res!1569640 () Bool)

(assert (=> b!3874627 (=> (not res!1569640) (not e!2396845))))

(assert (=> b!3874627 (= res!1569640 (< (size!30938 (_2!23331 (get!13622 lt!1350006))) (size!30938 lt!1349735)))))

(declare-fun b!3874628 () Bool)

(declare-fun res!1569641 () Bool)

(assert (=> b!3874628 (=> (not res!1569641) (not e!2396845))))

(assert (=> b!3874628 (= res!1569641 (matchR!5418 (regex!6388 (rule!9280 (_1!23331 (get!13622 lt!1350006)))) (list!15312 (charsOf!4216 (_1!23331 (get!13622 lt!1350006))))))))

(declare-fun b!3874629 () Bool)

(declare-fun res!1569637 () Bool)

(assert (=> b!3874629 (=> (not res!1569637) (not e!2396845))))

(assert (=> b!3874629 (= res!1569637 (= (++!10534 (list!15312 (charsOf!4216 (_1!23331 (get!13622 lt!1350006)))) (_2!23331 (get!13622 lt!1350006))) lt!1349735))))

(declare-fun b!3874630 () Bool)

(assert (=> b!3874630 (= e!2396845 (contains!8292 rules!2768 (rule!9280 (_1!23331 (get!13622 lt!1350006)))))))

(declare-fun b!3874631 () Bool)

(assert (=> b!3874631 (= e!2396843 call!282777)))

(assert (= (and d!1147503 c!674212) b!3874631))

(assert (= (and d!1147503 (not c!674212)) b!3874623))

(assert (= (or b!3874631 b!3874623) bm!282772))

(assert (= (and d!1147503 (not res!1569635)) b!3874624))

(assert (= (and b!3874624 res!1569636) b!3874626))

(assert (= (and b!3874626 res!1569638) b!3874627))

(assert (= (and b!3874627 res!1569640) b!3874629))

(assert (= (and b!3874629 res!1569637) b!3874625))

(assert (= (and b!3874625 res!1569639) b!3874628))

(assert (= (and b!3874628 res!1569641) b!3874630))

(declare-fun m!4432345 () Bool)

(assert (=> b!3874627 m!4432345))

(declare-fun m!4432347 () Bool)

(assert (=> b!3874627 m!4432347))

(assert (=> b!3874627 m!4431515))

(declare-fun m!4432349 () Bool)

(assert (=> d!1147503 m!4432349))

(declare-fun m!4432351 () Bool)

(assert (=> d!1147503 m!4432351))

(declare-fun m!4432353 () Bool)

(assert (=> d!1147503 m!4432353))

(declare-fun m!4432355 () Bool)

(assert (=> d!1147503 m!4432355))

(declare-fun m!4432357 () Bool)

(assert (=> bm!282772 m!4432357))

(declare-fun m!4432359 () Bool)

(assert (=> b!3874623 m!4432359))

(assert (=> b!3874630 m!4432345))

(declare-fun m!4432361 () Bool)

(assert (=> b!3874630 m!4432361))

(assert (=> b!3874626 m!4432345))

(declare-fun m!4432363 () Bool)

(assert (=> b!3874626 m!4432363))

(assert (=> b!3874626 m!4432363))

(declare-fun m!4432365 () Bool)

(assert (=> b!3874626 m!4432365))

(assert (=> b!3874625 m!4432345))

(declare-fun m!4432367 () Bool)

(assert (=> b!3874625 m!4432367))

(assert (=> b!3874625 m!4432367))

(declare-fun m!4432369 () Bool)

(assert (=> b!3874625 m!4432369))

(assert (=> b!3874628 m!4432345))

(assert (=> b!3874628 m!4432363))

(assert (=> b!3874628 m!4432363))

(assert (=> b!3874628 m!4432365))

(assert (=> b!3874628 m!4432365))

(declare-fun m!4432371 () Bool)

(assert (=> b!3874628 m!4432371))

(assert (=> b!3874629 m!4432345))

(assert (=> b!3874629 m!4432363))

(assert (=> b!3874629 m!4432363))

(assert (=> b!3874629 m!4432365))

(assert (=> b!3874629 m!4432365))

(declare-fun m!4432373 () Bool)

(assert (=> b!3874629 m!4432373))

(declare-fun m!4432375 () Bool)

(assert (=> b!3874624 m!4432375))

(assert (=> b!3874122 d!1147503))

(declare-fun b!3874650 () Bool)

(declare-fun e!2396854 () tuple2!40396)

(declare-fun lt!1350019 () Option!8806)

(declare-fun lt!1350018 () tuple2!40396)

(assert (=> b!3874650 (= e!2396854 (tuple2!40397 (Cons!41168 (_1!23331 (v!39103 lt!1350019)) (_1!23332 lt!1350018)) (_2!23332 lt!1350018)))))

(assert (=> b!3874650 (= lt!1350018 (lexList!1745 thiss!20629 rules!2768 (_2!23331 (v!39103 lt!1350019))))))

(declare-fun b!3874651 () Bool)

(assert (=> b!3874651 (= e!2396854 (tuple2!40397 Nil!41168 (_2!23331 lt!1349751)))))

(declare-fun d!1147529 () Bool)

(declare-fun e!2396852 () Bool)

(assert (=> d!1147529 e!2396852))

(declare-fun c!674216 () Bool)

(declare-fun lt!1350017 () tuple2!40396)

(assert (=> d!1147529 (= c!674216 (> (size!30939 (_1!23332 lt!1350017)) 0))))

(assert (=> d!1147529 (= lt!1350017 e!2396854)))

(declare-fun c!674215 () Bool)

(assert (=> d!1147529 (= c!674215 ((_ is Some!8805) lt!1350019))))

(assert (=> d!1147529 (= lt!1350019 (maxPrefix!3281 thiss!20629 rules!2768 (_2!23331 lt!1349751)))))

(assert (=> d!1147529 (= (lexList!1745 thiss!20629 rules!2768 (_2!23331 lt!1349751)) lt!1350017)))

(declare-fun b!3874652 () Bool)

(declare-fun e!2396853 () Bool)

(assert (=> b!3874652 (= e!2396852 e!2396853)))

(declare-fun res!1569656 () Bool)

(assert (=> b!3874652 (= res!1569656 (< (size!30938 (_2!23332 lt!1350017)) (size!30938 (_2!23331 lt!1349751))))))

(assert (=> b!3874652 (=> (not res!1569656) (not e!2396853))))

(declare-fun b!3874653 () Bool)

(assert (=> b!3874653 (= e!2396852 (= (_2!23332 lt!1350017) (_2!23331 lt!1349751)))))

(declare-fun b!3874654 () Bool)

(assert (=> b!3874654 (= e!2396853 (not (isEmpty!24430 (_1!23332 lt!1350017))))))

(assert (= (and d!1147529 c!674215) b!3874650))

(assert (= (and d!1147529 (not c!674215)) b!3874651))

(assert (= (and d!1147529 c!674216) b!3874652))

(assert (= (and d!1147529 (not c!674216)) b!3874653))

(assert (= (and b!3874652 res!1569656) b!3874654))

(declare-fun m!4432377 () Bool)

(assert (=> b!3874650 m!4432377))

(declare-fun m!4432379 () Bool)

(assert (=> d!1147529 m!4432379))

(declare-fun m!4432381 () Bool)

(assert (=> d!1147529 m!4432381))

(declare-fun m!4432383 () Bool)

(assert (=> b!3874652 m!4432383))

(assert (=> b!3874652 m!4431511))

(declare-fun m!4432385 () Bool)

(assert (=> b!3874654 m!4432385))

(assert (=> bm!282769 d!1147529))

(declare-fun b!3874655 () Bool)

(declare-fun e!2396857 () tuple2!40396)

(declare-fun lt!1350022 () Option!8806)

(declare-fun lt!1350021 () tuple2!40396)

(assert (=> b!3874655 (= e!2396857 (tuple2!40397 (Cons!41168 (_1!23331 (v!39103 lt!1350022)) (_1!23332 lt!1350021)) (_2!23332 lt!1350021)))))

(assert (=> b!3874655 (= lt!1350021 (lexList!1745 thiss!20629 rules!2768 (_2!23331 (v!39103 lt!1350022))))))

(declare-fun b!3874656 () Bool)

(assert (=> b!3874656 (= e!2396857 (tuple2!40397 Nil!41168 lt!1349709))))

(declare-fun d!1147531 () Bool)

(declare-fun e!2396855 () Bool)

(assert (=> d!1147531 e!2396855))

(declare-fun c!674218 () Bool)

(declare-fun lt!1350020 () tuple2!40396)

(assert (=> d!1147531 (= c!674218 (> (size!30939 (_1!23332 lt!1350020)) 0))))

(assert (=> d!1147531 (= lt!1350020 e!2396857)))

(declare-fun c!674217 () Bool)

(assert (=> d!1147531 (= c!674217 ((_ is Some!8805) lt!1350022))))

(assert (=> d!1147531 (= lt!1350022 (maxPrefix!3281 thiss!20629 rules!2768 lt!1349709))))

(assert (=> d!1147531 (= (lexList!1745 thiss!20629 rules!2768 lt!1349709) lt!1350020)))

(declare-fun b!3874657 () Bool)

(declare-fun e!2396856 () Bool)

(assert (=> b!3874657 (= e!2396855 e!2396856)))

(declare-fun res!1569657 () Bool)

(assert (=> b!3874657 (= res!1569657 (< (size!30938 (_2!23332 lt!1350020)) (size!30938 lt!1349709)))))

(assert (=> b!3874657 (=> (not res!1569657) (not e!2396856))))

(declare-fun b!3874658 () Bool)

(assert (=> b!3874658 (= e!2396855 (= (_2!23332 lt!1350020) lt!1349709))))

(declare-fun b!3874659 () Bool)

(assert (=> b!3874659 (= e!2396856 (not (isEmpty!24430 (_1!23332 lt!1350020))))))

(assert (= (and d!1147531 c!674217) b!3874655))

(assert (= (and d!1147531 (not c!674217)) b!3874656))

(assert (= (and d!1147531 c!674218) b!3874657))

(assert (= (and d!1147531 (not c!674218)) b!3874658))

(assert (= (and b!3874657 res!1569657) b!3874659))

(declare-fun m!4432387 () Bool)

(assert (=> b!3874655 m!4432387))

(declare-fun m!4432389 () Bool)

(assert (=> d!1147531 m!4432389))

(declare-fun m!4432391 () Bool)

(assert (=> d!1147531 m!4432391))

(declare-fun m!4432393 () Bool)

(assert (=> b!3874657 m!4432393))

(assert (=> b!3874657 m!4431813))

(declare-fun m!4432395 () Bool)

(assert (=> b!3874659 m!4432395))

(assert (=> b!3874121 d!1147531))

(declare-fun b!3874673 () Bool)

(declare-fun e!2396860 () Bool)

(declare-fun tp!1174608 () Bool)

(declare-fun tp!1174606 () Bool)

(assert (=> b!3874673 (= e!2396860 (and tp!1174608 tp!1174606))))

(declare-fun b!3874670 () Bool)

(assert (=> b!3874670 (= e!2396860 tp_is_empty!19557)))

(assert (=> b!3874134 (= tp!1174578 e!2396860)))

(declare-fun b!3874671 () Bool)

(declare-fun tp!1174607 () Bool)

(declare-fun tp!1174609 () Bool)

(assert (=> b!3874671 (= e!2396860 (and tp!1174607 tp!1174609))))

(declare-fun b!3874672 () Bool)

(declare-fun tp!1174605 () Bool)

(assert (=> b!3874672 (= e!2396860 tp!1174605)))

(assert (= (and b!3874134 ((_ is ElementMatch!11293) (regex!6388 (h!46589 rules!2768)))) b!3874670))

(assert (= (and b!3874134 ((_ is Concat!17912) (regex!6388 (h!46589 rules!2768)))) b!3874671))

(assert (= (and b!3874134 ((_ is Star!11293) (regex!6388 (h!46589 rules!2768)))) b!3874672))

(assert (= (and b!3874134 ((_ is Union!11293) (regex!6388 (h!46589 rules!2768)))) b!3874673))

(declare-fun b!3874678 () Bool)

(declare-fun e!2396863 () Bool)

(declare-fun tp!1174612 () Bool)

(assert (=> b!3874678 (= e!2396863 (and tp_is_empty!19557 tp!1174612))))

(assert (=> b!3874096 (= tp!1174574 e!2396863)))

(assert (= (and b!3874096 ((_ is Cons!41167) (t!314742 suffix!1176))) b!3874678))

(declare-fun b!3874679 () Bool)

(declare-fun e!2396864 () Bool)

(declare-fun tp!1174613 () Bool)

(assert (=> b!3874679 (= e!2396864 (and tp_is_empty!19557 tp!1174613))))

(assert (=> b!3874127 (= tp!1174571 e!2396864)))

(assert (= (and b!3874127 ((_ is Cons!41167) (originalCharacters!6988 (h!46588 suffixTokens!72)))) b!3874679))

(declare-fun b!3874683 () Bool)

(declare-fun e!2396865 () Bool)

(declare-fun tp!1174617 () Bool)

(declare-fun tp!1174615 () Bool)

(assert (=> b!3874683 (= e!2396865 (and tp!1174617 tp!1174615))))

(declare-fun b!3874680 () Bool)

(assert (=> b!3874680 (= e!2396865 tp_is_empty!19557)))

(assert (=> b!3874107 (= tp!1174576 e!2396865)))

(declare-fun b!3874681 () Bool)

(declare-fun tp!1174616 () Bool)

(declare-fun tp!1174618 () Bool)

(assert (=> b!3874681 (= e!2396865 (and tp!1174616 tp!1174618))))

(declare-fun b!3874682 () Bool)

(declare-fun tp!1174614 () Bool)

(assert (=> b!3874682 (= e!2396865 tp!1174614)))

(assert (= (and b!3874107 ((_ is ElementMatch!11293) (regex!6388 (rule!9280 (h!46588 suffixTokens!72))))) b!3874680))

(assert (= (and b!3874107 ((_ is Concat!17912) (regex!6388 (rule!9280 (h!46588 suffixTokens!72))))) b!3874681))

(assert (= (and b!3874107 ((_ is Star!11293) (regex!6388 (rule!9280 (h!46588 suffixTokens!72))))) b!3874682))

(assert (= (and b!3874107 ((_ is Union!11293) (regex!6388 (rule!9280 (h!46588 suffixTokens!72))))) b!3874683))

(declare-fun b!3874706 () Bool)

(declare-fun b_free!104713 () Bool)

(declare-fun b_next!105417 () Bool)

(assert (=> b!3874706 (= b_free!104713 (not b_next!105417))))

(declare-fun t!314794 () Bool)

(declare-fun tb!224801 () Bool)

(assert (=> (and b!3874706 (= (toValue!8816 (transformation!6388 (rule!9280 (h!46588 (t!314743 suffixTokens!72))))) (toValue!8816 (transformation!6388 (rule!9280 (_1!23331 (v!39103 lt!1349737)))))) t!314794) tb!224801))

(declare-fun result!273816 () Bool)

(assert (= result!273816 result!273754))

(assert (=> d!1147247 t!314794))

(declare-fun b_and!290511 () Bool)

(declare-fun tp!1174633 () Bool)

(assert (=> b!3874706 (= tp!1174633 (and (=> t!314794 result!273816) b_and!290511))))

(declare-fun b_free!104715 () Bool)

(declare-fun b_next!105419 () Bool)

(assert (=> b!3874706 (= b_free!104715 (not b_next!105419))))

(declare-fun t!314796 () Bool)

(declare-fun tb!224803 () Bool)

(assert (=> (and b!3874706 (= (toChars!8675 (transformation!6388 (rule!9280 (h!46588 (t!314743 suffixTokens!72))))) (toChars!8675 (transformation!6388 (rule!9280 (_1!23331 (v!39103 lt!1349737)))))) t!314796) tb!224803))

(declare-fun result!273818 () Bool)

(assert (= result!273818 result!273762))

(assert (=> d!1147255 t!314796))

(declare-fun t!314798 () Bool)

(declare-fun tb!224805 () Bool)

(assert (=> (and b!3874706 (= (toChars!8675 (transformation!6388 (rule!9280 (h!46588 (t!314743 suffixTokens!72))))) (toChars!8675 (transformation!6388 (rule!9280 (h!46588 prefixTokens!80))))) t!314798) tb!224805))

(declare-fun result!273820 () Bool)

(assert (= result!273820 result!273770))

(assert (=> b!3874384 t!314798))

(declare-fun t!314800 () Bool)

(declare-fun tb!224807 () Bool)

(assert (=> (and b!3874706 (= (toChars!8675 (transformation!6388 (rule!9280 (h!46588 (t!314743 suffixTokens!72))))) (toChars!8675 (transformation!6388 (rule!9280 (h!46588 suffixTokens!72))))) t!314800) tb!224807))

(declare-fun result!273822 () Bool)

(assert (= result!273822 result!273804))

(assert (=> b!3874560 t!314800))

(declare-fun b_and!290513 () Bool)

(declare-fun tp!1174632 () Bool)

(assert (=> b!3874706 (= tp!1174632 (and (=> t!314796 result!273818) (=> t!314798 result!273820) (=> t!314800 result!273822) b_and!290513))))

(declare-fun e!2396885 () Bool)

(assert (=> b!3874706 (= e!2396885 (and tp!1174633 tp!1174632))))

(declare-fun e!2396884 () Bool)

(declare-fun b!3874704 () Bool)

(declare-fun tp!1174629 () Bool)

(declare-fun e!2396886 () Bool)

(assert (=> b!3874704 (= e!2396886 (and (inv!21 (value!202692 (h!46588 (t!314743 suffixTokens!72)))) e!2396884 tp!1174629))))

(declare-fun e!2396882 () Bool)

(assert (=> b!3874094 (= tp!1174580 e!2396882)))

(declare-fun tp!1174631 () Bool)

(declare-fun b!3874705 () Bool)

(assert (=> b!3874705 (= e!2396884 (and tp!1174631 (inv!55323 (tag!7248 (rule!9280 (h!46588 (t!314743 suffixTokens!72))))) (inv!55327 (transformation!6388 (rule!9280 (h!46588 (t!314743 suffixTokens!72))))) e!2396885))))

(declare-fun tp!1174630 () Bool)

(declare-fun b!3874703 () Bool)

(assert (=> b!3874703 (= e!2396882 (and (inv!55326 (h!46588 (t!314743 suffixTokens!72))) e!2396886 tp!1174630))))

(assert (= b!3874705 b!3874706))

(assert (= b!3874704 b!3874705))

(assert (= b!3874703 b!3874704))

(assert (= (and b!3874094 ((_ is Cons!41168) (t!314743 suffixTokens!72))) b!3874703))

(declare-fun m!4432415 () Bool)

(assert (=> b!3874704 m!4432415))

(declare-fun m!4432421 () Bool)

(assert (=> b!3874705 m!4432421))

(declare-fun m!4432423 () Bool)

(assert (=> b!3874705 m!4432423))

(declare-fun m!4432427 () Bool)

(assert (=> b!3874703 m!4432427))

(declare-fun b!3874707 () Bool)

(declare-fun e!2396887 () Bool)

(declare-fun tp!1174634 () Bool)

(assert (=> b!3874707 (= e!2396887 (and tp_is_empty!19557 tp!1174634))))

(assert (=> b!3874088 (= tp!1174575 e!2396887)))

(assert (= (and b!3874088 ((_ is Cons!41167) (t!314742 prefix!426))) b!3874707))

(declare-fun b!3874732 () Bool)

(declare-fun b_free!104717 () Bool)

(declare-fun b_next!105421 () Bool)

(assert (=> b!3874732 (= b_free!104717 (not b_next!105421))))

(declare-fun t!314802 () Bool)

(declare-fun tb!224809 () Bool)

(assert (=> (and b!3874732 (= (toValue!8816 (transformation!6388 (h!46589 (t!314744 rules!2768)))) (toValue!8816 (transformation!6388 (rule!9280 (_1!23331 (v!39103 lt!1349737)))))) t!314802) tb!224809))

(declare-fun result!273828 () Bool)

(assert (= result!273828 result!273754))

(assert (=> d!1147247 t!314802))

(declare-fun b_and!290515 () Bool)

(declare-fun tp!1174658 () Bool)

(assert (=> b!3874732 (= tp!1174658 (and (=> t!314802 result!273828) b_and!290515))))

(declare-fun b_free!104719 () Bool)

(declare-fun b_next!105423 () Bool)

(assert (=> b!3874732 (= b_free!104719 (not b_next!105423))))

(declare-fun t!314804 () Bool)

(declare-fun tb!224811 () Bool)

(assert (=> (and b!3874732 (= (toChars!8675 (transformation!6388 (h!46589 (t!314744 rules!2768)))) (toChars!8675 (transformation!6388 (rule!9280 (_1!23331 (v!39103 lt!1349737)))))) t!314804) tb!224811))

(declare-fun result!273832 () Bool)

(assert (= result!273832 result!273762))

(assert (=> d!1147255 t!314804))

(declare-fun tb!224813 () Bool)

(declare-fun t!314806 () Bool)

(assert (=> (and b!3874732 (= (toChars!8675 (transformation!6388 (h!46589 (t!314744 rules!2768)))) (toChars!8675 (transformation!6388 (rule!9280 (h!46588 prefixTokens!80))))) t!314806) tb!224813))

(declare-fun result!273834 () Bool)

(assert (= result!273834 result!273770))

(assert (=> b!3874384 t!314806))

(declare-fun tb!224815 () Bool)

(declare-fun t!314808 () Bool)

(assert (=> (and b!3874732 (= (toChars!8675 (transformation!6388 (h!46589 (t!314744 rules!2768)))) (toChars!8675 (transformation!6388 (rule!9280 (h!46588 suffixTokens!72))))) t!314808) tb!224815))

(declare-fun result!273836 () Bool)

(assert (= result!273836 result!273804))

(assert (=> b!3874560 t!314808))

(declare-fun b_and!290517 () Bool)

(declare-fun tp!1174661 () Bool)

(assert (=> b!3874732 (= tp!1174661 (and (=> t!314804 result!273832) (=> t!314806 result!273834) (=> t!314808 result!273836) b_and!290517))))

(declare-fun e!2396899 () Bool)

(assert (=> b!3874732 (= e!2396899 (and tp!1174658 tp!1174661))))

(declare-fun e!2396901 () Bool)

(declare-fun tp!1174659 () Bool)

(declare-fun b!3874731 () Bool)

(assert (=> b!3874731 (= e!2396901 (and tp!1174659 (inv!55323 (tag!7248 (h!46589 (t!314744 rules!2768)))) (inv!55327 (transformation!6388 (h!46589 (t!314744 rules!2768)))) e!2396899))))

(declare-fun b!3874730 () Bool)

(declare-fun e!2396900 () Bool)

(declare-fun tp!1174660 () Bool)

(assert (=> b!3874730 (= e!2396900 (and e!2396901 tp!1174660))))

(assert (=> b!3874130 (= tp!1174572 e!2396900)))

(assert (= b!3874731 b!3874732))

(assert (= b!3874730 b!3874731))

(assert (= (and b!3874130 ((_ is Cons!41169) (t!314744 rules!2768))) b!3874730))

(declare-fun m!4432437 () Bool)

(assert (=> b!3874731 m!4432437))

(declare-fun m!4432439 () Bool)

(assert (=> b!3874731 m!4432439))

(declare-fun b!3874737 () Bool)

(declare-fun e!2396905 () Bool)

(declare-fun tp!1174662 () Bool)

(assert (=> b!3874737 (= e!2396905 (and tp_is_empty!19557 tp!1174662))))

(assert (=> b!3874119 (= tp!1174577 e!2396905)))

(assert (= (and b!3874119 ((_ is Cons!41167) (originalCharacters!6988 (h!46588 prefixTokens!80)))) b!3874737))

(declare-fun b!3874743 () Bool)

(declare-fun b_free!104721 () Bool)

(declare-fun b_next!105425 () Bool)

(assert (=> b!3874743 (= b_free!104721 (not b_next!105425))))

(declare-fun t!314810 () Bool)

(declare-fun tb!224817 () Bool)

(assert (=> (and b!3874743 (= (toValue!8816 (transformation!6388 (rule!9280 (h!46588 (t!314743 prefixTokens!80))))) (toValue!8816 (transformation!6388 (rule!9280 (_1!23331 (v!39103 lt!1349737)))))) t!314810) tb!224817))

(declare-fun result!273838 () Bool)

(assert (= result!273838 result!273754))

(assert (=> d!1147247 t!314810))

(declare-fun tp!1174667 () Bool)

(declare-fun b_and!290519 () Bool)

(assert (=> b!3874743 (= tp!1174667 (and (=> t!314810 result!273838) b_and!290519))))

(declare-fun b_free!104723 () Bool)

(declare-fun b_next!105427 () Bool)

(assert (=> b!3874743 (= b_free!104723 (not b_next!105427))))

(declare-fun tb!224819 () Bool)

(declare-fun t!314812 () Bool)

(assert (=> (and b!3874743 (= (toChars!8675 (transformation!6388 (rule!9280 (h!46588 (t!314743 prefixTokens!80))))) (toChars!8675 (transformation!6388 (rule!9280 (_1!23331 (v!39103 lt!1349737)))))) t!314812) tb!224819))

(declare-fun result!273840 () Bool)

(assert (= result!273840 result!273762))

(assert (=> d!1147255 t!314812))

(declare-fun t!314814 () Bool)

(declare-fun tb!224821 () Bool)

(assert (=> (and b!3874743 (= (toChars!8675 (transformation!6388 (rule!9280 (h!46588 (t!314743 prefixTokens!80))))) (toChars!8675 (transformation!6388 (rule!9280 (h!46588 prefixTokens!80))))) t!314814) tb!224821))

(declare-fun result!273842 () Bool)

(assert (= result!273842 result!273770))

(assert (=> b!3874384 t!314814))

(declare-fun t!314816 () Bool)

(declare-fun tb!224823 () Bool)

(assert (=> (and b!3874743 (= (toChars!8675 (transformation!6388 (rule!9280 (h!46588 (t!314743 prefixTokens!80))))) (toChars!8675 (transformation!6388 (rule!9280 (h!46588 suffixTokens!72))))) t!314816) tb!224823))

(declare-fun result!273844 () Bool)

(assert (= result!273844 result!273804))

(assert (=> b!3874560 t!314816))

(declare-fun tp!1174666 () Bool)

(declare-fun b_and!290521 () Bool)

(assert (=> b!3874743 (= tp!1174666 (and (=> t!314812 result!273840) (=> t!314814 result!273842) (=> t!314816 result!273844) b_and!290521))))

(declare-fun e!2396912 () Bool)

(assert (=> b!3874743 (= e!2396912 (and tp!1174667 tp!1174666))))

(declare-fun e!2396914 () Bool)

(declare-fun tp!1174663 () Bool)

(declare-fun e!2396911 () Bool)

(declare-fun b!3874741 () Bool)

(assert (=> b!3874741 (= e!2396914 (and (inv!21 (value!202692 (h!46588 (t!314743 prefixTokens!80)))) e!2396911 tp!1174663))))

(declare-fun e!2396909 () Bool)

(assert (=> b!3874090 (= tp!1174583 e!2396909)))

(declare-fun b!3874742 () Bool)

(declare-fun tp!1174665 () Bool)

(assert (=> b!3874742 (= e!2396911 (and tp!1174665 (inv!55323 (tag!7248 (rule!9280 (h!46588 (t!314743 prefixTokens!80))))) (inv!55327 (transformation!6388 (rule!9280 (h!46588 (t!314743 prefixTokens!80))))) e!2396912))))

(declare-fun b!3874740 () Bool)

(declare-fun tp!1174664 () Bool)

(assert (=> b!3874740 (= e!2396909 (and (inv!55326 (h!46588 (t!314743 prefixTokens!80))) e!2396914 tp!1174664))))

(assert (= b!3874742 b!3874743))

(assert (= b!3874741 b!3874742))

(assert (= b!3874740 b!3874741))

(assert (= (and b!3874090 ((_ is Cons!41168) (t!314743 prefixTokens!80))) b!3874740))

(declare-fun m!4432441 () Bool)

(assert (=> b!3874741 m!4432441))

(declare-fun m!4432443 () Bool)

(assert (=> b!3874742 m!4432443))

(declare-fun m!4432445 () Bool)

(assert (=> b!3874742 m!4432445))

(declare-fun m!4432447 () Bool)

(assert (=> b!3874740 m!4432447))

(declare-fun b!3874751 () Bool)

(declare-fun e!2396922 () Bool)

(declare-fun tp!1174677 () Bool)

(declare-fun tp!1174675 () Bool)

(assert (=> b!3874751 (= e!2396922 (and tp!1174677 tp!1174675))))

(declare-fun b!3874748 () Bool)

(assert (=> b!3874748 (= e!2396922 tp_is_empty!19557)))

(assert (=> b!3874132 (= tp!1174584 e!2396922)))

(declare-fun b!3874749 () Bool)

(declare-fun tp!1174676 () Bool)

(declare-fun tp!1174678 () Bool)

(assert (=> b!3874749 (= e!2396922 (and tp!1174676 tp!1174678))))

(declare-fun b!3874750 () Bool)

(declare-fun tp!1174674 () Bool)

(assert (=> b!3874750 (= e!2396922 tp!1174674)))

(assert (= (and b!3874132 ((_ is ElementMatch!11293) (regex!6388 (rule!9280 (h!46588 prefixTokens!80))))) b!3874748))

(assert (= (and b!3874132 ((_ is Concat!17912) (regex!6388 (rule!9280 (h!46588 prefixTokens!80))))) b!3874749))

(assert (= (and b!3874132 ((_ is Star!11293) (regex!6388 (rule!9280 (h!46588 prefixTokens!80))))) b!3874750))

(assert (= (and b!3874132 ((_ is Union!11293) (regex!6388 (rule!9280 (h!46588 prefixTokens!80))))) b!3874751))

(declare-fun b!3874752 () Bool)

(declare-fun e!2396923 () Bool)

(declare-fun tp!1174683 () Bool)

(assert (=> b!3874752 (= e!2396923 (and tp_is_empty!19557 tp!1174683))))

(assert (=> b!3874089 (= tp!1174581 e!2396923)))

(assert (= (and b!3874089 ((_ is Cons!41167) (t!314742 suffixResult!91))) b!3874752))

(declare-fun b_lambda!113143 () Bool)

(assert (= b_lambda!113131 (or (and b!3874743 b_free!104723 (= (toChars!8675 (transformation!6388 (rule!9280 (h!46588 (t!314743 prefixTokens!80))))) (toChars!8675 (transformation!6388 (rule!9280 (h!46588 prefixTokens!80)))))) (and b!3874100 b_free!104703 (= (toChars!8675 (transformation!6388 (h!46589 rules!2768))) (toChars!8675 (transformation!6388 (rule!9280 (h!46588 prefixTokens!80)))))) (and b!3874102 b_free!104711 (= (toChars!8675 (transformation!6388 (rule!9280 (h!46588 suffixTokens!72)))) (toChars!8675 (transformation!6388 (rule!9280 (h!46588 prefixTokens!80)))))) (and b!3874706 b_free!104715 (= (toChars!8675 (transformation!6388 (rule!9280 (h!46588 (t!314743 suffixTokens!72))))) (toChars!8675 (transformation!6388 (rule!9280 (h!46588 prefixTokens!80)))))) (and b!3874110 b_free!104707) (and b!3874732 b_free!104719 (= (toChars!8675 (transformation!6388 (h!46589 (t!314744 rules!2768)))) (toChars!8675 (transformation!6388 (rule!9280 (h!46588 prefixTokens!80)))))) b_lambda!113143)))

(declare-fun b_lambda!113145 () Bool)

(assert (= b_lambda!113141 (or (and b!3874732 b_free!104719 (= (toChars!8675 (transformation!6388 (h!46589 (t!314744 rules!2768)))) (toChars!8675 (transformation!6388 (rule!9280 (h!46588 suffixTokens!72)))))) (and b!3874110 b_free!104707 (= (toChars!8675 (transformation!6388 (rule!9280 (h!46588 prefixTokens!80)))) (toChars!8675 (transformation!6388 (rule!9280 (h!46588 suffixTokens!72)))))) (and b!3874100 b_free!104703 (= (toChars!8675 (transformation!6388 (h!46589 rules!2768))) (toChars!8675 (transformation!6388 (rule!9280 (h!46588 suffixTokens!72)))))) (and b!3874743 b_free!104723 (= (toChars!8675 (transformation!6388 (rule!9280 (h!46588 (t!314743 prefixTokens!80))))) (toChars!8675 (transformation!6388 (rule!9280 (h!46588 suffixTokens!72)))))) (and b!3874102 b_free!104711) (and b!3874706 b_free!104715 (= (toChars!8675 (transformation!6388 (rule!9280 (h!46588 (t!314743 suffixTokens!72))))) (toChars!8675 (transformation!6388 (rule!9280 (h!46588 suffixTokens!72)))))) b_lambda!113145)))

(check-sat (not b!3874338) (not b!3874410) (not b!3874430) b_and!290515 (not b!3874629) (not b!3874569) (not b!3874224) (not d!1147395) tp_is_empty!19557 (not d!1147363) (not b!3874415) (not b!3874184) (not b!3874271) (not b!3874158) (not b!3874538) (not b!3874417) (not d!1147367) (not b!3874318) (not b!3874447) (not d!1147281) (not b!3874357) (not b_next!105407) (not d!1147531) (not d!1147391) (not b!3874320) b_and!290467 b_and!290519 (not b_next!105423) (not b!3874673) (not b!3874654) (not d!1147273) (not b!3874682) b_and!290517 (not d!1147279) (not b!3874576) (not b!3874679) (not b!3874657) (not b!3874573) (not b_next!105411) (not d!1147223) b_and!290511 (not b!3874737) (not b!3874551) (not b!3874359) (not b!3874161) (not b_lambda!113145) (not b!3874420) (not b_next!105425) (not d!1147499) (not b!3874144) (not tb!224753) (not b!3874378) (not tb!224765) b_and!290463 (not d!1147387) (not b!3874365) (not b!3874561) (not d!1147347) (not b!3874749) (not b_next!105415) (not d!1147371) (not tb!224795) (not b!3874741) (not d!1147355) (not b!3874705) (not b!3874435) (not d!1147389) (not b!3874351) b_and!290513 (not b!3874627) (not b!3874207) (not b!3874683) (not b!3874424) (not d!1147287) (not b!3874536) (not b!3874655) (not d!1147497) (not b_next!105421) (not b!3874361) (not b_lambda!113127) (not d!1147277) (not b_lambda!113143) (not d!1147377) (not b!3874186) (not d!1147227) (not b!3874269) (not b!3874672) (not b!3874628) (not b!3874543) (not d!1147303) (not b!3874750) (not d!1147381) (not b_next!105417) (not d!1147479) (not d!1147335) (not d!1147467) (not b!3874387) (not b!3874707) (not d!1147359) (not d!1147243) b_and!290505 (not b!3874370) (not bm!282772) (not d!1147295) (not b!3874568) (not b!3874225) (not b!3874304) (not b!3874681) (not d!1147529) (not b!3874377) (not b!3874537) (not b!3874742) (not b!3874362) (not b!3874671) (not d!1147345) (not b!3874624) (not b_next!105413) (not b!3874282) (not b!3874353) (not d!1147339) (not b!3874223) (not d!1147503) (not d!1147353) (not d!1147485) b_and!290509 (not b!3874730) (not b!3874358) (not d!1147343) (not b!3874625) (not b!3874574) (not b!3874427) (not b!3874369) (not b!3874426) (not b!3874414) (not b!3874678) (not b!3874317) (not b!3874571) (not b!3874422) (not b!3874652) (not b!3874273) (not d!1147399) (not b_next!105419) (not b!3874182) (not b_next!105427) (not b!3874630) (not b!3874390) (not b!3874386) (not b!3874650) (not d!1147349) (not b!3874626) (not d!1147221) (not d!1147235) (not b!3874560) (not b!3874349) (not b!3874385) (not d!1147255) (not b!3874623) (not b!3874168) (not d!1147385) (not b!3874373) (not b!3874206) (not b!3874731) (not d!1147229) (not b_next!105405) (not b!3874384) (not b!3874535) (not d!1147331) (not b!3874157) (not d!1147483) (not d!1147261) (not d!1147333) b_and!290465 (not b_next!105409) (not b!3874541) (not d!1147493) (not b!3874740) (not b!3874337) (not d!1147341) (not b!3874704) (not b!3874751) (not b!3874156) (not b!3874354) (not b!3874539) (not b!3874246) (not b!3874562) (not b!3874162) (not b!3874540) (not b!3874366) (not b!3874419) (not b!3874703) (not b!3874752) (not b!3874434) (not tb!224759) (not d!1147369) (not b!3874431) (not b!3874160) (not b!3874347) (not b!3874659) (not b!3874210) (not b!3874412) (not b!3874436) (not b!3874374) (not b!3874145) (not b_lambda!113129) (not d!1147251) (not d!1147317) b_and!290521 (not d!1147297) b_and!290507 (not b!3874335))
(check-sat b_and!290515 b_and!290517 (not b_next!105425) b_and!290463 (not b_next!105415) b_and!290513 (not b_next!105421) (not b_next!105417) b_and!290505 (not b_next!105413) b_and!290509 (not b_next!105419) (not b_next!105427) (not b_next!105405) b_and!290465 (not b_next!105409) (not b_next!105407) b_and!290467 b_and!290519 (not b_next!105423) (not b_next!105411) b_and!290511 b_and!290521 b_and!290507)
