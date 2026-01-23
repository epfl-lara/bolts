; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!15762 () Bool)

(assert start!15762)

(declare-fun b!148264 () Bool)

(declare-fun b_free!5297 () Bool)

(declare-fun b_next!5297 () Bool)

(assert (=> b!148264 (= b_free!5297 (not b_next!5297))))

(declare-fun tp!77744 () Bool)

(declare-fun b_and!8273 () Bool)

(assert (=> b!148264 (= tp!77744 b_and!8273)))

(declare-fun b_free!5299 () Bool)

(declare-fun b_next!5299 () Bool)

(assert (=> b!148264 (= b_free!5299 (not b_next!5299))))

(declare-fun tp!77733 () Bool)

(declare-fun b_and!8275 () Bool)

(assert (=> b!148264 (= tp!77733 b_and!8275)))

(declare-fun b!148248 () Bool)

(declare-fun b_free!5301 () Bool)

(declare-fun b_next!5301 () Bool)

(assert (=> b!148248 (= b_free!5301 (not b_next!5301))))

(declare-fun tp!77740 () Bool)

(declare-fun b_and!8277 () Bool)

(assert (=> b!148248 (= tp!77740 b_and!8277)))

(declare-fun b_free!5303 () Bool)

(declare-fun b_next!5303 () Bool)

(assert (=> b!148248 (= b_free!5303 (not b_next!5303))))

(declare-fun tp!77737 () Bool)

(declare-fun b_and!8279 () Bool)

(assert (=> b!148248 (= tp!77737 b_and!8279)))

(declare-fun b!148253 () Bool)

(declare-fun b_free!5305 () Bool)

(declare-fun b_next!5305 () Bool)

(assert (=> b!148253 (= b_free!5305 (not b_next!5305))))

(declare-fun tp!77734 () Bool)

(declare-fun b_and!8281 () Bool)

(assert (=> b!148253 (= tp!77734 b_and!8281)))

(declare-fun b_free!5307 () Bool)

(declare-fun b_next!5307 () Bool)

(assert (=> b!148253 (= b_free!5307 (not b_next!5307))))

(declare-fun tp!77735 () Bool)

(declare-fun b_and!8283 () Bool)

(assert (=> b!148253 (= tp!77735 b_and!8283)))

(declare-fun b!148244 () Bool)

(declare-fun res!68143 () Bool)

(declare-fun e!88252 () Bool)

(assert (=> b!148244 (=> (not res!68143) (not e!88252))))

(declare-datatypes ((List!2579 0))(
  ( (Nil!2569) (Cons!2569 (h!7966 (_ BitVec 16)) (t!24451 List!2579)) )
))
(declare-datatypes ((TokenValue!465 0))(
  ( (FloatLiteralValue!930 (text!3700 List!2579)) (TokenValueExt!464 (__x!2417 Int)) (Broken!2325 (value!16915 List!2579)) (Object!474) (End!465) (Def!465) (Underscore!465) (Match!465) (Else!465) (Error!465) (Case!465) (If!465) (Extends!465) (Abstract!465) (Class!465) (Val!465) (DelimiterValue!930 (del!525 List!2579)) (KeywordValue!471 (value!16916 List!2579)) (CommentValue!930 (value!16917 List!2579)) (WhitespaceValue!930 (value!16918 List!2579)) (IndentationValue!465 (value!16919 List!2579)) (String!3404) (Int32!465) (Broken!2326 (value!16920 List!2579)) (Boolean!466) (Unit!1929) (OperatorValue!468 (op!525 List!2579)) (IdentifierValue!930 (value!16921 List!2579)) (IdentifierValue!931 (value!16922 List!2579)) (WhitespaceValue!931 (value!16923 List!2579)) (True!930) (False!930) (Broken!2327 (value!16924 List!2579)) (Broken!2328 (value!16925 List!2579)) (True!931) (RightBrace!465) (RightBracket!465) (Colon!465) (Null!465) (Comma!465) (LeftBracket!465) (False!931) (LeftBrace!465) (ImaginaryLiteralValue!465 (text!3701 List!2579)) (StringLiteralValue!1395 (value!16926 List!2579)) (EOFValue!465 (value!16927 List!2579)) (IdentValue!465 (value!16928 List!2579)) (DelimiterValue!931 (value!16929 List!2579)) (DedentValue!465 (value!16930 List!2579)) (NewLineValue!465 (value!16931 List!2579)) (IntegerValue!1395 (value!16932 (_ BitVec 32)) (text!3702 List!2579)) (IntegerValue!1396 (value!16933 Int) (text!3703 List!2579)) (Times!465) (Or!465) (Equal!465) (Minus!465) (Broken!2329 (value!16934 List!2579)) (And!465) (Div!465) (LessEqual!465) (Mod!465) (Concat!1132) (Not!465) (Plus!465) (SpaceValue!465 (value!16935 List!2579)) (IntegerValue!1397 (value!16936 Int) (text!3704 List!2579)) (StringLiteralValue!1396 (text!3705 List!2579)) (FloatLiteralValue!931 (text!3706 List!2579)) (BytesLiteralValue!465 (value!16937 List!2579)) (CommentValue!931 (value!16938 List!2579)) (StringLiteralValue!1397 (value!16939 List!2579)) (ErrorTokenValue!465 (msg!526 List!2579)) )
))
(declare-datatypes ((C!2256 0))(
  ( (C!2257 (val!1014 Int)) )
))
(declare-datatypes ((List!2580 0))(
  ( (Nil!2570) (Cons!2570 (h!7967 C!2256) (t!24452 List!2580)) )
))
(declare-datatypes ((IArray!1417 0))(
  ( (IArray!1418 (innerList!766 List!2580)) )
))
(declare-datatypes ((Conc!708 0))(
  ( (Node!708 (left!1940 Conc!708) (right!2270 Conc!708) (csize!1646 Int) (cheight!919 Int)) (Leaf!1269 (xs!3303 IArray!1417) (csize!1647 Int)) (Empty!708) )
))
(declare-datatypes ((BalanceConc!1424 0))(
  ( (BalanceConc!1425 (c!30141 Conc!708)) )
))
(declare-datatypes ((TokenValueInjection!702 0))(
  ( (TokenValueInjection!703 (toValue!1074 Int) (toChars!933 Int)) )
))
(declare-datatypes ((String!3405 0))(
  ( (String!3406 (value!16940 String)) )
))
(declare-datatypes ((Regex!667 0))(
  ( (ElementMatch!667 (c!30142 C!2256)) (Concat!1133 (regOne!1846 Regex!667) (regTwo!1846 Regex!667)) (EmptyExpr!667) (Star!667 (reg!996 Regex!667)) (EmptyLang!667) (Union!667 (regOne!1847 Regex!667) (regTwo!1847 Regex!667)) )
))
(declare-datatypes ((Rule!686 0))(
  ( (Rule!687 (regex!443 Regex!667) (tag!621 String!3405) (isSeparator!443 Bool) (transformation!443 TokenValueInjection!702)) )
))
(declare-datatypes ((Token!630 0))(
  ( (Token!631 (value!16941 TokenValue!465) (rule!950 Rule!686) (size!2211 Int) (originalCharacters!486 List!2580)) )
))
(declare-fun separatorToken!170 () Token!630)

(declare-datatypes ((List!2581 0))(
  ( (Nil!2571) (Cons!2571 (h!7968 Rule!686) (t!24453 List!2581)) )
))
(declare-fun rules!1920 () List!2581)

(declare-datatypes ((LexerInterface!329 0))(
  ( (LexerInterfaceExt!326 (__x!2418 Int)) (Lexer!327) )
))
(declare-fun thiss!17480 () LexerInterface!329)

(declare-fun rulesProduceIndividualToken!78 (LexerInterface!329 List!2581 Token!630) Bool)

(assert (=> b!148244 (= res!68143 (rulesProduceIndividualToken!78 thiss!17480 rules!1920 separatorToken!170))))

(declare-fun b!148245 () Bool)

(declare-fun e!88243 () Bool)

(declare-fun e!88257 () Bool)

(declare-fun tp!77739 () Bool)

(assert (=> b!148245 (= e!88243 (and e!88257 tp!77739))))

(declare-fun b!148246 () Bool)

(declare-fun tp!77741 () Bool)

(declare-fun e!88250 () Bool)

(declare-fun e!88258 () Bool)

(declare-fun inv!21 (TokenValue!465) Bool)

(assert (=> b!148246 (= e!88250 (and (inv!21 (value!16941 separatorToken!170)) e!88258 tp!77741))))

(declare-fun e!88259 () Bool)

(declare-fun b!148247 () Bool)

(declare-fun e!88256 () Bool)

(declare-datatypes ((List!2582 0))(
  ( (Nil!2572) (Cons!2572 (h!7969 Token!630) (t!24454 List!2582)) )
))
(declare-fun tokens!465 () List!2582)

(declare-fun tp!77743 () Bool)

(assert (=> b!148247 (= e!88259 (and (inv!21 (value!16941 (h!7969 tokens!465))) e!88256 tp!77743))))

(declare-fun e!88244 () Bool)

(assert (=> b!148248 (= e!88244 (and tp!77740 tp!77737))))

(declare-fun tp!77736 () Bool)

(declare-fun b!148249 () Bool)

(declare-fun e!88247 () Bool)

(declare-fun inv!3356 (String!3405) Bool)

(declare-fun inv!3359 (TokenValueInjection!702) Bool)

(assert (=> b!148249 (= e!88256 (and tp!77736 (inv!3356 (tag!621 (rule!950 (h!7969 tokens!465)))) (inv!3359 (transformation!443 (rule!950 (h!7969 tokens!465)))) e!88247))))

(declare-fun b!148250 () Bool)

(declare-fun e!88245 () Bool)

(declare-fun tp!77742 () Bool)

(declare-fun inv!3360 (Token!630) Bool)

(assert (=> b!148250 (= e!88245 (and (inv!3360 (h!7969 tokens!465)) e!88259 tp!77742))))

(declare-fun b!148251 () Bool)

(declare-fun res!68145 () Bool)

(declare-fun e!88253 () Bool)

(assert (=> b!148251 (=> (not res!68145) (not e!88253))))

(declare-fun isEmpty!1006 (List!2581) Bool)

(assert (=> b!148251 (= res!68145 (not (isEmpty!1006 rules!1920)))))

(declare-fun b!148252 () Bool)

(declare-fun res!68144 () Bool)

(assert (=> b!148252 (=> (not res!68144) (not e!88252))))

(declare-fun sepAndNonSepRulesDisjointChars!32 (List!2581 List!2581) Bool)

(assert (=> b!148252 (= res!68144 (sepAndNonSepRulesDisjointChars!32 rules!1920 rules!1920))))

(declare-fun e!88254 () Bool)

(assert (=> b!148253 (= e!88254 (and tp!77734 tp!77735))))

(declare-fun b!148255 () Bool)

(assert (=> b!148255 (= e!88253 e!88252)))

(declare-fun res!68139 () Bool)

(assert (=> b!148255 (=> (not res!68139) (not e!88252))))

(declare-datatypes ((IArray!1419 0))(
  ( (IArray!1420 (innerList!767 List!2582)) )
))
(declare-datatypes ((Conc!709 0))(
  ( (Node!709 (left!1941 Conc!709) (right!2271 Conc!709) (csize!1648 Int) (cheight!920 Int)) (Leaf!1270 (xs!3304 IArray!1419) (csize!1649 Int)) (Empty!709) )
))
(declare-datatypes ((BalanceConc!1426 0))(
  ( (BalanceConc!1427 (c!30143 Conc!709)) )
))
(declare-fun lt!42981 () BalanceConc!1426)

(declare-fun rulesProduceEachTokenIndividually!121 (LexerInterface!329 List!2581 BalanceConc!1426) Bool)

(assert (=> b!148255 (= res!68139 (rulesProduceEachTokenIndividually!121 thiss!17480 rules!1920 lt!42981))))

(declare-fun seqFromList!263 (List!2582) BalanceConc!1426)

(assert (=> b!148255 (= lt!42981 (seqFromList!263 tokens!465))))

(declare-fun b!148256 () Bool)

(declare-fun res!68147 () Bool)

(assert (=> b!148256 (=> (not res!68147) (not e!88252))))

(assert (=> b!148256 (= res!68147 (isSeparator!443 (rule!950 separatorToken!170)))))

(declare-fun b!148257 () Bool)

(declare-fun res!68146 () Bool)

(assert (=> b!148257 (=> (not res!68146) (not e!88253))))

(declare-fun rulesInvariant!295 (LexerInterface!329 List!2581) Bool)

(assert (=> b!148257 (= res!68146 (rulesInvariant!295 thiss!17480 rules!1920))))

(declare-fun b!148258 () Bool)

(declare-fun res!68148 () Bool)

(assert (=> b!148258 (=> (not res!68148) (not e!88252))))

(declare-fun lambda!3716 () Int)

(declare-fun forall!423 (List!2582 Int) Bool)

(assert (=> b!148258 (= res!68148 (forall!423 tokens!465 lambda!3716))))

(declare-fun b!148259 () Bool)

(declare-fun tp!77738 () Bool)

(assert (=> b!148259 (= e!88258 (and tp!77738 (inv!3356 (tag!621 (rule!950 separatorToken!170))) (inv!3359 (transformation!443 (rule!950 separatorToken!170))) e!88244))))

(declare-fun b!148260 () Bool)

(declare-fun e!88242 () Bool)

(assert (=> b!148260 (= e!88242 false)))

(declare-fun lt!42984 () List!2580)

(declare-fun list!893 (BalanceConc!1424) List!2580)

(declare-fun charsOf!98 (Token!630) BalanceConc!1424)

(assert (=> b!148260 (= lt!42984 (list!893 (charsOf!98 separatorToken!170)))))

(declare-fun b!148261 () Bool)

(declare-fun res!68141 () Bool)

(assert (=> b!148261 (=> (not res!68141) (not e!88252))))

(get-info :version)

(assert (=> b!148261 (= res!68141 ((_ is Cons!2572) tokens!465))))

(declare-fun b!148262 () Bool)

(declare-fun tp!77745 () Bool)

(assert (=> b!148262 (= e!88257 (and tp!77745 (inv!3356 (tag!621 (h!7968 rules!1920))) (inv!3359 (transformation!443 (h!7968 rules!1920))) e!88254))))

(declare-fun b!148263 () Bool)

(assert (=> b!148263 (= e!88252 e!88242)))

(declare-fun res!68138 () Bool)

(assert (=> b!148263 (=> (not res!68138) (not e!88242))))

(declare-fun lt!42982 () List!2580)

(declare-fun lt!42983 () List!2580)

(assert (=> b!148263 (= res!68138 (= lt!42982 lt!42983))))

(declare-fun printWithSeparatorTokenWhenNeededRec!12 (LexerInterface!329 List!2581 BalanceConc!1426 Token!630 Int) BalanceConc!1424)

(assert (=> b!148263 (= lt!42983 (list!893 (printWithSeparatorTokenWhenNeededRec!12 thiss!17480 rules!1920 lt!42981 separatorToken!170 0)))))

(declare-fun printWithSeparatorTokenWhenNeededList!22 (LexerInterface!329 List!2581 List!2582 Token!630) List!2580)

(assert (=> b!148263 (= lt!42982 (printWithSeparatorTokenWhenNeededList!22 thiss!17480 rules!1920 tokens!465 separatorToken!170))))

(assert (=> b!148264 (= e!88247 (and tp!77744 tp!77733))))

(declare-fun res!68140 () Bool)

(assert (=> start!15762 (=> (not res!68140) (not e!88253))))

(assert (=> start!15762 (= res!68140 ((_ is Lexer!327) thiss!17480))))

(assert (=> start!15762 e!88253))

(assert (=> start!15762 true))

(assert (=> start!15762 e!88243))

(assert (=> start!15762 (and (inv!3360 separatorToken!170) e!88250)))

(assert (=> start!15762 e!88245))

(declare-fun b!148254 () Bool)

(declare-fun res!68142 () Bool)

(assert (=> b!148254 (=> (not res!68142) (not e!88242))))

(declare-fun seqFromList!264 (List!2580) BalanceConc!1424)

(assert (=> b!148254 (= res!68142 (= (list!893 (seqFromList!264 lt!42982)) lt!42983))))

(assert (= (and start!15762 res!68140) b!148251))

(assert (= (and b!148251 res!68145) b!148257))

(assert (= (and b!148257 res!68146) b!148255))

(assert (= (and b!148255 res!68139) b!148244))

(assert (= (and b!148244 res!68143) b!148256))

(assert (= (and b!148256 res!68147) b!148258))

(assert (= (and b!148258 res!68148) b!148252))

(assert (= (and b!148252 res!68144) b!148261))

(assert (= (and b!148261 res!68141) b!148263))

(assert (= (and b!148263 res!68138) b!148254))

(assert (= (and b!148254 res!68142) b!148260))

(assert (= b!148262 b!148253))

(assert (= b!148245 b!148262))

(assert (= (and start!15762 ((_ is Cons!2571) rules!1920)) b!148245))

(assert (= b!148259 b!148248))

(assert (= b!148246 b!148259))

(assert (= start!15762 b!148246))

(assert (= b!148249 b!148264))

(assert (= b!148247 b!148249))

(assert (= b!148250 b!148247))

(assert (= (and start!15762 ((_ is Cons!2572) tokens!465)) b!148250))

(declare-fun m!131523 () Bool)

(assert (=> b!148255 m!131523))

(declare-fun m!131525 () Bool)

(assert (=> b!148255 m!131525))

(declare-fun m!131527 () Bool)

(assert (=> b!148257 m!131527))

(declare-fun m!131529 () Bool)

(assert (=> b!148246 m!131529))

(declare-fun m!131531 () Bool)

(assert (=> start!15762 m!131531))

(declare-fun m!131533 () Bool)

(assert (=> b!148250 m!131533))

(declare-fun m!131535 () Bool)

(assert (=> b!148263 m!131535))

(assert (=> b!148263 m!131535))

(declare-fun m!131537 () Bool)

(assert (=> b!148263 m!131537))

(declare-fun m!131539 () Bool)

(assert (=> b!148263 m!131539))

(declare-fun m!131541 () Bool)

(assert (=> b!148258 m!131541))

(declare-fun m!131543 () Bool)

(assert (=> b!148260 m!131543))

(assert (=> b!148260 m!131543))

(declare-fun m!131545 () Bool)

(assert (=> b!148260 m!131545))

(declare-fun m!131547 () Bool)

(assert (=> b!148251 m!131547))

(declare-fun m!131549 () Bool)

(assert (=> b!148244 m!131549))

(declare-fun m!131551 () Bool)

(assert (=> b!148247 m!131551))

(declare-fun m!131553 () Bool)

(assert (=> b!148259 m!131553))

(declare-fun m!131555 () Bool)

(assert (=> b!148259 m!131555))

(declare-fun m!131557 () Bool)

(assert (=> b!148254 m!131557))

(assert (=> b!148254 m!131557))

(declare-fun m!131559 () Bool)

(assert (=> b!148254 m!131559))

(declare-fun m!131561 () Bool)

(assert (=> b!148249 m!131561))

(declare-fun m!131563 () Bool)

(assert (=> b!148249 m!131563))

(declare-fun m!131565 () Bool)

(assert (=> b!148262 m!131565))

(declare-fun m!131567 () Bool)

(assert (=> b!148262 m!131567))

(declare-fun m!131569 () Bool)

(assert (=> b!148252 m!131569))

(check-sat (not b!148257) (not b!148244) (not b!148255) (not b!148254) (not b_next!5297) (not b!148263) b_and!8275 (not b!148260) (not b!148249) (not b!148252) b_and!8283 b_and!8279 (not b_next!5299) (not b!148247) (not b_next!5307) b_and!8277 b_and!8273 (not b!148250) (not b!148246) b_and!8281 (not b_next!5305) (not b!148251) (not b!148262) (not b_next!5301) (not b!148259) (not b_next!5303) (not start!15762) (not b!148245) (not b!148258))
(check-sat (not b_next!5297) b_and!8275 b_and!8273 b_and!8283 (not b_next!5301) (not b_next!5303) b_and!8279 (not b_next!5299) (not b_next!5307) b_and!8277 b_and!8281 (not b_next!5305))
