; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!372312 () Bool)

(assert start!372312)

(declare-fun b!3958579 () Bool)

(declare-fun b_free!109149 () Bool)

(declare-fun b_next!109853 () Bool)

(assert (=> b!3958579 (= b_free!109149 (not b_next!109853))))

(declare-fun tp!1206407 () Bool)

(declare-fun b_and!303823 () Bool)

(assert (=> b!3958579 (= tp!1206407 b_and!303823)))

(declare-fun b_free!109151 () Bool)

(declare-fun b_next!109855 () Bool)

(assert (=> b!3958579 (= b_free!109151 (not b_next!109855))))

(declare-fun tp!1206414 () Bool)

(declare-fun b_and!303825 () Bool)

(assert (=> b!3958579 (= tp!1206414 b_and!303825)))

(declare-fun b!3958586 () Bool)

(declare-fun b_free!109153 () Bool)

(declare-fun b_next!109857 () Bool)

(assert (=> b!3958586 (= b_free!109153 (not b_next!109857))))

(declare-fun tp!1206402 () Bool)

(declare-fun b_and!303827 () Bool)

(assert (=> b!3958586 (= tp!1206402 b_and!303827)))

(declare-fun b_free!109155 () Bool)

(declare-fun b_next!109859 () Bool)

(assert (=> b!3958586 (= b_free!109155 (not b_next!109859))))

(declare-fun tp!1206403 () Bool)

(declare-fun b_and!303829 () Bool)

(assert (=> b!3958586 (= tp!1206403 b_and!303829)))

(declare-fun b!3958558 () Bool)

(declare-fun b_free!109157 () Bool)

(declare-fun b_next!109861 () Bool)

(assert (=> b!3958558 (= b_free!109157 (not b_next!109861))))

(declare-fun tp!1206401 () Bool)

(declare-fun b_and!303831 () Bool)

(assert (=> b!3958558 (= tp!1206401 b_and!303831)))

(declare-fun b_free!109159 () Bool)

(declare-fun b_next!109863 () Bool)

(assert (=> b!3958558 (= b_free!109159 (not b_next!109863))))

(declare-fun tp!1206412 () Bool)

(declare-fun b_and!303833 () Bool)

(assert (=> b!3958558 (= tp!1206412 b_and!303833)))

(declare-fun b!3958557 () Bool)

(declare-fun e!2450919 () Bool)

(declare-fun lt!1384246 () Int)

(declare-fun lt!1384248 () Int)

(assert (=> b!3958557 (= e!2450919 (> lt!1384246 lt!1384248))))

(declare-fun e!2450915 () Bool)

(assert (=> b!3958558 (= e!2450915 (and tp!1206401 tp!1206412))))

(declare-fun b!3958559 () Bool)

(declare-fun res!1602006 () Bool)

(declare-fun e!2450924 () Bool)

(assert (=> b!3958559 (=> res!1602006 e!2450924)))

(declare-datatypes ((List!42269 0))(
  ( (Nil!42145) (Cons!42145 (h!47565 (_ BitVec 16)) (t!329620 List!42269)) )
))
(declare-datatypes ((TokenValue!6836 0))(
  ( (FloatLiteralValue!13672 (text!48297 List!42269)) (TokenValueExt!6835 (__x!25889 Int)) (Broken!34180 (value!208879 List!42269)) (Object!6959) (End!6836) (Def!6836) (Underscore!6836) (Match!6836) (Else!6836) (Error!6836) (Case!6836) (If!6836) (Extends!6836) (Abstract!6836) (Class!6836) (Val!6836) (DelimiterValue!13672 (del!6896 List!42269)) (KeywordValue!6842 (value!208880 List!42269)) (CommentValue!13672 (value!208881 List!42269)) (WhitespaceValue!13672 (value!208882 List!42269)) (IndentationValue!6836 (value!208883 List!42269)) (String!47897) (Int32!6836) (Broken!34181 (value!208884 List!42269)) (Boolean!6837) (Unit!60629) (OperatorValue!6839 (op!6896 List!42269)) (IdentifierValue!13672 (value!208885 List!42269)) (IdentifierValue!13673 (value!208886 List!42269)) (WhitespaceValue!13673 (value!208887 List!42269)) (True!13672) (False!13672) (Broken!34182 (value!208888 List!42269)) (Broken!34183 (value!208889 List!42269)) (True!13673) (RightBrace!6836) (RightBracket!6836) (Colon!6836) (Null!6836) (Comma!6836) (LeftBracket!6836) (False!13673) (LeftBrace!6836) (ImaginaryLiteralValue!6836 (text!48298 List!42269)) (StringLiteralValue!20508 (value!208890 List!42269)) (EOFValue!6836 (value!208891 List!42269)) (IdentValue!6836 (value!208892 List!42269)) (DelimiterValue!13673 (value!208893 List!42269)) (DedentValue!6836 (value!208894 List!42269)) (NewLineValue!6836 (value!208895 List!42269)) (IntegerValue!20508 (value!208896 (_ BitVec 32)) (text!48299 List!42269)) (IntegerValue!20509 (value!208897 Int) (text!48300 List!42269)) (Times!6836) (Or!6836) (Equal!6836) (Minus!6836) (Broken!34184 (value!208898 List!42269)) (And!6836) (Div!6836) (LessEqual!6836) (Mod!6836) (Concat!18347) (Not!6836) (Plus!6836) (SpaceValue!6836 (value!208899 List!42269)) (IntegerValue!20510 (value!208900 Int) (text!48301 List!42269)) (StringLiteralValue!20509 (text!48302 List!42269)) (FloatLiteralValue!13673 (text!48303 List!42269)) (BytesLiteralValue!6836 (value!208901 List!42269)) (CommentValue!13673 (value!208902 List!42269)) (StringLiteralValue!20510 (value!208903 List!42269)) (ErrorTokenValue!6836 (msg!6897 List!42269)) )
))
(declare-datatypes ((C!23208 0))(
  ( (C!23209 (val!13698 Int)) )
))
(declare-datatypes ((Regex!11511 0))(
  ( (ElementMatch!11511 (c!686986 C!23208)) (Concat!18348 (regOne!23534 Regex!11511) (regTwo!23534 Regex!11511)) (EmptyExpr!11511) (Star!11511 (reg!11840 Regex!11511)) (EmptyLang!11511) (Union!11511 (regOne!23535 Regex!11511) (regTwo!23535 Regex!11511)) )
))
(declare-datatypes ((String!47898 0))(
  ( (String!47899 (value!208904 String)) )
))
(declare-datatypes ((List!42270 0))(
  ( (Nil!42146) (Cons!42146 (h!47566 C!23208) (t!329621 List!42270)) )
))
(declare-datatypes ((IArray!25639 0))(
  ( (IArray!25640 (innerList!12877 List!42270)) )
))
(declare-datatypes ((Conc!12817 0))(
  ( (Node!12817 (left!32002 Conc!12817) (right!32332 Conc!12817) (csize!25864 Int) (cheight!13028 Int)) (Leaf!19827 (xs!16123 IArray!25639) (csize!25865 Int)) (Empty!12817) )
))
(declare-datatypes ((BalanceConc!25228 0))(
  ( (BalanceConc!25229 (c!686987 Conc!12817)) )
))
(declare-datatypes ((TokenValueInjection!13100 0))(
  ( (TokenValueInjection!13101 (toValue!9086 Int) (toChars!8945 Int)) )
))
(declare-datatypes ((Rule!13012 0))(
  ( (Rule!13013 (regex!6606 Regex!11511) (tag!7466 String!47898) (isSeparator!6606 Bool) (transformation!6606 TokenValueInjection!13100)) )
))
(declare-datatypes ((Token!12350 0))(
  ( (Token!12351 (value!208905 TokenValue!6836) (rule!9582 Rule!13012) (size!31566 Int) (originalCharacters!7206 List!42270)) )
))
(declare-datatypes ((List!42271 0))(
  ( (Nil!42147) (Cons!42147 (h!47567 Token!12350) (t!329622 List!42271)) )
))
(declare-datatypes ((tuple2!41434 0))(
  ( (tuple2!41435 (_1!23851 List!42271) (_2!23851 List!42270)) )
))
(declare-fun lt!1384241 () tuple2!41434)

(declare-datatypes ((tuple2!41436 0))(
  ( (tuple2!41437 (_1!23852 Token!12350) (_2!23852 List!42270)) )
))
(declare-datatypes ((Option!9026 0))(
  ( (None!9025) (Some!9025 (v!39371 tuple2!41436)) )
))
(declare-fun lt!1384257 () Option!9026)

(declare-fun lt!1384244 () tuple2!41434)

(declare-fun ++!10969 (List!42271 List!42271) List!42271)

(assert (=> b!3958559 (= res!1602006 (not (= lt!1384244 (tuple2!41435 (++!10969 (Cons!42147 (_1!23852 (v!39371 lt!1384257)) Nil!42147) (_1!23851 lt!1384241)) (_2!23851 lt!1384241)))))))

(declare-fun b!3958560 () Bool)

(declare-fun e!2450931 () Bool)

(declare-fun e!2450937 () Bool)

(assert (=> b!3958560 (= e!2450931 e!2450937)))

(declare-fun res!1602001 () Bool)

(assert (=> b!3958560 (=> res!1602001 e!2450937)))

(declare-fun lt!1384242 () Int)

(declare-fun lt!1384249 () Int)

(declare-fun lt!1384254 () Int)

(assert (=> b!3958560 (= res!1602001 (or (not (= (+ lt!1384249 lt!1384246) lt!1384254)) (<= lt!1384242 lt!1384249)))))

(declare-fun prefix!426 () List!42270)

(declare-fun size!31567 (List!42270) Int)

(assert (=> b!3958560 (= lt!1384249 (size!31567 prefix!426))))

(declare-fun suffixTokens!72 () List!42271)

(declare-fun e!2450927 () Bool)

(declare-fun e!2450926 () Bool)

(declare-fun tp!1206410 () Bool)

(declare-fun b!3958561 () Bool)

(declare-fun inv!56374 (String!47898) Bool)

(declare-fun inv!56377 (TokenValueInjection!13100) Bool)

(assert (=> b!3958561 (= e!2450926 (and tp!1206410 (inv!56374 (tag!7466 (rule!9582 (h!47567 suffixTokens!72)))) (inv!56377 (transformation!6606 (rule!9582 (h!47567 suffixTokens!72)))) e!2450927))))

(declare-fun b!3958562 () Bool)

(declare-fun e!2450933 () Bool)

(declare-fun e!2450913 () Bool)

(assert (=> b!3958562 (= e!2450933 e!2450913)))

(declare-fun res!1602010 () Bool)

(assert (=> b!3958562 (=> (not res!1602010) (not e!2450913))))

(declare-fun suffixResult!91 () List!42270)

(declare-fun lt!1384256 () List!42271)

(assert (=> b!3958562 (= res!1602010 (= lt!1384244 (tuple2!41435 lt!1384256 suffixResult!91)))))

(declare-datatypes ((LexerInterface!6195 0))(
  ( (LexerInterfaceExt!6192 (__x!25890 Int)) (Lexer!6193) )
))
(declare-fun thiss!20629 () LexerInterface!6195)

(declare-datatypes ((List!42272 0))(
  ( (Nil!42148) (Cons!42148 (h!47568 Rule!13012) (t!329623 List!42272)) )
))
(declare-fun rules!2768 () List!42272)

(declare-fun lt!1384251 () List!42270)

(declare-fun lexList!1963 (LexerInterface!6195 List!42272 List!42270) tuple2!41434)

(assert (=> b!3958562 (= lt!1384244 (lexList!1963 thiss!20629 rules!2768 lt!1384251))))

(declare-fun prefixTokens!80 () List!42271)

(assert (=> b!3958562 (= lt!1384256 (++!10969 prefixTokens!80 suffixTokens!72))))

(declare-fun suffix!1176 () List!42270)

(declare-fun ++!10970 (List!42270 List!42270) List!42270)

(assert (=> b!3958562 (= lt!1384251 (++!10970 prefix!426 suffix!1176))))

(declare-fun b!3958563 () Bool)

(declare-fun e!2450921 () Bool)

(assert (=> b!3958563 (= e!2450937 e!2450921)))

(declare-fun res!1602004 () Bool)

(assert (=> b!3958563 (=> res!1602004 e!2450921)))

(declare-fun lt!1384250 () List!42270)

(declare-fun matchR!5532 (Regex!11511 List!42270) Bool)

(assert (=> b!3958563 (= res!1602004 (not (matchR!5532 (regex!6606 (rule!9582 (_1!23852 (v!39371 lt!1384257)))) lt!1384250)))))

(declare-fun lt!1384255 () TokenValue!6836)

(declare-fun maxPrefixOneRule!2549 (LexerInterface!6195 Rule!13012 List!42270) Option!9026)

(assert (=> b!3958563 (= (maxPrefixOneRule!2549 thiss!20629 (rule!9582 (_1!23852 (v!39371 lt!1384257))) lt!1384251) (Some!9025 (tuple2!41437 (Token!12351 lt!1384255 (rule!9582 (_1!23852 (v!39371 lt!1384257))) lt!1384242 lt!1384250) (_2!23852 (v!39371 lt!1384257)))))))

(declare-datatypes ((Unit!60630 0))(
  ( (Unit!60631) )
))
(declare-fun lt!1384243 () Unit!60630)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1375 (LexerInterface!6195 List!42272 List!42270 List!42270 List!42270 Rule!13012) Unit!60630)

(assert (=> b!3958563 (= lt!1384243 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1375 thiss!20629 rules!2768 lt!1384250 lt!1384251 (_2!23852 (v!39371 lt!1384257)) (rule!9582 (_1!23852 (v!39371 lt!1384257)))))))

(declare-fun tp!1206409 () Bool)

(declare-fun e!2450936 () Bool)

(declare-fun e!2450914 () Bool)

(declare-fun b!3958565 () Bool)

(declare-fun inv!21 (TokenValue!6836) Bool)

(assert (=> b!3958565 (= e!2450936 (and (inv!21 (value!208905 (h!47567 prefixTokens!80))) e!2450914 tp!1206409))))

(declare-fun e!2450925 () Bool)

(declare-fun b!3958566 () Bool)

(declare-fun tp!1206413 () Bool)

(declare-fun inv!56378 (Token!12350) Bool)

(assert (=> b!3958566 (= e!2450925 (and (inv!56378 (h!47567 prefixTokens!80)) e!2450936 tp!1206413))))

(declare-fun b!3958567 () Bool)

(declare-fun e!2450910 () Bool)

(declare-fun tp_is_empty!19993 () Bool)

(declare-fun tp!1206406 () Bool)

(assert (=> b!3958567 (= e!2450910 (and tp_is_empty!19993 tp!1206406))))

(declare-fun b!3958568 () Bool)

(declare-fun e!2450923 () Bool)

(declare-fun tp!1206415 () Bool)

(assert (=> b!3958568 (= e!2450923 (and tp_is_empty!19993 tp!1206415))))

(declare-fun b!3958569 () Bool)

(declare-fun e!2450935 () Bool)

(assert (=> b!3958569 (= e!2450913 e!2450935)))

(declare-fun res!1601997 () Bool)

(assert (=> b!3958569 (=> (not res!1601997) (not e!2450935))))

(get-info :version)

(assert (=> b!3958569 (= res!1601997 ((_ is Some!9025) lt!1384257))))

(declare-fun maxPrefix!3499 (LexerInterface!6195 List!42272 List!42270) Option!9026)

(assert (=> b!3958569 (= lt!1384257 (maxPrefix!3499 thiss!20629 rules!2768 lt!1384251))))

(declare-fun tp!1206411 () Bool)

(declare-fun b!3958570 () Bool)

(declare-fun e!2450912 () Bool)

(assert (=> b!3958570 (= e!2450912 (and tp!1206411 (inv!56374 (tag!7466 (h!47568 rules!2768))) (inv!56377 (transformation!6606 (h!47568 rules!2768))) e!2450915))))

(declare-fun tp!1206405 () Bool)

(declare-fun b!3958571 () Bool)

(declare-fun e!2450916 () Bool)

(declare-fun e!2450909 () Bool)

(assert (=> b!3958571 (= e!2450916 (and (inv!56378 (h!47567 suffixTokens!72)) e!2450909 tp!1206405))))

(declare-fun b!3958572 () Bool)

(declare-fun e!2450928 () Bool)

(declare-fun tp!1206400 () Bool)

(assert (=> b!3958572 (= e!2450928 (and e!2450912 tp!1206400))))

(declare-fun b!3958573 () Bool)

(declare-fun res!1602013 () Bool)

(assert (=> b!3958573 (=> res!1602013 e!2450919)))

(declare-fun isEmpty!25196 (List!42270) Bool)

(assert (=> b!3958573 (= res!1602013 (isEmpty!25196 suffix!1176))))

(declare-fun b!3958574 () Bool)

(declare-fun e!2450922 () Bool)

(assert (=> b!3958574 (= e!2450924 e!2450922)))

(declare-fun res!1602016 () Bool)

(assert (=> b!3958574 (=> res!1602016 e!2450922)))

(declare-fun lt!1384258 () Int)

(assert (=> b!3958574 (= res!1602016 (>= lt!1384258 lt!1384246))))

(assert (=> b!3958574 (= lt!1384246 (size!31567 suffix!1176))))

(assert (=> b!3958574 (= lt!1384258 (size!31567 (_2!23852 (v!39371 lt!1384257))))))

(declare-fun res!1602003 () Bool)

(assert (=> start!372312 (=> (not res!1602003) (not e!2450933))))

(assert (=> start!372312 (= res!1602003 ((_ is Lexer!6193) thiss!20629))))

(assert (=> start!372312 e!2450933))

(assert (=> start!372312 e!2450910))

(assert (=> start!372312 true))

(assert (=> start!372312 e!2450923))

(assert (=> start!372312 e!2450928))

(assert (=> start!372312 e!2450925))

(assert (=> start!372312 e!2450916))

(declare-fun e!2450917 () Bool)

(assert (=> start!372312 e!2450917))

(declare-fun b!3958564 () Bool)

(declare-fun e!2450908 () Bool)

(declare-fun e!2450932 () Bool)

(assert (=> b!3958564 (= e!2450908 e!2450932)))

(declare-fun res!1601998 () Bool)

(assert (=> b!3958564 (=> res!1601998 e!2450932)))

(assert (=> b!3958564 (= res!1601998 (>= lt!1384248 lt!1384246))))

(declare-fun lt!1384260 () tuple2!41436)

(assert (=> b!3958564 (= lt!1384248 (size!31567 (_2!23852 lt!1384260)))))

(declare-fun b!3958575 () Bool)

(declare-fun res!1602014 () Bool)

(assert (=> b!3958575 (=> (not res!1602014) (not e!2450933))))

(declare-fun rulesInvariant!5538 (LexerInterface!6195 List!42272) Bool)

(assert (=> b!3958575 (= res!1602014 (rulesInvariant!5538 thiss!20629 rules!2768))))

(declare-fun b!3958576 () Bool)

(assert (=> b!3958576 (= e!2450921 e!2450908)))

(declare-fun res!1602007 () Bool)

(assert (=> b!3958576 (=> res!1602007 e!2450908)))

(declare-fun lt!1384261 () Token!12350)

(assert (=> b!3958576 (= res!1602007 (not (= (_1!23852 lt!1384260) lt!1384261)))))

(declare-fun head!8415 (List!42271) Token!12350)

(assert (=> b!3958576 (= lt!1384261 (head!8415 prefixTokens!80))))

(declare-fun get!13899 (Option!9026) tuple2!41436)

(assert (=> b!3958576 (= lt!1384260 (get!13899 lt!1384257))))

(declare-fun b!3958577 () Bool)

(declare-fun res!1602008 () Bool)

(assert (=> b!3958577 (=> res!1602008 e!2450919)))

(assert (=> b!3958577 (= res!1602008 (not (= (_1!23852 (v!39371 lt!1384257)) lt!1384261)))))

(declare-fun b!3958578 () Bool)

(declare-fun tp!1206416 () Bool)

(assert (=> b!3958578 (= e!2450917 (and tp_is_empty!19993 tp!1206416))))

(assert (=> b!3958579 (= e!2450927 (and tp!1206407 tp!1206414))))

(declare-fun b!3958580 () Bool)

(declare-fun tp!1206408 () Bool)

(declare-fun e!2450918 () Bool)

(assert (=> b!3958580 (= e!2450914 (and tp!1206408 (inv!56374 (tag!7466 (rule!9582 (h!47567 prefixTokens!80)))) (inv!56377 (transformation!6606 (rule!9582 (h!47567 prefixTokens!80)))) e!2450918))))

(declare-fun b!3958581 () Bool)

(declare-fun tp!1206404 () Bool)

(assert (=> b!3958581 (= e!2450909 (and (inv!21 (value!208905 (h!47567 suffixTokens!72))) e!2450926 tp!1206404))))

(declare-fun b!3958582 () Bool)

(declare-fun res!1602017 () Bool)

(assert (=> b!3958582 (=> res!1602017 e!2450924)))

(assert (=> b!3958582 (= res!1602017 (or (not (= lt!1384241 (tuple2!41435 (_1!23851 lt!1384241) (_2!23851 lt!1384241)))) (= (_2!23852 (v!39371 lt!1384257)) suffix!1176)))))

(declare-fun b!3958583 () Bool)

(declare-fun res!1602002 () Bool)

(assert (=> b!3958583 (=> (not res!1602002) (not e!2450933))))

(declare-fun isEmpty!25197 (List!42272) Bool)

(assert (=> b!3958583 (= res!1602002 (not (isEmpty!25197 rules!2768)))))

(declare-fun b!3958584 () Bool)

(assert (=> b!3958584 (= e!2450935 (not e!2450924))))

(declare-fun res!1602000 () Bool)

(assert (=> b!3958584 (=> res!1602000 e!2450924)))

(declare-fun lt!1384262 () List!42270)

(assert (=> b!3958584 (= res!1602000 (not (= lt!1384262 lt!1384251)))))

(assert (=> b!3958584 (= lt!1384241 (lexList!1963 thiss!20629 rules!2768 (_2!23852 (v!39371 lt!1384257))))))

(declare-fun lt!1384247 () List!42270)

(assert (=> b!3958584 (and (= (size!31566 (_1!23852 (v!39371 lt!1384257))) lt!1384242) (= (originalCharacters!7206 (_1!23852 (v!39371 lt!1384257))) lt!1384250) (= (v!39371 lt!1384257) (tuple2!41437 (Token!12351 lt!1384255 (rule!9582 (_1!23852 (v!39371 lt!1384257))) lt!1384242 lt!1384250) lt!1384247)))))

(assert (=> b!3958584 (= lt!1384242 (size!31567 lt!1384250))))

(declare-fun e!2450930 () Bool)

(assert (=> b!3958584 e!2450930))

(declare-fun res!1602015 () Bool)

(assert (=> b!3958584 (=> (not res!1602015) (not e!2450930))))

(assert (=> b!3958584 (= res!1602015 (= (value!208905 (_1!23852 (v!39371 lt!1384257))) lt!1384255))))

(declare-fun apply!9837 (TokenValueInjection!13100 BalanceConc!25228) TokenValue!6836)

(declare-fun seqFromList!4865 (List!42270) BalanceConc!25228)

(assert (=> b!3958584 (= lt!1384255 (apply!9837 (transformation!6606 (rule!9582 (_1!23852 (v!39371 lt!1384257)))) (seqFromList!4865 lt!1384250)))))

(assert (=> b!3958584 (= (_2!23852 (v!39371 lt!1384257)) lt!1384247)))

(declare-fun lt!1384252 () Unit!60630)

(declare-fun lemmaSamePrefixThenSameSuffix!1904 (List!42270 List!42270 List!42270 List!42270 List!42270) Unit!60630)

(assert (=> b!3958584 (= lt!1384252 (lemmaSamePrefixThenSameSuffix!1904 lt!1384250 (_2!23852 (v!39371 lt!1384257)) lt!1384250 lt!1384247 lt!1384251))))

(declare-fun getSuffix!2146 (List!42270 List!42270) List!42270)

(assert (=> b!3958584 (= lt!1384247 (getSuffix!2146 lt!1384251 lt!1384250))))

(declare-fun isPrefix!3695 (List!42270 List!42270) Bool)

(assert (=> b!3958584 (isPrefix!3695 lt!1384250 lt!1384262)))

(assert (=> b!3958584 (= lt!1384262 (++!10970 lt!1384250 (_2!23852 (v!39371 lt!1384257))))))

(declare-fun lt!1384253 () Unit!60630)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!2554 (List!42270 List!42270) Unit!60630)

(assert (=> b!3958584 (= lt!1384253 (lemmaConcatTwoListThenFirstIsPrefix!2554 lt!1384250 (_2!23852 (v!39371 lt!1384257))))))

(declare-fun list!15648 (BalanceConc!25228) List!42270)

(declare-fun charsOf!4424 (Token!12350) BalanceConc!25228)

(assert (=> b!3958584 (= lt!1384250 (list!15648 (charsOf!4424 (_1!23852 (v!39371 lt!1384257)))))))

(declare-fun ruleValid!2548 (LexerInterface!6195 Rule!13012) Bool)

(assert (=> b!3958584 (ruleValid!2548 thiss!20629 (rule!9582 (_1!23852 (v!39371 lt!1384257))))))

(declare-fun lt!1384259 () Unit!60630)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1624 (LexerInterface!6195 Rule!13012 List!42272) Unit!60630)

(assert (=> b!3958584 (= lt!1384259 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1624 thiss!20629 (rule!9582 (_1!23852 (v!39371 lt!1384257))) rules!2768))))

(declare-fun lt!1384245 () Unit!60630)

(declare-fun lemmaCharactersSize!1259 (Token!12350) Unit!60630)

(assert (=> b!3958584 (= lt!1384245 (lemmaCharactersSize!1259 (_1!23852 (v!39371 lt!1384257))))))

(declare-fun b!3958585 () Bool)

(declare-fun res!1601999 () Bool)

(assert (=> b!3958585 (=> res!1601999 e!2450919)))

(declare-fun lt!1384263 () List!42271)

(assert (=> b!3958585 (= res!1601999 (not (= (lexList!1963 thiss!20629 rules!2768 (_2!23852 lt!1384260)) (tuple2!41435 (++!10969 lt!1384263 suffixTokens!72) suffixResult!91))))))

(assert (=> b!3958586 (= e!2450918 (and tp!1206402 tp!1206403))))

(declare-fun b!3958587 () Bool)

(assert (=> b!3958587 (= e!2450932 e!2450919)))

(declare-fun res!1602012 () Bool)

(assert (=> b!3958587 (=> res!1602012 e!2450919)))

(declare-fun isEmpty!25198 (List!42271) Bool)

(assert (=> b!3958587 (= res!1602012 (isEmpty!25198 lt!1384263))))

(declare-fun tail!6141 (List!42271) List!42271)

(assert (=> b!3958587 (= lt!1384263 (tail!6141 prefixTokens!80))))

(declare-fun b!3958588 () Bool)

(assert (=> b!3958588 (= e!2450930 (= (size!31566 (_1!23852 (v!39371 lt!1384257))) (size!31567 (originalCharacters!7206 (_1!23852 (v!39371 lt!1384257))))))))

(declare-fun b!3958589 () Bool)

(declare-fun res!1601996 () Bool)

(assert (=> b!3958589 (=> (not res!1601996) (not e!2450913))))

(assert (=> b!3958589 (= res!1601996 (= (lexList!1963 thiss!20629 rules!2768 suffix!1176) (tuple2!41435 suffixTokens!72 suffixResult!91)))))

(declare-fun b!3958590 () Bool)

(assert (=> b!3958590 (= e!2450922 e!2450931)))

(declare-fun res!1602011 () Bool)

(assert (=> b!3958590 (=> res!1602011 e!2450931)))

(assert (=> b!3958590 (= res!1602011 (not (= (+ lt!1384242 lt!1384258) lt!1384254)))))

(assert (=> b!3958590 (= lt!1384254 (size!31567 lt!1384251))))

(declare-fun b!3958591 () Bool)

(declare-fun res!1602009 () Bool)

(assert (=> b!3958591 (=> (not res!1602009) (not e!2450933))))

(assert (=> b!3958591 (= res!1602009 (not (isEmpty!25198 prefixTokens!80)))))

(declare-fun b!3958592 () Bool)

(declare-fun res!1602005 () Bool)

(assert (=> b!3958592 (=> (not res!1602005) (not e!2450933))))

(assert (=> b!3958592 (= res!1602005 (not (isEmpty!25196 prefix!426)))))

(assert (= (and start!372312 res!1602003) b!3958583))

(assert (= (and b!3958583 res!1602002) b!3958575))

(assert (= (and b!3958575 res!1602014) b!3958591))

(assert (= (and b!3958591 res!1602009) b!3958592))

(assert (= (and b!3958592 res!1602005) b!3958562))

(assert (= (and b!3958562 res!1602010) b!3958589))

(assert (= (and b!3958589 res!1601996) b!3958569))

(assert (= (and b!3958569 res!1601997) b!3958584))

(assert (= (and b!3958584 res!1602015) b!3958588))

(assert (= (and b!3958584 (not res!1602000)) b!3958559))

(assert (= (and b!3958559 (not res!1602006)) b!3958582))

(assert (= (and b!3958582 (not res!1602017)) b!3958574))

(assert (= (and b!3958574 (not res!1602016)) b!3958590))

(assert (= (and b!3958590 (not res!1602011)) b!3958560))

(assert (= (and b!3958560 (not res!1602001)) b!3958563))

(assert (= (and b!3958563 (not res!1602004)) b!3958576))

(assert (= (and b!3958576 (not res!1602007)) b!3958564))

(assert (= (and b!3958564 (not res!1601998)) b!3958587))

(assert (= (and b!3958587 (not res!1602012)) b!3958577))

(assert (= (and b!3958577 (not res!1602008)) b!3958585))

(assert (= (and b!3958585 (not res!1601999)) b!3958573))

(assert (= (and b!3958573 (not res!1602013)) b!3958557))

(assert (= (and start!372312 ((_ is Cons!42146) suffixResult!91)) b!3958567))

(assert (= (and start!372312 ((_ is Cons!42146) suffix!1176)) b!3958568))

(assert (= b!3958570 b!3958558))

(assert (= b!3958572 b!3958570))

(assert (= (and start!372312 ((_ is Cons!42148) rules!2768)) b!3958572))

(assert (= b!3958580 b!3958586))

(assert (= b!3958565 b!3958580))

(assert (= b!3958566 b!3958565))

(assert (= (and start!372312 ((_ is Cons!42147) prefixTokens!80)) b!3958566))

(assert (= b!3958561 b!3958579))

(assert (= b!3958581 b!3958561))

(assert (= b!3958571 b!3958581))

(assert (= (and start!372312 ((_ is Cons!42147) suffixTokens!72)) b!3958571))

(assert (= (and start!372312 ((_ is Cons!42146) prefix!426)) b!3958578))

(declare-fun m!4527405 () Bool)

(assert (=> b!3958589 m!4527405))

(declare-fun m!4527407 () Bool)

(assert (=> b!3958570 m!4527407))

(declare-fun m!4527409 () Bool)

(assert (=> b!3958570 m!4527409))

(declare-fun m!4527411 () Bool)

(assert (=> b!3958576 m!4527411))

(declare-fun m!4527413 () Bool)

(assert (=> b!3958576 m!4527413))

(declare-fun m!4527415 () Bool)

(assert (=> b!3958573 m!4527415))

(declare-fun m!4527417 () Bool)

(assert (=> b!3958592 m!4527417))

(declare-fun m!4527419 () Bool)

(assert (=> b!3958564 m!4527419))

(declare-fun m!4527421 () Bool)

(assert (=> b!3958559 m!4527421))

(declare-fun m!4527423 () Bool)

(assert (=> b!3958566 m!4527423))

(declare-fun m!4527425 () Bool)

(assert (=> b!3958560 m!4527425))

(declare-fun m!4527427 () Bool)

(assert (=> b!3958562 m!4527427))

(declare-fun m!4527429 () Bool)

(assert (=> b!3958562 m!4527429))

(declare-fun m!4527431 () Bool)

(assert (=> b!3958562 m!4527431))

(declare-fun m!4527433 () Bool)

(assert (=> b!3958584 m!4527433))

(declare-fun m!4527435 () Bool)

(assert (=> b!3958584 m!4527435))

(declare-fun m!4527437 () Bool)

(assert (=> b!3958584 m!4527437))

(declare-fun m!4527439 () Bool)

(assert (=> b!3958584 m!4527439))

(declare-fun m!4527441 () Bool)

(assert (=> b!3958584 m!4527441))

(declare-fun m!4527443 () Bool)

(assert (=> b!3958584 m!4527443))

(declare-fun m!4527445 () Bool)

(assert (=> b!3958584 m!4527445))

(declare-fun m!4527447 () Bool)

(assert (=> b!3958584 m!4527447))

(declare-fun m!4527449 () Bool)

(assert (=> b!3958584 m!4527449))

(declare-fun m!4527451 () Bool)

(assert (=> b!3958584 m!4527451))

(declare-fun m!4527453 () Bool)

(assert (=> b!3958584 m!4527453))

(assert (=> b!3958584 m!4527433))

(declare-fun m!4527455 () Bool)

(assert (=> b!3958584 m!4527455))

(declare-fun m!4527457 () Bool)

(assert (=> b!3958584 m!4527457))

(assert (=> b!3958584 m!4527449))

(declare-fun m!4527459 () Bool)

(assert (=> b!3958584 m!4527459))

(declare-fun m!4527461 () Bool)

(assert (=> b!3958591 m!4527461))

(declare-fun m!4527463 () Bool)

(assert (=> b!3958563 m!4527463))

(declare-fun m!4527465 () Bool)

(assert (=> b!3958563 m!4527465))

(declare-fun m!4527467 () Bool)

(assert (=> b!3958563 m!4527467))

(declare-fun m!4527469 () Bool)

(assert (=> b!3958580 m!4527469))

(declare-fun m!4527471 () Bool)

(assert (=> b!3958580 m!4527471))

(declare-fun m!4527473 () Bool)

(assert (=> b!3958565 m!4527473))

(declare-fun m!4527475 () Bool)

(assert (=> b!3958588 m!4527475))

(declare-fun m!4527477 () Bool)

(assert (=> b!3958585 m!4527477))

(declare-fun m!4527479 () Bool)

(assert (=> b!3958585 m!4527479))

(declare-fun m!4527481 () Bool)

(assert (=> b!3958581 m!4527481))

(declare-fun m!4527483 () Bool)

(assert (=> b!3958583 m!4527483))

(declare-fun m!4527485 () Bool)

(assert (=> b!3958575 m!4527485))

(declare-fun m!4527487 () Bool)

(assert (=> b!3958561 m!4527487))

(declare-fun m!4527489 () Bool)

(assert (=> b!3958561 m!4527489))

(declare-fun m!4527491 () Bool)

(assert (=> b!3958571 m!4527491))

(declare-fun m!4527493 () Bool)

(assert (=> b!3958587 m!4527493))

(declare-fun m!4527495 () Bool)

(assert (=> b!3958587 m!4527495))

(declare-fun m!4527497 () Bool)

(assert (=> b!3958574 m!4527497))

(declare-fun m!4527499 () Bool)

(assert (=> b!3958574 m!4527499))

(declare-fun m!4527501 () Bool)

(assert (=> b!3958569 m!4527501))

(declare-fun m!4527503 () Bool)

(assert (=> b!3958590 m!4527503))

(check-sat (not b!3958589) tp_is_empty!19993 (not b!3958590) (not b!3958576) (not b_next!109861) (not b!3958562) (not b!3958575) b_and!303831 (not b!3958591) (not b!3958578) b_and!303823 (not b_next!109857) b_and!303833 (not b!3958573) (not b!3958561) b_and!303829 (not b_next!109855) b_and!303825 (not b!3958568) (not b!3958592) (not b!3958564) (not b!3958585) (not b!3958572) (not b!3958569) (not b!3958563) (not b!3958584) (not b!3958574) (not b_next!109853) (not b!3958587) (not b_next!109863) (not b!3958560) (not b!3958559) (not b!3958581) (not b!3958580) (not b_next!109859) (not b!3958565) (not b!3958570) (not b!3958566) (not b!3958583) b_and!303827 (not b!3958567) (not b!3958571) (not b!3958588))
(check-sat b_and!303829 (not b_next!109861) (not b_next!109859) b_and!303827 b_and!303831 b_and!303823 (not b_next!109857) b_and!303833 (not b_next!109855) b_and!303825 (not b_next!109853) (not b_next!109863))
