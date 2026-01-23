; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!24494 () Bool)

(assert start!24494)

(declare-fun b!228932 () Bool)

(declare-fun b_free!8561 () Bool)

(declare-fun b_next!8561 () Bool)

(assert (=> b!228932 (= b_free!8561 (not b_next!8561))))

(declare-fun tp!93732 () Bool)

(declare-fun b_and!16973 () Bool)

(assert (=> b!228932 (= tp!93732 b_and!16973)))

(declare-fun b_free!8563 () Bool)

(declare-fun b_next!8563 () Bool)

(assert (=> b!228932 (= b_free!8563 (not b_next!8563))))

(declare-fun tp!93724 () Bool)

(declare-fun b_and!16975 () Bool)

(assert (=> b!228932 (= tp!93724 b_and!16975)))

(declare-fun b!228940 () Bool)

(declare-fun b_free!8565 () Bool)

(declare-fun b_next!8565 () Bool)

(assert (=> b!228940 (= b_free!8565 (not b_next!8565))))

(declare-fun tp!93728 () Bool)

(declare-fun b_and!16977 () Bool)

(assert (=> b!228940 (= tp!93728 b_and!16977)))

(declare-fun b_free!8567 () Bool)

(declare-fun b_next!8567 () Bool)

(assert (=> b!228940 (= b_free!8567 (not b_next!8567))))

(declare-fun tp!93725 () Bool)

(declare-fun b_and!16979 () Bool)

(assert (=> b!228940 (= tp!93725 b_and!16979)))

(declare-fun b!228950 () Bool)

(declare-fun b_free!8569 () Bool)

(declare-fun b_next!8569 () Bool)

(assert (=> b!228950 (= b_free!8569 (not b_next!8569))))

(declare-fun tp!93726 () Bool)

(declare-fun b_and!16981 () Bool)

(assert (=> b!228950 (= tp!93726 b_and!16981)))

(declare-fun b_free!8571 () Bool)

(declare-fun b_next!8571 () Bool)

(assert (=> b!228950 (= b_free!8571 (not b_next!8571))))

(declare-fun tp!93723 () Bool)

(declare-fun b_and!16983 () Bool)

(assert (=> b!228950 (= tp!93723 b_and!16983)))

(declare-fun bs!24342 () Bool)

(declare-fun b!228934 () Bool)

(declare-fun b!228923 () Bool)

(assert (= bs!24342 (and b!228934 b!228923)))

(declare-fun lambda!7244 () Int)

(declare-fun lambda!7243 () Int)

(assert (=> bs!24342 (not (= lambda!7244 lambda!7243))))

(declare-fun b!228964 () Bool)

(declare-fun e!141555 () Bool)

(assert (=> b!228964 (= e!141555 true)))

(declare-fun b!228963 () Bool)

(declare-fun e!141554 () Bool)

(assert (=> b!228963 (= e!141554 e!141555)))

(declare-fun b!228962 () Bool)

(declare-fun e!141553 () Bool)

(assert (=> b!228962 (= e!141553 e!141554)))

(assert (=> b!228934 e!141553))

(assert (= b!228963 b!228964))

(assert (= b!228962 b!228963))

(declare-datatypes ((List!3465 0))(
  ( (Nil!3455) (Cons!3455 (h!8852 (_ BitVec 16)) (t!33437 List!3465)) )
))
(declare-datatypes ((TokenValue!669 0))(
  ( (FloatLiteralValue!1338 (text!5128 List!3465)) (TokenValueExt!668 (__x!2825 Int)) (Broken!3345 (value!22729 List!3465)) (Object!678) (End!669) (Def!669) (Underscore!669) (Match!669) (Else!669) (Error!669) (Case!669) (If!669) (Extends!669) (Abstract!669) (Class!669) (Val!669) (DelimiterValue!1338 (del!729 List!3465)) (KeywordValue!675 (value!22730 List!3465)) (CommentValue!1338 (value!22731 List!3465)) (WhitespaceValue!1338 (value!22732 List!3465)) (IndentationValue!669 (value!22733 List!3465)) (String!4424) (Int32!669) (Broken!3346 (value!22734 List!3465)) (Boolean!670) (Unit!3957) (OperatorValue!672 (op!729 List!3465)) (IdentifierValue!1338 (value!22735 List!3465)) (IdentifierValue!1339 (value!22736 List!3465)) (WhitespaceValue!1339 (value!22737 List!3465)) (True!1338) (False!1338) (Broken!3347 (value!22738 List!3465)) (Broken!3348 (value!22739 List!3465)) (True!1339) (RightBrace!669) (RightBracket!669) (Colon!669) (Null!669) (Comma!669) (LeftBracket!669) (False!1339) (LeftBrace!669) (ImaginaryLiteralValue!669 (text!5129 List!3465)) (StringLiteralValue!2007 (value!22740 List!3465)) (EOFValue!669 (value!22741 List!3465)) (IdentValue!669 (value!22742 List!3465)) (DelimiterValue!1339 (value!22743 List!3465)) (DedentValue!669 (value!22744 List!3465)) (NewLineValue!669 (value!22745 List!3465)) (IntegerValue!2007 (value!22746 (_ BitVec 32)) (text!5130 List!3465)) (IntegerValue!2008 (value!22747 Int) (text!5131 List!3465)) (Times!669) (Or!669) (Equal!669) (Minus!669) (Broken!3349 (value!22748 List!3465)) (And!669) (Div!669) (LessEqual!669) (Mod!669) (Concat!1540) (Not!669) (Plus!669) (SpaceValue!669 (value!22749 List!3465)) (IntegerValue!2009 (value!22750 Int) (text!5132 List!3465)) (StringLiteralValue!2008 (text!5133 List!3465)) (FloatLiteralValue!1339 (text!5134 List!3465)) (BytesLiteralValue!669 (value!22751 List!3465)) (CommentValue!1339 (value!22752 List!3465)) (StringLiteralValue!2009 (value!22753 List!3465)) (ErrorTokenValue!669 (msg!730 List!3465)) )
))
(declare-datatypes ((C!2664 0))(
  ( (C!2665 (val!1218 Int)) )
))
(declare-datatypes ((List!3466 0))(
  ( (Nil!3456) (Cons!3456 (h!8853 C!2664) (t!33438 List!3466)) )
))
(declare-datatypes ((IArray!2233 0))(
  ( (IArray!2234 (innerList!1174 List!3466)) )
))
(declare-datatypes ((Conc!1116 0))(
  ( (Node!1116 (left!2790 Conc!1116) (right!3120 Conc!1116) (csize!2462 Int) (cheight!1327 Int)) (Leaf!1779 (xs!3711 IArray!2233) (csize!2463 Int)) (Empty!1116) )
))
(declare-datatypes ((BalanceConc!2240 0))(
  ( (BalanceConc!2241 (c!43855 Conc!1116)) )
))
(declare-datatypes ((TokenValueInjection!1110 0))(
  ( (TokenValueInjection!1111 (toValue!1342 Int) (toChars!1201 Int)) )
))
(declare-datatypes ((String!4425 0))(
  ( (String!4426 (value!22754 String)) )
))
(declare-datatypes ((Regex!871 0))(
  ( (ElementMatch!871 (c!43856 C!2664)) (Concat!1541 (regOne!2254 Regex!871) (regTwo!2254 Regex!871)) (EmptyExpr!871) (Star!871 (reg!1200 Regex!871)) (EmptyLang!871) (Union!871 (regOne!2255 Regex!871) (regTwo!2255 Regex!871)) )
))
(declare-datatypes ((Rule!1094 0))(
  ( (Rule!1095 (regex!647 Regex!871) (tag!847 String!4425) (isSeparator!647 Bool) (transformation!647 TokenValueInjection!1110)) )
))
(declare-datatypes ((List!3467 0))(
  ( (Nil!3457) (Cons!3457 (h!8854 Rule!1094) (t!33439 List!3467)) )
))
(declare-fun rules!1920 () List!3467)

(get-info :version)

(assert (= (and b!228934 ((_ is Cons!3457) rules!1920)) b!228962))

(declare-fun order!2405 () Int)

(declare-fun order!2407 () Int)

(declare-fun dynLambda!1611 (Int Int) Int)

(declare-fun dynLambda!1612 (Int Int) Int)

(assert (=> b!228964 (< (dynLambda!1611 order!2405 (toValue!1342 (transformation!647 (h!8854 rules!1920)))) (dynLambda!1612 order!2407 lambda!7244))))

(declare-fun order!2409 () Int)

(declare-fun dynLambda!1613 (Int Int) Int)

(assert (=> b!228964 (< (dynLambda!1613 order!2409 (toChars!1201 (transformation!647 (h!8854 rules!1920)))) (dynLambda!1612 order!2407 lambda!7244))))

(assert (=> b!228934 true))

(declare-fun b!228903 () Bool)

(declare-fun e!141524 () Bool)

(declare-fun e!141515 () Bool)

(assert (=> b!228903 (= e!141524 e!141515)))

(declare-fun res!105454 () Bool)

(assert (=> b!228903 (=> res!105454 e!141515)))

(declare-fun e!141520 () Bool)

(assert (=> b!228903 (= res!105454 e!141520)))

(declare-fun res!105471 () Bool)

(assert (=> b!228903 (=> (not res!105471) (not e!141520))))

(declare-fun lt!89176 () Bool)

(assert (=> b!228903 (= res!105471 (not lt!89176))))

(declare-fun lt!89188 () List!3466)

(declare-fun lt!89213 () List!3466)

(assert (=> b!228903 (= lt!89176 (= lt!89188 lt!89213))))

(declare-fun b!228904 () Bool)

(declare-datatypes ((Unit!3958 0))(
  ( (Unit!3959) )
))
(declare-fun e!141531 () Unit!3958)

(declare-fun Unit!3960 () Unit!3958)

(assert (=> b!228904 (= e!141531 Unit!3960)))

(declare-fun b!228905 () Bool)

(declare-fun res!105464 () Bool)

(declare-fun e!141527 () Bool)

(assert (=> b!228905 (=> (not res!105464) (not e!141527))))

(declare-datatypes ((Token!1038 0))(
  ( (Token!1039 (value!22755 TokenValue!669) (rule!1204 Rule!1094) (size!2770 Int) (originalCharacters!690 List!3466)) )
))
(declare-fun separatorToken!170 () Token!1038)

(declare-datatypes ((LexerInterface!533 0))(
  ( (LexerInterfaceExt!530 (__x!2826 Int)) (Lexer!531) )
))
(declare-fun thiss!17480 () LexerInterface!533)

(declare-fun rulesProduceIndividualToken!282 (LexerInterface!533 List!3467 Token!1038) Bool)

(assert (=> b!228905 (= res!105464 (rulesProduceIndividualToken!282 thiss!17480 rules!1920 separatorToken!170))))

(declare-fun b!228906 () Bool)

(declare-fun e!141516 () Bool)

(declare-datatypes ((List!3468 0))(
  ( (Nil!3458) (Cons!3458 (h!8855 Token!1038) (t!33440 List!3468)) )
))
(declare-datatypes ((IArray!2235 0))(
  ( (IArray!2236 (innerList!1175 List!3468)) )
))
(declare-datatypes ((Conc!1117 0))(
  ( (Node!1117 (left!2791 Conc!1117) (right!3121 Conc!1117) (csize!2464 Int) (cheight!1328 Int)) (Leaf!1780 (xs!3712 IArray!2235) (csize!2465 Int)) (Empty!1117) )
))
(declare-datatypes ((BalanceConc!2242 0))(
  ( (BalanceConc!2243 (c!43857 Conc!1117)) )
))
(declare-datatypes ((tuple2!3728 0))(
  ( (tuple2!3729 (_1!2080 BalanceConc!2242) (_2!2080 BalanceConc!2240)) )
))
(declare-fun lt!89200 () tuple2!3728)

(declare-fun isEmpty!1988 (BalanceConc!2240) Bool)

(assert (=> b!228906 (= e!141516 (isEmpty!1988 (_2!2080 lt!89200)))))

(declare-fun b!228907 () Bool)

(declare-fun res!105483 () Bool)

(assert (=> b!228907 (=> (not res!105483) (not e!141527))))

(declare-fun tokens!465 () List!3468)

(assert (=> b!228907 (= res!105483 ((_ is Cons!3458) tokens!465))))

(declare-fun e!141517 () Bool)

(declare-fun tp!93733 () Bool)

(declare-fun e!141535 () Bool)

(declare-fun b!228908 () Bool)

(declare-fun inv!21 (TokenValue!669) Bool)

(assert (=> b!228908 (= e!141535 (and (inv!21 (value!22755 (h!8855 tokens!465))) e!141517 tp!93733))))

(declare-fun b!228909 () Bool)

(declare-fun e!141512 () Bool)

(declare-fun lt!89222 () List!3466)

(declare-fun matchR!209 (Regex!871 List!3466) Bool)

(assert (=> b!228909 (= e!141512 (matchR!209 (regex!647 (rule!1204 (h!8855 tokens!465))) lt!89222))))

(declare-fun b!228910 () Bool)

(declare-fun e!141526 () Bool)

(declare-fun e!141546 () Bool)

(assert (=> b!228910 (= e!141526 e!141546)))

(declare-fun res!105457 () Bool)

(assert (=> b!228910 (=> res!105457 e!141546)))

(declare-fun lt!89219 () List!3468)

(declare-fun filter!41 (List!3468 Int) List!3468)

(assert (=> b!228910 (= res!105457 (not (= (filter!41 lt!89219 lambda!7243) (t!33440 tokens!465))))))

(assert (=> b!228910 (= (filter!41 lt!89219 lambda!7243) (t!33440 tokens!465))))

(declare-fun lt!89181 () BalanceConc!2240)

(declare-fun list!1332 (BalanceConc!2242) List!3468)

(declare-fun lex!333 (LexerInterface!533 List!3467 BalanceConc!2240) tuple2!3728)

(assert (=> b!228910 (= lt!89219 (list!1332 (_1!2080 (lex!333 thiss!17480 rules!1920 lt!89181))))))

(declare-fun lt!89187 () Unit!3958)

(declare-fun theoremInvertabilityFromTokensSepTokenWhenNeeded!32 (LexerInterface!533 List!3467 List!3468 Token!1038) Unit!3958)

(assert (=> b!228910 (= lt!89187 (theoremInvertabilityFromTokensSepTokenWhenNeeded!32 thiss!17480 rules!1920 (t!33440 tokens!465) separatorToken!170))))

(declare-datatypes ((tuple2!3730 0))(
  ( (tuple2!3731 (_1!2081 Token!1038) (_2!2081 List!3466)) )
))
(declare-datatypes ((Option!633 0))(
  ( (None!632) (Some!632 (v!14323 tuple2!3730)) )
))
(declare-fun lt!89204 () Option!633)

(declare-fun lt!89194 () List!3466)

(assert (=> b!228910 (= lt!89204 (Some!632 (tuple2!3731 separatorToken!170 lt!89194)))))

(declare-fun lt!89196 () Unit!3958)

(declare-fun lt!89177 () Token!1038)

(declare-fun lemmaMaxPrefWithOtherTypeUsedCharAtStartOfSuffixReturnSame!38 (LexerInterface!533 List!3467 Token!1038 Rule!1094 List!3466 Rule!1094) Unit!3958)

(assert (=> b!228910 (= lt!89196 (lemmaMaxPrefWithOtherTypeUsedCharAtStartOfSuffixReturnSame!38 thiss!17480 rules!1920 separatorToken!170 (rule!1204 separatorToken!170) lt!89194 (rule!1204 lt!89177)))))

(declare-fun lt!89185 () Unit!3958)

(declare-fun e!141528 () Unit!3958)

(assert (=> b!228910 (= lt!89185 e!141528)))

(declare-fun c!43853 () Bool)

(declare-fun lt!89226 () C!2664)

(declare-fun contains!622 (List!3466 C!2664) Bool)

(declare-fun usedCharacters!52 (Regex!871) List!3466)

(assert (=> b!228910 (= c!43853 (contains!622 (usedCharacters!52 (regex!647 (rule!1204 separatorToken!170))) lt!89226))))

(declare-fun head!789 (List!3466) C!2664)

(assert (=> b!228910 (= lt!89226 (head!789 lt!89194))))

(declare-fun lt!89195 () Unit!3958)

(declare-fun e!141529 () Unit!3958)

(assert (=> b!228910 (= lt!89195 e!141529)))

(declare-fun c!43852 () Bool)

(declare-fun lt!89211 () C!2664)

(assert (=> b!228910 (= c!43852 (not (contains!622 (usedCharacters!52 (regex!647 (rule!1204 lt!89177))) lt!89211)))))

(declare-fun lt!89221 () List!3466)

(assert (=> b!228910 (= lt!89211 (head!789 lt!89221))))

(declare-fun e!141522 () Bool)

(assert (=> b!228910 e!141522))

(declare-fun res!105468 () Bool)

(assert (=> b!228910 (=> (not res!105468) (not e!141522))))

(declare-datatypes ((Option!634 0))(
  ( (None!633) (Some!633 (v!14324 Rule!1094)) )
))
(declare-fun lt!89217 () Option!634)

(declare-fun isDefined!484 (Option!634) Bool)

(assert (=> b!228910 (= res!105468 (isDefined!484 lt!89217))))

(declare-fun getRuleFromTag!88 (LexerInterface!533 List!3467 String!4425) Option!634)

(assert (=> b!228910 (= lt!89217 (getRuleFromTag!88 thiss!17480 rules!1920 (tag!847 (rule!1204 lt!89177))))))

(declare-fun lt!89218 () Unit!3958)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!88 (LexerInterface!533 List!3467 List!3466 Token!1038) Unit!3958)

(assert (=> b!228910 (= lt!89218 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!88 thiss!17480 rules!1920 lt!89221 lt!89177))))

(declare-fun list!1333 (BalanceConc!2240) List!3466)

(declare-fun charsOf!302 (Token!1038) BalanceConc!2240)

(assert (=> b!228910 (= lt!89221 (list!1333 (charsOf!302 lt!89177)))))

(declare-fun lt!89190 () Unit!3958)

(declare-fun forallContained!214 (List!3468 Int Token!1038) Unit!3958)

(assert (=> b!228910 (= lt!89190 (forallContained!214 tokens!465 lambda!7244 lt!89177))))

(declare-fun e!141510 () Bool)

(assert (=> b!228910 e!141510))

(declare-fun res!105470 () Bool)

(assert (=> b!228910 (=> (not res!105470) (not e!141510))))

(declare-fun lt!89189 () tuple2!3728)

(declare-fun size!2771 (BalanceConc!2242) Int)

(assert (=> b!228910 (= res!105470 (= (size!2771 (_1!2080 lt!89189)) 1))))

(declare-fun lt!89199 () BalanceConc!2240)

(assert (=> b!228910 (= lt!89189 (lex!333 thiss!17480 rules!1920 lt!89199))))

(declare-fun lt!89225 () BalanceConc!2242)

(declare-fun printTailRec!227 (LexerInterface!533 BalanceConc!2242 Int BalanceConc!2240) BalanceConc!2240)

(assert (=> b!228910 (= lt!89199 (printTailRec!227 thiss!17480 lt!89225 0 (BalanceConc!2241 Empty!1116)))))

(declare-fun print!264 (LexerInterface!533 BalanceConc!2242) BalanceConc!2240)

(assert (=> b!228910 (= lt!89199 (print!264 thiss!17480 lt!89225))))

(declare-fun singletonSeq!199 (Token!1038) BalanceConc!2242)

(assert (=> b!228910 (= lt!89225 (singletonSeq!199 lt!89177))))

(declare-fun e!141521 () Bool)

(assert (=> b!228910 e!141521))

(declare-fun res!105467 () Bool)

(assert (=> b!228910 (=> (not res!105467) (not e!141521))))

(declare-fun lt!89223 () Option!634)

(assert (=> b!228910 (= res!105467 (isDefined!484 lt!89223))))

(assert (=> b!228910 (= lt!89223 (getRuleFromTag!88 thiss!17480 rules!1920 (tag!847 (rule!1204 separatorToken!170))))))

(declare-fun lt!89209 () List!3466)

(declare-fun lt!89220 () Unit!3958)

(assert (=> b!228910 (= lt!89220 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!88 thiss!17480 rules!1920 lt!89209 separatorToken!170))))

(assert (=> b!228910 e!141516))

(declare-fun res!105484 () Bool)

(assert (=> b!228910 (=> (not res!105484) (not e!141516))))

(assert (=> b!228910 (= res!105484 (= (size!2771 (_1!2080 lt!89200)) 1))))

(declare-fun lt!89201 () BalanceConc!2240)

(assert (=> b!228910 (= lt!89200 (lex!333 thiss!17480 rules!1920 lt!89201))))

(declare-fun lt!89183 () BalanceConc!2242)

(assert (=> b!228910 (= lt!89201 (printTailRec!227 thiss!17480 lt!89183 0 (BalanceConc!2241 Empty!1116)))))

(assert (=> b!228910 (= lt!89201 (print!264 thiss!17480 lt!89183))))

(assert (=> b!228910 (= lt!89183 (singletonSeq!199 separatorToken!170))))

(assert (=> b!228910 (rulesProduceIndividualToken!282 thiss!17480 rules!1920 lt!89177)))

(declare-fun lt!89205 () Unit!3958)

(declare-fun lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!100 (LexerInterface!533 List!3467 List!3468 Token!1038) Unit!3958)

(assert (=> b!228910 (= lt!89205 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!100 thiss!17480 rules!1920 tokens!465 lt!89177))))

(declare-fun head!790 (List!3468) Token!1038)

(assert (=> b!228910 (= lt!89177 (head!790 (t!33440 tokens!465)))))

(declare-fun lt!89212 () Unit!3958)

(assert (=> b!228910 (= lt!89212 e!141531)))

(declare-fun c!43854 () Bool)

(declare-fun isEmpty!1989 (List!3468) Bool)

(assert (=> b!228910 (= c!43854 (isEmpty!1989 (t!33440 tokens!465)))))

(declare-fun lt!89208 () List!3466)

(declare-fun maxPrefix!263 (LexerInterface!533 List!3467 List!3466) Option!633)

(assert (=> b!228910 (= lt!89204 (maxPrefix!263 thiss!17480 rules!1920 lt!89208))))

(declare-fun lt!89203 () tuple2!3730)

(assert (=> b!228910 (= lt!89208 (_2!2081 lt!89203))))

(declare-fun lt!89191 () Unit!3958)

(declare-fun lemmaSamePrefixThenSameSuffix!168 (List!3466 List!3466 List!3466 List!3466 List!3466) Unit!3958)

(assert (=> b!228910 (= lt!89191 (lemmaSamePrefixThenSameSuffix!168 lt!89222 lt!89208 lt!89222 (_2!2081 lt!89203) lt!89188))))

(declare-fun get!1094 (Option!633) tuple2!3730)

(assert (=> b!228910 (= lt!89203 (get!1094 (maxPrefix!263 thiss!17480 rules!1920 lt!89188)))))

(declare-fun isPrefix!343 (List!3466 List!3466) Bool)

(assert (=> b!228910 (isPrefix!343 lt!89222 lt!89213)))

(declare-fun lt!89215 () Unit!3958)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!238 (List!3466 List!3466) Unit!3958)

(assert (=> b!228910 (= lt!89215 (lemmaConcatTwoListThenFirstIsPrefix!238 lt!89222 lt!89208))))

(declare-fun e!141523 () Bool)

(assert (=> b!228910 e!141523))

(declare-fun res!105465 () Bool)

(assert (=> b!228910 (=> res!105465 e!141523)))

(assert (=> b!228910 (= res!105465 (isEmpty!1989 tokens!465))))

(declare-fun lt!89198 () Unit!3958)

(declare-fun lemmaPrintWithSepTokenWhenNeededThenMaxPrefReturnsHead!108 (LexerInterface!533 List!3467 List!3468 Token!1038) Unit!3958)

(assert (=> b!228910 (= lt!89198 (lemmaPrintWithSepTokenWhenNeededThenMaxPrefReturnsHead!108 thiss!17480 rules!1920 tokens!465 separatorToken!170))))

(declare-fun b!228911 () Bool)

(declare-fun e!141530 () Bool)

(assert (=> b!228911 (= e!141530 e!141527)))

(declare-fun res!105459 () Bool)

(assert (=> b!228911 (=> (not res!105459) (not e!141527))))

(declare-fun lt!89214 () BalanceConc!2242)

(declare-fun rulesProduceEachTokenIndividually!325 (LexerInterface!533 List!3467 BalanceConc!2242) Bool)

(assert (=> b!228911 (= res!105459 (rulesProduceEachTokenIndividually!325 thiss!17480 rules!1920 lt!89214))))

(declare-fun seqFromList!671 (List!3468) BalanceConc!2242)

(assert (=> b!228911 (= lt!89214 (seqFromList!671 tokens!465))))

(declare-fun b!228912 () Bool)

(declare-fun res!105455 () Bool)

(assert (=> b!228912 (=> res!105455 e!141546)))

(declare-fun rulesProduceEachTokenIndividuallyList!183 (LexerInterface!533 List!3467 List!3468) Bool)

(assert (=> b!228912 (= res!105455 (not (rulesProduceEachTokenIndividuallyList!183 thiss!17480 rules!1920 tokens!465)))))

(declare-fun b!228913 () Bool)

(declare-fun e!141538 () Bool)

(assert (=> b!228913 (= e!141521 e!141538)))

(declare-fun res!105480 () Bool)

(assert (=> b!228913 (=> (not res!105480) (not e!141538))))

(declare-fun lt!89186 () Rule!1094)

(assert (=> b!228913 (= res!105480 (matchR!209 (regex!647 lt!89186) lt!89209))))

(declare-fun get!1095 (Option!634) Rule!1094)

(assert (=> b!228913 (= lt!89186 (get!1095 lt!89223))))

(declare-fun b!228914 () Bool)

(declare-fun Unit!3961 () Unit!3958)

(assert (=> b!228914 (= e!141529 Unit!3961)))

(declare-fun lt!89197 () Unit!3958)

(declare-fun lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!46 (Regex!871 List!3466 C!2664) Unit!3958)

(assert (=> b!228914 (= lt!89197 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!46 (regex!647 (rule!1204 lt!89177)) lt!89221 lt!89211))))

(declare-fun res!105469 () Bool)

(assert (=> b!228914 (= res!105469 (not (matchR!209 (regex!647 (rule!1204 lt!89177)) lt!89221)))))

(declare-fun e!141513 () Bool)

(assert (=> b!228914 (=> (not res!105469) (not e!141513))))

(assert (=> b!228914 e!141513))

(declare-fun b!228915 () Bool)

(declare-fun res!105460 () Bool)

(declare-fun e!141518 () Bool)

(assert (=> b!228915 (=> res!105460 e!141518)))

(declare-fun isEmpty!1990 (BalanceConc!2242) Bool)

(declare-fun seqFromList!672 (List!3466) BalanceConc!2240)

(assert (=> b!228915 (= res!105460 (isEmpty!1990 (_1!2080 (lex!333 thiss!17480 rules!1920 (seqFromList!672 lt!89222)))))))

(declare-fun res!105475 () Bool)

(assert (=> start!24494 (=> (not res!105475) (not e!141530))))

(assert (=> start!24494 (= res!105475 ((_ is Lexer!531) thiss!17480))))

(assert (=> start!24494 e!141530))

(assert (=> start!24494 true))

(declare-fun e!141511 () Bool)

(assert (=> start!24494 e!141511))

(declare-fun e!141533 () Bool)

(declare-fun inv!4309 (Token!1038) Bool)

(assert (=> start!24494 (and (inv!4309 separatorToken!170) e!141533)))

(declare-fun e!141536 () Bool)

(assert (=> start!24494 e!141536))

(declare-fun b!228916 () Bool)

(declare-fun Unit!3962 () Unit!3958)

(assert (=> b!228916 (= e!141528 Unit!3962)))

(declare-fun e!141543 () Bool)

(declare-fun tp!93727 () Bool)

(declare-fun b!228917 () Bool)

(declare-fun inv!4306 (String!4425) Bool)

(declare-fun inv!4310 (TokenValueInjection!1110) Bool)

(assert (=> b!228917 (= e!141517 (and tp!93727 (inv!4306 (tag!847 (rule!1204 (h!8855 tokens!465)))) (inv!4310 (transformation!647 (rule!1204 (h!8855 tokens!465)))) e!141543))))

(declare-fun e!141534 () Bool)

(declare-fun tp!93731 () Bool)

(declare-fun b!228918 () Bool)

(assert (=> b!228918 (= e!141533 (and (inv!21 (value!22755 separatorToken!170)) e!141534 tp!93731))))

(declare-fun b!228919 () Bool)

(declare-fun e!141532 () Bool)

(declare-fun lt!89192 () Option!633)

(assert (=> b!228919 (= e!141532 (= (_1!2081 (get!1094 lt!89192)) (head!790 tokens!465)))))

(declare-fun b!228920 () Bool)

(declare-fun forall!779 (List!3468 Int) Bool)

(assert (=> b!228920 (= e!141546 (forall!779 tokens!465 lambda!7243))))

(declare-fun b!228921 () Bool)

(declare-fun e!141545 () Bool)

(assert (=> b!228921 (= e!141545 (not e!141524))))

(declare-fun res!105462 () Bool)

(assert (=> b!228921 (=> res!105462 e!141524)))

(assert (=> b!228921 (= res!105462 (not (= lt!89194 (list!1333 lt!89181))))))

(declare-fun printWithSeparatorTokenWhenNeededRec!216 (LexerInterface!533 List!3467 BalanceConc!2242 Token!1038 Int) BalanceConc!2240)

(assert (=> b!228921 (= lt!89181 (printWithSeparatorTokenWhenNeededRec!216 thiss!17480 rules!1920 (seqFromList!671 (t!33440 tokens!465)) separatorToken!170 0))))

(declare-fun lt!89182 () List!3466)

(assert (=> b!228921 (= lt!89182 lt!89213)))

(declare-fun ++!868 (List!3466 List!3466) List!3466)

(assert (=> b!228921 (= lt!89213 (++!868 lt!89222 lt!89208))))

(assert (=> b!228921 (= lt!89182 (++!868 (++!868 lt!89222 lt!89209) lt!89194))))

(declare-fun lt!89207 () Unit!3958)

(declare-fun lemmaConcatAssociativity!348 (List!3466 List!3466 List!3466) Unit!3958)

(assert (=> b!228921 (= lt!89207 (lemmaConcatAssociativity!348 lt!89222 lt!89209 lt!89194))))

(assert (=> b!228921 (= lt!89222 (list!1333 (charsOf!302 (h!8855 tokens!465))))))

(assert (=> b!228921 (= lt!89208 (++!868 lt!89209 lt!89194))))

(declare-fun printWithSeparatorTokenWhenNeededList!226 (LexerInterface!533 List!3467 List!3468 Token!1038) List!3466)

(assert (=> b!228921 (= lt!89194 (printWithSeparatorTokenWhenNeededList!226 thiss!17480 rules!1920 (t!33440 tokens!465) separatorToken!170))))

(assert (=> b!228921 (= lt!89209 (list!1333 (charsOf!302 separatorToken!170)))))

(declare-fun b!228922 () Bool)

(declare-fun e!141514 () Bool)

(assert (=> b!228922 (= e!141522 e!141514)))

(declare-fun res!105474 () Bool)

(assert (=> b!228922 (=> (not res!105474) (not e!141514))))

(declare-fun lt!89193 () Rule!1094)

(assert (=> b!228922 (= res!105474 (matchR!209 (regex!647 lt!89193) lt!89221))))

(assert (=> b!228922 (= lt!89193 (get!1095 lt!89217))))

(declare-fun res!105453 () Bool)

(assert (=> b!228923 (=> (not res!105453) (not e!141527))))

(assert (=> b!228923 (= res!105453 (forall!779 tokens!465 lambda!7243))))

(declare-fun b!228924 () Bool)

(assert (=> b!228924 (= e!141527 e!141545)))

(declare-fun res!105456 () Bool)

(assert (=> b!228924 (=> (not res!105456) (not e!141545))))

(declare-fun lt!89216 () List!3466)

(assert (=> b!228924 (= res!105456 (= lt!89188 lt!89216))))

(assert (=> b!228924 (= lt!89216 (list!1333 (printWithSeparatorTokenWhenNeededRec!216 thiss!17480 rules!1920 lt!89214 separatorToken!170 0)))))

(assert (=> b!228924 (= lt!89188 (printWithSeparatorTokenWhenNeededList!226 thiss!17480 rules!1920 tokens!465 separatorToken!170))))

(declare-fun b!228925 () Bool)

(assert (=> b!228925 (= e!141515 e!141518)))

(declare-fun res!105486 () Bool)

(assert (=> b!228925 (=> res!105486 e!141518)))

(declare-fun lt!89202 () List!3466)

(declare-fun lt!89224 () List!3466)

(assert (=> b!228925 (= res!105486 (or (not (= lt!89224 lt!89202)) (not (= lt!89202 lt!89222)) (not (= lt!89224 lt!89222))))))

(declare-fun printList!217 (LexerInterface!533 List!3468) List!3466)

(assert (=> b!228925 (= lt!89202 (printList!217 thiss!17480 (Cons!3458 (h!8855 tokens!465) Nil!3458)))))

(declare-fun lt!89179 () BalanceConc!2240)

(assert (=> b!228925 (= lt!89224 (list!1333 lt!89179))))

(declare-fun lt!89178 () BalanceConc!2242)

(assert (=> b!228925 (= lt!89179 (printTailRec!227 thiss!17480 lt!89178 0 (BalanceConc!2241 Empty!1116)))))

(assert (=> b!228925 (= lt!89179 (print!264 thiss!17480 lt!89178))))

(assert (=> b!228925 (= lt!89178 (singletonSeq!199 (h!8855 tokens!465)))))

(declare-fun e!141540 () Bool)

(declare-fun tp!93721 () Bool)

(declare-fun b!228926 () Bool)

(assert (=> b!228926 (= e!141534 (and tp!93721 (inv!4306 (tag!847 (rule!1204 separatorToken!170))) (inv!4310 (transformation!647 (rule!1204 separatorToken!170))) e!141540))))

(declare-fun b!228927 () Bool)

(assert (=> b!228927 (= e!141514 (= (rule!1204 lt!89177) lt!89193))))

(declare-fun b!228928 () Bool)

(declare-fun res!105478 () Bool)

(assert (=> b!228928 (=> (not res!105478) (not e!141530))))

(declare-fun isEmpty!1991 (List!3467) Bool)

(assert (=> b!228928 (= res!105478 (not (isEmpty!1991 rules!1920)))))

(declare-fun b!228929 () Bool)

(assert (=> b!228929 (= e!141538 (= (rule!1204 separatorToken!170) lt!89186))))

(declare-fun b!228930 () Bool)

(declare-fun res!105477 () Bool)

(assert (=> b!228930 (=> res!105477 e!141518)))

(assert (=> b!228930 (= res!105477 (not (rulesProduceIndividualToken!282 thiss!17480 rules!1920 (h!8855 tokens!465))))))

(declare-fun b!228931 () Bool)

(declare-fun res!105485 () Bool)

(assert (=> b!228931 (=> (not res!105485) (not e!141516))))

(declare-fun apply!624 (BalanceConc!2242 Int) Token!1038)

(assert (=> b!228931 (= res!105485 (= (apply!624 (_1!2080 lt!89200) 0) separatorToken!170))))

(declare-fun e!141544 () Bool)

(assert (=> b!228932 (= e!141544 (and tp!93732 tp!93724))))

(declare-fun b!228933 () Bool)

(declare-fun res!105482 () Bool)

(assert (=> b!228933 (=> (not res!105482) (not e!141530))))

(declare-fun rulesInvariant!499 (LexerInterface!533 List!3467) Bool)

(assert (=> b!228933 (= res!105482 (rulesInvariant!499 thiss!17480 rules!1920))))

(declare-fun e!141525 () Bool)

(assert (=> b!228934 (= e!141518 e!141525)))

(declare-fun res!105481 () Bool)

(assert (=> b!228934 (=> res!105481 e!141525)))

(declare-datatypes ((tuple2!3732 0))(
  ( (tuple2!3733 (_1!2082 Token!1038) (_2!2082 BalanceConc!2240)) )
))
(declare-datatypes ((Option!635 0))(
  ( (None!634) (Some!634 (v!14325 tuple2!3732)) )
))
(declare-fun isDefined!485 (Option!635) Bool)

(declare-fun maxPrefixZipperSequence!226 (LexerInterface!533 List!3467 BalanceConc!2240) Option!635)

(assert (=> b!228934 (= res!105481 (not (isDefined!485 (maxPrefixZipperSequence!226 thiss!17480 rules!1920 (seqFromList!672 (originalCharacters!690 (h!8855 tokens!465)))))))))

(declare-fun lt!89210 () Unit!3958)

(assert (=> b!228934 (= lt!89210 (forallContained!214 tokens!465 lambda!7244 (h!8855 tokens!465)))))

(assert (=> b!228934 (= lt!89222 (originalCharacters!690 (h!8855 tokens!465)))))

(declare-fun b!228935 () Bool)

(declare-fun res!105463 () Bool)

(assert (=> b!228935 (=> (not res!105463) (not e!141545))))

(assert (=> b!228935 (= res!105463 (= (list!1333 (seqFromList!672 lt!89188)) lt!89216))))

(declare-fun b!228936 () Bool)

(declare-fun res!105466 () Bool)

(assert (=> b!228936 (=> res!105466 e!141546)))

(declare-datatypes ((tuple2!3734 0))(
  ( (tuple2!3735 (_1!2083 List!3468) (_2!2083 List!3466)) )
))
(declare-fun lexList!161 (LexerInterface!533 List!3467 List!3466) tuple2!3734)

(assert (=> b!228936 (= res!105466 (not (= (filter!41 (_1!2083 (lexList!161 thiss!17480 rules!1920 lt!89194)) lambda!7243) (t!33440 tokens!465))))))

(declare-fun b!228937 () Bool)

(assert (=> b!228937 (= e!141510 (isEmpty!1988 (_2!2080 lt!89189)))))

(declare-fun b!228938 () Bool)

(declare-fun Unit!3963 () Unit!3958)

(assert (=> b!228938 (= e!141531 Unit!3963)))

(assert (=> b!228938 false))

(declare-fun b!228939 () Bool)

(declare-fun tp!93729 () Bool)

(assert (=> b!228939 (= e!141536 (and (inv!4309 (h!8855 tokens!465)) e!141535 tp!93729))))

(assert (=> b!228940 (= e!141543 (and tp!93728 tp!93725))))

(declare-fun b!228941 () Bool)

(assert (=> b!228941 (= e!141523 e!141532)))

(declare-fun res!105472 () Bool)

(assert (=> b!228941 (=> (not res!105472) (not e!141532))))

(declare-fun isDefined!486 (Option!633) Bool)

(assert (=> b!228941 (= res!105472 (isDefined!486 lt!89192))))

(assert (=> b!228941 (= lt!89192 (maxPrefix!263 thiss!17480 rules!1920 lt!89188))))

(declare-fun b!228942 () Bool)

(assert (=> b!228942 (= e!141520 (not (= lt!89188 (++!868 lt!89222 lt!89194))))))

(declare-fun b!228943 () Bool)

(declare-fun res!105473 () Bool)

(assert (=> b!228943 (=> (not res!105473) (not e!141512))))

(declare-fun lt!89184 () tuple2!3730)

(declare-fun isEmpty!1992 (List!3466) Bool)

(assert (=> b!228943 (= res!105473 (isEmpty!1992 (_2!2081 lt!89184)))))

(declare-fun b!228944 () Bool)

(declare-fun e!141541 () Bool)

(declare-fun tp!93730 () Bool)

(assert (=> b!228944 (= e!141511 (and e!141541 tp!93730))))

(declare-fun b!228945 () Bool)

(declare-fun Unit!3964 () Unit!3958)

(assert (=> b!228945 (= e!141528 Unit!3964)))

(declare-fun lt!89206 () Unit!3958)

(declare-fun lemmaSepRuleNotContainsCharContainedInANonSepRule!40 (LexerInterface!533 List!3467 List!3467 Rule!1094 Rule!1094 C!2664) Unit!3958)

(assert (=> b!228945 (= lt!89206 (lemmaSepRuleNotContainsCharContainedInANonSepRule!40 thiss!17480 rules!1920 rules!1920 (rule!1204 lt!89177) (rule!1204 separatorToken!170) lt!89226))))

(assert (=> b!228945 false))

(declare-fun b!228946 () Bool)

(declare-fun tp!93722 () Bool)

(assert (=> b!228946 (= e!141541 (and tp!93722 (inv!4306 (tag!847 (h!8854 rules!1920))) (inv!4310 (transformation!647 (h!8854 rules!1920))) e!141544))))

(declare-fun b!228947 () Bool)

(assert (=> b!228947 (= e!141513 false)))

(declare-fun b!228948 () Bool)

(declare-fun Unit!3965 () Unit!3958)

(assert (=> b!228948 (= e!141529 Unit!3965)))

(declare-fun b!228949 () Bool)

(assert (=> b!228949 (= e!141525 e!141526)))

(declare-fun res!105461 () Bool)

(assert (=> b!228949 (=> res!105461 e!141526)))

(assert (=> b!228949 (= res!105461 (not lt!89176))))

(assert (=> b!228949 e!141512))

(declare-fun res!105458 () Bool)

(assert (=> b!228949 (=> (not res!105458) (not e!141512))))

(assert (=> b!228949 (= res!105458 (= (_1!2081 lt!89184) (h!8855 tokens!465)))))

(declare-fun lt!89180 () Option!633)

(assert (=> b!228949 (= lt!89184 (get!1094 lt!89180))))

(assert (=> b!228949 (isDefined!486 lt!89180)))

(assert (=> b!228949 (= lt!89180 (maxPrefix!263 thiss!17480 rules!1920 lt!89222))))

(assert (=> b!228950 (= e!141540 (and tp!93726 tp!93723))))

(declare-fun b!228951 () Bool)

(declare-fun res!105476 () Bool)

(assert (=> b!228951 (=> (not res!105476) (not e!141527))))

(assert (=> b!228951 (= res!105476 (isSeparator!647 (rule!1204 separatorToken!170)))))

(declare-fun b!228952 () Bool)

(declare-fun res!105479 () Bool)

(assert (=> b!228952 (=> (not res!105479) (not e!141527))))

(declare-fun sepAndNonSepRulesDisjointChars!236 (List!3467 List!3467) Bool)

(assert (=> b!228952 (= res!105479 (sepAndNonSepRulesDisjointChars!236 rules!1920 rules!1920))))

(declare-fun b!228953 () Bool)

(declare-fun res!105452 () Bool)

(assert (=> b!228953 (=> (not res!105452) (not e!141510))))

(assert (=> b!228953 (= res!105452 (= (apply!624 (_1!2080 lt!89189) 0) lt!89177))))

(assert (= (and start!24494 res!105475) b!228928))

(assert (= (and b!228928 res!105478) b!228933))

(assert (= (and b!228933 res!105482) b!228911))

(assert (= (and b!228911 res!105459) b!228905))

(assert (= (and b!228905 res!105464) b!228951))

(assert (= (and b!228951 res!105476) b!228923))

(assert (= (and b!228923 res!105453) b!228952))

(assert (= (and b!228952 res!105479) b!228907))

(assert (= (and b!228907 res!105483) b!228924))

(assert (= (and b!228924 res!105456) b!228935))

(assert (= (and b!228935 res!105463) b!228921))

(assert (= (and b!228921 (not res!105462)) b!228903))

(assert (= (and b!228903 res!105471) b!228942))

(assert (= (and b!228903 (not res!105454)) b!228925))

(assert (= (and b!228925 (not res!105486)) b!228930))

(assert (= (and b!228930 (not res!105477)) b!228915))

(assert (= (and b!228915 (not res!105460)) b!228934))

(assert (= (and b!228934 (not res!105481)) b!228949))

(assert (= (and b!228949 res!105458) b!228943))

(assert (= (and b!228943 res!105473) b!228909))

(assert (= (and b!228949 (not res!105461)) b!228910))

(assert (= (and b!228910 (not res!105465)) b!228941))

(assert (= (and b!228941 res!105472) b!228919))

(assert (= (and b!228910 c!43854) b!228938))

(assert (= (and b!228910 (not c!43854)) b!228904))

(assert (= (and b!228910 res!105484) b!228931))

(assert (= (and b!228931 res!105485) b!228906))

(assert (= (and b!228910 res!105467) b!228913))

(assert (= (and b!228913 res!105480) b!228929))

(assert (= (and b!228910 res!105470) b!228953))

(assert (= (and b!228953 res!105452) b!228937))

(assert (= (and b!228910 res!105468) b!228922))

(assert (= (and b!228922 res!105474) b!228927))

(assert (= (and b!228910 c!43852) b!228914))

(assert (= (and b!228910 (not c!43852)) b!228948))

(assert (= (and b!228914 res!105469) b!228947))

(assert (= (and b!228910 c!43853) b!228945))

(assert (= (and b!228910 (not c!43853)) b!228916))

(assert (= (and b!228910 (not res!105457)) b!228936))

(assert (= (and b!228936 (not res!105466)) b!228912))

(assert (= (and b!228912 (not res!105455)) b!228920))

(assert (= b!228946 b!228932))

(assert (= b!228944 b!228946))

(assert (= (and start!24494 ((_ is Cons!3457) rules!1920)) b!228944))

(assert (= b!228926 b!228950))

(assert (= b!228918 b!228926))

(assert (= start!24494 b!228918))

(assert (= b!228917 b!228940))

(assert (= b!228908 b!228917))

(assert (= b!228939 b!228908))

(assert (= (and start!24494 ((_ is Cons!3458) tokens!465)) b!228939))

(declare-fun m!269881 () Bool)

(assert (=> b!228918 m!269881))

(declare-fun m!269883 () Bool)

(assert (=> b!228953 m!269883))

(declare-fun m!269885 () Bool)

(assert (=> b!228909 m!269885))

(declare-fun m!269887 () Bool)

(assert (=> b!228924 m!269887))

(assert (=> b!228924 m!269887))

(declare-fun m!269889 () Bool)

(assert (=> b!228924 m!269889))

(declare-fun m!269891 () Bool)

(assert (=> b!228924 m!269891))

(declare-fun m!269893 () Bool)

(assert (=> b!228949 m!269893))

(declare-fun m!269895 () Bool)

(assert (=> b!228949 m!269895))

(declare-fun m!269897 () Bool)

(assert (=> b!228949 m!269897))

(declare-fun m!269899 () Bool)

(assert (=> b!228917 m!269899))

(declare-fun m!269901 () Bool)

(assert (=> b!228917 m!269901))

(declare-fun m!269903 () Bool)

(assert (=> b!228933 m!269903))

(declare-fun m!269905 () Bool)

(assert (=> b!228921 m!269905))

(declare-fun m!269907 () Bool)

(assert (=> b!228921 m!269907))

(declare-fun m!269909 () Bool)

(assert (=> b!228921 m!269909))

(declare-fun m!269911 () Bool)

(assert (=> b!228921 m!269911))

(declare-fun m!269913 () Bool)

(assert (=> b!228921 m!269913))

(declare-fun m!269915 () Bool)

(assert (=> b!228921 m!269915))

(assert (=> b!228921 m!269913))

(declare-fun m!269917 () Bool)

(assert (=> b!228921 m!269917))

(declare-fun m!269919 () Bool)

(assert (=> b!228921 m!269919))

(assert (=> b!228921 m!269917))

(declare-fun m!269921 () Bool)

(assert (=> b!228921 m!269921))

(assert (=> b!228921 m!269909))

(declare-fun m!269923 () Bool)

(assert (=> b!228921 m!269923))

(declare-fun m!269925 () Bool)

(assert (=> b!228921 m!269925))

(assert (=> b!228921 m!269905))

(declare-fun m!269927 () Bool)

(assert (=> b!228921 m!269927))

(declare-fun m!269929 () Bool)

(assert (=> b!228921 m!269929))

(declare-fun m!269931 () Bool)

(assert (=> b!228925 m!269931))

(declare-fun m!269933 () Bool)

(assert (=> b!228925 m!269933))

(declare-fun m!269935 () Bool)

(assert (=> b!228925 m!269935))

(declare-fun m!269937 () Bool)

(assert (=> b!228925 m!269937))

(declare-fun m!269939 () Bool)

(assert (=> b!228925 m!269939))

(declare-fun m!269941 () Bool)

(assert (=> b!228931 m!269941))

(declare-fun m!269943 () Bool)

(assert (=> b!228942 m!269943))

(declare-fun m!269945 () Bool)

(assert (=> b!228913 m!269945))

(declare-fun m!269947 () Bool)

(assert (=> b!228913 m!269947))

(declare-fun m!269949 () Bool)

(assert (=> start!24494 m!269949))

(declare-fun m!269951 () Bool)

(assert (=> b!228946 m!269951))

(declare-fun m!269953 () Bool)

(assert (=> b!228946 m!269953))

(declare-fun m!269955 () Bool)

(assert (=> b!228936 m!269955))

(declare-fun m!269957 () Bool)

(assert (=> b!228936 m!269957))

(declare-fun m!269959 () Bool)

(assert (=> b!228941 m!269959))

(declare-fun m!269961 () Bool)

(assert (=> b!228941 m!269961))

(declare-fun m!269963 () Bool)

(assert (=> b!228912 m!269963))

(declare-fun m!269965 () Bool)

(assert (=> b!228905 m!269965))

(declare-fun m!269967 () Bool)

(assert (=> b!228943 m!269967))

(declare-fun m!269969 () Bool)

(assert (=> b!228920 m!269969))

(declare-fun m!269971 () Bool)

(assert (=> b!228908 m!269971))

(declare-fun m!269973 () Bool)

(assert (=> b!228945 m!269973))

(declare-fun m!269975 () Bool)

(assert (=> b!228939 m!269975))

(declare-fun m!269977 () Bool)

(assert (=> b!228952 m!269977))

(declare-fun m!269979 () Bool)

(assert (=> b!228911 m!269979))

(declare-fun m!269981 () Bool)

(assert (=> b!228911 m!269981))

(declare-fun m!269983 () Bool)

(assert (=> b!228915 m!269983))

(assert (=> b!228915 m!269983))

(declare-fun m!269985 () Bool)

(assert (=> b!228915 m!269985))

(declare-fun m!269987 () Bool)

(assert (=> b!228915 m!269987))

(assert (=> b!228923 m!269969))

(declare-fun m!269989 () Bool)

(assert (=> b!228934 m!269989))

(assert (=> b!228934 m!269989))

(declare-fun m!269991 () Bool)

(assert (=> b!228934 m!269991))

(assert (=> b!228934 m!269991))

(declare-fun m!269993 () Bool)

(assert (=> b!228934 m!269993))

(declare-fun m!269995 () Bool)

(assert (=> b!228934 m!269995))

(declare-fun m!269997 () Bool)

(assert (=> b!228906 m!269997))

(declare-fun m!269999 () Bool)

(assert (=> b!228910 m!269999))

(declare-fun m!270001 () Bool)

(assert (=> b!228910 m!270001))

(declare-fun m!270003 () Bool)

(assert (=> b!228910 m!270003))

(declare-fun m!270005 () Bool)

(assert (=> b!228910 m!270005))

(declare-fun m!270007 () Bool)

(assert (=> b!228910 m!270007))

(declare-fun m!270009 () Bool)

(assert (=> b!228910 m!270009))

(declare-fun m!270011 () Bool)

(assert (=> b!228910 m!270011))

(declare-fun m!270013 () Bool)

(assert (=> b!228910 m!270013))

(assert (=> b!228910 m!269961))

(declare-fun m!270015 () Bool)

(assert (=> b!228910 m!270015))

(declare-fun m!270017 () Bool)

(assert (=> b!228910 m!270017))

(declare-fun m!270019 () Bool)

(assert (=> b!228910 m!270019))

(declare-fun m!270021 () Bool)

(assert (=> b!228910 m!270021))

(declare-fun m!270023 () Bool)

(assert (=> b!228910 m!270023))

(declare-fun m!270025 () Bool)

(assert (=> b!228910 m!270025))

(declare-fun m!270027 () Bool)

(assert (=> b!228910 m!270027))

(assert (=> b!228910 m!270023))

(declare-fun m!270029 () Bool)

(assert (=> b!228910 m!270029))

(declare-fun m!270031 () Bool)

(assert (=> b!228910 m!270031))

(declare-fun m!270033 () Bool)

(assert (=> b!228910 m!270033))

(declare-fun m!270035 () Bool)

(assert (=> b!228910 m!270035))

(declare-fun m!270037 () Bool)

(assert (=> b!228910 m!270037))

(declare-fun m!270039 () Bool)

(assert (=> b!228910 m!270039))

(declare-fun m!270041 () Bool)

(assert (=> b!228910 m!270041))

(declare-fun m!270043 () Bool)

(assert (=> b!228910 m!270043))

(declare-fun m!270045 () Bool)

(assert (=> b!228910 m!270045))

(declare-fun m!270047 () Bool)

(assert (=> b!228910 m!270047))

(assert (=> b!228910 m!270037))

(declare-fun m!270049 () Bool)

(assert (=> b!228910 m!270049))

(declare-fun m!270051 () Bool)

(assert (=> b!228910 m!270051))

(declare-fun m!270053 () Bool)

(assert (=> b!228910 m!270053))

(declare-fun m!270055 () Bool)

(assert (=> b!228910 m!270055))

(declare-fun m!270057 () Bool)

(assert (=> b!228910 m!270057))

(declare-fun m!270059 () Bool)

(assert (=> b!228910 m!270059))

(declare-fun m!270061 () Bool)

(assert (=> b!228910 m!270061))

(assert (=> b!228910 m!269961))

(assert (=> b!228910 m!270043))

(declare-fun m!270063 () Bool)

(assert (=> b!228910 m!270063))

(declare-fun m!270065 () Bool)

(assert (=> b!228910 m!270065))

(declare-fun m!270067 () Bool)

(assert (=> b!228910 m!270067))

(declare-fun m!270069 () Bool)

(assert (=> b!228910 m!270069))

(assert (=> b!228910 m!270053))

(declare-fun m!270071 () Bool)

(assert (=> b!228910 m!270071))

(declare-fun m!270073 () Bool)

(assert (=> b!228910 m!270073))

(declare-fun m!270075 () Bool)

(assert (=> b!228910 m!270075))

(declare-fun m!270077 () Bool)

(assert (=> b!228910 m!270077))

(declare-fun m!270079 () Bool)

(assert (=> b!228910 m!270079))

(declare-fun m!270081 () Bool)

(assert (=> b!228919 m!270081))

(declare-fun m!270083 () Bool)

(assert (=> b!228919 m!270083))

(declare-fun m!270085 () Bool)

(assert (=> b!228922 m!270085))

(declare-fun m!270087 () Bool)

(assert (=> b!228922 m!270087))

(declare-fun m!270089 () Bool)

(assert (=> b!228937 m!270089))

(declare-fun m!270091 () Bool)

(assert (=> b!228914 m!270091))

(declare-fun m!270093 () Bool)

(assert (=> b!228914 m!270093))

(declare-fun m!270095 () Bool)

(assert (=> b!228935 m!270095))

(assert (=> b!228935 m!270095))

(declare-fun m!270097 () Bool)

(assert (=> b!228935 m!270097))

(declare-fun m!270099 () Bool)

(assert (=> b!228930 m!270099))

(declare-fun m!270101 () Bool)

(assert (=> b!228926 m!270101))

(declare-fun m!270103 () Bool)

(assert (=> b!228926 m!270103))

(declare-fun m!270105 () Bool)

(assert (=> b!228928 m!270105))

(check-sat (not b!228924) (not b!228941) (not b!228908) b_and!16975 (not b!228915) (not b_next!8569) (not b!228921) (not b!228962) (not b!228911) (not b!228942) (not b_next!8567) b_and!16973 (not b_next!8571) (not b_next!8565) (not b!228919) (not b!228918) (not b!228905) (not b!228922) (not b!228939) (not b!228943) (not b!228926) (not b!228928) (not b!228934) (not start!24494) (not b!228931) b_and!16981 (not b!228910) (not b!228917) (not b!228912) (not b_next!8563) (not b!228946) (not b!228925) (not b!228945) (not b!228920) (not b!228937) b_and!16979 (not b!228949) (not b!228906) (not b!228923) (not b!228953) (not b!228952) (not b!228914) (not b!228944) (not b_next!8561) b_and!16983 (not b!228909) (not b!228935) (not b!228936) (not b!228913) (not b!228930) b_and!16977 (not b!228933))
(check-sat b_and!16981 b_and!16975 (not b_next!8563) b_and!16979 (not b_next!8569) (not b_next!8567) b_and!16973 b_and!16977 (not b_next!8571) (not b_next!8565) (not b_next!8561) b_and!16983)
