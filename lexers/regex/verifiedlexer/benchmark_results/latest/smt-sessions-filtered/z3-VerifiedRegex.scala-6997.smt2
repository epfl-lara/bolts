; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!371592 () Bool)

(assert start!371592)

(declare-fun b!3952350 () Bool)

(declare-fun b_free!108697 () Bool)

(declare-fun b_next!109401 () Bool)

(assert (=> b!3952350 (= b_free!108697 (not b_next!109401))))

(declare-fun tp!1204173 () Bool)

(declare-fun b_and!302939 () Bool)

(assert (=> b!3952350 (= tp!1204173 b_and!302939)))

(declare-fun b_free!108699 () Bool)

(declare-fun b_next!109403 () Bool)

(assert (=> b!3952350 (= b_free!108699 (not b_next!109403))))

(declare-fun tp!1204165 () Bool)

(declare-fun b_and!302941 () Bool)

(assert (=> b!3952350 (= tp!1204165 b_and!302941)))

(declare-fun b!3952361 () Bool)

(declare-fun b_free!108701 () Bool)

(declare-fun b_next!109405 () Bool)

(assert (=> b!3952361 (= b_free!108701 (not b_next!109405))))

(declare-fun tp!1204176 () Bool)

(declare-fun b_and!302943 () Bool)

(assert (=> b!3952361 (= tp!1204176 b_and!302943)))

(declare-fun b_free!108703 () Bool)

(declare-fun b_next!109407 () Bool)

(assert (=> b!3952361 (= b_free!108703 (not b_next!109407))))

(declare-fun tp!1204171 () Bool)

(declare-fun b_and!302945 () Bool)

(assert (=> b!3952361 (= tp!1204171 b_and!302945)))

(declare-fun b!3952357 () Bool)

(declare-fun b_free!108705 () Bool)

(declare-fun b_next!109409 () Bool)

(assert (=> b!3952357 (= b_free!108705 (not b_next!109409))))

(declare-fun tp!1204161 () Bool)

(declare-fun b_and!302947 () Bool)

(assert (=> b!3952357 (= tp!1204161 b_and!302947)))

(declare-fun b_free!108707 () Bool)

(declare-fun b_next!109411 () Bool)

(assert (=> b!3952357 (= b_free!108707 (not b_next!109411))))

(declare-fun tp!1204156 () Bool)

(declare-fun b_and!302949 () Bool)

(assert (=> b!3952357 (= tp!1204156 b_and!302949)))

(declare-fun b!3952351 () Bool)

(declare-fun b_free!108709 () Bool)

(declare-fun b_next!109413 () Bool)

(assert (=> b!3952351 (= b_free!108709 (not b_next!109413))))

(declare-fun tp!1204157 () Bool)

(declare-fun b_and!302951 () Bool)

(assert (=> b!3952351 (= tp!1204157 b_and!302951)))

(declare-fun b_free!108711 () Bool)

(declare-fun b_next!109415 () Bool)

(assert (=> b!3952351 (= b_free!108711 (not b_next!109415))))

(declare-fun tp!1204172 () Bool)

(declare-fun b_and!302953 () Bool)

(assert (=> b!3952351 (= tp!1204172 b_and!302953)))

(declare-fun b!3952338 () Bool)

(declare-fun e!2446529 () Bool)

(declare-fun e!2446514 () Bool)

(assert (=> b!3952338 (= e!2446529 e!2446514)))

(declare-fun res!1599219 () Bool)

(assert (=> b!3952338 (=> res!1599219 e!2446514)))

(declare-datatypes ((List!42163 0))(
  ( (Nil!42039) (Cons!42039 (h!47459 (_ BitVec 16)) (t!328804 List!42163)) )
))
(declare-datatypes ((TokenValue!6812 0))(
  ( (FloatLiteralValue!13624 (text!48129 List!42163)) (TokenValueExt!6811 (__x!25841 Int)) (Broken!34060 (value!208195 List!42163)) (Object!6935) (End!6812) (Def!6812) (Underscore!6812) (Match!6812) (Else!6812) (Error!6812) (Case!6812) (If!6812) (Extends!6812) (Abstract!6812) (Class!6812) (Val!6812) (DelimiterValue!13624 (del!6872 List!42163)) (KeywordValue!6818 (value!208196 List!42163)) (CommentValue!13624 (value!208197 List!42163)) (WhitespaceValue!13624 (value!208198 List!42163)) (IndentationValue!6812 (value!208199 List!42163)) (String!47777) (Int32!6812) (Broken!34061 (value!208200 List!42163)) (Boolean!6813) (Unit!60547) (OperatorValue!6815 (op!6872 List!42163)) (IdentifierValue!13624 (value!208201 List!42163)) (IdentifierValue!13625 (value!208202 List!42163)) (WhitespaceValue!13625 (value!208203 List!42163)) (True!13624) (False!13624) (Broken!34062 (value!208204 List!42163)) (Broken!34063 (value!208205 List!42163)) (True!13625) (RightBrace!6812) (RightBracket!6812) (Colon!6812) (Null!6812) (Comma!6812) (LeftBracket!6812) (False!13625) (LeftBrace!6812) (ImaginaryLiteralValue!6812 (text!48130 List!42163)) (StringLiteralValue!20436 (value!208206 List!42163)) (EOFValue!6812 (value!208207 List!42163)) (IdentValue!6812 (value!208208 List!42163)) (DelimiterValue!13625 (value!208209 List!42163)) (DedentValue!6812 (value!208210 List!42163)) (NewLineValue!6812 (value!208211 List!42163)) (IntegerValue!20436 (value!208212 (_ BitVec 32)) (text!48131 List!42163)) (IntegerValue!20437 (value!208213 Int) (text!48132 List!42163)) (Times!6812) (Or!6812) (Equal!6812) (Minus!6812) (Broken!34064 (value!208214 List!42163)) (And!6812) (Div!6812) (LessEqual!6812) (Mod!6812) (Concat!18299) (Not!6812) (Plus!6812) (SpaceValue!6812 (value!208215 List!42163)) (IntegerValue!20438 (value!208216 Int) (text!48133 List!42163)) (StringLiteralValue!20437 (text!48134 List!42163)) (FloatLiteralValue!13625 (text!48135 List!42163)) (BytesLiteralValue!6812 (value!208217 List!42163)) (CommentValue!13625 (value!208218 List!42163)) (StringLiteralValue!20438 (value!208219 List!42163)) (ErrorTokenValue!6812 (msg!6873 List!42163)) )
))
(declare-datatypes ((C!23160 0))(
  ( (C!23161 (val!13674 Int)) )
))
(declare-datatypes ((Regex!11487 0))(
  ( (ElementMatch!11487 (c!686186 C!23160)) (Concat!18300 (regOne!23486 Regex!11487) (regTwo!23486 Regex!11487)) (EmptyExpr!11487) (Star!11487 (reg!11816 Regex!11487)) (EmptyLang!11487) (Union!11487 (regOne!23487 Regex!11487) (regTwo!23487 Regex!11487)) )
))
(declare-datatypes ((String!47778 0))(
  ( (String!47779 (value!208220 String)) )
))
(declare-datatypes ((List!42164 0))(
  ( (Nil!42040) (Cons!42040 (h!47460 C!23160) (t!328805 List!42164)) )
))
(declare-datatypes ((IArray!25591 0))(
  ( (IArray!25592 (innerList!12853 List!42164)) )
))
(declare-datatypes ((Conc!12793 0))(
  ( (Node!12793 (left!31962 Conc!12793) (right!32292 Conc!12793) (csize!25816 Int) (cheight!13004 Int)) (Leaf!19791 (xs!16099 IArray!25591) (csize!25817 Int)) (Empty!12793) )
))
(declare-datatypes ((BalanceConc!25180 0))(
  ( (BalanceConc!25181 (c!686187 Conc!12793)) )
))
(declare-datatypes ((TokenValueInjection!13052 0))(
  ( (TokenValueInjection!13053 (toValue!9058 Int) (toChars!8917 Int)) )
))
(declare-datatypes ((Rule!12964 0))(
  ( (Rule!12965 (regex!6582 Regex!11487) (tag!7442 String!47778) (isSeparator!6582 Bool) (transformation!6582 TokenValueInjection!13052)) )
))
(declare-datatypes ((Token!12302 0))(
  ( (Token!12303 (value!208221 TokenValue!6812) (rule!9552 Rule!12964) (size!31502 Int) (originalCharacters!7182 List!42164)) )
))
(declare-datatypes ((List!42165 0))(
  ( (Nil!42041) (Cons!42041 (h!47461 Token!12302) (t!328806 List!42165)) )
))
(declare-datatypes ((tuple2!41326 0))(
  ( (tuple2!41327 (_1!23797 List!42165) (_2!23797 List!42164)) )
))
(declare-fun lt!1381729 () tuple2!41326)

(declare-fun lt!1381739 () List!42165)

(declare-fun prefixTokens!80 () List!42165)

(declare-fun lt!1381730 () List!42164)

(declare-fun prefix!426 () List!42164)

(declare-fun lt!1381732 () List!42165)

(declare-fun lt!1381742 () List!42165)

(assert (=> b!3952338 (= res!1599219 (or (not (= lt!1381742 (_1!23797 lt!1381729))) (not (= lt!1381742 lt!1381739)) (not (= prefixTokens!80 lt!1381732)) (not (= prefix!426 lt!1381730))))))

(assert (=> b!3952338 (= lt!1381730 prefix!426)))

(declare-datatypes ((tuple2!41328 0))(
  ( (tuple2!41329 (_1!23798 Token!12302) (_2!23798 List!42164)) )
))
(declare-datatypes ((Option!9002 0))(
  ( (None!9001) (Some!9001 (v!39341 tuple2!41328)) )
))
(declare-fun lt!1381741 () Option!9002)

(declare-datatypes ((Unit!60548 0))(
  ( (Unit!60549) )
))
(declare-fun lt!1381725 () Unit!60548)

(declare-fun suffix!1176 () List!42164)

(declare-fun lemmaConcatSameAndSameSizesThenSameLists!592 (List!42164 List!42164 List!42164 List!42164) Unit!60548)

(assert (=> b!3952338 (= lt!1381725 (lemmaConcatSameAndSameSizesThenSameLists!592 lt!1381730 (_2!23798 (v!39341 lt!1381741)) prefix!426 suffix!1176))))

(declare-fun b!3952339 () Bool)

(declare-fun ++!10921 (List!42164 List!42164) List!42164)

(assert (=> b!3952339 (= e!2446514 (= (++!10921 lt!1381730 Nil!42040) (++!10921 prefix!426 Nil!42040)))))

(declare-fun b!3952340 () Bool)

(declare-fun res!1599217 () Bool)

(assert (=> b!3952340 (=> res!1599217 e!2446514)))

(declare-fun lt!1381736 () Int)

(declare-fun size!31503 (List!42164) Int)

(assert (=> b!3952340 (= res!1599217 (< (size!31503 prefix!426) lt!1381736))))

(declare-fun b!3952341 () Bool)

(declare-fun e!2446532 () Bool)

(declare-fun e!2446540 () Bool)

(assert (=> b!3952341 (= e!2446532 e!2446540)))

(declare-fun res!1599218 () Bool)

(assert (=> b!3952341 (=> (not res!1599218) (not e!2446540))))

(get-info :version)

(assert (=> b!3952341 (= res!1599218 ((_ is Some!9001) lt!1381741))))

(declare-datatypes ((LexerInterface!6171 0))(
  ( (LexerInterfaceExt!6168 (__x!25842 Int)) (Lexer!6169) )
))
(declare-fun thiss!20629 () LexerInterface!6171)

(declare-datatypes ((List!42166 0))(
  ( (Nil!42042) (Cons!42042 (h!47462 Rule!12964) (t!328807 List!42166)) )
))
(declare-fun rules!2768 () List!42166)

(declare-fun lt!1381734 () List!42164)

(declare-fun maxPrefix!3475 (LexerInterface!6171 List!42166 List!42164) Option!9002)

(assert (=> b!3952341 (= lt!1381741 (maxPrefix!3475 thiss!20629 rules!2768 lt!1381734))))

(declare-fun b!3952342 () Bool)

(declare-fun res!1599213 () Bool)

(declare-fun e!2446512 () Bool)

(assert (=> b!3952342 (=> (not res!1599213) (not e!2446512))))

(declare-fun isEmpty!25114 (List!42165) Bool)

(assert (=> b!3952342 (= res!1599213 (not (isEmpty!25114 prefixTokens!80)))))

(declare-fun b!3952343 () Bool)

(declare-fun e!2446521 () Bool)

(declare-fun tp_is_empty!19945 () Bool)

(declare-fun tp!1204159 () Bool)

(assert (=> b!3952343 (= e!2446521 (and tp_is_empty!19945 tp!1204159))))

(declare-fun b!3952344 () Bool)

(declare-fun e!2446531 () Bool)

(declare-fun e!2446516 () Bool)

(assert (=> b!3952344 (= e!2446531 e!2446516)))

(declare-fun res!1599211 () Bool)

(assert (=> b!3952344 (=> res!1599211 e!2446516)))

(declare-fun lt!1381731 () tuple2!41326)

(assert (=> b!3952344 (= res!1599211 (or (not (= lt!1381729 (tuple2!41327 lt!1381739 (_2!23797 lt!1381731)))) (not (= lt!1381731 (tuple2!41327 (_1!23797 lt!1381731) (_2!23797 lt!1381731)))) (not (= (_2!23798 (v!39341 lt!1381741)) suffix!1176))))))

(declare-fun ++!10922 (List!42165 List!42165) List!42165)

(assert (=> b!3952344 (= lt!1381739 (++!10922 lt!1381732 (_1!23797 lt!1381731)))))

(assert (=> b!3952344 (= lt!1381732 (Cons!42041 (_1!23798 (v!39341 lt!1381741)) Nil!42041))))

(declare-fun b!3952345 () Bool)

(declare-fun e!2446525 () Bool)

(declare-fun e!2446533 () Option!9002)

(assert (=> b!3952345 (= e!2446525 (= lt!1381741 e!2446533))))

(declare-fun c!686184 () Bool)

(assert (=> b!3952345 (= c!686184 (and ((_ is Cons!42042) rules!2768) ((_ is Nil!42042) (t!328807 rules!2768))))))

(declare-fun b!3952346 () Bool)

(declare-fun e!2446537 () Option!9002)

(assert (=> b!3952346 (= e!2446533 e!2446537)))

(declare-fun c!686185 () Bool)

(assert (=> b!3952346 (= c!686185 ((_ is Cons!42042) rules!2768))))

(declare-fun e!2446542 () Bool)

(declare-fun tp!1204175 () Bool)

(declare-fun b!3952347 () Bool)

(declare-fun e!2446530 () Bool)

(declare-fun inv!21 (TokenValue!6812) Bool)

(assert (=> b!3952347 (= e!2446542 (and (inv!21 (value!208221 (h!47461 prefixTokens!80))) e!2446530 tp!1204175))))

(declare-fun b!3952348 () Bool)

(declare-fun call!285252 () Option!9002)

(assert (=> b!3952348 (= e!2446533 call!285252)))

(declare-fun b!3952349 () Bool)

(declare-fun e!2446538 () Bool)

(declare-fun tp!1204170 () Bool)

(assert (=> b!3952349 (= e!2446538 (and tp_is_empty!19945 tp!1204170))))

(declare-fun e!2446523 () Bool)

(assert (=> b!3952350 (= e!2446523 (and tp!1204173 tp!1204165))))

(declare-fun e!2446517 () Bool)

(assert (=> b!3952351 (= e!2446517 (and tp!1204157 tp!1204172))))

(declare-fun b!3952352 () Bool)

(declare-fun res!1599221 () Bool)

(assert (=> b!3952352 (=> (not res!1599221) (not e!2446512))))

(declare-fun isEmpty!25115 (List!42164) Bool)

(assert (=> b!3952352 (= res!1599221 (not (isEmpty!25115 prefix!426)))))

(declare-fun b!3952353 () Bool)

(assert (=> b!3952353 (= e!2446512 e!2446532)))

(declare-fun res!1599215 () Bool)

(assert (=> b!3952353 (=> (not res!1599215) (not e!2446532))))

(declare-fun suffixResult!91 () List!42164)

(assert (=> b!3952353 (= res!1599215 (= lt!1381729 (tuple2!41327 lt!1381742 suffixResult!91)))))

(declare-fun lexList!1939 (LexerInterface!6171 List!42166 List!42164) tuple2!41326)

(assert (=> b!3952353 (= lt!1381729 (lexList!1939 thiss!20629 rules!2768 lt!1381734))))

(declare-fun suffixTokens!72 () List!42165)

(assert (=> b!3952353 (= lt!1381742 (++!10922 prefixTokens!80 suffixTokens!72))))

(assert (=> b!3952353 (= lt!1381734 (++!10921 prefix!426 suffix!1176))))

(declare-fun b!3952354 () Bool)

(assert (=> b!3952354 true))

(declare-fun e!2446539 () Bool)

(assert (=> b!3952354 e!2446539))

(declare-fun err!4457 () Option!9002)

(assert (=> b!3952354 (= e!2446537 err!4457)))

(declare-fun b!3952355 () Bool)

(declare-fun res!1599220 () Bool)

(assert (=> b!3952355 (=> (not res!1599220) (not e!2446512))))

(declare-fun rulesInvariant!5514 (LexerInterface!6171 List!42166) Bool)

(assert (=> b!3952355 (= res!1599220 (rulesInvariant!5514 thiss!20629 rules!2768))))

(declare-fun e!2446511 () Bool)

(declare-fun b!3952356 () Bool)

(declare-fun tp!1204164 () Bool)

(declare-fun e!2446526 () Bool)

(assert (=> b!3952356 (= e!2446526 (and (inv!21 (value!208221 (_1!23798 (v!39341 err!4457)))) e!2446511 tp!1204164))))

(declare-fun e!2446519 () Bool)

(assert (=> b!3952357 (= e!2446519 (and tp!1204161 tp!1204156))))

(declare-fun b!3952358 () Bool)

(assert (=> b!3952358 (= e!2446516 e!2446529)))

(declare-fun res!1599209 () Bool)

(assert (=> b!3952358 (=> res!1599209 e!2446529)))

(assert (=> b!3952358 (= res!1599209 (not (= lt!1381741 (Some!9001 (tuple2!41329 (_1!23798 (v!39341 lt!1381741)) (_2!23798 (v!39341 lt!1381741)))))))))

(assert (=> b!3952358 e!2446525))

(declare-fun res!1599223 () Bool)

(assert (=> b!3952358 (=> (not res!1599223) (not e!2446525))))

(declare-fun isPrefix!3671 (List!42164 List!42164) Bool)

(assert (=> b!3952358 (= res!1599223 (isPrefix!3671 lt!1381734 lt!1381734))))

(declare-fun lt!1381726 () Unit!60548)

(declare-fun lemmaIsPrefixRefl!2322 (List!42164 List!42164) Unit!60548)

(assert (=> b!3952358 (= lt!1381726 (lemmaIsPrefixRefl!2322 lt!1381734 lt!1381734))))

(assert (=> b!3952358 (= lt!1381729 (tuple2!41327 (Cons!42041 (_1!23798 (v!39341 lt!1381741)) (_1!23797 lt!1381731)) (_2!23797 lt!1381731)))))

(declare-fun b!3952359 () Bool)

(declare-fun e!2446513 () Bool)

(declare-fun e!2446543 () Bool)

(declare-fun tp!1204166 () Bool)

(declare-fun inv!56267 (Token!12302) Bool)

(assert (=> b!3952359 (= e!2446513 (and (inv!56267 (h!47461 suffixTokens!72)) e!2446543 tp!1204166))))

(declare-fun b!3952360 () Bool)

(declare-fun res!1599216 () Bool)

(assert (=> b!3952360 (=> res!1599216 e!2446514)))

(assert (=> b!3952360 (= res!1599216 (not (isPrefix!3671 Nil!42040 suffix!1176)))))

(declare-fun bm!285247 () Bool)

(declare-fun maxPrefixOneRule!2529 (LexerInterface!6171 Rule!12964 List!42164) Option!9002)

(assert (=> bm!285247 (= call!285252 (maxPrefixOneRule!2529 thiss!20629 (h!47462 rules!2768) lt!1381734))))

(declare-fun e!2446535 () Bool)

(assert (=> b!3952361 (= e!2446535 (and tp!1204176 tp!1204171))))

(declare-fun b!3952362 () Bool)

(declare-fun res!1599208 () Bool)

(assert (=> b!3952362 (=> res!1599208 e!2446514)))

(assert (=> b!3952362 (= res!1599208 (< (size!31503 suffix!1176) (size!31503 Nil!42040)))))

(declare-fun b!3952363 () Bool)

(declare-fun e!2446541 () Bool)

(declare-fun e!2446510 () Bool)

(declare-fun tp!1204168 () Bool)

(assert (=> b!3952363 (= e!2446541 (and e!2446510 tp!1204168))))

(declare-fun b!3952364 () Bool)

(declare-fun tp!1204155 () Bool)

(declare-fun inv!56264 (String!47778) Bool)

(declare-fun inv!56268 (TokenValueInjection!13052) Bool)

(assert (=> b!3952364 (= e!2446511 (and tp!1204155 (inv!56264 (tag!7442 (rule!9552 (_1!23798 (v!39341 err!4457))))) (inv!56268 (transformation!6582 (rule!9552 (_1!23798 (v!39341 err!4457))))) e!2446519))))

(declare-fun e!2446534 () Bool)

(declare-fun b!3952365 () Bool)

(declare-fun tp!1204158 () Bool)

(assert (=> b!3952365 (= e!2446534 (and tp!1204158 (inv!56264 (tag!7442 (rule!9552 (h!47461 suffixTokens!72)))) (inv!56268 (transformation!6582 (rule!9552 (h!47461 suffixTokens!72)))) e!2446535))))

(declare-fun tp!1204162 () Bool)

(declare-fun b!3952366 () Bool)

(assert (=> b!3952366 (= e!2446510 (and tp!1204162 (inv!56264 (tag!7442 (h!47462 rules!2768))) (inv!56268 (transformation!6582 (h!47462 rules!2768))) e!2446517))))

(declare-fun b!3952367 () Bool)

(declare-fun e!2446509 () Bool)

(assert (=> b!3952367 (= e!2446509 (= (size!31502 (_1!23798 (v!39341 lt!1381741))) (size!31503 (originalCharacters!7182 (_1!23798 (v!39341 lt!1381741))))))))

(declare-fun tp!1204160 () Bool)

(declare-fun e!2446522 () Bool)

(declare-fun b!3952368 () Bool)

(assert (=> b!3952368 (= e!2446522 (and (inv!56267 (h!47461 prefixTokens!80)) e!2446542 tp!1204160))))

(declare-fun b!3952369 () Bool)

(declare-fun res!1599212 () Bool)

(assert (=> b!3952369 (=> (not res!1599212) (not e!2446532))))

(assert (=> b!3952369 (= res!1599212 (= (lexList!1939 thiss!20629 rules!2768 suffix!1176) (tuple2!41327 suffixTokens!72 suffixResult!91)))))

(declare-fun res!1599222 () Bool)

(assert (=> start!371592 (=> (not res!1599222) (not e!2446512))))

(assert (=> start!371592 (= res!1599222 ((_ is Lexer!6169) thiss!20629))))

(assert (=> start!371592 e!2446512))

(declare-fun e!2446524 () Bool)

(assert (=> start!371592 e!2446524))

(assert (=> start!371592 true))

(assert (=> start!371592 e!2446538))

(assert (=> start!371592 e!2446541))

(assert (=> start!371592 e!2446522))

(assert (=> start!371592 e!2446513))

(assert (=> start!371592 e!2446521))

(declare-fun b!3952370 () Bool)

(declare-fun tp!1204163 () Bool)

(assert (=> b!3952370 (= e!2446530 (and tp!1204163 (inv!56264 (tag!7442 (rule!9552 (h!47461 prefixTokens!80)))) (inv!56268 (transformation!6582 (rule!9552 (h!47461 prefixTokens!80)))) e!2446523))))

(declare-fun b!3952371 () Bool)

(assert (=> b!3952371 (= e!2446540 (not e!2446531))))

(declare-fun res!1599214 () Bool)

(assert (=> b!3952371 (=> res!1599214 e!2446531)))

(declare-fun lt!1381735 () List!42164)

(assert (=> b!3952371 (= res!1599214 (not (= lt!1381735 lt!1381734)))))

(assert (=> b!3952371 (= lt!1381731 (lexList!1939 thiss!20629 rules!2768 (_2!23798 (v!39341 lt!1381741))))))

(declare-fun lt!1381733 () List!42164)

(declare-fun lt!1381727 () TokenValue!6812)

(assert (=> b!3952371 (and (= (size!31502 (_1!23798 (v!39341 lt!1381741))) lt!1381736) (= (originalCharacters!7182 (_1!23798 (v!39341 lt!1381741))) lt!1381730) (= (tuple2!41329 (_1!23798 (v!39341 lt!1381741)) (_2!23798 (v!39341 lt!1381741))) (tuple2!41329 (Token!12303 lt!1381727 (rule!9552 (_1!23798 (v!39341 lt!1381741))) lt!1381736 lt!1381730) lt!1381733)))))

(assert (=> b!3952371 (= lt!1381736 (size!31503 lt!1381730))))

(assert (=> b!3952371 e!2446509))

(declare-fun res!1599224 () Bool)

(assert (=> b!3952371 (=> (not res!1599224) (not e!2446509))))

(assert (=> b!3952371 (= res!1599224 (= (value!208221 (_1!23798 (v!39341 lt!1381741))) lt!1381727))))

(declare-fun apply!9813 (TokenValueInjection!13052 BalanceConc!25180) TokenValue!6812)

(declare-fun seqFromList!4841 (List!42164) BalanceConc!25180)

(assert (=> b!3952371 (= lt!1381727 (apply!9813 (transformation!6582 (rule!9552 (_1!23798 (v!39341 lt!1381741)))) (seqFromList!4841 lt!1381730)))))

(assert (=> b!3952371 (= (_2!23798 (v!39341 lt!1381741)) lt!1381733)))

(declare-fun lt!1381724 () Unit!60548)

(declare-fun lemmaSamePrefixThenSameSuffix!1880 (List!42164 List!42164 List!42164 List!42164 List!42164) Unit!60548)

(assert (=> b!3952371 (= lt!1381724 (lemmaSamePrefixThenSameSuffix!1880 lt!1381730 (_2!23798 (v!39341 lt!1381741)) lt!1381730 lt!1381733 lt!1381734))))

(declare-fun getSuffix!2122 (List!42164 List!42164) List!42164)

(assert (=> b!3952371 (= lt!1381733 (getSuffix!2122 lt!1381734 lt!1381730))))

(assert (=> b!3952371 (isPrefix!3671 lt!1381730 lt!1381735)))

(assert (=> b!3952371 (= lt!1381735 (++!10921 lt!1381730 (_2!23798 (v!39341 lt!1381741))))))

(declare-fun lt!1381743 () Unit!60548)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!2530 (List!42164 List!42164) Unit!60548)

(assert (=> b!3952371 (= lt!1381743 (lemmaConcatTwoListThenFirstIsPrefix!2530 lt!1381730 (_2!23798 (v!39341 lt!1381741))))))

(declare-fun list!15612 (BalanceConc!25180) List!42164)

(declare-fun charsOf!4400 (Token!12302) BalanceConc!25180)

(assert (=> b!3952371 (= lt!1381730 (list!15612 (charsOf!4400 (_1!23798 (v!39341 lt!1381741)))))))

(declare-fun ruleValid!2524 (LexerInterface!6171 Rule!12964) Bool)

(assert (=> b!3952371 (ruleValid!2524 thiss!20629 (rule!9552 (_1!23798 (v!39341 lt!1381741))))))

(declare-fun lt!1381738 () Unit!60548)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1600 (LexerInterface!6171 Rule!12964 List!42166) Unit!60548)

(assert (=> b!3952371 (= lt!1381738 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1600 thiss!20629 (rule!9552 (_1!23798 (v!39341 lt!1381741))) rules!2768))))

(declare-fun lt!1381737 () Unit!60548)

(declare-fun lemmaCharactersSize!1235 (Token!12302) Unit!60548)

(assert (=> b!3952371 (= lt!1381737 (lemmaCharactersSize!1235 (_1!23798 (v!39341 lt!1381741))))))

(declare-fun b!3952372 () Bool)

(declare-fun res!1599210 () Bool)

(assert (=> b!3952372 (=> (not res!1599210) (not e!2446512))))

(declare-fun isEmpty!25116 (List!42166) Bool)

(assert (=> b!3952372 (= res!1599210 (not (isEmpty!25116 rules!2768)))))

(declare-fun tp!1204167 () Bool)

(declare-fun b!3952373 () Bool)

(assert (=> b!3952373 (= e!2446543 (and (inv!21 (value!208221 (h!47461 suffixTokens!72))) e!2446534 tp!1204167))))

(declare-fun b!3952374 () Bool)

(declare-fun tp!1204169 () Bool)

(assert (=> b!3952374 (= e!2446524 (and tp_is_empty!19945 tp!1204169))))

(declare-fun lt!1381740 () Option!9002)

(declare-fun b!3952375 () Bool)

(assert (=> b!3952375 (= lt!1381740 (maxPrefix!3475 thiss!20629 (t!328807 rules!2768) lt!1381734))))

(declare-fun lt!1381728 () Option!9002)

(assert (=> b!3952375 (= lt!1381728 call!285252)))

(assert (=> b!3952375 (= e!2446537 (ite (and ((_ is None!9001) lt!1381728) ((_ is None!9001) lt!1381740)) None!9001 (ite ((_ is None!9001) lt!1381740) lt!1381728 (ite ((_ is None!9001) lt!1381728) lt!1381740 (ite (>= (size!31502 (_1!23798 (v!39341 lt!1381728))) (size!31502 (_1!23798 (v!39341 lt!1381740)))) (Some!9001 (v!39341 lt!1381728)) lt!1381740)))))))

(declare-fun b!3952376 () Bool)

(declare-fun tp!1204174 () Bool)

(assert (=> b!3952376 (= e!2446539 (and (inv!56267 (_1!23798 (v!39341 err!4457))) e!2446526 tp!1204174))))

(assert (= (and start!371592 res!1599222) b!3952372))

(assert (= (and b!3952372 res!1599210) b!3952355))

(assert (= (and b!3952355 res!1599220) b!3952342))

(assert (= (and b!3952342 res!1599213) b!3952352))

(assert (= (and b!3952352 res!1599221) b!3952353))

(assert (= (and b!3952353 res!1599215) b!3952369))

(assert (= (and b!3952369 res!1599212) b!3952341))

(assert (= (and b!3952341 res!1599218) b!3952371))

(assert (= (and b!3952371 res!1599224) b!3952367))

(assert (= (and b!3952371 (not res!1599214)) b!3952344))

(assert (= (and b!3952344 (not res!1599211)) b!3952358))

(assert (= (and b!3952358 res!1599223) b!3952345))

(assert (= (and b!3952345 c!686184) b!3952348))

(assert (= (and b!3952345 (not c!686184)) b!3952346))

(assert (= (and b!3952346 c!686185) b!3952375))

(assert (= (and b!3952346 (not c!686185)) b!3952354))

(assert (= b!3952364 b!3952357))

(assert (= b!3952356 b!3952364))

(assert (= b!3952376 b!3952356))

(assert (= (and b!3952354 ((_ is Some!9001) err!4457)) b!3952376))

(assert (= (or b!3952348 b!3952375) bm!285247))

(assert (= (and b!3952358 (not res!1599209)) b!3952338))

(assert (= (and b!3952338 (not res!1599219)) b!3952360))

(assert (= (and b!3952360 (not res!1599216)) b!3952362))

(assert (= (and b!3952362 (not res!1599208)) b!3952340))

(assert (= (and b!3952340 (not res!1599217)) b!3952339))

(assert (= (and start!371592 ((_ is Cons!42040) suffixResult!91)) b!3952374))

(assert (= (and start!371592 ((_ is Cons!42040) suffix!1176)) b!3952349))

(assert (= b!3952366 b!3952351))

(assert (= b!3952363 b!3952366))

(assert (= (and start!371592 ((_ is Cons!42042) rules!2768)) b!3952363))

(assert (= b!3952370 b!3952350))

(assert (= b!3952347 b!3952370))

(assert (= b!3952368 b!3952347))

(assert (= (and start!371592 ((_ is Cons!42041) prefixTokens!80)) b!3952368))

(assert (= b!3952365 b!3952361))

(assert (= b!3952373 b!3952365))

(assert (= b!3952359 b!3952373))

(assert (= (and start!371592 ((_ is Cons!42041) suffixTokens!72)) b!3952359))

(assert (= (and start!371592 ((_ is Cons!42040) prefix!426)) b!3952343))

(declare-fun m!4521177 () Bool)

(assert (=> b!3952338 m!4521177))

(declare-fun m!4521179 () Bool)

(assert (=> b!3952367 m!4521179))

(declare-fun m!4521181 () Bool)

(assert (=> b!3952356 m!4521181))

(declare-fun m!4521183 () Bool)

(assert (=> b!3952375 m!4521183))

(declare-fun m!4521185 () Bool)

(assert (=> b!3952370 m!4521185))

(declare-fun m!4521187 () Bool)

(assert (=> b!3952370 m!4521187))

(declare-fun m!4521189 () Bool)

(assert (=> b!3952341 m!4521189))

(declare-fun m!4521191 () Bool)

(assert (=> b!3952360 m!4521191))

(declare-fun m!4521193 () Bool)

(assert (=> b!3952339 m!4521193))

(declare-fun m!4521195 () Bool)

(assert (=> b!3952339 m!4521195))

(declare-fun m!4521197 () Bool)

(assert (=> bm!285247 m!4521197))

(declare-fun m!4521199 () Bool)

(assert (=> b!3952371 m!4521199))

(declare-fun m!4521201 () Bool)

(assert (=> b!3952371 m!4521201))

(declare-fun m!4521203 () Bool)

(assert (=> b!3952371 m!4521203))

(declare-fun m!4521205 () Bool)

(assert (=> b!3952371 m!4521205))

(assert (=> b!3952371 m!4521203))

(declare-fun m!4521207 () Bool)

(assert (=> b!3952371 m!4521207))

(declare-fun m!4521209 () Bool)

(assert (=> b!3952371 m!4521209))

(declare-fun m!4521211 () Bool)

(assert (=> b!3952371 m!4521211))

(declare-fun m!4521213 () Bool)

(assert (=> b!3952371 m!4521213))

(assert (=> b!3952371 m!4521213))

(declare-fun m!4521215 () Bool)

(assert (=> b!3952371 m!4521215))

(declare-fun m!4521217 () Bool)

(assert (=> b!3952371 m!4521217))

(declare-fun m!4521219 () Bool)

(assert (=> b!3952371 m!4521219))

(declare-fun m!4521221 () Bool)

(assert (=> b!3952371 m!4521221))

(declare-fun m!4521223 () Bool)

(assert (=> b!3952371 m!4521223))

(declare-fun m!4521225 () Bool)

(assert (=> b!3952371 m!4521225))

(declare-fun m!4521227 () Bool)

(assert (=> b!3952369 m!4521227))

(declare-fun m!4521229 () Bool)

(assert (=> b!3952340 m!4521229))

(declare-fun m!4521231 () Bool)

(assert (=> b!3952358 m!4521231))

(declare-fun m!4521233 () Bool)

(assert (=> b!3952358 m!4521233))

(declare-fun m!4521235 () Bool)

(assert (=> b!3952372 m!4521235))

(declare-fun m!4521237 () Bool)

(assert (=> b!3952364 m!4521237))

(declare-fun m!4521239 () Bool)

(assert (=> b!3952364 m!4521239))

(declare-fun m!4521241 () Bool)

(assert (=> b!3952362 m!4521241))

(declare-fun m!4521243 () Bool)

(assert (=> b!3952362 m!4521243))

(declare-fun m!4521245 () Bool)

(assert (=> b!3952373 m!4521245))

(declare-fun m!4521247 () Bool)

(assert (=> b!3952342 m!4521247))

(declare-fun m!4521249 () Bool)

(assert (=> b!3952347 m!4521249))

(declare-fun m!4521251 () Bool)

(assert (=> b!3952366 m!4521251))

(declare-fun m!4521253 () Bool)

(assert (=> b!3952366 m!4521253))

(declare-fun m!4521255 () Bool)

(assert (=> b!3952365 m!4521255))

(declare-fun m!4521257 () Bool)

(assert (=> b!3952365 m!4521257))

(declare-fun m!4521259 () Bool)

(assert (=> b!3952376 m!4521259))

(declare-fun m!4521261 () Bool)

(assert (=> b!3952344 m!4521261))

(declare-fun m!4521263 () Bool)

(assert (=> b!3952368 m!4521263))

(declare-fun m!4521265 () Bool)

(assert (=> b!3952355 m!4521265))

(declare-fun m!4521267 () Bool)

(assert (=> b!3952352 m!4521267))

(declare-fun m!4521269 () Bool)

(assert (=> b!3952359 m!4521269))

(declare-fun m!4521271 () Bool)

(assert (=> b!3952353 m!4521271))

(declare-fun m!4521273 () Bool)

(assert (=> b!3952353 m!4521273))

(declare-fun m!4521275 () Bool)

(assert (=> b!3952353 m!4521275))

(check-sat (not b!3952365) (not b!3952372) b_and!302941 (not b!3952369) (not b!3952352) b_and!302939 b_and!302943 (not b_next!109407) (not b_next!109415) tp_is_empty!19945 (not b_next!109401) (not b!3952347) b_and!302953 b_and!302947 (not b!3952342) (not b!3952338) (not b!3952362) (not b_next!109403) (not b!3952341) (not b!3952366) (not b!3952374) (not b!3952358) (not b!3952375) b_and!302949 (not b!3952363) (not b!3952339) (not b!3952368) (not b!3952360) (not b!3952356) (not b!3952364) (not b!3952370) b_and!302945 (not b!3952373) (not b!3952344) (not b!3952349) (not b!3952355) (not b!3952376) (not b!3952353) (not b_next!109411) (not b_next!109409) (not b!3952340) (not b_next!109405) (not b!3952343) (not b!3952367) (not b_next!109413) (not b!3952371) (not bm!285247) (not b!3952359) b_and!302951)
(check-sat b_and!302947 b_and!302941 (not b_next!109403) b_and!302949 b_and!302939 b_and!302943 (not b_next!109407) (not b_next!109415) b_and!302945 (not b_next!109401) (not b_next!109411) (not b_next!109409) (not b_next!109405) (not b_next!109413) b_and!302951 b_and!302953)
