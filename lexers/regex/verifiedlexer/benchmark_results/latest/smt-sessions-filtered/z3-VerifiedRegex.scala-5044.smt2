; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!255614 () Bool)

(assert start!255614)

(declare-fun b!2628500 () Bool)

(declare-fun b_free!73965 () Bool)

(declare-fun b_next!74669 () Bool)

(assert (=> b!2628500 (= b_free!73965 (not b_next!74669))))

(declare-fun tp!833349 () Bool)

(declare-fun b_and!192523 () Bool)

(assert (=> b!2628500 (= tp!833349 b_and!192523)))

(declare-fun b_free!73967 () Bool)

(declare-fun b_next!74671 () Bool)

(assert (=> b!2628500 (= b_free!73967 (not b_next!74671))))

(declare-fun tp!833348 () Bool)

(declare-fun b_and!192525 () Bool)

(assert (=> b!2628500 (= tp!833348 b_and!192525)))

(declare-fun b!2628511 () Bool)

(declare-fun b_free!73969 () Bool)

(declare-fun b_next!74673 () Bool)

(assert (=> b!2628511 (= b_free!73969 (not b_next!74673))))

(declare-fun tp!833352 () Bool)

(declare-fun b_and!192527 () Bool)

(assert (=> b!2628511 (= tp!833352 b_and!192527)))

(declare-fun b_free!73971 () Bool)

(declare-fun b_next!74675 () Bool)

(assert (=> b!2628511 (= b_free!73971 (not b_next!74675))))

(declare-fun tp!833350 () Bool)

(declare-fun b_and!192529 () Bool)

(assert (=> b!2628511 (= tp!833350 b_and!192529)))

(declare-fun bs!475661 () Bool)

(declare-fun b!2628496 () Bool)

(declare-fun b!2628513 () Bool)

(assert (= bs!475661 (and b!2628496 b!2628513)))

(declare-fun lambda!98478 () Int)

(declare-fun lambda!98477 () Int)

(assert (=> bs!475661 (not (= lambda!98478 lambda!98477))))

(declare-fun b!2628524 () Bool)

(declare-fun e!1658306 () Bool)

(assert (=> b!2628524 (= e!1658306 true)))

(declare-fun b!2628523 () Bool)

(declare-fun e!1658305 () Bool)

(assert (=> b!2628523 (= e!1658305 e!1658306)))

(declare-fun b!2628522 () Bool)

(declare-fun e!1658304 () Bool)

(assert (=> b!2628522 (= e!1658304 e!1658305)))

(assert (=> b!2628496 e!1658304))

(assert (= b!2628523 b!2628524))

(assert (= b!2628522 b!2628523))

(declare-datatypes ((List!30473 0))(
  ( (Nil!30373) (Cons!30373 (h!35793 (_ BitVec 16)) (t!216146 List!30473)) )
))
(declare-datatypes ((C!15664 0))(
  ( (C!15665 (val!9766 Int)) )
))
(declare-datatypes ((String!34038 0))(
  ( (String!34039 (value!148935 String)) )
))
(declare-datatypes ((Regex!7753 0))(
  ( (ElementMatch!7753 (c!422778 C!15664)) (Concat!12584 (regOne!16018 Regex!7753) (regTwo!16018 Regex!7753)) (EmptyExpr!7753) (Star!7753 (reg!8082 Regex!7753)) (EmptyLang!7753) (Union!7753 (regOne!16019 Regex!7753) (regTwo!16019 Regex!7753)) )
))
(declare-datatypes ((TokenValue!4831 0))(
  ( (FloatLiteralValue!9662 (text!34262 List!30473)) (TokenValueExt!4830 (__x!19495 Int)) (Broken!24155 (value!148936 List!30473)) (Object!4930) (End!4831) (Def!4831) (Underscore!4831) (Match!4831) (Else!4831) (Error!4831) (Case!4831) (If!4831) (Extends!4831) (Abstract!4831) (Class!4831) (Val!4831) (DelimiterValue!9662 (del!4891 List!30473)) (KeywordValue!4837 (value!148937 List!30473)) (CommentValue!9662 (value!148938 List!30473)) (WhitespaceValue!9662 (value!148939 List!30473)) (IndentationValue!4831 (value!148940 List!30473)) (String!34040) (Int32!4831) (Broken!24156 (value!148941 List!30473)) (Boolean!4832) (Unit!44412) (OperatorValue!4834 (op!4891 List!30473)) (IdentifierValue!9662 (value!148942 List!30473)) (IdentifierValue!9663 (value!148943 List!30473)) (WhitespaceValue!9663 (value!148944 List!30473)) (True!9662) (False!9662) (Broken!24157 (value!148945 List!30473)) (Broken!24158 (value!148946 List!30473)) (True!9663) (RightBrace!4831) (RightBracket!4831) (Colon!4831) (Null!4831) (Comma!4831) (LeftBracket!4831) (False!9663) (LeftBrace!4831) (ImaginaryLiteralValue!4831 (text!34263 List!30473)) (StringLiteralValue!14493 (value!148947 List!30473)) (EOFValue!4831 (value!148948 List!30473)) (IdentValue!4831 (value!148949 List!30473)) (DelimiterValue!9663 (value!148950 List!30473)) (DedentValue!4831 (value!148951 List!30473)) (NewLineValue!4831 (value!148952 List!30473)) (IntegerValue!14493 (value!148953 (_ BitVec 32)) (text!34264 List!30473)) (IntegerValue!14494 (value!148954 Int) (text!34265 List!30473)) (Times!4831) (Or!4831) (Equal!4831) (Minus!4831) (Broken!24159 (value!148955 List!30473)) (And!4831) (Div!4831) (LessEqual!4831) (Mod!4831) (Concat!12585) (Not!4831) (Plus!4831) (SpaceValue!4831 (value!148956 List!30473)) (IntegerValue!14495 (value!148957 Int) (text!34266 List!30473)) (StringLiteralValue!14494 (text!34267 List!30473)) (FloatLiteralValue!9663 (text!34268 List!30473)) (BytesLiteralValue!4831 (value!148958 List!30473)) (CommentValue!9663 (value!148959 List!30473)) (StringLiteralValue!14495 (value!148960 List!30473)) (ErrorTokenValue!4831 (msg!4892 List!30473)) )
))
(declare-datatypes ((List!30474 0))(
  ( (Nil!30374) (Cons!30374 (h!35794 C!15664) (t!216147 List!30474)) )
))
(declare-datatypes ((IArray!18925 0))(
  ( (IArray!18926 (innerList!9520 List!30474)) )
))
(declare-datatypes ((Conc!9460 0))(
  ( (Node!9460 (left!23428 Conc!9460) (right!23758 Conc!9460) (csize!19150 Int) (cheight!9671 Int)) (Leaf!14505 (xs!12460 IArray!18925) (csize!19151 Int)) (Empty!9460) )
))
(declare-datatypes ((BalanceConc!18534 0))(
  ( (BalanceConc!18535 (c!422779 Conc!9460)) )
))
(declare-datatypes ((TokenValueInjection!9102 0))(
  ( (TokenValueInjection!9103 (toValue!6523 Int) (toChars!6382 Int)) )
))
(declare-datatypes ((Rule!9018 0))(
  ( (Rule!9019 (regex!4609 Regex!7753) (tag!5103 String!34038) (isSeparator!4609 Bool) (transformation!4609 TokenValueInjection!9102)) )
))
(declare-datatypes ((List!30475 0))(
  ( (Nil!30375) (Cons!30375 (h!35795 Rule!9018) (t!216148 List!30475)) )
))
(declare-fun rules!1726 () List!30475)

(get-info :version)

(assert (= (and b!2628496 ((_ is Cons!30375) rules!1726)) b!2628522))

(declare-fun order!16355 () Int)

(declare-fun order!16357 () Int)

(declare-fun dynLambda!12969 (Int Int) Int)

(declare-fun dynLambda!12970 (Int Int) Int)

(assert (=> b!2628524 (< (dynLambda!12969 order!16355 (toValue!6523 (transformation!4609 (h!35795 rules!1726)))) (dynLambda!12970 order!16357 lambda!98478))))

(declare-fun order!16359 () Int)

(declare-fun dynLambda!12971 (Int Int) Int)

(assert (=> b!2628524 (< (dynLambda!12971 order!16359 (toChars!6382 (transformation!4609 (h!35795 rules!1726)))) (dynLambda!12970 order!16357 lambda!98478))))

(assert (=> b!2628496 true))

(declare-fun b!2628494 () Bool)

(declare-fun e!1658295 () Bool)

(declare-fun e!1658284 () Bool)

(assert (=> b!2628494 (= e!1658295 (not e!1658284))))

(declare-fun res!1106430 () Bool)

(assert (=> b!2628494 (=> res!1106430 e!1658284)))

(declare-datatypes ((Token!8688 0))(
  ( (Token!8689 (value!148961 TokenValue!4831) (rule!6991 Rule!9018) (size!23500 Int) (originalCharacters!5375 List!30474)) )
))
(declare-datatypes ((List!30476 0))(
  ( (Nil!30376) (Cons!30376 (h!35796 Token!8688) (t!216149 List!30476)) )
))
(declare-datatypes ((IArray!18927 0))(
  ( (IArray!18928 (innerList!9521 List!30476)) )
))
(declare-datatypes ((Conc!9461 0))(
  ( (Node!9461 (left!23429 Conc!9461) (right!23759 Conc!9461) (csize!19152 Int) (cheight!9672 Int)) (Leaf!14506 (xs!12461 IArray!18927) (csize!19153 Int)) (Empty!9461) )
))
(declare-datatypes ((BalanceConc!18536 0))(
  ( (BalanceConc!18537 (c!422780 Conc!9461)) )
))
(declare-fun v!6381 () BalanceConc!18536)

(declare-fun lt!924555 () Token!8688)

(declare-fun contains!5720 (BalanceConc!18536 Token!8688) Bool)

(assert (=> b!2628494 (= res!1106430 (not (contains!5720 v!6381 lt!924555)))))

(declare-fun from!862 () Int)

(declare-fun apply!7200 (BalanceConc!18536 Int) Token!8688)

(assert (=> b!2628494 (= lt!924555 (apply!7200 v!6381 from!862))))

(declare-fun lt!924559 () List!30476)

(declare-fun lt!924556 () List!30476)

(declare-fun tail!4246 (List!30476) List!30476)

(declare-fun drop!1605 (List!30476 Int) List!30476)

(assert (=> b!2628494 (= (tail!4246 lt!924559) (drop!1605 lt!924556 (+ 1 from!862)))))

(declare-datatypes ((Unit!44413 0))(
  ( (Unit!44414) )
))
(declare-fun lt!924563 () Unit!44413)

(declare-fun lemmaDropTail!794 (List!30476 Int) Unit!44413)

(assert (=> b!2628494 (= lt!924563 (lemmaDropTail!794 lt!924556 from!862))))

(declare-fun head!6008 (List!30476) Token!8688)

(declare-fun apply!7201 (List!30476 Int) Token!8688)

(assert (=> b!2628494 (= (head!6008 lt!924559) (apply!7201 lt!924556 from!862))))

(assert (=> b!2628494 (= lt!924559 (drop!1605 lt!924556 from!862))))

(declare-fun lt!924562 () Unit!44413)

(declare-fun lemmaDropApply!820 (List!30476 Int) Unit!44413)

(assert (=> b!2628494 (= lt!924562 (lemmaDropApply!820 lt!924556 from!862))))

(declare-fun b!2628495 () Bool)

(declare-fun e!1658291 () Bool)

(assert (=> b!2628495 (= e!1658291 e!1658295)))

(declare-fun res!1106429 () Bool)

(assert (=> b!2628495 (=> (not res!1106429) (not e!1658295))))

(declare-fun lt!924554 () Int)

(assert (=> b!2628495 (= res!1106429 (< from!862 lt!924554))))

(declare-fun lt!924565 () Unit!44413)

(declare-fun lemmaContentSubsetPreservesForall!278 (List!30476 List!30476 Int) Unit!44413)

(declare-fun dropList!912 (BalanceConc!18536 Int) List!30476)

(assert (=> b!2628495 (= lt!924565 (lemmaContentSubsetPreservesForall!278 lt!924556 (dropList!912 v!6381 from!862) lambda!98477))))

(declare-fun list!11410 (BalanceConc!18536) List!30476)

(assert (=> b!2628495 (= lt!924556 (list!11410 v!6381))))

(declare-fun e!1658288 () Bool)

(assert (=> b!2628496 (= e!1658284 e!1658288)))

(declare-fun res!1106441 () Bool)

(assert (=> b!2628496 (=> res!1106441 e!1658288)))

(declare-datatypes ((tuple2!29912 0))(
  ( (tuple2!29913 (_1!17498 Token!8688) (_2!17498 BalanceConc!18534)) )
))
(declare-datatypes ((Option!6000 0))(
  ( (None!5999) (Some!5999 (v!32386 tuple2!29912)) )
))
(declare-fun lt!924561 () Option!6000)

(declare-fun lt!924552 () Bool)

(assert (=> b!2628496 (= res!1106441 (or (and (not lt!924552) (= (_1!17498 (v!32386 lt!924561)) lt!924555)) (and (not lt!924552) (not (= (_1!17498 (v!32386 lt!924561)) lt!924555))) (not ((_ is None!5999) lt!924561))))))

(assert (=> b!2628496 (= lt!924552 (not ((_ is Some!5999) lt!924561)))))

(declare-datatypes ((LexerInterface!4206 0))(
  ( (LexerInterfaceExt!4203 (__x!19496 Int)) (Lexer!4204) )
))
(declare-fun thiss!14197 () LexerInterface!4206)

(declare-fun separatorToken!156 () Token!8688)

(declare-fun maxPrefixZipperSequence!936 (LexerInterface!4206 List!30475 BalanceConc!18534) Option!6000)

(declare-fun ++!7395 (BalanceConc!18534 BalanceConc!18534) BalanceConc!18534)

(declare-fun charsOf!2900 (Token!8688) BalanceConc!18534)

(declare-fun printWithSeparatorTokenWhenNeededRec!484 (LexerInterface!4206 List!30475 BalanceConc!18536 Token!8688 Int) BalanceConc!18534)

(assert (=> b!2628496 (= lt!924561 (maxPrefixZipperSequence!936 thiss!14197 rules!1726 (++!7395 (charsOf!2900 lt!924555) (printWithSeparatorTokenWhenNeededRec!484 thiss!14197 rules!1726 v!6381 separatorToken!156 (+ 1 from!862)))))))

(declare-fun lt!924560 () Unit!44413)

(declare-fun forallContained!965 (List!30476 Int Token!8688) Unit!44413)

(assert (=> b!2628496 (= lt!924560 (forallContained!965 lt!924556 lambda!98478 lt!924555))))

(declare-fun b!2628497 () Bool)

(declare-fun res!1106435 () Bool)

(assert (=> b!2628497 (=> (not res!1106435) (not e!1658291))))

(declare-fun rulesProduceIndividualToken!1918 (LexerInterface!4206 List!30475 Token!8688) Bool)

(assert (=> b!2628497 (= res!1106435 (rulesProduceIndividualToken!1918 thiss!14197 rules!1726 separatorToken!156))))

(declare-fun b!2628498 () Bool)

(declare-fun e!1658289 () Bool)

(assert (=> b!2628498 (= e!1658289 e!1658291)))

(declare-fun res!1106440 () Bool)

(assert (=> b!2628498 (=> (not res!1106440) (not e!1658291))))

(assert (=> b!2628498 (= res!1106440 (<= from!862 lt!924554))))

(declare-fun size!23501 (BalanceConc!18536) Int)

(assert (=> b!2628498 (= lt!924554 (size!23501 v!6381))))

(declare-fun tp!833354 () Bool)

(declare-fun b!2628499 () Bool)

(declare-fun e!1658297 () Bool)

(declare-fun e!1658294 () Bool)

(declare-fun inv!21 (TokenValue!4831) Bool)

(assert (=> b!2628499 (= e!1658297 (and (inv!21 (value!148961 separatorToken!156)) e!1658294 tp!833354))))

(declare-fun res!1106436 () Bool)

(assert (=> start!255614 (=> (not res!1106436) (not e!1658289))))

(assert (=> start!255614 (= res!1106436 (and ((_ is Lexer!4204) thiss!14197) (>= from!862 0)))))

(assert (=> start!255614 e!1658289))

(assert (=> start!255614 true))

(declare-fun e!1658293 () Bool)

(assert (=> start!255614 e!1658293))

(declare-fun inv!41164 (Token!8688) Bool)

(assert (=> start!255614 (and (inv!41164 separatorToken!156) e!1658297)))

(declare-fun e!1658290 () Bool)

(declare-fun inv!41165 (BalanceConc!18536) Bool)

(assert (=> start!255614 (and (inv!41165 v!6381) e!1658290)))

(declare-fun e!1658292 () Bool)

(assert (=> b!2628500 (= e!1658292 (and tp!833349 tp!833348))))

(declare-fun b!2628501 () Bool)

(declare-fun res!1106432 () Bool)

(assert (=> b!2628501 (=> (not res!1106432) (not e!1658291))))

(declare-fun rulesInvariant!3706 (LexerInterface!4206 List!30475) Bool)

(assert (=> b!2628501 (= res!1106432 (rulesInvariant!3706 thiss!14197 rules!1726))))

(declare-fun b!2628502 () Bool)

(declare-fun res!1106438 () Bool)

(assert (=> b!2628502 (=> (not res!1106438) (not e!1658291))))

(declare-fun isEmpty!17342 (List!30475) Bool)

(assert (=> b!2628502 (= res!1106438 (not (isEmpty!17342 rules!1726)))))

(declare-fun b!2628503 () Bool)

(assert (=> b!2628503 (= e!1658288 true)))

(declare-fun lt!924558 () List!30474)

(declare-fun printList!1146 (LexerInterface!4206 List!30476) List!30474)

(assert (=> b!2628503 (= lt!924558 (printList!1146 thiss!14197 (Cons!30376 lt!924555 Nil!30376)))))

(declare-fun lt!924557 () List!30474)

(declare-fun lt!924564 () BalanceConc!18534)

(declare-fun list!11411 (BalanceConc!18534) List!30474)

(assert (=> b!2628503 (= lt!924557 (list!11411 lt!924564))))

(declare-fun lt!924553 () BalanceConc!18536)

(declare-fun printTailRec!1105 (LexerInterface!4206 BalanceConc!18536 Int BalanceConc!18534) BalanceConc!18534)

(assert (=> b!2628503 (= lt!924564 (printTailRec!1105 thiss!14197 lt!924553 0 (BalanceConc!18535 Empty!9460)))))

(declare-fun print!1616 (LexerInterface!4206 BalanceConc!18536) BalanceConc!18534)

(assert (=> b!2628503 (= lt!924564 (print!1616 thiss!14197 lt!924553))))

(declare-fun singletonSeq!2035 (Token!8688) BalanceConc!18536)

(assert (=> b!2628503 (= lt!924553 (singletonSeq!2035 lt!924555))))

(declare-fun b!2628504 () Bool)

(declare-fun tp!833355 () Bool)

(declare-fun e!1658287 () Bool)

(declare-fun e!1658296 () Bool)

(declare-fun inv!41159 (String!34038) Bool)

(declare-fun inv!41166 (TokenValueInjection!9102) Bool)

(assert (=> b!2628504 (= e!1658296 (and tp!833355 (inv!41159 (tag!5103 (h!35795 rules!1726))) (inv!41166 (transformation!4609 (h!35795 rules!1726))) e!1658287))))

(declare-fun b!2628505 () Bool)

(declare-fun res!1106433 () Bool)

(assert (=> b!2628505 (=> (not res!1106433) (not e!1658291))))

(assert (=> b!2628505 (= res!1106433 (isSeparator!4609 (rule!6991 separatorToken!156)))))

(declare-fun b!2628506 () Bool)

(declare-fun tp!833353 () Bool)

(assert (=> b!2628506 (= e!1658293 (and e!1658296 tp!833353))))

(declare-fun b!2628507 () Bool)

(declare-fun res!1106437 () Bool)

(assert (=> b!2628507 (=> res!1106437 e!1658284)))

(declare-fun contains!5721 (List!30476 Token!8688) Bool)

(assert (=> b!2628507 (= res!1106437 (not (contains!5721 lt!924556 lt!924555)))))

(declare-fun b!2628508 () Bool)

(declare-fun res!1106431 () Bool)

(assert (=> b!2628508 (=> (not res!1106431) (not e!1658291))))

(declare-fun sepAndNonSepRulesDisjointChars!1182 (List!30475 List!30475) Bool)

(assert (=> b!2628508 (= res!1106431 (sepAndNonSepRulesDisjointChars!1182 rules!1726 rules!1726))))

(declare-fun b!2628509 () Bool)

(declare-fun tp!833356 () Bool)

(declare-fun inv!41167 (Conc!9461) Bool)

(assert (=> b!2628509 (= e!1658290 (and (inv!41167 (c!422780 v!6381)) tp!833356))))

(declare-fun b!2628510 () Bool)

(declare-fun res!1106434 () Bool)

(assert (=> b!2628510 (=> (not res!1106434) (not e!1658291))))

(declare-fun rulesProduceEachTokenIndividually!1026 (LexerInterface!4206 List!30475 BalanceConc!18536) Bool)

(assert (=> b!2628510 (= res!1106434 (rulesProduceEachTokenIndividually!1026 thiss!14197 rules!1726 v!6381))))

(assert (=> b!2628511 (= e!1658287 (and tp!833352 tp!833350))))

(declare-fun b!2628512 () Bool)

(declare-fun tp!833351 () Bool)

(assert (=> b!2628512 (= e!1658294 (and tp!833351 (inv!41159 (tag!5103 (rule!6991 separatorToken!156))) (inv!41166 (transformation!4609 (rule!6991 separatorToken!156))) e!1658292))))

(declare-fun res!1106439 () Bool)

(assert (=> b!2628513 (=> (not res!1106439) (not e!1658291))))

(declare-fun forall!6341 (BalanceConc!18536 Int) Bool)

(assert (=> b!2628513 (= res!1106439 (forall!6341 v!6381 lambda!98477))))

(assert (= (and start!255614 res!1106436) b!2628498))

(assert (= (and b!2628498 res!1106440) b!2628502))

(assert (= (and b!2628502 res!1106438) b!2628501))

(assert (= (and b!2628501 res!1106432) b!2628510))

(assert (= (and b!2628510 res!1106434) b!2628497))

(assert (= (and b!2628497 res!1106435) b!2628505))

(assert (= (and b!2628505 res!1106433) b!2628513))

(assert (= (and b!2628513 res!1106439) b!2628508))

(assert (= (and b!2628508 res!1106431) b!2628495))

(assert (= (and b!2628495 res!1106429) b!2628494))

(assert (= (and b!2628494 (not res!1106430)) b!2628507))

(assert (= (and b!2628507 (not res!1106437)) b!2628496))

(assert (= (and b!2628496 (not res!1106441)) b!2628503))

(assert (= b!2628504 b!2628511))

(assert (= b!2628506 b!2628504))

(assert (= (and start!255614 ((_ is Cons!30375) rules!1726)) b!2628506))

(assert (= b!2628512 b!2628500))

(assert (= b!2628499 b!2628512))

(assert (= start!255614 b!2628499))

(assert (= start!255614 b!2628509))

(declare-fun m!2971577 () Bool)

(assert (=> b!2628496 m!2971577))

(declare-fun m!2971579 () Bool)

(assert (=> b!2628496 m!2971579))

(declare-fun m!2971581 () Bool)

(assert (=> b!2628496 m!2971581))

(declare-fun m!2971583 () Bool)

(assert (=> b!2628496 m!2971583))

(assert (=> b!2628496 m!2971577))

(declare-fun m!2971585 () Bool)

(assert (=> b!2628496 m!2971585))

(assert (=> b!2628496 m!2971581))

(assert (=> b!2628496 m!2971583))

(declare-fun m!2971587 () Bool)

(assert (=> b!2628495 m!2971587))

(assert (=> b!2628495 m!2971587))

(declare-fun m!2971589 () Bool)

(assert (=> b!2628495 m!2971589))

(declare-fun m!2971591 () Bool)

(assert (=> b!2628495 m!2971591))

(declare-fun m!2971593 () Bool)

(assert (=> b!2628499 m!2971593))

(declare-fun m!2971595 () Bool)

(assert (=> b!2628513 m!2971595))

(declare-fun m!2971597 () Bool)

(assert (=> start!255614 m!2971597))

(declare-fun m!2971599 () Bool)

(assert (=> start!255614 m!2971599))

(declare-fun m!2971601 () Bool)

(assert (=> b!2628507 m!2971601))

(declare-fun m!2971603 () Bool)

(assert (=> b!2628510 m!2971603))

(declare-fun m!2971605 () Bool)

(assert (=> b!2628509 m!2971605))

(declare-fun m!2971607 () Bool)

(assert (=> b!2628503 m!2971607))

(declare-fun m!2971609 () Bool)

(assert (=> b!2628503 m!2971609))

(declare-fun m!2971611 () Bool)

(assert (=> b!2628503 m!2971611))

(declare-fun m!2971613 () Bool)

(assert (=> b!2628503 m!2971613))

(declare-fun m!2971615 () Bool)

(assert (=> b!2628503 m!2971615))

(declare-fun m!2971617 () Bool)

(assert (=> b!2628508 m!2971617))

(declare-fun m!2971619 () Bool)

(assert (=> b!2628512 m!2971619))

(declare-fun m!2971621 () Bool)

(assert (=> b!2628512 m!2971621))

(declare-fun m!2971623 () Bool)

(assert (=> b!2628497 m!2971623))

(declare-fun m!2971625 () Bool)

(assert (=> b!2628504 m!2971625))

(declare-fun m!2971627 () Bool)

(assert (=> b!2628504 m!2971627))

(declare-fun m!2971629 () Bool)

(assert (=> b!2628494 m!2971629))

(declare-fun m!2971631 () Bool)

(assert (=> b!2628494 m!2971631))

(declare-fun m!2971633 () Bool)

(assert (=> b!2628494 m!2971633))

(declare-fun m!2971635 () Bool)

(assert (=> b!2628494 m!2971635))

(declare-fun m!2971637 () Bool)

(assert (=> b!2628494 m!2971637))

(declare-fun m!2971639 () Bool)

(assert (=> b!2628494 m!2971639))

(declare-fun m!2971641 () Bool)

(assert (=> b!2628494 m!2971641))

(declare-fun m!2971643 () Bool)

(assert (=> b!2628494 m!2971643))

(declare-fun m!2971645 () Bool)

(assert (=> b!2628494 m!2971645))

(declare-fun m!2971647 () Bool)

(assert (=> b!2628501 m!2971647))

(declare-fun m!2971649 () Bool)

(assert (=> b!2628498 m!2971649))

(declare-fun m!2971651 () Bool)

(assert (=> b!2628502 m!2971651))

(check-sat (not b!2628499) (not b!2628508) (not b!2628498) b_and!192527 (not b!2628496) (not b!2628495) (not b!2628497) (not b!2628510) b_and!192525 (not start!255614) (not b!2628506) (not b_next!74673) (not b!2628522) (not b!2628504) (not b!2628503) (not b!2628494) b_and!192523 (not b!2628507) (not b!2628502) (not b!2628509) (not b!2628501) (not b_next!74669) (not b!2628512) (not b!2628513) b_and!192529 (not b_next!74671) (not b_next!74675))
(check-sat (not b_next!74673) b_and!192523 b_and!192527 (not b_next!74669) b_and!192529 b_and!192525 (not b_next!74671) (not b_next!74675))
