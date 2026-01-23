; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!20514 () Bool)

(assert start!20514)

(declare-fun b!190375 () Bool)

(declare-fun b_free!7593 () Bool)

(declare-fun b_next!7593 () Bool)

(assert (=> b!190375 (= b_free!7593 (not b_next!7593))))

(declare-fun tp!88616 () Bool)

(declare-fun b_and!13197 () Bool)

(assert (=> b!190375 (= tp!88616 b_and!13197)))

(declare-fun b_free!7595 () Bool)

(declare-fun b_next!7595 () Bool)

(assert (=> b!190375 (= b_free!7595 (not b_next!7595))))

(declare-fun tp!88618 () Bool)

(declare-fun b_and!13199 () Bool)

(assert (=> b!190375 (= tp!88618 b_and!13199)))

(declare-fun b!190386 () Bool)

(declare-fun b_free!7597 () Bool)

(declare-fun b_next!7597 () Bool)

(assert (=> b!190386 (= b_free!7597 (not b_next!7597))))

(declare-fun tp!88614 () Bool)

(declare-fun b_and!13201 () Bool)

(assert (=> b!190386 (= tp!88614 b_and!13201)))

(declare-fun b_free!7599 () Bool)

(declare-fun b_next!7599 () Bool)

(assert (=> b!190386 (= b_free!7599 (not b_next!7599))))

(declare-fun tp!88624 () Bool)

(declare-fun b_and!13203 () Bool)

(assert (=> b!190386 (= tp!88624 b_and!13203)))

(declare-fun b!190359 () Bool)

(declare-fun b_free!7601 () Bool)

(declare-fun b_next!7601 () Bool)

(assert (=> b!190359 (= b_free!7601 (not b_next!7601))))

(declare-fun tp!88613 () Bool)

(declare-fun b_and!13205 () Bool)

(assert (=> b!190359 (= tp!88613 b_and!13205)))

(declare-fun b_free!7603 () Bool)

(declare-fun b_next!7603 () Bool)

(assert (=> b!190359 (= b_free!7603 (not b_next!7603))))

(declare-fun tp!88619 () Bool)

(declare-fun b_and!13207 () Bool)

(assert (=> b!190359 (= tp!88619 b_and!13207)))

(declare-fun bs!18770 () Bool)

(declare-fun b!190368 () Bool)

(declare-fun b!190392 () Bool)

(assert (= bs!18770 (and b!190368 b!190392)))

(declare-fun lambda!5812 () Int)

(declare-fun lambda!5811 () Int)

(assert (=> bs!18770 (not (= lambda!5812 lambda!5811))))

(declare-fun b!190408 () Bool)

(declare-fun e!116965 () Bool)

(assert (=> b!190408 (= e!116965 true)))

(declare-fun b!190407 () Bool)

(declare-fun e!116964 () Bool)

(assert (=> b!190407 (= e!116964 e!116965)))

(declare-fun b!190406 () Bool)

(declare-fun e!116963 () Bool)

(assert (=> b!190406 (= e!116963 e!116964)))

(assert (=> b!190368 e!116963))

(assert (= b!190407 b!190408))

(assert (= b!190406 b!190407))

(declare-datatypes ((List!3211 0))(
  ( (Nil!3201) (Cons!3201 (h!8598 (_ BitVec 16)) (t!28901 List!3211)) )
))
(declare-datatypes ((TokenValue!611 0))(
  ( (FloatLiteralValue!1222 (text!4722 List!3211)) (TokenValueExt!610 (__x!2709 Int)) (Broken!3055 (value!21076 List!3211)) (Object!620) (End!611) (Def!611) (Underscore!611) (Match!611) (Else!611) (Error!611) (Case!611) (If!611) (Extends!611) (Abstract!611) (Class!611) (Val!611) (DelimiterValue!1222 (del!671 List!3211)) (KeywordValue!617 (value!21077 List!3211)) (CommentValue!1222 (value!21078 List!3211)) (WhitespaceValue!1222 (value!21079 List!3211)) (IndentationValue!611 (value!21080 List!3211)) (String!4134) (Int32!611) (Broken!3056 (value!21081 List!3211)) (Boolean!612) (Unit!3015) (OperatorValue!614 (op!671 List!3211)) (IdentifierValue!1222 (value!21082 List!3211)) (IdentifierValue!1223 (value!21083 List!3211)) (WhitespaceValue!1223 (value!21084 List!3211)) (True!1222) (False!1222) (Broken!3057 (value!21085 List!3211)) (Broken!3058 (value!21086 List!3211)) (True!1223) (RightBrace!611) (RightBracket!611) (Colon!611) (Null!611) (Comma!611) (LeftBracket!611) (False!1223) (LeftBrace!611) (ImaginaryLiteralValue!611 (text!4723 List!3211)) (StringLiteralValue!1833 (value!21087 List!3211)) (EOFValue!611 (value!21088 List!3211)) (IdentValue!611 (value!21089 List!3211)) (DelimiterValue!1223 (value!21090 List!3211)) (DedentValue!611 (value!21091 List!3211)) (NewLineValue!611 (value!21092 List!3211)) (IntegerValue!1833 (value!21093 (_ BitVec 32)) (text!4724 List!3211)) (IntegerValue!1834 (value!21094 Int) (text!4725 List!3211)) (Times!611) (Or!611) (Equal!611) (Minus!611) (Broken!3059 (value!21095 List!3211)) (And!611) (Div!611) (LessEqual!611) (Mod!611) (Concat!1424) (Not!611) (Plus!611) (SpaceValue!611 (value!21096 List!3211)) (IntegerValue!1835 (value!21097 Int) (text!4726 List!3211)) (StringLiteralValue!1834 (text!4727 List!3211)) (FloatLiteralValue!1223 (text!4728 List!3211)) (BytesLiteralValue!611 (value!21098 List!3211)) (CommentValue!1223 (value!21099 List!3211)) (StringLiteralValue!1835 (value!21100 List!3211)) (ErrorTokenValue!611 (msg!672 List!3211)) )
))
(declare-datatypes ((C!2548 0))(
  ( (C!2549 (val!1160 Int)) )
))
(declare-datatypes ((List!3212 0))(
  ( (Nil!3202) (Cons!3202 (h!8599 C!2548) (t!28902 List!3212)) )
))
(declare-datatypes ((IArray!2001 0))(
  ( (IArray!2002 (innerList!1058 List!3212)) )
))
(declare-datatypes ((Conc!1000 0))(
  ( (Node!1000 (left!2529 Conc!1000) (right!2859 Conc!1000) (csize!2230 Int) (cheight!1211 Int)) (Leaf!1634 (xs!3595 IArray!2001) (csize!2231 Int)) (Empty!1000) )
))
(declare-datatypes ((BalanceConc!2008 0))(
  ( (BalanceConc!2009 (c!36397 Conc!1000)) )
))
(declare-datatypes ((TokenValueInjection!994 0))(
  ( (TokenValueInjection!995 (toValue!1260 Int) (toChars!1119 Int)) )
))
(declare-datatypes ((Regex!813 0))(
  ( (ElementMatch!813 (c!36398 C!2548)) (Concat!1425 (regOne!2138 Regex!813) (regTwo!2138 Regex!813)) (EmptyExpr!813) (Star!813 (reg!1142 Regex!813)) (EmptyLang!813) (Union!813 (regOne!2139 Regex!813) (regTwo!2139 Regex!813)) )
))
(declare-datatypes ((String!4135 0))(
  ( (String!4136 (value!21101 String)) )
))
(declare-datatypes ((Rule!978 0))(
  ( (Rule!979 (regex!589 Regex!813) (tag!767 String!4135) (isSeparator!589 Bool) (transformation!589 TokenValueInjection!994)) )
))
(declare-datatypes ((List!3213 0))(
  ( (Nil!3203) (Cons!3203 (h!8600 Rule!978) (t!28903 List!3213)) )
))
(declare-fun rules!1920 () List!3213)

(get-info :version)

(assert (= (and b!190368 ((_ is Cons!3203) rules!1920)) b!190406))

(declare-fun order!2009 () Int)

(declare-fun order!2011 () Int)

(declare-fun dynLambda!1357 (Int Int) Int)

(declare-fun dynLambda!1358 (Int Int) Int)

(assert (=> b!190408 (< (dynLambda!1357 order!2009 (toValue!1260 (transformation!589 (h!8600 rules!1920)))) (dynLambda!1358 order!2011 lambda!5812))))

(declare-fun order!2013 () Int)

(declare-fun dynLambda!1359 (Int Int) Int)

(assert (=> b!190408 (< (dynLambda!1359 order!2013 (toChars!1119 (transformation!589 (h!8600 rules!1920)))) (dynLambda!1358 order!2011 lambda!5812))))

(assert (=> b!190368 true))

(declare-fun e!116929 () Bool)

(assert (=> b!190359 (= e!116929 (and tp!88613 tp!88619))))

(declare-fun b!190360 () Bool)

(declare-datatypes ((Unit!3016 0))(
  ( (Unit!3017) )
))
(declare-fun e!116947 () Unit!3016)

(declare-fun Unit!3018 () Unit!3016)

(assert (=> b!190360 (= e!116947 Unit!3018)))

(assert (=> b!190360 false))

(declare-fun b!190361 () Bool)

(declare-fun res!87177 () Bool)

(declare-fun e!116945 () Bool)

(assert (=> b!190361 (=> res!87177 e!116945)))

(declare-fun lt!64998 () List!3212)

(declare-datatypes ((LexerInterface!475 0))(
  ( (LexerInterfaceExt!472 (__x!2710 Int)) (Lexer!473) )
))
(declare-fun thiss!17480 () LexerInterface!475)

(declare-datatypes ((Token!922 0))(
  ( (Token!923 (value!21102 TokenValue!611) (rule!1104 Rule!978) (size!2554 Int) (originalCharacters!632 List!3212)) )
))
(declare-datatypes ((List!3214 0))(
  ( (Nil!3204) (Cons!3204 (h!8601 Token!922) (t!28904 List!3214)) )
))
(declare-datatypes ((IArray!2003 0))(
  ( (IArray!2004 (innerList!1059 List!3214)) )
))
(declare-datatypes ((Conc!1001 0))(
  ( (Node!1001 (left!2530 Conc!1001) (right!2860 Conc!1001) (csize!2232 Int) (cheight!1212 Int)) (Leaf!1635 (xs!3596 IArray!2003) (csize!2233 Int)) (Empty!1001) )
))
(declare-datatypes ((BalanceConc!2010 0))(
  ( (BalanceConc!2011 (c!36399 Conc!1001)) )
))
(declare-fun isEmpty!1588 (BalanceConc!2010) Bool)

(declare-datatypes ((tuple2!3278 0))(
  ( (tuple2!3279 (_1!1855 BalanceConc!2010) (_2!1855 BalanceConc!2008)) )
))
(declare-fun lex!275 (LexerInterface!475 List!3213 BalanceConc!2008) tuple2!3278)

(declare-fun seqFromList!555 (List!3212) BalanceConc!2008)

(assert (=> b!190361 (= res!87177 (isEmpty!1588 (_1!1855 (lex!275 thiss!17480 rules!1920 (seqFromList!555 lt!64998)))))))

(declare-fun b!190362 () Bool)

(declare-fun e!116948 () Bool)

(assert (=> b!190362 (= e!116948 e!116945)))

(declare-fun res!87162 () Bool)

(assert (=> b!190362 (=> res!87162 e!116945)))

(declare-fun lt!64986 () List!3212)

(declare-fun lt!64979 () List!3212)

(assert (=> b!190362 (= res!87162 (or (not (= lt!64979 lt!64986)) (not (= lt!64986 lt!64998)) (not (= lt!64979 lt!64998))))))

(declare-fun tokens!465 () List!3214)

(declare-fun printList!159 (LexerInterface!475 List!3214) List!3212)

(assert (=> b!190362 (= lt!64986 (printList!159 thiss!17480 (Cons!3204 (h!8601 tokens!465) Nil!3204)))))

(declare-fun lt!65001 () BalanceConc!2008)

(declare-fun list!1175 (BalanceConc!2008) List!3212)

(assert (=> b!190362 (= lt!64979 (list!1175 lt!65001))))

(declare-fun lt!64982 () BalanceConc!2010)

(declare-fun printTailRec!169 (LexerInterface!475 BalanceConc!2010 Int BalanceConc!2008) BalanceConc!2008)

(assert (=> b!190362 (= lt!65001 (printTailRec!169 thiss!17480 lt!64982 0 (BalanceConc!2009 Empty!1000)))))

(declare-fun print!206 (LexerInterface!475 BalanceConc!2010) BalanceConc!2008)

(assert (=> b!190362 (= lt!65001 (print!206 thiss!17480 lt!64982))))

(declare-fun singletonSeq!141 (Token!922) BalanceConc!2010)

(assert (=> b!190362 (= lt!64982 (singletonSeq!141 (h!8601 tokens!465)))))

(declare-fun b!190363 () Bool)

(declare-fun e!116927 () Bool)

(declare-fun e!116939 () Bool)

(assert (=> b!190363 (= e!116927 e!116939)))

(declare-fun res!87170 () Bool)

(assert (=> b!190363 (=> (not res!87170) (not e!116939))))

(declare-fun lt!65003 () BalanceConc!2010)

(declare-fun rulesProduceEachTokenIndividually!267 (LexerInterface!475 List!3213 BalanceConc!2010) Bool)

(assert (=> b!190363 (= res!87170 (rulesProduceEachTokenIndividually!267 thiss!17480 rules!1920 lt!65003))))

(declare-fun seqFromList!556 (List!3214) BalanceConc!2010)

(assert (=> b!190363 (= lt!65003 (seqFromList!556 tokens!465))))

(declare-fun b!190364 () Bool)

(declare-fun e!116941 () Bool)

(declare-fun e!116937 () Bool)

(assert (=> b!190364 (= e!116941 e!116937)))

(declare-fun res!87174 () Bool)

(assert (=> b!190364 (=> (not res!87174) (not e!116937))))

(declare-fun lt!64995 () Rule!978)

(declare-fun lt!65007 () List!3212)

(declare-fun matchR!151 (Regex!813 List!3212) Bool)

(assert (=> b!190364 (= res!87174 (matchR!151 (regex!589 lt!64995) lt!65007))))

(declare-datatypes ((Option!459 0))(
  ( (None!458) (Some!458 (v!13969 Rule!978)) )
))
(declare-fun lt!64999 () Option!459)

(declare-fun get!927 (Option!459) Rule!978)

(assert (=> b!190364 (= lt!64995 (get!927 lt!64999))))

(declare-fun b!190365 () Bool)

(declare-fun res!87172 () Bool)

(assert (=> b!190365 (=> (not res!87172) (not e!116939))))

(declare-fun separatorToken!170 () Token!922)

(assert (=> b!190365 (= res!87172 (isSeparator!589 (rule!1104 separatorToken!170)))))

(declare-fun b!190366 () Bool)

(declare-fun res!87178 () Bool)

(assert (=> b!190366 (=> (not res!87178) (not e!116939))))

(declare-fun sepAndNonSepRulesDisjointChars!178 (List!3213 List!3213) Bool)

(assert (=> b!190366 (= res!87178 (sepAndNonSepRulesDisjointChars!178 rules!1920 rules!1920))))

(declare-fun b!190367 () Bool)

(declare-fun e!116949 () Bool)

(declare-datatypes ((tuple2!3280 0))(
  ( (tuple2!3281 (_1!1856 Token!922) (_2!1856 List!3212)) )
))
(declare-datatypes ((Option!460 0))(
  ( (None!459) (Some!459 (v!13970 tuple2!3280)) )
))
(declare-fun lt!65006 () Option!460)

(declare-fun get!928 (Option!460) tuple2!3280)

(declare-fun head!678 (List!3214) Token!922)

(assert (=> b!190367 (= e!116949 (= (_1!1856 (get!928 lt!65006)) (head!678 tokens!465)))))

(declare-fun e!116940 () Bool)

(assert (=> b!190368 (= e!116945 e!116940)))

(declare-fun res!87176 () Bool)

(assert (=> b!190368 (=> res!87176 e!116940)))

(declare-datatypes ((tuple2!3282 0))(
  ( (tuple2!3283 (_1!1857 Token!922) (_2!1857 BalanceConc!2008)) )
))
(declare-datatypes ((Option!461 0))(
  ( (None!460) (Some!460 (v!13971 tuple2!3282)) )
))
(declare-fun isDefined!310 (Option!461) Bool)

(declare-fun maxPrefixZipperSequence!168 (LexerInterface!475 List!3213 BalanceConc!2008) Option!461)

(assert (=> b!190368 (= res!87176 (not (isDefined!310 (maxPrefixZipperSequence!168 thiss!17480 rules!1920 (seqFromList!555 (originalCharacters!632 (h!8601 tokens!465)))))))))

(declare-fun lt!64981 () Unit!3016)

(declare-fun forallContained!156 (List!3214 Int Token!922) Unit!3016)

(assert (=> b!190368 (= lt!64981 (forallContained!156 tokens!465 lambda!5812 (h!8601 tokens!465)))))

(assert (=> b!190368 (= lt!64998 (originalCharacters!632 (h!8601 tokens!465)))))

(declare-fun b!190369 () Bool)

(declare-fun e!116943 () Bool)

(assert (=> b!190369 (= e!116940 e!116943)))

(declare-fun res!87166 () Bool)

(assert (=> b!190369 (=> res!87166 e!116943)))

(declare-fun lt!65004 () Bool)

(assert (=> b!190369 (= res!87166 (not lt!65004))))

(declare-fun e!116955 () Bool)

(assert (=> b!190369 e!116955))

(declare-fun res!87179 () Bool)

(assert (=> b!190369 (=> (not res!87179) (not e!116955))))

(declare-fun lt!64978 () tuple2!3280)

(assert (=> b!190369 (= res!87179 (= (_1!1856 lt!64978) (h!8601 tokens!465)))))

(declare-fun lt!64989 () Option!460)

(assert (=> b!190369 (= lt!64978 (get!928 lt!64989))))

(declare-fun isDefined!311 (Option!460) Bool)

(assert (=> b!190369 (isDefined!311 lt!64989)))

(declare-fun maxPrefix!205 (LexerInterface!475 List!3213 List!3212) Option!460)

(assert (=> b!190369 (= lt!64989 (maxPrefix!205 thiss!17480 rules!1920 lt!64998))))

(declare-fun b!190370 () Bool)

(assert (=> b!190370 (= e!116955 (matchR!151 (regex!589 (rule!1104 (h!8601 tokens!465))) lt!64998))))

(declare-fun b!190371 () Bool)

(declare-fun res!87165 () Bool)

(assert (=> b!190371 (=> (not res!87165) (not e!116939))))

(declare-fun rulesProduceIndividualToken!224 (LexerInterface!475 List!3213 Token!922) Bool)

(assert (=> b!190371 (= res!87165 (rulesProduceIndividualToken!224 thiss!17480 rules!1920 separatorToken!170))))

(declare-fun b!190372 () Bool)

(declare-fun e!116950 () Bool)

(declare-fun e!116951 () Bool)

(declare-fun tp!88622 () Bool)

(declare-fun inv!4026 (Token!922) Bool)

(assert (=> b!190372 (= e!116951 (and (inv!4026 (h!8601 tokens!465)) e!116950 tp!88622))))

(declare-fun b!190373 () Bool)

(declare-fun e!116938 () Bool)

(declare-fun e!116936 () Bool)

(assert (=> b!190373 (= e!116938 (not e!116936))))

(declare-fun res!87159 () Bool)

(assert (=> b!190373 (=> res!87159 e!116936)))

(declare-fun lt!64977 () List!3212)

(declare-fun printWithSeparatorTokenWhenNeededRec!158 (LexerInterface!475 List!3213 BalanceConc!2010 Token!922 Int) BalanceConc!2008)

(assert (=> b!190373 (= res!87159 (not (= lt!64977 (list!1175 (printWithSeparatorTokenWhenNeededRec!158 thiss!17480 rules!1920 (seqFromList!556 (t!28904 tokens!465)) separatorToken!170 0)))))))

(declare-fun lt!65002 () List!3212)

(declare-fun lt!64997 () List!3212)

(assert (=> b!190373 (= lt!65002 lt!64997)))

(declare-fun lt!65005 () List!3212)

(declare-fun ++!764 (List!3212 List!3212) List!3212)

(assert (=> b!190373 (= lt!64997 (++!764 lt!64998 lt!65005))))

(assert (=> b!190373 (= lt!65002 (++!764 (++!764 lt!64998 lt!65007) lt!64977))))

(declare-fun lt!64983 () Unit!3016)

(declare-fun lemmaConcatAssociativity!278 (List!3212 List!3212 List!3212) Unit!3016)

(assert (=> b!190373 (= lt!64983 (lemmaConcatAssociativity!278 lt!64998 lt!65007 lt!64977))))

(declare-fun charsOf!244 (Token!922) BalanceConc!2008)

(assert (=> b!190373 (= lt!64998 (list!1175 (charsOf!244 (h!8601 tokens!465))))))

(assert (=> b!190373 (= lt!65005 (++!764 lt!65007 lt!64977))))

(declare-fun printWithSeparatorTokenWhenNeededList!168 (LexerInterface!475 List!3213 List!3214 Token!922) List!3212)

(assert (=> b!190373 (= lt!64977 (printWithSeparatorTokenWhenNeededList!168 thiss!17480 rules!1920 (t!28904 tokens!465) separatorToken!170))))

(assert (=> b!190373 (= lt!65007 (list!1175 (charsOf!244 separatorToken!170)))))

(declare-fun b!190374 () Bool)

(declare-fun Unit!3019 () Unit!3016)

(assert (=> b!190374 (= e!116947 Unit!3019)))

(declare-fun e!116942 () Bool)

(assert (=> b!190375 (= e!116942 (and tp!88616 tp!88618))))

(declare-fun tp!88615 () Bool)

(declare-fun e!116926 () Bool)

(declare-fun b!190376 () Bool)

(declare-fun inv!4023 (String!4135) Bool)

(declare-fun inv!4027 (TokenValueInjection!994) Bool)

(assert (=> b!190376 (= e!116926 (and tp!88615 (inv!4023 (tag!767 (rule!1104 (h!8601 tokens!465)))) (inv!4027 (transformation!589 (rule!1104 (h!8601 tokens!465)))) e!116942))))

(declare-fun b!190377 () Bool)

(declare-fun res!87164 () Bool)

(assert (=> b!190377 (=> (not res!87164) (not e!116939))))

(assert (=> b!190377 (= res!87164 ((_ is Cons!3204) tokens!465))))

(declare-fun b!190378 () Bool)

(declare-fun tp!88625 () Bool)

(declare-fun inv!21 (TokenValue!611) Bool)

(assert (=> b!190378 (= e!116950 (and (inv!21 (value!21102 (h!8601 tokens!465))) e!116926 tp!88625))))

(declare-fun b!190379 () Bool)

(declare-fun e!116931 () Bool)

(assert (=> b!190379 (= e!116931 e!116949)))

(declare-fun res!87155 () Bool)

(assert (=> b!190379 (=> (not res!87155) (not e!116949))))

(assert (=> b!190379 (= res!87155 (isDefined!311 lt!65006))))

(declare-fun lt!65008 () List!3212)

(assert (=> b!190379 (= lt!65006 (maxPrefix!205 thiss!17480 rules!1920 lt!65008))))

(declare-fun e!116932 () Bool)

(declare-fun tp!88623 () Bool)

(declare-fun b!190380 () Bool)

(assert (=> b!190380 (= e!116932 (and tp!88623 (inv!4023 (tag!767 (rule!1104 separatorToken!170))) (inv!4027 (transformation!589 (rule!1104 separatorToken!170))) e!116929))))

(declare-fun b!190381 () Bool)

(declare-fun e!116928 () Bool)

(declare-fun e!116953 () Bool)

(declare-fun tp!88617 () Bool)

(assert (=> b!190381 (= e!116928 (and e!116953 tp!88617))))

(declare-fun b!190382 () Bool)

(assert (=> b!190382 (= e!116936 e!116948)))

(declare-fun res!87171 () Bool)

(assert (=> b!190382 (=> res!87171 e!116948)))

(declare-fun e!116944 () Bool)

(assert (=> b!190382 (= res!87171 e!116944)))

(declare-fun res!87160 () Bool)

(assert (=> b!190382 (=> (not res!87160) (not e!116944))))

(assert (=> b!190382 (= res!87160 (not lt!65004))))

(assert (=> b!190382 (= lt!65004 (= lt!65008 lt!64997))))

(declare-fun b!190383 () Bool)

(assert (=> b!190383 (= e!116939 e!116938)))

(declare-fun res!87181 () Bool)

(assert (=> b!190383 (=> (not res!87181) (not e!116938))))

(declare-fun lt!64975 () List!3212)

(assert (=> b!190383 (= res!87181 (= lt!65008 lt!64975))))

(assert (=> b!190383 (= lt!64975 (list!1175 (printWithSeparatorTokenWhenNeededRec!158 thiss!17480 rules!1920 lt!65003 separatorToken!170 0)))))

(assert (=> b!190383 (= lt!65008 (printWithSeparatorTokenWhenNeededList!168 thiss!17480 rules!1920 tokens!465 separatorToken!170))))

(declare-fun b!190384 () Bool)

(assert (=> b!190384 (= e!116943 true)))

(declare-fun lt!64976 () BalanceConc!2010)

(assert (=> b!190384 (= (print!206 thiss!17480 lt!64976) (printTailRec!169 thiss!17480 lt!64976 0 (BalanceConc!2009 Empty!1000)))))

(declare-fun lt!64980 () Token!922)

(assert (=> b!190384 (= lt!64976 (singletonSeq!141 lt!64980))))

(assert (=> b!190384 e!116941))

(declare-fun res!87157 () Bool)

(assert (=> b!190384 (=> (not res!87157) (not e!116941))))

(declare-fun isDefined!312 (Option!459) Bool)

(assert (=> b!190384 (= res!87157 (isDefined!312 lt!64999))))

(declare-fun getRuleFromTag!30 (LexerInterface!475 List!3213 String!4135) Option!459)

(assert (=> b!190384 (= lt!64999 (getRuleFromTag!30 thiss!17480 rules!1920 (tag!767 (rule!1104 separatorToken!170))))))

(declare-fun lt!64987 () Unit!3016)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!30 (LexerInterface!475 List!3213 List!3212 Token!922) Unit!3016)

(assert (=> b!190384 (= lt!64987 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!30 thiss!17480 rules!1920 lt!65007 separatorToken!170))))

(declare-fun e!116952 () Bool)

(assert (=> b!190384 e!116952))

(declare-fun res!87175 () Bool)

(assert (=> b!190384 (=> (not res!87175) (not e!116952))))

(declare-fun lt!64991 () tuple2!3278)

(declare-fun size!2555 (BalanceConc!2010) Int)

(assert (=> b!190384 (= res!87175 (= (size!2555 (_1!1855 lt!64991)) 1))))

(declare-fun lt!64996 () BalanceConc!2008)

(assert (=> b!190384 (= lt!64991 (lex!275 thiss!17480 rules!1920 lt!64996))))

(declare-fun lt!64988 () BalanceConc!2010)

(assert (=> b!190384 (= lt!64996 (printTailRec!169 thiss!17480 lt!64988 0 (BalanceConc!2009 Empty!1000)))))

(assert (=> b!190384 (= lt!64996 (print!206 thiss!17480 lt!64988))))

(assert (=> b!190384 (= lt!64988 (singletonSeq!141 separatorToken!170))))

(assert (=> b!190384 (rulesProduceIndividualToken!224 thiss!17480 rules!1920 lt!64980)))

(declare-fun lt!65000 () Unit!3016)

(declare-fun lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!42 (LexerInterface!475 List!3213 List!3214 Token!922) Unit!3016)

(assert (=> b!190384 (= lt!65000 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!42 thiss!17480 rules!1920 tokens!465 lt!64980))))

(assert (=> b!190384 (= lt!64980 (head!678 (t!28904 tokens!465)))))

(declare-fun lt!64984 () Unit!3016)

(assert (=> b!190384 (= lt!64984 e!116947)))

(declare-fun c!36396 () Bool)

(declare-fun isEmpty!1589 (List!3214) Bool)

(assert (=> b!190384 (= c!36396 (isEmpty!1589 (t!28904 tokens!465)))))

(declare-fun lt!64992 () Option!460)

(assert (=> b!190384 (= lt!64992 (maxPrefix!205 thiss!17480 rules!1920 lt!65005))))

(declare-fun lt!64985 () tuple2!3280)

(assert (=> b!190384 (= lt!65005 (_2!1856 lt!64985))))

(declare-fun lt!64993 () Unit!3016)

(declare-fun lemmaSamePrefixThenSameSuffix!110 (List!3212 List!3212 List!3212 List!3212 List!3212) Unit!3016)

(assert (=> b!190384 (= lt!64993 (lemmaSamePrefixThenSameSuffix!110 lt!64998 lt!65005 lt!64998 (_2!1856 lt!64985) lt!65008))))

(assert (=> b!190384 (= lt!64985 (get!928 (maxPrefix!205 thiss!17480 rules!1920 lt!65008)))))

(declare-fun isPrefix!285 (List!3212 List!3212) Bool)

(assert (=> b!190384 (isPrefix!285 lt!64998 lt!64997)))

(declare-fun lt!64990 () Unit!3016)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!180 (List!3212 List!3212) Unit!3016)

(assert (=> b!190384 (= lt!64990 (lemmaConcatTwoListThenFirstIsPrefix!180 lt!64998 lt!65005))))

(assert (=> b!190384 e!116931))

(declare-fun res!87158 () Bool)

(assert (=> b!190384 (=> res!87158 e!116931)))

(assert (=> b!190384 (= res!87158 (isEmpty!1589 tokens!465))))

(declare-fun lt!64994 () Unit!3016)

(declare-fun lemmaPrintWithSepTokenWhenNeededThenMaxPrefReturnsHead!50 (LexerInterface!475 List!3213 List!3214 Token!922) Unit!3016)

(assert (=> b!190384 (= lt!64994 (lemmaPrintWithSepTokenWhenNeededThenMaxPrefReturnsHead!50 thiss!17480 rules!1920 tokens!465 separatorToken!170))))

(declare-fun b!190385 () Bool)

(assert (=> b!190385 (= e!116944 (not (= lt!65008 (++!764 lt!64998 lt!64977))))))

(declare-fun e!116934 () Bool)

(assert (=> b!190386 (= e!116934 (and tp!88614 tp!88624))))

(declare-fun tp!88621 () Bool)

(declare-fun e!116954 () Bool)

(declare-fun b!190387 () Bool)

(assert (=> b!190387 (= e!116954 (and (inv!21 (value!21102 separatorToken!170)) e!116932 tp!88621))))

(declare-fun b!190388 () Bool)

(assert (=> b!190388 (= e!116937 (= (rule!1104 separatorToken!170) lt!64995))))

(declare-fun b!190389 () Bool)

(declare-fun res!87163 () Bool)

(assert (=> b!190389 (=> (not res!87163) (not e!116952))))

(declare-fun apply!488 (BalanceConc!2010 Int) Token!922)

(assert (=> b!190389 (= res!87163 (= (apply!488 (_1!1855 lt!64991) 0) separatorToken!170))))

(declare-fun b!190390 () Bool)

(declare-fun res!87180 () Bool)

(assert (=> b!190390 (=> (not res!87180) (not e!116938))))

(assert (=> b!190390 (= res!87180 (= (list!1175 (seqFromList!555 lt!65008)) lt!64975))))

(declare-fun res!87173 () Bool)

(assert (=> start!20514 (=> (not res!87173) (not e!116927))))

(assert (=> start!20514 (= res!87173 ((_ is Lexer!473) thiss!17480))))

(assert (=> start!20514 e!116927))

(assert (=> start!20514 true))

(assert (=> start!20514 e!116928))

(assert (=> start!20514 (and (inv!4026 separatorToken!170) e!116954)))

(assert (=> start!20514 e!116951))

(declare-fun b!190391 () Bool)

(declare-fun isEmpty!1590 (BalanceConc!2008) Bool)

(assert (=> b!190391 (= e!116952 (isEmpty!1590 (_2!1855 lt!64991)))))

(declare-fun res!87168 () Bool)

(assert (=> b!190392 (=> (not res!87168) (not e!116939))))

(declare-fun forall!671 (List!3214 Int) Bool)

(assert (=> b!190392 (= res!87168 (forall!671 tokens!465 lambda!5811))))

(declare-fun b!190393 () Bool)

(declare-fun res!87167 () Bool)

(assert (=> b!190393 (=> (not res!87167) (not e!116927))))

(declare-fun rulesInvariant!441 (LexerInterface!475 List!3213) Bool)

(assert (=> b!190393 (= res!87167 (rulesInvariant!441 thiss!17480 rules!1920))))

(declare-fun tp!88620 () Bool)

(declare-fun b!190394 () Bool)

(assert (=> b!190394 (= e!116953 (and tp!88620 (inv!4023 (tag!767 (h!8600 rules!1920))) (inv!4027 (transformation!589 (h!8600 rules!1920))) e!116934))))

(declare-fun b!190395 () Bool)

(declare-fun res!87169 () Bool)

(assert (=> b!190395 (=> (not res!87169) (not e!116955))))

(declare-fun isEmpty!1591 (List!3212) Bool)

(assert (=> b!190395 (= res!87169 (isEmpty!1591 (_2!1856 lt!64978)))))

(declare-fun b!190396 () Bool)

(declare-fun res!87156 () Bool)

(assert (=> b!190396 (=> res!87156 e!116945)))

(assert (=> b!190396 (= res!87156 (not (rulesProduceIndividualToken!224 thiss!17480 rules!1920 (h!8601 tokens!465))))))

(declare-fun b!190397 () Bool)

(declare-fun res!87161 () Bool)

(assert (=> b!190397 (=> (not res!87161) (not e!116927))))

(declare-fun isEmpty!1592 (List!3213) Bool)

(assert (=> b!190397 (= res!87161 (not (isEmpty!1592 rules!1920)))))

(assert (= (and start!20514 res!87173) b!190397))

(assert (= (and b!190397 res!87161) b!190393))

(assert (= (and b!190393 res!87167) b!190363))

(assert (= (and b!190363 res!87170) b!190371))

(assert (= (and b!190371 res!87165) b!190365))

(assert (= (and b!190365 res!87172) b!190392))

(assert (= (and b!190392 res!87168) b!190366))

(assert (= (and b!190366 res!87178) b!190377))

(assert (= (and b!190377 res!87164) b!190383))

(assert (= (and b!190383 res!87181) b!190390))

(assert (= (and b!190390 res!87180) b!190373))

(assert (= (and b!190373 (not res!87159)) b!190382))

(assert (= (and b!190382 res!87160) b!190385))

(assert (= (and b!190382 (not res!87171)) b!190362))

(assert (= (and b!190362 (not res!87162)) b!190396))

(assert (= (and b!190396 (not res!87156)) b!190361))

(assert (= (and b!190361 (not res!87177)) b!190368))

(assert (= (and b!190368 (not res!87176)) b!190369))

(assert (= (and b!190369 res!87179) b!190395))

(assert (= (and b!190395 res!87169) b!190370))

(assert (= (and b!190369 (not res!87166)) b!190384))

(assert (= (and b!190384 (not res!87158)) b!190379))

(assert (= (and b!190379 res!87155) b!190367))

(assert (= (and b!190384 c!36396) b!190360))

(assert (= (and b!190384 (not c!36396)) b!190374))

(assert (= (and b!190384 res!87175) b!190389))

(assert (= (and b!190389 res!87163) b!190391))

(assert (= (and b!190384 res!87157) b!190364))

(assert (= (and b!190364 res!87174) b!190388))

(assert (= b!190394 b!190386))

(assert (= b!190381 b!190394))

(assert (= (and start!20514 ((_ is Cons!3203) rules!1920)) b!190381))

(assert (= b!190380 b!190359))

(assert (= b!190387 b!190380))

(assert (= start!20514 b!190387))

(assert (= b!190376 b!190375))

(assert (= b!190378 b!190376))

(assert (= b!190372 b!190378))

(assert (= (and start!20514 ((_ is Cons!3204) tokens!465)) b!190372))

(declare-fun m!195703 () Bool)

(assert (=> b!190389 m!195703))

(declare-fun m!195705 () Bool)

(assert (=> b!190392 m!195705))

(declare-fun m!195707 () Bool)

(assert (=> b!190397 m!195707))

(declare-fun m!195709 () Bool)

(assert (=> b!190387 m!195709))

(declare-fun m!195711 () Bool)

(assert (=> b!190369 m!195711))

(declare-fun m!195713 () Bool)

(assert (=> b!190369 m!195713))

(declare-fun m!195715 () Bool)

(assert (=> b!190369 m!195715))

(declare-fun m!195717 () Bool)

(assert (=> b!190364 m!195717))

(declare-fun m!195719 () Bool)

(assert (=> b!190364 m!195719))

(declare-fun m!195721 () Bool)

(assert (=> b!190395 m!195721))

(declare-fun m!195723 () Bool)

(assert (=> b!190372 m!195723))

(declare-fun m!195725 () Bool)

(assert (=> b!190383 m!195725))

(assert (=> b!190383 m!195725))

(declare-fun m!195727 () Bool)

(assert (=> b!190383 m!195727))

(declare-fun m!195729 () Bool)

(assert (=> b!190383 m!195729))

(declare-fun m!195731 () Bool)

(assert (=> b!190361 m!195731))

(assert (=> b!190361 m!195731))

(declare-fun m!195733 () Bool)

(assert (=> b!190361 m!195733))

(declare-fun m!195735 () Bool)

(assert (=> b!190361 m!195735))

(declare-fun m!195737 () Bool)

(assert (=> b!190385 m!195737))

(declare-fun m!195739 () Bool)

(assert (=> b!190371 m!195739))

(declare-fun m!195741 () Bool)

(assert (=> b!190368 m!195741))

(assert (=> b!190368 m!195741))

(declare-fun m!195743 () Bool)

(assert (=> b!190368 m!195743))

(assert (=> b!190368 m!195743))

(declare-fun m!195745 () Bool)

(assert (=> b!190368 m!195745))

(declare-fun m!195747 () Bool)

(assert (=> b!190368 m!195747))

(declare-fun m!195749 () Bool)

(assert (=> b!190370 m!195749))

(declare-fun m!195751 () Bool)

(assert (=> b!190394 m!195751))

(declare-fun m!195753 () Bool)

(assert (=> b!190394 m!195753))

(declare-fun m!195755 () Bool)

(assert (=> b!190391 m!195755))

(declare-fun m!195757 () Bool)

(assert (=> b!190378 m!195757))

(declare-fun m!195759 () Bool)

(assert (=> b!190380 m!195759))

(declare-fun m!195761 () Bool)

(assert (=> b!190380 m!195761))

(declare-fun m!195763 () Bool)

(assert (=> b!190366 m!195763))

(declare-fun m!195765 () Bool)

(assert (=> b!190384 m!195765))

(declare-fun m!195767 () Bool)

(assert (=> b!190384 m!195767))

(declare-fun m!195769 () Bool)

(assert (=> b!190384 m!195769))

(declare-fun m!195771 () Bool)

(assert (=> b!190384 m!195771))

(declare-fun m!195773 () Bool)

(assert (=> b!190384 m!195773))

(declare-fun m!195775 () Bool)

(assert (=> b!190384 m!195775))

(declare-fun m!195777 () Bool)

(assert (=> b!190384 m!195777))

(declare-fun m!195779 () Bool)

(assert (=> b!190384 m!195779))

(declare-fun m!195781 () Bool)

(assert (=> b!190384 m!195781))

(declare-fun m!195783 () Bool)

(assert (=> b!190384 m!195783))

(declare-fun m!195785 () Bool)

(assert (=> b!190384 m!195785))

(declare-fun m!195787 () Bool)

(assert (=> b!190384 m!195787))

(declare-fun m!195789 () Bool)

(assert (=> b!190384 m!195789))

(declare-fun m!195791 () Bool)

(assert (=> b!190384 m!195791))

(declare-fun m!195793 () Bool)

(assert (=> b!190384 m!195793))

(declare-fun m!195795 () Bool)

(assert (=> b!190384 m!195795))

(declare-fun m!195797 () Bool)

(assert (=> b!190384 m!195797))

(assert (=> b!190384 m!195779))

(declare-fun m!195799 () Bool)

(assert (=> b!190384 m!195799))

(declare-fun m!195801 () Bool)

(assert (=> b!190384 m!195801))

(declare-fun m!195803 () Bool)

(assert (=> b!190384 m!195803))

(declare-fun m!195805 () Bool)

(assert (=> b!190384 m!195805))

(declare-fun m!195807 () Bool)

(assert (=> b!190384 m!195807))

(declare-fun m!195809 () Bool)

(assert (=> b!190384 m!195809))

(declare-fun m!195811 () Bool)

(assert (=> b!190376 m!195811))

(declare-fun m!195813 () Bool)

(assert (=> b!190376 m!195813))

(declare-fun m!195815 () Bool)

(assert (=> start!20514 m!195815))

(declare-fun m!195817 () Bool)

(assert (=> b!190393 m!195817))

(declare-fun m!195819 () Bool)

(assert (=> b!190396 m!195819))

(declare-fun m!195821 () Bool)

(assert (=> b!190367 m!195821))

(declare-fun m!195823 () Bool)

(assert (=> b!190367 m!195823))

(declare-fun m!195825 () Bool)

(assert (=> b!190363 m!195825))

(declare-fun m!195827 () Bool)

(assert (=> b!190363 m!195827))

(declare-fun m!195829 () Bool)

(assert (=> b!190362 m!195829))

(declare-fun m!195831 () Bool)

(assert (=> b!190362 m!195831))

(declare-fun m!195833 () Bool)

(assert (=> b!190362 m!195833))

(declare-fun m!195835 () Bool)

(assert (=> b!190362 m!195835))

(declare-fun m!195837 () Bool)

(assert (=> b!190362 m!195837))

(declare-fun m!195839 () Bool)

(assert (=> b!190379 m!195839))

(assert (=> b!190379 m!195779))

(declare-fun m!195841 () Bool)

(assert (=> b!190373 m!195841))

(declare-fun m!195843 () Bool)

(assert (=> b!190373 m!195843))

(declare-fun m!195845 () Bool)

(assert (=> b!190373 m!195845))

(declare-fun m!195847 () Bool)

(assert (=> b!190373 m!195847))

(declare-fun m!195849 () Bool)

(assert (=> b!190373 m!195849))

(assert (=> b!190373 m!195845))

(declare-fun m!195851 () Bool)

(assert (=> b!190373 m!195851))

(assert (=> b!190373 m!195851))

(declare-fun m!195853 () Bool)

(assert (=> b!190373 m!195853))

(declare-fun m!195855 () Bool)

(assert (=> b!190373 m!195855))

(declare-fun m!195857 () Bool)

(assert (=> b!190373 m!195857))

(assert (=> b!190373 m!195841))

(declare-fun m!195859 () Bool)

(assert (=> b!190373 m!195859))

(declare-fun m!195861 () Bool)

(assert (=> b!190373 m!195861))

(assert (=> b!190373 m!195861))

(declare-fun m!195863 () Bool)

(assert (=> b!190373 m!195863))

(assert (=> b!190373 m!195859))

(declare-fun m!195865 () Bool)

(assert (=> b!190373 m!195865))

(declare-fun m!195867 () Bool)

(assert (=> b!190390 m!195867))

(assert (=> b!190390 m!195867))

(declare-fun m!195869 () Bool)

(assert (=> b!190390 m!195869))

(check-sat (not b!190363) b_and!13201 (not b!190367) (not b!190380) (not b!190394) (not b_next!7595) (not b!190384) (not b_next!7601) (not b!190370) (not b!190391) b_and!13197 b_and!13203 (not b_next!7599) (not b!190383) (not b!190385) (not b_next!7603) (not b_next!7593) (not b!190393) (not b!190373) b_and!13199 (not b!190392) (not b!190361) (not b!190390) (not b!190378) b_and!13207 (not b!190397) (not b!190381) (not b!190362) (not b!190396) (not b!190368) (not b!190366) (not b!190376) (not b!190372) (not b!190369) (not b!190387) (not b!190364) b_and!13205 (not b!190406) (not b_next!7597) (not b!190379) (not b!190389) (not start!20514) (not b!190395) (not b!190371))
(check-sat (not b_next!7601) b_and!13197 (not b_next!7603) (not b_next!7593) b_and!13199 b_and!13201 b_and!13207 (not b_next!7595) b_and!13205 (not b_next!7597) b_and!13203 (not b_next!7599))
