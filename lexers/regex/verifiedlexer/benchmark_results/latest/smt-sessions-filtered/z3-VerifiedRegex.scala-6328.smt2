; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!321586 () Bool)

(assert start!321586)

(declare-fun b!3457534 () Bool)

(declare-fun b_free!89833 () Bool)

(declare-fun b_next!90537 () Bool)

(assert (=> b!3457534 (= b_free!89833 (not b_next!90537))))

(declare-fun tp!1077693 () Bool)

(declare-fun b_and!243059 () Bool)

(assert (=> b!3457534 (= tp!1077693 b_and!243059)))

(declare-fun b_free!89835 () Bool)

(declare-fun b_next!90539 () Bool)

(assert (=> b!3457534 (= b_free!89835 (not b_next!90539))))

(declare-fun tp!1077688 () Bool)

(declare-fun b_and!243061 () Bool)

(assert (=> b!3457534 (= tp!1077688 b_and!243061)))

(declare-fun b!3457533 () Bool)

(declare-fun b_free!89837 () Bool)

(declare-fun b_next!90541 () Bool)

(assert (=> b!3457533 (= b_free!89837 (not b_next!90541))))

(declare-fun tp!1077690 () Bool)

(declare-fun b_and!243063 () Bool)

(assert (=> b!3457533 (= tp!1077690 b_and!243063)))

(declare-fun b_free!89839 () Bool)

(declare-fun b_next!90543 () Bool)

(assert (=> b!3457533 (= b_free!89839 (not b_next!90543))))

(declare-fun tp!1077686 () Bool)

(declare-fun b_and!243065 () Bool)

(assert (=> b!3457533 (= tp!1077686 b_and!243065)))

(declare-fun b!3457512 () Bool)

(declare-fun b_free!89841 () Bool)

(declare-fun b_next!90545 () Bool)

(assert (=> b!3457512 (= b_free!89841 (not b_next!90545))))

(declare-fun tp!1077696 () Bool)

(declare-fun b_and!243067 () Bool)

(assert (=> b!3457512 (= tp!1077696 b_and!243067)))

(declare-fun b_free!89843 () Bool)

(declare-fun b_next!90547 () Bool)

(assert (=> b!3457512 (= b_free!89843 (not b_next!90547))))

(declare-fun tp!1077692 () Bool)

(declare-fun b_and!243069 () Bool)

(assert (=> b!3457512 (= tp!1077692 b_and!243069)))

(declare-fun bs!560141 () Bool)

(declare-fun b!3457528 () Bool)

(declare-fun b!3457523 () Bool)

(assert (= bs!560141 (and b!3457528 b!3457523)))

(declare-fun lambda!121767 () Int)

(declare-fun lambda!121766 () Int)

(assert (=> bs!560141 (not (= lambda!121767 lambda!121766))))

(declare-fun b!3457548 () Bool)

(declare-fun e!2142092 () Bool)

(assert (=> b!3457548 (= e!2142092 true)))

(declare-fun b!3457547 () Bool)

(declare-fun e!2142091 () Bool)

(assert (=> b!3457547 (= e!2142091 e!2142092)))

(declare-fun b!3457546 () Bool)

(declare-fun e!2142090 () Bool)

(assert (=> b!3457546 (= e!2142090 e!2142091)))

(assert (=> b!3457528 e!2142090))

(assert (= b!3457547 b!3457548))

(assert (= b!3457546 b!3457547))

(declare-datatypes ((C!20576 0))(
  ( (C!20577 (val!12336 Int)) )
))
(declare-datatypes ((Regex!10195 0))(
  ( (ElementMatch!10195 (c!591758 C!20576)) (Concat!15861 (regOne!20902 Regex!10195) (regTwo!20902 Regex!10195)) (EmptyExpr!10195) (Star!10195 (reg!10524 Regex!10195)) (EmptyLang!10195) (Union!10195 (regOne!20903 Regex!10195) (regTwo!20903 Regex!10195)) )
))
(declare-datatypes ((List!37276 0))(
  ( (Nil!37152) (Cons!37152 (h!42572 (_ BitVec 16)) (t!272517 List!37276)) )
))
(declare-datatypes ((TokenValue!5666 0))(
  ( (FloatLiteralValue!11332 (text!40107 List!37276)) (TokenValueExt!5665 (__x!23549 Int)) (Broken!28330 (value!175360 List!37276)) (Object!5789) (End!5666) (Def!5666) (Underscore!5666) (Match!5666) (Else!5666) (Error!5666) (Case!5666) (If!5666) (Extends!5666) (Abstract!5666) (Class!5666) (Val!5666) (DelimiterValue!11332 (del!5726 List!37276)) (KeywordValue!5672 (value!175361 List!37276)) (CommentValue!11332 (value!175362 List!37276)) (WhitespaceValue!11332 (value!175363 List!37276)) (IndentationValue!5666 (value!175364 List!37276)) (String!41663) (Int32!5666) (Broken!28331 (value!175365 List!37276)) (Boolean!5667) (Unit!52481) (OperatorValue!5669 (op!5726 List!37276)) (IdentifierValue!11332 (value!175366 List!37276)) (IdentifierValue!11333 (value!175367 List!37276)) (WhitespaceValue!11333 (value!175368 List!37276)) (True!11332) (False!11332) (Broken!28332 (value!175369 List!37276)) (Broken!28333 (value!175370 List!37276)) (True!11333) (RightBrace!5666) (RightBracket!5666) (Colon!5666) (Null!5666) (Comma!5666) (LeftBracket!5666) (False!11333) (LeftBrace!5666) (ImaginaryLiteralValue!5666 (text!40108 List!37276)) (StringLiteralValue!16998 (value!175371 List!37276)) (EOFValue!5666 (value!175372 List!37276)) (IdentValue!5666 (value!175373 List!37276)) (DelimiterValue!11333 (value!175374 List!37276)) (DedentValue!5666 (value!175375 List!37276)) (NewLineValue!5666 (value!175376 List!37276)) (IntegerValue!16998 (value!175377 (_ BitVec 32)) (text!40109 List!37276)) (IntegerValue!16999 (value!175378 Int) (text!40110 List!37276)) (Times!5666) (Or!5666) (Equal!5666) (Minus!5666) (Broken!28334 (value!175379 List!37276)) (And!5666) (Div!5666) (LessEqual!5666) (Mod!5666) (Concat!15862) (Not!5666) (Plus!5666) (SpaceValue!5666 (value!175380 List!37276)) (IntegerValue!17000 (value!175381 Int) (text!40111 List!37276)) (StringLiteralValue!16999 (text!40112 List!37276)) (FloatLiteralValue!11333 (text!40113 List!37276)) (BytesLiteralValue!5666 (value!175382 List!37276)) (CommentValue!11333 (value!175383 List!37276)) (StringLiteralValue!17000 (value!175384 List!37276)) (ErrorTokenValue!5666 (msg!5727 List!37276)) )
))
(declare-datatypes ((List!37277 0))(
  ( (Nil!37153) (Cons!37153 (h!42573 C!20576) (t!272518 List!37277)) )
))
(declare-datatypes ((IArray!22499 0))(
  ( (IArray!22500 (innerList!11307 List!37277)) )
))
(declare-datatypes ((Conc!11247 0))(
  ( (Node!11247 (left!28987 Conc!11247) (right!29317 Conc!11247) (csize!22724 Int) (cheight!11458 Int)) (Leaf!17576 (xs!14421 IArray!22499) (csize!22725 Int)) (Empty!11247) )
))
(declare-datatypes ((BalanceConc!22108 0))(
  ( (BalanceConc!22109 (c!591759 Conc!11247)) )
))
(declare-datatypes ((String!41664 0))(
  ( (String!41665 (value!175385 String)) )
))
(declare-datatypes ((TokenValueInjection!10760 0))(
  ( (TokenValueInjection!10761 (toValue!7660 Int) (toChars!7519 Int)) )
))
(declare-datatypes ((Rule!10672 0))(
  ( (Rule!10673 (regex!5436 Regex!10195) (tag!6044 String!41664) (isSeparator!5436 Bool) (transformation!5436 TokenValueInjection!10760)) )
))
(declare-datatypes ((List!37278 0))(
  ( (Nil!37154) (Cons!37154 (h!42574 Rule!10672) (t!272519 List!37278)) )
))
(declare-fun rules!2135 () List!37278)

(get-info :version)

(assert (= (and b!3457528 ((_ is Cons!37154) rules!2135)) b!3457546))

(declare-fun order!19775 () Int)

(declare-fun order!19773 () Int)

(declare-fun dynLambda!15642 (Int Int) Int)

(declare-fun dynLambda!15643 (Int Int) Int)

(assert (=> b!3457548 (< (dynLambda!15642 order!19773 (toValue!7660 (transformation!5436 (h!42574 rules!2135)))) (dynLambda!15643 order!19775 lambda!121767))))

(declare-fun order!19777 () Int)

(declare-fun dynLambda!15644 (Int Int) Int)

(assert (=> b!3457548 (< (dynLambda!15644 order!19777 (toChars!7519 (transformation!5436 (h!42574 rules!2135)))) (dynLambda!15643 order!19775 lambda!121767))))

(assert (=> b!3457528 true))

(declare-fun b!3457499 () Bool)

(declare-fun res!1394898 () Bool)

(declare-fun e!2142062 () Bool)

(assert (=> b!3457499 (=> (not res!1394898) (not e!2142062))))

(declare-datatypes ((LexerInterface!5025 0))(
  ( (LexerInterfaceExt!5022 (__x!23550 Int)) (Lexer!5023) )
))
(declare-fun thiss!18206 () LexerInterface!5025)

(declare-fun rulesInvariant!4422 (LexerInterface!5025 List!37278) Bool)

(assert (=> b!3457499 (= res!1394898 (rulesInvariant!4422 thiss!18206 rules!2135))))

(declare-fun b!3457500 () Bool)

(declare-fun res!1394900 () Bool)

(assert (=> b!3457500 (=> (not res!1394900) (not e!2142062))))

(declare-datatypes ((Token!10238 0))(
  ( (Token!10239 (value!175386 TokenValue!5666) (rule!8026 Rule!10672) (size!28179 Int) (originalCharacters!6150 List!37277)) )
))
(declare-datatypes ((List!37279 0))(
  ( (Nil!37155) (Cons!37155 (h!42575 Token!10238) (t!272520 List!37279)) )
))
(declare-fun tokens!494 () List!37279)

(declare-datatypes ((IArray!22501 0))(
  ( (IArray!22502 (innerList!11308 List!37279)) )
))
(declare-datatypes ((Conc!11248 0))(
  ( (Node!11248 (left!28988 Conc!11248) (right!29318 Conc!11248) (csize!22726 Int) (cheight!11459 Int)) (Leaf!17577 (xs!14422 IArray!22501) (csize!22727 Int)) (Empty!11248) )
))
(declare-datatypes ((BalanceConc!22110 0))(
  ( (BalanceConc!22111 (c!591760 Conc!11248)) )
))
(declare-fun rulesProduceEachTokenIndividually!1476 (LexerInterface!5025 List!37278 BalanceConc!22110) Bool)

(declare-fun seqFromList!3925 (List!37279) BalanceConc!22110)

(assert (=> b!3457500 (= res!1394900 (rulesProduceEachTokenIndividually!1476 thiss!18206 rules!2135 (seqFromList!3925 tokens!494)))))

(declare-fun b!3457501 () Bool)

(declare-fun e!2142076 () Bool)

(declare-fun tp!1077694 () Bool)

(declare-fun e!2142063 () Bool)

(declare-fun inv!50317 (String!41664) Bool)

(declare-fun inv!50320 (TokenValueInjection!10760) Bool)

(assert (=> b!3457501 (= e!2142076 (and tp!1077694 (inv!50317 (tag!6044 (rule!8026 (h!42575 tokens!494)))) (inv!50320 (transformation!5436 (rule!8026 (h!42575 tokens!494)))) e!2142063))))

(declare-fun b!3457502 () Bool)

(declare-fun res!1394909 () Bool)

(assert (=> b!3457502 (=> (not res!1394909) (not e!2142062))))

(declare-fun separatorToken!241 () Token!10238)

(assert (=> b!3457502 (= res!1394909 (isSeparator!5436 (rule!8026 separatorToken!241)))))

(declare-fun b!3457503 () Bool)

(declare-fun res!1394904 () Bool)

(assert (=> b!3457503 (=> (not res!1394904) (not e!2142062))))

(declare-fun isEmpty!21501 (List!37278) Bool)

(assert (=> b!3457503 (= res!1394904 (not (isEmpty!21501 rules!2135)))))

(declare-fun b!3457504 () Bool)

(declare-fun res!1394910 () Bool)

(assert (=> b!3457504 (=> (not res!1394910) (not e!2142062))))

(declare-fun rulesProduceIndividualToken!2517 (LexerInterface!5025 List!37278 Token!10238) Bool)

(assert (=> b!3457504 (= res!1394910 (rulesProduceIndividualToken!2517 thiss!18206 rules!2135 separatorToken!241))))

(declare-fun b!3457505 () Bool)

(declare-fun e!2142080 () Bool)

(declare-fun e!2142082 () Bool)

(assert (=> b!3457505 (= e!2142080 e!2142082)))

(declare-fun res!1394901 () Bool)

(assert (=> b!3457505 (=> res!1394901 e!2142082)))

(assert (=> b!3457505 (= res!1394901 (or (isSeparator!5436 (rule!8026 (h!42575 tokens!494))) (isSeparator!5436 (rule!8026 (h!42575 (t!272520 tokens!494))))))))

(declare-datatypes ((Unit!52482 0))(
  ( (Unit!52483) )
))
(declare-fun lt!1174747 () Unit!52482)

(declare-fun forallContained!1383 (List!37279 Int Token!10238) Unit!52482)

(assert (=> b!3457505 (= lt!1174747 (forallContained!1383 tokens!494 lambda!121766 (h!42575 (t!272520 tokens!494))))))

(declare-fun lt!1174724 () Unit!52482)

(assert (=> b!3457505 (= lt!1174724 (forallContained!1383 tokens!494 lambda!121766 (h!42575 tokens!494)))))

(declare-fun b!3457506 () Bool)

(declare-fun e!2142054 () Bool)

(assert (=> b!3457506 (= e!2142054 false)))

(declare-fun b!3457507 () Bool)

(declare-fun e!2142053 () Bool)

(declare-fun e!2142058 () Bool)

(assert (=> b!3457507 (= e!2142053 e!2142058)))

(declare-fun res!1394893 () Bool)

(assert (=> b!3457507 (=> (not res!1394893) (not e!2142058))))

(declare-fun lt!1174720 () Rule!10672)

(declare-fun lt!1174728 () List!37277)

(declare-fun matchR!4779 (Regex!10195 List!37277) Bool)

(assert (=> b!3457507 (= res!1394893 (matchR!4779 (regex!5436 lt!1174720) lt!1174728))))

(declare-datatypes ((Option!7519 0))(
  ( (None!7518) (Some!7518 (v!36834 Rule!10672)) )
))
(declare-fun lt!1174736 () Option!7519)

(declare-fun get!11889 (Option!7519) Rule!10672)

(assert (=> b!3457507 (= lt!1174720 (get!11889 lt!1174736))))

(declare-fun b!3457508 () Bool)

(declare-fun e!2142083 () Bool)

(declare-datatypes ((tuple2!36868 0))(
  ( (tuple2!36869 (_1!21568 BalanceConc!22110) (_2!21568 BalanceConc!22108)) )
))
(declare-fun lt!1174739 () tuple2!36868)

(declare-fun isEmpty!21502 (BalanceConc!22108) Bool)

(assert (=> b!3457508 (= e!2142083 (isEmpty!21502 (_2!21568 lt!1174739)))))

(declare-fun b!3457509 () Bool)

(declare-fun tp!1077689 () Bool)

(declare-fun e!2142061 () Bool)

(declare-fun e!2142057 () Bool)

(assert (=> b!3457509 (= e!2142057 (and tp!1077689 (inv!50317 (tag!6044 (rule!8026 separatorToken!241))) (inv!50320 (transformation!5436 (rule!8026 separatorToken!241))) e!2142061))))

(declare-fun b!3457510 () Bool)

(declare-fun e!2142055 () Bool)

(declare-fun e!2142064 () Bool)

(assert (=> b!3457510 (= e!2142055 e!2142064)))

(declare-fun res!1394888 () Bool)

(assert (=> b!3457510 (=> res!1394888 e!2142064)))

(declare-fun lt!1174752 () List!37277)

(declare-fun lt!1174737 () List!37277)

(assert (=> b!3457510 (= res!1394888 (not (= lt!1174752 lt!1174737)))))

(declare-fun lt!1174740 () List!37277)

(assert (=> b!3457510 (= lt!1174740 lt!1174737)))

(declare-fun lt!1174746 () List!37277)

(declare-fun ++!9155 (List!37277 List!37277) List!37277)

(assert (=> b!3457510 (= lt!1174737 (++!9155 lt!1174728 lt!1174746))))

(declare-fun lt!1174734 () List!37277)

(declare-fun lt!1174729 () Unit!52482)

(declare-fun lt!1174738 () List!37277)

(declare-fun lemmaConcatAssociativity!1954 (List!37277 List!37277 List!37277) Unit!52482)

(assert (=> b!3457510 (= lt!1174729 (lemmaConcatAssociativity!1954 lt!1174728 lt!1174734 lt!1174738))))

(declare-fun b!3457511 () Bool)

(declare-fun e!2142072 () Bool)

(declare-fun e!2142079 () Bool)

(declare-fun tp!1077687 () Bool)

(assert (=> b!3457511 (= e!2142072 (and e!2142079 tp!1077687))))

(assert (=> b!3457512 (= e!2142061 (and tp!1077696 tp!1077692))))

(declare-fun tp!1077695 () Bool)

(declare-fun e!2142081 () Bool)

(declare-fun b!3457513 () Bool)

(assert (=> b!3457513 (= e!2142079 (and tp!1077695 (inv!50317 (tag!6044 (h!42574 rules!2135))) (inv!50320 (transformation!5436 (h!42574 rules!2135))) e!2142081))))

(declare-fun e!2142069 () Bool)

(declare-fun tp!1077697 () Bool)

(declare-fun b!3457514 () Bool)

(declare-fun inv!21 (TokenValue!5666) Bool)

(assert (=> b!3457514 (= e!2142069 (and (inv!21 (value!175386 (h!42575 tokens!494))) e!2142076 tp!1077697))))

(declare-fun b!3457515 () Bool)

(declare-fun e!2142056 () Bool)

(declare-fun e!2142068 () Bool)

(assert (=> b!3457515 (= e!2142056 e!2142068)))

(declare-fun res!1394899 () Bool)

(assert (=> b!3457515 (=> res!1394899 e!2142068)))

(declare-fun lt!1174751 () List!37277)

(declare-fun lt!1174744 () List!37277)

(assert (=> b!3457515 (= res!1394899 (or (not (= lt!1174751 lt!1174728)) (not (= lt!1174744 lt!1174728))))))

(declare-fun list!13523 (BalanceConc!22108) List!37277)

(declare-fun charsOf!3450 (Token!10238) BalanceConc!22108)

(assert (=> b!3457515 (= lt!1174728 (list!13523 (charsOf!3450 (h!42575 tokens!494))))))

(declare-fun b!3457516 () Bool)

(declare-fun res!1394905 () Bool)

(declare-fun e!2142077 () Bool)

(assert (=> b!3457516 (=> (not res!1394905) (not e!2142077))))

(declare-fun lt!1174727 () tuple2!36868)

(declare-fun apply!8742 (BalanceConc!22110 Int) Token!10238)

(assert (=> b!3457516 (= res!1394905 (= (apply!8742 (_1!21568 lt!1174727) 0) separatorToken!241))))

(declare-fun b!3457517 () Bool)

(declare-fun e!2142074 () Bool)

(assert (=> b!3457517 (= e!2142074 true)))

(declare-fun lt!1174742 () Bool)

(declare-fun contains!6883 (List!37278 Rule!10672) Bool)

(assert (=> b!3457517 (= lt!1174742 (contains!6883 rules!2135 (rule!8026 separatorToken!241)))))

(declare-fun b!3457518 () Bool)

(declare-fun res!1394886 () Bool)

(assert (=> b!3457518 (=> (not res!1394886) (not e!2142062))))

(assert (=> b!3457518 (= res!1394886 (and (not ((_ is Nil!37155) tokens!494)) (not ((_ is Nil!37155) (t!272520 tokens!494)))))))

(declare-fun b!3457519 () Bool)

(declare-fun res!1394890 () Bool)

(assert (=> b!3457519 (=> res!1394890 e!2142068)))

(assert (=> b!3457519 (= res!1394890 (not (rulesProduceIndividualToken!2517 thiss!18206 rules!2135 (h!42575 tokens!494))))))

(declare-fun b!3457520 () Bool)

(declare-fun e!2142075 () Unit!52482)

(declare-fun Unit!52484 () Unit!52482)

(assert (=> b!3457520 (= e!2142075 Unit!52484)))

(declare-fun lt!1174745 () C!20576)

(declare-fun lt!1174731 () Unit!52482)

(declare-fun lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!494 (Regex!10195 List!37277 C!20576) Unit!52482)

(assert (=> b!3457520 (= lt!1174731 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!494 (regex!5436 (rule!8026 separatorToken!241)) lt!1174734 lt!1174745))))

(declare-fun res!1394895 () Bool)

(assert (=> b!3457520 (= res!1394895 (not (matchR!4779 (regex!5436 (rule!8026 separatorToken!241)) lt!1174734)))))

(assert (=> b!3457520 (=> (not res!1394895) (not e!2142054))))

(assert (=> b!3457520 e!2142054))

(declare-fun b!3457521 () Bool)

(assert (=> b!3457521 (= e!2142062 (not e!2142056))))

(declare-fun res!1394889 () Bool)

(assert (=> b!3457521 (=> res!1394889 e!2142056)))

(assert (=> b!3457521 (= res!1394889 (not (= lt!1174744 lt!1174751)))))

(declare-fun printList!1573 (LexerInterface!5025 List!37279) List!37277)

(assert (=> b!3457521 (= lt!1174751 (printList!1573 thiss!18206 (Cons!37155 (h!42575 tokens!494) Nil!37155)))))

(declare-fun lt!1174749 () BalanceConc!22108)

(assert (=> b!3457521 (= lt!1174744 (list!13523 lt!1174749))))

(declare-fun lt!1174748 () BalanceConc!22110)

(declare-fun printTailRec!1520 (LexerInterface!5025 BalanceConc!22110 Int BalanceConc!22108) BalanceConc!22108)

(assert (=> b!3457521 (= lt!1174749 (printTailRec!1520 thiss!18206 lt!1174748 0 (BalanceConc!22109 Empty!11247)))))

(declare-fun print!2090 (LexerInterface!5025 BalanceConc!22110) BalanceConc!22108)

(assert (=> b!3457521 (= lt!1174749 (print!2090 thiss!18206 lt!1174748))))

(declare-fun singletonSeq!2532 (Token!10238) BalanceConc!22110)

(assert (=> b!3457521 (= lt!1174748 (singletonSeq!2532 (h!42575 tokens!494)))))

(declare-fun b!3457522 () Bool)

(declare-fun res!1394902 () Bool)

(assert (=> b!3457522 (=> (not res!1394902) (not e!2142062))))

(declare-fun sepAndNonSepRulesDisjointChars!1630 (List!37278 List!37278) Bool)

(assert (=> b!3457522 (= res!1394902 (sepAndNonSepRulesDisjointChars!1630 rules!2135 rules!2135))))

(declare-fun res!1394891 () Bool)

(assert (=> b!3457523 (=> (not res!1394891) (not e!2142062))))

(declare-fun forall!7915 (List!37279 Int) Bool)

(assert (=> b!3457523 (= res!1394891 (forall!7915 tokens!494 lambda!121766))))

(declare-fun b!3457524 () Bool)

(declare-fun e!2142052 () Bool)

(declare-fun e!2142059 () Bool)

(assert (=> b!3457524 (= e!2142052 e!2142059)))

(declare-fun res!1394897 () Bool)

(assert (=> b!3457524 (=> (not res!1394897) (not e!2142059))))

(declare-fun lt!1174721 () Rule!10672)

(assert (=> b!3457524 (= res!1394897 (matchR!4779 (regex!5436 lt!1174721) lt!1174734))))

(declare-fun lt!1174726 () Option!7519)

(assert (=> b!3457524 (= lt!1174721 (get!11889 lt!1174726))))

(declare-fun b!3457525 () Bool)

(declare-fun res!1394887 () Bool)

(assert (=> b!3457525 (=> (not res!1394887) (not e!2142083))))

(assert (=> b!3457525 (= res!1394887 (= (apply!8742 (_1!21568 lt!1174739) 0) (h!42575 (t!272520 tokens!494))))))

(declare-fun b!3457526 () Bool)

(declare-fun e!2142073 () Bool)

(declare-fun tp!1077691 () Bool)

(declare-fun inv!50321 (Token!10238) Bool)

(assert (=> b!3457526 (= e!2142073 (and (inv!50321 (h!42575 tokens!494)) e!2142069 tp!1077691))))

(declare-fun b!3457527 () Bool)

(assert (=> b!3457527 (= e!2142058 (= (rule!8026 (h!42575 tokens!494)) lt!1174720))))

(declare-fun res!1394906 () Bool)

(assert (=> start!321586 (=> (not res!1394906) (not e!2142062))))

(assert (=> start!321586 (= res!1394906 ((_ is Lexer!5023) thiss!18206))))

(assert (=> start!321586 e!2142062))

(assert (=> start!321586 true))

(assert (=> start!321586 e!2142072))

(assert (=> start!321586 e!2142073))

(declare-fun e!2142071 () Bool)

(assert (=> start!321586 (and (inv!50321 separatorToken!241) e!2142071)))

(assert (=> b!3457528 (= e!2142064 e!2142074)))

(declare-fun res!1394885 () Bool)

(assert (=> b!3457528 (=> res!1394885 e!2142074)))

(assert (=> b!3457528 (= res!1394885 (not (contains!6883 rules!2135 (rule!8026 (h!42575 tokens!494)))))))

(declare-fun contains!6884 (List!37277 C!20576) Bool)

(declare-fun usedCharacters!670 (Regex!10195) List!37277)

(assert (=> b!3457528 (not (contains!6884 (usedCharacters!670 (regex!5436 (rule!8026 (h!42575 tokens!494)))) lt!1174745))))

(declare-fun lt!1174733 () Unit!52482)

(declare-fun lemmaNonSepRuleNotContainsCharContainedInASepRule!236 (LexerInterface!5025 List!37278 List!37278 Rule!10672 Rule!10672 C!20576) Unit!52482)

(assert (=> b!3457528 (= lt!1174733 (lemmaNonSepRuleNotContainsCharContainedInASepRule!236 thiss!18206 rules!2135 rules!2135 (rule!8026 (h!42575 tokens!494)) (rule!8026 separatorToken!241) lt!1174745))))

(declare-fun lt!1174723 () Unit!52482)

(assert (=> b!3457528 (= lt!1174723 (forallContained!1383 tokens!494 lambda!121767 (h!42575 (t!272520 tokens!494))))))

(assert (=> b!3457528 (= (rulesProduceIndividualToken!2517 thiss!18206 rules!2135 (h!42575 (t!272520 tokens!494))) e!2142083)))

(declare-fun res!1394892 () Bool)

(assert (=> b!3457528 (=> (not res!1394892) (not e!2142083))))

(declare-fun size!28180 (BalanceConc!22110) Int)

(assert (=> b!3457528 (= res!1394892 (= (size!28180 (_1!21568 lt!1174739)) 1))))

(declare-fun lt!1174741 () BalanceConc!22108)

(declare-fun lex!2351 (LexerInterface!5025 List!37278 BalanceConc!22108) tuple2!36868)

(assert (=> b!3457528 (= lt!1174739 (lex!2351 thiss!18206 rules!2135 lt!1174741))))

(declare-fun lt!1174730 () BalanceConc!22110)

(assert (=> b!3457528 (= lt!1174741 (printTailRec!1520 thiss!18206 lt!1174730 0 (BalanceConc!22109 Empty!11247)))))

(assert (=> b!3457528 (= lt!1174741 (print!2090 thiss!18206 lt!1174730))))

(assert (=> b!3457528 (= lt!1174730 (singletonSeq!2532 (h!42575 (t!272520 tokens!494))))))

(assert (=> b!3457528 e!2142077))

(declare-fun res!1394907 () Bool)

(assert (=> b!3457528 (=> (not res!1394907) (not e!2142077))))

(assert (=> b!3457528 (= res!1394907 (= (size!28180 (_1!21568 lt!1174727)) 1))))

(declare-fun lt!1174754 () BalanceConc!22108)

(assert (=> b!3457528 (= lt!1174727 (lex!2351 thiss!18206 rules!2135 lt!1174754))))

(declare-fun lt!1174753 () BalanceConc!22110)

(assert (=> b!3457528 (= lt!1174754 (printTailRec!1520 thiss!18206 lt!1174753 0 (BalanceConc!22109 Empty!11247)))))

(assert (=> b!3457528 (= lt!1174754 (print!2090 thiss!18206 lt!1174753))))

(assert (=> b!3457528 (= lt!1174753 (singletonSeq!2532 separatorToken!241))))

(declare-fun lt!1174743 () Unit!52482)

(assert (=> b!3457528 (= lt!1174743 e!2142075)))

(declare-fun c!591757 () Bool)

(assert (=> b!3457528 (= c!591757 (not (contains!6884 (usedCharacters!670 (regex!5436 (rule!8026 separatorToken!241))) lt!1174745)))))

(declare-fun head!7315 (List!37277) C!20576)

(assert (=> b!3457528 (= lt!1174745 (head!7315 lt!1174734))))

(assert (=> b!3457528 e!2142052))

(declare-fun res!1394903 () Bool)

(assert (=> b!3457528 (=> (not res!1394903) (not e!2142052))))

(declare-fun isDefined!5790 (Option!7519) Bool)

(assert (=> b!3457528 (= res!1394903 (isDefined!5790 lt!1174726))))

(declare-fun getRuleFromTag!1079 (LexerInterface!5025 List!37278 String!41664) Option!7519)

(assert (=> b!3457528 (= lt!1174726 (getRuleFromTag!1079 thiss!18206 rules!2135 (tag!6044 (rule!8026 separatorToken!241))))))

(declare-fun lt!1174735 () Unit!52482)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1079 (LexerInterface!5025 List!37278 List!37277 Token!10238) Unit!52482)

(assert (=> b!3457528 (= lt!1174735 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1079 thiss!18206 rules!2135 lt!1174734 separatorToken!241))))

(declare-fun lt!1174722 () BalanceConc!22108)

(declare-datatypes ((tuple2!36870 0))(
  ( (tuple2!36871 (_1!21569 Token!10238) (_2!21569 List!37277)) )
))
(declare-datatypes ((Option!7520 0))(
  ( (None!7519) (Some!7519 (v!36835 tuple2!36870)) )
))
(declare-fun maxPrefixOneRule!1732 (LexerInterface!5025 Rule!10672 List!37277) Option!7520)

(declare-fun apply!8743 (TokenValueInjection!10760 BalanceConc!22108) TokenValue!5666)

(declare-fun size!28181 (List!37277) Int)

(assert (=> b!3457528 (= (maxPrefixOneRule!1732 thiss!18206 (rule!8026 (h!42575 tokens!494)) lt!1174728) (Some!7519 (tuple2!36871 (Token!10239 (apply!8743 (transformation!5436 (rule!8026 (h!42575 tokens!494))) lt!1174722) (rule!8026 (h!42575 tokens!494)) (size!28181 lt!1174728) lt!1174728) Nil!37153)))))

(declare-fun lt!1174725 () Unit!52482)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!825 (LexerInterface!5025 List!37278 List!37277 List!37277 List!37277 Rule!10672) Unit!52482)

(assert (=> b!3457528 (= lt!1174725 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!825 thiss!18206 rules!2135 lt!1174728 lt!1174728 Nil!37153 (rule!8026 (h!42575 tokens!494))))))

(assert (=> b!3457528 e!2142053))

(declare-fun res!1394894 () Bool)

(assert (=> b!3457528 (=> (not res!1394894) (not e!2142053))))

(assert (=> b!3457528 (= res!1394894 (isDefined!5790 lt!1174736))))

(assert (=> b!3457528 (= lt!1174736 (getRuleFromTag!1079 thiss!18206 rules!2135 (tag!6044 (rule!8026 (h!42575 tokens!494)))))))

(declare-fun lt!1174732 () Unit!52482)

(assert (=> b!3457528 (= lt!1174732 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1079 thiss!18206 rules!2135 lt!1174728 (h!42575 tokens!494)))))

(declare-fun lt!1174750 () Unit!52482)

(declare-fun lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!1014 (LexerInterface!5025 List!37278 List!37279 Token!10238) Unit!52482)

(assert (=> b!3457528 (= lt!1174750 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!1014 thiss!18206 rules!2135 tokens!494 (h!42575 tokens!494)))))

(declare-fun b!3457529 () Bool)

(declare-fun tp!1077698 () Bool)

(assert (=> b!3457529 (= e!2142071 (and (inv!21 (value!175386 separatorToken!241)) e!2142057 tp!1077698))))

(declare-fun b!3457530 () Bool)

(assert (=> b!3457530 (= e!2142077 (isEmpty!21502 (_2!21568 lt!1174727)))))

(declare-fun b!3457531 () Bool)

(declare-fun Unit!52485 () Unit!52482)

(assert (=> b!3457531 (= e!2142075 Unit!52485)))

(declare-fun b!3457532 () Bool)

(declare-fun e!2142078 () Bool)

(assert (=> b!3457532 (= e!2142082 e!2142078)))

(declare-fun res!1394896 () Bool)

(assert (=> b!3457532 (=> res!1394896 e!2142078)))

(declare-fun printWithSeparatorTokenList!312 (LexerInterface!5025 List!37279 Token!10238) List!37277)

(assert (=> b!3457532 (= res!1394896 (not (= lt!1174738 (++!9155 (++!9155 (list!13523 (charsOf!3450 (h!42575 (t!272520 tokens!494)))) lt!1174734) (printWithSeparatorTokenList!312 thiss!18206 (t!272520 (t!272520 tokens!494)) separatorToken!241)))))))

(assert (=> b!3457532 (= lt!1174746 (++!9155 lt!1174734 lt!1174738))))

(assert (=> b!3457532 (= lt!1174734 (list!13523 (charsOf!3450 separatorToken!241)))))

(assert (=> b!3457532 (= lt!1174738 (printWithSeparatorTokenList!312 thiss!18206 (t!272520 tokens!494) separatorToken!241))))

(assert (=> b!3457532 (= lt!1174752 (printWithSeparatorTokenList!312 thiss!18206 tokens!494 separatorToken!241))))

(assert (=> b!3457533 (= e!2142063 (and tp!1077690 tp!1077686))))

(assert (=> b!3457534 (= e!2142081 (and tp!1077693 tp!1077688))))

(declare-fun b!3457535 () Bool)

(assert (=> b!3457535 (= e!2142078 e!2142055)))

(declare-fun res!1394908 () Bool)

(assert (=> b!3457535 (=> res!1394908 e!2142055)))

(assert (=> b!3457535 (= res!1394908 (not (= lt!1174752 lt!1174740)))))

(assert (=> b!3457535 (= lt!1174740 (++!9155 (++!9155 lt!1174728 lt!1174734) lt!1174738))))

(declare-fun b!3457536 () Bool)

(assert (=> b!3457536 (= e!2142068 e!2142080)))

(declare-fun res!1394911 () Bool)

(assert (=> b!3457536 (=> res!1394911 e!2142080)))

(declare-fun isEmpty!21503 (BalanceConc!22110) Bool)

(assert (=> b!3457536 (= res!1394911 (isEmpty!21503 (_1!21568 (lex!2351 thiss!18206 rules!2135 lt!1174722))))))

(declare-fun seqFromList!3926 (List!37277) BalanceConc!22108)

(assert (=> b!3457536 (= lt!1174722 (seqFromList!3926 lt!1174728))))

(declare-fun b!3457537 () Bool)

(assert (=> b!3457537 (= e!2142059 (= (rule!8026 separatorToken!241) lt!1174721))))

(assert (= (and start!321586 res!1394906) b!3457503))

(assert (= (and b!3457503 res!1394904) b!3457499))

(assert (= (and b!3457499 res!1394898) b!3457500))

(assert (= (and b!3457500 res!1394900) b!3457504))

(assert (= (and b!3457504 res!1394910) b!3457502))

(assert (= (and b!3457502 res!1394909) b!3457523))

(assert (= (and b!3457523 res!1394891) b!3457522))

(assert (= (and b!3457522 res!1394902) b!3457518))

(assert (= (and b!3457518 res!1394886) b!3457521))

(assert (= (and b!3457521 (not res!1394889)) b!3457515))

(assert (= (and b!3457515 (not res!1394899)) b!3457519))

(assert (= (and b!3457519 (not res!1394890)) b!3457536))

(assert (= (and b!3457536 (not res!1394911)) b!3457505))

(assert (= (and b!3457505 (not res!1394901)) b!3457532))

(assert (= (and b!3457532 (not res!1394896)) b!3457535))

(assert (= (and b!3457535 (not res!1394908)) b!3457510))

(assert (= (and b!3457510 (not res!1394888)) b!3457528))

(assert (= (and b!3457528 res!1394894) b!3457507))

(assert (= (and b!3457507 res!1394893) b!3457527))

(assert (= (and b!3457528 res!1394903) b!3457524))

(assert (= (and b!3457524 res!1394897) b!3457537))

(assert (= (and b!3457528 c!591757) b!3457520))

(assert (= (and b!3457528 (not c!591757)) b!3457531))

(assert (= (and b!3457520 res!1394895) b!3457506))

(assert (= (and b!3457528 res!1394907) b!3457516))

(assert (= (and b!3457516 res!1394905) b!3457530))

(assert (= (and b!3457528 res!1394892) b!3457525))

(assert (= (and b!3457525 res!1394887) b!3457508))

(assert (= (and b!3457528 (not res!1394885)) b!3457517))

(assert (= b!3457513 b!3457534))

(assert (= b!3457511 b!3457513))

(assert (= (and start!321586 ((_ is Cons!37154) rules!2135)) b!3457511))

(assert (= b!3457501 b!3457533))

(assert (= b!3457514 b!3457501))

(assert (= b!3457526 b!3457514))

(assert (= (and start!321586 ((_ is Cons!37155) tokens!494)) b!3457526))

(assert (= b!3457509 b!3457512))

(assert (= b!3457529 b!3457509))

(assert (= start!321586 b!3457529))

(declare-fun m!3857847 () Bool)

(assert (=> b!3457503 m!3857847))

(declare-fun m!3857849 () Bool)

(assert (=> b!3457536 m!3857849))

(declare-fun m!3857851 () Bool)

(assert (=> b!3457536 m!3857851))

(declare-fun m!3857853 () Bool)

(assert (=> b!3457536 m!3857853))

(declare-fun m!3857855 () Bool)

(assert (=> b!3457522 m!3857855))

(declare-fun m!3857857 () Bool)

(assert (=> b!3457517 m!3857857))

(declare-fun m!3857859 () Bool)

(assert (=> b!3457505 m!3857859))

(declare-fun m!3857861 () Bool)

(assert (=> b!3457505 m!3857861))

(declare-fun m!3857863 () Bool)

(assert (=> b!3457514 m!3857863))

(declare-fun m!3857865 () Bool)

(assert (=> b!3457524 m!3857865))

(declare-fun m!3857867 () Bool)

(assert (=> b!3457524 m!3857867))

(declare-fun m!3857869 () Bool)

(assert (=> b!3457530 m!3857869))

(declare-fun m!3857871 () Bool)

(assert (=> b!3457515 m!3857871))

(assert (=> b!3457515 m!3857871))

(declare-fun m!3857873 () Bool)

(assert (=> b!3457515 m!3857873))

(declare-fun m!3857875 () Bool)

(assert (=> b!3457501 m!3857875))

(declare-fun m!3857877 () Bool)

(assert (=> b!3457501 m!3857877))

(declare-fun m!3857879 () Bool)

(assert (=> b!3457504 m!3857879))

(declare-fun m!3857881 () Bool)

(assert (=> b!3457513 m!3857881))

(declare-fun m!3857883 () Bool)

(assert (=> b!3457513 m!3857883))

(declare-fun m!3857885 () Bool)

(assert (=> b!3457526 m!3857885))

(declare-fun m!3857887 () Bool)

(assert (=> b!3457528 m!3857887))

(declare-fun m!3857889 () Bool)

(assert (=> b!3457528 m!3857889))

(declare-fun m!3857891 () Bool)

(assert (=> b!3457528 m!3857891))

(declare-fun m!3857893 () Bool)

(assert (=> b!3457528 m!3857893))

(declare-fun m!3857895 () Bool)

(assert (=> b!3457528 m!3857895))

(declare-fun m!3857897 () Bool)

(assert (=> b!3457528 m!3857897))

(declare-fun m!3857899 () Bool)

(assert (=> b!3457528 m!3857899))

(declare-fun m!3857901 () Bool)

(assert (=> b!3457528 m!3857901))

(declare-fun m!3857903 () Bool)

(assert (=> b!3457528 m!3857903))

(declare-fun m!3857905 () Bool)

(assert (=> b!3457528 m!3857905))

(declare-fun m!3857907 () Bool)

(assert (=> b!3457528 m!3857907))

(declare-fun m!3857909 () Bool)

(assert (=> b!3457528 m!3857909))

(declare-fun m!3857911 () Bool)

(assert (=> b!3457528 m!3857911))

(declare-fun m!3857913 () Bool)

(assert (=> b!3457528 m!3857913))

(declare-fun m!3857915 () Bool)

(assert (=> b!3457528 m!3857915))

(declare-fun m!3857917 () Bool)

(assert (=> b!3457528 m!3857917))

(declare-fun m!3857919 () Bool)

(assert (=> b!3457528 m!3857919))

(declare-fun m!3857921 () Bool)

(assert (=> b!3457528 m!3857921))

(assert (=> b!3457528 m!3857905))

(declare-fun m!3857923 () Bool)

(assert (=> b!3457528 m!3857923))

(declare-fun m!3857925 () Bool)

(assert (=> b!3457528 m!3857925))

(declare-fun m!3857927 () Bool)

(assert (=> b!3457528 m!3857927))

(declare-fun m!3857929 () Bool)

(assert (=> b!3457528 m!3857929))

(assert (=> b!3457528 m!3857887))

(declare-fun m!3857931 () Bool)

(assert (=> b!3457528 m!3857931))

(declare-fun m!3857933 () Bool)

(assert (=> b!3457528 m!3857933))

(declare-fun m!3857935 () Bool)

(assert (=> b!3457528 m!3857935))

(declare-fun m!3857937 () Bool)

(assert (=> b!3457528 m!3857937))

(declare-fun m!3857939 () Bool)

(assert (=> b!3457528 m!3857939))

(declare-fun m!3857941 () Bool)

(assert (=> b!3457528 m!3857941))

(declare-fun m!3857943 () Bool)

(assert (=> b!3457528 m!3857943))

(declare-fun m!3857945 () Bool)

(assert (=> b!3457528 m!3857945))

(declare-fun m!3857947 () Bool)

(assert (=> b!3457532 m!3857947))

(declare-fun m!3857949 () Bool)

(assert (=> b!3457532 m!3857949))

(declare-fun m!3857951 () Bool)

(assert (=> b!3457532 m!3857951))

(declare-fun m!3857953 () Bool)

(assert (=> b!3457532 m!3857953))

(declare-fun m!3857955 () Bool)

(assert (=> b!3457532 m!3857955))

(assert (=> b!3457532 m!3857947))

(assert (=> b!3457532 m!3857953))

(declare-fun m!3857957 () Bool)

(assert (=> b!3457532 m!3857957))

(declare-fun m!3857959 () Bool)

(assert (=> b!3457532 m!3857959))

(assert (=> b!3457532 m!3857949))

(declare-fun m!3857961 () Bool)

(assert (=> b!3457532 m!3857961))

(assert (=> b!3457532 m!3857955))

(assert (=> b!3457532 m!3857957))

(declare-fun m!3857963 () Bool)

(assert (=> b!3457532 m!3857963))

(declare-fun m!3857965 () Bool)

(assert (=> b!3457532 m!3857965))

(declare-fun m!3857967 () Bool)

(assert (=> b!3457516 m!3857967))

(declare-fun m!3857969 () Bool)

(assert (=> b!3457510 m!3857969))

(declare-fun m!3857971 () Bool)

(assert (=> b!3457510 m!3857971))

(declare-fun m!3857973 () Bool)

(assert (=> b!3457520 m!3857973))

(declare-fun m!3857975 () Bool)

(assert (=> b!3457520 m!3857975))

(declare-fun m!3857977 () Bool)

(assert (=> b!3457509 m!3857977))

(declare-fun m!3857979 () Bool)

(assert (=> b!3457509 m!3857979))

(declare-fun m!3857981 () Bool)

(assert (=> b!3457521 m!3857981))

(declare-fun m!3857983 () Bool)

(assert (=> b!3457521 m!3857983))

(declare-fun m!3857985 () Bool)

(assert (=> b!3457521 m!3857985))

(declare-fun m!3857987 () Bool)

(assert (=> b!3457521 m!3857987))

(declare-fun m!3857989 () Bool)

(assert (=> b!3457521 m!3857989))

(declare-fun m!3857991 () Bool)

(assert (=> b!3457525 m!3857991))

(declare-fun m!3857993 () Bool)

(assert (=> b!3457519 m!3857993))

(declare-fun m!3857995 () Bool)

(assert (=> b!3457500 m!3857995))

(assert (=> b!3457500 m!3857995))

(declare-fun m!3857997 () Bool)

(assert (=> b!3457500 m!3857997))

(declare-fun m!3857999 () Bool)

(assert (=> b!3457529 m!3857999))

(declare-fun m!3858001 () Bool)

(assert (=> b!3457523 m!3858001))

(declare-fun m!3858003 () Bool)

(assert (=> b!3457508 m!3858003))

(declare-fun m!3858005 () Bool)

(assert (=> b!3457535 m!3858005))

(assert (=> b!3457535 m!3858005))

(declare-fun m!3858007 () Bool)

(assert (=> b!3457535 m!3858007))

(declare-fun m!3858009 () Bool)

(assert (=> start!321586 m!3858009))

(declare-fun m!3858011 () Bool)

(assert (=> b!3457507 m!3858011))

(declare-fun m!3858013 () Bool)

(assert (=> b!3457507 m!3858013))

(declare-fun m!3858015 () Bool)

(assert (=> b!3457499 m!3858015))

(check-sat (not b_next!90545) (not b!3457508) b_and!243063 (not b!3457536) b_and!243061 (not b!3457528) b_and!243069 b_and!243065 b_and!243059 (not start!321586) (not b!3457504) (not b!3457524) (not b_next!90547) (not b!3457532) (not b!3457511) (not b!3457521) (not b!3457501) (not b!3457499) (not b!3457525) (not b!3457500) (not b!3457523) (not b!3457515) (not b!3457546) (not b_next!90541) (not b!3457526) (not b!3457535) (not b!3457505) (not b!3457522) (not b!3457519) (not b!3457529) (not b_next!90537) b_and!243067 (not b!3457507) (not b!3457516) (not b!3457514) (not b!3457530) (not b!3457517) (not b!3457520) (not b_next!90543) (not b!3457510) (not b!3457513) (not b!3457503) (not b!3457509) (not b_next!90539))
(check-sat (not b_next!90545) (not b_next!90541) b_and!243063 b_and!243061 b_and!243069 b_and!243065 (not b_next!90543) b_and!243059 (not b_next!90539) (not b_next!90547) (not b_next!90537) b_and!243067)
