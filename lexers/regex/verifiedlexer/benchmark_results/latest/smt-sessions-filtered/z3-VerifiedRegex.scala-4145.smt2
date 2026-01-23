; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!222896 () Bool)

(assert start!222896)

(declare-fun b!2276963 () Bool)

(declare-fun b_free!67885 () Bool)

(declare-fun b_next!68589 () Bool)

(assert (=> b!2276963 (= b_free!67885 (not b_next!68589))))

(declare-fun tp!721421 () Bool)

(declare-fun b_and!179641 () Bool)

(assert (=> b!2276963 (= tp!721421 b_and!179641)))

(declare-fun b_free!67887 () Bool)

(declare-fun b_next!68591 () Bool)

(assert (=> b!2276963 (= b_free!67887 (not b_next!68591))))

(declare-fun tp!721410 () Bool)

(declare-fun b_and!179643 () Bool)

(assert (=> b!2276963 (= tp!721410 b_and!179643)))

(declare-fun b!2276991 () Bool)

(declare-fun b_free!67889 () Bool)

(declare-fun b_next!68593 () Bool)

(assert (=> b!2276991 (= b_free!67889 (not b_next!68593))))

(declare-fun tp!721411 () Bool)

(declare-fun b_and!179645 () Bool)

(assert (=> b!2276991 (= tp!721411 b_and!179645)))

(declare-fun b_free!67891 () Bool)

(declare-fun b_next!68595 () Bool)

(assert (=> b!2276991 (= b_free!67891 (not b_next!68595))))

(declare-fun tp!721418 () Bool)

(declare-fun b_and!179647 () Bool)

(assert (=> b!2276991 (= tp!721418 b_and!179647)))

(declare-fun b!2276972 () Bool)

(declare-fun b_free!67893 () Bool)

(declare-fun b_next!68597 () Bool)

(assert (=> b!2276972 (= b_free!67893 (not b_next!68597))))

(declare-fun tp!721414 () Bool)

(declare-fun b_and!179649 () Bool)

(assert (=> b!2276972 (= tp!721414 b_and!179649)))

(declare-fun b_free!67895 () Bool)

(declare-fun b_next!68599 () Bool)

(assert (=> b!2276972 (= b_free!67895 (not b_next!68599))))

(declare-fun tp!721419 () Bool)

(declare-fun b_and!179651 () Bool)

(assert (=> b!2276972 (= tp!721419 b_and!179651)))

(declare-fun b!2276980 () Bool)

(declare-fun b_free!67897 () Bool)

(declare-fun b_next!68601 () Bool)

(assert (=> b!2276980 (= b_free!67897 (not b_next!68601))))

(declare-fun tp!721417 () Bool)

(declare-fun b_and!179653 () Bool)

(assert (=> b!2276980 (= tp!721417 b_and!179653)))

(declare-fun b_free!67899 () Bool)

(declare-fun b_next!68603 () Bool)

(assert (=> b!2276980 (= b_free!67899 (not b_next!68603))))

(declare-fun tp!721415 () Bool)

(declare-fun b_and!179655 () Bool)

(assert (=> b!2276980 (= tp!721415 b_and!179655)))

(declare-fun b!2276961 () Bool)

(declare-fun e!1458455 () Bool)

(declare-datatypes ((C!13484 0))(
  ( (C!13485 (val!7790 Int)) )
))
(declare-datatypes ((List!27169 0))(
  ( (Nil!27075) (Cons!27075 (h!32476 C!13484) (t!203163 List!27169)) )
))
(declare-fun lt!845429 () List!27169)

(declare-fun input!1722 () List!27169)

(assert (=> b!2276961 (= e!1458455 (= lt!845429 input!1722))))

(declare-fun b!2276962 () Bool)

(declare-fun e!1458480 () Bool)

(declare-fun tp_is_empty!10559 () Bool)

(declare-fun tp!721425 () Bool)

(assert (=> b!2276962 (= e!1458480 (and tp_is_empty!10559 tp!721425))))

(declare-fun e!1458465 () Bool)

(assert (=> b!2276963 (= e!1458465 (and tp!721421 tp!721410))))

(declare-fun b!2276964 () Bool)

(declare-fun e!1458477 () Bool)

(declare-datatypes ((List!27170 0))(
  ( (Nil!27076) (Cons!27076 (h!32477 (_ BitVec 16)) (t!203164 List!27170)) )
))
(declare-datatypes ((TokenValue!4483 0))(
  ( (FloatLiteralValue!8966 (text!31826 List!27170)) (TokenValueExt!4482 (__x!18026 Int)) (Broken!22415 (value!136942 List!27170)) (Object!4576) (End!4483) (Def!4483) (Underscore!4483) (Match!4483) (Else!4483) (Error!4483) (Case!4483) (If!4483) (Extends!4483) (Abstract!4483) (Class!4483) (Val!4483) (DelimiterValue!8966 (del!4543 List!27170)) (KeywordValue!4489 (value!136943 List!27170)) (CommentValue!8966 (value!136944 List!27170)) (WhitespaceValue!8966 (value!136945 List!27170)) (IndentationValue!4483 (value!136946 List!27170)) (String!29518) (Int32!4483) (Broken!22416 (value!136947 List!27170)) (Boolean!4484) (Unit!40013) (OperatorValue!4486 (op!4543 List!27170)) (IdentifierValue!8966 (value!136948 List!27170)) (IdentifierValue!8967 (value!136949 List!27170)) (WhitespaceValue!8967 (value!136950 List!27170)) (True!8966) (False!8966) (Broken!22417 (value!136951 List!27170)) (Broken!22418 (value!136952 List!27170)) (True!8967) (RightBrace!4483) (RightBracket!4483) (Colon!4483) (Null!4483) (Comma!4483) (LeftBracket!4483) (False!8967) (LeftBrace!4483) (ImaginaryLiteralValue!4483 (text!31827 List!27170)) (StringLiteralValue!13449 (value!136953 List!27170)) (EOFValue!4483 (value!136954 List!27170)) (IdentValue!4483 (value!136955 List!27170)) (DelimiterValue!8967 (value!136956 List!27170)) (DedentValue!4483 (value!136957 List!27170)) (NewLineValue!4483 (value!136958 List!27170)) (IntegerValue!13449 (value!136959 (_ BitVec 32)) (text!31828 List!27170)) (IntegerValue!13450 (value!136960 Int) (text!31829 List!27170)) (Times!4483) (Or!4483) (Equal!4483) (Minus!4483) (Broken!22419 (value!136961 List!27170)) (And!4483) (Div!4483) (LessEqual!4483) (Mod!4483) (Concat!11152) (Not!4483) (Plus!4483) (SpaceValue!4483 (value!136962 List!27170)) (IntegerValue!13451 (value!136963 Int) (text!31830 List!27170)) (StringLiteralValue!13450 (text!31831 List!27170)) (FloatLiteralValue!8967 (text!31832 List!27170)) (BytesLiteralValue!4483 (value!136964 List!27170)) (CommentValue!8967 (value!136965 List!27170)) (StringLiteralValue!13451 (value!136966 List!27170)) (ErrorTokenValue!4483 (msg!4544 List!27170)) )
))
(declare-datatypes ((IArray!17585 0))(
  ( (IArray!17586 (innerList!8850 List!27169)) )
))
(declare-datatypes ((Conc!8790 0))(
  ( (Node!8790 (left!20543 Conc!8790) (right!20873 Conc!8790) (csize!17810 Int) (cheight!9001 Int)) (Leaf!12936 (xs!11732 IArray!17585) (csize!17811 Int)) (Empty!8790) )
))
(declare-datatypes ((BalanceConc!17308 0))(
  ( (BalanceConc!17309 (c!361426 Conc!8790)) )
))
(declare-datatypes ((Regex!6669 0))(
  ( (ElementMatch!6669 (c!361427 C!13484)) (Concat!11153 (regOne!13850 Regex!6669) (regTwo!13850 Regex!6669)) (EmptyExpr!6669) (Star!6669 (reg!6998 Regex!6669)) (EmptyLang!6669) (Union!6669 (regOne!13851 Regex!6669) (regTwo!13851 Regex!6669)) )
))
(declare-datatypes ((String!29519 0))(
  ( (String!29520 (value!136967 String)) )
))
(declare-datatypes ((TokenValueInjection!8506 0))(
  ( (TokenValueInjection!8507 (toValue!6099 Int) (toChars!5958 Int)) )
))
(declare-datatypes ((Rule!8442 0))(
  ( (Rule!8443 (regex!4321 Regex!6669) (tag!4811 String!29519) (isSeparator!4321 Bool) (transformation!4321 TokenValueInjection!8506)) )
))
(declare-fun r!2363 () Rule!8442)

(declare-datatypes ((Token!8120 0))(
  ( (Token!8121 (value!136968 TokenValue!4483) (rule!6645 Rule!8442) (size!21278 Int) (originalCharacters!5091 List!27169)) )
))
(declare-datatypes ((List!27171 0))(
  ( (Nil!27077) (Cons!27077 (h!32478 Token!8120) (t!203165 List!27171)) )
))
(declare-fun tokens!456 () List!27171)

(declare-fun matchR!2926 (Regex!6669 List!27169) Bool)

(declare-fun list!10532 (BalanceConc!17308) List!27169)

(declare-fun charsOf!2709 (Token!8120) BalanceConc!17308)

(declare-fun head!4924 (List!27171) Token!8120)

(assert (=> b!2276964 (= e!1458477 (not (matchR!2926 (regex!4321 r!2363) (list!10532 (charsOf!2709 (head!4924 tokens!456))))))))

(declare-fun b!2276965 () Bool)

(declare-fun e!1458482 () Bool)

(declare-fun e!1458468 () Bool)

(declare-fun tp!721423 () Bool)

(assert (=> b!2276965 (= e!1458482 (and e!1458468 tp!721423))))

(declare-fun b!2276966 () Bool)

(declare-fun e!1458457 () Bool)

(declare-fun e!1458464 () Bool)

(assert (=> b!2276966 (= e!1458457 e!1458464)))

(declare-fun res!973160 () Bool)

(assert (=> b!2276966 (=> res!973160 e!1458464)))

(declare-datatypes ((tuple2!26790 0))(
  ( (tuple2!26791 (_1!15905 Token!8120) (_2!15905 List!27169)) )
))
(declare-fun lt!845431 () tuple2!26790)

(assert (=> b!2276966 (= res!973160 (not (= (h!32478 tokens!456) (_1!15905 lt!845431))))))

(declare-datatypes ((List!27172 0))(
  ( (Nil!27078) (Cons!27078 (h!32479 Rule!8442) (t!203166 List!27172)) )
))
(declare-fun rules!1750 () List!27172)

(declare-datatypes ((LexerInterface!3918 0))(
  ( (LexerInterfaceExt!3915 (__x!18027 Int)) (Lexer!3916) )
))
(declare-fun thiss!16613 () LexerInterface!3918)

(declare-datatypes ((Option!5305 0))(
  ( (None!5304) (Some!5304 (v!30360 tuple2!26790)) )
))
(declare-fun get!8161 (Option!5305) tuple2!26790)

(declare-fun maxPrefix!2182 (LexerInterface!3918 List!27172 List!27169) Option!5305)

(assert (=> b!2276966 (= lt!845431 (get!8161 (maxPrefix!2182 thiss!16613 rules!1750 input!1722)))))

(declare-fun b!2276967 () Bool)

(declare-fun res!973150 () Bool)

(declare-fun e!1458473 () Bool)

(assert (=> b!2276967 (=> (not res!973150) (not e!1458473))))

(declare-fun rulesInvariant!3420 (LexerInterface!3918 List!27172) Bool)

(assert (=> b!2276967 (= res!973150 (rulesInvariant!3420 thiss!16613 rules!1750))))

(declare-fun e!1458456 () Bool)

(declare-fun tp!721412 () Bool)

(declare-fun b!2276968 () Bool)

(declare-fun e!1458472 () Bool)

(declare-fun inv!21 (TokenValue!4483) Bool)

(assert (=> b!2276968 (= e!1458472 (and (inv!21 (value!136968 (h!32478 tokens!456))) e!1458456 tp!721412))))

(declare-fun tp!721408 () Bool)

(declare-fun b!2276969 () Bool)

(declare-fun e!1458471 () Bool)

(declare-fun inv!36654 (Token!8120) Bool)

(assert (=> b!2276969 (= e!1458471 (and (inv!36654 (h!32478 tokens!456)) e!1458472 tp!721408))))

(declare-fun b!2276970 () Bool)

(declare-fun res!973155 () Bool)

(declare-fun e!1458470 () Bool)

(assert (=> b!2276970 (=> (not res!973155) (not e!1458470))))

(declare-fun e!1458461 () Bool)

(assert (=> b!2276970 (= res!973155 e!1458461)))

(declare-fun res!973161 () Bool)

(assert (=> b!2276970 (=> res!973161 e!1458461)))

(declare-fun lt!845432 () Bool)

(assert (=> b!2276970 (= res!973161 lt!845432)))

(declare-fun e!1458479 () Bool)

(declare-fun e!1458469 () Bool)

(declare-fun b!2276971 () Bool)

(declare-fun tp!721409 () Bool)

(declare-fun inv!36651 (String!29519) Bool)

(declare-fun inv!36655 (TokenValueInjection!8506) Bool)

(assert (=> b!2276971 (= e!1458479 (and tp!721409 (inv!36651 (tag!4811 r!2363)) (inv!36655 (transformation!4321 r!2363)) e!1458469))))

(assert (=> b!2276972 (= e!1458469 (and tp!721414 tp!721419))))

(declare-fun e!1458481 () Bool)

(declare-fun b!2276973 () Bool)

(declare-fun tp!721424 () Bool)

(assert (=> b!2276973 (= e!1458456 (and tp!721424 (inv!36651 (tag!4811 (rule!6645 (h!32478 tokens!456)))) (inv!36655 (transformation!4321 (rule!6645 (h!32478 tokens!456)))) e!1458481))))

(declare-fun b!2276974 () Bool)

(declare-fun e!1458476 () Bool)

(declare-fun otherP!12 () List!27169)

(declare-fun size!21279 (BalanceConc!17308) Int)

(declare-fun size!21280 (List!27169) Int)

(assert (=> b!2276974 (= e!1458476 (<= (size!21279 (charsOf!2709 (head!4924 tokens!456))) (size!21280 otherP!12)))))

(declare-fun b!2276975 () Bool)

(declare-fun tp!721420 () Bool)

(assert (=> b!2276975 (= e!1458468 (and tp!721420 (inv!36651 (tag!4811 (h!32479 rules!1750))) (inv!36655 (transformation!4321 (h!32479 rules!1750))) e!1458465))))

(declare-fun res!973151 () Bool)

(assert (=> start!222896 (=> (not res!973151) (not e!1458473))))

(get-info :version)

(assert (=> start!222896 (= res!973151 ((_ is Lexer!3916) thiss!16613))))

(assert (=> start!222896 e!1458473))

(assert (=> start!222896 true))

(declare-fun e!1458466 () Bool)

(assert (=> start!222896 e!1458466))

(declare-fun e!1458474 () Bool)

(assert (=> start!222896 e!1458474))

(assert (=> start!222896 e!1458480))

(declare-fun e!1458458 () Bool)

(assert (=> start!222896 e!1458458))

(assert (=> start!222896 e!1458482))

(assert (=> start!222896 e!1458479))

(assert (=> start!222896 e!1458471))

(declare-fun b!2276976 () Bool)

(declare-fun e!1458467 () Bool)

(assert (=> b!2276976 (= e!1458470 (not e!1458467))))

(declare-fun res!973158 () Bool)

(assert (=> b!2276976 (=> res!973158 e!1458467)))

(assert (=> b!2276976 (= res!973158 e!1458477)))

(declare-fun res!973153 () Bool)

(assert (=> b!2276976 (=> (not res!973153) (not e!1458477))))

(assert (=> b!2276976 (= res!973153 (not lt!845432))))

(declare-fun ruleValid!1411 (LexerInterface!3918 Rule!8442) Bool)

(assert (=> b!2276976 (ruleValid!1411 thiss!16613 r!2363)))

(declare-datatypes ((Unit!40014 0))(
  ( (Unit!40015) )
))
(declare-fun lt!845436 () Unit!40014)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!816 (LexerInterface!3918 Rule!8442 List!27172) Unit!40014)

(assert (=> b!2276976 (= lt!845436 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!816 thiss!16613 r!2363 rules!1750))))

(declare-fun b!2276977 () Bool)

(declare-fun tp!721416 () Bool)

(assert (=> b!2276977 (= e!1458466 (and tp_is_empty!10559 tp!721416))))

(declare-fun b!2276978 () Bool)

(declare-fun tp!721413 () Bool)

(assert (=> b!2276978 (= e!1458458 (and tp_is_empty!10559 tp!721413))))

(declare-fun b!2276979 () Bool)

(declare-fun res!973157 () Bool)

(assert (=> b!2276979 (=> (not res!973157) (not e!1458473))))

(declare-fun isEmpty!15359 (List!27172) Bool)

(assert (=> b!2276979 (= res!973157 (not (isEmpty!15359 rules!1750)))))

(declare-fun e!1458463 () Bool)

(assert (=> b!2276980 (= e!1458463 (and tp!721417 tp!721415))))

(declare-fun b!2276981 () Bool)

(assert (=> b!2276981 (= e!1458464 e!1458455)))

(declare-fun res!973154 () Bool)

(assert (=> b!2276981 (=> res!973154 e!1458455)))

(declare-fun lt!845428 () List!27169)

(declare-fun isPrefix!2311 (List!27169 List!27169) Bool)

(assert (=> b!2276981 (= res!973154 (not (isPrefix!2311 lt!845428 input!1722)))))

(declare-fun lt!845434 () List!27169)

(declare-fun getSuffix!1102 (List!27169 List!27169) List!27169)

(assert (=> b!2276981 (= lt!845434 (getSuffix!1102 input!1722 lt!845428))))

(assert (=> b!2276981 (isPrefix!2311 lt!845428 lt!845429)))

(declare-fun ++!6609 (List!27169 List!27169) List!27169)

(assert (=> b!2276981 (= lt!845429 (++!6609 lt!845428 (_2!15905 lt!845431)))))

(declare-fun lt!845430 () Unit!40014)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!1516 (List!27169 List!27169) Unit!40014)

(assert (=> b!2276981 (= lt!845430 (lemmaConcatTwoListThenFirstIsPrefix!1516 lt!845428 (_2!15905 lt!845431)))))

(assert (=> b!2276981 (= lt!845428 (list!10532 (charsOf!2709 (h!32478 tokens!456))))))

(declare-fun b!2276982 () Bool)

(declare-fun res!973145 () Bool)

(assert (=> b!2276982 (=> res!973145 e!1458457)))

(assert (=> b!2276982 (= res!973145 ((_ is Nil!27077) tokens!456))))

(declare-fun b!2276983 () Bool)

(declare-fun e!1458462 () Bool)

(assert (=> b!2276983 (= e!1458473 e!1458462)))

(declare-fun res!973162 () Bool)

(assert (=> b!2276983 (=> (not res!973162) (not e!1458462))))

(declare-datatypes ((IArray!17587 0))(
  ( (IArray!17588 (innerList!8851 List!27171)) )
))
(declare-datatypes ((Conc!8791 0))(
  ( (Node!8791 (left!20544 Conc!8791) (right!20874 Conc!8791) (csize!17812 Int) (cheight!9002 Int)) (Leaf!12937 (xs!11733 IArray!17587) (csize!17813 Int)) (Empty!8791) )
))
(declare-datatypes ((BalanceConc!17310 0))(
  ( (BalanceConc!17311 (c!361428 Conc!8791)) )
))
(declare-datatypes ((tuple2!26792 0))(
  ( (tuple2!26793 (_1!15906 BalanceConc!17310) (_2!15906 BalanceConc!17308)) )
))
(declare-fun lt!845433 () tuple2!26792)

(declare-fun suffix!886 () List!27169)

(declare-datatypes ((tuple2!26794 0))(
  ( (tuple2!26795 (_1!15907 List!27171) (_2!15907 List!27169)) )
))
(declare-fun list!10533 (BalanceConc!17310) List!27171)

(assert (=> b!2276983 (= res!973162 (= (tuple2!26795 (list!10533 (_1!15906 lt!845433)) (list!10532 (_2!15906 lt!845433))) (tuple2!26795 tokens!456 suffix!886)))))

(declare-fun lex!1757 (LexerInterface!3918 List!27172 BalanceConc!17308) tuple2!26792)

(declare-fun seqFromList!3025 (List!27169) BalanceConc!17308)

(assert (=> b!2276983 (= lt!845433 (lex!1757 thiss!16613 rules!1750 (seqFromList!3025 input!1722)))))

(declare-fun b!2276984 () Bool)

(declare-fun res!973152 () Bool)

(assert (=> b!2276984 (=> (not res!973152) (not e!1458473))))

(declare-fun contains!4691 (List!27172 Rule!8442) Bool)

(assert (=> b!2276984 (= res!973152 (contains!4691 rules!1750 r!2363))))

(declare-fun otherR!12 () Rule!8442)

(declare-fun tp!721422 () Bool)

(declare-fun b!2276985 () Bool)

(assert (=> b!2276985 (= e!1458474 (and tp!721422 (inv!36651 (tag!4811 otherR!12)) (inv!36655 (transformation!4321 otherR!12)) e!1458463))))

(declare-fun b!2276986 () Bool)

(assert (=> b!2276986 (= e!1458467 e!1458457)))

(declare-fun res!973159 () Bool)

(assert (=> b!2276986 (=> res!973159 e!1458457)))

(declare-fun getIndex!334 (List!27172 Rule!8442) Int)

(assert (=> b!2276986 (= res!973159 (<= (getIndex!334 rules!1750 r!2363) (getIndex!334 rules!1750 otherR!12)))))

(assert (=> b!2276986 (ruleValid!1411 thiss!16613 otherR!12)))

(declare-fun lt!845435 () Unit!40014)

(assert (=> b!2276986 (= lt!845435 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!816 thiss!16613 otherR!12 rules!1750))))

(declare-fun b!2276987 () Bool)

(declare-fun res!973148 () Bool)

(assert (=> b!2276987 (=> (not res!973148) (not e!1458470))))

(assert (=> b!2276987 (= res!973148 (not (= r!2363 otherR!12)))))

(declare-fun b!2276988 () Bool)

(declare-fun res!973149 () Bool)

(assert (=> b!2276988 (=> (not res!973149) (not e!1458470))))

(assert (=> b!2276988 (= res!973149 (isPrefix!2311 otherP!12 input!1722))))

(declare-fun b!2276989 () Bool)

(declare-fun res!973146 () Bool)

(assert (=> b!2276989 (=> (not res!973146) (not e!1458473))))

(assert (=> b!2276989 (= res!973146 (contains!4691 rules!1750 otherR!12))))

(declare-fun b!2276990 () Bool)

(assert (=> b!2276990 (= e!1458462 e!1458470)))

(declare-fun res!973156 () Bool)

(assert (=> b!2276990 (=> (not res!973156) (not e!1458470))))

(assert (=> b!2276990 (= res!973156 e!1458476)))

(declare-fun res!973147 () Bool)

(assert (=> b!2276990 (=> res!973147 e!1458476)))

(assert (=> b!2276990 (= res!973147 lt!845432)))

(declare-fun isEmpty!15360 (List!27171) Bool)

(assert (=> b!2276990 (= lt!845432 (isEmpty!15360 tokens!456))))

(assert (=> b!2276991 (= e!1458481 (and tp!721411 tp!721418))))

(declare-fun b!2276992 () Bool)

(assert (=> b!2276992 (= e!1458461 (= (rule!6645 (head!4924 tokens!456)) r!2363))))

(assert (= (and start!222896 res!973151) b!2276979))

(assert (= (and b!2276979 res!973157) b!2276967))

(assert (= (and b!2276967 res!973150) b!2276984))

(assert (= (and b!2276984 res!973152) b!2276989))

(assert (= (and b!2276989 res!973146) b!2276983))

(assert (= (and b!2276983 res!973162) b!2276990))

(assert (= (and b!2276990 (not res!973147)) b!2276974))

(assert (= (and b!2276990 res!973156) b!2276970))

(assert (= (and b!2276970 (not res!973161)) b!2276992))

(assert (= (and b!2276970 res!973155) b!2276988))

(assert (= (and b!2276988 res!973149) b!2276987))

(assert (= (and b!2276987 res!973148) b!2276976))

(assert (= (and b!2276976 res!973153) b!2276964))

(assert (= (and b!2276976 (not res!973158)) b!2276986))

(assert (= (and b!2276986 (not res!973159)) b!2276982))

(assert (= (and b!2276982 (not res!973145)) b!2276966))

(assert (= (and b!2276966 (not res!973160)) b!2276981))

(assert (= (and b!2276981 (not res!973154)) b!2276961))

(assert (= (and start!222896 ((_ is Cons!27075) input!1722)) b!2276977))

(assert (= b!2276985 b!2276980))

(assert (= start!222896 b!2276985))

(assert (= (and start!222896 ((_ is Cons!27075) suffix!886)) b!2276962))

(assert (= (and start!222896 ((_ is Cons!27075) otherP!12)) b!2276978))

(assert (= b!2276975 b!2276963))

(assert (= b!2276965 b!2276975))

(assert (= (and start!222896 ((_ is Cons!27078) rules!1750)) b!2276965))

(assert (= b!2276971 b!2276972))

(assert (= start!222896 b!2276971))

(assert (= b!2276973 b!2276991))

(assert (= b!2276968 b!2276973))

(assert (= b!2276969 b!2276968))

(assert (= (and start!222896 ((_ is Cons!27077) tokens!456)) b!2276969))

(declare-fun m!2705209 () Bool)

(assert (=> b!2276986 m!2705209))

(declare-fun m!2705211 () Bool)

(assert (=> b!2276986 m!2705211))

(declare-fun m!2705213 () Bool)

(assert (=> b!2276986 m!2705213))

(declare-fun m!2705215 () Bool)

(assert (=> b!2276986 m!2705215))

(declare-fun m!2705217 () Bool)

(assert (=> b!2276983 m!2705217))

(declare-fun m!2705219 () Bool)

(assert (=> b!2276983 m!2705219))

(declare-fun m!2705221 () Bool)

(assert (=> b!2276983 m!2705221))

(assert (=> b!2276983 m!2705221))

(declare-fun m!2705223 () Bool)

(assert (=> b!2276983 m!2705223))

(declare-fun m!2705225 () Bool)

(assert (=> b!2276966 m!2705225))

(assert (=> b!2276966 m!2705225))

(declare-fun m!2705227 () Bool)

(assert (=> b!2276966 m!2705227))

(declare-fun m!2705229 () Bool)

(assert (=> b!2276984 m!2705229))

(declare-fun m!2705231 () Bool)

(assert (=> b!2276973 m!2705231))

(declare-fun m!2705233 () Bool)

(assert (=> b!2276973 m!2705233))

(declare-fun m!2705235 () Bool)

(assert (=> b!2276975 m!2705235))

(declare-fun m!2705237 () Bool)

(assert (=> b!2276975 m!2705237))

(declare-fun m!2705239 () Bool)

(assert (=> b!2276967 m!2705239))

(declare-fun m!2705241 () Bool)

(assert (=> b!2276990 m!2705241))

(declare-fun m!2705243 () Bool)

(assert (=> b!2276989 m!2705243))

(declare-fun m!2705245 () Bool)

(assert (=> b!2276971 m!2705245))

(declare-fun m!2705247 () Bool)

(assert (=> b!2276971 m!2705247))

(declare-fun m!2705249 () Bool)

(assert (=> b!2276969 m!2705249))

(declare-fun m!2705251 () Bool)

(assert (=> b!2276988 m!2705251))

(declare-fun m!2705253 () Bool)

(assert (=> b!2276981 m!2705253))

(declare-fun m!2705255 () Bool)

(assert (=> b!2276981 m!2705255))

(declare-fun m!2705257 () Bool)

(assert (=> b!2276981 m!2705257))

(declare-fun m!2705259 () Bool)

(assert (=> b!2276981 m!2705259))

(declare-fun m!2705261 () Bool)

(assert (=> b!2276981 m!2705261))

(declare-fun m!2705263 () Bool)

(assert (=> b!2276981 m!2705263))

(assert (=> b!2276981 m!2705261))

(declare-fun m!2705265 () Bool)

(assert (=> b!2276981 m!2705265))

(declare-fun m!2705267 () Bool)

(assert (=> b!2276974 m!2705267))

(assert (=> b!2276974 m!2705267))

(declare-fun m!2705269 () Bool)

(assert (=> b!2276974 m!2705269))

(assert (=> b!2276974 m!2705269))

(declare-fun m!2705271 () Bool)

(assert (=> b!2276974 m!2705271))

(declare-fun m!2705273 () Bool)

(assert (=> b!2276974 m!2705273))

(declare-fun m!2705275 () Bool)

(assert (=> b!2276985 m!2705275))

(declare-fun m!2705277 () Bool)

(assert (=> b!2276985 m!2705277))

(declare-fun m!2705279 () Bool)

(assert (=> b!2276979 m!2705279))

(assert (=> b!2276992 m!2705267))

(assert (=> b!2276964 m!2705267))

(assert (=> b!2276964 m!2705267))

(assert (=> b!2276964 m!2705269))

(assert (=> b!2276964 m!2705269))

(declare-fun m!2705281 () Bool)

(assert (=> b!2276964 m!2705281))

(assert (=> b!2276964 m!2705281))

(declare-fun m!2705283 () Bool)

(assert (=> b!2276964 m!2705283))

(declare-fun m!2705285 () Bool)

(assert (=> b!2276976 m!2705285))

(declare-fun m!2705287 () Bool)

(assert (=> b!2276976 m!2705287))

(declare-fun m!2705289 () Bool)

(assert (=> b!2276968 m!2705289))

(check-sat (not b!2276966) (not b_next!68595) (not b!2276986) (not b!2276981) (not b_next!68591) (not b!2276965) (not b_next!68601) (not b!2276962) b_and!179645 (not b!2276973) b_and!179655 (not b!2276989) (not b!2276990) (not b!2276983) (not b!2276975) (not b!2276971) (not b!2276974) (not b!2276968) (not b!2276984) (not b!2276979) (not b!2276988) (not b_next!68589) b_and!179653 (not b!2276992) (not b!2276985) (not b!2276967) b_and!179643 (not b!2276976) (not b!2276977) (not b!2276978) (not b_next!68597) (not b_next!68593) b_and!179647 (not b_next!68603) (not b!2276964) b_and!179651 (not b!2276969) b_and!179649 b_and!179641 tp_is_empty!10559 (not b_next!68599))
(check-sat b_and!179655 (not b_next!68595) b_and!179643 (not b_next!68591) b_and!179651 (not b_next!68601) (not b_next!68599) b_and!179645 (not b_next!68589) b_and!179653 (not b_next!68597) (not b_next!68593) b_and!179647 (not b_next!68603) b_and!179649 b_and!179641)
(get-model)

(declare-fun d!673970 () Bool)

(declare-fun res!973178 () Bool)

(declare-fun e!1458486 () Bool)

(assert (=> d!673970 (=> (not res!973178) (not e!1458486))))

(declare-fun isEmpty!15362 (List!27169) Bool)

(assert (=> d!673970 (= res!973178 (not (isEmpty!15362 (originalCharacters!5091 (h!32478 tokens!456)))))))

(assert (=> d!673970 (= (inv!36654 (h!32478 tokens!456)) e!1458486)))

(declare-fun b!2276997 () Bool)

(declare-fun res!973179 () Bool)

(assert (=> b!2276997 (=> (not res!973179) (not e!1458486))))

(declare-fun dynLambda!11755 (Int TokenValue!4483) BalanceConc!17308)

(assert (=> b!2276997 (= res!973179 (= (originalCharacters!5091 (h!32478 tokens!456)) (list!10532 (dynLambda!11755 (toChars!5958 (transformation!4321 (rule!6645 (h!32478 tokens!456)))) (value!136968 (h!32478 tokens!456))))))))

(declare-fun b!2276998 () Bool)

(assert (=> b!2276998 (= e!1458486 (= (size!21278 (h!32478 tokens!456)) (size!21280 (originalCharacters!5091 (h!32478 tokens!456)))))))

(assert (= (and d!673970 res!973178) b!2276997))

(assert (= (and b!2276997 res!973179) b!2276998))

(declare-fun b_lambda!72501 () Bool)

(assert (=> (not b_lambda!72501) (not b!2276997)))

(declare-fun tb!135263 () Bool)

(declare-fun t!203168 () Bool)

(assert (=> (and b!2276963 (= (toChars!5958 (transformation!4321 (h!32479 rules!1750))) (toChars!5958 (transformation!4321 (rule!6645 (h!32478 tokens!456))))) t!203168) tb!135263))

(declare-fun b!2277003 () Bool)

(declare-fun e!1458489 () Bool)

(declare-fun tp!721428 () Bool)

(declare-fun inv!36658 (Conc!8790) Bool)

(assert (=> b!2277003 (= e!1458489 (and (inv!36658 (c!361426 (dynLambda!11755 (toChars!5958 (transformation!4321 (rule!6645 (h!32478 tokens!456)))) (value!136968 (h!32478 tokens!456))))) tp!721428))))

(declare-fun result!164918 () Bool)

(declare-fun inv!36659 (BalanceConc!17308) Bool)

(assert (=> tb!135263 (= result!164918 (and (inv!36659 (dynLambda!11755 (toChars!5958 (transformation!4321 (rule!6645 (h!32478 tokens!456)))) (value!136968 (h!32478 tokens!456)))) e!1458489))))

(assert (= tb!135263 b!2277003))

(declare-fun m!2705291 () Bool)

(assert (=> b!2277003 m!2705291))

(declare-fun m!2705293 () Bool)

(assert (=> tb!135263 m!2705293))

(assert (=> b!2276997 t!203168))

(declare-fun b_and!179657 () Bool)

(assert (= b_and!179643 (and (=> t!203168 result!164918) b_and!179657)))

(declare-fun t!203170 () Bool)

(declare-fun tb!135265 () Bool)

(assert (=> (and b!2276991 (= (toChars!5958 (transformation!4321 (rule!6645 (h!32478 tokens!456)))) (toChars!5958 (transformation!4321 (rule!6645 (h!32478 tokens!456))))) t!203170) tb!135265))

(declare-fun result!164922 () Bool)

(assert (= result!164922 result!164918))

(assert (=> b!2276997 t!203170))

(declare-fun b_and!179659 () Bool)

(assert (= b_and!179647 (and (=> t!203170 result!164922) b_and!179659)))

(declare-fun tb!135267 () Bool)

(declare-fun t!203172 () Bool)

(assert (=> (and b!2276972 (= (toChars!5958 (transformation!4321 r!2363)) (toChars!5958 (transformation!4321 (rule!6645 (h!32478 tokens!456))))) t!203172) tb!135267))

(declare-fun result!164924 () Bool)

(assert (= result!164924 result!164918))

(assert (=> b!2276997 t!203172))

(declare-fun b_and!179661 () Bool)

(assert (= b_and!179651 (and (=> t!203172 result!164924) b_and!179661)))

(declare-fun tb!135269 () Bool)

(declare-fun t!203174 () Bool)

(assert (=> (and b!2276980 (= (toChars!5958 (transformation!4321 otherR!12)) (toChars!5958 (transformation!4321 (rule!6645 (h!32478 tokens!456))))) t!203174) tb!135269))

(declare-fun result!164926 () Bool)

(assert (= result!164926 result!164918))

(assert (=> b!2276997 t!203174))

(declare-fun b_and!179663 () Bool)

(assert (= b_and!179655 (and (=> t!203174 result!164926) b_and!179663)))

(declare-fun m!2705295 () Bool)

(assert (=> d!673970 m!2705295))

(declare-fun m!2705297 () Bool)

(assert (=> b!2276997 m!2705297))

(assert (=> b!2276997 m!2705297))

(declare-fun m!2705299 () Bool)

(assert (=> b!2276997 m!2705299))

(declare-fun m!2705301 () Bool)

(assert (=> b!2276998 m!2705301))

(assert (=> b!2276969 d!673970))

(declare-fun d!673972 () Bool)

(assert (=> d!673972 (= (isEmpty!15360 tokens!456) ((_ is Nil!27077) tokens!456))))

(assert (=> b!2276990 d!673972))

(declare-fun d!673976 () Bool)

(assert (=> d!673976 (= (isEmpty!15359 rules!1750) ((_ is Nil!27078) rules!1750))))

(assert (=> b!2276979 d!673976))

(declare-fun b!2277014 () Bool)

(declare-fun e!1458497 () Bool)

(declare-fun inv!15 (TokenValue!4483) Bool)

(assert (=> b!2277014 (= e!1458497 (inv!15 (value!136968 (h!32478 tokens!456))))))

(declare-fun b!2277015 () Bool)

(declare-fun e!1458498 () Bool)

(declare-fun inv!16 (TokenValue!4483) Bool)

(assert (=> b!2277015 (= e!1458498 (inv!16 (value!136968 (h!32478 tokens!456))))))

(declare-fun d!673980 () Bool)

(declare-fun c!361434 () Bool)

(assert (=> d!673980 (= c!361434 ((_ is IntegerValue!13449) (value!136968 (h!32478 tokens!456))))))

(assert (=> d!673980 (= (inv!21 (value!136968 (h!32478 tokens!456))) e!1458498)))

(declare-fun b!2277016 () Bool)

(declare-fun e!1458496 () Bool)

(assert (=> b!2277016 (= e!1458498 e!1458496)))

(declare-fun c!361433 () Bool)

(assert (=> b!2277016 (= c!361433 ((_ is IntegerValue!13450) (value!136968 (h!32478 tokens!456))))))

(declare-fun b!2277017 () Bool)

(declare-fun res!973182 () Bool)

(assert (=> b!2277017 (=> res!973182 e!1458497)))

(assert (=> b!2277017 (= res!973182 (not ((_ is IntegerValue!13451) (value!136968 (h!32478 tokens!456)))))))

(assert (=> b!2277017 (= e!1458496 e!1458497)))

(declare-fun b!2277018 () Bool)

(declare-fun inv!17 (TokenValue!4483) Bool)

(assert (=> b!2277018 (= e!1458496 (inv!17 (value!136968 (h!32478 tokens!456))))))

(assert (= (and d!673980 c!361434) b!2277015))

(assert (= (and d!673980 (not c!361434)) b!2277016))

(assert (= (and b!2277016 c!361433) b!2277018))

(assert (= (and b!2277016 (not c!361433)) b!2277017))

(assert (= (and b!2277017 (not res!973182)) b!2277014))

(declare-fun m!2705303 () Bool)

(assert (=> b!2277014 m!2705303))

(declare-fun m!2705305 () Bool)

(assert (=> b!2277015 m!2705305))

(declare-fun m!2705307 () Bool)

(assert (=> b!2277018 m!2705307))

(assert (=> b!2276968 d!673980))

(declare-fun b!2277029 () Bool)

(declare-fun e!1458507 () Bool)

(declare-fun tail!3285 (List!27169) List!27169)

(assert (=> b!2277029 (= e!1458507 (isPrefix!2311 (tail!3285 lt!845428) (tail!3285 lt!845429)))))

(declare-fun b!2277027 () Bool)

(declare-fun e!1458505 () Bool)

(assert (=> b!2277027 (= e!1458505 e!1458507)))

(declare-fun res!973193 () Bool)

(assert (=> b!2277027 (=> (not res!973193) (not e!1458507))))

(assert (=> b!2277027 (= res!973193 (not ((_ is Nil!27075) lt!845429)))))

(declare-fun d!673982 () Bool)

(declare-fun e!1458506 () Bool)

(assert (=> d!673982 e!1458506))

(declare-fun res!973194 () Bool)

(assert (=> d!673982 (=> res!973194 e!1458506)))

(declare-fun lt!845439 () Bool)

(assert (=> d!673982 (= res!973194 (not lt!845439))))

(assert (=> d!673982 (= lt!845439 e!1458505)))

(declare-fun res!973191 () Bool)

(assert (=> d!673982 (=> res!973191 e!1458505)))

(assert (=> d!673982 (= res!973191 ((_ is Nil!27075) lt!845428))))

(assert (=> d!673982 (= (isPrefix!2311 lt!845428 lt!845429) lt!845439)))

(declare-fun b!2277030 () Bool)

(assert (=> b!2277030 (= e!1458506 (>= (size!21280 lt!845429) (size!21280 lt!845428)))))

(declare-fun b!2277028 () Bool)

(declare-fun res!973192 () Bool)

(assert (=> b!2277028 (=> (not res!973192) (not e!1458507))))

(declare-fun head!4926 (List!27169) C!13484)

(assert (=> b!2277028 (= res!973192 (= (head!4926 lt!845428) (head!4926 lt!845429)))))

(assert (= (and d!673982 (not res!973191)) b!2277027))

(assert (= (and b!2277027 res!973193) b!2277028))

(assert (= (and b!2277028 res!973192) b!2277029))

(assert (= (and d!673982 (not res!973194)) b!2277030))

(declare-fun m!2705309 () Bool)

(assert (=> b!2277029 m!2705309))

(declare-fun m!2705311 () Bool)

(assert (=> b!2277029 m!2705311))

(assert (=> b!2277029 m!2705309))

(assert (=> b!2277029 m!2705311))

(declare-fun m!2705313 () Bool)

(assert (=> b!2277029 m!2705313))

(declare-fun m!2705315 () Bool)

(assert (=> b!2277030 m!2705315))

(declare-fun m!2705317 () Bool)

(assert (=> b!2277030 m!2705317))

(declare-fun m!2705319 () Bool)

(assert (=> b!2277028 m!2705319))

(declare-fun m!2705321 () Bool)

(assert (=> b!2277028 m!2705321))

(assert (=> b!2276981 d!673982))

(declare-fun b!2277039 () Bool)

(declare-fun e!1458513 () List!27169)

(assert (=> b!2277039 (= e!1458513 (_2!15905 lt!845431))))

(declare-fun e!1458512 () Bool)

(declare-fun lt!845442 () List!27169)

(declare-fun b!2277042 () Bool)

(assert (=> b!2277042 (= e!1458512 (or (not (= (_2!15905 lt!845431) Nil!27075)) (= lt!845442 lt!845428)))))

(declare-fun b!2277041 () Bool)

(declare-fun res!973200 () Bool)

(assert (=> b!2277041 (=> (not res!973200) (not e!1458512))))

(assert (=> b!2277041 (= res!973200 (= (size!21280 lt!845442) (+ (size!21280 lt!845428) (size!21280 (_2!15905 lt!845431)))))))

(declare-fun b!2277040 () Bool)

(assert (=> b!2277040 (= e!1458513 (Cons!27075 (h!32476 lt!845428) (++!6609 (t!203163 lt!845428) (_2!15905 lt!845431))))))

(declare-fun d!673984 () Bool)

(assert (=> d!673984 e!1458512))

(declare-fun res!973199 () Bool)

(assert (=> d!673984 (=> (not res!973199) (not e!1458512))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!3614 (List!27169) (InoxSet C!13484))

(assert (=> d!673984 (= res!973199 (= (content!3614 lt!845442) ((_ map or) (content!3614 lt!845428) (content!3614 (_2!15905 lt!845431)))))))

(assert (=> d!673984 (= lt!845442 e!1458513)))

(declare-fun c!361437 () Bool)

(assert (=> d!673984 (= c!361437 ((_ is Nil!27075) lt!845428))))

(assert (=> d!673984 (= (++!6609 lt!845428 (_2!15905 lt!845431)) lt!845442)))

(assert (= (and d!673984 c!361437) b!2277039))

(assert (= (and d!673984 (not c!361437)) b!2277040))

(assert (= (and d!673984 res!973199) b!2277041))

(assert (= (and b!2277041 res!973200) b!2277042))

(declare-fun m!2705323 () Bool)

(assert (=> b!2277041 m!2705323))

(assert (=> b!2277041 m!2705317))

(declare-fun m!2705325 () Bool)

(assert (=> b!2277041 m!2705325))

(declare-fun m!2705327 () Bool)

(assert (=> b!2277040 m!2705327))

(declare-fun m!2705329 () Bool)

(assert (=> d!673984 m!2705329))

(declare-fun m!2705331 () Bool)

(assert (=> d!673984 m!2705331))

(declare-fun m!2705333 () Bool)

(assert (=> d!673984 m!2705333))

(assert (=> b!2276981 d!673984))

(declare-fun d!673986 () Bool)

(declare-fun list!10535 (Conc!8790) List!27169)

(assert (=> d!673986 (= (list!10532 (charsOf!2709 (h!32478 tokens!456))) (list!10535 (c!361426 (charsOf!2709 (h!32478 tokens!456)))))))

(declare-fun bs!456394 () Bool)

(assert (= bs!456394 d!673986))

(declare-fun m!2705335 () Bool)

(assert (=> bs!456394 m!2705335))

(assert (=> b!2276981 d!673986))

(declare-fun d!673988 () Bool)

(declare-fun lt!845455 () BalanceConc!17308)

(assert (=> d!673988 (= (list!10532 lt!845455) (originalCharacters!5091 (h!32478 tokens!456)))))

(assert (=> d!673988 (= lt!845455 (dynLambda!11755 (toChars!5958 (transformation!4321 (rule!6645 (h!32478 tokens!456)))) (value!136968 (h!32478 tokens!456))))))

(assert (=> d!673988 (= (charsOf!2709 (h!32478 tokens!456)) lt!845455)))

(declare-fun b_lambda!72503 () Bool)

(assert (=> (not b_lambda!72503) (not d!673988)))

(assert (=> d!673988 t!203168))

(declare-fun b_and!179665 () Bool)

(assert (= b_and!179657 (and (=> t!203168 result!164918) b_and!179665)))

(assert (=> d!673988 t!203170))

(declare-fun b_and!179667 () Bool)

(assert (= b_and!179659 (and (=> t!203170 result!164922) b_and!179667)))

(assert (=> d!673988 t!203172))

(declare-fun b_and!179669 () Bool)

(assert (= b_and!179661 (and (=> t!203172 result!164924) b_and!179669)))

(assert (=> d!673988 t!203174))

(declare-fun b_and!179671 () Bool)

(assert (= b_and!179663 (and (=> t!203174 result!164926) b_and!179671)))

(declare-fun m!2705337 () Bool)

(assert (=> d!673988 m!2705337))

(assert (=> d!673988 m!2705297))

(assert (=> b!2276981 d!673988))

(declare-fun b!2277063 () Bool)

(declare-fun e!1458522 () Bool)

(assert (=> b!2277063 (= e!1458522 (isPrefix!2311 (tail!3285 lt!845428) (tail!3285 input!1722)))))

(declare-fun b!2277061 () Bool)

(declare-fun e!1458520 () Bool)

(assert (=> b!2277061 (= e!1458520 e!1458522)))

(declare-fun res!973217 () Bool)

(assert (=> b!2277061 (=> (not res!973217) (not e!1458522))))

(assert (=> b!2277061 (= res!973217 (not ((_ is Nil!27075) input!1722)))))

(declare-fun d!673990 () Bool)

(declare-fun e!1458521 () Bool)

(assert (=> d!673990 e!1458521))

(declare-fun res!973218 () Bool)

(assert (=> d!673990 (=> res!973218 e!1458521)))

(declare-fun lt!845456 () Bool)

(assert (=> d!673990 (= res!973218 (not lt!845456))))

(assert (=> d!673990 (= lt!845456 e!1458520)))

(declare-fun res!973215 () Bool)

(assert (=> d!673990 (=> res!973215 e!1458520)))

(assert (=> d!673990 (= res!973215 ((_ is Nil!27075) lt!845428))))

(assert (=> d!673990 (= (isPrefix!2311 lt!845428 input!1722) lt!845456)))

(declare-fun b!2277064 () Bool)

(assert (=> b!2277064 (= e!1458521 (>= (size!21280 input!1722) (size!21280 lt!845428)))))

(declare-fun b!2277062 () Bool)

(declare-fun res!973216 () Bool)

(assert (=> b!2277062 (=> (not res!973216) (not e!1458522))))

(assert (=> b!2277062 (= res!973216 (= (head!4926 lt!845428) (head!4926 input!1722)))))

(assert (= (and d!673990 (not res!973215)) b!2277061))

(assert (= (and b!2277061 res!973217) b!2277062))

(assert (= (and b!2277062 res!973216) b!2277063))

(assert (= (and d!673990 (not res!973218)) b!2277064))

(assert (=> b!2277063 m!2705309))

(declare-fun m!2705339 () Bool)

(assert (=> b!2277063 m!2705339))

(assert (=> b!2277063 m!2705309))

(assert (=> b!2277063 m!2705339))

(declare-fun m!2705341 () Bool)

(assert (=> b!2277063 m!2705341))

(declare-fun m!2705343 () Bool)

(assert (=> b!2277064 m!2705343))

(assert (=> b!2277064 m!2705317))

(assert (=> b!2277062 m!2705319))

(declare-fun m!2705345 () Bool)

(assert (=> b!2277062 m!2705345))

(assert (=> b!2276981 d!673990))

(declare-fun d!673992 () Bool)

(declare-fun lt!845464 () List!27169)

(assert (=> d!673992 (= (++!6609 lt!845428 lt!845464) input!1722)))

(declare-fun e!1458528 () List!27169)

(assert (=> d!673992 (= lt!845464 e!1458528)))

(declare-fun c!361443 () Bool)

(assert (=> d!673992 (= c!361443 ((_ is Cons!27075) lt!845428))))

(assert (=> d!673992 (>= (size!21280 input!1722) (size!21280 lt!845428))))

(assert (=> d!673992 (= (getSuffix!1102 input!1722 lt!845428) lt!845464)))

(declare-fun b!2277078 () Bool)

(assert (=> b!2277078 (= e!1458528 (getSuffix!1102 (tail!3285 input!1722) (t!203163 lt!845428)))))

(declare-fun b!2277079 () Bool)

(assert (=> b!2277079 (= e!1458528 input!1722)))

(assert (= (and d!673992 c!361443) b!2277078))

(assert (= (and d!673992 (not c!361443)) b!2277079))

(declare-fun m!2705381 () Bool)

(assert (=> d!673992 m!2705381))

(assert (=> d!673992 m!2705343))

(assert (=> d!673992 m!2705317))

(assert (=> b!2277078 m!2705339))

(assert (=> b!2277078 m!2705339))

(declare-fun m!2705383 () Bool)

(assert (=> b!2277078 m!2705383))

(assert (=> b!2276981 d!673992))

(declare-fun d!673996 () Bool)

(assert (=> d!673996 (isPrefix!2311 lt!845428 (++!6609 lt!845428 (_2!15905 lt!845431)))))

(declare-fun lt!845470 () Unit!40014)

(declare-fun choose!13283 (List!27169 List!27169) Unit!40014)

(assert (=> d!673996 (= lt!845470 (choose!13283 lt!845428 (_2!15905 lt!845431)))))

(assert (=> d!673996 (= (lemmaConcatTwoListThenFirstIsPrefix!1516 lt!845428 (_2!15905 lt!845431)) lt!845470)))

(declare-fun bs!456395 () Bool)

(assert (= bs!456395 d!673996))

(assert (=> bs!456395 m!2705255))

(assert (=> bs!456395 m!2705255))

(declare-fun m!2705395 () Bool)

(assert (=> bs!456395 m!2705395))

(declare-fun m!2705397 () Bool)

(assert (=> bs!456395 m!2705397))

(assert (=> b!2276981 d!673996))

(declare-fun d!674000 () Bool)

(assert (=> d!674000 (= (inv!36651 (tag!4811 r!2363)) (= (mod (str.len (value!136967 (tag!4811 r!2363))) 2) 0))))

(assert (=> b!2276971 d!674000))

(declare-fun d!674002 () Bool)

(declare-fun res!973246 () Bool)

(declare-fun e!1458546 () Bool)

(assert (=> d!674002 (=> (not res!973246) (not e!1458546))))

(declare-fun semiInverseModEq!1744 (Int Int) Bool)

(assert (=> d!674002 (= res!973246 (semiInverseModEq!1744 (toChars!5958 (transformation!4321 r!2363)) (toValue!6099 (transformation!4321 r!2363))))))

(assert (=> d!674002 (= (inv!36655 (transformation!4321 r!2363)) e!1458546)))

(declare-fun b!2277100 () Bool)

(declare-fun equivClasses!1663 (Int Int) Bool)

(assert (=> b!2277100 (= e!1458546 (equivClasses!1663 (toChars!5958 (transformation!4321 r!2363)) (toValue!6099 (transformation!4321 r!2363))))))

(assert (= (and d!674002 res!973246) b!2277100))

(declare-fun m!2705407 () Bool)

(assert (=> d!674002 m!2705407))

(declare-fun m!2705409 () Bool)

(assert (=> b!2277100 m!2705409))

(assert (=> b!2276971 d!674002))

(declare-fun d!674010 () Bool)

(assert (=> d!674010 (= (head!4924 tokens!456) (h!32478 tokens!456))))

(assert (=> b!2276992 d!674010))

(declare-fun d!674012 () Bool)

(assert (=> d!674012 (= (inv!36651 (tag!4811 (rule!6645 (h!32478 tokens!456)))) (= (mod (str.len (value!136967 (tag!4811 (rule!6645 (h!32478 tokens!456))))) 2) 0))))

(assert (=> b!2276973 d!674012))

(declare-fun d!674014 () Bool)

(declare-fun res!973251 () Bool)

(declare-fun e!1458551 () Bool)

(assert (=> d!674014 (=> (not res!973251) (not e!1458551))))

(assert (=> d!674014 (= res!973251 (semiInverseModEq!1744 (toChars!5958 (transformation!4321 (rule!6645 (h!32478 tokens!456)))) (toValue!6099 (transformation!4321 (rule!6645 (h!32478 tokens!456))))))))

(assert (=> d!674014 (= (inv!36655 (transformation!4321 (rule!6645 (h!32478 tokens!456)))) e!1458551)))

(declare-fun b!2277109 () Bool)

(assert (=> b!2277109 (= e!1458551 (equivClasses!1663 (toChars!5958 (transformation!4321 (rule!6645 (h!32478 tokens!456)))) (toValue!6099 (transformation!4321 (rule!6645 (h!32478 tokens!456))))))))

(assert (= (and d!674014 res!973251) b!2277109))

(declare-fun m!2705411 () Bool)

(assert (=> d!674014 m!2705411))

(declare-fun m!2705413 () Bool)

(assert (=> b!2277109 m!2705413))

(assert (=> b!2276973 d!674014))

(declare-fun d!674016 () Bool)

(declare-fun list!10537 (Conc!8791) List!27171)

(assert (=> d!674016 (= (list!10533 (_1!15906 lt!845433)) (list!10537 (c!361428 (_1!15906 lt!845433))))))

(declare-fun bs!456396 () Bool)

(assert (= bs!456396 d!674016))

(declare-fun m!2705429 () Bool)

(assert (=> bs!456396 m!2705429))

(assert (=> b!2276983 d!674016))

(declare-fun d!674020 () Bool)

(assert (=> d!674020 (= (list!10532 (_2!15906 lt!845433)) (list!10535 (c!361426 (_2!15906 lt!845433))))))

(declare-fun bs!456397 () Bool)

(assert (= bs!456397 d!674020))

(declare-fun m!2705431 () Bool)

(assert (=> bs!456397 m!2705431))

(assert (=> b!2276983 d!674020))

(declare-fun b!2277267 () Bool)

(declare-fun e!1458646 () Bool)

(declare-fun lt!845512 () tuple2!26792)

(declare-fun isEmpty!15365 (BalanceConc!17310) Bool)

(assert (=> b!2277267 (= e!1458646 (not (isEmpty!15365 (_1!15906 lt!845512))))))

(declare-fun e!1458644 () Bool)

(declare-fun b!2277268 () Bool)

(declare-fun lexList!1088 (LexerInterface!3918 List!27172 List!27169) tuple2!26794)

(assert (=> b!2277268 (= e!1458644 (= (list!10532 (_2!15906 lt!845512)) (_2!15907 (lexList!1088 thiss!16613 rules!1750 (list!10532 (seqFromList!3025 input!1722))))))))

(declare-fun b!2277269 () Bool)

(declare-fun e!1458645 () Bool)

(assert (=> b!2277269 (= e!1458645 (= (_2!15906 lt!845512) (seqFromList!3025 input!1722)))))

(declare-fun b!2277270 () Bool)

(assert (=> b!2277270 (= e!1458645 e!1458646)))

(declare-fun res!973329 () Bool)

(assert (=> b!2277270 (= res!973329 (< (size!21279 (_2!15906 lt!845512)) (size!21279 (seqFromList!3025 input!1722))))))

(assert (=> b!2277270 (=> (not res!973329) (not e!1458646))))

(declare-fun b!2277271 () Bool)

(declare-fun res!973330 () Bool)

(assert (=> b!2277271 (=> (not res!973330) (not e!1458644))))

(assert (=> b!2277271 (= res!973330 (= (list!10533 (_1!15906 lt!845512)) (_1!15907 (lexList!1088 thiss!16613 rules!1750 (list!10532 (seqFromList!3025 input!1722))))))))

(declare-fun d!674022 () Bool)

(assert (=> d!674022 e!1458644))

(declare-fun res!973331 () Bool)

(assert (=> d!674022 (=> (not res!973331) (not e!1458644))))

(assert (=> d!674022 (= res!973331 e!1458645)))

(declare-fun c!361481 () Bool)

(declare-fun size!21282 (BalanceConc!17310) Int)

(assert (=> d!674022 (= c!361481 (> (size!21282 (_1!15906 lt!845512)) 0))))

(declare-fun lexTailRecV2!763 (LexerInterface!3918 List!27172 BalanceConc!17308 BalanceConc!17308 BalanceConc!17308 BalanceConc!17310) tuple2!26792)

(assert (=> d!674022 (= lt!845512 (lexTailRecV2!763 thiss!16613 rules!1750 (seqFromList!3025 input!1722) (BalanceConc!17309 Empty!8790) (seqFromList!3025 input!1722) (BalanceConc!17311 Empty!8791)))))

(assert (=> d!674022 (= (lex!1757 thiss!16613 rules!1750 (seqFromList!3025 input!1722)) lt!845512)))

(assert (= (and d!674022 c!361481) b!2277270))

(assert (= (and d!674022 (not c!361481)) b!2277269))

(assert (= (and b!2277270 res!973329) b!2277267))

(assert (= (and d!674022 res!973331) b!2277271))

(assert (= (and b!2277271 res!973330) b!2277268))

(declare-fun m!2705567 () Bool)

(assert (=> b!2277267 m!2705567))

(declare-fun m!2705569 () Bool)

(assert (=> d!674022 m!2705569))

(assert (=> d!674022 m!2705221))

(assert (=> d!674022 m!2705221))

(declare-fun m!2705571 () Bool)

(assert (=> d!674022 m!2705571))

(declare-fun m!2705573 () Bool)

(assert (=> b!2277268 m!2705573))

(assert (=> b!2277268 m!2705221))

(declare-fun m!2705575 () Bool)

(assert (=> b!2277268 m!2705575))

(assert (=> b!2277268 m!2705575))

(declare-fun m!2705577 () Bool)

(assert (=> b!2277268 m!2705577))

(declare-fun m!2705579 () Bool)

(assert (=> b!2277270 m!2705579))

(assert (=> b!2277270 m!2705221))

(declare-fun m!2705581 () Bool)

(assert (=> b!2277270 m!2705581))

(declare-fun m!2705583 () Bool)

(assert (=> b!2277271 m!2705583))

(assert (=> b!2277271 m!2705221))

(assert (=> b!2277271 m!2705575))

(assert (=> b!2277271 m!2705575))

(assert (=> b!2277271 m!2705577))

(assert (=> b!2276983 d!674022))

(declare-fun d!674090 () Bool)

(declare-fun fromListB!1354 (List!27169) BalanceConc!17308)

(assert (=> d!674090 (= (seqFromList!3025 input!1722) (fromListB!1354 input!1722))))

(declare-fun bs!456407 () Bool)

(assert (= bs!456407 d!674090))

(declare-fun m!2705589 () Bool)

(assert (=> bs!456407 m!2705589))

(assert (=> b!2276983 d!674090))

(declare-fun d!674092 () Bool)

(assert (=> d!674092 (= (inv!36651 (tag!4811 otherR!12)) (= (mod (str.len (value!136967 (tag!4811 otherR!12))) 2) 0))))

(assert (=> b!2276985 d!674092))

(declare-fun d!674094 () Bool)

(declare-fun res!973332 () Bool)

(declare-fun e!1458659 () Bool)

(assert (=> d!674094 (=> (not res!973332) (not e!1458659))))

(assert (=> d!674094 (= res!973332 (semiInverseModEq!1744 (toChars!5958 (transformation!4321 otherR!12)) (toValue!6099 (transformation!4321 otherR!12))))))

(assert (=> d!674094 (= (inv!36655 (transformation!4321 otherR!12)) e!1458659)))

(declare-fun b!2277289 () Bool)

(assert (=> b!2277289 (= e!1458659 (equivClasses!1663 (toChars!5958 (transformation!4321 otherR!12)) (toValue!6099 (transformation!4321 otherR!12))))))

(assert (= (and d!674094 res!973332) b!2277289))

(declare-fun m!2705591 () Bool)

(assert (=> d!674094 m!2705591))

(declare-fun m!2705593 () Bool)

(assert (=> b!2277289 m!2705593))

(assert (=> b!2276985 d!674094))

(declare-fun d!674096 () Bool)

(declare-fun lt!845515 () Int)

(assert (=> d!674096 (= lt!845515 (size!21280 (list!10532 (charsOf!2709 (head!4924 tokens!456)))))))

(declare-fun size!21283 (Conc!8790) Int)

(assert (=> d!674096 (= lt!845515 (size!21283 (c!361426 (charsOf!2709 (head!4924 tokens!456)))))))

(assert (=> d!674096 (= (size!21279 (charsOf!2709 (head!4924 tokens!456))) lt!845515)))

(declare-fun bs!456408 () Bool)

(assert (= bs!456408 d!674096))

(assert (=> bs!456408 m!2705269))

(assert (=> bs!456408 m!2705281))

(assert (=> bs!456408 m!2705281))

(declare-fun m!2705595 () Bool)

(assert (=> bs!456408 m!2705595))

(declare-fun m!2705597 () Bool)

(assert (=> bs!456408 m!2705597))

(assert (=> b!2276974 d!674096))

(declare-fun d!674098 () Bool)

(declare-fun lt!845516 () BalanceConc!17308)

(assert (=> d!674098 (= (list!10532 lt!845516) (originalCharacters!5091 (head!4924 tokens!456)))))

(assert (=> d!674098 (= lt!845516 (dynLambda!11755 (toChars!5958 (transformation!4321 (rule!6645 (head!4924 tokens!456)))) (value!136968 (head!4924 tokens!456))))))

(assert (=> d!674098 (= (charsOf!2709 (head!4924 tokens!456)) lt!845516)))

(declare-fun b_lambda!72511 () Bool)

(assert (=> (not b_lambda!72511) (not d!674098)))

(declare-fun tb!135291 () Bool)

(declare-fun t!203196 () Bool)

(assert (=> (and b!2276963 (= (toChars!5958 (transformation!4321 (h!32479 rules!1750))) (toChars!5958 (transformation!4321 (rule!6645 (head!4924 tokens!456))))) t!203196) tb!135291))

(declare-fun b!2277316 () Bool)

(declare-fun e!1458677 () Bool)

(declare-fun tp!721476 () Bool)

(assert (=> b!2277316 (= e!1458677 (and (inv!36658 (c!361426 (dynLambda!11755 (toChars!5958 (transformation!4321 (rule!6645 (head!4924 tokens!456)))) (value!136968 (head!4924 tokens!456))))) tp!721476))))

(declare-fun result!164958 () Bool)

(assert (=> tb!135291 (= result!164958 (and (inv!36659 (dynLambda!11755 (toChars!5958 (transformation!4321 (rule!6645 (head!4924 tokens!456)))) (value!136968 (head!4924 tokens!456)))) e!1458677))))

(assert (= tb!135291 b!2277316))

(declare-fun m!2705599 () Bool)

(assert (=> b!2277316 m!2705599))

(declare-fun m!2705601 () Bool)

(assert (=> tb!135291 m!2705601))

(assert (=> d!674098 t!203196))

(declare-fun b_and!179701 () Bool)

(assert (= b_and!179665 (and (=> t!203196 result!164958) b_and!179701)))

(declare-fun t!203198 () Bool)

(declare-fun tb!135293 () Bool)

(assert (=> (and b!2276991 (= (toChars!5958 (transformation!4321 (rule!6645 (h!32478 tokens!456)))) (toChars!5958 (transformation!4321 (rule!6645 (head!4924 tokens!456))))) t!203198) tb!135293))

(declare-fun result!164960 () Bool)

(assert (= result!164960 result!164958))

(assert (=> d!674098 t!203198))

(declare-fun b_and!179703 () Bool)

(assert (= b_and!179667 (and (=> t!203198 result!164960) b_and!179703)))

(declare-fun tb!135295 () Bool)

(declare-fun t!203200 () Bool)

(assert (=> (and b!2276972 (= (toChars!5958 (transformation!4321 r!2363)) (toChars!5958 (transformation!4321 (rule!6645 (head!4924 tokens!456))))) t!203200) tb!135295))

(declare-fun result!164962 () Bool)

(assert (= result!164962 result!164958))

(assert (=> d!674098 t!203200))

(declare-fun b_and!179705 () Bool)

(assert (= b_and!179669 (and (=> t!203200 result!164962) b_and!179705)))

(declare-fun tb!135297 () Bool)

(declare-fun t!203202 () Bool)

(assert (=> (and b!2276980 (= (toChars!5958 (transformation!4321 otherR!12)) (toChars!5958 (transformation!4321 (rule!6645 (head!4924 tokens!456))))) t!203202) tb!135297))

(declare-fun result!164964 () Bool)

(assert (= result!164964 result!164958))

(assert (=> d!674098 t!203202))

(declare-fun b_and!179707 () Bool)

(assert (= b_and!179671 (and (=> t!203202 result!164964) b_and!179707)))

(declare-fun m!2705603 () Bool)

(assert (=> d!674098 m!2705603))

(declare-fun m!2705605 () Bool)

(assert (=> d!674098 m!2705605))

(assert (=> b!2276974 d!674098))

(assert (=> b!2276974 d!674010))

(declare-fun d!674100 () Bool)

(declare-fun lt!845519 () Int)

(assert (=> d!674100 (>= lt!845519 0)))

(declare-fun e!1458689 () Int)

(assert (=> d!674100 (= lt!845519 e!1458689)))

(declare-fun c!361484 () Bool)

(assert (=> d!674100 (= c!361484 ((_ is Nil!27075) otherP!12))))

(assert (=> d!674100 (= (size!21280 otherP!12) lt!845519)))

(declare-fun b!2277331 () Bool)

(assert (=> b!2277331 (= e!1458689 0)))

(declare-fun b!2277332 () Bool)

(assert (=> b!2277332 (= e!1458689 (+ 1 (size!21280 (t!203163 otherP!12))))))

(assert (= (and d!674100 c!361484) b!2277331))

(assert (= (and d!674100 (not c!361484)) b!2277332))

(declare-fun m!2705615 () Bool)

(assert (=> b!2277332 m!2705615))

(assert (=> b!2276974 d!674100))

(declare-fun d!674102 () Bool)

(declare-fun lt!845522 () Bool)

(declare-fun content!3615 (List!27172) (InoxSet Rule!8442))

(assert (=> d!674102 (= lt!845522 (select (content!3615 rules!1750) r!2363))))

(declare-fun e!1458697 () Bool)

(assert (=> d!674102 (= lt!845522 e!1458697)))

(declare-fun res!973338 () Bool)

(assert (=> d!674102 (=> (not res!973338) (not e!1458697))))

(assert (=> d!674102 (= res!973338 ((_ is Cons!27078) rules!1750))))

(assert (=> d!674102 (= (contains!4691 rules!1750 r!2363) lt!845522)))

(declare-fun b!2277339 () Bool)

(declare-fun e!1458696 () Bool)

(assert (=> b!2277339 (= e!1458697 e!1458696)))

(declare-fun res!973337 () Bool)

(assert (=> b!2277339 (=> res!973337 e!1458696)))

(assert (=> b!2277339 (= res!973337 (= (h!32479 rules!1750) r!2363))))

(declare-fun b!2277340 () Bool)

(assert (=> b!2277340 (= e!1458696 (contains!4691 (t!203166 rules!1750) r!2363))))

(assert (= (and d!674102 res!973338) b!2277339))

(assert (= (and b!2277339 (not res!973337)) b!2277340))

(declare-fun m!2705617 () Bool)

(assert (=> d!674102 m!2705617))

(declare-fun m!2705619 () Bool)

(assert (=> d!674102 m!2705619))

(declare-fun m!2705621 () Bool)

(assert (=> b!2277340 m!2705621))

(assert (=> b!2276984 d!674102))

(declare-fun b!2277352 () Bool)

(declare-fun e!1458704 () Int)

(assert (=> b!2277352 (= e!1458704 (- 1))))

(declare-fun b!2277350 () Bool)

(declare-fun e!1458703 () Int)

(assert (=> b!2277350 (= e!1458703 e!1458704)))

(declare-fun c!361490 () Bool)

(assert (=> b!2277350 (= c!361490 (and ((_ is Cons!27078) rules!1750) (not (= (h!32479 rules!1750) r!2363))))))

(declare-fun b!2277349 () Bool)

(assert (=> b!2277349 (= e!1458703 0)))

(declare-fun d!674104 () Bool)

(declare-fun lt!845525 () Int)

(assert (=> d!674104 (>= lt!845525 0)))

(assert (=> d!674104 (= lt!845525 e!1458703)))

(declare-fun c!361489 () Bool)

(assert (=> d!674104 (= c!361489 (and ((_ is Cons!27078) rules!1750) (= (h!32479 rules!1750) r!2363)))))

(assert (=> d!674104 (contains!4691 rules!1750 r!2363)))

(assert (=> d!674104 (= (getIndex!334 rules!1750 r!2363) lt!845525)))

(declare-fun b!2277351 () Bool)

(assert (=> b!2277351 (= e!1458704 (+ 1 (getIndex!334 (t!203166 rules!1750) r!2363)))))

(assert (= (and d!674104 c!361489) b!2277349))

(assert (= (and d!674104 (not c!361489)) b!2277350))

(assert (= (and b!2277350 c!361490) b!2277351))

(assert (= (and b!2277350 (not c!361490)) b!2277352))

(assert (=> d!674104 m!2705229))

(declare-fun m!2705623 () Bool)

(assert (=> b!2277351 m!2705623))

(assert (=> b!2276986 d!674104))

(declare-fun b!2277356 () Bool)

(declare-fun e!1458706 () Int)

(assert (=> b!2277356 (= e!1458706 (- 1))))

(declare-fun b!2277354 () Bool)

(declare-fun e!1458705 () Int)

(assert (=> b!2277354 (= e!1458705 e!1458706)))

(declare-fun c!361492 () Bool)

(assert (=> b!2277354 (= c!361492 (and ((_ is Cons!27078) rules!1750) (not (= (h!32479 rules!1750) otherR!12))))))

(declare-fun b!2277353 () Bool)

(assert (=> b!2277353 (= e!1458705 0)))

(declare-fun d!674106 () Bool)

(declare-fun lt!845526 () Int)

(assert (=> d!674106 (>= lt!845526 0)))

(assert (=> d!674106 (= lt!845526 e!1458705)))

(declare-fun c!361491 () Bool)

(assert (=> d!674106 (= c!361491 (and ((_ is Cons!27078) rules!1750) (= (h!32479 rules!1750) otherR!12)))))

(assert (=> d!674106 (contains!4691 rules!1750 otherR!12)))

(assert (=> d!674106 (= (getIndex!334 rules!1750 otherR!12) lt!845526)))

(declare-fun b!2277355 () Bool)

(assert (=> b!2277355 (= e!1458706 (+ 1 (getIndex!334 (t!203166 rules!1750) otherR!12)))))

(assert (= (and d!674106 c!361491) b!2277353))

(assert (= (and d!674106 (not c!361491)) b!2277354))

(assert (= (and b!2277354 c!361492) b!2277355))

(assert (= (and b!2277354 (not c!361492)) b!2277356))

(assert (=> d!674106 m!2705243))

(declare-fun m!2705625 () Bool)

(assert (=> b!2277355 m!2705625))

(assert (=> b!2276986 d!674106))

(declare-fun d!674108 () Bool)

(declare-fun res!973343 () Bool)

(declare-fun e!1458709 () Bool)

(assert (=> d!674108 (=> (not res!973343) (not e!1458709))))

(declare-fun validRegex!2504 (Regex!6669) Bool)

(assert (=> d!674108 (= res!973343 (validRegex!2504 (regex!4321 otherR!12)))))

(assert (=> d!674108 (= (ruleValid!1411 thiss!16613 otherR!12) e!1458709)))

(declare-fun b!2277361 () Bool)

(declare-fun res!973344 () Bool)

(assert (=> b!2277361 (=> (not res!973344) (not e!1458709))))

(declare-fun nullable!1842 (Regex!6669) Bool)

(assert (=> b!2277361 (= res!973344 (not (nullable!1842 (regex!4321 otherR!12))))))

(declare-fun b!2277362 () Bool)

(assert (=> b!2277362 (= e!1458709 (not (= (tag!4811 otherR!12) (String!29520 ""))))))

(assert (= (and d!674108 res!973343) b!2277361))

(assert (= (and b!2277361 res!973344) b!2277362))

(declare-fun m!2705627 () Bool)

(assert (=> d!674108 m!2705627))

(declare-fun m!2705629 () Bool)

(assert (=> b!2277361 m!2705629))

(assert (=> b!2276986 d!674108))

(declare-fun d!674110 () Bool)

(assert (=> d!674110 (ruleValid!1411 thiss!16613 otherR!12)))

(declare-fun lt!845529 () Unit!40014)

(declare-fun choose!13285 (LexerInterface!3918 Rule!8442 List!27172) Unit!40014)

(assert (=> d!674110 (= lt!845529 (choose!13285 thiss!16613 otherR!12 rules!1750))))

(assert (=> d!674110 (contains!4691 rules!1750 otherR!12)))

(assert (=> d!674110 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!816 thiss!16613 otherR!12 rules!1750) lt!845529)))

(declare-fun bs!456409 () Bool)

(assert (= bs!456409 d!674110))

(assert (=> bs!456409 m!2705213))

(declare-fun m!2705631 () Bool)

(assert (=> bs!456409 m!2705631))

(assert (=> bs!456409 m!2705243))

(assert (=> b!2276986 d!674110))

(declare-fun d!674112 () Bool)

(assert (=> d!674112 (= (inv!36651 (tag!4811 (h!32479 rules!1750))) (= (mod (str.len (value!136967 (tag!4811 (h!32479 rules!1750)))) 2) 0))))

(assert (=> b!2276975 d!674112))

(declare-fun d!674114 () Bool)

(declare-fun res!973345 () Bool)

(declare-fun e!1458710 () Bool)

(assert (=> d!674114 (=> (not res!973345) (not e!1458710))))

(assert (=> d!674114 (= res!973345 (semiInverseModEq!1744 (toChars!5958 (transformation!4321 (h!32479 rules!1750))) (toValue!6099 (transformation!4321 (h!32479 rules!1750)))))))

(assert (=> d!674114 (= (inv!36655 (transformation!4321 (h!32479 rules!1750))) e!1458710)))

(declare-fun b!2277363 () Bool)

(assert (=> b!2277363 (= e!1458710 (equivClasses!1663 (toChars!5958 (transformation!4321 (h!32479 rules!1750))) (toValue!6099 (transformation!4321 (h!32479 rules!1750)))))))

(assert (= (and d!674114 res!973345) b!2277363))

(declare-fun m!2705633 () Bool)

(assert (=> d!674114 m!2705633))

(declare-fun m!2705635 () Bool)

(assert (=> b!2277363 m!2705635))

(assert (=> b!2276975 d!674114))

(declare-fun b!2277392 () Bool)

(declare-fun e!1458725 () Bool)

(assert (=> b!2277392 (= e!1458725 (not (= (head!4926 (list!10532 (charsOf!2709 (head!4924 tokens!456)))) (c!361427 (regex!4321 r!2363)))))))

(declare-fun b!2277393 () Bool)

(declare-fun e!1458728 () Bool)

(declare-fun derivativeStep!1502 (Regex!6669 C!13484) Regex!6669)

(assert (=> b!2277393 (= e!1458728 (matchR!2926 (derivativeStep!1502 (regex!4321 r!2363) (head!4926 (list!10532 (charsOf!2709 (head!4924 tokens!456))))) (tail!3285 (list!10532 (charsOf!2709 (head!4924 tokens!456))))))))

(declare-fun b!2277394 () Bool)

(declare-fun e!1458730 () Bool)

(declare-fun lt!845532 () Bool)

(declare-fun call!136331 () Bool)

(assert (=> b!2277394 (= e!1458730 (= lt!845532 call!136331))))

(declare-fun b!2277395 () Bool)

(declare-fun e!1458729 () Bool)

(declare-fun e!1458726 () Bool)

(assert (=> b!2277395 (= e!1458729 e!1458726)))

(declare-fun res!973364 () Bool)

(assert (=> b!2277395 (=> (not res!973364) (not e!1458726))))

(assert (=> b!2277395 (= res!973364 (not lt!845532))))

(declare-fun b!2277396 () Bool)

(declare-fun res!973363 () Bool)

(declare-fun e!1458731 () Bool)

(assert (=> b!2277396 (=> (not res!973363) (not e!1458731))))

(assert (=> b!2277396 (= res!973363 (not call!136331))))

(declare-fun b!2277397 () Bool)

(declare-fun res!973365 () Bool)

(assert (=> b!2277397 (=> (not res!973365) (not e!1458731))))

(assert (=> b!2277397 (= res!973365 (isEmpty!15362 (tail!3285 (list!10532 (charsOf!2709 (head!4924 tokens!456))))))))

(declare-fun b!2277398 () Bool)

(declare-fun res!973366 () Bool)

(assert (=> b!2277398 (=> res!973366 e!1458729)))

(assert (=> b!2277398 (= res!973366 e!1458731)))

(declare-fun res!973368 () Bool)

(assert (=> b!2277398 (=> (not res!973368) (not e!1458731))))

(assert (=> b!2277398 (= res!973368 lt!845532)))

(declare-fun d!674116 () Bool)

(assert (=> d!674116 e!1458730))

(declare-fun c!361499 () Bool)

(assert (=> d!674116 (= c!361499 ((_ is EmptyExpr!6669) (regex!4321 r!2363)))))

(assert (=> d!674116 (= lt!845532 e!1458728)))

(declare-fun c!361500 () Bool)

(assert (=> d!674116 (= c!361500 (isEmpty!15362 (list!10532 (charsOf!2709 (head!4924 tokens!456)))))))

(assert (=> d!674116 (validRegex!2504 (regex!4321 r!2363))))

(assert (=> d!674116 (= (matchR!2926 (regex!4321 r!2363) (list!10532 (charsOf!2709 (head!4924 tokens!456)))) lt!845532)))

(declare-fun b!2277399 () Bool)

(assert (=> b!2277399 (= e!1458726 e!1458725)))

(declare-fun res!973362 () Bool)

(assert (=> b!2277399 (=> res!973362 e!1458725)))

(assert (=> b!2277399 (= res!973362 call!136331)))

(declare-fun bm!136326 () Bool)

(assert (=> bm!136326 (= call!136331 (isEmpty!15362 (list!10532 (charsOf!2709 (head!4924 tokens!456)))))))

(declare-fun b!2277400 () Bool)

(declare-fun e!1458727 () Bool)

(assert (=> b!2277400 (= e!1458730 e!1458727)))

(declare-fun c!361501 () Bool)

(assert (=> b!2277400 (= c!361501 ((_ is EmptyLang!6669) (regex!4321 r!2363)))))

(declare-fun b!2277401 () Bool)

(assert (=> b!2277401 (= e!1458728 (nullable!1842 (regex!4321 r!2363)))))

(declare-fun b!2277402 () Bool)

(assert (=> b!2277402 (= e!1458727 (not lt!845532))))

(declare-fun b!2277403 () Bool)

(declare-fun res!973369 () Bool)

(assert (=> b!2277403 (=> res!973369 e!1458729)))

(assert (=> b!2277403 (= res!973369 (not ((_ is ElementMatch!6669) (regex!4321 r!2363))))))

(assert (=> b!2277403 (= e!1458727 e!1458729)))

(declare-fun b!2277404 () Bool)

(declare-fun res!973367 () Bool)

(assert (=> b!2277404 (=> res!973367 e!1458725)))

(assert (=> b!2277404 (= res!973367 (not (isEmpty!15362 (tail!3285 (list!10532 (charsOf!2709 (head!4924 tokens!456)))))))))

(declare-fun b!2277405 () Bool)

(assert (=> b!2277405 (= e!1458731 (= (head!4926 (list!10532 (charsOf!2709 (head!4924 tokens!456)))) (c!361427 (regex!4321 r!2363))))))

(assert (= (and d!674116 c!361500) b!2277401))

(assert (= (and d!674116 (not c!361500)) b!2277393))

(assert (= (and d!674116 c!361499) b!2277394))

(assert (= (and d!674116 (not c!361499)) b!2277400))

(assert (= (and b!2277400 c!361501) b!2277402))

(assert (= (and b!2277400 (not c!361501)) b!2277403))

(assert (= (and b!2277403 (not res!973369)) b!2277398))

(assert (= (and b!2277398 res!973368) b!2277396))

(assert (= (and b!2277396 res!973363) b!2277397))

(assert (= (and b!2277397 res!973365) b!2277405))

(assert (= (and b!2277398 (not res!973366)) b!2277395))

(assert (= (and b!2277395 res!973364) b!2277399))

(assert (= (and b!2277399 (not res!973362)) b!2277404))

(assert (= (and b!2277404 (not res!973367)) b!2277392))

(assert (= (or b!2277394 b!2277396 b!2277399) bm!136326))

(assert (=> b!2277397 m!2705281))

(declare-fun m!2705637 () Bool)

(assert (=> b!2277397 m!2705637))

(assert (=> b!2277397 m!2705637))

(declare-fun m!2705639 () Bool)

(assert (=> b!2277397 m!2705639))

(assert (=> b!2277393 m!2705281))

(declare-fun m!2705641 () Bool)

(assert (=> b!2277393 m!2705641))

(assert (=> b!2277393 m!2705641))

(declare-fun m!2705643 () Bool)

(assert (=> b!2277393 m!2705643))

(assert (=> b!2277393 m!2705281))

(assert (=> b!2277393 m!2705637))

(assert (=> b!2277393 m!2705643))

(assert (=> b!2277393 m!2705637))

(declare-fun m!2705645 () Bool)

(assert (=> b!2277393 m!2705645))

(assert (=> b!2277405 m!2705281))

(assert (=> b!2277405 m!2705641))

(assert (=> b!2277392 m!2705281))

(assert (=> b!2277392 m!2705641))

(assert (=> d!674116 m!2705281))

(declare-fun m!2705647 () Bool)

(assert (=> d!674116 m!2705647))

(declare-fun m!2705649 () Bool)

(assert (=> d!674116 m!2705649))

(assert (=> bm!136326 m!2705281))

(assert (=> bm!136326 m!2705647))

(declare-fun m!2705651 () Bool)

(assert (=> b!2277401 m!2705651))

(assert (=> b!2277404 m!2705281))

(assert (=> b!2277404 m!2705637))

(assert (=> b!2277404 m!2705637))

(assert (=> b!2277404 m!2705639))

(assert (=> b!2276964 d!674116))

(declare-fun d!674118 () Bool)

(assert (=> d!674118 (= (list!10532 (charsOf!2709 (head!4924 tokens!456))) (list!10535 (c!361426 (charsOf!2709 (head!4924 tokens!456)))))))

(declare-fun bs!456410 () Bool)

(assert (= bs!456410 d!674118))

(declare-fun m!2705653 () Bool)

(assert (=> bs!456410 m!2705653))

(assert (=> b!2276964 d!674118))

(assert (=> b!2276964 d!674098))

(assert (=> b!2276964 d!674010))

(declare-fun d!674120 () Bool)

(assert (=> d!674120 (= (get!8161 (maxPrefix!2182 thiss!16613 rules!1750 input!1722)) (v!30360 (maxPrefix!2182 thiss!16613 rules!1750 input!1722)))))

(assert (=> b!2276966 d!674120))

(declare-fun bm!136329 () Bool)

(declare-fun call!136334 () Option!5305)

(declare-fun maxPrefixOneRule!1366 (LexerInterface!3918 Rule!8442 List!27169) Option!5305)

(assert (=> bm!136329 (= call!136334 (maxPrefixOneRule!1366 thiss!16613 (h!32479 rules!1750) input!1722))))

(declare-fun b!2277424 () Bool)

(declare-fun e!1458739 () Bool)

(declare-fun lt!845544 () Option!5305)

(assert (=> b!2277424 (= e!1458739 (contains!4691 rules!1750 (rule!6645 (_1!15905 (get!8161 lt!845544)))))))

(declare-fun b!2277425 () Bool)

(declare-fun res!973385 () Bool)

(assert (=> b!2277425 (=> (not res!973385) (not e!1458739))))

(assert (=> b!2277425 (= res!973385 (= (++!6609 (list!10532 (charsOf!2709 (_1!15905 (get!8161 lt!845544)))) (_2!15905 (get!8161 lt!845544))) input!1722))))

(declare-fun b!2277426 () Bool)

(declare-fun res!973389 () Bool)

(assert (=> b!2277426 (=> (not res!973389) (not e!1458739))))

(assert (=> b!2277426 (= res!973389 (matchR!2926 (regex!4321 (rule!6645 (_1!15905 (get!8161 lt!845544)))) (list!10532 (charsOf!2709 (_1!15905 (get!8161 lt!845544))))))))

(declare-fun b!2277427 () Bool)

(declare-fun res!973390 () Bool)

(assert (=> b!2277427 (=> (not res!973390) (not e!1458739))))

(assert (=> b!2277427 (= res!973390 (= (list!10532 (charsOf!2709 (_1!15905 (get!8161 lt!845544)))) (originalCharacters!5091 (_1!15905 (get!8161 lt!845544)))))))

(declare-fun b!2277428 () Bool)

(declare-fun e!1458738 () Bool)

(assert (=> b!2277428 (= e!1458738 e!1458739)))

(declare-fun res!973387 () Bool)

(assert (=> b!2277428 (=> (not res!973387) (not e!1458739))))

(declare-fun isDefined!4208 (Option!5305) Bool)

(assert (=> b!2277428 (= res!973387 (isDefined!4208 lt!845544))))

(declare-fun b!2277429 () Bool)

(declare-fun res!973388 () Bool)

(assert (=> b!2277429 (=> (not res!973388) (not e!1458739))))

(assert (=> b!2277429 (= res!973388 (< (size!21280 (_2!15905 (get!8161 lt!845544))) (size!21280 input!1722)))))

(declare-fun b!2277430 () Bool)

(declare-fun res!973384 () Bool)

(assert (=> b!2277430 (=> (not res!973384) (not e!1458739))))

(declare-fun apply!6603 (TokenValueInjection!8506 BalanceConc!17308) TokenValue!4483)

(assert (=> b!2277430 (= res!973384 (= (value!136968 (_1!15905 (get!8161 lt!845544))) (apply!6603 (transformation!4321 (rule!6645 (_1!15905 (get!8161 lt!845544)))) (seqFromList!3025 (originalCharacters!5091 (_1!15905 (get!8161 lt!845544)))))))))

(declare-fun d!674122 () Bool)

(assert (=> d!674122 e!1458738))

(declare-fun res!973386 () Bool)

(assert (=> d!674122 (=> res!973386 e!1458738)))

(declare-fun isEmpty!15366 (Option!5305) Bool)

(assert (=> d!674122 (= res!973386 (isEmpty!15366 lt!845544))))

(declare-fun e!1458740 () Option!5305)

(assert (=> d!674122 (= lt!845544 e!1458740)))

(declare-fun c!361504 () Bool)

(assert (=> d!674122 (= c!361504 (and ((_ is Cons!27078) rules!1750) ((_ is Nil!27078) (t!203166 rules!1750))))))

(declare-fun lt!845547 () Unit!40014)

(declare-fun lt!845546 () Unit!40014)

(assert (=> d!674122 (= lt!845547 lt!845546)))

(assert (=> d!674122 (isPrefix!2311 input!1722 input!1722)))

(declare-fun lemmaIsPrefixRefl!1471 (List!27169 List!27169) Unit!40014)

(assert (=> d!674122 (= lt!845546 (lemmaIsPrefixRefl!1471 input!1722 input!1722))))

(declare-fun rulesValidInductive!1513 (LexerInterface!3918 List!27172) Bool)

(assert (=> d!674122 (rulesValidInductive!1513 thiss!16613 rules!1750)))

(assert (=> d!674122 (= (maxPrefix!2182 thiss!16613 rules!1750 input!1722) lt!845544)))

(declare-fun b!2277431 () Bool)

(declare-fun lt!845545 () Option!5305)

(declare-fun lt!845543 () Option!5305)

(assert (=> b!2277431 (= e!1458740 (ite (and ((_ is None!5304) lt!845545) ((_ is None!5304) lt!845543)) None!5304 (ite ((_ is None!5304) lt!845543) lt!845545 (ite ((_ is None!5304) lt!845545) lt!845543 (ite (>= (size!21278 (_1!15905 (v!30360 lt!845545))) (size!21278 (_1!15905 (v!30360 lt!845543)))) lt!845545 lt!845543)))))))

(assert (=> b!2277431 (= lt!845545 call!136334)))

(assert (=> b!2277431 (= lt!845543 (maxPrefix!2182 thiss!16613 (t!203166 rules!1750) input!1722))))

(declare-fun b!2277432 () Bool)

(assert (=> b!2277432 (= e!1458740 call!136334)))

(assert (= (and d!674122 c!361504) b!2277432))

(assert (= (and d!674122 (not c!361504)) b!2277431))

(assert (= (or b!2277432 b!2277431) bm!136329))

(assert (= (and d!674122 (not res!973386)) b!2277428))

(assert (= (and b!2277428 res!973387) b!2277427))

(assert (= (and b!2277427 res!973390) b!2277429))

(assert (= (and b!2277429 res!973388) b!2277425))

(assert (= (and b!2277425 res!973385) b!2277430))

(assert (= (and b!2277430 res!973384) b!2277426))

(assert (= (and b!2277426 res!973389) b!2277424))

(declare-fun m!2705655 () Bool)

(assert (=> b!2277430 m!2705655))

(declare-fun m!2705657 () Bool)

(assert (=> b!2277430 m!2705657))

(assert (=> b!2277430 m!2705657))

(declare-fun m!2705659 () Bool)

(assert (=> b!2277430 m!2705659))

(assert (=> b!2277429 m!2705655))

(declare-fun m!2705661 () Bool)

(assert (=> b!2277429 m!2705661))

(assert (=> b!2277429 m!2705343))

(assert (=> b!2277427 m!2705655))

(declare-fun m!2705663 () Bool)

(assert (=> b!2277427 m!2705663))

(assert (=> b!2277427 m!2705663))

(declare-fun m!2705665 () Bool)

(assert (=> b!2277427 m!2705665))

(assert (=> b!2277424 m!2705655))

(declare-fun m!2705667 () Bool)

(assert (=> b!2277424 m!2705667))

(declare-fun m!2705669 () Bool)

(assert (=> d!674122 m!2705669))

(declare-fun m!2705671 () Bool)

(assert (=> d!674122 m!2705671))

(declare-fun m!2705673 () Bool)

(assert (=> d!674122 m!2705673))

(declare-fun m!2705675 () Bool)

(assert (=> d!674122 m!2705675))

(declare-fun m!2705677 () Bool)

(assert (=> bm!136329 m!2705677))

(assert (=> b!2277426 m!2705655))

(assert (=> b!2277426 m!2705663))

(assert (=> b!2277426 m!2705663))

(assert (=> b!2277426 m!2705665))

(assert (=> b!2277426 m!2705665))

(declare-fun m!2705679 () Bool)

(assert (=> b!2277426 m!2705679))

(declare-fun m!2705681 () Bool)

(assert (=> b!2277428 m!2705681))

(declare-fun m!2705683 () Bool)

(assert (=> b!2277431 m!2705683))

(assert (=> b!2277425 m!2705655))

(assert (=> b!2277425 m!2705663))

(assert (=> b!2277425 m!2705663))

(assert (=> b!2277425 m!2705665))

(assert (=> b!2277425 m!2705665))

(declare-fun m!2705685 () Bool)

(assert (=> b!2277425 m!2705685))

(assert (=> b!2276966 d!674122))

(declare-fun d!674124 () Bool)

(declare-fun res!973391 () Bool)

(declare-fun e!1458741 () Bool)

(assert (=> d!674124 (=> (not res!973391) (not e!1458741))))

(assert (=> d!674124 (= res!973391 (validRegex!2504 (regex!4321 r!2363)))))

(assert (=> d!674124 (= (ruleValid!1411 thiss!16613 r!2363) e!1458741)))

(declare-fun b!2277433 () Bool)

(declare-fun res!973392 () Bool)

(assert (=> b!2277433 (=> (not res!973392) (not e!1458741))))

(assert (=> b!2277433 (= res!973392 (not (nullable!1842 (regex!4321 r!2363))))))

(declare-fun b!2277434 () Bool)

(assert (=> b!2277434 (= e!1458741 (not (= (tag!4811 r!2363) (String!29520 ""))))))

(assert (= (and d!674124 res!973391) b!2277433))

(assert (= (and b!2277433 res!973392) b!2277434))

(assert (=> d!674124 m!2705649))

(assert (=> b!2277433 m!2705651))

(assert (=> b!2276976 d!674124))

(declare-fun d!674126 () Bool)

(assert (=> d!674126 (ruleValid!1411 thiss!16613 r!2363)))

(declare-fun lt!845548 () Unit!40014)

(assert (=> d!674126 (= lt!845548 (choose!13285 thiss!16613 r!2363 rules!1750))))

(assert (=> d!674126 (contains!4691 rules!1750 r!2363)))

(assert (=> d!674126 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!816 thiss!16613 r!2363 rules!1750) lt!845548)))

(declare-fun bs!456411 () Bool)

(assert (= bs!456411 d!674126))

(assert (=> bs!456411 m!2705285))

(declare-fun m!2705687 () Bool)

(assert (=> bs!456411 m!2705687))

(assert (=> bs!456411 m!2705229))

(assert (=> b!2276976 d!674126))

(declare-fun d!674128 () Bool)

(declare-fun lt!845549 () Bool)

(assert (=> d!674128 (= lt!845549 (select (content!3615 rules!1750) otherR!12))))

(declare-fun e!1458743 () Bool)

(assert (=> d!674128 (= lt!845549 e!1458743)))

(declare-fun res!973394 () Bool)

(assert (=> d!674128 (=> (not res!973394) (not e!1458743))))

(assert (=> d!674128 (= res!973394 ((_ is Cons!27078) rules!1750))))

(assert (=> d!674128 (= (contains!4691 rules!1750 otherR!12) lt!845549)))

(declare-fun b!2277435 () Bool)

(declare-fun e!1458742 () Bool)

(assert (=> b!2277435 (= e!1458743 e!1458742)))

(declare-fun res!973393 () Bool)

(assert (=> b!2277435 (=> res!973393 e!1458742)))

(assert (=> b!2277435 (= res!973393 (= (h!32479 rules!1750) otherR!12))))

(declare-fun b!2277436 () Bool)

(assert (=> b!2277436 (= e!1458742 (contains!4691 (t!203166 rules!1750) otherR!12))))

(assert (= (and d!674128 res!973394) b!2277435))

(assert (= (and b!2277435 (not res!973393)) b!2277436))

(assert (=> d!674128 m!2705617))

(declare-fun m!2705689 () Bool)

(assert (=> d!674128 m!2705689))

(declare-fun m!2705691 () Bool)

(assert (=> b!2277436 m!2705691))

(assert (=> b!2276989 d!674128))

(declare-fun d!674130 () Bool)

(declare-fun res!973397 () Bool)

(declare-fun e!1458746 () Bool)

(assert (=> d!674130 (=> (not res!973397) (not e!1458746))))

(declare-fun rulesValid!1588 (LexerInterface!3918 List!27172) Bool)

(assert (=> d!674130 (= res!973397 (rulesValid!1588 thiss!16613 rules!1750))))

(assert (=> d!674130 (= (rulesInvariant!3420 thiss!16613 rules!1750) e!1458746)))

(declare-fun b!2277439 () Bool)

(declare-datatypes ((List!27174 0))(
  ( (Nil!27080) (Cons!27080 (h!32481 String!29519) (t!203216 List!27174)) )
))
(declare-fun noDuplicateTag!1586 (LexerInterface!3918 List!27172 List!27174) Bool)

(assert (=> b!2277439 (= e!1458746 (noDuplicateTag!1586 thiss!16613 rules!1750 Nil!27080))))

(assert (= (and d!674130 res!973397) b!2277439))

(declare-fun m!2705693 () Bool)

(assert (=> d!674130 m!2705693))

(declare-fun m!2705695 () Bool)

(assert (=> b!2277439 m!2705695))

(assert (=> b!2276967 d!674130))

(declare-fun b!2277442 () Bool)

(declare-fun e!1458749 () Bool)

(assert (=> b!2277442 (= e!1458749 (isPrefix!2311 (tail!3285 otherP!12) (tail!3285 input!1722)))))

(declare-fun b!2277440 () Bool)

(declare-fun e!1458747 () Bool)

(assert (=> b!2277440 (= e!1458747 e!1458749)))

(declare-fun res!973400 () Bool)

(assert (=> b!2277440 (=> (not res!973400) (not e!1458749))))

(assert (=> b!2277440 (= res!973400 (not ((_ is Nil!27075) input!1722)))))

(declare-fun d!674132 () Bool)

(declare-fun e!1458748 () Bool)

(assert (=> d!674132 e!1458748))

(declare-fun res!973401 () Bool)

(assert (=> d!674132 (=> res!973401 e!1458748)))

(declare-fun lt!845550 () Bool)

(assert (=> d!674132 (= res!973401 (not lt!845550))))

(assert (=> d!674132 (= lt!845550 e!1458747)))

(declare-fun res!973398 () Bool)

(assert (=> d!674132 (=> res!973398 e!1458747)))

(assert (=> d!674132 (= res!973398 ((_ is Nil!27075) otherP!12))))

(assert (=> d!674132 (= (isPrefix!2311 otherP!12 input!1722) lt!845550)))

(declare-fun b!2277443 () Bool)

(assert (=> b!2277443 (= e!1458748 (>= (size!21280 input!1722) (size!21280 otherP!12)))))

(declare-fun b!2277441 () Bool)

(declare-fun res!973399 () Bool)

(assert (=> b!2277441 (=> (not res!973399) (not e!1458749))))

(assert (=> b!2277441 (= res!973399 (= (head!4926 otherP!12) (head!4926 input!1722)))))

(assert (= (and d!674132 (not res!973398)) b!2277440))

(assert (= (and b!2277440 res!973400) b!2277441))

(assert (= (and b!2277441 res!973399) b!2277442))

(assert (= (and d!674132 (not res!973401)) b!2277443))

(declare-fun m!2705697 () Bool)

(assert (=> b!2277442 m!2705697))

(assert (=> b!2277442 m!2705339))

(assert (=> b!2277442 m!2705697))

(assert (=> b!2277442 m!2705339))

(declare-fun m!2705699 () Bool)

(assert (=> b!2277442 m!2705699))

(assert (=> b!2277443 m!2705343))

(assert (=> b!2277443 m!2705273))

(declare-fun m!2705701 () Bool)

(assert (=> b!2277441 m!2705701))

(assert (=> b!2277441 m!2705345))

(assert (=> b!2276988 d!674132))

(declare-fun b!2277457 () Bool)

(declare-fun b_free!67909 () Bool)

(declare-fun b_next!68613 () Bool)

(assert (=> b!2277457 (= b_free!67909 (not b_next!68613))))

(declare-fun tp!721509 () Bool)

(declare-fun b_and!179713 () Bool)

(assert (=> b!2277457 (= tp!721509 b_and!179713)))

(declare-fun b_free!67911 () Bool)

(declare-fun b_next!68615 () Bool)

(assert (=> b!2277457 (= b_free!67911 (not b_next!68615))))

(declare-fun t!203209 () Bool)

(declare-fun tb!135303 () Bool)

(assert (=> (and b!2277457 (= (toChars!5958 (transformation!4321 (rule!6645 (h!32478 (t!203165 tokens!456))))) (toChars!5958 (transformation!4321 (rule!6645 (h!32478 tokens!456))))) t!203209) tb!135303))

(declare-fun result!164972 () Bool)

(assert (= result!164972 result!164918))

(assert (=> b!2276997 t!203209))

(assert (=> d!673988 t!203209))

(declare-fun t!203211 () Bool)

(declare-fun tb!135305 () Bool)

(assert (=> (and b!2277457 (= (toChars!5958 (transformation!4321 (rule!6645 (h!32478 (t!203165 tokens!456))))) (toChars!5958 (transformation!4321 (rule!6645 (head!4924 tokens!456))))) t!203211) tb!135305))

(declare-fun result!164974 () Bool)

(assert (= result!164974 result!164958))

(assert (=> d!674098 t!203211))

(declare-fun b_and!179715 () Bool)

(declare-fun tp!721510 () Bool)

(assert (=> b!2277457 (= tp!721510 (and (=> t!203209 result!164972) (=> t!203211 result!164974) b_and!179715))))

(declare-fun b!2277455 () Bool)

(declare-fun e!1458762 () Bool)

(declare-fun e!1458763 () Bool)

(declare-fun tp!721511 () Bool)

(assert (=> b!2277455 (= e!1458763 (and (inv!21 (value!136968 (h!32478 (t!203165 tokens!456)))) e!1458762 tp!721511))))

(declare-fun tp!721508 () Bool)

(declare-fun b!2277454 () Bool)

(declare-fun e!1458766 () Bool)

(assert (=> b!2277454 (= e!1458766 (and (inv!36654 (h!32478 (t!203165 tokens!456))) e!1458763 tp!721508))))

(declare-fun e!1458765 () Bool)

(assert (=> b!2277457 (= e!1458765 (and tp!721509 tp!721510))))

(declare-fun tp!721507 () Bool)

(declare-fun b!2277456 () Bool)

(assert (=> b!2277456 (= e!1458762 (and tp!721507 (inv!36651 (tag!4811 (rule!6645 (h!32478 (t!203165 tokens!456))))) (inv!36655 (transformation!4321 (rule!6645 (h!32478 (t!203165 tokens!456))))) e!1458765))))

(assert (=> b!2276969 (= tp!721408 e!1458766)))

(assert (= b!2277456 b!2277457))

(assert (= b!2277455 b!2277456))

(assert (= b!2277454 b!2277455))

(assert (= (and b!2276969 ((_ is Cons!27077) (t!203165 tokens!456))) b!2277454))

(declare-fun m!2705703 () Bool)

(assert (=> b!2277455 m!2705703))

(declare-fun m!2705705 () Bool)

(assert (=> b!2277454 m!2705705))

(declare-fun m!2705707 () Bool)

(assert (=> b!2277456 m!2705707))

(declare-fun m!2705709 () Bool)

(assert (=> b!2277456 m!2705709))

(declare-fun b!2277462 () Bool)

(declare-fun e!1458770 () Bool)

(declare-fun tp!721514 () Bool)

(assert (=> b!2277462 (= e!1458770 (and tp_is_empty!10559 tp!721514))))

(assert (=> b!2276968 (= tp!721412 e!1458770)))

(assert (= (and b!2276968 ((_ is Cons!27075) (originalCharacters!5091 (h!32478 tokens!456)))) b!2277462))

(declare-fun b!2277476 () Bool)

(declare-fun e!1458773 () Bool)

(declare-fun tp!721526 () Bool)

(declare-fun tp!721525 () Bool)

(assert (=> b!2277476 (= e!1458773 (and tp!721526 tp!721525))))

(assert (=> b!2276971 (= tp!721409 e!1458773)))

(declare-fun b!2277473 () Bool)

(assert (=> b!2277473 (= e!1458773 tp_is_empty!10559)))

(declare-fun b!2277474 () Bool)

(declare-fun tp!721528 () Bool)

(declare-fun tp!721527 () Bool)

(assert (=> b!2277474 (= e!1458773 (and tp!721528 tp!721527))))

(declare-fun b!2277475 () Bool)

(declare-fun tp!721529 () Bool)

(assert (=> b!2277475 (= e!1458773 tp!721529)))

(assert (= (and b!2276971 ((_ is ElementMatch!6669) (regex!4321 r!2363))) b!2277473))

(assert (= (and b!2276971 ((_ is Concat!11153) (regex!4321 r!2363))) b!2277474))

(assert (= (and b!2276971 ((_ is Star!6669) (regex!4321 r!2363))) b!2277475))

(assert (= (and b!2276971 ((_ is Union!6669) (regex!4321 r!2363))) b!2277476))

(declare-fun b!2277480 () Bool)

(declare-fun e!1458774 () Bool)

(declare-fun tp!721531 () Bool)

(declare-fun tp!721530 () Bool)

(assert (=> b!2277480 (= e!1458774 (and tp!721531 tp!721530))))

(assert (=> b!2276973 (= tp!721424 e!1458774)))

(declare-fun b!2277477 () Bool)

(assert (=> b!2277477 (= e!1458774 tp_is_empty!10559)))

(declare-fun b!2277478 () Bool)

(declare-fun tp!721533 () Bool)

(declare-fun tp!721532 () Bool)

(assert (=> b!2277478 (= e!1458774 (and tp!721533 tp!721532))))

(declare-fun b!2277479 () Bool)

(declare-fun tp!721534 () Bool)

(assert (=> b!2277479 (= e!1458774 tp!721534)))

(assert (= (and b!2276973 ((_ is ElementMatch!6669) (regex!4321 (rule!6645 (h!32478 tokens!456))))) b!2277477))

(assert (= (and b!2276973 ((_ is Concat!11153) (regex!4321 (rule!6645 (h!32478 tokens!456))))) b!2277478))

(assert (= (and b!2276973 ((_ is Star!6669) (regex!4321 (rule!6645 (h!32478 tokens!456))))) b!2277479))

(assert (= (and b!2276973 ((_ is Union!6669) (regex!4321 (rule!6645 (h!32478 tokens!456))))) b!2277480))

(declare-fun b!2277481 () Bool)

(declare-fun e!1458775 () Bool)

(declare-fun tp!721535 () Bool)

(assert (=> b!2277481 (= e!1458775 (and tp_is_empty!10559 tp!721535))))

(assert (=> b!2276962 (= tp!721425 e!1458775)))

(assert (= (and b!2276962 ((_ is Cons!27075) (t!203163 suffix!886))) b!2277481))

(declare-fun b!2277485 () Bool)

(declare-fun e!1458776 () Bool)

(declare-fun tp!721537 () Bool)

(declare-fun tp!721536 () Bool)

(assert (=> b!2277485 (= e!1458776 (and tp!721537 tp!721536))))

(assert (=> b!2276985 (= tp!721422 e!1458776)))

(declare-fun b!2277482 () Bool)

(assert (=> b!2277482 (= e!1458776 tp_is_empty!10559)))

(declare-fun b!2277483 () Bool)

(declare-fun tp!721539 () Bool)

(declare-fun tp!721538 () Bool)

(assert (=> b!2277483 (= e!1458776 (and tp!721539 tp!721538))))

(declare-fun b!2277484 () Bool)

(declare-fun tp!721540 () Bool)

(assert (=> b!2277484 (= e!1458776 tp!721540)))

(assert (= (and b!2276985 ((_ is ElementMatch!6669) (regex!4321 otherR!12))) b!2277482))

(assert (= (and b!2276985 ((_ is Concat!11153) (regex!4321 otherR!12))) b!2277483))

(assert (= (and b!2276985 ((_ is Star!6669) (regex!4321 otherR!12))) b!2277484))

(assert (= (and b!2276985 ((_ is Union!6669) (regex!4321 otherR!12))) b!2277485))

(declare-fun b!2277496 () Bool)

(declare-fun b_free!67913 () Bool)

(declare-fun b_next!68617 () Bool)

(assert (=> b!2277496 (= b_free!67913 (not b_next!68617))))

(declare-fun tp!721550 () Bool)

(declare-fun b_and!179717 () Bool)

(assert (=> b!2277496 (= tp!721550 b_and!179717)))

(declare-fun b_free!67915 () Bool)

(declare-fun b_next!68619 () Bool)

(assert (=> b!2277496 (= b_free!67915 (not b_next!68619))))

(declare-fun t!203213 () Bool)

(declare-fun tb!135307 () Bool)

(assert (=> (and b!2277496 (= (toChars!5958 (transformation!4321 (h!32479 (t!203166 rules!1750)))) (toChars!5958 (transformation!4321 (rule!6645 (h!32478 tokens!456))))) t!203213) tb!135307))

(declare-fun result!164982 () Bool)

(assert (= result!164982 result!164918))

(assert (=> b!2276997 t!203213))

(assert (=> d!673988 t!203213))

(declare-fun tb!135309 () Bool)

(declare-fun t!203215 () Bool)

(assert (=> (and b!2277496 (= (toChars!5958 (transformation!4321 (h!32479 (t!203166 rules!1750)))) (toChars!5958 (transformation!4321 (rule!6645 (head!4924 tokens!456))))) t!203215) tb!135309))

(declare-fun result!164984 () Bool)

(assert (= result!164984 result!164958))

(assert (=> d!674098 t!203215))

(declare-fun tp!721552 () Bool)

(declare-fun b_and!179719 () Bool)

(assert (=> b!2277496 (= tp!721552 (and (=> t!203213 result!164982) (=> t!203215 result!164984) b_and!179719))))

(declare-fun e!1458785 () Bool)

(assert (=> b!2277496 (= e!1458785 (and tp!721550 tp!721552))))

(declare-fun tp!721551 () Bool)

(declare-fun e!1458786 () Bool)

(declare-fun b!2277495 () Bool)

(assert (=> b!2277495 (= e!1458786 (and tp!721551 (inv!36651 (tag!4811 (h!32479 (t!203166 rules!1750)))) (inv!36655 (transformation!4321 (h!32479 (t!203166 rules!1750)))) e!1458785))))

(declare-fun b!2277494 () Bool)

(declare-fun e!1458788 () Bool)

(declare-fun tp!721549 () Bool)

(assert (=> b!2277494 (= e!1458788 (and e!1458786 tp!721549))))

(assert (=> b!2276965 (= tp!721423 e!1458788)))

(assert (= b!2277495 b!2277496))

(assert (= b!2277494 b!2277495))

(assert (= (and b!2276965 ((_ is Cons!27078) (t!203166 rules!1750))) b!2277494))

(declare-fun m!2705711 () Bool)

(assert (=> b!2277495 m!2705711))

(declare-fun m!2705713 () Bool)

(assert (=> b!2277495 m!2705713))

(declare-fun b!2277500 () Bool)

(declare-fun e!1458789 () Bool)

(declare-fun tp!721554 () Bool)

(declare-fun tp!721553 () Bool)

(assert (=> b!2277500 (= e!1458789 (and tp!721554 tp!721553))))

(assert (=> b!2276975 (= tp!721420 e!1458789)))

(declare-fun b!2277497 () Bool)

(assert (=> b!2277497 (= e!1458789 tp_is_empty!10559)))

(declare-fun b!2277498 () Bool)

(declare-fun tp!721556 () Bool)

(declare-fun tp!721555 () Bool)

(assert (=> b!2277498 (= e!1458789 (and tp!721556 tp!721555))))

(declare-fun b!2277499 () Bool)

(declare-fun tp!721557 () Bool)

(assert (=> b!2277499 (= e!1458789 tp!721557)))

(assert (= (and b!2276975 ((_ is ElementMatch!6669) (regex!4321 (h!32479 rules!1750)))) b!2277497))

(assert (= (and b!2276975 ((_ is Concat!11153) (regex!4321 (h!32479 rules!1750)))) b!2277498))

(assert (= (and b!2276975 ((_ is Star!6669) (regex!4321 (h!32479 rules!1750)))) b!2277499))

(assert (= (and b!2276975 ((_ is Union!6669) (regex!4321 (h!32479 rules!1750)))) b!2277500))

(declare-fun b!2277501 () Bool)

(declare-fun e!1458790 () Bool)

(declare-fun tp!721558 () Bool)

(assert (=> b!2277501 (= e!1458790 (and tp_is_empty!10559 tp!721558))))

(assert (=> b!2276977 (= tp!721416 e!1458790)))

(assert (= (and b!2276977 ((_ is Cons!27075) (t!203163 input!1722))) b!2277501))

(declare-fun b!2277502 () Bool)

(declare-fun e!1458791 () Bool)

(declare-fun tp!721559 () Bool)

(assert (=> b!2277502 (= e!1458791 (and tp_is_empty!10559 tp!721559))))

(assert (=> b!2276978 (= tp!721413 e!1458791)))

(assert (= (and b!2276978 ((_ is Cons!27075) (t!203163 otherP!12))) b!2277502))

(declare-fun b_lambda!72517 () Bool)

(assert (= b_lambda!72503 (or (and b!2276963 b_free!67887 (= (toChars!5958 (transformation!4321 (h!32479 rules!1750))) (toChars!5958 (transformation!4321 (rule!6645 (h!32478 tokens!456)))))) (and b!2277496 b_free!67915 (= (toChars!5958 (transformation!4321 (h!32479 (t!203166 rules!1750)))) (toChars!5958 (transformation!4321 (rule!6645 (h!32478 tokens!456)))))) (and b!2276972 b_free!67895 (= (toChars!5958 (transformation!4321 r!2363)) (toChars!5958 (transformation!4321 (rule!6645 (h!32478 tokens!456)))))) (and b!2276991 b_free!67891) (and b!2277457 b_free!67911 (= (toChars!5958 (transformation!4321 (rule!6645 (h!32478 (t!203165 tokens!456))))) (toChars!5958 (transformation!4321 (rule!6645 (h!32478 tokens!456)))))) (and b!2276980 b_free!67899 (= (toChars!5958 (transformation!4321 otherR!12)) (toChars!5958 (transformation!4321 (rule!6645 (h!32478 tokens!456)))))) b_lambda!72517)))

(declare-fun b_lambda!72519 () Bool)

(assert (= b_lambda!72501 (or (and b!2276963 b_free!67887 (= (toChars!5958 (transformation!4321 (h!32479 rules!1750))) (toChars!5958 (transformation!4321 (rule!6645 (h!32478 tokens!456)))))) (and b!2277496 b_free!67915 (= (toChars!5958 (transformation!4321 (h!32479 (t!203166 rules!1750)))) (toChars!5958 (transformation!4321 (rule!6645 (h!32478 tokens!456)))))) (and b!2276972 b_free!67895 (= (toChars!5958 (transformation!4321 r!2363)) (toChars!5958 (transformation!4321 (rule!6645 (h!32478 tokens!456)))))) (and b!2276991 b_free!67891) (and b!2277457 b_free!67911 (= (toChars!5958 (transformation!4321 (rule!6645 (h!32478 (t!203165 tokens!456))))) (toChars!5958 (transformation!4321 (rule!6645 (h!32478 tokens!456)))))) (and b!2276980 b_free!67899 (= (toChars!5958 (transformation!4321 otherR!12)) (toChars!5958 (transformation!4321 (rule!6645 (h!32478 tokens!456)))))) b_lambda!72519)))

(check-sat (not b!2277062) (not b_next!68591) (not d!673992) (not b!2277424) (not b!2277316) (not b!2277484) (not d!674126) (not b!2277439) (not b!2277426) (not b!2277397) (not d!674106) (not b!2277063) (not b!2277479) b_and!179701 (not d!674094) (not b!2277429) (not d!674014) (not b!2277029) (not b!2277064) (not b!2277361) (not d!674022) (not d!674020) (not b_next!68619) b_and!179717 (not b_next!68595) (not bm!136326) (not b!2277485) (not b!2277018) (not d!673986) (not b!2277475) (not b!2277441) (not b_next!68613) (not b!2277462) (not d!674098) (not d!674102) (not d!674118) (not b!2277483) (not b!2276998) b_and!179703 (not b!2277442) (not b!2277289) (not b!2277078) (not d!674104) (not b!2277271) (not b!2277495) (not b_next!68589) (not b!2277499) (not b!2277433) b_and!179653 (not b!2277014) (not d!673996) b_and!179713 (not b!2276997) (not b_lambda!72519) (not b!2277040) (not b!2277494) (not b!2277268) (not b_next!68617) (not b!2277392) (not b!2277041) (not b!2277340) (not b_lambda!72511) (not b!2277430) (not b!2277351) (not b!2277443) (not b!2277427) (not b!2277431) (not b!2277502) (not d!674116) (not d!674128) (not b_next!68597) (not b!2277028) (not b!2277480) (not b!2277355) (not d!674096) (not b_next!68593) (not b!2277456) (not d!674114) (not b!2277501) (not d!673988) (not b!2277332) b_and!179715 (not b!2277015) (not b!2277404) (not b!2277003) (not tb!135291) (not b_next!68615) (not b!2277100) (not b_next!68603) (not d!674122) (not b!2277425) (not d!673984) (not d!674090) (not b_next!68601) (not b!2277405) (not b!2277481) (not d!674124) (not b!2277401) (not b!2277109) (not bm!136329) (not b!2277454) (not b_lambda!72517) (not b!2277270) (not b!2277428) b_and!179649 b_and!179641 b_and!179705 (not d!673970) (not b!2277478) (not b!2277500) (not tb!135263) (not b!2277363) b_and!179719 (not b!2277436) (not b!2277267) (not d!674016) (not b!2277030) tp_is_empty!10559 (not b_next!68599) (not b!2277498) b_and!179707 (not b!2277474) (not b!2277476) (not d!674130) b_and!179645 (not d!674002) (not d!674110) (not d!674108) (not b!2277393) (not b!2277455))
(check-sat b_and!179701 (not b_next!68619) (not b_next!68613) b_and!179703 b_and!179713 (not b_next!68617) b_and!179715 (not b_next!68591) (not b_next!68601) b_and!179719 (not b_next!68599) b_and!179717 (not b_next!68595) (not b_next!68589) b_and!179653 (not b_next!68597) (not b_next!68593) (not b_next!68615) (not b_next!68603) b_and!179649 b_and!179641 b_and!179705 b_and!179707 b_and!179645)
(get-model)

(declare-fun b!2277537 () Bool)

(declare-fun e!1458810 () List!27169)

(assert (=> b!2277537 (= e!1458810 (_2!15905 lt!845431))))

(declare-fun lt!845557 () List!27169)

(declare-fun e!1458809 () Bool)

(declare-fun b!2277540 () Bool)

(assert (=> b!2277540 (= e!1458809 (or (not (= (_2!15905 lt!845431) Nil!27075)) (= lt!845557 (t!203163 lt!845428))))))

(declare-fun b!2277539 () Bool)

(declare-fun res!973418 () Bool)

(assert (=> b!2277539 (=> (not res!973418) (not e!1458809))))

(assert (=> b!2277539 (= res!973418 (= (size!21280 lt!845557) (+ (size!21280 (t!203163 lt!845428)) (size!21280 (_2!15905 lt!845431)))))))

(declare-fun b!2277538 () Bool)

(assert (=> b!2277538 (= e!1458810 (Cons!27075 (h!32476 (t!203163 lt!845428)) (++!6609 (t!203163 (t!203163 lt!845428)) (_2!15905 lt!845431))))))

(declare-fun d!674140 () Bool)

(assert (=> d!674140 e!1458809))

(declare-fun res!973417 () Bool)

(assert (=> d!674140 (=> (not res!973417) (not e!1458809))))

(assert (=> d!674140 (= res!973417 (= (content!3614 lt!845557) ((_ map or) (content!3614 (t!203163 lt!845428)) (content!3614 (_2!15905 lt!845431)))))))

(assert (=> d!674140 (= lt!845557 e!1458810)))

(declare-fun c!361518 () Bool)

(assert (=> d!674140 (= c!361518 ((_ is Nil!27075) (t!203163 lt!845428)))))

(assert (=> d!674140 (= (++!6609 (t!203163 lt!845428) (_2!15905 lt!845431)) lt!845557)))

(assert (= (and d!674140 c!361518) b!2277537))

(assert (= (and d!674140 (not c!361518)) b!2277538))

(assert (= (and d!674140 res!973417) b!2277539))

(assert (= (and b!2277539 res!973418) b!2277540))

(declare-fun m!2705733 () Bool)

(assert (=> b!2277539 m!2705733))

(declare-fun m!2705735 () Bool)

(assert (=> b!2277539 m!2705735))

(assert (=> b!2277539 m!2705325))

(declare-fun m!2705737 () Bool)

(assert (=> b!2277538 m!2705737))

(declare-fun m!2705739 () Bool)

(assert (=> d!674140 m!2705739))

(declare-fun m!2705741 () Bool)

(assert (=> d!674140 m!2705741))

(assert (=> d!674140 m!2705333))

(assert (=> b!2277040 d!674140))

(declare-fun d!674142 () Bool)

(declare-fun c!361526 () Bool)

(assert (=> d!674142 (= c!361526 ((_ is Node!8790) (c!361426 (dynLambda!11755 (toChars!5958 (transformation!4321 (rule!6645 (head!4924 tokens!456)))) (value!136968 (head!4924 tokens!456))))))))

(declare-fun e!1458820 () Bool)

(assert (=> d!674142 (= (inv!36658 (c!361426 (dynLambda!11755 (toChars!5958 (transformation!4321 (rule!6645 (head!4924 tokens!456)))) (value!136968 (head!4924 tokens!456))))) e!1458820)))

(declare-fun b!2277557 () Bool)

(declare-fun inv!36660 (Conc!8790) Bool)

(assert (=> b!2277557 (= e!1458820 (inv!36660 (c!361426 (dynLambda!11755 (toChars!5958 (transformation!4321 (rule!6645 (head!4924 tokens!456)))) (value!136968 (head!4924 tokens!456))))))))

(declare-fun b!2277558 () Bool)

(declare-fun e!1458821 () Bool)

(assert (=> b!2277558 (= e!1458820 e!1458821)))

(declare-fun res!973421 () Bool)

(assert (=> b!2277558 (= res!973421 (not ((_ is Leaf!12936) (c!361426 (dynLambda!11755 (toChars!5958 (transformation!4321 (rule!6645 (head!4924 tokens!456)))) (value!136968 (head!4924 tokens!456)))))))))

(assert (=> b!2277558 (=> res!973421 e!1458821)))

(declare-fun b!2277559 () Bool)

(declare-fun inv!36661 (Conc!8790) Bool)

(assert (=> b!2277559 (= e!1458821 (inv!36661 (c!361426 (dynLambda!11755 (toChars!5958 (transformation!4321 (rule!6645 (head!4924 tokens!456)))) (value!136968 (head!4924 tokens!456))))))))

(assert (= (and d!674142 c!361526) b!2277557))

(assert (= (and d!674142 (not c!361526)) b!2277558))

(assert (= (and b!2277558 (not res!973421)) b!2277559))

(declare-fun m!2705751 () Bool)

(assert (=> b!2277557 m!2705751))

(declare-fun m!2705753 () Bool)

(assert (=> b!2277559 m!2705753))

(assert (=> b!2277316 d!674142))

(declare-fun b!2277567 () Bool)

(declare-fun e!1458825 () Int)

(assert (=> b!2277567 (= e!1458825 (- 1))))

(declare-fun b!2277565 () Bool)

(declare-fun e!1458824 () Int)

(assert (=> b!2277565 (= e!1458824 e!1458825)))

(declare-fun c!361530 () Bool)

(assert (=> b!2277565 (= c!361530 (and ((_ is Cons!27078) (t!203166 rules!1750)) (not (= (h!32479 (t!203166 rules!1750)) otherR!12))))))

(declare-fun b!2277564 () Bool)

(assert (=> b!2277564 (= e!1458824 0)))

(declare-fun d!674150 () Bool)

(declare-fun lt!845560 () Int)

(assert (=> d!674150 (>= lt!845560 0)))

(assert (=> d!674150 (= lt!845560 e!1458824)))

(declare-fun c!361529 () Bool)

(assert (=> d!674150 (= c!361529 (and ((_ is Cons!27078) (t!203166 rules!1750)) (= (h!32479 (t!203166 rules!1750)) otherR!12)))))

(assert (=> d!674150 (contains!4691 (t!203166 rules!1750) otherR!12)))

(assert (=> d!674150 (= (getIndex!334 (t!203166 rules!1750) otherR!12) lt!845560)))

(declare-fun b!2277566 () Bool)

(assert (=> b!2277566 (= e!1458825 (+ 1 (getIndex!334 (t!203166 (t!203166 rules!1750)) otherR!12)))))

(assert (= (and d!674150 c!361529) b!2277564))

(assert (= (and d!674150 (not c!361529)) b!2277565))

(assert (= (and b!2277565 c!361530) b!2277566))

(assert (= (and b!2277565 (not c!361530)) b!2277567))

(assert (=> d!674150 m!2705691))

(declare-fun m!2705755 () Bool)

(assert (=> b!2277566 m!2705755))

(assert (=> b!2277355 d!674150))

(declare-fun d!674152 () Bool)

(declare-fun lt!845561 () Int)

(assert (=> d!674152 (>= lt!845561 0)))

(declare-fun e!1458826 () Int)

(assert (=> d!674152 (= lt!845561 e!1458826)))

(declare-fun c!361531 () Bool)

(assert (=> d!674152 (= c!361531 ((_ is Nil!27075) (originalCharacters!5091 (h!32478 tokens!456))))))

(assert (=> d!674152 (= (size!21280 (originalCharacters!5091 (h!32478 tokens!456))) lt!845561)))

(declare-fun b!2277568 () Bool)

(assert (=> b!2277568 (= e!1458826 0)))

(declare-fun b!2277569 () Bool)

(assert (=> b!2277569 (= e!1458826 (+ 1 (size!21280 (t!203163 (originalCharacters!5091 (h!32478 tokens!456))))))))

(assert (= (and d!674152 c!361531) b!2277568))

(assert (= (and d!674152 (not c!361531)) b!2277569))

(declare-fun m!2705759 () Bool)

(assert (=> b!2277569 m!2705759))

(assert (=> b!2276998 d!674152))

(declare-fun d!674154 () Bool)

(declare-fun c!361532 () Bool)

(assert (=> d!674154 (= c!361532 ((_ is Node!8790) (c!361426 (dynLambda!11755 (toChars!5958 (transformation!4321 (rule!6645 (h!32478 tokens!456)))) (value!136968 (h!32478 tokens!456))))))))

(declare-fun e!1458827 () Bool)

(assert (=> d!674154 (= (inv!36658 (c!361426 (dynLambda!11755 (toChars!5958 (transformation!4321 (rule!6645 (h!32478 tokens!456)))) (value!136968 (h!32478 tokens!456))))) e!1458827)))

(declare-fun b!2277570 () Bool)

(assert (=> b!2277570 (= e!1458827 (inv!36660 (c!361426 (dynLambda!11755 (toChars!5958 (transformation!4321 (rule!6645 (h!32478 tokens!456)))) (value!136968 (h!32478 tokens!456))))))))

(declare-fun b!2277571 () Bool)

(declare-fun e!1458828 () Bool)

(assert (=> b!2277571 (= e!1458827 e!1458828)))

(declare-fun res!973422 () Bool)

(assert (=> b!2277571 (= res!973422 (not ((_ is Leaf!12936) (c!361426 (dynLambda!11755 (toChars!5958 (transformation!4321 (rule!6645 (h!32478 tokens!456)))) (value!136968 (h!32478 tokens!456)))))))))

(assert (=> b!2277571 (=> res!973422 e!1458828)))

(declare-fun b!2277572 () Bool)

(assert (=> b!2277572 (= e!1458828 (inv!36661 (c!361426 (dynLambda!11755 (toChars!5958 (transformation!4321 (rule!6645 (h!32478 tokens!456)))) (value!136968 (h!32478 tokens!456))))))))

(assert (= (and d!674154 c!361532) b!2277570))

(assert (= (and d!674154 (not c!361532)) b!2277571))

(assert (= (and b!2277571 (not res!973422)) b!2277572))

(declare-fun m!2705761 () Bool)

(assert (=> b!2277570 m!2705761))

(declare-fun m!2705763 () Bool)

(assert (=> b!2277572 m!2705763))

(assert (=> b!2277003 d!674154))

(declare-fun d!674158 () Bool)

(declare-fun c!361535 () Bool)

(assert (=> d!674158 (= c!361535 ((_ is Nil!27078) rules!1750))))

(declare-fun e!1458831 () (InoxSet Rule!8442))

(assert (=> d!674158 (= (content!3615 rules!1750) e!1458831)))

(declare-fun b!2277577 () Bool)

(assert (=> b!2277577 (= e!1458831 ((as const (Array Rule!8442 Bool)) false))))

(declare-fun b!2277578 () Bool)

(assert (=> b!2277578 (= e!1458831 ((_ map or) (store ((as const (Array Rule!8442 Bool)) false) (h!32479 rules!1750) true) (content!3615 (t!203166 rules!1750))))))

(assert (= (and d!674158 c!361535) b!2277577))

(assert (= (and d!674158 (not c!361535)) b!2277578))

(declare-fun m!2705765 () Bool)

(assert (=> b!2277578 m!2705765))

(declare-fun m!2705767 () Bool)

(assert (=> b!2277578 m!2705767))

(assert (=> d!674128 d!674158))

(declare-fun d!674160 () Bool)

(assert (=> d!674160 true))

(declare-fun lambda!85616 () Int)

(declare-fun order!15113 () Int)

(declare-fun order!15115 () Int)

(declare-fun dynLambda!11756 (Int Int) Int)

(declare-fun dynLambda!11757 (Int Int) Int)

(assert (=> d!674160 (< (dynLambda!11756 order!15113 (toValue!6099 (transformation!4321 otherR!12))) (dynLambda!11757 order!15115 lambda!85616))))

(declare-fun Forall2!701 (Int) Bool)

(assert (=> d!674160 (= (equivClasses!1663 (toChars!5958 (transformation!4321 otherR!12)) (toValue!6099 (transformation!4321 otherR!12))) (Forall2!701 lambda!85616))))

(declare-fun bs!456422 () Bool)

(assert (= bs!456422 d!674160))

(declare-fun m!2705903 () Bool)

(assert (=> bs!456422 m!2705903))

(assert (=> b!2277289 d!674160))

(declare-fun d!674212 () Bool)

(assert (=> d!674212 (= (head!4926 otherP!12) (h!32476 otherP!12))))

(assert (=> b!2277441 d!674212))

(declare-fun d!674214 () Bool)

(assert (=> d!674214 (= (head!4926 input!1722) (h!32476 input!1722))))

(assert (=> b!2277441 d!674214))

(declare-fun d!674216 () Bool)

(declare-fun lt!845596 () Int)

(assert (=> d!674216 (>= lt!845596 0)))

(declare-fun e!1458872 () Int)

(assert (=> d!674216 (= lt!845596 e!1458872)))

(declare-fun c!361552 () Bool)

(assert (=> d!674216 (= c!361552 ((_ is Nil!27075) lt!845429))))

(assert (=> d!674216 (= (size!21280 lt!845429) lt!845596)))

(declare-fun b!2277651 () Bool)

(assert (=> b!2277651 (= e!1458872 0)))

(declare-fun b!2277652 () Bool)

(assert (=> b!2277652 (= e!1458872 (+ 1 (size!21280 (t!203163 lt!845429))))))

(assert (= (and d!674216 c!361552) b!2277651))

(assert (= (and d!674216 (not c!361552)) b!2277652))

(declare-fun m!2705905 () Bool)

(assert (=> b!2277652 m!2705905))

(assert (=> b!2277030 d!674216))

(declare-fun d!674218 () Bool)

(declare-fun lt!845597 () Int)

(assert (=> d!674218 (>= lt!845597 0)))

(declare-fun e!1458873 () Int)

(assert (=> d!674218 (= lt!845597 e!1458873)))

(declare-fun c!361553 () Bool)

(assert (=> d!674218 (= c!361553 ((_ is Nil!27075) lt!845428))))

(assert (=> d!674218 (= (size!21280 lt!845428) lt!845597)))

(declare-fun b!2277653 () Bool)

(assert (=> b!2277653 (= e!1458873 0)))

(declare-fun b!2277654 () Bool)

(assert (=> b!2277654 (= e!1458873 (+ 1 (size!21280 (t!203163 lt!845428))))))

(assert (= (and d!674218 c!361553) b!2277653))

(assert (= (and d!674218 (not c!361553)) b!2277654))

(assert (=> b!2277654 m!2705735))

(assert (=> b!2277030 d!674218))

(declare-fun bs!456423 () Bool)

(declare-fun d!674220 () Bool)

(assert (= bs!456423 (and d!674220 d!674160)))

(declare-fun lambda!85617 () Int)

(assert (=> bs!456423 (= (= (toValue!6099 (transformation!4321 (rule!6645 (h!32478 tokens!456)))) (toValue!6099 (transformation!4321 otherR!12))) (= lambda!85617 lambda!85616))))

(assert (=> d!674220 true))

(assert (=> d!674220 (< (dynLambda!11756 order!15113 (toValue!6099 (transformation!4321 (rule!6645 (h!32478 tokens!456))))) (dynLambda!11757 order!15115 lambda!85617))))

(assert (=> d!674220 (= (equivClasses!1663 (toChars!5958 (transformation!4321 (rule!6645 (h!32478 tokens!456)))) (toValue!6099 (transformation!4321 (rule!6645 (h!32478 tokens!456))))) (Forall2!701 lambda!85617))))

(declare-fun bs!456424 () Bool)

(assert (= bs!456424 d!674220))

(declare-fun m!2705907 () Bool)

(assert (=> bs!456424 m!2705907))

(assert (=> b!2277109 d!674220))

(declare-fun d!674222 () Bool)

(assert (=> d!674222 true))

(declare-fun lt!845600 () Bool)

(assert (=> d!674222 (= lt!845600 (rulesValidInductive!1513 thiss!16613 rules!1750))))

(declare-fun lambda!85620 () Int)

(declare-fun forall!5487 (List!27172 Int) Bool)

(assert (=> d!674222 (= lt!845600 (forall!5487 rules!1750 lambda!85620))))

(assert (=> d!674222 (= (rulesValid!1588 thiss!16613 rules!1750) lt!845600)))

(declare-fun bs!456425 () Bool)

(assert (= bs!456425 d!674222))

(assert (=> bs!456425 m!2705675))

(declare-fun m!2705909 () Bool)

(assert (=> bs!456425 m!2705909))

(assert (=> d!674130 d!674222))

(declare-fun d!674224 () Bool)

(assert (=> d!674224 (= (isEmpty!15362 (originalCharacters!5091 (h!32478 tokens!456))) ((_ is Nil!27075) (originalCharacters!5091 (h!32478 tokens!456))))))

(assert (=> d!673970 d!674224))

(declare-fun b!2277666 () Bool)

(declare-fun e!1458878 () List!27169)

(declare-fun e!1458879 () List!27169)

(assert (=> b!2277666 (= e!1458878 e!1458879)))

(declare-fun c!361559 () Bool)

(assert (=> b!2277666 (= c!361559 ((_ is Leaf!12936) (c!361426 (charsOf!2709 (head!4924 tokens!456)))))))

(declare-fun b!2277667 () Bool)

(declare-fun list!10538 (IArray!17585) List!27169)

(assert (=> b!2277667 (= e!1458879 (list!10538 (xs!11732 (c!361426 (charsOf!2709 (head!4924 tokens!456))))))))

(declare-fun b!2277668 () Bool)

(assert (=> b!2277668 (= e!1458879 (++!6609 (list!10535 (left!20543 (c!361426 (charsOf!2709 (head!4924 tokens!456))))) (list!10535 (right!20873 (c!361426 (charsOf!2709 (head!4924 tokens!456)))))))))

(declare-fun b!2277665 () Bool)

(assert (=> b!2277665 (= e!1458878 Nil!27075)))

(declare-fun d!674226 () Bool)

(declare-fun c!361558 () Bool)

(assert (=> d!674226 (= c!361558 ((_ is Empty!8790) (c!361426 (charsOf!2709 (head!4924 tokens!456)))))))

(assert (=> d!674226 (= (list!10535 (c!361426 (charsOf!2709 (head!4924 tokens!456)))) e!1458878)))

(assert (= (and d!674226 c!361558) b!2277665))

(assert (= (and d!674226 (not c!361558)) b!2277666))

(assert (= (and b!2277666 c!361559) b!2277667))

(assert (= (and b!2277666 (not c!361559)) b!2277668))

(declare-fun m!2705911 () Bool)

(assert (=> b!2277667 m!2705911))

(declare-fun m!2705913 () Bool)

(assert (=> b!2277668 m!2705913))

(declare-fun m!2705915 () Bool)

(assert (=> b!2277668 m!2705915))

(assert (=> b!2277668 m!2705913))

(assert (=> b!2277668 m!2705915))

(declare-fun m!2705917 () Bool)

(assert (=> b!2277668 m!2705917))

(assert (=> d!674118 d!674226))

(declare-fun d!674228 () Bool)

(assert (=> d!674228 (= (get!8161 lt!845544) (v!30360 lt!845544))))

(assert (=> b!2277430 d!674228))

(declare-fun d!674230 () Bool)

(declare-fun dynLambda!11758 (Int BalanceConc!17308) TokenValue!4483)

(assert (=> d!674230 (= (apply!6603 (transformation!4321 (rule!6645 (_1!15905 (get!8161 lt!845544)))) (seqFromList!3025 (originalCharacters!5091 (_1!15905 (get!8161 lt!845544))))) (dynLambda!11758 (toValue!6099 (transformation!4321 (rule!6645 (_1!15905 (get!8161 lt!845544))))) (seqFromList!3025 (originalCharacters!5091 (_1!15905 (get!8161 lt!845544))))))))

(declare-fun b_lambda!72525 () Bool)

(assert (=> (not b_lambda!72525) (not d!674230)))

(declare-fun tb!135335 () Bool)

(declare-fun t!203243 () Bool)

(assert (=> (and b!2276963 (= (toValue!6099 (transformation!4321 (h!32479 rules!1750))) (toValue!6099 (transformation!4321 (rule!6645 (_1!15905 (get!8161 lt!845544)))))) t!203243) tb!135335))

(declare-fun result!165012 () Bool)

(assert (=> tb!135335 (= result!165012 (inv!21 (dynLambda!11758 (toValue!6099 (transformation!4321 (rule!6645 (_1!15905 (get!8161 lt!845544))))) (seqFromList!3025 (originalCharacters!5091 (_1!15905 (get!8161 lt!845544)))))))))

(declare-fun m!2705919 () Bool)

(assert (=> tb!135335 m!2705919))

(assert (=> d!674230 t!203243))

(declare-fun b_and!179745 () Bool)

(assert (= b_and!179641 (and (=> t!203243 result!165012) b_and!179745)))

(declare-fun tb!135337 () Bool)

(declare-fun t!203245 () Bool)

(assert (=> (and b!2277496 (= (toValue!6099 (transformation!4321 (h!32479 (t!203166 rules!1750)))) (toValue!6099 (transformation!4321 (rule!6645 (_1!15905 (get!8161 lt!845544)))))) t!203245) tb!135337))

(declare-fun result!165016 () Bool)

(assert (= result!165016 result!165012))

(assert (=> d!674230 t!203245))

(declare-fun b_and!179747 () Bool)

(assert (= b_and!179717 (and (=> t!203245 result!165016) b_and!179747)))

(declare-fun tb!135339 () Bool)

(declare-fun t!203247 () Bool)

(assert (=> (and b!2276980 (= (toValue!6099 (transformation!4321 otherR!12)) (toValue!6099 (transformation!4321 (rule!6645 (_1!15905 (get!8161 lt!845544)))))) t!203247) tb!135339))

(declare-fun result!165018 () Bool)

(assert (= result!165018 result!165012))

(assert (=> d!674230 t!203247))

(declare-fun b_and!179749 () Bool)

(assert (= b_and!179653 (and (=> t!203247 result!165018) b_and!179749)))

(declare-fun t!203249 () Bool)

(declare-fun tb!135341 () Bool)

(assert (=> (and b!2277457 (= (toValue!6099 (transformation!4321 (rule!6645 (h!32478 (t!203165 tokens!456))))) (toValue!6099 (transformation!4321 (rule!6645 (_1!15905 (get!8161 lt!845544)))))) t!203249) tb!135341))

(declare-fun result!165020 () Bool)

(assert (= result!165020 result!165012))

(assert (=> d!674230 t!203249))

(declare-fun b_and!179751 () Bool)

(assert (= b_and!179713 (and (=> t!203249 result!165020) b_and!179751)))

(declare-fun tb!135343 () Bool)

(declare-fun t!203251 () Bool)

(assert (=> (and b!2276991 (= (toValue!6099 (transformation!4321 (rule!6645 (h!32478 tokens!456)))) (toValue!6099 (transformation!4321 (rule!6645 (_1!15905 (get!8161 lt!845544)))))) t!203251) tb!135343))

(declare-fun result!165022 () Bool)

(assert (= result!165022 result!165012))

(assert (=> d!674230 t!203251))

(declare-fun b_and!179753 () Bool)

(assert (= b_and!179645 (and (=> t!203251 result!165022) b_and!179753)))

(declare-fun tb!135345 () Bool)

(declare-fun t!203253 () Bool)

(assert (=> (and b!2276972 (= (toValue!6099 (transformation!4321 r!2363)) (toValue!6099 (transformation!4321 (rule!6645 (_1!15905 (get!8161 lt!845544)))))) t!203253) tb!135345))

(declare-fun result!165024 () Bool)

(assert (= result!165024 result!165012))

(assert (=> d!674230 t!203253))

(declare-fun b_and!179755 () Bool)

(assert (= b_and!179649 (and (=> t!203253 result!165024) b_and!179755)))

(assert (=> d!674230 m!2705657))

(declare-fun m!2705921 () Bool)

(assert (=> d!674230 m!2705921))

(assert (=> b!2277430 d!674230))

(declare-fun d!674232 () Bool)

(assert (=> d!674232 (= (seqFromList!3025 (originalCharacters!5091 (_1!15905 (get!8161 lt!845544)))) (fromListB!1354 (originalCharacters!5091 (_1!15905 (get!8161 lt!845544)))))))

(declare-fun bs!456426 () Bool)

(assert (= bs!456426 d!674232))

(declare-fun m!2705923 () Bool)

(assert (=> bs!456426 m!2705923))

(assert (=> b!2277430 d!674232))

(declare-fun d!674234 () Bool)

(assert (=> d!674234 true))

(declare-fun lambda!85623 () Int)

(declare-fun order!15117 () Int)

(declare-fun order!15119 () Int)

(declare-fun dynLambda!11759 (Int Int) Int)

(declare-fun dynLambda!11760 (Int Int) Int)

(assert (=> d!674234 (< (dynLambda!11759 order!15117 (toChars!5958 (transformation!4321 r!2363))) (dynLambda!11760 order!15119 lambda!85623))))

(assert (=> d!674234 true))

(assert (=> d!674234 (< (dynLambda!11756 order!15113 (toValue!6099 (transformation!4321 r!2363))) (dynLambda!11760 order!15119 lambda!85623))))

(declare-fun Forall!1084 (Int) Bool)

(assert (=> d!674234 (= (semiInverseModEq!1744 (toChars!5958 (transformation!4321 r!2363)) (toValue!6099 (transformation!4321 r!2363))) (Forall!1084 lambda!85623))))

(declare-fun bs!456427 () Bool)

(assert (= bs!456427 d!674234))

(declare-fun m!2705925 () Bool)

(assert (=> bs!456427 m!2705925))

(assert (=> d!674002 d!674234))

(assert (=> d!674126 d!674124))

(declare-fun d!674236 () Bool)

(assert (=> d!674236 (ruleValid!1411 thiss!16613 r!2363)))

(assert (=> d!674236 true))

(declare-fun _$65!1114 () Unit!40014)

(assert (=> d!674236 (= (choose!13285 thiss!16613 r!2363 rules!1750) _$65!1114)))

(declare-fun bs!456428 () Bool)

(assert (= bs!456428 d!674236))

(assert (=> bs!456428 m!2705285))

(assert (=> d!674126 d!674236))

(assert (=> d!674126 d!674102))

(declare-fun bs!456429 () Bool)

(declare-fun d!674238 () Bool)

(assert (= bs!456429 (and d!674238 d!674160)))

(declare-fun lambda!85624 () Int)

(assert (=> bs!456429 (= (= (toValue!6099 (transformation!4321 r!2363)) (toValue!6099 (transformation!4321 otherR!12))) (= lambda!85624 lambda!85616))))

(declare-fun bs!456430 () Bool)

(assert (= bs!456430 (and d!674238 d!674220)))

(assert (=> bs!456430 (= (= (toValue!6099 (transformation!4321 r!2363)) (toValue!6099 (transformation!4321 (rule!6645 (h!32478 tokens!456))))) (= lambda!85624 lambda!85617))))

(assert (=> d!674238 true))

(assert (=> d!674238 (< (dynLambda!11756 order!15113 (toValue!6099 (transformation!4321 r!2363))) (dynLambda!11757 order!15115 lambda!85624))))

(assert (=> d!674238 (= (equivClasses!1663 (toChars!5958 (transformation!4321 r!2363)) (toValue!6099 (transformation!4321 r!2363))) (Forall2!701 lambda!85624))))

(declare-fun bs!456431 () Bool)

(assert (= bs!456431 d!674238))

(declare-fun m!2705927 () Bool)

(assert (=> bs!456431 m!2705927))

(assert (=> b!2277100 d!674238))

(declare-fun b!2277675 () Bool)

(declare-fun e!1458884 () Bool)

(assert (=> b!2277675 (= e!1458884 (inv!15 (value!136968 (h!32478 (t!203165 tokens!456)))))))

(declare-fun b!2277676 () Bool)

(declare-fun e!1458885 () Bool)

(assert (=> b!2277676 (= e!1458885 (inv!16 (value!136968 (h!32478 (t!203165 tokens!456)))))))

(declare-fun d!674240 () Bool)

(declare-fun c!361561 () Bool)

(assert (=> d!674240 (= c!361561 ((_ is IntegerValue!13449) (value!136968 (h!32478 (t!203165 tokens!456)))))))

(assert (=> d!674240 (= (inv!21 (value!136968 (h!32478 (t!203165 tokens!456)))) e!1458885)))

(declare-fun b!2277677 () Bool)

(declare-fun e!1458883 () Bool)

(assert (=> b!2277677 (= e!1458885 e!1458883)))

(declare-fun c!361560 () Bool)

(assert (=> b!2277677 (= c!361560 ((_ is IntegerValue!13450) (value!136968 (h!32478 (t!203165 tokens!456)))))))

(declare-fun b!2277678 () Bool)

(declare-fun res!973458 () Bool)

(assert (=> b!2277678 (=> res!973458 e!1458884)))

(assert (=> b!2277678 (= res!973458 (not ((_ is IntegerValue!13451) (value!136968 (h!32478 (t!203165 tokens!456))))))))

(assert (=> b!2277678 (= e!1458883 e!1458884)))

(declare-fun b!2277679 () Bool)

(assert (=> b!2277679 (= e!1458883 (inv!17 (value!136968 (h!32478 (t!203165 tokens!456)))))))

(assert (= (and d!674240 c!361561) b!2277676))

(assert (= (and d!674240 (not c!361561)) b!2277677))

(assert (= (and b!2277677 c!361560) b!2277679))

(assert (= (and b!2277677 (not c!361560)) b!2277678))

(assert (= (and b!2277678 (not res!973458)) b!2277675))

(declare-fun m!2705929 () Bool)

(assert (=> b!2277675 m!2705929))

(declare-fun m!2705931 () Bool)

(assert (=> b!2277676 m!2705931))

(declare-fun m!2705933 () Bool)

(assert (=> b!2277679 m!2705933))

(assert (=> b!2277455 d!674240))

(declare-fun d!674242 () Bool)

(assert (=> d!674242 (= (head!4926 (list!10532 (charsOf!2709 (head!4924 tokens!456)))) (h!32476 (list!10532 (charsOf!2709 (head!4924 tokens!456)))))))

(assert (=> b!2277405 d!674242))

(assert (=> d!674104 d!674102))

(declare-fun d!674244 () Bool)

(declare-fun charsToBigInt!1 (List!27170) Int)

(assert (=> d!674244 (= (inv!17 (value!136968 (h!32478 tokens!456))) (= (charsToBigInt!1 (text!31829 (value!136968 (h!32478 tokens!456)))) (value!136960 (value!136968 (h!32478 tokens!456)))))))

(declare-fun bs!456432 () Bool)

(assert (= bs!456432 d!674244))

(declare-fun m!2705935 () Bool)

(assert (=> bs!456432 m!2705935))

(assert (=> b!2277018 d!674244))

(declare-fun d!674246 () Bool)

(declare-fun lt!845617 () Int)

(declare-fun size!21285 (List!27171) Int)

(assert (=> d!674246 (= lt!845617 (size!21285 (list!10533 (_1!15906 lt!845512))))))

(declare-fun size!21286 (Conc!8791) Int)

(assert (=> d!674246 (= lt!845617 (size!21286 (c!361428 (_1!15906 lt!845512))))))

(assert (=> d!674246 (= (size!21282 (_1!15906 lt!845512)) lt!845617)))

(declare-fun bs!456433 () Bool)

(assert (= bs!456433 d!674246))

(assert (=> bs!456433 m!2705583))

(assert (=> bs!456433 m!2705583))

(declare-fun m!2705937 () Bool)

(assert (=> bs!456433 m!2705937))

(declare-fun m!2705939 () Bool)

(assert (=> bs!456433 m!2705939))

(assert (=> d!674022 d!674246))

(declare-fun b!2277733 () Bool)

(declare-fun e!1458916 () tuple2!26792)

(assert (=> b!2277733 (= e!1458916 (tuple2!26793 (BalanceConc!17311 Empty!8791) (seqFromList!3025 input!1722)))))

(declare-fun d!674248 () Bool)

(declare-fun e!1458919 () Bool)

(assert (=> d!674248 e!1458919))

(declare-fun res!973468 () Bool)

(assert (=> d!674248 (=> (not res!973468) (not e!1458919))))

(declare-fun lt!845784 () tuple2!26792)

(declare-fun lexRec!534 (LexerInterface!3918 List!27172 BalanceConc!17308) tuple2!26792)

(assert (=> d!674248 (= res!973468 (= (list!10533 (_1!15906 lt!845784)) (list!10533 (_1!15906 (lexRec!534 thiss!16613 rules!1750 (seqFromList!3025 input!1722))))))))

(declare-fun e!1458917 () tuple2!26792)

(assert (=> d!674248 (= lt!845784 e!1458917)))

(declare-fun c!361584 () Bool)

(declare-datatypes ((tuple2!26798 0))(
  ( (tuple2!26799 (_1!15909 Token!8120) (_2!15909 BalanceConc!17308)) )
))
(declare-datatypes ((Option!5306 0))(
  ( (None!5305) (Some!5305 (v!30363 tuple2!26798)) )
))
(declare-fun lt!845776 () Option!5306)

(assert (=> d!674248 (= c!361584 ((_ is Some!5305) lt!845776))))

(declare-fun maxPrefixZipperSequenceV2!404 (LexerInterface!3918 List!27172 BalanceConc!17308 BalanceConc!17308) Option!5306)

(assert (=> d!674248 (= lt!845776 (maxPrefixZipperSequenceV2!404 thiss!16613 rules!1750 (seqFromList!3025 input!1722) (seqFromList!3025 input!1722)))))

(declare-fun lt!845805 () Unit!40014)

(declare-fun lt!845799 () Unit!40014)

(assert (=> d!674248 (= lt!845805 lt!845799)))

(declare-fun lt!845798 () List!27169)

(declare-fun lt!845808 () List!27169)

(declare-fun isSuffix!770 (List!27169 List!27169) Bool)

(assert (=> d!674248 (isSuffix!770 lt!845798 (++!6609 lt!845808 lt!845798))))

(declare-fun lemmaConcatTwoListThenFSndIsSuffix!464 (List!27169 List!27169) Unit!40014)

(assert (=> d!674248 (= lt!845799 (lemmaConcatTwoListThenFSndIsSuffix!464 lt!845808 lt!845798))))

(assert (=> d!674248 (= lt!845798 (list!10532 (seqFromList!3025 input!1722)))))

(assert (=> d!674248 (= lt!845808 (list!10532 (BalanceConc!17309 Empty!8790)))))

(assert (=> d!674248 (= (lexTailRecV2!763 thiss!16613 rules!1750 (seqFromList!3025 input!1722) (BalanceConc!17309 Empty!8790) (seqFromList!3025 input!1722) (BalanceConc!17311 Empty!8791)) lt!845784)))

(declare-fun lt!845782 () BalanceConc!17308)

(declare-fun b!2277734 () Bool)

(declare-fun append!697 (BalanceConc!17310 Token!8120) BalanceConc!17310)

(assert (=> b!2277734 (= e!1458917 (lexTailRecV2!763 thiss!16613 rules!1750 (seqFromList!3025 input!1722) lt!845782 (_2!15909 (v!30363 lt!845776)) (append!697 (BalanceConc!17311 Empty!8791) (_1!15909 (v!30363 lt!845776)))))))

(declare-fun lt!845795 () tuple2!26792)

(assert (=> b!2277734 (= lt!845795 (lexRec!534 thiss!16613 rules!1750 (_2!15909 (v!30363 lt!845776))))))

(declare-fun lt!845804 () List!27169)

(assert (=> b!2277734 (= lt!845804 (list!10532 (BalanceConc!17309 Empty!8790)))))

(declare-fun lt!845778 () List!27169)

(assert (=> b!2277734 (= lt!845778 (list!10532 (charsOf!2709 (_1!15909 (v!30363 lt!845776)))))))

(declare-fun lt!845779 () List!27169)

(assert (=> b!2277734 (= lt!845779 (list!10532 (_2!15909 (v!30363 lt!845776))))))

(declare-fun lt!845780 () Unit!40014)

(declare-fun lemmaConcatAssociativity!1380 (List!27169 List!27169 List!27169) Unit!40014)

(assert (=> b!2277734 (= lt!845780 (lemmaConcatAssociativity!1380 lt!845804 lt!845778 lt!845779))))

(assert (=> b!2277734 (= (++!6609 (++!6609 lt!845804 lt!845778) lt!845779) (++!6609 lt!845804 (++!6609 lt!845778 lt!845779)))))

(declare-fun lt!845806 () Unit!40014)

(assert (=> b!2277734 (= lt!845806 lt!845780)))

(declare-fun lt!845801 () Option!5306)

(declare-fun maxPrefixZipperSequence!869 (LexerInterface!3918 List!27172 BalanceConc!17308) Option!5306)

(assert (=> b!2277734 (= lt!845801 (maxPrefixZipperSequence!869 thiss!16613 rules!1750 (seqFromList!3025 input!1722)))))

(declare-fun c!361585 () Bool)

(assert (=> b!2277734 (= c!361585 ((_ is Some!5305) lt!845801))))

(assert (=> b!2277734 (= (lexRec!534 thiss!16613 rules!1750 (seqFromList!3025 input!1722)) e!1458916)))

(declare-fun lt!845807 () Unit!40014)

(declare-fun Unit!40016 () Unit!40014)

(assert (=> b!2277734 (= lt!845807 Unit!40016)))

(declare-fun lt!845792 () List!27171)

(assert (=> b!2277734 (= lt!845792 (list!10533 (BalanceConc!17311 Empty!8791)))))

(declare-fun lt!845803 () List!27171)

(assert (=> b!2277734 (= lt!845803 (Cons!27077 (_1!15909 (v!30363 lt!845776)) Nil!27077))))

(declare-fun lt!845783 () List!27171)

(assert (=> b!2277734 (= lt!845783 (list!10533 (_1!15906 lt!845795)))))

(declare-fun lt!845786 () Unit!40014)

(declare-fun lemmaConcatAssociativity!1381 (List!27171 List!27171 List!27171) Unit!40014)

(assert (=> b!2277734 (= lt!845786 (lemmaConcatAssociativity!1381 lt!845792 lt!845803 lt!845783))))

(declare-fun ++!6610 (List!27171 List!27171) List!27171)

(assert (=> b!2277734 (= (++!6610 (++!6610 lt!845792 lt!845803) lt!845783) (++!6610 lt!845792 (++!6610 lt!845803 lt!845783)))))

(declare-fun lt!845787 () Unit!40014)

(assert (=> b!2277734 (= lt!845787 lt!845786)))

(declare-fun lt!845809 () List!27169)

(assert (=> b!2277734 (= lt!845809 (++!6609 (list!10532 (BalanceConc!17309 Empty!8790)) (list!10532 (charsOf!2709 (_1!15909 (v!30363 lt!845776))))))))

(declare-fun lt!845785 () List!27169)

(assert (=> b!2277734 (= lt!845785 (list!10532 (_2!15909 (v!30363 lt!845776))))))

(declare-fun lt!845789 () List!27171)

(assert (=> b!2277734 (= lt!845789 (list!10533 (append!697 (BalanceConc!17311 Empty!8791) (_1!15909 (v!30363 lt!845776)))))))

(declare-fun lt!845802 () Unit!40014)

(declare-fun lemmaLexThenLexPrefix!348 (LexerInterface!3918 List!27172 List!27169 List!27169 List!27171 List!27171 List!27169) Unit!40014)

(assert (=> b!2277734 (= lt!845802 (lemmaLexThenLexPrefix!348 thiss!16613 rules!1750 lt!845809 lt!845785 lt!845789 (list!10533 (_1!15906 lt!845795)) (list!10532 (_2!15906 lt!845795))))))

(assert (=> b!2277734 (= (lexList!1088 thiss!16613 rules!1750 lt!845809) (tuple2!26795 lt!845789 Nil!27075))))

(declare-fun lt!845797 () Unit!40014)

(assert (=> b!2277734 (= lt!845797 lt!845802)))

(declare-fun lt!845796 () BalanceConc!17308)

(declare-fun ++!6611 (BalanceConc!17308 BalanceConc!17308) BalanceConc!17308)

(assert (=> b!2277734 (= lt!845796 (++!6611 (BalanceConc!17309 Empty!8790) (charsOf!2709 (_1!15909 (v!30363 lt!845776)))))))

(declare-fun lt!845800 () Option!5306)

(assert (=> b!2277734 (= lt!845800 (maxPrefixZipperSequence!869 thiss!16613 rules!1750 lt!845796))))

(declare-fun c!361586 () Bool)

(assert (=> b!2277734 (= c!361586 ((_ is Some!5305) lt!845800))))

(declare-fun e!1458918 () tuple2!26792)

(assert (=> b!2277734 (= (lexRec!534 thiss!16613 rules!1750 (++!6611 (BalanceConc!17309 Empty!8790) (charsOf!2709 (_1!15909 (v!30363 lt!845776))))) e!1458918)))

(declare-fun lt!845790 () Unit!40014)

(declare-fun Unit!40017 () Unit!40014)

(assert (=> b!2277734 (= lt!845790 Unit!40017)))

(assert (=> b!2277734 (= lt!845782 (++!6611 (BalanceConc!17309 Empty!8790) (charsOf!2709 (_1!15909 (v!30363 lt!845776)))))))

(declare-fun lt!845791 () List!27169)

(assert (=> b!2277734 (= lt!845791 (list!10532 lt!845782))))

(declare-fun lt!845793 () List!27169)

(assert (=> b!2277734 (= lt!845793 (list!10532 (_2!15909 (v!30363 lt!845776))))))

(declare-fun lt!845781 () Unit!40014)

(assert (=> b!2277734 (= lt!845781 (lemmaConcatTwoListThenFSndIsSuffix!464 lt!845791 lt!845793))))

(assert (=> b!2277734 (isSuffix!770 lt!845793 (++!6609 lt!845791 lt!845793))))

(declare-fun lt!845794 () Unit!40014)

(assert (=> b!2277734 (= lt!845794 lt!845781)))

(declare-fun b!2277735 () Bool)

(assert (=> b!2277735 (= e!1458919 (= (list!10532 (_2!15906 lt!845784)) (list!10532 (_2!15906 (lexRec!534 thiss!16613 rules!1750 (seqFromList!3025 input!1722))))))))

(declare-fun lt!845788 () tuple2!26792)

(declare-fun b!2277736 () Bool)

(assert (=> b!2277736 (= lt!845788 (lexRec!534 thiss!16613 rules!1750 (_2!15909 (v!30363 lt!845801))))))

(declare-fun prepend!1004 (BalanceConc!17310 Token!8120) BalanceConc!17310)

(assert (=> b!2277736 (= e!1458916 (tuple2!26793 (prepend!1004 (_1!15906 lt!845788) (_1!15909 (v!30363 lt!845801))) (_2!15906 lt!845788)))))

(declare-fun b!2277737 () Bool)

(assert (=> b!2277737 (= e!1458918 (tuple2!26793 (BalanceConc!17311 Empty!8791) lt!845796))))

(declare-fun b!2277738 () Bool)

(assert (=> b!2277738 (= e!1458917 (tuple2!26793 (BalanceConc!17311 Empty!8791) (seqFromList!3025 input!1722)))))

(declare-fun b!2277739 () Bool)

(declare-fun lt!845777 () tuple2!26792)

(assert (=> b!2277739 (= lt!845777 (lexRec!534 thiss!16613 rules!1750 (_2!15909 (v!30363 lt!845800))))))

(assert (=> b!2277739 (= e!1458918 (tuple2!26793 (prepend!1004 (_1!15906 lt!845777) (_1!15909 (v!30363 lt!845800))) (_2!15906 lt!845777)))))

(assert (= (and d!674248 c!361584) b!2277734))

(assert (= (and d!674248 (not c!361584)) b!2277738))

(assert (= (and b!2277734 c!361585) b!2277736))

(assert (= (and b!2277734 (not c!361585)) b!2277733))

(assert (= (and b!2277734 c!361586) b!2277739))

(assert (= (and b!2277734 (not c!361586)) b!2277737))

(assert (= (and d!674248 res!973468) b!2277735))

(declare-fun m!2706059 () Bool)

(assert (=> b!2277735 m!2706059))

(assert (=> b!2277735 m!2705221))

(declare-fun m!2706061 () Bool)

(assert (=> b!2277735 m!2706061))

(declare-fun m!2706063 () Bool)

(assert (=> b!2277735 m!2706063))

(declare-fun m!2706065 () Bool)

(assert (=> b!2277739 m!2706065))

(declare-fun m!2706067 () Bool)

(assert (=> b!2277739 m!2706067))

(declare-fun m!2706069 () Bool)

(assert (=> d!674248 m!2706069))

(assert (=> d!674248 m!2705221))

(assert (=> d!674248 m!2706061))

(declare-fun m!2706071 () Bool)

(assert (=> d!674248 m!2706071))

(declare-fun m!2706073 () Bool)

(assert (=> d!674248 m!2706073))

(declare-fun m!2706075 () Bool)

(assert (=> d!674248 m!2706075))

(assert (=> d!674248 m!2705221))

(assert (=> d!674248 m!2705575))

(declare-fun m!2706077 () Bool)

(assert (=> d!674248 m!2706077))

(assert (=> d!674248 m!2706071))

(declare-fun m!2706079 () Bool)

(assert (=> d!674248 m!2706079))

(assert (=> d!674248 m!2705221))

(assert (=> d!674248 m!2705221))

(declare-fun m!2706081 () Bool)

(assert (=> d!674248 m!2706081))

(declare-fun m!2706083 () Bool)

(assert (=> b!2277736 m!2706083))

(declare-fun m!2706085 () Bool)

(assert (=> b!2277736 m!2706085))

(assert (=> b!2277734 m!2705221))

(declare-fun m!2706087 () Bool)

(assert (=> b!2277734 m!2706087))

(declare-fun m!2706089 () Bool)

(assert (=> b!2277734 m!2706089))

(declare-fun m!2706091 () Bool)

(assert (=> b!2277734 m!2706091))

(declare-fun m!2706093 () Bool)

(assert (=> b!2277734 m!2706093))

(assert (=> b!2277734 m!2706087))

(assert (=> b!2277734 m!2705221))

(declare-fun m!2706095 () Bool)

(assert (=> b!2277734 m!2706095))

(declare-fun m!2706097 () Bool)

(assert (=> b!2277734 m!2706097))

(declare-fun m!2706099 () Bool)

(assert (=> b!2277734 m!2706099))

(declare-fun m!2706101 () Bool)

(assert (=> b!2277734 m!2706101))

(declare-fun m!2706103 () Bool)

(assert (=> b!2277734 m!2706103))

(declare-fun m!2706105 () Bool)

(assert (=> b!2277734 m!2706105))

(assert (=> b!2277734 m!2706087))

(declare-fun m!2706107 () Bool)

(assert (=> b!2277734 m!2706107))

(declare-fun m!2706109 () Bool)

(assert (=> b!2277734 m!2706109))

(declare-fun m!2706111 () Bool)

(assert (=> b!2277734 m!2706111))

(declare-fun m!2706113 () Bool)

(assert (=> b!2277734 m!2706113))

(declare-fun m!2706115 () Bool)

(assert (=> b!2277734 m!2706115))

(declare-fun m!2706117 () Bool)

(assert (=> b!2277734 m!2706117))

(declare-fun m!2706119 () Bool)

(assert (=> b!2277734 m!2706119))

(declare-fun m!2706121 () Bool)

(assert (=> b!2277734 m!2706121))

(declare-fun m!2706123 () Bool)

(assert (=> b!2277734 m!2706123))

(assert (=> b!2277734 m!2706075))

(declare-fun m!2706125 () Bool)

(assert (=> b!2277734 m!2706125))

(declare-fun m!2706127 () Bool)

(assert (=> b!2277734 m!2706127))

(declare-fun m!2706129 () Bool)

(assert (=> b!2277734 m!2706129))

(assert (=> b!2277734 m!2706103))

(assert (=> b!2277734 m!2706111))

(declare-fun m!2706131 () Bool)

(assert (=> b!2277734 m!2706131))

(assert (=> b!2277734 m!2706097))

(assert (=> b!2277734 m!2706125))

(assert (=> b!2277734 m!2706075))

(assert (=> b!2277734 m!2706099))

(declare-fun m!2706133 () Bool)

(assert (=> b!2277734 m!2706133))

(declare-fun m!2706135 () Bool)

(assert (=> b!2277734 m!2706135))

(assert (=> b!2277734 m!2706091))

(assert (=> b!2277734 m!2706119))

(declare-fun m!2706137 () Bool)

(assert (=> b!2277734 m!2706137))

(declare-fun m!2706139 () Bool)

(assert (=> b!2277734 m!2706139))

(assert (=> b!2277734 m!2706097))

(declare-fun m!2706141 () Bool)

(assert (=> b!2277734 m!2706141))

(assert (=> b!2277734 m!2706113))

(assert (=> b!2277734 m!2706139))

(declare-fun m!2706143 () Bool)

(assert (=> b!2277734 m!2706143))

(assert (=> b!2277734 m!2706121))

(declare-fun m!2706145 () Bool)

(assert (=> b!2277734 m!2706145))

(assert (=> b!2277734 m!2705221))

(assert (=> b!2277734 m!2706061))

(declare-fun m!2706147 () Bool)

(assert (=> b!2277734 m!2706147))

(assert (=> d!674022 d!674248))

(declare-fun d!674266 () Bool)

(declare-fun lt!845810 () Bool)

(assert (=> d!674266 (= lt!845810 (select (content!3615 (t!203166 rules!1750)) otherR!12))))

(declare-fun e!1458921 () Bool)

(assert (=> d!674266 (= lt!845810 e!1458921)))

(declare-fun res!973470 () Bool)

(assert (=> d!674266 (=> (not res!973470) (not e!1458921))))

(assert (=> d!674266 (= res!973470 ((_ is Cons!27078) (t!203166 rules!1750)))))

(assert (=> d!674266 (= (contains!4691 (t!203166 rules!1750) otherR!12) lt!845810)))

(declare-fun b!2277740 () Bool)

(declare-fun e!1458920 () Bool)

(assert (=> b!2277740 (= e!1458921 e!1458920)))

(declare-fun res!973469 () Bool)

(assert (=> b!2277740 (=> res!973469 e!1458920)))

(assert (=> b!2277740 (= res!973469 (= (h!32479 (t!203166 rules!1750)) otherR!12))))

(declare-fun b!2277741 () Bool)

(assert (=> b!2277741 (= e!1458920 (contains!4691 (t!203166 (t!203166 rules!1750)) otherR!12))))

(assert (= (and d!674266 res!973470) b!2277740))

(assert (= (and b!2277740 (not res!973469)) b!2277741))

(assert (=> d!674266 m!2705767))

(declare-fun m!2706149 () Bool)

(assert (=> d!674266 m!2706149))

(declare-fun m!2706151 () Bool)

(assert (=> b!2277741 m!2706151))

(assert (=> b!2277436 d!674266))

(declare-fun d!674268 () Bool)

(declare-fun lt!845811 () Bool)

(assert (=> d!674268 (= lt!845811 (select (content!3615 rules!1750) (rule!6645 (_1!15905 (get!8161 lt!845544)))))))

(declare-fun e!1458923 () Bool)

(assert (=> d!674268 (= lt!845811 e!1458923)))

(declare-fun res!973472 () Bool)

(assert (=> d!674268 (=> (not res!973472) (not e!1458923))))

(assert (=> d!674268 (= res!973472 ((_ is Cons!27078) rules!1750))))

(assert (=> d!674268 (= (contains!4691 rules!1750 (rule!6645 (_1!15905 (get!8161 lt!845544)))) lt!845811)))

(declare-fun b!2277742 () Bool)

(declare-fun e!1458922 () Bool)

(assert (=> b!2277742 (= e!1458923 e!1458922)))

(declare-fun res!973471 () Bool)

(assert (=> b!2277742 (=> res!973471 e!1458922)))

(assert (=> b!2277742 (= res!973471 (= (h!32479 rules!1750) (rule!6645 (_1!15905 (get!8161 lt!845544)))))))

(declare-fun b!2277743 () Bool)

(assert (=> b!2277743 (= e!1458922 (contains!4691 (t!203166 rules!1750) (rule!6645 (_1!15905 (get!8161 lt!845544)))))))

(assert (= (and d!674268 res!973472) b!2277742))

(assert (= (and b!2277742 (not res!973471)) b!2277743))

(assert (=> d!674268 m!2705617))

(declare-fun m!2706153 () Bool)

(assert (=> d!674268 m!2706153))

(declare-fun m!2706155 () Bool)

(assert (=> b!2277743 m!2706155))

(assert (=> b!2277424 d!674268))

(assert (=> b!2277424 d!674228))

(declare-fun d!674270 () Bool)

(assert (=> d!674270 (= (list!10532 (_2!15906 lt!845512)) (list!10535 (c!361426 (_2!15906 lt!845512))))))

(declare-fun bs!456436 () Bool)

(assert (= bs!456436 d!674270))

(declare-fun m!2706157 () Bool)

(assert (=> bs!456436 m!2706157))

(assert (=> b!2277268 d!674270))

(declare-fun b!2277754 () Bool)

(declare-fun e!1458932 () tuple2!26794)

(assert (=> b!2277754 (= e!1458932 (tuple2!26795 Nil!27077 (list!10532 (seqFromList!3025 input!1722))))))

(declare-fun b!2277755 () Bool)

(declare-fun e!1458930 () Bool)

(declare-fun lt!845819 () tuple2!26794)

(assert (=> b!2277755 (= e!1458930 (not (isEmpty!15360 (_1!15907 lt!845819))))))

(declare-fun b!2277756 () Bool)

(declare-fun e!1458931 () Bool)

(assert (=> b!2277756 (= e!1458931 (= (_2!15907 lt!845819) (list!10532 (seqFromList!3025 input!1722))))))

(declare-fun d!674272 () Bool)

(assert (=> d!674272 e!1458931))

(declare-fun c!361591 () Bool)

(assert (=> d!674272 (= c!361591 (> (size!21285 (_1!15907 lt!845819)) 0))))

(assert (=> d!674272 (= lt!845819 e!1458932)))

(declare-fun c!361592 () Bool)

(declare-fun lt!845818 () Option!5305)

(assert (=> d!674272 (= c!361592 ((_ is Some!5304) lt!845818))))

(assert (=> d!674272 (= lt!845818 (maxPrefix!2182 thiss!16613 rules!1750 (list!10532 (seqFromList!3025 input!1722))))))

(assert (=> d!674272 (= (lexList!1088 thiss!16613 rules!1750 (list!10532 (seqFromList!3025 input!1722))) lt!845819)))

(declare-fun b!2277757 () Bool)

(declare-fun lt!845820 () tuple2!26794)

(assert (=> b!2277757 (= e!1458932 (tuple2!26795 (Cons!27077 (_1!15905 (v!30360 lt!845818)) (_1!15907 lt!845820)) (_2!15907 lt!845820)))))

(assert (=> b!2277757 (= lt!845820 (lexList!1088 thiss!16613 rules!1750 (_2!15905 (v!30360 lt!845818))))))

(declare-fun b!2277758 () Bool)

(assert (=> b!2277758 (= e!1458931 e!1458930)))

(declare-fun res!973475 () Bool)

(assert (=> b!2277758 (= res!973475 (< (size!21280 (_2!15907 lt!845819)) (size!21280 (list!10532 (seqFromList!3025 input!1722)))))))

(assert (=> b!2277758 (=> (not res!973475) (not e!1458930))))

(assert (= (and d!674272 c!361592) b!2277757))

(assert (= (and d!674272 (not c!361592)) b!2277754))

(assert (= (and d!674272 c!361591) b!2277758))

(assert (= (and d!674272 (not c!361591)) b!2277756))

(assert (= (and b!2277758 res!973475) b!2277755))

(declare-fun m!2706159 () Bool)

(assert (=> b!2277755 m!2706159))

(declare-fun m!2706161 () Bool)

(assert (=> d!674272 m!2706161))

(assert (=> d!674272 m!2705575))

(declare-fun m!2706163 () Bool)

(assert (=> d!674272 m!2706163))

(declare-fun m!2706165 () Bool)

(assert (=> b!2277757 m!2706165))

(declare-fun m!2706167 () Bool)

(assert (=> b!2277758 m!2706167))

(assert (=> b!2277758 m!2705575))

(declare-fun m!2706169 () Bool)

(assert (=> b!2277758 m!2706169))

(assert (=> b!2277268 d!674272))

(declare-fun d!674274 () Bool)

(assert (=> d!674274 (= (list!10532 (seqFromList!3025 input!1722)) (list!10535 (c!361426 (seqFromList!3025 input!1722))))))

(declare-fun bs!456437 () Bool)

(assert (= bs!456437 d!674274))

(declare-fun m!2706171 () Bool)

(assert (=> bs!456437 m!2706171))

(assert (=> b!2277268 d!674274))

(declare-fun d!674276 () Bool)

(declare-fun lt!845821 () Bool)

(assert (=> d!674276 (= lt!845821 (select (content!3615 (t!203166 rules!1750)) r!2363))))

(declare-fun e!1458934 () Bool)

(assert (=> d!674276 (= lt!845821 e!1458934)))

(declare-fun res!973477 () Bool)

(assert (=> d!674276 (=> (not res!973477) (not e!1458934))))

(assert (=> d!674276 (= res!973477 ((_ is Cons!27078) (t!203166 rules!1750)))))

(assert (=> d!674276 (= (contains!4691 (t!203166 rules!1750) r!2363) lt!845821)))

(declare-fun b!2277759 () Bool)

(declare-fun e!1458933 () Bool)

(assert (=> b!2277759 (= e!1458934 e!1458933)))

(declare-fun res!973476 () Bool)

(assert (=> b!2277759 (=> res!973476 e!1458933)))

(assert (=> b!2277759 (= res!973476 (= (h!32479 (t!203166 rules!1750)) r!2363))))

(declare-fun b!2277760 () Bool)

(assert (=> b!2277760 (= e!1458933 (contains!4691 (t!203166 (t!203166 rules!1750)) r!2363))))

(assert (= (and d!674276 res!973477) b!2277759))

(assert (= (and b!2277759 (not res!973476)) b!2277760))

(assert (=> d!674276 m!2705767))

(declare-fun m!2706173 () Bool)

(assert (=> d!674276 m!2706173))

(declare-fun m!2706175 () Bool)

(assert (=> b!2277760 m!2706175))

(assert (=> b!2277340 d!674276))

(declare-fun b!2277761 () Bool)

(declare-fun e!1458935 () Bool)

(assert (=> b!2277761 (= e!1458935 (not (= (head!4926 (list!10532 (charsOf!2709 (_1!15905 (get!8161 lt!845544))))) (c!361427 (regex!4321 (rule!6645 (_1!15905 (get!8161 lt!845544))))))))))

(declare-fun b!2277762 () Bool)

(declare-fun e!1458938 () Bool)

(assert (=> b!2277762 (= e!1458938 (matchR!2926 (derivativeStep!1502 (regex!4321 (rule!6645 (_1!15905 (get!8161 lt!845544)))) (head!4926 (list!10532 (charsOf!2709 (_1!15905 (get!8161 lt!845544)))))) (tail!3285 (list!10532 (charsOf!2709 (_1!15905 (get!8161 lt!845544)))))))))

(declare-fun b!2277763 () Bool)

(declare-fun e!1458940 () Bool)

(declare-fun lt!845822 () Bool)

(declare-fun call!136348 () Bool)

(assert (=> b!2277763 (= e!1458940 (= lt!845822 call!136348))))

(declare-fun b!2277764 () Bool)

(declare-fun e!1458939 () Bool)

(declare-fun e!1458936 () Bool)

(assert (=> b!2277764 (= e!1458939 e!1458936)))

(declare-fun res!973480 () Bool)

(assert (=> b!2277764 (=> (not res!973480) (not e!1458936))))

(assert (=> b!2277764 (= res!973480 (not lt!845822))))

(declare-fun b!2277765 () Bool)

(declare-fun res!973479 () Bool)

(declare-fun e!1458941 () Bool)

(assert (=> b!2277765 (=> (not res!973479) (not e!1458941))))

(assert (=> b!2277765 (= res!973479 (not call!136348))))

(declare-fun b!2277766 () Bool)

(declare-fun res!973481 () Bool)

(assert (=> b!2277766 (=> (not res!973481) (not e!1458941))))

(assert (=> b!2277766 (= res!973481 (isEmpty!15362 (tail!3285 (list!10532 (charsOf!2709 (_1!15905 (get!8161 lt!845544)))))))))

(declare-fun b!2277767 () Bool)

(declare-fun res!973482 () Bool)

(assert (=> b!2277767 (=> res!973482 e!1458939)))

(assert (=> b!2277767 (= res!973482 e!1458941)))

(declare-fun res!973484 () Bool)

(assert (=> b!2277767 (=> (not res!973484) (not e!1458941))))

(assert (=> b!2277767 (= res!973484 lt!845822)))

(declare-fun d!674278 () Bool)

(assert (=> d!674278 e!1458940))

(declare-fun c!361593 () Bool)

(assert (=> d!674278 (= c!361593 ((_ is EmptyExpr!6669) (regex!4321 (rule!6645 (_1!15905 (get!8161 lt!845544))))))))

(assert (=> d!674278 (= lt!845822 e!1458938)))

(declare-fun c!361594 () Bool)

(assert (=> d!674278 (= c!361594 (isEmpty!15362 (list!10532 (charsOf!2709 (_1!15905 (get!8161 lt!845544))))))))

(assert (=> d!674278 (validRegex!2504 (regex!4321 (rule!6645 (_1!15905 (get!8161 lt!845544)))))))

(assert (=> d!674278 (= (matchR!2926 (regex!4321 (rule!6645 (_1!15905 (get!8161 lt!845544)))) (list!10532 (charsOf!2709 (_1!15905 (get!8161 lt!845544))))) lt!845822)))

(declare-fun b!2277768 () Bool)

(assert (=> b!2277768 (= e!1458936 e!1458935)))

(declare-fun res!973478 () Bool)

(assert (=> b!2277768 (=> res!973478 e!1458935)))

(assert (=> b!2277768 (= res!973478 call!136348)))

(declare-fun bm!136343 () Bool)

(assert (=> bm!136343 (= call!136348 (isEmpty!15362 (list!10532 (charsOf!2709 (_1!15905 (get!8161 lt!845544))))))))

(declare-fun b!2277769 () Bool)

(declare-fun e!1458937 () Bool)

(assert (=> b!2277769 (= e!1458940 e!1458937)))

(declare-fun c!361595 () Bool)

(assert (=> b!2277769 (= c!361595 ((_ is EmptyLang!6669) (regex!4321 (rule!6645 (_1!15905 (get!8161 lt!845544))))))))

(declare-fun b!2277770 () Bool)

(assert (=> b!2277770 (= e!1458938 (nullable!1842 (regex!4321 (rule!6645 (_1!15905 (get!8161 lt!845544))))))))

(declare-fun b!2277771 () Bool)

(assert (=> b!2277771 (= e!1458937 (not lt!845822))))

(declare-fun b!2277772 () Bool)

(declare-fun res!973485 () Bool)

(assert (=> b!2277772 (=> res!973485 e!1458939)))

(assert (=> b!2277772 (= res!973485 (not ((_ is ElementMatch!6669) (regex!4321 (rule!6645 (_1!15905 (get!8161 lt!845544)))))))))

(assert (=> b!2277772 (= e!1458937 e!1458939)))

(declare-fun b!2277773 () Bool)

(declare-fun res!973483 () Bool)

(assert (=> b!2277773 (=> res!973483 e!1458935)))

(assert (=> b!2277773 (= res!973483 (not (isEmpty!15362 (tail!3285 (list!10532 (charsOf!2709 (_1!15905 (get!8161 lt!845544))))))))))

(declare-fun b!2277774 () Bool)

(assert (=> b!2277774 (= e!1458941 (= (head!4926 (list!10532 (charsOf!2709 (_1!15905 (get!8161 lt!845544))))) (c!361427 (regex!4321 (rule!6645 (_1!15905 (get!8161 lt!845544)))))))))

(assert (= (and d!674278 c!361594) b!2277770))

(assert (= (and d!674278 (not c!361594)) b!2277762))

(assert (= (and d!674278 c!361593) b!2277763))

(assert (= (and d!674278 (not c!361593)) b!2277769))

(assert (= (and b!2277769 c!361595) b!2277771))

(assert (= (and b!2277769 (not c!361595)) b!2277772))

(assert (= (and b!2277772 (not res!973485)) b!2277767))

(assert (= (and b!2277767 res!973484) b!2277765))

(assert (= (and b!2277765 res!973479) b!2277766))

(assert (= (and b!2277766 res!973481) b!2277774))

(assert (= (and b!2277767 (not res!973482)) b!2277764))

(assert (= (and b!2277764 res!973480) b!2277768))

(assert (= (and b!2277768 (not res!973478)) b!2277773))

(assert (= (and b!2277773 (not res!973483)) b!2277761))

(assert (= (or b!2277763 b!2277765 b!2277768) bm!136343))

(assert (=> b!2277766 m!2705665))

(declare-fun m!2706177 () Bool)

(assert (=> b!2277766 m!2706177))

(assert (=> b!2277766 m!2706177))

(declare-fun m!2706179 () Bool)

(assert (=> b!2277766 m!2706179))

(assert (=> b!2277762 m!2705665))

(declare-fun m!2706181 () Bool)

(assert (=> b!2277762 m!2706181))

(assert (=> b!2277762 m!2706181))

(declare-fun m!2706183 () Bool)

(assert (=> b!2277762 m!2706183))

(assert (=> b!2277762 m!2705665))

(assert (=> b!2277762 m!2706177))

(assert (=> b!2277762 m!2706183))

(assert (=> b!2277762 m!2706177))

(declare-fun m!2706185 () Bool)

(assert (=> b!2277762 m!2706185))

(assert (=> b!2277774 m!2705665))

(assert (=> b!2277774 m!2706181))

(assert (=> b!2277761 m!2705665))

(assert (=> b!2277761 m!2706181))

(assert (=> d!674278 m!2705665))

(declare-fun m!2706187 () Bool)

(assert (=> d!674278 m!2706187))

(declare-fun m!2706189 () Bool)

(assert (=> d!674278 m!2706189))

(assert (=> bm!136343 m!2705665))

(assert (=> bm!136343 m!2706187))

(declare-fun m!2706191 () Bool)

(assert (=> b!2277770 m!2706191))

(assert (=> b!2277773 m!2705665))

(assert (=> b!2277773 m!2706177))

(assert (=> b!2277773 m!2706177))

(assert (=> b!2277773 m!2706179))

(assert (=> b!2277426 d!674278))

(assert (=> b!2277426 d!674228))

(declare-fun d!674280 () Bool)

(assert (=> d!674280 (= (list!10532 (charsOf!2709 (_1!15905 (get!8161 lt!845544)))) (list!10535 (c!361426 (charsOf!2709 (_1!15905 (get!8161 lt!845544))))))))

(declare-fun bs!456438 () Bool)

(assert (= bs!456438 d!674280))

(declare-fun m!2706193 () Bool)

(assert (=> bs!456438 m!2706193))

(assert (=> b!2277426 d!674280))

(declare-fun d!674282 () Bool)

(declare-fun lt!845823 () BalanceConc!17308)

(assert (=> d!674282 (= (list!10532 lt!845823) (originalCharacters!5091 (_1!15905 (get!8161 lt!845544))))))

(assert (=> d!674282 (= lt!845823 (dynLambda!11755 (toChars!5958 (transformation!4321 (rule!6645 (_1!15905 (get!8161 lt!845544))))) (value!136968 (_1!15905 (get!8161 lt!845544)))))))

(assert (=> d!674282 (= (charsOf!2709 (_1!15905 (get!8161 lt!845544))) lt!845823)))

(declare-fun b_lambda!72527 () Bool)

(assert (=> (not b_lambda!72527) (not d!674282)))

(declare-fun tb!135347 () Bool)

(declare-fun t!203256 () Bool)

(assert (=> (and b!2276963 (= (toChars!5958 (transformation!4321 (h!32479 rules!1750))) (toChars!5958 (transformation!4321 (rule!6645 (_1!15905 (get!8161 lt!845544)))))) t!203256) tb!135347))

(declare-fun b!2277775 () Bool)

(declare-fun e!1458942 () Bool)

(declare-fun tp!721561 () Bool)

(assert (=> b!2277775 (= e!1458942 (and (inv!36658 (c!361426 (dynLambda!11755 (toChars!5958 (transformation!4321 (rule!6645 (_1!15905 (get!8161 lt!845544))))) (value!136968 (_1!15905 (get!8161 lt!845544)))))) tp!721561))))

(declare-fun result!165026 () Bool)

(assert (=> tb!135347 (= result!165026 (and (inv!36659 (dynLambda!11755 (toChars!5958 (transformation!4321 (rule!6645 (_1!15905 (get!8161 lt!845544))))) (value!136968 (_1!15905 (get!8161 lt!845544))))) e!1458942))))

(assert (= tb!135347 b!2277775))

(declare-fun m!2706195 () Bool)

(assert (=> b!2277775 m!2706195))

(declare-fun m!2706197 () Bool)

(assert (=> tb!135347 m!2706197))

(assert (=> d!674282 t!203256))

(declare-fun b_and!179757 () Bool)

(assert (= b_and!179701 (and (=> t!203256 result!165026) b_and!179757)))

(declare-fun t!203258 () Bool)

(declare-fun tb!135349 () Bool)

(assert (=> (and b!2276980 (= (toChars!5958 (transformation!4321 otherR!12)) (toChars!5958 (transformation!4321 (rule!6645 (_1!15905 (get!8161 lt!845544)))))) t!203258) tb!135349))

(declare-fun result!165028 () Bool)

(assert (= result!165028 result!165026))

(assert (=> d!674282 t!203258))

(declare-fun b_and!179759 () Bool)

(assert (= b_and!179707 (and (=> t!203258 result!165028) b_and!179759)))

(declare-fun t!203260 () Bool)

(declare-fun tb!135351 () Bool)

(assert (=> (and b!2276991 (= (toChars!5958 (transformation!4321 (rule!6645 (h!32478 tokens!456)))) (toChars!5958 (transformation!4321 (rule!6645 (_1!15905 (get!8161 lt!845544)))))) t!203260) tb!135351))

(declare-fun result!165030 () Bool)

(assert (= result!165030 result!165026))

(assert (=> d!674282 t!203260))

(declare-fun b_and!179761 () Bool)

(assert (= b_and!179703 (and (=> t!203260 result!165030) b_and!179761)))

(declare-fun tb!135353 () Bool)

(declare-fun t!203262 () Bool)

(assert (=> (and b!2277496 (= (toChars!5958 (transformation!4321 (h!32479 (t!203166 rules!1750)))) (toChars!5958 (transformation!4321 (rule!6645 (_1!15905 (get!8161 lt!845544)))))) t!203262) tb!135353))

(declare-fun result!165032 () Bool)

(assert (= result!165032 result!165026))

(assert (=> d!674282 t!203262))

(declare-fun b_and!179763 () Bool)

(assert (= b_and!179719 (and (=> t!203262 result!165032) b_and!179763)))

(declare-fun t!203264 () Bool)

(declare-fun tb!135355 () Bool)

(assert (=> (and b!2276972 (= (toChars!5958 (transformation!4321 r!2363)) (toChars!5958 (transformation!4321 (rule!6645 (_1!15905 (get!8161 lt!845544)))))) t!203264) tb!135355))

(declare-fun result!165034 () Bool)

(assert (= result!165034 result!165026))

(assert (=> d!674282 t!203264))

(declare-fun b_and!179765 () Bool)

(assert (= b_and!179705 (and (=> t!203264 result!165034) b_and!179765)))

(declare-fun tb!135357 () Bool)

(declare-fun t!203266 () Bool)

(assert (=> (and b!2277457 (= (toChars!5958 (transformation!4321 (rule!6645 (h!32478 (t!203165 tokens!456))))) (toChars!5958 (transformation!4321 (rule!6645 (_1!15905 (get!8161 lt!845544)))))) t!203266) tb!135357))

(declare-fun result!165036 () Bool)

(assert (= result!165036 result!165026))

(assert (=> d!674282 t!203266))

(declare-fun b_and!179767 () Bool)

(assert (= b_and!179715 (and (=> t!203266 result!165036) b_and!179767)))

(declare-fun m!2706199 () Bool)

(assert (=> d!674282 m!2706199))

(declare-fun m!2706201 () Bool)

(assert (=> d!674282 m!2706201))

(assert (=> b!2277426 d!674282))

(declare-fun d!674284 () Bool)

(assert (=> d!674284 (= (isEmpty!15362 (list!10532 (charsOf!2709 (head!4924 tokens!456)))) ((_ is Nil!27075) (list!10532 (charsOf!2709 (head!4924 tokens!456)))))))

(assert (=> bm!136326 d!674284))

(assert (=> d!674106 d!674128))

(declare-fun d!674286 () Bool)

(declare-fun lt!845824 () Int)

(assert (=> d!674286 (= lt!845824 (size!21280 (list!10532 (_2!15906 lt!845512))))))

(assert (=> d!674286 (= lt!845824 (size!21283 (c!361426 (_2!15906 lt!845512))))))

(assert (=> d!674286 (= (size!21279 (_2!15906 lt!845512)) lt!845824)))

(declare-fun bs!456439 () Bool)

(assert (= bs!456439 d!674286))

(assert (=> bs!456439 m!2705573))

(assert (=> bs!456439 m!2705573))

(declare-fun m!2706203 () Bool)

(assert (=> bs!456439 m!2706203))

(declare-fun m!2706205 () Bool)

(assert (=> bs!456439 m!2706205))

(assert (=> b!2277270 d!674286))

(declare-fun d!674288 () Bool)

(declare-fun lt!845825 () Int)

(assert (=> d!674288 (= lt!845825 (size!21280 (list!10532 (seqFromList!3025 input!1722))))))

(assert (=> d!674288 (= lt!845825 (size!21283 (c!361426 (seqFromList!3025 input!1722))))))

(assert (=> d!674288 (= (size!21279 (seqFromList!3025 input!1722)) lt!845825)))

(declare-fun bs!456440 () Bool)

(assert (= bs!456440 d!674288))

(assert (=> bs!456440 m!2705221))

(assert (=> bs!456440 m!2705575))

(assert (=> bs!456440 m!2705575))

(assert (=> bs!456440 m!2706169))

(declare-fun m!2706207 () Bool)

(assert (=> bs!456440 m!2706207))

(assert (=> b!2277270 d!674288))

(declare-fun d!674290 () Bool)

(assert (=> d!674290 (= (head!4926 lt!845428) (h!32476 lt!845428))))

(assert (=> b!2277028 d!674290))

(declare-fun d!674292 () Bool)

(assert (=> d!674292 (= (head!4926 lt!845429) (h!32476 lt!845429))))

(assert (=> b!2277028 d!674292))

(declare-fun d!674294 () Bool)

(declare-fun lt!845826 () List!27169)

(assert (=> d!674294 (= (++!6609 (t!203163 lt!845428) lt!845826) (tail!3285 input!1722))))

(declare-fun e!1458943 () List!27169)

(assert (=> d!674294 (= lt!845826 e!1458943)))

(declare-fun c!361596 () Bool)

(assert (=> d!674294 (= c!361596 ((_ is Cons!27075) (t!203163 lt!845428)))))

(assert (=> d!674294 (>= (size!21280 (tail!3285 input!1722)) (size!21280 (t!203163 lt!845428)))))

(assert (=> d!674294 (= (getSuffix!1102 (tail!3285 input!1722) (t!203163 lt!845428)) lt!845826)))

(declare-fun b!2277776 () Bool)

(assert (=> b!2277776 (= e!1458943 (getSuffix!1102 (tail!3285 (tail!3285 input!1722)) (t!203163 (t!203163 lt!845428))))))

(declare-fun b!2277777 () Bool)

(assert (=> b!2277777 (= e!1458943 (tail!3285 input!1722))))

(assert (= (and d!674294 c!361596) b!2277776))

(assert (= (and d!674294 (not c!361596)) b!2277777))

(declare-fun m!2706209 () Bool)

(assert (=> d!674294 m!2706209))

(assert (=> d!674294 m!2705339))

(declare-fun m!2706211 () Bool)

(assert (=> d!674294 m!2706211))

(assert (=> d!674294 m!2705735))

(assert (=> b!2277776 m!2705339))

(declare-fun m!2706213 () Bool)

(assert (=> b!2277776 m!2706213))

(assert (=> b!2277776 m!2706213))

(declare-fun m!2706215 () Bool)

(assert (=> b!2277776 m!2706215))

(assert (=> b!2277078 d!674294))

(declare-fun d!674296 () Bool)

(assert (=> d!674296 (= (tail!3285 input!1722) (t!203163 input!1722))))

(assert (=> b!2277078 d!674296))

(assert (=> d!674116 d!674284))

(declare-fun b!2277796 () Bool)

(declare-fun e!1458960 () Bool)

(declare-fun call!136355 () Bool)

(assert (=> b!2277796 (= e!1458960 call!136355)))

(declare-fun b!2277797 () Bool)

(declare-fun e!1458959 () Bool)

(declare-fun call!136357 () Bool)

(assert (=> b!2277797 (= e!1458959 call!136357)))

(declare-fun b!2277798 () Bool)

(declare-fun e!1458961 () Bool)

(assert (=> b!2277798 (= e!1458961 e!1458959)))

(declare-fun res!973498 () Bool)

(assert (=> b!2277798 (= res!973498 (not (nullable!1842 (reg!6998 (regex!4321 r!2363)))))))

(assert (=> b!2277798 (=> (not res!973498) (not e!1458959))))

(declare-fun d!674298 () Bool)

(declare-fun res!973496 () Bool)

(declare-fun e!1458962 () Bool)

(assert (=> d!674298 (=> res!973496 e!1458962)))

(assert (=> d!674298 (= res!973496 ((_ is ElementMatch!6669) (regex!4321 r!2363)))))

(assert (=> d!674298 (= (validRegex!2504 (regex!4321 r!2363)) e!1458962)))

(declare-fun b!2277799 () Bool)

(declare-fun res!973500 () Bool)

(declare-fun e!1458958 () Bool)

(assert (=> b!2277799 (=> res!973500 e!1458958)))

(assert (=> b!2277799 (= res!973500 (not ((_ is Concat!11153) (regex!4321 r!2363))))))

(declare-fun e!1458963 () Bool)

(assert (=> b!2277799 (= e!1458963 e!1458958)))

(declare-fun b!2277800 () Bool)

(assert (=> b!2277800 (= e!1458961 e!1458963)))

(declare-fun c!361602 () Bool)

(assert (=> b!2277800 (= c!361602 ((_ is Union!6669) (regex!4321 r!2363)))))

(declare-fun b!2277801 () Bool)

(declare-fun e!1458964 () Bool)

(declare-fun call!136356 () Bool)

(assert (=> b!2277801 (= e!1458964 call!136356)))

(declare-fun b!2277802 () Bool)

(assert (=> b!2277802 (= e!1458962 e!1458961)))

(declare-fun c!361601 () Bool)

(assert (=> b!2277802 (= c!361601 ((_ is Star!6669) (regex!4321 r!2363)))))

(declare-fun b!2277803 () Bool)

(assert (=> b!2277803 (= e!1458958 e!1458964)))

(declare-fun res!973499 () Bool)

(assert (=> b!2277803 (=> (not res!973499) (not e!1458964))))

(assert (=> b!2277803 (= res!973499 call!136355)))

(declare-fun b!2277804 () Bool)

(declare-fun res!973497 () Bool)

(assert (=> b!2277804 (=> (not res!973497) (not e!1458960))))

(assert (=> b!2277804 (= res!973497 call!136356)))

(assert (=> b!2277804 (= e!1458963 e!1458960)))

(declare-fun bm!136350 () Bool)

(assert (=> bm!136350 (= call!136357 (validRegex!2504 (ite c!361601 (reg!6998 (regex!4321 r!2363)) (ite c!361602 (regTwo!13851 (regex!4321 r!2363)) (regOne!13850 (regex!4321 r!2363))))))))

(declare-fun bm!136351 () Bool)

(assert (=> bm!136351 (= call!136355 call!136357)))

(declare-fun bm!136352 () Bool)

(assert (=> bm!136352 (= call!136356 (validRegex!2504 (ite c!361602 (regOne!13851 (regex!4321 r!2363)) (regTwo!13850 (regex!4321 r!2363)))))))

(assert (= (and d!674298 (not res!973496)) b!2277802))

(assert (= (and b!2277802 c!361601) b!2277798))

(assert (= (and b!2277802 (not c!361601)) b!2277800))

(assert (= (and b!2277798 res!973498) b!2277797))

(assert (= (and b!2277800 c!361602) b!2277804))

(assert (= (and b!2277800 (not c!361602)) b!2277799))

(assert (= (and b!2277804 res!973497) b!2277796))

(assert (= (and b!2277799 (not res!973500)) b!2277803))

(assert (= (and b!2277803 res!973499) b!2277801))

(assert (= (or b!2277804 b!2277801) bm!136352))

(assert (= (or b!2277796 b!2277803) bm!136351))

(assert (= (or b!2277797 bm!136351) bm!136350))

(declare-fun m!2706217 () Bool)

(assert (=> b!2277798 m!2706217))

(declare-fun m!2706219 () Bool)

(assert (=> bm!136350 m!2706219))

(declare-fun m!2706221 () Bool)

(assert (=> bm!136352 m!2706221))

(assert (=> d!674116 d!674298))

(declare-fun d!674300 () Bool)

(assert (=> d!674300 (= (isDefined!4208 lt!845544) (not (isEmpty!15366 lt!845544)))))

(declare-fun bs!456441 () Bool)

(assert (= bs!456441 d!674300))

(assert (=> bs!456441 m!2705669))

(assert (=> b!2277428 d!674300))

(declare-fun d!674302 () Bool)

(declare-fun nullableFct!445 (Regex!6669) Bool)

(assert (=> d!674302 (= (nullable!1842 (regex!4321 r!2363)) (nullableFct!445 (regex!4321 r!2363)))))

(declare-fun bs!456442 () Bool)

(assert (= bs!456442 d!674302))

(declare-fun m!2706223 () Bool)

(assert (=> bs!456442 m!2706223))

(assert (=> b!2277401 d!674302))

(assert (=> d!674102 d!674158))

(assert (=> b!2277392 d!674242))

(declare-fun b!2277805 () Bool)

(declare-fun e!1458967 () Bool)

(declare-fun call!136358 () Bool)

(assert (=> b!2277805 (= e!1458967 call!136358)))

(declare-fun b!2277806 () Bool)

(declare-fun e!1458966 () Bool)

(declare-fun call!136360 () Bool)

(assert (=> b!2277806 (= e!1458966 call!136360)))

(declare-fun b!2277807 () Bool)

(declare-fun e!1458968 () Bool)

(assert (=> b!2277807 (= e!1458968 e!1458966)))

(declare-fun res!973503 () Bool)

(assert (=> b!2277807 (= res!973503 (not (nullable!1842 (reg!6998 (regex!4321 otherR!12)))))))

(assert (=> b!2277807 (=> (not res!973503) (not e!1458966))))

(declare-fun d!674304 () Bool)

(declare-fun res!973501 () Bool)

(declare-fun e!1458969 () Bool)

(assert (=> d!674304 (=> res!973501 e!1458969)))

(assert (=> d!674304 (= res!973501 ((_ is ElementMatch!6669) (regex!4321 otherR!12)))))

(assert (=> d!674304 (= (validRegex!2504 (regex!4321 otherR!12)) e!1458969)))

(declare-fun b!2277808 () Bool)

(declare-fun res!973505 () Bool)

(declare-fun e!1458965 () Bool)

(assert (=> b!2277808 (=> res!973505 e!1458965)))

(assert (=> b!2277808 (= res!973505 (not ((_ is Concat!11153) (regex!4321 otherR!12))))))

(declare-fun e!1458970 () Bool)

(assert (=> b!2277808 (= e!1458970 e!1458965)))

(declare-fun b!2277809 () Bool)

(assert (=> b!2277809 (= e!1458968 e!1458970)))

(declare-fun c!361604 () Bool)

(assert (=> b!2277809 (= c!361604 ((_ is Union!6669) (regex!4321 otherR!12)))))

(declare-fun b!2277810 () Bool)

(declare-fun e!1458971 () Bool)

(declare-fun call!136359 () Bool)

(assert (=> b!2277810 (= e!1458971 call!136359)))

(declare-fun b!2277811 () Bool)

(assert (=> b!2277811 (= e!1458969 e!1458968)))

(declare-fun c!361603 () Bool)

(assert (=> b!2277811 (= c!361603 ((_ is Star!6669) (regex!4321 otherR!12)))))

(declare-fun b!2277812 () Bool)

(assert (=> b!2277812 (= e!1458965 e!1458971)))

(declare-fun res!973504 () Bool)

(assert (=> b!2277812 (=> (not res!973504) (not e!1458971))))

(assert (=> b!2277812 (= res!973504 call!136358)))

(declare-fun b!2277813 () Bool)

(declare-fun res!973502 () Bool)

(assert (=> b!2277813 (=> (not res!973502) (not e!1458967))))

(assert (=> b!2277813 (= res!973502 call!136359)))

(assert (=> b!2277813 (= e!1458970 e!1458967)))

(declare-fun bm!136353 () Bool)

(assert (=> bm!136353 (= call!136360 (validRegex!2504 (ite c!361603 (reg!6998 (regex!4321 otherR!12)) (ite c!361604 (regTwo!13851 (regex!4321 otherR!12)) (regOne!13850 (regex!4321 otherR!12))))))))

(declare-fun bm!136354 () Bool)

(assert (=> bm!136354 (= call!136358 call!136360)))

(declare-fun bm!136355 () Bool)

(assert (=> bm!136355 (= call!136359 (validRegex!2504 (ite c!361604 (regOne!13851 (regex!4321 otherR!12)) (regTwo!13850 (regex!4321 otherR!12)))))))

(assert (= (and d!674304 (not res!973501)) b!2277811))

(assert (= (and b!2277811 c!361603) b!2277807))

(assert (= (and b!2277811 (not c!361603)) b!2277809))

(assert (= (and b!2277807 res!973503) b!2277806))

(assert (= (and b!2277809 c!361604) b!2277813))

(assert (= (and b!2277809 (not c!361604)) b!2277808))

(assert (= (and b!2277813 res!973502) b!2277805))

(assert (= (and b!2277808 (not res!973505)) b!2277812))

(assert (= (and b!2277812 res!973504) b!2277810))

(assert (= (or b!2277813 b!2277810) bm!136355))

(assert (= (or b!2277805 b!2277812) bm!136354))

(assert (= (or b!2277806 bm!136354) bm!136353))

(declare-fun m!2706225 () Bool)

(assert (=> b!2277807 m!2706225))

(declare-fun m!2706227 () Bool)

(assert (=> bm!136353 m!2706227))

(declare-fun m!2706229 () Bool)

(assert (=> bm!136355 m!2706229))

(assert (=> d!674108 d!674304))

(declare-fun b!2277816 () Bool)

(declare-fun e!1458974 () Bool)

(assert (=> b!2277816 (= e!1458974 (isPrefix!2311 (tail!3285 (tail!3285 otherP!12)) (tail!3285 (tail!3285 input!1722))))))

(declare-fun b!2277814 () Bool)

(declare-fun e!1458972 () Bool)

(assert (=> b!2277814 (= e!1458972 e!1458974)))

(declare-fun res!973508 () Bool)

(assert (=> b!2277814 (=> (not res!973508) (not e!1458974))))

(assert (=> b!2277814 (= res!973508 (not ((_ is Nil!27075) (tail!3285 input!1722))))))

(declare-fun d!674306 () Bool)

(declare-fun e!1458973 () Bool)

(assert (=> d!674306 e!1458973))

(declare-fun res!973509 () Bool)

(assert (=> d!674306 (=> res!973509 e!1458973)))

(declare-fun lt!845827 () Bool)

(assert (=> d!674306 (= res!973509 (not lt!845827))))

(assert (=> d!674306 (= lt!845827 e!1458972)))

(declare-fun res!973506 () Bool)

(assert (=> d!674306 (=> res!973506 e!1458972)))

(assert (=> d!674306 (= res!973506 ((_ is Nil!27075) (tail!3285 otherP!12)))))

(assert (=> d!674306 (= (isPrefix!2311 (tail!3285 otherP!12) (tail!3285 input!1722)) lt!845827)))

(declare-fun b!2277817 () Bool)

(assert (=> b!2277817 (= e!1458973 (>= (size!21280 (tail!3285 input!1722)) (size!21280 (tail!3285 otherP!12))))))

(declare-fun b!2277815 () Bool)

(declare-fun res!973507 () Bool)

(assert (=> b!2277815 (=> (not res!973507) (not e!1458974))))

(assert (=> b!2277815 (= res!973507 (= (head!4926 (tail!3285 otherP!12)) (head!4926 (tail!3285 input!1722))))))

(assert (= (and d!674306 (not res!973506)) b!2277814))

(assert (= (and b!2277814 res!973508) b!2277815))

(assert (= (and b!2277815 res!973507) b!2277816))

(assert (= (and d!674306 (not res!973509)) b!2277817))

(assert (=> b!2277816 m!2705697))

(declare-fun m!2706231 () Bool)

(assert (=> b!2277816 m!2706231))

(assert (=> b!2277816 m!2705339))

(assert (=> b!2277816 m!2706213))

(assert (=> b!2277816 m!2706231))

(assert (=> b!2277816 m!2706213))

(declare-fun m!2706233 () Bool)

(assert (=> b!2277816 m!2706233))

(assert (=> b!2277817 m!2705339))

(assert (=> b!2277817 m!2706211))

(assert (=> b!2277817 m!2705697))

(declare-fun m!2706235 () Bool)

(assert (=> b!2277817 m!2706235))

(assert (=> b!2277815 m!2705697))

(declare-fun m!2706237 () Bool)

(assert (=> b!2277815 m!2706237))

(assert (=> b!2277815 m!2705339))

(declare-fun m!2706239 () Bool)

(assert (=> b!2277815 m!2706239))

(assert (=> b!2277442 d!674306))

(declare-fun d!674308 () Bool)

(assert (=> d!674308 (= (tail!3285 otherP!12) (t!203163 otherP!12))))

(assert (=> b!2277442 d!674308))

(assert (=> b!2277442 d!674296))

(declare-fun d!674310 () Bool)

(declare-fun charsToBigInt!0 (List!27170 Int) Int)

(assert (=> d!674310 (= (inv!15 (value!136968 (h!32478 tokens!456))) (= (charsToBigInt!0 (text!31830 (value!136968 (h!32478 tokens!456))) 0) (value!136963 (value!136968 (h!32478 tokens!456)))))))

(declare-fun bs!456443 () Bool)

(assert (= bs!456443 d!674310))

(declare-fun m!2706241 () Bool)

(assert (=> bs!456443 m!2706241))

(assert (=> b!2277014 d!674310))

(declare-fun d!674312 () Bool)

(assert (=> d!674312 (= (isEmpty!15366 lt!845544) (not ((_ is Some!5304) lt!845544)))))

(assert (=> d!674122 d!674312))

(declare-fun b!2277820 () Bool)

(declare-fun e!1458977 () Bool)

(assert (=> b!2277820 (= e!1458977 (isPrefix!2311 (tail!3285 input!1722) (tail!3285 input!1722)))))

(declare-fun b!2277818 () Bool)

(declare-fun e!1458975 () Bool)

(assert (=> b!2277818 (= e!1458975 e!1458977)))

(declare-fun res!973512 () Bool)

(assert (=> b!2277818 (=> (not res!973512) (not e!1458977))))

(assert (=> b!2277818 (= res!973512 (not ((_ is Nil!27075) input!1722)))))

(declare-fun d!674314 () Bool)

(declare-fun e!1458976 () Bool)

(assert (=> d!674314 e!1458976))

(declare-fun res!973513 () Bool)

(assert (=> d!674314 (=> res!973513 e!1458976)))

(declare-fun lt!845828 () Bool)

(assert (=> d!674314 (= res!973513 (not lt!845828))))

(assert (=> d!674314 (= lt!845828 e!1458975)))

(declare-fun res!973510 () Bool)

(assert (=> d!674314 (=> res!973510 e!1458975)))

(assert (=> d!674314 (= res!973510 ((_ is Nil!27075) input!1722))))

(assert (=> d!674314 (= (isPrefix!2311 input!1722 input!1722) lt!845828)))

(declare-fun b!2277821 () Bool)

(assert (=> b!2277821 (= e!1458976 (>= (size!21280 input!1722) (size!21280 input!1722)))))

(declare-fun b!2277819 () Bool)

(declare-fun res!973511 () Bool)

(assert (=> b!2277819 (=> (not res!973511) (not e!1458977))))

(assert (=> b!2277819 (= res!973511 (= (head!4926 input!1722) (head!4926 input!1722)))))

(assert (= (and d!674314 (not res!973510)) b!2277818))

(assert (= (and b!2277818 res!973512) b!2277819))

(assert (= (and b!2277819 res!973511) b!2277820))

(assert (= (and d!674314 (not res!973513)) b!2277821))

(assert (=> b!2277820 m!2705339))

(assert (=> b!2277820 m!2705339))

(assert (=> b!2277820 m!2705339))

(assert (=> b!2277820 m!2705339))

(declare-fun m!2706243 () Bool)

(assert (=> b!2277820 m!2706243))

(assert (=> b!2277821 m!2705343))

(assert (=> b!2277821 m!2705343))

(assert (=> b!2277819 m!2705345))

(assert (=> b!2277819 m!2705345))

(assert (=> d!674122 d!674314))

(declare-fun d!674316 () Bool)

(assert (=> d!674316 (isPrefix!2311 input!1722 input!1722)))

(declare-fun lt!845831 () Unit!40014)

(declare-fun choose!13286 (List!27169 List!27169) Unit!40014)

(assert (=> d!674316 (= lt!845831 (choose!13286 input!1722 input!1722))))

(assert (=> d!674316 (= (lemmaIsPrefixRefl!1471 input!1722 input!1722) lt!845831)))

(declare-fun bs!456444 () Bool)

(assert (= bs!456444 d!674316))

(assert (=> bs!456444 m!2705671))

(declare-fun m!2706245 () Bool)

(assert (=> bs!456444 m!2706245))

(assert (=> d!674122 d!674316))

(declare-fun bs!456445 () Bool)

(declare-fun d!674318 () Bool)

(assert (= bs!456445 (and d!674318 d!674222)))

(declare-fun lambda!85627 () Int)

(assert (=> bs!456445 (= lambda!85627 lambda!85620)))

(assert (=> d!674318 true))

(declare-fun lt!845834 () Bool)

(assert (=> d!674318 (= lt!845834 (forall!5487 rules!1750 lambda!85627))))

(declare-fun e!1458983 () Bool)

(assert (=> d!674318 (= lt!845834 e!1458983)))

(declare-fun res!973519 () Bool)

(assert (=> d!674318 (=> res!973519 e!1458983)))

(assert (=> d!674318 (= res!973519 (not ((_ is Cons!27078) rules!1750)))))

(assert (=> d!674318 (= (rulesValidInductive!1513 thiss!16613 rules!1750) lt!845834)))

(declare-fun b!2277826 () Bool)

(declare-fun e!1458982 () Bool)

(assert (=> b!2277826 (= e!1458983 e!1458982)))

(declare-fun res!973518 () Bool)

(assert (=> b!2277826 (=> (not res!973518) (not e!1458982))))

(assert (=> b!2277826 (= res!973518 (ruleValid!1411 thiss!16613 (h!32479 rules!1750)))))

(declare-fun b!2277827 () Bool)

(assert (=> b!2277827 (= e!1458982 (rulesValidInductive!1513 thiss!16613 (t!203166 rules!1750)))))

(assert (= (and d!674318 (not res!973519)) b!2277826))

(assert (= (and b!2277826 res!973518) b!2277827))

(declare-fun m!2706247 () Bool)

(assert (=> d!674318 m!2706247))

(declare-fun m!2706249 () Bool)

(assert (=> b!2277826 m!2706249))

(declare-fun m!2706251 () Bool)

(assert (=> b!2277827 m!2706251))

(assert (=> d!674122 d!674318))

(declare-fun b!2277831 () Bool)

(declare-fun e!1458985 () Int)

(assert (=> b!2277831 (= e!1458985 (- 1))))

(declare-fun b!2277829 () Bool)

(declare-fun e!1458984 () Int)

(assert (=> b!2277829 (= e!1458984 e!1458985)))

(declare-fun c!361606 () Bool)

(assert (=> b!2277829 (= c!361606 (and ((_ is Cons!27078) (t!203166 rules!1750)) (not (= (h!32479 (t!203166 rules!1750)) r!2363))))))

(declare-fun b!2277828 () Bool)

(assert (=> b!2277828 (= e!1458984 0)))

(declare-fun d!674320 () Bool)

(declare-fun lt!845835 () Int)

(assert (=> d!674320 (>= lt!845835 0)))

(assert (=> d!674320 (= lt!845835 e!1458984)))

(declare-fun c!361605 () Bool)

(assert (=> d!674320 (= c!361605 (and ((_ is Cons!27078) (t!203166 rules!1750)) (= (h!32479 (t!203166 rules!1750)) r!2363)))))

(assert (=> d!674320 (contains!4691 (t!203166 rules!1750) r!2363)))

(assert (=> d!674320 (= (getIndex!334 (t!203166 rules!1750) r!2363) lt!845835)))

(declare-fun b!2277830 () Bool)

(assert (=> b!2277830 (= e!1458985 (+ 1 (getIndex!334 (t!203166 (t!203166 rules!1750)) r!2363)))))

(assert (= (and d!674320 c!361605) b!2277828))

(assert (= (and d!674320 (not c!361605)) b!2277829))

(assert (= (and b!2277829 c!361606) b!2277830))

(assert (= (and b!2277829 (not c!361606)) b!2277831))

(assert (=> d!674320 m!2705621))

(declare-fun m!2706253 () Bool)

(assert (=> b!2277830 m!2706253))

(assert (=> b!2277351 d!674320))

(declare-fun b!2277834 () Bool)

(declare-fun e!1458988 () Bool)

(assert (=> b!2277834 (= e!1458988 (isPrefix!2311 (tail!3285 (tail!3285 lt!845428)) (tail!3285 (tail!3285 input!1722))))))

(declare-fun b!2277832 () Bool)

(declare-fun e!1458986 () Bool)

(assert (=> b!2277832 (= e!1458986 e!1458988)))

(declare-fun res!973522 () Bool)

(assert (=> b!2277832 (=> (not res!973522) (not e!1458988))))

(assert (=> b!2277832 (= res!973522 (not ((_ is Nil!27075) (tail!3285 input!1722))))))

(declare-fun d!674322 () Bool)

(declare-fun e!1458987 () Bool)

(assert (=> d!674322 e!1458987))

(declare-fun res!973523 () Bool)

(assert (=> d!674322 (=> res!973523 e!1458987)))

(declare-fun lt!845836 () Bool)

(assert (=> d!674322 (= res!973523 (not lt!845836))))

(assert (=> d!674322 (= lt!845836 e!1458986)))

(declare-fun res!973520 () Bool)

(assert (=> d!674322 (=> res!973520 e!1458986)))

(assert (=> d!674322 (= res!973520 ((_ is Nil!27075) (tail!3285 lt!845428)))))

(assert (=> d!674322 (= (isPrefix!2311 (tail!3285 lt!845428) (tail!3285 input!1722)) lt!845836)))

(declare-fun b!2277835 () Bool)

(assert (=> b!2277835 (= e!1458987 (>= (size!21280 (tail!3285 input!1722)) (size!21280 (tail!3285 lt!845428))))))

(declare-fun b!2277833 () Bool)

(declare-fun res!973521 () Bool)

(assert (=> b!2277833 (=> (not res!973521) (not e!1458988))))

(assert (=> b!2277833 (= res!973521 (= (head!4926 (tail!3285 lt!845428)) (head!4926 (tail!3285 input!1722))))))

(assert (= (and d!674322 (not res!973520)) b!2277832))

(assert (= (and b!2277832 res!973522) b!2277833))

(assert (= (and b!2277833 res!973521) b!2277834))

(assert (= (and d!674322 (not res!973523)) b!2277835))

(assert (=> b!2277834 m!2705309))

(declare-fun m!2706255 () Bool)

(assert (=> b!2277834 m!2706255))

(assert (=> b!2277834 m!2705339))

(assert (=> b!2277834 m!2706213))

(assert (=> b!2277834 m!2706255))

(assert (=> b!2277834 m!2706213))

(declare-fun m!2706257 () Bool)

(assert (=> b!2277834 m!2706257))

(assert (=> b!2277835 m!2705339))

(assert (=> b!2277835 m!2706211))

(assert (=> b!2277835 m!2705309))

(declare-fun m!2706259 () Bool)

(assert (=> b!2277835 m!2706259))

(assert (=> b!2277833 m!2705309))

(declare-fun m!2706261 () Bool)

(assert (=> b!2277833 m!2706261))

(assert (=> b!2277833 m!2705339))

(assert (=> b!2277833 m!2706239))

(assert (=> b!2277063 d!674322))

(declare-fun d!674324 () Bool)

(assert (=> d!674324 (= (tail!3285 lt!845428) (t!203163 lt!845428))))

(assert (=> b!2277063 d!674324))

(assert (=> b!2277063 d!674296))

(declare-fun bs!456446 () Bool)

(declare-fun d!674326 () Bool)

(assert (= bs!456446 (and d!674326 d!674160)))

(declare-fun lambda!85628 () Int)

(assert (=> bs!456446 (= (= (toValue!6099 (transformation!4321 (h!32479 rules!1750))) (toValue!6099 (transformation!4321 otherR!12))) (= lambda!85628 lambda!85616))))

(declare-fun bs!456447 () Bool)

(assert (= bs!456447 (and d!674326 d!674220)))

(assert (=> bs!456447 (= (= (toValue!6099 (transformation!4321 (h!32479 rules!1750))) (toValue!6099 (transformation!4321 (rule!6645 (h!32478 tokens!456))))) (= lambda!85628 lambda!85617))))

(declare-fun bs!456448 () Bool)

(assert (= bs!456448 (and d!674326 d!674238)))

(assert (=> bs!456448 (= (= (toValue!6099 (transformation!4321 (h!32479 rules!1750))) (toValue!6099 (transformation!4321 r!2363))) (= lambda!85628 lambda!85624))))

(assert (=> d!674326 true))

(assert (=> d!674326 (< (dynLambda!11756 order!15113 (toValue!6099 (transformation!4321 (h!32479 rules!1750)))) (dynLambda!11757 order!15115 lambda!85628))))

(assert (=> d!674326 (= (equivClasses!1663 (toChars!5958 (transformation!4321 (h!32479 rules!1750))) (toValue!6099 (transformation!4321 (h!32479 rules!1750)))) (Forall2!701 lambda!85628))))

(declare-fun bs!456449 () Bool)

(assert (= bs!456449 d!674326))

(declare-fun m!2706263 () Bool)

(assert (=> bs!456449 m!2706263))

(assert (=> b!2277363 d!674326))

(declare-fun d!674328 () Bool)

(declare-fun res!973528 () Bool)

(declare-fun e!1458993 () Bool)

(assert (=> d!674328 (=> res!973528 e!1458993)))

(assert (=> d!674328 (= res!973528 ((_ is Nil!27078) rules!1750))))

(assert (=> d!674328 (= (noDuplicateTag!1586 thiss!16613 rules!1750 Nil!27080) e!1458993)))

(declare-fun b!2277840 () Bool)

(declare-fun e!1458994 () Bool)

(assert (=> b!2277840 (= e!1458993 e!1458994)))

(declare-fun res!973529 () Bool)

(assert (=> b!2277840 (=> (not res!973529) (not e!1458994))))

(declare-fun contains!4692 (List!27174 String!29519) Bool)

(assert (=> b!2277840 (= res!973529 (not (contains!4692 Nil!27080 (tag!4811 (h!32479 rules!1750)))))))

(declare-fun b!2277841 () Bool)

(assert (=> b!2277841 (= e!1458994 (noDuplicateTag!1586 thiss!16613 (t!203166 rules!1750) (Cons!27080 (tag!4811 (h!32479 rules!1750)) Nil!27080)))))

(assert (= (and d!674328 (not res!973528)) b!2277840))

(assert (= (and b!2277840 res!973529) b!2277841))

(declare-fun m!2706265 () Bool)

(assert (=> b!2277840 m!2706265))

(declare-fun m!2706267 () Bool)

(assert (=> b!2277841 m!2706267))

(assert (=> b!2277439 d!674328))

(declare-fun d!674330 () Bool)

(assert (=> d!674330 (= (list!10532 (dynLambda!11755 (toChars!5958 (transformation!4321 (rule!6645 (h!32478 tokens!456)))) (value!136968 (h!32478 tokens!456)))) (list!10535 (c!361426 (dynLambda!11755 (toChars!5958 (transformation!4321 (rule!6645 (h!32478 tokens!456)))) (value!136968 (h!32478 tokens!456))))))))

(declare-fun bs!456450 () Bool)

(assert (= bs!456450 d!674330))

(declare-fun m!2706269 () Bool)

(assert (=> bs!456450 m!2706269))

(assert (=> b!2276997 d!674330))

(declare-fun bs!456451 () Bool)

(declare-fun d!674332 () Bool)

(assert (= bs!456451 (and d!674332 d!674234)))

(declare-fun lambda!85629 () Int)

(assert (=> bs!456451 (= (and (= (toChars!5958 (transformation!4321 otherR!12)) (toChars!5958 (transformation!4321 r!2363))) (= (toValue!6099 (transformation!4321 otherR!12)) (toValue!6099 (transformation!4321 r!2363)))) (= lambda!85629 lambda!85623))))

(assert (=> d!674332 true))

(assert (=> d!674332 (< (dynLambda!11759 order!15117 (toChars!5958 (transformation!4321 otherR!12))) (dynLambda!11760 order!15119 lambda!85629))))

(assert (=> d!674332 true))

(assert (=> d!674332 (< (dynLambda!11756 order!15113 (toValue!6099 (transformation!4321 otherR!12))) (dynLambda!11760 order!15119 lambda!85629))))

(assert (=> d!674332 (= (semiInverseModEq!1744 (toChars!5958 (transformation!4321 otherR!12)) (toValue!6099 (transformation!4321 otherR!12))) (Forall!1084 lambda!85629))))

(declare-fun bs!456452 () Bool)

(assert (= bs!456452 d!674332))

(declare-fun m!2706271 () Bool)

(assert (=> bs!456452 m!2706271))

(assert (=> d!674094 d!674332))

(declare-fun b!2277844 () Bool)

(declare-fun e!1458997 () Bool)

(assert (=> b!2277844 (= e!1458997 (isPrefix!2311 (tail!3285 lt!845428) (tail!3285 (++!6609 lt!845428 (_2!15905 lt!845431)))))))

(declare-fun b!2277842 () Bool)

(declare-fun e!1458995 () Bool)

(assert (=> b!2277842 (= e!1458995 e!1458997)))

(declare-fun res!973532 () Bool)

(assert (=> b!2277842 (=> (not res!973532) (not e!1458997))))

(assert (=> b!2277842 (= res!973532 (not ((_ is Nil!27075) (++!6609 lt!845428 (_2!15905 lt!845431)))))))

(declare-fun d!674334 () Bool)

(declare-fun e!1458996 () Bool)

(assert (=> d!674334 e!1458996))

(declare-fun res!973533 () Bool)

(assert (=> d!674334 (=> res!973533 e!1458996)))

(declare-fun lt!845837 () Bool)

(assert (=> d!674334 (= res!973533 (not lt!845837))))

(assert (=> d!674334 (= lt!845837 e!1458995)))

(declare-fun res!973530 () Bool)

(assert (=> d!674334 (=> res!973530 e!1458995)))

(assert (=> d!674334 (= res!973530 ((_ is Nil!27075) lt!845428))))

(assert (=> d!674334 (= (isPrefix!2311 lt!845428 (++!6609 lt!845428 (_2!15905 lt!845431))) lt!845837)))

(declare-fun b!2277845 () Bool)

(assert (=> b!2277845 (= e!1458996 (>= (size!21280 (++!6609 lt!845428 (_2!15905 lt!845431))) (size!21280 lt!845428)))))

(declare-fun b!2277843 () Bool)

(declare-fun res!973531 () Bool)

(assert (=> b!2277843 (=> (not res!973531) (not e!1458997))))

(assert (=> b!2277843 (= res!973531 (= (head!4926 lt!845428) (head!4926 (++!6609 lt!845428 (_2!15905 lt!845431)))))))

(assert (= (and d!674334 (not res!973530)) b!2277842))

(assert (= (and b!2277842 res!973532) b!2277843))

(assert (= (and b!2277843 res!973531) b!2277844))

(assert (= (and d!674334 (not res!973533)) b!2277845))

(assert (=> b!2277844 m!2705309))

(assert (=> b!2277844 m!2705255))

(declare-fun m!2706273 () Bool)

(assert (=> b!2277844 m!2706273))

(assert (=> b!2277844 m!2705309))

(assert (=> b!2277844 m!2706273))

(declare-fun m!2706275 () Bool)

(assert (=> b!2277844 m!2706275))

(assert (=> b!2277845 m!2705255))

(declare-fun m!2706277 () Bool)

(assert (=> b!2277845 m!2706277))

(assert (=> b!2277845 m!2705317))

(assert (=> b!2277843 m!2705319))

(assert (=> b!2277843 m!2705255))

(declare-fun m!2706279 () Bool)

(assert (=> b!2277843 m!2706279))

(assert (=> d!673996 d!674334))

(assert (=> d!673996 d!673984))

(declare-fun d!674336 () Bool)

(assert (=> d!674336 (isPrefix!2311 lt!845428 (++!6609 lt!845428 (_2!15905 lt!845431)))))

(assert (=> d!674336 true))

(declare-fun _$46!1308 () Unit!40014)

(assert (=> d!674336 (= (choose!13283 lt!845428 (_2!15905 lt!845431)) _$46!1308)))

(declare-fun bs!456453 () Bool)

(assert (= bs!456453 d!674336))

(assert (=> bs!456453 m!2705255))

(assert (=> bs!456453 m!2705255))

(assert (=> bs!456453 m!2705395))

(assert (=> d!673996 d!674336))

(declare-fun d!674338 () Bool)

(assert (=> d!674338 (= (list!10532 lt!845516) (list!10535 (c!361426 lt!845516)))))

(declare-fun bs!456454 () Bool)

(assert (= bs!456454 d!674338))

(declare-fun m!2706281 () Bool)

(assert (=> bs!456454 m!2706281))

(assert (=> d!674098 d!674338))

(declare-fun d!674340 () Bool)

(declare-fun lt!845838 () Int)

(assert (=> d!674340 (>= lt!845838 0)))

(declare-fun e!1458998 () Int)

(assert (=> d!674340 (= lt!845838 e!1458998)))

(declare-fun c!361607 () Bool)

(assert (=> d!674340 (= c!361607 ((_ is Nil!27075) lt!845442))))

(assert (=> d!674340 (= (size!21280 lt!845442) lt!845838)))

(declare-fun b!2277846 () Bool)

(assert (=> b!2277846 (= e!1458998 0)))

(declare-fun b!2277847 () Bool)

(assert (=> b!2277847 (= e!1458998 (+ 1 (size!21280 (t!203163 lt!845442))))))

(assert (= (and d!674340 c!361607) b!2277846))

(assert (= (and d!674340 (not c!361607)) b!2277847))

(declare-fun m!2706283 () Bool)

(assert (=> b!2277847 m!2706283))

(assert (=> b!2277041 d!674340))

(assert (=> b!2277041 d!674218))

(declare-fun d!674342 () Bool)

(declare-fun lt!845839 () Int)

(assert (=> d!674342 (>= lt!845839 0)))

(declare-fun e!1458999 () Int)

(assert (=> d!674342 (= lt!845839 e!1458999)))

(declare-fun c!361608 () Bool)

(assert (=> d!674342 (= c!361608 ((_ is Nil!27075) (_2!15905 lt!845431)))))

(assert (=> d!674342 (= (size!21280 (_2!15905 lt!845431)) lt!845839)))

(declare-fun b!2277848 () Bool)

(assert (=> b!2277848 (= e!1458999 0)))

(declare-fun b!2277849 () Bool)

(assert (=> b!2277849 (= e!1458999 (+ 1 (size!21280 (t!203163 (_2!15905 lt!845431)))))))

(assert (= (and d!674342 c!361608) b!2277848))

(assert (= (and d!674342 (not c!361608)) b!2277849))

(declare-fun m!2706285 () Bool)

(assert (=> b!2277849 m!2706285))

(assert (=> b!2277041 d!674342))

(declare-fun d!674344 () Bool)

(assert (=> d!674344 (= (list!10532 lt!845455) (list!10535 (c!361426 lt!845455)))))

(declare-fun bs!456455 () Bool)

(assert (= bs!456455 d!674344))

(declare-fun m!2706287 () Bool)

(assert (=> bs!456455 m!2706287))

(assert (=> d!673988 d!674344))

(declare-fun d!674346 () Bool)

(assert (=> d!674346 (= (nullable!1842 (regex!4321 otherR!12)) (nullableFct!445 (regex!4321 otherR!12)))))

(declare-fun bs!456456 () Bool)

(assert (= bs!456456 d!674346))

(declare-fun m!2706289 () Bool)

(assert (=> bs!456456 m!2706289))

(assert (=> b!2277361 d!674346))

(declare-fun b!2277851 () Bool)

(declare-fun e!1459000 () List!27169)

(declare-fun e!1459001 () List!27169)

(assert (=> b!2277851 (= e!1459000 e!1459001)))

(declare-fun c!361610 () Bool)

(assert (=> b!2277851 (= c!361610 ((_ is Leaf!12936) (c!361426 (charsOf!2709 (h!32478 tokens!456)))))))

(declare-fun b!2277852 () Bool)

(assert (=> b!2277852 (= e!1459001 (list!10538 (xs!11732 (c!361426 (charsOf!2709 (h!32478 tokens!456))))))))

(declare-fun b!2277853 () Bool)

(assert (=> b!2277853 (= e!1459001 (++!6609 (list!10535 (left!20543 (c!361426 (charsOf!2709 (h!32478 tokens!456))))) (list!10535 (right!20873 (c!361426 (charsOf!2709 (h!32478 tokens!456)))))))))

(declare-fun b!2277850 () Bool)

(assert (=> b!2277850 (= e!1459000 Nil!27075)))

(declare-fun d!674348 () Bool)

(declare-fun c!361609 () Bool)

(assert (=> d!674348 (= c!361609 ((_ is Empty!8790) (c!361426 (charsOf!2709 (h!32478 tokens!456)))))))

(assert (=> d!674348 (= (list!10535 (c!361426 (charsOf!2709 (h!32478 tokens!456)))) e!1459000)))

(assert (= (and d!674348 c!361609) b!2277850))

(assert (= (and d!674348 (not c!361609)) b!2277851))

(assert (= (and b!2277851 c!361610) b!2277852))

(assert (= (and b!2277851 (not c!361610)) b!2277853))

(declare-fun m!2706291 () Bool)

(assert (=> b!2277852 m!2706291))

(declare-fun m!2706293 () Bool)

(assert (=> b!2277853 m!2706293))

(declare-fun m!2706295 () Bool)

(assert (=> b!2277853 m!2706295))

(assert (=> b!2277853 m!2706293))

(assert (=> b!2277853 m!2706295))

(declare-fun m!2706297 () Bool)

(assert (=> b!2277853 m!2706297))

(assert (=> d!673986 d!674348))

(assert (=> b!2277433 d!674302))

(declare-fun d!674350 () Bool)

(assert (=> d!674350 (= (inv!36651 (tag!4811 (h!32479 (t!203166 rules!1750)))) (= (mod (str.len (value!136967 (tag!4811 (h!32479 (t!203166 rules!1750))))) 2) 0))))

(assert (=> b!2277495 d!674350))

(declare-fun d!674352 () Bool)

(declare-fun res!973534 () Bool)

(declare-fun e!1459002 () Bool)

(assert (=> d!674352 (=> (not res!973534) (not e!1459002))))

(assert (=> d!674352 (= res!973534 (semiInverseModEq!1744 (toChars!5958 (transformation!4321 (h!32479 (t!203166 rules!1750)))) (toValue!6099 (transformation!4321 (h!32479 (t!203166 rules!1750))))))))

(assert (=> d!674352 (= (inv!36655 (transformation!4321 (h!32479 (t!203166 rules!1750)))) e!1459002)))

(declare-fun b!2277854 () Bool)

(assert (=> b!2277854 (= e!1459002 (equivClasses!1663 (toChars!5958 (transformation!4321 (h!32479 (t!203166 rules!1750)))) (toValue!6099 (transformation!4321 (h!32479 (t!203166 rules!1750))))))))

(assert (= (and d!674352 res!973534) b!2277854))

(declare-fun m!2706299 () Bool)

(assert (=> d!674352 m!2706299))

(declare-fun m!2706301 () Bool)

(assert (=> b!2277854 m!2706301))

(assert (=> b!2277495 d!674352))

(declare-fun d!674354 () Bool)

(assert (=> d!674354 (= (list!10533 (_1!15906 lt!845512)) (list!10537 (c!361428 (_1!15906 lt!845512))))))

(declare-fun bs!456457 () Bool)

(assert (= bs!456457 d!674354))

(declare-fun m!2706303 () Bool)

(assert (=> bs!456457 m!2706303))

(assert (=> b!2277271 d!674354))

(assert (=> b!2277271 d!674272))

(assert (=> b!2277271 d!674274))

(declare-fun d!674356 () Bool)

(declare-fun lt!845840 () Int)

(assert (=> d!674356 (>= lt!845840 0)))

(declare-fun e!1459003 () Int)

(assert (=> d!674356 (= lt!845840 e!1459003)))

(declare-fun c!361611 () Bool)

(assert (=> d!674356 (= c!361611 ((_ is Nil!27075) (t!203163 otherP!12)))))

(assert (=> d!674356 (= (size!21280 (t!203163 otherP!12)) lt!845840)))

(declare-fun b!2277855 () Bool)

(assert (=> b!2277855 (= e!1459003 0)))

(declare-fun b!2277856 () Bool)

(assert (=> b!2277856 (= e!1459003 (+ 1 (size!21280 (t!203163 (t!203163 otherP!12)))))))

(assert (= (and d!674356 c!361611) b!2277855))

(assert (= (and d!674356 (not c!361611)) b!2277856))

(declare-fun m!2706305 () Bool)

(assert (=> b!2277856 m!2706305))

(assert (=> b!2277332 d!674356))

(declare-fun d!674358 () Bool)

(declare-fun lt!845841 () Int)

(assert (=> d!674358 (>= lt!845841 0)))

(declare-fun e!1459004 () Int)

(assert (=> d!674358 (= lt!845841 e!1459004)))

(declare-fun c!361612 () Bool)

(assert (=> d!674358 (= c!361612 ((_ is Nil!27075) (_2!15905 (get!8161 lt!845544))))))

(assert (=> d!674358 (= (size!21280 (_2!15905 (get!8161 lt!845544))) lt!845841)))

(declare-fun b!2277857 () Bool)

(assert (=> b!2277857 (= e!1459004 0)))

(declare-fun b!2277858 () Bool)

(assert (=> b!2277858 (= e!1459004 (+ 1 (size!21280 (t!203163 (_2!15905 (get!8161 lt!845544))))))))

(assert (= (and d!674358 c!361612) b!2277857))

(assert (= (and d!674358 (not c!361612)) b!2277858))

(declare-fun m!2706307 () Bool)

(assert (=> b!2277858 m!2706307))

(assert (=> b!2277429 d!674358))

(assert (=> b!2277429 d!674228))

(declare-fun d!674360 () Bool)

(declare-fun lt!845842 () Int)

(assert (=> d!674360 (>= lt!845842 0)))

(declare-fun e!1459005 () Int)

(assert (=> d!674360 (= lt!845842 e!1459005)))

(declare-fun c!361613 () Bool)

(assert (=> d!674360 (= c!361613 ((_ is Nil!27075) input!1722))))

(assert (=> d!674360 (= (size!21280 input!1722) lt!845842)))

(declare-fun b!2277859 () Bool)

(assert (=> b!2277859 (= e!1459005 0)))

(declare-fun b!2277860 () Bool)

(assert (=> b!2277860 (= e!1459005 (+ 1 (size!21280 (t!203163 input!1722))))))

(assert (= (and d!674360 c!361613) b!2277859))

(assert (= (and d!674360 (not c!361613)) b!2277860))

(declare-fun m!2706309 () Bool)

(assert (=> b!2277860 m!2706309))

(assert (=> b!2277429 d!674360))

(declare-fun d!674362 () Bool)

(declare-fun isBalanced!2675 (Conc!8790) Bool)

(assert (=> d!674362 (= (inv!36659 (dynLambda!11755 (toChars!5958 (transformation!4321 (rule!6645 (head!4924 tokens!456)))) (value!136968 (head!4924 tokens!456)))) (isBalanced!2675 (c!361426 (dynLambda!11755 (toChars!5958 (transformation!4321 (rule!6645 (head!4924 tokens!456)))) (value!136968 (head!4924 tokens!456))))))))

(declare-fun bs!456458 () Bool)

(assert (= bs!456458 d!674362))

(declare-fun m!2706311 () Bool)

(assert (=> bs!456458 m!2706311))

(assert (=> tb!135291 d!674362))

(declare-fun d!674364 () Bool)

(declare-fun res!973535 () Bool)

(declare-fun e!1459006 () Bool)

(assert (=> d!674364 (=> (not res!973535) (not e!1459006))))

(assert (=> d!674364 (= res!973535 (not (isEmpty!15362 (originalCharacters!5091 (h!32478 (t!203165 tokens!456))))))))

(assert (=> d!674364 (= (inv!36654 (h!32478 (t!203165 tokens!456))) e!1459006)))

(declare-fun b!2277861 () Bool)

(declare-fun res!973536 () Bool)

(assert (=> b!2277861 (=> (not res!973536) (not e!1459006))))

(assert (=> b!2277861 (= res!973536 (= (originalCharacters!5091 (h!32478 (t!203165 tokens!456))) (list!10532 (dynLambda!11755 (toChars!5958 (transformation!4321 (rule!6645 (h!32478 (t!203165 tokens!456))))) (value!136968 (h!32478 (t!203165 tokens!456)))))))))

(declare-fun b!2277862 () Bool)

(assert (=> b!2277862 (= e!1459006 (= (size!21278 (h!32478 (t!203165 tokens!456))) (size!21280 (originalCharacters!5091 (h!32478 (t!203165 tokens!456))))))))

(assert (= (and d!674364 res!973535) b!2277861))

(assert (= (and b!2277861 res!973536) b!2277862))

(declare-fun b_lambda!72529 () Bool)

(assert (=> (not b_lambda!72529) (not b!2277861)))

(declare-fun t!203268 () Bool)

(declare-fun tb!135359 () Bool)

(assert (=> (and b!2277457 (= (toChars!5958 (transformation!4321 (rule!6645 (h!32478 (t!203165 tokens!456))))) (toChars!5958 (transformation!4321 (rule!6645 (h!32478 (t!203165 tokens!456)))))) t!203268) tb!135359))

(declare-fun b!2277863 () Bool)

(declare-fun e!1459007 () Bool)

(declare-fun tp!721562 () Bool)

(assert (=> b!2277863 (= e!1459007 (and (inv!36658 (c!361426 (dynLambda!11755 (toChars!5958 (transformation!4321 (rule!6645 (h!32478 (t!203165 tokens!456))))) (value!136968 (h!32478 (t!203165 tokens!456)))))) tp!721562))))

(declare-fun result!165038 () Bool)

(assert (=> tb!135359 (= result!165038 (and (inv!36659 (dynLambda!11755 (toChars!5958 (transformation!4321 (rule!6645 (h!32478 (t!203165 tokens!456))))) (value!136968 (h!32478 (t!203165 tokens!456))))) e!1459007))))

(assert (= tb!135359 b!2277863))

(declare-fun m!2706313 () Bool)

(assert (=> b!2277863 m!2706313))

(declare-fun m!2706315 () Bool)

(assert (=> tb!135359 m!2706315))

(assert (=> b!2277861 t!203268))

(declare-fun b_and!179769 () Bool)

(assert (= b_and!179767 (and (=> t!203268 result!165038) b_and!179769)))

(declare-fun t!203270 () Bool)

(declare-fun tb!135361 () Bool)

(assert (=> (and b!2276991 (= (toChars!5958 (transformation!4321 (rule!6645 (h!32478 tokens!456)))) (toChars!5958 (transformation!4321 (rule!6645 (h!32478 (t!203165 tokens!456)))))) t!203270) tb!135361))

(declare-fun result!165040 () Bool)

(assert (= result!165040 result!165038))

(assert (=> b!2277861 t!203270))

(declare-fun b_and!179771 () Bool)

(assert (= b_and!179761 (and (=> t!203270 result!165040) b_and!179771)))

(declare-fun tb!135363 () Bool)

(declare-fun t!203272 () Bool)

(assert (=> (and b!2276963 (= (toChars!5958 (transformation!4321 (h!32479 rules!1750))) (toChars!5958 (transformation!4321 (rule!6645 (h!32478 (t!203165 tokens!456)))))) t!203272) tb!135363))

(declare-fun result!165042 () Bool)

(assert (= result!165042 result!165038))

(assert (=> b!2277861 t!203272))

(declare-fun b_and!179773 () Bool)

(assert (= b_and!179757 (and (=> t!203272 result!165042) b_and!179773)))

(declare-fun t!203274 () Bool)

(declare-fun tb!135365 () Bool)

(assert (=> (and b!2276980 (= (toChars!5958 (transformation!4321 otherR!12)) (toChars!5958 (transformation!4321 (rule!6645 (h!32478 (t!203165 tokens!456)))))) t!203274) tb!135365))

(declare-fun result!165044 () Bool)

(assert (= result!165044 result!165038))

(assert (=> b!2277861 t!203274))

(declare-fun b_and!179775 () Bool)

(assert (= b_and!179759 (and (=> t!203274 result!165044) b_and!179775)))

(declare-fun tb!135367 () Bool)

(declare-fun t!203276 () Bool)

(assert (=> (and b!2277496 (= (toChars!5958 (transformation!4321 (h!32479 (t!203166 rules!1750)))) (toChars!5958 (transformation!4321 (rule!6645 (h!32478 (t!203165 tokens!456)))))) t!203276) tb!135367))

(declare-fun result!165046 () Bool)

(assert (= result!165046 result!165038))

(assert (=> b!2277861 t!203276))

(declare-fun b_and!179777 () Bool)

(assert (= b_and!179763 (and (=> t!203276 result!165046) b_and!179777)))

(declare-fun t!203278 () Bool)

(declare-fun tb!135369 () Bool)

(assert (=> (and b!2276972 (= (toChars!5958 (transformation!4321 r!2363)) (toChars!5958 (transformation!4321 (rule!6645 (h!32478 (t!203165 tokens!456)))))) t!203278) tb!135369))

(declare-fun result!165048 () Bool)

(assert (= result!165048 result!165038))

(assert (=> b!2277861 t!203278))

(declare-fun b_and!179779 () Bool)

(assert (= b_and!179765 (and (=> t!203278 result!165048) b_and!179779)))

(declare-fun m!2706317 () Bool)

(assert (=> d!674364 m!2706317))

(declare-fun m!2706319 () Bool)

(assert (=> b!2277861 m!2706319))

(assert (=> b!2277861 m!2706319))

(declare-fun m!2706321 () Bool)

(assert (=> b!2277861 m!2706321))

(declare-fun m!2706323 () Bool)

(assert (=> b!2277862 m!2706323))

(assert (=> b!2277454 d!674364))

(declare-fun call!136361 () Option!5305)

(declare-fun bm!136356 () Bool)

(assert (=> bm!136356 (= call!136361 (maxPrefixOneRule!1366 thiss!16613 (h!32479 (t!203166 rules!1750)) input!1722))))

(declare-fun b!2277864 () Bool)

(declare-fun e!1459009 () Bool)

(declare-fun lt!845844 () Option!5305)

(assert (=> b!2277864 (= e!1459009 (contains!4691 (t!203166 rules!1750) (rule!6645 (_1!15905 (get!8161 lt!845844)))))))

(declare-fun b!2277865 () Bool)

(declare-fun res!973538 () Bool)

(assert (=> b!2277865 (=> (not res!973538) (not e!1459009))))

(assert (=> b!2277865 (= res!973538 (= (++!6609 (list!10532 (charsOf!2709 (_1!15905 (get!8161 lt!845844)))) (_2!15905 (get!8161 lt!845844))) input!1722))))

(declare-fun b!2277866 () Bool)

(declare-fun res!973542 () Bool)

(assert (=> b!2277866 (=> (not res!973542) (not e!1459009))))

(assert (=> b!2277866 (= res!973542 (matchR!2926 (regex!4321 (rule!6645 (_1!15905 (get!8161 lt!845844)))) (list!10532 (charsOf!2709 (_1!15905 (get!8161 lt!845844))))))))

(declare-fun b!2277867 () Bool)

(declare-fun res!973543 () Bool)

(assert (=> b!2277867 (=> (not res!973543) (not e!1459009))))

(assert (=> b!2277867 (= res!973543 (= (list!10532 (charsOf!2709 (_1!15905 (get!8161 lt!845844)))) (originalCharacters!5091 (_1!15905 (get!8161 lt!845844)))))))

(declare-fun b!2277868 () Bool)

(declare-fun e!1459008 () Bool)

(assert (=> b!2277868 (= e!1459008 e!1459009)))

(declare-fun res!973540 () Bool)

(assert (=> b!2277868 (=> (not res!973540) (not e!1459009))))

(assert (=> b!2277868 (= res!973540 (isDefined!4208 lt!845844))))

(declare-fun b!2277869 () Bool)

(declare-fun res!973541 () Bool)

(assert (=> b!2277869 (=> (not res!973541) (not e!1459009))))

(assert (=> b!2277869 (= res!973541 (< (size!21280 (_2!15905 (get!8161 lt!845844))) (size!21280 input!1722)))))

(declare-fun b!2277870 () Bool)

(declare-fun res!973537 () Bool)

(assert (=> b!2277870 (=> (not res!973537) (not e!1459009))))

(assert (=> b!2277870 (= res!973537 (= (value!136968 (_1!15905 (get!8161 lt!845844))) (apply!6603 (transformation!4321 (rule!6645 (_1!15905 (get!8161 lt!845844)))) (seqFromList!3025 (originalCharacters!5091 (_1!15905 (get!8161 lt!845844)))))))))

(declare-fun d!674366 () Bool)

(assert (=> d!674366 e!1459008))

(declare-fun res!973539 () Bool)

(assert (=> d!674366 (=> res!973539 e!1459008)))

(assert (=> d!674366 (= res!973539 (isEmpty!15366 lt!845844))))

(declare-fun e!1459010 () Option!5305)

(assert (=> d!674366 (= lt!845844 e!1459010)))

(declare-fun c!361614 () Bool)

(assert (=> d!674366 (= c!361614 (and ((_ is Cons!27078) (t!203166 rules!1750)) ((_ is Nil!27078) (t!203166 (t!203166 rules!1750)))))))

(declare-fun lt!845847 () Unit!40014)

(declare-fun lt!845846 () Unit!40014)

(assert (=> d!674366 (= lt!845847 lt!845846)))

(assert (=> d!674366 (isPrefix!2311 input!1722 input!1722)))

(assert (=> d!674366 (= lt!845846 (lemmaIsPrefixRefl!1471 input!1722 input!1722))))

(assert (=> d!674366 (rulesValidInductive!1513 thiss!16613 (t!203166 rules!1750))))

(assert (=> d!674366 (= (maxPrefix!2182 thiss!16613 (t!203166 rules!1750) input!1722) lt!845844)))

(declare-fun b!2277871 () Bool)

(declare-fun lt!845845 () Option!5305)

(declare-fun lt!845843 () Option!5305)

(assert (=> b!2277871 (= e!1459010 (ite (and ((_ is None!5304) lt!845845) ((_ is None!5304) lt!845843)) None!5304 (ite ((_ is None!5304) lt!845843) lt!845845 (ite ((_ is None!5304) lt!845845) lt!845843 (ite (>= (size!21278 (_1!15905 (v!30360 lt!845845))) (size!21278 (_1!15905 (v!30360 lt!845843)))) lt!845845 lt!845843)))))))

(assert (=> b!2277871 (= lt!845845 call!136361)))

(assert (=> b!2277871 (= lt!845843 (maxPrefix!2182 thiss!16613 (t!203166 (t!203166 rules!1750)) input!1722))))

(declare-fun b!2277872 () Bool)

(assert (=> b!2277872 (= e!1459010 call!136361)))

(assert (= (and d!674366 c!361614) b!2277872))

(assert (= (and d!674366 (not c!361614)) b!2277871))

(assert (= (or b!2277872 b!2277871) bm!136356))

(assert (= (and d!674366 (not res!973539)) b!2277868))

(assert (= (and b!2277868 res!973540) b!2277867))

(assert (= (and b!2277867 res!973543) b!2277869))

(assert (= (and b!2277869 res!973541) b!2277865))

(assert (= (and b!2277865 res!973538) b!2277870))

(assert (= (and b!2277870 res!973537) b!2277866))

(assert (= (and b!2277866 res!973542) b!2277864))

(declare-fun m!2706325 () Bool)

(assert (=> b!2277870 m!2706325))

(declare-fun m!2706327 () Bool)

(assert (=> b!2277870 m!2706327))

(assert (=> b!2277870 m!2706327))

(declare-fun m!2706329 () Bool)

(assert (=> b!2277870 m!2706329))

(assert (=> b!2277869 m!2706325))

(declare-fun m!2706331 () Bool)

(assert (=> b!2277869 m!2706331))

(assert (=> b!2277869 m!2705343))

(assert (=> b!2277867 m!2706325))

(declare-fun m!2706333 () Bool)

(assert (=> b!2277867 m!2706333))

(assert (=> b!2277867 m!2706333))

(declare-fun m!2706335 () Bool)

(assert (=> b!2277867 m!2706335))

(assert (=> b!2277864 m!2706325))

(declare-fun m!2706337 () Bool)

(assert (=> b!2277864 m!2706337))

(declare-fun m!2706339 () Bool)

(assert (=> d!674366 m!2706339))

(assert (=> d!674366 m!2705671))

(assert (=> d!674366 m!2705673))

(assert (=> d!674366 m!2706251))

(declare-fun m!2706341 () Bool)

(assert (=> bm!136356 m!2706341))

(assert (=> b!2277866 m!2706325))

(assert (=> b!2277866 m!2706333))

(assert (=> b!2277866 m!2706333))

(assert (=> b!2277866 m!2706335))

(assert (=> b!2277866 m!2706335))

(declare-fun m!2706343 () Bool)

(assert (=> b!2277866 m!2706343))

(declare-fun m!2706345 () Bool)

(assert (=> b!2277868 m!2706345))

(declare-fun m!2706347 () Bool)

(assert (=> b!2277871 m!2706347))

(assert (=> b!2277865 m!2706325))

(assert (=> b!2277865 m!2706333))

(assert (=> b!2277865 m!2706333))

(assert (=> b!2277865 m!2706335))

(assert (=> b!2277865 m!2706335))

(declare-fun m!2706349 () Bool)

(assert (=> b!2277865 m!2706349))

(assert (=> b!2277431 d!674366))

(declare-fun d!674368 () Bool)

(assert (=> d!674368 (= (isEmpty!15362 (tail!3285 (list!10532 (charsOf!2709 (head!4924 tokens!456))))) ((_ is Nil!27075) (tail!3285 (list!10532 (charsOf!2709 (head!4924 tokens!456))))))))

(assert (=> b!2277404 d!674368))

(declare-fun d!674370 () Bool)

(assert (=> d!674370 (= (tail!3285 (list!10532 (charsOf!2709 (head!4924 tokens!456)))) (t!203163 (list!10532 (charsOf!2709 (head!4924 tokens!456)))))))

(assert (=> b!2277404 d!674370))

(declare-fun b!2277873 () Bool)

(declare-fun e!1459012 () List!27169)

(assert (=> b!2277873 (= e!1459012 lt!845464)))

(declare-fun b!2277876 () Bool)

(declare-fun lt!845848 () List!27169)

(declare-fun e!1459011 () Bool)

(assert (=> b!2277876 (= e!1459011 (or (not (= lt!845464 Nil!27075)) (= lt!845848 lt!845428)))))

(declare-fun b!2277875 () Bool)

(declare-fun res!973545 () Bool)

(assert (=> b!2277875 (=> (not res!973545) (not e!1459011))))

(assert (=> b!2277875 (= res!973545 (= (size!21280 lt!845848) (+ (size!21280 lt!845428) (size!21280 lt!845464))))))

(declare-fun b!2277874 () Bool)

(assert (=> b!2277874 (= e!1459012 (Cons!27075 (h!32476 lt!845428) (++!6609 (t!203163 lt!845428) lt!845464)))))

(declare-fun d!674372 () Bool)

(assert (=> d!674372 e!1459011))

(declare-fun res!973544 () Bool)

(assert (=> d!674372 (=> (not res!973544) (not e!1459011))))

(assert (=> d!674372 (= res!973544 (= (content!3614 lt!845848) ((_ map or) (content!3614 lt!845428) (content!3614 lt!845464))))))

(assert (=> d!674372 (= lt!845848 e!1459012)))

(declare-fun c!361615 () Bool)

(assert (=> d!674372 (= c!361615 ((_ is Nil!27075) lt!845428))))

(assert (=> d!674372 (= (++!6609 lt!845428 lt!845464) lt!845848)))

(assert (= (and d!674372 c!361615) b!2277873))

(assert (= (and d!674372 (not c!361615)) b!2277874))

(assert (= (and d!674372 res!973544) b!2277875))

(assert (= (and b!2277875 res!973545) b!2277876))

(declare-fun m!2706351 () Bool)

(assert (=> b!2277875 m!2706351))

(assert (=> b!2277875 m!2705317))

(declare-fun m!2706353 () Bool)

(assert (=> b!2277875 m!2706353))

(declare-fun m!2706355 () Bool)

(assert (=> b!2277874 m!2706355))

(declare-fun m!2706357 () Bool)

(assert (=> d!674372 m!2706357))

(assert (=> d!674372 m!2705331))

(declare-fun m!2706359 () Bool)

(assert (=> d!674372 m!2706359))

(assert (=> d!673992 d!674372))

(assert (=> d!673992 d!674360))

(assert (=> d!673992 d!674218))

(declare-fun d!674374 () Bool)

(assert (=> d!674374 (= (inv!36651 (tag!4811 (rule!6645 (h!32478 (t!203165 tokens!456))))) (= (mod (str.len (value!136967 (tag!4811 (rule!6645 (h!32478 (t!203165 tokens!456)))))) 2) 0))))

(assert (=> b!2277456 d!674374))

(declare-fun d!674376 () Bool)

(declare-fun res!973546 () Bool)

(declare-fun e!1459013 () Bool)

(assert (=> d!674376 (=> (not res!973546) (not e!1459013))))

(assert (=> d!674376 (= res!973546 (semiInverseModEq!1744 (toChars!5958 (transformation!4321 (rule!6645 (h!32478 (t!203165 tokens!456))))) (toValue!6099 (transformation!4321 (rule!6645 (h!32478 (t!203165 tokens!456)))))))))

(assert (=> d!674376 (= (inv!36655 (transformation!4321 (rule!6645 (h!32478 (t!203165 tokens!456))))) e!1459013)))

(declare-fun b!2277877 () Bool)

(assert (=> b!2277877 (= e!1459013 (equivClasses!1663 (toChars!5958 (transformation!4321 (rule!6645 (h!32478 (t!203165 tokens!456))))) (toValue!6099 (transformation!4321 (rule!6645 (h!32478 (t!203165 tokens!456)))))))))

(assert (= (and d!674376 res!973546) b!2277877))

(declare-fun m!2706361 () Bool)

(assert (=> d!674376 m!2706361))

(declare-fun m!2706363 () Bool)

(assert (=> b!2277877 m!2706363))

(assert (=> b!2277456 d!674376))

(declare-fun d!674378 () Bool)

(declare-fun c!361618 () Bool)

(assert (=> d!674378 (= c!361618 ((_ is Nil!27075) lt!845442))))

(declare-fun e!1459016 () (InoxSet C!13484))

(assert (=> d!674378 (= (content!3614 lt!845442) e!1459016)))

(declare-fun b!2277882 () Bool)

(assert (=> b!2277882 (= e!1459016 ((as const (Array C!13484 Bool)) false))))

(declare-fun b!2277883 () Bool)

(assert (=> b!2277883 (= e!1459016 ((_ map or) (store ((as const (Array C!13484 Bool)) false) (h!32476 lt!845442) true) (content!3614 (t!203163 lt!845442))))))

(assert (= (and d!674378 c!361618) b!2277882))

(assert (= (and d!674378 (not c!361618)) b!2277883))

(declare-fun m!2706365 () Bool)

(assert (=> b!2277883 m!2706365))

(declare-fun m!2706367 () Bool)

(assert (=> b!2277883 m!2706367))

(assert (=> d!673984 d!674378))

(declare-fun d!674380 () Bool)

(declare-fun c!361619 () Bool)

(assert (=> d!674380 (= c!361619 ((_ is Nil!27075) lt!845428))))

(declare-fun e!1459017 () (InoxSet C!13484))

(assert (=> d!674380 (= (content!3614 lt!845428) e!1459017)))

(declare-fun b!2277884 () Bool)

(assert (=> b!2277884 (= e!1459017 ((as const (Array C!13484 Bool)) false))))

(declare-fun b!2277885 () Bool)

(assert (=> b!2277885 (= e!1459017 ((_ map or) (store ((as const (Array C!13484 Bool)) false) (h!32476 lt!845428) true) (content!3614 (t!203163 lt!845428))))))

(assert (= (and d!674380 c!361619) b!2277884))

(assert (= (and d!674380 (not c!361619)) b!2277885))

(declare-fun m!2706369 () Bool)

(assert (=> b!2277885 m!2706369))

(assert (=> b!2277885 m!2705741))

(assert (=> d!673984 d!674380))

(declare-fun d!674382 () Bool)

(declare-fun c!361620 () Bool)

(assert (=> d!674382 (= c!361620 ((_ is Nil!27075) (_2!15905 lt!845431)))))

(declare-fun e!1459018 () (InoxSet C!13484))

(assert (=> d!674382 (= (content!3614 (_2!15905 lt!845431)) e!1459018)))

(declare-fun b!2277886 () Bool)

(assert (=> b!2277886 (= e!1459018 ((as const (Array C!13484 Bool)) false))))

(declare-fun b!2277887 () Bool)

(assert (=> b!2277887 (= e!1459018 ((_ map or) (store ((as const (Array C!13484 Bool)) false) (h!32476 (_2!15905 lt!845431)) true) (content!3614 (t!203163 (_2!15905 lt!845431)))))))

(assert (= (and d!674382 c!361620) b!2277886))

(assert (= (and d!674382 (not c!361620)) b!2277887))

(declare-fun m!2706371 () Bool)

(assert (=> b!2277887 m!2706371))

(declare-fun m!2706373 () Bool)

(assert (=> b!2277887 m!2706373))

(assert (=> d!673984 d!674382))

(assert (=> d!674110 d!674108))

(declare-fun d!674384 () Bool)

(assert (=> d!674384 (ruleValid!1411 thiss!16613 otherR!12)))

(assert (=> d!674384 true))

(declare-fun _$65!1115 () Unit!40014)

(assert (=> d!674384 (= (choose!13285 thiss!16613 otherR!12 rules!1750) _$65!1115)))

(declare-fun bs!456459 () Bool)

(assert (= bs!456459 d!674384))

(assert (=> bs!456459 m!2705213))

(assert (=> d!674110 d!674384))

(assert (=> d!674110 d!674128))

(declare-fun b!2277993 () Bool)

(declare-fun e!1459082 () Bool)

(declare-fun e!1459083 () Bool)

(assert (=> b!2277993 (= e!1459082 e!1459083)))

(declare-fun res!973600 () Bool)

(assert (=> b!2277993 (=> (not res!973600) (not e!1459083))))

(declare-fun lt!845869 () Option!5305)

(assert (=> b!2277993 (= res!973600 (matchR!2926 (regex!4321 (h!32479 rules!1750)) (list!10532 (charsOf!2709 (_1!15905 (get!8161 lt!845869))))))))

(declare-fun b!2277994 () Bool)

(declare-fun res!973598 () Bool)

(assert (=> b!2277994 (=> (not res!973598) (not e!1459083))))

(assert (=> b!2277994 (= res!973598 (< (size!21280 (_2!15905 (get!8161 lt!845869))) (size!21280 input!1722)))))

(declare-fun b!2277995 () Bool)

(declare-fun res!973597 () Bool)

(assert (=> b!2277995 (=> (not res!973597) (not e!1459083))))

(assert (=> b!2277995 (= res!973597 (= (rule!6645 (_1!15905 (get!8161 lt!845869))) (h!32479 rules!1750)))))

(declare-fun b!2277996 () Bool)

(declare-fun e!1459084 () Option!5305)

(declare-datatypes ((tuple2!26802 0))(
  ( (tuple2!26803 (_1!15911 List!27169) (_2!15911 List!27169)) )
))
(declare-fun lt!845867 () tuple2!26802)

(assert (=> b!2277996 (= e!1459084 (Some!5304 (tuple2!26791 (Token!8121 (apply!6603 (transformation!4321 (h!32479 rules!1750)) (seqFromList!3025 (_1!15911 lt!845867))) (h!32479 rules!1750) (size!21279 (seqFromList!3025 (_1!15911 lt!845867))) (_1!15911 lt!845867)) (_2!15911 lt!845867))))))

(declare-fun lt!845871 () Unit!40014)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!684 (Regex!6669 List!27169) Unit!40014)

(assert (=> b!2277996 (= lt!845871 (longestMatchIsAcceptedByMatchOrIsEmpty!684 (regex!4321 (h!32479 rules!1750)) input!1722))))

(declare-fun res!973599 () Bool)

(declare-fun findLongestMatchInner!711 (Regex!6669 List!27169 Int List!27169 List!27169 Int) tuple2!26802)

(assert (=> b!2277996 (= res!973599 (isEmpty!15362 (_1!15911 (findLongestMatchInner!711 (regex!4321 (h!32479 rules!1750)) Nil!27075 (size!21280 Nil!27075) input!1722 input!1722 (size!21280 input!1722)))))))

(declare-fun e!1459085 () Bool)

(assert (=> b!2277996 (=> res!973599 e!1459085)))

(assert (=> b!2277996 e!1459085))

(declare-fun lt!845870 () Unit!40014)

(assert (=> b!2277996 (= lt!845870 lt!845871)))

(declare-fun lt!845868 () Unit!40014)

(declare-fun lemmaSemiInverse!1044 (TokenValueInjection!8506 BalanceConc!17308) Unit!40014)

(assert (=> b!2277996 (= lt!845868 (lemmaSemiInverse!1044 (transformation!4321 (h!32479 rules!1750)) (seqFromList!3025 (_1!15911 lt!845867))))))

(declare-fun b!2277997 () Bool)

(assert (=> b!2277997 (= e!1459084 None!5304)))

(declare-fun d!674386 () Bool)

(assert (=> d!674386 e!1459082))

(declare-fun res!973602 () Bool)

(assert (=> d!674386 (=> res!973602 e!1459082)))

(assert (=> d!674386 (= res!973602 (isEmpty!15366 lt!845869))))

(assert (=> d!674386 (= lt!845869 e!1459084)))

(declare-fun c!361645 () Bool)

(assert (=> d!674386 (= c!361645 (isEmpty!15362 (_1!15911 lt!845867)))))

(declare-fun findLongestMatch!640 (Regex!6669 List!27169) tuple2!26802)

(assert (=> d!674386 (= lt!845867 (findLongestMatch!640 (regex!4321 (h!32479 rules!1750)) input!1722))))

(assert (=> d!674386 (ruleValid!1411 thiss!16613 (h!32479 rules!1750))))

(assert (=> d!674386 (= (maxPrefixOneRule!1366 thiss!16613 (h!32479 rules!1750) input!1722) lt!845869)))

(declare-fun b!2277998 () Bool)

(assert (=> b!2277998 (= e!1459083 (= (size!21278 (_1!15905 (get!8161 lt!845869))) (size!21280 (originalCharacters!5091 (_1!15905 (get!8161 lt!845869))))))))

(declare-fun b!2277999 () Bool)

(declare-fun res!973601 () Bool)

(assert (=> b!2277999 (=> (not res!973601) (not e!1459083))))

(assert (=> b!2277999 (= res!973601 (= (value!136968 (_1!15905 (get!8161 lt!845869))) (apply!6603 (transformation!4321 (rule!6645 (_1!15905 (get!8161 lt!845869)))) (seqFromList!3025 (originalCharacters!5091 (_1!15905 (get!8161 lt!845869)))))))))

(declare-fun b!2278000 () Bool)

(assert (=> b!2278000 (= e!1459085 (matchR!2926 (regex!4321 (h!32479 rules!1750)) (_1!15911 (findLongestMatchInner!711 (regex!4321 (h!32479 rules!1750)) Nil!27075 (size!21280 Nil!27075) input!1722 input!1722 (size!21280 input!1722)))))))

(declare-fun b!2278001 () Bool)

(declare-fun res!973596 () Bool)

(assert (=> b!2278001 (=> (not res!973596) (not e!1459083))))

(assert (=> b!2278001 (= res!973596 (= (++!6609 (list!10532 (charsOf!2709 (_1!15905 (get!8161 lt!845869)))) (_2!15905 (get!8161 lt!845869))) input!1722))))

(assert (= (and d!674386 c!361645) b!2277997))

(assert (= (and d!674386 (not c!361645)) b!2277996))

(assert (= (and b!2277996 (not res!973599)) b!2278000))

(assert (= (and d!674386 (not res!973602)) b!2277993))

(assert (= (and b!2277993 res!973600) b!2278001))

(assert (= (and b!2278001 res!973596) b!2277994))

(assert (= (and b!2277994 res!973598) b!2277995))

(assert (= (and b!2277995 res!973597) b!2277999))

(assert (= (and b!2277999 res!973601) b!2277998))

(declare-fun m!2706459 () Bool)

(assert (=> b!2277996 m!2706459))

(declare-fun m!2706461 () Bool)

(assert (=> b!2277996 m!2706461))

(assert (=> b!2277996 m!2706461))

(declare-fun m!2706463 () Bool)

(assert (=> b!2277996 m!2706463))

(declare-fun m!2706465 () Bool)

(assert (=> b!2277996 m!2706465))

(assert (=> b!2277996 m!2705343))

(declare-fun m!2706467 () Bool)

(assert (=> b!2277996 m!2706467))

(assert (=> b!2277996 m!2706461))

(declare-fun m!2706469 () Bool)

(assert (=> b!2277996 m!2706469))

(assert (=> b!2277996 m!2706461))

(declare-fun m!2706471 () Bool)

(assert (=> b!2277996 m!2706471))

(assert (=> b!2277996 m!2706459))

(assert (=> b!2277996 m!2705343))

(declare-fun m!2706473 () Bool)

(assert (=> b!2277996 m!2706473))

(declare-fun m!2706475 () Bool)

(assert (=> b!2277993 m!2706475))

(declare-fun m!2706477 () Bool)

(assert (=> b!2277993 m!2706477))

(assert (=> b!2277993 m!2706477))

(declare-fun m!2706479 () Bool)

(assert (=> b!2277993 m!2706479))

(assert (=> b!2277993 m!2706479))

(declare-fun m!2706481 () Bool)

(assert (=> b!2277993 m!2706481))

(assert (=> b!2278000 m!2706459))

(assert (=> b!2278000 m!2705343))

(assert (=> b!2278000 m!2706459))

(assert (=> b!2278000 m!2705343))

(assert (=> b!2278000 m!2706473))

(declare-fun m!2706483 () Bool)

(assert (=> b!2278000 m!2706483))

(declare-fun m!2706485 () Bool)

(assert (=> d!674386 m!2706485))

(declare-fun m!2706487 () Bool)

(assert (=> d!674386 m!2706487))

(declare-fun m!2706489 () Bool)

(assert (=> d!674386 m!2706489))

(assert (=> d!674386 m!2706249))

(assert (=> b!2277995 m!2706475))

(assert (=> b!2277998 m!2706475))

(declare-fun m!2706491 () Bool)

(assert (=> b!2277998 m!2706491))

(assert (=> b!2278001 m!2706475))

(assert (=> b!2278001 m!2706477))

(assert (=> b!2278001 m!2706477))

(assert (=> b!2278001 m!2706479))

(assert (=> b!2278001 m!2706479))

(declare-fun m!2706493 () Bool)

(assert (=> b!2278001 m!2706493))

(assert (=> b!2277994 m!2706475))

(declare-fun m!2706495 () Bool)

(assert (=> b!2277994 m!2706495))

(assert (=> b!2277994 m!2705343))

(assert (=> b!2277999 m!2706475))

(declare-fun m!2706497 () Bool)

(assert (=> b!2277999 m!2706497))

(assert (=> b!2277999 m!2706497))

(declare-fun m!2706499 () Bool)

(assert (=> b!2277999 m!2706499))

(assert (=> bm!136329 d!674386))

(assert (=> b!2277397 d!674368))

(assert (=> b!2277397 d!674370))

(declare-fun b!2278027 () Bool)

(declare-fun e!1459101 () List!27171)

(declare-fun list!10540 (IArray!17587) List!27171)

(assert (=> b!2278027 (= e!1459101 (list!10540 (xs!11733 (c!361428 (_1!15906 lt!845433)))))))

(declare-fun b!2278026 () Bool)

(declare-fun e!1459100 () List!27171)

(assert (=> b!2278026 (= e!1459100 e!1459101)))

(declare-fun c!361657 () Bool)

(assert (=> b!2278026 (= c!361657 ((_ is Leaf!12937) (c!361428 (_1!15906 lt!845433))))))

(declare-fun b!2278028 () Bool)

(assert (=> b!2278028 (= e!1459101 (++!6610 (list!10537 (left!20544 (c!361428 (_1!15906 lt!845433)))) (list!10537 (right!20874 (c!361428 (_1!15906 lt!845433))))))))

(declare-fun d!674442 () Bool)

(declare-fun c!361656 () Bool)

(assert (=> d!674442 (= c!361656 ((_ is Empty!8791) (c!361428 (_1!15906 lt!845433))))))

(assert (=> d!674442 (= (list!10537 (c!361428 (_1!15906 lt!845433))) e!1459100)))

(declare-fun b!2278025 () Bool)

(assert (=> b!2278025 (= e!1459100 Nil!27077)))

(assert (= (and d!674442 c!361656) b!2278025))

(assert (= (and d!674442 (not c!361656)) b!2278026))

(assert (= (and b!2278026 c!361657) b!2278027))

(assert (= (and b!2278026 (not c!361657)) b!2278028))

(declare-fun m!2706525 () Bool)

(assert (=> b!2278027 m!2706525))

(declare-fun m!2706527 () Bool)

(assert (=> b!2278028 m!2706527))

(declare-fun m!2706529 () Bool)

(assert (=> b!2278028 m!2706529))

(assert (=> b!2278028 m!2706527))

(assert (=> b!2278028 m!2706529))

(declare-fun m!2706531 () Bool)

(assert (=> b!2278028 m!2706531))

(assert (=> d!674016 d!674442))

(declare-fun d!674460 () Bool)

(declare-fun e!1459107 () Bool)

(assert (=> d!674460 e!1459107))

(declare-fun res!973617 () Bool)

(assert (=> d!674460 (=> (not res!973617) (not e!1459107))))

(declare-fun lt!845887 () BalanceConc!17308)

(assert (=> d!674460 (= res!973617 (= (list!10532 lt!845887) input!1722))))

(declare-fun fromList!532 (List!27169) Conc!8790)

(assert (=> d!674460 (= lt!845887 (BalanceConc!17309 (fromList!532 input!1722)))))

(assert (=> d!674460 (= (fromListB!1354 input!1722) lt!845887)))

(declare-fun b!2278040 () Bool)

(assert (=> b!2278040 (= e!1459107 (isBalanced!2675 (fromList!532 input!1722)))))

(assert (= (and d!674460 res!973617) b!2278040))

(declare-fun m!2706561 () Bool)

(assert (=> d!674460 m!2706561))

(declare-fun m!2706563 () Bool)

(assert (=> d!674460 m!2706563))

(assert (=> b!2278040 m!2706563))

(assert (=> b!2278040 m!2706563))

(declare-fun m!2706565 () Bool)

(assert (=> b!2278040 m!2706565))

(assert (=> d!674090 d!674460))

(assert (=> d!674124 d!674298))

(declare-fun d!674464 () Bool)

(declare-fun lt!845890 () Bool)

(assert (=> d!674464 (= lt!845890 (isEmpty!15360 (list!10533 (_1!15906 lt!845512))))))

(declare-fun isEmpty!15368 (Conc!8791) Bool)

(assert (=> d!674464 (= lt!845890 (isEmpty!15368 (c!361428 (_1!15906 lt!845512))))))

(assert (=> d!674464 (= (isEmpty!15365 (_1!15906 lt!845512)) lt!845890)))

(declare-fun bs!456480 () Bool)

(assert (= bs!456480 d!674464))

(assert (=> bs!456480 m!2705583))

(assert (=> bs!456480 m!2705583))

(declare-fun m!2706571 () Bool)

(assert (=> bs!456480 m!2706571))

(declare-fun m!2706573 () Bool)

(assert (=> bs!456480 m!2706573))

(assert (=> b!2277267 d!674464))

(declare-fun bs!456481 () Bool)

(declare-fun d!674470 () Bool)

(assert (= bs!456481 (and d!674470 d!674234)))

(declare-fun lambda!85643 () Int)

(assert (=> bs!456481 (= (and (= (toChars!5958 (transformation!4321 (rule!6645 (h!32478 tokens!456)))) (toChars!5958 (transformation!4321 r!2363))) (= (toValue!6099 (transformation!4321 (rule!6645 (h!32478 tokens!456)))) (toValue!6099 (transformation!4321 r!2363)))) (= lambda!85643 lambda!85623))))

(declare-fun bs!456482 () Bool)

(assert (= bs!456482 (and d!674470 d!674332)))

(assert (=> bs!456482 (= (and (= (toChars!5958 (transformation!4321 (rule!6645 (h!32478 tokens!456)))) (toChars!5958 (transformation!4321 otherR!12))) (= (toValue!6099 (transformation!4321 (rule!6645 (h!32478 tokens!456)))) (toValue!6099 (transformation!4321 otherR!12)))) (= lambda!85643 lambda!85629))))

(assert (=> d!674470 true))

(assert (=> d!674470 (< (dynLambda!11759 order!15117 (toChars!5958 (transformation!4321 (rule!6645 (h!32478 tokens!456))))) (dynLambda!11760 order!15119 lambda!85643))))

(assert (=> d!674470 true))

(assert (=> d!674470 (< (dynLambda!11756 order!15113 (toValue!6099 (transformation!4321 (rule!6645 (h!32478 tokens!456))))) (dynLambda!11760 order!15119 lambda!85643))))

(assert (=> d!674470 (= (semiInverseModEq!1744 (toChars!5958 (transformation!4321 (rule!6645 (h!32478 tokens!456)))) (toValue!6099 (transformation!4321 (rule!6645 (h!32478 tokens!456))))) (Forall!1084 lambda!85643))))

(declare-fun bs!456484 () Bool)

(assert (= bs!456484 d!674470))

(declare-fun m!2706577 () Bool)

(assert (=> bs!456484 m!2706577))

(assert (=> d!674014 d!674470))

(declare-fun b!2278043 () Bool)

(declare-fun e!1459110 () List!27169)

(assert (=> b!2278043 (= e!1459110 (_2!15905 (get!8161 lt!845544)))))

(declare-fun b!2278046 () Bool)

(declare-fun e!1459109 () Bool)

(declare-fun lt!845891 () List!27169)

(assert (=> b!2278046 (= e!1459109 (or (not (= (_2!15905 (get!8161 lt!845544)) Nil!27075)) (= lt!845891 (list!10532 (charsOf!2709 (_1!15905 (get!8161 lt!845544)))))))))

(declare-fun b!2278045 () Bool)

(declare-fun res!973621 () Bool)

(assert (=> b!2278045 (=> (not res!973621) (not e!1459109))))

(assert (=> b!2278045 (= res!973621 (= (size!21280 lt!845891) (+ (size!21280 (list!10532 (charsOf!2709 (_1!15905 (get!8161 lt!845544))))) (size!21280 (_2!15905 (get!8161 lt!845544))))))))

(declare-fun b!2278044 () Bool)

(assert (=> b!2278044 (= e!1459110 (Cons!27075 (h!32476 (list!10532 (charsOf!2709 (_1!15905 (get!8161 lt!845544))))) (++!6609 (t!203163 (list!10532 (charsOf!2709 (_1!15905 (get!8161 lt!845544))))) (_2!15905 (get!8161 lt!845544)))))))

(declare-fun d!674474 () Bool)

(assert (=> d!674474 e!1459109))

(declare-fun res!973620 () Bool)

(assert (=> d!674474 (=> (not res!973620) (not e!1459109))))

(assert (=> d!674474 (= res!973620 (= (content!3614 lt!845891) ((_ map or) (content!3614 (list!10532 (charsOf!2709 (_1!15905 (get!8161 lt!845544))))) (content!3614 (_2!15905 (get!8161 lt!845544))))))))

(assert (=> d!674474 (= lt!845891 e!1459110)))

(declare-fun c!361660 () Bool)

(assert (=> d!674474 (= c!361660 ((_ is Nil!27075) (list!10532 (charsOf!2709 (_1!15905 (get!8161 lt!845544))))))))

(assert (=> d!674474 (= (++!6609 (list!10532 (charsOf!2709 (_1!15905 (get!8161 lt!845544)))) (_2!15905 (get!8161 lt!845544))) lt!845891)))

(assert (= (and d!674474 c!361660) b!2278043))

(assert (= (and d!674474 (not c!361660)) b!2278044))

(assert (= (and d!674474 res!973620) b!2278045))

(assert (= (and b!2278045 res!973621) b!2278046))

(declare-fun m!2706579 () Bool)

(assert (=> b!2278045 m!2706579))

(assert (=> b!2278045 m!2705665))

(declare-fun m!2706581 () Bool)

(assert (=> b!2278045 m!2706581))

(assert (=> b!2278045 m!2705661))

(declare-fun m!2706583 () Bool)

(assert (=> b!2278044 m!2706583))

(declare-fun m!2706585 () Bool)

(assert (=> d!674474 m!2706585))

(assert (=> d!674474 m!2705665))

(declare-fun m!2706587 () Bool)

(assert (=> d!674474 m!2706587))

(declare-fun m!2706589 () Bool)

(assert (=> d!674474 m!2706589))

(assert (=> b!2277425 d!674474))

(assert (=> b!2277425 d!674280))

(assert (=> b!2277425 d!674282))

(assert (=> b!2277425 d!674228))

(assert (=> b!2277427 d!674280))

(assert (=> b!2277427 d!674282))

(assert (=> b!2277427 d!674228))

(declare-fun b!2278050 () Bool)

(declare-fun e!1459114 () Bool)

(assert (=> b!2278050 (= e!1459114 (isPrefix!2311 (tail!3285 (tail!3285 lt!845428)) (tail!3285 (tail!3285 lt!845429))))))

(declare-fun b!2278048 () Bool)

(declare-fun e!1459112 () Bool)

(assert (=> b!2278048 (= e!1459112 e!1459114)))

(declare-fun res!973624 () Bool)

(assert (=> b!2278048 (=> (not res!973624) (not e!1459114))))

(assert (=> b!2278048 (= res!973624 (not ((_ is Nil!27075) (tail!3285 lt!845429))))))

(declare-fun d!674476 () Bool)

(declare-fun e!1459113 () Bool)

(assert (=> d!674476 e!1459113))

(declare-fun res!973625 () Bool)

(assert (=> d!674476 (=> res!973625 e!1459113)))

(declare-fun lt!845892 () Bool)

(assert (=> d!674476 (= res!973625 (not lt!845892))))

(assert (=> d!674476 (= lt!845892 e!1459112)))

(declare-fun res!973622 () Bool)

(assert (=> d!674476 (=> res!973622 e!1459112)))

(assert (=> d!674476 (= res!973622 ((_ is Nil!27075) (tail!3285 lt!845428)))))

(assert (=> d!674476 (= (isPrefix!2311 (tail!3285 lt!845428) (tail!3285 lt!845429)) lt!845892)))

(declare-fun b!2278051 () Bool)

(assert (=> b!2278051 (= e!1459113 (>= (size!21280 (tail!3285 lt!845429)) (size!21280 (tail!3285 lt!845428))))))

(declare-fun b!2278049 () Bool)

(declare-fun res!973623 () Bool)

(assert (=> b!2278049 (=> (not res!973623) (not e!1459114))))

(assert (=> b!2278049 (= res!973623 (= (head!4926 (tail!3285 lt!845428)) (head!4926 (tail!3285 lt!845429))))))

(assert (= (and d!674476 (not res!973622)) b!2278048))

(assert (= (and b!2278048 res!973624) b!2278049))

(assert (= (and b!2278049 res!973623) b!2278050))

(assert (= (and d!674476 (not res!973625)) b!2278051))

(assert (=> b!2278050 m!2705309))

(assert (=> b!2278050 m!2706255))

(assert (=> b!2278050 m!2705311))

(declare-fun m!2706597 () Bool)

(assert (=> b!2278050 m!2706597))

(assert (=> b!2278050 m!2706255))

(assert (=> b!2278050 m!2706597))

(declare-fun m!2706601 () Bool)

(assert (=> b!2278050 m!2706601))

(assert (=> b!2278051 m!2705311))

(declare-fun m!2706603 () Bool)

(assert (=> b!2278051 m!2706603))

(assert (=> b!2278051 m!2705309))

(assert (=> b!2278051 m!2706259))

(assert (=> b!2278049 m!2705309))

(assert (=> b!2278049 m!2706261))

(assert (=> b!2278049 m!2705311))

(declare-fun m!2706609 () Bool)

(assert (=> b!2278049 m!2706609))

(assert (=> b!2277029 d!674476))

(assert (=> b!2277029 d!674324))

(declare-fun d!674480 () Bool)

(assert (=> d!674480 (= (tail!3285 lt!845429) (t!203163 lt!845429))))

(assert (=> b!2277029 d!674480))

(declare-fun b!2278057 () Bool)

(declare-fun e!1459118 () List!27169)

(declare-fun e!1459119 () List!27169)

(assert (=> b!2278057 (= e!1459118 e!1459119)))

(declare-fun c!361662 () Bool)

(assert (=> b!2278057 (= c!361662 ((_ is Leaf!12936) (c!361426 (_2!15906 lt!845433))))))

(declare-fun b!2278058 () Bool)

(assert (=> b!2278058 (= e!1459119 (list!10538 (xs!11732 (c!361426 (_2!15906 lt!845433)))))))

(declare-fun b!2278059 () Bool)

(assert (=> b!2278059 (= e!1459119 (++!6609 (list!10535 (left!20543 (c!361426 (_2!15906 lt!845433)))) (list!10535 (right!20873 (c!361426 (_2!15906 lt!845433))))))))

(declare-fun b!2278056 () Bool)

(assert (=> b!2278056 (= e!1459118 Nil!27075)))

(declare-fun d!674482 () Bool)

(declare-fun c!361661 () Bool)

(assert (=> d!674482 (= c!361661 ((_ is Empty!8790) (c!361426 (_2!15906 lt!845433))))))

(assert (=> d!674482 (= (list!10535 (c!361426 (_2!15906 lt!845433))) e!1459118)))

(assert (= (and d!674482 c!361661) b!2278056))

(assert (= (and d!674482 (not c!361661)) b!2278057))

(assert (= (and b!2278057 c!361662) b!2278058))

(assert (= (and b!2278057 (not c!361662)) b!2278059))

(declare-fun m!2706611 () Bool)

(assert (=> b!2278058 m!2706611))

(declare-fun m!2706613 () Bool)

(assert (=> b!2278059 m!2706613))

(declare-fun m!2706615 () Bool)

(assert (=> b!2278059 m!2706615))

(assert (=> b!2278059 m!2706613))

(assert (=> b!2278059 m!2706615))

(declare-fun m!2706619 () Bool)

(assert (=> b!2278059 m!2706619))

(assert (=> d!674020 d!674482))

(declare-fun bs!456485 () Bool)

(declare-fun d!674484 () Bool)

(assert (= bs!456485 (and d!674484 d!674234)))

(declare-fun lambda!85644 () Int)

(assert (=> bs!456485 (= (and (= (toChars!5958 (transformation!4321 (h!32479 rules!1750))) (toChars!5958 (transformation!4321 r!2363))) (= (toValue!6099 (transformation!4321 (h!32479 rules!1750))) (toValue!6099 (transformation!4321 r!2363)))) (= lambda!85644 lambda!85623))))

(declare-fun bs!456487 () Bool)

(assert (= bs!456487 (and d!674484 d!674332)))

(assert (=> bs!456487 (= (and (= (toChars!5958 (transformation!4321 (h!32479 rules!1750))) (toChars!5958 (transformation!4321 otherR!12))) (= (toValue!6099 (transformation!4321 (h!32479 rules!1750))) (toValue!6099 (transformation!4321 otherR!12)))) (= lambda!85644 lambda!85629))))

(declare-fun bs!456489 () Bool)

(assert (= bs!456489 (and d!674484 d!674470)))

(assert (=> bs!456489 (= (and (= (toChars!5958 (transformation!4321 (h!32479 rules!1750))) (toChars!5958 (transformation!4321 (rule!6645 (h!32478 tokens!456))))) (= (toValue!6099 (transformation!4321 (h!32479 rules!1750))) (toValue!6099 (transformation!4321 (rule!6645 (h!32478 tokens!456)))))) (= lambda!85644 lambda!85643))))

(assert (=> d!674484 true))

(assert (=> d!674484 (< (dynLambda!11759 order!15117 (toChars!5958 (transformation!4321 (h!32479 rules!1750)))) (dynLambda!11760 order!15119 lambda!85644))))

(assert (=> d!674484 true))

(assert (=> d!674484 (< (dynLambda!11756 order!15113 (toValue!6099 (transformation!4321 (h!32479 rules!1750)))) (dynLambda!11760 order!15119 lambda!85644))))

(assert (=> d!674484 (= (semiInverseModEq!1744 (toChars!5958 (transformation!4321 (h!32479 rules!1750))) (toValue!6099 (transformation!4321 (h!32479 rules!1750)))) (Forall!1084 lambda!85644))))

(declare-fun bs!456491 () Bool)

(assert (= bs!456491 d!674484))

(declare-fun m!2706621 () Bool)

(assert (=> bs!456491 m!2706621))

(assert (=> d!674114 d!674484))

(declare-fun b!2278060 () Bool)

(declare-fun e!1459120 () Bool)

(assert (=> b!2278060 (= e!1459120 (not (= (head!4926 (tail!3285 (list!10532 (charsOf!2709 (head!4924 tokens!456))))) (c!361427 (derivativeStep!1502 (regex!4321 r!2363) (head!4926 (list!10532 (charsOf!2709 (head!4924 tokens!456)))))))))))

(declare-fun b!2278061 () Bool)

(declare-fun e!1459123 () Bool)

(assert (=> b!2278061 (= e!1459123 (matchR!2926 (derivativeStep!1502 (derivativeStep!1502 (regex!4321 r!2363) (head!4926 (list!10532 (charsOf!2709 (head!4924 tokens!456))))) (head!4926 (tail!3285 (list!10532 (charsOf!2709 (head!4924 tokens!456)))))) (tail!3285 (tail!3285 (list!10532 (charsOf!2709 (head!4924 tokens!456)))))))))

(declare-fun b!2278062 () Bool)

(declare-fun e!1459125 () Bool)

(declare-fun lt!845894 () Bool)

(declare-fun call!136375 () Bool)

(assert (=> b!2278062 (= e!1459125 (= lt!845894 call!136375))))

(declare-fun b!2278063 () Bool)

(declare-fun e!1459124 () Bool)

(declare-fun e!1459121 () Bool)

(assert (=> b!2278063 (= e!1459124 e!1459121)))

(declare-fun res!973632 () Bool)

(assert (=> b!2278063 (=> (not res!973632) (not e!1459121))))

(assert (=> b!2278063 (= res!973632 (not lt!845894))))

(declare-fun b!2278064 () Bool)

(declare-fun res!973631 () Bool)

(declare-fun e!1459126 () Bool)

(assert (=> b!2278064 (=> (not res!973631) (not e!1459126))))

(assert (=> b!2278064 (= res!973631 (not call!136375))))

(declare-fun b!2278065 () Bool)

(declare-fun res!973633 () Bool)

(assert (=> b!2278065 (=> (not res!973633) (not e!1459126))))

(assert (=> b!2278065 (= res!973633 (isEmpty!15362 (tail!3285 (tail!3285 (list!10532 (charsOf!2709 (head!4924 tokens!456)))))))))

(declare-fun b!2278066 () Bool)

(declare-fun res!973634 () Bool)

(assert (=> b!2278066 (=> res!973634 e!1459124)))

(assert (=> b!2278066 (= res!973634 e!1459126)))

(declare-fun res!973636 () Bool)

(assert (=> b!2278066 (=> (not res!973636) (not e!1459126))))

(assert (=> b!2278066 (= res!973636 lt!845894)))

(declare-fun d!674488 () Bool)

(assert (=> d!674488 e!1459125))

(declare-fun c!361663 () Bool)

(assert (=> d!674488 (= c!361663 ((_ is EmptyExpr!6669) (derivativeStep!1502 (regex!4321 r!2363) (head!4926 (list!10532 (charsOf!2709 (head!4924 tokens!456)))))))))

(assert (=> d!674488 (= lt!845894 e!1459123)))

(declare-fun c!361664 () Bool)

(assert (=> d!674488 (= c!361664 (isEmpty!15362 (tail!3285 (list!10532 (charsOf!2709 (head!4924 tokens!456))))))))

(assert (=> d!674488 (validRegex!2504 (derivativeStep!1502 (regex!4321 r!2363) (head!4926 (list!10532 (charsOf!2709 (head!4924 tokens!456))))))))

(assert (=> d!674488 (= (matchR!2926 (derivativeStep!1502 (regex!4321 r!2363) (head!4926 (list!10532 (charsOf!2709 (head!4924 tokens!456))))) (tail!3285 (list!10532 (charsOf!2709 (head!4924 tokens!456))))) lt!845894)))

(declare-fun b!2278067 () Bool)

(assert (=> b!2278067 (= e!1459121 e!1459120)))

(declare-fun res!973630 () Bool)

(assert (=> b!2278067 (=> res!973630 e!1459120)))

(assert (=> b!2278067 (= res!973630 call!136375)))

(declare-fun bm!136370 () Bool)

(assert (=> bm!136370 (= call!136375 (isEmpty!15362 (tail!3285 (list!10532 (charsOf!2709 (head!4924 tokens!456))))))))

(declare-fun b!2278068 () Bool)

(declare-fun e!1459122 () Bool)

(assert (=> b!2278068 (= e!1459125 e!1459122)))

(declare-fun c!361665 () Bool)

(assert (=> b!2278068 (= c!361665 ((_ is EmptyLang!6669) (derivativeStep!1502 (regex!4321 r!2363) (head!4926 (list!10532 (charsOf!2709 (head!4924 tokens!456)))))))))

(declare-fun b!2278069 () Bool)

(assert (=> b!2278069 (= e!1459123 (nullable!1842 (derivativeStep!1502 (regex!4321 r!2363) (head!4926 (list!10532 (charsOf!2709 (head!4924 tokens!456)))))))))

(declare-fun b!2278070 () Bool)

(assert (=> b!2278070 (= e!1459122 (not lt!845894))))

(declare-fun b!2278071 () Bool)

(declare-fun res!973637 () Bool)

(assert (=> b!2278071 (=> res!973637 e!1459124)))

(assert (=> b!2278071 (= res!973637 (not ((_ is ElementMatch!6669) (derivativeStep!1502 (regex!4321 r!2363) (head!4926 (list!10532 (charsOf!2709 (head!4924 tokens!456))))))))))

(assert (=> b!2278071 (= e!1459122 e!1459124)))

(declare-fun b!2278072 () Bool)

(declare-fun res!973635 () Bool)

(assert (=> b!2278072 (=> res!973635 e!1459120)))

(assert (=> b!2278072 (= res!973635 (not (isEmpty!15362 (tail!3285 (tail!3285 (list!10532 (charsOf!2709 (head!4924 tokens!456))))))))))

(declare-fun b!2278073 () Bool)

(assert (=> b!2278073 (= e!1459126 (= (head!4926 (tail!3285 (list!10532 (charsOf!2709 (head!4924 tokens!456))))) (c!361427 (derivativeStep!1502 (regex!4321 r!2363) (head!4926 (list!10532 (charsOf!2709 (head!4924 tokens!456))))))))))

(assert (= (and d!674488 c!361664) b!2278069))

(assert (= (and d!674488 (not c!361664)) b!2278061))

(assert (= (and d!674488 c!361663) b!2278062))

(assert (= (and d!674488 (not c!361663)) b!2278068))

(assert (= (and b!2278068 c!361665) b!2278070))

(assert (= (and b!2278068 (not c!361665)) b!2278071))

(assert (= (and b!2278071 (not res!973637)) b!2278066))

(assert (= (and b!2278066 res!973636) b!2278064))

(assert (= (and b!2278064 res!973631) b!2278065))

(assert (= (and b!2278065 res!973633) b!2278073))

(assert (= (and b!2278066 (not res!973634)) b!2278063))

(assert (= (and b!2278063 res!973632) b!2278067))

(assert (= (and b!2278067 (not res!973630)) b!2278072))

(assert (= (and b!2278072 (not res!973635)) b!2278060))

(assert (= (or b!2278062 b!2278064 b!2278067) bm!136370))

(assert (=> b!2278065 m!2705637))

(declare-fun m!2706629 () Bool)

(assert (=> b!2278065 m!2706629))

(assert (=> b!2278065 m!2706629))

(declare-fun m!2706631 () Bool)

(assert (=> b!2278065 m!2706631))

(assert (=> b!2278061 m!2705637))

(declare-fun m!2706633 () Bool)

(assert (=> b!2278061 m!2706633))

(assert (=> b!2278061 m!2705643))

(assert (=> b!2278061 m!2706633))

(declare-fun m!2706635 () Bool)

(assert (=> b!2278061 m!2706635))

(assert (=> b!2278061 m!2705637))

(assert (=> b!2278061 m!2706629))

(assert (=> b!2278061 m!2706635))

(assert (=> b!2278061 m!2706629))

(declare-fun m!2706645 () Bool)

(assert (=> b!2278061 m!2706645))

(assert (=> b!2278073 m!2705637))

(assert (=> b!2278073 m!2706633))

(assert (=> b!2278060 m!2705637))

(assert (=> b!2278060 m!2706633))

(assert (=> d!674488 m!2705637))

(assert (=> d!674488 m!2705639))

(assert (=> d!674488 m!2705643))

(declare-fun m!2706649 () Bool)

(assert (=> d!674488 m!2706649))

(assert (=> bm!136370 m!2705637))

(assert (=> bm!136370 m!2705639))

(assert (=> b!2278069 m!2705643))

(declare-fun m!2706653 () Bool)

(assert (=> b!2278069 m!2706653))

(assert (=> b!2278072 m!2705637))

(assert (=> b!2278072 m!2706629))

(assert (=> b!2278072 m!2706629))

(assert (=> b!2278072 m!2706631))

(assert (=> b!2277393 d!674488))

(declare-fun b!2278131 () Bool)

(declare-fun e!1459167 () Regex!6669)

(declare-fun e!1459164 () Regex!6669)

(assert (=> b!2278131 (= e!1459167 e!1459164)))

(declare-fun c!361682 () Bool)

(assert (=> b!2278131 (= c!361682 ((_ is ElementMatch!6669) (regex!4321 r!2363)))))

(declare-fun b!2278132 () Bool)

(declare-fun e!1459165 () Regex!6669)

(declare-fun call!136387 () Regex!6669)

(assert (=> b!2278132 (= e!1459165 (Union!6669 (Concat!11153 call!136387 (regTwo!13850 (regex!4321 r!2363))) EmptyLang!6669))))

(declare-fun b!2278133 () Bool)

(declare-fun c!361684 () Bool)

(assert (=> b!2278133 (= c!361684 (nullable!1842 (regOne!13850 (regex!4321 r!2363))))))

(declare-fun e!1459163 () Regex!6669)

(assert (=> b!2278133 (= e!1459163 e!1459165)))

(declare-fun b!2278134 () Bool)

(declare-fun e!1459166 () Regex!6669)

(declare-fun call!136388 () Regex!6669)

(declare-fun call!136386 () Regex!6669)

(assert (=> b!2278134 (= e!1459166 (Union!6669 call!136388 call!136386))))

(declare-fun c!361683 () Bool)

(declare-fun bm!136380 () Bool)

(assert (=> bm!136380 (= call!136388 (derivativeStep!1502 (ite c!361683 (regOne!13851 (regex!4321 r!2363)) (regTwo!13850 (regex!4321 r!2363))) (head!4926 (list!10532 (charsOf!2709 (head!4924 tokens!456))))))))

(declare-fun b!2278136 () Bool)

(assert (=> b!2278136 (= e!1459165 (Union!6669 (Concat!11153 call!136387 (regTwo!13850 (regex!4321 r!2363))) call!136388))))

(declare-fun b!2278137 () Bool)

(declare-fun call!136385 () Regex!6669)

(assert (=> b!2278137 (= e!1459163 (Concat!11153 call!136385 (regex!4321 r!2363)))))

(declare-fun b!2278138 () Bool)

(assert (=> b!2278138 (= e!1459164 (ite (= (head!4926 (list!10532 (charsOf!2709 (head!4924 tokens!456)))) (c!361427 (regex!4321 r!2363))) EmptyExpr!6669 EmptyLang!6669))))

(declare-fun c!361686 () Bool)

(declare-fun bm!136381 () Bool)

(assert (=> bm!136381 (= call!136386 (derivativeStep!1502 (ite c!361683 (regTwo!13851 (regex!4321 r!2363)) (ite c!361686 (reg!6998 (regex!4321 r!2363)) (regOne!13850 (regex!4321 r!2363)))) (head!4926 (list!10532 (charsOf!2709 (head!4924 tokens!456))))))))

(declare-fun b!2278139 () Bool)

(assert (=> b!2278139 (= e!1459167 EmptyLang!6669)))

(declare-fun b!2278140 () Bool)

(assert (=> b!2278140 (= e!1459166 e!1459163)))

(assert (=> b!2278140 (= c!361686 ((_ is Star!6669) (regex!4321 r!2363)))))

(declare-fun b!2278135 () Bool)

(assert (=> b!2278135 (= c!361683 ((_ is Union!6669) (regex!4321 r!2363)))))

(assert (=> b!2278135 (= e!1459164 e!1459166)))

(declare-fun d!674496 () Bool)

(declare-fun lt!845906 () Regex!6669)

(assert (=> d!674496 (validRegex!2504 lt!845906)))

(assert (=> d!674496 (= lt!845906 e!1459167)))

(declare-fun c!361685 () Bool)

(assert (=> d!674496 (= c!361685 (or ((_ is EmptyExpr!6669) (regex!4321 r!2363)) ((_ is EmptyLang!6669) (regex!4321 r!2363))))))

(assert (=> d!674496 (validRegex!2504 (regex!4321 r!2363))))

(assert (=> d!674496 (= (derivativeStep!1502 (regex!4321 r!2363) (head!4926 (list!10532 (charsOf!2709 (head!4924 tokens!456))))) lt!845906)))

(declare-fun bm!136382 () Bool)

(assert (=> bm!136382 (= call!136387 call!136385)))

(declare-fun bm!136383 () Bool)

(assert (=> bm!136383 (= call!136385 call!136386)))

(assert (= (and d!674496 c!361685) b!2278139))

(assert (= (and d!674496 (not c!361685)) b!2278131))

(assert (= (and b!2278131 c!361682) b!2278138))

(assert (= (and b!2278131 (not c!361682)) b!2278135))

(assert (= (and b!2278135 c!361683) b!2278134))

(assert (= (and b!2278135 (not c!361683)) b!2278140))

(assert (= (and b!2278140 c!361686) b!2278137))

(assert (= (and b!2278140 (not c!361686)) b!2278133))

(assert (= (and b!2278133 c!361684) b!2278136))

(assert (= (and b!2278133 (not c!361684)) b!2278132))

(assert (= (or b!2278136 b!2278132) bm!136382))

(assert (= (or b!2278137 bm!136382) bm!136383))

(assert (= (or b!2278134 b!2278136) bm!136380))

(assert (= (or b!2278134 bm!136383) bm!136381))

(declare-fun m!2706683 () Bool)

(assert (=> b!2278133 m!2706683))

(assert (=> bm!136380 m!2705641))

(declare-fun m!2706685 () Bool)

(assert (=> bm!136380 m!2706685))

(assert (=> bm!136381 m!2705641))

(declare-fun m!2706687 () Bool)

(assert (=> bm!136381 m!2706687))

(declare-fun m!2706689 () Bool)

(assert (=> d!674496 m!2706689))

(assert (=> d!674496 m!2705649))

(assert (=> b!2277393 d!674496))

(assert (=> b!2277393 d!674242))

(assert (=> b!2277393 d!674370))

(assert (=> b!2277443 d!674360))

(assert (=> b!2277443 d!674100))

(assert (=> b!2277062 d!674290))

(assert (=> b!2277062 d!674214))

(assert (=> b!2277064 d!674360))

(assert (=> b!2277064 d!674218))

(declare-fun d!674522 () Bool)

(assert (=> d!674522 (= (inv!36659 (dynLambda!11755 (toChars!5958 (transformation!4321 (rule!6645 (h!32478 tokens!456)))) (value!136968 (h!32478 tokens!456)))) (isBalanced!2675 (c!361426 (dynLambda!11755 (toChars!5958 (transformation!4321 (rule!6645 (h!32478 tokens!456)))) (value!136968 (h!32478 tokens!456))))))))

(declare-fun bs!456496 () Bool)

(assert (= bs!456496 d!674522))

(declare-fun m!2706691 () Bool)

(assert (=> bs!456496 m!2706691))

(assert (=> tb!135263 d!674522))

(declare-fun d!674524 () Bool)

(declare-fun charsToInt!0 (List!27170) (_ BitVec 32))

(assert (=> d!674524 (= (inv!16 (value!136968 (h!32478 tokens!456))) (= (charsToInt!0 (text!31828 (value!136968 (h!32478 tokens!456)))) (value!136959 (value!136968 (h!32478 tokens!456)))))))

(declare-fun bs!456497 () Bool)

(assert (= bs!456497 d!674524))

(declare-fun m!2706693 () Bool)

(assert (=> bs!456497 m!2706693))

(assert (=> b!2277015 d!674524))

(declare-fun d!674526 () Bool)

(declare-fun lt!845911 () Int)

(assert (=> d!674526 (>= lt!845911 0)))

(declare-fun e!1459169 () Int)

(assert (=> d!674526 (= lt!845911 e!1459169)))

(declare-fun c!361688 () Bool)

(assert (=> d!674526 (= c!361688 ((_ is Nil!27075) (list!10532 (charsOf!2709 (head!4924 tokens!456)))))))

(assert (=> d!674526 (= (size!21280 (list!10532 (charsOf!2709 (head!4924 tokens!456)))) lt!845911)))

(declare-fun b!2278143 () Bool)

(assert (=> b!2278143 (= e!1459169 0)))

(declare-fun b!2278144 () Bool)

(assert (=> b!2278144 (= e!1459169 (+ 1 (size!21280 (t!203163 (list!10532 (charsOf!2709 (head!4924 tokens!456)))))))))

(assert (= (and d!674526 c!361688) b!2278143))

(assert (= (and d!674526 (not c!361688)) b!2278144))

(declare-fun m!2706697 () Bool)

(assert (=> b!2278144 m!2706697))

(assert (=> d!674096 d!674526))

(assert (=> d!674096 d!674118))

(declare-fun d!674530 () Bool)

(declare-fun lt!845914 () Int)

(assert (=> d!674530 (= lt!845914 (size!21280 (list!10535 (c!361426 (charsOf!2709 (head!4924 tokens!456))))))))

(assert (=> d!674530 (= lt!845914 (ite ((_ is Empty!8790) (c!361426 (charsOf!2709 (head!4924 tokens!456)))) 0 (ite ((_ is Leaf!12936) (c!361426 (charsOf!2709 (head!4924 tokens!456)))) (csize!17811 (c!361426 (charsOf!2709 (head!4924 tokens!456)))) (csize!17810 (c!361426 (charsOf!2709 (head!4924 tokens!456)))))))))

(assert (=> d!674530 (= (size!21283 (c!361426 (charsOf!2709 (head!4924 tokens!456)))) lt!845914)))

(declare-fun bs!456499 () Bool)

(assert (= bs!456499 d!674530))

(assert (=> bs!456499 m!2705653))

(assert (=> bs!456499 m!2705653))

(declare-fun m!2706699 () Bool)

(assert (=> bs!456499 m!2706699))

(assert (=> d!674096 d!674530))

(declare-fun b!2278165 () Bool)

(declare-fun tp!721571 () Bool)

(declare-fun tp!721572 () Bool)

(declare-fun e!1459181 () Bool)

(assert (=> b!2278165 (= e!1459181 (and (inv!36658 (left!20543 (c!361426 (dynLambda!11755 (toChars!5958 (transformation!4321 (rule!6645 (head!4924 tokens!456)))) (value!136968 (head!4924 tokens!456)))))) tp!721572 (inv!36658 (right!20873 (c!361426 (dynLambda!11755 (toChars!5958 (transformation!4321 (rule!6645 (head!4924 tokens!456)))) (value!136968 (head!4924 tokens!456)))))) tp!721571))))

(declare-fun b!2278167 () Bool)

(declare-fun e!1459180 () Bool)

(declare-fun tp!721570 () Bool)

(assert (=> b!2278167 (= e!1459180 tp!721570)))

(declare-fun b!2278166 () Bool)

(declare-fun inv!36664 (IArray!17585) Bool)

(assert (=> b!2278166 (= e!1459181 (and (inv!36664 (xs!11732 (c!361426 (dynLambda!11755 (toChars!5958 (transformation!4321 (rule!6645 (head!4924 tokens!456)))) (value!136968 (head!4924 tokens!456)))))) e!1459180))))

(assert (=> b!2277316 (= tp!721476 (and (inv!36658 (c!361426 (dynLambda!11755 (toChars!5958 (transformation!4321 (rule!6645 (head!4924 tokens!456)))) (value!136968 (head!4924 tokens!456))))) e!1459181))))

(assert (= (and b!2277316 ((_ is Node!8790) (c!361426 (dynLambda!11755 (toChars!5958 (transformation!4321 (rule!6645 (head!4924 tokens!456)))) (value!136968 (head!4924 tokens!456)))))) b!2278165))

(assert (= b!2278166 b!2278167))

(assert (= (and b!2277316 ((_ is Leaf!12936) (c!361426 (dynLambda!11755 (toChars!5958 (transformation!4321 (rule!6645 (head!4924 tokens!456)))) (value!136968 (head!4924 tokens!456)))))) b!2278166))

(declare-fun m!2706711 () Bool)

(assert (=> b!2278165 m!2706711))

(declare-fun m!2706713 () Bool)

(assert (=> b!2278165 m!2706713))

(declare-fun m!2706715 () Bool)

(assert (=> b!2278166 m!2706715))

(assert (=> b!2277316 m!2705599))

(declare-fun tp!721575 () Bool)

(declare-fun tp!721574 () Bool)

(declare-fun e!1459185 () Bool)

(declare-fun b!2278172 () Bool)

(assert (=> b!2278172 (= e!1459185 (and (inv!36658 (left!20543 (c!361426 (dynLambda!11755 (toChars!5958 (transformation!4321 (rule!6645 (h!32478 tokens!456)))) (value!136968 (h!32478 tokens!456)))))) tp!721575 (inv!36658 (right!20873 (c!361426 (dynLambda!11755 (toChars!5958 (transformation!4321 (rule!6645 (h!32478 tokens!456)))) (value!136968 (h!32478 tokens!456)))))) tp!721574))))

(declare-fun b!2278174 () Bool)

(declare-fun e!1459184 () Bool)

(declare-fun tp!721573 () Bool)

(assert (=> b!2278174 (= e!1459184 tp!721573)))

(declare-fun b!2278173 () Bool)

(assert (=> b!2278173 (= e!1459185 (and (inv!36664 (xs!11732 (c!361426 (dynLambda!11755 (toChars!5958 (transformation!4321 (rule!6645 (h!32478 tokens!456)))) (value!136968 (h!32478 tokens!456)))))) e!1459184))))

(assert (=> b!2277003 (= tp!721428 (and (inv!36658 (c!361426 (dynLambda!11755 (toChars!5958 (transformation!4321 (rule!6645 (h!32478 tokens!456)))) (value!136968 (h!32478 tokens!456))))) e!1459185))))

(assert (= (and b!2277003 ((_ is Node!8790) (c!361426 (dynLambda!11755 (toChars!5958 (transformation!4321 (rule!6645 (h!32478 tokens!456)))) (value!136968 (h!32478 tokens!456)))))) b!2278172))

(assert (= b!2278173 b!2278174))

(assert (= (and b!2277003 ((_ is Leaf!12936) (c!361426 (dynLambda!11755 (toChars!5958 (transformation!4321 (rule!6645 (h!32478 tokens!456)))) (value!136968 (h!32478 tokens!456)))))) b!2278173))

(declare-fun m!2706719 () Bool)

(assert (=> b!2278172 m!2706719))

(declare-fun m!2706721 () Bool)

(assert (=> b!2278172 m!2706721))

(declare-fun m!2706723 () Bool)

(assert (=> b!2278173 m!2706723))

(assert (=> b!2277003 m!2705291))

(declare-fun b!2278177 () Bool)

(declare-fun e!1459188 () Bool)

(declare-fun tp!721576 () Bool)

(assert (=> b!2278177 (= e!1459188 (and tp_is_empty!10559 tp!721576))))

(assert (=> b!2277462 (= tp!721514 e!1459188)))

(assert (= (and b!2277462 ((_ is Cons!27075) (t!203163 (originalCharacters!5091 (h!32478 tokens!456))))) b!2278177))

(declare-fun b!2278181 () Bool)

(declare-fun e!1459189 () Bool)

(declare-fun tp!721578 () Bool)

(declare-fun tp!721577 () Bool)

(assert (=> b!2278181 (= e!1459189 (and tp!721578 tp!721577))))

(assert (=> b!2277495 (= tp!721551 e!1459189)))

(declare-fun b!2278178 () Bool)

(assert (=> b!2278178 (= e!1459189 tp_is_empty!10559)))

(declare-fun b!2278179 () Bool)

(declare-fun tp!721580 () Bool)

(declare-fun tp!721579 () Bool)

(assert (=> b!2278179 (= e!1459189 (and tp!721580 tp!721579))))

(declare-fun b!2278180 () Bool)

(declare-fun tp!721581 () Bool)

(assert (=> b!2278180 (= e!1459189 tp!721581)))

(assert (= (and b!2277495 ((_ is ElementMatch!6669) (regex!4321 (h!32479 (t!203166 rules!1750))))) b!2278178))

(assert (= (and b!2277495 ((_ is Concat!11153) (regex!4321 (h!32479 (t!203166 rules!1750))))) b!2278179))

(assert (= (and b!2277495 ((_ is Star!6669) (regex!4321 (h!32479 (t!203166 rules!1750))))) b!2278180))

(assert (= (and b!2277495 ((_ is Union!6669) (regex!4321 (h!32479 (t!203166 rules!1750))))) b!2278181))

(declare-fun b!2278185 () Bool)

(declare-fun e!1459190 () Bool)

(declare-fun tp!721583 () Bool)

(declare-fun tp!721582 () Bool)

(assert (=> b!2278185 (= e!1459190 (and tp!721583 tp!721582))))

(assert (=> b!2277474 (= tp!721528 e!1459190)))

(declare-fun b!2278182 () Bool)

(assert (=> b!2278182 (= e!1459190 tp_is_empty!10559)))

(declare-fun b!2278183 () Bool)

(declare-fun tp!721585 () Bool)

(declare-fun tp!721584 () Bool)

(assert (=> b!2278183 (= e!1459190 (and tp!721585 tp!721584))))

(declare-fun b!2278184 () Bool)

(declare-fun tp!721586 () Bool)

(assert (=> b!2278184 (= e!1459190 tp!721586)))

(assert (= (and b!2277474 ((_ is ElementMatch!6669) (regOne!13850 (regex!4321 r!2363)))) b!2278182))

(assert (= (and b!2277474 ((_ is Concat!11153) (regOne!13850 (regex!4321 r!2363)))) b!2278183))

(assert (= (and b!2277474 ((_ is Star!6669) (regOne!13850 (regex!4321 r!2363)))) b!2278184))

(assert (= (and b!2277474 ((_ is Union!6669) (regOne!13850 (regex!4321 r!2363)))) b!2278185))

(declare-fun b!2278189 () Bool)

(declare-fun e!1459191 () Bool)

(declare-fun tp!721588 () Bool)

(declare-fun tp!721587 () Bool)

(assert (=> b!2278189 (= e!1459191 (and tp!721588 tp!721587))))

(assert (=> b!2277474 (= tp!721527 e!1459191)))

(declare-fun b!2278186 () Bool)

(assert (=> b!2278186 (= e!1459191 tp_is_empty!10559)))

(declare-fun b!2278187 () Bool)

(declare-fun tp!721590 () Bool)

(declare-fun tp!721589 () Bool)

(assert (=> b!2278187 (= e!1459191 (and tp!721590 tp!721589))))

(declare-fun b!2278188 () Bool)

(declare-fun tp!721591 () Bool)

(assert (=> b!2278188 (= e!1459191 tp!721591)))

(assert (= (and b!2277474 ((_ is ElementMatch!6669) (regTwo!13850 (regex!4321 r!2363)))) b!2278186))

(assert (= (and b!2277474 ((_ is Concat!11153) (regTwo!13850 (regex!4321 r!2363)))) b!2278187))

(assert (= (and b!2277474 ((_ is Star!6669) (regTwo!13850 (regex!4321 r!2363)))) b!2278188))

(assert (= (and b!2277474 ((_ is Union!6669) (regTwo!13850 (regex!4321 r!2363)))) b!2278189))

(declare-fun b!2278193 () Bool)

(declare-fun e!1459192 () Bool)

(declare-fun tp!721593 () Bool)

(declare-fun tp!721592 () Bool)

(assert (=> b!2278193 (= e!1459192 (and tp!721593 tp!721592))))

(assert (=> b!2277475 (= tp!721529 e!1459192)))

(declare-fun b!2278190 () Bool)

(assert (=> b!2278190 (= e!1459192 tp_is_empty!10559)))

(declare-fun b!2278191 () Bool)

(declare-fun tp!721595 () Bool)

(declare-fun tp!721594 () Bool)

(assert (=> b!2278191 (= e!1459192 (and tp!721595 tp!721594))))

(declare-fun b!2278192 () Bool)

(declare-fun tp!721596 () Bool)

(assert (=> b!2278192 (= e!1459192 tp!721596)))

(assert (= (and b!2277475 ((_ is ElementMatch!6669) (reg!6998 (regex!4321 r!2363)))) b!2278190))

(assert (= (and b!2277475 ((_ is Concat!11153) (reg!6998 (regex!4321 r!2363)))) b!2278191))

(assert (= (and b!2277475 ((_ is Star!6669) (reg!6998 (regex!4321 r!2363)))) b!2278192))

(assert (= (and b!2277475 ((_ is Union!6669) (reg!6998 (regex!4321 r!2363)))) b!2278193))

(declare-fun b!2278197 () Bool)

(declare-fun b_free!67917 () Bool)

(declare-fun b_next!68621 () Bool)

(assert (=> b!2278197 (= b_free!67917 (not b_next!68621))))

(declare-fun tb!135383 () Bool)

(declare-fun t!203296 () Bool)

(assert (=> (and b!2278197 (= (toValue!6099 (transformation!4321 (rule!6645 (h!32478 (t!203165 (t!203165 tokens!456)))))) (toValue!6099 (transformation!4321 (rule!6645 (_1!15905 (get!8161 lt!845544)))))) t!203296) tb!135383))

(declare-fun result!165064 () Bool)

(assert (= result!165064 result!165012))

(assert (=> d!674230 t!203296))

(declare-fun tp!721599 () Bool)

(declare-fun b_and!179793 () Bool)

(assert (=> b!2278197 (= tp!721599 (and (=> t!203296 result!165064) b_and!179793))))

(declare-fun b_free!67919 () Bool)

(declare-fun b_next!68623 () Bool)

(assert (=> b!2278197 (= b_free!67919 (not b_next!68623))))

(declare-fun tb!135385 () Bool)

(declare-fun t!203298 () Bool)

(assert (=> (and b!2278197 (= (toChars!5958 (transformation!4321 (rule!6645 (h!32478 (t!203165 (t!203165 tokens!456)))))) (toChars!5958 (transformation!4321 (rule!6645 (_1!15905 (get!8161 lt!845544)))))) t!203298) tb!135385))

(declare-fun result!165066 () Bool)

(assert (= result!165066 result!165026))

(assert (=> d!674282 t!203298))

(declare-fun t!203300 () Bool)

(declare-fun tb!135387 () Bool)

(assert (=> (and b!2278197 (= (toChars!5958 (transformation!4321 (rule!6645 (h!32478 (t!203165 (t!203165 tokens!456)))))) (toChars!5958 (transformation!4321 (rule!6645 (h!32478 tokens!456))))) t!203300) tb!135387))

(declare-fun result!165068 () Bool)

(assert (= result!165068 result!164918))

(assert (=> b!2276997 t!203300))

(declare-fun t!203302 () Bool)

(declare-fun tb!135389 () Bool)

(assert (=> (and b!2278197 (= (toChars!5958 (transformation!4321 (rule!6645 (h!32478 (t!203165 (t!203165 tokens!456)))))) (toChars!5958 (transformation!4321 (rule!6645 (head!4924 tokens!456))))) t!203302) tb!135389))

(declare-fun result!165070 () Bool)

(assert (= result!165070 result!164958))

(assert (=> d!674098 t!203302))

(declare-fun t!203304 () Bool)

(declare-fun tb!135391 () Bool)

(assert (=> (and b!2278197 (= (toChars!5958 (transformation!4321 (rule!6645 (h!32478 (t!203165 (t!203165 tokens!456)))))) (toChars!5958 (transformation!4321 (rule!6645 (h!32478 (t!203165 tokens!456)))))) t!203304) tb!135391))

(declare-fun result!165072 () Bool)

(assert (= result!165072 result!165038))

(assert (=> b!2277861 t!203304))

(assert (=> d!673988 t!203300))

(declare-fun tp!721600 () Bool)

(declare-fun b_and!179795 () Bool)

(assert (=> b!2278197 (= tp!721600 (and (=> t!203304 result!165072) (=> t!203300 result!165068) (=> t!203302 result!165070) (=> t!203298 result!165066) b_and!179795))))

(declare-fun b!2278195 () Bool)

(declare-fun e!1459193 () Bool)

(declare-fun e!1459194 () Bool)

(declare-fun tp!721601 () Bool)

(assert (=> b!2278195 (= e!1459194 (and (inv!21 (value!136968 (h!32478 (t!203165 (t!203165 tokens!456))))) e!1459193 tp!721601))))

(declare-fun e!1459197 () Bool)

(declare-fun tp!721598 () Bool)

(declare-fun b!2278194 () Bool)

(assert (=> b!2278194 (= e!1459197 (and (inv!36654 (h!32478 (t!203165 (t!203165 tokens!456)))) e!1459194 tp!721598))))

(declare-fun e!1459196 () Bool)

(assert (=> b!2278197 (= e!1459196 (and tp!721599 tp!721600))))

(declare-fun b!2278196 () Bool)

(declare-fun tp!721597 () Bool)

(assert (=> b!2278196 (= e!1459193 (and tp!721597 (inv!36651 (tag!4811 (rule!6645 (h!32478 (t!203165 (t!203165 tokens!456)))))) (inv!36655 (transformation!4321 (rule!6645 (h!32478 (t!203165 (t!203165 tokens!456)))))) e!1459196))))

(assert (=> b!2277454 (= tp!721508 e!1459197)))

(assert (= b!2278196 b!2278197))

(assert (= b!2278195 b!2278196))

(assert (= b!2278194 b!2278195))

(assert (= (and b!2277454 ((_ is Cons!27077) (t!203165 (t!203165 tokens!456)))) b!2278194))

(declare-fun m!2706731 () Bool)

(assert (=> b!2278195 m!2706731))

(declare-fun m!2706733 () Bool)

(assert (=> b!2278194 m!2706733))

(declare-fun m!2706735 () Bool)

(assert (=> b!2278196 m!2706735))

(declare-fun m!2706737 () Bool)

(assert (=> b!2278196 m!2706737))

(declare-fun b!2278223 () Bool)

(declare-fun e!1459206 () Bool)

(declare-fun tp!721633 () Bool)

(assert (=> b!2278223 (= e!1459206 (and tp_is_empty!10559 tp!721633))))

(assert (=> b!2277502 (= tp!721559 e!1459206)))

(assert (= (and b!2277502 ((_ is Cons!27075) (t!203163 (t!203163 otherP!12)))) b!2278223))

(declare-fun b!2278231 () Bool)

(declare-fun e!1459213 () Bool)

(declare-fun tp!721640 () Bool)

(declare-fun tp!721639 () Bool)

(assert (=> b!2278231 (= e!1459213 (and tp!721640 tp!721639))))

(assert (=> b!2277483 (= tp!721539 e!1459213)))

(declare-fun b!2278228 () Bool)

(assert (=> b!2278228 (= e!1459213 tp_is_empty!10559)))

(declare-fun b!2278229 () Bool)

(declare-fun tp!721642 () Bool)

(declare-fun tp!721641 () Bool)

(assert (=> b!2278229 (= e!1459213 (and tp!721642 tp!721641))))

(declare-fun b!2278230 () Bool)

(declare-fun tp!721643 () Bool)

(assert (=> b!2278230 (= e!1459213 tp!721643)))

(assert (= (and b!2277483 ((_ is ElementMatch!6669) (regOne!13850 (regex!4321 otherR!12)))) b!2278228))

(assert (= (and b!2277483 ((_ is Concat!11153) (regOne!13850 (regex!4321 otherR!12)))) b!2278229))

(assert (= (and b!2277483 ((_ is Star!6669) (regOne!13850 (regex!4321 otherR!12)))) b!2278230))

(assert (= (and b!2277483 ((_ is Union!6669) (regOne!13850 (regex!4321 otherR!12)))) b!2278231))

(declare-fun b!2278235 () Bool)

(declare-fun e!1459214 () Bool)

(declare-fun tp!721645 () Bool)

(declare-fun tp!721644 () Bool)

(assert (=> b!2278235 (= e!1459214 (and tp!721645 tp!721644))))

(assert (=> b!2277483 (= tp!721538 e!1459214)))

(declare-fun b!2278232 () Bool)

(assert (=> b!2278232 (= e!1459214 tp_is_empty!10559)))

(declare-fun b!2278233 () Bool)

(declare-fun tp!721647 () Bool)

(declare-fun tp!721646 () Bool)

(assert (=> b!2278233 (= e!1459214 (and tp!721647 tp!721646))))

(declare-fun b!2278234 () Bool)

(declare-fun tp!721648 () Bool)

(assert (=> b!2278234 (= e!1459214 tp!721648)))

(assert (= (and b!2277483 ((_ is ElementMatch!6669) (regTwo!13850 (regex!4321 otherR!12)))) b!2278232))

(assert (= (and b!2277483 ((_ is Concat!11153) (regTwo!13850 (regex!4321 otherR!12)))) b!2278233))

(assert (= (and b!2277483 ((_ is Star!6669) (regTwo!13850 (regex!4321 otherR!12)))) b!2278234))

(assert (= (and b!2277483 ((_ is Union!6669) (regTwo!13850 (regex!4321 otherR!12)))) b!2278235))

(declare-fun b!2278239 () Bool)

(declare-fun e!1459215 () Bool)

(declare-fun tp!721650 () Bool)

(declare-fun tp!721649 () Bool)

(assert (=> b!2278239 (= e!1459215 (and tp!721650 tp!721649))))

(assert (=> b!2277476 (= tp!721526 e!1459215)))

(declare-fun b!2278236 () Bool)

(assert (=> b!2278236 (= e!1459215 tp_is_empty!10559)))

(declare-fun b!2278237 () Bool)

(declare-fun tp!721652 () Bool)

(declare-fun tp!721651 () Bool)

(assert (=> b!2278237 (= e!1459215 (and tp!721652 tp!721651))))

(declare-fun b!2278238 () Bool)

(declare-fun tp!721653 () Bool)

(assert (=> b!2278238 (= e!1459215 tp!721653)))

(assert (= (and b!2277476 ((_ is ElementMatch!6669) (regOne!13851 (regex!4321 r!2363)))) b!2278236))

(assert (= (and b!2277476 ((_ is Concat!11153) (regOne!13851 (regex!4321 r!2363)))) b!2278237))

(assert (= (and b!2277476 ((_ is Star!6669) (regOne!13851 (regex!4321 r!2363)))) b!2278238))

(assert (= (and b!2277476 ((_ is Union!6669) (regOne!13851 (regex!4321 r!2363)))) b!2278239))

(declare-fun b!2278243 () Bool)

(declare-fun e!1459216 () Bool)

(declare-fun tp!721655 () Bool)

(declare-fun tp!721654 () Bool)

(assert (=> b!2278243 (= e!1459216 (and tp!721655 tp!721654))))

(assert (=> b!2277476 (= tp!721525 e!1459216)))

(declare-fun b!2278240 () Bool)

(assert (=> b!2278240 (= e!1459216 tp_is_empty!10559)))

(declare-fun b!2278241 () Bool)

(declare-fun tp!721657 () Bool)

(declare-fun tp!721656 () Bool)

(assert (=> b!2278241 (= e!1459216 (and tp!721657 tp!721656))))

(declare-fun b!2278242 () Bool)

(declare-fun tp!721658 () Bool)

(assert (=> b!2278242 (= e!1459216 tp!721658)))

(assert (= (and b!2277476 ((_ is ElementMatch!6669) (regTwo!13851 (regex!4321 r!2363)))) b!2278240))

(assert (= (and b!2277476 ((_ is Concat!11153) (regTwo!13851 (regex!4321 r!2363)))) b!2278241))

(assert (= (and b!2277476 ((_ is Star!6669) (regTwo!13851 (regex!4321 r!2363)))) b!2278242))

(assert (= (and b!2277476 ((_ is Union!6669) (regTwo!13851 (regex!4321 r!2363)))) b!2278243))

(declare-fun b!2278244 () Bool)

(declare-fun e!1459217 () Bool)

(declare-fun tp!721659 () Bool)

(assert (=> b!2278244 (= e!1459217 (and tp_is_empty!10559 tp!721659))))

(assert (=> b!2277455 (= tp!721511 e!1459217)))

(assert (= (and b!2277455 ((_ is Cons!27075) (originalCharacters!5091 (h!32478 (t!203165 tokens!456))))) b!2278244))

(declare-fun b!2278248 () Bool)

(declare-fun e!1459218 () Bool)

(declare-fun tp!721661 () Bool)

(declare-fun tp!721660 () Bool)

(assert (=> b!2278248 (= e!1459218 (and tp!721661 tp!721660))))

(assert (=> b!2277484 (= tp!721540 e!1459218)))

(declare-fun b!2278245 () Bool)

(assert (=> b!2278245 (= e!1459218 tp_is_empty!10559)))

(declare-fun b!2278246 () Bool)

(declare-fun tp!721663 () Bool)

(declare-fun tp!721662 () Bool)

(assert (=> b!2278246 (= e!1459218 (and tp!721663 tp!721662))))

(declare-fun b!2278247 () Bool)

(declare-fun tp!721664 () Bool)

(assert (=> b!2278247 (= e!1459218 tp!721664)))

(assert (= (and b!2277484 ((_ is ElementMatch!6669) (reg!6998 (regex!4321 otherR!12)))) b!2278245))

(assert (= (and b!2277484 ((_ is Concat!11153) (reg!6998 (regex!4321 otherR!12)))) b!2278246))

(assert (= (and b!2277484 ((_ is Star!6669) (reg!6998 (regex!4321 otherR!12)))) b!2278247))

(assert (= (and b!2277484 ((_ is Union!6669) (reg!6998 (regex!4321 otherR!12)))) b!2278248))

(declare-fun b!2278252 () Bool)

(declare-fun e!1459219 () Bool)

(declare-fun tp!721666 () Bool)

(declare-fun tp!721665 () Bool)

(assert (=> b!2278252 (= e!1459219 (and tp!721666 tp!721665))))

(assert (=> b!2277456 (= tp!721507 e!1459219)))

(declare-fun b!2278249 () Bool)

(assert (=> b!2278249 (= e!1459219 tp_is_empty!10559)))

(declare-fun b!2278250 () Bool)

(declare-fun tp!721668 () Bool)

(declare-fun tp!721667 () Bool)

(assert (=> b!2278250 (= e!1459219 (and tp!721668 tp!721667))))

(declare-fun b!2278251 () Bool)

(declare-fun tp!721669 () Bool)

(assert (=> b!2278251 (= e!1459219 tp!721669)))

(assert (= (and b!2277456 ((_ is ElementMatch!6669) (regex!4321 (rule!6645 (h!32478 (t!203165 tokens!456)))))) b!2278249))

(assert (= (and b!2277456 ((_ is Concat!11153) (regex!4321 (rule!6645 (h!32478 (t!203165 tokens!456)))))) b!2278250))

(assert (= (and b!2277456 ((_ is Star!6669) (regex!4321 (rule!6645 (h!32478 (t!203165 tokens!456)))))) b!2278251))

(assert (= (and b!2277456 ((_ is Union!6669) (regex!4321 (rule!6645 (h!32478 (t!203165 tokens!456)))))) b!2278252))

(declare-fun b!2278260 () Bool)

(declare-fun e!1459221 () Bool)

(declare-fun tp!721676 () Bool)

(declare-fun tp!721675 () Bool)

(assert (=> b!2278260 (= e!1459221 (and tp!721676 tp!721675))))

(assert (=> b!2277485 (= tp!721537 e!1459221)))

(declare-fun b!2278257 () Bool)

(assert (=> b!2278257 (= e!1459221 tp_is_empty!10559)))

(declare-fun b!2278258 () Bool)

(declare-fun tp!721678 () Bool)

(declare-fun tp!721677 () Bool)

(assert (=> b!2278258 (= e!1459221 (and tp!721678 tp!721677))))

(declare-fun b!2278259 () Bool)

(declare-fun tp!721679 () Bool)

(assert (=> b!2278259 (= e!1459221 tp!721679)))

(assert (= (and b!2277485 ((_ is ElementMatch!6669) (regOne!13851 (regex!4321 otherR!12)))) b!2278257))

(assert (= (and b!2277485 ((_ is Concat!11153) (regOne!13851 (regex!4321 otherR!12)))) b!2278258))

(assert (= (and b!2277485 ((_ is Star!6669) (regOne!13851 (regex!4321 otherR!12)))) b!2278259))

(assert (= (and b!2277485 ((_ is Union!6669) (regOne!13851 (regex!4321 otherR!12)))) b!2278260))

(declare-fun b!2278268 () Bool)

(declare-fun e!1459223 () Bool)

(declare-fun tp!721686 () Bool)

(declare-fun tp!721685 () Bool)

(assert (=> b!2278268 (= e!1459223 (and tp!721686 tp!721685))))

(assert (=> b!2277485 (= tp!721536 e!1459223)))

(declare-fun b!2278265 () Bool)

(assert (=> b!2278265 (= e!1459223 tp_is_empty!10559)))

(declare-fun b!2278266 () Bool)

(declare-fun tp!721688 () Bool)

(declare-fun tp!721687 () Bool)

(assert (=> b!2278266 (= e!1459223 (and tp!721688 tp!721687))))

(declare-fun b!2278267 () Bool)

(declare-fun tp!721689 () Bool)

(assert (=> b!2278267 (= e!1459223 tp!721689)))

(assert (= (and b!2277485 ((_ is ElementMatch!6669) (regTwo!13851 (regex!4321 otherR!12)))) b!2278265))

(assert (= (and b!2277485 ((_ is Concat!11153) (regTwo!13851 (regex!4321 otherR!12)))) b!2278266))

(assert (= (and b!2277485 ((_ is Star!6669) (regTwo!13851 (regex!4321 otherR!12)))) b!2278267))

(assert (= (and b!2277485 ((_ is Union!6669) (regTwo!13851 (regex!4321 otherR!12)))) b!2278268))

(declare-fun b!2278269 () Bool)

(declare-fun e!1459224 () Bool)

(declare-fun tp!721691 () Bool)

(assert (=> b!2278269 (= e!1459224 (and tp_is_empty!10559 tp!721691))))

(assert (=> b!2277481 (= tp!721535 e!1459224)))

(assert (= (and b!2277481 ((_ is Cons!27075) (t!203163 (t!203163 suffix!886)))) b!2278269))

(declare-fun b!2278277 () Bool)

(declare-fun e!1459226 () Bool)

(declare-fun tp!721697 () Bool)

(declare-fun tp!721696 () Bool)

(assert (=> b!2278277 (= e!1459226 (and tp!721697 tp!721696))))

(assert (=> b!2277499 (= tp!721557 e!1459226)))

(declare-fun b!2278274 () Bool)

(assert (=> b!2278274 (= e!1459226 tp_is_empty!10559)))

(declare-fun b!2278275 () Bool)

(declare-fun tp!721699 () Bool)

(declare-fun tp!721698 () Bool)

(assert (=> b!2278275 (= e!1459226 (and tp!721699 tp!721698))))

(declare-fun b!2278276 () Bool)

(declare-fun tp!721700 () Bool)

(assert (=> b!2278276 (= e!1459226 tp!721700)))

(assert (= (and b!2277499 ((_ is ElementMatch!6669) (reg!6998 (regex!4321 (h!32479 rules!1750))))) b!2278274))

(assert (= (and b!2277499 ((_ is Concat!11153) (reg!6998 (regex!4321 (h!32479 rules!1750))))) b!2278275))

(assert (= (and b!2277499 ((_ is Star!6669) (reg!6998 (regex!4321 (h!32479 rules!1750))))) b!2278276))

(assert (= (and b!2277499 ((_ is Union!6669) (reg!6998 (regex!4321 (h!32479 rules!1750))))) b!2278277))

(declare-fun b!2278286 () Bool)

(declare-fun e!1459228 () Bool)

(declare-fun tp!721703 () Bool)

(declare-fun tp!721702 () Bool)

(assert (=> b!2278286 (= e!1459228 (and tp!721703 tp!721702))))

(assert (=> b!2277500 (= tp!721554 e!1459228)))

(declare-fun b!2278279 () Bool)

(assert (=> b!2278279 (= e!1459228 tp_is_empty!10559)))

(declare-fun b!2278282 () Bool)

(declare-fun tp!721705 () Bool)

(declare-fun tp!721704 () Bool)

(assert (=> b!2278282 (= e!1459228 (and tp!721705 tp!721704))))

(declare-fun b!2278284 () Bool)

(declare-fun tp!721706 () Bool)

(assert (=> b!2278284 (= e!1459228 tp!721706)))

(assert (= (and b!2277500 ((_ is ElementMatch!6669) (regOne!13851 (regex!4321 (h!32479 rules!1750))))) b!2278279))

(assert (= (and b!2277500 ((_ is Concat!11153) (regOne!13851 (regex!4321 (h!32479 rules!1750))))) b!2278282))

(assert (= (and b!2277500 ((_ is Star!6669) (regOne!13851 (regex!4321 (h!32479 rules!1750))))) b!2278284))

(assert (= (and b!2277500 ((_ is Union!6669) (regOne!13851 (regex!4321 (h!32479 rules!1750))))) b!2278286))

(declare-fun b!2278291 () Bool)

(declare-fun e!1459231 () Bool)

(declare-fun tp!721714 () Bool)

(declare-fun tp!721712 () Bool)

(assert (=> b!2278291 (= e!1459231 (and tp!721714 tp!721712))))

(assert (=> b!2277500 (= tp!721553 e!1459231)))

(declare-fun b!2278288 () Bool)

(assert (=> b!2278288 (= e!1459231 tp_is_empty!10559)))

(declare-fun b!2278289 () Bool)

(declare-fun tp!721716 () Bool)

(declare-fun tp!721715 () Bool)

(assert (=> b!2278289 (= e!1459231 (and tp!721716 tp!721715))))

(declare-fun b!2278290 () Bool)

(declare-fun tp!721717 () Bool)

(assert (=> b!2278290 (= e!1459231 tp!721717)))

(assert (= (and b!2277500 ((_ is ElementMatch!6669) (regTwo!13851 (regex!4321 (h!32479 rules!1750))))) b!2278288))

(assert (= (and b!2277500 ((_ is Concat!11153) (regTwo!13851 (regex!4321 (h!32479 rules!1750))))) b!2278289))

(assert (= (and b!2277500 ((_ is Star!6669) (regTwo!13851 (regex!4321 (h!32479 rules!1750))))) b!2278290))

(assert (= (and b!2277500 ((_ is Union!6669) (regTwo!13851 (regex!4321 (h!32479 rules!1750))))) b!2278291))

(declare-fun b!2278297 () Bool)

(declare-fun b_free!67927 () Bool)

(declare-fun b_next!68631 () Bool)

(assert (=> b!2278297 (= b_free!67927 (not b_next!68631))))

(declare-fun tb!135405 () Bool)

(declare-fun t!203318 () Bool)

(assert (=> (and b!2278297 (= (toValue!6099 (transformation!4321 (h!32479 (t!203166 (t!203166 rules!1750))))) (toValue!6099 (transformation!4321 (rule!6645 (_1!15905 (get!8161 lt!845544)))))) t!203318) tb!135405))

(declare-fun result!165086 () Bool)

(assert (= result!165086 result!165012))

(assert (=> d!674230 t!203318))

(declare-fun tp!721723 () Bool)

(declare-fun b_and!179803 () Bool)

(assert (=> b!2278297 (= tp!721723 (and (=> t!203318 result!165086) b_and!179803))))

(declare-fun b_free!67931 () Bool)

(declare-fun b_next!68635 () Bool)

(assert (=> b!2278297 (= b_free!67931 (not b_next!68635))))

(declare-fun tb!135415 () Bool)

(declare-fun t!203328 () Bool)

(assert (=> (and b!2278297 (= (toChars!5958 (transformation!4321 (h!32479 (t!203166 (t!203166 rules!1750))))) (toChars!5958 (transformation!4321 (rule!6645 (_1!15905 (get!8161 lt!845544)))))) t!203328) tb!135415))

(declare-fun result!165096 () Bool)

(assert (= result!165096 result!165026))

(assert (=> d!674282 t!203328))

(declare-fun t!203330 () Bool)

(declare-fun tb!135417 () Bool)

(assert (=> (and b!2278297 (= (toChars!5958 (transformation!4321 (h!32479 (t!203166 (t!203166 rules!1750))))) (toChars!5958 (transformation!4321 (rule!6645 (h!32478 tokens!456))))) t!203330) tb!135417))

(declare-fun result!165098 () Bool)

(assert (= result!165098 result!164918))

(assert (=> b!2276997 t!203330))

(declare-fun tb!135419 () Bool)

(declare-fun t!203332 () Bool)

(assert (=> (and b!2278297 (= (toChars!5958 (transformation!4321 (h!32479 (t!203166 (t!203166 rules!1750))))) (toChars!5958 (transformation!4321 (rule!6645 (head!4924 tokens!456))))) t!203332) tb!135419))

(declare-fun result!165100 () Bool)

(assert (= result!165100 result!164958))

(assert (=> d!674098 t!203332))

(declare-fun tb!135421 () Bool)

(declare-fun t!203334 () Bool)

(assert (=> (and b!2278297 (= (toChars!5958 (transformation!4321 (h!32479 (t!203166 (t!203166 rules!1750))))) (toChars!5958 (transformation!4321 (rule!6645 (h!32478 (t!203165 tokens!456)))))) t!203334) tb!135421))

(declare-fun result!165102 () Bool)

(assert (= result!165102 result!165038))

(assert (=> b!2277861 t!203334))

(assert (=> d!673988 t!203330))

(declare-fun b_and!179807 () Bool)

(declare-fun tp!721725 () Bool)

(assert (=> b!2278297 (= tp!721725 (and (=> t!203330 result!165098) (=> t!203334 result!165102) (=> t!203328 result!165096) (=> t!203332 result!165100) b_and!179807))))

(declare-fun e!1459236 () Bool)

(assert (=> b!2278297 (= e!1459236 (and tp!721723 tp!721725))))

(declare-fun tp!721724 () Bool)

(declare-fun b!2278296 () Bool)

(declare-fun e!1459237 () Bool)

(assert (=> b!2278296 (= e!1459237 (and tp!721724 (inv!36651 (tag!4811 (h!32479 (t!203166 (t!203166 rules!1750))))) (inv!36655 (transformation!4321 (h!32479 (t!203166 (t!203166 rules!1750))))) e!1459236))))

(declare-fun b!2278295 () Bool)

(declare-fun e!1459239 () Bool)

(declare-fun tp!721722 () Bool)

(assert (=> b!2278295 (= e!1459239 (and e!1459237 tp!721722))))

(assert (=> b!2277494 (= tp!721549 e!1459239)))

(assert (= b!2278296 b!2278297))

(assert (= b!2278295 b!2278296))

(assert (= (and b!2277494 ((_ is Cons!27078) (t!203166 (t!203166 rules!1750)))) b!2278295))

(declare-fun m!2706751 () Bool)

(assert (=> b!2278296 m!2706751))

(declare-fun m!2706753 () Bool)

(assert (=> b!2278296 m!2706753))

(declare-fun b!2278306 () Bool)

(declare-fun e!1459242 () Bool)

(declare-fun tp!721736 () Bool)

(assert (=> b!2278306 (= e!1459242 (and tp_is_empty!10559 tp!721736))))

(assert (=> b!2277501 (= tp!721558 e!1459242)))

(assert (= (and b!2277501 ((_ is Cons!27075) (t!203163 (t!203163 input!1722)))) b!2278306))

(declare-fun b!2278310 () Bool)

(declare-fun e!1459243 () Bool)

(declare-fun tp!721738 () Bool)

(declare-fun tp!721737 () Bool)

(assert (=> b!2278310 (= e!1459243 (and tp!721738 tp!721737))))

(assert (=> b!2277478 (= tp!721533 e!1459243)))

(declare-fun b!2278307 () Bool)

(assert (=> b!2278307 (= e!1459243 tp_is_empty!10559)))

(declare-fun b!2278308 () Bool)

(declare-fun tp!721740 () Bool)

(declare-fun tp!721739 () Bool)

(assert (=> b!2278308 (= e!1459243 (and tp!721740 tp!721739))))

(declare-fun b!2278309 () Bool)

(declare-fun tp!721741 () Bool)

(assert (=> b!2278309 (= e!1459243 tp!721741)))

(assert (= (and b!2277478 ((_ is ElementMatch!6669) (regOne!13850 (regex!4321 (rule!6645 (h!32478 tokens!456)))))) b!2278307))

(assert (= (and b!2277478 ((_ is Concat!11153) (regOne!13850 (regex!4321 (rule!6645 (h!32478 tokens!456)))))) b!2278308))

(assert (= (and b!2277478 ((_ is Star!6669) (regOne!13850 (regex!4321 (rule!6645 (h!32478 tokens!456)))))) b!2278309))

(assert (= (and b!2277478 ((_ is Union!6669) (regOne!13850 (regex!4321 (rule!6645 (h!32478 tokens!456)))))) b!2278310))

(declare-fun b!2278318 () Bool)

(declare-fun e!1459245 () Bool)

(declare-fun tp!721748 () Bool)

(declare-fun tp!721747 () Bool)

(assert (=> b!2278318 (= e!1459245 (and tp!721748 tp!721747))))

(assert (=> b!2277478 (= tp!721532 e!1459245)))

(declare-fun b!2278315 () Bool)

(assert (=> b!2278315 (= e!1459245 tp_is_empty!10559)))

(declare-fun b!2278316 () Bool)

(declare-fun tp!721750 () Bool)

(declare-fun tp!721749 () Bool)

(assert (=> b!2278316 (= e!1459245 (and tp!721750 tp!721749))))

(declare-fun b!2278317 () Bool)

(declare-fun tp!721751 () Bool)

(assert (=> b!2278317 (= e!1459245 tp!721751)))

(assert (= (and b!2277478 ((_ is ElementMatch!6669) (regTwo!13850 (regex!4321 (rule!6645 (h!32478 tokens!456)))))) b!2278315))

(assert (= (and b!2277478 ((_ is Concat!11153) (regTwo!13850 (regex!4321 (rule!6645 (h!32478 tokens!456)))))) b!2278316))

(assert (= (and b!2277478 ((_ is Star!6669) (regTwo!13850 (regex!4321 (rule!6645 (h!32478 tokens!456)))))) b!2278317))

(assert (= (and b!2277478 ((_ is Union!6669) (regTwo!13850 (regex!4321 (rule!6645 (h!32478 tokens!456)))))) b!2278318))

(declare-fun b!2278326 () Bool)

(declare-fun e!1459247 () Bool)

(declare-fun tp!721758 () Bool)

(declare-fun tp!721757 () Bool)

(assert (=> b!2278326 (= e!1459247 (and tp!721758 tp!721757))))

(assert (=> b!2277479 (= tp!721534 e!1459247)))

(declare-fun b!2278323 () Bool)

(assert (=> b!2278323 (= e!1459247 tp_is_empty!10559)))

(declare-fun b!2278324 () Bool)

(declare-fun tp!721760 () Bool)

(declare-fun tp!721759 () Bool)

(assert (=> b!2278324 (= e!1459247 (and tp!721760 tp!721759))))

(declare-fun b!2278325 () Bool)

(declare-fun tp!721761 () Bool)

(assert (=> b!2278325 (= e!1459247 tp!721761)))

(assert (= (and b!2277479 ((_ is ElementMatch!6669) (reg!6998 (regex!4321 (rule!6645 (h!32478 tokens!456)))))) b!2278323))

(assert (= (and b!2277479 ((_ is Concat!11153) (reg!6998 (regex!4321 (rule!6645 (h!32478 tokens!456)))))) b!2278324))

(assert (= (and b!2277479 ((_ is Star!6669) (reg!6998 (regex!4321 (rule!6645 (h!32478 tokens!456)))))) b!2278325))

(assert (= (and b!2277479 ((_ is Union!6669) (reg!6998 (regex!4321 (rule!6645 (h!32478 tokens!456)))))) b!2278326))

(declare-fun b!2278334 () Bool)

(declare-fun e!1459249 () Bool)

(declare-fun tp!721768 () Bool)

(declare-fun tp!721767 () Bool)

(assert (=> b!2278334 (= e!1459249 (and tp!721768 tp!721767))))

(assert (=> b!2277480 (= tp!721531 e!1459249)))

(declare-fun b!2278331 () Bool)

(assert (=> b!2278331 (= e!1459249 tp_is_empty!10559)))

(declare-fun b!2278332 () Bool)

(declare-fun tp!721770 () Bool)

(declare-fun tp!721769 () Bool)

(assert (=> b!2278332 (= e!1459249 (and tp!721770 tp!721769))))

(declare-fun b!2278333 () Bool)

(declare-fun tp!721771 () Bool)

(assert (=> b!2278333 (= e!1459249 tp!721771)))

(assert (= (and b!2277480 ((_ is ElementMatch!6669) (regOne!13851 (regex!4321 (rule!6645 (h!32478 tokens!456)))))) b!2278331))

(assert (= (and b!2277480 ((_ is Concat!11153) (regOne!13851 (regex!4321 (rule!6645 (h!32478 tokens!456)))))) b!2278332))

(assert (= (and b!2277480 ((_ is Star!6669) (regOne!13851 (regex!4321 (rule!6645 (h!32478 tokens!456)))))) b!2278333))

(assert (= (and b!2277480 ((_ is Union!6669) (regOne!13851 (regex!4321 (rule!6645 (h!32478 tokens!456)))))) b!2278334))

(declare-fun b!2278342 () Bool)

(declare-fun e!1459252 () Bool)

(declare-fun tp!721775 () Bool)

(declare-fun tp!721774 () Bool)

(assert (=> b!2278342 (= e!1459252 (and tp!721775 tp!721774))))

(assert (=> b!2277480 (= tp!721530 e!1459252)))

(declare-fun b!2278339 () Bool)

(assert (=> b!2278339 (= e!1459252 tp_is_empty!10559)))

(declare-fun b!2278340 () Bool)

(declare-fun tp!721777 () Bool)

(declare-fun tp!721776 () Bool)

(assert (=> b!2278340 (= e!1459252 (and tp!721777 tp!721776))))

(declare-fun b!2278341 () Bool)

(declare-fun tp!721778 () Bool)

(assert (=> b!2278341 (= e!1459252 tp!721778)))

(assert (= (and b!2277480 ((_ is ElementMatch!6669) (regTwo!13851 (regex!4321 (rule!6645 (h!32478 tokens!456)))))) b!2278339))

(assert (= (and b!2277480 ((_ is Concat!11153) (regTwo!13851 (regex!4321 (rule!6645 (h!32478 tokens!456)))))) b!2278340))

(assert (= (and b!2277480 ((_ is Star!6669) (regTwo!13851 (regex!4321 (rule!6645 (h!32478 tokens!456)))))) b!2278341))

(assert (= (and b!2277480 ((_ is Union!6669) (regTwo!13851 (regex!4321 (rule!6645 (h!32478 tokens!456)))))) b!2278342))

(declare-fun b!2278348 () Bool)

(declare-fun e!1459253 () Bool)

(declare-fun tp!721782 () Bool)

(declare-fun tp!721781 () Bool)

(assert (=> b!2278348 (= e!1459253 (and tp!721782 tp!721781))))

(assert (=> b!2277498 (= tp!721556 e!1459253)))

(declare-fun b!2278345 () Bool)

(assert (=> b!2278345 (= e!1459253 tp_is_empty!10559)))

(declare-fun b!2278346 () Bool)

(declare-fun tp!721784 () Bool)

(declare-fun tp!721783 () Bool)

(assert (=> b!2278346 (= e!1459253 (and tp!721784 tp!721783))))

(declare-fun b!2278347 () Bool)

(declare-fun tp!721785 () Bool)

(assert (=> b!2278347 (= e!1459253 tp!721785)))

(assert (= (and b!2277498 ((_ is ElementMatch!6669) (regOne!13850 (regex!4321 (h!32479 rules!1750))))) b!2278345))

(assert (= (and b!2277498 ((_ is Concat!11153) (regOne!13850 (regex!4321 (h!32479 rules!1750))))) b!2278346))

(assert (= (and b!2277498 ((_ is Star!6669) (regOne!13850 (regex!4321 (h!32479 rules!1750))))) b!2278347))

(assert (= (and b!2277498 ((_ is Union!6669) (regOne!13850 (regex!4321 (h!32479 rules!1750))))) b!2278348))

(declare-fun b!2278354 () Bool)

(declare-fun e!1459256 () Bool)

(declare-fun tp!721789 () Bool)

(declare-fun tp!721788 () Bool)

(assert (=> b!2278354 (= e!1459256 (and tp!721789 tp!721788))))

(assert (=> b!2277498 (= tp!721555 e!1459256)))

(declare-fun b!2278351 () Bool)

(assert (=> b!2278351 (= e!1459256 tp_is_empty!10559)))

(declare-fun b!2278352 () Bool)

(declare-fun tp!721791 () Bool)

(declare-fun tp!721790 () Bool)

(assert (=> b!2278352 (= e!1459256 (and tp!721791 tp!721790))))

(declare-fun b!2278353 () Bool)

(declare-fun tp!721792 () Bool)

(assert (=> b!2278353 (= e!1459256 tp!721792)))

(assert (= (and b!2277498 ((_ is ElementMatch!6669) (regTwo!13850 (regex!4321 (h!32479 rules!1750))))) b!2278351))

(assert (= (and b!2277498 ((_ is Concat!11153) (regTwo!13850 (regex!4321 (h!32479 rules!1750))))) b!2278352))

(assert (= (and b!2277498 ((_ is Star!6669) (regTwo!13850 (regex!4321 (h!32479 rules!1750))))) b!2278353))

(assert (= (and b!2277498 ((_ is Union!6669) (regTwo!13850 (regex!4321 (h!32479 rules!1750))))) b!2278354))

(declare-fun b_lambda!72533 () Bool)

(assert (= b_lambda!72511 (or (and b!2276972 b_free!67895 (= (toChars!5958 (transformation!4321 r!2363)) (toChars!5958 (transformation!4321 (rule!6645 (head!4924 tokens!456)))))) (and b!2278297 b_free!67931 (= (toChars!5958 (transformation!4321 (h!32479 (t!203166 (t!203166 rules!1750))))) (toChars!5958 (transformation!4321 (rule!6645 (head!4924 tokens!456)))))) (and b!2276963 b_free!67887 (= (toChars!5958 (transformation!4321 (h!32479 rules!1750))) (toChars!5958 (transformation!4321 (rule!6645 (head!4924 tokens!456)))))) (and b!2276980 b_free!67899 (= (toChars!5958 (transformation!4321 otherR!12)) (toChars!5958 (transformation!4321 (rule!6645 (head!4924 tokens!456)))))) (and b!2277457 b_free!67911 (= (toChars!5958 (transformation!4321 (rule!6645 (h!32478 (t!203165 tokens!456))))) (toChars!5958 (transformation!4321 (rule!6645 (head!4924 tokens!456)))))) (and b!2276991 b_free!67891 (= (toChars!5958 (transformation!4321 (rule!6645 (h!32478 tokens!456)))) (toChars!5958 (transformation!4321 (rule!6645 (head!4924 tokens!456)))))) (and b!2277496 b_free!67915 (= (toChars!5958 (transformation!4321 (h!32479 (t!203166 rules!1750)))) (toChars!5958 (transformation!4321 (rule!6645 (head!4924 tokens!456)))))) (and b!2278197 b_free!67919 (= (toChars!5958 (transformation!4321 (rule!6645 (h!32478 (t!203165 (t!203165 tokens!456)))))) (toChars!5958 (transformation!4321 (rule!6645 (head!4924 tokens!456)))))) b_lambda!72533)))

(declare-fun b_lambda!72535 () Bool)

(assert (= b_lambda!72529 (or (and b!2277457 b_free!67911) (and b!2276991 b_free!67891 (= (toChars!5958 (transformation!4321 (rule!6645 (h!32478 tokens!456)))) (toChars!5958 (transformation!4321 (rule!6645 (h!32478 (t!203165 tokens!456))))))) (and b!2276972 b_free!67895 (= (toChars!5958 (transformation!4321 r!2363)) (toChars!5958 (transformation!4321 (rule!6645 (h!32478 (t!203165 tokens!456))))))) (and b!2276963 b_free!67887 (= (toChars!5958 (transformation!4321 (h!32479 rules!1750))) (toChars!5958 (transformation!4321 (rule!6645 (h!32478 (t!203165 tokens!456))))))) (and b!2276980 b_free!67899 (= (toChars!5958 (transformation!4321 otherR!12)) (toChars!5958 (transformation!4321 (rule!6645 (h!32478 (t!203165 tokens!456))))))) (and b!2278297 b_free!67931 (= (toChars!5958 (transformation!4321 (h!32479 (t!203166 (t!203166 rules!1750))))) (toChars!5958 (transformation!4321 (rule!6645 (h!32478 (t!203165 tokens!456))))))) (and b!2278197 b_free!67919 (= (toChars!5958 (transformation!4321 (rule!6645 (h!32478 (t!203165 (t!203165 tokens!456)))))) (toChars!5958 (transformation!4321 (rule!6645 (h!32478 (t!203165 tokens!456))))))) (and b!2277496 b_free!67915 (= (toChars!5958 (transformation!4321 (h!32479 (t!203166 rules!1750)))) (toChars!5958 (transformation!4321 (rule!6645 (h!32478 (t!203165 tokens!456))))))) b_lambda!72535)))

(check-sat (not b!2277316) (not d!674150) (not b!2278317) (not b!2278295) (not b!2278179) (not b!2277835) (not b!2277760) (not b_next!68623) b_and!179755 (not b!2277775) (not d!674220) (not d!674288) (not b!2278193) (not b!2277773) (not d!674522) (not d!674266) (not d!674248) (not bm!136355) (not b!2277572) (not b!2278223) b_and!179779 (not d!674320) (not bm!136352) (not b!2277676) (not d!674318) b_and!179753 (not b!2277578) (not b!2278187) (not b!2278306) (not d!674310) (not d!674474) (not b!2277570) (not b!2277675) (not b!2278243) (not b!2277860) (not b!2278231) (not b_next!68619) (not b!2278058) (not b!2278073) (not b!2277757) (not b!2278192) (not d!674372) (not b!2277861) (not b!2277766) (not d!674376) (not d!674484) (not b!2277735) (not b_next!68595) (not d!674362) (not b!2278242) (not b!2278353) (not b!2278230) (not d!674464) b_and!179807 (not b!2277741) b_and!179769 (not b!2277743) (not b_next!68613) (not b!2277841) (not d!674278) (not d!674338) b_and!179777 (not b!2277652) (not b!2278183) (not d!674300) (not d!674326) (not d!674386) (not b!2278247) (not d!674384) (not d!674268) (not d!674270) (not b!2277816) (not d!674294) (not d!674222) (not d!674232) (not b!2278166) (not b!2277866) (not b!2278347) (not b_lambda!72533) (not b!2277539) (not b!2277994) (not b!2277679) (not b!2278173) (not b!2278267) (not b!2278326) (not b!2277734) (not b!2278180) (not b!2278333) (not bm!136353) (not b!2278174) (not b!2278177) (not b!2277854) (not b!2278269) (not b!2277993) (not b!2278346) (not b!2278133) (not b!2278241) (not b!2277887) (not b!2278195) (not b_next!68589) (not bm!136343) (not b!2277569) (not b!2278060) b_and!179775 (not tb!135359) (not d!674460) (not b!2277559) (not b!2278028) (not b!2278289) (not d!674354) (not b!2278348) (not b_lambda!72519) (not d!674488) (not b_next!68617) (not b!2278061) (not b_lambda!72535) (not b!2278184) (not b!2278172) (not b!2277833) (not b!2277999) b_and!179773 (not d!674302) (not b!2278276) (not b!2277867) (not b!2278239) (not b!2278284) (not b_lambda!72527) (not b_next!68635) (not b!2278229) (not d!674364) b_and!179747 (not b!2277996) (not b!2277827) (not b!2277667) (not d!674496) (not b!2278266) (not b!2278045) (not b!2277862) (not b!2278165) (not b!2277844) (not bm!136350) (not b!2277840) (not b!2278259) (not b!2277826) (not b!2278188) (not b!2278291) b_and!179771 (not b!2278072) (not b_next!68593) (not b!2278027) (not b_next!68597) (not b_lambda!72525) (not b!2277758) (not d!674346) (not b!2277870) (not b!2278258) (not b!2277858) (not d!674160) (not b!2278250) (not b!2278235) (not b!2277739) (not b!2277557) (not d!674530) (not b!2278248) (not b!2277849) (not b!2278318) (not b!2278244) (not b!2278051) (not b!2277770) (not b!2278310) (not b!2277869) (not d!674280) (not b!2277798) (not b!2277871) (not b!2277868) (not b_next!68591) (not b!2278234) (not b!2277003) (not b!2277654) (not b_next!68615) (not b_next!68603) b_and!179751 (not b!2278334) (not b!2278001) (not d!674316) (not b!2277821) (not b!2277820) (not bm!136370) b_and!179795 (not b!2277874) (not d!674330) (not b!2277853) (not d!674276) (not d!674244) (not b!2278341) (not b!2277830) (not b!2278277) (not b!2277755) (not b!2278189) (not b!2277566) (not b!2278342) (not b!2278069) (not b!2277774) (not b!2277819) (not b!2277847) (not b!2277883) (not b!2278246) (not tb!135347) (not d!674286) (not b!2278325) (not b!2278260) (not b!2277845) (not b!2277776) (not d!674344) (not b!2278286) (not b!2278167) (not b!2277852) (not b!2278282) (not b!2278308) b_and!179749 (not bm!136356) (not d!674470) (not b!2277864) (not b_next!68601) (not b!2278233) (not b_next!68631) (not d!674272) (not b!2277856) (not b_lambda!72517) (not b!2278050) (not b!2278332) (not b!2278251) (not b!2277815) (not b_next!68621) (not b!2278340) (not b!2278196) (not b!2277998) (not tb!135335) (not b!2277843) (not b!2278238) (not b!2278309) (not d!674282) (not b!2278296) (not b!2277761) b_and!179793 (not b!2278040) (not d!674524) (not b!2278324) (not b!2278181) (not d!674366) (not b!2278252) (not b!2278059) (not b!2278275) (not d!674140) (not b!2278065) (not b!2277995) (not b!2278352) (not b!2277875) (not b!2277865) tp_is_empty!10559 (not b!2278191) (not d!674236) (not b!2277538) (not b_next!68599) (not b!2277885) (not d!674246) (not b!2278316) (not b!2278268) b_and!179803 (not bm!136381) (not b!2278237) (not b!2278049) (not d!674332) (not d!674274) (not b!2278144) (not bm!136380) (not b!2278185) (not b!2278354) b_and!179745 (not d!674238) (not b!2277877) (not b!2277762) (not b!2277817) (not b!2277863) (not b!2277736) (not d!674234) (not b!2277807) (not b!2278290) (not b!2278044) (not b!2278000) (not b!2277834) (not b!2278194) (not b!2277668) (not d!674336) (not d!674352))
(check-sat b_and!179779 b_and!179753 (not b_next!68619) (not b_next!68617) b_and!179773 (not b_next!68591) b_and!179795 (not b_next!68631) (not b_next!68621) b_and!179793 b_and!179745 (not b_next!68623) b_and!179755 (not b_next!68595) b_and!179807 b_and!179769 (not b_next!68613) b_and!179777 (not b_next!68589) b_and!179775 (not b_next!68635) b_and!179747 (not b_next!68597) b_and!179771 (not b_next!68593) (not b_next!68615) (not b_next!68603) b_and!179751 b_and!179749 (not b_next!68601) b_and!179803 (not b_next!68599))
