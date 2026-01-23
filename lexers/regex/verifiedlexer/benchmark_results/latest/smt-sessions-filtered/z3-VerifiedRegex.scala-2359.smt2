; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!117914 () Bool)

(assert start!117914)

(declare-fun b!1325965 () Bool)

(declare-fun b_free!31995 () Bool)

(declare-fun b_next!32699 () Bool)

(assert (=> b!1325965 (= b_free!31995 (not b_next!32699))))

(declare-fun tp!384393 () Bool)

(declare-fun b_and!88567 () Bool)

(assert (=> b!1325965 (= tp!384393 b_and!88567)))

(declare-fun b_free!31997 () Bool)

(declare-fun b_next!32701 () Bool)

(assert (=> b!1325965 (= b_free!31997 (not b_next!32701))))

(declare-fun tp!384401 () Bool)

(declare-fun b_and!88569 () Bool)

(assert (=> b!1325965 (= tp!384401 b_and!88569)))

(declare-fun b!1325947 () Bool)

(declare-fun b_free!31999 () Bool)

(declare-fun b_next!32703 () Bool)

(assert (=> b!1325947 (= b_free!31999 (not b_next!32703))))

(declare-fun tp!384403 () Bool)

(declare-fun b_and!88571 () Bool)

(assert (=> b!1325947 (= tp!384403 b_and!88571)))

(declare-fun b_free!32001 () Bool)

(declare-fun b_next!32705 () Bool)

(assert (=> b!1325947 (= b_free!32001 (not b_next!32705))))

(declare-fun tp!384396 () Bool)

(declare-fun b_and!88573 () Bool)

(assert (=> b!1325947 (= tp!384396 b_and!88573)))

(declare-fun b!1325939 () Bool)

(declare-fun b_free!32003 () Bool)

(declare-fun b_next!32707 () Bool)

(assert (=> b!1325939 (= b_free!32003 (not b_next!32707))))

(declare-fun tp!384400 () Bool)

(declare-fun b_and!88575 () Bool)

(assert (=> b!1325939 (= tp!384400 b_and!88575)))

(declare-fun b_free!32005 () Bool)

(declare-fun b_next!32709 () Bool)

(assert (=> b!1325939 (= b_free!32005 (not b_next!32709))))

(declare-fun tp!384398 () Bool)

(declare-fun b_and!88577 () Bool)

(assert (=> b!1325939 (= tp!384398 b_and!88577)))

(declare-fun b!1325961 () Bool)

(assert (=> b!1325961 true))

(assert (=> b!1325961 true))

(declare-fun b!1325972 () Bool)

(assert (=> b!1325972 true))

(declare-fun b!1325935 () Bool)

(assert (=> b!1325935 true))

(declare-fun bs!331388 () Bool)

(declare-fun b!1325958 () Bool)

(assert (= bs!331388 (and b!1325958 b!1325935)))

(declare-fun lambda!54639 () Int)

(declare-fun lambda!54638 () Int)

(assert (=> bs!331388 (not (= lambda!54639 lambda!54638))))

(assert (=> b!1325958 true))

(declare-fun b!1325927 () Bool)

(declare-fun res!596653 () Bool)

(declare-fun e!849548 () Bool)

(assert (=> b!1325927 (=> (not res!596653) (not e!849548))))

(declare-datatypes ((LexerInterface!2022 0))(
  ( (LexerInterfaceExt!2019 (__x!8663 Int)) (Lexer!2020) )
))
(declare-fun thiss!19762 () LexerInterface!2022)

(declare-datatypes ((List!13512 0))(
  ( (Nil!13446) (Cons!13446 (h!18847 (_ BitVec 16)) (t!118813 List!13512)) )
))
(declare-datatypes ((TokenValue!2417 0))(
  ( (FloatLiteralValue!4834 (text!17364 List!13512)) (TokenValueExt!2416 (__x!8664 Int)) (Broken!12085 (value!75926 List!13512)) (Object!2482) (End!2417) (Def!2417) (Underscore!2417) (Match!2417) (Else!2417) (Error!2417) (Case!2417) (If!2417) (Extends!2417) (Abstract!2417) (Class!2417) (Val!2417) (DelimiterValue!4834 (del!2477 List!13512)) (KeywordValue!2423 (value!75927 List!13512)) (CommentValue!4834 (value!75928 List!13512)) (WhitespaceValue!4834 (value!75929 List!13512)) (IndentationValue!2417 (value!75930 List!13512)) (String!16320) (Int32!2417) (Broken!12086 (value!75931 List!13512)) (Boolean!2418) (Unit!19525) (OperatorValue!2420 (op!2477 List!13512)) (IdentifierValue!4834 (value!75932 List!13512)) (IdentifierValue!4835 (value!75933 List!13512)) (WhitespaceValue!4835 (value!75934 List!13512)) (True!4834) (False!4834) (Broken!12087 (value!75935 List!13512)) (Broken!12088 (value!75936 List!13512)) (True!4835) (RightBrace!2417) (RightBracket!2417) (Colon!2417) (Null!2417) (Comma!2417) (LeftBracket!2417) (False!4835) (LeftBrace!2417) (ImaginaryLiteralValue!2417 (text!17365 List!13512)) (StringLiteralValue!7251 (value!75937 List!13512)) (EOFValue!2417 (value!75938 List!13512)) (IdentValue!2417 (value!75939 List!13512)) (DelimiterValue!4835 (value!75940 List!13512)) (DedentValue!2417 (value!75941 List!13512)) (NewLineValue!2417 (value!75942 List!13512)) (IntegerValue!7251 (value!75943 (_ BitVec 32)) (text!17366 List!13512)) (IntegerValue!7252 (value!75944 Int) (text!17367 List!13512)) (Times!2417) (Or!2417) (Equal!2417) (Minus!2417) (Broken!12089 (value!75945 List!13512)) (And!2417) (Div!2417) (LessEqual!2417) (Mod!2417) (Concat!6058) (Not!2417) (Plus!2417) (SpaceValue!2417 (value!75946 List!13512)) (IntegerValue!7253 (value!75947 Int) (text!17368 List!13512)) (StringLiteralValue!7252 (text!17369 List!13512)) (FloatLiteralValue!4835 (text!17370 List!13512)) (BytesLiteralValue!2417 (value!75948 List!13512)) (CommentValue!4835 (value!75949 List!13512)) (StringLiteralValue!7253 (value!75950 List!13512)) (ErrorTokenValue!2417 (msg!2478 List!13512)) )
))
(declare-datatypes ((C!7572 0))(
  ( (C!7573 (val!4346 Int)) )
))
(declare-datatypes ((List!13513 0))(
  ( (Nil!13447) (Cons!13447 (h!18848 C!7572) (t!118814 List!13513)) )
))
(declare-datatypes ((IArray!8853 0))(
  ( (IArray!8854 (innerList!4484 List!13513)) )
))
(declare-datatypes ((Conc!4424 0))(
  ( (Node!4424 (left!11549 Conc!4424) (right!11879 Conc!4424) (csize!9078 Int) (cheight!4635 Int)) (Leaf!6784 (xs!7139 IArray!8853) (csize!9079 Int)) (Empty!4424) )
))
(declare-datatypes ((BalanceConc!8788 0))(
  ( (BalanceConc!8789 (c!217526 Conc!4424)) )
))
(declare-datatypes ((Regex!3641 0))(
  ( (ElementMatch!3641 (c!217527 C!7572)) (Concat!6059 (regOne!7794 Regex!3641) (regTwo!7794 Regex!3641)) (EmptyExpr!3641) (Star!3641 (reg!3970 Regex!3641)) (EmptyLang!3641) (Union!3641 (regOne!7795 Regex!3641) (regTwo!7795 Regex!3641)) )
))
(declare-datatypes ((String!16321 0))(
  ( (String!16322 (value!75951 String)) )
))
(declare-datatypes ((TokenValueInjection!4494 0))(
  ( (TokenValueInjection!4495 (toValue!3558 Int) (toChars!3417 Int)) )
))
(declare-datatypes ((Rule!4454 0))(
  ( (Rule!4455 (regex!2327 Regex!3641) (tag!2589 String!16321) (isSeparator!2327 Bool) (transformation!2327 TokenValueInjection!4494)) )
))
(declare-datatypes ((List!13514 0))(
  ( (Nil!13448) (Cons!13448 (h!18849 Rule!4454) (t!118815 List!13514)) )
))
(declare-fun rules!2550 () List!13514)

(declare-datatypes ((Token!4316 0))(
  ( (Token!4317 (value!75952 TokenValue!2417) (rule!4072 Rule!4454) (size!10960 Int) (originalCharacters!3189 List!13513)) )
))
(declare-fun t2!34 () Token!4316)

(declare-fun rulesProduceIndividualToken!991 (LexerInterface!2022 List!13514 Token!4316) Bool)

(assert (=> b!1325927 (= res!596653 (rulesProduceIndividualToken!991 thiss!19762 rules!2550 t2!34))))

(declare-fun b!1325929 () Bool)

(declare-fun res!596665 () Bool)

(assert (=> b!1325929 (=> (not res!596665) (not e!849548))))

(declare-fun t1!34 () Token!4316)

(assert (=> b!1325929 (= res!596665 (rulesProduceIndividualToken!991 thiss!19762 rules!2550 t1!34))))

(declare-fun b!1325930 () Bool)

(declare-fun res!596647 () Bool)

(declare-fun e!849559 () Bool)

(assert (=> b!1325930 (=> res!596647 e!849559)))

(declare-fun lt!438111 () List!13513)

(declare-datatypes ((tuple2!13082 0))(
  ( (tuple2!13083 (_1!7427 Token!4316) (_2!7427 List!13513)) )
))
(declare-datatypes ((Option!2598 0))(
  ( (None!2597) (Some!2597 (v!21202 tuple2!13082)) )
))
(declare-fun maxPrefix!1032 (LexerInterface!2022 List!13514 List!13513) Option!2598)

(assert (=> b!1325930 (= res!596647 (not (= (maxPrefix!1032 thiss!19762 rules!2550 lt!438111) (Some!2597 (tuple2!13083 t1!34 Nil!13447)))))))

(declare-fun b!1325931 () Bool)

(declare-fun res!596650 () Bool)

(assert (=> b!1325931 (=> res!596650 e!849559)))

(declare-fun lt!438110 () BalanceConc!8788)

(declare-datatypes ((List!13515 0))(
  ( (Nil!13449) (Cons!13449 (h!18850 Token!4316) (t!118816 List!13515)) )
))
(declare-fun lt!438114 () List!13515)

(declare-datatypes ((tuple2!13084 0))(
  ( (tuple2!13085 (_1!7428 List!13515) (_2!7428 List!13513)) )
))
(declare-fun lexList!560 (LexerInterface!2022 List!13514 List!13513) tuple2!13084)

(declare-fun list!5090 (BalanceConc!8788) List!13513)

(assert (=> b!1325931 (= res!596650 (not (= (lexList!560 thiss!19762 rules!2550 (list!5090 lt!438110)) (tuple2!13085 lt!438114 Nil!13447))))))

(declare-fun b!1325932 () Bool)

(declare-fun res!596644 () Bool)

(declare-fun e!849563 () Bool)

(assert (=> b!1325932 (=> res!596644 e!849563)))

(declare-fun lt!438102 () List!13513)

(declare-fun lt!438092 () C!7572)

(declare-fun contains!2397 (List!13513 C!7572) Bool)

(assert (=> b!1325932 (= res!596644 (not (contains!2397 lt!438102 lt!438092)))))

(declare-fun e!849547 () Bool)

(declare-fun tp!384394 () Bool)

(declare-fun b!1325933 () Bool)

(declare-fun e!849551 () Bool)

(declare-fun inv!21 (TokenValue!2417) Bool)

(assert (=> b!1325933 (= e!849547 (and (inv!21 (value!75952 t1!34)) e!849551 tp!384394))))

(declare-fun b!1325934 () Bool)

(declare-fun res!596654 () Bool)

(assert (=> b!1325934 (=> res!596654 e!849559)))

(declare-fun contains!2398 (List!13514 Rule!4454) Bool)

(assert (=> b!1325934 (= res!596654 (not (contains!2398 rules!2550 (rule!4072 t1!34))))))

(declare-fun e!849569 () Bool)

(declare-fun e!849554 () Bool)

(assert (=> b!1325935 (= e!849569 e!849554)))

(declare-fun res!596674 () Bool)

(assert (=> b!1325935 (=> res!596674 e!849554)))

(declare-fun exists!356 (List!13514 Int) Bool)

(assert (=> b!1325935 (= res!596674 (not (exists!356 rules!2550 lambda!54638)))))

(assert (=> b!1325935 (exists!356 rules!2550 lambda!54638)))

(declare-fun lt!438096 () Regex!3641)

(declare-fun lambda!54636 () Int)

(declare-datatypes ((Unit!19526 0))(
  ( (Unit!19527) )
))
(declare-fun lt!438090 () Unit!19526)

(declare-fun lemmaMapContains!70 (List!13514 Int Regex!3641) Unit!19526)

(assert (=> b!1325935 (= lt!438090 (lemmaMapContains!70 rules!2550 lambda!54636 lt!438096))))

(declare-fun b!1325936 () Bool)

(assert (=> b!1325936 (= e!849554 e!849559)))

(declare-fun res!596672 () Bool)

(assert (=> b!1325936 (=> res!596672 e!849559)))

(declare-datatypes ((IArray!8855 0))(
  ( (IArray!8856 (innerList!4485 List!13515)) )
))
(declare-datatypes ((Conc!4425 0))(
  ( (Node!4425 (left!11550 Conc!4425) (right!11880 Conc!4425) (csize!9080 Int) (cheight!4636 Int)) (Leaf!6785 (xs!7140 IArray!8855) (csize!9081 Int)) (Empty!4425) )
))
(declare-datatypes ((BalanceConc!8790 0))(
  ( (BalanceConc!8791 (c!217528 Conc!4425)) )
))
(declare-datatypes ((tuple2!13086 0))(
  ( (tuple2!13087 (_1!7429 BalanceConc!8790) (_2!7429 BalanceConc!8788)) )
))
(declare-fun lt!438105 () tuple2!13086)

(declare-fun list!5091 (BalanceConc!8790) List!13515)

(assert (=> b!1325936 (= res!596672 (not (= (list!5091 (_1!7429 lt!438105)) lt!438114)))))

(assert (=> b!1325936 (= lt!438114 (Cons!13449 t1!34 Nil!13449))))

(declare-fun lex!857 (LexerInterface!2022 List!13514 BalanceConc!8788) tuple2!13086)

(assert (=> b!1325936 (= lt!438105 (lex!857 thiss!19762 rules!2550 lt!438110))))

(declare-fun print!796 (LexerInterface!2022 BalanceConc!8790) BalanceConc!8788)

(declare-fun singletonSeq!918 (Token!4316) BalanceConc!8790)

(assert (=> b!1325936 (= lt!438110 (print!796 thiss!19762 (singletonSeq!918 t1!34)))))

(declare-fun lt!438112 () Rule!4454)

(declare-fun getWitness!248 (List!13514 Int) Rule!4454)

(assert (=> b!1325936 (= lt!438112 (getWitness!248 rules!2550 lambda!54638))))

(declare-fun b!1325937 () Bool)

(declare-fun res!596663 () Bool)

(assert (=> b!1325937 (=> (not res!596663) (not e!849548))))

(declare-fun rulesInvariant!1892 (LexerInterface!2022 List!13514) Bool)

(assert (=> b!1325937 (= res!596663 (rulesInvariant!1892 thiss!19762 rules!2550))))

(declare-fun b!1325938 () Bool)

(declare-fun e!849566 () Bool)

(declare-fun lt!438107 () Int)

(assert (=> b!1325938 (= e!849566 (< 0 lt!438107))))

(declare-fun lt!438101 () Unit!19526)

(declare-fun e!849572 () Unit!19526)

(assert (=> b!1325938 (= lt!438101 e!849572)))

(declare-fun c!217524 () Bool)

(declare-fun usedCharacters!192 (Regex!3641) List!13513)

(assert (=> b!1325938 (= c!217524 (not (contains!2397 (usedCharacters!192 (regex!2327 (rule!4072 t2!34))) lt!438092)))))

(declare-fun e!849571 () Bool)

(assert (=> b!1325939 (= e!849571 (and tp!384400 tp!384398))))

(declare-fun b!1325940 () Bool)

(declare-fun e!849575 () Bool)

(declare-fun e!849573 () Bool)

(declare-fun tp!384395 () Bool)

(assert (=> b!1325940 (= e!849575 (and e!849573 tp!384395))))

(declare-fun b!1325941 () Bool)

(declare-fun res!596668 () Bool)

(assert (=> b!1325941 (=> (not res!596668) (not e!849548))))

(declare-fun isEmpty!8010 (List!13514) Bool)

(assert (=> b!1325941 (= res!596668 (not (isEmpty!8010 rules!2550)))))

(declare-fun b!1325928 () Bool)

(declare-fun e!849560 () Unit!19526)

(declare-fun Unit!19528 () Unit!19526)

(assert (=> b!1325928 (= e!849560 Unit!19528)))

(declare-fun lt!438100 () Unit!19526)

(declare-fun lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!138 (Regex!3641 List!13513 C!7572) Unit!19526)

(declare-fun head!2318 (List!13513) C!7572)

(assert (=> b!1325928 (= lt!438100 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!138 (regex!2327 (rule!4072 t1!34)) lt!438111 (head!2318 lt!438111)))))

(assert (=> b!1325928 false))

(declare-fun res!596659 () Bool)

(assert (=> start!117914 (=> (not res!596659) (not e!849548))))

(get-info :version)

(assert (=> start!117914 (= res!596659 ((_ is Lexer!2020) thiss!19762))))

(assert (=> start!117914 e!849548))

(assert (=> start!117914 true))

(assert (=> start!117914 e!849575))

(declare-fun inv!17813 (Token!4316) Bool)

(assert (=> start!117914 (and (inv!17813 t1!34) e!849547)))

(declare-fun e!849552 () Bool)

(assert (=> start!117914 (and (inv!17813 t2!34) e!849552)))

(declare-fun b!1325942 () Bool)

(declare-fun e!849564 () Bool)

(declare-fun tp!384404 () Bool)

(assert (=> b!1325942 (= e!849552 (and (inv!21 (value!75952 t2!34)) e!849564 tp!384404))))

(declare-fun b!1325943 () Bool)

(declare-fun e!849567 () Bool)

(assert (=> b!1325943 (= e!849567 e!849569)))

(declare-fun res!596645 () Bool)

(assert (=> b!1325943 (=> res!596645 e!849569)))

(declare-datatypes ((List!13516 0))(
  ( (Nil!13450) (Cons!13450 (h!18851 Regex!3641) (t!118817 List!13516)) )
))
(declare-fun contains!2399 (List!13516 Regex!3641) Bool)

(declare-fun map!2957 (List!13514 Int) List!13516)

(assert (=> b!1325943 (= res!596645 (not (contains!2399 (map!2957 rules!2550 lambda!54636) lt!438096)))))

(declare-fun lambda!54637 () Int)

(declare-fun getWitness!249 (List!13516 Int) Regex!3641)

(assert (=> b!1325943 (= lt!438096 (getWitness!249 (map!2957 rules!2550 lambda!54636) lambda!54637))))

(declare-fun b!1325944 () Bool)

(declare-fun e!849570 () Bool)

(assert (=> b!1325944 (= e!849548 e!849570)))

(declare-fun res!596667 () Bool)

(assert (=> b!1325944 (=> (not res!596667) (not e!849570))))

(assert (=> b!1325944 (= res!596667 (> lt!438107 0))))

(declare-fun lt!438108 () BalanceConc!8788)

(declare-fun size!10961 (BalanceConc!8788) Int)

(assert (=> b!1325944 (= lt!438107 (size!10961 lt!438108))))

(declare-fun charsOf!1299 (Token!4316) BalanceConc!8788)

(assert (=> b!1325944 (= lt!438108 (charsOf!1299 t2!34))))

(declare-fun b!1325945 () Bool)

(declare-fun e!849550 () Bool)

(declare-fun e!849562 () Bool)

(assert (=> b!1325945 (= e!849550 e!849562)))

(declare-fun res!596671 () Bool)

(assert (=> b!1325945 (=> res!596671 e!849562)))

(declare-fun lt!438099 () List!13513)

(assert (=> b!1325945 (= res!596671 (not (= (maxPrefix!1032 thiss!19762 rules!2550 lt!438099) (Some!2597 (tuple2!13083 t2!34 Nil!13447)))))))

(assert (=> b!1325945 (= lt!438099 (list!5090 lt!438108))))

(declare-fun b!1325946 () Bool)

(declare-fun res!596669 () Bool)

(assert (=> b!1325946 (=> res!596669 e!849563)))

(declare-fun lt!438097 () Regex!3641)

(declare-fun lt!438095 () List!13513)

(declare-fun matchR!1643 (Regex!3641 List!13513) Bool)

(assert (=> b!1325946 (= res!596669 (not (matchR!1643 lt!438097 lt!438095)))))

(declare-fun e!849549 () Bool)

(assert (=> b!1325947 (= e!849549 (and tp!384403 tp!384396))))

(declare-fun b!1325948 () Bool)

(declare-fun e!849576 () Bool)

(declare-fun e!849556 () Bool)

(assert (=> b!1325948 (= e!849576 e!849556)))

(declare-fun res!596673 () Bool)

(assert (=> b!1325948 (=> res!596673 e!849556)))

(declare-fun ++!3436 (List!13513 List!13513) List!13513)

(declare-fun getSuffix!497 (List!13513 List!13513) List!13513)

(assert (=> b!1325948 (= res!596673 (not (= lt!438095 (++!3436 lt!438102 (getSuffix!497 lt!438095 lt!438102)))))))

(declare-fun lambda!54635 () Int)

(declare-fun pickWitness!104 (Int) List!13513)

(assert (=> b!1325948 (= lt!438095 (pickWitness!104 lambda!54635))))

(declare-fun b!1325949 () Bool)

(declare-fun res!596648 () Bool)

(assert (=> b!1325949 (=> res!596648 e!849563)))

(declare-fun lt!438104 () C!7572)

(assert (=> b!1325949 (= res!596648 (not (contains!2397 lt!438095 lt!438104)))))

(declare-fun b!1325950 () Bool)

(declare-fun res!596676 () Bool)

(declare-fun e!849565 () Bool)

(assert (=> b!1325950 (=> res!596676 e!849565)))

(assert (=> b!1325950 (= res!596676 (not (matchR!1643 (regex!2327 (rule!4072 t2!34)) lt!438099)))))

(declare-fun b!1325951 () Bool)

(declare-fun tp!384397 () Bool)

(declare-fun e!849557 () Bool)

(declare-fun inv!17810 (String!16321) Bool)

(declare-fun inv!17814 (TokenValueInjection!4494) Bool)

(assert (=> b!1325951 (= e!849551 (and tp!384397 (inv!17810 (tag!2589 (rule!4072 t1!34))) (inv!17814 (transformation!2327 (rule!4072 t1!34))) e!849557))))

(declare-fun b!1325952 () Bool)

(declare-fun res!596655 () Bool)

(assert (=> b!1325952 (=> res!596655 e!849563)))

(assert (=> b!1325952 (= res!596655 (not (contains!2397 lt!438095 lt!438092)))))

(declare-fun b!1325953 () Bool)

(assert (=> b!1325953 (= e!849556 e!849563)))

(declare-fun res!596656 () Bool)

(assert (=> b!1325953 (=> res!596656 e!849563)))

(assert (=> b!1325953 (= res!596656 (not (contains!2397 lt!438102 lt!438104)))))

(declare-fun lt!438109 () BalanceConc!8788)

(declare-fun apply!3105 (BalanceConc!8788 Int) C!7572)

(assert (=> b!1325953 (= lt!438104 (apply!3105 lt!438109 0))))

(declare-fun b!1325954 () Bool)

(declare-fun Unit!19529 () Unit!19526)

(assert (=> b!1325954 (= e!849572 Unit!19529)))

(declare-fun lt!438087 () Unit!19526)

(assert (=> b!1325954 (= lt!438087 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!138 (regex!2327 (rule!4072 t2!34)) lt!438099 (head!2318 lt!438099)))))

(assert (=> b!1325954 false))

(declare-fun b!1325955 () Bool)

(declare-fun res!596661 () Bool)

(assert (=> b!1325955 (=> res!596661 e!849559)))

(declare-fun isEmpty!8011 (BalanceConc!8788) Bool)

(assert (=> b!1325955 (= res!596661 (not (isEmpty!8011 (_2!7429 lt!438105))))))

(declare-fun b!1325956 () Bool)

(declare-fun res!596646 () Bool)

(assert (=> b!1325956 (=> (not res!596646) (not e!849548))))

(assert (=> b!1325956 (= res!596646 (not (= (isSeparator!2327 (rule!4072 t1!34)) (isSeparator!2327 (rule!4072 t2!34)))))))

(declare-fun b!1325957 () Bool)

(declare-fun res!596666 () Bool)

(assert (=> b!1325957 (=> res!596666 e!849550)))

(declare-fun lt!438115 () BalanceConc!8788)

(declare-fun lt!438091 () List!13515)

(assert (=> b!1325957 (= res!596666 (not (= (lexList!560 thiss!19762 rules!2550 (list!5090 lt!438115)) (tuple2!13085 lt!438091 Nil!13447))))))

(assert (=> b!1325958 (= e!849562 e!849565)))

(declare-fun res!596660 () Bool)

(assert (=> b!1325958 (=> res!596660 e!849565)))

(assert (=> b!1325958 (= res!596660 (not (matchR!1643 (regex!2327 (rule!4072 t1!34)) lt!438111)))))

(declare-fun lt!438106 () Unit!19526)

(declare-fun forallContained!578 (List!13514 Int Rule!4454) Unit!19526)

(assert (=> b!1325958 (= lt!438106 (forallContained!578 rules!2550 lambda!54639 (rule!4072 t2!34)))))

(declare-fun lt!438098 () Unit!19526)

(assert (=> b!1325958 (= lt!438098 (forallContained!578 rules!2550 lambda!54639 (rule!4072 t1!34)))))

(declare-fun lt!438113 () Unit!19526)

(assert (=> b!1325958 (= lt!438113 (forallContained!578 rules!2550 lambda!54639 lt!438112))))

(declare-fun b!1325959 () Bool)

(declare-fun res!596670 () Bool)

(assert (=> b!1325959 (=> (not res!596670) (not e!849570))))

(declare-fun sepAndNonSepRulesDisjointChars!700 (List!13514 List!13514) Bool)

(assert (=> b!1325959 (= res!596670 (sepAndNonSepRulesDisjointChars!700 rules!2550 rules!2550))))

(declare-fun tp!384402 () Bool)

(declare-fun b!1325960 () Bool)

(assert (=> b!1325960 (= e!849564 (and tp!384402 (inv!17810 (tag!2589 (rule!4072 t2!34))) (inv!17814 (transformation!2327 (rule!4072 t2!34))) e!849549))))

(declare-fun e!849574 () Bool)

(assert (=> b!1325961 (= e!849574 (not e!849576))))

(declare-fun res!596677 () Bool)

(assert (=> b!1325961 (=> res!596677 e!849576)))

(declare-fun Exists!799 (Int) Bool)

(assert (=> b!1325961 (= res!596677 (not (Exists!799 lambda!54635)))))

(assert (=> b!1325961 (Exists!799 lambda!54635)))

(declare-fun lt!438093 () Unit!19526)

(declare-fun lemmaPrefixMatchThenExistsStringThatMatches!117 (Regex!3641 List!13513) Unit!19526)

(assert (=> b!1325961 (= lt!438093 (lemmaPrefixMatchThenExistsStringThatMatches!117 lt!438097 lt!438102))))

(declare-fun b!1325962 () Bool)

(declare-fun res!596658 () Bool)

(assert (=> b!1325962 (=> res!596658 e!849550)))

(declare-fun lt!438094 () tuple2!13086)

(assert (=> b!1325962 (= res!596658 (not (isEmpty!8011 (_2!7429 lt!438094))))))

(declare-fun b!1325963 () Bool)

(declare-fun res!596662 () Bool)

(assert (=> b!1325963 (=> (not res!596662) (not e!849570))))

(declare-fun separableTokensPredicate!305 (LexerInterface!2022 Token!4316 Token!4316 List!13514) Bool)

(assert (=> b!1325963 (= res!596662 (not (separableTokensPredicate!305 thiss!19762 t1!34 t2!34 rules!2550)))))

(declare-fun b!1325964 () Bool)

(assert (=> b!1325964 (= e!849570 e!849574)))

(declare-fun res!596675 () Bool)

(assert (=> b!1325964 (=> (not res!596675) (not e!849574))))

(declare-fun prefixMatch!154 (Regex!3641 List!13513) Bool)

(assert (=> b!1325964 (= res!596675 (prefixMatch!154 lt!438097 lt!438102))))

(declare-fun rulesRegex!212 (LexerInterface!2022 List!13514) Regex!3641)

(assert (=> b!1325964 (= lt!438097 (rulesRegex!212 thiss!19762 rules!2550))))

(assert (=> b!1325964 (= lt!438102 (++!3436 lt!438111 (Cons!13447 lt!438092 Nil!13447)))))

(assert (=> b!1325964 (= lt!438092 (apply!3105 lt!438108 0))))

(assert (=> b!1325964 (= lt!438111 (list!5090 lt!438109))))

(assert (=> b!1325964 (= lt!438109 (charsOf!1299 t1!34))))

(assert (=> b!1325965 (= e!849557 (and tp!384393 tp!384401))))

(declare-fun b!1325966 () Bool)

(declare-fun res!596649 () Bool)

(assert (=> b!1325966 (=> res!596649 e!849562)))

(assert (=> b!1325966 (= res!596649 (not (contains!2398 rules!2550 lt!438112)))))

(declare-fun b!1325967 () Bool)

(declare-fun Unit!19530 () Unit!19526)

(assert (=> b!1325967 (= e!849572 Unit!19530)))

(declare-fun b!1325968 () Bool)

(declare-fun tp!384399 () Bool)

(assert (=> b!1325968 (= e!849573 (and tp!384399 (inv!17810 (tag!2589 (h!18849 rules!2550))) (inv!17814 (transformation!2327 (h!18849 rules!2550))) e!849571))))

(declare-fun b!1325969 () Bool)

(assert (=> b!1325969 (= e!849565 e!849566)))

(declare-fun res!596664 () Bool)

(assert (=> b!1325969 (=> res!596664 e!849566)))

(declare-fun lt!438088 () Bool)

(assert (=> b!1325969 (= res!596664 lt!438088)))

(declare-fun lt!438116 () Unit!19526)

(assert (=> b!1325969 (= lt!438116 e!849560)))

(declare-fun c!217525 () Bool)

(assert (=> b!1325969 (= c!217525 lt!438088)))

(assert (=> b!1325969 (= lt!438088 (not (contains!2397 (usedCharacters!192 (regex!2327 (rule!4072 t1!34))) lt!438104)))))

(declare-fun b!1325970 () Bool)

(assert (=> b!1325970 (= e!849559 e!849550)))

(declare-fun res!596651 () Bool)

(assert (=> b!1325970 (=> res!596651 e!849550)))

(assert (=> b!1325970 (= res!596651 (not (= (list!5091 (_1!7429 lt!438094)) lt!438091)))))

(assert (=> b!1325970 (= lt!438091 (Cons!13449 t2!34 Nil!13449))))

(assert (=> b!1325970 (= lt!438094 (lex!857 thiss!19762 rules!2550 lt!438115))))

(assert (=> b!1325970 (= lt!438115 (print!796 thiss!19762 (singletonSeq!918 t2!34)))))

(declare-fun b!1325971 () Bool)

(declare-fun Unit!19531 () Unit!19526)

(assert (=> b!1325971 (= e!849560 Unit!19531)))

(assert (=> b!1325972 (= e!849563 e!849567)))

(declare-fun res!596652 () Bool)

(assert (=> b!1325972 (=> res!596652 e!849567)))

(declare-fun exists!357 (List!13516 Int) Bool)

(assert (=> b!1325972 (= res!596652 (not (exists!357 (map!2957 rules!2550 lambda!54636) lambda!54637)))))

(declare-fun lt!438103 () List!13516)

(assert (=> b!1325972 (exists!357 lt!438103 lambda!54637)))

(declare-fun lt!438089 () Unit!19526)

(declare-fun matchRGenUnionSpec!78 (Regex!3641 List!13516 List!13513) Unit!19526)

(assert (=> b!1325972 (= lt!438089 (matchRGenUnionSpec!78 lt!438097 lt!438103 lt!438095))))

(assert (=> b!1325972 (= lt!438103 (map!2957 rules!2550 lambda!54636))))

(declare-fun b!1325973 () Bool)

(declare-fun res!596657 () Bool)

(assert (=> b!1325973 (=> res!596657 e!849562)))

(assert (=> b!1325973 (= res!596657 (not (contains!2398 rules!2550 (rule!4072 t2!34))))))

(assert (= (and start!117914 res!596659) b!1325941))

(assert (= (and b!1325941 res!596668) b!1325937))

(assert (= (and b!1325937 res!596663) b!1325929))

(assert (= (and b!1325929 res!596665) b!1325927))

(assert (= (and b!1325927 res!596653) b!1325956))

(assert (= (and b!1325956 res!596646) b!1325944))

(assert (= (and b!1325944 res!596667) b!1325959))

(assert (= (and b!1325959 res!596670) b!1325963))

(assert (= (and b!1325963 res!596662) b!1325964))

(assert (= (and b!1325964 res!596675) b!1325961))

(assert (= (and b!1325961 (not res!596677)) b!1325948))

(assert (= (and b!1325948 (not res!596673)) b!1325953))

(assert (= (and b!1325953 (not res!596656)) b!1325949))

(assert (= (and b!1325949 (not res!596648)) b!1325932))

(assert (= (and b!1325932 (not res!596644)) b!1325952))

(assert (= (and b!1325952 (not res!596655)) b!1325946))

(assert (= (and b!1325946 (not res!596669)) b!1325972))

(assert (= (and b!1325972 (not res!596652)) b!1325943))

(assert (= (and b!1325943 (not res!596645)) b!1325935))

(assert (= (and b!1325935 (not res!596674)) b!1325936))

(assert (= (and b!1325936 (not res!596672)) b!1325955))

(assert (= (and b!1325955 (not res!596661)) b!1325931))

(assert (= (and b!1325931 (not res!596650)) b!1325930))

(assert (= (and b!1325930 (not res!596647)) b!1325934))

(assert (= (and b!1325934 (not res!596654)) b!1325970))

(assert (= (and b!1325970 (not res!596651)) b!1325962))

(assert (= (and b!1325962 (not res!596658)) b!1325957))

(assert (= (and b!1325957 (not res!596666)) b!1325945))

(assert (= (and b!1325945 (not res!596671)) b!1325973))

(assert (= (and b!1325973 (not res!596657)) b!1325966))

(assert (= (and b!1325966 (not res!596649)) b!1325958))

(assert (= (and b!1325958 (not res!596660)) b!1325950))

(assert (= (and b!1325950 (not res!596676)) b!1325969))

(assert (= (and b!1325969 c!217525) b!1325928))

(assert (= (and b!1325969 (not c!217525)) b!1325971))

(assert (= (and b!1325969 (not res!596664)) b!1325938))

(assert (= (and b!1325938 c!217524) b!1325954))

(assert (= (and b!1325938 (not c!217524)) b!1325967))

(assert (= b!1325968 b!1325939))

(assert (= b!1325940 b!1325968))

(assert (= (and start!117914 ((_ is Cons!13448) rules!2550)) b!1325940))

(assert (= b!1325951 b!1325965))

(assert (= b!1325933 b!1325951))

(assert (= start!117914 b!1325933))

(assert (= b!1325960 b!1325947))

(assert (= b!1325942 b!1325960))

(assert (= start!117914 b!1325942))

(declare-fun m!1482557 () Bool)

(assert (=> b!1325950 m!1482557))

(declare-fun m!1482559 () Bool)

(assert (=> b!1325959 m!1482559))

(declare-fun m!1482561 () Bool)

(assert (=> b!1325931 m!1482561))

(assert (=> b!1325931 m!1482561))

(declare-fun m!1482563 () Bool)

(assert (=> b!1325931 m!1482563))

(declare-fun m!1482565 () Bool)

(assert (=> b!1325928 m!1482565))

(assert (=> b!1325928 m!1482565))

(declare-fun m!1482567 () Bool)

(assert (=> b!1325928 m!1482567))

(declare-fun m!1482569 () Bool)

(assert (=> b!1325942 m!1482569))

(declare-fun m!1482571 () Bool)

(assert (=> b!1325943 m!1482571))

(assert (=> b!1325943 m!1482571))

(declare-fun m!1482573 () Bool)

(assert (=> b!1325943 m!1482573))

(assert (=> b!1325943 m!1482571))

(assert (=> b!1325943 m!1482571))

(declare-fun m!1482575 () Bool)

(assert (=> b!1325943 m!1482575))

(declare-fun m!1482577 () Bool)

(assert (=> b!1325951 m!1482577))

(declare-fun m!1482579 () Bool)

(assert (=> b!1325951 m!1482579))

(declare-fun m!1482581 () Bool)

(assert (=> b!1325927 m!1482581))

(declare-fun m!1482583 () Bool)

(assert (=> b!1325960 m!1482583))

(declare-fun m!1482585 () Bool)

(assert (=> b!1325960 m!1482585))

(declare-fun m!1482587 () Bool)

(assert (=> b!1325964 m!1482587))

(declare-fun m!1482589 () Bool)

(assert (=> b!1325964 m!1482589))

(declare-fun m!1482591 () Bool)

(assert (=> b!1325964 m!1482591))

(declare-fun m!1482593 () Bool)

(assert (=> b!1325964 m!1482593))

(declare-fun m!1482595 () Bool)

(assert (=> b!1325964 m!1482595))

(declare-fun m!1482597 () Bool)

(assert (=> b!1325964 m!1482597))

(declare-fun m!1482599 () Bool)

(assert (=> b!1325963 m!1482599))

(declare-fun m!1482601 () Bool)

(assert (=> b!1325944 m!1482601))

(declare-fun m!1482603 () Bool)

(assert (=> b!1325944 m!1482603))

(declare-fun m!1482605 () Bool)

(assert (=> b!1325948 m!1482605))

(assert (=> b!1325948 m!1482605))

(declare-fun m!1482607 () Bool)

(assert (=> b!1325948 m!1482607))

(declare-fun m!1482609 () Bool)

(assert (=> b!1325948 m!1482609))

(declare-fun m!1482611 () Bool)

(assert (=> b!1325961 m!1482611))

(assert (=> b!1325961 m!1482611))

(declare-fun m!1482613 () Bool)

(assert (=> b!1325961 m!1482613))

(declare-fun m!1482615 () Bool)

(assert (=> b!1325970 m!1482615))

(declare-fun m!1482617 () Bool)

(assert (=> b!1325970 m!1482617))

(declare-fun m!1482619 () Bool)

(assert (=> b!1325970 m!1482619))

(assert (=> b!1325970 m!1482619))

(declare-fun m!1482621 () Bool)

(assert (=> b!1325970 m!1482621))

(declare-fun m!1482623 () Bool)

(assert (=> b!1325938 m!1482623))

(assert (=> b!1325938 m!1482623))

(declare-fun m!1482625 () Bool)

(assert (=> b!1325938 m!1482625))

(declare-fun m!1482627 () Bool)

(assert (=> b!1325952 m!1482627))

(declare-fun m!1482629 () Bool)

(assert (=> b!1325937 m!1482629))

(declare-fun m!1482631 () Bool)

(assert (=> b!1325946 m!1482631))

(declare-fun m!1482633 () Bool)

(assert (=> b!1325953 m!1482633))

(declare-fun m!1482635 () Bool)

(assert (=> b!1325953 m!1482635))

(declare-fun m!1482637 () Bool)

(assert (=> start!117914 m!1482637))

(declare-fun m!1482639 () Bool)

(assert (=> start!117914 m!1482639))

(declare-fun m!1482641 () Bool)

(assert (=> b!1325969 m!1482641))

(assert (=> b!1325969 m!1482641))

(declare-fun m!1482643 () Bool)

(assert (=> b!1325969 m!1482643))

(declare-fun m!1482645 () Bool)

(assert (=> b!1325968 m!1482645))

(declare-fun m!1482647 () Bool)

(assert (=> b!1325968 m!1482647))

(declare-fun m!1482649 () Bool)

(assert (=> b!1325934 m!1482649))

(declare-fun m!1482651 () Bool)

(assert (=> b!1325972 m!1482651))

(declare-fun m!1482653 () Bool)

(assert (=> b!1325972 m!1482653))

(assert (=> b!1325972 m!1482571))

(assert (=> b!1325972 m!1482571))

(assert (=> b!1325972 m!1482571))

(declare-fun m!1482655 () Bool)

(assert (=> b!1325972 m!1482655))

(declare-fun m!1482657 () Bool)

(assert (=> b!1325949 m!1482657))

(declare-fun m!1482659 () Bool)

(assert (=> b!1325973 m!1482659))

(declare-fun m!1482661 () Bool)

(assert (=> b!1325955 m!1482661))

(declare-fun m!1482663 () Bool)

(assert (=> b!1325936 m!1482663))

(declare-fun m!1482665 () Bool)

(assert (=> b!1325936 m!1482665))

(declare-fun m!1482667 () Bool)

(assert (=> b!1325936 m!1482667))

(assert (=> b!1325936 m!1482665))

(declare-fun m!1482669 () Bool)

(assert (=> b!1325936 m!1482669))

(declare-fun m!1482671 () Bool)

(assert (=> b!1325936 m!1482671))

(declare-fun m!1482673 () Bool)

(assert (=> b!1325932 m!1482673))

(declare-fun m!1482675 () Bool)

(assert (=> b!1325935 m!1482675))

(assert (=> b!1325935 m!1482675))

(declare-fun m!1482677 () Bool)

(assert (=> b!1325935 m!1482677))

(declare-fun m!1482679 () Bool)

(assert (=> b!1325962 m!1482679))

(declare-fun m!1482681 () Bool)

(assert (=> b!1325954 m!1482681))

(assert (=> b!1325954 m!1482681))

(declare-fun m!1482683 () Bool)

(assert (=> b!1325954 m!1482683))

(declare-fun m!1482685 () Bool)

(assert (=> b!1325941 m!1482685))

(declare-fun m!1482687 () Bool)

(assert (=> b!1325933 m!1482687))

(declare-fun m!1482689 () Bool)

(assert (=> b!1325929 m!1482689))

(declare-fun m!1482691 () Bool)

(assert (=> b!1325958 m!1482691))

(declare-fun m!1482693 () Bool)

(assert (=> b!1325958 m!1482693))

(declare-fun m!1482695 () Bool)

(assert (=> b!1325958 m!1482695))

(declare-fun m!1482697 () Bool)

(assert (=> b!1325958 m!1482697))

(declare-fun m!1482699 () Bool)

(assert (=> b!1325930 m!1482699))

(declare-fun m!1482701 () Bool)

(assert (=> b!1325966 m!1482701))

(declare-fun m!1482703 () Bool)

(assert (=> b!1325945 m!1482703))

(declare-fun m!1482705 () Bool)

(assert (=> b!1325945 m!1482705))

(declare-fun m!1482707 () Bool)

(assert (=> b!1325957 m!1482707))

(assert (=> b!1325957 m!1482707))

(declare-fun m!1482709 () Bool)

(assert (=> b!1325957 m!1482709))

(check-sat (not b!1325933) (not b_next!32699) (not b!1325968) (not b!1325929) (not b!1325949) (not b_next!32703) b_and!88571 b_and!88569 (not b!1325969) (not b!1325961) (not b!1325972) b_and!88573 (not b!1325935) (not b!1325963) (not b!1325973) (not b!1325964) (not b!1325959) (not b!1325960) (not b!1325951) (not b!1325943) (not b_next!32701) (not b!1325931) (not b!1325955) (not b_next!32705) b_and!88567 (not b!1325928) (not b!1325952) (not b!1325945) (not b!1325950) (not b_next!32709) (not b!1325954) (not b!1325948) (not b!1325936) (not b!1325934) (not start!117914) (not b!1325966) (not b!1325944) b_and!88575 (not b!1325942) (not b!1325937) (not b!1325962) (not b_next!32707) (not b!1325927) (not b!1325946) (not b!1325932) (not b!1325930) (not b!1325970) (not b!1325941) (not b!1325940) (not b!1325938) b_and!88577 (not b!1325957) (not b!1325953) (not b!1325958))
(check-sat b_and!88573 (not b_next!32699) (not b_next!32701) (not b_next!32703) (not b_next!32709) b_and!88571 b_and!88575 b_and!88569 (not b_next!32707) b_and!88577 (not b_next!32705) b_and!88567)
