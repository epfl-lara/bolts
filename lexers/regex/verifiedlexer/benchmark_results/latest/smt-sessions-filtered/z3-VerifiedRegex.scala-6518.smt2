; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!344006 () Bool)

(assert start!344006)

(declare-fun b!3670186 () Bool)

(declare-fun b_free!96953 () Bool)

(declare-fun b_next!97657 () Bool)

(assert (=> b!3670186 (= b_free!96953 (not b_next!97657))))

(declare-fun tp!1116843 () Bool)

(declare-fun b_and!273307 () Bool)

(assert (=> b!3670186 (= tp!1116843 b_and!273307)))

(declare-fun b_free!96955 () Bool)

(declare-fun b_next!97659 () Bool)

(assert (=> b!3670186 (= b_free!96955 (not b_next!97659))))

(declare-fun tp!1116845 () Bool)

(declare-fun b_and!273309 () Bool)

(assert (=> b!3670186 (= tp!1116845 b_and!273309)))

(declare-fun b!3670153 () Bool)

(declare-fun b_free!96957 () Bool)

(declare-fun b_next!97661 () Bool)

(assert (=> b!3670153 (= b_free!96957 (not b_next!97661))))

(declare-fun tp!1116844 () Bool)

(declare-fun b_and!273311 () Bool)

(assert (=> b!3670153 (= tp!1116844 b_and!273311)))

(declare-fun b_free!96959 () Bool)

(declare-fun b_next!97663 () Bool)

(assert (=> b!3670153 (= b_free!96959 (not b_next!97663))))

(declare-fun tp!1116847 () Bool)

(declare-fun b_and!273313 () Bool)

(assert (=> b!3670153 (= tp!1116847 b_and!273313)))

(declare-fun b!3670170 () Bool)

(declare-fun b_free!96961 () Bool)

(declare-fun b_next!97665 () Bool)

(assert (=> b!3670170 (= b_free!96961 (not b_next!97665))))

(declare-fun tp!1116846 () Bool)

(declare-fun b_and!273315 () Bool)

(assert (=> b!3670170 (= tp!1116846 b_and!273315)))

(declare-fun b_free!96963 () Bool)

(declare-fun b_next!97667 () Bool)

(assert (=> b!3670170 (= b_free!96963 (not b_next!97667))))

(declare-fun tp!1116840 () Bool)

(declare-fun b_and!273317 () Bool)

(assert (=> b!3670170 (= tp!1116840 b_and!273317)))

(declare-fun b!3670185 () Bool)

(declare-fun b_free!96965 () Bool)

(declare-fun b_next!97669 () Bool)

(assert (=> b!3670185 (= b_free!96965 (not b_next!97669))))

(declare-fun tp!1116852 () Bool)

(declare-fun b_and!273319 () Bool)

(assert (=> b!3670185 (= tp!1116852 b_and!273319)))

(declare-fun b_free!96967 () Bool)

(declare-fun b_next!97671 () Bool)

(assert (=> b!3670185 (= b_free!96967 (not b_next!97671))))

(declare-fun tp!1116839 () Bool)

(declare-fun b_and!273321 () Bool)

(assert (=> b!3670185 (= tp!1116839 b_and!273321)))

(declare-fun bm!265666 () Bool)

(declare-fun call!265674 () Bool)

(declare-datatypes ((C!21336 0))(
  ( (C!21337 (val!12716 Int)) )
))
(declare-datatypes ((List!38827 0))(
  ( (Nil!38703) (Cons!38703 (h!44123 C!21336) (t!299622 List!38827)) )
))
(declare-fun call!265672 () List!38827)

(declare-fun lt!1278978 () C!21336)

(declare-fun contains!7699 (List!38827 C!21336) Bool)

(assert (=> bm!265666 (= call!265674 (contains!7699 call!265672 lt!1278978))))

(declare-fun b!3670135 () Bool)

(declare-datatypes ((Unit!56244 0))(
  ( (Unit!56245) )
))
(declare-fun e!2272489 () Unit!56244)

(declare-fun Unit!56246 () Unit!56244)

(assert (=> b!3670135 (= e!2272489 Unit!56246)))

(declare-fun b!3670136 () Bool)

(declare-fun e!2272501 () Bool)

(declare-fun e!2272484 () Bool)

(assert (=> b!3670136 (= e!2272501 e!2272484)))

(declare-fun res!1490484 () Bool)

(assert (=> b!3670136 (=> (not res!1490484) (not e!2272484))))

(declare-datatypes ((List!38828 0))(
  ( (Nil!38704) (Cons!38704 (h!44124 (_ BitVec 16)) (t!299623 List!38828)) )
))
(declare-datatypes ((TokenValue!6046 0))(
  ( (FloatLiteralValue!12092 (text!42767 List!38828)) (TokenValueExt!6045 (__x!24309 Int)) (Broken!30230 (value!186190 List!38828)) (Object!6169) (End!6046) (Def!6046) (Underscore!6046) (Match!6046) (Else!6046) (Error!6046) (Case!6046) (If!6046) (Extends!6046) (Abstract!6046) (Class!6046) (Val!6046) (DelimiterValue!12092 (del!6106 List!38828)) (KeywordValue!6052 (value!186191 List!38828)) (CommentValue!12092 (value!186192 List!38828)) (WhitespaceValue!12092 (value!186193 List!38828)) (IndentationValue!6046 (value!186194 List!38828)) (String!43563) (Int32!6046) (Broken!30231 (value!186195 List!38828)) (Boolean!6047) (Unit!56247) (OperatorValue!6049 (op!6106 List!38828)) (IdentifierValue!12092 (value!186196 List!38828)) (IdentifierValue!12093 (value!186197 List!38828)) (WhitespaceValue!12093 (value!186198 List!38828)) (True!12092) (False!12092) (Broken!30232 (value!186199 List!38828)) (Broken!30233 (value!186200 List!38828)) (True!12093) (RightBrace!6046) (RightBracket!6046) (Colon!6046) (Null!6046) (Comma!6046) (LeftBracket!6046) (False!12093) (LeftBrace!6046) (ImaginaryLiteralValue!6046 (text!42768 List!38828)) (StringLiteralValue!18138 (value!186201 List!38828)) (EOFValue!6046 (value!186202 List!38828)) (IdentValue!6046 (value!186203 List!38828)) (DelimiterValue!12093 (value!186204 List!38828)) (DedentValue!6046 (value!186205 List!38828)) (NewLineValue!6046 (value!186206 List!38828)) (IntegerValue!18138 (value!186207 (_ BitVec 32)) (text!42769 List!38828)) (IntegerValue!18139 (value!186208 Int) (text!42770 List!38828)) (Times!6046) (Or!6046) (Equal!6046) (Minus!6046) (Broken!30234 (value!186209 List!38828)) (And!6046) (Div!6046) (LessEqual!6046) (Mod!6046) (Concat!16621) (Not!6046) (Plus!6046) (SpaceValue!6046 (value!186210 List!38828)) (IntegerValue!18140 (value!186211 Int) (text!42771 List!38828)) (StringLiteralValue!18139 (text!42772 List!38828)) (FloatLiteralValue!12093 (text!42773 List!38828)) (BytesLiteralValue!6046 (value!186212 List!38828)) (CommentValue!12093 (value!186213 List!38828)) (StringLiteralValue!18140 (value!186214 List!38828)) (ErrorTokenValue!6046 (msg!6107 List!38828)) )
))
(declare-datatypes ((Regex!10575 0))(
  ( (ElementMatch!10575 (c!634578 C!21336)) (Concat!16622 (regOne!21662 Regex!10575) (regTwo!21662 Regex!10575)) (EmptyExpr!10575) (Star!10575 (reg!10904 Regex!10575)) (EmptyLang!10575) (Union!10575 (regOne!21663 Regex!10575) (regTwo!21663 Regex!10575)) )
))
(declare-datatypes ((String!43564 0))(
  ( (String!43565 (value!186215 String)) )
))
(declare-datatypes ((IArray!23687 0))(
  ( (IArray!23688 (innerList!11901 List!38827)) )
))
(declare-datatypes ((Conc!11841 0))(
  ( (Node!11841 (left!30207 Conc!11841) (right!30537 Conc!11841) (csize!23912 Int) (cheight!12052 Int)) (Leaf!18360 (xs!15043 IArray!23687) (csize!23913 Int)) (Empty!11841) )
))
(declare-datatypes ((BalanceConc!23296 0))(
  ( (BalanceConc!23297 (c!634579 Conc!11841)) )
))
(declare-datatypes ((TokenValueInjection!11520 0))(
  ( (TokenValueInjection!11521 (toValue!8112 Int) (toChars!7971 Int)) )
))
(declare-datatypes ((Rule!11432 0))(
  ( (Rule!11433 (regex!5816 Regex!10575) (tag!6606 String!43564) (isSeparator!5816 Bool) (transformation!5816 TokenValueInjection!11520)) )
))
(declare-datatypes ((Token!10998 0))(
  ( (Token!10999 (value!186216 TokenValue!6046) (rule!8640 Rule!11432) (size!29579 Int) (originalCharacters!6530 List!38827)) )
))
(declare-datatypes ((tuple2!38576 0))(
  ( (tuple2!38577 (_1!22422 Token!10998) (_2!22422 List!38827)) )
))
(declare-fun lt!1278998 () tuple2!38576)

(declare-fun token!511 () Token!10998)

(assert (=> b!3670136 (= res!1490484 (= (_1!22422 lt!1278998) token!511))))

(declare-datatypes ((Option!8260 0))(
  ( (None!8259) (Some!8259 (v!38171 tuple2!38576)) )
))
(declare-fun lt!1279009 () Option!8260)

(declare-fun get!12778 (Option!8260) tuple2!38576)

(assert (=> b!3670136 (= lt!1278998 (get!12778 lt!1279009))))

(declare-fun b!3670137 () Bool)

(declare-fun e!2272505 () Bool)

(declare-fun e!2272483 () Bool)

(assert (=> b!3670137 (= e!2272505 e!2272483)))

(declare-fun res!1490492 () Bool)

(assert (=> b!3670137 (=> res!1490492 e!2272483)))

(declare-fun lt!1278979 () TokenValue!6046)

(declare-fun lt!1278992 () tuple2!38576)

(declare-fun lt!1278985 () Option!8260)

(declare-fun lt!1278980 () List!38827)

(declare-fun lt!1278988 () Int)

(assert (=> b!3670137 (= res!1490492 (not (= lt!1278985 (Some!8259 (tuple2!38577 (Token!10999 lt!1278979 (rule!8640 (_1!22422 lt!1278992)) lt!1278988 lt!1278980) (_2!22422 lt!1278992))))))))

(declare-fun lt!1278982 () BalanceConc!23296)

(declare-fun size!29580 (BalanceConc!23296) Int)

(assert (=> b!3670137 (= lt!1278988 (size!29580 lt!1278982))))

(declare-fun apply!9318 (TokenValueInjection!11520 BalanceConc!23296) TokenValue!6046)

(assert (=> b!3670137 (= lt!1278979 (apply!9318 (transformation!5816 (rule!8640 (_1!22422 lt!1278992))) lt!1278982))))

(declare-fun lt!1278974 () Unit!56244)

(declare-fun lemmaCharactersSize!861 (Token!10998) Unit!56244)

(assert (=> b!3670137 (= lt!1278974 (lemmaCharactersSize!861 (_1!22422 lt!1278992)))))

(declare-fun lt!1278987 () Unit!56244)

(declare-fun lemmaEqSameImage!999 (TokenValueInjection!11520 BalanceConc!23296 BalanceConc!23296) Unit!56244)

(declare-fun seqFromList!4365 (List!38827) BalanceConc!23296)

(assert (=> b!3670137 (= lt!1278987 (lemmaEqSameImage!999 (transformation!5816 (rule!8640 (_1!22422 lt!1278992))) lt!1278982 (seqFromList!4365 (originalCharacters!6530 (_1!22422 lt!1278992)))))))

(declare-fun lt!1278971 () Unit!56244)

(declare-fun lemmaSemiInverse!1565 (TokenValueInjection!11520 BalanceConc!23296) Unit!56244)

(assert (=> b!3670137 (= lt!1278971 (lemmaSemiInverse!1565 (transformation!5816 (rule!8640 (_1!22422 lt!1278992))) lt!1278982))))

(declare-fun b!3670138 () Bool)

(declare-fun e!2272504 () Bool)

(assert (=> b!3670138 (= e!2272484 (not e!2272504))))

(declare-fun res!1490491 () Bool)

(assert (=> b!3670138 (=> res!1490491 e!2272504)))

(declare-fun rule!403 () Rule!11432)

(declare-fun lt!1279003 () List!38827)

(declare-fun matchR!5144 (Regex!10575 List!38827) Bool)

(assert (=> b!3670138 (= res!1490491 (not (matchR!5144 (regex!5816 rule!403) lt!1279003)))))

(declare-datatypes ((LexerInterface!5405 0))(
  ( (LexerInterfaceExt!5402 (__x!24310 Int)) (Lexer!5403) )
))
(declare-fun thiss!23823 () LexerInterface!5405)

(declare-fun ruleValid!2080 (LexerInterface!5405 Rule!11432) Bool)

(assert (=> b!3670138 (ruleValid!2080 thiss!23823 rule!403)))

(declare-datatypes ((List!38829 0))(
  ( (Nil!38705) (Cons!38705 (h!44125 Rule!11432) (t!299624 List!38829)) )
))
(declare-fun rules!3307 () List!38829)

(declare-fun lt!1278996 () Unit!56244)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1234 (LexerInterface!5405 Rule!11432 List!38829) Unit!56244)

(assert (=> b!3670138 (= lt!1278996 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1234 thiss!23823 rule!403 rules!3307))))

(declare-fun b!3670139 () Bool)

(declare-fun e!2272474 () Unit!56244)

(declare-fun Unit!56248 () Unit!56244)

(assert (=> b!3670139 (= e!2272474 Unit!56248)))

(declare-fun b!3670140 () Bool)

(declare-fun res!1490478 () Bool)

(declare-fun e!2272497 () Bool)

(assert (=> b!3670140 (=> (not res!1490478) (not e!2272497))))

(declare-fun rulesInvariant!4802 (LexerInterface!5405 List!38829) Bool)

(assert (=> b!3670140 (= res!1490478 (rulesInvariant!4802 thiss!23823 rules!3307))))

(declare-fun b!3670141 () Bool)

(declare-fun res!1490496 () Bool)

(assert (=> b!3670141 (=> (not res!1490496) (not e!2272497))))

(declare-fun anOtherTypeRule!33 () Rule!11432)

(declare-fun contains!7700 (List!38829 Rule!11432) Bool)

(assert (=> b!3670141 (= res!1490496 (contains!7700 rules!3307 anOtherTypeRule!33))))

(declare-fun b!3670142 () Bool)

(assert (=> b!3670142 (= e!2272497 e!2272501)))

(declare-fun res!1490493 () Bool)

(assert (=> b!3670142 (=> (not res!1490493) (not e!2272501))))

(declare-fun isDefined!6492 (Option!8260) Bool)

(assert (=> b!3670142 (= res!1490493 (isDefined!6492 lt!1279009))))

(declare-fun maxPrefix!2939 (LexerInterface!5405 List!38829 List!38827) Option!8260)

(assert (=> b!3670142 (= lt!1279009 (maxPrefix!2939 thiss!23823 rules!3307 lt!1279003))))

(declare-fun lt!1279001 () BalanceConc!23296)

(declare-fun list!14374 (BalanceConc!23296) List!38827)

(assert (=> b!3670142 (= lt!1279003 (list!14374 lt!1279001))))

(declare-fun charsOf!3830 (Token!10998) BalanceConc!23296)

(assert (=> b!3670142 (= lt!1279001 (charsOf!3830 token!511))))

(declare-fun b!3670143 () Bool)

(declare-fun Unit!56249 () Unit!56244)

(assert (=> b!3670143 (= e!2272489 Unit!56249)))

(declare-fun lt!1278969 () Unit!56244)

(declare-fun lemmaGetSuffixOnListWithItSelfIsEmpty!196 (List!38827) Unit!56244)

(assert (=> b!3670143 (= lt!1278969 (lemmaGetSuffixOnListWithItSelfIsEmpty!196 lt!1279003))))

(declare-fun isEmpty!22970 (List!38827) Bool)

(declare-fun getSuffix!1732 (List!38827 List!38827) List!38827)

(assert (=> b!3670143 (isEmpty!22970 (getSuffix!1732 lt!1279003 lt!1279003))))

(declare-fun lt!1279006 () Unit!56244)

(declare-fun lemmaMaxPrefNoSmallerRuleMatches!224 (LexerInterface!5405 List!38829 Rule!11432 List!38827 List!38827 Rule!11432) Unit!56244)

(assert (=> b!3670143 (= lt!1279006 (lemmaMaxPrefNoSmallerRuleMatches!224 thiss!23823 rules!3307 rule!403 lt!1279003 lt!1279003 (rule!8640 (_1!22422 lt!1278992))))))

(declare-fun res!1490504 () Bool)

(assert (=> b!3670143 (= res!1490504 (not (matchR!5144 (regex!5816 (rule!8640 (_1!22422 lt!1278992))) lt!1279003)))))

(declare-fun e!2272499 () Bool)

(assert (=> b!3670143 (=> (not res!1490504) (not e!2272499))))

(assert (=> b!3670143 e!2272499))

(declare-fun b!3670144 () Bool)

(declare-fun res!1490497 () Bool)

(assert (=> b!3670144 (=> res!1490497 e!2272505)))

(assert (=> b!3670144 (= res!1490497 (not (matchR!5144 (regex!5816 (rule!8640 (_1!22422 lt!1278992))) lt!1278980)))))

(declare-fun bm!265667 () Bool)

(declare-fun usedCharacters!1028 (Regex!10575) List!38827)

(assert (=> bm!265667 (= call!265672 (usedCharacters!1028 (regex!5816 (rule!8640 (_1!22422 lt!1278992)))))))

(declare-fun b!3670145 () Bool)

(declare-fun e!2272491 () Bool)

(assert (=> b!3670145 (= e!2272491 e!2272505)))

(declare-fun res!1490479 () Bool)

(assert (=> b!3670145 (=> res!1490479 e!2272505)))

(declare-fun lt!1278997 () List!38827)

(declare-fun isPrefix!3179 (List!38827 List!38827) Bool)

(assert (=> b!3670145 (= res!1490479 (not (isPrefix!3179 lt!1278980 lt!1278997)))))

(declare-fun ++!9632 (List!38827 List!38827) List!38827)

(assert (=> b!3670145 (isPrefix!3179 lt!1278980 (++!9632 lt!1278980 (_2!22422 lt!1278992)))))

(declare-fun lt!1278991 () Unit!56244)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!2098 (List!38827 List!38827) Unit!56244)

(assert (=> b!3670145 (= lt!1278991 (lemmaConcatTwoListThenFirstIsPrefix!2098 lt!1278980 (_2!22422 lt!1278992)))))

(assert (=> b!3670145 (= lt!1278980 (list!14374 lt!1278982))))

(assert (=> b!3670145 (= lt!1278982 (charsOf!3830 (_1!22422 lt!1278992)))))

(declare-fun e!2272490 () Bool)

(assert (=> b!3670145 e!2272490))

(declare-fun res!1490487 () Bool)

(assert (=> b!3670145 (=> (not res!1490487) (not e!2272490))))

(declare-datatypes ((Option!8261 0))(
  ( (None!8260) (Some!8260 (v!38172 Rule!11432)) )
))
(declare-fun lt!1278994 () Option!8261)

(declare-fun isDefined!6493 (Option!8261) Bool)

(assert (=> b!3670145 (= res!1490487 (isDefined!6493 lt!1278994))))

(declare-fun getRuleFromTag!1420 (LexerInterface!5405 List!38829 String!43564) Option!8261)

(assert (=> b!3670145 (= lt!1278994 (getRuleFromTag!1420 thiss!23823 rules!3307 (tag!6606 (rule!8640 (_1!22422 lt!1278992)))))))

(declare-fun lt!1278977 () Unit!56244)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1420 (LexerInterface!5405 List!38829 List!38827 Token!10998) Unit!56244)

(assert (=> b!3670145 (= lt!1278977 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1420 thiss!23823 rules!3307 lt!1278997 (_1!22422 lt!1278992)))))

(assert (=> b!3670145 (= lt!1278992 (get!12778 lt!1278985))))

(declare-fun suffix!1395 () List!38827)

(declare-fun lt!1278967 () Unit!56244)

(declare-fun lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!1083 (LexerInterface!5405 List!38829 List!38827 List!38827) Unit!56244)

(assert (=> b!3670145 (= lt!1278967 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!1083 thiss!23823 rules!3307 lt!1279003 suffix!1395))))

(assert (=> b!3670145 (= lt!1278985 (maxPrefix!2939 thiss!23823 rules!3307 lt!1278997))))

(assert (=> b!3670145 (isPrefix!3179 lt!1279003 lt!1278997)))

(declare-fun lt!1278989 () Unit!56244)

(assert (=> b!3670145 (= lt!1278989 (lemmaConcatTwoListThenFirstIsPrefix!2098 lt!1279003 suffix!1395))))

(assert (=> b!3670145 (= lt!1278997 (++!9632 lt!1279003 suffix!1395))))

(declare-fun b!3670146 () Bool)

(declare-fun e!2272481 () Bool)

(declare-fun e!2272479 () Bool)

(declare-fun tp!1116851 () Bool)

(assert (=> b!3670146 (= e!2272481 (and e!2272479 tp!1116851))))

(declare-fun e!2272498 () Bool)

(declare-fun b!3670147 () Bool)

(declare-fun tp!1116850 () Bool)

(declare-fun e!2272476 () Bool)

(declare-fun inv!52183 (String!43564) Bool)

(declare-fun inv!52186 (TokenValueInjection!11520) Bool)

(assert (=> b!3670147 (= e!2272476 (and tp!1116850 (inv!52183 (tag!6606 anOtherTypeRule!33)) (inv!52186 (transformation!5816 anOtherTypeRule!33)) e!2272498))))

(declare-fun b!3670148 () Bool)

(declare-fun e!2272473 () Bool)

(declare-fun tp_is_empty!18233 () Bool)

(declare-fun tp!1116841 () Bool)

(assert (=> b!3670148 (= e!2272473 (and tp_is_empty!18233 tp!1116841))))

(declare-fun b!3670149 () Bool)

(declare-fun e!2272507 () Unit!56244)

(declare-fun Unit!56250 () Unit!56244)

(assert (=> b!3670149 (= e!2272507 Unit!56250)))

(declare-fun b!3670150 () Bool)

(declare-fun res!1490488 () Bool)

(assert (=> b!3670150 (=> (not res!1490488) (not e!2272497))))

(assert (=> b!3670150 (= res!1490488 (not (= (isSeparator!5816 anOtherTypeRule!33) (isSeparator!5816 rule!403))))))

(declare-fun b!3670151 () Bool)

(declare-fun e!2272492 () Bool)

(declare-fun e!2272471 () Bool)

(assert (=> b!3670151 (= e!2272492 e!2272471)))

(declare-fun res!1490480 () Bool)

(assert (=> b!3670151 (=> res!1490480 e!2272471)))

(declare-fun lt!1278976 () BalanceConc!23296)

(declare-fun size!29581 (List!38827) Int)

(assert (=> b!3670151 (= res!1490480 (not (= lt!1278985 (Some!8259 (tuple2!38577 (Token!10999 (apply!9318 (transformation!5816 (rule!8640 (_1!22422 lt!1278992))) lt!1278976) (rule!8640 (_1!22422 lt!1278992)) (size!29581 lt!1279003) lt!1279003) (getSuffix!1732 lt!1278997 lt!1279003))))))))

(declare-fun lt!1278983 () Unit!56244)

(assert (=> b!3670151 (= lt!1278983 (lemmaSemiInverse!1565 (transformation!5816 (rule!8640 (_1!22422 lt!1278992))) lt!1278976))))

(assert (=> b!3670151 (= lt!1278976 (seqFromList!4365 lt!1279003))))

(declare-fun b!3670152 () Bool)

(declare-fun e!2272485 () Bool)

(assert (=> b!3670152 (= e!2272483 e!2272485)))

(declare-fun res!1490502 () Bool)

(assert (=> b!3670152 (=> res!1490502 e!2272485)))

(declare-fun lt!1279004 () Option!8260)

(declare-fun lt!1278972 () List!38827)

(assert (=> b!3670152 (= res!1490502 (or (not (= lt!1278972 (_2!22422 lt!1278992))) (not (= lt!1279004 (Some!8259 (tuple2!38577 (_1!22422 lt!1278992) lt!1278972))))))))

(assert (=> b!3670152 (= (_2!22422 lt!1278992) lt!1278972)))

(declare-fun lt!1278970 () Unit!56244)

(declare-fun lemmaSamePrefixThenSameSuffix!1506 (List!38827 List!38827 List!38827 List!38827 List!38827) Unit!56244)

(assert (=> b!3670152 (= lt!1278970 (lemmaSamePrefixThenSameSuffix!1506 lt!1278980 (_2!22422 lt!1278992) lt!1278980 lt!1278972 lt!1278997))))

(assert (=> b!3670152 (= lt!1278972 (getSuffix!1732 lt!1278997 lt!1278980))))

(declare-fun lt!1278986 () TokenValue!6046)

(declare-fun lt!1278990 () Int)

(assert (=> b!3670152 (= lt!1279004 (Some!8259 (tuple2!38577 (Token!10999 lt!1278986 (rule!8640 (_1!22422 lt!1278992)) lt!1278990 lt!1278980) (_2!22422 lt!1278992))))))

(declare-fun maxPrefixOneRule!2077 (LexerInterface!5405 Rule!11432 List!38827) Option!8260)

(assert (=> b!3670152 (= lt!1279004 (maxPrefixOneRule!2077 thiss!23823 (rule!8640 (_1!22422 lt!1278992)) lt!1278997))))

(assert (=> b!3670152 (= lt!1278990 (size!29581 lt!1278980))))

(assert (=> b!3670152 (= lt!1278986 (apply!9318 (transformation!5816 (rule!8640 (_1!22422 lt!1278992))) (seqFromList!4365 lt!1278980)))))

(declare-fun lt!1278975 () Unit!56244)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1133 (LexerInterface!5405 List!38829 List!38827 List!38827 List!38827 Rule!11432) Unit!56244)

(assert (=> b!3670152 (= lt!1278975 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1133 thiss!23823 rules!3307 lt!1278980 lt!1278997 (_2!22422 lt!1278992) (rule!8640 (_1!22422 lt!1278992))))))

(declare-fun e!2272508 () Bool)

(assert (=> b!3670153 (= e!2272508 (and tp!1116844 tp!1116847))))

(declare-fun b!3670154 () Bool)

(declare-fun e!2272477 () Unit!56244)

(declare-fun e!2272487 () Unit!56244)

(assert (=> b!3670154 (= e!2272477 e!2272487)))

(declare-fun lt!1278964 () Unit!56244)

(declare-fun lemmaLongerPrefixContainsHeadOfSuffixOfSmallerPref!124 (List!38827 List!38827 List!38827 List!38827) Unit!56244)

(assert (=> b!3670154 (= lt!1278964 (lemmaLongerPrefixContainsHeadOfSuffixOfSmallerPref!124 lt!1279003 suffix!1395 lt!1278980 lt!1278997))))

(declare-fun lt!1278968 () C!21336)

(assert (=> b!3670154 (contains!7699 lt!1278980 lt!1278968)))

(declare-fun c!634576 () Bool)

(assert (=> b!3670154 (= c!634576 (isSeparator!5816 rule!403))))

(declare-fun b!3670155 () Bool)

(assert (=> b!3670155 (= e!2272471 (matchR!5144 (regex!5816 (rule!8640 (_1!22422 lt!1278992))) lt!1279003))))

(declare-fun call!265673 () Unit!56244)

(declare-fun bm!265668 () Bool)

(declare-fun lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!764 (Regex!10575 List!38827 C!21336) Unit!56244)

(assert (=> bm!265668 (= call!265673 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!764 (regex!5816 (rule!8640 (_1!22422 lt!1278992))) lt!1278980 lt!1278968))))

(declare-fun e!2272486 () Bool)

(declare-fun b!3670156 () Bool)

(declare-fun tp!1116838 () Bool)

(declare-fun e!2272495 () Bool)

(assert (=> b!3670156 (= e!2272486 (and tp!1116838 (inv!52183 (tag!6606 rule!403)) (inv!52186 (transformation!5816 rule!403)) e!2272495))))

(declare-fun b!3670157 () Bool)

(assert (=> b!3670157 false))

(declare-fun lt!1279011 () Unit!56244)

(declare-fun call!265671 () Unit!56244)

(assert (=> b!3670157 (= lt!1279011 call!265671)))

(assert (=> b!3670157 (not call!265674)))

(declare-fun lt!1279013 () Unit!56244)

(declare-fun lemmaNonSepRuleNotContainsCharContainedInASepRule!462 (LexerInterface!5405 List!38829 List!38829 Rule!11432 Rule!11432 C!21336) Unit!56244)

(assert (=> b!3670157 (= lt!1279013 (lemmaNonSepRuleNotContainsCharContainedInASepRule!462 thiss!23823 rules!3307 rules!3307 (rule!8640 (_1!22422 lt!1278992)) rule!403 lt!1278978))))

(declare-fun Unit!56251 () Unit!56244)

(assert (=> b!3670157 (= e!2272474 Unit!56251)))

(declare-fun bm!265669 () Bool)

(declare-fun call!265676 () Bool)

(declare-fun call!265675 () List!38827)

(assert (=> bm!265669 (= call!265676 (contains!7699 call!265675 lt!1278968))))

(declare-fun b!3670158 () Bool)

(declare-fun e!2272472 () Bool)

(assert (=> b!3670158 (= e!2272485 e!2272472)))

(declare-fun res!1490486 () Bool)

(assert (=> b!3670158 (=> res!1490486 e!2272472)))

(assert (=> b!3670158 (= res!1490486 (= (rule!8640 (_1!22422 lt!1278992)) (rule!8640 token!511)))))

(assert (=> b!3670158 (= lt!1278980 lt!1279003)))

(declare-fun lt!1279010 () Unit!56244)

(declare-fun lemmaIsPrefixSameLengthThenSameList!641 (List!38827 List!38827 List!38827) Unit!56244)

(assert (=> b!3670158 (= lt!1279010 (lemmaIsPrefixSameLengthThenSameList!641 lt!1278980 lt!1279003 lt!1278997))))

(declare-fun lt!1278962 () Unit!56244)

(declare-fun e!2272503 () Unit!56244)

(assert (=> b!3670158 (= lt!1278962 e!2272503)))

(declare-fun c!634572 () Bool)

(declare-fun lt!1278973 () Int)

(assert (=> b!3670158 (= c!634572 (< lt!1278988 lt!1278973))))

(declare-fun lt!1278999 () Unit!56244)

(assert (=> b!3670158 (= lt!1278999 e!2272477)))

(declare-fun c!634574 () Bool)

(assert (=> b!3670158 (= c!634574 (> lt!1278988 lt!1278973))))

(assert (=> b!3670158 (= lt!1278973 (size!29580 lt!1279001))))

(declare-fun lt!1279008 () Unit!56244)

(declare-fun e!2272500 () Unit!56244)

(assert (=> b!3670158 (= lt!1279008 e!2272500)))

(declare-fun c!634571 () Bool)

(assert (=> b!3670158 (= c!634571 (isSeparator!5816 rule!403))))

(declare-fun lt!1278993 () Unit!56244)

(declare-fun e!2272506 () Unit!56244)

(assert (=> b!3670158 (= lt!1278993 e!2272506)))

(declare-fun c!634570 () Bool)

(declare-fun lt!1278981 () List!38827)

(assert (=> b!3670158 (= c!634570 (not (contains!7699 lt!1278981 lt!1278978)))))

(declare-fun head!7856 (List!38827) C!21336)

(assert (=> b!3670158 (= lt!1278978 (head!7856 lt!1278980))))

(declare-fun b!3670159 () Bool)

(declare-fun res!1490490 () Bool)

(assert (=> b!3670159 (=> (not res!1490490) (not e!2272484))))

(assert (=> b!3670159 (= res!1490490 (= (rule!8640 token!511) rule!403))))

(declare-fun b!3670160 () Bool)

(declare-fun res!1490482 () Bool)

(assert (=> b!3670160 (=> res!1490482 e!2272492)))

(assert (=> b!3670160 (= res!1490482 (isEmpty!22970 lt!1279003))))

(declare-fun b!3670161 () Bool)

(declare-fun res!1490503 () Bool)

(assert (=> b!3670161 (=> (not res!1490503) (not e!2272497))))

(declare-fun isEmpty!22971 (List!38829) Bool)

(assert (=> b!3670161 (= res!1490503 (not (isEmpty!22971 rules!3307)))))

(declare-fun b!3670162 () Bool)

(declare-fun Unit!56252 () Unit!56244)

(assert (=> b!3670162 (= e!2272503 Unit!56252)))

(declare-fun e!2272480 () Bool)

(declare-fun e!2272494 () Bool)

(declare-fun tp!1116842 () Bool)

(declare-fun b!3670163 () Bool)

(declare-fun inv!21 (TokenValue!6046) Bool)

(assert (=> b!3670163 (= e!2272480 (and (inv!21 (value!186216 token!511)) e!2272494 tp!1116842))))

(declare-fun b!3670164 () Bool)

(declare-fun res!1490499 () Bool)

(assert (=> b!3670164 (=> res!1490499 e!2272491)))

(assert (=> b!3670164 (= res!1490499 (not (contains!7699 (usedCharacters!1028 (regex!5816 anOtherTypeRule!33)) lt!1278968)))))

(declare-fun bm!265670 () Bool)

(assert (=> bm!265670 (= call!265671 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!764 (regex!5816 (rule!8640 (_1!22422 lt!1278992))) lt!1278980 lt!1278978))))

(declare-fun b!3670165 () Bool)

(assert (=> b!3670165 false))

(declare-fun lt!1279000 () Unit!56244)

(assert (=> b!3670165 (= lt!1279000 call!265671)))

(assert (=> b!3670165 (not call!265674)))

(declare-fun lt!1279002 () Unit!56244)

(declare-fun lemmaSepRuleNotContainsCharContainedInANonSepRule!344 (LexerInterface!5405 List!38829 List!38829 Rule!11432 Rule!11432 C!21336) Unit!56244)

(assert (=> b!3670165 (= lt!1279002 (lemmaSepRuleNotContainsCharContainedInANonSepRule!344 thiss!23823 rules!3307 rules!3307 rule!403 (rule!8640 (_1!22422 lt!1278992)) lt!1278978))))

(declare-fun Unit!56253 () Unit!56244)

(assert (=> b!3670165 (= e!2272507 Unit!56253)))

(declare-fun b!3670166 () Bool)

(declare-fun res!1490494 () Bool)

(assert (=> b!3670166 (=> res!1490494 e!2272504)))

(assert (=> b!3670166 (= res!1490494 (isEmpty!22970 suffix!1395))))

(declare-fun b!3670167 () Bool)

(declare-fun Unit!56254 () Unit!56244)

(assert (=> b!3670167 (= e!2272477 Unit!56254)))

(declare-fun b!3670168 () Bool)

(declare-fun res!1490489 () Bool)

(assert (=> b!3670168 (=> res!1490489 e!2272491)))

(declare-fun sepAndNonSepRulesDisjointChars!1984 (List!38829 List!38829) Bool)

(assert (=> b!3670168 (= res!1490489 (not (sepAndNonSepRulesDisjointChars!1984 rules!3307 rules!3307)))))

(declare-fun b!3670169 () Bool)

(declare-fun Unit!56255 () Unit!56244)

(assert (=> b!3670169 (= e!2272506 Unit!56255)))

(assert (=> b!3670170 (= e!2272498 (and tp!1116846 tp!1116840))))

(declare-fun b!3670171 () Bool)

(assert (=> b!3670171 (= e!2272499 false)))

(declare-fun b!3670172 () Bool)

(declare-fun Unit!56256 () Unit!56244)

(assert (=> b!3670172 (= e!2272506 Unit!56256)))

(declare-fun lt!1279005 () Unit!56244)

(assert (=> b!3670172 (= lt!1279005 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!764 (regex!5816 rule!403) lt!1279003 lt!1278978))))

(assert (=> b!3670172 false))

(declare-fun b!3670173 () Bool)

(assert (=> b!3670173 (= e!2272500 e!2272507)))

(declare-fun c!634575 () Bool)

(assert (=> b!3670173 (= c!634575 (isSeparator!5816 (rule!8640 (_1!22422 lt!1278992))))))

(declare-fun b!3670174 () Bool)

(declare-fun Unit!56257 () Unit!56244)

(assert (=> b!3670174 (= e!2272503 Unit!56257)))

(declare-fun lt!1279014 () Unit!56244)

(declare-fun lemmaMaxPrefixOutputsMaxPrefix!358 (LexerInterface!5405 List!38829 Rule!11432 List!38827 List!38827 List!38827 Rule!11432) Unit!56244)

(assert (=> b!3670174 (= lt!1279014 (lemmaMaxPrefixOutputsMaxPrefix!358 thiss!23823 rules!3307 (rule!8640 (_1!22422 lt!1278992)) lt!1278980 lt!1278997 lt!1279003 rule!403))))

(assert (=> b!3670174 false))

(declare-fun b!3670175 () Bool)

(declare-fun res!1490481 () Bool)

(assert (=> b!3670175 (=> (not res!1490481) (not e!2272497))))

(assert (=> b!3670175 (= res!1490481 (contains!7700 rules!3307 rule!403))))

(declare-fun b!3670176 () Bool)

(declare-fun e!2272488 () Bool)

(assert (=> b!3670176 (= e!2272490 e!2272488)))

(declare-fun res!1490500 () Bool)

(assert (=> b!3670176 (=> (not res!1490500) (not e!2272488))))

(declare-fun lt!1278961 () Rule!11432)

(assert (=> b!3670176 (= res!1490500 (matchR!5144 (regex!5816 lt!1278961) (list!14374 (charsOf!3830 (_1!22422 lt!1278992)))))))

(declare-fun get!12779 (Option!8261) Rule!11432)

(assert (=> b!3670176 (= lt!1278961 (get!12779 lt!1278994))))

(declare-fun bm!265671 () Bool)

(assert (=> bm!265671 (= call!265675 (usedCharacters!1028 (regex!5816 (rule!8640 (_1!22422 lt!1278992)))))))

(declare-fun b!3670177 () Bool)

(assert (=> b!3670177 (= e!2272488 (= (rule!8640 (_1!22422 lt!1278992)) lt!1278961))))

(declare-fun b!3670178 () Bool)

(declare-fun res!1490501 () Bool)

(assert (=> b!3670178 (=> res!1490501 e!2272492)))

(assert (=> b!3670178 (= res!1490501 (not (contains!7700 rules!3307 (rule!8640 (_1!22422 lt!1278992)))))))

(declare-fun b!3670179 () Bool)

(assert (=> b!3670179 (= e!2272504 e!2272491)))

(declare-fun res!1490485 () Bool)

(assert (=> b!3670179 (=> res!1490485 e!2272491)))

(assert (=> b!3670179 (= res!1490485 (contains!7699 lt!1278981 lt!1278968))))

(assert (=> b!3670179 (= lt!1278968 (head!7856 suffix!1395))))

(assert (=> b!3670179 (= lt!1278981 (usedCharacters!1028 (regex!5816 rule!403)))))

(declare-fun b!3670180 () Bool)

(assert (=> b!3670180 false))

(declare-fun lt!1279012 () Unit!56244)

(assert (=> b!3670180 (= lt!1279012 call!265673)))

(assert (=> b!3670180 (not call!265676)))

(declare-fun lt!1278963 () Unit!56244)

(assert (=> b!3670180 (= lt!1278963 (lemmaSepRuleNotContainsCharContainedInANonSepRule!344 thiss!23823 rules!3307 rules!3307 anOtherTypeRule!33 (rule!8640 (_1!22422 lt!1278992)) lt!1278968))))

(declare-fun Unit!56258 () Unit!56244)

(assert (=> b!3670180 (= e!2272487 Unit!56258)))

(declare-fun b!3670181 () Bool)

(declare-fun tp!1116848 () Bool)

(declare-fun e!2272475 () Bool)

(assert (=> b!3670181 (= e!2272494 (and tp!1116848 (inv!52183 (tag!6606 (rule!8640 token!511))) (inv!52186 (transformation!5816 (rule!8640 token!511))) e!2272475))))

(declare-fun b!3670182 () Bool)

(declare-fun tp!1116849 () Bool)

(assert (=> b!3670182 (= e!2272479 (and tp!1116849 (inv!52183 (tag!6606 (h!44125 rules!3307))) (inv!52186 (transformation!5816 (h!44125 rules!3307))) e!2272508))))

(declare-fun b!3670183 () Bool)

(declare-fun res!1490483 () Bool)

(assert (=> b!3670183 (=> (not res!1490483) (not e!2272484))))

(assert (=> b!3670183 (= res!1490483 (isEmpty!22970 (_2!22422 lt!1278998)))))

(declare-fun b!3670184 () Bool)

(assert (=> b!3670184 false))

(declare-fun lt!1278995 () Unit!56244)

(assert (=> b!3670184 (= lt!1278995 call!265673)))

(assert (=> b!3670184 (not call!265676)))

(declare-fun lt!1278984 () Unit!56244)

(assert (=> b!3670184 (= lt!1278984 (lemmaNonSepRuleNotContainsCharContainedInASepRule!462 thiss!23823 rules!3307 rules!3307 (rule!8640 (_1!22422 lt!1278992)) anOtherTypeRule!33 lt!1278968))))

(declare-fun Unit!56259 () Unit!56244)

(assert (=> b!3670184 (= e!2272487 Unit!56259)))

(assert (=> b!3670185 (= e!2272495 (and tp!1116852 tp!1116839))))

(assert (=> b!3670186 (= e!2272475 (and tp!1116843 tp!1116845))))

(declare-fun b!3670187 () Bool)

(assert (=> b!3670187 (= e!2272472 e!2272492)))

(declare-fun res!1490498 () Bool)

(assert (=> b!3670187 (=> res!1490498 e!2272492)))

(declare-fun lt!1278965 () Int)

(declare-fun lt!1278966 () Int)

(assert (=> b!3670187 (= res!1490498 (>= lt!1278965 lt!1278966))))

(declare-fun lt!1279007 () Unit!56244)

(assert (=> b!3670187 (= lt!1279007 e!2272489)))

(declare-fun c!634577 () Bool)

(assert (=> b!3670187 (= c!634577 (< lt!1278966 lt!1278965))))

(declare-fun getIndex!484 (List!38829 Rule!11432) Int)

(assert (=> b!3670187 (= lt!1278965 (getIndex!484 rules!3307 rule!403))))

(assert (=> b!3670187 (= lt!1278966 (getIndex!484 rules!3307 (rule!8640 (_1!22422 lt!1278992))))))

(declare-fun res!1490495 () Bool)

(assert (=> start!344006 (=> (not res!1490495) (not e!2272497))))

(get-info :version)

(assert (=> start!344006 (= res!1490495 ((_ is Lexer!5403) thiss!23823))))

(assert (=> start!344006 e!2272497))

(assert (=> start!344006 e!2272481))

(assert (=> start!344006 e!2272473))

(assert (=> start!344006 true))

(declare-fun inv!52187 (Token!10998) Bool)

(assert (=> start!344006 (and (inv!52187 token!511) e!2272480)))

(assert (=> start!344006 e!2272486))

(assert (=> start!344006 e!2272476))

(declare-fun b!3670188 () Bool)

(assert (=> b!3670188 (= e!2272500 e!2272474)))

(declare-fun c!634573 () Bool)

(assert (=> b!3670188 (= c!634573 (not (isSeparator!5816 (rule!8640 (_1!22422 lt!1278992)))))))

(assert (= (and start!344006 res!1490495) b!3670161))

(assert (= (and b!3670161 res!1490503) b!3670140))

(assert (= (and b!3670140 res!1490478) b!3670175))

(assert (= (and b!3670175 res!1490481) b!3670141))

(assert (= (and b!3670141 res!1490496) b!3670150))

(assert (= (and b!3670150 res!1490488) b!3670142))

(assert (= (and b!3670142 res!1490493) b!3670136))

(assert (= (and b!3670136 res!1490484) b!3670183))

(assert (= (and b!3670183 res!1490483) b!3670159))

(assert (= (and b!3670159 res!1490490) b!3670138))

(assert (= (and b!3670138 (not res!1490491)) b!3670166))

(assert (= (and b!3670166 (not res!1490494)) b!3670179))

(assert (= (and b!3670179 (not res!1490485)) b!3670164))

(assert (= (and b!3670164 (not res!1490499)) b!3670168))

(assert (= (and b!3670168 (not res!1490489)) b!3670145))

(assert (= (and b!3670145 res!1490487) b!3670176))

(assert (= (and b!3670176 res!1490500) b!3670177))

(assert (= (and b!3670145 (not res!1490479)) b!3670144))

(assert (= (and b!3670144 (not res!1490497)) b!3670137))

(assert (= (and b!3670137 (not res!1490492)) b!3670152))

(assert (= (and b!3670152 (not res!1490502)) b!3670158))

(assert (= (and b!3670158 c!634570) b!3670172))

(assert (= (and b!3670158 (not c!634570)) b!3670169))

(assert (= (and b!3670158 c!634571) b!3670188))

(assert (= (and b!3670158 (not c!634571)) b!3670173))

(assert (= (and b!3670188 c!634573) b!3670157))

(assert (= (and b!3670188 (not c!634573)) b!3670139))

(assert (= (and b!3670173 c!634575) b!3670165))

(assert (= (and b!3670173 (not c!634575)) b!3670149))

(assert (= (or b!3670157 b!3670165) bm!265670))

(assert (= (or b!3670157 b!3670165) bm!265667))

(assert (= (or b!3670157 b!3670165) bm!265666))

(assert (= (and b!3670158 c!634574) b!3670154))

(assert (= (and b!3670158 (not c!634574)) b!3670167))

(assert (= (and b!3670154 c!634576) b!3670180))

(assert (= (and b!3670154 (not c!634576)) b!3670184))

(assert (= (or b!3670180 b!3670184) bm!265668))

(assert (= (or b!3670180 b!3670184) bm!265671))

(assert (= (or b!3670180 b!3670184) bm!265669))

(assert (= (and b!3670158 c!634572) b!3670174))

(assert (= (and b!3670158 (not c!634572)) b!3670162))

(assert (= (and b!3670158 (not res!1490486)) b!3670187))

(assert (= (and b!3670187 c!634577) b!3670143))

(assert (= (and b!3670187 (not c!634577)) b!3670135))

(assert (= (and b!3670143 res!1490504) b!3670171))

(assert (= (and b!3670187 (not res!1490498)) b!3670178))

(assert (= (and b!3670178 (not res!1490501)) b!3670160))

(assert (= (and b!3670160 (not res!1490482)) b!3670151))

(assert (= (and b!3670151 (not res!1490480)) b!3670155))

(assert (= b!3670182 b!3670153))

(assert (= b!3670146 b!3670182))

(assert (= (and start!344006 ((_ is Cons!38705) rules!3307)) b!3670146))

(assert (= (and start!344006 ((_ is Cons!38703) suffix!1395)) b!3670148))

(assert (= b!3670181 b!3670186))

(assert (= b!3670163 b!3670181))

(assert (= start!344006 b!3670163))

(assert (= b!3670156 b!3670185))

(assert (= start!344006 b!3670156))

(assert (= b!3670147 b!3670170))

(assert (= start!344006 b!3670147))

(declare-fun m!4178631 () Bool)

(assert (=> b!3670179 m!4178631))

(declare-fun m!4178633 () Bool)

(assert (=> b!3670179 m!4178633))

(declare-fun m!4178635 () Bool)

(assert (=> b!3670179 m!4178635))

(declare-fun m!4178637 () Bool)

(assert (=> b!3670176 m!4178637))

(assert (=> b!3670176 m!4178637))

(declare-fun m!4178639 () Bool)

(assert (=> b!3670176 m!4178639))

(assert (=> b!3670176 m!4178639))

(declare-fun m!4178641 () Bool)

(assert (=> b!3670176 m!4178641))

(declare-fun m!4178643 () Bool)

(assert (=> b!3670176 m!4178643))

(declare-fun m!4178645 () Bool)

(assert (=> b!3670151 m!4178645))

(declare-fun m!4178647 () Bool)

(assert (=> b!3670151 m!4178647))

(declare-fun m!4178649 () Bool)

(assert (=> b!3670151 m!4178649))

(declare-fun m!4178651 () Bool)

(assert (=> b!3670151 m!4178651))

(declare-fun m!4178653 () Bool)

(assert (=> b!3670151 m!4178653))

(declare-fun m!4178655 () Bool)

(assert (=> b!3670160 m!4178655))

(declare-fun m!4178657 () Bool)

(assert (=> b!3670181 m!4178657))

(declare-fun m!4178659 () Bool)

(assert (=> b!3670181 m!4178659))

(declare-fun m!4178661 () Bool)

(assert (=> b!3670137 m!4178661))

(assert (=> b!3670137 m!4178661))

(declare-fun m!4178663 () Bool)

(assert (=> b!3670137 m!4178663))

(declare-fun m!4178665 () Bool)

(assert (=> b!3670137 m!4178665))

(declare-fun m!4178667 () Bool)

(assert (=> b!3670137 m!4178667))

(declare-fun m!4178669 () Bool)

(assert (=> b!3670137 m!4178669))

(declare-fun m!4178671 () Bool)

(assert (=> b!3670137 m!4178671))

(declare-fun m!4178673 () Bool)

(assert (=> b!3670172 m!4178673))

(declare-fun m!4178675 () Bool)

(assert (=> bm!265671 m!4178675))

(declare-fun m!4178677 () Bool)

(assert (=> b!3670187 m!4178677))

(declare-fun m!4178679 () Bool)

(assert (=> b!3670187 m!4178679))

(declare-fun m!4178681 () Bool)

(assert (=> b!3670138 m!4178681))

(declare-fun m!4178683 () Bool)

(assert (=> b!3670138 m!4178683))

(declare-fun m!4178685 () Bool)

(assert (=> b!3670138 m!4178685))

(declare-fun m!4178687 () Bool)

(assert (=> b!3670164 m!4178687))

(assert (=> b!3670164 m!4178687))

(declare-fun m!4178689 () Bool)

(assert (=> b!3670164 m!4178689))

(declare-fun m!4178691 () Bool)

(assert (=> b!3670166 m!4178691))

(declare-fun m!4178693 () Bool)

(assert (=> b!3670140 m!4178693))

(declare-fun m!4178695 () Bool)

(assert (=> b!3670165 m!4178695))

(declare-fun m!4178697 () Bool)

(assert (=> b!3670163 m!4178697))

(declare-fun m!4178699 () Bool)

(assert (=> b!3670161 m!4178699))

(declare-fun m!4178701 () Bool)

(assert (=> b!3670182 m!4178701))

(declare-fun m!4178703 () Bool)

(assert (=> b!3670182 m!4178703))

(declare-fun m!4178705 () Bool)

(assert (=> b!3670154 m!4178705))

(declare-fun m!4178707 () Bool)

(assert (=> b!3670154 m!4178707))

(declare-fun m!4178709 () Bool)

(assert (=> b!3670178 m!4178709))

(declare-fun m!4178711 () Bool)

(assert (=> b!3670145 m!4178711))

(assert (=> b!3670145 m!4178637))

(declare-fun m!4178713 () Bool)

(assert (=> b!3670145 m!4178713))

(declare-fun m!4178715 () Bool)

(assert (=> b!3670145 m!4178715))

(declare-fun m!4178717 () Bool)

(assert (=> b!3670145 m!4178717))

(declare-fun m!4178719 () Bool)

(assert (=> b!3670145 m!4178719))

(declare-fun m!4178721 () Bool)

(assert (=> b!3670145 m!4178721))

(declare-fun m!4178723 () Bool)

(assert (=> b!3670145 m!4178723))

(declare-fun m!4178725 () Bool)

(assert (=> b!3670145 m!4178725))

(declare-fun m!4178727 () Bool)

(assert (=> b!3670145 m!4178727))

(declare-fun m!4178729 () Bool)

(assert (=> b!3670145 m!4178729))

(declare-fun m!4178731 () Bool)

(assert (=> b!3670145 m!4178731))

(declare-fun m!4178733 () Bool)

(assert (=> b!3670145 m!4178733))

(assert (=> b!3670145 m!4178723))

(declare-fun m!4178735 () Bool)

(assert (=> b!3670145 m!4178735))

(declare-fun m!4178737 () Bool)

(assert (=> b!3670145 m!4178737))

(assert (=> bm!265667 m!4178675))

(declare-fun m!4178739 () Bool)

(assert (=> b!3670180 m!4178739))

(declare-fun m!4178741 () Bool)

(assert (=> b!3670184 m!4178741))

(declare-fun m!4178743 () Bool)

(assert (=> bm!265669 m!4178743))

(declare-fun m!4178745 () Bool)

(assert (=> bm!265668 m!4178745))

(declare-fun m!4178747 () Bool)

(assert (=> b!3670143 m!4178747))

(declare-fun m!4178749 () Bool)

(assert (=> b!3670143 m!4178749))

(declare-fun m!4178751 () Bool)

(assert (=> b!3670143 m!4178751))

(declare-fun m!4178753 () Bool)

(assert (=> b!3670143 m!4178753))

(assert (=> b!3670143 m!4178751))

(declare-fun m!4178755 () Bool)

(assert (=> b!3670143 m!4178755))

(declare-fun m!4178757 () Bool)

(assert (=> bm!265670 m!4178757))

(declare-fun m!4178759 () Bool)

(assert (=> b!3670144 m!4178759))

(declare-fun m!4178761 () Bool)

(assert (=> b!3670141 m!4178761))

(declare-fun m!4178763 () Bool)

(assert (=> start!344006 m!4178763))

(assert (=> b!3670155 m!4178749))

(declare-fun m!4178765 () Bool)

(assert (=> bm!265666 m!4178765))

(declare-fun m!4178767 () Bool)

(assert (=> b!3670174 m!4178767))

(declare-fun m!4178769 () Bool)

(assert (=> b!3670136 m!4178769))

(declare-fun m!4178771 () Bool)

(assert (=> b!3670156 m!4178771))

(declare-fun m!4178773 () Bool)

(assert (=> b!3670156 m!4178773))

(declare-fun m!4178775 () Bool)

(assert (=> b!3670175 m!4178775))

(declare-fun m!4178777 () Bool)

(assert (=> b!3670152 m!4178777))

(declare-fun m!4178779 () Bool)

(assert (=> b!3670152 m!4178779))

(declare-fun m!4178781 () Bool)

(assert (=> b!3670152 m!4178781))

(declare-fun m!4178783 () Bool)

(assert (=> b!3670152 m!4178783))

(declare-fun m!4178785 () Bool)

(assert (=> b!3670152 m!4178785))

(declare-fun m!4178787 () Bool)

(assert (=> b!3670152 m!4178787))

(assert (=> b!3670152 m!4178779))

(declare-fun m!4178789 () Bool)

(assert (=> b!3670152 m!4178789))

(declare-fun m!4178791 () Bool)

(assert (=> b!3670183 m!4178791))

(declare-fun m!4178793 () Bool)

(assert (=> b!3670142 m!4178793))

(declare-fun m!4178795 () Bool)

(assert (=> b!3670142 m!4178795))

(declare-fun m!4178797 () Bool)

(assert (=> b!3670142 m!4178797))

(declare-fun m!4178799 () Bool)

(assert (=> b!3670142 m!4178799))

(declare-fun m!4178801 () Bool)

(assert (=> b!3670158 m!4178801))

(declare-fun m!4178803 () Bool)

(assert (=> b!3670158 m!4178803))

(declare-fun m!4178805 () Bool)

(assert (=> b!3670158 m!4178805))

(declare-fun m!4178807 () Bool)

(assert (=> b!3670158 m!4178807))

(declare-fun m!4178809 () Bool)

(assert (=> b!3670157 m!4178809))

(declare-fun m!4178811 () Bool)

(assert (=> b!3670147 m!4178811))

(declare-fun m!4178813 () Bool)

(assert (=> b!3670147 m!4178813))

(declare-fun m!4178815 () Bool)

(assert (=> b!3670168 m!4178815))

(check-sat b_and!273321 (not b!3670183) (not b!3670142) (not b!3670160) (not b!3670163) (not b!3670137) (not b_next!97659) b_and!273315 (not bm!265666) (not b!3670168) tp_is_empty!18233 (not b!3670151) (not b_next!97667) (not b!3670157) (not b!3670140) (not b!3670144) (not b_next!97671) (not b_next!97657) (not b!3670175) (not b!3670146) (not b!3670154) (not b_next!97663) (not b!3670165) (not bm!265669) (not b!3670147) (not b!3670143) (not b!3670145) (not b!3670156) (not b!3670172) b_and!273313 (not b!3670166) b_and!273319 (not b!3670176) (not b!3670148) (not b!3670155) (not b!3670158) (not start!344006) (not b!3670184) (not b!3670178) (not b_next!97661) b_and!273309 (not b!3670182) (not b_next!97665) (not b!3670161) (not bm!265667) b_and!273307 (not b!3670164) (not b!3670187) (not b!3670152) b_and!273317 (not b!3670174) b_and!273311 (not b!3670181) (not bm!265668) (not b!3670179) (not b!3670138) (not b_next!97669) (not bm!265670) (not b!3670136) (not b!3670180) (not b!3670141) (not bm!265671))
(check-sat b_and!273315 b_and!273321 (not b_next!97667) (not b_next!97671) (not b_next!97657) (not b_next!97663) b_and!273313 b_and!273319 (not b_next!97665) b_and!273307 b_and!273317 b_and!273311 (not b_next!97659) (not b_next!97669) (not b_next!97661) b_and!273309)
