; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!362608 () Bool)

(assert start!362608)

(declare-fun b!3865182 () Bool)

(declare-fun b_free!104101 () Bool)

(declare-fun b_next!104805 () Bool)

(assert (=> b!3865182 (= b_free!104101 (not b_next!104805))))

(declare-fun tp!1171768 () Bool)

(declare-fun b_and!289515 () Bool)

(assert (=> b!3865182 (= tp!1171768 b_and!289515)))

(declare-fun b_free!104103 () Bool)

(declare-fun b_next!104807 () Bool)

(assert (=> b!3865182 (= b_free!104103 (not b_next!104807))))

(declare-fun tp!1171782 () Bool)

(declare-fun b_and!289517 () Bool)

(assert (=> b!3865182 (= tp!1171782 b_and!289517)))

(declare-fun b!3865170 () Bool)

(declare-fun b_free!104105 () Bool)

(declare-fun b_next!104809 () Bool)

(assert (=> b!3865170 (= b_free!104105 (not b_next!104809))))

(declare-fun tp!1171781 () Bool)

(declare-fun b_and!289519 () Bool)

(assert (=> b!3865170 (= tp!1171781 b_and!289519)))

(declare-fun b_free!104107 () Bool)

(declare-fun b_next!104811 () Bool)

(assert (=> b!3865170 (= b_free!104107 (not b_next!104811))))

(declare-fun tp!1171771 () Bool)

(declare-fun b_and!289521 () Bool)

(assert (=> b!3865170 (= tp!1171771 b_and!289521)))

(declare-fun b!3865193 () Bool)

(declare-fun b_free!104109 () Bool)

(declare-fun b_next!104813 () Bool)

(assert (=> b!3865193 (= b_free!104109 (not b_next!104813))))

(declare-fun tp!1171780 () Bool)

(declare-fun b_and!289523 () Bool)

(assert (=> b!3865193 (= tp!1171780 b_and!289523)))

(declare-fun b_free!104111 () Bool)

(declare-fun b_next!104815 () Bool)

(assert (=> b!3865193 (= b_free!104111 (not b_next!104815))))

(declare-fun tp!1171767 () Bool)

(declare-fun b_and!289525 () Bool)

(assert (=> b!3865193 (= tp!1171767 b_and!289525)))

(declare-fun e!2389979 () Bool)

(declare-fun tp!1171775 () Bool)

(declare-datatypes ((List!41132 0))(
  ( (Nil!41008) (Cons!41008 (h!46428 (_ BitVec 16)) (t!313911 List!41132)) )
))
(declare-datatypes ((TokenValue!6582 0))(
  ( (FloatLiteralValue!13164 (text!46519 List!41132)) (TokenValueExt!6581 (__x!25381 Int)) (Broken!32910 (value!201640 List!41132)) (Object!6705) (End!6582) (Def!6582) (Underscore!6582) (Match!6582) (Else!6582) (Error!6582) (Case!6582) (If!6582) (Extends!6582) (Abstract!6582) (Class!6582) (Val!6582) (DelimiterValue!13164 (del!6642 List!41132)) (KeywordValue!6588 (value!201641 List!41132)) (CommentValue!13164 (value!201642 List!41132)) (WhitespaceValue!13164 (value!201643 List!41132)) (IndentationValue!6582 (value!201644 List!41132)) (String!46627) (Int32!6582) (Broken!32911 (value!201645 List!41132)) (Boolean!6583) (Unit!58684) (OperatorValue!6585 (op!6642 List!41132)) (IdentifierValue!13164 (value!201646 List!41132)) (IdentifierValue!13165 (value!201647 List!41132)) (WhitespaceValue!13165 (value!201648 List!41132)) (True!13164) (False!13164) (Broken!32912 (value!201649 List!41132)) (Broken!32913 (value!201650 List!41132)) (True!13165) (RightBrace!6582) (RightBracket!6582) (Colon!6582) (Null!6582) (Comma!6582) (LeftBracket!6582) (False!13165) (LeftBrace!6582) (ImaginaryLiteralValue!6582 (text!46520 List!41132)) (StringLiteralValue!19746 (value!201651 List!41132)) (EOFValue!6582 (value!201652 List!41132)) (IdentValue!6582 (value!201653 List!41132)) (DelimiterValue!13165 (value!201654 List!41132)) (DedentValue!6582 (value!201655 List!41132)) (NewLineValue!6582 (value!201656 List!41132)) (IntegerValue!19746 (value!201657 (_ BitVec 32)) (text!46521 List!41132)) (IntegerValue!19747 (value!201658 Int) (text!46522 List!41132)) (Times!6582) (Or!6582) (Equal!6582) (Minus!6582) (Broken!32914 (value!201659 List!41132)) (And!6582) (Div!6582) (LessEqual!6582) (Mod!6582) (Concat!17839) (Not!6582) (Plus!6582) (SpaceValue!6582 (value!201660 List!41132)) (IntegerValue!19748 (value!201661 Int) (text!46523 List!41132)) (StringLiteralValue!19747 (text!46524 List!41132)) (FloatLiteralValue!13165 (text!46525 List!41132)) (BytesLiteralValue!6582 (value!201662 List!41132)) (CommentValue!13165 (value!201663 List!41132)) (StringLiteralValue!19748 (value!201664 List!41132)) (ErrorTokenValue!6582 (msg!6643 List!41132)) )
))
(declare-datatypes ((C!22700 0))(
  ( (C!22701 (val!13444 Int)) )
))
(declare-datatypes ((Regex!11257 0))(
  ( (ElementMatch!11257 (c!672768 C!22700)) (Concat!17840 (regOne!23026 Regex!11257) (regTwo!23026 Regex!11257)) (EmptyExpr!11257) (Star!11257 (reg!11586 Regex!11257)) (EmptyLang!11257) (Union!11257 (regOne!23027 Regex!11257) (regTwo!23027 Regex!11257)) )
))
(declare-datatypes ((String!46628 0))(
  ( (String!46629 (value!201665 String)) )
))
(declare-datatypes ((List!41133 0))(
  ( (Nil!41009) (Cons!41009 (h!46429 C!22700) (t!313912 List!41133)) )
))
(declare-datatypes ((IArray!25131 0))(
  ( (IArray!25132 (innerList!12623 List!41133)) )
))
(declare-datatypes ((Conc!12563 0))(
  ( (Node!12563 (left!31557 Conc!12563) (right!31887 Conc!12563) (csize!25356 Int) (cheight!12774 Int)) (Leaf!19446 (xs!15869 IArray!25131) (csize!25357 Int)) (Empty!12563) )
))
(declare-datatypes ((BalanceConc!24720 0))(
  ( (BalanceConc!24721 (c!672769 Conc!12563)) )
))
(declare-datatypes ((TokenValueInjection!12592 0))(
  ( (TokenValueInjection!12593 (toValue!8780 Int) (toChars!8639 Int)) )
))
(declare-datatypes ((Rule!12504 0))(
  ( (Rule!12505 (regex!6352 Regex!11257) (tag!7212 String!46628) (isSeparator!6352 Bool) (transformation!6352 TokenValueInjection!12592)) )
))
(declare-datatypes ((Token!11842 0))(
  ( (Token!11843 (value!201666 TokenValue!6582) (rule!9230 Rule!12504) (size!30837 Int) (originalCharacters!6952 List!41133)) )
))
(declare-datatypes ((List!41134 0))(
  ( (Nil!41010) (Cons!41010 (h!46430 Token!11842) (t!313913 List!41134)) )
))
(declare-fun prefixTokens!80 () List!41134)

(declare-fun b!3865166 () Bool)

(declare-fun e!2389963 () Bool)

(declare-fun inv!21 (TokenValue!6582) Bool)

(assert (=> b!3865166 (= e!2389963 (and (inv!21 (value!201666 (h!46430 prefixTokens!80))) e!2389979 tp!1171775))))

(declare-fun b!3865167 () Bool)

(declare-fun e!2389969 () Bool)

(declare-fun e!2389983 () Bool)

(assert (=> b!3865167 (= e!2389969 e!2389983)))

(declare-fun res!1565316 () Bool)

(assert (=> b!3865167 (=> (not res!1565316) (not e!2389983))))

(declare-datatypes ((LexerInterface!5941 0))(
  ( (LexerInterfaceExt!5938 (__x!25382 Int)) (Lexer!5939) )
))
(declare-fun thiss!20629 () LexerInterface!5941)

(declare-datatypes ((List!41135 0))(
  ( (Nil!41011) (Cons!41011 (h!46431 Rule!12504) (t!313914 List!41135)) )
))
(declare-fun rules!2768 () List!41135)

(declare-fun suffix!1176 () List!41133)

(declare-datatypes ((tuple2!40222 0))(
  ( (tuple2!40223 (_1!23245 List!41134) (_2!23245 List!41133)) )
))
(declare-fun lt!1343582 () tuple2!40222)

(declare-fun lexList!1709 (LexerInterface!5941 List!41135 List!41133) tuple2!40222)

(assert (=> b!3865167 (= res!1565316 (= (lexList!1709 thiss!20629 rules!2768 suffix!1176) lt!1343582))))

(declare-fun suffixTokens!72 () List!41134)

(declare-fun suffixResult!91 () List!41133)

(assert (=> b!3865167 (= lt!1343582 (tuple2!40223 suffixTokens!72 suffixResult!91))))

(declare-fun b!3865168 () Bool)

(declare-fun e!2389970 () Bool)

(declare-fun e!2389968 () Bool)

(assert (=> b!3865168 (= e!2389970 e!2389968)))

(declare-fun res!1565312 () Bool)

(assert (=> b!3865168 (=> res!1565312 e!2389968)))

(declare-fun lt!1343584 () List!41133)

(declare-fun lt!1343568 () List!41133)

(declare-fun isPrefix!3451 (List!41133 List!41133) Bool)

(assert (=> b!3865168 (= res!1565312 (not (isPrefix!3451 lt!1343584 lt!1343568)))))

(declare-fun prefix!426 () List!41133)

(assert (=> b!3865168 (isPrefix!3451 prefix!426 lt!1343568)))

(declare-datatypes ((Unit!58685 0))(
  ( (Unit!58686) )
))
(declare-fun lt!1343573 () Unit!58685)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!2314 (List!41133 List!41133) Unit!58685)

(assert (=> b!3865168 (= lt!1343573 (lemmaConcatTwoListThenFirstIsPrefix!2314 prefix!426 suffix!1176))))

(declare-fun b!3865169 () Bool)

(declare-fun e!2389962 () Bool)

(declare-fun tp_is_empty!19485 () Bool)

(declare-fun tp!1171770 () Bool)

(assert (=> b!3865169 (= e!2389962 (and tp_is_empty!19485 tp!1171770))))

(declare-fun e!2389982 () Bool)

(assert (=> b!3865170 (= e!2389982 (and tp!1171781 tp!1171771))))

(declare-fun b!3865171 () Bool)

(declare-fun tp!1171778 () Bool)

(declare-fun inv!55169 (String!46628) Bool)

(declare-fun inv!55172 (TokenValueInjection!12592) Bool)

(assert (=> b!3865171 (= e!2389979 (and tp!1171778 (inv!55169 (tag!7212 (rule!9230 (h!46430 prefixTokens!80)))) (inv!55172 (transformation!6352 (rule!9230 (h!46430 prefixTokens!80)))) e!2389982))))

(declare-fun b!3865172 () Bool)

(declare-fun e!2389977 () Unit!58685)

(declare-fun Unit!58687 () Unit!58685)

(assert (=> b!3865172 (= e!2389977 Unit!58687)))

(declare-fun lt!1343579 () List!41134)

(declare-fun lt!1343578 () Unit!58685)

(declare-datatypes ((tuple2!40224 0))(
  ( (tuple2!40225 (_1!23246 Token!11842) (_2!23246 List!41133)) )
))
(declare-fun lt!1343586 () tuple2!40224)

(declare-fun lemmaLexWithSmallerInputCannotProduceAdditionalTokens!12 (LexerInterface!5941 List!41135 List!41133 List!41133 List!41134 List!41133 List!41134) Unit!58685)

(assert (=> b!3865172 (= lt!1343578 (lemmaLexWithSmallerInputCannotProduceAdditionalTokens!12 thiss!20629 rules!2768 suffix!1176 (_2!23246 lt!1343586) suffixTokens!72 suffixResult!91 lt!1343579))))

(declare-fun res!1565309 () Bool)

(declare-fun call!282624 () tuple2!40222)

(declare-fun ++!10461 (List!41134 List!41134) List!41134)

(assert (=> b!3865172 (= res!1565309 (not (= call!282624 (tuple2!40223 (++!10461 lt!1343579 suffixTokens!72) suffixResult!91))))))

(declare-fun e!2389967 () Bool)

(assert (=> b!3865172 (=> (not res!1565309) (not e!2389967))))

(assert (=> b!3865172 e!2389967))

(declare-fun b!3865173 () Bool)

(declare-fun e!2389964 () Bool)

(declare-fun tp!1171779 () Bool)

(assert (=> b!3865173 (= e!2389964 (and tp_is_empty!19485 tp!1171779))))

(declare-fun b!3865174 () Bool)

(declare-fun e!2389954 () Bool)

(assert (=> b!3865174 (= e!2389954 e!2389970)))

(declare-fun res!1565307 () Bool)

(assert (=> b!3865174 (=> res!1565307 e!2389970)))

(declare-fun lt!1343575 () Int)

(declare-fun lt!1343587 () Int)

(assert (=> b!3865174 (= res!1565307 (not (= lt!1343575 lt!1343587)))))

(declare-fun lt!1343576 () Unit!58685)

(declare-fun e!2389955 () Unit!58685)

(assert (=> b!3865174 (= lt!1343576 e!2389955)))

(declare-fun c!672765 () Bool)

(assert (=> b!3865174 (= c!672765 (< lt!1343575 lt!1343587))))

(declare-fun size!30838 (List!41133) Int)

(assert (=> b!3865174 (= lt!1343587 (size!30838 suffix!1176))))

(declare-datatypes ((Option!8770 0))(
  ( (None!8769) (Some!8769 (v!39067 tuple2!40224)) )
))
(declare-fun lt!1343595 () Option!8770)

(assert (=> b!3865174 (= lt!1343575 (size!30838 (_2!23246 (v!39067 lt!1343595))))))

(declare-fun b!3865175 () Bool)

(declare-fun c!672766 () Bool)

(declare-fun isEmpty!24308 (List!41134) Bool)

(assert (=> b!3865175 (= c!672766 (isEmpty!24308 lt!1343579))))

(declare-fun tail!5877 (List!41134) List!41134)

(assert (=> b!3865175 (= lt!1343579 (tail!5877 prefixTokens!80))))

(declare-fun e!2389972 () Unit!58685)

(assert (=> b!3865175 (= e!2389972 e!2389977)))

(declare-fun b!3865176 () Bool)

(declare-fun Unit!58688 () Unit!58685)

(assert (=> b!3865176 (= e!2389972 Unit!58688)))

(declare-fun res!1565303 () Bool)

(declare-fun e!2389960 () Bool)

(assert (=> start!362608 (=> (not res!1565303) (not e!2389960))))

(get-info :version)

(assert (=> start!362608 (= res!1565303 ((_ is Lexer!5939) thiss!20629))))

(assert (=> start!362608 e!2389960))

(assert (=> start!362608 e!2389962))

(assert (=> start!362608 true))

(declare-fun e!2389965 () Bool)

(assert (=> start!362608 e!2389965))

(declare-fun e!2389959 () Bool)

(assert (=> start!362608 e!2389959))

(declare-fun e!2389976 () Bool)

(assert (=> start!362608 e!2389976))

(declare-fun e!2389980 () Bool)

(assert (=> start!362608 e!2389980))

(assert (=> start!362608 e!2389964))

(declare-fun b!3865165 () Bool)

(assert (=> b!3865165 (= e!2389967 false)))

(declare-fun b!3865177 () Bool)

(declare-fun e!2389966 () Bool)

(assert (=> b!3865177 (= e!2389966 false)))

(declare-fun b!3865178 () Bool)

(declare-fun res!1565310 () Bool)

(assert (=> b!3865178 (=> (not res!1565310) (not e!2389960))))

(declare-fun rulesInvariant!5284 (LexerInterface!5941 List!41135) Bool)

(assert (=> b!3865178 (= res!1565310 (rulesInvariant!5284 thiss!20629 rules!2768))))

(declare-fun b!3865179 () Bool)

(declare-fun tp!1171766 () Bool)

(assert (=> b!3865179 (= e!2389965 (and tp_is_empty!19485 tp!1171766))))

(declare-fun b!3865180 () Bool)

(declare-fun Unit!58689 () Unit!58685)

(assert (=> b!3865180 (= e!2389977 Unit!58689)))

(declare-fun lt!1343588 () Unit!58685)

(declare-fun lemmaConcatSameAndSameSizesThenSameLists!436 (List!41133 List!41133 List!41133 List!41133) Unit!58685)

(assert (=> b!3865180 (= lt!1343588 (lemmaConcatSameAndSameSizesThenSameLists!436 lt!1343584 (_2!23246 (v!39067 lt!1343595)) lt!1343584 (_2!23246 lt!1343586)))))

(assert (=> b!3865180 (= (_2!23246 (v!39067 lt!1343595)) (_2!23246 lt!1343586))))

(declare-fun lt!1343585 () Unit!58685)

(declare-fun lemmaLexWithSmallerInputCannotProduceSameResults!12 (LexerInterface!5941 List!41135 List!41133 List!41133 List!41134 List!41133) Unit!58685)

(assert (=> b!3865180 (= lt!1343585 (lemmaLexWithSmallerInputCannotProduceSameResults!12 thiss!20629 rules!2768 suffix!1176 (_2!23246 lt!1343586) suffixTokens!72 suffixResult!91))))

(declare-fun res!1565304 () Bool)

(assert (=> b!3865180 (= res!1565304 (not (= call!282624 lt!1343582)))))

(assert (=> b!3865180 (=> (not res!1565304) (not e!2389966))))

(assert (=> b!3865180 e!2389966))

(declare-fun tp!1171774 () Bool)

(declare-fun b!3865181 () Bool)

(declare-fun inv!55173 (Token!11842) Bool)

(assert (=> b!3865181 (= e!2389976 (and (inv!55173 (h!46430 prefixTokens!80)) e!2389963 tp!1171774))))

(declare-fun e!2389981 () Bool)

(assert (=> b!3865182 (= e!2389981 (and tp!1171768 tp!1171782))))

(declare-fun e!2389973 () Bool)

(declare-fun b!3865183 () Bool)

(declare-fun e!2389978 () Bool)

(declare-fun tp!1171777 () Bool)

(assert (=> b!3865183 (= e!2389978 (and tp!1171777 (inv!55169 (tag!7212 (h!46431 rules!2768))) (inv!55172 (transformation!6352 (h!46431 rules!2768))) e!2389973))))

(declare-fun b!3865184 () Bool)

(declare-fun tp!1171776 () Bool)

(assert (=> b!3865184 (= e!2389959 (and e!2389978 tp!1171776))))

(declare-fun b!3865185 () Bool)

(declare-fun Unit!58690 () Unit!58685)

(assert (=> b!3865185 (= e!2389955 Unit!58690)))

(declare-fun b!3865186 () Bool)

(assert (=> b!3865186 (= e!2389968 true)))

(declare-fun lt!1343590 () Int)

(assert (=> b!3865186 (= lt!1343590 (size!30838 prefix!426))))

(declare-fun e!2389961 () Bool)

(declare-fun tp!1171773 () Bool)

(declare-fun b!3865187 () Bool)

(assert (=> b!3865187 (= e!2389980 (and (inv!55173 (h!46430 suffixTokens!72)) e!2389961 tp!1171773))))

(declare-fun b!3865188 () Bool)

(declare-fun e!2389958 () Bool)

(assert (=> b!3865188 (= e!2389958 (= (size!30837 (_1!23246 (v!39067 lt!1343595))) (size!30838 (originalCharacters!6952 (_1!23246 (v!39067 lt!1343595))))))))

(declare-fun b!3865189 () Bool)

(assert (=> b!3865189 (= e!2389960 e!2389969)))

(declare-fun res!1565318 () Bool)

(assert (=> b!3865189 (=> (not res!1565318) (not e!2389969))))

(declare-fun lt!1343591 () List!41134)

(declare-fun lt!1343572 () tuple2!40222)

(assert (=> b!3865189 (= res!1565318 (= lt!1343572 (tuple2!40223 lt!1343591 suffixResult!91)))))

(assert (=> b!3865189 (= lt!1343572 (lexList!1709 thiss!20629 rules!2768 lt!1343568))))

(assert (=> b!3865189 (= lt!1343591 (++!10461 prefixTokens!80 suffixTokens!72))))

(declare-fun ++!10462 (List!41133 List!41133) List!41133)

(assert (=> b!3865189 (= lt!1343568 (++!10462 prefix!426 suffix!1176))))

(declare-fun b!3865190 () Bool)

(declare-fun e!2389984 () Bool)

(assert (=> b!3865190 (= e!2389984 (not e!2389954))))

(declare-fun res!1565306 () Bool)

(assert (=> b!3865190 (=> res!1565306 e!2389954)))

(declare-fun lt!1343581 () List!41133)

(assert (=> b!3865190 (= res!1565306 (not (= lt!1343581 lt!1343568)))))

(declare-fun lt!1343594 () tuple2!40222)

(assert (=> b!3865190 (= lt!1343594 (lexList!1709 thiss!20629 rules!2768 (_2!23246 (v!39067 lt!1343595))))))

(declare-fun lt!1343580 () TokenValue!6582)

(declare-fun lt!1343577 () List!41133)

(declare-fun lt!1343593 () Int)

(assert (=> b!3865190 (and (= (size!30837 (_1!23246 (v!39067 lt!1343595))) lt!1343593) (= (originalCharacters!6952 (_1!23246 (v!39067 lt!1343595))) lt!1343584) (= (v!39067 lt!1343595) (tuple2!40225 (Token!11843 lt!1343580 (rule!9230 (_1!23246 (v!39067 lt!1343595))) lt!1343593 lt!1343584) lt!1343577)))))

(assert (=> b!3865190 (= lt!1343593 (size!30838 lt!1343584))))

(assert (=> b!3865190 e!2389958))

(declare-fun res!1565315 () Bool)

(assert (=> b!3865190 (=> (not res!1565315) (not e!2389958))))

(assert (=> b!3865190 (= res!1565315 (= (value!201666 (_1!23246 (v!39067 lt!1343595))) lt!1343580))))

(declare-fun apply!9595 (TokenValueInjection!12592 BalanceConc!24720) TokenValue!6582)

(declare-fun seqFromList!4623 (List!41133) BalanceConc!24720)

(assert (=> b!3865190 (= lt!1343580 (apply!9595 (transformation!6352 (rule!9230 (_1!23246 (v!39067 lt!1343595)))) (seqFromList!4623 lt!1343584)))))

(assert (=> b!3865190 (= (_2!23246 (v!39067 lt!1343595)) lt!1343577)))

(declare-fun lt!1343570 () Unit!58685)

(declare-fun lemmaSamePrefixThenSameSuffix!1672 (List!41133 List!41133 List!41133 List!41133 List!41133) Unit!58685)

(assert (=> b!3865190 (= lt!1343570 (lemmaSamePrefixThenSameSuffix!1672 lt!1343584 (_2!23246 (v!39067 lt!1343595)) lt!1343584 lt!1343577 lt!1343568))))

(declare-fun getSuffix!1906 (List!41133 List!41133) List!41133)

(assert (=> b!3865190 (= lt!1343577 (getSuffix!1906 lt!1343568 lt!1343584))))

(assert (=> b!3865190 (isPrefix!3451 lt!1343584 lt!1343581)))

(assert (=> b!3865190 (= lt!1343581 (++!10462 lt!1343584 (_2!23246 (v!39067 lt!1343595))))))

(declare-fun lt!1343574 () Unit!58685)

(assert (=> b!3865190 (= lt!1343574 (lemmaConcatTwoListThenFirstIsPrefix!2314 lt!1343584 (_2!23246 (v!39067 lt!1343595))))))

(declare-fun list!15262 (BalanceConc!24720) List!41133)

(declare-fun charsOf!4180 (Token!11842) BalanceConc!24720)

(assert (=> b!3865190 (= lt!1343584 (list!15262 (charsOf!4180 (_1!23246 (v!39067 lt!1343595)))))))

(declare-fun ruleValid!2304 (LexerInterface!5941 Rule!12504) Bool)

(assert (=> b!3865190 (ruleValid!2304 thiss!20629 (rule!9230 (_1!23246 (v!39067 lt!1343595))))))

(declare-fun lt!1343569 () Unit!58685)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1384 (LexerInterface!5941 Rule!12504 List!41135) Unit!58685)

(assert (=> b!3865190 (= lt!1343569 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1384 thiss!20629 (rule!9230 (_1!23246 (v!39067 lt!1343595))) rules!2768))))

(declare-fun lt!1343571 () Unit!58685)

(declare-fun lemmaCharactersSize!1013 (Token!11842) Unit!58685)

(assert (=> b!3865190 (= lt!1343571 (lemmaCharactersSize!1013 (_1!23246 (v!39067 lt!1343595))))))

(declare-fun b!3865191 () Bool)

(declare-fun Unit!58691 () Unit!58685)

(assert (=> b!3865191 (= e!2389955 Unit!58691)))

(declare-fun lt!1343589 () Int)

(assert (=> b!3865191 (= lt!1343589 (size!30838 lt!1343568))))

(declare-fun lt!1343592 () Unit!58685)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1225 (LexerInterface!5941 List!41135 List!41133 List!41133 List!41133 Rule!12504) Unit!58685)

(assert (=> b!3865191 (= lt!1343592 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1225 thiss!20629 rules!2768 lt!1343584 lt!1343568 (_2!23246 (v!39067 lt!1343595)) (rule!9230 (_1!23246 (v!39067 lt!1343595)))))))

(declare-fun maxPrefixOneRule!2327 (LexerInterface!5941 Rule!12504 List!41133) Option!8770)

(assert (=> b!3865191 (= (maxPrefixOneRule!2327 thiss!20629 (rule!9230 (_1!23246 (v!39067 lt!1343595))) lt!1343568) (Some!8769 (tuple2!40225 (Token!11843 lt!1343580 (rule!9230 (_1!23246 (v!39067 lt!1343595))) lt!1343593 lt!1343584) (_2!23246 (v!39067 lt!1343595)))))))

(declare-fun get!13568 (Option!8770) tuple2!40224)

(assert (=> b!3865191 (= lt!1343586 (get!13568 lt!1343595))))

(declare-fun c!672767 () Bool)

(assert (=> b!3865191 (= c!672767 (< (size!30838 (_2!23246 lt!1343586)) lt!1343587))))

(declare-fun lt!1343583 () Unit!58685)

(assert (=> b!3865191 (= lt!1343583 e!2389972)))

(assert (=> b!3865191 false))

(declare-fun b!3865192 () Bool)

(declare-fun res!1565317 () Bool)

(assert (=> b!3865192 (=> res!1565317 e!2389954)))

(assert (=> b!3865192 (= res!1565317 (not (= lt!1343572 (tuple2!40223 (++!10461 (Cons!41010 (_1!23246 (v!39067 lt!1343595)) Nil!41010) (_1!23245 lt!1343594)) (_2!23245 lt!1343594)))))))

(assert (=> b!3865193 (= e!2389973 (and tp!1171780 tp!1171767))))

(declare-fun b!3865194 () Bool)

(declare-fun res!1565314 () Bool)

(assert (=> b!3865194 (=> (not res!1565314) (not e!2389960))))

(declare-fun isEmpty!24309 (List!41133) Bool)

(assert (=> b!3865194 (= res!1565314 (not (isEmpty!24309 prefix!426)))))

(declare-fun b!3865195 () Bool)

(declare-fun tp!1171769 () Bool)

(declare-fun e!2389957 () Bool)

(assert (=> b!3865195 (= e!2389961 (and (inv!21 (value!201666 (h!46430 suffixTokens!72))) e!2389957 tp!1171769))))

(declare-fun bm!282619 () Bool)

(assert (=> bm!282619 (= call!282624 (lexList!1709 thiss!20629 rules!2768 (_2!23246 lt!1343586)))))

(declare-fun b!3865196 () Bool)

(declare-fun res!1565308 () Bool)

(assert (=> b!3865196 (=> res!1565308 e!2389954)))

(assert (=> b!3865196 (= res!1565308 (or (not (= lt!1343594 (tuple2!40223 (_1!23245 lt!1343594) (_2!23245 lt!1343594)))) (= (_2!23246 (v!39067 lt!1343595)) suffix!1176)))))

(declare-fun b!3865197 () Bool)

(assert (=> b!3865197 (= e!2389983 e!2389984)))

(declare-fun res!1565305 () Bool)

(assert (=> b!3865197 (=> (not res!1565305) (not e!2389984))))

(assert (=> b!3865197 (= res!1565305 ((_ is Some!8769) lt!1343595))))

(declare-fun maxPrefix!3245 (LexerInterface!5941 List!41135 List!41133) Option!8770)

(assert (=> b!3865197 (= lt!1343595 (maxPrefix!3245 thiss!20629 rules!2768 lt!1343568))))

(declare-fun b!3865198 () Bool)

(declare-fun res!1565311 () Bool)

(assert (=> b!3865198 (=> (not res!1565311) (not e!2389960))))

(declare-fun isEmpty!24310 (List!41135) Bool)

(assert (=> b!3865198 (= res!1565311 (not (isEmpty!24310 rules!2768)))))

(declare-fun b!3865199 () Bool)

(declare-fun res!1565313 () Bool)

(assert (=> b!3865199 (=> (not res!1565313) (not e!2389960))))

(assert (=> b!3865199 (= res!1565313 (not (isEmpty!24308 prefixTokens!80)))))

(declare-fun b!3865200 () Bool)

(declare-fun tp!1171772 () Bool)

(assert (=> b!3865200 (= e!2389957 (and tp!1171772 (inv!55169 (tag!7212 (rule!9230 (h!46430 suffixTokens!72)))) (inv!55172 (transformation!6352 (rule!9230 (h!46430 suffixTokens!72)))) e!2389981))))

(assert (= (and start!362608 res!1565303) b!3865198))

(assert (= (and b!3865198 res!1565311) b!3865178))

(assert (= (and b!3865178 res!1565310) b!3865199))

(assert (= (and b!3865199 res!1565313) b!3865194))

(assert (= (and b!3865194 res!1565314) b!3865189))

(assert (= (and b!3865189 res!1565318) b!3865167))

(assert (= (and b!3865167 res!1565316) b!3865197))

(assert (= (and b!3865197 res!1565305) b!3865190))

(assert (= (and b!3865190 res!1565315) b!3865188))

(assert (= (and b!3865190 (not res!1565306)) b!3865192))

(assert (= (and b!3865192 (not res!1565317)) b!3865196))

(assert (= (and b!3865196 (not res!1565308)) b!3865174))

(assert (= (and b!3865174 c!672765) b!3865191))

(assert (= (and b!3865174 (not c!672765)) b!3865185))

(assert (= (and b!3865191 c!672767) b!3865175))

(assert (= (and b!3865191 (not c!672767)) b!3865176))

(assert (= (and b!3865175 c!672766) b!3865180))

(assert (= (and b!3865175 (not c!672766)) b!3865172))

(assert (= (and b!3865180 res!1565304) b!3865177))

(assert (= (and b!3865172 res!1565309) b!3865165))

(assert (= (or b!3865180 b!3865172) bm!282619))

(assert (= (and b!3865174 (not res!1565307)) b!3865168))

(assert (= (and b!3865168 (not res!1565312)) b!3865186))

(assert (= (and start!362608 ((_ is Cons!41009) suffixResult!91)) b!3865169))

(assert (= (and start!362608 ((_ is Cons!41009) suffix!1176)) b!3865179))

(assert (= b!3865183 b!3865193))

(assert (= b!3865184 b!3865183))

(assert (= (and start!362608 ((_ is Cons!41011) rules!2768)) b!3865184))

(assert (= b!3865171 b!3865170))

(assert (= b!3865166 b!3865171))

(assert (= b!3865181 b!3865166))

(assert (= (and start!362608 ((_ is Cons!41010) prefixTokens!80)) b!3865181))

(assert (= b!3865200 b!3865182))

(assert (= b!3865195 b!3865200))

(assert (= b!3865187 b!3865195))

(assert (= (and start!362608 ((_ is Cons!41010) suffixTokens!72)) b!3865187))

(assert (= (and start!362608 ((_ is Cons!41009) prefix!426)) b!3865173))

(declare-fun m!4420635 () Bool)

(assert (=> b!3865178 m!4420635))

(declare-fun m!4420637 () Bool)

(assert (=> b!3865194 m!4420637))

(declare-fun m!4420639 () Bool)

(assert (=> b!3865183 m!4420639))

(declare-fun m!4420641 () Bool)

(assert (=> b!3865183 m!4420641))

(declare-fun m!4420643 () Bool)

(assert (=> b!3865167 m!4420643))

(declare-fun m!4420645 () Bool)

(assert (=> b!3865181 m!4420645))

(declare-fun m!4420647 () Bool)

(assert (=> b!3865171 m!4420647))

(declare-fun m!4420649 () Bool)

(assert (=> b!3865171 m!4420649))

(declare-fun m!4420651 () Bool)

(assert (=> b!3865198 m!4420651))

(declare-fun m!4420653 () Bool)

(assert (=> b!3865197 m!4420653))

(declare-fun m!4420655 () Bool)

(assert (=> b!3865187 m!4420655))

(declare-fun m!4420657 () Bool)

(assert (=> b!3865195 m!4420657))

(declare-fun m!4420659 () Bool)

(assert (=> b!3865174 m!4420659))

(declare-fun m!4420661 () Bool)

(assert (=> b!3865174 m!4420661))

(declare-fun m!4420663 () Bool)

(assert (=> b!3865192 m!4420663))

(declare-fun m!4420665 () Bool)

(assert (=> b!3865199 m!4420665))

(declare-fun m!4420667 () Bool)

(assert (=> b!3865180 m!4420667))

(declare-fun m!4420669 () Bool)

(assert (=> b!3865180 m!4420669))

(declare-fun m!4420671 () Bool)

(assert (=> b!3865172 m!4420671))

(declare-fun m!4420673 () Bool)

(assert (=> b!3865172 m!4420673))

(declare-fun m!4420675 () Bool)

(assert (=> b!3865189 m!4420675))

(declare-fun m!4420677 () Bool)

(assert (=> b!3865189 m!4420677))

(declare-fun m!4420679 () Bool)

(assert (=> b!3865189 m!4420679))

(declare-fun m!4420681 () Bool)

(assert (=> bm!282619 m!4420681))

(declare-fun m!4420683 () Bool)

(assert (=> b!3865200 m!4420683))

(declare-fun m!4420685 () Bool)

(assert (=> b!3865200 m!4420685))

(declare-fun m!4420687 () Bool)

(assert (=> b!3865191 m!4420687))

(declare-fun m!4420689 () Bool)

(assert (=> b!3865191 m!4420689))

(declare-fun m!4420691 () Bool)

(assert (=> b!3865191 m!4420691))

(declare-fun m!4420693 () Bool)

(assert (=> b!3865191 m!4420693))

(declare-fun m!4420695 () Bool)

(assert (=> b!3865191 m!4420695))

(declare-fun m!4420697 () Bool)

(assert (=> b!3865168 m!4420697))

(declare-fun m!4420699 () Bool)

(assert (=> b!3865168 m!4420699))

(declare-fun m!4420701 () Bool)

(assert (=> b!3865168 m!4420701))

(declare-fun m!4420703 () Bool)

(assert (=> b!3865186 m!4420703))

(declare-fun m!4420705 () Bool)

(assert (=> b!3865188 m!4420705))

(declare-fun m!4420707 () Bool)

(assert (=> b!3865166 m!4420707))

(declare-fun m!4420709 () Bool)

(assert (=> b!3865175 m!4420709))

(declare-fun m!4420711 () Bool)

(assert (=> b!3865175 m!4420711))

(declare-fun m!4420713 () Bool)

(assert (=> b!3865190 m!4420713))

(declare-fun m!4420715 () Bool)

(assert (=> b!3865190 m!4420715))

(declare-fun m!4420717 () Bool)

(assert (=> b!3865190 m!4420717))

(declare-fun m!4420719 () Bool)

(assert (=> b!3865190 m!4420719))

(declare-fun m!4420721 () Bool)

(assert (=> b!3865190 m!4420721))

(declare-fun m!4420723 () Bool)

(assert (=> b!3865190 m!4420723))

(declare-fun m!4420725 () Bool)

(assert (=> b!3865190 m!4420725))

(assert (=> b!3865190 m!4420719))

(declare-fun m!4420727 () Bool)

(assert (=> b!3865190 m!4420727))

(declare-fun m!4420729 () Bool)

(assert (=> b!3865190 m!4420729))

(assert (=> b!3865190 m!4420723))

(declare-fun m!4420731 () Bool)

(assert (=> b!3865190 m!4420731))

(declare-fun m!4420733 () Bool)

(assert (=> b!3865190 m!4420733))

(declare-fun m!4420735 () Bool)

(assert (=> b!3865190 m!4420735))

(declare-fun m!4420737 () Bool)

(assert (=> b!3865190 m!4420737))

(declare-fun m!4420739 () Bool)

(assert (=> b!3865190 m!4420739))

(check-sat (not b!3865172) (not b!3865174) (not b!3865190) (not b!3865179) (not b!3865168) (not b!3865166) b_and!289521 (not b!3865167) b_and!289523 (not b!3865169) (not b!3865173) (not b_next!104811) (not b!3865194) (not b!3865195) (not b!3865200) (not b!3865184) (not b_next!104807) (not b!3865175) (not b!3865198) (not b!3865183) b_and!289525 (not b_next!104813) (not b_next!104815) (not b!3865171) (not b!3865189) (not b!3865187) b_and!289517 (not b!3865188) (not b_next!104809) (not b!3865181) (not b!3865186) (not bm!282619) b_and!289515 (not b!3865191) (not b!3865197) b_and!289519 tp_is_empty!19485 (not b!3865178) (not b!3865199) (not b!3865180) (not b!3865192) (not b_next!104805))
(check-sat (not b_next!104807) (not b_next!104815) b_and!289517 (not b_next!104809) b_and!289515 b_and!289521 b_and!289519 (not b_next!104805) (not b_next!104811) b_and!289523 b_and!289525 (not b_next!104813))
