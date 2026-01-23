; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!109268 () Bool)

(assert start!109268)

(declare-fun b!1220239 () Bool)

(declare-fun b_free!29489 () Bool)

(declare-fun b_next!30193 () Bool)

(assert (=> b!1220239 (= b_free!29489 (not b_next!30193))))

(declare-fun tp!346770 () Bool)

(declare-fun b_and!83057 () Bool)

(assert (=> b!1220239 (= tp!346770 b_and!83057)))

(declare-fun b_free!29491 () Bool)

(declare-fun b_next!30195 () Bool)

(assert (=> b!1220239 (= b_free!29491 (not b_next!30195))))

(declare-fun tp!346772 () Bool)

(declare-fun b_and!83059 () Bool)

(assert (=> b!1220239 (= tp!346772 b_and!83059)))

(declare-fun b!1220243 () Bool)

(declare-fun b_free!29493 () Bool)

(declare-fun b_next!30197 () Bool)

(assert (=> b!1220243 (= b_free!29493 (not b_next!30197))))

(declare-fun tp!346773 () Bool)

(declare-fun b_and!83061 () Bool)

(assert (=> b!1220243 (= tp!346773 b_and!83061)))

(declare-fun b_free!29495 () Bool)

(declare-fun b_next!30199 () Bool)

(assert (=> b!1220243 (= b_free!29495 (not b_next!30199))))

(declare-fun tp!346777 () Bool)

(declare-fun b_and!83063 () Bool)

(assert (=> b!1220243 (= tp!346777 b_and!83063)))

(declare-fun b!1220224 () Bool)

(declare-fun e!783230 () Bool)

(declare-fun e!783226 () Bool)

(assert (=> b!1220224 (= e!783230 e!783226)))

(declare-fun res!548479 () Bool)

(assert (=> b!1220224 (=> (not res!548479) (not e!783226))))

(declare-datatypes ((List!12543 0))(
  ( (Nil!12485) (Cons!12485 (h!17886 (_ BitVec 16)) (t!113559 List!12543)) )
))
(declare-datatypes ((TokenValue!2220 0))(
  ( (FloatLiteralValue!4440 (text!15985 List!12543)) (TokenValueExt!2219 (__x!8155 Int)) (Broken!11100 (value!69904 List!12543)) (Object!2277) (End!2220) (Def!2220) (Underscore!2220) (Match!2220) (Else!2220) (Error!2220) (Case!2220) (If!2220) (Extends!2220) (Abstract!2220) (Class!2220) (Val!2220) (DelimiterValue!4440 (del!2280 List!12543)) (KeywordValue!2226 (value!69905 List!12543)) (CommentValue!4440 (value!69906 List!12543)) (WhitespaceValue!4440 (value!69907 List!12543)) (IndentationValue!2220 (value!69908 List!12543)) (String!15233) (Int32!2220) (Broken!11101 (value!69909 List!12543)) (Boolean!2221) (Unit!18730) (OperatorValue!2223 (op!2280 List!12543)) (IdentifierValue!4440 (value!69910 List!12543)) (IdentifierValue!4441 (value!69911 List!12543)) (WhitespaceValue!4441 (value!69912 List!12543)) (True!4440) (False!4440) (Broken!11102 (value!69913 List!12543)) (Broken!11103 (value!69914 List!12543)) (True!4441) (RightBrace!2220) (RightBracket!2220) (Colon!2220) (Null!2220) (Comma!2220) (LeftBracket!2220) (False!4441) (LeftBrace!2220) (ImaginaryLiteralValue!2220 (text!15986 List!12543)) (StringLiteralValue!6660 (value!69915 List!12543)) (EOFValue!2220 (value!69916 List!12543)) (IdentValue!2220 (value!69917 List!12543)) (DelimiterValue!4441 (value!69918 List!12543)) (DedentValue!2220 (value!69919 List!12543)) (NewLineValue!2220 (value!69920 List!12543)) (IntegerValue!6660 (value!69921 (_ BitVec 32)) (text!15987 List!12543)) (IntegerValue!6661 (value!69922 Int) (text!15988 List!12543)) (Times!2220) (Or!2220) (Equal!2220) (Minus!2220) (Broken!11104 (value!69923 List!12543)) (And!2220) (Div!2220) (LessEqual!2220) (Mod!2220) (Concat!5642) (Not!2220) (Plus!2220) (SpaceValue!2220 (value!69924 List!12543)) (IntegerValue!6662 (value!69925 Int) (text!15989 List!12543)) (StringLiteralValue!6661 (text!15990 List!12543)) (FloatLiteralValue!4441 (text!15991 List!12543)) (BytesLiteralValue!2220 (value!69926 List!12543)) (CommentValue!4441 (value!69927 List!12543)) (StringLiteralValue!6662 (value!69928 List!12543)) (ErrorTokenValue!2220 (msg!2281 List!12543)) )
))
(declare-datatypes ((C!7162 0))(
  ( (C!7163 (val!4111 Int)) )
))
(declare-datatypes ((List!12544 0))(
  ( (Nil!12486) (Cons!12486 (h!17887 C!7162) (t!113560 List!12544)) )
))
(declare-datatypes ((IArray!8177 0))(
  ( (IArray!8178 (innerList!4146 List!12544)) )
))
(declare-datatypes ((Conc!4086 0))(
  ( (Node!4086 (left!10758 Conc!4086) (right!11088 Conc!4086) (csize!8402 Int) (cheight!4297 Int)) (Leaf!6311 (xs!6797 IArray!8177) (csize!8403 Int)) (Empty!4086) )
))
(declare-datatypes ((BalanceConc!8104 0))(
  ( (BalanceConc!8105 (c!204002 Conc!4086)) )
))
(declare-datatypes ((String!15234 0))(
  ( (String!15235 (value!69929 String)) )
))
(declare-datatypes ((Regex!3422 0))(
  ( (ElementMatch!3422 (c!204003 C!7162)) (Concat!5643 (regOne!7356 Regex!3422) (regTwo!7356 Regex!3422)) (EmptyExpr!3422) (Star!3422 (reg!3751 Regex!3422)) (EmptyLang!3422) (Union!3422 (regOne!7357 Regex!3422) (regTwo!7357 Regex!3422)) )
))
(declare-datatypes ((TokenValueInjection!4136 0))(
  ( (TokenValueInjection!4137 (toValue!3289 Int) (toChars!3148 Int)) )
))
(declare-datatypes ((Rule!4104 0))(
  ( (Rule!4105 (regex!2152 Regex!3422) (tag!2414 String!15234) (isSeparator!2152 Bool) (transformation!2152 TokenValueInjection!4136)) )
))
(declare-datatypes ((Token!3966 0))(
  ( (Token!3967 (value!69930 TokenValue!2220) (rule!3579 Rule!4104) (size!9865 Int) (originalCharacters!2706 List!12544)) )
))
(declare-datatypes ((tuple2!12356 0))(
  ( (tuple2!12357 (_1!7025 Token!3966) (_2!7025 List!12544)) )
))
(declare-datatypes ((Option!2514 0))(
  ( (None!2513) (Some!2513 (v!20648 tuple2!12356)) )
))
(declare-fun lt!416658 () Option!2514)

(declare-fun isDefined!2150 (Option!2514) Bool)

(assert (=> b!1220224 (= res!548479 (isDefined!2150 lt!416658))))

(declare-datatypes ((LexerInterface!1847 0))(
  ( (LexerInterfaceExt!1844 (__x!8156 Int)) (Lexer!1845) )
))
(declare-fun thiss!20528 () LexerInterface!1847)

(declare-datatypes ((List!12545 0))(
  ( (Nil!12487) (Cons!12487 (h!17888 Rule!4104) (t!113561 List!12545)) )
))
(declare-fun rules!2728 () List!12545)

(declare-fun input!2346 () List!12544)

(declare-fun maxPrefix!969 (LexerInterface!1847 List!12545 List!12544) Option!2514)

(assert (=> b!1220224 (= lt!416658 (maxPrefix!969 thiss!20528 rules!2728 input!2346))))

(declare-fun b!1220225 () Bool)

(declare-fun res!548474 () Bool)

(declare-fun e!783229 () Bool)

(assert (=> b!1220225 (=> (not res!548474) (not e!783229))))

(declare-fun lt!416661 () List!12544)

(declare-fun isEmpty!7439 (List!12544) Bool)

(assert (=> b!1220225 (= res!548474 (not (isEmpty!7439 lt!416661)))))

(declare-datatypes ((List!12546 0))(
  ( (Nil!12488) (Cons!12488 (h!17889 Token!3966) (t!113562 List!12546)) )
))
(declare-fun tokens!556 () List!12546)

(declare-fun tp!346775 () Bool)

(declare-fun e!783225 () Bool)

(declare-fun e!783213 () Bool)

(declare-fun b!1220226 () Bool)

(declare-fun inv!16692 (Token!3966) Bool)

(assert (=> b!1220226 (= e!783213 (and (inv!16692 (h!17889 tokens!556)) e!783225 tp!346775))))

(declare-fun b!1220227 () Bool)

(declare-fun res!548475 () Bool)

(declare-fun e!783215 () Bool)

(assert (=> b!1220227 (=> (not res!548475) (not e!783215))))

(declare-fun rulesProduceIndividualToken!841 (LexerInterface!1847 List!12545 Token!3966) Bool)

(assert (=> b!1220227 (= res!548475 (not (rulesProduceIndividualToken!841 thiss!20528 rules!2728 (h!17889 tokens!556))))))

(declare-fun b!1220228 () Bool)

(declare-fun res!548476 () Bool)

(declare-fun e!783224 () Bool)

(assert (=> b!1220228 (=> (not res!548476) (not e!783224))))

(declare-fun rulesInvariant!1721 (LexerInterface!1847 List!12545) Bool)

(assert (=> b!1220228 (= res!548476 (rulesInvariant!1721 thiss!20528 rules!2728))))

(declare-fun b!1220229 () Bool)

(assert (=> b!1220229 (= e!783224 e!783230)))

(declare-fun res!548478 () Bool)

(assert (=> b!1220229 (=> (not res!548478) (not e!783230))))

(declare-datatypes ((tuple2!12358 0))(
  ( (tuple2!12359 (_1!7026 List!12546) (_2!7026 List!12544)) )
))
(declare-fun lt!416665 () tuple2!12358)

(assert (=> b!1220229 (= res!548478 (and (= (_1!7026 lt!416665) tokens!556) (not (is-Nil!12488 tokens!556))))))

(declare-fun lexList!477 (LexerInterface!1847 List!12545 List!12544) tuple2!12358)

(assert (=> b!1220229 (= lt!416665 (lexList!477 thiss!20528 rules!2728 input!2346))))

(declare-fun e!783221 () Bool)

(declare-fun b!1220230 () Bool)

(declare-fun e!783228 () Bool)

(declare-fun tp!346769 () Bool)

(declare-fun inv!16689 (String!15234) Bool)

(declare-fun inv!16693 (TokenValueInjection!4136) Bool)

(assert (=> b!1220230 (= e!783228 (and tp!346769 (inv!16689 (tag!2414 (rule!3579 (h!17889 tokens!556)))) (inv!16693 (transformation!2152 (rule!3579 (h!17889 tokens!556)))) e!783221))))

(declare-fun b!1220231 () Bool)

(declare-fun res!548477 () Bool)

(assert (=> b!1220231 (=> (not res!548477) (not e!783229))))

(declare-fun lt!416667 () List!12544)

(declare-fun lt!416660 () List!12546)

(declare-fun lt!416662 () tuple2!12358)

(declare-fun ++!3188 (List!12546 List!12546) List!12546)

(assert (=> b!1220231 (= res!548477 (= (lexList!477 thiss!20528 rules!2728 lt!416667) (tuple2!12359 (++!3188 lt!416660 (_1!7026 lt!416662)) (_2!7026 lt!416665))))))

(declare-fun b!1220232 () Bool)

(declare-fun e!783219 () Bool)

(assert (=> b!1220232 (= e!783219 e!783215)))

(declare-fun res!548483 () Bool)

(assert (=> b!1220232 (=> (not res!548483) (not e!783215))))

(assert (=> b!1220232 (= res!548483 (= lt!416667 input!2346))))

(declare-fun lt!416666 () tuple2!12356)

(declare-fun ++!3189 (List!12544 List!12544) List!12544)

(assert (=> b!1220232 (= lt!416667 (++!3189 lt!416661 (_2!7025 lt!416666)))))

(declare-fun b!1220233 () Bool)

(declare-fun e!783216 () Bool)

(assert (=> b!1220233 (= e!783226 e!783216)))

(declare-fun res!548472 () Bool)

(assert (=> b!1220233 (=> (not res!548472) (not e!783216))))

(assert (=> b!1220233 (= res!548472 (= (_1!7025 lt!416666) (h!17889 tokens!556)))))

(declare-fun get!4106 (Option!2514) tuple2!12356)

(assert (=> b!1220233 (= lt!416666 (get!4106 lt!416658))))

(declare-fun b!1220234 () Bool)

(declare-fun res!548481 () Bool)

(assert (=> b!1220234 (=> (not res!548481) (not e!783215))))

(declare-fun lt!416659 () List!12544)

(declare-fun matchR!1537 (Regex!3422 List!12544) Bool)

(assert (=> b!1220234 (= res!548481 (matchR!1537 (regex!2152 (rule!3579 (_1!7025 lt!416666))) lt!416659))))

(declare-fun b!1220235 () Bool)

(declare-fun e!783223 () Bool)

(assert (=> b!1220235 (= e!783216 e!783223)))

(declare-fun res!548485 () Bool)

(assert (=> b!1220235 (=> (not res!548485) (not e!783223))))

(declare-fun lt!416664 () BalanceConc!8104)

(declare-fun lt!416663 () BalanceConc!8104)

(assert (=> b!1220235 (= res!548485 (= lt!416664 lt!416663))))

(declare-fun charsOf!1156 (Token!3966) BalanceConc!8104)

(assert (=> b!1220235 (= lt!416663 (charsOf!1156 (h!17889 tokens!556)))))

(assert (=> b!1220235 (= lt!416664 (charsOf!1156 (_1!7025 lt!416666)))))

(declare-fun b!1220236 () Bool)

(assert (=> b!1220236 (= e!783229 (not (= lt!416662 (tuple2!12359 (_1!7026 lt!416662) (_2!7026 lt!416665)))))))

(declare-fun res!548480 () Bool)

(assert (=> start!109268 (=> (not res!548480) (not e!783224))))

(assert (=> start!109268 (= res!548480 (is-Lexer!1845 thiss!20528))))

(assert (=> start!109268 e!783224))

(assert (=> start!109268 true))

(declare-fun e!783231 () Bool)

(assert (=> start!109268 e!783231))

(assert (=> start!109268 e!783213))

(declare-fun e!783222 () Bool)

(assert (=> start!109268 e!783222))

(declare-fun tp!346771 () Bool)

(declare-fun b!1220237 () Bool)

(declare-fun e!783220 () Bool)

(declare-fun e!783214 () Bool)

(assert (=> b!1220237 (= e!783220 (and tp!346771 (inv!16689 (tag!2414 (h!17888 rules!2728))) (inv!16693 (transformation!2152 (h!17888 rules!2728))) e!783214))))

(declare-fun b!1220238 () Bool)

(assert (=> b!1220238 (= e!783215 e!783229)))

(declare-fun res!548482 () Bool)

(assert (=> b!1220238 (=> (not res!548482) (not e!783229))))

(declare-fun isEmpty!7440 (List!12546) Bool)

(assert (=> b!1220238 (= res!548482 (not (isEmpty!7440 lt!416660)))))

(assert (=> b!1220238 (= lt!416662 (lexList!477 thiss!20528 rules!2728 (_2!7025 lt!416666)))))

(assert (=> b!1220238 (= lt!416660 (Cons!12488 (h!17889 tokens!556) Nil!12488))))

(assert (=> b!1220239 (= e!783221 (and tp!346770 tp!346772))))

(declare-fun b!1220240 () Bool)

(declare-fun tp!346768 () Bool)

(declare-fun inv!21 (TokenValue!2220) Bool)

(assert (=> b!1220240 (= e!783225 (and (inv!21 (value!69930 (h!17889 tokens!556))) e!783228 tp!346768))))

(declare-fun b!1220241 () Bool)

(declare-fun res!548484 () Bool)

(assert (=> b!1220241 (=> (not res!548484) (not e!783224))))

(declare-fun isEmpty!7441 (List!12545) Bool)

(assert (=> b!1220241 (= res!548484 (not (isEmpty!7441 rules!2728)))))

(declare-fun b!1220242 () Bool)

(declare-fun tp!346774 () Bool)

(assert (=> b!1220242 (= e!783231 (and e!783220 tp!346774))))

(assert (=> b!1220243 (= e!783214 (and tp!346773 tp!346777))))

(declare-fun b!1220244 () Bool)

(assert (=> b!1220244 (= e!783223 e!783219)))

(declare-fun res!548473 () Bool)

(assert (=> b!1220244 (=> (not res!548473) (not e!783219))))

(assert (=> b!1220244 (= res!548473 (= lt!416659 lt!416661))))

(declare-fun list!4615 (BalanceConc!8104) List!12544)

(assert (=> b!1220244 (= lt!416661 (list!4615 lt!416663))))

(assert (=> b!1220244 (= lt!416659 (list!4615 lt!416664))))

(declare-fun b!1220245 () Bool)

(declare-fun tp_is_empty!6365 () Bool)

(declare-fun tp!346776 () Bool)

(assert (=> b!1220245 (= e!783222 (and tp_is_empty!6365 tp!346776))))

(assert (= (and start!109268 res!548480) b!1220241))

(assert (= (and b!1220241 res!548484) b!1220228))

(assert (= (and b!1220228 res!548476) b!1220229))

(assert (= (and b!1220229 res!548478) b!1220224))

(assert (= (and b!1220224 res!548479) b!1220233))

(assert (= (and b!1220233 res!548472) b!1220235))

(assert (= (and b!1220235 res!548485) b!1220244))

(assert (= (and b!1220244 res!548473) b!1220232))

(assert (= (and b!1220232 res!548483) b!1220234))

(assert (= (and b!1220234 res!548481) b!1220227))

(assert (= (and b!1220227 res!548475) b!1220238))

(assert (= (and b!1220238 res!548482) b!1220225))

(assert (= (and b!1220225 res!548474) b!1220231))

(assert (= (and b!1220231 res!548477) b!1220236))

(assert (= b!1220237 b!1220243))

(assert (= b!1220242 b!1220237))

(assert (= (and start!109268 (is-Cons!12487 rules!2728)) b!1220242))

(assert (= b!1220230 b!1220239))

(assert (= b!1220240 b!1220230))

(assert (= b!1220226 b!1220240))

(assert (= (and start!109268 (is-Cons!12488 tokens!556)) b!1220226))

(assert (= (and start!109268 (is-Cons!12486 input!2346)) b!1220245))

(declare-fun m!1393975 () Bool)

(assert (=> b!1220232 m!1393975))

(declare-fun m!1393977 () Bool)

(assert (=> b!1220234 m!1393977))

(declare-fun m!1393979 () Bool)

(assert (=> b!1220225 m!1393979))

(declare-fun m!1393981 () Bool)

(assert (=> b!1220233 m!1393981))

(declare-fun m!1393983 () Bool)

(assert (=> b!1220226 m!1393983))

(declare-fun m!1393985 () Bool)

(assert (=> b!1220235 m!1393985))

(declare-fun m!1393987 () Bool)

(assert (=> b!1220235 m!1393987))

(declare-fun m!1393989 () Bool)

(assert (=> b!1220227 m!1393989))

(declare-fun m!1393991 () Bool)

(assert (=> b!1220230 m!1393991))

(declare-fun m!1393993 () Bool)

(assert (=> b!1220230 m!1393993))

(declare-fun m!1393995 () Bool)

(assert (=> b!1220237 m!1393995))

(declare-fun m!1393997 () Bool)

(assert (=> b!1220237 m!1393997))

(declare-fun m!1393999 () Bool)

(assert (=> b!1220228 m!1393999))

(declare-fun m!1394001 () Bool)

(assert (=> b!1220244 m!1394001))

(declare-fun m!1394003 () Bool)

(assert (=> b!1220244 m!1394003))

(declare-fun m!1394005 () Bool)

(assert (=> b!1220238 m!1394005))

(declare-fun m!1394007 () Bool)

(assert (=> b!1220238 m!1394007))

(declare-fun m!1394009 () Bool)

(assert (=> b!1220229 m!1394009))

(declare-fun m!1394011 () Bool)

(assert (=> b!1220241 m!1394011))

(declare-fun m!1394013 () Bool)

(assert (=> b!1220224 m!1394013))

(declare-fun m!1394015 () Bool)

(assert (=> b!1220224 m!1394015))

(declare-fun m!1394017 () Bool)

(assert (=> b!1220231 m!1394017))

(declare-fun m!1394019 () Bool)

(assert (=> b!1220231 m!1394019))

(declare-fun m!1394021 () Bool)

(assert (=> b!1220240 m!1394021))

(push 1)

(assert (not b!1220231))

(assert (not b!1220244))

(assert (not b!1220232))

(assert (not b_next!30199))

(assert (not b!1220245))

(assert (not b!1220242))

(assert tp_is_empty!6365)

(assert (not b!1220234))

(assert (not b_next!30193))

(assert (not b_next!30197))

(assert b_and!83061)

(assert (not b!1220241))

(assert (not b!1220237))

(assert b_and!83059)

(assert (not b_next!30195))

(assert (not b!1220240))

(assert (not b!1220233))

(assert b_and!83057)

(assert (not b!1220238))

(assert (not b!1220235))

(assert (not b!1220226))

(assert (not b!1220227))

(assert (not b!1220224))

(assert (not b!1220229))

(assert (not b!1220225))

(assert (not b!1220230))

(assert (not b!1220228))

(assert b_and!83063)

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!30199))

(assert b_and!83057)

(assert (not b_next!30193))

(assert (not b_next!30197))

(assert b_and!83061)

(assert b_and!83063)

(assert b_and!83059)

(assert (not b_next!30195))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!348319 () Bool)

(assert (=> d!348319 (= (inv!16689 (tag!2414 (h!17888 rules!2728))) (= (mod (str.len (value!69929 (tag!2414 (h!17888 rules!2728)))) 2) 0))))

(assert (=> b!1220237 d!348319))

(declare-fun d!348321 () Bool)

(declare-fun res!548535 () Bool)

(declare-fun e!783291 () Bool)

(assert (=> d!348321 (=> (not res!548535) (not e!783291))))

(declare-fun semiInverseModEq!789 (Int Int) Bool)

(assert (=> d!348321 (= res!548535 (semiInverseModEq!789 (toChars!3148 (transformation!2152 (h!17888 rules!2728))) (toValue!3289 (transformation!2152 (h!17888 rules!2728)))))))

(assert (=> d!348321 (= (inv!16693 (transformation!2152 (h!17888 rules!2728))) e!783291)))

(declare-fun b!1220314 () Bool)

(declare-fun equivClasses!756 (Int Int) Bool)

(assert (=> b!1220314 (= e!783291 (equivClasses!756 (toChars!3148 (transformation!2152 (h!17888 rules!2728))) (toValue!3289 (transformation!2152 (h!17888 rules!2728)))))))

(assert (= (and d!348321 res!548535) b!1220314))

(declare-fun m!1394071 () Bool)

(assert (=> d!348321 m!1394071))

(declare-fun m!1394073 () Bool)

(assert (=> b!1220314 m!1394073))

(assert (=> b!1220237 d!348321))

(declare-fun d!348323 () Bool)

(declare-fun lt!416705 () Bool)

(declare-fun e!783311 () Bool)

(assert (=> d!348323 (= lt!416705 e!783311)))

(declare-fun res!548552 () Bool)

(assert (=> d!348323 (=> (not res!548552) (not e!783311))))

(declare-datatypes ((IArray!8181 0))(
  ( (IArray!8182 (innerList!4148 List!12546)) )
))
(declare-datatypes ((Conc!4088 0))(
  ( (Node!4088 (left!10760 Conc!4088) (right!11090 Conc!4088) (csize!8406 Int) (cheight!4299 Int)) (Leaf!6313 (xs!6799 IArray!8181) (csize!8407 Int)) (Empty!4088) )
))
(declare-datatypes ((BalanceConc!8108 0))(
  ( (BalanceConc!8109 (c!204064 Conc!4088)) )
))
(declare-fun list!4617 (BalanceConc!8108) List!12546)

(declare-datatypes ((tuple2!12364 0))(
  ( (tuple2!12365 (_1!7029 BalanceConc!8108) (_2!7029 BalanceConc!8104)) )
))
(declare-fun lex!753 (LexerInterface!1847 List!12545 BalanceConc!8104) tuple2!12364)

(declare-fun print!690 (LexerInterface!1847 BalanceConc!8108) BalanceConc!8104)

(declare-fun singletonSeq!738 (Token!3966) BalanceConc!8108)

(assert (=> d!348323 (= res!548552 (= (list!4617 (_1!7029 (lex!753 thiss!20528 rules!2728 (print!690 thiss!20528 (singletonSeq!738 (h!17889 tokens!556)))))) (list!4617 (singletonSeq!738 (h!17889 tokens!556)))))))

(declare-fun e!783312 () Bool)

(assert (=> d!348323 (= lt!416705 e!783312)))

(declare-fun res!548553 () Bool)

(assert (=> d!348323 (=> (not res!548553) (not e!783312))))

(declare-fun lt!416706 () tuple2!12364)

(declare-fun size!9867 (BalanceConc!8108) Int)

(assert (=> d!348323 (= res!548553 (= (size!9867 (_1!7029 lt!416706)) 1))))

(assert (=> d!348323 (= lt!416706 (lex!753 thiss!20528 rules!2728 (print!690 thiss!20528 (singletonSeq!738 (h!17889 tokens!556)))))))

(assert (=> d!348323 (not (isEmpty!7441 rules!2728))))

(assert (=> d!348323 (= (rulesProduceIndividualToken!841 thiss!20528 rules!2728 (h!17889 tokens!556)) lt!416705)))

(declare-fun b!1220348 () Bool)

(declare-fun res!548551 () Bool)

(assert (=> b!1220348 (=> (not res!548551) (not e!783312))))

(declare-fun apply!2666 (BalanceConc!8108 Int) Token!3966)

(assert (=> b!1220348 (= res!548551 (= (apply!2666 (_1!7029 lt!416706) 0) (h!17889 tokens!556)))))

(declare-fun b!1220349 () Bool)

(declare-fun isEmpty!7445 (BalanceConc!8104) Bool)

(assert (=> b!1220349 (= e!783312 (isEmpty!7445 (_2!7029 lt!416706)))))

(declare-fun b!1220350 () Bool)

(assert (=> b!1220350 (= e!783311 (isEmpty!7445 (_2!7029 (lex!753 thiss!20528 rules!2728 (print!690 thiss!20528 (singletonSeq!738 (h!17889 tokens!556)))))))))

(assert (= (and d!348323 res!548553) b!1220348))

(assert (= (and b!1220348 res!548551) b!1220349))

(assert (= (and d!348323 res!548552) b!1220350))

(declare-fun m!1394101 () Bool)

(assert (=> d!348323 m!1394101))

(declare-fun m!1394103 () Bool)

(assert (=> d!348323 m!1394103))

(declare-fun m!1394105 () Bool)

(assert (=> d!348323 m!1394105))

(assert (=> d!348323 m!1394101))

(declare-fun m!1394107 () Bool)

(assert (=> d!348323 m!1394107))

(declare-fun m!1394109 () Bool)

(assert (=> d!348323 m!1394109))

(assert (=> d!348323 m!1394011))

(declare-fun m!1394111 () Bool)

(assert (=> d!348323 m!1394111))

(assert (=> d!348323 m!1394101))

(assert (=> d!348323 m!1394103))

(declare-fun m!1394113 () Bool)

(assert (=> b!1220348 m!1394113))

(declare-fun m!1394115 () Bool)

(assert (=> b!1220349 m!1394115))

(assert (=> b!1220350 m!1394101))

(assert (=> b!1220350 m!1394101))

(assert (=> b!1220350 m!1394103))

(assert (=> b!1220350 m!1394103))

(assert (=> b!1220350 m!1394105))

(declare-fun m!1394117 () Bool)

(assert (=> b!1220350 m!1394117))

(assert (=> b!1220227 d!348323))

(declare-fun d!348337 () Bool)

(assert (=> d!348337 (= (isEmpty!7440 lt!416660) (is-Nil!12488 lt!416660))))

(assert (=> b!1220238 d!348337))

(declare-fun d!348339 () Bool)

(declare-fun e!783321 () Bool)

(assert (=> d!348339 e!783321))

(declare-fun c!204020 () Bool)

(declare-fun lt!416713 () tuple2!12358)

(declare-fun size!9868 (List!12546) Int)

(assert (=> d!348339 (= c!204020 (> (size!9868 (_1!7026 lt!416713)) 0))))

(declare-fun e!783319 () tuple2!12358)

(assert (=> d!348339 (= lt!416713 e!783319)))

(declare-fun c!204021 () Bool)

(declare-fun lt!416714 () Option!2514)

(assert (=> d!348339 (= c!204021 (is-Some!2513 lt!416714))))

(assert (=> d!348339 (= lt!416714 (maxPrefix!969 thiss!20528 rules!2728 (_2!7025 lt!416666)))))

(assert (=> d!348339 (= (lexList!477 thiss!20528 rules!2728 (_2!7025 lt!416666)) lt!416713)))

(declare-fun b!1220361 () Bool)

(declare-fun e!783320 () Bool)

(assert (=> b!1220361 (= e!783321 e!783320)))

(declare-fun res!548556 () Bool)

(declare-fun size!9869 (List!12544) Int)

(assert (=> b!1220361 (= res!548556 (< (size!9869 (_2!7026 lt!416713)) (size!9869 (_2!7025 lt!416666))))))

(assert (=> b!1220361 (=> (not res!548556) (not e!783320))))

(declare-fun b!1220362 () Bool)

(assert (=> b!1220362 (= e!783320 (not (isEmpty!7440 (_1!7026 lt!416713))))))

(declare-fun b!1220363 () Bool)

(assert (=> b!1220363 (= e!783319 (tuple2!12359 Nil!12488 (_2!7025 lt!416666)))))

(declare-fun b!1220364 () Bool)

(declare-fun lt!416715 () tuple2!12358)

(assert (=> b!1220364 (= e!783319 (tuple2!12359 (Cons!12488 (_1!7025 (v!20648 lt!416714)) (_1!7026 lt!416715)) (_2!7026 lt!416715)))))

(assert (=> b!1220364 (= lt!416715 (lexList!477 thiss!20528 rules!2728 (_2!7025 (v!20648 lt!416714))))))

(declare-fun b!1220365 () Bool)

(assert (=> b!1220365 (= e!783321 (= (_2!7026 lt!416713) (_2!7025 lt!416666)))))

(assert (= (and d!348339 c!204021) b!1220364))

(assert (= (and d!348339 (not c!204021)) b!1220363))

(assert (= (and d!348339 c!204020) b!1220361))

(assert (= (and d!348339 (not c!204020)) b!1220365))

(assert (= (and b!1220361 res!548556) b!1220362))

(declare-fun m!1394119 () Bool)

(assert (=> d!348339 m!1394119))

(declare-fun m!1394121 () Bool)

(assert (=> d!348339 m!1394121))

(declare-fun m!1394123 () Bool)

(assert (=> b!1220361 m!1394123))

(declare-fun m!1394125 () Bool)

(assert (=> b!1220361 m!1394125))

(declare-fun m!1394127 () Bool)

(assert (=> b!1220362 m!1394127))

(declare-fun m!1394129 () Bool)

(assert (=> b!1220364 m!1394129))

(assert (=> b!1220238 d!348339))

(declare-fun d!348341 () Bool)

(assert (=> d!348341 (= (isEmpty!7439 lt!416661) (is-Nil!12486 lt!416661))))

(assert (=> b!1220225 d!348341))

(declare-fun d!348343 () Bool)

(declare-fun res!548561 () Bool)

(declare-fun e!783324 () Bool)

(assert (=> d!348343 (=> (not res!548561) (not e!783324))))

(assert (=> d!348343 (= res!548561 (not (isEmpty!7439 (originalCharacters!2706 (h!17889 tokens!556)))))))

(assert (=> d!348343 (= (inv!16692 (h!17889 tokens!556)) e!783324)))

(declare-fun b!1220370 () Bool)

(declare-fun res!548562 () Bool)

(assert (=> b!1220370 (=> (not res!548562) (not e!783324))))

(declare-fun dynLambda!5452 (Int TokenValue!2220) BalanceConc!8104)

(assert (=> b!1220370 (= res!548562 (= (originalCharacters!2706 (h!17889 tokens!556)) (list!4615 (dynLambda!5452 (toChars!3148 (transformation!2152 (rule!3579 (h!17889 tokens!556)))) (value!69930 (h!17889 tokens!556))))))))

(declare-fun b!1220371 () Bool)

(assert (=> b!1220371 (= e!783324 (= (size!9865 (h!17889 tokens!556)) (size!9869 (originalCharacters!2706 (h!17889 tokens!556)))))))

(assert (= (and d!348343 res!548561) b!1220370))

(assert (= (and b!1220370 res!548562) b!1220371))

(declare-fun b_lambda!35999 () Bool)

(assert (=> (not b_lambda!35999) (not b!1220370)))

(declare-fun t!113569 () Bool)

(declare-fun tb!67081 () Bool)

(assert (=> (and b!1220239 (= (toChars!3148 (transformation!2152 (rule!3579 (h!17889 tokens!556)))) (toChars!3148 (transformation!2152 (rule!3579 (h!17889 tokens!556))))) t!113569) tb!67081))

(declare-fun b!1220376 () Bool)

(declare-fun e!783327 () Bool)

(declare-fun tp!346810 () Bool)

(declare-fun inv!16696 (Conc!4086) Bool)

(assert (=> b!1220376 (= e!783327 (and (inv!16696 (c!204002 (dynLambda!5452 (toChars!3148 (transformation!2152 (rule!3579 (h!17889 tokens!556)))) (value!69930 (h!17889 tokens!556))))) tp!346810))))

(declare-fun result!81252 () Bool)

(declare-fun inv!16697 (BalanceConc!8104) Bool)

(assert (=> tb!67081 (= result!81252 (and (inv!16697 (dynLambda!5452 (toChars!3148 (transformation!2152 (rule!3579 (h!17889 tokens!556)))) (value!69930 (h!17889 tokens!556)))) e!783327))))

(assert (= tb!67081 b!1220376))

(declare-fun m!1394131 () Bool)

(assert (=> b!1220376 m!1394131))

(declare-fun m!1394133 () Bool)

(assert (=> tb!67081 m!1394133))

(assert (=> b!1220370 t!113569))

(declare-fun b_and!83073 () Bool)

(assert (= b_and!83059 (and (=> t!113569 result!81252) b_and!83073)))

(declare-fun tb!67083 () Bool)

(declare-fun t!113571 () Bool)

(assert (=> (and b!1220243 (= (toChars!3148 (transformation!2152 (h!17888 rules!2728))) (toChars!3148 (transformation!2152 (rule!3579 (h!17889 tokens!556))))) t!113571) tb!67083))

(declare-fun result!81256 () Bool)

(assert (= result!81256 result!81252))

(assert (=> b!1220370 t!113571))

(declare-fun b_and!83075 () Bool)

(assert (= b_and!83063 (and (=> t!113571 result!81256) b_and!83075)))

(declare-fun m!1394135 () Bool)

(assert (=> d!348343 m!1394135))

(declare-fun m!1394137 () Bool)

(assert (=> b!1220370 m!1394137))

(assert (=> b!1220370 m!1394137))

(declare-fun m!1394139 () Bool)

(assert (=> b!1220370 m!1394139))

(declare-fun m!1394141 () Bool)

(assert (=> b!1220371 m!1394141))

(assert (=> b!1220226 d!348343))

(declare-fun d!348345 () Bool)

(declare-fun e!783330 () Bool)

(assert (=> d!348345 e!783330))

(declare-fun c!204022 () Bool)

(declare-fun lt!416716 () tuple2!12358)

(assert (=> d!348345 (= c!204022 (> (size!9868 (_1!7026 lt!416716)) 0))))

(declare-fun e!783328 () tuple2!12358)

(assert (=> d!348345 (= lt!416716 e!783328)))

(declare-fun c!204023 () Bool)

(declare-fun lt!416717 () Option!2514)

(assert (=> d!348345 (= c!204023 (is-Some!2513 lt!416717))))

(assert (=> d!348345 (= lt!416717 (maxPrefix!969 thiss!20528 rules!2728 input!2346))))

(assert (=> d!348345 (= (lexList!477 thiss!20528 rules!2728 input!2346) lt!416716)))

(declare-fun b!1220377 () Bool)

(declare-fun e!783329 () Bool)

(assert (=> b!1220377 (= e!783330 e!783329)))

(declare-fun res!548563 () Bool)

(assert (=> b!1220377 (= res!548563 (< (size!9869 (_2!7026 lt!416716)) (size!9869 input!2346)))))

(assert (=> b!1220377 (=> (not res!548563) (not e!783329))))

(declare-fun b!1220378 () Bool)

(assert (=> b!1220378 (= e!783329 (not (isEmpty!7440 (_1!7026 lt!416716))))))

(declare-fun b!1220379 () Bool)

(assert (=> b!1220379 (= e!783328 (tuple2!12359 Nil!12488 input!2346))))

(declare-fun b!1220380 () Bool)

(declare-fun lt!416718 () tuple2!12358)

(assert (=> b!1220380 (= e!783328 (tuple2!12359 (Cons!12488 (_1!7025 (v!20648 lt!416717)) (_1!7026 lt!416718)) (_2!7026 lt!416718)))))

(assert (=> b!1220380 (= lt!416718 (lexList!477 thiss!20528 rules!2728 (_2!7025 (v!20648 lt!416717))))))

(declare-fun b!1220381 () Bool)

(assert (=> b!1220381 (= e!783330 (= (_2!7026 lt!416716) input!2346))))

(assert (= (and d!348345 c!204023) b!1220380))

(assert (= (and d!348345 (not c!204023)) b!1220379))

(assert (= (and d!348345 c!204022) b!1220377))

(assert (= (and d!348345 (not c!204022)) b!1220381))

(assert (= (and b!1220377 res!548563) b!1220378))

(declare-fun m!1394143 () Bool)

(assert (=> d!348345 m!1394143))

(assert (=> d!348345 m!1394015))

(declare-fun m!1394145 () Bool)

(assert (=> b!1220377 m!1394145))

(declare-fun m!1394147 () Bool)

(assert (=> b!1220377 m!1394147))

(declare-fun m!1394149 () Bool)

(assert (=> b!1220378 m!1394149))

(declare-fun m!1394151 () Bool)

(assert (=> b!1220380 m!1394151))

(assert (=> b!1220229 d!348345))

(declare-fun b!1220392 () Bool)

(declare-fun e!783339 () Bool)

(declare-fun e!783338 () Bool)

(assert (=> b!1220392 (= e!783339 e!783338)))

(declare-fun c!204028 () Bool)

(assert (=> b!1220392 (= c!204028 (is-IntegerValue!6661 (value!69930 (h!17889 tokens!556))))))

(declare-fun d!348347 () Bool)

(declare-fun c!204029 () Bool)

(assert (=> d!348347 (= c!204029 (is-IntegerValue!6660 (value!69930 (h!17889 tokens!556))))))

(assert (=> d!348347 (= (inv!21 (value!69930 (h!17889 tokens!556))) e!783339)))

(declare-fun b!1220393 () Bool)

(declare-fun e!783337 () Bool)

(declare-fun inv!15 (TokenValue!2220) Bool)

(assert (=> b!1220393 (= e!783337 (inv!15 (value!69930 (h!17889 tokens!556))))))

(declare-fun b!1220394 () Bool)

(declare-fun inv!17 (TokenValue!2220) Bool)

(assert (=> b!1220394 (= e!783338 (inv!17 (value!69930 (h!17889 tokens!556))))))

(declare-fun b!1220395 () Bool)

(declare-fun inv!16 (TokenValue!2220) Bool)

(assert (=> b!1220395 (= e!783339 (inv!16 (value!69930 (h!17889 tokens!556))))))

(declare-fun b!1220396 () Bool)

(declare-fun res!548566 () Bool)

(assert (=> b!1220396 (=> res!548566 e!783337)))

(assert (=> b!1220396 (= res!548566 (not (is-IntegerValue!6662 (value!69930 (h!17889 tokens!556)))))))

(assert (=> b!1220396 (= e!783338 e!783337)))

(assert (= (and d!348347 c!204029) b!1220395))

(assert (= (and d!348347 (not c!204029)) b!1220392))

(assert (= (and b!1220392 c!204028) b!1220394))

(assert (= (and b!1220392 (not c!204028)) b!1220396))

(assert (= (and b!1220396 (not res!548566)) b!1220393))

(declare-fun m!1394153 () Bool)

(assert (=> b!1220393 m!1394153))

(declare-fun m!1394155 () Bool)

(assert (=> b!1220394 m!1394155))

(declare-fun m!1394157 () Bool)

(assert (=> b!1220395 m!1394157))

(assert (=> b!1220240 d!348347))

(declare-fun d!348349 () Bool)

(assert (=> d!348349 (= (inv!16689 (tag!2414 (rule!3579 (h!17889 tokens!556)))) (= (mod (str.len (value!69929 (tag!2414 (rule!3579 (h!17889 tokens!556))))) 2) 0))))

(assert (=> b!1220230 d!348349))

(declare-fun d!348351 () Bool)

(declare-fun res!548567 () Bool)

(declare-fun e!783340 () Bool)

(assert (=> d!348351 (=> (not res!548567) (not e!783340))))

(assert (=> d!348351 (= res!548567 (semiInverseModEq!789 (toChars!3148 (transformation!2152 (rule!3579 (h!17889 tokens!556)))) (toValue!3289 (transformation!2152 (rule!3579 (h!17889 tokens!556))))))))

(assert (=> d!348351 (= (inv!16693 (transformation!2152 (rule!3579 (h!17889 tokens!556)))) e!783340)))

(declare-fun b!1220397 () Bool)

(assert (=> b!1220397 (= e!783340 (equivClasses!756 (toChars!3148 (transformation!2152 (rule!3579 (h!17889 tokens!556)))) (toValue!3289 (transformation!2152 (rule!3579 (h!17889 tokens!556))))))))

(assert (= (and d!348351 res!548567) b!1220397))

(declare-fun m!1394159 () Bool)

(assert (=> d!348351 m!1394159))

(declare-fun m!1394161 () Bool)

(assert (=> b!1220397 m!1394161))

(assert (=> b!1220230 d!348351))

(declare-fun d!348353 () Bool)

(declare-fun res!548570 () Bool)

(declare-fun e!783345 () Bool)

(assert (=> d!348353 (=> (not res!548570) (not e!783345))))

(declare-fun rulesValid!776 (LexerInterface!1847 List!12545) Bool)

(assert (=> d!348353 (= res!548570 (rulesValid!776 thiss!20528 rules!2728))))

(assert (=> d!348353 (= (rulesInvariant!1721 thiss!20528 rules!2728) e!783345)))

(declare-fun b!1220404 () Bool)

(declare-datatypes ((List!12551 0))(
  ( (Nil!12493) (Cons!12493 (h!17894 String!15234) (t!113584 List!12551)) )
))
(declare-fun noDuplicateTag!776 (LexerInterface!1847 List!12545 List!12551) Bool)

(assert (=> b!1220404 (= e!783345 (noDuplicateTag!776 thiss!20528 rules!2728 Nil!12493))))

(assert (= (and d!348353 res!548570) b!1220404))

(declare-fun m!1394163 () Bool)

(assert (=> d!348353 m!1394163))

(declare-fun m!1394165 () Bool)

(assert (=> b!1220404 m!1394165))

(assert (=> b!1220228 d!348353))

(declare-fun b!1220429 () Bool)

(declare-fun res!548590 () Bool)

(declare-fun e!783354 () Bool)

(assert (=> b!1220429 (=> (not res!548590) (not e!783354))))

(declare-fun lt!416731 () List!12544)

(assert (=> b!1220429 (= res!548590 (= (size!9869 lt!416731) (+ (size!9869 lt!416661) (size!9869 (_2!7025 lt!416666)))))))

(declare-fun b!1220428 () Bool)

(declare-fun e!783355 () List!12544)

(assert (=> b!1220428 (= e!783355 (Cons!12486 (h!17887 lt!416661) (++!3189 (t!113560 lt!416661) (_2!7025 lt!416666))))))

(declare-fun b!1220430 () Bool)

(assert (=> b!1220430 (= e!783354 (or (not (= (_2!7025 lt!416666) Nil!12486)) (= lt!416731 lt!416661)))))

(declare-fun b!1220427 () Bool)

(assert (=> b!1220427 (= e!783355 (_2!7025 lt!416666))))

(declare-fun d!348355 () Bool)

(assert (=> d!348355 e!783354))

(declare-fun res!548589 () Bool)

(assert (=> d!348355 (=> (not res!548589) (not e!783354))))

(declare-fun content!1777 (List!12544) (Set C!7162))

(assert (=> d!348355 (= res!548589 (= (content!1777 lt!416731) (set.union (content!1777 lt!416661) (content!1777 (_2!7025 lt!416666)))))))

(assert (=> d!348355 (= lt!416731 e!783355)))

(declare-fun c!204034 () Bool)

(assert (=> d!348355 (= c!204034 (is-Nil!12486 lt!416661))))

(assert (=> d!348355 (= (++!3189 lt!416661 (_2!7025 lt!416666)) lt!416731)))

(assert (= (and d!348355 c!204034) b!1220427))

(assert (= (and d!348355 (not c!204034)) b!1220428))

(assert (= (and d!348355 res!548589) b!1220429))

(assert (= (and b!1220429 res!548590) b!1220430))

(declare-fun m!1394167 () Bool)

(assert (=> b!1220429 m!1394167))

(declare-fun m!1394169 () Bool)

(assert (=> b!1220429 m!1394169))

(assert (=> b!1220429 m!1394125))

(declare-fun m!1394171 () Bool)

(assert (=> b!1220428 m!1394171))

(declare-fun m!1394173 () Bool)

(assert (=> d!348355 m!1394173))

(declare-fun m!1394175 () Bool)

(assert (=> d!348355 m!1394175))

(declare-fun m!1394177 () Bool)

(assert (=> d!348355 m!1394177))

(assert (=> b!1220232 d!348355))

(declare-fun d!348357 () Bool)

(assert (=> d!348357 (= (isEmpty!7441 rules!2728) (is-Nil!12487 rules!2728))))

(assert (=> b!1220241 d!348357))

(declare-fun d!348359 () Bool)

(declare-fun e!783358 () Bool)

(assert (=> d!348359 e!783358))

(declare-fun c!204035 () Bool)

(declare-fun lt!416732 () tuple2!12358)

(assert (=> d!348359 (= c!204035 (> (size!9868 (_1!7026 lt!416732)) 0))))

(declare-fun e!783356 () tuple2!12358)

(assert (=> d!348359 (= lt!416732 e!783356)))

(declare-fun c!204036 () Bool)

(declare-fun lt!416733 () Option!2514)

(assert (=> d!348359 (= c!204036 (is-Some!2513 lt!416733))))

(assert (=> d!348359 (= lt!416733 (maxPrefix!969 thiss!20528 rules!2728 lt!416667))))

(assert (=> d!348359 (= (lexList!477 thiss!20528 rules!2728 lt!416667) lt!416732)))

(declare-fun b!1220431 () Bool)

(declare-fun e!783357 () Bool)

(assert (=> b!1220431 (= e!783358 e!783357)))

(declare-fun res!548591 () Bool)

(assert (=> b!1220431 (= res!548591 (< (size!9869 (_2!7026 lt!416732)) (size!9869 lt!416667)))))

(assert (=> b!1220431 (=> (not res!548591) (not e!783357))))

(declare-fun b!1220432 () Bool)

(assert (=> b!1220432 (= e!783357 (not (isEmpty!7440 (_1!7026 lt!416732))))))

(declare-fun b!1220433 () Bool)

(assert (=> b!1220433 (= e!783356 (tuple2!12359 Nil!12488 lt!416667))))

(declare-fun b!1220434 () Bool)

(declare-fun lt!416734 () tuple2!12358)

(assert (=> b!1220434 (= e!783356 (tuple2!12359 (Cons!12488 (_1!7025 (v!20648 lt!416733)) (_1!7026 lt!416734)) (_2!7026 lt!416734)))))

(assert (=> b!1220434 (= lt!416734 (lexList!477 thiss!20528 rules!2728 (_2!7025 (v!20648 lt!416733))))))

(declare-fun b!1220435 () Bool)

(assert (=> b!1220435 (= e!783358 (= (_2!7026 lt!416732) lt!416667))))

(assert (= (and d!348359 c!204036) b!1220434))

(assert (= (and d!348359 (not c!204036)) b!1220433))

(assert (= (and d!348359 c!204035) b!1220431))

(assert (= (and d!348359 (not c!204035)) b!1220435))

(assert (= (and b!1220431 res!548591) b!1220432))

(declare-fun m!1394179 () Bool)

(assert (=> d!348359 m!1394179))

(declare-fun m!1394181 () Bool)

(assert (=> d!348359 m!1394181))

(declare-fun m!1394183 () Bool)

(assert (=> b!1220431 m!1394183))

(declare-fun m!1394185 () Bool)

(assert (=> b!1220431 m!1394185))

(declare-fun m!1394187 () Bool)

(assert (=> b!1220432 m!1394187))

(declare-fun m!1394189 () Bool)

(assert (=> b!1220434 m!1394189))

(assert (=> b!1220231 d!348359))

(declare-fun b!1220444 () Bool)

(declare-fun e!783364 () List!12546)

(assert (=> b!1220444 (= e!783364 (_1!7026 lt!416662))))

(declare-fun d!348361 () Bool)

(declare-fun e!783363 () Bool)

(assert (=> d!348361 e!783363))

(declare-fun res!548597 () Bool)

(assert (=> d!348361 (=> (not res!548597) (not e!783363))))

(declare-fun lt!416737 () List!12546)

(declare-fun content!1778 (List!12546) (Set Token!3966))

(assert (=> d!348361 (= res!548597 (= (content!1778 lt!416737) (set.union (content!1778 lt!416660) (content!1778 (_1!7026 lt!416662)))))))

(assert (=> d!348361 (= lt!416737 e!783364)))

(declare-fun c!204039 () Bool)

(assert (=> d!348361 (= c!204039 (is-Nil!12488 lt!416660))))

(assert (=> d!348361 (= (++!3188 lt!416660 (_1!7026 lt!416662)) lt!416737)))

(declare-fun b!1220445 () Bool)

(assert (=> b!1220445 (= e!783364 (Cons!12488 (h!17889 lt!416660) (++!3188 (t!113562 lt!416660) (_1!7026 lt!416662))))))

(declare-fun b!1220446 () Bool)

(declare-fun res!548596 () Bool)

(assert (=> b!1220446 (=> (not res!548596) (not e!783363))))

(assert (=> b!1220446 (= res!548596 (= (size!9868 lt!416737) (+ (size!9868 lt!416660) (size!9868 (_1!7026 lt!416662)))))))

(declare-fun b!1220447 () Bool)

(assert (=> b!1220447 (= e!783363 (or (not (= (_1!7026 lt!416662) Nil!12488)) (= lt!416737 lt!416660)))))

(assert (= (and d!348361 c!204039) b!1220444))

(assert (= (and d!348361 (not c!204039)) b!1220445))

(assert (= (and d!348361 res!548597) b!1220446))

(assert (= (and b!1220446 res!548596) b!1220447))

(declare-fun m!1394191 () Bool)

(assert (=> d!348361 m!1394191))

(declare-fun m!1394193 () Bool)

(assert (=> d!348361 m!1394193))

(declare-fun m!1394195 () Bool)

(assert (=> d!348361 m!1394195))

(declare-fun m!1394197 () Bool)

(assert (=> b!1220445 m!1394197))

(declare-fun m!1394199 () Bool)

(assert (=> b!1220446 m!1394199))

(declare-fun m!1394201 () Bool)

(assert (=> b!1220446 m!1394201))

(declare-fun m!1394203 () Bool)

(assert (=> b!1220446 m!1394203))

(assert (=> b!1220231 d!348361))

(declare-fun d!348363 () Bool)

(declare-fun isEmpty!7446 (Option!2514) Bool)

(assert (=> d!348363 (= (isDefined!2150 lt!416658) (not (isEmpty!7446 lt!416658)))))

(declare-fun bs!288938 () Bool)

(assert (= bs!288938 d!348363))

(declare-fun m!1394205 () Bool)

(assert (=> bs!288938 m!1394205))

(assert (=> b!1220224 d!348363))

(declare-fun b!1220503 () Bool)

(declare-fun res!548636 () Bool)

(declare-fun e!783388 () Bool)

(assert (=> b!1220503 (=> (not res!548636) (not e!783388))))

(declare-fun lt!416758 () Option!2514)

(assert (=> b!1220503 (= res!548636 (= (++!3189 (list!4615 (charsOf!1156 (_1!7025 (get!4106 lt!416758)))) (_2!7025 (get!4106 lt!416758))) input!2346))))

(declare-fun b!1220504 () Bool)

(declare-fun res!548639 () Bool)

(assert (=> b!1220504 (=> (not res!548639) (not e!783388))))

(declare-fun apply!2667 (TokenValueInjection!4136 BalanceConc!8104) TokenValue!2220)

(declare-fun seqFromList!1562 (List!12544) BalanceConc!8104)

(assert (=> b!1220504 (= res!548639 (= (value!69930 (_1!7025 (get!4106 lt!416758))) (apply!2667 (transformation!2152 (rule!3579 (_1!7025 (get!4106 lt!416758)))) (seqFromList!1562 (originalCharacters!2706 (_1!7025 (get!4106 lt!416758)))))))))

(declare-fun b!1220505 () Bool)

(declare-fun res!548640 () Bool)

(assert (=> b!1220505 (=> (not res!548640) (not e!783388))))

(assert (=> b!1220505 (= res!548640 (= (list!4615 (charsOf!1156 (_1!7025 (get!4106 lt!416758)))) (originalCharacters!2706 (_1!7025 (get!4106 lt!416758)))))))

(declare-fun b!1220506 () Bool)

(declare-fun contains!2094 (List!12545 Rule!4104) Bool)

(assert (=> b!1220506 (= e!783388 (contains!2094 rules!2728 (rule!3579 (_1!7025 (get!4106 lt!416758)))))))

(declare-fun b!1220507 () Bool)

(declare-fun e!783390 () Bool)

(assert (=> b!1220507 (= e!783390 e!783388)))

(declare-fun res!548641 () Bool)

(assert (=> b!1220507 (=> (not res!548641) (not e!783388))))

(assert (=> b!1220507 (= res!548641 (isDefined!2150 lt!416758))))

(declare-fun b!1220508 () Bool)

(declare-fun res!548638 () Bool)

(assert (=> b!1220508 (=> (not res!548638) (not e!783388))))

(assert (=> b!1220508 (= res!548638 (< (size!9869 (_2!7025 (get!4106 lt!416758))) (size!9869 input!2346)))))

(declare-fun b!1220509 () Bool)

(declare-fun e!783389 () Option!2514)

(declare-fun lt!416757 () Option!2514)

(declare-fun lt!416755 () Option!2514)

(assert (=> b!1220509 (= e!783389 (ite (and (is-None!2513 lt!416757) (is-None!2513 lt!416755)) None!2513 (ite (is-None!2513 lt!416755) lt!416757 (ite (is-None!2513 lt!416757) lt!416755 (ite (>= (size!9865 (_1!7025 (v!20648 lt!416757))) (size!9865 (_1!7025 (v!20648 lt!416755)))) lt!416757 lt!416755)))))))

(declare-fun call!84675 () Option!2514)

(assert (=> b!1220509 (= lt!416757 call!84675)))

(assert (=> b!1220509 (= lt!416755 (maxPrefix!969 thiss!20528 (t!113561 rules!2728) input!2346))))

(declare-fun b!1220510 () Bool)

(assert (=> b!1220510 (= e!783389 call!84675)))

(declare-fun b!1220511 () Bool)

(declare-fun res!548637 () Bool)

(assert (=> b!1220511 (=> (not res!548637) (not e!783388))))

(assert (=> b!1220511 (= res!548637 (matchR!1537 (regex!2152 (rule!3579 (_1!7025 (get!4106 lt!416758)))) (list!4615 (charsOf!1156 (_1!7025 (get!4106 lt!416758))))))))

(declare-fun d!348365 () Bool)

(assert (=> d!348365 e!783390))

(declare-fun res!548635 () Bool)

(assert (=> d!348365 (=> res!548635 e!783390)))

(assert (=> d!348365 (= res!548635 (isEmpty!7446 lt!416758))))

(assert (=> d!348365 (= lt!416758 e!783389)))

(declare-fun c!204049 () Bool)

(assert (=> d!348365 (= c!204049 (and (is-Cons!12487 rules!2728) (is-Nil!12487 (t!113561 rules!2728))))))

(declare-datatypes ((Unit!18732 0))(
  ( (Unit!18733) )
))
(declare-fun lt!416756 () Unit!18732)

(declare-fun lt!416759 () Unit!18732)

(assert (=> d!348365 (= lt!416756 lt!416759)))

(declare-fun isPrefix!1039 (List!12544 List!12544) Bool)

(assert (=> d!348365 (isPrefix!1039 input!2346 input!2346)))

(declare-fun lemmaIsPrefixRefl!732 (List!12544 List!12544) Unit!18732)

(assert (=> d!348365 (= lt!416759 (lemmaIsPrefixRefl!732 input!2346 input!2346))))

(declare-fun rulesValidInductive!675 (LexerInterface!1847 List!12545) Bool)

(assert (=> d!348365 (rulesValidInductive!675 thiss!20528 rules!2728)))

(assert (=> d!348365 (= (maxPrefix!969 thiss!20528 rules!2728 input!2346) lt!416758)))

(declare-fun bm!84670 () Bool)

(declare-fun maxPrefixOneRule!558 (LexerInterface!1847 Rule!4104 List!12544) Option!2514)

(assert (=> bm!84670 (= call!84675 (maxPrefixOneRule!558 thiss!20528 (h!17888 rules!2728) input!2346))))

(assert (= (and d!348365 c!204049) b!1220510))

(assert (= (and d!348365 (not c!204049)) b!1220509))

(assert (= (or b!1220510 b!1220509) bm!84670))

(assert (= (and d!348365 (not res!548635)) b!1220507))

(assert (= (and b!1220507 res!548641) b!1220505))

(assert (= (and b!1220505 res!548640) b!1220508))

(assert (= (and b!1220508 res!548638) b!1220503))

(assert (= (and b!1220503 res!548636) b!1220504))

(assert (= (and b!1220504 res!548639) b!1220511))

(assert (= (and b!1220511 res!548637) b!1220506))

(declare-fun m!1394241 () Bool)

(assert (=> d!348365 m!1394241))

(declare-fun m!1394243 () Bool)

(assert (=> d!348365 m!1394243))

(declare-fun m!1394245 () Bool)

(assert (=> d!348365 m!1394245))

(declare-fun m!1394247 () Bool)

(assert (=> d!348365 m!1394247))

(declare-fun m!1394249 () Bool)

(assert (=> b!1220508 m!1394249))

(declare-fun m!1394251 () Bool)

(assert (=> b!1220508 m!1394251))

(assert (=> b!1220508 m!1394147))

(declare-fun m!1394253 () Bool)

(assert (=> bm!84670 m!1394253))

(assert (=> b!1220506 m!1394249))

(declare-fun m!1394255 () Bool)

(assert (=> b!1220506 m!1394255))

(assert (=> b!1220503 m!1394249))

(declare-fun m!1394257 () Bool)

(assert (=> b!1220503 m!1394257))

(assert (=> b!1220503 m!1394257))

(declare-fun m!1394259 () Bool)

(assert (=> b!1220503 m!1394259))

(assert (=> b!1220503 m!1394259))

(declare-fun m!1394261 () Bool)

(assert (=> b!1220503 m!1394261))

(assert (=> b!1220504 m!1394249))

(declare-fun m!1394263 () Bool)

(assert (=> b!1220504 m!1394263))

(assert (=> b!1220504 m!1394263))

(declare-fun m!1394265 () Bool)

(assert (=> b!1220504 m!1394265))

(declare-fun m!1394267 () Bool)

(assert (=> b!1220507 m!1394267))

(assert (=> b!1220505 m!1394249))

(assert (=> b!1220505 m!1394257))

(assert (=> b!1220505 m!1394257))

(assert (=> b!1220505 m!1394259))

(declare-fun m!1394269 () Bool)

(assert (=> b!1220509 m!1394269))

(assert (=> b!1220511 m!1394249))

(assert (=> b!1220511 m!1394257))

(assert (=> b!1220511 m!1394257))

(assert (=> b!1220511 m!1394259))

(assert (=> b!1220511 m!1394259))

(declare-fun m!1394271 () Bool)

(assert (=> b!1220511 m!1394271))

(assert (=> b!1220224 d!348365))

(declare-fun d!348369 () Bool)

(declare-fun lt!416762 () BalanceConc!8104)

(assert (=> d!348369 (= (list!4615 lt!416762) (originalCharacters!2706 (h!17889 tokens!556)))))

(assert (=> d!348369 (= lt!416762 (dynLambda!5452 (toChars!3148 (transformation!2152 (rule!3579 (h!17889 tokens!556)))) (value!69930 (h!17889 tokens!556))))))

(assert (=> d!348369 (= (charsOf!1156 (h!17889 tokens!556)) lt!416762)))

(declare-fun b_lambda!36001 () Bool)

(assert (=> (not b_lambda!36001) (not d!348369)))

(assert (=> d!348369 t!113569))

(declare-fun b_and!83077 () Bool)

(assert (= b_and!83073 (and (=> t!113569 result!81252) b_and!83077)))

(assert (=> d!348369 t!113571))

(declare-fun b_and!83079 () Bool)

(assert (= b_and!83075 (and (=> t!113571 result!81256) b_and!83079)))

(declare-fun m!1394273 () Bool)

(assert (=> d!348369 m!1394273))

(assert (=> d!348369 m!1394137))

(assert (=> b!1220235 d!348369))

(declare-fun d!348371 () Bool)

(declare-fun lt!416763 () BalanceConc!8104)

(assert (=> d!348371 (= (list!4615 lt!416763) (originalCharacters!2706 (_1!7025 lt!416666)))))

(assert (=> d!348371 (= lt!416763 (dynLambda!5452 (toChars!3148 (transformation!2152 (rule!3579 (_1!7025 lt!416666)))) (value!69930 (_1!7025 lt!416666))))))

(assert (=> d!348371 (= (charsOf!1156 (_1!7025 lt!416666)) lt!416763)))

(declare-fun b_lambda!36003 () Bool)

(assert (=> (not b_lambda!36003) (not d!348371)))

(declare-fun tb!67085 () Bool)

(declare-fun t!113573 () Bool)

(assert (=> (and b!1220239 (= (toChars!3148 (transformation!2152 (rule!3579 (h!17889 tokens!556)))) (toChars!3148 (transformation!2152 (rule!3579 (_1!7025 lt!416666))))) t!113573) tb!67085))

(declare-fun b!1220512 () Bool)

(declare-fun e!783391 () Bool)

(declare-fun tp!346811 () Bool)

(assert (=> b!1220512 (= e!783391 (and (inv!16696 (c!204002 (dynLambda!5452 (toChars!3148 (transformation!2152 (rule!3579 (_1!7025 lt!416666)))) (value!69930 (_1!7025 lt!416666))))) tp!346811))))

(declare-fun result!81258 () Bool)

(assert (=> tb!67085 (= result!81258 (and (inv!16697 (dynLambda!5452 (toChars!3148 (transformation!2152 (rule!3579 (_1!7025 lt!416666)))) (value!69930 (_1!7025 lt!416666)))) e!783391))))

(assert (= tb!67085 b!1220512))

(declare-fun m!1394275 () Bool)

(assert (=> b!1220512 m!1394275))

(declare-fun m!1394277 () Bool)

(assert (=> tb!67085 m!1394277))

(assert (=> d!348371 t!113573))

(declare-fun b_and!83081 () Bool)

(assert (= b_and!83077 (and (=> t!113573 result!81258) b_and!83081)))

(declare-fun t!113575 () Bool)

(declare-fun tb!67087 () Bool)

(assert (=> (and b!1220243 (= (toChars!3148 (transformation!2152 (h!17888 rules!2728))) (toChars!3148 (transformation!2152 (rule!3579 (_1!7025 lt!416666))))) t!113575) tb!67087))

(declare-fun result!81260 () Bool)

(assert (= result!81260 result!81258))

(assert (=> d!348371 t!113575))

(declare-fun b_and!83083 () Bool)

(assert (= b_and!83079 (and (=> t!113575 result!81260) b_and!83083)))

(declare-fun m!1394279 () Bool)

(assert (=> d!348371 m!1394279))

(declare-fun m!1394281 () Bool)

(assert (=> d!348371 m!1394281))

(assert (=> b!1220235 d!348371))

(declare-fun d!348373 () Bool)

(assert (=> d!348373 (= (get!4106 lt!416658) (v!20648 lt!416658))))

(assert (=> b!1220233 d!348373))

(declare-fun d!348375 () Bool)

(declare-fun list!4618 (Conc!4086) List!12544)

(assert (=> d!348375 (= (list!4615 lt!416663) (list!4618 (c!204002 lt!416663)))))

(declare-fun bs!288939 () Bool)

(assert (= bs!288939 d!348375))

(declare-fun m!1394283 () Bool)

(assert (=> bs!288939 m!1394283))

(assert (=> b!1220244 d!348375))

(declare-fun d!348377 () Bool)

(assert (=> d!348377 (= (list!4615 lt!416664) (list!4618 (c!204002 lt!416664)))))

(declare-fun bs!288940 () Bool)

(assert (= bs!288940 d!348377))

(declare-fun m!1394285 () Bool)

(assert (=> bs!288940 m!1394285))

(assert (=> b!1220244 d!348377))

(declare-fun b!1220555 () Bool)

(declare-fun e!783413 () Bool)

(declare-fun nullable!1061 (Regex!3422) Bool)

(assert (=> b!1220555 (= e!783413 (nullable!1061 (regex!2152 (rule!3579 (_1!7025 lt!416666)))))))

(declare-fun b!1220556 () Bool)

(declare-fun e!783416 () Bool)

(declare-fun e!783417 () Bool)

(assert (=> b!1220556 (= e!783416 e!783417)))

(declare-fun c!204060 () Bool)

(assert (=> b!1220556 (= c!204060 (is-EmptyLang!3422 (regex!2152 (rule!3579 (_1!7025 lt!416666)))))))

(declare-fun b!1220557 () Bool)

(declare-fun res!548668 () Bool)

(declare-fun e!783418 () Bool)

(assert (=> b!1220557 (=> res!548668 e!783418)))

(assert (=> b!1220557 (= res!548668 (not (is-ElementMatch!3422 (regex!2152 (rule!3579 (_1!7025 lt!416666))))))))

(assert (=> b!1220557 (= e!783417 e!783418)))

(declare-fun b!1220558 () Bool)

(declare-fun e!783419 () Bool)

(declare-fun head!2158 (List!12544) C!7162)

(assert (=> b!1220558 (= e!783419 (not (= (head!2158 lt!416659) (c!204003 (regex!2152 (rule!3579 (_1!7025 lt!416666)))))))))

(declare-fun b!1220559 () Bool)

(declare-fun lt!416767 () Bool)

(declare-fun call!84679 () Bool)

(assert (=> b!1220559 (= e!783416 (= lt!416767 call!84679))))

(declare-fun b!1220560 () Bool)

(declare-fun derivativeStep!854 (Regex!3422 C!7162) Regex!3422)

(declare-fun tail!1790 (List!12544) List!12544)

(assert (=> b!1220560 (= e!783413 (matchR!1537 (derivativeStep!854 (regex!2152 (rule!3579 (_1!7025 lt!416666))) (head!2158 lt!416659)) (tail!1790 lt!416659)))))

(declare-fun b!1220561 () Bool)

(declare-fun res!548669 () Bool)

(assert (=> b!1220561 (=> res!548669 e!783419)))

(assert (=> b!1220561 (= res!548669 (not (isEmpty!7439 (tail!1790 lt!416659))))))

(declare-fun bm!84674 () Bool)

(assert (=> bm!84674 (= call!84679 (isEmpty!7439 lt!416659))))

(declare-fun b!1220562 () Bool)

(declare-fun e!783415 () Bool)

(assert (=> b!1220562 (= e!783415 (= (head!2158 lt!416659) (c!204003 (regex!2152 (rule!3579 (_1!7025 lt!416666))))))))

(declare-fun b!1220563 () Bool)

(declare-fun res!548666 () Bool)

(assert (=> b!1220563 (=> (not res!548666) (not e!783415))))

(assert (=> b!1220563 (= res!548666 (not call!84679))))

(declare-fun b!1220564 () Bool)

(declare-fun e!783414 () Bool)

(assert (=> b!1220564 (= e!783414 e!783419)))

(declare-fun res!548672 () Bool)

(assert (=> b!1220564 (=> res!548672 e!783419)))

(assert (=> b!1220564 (= res!548672 call!84679)))

(declare-fun d!348379 () Bool)

(assert (=> d!348379 e!783416))

(declare-fun c!204059 () Bool)

(assert (=> d!348379 (= c!204059 (is-EmptyExpr!3422 (regex!2152 (rule!3579 (_1!7025 lt!416666)))))))

(assert (=> d!348379 (= lt!416767 e!783413)))

(declare-fun c!204061 () Bool)

(assert (=> d!348379 (= c!204061 (isEmpty!7439 lt!416659))))

(declare-fun validRegex!1458 (Regex!3422) Bool)

(assert (=> d!348379 (validRegex!1458 (regex!2152 (rule!3579 (_1!7025 lt!416666))))))

(assert (=> d!348379 (= (matchR!1537 (regex!2152 (rule!3579 (_1!7025 lt!416666))) lt!416659) lt!416767)))

(declare-fun b!1220565 () Bool)

(assert (=> b!1220565 (= e!783417 (not lt!416767))))

(declare-fun b!1220566 () Bool)

(declare-fun res!548673 () Bool)

(assert (=> b!1220566 (=> res!548673 e!783418)))

(assert (=> b!1220566 (= res!548673 e!783415)))

(declare-fun res!548667 () Bool)

(assert (=> b!1220566 (=> (not res!548667) (not e!783415))))

(assert (=> b!1220566 (= res!548667 lt!416767)))

(declare-fun b!1220567 () Bool)

(assert (=> b!1220567 (= e!783418 e!783414)))

(declare-fun res!548670 () Bool)

(assert (=> b!1220567 (=> (not res!548670) (not e!783414))))

(assert (=> b!1220567 (= res!548670 (not lt!416767))))

(declare-fun b!1220568 () Bool)

(declare-fun res!548671 () Bool)

(assert (=> b!1220568 (=> (not res!548671) (not e!783415))))

(assert (=> b!1220568 (= res!548671 (isEmpty!7439 (tail!1790 lt!416659)))))

(assert (= (and d!348379 c!204061) b!1220555))

(assert (= (and d!348379 (not c!204061)) b!1220560))

(assert (= (and d!348379 c!204059) b!1220559))

(assert (= (and d!348379 (not c!204059)) b!1220556))

(assert (= (and b!1220556 c!204060) b!1220565))

(assert (= (and b!1220556 (not c!204060)) b!1220557))

(assert (= (and b!1220557 (not res!548668)) b!1220566))

(assert (= (and b!1220566 res!548667) b!1220563))

(assert (= (and b!1220563 res!548666) b!1220568))

(assert (= (and b!1220568 res!548671) b!1220562))

(assert (= (and b!1220566 (not res!548673)) b!1220567))

(assert (= (and b!1220567 res!548670) b!1220564))

(assert (= (and b!1220564 (not res!548672)) b!1220561))

(assert (= (and b!1220561 (not res!548669)) b!1220558))

(assert (= (or b!1220559 b!1220563 b!1220564) bm!84674))

(declare-fun m!1394303 () Bool)

(assert (=> b!1220560 m!1394303))

(assert (=> b!1220560 m!1394303))

(declare-fun m!1394305 () Bool)

(assert (=> b!1220560 m!1394305))

(declare-fun m!1394307 () Bool)

(assert (=> b!1220560 m!1394307))

(assert (=> b!1220560 m!1394305))

(assert (=> b!1220560 m!1394307))

(declare-fun m!1394309 () Bool)

(assert (=> b!1220560 m!1394309))

(assert (=> b!1220561 m!1394307))

(assert (=> b!1220561 m!1394307))

(declare-fun m!1394311 () Bool)

(assert (=> b!1220561 m!1394311))

(declare-fun m!1394313 () Bool)

(assert (=> bm!84674 m!1394313))

(assert (=> b!1220558 m!1394303))

(assert (=> d!348379 m!1394313))

(declare-fun m!1394315 () Bool)

(assert (=> d!348379 m!1394315))

(assert (=> b!1220568 m!1394307))

(assert (=> b!1220568 m!1394307))

(assert (=> b!1220568 m!1394311))

(declare-fun m!1394317 () Bool)

(assert (=> b!1220555 m!1394317))

(assert (=> b!1220562 m!1394303))

(assert (=> b!1220234 d!348379))

(declare-fun b!1220581 () Bool)

(declare-fun e!783422 () Bool)

(declare-fun tp!346825 () Bool)

(assert (=> b!1220581 (= e!783422 tp!346825)))

(declare-fun b!1220580 () Bool)

(declare-fun tp!346822 () Bool)

(declare-fun tp!346824 () Bool)

(assert (=> b!1220580 (= e!783422 (and tp!346822 tp!346824))))

(declare-fun b!1220579 () Bool)

(assert (=> b!1220579 (= e!783422 tp_is_empty!6365)))

(assert (=> b!1220237 (= tp!346771 e!783422)))

(declare-fun b!1220582 () Bool)

(declare-fun tp!346823 () Bool)

(declare-fun tp!346826 () Bool)

(assert (=> b!1220582 (= e!783422 (and tp!346823 tp!346826))))

(assert (= (and b!1220237 (is-ElementMatch!3422 (regex!2152 (h!17888 rules!2728)))) b!1220579))

(assert (= (and b!1220237 (is-Concat!5643 (regex!2152 (h!17888 rules!2728)))) b!1220580))

(assert (= (and b!1220237 (is-Star!3422 (regex!2152 (h!17888 rules!2728)))) b!1220581))

(assert (= (and b!1220237 (is-Union!3422 (regex!2152 (h!17888 rules!2728)))) b!1220582))

(declare-fun b!1220596 () Bool)

(declare-fun b_free!29505 () Bool)

(declare-fun b_next!30209 () Bool)

(assert (=> b!1220596 (= b_free!29505 (not b_next!30209))))

(declare-fun tp!346841 () Bool)

(declare-fun b_and!83085 () Bool)

(assert (=> b!1220596 (= tp!346841 b_and!83085)))

(declare-fun b_free!29507 () Bool)

(declare-fun b_next!30211 () Bool)

(assert (=> b!1220596 (= b_free!29507 (not b_next!30211))))

(declare-fun t!113577 () Bool)

(declare-fun tb!67089 () Bool)

(assert (=> (and b!1220596 (= (toChars!3148 (transformation!2152 (rule!3579 (h!17889 (t!113562 tokens!556))))) (toChars!3148 (transformation!2152 (rule!3579 (h!17889 tokens!556))))) t!113577) tb!67089))

(declare-fun result!81266 () Bool)

(assert (= result!81266 result!81252))

(assert (=> b!1220370 t!113577))

(assert (=> d!348369 t!113577))

(declare-fun t!113579 () Bool)

(declare-fun tb!67091 () Bool)

(assert (=> (and b!1220596 (= (toChars!3148 (transformation!2152 (rule!3579 (h!17889 (t!113562 tokens!556))))) (toChars!3148 (transformation!2152 (rule!3579 (_1!7025 lt!416666))))) t!113579) tb!67091))

(declare-fun result!81268 () Bool)

(assert (= result!81268 result!81258))

(assert (=> d!348371 t!113579))

(declare-fun tp!346839 () Bool)

(declare-fun b_and!83087 () Bool)

(assert (=> b!1220596 (= tp!346839 (and (=> t!113577 result!81266) (=> t!113579 result!81268) b_and!83087))))

(declare-fun tp!346837 () Bool)

(declare-fun b!1220593 () Bool)

(declare-fun e!783439 () Bool)

(declare-fun e!783436 () Bool)

(assert (=> b!1220593 (= e!783439 (and (inv!16692 (h!17889 (t!113562 tokens!556))) e!783436 tp!346837))))

(declare-fun tp!346838 () Bool)

(declare-fun e!783438 () Bool)

(declare-fun b!1220594 () Bool)

(assert (=> b!1220594 (= e!783436 (and (inv!21 (value!69930 (h!17889 (t!113562 tokens!556)))) e!783438 tp!346838))))

(declare-fun e!783440 () Bool)

(declare-fun tp!346840 () Bool)

(declare-fun b!1220595 () Bool)

(assert (=> b!1220595 (= e!783438 (and tp!346840 (inv!16689 (tag!2414 (rule!3579 (h!17889 (t!113562 tokens!556))))) (inv!16693 (transformation!2152 (rule!3579 (h!17889 (t!113562 tokens!556))))) e!783440))))

(assert (=> b!1220596 (= e!783440 (and tp!346841 tp!346839))))

(assert (=> b!1220226 (= tp!346775 e!783439)))

(assert (= b!1220595 b!1220596))

(assert (= b!1220594 b!1220595))

(assert (= b!1220593 b!1220594))

(assert (= (and b!1220226 (is-Cons!12488 (t!113562 tokens!556))) b!1220593))

(declare-fun m!1394319 () Bool)

(assert (=> b!1220593 m!1394319))

(declare-fun m!1394321 () Bool)

(assert (=> b!1220594 m!1394321))

(declare-fun m!1394323 () Bool)

(assert (=> b!1220595 m!1394323))

(declare-fun m!1394325 () Bool)

(assert (=> b!1220595 m!1394325))

(declare-fun b!1220607 () Bool)

(declare-fun b_free!29509 () Bool)

(declare-fun b_next!30213 () Bool)

(assert (=> b!1220607 (= b_free!29509 (not b_next!30213))))

(declare-fun tp!346850 () Bool)

(declare-fun b_and!83089 () Bool)

(assert (=> b!1220607 (= tp!346850 b_and!83089)))

(declare-fun b_free!29511 () Bool)

(declare-fun b_next!30215 () Bool)

(assert (=> b!1220607 (= b_free!29511 (not b_next!30215))))

(declare-fun t!113581 () Bool)

(declare-fun tb!67093 () Bool)

(assert (=> (and b!1220607 (= (toChars!3148 (transformation!2152 (h!17888 (t!113561 rules!2728)))) (toChars!3148 (transformation!2152 (rule!3579 (h!17889 tokens!556))))) t!113581) tb!67093))

(declare-fun result!81272 () Bool)

(assert (= result!81272 result!81252))

(assert (=> b!1220370 t!113581))

(assert (=> d!348369 t!113581))

(declare-fun t!113583 () Bool)

(declare-fun tb!67095 () Bool)

(assert (=> (and b!1220607 (= (toChars!3148 (transformation!2152 (h!17888 (t!113561 rules!2728)))) (toChars!3148 (transformation!2152 (rule!3579 (_1!7025 lt!416666))))) t!113583) tb!67095))

(declare-fun result!81274 () Bool)

(assert (= result!81274 result!81258))

(assert (=> d!348371 t!113583))

(declare-fun b_and!83091 () Bool)

(declare-fun tp!346851 () Bool)

(assert (=> b!1220607 (= tp!346851 (and (=> t!113581 result!81272) (=> t!113583 result!81274) b_and!83091))))

(declare-fun e!783449 () Bool)

(assert (=> b!1220607 (= e!783449 (and tp!346850 tp!346851))))

(declare-fun e!783451 () Bool)

(declare-fun tp!346852 () Bool)

(declare-fun b!1220606 () Bool)

(assert (=> b!1220606 (= e!783451 (and tp!346852 (inv!16689 (tag!2414 (h!17888 (t!113561 rules!2728)))) (inv!16693 (transformation!2152 (h!17888 (t!113561 rules!2728)))) e!783449))))

(declare-fun b!1220605 () Bool)

(declare-fun e!783452 () Bool)

(declare-fun tp!346853 () Bool)

(assert (=> b!1220605 (= e!783452 (and e!783451 tp!346853))))

(assert (=> b!1220242 (= tp!346774 e!783452)))

(assert (= b!1220606 b!1220607))

(assert (= b!1220605 b!1220606))

(assert (= (and b!1220242 (is-Cons!12487 (t!113561 rules!2728))) b!1220605))

(declare-fun m!1394327 () Bool)

(assert (=> b!1220606 m!1394327))

(declare-fun m!1394329 () Bool)

(assert (=> b!1220606 m!1394329))

(declare-fun b!1220612 () Bool)

(declare-fun e!783455 () Bool)

(declare-fun tp!346856 () Bool)

(assert (=> b!1220612 (= e!783455 (and tp_is_empty!6365 tp!346856))))

(assert (=> b!1220245 (= tp!346776 e!783455)))

(assert (= (and b!1220245 (is-Cons!12486 (t!113560 input!2346))) b!1220612))

(declare-fun b!1220613 () Bool)

(declare-fun e!783456 () Bool)

(declare-fun tp!346857 () Bool)

(assert (=> b!1220613 (= e!783456 (and tp_is_empty!6365 tp!346857))))

(assert (=> b!1220240 (= tp!346768 e!783456)))

(assert (= (and b!1220240 (is-Cons!12486 (originalCharacters!2706 (h!17889 tokens!556)))) b!1220613))

(declare-fun b!1220616 () Bool)

(declare-fun e!783457 () Bool)

(declare-fun tp!346861 () Bool)

(assert (=> b!1220616 (= e!783457 tp!346861)))

(declare-fun b!1220615 () Bool)

(declare-fun tp!346858 () Bool)

(declare-fun tp!346860 () Bool)

(assert (=> b!1220615 (= e!783457 (and tp!346858 tp!346860))))

(declare-fun b!1220614 () Bool)

(assert (=> b!1220614 (= e!783457 tp_is_empty!6365)))

(assert (=> b!1220230 (= tp!346769 e!783457)))

(declare-fun b!1220617 () Bool)

(declare-fun tp!346859 () Bool)

(declare-fun tp!346862 () Bool)

(assert (=> b!1220617 (= e!783457 (and tp!346859 tp!346862))))

(assert (= (and b!1220230 (is-ElementMatch!3422 (regex!2152 (rule!3579 (h!17889 tokens!556))))) b!1220614))

(assert (= (and b!1220230 (is-Concat!5643 (regex!2152 (rule!3579 (h!17889 tokens!556))))) b!1220615))

(assert (= (and b!1220230 (is-Star!3422 (regex!2152 (rule!3579 (h!17889 tokens!556))))) b!1220616))

(assert (= (and b!1220230 (is-Union!3422 (regex!2152 (rule!3579 (h!17889 tokens!556))))) b!1220617))

(declare-fun b_lambda!36005 () Bool)

(assert (= b_lambda!35999 (or (and b!1220239 b_free!29491) (and b!1220243 b_free!29495 (= (toChars!3148 (transformation!2152 (h!17888 rules!2728))) (toChars!3148 (transformation!2152 (rule!3579 (h!17889 tokens!556)))))) (and b!1220596 b_free!29507 (= (toChars!3148 (transformation!2152 (rule!3579 (h!17889 (t!113562 tokens!556))))) (toChars!3148 (transformation!2152 (rule!3579 (h!17889 tokens!556)))))) (and b!1220607 b_free!29511 (= (toChars!3148 (transformation!2152 (h!17888 (t!113561 rules!2728)))) (toChars!3148 (transformation!2152 (rule!3579 (h!17889 tokens!556)))))) b_lambda!36005)))

(declare-fun b_lambda!36007 () Bool)

(assert (= b_lambda!36001 (or (and b!1220239 b_free!29491) (and b!1220243 b_free!29495 (= (toChars!3148 (transformation!2152 (h!17888 rules!2728))) (toChars!3148 (transformation!2152 (rule!3579 (h!17889 tokens!556)))))) (and b!1220596 b_free!29507 (= (toChars!3148 (transformation!2152 (rule!3579 (h!17889 (t!113562 tokens!556))))) (toChars!3148 (transformation!2152 (rule!3579 (h!17889 tokens!556)))))) (and b!1220607 b_free!29511 (= (toChars!3148 (transformation!2152 (h!17888 (t!113561 rules!2728)))) (toChars!3148 (transformation!2152 (rule!3579 (h!17889 tokens!556)))))) b_lambda!36007)))

(push 1)

(assert (not d!348371))

(assert (not b_next!30213))

(assert (not d!348375))

(assert (not b!1220615))

(assert (not d!348339))

(assert (not b!1220404))

(assert (not b_next!30211))

(assert (not b!1220432))

(assert (not b!1220568))

(assert (not b!1220613))

(assert (not b!1220562))

(assert (not b!1220555))

(assert b_and!83091)

(assert (not bm!84670))

(assert (not d!348369))

(assert (not d!348365))

(assert (not b!1220376))

(assert (not d!348345))

(assert (not b_next!30199))

(assert (not b!1220377))

(assert (not b!1220393))

(assert (not b!1220560))

(assert (not d!348343))

(assert b_and!83057)

(assert (not b!1220350))

(assert (not b!1220314))

(assert (not b!1220558))

(assert (not b!1220429))

(assert (not d!348379))

(assert (not b_lambda!36007))

(assert (not d!348351))

(assert (not d!348377))

(assert (not b!1220612))

(assert (not b!1220605))

(assert (not b!1220445))

(assert tp_is_empty!6365)

(assert (not b!1220428))

(assert (not bm!84674))

(assert (not b!1220504))

(assert (not b!1220616))

(assert (not b!1220394))

(assert (not b_next!30193))

(assert (not b!1220506))

(assert (not b!1220364))

(assert (not d!348321))

(assert (not b!1220511))

(assert (not b!1220582))

(assert (not b_next!30197))

(assert (not b!1220594))

(assert (not b!1220349))

(assert b_and!83061)

(assert (not b!1220395))

(assert (not tb!67085))

(assert (not b!1220512))

(assert (not b!1220431))

(assert (not b!1220606))

(assert (not b_lambda!36005))

(assert (not d!348355))

(assert (not b_next!30209))

(assert (not b!1220434))

(assert (not b_next!30215))

(assert (not b!1220593))

(assert (not b!1220397))

(assert b_and!83087)

(assert (not b!1220380))

(assert (not b!1220371))

(assert (not b!1220508))

(assert (not b!1220507))

(assert (not b!1220509))

(assert (not b!1220503))

(assert (not b!1220595))

(assert (not b!1220505))

(assert (not d!348359))

(assert (not b!1220446))

(assert (not b!1220362))

(assert (not b!1220361))

(assert b_and!83081)

(assert (not d!348353))

(assert (not b!1220561))

(assert b_and!83089)

(assert (not b!1220581))

(assert (not b!1220580))

(assert (not tb!67081))

(assert b_and!83083)

(assert (not b_next!30195))

(assert (not d!348323))

(assert (not d!348361))

(assert (not b_lambda!36003))

(assert (not d!348363))

(assert b_and!83085)

(assert (not b!1220348))

(assert (not b!1220370))

(assert (not b!1220378))

(assert (not b!1220617))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!30211))

(assert b_and!83091)

(assert (not b_next!30199))

(assert (not b_next!30213))

(assert b_and!83057)

(assert (not b_next!30193))

(assert (not b_next!30197))

(assert b_and!83061)

(assert b_and!83087)

(assert b_and!83081)

(assert b_and!83089)

(assert b_and!83085)

(assert (not b_next!30209))

(assert (not b_next!30215))

(assert b_and!83083)

(assert (not b_next!30195))

(check-sat)

(pop 1)

