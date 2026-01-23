; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!341522 () Bool)

(assert start!341522)

(declare-fun b!3652089 () Bool)

(declare-fun b_free!96113 () Bool)

(declare-fun b_next!96817 () Bool)

(assert (=> b!3652089 (= b_free!96113 (not b_next!96817))))

(declare-fun tp!1113282 () Bool)

(declare-fun b_and!270235 () Bool)

(assert (=> b!3652089 (= tp!1113282 b_and!270235)))

(declare-fun b_free!96115 () Bool)

(declare-fun b_next!96819 () Bool)

(assert (=> b!3652089 (= b_free!96115 (not b_next!96819))))

(declare-fun tp!1113277 () Bool)

(declare-fun b_and!270237 () Bool)

(assert (=> b!3652089 (= tp!1113277 b_and!270237)))

(declare-fun b!3652094 () Bool)

(declare-fun b_free!96117 () Bool)

(declare-fun b_next!96821 () Bool)

(assert (=> b!3652094 (= b_free!96117 (not b_next!96821))))

(declare-fun tp!1113268 () Bool)

(declare-fun b_and!270239 () Bool)

(assert (=> b!3652094 (= tp!1113268 b_and!270239)))

(declare-fun b_free!96119 () Bool)

(declare-fun b_next!96823 () Bool)

(assert (=> b!3652094 (= b_free!96119 (not b_next!96823))))

(declare-fun tp!1113279 () Bool)

(declare-fun b_and!270241 () Bool)

(assert (=> b!3652094 (= tp!1113279 b_and!270241)))

(declare-fun b!3652093 () Bool)

(declare-fun b_free!96121 () Bool)

(declare-fun b_next!96825 () Bool)

(assert (=> b!3652093 (= b_free!96121 (not b_next!96825))))

(declare-fun tp!1113278 () Bool)

(declare-fun b_and!270243 () Bool)

(assert (=> b!3652093 (= tp!1113278 b_and!270243)))

(declare-fun b_free!96123 () Bool)

(declare-fun b_next!96827 () Bool)

(assert (=> b!3652093 (= b_free!96123 (not b_next!96827))))

(declare-fun tp!1113274 () Bool)

(declare-fun b_and!270245 () Bool)

(assert (=> b!3652093 (= tp!1113274 b_and!270245)))

(declare-fun b!3652088 () Bool)

(declare-fun b_free!96125 () Bool)

(declare-fun b_next!96829 () Bool)

(assert (=> b!3652088 (= b_free!96125 (not b_next!96829))))

(declare-fun tp!1113272 () Bool)

(declare-fun b_and!270247 () Bool)

(assert (=> b!3652088 (= tp!1113272 b_and!270247)))

(declare-fun b_free!96127 () Bool)

(declare-fun b_next!96831 () Bool)

(assert (=> b!3652088 (= b_free!96127 (not b_next!96831))))

(declare-fun tp!1113281 () Bool)

(declare-fun b_and!270249 () Bool)

(assert (=> b!3652088 (= tp!1113281 b_and!270249)))

(declare-fun b!3652069 () Bool)

(declare-fun e!2261141 () Bool)

(declare-fun e!2261160 () Bool)

(assert (=> b!3652069 (= e!2261141 e!2261160)))

(declare-fun res!1481754 () Bool)

(assert (=> b!3652069 (=> (not res!1481754) (not e!2261160))))

(declare-datatypes ((List!38641 0))(
  ( (Nil!38517) (Cons!38517 (h!43937 (_ BitVec 16)) (t!297624 List!38641)) )
))
(declare-datatypes ((TokenValue!6000 0))(
  ( (FloatLiteralValue!12000 (text!42445 List!38641)) (TokenValueExt!5999 (__x!24217 Int)) (Broken!30000 (value!184879 List!38641)) (Object!6123) (End!6000) (Def!6000) (Underscore!6000) (Match!6000) (Else!6000) (Error!6000) (Case!6000) (If!6000) (Extends!6000) (Abstract!6000) (Class!6000) (Val!6000) (DelimiterValue!12000 (del!6060 List!38641)) (KeywordValue!6006 (value!184880 List!38641)) (CommentValue!12000 (value!184881 List!38641)) (WhitespaceValue!12000 (value!184882 List!38641)) (IndentationValue!6000 (value!184883 List!38641)) (String!43333) (Int32!6000) (Broken!30001 (value!184884 List!38641)) (Boolean!6001) (Unit!55547) (OperatorValue!6003 (op!6060 List!38641)) (IdentifierValue!12000 (value!184885 List!38641)) (IdentifierValue!12001 (value!184886 List!38641)) (WhitespaceValue!12001 (value!184887 List!38641)) (True!12000) (False!12000) (Broken!30002 (value!184888 List!38641)) (Broken!30003 (value!184889 List!38641)) (True!12001) (RightBrace!6000) (RightBracket!6000) (Colon!6000) (Null!6000) (Comma!6000) (LeftBracket!6000) (False!12001) (LeftBrace!6000) (ImaginaryLiteralValue!6000 (text!42446 List!38641)) (StringLiteralValue!18000 (value!184890 List!38641)) (EOFValue!6000 (value!184891 List!38641)) (IdentValue!6000 (value!184892 List!38641)) (DelimiterValue!12001 (value!184893 List!38641)) (DedentValue!6000 (value!184894 List!38641)) (NewLineValue!6000 (value!184895 List!38641)) (IntegerValue!18000 (value!184896 (_ BitVec 32)) (text!42447 List!38641)) (IntegerValue!18001 (value!184897 Int) (text!42448 List!38641)) (Times!6000) (Or!6000) (Equal!6000) (Minus!6000) (Broken!30004 (value!184898 List!38641)) (And!6000) (Div!6000) (LessEqual!6000) (Mod!6000) (Concat!16529) (Not!6000) (Plus!6000) (SpaceValue!6000 (value!184899 List!38641)) (IntegerValue!18002 (value!184900 Int) (text!42449 List!38641)) (StringLiteralValue!18001 (text!42450 List!38641)) (FloatLiteralValue!12001 (text!42451 List!38641)) (BytesLiteralValue!6000 (value!184901 List!38641)) (CommentValue!12001 (value!184902 List!38641)) (StringLiteralValue!18002 (value!184903 List!38641)) (ErrorTokenValue!6000 (msg!6061 List!38641)) )
))
(declare-datatypes ((String!43334 0))(
  ( (String!43335 (value!184904 String)) )
))
(declare-datatypes ((C!21244 0))(
  ( (C!21245 (val!12670 Int)) )
))
(declare-datatypes ((Regex!10529 0))(
  ( (ElementMatch!10529 (c!631208 C!21244)) (Concat!16530 (regOne!21570 Regex!10529) (regTwo!21570 Regex!10529)) (EmptyExpr!10529) (Star!10529 (reg!10858 Regex!10529)) (EmptyLang!10529) (Union!10529 (regOne!21571 Regex!10529) (regTwo!21571 Regex!10529)) )
))
(declare-datatypes ((List!38642 0))(
  ( (Nil!38518) (Cons!38518 (h!43938 C!21244) (t!297625 List!38642)) )
))
(declare-datatypes ((IArray!23547 0))(
  ( (IArray!23548 (innerList!11831 List!38642)) )
))
(declare-datatypes ((Conc!11771 0))(
  ( (Node!11771 (left!30066 Conc!11771) (right!30396 Conc!11771) (csize!23772 Int) (cheight!11982 Int)) (Leaf!18267 (xs!14973 IArray!23547) (csize!23773 Int)) (Empty!11771) )
))
(declare-datatypes ((BalanceConc!23156 0))(
  ( (BalanceConc!23157 (c!631209 Conc!11771)) )
))
(declare-datatypes ((TokenValueInjection!11428 0))(
  ( (TokenValueInjection!11429 (toValue!8062 Int) (toChars!7921 Int)) )
))
(declare-datatypes ((Rule!11340 0))(
  ( (Rule!11341 (regex!5770 Regex!10529) (tag!6536 String!43334) (isSeparator!5770 Bool) (transformation!5770 TokenValueInjection!11428)) )
))
(declare-datatypes ((Token!10906 0))(
  ( (Token!10907 (value!184905 TokenValue!6000) (rule!8570 Rule!11340) (size!29415 Int) (originalCharacters!6484 List!38642)) )
))
(declare-datatypes ((tuple2!38384 0))(
  ( (tuple2!38385 (_1!22326 Token!10906) (_2!22326 List!38642)) )
))
(declare-fun lt!1267387 () tuple2!38384)

(declare-fun token!511 () Token!10906)

(assert (=> b!3652069 (= res!1481754 (= (_1!22326 lt!1267387) token!511))))

(declare-datatypes ((Option!8168 0))(
  ( (None!8167) (Some!8167 (v!38031 tuple2!38384)) )
))
(declare-fun lt!1267392 () Option!8168)

(declare-fun get!12663 (Option!8168) tuple2!38384)

(assert (=> b!3652069 (= lt!1267387 (get!12663 lt!1267392))))

(declare-fun b!3652070 () Bool)

(declare-datatypes ((Unit!55548 0))(
  ( (Unit!55549) )
))
(declare-fun e!2261159 () Unit!55548)

(declare-fun e!2261147 () Unit!55548)

(assert (=> b!3652070 (= e!2261159 e!2261147)))

(declare-fun c!631206 () Bool)

(declare-fun lt!1267378 () tuple2!38384)

(assert (=> b!3652070 (= c!631206 (isSeparator!5770 (rule!8570 (_1!22326 lt!1267378))))))

(declare-fun b!3652071 () Bool)

(declare-fun res!1481762 () Bool)

(declare-fun e!2261136 () Bool)

(assert (=> b!3652071 (=> res!1481762 e!2261136)))

(declare-fun suffix!1395 () List!38642)

(declare-fun isEmpty!22828 (List!38642) Bool)

(assert (=> b!3652071 (= res!1481762 (isEmpty!22828 suffix!1395))))

(declare-fun b!3652073 () Bool)

(declare-fun e!2261146 () Unit!55548)

(declare-fun Unit!55550 () Unit!55548)

(assert (=> b!3652073 (= e!2261146 Unit!55550)))

(declare-fun lt!1267377 () List!38642)

(declare-fun lt!1267379 () Unit!55548)

(declare-fun rule!403 () Rule!11340)

(declare-fun lt!1267365 () C!21244)

(declare-fun lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!718 (Regex!10529 List!38642 C!21244) Unit!55548)

(assert (=> b!3652073 (= lt!1267379 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!718 (regex!5770 rule!403) lt!1267377 lt!1267365))))

(assert (=> b!3652073 false))

(declare-fun b!3652074 () Bool)

(declare-fun e!2261153 () Bool)

(declare-fun e!2261156 () Bool)

(declare-fun tp!1113276 () Bool)

(assert (=> b!3652074 (= e!2261153 (and e!2261156 tp!1113276))))

(declare-fun b!3652075 () Bool)

(declare-fun res!1481756 () Bool)

(declare-fun e!2261135 () Bool)

(assert (=> b!3652075 (=> res!1481756 e!2261135)))

(declare-fun lt!1267382 () List!38642)

(declare-fun matchR!5098 (Regex!10529 List!38642) Bool)

(assert (=> b!3652075 (= res!1481756 (not (matchR!5098 (regex!5770 (rule!8570 (_1!22326 lt!1267378))) lt!1267382)))))

(declare-fun b!3652076 () Bool)

(declare-fun res!1481753 () Bool)

(declare-fun e!2261162 () Bool)

(assert (=> b!3652076 (=> (not res!1481753) (not e!2261162))))

(declare-datatypes ((List!38643 0))(
  ( (Nil!38519) (Cons!38519 (h!43939 Rule!11340) (t!297626 List!38643)) )
))
(declare-fun rules!3307 () List!38643)

(declare-fun contains!7605 (List!38643 Rule!11340) Bool)

(assert (=> b!3652076 (= res!1481753 (contains!7605 rules!3307 rule!403))))

(declare-fun b!3652077 () Bool)

(declare-fun e!2261152 () Bool)

(assert (=> b!3652077 (= e!2261135 e!2261152)))

(declare-fun res!1481760 () Bool)

(assert (=> b!3652077 (=> res!1481760 e!2261152)))

(declare-fun lt!1267372 () TokenValue!6000)

(declare-fun lt!1267359 () Int)

(declare-fun lt!1267371 () Option!8168)

(assert (=> b!3652077 (= res!1481760 (not (= lt!1267371 (Some!8167 (tuple2!38385 (Token!10907 lt!1267372 (rule!8570 (_1!22326 lt!1267378)) lt!1267359 lt!1267382) (_2!22326 lt!1267378))))))))

(declare-fun lt!1267363 () BalanceConc!23156)

(declare-fun size!29416 (BalanceConc!23156) Int)

(assert (=> b!3652077 (= lt!1267359 (size!29416 lt!1267363))))

(declare-fun apply!9272 (TokenValueInjection!11428 BalanceConc!23156) TokenValue!6000)

(assert (=> b!3652077 (= lt!1267372 (apply!9272 (transformation!5770 (rule!8570 (_1!22326 lt!1267378))) lt!1267363))))

(declare-fun lt!1267367 () Unit!55548)

(declare-fun lemmaCharactersSize!815 (Token!10906) Unit!55548)

(assert (=> b!3652077 (= lt!1267367 (lemmaCharactersSize!815 (_1!22326 lt!1267378)))))

(declare-fun lt!1267376 () Unit!55548)

(declare-fun lemmaEqSameImage!953 (TokenValueInjection!11428 BalanceConc!23156 BalanceConc!23156) Unit!55548)

(declare-fun seqFromList!4319 (List!38642) BalanceConc!23156)

(assert (=> b!3652077 (= lt!1267376 (lemmaEqSameImage!953 (transformation!5770 (rule!8570 (_1!22326 lt!1267378))) lt!1267363 (seqFromList!4319 (originalCharacters!6484 (_1!22326 lt!1267378)))))))

(declare-fun lt!1267374 () Unit!55548)

(declare-fun lemmaSemiInverse!1519 (TokenValueInjection!11428 BalanceConc!23156) Unit!55548)

(assert (=> b!3652077 (= lt!1267374 (lemmaSemiInverse!1519 (transformation!5770 (rule!8570 (_1!22326 lt!1267378))) lt!1267363))))

(declare-fun b!3652078 () Bool)

(declare-fun res!1481759 () Bool)

(assert (=> b!3652078 (=> (not res!1481759) (not e!2261162))))

(declare-datatypes ((LexerInterface!5359 0))(
  ( (LexerInterfaceExt!5356 (__x!24218 Int)) (Lexer!5357) )
))
(declare-fun thiss!23823 () LexerInterface!5359)

(declare-fun rulesInvariant!4756 (LexerInterface!5359 List!38643) Bool)

(assert (=> b!3652078 (= res!1481759 (rulesInvariant!4756 thiss!23823 rules!3307))))

(declare-fun b!3652079 () Bool)

(declare-fun e!2261145 () Bool)

(assert (=> b!3652079 (= e!2261136 e!2261145)))

(declare-fun res!1481770 () Bool)

(assert (=> b!3652079 (=> res!1481770 e!2261145)))

(declare-fun lt!1267393 () List!38642)

(declare-fun lt!1267356 () C!21244)

(declare-fun contains!7606 (List!38642 C!21244) Bool)

(assert (=> b!3652079 (= res!1481770 (contains!7606 lt!1267393 lt!1267356))))

(declare-fun head!7786 (List!38642) C!21244)

(assert (=> b!3652079 (= lt!1267356 (head!7786 suffix!1395))))

(declare-fun usedCharacters!982 (Regex!10529) List!38642)

(assert (=> b!3652079 (= lt!1267393 (usedCharacters!982 (regex!5770 rule!403)))))

(declare-fun bm!263941 () Bool)

(declare-fun call!263947 () Bool)

(declare-fun call!263948 () List!38642)

(assert (=> bm!263941 (= call!263947 (contains!7606 call!263948 lt!1267365))))

(declare-fun b!3652080 () Bool)

(declare-fun e!2261154 () Unit!55548)

(declare-fun Unit!55551 () Unit!55548)

(assert (=> b!3652080 (= e!2261154 Unit!55551)))

(declare-fun b!3652081 () Bool)

(declare-fun e!2261164 () Bool)

(declare-fun tp!1113280 () Bool)

(declare-fun e!2261163 () Bool)

(declare-fun inv!51968 (String!43334) Bool)

(declare-fun inv!51971 (TokenValueInjection!11428) Bool)

(assert (=> b!3652081 (= e!2261163 (and tp!1113280 (inv!51968 (tag!6536 rule!403)) (inv!51971 (transformation!5770 rule!403)) e!2261164))))

(declare-fun b!3652082 () Bool)

(declare-fun res!1481768 () Bool)

(assert (=> b!3652082 (=> (not res!1481768) (not e!2261162))))

(declare-fun anOtherTypeRule!33 () Rule!11340)

(assert (=> b!3652082 (= res!1481768 (contains!7605 rules!3307 anOtherTypeRule!33))))

(declare-fun b!3652083 () Bool)

(assert (=> b!3652083 (= e!2261145 e!2261135)))

(declare-fun res!1481772 () Bool)

(assert (=> b!3652083 (=> res!1481772 e!2261135)))

(declare-fun lt!1267389 () List!38642)

(declare-fun isPrefix!3133 (List!38642 List!38642) Bool)

(assert (=> b!3652083 (= res!1481772 (not (isPrefix!3133 lt!1267382 lt!1267389)))))

(declare-fun ++!9586 (List!38642 List!38642) List!38642)

(assert (=> b!3652083 (isPrefix!3133 lt!1267382 (++!9586 lt!1267382 (_2!22326 lt!1267378)))))

(declare-fun lt!1267394 () Unit!55548)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!2052 (List!38642 List!38642) Unit!55548)

(assert (=> b!3652083 (= lt!1267394 (lemmaConcatTwoListThenFirstIsPrefix!2052 lt!1267382 (_2!22326 lt!1267378)))))

(declare-fun list!14276 (BalanceConc!23156) List!38642)

(assert (=> b!3652083 (= lt!1267382 (list!14276 lt!1267363))))

(declare-fun charsOf!3784 (Token!10906) BalanceConc!23156)

(assert (=> b!3652083 (= lt!1267363 (charsOf!3784 (_1!22326 lt!1267378)))))

(declare-fun e!2261138 () Bool)

(assert (=> b!3652083 e!2261138))

(declare-fun res!1481764 () Bool)

(assert (=> b!3652083 (=> (not res!1481764) (not e!2261138))))

(declare-datatypes ((Option!8169 0))(
  ( (None!8168) (Some!8168 (v!38032 Rule!11340)) )
))
(declare-fun lt!1267383 () Option!8169)

(declare-fun isDefined!6400 (Option!8169) Bool)

(assert (=> b!3652083 (= res!1481764 (isDefined!6400 lt!1267383))))

(declare-fun getRuleFromTag!1374 (LexerInterface!5359 List!38643 String!43334) Option!8169)

(assert (=> b!3652083 (= lt!1267383 (getRuleFromTag!1374 thiss!23823 rules!3307 (tag!6536 (rule!8570 (_1!22326 lt!1267378)))))))

(declare-fun lt!1267357 () Unit!55548)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1374 (LexerInterface!5359 List!38643 List!38642 Token!10906) Unit!55548)

(assert (=> b!3652083 (= lt!1267357 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1374 thiss!23823 rules!3307 lt!1267389 (_1!22326 lt!1267378)))))

(assert (=> b!3652083 (= lt!1267378 (get!12663 lt!1267371))))

(declare-fun lt!1267375 () Unit!55548)

(declare-fun lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!1037 (LexerInterface!5359 List!38643 List!38642 List!38642) Unit!55548)

(assert (=> b!3652083 (= lt!1267375 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!1037 thiss!23823 rules!3307 lt!1267377 suffix!1395))))

(declare-fun maxPrefix!2893 (LexerInterface!5359 List!38643 List!38642) Option!8168)

(assert (=> b!3652083 (= lt!1267371 (maxPrefix!2893 thiss!23823 rules!3307 lt!1267389))))

(assert (=> b!3652083 (isPrefix!3133 lt!1267377 lt!1267389)))

(declare-fun lt!1267358 () Unit!55548)

(assert (=> b!3652083 (= lt!1267358 (lemmaConcatTwoListThenFirstIsPrefix!2052 lt!1267377 suffix!1395))))

(assert (=> b!3652083 (= lt!1267389 (++!9586 lt!1267377 suffix!1395))))

(declare-fun b!3652084 () Bool)

(assert (=> b!3652084 (= e!2261162 e!2261141)))

(declare-fun res!1481774 () Bool)

(assert (=> b!3652084 (=> (not res!1481774) (not e!2261141))))

(declare-fun isDefined!6401 (Option!8168) Bool)

(assert (=> b!3652084 (= res!1481774 (isDefined!6401 lt!1267392))))

(assert (=> b!3652084 (= lt!1267392 (maxPrefix!2893 thiss!23823 rules!3307 lt!1267377))))

(declare-fun lt!1267384 () BalanceConc!23156)

(assert (=> b!3652084 (= lt!1267377 (list!14276 lt!1267384))))

(assert (=> b!3652084 (= lt!1267384 (charsOf!3784 token!511))))

(declare-fun b!3652085 () Bool)

(declare-fun Unit!55552 () Unit!55548)

(assert (=> b!3652085 (= e!2261147 Unit!55552)))

(declare-fun b!3652086 () Bool)

(declare-fun res!1481758 () Bool)

(assert (=> b!3652086 (=> (not res!1481758) (not e!2261160))))

(assert (=> b!3652086 (= res!1481758 (= (rule!8570 token!511) rule!403))))

(declare-fun b!3652087 () Bool)

(declare-fun res!1481755 () Bool)

(assert (=> b!3652087 (=> (not res!1481755) (not e!2261160))))

(assert (=> b!3652087 (= res!1481755 (isEmpty!22828 (_2!22326 lt!1267387)))))

(declare-fun e!2261150 () Bool)

(assert (=> b!3652088 (= e!2261150 (and tp!1113272 tp!1113281))))

(assert (=> b!3652089 (= e!2261164 (and tp!1113282 tp!1113277))))

(declare-fun bm!263942 () Bool)

(assert (=> bm!263942 (= call!263948 (usedCharacters!982 (regex!5770 (rule!8570 (_1!22326 lt!1267378)))))))

(declare-fun b!3652090 () Bool)

(declare-fun e!2261158 () Bool)

(assert (=> b!3652090 (= e!2261138 e!2261158)))

(declare-fun res!1481763 () Bool)

(assert (=> b!3652090 (=> (not res!1481763) (not e!2261158))))

(declare-fun lt!1267360 () Rule!11340)

(assert (=> b!3652090 (= res!1481763 (matchR!5098 (regex!5770 lt!1267360) (list!14276 (charsOf!3784 (_1!22326 lt!1267378)))))))

(declare-fun get!12664 (Option!8169) Rule!11340)

(assert (=> b!3652090 (= lt!1267360 (get!12664 lt!1267383))))

(declare-fun e!2261148 () Bool)

(declare-fun b!3652091 () Bool)

(declare-fun tp!1113269 () Bool)

(declare-fun e!2261140 () Bool)

(assert (=> b!3652091 (= e!2261148 (and tp!1113269 (inv!51968 (tag!6536 anOtherTypeRule!33)) (inv!51971 (transformation!5770 anOtherTypeRule!33)) e!2261140))))

(declare-fun b!3652092 () Bool)

(declare-fun res!1481773 () Bool)

(assert (=> b!3652092 (=> res!1481773 e!2261145)))

(declare-fun sepAndNonSepRulesDisjointChars!1938 (List!38643 List!38643) Bool)

(assert (=> b!3652092 (= res!1481773 (not (sepAndNonSepRulesDisjointChars!1938 rules!3307 rules!3307)))))

(assert (=> b!3652093 (= e!2261140 (and tp!1113278 tp!1113274))))

(declare-fun e!2261137 () Bool)

(assert (=> b!3652094 (= e!2261137 (and tp!1113268 tp!1113279))))

(declare-fun res!1481761 () Bool)

(assert (=> start!341522 (=> (not res!1481761) (not e!2261162))))

(get-info :version)

(assert (=> start!341522 (= res!1481761 ((_ is Lexer!5357) thiss!23823))))

(assert (=> start!341522 e!2261162))

(assert (=> start!341522 e!2261153))

(declare-fun e!2261134 () Bool)

(assert (=> start!341522 e!2261134))

(assert (=> start!341522 true))

(declare-fun e!2261151 () Bool)

(declare-fun inv!51972 (Token!10906) Bool)

(assert (=> start!341522 (and (inv!51972 token!511) e!2261151)))

(assert (=> start!341522 e!2261163))

(assert (=> start!341522 e!2261148))

(declare-fun b!3652072 () Bool)

(assert (=> b!3652072 (= e!2261159 e!2261154)))

(declare-fun c!631205 () Bool)

(assert (=> b!3652072 (= c!631205 (not (isSeparator!5770 (rule!8570 (_1!22326 lt!1267378)))))))

(declare-fun b!3652095 () Bool)

(declare-fun res!1481771 () Bool)

(assert (=> b!3652095 (=> (not res!1481771) (not e!2261162))))

(declare-fun isEmpty!22829 (List!38643) Bool)

(assert (=> b!3652095 (= res!1481771 (not (isEmpty!22829 rules!3307)))))

(declare-fun tp!1113275 () Bool)

(declare-fun e!2261139 () Bool)

(declare-fun b!3652096 () Bool)

(declare-fun inv!21 (TokenValue!6000) Bool)

(assert (=> b!3652096 (= e!2261151 (and (inv!21 (value!184905 token!511)) e!2261139 tp!1113275))))

(declare-fun b!3652097 () Bool)

(assert (=> b!3652097 false))

(declare-fun lt!1267388 () Unit!55548)

(declare-fun call!263946 () Unit!55548)

(assert (=> b!3652097 (= lt!1267388 call!263946)))

(assert (=> b!3652097 (not call!263947)))

(declare-fun lt!1267381 () Unit!55548)

(declare-fun lemmaSepRuleNotContainsCharContainedInANonSepRule!298 (LexerInterface!5359 List!38643 List!38643 Rule!11340 Rule!11340 C!21244) Unit!55548)

(assert (=> b!3652097 (= lt!1267381 (lemmaSepRuleNotContainsCharContainedInANonSepRule!298 thiss!23823 rules!3307 rules!3307 rule!403 (rule!8570 (_1!22326 lt!1267378)) lt!1267365))))

(declare-fun Unit!55553 () Unit!55548)

(assert (=> b!3652097 (= e!2261147 Unit!55553)))

(declare-fun b!3652098 () Bool)

(declare-fun e!2261143 () Bool)

(declare-fun e!2261161 () Bool)

(assert (=> b!3652098 (= e!2261143 e!2261161)))

(declare-fun res!1481765 () Bool)

(assert (=> b!3652098 (=> res!1481765 e!2261161)))

(assert (=> b!3652098 (= res!1481765 (isSeparator!5770 rule!403))))

(assert (=> b!3652098 (contains!7606 lt!1267382 lt!1267356)))

(declare-fun lt!1267373 () Unit!55548)

(declare-fun lemmaLongerPrefixContainsHeadOfSuffixOfSmallerPref!78 (List!38642 List!38642 List!38642 List!38642) Unit!55548)

(assert (=> b!3652098 (= lt!1267373 (lemmaLongerPrefixContainsHeadOfSuffixOfSmallerPref!78 lt!1267377 suffix!1395 lt!1267382 lt!1267389))))

(declare-fun b!3652099 () Bool)

(declare-fun res!1481766 () Bool)

(assert (=> b!3652099 (=> (not res!1481766) (not e!2261162))))

(assert (=> b!3652099 (= res!1481766 (not (= (isSeparator!5770 anOtherTypeRule!33) (isSeparator!5770 rule!403))))))

(declare-fun b!3652100 () Bool)

(declare-fun e!2261157 () Bool)

(assert (=> b!3652100 (= e!2261152 e!2261157)))

(declare-fun res!1481757 () Bool)

(assert (=> b!3652100 (=> res!1481757 e!2261157)))

(declare-fun lt!1267385 () List!38642)

(declare-fun lt!1267362 () Option!8168)

(assert (=> b!3652100 (= res!1481757 (or (not (= lt!1267385 (_2!22326 lt!1267378))) (not (= lt!1267362 (Some!8167 (tuple2!38385 (_1!22326 lt!1267378) lt!1267385))))))))

(assert (=> b!3652100 (= (_2!22326 lt!1267378) lt!1267385)))

(declare-fun lt!1267391 () Unit!55548)

(declare-fun lemmaSamePrefixThenSameSuffix!1460 (List!38642 List!38642 List!38642 List!38642 List!38642) Unit!55548)

(assert (=> b!3652100 (= lt!1267391 (lemmaSamePrefixThenSameSuffix!1460 lt!1267382 (_2!22326 lt!1267378) lt!1267382 lt!1267385 lt!1267389))))

(declare-fun getSuffix!1686 (List!38642 List!38642) List!38642)

(assert (=> b!3652100 (= lt!1267385 (getSuffix!1686 lt!1267389 lt!1267382))))

(declare-fun lt!1267366 () Int)

(declare-fun lt!1267369 () TokenValue!6000)

(assert (=> b!3652100 (= lt!1267362 (Some!8167 (tuple2!38385 (Token!10907 lt!1267369 (rule!8570 (_1!22326 lt!1267378)) lt!1267366 lt!1267382) (_2!22326 lt!1267378))))))

(declare-fun maxPrefixOneRule!2031 (LexerInterface!5359 Rule!11340 List!38642) Option!8168)

(assert (=> b!3652100 (= lt!1267362 (maxPrefixOneRule!2031 thiss!23823 (rule!8570 (_1!22326 lt!1267378)) lt!1267389))))

(declare-fun size!29417 (List!38642) Int)

(assert (=> b!3652100 (= lt!1267366 (size!29417 lt!1267382))))

(assert (=> b!3652100 (= lt!1267369 (apply!9272 (transformation!5770 (rule!8570 (_1!22326 lt!1267378))) (seqFromList!4319 lt!1267382)))))

(declare-fun lt!1267390 () Unit!55548)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1087 (LexerInterface!5359 List!38643 List!38642 List!38642 List!38642 Rule!11340) Unit!55548)

(assert (=> b!3652100 (= lt!1267390 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1087 thiss!23823 rules!3307 lt!1267382 lt!1267389 (_2!22326 lt!1267378) (rule!8570 (_1!22326 lt!1267378))))))

(declare-fun b!3652101 () Bool)

(declare-fun validRegex!4821 (Regex!10529) Bool)

(assert (=> b!3652101 (= e!2261161 (validRegex!4821 (regex!5770 (rule!8570 (_1!22326 lt!1267378)))))))

(assert (=> b!3652101 (not (contains!7606 (usedCharacters!982 (regex!5770 (rule!8570 (_1!22326 lt!1267378)))) lt!1267356))))

(declare-fun lt!1267380 () Unit!55548)

(declare-fun lemmaNonSepRuleNotContainsCharContainedInASepRule!416 (LexerInterface!5359 List!38643 List!38643 Rule!11340 Rule!11340 C!21244) Unit!55548)

(assert (=> b!3652101 (= lt!1267380 (lemmaNonSepRuleNotContainsCharContainedInASepRule!416 thiss!23823 rules!3307 rules!3307 (rule!8570 (_1!22326 lt!1267378)) anOtherTypeRule!33 lt!1267356))))

(declare-fun b!3652102 () Bool)

(assert (=> b!3652102 (= e!2261157 e!2261143)))

(declare-fun res!1481767 () Bool)

(assert (=> b!3652102 (=> res!1481767 e!2261143)))

(assert (=> b!3652102 (= res!1481767 (<= lt!1267359 (size!29416 lt!1267384)))))

(declare-fun lt!1267386 () Unit!55548)

(assert (=> b!3652102 (= lt!1267386 e!2261159)))

(declare-fun c!631204 () Bool)

(assert (=> b!3652102 (= c!631204 (isSeparator!5770 rule!403))))

(declare-fun lt!1267368 () Unit!55548)

(assert (=> b!3652102 (= lt!1267368 e!2261146)))

(declare-fun c!631207 () Bool)

(assert (=> b!3652102 (= c!631207 (not (contains!7606 lt!1267393 lt!1267365)))))

(assert (=> b!3652102 (= lt!1267365 (head!7786 lt!1267382))))

(declare-fun b!3652103 () Bool)

(assert (=> b!3652103 (= e!2261158 (= (rule!8570 (_1!22326 lt!1267378)) lt!1267360))))

(declare-fun b!3652104 () Bool)

(declare-fun res!1481769 () Bool)

(assert (=> b!3652104 (=> res!1481769 e!2261145)))

(assert (=> b!3652104 (= res!1481769 (not (contains!7606 (usedCharacters!982 (regex!5770 anOtherTypeRule!33)) lt!1267356)))))

(declare-fun tp!1113270 () Bool)

(declare-fun b!3652105 () Bool)

(assert (=> b!3652105 (= e!2261156 (and tp!1113270 (inv!51968 (tag!6536 (h!43939 rules!3307))) (inv!51971 (transformation!5770 (h!43939 rules!3307))) e!2261150))))

(declare-fun bm!263943 () Bool)

(assert (=> bm!263943 (= call!263946 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!718 (regex!5770 (rule!8570 (_1!22326 lt!1267378))) lt!1267382 lt!1267365))))

(declare-fun tp!1113271 () Bool)

(declare-fun b!3652106 () Bool)

(assert (=> b!3652106 (= e!2261139 (and tp!1113271 (inv!51968 (tag!6536 (rule!8570 token!511))) (inv!51971 (transformation!5770 (rule!8570 token!511))) e!2261137))))

(declare-fun b!3652107 () Bool)

(assert (=> b!3652107 false))

(declare-fun lt!1267364 () Unit!55548)

(assert (=> b!3652107 (= lt!1267364 call!263946)))

(assert (=> b!3652107 (not call!263947)))

(declare-fun lt!1267361 () Unit!55548)

(assert (=> b!3652107 (= lt!1267361 (lemmaNonSepRuleNotContainsCharContainedInASepRule!416 thiss!23823 rules!3307 rules!3307 (rule!8570 (_1!22326 lt!1267378)) rule!403 lt!1267365))))

(declare-fun Unit!55554 () Unit!55548)

(assert (=> b!3652107 (= e!2261154 Unit!55554)))

(declare-fun b!3652108 () Bool)

(assert (=> b!3652108 (= e!2261160 (not e!2261136))))

(declare-fun res!1481752 () Bool)

(assert (=> b!3652108 (=> res!1481752 e!2261136)))

(assert (=> b!3652108 (= res!1481752 (not (matchR!5098 (regex!5770 rule!403) lt!1267377)))))

(declare-fun ruleValid!2034 (LexerInterface!5359 Rule!11340) Bool)

(assert (=> b!3652108 (ruleValid!2034 thiss!23823 rule!403)))

(declare-fun lt!1267370 () Unit!55548)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1188 (LexerInterface!5359 Rule!11340 List!38643) Unit!55548)

(assert (=> b!3652108 (= lt!1267370 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1188 thiss!23823 rule!403 rules!3307))))

(declare-fun b!3652109 () Bool)

(declare-fun tp_is_empty!18141 () Bool)

(declare-fun tp!1113273 () Bool)

(assert (=> b!3652109 (= e!2261134 (and tp_is_empty!18141 tp!1113273))))

(declare-fun b!3652110 () Bool)

(declare-fun Unit!55555 () Unit!55548)

(assert (=> b!3652110 (= e!2261146 Unit!55555)))

(assert (= (and start!341522 res!1481761) b!3652095))

(assert (= (and b!3652095 res!1481771) b!3652078))

(assert (= (and b!3652078 res!1481759) b!3652076))

(assert (= (and b!3652076 res!1481753) b!3652082))

(assert (= (and b!3652082 res!1481768) b!3652099))

(assert (= (and b!3652099 res!1481766) b!3652084))

(assert (= (and b!3652084 res!1481774) b!3652069))

(assert (= (and b!3652069 res!1481754) b!3652087))

(assert (= (and b!3652087 res!1481755) b!3652086))

(assert (= (and b!3652086 res!1481758) b!3652108))

(assert (= (and b!3652108 (not res!1481752)) b!3652071))

(assert (= (and b!3652071 (not res!1481762)) b!3652079))

(assert (= (and b!3652079 (not res!1481770)) b!3652104))

(assert (= (and b!3652104 (not res!1481769)) b!3652092))

(assert (= (and b!3652092 (not res!1481773)) b!3652083))

(assert (= (and b!3652083 res!1481764) b!3652090))

(assert (= (and b!3652090 res!1481763) b!3652103))

(assert (= (and b!3652083 (not res!1481772)) b!3652075))

(assert (= (and b!3652075 (not res!1481756)) b!3652077))

(assert (= (and b!3652077 (not res!1481760)) b!3652100))

(assert (= (and b!3652100 (not res!1481757)) b!3652102))

(assert (= (and b!3652102 c!631207) b!3652073))

(assert (= (and b!3652102 (not c!631207)) b!3652110))

(assert (= (and b!3652102 c!631204) b!3652072))

(assert (= (and b!3652102 (not c!631204)) b!3652070))

(assert (= (and b!3652072 c!631205) b!3652107))

(assert (= (and b!3652072 (not c!631205)) b!3652080))

(assert (= (and b!3652070 c!631206) b!3652097))

(assert (= (and b!3652070 (not c!631206)) b!3652085))

(assert (= (or b!3652107 b!3652097) bm!263943))

(assert (= (or b!3652107 b!3652097) bm!263942))

(assert (= (or b!3652107 b!3652097) bm!263941))

(assert (= (and b!3652102 (not res!1481767)) b!3652098))

(assert (= (and b!3652098 (not res!1481765)) b!3652101))

(assert (= b!3652105 b!3652088))

(assert (= b!3652074 b!3652105))

(assert (= (and start!341522 ((_ is Cons!38519) rules!3307)) b!3652074))

(assert (= (and start!341522 ((_ is Cons!38518) suffix!1395)) b!3652109))

(assert (= b!3652106 b!3652094))

(assert (= b!3652096 b!3652106))

(assert (= start!341522 b!3652096))

(assert (= b!3652081 b!3652089))

(assert (= start!341522 b!3652081))

(assert (= b!3652091 b!3652093))

(assert (= start!341522 b!3652091))

(declare-fun m!4156861 () Bool)

(assert (=> b!3652092 m!4156861))

(declare-fun m!4156863 () Bool)

(assert (=> bm!263941 m!4156863))

(declare-fun m!4156865 () Bool)

(assert (=> bm!263942 m!4156865))

(declare-fun m!4156867 () Bool)

(assert (=> b!3652107 m!4156867))

(declare-fun m!4156869 () Bool)

(assert (=> b!3652075 m!4156869))

(declare-fun m!4156871 () Bool)

(assert (=> b!3652081 m!4156871))

(declare-fun m!4156873 () Bool)

(assert (=> b!3652081 m!4156873))

(declare-fun m!4156875 () Bool)

(assert (=> b!3652071 m!4156875))

(declare-fun m!4156877 () Bool)

(assert (=> b!3652108 m!4156877))

(declare-fun m!4156879 () Bool)

(assert (=> b!3652108 m!4156879))

(declare-fun m!4156881 () Bool)

(assert (=> b!3652108 m!4156881))

(declare-fun m!4156883 () Bool)

(assert (=> b!3652087 m!4156883))

(declare-fun m!4156885 () Bool)

(assert (=> b!3652083 m!4156885))

(declare-fun m!4156887 () Bool)

(assert (=> b!3652083 m!4156887))

(declare-fun m!4156889 () Bool)

(assert (=> b!3652083 m!4156889))

(declare-fun m!4156891 () Bool)

(assert (=> b!3652083 m!4156891))

(declare-fun m!4156893 () Bool)

(assert (=> b!3652083 m!4156893))

(declare-fun m!4156895 () Bool)

(assert (=> b!3652083 m!4156895))

(declare-fun m!4156897 () Bool)

(assert (=> b!3652083 m!4156897))

(declare-fun m!4156899 () Bool)

(assert (=> b!3652083 m!4156899))

(declare-fun m!4156901 () Bool)

(assert (=> b!3652083 m!4156901))

(declare-fun m!4156903 () Bool)

(assert (=> b!3652083 m!4156903))

(assert (=> b!3652083 m!4156895))

(declare-fun m!4156905 () Bool)

(assert (=> b!3652083 m!4156905))

(declare-fun m!4156907 () Bool)

(assert (=> b!3652083 m!4156907))

(declare-fun m!4156909 () Bool)

(assert (=> b!3652083 m!4156909))

(declare-fun m!4156911 () Bool)

(assert (=> b!3652083 m!4156911))

(declare-fun m!4156913 () Bool)

(assert (=> b!3652083 m!4156913))

(declare-fun m!4156915 () Bool)

(assert (=> b!3652078 m!4156915))

(assert (=> b!3652090 m!4156901))

(assert (=> b!3652090 m!4156901))

(declare-fun m!4156917 () Bool)

(assert (=> b!3652090 m!4156917))

(assert (=> b!3652090 m!4156917))

(declare-fun m!4156919 () Bool)

(assert (=> b!3652090 m!4156919))

(declare-fun m!4156921 () Bool)

(assert (=> b!3652090 m!4156921))

(declare-fun m!4156923 () Bool)

(assert (=> b!3652106 m!4156923))

(declare-fun m!4156925 () Bool)

(assert (=> b!3652106 m!4156925))

(declare-fun m!4156927 () Bool)

(assert (=> b!3652097 m!4156927))

(declare-fun m!4156929 () Bool)

(assert (=> b!3652073 m!4156929))

(declare-fun m!4156931 () Bool)

(assert (=> b!3652076 m!4156931))

(declare-fun m!4156933 () Bool)

(assert (=> b!3652105 m!4156933))

(declare-fun m!4156935 () Bool)

(assert (=> b!3652105 m!4156935))

(declare-fun m!4156937 () Bool)

(assert (=> b!3652100 m!4156937))

(declare-fun m!4156939 () Bool)

(assert (=> b!3652100 m!4156939))

(declare-fun m!4156941 () Bool)

(assert (=> b!3652100 m!4156941))

(declare-fun m!4156943 () Bool)

(assert (=> b!3652100 m!4156943))

(declare-fun m!4156945 () Bool)

(assert (=> b!3652100 m!4156945))

(declare-fun m!4156947 () Bool)

(assert (=> b!3652100 m!4156947))

(assert (=> b!3652100 m!4156941))

(declare-fun m!4156949 () Bool)

(assert (=> b!3652100 m!4156949))

(declare-fun m!4156951 () Bool)

(assert (=> b!3652101 m!4156951))

(assert (=> b!3652101 m!4156865))

(assert (=> b!3652101 m!4156865))

(declare-fun m!4156953 () Bool)

(assert (=> b!3652101 m!4156953))

(declare-fun m!4156955 () Bool)

(assert (=> b!3652101 m!4156955))

(declare-fun m!4156957 () Bool)

(assert (=> b!3652082 m!4156957))

(declare-fun m!4156959 () Bool)

(assert (=> b!3652069 m!4156959))

(declare-fun m!4156961 () Bool)

(assert (=> start!341522 m!4156961))

(declare-fun m!4156963 () Bool)

(assert (=> b!3652098 m!4156963))

(declare-fun m!4156965 () Bool)

(assert (=> b!3652098 m!4156965))

(declare-fun m!4156967 () Bool)

(assert (=> b!3652077 m!4156967))

(declare-fun m!4156969 () Bool)

(assert (=> b!3652077 m!4156969))

(declare-fun m!4156971 () Bool)

(assert (=> b!3652077 m!4156971))

(declare-fun m!4156973 () Bool)

(assert (=> b!3652077 m!4156973))

(declare-fun m!4156975 () Bool)

(assert (=> b!3652077 m!4156975))

(declare-fun m!4156977 () Bool)

(assert (=> b!3652077 m!4156977))

(assert (=> b!3652077 m!4156975))

(declare-fun m!4156979 () Bool)

(assert (=> b!3652102 m!4156979))

(declare-fun m!4156981 () Bool)

(assert (=> b!3652102 m!4156981))

(declare-fun m!4156983 () Bool)

(assert (=> b!3652102 m!4156983))

(declare-fun m!4156985 () Bool)

(assert (=> b!3652079 m!4156985))

(declare-fun m!4156987 () Bool)

(assert (=> b!3652079 m!4156987))

(declare-fun m!4156989 () Bool)

(assert (=> b!3652079 m!4156989))

(declare-fun m!4156991 () Bool)

(assert (=> b!3652096 m!4156991))

(declare-fun m!4156993 () Bool)

(assert (=> b!3652091 m!4156993))

(declare-fun m!4156995 () Bool)

(assert (=> b!3652091 m!4156995))

(declare-fun m!4156997 () Bool)

(assert (=> b!3652084 m!4156997))

(declare-fun m!4156999 () Bool)

(assert (=> b!3652084 m!4156999))

(declare-fun m!4157001 () Bool)

(assert (=> b!3652084 m!4157001))

(declare-fun m!4157003 () Bool)

(assert (=> b!3652084 m!4157003))

(declare-fun m!4157005 () Bool)

(assert (=> b!3652104 m!4157005))

(assert (=> b!3652104 m!4157005))

(declare-fun m!4157007 () Bool)

(assert (=> b!3652104 m!4157007))

(declare-fun m!4157009 () Bool)

(assert (=> b!3652095 m!4157009))

(declare-fun m!4157011 () Bool)

(assert (=> bm!263943 m!4157011))

(check-sat (not b!3652096) (not b_next!96825) (not start!341522) b_and!270235 (not b!3652069) (not b!3652090) (not b!3652084) b_and!270237 (not b!3652077) (not b!3652078) b_and!270239 (not b!3652074) (not b!3652100) (not b!3652097) (not b!3652108) (not b_next!96831) (not bm!263943) (not b!3652098) (not b_next!96823) (not b!3652095) (not b_next!96819) (not b!3652101) (not b!3652092) (not b!3652102) b_and!270241 (not b!3652073) (not b!3652076) (not b_next!96827) b_and!270243 (not b!3652104) (not b_next!96829) (not b!3652087) b_and!270247 (not b!3652082) b_and!270245 (not b!3652083) (not b!3652081) b_and!270249 (not bm!263942) (not b!3652107) tp_is_empty!18141 (not b!3652106) (not b!3652075) (not b_next!96817) (not b!3652105) (not bm!263941) (not b!3652079) (not b!3652091) (not b_next!96821) (not b!3652071) (not b!3652109))
(check-sat (not b_next!96825) b_and!270235 b_and!270239 (not b_next!96831) b_and!270241 b_and!270237 (not b_next!96829) b_and!270247 b_and!270245 b_and!270249 (not b_next!96817) (not b_next!96821) (not b_next!96823) (not b_next!96819) (not b_next!96827) b_and!270243)
(get-model)

(declare-fun d!1072918 () Bool)

(assert (=> d!1072918 (= (get!12663 lt!1267392) (v!38031 lt!1267392))))

(assert (=> b!3652069 d!1072918))

(declare-fun b!3652164 () Bool)

(declare-fun e!2261201 () List!38642)

(declare-fun e!2261204 () List!38642)

(assert (=> b!3652164 (= e!2261201 e!2261204)))

(declare-fun c!631225 () Bool)

(assert (=> b!3652164 (= c!631225 ((_ is Union!10529) (regex!5770 (rule!8570 (_1!22326 lt!1267378)))))))

(declare-fun bm!263961 () Bool)

(declare-fun call!263967 () List!38642)

(assert (=> bm!263961 (= call!263967 (usedCharacters!982 (ite c!631225 (regTwo!21571 (regex!5770 (rule!8570 (_1!22326 lt!1267378)))) (regOne!21570 (regex!5770 (rule!8570 (_1!22326 lt!1267378)))))))))

(declare-fun call!263966 () List!38642)

(declare-fun c!631226 () Bool)

(declare-fun bm!263962 () Bool)

(assert (=> bm!263962 (= call!263966 (usedCharacters!982 (ite c!631226 (reg!10858 (regex!5770 (rule!8570 (_1!22326 lt!1267378)))) (ite c!631225 (regOne!21571 (regex!5770 (rule!8570 (_1!22326 lt!1267378)))) (regTwo!21570 (regex!5770 (rule!8570 (_1!22326 lt!1267378))))))))))

(declare-fun d!1072920 () Bool)

(declare-fun c!631228 () Bool)

(assert (=> d!1072920 (= c!631228 (or ((_ is EmptyExpr!10529) (regex!5770 (rule!8570 (_1!22326 lt!1267378)))) ((_ is EmptyLang!10529) (regex!5770 (rule!8570 (_1!22326 lt!1267378))))))))

(declare-fun e!2261205 () List!38642)

(assert (=> d!1072920 (= (usedCharacters!982 (regex!5770 (rule!8570 (_1!22326 lt!1267378)))) e!2261205)))

(declare-fun b!3652165 () Bool)

(declare-fun e!2261200 () List!38642)

(assert (=> b!3652165 (= e!2261200 (Cons!38518 (c!631208 (regex!5770 (rule!8570 (_1!22326 lt!1267378)))) Nil!38518))))

(declare-fun call!263969 () List!38642)

(declare-fun call!263968 () List!38642)

(declare-fun bm!263963 () Bool)

(assert (=> bm!263963 (= call!263969 (++!9586 (ite c!631225 call!263968 call!263967) (ite c!631225 call!263967 call!263968)))))

(declare-fun b!3652166 () Bool)

(assert (=> b!3652166 (= e!2261204 call!263969)))

(declare-fun b!3652167 () Bool)

(assert (=> b!3652167 (= e!2261205 e!2261200)))

(declare-fun c!631224 () Bool)

(assert (=> b!3652167 (= c!631224 ((_ is ElementMatch!10529) (regex!5770 (rule!8570 (_1!22326 lt!1267378)))))))

(declare-fun b!3652168 () Bool)

(assert (=> b!3652168 (= e!2261204 call!263969)))

(declare-fun bm!263964 () Bool)

(assert (=> bm!263964 (= call!263968 call!263966)))

(declare-fun b!3652169 () Bool)

(assert (=> b!3652169 (= e!2261205 Nil!38518)))

(declare-fun b!3652170 () Bool)

(assert (=> b!3652170 (= c!631226 ((_ is Star!10529) (regex!5770 (rule!8570 (_1!22326 lt!1267378)))))))

(assert (=> b!3652170 (= e!2261200 e!2261201)))

(declare-fun b!3652171 () Bool)

(assert (=> b!3652171 (= e!2261201 call!263966)))

(assert (= (and d!1072920 c!631228) b!3652169))

(assert (= (and d!1072920 (not c!631228)) b!3652167))

(assert (= (and b!3652167 c!631224) b!3652165))

(assert (= (and b!3652167 (not c!631224)) b!3652170))

(assert (= (and b!3652170 c!631226) b!3652171))

(assert (= (and b!3652170 (not c!631226)) b!3652164))

(assert (= (and b!3652164 c!631225) b!3652168))

(assert (= (and b!3652164 (not c!631225)) b!3652166))

(assert (= (or b!3652168 b!3652166) bm!263964))

(assert (= (or b!3652168 b!3652166) bm!263961))

(assert (= (or b!3652168 b!3652166) bm!263963))

(assert (= (or b!3652171 bm!263964) bm!263962))

(declare-fun m!4157025 () Bool)

(assert (=> bm!263961 m!4157025))

(declare-fun m!4157027 () Bool)

(assert (=> bm!263962 m!4157027))

(declare-fun m!4157029 () Bool)

(assert (=> bm!263963 m!4157029))

(assert (=> bm!263942 d!1072920))

(declare-fun d!1072928 () Bool)

(assert (=> d!1072928 (not (contains!7606 (usedCharacters!982 (regex!5770 (rule!8570 (_1!22326 lt!1267378)))) lt!1267365))))

(declare-fun lt!1267405 () Unit!55548)

(declare-fun choose!21538 (LexerInterface!5359 List!38643 List!38643 Rule!11340 Rule!11340 C!21244) Unit!55548)

(assert (=> d!1072928 (= lt!1267405 (choose!21538 thiss!23823 rules!3307 rules!3307 (rule!8570 (_1!22326 lt!1267378)) rule!403 lt!1267365))))

(assert (=> d!1072928 (rulesInvariant!4756 thiss!23823 rules!3307)))

(assert (=> d!1072928 (= (lemmaNonSepRuleNotContainsCharContainedInASepRule!416 thiss!23823 rules!3307 rules!3307 (rule!8570 (_1!22326 lt!1267378)) rule!403 lt!1267365) lt!1267405)))

(declare-fun bs!572281 () Bool)

(assert (= bs!572281 d!1072928))

(assert (=> bs!572281 m!4156865))

(assert (=> bs!572281 m!4156865))

(declare-fun m!4157039 () Bool)

(assert (=> bs!572281 m!4157039))

(declare-fun m!4157041 () Bool)

(assert (=> bs!572281 m!4157041))

(assert (=> bs!572281 m!4156915))

(assert (=> b!3652107 d!1072928))

(declare-fun b!3652291 () Bool)

(declare-fun e!2261276 () Bool)

(declare-fun e!2261280 () Bool)

(assert (=> b!3652291 (= e!2261276 e!2261280)))

(declare-fun c!631262 () Bool)

(assert (=> b!3652291 (= c!631262 ((_ is EmptyLang!10529) (regex!5770 rule!403)))))

(declare-fun b!3652292 () Bool)

(declare-fun res!1481868 () Bool)

(declare-fun e!2261274 () Bool)

(assert (=> b!3652292 (=> (not res!1481868) (not e!2261274))))

(declare-fun tail!5657 (List!38642) List!38642)

(assert (=> b!3652292 (= res!1481868 (isEmpty!22828 (tail!5657 lt!1267377)))))

(declare-fun b!3652293 () Bool)

(assert (=> b!3652293 (= e!2261274 (= (head!7786 lt!1267377) (c!631208 (regex!5770 rule!403))))))

(declare-fun b!3652294 () Bool)

(declare-fun e!2261275 () Bool)

(assert (=> b!3652294 (= e!2261275 (not (= (head!7786 lt!1267377) (c!631208 (regex!5770 rule!403)))))))

(declare-fun b!3652295 () Bool)

(declare-fun res!1481867 () Bool)

(declare-fun e!2261279 () Bool)

(assert (=> b!3652295 (=> res!1481867 e!2261279)))

(assert (=> b!3652295 (= res!1481867 (not ((_ is ElementMatch!10529) (regex!5770 rule!403))))))

(assert (=> b!3652295 (= e!2261280 e!2261279)))

(declare-fun b!3652296 () Bool)

(declare-fun e!2261278 () Bool)

(assert (=> b!3652296 (= e!2261279 e!2261278)))

(declare-fun res!1481870 () Bool)

(assert (=> b!3652296 (=> (not res!1481870) (not e!2261278))))

(declare-fun lt!1267420 () Bool)

(assert (=> b!3652296 (= res!1481870 (not lt!1267420))))

(declare-fun b!3652297 () Bool)

(declare-fun call!263991 () Bool)

(assert (=> b!3652297 (= e!2261276 (= lt!1267420 call!263991))))

(declare-fun b!3652298 () Bool)

(declare-fun res!1481863 () Bool)

(assert (=> b!3652298 (=> res!1481863 e!2261275)))

(assert (=> b!3652298 (= res!1481863 (not (isEmpty!22828 (tail!5657 lt!1267377))))))

(declare-fun b!3652299 () Bool)

(assert (=> b!3652299 (= e!2261278 e!2261275)))

(declare-fun res!1481866 () Bool)

(assert (=> b!3652299 (=> res!1481866 e!2261275)))

(assert (=> b!3652299 (= res!1481866 call!263991)))

(declare-fun b!3652300 () Bool)

(declare-fun e!2261277 () Bool)

(declare-fun derivativeStep!3208 (Regex!10529 C!21244) Regex!10529)

(assert (=> b!3652300 (= e!2261277 (matchR!5098 (derivativeStep!3208 (regex!5770 rule!403) (head!7786 lt!1267377)) (tail!5657 lt!1267377)))))

(declare-fun b!3652301 () Bool)

(declare-fun nullable!3659 (Regex!10529) Bool)

(assert (=> b!3652301 (= e!2261277 (nullable!3659 (regex!5770 rule!403)))))

(declare-fun d!1072934 () Bool)

(assert (=> d!1072934 e!2261276))

(declare-fun c!631264 () Bool)

(assert (=> d!1072934 (= c!631264 ((_ is EmptyExpr!10529) (regex!5770 rule!403)))))

(assert (=> d!1072934 (= lt!1267420 e!2261277)))

(declare-fun c!631263 () Bool)

(assert (=> d!1072934 (= c!631263 (isEmpty!22828 lt!1267377))))

(assert (=> d!1072934 (validRegex!4821 (regex!5770 rule!403))))

(assert (=> d!1072934 (= (matchR!5098 (regex!5770 rule!403) lt!1267377) lt!1267420)))

(declare-fun b!3652302 () Bool)

(assert (=> b!3652302 (= e!2261280 (not lt!1267420))))

(declare-fun b!3652303 () Bool)

(declare-fun res!1481864 () Bool)

(assert (=> b!3652303 (=> res!1481864 e!2261279)))

(assert (=> b!3652303 (= res!1481864 e!2261274)))

(declare-fun res!1481869 () Bool)

(assert (=> b!3652303 (=> (not res!1481869) (not e!2261274))))

(assert (=> b!3652303 (= res!1481869 lt!1267420)))

(declare-fun b!3652304 () Bool)

(declare-fun res!1481865 () Bool)

(assert (=> b!3652304 (=> (not res!1481865) (not e!2261274))))

(assert (=> b!3652304 (= res!1481865 (not call!263991))))

(declare-fun bm!263986 () Bool)

(assert (=> bm!263986 (= call!263991 (isEmpty!22828 lt!1267377))))

(assert (= (and d!1072934 c!631263) b!3652301))

(assert (= (and d!1072934 (not c!631263)) b!3652300))

(assert (= (and d!1072934 c!631264) b!3652297))

(assert (= (and d!1072934 (not c!631264)) b!3652291))

(assert (= (and b!3652291 c!631262) b!3652302))

(assert (= (and b!3652291 (not c!631262)) b!3652295))

(assert (= (and b!3652295 (not res!1481867)) b!3652303))

(assert (= (and b!3652303 res!1481869) b!3652304))

(assert (= (and b!3652304 res!1481865) b!3652292))

(assert (= (and b!3652292 res!1481868) b!3652293))

(assert (= (and b!3652303 (not res!1481864)) b!3652296))

(assert (= (and b!3652296 res!1481870) b!3652299))

(assert (= (and b!3652299 (not res!1481866)) b!3652298))

(assert (= (and b!3652298 (not res!1481863)) b!3652294))

(assert (= (or b!3652297 b!3652304 b!3652299) bm!263986))

(declare-fun m!4157097 () Bool)

(assert (=> b!3652300 m!4157097))

(assert (=> b!3652300 m!4157097))

(declare-fun m!4157099 () Bool)

(assert (=> b!3652300 m!4157099))

(declare-fun m!4157101 () Bool)

(assert (=> b!3652300 m!4157101))

(assert (=> b!3652300 m!4157099))

(assert (=> b!3652300 m!4157101))

(declare-fun m!4157103 () Bool)

(assert (=> b!3652300 m!4157103))

(assert (=> b!3652293 m!4157097))

(declare-fun m!4157105 () Bool)

(assert (=> bm!263986 m!4157105))

(assert (=> b!3652292 m!4157101))

(assert (=> b!3652292 m!4157101))

(declare-fun m!4157107 () Bool)

(assert (=> b!3652292 m!4157107))

(assert (=> d!1072934 m!4157105))

(declare-fun m!4157109 () Bool)

(assert (=> d!1072934 m!4157109))

(assert (=> b!3652298 m!4157101))

(assert (=> b!3652298 m!4157101))

(assert (=> b!3652298 m!4157107))

(assert (=> b!3652294 m!4157097))

(declare-fun m!4157111 () Bool)

(assert (=> b!3652301 m!4157111))

(assert (=> b!3652108 d!1072934))

(declare-fun d!1072958 () Bool)

(declare-fun res!1481881 () Bool)

(declare-fun e!2261287 () Bool)

(assert (=> d!1072958 (=> (not res!1481881) (not e!2261287))))

(assert (=> d!1072958 (= res!1481881 (validRegex!4821 (regex!5770 rule!403)))))

(assert (=> d!1072958 (= (ruleValid!2034 thiss!23823 rule!403) e!2261287)))

(declare-fun b!3652316 () Bool)

(declare-fun res!1481882 () Bool)

(assert (=> b!3652316 (=> (not res!1481882) (not e!2261287))))

(assert (=> b!3652316 (= res!1481882 (not (nullable!3659 (regex!5770 rule!403))))))

(declare-fun b!3652317 () Bool)

(assert (=> b!3652317 (= e!2261287 (not (= (tag!6536 rule!403) (String!43335 ""))))))

(assert (= (and d!1072958 res!1481881) b!3652316))

(assert (= (and b!3652316 res!1481882) b!3652317))

(assert (=> d!1072958 m!4157109))

(assert (=> b!3652316 m!4157111))

(assert (=> b!3652108 d!1072958))

(declare-fun d!1072962 () Bool)

(assert (=> d!1072962 (ruleValid!2034 thiss!23823 rule!403)))

(declare-fun lt!1267426 () Unit!55548)

(declare-fun choose!21540 (LexerInterface!5359 Rule!11340 List!38643) Unit!55548)

(assert (=> d!1072962 (= lt!1267426 (choose!21540 thiss!23823 rule!403 rules!3307))))

(assert (=> d!1072962 (contains!7605 rules!3307 rule!403)))

(assert (=> d!1072962 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1188 thiss!23823 rule!403 rules!3307) lt!1267426)))

(declare-fun bs!572285 () Bool)

(assert (= bs!572285 d!1072962))

(assert (=> bs!572285 m!4156879))

(declare-fun m!4157133 () Bool)

(assert (=> bs!572285 m!4157133))

(assert (=> bs!572285 m!4156931))

(assert (=> b!3652108 d!1072962))

(declare-fun d!1072974 () Bool)

(assert (=> d!1072974 (= (inv!51968 (tag!6536 (rule!8570 token!511))) (= (mod (str.len (value!184904 (tag!6536 (rule!8570 token!511)))) 2) 0))))

(assert (=> b!3652106 d!1072974))

(declare-fun d!1072976 () Bool)

(declare-fun res!1481895 () Bool)

(declare-fun e!2261300 () Bool)

(assert (=> d!1072976 (=> (not res!1481895) (not e!2261300))))

(declare-fun semiInverseModEq!2459 (Int Int) Bool)

(assert (=> d!1072976 (= res!1481895 (semiInverseModEq!2459 (toChars!7921 (transformation!5770 (rule!8570 token!511))) (toValue!8062 (transformation!5770 (rule!8570 token!511)))))))

(assert (=> d!1072976 (= (inv!51971 (transformation!5770 (rule!8570 token!511))) e!2261300)))

(declare-fun b!3652330 () Bool)

(declare-fun equivClasses!2358 (Int Int) Bool)

(assert (=> b!3652330 (= e!2261300 (equivClasses!2358 (toChars!7921 (transformation!5770 (rule!8570 token!511))) (toValue!8062 (transformation!5770 (rule!8570 token!511)))))))

(assert (= (and d!1072976 res!1481895) b!3652330))

(declare-fun m!4157155 () Bool)

(assert (=> d!1072976 m!4157155))

(declare-fun m!4157157 () Bool)

(assert (=> b!3652330 m!4157157))

(assert (=> b!3652106 d!1072976))

(declare-fun d!1072994 () Bool)

(assert (=> d!1072994 (= (isEmpty!22828 (_2!22326 lt!1267387)) ((_ is Nil!38518) (_2!22326 lt!1267387)))))

(assert (=> b!3652087 d!1072994))

(declare-fun d!1072998 () Bool)

(assert (=> d!1072998 (not (matchR!5098 (regex!5770 (rule!8570 (_1!22326 lt!1267378))) lt!1267382))))

(declare-fun lt!1267439 () Unit!55548)

(declare-fun choose!21541 (Regex!10529 List!38642 C!21244) Unit!55548)

(assert (=> d!1072998 (= lt!1267439 (choose!21541 (regex!5770 (rule!8570 (_1!22326 lt!1267378))) lt!1267382 lt!1267365))))

(assert (=> d!1072998 (validRegex!4821 (regex!5770 (rule!8570 (_1!22326 lt!1267378))))))

(assert (=> d!1072998 (= (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!718 (regex!5770 (rule!8570 (_1!22326 lt!1267378))) lt!1267382 lt!1267365) lt!1267439)))

(declare-fun bs!572289 () Bool)

(assert (= bs!572289 d!1072998))

(assert (=> bs!572289 m!4156869))

(declare-fun m!4157187 () Bool)

(assert (=> bs!572289 m!4157187))

(assert (=> bs!572289 m!4156951))

(assert (=> bm!263943 d!1072998))

(declare-fun d!1073012 () Bool)

(declare-fun lt!1267443 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!5558 (List!38642) (InoxSet C!21244))

(assert (=> d!1073012 (= lt!1267443 (select (content!5558 (usedCharacters!982 (regex!5770 anOtherTypeRule!33))) lt!1267356))))

(declare-fun e!2261319 () Bool)

(assert (=> d!1073012 (= lt!1267443 e!2261319)))

(declare-fun res!1481912 () Bool)

(assert (=> d!1073012 (=> (not res!1481912) (not e!2261319))))

(assert (=> d!1073012 (= res!1481912 ((_ is Cons!38518) (usedCharacters!982 (regex!5770 anOtherTypeRule!33))))))

(assert (=> d!1073012 (= (contains!7606 (usedCharacters!982 (regex!5770 anOtherTypeRule!33)) lt!1267356) lt!1267443)))

(declare-fun b!3652358 () Bool)

(declare-fun e!2261318 () Bool)

(assert (=> b!3652358 (= e!2261319 e!2261318)))

(declare-fun res!1481911 () Bool)

(assert (=> b!3652358 (=> res!1481911 e!2261318)))

(assert (=> b!3652358 (= res!1481911 (= (h!43938 (usedCharacters!982 (regex!5770 anOtherTypeRule!33))) lt!1267356))))

(declare-fun b!3652359 () Bool)

(assert (=> b!3652359 (= e!2261318 (contains!7606 (t!297625 (usedCharacters!982 (regex!5770 anOtherTypeRule!33))) lt!1267356))))

(assert (= (and d!1073012 res!1481912) b!3652358))

(assert (= (and b!3652358 (not res!1481911)) b!3652359))

(assert (=> d!1073012 m!4157005))

(declare-fun m!4157197 () Bool)

(assert (=> d!1073012 m!4157197))

(declare-fun m!4157199 () Bool)

(assert (=> d!1073012 m!4157199))

(declare-fun m!4157201 () Bool)

(assert (=> b!3652359 m!4157201))

(assert (=> b!3652104 d!1073012))

(declare-fun b!3652360 () Bool)

(declare-fun e!2261321 () List!38642)

(declare-fun e!2261322 () List!38642)

(assert (=> b!3652360 (= e!2261321 e!2261322)))

(declare-fun c!631274 () Bool)

(assert (=> b!3652360 (= c!631274 ((_ is Union!10529) (regex!5770 anOtherTypeRule!33)))))

(declare-fun bm!263988 () Bool)

(declare-fun call!263994 () List!38642)

(assert (=> bm!263988 (= call!263994 (usedCharacters!982 (ite c!631274 (regTwo!21571 (regex!5770 anOtherTypeRule!33)) (regOne!21570 (regex!5770 anOtherTypeRule!33)))))))

(declare-fun call!263993 () List!38642)

(declare-fun bm!263989 () Bool)

(declare-fun c!631275 () Bool)

(assert (=> bm!263989 (= call!263993 (usedCharacters!982 (ite c!631275 (reg!10858 (regex!5770 anOtherTypeRule!33)) (ite c!631274 (regOne!21571 (regex!5770 anOtherTypeRule!33)) (regTwo!21570 (regex!5770 anOtherTypeRule!33))))))))

(declare-fun d!1073016 () Bool)

(declare-fun c!631276 () Bool)

(assert (=> d!1073016 (= c!631276 (or ((_ is EmptyExpr!10529) (regex!5770 anOtherTypeRule!33)) ((_ is EmptyLang!10529) (regex!5770 anOtherTypeRule!33))))))

(declare-fun e!2261323 () List!38642)

(assert (=> d!1073016 (= (usedCharacters!982 (regex!5770 anOtherTypeRule!33)) e!2261323)))

(declare-fun b!3652361 () Bool)

(declare-fun e!2261320 () List!38642)

(assert (=> b!3652361 (= e!2261320 (Cons!38518 (c!631208 (regex!5770 anOtherTypeRule!33)) Nil!38518))))

(declare-fun call!263995 () List!38642)

(declare-fun bm!263990 () Bool)

(declare-fun call!263996 () List!38642)

(assert (=> bm!263990 (= call!263996 (++!9586 (ite c!631274 call!263995 call!263994) (ite c!631274 call!263994 call!263995)))))

(declare-fun b!3652362 () Bool)

(assert (=> b!3652362 (= e!2261322 call!263996)))

(declare-fun b!3652363 () Bool)

(assert (=> b!3652363 (= e!2261323 e!2261320)))

(declare-fun c!631273 () Bool)

(assert (=> b!3652363 (= c!631273 ((_ is ElementMatch!10529) (regex!5770 anOtherTypeRule!33)))))

(declare-fun b!3652364 () Bool)

(assert (=> b!3652364 (= e!2261322 call!263996)))

(declare-fun bm!263991 () Bool)

(assert (=> bm!263991 (= call!263995 call!263993)))

(declare-fun b!3652365 () Bool)

(assert (=> b!3652365 (= e!2261323 Nil!38518)))

(declare-fun b!3652366 () Bool)

(assert (=> b!3652366 (= c!631275 ((_ is Star!10529) (regex!5770 anOtherTypeRule!33)))))

(assert (=> b!3652366 (= e!2261320 e!2261321)))

(declare-fun b!3652367 () Bool)

(assert (=> b!3652367 (= e!2261321 call!263993)))

(assert (= (and d!1073016 c!631276) b!3652365))

(assert (= (and d!1073016 (not c!631276)) b!3652363))

(assert (= (and b!3652363 c!631273) b!3652361))

(assert (= (and b!3652363 (not c!631273)) b!3652366))

(assert (= (and b!3652366 c!631275) b!3652367))

(assert (= (and b!3652366 (not c!631275)) b!3652360))

(assert (= (and b!3652360 c!631274) b!3652364))

(assert (= (and b!3652360 (not c!631274)) b!3652362))

(assert (= (or b!3652364 b!3652362) bm!263991))

(assert (= (or b!3652364 b!3652362) bm!263988))

(assert (= (or b!3652364 b!3652362) bm!263990))

(assert (= (or b!3652367 bm!263991) bm!263989))

(declare-fun m!4157203 () Bool)

(assert (=> bm!263988 m!4157203))

(declare-fun m!4157205 () Bool)

(assert (=> bm!263989 m!4157205))

(declare-fun m!4157207 () Bool)

(assert (=> bm!263990 m!4157207))

(assert (=> b!3652104 d!1073016))

(declare-fun d!1073018 () Bool)

(declare-fun isEmpty!22830 (Option!8168) Bool)

(assert (=> d!1073018 (= (isDefined!6401 lt!1267392) (not (isEmpty!22830 lt!1267392)))))

(declare-fun bs!572290 () Bool)

(assert (= bs!572290 d!1073018))

(declare-fun m!4157209 () Bool)

(assert (=> bs!572290 m!4157209))

(assert (=> b!3652084 d!1073018))

(declare-fun b!3652404 () Bool)

(declare-fun e!2261340 () Option!8168)

(declare-fun lt!1267469 () Option!8168)

(declare-fun lt!1267471 () Option!8168)

(assert (=> b!3652404 (= e!2261340 (ite (and ((_ is None!8167) lt!1267469) ((_ is None!8167) lt!1267471)) None!8167 (ite ((_ is None!8167) lt!1267471) lt!1267469 (ite ((_ is None!8167) lt!1267469) lt!1267471 (ite (>= (size!29415 (_1!22326 (v!38031 lt!1267469))) (size!29415 (_1!22326 (v!38031 lt!1267471)))) lt!1267469 lt!1267471)))))))

(declare-fun call!263999 () Option!8168)

(assert (=> b!3652404 (= lt!1267469 call!263999)))

(assert (=> b!3652404 (= lt!1267471 (maxPrefix!2893 thiss!23823 (t!297626 rules!3307) lt!1267377))))

(declare-fun d!1073020 () Bool)

(declare-fun e!2261339 () Bool)

(assert (=> d!1073020 e!2261339))

(declare-fun res!1481941 () Bool)

(assert (=> d!1073020 (=> res!1481941 e!2261339)))

(declare-fun lt!1267467 () Option!8168)

(assert (=> d!1073020 (= res!1481941 (isEmpty!22830 lt!1267467))))

(assert (=> d!1073020 (= lt!1267467 e!2261340)))

(declare-fun c!631281 () Bool)

(assert (=> d!1073020 (= c!631281 (and ((_ is Cons!38519) rules!3307) ((_ is Nil!38519) (t!297626 rules!3307))))))

(declare-fun lt!1267468 () Unit!55548)

(declare-fun lt!1267470 () Unit!55548)

(assert (=> d!1073020 (= lt!1267468 lt!1267470)))

(assert (=> d!1073020 (isPrefix!3133 lt!1267377 lt!1267377)))

(declare-fun lemmaIsPrefixRefl!1979 (List!38642 List!38642) Unit!55548)

(assert (=> d!1073020 (= lt!1267470 (lemmaIsPrefixRefl!1979 lt!1267377 lt!1267377))))

(declare-fun rulesValidInductive!2044 (LexerInterface!5359 List!38643) Bool)

(assert (=> d!1073020 (rulesValidInductive!2044 thiss!23823 rules!3307)))

(assert (=> d!1073020 (= (maxPrefix!2893 thiss!23823 rules!3307 lt!1267377) lt!1267467)))

(declare-fun b!3652405 () Bool)

(declare-fun res!1481947 () Bool)

(declare-fun e!2261338 () Bool)

(assert (=> b!3652405 (=> (not res!1481947) (not e!2261338))))

(assert (=> b!3652405 (= res!1481947 (matchR!5098 (regex!5770 (rule!8570 (_1!22326 (get!12663 lt!1267467)))) (list!14276 (charsOf!3784 (_1!22326 (get!12663 lt!1267467))))))))

(declare-fun b!3652406 () Bool)

(assert (=> b!3652406 (= e!2261338 (contains!7605 rules!3307 (rule!8570 (_1!22326 (get!12663 lt!1267467)))))))

(declare-fun b!3652407 () Bool)

(declare-fun res!1481945 () Bool)

(assert (=> b!3652407 (=> (not res!1481945) (not e!2261338))))

(assert (=> b!3652407 (= res!1481945 (< (size!29417 (_2!22326 (get!12663 lt!1267467))) (size!29417 lt!1267377)))))

(declare-fun b!3652408 () Bool)

(declare-fun res!1481942 () Bool)

(assert (=> b!3652408 (=> (not res!1481942) (not e!2261338))))

(assert (=> b!3652408 (= res!1481942 (= (++!9586 (list!14276 (charsOf!3784 (_1!22326 (get!12663 lt!1267467)))) (_2!22326 (get!12663 lt!1267467))) lt!1267377))))

(declare-fun b!3652409 () Bool)

(assert (=> b!3652409 (= e!2261339 e!2261338)))

(declare-fun res!1481946 () Bool)

(assert (=> b!3652409 (=> (not res!1481946) (not e!2261338))))

(assert (=> b!3652409 (= res!1481946 (isDefined!6401 lt!1267467))))

(declare-fun bm!263994 () Bool)

(assert (=> bm!263994 (= call!263999 (maxPrefixOneRule!2031 thiss!23823 (h!43939 rules!3307) lt!1267377))))

(declare-fun b!3652410 () Bool)

(declare-fun res!1481943 () Bool)

(assert (=> b!3652410 (=> (not res!1481943) (not e!2261338))))

(assert (=> b!3652410 (= res!1481943 (= (list!14276 (charsOf!3784 (_1!22326 (get!12663 lt!1267467)))) (originalCharacters!6484 (_1!22326 (get!12663 lt!1267467)))))))

(declare-fun b!3652411 () Bool)

(assert (=> b!3652411 (= e!2261340 call!263999)))

(declare-fun b!3652412 () Bool)

(declare-fun res!1481944 () Bool)

(assert (=> b!3652412 (=> (not res!1481944) (not e!2261338))))

(assert (=> b!3652412 (= res!1481944 (= (value!184905 (_1!22326 (get!12663 lt!1267467))) (apply!9272 (transformation!5770 (rule!8570 (_1!22326 (get!12663 lt!1267467)))) (seqFromList!4319 (originalCharacters!6484 (_1!22326 (get!12663 lt!1267467)))))))))

(assert (= (and d!1073020 c!631281) b!3652411))

(assert (= (and d!1073020 (not c!631281)) b!3652404))

(assert (= (or b!3652411 b!3652404) bm!263994))

(assert (= (and d!1073020 (not res!1481941)) b!3652409))

(assert (= (and b!3652409 res!1481946) b!3652410))

(assert (= (and b!3652410 res!1481943) b!3652407))

(assert (= (and b!3652407 res!1481945) b!3652408))

(assert (= (and b!3652408 res!1481942) b!3652412))

(assert (= (and b!3652412 res!1481944) b!3652405))

(assert (= (and b!3652405 res!1481947) b!3652406))

(declare-fun m!4157213 () Bool)

(assert (=> b!3652405 m!4157213))

(declare-fun m!4157215 () Bool)

(assert (=> b!3652405 m!4157215))

(assert (=> b!3652405 m!4157215))

(declare-fun m!4157217 () Bool)

(assert (=> b!3652405 m!4157217))

(assert (=> b!3652405 m!4157217))

(declare-fun m!4157219 () Bool)

(assert (=> b!3652405 m!4157219))

(assert (=> b!3652408 m!4157213))

(assert (=> b!3652408 m!4157215))

(assert (=> b!3652408 m!4157215))

(assert (=> b!3652408 m!4157217))

(assert (=> b!3652408 m!4157217))

(declare-fun m!4157221 () Bool)

(assert (=> b!3652408 m!4157221))

(declare-fun m!4157223 () Bool)

(assert (=> bm!263994 m!4157223))

(declare-fun m!4157225 () Bool)

(assert (=> b!3652404 m!4157225))

(declare-fun m!4157227 () Bool)

(assert (=> d!1073020 m!4157227))

(declare-fun m!4157229 () Bool)

(assert (=> d!1073020 m!4157229))

(declare-fun m!4157231 () Bool)

(assert (=> d!1073020 m!4157231))

(declare-fun m!4157233 () Bool)

(assert (=> d!1073020 m!4157233))

(assert (=> b!3652406 m!4157213))

(declare-fun m!4157235 () Bool)

(assert (=> b!3652406 m!4157235))

(assert (=> b!3652410 m!4157213))

(assert (=> b!3652410 m!4157215))

(assert (=> b!3652410 m!4157215))

(assert (=> b!3652410 m!4157217))

(assert (=> b!3652407 m!4157213))

(declare-fun m!4157237 () Bool)

(assert (=> b!3652407 m!4157237))

(declare-fun m!4157239 () Bool)

(assert (=> b!3652407 m!4157239))

(declare-fun m!4157241 () Bool)

(assert (=> b!3652409 m!4157241))

(assert (=> b!3652412 m!4157213))

(declare-fun m!4157243 () Bool)

(assert (=> b!3652412 m!4157243))

(assert (=> b!3652412 m!4157243))

(declare-fun m!4157245 () Bool)

(assert (=> b!3652412 m!4157245))

(assert (=> b!3652084 d!1073020))

(declare-fun d!1073024 () Bool)

(declare-fun list!14278 (Conc!11771) List!38642)

(assert (=> d!1073024 (= (list!14276 lt!1267384) (list!14278 (c!631209 lt!1267384)))))

(declare-fun bs!572292 () Bool)

(assert (= bs!572292 d!1073024))

(declare-fun m!4157247 () Bool)

(assert (=> bs!572292 m!4157247))

(assert (=> b!3652084 d!1073024))

(declare-fun d!1073026 () Bool)

(declare-fun lt!1267479 () BalanceConc!23156)

(assert (=> d!1073026 (= (list!14276 lt!1267479) (originalCharacters!6484 token!511))))

(declare-fun dynLambda!16795 (Int TokenValue!6000) BalanceConc!23156)

(assert (=> d!1073026 (= lt!1267479 (dynLambda!16795 (toChars!7921 (transformation!5770 (rule!8570 token!511))) (value!184905 token!511)))))

(assert (=> d!1073026 (= (charsOf!3784 token!511) lt!1267479)))

(declare-fun b_lambda!108299 () Bool)

(assert (=> (not b_lambda!108299) (not d!1073026)))

(declare-fun tb!210757 () Bool)

(declare-fun t!297644 () Bool)

(assert (=> (and b!3652089 (= (toChars!7921 (transformation!5770 rule!403)) (toChars!7921 (transformation!5770 (rule!8570 token!511)))) t!297644) tb!210757))

(declare-fun b!3652426 () Bool)

(declare-fun e!2261347 () Bool)

(declare-fun tp!1113289 () Bool)

(declare-fun inv!51975 (Conc!11771) Bool)

(assert (=> b!3652426 (= e!2261347 (and (inv!51975 (c!631209 (dynLambda!16795 (toChars!7921 (transformation!5770 (rule!8570 token!511))) (value!184905 token!511)))) tp!1113289))))

(declare-fun result!256640 () Bool)

(declare-fun inv!51976 (BalanceConc!23156) Bool)

(assert (=> tb!210757 (= result!256640 (and (inv!51976 (dynLambda!16795 (toChars!7921 (transformation!5770 (rule!8570 token!511))) (value!184905 token!511))) e!2261347))))

(assert (= tb!210757 b!3652426))

(declare-fun m!4157279 () Bool)

(assert (=> b!3652426 m!4157279))

(declare-fun m!4157281 () Bool)

(assert (=> tb!210757 m!4157281))

(assert (=> d!1073026 t!297644))

(declare-fun b_and!270267 () Bool)

(assert (= b_and!270237 (and (=> t!297644 result!256640) b_and!270267)))

(declare-fun t!297646 () Bool)

(declare-fun tb!210759 () Bool)

(assert (=> (and b!3652094 (= (toChars!7921 (transformation!5770 (rule!8570 token!511))) (toChars!7921 (transformation!5770 (rule!8570 token!511)))) t!297646) tb!210759))

(declare-fun result!256644 () Bool)

(assert (= result!256644 result!256640))

(assert (=> d!1073026 t!297646))

(declare-fun b_and!270269 () Bool)

(assert (= b_and!270241 (and (=> t!297646 result!256644) b_and!270269)))

(declare-fun t!297648 () Bool)

(declare-fun tb!210761 () Bool)

(assert (=> (and b!3652093 (= (toChars!7921 (transformation!5770 anOtherTypeRule!33)) (toChars!7921 (transformation!5770 (rule!8570 token!511)))) t!297648) tb!210761))

(declare-fun result!256646 () Bool)

(assert (= result!256646 result!256640))

(assert (=> d!1073026 t!297648))

(declare-fun b_and!270271 () Bool)

(assert (= b_and!270245 (and (=> t!297648 result!256646) b_and!270271)))

(declare-fun tb!210763 () Bool)

(declare-fun t!297650 () Bool)

(assert (=> (and b!3652088 (= (toChars!7921 (transformation!5770 (h!43939 rules!3307))) (toChars!7921 (transformation!5770 (rule!8570 token!511)))) t!297650) tb!210763))

(declare-fun result!256648 () Bool)

(assert (= result!256648 result!256640))

(assert (=> d!1073026 t!297650))

(declare-fun b_and!270273 () Bool)

(assert (= b_and!270249 (and (=> t!297650 result!256648) b_and!270273)))

(declare-fun m!4157291 () Bool)

(assert (=> d!1073026 m!4157291))

(declare-fun m!4157293 () Bool)

(assert (=> d!1073026 m!4157293))

(assert (=> b!3652084 d!1073026))

(declare-fun d!1073028 () Bool)

(assert (=> d!1073028 (= (inv!51968 (tag!6536 (h!43939 rules!3307))) (= (mod (str.len (value!184904 (tag!6536 (h!43939 rules!3307)))) 2) 0))))

(assert (=> b!3652105 d!1073028))

(declare-fun d!1073030 () Bool)

(declare-fun res!1481955 () Bool)

(declare-fun e!2261348 () Bool)

(assert (=> d!1073030 (=> (not res!1481955) (not e!2261348))))

(assert (=> d!1073030 (= res!1481955 (semiInverseModEq!2459 (toChars!7921 (transformation!5770 (h!43939 rules!3307))) (toValue!8062 (transformation!5770 (h!43939 rules!3307)))))))

(assert (=> d!1073030 (= (inv!51971 (transformation!5770 (h!43939 rules!3307))) e!2261348)))

(declare-fun b!3652427 () Bool)

(assert (=> b!3652427 (= e!2261348 (equivClasses!2358 (toChars!7921 (transformation!5770 (h!43939 rules!3307))) (toValue!8062 (transformation!5770 (h!43939 rules!3307)))))))

(assert (= (and d!1073030 res!1481955) b!3652427))

(declare-fun m!4157301 () Bool)

(assert (=> d!1073030 m!4157301))

(declare-fun m!4157303 () Bool)

(assert (=> b!3652427 m!4157303))

(assert (=> b!3652105 d!1073030))

(declare-fun b!3652442 () Bool)

(declare-fun e!2261357 () List!38642)

(assert (=> b!3652442 (= e!2261357 (_2!22326 lt!1267378))))

(declare-fun d!1073034 () Bool)

(declare-fun e!2261356 () Bool)

(assert (=> d!1073034 e!2261356))

(declare-fun res!1481961 () Bool)

(assert (=> d!1073034 (=> (not res!1481961) (not e!2261356))))

(declare-fun lt!1267485 () List!38642)

(assert (=> d!1073034 (= res!1481961 (= (content!5558 lt!1267485) ((_ map or) (content!5558 lt!1267382) (content!5558 (_2!22326 lt!1267378)))))))

(assert (=> d!1073034 (= lt!1267485 e!2261357)))

(declare-fun c!631288 () Bool)

(assert (=> d!1073034 (= c!631288 ((_ is Nil!38518) lt!1267382))))

(assert (=> d!1073034 (= (++!9586 lt!1267382 (_2!22326 lt!1267378)) lt!1267485)))

(declare-fun b!3652443 () Bool)

(assert (=> b!3652443 (= e!2261357 (Cons!38518 (h!43938 lt!1267382) (++!9586 (t!297625 lt!1267382) (_2!22326 lt!1267378))))))

(declare-fun b!3652445 () Bool)

(assert (=> b!3652445 (= e!2261356 (or (not (= (_2!22326 lt!1267378) Nil!38518)) (= lt!1267485 lt!1267382)))))

(declare-fun b!3652444 () Bool)

(declare-fun res!1481960 () Bool)

(assert (=> b!3652444 (=> (not res!1481960) (not e!2261356))))

(assert (=> b!3652444 (= res!1481960 (= (size!29417 lt!1267485) (+ (size!29417 lt!1267382) (size!29417 (_2!22326 lt!1267378)))))))

(assert (= (and d!1073034 c!631288) b!3652442))

(assert (= (and d!1073034 (not c!631288)) b!3652443))

(assert (= (and d!1073034 res!1481961) b!3652444))

(assert (= (and b!3652444 res!1481960) b!3652445))

(declare-fun m!4157309 () Bool)

(assert (=> d!1073034 m!4157309))

(declare-fun m!4157311 () Bool)

(assert (=> d!1073034 m!4157311))

(declare-fun m!4157313 () Bool)

(assert (=> d!1073034 m!4157313))

(declare-fun m!4157315 () Bool)

(assert (=> b!3652443 m!4157315))

(declare-fun m!4157317 () Bool)

(assert (=> b!3652444 m!4157317))

(assert (=> b!3652444 m!4156939))

(declare-fun m!4157319 () Bool)

(assert (=> b!3652444 m!4157319))

(assert (=> b!3652083 d!1073034))

(declare-fun b!3652448 () Bool)

(declare-fun e!2261360 () Option!8168)

(declare-fun lt!1267488 () Option!8168)

(declare-fun lt!1267490 () Option!8168)

(assert (=> b!3652448 (= e!2261360 (ite (and ((_ is None!8167) lt!1267488) ((_ is None!8167) lt!1267490)) None!8167 (ite ((_ is None!8167) lt!1267490) lt!1267488 (ite ((_ is None!8167) lt!1267488) lt!1267490 (ite (>= (size!29415 (_1!22326 (v!38031 lt!1267488))) (size!29415 (_1!22326 (v!38031 lt!1267490)))) lt!1267488 lt!1267490)))))))

(declare-fun call!264000 () Option!8168)

(assert (=> b!3652448 (= lt!1267488 call!264000)))

(assert (=> b!3652448 (= lt!1267490 (maxPrefix!2893 thiss!23823 (t!297626 rules!3307) lt!1267389))))

(declare-fun d!1073040 () Bool)

(declare-fun e!2261359 () Bool)

(assert (=> d!1073040 e!2261359))

(declare-fun res!1481962 () Bool)

(assert (=> d!1073040 (=> res!1481962 e!2261359)))

(declare-fun lt!1267486 () Option!8168)

(assert (=> d!1073040 (= res!1481962 (isEmpty!22830 lt!1267486))))

(assert (=> d!1073040 (= lt!1267486 e!2261360)))

(declare-fun c!631289 () Bool)

(assert (=> d!1073040 (= c!631289 (and ((_ is Cons!38519) rules!3307) ((_ is Nil!38519) (t!297626 rules!3307))))))

(declare-fun lt!1267487 () Unit!55548)

(declare-fun lt!1267489 () Unit!55548)

(assert (=> d!1073040 (= lt!1267487 lt!1267489)))

(assert (=> d!1073040 (isPrefix!3133 lt!1267389 lt!1267389)))

(assert (=> d!1073040 (= lt!1267489 (lemmaIsPrefixRefl!1979 lt!1267389 lt!1267389))))

(assert (=> d!1073040 (rulesValidInductive!2044 thiss!23823 rules!3307)))

(assert (=> d!1073040 (= (maxPrefix!2893 thiss!23823 rules!3307 lt!1267389) lt!1267486)))

(declare-fun b!3652449 () Bool)

(declare-fun res!1481968 () Bool)

(declare-fun e!2261358 () Bool)

(assert (=> b!3652449 (=> (not res!1481968) (not e!2261358))))

(assert (=> b!3652449 (= res!1481968 (matchR!5098 (regex!5770 (rule!8570 (_1!22326 (get!12663 lt!1267486)))) (list!14276 (charsOf!3784 (_1!22326 (get!12663 lt!1267486))))))))

(declare-fun b!3652450 () Bool)

(assert (=> b!3652450 (= e!2261358 (contains!7605 rules!3307 (rule!8570 (_1!22326 (get!12663 lt!1267486)))))))

(declare-fun b!3652451 () Bool)

(declare-fun res!1481966 () Bool)

(assert (=> b!3652451 (=> (not res!1481966) (not e!2261358))))

(assert (=> b!3652451 (= res!1481966 (< (size!29417 (_2!22326 (get!12663 lt!1267486))) (size!29417 lt!1267389)))))

(declare-fun b!3652452 () Bool)

(declare-fun res!1481963 () Bool)

(assert (=> b!3652452 (=> (not res!1481963) (not e!2261358))))

(assert (=> b!3652452 (= res!1481963 (= (++!9586 (list!14276 (charsOf!3784 (_1!22326 (get!12663 lt!1267486)))) (_2!22326 (get!12663 lt!1267486))) lt!1267389))))

(declare-fun b!3652453 () Bool)

(assert (=> b!3652453 (= e!2261359 e!2261358)))

(declare-fun res!1481967 () Bool)

(assert (=> b!3652453 (=> (not res!1481967) (not e!2261358))))

(assert (=> b!3652453 (= res!1481967 (isDefined!6401 lt!1267486))))

(declare-fun bm!263995 () Bool)

(assert (=> bm!263995 (= call!264000 (maxPrefixOneRule!2031 thiss!23823 (h!43939 rules!3307) lt!1267389))))

(declare-fun b!3652454 () Bool)

(declare-fun res!1481964 () Bool)

(assert (=> b!3652454 (=> (not res!1481964) (not e!2261358))))

(assert (=> b!3652454 (= res!1481964 (= (list!14276 (charsOf!3784 (_1!22326 (get!12663 lt!1267486)))) (originalCharacters!6484 (_1!22326 (get!12663 lt!1267486)))))))

(declare-fun b!3652455 () Bool)

(assert (=> b!3652455 (= e!2261360 call!264000)))

(declare-fun b!3652456 () Bool)

(declare-fun res!1481965 () Bool)

(assert (=> b!3652456 (=> (not res!1481965) (not e!2261358))))

(assert (=> b!3652456 (= res!1481965 (= (value!184905 (_1!22326 (get!12663 lt!1267486))) (apply!9272 (transformation!5770 (rule!8570 (_1!22326 (get!12663 lt!1267486)))) (seqFromList!4319 (originalCharacters!6484 (_1!22326 (get!12663 lt!1267486)))))))))

(assert (= (and d!1073040 c!631289) b!3652455))

(assert (= (and d!1073040 (not c!631289)) b!3652448))

(assert (= (or b!3652455 b!3652448) bm!263995))

(assert (= (and d!1073040 (not res!1481962)) b!3652453))

(assert (= (and b!3652453 res!1481967) b!3652454))

(assert (= (and b!3652454 res!1481964) b!3652451))

(assert (= (and b!3652451 res!1481966) b!3652452))

(assert (= (and b!3652452 res!1481963) b!3652456))

(assert (= (and b!3652456 res!1481965) b!3652449))

(assert (= (and b!3652449 res!1481968) b!3652450))

(declare-fun m!4157325 () Bool)

(assert (=> b!3652449 m!4157325))

(declare-fun m!4157327 () Bool)

(assert (=> b!3652449 m!4157327))

(assert (=> b!3652449 m!4157327))

(declare-fun m!4157329 () Bool)

(assert (=> b!3652449 m!4157329))

(assert (=> b!3652449 m!4157329))

(declare-fun m!4157331 () Bool)

(assert (=> b!3652449 m!4157331))

(assert (=> b!3652452 m!4157325))

(assert (=> b!3652452 m!4157327))

(assert (=> b!3652452 m!4157327))

(assert (=> b!3652452 m!4157329))

(assert (=> b!3652452 m!4157329))

(declare-fun m!4157333 () Bool)

(assert (=> b!3652452 m!4157333))

(declare-fun m!4157335 () Bool)

(assert (=> bm!263995 m!4157335))

(declare-fun m!4157337 () Bool)

(assert (=> b!3652448 m!4157337))

(declare-fun m!4157339 () Bool)

(assert (=> d!1073040 m!4157339))

(declare-fun m!4157341 () Bool)

(assert (=> d!1073040 m!4157341))

(declare-fun m!4157343 () Bool)

(assert (=> d!1073040 m!4157343))

(assert (=> d!1073040 m!4157233))

(assert (=> b!3652450 m!4157325))

(declare-fun m!4157345 () Bool)

(assert (=> b!3652450 m!4157345))

(assert (=> b!3652454 m!4157325))

(assert (=> b!3652454 m!4157327))

(assert (=> b!3652454 m!4157327))

(assert (=> b!3652454 m!4157329))

(assert (=> b!3652451 m!4157325))

(declare-fun m!4157347 () Bool)

(assert (=> b!3652451 m!4157347))

(declare-fun m!4157349 () Bool)

(assert (=> b!3652451 m!4157349))

(declare-fun m!4157351 () Bool)

(assert (=> b!3652453 m!4157351))

(assert (=> b!3652456 m!4157325))

(declare-fun m!4157353 () Bool)

(assert (=> b!3652456 m!4157353))

(assert (=> b!3652456 m!4157353))

(declare-fun m!4157355 () Bool)

(assert (=> b!3652456 m!4157355))

(assert (=> b!3652083 d!1073040))

(declare-fun d!1073044 () Bool)

(assert (=> d!1073044 (= (list!14276 lt!1267363) (list!14278 (c!631209 lt!1267363)))))

(declare-fun bs!572294 () Bool)

(assert (= bs!572294 d!1073044))

(declare-fun m!4157357 () Bool)

(assert (=> bs!572294 m!4157357))

(assert (=> b!3652083 d!1073044))

(declare-fun b!3652485 () Bool)

(declare-fun e!2261380 () Bool)

(declare-fun e!2261381 () Bool)

(assert (=> b!3652485 (= e!2261380 e!2261381)))

(declare-fun res!1481993 () Bool)

(assert (=> b!3652485 (=> (not res!1481993) (not e!2261381))))

(assert (=> b!3652485 (= res!1481993 (not ((_ is Nil!38518) lt!1267389)))))

(declare-fun b!3652486 () Bool)

(declare-fun res!1481991 () Bool)

(assert (=> b!3652486 (=> (not res!1481991) (not e!2261381))))

(assert (=> b!3652486 (= res!1481991 (= (head!7786 lt!1267382) (head!7786 lt!1267389)))))

(declare-fun b!3652488 () Bool)

(declare-fun e!2261382 () Bool)

(assert (=> b!3652488 (= e!2261382 (>= (size!29417 lt!1267389) (size!29417 lt!1267382)))))

(declare-fun d!1073046 () Bool)

(assert (=> d!1073046 e!2261382))

(declare-fun res!1481992 () Bool)

(assert (=> d!1073046 (=> res!1481992 e!2261382)))

(declare-fun lt!1267497 () Bool)

(assert (=> d!1073046 (= res!1481992 (not lt!1267497))))

(assert (=> d!1073046 (= lt!1267497 e!2261380)))

(declare-fun res!1481994 () Bool)

(assert (=> d!1073046 (=> res!1481994 e!2261380)))

(assert (=> d!1073046 (= res!1481994 ((_ is Nil!38518) lt!1267382))))

(assert (=> d!1073046 (= (isPrefix!3133 lt!1267382 lt!1267389) lt!1267497)))

(declare-fun b!3652487 () Bool)

(assert (=> b!3652487 (= e!2261381 (isPrefix!3133 (tail!5657 lt!1267382) (tail!5657 lt!1267389)))))

(assert (= (and d!1073046 (not res!1481994)) b!3652485))

(assert (= (and b!3652485 res!1481993) b!3652486))

(assert (= (and b!3652486 res!1481991) b!3652487))

(assert (= (and d!1073046 (not res!1481992)) b!3652488))

(assert (=> b!3652486 m!4156983))

(declare-fun m!4157375 () Bool)

(assert (=> b!3652486 m!4157375))

(assert (=> b!3652488 m!4157349))

(assert (=> b!3652488 m!4156939))

(declare-fun m!4157377 () Bool)

(assert (=> b!3652487 m!4157377))

(declare-fun m!4157379 () Bool)

(assert (=> b!3652487 m!4157379))

(assert (=> b!3652487 m!4157377))

(assert (=> b!3652487 m!4157379))

(declare-fun m!4157381 () Bool)

(assert (=> b!3652487 m!4157381))

(assert (=> b!3652083 d!1073046))

(declare-fun b!3652516 () Bool)

(declare-fun e!2261400 () Option!8169)

(assert (=> b!3652516 (= e!2261400 (Some!8168 (h!43939 rules!3307)))))

(declare-fun b!3652517 () Bool)

(declare-fun e!2261401 () Option!8169)

(assert (=> b!3652517 (= e!2261401 None!8168)))

(declare-fun b!3652518 () Bool)

(declare-fun e!2261402 () Bool)

(declare-fun lt!1267509 () Option!8169)

(assert (=> b!3652518 (= e!2261402 (= (tag!6536 (get!12664 lt!1267509)) (tag!6536 (rule!8570 (_1!22326 lt!1267378)))))))

(declare-fun d!1073054 () Bool)

(declare-fun e!2261403 () Bool)

(assert (=> d!1073054 e!2261403))

(declare-fun res!1482002 () Bool)

(assert (=> d!1073054 (=> res!1482002 e!2261403)))

(declare-fun isEmpty!22832 (Option!8169) Bool)

(assert (=> d!1073054 (= res!1482002 (isEmpty!22832 lt!1267509))))

(assert (=> d!1073054 (= lt!1267509 e!2261400)))

(declare-fun c!631304 () Bool)

(assert (=> d!1073054 (= c!631304 (and ((_ is Cons!38519) rules!3307) (= (tag!6536 (h!43939 rules!3307)) (tag!6536 (rule!8570 (_1!22326 lt!1267378))))))))

(assert (=> d!1073054 (rulesInvariant!4756 thiss!23823 rules!3307)))

(assert (=> d!1073054 (= (getRuleFromTag!1374 thiss!23823 rules!3307 (tag!6536 (rule!8570 (_1!22326 lt!1267378)))) lt!1267509)))

(declare-fun b!3652519 () Bool)

(declare-fun lt!1267510 () Unit!55548)

(declare-fun lt!1267511 () Unit!55548)

(assert (=> b!3652519 (= lt!1267510 lt!1267511)))

(assert (=> b!3652519 (rulesInvariant!4756 thiss!23823 (t!297626 rules!3307))))

(declare-fun lemmaInvariantOnRulesThenOnTail!588 (LexerInterface!5359 Rule!11340 List!38643) Unit!55548)

(assert (=> b!3652519 (= lt!1267511 (lemmaInvariantOnRulesThenOnTail!588 thiss!23823 (h!43939 rules!3307) (t!297626 rules!3307)))))

(assert (=> b!3652519 (= e!2261401 (getRuleFromTag!1374 thiss!23823 (t!297626 rules!3307) (tag!6536 (rule!8570 (_1!22326 lt!1267378)))))))

(declare-fun b!3652520 () Bool)

(assert (=> b!3652520 (= e!2261403 e!2261402)))

(declare-fun res!1482003 () Bool)

(assert (=> b!3652520 (=> (not res!1482003) (not e!2261402))))

(assert (=> b!3652520 (= res!1482003 (contains!7605 rules!3307 (get!12664 lt!1267509)))))

(declare-fun b!3652521 () Bool)

(assert (=> b!3652521 (= e!2261400 e!2261401)))

(declare-fun c!631303 () Bool)

(assert (=> b!3652521 (= c!631303 (and ((_ is Cons!38519) rules!3307) (not (= (tag!6536 (h!43939 rules!3307)) (tag!6536 (rule!8570 (_1!22326 lt!1267378)))))))))

(assert (= (and d!1073054 c!631304) b!3652516))

(assert (= (and d!1073054 (not c!631304)) b!3652521))

(assert (= (and b!3652521 c!631303) b!3652519))

(assert (= (and b!3652521 (not c!631303)) b!3652517))

(assert (= (and d!1073054 (not res!1482002)) b!3652520))

(assert (= (and b!3652520 res!1482003) b!3652518))

(declare-fun m!4157391 () Bool)

(assert (=> b!3652518 m!4157391))

(declare-fun m!4157393 () Bool)

(assert (=> d!1073054 m!4157393))

(assert (=> d!1073054 m!4156915))

(declare-fun m!4157395 () Bool)

(assert (=> b!3652519 m!4157395))

(declare-fun m!4157397 () Bool)

(assert (=> b!3652519 m!4157397))

(declare-fun m!4157399 () Bool)

(assert (=> b!3652519 m!4157399))

(assert (=> b!3652520 m!4157391))

(assert (=> b!3652520 m!4157391))

(declare-fun m!4157401 () Bool)

(assert (=> b!3652520 m!4157401))

(assert (=> b!3652083 d!1073054))

(declare-fun b!3652522 () Bool)

(declare-fun e!2261405 () List!38642)

(assert (=> b!3652522 (= e!2261405 suffix!1395)))

(declare-fun d!1073060 () Bool)

(declare-fun e!2261404 () Bool)

(assert (=> d!1073060 e!2261404))

(declare-fun res!1482005 () Bool)

(assert (=> d!1073060 (=> (not res!1482005) (not e!2261404))))

(declare-fun lt!1267512 () List!38642)

(assert (=> d!1073060 (= res!1482005 (= (content!5558 lt!1267512) ((_ map or) (content!5558 lt!1267377) (content!5558 suffix!1395))))))

(assert (=> d!1073060 (= lt!1267512 e!2261405)))

(declare-fun c!631305 () Bool)

(assert (=> d!1073060 (= c!631305 ((_ is Nil!38518) lt!1267377))))

(assert (=> d!1073060 (= (++!9586 lt!1267377 suffix!1395) lt!1267512)))

(declare-fun b!3652523 () Bool)

(assert (=> b!3652523 (= e!2261405 (Cons!38518 (h!43938 lt!1267377) (++!9586 (t!297625 lt!1267377) suffix!1395)))))

(declare-fun b!3652525 () Bool)

(assert (=> b!3652525 (= e!2261404 (or (not (= suffix!1395 Nil!38518)) (= lt!1267512 lt!1267377)))))

(declare-fun b!3652524 () Bool)

(declare-fun res!1482004 () Bool)

(assert (=> b!3652524 (=> (not res!1482004) (not e!2261404))))

(assert (=> b!3652524 (= res!1482004 (= (size!29417 lt!1267512) (+ (size!29417 lt!1267377) (size!29417 suffix!1395))))))

(assert (= (and d!1073060 c!631305) b!3652522))

(assert (= (and d!1073060 (not c!631305)) b!3652523))

(assert (= (and d!1073060 res!1482005) b!3652524))

(assert (= (and b!3652524 res!1482004) b!3652525))

(declare-fun m!4157403 () Bool)

(assert (=> d!1073060 m!4157403))

(declare-fun m!4157405 () Bool)

(assert (=> d!1073060 m!4157405))

(declare-fun m!4157407 () Bool)

(assert (=> d!1073060 m!4157407))

(declare-fun m!4157409 () Bool)

(assert (=> b!3652523 m!4157409))

(declare-fun m!4157411 () Bool)

(assert (=> b!3652524 m!4157411))

(assert (=> b!3652524 m!4157239))

(declare-fun m!4157413 () Bool)

(assert (=> b!3652524 m!4157413))

(assert (=> b!3652083 d!1073060))

(declare-fun d!1073062 () Bool)

(assert (=> d!1073062 (= (isDefined!6400 lt!1267383) (not (isEmpty!22832 lt!1267383)))))

(declare-fun bs!572297 () Bool)

(assert (= bs!572297 d!1073062))

(declare-fun m!4157415 () Bool)

(assert (=> bs!572297 m!4157415))

(assert (=> b!3652083 d!1073062))

(declare-fun b!3652534 () Bool)

(declare-fun res!1482010 () Bool)

(declare-fun e!2261410 () Bool)

(assert (=> b!3652534 (=> (not res!1482010) (not e!2261410))))

(declare-fun lt!1267563 () Token!10906)

(assert (=> b!3652534 (= res!1482010 (matchR!5098 (regex!5770 (get!12664 (getRuleFromTag!1374 thiss!23823 rules!3307 (tag!6536 (rule!8570 lt!1267563))))) (list!14276 (charsOf!3784 lt!1267563))))))

(declare-fun d!1073064 () Bool)

(assert (=> d!1073064 (isDefined!6401 (maxPrefix!2893 thiss!23823 rules!3307 (++!9586 lt!1267377 suffix!1395)))))

(declare-fun lt!1267560 () Unit!55548)

(declare-fun e!2261411 () Unit!55548)

(assert (=> d!1073064 (= lt!1267560 e!2261411)))

(declare-fun c!631308 () Bool)

(assert (=> d!1073064 (= c!631308 (isEmpty!22830 (maxPrefix!2893 thiss!23823 rules!3307 (++!9586 lt!1267377 suffix!1395))))))

(declare-fun lt!1267550 () Unit!55548)

(declare-fun lt!1267553 () Unit!55548)

(assert (=> d!1073064 (= lt!1267550 lt!1267553)))

(assert (=> d!1073064 e!2261410))

(declare-fun res!1482011 () Bool)

(assert (=> d!1073064 (=> (not res!1482011) (not e!2261410))))

(assert (=> d!1073064 (= res!1482011 (isDefined!6400 (getRuleFromTag!1374 thiss!23823 rules!3307 (tag!6536 (rule!8570 lt!1267563)))))))

(assert (=> d!1073064 (= lt!1267553 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1374 thiss!23823 rules!3307 lt!1267377 lt!1267563))))

(declare-fun lt!1267561 () Unit!55548)

(declare-fun lt!1267558 () Unit!55548)

(assert (=> d!1073064 (= lt!1267561 lt!1267558)))

(declare-fun lt!1267551 () List!38642)

(assert (=> d!1073064 (isPrefix!3133 lt!1267551 (++!9586 lt!1267377 suffix!1395))))

(declare-fun lemmaPrefixStaysPrefixWhenAddingToSuffix!509 (List!38642 List!38642 List!38642) Unit!55548)

(assert (=> d!1073064 (= lt!1267558 (lemmaPrefixStaysPrefixWhenAddingToSuffix!509 lt!1267551 lt!1267377 suffix!1395))))

(assert (=> d!1073064 (= lt!1267551 (list!14276 (charsOf!3784 lt!1267563)))))

(declare-fun lt!1267562 () Unit!55548)

(declare-fun lt!1267547 () Unit!55548)

(assert (=> d!1073064 (= lt!1267562 lt!1267547)))

(declare-fun lt!1267557 () List!38642)

(declare-fun lt!1267548 () List!38642)

(assert (=> d!1073064 (isPrefix!3133 lt!1267557 (++!9586 lt!1267557 lt!1267548))))

(assert (=> d!1073064 (= lt!1267547 (lemmaConcatTwoListThenFirstIsPrefix!2052 lt!1267557 lt!1267548))))

(assert (=> d!1073064 (= lt!1267548 (_2!22326 (get!12663 (maxPrefix!2893 thiss!23823 rules!3307 lt!1267377))))))

(assert (=> d!1073064 (= lt!1267557 (list!14276 (charsOf!3784 lt!1267563)))))

(declare-datatypes ((List!38645 0))(
  ( (Nil!38521) (Cons!38521 (h!43941 Token!10906) (t!297748 List!38645)) )
))
(declare-fun head!7787 (List!38645) Token!10906)

(declare-datatypes ((IArray!23549 0))(
  ( (IArray!23550 (innerList!11832 List!38645)) )
))
(declare-datatypes ((Conc!11772 0))(
  ( (Node!11772 (left!30071 Conc!11772) (right!30401 Conc!11772) (csize!23774 Int) (cheight!11983 Int)) (Leaf!18268 (xs!14974 IArray!23549) (csize!23775 Int)) (Empty!11772) )
))
(declare-datatypes ((BalanceConc!23158 0))(
  ( (BalanceConc!23159 (c!631364 Conc!11772)) )
))
(declare-fun list!14279 (BalanceConc!23158) List!38645)

(declare-datatypes ((tuple2!38388 0))(
  ( (tuple2!38389 (_1!22328 BalanceConc!23158) (_2!22328 BalanceConc!23156)) )
))
(declare-fun lex!2541 (LexerInterface!5359 List!38643 BalanceConc!23156) tuple2!38388)

(assert (=> d!1073064 (= lt!1267563 (head!7787 (list!14279 (_1!22328 (lex!2541 thiss!23823 rules!3307 (seqFromList!4319 lt!1267377))))))))

(assert (=> d!1073064 (not (isEmpty!22829 rules!3307))))

(assert (=> d!1073064 (= (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!1037 thiss!23823 rules!3307 lt!1267377 suffix!1395) lt!1267560)))

(declare-fun b!3652537 () Bool)

(declare-fun Unit!55556 () Unit!55548)

(assert (=> b!3652537 (= e!2261411 Unit!55556)))

(declare-fun b!3652536 () Bool)

(declare-fun Unit!55557 () Unit!55548)

(assert (=> b!3652536 (= e!2261411 Unit!55557)))

(declare-fun lt!1267559 () List!38642)

(assert (=> b!3652536 (= lt!1267559 (++!9586 lt!1267377 suffix!1395))))

(declare-fun lt!1267549 () Unit!55548)

(declare-fun lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!545 (LexerInterface!5359 Rule!11340 List!38643 List!38642) Unit!55548)

(assert (=> b!3652536 (= lt!1267549 (lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!545 thiss!23823 (rule!8570 lt!1267563) rules!3307 lt!1267559))))

(assert (=> b!3652536 (isEmpty!22830 (maxPrefixOneRule!2031 thiss!23823 (rule!8570 lt!1267563) lt!1267559))))

(declare-fun lt!1267556 () Unit!55548)

(assert (=> b!3652536 (= lt!1267556 lt!1267549)))

(declare-fun lt!1267554 () List!38642)

(assert (=> b!3652536 (= lt!1267554 (list!14276 (charsOf!3784 lt!1267563)))))

(declare-fun lt!1267555 () Unit!55548)

(declare-fun lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!533 (LexerInterface!5359 Rule!11340 List!38642 List!38642) Unit!55548)

(assert (=> b!3652536 (= lt!1267555 (lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!533 thiss!23823 (rule!8570 lt!1267563) lt!1267554 (++!9586 lt!1267377 suffix!1395)))))

(assert (=> b!3652536 (not (matchR!5098 (regex!5770 (rule!8570 lt!1267563)) lt!1267554))))

(declare-fun lt!1267552 () Unit!55548)

(assert (=> b!3652536 (= lt!1267552 lt!1267555)))

(assert (=> b!3652536 false))

(declare-fun b!3652535 () Bool)

(assert (=> b!3652535 (= e!2261410 (= (rule!8570 lt!1267563) (get!12664 (getRuleFromTag!1374 thiss!23823 rules!3307 (tag!6536 (rule!8570 lt!1267563))))))))

(assert (= (and d!1073064 res!1482011) b!3652534))

(assert (= (and b!3652534 res!1482010) b!3652535))

(assert (= (and d!1073064 c!631308) b!3652536))

(assert (= (and d!1073064 (not c!631308)) b!3652537))

(declare-fun m!4157417 () Bool)

(assert (=> b!3652534 m!4157417))

(declare-fun m!4157419 () Bool)

(assert (=> b!3652534 m!4157419))

(declare-fun m!4157421 () Bool)

(assert (=> b!3652534 m!4157421))

(assert (=> b!3652534 m!4157421))

(declare-fun m!4157423 () Bool)

(assert (=> b!3652534 m!4157423))

(declare-fun m!4157425 () Bool)

(assert (=> b!3652534 m!4157425))

(assert (=> b!3652534 m!4157425))

(assert (=> b!3652534 m!4157417))

(assert (=> d!1073064 m!4156909))

(declare-fun m!4157427 () Bool)

(assert (=> d!1073064 m!4157427))

(assert (=> d!1073064 m!4157421))

(assert (=> d!1073064 m!4156909))

(declare-fun m!4157429 () Bool)

(assert (=> d!1073064 m!4157429))

(declare-fun m!4157431 () Bool)

(assert (=> d!1073064 m!4157431))

(declare-fun m!4157433 () Bool)

(assert (=> d!1073064 m!4157433))

(assert (=> d!1073064 m!4156909))

(declare-fun m!4157435 () Bool)

(assert (=> d!1073064 m!4157435))

(assert (=> d!1073064 m!4157427))

(declare-fun m!4157437 () Bool)

(assert (=> d!1073064 m!4157437))

(assert (=> d!1073064 m!4157425))

(assert (=> d!1073064 m!4157425))

(assert (=> d!1073064 m!4157417))

(declare-fun m!4157439 () Bool)

(assert (=> d!1073064 m!4157439))

(assert (=> d!1073064 m!4157009))

(declare-fun m!4157441 () Bool)

(assert (=> d!1073064 m!4157441))

(assert (=> d!1073064 m!4157427))

(declare-fun m!4157443 () Bool)

(assert (=> d!1073064 m!4157443))

(assert (=> d!1073064 m!4157441))

(declare-fun m!4157445 () Bool)

(assert (=> d!1073064 m!4157445))

(assert (=> d!1073064 m!4157435))

(declare-fun m!4157447 () Bool)

(assert (=> d!1073064 m!4157447))

(declare-fun m!4157449 () Bool)

(assert (=> d!1073064 m!4157449))

(assert (=> d!1073064 m!4156999))

(declare-fun m!4157451 () Bool)

(assert (=> d!1073064 m!4157451))

(assert (=> d!1073064 m!4156999))

(declare-fun m!4157453 () Bool)

(assert (=> d!1073064 m!4157453))

(assert (=> d!1073064 m!4157421))

(declare-fun m!4157455 () Bool)

(assert (=> d!1073064 m!4157455))

(assert (=> d!1073064 m!4157431))

(declare-fun m!4157457 () Bool)

(assert (=> b!3652536 m!4157457))

(assert (=> b!3652536 m!4156909))

(declare-fun m!4157459 () Bool)

(assert (=> b!3652536 m!4157459))

(declare-fun m!4157461 () Bool)

(assert (=> b!3652536 m!4157461))

(declare-fun m!4157463 () Bool)

(assert (=> b!3652536 m!4157463))

(assert (=> b!3652536 m!4157457))

(declare-fun m!4157465 () Bool)

(assert (=> b!3652536 m!4157465))

(assert (=> b!3652536 m!4156909))

(assert (=> b!3652536 m!4157425))

(assert (=> b!3652536 m!4157425))

(assert (=> b!3652536 m!4157417))

(assert (=> b!3652535 m!4157421))

(assert (=> b!3652535 m!4157421))

(assert (=> b!3652535 m!4157423))

(assert (=> b!3652083 d!1073064))

(declare-fun d!1073066 () Bool)

(assert (=> d!1073066 (isPrefix!3133 lt!1267382 (++!9586 lt!1267382 (_2!22326 lt!1267378)))))

(declare-fun lt!1267566 () Unit!55548)

(declare-fun choose!21545 (List!38642 List!38642) Unit!55548)

(assert (=> d!1073066 (= lt!1267566 (choose!21545 lt!1267382 (_2!22326 lt!1267378)))))

(assert (=> d!1073066 (= (lemmaConcatTwoListThenFirstIsPrefix!2052 lt!1267382 (_2!22326 lt!1267378)) lt!1267566)))

(declare-fun bs!572298 () Bool)

(assert (= bs!572298 d!1073066))

(assert (=> bs!572298 m!4156895))

(assert (=> bs!572298 m!4156895))

(assert (=> bs!572298 m!4156897))

(declare-fun m!4157467 () Bool)

(assert (=> bs!572298 m!4157467))

(assert (=> b!3652083 d!1073066))

(declare-fun d!1073068 () Bool)

(declare-fun e!2261414 () Bool)

(assert (=> d!1073068 e!2261414))

(declare-fun res!1482016 () Bool)

(assert (=> d!1073068 (=> (not res!1482016) (not e!2261414))))

(assert (=> d!1073068 (= res!1482016 (isDefined!6400 (getRuleFromTag!1374 thiss!23823 rules!3307 (tag!6536 (rule!8570 (_1!22326 lt!1267378))))))))

(declare-fun lt!1267569 () Unit!55548)

(declare-fun choose!21546 (LexerInterface!5359 List!38643 List!38642 Token!10906) Unit!55548)

(assert (=> d!1073068 (= lt!1267569 (choose!21546 thiss!23823 rules!3307 lt!1267389 (_1!22326 lt!1267378)))))

(assert (=> d!1073068 (rulesInvariant!4756 thiss!23823 rules!3307)))

(assert (=> d!1073068 (= (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1374 thiss!23823 rules!3307 lt!1267389 (_1!22326 lt!1267378)) lt!1267569)))

(declare-fun b!3652542 () Bool)

(declare-fun res!1482017 () Bool)

(assert (=> b!3652542 (=> (not res!1482017) (not e!2261414))))

(assert (=> b!3652542 (= res!1482017 (matchR!5098 (regex!5770 (get!12664 (getRuleFromTag!1374 thiss!23823 rules!3307 (tag!6536 (rule!8570 (_1!22326 lt!1267378)))))) (list!14276 (charsOf!3784 (_1!22326 lt!1267378)))))))

(declare-fun b!3652543 () Bool)

(assert (=> b!3652543 (= e!2261414 (= (rule!8570 (_1!22326 lt!1267378)) (get!12664 (getRuleFromTag!1374 thiss!23823 rules!3307 (tag!6536 (rule!8570 (_1!22326 lt!1267378)))))))))

(assert (= (and d!1073068 res!1482016) b!3652542))

(assert (= (and b!3652542 res!1482017) b!3652543))

(assert (=> d!1073068 m!4156907))

(assert (=> d!1073068 m!4156907))

(declare-fun m!4157469 () Bool)

(assert (=> d!1073068 m!4157469))

(declare-fun m!4157471 () Bool)

(assert (=> d!1073068 m!4157471))

(assert (=> d!1073068 m!4156915))

(assert (=> b!3652542 m!4156901))

(assert (=> b!3652542 m!4156901))

(assert (=> b!3652542 m!4156917))

(assert (=> b!3652542 m!4156907))

(assert (=> b!3652542 m!4156917))

(declare-fun m!4157473 () Bool)

(assert (=> b!3652542 m!4157473))

(assert (=> b!3652542 m!4156907))

(declare-fun m!4157475 () Bool)

(assert (=> b!3652542 m!4157475))

(assert (=> b!3652543 m!4156907))

(assert (=> b!3652543 m!4156907))

(assert (=> b!3652543 m!4157475))

(assert (=> b!3652083 d!1073068))

(declare-fun d!1073070 () Bool)

(assert (=> d!1073070 (isPrefix!3133 lt!1267377 (++!9586 lt!1267377 suffix!1395))))

(declare-fun lt!1267570 () Unit!55548)

(assert (=> d!1073070 (= lt!1267570 (choose!21545 lt!1267377 suffix!1395))))

(assert (=> d!1073070 (= (lemmaConcatTwoListThenFirstIsPrefix!2052 lt!1267377 suffix!1395) lt!1267570)))

(declare-fun bs!572299 () Bool)

(assert (= bs!572299 d!1073070))

(assert (=> bs!572299 m!4156909))

(assert (=> bs!572299 m!4156909))

(declare-fun m!4157477 () Bool)

(assert (=> bs!572299 m!4157477))

(declare-fun m!4157479 () Bool)

(assert (=> bs!572299 m!4157479))

(assert (=> b!3652083 d!1073070))

(declare-fun d!1073072 () Bool)

(assert (=> d!1073072 (= (get!12663 lt!1267371) (v!38031 lt!1267371))))

(assert (=> b!3652083 d!1073072))

(declare-fun b!3652544 () Bool)

(declare-fun e!2261415 () Bool)

(declare-fun e!2261416 () Bool)

(assert (=> b!3652544 (= e!2261415 e!2261416)))

(declare-fun res!1482020 () Bool)

(assert (=> b!3652544 (=> (not res!1482020) (not e!2261416))))

(assert (=> b!3652544 (= res!1482020 (not ((_ is Nil!38518) (++!9586 lt!1267382 (_2!22326 lt!1267378)))))))

(declare-fun b!3652545 () Bool)

(declare-fun res!1482018 () Bool)

(assert (=> b!3652545 (=> (not res!1482018) (not e!2261416))))

(assert (=> b!3652545 (= res!1482018 (= (head!7786 lt!1267382) (head!7786 (++!9586 lt!1267382 (_2!22326 lt!1267378)))))))

(declare-fun b!3652547 () Bool)

(declare-fun e!2261417 () Bool)

(assert (=> b!3652547 (= e!2261417 (>= (size!29417 (++!9586 lt!1267382 (_2!22326 lt!1267378))) (size!29417 lt!1267382)))))

(declare-fun d!1073074 () Bool)

(assert (=> d!1073074 e!2261417))

(declare-fun res!1482019 () Bool)

(assert (=> d!1073074 (=> res!1482019 e!2261417)))

(declare-fun lt!1267571 () Bool)

(assert (=> d!1073074 (= res!1482019 (not lt!1267571))))

(assert (=> d!1073074 (= lt!1267571 e!2261415)))

(declare-fun res!1482021 () Bool)

(assert (=> d!1073074 (=> res!1482021 e!2261415)))

(assert (=> d!1073074 (= res!1482021 ((_ is Nil!38518) lt!1267382))))

(assert (=> d!1073074 (= (isPrefix!3133 lt!1267382 (++!9586 lt!1267382 (_2!22326 lt!1267378))) lt!1267571)))

(declare-fun b!3652546 () Bool)

(assert (=> b!3652546 (= e!2261416 (isPrefix!3133 (tail!5657 lt!1267382) (tail!5657 (++!9586 lt!1267382 (_2!22326 lt!1267378)))))))

(assert (= (and d!1073074 (not res!1482021)) b!3652544))

(assert (= (and b!3652544 res!1482020) b!3652545))

(assert (= (and b!3652545 res!1482018) b!3652546))

(assert (= (and d!1073074 (not res!1482019)) b!3652547))

(assert (=> b!3652545 m!4156983))

(assert (=> b!3652545 m!4156895))

(declare-fun m!4157481 () Bool)

(assert (=> b!3652545 m!4157481))

(assert (=> b!3652547 m!4156895))

(declare-fun m!4157483 () Bool)

(assert (=> b!3652547 m!4157483))

(assert (=> b!3652547 m!4156939))

(assert (=> b!3652546 m!4157377))

(assert (=> b!3652546 m!4156895))

(declare-fun m!4157485 () Bool)

(assert (=> b!3652546 m!4157485))

(assert (=> b!3652546 m!4157377))

(assert (=> b!3652546 m!4157485))

(declare-fun m!4157487 () Bool)

(assert (=> b!3652546 m!4157487))

(assert (=> b!3652083 d!1073074))

(declare-fun d!1073076 () Bool)

(declare-fun lt!1267572 () BalanceConc!23156)

(assert (=> d!1073076 (= (list!14276 lt!1267572) (originalCharacters!6484 (_1!22326 lt!1267378)))))

(assert (=> d!1073076 (= lt!1267572 (dynLambda!16795 (toChars!7921 (transformation!5770 (rule!8570 (_1!22326 lt!1267378)))) (value!184905 (_1!22326 lt!1267378))))))

(assert (=> d!1073076 (= (charsOf!3784 (_1!22326 lt!1267378)) lt!1267572)))

(declare-fun b_lambda!108303 () Bool)

(assert (=> (not b_lambda!108303) (not d!1073076)))

(declare-fun tb!210773 () Bool)

(declare-fun t!297660 () Bool)

(assert (=> (and b!3652089 (= (toChars!7921 (transformation!5770 rule!403)) (toChars!7921 (transformation!5770 (rule!8570 (_1!22326 lt!1267378))))) t!297660) tb!210773))

(declare-fun b!3652548 () Bool)

(declare-fun e!2261418 () Bool)

(declare-fun tp!1113290 () Bool)

(assert (=> b!3652548 (= e!2261418 (and (inv!51975 (c!631209 (dynLambda!16795 (toChars!7921 (transformation!5770 (rule!8570 (_1!22326 lt!1267378)))) (value!184905 (_1!22326 lt!1267378))))) tp!1113290))))

(declare-fun result!256660 () Bool)

(assert (=> tb!210773 (= result!256660 (and (inv!51976 (dynLambda!16795 (toChars!7921 (transformation!5770 (rule!8570 (_1!22326 lt!1267378)))) (value!184905 (_1!22326 lt!1267378)))) e!2261418))))

(assert (= tb!210773 b!3652548))

(declare-fun m!4157489 () Bool)

(assert (=> b!3652548 m!4157489))

(declare-fun m!4157491 () Bool)

(assert (=> tb!210773 m!4157491))

(assert (=> d!1073076 t!297660))

(declare-fun b_and!270283 () Bool)

(assert (= b_and!270267 (and (=> t!297660 result!256660) b_and!270283)))

(declare-fun tb!210775 () Bool)

(declare-fun t!297662 () Bool)

(assert (=> (and b!3652094 (= (toChars!7921 (transformation!5770 (rule!8570 token!511))) (toChars!7921 (transformation!5770 (rule!8570 (_1!22326 lt!1267378))))) t!297662) tb!210775))

(declare-fun result!256662 () Bool)

(assert (= result!256662 result!256660))

(assert (=> d!1073076 t!297662))

(declare-fun b_and!270285 () Bool)

(assert (= b_and!270269 (and (=> t!297662 result!256662) b_and!270285)))

(declare-fun tb!210777 () Bool)

(declare-fun t!297664 () Bool)

(assert (=> (and b!3652093 (= (toChars!7921 (transformation!5770 anOtherTypeRule!33)) (toChars!7921 (transformation!5770 (rule!8570 (_1!22326 lt!1267378))))) t!297664) tb!210777))

(declare-fun result!256664 () Bool)

(assert (= result!256664 result!256660))

(assert (=> d!1073076 t!297664))

(declare-fun b_and!270287 () Bool)

(assert (= b_and!270271 (and (=> t!297664 result!256664) b_and!270287)))

(declare-fun tb!210779 () Bool)

(declare-fun t!297666 () Bool)

(assert (=> (and b!3652088 (= (toChars!7921 (transformation!5770 (h!43939 rules!3307))) (toChars!7921 (transformation!5770 (rule!8570 (_1!22326 lt!1267378))))) t!297666) tb!210779))

(declare-fun result!256666 () Bool)

(assert (= result!256666 result!256660))

(assert (=> d!1073076 t!297666))

(declare-fun b_and!270289 () Bool)

(assert (= b_and!270273 (and (=> t!297666 result!256666) b_and!270289)))

(declare-fun m!4157493 () Bool)

(assert (=> d!1073076 m!4157493))

(declare-fun m!4157495 () Bool)

(assert (=> d!1073076 m!4157495))

(assert (=> b!3652083 d!1073076))

(declare-fun b!3652549 () Bool)

(declare-fun e!2261419 () Bool)

(declare-fun e!2261420 () Bool)

(assert (=> b!3652549 (= e!2261419 e!2261420)))

(declare-fun res!1482024 () Bool)

(assert (=> b!3652549 (=> (not res!1482024) (not e!2261420))))

(assert (=> b!3652549 (= res!1482024 (not ((_ is Nil!38518) lt!1267389)))))

(declare-fun b!3652550 () Bool)

(declare-fun res!1482022 () Bool)

(assert (=> b!3652550 (=> (not res!1482022) (not e!2261420))))

(assert (=> b!3652550 (= res!1482022 (= (head!7786 lt!1267377) (head!7786 lt!1267389)))))

(declare-fun b!3652552 () Bool)

(declare-fun e!2261421 () Bool)

(assert (=> b!3652552 (= e!2261421 (>= (size!29417 lt!1267389) (size!29417 lt!1267377)))))

(declare-fun d!1073078 () Bool)

(assert (=> d!1073078 e!2261421))

(declare-fun res!1482023 () Bool)

(assert (=> d!1073078 (=> res!1482023 e!2261421)))

(declare-fun lt!1267573 () Bool)

(assert (=> d!1073078 (= res!1482023 (not lt!1267573))))

(assert (=> d!1073078 (= lt!1267573 e!2261419)))

(declare-fun res!1482025 () Bool)

(assert (=> d!1073078 (=> res!1482025 e!2261419)))

(assert (=> d!1073078 (= res!1482025 ((_ is Nil!38518) lt!1267377))))

(assert (=> d!1073078 (= (isPrefix!3133 lt!1267377 lt!1267389) lt!1267573)))

(declare-fun b!3652551 () Bool)

(assert (=> b!3652551 (= e!2261420 (isPrefix!3133 (tail!5657 lt!1267377) (tail!5657 lt!1267389)))))

(assert (= (and d!1073078 (not res!1482025)) b!3652549))

(assert (= (and b!3652549 res!1482024) b!3652550))

(assert (= (and b!3652550 res!1482022) b!3652551))

(assert (= (and d!1073078 (not res!1482023)) b!3652552))

(assert (=> b!3652550 m!4157097))

(assert (=> b!3652550 m!4157375))

(assert (=> b!3652552 m!4157349))

(assert (=> b!3652552 m!4157239))

(assert (=> b!3652551 m!4157101))

(assert (=> b!3652551 m!4157379))

(assert (=> b!3652551 m!4157101))

(assert (=> b!3652551 m!4157379))

(declare-fun m!4157497 () Bool)

(assert (=> b!3652551 m!4157497))

(assert (=> b!3652083 d!1073078))

(declare-fun d!1073080 () Bool)

(assert (=> d!1073080 (= (inv!51968 (tag!6536 rule!403)) (= (mod (str.len (value!184904 (tag!6536 rule!403))) 2) 0))))

(assert (=> b!3652081 d!1073080))

(declare-fun d!1073082 () Bool)

(declare-fun res!1482026 () Bool)

(declare-fun e!2261422 () Bool)

(assert (=> d!1073082 (=> (not res!1482026) (not e!2261422))))

(assert (=> d!1073082 (= res!1482026 (semiInverseModEq!2459 (toChars!7921 (transformation!5770 rule!403)) (toValue!8062 (transformation!5770 rule!403))))))

(assert (=> d!1073082 (= (inv!51971 (transformation!5770 rule!403)) e!2261422)))

(declare-fun b!3652553 () Bool)

(assert (=> b!3652553 (= e!2261422 (equivClasses!2358 (toChars!7921 (transformation!5770 rule!403)) (toValue!8062 (transformation!5770 rule!403))))))

(assert (= (and d!1073082 res!1482026) b!3652553))

(declare-fun m!4157499 () Bool)

(assert (=> d!1073082 m!4157499))

(declare-fun m!4157501 () Bool)

(assert (=> b!3652553 m!4157501))

(assert (=> b!3652081 d!1073082))

(declare-fun d!1073084 () Bool)

(declare-fun lt!1267576 () Int)

(assert (=> d!1073084 (= lt!1267576 (size!29417 (list!14276 lt!1267384)))))

(declare-fun size!29419 (Conc!11771) Int)

(assert (=> d!1073084 (= lt!1267576 (size!29419 (c!631209 lt!1267384)))))

(assert (=> d!1073084 (= (size!29416 lt!1267384) lt!1267576)))

(declare-fun bs!572300 () Bool)

(assert (= bs!572300 d!1073084))

(assert (=> bs!572300 m!4157001))

(assert (=> bs!572300 m!4157001))

(declare-fun m!4157503 () Bool)

(assert (=> bs!572300 m!4157503))

(declare-fun m!4157505 () Bool)

(assert (=> bs!572300 m!4157505))

(assert (=> b!3652102 d!1073084))

(declare-fun d!1073086 () Bool)

(declare-fun lt!1267577 () Bool)

(assert (=> d!1073086 (= lt!1267577 (select (content!5558 lt!1267393) lt!1267365))))

(declare-fun e!2261424 () Bool)

(assert (=> d!1073086 (= lt!1267577 e!2261424)))

(declare-fun res!1482028 () Bool)

(assert (=> d!1073086 (=> (not res!1482028) (not e!2261424))))

(assert (=> d!1073086 (= res!1482028 ((_ is Cons!38518) lt!1267393))))

(assert (=> d!1073086 (= (contains!7606 lt!1267393 lt!1267365) lt!1267577)))

(declare-fun b!3652554 () Bool)

(declare-fun e!2261423 () Bool)

(assert (=> b!3652554 (= e!2261424 e!2261423)))

(declare-fun res!1482027 () Bool)

(assert (=> b!3652554 (=> res!1482027 e!2261423)))

(assert (=> b!3652554 (= res!1482027 (= (h!43938 lt!1267393) lt!1267365))))

(declare-fun b!3652555 () Bool)

(assert (=> b!3652555 (= e!2261423 (contains!7606 (t!297625 lt!1267393) lt!1267365))))

(assert (= (and d!1073086 res!1482028) b!3652554))

(assert (= (and b!3652554 (not res!1482027)) b!3652555))

(declare-fun m!4157507 () Bool)

(assert (=> d!1073086 m!4157507))

(declare-fun m!4157509 () Bool)

(assert (=> d!1073086 m!4157509))

(declare-fun m!4157511 () Bool)

(assert (=> b!3652555 m!4157511))

(assert (=> b!3652102 d!1073086))

(declare-fun d!1073088 () Bool)

(assert (=> d!1073088 (= (head!7786 lt!1267382) (h!43938 lt!1267382))))

(assert (=> b!3652102 d!1073088))

(declare-fun d!1073090 () Bool)

(declare-fun lt!1267580 () Bool)

(declare-fun content!5559 (List!38643) (InoxSet Rule!11340))

(assert (=> d!1073090 (= lt!1267580 (select (content!5559 rules!3307) anOtherTypeRule!33))))

(declare-fun e!2261429 () Bool)

(assert (=> d!1073090 (= lt!1267580 e!2261429)))

(declare-fun res!1482033 () Bool)

(assert (=> d!1073090 (=> (not res!1482033) (not e!2261429))))

(assert (=> d!1073090 (= res!1482033 ((_ is Cons!38519) rules!3307))))

(assert (=> d!1073090 (= (contains!7605 rules!3307 anOtherTypeRule!33) lt!1267580)))

(declare-fun b!3652560 () Bool)

(declare-fun e!2261430 () Bool)

(assert (=> b!3652560 (= e!2261429 e!2261430)))

(declare-fun res!1482034 () Bool)

(assert (=> b!3652560 (=> res!1482034 e!2261430)))

(assert (=> b!3652560 (= res!1482034 (= (h!43939 rules!3307) anOtherTypeRule!33))))

(declare-fun b!3652561 () Bool)

(assert (=> b!3652561 (= e!2261430 (contains!7605 (t!297626 rules!3307) anOtherTypeRule!33))))

(assert (= (and d!1073090 res!1482033) b!3652560))

(assert (= (and b!3652560 (not res!1482034)) b!3652561))

(declare-fun m!4157513 () Bool)

(assert (=> d!1073090 m!4157513))

(declare-fun m!4157515 () Bool)

(assert (=> d!1073090 m!4157515))

(declare-fun m!4157517 () Bool)

(assert (=> b!3652561 m!4157517))

(assert (=> b!3652082 d!1073090))

(declare-fun d!1073092 () Bool)

(declare-fun fromListB!1995 (List!38642) BalanceConc!23156)

(assert (=> d!1073092 (= (seqFromList!4319 lt!1267382) (fromListB!1995 lt!1267382))))

(declare-fun bs!572301 () Bool)

(assert (= bs!572301 d!1073092))

(declare-fun m!4157519 () Bool)

(assert (=> bs!572301 m!4157519))

(assert (=> b!3652100 d!1073092))

(declare-fun d!1073094 () Bool)

(assert (=> d!1073094 (= (_2!22326 lt!1267378) lt!1267385)))

(declare-fun lt!1267583 () Unit!55548)

(declare-fun choose!21547 (List!38642 List!38642 List!38642 List!38642 List!38642) Unit!55548)

(assert (=> d!1073094 (= lt!1267583 (choose!21547 lt!1267382 (_2!22326 lt!1267378) lt!1267382 lt!1267385 lt!1267389))))

(assert (=> d!1073094 (isPrefix!3133 lt!1267382 lt!1267389)))

(assert (=> d!1073094 (= (lemmaSamePrefixThenSameSuffix!1460 lt!1267382 (_2!22326 lt!1267378) lt!1267382 lt!1267385 lt!1267389) lt!1267583)))

(declare-fun bs!572302 () Bool)

(assert (= bs!572302 d!1073094))

(declare-fun m!4157521 () Bool)

(assert (=> bs!572302 m!4157521))

(assert (=> bs!572302 m!4156899))

(assert (=> b!3652100 d!1073094))

(declare-fun d!1073096 () Bool)

(declare-fun lt!1267586 () Int)

(assert (=> d!1073096 (>= lt!1267586 0)))

(declare-fun e!2261433 () Int)

(assert (=> d!1073096 (= lt!1267586 e!2261433)))

(declare-fun c!631311 () Bool)

(assert (=> d!1073096 (= c!631311 ((_ is Nil!38518) lt!1267382))))

(assert (=> d!1073096 (= (size!29417 lt!1267382) lt!1267586)))

(declare-fun b!3652566 () Bool)

(assert (=> b!3652566 (= e!2261433 0)))

(declare-fun b!3652567 () Bool)

(assert (=> b!3652567 (= e!2261433 (+ 1 (size!29417 (t!297625 lt!1267382))))))

(assert (= (and d!1073096 c!631311) b!3652566))

(assert (= (and d!1073096 (not c!631311)) b!3652567))

(declare-fun m!4157523 () Bool)

(assert (=> b!3652567 m!4157523))

(assert (=> b!3652100 d!1073096))

(declare-fun d!1073098 () Bool)

(assert (=> d!1073098 (= (maxPrefixOneRule!2031 thiss!23823 (rule!8570 (_1!22326 lt!1267378)) lt!1267389) (Some!8167 (tuple2!38385 (Token!10907 (apply!9272 (transformation!5770 (rule!8570 (_1!22326 lt!1267378))) (seqFromList!4319 lt!1267382)) (rule!8570 (_1!22326 lt!1267378)) (size!29417 lt!1267382) lt!1267382) (_2!22326 lt!1267378))))))

(declare-fun lt!1267589 () Unit!55548)

(declare-fun choose!21549 (LexerInterface!5359 List!38643 List!38642 List!38642 List!38642 Rule!11340) Unit!55548)

(assert (=> d!1073098 (= lt!1267589 (choose!21549 thiss!23823 rules!3307 lt!1267382 lt!1267389 (_2!22326 lt!1267378) (rule!8570 (_1!22326 lt!1267378))))))

(assert (=> d!1073098 (not (isEmpty!22829 rules!3307))))

(assert (=> d!1073098 (= (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1087 thiss!23823 rules!3307 lt!1267382 lt!1267389 (_2!22326 lt!1267378) (rule!8570 (_1!22326 lt!1267378))) lt!1267589)))

(declare-fun bs!572303 () Bool)

(assert (= bs!572303 d!1073098))

(declare-fun m!4157525 () Bool)

(assert (=> bs!572303 m!4157525))

(assert (=> bs!572303 m!4156945))

(assert (=> bs!572303 m!4156941))

(assert (=> bs!572303 m!4156943))

(assert (=> bs!572303 m!4157009))

(assert (=> bs!572303 m!4156941))

(assert (=> bs!572303 m!4156939))

(assert (=> b!3652100 d!1073098))

(declare-fun d!1073100 () Bool)

(declare-fun lt!1267592 () List!38642)

(assert (=> d!1073100 (= (++!9586 lt!1267382 lt!1267592) lt!1267389)))

(declare-fun e!2261436 () List!38642)

(assert (=> d!1073100 (= lt!1267592 e!2261436)))

(declare-fun c!631314 () Bool)

(assert (=> d!1073100 (= c!631314 ((_ is Cons!38518) lt!1267382))))

(assert (=> d!1073100 (>= (size!29417 lt!1267389) (size!29417 lt!1267382))))

(assert (=> d!1073100 (= (getSuffix!1686 lt!1267389 lt!1267382) lt!1267592)))

(declare-fun b!3652572 () Bool)

(assert (=> b!3652572 (= e!2261436 (getSuffix!1686 (tail!5657 lt!1267389) (t!297625 lt!1267382)))))

(declare-fun b!3652573 () Bool)

(assert (=> b!3652573 (= e!2261436 lt!1267389)))

(assert (= (and d!1073100 c!631314) b!3652572))

(assert (= (and d!1073100 (not c!631314)) b!3652573))

(declare-fun m!4157527 () Bool)

(assert (=> d!1073100 m!4157527))

(assert (=> d!1073100 m!4157349))

(assert (=> d!1073100 m!4156939))

(assert (=> b!3652572 m!4157379))

(assert (=> b!3652572 m!4157379))

(declare-fun m!4157529 () Bool)

(assert (=> b!3652572 m!4157529))

(assert (=> b!3652100 d!1073100))

(declare-fun b!3652599 () Bool)

(declare-fun e!2261453 () Bool)

(declare-datatypes ((tuple2!38390 0))(
  ( (tuple2!38391 (_1!22329 List!38642) (_2!22329 List!38642)) )
))
(declare-fun findLongestMatchInner!1055 (Regex!10529 List!38642 Int List!38642 List!38642 Int) tuple2!38390)

(assert (=> b!3652599 (= e!2261453 (matchR!5098 (regex!5770 (rule!8570 (_1!22326 lt!1267378))) (_1!22329 (findLongestMatchInner!1055 (regex!5770 (rule!8570 (_1!22326 lt!1267378))) Nil!38518 (size!29417 Nil!38518) lt!1267389 lt!1267389 (size!29417 lt!1267389)))))))

(declare-fun b!3652600 () Bool)

(declare-fun res!1482056 () Bool)

(declare-fun e!2261454 () Bool)

(assert (=> b!3652600 (=> (not res!1482056) (not e!2261454))))

(declare-fun lt!1267609 () Option!8168)

(assert (=> b!3652600 (= res!1482056 (< (size!29417 (_2!22326 (get!12663 lt!1267609))) (size!29417 lt!1267389)))))

(declare-fun b!3652601 () Bool)

(declare-fun e!2261455 () Option!8168)

(declare-fun lt!1267606 () tuple2!38390)

(assert (=> b!3652601 (= e!2261455 (Some!8167 (tuple2!38385 (Token!10907 (apply!9272 (transformation!5770 (rule!8570 (_1!22326 lt!1267378))) (seqFromList!4319 (_1!22329 lt!1267606))) (rule!8570 (_1!22326 lt!1267378)) (size!29416 (seqFromList!4319 (_1!22329 lt!1267606))) (_1!22329 lt!1267606)) (_2!22329 lt!1267606))))))

(declare-fun lt!1267607 () Unit!55548)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!1028 (Regex!10529 List!38642) Unit!55548)

(assert (=> b!3652601 (= lt!1267607 (longestMatchIsAcceptedByMatchOrIsEmpty!1028 (regex!5770 (rule!8570 (_1!22326 lt!1267378))) lt!1267389))))

(declare-fun res!1482053 () Bool)

(assert (=> b!3652601 (= res!1482053 (isEmpty!22828 (_1!22329 (findLongestMatchInner!1055 (regex!5770 (rule!8570 (_1!22326 lt!1267378))) Nil!38518 (size!29417 Nil!38518) lt!1267389 lt!1267389 (size!29417 lt!1267389)))))))

(assert (=> b!3652601 (=> res!1482053 e!2261453)))

(assert (=> b!3652601 e!2261453))

(declare-fun lt!1267605 () Unit!55548)

(assert (=> b!3652601 (= lt!1267605 lt!1267607)))

(declare-fun lt!1267608 () Unit!55548)

(assert (=> b!3652601 (= lt!1267608 (lemmaSemiInverse!1519 (transformation!5770 (rule!8570 (_1!22326 lt!1267378))) (seqFromList!4319 (_1!22329 lt!1267606))))))

(declare-fun b!3652602 () Bool)

(declare-fun res!1482057 () Bool)

(assert (=> b!3652602 (=> (not res!1482057) (not e!2261454))))

(assert (=> b!3652602 (= res!1482057 (= (++!9586 (list!14276 (charsOf!3784 (_1!22326 (get!12663 lt!1267609)))) (_2!22326 (get!12663 lt!1267609))) lt!1267389))))

(declare-fun d!1073102 () Bool)

(declare-fun e!2261452 () Bool)

(assert (=> d!1073102 e!2261452))

(declare-fun res!1482054 () Bool)

(assert (=> d!1073102 (=> res!1482054 e!2261452)))

(assert (=> d!1073102 (= res!1482054 (isEmpty!22830 lt!1267609))))

(assert (=> d!1073102 (= lt!1267609 e!2261455)))

(declare-fun c!631317 () Bool)

(assert (=> d!1073102 (= c!631317 (isEmpty!22828 (_1!22329 lt!1267606)))))

(declare-fun findLongestMatch!970 (Regex!10529 List!38642) tuple2!38390)

(assert (=> d!1073102 (= lt!1267606 (findLongestMatch!970 (regex!5770 (rule!8570 (_1!22326 lt!1267378))) lt!1267389))))

(assert (=> d!1073102 (ruleValid!2034 thiss!23823 (rule!8570 (_1!22326 lt!1267378)))))

(assert (=> d!1073102 (= (maxPrefixOneRule!2031 thiss!23823 (rule!8570 (_1!22326 lt!1267378)) lt!1267389) lt!1267609)))

(declare-fun b!3652603 () Bool)

(declare-fun res!1482052 () Bool)

(assert (=> b!3652603 (=> (not res!1482052) (not e!2261454))))

(assert (=> b!3652603 (= res!1482052 (= (value!184905 (_1!22326 (get!12663 lt!1267609))) (apply!9272 (transformation!5770 (rule!8570 (_1!22326 (get!12663 lt!1267609)))) (seqFromList!4319 (originalCharacters!6484 (_1!22326 (get!12663 lt!1267609)))))))))

(declare-fun b!3652604 () Bool)

(assert (=> b!3652604 (= e!2261454 (= (size!29415 (_1!22326 (get!12663 lt!1267609))) (size!29417 (originalCharacters!6484 (_1!22326 (get!12663 lt!1267609))))))))

(declare-fun b!3652605 () Bool)

(assert (=> b!3652605 (= e!2261452 e!2261454)))

(declare-fun res!1482051 () Bool)

(assert (=> b!3652605 (=> (not res!1482051) (not e!2261454))))

(assert (=> b!3652605 (= res!1482051 (matchR!5098 (regex!5770 (rule!8570 (_1!22326 lt!1267378))) (list!14276 (charsOf!3784 (_1!22326 (get!12663 lt!1267609))))))))

(declare-fun b!3652606 () Bool)

(declare-fun res!1482055 () Bool)

(assert (=> b!3652606 (=> (not res!1482055) (not e!2261454))))

(assert (=> b!3652606 (= res!1482055 (= (rule!8570 (_1!22326 (get!12663 lt!1267609))) (rule!8570 (_1!22326 lt!1267378))))))

(declare-fun b!3652607 () Bool)

(assert (=> b!3652607 (= e!2261455 None!8167)))

(assert (= (and d!1073102 c!631317) b!3652607))

(assert (= (and d!1073102 (not c!631317)) b!3652601))

(assert (= (and b!3652601 (not res!1482053)) b!3652599))

(assert (= (and d!1073102 (not res!1482054)) b!3652605))

(assert (= (and b!3652605 res!1482051) b!3652602))

(assert (= (and b!3652602 res!1482057) b!3652600))

(assert (= (and b!3652600 res!1482056) b!3652606))

(assert (= (and b!3652606 res!1482055) b!3652603))

(assert (= (and b!3652603 res!1482052) b!3652604))

(declare-fun m!4157551 () Bool)

(assert (=> b!3652606 m!4157551))

(assert (=> b!3652600 m!4157551))

(declare-fun m!4157553 () Bool)

(assert (=> b!3652600 m!4157553))

(assert (=> b!3652600 m!4157349))

(declare-fun m!4157555 () Bool)

(assert (=> b!3652601 m!4157555))

(assert (=> b!3652601 m!4157349))

(declare-fun m!4157557 () Bool)

(assert (=> b!3652601 m!4157557))

(declare-fun m!4157559 () Bool)

(assert (=> b!3652601 m!4157559))

(declare-fun m!4157561 () Bool)

(assert (=> b!3652601 m!4157561))

(assert (=> b!3652601 m!4157349))

(assert (=> b!3652601 m!4157559))

(declare-fun m!4157563 () Bool)

(assert (=> b!3652601 m!4157563))

(declare-fun m!4157565 () Bool)

(assert (=> b!3652601 m!4157565))

(assert (=> b!3652601 m!4157559))

(declare-fun m!4157567 () Bool)

(assert (=> b!3652601 m!4157567))

(assert (=> b!3652601 m!4157559))

(declare-fun m!4157569 () Bool)

(assert (=> b!3652601 m!4157569))

(assert (=> b!3652601 m!4157555))

(assert (=> b!3652603 m!4157551))

(declare-fun m!4157571 () Bool)

(assert (=> b!3652603 m!4157571))

(assert (=> b!3652603 m!4157571))

(declare-fun m!4157573 () Bool)

(assert (=> b!3652603 m!4157573))

(assert (=> b!3652604 m!4157551))

(declare-fun m!4157575 () Bool)

(assert (=> b!3652604 m!4157575))

(assert (=> b!3652605 m!4157551))

(declare-fun m!4157577 () Bool)

(assert (=> b!3652605 m!4157577))

(assert (=> b!3652605 m!4157577))

(declare-fun m!4157579 () Bool)

(assert (=> b!3652605 m!4157579))

(assert (=> b!3652605 m!4157579))

(declare-fun m!4157581 () Bool)

(assert (=> b!3652605 m!4157581))

(assert (=> b!3652602 m!4157551))

(assert (=> b!3652602 m!4157577))

(assert (=> b!3652602 m!4157577))

(assert (=> b!3652602 m!4157579))

(assert (=> b!3652602 m!4157579))

(declare-fun m!4157583 () Bool)

(assert (=> b!3652602 m!4157583))

(declare-fun m!4157585 () Bool)

(assert (=> d!1073102 m!4157585))

(declare-fun m!4157587 () Bool)

(assert (=> d!1073102 m!4157587))

(declare-fun m!4157589 () Bool)

(assert (=> d!1073102 m!4157589))

(declare-fun m!4157591 () Bool)

(assert (=> d!1073102 m!4157591))

(assert (=> b!3652599 m!4157555))

(assert (=> b!3652599 m!4157349))

(assert (=> b!3652599 m!4157555))

(assert (=> b!3652599 m!4157349))

(assert (=> b!3652599 m!4157557))

(declare-fun m!4157593 () Bool)

(assert (=> b!3652599 m!4157593))

(assert (=> b!3652100 d!1073102))

(declare-fun d!1073112 () Bool)

(declare-fun dynLambda!16801 (Int BalanceConc!23156) TokenValue!6000)

(assert (=> d!1073112 (= (apply!9272 (transformation!5770 (rule!8570 (_1!22326 lt!1267378))) (seqFromList!4319 lt!1267382)) (dynLambda!16801 (toValue!8062 (transformation!5770 (rule!8570 (_1!22326 lt!1267378)))) (seqFromList!4319 lt!1267382)))))

(declare-fun b_lambda!108309 () Bool)

(assert (=> (not b_lambda!108309) (not d!1073112)))

(declare-fun tb!210797 () Bool)

(declare-fun t!297684 () Bool)

(assert (=> (and b!3652089 (= (toValue!8062 (transformation!5770 rule!403)) (toValue!8062 (transformation!5770 (rule!8570 (_1!22326 lt!1267378))))) t!297684) tb!210797))

(declare-fun result!256684 () Bool)

(assert (=> tb!210797 (= result!256684 (inv!21 (dynLambda!16801 (toValue!8062 (transformation!5770 (rule!8570 (_1!22326 lt!1267378)))) (seqFromList!4319 lt!1267382))))))

(declare-fun m!4157599 () Bool)

(assert (=> tb!210797 m!4157599))

(assert (=> d!1073112 t!297684))

(declare-fun b_and!270313 () Bool)

(assert (= b_and!270235 (and (=> t!297684 result!256684) b_and!270313)))

(declare-fun t!297694 () Bool)

(declare-fun tb!210807 () Bool)

(assert (=> (and b!3652094 (= (toValue!8062 (transformation!5770 (rule!8570 token!511))) (toValue!8062 (transformation!5770 (rule!8570 (_1!22326 lt!1267378))))) t!297694) tb!210807))

(declare-fun result!256696 () Bool)

(assert (= result!256696 result!256684))

(assert (=> d!1073112 t!297694))

(declare-fun b_and!270317 () Bool)

(assert (= b_and!270239 (and (=> t!297694 result!256696) b_and!270317)))

(declare-fun t!297696 () Bool)

(declare-fun tb!210809 () Bool)

(assert (=> (and b!3652093 (= (toValue!8062 (transformation!5770 anOtherTypeRule!33)) (toValue!8062 (transformation!5770 (rule!8570 (_1!22326 lt!1267378))))) t!297696) tb!210809))

(declare-fun result!256698 () Bool)

(assert (= result!256698 result!256684))

(assert (=> d!1073112 t!297696))

(declare-fun b_and!270327 () Bool)

(assert (= b_and!270243 (and (=> t!297696 result!256698) b_and!270327)))

(declare-fun tb!210811 () Bool)

(declare-fun t!297698 () Bool)

(assert (=> (and b!3652088 (= (toValue!8062 (transformation!5770 (h!43939 rules!3307))) (toValue!8062 (transformation!5770 (rule!8570 (_1!22326 lt!1267378))))) t!297698) tb!210811))

(declare-fun result!256700 () Bool)

(assert (= result!256700 result!256684))

(assert (=> d!1073112 t!297698))

(declare-fun b_and!270329 () Bool)

(assert (= b_and!270247 (and (=> t!297698 result!256700) b_and!270329)))

(assert (=> d!1073112 m!4156941))

(declare-fun m!4157607 () Bool)

(assert (=> d!1073112 m!4157607))

(assert (=> b!3652100 d!1073112))

(declare-fun b!3652650 () Bool)

(declare-fun res!1482084 () Bool)

(declare-fun e!2261493 () Bool)

(assert (=> b!3652650 (=> res!1482084 e!2261493)))

(assert (=> b!3652650 (= res!1482084 (not ((_ is Concat!16530) (regex!5770 (rule!8570 (_1!22326 lt!1267378))))))))

(declare-fun e!2261491 () Bool)

(assert (=> b!3652650 (= e!2261491 e!2261493)))

(declare-fun b!3652651 () Bool)

(declare-fun e!2261492 () Bool)

(assert (=> b!3652651 (= e!2261492 e!2261491)))

(declare-fun c!631323 () Bool)

(assert (=> b!3652651 (= c!631323 ((_ is Union!10529) (regex!5770 (rule!8570 (_1!22326 lt!1267378)))))))

(declare-fun b!3652652 () Bool)

(declare-fun e!2261494 () Bool)

(assert (=> b!3652652 (= e!2261492 e!2261494)))

(declare-fun res!1482085 () Bool)

(assert (=> b!3652652 (= res!1482085 (not (nullable!3659 (reg!10858 (regex!5770 (rule!8570 (_1!22326 lt!1267378)))))))))

(assert (=> b!3652652 (=> (not res!1482085) (not e!2261494))))

(declare-fun b!3652653 () Bool)

(declare-fun e!2261495 () Bool)

(assert (=> b!3652653 (= e!2261495 e!2261492)))

(declare-fun c!631324 () Bool)

(assert (=> b!3652653 (= c!631324 ((_ is Star!10529) (regex!5770 (rule!8570 (_1!22326 lt!1267378)))))))

(declare-fun b!3652654 () Bool)

(declare-fun e!2261490 () Bool)

(declare-fun call!264008 () Bool)

(assert (=> b!3652654 (= e!2261490 call!264008)))

(declare-fun bm!264003 () Bool)

(declare-fun call!264009 () Bool)

(assert (=> bm!264003 (= call!264009 (validRegex!4821 (ite c!631323 (regTwo!21571 (regex!5770 (rule!8570 (_1!22326 lt!1267378)))) (regOne!21570 (regex!5770 (rule!8570 (_1!22326 lt!1267378)))))))))

(declare-fun call!264010 () Bool)

(declare-fun bm!264004 () Bool)

(assert (=> bm!264004 (= call!264010 (validRegex!4821 (ite c!631324 (reg!10858 (regex!5770 (rule!8570 (_1!22326 lt!1267378)))) (ite c!631323 (regOne!21571 (regex!5770 (rule!8570 (_1!22326 lt!1267378)))) (regTwo!21570 (regex!5770 (rule!8570 (_1!22326 lt!1267378))))))))))

(declare-fun b!3652655 () Bool)

(declare-fun res!1482088 () Bool)

(declare-fun e!2261489 () Bool)

(assert (=> b!3652655 (=> (not res!1482088) (not e!2261489))))

(assert (=> b!3652655 (= res!1482088 call!264008)))

(assert (=> b!3652655 (= e!2261491 e!2261489)))

(declare-fun b!3652656 () Bool)

(assert (=> b!3652656 (= e!2261493 e!2261490)))

(declare-fun res!1482087 () Bool)

(assert (=> b!3652656 (=> (not res!1482087) (not e!2261490))))

(assert (=> b!3652656 (= res!1482087 call!264009)))

(declare-fun d!1073116 () Bool)

(declare-fun res!1482086 () Bool)

(assert (=> d!1073116 (=> res!1482086 e!2261495)))

(assert (=> d!1073116 (= res!1482086 ((_ is ElementMatch!10529) (regex!5770 (rule!8570 (_1!22326 lt!1267378)))))))

(assert (=> d!1073116 (= (validRegex!4821 (regex!5770 (rule!8570 (_1!22326 lt!1267378)))) e!2261495)))

(declare-fun b!3652657 () Bool)

(assert (=> b!3652657 (= e!2261489 call!264009)))

(declare-fun b!3652658 () Bool)

(assert (=> b!3652658 (= e!2261494 call!264010)))

(declare-fun bm!264005 () Bool)

(assert (=> bm!264005 (= call!264008 call!264010)))

(assert (= (and d!1073116 (not res!1482086)) b!3652653))

(assert (= (and b!3652653 c!631324) b!3652652))

(assert (= (and b!3652653 (not c!631324)) b!3652651))

(assert (= (and b!3652652 res!1482085) b!3652658))

(assert (= (and b!3652651 c!631323) b!3652655))

(assert (= (and b!3652651 (not c!631323)) b!3652650))

(assert (= (and b!3652655 res!1482088) b!3652657))

(assert (= (and b!3652650 (not res!1482084)) b!3652656))

(assert (= (and b!3652656 res!1482087) b!3652654))

(assert (= (or b!3652655 b!3652654) bm!264005))

(assert (= (or b!3652657 b!3652656) bm!264003))

(assert (= (or b!3652658 bm!264005) bm!264004))

(declare-fun m!4157621 () Bool)

(assert (=> b!3652652 m!4157621))

(declare-fun m!4157623 () Bool)

(assert (=> bm!264003 m!4157623))

(declare-fun m!4157625 () Bool)

(assert (=> bm!264004 m!4157625))

(assert (=> b!3652101 d!1073116))

(declare-fun d!1073126 () Bool)

(declare-fun lt!1267617 () Bool)

(assert (=> d!1073126 (= lt!1267617 (select (content!5558 (usedCharacters!982 (regex!5770 (rule!8570 (_1!22326 lt!1267378))))) lt!1267356))))

(declare-fun e!2261497 () Bool)

(assert (=> d!1073126 (= lt!1267617 e!2261497)))

(declare-fun res!1482090 () Bool)

(assert (=> d!1073126 (=> (not res!1482090) (not e!2261497))))

(assert (=> d!1073126 (= res!1482090 ((_ is Cons!38518) (usedCharacters!982 (regex!5770 (rule!8570 (_1!22326 lt!1267378))))))))

(assert (=> d!1073126 (= (contains!7606 (usedCharacters!982 (regex!5770 (rule!8570 (_1!22326 lt!1267378)))) lt!1267356) lt!1267617)))

(declare-fun b!3652659 () Bool)

(declare-fun e!2261496 () Bool)

(assert (=> b!3652659 (= e!2261497 e!2261496)))

(declare-fun res!1482089 () Bool)

(assert (=> b!3652659 (=> res!1482089 e!2261496)))

(assert (=> b!3652659 (= res!1482089 (= (h!43938 (usedCharacters!982 (regex!5770 (rule!8570 (_1!22326 lt!1267378))))) lt!1267356))))

(declare-fun b!3652660 () Bool)

(assert (=> b!3652660 (= e!2261496 (contains!7606 (t!297625 (usedCharacters!982 (regex!5770 (rule!8570 (_1!22326 lt!1267378))))) lt!1267356))))

(assert (= (and d!1073126 res!1482090) b!3652659))

(assert (= (and b!3652659 (not res!1482089)) b!3652660))

(assert (=> d!1073126 m!4156865))

(declare-fun m!4157627 () Bool)

(assert (=> d!1073126 m!4157627))

(declare-fun m!4157629 () Bool)

(assert (=> d!1073126 m!4157629))

(declare-fun m!4157631 () Bool)

(assert (=> b!3652660 m!4157631))

(assert (=> b!3652101 d!1073126))

(assert (=> b!3652101 d!1072920))

(declare-fun d!1073128 () Bool)

(assert (=> d!1073128 (not (contains!7606 (usedCharacters!982 (regex!5770 (rule!8570 (_1!22326 lt!1267378)))) lt!1267356))))

(declare-fun lt!1267618 () Unit!55548)

(assert (=> d!1073128 (= lt!1267618 (choose!21538 thiss!23823 rules!3307 rules!3307 (rule!8570 (_1!22326 lt!1267378)) anOtherTypeRule!33 lt!1267356))))

(assert (=> d!1073128 (rulesInvariant!4756 thiss!23823 rules!3307)))

(assert (=> d!1073128 (= (lemmaNonSepRuleNotContainsCharContainedInASepRule!416 thiss!23823 rules!3307 rules!3307 (rule!8570 (_1!22326 lt!1267378)) anOtherTypeRule!33 lt!1267356) lt!1267618)))

(declare-fun bs!572307 () Bool)

(assert (= bs!572307 d!1073128))

(assert (=> bs!572307 m!4156865))

(assert (=> bs!572307 m!4156865))

(assert (=> bs!572307 m!4156953))

(declare-fun m!4157633 () Bool)

(assert (=> bs!572307 m!4157633))

(assert (=> bs!572307 m!4156915))

(assert (=> b!3652101 d!1073128))

(declare-fun d!1073130 () Bool)

(declare-fun lt!1267619 () Bool)

(assert (=> d!1073130 (= lt!1267619 (select (content!5558 call!263948) lt!1267365))))

(declare-fun e!2261499 () Bool)

(assert (=> d!1073130 (= lt!1267619 e!2261499)))

(declare-fun res!1482092 () Bool)

(assert (=> d!1073130 (=> (not res!1482092) (not e!2261499))))

(assert (=> d!1073130 (= res!1482092 ((_ is Cons!38518) call!263948))))

(assert (=> d!1073130 (= (contains!7606 call!263948 lt!1267365) lt!1267619)))

(declare-fun b!3652661 () Bool)

(declare-fun e!2261498 () Bool)

(assert (=> b!3652661 (= e!2261499 e!2261498)))

(declare-fun res!1482091 () Bool)

(assert (=> b!3652661 (=> res!1482091 e!2261498)))

(assert (=> b!3652661 (= res!1482091 (= (h!43938 call!263948) lt!1267365))))

(declare-fun b!3652662 () Bool)

(assert (=> b!3652662 (= e!2261498 (contains!7606 (t!297625 call!263948) lt!1267365))))

(assert (= (and d!1073130 res!1482092) b!3652661))

(assert (= (and b!3652661 (not res!1482091)) b!3652662))

(declare-fun m!4157635 () Bool)

(assert (=> d!1073130 m!4157635))

(declare-fun m!4157637 () Bool)

(assert (=> d!1073130 m!4157637))

(declare-fun m!4157639 () Bool)

(assert (=> b!3652662 m!4157639))

(assert (=> bm!263941 d!1073130))

(declare-fun d!1073132 () Bool)

(declare-fun res!1482095 () Bool)

(declare-fun e!2261502 () Bool)

(assert (=> d!1073132 (=> (not res!1482095) (not e!2261502))))

(declare-fun rulesValid!2216 (LexerInterface!5359 List!38643) Bool)

(assert (=> d!1073132 (= res!1482095 (rulesValid!2216 thiss!23823 rules!3307))))

(assert (=> d!1073132 (= (rulesInvariant!4756 thiss!23823 rules!3307) e!2261502)))

(declare-fun b!3652665 () Bool)

(declare-datatypes ((List!38647 0))(
  ( (Nil!38523) (Cons!38523 (h!43943 String!43334) (t!297750 List!38647)) )
))
(declare-fun noDuplicateTag!2212 (LexerInterface!5359 List!38643 List!38647) Bool)

(assert (=> b!3652665 (= e!2261502 (noDuplicateTag!2212 thiss!23823 rules!3307 Nil!38523))))

(assert (= (and d!1073132 res!1482095) b!3652665))

(declare-fun m!4157641 () Bool)

(assert (=> d!1073132 m!4157641))

(declare-fun m!4157643 () Bool)

(assert (=> b!3652665 m!4157643))

(assert (=> b!3652078 d!1073132))

(declare-fun d!1073134 () Bool)

(declare-fun lt!1267620 () Bool)

(assert (=> d!1073134 (= lt!1267620 (select (content!5558 lt!1267382) lt!1267356))))

(declare-fun e!2261504 () Bool)

(assert (=> d!1073134 (= lt!1267620 e!2261504)))

(declare-fun res!1482097 () Bool)

(assert (=> d!1073134 (=> (not res!1482097) (not e!2261504))))

(assert (=> d!1073134 (= res!1482097 ((_ is Cons!38518) lt!1267382))))

(assert (=> d!1073134 (= (contains!7606 lt!1267382 lt!1267356) lt!1267620)))

(declare-fun b!3652666 () Bool)

(declare-fun e!2261503 () Bool)

(assert (=> b!3652666 (= e!2261504 e!2261503)))

(declare-fun res!1482096 () Bool)

(assert (=> b!3652666 (=> res!1482096 e!2261503)))

(assert (=> b!3652666 (= res!1482096 (= (h!43938 lt!1267382) lt!1267356))))

(declare-fun b!3652667 () Bool)

(assert (=> b!3652667 (= e!2261503 (contains!7606 (t!297625 lt!1267382) lt!1267356))))

(assert (= (and d!1073134 res!1482097) b!3652666))

(assert (= (and b!3652666 (not res!1482096)) b!3652667))

(assert (=> d!1073134 m!4157311))

(declare-fun m!4157645 () Bool)

(assert (=> d!1073134 m!4157645))

(declare-fun m!4157647 () Bool)

(assert (=> b!3652667 m!4157647))

(assert (=> b!3652098 d!1073134))

(declare-fun d!1073136 () Bool)

(assert (=> d!1073136 (contains!7606 lt!1267382 (head!7786 suffix!1395))))

(declare-fun lt!1267625 () Unit!55548)

(declare-fun choose!21551 (List!38642 List!38642 List!38642 List!38642) Unit!55548)

(assert (=> d!1073136 (= lt!1267625 (choose!21551 lt!1267377 suffix!1395 lt!1267382 lt!1267389))))

(assert (=> d!1073136 (isPrefix!3133 lt!1267382 lt!1267389)))

(assert (=> d!1073136 (= (lemmaLongerPrefixContainsHeadOfSuffixOfSmallerPref!78 lt!1267377 suffix!1395 lt!1267382 lt!1267389) lt!1267625)))

(declare-fun bs!572308 () Bool)

(assert (= bs!572308 d!1073136))

(assert (=> bs!572308 m!4156987))

(assert (=> bs!572308 m!4156987))

(declare-fun m!4157649 () Bool)

(assert (=> bs!572308 m!4157649))

(declare-fun m!4157651 () Bool)

(assert (=> bs!572308 m!4157651))

(assert (=> bs!572308 m!4156899))

(assert (=> b!3652098 d!1073136))

(declare-fun d!1073138 () Bool)

(declare-fun lt!1267626 () Bool)

(assert (=> d!1073138 (= lt!1267626 (select (content!5558 lt!1267393) lt!1267356))))

(declare-fun e!2261508 () Bool)

(assert (=> d!1073138 (= lt!1267626 e!2261508)))

(declare-fun res!1482103 () Bool)

(assert (=> d!1073138 (=> (not res!1482103) (not e!2261508))))

(assert (=> d!1073138 (= res!1482103 ((_ is Cons!38518) lt!1267393))))

(assert (=> d!1073138 (= (contains!7606 lt!1267393 lt!1267356) lt!1267626)))

(declare-fun b!3652672 () Bool)

(declare-fun e!2261507 () Bool)

(assert (=> b!3652672 (= e!2261508 e!2261507)))

(declare-fun res!1482102 () Bool)

(assert (=> b!3652672 (=> res!1482102 e!2261507)))

(assert (=> b!3652672 (= res!1482102 (= (h!43938 lt!1267393) lt!1267356))))

(declare-fun b!3652673 () Bool)

(assert (=> b!3652673 (= e!2261507 (contains!7606 (t!297625 lt!1267393) lt!1267356))))

(assert (= (and d!1073138 res!1482103) b!3652672))

(assert (= (and b!3652672 (not res!1482102)) b!3652673))

(assert (=> d!1073138 m!4157507))

(declare-fun m!4157653 () Bool)

(assert (=> d!1073138 m!4157653))

(declare-fun m!4157655 () Bool)

(assert (=> b!3652673 m!4157655))

(assert (=> b!3652079 d!1073138))

(declare-fun d!1073140 () Bool)

(assert (=> d!1073140 (= (head!7786 suffix!1395) (h!43938 suffix!1395))))

(assert (=> b!3652079 d!1073140))

(declare-fun b!3652674 () Bool)

(declare-fun e!2261510 () List!38642)

(declare-fun e!2261511 () List!38642)

(assert (=> b!3652674 (= e!2261510 e!2261511)))

(declare-fun c!631326 () Bool)

(assert (=> b!3652674 (= c!631326 ((_ is Union!10529) (regex!5770 rule!403)))))

(declare-fun bm!264006 () Bool)

(declare-fun call!264012 () List!38642)

(assert (=> bm!264006 (= call!264012 (usedCharacters!982 (ite c!631326 (regTwo!21571 (regex!5770 rule!403)) (regOne!21570 (regex!5770 rule!403)))))))

(declare-fun bm!264007 () Bool)

(declare-fun call!264011 () List!38642)

(declare-fun c!631327 () Bool)

(assert (=> bm!264007 (= call!264011 (usedCharacters!982 (ite c!631327 (reg!10858 (regex!5770 rule!403)) (ite c!631326 (regOne!21571 (regex!5770 rule!403)) (regTwo!21570 (regex!5770 rule!403))))))))

(declare-fun d!1073142 () Bool)

(declare-fun c!631328 () Bool)

(assert (=> d!1073142 (= c!631328 (or ((_ is EmptyExpr!10529) (regex!5770 rule!403)) ((_ is EmptyLang!10529) (regex!5770 rule!403))))))

(declare-fun e!2261512 () List!38642)

(assert (=> d!1073142 (= (usedCharacters!982 (regex!5770 rule!403)) e!2261512)))

(declare-fun b!3652675 () Bool)

(declare-fun e!2261509 () List!38642)

(assert (=> b!3652675 (= e!2261509 (Cons!38518 (c!631208 (regex!5770 rule!403)) Nil!38518))))

(declare-fun bm!264008 () Bool)

(declare-fun call!264013 () List!38642)

(declare-fun call!264014 () List!38642)

(assert (=> bm!264008 (= call!264014 (++!9586 (ite c!631326 call!264013 call!264012) (ite c!631326 call!264012 call!264013)))))

(declare-fun b!3652676 () Bool)

(assert (=> b!3652676 (= e!2261511 call!264014)))

(declare-fun b!3652677 () Bool)

(assert (=> b!3652677 (= e!2261512 e!2261509)))

(declare-fun c!631325 () Bool)

(assert (=> b!3652677 (= c!631325 ((_ is ElementMatch!10529) (regex!5770 rule!403)))))

(declare-fun b!3652678 () Bool)

(assert (=> b!3652678 (= e!2261511 call!264014)))

(declare-fun bm!264009 () Bool)

(assert (=> bm!264009 (= call!264013 call!264011)))

(declare-fun b!3652679 () Bool)

(assert (=> b!3652679 (= e!2261512 Nil!38518)))

(declare-fun b!3652680 () Bool)

(assert (=> b!3652680 (= c!631327 ((_ is Star!10529) (regex!5770 rule!403)))))

(assert (=> b!3652680 (= e!2261509 e!2261510)))

(declare-fun b!3652681 () Bool)

(assert (=> b!3652681 (= e!2261510 call!264011)))

(assert (= (and d!1073142 c!631328) b!3652679))

(assert (= (and d!1073142 (not c!631328)) b!3652677))

(assert (= (and b!3652677 c!631325) b!3652675))

(assert (= (and b!3652677 (not c!631325)) b!3652680))

(assert (= (and b!3652680 c!631327) b!3652681))

(assert (= (and b!3652680 (not c!631327)) b!3652674))

(assert (= (and b!3652674 c!631326) b!3652678))

(assert (= (and b!3652674 (not c!631326)) b!3652676))

(assert (= (or b!3652678 b!3652676) bm!264009))

(assert (= (or b!3652678 b!3652676) bm!264006))

(assert (= (or b!3652678 b!3652676) bm!264008))

(assert (= (or b!3652681 bm!264009) bm!264007))

(declare-fun m!4157657 () Bool)

(assert (=> bm!264006 m!4157657))

(declare-fun m!4157659 () Bool)

(assert (=> bm!264007 m!4157659))

(declare-fun m!4157661 () Bool)

(assert (=> bm!264008 m!4157661))

(assert (=> b!3652079 d!1073142))

(declare-fun b!3652694 () Bool)

(declare-fun e!2261521 () Bool)

(declare-fun e!2261522 () Bool)

(assert (=> b!3652694 (= e!2261521 e!2261522)))

(declare-fun c!631333 () Bool)

(assert (=> b!3652694 (= c!631333 ((_ is IntegerValue!18001) (value!184905 token!511)))))

(declare-fun b!3652695 () Bool)

(declare-fun res!1482108 () Bool)

(declare-fun e!2261520 () Bool)

(assert (=> b!3652695 (=> res!1482108 e!2261520)))

(assert (=> b!3652695 (= res!1482108 (not ((_ is IntegerValue!18002) (value!184905 token!511))))))

(assert (=> b!3652695 (= e!2261522 e!2261520)))

(declare-fun b!3652696 () Bool)

(declare-fun inv!15 (TokenValue!6000) Bool)

(assert (=> b!3652696 (= e!2261520 (inv!15 (value!184905 token!511)))))

(declare-fun d!1073144 () Bool)

(declare-fun c!631334 () Bool)

(assert (=> d!1073144 (= c!631334 ((_ is IntegerValue!18000) (value!184905 token!511)))))

(assert (=> d!1073144 (= (inv!21 (value!184905 token!511)) e!2261521)))

(declare-fun b!3652697 () Bool)

(declare-fun inv!17 (TokenValue!6000) Bool)

(assert (=> b!3652697 (= e!2261522 (inv!17 (value!184905 token!511)))))

(declare-fun b!3652698 () Bool)

(declare-fun inv!16 (TokenValue!6000) Bool)

(assert (=> b!3652698 (= e!2261521 (inv!16 (value!184905 token!511)))))

(assert (= (and d!1073144 c!631334) b!3652698))

(assert (= (and d!1073144 (not c!631334)) b!3652694))

(assert (= (and b!3652694 c!631333) b!3652697))

(assert (= (and b!3652694 (not c!631333)) b!3652695))

(assert (= (and b!3652695 (not res!1482108)) b!3652696))

(declare-fun m!4157677 () Bool)

(assert (=> b!3652696 m!4157677))

(declare-fun m!4157679 () Bool)

(assert (=> b!3652697 m!4157679))

(declare-fun m!4157681 () Bool)

(assert (=> b!3652698 m!4157681))

(assert (=> b!3652096 d!1073144))

(declare-fun d!1073154 () Bool)

(assert (=> d!1073154 (= (size!29415 (_1!22326 lt!1267378)) (size!29417 (originalCharacters!6484 (_1!22326 lt!1267378))))))

(declare-fun Unit!55561 () Unit!55548)

(assert (=> d!1073154 (= (lemmaCharactersSize!815 (_1!22326 lt!1267378)) Unit!55561)))

(declare-fun bs!572311 () Bool)

(assert (= bs!572311 d!1073154))

(declare-fun m!4157683 () Bool)

(assert (=> bs!572311 m!4157683))

(assert (=> b!3652077 d!1073154))

(declare-fun d!1073156 () Bool)

(assert (=> d!1073156 (= (seqFromList!4319 (originalCharacters!6484 (_1!22326 lt!1267378))) (fromListB!1995 (originalCharacters!6484 (_1!22326 lt!1267378))))))

(declare-fun bs!572312 () Bool)

(assert (= bs!572312 d!1073156))

(declare-fun m!4157685 () Bool)

(assert (=> bs!572312 m!4157685))

(assert (=> b!3652077 d!1073156))

(declare-fun b!3652844 () Bool)

(declare-fun e!2261596 () Bool)

(assert (=> b!3652844 (= e!2261596 true)))

(declare-fun d!1073158 () Bool)

(assert (=> d!1073158 e!2261596))

(assert (= d!1073158 b!3652844))

(declare-fun order!21227 () Int)

(declare-fun lambda!124496 () Int)

(declare-fun order!21229 () Int)

(declare-fun dynLambda!16802 (Int Int) Int)

(declare-fun dynLambda!16803 (Int Int) Int)

(assert (=> b!3652844 (< (dynLambda!16802 order!21227 (toValue!8062 (transformation!5770 (rule!8570 (_1!22326 lt!1267378))))) (dynLambda!16803 order!21229 lambda!124496))))

(declare-fun order!21231 () Int)

(declare-fun dynLambda!16804 (Int Int) Int)

(assert (=> b!3652844 (< (dynLambda!16804 order!21231 (toChars!7921 (transformation!5770 (rule!8570 (_1!22326 lt!1267378))))) (dynLambda!16803 order!21229 lambda!124496))))

(assert (=> d!1073158 (= (list!14276 (dynLambda!16795 (toChars!7921 (transformation!5770 (rule!8570 (_1!22326 lt!1267378)))) (dynLambda!16801 (toValue!8062 (transformation!5770 (rule!8570 (_1!22326 lt!1267378)))) lt!1267363))) (list!14276 lt!1267363))))

(declare-fun lt!1267725 () Unit!55548)

(declare-fun ForallOf!716 (Int BalanceConc!23156) Unit!55548)

(assert (=> d!1073158 (= lt!1267725 (ForallOf!716 lambda!124496 lt!1267363))))

(assert (=> d!1073158 (= (lemmaSemiInverse!1519 (transformation!5770 (rule!8570 (_1!22326 lt!1267378))) lt!1267363) lt!1267725)))

(declare-fun b_lambda!108323 () Bool)

(assert (=> (not b_lambda!108323) (not d!1073158)))

(declare-fun tb!210825 () Bool)

(declare-fun t!297712 () Bool)

(assert (=> (and b!3652089 (= (toChars!7921 (transformation!5770 rule!403)) (toChars!7921 (transformation!5770 (rule!8570 (_1!22326 lt!1267378))))) t!297712) tb!210825))

(declare-fun e!2261597 () Bool)

(declare-fun b!3652845 () Bool)

(declare-fun tp!1113338 () Bool)

(assert (=> b!3652845 (= e!2261597 (and (inv!51975 (c!631209 (dynLambda!16795 (toChars!7921 (transformation!5770 (rule!8570 (_1!22326 lt!1267378)))) (dynLambda!16801 (toValue!8062 (transformation!5770 (rule!8570 (_1!22326 lt!1267378)))) lt!1267363)))) tp!1113338))))

(declare-fun result!256720 () Bool)

(assert (=> tb!210825 (= result!256720 (and (inv!51976 (dynLambda!16795 (toChars!7921 (transformation!5770 (rule!8570 (_1!22326 lt!1267378)))) (dynLambda!16801 (toValue!8062 (transformation!5770 (rule!8570 (_1!22326 lt!1267378)))) lt!1267363))) e!2261597))))

(assert (= tb!210825 b!3652845))

(declare-fun m!4157873 () Bool)

(assert (=> b!3652845 m!4157873))

(declare-fun m!4157875 () Bool)

(assert (=> tb!210825 m!4157875))

(assert (=> d!1073158 t!297712))

(declare-fun b_and!270351 () Bool)

(assert (= b_and!270283 (and (=> t!297712 result!256720) b_and!270351)))

(declare-fun tb!210827 () Bool)

(declare-fun t!297714 () Bool)

(assert (=> (and b!3652094 (= (toChars!7921 (transformation!5770 (rule!8570 token!511))) (toChars!7921 (transformation!5770 (rule!8570 (_1!22326 lt!1267378))))) t!297714) tb!210827))

(declare-fun result!256722 () Bool)

(assert (= result!256722 result!256720))

(assert (=> d!1073158 t!297714))

(declare-fun b_and!270353 () Bool)

(assert (= b_and!270285 (and (=> t!297714 result!256722) b_and!270353)))

(declare-fun t!297716 () Bool)

(declare-fun tb!210829 () Bool)

(assert (=> (and b!3652093 (= (toChars!7921 (transformation!5770 anOtherTypeRule!33)) (toChars!7921 (transformation!5770 (rule!8570 (_1!22326 lt!1267378))))) t!297716) tb!210829))

(declare-fun result!256724 () Bool)

(assert (= result!256724 result!256720))

(assert (=> d!1073158 t!297716))

(declare-fun b_and!270355 () Bool)

(assert (= b_and!270287 (and (=> t!297716 result!256724) b_and!270355)))

(declare-fun tb!210831 () Bool)

(declare-fun t!297718 () Bool)

(assert (=> (and b!3652088 (= (toChars!7921 (transformation!5770 (h!43939 rules!3307))) (toChars!7921 (transformation!5770 (rule!8570 (_1!22326 lt!1267378))))) t!297718) tb!210831))

(declare-fun result!256726 () Bool)

(assert (= result!256726 result!256720))

(assert (=> d!1073158 t!297718))

(declare-fun b_and!270357 () Bool)

(assert (= b_and!270289 (and (=> t!297718 result!256726) b_and!270357)))

(declare-fun b_lambda!108325 () Bool)

(assert (=> (not b_lambda!108325) (not d!1073158)))

(declare-fun tb!210833 () Bool)

(declare-fun t!297720 () Bool)

(assert (=> (and b!3652089 (= (toValue!8062 (transformation!5770 rule!403)) (toValue!8062 (transformation!5770 (rule!8570 (_1!22326 lt!1267378))))) t!297720) tb!210833))

(declare-fun result!256728 () Bool)

(assert (=> tb!210833 (= result!256728 (inv!21 (dynLambda!16801 (toValue!8062 (transformation!5770 (rule!8570 (_1!22326 lt!1267378)))) lt!1267363)))))

(declare-fun m!4157877 () Bool)

(assert (=> tb!210833 m!4157877))

(assert (=> d!1073158 t!297720))

(declare-fun b_and!270359 () Bool)

(assert (= b_and!270313 (and (=> t!297720 result!256728) b_and!270359)))

(declare-fun t!297722 () Bool)

(declare-fun tb!210835 () Bool)

(assert (=> (and b!3652094 (= (toValue!8062 (transformation!5770 (rule!8570 token!511))) (toValue!8062 (transformation!5770 (rule!8570 (_1!22326 lt!1267378))))) t!297722) tb!210835))

(declare-fun result!256730 () Bool)

(assert (= result!256730 result!256728))

(assert (=> d!1073158 t!297722))

(declare-fun b_and!270361 () Bool)

(assert (= b_and!270317 (and (=> t!297722 result!256730) b_and!270361)))

(declare-fun tb!210837 () Bool)

(declare-fun t!297724 () Bool)

(assert (=> (and b!3652093 (= (toValue!8062 (transformation!5770 anOtherTypeRule!33)) (toValue!8062 (transformation!5770 (rule!8570 (_1!22326 lt!1267378))))) t!297724) tb!210837))

(declare-fun result!256732 () Bool)

(assert (= result!256732 result!256728))

(assert (=> d!1073158 t!297724))

(declare-fun b_and!270363 () Bool)

(assert (= b_and!270327 (and (=> t!297724 result!256732) b_and!270363)))

(declare-fun t!297726 () Bool)

(declare-fun tb!210839 () Bool)

(assert (=> (and b!3652088 (= (toValue!8062 (transformation!5770 (h!43939 rules!3307))) (toValue!8062 (transformation!5770 (rule!8570 (_1!22326 lt!1267378))))) t!297726) tb!210839))

(declare-fun result!256734 () Bool)

(assert (= result!256734 result!256728))

(assert (=> d!1073158 t!297726))

(declare-fun b_and!270365 () Bool)

(assert (= b_and!270329 (and (=> t!297726 result!256734) b_and!270365)))

(declare-fun m!4157879 () Bool)

(assert (=> d!1073158 m!4157879))

(declare-fun m!4157881 () Bool)

(assert (=> d!1073158 m!4157881))

(assert (=> d!1073158 m!4157881))

(declare-fun m!4157883 () Bool)

(assert (=> d!1073158 m!4157883))

(declare-fun m!4157885 () Bool)

(assert (=> d!1073158 m!4157885))

(assert (=> d!1073158 m!4157879))

(assert (=> d!1073158 m!4156891))

(assert (=> b!3652077 d!1073158))

(declare-fun b!3652852 () Bool)

(declare-fun e!2261603 () Bool)

(assert (=> b!3652852 (= e!2261603 true)))

(declare-fun d!1073190 () Bool)

(assert (=> d!1073190 e!2261603))

(assert (= d!1073190 b!3652852))

(declare-fun order!21233 () Int)

(declare-fun lambda!124499 () Int)

(declare-fun dynLambda!16805 (Int Int) Int)

(assert (=> b!3652852 (< (dynLambda!16802 order!21227 (toValue!8062 (transformation!5770 (rule!8570 (_1!22326 lt!1267378))))) (dynLambda!16805 order!21233 lambda!124499))))

(assert (=> b!3652852 (< (dynLambda!16804 order!21231 (toChars!7921 (transformation!5770 (rule!8570 (_1!22326 lt!1267378))))) (dynLambda!16805 order!21233 lambda!124499))))

(assert (=> d!1073190 (= (dynLambda!16801 (toValue!8062 (transformation!5770 (rule!8570 (_1!22326 lt!1267378)))) lt!1267363) (dynLambda!16801 (toValue!8062 (transformation!5770 (rule!8570 (_1!22326 lt!1267378)))) (seqFromList!4319 (originalCharacters!6484 (_1!22326 lt!1267378)))))))

(declare-fun lt!1267728 () Unit!55548)

(declare-fun Forall2of!374 (Int BalanceConc!23156 BalanceConc!23156) Unit!55548)

(assert (=> d!1073190 (= lt!1267728 (Forall2of!374 lambda!124499 lt!1267363 (seqFromList!4319 (originalCharacters!6484 (_1!22326 lt!1267378)))))))

(assert (=> d!1073190 (= (list!14276 lt!1267363) (list!14276 (seqFromList!4319 (originalCharacters!6484 (_1!22326 lt!1267378)))))))

(assert (=> d!1073190 (= (lemmaEqSameImage!953 (transformation!5770 (rule!8570 (_1!22326 lt!1267378))) lt!1267363 (seqFromList!4319 (originalCharacters!6484 (_1!22326 lt!1267378)))) lt!1267728)))

(declare-fun b_lambda!108327 () Bool)

(assert (=> (not b_lambda!108327) (not d!1073190)))

(assert (=> d!1073190 t!297720))

(declare-fun b_and!270367 () Bool)

(assert (= b_and!270359 (and (=> t!297720 result!256728) b_and!270367)))

(assert (=> d!1073190 t!297722))

(declare-fun b_and!270369 () Bool)

(assert (= b_and!270361 (and (=> t!297722 result!256730) b_and!270369)))

(assert (=> d!1073190 t!297724))

(declare-fun b_and!270371 () Bool)

(assert (= b_and!270363 (and (=> t!297724 result!256732) b_and!270371)))

(assert (=> d!1073190 t!297726))

(declare-fun b_and!270373 () Bool)

(assert (= b_and!270365 (and (=> t!297726 result!256734) b_and!270373)))

(declare-fun b_lambda!108329 () Bool)

(assert (=> (not b_lambda!108329) (not d!1073190)))

(declare-fun tb!210841 () Bool)

(declare-fun t!297728 () Bool)

(assert (=> (and b!3652089 (= (toValue!8062 (transformation!5770 rule!403)) (toValue!8062 (transformation!5770 (rule!8570 (_1!22326 lt!1267378))))) t!297728) tb!210841))

(declare-fun result!256736 () Bool)

(assert (=> tb!210841 (= result!256736 (inv!21 (dynLambda!16801 (toValue!8062 (transformation!5770 (rule!8570 (_1!22326 lt!1267378)))) (seqFromList!4319 (originalCharacters!6484 (_1!22326 lt!1267378))))))))

(declare-fun m!4157887 () Bool)

(assert (=> tb!210841 m!4157887))

(assert (=> d!1073190 t!297728))

(declare-fun b_and!270375 () Bool)

(assert (= b_and!270367 (and (=> t!297728 result!256736) b_and!270375)))

(declare-fun t!297730 () Bool)

(declare-fun tb!210843 () Bool)

(assert (=> (and b!3652094 (= (toValue!8062 (transformation!5770 (rule!8570 token!511))) (toValue!8062 (transformation!5770 (rule!8570 (_1!22326 lt!1267378))))) t!297730) tb!210843))

(declare-fun result!256738 () Bool)

(assert (= result!256738 result!256736))

(assert (=> d!1073190 t!297730))

(declare-fun b_and!270377 () Bool)

(assert (= b_and!270369 (and (=> t!297730 result!256738) b_and!270377)))

(declare-fun tb!210845 () Bool)

(declare-fun t!297732 () Bool)

(assert (=> (and b!3652093 (= (toValue!8062 (transformation!5770 anOtherTypeRule!33)) (toValue!8062 (transformation!5770 (rule!8570 (_1!22326 lt!1267378))))) t!297732) tb!210845))

(declare-fun result!256740 () Bool)

(assert (= result!256740 result!256736))

(assert (=> d!1073190 t!297732))

(declare-fun b_and!270379 () Bool)

(assert (= b_and!270371 (and (=> t!297732 result!256740) b_and!270379)))

(declare-fun t!297734 () Bool)

(declare-fun tb!210847 () Bool)

(assert (=> (and b!3652088 (= (toValue!8062 (transformation!5770 (h!43939 rules!3307))) (toValue!8062 (transformation!5770 (rule!8570 (_1!22326 lt!1267378))))) t!297734) tb!210847))

(declare-fun result!256742 () Bool)

(assert (= result!256742 result!256736))

(assert (=> d!1073190 t!297734))

(declare-fun b_and!270381 () Bool)

(assert (= b_and!270373 (and (=> t!297734 result!256742) b_and!270381)))

(assert (=> d!1073190 m!4156975))

(declare-fun m!4157889 () Bool)

(assert (=> d!1073190 m!4157889))

(assert (=> d!1073190 m!4156975))

(declare-fun m!4157891 () Bool)

(assert (=> d!1073190 m!4157891))

(assert (=> d!1073190 m!4157879))

(assert (=> d!1073190 m!4156891))

(assert (=> d!1073190 m!4156975))

(declare-fun m!4157893 () Bool)

(assert (=> d!1073190 m!4157893))

(assert (=> b!3652077 d!1073190))

(declare-fun d!1073192 () Bool)

(declare-fun lt!1267729 () Int)

(assert (=> d!1073192 (= lt!1267729 (size!29417 (list!14276 lt!1267363)))))

(assert (=> d!1073192 (= lt!1267729 (size!29419 (c!631209 lt!1267363)))))

(assert (=> d!1073192 (= (size!29416 lt!1267363) lt!1267729)))

(declare-fun bs!572318 () Bool)

(assert (= bs!572318 d!1073192))

(assert (=> bs!572318 m!4156891))

(assert (=> bs!572318 m!4156891))

(declare-fun m!4157895 () Bool)

(assert (=> bs!572318 m!4157895))

(declare-fun m!4157897 () Bool)

(assert (=> bs!572318 m!4157897))

(assert (=> b!3652077 d!1073192))

(declare-fun d!1073194 () Bool)

(assert (=> d!1073194 (= (apply!9272 (transformation!5770 (rule!8570 (_1!22326 lt!1267378))) lt!1267363) (dynLambda!16801 (toValue!8062 (transformation!5770 (rule!8570 (_1!22326 lt!1267378)))) lt!1267363))))

(declare-fun b_lambda!108331 () Bool)

(assert (=> (not b_lambda!108331) (not d!1073194)))

(assert (=> d!1073194 t!297720))

(declare-fun b_and!270383 () Bool)

(assert (= b_and!270375 (and (=> t!297720 result!256728) b_and!270383)))

(assert (=> d!1073194 t!297722))

(declare-fun b_and!270385 () Bool)

(assert (= b_and!270377 (and (=> t!297722 result!256730) b_and!270385)))

(assert (=> d!1073194 t!297724))

(declare-fun b_and!270387 () Bool)

(assert (= b_and!270379 (and (=> t!297724 result!256732) b_and!270387)))

(assert (=> d!1073194 t!297726))

(declare-fun b_and!270389 () Bool)

(assert (= b_and!270381 (and (=> t!297726 result!256734) b_and!270389)))

(assert (=> d!1073194 m!4157879))

(assert (=> b!3652077 d!1073194))

(declare-fun d!1073196 () Bool)

(assert (=> d!1073196 (not (contains!7606 (usedCharacters!982 (regex!5770 (rule!8570 (_1!22326 lt!1267378)))) lt!1267365))))

(declare-fun lt!1267732 () Unit!55548)

(declare-fun choose!21552 (LexerInterface!5359 List!38643 List!38643 Rule!11340 Rule!11340 C!21244) Unit!55548)

(assert (=> d!1073196 (= lt!1267732 (choose!21552 thiss!23823 rules!3307 rules!3307 rule!403 (rule!8570 (_1!22326 lt!1267378)) lt!1267365))))

(assert (=> d!1073196 (rulesInvariant!4756 thiss!23823 rules!3307)))

(assert (=> d!1073196 (= (lemmaSepRuleNotContainsCharContainedInANonSepRule!298 thiss!23823 rules!3307 rules!3307 rule!403 (rule!8570 (_1!22326 lt!1267378)) lt!1267365) lt!1267732)))

(declare-fun bs!572319 () Bool)

(assert (= bs!572319 d!1073196))

(assert (=> bs!572319 m!4156865))

(assert (=> bs!572319 m!4156865))

(assert (=> bs!572319 m!4157039))

(declare-fun m!4157899 () Bool)

(assert (=> bs!572319 m!4157899))

(assert (=> bs!572319 m!4156915))

(assert (=> b!3652097 d!1073196))

(declare-fun d!1073198 () Bool)

(assert (=> d!1073198 (= (isEmpty!22829 rules!3307) ((_ is Nil!38519) rules!3307))))

(assert (=> b!3652095 d!1073198))

(declare-fun d!1073200 () Bool)

(declare-fun lt!1267733 () Bool)

(assert (=> d!1073200 (= lt!1267733 (select (content!5559 rules!3307) rule!403))))

(declare-fun e!2261605 () Bool)

(assert (=> d!1073200 (= lt!1267733 e!2261605)))

(declare-fun res!1482167 () Bool)

(assert (=> d!1073200 (=> (not res!1482167) (not e!2261605))))

(assert (=> d!1073200 (= res!1482167 ((_ is Cons!38519) rules!3307))))

(assert (=> d!1073200 (= (contains!7605 rules!3307 rule!403) lt!1267733)))

(declare-fun b!3652853 () Bool)

(declare-fun e!2261606 () Bool)

(assert (=> b!3652853 (= e!2261605 e!2261606)))

(declare-fun res!1482168 () Bool)

(assert (=> b!3652853 (=> res!1482168 e!2261606)))

(assert (=> b!3652853 (= res!1482168 (= (h!43939 rules!3307) rule!403))))

(declare-fun b!3652854 () Bool)

(assert (=> b!3652854 (= e!2261606 (contains!7605 (t!297626 rules!3307) rule!403))))

(assert (= (and d!1073200 res!1482167) b!3652853))

(assert (= (and b!3652853 (not res!1482168)) b!3652854))

(assert (=> d!1073200 m!4157513))

(declare-fun m!4157901 () Bool)

(assert (=> d!1073200 m!4157901))

(declare-fun m!4157903 () Bool)

(assert (=> b!3652854 m!4157903))

(assert (=> b!3652076 d!1073200))

(declare-fun d!1073202 () Bool)

(declare-fun res!1482173 () Bool)

(declare-fun e!2261609 () Bool)

(assert (=> d!1073202 (=> (not res!1482173) (not e!2261609))))

(assert (=> d!1073202 (= res!1482173 (not (isEmpty!22828 (originalCharacters!6484 token!511))))))

(assert (=> d!1073202 (= (inv!51972 token!511) e!2261609)))

(declare-fun b!3652859 () Bool)

(declare-fun res!1482174 () Bool)

(assert (=> b!3652859 (=> (not res!1482174) (not e!2261609))))

(assert (=> b!3652859 (= res!1482174 (= (originalCharacters!6484 token!511) (list!14276 (dynLambda!16795 (toChars!7921 (transformation!5770 (rule!8570 token!511))) (value!184905 token!511)))))))

(declare-fun b!3652860 () Bool)

(assert (=> b!3652860 (= e!2261609 (= (size!29415 token!511) (size!29417 (originalCharacters!6484 token!511))))))

(assert (= (and d!1073202 res!1482173) b!3652859))

(assert (= (and b!3652859 res!1482174) b!3652860))

(declare-fun b_lambda!108333 () Bool)

(assert (=> (not b_lambda!108333) (not b!3652859)))

(assert (=> b!3652859 t!297644))

(declare-fun b_and!270391 () Bool)

(assert (= b_and!270351 (and (=> t!297644 result!256640) b_and!270391)))

(assert (=> b!3652859 t!297646))

(declare-fun b_and!270393 () Bool)

(assert (= b_and!270353 (and (=> t!297646 result!256644) b_and!270393)))

(assert (=> b!3652859 t!297648))

(declare-fun b_and!270395 () Bool)

(assert (= b_and!270355 (and (=> t!297648 result!256646) b_and!270395)))

(assert (=> b!3652859 t!297650))

(declare-fun b_and!270397 () Bool)

(assert (= b_and!270357 (and (=> t!297650 result!256648) b_and!270397)))

(declare-fun m!4157905 () Bool)

(assert (=> d!1073202 m!4157905))

(assert (=> b!3652859 m!4157293))

(assert (=> b!3652859 m!4157293))

(declare-fun m!4157907 () Bool)

(assert (=> b!3652859 m!4157907))

(declare-fun m!4157909 () Bool)

(assert (=> b!3652860 m!4157909))

(assert (=> start!341522 d!1073202))

(declare-fun b!3652861 () Bool)

(declare-fun e!2261612 () Bool)

(declare-fun e!2261616 () Bool)

(assert (=> b!3652861 (= e!2261612 e!2261616)))

(declare-fun c!631358 () Bool)

(assert (=> b!3652861 (= c!631358 ((_ is EmptyLang!10529) (regex!5770 (rule!8570 (_1!22326 lt!1267378)))))))

(declare-fun b!3652862 () Bool)

(declare-fun res!1482180 () Bool)

(declare-fun e!2261610 () Bool)

(assert (=> b!3652862 (=> (not res!1482180) (not e!2261610))))

(assert (=> b!3652862 (= res!1482180 (isEmpty!22828 (tail!5657 lt!1267382)))))

(declare-fun b!3652863 () Bool)

(assert (=> b!3652863 (= e!2261610 (= (head!7786 lt!1267382) (c!631208 (regex!5770 (rule!8570 (_1!22326 lt!1267378))))))))

(declare-fun b!3652864 () Bool)

(declare-fun e!2261611 () Bool)

(assert (=> b!3652864 (= e!2261611 (not (= (head!7786 lt!1267382) (c!631208 (regex!5770 (rule!8570 (_1!22326 lt!1267378)))))))))

(declare-fun b!3652865 () Bool)

(declare-fun res!1482179 () Bool)

(declare-fun e!2261615 () Bool)

(assert (=> b!3652865 (=> res!1482179 e!2261615)))

(assert (=> b!3652865 (= res!1482179 (not ((_ is ElementMatch!10529) (regex!5770 (rule!8570 (_1!22326 lt!1267378))))))))

(assert (=> b!3652865 (= e!2261616 e!2261615)))

(declare-fun b!3652866 () Bool)

(declare-fun e!2261614 () Bool)

(assert (=> b!3652866 (= e!2261615 e!2261614)))

(declare-fun res!1482182 () Bool)

(assert (=> b!3652866 (=> (not res!1482182) (not e!2261614))))

(declare-fun lt!1267734 () Bool)

(assert (=> b!3652866 (= res!1482182 (not lt!1267734))))

(declare-fun b!3652867 () Bool)

(declare-fun call!264023 () Bool)

(assert (=> b!3652867 (= e!2261612 (= lt!1267734 call!264023))))

(declare-fun b!3652868 () Bool)

(declare-fun res!1482175 () Bool)

(assert (=> b!3652868 (=> res!1482175 e!2261611)))

(assert (=> b!3652868 (= res!1482175 (not (isEmpty!22828 (tail!5657 lt!1267382))))))

(declare-fun b!3652869 () Bool)

(assert (=> b!3652869 (= e!2261614 e!2261611)))

(declare-fun res!1482178 () Bool)

(assert (=> b!3652869 (=> res!1482178 e!2261611)))

(assert (=> b!3652869 (= res!1482178 call!264023)))

(declare-fun b!3652870 () Bool)

(declare-fun e!2261613 () Bool)

(assert (=> b!3652870 (= e!2261613 (matchR!5098 (derivativeStep!3208 (regex!5770 (rule!8570 (_1!22326 lt!1267378))) (head!7786 lt!1267382)) (tail!5657 lt!1267382)))))

(declare-fun b!3652871 () Bool)

(assert (=> b!3652871 (= e!2261613 (nullable!3659 (regex!5770 (rule!8570 (_1!22326 lt!1267378)))))))

(declare-fun d!1073204 () Bool)

(assert (=> d!1073204 e!2261612))

(declare-fun c!631360 () Bool)

(assert (=> d!1073204 (= c!631360 ((_ is EmptyExpr!10529) (regex!5770 (rule!8570 (_1!22326 lt!1267378)))))))

(assert (=> d!1073204 (= lt!1267734 e!2261613)))

(declare-fun c!631359 () Bool)

(assert (=> d!1073204 (= c!631359 (isEmpty!22828 lt!1267382))))

(assert (=> d!1073204 (validRegex!4821 (regex!5770 (rule!8570 (_1!22326 lt!1267378))))))

(assert (=> d!1073204 (= (matchR!5098 (regex!5770 (rule!8570 (_1!22326 lt!1267378))) lt!1267382) lt!1267734)))

(declare-fun b!3652872 () Bool)

(assert (=> b!3652872 (= e!2261616 (not lt!1267734))))

(declare-fun b!3652873 () Bool)

(declare-fun res!1482176 () Bool)

(assert (=> b!3652873 (=> res!1482176 e!2261615)))

(assert (=> b!3652873 (= res!1482176 e!2261610)))

(declare-fun res!1482181 () Bool)

(assert (=> b!3652873 (=> (not res!1482181) (not e!2261610))))

(assert (=> b!3652873 (= res!1482181 lt!1267734)))

(declare-fun b!3652874 () Bool)

(declare-fun res!1482177 () Bool)

(assert (=> b!3652874 (=> (not res!1482177) (not e!2261610))))

(assert (=> b!3652874 (= res!1482177 (not call!264023))))

(declare-fun bm!264018 () Bool)

(assert (=> bm!264018 (= call!264023 (isEmpty!22828 lt!1267382))))

(assert (= (and d!1073204 c!631359) b!3652871))

(assert (= (and d!1073204 (not c!631359)) b!3652870))

(assert (= (and d!1073204 c!631360) b!3652867))

(assert (= (and d!1073204 (not c!631360)) b!3652861))

(assert (= (and b!3652861 c!631358) b!3652872))

(assert (= (and b!3652861 (not c!631358)) b!3652865))

(assert (= (and b!3652865 (not res!1482179)) b!3652873))

(assert (= (and b!3652873 res!1482181) b!3652874))

(assert (= (and b!3652874 res!1482177) b!3652862))

(assert (= (and b!3652862 res!1482180) b!3652863))

(assert (= (and b!3652873 (not res!1482176)) b!3652866))

(assert (= (and b!3652866 res!1482182) b!3652869))

(assert (= (and b!3652869 (not res!1482178)) b!3652868))

(assert (= (and b!3652868 (not res!1482175)) b!3652864))

(assert (= (or b!3652867 b!3652874 b!3652869) bm!264018))

(assert (=> b!3652870 m!4156983))

(assert (=> b!3652870 m!4156983))

(declare-fun m!4157911 () Bool)

(assert (=> b!3652870 m!4157911))

(assert (=> b!3652870 m!4157377))

(assert (=> b!3652870 m!4157911))

(assert (=> b!3652870 m!4157377))

(declare-fun m!4157913 () Bool)

(assert (=> b!3652870 m!4157913))

(assert (=> b!3652863 m!4156983))

(declare-fun m!4157915 () Bool)

(assert (=> bm!264018 m!4157915))

(assert (=> b!3652862 m!4157377))

(assert (=> b!3652862 m!4157377))

(declare-fun m!4157917 () Bool)

(assert (=> b!3652862 m!4157917))

(assert (=> d!1073204 m!4157915))

(assert (=> d!1073204 m!4156951))

(assert (=> b!3652868 m!4157377))

(assert (=> b!3652868 m!4157377))

(assert (=> b!3652868 m!4157917))

(assert (=> b!3652864 m!4156983))

(declare-fun m!4157919 () Bool)

(assert (=> b!3652871 m!4157919))

(assert (=> b!3652075 d!1073204))

(declare-fun d!1073206 () Bool)

(declare-fun res!1482187 () Bool)

(declare-fun e!2261621 () Bool)

(assert (=> d!1073206 (=> res!1482187 e!2261621)))

(assert (=> d!1073206 (= res!1482187 (not ((_ is Cons!38519) rules!3307)))))

(assert (=> d!1073206 (= (sepAndNonSepRulesDisjointChars!1938 rules!3307 rules!3307) e!2261621)))

(declare-fun b!3652879 () Bool)

(declare-fun e!2261622 () Bool)

(assert (=> b!3652879 (= e!2261621 e!2261622)))

(declare-fun res!1482188 () Bool)

(assert (=> b!3652879 (=> (not res!1482188) (not e!2261622))))

(declare-fun ruleDisjointCharsFromAllFromOtherType!883 (Rule!11340 List!38643) Bool)

(assert (=> b!3652879 (= res!1482188 (ruleDisjointCharsFromAllFromOtherType!883 (h!43939 rules!3307) rules!3307))))

(declare-fun b!3652880 () Bool)

(assert (=> b!3652880 (= e!2261622 (sepAndNonSepRulesDisjointChars!1938 rules!3307 (t!297626 rules!3307)))))

(assert (= (and d!1073206 (not res!1482187)) b!3652879))

(assert (= (and b!3652879 res!1482188) b!3652880))

(declare-fun m!4157921 () Bool)

(assert (=> b!3652879 m!4157921))

(declare-fun m!4157923 () Bool)

(assert (=> b!3652880 m!4157923))

(assert (=> b!3652092 d!1073206))

(declare-fun d!1073208 () Bool)

(assert (=> d!1073208 (not (matchR!5098 (regex!5770 rule!403) lt!1267377))))

(declare-fun lt!1267735 () Unit!55548)

(assert (=> d!1073208 (= lt!1267735 (choose!21541 (regex!5770 rule!403) lt!1267377 lt!1267365))))

(assert (=> d!1073208 (validRegex!4821 (regex!5770 rule!403))))

(assert (=> d!1073208 (= (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!718 (regex!5770 rule!403) lt!1267377 lt!1267365) lt!1267735)))

(declare-fun bs!572320 () Bool)

(assert (= bs!572320 d!1073208))

(assert (=> bs!572320 m!4156877))

(declare-fun m!4157925 () Bool)

(assert (=> bs!572320 m!4157925))

(assert (=> bs!572320 m!4157109))

(assert (=> b!3652073 d!1073208))

(declare-fun d!1073210 () Bool)

(assert (=> d!1073210 (= (inv!51968 (tag!6536 anOtherTypeRule!33)) (= (mod (str.len (value!184904 (tag!6536 anOtherTypeRule!33))) 2) 0))))

(assert (=> b!3652091 d!1073210))

(declare-fun d!1073212 () Bool)

(declare-fun res!1482189 () Bool)

(declare-fun e!2261623 () Bool)

(assert (=> d!1073212 (=> (not res!1482189) (not e!2261623))))

(assert (=> d!1073212 (= res!1482189 (semiInverseModEq!2459 (toChars!7921 (transformation!5770 anOtherTypeRule!33)) (toValue!8062 (transformation!5770 anOtherTypeRule!33))))))

(assert (=> d!1073212 (= (inv!51971 (transformation!5770 anOtherTypeRule!33)) e!2261623)))

(declare-fun b!3652881 () Bool)

(assert (=> b!3652881 (= e!2261623 (equivClasses!2358 (toChars!7921 (transformation!5770 anOtherTypeRule!33)) (toValue!8062 (transformation!5770 anOtherTypeRule!33))))))

(assert (= (and d!1073212 res!1482189) b!3652881))

(declare-fun m!4157927 () Bool)

(assert (=> d!1073212 m!4157927))

(declare-fun m!4157929 () Bool)

(assert (=> b!3652881 m!4157929))

(assert (=> b!3652091 d!1073212))

(declare-fun b!3652882 () Bool)

(declare-fun e!2261626 () Bool)

(declare-fun e!2261630 () Bool)

(assert (=> b!3652882 (= e!2261626 e!2261630)))

(declare-fun c!631361 () Bool)

(assert (=> b!3652882 (= c!631361 ((_ is EmptyLang!10529) (regex!5770 lt!1267360)))))

(declare-fun b!3652883 () Bool)

(declare-fun res!1482195 () Bool)

(declare-fun e!2261624 () Bool)

(assert (=> b!3652883 (=> (not res!1482195) (not e!2261624))))

(assert (=> b!3652883 (= res!1482195 (isEmpty!22828 (tail!5657 (list!14276 (charsOf!3784 (_1!22326 lt!1267378))))))))

(declare-fun b!3652884 () Bool)

(assert (=> b!3652884 (= e!2261624 (= (head!7786 (list!14276 (charsOf!3784 (_1!22326 lt!1267378)))) (c!631208 (regex!5770 lt!1267360))))))

(declare-fun b!3652885 () Bool)

(declare-fun e!2261625 () Bool)

(assert (=> b!3652885 (= e!2261625 (not (= (head!7786 (list!14276 (charsOf!3784 (_1!22326 lt!1267378)))) (c!631208 (regex!5770 lt!1267360)))))))

(declare-fun b!3652886 () Bool)

(declare-fun res!1482194 () Bool)

(declare-fun e!2261629 () Bool)

(assert (=> b!3652886 (=> res!1482194 e!2261629)))

(assert (=> b!3652886 (= res!1482194 (not ((_ is ElementMatch!10529) (regex!5770 lt!1267360))))))

(assert (=> b!3652886 (= e!2261630 e!2261629)))

(declare-fun b!3652887 () Bool)

(declare-fun e!2261628 () Bool)

(assert (=> b!3652887 (= e!2261629 e!2261628)))

(declare-fun res!1482197 () Bool)

(assert (=> b!3652887 (=> (not res!1482197) (not e!2261628))))

(declare-fun lt!1267736 () Bool)

(assert (=> b!3652887 (= res!1482197 (not lt!1267736))))

(declare-fun b!3652888 () Bool)

(declare-fun call!264024 () Bool)

(assert (=> b!3652888 (= e!2261626 (= lt!1267736 call!264024))))

(declare-fun b!3652889 () Bool)

(declare-fun res!1482190 () Bool)

(assert (=> b!3652889 (=> res!1482190 e!2261625)))

(assert (=> b!3652889 (= res!1482190 (not (isEmpty!22828 (tail!5657 (list!14276 (charsOf!3784 (_1!22326 lt!1267378)))))))))

(declare-fun b!3652890 () Bool)

(assert (=> b!3652890 (= e!2261628 e!2261625)))

(declare-fun res!1482193 () Bool)

(assert (=> b!3652890 (=> res!1482193 e!2261625)))

(assert (=> b!3652890 (= res!1482193 call!264024)))

(declare-fun b!3652891 () Bool)

(declare-fun e!2261627 () Bool)

(assert (=> b!3652891 (= e!2261627 (matchR!5098 (derivativeStep!3208 (regex!5770 lt!1267360) (head!7786 (list!14276 (charsOf!3784 (_1!22326 lt!1267378))))) (tail!5657 (list!14276 (charsOf!3784 (_1!22326 lt!1267378))))))))

(declare-fun b!3652892 () Bool)

(assert (=> b!3652892 (= e!2261627 (nullable!3659 (regex!5770 lt!1267360)))))

(declare-fun d!1073214 () Bool)

(assert (=> d!1073214 e!2261626))

(declare-fun c!631363 () Bool)

(assert (=> d!1073214 (= c!631363 ((_ is EmptyExpr!10529) (regex!5770 lt!1267360)))))

(assert (=> d!1073214 (= lt!1267736 e!2261627)))

(declare-fun c!631362 () Bool)

(assert (=> d!1073214 (= c!631362 (isEmpty!22828 (list!14276 (charsOf!3784 (_1!22326 lt!1267378)))))))

(assert (=> d!1073214 (validRegex!4821 (regex!5770 lt!1267360))))

(assert (=> d!1073214 (= (matchR!5098 (regex!5770 lt!1267360) (list!14276 (charsOf!3784 (_1!22326 lt!1267378)))) lt!1267736)))

(declare-fun b!3652893 () Bool)

(assert (=> b!3652893 (= e!2261630 (not lt!1267736))))

(declare-fun b!3652894 () Bool)

(declare-fun res!1482191 () Bool)

(assert (=> b!3652894 (=> res!1482191 e!2261629)))

(assert (=> b!3652894 (= res!1482191 e!2261624)))

(declare-fun res!1482196 () Bool)

(assert (=> b!3652894 (=> (not res!1482196) (not e!2261624))))

(assert (=> b!3652894 (= res!1482196 lt!1267736)))

(declare-fun b!3652895 () Bool)

(declare-fun res!1482192 () Bool)

(assert (=> b!3652895 (=> (not res!1482192) (not e!2261624))))

(assert (=> b!3652895 (= res!1482192 (not call!264024))))

(declare-fun bm!264019 () Bool)

(assert (=> bm!264019 (= call!264024 (isEmpty!22828 (list!14276 (charsOf!3784 (_1!22326 lt!1267378)))))))

(assert (= (and d!1073214 c!631362) b!3652892))

(assert (= (and d!1073214 (not c!631362)) b!3652891))

(assert (= (and d!1073214 c!631363) b!3652888))

(assert (= (and d!1073214 (not c!631363)) b!3652882))

(assert (= (and b!3652882 c!631361) b!3652893))

(assert (= (and b!3652882 (not c!631361)) b!3652886))

(assert (= (and b!3652886 (not res!1482194)) b!3652894))

(assert (= (and b!3652894 res!1482196) b!3652895))

(assert (= (and b!3652895 res!1482192) b!3652883))

(assert (= (and b!3652883 res!1482195) b!3652884))

(assert (= (and b!3652894 (not res!1482191)) b!3652887))

(assert (= (and b!3652887 res!1482197) b!3652890))

(assert (= (and b!3652890 (not res!1482193)) b!3652889))

(assert (= (and b!3652889 (not res!1482190)) b!3652885))

(assert (= (or b!3652888 b!3652895 b!3652890) bm!264019))

(assert (=> b!3652891 m!4156917))

(declare-fun m!4157931 () Bool)

(assert (=> b!3652891 m!4157931))

(assert (=> b!3652891 m!4157931))

(declare-fun m!4157933 () Bool)

(assert (=> b!3652891 m!4157933))

(assert (=> b!3652891 m!4156917))

(declare-fun m!4157935 () Bool)

(assert (=> b!3652891 m!4157935))

(assert (=> b!3652891 m!4157933))

(assert (=> b!3652891 m!4157935))

(declare-fun m!4157937 () Bool)

(assert (=> b!3652891 m!4157937))

(assert (=> b!3652884 m!4156917))

(assert (=> b!3652884 m!4157931))

(assert (=> bm!264019 m!4156917))

(declare-fun m!4157939 () Bool)

(assert (=> bm!264019 m!4157939))

(assert (=> b!3652883 m!4156917))

(assert (=> b!3652883 m!4157935))

(assert (=> b!3652883 m!4157935))

(declare-fun m!4157941 () Bool)

(assert (=> b!3652883 m!4157941))

(assert (=> d!1073214 m!4156917))

(assert (=> d!1073214 m!4157939))

(declare-fun m!4157943 () Bool)

(assert (=> d!1073214 m!4157943))

(assert (=> b!3652889 m!4156917))

(assert (=> b!3652889 m!4157935))

(assert (=> b!3652889 m!4157935))

(assert (=> b!3652889 m!4157941))

(assert (=> b!3652885 m!4156917))

(assert (=> b!3652885 m!4157931))

(declare-fun m!4157945 () Bool)

(assert (=> b!3652892 m!4157945))

(assert (=> b!3652090 d!1073214))

(declare-fun d!1073216 () Bool)

(assert (=> d!1073216 (= (list!14276 (charsOf!3784 (_1!22326 lt!1267378))) (list!14278 (c!631209 (charsOf!3784 (_1!22326 lt!1267378)))))))

(declare-fun bs!572321 () Bool)

(assert (= bs!572321 d!1073216))

(declare-fun m!4157947 () Bool)

(assert (=> bs!572321 m!4157947))

(assert (=> b!3652090 d!1073216))

(assert (=> b!3652090 d!1073076))

(declare-fun d!1073218 () Bool)

(assert (=> d!1073218 (= (get!12664 lt!1267383) (v!38032 lt!1267383))))

(assert (=> b!3652090 d!1073218))

(declare-fun d!1073220 () Bool)

(assert (=> d!1073220 (= (isEmpty!22828 suffix!1395) ((_ is Nil!38518) suffix!1395))))

(assert (=> b!3652071 d!1073220))

(declare-fun b!3652906 () Bool)

(declare-fun b_free!96133 () Bool)

(declare-fun b_next!96837 () Bool)

(assert (=> b!3652906 (= b_free!96133 (not b_next!96837))))

(declare-fun tb!210849 () Bool)

(declare-fun t!297736 () Bool)

(assert (=> (and b!3652906 (= (toValue!8062 (transformation!5770 (h!43939 (t!297626 rules!3307)))) (toValue!8062 (transformation!5770 (rule!8570 (_1!22326 lt!1267378))))) t!297736) tb!210849))

(declare-fun result!256746 () Bool)

(assert (= result!256746 result!256728))

(assert (=> d!1073190 t!297736))

(assert (=> d!1073194 t!297736))

(declare-fun tb!210851 () Bool)

(declare-fun t!297738 () Bool)

(assert (=> (and b!3652906 (= (toValue!8062 (transformation!5770 (h!43939 (t!297626 rules!3307)))) (toValue!8062 (transformation!5770 (rule!8570 (_1!22326 lt!1267378))))) t!297738) tb!210851))

(declare-fun result!256748 () Bool)

(assert (= result!256748 result!256736))

(assert (=> d!1073190 t!297738))

(assert (=> d!1073158 t!297736))

(declare-fun t!297740 () Bool)

(declare-fun tb!210853 () Bool)

(assert (=> (and b!3652906 (= (toValue!8062 (transformation!5770 (h!43939 (t!297626 rules!3307)))) (toValue!8062 (transformation!5770 (rule!8570 (_1!22326 lt!1267378))))) t!297740) tb!210853))

(declare-fun result!256750 () Bool)

(assert (= result!256750 result!256684))

(assert (=> d!1073112 t!297740))

(declare-fun b_and!270399 () Bool)

(declare-fun tp!1113348 () Bool)

(assert (=> b!3652906 (= tp!1113348 (and (=> t!297738 result!256748) (=> t!297736 result!256746) (=> t!297740 result!256750) b_and!270399))))

(declare-fun b_free!96135 () Bool)

(declare-fun b_next!96839 () Bool)

(assert (=> b!3652906 (= b_free!96135 (not b_next!96839))))

(declare-fun tb!210855 () Bool)

(declare-fun t!297742 () Bool)

(assert (=> (and b!3652906 (= (toChars!7921 (transformation!5770 (h!43939 (t!297626 rules!3307)))) (toChars!7921 (transformation!5770 (rule!8570 token!511)))) t!297742) tb!210855))

(declare-fun result!256752 () Bool)

(assert (= result!256752 result!256640))

(assert (=> d!1073026 t!297742))

(declare-fun t!297744 () Bool)

(declare-fun tb!210857 () Bool)

(assert (=> (and b!3652906 (= (toChars!7921 (transformation!5770 (h!43939 (t!297626 rules!3307)))) (toChars!7921 (transformation!5770 (rule!8570 (_1!22326 lt!1267378))))) t!297744) tb!210857))

(declare-fun result!256754 () Bool)

(assert (= result!256754 result!256660))

(assert (=> d!1073076 t!297744))

(declare-fun tb!210859 () Bool)

(declare-fun t!297746 () Bool)

(assert (=> (and b!3652906 (= (toChars!7921 (transformation!5770 (h!43939 (t!297626 rules!3307)))) (toChars!7921 (transformation!5770 (rule!8570 (_1!22326 lt!1267378))))) t!297746) tb!210859))

(declare-fun result!256756 () Bool)

(assert (= result!256756 result!256720))

(assert (=> d!1073158 t!297746))

(assert (=> b!3652859 t!297742))

(declare-fun b_and!270401 () Bool)

(declare-fun tp!1113349 () Bool)

(assert (=> b!3652906 (= tp!1113349 (and (=> t!297742 result!256752) (=> t!297744 result!256754) (=> t!297746 result!256756) b_and!270401))))

(declare-fun e!2261639 () Bool)

(assert (=> b!3652906 (= e!2261639 (and tp!1113348 tp!1113349))))

(declare-fun e!2261640 () Bool)

(declare-fun tp!1113347 () Bool)

(declare-fun b!3652905 () Bool)

(assert (=> b!3652905 (= e!2261640 (and tp!1113347 (inv!51968 (tag!6536 (h!43939 (t!297626 rules!3307)))) (inv!51971 (transformation!5770 (h!43939 (t!297626 rules!3307)))) e!2261639))))

(declare-fun b!3652904 () Bool)

(declare-fun e!2261642 () Bool)

(declare-fun tp!1113350 () Bool)

(assert (=> b!3652904 (= e!2261642 (and e!2261640 tp!1113350))))

(assert (=> b!3652074 (= tp!1113276 e!2261642)))

(assert (= b!3652905 b!3652906))

(assert (= b!3652904 b!3652905))

(assert (= (and b!3652074 ((_ is Cons!38519) (t!297626 rules!3307))) b!3652904))

(declare-fun m!4157949 () Bool)

(assert (=> b!3652905 m!4157949))

(declare-fun m!4157951 () Bool)

(assert (=> b!3652905 m!4157951))

(declare-fun b!3652911 () Bool)

(declare-fun e!2261645 () Bool)

(declare-fun tp!1113353 () Bool)

(assert (=> b!3652911 (= e!2261645 (and tp_is_empty!18141 tp!1113353))))

(assert (=> b!3652109 (= tp!1113273 e!2261645)))

(assert (= (and b!3652109 ((_ is Cons!38518) (t!297625 suffix!1395))) b!3652911))

(declare-fun b!3652925 () Bool)

(declare-fun e!2261648 () Bool)

(declare-fun tp!1113368 () Bool)

(declare-fun tp!1113365 () Bool)

(assert (=> b!3652925 (= e!2261648 (and tp!1113368 tp!1113365))))

(declare-fun b!3652923 () Bool)

(declare-fun tp!1113364 () Bool)

(declare-fun tp!1113367 () Bool)

(assert (=> b!3652923 (= e!2261648 (and tp!1113364 tp!1113367))))

(declare-fun b!3652922 () Bool)

(assert (=> b!3652922 (= e!2261648 tp_is_empty!18141)))

(assert (=> b!3652105 (= tp!1113270 e!2261648)))

(declare-fun b!3652924 () Bool)

(declare-fun tp!1113366 () Bool)

(assert (=> b!3652924 (= e!2261648 tp!1113366)))

(assert (= (and b!3652105 ((_ is ElementMatch!10529) (regex!5770 (h!43939 rules!3307)))) b!3652922))

(assert (= (and b!3652105 ((_ is Concat!16530) (regex!5770 (h!43939 rules!3307)))) b!3652923))

(assert (= (and b!3652105 ((_ is Star!10529) (regex!5770 (h!43939 rules!3307)))) b!3652924))

(assert (= (and b!3652105 ((_ is Union!10529) (regex!5770 (h!43939 rules!3307)))) b!3652925))

(declare-fun b!3652926 () Bool)

(declare-fun e!2261649 () Bool)

(declare-fun tp!1113369 () Bool)

(assert (=> b!3652926 (= e!2261649 (and tp_is_empty!18141 tp!1113369))))

(assert (=> b!3652096 (= tp!1113275 e!2261649)))

(assert (= (and b!3652096 ((_ is Cons!38518) (originalCharacters!6484 token!511))) b!3652926))

(declare-fun b!3652930 () Bool)

(declare-fun e!2261650 () Bool)

(declare-fun tp!1113374 () Bool)

(declare-fun tp!1113371 () Bool)

(assert (=> b!3652930 (= e!2261650 (and tp!1113374 tp!1113371))))

(declare-fun b!3652928 () Bool)

(declare-fun tp!1113370 () Bool)

(declare-fun tp!1113373 () Bool)

(assert (=> b!3652928 (= e!2261650 (and tp!1113370 tp!1113373))))

(declare-fun b!3652927 () Bool)

(assert (=> b!3652927 (= e!2261650 tp_is_empty!18141)))

(assert (=> b!3652081 (= tp!1113280 e!2261650)))

(declare-fun b!3652929 () Bool)

(declare-fun tp!1113372 () Bool)

(assert (=> b!3652929 (= e!2261650 tp!1113372)))

(assert (= (and b!3652081 ((_ is ElementMatch!10529) (regex!5770 rule!403))) b!3652927))

(assert (= (and b!3652081 ((_ is Concat!16530) (regex!5770 rule!403))) b!3652928))

(assert (= (and b!3652081 ((_ is Star!10529) (regex!5770 rule!403))) b!3652929))

(assert (= (and b!3652081 ((_ is Union!10529) (regex!5770 rule!403))) b!3652930))

(declare-fun b!3652934 () Bool)

(declare-fun e!2261651 () Bool)

(declare-fun tp!1113379 () Bool)

(declare-fun tp!1113376 () Bool)

(assert (=> b!3652934 (= e!2261651 (and tp!1113379 tp!1113376))))

(declare-fun b!3652932 () Bool)

(declare-fun tp!1113375 () Bool)

(declare-fun tp!1113378 () Bool)

(assert (=> b!3652932 (= e!2261651 (and tp!1113375 tp!1113378))))

(declare-fun b!3652931 () Bool)

(assert (=> b!3652931 (= e!2261651 tp_is_empty!18141)))

(assert (=> b!3652106 (= tp!1113271 e!2261651)))

(declare-fun b!3652933 () Bool)

(declare-fun tp!1113377 () Bool)

(assert (=> b!3652933 (= e!2261651 tp!1113377)))

(assert (= (and b!3652106 ((_ is ElementMatch!10529) (regex!5770 (rule!8570 token!511)))) b!3652931))

(assert (= (and b!3652106 ((_ is Concat!16530) (regex!5770 (rule!8570 token!511)))) b!3652932))

(assert (= (and b!3652106 ((_ is Star!10529) (regex!5770 (rule!8570 token!511)))) b!3652933))

(assert (= (and b!3652106 ((_ is Union!10529) (regex!5770 (rule!8570 token!511)))) b!3652934))

(declare-fun b!3652938 () Bool)

(declare-fun e!2261652 () Bool)

(declare-fun tp!1113384 () Bool)

(declare-fun tp!1113381 () Bool)

(assert (=> b!3652938 (= e!2261652 (and tp!1113384 tp!1113381))))

(declare-fun b!3652936 () Bool)

(declare-fun tp!1113380 () Bool)

(declare-fun tp!1113383 () Bool)

(assert (=> b!3652936 (= e!2261652 (and tp!1113380 tp!1113383))))

(declare-fun b!3652935 () Bool)

(assert (=> b!3652935 (= e!2261652 tp_is_empty!18141)))

(assert (=> b!3652091 (= tp!1113269 e!2261652)))

(declare-fun b!3652937 () Bool)

(declare-fun tp!1113382 () Bool)

(assert (=> b!3652937 (= e!2261652 tp!1113382)))

(assert (= (and b!3652091 ((_ is ElementMatch!10529) (regex!5770 anOtherTypeRule!33))) b!3652935))

(assert (= (and b!3652091 ((_ is Concat!16530) (regex!5770 anOtherTypeRule!33))) b!3652936))

(assert (= (and b!3652091 ((_ is Star!10529) (regex!5770 anOtherTypeRule!33))) b!3652937))

(assert (= (and b!3652091 ((_ is Union!10529) (regex!5770 anOtherTypeRule!33))) b!3652938))

(declare-fun b_lambda!108335 () Bool)

(assert (= b_lambda!108299 (or (and b!3652906 b_free!96135 (= (toChars!7921 (transformation!5770 (h!43939 (t!297626 rules!3307)))) (toChars!7921 (transformation!5770 (rule!8570 token!511))))) (and b!3652094 b_free!96119) (and b!3652093 b_free!96123 (= (toChars!7921 (transformation!5770 anOtherTypeRule!33)) (toChars!7921 (transformation!5770 (rule!8570 token!511))))) (and b!3652088 b_free!96127 (= (toChars!7921 (transformation!5770 (h!43939 rules!3307))) (toChars!7921 (transformation!5770 (rule!8570 token!511))))) (and b!3652089 b_free!96115 (= (toChars!7921 (transformation!5770 rule!403)) (toChars!7921 (transformation!5770 (rule!8570 token!511))))) b_lambda!108335)))

(declare-fun b_lambda!108337 () Bool)

(assert (= b_lambda!108333 (or (and b!3652906 b_free!96135 (= (toChars!7921 (transformation!5770 (h!43939 (t!297626 rules!3307)))) (toChars!7921 (transformation!5770 (rule!8570 token!511))))) (and b!3652094 b_free!96119) (and b!3652093 b_free!96123 (= (toChars!7921 (transformation!5770 anOtherTypeRule!33)) (toChars!7921 (transformation!5770 (rule!8570 token!511))))) (and b!3652088 b_free!96127 (= (toChars!7921 (transformation!5770 (h!43939 rules!3307))) (toChars!7921 (transformation!5770 (rule!8570 token!511))))) (and b!3652089 b_free!96115 (= (toChars!7921 (transformation!5770 rule!403)) (toChars!7921 (transformation!5770 (rule!8570 token!511))))) b_lambda!108337)))

(check-sat (not d!1073012) (not b!3652487) (not d!1073190) (not b!3652924) (not b_lambda!108303) (not b_lambda!108309) b_and!270389 (not b!3652860) (not b!3652911) (not b_lambda!108327) b_and!270399 (not b!3652448) (not b!3652905) (not d!1073154) (not d!1073084) (not d!1073026) (not b!3652519) (not b!3652868) (not d!1073064) (not b!3652937) (not d!1073128) (not bm!263986) (not b!3652932) (not b!3652601) (not bm!263989) (not b!3652862) (not b!3652845) (not b!3652930) (not b!3652456) (not b!3652298) (not b_lambda!108329) (not b!3652426) (not d!1073068) (not b_next!96825) b_and!270383 b_and!270393 (not b!3652933) (not d!1073134) (not bm!264008) (not b!3652409) (not b!3652929) (not b!3652599) (not d!1073076) (not b!3652938) (not b!3652488) (not b!3652697) (not b!3652884) (not d!1072958) (not d!1073132) (not b!3652660) (not b!3652293) (not d!1072962) (not b!3652547) (not b!3652536) (not b!3652891) (not d!1073202) (not b_lambda!108337) (not b!3652605) (not b!3652696) (not b!3652453) (not d!1073090) (not d!1073070) (not b!3652665) (not b_lambda!108335) (not b!3652551) (not b!3652885) (not tb!210773) (not b!3652936) (not d!1073040) (not d!1073092) (not b!3652407) (not d!1072998) (not b!3652534) (not b!3652524) (not b!3652406) (not b_next!96839) (not b!3652698) b_and!270397 (not b!3652552) (not b!3652871) (not b!3652518) (not b_next!96831) (not d!1073158) (not b!3652452) (not b!3652904) (not d!1073054) (not b_lambda!108323) (not d!1073102) (not d!1073082) (not bm!264018) (not b!3652864) (not b!3652667) (not d!1073024) (not b_lambda!108331) (not d!1073044) (not b!3652881) (not b!3652553) (not d!1073034) (not b!3652316) (not b_next!96823) (not b!3652451) (not b!3652662) (not b_next!96819) (not b!3652486) (not b!3652923) (not b!3652427) (not d!1073192) (not b!3652444) b_and!270391 (not bm!263994) (not b!3652889) (not b!3652548) b_and!270401 (not b!3652879) (not bm!264003) (not b!3652561) (not d!1073204) (not bm!264004) (not d!1073196) (not d!1073100) (not d!1073212) (not b!3652450) (not d!1073216) (not b!3652545) (not d!1073086) (not tb!210841) (not b_next!96827) (not b!3652572) (not b!3652673) (not b!3652412) (not b!3652926) (not b_next!96837) (not tb!210833) (not b!3652294) (not d!1073018) (not bm!263990) (not b!3652883) b_and!270385 (not tb!210825) (not tb!210757) (not b!3652520) (not bm!264007) (not d!1072976) (not bm!263988) (not bm!263995) (not b_lambda!108325) (not b!3652404) b_and!270395 (not b!3652449) (not d!1073094) (not bm!264006) (not b!3652408) (not d!1073060) (not d!1073030) (not d!1073156) (not b!3652603) (not b!3652925) (not b!3652405) (not b!3652443) (not b!3652567) (not d!1073138) (not b!3652859) (not d!1073130) (not b_next!96829) (not bm!263961) (not d!1073066) (not d!1073020) (not b!3652410) (not b!3652928) (not d!1073136) (not b!3652555) (not bm!263962) (not tb!210797) (not d!1072928) (not b!3652301) (not b!3652543) (not b!3652892) (not bm!263963) (not d!1073208) (not b!3652523) (not b!3652604) (not d!1073200) (not b!3652330) (not bm!264019) (not d!1073062) (not b!3652934) (not b!3652292) (not b!3652606) (not b!3652454) (not b!3652880) (not b!3652602) tp_is_empty!18141 (not d!1073098) (not b!3652550) (not b!3652535) (not b!3652870) (not d!1072934) (not b!3652546) (not b!3652359) (not b!3652600) (not b_next!96817) (not b!3652652) (not b!3652854) (not b!3652542) (not d!1073214) (not b!3652300) (not b_next!96821) (not d!1073126) b_and!270387 (not b!3652863))
(check-sat b_and!270389 b_and!270399 (not b_next!96831) (not b_next!96827) (not b_next!96837) b_and!270385 b_and!270395 (not b_next!96829) (not b_next!96817) (not b_next!96825) b_and!270383 b_and!270393 (not b_next!96839) b_and!270397 (not b_next!96823) (not b_next!96819) b_and!270401 b_and!270391 b_and!270387 (not b_next!96821))
