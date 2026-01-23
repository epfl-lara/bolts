; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!368072 () Bool)

(assert start!368072)

(declare-fun b!3924503 () Bool)

(declare-fun b_free!106901 () Bool)

(declare-fun b_next!107605 () Bool)

(assert (=> b!3924503 (= b_free!106901 (not b_next!107605))))

(declare-fun tp!1194751 () Bool)

(declare-fun b_and!299255 () Bool)

(assert (=> b!3924503 (= tp!1194751 b_and!299255)))

(declare-fun b_free!106903 () Bool)

(declare-fun b_next!107607 () Bool)

(assert (=> b!3924503 (= b_free!106903 (not b_next!107607))))

(declare-fun tp!1194754 () Bool)

(declare-fun b_and!299257 () Bool)

(assert (=> b!3924503 (= tp!1194754 b_and!299257)))

(declare-fun b!3924501 () Bool)

(declare-fun b_free!106905 () Bool)

(declare-fun b_next!107609 () Bool)

(assert (=> b!3924501 (= b_free!106905 (not b_next!107609))))

(declare-fun tp!1194740 () Bool)

(declare-fun b_and!299259 () Bool)

(assert (=> b!3924501 (= tp!1194740 b_and!299259)))

(declare-fun b_free!106907 () Bool)

(declare-fun b_next!107611 () Bool)

(assert (=> b!3924501 (= b_free!106907 (not b_next!107611))))

(declare-fun tp!1194742 () Bool)

(declare-fun b_and!299261 () Bool)

(assert (=> b!3924501 (= tp!1194742 b_and!299261)))

(declare-fun b!3924474 () Bool)

(declare-fun b_free!106909 () Bool)

(declare-fun b_next!107613 () Bool)

(assert (=> b!3924474 (= b_free!106909 (not b_next!107613))))

(declare-fun tp!1194753 () Bool)

(declare-fun b_and!299263 () Bool)

(assert (=> b!3924474 (= tp!1194753 b_and!299263)))

(declare-fun b_free!106911 () Bool)

(declare-fun b_next!107615 () Bool)

(assert (=> b!3924474 (= b_free!106911 (not b_next!107615))))

(declare-fun tp!1194746 () Bool)

(declare-fun b_and!299265 () Bool)

(assert (=> b!3924474 (= tp!1194746 b_and!299265)))

(declare-fun b!3924464 () Bool)

(declare-fun res!1587602 () Bool)

(declare-fun e!2427185 () Bool)

(assert (=> b!3924464 (=> res!1587602 e!2427185)))

(declare-datatypes ((List!41765 0))(
  ( (Nil!41641) (Cons!41641 (h!47061 (_ BitVec 16)) (t!324900 List!41765)) )
))
(declare-datatypes ((TokenValue!6724 0))(
  ( (FloatLiteralValue!13448 (text!47513 List!41765)) (TokenValueExt!6723 (__x!25665 Int)) (Broken!33620 (value!205687 List!41765)) (Object!6847) (End!6724) (Def!6724) (Underscore!6724) (Match!6724) (Else!6724) (Error!6724) (Case!6724) (If!6724) (Extends!6724) (Abstract!6724) (Class!6724) (Val!6724) (DelimiterValue!13448 (del!6784 List!41765)) (KeywordValue!6730 (value!205688 List!41765)) (CommentValue!13448 (value!205689 List!41765)) (WhitespaceValue!13448 (value!205690 List!41765)) (IndentationValue!6724 (value!205691 List!41765)) (String!47337) (Int32!6724) (Broken!33621 (value!205692 List!41765)) (Boolean!6725) (Unit!59899) (OperatorValue!6727 (op!6784 List!41765)) (IdentifierValue!13448 (value!205693 List!41765)) (IdentifierValue!13449 (value!205694 List!41765)) (WhitespaceValue!13449 (value!205695 List!41765)) (True!13448) (False!13448) (Broken!33622 (value!205696 List!41765)) (Broken!33623 (value!205697 List!41765)) (True!13449) (RightBrace!6724) (RightBracket!6724) (Colon!6724) (Null!6724) (Comma!6724) (LeftBracket!6724) (False!13449) (LeftBrace!6724) (ImaginaryLiteralValue!6724 (text!47514 List!41765)) (StringLiteralValue!20172 (value!205698 List!41765)) (EOFValue!6724 (value!205699 List!41765)) (IdentValue!6724 (value!205700 List!41765)) (DelimiterValue!13449 (value!205701 List!41765)) (DedentValue!6724 (value!205702 List!41765)) (NewLineValue!6724 (value!205703 List!41765)) (IntegerValue!20172 (value!205704 (_ BitVec 32)) (text!47515 List!41765)) (IntegerValue!20173 (value!205705 Int) (text!47516 List!41765)) (Times!6724) (Or!6724) (Equal!6724) (Minus!6724) (Broken!33624 (value!205706 List!41765)) (And!6724) (Div!6724) (LessEqual!6724) (Mod!6724) (Concat!18123) (Not!6724) (Plus!6724) (SpaceValue!6724 (value!205707 List!41765)) (IntegerValue!20174 (value!205708 Int) (text!47517 List!41765)) (StringLiteralValue!20173 (text!47518 List!41765)) (FloatLiteralValue!13449 (text!47519 List!41765)) (BytesLiteralValue!6724 (value!205709 List!41765)) (CommentValue!13449 (value!205710 List!41765)) (StringLiteralValue!20174 (value!205711 List!41765)) (ErrorTokenValue!6724 (msg!6785 List!41765)) )
))
(declare-datatypes ((C!22984 0))(
  ( (C!22985 (val!13586 Int)) )
))
(declare-datatypes ((Regex!11399 0))(
  ( (ElementMatch!11399 (c!681932 C!22984)) (Concat!18124 (regOne!23310 Regex!11399) (regTwo!23310 Regex!11399)) (EmptyExpr!11399) (Star!11399 (reg!11728 Regex!11399)) (EmptyLang!11399) (Union!11399 (regOne!23311 Regex!11399) (regTwo!23311 Regex!11399)) )
))
(declare-datatypes ((String!47338 0))(
  ( (String!47339 (value!205712 String)) )
))
(declare-datatypes ((List!41766 0))(
  ( (Nil!41642) (Cons!41642 (h!47062 C!22984) (t!324901 List!41766)) )
))
(declare-datatypes ((IArray!25415 0))(
  ( (IArray!25416 (innerList!12765 List!41766)) )
))
(declare-datatypes ((Conc!12705 0))(
  ( (Node!12705 (left!31802 Conc!12705) (right!32132 Conc!12705) (csize!25640 Int) (cheight!12916 Int)) (Leaf!19659 (xs!16011 IArray!25415) (csize!25641 Int)) (Empty!12705) )
))
(declare-datatypes ((BalanceConc!25004 0))(
  ( (BalanceConc!25005 (c!681933 Conc!12705)) )
))
(declare-datatypes ((TokenValueInjection!12876 0))(
  ( (TokenValueInjection!12877 (toValue!8946 Int) (toChars!8805 Int)) )
))
(declare-datatypes ((Rule!12788 0))(
  ( (Rule!12789 (regex!6494 Regex!11399) (tag!7354 String!47338) (isSeparator!6494 Bool) (transformation!6494 TokenValueInjection!12876)) )
))
(declare-datatypes ((Token!12126 0))(
  ( (Token!12127 (value!205713 TokenValue!6724) (rule!9432 Rule!12788) (size!31253 Int) (originalCharacters!7094 List!41766)) )
))
(declare-datatypes ((List!41767 0))(
  ( (Nil!41643) (Cons!41643 (h!47063 Token!12126) (t!324902 List!41767)) )
))
(declare-datatypes ((tuple2!40910 0))(
  ( (tuple2!40911 (_1!23589 List!41767) (_2!23589 List!41766)) )
))
(declare-fun lt!1368789 () tuple2!40910)

(declare-fun lt!1368805 () tuple2!40910)

(declare-datatypes ((tuple2!40912 0))(
  ( (tuple2!40913 (_1!23590 Token!12126) (_2!23590 List!41766)) )
))
(declare-datatypes ((Option!8914 0))(
  ( (None!8913) (Some!8913 (v!39239 tuple2!40912)) )
))
(declare-fun lt!1368795 () Option!8914)

(declare-fun ++!10745 (List!41767 List!41767) List!41767)

(assert (=> b!3924464 (= res!1587602 (not (= lt!1368805 (tuple2!40911 (++!10745 (Cons!41643 (_1!23590 (v!39239 lt!1368795)) Nil!41643) (_1!23589 lt!1368789)) (_2!23589 lt!1368789)))))))

(declare-fun b!3924465 () Bool)

(declare-fun e!2427208 () Bool)

(assert (=> b!3924465 (= e!2427208 true)))

(declare-fun lt!1368803 () List!41766)

(declare-fun suffix!1176 () List!41766)

(declare-fun lt!1368821 () List!41766)

(declare-fun lt!1368809 () List!41766)

(declare-fun ++!10746 (List!41766 List!41766) List!41766)

(assert (=> b!3924465 (= lt!1368809 (++!10746 lt!1368803 (++!10746 lt!1368821 suffix!1176)))))

(declare-datatypes ((Unit!59900 0))(
  ( (Unit!59901) )
))
(declare-fun lt!1368814 () Unit!59900)

(declare-fun lemmaConcatAssociativity!2290 (List!41766 List!41766 List!41766) Unit!59900)

(assert (=> b!3924465 (= lt!1368814 (lemmaConcatAssociativity!2290 lt!1368803 lt!1368821 suffix!1176))))

(declare-fun b!3924466 () Bool)

(declare-fun e!2427207 () Bool)

(declare-fun tp_is_empty!19769 () Bool)

(declare-fun tp!1194748 () Bool)

(assert (=> b!3924466 (= e!2427207 (and tp_is_empty!19769 tp!1194748))))

(declare-fun b!3924467 () Bool)

(declare-fun e!2427205 () Bool)

(declare-fun e!2427206 () Bool)

(assert (=> b!3924467 (= e!2427205 e!2427206)))

(declare-fun res!1587600 () Bool)

(assert (=> b!3924467 (=> (not res!1587600) (not e!2427206))))

(get-info :version)

(assert (=> b!3924467 (= res!1587600 ((_ is Some!8913) lt!1368795))))

(declare-fun lt!1368815 () List!41766)

(declare-datatypes ((LexerInterface!6083 0))(
  ( (LexerInterfaceExt!6080 (__x!25666 Int)) (Lexer!6081) )
))
(declare-fun thiss!20629 () LexerInterface!6083)

(declare-datatypes ((List!41768 0))(
  ( (Nil!41644) (Cons!41644 (h!47064 Rule!12788) (t!324903 List!41768)) )
))
(declare-fun rules!2768 () List!41768)

(declare-fun maxPrefix!3387 (LexerInterface!6083 List!41768 List!41766) Option!8914)

(assert (=> b!3924467 (= lt!1368795 (maxPrefix!3387 thiss!20629 rules!2768 lt!1368815))))

(declare-fun b!3924468 () Bool)

(declare-fun e!2427212 () Bool)

(declare-fun e!2427199 () Bool)

(assert (=> b!3924468 (= e!2427212 e!2427199)))

(declare-fun res!1587607 () Bool)

(assert (=> b!3924468 (=> res!1587607 e!2427199)))

(declare-fun lt!1368792 () Int)

(declare-fun prefix!426 () List!41766)

(declare-fun size!31254 (List!41766) Int)

(assert (=> b!3924468 (= res!1587607 (>= lt!1368792 (size!31254 prefix!426)))))

(declare-fun isPrefix!3589 (List!41766 List!41766) Bool)

(assert (=> b!3924468 (isPrefix!3589 lt!1368803 prefix!426)))

(declare-fun lt!1368800 () Unit!59900)

(declare-fun lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!267 (List!41766 List!41766 List!41766) Unit!59900)

(assert (=> b!3924468 (= lt!1368800 (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!267 prefix!426 lt!1368803 lt!1368815))))

(assert (=> b!3924468 (isPrefix!3589 prefix!426 lt!1368815)))

(declare-fun lt!1368786 () Unit!59900)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!2452 (List!41766 List!41766) Unit!59900)

(assert (=> b!3924468 (= lt!1368786 (lemmaConcatTwoListThenFirstIsPrefix!2452 prefix!426 suffix!1176))))

(declare-fun b!3924469 () Bool)

(declare-fun e!2427190 () Bool)

(declare-fun tp!1194752 () Bool)

(assert (=> b!3924469 (= e!2427190 (and tp_is_empty!19769 tp!1194752))))

(declare-fun b!3924470 () Bool)

(assert (=> b!3924470 (= e!2427206 (not e!2427185))))

(declare-fun res!1587612 () Bool)

(assert (=> b!3924470 (=> res!1587612 e!2427185)))

(declare-fun lt!1368797 () List!41766)

(assert (=> b!3924470 (= res!1587612 (not (= lt!1368797 lt!1368815)))))

(declare-fun lexList!1851 (LexerInterface!6083 List!41768 List!41766) tuple2!40910)

(assert (=> b!3924470 (= lt!1368789 (lexList!1851 thiss!20629 rules!2768 (_2!23590 (v!39239 lt!1368795))))))

(declare-fun lt!1368799 () TokenValue!6724)

(declare-fun lt!1368802 () List!41766)

(assert (=> b!3924470 (and (= (size!31253 (_1!23590 (v!39239 lt!1368795))) lt!1368792) (= (originalCharacters!7094 (_1!23590 (v!39239 lt!1368795))) lt!1368803) (= (v!39239 lt!1368795) (tuple2!40913 (Token!12127 lt!1368799 (rule!9432 (_1!23590 (v!39239 lt!1368795))) lt!1368792 lt!1368803) lt!1368802)))))

(assert (=> b!3924470 (= lt!1368792 (size!31254 lt!1368803))))

(declare-fun e!2427211 () Bool)

(assert (=> b!3924470 e!2427211))

(declare-fun res!1587606 () Bool)

(assert (=> b!3924470 (=> (not res!1587606) (not e!2427211))))

(assert (=> b!3924470 (= res!1587606 (= (value!205713 (_1!23590 (v!39239 lt!1368795))) lt!1368799))))

(declare-fun apply!9733 (TokenValueInjection!12876 BalanceConc!25004) TokenValue!6724)

(declare-fun seqFromList!4761 (List!41766) BalanceConc!25004)

(assert (=> b!3924470 (= lt!1368799 (apply!9733 (transformation!6494 (rule!9432 (_1!23590 (v!39239 lt!1368795)))) (seqFromList!4761 lt!1368803)))))

(assert (=> b!3924470 (= (_2!23590 (v!39239 lt!1368795)) lt!1368802)))

(declare-fun lt!1368790 () Unit!59900)

(declare-fun lemmaSamePrefixThenSameSuffix!1810 (List!41766 List!41766 List!41766 List!41766 List!41766) Unit!59900)

(assert (=> b!3924470 (= lt!1368790 (lemmaSamePrefixThenSameSuffix!1810 lt!1368803 (_2!23590 (v!39239 lt!1368795)) lt!1368803 lt!1368802 lt!1368815))))

(declare-fun getSuffix!2044 (List!41766 List!41766) List!41766)

(assert (=> b!3924470 (= lt!1368802 (getSuffix!2044 lt!1368815 lt!1368803))))

(assert (=> b!3924470 (isPrefix!3589 lt!1368803 lt!1368797)))

(assert (=> b!3924470 (= lt!1368797 (++!10746 lt!1368803 (_2!23590 (v!39239 lt!1368795))))))

(declare-fun lt!1368820 () Unit!59900)

(assert (=> b!3924470 (= lt!1368820 (lemmaConcatTwoListThenFirstIsPrefix!2452 lt!1368803 (_2!23590 (v!39239 lt!1368795))))))

(declare-fun list!15477 (BalanceConc!25004) List!41766)

(declare-fun charsOf!4318 (Token!12126) BalanceConc!25004)

(assert (=> b!3924470 (= lt!1368803 (list!15477 (charsOf!4318 (_1!23590 (v!39239 lt!1368795)))))))

(declare-fun ruleValid!2442 (LexerInterface!6083 Rule!12788) Bool)

(assert (=> b!3924470 (ruleValid!2442 thiss!20629 (rule!9432 (_1!23590 (v!39239 lt!1368795))))))

(declare-fun lt!1368796 () Unit!59900)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1522 (LexerInterface!6083 Rule!12788 List!41768) Unit!59900)

(assert (=> b!3924470 (= lt!1368796 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1522 thiss!20629 (rule!9432 (_1!23590 (v!39239 lt!1368795))) rules!2768))))

(declare-fun lt!1368787 () Unit!59900)

(declare-fun lemmaCharactersSize!1151 (Token!12126) Unit!59900)

(assert (=> b!3924470 (= lt!1368787 (lemmaCharactersSize!1151 (_1!23590 (v!39239 lt!1368795))))))

(declare-fun e!2427191 () Bool)

(declare-fun e!2427192 () Bool)

(declare-fun b!3924471 () Bool)

(declare-fun prefixTokens!80 () List!41767)

(declare-fun tp!1194743 () Bool)

(declare-fun inv!55834 (String!47338) Bool)

(declare-fun inv!55837 (TokenValueInjection!12876) Bool)

(assert (=> b!3924471 (= e!2427191 (and tp!1194743 (inv!55834 (tag!7354 (rule!9432 (h!47063 prefixTokens!80)))) (inv!55837 (transformation!6494 (rule!9432 (h!47063 prefixTokens!80)))) e!2427192))))

(declare-fun b!3924472 () Bool)

(declare-fun e!2427193 () Bool)

(assert (=> b!3924472 (= e!2427199 e!2427193)))

(declare-fun res!1587613 () Bool)

(assert (=> b!3924472 (=> res!1587613 e!2427193)))

(declare-fun lt!1368816 () List!41766)

(assert (=> b!3924472 (= res!1587613 (not (= lt!1368816 prefix!426)))))

(assert (=> b!3924472 (= lt!1368816 (++!10746 lt!1368803 lt!1368821))))

(assert (=> b!3924472 (= lt!1368821 (getSuffix!2044 prefix!426 lt!1368803))))

(declare-fun b!3924473 () Bool)

(declare-fun e!2427178 () Bool)

(declare-fun e!2427181 () Bool)

(assert (=> b!3924473 (= e!2427178 e!2427181)))

(declare-fun res!1587604 () Bool)

(assert (=> b!3924473 (=> (not res!1587604) (not e!2427181))))

(declare-fun suffixResult!91 () List!41766)

(declare-fun lt!1368818 () List!41767)

(assert (=> b!3924473 (= res!1587604 (= lt!1368805 (tuple2!40911 lt!1368818 suffixResult!91)))))

(assert (=> b!3924473 (= lt!1368805 (lexList!1851 thiss!20629 rules!2768 lt!1368815))))

(declare-fun suffixTokens!72 () List!41767)

(assert (=> b!3924473 (= lt!1368818 (++!10745 prefixTokens!80 suffixTokens!72))))

(assert (=> b!3924473 (= lt!1368815 (++!10746 prefix!426 suffix!1176))))

(declare-fun e!2427203 () Bool)

(assert (=> b!3924474 (= e!2427203 (and tp!1194753 tp!1194746))))

(declare-fun b!3924475 () Bool)

(declare-fun e!2427194 () Bool)

(declare-fun e!2427183 () Bool)

(declare-fun tp!1194755 () Bool)

(assert (=> b!3924475 (= e!2427194 (and e!2427183 tp!1194755))))

(declare-fun b!3924476 () Bool)

(assert (=> b!3924476 (= e!2427193 e!2427208)))

(declare-fun res!1587610 () Bool)

(assert (=> b!3924476 (=> res!1587610 e!2427208)))

(assert (=> b!3924476 (= res!1587610 (or (not (= lt!1368809 lt!1368815)) (not (= lt!1368809 lt!1368797))))))

(assert (=> b!3924476 (= lt!1368809 (++!10746 lt!1368816 suffix!1176))))

(declare-fun b!3924478 () Bool)

(assert (=> b!3924478 (= e!2427181 e!2427205)))

(declare-fun res!1587611 () Bool)

(assert (=> b!3924478 (=> (not res!1587611) (not e!2427205))))

(declare-fun lt!1368794 () tuple2!40910)

(assert (=> b!3924478 (= res!1587611 (= (lexList!1851 thiss!20629 rules!2768 suffix!1176) lt!1368794))))

(assert (=> b!3924478 (= lt!1368794 (tuple2!40911 suffixTokens!72 suffixResult!91))))

(declare-fun b!3924479 () Bool)

(assert (=> b!3924479 (= e!2427211 (= (size!31253 (_1!23590 (v!39239 lt!1368795))) (size!31254 (originalCharacters!7094 (_1!23590 (v!39239 lt!1368795))))))))

(declare-fun b!3924480 () Bool)

(declare-fun res!1587595 () Bool)

(assert (=> b!3924480 (=> res!1587595 e!2427212)))

(declare-fun head!8313 (List!41767) Token!12126)

(assert (=> b!3924480 (= res!1587595 (not (= (head!8313 prefixTokens!80) (_1!23590 (v!39239 lt!1368795)))))))

(declare-fun b!3924481 () Bool)

(declare-fun e!2427210 () Unit!59900)

(declare-fun Unit!59902 () Unit!59900)

(assert (=> b!3924481 (= e!2427210 Unit!59902)))

(declare-fun b!3924482 () Bool)

(declare-fun e!2427187 () Bool)

(assert (=> b!3924482 (= e!2427187 false)))

(declare-fun b!3924483 () Bool)

(declare-fun res!1587601 () Bool)

(assert (=> b!3924483 (=> (not res!1587601) (not e!2427178))))

(declare-fun isEmpty!24806 (List!41766) Bool)

(assert (=> b!3924483 (= res!1587601 (not (isEmpty!24806 prefix!426)))))

(declare-fun tp!1194745 () Bool)

(declare-fun e!2427196 () Bool)

(declare-fun b!3924484 () Bool)

(declare-fun e!2427198 () Bool)

(assert (=> b!3924484 (= e!2427196 (and tp!1194745 (inv!55834 (tag!7354 (rule!9432 (h!47063 suffixTokens!72)))) (inv!55837 (transformation!6494 (rule!9432 (h!47063 suffixTokens!72)))) e!2427198))))

(declare-fun b!3924485 () Bool)

(declare-fun e!2427180 () Unit!59900)

(declare-fun Unit!59903 () Unit!59900)

(assert (=> b!3924485 (= e!2427180 Unit!59903)))

(declare-fun lt!1368807 () tuple2!40912)

(declare-fun lt!1368819 () List!41767)

(declare-fun lt!1368806 () Unit!59900)

(declare-fun lemmaLexWithSmallerInputCannotProduceAdditionalTokens!94 (LexerInterface!6083 List!41768 List!41766 List!41766 List!41767 List!41766 List!41767) Unit!59900)

(assert (=> b!3924485 (= lt!1368806 (lemmaLexWithSmallerInputCannotProduceAdditionalTokens!94 thiss!20629 rules!2768 suffix!1176 (_2!23590 lt!1368807) suffixTokens!72 suffixResult!91 lt!1368819))))

(declare-fun res!1587608 () Bool)

(declare-fun call!284686 () tuple2!40910)

(assert (=> b!3924485 (= res!1587608 (not (= call!284686 (tuple2!40911 (++!10745 lt!1368819 suffixTokens!72) suffixResult!91))))))

(assert (=> b!3924485 (=> (not res!1587608) (not e!2427187))))

(assert (=> b!3924485 e!2427187))

(declare-fun b!3924486 () Bool)

(declare-fun res!1587599 () Bool)

(assert (=> b!3924486 (=> (not res!1587599) (not e!2427178))))

(declare-fun isEmpty!24807 (List!41767) Bool)

(assert (=> b!3924486 (= res!1587599 (not (isEmpty!24807 prefixTokens!80)))))

(declare-fun b!3924487 () Bool)

(declare-fun res!1587598 () Bool)

(assert (=> b!3924487 (=> res!1587598 e!2427185)))

(assert (=> b!3924487 (= res!1587598 (or (not (= lt!1368789 (tuple2!40911 (_1!23589 lt!1368789) (_2!23589 lt!1368789)))) (= (_2!23590 (v!39239 lt!1368795)) suffix!1176)))))

(declare-fun b!3924488 () Bool)

(declare-fun res!1587609 () Bool)

(assert (=> b!3924488 (=> (not res!1587609) (not e!2427178))))

(declare-fun rulesInvariant!5426 (LexerInterface!6083 List!41768) Bool)

(assert (=> b!3924488 (= res!1587609 (rulesInvariant!5426 thiss!20629 rules!2768))))

(declare-fun b!3924489 () Bool)

(declare-fun c!681928 () Bool)

(assert (=> b!3924489 (= c!681928 (isEmpty!24807 lt!1368819))))

(declare-fun tail!6039 (List!41767) List!41767)

(assert (=> b!3924489 (= lt!1368819 (tail!6039 prefixTokens!80))))

(declare-fun e!2427186 () Unit!59900)

(assert (=> b!3924489 (= e!2427186 e!2427180)))

(declare-fun b!3924490 () Bool)

(declare-fun Unit!59904 () Unit!59900)

(assert (=> b!3924490 (= e!2427186 Unit!59904)))

(declare-fun b!3924491 () Bool)

(declare-fun Unit!59905 () Unit!59900)

(assert (=> b!3924491 (= e!2427210 Unit!59905)))

(declare-fun lt!1368788 () Int)

(assert (=> b!3924491 (= lt!1368788 (size!31254 lt!1368815))))

(declare-fun lt!1368810 () Unit!59900)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1325 (LexerInterface!6083 List!41768 List!41766 List!41766 List!41766 Rule!12788) Unit!59900)

(assert (=> b!3924491 (= lt!1368810 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1325 thiss!20629 rules!2768 lt!1368803 lt!1368815 (_2!23590 (v!39239 lt!1368795)) (rule!9432 (_1!23590 (v!39239 lt!1368795)))))))

(declare-fun maxPrefixOneRule!2457 (LexerInterface!6083 Rule!12788 List!41766) Option!8914)

(assert (=> b!3924491 (= (maxPrefixOneRule!2457 thiss!20629 (rule!9432 (_1!23590 (v!39239 lt!1368795))) lt!1368815) (Some!8913 (tuple2!40913 (Token!12127 lt!1368799 (rule!9432 (_1!23590 (v!39239 lt!1368795))) lt!1368792 lt!1368803) (_2!23590 (v!39239 lt!1368795)))))))

(declare-fun get!13761 (Option!8914) tuple2!40912)

(assert (=> b!3924491 (= lt!1368807 (get!13761 lt!1368795))))

(declare-fun c!681930 () Bool)

(declare-fun lt!1368808 () Int)

(assert (=> b!3924491 (= c!681930 (< (size!31254 (_2!23590 lt!1368807)) lt!1368808))))

(declare-fun lt!1368801 () Unit!59900)

(assert (=> b!3924491 (= lt!1368801 e!2427186)))

(assert (=> b!3924491 false))

(declare-fun b!3924492 () Bool)

(declare-fun Unit!59906 () Unit!59900)

(assert (=> b!3924492 (= e!2427180 Unit!59906)))

(declare-fun lt!1368791 () Unit!59900)

(declare-fun lemmaConcatSameAndSameSizesThenSameLists!542 (List!41766 List!41766 List!41766 List!41766) Unit!59900)

(assert (=> b!3924492 (= lt!1368791 (lemmaConcatSameAndSameSizesThenSameLists!542 lt!1368803 (_2!23590 (v!39239 lt!1368795)) lt!1368803 (_2!23590 lt!1368807)))))

(assert (=> b!3924492 (= (_2!23590 (v!39239 lt!1368795)) (_2!23590 lt!1368807))))

(declare-fun lt!1368804 () Unit!59900)

(declare-fun lemmaLexWithSmallerInputCannotProduceSameResults!94 (LexerInterface!6083 List!41768 List!41766 List!41766 List!41767 List!41766) Unit!59900)

(assert (=> b!3924492 (= lt!1368804 (lemmaLexWithSmallerInputCannotProduceSameResults!94 thiss!20629 rules!2768 suffix!1176 (_2!23590 lt!1368807) suffixTokens!72 suffixResult!91))))

(declare-fun res!1587603 () Bool)

(assert (=> b!3924492 (= res!1587603 (not (= call!284686 lt!1368794)))))

(declare-fun e!2427195 () Bool)

(assert (=> b!3924492 (=> (not res!1587603) (not e!2427195))))

(assert (=> b!3924492 e!2427195))

(declare-fun tp!1194756 () Bool)

(declare-fun b!3924493 () Bool)

(assert (=> b!3924493 (= e!2427183 (and tp!1194756 (inv!55834 (tag!7354 (h!47064 rules!2768))) (inv!55837 (transformation!6494 (h!47064 rules!2768))) e!2427203))))

(declare-fun b!3924494 () Bool)

(declare-fun tp!1194749 () Bool)

(declare-fun e!2427202 () Bool)

(declare-fun inv!21 (TokenValue!6724) Bool)

(assert (=> b!3924494 (= e!2427202 (and (inv!21 (value!205713 (h!47063 prefixTokens!80))) e!2427191 tp!1194749))))

(declare-fun b!3924495 () Bool)

(assert (=> b!3924495 (= e!2427195 false)))

(declare-fun b!3924496 () Bool)

(declare-fun e!2427182 () Bool)

(declare-fun tp!1194741 () Bool)

(assert (=> b!3924496 (= e!2427182 (and tp_is_empty!19769 tp!1194741))))

(declare-fun b!3924497 () Bool)

(assert (=> b!3924497 (= e!2427185 e!2427212)))

(declare-fun res!1587605 () Bool)

(assert (=> b!3924497 (=> res!1587605 e!2427212)))

(declare-fun lt!1368811 () Int)

(assert (=> b!3924497 (= res!1587605 (<= lt!1368811 lt!1368808))))

(declare-fun lt!1368813 () Unit!59900)

(declare-fun e!2427197 () Unit!59900)

(assert (=> b!3924497 (= lt!1368813 e!2427197)))

(declare-fun c!681929 () Bool)

(assert (=> b!3924497 (= c!681929 (= lt!1368811 lt!1368808))))

(declare-fun lt!1368793 () Unit!59900)

(assert (=> b!3924497 (= lt!1368793 e!2427210)))

(declare-fun c!681931 () Bool)

(assert (=> b!3924497 (= c!681931 (< lt!1368811 lt!1368808))))

(assert (=> b!3924497 (= lt!1368808 (size!31254 suffix!1176))))

(assert (=> b!3924497 (= lt!1368811 (size!31254 (_2!23590 (v!39239 lt!1368795))))))

(declare-fun e!2427184 () Bool)

(declare-fun tp!1194747 () Bool)

(declare-fun b!3924498 () Bool)

(declare-fun inv!55838 (Token!12126) Bool)

(assert (=> b!3924498 (= e!2427184 (and (inv!55838 (h!47063 prefixTokens!80)) e!2427202 tp!1194747))))

(declare-fun e!2427189 () Bool)

(declare-fun tp!1194750 () Bool)

(declare-fun b!3924499 () Bool)

(assert (=> b!3924499 (= e!2427189 (and (inv!21 (value!205713 (h!47063 suffixTokens!72))) e!2427196 tp!1194750))))

(declare-fun b!3924500 () Bool)

(declare-fun Unit!59907 () Unit!59900)

(assert (=> b!3924500 (= e!2427197 Unit!59907)))

(declare-fun lt!1368798 () Unit!59900)

(assert (=> b!3924500 (= lt!1368798 (lemmaConcatTwoListThenFirstIsPrefix!2452 prefix!426 suffix!1176))))

(assert (=> b!3924500 (isPrefix!3589 prefix!426 lt!1368815)))

(declare-fun lt!1368812 () Unit!59900)

(declare-fun lemmaIsPrefixSameLengthThenSameList!785 (List!41766 List!41766 List!41766) Unit!59900)

(assert (=> b!3924500 (= lt!1368812 (lemmaIsPrefixSameLengthThenSameList!785 lt!1368803 prefix!426 lt!1368815))))

(assert (=> b!3924500 (= lt!1368803 prefix!426)))

(declare-fun lt!1368817 () Unit!59900)

(assert (=> b!3924500 (= lt!1368817 (lemmaSamePrefixThenSameSuffix!1810 lt!1368803 (_2!23590 (v!39239 lt!1368795)) prefix!426 suffix!1176 lt!1368815))))

(assert (=> b!3924500 false))

(assert (=> b!3924501 (= e!2427198 (and tp!1194740 tp!1194742))))

(declare-fun b!3924502 () Bool)

(declare-fun res!1587596 () Bool)

(assert (=> b!3924502 (=> (not res!1587596) (not e!2427178))))

(declare-fun isEmpty!24808 (List!41768) Bool)

(assert (=> b!3924502 (= res!1587596 (not (isEmpty!24808 rules!2768)))))

(declare-fun bm!284681 () Bool)

(assert (=> bm!284681 (= call!284686 (lexList!1851 thiss!20629 rules!2768 (_2!23590 lt!1368807)))))

(assert (=> b!3924503 (= e!2427192 (and tp!1194751 tp!1194754))))

(declare-fun b!3924504 () Bool)

(declare-fun Unit!59908 () Unit!59900)

(assert (=> b!3924504 (= e!2427197 Unit!59908)))

(declare-fun res!1587597 () Bool)

(assert (=> start!368072 (=> (not res!1587597) (not e!2427178))))

(assert (=> start!368072 (= res!1587597 ((_ is Lexer!6081) thiss!20629))))

(assert (=> start!368072 e!2427178))

(assert (=> start!368072 e!2427190))

(assert (=> start!368072 true))

(assert (=> start!368072 e!2427182))

(assert (=> start!368072 e!2427194))

(assert (=> start!368072 e!2427184))

(declare-fun e!2427179 () Bool)

(assert (=> start!368072 e!2427179))

(assert (=> start!368072 e!2427207))

(declare-fun tp!1194744 () Bool)

(declare-fun b!3924477 () Bool)

(assert (=> b!3924477 (= e!2427179 (and (inv!55838 (h!47063 suffixTokens!72)) e!2427189 tp!1194744))))

(assert (= (and start!368072 res!1587597) b!3924502))

(assert (= (and b!3924502 res!1587596) b!3924488))

(assert (= (and b!3924488 res!1587609) b!3924486))

(assert (= (and b!3924486 res!1587599) b!3924483))

(assert (= (and b!3924483 res!1587601) b!3924473))

(assert (= (and b!3924473 res!1587604) b!3924478))

(assert (= (and b!3924478 res!1587611) b!3924467))

(assert (= (and b!3924467 res!1587600) b!3924470))

(assert (= (and b!3924470 res!1587606) b!3924479))

(assert (= (and b!3924470 (not res!1587612)) b!3924464))

(assert (= (and b!3924464 (not res!1587602)) b!3924487))

(assert (= (and b!3924487 (not res!1587598)) b!3924497))

(assert (= (and b!3924497 c!681931) b!3924491))

(assert (= (and b!3924497 (not c!681931)) b!3924481))

(assert (= (and b!3924491 c!681930) b!3924489))

(assert (= (and b!3924491 (not c!681930)) b!3924490))

(assert (= (and b!3924489 c!681928) b!3924492))

(assert (= (and b!3924489 (not c!681928)) b!3924485))

(assert (= (and b!3924492 res!1587603) b!3924495))

(assert (= (and b!3924485 res!1587608) b!3924482))

(assert (= (or b!3924492 b!3924485) bm!284681))

(assert (= (and b!3924497 c!681929) b!3924500))

(assert (= (and b!3924497 (not c!681929)) b!3924504))

(assert (= (and b!3924497 (not res!1587605)) b!3924480))

(assert (= (and b!3924480 (not res!1587595)) b!3924468))

(assert (= (and b!3924468 (not res!1587607)) b!3924472))

(assert (= (and b!3924472 (not res!1587613)) b!3924476))

(assert (= (and b!3924476 (not res!1587610)) b!3924465))

(assert (= (and start!368072 ((_ is Cons!41642) suffixResult!91)) b!3924469))

(assert (= (and start!368072 ((_ is Cons!41642) suffix!1176)) b!3924496))

(assert (= b!3924493 b!3924474))

(assert (= b!3924475 b!3924493))

(assert (= (and start!368072 ((_ is Cons!41644) rules!2768)) b!3924475))

(assert (= b!3924471 b!3924503))

(assert (= b!3924494 b!3924471))

(assert (= b!3924498 b!3924494))

(assert (= (and start!368072 ((_ is Cons!41643) prefixTokens!80)) b!3924498))

(assert (= b!3924484 b!3924501))

(assert (= b!3924499 b!3924484))

(assert (= b!3924477 b!3924499))

(assert (= (and start!368072 ((_ is Cons!41643) suffixTokens!72)) b!3924477))

(assert (= (and start!368072 ((_ is Cons!41642) prefix!426)) b!3924466))

(declare-fun m!4488547 () Bool)

(assert (=> b!3924493 m!4488547))

(declare-fun m!4488549 () Bool)

(assert (=> b!3924493 m!4488549))

(declare-fun m!4488551 () Bool)

(assert (=> b!3924489 m!4488551))

(declare-fun m!4488553 () Bool)

(assert (=> b!3924489 m!4488553))

(declare-fun m!4488555 () Bool)

(assert (=> b!3924479 m!4488555))

(declare-fun m!4488557 () Bool)

(assert (=> b!3924497 m!4488557))

(declare-fun m!4488559 () Bool)

(assert (=> b!3924497 m!4488559))

(declare-fun m!4488561 () Bool)

(assert (=> b!3924483 m!4488561))

(declare-fun m!4488563 () Bool)

(assert (=> b!3924470 m!4488563))

(declare-fun m!4488565 () Bool)

(assert (=> b!3924470 m!4488565))

(declare-fun m!4488567 () Bool)

(assert (=> b!3924470 m!4488567))

(declare-fun m!4488569 () Bool)

(assert (=> b!3924470 m!4488569))

(declare-fun m!4488571 () Bool)

(assert (=> b!3924470 m!4488571))

(declare-fun m!4488573 () Bool)

(assert (=> b!3924470 m!4488573))

(declare-fun m!4488575 () Bool)

(assert (=> b!3924470 m!4488575))

(declare-fun m!4488577 () Bool)

(assert (=> b!3924470 m!4488577))

(assert (=> b!3924470 m!4488571))

(declare-fun m!4488579 () Bool)

(assert (=> b!3924470 m!4488579))

(declare-fun m!4488581 () Bool)

(assert (=> b!3924470 m!4488581))

(assert (=> b!3924470 m!4488565))

(declare-fun m!4488583 () Bool)

(assert (=> b!3924470 m!4488583))

(declare-fun m!4488585 () Bool)

(assert (=> b!3924470 m!4488585))

(declare-fun m!4488587 () Bool)

(assert (=> b!3924470 m!4488587))

(declare-fun m!4488589 () Bool)

(assert (=> b!3924470 m!4488589))

(declare-fun m!4488591 () Bool)

(assert (=> bm!284681 m!4488591))

(declare-fun m!4488593 () Bool)

(assert (=> b!3924492 m!4488593))

(declare-fun m!4488595 () Bool)

(assert (=> b!3924492 m!4488595))

(declare-fun m!4488597 () Bool)

(assert (=> b!3924500 m!4488597))

(declare-fun m!4488599 () Bool)

(assert (=> b!3924500 m!4488599))

(declare-fun m!4488601 () Bool)

(assert (=> b!3924500 m!4488601))

(declare-fun m!4488603 () Bool)

(assert (=> b!3924500 m!4488603))

(declare-fun m!4488605 () Bool)

(assert (=> b!3924472 m!4488605))

(declare-fun m!4488607 () Bool)

(assert (=> b!3924472 m!4488607))

(declare-fun m!4488609 () Bool)

(assert (=> b!3924484 m!4488609))

(declare-fun m!4488611 () Bool)

(assert (=> b!3924484 m!4488611))

(declare-fun m!4488613 () Bool)

(assert (=> b!3924464 m!4488613))

(declare-fun m!4488615 () Bool)

(assert (=> b!3924477 m!4488615))

(declare-fun m!4488617 () Bool)

(assert (=> b!3924491 m!4488617))

(declare-fun m!4488619 () Bool)

(assert (=> b!3924491 m!4488619))

(declare-fun m!4488621 () Bool)

(assert (=> b!3924491 m!4488621))

(declare-fun m!4488623 () Bool)

(assert (=> b!3924491 m!4488623))

(declare-fun m!4488625 () Bool)

(assert (=> b!3924491 m!4488625))

(declare-fun m!4488627 () Bool)

(assert (=> b!3924465 m!4488627))

(assert (=> b!3924465 m!4488627))

(declare-fun m!4488629 () Bool)

(assert (=> b!3924465 m!4488629))

(declare-fun m!4488631 () Bool)

(assert (=> b!3924465 m!4488631))

(declare-fun m!4488633 () Bool)

(assert (=> b!3924488 m!4488633))

(declare-fun m!4488635 () Bool)

(assert (=> b!3924502 m!4488635))

(declare-fun m!4488637 () Bool)

(assert (=> b!3924499 m!4488637))

(declare-fun m!4488639 () Bool)

(assert (=> b!3924480 m!4488639))

(declare-fun m!4488641 () Bool)

(assert (=> b!3924476 m!4488641))

(declare-fun m!4488643 () Bool)

(assert (=> b!3924468 m!4488643))

(assert (=> b!3924468 m!4488597))

(declare-fun m!4488645 () Bool)

(assert (=> b!3924468 m!4488645))

(assert (=> b!3924468 m!4488599))

(declare-fun m!4488647 () Bool)

(assert (=> b!3924468 m!4488647))

(declare-fun m!4488649 () Bool)

(assert (=> b!3924486 m!4488649))

(declare-fun m!4488651 () Bool)

(assert (=> b!3924494 m!4488651))

(declare-fun m!4488653 () Bool)

(assert (=> b!3924498 m!4488653))

(declare-fun m!4488655 () Bool)

(assert (=> b!3924467 m!4488655))

(declare-fun m!4488657 () Bool)

(assert (=> b!3924478 m!4488657))

(declare-fun m!4488659 () Bool)

(assert (=> b!3924471 m!4488659))

(declare-fun m!4488661 () Bool)

(assert (=> b!3924471 m!4488661))

(declare-fun m!4488663 () Bool)

(assert (=> b!3924485 m!4488663))

(declare-fun m!4488665 () Bool)

(assert (=> b!3924485 m!4488665))

(declare-fun m!4488667 () Bool)

(assert (=> b!3924473 m!4488667))

(declare-fun m!4488669 () Bool)

(assert (=> b!3924473 m!4488669))

(declare-fun m!4488671 () Bool)

(assert (=> b!3924473 m!4488671))

(check-sat b_and!299257 (not b!3924471) (not b!3924485) (not b!3924484) (not b!3924486) (not b!3924502) (not b!3924473) (not b!3924464) (not b!3924491) (not b!3924479) (not b!3924476) (not b!3924470) (not b!3924468) (not b!3924467) b_and!299265 (not b!3924488) (not bm!284681) b_and!299255 b_and!299263 (not b!3924496) (not b_next!107611) (not b!3924492) (not b!3924493) b_and!299259 (not b_next!107615) (not b!3924499) (not b_next!107609) (not b!3924465) (not b_next!107605) (not b!3924469) (not b!3924497) (not b!3924498) (not b!3924494) b_and!299261 (not b!3924500) (not b!3924478) (not b!3924466) (not b!3924472) tp_is_empty!19769 (not b!3924483) (not b!3924477) (not b_next!107607) (not b!3924475) (not b!3924489) (not b!3924480) (not b_next!107613))
(check-sat b_and!299257 b_and!299265 b_and!299255 b_and!299263 (not b_next!107611) (not b_next!107609) (not b_next!107605) b_and!299261 (not b_next!107607) (not b_next!107613) b_and!299259 (not b_next!107615))
