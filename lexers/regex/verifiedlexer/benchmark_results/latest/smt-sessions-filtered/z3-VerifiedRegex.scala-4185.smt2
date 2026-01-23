; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!226980 () Bool)

(assert start!226980)

(declare-fun b!2305474 () Bool)

(declare-fun b_free!69693 () Bool)

(declare-fun b_next!70397 () Bool)

(assert (=> b!2305474 (= b_free!69693 (not b_next!70397))))

(declare-fun tp!731472 () Bool)

(declare-fun b_and!183969 () Bool)

(assert (=> b!2305474 (= tp!731472 b_and!183969)))

(declare-fun b_free!69695 () Bool)

(declare-fun b_next!70399 () Bool)

(assert (=> b!2305474 (= b_free!69695 (not b_next!70399))))

(declare-fun tp!731483 () Bool)

(declare-fun b_and!183971 () Bool)

(assert (=> b!2305474 (= tp!731483 b_and!183971)))

(declare-fun b!2305486 () Bool)

(declare-fun b_free!69697 () Bool)

(declare-fun b_next!70401 () Bool)

(assert (=> b!2305486 (= b_free!69697 (not b_next!70401))))

(declare-fun tp!731476 () Bool)

(declare-fun b_and!183973 () Bool)

(assert (=> b!2305486 (= tp!731476 b_and!183973)))

(declare-fun b_free!69699 () Bool)

(declare-fun b_next!70403 () Bool)

(assert (=> b!2305486 (= b_free!69699 (not b_next!70403))))

(declare-fun tp!731481 () Bool)

(declare-fun b_and!183975 () Bool)

(assert (=> b!2305486 (= tp!731481 b_and!183975)))

(declare-fun b!2305491 () Bool)

(declare-fun b_free!69701 () Bool)

(declare-fun b_next!70405 () Bool)

(assert (=> b!2305491 (= b_free!69701 (not b_next!70405))))

(declare-fun tp!731480 () Bool)

(declare-fun b_and!183977 () Bool)

(assert (=> b!2305491 (= tp!731480 b_and!183977)))

(declare-fun b_free!69703 () Bool)

(declare-fun b_next!70407 () Bool)

(assert (=> b!2305491 (= b_free!69703 (not b_next!70407))))

(declare-fun tp!731482 () Bool)

(declare-fun b_and!183979 () Bool)

(assert (=> b!2305491 (= tp!731482 b_and!183979)))

(declare-fun b!2305466 () Bool)

(declare-fun b_free!69705 () Bool)

(declare-fun b_next!70409 () Bool)

(assert (=> b!2305466 (= b_free!69705 (not b_next!70409))))

(declare-fun tp!731470 () Bool)

(declare-fun b_and!183981 () Bool)

(assert (=> b!2305466 (= tp!731470 b_and!183981)))

(declare-fun b_free!69707 () Bool)

(declare-fun b_next!70411 () Bool)

(assert (=> b!2305466 (= b_free!69707 (not b_next!70411))))

(declare-fun tp!731484 () Bool)

(declare-fun b_and!183983 () Bool)

(assert (=> b!2305466 (= tp!731484 b_and!183983)))

(declare-fun b!2305462 () Bool)

(declare-fun e!1477495 () Bool)

(declare-fun e!1477499 () Bool)

(assert (=> b!2305462 (= e!1477495 e!1477499)))

(declare-fun res!985678 () Bool)

(assert (=> b!2305462 (=> res!985678 e!1477499)))

(declare-datatypes ((List!27536 0))(
  ( (Nil!27442) (Cons!27442 (h!32843 (_ BitVec 16)) (t!206336 List!27536)) )
))
(declare-datatypes ((TokenValue!4563 0))(
  ( (FloatLiteralValue!9126 (text!32386 List!27536)) (TokenValueExt!4562 (__x!18186 Int)) (Broken!22815 (value!139222 List!27536)) (Object!4656) (End!4563) (Def!4563) (Underscore!4563) (Match!4563) (Else!4563) (Error!4563) (Case!4563) (If!4563) (Extends!4563) (Abstract!4563) (Class!4563) (Val!4563) (DelimiterValue!9126 (del!4623 List!27536)) (KeywordValue!4569 (value!139223 List!27536)) (CommentValue!9126 (value!139224 List!27536)) (WhitespaceValue!9126 (value!139225 List!27536)) (IndentationValue!4563 (value!139226 List!27536)) (String!29918) (Int32!4563) (Broken!22816 (value!139227 List!27536)) (Boolean!4564) (Unit!40353) (OperatorValue!4566 (op!4623 List!27536)) (IdentifierValue!9126 (value!139228 List!27536)) (IdentifierValue!9127 (value!139229 List!27536)) (WhitespaceValue!9127 (value!139230 List!27536)) (True!9126) (False!9126) (Broken!22817 (value!139231 List!27536)) (Broken!22818 (value!139232 List!27536)) (True!9127) (RightBrace!4563) (RightBracket!4563) (Colon!4563) (Null!4563) (Comma!4563) (LeftBracket!4563) (False!9127) (LeftBrace!4563) (ImaginaryLiteralValue!4563 (text!32387 List!27536)) (StringLiteralValue!13689 (value!139233 List!27536)) (EOFValue!4563 (value!139234 List!27536)) (IdentValue!4563 (value!139235 List!27536)) (DelimiterValue!9127 (value!139236 List!27536)) (DedentValue!4563 (value!139237 List!27536)) (NewLineValue!4563 (value!139238 List!27536)) (IntegerValue!13689 (value!139239 (_ BitVec 32)) (text!32388 List!27536)) (IntegerValue!13690 (value!139240 Int) (text!32389 List!27536)) (Times!4563) (Or!4563) (Equal!4563) (Minus!4563) (Broken!22819 (value!139241 List!27536)) (And!4563) (Div!4563) (LessEqual!4563) (Mod!4563) (Concat!11312) (Not!4563) (Plus!4563) (SpaceValue!4563 (value!139242 List!27536)) (IntegerValue!13691 (value!139243 Int) (text!32390 List!27536)) (StringLiteralValue!13690 (text!32391 List!27536)) (FloatLiteralValue!9127 (text!32392 List!27536)) (BytesLiteralValue!4563 (value!139244 List!27536)) (CommentValue!9127 (value!139245 List!27536)) (StringLiteralValue!13691 (value!139246 List!27536)) (ErrorTokenValue!4563 (msg!4624 List!27536)) )
))
(declare-datatypes ((C!13644 0))(
  ( (C!13645 (val!7870 Int)) )
))
(declare-datatypes ((List!27537 0))(
  ( (Nil!27443) (Cons!27443 (h!32844 C!13644) (t!206337 List!27537)) )
))
(declare-datatypes ((IArray!17905 0))(
  ( (IArray!17906 (innerList!9010 List!27537)) )
))
(declare-datatypes ((Conc!8950 0))(
  ( (Node!8950 (left!20795 Conc!8950) (right!21125 Conc!8950) (csize!18130 Int) (cheight!9161 Int)) (Leaf!13136 (xs!11892 IArray!17905) (csize!18131 Int)) (Empty!8950) )
))
(declare-datatypes ((BalanceConc!17628 0))(
  ( (BalanceConc!17629 (c!365480 Conc!8950)) )
))
(declare-datatypes ((String!29919 0))(
  ( (String!29920 (value!139247 String)) )
))
(declare-datatypes ((Regex!6749 0))(
  ( (ElementMatch!6749 (c!365481 C!13644)) (Concat!11313 (regOne!14010 Regex!6749) (regTwo!14010 Regex!6749)) (EmptyExpr!6749) (Star!6749 (reg!7078 Regex!6749)) (EmptyLang!6749) (Union!6749 (regOne!14011 Regex!6749) (regTwo!14011 Regex!6749)) )
))
(declare-datatypes ((TokenValueInjection!8666 0))(
  ( (TokenValueInjection!8667 (toValue!6215 Int) (toChars!6074 Int)) )
))
(declare-datatypes ((Rule!8602 0))(
  ( (Rule!8603 (regex!4401 Regex!6749) (tag!4891 String!29919) (isSeparator!4401 Bool) (transformation!4401 TokenValueInjection!8666)) )
))
(declare-datatypes ((Token!8280 0))(
  ( (Token!8281 (value!139248 TokenValue!4563) (rule!6749 Rule!8602) (size!21653 Int) (originalCharacters!5171 List!27537)) )
))
(declare-datatypes ((List!27538 0))(
  ( (Nil!27444) (Cons!27444 (h!32845 Token!8280) (t!206338 List!27538)) )
))
(declare-fun tokens!456 () List!27538)

(get-info :version)

(assert (=> b!2305462 (= res!985678 ((_ is Nil!27444) tokens!456))))

(declare-datatypes ((Unit!40354 0))(
  ( (Unit!40355) )
))
(declare-fun lt!855067 () Unit!40354)

(declare-fun e!1477511 () Unit!40354)

(assert (=> b!2305462 (= lt!855067 e!1477511)))

(declare-fun c!365479 () Bool)

(declare-fun lt!855077 () Int)

(declare-fun lt!855069 () Int)

(assert (=> b!2305462 (= c!365479 (= lt!855077 lt!855069))))

(declare-fun e!1477504 () Bool)

(declare-fun otherR!12 () Rule!8602)

(declare-fun b!2305463 () Bool)

(declare-fun tp!731471 () Bool)

(declare-fun e!1477509 () Bool)

(declare-fun inv!37081 (String!29919) Bool)

(declare-fun inv!37084 (TokenValueInjection!8666) Bool)

(assert (=> b!2305463 (= e!1477504 (and tp!731471 (inv!37081 (tag!4891 otherR!12)) (inv!37084 (transformation!4401 otherR!12)) e!1477509))))

(declare-fun b!2305464 () Bool)

(declare-fun e!1477515 () Bool)

(declare-fun lt!855075 () List!27537)

(declare-fun input!1722 () List!27537)

(declare-fun isPrefix!2391 (List!27537 List!27537) Bool)

(assert (=> b!2305464 (= e!1477515 (isPrefix!2391 lt!855075 input!1722))))

(declare-fun lt!855073 () Int)

(declare-datatypes ((tuple2!27346 0))(
  ( (tuple2!27347 (_1!16183 Token!8280) (_2!16183 List!27537)) )
))
(declare-fun lt!855068 () tuple2!27346)

(declare-datatypes ((LexerInterface!3998 0))(
  ( (LexerInterfaceExt!3995 (__x!18187 Int)) (Lexer!3996) )
))
(declare-fun thiss!16613 () LexerInterface!3998)

(declare-fun r!2363 () Rule!8602)

(declare-datatypes ((Option!5399 0))(
  ( (None!5398) (Some!5398 (v!30502 tuple2!27346)) )
))
(declare-fun maxPrefixOneRule!1424 (LexerInterface!3998 Rule!8602 List!27537) Option!5399)

(declare-fun apply!6663 (TokenValueInjection!8666 BalanceConc!17628) TokenValue!4563)

(declare-fun seqFromList!3105 (List!27537) BalanceConc!17628)

(assert (=> b!2305464 (= (maxPrefixOneRule!1424 thiss!16613 r!2363 input!1722) (Some!5398 (tuple2!27347 (Token!8281 (apply!6663 (transformation!4401 r!2363) (seqFromList!3105 lt!855075)) r!2363 lt!855073 lt!855075) (_2!16183 lt!855068))))))

(declare-fun lt!855080 () Unit!40354)

(declare-datatypes ((List!27539 0))(
  ( (Nil!27445) (Cons!27445 (h!32846 Rule!8602) (t!206339 List!27539)) )
))
(declare-fun rules!1750 () List!27539)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!597 (LexerInterface!3998 List!27539 List!27537 List!27537 List!27537 Rule!8602) Unit!40354)

(assert (=> b!2305464 (= lt!855080 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!597 thiss!16613 rules!1750 lt!855075 input!1722 (_2!16183 lt!855068) r!2363))))

(declare-fun b!2305465 () Bool)

(declare-fun res!985669 () Bool)

(declare-fun e!1477507 () Bool)

(assert (=> b!2305465 (=> (not res!985669) (not e!1477507))))

(declare-fun isEmpty!15685 (List!27539) Bool)

(assert (=> b!2305465 (= res!985669 (not (isEmpty!15685 rules!1750)))))

(declare-fun e!1477488 () Bool)

(assert (=> b!2305466 (= e!1477488 (and tp!731470 tp!731484))))

(declare-fun b!2305467 () Bool)

(declare-fun e!1477517 () Bool)

(declare-fun e!1477506 () Bool)

(declare-fun tp!731487 () Bool)

(assert (=> b!2305467 (= e!1477517 (and e!1477506 tp!731487))))

(declare-fun b!2305468 () Bool)

(declare-fun res!985672 () Bool)

(assert (=> b!2305468 (=> (not res!985672) (not e!1477507))))

(declare-fun contains!4789 (List!27539 Rule!8602) Bool)

(assert (=> b!2305468 (= res!985672 (contains!4789 rules!1750 otherR!12))))

(declare-fun b!2305469 () Bool)

(declare-fun res!985680 () Bool)

(declare-fun e!1477490 () Bool)

(assert (=> b!2305469 (=> (not res!985680) (not e!1477490))))

(declare-fun e!1477500 () Bool)

(assert (=> b!2305469 (= res!985680 e!1477500)))

(declare-fun res!985665 () Bool)

(assert (=> b!2305469 (=> res!985665 e!1477500)))

(declare-fun lt!855072 () Bool)

(assert (=> b!2305469 (= res!985665 lt!855072)))

(declare-fun b!2305470 () Bool)

(assert (=> b!2305470 (= e!1477499 e!1477515)))

(declare-fun res!985667 () Bool)

(assert (=> b!2305470 (=> res!985667 e!1477515)))

(declare-fun lt!855076 () Int)

(assert (=> b!2305470 (= res!985667 (<= lt!855076 lt!855073))))

(declare-fun size!21654 (List!27537) Int)

(assert (=> b!2305470 (= lt!855073 (size!21654 lt!855075))))

(declare-fun otherP!12 () List!27537)

(assert (=> b!2305470 (= lt!855076 (size!21654 otherP!12))))

(declare-fun lt!855074 () List!27537)

(assert (=> b!2305470 (= (_2!16183 lt!855068) lt!855074)))

(declare-fun lt!855082 () Unit!40354)

(declare-fun lemmaSamePrefixThenSameSuffix!1072 (List!27537 List!27537 List!27537 List!27537 List!27537) Unit!40354)

(assert (=> b!2305470 (= lt!855082 (lemmaSamePrefixThenSameSuffix!1072 lt!855075 (_2!16183 lt!855068) lt!855075 lt!855074 input!1722))))

(declare-fun getSuffix!1170 (List!27537 List!27537) List!27537)

(assert (=> b!2305470 (= lt!855074 (getSuffix!1170 input!1722 lt!855075))))

(declare-fun ++!6719 (List!27537 List!27537) List!27537)

(assert (=> b!2305470 (isPrefix!2391 lt!855075 (++!6719 lt!855075 (_2!16183 lt!855068)))))

(declare-fun lt!855079 () Unit!40354)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!1584 (List!27537 List!27537) Unit!40354)

(assert (=> b!2305470 (= lt!855079 (lemmaConcatTwoListThenFirstIsPrefix!1584 lt!855075 (_2!16183 lt!855068)))))

(declare-fun list!10824 (BalanceConc!17628) List!27537)

(declare-fun charsOf!2789 (Token!8280) BalanceConc!17628)

(assert (=> b!2305470 (= lt!855075 (list!10824 (charsOf!2789 (h!32845 tokens!456))))))

(declare-fun get!8273 (Option!5399) tuple2!27346)

(declare-fun maxPrefix!2254 (LexerInterface!3998 List!27539 List!27537) Option!5399)

(assert (=> b!2305470 (= lt!855068 (get!8273 (maxPrefix!2254 thiss!16613 rules!1750 input!1722)))))

(declare-fun b!2305471 () Bool)

(declare-fun Unit!40356 () Unit!40354)

(assert (=> b!2305471 (= e!1477511 Unit!40356)))

(declare-fun lt!855078 () Unit!40354)

(declare-fun lemmaSameIndexThenSameElement!194 (List!27539 Rule!8602 Rule!8602) Unit!40354)

(assert (=> b!2305471 (= lt!855078 (lemmaSameIndexThenSameElement!194 rules!1750 r!2363 otherR!12))))

(assert (=> b!2305471 false))

(declare-fun b!2305472 () Bool)

(declare-fun tp!731473 () Bool)

(declare-fun e!1477510 () Bool)

(declare-fun e!1477501 () Bool)

(declare-fun inv!37085 (Token!8280) Bool)

(assert (=> b!2305472 (= e!1477510 (and (inv!37085 (h!32845 tokens!456)) e!1477501 tp!731473))))

(declare-fun b!2305473 () Bool)

(declare-fun res!985676 () Bool)

(assert (=> b!2305473 (=> (not res!985676) (not e!1477507))))

(declare-fun rulesInvariant!3500 (LexerInterface!3998 List!27539) Bool)

(assert (=> b!2305473 (= res!985676 (rulesInvariant!3500 thiss!16613 rules!1750))))

(declare-fun res!985675 () Bool)

(assert (=> start!226980 (=> (not res!985675) (not e!1477507))))

(assert (=> start!226980 (= res!985675 ((_ is Lexer!3996) thiss!16613))))

(assert (=> start!226980 e!1477507))

(assert (=> start!226980 true))

(declare-fun e!1477493 () Bool)

(assert (=> start!226980 e!1477493))

(assert (=> start!226980 e!1477504))

(declare-fun e!1477498 () Bool)

(assert (=> start!226980 e!1477498))

(declare-fun e!1477513 () Bool)

(assert (=> start!226980 e!1477513))

(assert (=> start!226980 e!1477517))

(declare-fun e!1477491 () Bool)

(assert (=> start!226980 e!1477491))

(assert (=> start!226980 e!1477510))

(declare-fun e!1477503 () Bool)

(assert (=> b!2305474 (= e!1477503 (and tp!731472 tp!731483))))

(declare-fun b!2305475 () Bool)

(declare-fun tp_is_empty!10719 () Bool)

(declare-fun tp!731477 () Bool)

(assert (=> b!2305475 (= e!1477498 (and tp_is_empty!10719 tp!731477))))

(declare-fun b!2305476 () Bool)

(declare-fun e!1477508 () Bool)

(assert (=> b!2305476 (= e!1477508 e!1477495)))

(declare-fun res!985677 () Bool)

(assert (=> b!2305476 (=> res!985677 e!1477495)))

(assert (=> b!2305476 (= res!985677 (> lt!855077 lt!855069))))

(declare-fun getIndex!414 (List!27539 Rule!8602) Int)

(assert (=> b!2305476 (= lt!855069 (getIndex!414 rules!1750 otherR!12))))

(assert (=> b!2305476 (= lt!855077 (getIndex!414 rules!1750 r!2363))))

(declare-fun ruleValid!1491 (LexerInterface!3998 Rule!8602) Bool)

(assert (=> b!2305476 (ruleValid!1491 thiss!16613 otherR!12)))

(declare-fun lt!855081 () Unit!40354)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!896 (LexerInterface!3998 Rule!8602 List!27539) Unit!40354)

(assert (=> b!2305476 (= lt!855081 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!896 thiss!16613 otherR!12 rules!1750))))

(declare-fun b!2305477 () Bool)

(declare-fun head!5052 (List!27538) Token!8280)

(assert (=> b!2305477 (= e!1477500 (= (rule!6749 (head!5052 tokens!456)) r!2363))))

(declare-fun tp!731479 () Bool)

(declare-fun e!1477492 () Bool)

(declare-fun b!2305478 () Bool)

(declare-fun inv!21 (TokenValue!4563) Bool)

(assert (=> b!2305478 (= e!1477501 (and (inv!21 (value!139248 (h!32845 tokens!456))) e!1477492 tp!731479))))

(declare-fun b!2305479 () Bool)

(declare-fun tp!731486 () Bool)

(assert (=> b!2305479 (= e!1477491 (and tp!731486 (inv!37081 (tag!4891 r!2363)) (inv!37084 (transformation!4401 r!2363)) e!1477488))))

(declare-fun b!2305480 () Bool)

(declare-fun tp!731485 () Bool)

(assert (=> b!2305480 (= e!1477493 (and tp_is_empty!10719 tp!731485))))

(declare-fun b!2305481 () Bool)

(declare-fun Unit!40357 () Unit!40354)

(assert (=> b!2305481 (= e!1477511 Unit!40357)))

(declare-fun b!2305482 () Bool)

(declare-fun tp!731478 () Bool)

(assert (=> b!2305482 (= e!1477513 (and tp_is_empty!10719 tp!731478))))

(declare-fun b!2305483 () Bool)

(declare-fun res!985666 () Bool)

(assert (=> b!2305483 (=> (not res!985666) (not e!1477490))))

(assert (=> b!2305483 (= res!985666 (isPrefix!2391 otherP!12 input!1722))))

(declare-fun b!2305484 () Bool)

(assert (=> b!2305484 (= e!1477490 (not e!1477508))))

(declare-fun res!985671 () Bool)

(assert (=> b!2305484 (=> res!985671 e!1477508)))

(declare-fun e!1477497 () Bool)

(assert (=> b!2305484 (= res!985671 e!1477497)))

(declare-fun res!985679 () Bool)

(assert (=> b!2305484 (=> (not res!985679) (not e!1477497))))

(assert (=> b!2305484 (= res!985679 (not lt!855072))))

(assert (=> b!2305484 (ruleValid!1491 thiss!16613 r!2363)))

(declare-fun lt!855070 () Unit!40354)

(assert (=> b!2305484 (= lt!855070 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!896 thiss!16613 r!2363 rules!1750))))

(declare-fun tp!731474 () Bool)

(declare-fun b!2305485 () Bool)

(assert (=> b!2305485 (= e!1477492 (and tp!731474 (inv!37081 (tag!4891 (rule!6749 (h!32845 tokens!456)))) (inv!37084 (transformation!4401 (rule!6749 (h!32845 tokens!456)))) e!1477503))))

(declare-fun e!1477505 () Bool)

(assert (=> b!2305486 (= e!1477505 (and tp!731476 tp!731481))))

(declare-fun tp!731475 () Bool)

(declare-fun b!2305487 () Bool)

(assert (=> b!2305487 (= e!1477506 (and tp!731475 (inv!37081 (tag!4891 (h!32846 rules!1750))) (inv!37084 (transformation!4401 (h!32846 rules!1750))) e!1477505))))

(declare-fun b!2305488 () Bool)

(declare-fun e!1477494 () Bool)

(assert (=> b!2305488 (= e!1477507 e!1477494)))

(declare-fun res!985673 () Bool)

(assert (=> b!2305488 (=> (not res!985673) (not e!1477494))))

(declare-datatypes ((IArray!17907 0))(
  ( (IArray!17908 (innerList!9011 List!27538)) )
))
(declare-datatypes ((Conc!8951 0))(
  ( (Node!8951 (left!20796 Conc!8951) (right!21126 Conc!8951) (csize!18132 Int) (cheight!9162 Int)) (Leaf!13137 (xs!11893 IArray!17907) (csize!18133 Int)) (Empty!8951) )
))
(declare-datatypes ((BalanceConc!17630 0))(
  ( (BalanceConc!17631 (c!365482 Conc!8951)) )
))
(declare-datatypes ((tuple2!27348 0))(
  ( (tuple2!27349 (_1!16184 BalanceConc!17630) (_2!16184 BalanceConc!17628)) )
))
(declare-fun lt!855071 () tuple2!27348)

(declare-fun suffix!886 () List!27537)

(declare-datatypes ((tuple2!27350 0))(
  ( (tuple2!27351 (_1!16185 List!27538) (_2!16185 List!27537)) )
))
(declare-fun list!10825 (BalanceConc!17630) List!27538)

(assert (=> b!2305488 (= res!985673 (= (tuple2!27351 (list!10825 (_1!16184 lt!855071)) (list!10824 (_2!16184 lt!855071))) (tuple2!27351 tokens!456 suffix!886)))))

(declare-fun lex!1837 (LexerInterface!3998 List!27539 BalanceConc!17628) tuple2!27348)

(assert (=> b!2305488 (= lt!855071 (lex!1837 thiss!16613 rules!1750 (seqFromList!3105 input!1722)))))

(declare-fun b!2305489 () Bool)

(assert (=> b!2305489 (= e!1477494 e!1477490)))

(declare-fun res!985674 () Bool)

(assert (=> b!2305489 (=> (not res!985674) (not e!1477490))))

(declare-fun e!1477489 () Bool)

(assert (=> b!2305489 (= res!985674 e!1477489)))

(declare-fun res!985664 () Bool)

(assert (=> b!2305489 (=> res!985664 e!1477489)))

(assert (=> b!2305489 (= res!985664 lt!855072)))

(declare-fun isEmpty!15686 (List!27538) Bool)

(assert (=> b!2305489 (= lt!855072 (isEmpty!15686 tokens!456))))

(declare-fun b!2305490 () Bool)

(declare-fun res!985670 () Bool)

(assert (=> b!2305490 (=> (not res!985670) (not e!1477490))))

(assert (=> b!2305490 (= res!985670 (not (= r!2363 otherR!12)))))

(assert (=> b!2305491 (= e!1477509 (and tp!731480 tp!731482))))

(declare-fun b!2305492 () Bool)

(declare-fun size!21655 (BalanceConc!17628) Int)

(assert (=> b!2305492 (= e!1477489 (<= (size!21655 (charsOf!2789 (head!5052 tokens!456))) (size!21654 otherP!12)))))

(declare-fun b!2305493 () Bool)

(declare-fun matchR!3006 (Regex!6749 List!27537) Bool)

(assert (=> b!2305493 (= e!1477497 (not (matchR!3006 (regex!4401 r!2363) (list!10824 (charsOf!2789 (head!5052 tokens!456))))))))

(declare-fun b!2305494 () Bool)

(declare-fun res!985668 () Bool)

(assert (=> b!2305494 (=> (not res!985668) (not e!1477507))))

(assert (=> b!2305494 (= res!985668 (contains!4789 rules!1750 r!2363))))

(assert (= (and start!226980 res!985675) b!2305465))

(assert (= (and b!2305465 res!985669) b!2305473))

(assert (= (and b!2305473 res!985676) b!2305494))

(assert (= (and b!2305494 res!985668) b!2305468))

(assert (= (and b!2305468 res!985672) b!2305488))

(assert (= (and b!2305488 res!985673) b!2305489))

(assert (= (and b!2305489 (not res!985664)) b!2305492))

(assert (= (and b!2305489 res!985674) b!2305469))

(assert (= (and b!2305469 (not res!985665)) b!2305477))

(assert (= (and b!2305469 res!985680) b!2305483))

(assert (= (and b!2305483 res!985666) b!2305490))

(assert (= (and b!2305490 res!985670) b!2305484))

(assert (= (and b!2305484 res!985679) b!2305493))

(assert (= (and b!2305484 (not res!985671)) b!2305476))

(assert (= (and b!2305476 (not res!985677)) b!2305462))

(assert (= (and b!2305462 c!365479) b!2305471))

(assert (= (and b!2305462 (not c!365479)) b!2305481))

(assert (= (and b!2305462 (not res!985678)) b!2305470))

(assert (= (and b!2305470 (not res!985667)) b!2305464))

(assert (= (and start!226980 ((_ is Cons!27443) input!1722)) b!2305480))

(assert (= b!2305463 b!2305491))

(assert (= start!226980 b!2305463))

(assert (= (and start!226980 ((_ is Cons!27443) suffix!886)) b!2305475))

(assert (= (and start!226980 ((_ is Cons!27443) otherP!12)) b!2305482))

(assert (= b!2305487 b!2305486))

(assert (= b!2305467 b!2305487))

(assert (= (and start!226980 ((_ is Cons!27445) rules!1750)) b!2305467))

(assert (= b!2305479 b!2305466))

(assert (= start!226980 b!2305479))

(assert (= b!2305485 b!2305474))

(assert (= b!2305478 b!2305485))

(assert (= b!2305472 b!2305478))

(assert (= (and start!226980 ((_ is Cons!27444) tokens!456)) b!2305472))

(declare-fun m!2732587 () Bool)

(assert (=> b!2305476 m!2732587))

(declare-fun m!2732589 () Bool)

(assert (=> b!2305476 m!2732589))

(declare-fun m!2732591 () Bool)

(assert (=> b!2305476 m!2732591))

(declare-fun m!2732593 () Bool)

(assert (=> b!2305476 m!2732593))

(declare-fun m!2732595 () Bool)

(assert (=> b!2305484 m!2732595))

(declare-fun m!2732597 () Bool)

(assert (=> b!2305484 m!2732597))

(declare-fun m!2732599 () Bool)

(assert (=> b!2305483 m!2732599))

(declare-fun m!2732601 () Bool)

(assert (=> b!2305488 m!2732601))

(declare-fun m!2732603 () Bool)

(assert (=> b!2305488 m!2732603))

(declare-fun m!2732605 () Bool)

(assert (=> b!2305488 m!2732605))

(assert (=> b!2305488 m!2732605))

(declare-fun m!2732607 () Bool)

(assert (=> b!2305488 m!2732607))

(declare-fun m!2732609 () Bool)

(assert (=> b!2305464 m!2732609))

(declare-fun m!2732611 () Bool)

(assert (=> b!2305464 m!2732611))

(declare-fun m!2732613 () Bool)

(assert (=> b!2305464 m!2732613))

(declare-fun m!2732615 () Bool)

(assert (=> b!2305464 m!2732615))

(assert (=> b!2305464 m!2732609))

(declare-fun m!2732617 () Bool)

(assert (=> b!2305464 m!2732617))

(declare-fun m!2732619 () Bool)

(assert (=> b!2305477 m!2732619))

(declare-fun m!2732621 () Bool)

(assert (=> b!2305478 m!2732621))

(declare-fun m!2732623 () Bool)

(assert (=> b!2305473 m!2732623))

(declare-fun m!2732625 () Bool)

(assert (=> b!2305465 m!2732625))

(declare-fun m!2732627 () Bool)

(assert (=> b!2305472 m!2732627))

(declare-fun m!2732629 () Bool)

(assert (=> b!2305489 m!2732629))

(declare-fun m!2732631 () Bool)

(assert (=> b!2305470 m!2732631))

(declare-fun m!2732633 () Bool)

(assert (=> b!2305470 m!2732633))

(declare-fun m!2732635 () Bool)

(assert (=> b!2305470 m!2732635))

(declare-fun m!2732637 () Bool)

(assert (=> b!2305470 m!2732637))

(declare-fun m!2732639 () Bool)

(assert (=> b!2305470 m!2732639))

(declare-fun m!2732641 () Bool)

(assert (=> b!2305470 m!2732641))

(assert (=> b!2305470 m!2732637))

(declare-fun m!2732643 () Bool)

(assert (=> b!2305470 m!2732643))

(declare-fun m!2732645 () Bool)

(assert (=> b!2305470 m!2732645))

(declare-fun m!2732647 () Bool)

(assert (=> b!2305470 m!2732647))

(declare-fun m!2732649 () Bool)

(assert (=> b!2305470 m!2732649))

(assert (=> b!2305470 m!2732645))

(assert (=> b!2305470 m!2732633))

(declare-fun m!2732651 () Bool)

(assert (=> b!2305470 m!2732651))

(assert (=> b!2305492 m!2732619))

(assert (=> b!2305492 m!2732619))

(declare-fun m!2732653 () Bool)

(assert (=> b!2305492 m!2732653))

(assert (=> b!2305492 m!2732653))

(declare-fun m!2732655 () Bool)

(assert (=> b!2305492 m!2732655))

(assert (=> b!2305492 m!2732649))

(declare-fun m!2732657 () Bool)

(assert (=> b!2305471 m!2732657))

(declare-fun m!2732659 () Bool)

(assert (=> b!2305468 m!2732659))

(declare-fun m!2732661 () Bool)

(assert (=> b!2305487 m!2732661))

(declare-fun m!2732663 () Bool)

(assert (=> b!2305487 m!2732663))

(assert (=> b!2305493 m!2732619))

(assert (=> b!2305493 m!2732619))

(assert (=> b!2305493 m!2732653))

(assert (=> b!2305493 m!2732653))

(declare-fun m!2732665 () Bool)

(assert (=> b!2305493 m!2732665))

(assert (=> b!2305493 m!2732665))

(declare-fun m!2732667 () Bool)

(assert (=> b!2305493 m!2732667))

(declare-fun m!2732669 () Bool)

(assert (=> b!2305463 m!2732669))

(declare-fun m!2732671 () Bool)

(assert (=> b!2305463 m!2732671))

(declare-fun m!2732673 () Bool)

(assert (=> b!2305485 m!2732673))

(declare-fun m!2732675 () Bool)

(assert (=> b!2305485 m!2732675))

(declare-fun m!2732677 () Bool)

(assert (=> b!2305479 m!2732677))

(declare-fun m!2732679 () Bool)

(assert (=> b!2305479 m!2732679))

(declare-fun m!2732681 () Bool)

(assert (=> b!2305494 m!2732681))

(check-sat (not b!2305468) (not b_next!70405) (not b!2305479) (not b!2305465) (not b!2305467) (not b!2305473) tp_is_empty!10719 b_and!183983 (not b!2305477) b_and!183979 (not b!2305485) (not b!2305475) (not b_next!70409) b_and!183977 (not b!2305484) (not b!2305470) (not b!2305488) (not b_next!70401) (not b!2305492) (not b_next!70407) (not b!2305487) b_and!183973 (not b!2305489) (not b_next!70399) (not b_next!70411) b_and!183975 (not b!2305483) (not b!2305472) (not b!2305480) (not b!2305493) (not b_next!70397) (not b!2305463) b_and!183981 (not b!2305476) (not b_next!70403) (not b!2305494) b_and!183969 b_and!183971 (not b!2305482) (not b!2305464) (not b!2305471) (not b!2305478))
(check-sat (not b_next!70405) b_and!183973 b_and!183975 b_and!183983 (not b_next!70397) b_and!183979 b_and!183969 b_and!183971 (not b_next!70409) b_and!183977 (not b_next!70401) (not b_next!70407) (not b_next!70399) (not b_next!70411) b_and!183981 (not b_next!70403))
(get-model)

(declare-fun b!2305531 () Bool)

(declare-fun e!1477542 () Bool)

(assert (=> b!2305531 (= e!1477542 (>= (size!21654 input!1722) (size!21654 otherP!12)))))

(declare-fun d!681982 () Bool)

(assert (=> d!681982 e!1477542))

(declare-fun res!985718 () Bool)

(assert (=> d!681982 (=> res!985718 e!1477542)))

(declare-fun lt!855088 () Bool)

(assert (=> d!681982 (= res!985718 (not lt!855088))))

(declare-fun e!1477543 () Bool)

(assert (=> d!681982 (= lt!855088 e!1477543)))

(declare-fun res!985715 () Bool)

(assert (=> d!681982 (=> res!985715 e!1477543)))

(assert (=> d!681982 (= res!985715 ((_ is Nil!27443) otherP!12))))

(assert (=> d!681982 (= (isPrefix!2391 otherP!12 input!1722) lt!855088)))

(declare-fun b!2305530 () Bool)

(declare-fun e!1477541 () Bool)

(declare-fun tail!3333 (List!27537) List!27537)

(assert (=> b!2305530 (= e!1477541 (isPrefix!2391 (tail!3333 otherP!12) (tail!3333 input!1722)))))

(declare-fun b!2305529 () Bool)

(declare-fun res!985717 () Bool)

(assert (=> b!2305529 (=> (not res!985717) (not e!1477541))))

(declare-fun head!5054 (List!27537) C!13644)

(assert (=> b!2305529 (= res!985717 (= (head!5054 otherP!12) (head!5054 input!1722)))))

(declare-fun b!2305528 () Bool)

(assert (=> b!2305528 (= e!1477543 e!1477541)))

(declare-fun res!985716 () Bool)

(assert (=> b!2305528 (=> (not res!985716) (not e!1477541))))

(assert (=> b!2305528 (= res!985716 (not ((_ is Nil!27443) input!1722)))))

(assert (= (and d!681982 (not res!985715)) b!2305528))

(assert (= (and b!2305528 res!985716) b!2305529))

(assert (= (and b!2305529 res!985717) b!2305530))

(assert (= (and d!681982 (not res!985718)) b!2305531))

(declare-fun m!2732695 () Bool)

(assert (=> b!2305531 m!2732695))

(assert (=> b!2305531 m!2732649))

(declare-fun m!2732697 () Bool)

(assert (=> b!2305530 m!2732697))

(declare-fun m!2732699 () Bool)

(assert (=> b!2305530 m!2732699))

(assert (=> b!2305530 m!2732697))

(assert (=> b!2305530 m!2732699))

(declare-fun m!2732701 () Bool)

(assert (=> b!2305530 m!2732701))

(declare-fun m!2732703 () Bool)

(assert (=> b!2305529 m!2732703))

(declare-fun m!2732705 () Bool)

(assert (=> b!2305529 m!2732705))

(assert (=> b!2305483 d!681982))

(declare-fun d!681990 () Bool)

(declare-fun res!985725 () Bool)

(declare-fun e!1477559 () Bool)

(assert (=> d!681990 (=> (not res!985725) (not e!1477559))))

(declare-fun isEmpty!15689 (List!27537) Bool)

(assert (=> d!681990 (= res!985725 (not (isEmpty!15689 (originalCharacters!5171 (h!32845 tokens!456)))))))

(assert (=> d!681990 (= (inv!37085 (h!32845 tokens!456)) e!1477559)))

(declare-fun b!2305559 () Bool)

(declare-fun res!985726 () Bool)

(assert (=> b!2305559 (=> (not res!985726) (not e!1477559))))

(declare-fun dynLambda!11939 (Int TokenValue!4563) BalanceConc!17628)

(assert (=> b!2305559 (= res!985726 (= (originalCharacters!5171 (h!32845 tokens!456)) (list!10824 (dynLambda!11939 (toChars!6074 (transformation!4401 (rule!6749 (h!32845 tokens!456)))) (value!139248 (h!32845 tokens!456))))))))

(declare-fun b!2305560 () Bool)

(assert (=> b!2305560 (= e!1477559 (= (size!21653 (h!32845 tokens!456)) (size!21654 (originalCharacters!5171 (h!32845 tokens!456)))))))

(assert (= (and d!681990 res!985725) b!2305559))

(assert (= (and b!2305559 res!985726) b!2305560))

(declare-fun b_lambda!73459 () Bool)

(assert (=> (not b_lambda!73459) (not b!2305559)))

(declare-fun t!206349 () Bool)

(declare-fun tb!138023 () Bool)

(assert (=> (and b!2305474 (= (toChars!6074 (transformation!4401 (rule!6749 (h!32845 tokens!456)))) (toChars!6074 (transformation!4401 (rule!6749 (h!32845 tokens!456))))) t!206349) tb!138023))

(declare-fun b!2305571 () Bool)

(declare-fun e!1477565 () Bool)

(declare-fun tp!731493 () Bool)

(declare-fun inv!37088 (Conc!8950) Bool)

(assert (=> b!2305571 (= e!1477565 (and (inv!37088 (c!365480 (dynLambda!11939 (toChars!6074 (transformation!4401 (rule!6749 (h!32845 tokens!456)))) (value!139248 (h!32845 tokens!456))))) tp!731493))))

(declare-fun result!168252 () Bool)

(declare-fun inv!37089 (BalanceConc!17628) Bool)

(assert (=> tb!138023 (= result!168252 (and (inv!37089 (dynLambda!11939 (toChars!6074 (transformation!4401 (rule!6749 (h!32845 tokens!456)))) (value!139248 (h!32845 tokens!456)))) e!1477565))))

(assert (= tb!138023 b!2305571))

(declare-fun m!2732727 () Bool)

(assert (=> b!2305571 m!2732727))

(declare-fun m!2732729 () Bool)

(assert (=> tb!138023 m!2732729))

(assert (=> b!2305559 t!206349))

(declare-fun b_and!183993 () Bool)

(assert (= b_and!183971 (and (=> t!206349 result!168252) b_and!183993)))

(declare-fun t!206351 () Bool)

(declare-fun tb!138025 () Bool)

(assert (=> (and b!2305486 (= (toChars!6074 (transformation!4401 (h!32846 rules!1750))) (toChars!6074 (transformation!4401 (rule!6749 (h!32845 tokens!456))))) t!206351) tb!138025))

(declare-fun result!168256 () Bool)

(assert (= result!168256 result!168252))

(assert (=> b!2305559 t!206351))

(declare-fun b_and!183995 () Bool)

(assert (= b_and!183975 (and (=> t!206351 result!168256) b_and!183995)))

(declare-fun t!206353 () Bool)

(declare-fun tb!138027 () Bool)

(assert (=> (and b!2305491 (= (toChars!6074 (transformation!4401 otherR!12)) (toChars!6074 (transformation!4401 (rule!6749 (h!32845 tokens!456))))) t!206353) tb!138027))

(declare-fun result!168258 () Bool)

(assert (= result!168258 result!168252))

(assert (=> b!2305559 t!206353))

(declare-fun b_and!183997 () Bool)

(assert (= b_and!183979 (and (=> t!206353 result!168258) b_and!183997)))

(declare-fun t!206355 () Bool)

(declare-fun tb!138029 () Bool)

(assert (=> (and b!2305466 (= (toChars!6074 (transformation!4401 r!2363)) (toChars!6074 (transformation!4401 (rule!6749 (h!32845 tokens!456))))) t!206355) tb!138029))

(declare-fun result!168260 () Bool)

(assert (= result!168260 result!168252))

(assert (=> b!2305559 t!206355))

(declare-fun b_and!183999 () Bool)

(assert (= b_and!183983 (and (=> t!206355 result!168260) b_and!183999)))

(declare-fun m!2732733 () Bool)

(assert (=> d!681990 m!2732733))

(declare-fun m!2732735 () Bool)

(assert (=> b!2305559 m!2732735))

(assert (=> b!2305559 m!2732735))

(declare-fun m!2732737 () Bool)

(assert (=> b!2305559 m!2732737))

(declare-fun m!2732739 () Bool)

(assert (=> b!2305560 m!2732739))

(assert (=> b!2305472 d!681990))

(declare-fun b!2305638 () Bool)

(declare-fun res!985774 () Bool)

(declare-fun e!1477608 () Bool)

(assert (=> b!2305638 (=> (not res!985774) (not e!1477608))))

(declare-fun call!137157 () Bool)

(assert (=> b!2305638 (= res!985774 (not call!137157))))

(declare-fun b!2305639 () Bool)

(declare-fun e!1477606 () Bool)

(assert (=> b!2305639 (= e!1477606 (not (= (head!5054 (list!10824 (charsOf!2789 (head!5052 tokens!456)))) (c!365481 (regex!4401 r!2363)))))))

(declare-fun b!2305640 () Bool)

(declare-fun e!1477607 () Bool)

(declare-fun derivativeStep!1550 (Regex!6749 C!13644) Regex!6749)

(assert (=> b!2305640 (= e!1477607 (matchR!3006 (derivativeStep!1550 (regex!4401 r!2363) (head!5054 (list!10824 (charsOf!2789 (head!5052 tokens!456))))) (tail!3333 (list!10824 (charsOf!2789 (head!5052 tokens!456))))))))

(declare-fun d!682002 () Bool)

(declare-fun e!1477604 () Bool)

(assert (=> d!682002 e!1477604))

(declare-fun c!365513 () Bool)

(assert (=> d!682002 (= c!365513 ((_ is EmptyExpr!6749) (regex!4401 r!2363)))))

(declare-fun lt!855123 () Bool)

(assert (=> d!682002 (= lt!855123 e!1477607)))

(declare-fun c!365514 () Bool)

(assert (=> d!682002 (= c!365514 (isEmpty!15689 (list!10824 (charsOf!2789 (head!5052 tokens!456)))))))

(declare-fun validRegex!2552 (Regex!6749) Bool)

(assert (=> d!682002 (validRegex!2552 (regex!4401 r!2363))))

(assert (=> d!682002 (= (matchR!3006 (regex!4401 r!2363) (list!10824 (charsOf!2789 (head!5052 tokens!456)))) lt!855123)))

(declare-fun b!2305641 () Bool)

(declare-fun nullable!1890 (Regex!6749) Bool)

(assert (=> b!2305641 (= e!1477607 (nullable!1890 (regex!4401 r!2363)))))

(declare-fun b!2305642 () Bool)

(declare-fun res!985769 () Bool)

(assert (=> b!2305642 (=> res!985769 e!1477606)))

(assert (=> b!2305642 (= res!985769 (not (isEmpty!15689 (tail!3333 (list!10824 (charsOf!2789 (head!5052 tokens!456)))))))))

(declare-fun b!2305643 () Bool)

(assert (=> b!2305643 (= e!1477608 (= (head!5054 (list!10824 (charsOf!2789 (head!5052 tokens!456)))) (c!365481 (regex!4401 r!2363))))))

(declare-fun b!2305644 () Bool)

(declare-fun e!1477603 () Bool)

(assert (=> b!2305644 (= e!1477603 e!1477606)))

(declare-fun res!985772 () Bool)

(assert (=> b!2305644 (=> res!985772 e!1477606)))

(assert (=> b!2305644 (= res!985772 call!137157)))

(declare-fun b!2305645 () Bool)

(declare-fun res!985770 () Bool)

(declare-fun e!1477605 () Bool)

(assert (=> b!2305645 (=> res!985770 e!1477605)))

(assert (=> b!2305645 (= res!985770 (not ((_ is ElementMatch!6749) (regex!4401 r!2363))))))

(declare-fun e!1477602 () Bool)

(assert (=> b!2305645 (= e!1477602 e!1477605)))

(declare-fun b!2305646 () Bool)

(declare-fun res!985767 () Bool)

(assert (=> b!2305646 (=> (not res!985767) (not e!1477608))))

(assert (=> b!2305646 (= res!985767 (isEmpty!15689 (tail!3333 (list!10824 (charsOf!2789 (head!5052 tokens!456))))))))

(declare-fun b!2305647 () Bool)

(assert (=> b!2305647 (= e!1477604 (= lt!855123 call!137157))))

(declare-fun b!2305648 () Bool)

(assert (=> b!2305648 (= e!1477604 e!1477602)))

(declare-fun c!365515 () Bool)

(assert (=> b!2305648 (= c!365515 ((_ is EmptyLang!6749) (regex!4401 r!2363)))))

(declare-fun b!2305649 () Bool)

(assert (=> b!2305649 (= e!1477602 (not lt!855123))))

(declare-fun b!2305650 () Bool)

(declare-fun res!985768 () Bool)

(assert (=> b!2305650 (=> res!985768 e!1477605)))

(assert (=> b!2305650 (= res!985768 e!1477608)))

(declare-fun res!985771 () Bool)

(assert (=> b!2305650 (=> (not res!985771) (not e!1477608))))

(assert (=> b!2305650 (= res!985771 lt!855123)))

(declare-fun b!2305651 () Bool)

(assert (=> b!2305651 (= e!1477605 e!1477603)))

(declare-fun res!985773 () Bool)

(assert (=> b!2305651 (=> (not res!985773) (not e!1477603))))

(assert (=> b!2305651 (= res!985773 (not lt!855123))))

(declare-fun bm!137152 () Bool)

(assert (=> bm!137152 (= call!137157 (isEmpty!15689 (list!10824 (charsOf!2789 (head!5052 tokens!456)))))))

(assert (= (and d!682002 c!365514) b!2305641))

(assert (= (and d!682002 (not c!365514)) b!2305640))

(assert (= (and d!682002 c!365513) b!2305647))

(assert (= (and d!682002 (not c!365513)) b!2305648))

(assert (= (and b!2305648 c!365515) b!2305649))

(assert (= (and b!2305648 (not c!365515)) b!2305645))

(assert (= (and b!2305645 (not res!985770)) b!2305650))

(assert (= (and b!2305650 res!985771) b!2305638))

(assert (= (and b!2305638 res!985774) b!2305646))

(assert (= (and b!2305646 res!985767) b!2305643))

(assert (= (and b!2305650 (not res!985768)) b!2305651))

(assert (= (and b!2305651 res!985773) b!2305644))

(assert (= (and b!2305644 (not res!985772)) b!2305642))

(assert (= (and b!2305642 (not res!985769)) b!2305639))

(assert (= (or b!2305647 b!2305638 b!2305644) bm!137152))

(declare-fun m!2732787 () Bool)

(assert (=> b!2305641 m!2732787))

(assert (=> bm!137152 m!2732665))

(declare-fun m!2732789 () Bool)

(assert (=> bm!137152 m!2732789))

(assert (=> b!2305640 m!2732665))

(declare-fun m!2732791 () Bool)

(assert (=> b!2305640 m!2732791))

(assert (=> b!2305640 m!2732791))

(declare-fun m!2732793 () Bool)

(assert (=> b!2305640 m!2732793))

(assert (=> b!2305640 m!2732665))

(declare-fun m!2732795 () Bool)

(assert (=> b!2305640 m!2732795))

(assert (=> b!2305640 m!2732793))

(assert (=> b!2305640 m!2732795))

(declare-fun m!2732797 () Bool)

(assert (=> b!2305640 m!2732797))

(assert (=> b!2305642 m!2732665))

(assert (=> b!2305642 m!2732795))

(assert (=> b!2305642 m!2732795))

(declare-fun m!2732799 () Bool)

(assert (=> b!2305642 m!2732799))

(assert (=> b!2305646 m!2732665))

(assert (=> b!2305646 m!2732795))

(assert (=> b!2305646 m!2732795))

(assert (=> b!2305646 m!2732799))

(assert (=> b!2305643 m!2732665))

(assert (=> b!2305643 m!2732791))

(assert (=> b!2305639 m!2732665))

(assert (=> b!2305639 m!2732791))

(assert (=> d!682002 m!2732665))

(assert (=> d!682002 m!2732789))

(declare-fun m!2732801 () Bool)

(assert (=> d!682002 m!2732801))

(assert (=> b!2305493 d!682002))

(declare-fun d!682028 () Bool)

(declare-fun list!10827 (Conc!8950) List!27537)

(assert (=> d!682028 (= (list!10824 (charsOf!2789 (head!5052 tokens!456))) (list!10827 (c!365480 (charsOf!2789 (head!5052 tokens!456)))))))

(declare-fun bs!457927 () Bool)

(assert (= bs!457927 d!682028))

(declare-fun m!2732803 () Bool)

(assert (=> bs!457927 m!2732803))

(assert (=> b!2305493 d!682028))

(declare-fun d!682030 () Bool)

(declare-fun lt!855126 () BalanceConc!17628)

(assert (=> d!682030 (= (list!10824 lt!855126) (originalCharacters!5171 (head!5052 tokens!456)))))

(assert (=> d!682030 (= lt!855126 (dynLambda!11939 (toChars!6074 (transformation!4401 (rule!6749 (head!5052 tokens!456)))) (value!139248 (head!5052 tokens!456))))))

(assert (=> d!682030 (= (charsOf!2789 (head!5052 tokens!456)) lt!855126)))

(declare-fun b_lambda!73463 () Bool)

(assert (=> (not b_lambda!73463) (not d!682030)))

(declare-fun t!206357 () Bool)

(declare-fun tb!138031 () Bool)

(assert (=> (and b!2305474 (= (toChars!6074 (transformation!4401 (rule!6749 (h!32845 tokens!456)))) (toChars!6074 (transformation!4401 (rule!6749 (head!5052 tokens!456))))) t!206357) tb!138031))

(declare-fun b!2305652 () Bool)

(declare-fun e!1477609 () Bool)

(declare-fun tp!731494 () Bool)

(assert (=> b!2305652 (= e!1477609 (and (inv!37088 (c!365480 (dynLambda!11939 (toChars!6074 (transformation!4401 (rule!6749 (head!5052 tokens!456)))) (value!139248 (head!5052 tokens!456))))) tp!731494))))

(declare-fun result!168262 () Bool)

(assert (=> tb!138031 (= result!168262 (and (inv!37089 (dynLambda!11939 (toChars!6074 (transformation!4401 (rule!6749 (head!5052 tokens!456)))) (value!139248 (head!5052 tokens!456)))) e!1477609))))

(assert (= tb!138031 b!2305652))

(declare-fun m!2732805 () Bool)

(assert (=> b!2305652 m!2732805))

(declare-fun m!2732807 () Bool)

(assert (=> tb!138031 m!2732807))

(assert (=> d!682030 t!206357))

(declare-fun b_and!184009 () Bool)

(assert (= b_and!183993 (and (=> t!206357 result!168262) b_and!184009)))

(declare-fun tb!138033 () Bool)

(declare-fun t!206359 () Bool)

(assert (=> (and b!2305486 (= (toChars!6074 (transformation!4401 (h!32846 rules!1750))) (toChars!6074 (transformation!4401 (rule!6749 (head!5052 tokens!456))))) t!206359) tb!138033))

(declare-fun result!168264 () Bool)

(assert (= result!168264 result!168262))

(assert (=> d!682030 t!206359))

(declare-fun b_and!184011 () Bool)

(assert (= b_and!183995 (and (=> t!206359 result!168264) b_and!184011)))

(declare-fun tb!138035 () Bool)

(declare-fun t!206361 () Bool)

(assert (=> (and b!2305491 (= (toChars!6074 (transformation!4401 otherR!12)) (toChars!6074 (transformation!4401 (rule!6749 (head!5052 tokens!456))))) t!206361) tb!138035))

(declare-fun result!168266 () Bool)

(assert (= result!168266 result!168262))

(assert (=> d!682030 t!206361))

(declare-fun b_and!184013 () Bool)

(assert (= b_and!183997 (and (=> t!206361 result!168266) b_and!184013)))

(declare-fun tb!138037 () Bool)

(declare-fun t!206363 () Bool)

(assert (=> (and b!2305466 (= (toChars!6074 (transformation!4401 r!2363)) (toChars!6074 (transformation!4401 (rule!6749 (head!5052 tokens!456))))) t!206363) tb!138037))

(declare-fun result!168268 () Bool)

(assert (= result!168268 result!168262))

(assert (=> d!682030 t!206363))

(declare-fun b_and!184015 () Bool)

(assert (= b_and!183999 (and (=> t!206363 result!168268) b_and!184015)))

(declare-fun m!2732809 () Bool)

(assert (=> d!682030 m!2732809))

(declare-fun m!2732811 () Bool)

(assert (=> d!682030 m!2732811))

(assert (=> b!2305493 d!682030))

(declare-fun d!682032 () Bool)

(assert (=> d!682032 (= (head!5052 tokens!456) (h!32845 tokens!456))))

(assert (=> b!2305493 d!682032))

(declare-fun d!682034 () Bool)

(assert (=> d!682034 (= (inv!37081 (tag!4891 otherR!12)) (= (mod (str.len (value!139247 (tag!4891 otherR!12))) 2) 0))))

(assert (=> b!2305463 d!682034))

(declare-fun d!682036 () Bool)

(declare-fun res!985777 () Bool)

(declare-fun e!1477612 () Bool)

(assert (=> d!682036 (=> (not res!985777) (not e!1477612))))

(declare-fun semiInverseModEq!1792 (Int Int) Bool)

(assert (=> d!682036 (= res!985777 (semiInverseModEq!1792 (toChars!6074 (transformation!4401 otherR!12)) (toValue!6215 (transformation!4401 otherR!12))))))

(assert (=> d!682036 (= (inv!37084 (transformation!4401 otherR!12)) e!1477612)))

(declare-fun b!2305655 () Bool)

(declare-fun equivClasses!1711 (Int Int) Bool)

(assert (=> b!2305655 (= e!1477612 (equivClasses!1711 (toChars!6074 (transformation!4401 otherR!12)) (toValue!6215 (transformation!4401 otherR!12))))))

(assert (= (and d!682036 res!985777) b!2305655))

(declare-fun m!2732813 () Bool)

(assert (=> d!682036 m!2732813))

(declare-fun m!2732815 () Bool)

(assert (=> b!2305655 m!2732815))

(assert (=> b!2305463 d!682036))

(declare-fun d!682038 () Bool)

(declare-fun res!985796 () Bool)

(declare-fun e!1477621 () Bool)

(assert (=> d!682038 (=> (not res!985796) (not e!1477621))))

(assert (=> d!682038 (= res!985796 (validRegex!2552 (regex!4401 r!2363)))))

(assert (=> d!682038 (= (ruleValid!1491 thiss!16613 r!2363) e!1477621)))

(declare-fun b!2305678 () Bool)

(declare-fun res!985797 () Bool)

(assert (=> b!2305678 (=> (not res!985797) (not e!1477621))))

(assert (=> b!2305678 (= res!985797 (not (nullable!1890 (regex!4401 r!2363))))))

(declare-fun b!2305679 () Bool)

(assert (=> b!2305679 (= e!1477621 (not (= (tag!4891 r!2363) (String!29920 ""))))))

(assert (= (and d!682038 res!985796) b!2305678))

(assert (= (and b!2305678 res!985797) b!2305679))

(assert (=> d!682038 m!2732801))

(assert (=> b!2305678 m!2732787))

(assert (=> b!2305484 d!682038))

(declare-fun d!682040 () Bool)

(assert (=> d!682040 (ruleValid!1491 thiss!16613 r!2363)))

(declare-fun lt!855144 () Unit!40354)

(declare-fun choose!13473 (LexerInterface!3998 Rule!8602 List!27539) Unit!40354)

(assert (=> d!682040 (= lt!855144 (choose!13473 thiss!16613 r!2363 rules!1750))))

(assert (=> d!682040 (contains!4789 rules!1750 r!2363)))

(assert (=> d!682040 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!896 thiss!16613 r!2363 rules!1750) lt!855144)))

(declare-fun bs!457928 () Bool)

(assert (= bs!457928 d!682040))

(assert (=> bs!457928 m!2732595))

(declare-fun m!2732835 () Bool)

(assert (=> bs!457928 m!2732835))

(assert (=> bs!457928 m!2732681))

(assert (=> b!2305484 d!682040))

(declare-fun d!682042 () Bool)

(declare-fun res!985807 () Bool)

(declare-fun e!1477627 () Bool)

(assert (=> d!682042 (=> (not res!985807) (not e!1477627))))

(declare-fun rulesValid!1634 (LexerInterface!3998 List!27539) Bool)

(assert (=> d!682042 (= res!985807 (rulesValid!1634 thiss!16613 rules!1750))))

(assert (=> d!682042 (= (rulesInvariant!3500 thiss!16613 rules!1750) e!1477627)))

(declare-fun b!2305691 () Bool)

(declare-datatypes ((List!27540 0))(
  ( (Nil!27446) (Cons!27446 (h!32847 String!29919) (t!206412 List!27540)) )
))
(declare-fun noDuplicateTag!1632 (LexerInterface!3998 List!27539 List!27540) Bool)

(assert (=> b!2305691 (= e!1477627 (noDuplicateTag!1632 thiss!16613 rules!1750 Nil!27446))))

(assert (= (and d!682042 res!985807) b!2305691))

(declare-fun m!2732851 () Bool)

(assert (=> d!682042 m!2732851))

(declare-fun m!2732853 () Bool)

(assert (=> b!2305691 m!2732853))

(assert (=> b!2305473 d!682042))

(declare-fun d!682046 () Bool)

(declare-fun lt!855149 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!3706 (List!27539) (InoxSet Rule!8602))

(assert (=> d!682046 (= lt!855149 (select (content!3706 rules!1750) r!2363))))

(declare-fun e!1477646 () Bool)

(assert (=> d!682046 (= lt!855149 e!1477646)))

(declare-fun res!985828 () Bool)

(assert (=> d!682046 (=> (not res!985828) (not e!1477646))))

(assert (=> d!682046 (= res!985828 ((_ is Cons!27445) rules!1750))))

(assert (=> d!682046 (= (contains!4789 rules!1750 r!2363) lt!855149)))

(declare-fun b!2305724 () Bool)

(declare-fun e!1477647 () Bool)

(assert (=> b!2305724 (= e!1477646 e!1477647)))

(declare-fun res!985829 () Bool)

(assert (=> b!2305724 (=> res!985829 e!1477647)))

(assert (=> b!2305724 (= res!985829 (= (h!32846 rules!1750) r!2363))))

(declare-fun b!2305725 () Bool)

(assert (=> b!2305725 (= e!1477647 (contains!4789 (t!206339 rules!1750) r!2363))))

(assert (= (and d!682046 res!985828) b!2305724))

(assert (= (and b!2305724 (not res!985829)) b!2305725))

(declare-fun m!2732855 () Bool)

(assert (=> d!682046 m!2732855))

(declare-fun m!2732857 () Bool)

(assert (=> d!682046 m!2732857))

(declare-fun m!2732859 () Bool)

(assert (=> b!2305725 m!2732859))

(assert (=> b!2305494 d!682046))

(declare-fun d!682048 () Bool)

(assert (=> d!682048 (= r!2363 otherR!12)))

(declare-fun lt!855154 () Unit!40354)

(declare-fun choose!13474 (List!27539 Rule!8602 Rule!8602) Unit!40354)

(assert (=> d!682048 (= lt!855154 (choose!13474 rules!1750 r!2363 otherR!12))))

(assert (=> d!682048 (contains!4789 rules!1750 r!2363)))

(assert (=> d!682048 (= (lemmaSameIndexThenSameElement!194 rules!1750 r!2363 otherR!12) lt!855154)))

(declare-fun bs!457930 () Bool)

(assert (= bs!457930 d!682048))

(declare-fun m!2732887 () Bool)

(assert (=> bs!457930 m!2732887))

(assert (=> bs!457930 m!2732681))

(assert (=> b!2305471 d!682048))

(declare-fun d!682058 () Bool)

(declare-fun lt!855158 () Int)

(assert (=> d!682058 (= lt!855158 (size!21654 (list!10824 (charsOf!2789 (head!5052 tokens!456)))))))

(declare-fun size!21656 (Conc!8950) Int)

(assert (=> d!682058 (= lt!855158 (size!21656 (c!365480 (charsOf!2789 (head!5052 tokens!456)))))))

(assert (=> d!682058 (= (size!21655 (charsOf!2789 (head!5052 tokens!456))) lt!855158)))

(declare-fun bs!457932 () Bool)

(assert (= bs!457932 d!682058))

(assert (=> bs!457932 m!2732653))

(assert (=> bs!457932 m!2732665))

(assert (=> bs!457932 m!2732665))

(declare-fun m!2732891 () Bool)

(assert (=> bs!457932 m!2732891))

(declare-fun m!2732893 () Bool)

(assert (=> bs!457932 m!2732893))

(assert (=> b!2305492 d!682058))

(assert (=> b!2305492 d!682030))

(assert (=> b!2305492 d!682032))

(declare-fun d!682066 () Bool)

(declare-fun lt!855162 () Int)

(assert (=> d!682066 (>= lt!855162 0)))

(declare-fun e!1477668 () Int)

(assert (=> d!682066 (= lt!855162 e!1477668)))

(declare-fun c!365530 () Bool)

(assert (=> d!682066 (= c!365530 ((_ is Nil!27443) otherP!12))))

(assert (=> d!682066 (= (size!21654 otherP!12) lt!855162)))

(declare-fun b!2305755 () Bool)

(assert (=> b!2305755 (= e!1477668 0)))

(declare-fun b!2305756 () Bool)

(assert (=> b!2305756 (= e!1477668 (+ 1 (size!21654 (t!206337 otherP!12))))))

(assert (= (and d!682066 c!365530) b!2305755))

(assert (= (and d!682066 (not c!365530)) b!2305756))

(declare-fun m!2732911 () Bool)

(assert (=> b!2305756 m!2732911))

(assert (=> b!2305492 d!682066))

(declare-fun d!682078 () Bool)

(declare-fun lt!855165 () List!27537)

(assert (=> d!682078 (= (++!6719 lt!855075 lt!855165) input!1722)))

(declare-fun e!1477671 () List!27537)

(assert (=> d!682078 (= lt!855165 e!1477671)))

(declare-fun c!365533 () Bool)

(assert (=> d!682078 (= c!365533 ((_ is Cons!27443) lt!855075))))

(assert (=> d!682078 (>= (size!21654 input!1722) (size!21654 lt!855075))))

(assert (=> d!682078 (= (getSuffix!1170 input!1722 lt!855075) lt!855165)))

(declare-fun b!2305761 () Bool)

(assert (=> b!2305761 (= e!1477671 (getSuffix!1170 (tail!3333 input!1722) (t!206337 lt!855075)))))

(declare-fun b!2305762 () Bool)

(assert (=> b!2305762 (= e!1477671 input!1722)))

(assert (= (and d!682078 c!365533) b!2305761))

(assert (= (and d!682078 (not c!365533)) b!2305762))

(declare-fun m!2732915 () Bool)

(assert (=> d!682078 m!2732915))

(assert (=> d!682078 m!2732695))

(assert (=> d!682078 m!2732641))

(assert (=> b!2305761 m!2732699))

(assert (=> b!2305761 m!2732699))

(declare-fun m!2732917 () Bool)

(assert (=> b!2305761 m!2732917))

(assert (=> b!2305470 d!682078))

(declare-fun d!682082 () Bool)

(assert (=> d!682082 (isPrefix!2391 lt!855075 (++!6719 lt!855075 (_2!16183 lt!855068)))))

(declare-fun lt!855168 () Unit!40354)

(declare-fun choose!13475 (List!27537 List!27537) Unit!40354)

(assert (=> d!682082 (= lt!855168 (choose!13475 lt!855075 (_2!16183 lt!855068)))))

(assert (=> d!682082 (= (lemmaConcatTwoListThenFirstIsPrefix!1584 lt!855075 (_2!16183 lt!855068)) lt!855168)))

(declare-fun bs!457934 () Bool)

(assert (= bs!457934 d!682082))

(assert (=> bs!457934 m!2732633))

(assert (=> bs!457934 m!2732633))

(assert (=> bs!457934 m!2732651))

(declare-fun m!2732919 () Bool)

(assert (=> bs!457934 m!2732919))

(assert (=> b!2305470 d!682082))

(assert (=> b!2305470 d!682066))

(declare-fun d!682084 () Bool)

(assert (=> d!682084 (= (list!10824 (charsOf!2789 (h!32845 tokens!456))) (list!10827 (c!365480 (charsOf!2789 (h!32845 tokens!456)))))))

(declare-fun bs!457935 () Bool)

(assert (= bs!457935 d!682084))

(declare-fun m!2732921 () Bool)

(assert (=> bs!457935 m!2732921))

(assert (=> b!2305470 d!682084))

(declare-fun b!2305766 () Bool)

(declare-fun e!1477673 () Bool)

(assert (=> b!2305766 (= e!1477673 (>= (size!21654 (++!6719 lt!855075 (_2!16183 lt!855068))) (size!21654 lt!855075)))))

(declare-fun d!682086 () Bool)

(assert (=> d!682086 e!1477673))

(declare-fun res!985849 () Bool)

(assert (=> d!682086 (=> res!985849 e!1477673)))

(declare-fun lt!855169 () Bool)

(assert (=> d!682086 (= res!985849 (not lt!855169))))

(declare-fun e!1477674 () Bool)

(assert (=> d!682086 (= lt!855169 e!1477674)))

(declare-fun res!985846 () Bool)

(assert (=> d!682086 (=> res!985846 e!1477674)))

(assert (=> d!682086 (= res!985846 ((_ is Nil!27443) lt!855075))))

(assert (=> d!682086 (= (isPrefix!2391 lt!855075 (++!6719 lt!855075 (_2!16183 lt!855068))) lt!855169)))

(declare-fun b!2305765 () Bool)

(declare-fun e!1477672 () Bool)

(assert (=> b!2305765 (= e!1477672 (isPrefix!2391 (tail!3333 lt!855075) (tail!3333 (++!6719 lt!855075 (_2!16183 lt!855068)))))))

(declare-fun b!2305764 () Bool)

(declare-fun res!985848 () Bool)

(assert (=> b!2305764 (=> (not res!985848) (not e!1477672))))

(assert (=> b!2305764 (= res!985848 (= (head!5054 lt!855075) (head!5054 (++!6719 lt!855075 (_2!16183 lt!855068)))))))

(declare-fun b!2305763 () Bool)

(assert (=> b!2305763 (= e!1477674 e!1477672)))

(declare-fun res!985847 () Bool)

(assert (=> b!2305763 (=> (not res!985847) (not e!1477672))))

(assert (=> b!2305763 (= res!985847 (not ((_ is Nil!27443) (++!6719 lt!855075 (_2!16183 lt!855068)))))))

(assert (= (and d!682086 (not res!985846)) b!2305763))

(assert (= (and b!2305763 res!985847) b!2305764))

(assert (= (and b!2305764 res!985848) b!2305765))

(assert (= (and d!682086 (not res!985849)) b!2305766))

(assert (=> b!2305766 m!2732633))

(declare-fun m!2732923 () Bool)

(assert (=> b!2305766 m!2732923))

(assert (=> b!2305766 m!2732641))

(declare-fun m!2732925 () Bool)

(assert (=> b!2305765 m!2732925))

(assert (=> b!2305765 m!2732633))

(declare-fun m!2732927 () Bool)

(assert (=> b!2305765 m!2732927))

(assert (=> b!2305765 m!2732925))

(assert (=> b!2305765 m!2732927))

(declare-fun m!2732929 () Bool)

(assert (=> b!2305765 m!2732929))

(declare-fun m!2732931 () Bool)

(assert (=> b!2305764 m!2732931))

(assert (=> b!2305764 m!2732633))

(declare-fun m!2732933 () Bool)

(assert (=> b!2305764 m!2732933))

(assert (=> b!2305470 d!682086))

(declare-fun d!682088 () Bool)

(declare-fun lt!855170 () BalanceConc!17628)

(assert (=> d!682088 (= (list!10824 lt!855170) (originalCharacters!5171 (h!32845 tokens!456)))))

(assert (=> d!682088 (= lt!855170 (dynLambda!11939 (toChars!6074 (transformation!4401 (rule!6749 (h!32845 tokens!456)))) (value!139248 (h!32845 tokens!456))))))

(assert (=> d!682088 (= (charsOf!2789 (h!32845 tokens!456)) lt!855170)))

(declare-fun b_lambda!73469 () Bool)

(assert (=> (not b_lambda!73469) (not d!682088)))

(assert (=> d!682088 t!206349))

(declare-fun b_and!184033 () Bool)

(assert (= b_and!184009 (and (=> t!206349 result!168252) b_and!184033)))

(assert (=> d!682088 t!206351))

(declare-fun b_and!184035 () Bool)

(assert (= b_and!184011 (and (=> t!206351 result!168256) b_and!184035)))

(assert (=> d!682088 t!206353))

(declare-fun b_and!184037 () Bool)

(assert (= b_and!184013 (and (=> t!206353 result!168258) b_and!184037)))

(assert (=> d!682088 t!206355))

(declare-fun b_and!184039 () Bool)

(assert (= b_and!184015 (and (=> t!206355 result!168260) b_and!184039)))

(declare-fun m!2732935 () Bool)

(assert (=> d!682088 m!2732935))

(assert (=> d!682088 m!2732735))

(assert (=> b!2305470 d!682088))

(declare-fun d!682090 () Bool)

(declare-fun e!1477679 () Bool)

(assert (=> d!682090 e!1477679))

(declare-fun res!985854 () Bool)

(assert (=> d!682090 (=> (not res!985854) (not e!1477679))))

(declare-fun lt!855176 () List!27537)

(declare-fun content!3707 (List!27537) (InoxSet C!13644))

(assert (=> d!682090 (= res!985854 (= (content!3707 lt!855176) ((_ map or) (content!3707 lt!855075) (content!3707 (_2!16183 lt!855068)))))))

(declare-fun e!1477680 () List!27537)

(assert (=> d!682090 (= lt!855176 e!1477680)))

(declare-fun c!365536 () Bool)

(assert (=> d!682090 (= c!365536 ((_ is Nil!27443) lt!855075))))

(assert (=> d!682090 (= (++!6719 lt!855075 (_2!16183 lt!855068)) lt!855176)))

(declare-fun b!2305777 () Bool)

(declare-fun res!985855 () Bool)

(assert (=> b!2305777 (=> (not res!985855) (not e!1477679))))

(assert (=> b!2305777 (= res!985855 (= (size!21654 lt!855176) (+ (size!21654 lt!855075) (size!21654 (_2!16183 lt!855068)))))))

(declare-fun b!2305775 () Bool)

(assert (=> b!2305775 (= e!1477680 (_2!16183 lt!855068))))

(declare-fun b!2305778 () Bool)

(assert (=> b!2305778 (= e!1477679 (or (not (= (_2!16183 lt!855068) Nil!27443)) (= lt!855176 lt!855075)))))

(declare-fun b!2305776 () Bool)

(assert (=> b!2305776 (= e!1477680 (Cons!27443 (h!32844 lt!855075) (++!6719 (t!206337 lt!855075) (_2!16183 lt!855068))))))

(assert (= (and d!682090 c!365536) b!2305775))

(assert (= (and d!682090 (not c!365536)) b!2305776))

(assert (= (and d!682090 res!985854) b!2305777))

(assert (= (and b!2305777 res!985855) b!2305778))

(declare-fun m!2732939 () Bool)

(assert (=> d!682090 m!2732939))

(declare-fun m!2732941 () Bool)

(assert (=> d!682090 m!2732941))

(declare-fun m!2732943 () Bool)

(assert (=> d!682090 m!2732943))

(declare-fun m!2732945 () Bool)

(assert (=> b!2305777 m!2732945))

(assert (=> b!2305777 m!2732641))

(declare-fun m!2732947 () Bool)

(assert (=> b!2305777 m!2732947))

(declare-fun m!2732949 () Bool)

(assert (=> b!2305776 m!2732949))

(assert (=> b!2305470 d!682090))

(declare-fun d!682094 () Bool)

(assert (=> d!682094 (= (get!8273 (maxPrefix!2254 thiss!16613 rules!1750 input!1722)) (v!30502 (maxPrefix!2254 thiss!16613 rules!1750 input!1722)))))

(assert (=> b!2305470 d!682094))

(declare-fun b!2305829 () Bool)

(declare-fun res!985900 () Bool)

(declare-fun e!1477703 () Bool)

(assert (=> b!2305829 (=> (not res!985900) (not e!1477703))))

(declare-fun lt!855204 () Option!5399)

(assert (=> b!2305829 (= res!985900 (= (list!10824 (charsOf!2789 (_1!16183 (get!8273 lt!855204)))) (originalCharacters!5171 (_1!16183 (get!8273 lt!855204)))))))

(declare-fun d!682096 () Bool)

(declare-fun e!1477704 () Bool)

(assert (=> d!682096 e!1477704))

(declare-fun res!985901 () Bool)

(assert (=> d!682096 (=> res!985901 e!1477704)))

(declare-fun isEmpty!15690 (Option!5399) Bool)

(assert (=> d!682096 (= res!985901 (isEmpty!15690 lt!855204))))

(declare-fun e!1477705 () Option!5399)

(assert (=> d!682096 (= lt!855204 e!1477705)))

(declare-fun c!365542 () Bool)

(assert (=> d!682096 (= c!365542 (and ((_ is Cons!27445) rules!1750) ((_ is Nil!27445) (t!206339 rules!1750))))))

(declare-fun lt!855205 () Unit!40354)

(declare-fun lt!855203 () Unit!40354)

(assert (=> d!682096 (= lt!855205 lt!855203)))

(assert (=> d!682096 (isPrefix!2391 input!1722 input!1722)))

(declare-fun lemmaIsPrefixRefl!1519 (List!27537 List!27537) Unit!40354)

(assert (=> d!682096 (= lt!855203 (lemmaIsPrefixRefl!1519 input!1722 input!1722))))

(declare-fun rulesValidInductive!1561 (LexerInterface!3998 List!27539) Bool)

(assert (=> d!682096 (rulesValidInductive!1561 thiss!16613 rules!1750)))

(assert (=> d!682096 (= (maxPrefix!2254 thiss!16613 rules!1750 input!1722) lt!855204)))

(declare-fun b!2305830 () Bool)

(declare-fun res!985897 () Bool)

(assert (=> b!2305830 (=> (not res!985897) (not e!1477703))))

(assert (=> b!2305830 (= res!985897 (= (value!139248 (_1!16183 (get!8273 lt!855204))) (apply!6663 (transformation!4401 (rule!6749 (_1!16183 (get!8273 lt!855204)))) (seqFromList!3105 (originalCharacters!5171 (_1!16183 (get!8273 lt!855204)))))))))

(declare-fun b!2305831 () Bool)

(assert (=> b!2305831 (= e!1477704 e!1477703)))

(declare-fun res!985898 () Bool)

(assert (=> b!2305831 (=> (not res!985898) (not e!1477703))))

(declare-fun isDefined!4252 (Option!5399) Bool)

(assert (=> b!2305831 (= res!985898 (isDefined!4252 lt!855204))))

(declare-fun b!2305832 () Bool)

(declare-fun res!985902 () Bool)

(assert (=> b!2305832 (=> (not res!985902) (not e!1477703))))

(assert (=> b!2305832 (= res!985902 (< (size!21654 (_2!16183 (get!8273 lt!855204))) (size!21654 input!1722)))))

(declare-fun b!2305833 () Bool)

(declare-fun call!137166 () Option!5399)

(assert (=> b!2305833 (= e!1477705 call!137166)))

(declare-fun b!2305834 () Bool)

(declare-fun lt!855206 () Option!5399)

(declare-fun lt!855207 () Option!5399)

(assert (=> b!2305834 (= e!1477705 (ite (and ((_ is None!5398) lt!855206) ((_ is None!5398) lt!855207)) None!5398 (ite ((_ is None!5398) lt!855207) lt!855206 (ite ((_ is None!5398) lt!855206) lt!855207 (ite (>= (size!21653 (_1!16183 (v!30502 lt!855206))) (size!21653 (_1!16183 (v!30502 lt!855207)))) lt!855206 lt!855207)))))))

(assert (=> b!2305834 (= lt!855206 call!137166)))

(assert (=> b!2305834 (= lt!855207 (maxPrefix!2254 thiss!16613 (t!206339 rules!1750) input!1722))))

(declare-fun b!2305835 () Bool)

(assert (=> b!2305835 (= e!1477703 (contains!4789 rules!1750 (rule!6749 (_1!16183 (get!8273 lt!855204)))))))

(declare-fun b!2305836 () Bool)

(declare-fun res!985896 () Bool)

(assert (=> b!2305836 (=> (not res!985896) (not e!1477703))))

(assert (=> b!2305836 (= res!985896 (= (++!6719 (list!10824 (charsOf!2789 (_1!16183 (get!8273 lt!855204)))) (_2!16183 (get!8273 lt!855204))) input!1722))))

(declare-fun b!2305837 () Bool)

(declare-fun res!985899 () Bool)

(assert (=> b!2305837 (=> (not res!985899) (not e!1477703))))

(assert (=> b!2305837 (= res!985899 (matchR!3006 (regex!4401 (rule!6749 (_1!16183 (get!8273 lt!855204)))) (list!10824 (charsOf!2789 (_1!16183 (get!8273 lt!855204))))))))

(declare-fun bm!137161 () Bool)

(assert (=> bm!137161 (= call!137166 (maxPrefixOneRule!1424 thiss!16613 (h!32846 rules!1750) input!1722))))

(assert (= (and d!682096 c!365542) b!2305833))

(assert (= (and d!682096 (not c!365542)) b!2305834))

(assert (= (or b!2305833 b!2305834) bm!137161))

(assert (= (and d!682096 (not res!985901)) b!2305831))

(assert (= (and b!2305831 res!985898) b!2305829))

(assert (= (and b!2305829 res!985900) b!2305832))

(assert (= (and b!2305832 res!985902) b!2305836))

(assert (= (and b!2305836 res!985896) b!2305830))

(assert (= (and b!2305830 res!985897) b!2305837))

(assert (= (and b!2305837 res!985899) b!2305835))

(declare-fun m!2733011 () Bool)

(assert (=> bm!137161 m!2733011))

(declare-fun m!2733013 () Bool)

(assert (=> b!2305835 m!2733013))

(declare-fun m!2733015 () Bool)

(assert (=> b!2305835 m!2733015))

(assert (=> b!2305829 m!2733013))

(declare-fun m!2733017 () Bool)

(assert (=> b!2305829 m!2733017))

(assert (=> b!2305829 m!2733017))

(declare-fun m!2733019 () Bool)

(assert (=> b!2305829 m!2733019))

(assert (=> b!2305837 m!2733013))

(assert (=> b!2305837 m!2733017))

(assert (=> b!2305837 m!2733017))

(assert (=> b!2305837 m!2733019))

(assert (=> b!2305837 m!2733019))

(declare-fun m!2733021 () Bool)

(assert (=> b!2305837 m!2733021))

(declare-fun m!2733023 () Bool)

(assert (=> d!682096 m!2733023))

(declare-fun m!2733025 () Bool)

(assert (=> d!682096 m!2733025))

(declare-fun m!2733027 () Bool)

(assert (=> d!682096 m!2733027))

(declare-fun m!2733029 () Bool)

(assert (=> d!682096 m!2733029))

(assert (=> b!2305830 m!2733013))

(declare-fun m!2733031 () Bool)

(assert (=> b!2305830 m!2733031))

(assert (=> b!2305830 m!2733031))

(declare-fun m!2733033 () Bool)

(assert (=> b!2305830 m!2733033))

(assert (=> b!2305836 m!2733013))

(assert (=> b!2305836 m!2733017))

(assert (=> b!2305836 m!2733017))

(assert (=> b!2305836 m!2733019))

(assert (=> b!2305836 m!2733019))

(declare-fun m!2733035 () Bool)

(assert (=> b!2305836 m!2733035))

(assert (=> b!2305832 m!2733013))

(declare-fun m!2733037 () Bool)

(assert (=> b!2305832 m!2733037))

(assert (=> b!2305832 m!2732695))

(declare-fun m!2733039 () Bool)

(assert (=> b!2305831 m!2733039))

(declare-fun m!2733041 () Bool)

(assert (=> b!2305834 m!2733041))

(assert (=> b!2305470 d!682096))

(declare-fun d!682114 () Bool)

(declare-fun lt!855211 () Int)

(assert (=> d!682114 (>= lt!855211 0)))

(declare-fun e!1477710 () Int)

(assert (=> d!682114 (= lt!855211 e!1477710)))

(declare-fun c!365543 () Bool)

(assert (=> d!682114 (= c!365543 ((_ is Nil!27443) lt!855075))))

(assert (=> d!682114 (= (size!21654 lt!855075) lt!855211)))

(declare-fun b!2305843 () Bool)

(assert (=> b!2305843 (= e!1477710 0)))

(declare-fun b!2305844 () Bool)

(assert (=> b!2305844 (= e!1477710 (+ 1 (size!21654 (t!206337 lt!855075))))))

(assert (= (and d!682114 c!365543) b!2305843))

(assert (= (and d!682114 (not c!365543)) b!2305844))

(declare-fun m!2733043 () Bool)

(assert (=> b!2305844 m!2733043))

(assert (=> b!2305470 d!682114))

(declare-fun d!682116 () Bool)

(assert (=> d!682116 (= (_2!16183 lt!855068) lt!855074)))

(declare-fun lt!855215 () Unit!40354)

(declare-fun choose!13476 (List!27537 List!27537 List!27537 List!27537 List!27537) Unit!40354)

(assert (=> d!682116 (= lt!855215 (choose!13476 lt!855075 (_2!16183 lt!855068) lt!855075 lt!855074 input!1722))))

(assert (=> d!682116 (isPrefix!2391 lt!855075 input!1722)))

(assert (=> d!682116 (= (lemmaSamePrefixThenSameSuffix!1072 lt!855075 (_2!16183 lt!855068) lt!855075 lt!855074 input!1722) lt!855215)))

(declare-fun bs!457938 () Bool)

(assert (= bs!457938 d!682116))

(declare-fun m!2733049 () Bool)

(assert (=> bs!457938 m!2733049))

(assert (=> bs!457938 m!2732617))

(assert (=> b!2305470 d!682116))

(declare-fun d!682120 () Bool)

(declare-fun list!10829 (Conc!8951) List!27538)

(assert (=> d!682120 (= (list!10825 (_1!16184 lt!855071)) (list!10829 (c!365482 (_1!16184 lt!855071))))))

(declare-fun bs!457939 () Bool)

(assert (= bs!457939 d!682120))

(declare-fun m!2733055 () Bool)

(assert (=> bs!457939 m!2733055))

(assert (=> b!2305488 d!682120))

(declare-fun d!682124 () Bool)

(assert (=> d!682124 (= (list!10824 (_2!16184 lt!855071)) (list!10827 (c!365480 (_2!16184 lt!855071))))))

(declare-fun bs!457940 () Bool)

(assert (= bs!457940 d!682124))

(declare-fun m!2733057 () Bool)

(assert (=> bs!457940 m!2733057))

(assert (=> b!2305488 d!682124))

(declare-fun d!682126 () Bool)

(declare-fun e!1477731 () Bool)

(assert (=> d!682126 e!1477731))

(declare-fun res!985926 () Bool)

(assert (=> d!682126 (=> (not res!985926) (not e!1477731))))

(declare-fun e!1477730 () Bool)

(assert (=> d!682126 (= res!985926 e!1477730)))

(declare-fun c!365549 () Bool)

(declare-fun lt!855221 () tuple2!27348)

(declare-fun size!21659 (BalanceConc!17630) Int)

(assert (=> d!682126 (= c!365549 (> (size!21659 (_1!16184 lt!855221)) 0))))

(declare-fun lexTailRecV2!811 (LexerInterface!3998 List!27539 BalanceConc!17628 BalanceConc!17628 BalanceConc!17628 BalanceConc!17630) tuple2!27348)

(assert (=> d!682126 (= lt!855221 (lexTailRecV2!811 thiss!16613 rules!1750 (seqFromList!3105 input!1722) (BalanceConc!17629 Empty!8950) (seqFromList!3105 input!1722) (BalanceConc!17631 Empty!8951)))))

(assert (=> d!682126 (= (lex!1837 thiss!16613 rules!1750 (seqFromList!3105 input!1722)) lt!855221)))

(declare-fun b!2305873 () Bool)

(declare-fun lexList!1136 (LexerInterface!3998 List!27539 List!27537) tuple2!27350)

(assert (=> b!2305873 (= e!1477731 (= (list!10824 (_2!16184 lt!855221)) (_2!16185 (lexList!1136 thiss!16613 rules!1750 (list!10824 (seqFromList!3105 input!1722))))))))

(declare-fun b!2305874 () Bool)

(declare-fun e!1477729 () Bool)

(assert (=> b!2305874 (= e!1477730 e!1477729)))

(declare-fun res!985927 () Bool)

(assert (=> b!2305874 (= res!985927 (< (size!21655 (_2!16184 lt!855221)) (size!21655 (seqFromList!3105 input!1722))))))

(assert (=> b!2305874 (=> (not res!985927) (not e!1477729))))

(declare-fun b!2305875 () Bool)

(assert (=> b!2305875 (= e!1477730 (= (_2!16184 lt!855221) (seqFromList!3105 input!1722)))))

(declare-fun b!2305876 () Bool)

(declare-fun res!985928 () Bool)

(assert (=> b!2305876 (=> (not res!985928) (not e!1477731))))

(assert (=> b!2305876 (= res!985928 (= (list!10825 (_1!16184 lt!855221)) (_1!16185 (lexList!1136 thiss!16613 rules!1750 (list!10824 (seqFromList!3105 input!1722))))))))

(declare-fun b!2305877 () Bool)

(declare-fun isEmpty!15692 (BalanceConc!17630) Bool)

(assert (=> b!2305877 (= e!1477729 (not (isEmpty!15692 (_1!16184 lt!855221))))))

(assert (= (and d!682126 c!365549) b!2305874))

(assert (= (and d!682126 (not c!365549)) b!2305875))

(assert (= (and b!2305874 res!985927) b!2305877))

(assert (= (and d!682126 res!985926) b!2305876))

(assert (= (and b!2305876 res!985928) b!2305873))

(declare-fun m!2733063 () Bool)

(assert (=> b!2305876 m!2733063))

(assert (=> b!2305876 m!2732605))

(declare-fun m!2733067 () Bool)

(assert (=> b!2305876 m!2733067))

(assert (=> b!2305876 m!2733067))

(declare-fun m!2733071 () Bool)

(assert (=> b!2305876 m!2733071))

(declare-fun m!2733075 () Bool)

(assert (=> d!682126 m!2733075))

(assert (=> d!682126 m!2732605))

(assert (=> d!682126 m!2732605))

(declare-fun m!2733081 () Bool)

(assert (=> d!682126 m!2733081))

(declare-fun m!2733085 () Bool)

(assert (=> b!2305877 m!2733085))

(declare-fun m!2733089 () Bool)

(assert (=> b!2305874 m!2733089))

(assert (=> b!2305874 m!2732605))

(declare-fun m!2733091 () Bool)

(assert (=> b!2305874 m!2733091))

(declare-fun m!2733095 () Bool)

(assert (=> b!2305873 m!2733095))

(assert (=> b!2305873 m!2732605))

(assert (=> b!2305873 m!2733067))

(assert (=> b!2305873 m!2733067))

(assert (=> b!2305873 m!2733071))

(assert (=> b!2305488 d!682126))

(declare-fun d!682132 () Bool)

(declare-fun fromListB!1402 (List!27537) BalanceConc!17628)

(assert (=> d!682132 (= (seqFromList!3105 input!1722) (fromListB!1402 input!1722))))

(declare-fun bs!457944 () Bool)

(assert (= bs!457944 d!682132))

(declare-fun m!2733101 () Bool)

(assert (=> bs!457944 m!2733101))

(assert (=> b!2305488 d!682132))

(assert (=> b!2305477 d!682032))

(declare-fun d!682136 () Bool)

(assert (=> d!682136 (= (inv!37081 (tag!4891 r!2363)) (= (mod (str.len (value!139247 (tag!4891 r!2363))) 2) 0))))

(assert (=> b!2305479 d!682136))

(declare-fun d!682138 () Bool)

(declare-fun res!985929 () Bool)

(declare-fun e!1477743 () Bool)

(assert (=> d!682138 (=> (not res!985929) (not e!1477743))))

(assert (=> d!682138 (= res!985929 (semiInverseModEq!1792 (toChars!6074 (transformation!4401 r!2363)) (toValue!6215 (transformation!4401 r!2363))))))

(assert (=> d!682138 (= (inv!37084 (transformation!4401 r!2363)) e!1477743)))

(declare-fun b!2305891 () Bool)

(assert (=> b!2305891 (= e!1477743 (equivClasses!1711 (toChars!6074 (transformation!4401 r!2363)) (toValue!6215 (transformation!4401 r!2363))))))

(assert (= (and d!682138 res!985929) b!2305891))

(declare-fun m!2733103 () Bool)

(assert (=> d!682138 m!2733103))

(declare-fun m!2733105 () Bool)

(assert (=> b!2305891 m!2733105))

(assert (=> b!2305479 d!682138))

(declare-fun d!682140 () Bool)

(declare-fun lt!855222 () Bool)

(assert (=> d!682140 (= lt!855222 (select (content!3706 rules!1750) otherR!12))))

(declare-fun e!1477746 () Bool)

(assert (=> d!682140 (= lt!855222 e!1477746)))

(declare-fun res!985930 () Bool)

(assert (=> d!682140 (=> (not res!985930) (not e!1477746))))

(assert (=> d!682140 (= res!985930 ((_ is Cons!27445) rules!1750))))

(assert (=> d!682140 (= (contains!4789 rules!1750 otherR!12) lt!855222)))

(declare-fun b!2305892 () Bool)

(declare-fun e!1477747 () Bool)

(assert (=> b!2305892 (= e!1477746 e!1477747)))

(declare-fun res!985931 () Bool)

(assert (=> b!2305892 (=> res!985931 e!1477747)))

(assert (=> b!2305892 (= res!985931 (= (h!32846 rules!1750) otherR!12))))

(declare-fun b!2305893 () Bool)

(assert (=> b!2305893 (= e!1477747 (contains!4789 (t!206339 rules!1750) otherR!12))))

(assert (= (and d!682140 res!985930) b!2305892))

(assert (= (and b!2305892 (not res!985931)) b!2305893))

(assert (=> d!682140 m!2732855))

(declare-fun m!2733107 () Bool)

(assert (=> d!682140 m!2733107))

(declare-fun m!2733109 () Bool)

(assert (=> b!2305893 m!2733109))

(assert (=> b!2305468 d!682140))

(declare-fun d!682142 () Bool)

(assert (=> d!682142 (= (isEmpty!15686 tokens!456) ((_ is Nil!27444) tokens!456))))

(assert (=> b!2305489 d!682142))

(declare-fun b!2305928 () Bool)

(declare-fun e!1477770 () Bool)

(declare-fun inv!15 (TokenValue!4563) Bool)

(assert (=> b!2305928 (= e!1477770 (inv!15 (value!139248 (h!32845 tokens!456))))))

(declare-fun b!2305929 () Bool)

(declare-fun e!1477769 () Bool)

(declare-fun inv!17 (TokenValue!4563) Bool)

(assert (=> b!2305929 (= e!1477769 (inv!17 (value!139248 (h!32845 tokens!456))))))

(declare-fun b!2305930 () Bool)

(declare-fun res!985934 () Bool)

(assert (=> b!2305930 (=> res!985934 e!1477770)))

(assert (=> b!2305930 (= res!985934 (not ((_ is IntegerValue!13691) (value!139248 (h!32845 tokens!456)))))))

(assert (=> b!2305930 (= e!1477769 e!1477770)))

(declare-fun b!2305931 () Bool)

(declare-fun e!1477768 () Bool)

(declare-fun inv!16 (TokenValue!4563) Bool)

(assert (=> b!2305931 (= e!1477768 (inv!16 (value!139248 (h!32845 tokens!456))))))

(declare-fun b!2305927 () Bool)

(assert (=> b!2305927 (= e!1477768 e!1477769)))

(declare-fun c!365554 () Bool)

(assert (=> b!2305927 (= c!365554 ((_ is IntegerValue!13690) (value!139248 (h!32845 tokens!456))))))

(declare-fun d!682144 () Bool)

(declare-fun c!365555 () Bool)

(assert (=> d!682144 (= c!365555 ((_ is IntegerValue!13689) (value!139248 (h!32845 tokens!456))))))

(assert (=> d!682144 (= (inv!21 (value!139248 (h!32845 tokens!456))) e!1477768)))

(assert (= (and d!682144 c!365555) b!2305931))

(assert (= (and d!682144 (not c!365555)) b!2305927))

(assert (= (and b!2305927 c!365554) b!2305929))

(assert (= (and b!2305927 (not c!365554)) b!2305930))

(assert (= (and b!2305930 (not res!985934)) b!2305928))

(declare-fun m!2733119 () Bool)

(assert (=> b!2305928 m!2733119))

(declare-fun m!2733121 () Bool)

(assert (=> b!2305929 m!2733121))

(declare-fun m!2733123 () Bool)

(assert (=> b!2305931 m!2733123))

(assert (=> b!2305478 d!682144))

(declare-fun d!682146 () Bool)

(declare-fun dynLambda!11941 (Int BalanceConc!17628) TokenValue!4563)

(assert (=> d!682146 (= (apply!6663 (transformation!4401 r!2363) (seqFromList!3105 lt!855075)) (dynLambda!11941 (toValue!6215 (transformation!4401 r!2363)) (seqFromList!3105 lt!855075)))))

(declare-fun b_lambda!73471 () Bool)

(assert (=> (not b_lambda!73471) (not d!682146)))

(declare-fun tb!138061 () Bool)

(declare-fun t!206387 () Bool)

(assert (=> (and b!2305474 (= (toValue!6215 (transformation!4401 (rule!6749 (h!32845 tokens!456)))) (toValue!6215 (transformation!4401 r!2363))) t!206387) tb!138061))

(declare-fun result!168302 () Bool)

(assert (=> tb!138061 (= result!168302 (inv!21 (dynLambda!11941 (toValue!6215 (transformation!4401 r!2363)) (seqFromList!3105 lt!855075))))))

(declare-fun m!2733125 () Bool)

(assert (=> tb!138061 m!2733125))

(assert (=> d!682146 t!206387))

(declare-fun b_and!184047 () Bool)

(assert (= b_and!183969 (and (=> t!206387 result!168302) b_and!184047)))

(declare-fun tb!138065 () Bool)

(declare-fun t!206391 () Bool)

(assert (=> (and b!2305486 (= (toValue!6215 (transformation!4401 (h!32846 rules!1750))) (toValue!6215 (transformation!4401 r!2363))) t!206391) tb!138065))

(declare-fun result!168308 () Bool)

(assert (= result!168308 result!168302))

(assert (=> d!682146 t!206391))

(declare-fun b_and!184049 () Bool)

(assert (= b_and!183973 (and (=> t!206391 result!168308) b_and!184049)))

(declare-fun tb!138067 () Bool)

(declare-fun t!206393 () Bool)

(assert (=> (and b!2305491 (= (toValue!6215 (transformation!4401 otherR!12)) (toValue!6215 (transformation!4401 r!2363))) t!206393) tb!138067))

(declare-fun result!168310 () Bool)

(assert (= result!168310 result!168302))

(assert (=> d!682146 t!206393))

(declare-fun b_and!184053 () Bool)

(assert (= b_and!183977 (and (=> t!206393 result!168310) b_and!184053)))

(declare-fun t!206399 () Bool)

(declare-fun tb!138073 () Bool)

(assert (=> (and b!2305466 (= (toValue!6215 (transformation!4401 r!2363)) (toValue!6215 (transformation!4401 r!2363))) t!206399) tb!138073))

(declare-fun result!168316 () Bool)

(assert (= result!168316 result!168302))

(assert (=> d!682146 t!206399))

(declare-fun b_and!184055 () Bool)

(assert (= b_and!183981 (and (=> t!206399 result!168316) b_and!184055)))

(assert (=> d!682146 m!2732609))

(declare-fun m!2733127 () Bool)

(assert (=> d!682146 m!2733127))

(assert (=> b!2305464 d!682146))

(declare-fun b!2305948 () Bool)

(declare-fun e!1477787 () Bool)

(assert (=> b!2305948 (= e!1477787 (>= (size!21654 input!1722) (size!21654 lt!855075)))))

(declare-fun d!682148 () Bool)

(assert (=> d!682148 e!1477787))

(declare-fun res!985938 () Bool)

(assert (=> d!682148 (=> res!985938 e!1477787)))

(declare-fun lt!855223 () Bool)

(assert (=> d!682148 (= res!985938 (not lt!855223))))

(declare-fun e!1477788 () Bool)

(assert (=> d!682148 (= lt!855223 e!1477788)))

(declare-fun res!985935 () Bool)

(assert (=> d!682148 (=> res!985935 e!1477788)))

(assert (=> d!682148 (= res!985935 ((_ is Nil!27443) lt!855075))))

(assert (=> d!682148 (= (isPrefix!2391 lt!855075 input!1722) lt!855223)))

(declare-fun b!2305947 () Bool)

(declare-fun e!1477786 () Bool)

(assert (=> b!2305947 (= e!1477786 (isPrefix!2391 (tail!3333 lt!855075) (tail!3333 input!1722)))))

(declare-fun b!2305946 () Bool)

(declare-fun res!985937 () Bool)

(assert (=> b!2305946 (=> (not res!985937) (not e!1477786))))

(assert (=> b!2305946 (= res!985937 (= (head!5054 lt!855075) (head!5054 input!1722)))))

(declare-fun b!2305945 () Bool)

(assert (=> b!2305945 (= e!1477788 e!1477786)))

(declare-fun res!985936 () Bool)

(assert (=> b!2305945 (=> (not res!985936) (not e!1477786))))

(assert (=> b!2305945 (= res!985936 (not ((_ is Nil!27443) input!1722)))))

(assert (= (and d!682148 (not res!985935)) b!2305945))

(assert (= (and b!2305945 res!985936) b!2305946))

(assert (= (and b!2305946 res!985937) b!2305947))

(assert (= (and d!682148 (not res!985938)) b!2305948))

(assert (=> b!2305948 m!2732695))

(assert (=> b!2305948 m!2732641))

(assert (=> b!2305947 m!2732925))

(assert (=> b!2305947 m!2732699))

(assert (=> b!2305947 m!2732925))

(assert (=> b!2305947 m!2732699))

(declare-fun m!2733133 () Bool)

(assert (=> b!2305947 m!2733133))

(assert (=> b!2305946 m!2732931))

(assert (=> b!2305946 m!2732705))

(assert (=> b!2305464 d!682148))

(declare-fun d!682150 () Bool)

(declare-fun e!1477802 () Bool)

(assert (=> d!682150 e!1477802))

(declare-fun res!985959 () Bool)

(assert (=> d!682150 (=> res!985959 e!1477802)))

(declare-fun lt!855237 () Option!5399)

(assert (=> d!682150 (= res!985959 (isEmpty!15690 lt!855237))))

(declare-fun e!1477803 () Option!5399)

(assert (=> d!682150 (= lt!855237 e!1477803)))

(declare-fun c!365558 () Bool)

(declare-datatypes ((tuple2!27354 0))(
  ( (tuple2!27355 (_1!16187 List!27537) (_2!16187 List!27537)) )
))
(declare-fun lt!855236 () tuple2!27354)

(assert (=> d!682150 (= c!365558 (isEmpty!15689 (_1!16187 lt!855236)))))

(declare-fun findLongestMatch!664 (Regex!6749 List!27537) tuple2!27354)

(assert (=> d!682150 (= lt!855236 (findLongestMatch!664 (regex!4401 r!2363) input!1722))))

(assert (=> d!682150 (ruleValid!1491 thiss!16613 r!2363)))

(assert (=> d!682150 (= (maxPrefixOneRule!1424 thiss!16613 r!2363 input!1722) lt!855237)))

(declare-fun b!2305979 () Bool)

(declare-fun res!985958 () Bool)

(declare-fun e!1477800 () Bool)

(assert (=> b!2305979 (=> (not res!985958) (not e!1477800))))

(assert (=> b!2305979 (= res!985958 (= (++!6719 (list!10824 (charsOf!2789 (_1!16183 (get!8273 lt!855237)))) (_2!16183 (get!8273 lt!855237))) input!1722))))

(declare-fun b!2305980 () Bool)

(assert (=> b!2305980 (= e!1477803 (Some!5398 (tuple2!27347 (Token!8281 (apply!6663 (transformation!4401 r!2363) (seqFromList!3105 (_1!16187 lt!855236))) r!2363 (size!21655 (seqFromList!3105 (_1!16187 lt!855236))) (_1!16187 lt!855236)) (_2!16187 lt!855236))))))

(declare-fun lt!855238 () Unit!40354)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!708 (Regex!6749 List!27537) Unit!40354)

(assert (=> b!2305980 (= lt!855238 (longestMatchIsAcceptedByMatchOrIsEmpty!708 (regex!4401 r!2363) input!1722))))

(declare-fun res!985954 () Bool)

(declare-fun findLongestMatchInner!735 (Regex!6749 List!27537 Int List!27537 List!27537 Int) tuple2!27354)

(assert (=> b!2305980 (= res!985954 (isEmpty!15689 (_1!16187 (findLongestMatchInner!735 (regex!4401 r!2363) Nil!27443 (size!21654 Nil!27443) input!1722 input!1722 (size!21654 input!1722)))))))

(declare-fun e!1477801 () Bool)

(assert (=> b!2305980 (=> res!985954 e!1477801)))

(assert (=> b!2305980 e!1477801))

(declare-fun lt!855235 () Unit!40354)

(assert (=> b!2305980 (= lt!855235 lt!855238)))

(declare-fun lt!855234 () Unit!40354)

(declare-fun lemmaSemiInverse!1082 (TokenValueInjection!8666 BalanceConc!17628) Unit!40354)

(assert (=> b!2305980 (= lt!855234 (lemmaSemiInverse!1082 (transformation!4401 r!2363) (seqFromList!3105 (_1!16187 lt!855236))))))

(declare-fun b!2305981 () Bool)

(declare-fun res!985957 () Bool)

(assert (=> b!2305981 (=> (not res!985957) (not e!1477800))))

(assert (=> b!2305981 (= res!985957 (= (rule!6749 (_1!16183 (get!8273 lt!855237))) r!2363))))

(declare-fun b!2305982 () Bool)

(assert (=> b!2305982 (= e!1477802 e!1477800)))

(declare-fun res!985956 () Bool)

(assert (=> b!2305982 (=> (not res!985956) (not e!1477800))))

(assert (=> b!2305982 (= res!985956 (matchR!3006 (regex!4401 r!2363) (list!10824 (charsOf!2789 (_1!16183 (get!8273 lt!855237))))))))

(declare-fun b!2305983 () Bool)

(assert (=> b!2305983 (= e!1477801 (matchR!3006 (regex!4401 r!2363) (_1!16187 (findLongestMatchInner!735 (regex!4401 r!2363) Nil!27443 (size!21654 Nil!27443) input!1722 input!1722 (size!21654 input!1722)))))))

(declare-fun b!2305984 () Bool)

(declare-fun res!985955 () Bool)

(assert (=> b!2305984 (=> (not res!985955) (not e!1477800))))

(assert (=> b!2305984 (= res!985955 (= (value!139248 (_1!16183 (get!8273 lt!855237))) (apply!6663 (transformation!4401 (rule!6749 (_1!16183 (get!8273 lt!855237)))) (seqFromList!3105 (originalCharacters!5171 (_1!16183 (get!8273 lt!855237)))))))))

(declare-fun b!2305985 () Bool)

(assert (=> b!2305985 (= e!1477803 None!5398)))

(declare-fun b!2305986 () Bool)

(assert (=> b!2305986 (= e!1477800 (= (size!21653 (_1!16183 (get!8273 lt!855237))) (size!21654 (originalCharacters!5171 (_1!16183 (get!8273 lt!855237))))))))

(declare-fun b!2305987 () Bool)

(declare-fun res!985953 () Bool)

(assert (=> b!2305987 (=> (not res!985953) (not e!1477800))))

(assert (=> b!2305987 (= res!985953 (< (size!21654 (_2!16183 (get!8273 lt!855237))) (size!21654 input!1722)))))

(assert (= (and d!682150 c!365558) b!2305985))

(assert (= (and d!682150 (not c!365558)) b!2305980))

(assert (= (and b!2305980 (not res!985954)) b!2305983))

(assert (= (and d!682150 (not res!985959)) b!2305982))

(assert (= (and b!2305982 res!985956) b!2305979))

(assert (= (and b!2305979 res!985958) b!2305987))

(assert (= (and b!2305987 res!985953) b!2305981))

(assert (= (and b!2305981 res!985957) b!2305984))

(assert (= (and b!2305984 res!985955) b!2305986))

(declare-fun m!2733135 () Bool)

(assert (=> b!2305984 m!2733135))

(declare-fun m!2733137 () Bool)

(assert (=> b!2305984 m!2733137))

(assert (=> b!2305984 m!2733137))

(declare-fun m!2733139 () Bool)

(assert (=> b!2305984 m!2733139))

(assert (=> b!2305982 m!2733135))

(declare-fun m!2733141 () Bool)

(assert (=> b!2305982 m!2733141))

(assert (=> b!2305982 m!2733141))

(declare-fun m!2733143 () Bool)

(assert (=> b!2305982 m!2733143))

(assert (=> b!2305982 m!2733143))

(declare-fun m!2733145 () Bool)

(assert (=> b!2305982 m!2733145))

(declare-fun m!2733147 () Bool)

(assert (=> b!2305980 m!2733147))

(assert (=> b!2305980 m!2732695))

(declare-fun m!2733149 () Bool)

(assert (=> b!2305980 m!2733149))

(declare-fun m!2733151 () Bool)

(assert (=> b!2305980 m!2733151))

(declare-fun m!2733153 () Bool)

(assert (=> b!2305980 m!2733153))

(declare-fun m!2733155 () Bool)

(assert (=> b!2305980 m!2733155))

(assert (=> b!2305980 m!2733149))

(assert (=> b!2305980 m!2733149))

(declare-fun m!2733157 () Bool)

(assert (=> b!2305980 m!2733157))

(assert (=> b!2305980 m!2733147))

(assert (=> b!2305980 m!2732695))

(declare-fun m!2733159 () Bool)

(assert (=> b!2305980 m!2733159))

(assert (=> b!2305980 m!2733149))

(declare-fun m!2733161 () Bool)

(assert (=> b!2305980 m!2733161))

(assert (=> b!2305981 m!2733135))

(assert (=> b!2305986 m!2733135))

(declare-fun m!2733163 () Bool)

(assert (=> b!2305986 m!2733163))

(assert (=> b!2305979 m!2733135))

(assert (=> b!2305979 m!2733141))

(assert (=> b!2305979 m!2733141))

(assert (=> b!2305979 m!2733143))

(assert (=> b!2305979 m!2733143))

(declare-fun m!2733165 () Bool)

(assert (=> b!2305979 m!2733165))

(declare-fun m!2733167 () Bool)

(assert (=> d!682150 m!2733167))

(declare-fun m!2733169 () Bool)

(assert (=> d!682150 m!2733169))

(declare-fun m!2733171 () Bool)

(assert (=> d!682150 m!2733171))

(assert (=> d!682150 m!2732595))

(assert (=> b!2305987 m!2733135))

(declare-fun m!2733173 () Bool)

(assert (=> b!2305987 m!2733173))

(assert (=> b!2305987 m!2732695))

(assert (=> b!2305983 m!2733147))

(assert (=> b!2305983 m!2732695))

(assert (=> b!2305983 m!2733147))

(assert (=> b!2305983 m!2732695))

(assert (=> b!2305983 m!2733159))

(declare-fun m!2733175 () Bool)

(assert (=> b!2305983 m!2733175))

(assert (=> b!2305464 d!682150))

(declare-fun d!682152 () Bool)

(assert (=> d!682152 (= (maxPrefixOneRule!1424 thiss!16613 r!2363 input!1722) (Some!5398 (tuple2!27347 (Token!8281 (apply!6663 (transformation!4401 r!2363) (seqFromList!3105 lt!855075)) r!2363 (size!21654 lt!855075) lt!855075) (_2!16183 lt!855068))))))

(declare-fun lt!855241 () Unit!40354)

(declare-fun choose!13477 (LexerInterface!3998 List!27539 List!27537 List!27537 List!27537 Rule!8602) Unit!40354)

(assert (=> d!682152 (= lt!855241 (choose!13477 thiss!16613 rules!1750 lt!855075 input!1722 (_2!16183 lt!855068) r!2363))))

(assert (=> d!682152 (not (isEmpty!15685 rules!1750))))

(assert (=> d!682152 (= (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!597 thiss!16613 rules!1750 lt!855075 input!1722 (_2!16183 lt!855068) r!2363) lt!855241)))

(declare-fun bs!457945 () Bool)

(assert (= bs!457945 d!682152))

(assert (=> bs!457945 m!2732625))

(assert (=> bs!457945 m!2732615))

(assert (=> bs!457945 m!2732609))

(assert (=> bs!457945 m!2732609))

(assert (=> bs!457945 m!2732611))

(assert (=> bs!457945 m!2732641))

(declare-fun m!2733177 () Bool)

(assert (=> bs!457945 m!2733177))

(assert (=> b!2305464 d!682152))

(declare-fun d!682154 () Bool)

(assert (=> d!682154 (= (seqFromList!3105 lt!855075) (fromListB!1402 lt!855075))))

(declare-fun bs!457946 () Bool)

(assert (= bs!457946 d!682154))

(declare-fun m!2733179 () Bool)

(assert (=> bs!457946 m!2733179))

(assert (=> b!2305464 d!682154))

(declare-fun d!682156 () Bool)

(assert (=> d!682156 (= (inv!37081 (tag!4891 (rule!6749 (h!32845 tokens!456)))) (= (mod (str.len (value!139247 (tag!4891 (rule!6749 (h!32845 tokens!456))))) 2) 0))))

(assert (=> b!2305485 d!682156))

(declare-fun d!682158 () Bool)

(declare-fun res!985960 () Bool)

(declare-fun e!1477804 () Bool)

(assert (=> d!682158 (=> (not res!985960) (not e!1477804))))

(assert (=> d!682158 (= res!985960 (semiInverseModEq!1792 (toChars!6074 (transformation!4401 (rule!6749 (h!32845 tokens!456)))) (toValue!6215 (transformation!4401 (rule!6749 (h!32845 tokens!456))))))))

(assert (=> d!682158 (= (inv!37084 (transformation!4401 (rule!6749 (h!32845 tokens!456)))) e!1477804)))

(declare-fun b!2305988 () Bool)

(assert (=> b!2305988 (= e!1477804 (equivClasses!1711 (toChars!6074 (transformation!4401 (rule!6749 (h!32845 tokens!456)))) (toValue!6215 (transformation!4401 (rule!6749 (h!32845 tokens!456))))))))

(assert (= (and d!682158 res!985960) b!2305988))

(declare-fun m!2733181 () Bool)

(assert (=> d!682158 m!2733181))

(declare-fun m!2733183 () Bool)

(assert (=> b!2305988 m!2733183))

(assert (=> b!2305485 d!682158))

(declare-fun d!682160 () Bool)

(assert (=> d!682160 (= (inv!37081 (tag!4891 (h!32846 rules!1750))) (= (mod (str.len (value!139247 (tag!4891 (h!32846 rules!1750)))) 2) 0))))

(assert (=> b!2305487 d!682160))

(declare-fun d!682162 () Bool)

(declare-fun res!985961 () Bool)

(declare-fun e!1477805 () Bool)

(assert (=> d!682162 (=> (not res!985961) (not e!1477805))))

(assert (=> d!682162 (= res!985961 (semiInverseModEq!1792 (toChars!6074 (transformation!4401 (h!32846 rules!1750))) (toValue!6215 (transformation!4401 (h!32846 rules!1750)))))))

(assert (=> d!682162 (= (inv!37084 (transformation!4401 (h!32846 rules!1750))) e!1477805)))

(declare-fun b!2305989 () Bool)

(assert (=> b!2305989 (= e!1477805 (equivClasses!1711 (toChars!6074 (transformation!4401 (h!32846 rules!1750))) (toValue!6215 (transformation!4401 (h!32846 rules!1750)))))))

(assert (= (and d!682162 res!985961) b!2305989))

(declare-fun m!2733185 () Bool)

(assert (=> d!682162 m!2733185))

(declare-fun m!2733187 () Bool)

(assert (=> b!2305989 m!2733187))

(assert (=> b!2305487 d!682162))

(declare-fun b!2306001 () Bool)

(declare-fun e!1477812 () Int)

(assert (=> b!2306001 (= e!1477812 (- 1))))

(declare-fun b!2306000 () Bool)

(assert (=> b!2306000 (= e!1477812 (+ 1 (getIndex!414 (t!206339 rules!1750) otherR!12)))))

(declare-fun b!2305998 () Bool)

(declare-fun e!1477811 () Int)

(assert (=> b!2305998 (= e!1477811 0)))

(declare-fun b!2305999 () Bool)

(assert (=> b!2305999 (= e!1477811 e!1477812)))

(declare-fun c!365564 () Bool)

(assert (=> b!2305999 (= c!365564 (and ((_ is Cons!27445) rules!1750) (not (= (h!32846 rules!1750) otherR!12))))))

(declare-fun d!682164 () Bool)

(declare-fun lt!855244 () Int)

(assert (=> d!682164 (>= lt!855244 0)))

(assert (=> d!682164 (= lt!855244 e!1477811)))

(declare-fun c!365563 () Bool)

(assert (=> d!682164 (= c!365563 (and ((_ is Cons!27445) rules!1750) (= (h!32846 rules!1750) otherR!12)))))

(assert (=> d!682164 (contains!4789 rules!1750 otherR!12)))

(assert (=> d!682164 (= (getIndex!414 rules!1750 otherR!12) lt!855244)))

(assert (= (and d!682164 c!365563) b!2305998))

(assert (= (and d!682164 (not c!365563)) b!2305999))

(assert (= (and b!2305999 c!365564) b!2306000))

(assert (= (and b!2305999 (not c!365564)) b!2306001))

(declare-fun m!2733189 () Bool)

(assert (=> b!2306000 m!2733189))

(assert (=> d!682164 m!2732659))

(assert (=> b!2305476 d!682164))

(declare-fun b!2306005 () Bool)

(declare-fun e!1477814 () Int)

(assert (=> b!2306005 (= e!1477814 (- 1))))

(declare-fun b!2306004 () Bool)

(assert (=> b!2306004 (= e!1477814 (+ 1 (getIndex!414 (t!206339 rules!1750) r!2363)))))

(declare-fun b!2306002 () Bool)

(declare-fun e!1477813 () Int)

(assert (=> b!2306002 (= e!1477813 0)))

(declare-fun b!2306003 () Bool)

(assert (=> b!2306003 (= e!1477813 e!1477814)))

(declare-fun c!365566 () Bool)

(assert (=> b!2306003 (= c!365566 (and ((_ is Cons!27445) rules!1750) (not (= (h!32846 rules!1750) r!2363))))))

(declare-fun d!682166 () Bool)

(declare-fun lt!855245 () Int)

(assert (=> d!682166 (>= lt!855245 0)))

(assert (=> d!682166 (= lt!855245 e!1477813)))

(declare-fun c!365565 () Bool)

(assert (=> d!682166 (= c!365565 (and ((_ is Cons!27445) rules!1750) (= (h!32846 rules!1750) r!2363)))))

(assert (=> d!682166 (contains!4789 rules!1750 r!2363)))

(assert (=> d!682166 (= (getIndex!414 rules!1750 r!2363) lt!855245)))

(assert (= (and d!682166 c!365565) b!2306002))

(assert (= (and d!682166 (not c!365565)) b!2306003))

(assert (= (and b!2306003 c!365566) b!2306004))

(assert (= (and b!2306003 (not c!365566)) b!2306005))

(declare-fun m!2733191 () Bool)

(assert (=> b!2306004 m!2733191))

(assert (=> d!682166 m!2732681))

(assert (=> b!2305476 d!682166))

(declare-fun d!682168 () Bool)

(declare-fun res!985962 () Bool)

(declare-fun e!1477815 () Bool)

(assert (=> d!682168 (=> (not res!985962) (not e!1477815))))

(assert (=> d!682168 (= res!985962 (validRegex!2552 (regex!4401 otherR!12)))))

(assert (=> d!682168 (= (ruleValid!1491 thiss!16613 otherR!12) e!1477815)))

(declare-fun b!2306006 () Bool)

(declare-fun res!985963 () Bool)

(assert (=> b!2306006 (=> (not res!985963) (not e!1477815))))

(assert (=> b!2306006 (= res!985963 (not (nullable!1890 (regex!4401 otherR!12))))))

(declare-fun b!2306007 () Bool)

(assert (=> b!2306007 (= e!1477815 (not (= (tag!4891 otherR!12) (String!29920 ""))))))

(assert (= (and d!682168 res!985962) b!2306006))

(assert (= (and b!2306006 res!985963) b!2306007))

(declare-fun m!2733193 () Bool)

(assert (=> d!682168 m!2733193))

(declare-fun m!2733195 () Bool)

(assert (=> b!2306006 m!2733195))

(assert (=> b!2305476 d!682168))

(declare-fun d!682170 () Bool)

(assert (=> d!682170 (ruleValid!1491 thiss!16613 otherR!12)))

(declare-fun lt!855246 () Unit!40354)

(assert (=> d!682170 (= lt!855246 (choose!13473 thiss!16613 otherR!12 rules!1750))))

(assert (=> d!682170 (contains!4789 rules!1750 otherR!12)))

(assert (=> d!682170 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!896 thiss!16613 otherR!12 rules!1750) lt!855246)))

(declare-fun bs!457947 () Bool)

(assert (= bs!457947 d!682170))

(assert (=> bs!457947 m!2732591))

(declare-fun m!2733197 () Bool)

(assert (=> bs!457947 m!2733197))

(assert (=> bs!457947 m!2732659))

(assert (=> b!2305476 d!682170))

(declare-fun d!682172 () Bool)

(assert (=> d!682172 (= (isEmpty!15685 rules!1750) ((_ is Nil!27445) rules!1750))))

(assert (=> b!2305465 d!682172))

(declare-fun b!2306021 () Bool)

(declare-fun b_free!69717 () Bool)

(declare-fun b_next!70421 () Bool)

(assert (=> b!2306021 (= b_free!69717 (not b_next!70421))))

(declare-fun tb!138075 () Bool)

(declare-fun t!206401 () Bool)

(assert (=> (and b!2306021 (= (toValue!6215 (transformation!4401 (rule!6749 (h!32845 (t!206338 tokens!456))))) (toValue!6215 (transformation!4401 r!2363))) t!206401) tb!138075))

(declare-fun result!168320 () Bool)

(assert (= result!168320 result!168302))

(assert (=> d!682146 t!206401))

(declare-fun tp!731573 () Bool)

(declare-fun b_and!184057 () Bool)

(assert (=> b!2306021 (= tp!731573 (and (=> t!206401 result!168320) b_and!184057))))

(declare-fun b_free!69719 () Bool)

(declare-fun b_next!70423 () Bool)

(assert (=> b!2306021 (= b_free!69719 (not b_next!70423))))

(declare-fun t!206403 () Bool)

(declare-fun tb!138077 () Bool)

(assert (=> (and b!2306021 (= (toChars!6074 (transformation!4401 (rule!6749 (h!32845 (t!206338 tokens!456))))) (toChars!6074 (transformation!4401 (rule!6749 (h!32845 tokens!456))))) t!206403) tb!138077))

(declare-fun result!168322 () Bool)

(assert (= result!168322 result!168252))

(assert (=> b!2305559 t!206403))

(declare-fun t!206405 () Bool)

(declare-fun tb!138079 () Bool)

(assert (=> (and b!2306021 (= (toChars!6074 (transformation!4401 (rule!6749 (h!32845 (t!206338 tokens!456))))) (toChars!6074 (transformation!4401 (rule!6749 (head!5052 tokens!456))))) t!206405) tb!138079))

(declare-fun result!168324 () Bool)

(assert (= result!168324 result!168262))

(assert (=> d!682030 t!206405))

(assert (=> d!682088 t!206403))

(declare-fun tp!731572 () Bool)

(declare-fun b_and!184059 () Bool)

(assert (=> b!2306021 (= tp!731572 (and (=> t!206403 result!168322) (=> t!206405 result!168324) b_and!184059))))

(declare-fun tp!731571 () Bool)

(declare-fun e!1477832 () Bool)

(declare-fun e!1477829 () Bool)

(declare-fun b!2306019 () Bool)

(assert (=> b!2306019 (= e!1477832 (and (inv!21 (value!139248 (h!32845 (t!206338 tokens!456)))) e!1477829 tp!731571))))

(declare-fun b!2306020 () Bool)

(declare-fun e!1477831 () Bool)

(declare-fun tp!731569 () Bool)

(assert (=> b!2306020 (= e!1477829 (and tp!731569 (inv!37081 (tag!4891 (rule!6749 (h!32845 (t!206338 tokens!456))))) (inv!37084 (transformation!4401 (rule!6749 (h!32845 (t!206338 tokens!456))))) e!1477831))))

(declare-fun e!1477833 () Bool)

(declare-fun b!2306018 () Bool)

(declare-fun tp!731570 () Bool)

(assert (=> b!2306018 (= e!1477833 (and (inv!37085 (h!32845 (t!206338 tokens!456))) e!1477832 tp!731570))))

(assert (=> b!2306021 (= e!1477831 (and tp!731573 tp!731572))))

(assert (=> b!2305472 (= tp!731473 e!1477833)))

(assert (= b!2306020 b!2306021))

(assert (= b!2306019 b!2306020))

(assert (= b!2306018 b!2306019))

(assert (= (and b!2305472 ((_ is Cons!27444) (t!206338 tokens!456))) b!2306018))

(declare-fun m!2733199 () Bool)

(assert (=> b!2306019 m!2733199))

(declare-fun m!2733201 () Bool)

(assert (=> b!2306020 m!2733201))

(declare-fun m!2733203 () Bool)

(assert (=> b!2306020 m!2733203))

(declare-fun m!2733205 () Bool)

(assert (=> b!2306018 m!2733205))

(declare-fun b!2306026 () Bool)

(declare-fun e!1477836 () Bool)

(declare-fun tp!731576 () Bool)

(assert (=> b!2306026 (= e!1477836 (and tp_is_empty!10719 tp!731576))))

(assert (=> b!2305482 (= tp!731478 e!1477836)))

(assert (= (and b!2305482 ((_ is Cons!27443) (t!206337 otherP!12))) b!2306026))

(declare-fun e!1477839 () Bool)

(assert (=> b!2305463 (= tp!731471 e!1477839)))

(declare-fun b!2306040 () Bool)

(declare-fun tp!731589 () Bool)

(declare-fun tp!731588 () Bool)

(assert (=> b!2306040 (= e!1477839 (and tp!731589 tp!731588))))

(declare-fun b!2306039 () Bool)

(declare-fun tp!731587 () Bool)

(assert (=> b!2306039 (= e!1477839 tp!731587)))

(declare-fun b!2306038 () Bool)

(declare-fun tp!731591 () Bool)

(declare-fun tp!731590 () Bool)

(assert (=> b!2306038 (= e!1477839 (and tp!731591 tp!731590))))

(declare-fun b!2306037 () Bool)

(assert (=> b!2306037 (= e!1477839 tp_is_empty!10719)))

(assert (= (and b!2305463 ((_ is ElementMatch!6749) (regex!4401 otherR!12))) b!2306037))

(assert (= (and b!2305463 ((_ is Concat!11313) (regex!4401 otherR!12))) b!2306038))

(assert (= (and b!2305463 ((_ is Star!6749) (regex!4401 otherR!12))) b!2306039))

(assert (= (and b!2305463 ((_ is Union!6749) (regex!4401 otherR!12))) b!2306040))

(declare-fun b!2306041 () Bool)

(declare-fun e!1477840 () Bool)

(declare-fun tp!731592 () Bool)

(assert (=> b!2306041 (= e!1477840 (and tp_is_empty!10719 tp!731592))))

(assert (=> b!2305480 (= tp!731485 e!1477840)))

(assert (= (and b!2305480 ((_ is Cons!27443) (t!206337 input!1722))) b!2306041))

(declare-fun b!2306052 () Bool)

(declare-fun b_free!69721 () Bool)

(declare-fun b_next!70425 () Bool)

(assert (=> b!2306052 (= b_free!69721 (not b_next!70425))))

(declare-fun t!206407 () Bool)

(declare-fun tb!138081 () Bool)

(assert (=> (and b!2306052 (= (toValue!6215 (transformation!4401 (h!32846 (t!206339 rules!1750)))) (toValue!6215 (transformation!4401 r!2363))) t!206407) tb!138081))

(declare-fun result!168332 () Bool)

(assert (= result!168332 result!168302))

(assert (=> d!682146 t!206407))

(declare-fun b_and!184061 () Bool)

(declare-fun tp!731601 () Bool)

(assert (=> b!2306052 (= tp!731601 (and (=> t!206407 result!168332) b_and!184061))))

(declare-fun b_free!69723 () Bool)

(declare-fun b_next!70427 () Bool)

(assert (=> b!2306052 (= b_free!69723 (not b_next!70427))))

(declare-fun t!206409 () Bool)

(declare-fun tb!138083 () Bool)

(assert (=> (and b!2306052 (= (toChars!6074 (transformation!4401 (h!32846 (t!206339 rules!1750)))) (toChars!6074 (transformation!4401 (rule!6749 (h!32845 tokens!456))))) t!206409) tb!138083))

(declare-fun result!168334 () Bool)

(assert (= result!168334 result!168252))

(assert (=> b!2305559 t!206409))

(declare-fun t!206411 () Bool)

(declare-fun tb!138085 () Bool)

(assert (=> (and b!2306052 (= (toChars!6074 (transformation!4401 (h!32846 (t!206339 rules!1750)))) (toChars!6074 (transformation!4401 (rule!6749 (head!5052 tokens!456))))) t!206411) tb!138085))

(declare-fun result!168336 () Bool)

(assert (= result!168336 result!168262))

(assert (=> d!682030 t!206411))

(assert (=> d!682088 t!206409))

(declare-fun b_and!184063 () Bool)

(declare-fun tp!731602 () Bool)

(assert (=> b!2306052 (= tp!731602 (and (=> t!206409 result!168334) (=> t!206411 result!168336) b_and!184063))))

(declare-fun e!1477849 () Bool)

(assert (=> b!2306052 (= e!1477849 (and tp!731601 tp!731602))))

(declare-fun e!1477852 () Bool)

(declare-fun tp!731604 () Bool)

(declare-fun b!2306051 () Bool)

(assert (=> b!2306051 (= e!1477852 (and tp!731604 (inv!37081 (tag!4891 (h!32846 (t!206339 rules!1750)))) (inv!37084 (transformation!4401 (h!32846 (t!206339 rules!1750)))) e!1477849))))

(declare-fun b!2306050 () Bool)

(declare-fun e!1477850 () Bool)

(declare-fun tp!731603 () Bool)

(assert (=> b!2306050 (= e!1477850 (and e!1477852 tp!731603))))

(assert (=> b!2305467 (= tp!731487 e!1477850)))

(assert (= b!2306051 b!2306052))

(assert (= b!2306050 b!2306051))

(assert (= (and b!2305467 ((_ is Cons!27445) (t!206339 rules!1750))) b!2306050))

(declare-fun m!2733207 () Bool)

(assert (=> b!2306051 m!2733207))

(declare-fun m!2733209 () Bool)

(assert (=> b!2306051 m!2733209))

(declare-fun e!1477853 () Bool)

(assert (=> b!2305479 (= tp!731486 e!1477853)))

(declare-fun b!2306056 () Bool)

(declare-fun tp!731607 () Bool)

(declare-fun tp!731606 () Bool)

(assert (=> b!2306056 (= e!1477853 (and tp!731607 tp!731606))))

(declare-fun b!2306055 () Bool)

(declare-fun tp!731605 () Bool)

(assert (=> b!2306055 (= e!1477853 tp!731605)))

(declare-fun b!2306054 () Bool)

(declare-fun tp!731609 () Bool)

(declare-fun tp!731608 () Bool)

(assert (=> b!2306054 (= e!1477853 (and tp!731609 tp!731608))))

(declare-fun b!2306053 () Bool)

(assert (=> b!2306053 (= e!1477853 tp_is_empty!10719)))

(assert (= (and b!2305479 ((_ is ElementMatch!6749) (regex!4401 r!2363))) b!2306053))

(assert (= (and b!2305479 ((_ is Concat!11313) (regex!4401 r!2363))) b!2306054))

(assert (= (and b!2305479 ((_ is Star!6749) (regex!4401 r!2363))) b!2306055))

(assert (= (and b!2305479 ((_ is Union!6749) (regex!4401 r!2363))) b!2306056))

(declare-fun b!2306057 () Bool)

(declare-fun e!1477854 () Bool)

(declare-fun tp!731610 () Bool)

(assert (=> b!2306057 (= e!1477854 (and tp_is_empty!10719 tp!731610))))

(assert (=> b!2305478 (= tp!731479 e!1477854)))

(assert (= (and b!2305478 ((_ is Cons!27443) (originalCharacters!5171 (h!32845 tokens!456)))) b!2306057))

(declare-fun b!2306058 () Bool)

(declare-fun e!1477855 () Bool)

(declare-fun tp!731611 () Bool)

(assert (=> b!2306058 (= e!1477855 (and tp_is_empty!10719 tp!731611))))

(assert (=> b!2305475 (= tp!731477 e!1477855)))

(assert (= (and b!2305475 ((_ is Cons!27443) (t!206337 suffix!886))) b!2306058))

(declare-fun e!1477856 () Bool)

(assert (=> b!2305485 (= tp!731474 e!1477856)))

(declare-fun b!2306062 () Bool)

(declare-fun tp!731614 () Bool)

(declare-fun tp!731613 () Bool)

(assert (=> b!2306062 (= e!1477856 (and tp!731614 tp!731613))))

(declare-fun b!2306061 () Bool)

(declare-fun tp!731612 () Bool)

(assert (=> b!2306061 (= e!1477856 tp!731612)))

(declare-fun b!2306060 () Bool)

(declare-fun tp!731616 () Bool)

(declare-fun tp!731615 () Bool)

(assert (=> b!2306060 (= e!1477856 (and tp!731616 tp!731615))))

(declare-fun b!2306059 () Bool)

(assert (=> b!2306059 (= e!1477856 tp_is_empty!10719)))

(assert (= (and b!2305485 ((_ is ElementMatch!6749) (regex!4401 (rule!6749 (h!32845 tokens!456))))) b!2306059))

(assert (= (and b!2305485 ((_ is Concat!11313) (regex!4401 (rule!6749 (h!32845 tokens!456))))) b!2306060))

(assert (= (and b!2305485 ((_ is Star!6749) (regex!4401 (rule!6749 (h!32845 tokens!456))))) b!2306061))

(assert (= (and b!2305485 ((_ is Union!6749) (regex!4401 (rule!6749 (h!32845 tokens!456))))) b!2306062))

(declare-fun e!1477857 () Bool)

(assert (=> b!2305487 (= tp!731475 e!1477857)))

(declare-fun b!2306066 () Bool)

(declare-fun tp!731619 () Bool)

(declare-fun tp!731618 () Bool)

(assert (=> b!2306066 (= e!1477857 (and tp!731619 tp!731618))))

(declare-fun b!2306065 () Bool)

(declare-fun tp!731617 () Bool)

(assert (=> b!2306065 (= e!1477857 tp!731617)))

(declare-fun b!2306064 () Bool)

(declare-fun tp!731621 () Bool)

(declare-fun tp!731620 () Bool)

(assert (=> b!2306064 (= e!1477857 (and tp!731621 tp!731620))))

(declare-fun b!2306063 () Bool)

(assert (=> b!2306063 (= e!1477857 tp_is_empty!10719)))

(assert (= (and b!2305487 ((_ is ElementMatch!6749) (regex!4401 (h!32846 rules!1750)))) b!2306063))

(assert (= (and b!2305487 ((_ is Concat!11313) (regex!4401 (h!32846 rules!1750)))) b!2306064))

(assert (= (and b!2305487 ((_ is Star!6749) (regex!4401 (h!32846 rules!1750)))) b!2306065))

(assert (= (and b!2305487 ((_ is Union!6749) (regex!4401 (h!32846 rules!1750)))) b!2306066))

(declare-fun b_lambda!73479 () Bool)

(assert (= b_lambda!73459 (or (and b!2305486 b_free!69699 (= (toChars!6074 (transformation!4401 (h!32846 rules!1750))) (toChars!6074 (transformation!4401 (rule!6749 (h!32845 tokens!456)))))) (and b!2305491 b_free!69703 (= (toChars!6074 (transformation!4401 otherR!12)) (toChars!6074 (transformation!4401 (rule!6749 (h!32845 tokens!456)))))) (and b!2305466 b_free!69707 (= (toChars!6074 (transformation!4401 r!2363)) (toChars!6074 (transformation!4401 (rule!6749 (h!32845 tokens!456)))))) (and b!2306021 b_free!69719 (= (toChars!6074 (transformation!4401 (rule!6749 (h!32845 (t!206338 tokens!456))))) (toChars!6074 (transformation!4401 (rule!6749 (h!32845 tokens!456)))))) (and b!2306052 b_free!69723 (= (toChars!6074 (transformation!4401 (h!32846 (t!206339 rules!1750)))) (toChars!6074 (transformation!4401 (rule!6749 (h!32845 tokens!456)))))) (and b!2305474 b_free!69695) b_lambda!73479)))

(declare-fun b_lambda!73481 () Bool)

(assert (= b_lambda!73471 (or (and b!2305486 b_free!69697 (= (toValue!6215 (transformation!4401 (h!32846 rules!1750))) (toValue!6215 (transformation!4401 r!2363)))) (and b!2305491 b_free!69701 (= (toValue!6215 (transformation!4401 otherR!12)) (toValue!6215 (transformation!4401 r!2363)))) (and b!2306052 b_free!69721 (= (toValue!6215 (transformation!4401 (h!32846 (t!206339 rules!1750)))) (toValue!6215 (transformation!4401 r!2363)))) (and b!2305474 b_free!69693 (= (toValue!6215 (transformation!4401 (rule!6749 (h!32845 tokens!456)))) (toValue!6215 (transformation!4401 r!2363)))) (and b!2306021 b_free!69717 (= (toValue!6215 (transformation!4401 (rule!6749 (h!32845 (t!206338 tokens!456))))) (toValue!6215 (transformation!4401 r!2363)))) (and b!2305466 b_free!69705) b_lambda!73481)))

(declare-fun b_lambda!73483 () Bool)

(assert (= b_lambda!73469 (or (and b!2305486 b_free!69699 (= (toChars!6074 (transformation!4401 (h!32846 rules!1750))) (toChars!6074 (transformation!4401 (rule!6749 (h!32845 tokens!456)))))) (and b!2305491 b_free!69703 (= (toChars!6074 (transformation!4401 otherR!12)) (toChars!6074 (transformation!4401 (rule!6749 (h!32845 tokens!456)))))) (and b!2305466 b_free!69707 (= (toChars!6074 (transformation!4401 r!2363)) (toChars!6074 (transformation!4401 (rule!6749 (h!32845 tokens!456)))))) (and b!2306021 b_free!69719 (= (toChars!6074 (transformation!4401 (rule!6749 (h!32845 (t!206338 tokens!456))))) (toChars!6074 (transformation!4401 (rule!6749 (h!32845 tokens!456)))))) (and b!2306052 b_free!69723 (= (toChars!6074 (transformation!4401 (h!32846 (t!206339 rules!1750)))) (toChars!6074 (transformation!4401 (rule!6749 (h!32845 tokens!456)))))) (and b!2305474 b_free!69695) b_lambda!73483)))

(check-sat (not b_lambda!73463) b_and!184037 (not d!682040) (not b!2305571) (not b!2305691) (not b!2305983) (not d!682096) (not b!2306038) (not b!2305646) (not d!682082) (not b_next!70425) (not d!682116) b_and!184053 (not d!682038) (not b!2305946) (not d!682078) (not b!2305931) (not b!2305678) (not d!682036) (not b!2305766) (not b_next!70409) (not b!2306055) (not b!2305987) (not b!2305761) (not b!2305982) (not b!2305873) (not b!2306057) (not bm!137152) (not b!2306065) (not b!2305643) (not d!682154) (not b!2305989) (not b_next!70427) (not b!2306039) (not b!2305947) (not b!2306050) (not b_next!70421) (not d!682140) (not d!682150) (not b!2305929) (not b_lambda!73483) (not b!2305986) (not b_next!70405) (not b!2305844) (not b!2306018) (not d!682120) (not b!2305874) (not b_next!70401) (not b_next!70407) (not b!2306054) (not b!2305639) (not b!2306060) (not b!2305836) (not b!2305777) b_and!184047 (not b!2305776) (not b!2305837) (not b_next!70399) (not b!2305984) b_and!184033 (not b_next!70411) (not b!2305642) (not b!2305531) (not tb!138031) (not d!682170) (not b!2305979) (not d!682088) (not d!682152) (not b!2305829) (not b!2305835) (not b!2305560) b_and!184063 (not b_next!70423) (not d!682058) (not d!682126) (not b!2305756) (not b!2306058) (not b!2306004) b_and!184055 (not tb!138061) b_and!184035 (not b!2306019) (not b!2305559) (not b!2306056) (not b_lambda!73481) (not b!2305830) (not b!2305725) (not b!2305891) (not d!682042) (not b!2305655) (not d!682166) (not b!2306066) (not b!2306062) tp_is_empty!10719 (not d!682048) b_and!184057 (not d!682168) (not d!682084) (not d!682002) (not b!2306026) (not d!682090) (not b!2305832) (not bm!137161) (not b!2305877) (not d!682132) (not d!682046) (not b!2305640) (not b!2306064) (not b!2306051) (not b!2305529) (not b_lambda!73479) b_and!184039 (not d!682138) (not b_next!70397) (not b!2305652) (not b!2305980) (not d!682124) (not tb!138023) (not b!2305981) (not b!2305948) (not d!682030) (not b!2306000) (not b!2305834) (not b!2305641) (not b!2305988) b_and!184049 (not b!2305928) (not b_next!70403) (not d!682162) (not b!2306041) (not b!2306020) (not d!682158) (not b!2305831) (not b!2305764) (not b!2306040) (not d!682028) b_and!184059 (not d!681990) b_and!184061 (not d!682164) (not b!2305765) (not b!2306006) (not b!2305876) (not b!2306061) (not b!2305530) (not b!2305893))
(check-sat b_and!184037 (not b_next!70425) b_and!184053 (not b_next!70409) (not b_next!70405) b_and!184047 b_and!184057 b_and!184059 b_and!184061 (not b_next!70427) (not b_next!70421) (not b_next!70401) (not b_next!70407) (not b_next!70399) b_and!184033 (not b_next!70411) b_and!184063 (not b_next!70423) b_and!184055 b_and!184035 b_and!184039 (not b_next!70397) b_and!184049 (not b_next!70403))
