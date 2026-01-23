; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!327714 () Bool)

(assert start!327714)

(declare-fun b!3526316 () Bool)

(declare-fun b_free!90873 () Bool)

(declare-fun b_next!91577 () Bool)

(assert (=> b!3526316 (= b_free!90873 (not b_next!91577))))

(declare-fun tp!1087753 () Bool)

(declare-fun b_and!251419 () Bool)

(assert (=> b!3526316 (= tp!1087753 b_and!251419)))

(declare-fun b_free!90875 () Bool)

(declare-fun b_next!91579 () Bool)

(assert (=> b!3526316 (= b_free!90875 (not b_next!91579))))

(declare-fun tp!1087758 () Bool)

(declare-fun b_and!251421 () Bool)

(assert (=> b!3526316 (= tp!1087758 b_and!251421)))

(declare-fun b!3526310 () Bool)

(declare-fun b_free!90877 () Bool)

(declare-fun b_next!91581 () Bool)

(assert (=> b!3526310 (= b_free!90877 (not b_next!91581))))

(declare-fun tp!1087756 () Bool)

(declare-fun b_and!251423 () Bool)

(assert (=> b!3526310 (= tp!1087756 b_and!251423)))

(declare-fun b_free!90879 () Bool)

(declare-fun b_next!91583 () Bool)

(assert (=> b!3526310 (= b_free!90879 (not b_next!91583))))

(declare-fun tp!1087752 () Bool)

(declare-fun b_and!251425 () Bool)

(assert (=> b!3526310 (= tp!1087752 b_and!251425)))

(declare-fun b!3526333 () Bool)

(declare-fun b_free!90881 () Bool)

(declare-fun b_next!91585 () Bool)

(assert (=> b!3526333 (= b_free!90881 (not b_next!91585))))

(declare-fun tp!1087748 () Bool)

(declare-fun b_and!251427 () Bool)

(assert (=> b!3526333 (= tp!1087748 b_and!251427)))

(declare-fun b_free!90883 () Bool)

(declare-fun b_next!91587 () Bool)

(assert (=> b!3526333 (= b_free!90883 (not b_next!91587))))

(declare-fun tp!1087749 () Bool)

(declare-fun b_and!251429 () Bool)

(assert (=> b!3526333 (= tp!1087749 b_and!251429)))

(declare-fun bs!565705 () Bool)

(declare-fun b!3526326 () Bool)

(declare-fun b!3526298 () Bool)

(assert (= bs!565705 (and b!3526326 b!3526298)))

(declare-fun lambda!122889 () Int)

(declare-fun lambda!122888 () Int)

(assert (=> bs!565705 (not (= lambda!122889 lambda!122888))))

(declare-fun b!3526346 () Bool)

(declare-fun e!2182844 () Bool)

(assert (=> b!3526346 (= e!2182844 true)))

(declare-fun b!3526345 () Bool)

(declare-fun e!2182843 () Bool)

(assert (=> b!3526345 (= e!2182843 e!2182844)))

(declare-fun b!3526344 () Bool)

(declare-fun e!2182842 () Bool)

(assert (=> b!3526344 (= e!2182842 e!2182843)))

(assert (=> b!3526326 e!2182842))

(assert (= b!3526345 b!3526346))

(assert (= b!3526344 b!3526345))

(declare-datatypes ((C!20672 0))(
  ( (C!20673 (val!12384 Int)) )
))
(declare-datatypes ((Regex!10243 0))(
  ( (ElementMatch!10243 (c!607904 C!20672)) (Concat!15957 (regOne!20998 Regex!10243) (regTwo!20998 Regex!10243)) (EmptyExpr!10243) (Star!10243 (reg!10572 Regex!10243)) (EmptyLang!10243) (Union!10243 (regOne!20999 Regex!10243) (regTwo!20999 Regex!10243)) )
))
(declare-datatypes ((List!37502 0))(
  ( (Nil!37378) (Cons!37378 (h!42798 (_ BitVec 16)) (t!282517 List!37502)) )
))
(declare-datatypes ((TokenValue!5714 0))(
  ( (FloatLiteralValue!11428 (text!40443 List!37502)) (TokenValueExt!5713 (__x!23645 Int)) (Broken!28570 (value!176728 List!37502)) (Object!5837) (End!5714) (Def!5714) (Underscore!5714) (Match!5714) (Else!5714) (Error!5714) (Case!5714) (If!5714) (Extends!5714) (Abstract!5714) (Class!5714) (Val!5714) (DelimiterValue!11428 (del!5774 List!37502)) (KeywordValue!5720 (value!176729 List!37502)) (CommentValue!11428 (value!176730 List!37502)) (WhitespaceValue!11428 (value!176731 List!37502)) (IndentationValue!5714 (value!176732 List!37502)) (String!41903) (Int32!5714) (Broken!28571 (value!176733 List!37502)) (Boolean!5715) (Unit!53067) (OperatorValue!5717 (op!5774 List!37502)) (IdentifierValue!11428 (value!176734 List!37502)) (IdentifierValue!11429 (value!176735 List!37502)) (WhitespaceValue!11429 (value!176736 List!37502)) (True!11428) (False!11428) (Broken!28572 (value!176737 List!37502)) (Broken!28573 (value!176738 List!37502)) (True!11429) (RightBrace!5714) (RightBracket!5714) (Colon!5714) (Null!5714) (Comma!5714) (LeftBracket!5714) (False!11429) (LeftBrace!5714) (ImaginaryLiteralValue!5714 (text!40444 List!37502)) (StringLiteralValue!17142 (value!176739 List!37502)) (EOFValue!5714 (value!176740 List!37502)) (IdentValue!5714 (value!176741 List!37502)) (DelimiterValue!11429 (value!176742 List!37502)) (DedentValue!5714 (value!176743 List!37502)) (NewLineValue!5714 (value!176744 List!37502)) (IntegerValue!17142 (value!176745 (_ BitVec 32)) (text!40445 List!37502)) (IntegerValue!17143 (value!176746 Int) (text!40446 List!37502)) (Times!5714) (Or!5714) (Equal!5714) (Minus!5714) (Broken!28574 (value!176747 List!37502)) (And!5714) (Div!5714) (LessEqual!5714) (Mod!5714) (Concat!15958) (Not!5714) (Plus!5714) (SpaceValue!5714 (value!176748 List!37502)) (IntegerValue!17144 (value!176749 Int) (text!40447 List!37502)) (StringLiteralValue!17143 (text!40448 List!37502)) (FloatLiteralValue!11429 (text!40449 List!37502)) (BytesLiteralValue!5714 (value!176750 List!37502)) (CommentValue!11429 (value!176751 List!37502)) (StringLiteralValue!17144 (value!176752 List!37502)) (ErrorTokenValue!5714 (msg!5775 List!37502)) )
))
(declare-datatypes ((List!37503 0))(
  ( (Nil!37379) (Cons!37379 (h!42799 C!20672) (t!282518 List!37503)) )
))
(declare-datatypes ((IArray!22691 0))(
  ( (IArray!22692 (innerList!11403 List!37503)) )
))
(declare-datatypes ((Conc!11343 0))(
  ( (Node!11343 (left!29203 Conc!11343) (right!29533 Conc!11343) (csize!22916 Int) (cheight!11554 Int)) (Leaf!17696 (xs!14533 IArray!22691) (csize!22917 Int)) (Empty!11343) )
))
(declare-datatypes ((BalanceConc!22300 0))(
  ( (BalanceConc!22301 (c!607905 Conc!11343)) )
))
(declare-datatypes ((String!41904 0))(
  ( (String!41905 (value!176753 String)) )
))
(declare-datatypes ((TokenValueInjection!10856 0))(
  ( (TokenValueInjection!10857 (toValue!7740 Int) (toChars!7599 Int)) )
))
(declare-datatypes ((Rule!10768 0))(
  ( (Rule!10769 (regex!5484 Regex!10243) (tag!6126 String!41904) (isSeparator!5484 Bool) (transformation!5484 TokenValueInjection!10856)) )
))
(declare-datatypes ((List!37504 0))(
  ( (Nil!37380) (Cons!37380 (h!42800 Rule!10768) (t!282519 List!37504)) )
))
(declare-fun rules!2135 () List!37504)

(get-info :version)

(assert (= (and b!3526326 ((_ is Cons!37380) rules!2135)) b!3526344))

(declare-fun order!20143 () Int)

(declare-fun order!20141 () Int)

(declare-fun dynLambda!15944 (Int Int) Int)

(declare-fun dynLambda!15945 (Int Int) Int)

(assert (=> b!3526346 (< (dynLambda!15944 order!20141 (toValue!7740 (transformation!5484 (h!42800 rules!2135)))) (dynLambda!15945 order!20143 lambda!122889))))

(declare-fun order!20145 () Int)

(declare-fun dynLambda!15946 (Int Int) Int)

(assert (=> b!3526346 (< (dynLambda!15946 order!20145 (toChars!7599 (transformation!5484 (h!42800 rules!2135)))) (dynLambda!15945 order!20143 lambda!122889))))

(assert (=> b!3526326 true))

(declare-datatypes ((Token!10334 0))(
  ( (Token!10335 (value!176754 TokenValue!5714) (rule!8140 Rule!10768) (size!28449 Int) (originalCharacters!6198 List!37503)) )
))
(declare-fun separatorToken!241 () Token!10334)

(declare-fun e!2182808 () Bool)

(declare-fun tp!1087747 () Bool)

(declare-fun e!2182826 () Bool)

(declare-fun b!3526292 () Bool)

(declare-fun inv!50616 (String!41904) Bool)

(declare-fun inv!50619 (TokenValueInjection!10856) Bool)

(assert (=> b!3526292 (= e!2182826 (and tp!1087747 (inv!50616 (tag!6126 (rule!8140 separatorToken!241))) (inv!50619 (transformation!5484 (rule!8140 separatorToken!241))) e!2182808))))

(declare-fun b!3526293 () Bool)

(declare-fun e!2182814 () Bool)

(declare-fun e!2182824 () Bool)

(assert (=> b!3526293 (= e!2182814 e!2182824)))

(declare-fun res!1422464 () Bool)

(assert (=> b!3526293 (=> (not res!1422464) (not e!2182824))))

(declare-fun lt!1205010 () Rule!10768)

(declare-fun lt!1205031 () List!37503)

(declare-fun matchR!4827 (Regex!10243 List!37503) Bool)

(assert (=> b!3526293 (= res!1422464 (matchR!4827 (regex!5484 lt!1205010) lt!1205031))))

(declare-datatypes ((Option!7631 0))(
  ( (None!7630) (Some!7630 (v!37136 Rule!10768)) )
))
(declare-fun lt!1205006 () Option!7631)

(declare-fun get!12005 (Option!7631) Rule!10768)

(assert (=> b!3526293 (= lt!1205010 (get!12005 lt!1205006))))

(declare-fun b!3526294 () Bool)

(declare-datatypes ((Unit!53068 0))(
  ( (Unit!53069) )
))
(declare-fun e!2182801 () Unit!53068)

(declare-fun Unit!53070 () Unit!53068)

(assert (=> b!3526294 (= e!2182801 Unit!53070)))

(declare-fun b!3526295 () Bool)

(declare-fun Unit!53071 () Unit!53068)

(assert (=> b!3526295 (= e!2182801 Unit!53071)))

(declare-fun lt!1205004 () Unit!53068)

(declare-datatypes ((List!37505 0))(
  ( (Nil!37381) (Cons!37381 (h!42801 Token!10334) (t!282520 List!37505)) )
))
(declare-fun tokens!494 () List!37505)

(declare-fun lt!1205041 () List!37503)

(declare-fun lt!1205036 () C!20672)

(declare-fun lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!542 (Regex!10243 List!37503 C!20672) Unit!53068)

(assert (=> b!3526295 (= lt!1205004 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!542 (regex!5484 (rule!8140 (h!42801 (t!282520 tokens!494)))) lt!1205041 lt!1205036))))

(declare-fun res!1422489 () Bool)

(assert (=> b!3526295 (= res!1422489 (not (matchR!4827 (regex!5484 (rule!8140 (h!42801 (t!282520 tokens!494)))) lt!1205041)))))

(declare-fun e!2182813 () Bool)

(assert (=> b!3526295 (=> (not res!1422489) (not e!2182813))))

(assert (=> b!3526295 e!2182813))

(declare-fun b!3526296 () Bool)

(declare-fun e!2182803 () Bool)

(declare-fun lt!1205025 () Rule!10768)

(assert (=> b!3526296 (= e!2182803 (= (rule!8140 (h!42801 (t!282520 tokens!494))) lt!1205025))))

(declare-fun b!3526297 () Bool)

(declare-fun e!2182817 () Bool)

(assert (=> b!3526297 (= e!2182817 false)))

(declare-fun res!1422480 () Bool)

(declare-fun e!2182830 () Bool)

(assert (=> b!3526298 (=> (not res!1422480) (not e!2182830))))

(declare-fun forall!8045 (List!37505 Int) Bool)

(assert (=> b!3526298 (= res!1422480 (forall!8045 tokens!494 lambda!122888))))

(declare-fun b!3526299 () Bool)

(declare-fun e!2182823 () Bool)

(declare-fun e!2182829 () Bool)

(assert (=> b!3526299 (= e!2182823 e!2182829)))

(declare-fun res!1422473 () Bool)

(assert (=> b!3526299 (=> res!1422473 e!2182829)))

(declare-fun lt!1204999 () List!37503)

(declare-fun lt!1205038 () List!37503)

(assert (=> b!3526299 (= res!1422473 (not (= lt!1204999 lt!1205038)))))

(declare-fun lt!1205020 () List!37503)

(declare-fun lt!1205000 () List!37503)

(declare-fun ++!9269 (List!37503 List!37503) List!37503)

(assert (=> b!3526299 (= lt!1205038 (++!9269 (++!9269 lt!1205000 lt!1205031) lt!1205020))))

(declare-fun b!3526300 () Bool)

(declare-fun res!1422482 () Bool)

(assert (=> b!3526300 (=> (not res!1422482) (not e!2182830))))

(assert (=> b!3526300 (= res!1422482 (isSeparator!5484 (rule!8140 separatorToken!241)))))

(declare-fun b!3526301 () Bool)

(declare-fun e!2182802 () Bool)

(declare-fun e!2182816 () Bool)

(declare-fun tp!1087750 () Bool)

(declare-fun inv!21 (TokenValue!5714) Bool)

(assert (=> b!3526301 (= e!2182816 (and (inv!21 (value!176754 (h!42801 tokens!494))) e!2182802 tp!1087750))))

(declare-fun b!3526303 () Bool)

(declare-fun e!2182812 () Bool)

(declare-fun e!2182818 () Bool)

(declare-fun tp!1087755 () Bool)

(assert (=> b!3526303 (= e!2182812 (and e!2182818 tp!1087755))))

(declare-fun b!3526304 () Bool)

(declare-fun e!2182835 () Bool)

(declare-fun e!2182804 () Bool)

(assert (=> b!3526304 (= e!2182835 e!2182804)))

(declare-fun res!1422483 () Bool)

(assert (=> b!3526304 (=> res!1422483 e!2182804)))

(assert (=> b!3526304 (= res!1422483 (or (isSeparator!5484 (rule!8140 (h!42801 tokens!494))) (isSeparator!5484 (rule!8140 (h!42801 (t!282520 tokens!494))))))))

(declare-fun lt!1205042 () Unit!53068)

(declare-fun forallContained!1431 (List!37505 Int Token!10334) Unit!53068)

(assert (=> b!3526304 (= lt!1205042 (forallContained!1431 tokens!494 lambda!122888 (h!42801 (t!282520 tokens!494))))))

(declare-fun lt!1205021 () Unit!53068)

(assert (=> b!3526304 (= lt!1205021 (forallContained!1431 tokens!494 lambda!122888 (h!42801 tokens!494)))))

(declare-fun b!3526305 () Bool)

(declare-fun e!2182806 () Unit!53068)

(declare-fun Unit!53072 () Unit!53068)

(assert (=> b!3526305 (= e!2182806 Unit!53072)))

(declare-fun b!3526306 () Bool)

(declare-fun tp!1087754 () Bool)

(declare-fun e!2182832 () Bool)

(assert (=> b!3526306 (= e!2182818 (and tp!1087754 (inv!50616 (tag!6126 (h!42800 rules!2135))) (inv!50619 (transformation!5484 (h!42800 rules!2135))) e!2182832))))

(declare-fun b!3526307 () Bool)

(declare-fun e!2182828 () Bool)

(assert (=> b!3526307 (= e!2182830 (not e!2182828))))

(declare-fun res!1422471 () Bool)

(assert (=> b!3526307 (=> res!1422471 e!2182828)))

(declare-fun lt!1205033 () List!37503)

(declare-fun lt!1205015 () List!37503)

(assert (=> b!3526307 (= res!1422471 (not (= lt!1205033 lt!1205015)))))

(declare-datatypes ((LexerInterface!5073 0))(
  ( (LexerInterfaceExt!5070 (__x!23646 Int)) (Lexer!5071) )
))
(declare-fun thiss!18206 () LexerInterface!5073)

(declare-fun printList!1621 (LexerInterface!5073 List!37505) List!37503)

(assert (=> b!3526307 (= lt!1205015 (printList!1621 thiss!18206 (Cons!37381 (h!42801 tokens!494) Nil!37381)))))

(declare-fun lt!1205017 () BalanceConc!22300)

(declare-fun list!13679 (BalanceConc!22300) List!37503)

(assert (=> b!3526307 (= lt!1205033 (list!13679 lt!1205017))))

(declare-datatypes ((IArray!22693 0))(
  ( (IArray!22694 (innerList!11404 List!37505)) )
))
(declare-datatypes ((Conc!11344 0))(
  ( (Node!11344 (left!29204 Conc!11344) (right!29534 Conc!11344) (csize!22918 Int) (cheight!11555 Int)) (Leaf!17697 (xs!14534 IArray!22693) (csize!22919 Int)) (Empty!11344) )
))
(declare-datatypes ((BalanceConc!22302 0))(
  ( (BalanceConc!22303 (c!607906 Conc!11344)) )
))
(declare-fun lt!1205022 () BalanceConc!22302)

(declare-fun printTailRec!1568 (LexerInterface!5073 BalanceConc!22302 Int BalanceConc!22300) BalanceConc!22300)

(assert (=> b!3526307 (= lt!1205017 (printTailRec!1568 thiss!18206 lt!1205022 0 (BalanceConc!22301 Empty!11343)))))

(declare-fun print!2138 (LexerInterface!5073 BalanceConc!22302) BalanceConc!22300)

(assert (=> b!3526307 (= lt!1205017 (print!2138 thiss!18206 lt!1205022))))

(declare-fun singletonSeq!2580 (Token!10334) BalanceConc!22302)

(assert (=> b!3526307 (= lt!1205022 (singletonSeq!2580 (h!42801 tokens!494)))))

(declare-fun b!3526308 () Bool)

(declare-fun e!2182807 () Bool)

(assert (=> b!3526308 (= e!2182807 e!2182835)))

(declare-fun res!1422487 () Bool)

(assert (=> b!3526308 (=> res!1422487 e!2182835)))

(declare-fun lt!1205005 () BalanceConc!22300)

(declare-fun isEmpty!21853 (BalanceConc!22302) Bool)

(declare-datatypes ((tuple2!37228 0))(
  ( (tuple2!37229 (_1!21748 BalanceConc!22302) (_2!21748 BalanceConc!22300)) )
))
(declare-fun lex!2399 (LexerInterface!5073 List!37504 BalanceConc!22300) tuple2!37228)

(assert (=> b!3526308 (= res!1422487 (isEmpty!21853 (_1!21748 (lex!2399 thiss!18206 rules!2135 lt!1205005))))))

(declare-fun seqFromList!4021 (List!37503) BalanceConc!22300)

(assert (=> b!3526308 (= lt!1205005 (seqFromList!4021 lt!1205000))))

(declare-fun b!3526309 () Bool)

(assert (=> b!3526309 (= e!2182813 false)))

(assert (=> b!3526310 (= e!2182832 (and tp!1087756 tp!1087752))))

(declare-fun e!2182821 () Bool)

(declare-fun b!3526311 () Bool)

(declare-fun tp!1087757 () Bool)

(declare-fun inv!50620 (Token!10334) Bool)

(assert (=> b!3526311 (= e!2182821 (and (inv!50620 (h!42801 tokens!494)) e!2182816 tp!1087757))))

(declare-fun b!3526312 () Bool)

(assert (=> b!3526312 (= e!2182824 (= (rule!8140 separatorToken!241) lt!1205010))))

(declare-fun b!3526313 () Bool)

(declare-fun e!2182819 () Bool)

(declare-fun contains!7023 (List!37504 Rule!10768) Bool)

(assert (=> b!3526313 (= e!2182819 (contains!7023 rules!2135 (rule!8140 (h!42801 (t!282520 tokens!494)))))))

(declare-fun b!3526314 () Bool)

(assert (=> b!3526314 (= e!2182804 e!2182823)))

(declare-fun res!1422490 () Bool)

(assert (=> b!3526314 (=> res!1422490 e!2182823)))

(declare-fun printWithSeparatorTokenList!360 (LexerInterface!5073 List!37505 Token!10334) List!37503)

(assert (=> b!3526314 (= res!1422490 (not (= lt!1205020 (++!9269 (++!9269 lt!1205041 lt!1205031) (printWithSeparatorTokenList!360 thiss!18206 (t!282520 (t!282520 tokens!494)) separatorToken!241)))))))

(declare-fun charsOf!3498 (Token!10334) BalanceConc!22300)

(assert (=> b!3526314 (= lt!1205041 (list!13679 (charsOf!3498 (h!42801 (t!282520 tokens!494)))))))

(declare-fun lt!1205008 () List!37503)

(assert (=> b!3526314 (= lt!1205008 (++!9269 lt!1205031 lt!1205020))))

(assert (=> b!3526314 (= lt!1205031 (list!13679 (charsOf!3498 separatorToken!241)))))

(assert (=> b!3526314 (= lt!1205020 (printWithSeparatorTokenList!360 thiss!18206 (t!282520 tokens!494) separatorToken!241))))

(assert (=> b!3526314 (= lt!1204999 (printWithSeparatorTokenList!360 thiss!18206 tokens!494 separatorToken!241))))

(declare-fun b!3526315 () Bool)

(declare-fun res!1422474 () Bool)

(assert (=> b!3526315 (=> res!1422474 e!2182807)))

(declare-fun rulesProduceIndividualToken!2565 (LexerInterface!5073 List!37504 Token!10334) Bool)

(assert (=> b!3526315 (= res!1422474 (not (rulesProduceIndividualToken!2565 thiss!18206 rules!2135 (h!42801 tokens!494))))))

(declare-fun e!2182833 () Bool)

(assert (=> b!3526316 (= e!2182833 (and tp!1087753 tp!1087758))))

(declare-fun b!3526317 () Bool)

(declare-fun res!1422486 () Bool)

(declare-fun e!2182827 () Bool)

(assert (=> b!3526317 (=> (not res!1422486) (not e!2182827))))

(declare-fun lt!1205023 () tuple2!37228)

(declare-fun apply!8922 (BalanceConc!22302 Int) Token!10334)

(assert (=> b!3526317 (= res!1422486 (= (apply!8922 (_1!21748 lt!1205023) 0) separatorToken!241))))

(declare-fun b!3526318 () Bool)

(declare-fun res!1422478 () Bool)

(assert (=> b!3526318 (=> (not res!1422478) (not e!2182830))))

(declare-fun rulesProduceEachTokenIndividually!1524 (LexerInterface!5073 List!37504 BalanceConc!22302) Bool)

(declare-fun seqFromList!4022 (List!37505) BalanceConc!22302)

(assert (=> b!3526318 (= res!1422478 (rulesProduceEachTokenIndividually!1524 thiss!18206 rules!2135 (seqFromList!4022 tokens!494)))))

(declare-fun b!3526319 () Bool)

(declare-fun e!2182805 () Bool)

(declare-fun lt!1205039 () tuple2!37228)

(declare-fun isEmpty!21854 (BalanceConc!22300) Bool)

(assert (=> b!3526319 (= e!2182805 (not (isEmpty!21854 (_2!21748 lt!1205039))))))

(declare-fun b!3526320 () Bool)

(declare-fun res!1422491 () Bool)

(assert (=> b!3526320 (=> (not res!1422491) (not e!2182830))))

(assert (=> b!3526320 (= res!1422491 (and (not ((_ is Nil!37381) tokens!494)) (not ((_ is Nil!37381) (t!282520 tokens!494)))))))

(declare-fun b!3526321 () Bool)

(declare-fun res!1422481 () Bool)

(assert (=> b!3526321 (=> (not res!1422481) (not e!2182830))))

(declare-fun rulesInvariant!4470 (LexerInterface!5073 List!37504) Bool)

(assert (=> b!3526321 (= res!1422481 (rulesInvariant!4470 thiss!18206 rules!2135))))

(declare-fun b!3526322 () Bool)

(declare-fun res!1422488 () Bool)

(assert (=> b!3526322 (=> (not res!1422488) (not e!2182830))))

(assert (=> b!3526322 (= res!1422488 (rulesProduceIndividualToken!2565 thiss!18206 rules!2135 separatorToken!241))))

(declare-fun b!3526323 () Bool)

(declare-fun res!1422463 () Bool)

(assert (=> b!3526323 (=> res!1422463 e!2182805)))

(assert (=> b!3526323 (= res!1422463 (not (= (apply!8922 (_1!21748 lt!1205039) 0) (h!42801 (t!282520 tokens!494)))))))

(declare-fun b!3526324 () Bool)

(declare-fun e!2182810 () Bool)

(assert (=> b!3526324 (= e!2182810 e!2182803)))

(declare-fun res!1422479 () Bool)

(assert (=> b!3526324 (=> (not res!1422479) (not e!2182803))))

(assert (=> b!3526324 (= res!1422479 (matchR!4827 (regex!5484 lt!1205025) lt!1205041))))

(declare-fun lt!1205003 () Option!7631)

(assert (=> b!3526324 (= lt!1205025 (get!12005 lt!1205003))))

(declare-fun e!2182811 () Bool)

(declare-fun b!3526325 () Bool)

(declare-fun tp!1087746 () Bool)

(assert (=> b!3526325 (= e!2182811 (and (inv!21 (value!176754 separatorToken!241)) e!2182826 tp!1087746))))

(declare-fun e!2182831 () Bool)

(assert (=> b!3526326 (= e!2182831 e!2182819)))

(declare-fun res!1422475 () Bool)

(assert (=> b!3526326 (=> res!1422475 e!2182819)))

(assert (=> b!3526326 (= res!1422475 (not (contains!7023 rules!2135 (rule!8140 separatorToken!241))))))

(declare-fun lt!1205028 () Unit!53068)

(assert (=> b!3526326 (= lt!1205028 e!2182801)))

(declare-fun c!607902 () Bool)

(declare-fun contains!7024 (List!37503 C!20672) Bool)

(declare-fun usedCharacters!718 (Regex!10243) List!37503)

(assert (=> b!3526326 (= c!607902 (not (contains!7024 (usedCharacters!718 (regex!5484 (rule!8140 (h!42801 (t!282520 tokens!494))))) lt!1205036)))))

(declare-fun head!7397 (List!37503) C!20672)

(assert (=> b!3526326 (= lt!1205036 (head!7397 lt!1205041))))

(declare-datatypes ((tuple2!37230 0))(
  ( (tuple2!37231 (_1!21749 Token!10334) (_2!21749 List!37503)) )
))
(declare-datatypes ((Option!7632 0))(
  ( (None!7631) (Some!7631 (v!37137 tuple2!37230)) )
))
(declare-fun maxPrefixOneRule!1780 (LexerInterface!5073 Rule!10768 List!37503) Option!7632)

(declare-fun apply!8923 (TokenValueInjection!10856 BalanceConc!22300) TokenValue!5714)

(declare-fun size!28450 (List!37503) Int)

(assert (=> b!3526326 (= (maxPrefixOneRule!1780 thiss!18206 (rule!8140 (h!42801 (t!282520 tokens!494))) lt!1205041) (Some!7631 (tuple2!37231 (Token!10335 (apply!8923 (transformation!5484 (rule!8140 (h!42801 (t!282520 tokens!494)))) (seqFromList!4021 lt!1205041)) (rule!8140 (h!42801 (t!282520 tokens!494))) (size!28450 lt!1205041) lt!1205041) Nil!37379)))))

(declare-fun lt!1205035 () Unit!53068)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!873 (LexerInterface!5073 List!37504 List!37503 List!37503 List!37503 Rule!10768) Unit!53068)

(assert (=> b!3526326 (= lt!1205035 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!873 thiss!18206 rules!2135 lt!1205041 lt!1205041 Nil!37379 (rule!8140 (h!42801 (t!282520 tokens!494)))))))

(assert (=> b!3526326 e!2182810))

(declare-fun res!1422485 () Bool)

(assert (=> b!3526326 (=> (not res!1422485) (not e!2182810))))

(declare-fun isDefined!5882 (Option!7631) Bool)

(assert (=> b!3526326 (= res!1422485 (isDefined!5882 lt!1205003))))

(declare-fun getRuleFromTag!1127 (LexerInterface!5073 List!37504 String!41904) Option!7631)

(assert (=> b!3526326 (= lt!1205003 (getRuleFromTag!1127 thiss!18206 rules!2135 (tag!6126 (rule!8140 (h!42801 (t!282520 tokens!494))))))))

(declare-fun lt!1204997 () Unit!53068)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1127 (LexerInterface!5073 List!37504 List!37503 Token!10334) Unit!53068)

(assert (=> b!3526326 (= lt!1204997 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1127 thiss!18206 rules!2135 lt!1205041 (h!42801 (t!282520 tokens!494))))))

(declare-fun lt!1205018 () Bool)

(assert (=> b!3526326 lt!1205018))

(declare-fun lt!1205027 () Unit!53068)

(declare-fun lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!1062 (LexerInterface!5073 List!37504 List!37505 Token!10334) Unit!53068)

(assert (=> b!3526326 (= lt!1205027 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!1062 thiss!18206 rules!2135 tokens!494 (h!42801 (t!282520 tokens!494))))))

(declare-fun lt!1205019 () List!37503)

(declare-fun maxPrefix!2613 (LexerInterface!5073 List!37504 List!37503) Option!7632)

(assert (=> b!3526326 (= (maxPrefix!2613 thiss!18206 rules!2135 lt!1205019) (Some!7631 (tuple2!37231 (h!42801 tokens!494) lt!1205008)))))

(declare-fun lt!1205040 () Unit!53068)

(declare-fun lemmaMaxPrefWithOtherTypeUsedCharAtStartOfSuffixReturnSame!240 (LexerInterface!5073 List!37504 Token!10334 Rule!10768 List!37503 Rule!10768) Unit!53068)

(assert (=> b!3526326 (= lt!1205040 (lemmaMaxPrefWithOtherTypeUsedCharAtStartOfSuffixReturnSame!240 thiss!18206 rules!2135 (h!42801 tokens!494) (rule!8140 (h!42801 tokens!494)) lt!1205008 (rule!8140 separatorToken!241)))))

(declare-fun lt!1205013 () C!20672)

(assert (=> b!3526326 (not (contains!7024 (usedCharacters!718 (regex!5484 (rule!8140 (h!42801 tokens!494)))) lt!1205013))))

(declare-fun lt!1205007 () Unit!53068)

(declare-fun lemmaNonSepRuleNotContainsCharContainedInASepRule!284 (LexerInterface!5073 List!37504 List!37504 Rule!10768 Rule!10768 C!20672) Unit!53068)

(assert (=> b!3526326 (= lt!1205007 (lemmaNonSepRuleNotContainsCharContainedInASepRule!284 thiss!18206 rules!2135 rules!2135 (rule!8140 (h!42801 tokens!494)) (rule!8140 separatorToken!241) lt!1205013))))

(declare-fun lt!1205026 () Unit!53068)

(assert (=> b!3526326 (= lt!1205026 (forallContained!1431 tokens!494 lambda!122889 (h!42801 (t!282520 tokens!494))))))

(declare-fun lt!1205029 () Bool)

(assert (=> b!3526326 (= lt!1205018 (not lt!1205029))))

(assert (=> b!3526326 (= lt!1205018 (rulesProduceIndividualToken!2565 thiss!18206 rules!2135 (h!42801 (t!282520 tokens!494))))))

(assert (=> b!3526326 (= lt!1205029 e!2182805)))

(declare-fun res!1422469 () Bool)

(assert (=> b!3526326 (=> res!1422469 e!2182805)))

(declare-fun size!28451 (BalanceConc!22302) Int)

(assert (=> b!3526326 (= res!1422469 (not (= (size!28451 (_1!21748 lt!1205039)) 1)))))

(declare-fun lt!1205037 () BalanceConc!22300)

(assert (=> b!3526326 (= lt!1205039 (lex!2399 thiss!18206 rules!2135 lt!1205037))))

(declare-fun lt!1205001 () BalanceConc!22302)

(assert (=> b!3526326 (= lt!1205037 (printTailRec!1568 thiss!18206 lt!1205001 0 (BalanceConc!22301 Empty!11343)))))

(assert (=> b!3526326 (= lt!1205037 (print!2138 thiss!18206 lt!1205001))))

(assert (=> b!3526326 (= lt!1205001 (singletonSeq!2580 (h!42801 (t!282520 tokens!494))))))

(assert (=> b!3526326 e!2182827))

(declare-fun res!1422465 () Bool)

(assert (=> b!3526326 (=> (not res!1422465) (not e!2182827))))

(assert (=> b!3526326 (= res!1422465 (= (size!28451 (_1!21748 lt!1205023)) 1))))

(declare-fun lt!1205032 () BalanceConc!22300)

(assert (=> b!3526326 (= lt!1205023 (lex!2399 thiss!18206 rules!2135 lt!1205032))))

(declare-fun lt!1205009 () BalanceConc!22302)

(assert (=> b!3526326 (= lt!1205032 (printTailRec!1568 thiss!18206 lt!1205009 0 (BalanceConc!22301 Empty!11343)))))

(assert (=> b!3526326 (= lt!1205032 (print!2138 thiss!18206 lt!1205009))))

(assert (=> b!3526326 (= lt!1205009 (singletonSeq!2580 separatorToken!241))))

(declare-fun lt!1205014 () Unit!53068)

(assert (=> b!3526326 (= lt!1205014 e!2182806)))

(declare-fun c!607903 () Bool)

(assert (=> b!3526326 (= c!607903 (not (contains!7024 (usedCharacters!718 (regex!5484 (rule!8140 separatorToken!241))) lt!1205013)))))

(assert (=> b!3526326 (= lt!1205013 (head!7397 lt!1205031))))

(assert (=> b!3526326 e!2182814))

(declare-fun res!1422467 () Bool)

(assert (=> b!3526326 (=> (not res!1422467) (not e!2182814))))

(assert (=> b!3526326 (= res!1422467 (isDefined!5882 lt!1205006))))

(assert (=> b!3526326 (= lt!1205006 (getRuleFromTag!1127 thiss!18206 rules!2135 (tag!6126 (rule!8140 separatorToken!241))))))

(declare-fun lt!1205012 () Unit!53068)

(assert (=> b!3526326 (= lt!1205012 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1127 thiss!18206 rules!2135 lt!1205031 separatorToken!241))))

(assert (=> b!3526326 (= (maxPrefixOneRule!1780 thiss!18206 (rule!8140 (h!42801 tokens!494)) lt!1205000) (Some!7631 (tuple2!37231 (Token!10335 (apply!8923 (transformation!5484 (rule!8140 (h!42801 tokens!494))) lt!1205005) (rule!8140 (h!42801 tokens!494)) (size!28450 lt!1205000) lt!1205000) Nil!37379)))))

(declare-fun lt!1205002 () Unit!53068)

(assert (=> b!3526326 (= lt!1205002 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!873 thiss!18206 rules!2135 lt!1205000 lt!1205000 Nil!37379 (rule!8140 (h!42801 tokens!494))))))

(declare-fun e!2182834 () Bool)

(assert (=> b!3526326 e!2182834))

(declare-fun res!1422462 () Bool)

(assert (=> b!3526326 (=> (not res!1422462) (not e!2182834))))

(declare-fun lt!1205011 () Option!7631)

(assert (=> b!3526326 (= res!1422462 (isDefined!5882 lt!1205011))))

(assert (=> b!3526326 (= lt!1205011 (getRuleFromTag!1127 thiss!18206 rules!2135 (tag!6126 (rule!8140 (h!42801 tokens!494)))))))

(declare-fun lt!1205030 () Unit!53068)

(assert (=> b!3526326 (= lt!1205030 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1127 thiss!18206 rules!2135 lt!1205000 (h!42801 tokens!494)))))

(declare-fun lt!1205016 () Unit!53068)

(assert (=> b!3526326 (= lt!1205016 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!1062 thiss!18206 rules!2135 tokens!494 (h!42801 tokens!494)))))

(declare-fun b!3526327 () Bool)

(assert (=> b!3526327 (= e!2182828 e!2182807)))

(declare-fun res!1422484 () Bool)

(assert (=> b!3526327 (=> res!1422484 e!2182807)))

(assert (=> b!3526327 (= res!1422484 (or (not (= lt!1205015 lt!1205000)) (not (= lt!1205033 lt!1205000))))))

(assert (=> b!3526327 (= lt!1205000 (list!13679 (charsOf!3498 (h!42801 tokens!494))))))

(declare-fun b!3526328 () Bool)

(assert (=> b!3526328 (= e!2182827 (isEmpty!21854 (_2!21748 lt!1205023)))))

(declare-fun b!3526329 () Bool)

(assert (=> b!3526329 (= e!2182829 e!2182831)))

(declare-fun res!1422468 () Bool)

(assert (=> b!3526329 (=> res!1422468 e!2182831)))

(assert (=> b!3526329 (= res!1422468 (not (= lt!1204999 lt!1205019)))))

(assert (=> b!3526329 (= lt!1205038 lt!1205019)))

(assert (=> b!3526329 (= lt!1205019 (++!9269 lt!1205000 lt!1205008))))

(declare-fun lt!1205034 () Unit!53068)

(declare-fun lemmaConcatAssociativity!2018 (List!37503 List!37503 List!37503) Unit!53068)

(assert (=> b!3526329 (= lt!1205034 (lemmaConcatAssociativity!2018 lt!1205000 lt!1205031 lt!1205020))))

(declare-fun b!3526330 () Bool)

(declare-fun res!1422470 () Bool)

(assert (=> b!3526330 (=> (not res!1422470) (not e!2182830))))

(declare-fun sepAndNonSepRulesDisjointChars!1678 (List!37504 List!37504) Bool)

(assert (=> b!3526330 (= res!1422470 (sepAndNonSepRulesDisjointChars!1678 rules!2135 rules!2135))))

(declare-fun b!3526331 () Bool)

(declare-fun e!2182822 () Bool)

(declare-fun lt!1205024 () Rule!10768)

(assert (=> b!3526331 (= e!2182822 (= (rule!8140 (h!42801 tokens!494)) lt!1205024))))

(declare-fun b!3526332 () Bool)

(declare-fun Unit!53073 () Unit!53068)

(assert (=> b!3526332 (= e!2182806 Unit!53073)))

(declare-fun lt!1204998 () Unit!53068)

(assert (=> b!3526332 (= lt!1204998 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!542 (regex!5484 (rule!8140 separatorToken!241)) lt!1205031 lt!1205013))))

(declare-fun res!1422472 () Bool)

(assert (=> b!3526332 (= res!1422472 (not (matchR!4827 (regex!5484 (rule!8140 separatorToken!241)) lt!1205031)))))

(assert (=> b!3526332 (=> (not res!1422472) (not e!2182817))))

(assert (=> b!3526332 e!2182817))

(assert (=> b!3526333 (= e!2182808 (and tp!1087748 tp!1087749))))

(declare-fun b!3526334 () Bool)

(declare-fun res!1422476 () Bool)

(assert (=> b!3526334 (=> (not res!1422476) (not e!2182830))))

(declare-fun isEmpty!21855 (List!37504) Bool)

(assert (=> b!3526334 (= res!1422476 (not (isEmpty!21855 rules!2135)))))

(declare-fun b!3526335 () Bool)

(assert (=> b!3526335 (= e!2182834 e!2182822)))

(declare-fun res!1422477 () Bool)

(assert (=> b!3526335 (=> (not res!1422477) (not e!2182822))))

(assert (=> b!3526335 (= res!1422477 (matchR!4827 (regex!5484 lt!1205024) lt!1205000))))

(assert (=> b!3526335 (= lt!1205024 (get!12005 lt!1205011))))

(declare-fun res!1422466 () Bool)

(assert (=> start!327714 (=> (not res!1422466) (not e!2182830))))

(assert (=> start!327714 (= res!1422466 ((_ is Lexer!5071) thiss!18206))))

(assert (=> start!327714 e!2182830))

(assert (=> start!327714 true))

(assert (=> start!327714 e!2182812))

(assert (=> start!327714 e!2182821))

(assert (=> start!327714 (and (inv!50620 separatorToken!241) e!2182811)))

(declare-fun b!3526302 () Bool)

(declare-fun tp!1087751 () Bool)

(assert (=> b!3526302 (= e!2182802 (and tp!1087751 (inv!50616 (tag!6126 (rule!8140 (h!42801 tokens!494)))) (inv!50619 (transformation!5484 (rule!8140 (h!42801 tokens!494)))) e!2182833))))

(assert (= (and start!327714 res!1422466) b!3526334))

(assert (= (and b!3526334 res!1422476) b!3526321))

(assert (= (and b!3526321 res!1422481) b!3526318))

(assert (= (and b!3526318 res!1422478) b!3526322))

(assert (= (and b!3526322 res!1422488) b!3526300))

(assert (= (and b!3526300 res!1422482) b!3526298))

(assert (= (and b!3526298 res!1422480) b!3526330))

(assert (= (and b!3526330 res!1422470) b!3526320))

(assert (= (and b!3526320 res!1422491) b!3526307))

(assert (= (and b!3526307 (not res!1422471)) b!3526327))

(assert (= (and b!3526327 (not res!1422484)) b!3526315))

(assert (= (and b!3526315 (not res!1422474)) b!3526308))

(assert (= (and b!3526308 (not res!1422487)) b!3526304))

(assert (= (and b!3526304 (not res!1422483)) b!3526314))

(assert (= (and b!3526314 (not res!1422490)) b!3526299))

(assert (= (and b!3526299 (not res!1422473)) b!3526329))

(assert (= (and b!3526329 (not res!1422468)) b!3526326))

(assert (= (and b!3526326 res!1422462) b!3526335))

(assert (= (and b!3526335 res!1422477) b!3526331))

(assert (= (and b!3526326 res!1422467) b!3526293))

(assert (= (and b!3526293 res!1422464) b!3526312))

(assert (= (and b!3526326 c!607903) b!3526332))

(assert (= (and b!3526326 (not c!607903)) b!3526305))

(assert (= (and b!3526332 res!1422472) b!3526297))

(assert (= (and b!3526326 res!1422465) b!3526317))

(assert (= (and b!3526317 res!1422486) b!3526328))

(assert (= (and b!3526326 (not res!1422469)) b!3526323))

(assert (= (and b!3526323 (not res!1422463)) b!3526319))

(assert (= (and b!3526326 res!1422485) b!3526324))

(assert (= (and b!3526324 res!1422479) b!3526296))

(assert (= (and b!3526326 c!607902) b!3526295))

(assert (= (and b!3526326 (not c!607902)) b!3526294))

(assert (= (and b!3526295 res!1422489) b!3526309))

(assert (= (and b!3526326 (not res!1422475)) b!3526313))

(assert (= b!3526306 b!3526310))

(assert (= b!3526303 b!3526306))

(assert (= (and start!327714 ((_ is Cons!37380) rules!2135)) b!3526303))

(assert (= b!3526302 b!3526316))

(assert (= b!3526301 b!3526302))

(assert (= b!3526311 b!3526301))

(assert (= (and start!327714 ((_ is Cons!37381) tokens!494)) b!3526311))

(assert (= b!3526292 b!3526333))

(assert (= b!3526325 b!3526292))

(assert (= start!327714 b!3526325))

(declare-fun m!3980043 () Bool)

(assert (=> b!3526314 m!3980043))

(declare-fun m!3980045 () Bool)

(assert (=> b!3526314 m!3980045))

(declare-fun m!3980047 () Bool)

(assert (=> b!3526314 m!3980047))

(assert (=> b!3526314 m!3980043))

(declare-fun m!3980049 () Bool)

(assert (=> b!3526314 m!3980049))

(declare-fun m!3980051 () Bool)

(assert (=> b!3526314 m!3980051))

(declare-fun m!3980053 () Bool)

(assert (=> b!3526314 m!3980053))

(assert (=> b!3526314 m!3980045))

(declare-fun m!3980055 () Bool)

(assert (=> b!3526314 m!3980055))

(assert (=> b!3526314 m!3980051))

(assert (=> b!3526314 m!3980053))

(declare-fun m!3980057 () Bool)

(assert (=> b!3526314 m!3980057))

(declare-fun m!3980059 () Bool)

(assert (=> b!3526314 m!3980059))

(declare-fun m!3980061 () Bool)

(assert (=> b!3526314 m!3980061))

(declare-fun m!3980063 () Bool)

(assert (=> b!3526326 m!3980063))

(declare-fun m!3980065 () Bool)

(assert (=> b!3526326 m!3980065))

(declare-fun m!3980067 () Bool)

(assert (=> b!3526326 m!3980067))

(declare-fun m!3980069 () Bool)

(assert (=> b!3526326 m!3980069))

(declare-fun m!3980071 () Bool)

(assert (=> b!3526326 m!3980071))

(declare-fun m!3980073 () Bool)

(assert (=> b!3526326 m!3980073))

(declare-fun m!3980075 () Bool)

(assert (=> b!3526326 m!3980075))

(declare-fun m!3980077 () Bool)

(assert (=> b!3526326 m!3980077))

(declare-fun m!3980079 () Bool)

(assert (=> b!3526326 m!3980079))

(declare-fun m!3980081 () Bool)

(assert (=> b!3526326 m!3980081))

(declare-fun m!3980083 () Bool)

(assert (=> b!3526326 m!3980083))

(declare-fun m!3980085 () Bool)

(assert (=> b!3526326 m!3980085))

(declare-fun m!3980087 () Bool)

(assert (=> b!3526326 m!3980087))

(declare-fun m!3980089 () Bool)

(assert (=> b!3526326 m!3980089))

(declare-fun m!3980091 () Bool)

(assert (=> b!3526326 m!3980091))

(declare-fun m!3980093 () Bool)

(assert (=> b!3526326 m!3980093))

(declare-fun m!3980095 () Bool)

(assert (=> b!3526326 m!3980095))

(declare-fun m!3980097 () Bool)

(assert (=> b!3526326 m!3980097))

(assert (=> b!3526326 m!3980079))

(declare-fun m!3980099 () Bool)

(assert (=> b!3526326 m!3980099))

(declare-fun m!3980101 () Bool)

(assert (=> b!3526326 m!3980101))

(declare-fun m!3980103 () Bool)

(assert (=> b!3526326 m!3980103))

(declare-fun m!3980105 () Bool)

(assert (=> b!3526326 m!3980105))

(assert (=> b!3526326 m!3980089))

(declare-fun m!3980107 () Bool)

(assert (=> b!3526326 m!3980107))

(declare-fun m!3980109 () Bool)

(assert (=> b!3526326 m!3980109))

(declare-fun m!3980111 () Bool)

(assert (=> b!3526326 m!3980111))

(declare-fun m!3980113 () Bool)

(assert (=> b!3526326 m!3980113))

(declare-fun m!3980115 () Bool)

(assert (=> b!3526326 m!3980115))

(assert (=> b!3526326 m!3980065))

(declare-fun m!3980117 () Bool)

(assert (=> b!3526326 m!3980117))

(declare-fun m!3980119 () Bool)

(assert (=> b!3526326 m!3980119))

(declare-fun m!3980121 () Bool)

(assert (=> b!3526326 m!3980121))

(declare-fun m!3980123 () Bool)

(assert (=> b!3526326 m!3980123))

(declare-fun m!3980125 () Bool)

(assert (=> b!3526326 m!3980125))

(declare-fun m!3980127 () Bool)

(assert (=> b!3526326 m!3980127))

(declare-fun m!3980129 () Bool)

(assert (=> b!3526326 m!3980129))

(declare-fun m!3980131 () Bool)

(assert (=> b!3526326 m!3980131))

(declare-fun m!3980133 () Bool)

(assert (=> b!3526326 m!3980133))

(declare-fun m!3980135 () Bool)

(assert (=> b!3526326 m!3980135))

(declare-fun m!3980137 () Bool)

(assert (=> b!3526326 m!3980137))

(assert (=> b!3526326 m!3980137))

(declare-fun m!3980139 () Bool)

(assert (=> b!3526326 m!3980139))

(declare-fun m!3980141 () Bool)

(assert (=> b!3526326 m!3980141))

(declare-fun m!3980143 () Bool)

(assert (=> b!3526326 m!3980143))

(declare-fun m!3980145 () Bool)

(assert (=> b!3526326 m!3980145))

(declare-fun m!3980147 () Bool)

(assert (=> b!3526326 m!3980147))

(declare-fun m!3980149 () Bool)

(assert (=> b!3526326 m!3980149))

(declare-fun m!3980151 () Bool)

(assert (=> b!3526335 m!3980151))

(declare-fun m!3980153 () Bool)

(assert (=> b!3526335 m!3980153))

(declare-fun m!3980155 () Bool)

(assert (=> b!3526332 m!3980155))

(declare-fun m!3980157 () Bool)

(assert (=> b!3526332 m!3980157))

(declare-fun m!3980159 () Bool)

(assert (=> b!3526334 m!3980159))

(declare-fun m!3980161 () Bool)

(assert (=> b!3526311 m!3980161))

(declare-fun m!3980163 () Bool)

(assert (=> b!3526323 m!3980163))

(declare-fun m!3980165 () Bool)

(assert (=> b!3526327 m!3980165))

(assert (=> b!3526327 m!3980165))

(declare-fun m!3980167 () Bool)

(assert (=> b!3526327 m!3980167))

(declare-fun m!3980169 () Bool)

(assert (=> b!3526301 m!3980169))

(declare-fun m!3980171 () Bool)

(assert (=> b!3526313 m!3980171))

(declare-fun m!3980173 () Bool)

(assert (=> b!3526306 m!3980173))

(declare-fun m!3980175 () Bool)

(assert (=> b!3526306 m!3980175))

(declare-fun m!3980177 () Bool)

(assert (=> b!3526328 m!3980177))

(declare-fun m!3980179 () Bool)

(assert (=> b!3526295 m!3980179))

(declare-fun m!3980181 () Bool)

(assert (=> b!3526295 m!3980181))

(declare-fun m!3980183 () Bool)

(assert (=> b!3526307 m!3980183))

(declare-fun m!3980185 () Bool)

(assert (=> b!3526307 m!3980185))

(declare-fun m!3980187 () Bool)

(assert (=> b!3526307 m!3980187))

(declare-fun m!3980189 () Bool)

(assert (=> b!3526307 m!3980189))

(declare-fun m!3980191 () Bool)

(assert (=> b!3526307 m!3980191))

(declare-fun m!3980193 () Bool)

(assert (=> b!3526318 m!3980193))

(assert (=> b!3526318 m!3980193))

(declare-fun m!3980195 () Bool)

(assert (=> b!3526318 m!3980195))

(declare-fun m!3980197 () Bool)

(assert (=> b!3526298 m!3980197))

(declare-fun m!3980199 () Bool)

(assert (=> b!3526293 m!3980199))

(declare-fun m!3980201 () Bool)

(assert (=> b!3526293 m!3980201))

(declare-fun m!3980203 () Bool)

(assert (=> b!3526329 m!3980203))

(declare-fun m!3980205 () Bool)

(assert (=> b!3526329 m!3980205))

(declare-fun m!3980207 () Bool)

(assert (=> b!3526324 m!3980207))

(declare-fun m!3980209 () Bool)

(assert (=> b!3526324 m!3980209))

(declare-fun m!3980211 () Bool)

(assert (=> b!3526325 m!3980211))

(declare-fun m!3980213 () Bool)

(assert (=> b!3526304 m!3980213))

(declare-fun m!3980215 () Bool)

(assert (=> b!3526304 m!3980215))

(declare-fun m!3980217 () Bool)

(assert (=> start!327714 m!3980217))

(declare-fun m!3980219 () Bool)

(assert (=> b!3526315 m!3980219))

(declare-fun m!3980221 () Bool)

(assert (=> b!3526308 m!3980221))

(declare-fun m!3980223 () Bool)

(assert (=> b!3526308 m!3980223))

(declare-fun m!3980225 () Bool)

(assert (=> b!3526308 m!3980225))

(declare-fun m!3980227 () Bool)

(assert (=> b!3526292 m!3980227))

(declare-fun m!3980229 () Bool)

(assert (=> b!3526292 m!3980229))

(declare-fun m!3980231 () Bool)

(assert (=> b!3526302 m!3980231))

(declare-fun m!3980233 () Bool)

(assert (=> b!3526302 m!3980233))

(declare-fun m!3980235 () Bool)

(assert (=> b!3526317 m!3980235))

(declare-fun m!3980237 () Bool)

(assert (=> b!3526330 m!3980237))

(declare-fun m!3980239 () Bool)

(assert (=> b!3526322 m!3980239))

(declare-fun m!3980241 () Bool)

(assert (=> b!3526299 m!3980241))

(assert (=> b!3526299 m!3980241))

(declare-fun m!3980243 () Bool)

(assert (=> b!3526299 m!3980243))

(declare-fun m!3980245 () Bool)

(assert (=> b!3526321 m!3980245))

(declare-fun m!3980247 () Bool)

(assert (=> b!3526319 m!3980247))

(check-sat (not b!3526330) (not b!3526302) (not b!3526318) (not b!3526327) (not b_next!91583) b_and!251423 (not b!3526303) b_and!251419 (not b!3526295) (not b!3526322) (not b!3526299) (not b_next!91579) (not b!3526306) (not b!3526334) (not b!3526335) (not b!3526321) (not b!3526325) b_and!251421 (not b!3526307) (not b!3526315) (not b!3526317) (not b!3526324) (not b!3526326) (not b!3526344) (not b!3526314) b_and!251429 (not b!3526301) (not b!3526298) (not b!3526308) (not b!3526293) (not b!3526323) (not b_next!91587) (not b_next!91581) (not b!3526313) (not b!3526292) b_and!251425 b_and!251427 (not b_next!91585) (not b!3526304) (not b!3526332) (not b!3526329) (not b!3526328) (not b!3526311) (not b!3526319) (not start!327714) (not b_next!91577))
(check-sat b_and!251421 (not b_next!91583) b_and!251423 b_and!251429 b_and!251419 (not b_next!91585) (not b_next!91579) (not b_next!91577) (not b_next!91587) (not b_next!91581) b_and!251425 b_and!251427)
(get-model)

(declare-fun d!1029327 () Bool)

(declare-fun lt!1205050 () Bool)

(declare-fun e!2182865 () Bool)

(assert (=> d!1029327 (= lt!1205050 e!2182865)))

(declare-fun res!1422516 () Bool)

(assert (=> d!1029327 (=> (not res!1422516) (not e!2182865))))

(declare-fun list!13681 (BalanceConc!22302) List!37505)

(assert (=> d!1029327 (= res!1422516 (= (list!13681 (_1!21748 (lex!2399 thiss!18206 rules!2135 (print!2138 thiss!18206 (singletonSeq!2580 (h!42801 tokens!494)))))) (list!13681 (singletonSeq!2580 (h!42801 tokens!494)))))))

(declare-fun e!2182864 () Bool)

(assert (=> d!1029327 (= lt!1205050 e!2182864)))

(declare-fun res!1422518 () Bool)

(assert (=> d!1029327 (=> (not res!1422518) (not e!2182864))))

(declare-fun lt!1205051 () tuple2!37228)

(assert (=> d!1029327 (= res!1422518 (= (size!28451 (_1!21748 lt!1205051)) 1))))

(assert (=> d!1029327 (= lt!1205051 (lex!2399 thiss!18206 rules!2135 (print!2138 thiss!18206 (singletonSeq!2580 (h!42801 tokens!494)))))))

(assert (=> d!1029327 (not (isEmpty!21855 rules!2135))))

(assert (=> d!1029327 (= (rulesProduceIndividualToken!2565 thiss!18206 rules!2135 (h!42801 tokens!494)) lt!1205050)))

(declare-fun b!3526376 () Bool)

(declare-fun res!1422517 () Bool)

(assert (=> b!3526376 (=> (not res!1422517) (not e!2182864))))

(assert (=> b!3526376 (= res!1422517 (= (apply!8922 (_1!21748 lt!1205051) 0) (h!42801 tokens!494)))))

(declare-fun b!3526377 () Bool)

(assert (=> b!3526377 (= e!2182864 (isEmpty!21854 (_2!21748 lt!1205051)))))

(declare-fun b!3526378 () Bool)

(assert (=> b!3526378 (= e!2182865 (isEmpty!21854 (_2!21748 (lex!2399 thiss!18206 rules!2135 (print!2138 thiss!18206 (singletonSeq!2580 (h!42801 tokens!494)))))))))

(assert (= (and d!1029327 res!1422518) b!3526376))

(assert (= (and b!3526376 res!1422517) b!3526377))

(assert (= (and d!1029327 res!1422516) b!3526378))

(declare-fun m!3980265 () Bool)

(assert (=> d!1029327 m!3980265))

(declare-fun m!3980267 () Bool)

(assert (=> d!1029327 m!3980267))

(assert (=> d!1029327 m!3980185))

(declare-fun m!3980269 () Bool)

(assert (=> d!1029327 m!3980269))

(declare-fun m!3980271 () Bool)

(assert (=> d!1029327 m!3980271))

(declare-fun m!3980273 () Bool)

(assert (=> d!1029327 m!3980273))

(assert (=> d!1029327 m!3980159))

(assert (=> d!1029327 m!3980185))

(assert (=> d!1029327 m!3980265))

(assert (=> d!1029327 m!3980185))

(declare-fun m!3980275 () Bool)

(assert (=> b!3526376 m!3980275))

(declare-fun m!3980277 () Bool)

(assert (=> b!3526377 m!3980277))

(assert (=> b!3526378 m!3980185))

(assert (=> b!3526378 m!3980185))

(assert (=> b!3526378 m!3980265))

(assert (=> b!3526378 m!3980265))

(assert (=> b!3526378 m!3980267))

(declare-fun m!3980279 () Bool)

(assert (=> b!3526378 m!3980279))

(assert (=> b!3526315 d!1029327))

(declare-fun b!3526407 () Bool)

(declare-fun e!2182886 () Bool)

(declare-fun e!2182884 () Bool)

(assert (=> b!3526407 (= e!2182886 e!2182884)))

(declare-fun c!607919 () Bool)

(assert (=> b!3526407 (= c!607919 ((_ is EmptyLang!10243) (regex!5484 lt!1205010)))))

(declare-fun b!3526408 () Bool)

(declare-fun e!2182880 () Bool)

(declare-fun nullable!3521 (Regex!10243) Bool)

(assert (=> b!3526408 (= e!2182880 (nullable!3521 (regex!5484 lt!1205010)))))

(declare-fun b!3526409 () Bool)

(declare-fun e!2182885 () Bool)

(assert (=> b!3526409 (= e!2182885 (not (= (head!7397 lt!1205031) (c!607904 (regex!5484 lt!1205010)))))))

(declare-fun b!3526410 () Bool)

(declare-fun lt!1205054 () Bool)

(assert (=> b!3526410 (= e!2182884 (not lt!1205054))))

(declare-fun bm!254734 () Bool)

(declare-fun call!254739 () Bool)

(declare-fun isEmpty!21858 (List!37503) Bool)

(assert (=> bm!254734 (= call!254739 (isEmpty!21858 lt!1205031))))

(declare-fun b!3526411 () Bool)

(declare-fun derivativeStep!3074 (Regex!10243 C!20672) Regex!10243)

(declare-fun tail!5498 (List!37503) List!37503)

(assert (=> b!3526411 (= e!2182880 (matchR!4827 (derivativeStep!3074 (regex!5484 lt!1205010) (head!7397 lt!1205031)) (tail!5498 lt!1205031)))))

(declare-fun d!1029337 () Bool)

(assert (=> d!1029337 e!2182886))

(declare-fun c!607921 () Bool)

(assert (=> d!1029337 (= c!607921 ((_ is EmptyExpr!10243) (regex!5484 lt!1205010)))))

(assert (=> d!1029337 (= lt!1205054 e!2182880)))

(declare-fun c!607920 () Bool)

(assert (=> d!1029337 (= c!607920 (isEmpty!21858 lt!1205031))))

(declare-fun validRegex!4677 (Regex!10243) Bool)

(assert (=> d!1029337 (validRegex!4677 (regex!5484 lt!1205010))))

(assert (=> d!1029337 (= (matchR!4827 (regex!5484 lt!1205010) lt!1205031) lt!1205054)))

(declare-fun b!3526412 () Bool)

(declare-fun res!1422542 () Bool)

(declare-fun e!2182882 () Bool)

(assert (=> b!3526412 (=> (not res!1422542) (not e!2182882))))

(assert (=> b!3526412 (= res!1422542 (not call!254739))))

(declare-fun b!3526413 () Bool)

(declare-fun res!1422541 () Bool)

(assert (=> b!3526413 (=> res!1422541 e!2182885)))

(assert (=> b!3526413 (= res!1422541 (not (isEmpty!21858 (tail!5498 lt!1205031))))))

(declare-fun b!3526414 () Bool)

(assert (=> b!3526414 (= e!2182886 (= lt!1205054 call!254739))))

(declare-fun b!3526415 () Bool)

(assert (=> b!3526415 (= e!2182882 (= (head!7397 lt!1205031) (c!607904 (regex!5484 lt!1205010))))))

(declare-fun b!3526416 () Bool)

(declare-fun res!1422535 () Bool)

(declare-fun e!2182883 () Bool)

(assert (=> b!3526416 (=> res!1422535 e!2182883)))

(assert (=> b!3526416 (= res!1422535 (not ((_ is ElementMatch!10243) (regex!5484 lt!1205010))))))

(assert (=> b!3526416 (= e!2182884 e!2182883)))

(declare-fun b!3526417 () Bool)

(declare-fun e!2182881 () Bool)

(assert (=> b!3526417 (= e!2182881 e!2182885)))

(declare-fun res!1422537 () Bool)

(assert (=> b!3526417 (=> res!1422537 e!2182885)))

(assert (=> b!3526417 (= res!1422537 call!254739)))

(declare-fun b!3526418 () Bool)

(declare-fun res!1422538 () Bool)

(assert (=> b!3526418 (=> (not res!1422538) (not e!2182882))))

(assert (=> b!3526418 (= res!1422538 (isEmpty!21858 (tail!5498 lt!1205031)))))

(declare-fun b!3526419 () Bool)

(declare-fun res!1422536 () Bool)

(assert (=> b!3526419 (=> res!1422536 e!2182883)))

(assert (=> b!3526419 (= res!1422536 e!2182882)))

(declare-fun res!1422539 () Bool)

(assert (=> b!3526419 (=> (not res!1422539) (not e!2182882))))

(assert (=> b!3526419 (= res!1422539 lt!1205054)))

(declare-fun b!3526420 () Bool)

(assert (=> b!3526420 (= e!2182883 e!2182881)))

(declare-fun res!1422540 () Bool)

(assert (=> b!3526420 (=> (not res!1422540) (not e!2182881))))

(assert (=> b!3526420 (= res!1422540 (not lt!1205054))))

(assert (= (and d!1029337 c!607920) b!3526408))

(assert (= (and d!1029337 (not c!607920)) b!3526411))

(assert (= (and d!1029337 c!607921) b!3526414))

(assert (= (and d!1029337 (not c!607921)) b!3526407))

(assert (= (and b!3526407 c!607919) b!3526410))

(assert (= (and b!3526407 (not c!607919)) b!3526416))

(assert (= (and b!3526416 (not res!1422535)) b!3526419))

(assert (= (and b!3526419 res!1422539) b!3526412))

(assert (= (and b!3526412 res!1422542) b!3526418))

(assert (= (and b!3526418 res!1422538) b!3526415))

(assert (= (and b!3526419 (not res!1422536)) b!3526420))

(assert (= (and b!3526420 res!1422540) b!3526417))

(assert (= (and b!3526417 (not res!1422537)) b!3526413))

(assert (= (and b!3526413 (not res!1422541)) b!3526409))

(assert (= (or b!3526414 b!3526412 b!3526417) bm!254734))

(declare-fun m!3980281 () Bool)

(assert (=> b!3526408 m!3980281))

(assert (=> b!3526409 m!3980075))

(assert (=> b!3526411 m!3980075))

(assert (=> b!3526411 m!3980075))

(declare-fun m!3980283 () Bool)

(assert (=> b!3526411 m!3980283))

(declare-fun m!3980285 () Bool)

(assert (=> b!3526411 m!3980285))

(assert (=> b!3526411 m!3980283))

(assert (=> b!3526411 m!3980285))

(declare-fun m!3980287 () Bool)

(assert (=> b!3526411 m!3980287))

(assert (=> b!3526418 m!3980285))

(assert (=> b!3526418 m!3980285))

(declare-fun m!3980289 () Bool)

(assert (=> b!3526418 m!3980289))

(declare-fun m!3980291 () Bool)

(assert (=> bm!254734 m!3980291))

(assert (=> b!3526413 m!3980285))

(assert (=> b!3526413 m!3980285))

(assert (=> b!3526413 m!3980289))

(assert (=> b!3526415 m!3980075))

(assert (=> d!1029337 m!3980291))

(declare-fun m!3980293 () Bool)

(assert (=> d!1029337 m!3980293))

(assert (=> b!3526293 d!1029337))

(declare-fun d!1029339 () Bool)

(assert (=> d!1029339 (= (get!12005 lt!1205006) (v!37136 lt!1205006))))

(assert (=> b!3526293 d!1029339))

(declare-fun d!1029341 () Bool)

(declare-fun e!2182892 () Bool)

(assert (=> d!1029341 e!2182892))

(declare-fun res!1422547 () Bool)

(assert (=> d!1029341 (=> (not res!1422547) (not e!2182892))))

(declare-fun lt!1205057 () List!37503)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!5273 (List!37503) (InoxSet C!20672))

(assert (=> d!1029341 (= res!1422547 (= (content!5273 lt!1205057) ((_ map or) (content!5273 lt!1205041) (content!5273 lt!1205031))))))

(declare-fun e!2182891 () List!37503)

(assert (=> d!1029341 (= lt!1205057 e!2182891)))

(declare-fun c!607924 () Bool)

(assert (=> d!1029341 (= c!607924 ((_ is Nil!37379) lt!1205041))))

(assert (=> d!1029341 (= (++!9269 lt!1205041 lt!1205031) lt!1205057)))

(declare-fun b!3526429 () Bool)

(assert (=> b!3526429 (= e!2182891 lt!1205031)))

(declare-fun b!3526431 () Bool)

(declare-fun res!1422548 () Bool)

(assert (=> b!3526431 (=> (not res!1422548) (not e!2182892))))

(assert (=> b!3526431 (= res!1422548 (= (size!28450 lt!1205057) (+ (size!28450 lt!1205041) (size!28450 lt!1205031))))))

(declare-fun b!3526430 () Bool)

(assert (=> b!3526430 (= e!2182891 (Cons!37379 (h!42799 lt!1205041) (++!9269 (t!282518 lt!1205041) lt!1205031)))))

(declare-fun b!3526432 () Bool)

(assert (=> b!3526432 (= e!2182892 (or (not (= lt!1205031 Nil!37379)) (= lt!1205057 lt!1205041)))))

(assert (= (and d!1029341 c!607924) b!3526429))

(assert (= (and d!1029341 (not c!607924)) b!3526430))

(assert (= (and d!1029341 res!1422547) b!3526431))

(assert (= (and b!3526431 res!1422548) b!3526432))

(declare-fun m!3980295 () Bool)

(assert (=> d!1029341 m!3980295))

(declare-fun m!3980297 () Bool)

(assert (=> d!1029341 m!3980297))

(declare-fun m!3980299 () Bool)

(assert (=> d!1029341 m!3980299))

(declare-fun m!3980301 () Bool)

(assert (=> b!3526431 m!3980301))

(assert (=> b!3526431 m!3980067))

(declare-fun m!3980303 () Bool)

(assert (=> b!3526431 m!3980303))

(declare-fun m!3980305 () Bool)

(assert (=> b!3526430 m!3980305))

(assert (=> b!3526314 d!1029341))

(declare-fun d!1029343 () Bool)

(declare-fun lt!1205060 () BalanceConc!22300)

(assert (=> d!1029343 (= (list!13679 lt!1205060) (originalCharacters!6198 separatorToken!241))))

(declare-fun dynLambda!15947 (Int TokenValue!5714) BalanceConc!22300)

(assert (=> d!1029343 (= lt!1205060 (dynLambda!15947 (toChars!7599 (transformation!5484 (rule!8140 separatorToken!241))) (value!176754 separatorToken!241)))))

(assert (=> d!1029343 (= (charsOf!3498 separatorToken!241) lt!1205060)))

(declare-fun b_lambda!103083 () Bool)

(assert (=> (not b_lambda!103083) (not d!1029343)))

(declare-fun tb!197307 () Bool)

(declare-fun t!282527 () Bool)

(assert (=> (and b!3526316 (= (toChars!7599 (transformation!5484 (rule!8140 (h!42801 tokens!494)))) (toChars!7599 (transformation!5484 (rule!8140 separatorToken!241)))) t!282527) tb!197307))

(declare-fun b!3526437 () Bool)

(declare-fun e!2182895 () Bool)

(declare-fun tp!1087761 () Bool)

(declare-fun inv!50621 (Conc!11343) Bool)

(assert (=> b!3526437 (= e!2182895 (and (inv!50621 (c!607905 (dynLambda!15947 (toChars!7599 (transformation!5484 (rule!8140 separatorToken!241))) (value!176754 separatorToken!241)))) tp!1087761))))

(declare-fun result!241708 () Bool)

(declare-fun inv!50622 (BalanceConc!22300) Bool)

(assert (=> tb!197307 (= result!241708 (and (inv!50622 (dynLambda!15947 (toChars!7599 (transformation!5484 (rule!8140 separatorToken!241))) (value!176754 separatorToken!241))) e!2182895))))

(assert (= tb!197307 b!3526437))

(declare-fun m!3980307 () Bool)

(assert (=> b!3526437 m!3980307))

(declare-fun m!3980309 () Bool)

(assert (=> tb!197307 m!3980309))

(assert (=> d!1029343 t!282527))

(declare-fun b_and!251431 () Bool)

(assert (= b_and!251421 (and (=> t!282527 result!241708) b_and!251431)))

(declare-fun tb!197309 () Bool)

(declare-fun t!282529 () Bool)

(assert (=> (and b!3526310 (= (toChars!7599 (transformation!5484 (h!42800 rules!2135))) (toChars!7599 (transformation!5484 (rule!8140 separatorToken!241)))) t!282529) tb!197309))

(declare-fun result!241712 () Bool)

(assert (= result!241712 result!241708))

(assert (=> d!1029343 t!282529))

(declare-fun b_and!251433 () Bool)

(assert (= b_and!251425 (and (=> t!282529 result!241712) b_and!251433)))

(declare-fun t!282531 () Bool)

(declare-fun tb!197311 () Bool)

(assert (=> (and b!3526333 (= (toChars!7599 (transformation!5484 (rule!8140 separatorToken!241))) (toChars!7599 (transformation!5484 (rule!8140 separatorToken!241)))) t!282531) tb!197311))

(declare-fun result!241714 () Bool)

(assert (= result!241714 result!241708))

(assert (=> d!1029343 t!282531))

(declare-fun b_and!251435 () Bool)

(assert (= b_and!251429 (and (=> t!282531 result!241714) b_and!251435)))

(declare-fun m!3980311 () Bool)

(assert (=> d!1029343 m!3980311))

(declare-fun m!3980313 () Bool)

(assert (=> d!1029343 m!3980313))

(assert (=> b!3526314 d!1029343))

(declare-fun d!1029345 () Bool)

(declare-fun list!13682 (Conc!11343) List!37503)

(assert (=> d!1029345 (= (list!13679 (charsOf!3498 (h!42801 (t!282520 tokens!494)))) (list!13682 (c!607905 (charsOf!3498 (h!42801 (t!282520 tokens!494))))))))

(declare-fun bs!565709 () Bool)

(assert (= bs!565709 d!1029345))

(declare-fun m!3980315 () Bool)

(assert (=> bs!565709 m!3980315))

(assert (=> b!3526314 d!1029345))

(declare-fun d!1029347 () Bool)

(declare-fun e!2182897 () Bool)

(assert (=> d!1029347 e!2182897))

(declare-fun res!1422549 () Bool)

(assert (=> d!1029347 (=> (not res!1422549) (not e!2182897))))

(declare-fun lt!1205061 () List!37503)

(assert (=> d!1029347 (= res!1422549 (= (content!5273 lt!1205061) ((_ map or) (content!5273 lt!1205031) (content!5273 lt!1205020))))))

(declare-fun e!2182896 () List!37503)

(assert (=> d!1029347 (= lt!1205061 e!2182896)))

(declare-fun c!607925 () Bool)

(assert (=> d!1029347 (= c!607925 ((_ is Nil!37379) lt!1205031))))

(assert (=> d!1029347 (= (++!9269 lt!1205031 lt!1205020) lt!1205061)))

(declare-fun b!3526438 () Bool)

(assert (=> b!3526438 (= e!2182896 lt!1205020)))

(declare-fun b!3526440 () Bool)

(declare-fun res!1422550 () Bool)

(assert (=> b!3526440 (=> (not res!1422550) (not e!2182897))))

(assert (=> b!3526440 (= res!1422550 (= (size!28450 lt!1205061) (+ (size!28450 lt!1205031) (size!28450 lt!1205020))))))

(declare-fun b!3526439 () Bool)

(assert (=> b!3526439 (= e!2182896 (Cons!37379 (h!42799 lt!1205031) (++!9269 (t!282518 lt!1205031) lt!1205020)))))

(declare-fun b!3526441 () Bool)

(assert (=> b!3526441 (= e!2182897 (or (not (= lt!1205020 Nil!37379)) (= lt!1205061 lt!1205031)))))

(assert (= (and d!1029347 c!607925) b!3526438))

(assert (= (and d!1029347 (not c!607925)) b!3526439))

(assert (= (and d!1029347 res!1422549) b!3526440))

(assert (= (and b!3526440 res!1422550) b!3526441))

(declare-fun m!3980317 () Bool)

(assert (=> d!1029347 m!3980317))

(assert (=> d!1029347 m!3980299))

(declare-fun m!3980319 () Bool)

(assert (=> d!1029347 m!3980319))

(declare-fun m!3980321 () Bool)

(assert (=> b!3526440 m!3980321))

(assert (=> b!3526440 m!3980303))

(declare-fun m!3980323 () Bool)

(assert (=> b!3526440 m!3980323))

(declare-fun m!3980325 () Bool)

(assert (=> b!3526439 m!3980325))

(assert (=> b!3526314 d!1029347))

(declare-fun d!1029349 () Bool)

(declare-fun e!2182899 () Bool)

(assert (=> d!1029349 e!2182899))

(declare-fun res!1422551 () Bool)

(assert (=> d!1029349 (=> (not res!1422551) (not e!2182899))))

(declare-fun lt!1205062 () List!37503)

(assert (=> d!1029349 (= res!1422551 (= (content!5273 lt!1205062) ((_ map or) (content!5273 (++!9269 lt!1205041 lt!1205031)) (content!5273 (printWithSeparatorTokenList!360 thiss!18206 (t!282520 (t!282520 tokens!494)) separatorToken!241)))))))

(declare-fun e!2182898 () List!37503)

(assert (=> d!1029349 (= lt!1205062 e!2182898)))

(declare-fun c!607926 () Bool)

(assert (=> d!1029349 (= c!607926 ((_ is Nil!37379) (++!9269 lt!1205041 lt!1205031)))))

(assert (=> d!1029349 (= (++!9269 (++!9269 lt!1205041 lt!1205031) (printWithSeparatorTokenList!360 thiss!18206 (t!282520 (t!282520 tokens!494)) separatorToken!241)) lt!1205062)))

(declare-fun b!3526442 () Bool)

(assert (=> b!3526442 (= e!2182898 (printWithSeparatorTokenList!360 thiss!18206 (t!282520 (t!282520 tokens!494)) separatorToken!241))))

(declare-fun b!3526444 () Bool)

(declare-fun res!1422552 () Bool)

(assert (=> b!3526444 (=> (not res!1422552) (not e!2182899))))

(assert (=> b!3526444 (= res!1422552 (= (size!28450 lt!1205062) (+ (size!28450 (++!9269 lt!1205041 lt!1205031)) (size!28450 (printWithSeparatorTokenList!360 thiss!18206 (t!282520 (t!282520 tokens!494)) separatorToken!241)))))))

(declare-fun b!3526443 () Bool)

(assert (=> b!3526443 (= e!2182898 (Cons!37379 (h!42799 (++!9269 lt!1205041 lt!1205031)) (++!9269 (t!282518 (++!9269 lt!1205041 lt!1205031)) (printWithSeparatorTokenList!360 thiss!18206 (t!282520 (t!282520 tokens!494)) separatorToken!241))))))

(declare-fun b!3526445 () Bool)

(assert (=> b!3526445 (= e!2182899 (or (not (= (printWithSeparatorTokenList!360 thiss!18206 (t!282520 (t!282520 tokens!494)) separatorToken!241) Nil!37379)) (= lt!1205062 (++!9269 lt!1205041 lt!1205031))))))

(assert (= (and d!1029349 c!607926) b!3526442))

(assert (= (and d!1029349 (not c!607926)) b!3526443))

(assert (= (and d!1029349 res!1422551) b!3526444))

(assert (= (and b!3526444 res!1422552) b!3526445))

(declare-fun m!3980327 () Bool)

(assert (=> d!1029349 m!3980327))

(assert (=> d!1029349 m!3980051))

(declare-fun m!3980329 () Bool)

(assert (=> d!1029349 m!3980329))

(assert (=> d!1029349 m!3980053))

(declare-fun m!3980331 () Bool)

(assert (=> d!1029349 m!3980331))

(declare-fun m!3980333 () Bool)

(assert (=> b!3526444 m!3980333))

(assert (=> b!3526444 m!3980051))

(declare-fun m!3980335 () Bool)

(assert (=> b!3526444 m!3980335))

(assert (=> b!3526444 m!3980053))

(declare-fun m!3980337 () Bool)

(assert (=> b!3526444 m!3980337))

(assert (=> b!3526443 m!3980053))

(declare-fun m!3980339 () Bool)

(assert (=> b!3526443 m!3980339))

(assert (=> b!3526314 d!1029349))

(declare-fun d!1029351 () Bool)

(declare-fun c!607929 () Bool)

(assert (=> d!1029351 (= c!607929 ((_ is Cons!37381) tokens!494))))

(declare-fun e!2182902 () List!37503)

(assert (=> d!1029351 (= (printWithSeparatorTokenList!360 thiss!18206 tokens!494 separatorToken!241) e!2182902)))

(declare-fun b!3526450 () Bool)

(assert (=> b!3526450 (= e!2182902 (++!9269 (++!9269 (list!13679 (charsOf!3498 (h!42801 tokens!494))) (list!13679 (charsOf!3498 separatorToken!241))) (printWithSeparatorTokenList!360 thiss!18206 (t!282520 tokens!494) separatorToken!241)))))

(declare-fun b!3526451 () Bool)

(assert (=> b!3526451 (= e!2182902 Nil!37379)))

(assert (= (and d!1029351 c!607929) b!3526450))

(assert (= (and d!1029351 (not c!607929)) b!3526451))

(assert (=> b!3526450 m!3980047))

(declare-fun m!3980341 () Bool)

(assert (=> b!3526450 m!3980341))

(assert (=> b!3526450 m!3980047))

(declare-fun m!3980343 () Bool)

(assert (=> b!3526450 m!3980343))

(assert (=> b!3526450 m!3980167))

(assert (=> b!3526450 m!3980055))

(assert (=> b!3526450 m!3980341))

(assert (=> b!3526450 m!3980045))

(assert (=> b!3526450 m!3980045))

(assert (=> b!3526450 m!3980055))

(assert (=> b!3526450 m!3980165))

(assert (=> b!3526450 m!3980167))

(assert (=> b!3526450 m!3980165))

(assert (=> b!3526314 d!1029351))

(declare-fun d!1029353 () Bool)

(declare-fun c!607930 () Bool)

(assert (=> d!1029353 (= c!607930 ((_ is Cons!37381) (t!282520 (t!282520 tokens!494))))))

(declare-fun e!2182903 () List!37503)

(assert (=> d!1029353 (= (printWithSeparatorTokenList!360 thiss!18206 (t!282520 (t!282520 tokens!494)) separatorToken!241) e!2182903)))

(declare-fun b!3526452 () Bool)

(assert (=> b!3526452 (= e!2182903 (++!9269 (++!9269 (list!13679 (charsOf!3498 (h!42801 (t!282520 (t!282520 tokens!494))))) (list!13679 (charsOf!3498 separatorToken!241))) (printWithSeparatorTokenList!360 thiss!18206 (t!282520 (t!282520 (t!282520 tokens!494))) separatorToken!241)))))

(declare-fun b!3526453 () Bool)

(assert (=> b!3526453 (= e!2182903 Nil!37379)))

(assert (= (and d!1029353 c!607930) b!3526452))

(assert (= (and d!1029353 (not c!607930)) b!3526453))

(declare-fun m!3980345 () Bool)

(assert (=> b!3526452 m!3980345))

(declare-fun m!3980347 () Bool)

(assert (=> b!3526452 m!3980347))

(assert (=> b!3526452 m!3980345))

(declare-fun m!3980349 () Bool)

(assert (=> b!3526452 m!3980349))

(declare-fun m!3980351 () Bool)

(assert (=> b!3526452 m!3980351))

(assert (=> b!3526452 m!3980055))

(assert (=> b!3526452 m!3980347))

(assert (=> b!3526452 m!3980045))

(assert (=> b!3526452 m!3980045))

(assert (=> b!3526452 m!3980055))

(declare-fun m!3980353 () Bool)

(assert (=> b!3526452 m!3980353))

(assert (=> b!3526452 m!3980351))

(assert (=> b!3526452 m!3980353))

(assert (=> b!3526314 d!1029353))

(declare-fun d!1029355 () Bool)

(declare-fun c!607931 () Bool)

(assert (=> d!1029355 (= c!607931 ((_ is Cons!37381) (t!282520 tokens!494)))))

(declare-fun e!2182904 () List!37503)

(assert (=> d!1029355 (= (printWithSeparatorTokenList!360 thiss!18206 (t!282520 tokens!494) separatorToken!241) e!2182904)))

(declare-fun b!3526454 () Bool)

(assert (=> b!3526454 (= e!2182904 (++!9269 (++!9269 (list!13679 (charsOf!3498 (h!42801 (t!282520 tokens!494)))) (list!13679 (charsOf!3498 separatorToken!241))) (printWithSeparatorTokenList!360 thiss!18206 (t!282520 (t!282520 tokens!494)) separatorToken!241)))))

(declare-fun b!3526455 () Bool)

(assert (=> b!3526455 (= e!2182904 Nil!37379)))

(assert (= (and d!1029355 c!607931) b!3526454))

(assert (= (and d!1029355 (not c!607931)) b!3526455))

(assert (=> b!3526454 m!3980053))

(declare-fun m!3980355 () Bool)

(assert (=> b!3526454 m!3980355))

(assert (=> b!3526454 m!3980053))

(declare-fun m!3980357 () Bool)

(assert (=> b!3526454 m!3980357))

(assert (=> b!3526454 m!3980049))

(assert (=> b!3526454 m!3980055))

(assert (=> b!3526454 m!3980355))

(assert (=> b!3526454 m!3980045))

(assert (=> b!3526454 m!3980045))

(assert (=> b!3526454 m!3980055))

(assert (=> b!3526454 m!3980043))

(assert (=> b!3526454 m!3980049))

(assert (=> b!3526454 m!3980043))

(assert (=> b!3526314 d!1029355))

(declare-fun d!1029357 () Bool)

(assert (=> d!1029357 (= (list!13679 (charsOf!3498 separatorToken!241)) (list!13682 (c!607905 (charsOf!3498 separatorToken!241))))))

(declare-fun bs!565710 () Bool)

(assert (= bs!565710 d!1029357))

(declare-fun m!3980359 () Bool)

(assert (=> bs!565710 m!3980359))

(assert (=> b!3526314 d!1029357))

(declare-fun d!1029359 () Bool)

(declare-fun lt!1205063 () BalanceConc!22300)

(assert (=> d!1029359 (= (list!13679 lt!1205063) (originalCharacters!6198 (h!42801 (t!282520 tokens!494))))))

(assert (=> d!1029359 (= lt!1205063 (dynLambda!15947 (toChars!7599 (transformation!5484 (rule!8140 (h!42801 (t!282520 tokens!494))))) (value!176754 (h!42801 (t!282520 tokens!494)))))))

(assert (=> d!1029359 (= (charsOf!3498 (h!42801 (t!282520 tokens!494))) lt!1205063)))

(declare-fun b_lambda!103085 () Bool)

(assert (=> (not b_lambda!103085) (not d!1029359)))

(declare-fun t!282533 () Bool)

(declare-fun tb!197313 () Bool)

(assert (=> (and b!3526316 (= (toChars!7599 (transformation!5484 (rule!8140 (h!42801 tokens!494)))) (toChars!7599 (transformation!5484 (rule!8140 (h!42801 (t!282520 tokens!494)))))) t!282533) tb!197313))

(declare-fun b!3526456 () Bool)

(declare-fun e!2182905 () Bool)

(declare-fun tp!1087762 () Bool)

(assert (=> b!3526456 (= e!2182905 (and (inv!50621 (c!607905 (dynLambda!15947 (toChars!7599 (transformation!5484 (rule!8140 (h!42801 (t!282520 tokens!494))))) (value!176754 (h!42801 (t!282520 tokens!494)))))) tp!1087762))))

(declare-fun result!241716 () Bool)

(assert (=> tb!197313 (= result!241716 (and (inv!50622 (dynLambda!15947 (toChars!7599 (transformation!5484 (rule!8140 (h!42801 (t!282520 tokens!494))))) (value!176754 (h!42801 (t!282520 tokens!494))))) e!2182905))))

(assert (= tb!197313 b!3526456))

(declare-fun m!3980361 () Bool)

(assert (=> b!3526456 m!3980361))

(declare-fun m!3980363 () Bool)

(assert (=> tb!197313 m!3980363))

(assert (=> d!1029359 t!282533))

(declare-fun b_and!251437 () Bool)

(assert (= b_and!251431 (and (=> t!282533 result!241716) b_and!251437)))

(declare-fun tb!197315 () Bool)

(declare-fun t!282535 () Bool)

(assert (=> (and b!3526310 (= (toChars!7599 (transformation!5484 (h!42800 rules!2135))) (toChars!7599 (transformation!5484 (rule!8140 (h!42801 (t!282520 tokens!494)))))) t!282535) tb!197315))

(declare-fun result!241718 () Bool)

(assert (= result!241718 result!241716))

(assert (=> d!1029359 t!282535))

(declare-fun b_and!251439 () Bool)

(assert (= b_and!251433 (and (=> t!282535 result!241718) b_and!251439)))

(declare-fun t!282537 () Bool)

(declare-fun tb!197317 () Bool)

(assert (=> (and b!3526333 (= (toChars!7599 (transformation!5484 (rule!8140 separatorToken!241))) (toChars!7599 (transformation!5484 (rule!8140 (h!42801 (t!282520 tokens!494)))))) t!282537) tb!197317))

(declare-fun result!241720 () Bool)

(assert (= result!241720 result!241716))

(assert (=> d!1029359 t!282537))

(declare-fun b_and!251441 () Bool)

(assert (= b_and!251435 (and (=> t!282537 result!241720) b_and!251441)))

(declare-fun m!3980365 () Bool)

(assert (=> d!1029359 m!3980365))

(declare-fun m!3980367 () Bool)

(assert (=> d!1029359 m!3980367))

(assert (=> b!3526314 d!1029359))

(declare-fun b!3526457 () Bool)

(declare-fun e!2182912 () Bool)

(declare-fun e!2182910 () Bool)

(assert (=> b!3526457 (= e!2182912 e!2182910)))

(declare-fun c!607932 () Bool)

(assert (=> b!3526457 (= c!607932 ((_ is EmptyLang!10243) (regex!5484 lt!1205024)))))

(declare-fun b!3526458 () Bool)

(declare-fun e!2182906 () Bool)

(assert (=> b!3526458 (= e!2182906 (nullable!3521 (regex!5484 lt!1205024)))))

(declare-fun b!3526459 () Bool)

(declare-fun e!2182911 () Bool)

(assert (=> b!3526459 (= e!2182911 (not (= (head!7397 lt!1205000) (c!607904 (regex!5484 lt!1205024)))))))

(declare-fun b!3526460 () Bool)

(declare-fun lt!1205064 () Bool)

(assert (=> b!3526460 (= e!2182910 (not lt!1205064))))

(declare-fun bm!254735 () Bool)

(declare-fun call!254740 () Bool)

(assert (=> bm!254735 (= call!254740 (isEmpty!21858 lt!1205000))))

(declare-fun b!3526461 () Bool)

(assert (=> b!3526461 (= e!2182906 (matchR!4827 (derivativeStep!3074 (regex!5484 lt!1205024) (head!7397 lt!1205000)) (tail!5498 lt!1205000)))))

(declare-fun d!1029361 () Bool)

(assert (=> d!1029361 e!2182912))

(declare-fun c!607934 () Bool)

(assert (=> d!1029361 (= c!607934 ((_ is EmptyExpr!10243) (regex!5484 lt!1205024)))))

(assert (=> d!1029361 (= lt!1205064 e!2182906)))

(declare-fun c!607933 () Bool)

(assert (=> d!1029361 (= c!607933 (isEmpty!21858 lt!1205000))))

(assert (=> d!1029361 (validRegex!4677 (regex!5484 lt!1205024))))

(assert (=> d!1029361 (= (matchR!4827 (regex!5484 lt!1205024) lt!1205000) lt!1205064)))

(declare-fun b!3526462 () Bool)

(declare-fun res!1422560 () Bool)

(declare-fun e!2182908 () Bool)

(assert (=> b!3526462 (=> (not res!1422560) (not e!2182908))))

(assert (=> b!3526462 (= res!1422560 (not call!254740))))

(declare-fun b!3526463 () Bool)

(declare-fun res!1422559 () Bool)

(assert (=> b!3526463 (=> res!1422559 e!2182911)))

(assert (=> b!3526463 (= res!1422559 (not (isEmpty!21858 (tail!5498 lt!1205000))))))

(declare-fun b!3526464 () Bool)

(assert (=> b!3526464 (= e!2182912 (= lt!1205064 call!254740))))

(declare-fun b!3526465 () Bool)

(assert (=> b!3526465 (= e!2182908 (= (head!7397 lt!1205000) (c!607904 (regex!5484 lt!1205024))))))

(declare-fun b!3526466 () Bool)

(declare-fun res!1422553 () Bool)

(declare-fun e!2182909 () Bool)

(assert (=> b!3526466 (=> res!1422553 e!2182909)))

(assert (=> b!3526466 (= res!1422553 (not ((_ is ElementMatch!10243) (regex!5484 lt!1205024))))))

(assert (=> b!3526466 (= e!2182910 e!2182909)))

(declare-fun b!3526467 () Bool)

(declare-fun e!2182907 () Bool)

(assert (=> b!3526467 (= e!2182907 e!2182911)))

(declare-fun res!1422555 () Bool)

(assert (=> b!3526467 (=> res!1422555 e!2182911)))

(assert (=> b!3526467 (= res!1422555 call!254740)))

(declare-fun b!3526468 () Bool)

(declare-fun res!1422556 () Bool)

(assert (=> b!3526468 (=> (not res!1422556) (not e!2182908))))

(assert (=> b!3526468 (= res!1422556 (isEmpty!21858 (tail!5498 lt!1205000)))))

(declare-fun b!3526469 () Bool)

(declare-fun res!1422554 () Bool)

(assert (=> b!3526469 (=> res!1422554 e!2182909)))

(assert (=> b!3526469 (= res!1422554 e!2182908)))

(declare-fun res!1422557 () Bool)

(assert (=> b!3526469 (=> (not res!1422557) (not e!2182908))))

(assert (=> b!3526469 (= res!1422557 lt!1205064)))

(declare-fun b!3526470 () Bool)

(assert (=> b!3526470 (= e!2182909 e!2182907)))

(declare-fun res!1422558 () Bool)

(assert (=> b!3526470 (=> (not res!1422558) (not e!2182907))))

(assert (=> b!3526470 (= res!1422558 (not lt!1205064))))

(assert (= (and d!1029361 c!607933) b!3526458))

(assert (= (and d!1029361 (not c!607933)) b!3526461))

(assert (= (and d!1029361 c!607934) b!3526464))

(assert (= (and d!1029361 (not c!607934)) b!3526457))

(assert (= (and b!3526457 c!607932) b!3526460))

(assert (= (and b!3526457 (not c!607932)) b!3526466))

(assert (= (and b!3526466 (not res!1422553)) b!3526469))

(assert (= (and b!3526469 res!1422557) b!3526462))

(assert (= (and b!3526462 res!1422560) b!3526468))

(assert (= (and b!3526468 res!1422556) b!3526465))

(assert (= (and b!3526469 (not res!1422554)) b!3526470))

(assert (= (and b!3526470 res!1422558) b!3526467))

(assert (= (and b!3526467 (not res!1422555)) b!3526463))

(assert (= (and b!3526463 (not res!1422559)) b!3526459))

(assert (= (or b!3526464 b!3526462 b!3526467) bm!254735))

(declare-fun m!3980369 () Bool)

(assert (=> b!3526458 m!3980369))

(declare-fun m!3980371 () Bool)

(assert (=> b!3526459 m!3980371))

(assert (=> b!3526461 m!3980371))

(assert (=> b!3526461 m!3980371))

(declare-fun m!3980373 () Bool)

(assert (=> b!3526461 m!3980373))

(declare-fun m!3980375 () Bool)

(assert (=> b!3526461 m!3980375))

(assert (=> b!3526461 m!3980373))

(assert (=> b!3526461 m!3980375))

(declare-fun m!3980377 () Bool)

(assert (=> b!3526461 m!3980377))

(assert (=> b!3526468 m!3980375))

(assert (=> b!3526468 m!3980375))

(declare-fun m!3980379 () Bool)

(assert (=> b!3526468 m!3980379))

(declare-fun m!3980381 () Bool)

(assert (=> bm!254735 m!3980381))

(assert (=> b!3526463 m!3980375))

(assert (=> b!3526463 m!3980375))

(assert (=> b!3526463 m!3980379))

(assert (=> b!3526465 m!3980371))

(assert (=> d!1029361 m!3980381))

(declare-fun m!3980383 () Bool)

(assert (=> d!1029361 m!3980383))

(assert (=> b!3526335 d!1029361))

(declare-fun d!1029363 () Bool)

(assert (=> d!1029363 (= (get!12005 lt!1205011) (v!37136 lt!1205011))))

(assert (=> b!3526335 d!1029363))

(declare-fun d!1029365 () Bool)

(assert (=> d!1029365 (= (inv!50616 (tag!6126 (rule!8140 separatorToken!241))) (= (mod (str.len (value!176753 (tag!6126 (rule!8140 separatorToken!241)))) 2) 0))))

(assert (=> b!3526292 d!1029365))

(declare-fun d!1029367 () Bool)

(declare-fun res!1422563 () Bool)

(declare-fun e!2182915 () Bool)

(assert (=> d!1029367 (=> (not res!1422563) (not e!2182915))))

(declare-fun semiInverseModEq!2317 (Int Int) Bool)

(assert (=> d!1029367 (= res!1422563 (semiInverseModEq!2317 (toChars!7599 (transformation!5484 (rule!8140 separatorToken!241))) (toValue!7740 (transformation!5484 (rule!8140 separatorToken!241)))))))

(assert (=> d!1029367 (= (inv!50619 (transformation!5484 (rule!8140 separatorToken!241))) e!2182915)))

(declare-fun b!3526473 () Bool)

(declare-fun equivClasses!2216 (Int Int) Bool)

(assert (=> b!3526473 (= e!2182915 (equivClasses!2216 (toChars!7599 (transformation!5484 (rule!8140 separatorToken!241))) (toValue!7740 (transformation!5484 (rule!8140 separatorToken!241)))))))

(assert (= (and d!1029367 res!1422563) b!3526473))

(declare-fun m!3980385 () Bool)

(assert (=> d!1029367 m!3980385))

(declare-fun m!3980387 () Bool)

(assert (=> b!3526473 m!3980387))

(assert (=> b!3526292 d!1029367))

(declare-fun d!1029369 () Bool)

(declare-fun lt!1205067 () Bool)

(declare-fun content!5275 (List!37504) (InoxSet Rule!10768))

(assert (=> d!1029369 (= lt!1205067 (select (content!5275 rules!2135) (rule!8140 (h!42801 (t!282520 tokens!494)))))))

(declare-fun e!2182920 () Bool)

(assert (=> d!1029369 (= lt!1205067 e!2182920)))

(declare-fun res!1422569 () Bool)

(assert (=> d!1029369 (=> (not res!1422569) (not e!2182920))))

(assert (=> d!1029369 (= res!1422569 ((_ is Cons!37380) rules!2135))))

(assert (=> d!1029369 (= (contains!7023 rules!2135 (rule!8140 (h!42801 (t!282520 tokens!494)))) lt!1205067)))

(declare-fun b!3526478 () Bool)

(declare-fun e!2182921 () Bool)

(assert (=> b!3526478 (= e!2182920 e!2182921)))

(declare-fun res!1422568 () Bool)

(assert (=> b!3526478 (=> res!1422568 e!2182921)))

(assert (=> b!3526478 (= res!1422568 (= (h!42800 rules!2135) (rule!8140 (h!42801 (t!282520 tokens!494)))))))

(declare-fun b!3526479 () Bool)

(assert (=> b!3526479 (= e!2182921 (contains!7023 (t!282519 rules!2135) (rule!8140 (h!42801 (t!282520 tokens!494)))))))

(assert (= (and d!1029369 res!1422569) b!3526478))

(assert (= (and b!3526478 (not res!1422568)) b!3526479))

(declare-fun m!3980389 () Bool)

(assert (=> d!1029369 m!3980389))

(declare-fun m!3980391 () Bool)

(assert (=> d!1029369 m!3980391))

(declare-fun m!3980393 () Bool)

(assert (=> b!3526479 m!3980393))

(assert (=> b!3526313 d!1029369))

(declare-fun d!1029371 () Bool)

(assert (=> d!1029371 (= (isEmpty!21855 rules!2135) ((_ is Nil!37380) rules!2135))))

(assert (=> b!3526334 d!1029371))

(declare-fun d!1029373 () Bool)

(declare-fun lt!1205070 () Token!10334)

(declare-fun apply!8926 (List!37505 Int) Token!10334)

(assert (=> d!1029373 (= lt!1205070 (apply!8926 (list!13681 (_1!21748 lt!1205023)) 0))))

(declare-fun apply!8927 (Conc!11344 Int) Token!10334)

(assert (=> d!1029373 (= lt!1205070 (apply!8927 (c!607906 (_1!21748 lt!1205023)) 0))))

(declare-fun e!2182924 () Bool)

(assert (=> d!1029373 e!2182924))

(declare-fun res!1422572 () Bool)

(assert (=> d!1029373 (=> (not res!1422572) (not e!2182924))))

(assert (=> d!1029373 (= res!1422572 (<= 0 0))))

(assert (=> d!1029373 (= (apply!8922 (_1!21748 lt!1205023) 0) lt!1205070)))

(declare-fun b!3526482 () Bool)

(assert (=> b!3526482 (= e!2182924 (< 0 (size!28451 (_1!21748 lt!1205023))))))

(assert (= (and d!1029373 res!1422572) b!3526482))

(declare-fun m!3980395 () Bool)

(assert (=> d!1029373 m!3980395))

(assert (=> d!1029373 m!3980395))

(declare-fun m!3980397 () Bool)

(assert (=> d!1029373 m!3980397))

(declare-fun m!3980399 () Bool)

(assert (=> d!1029373 m!3980399))

(assert (=> b!3526482 m!3980101))

(assert (=> b!3526317 d!1029373))

(declare-fun d!1029375 () Bool)

(assert (=> d!1029375 (not (matchR!4827 (regex!5484 (rule!8140 (h!42801 (t!282520 tokens!494)))) lt!1205041))))

(declare-fun lt!1205073 () Unit!53068)

(declare-fun choose!20480 (Regex!10243 List!37503 C!20672) Unit!53068)

(assert (=> d!1029375 (= lt!1205073 (choose!20480 (regex!5484 (rule!8140 (h!42801 (t!282520 tokens!494)))) lt!1205041 lt!1205036))))

(assert (=> d!1029375 (validRegex!4677 (regex!5484 (rule!8140 (h!42801 (t!282520 tokens!494)))))))

(assert (=> d!1029375 (= (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!542 (regex!5484 (rule!8140 (h!42801 (t!282520 tokens!494)))) lt!1205041 lt!1205036) lt!1205073)))

(declare-fun bs!565711 () Bool)

(assert (= bs!565711 d!1029375))

(assert (=> bs!565711 m!3980181))

(declare-fun m!3980401 () Bool)

(assert (=> bs!565711 m!3980401))

(declare-fun m!3980403 () Bool)

(assert (=> bs!565711 m!3980403))

(assert (=> b!3526295 d!1029375))

(declare-fun b!3526483 () Bool)

(declare-fun e!2182931 () Bool)

(declare-fun e!2182929 () Bool)

(assert (=> b!3526483 (= e!2182931 e!2182929)))

(declare-fun c!607936 () Bool)

(assert (=> b!3526483 (= c!607936 ((_ is EmptyLang!10243) (regex!5484 (rule!8140 (h!42801 (t!282520 tokens!494))))))))

(declare-fun b!3526484 () Bool)

(declare-fun e!2182925 () Bool)

(assert (=> b!3526484 (= e!2182925 (nullable!3521 (regex!5484 (rule!8140 (h!42801 (t!282520 tokens!494))))))))

(declare-fun b!3526485 () Bool)

(declare-fun e!2182930 () Bool)

(assert (=> b!3526485 (= e!2182930 (not (= (head!7397 lt!1205041) (c!607904 (regex!5484 (rule!8140 (h!42801 (t!282520 tokens!494))))))))))

(declare-fun b!3526486 () Bool)

(declare-fun lt!1205074 () Bool)

(assert (=> b!3526486 (= e!2182929 (not lt!1205074))))

(declare-fun bm!254736 () Bool)

(declare-fun call!254741 () Bool)

(assert (=> bm!254736 (= call!254741 (isEmpty!21858 lt!1205041))))

(declare-fun b!3526487 () Bool)

(assert (=> b!3526487 (= e!2182925 (matchR!4827 (derivativeStep!3074 (regex!5484 (rule!8140 (h!42801 (t!282520 tokens!494)))) (head!7397 lt!1205041)) (tail!5498 lt!1205041)))))

(declare-fun d!1029377 () Bool)

(assert (=> d!1029377 e!2182931))

(declare-fun c!607938 () Bool)

(assert (=> d!1029377 (= c!607938 ((_ is EmptyExpr!10243) (regex!5484 (rule!8140 (h!42801 (t!282520 tokens!494))))))))

(assert (=> d!1029377 (= lt!1205074 e!2182925)))

(declare-fun c!607937 () Bool)

(assert (=> d!1029377 (= c!607937 (isEmpty!21858 lt!1205041))))

(assert (=> d!1029377 (validRegex!4677 (regex!5484 (rule!8140 (h!42801 (t!282520 tokens!494)))))))

(assert (=> d!1029377 (= (matchR!4827 (regex!5484 (rule!8140 (h!42801 (t!282520 tokens!494)))) lt!1205041) lt!1205074)))

(declare-fun b!3526488 () Bool)

(declare-fun res!1422580 () Bool)

(declare-fun e!2182927 () Bool)

(assert (=> b!3526488 (=> (not res!1422580) (not e!2182927))))

(assert (=> b!3526488 (= res!1422580 (not call!254741))))

(declare-fun b!3526489 () Bool)

(declare-fun res!1422579 () Bool)

(assert (=> b!3526489 (=> res!1422579 e!2182930)))

(assert (=> b!3526489 (= res!1422579 (not (isEmpty!21858 (tail!5498 lt!1205041))))))

(declare-fun b!3526490 () Bool)

(assert (=> b!3526490 (= e!2182931 (= lt!1205074 call!254741))))

(declare-fun b!3526491 () Bool)

(assert (=> b!3526491 (= e!2182927 (= (head!7397 lt!1205041) (c!607904 (regex!5484 (rule!8140 (h!42801 (t!282520 tokens!494)))))))))

(declare-fun b!3526492 () Bool)

(declare-fun res!1422573 () Bool)

(declare-fun e!2182928 () Bool)

(assert (=> b!3526492 (=> res!1422573 e!2182928)))

(assert (=> b!3526492 (= res!1422573 (not ((_ is ElementMatch!10243) (regex!5484 (rule!8140 (h!42801 (t!282520 tokens!494)))))))))

(assert (=> b!3526492 (= e!2182929 e!2182928)))

(declare-fun b!3526493 () Bool)

(declare-fun e!2182926 () Bool)

(assert (=> b!3526493 (= e!2182926 e!2182930)))

(declare-fun res!1422575 () Bool)

(assert (=> b!3526493 (=> res!1422575 e!2182930)))

(assert (=> b!3526493 (= res!1422575 call!254741)))

(declare-fun b!3526494 () Bool)

(declare-fun res!1422576 () Bool)

(assert (=> b!3526494 (=> (not res!1422576) (not e!2182927))))

(assert (=> b!3526494 (= res!1422576 (isEmpty!21858 (tail!5498 lt!1205041)))))

(declare-fun b!3526495 () Bool)

(declare-fun res!1422574 () Bool)

(assert (=> b!3526495 (=> res!1422574 e!2182928)))

(assert (=> b!3526495 (= res!1422574 e!2182927)))

(declare-fun res!1422577 () Bool)

(assert (=> b!3526495 (=> (not res!1422577) (not e!2182927))))

(assert (=> b!3526495 (= res!1422577 lt!1205074)))

(declare-fun b!3526496 () Bool)

(assert (=> b!3526496 (= e!2182928 e!2182926)))

(declare-fun res!1422578 () Bool)

(assert (=> b!3526496 (=> (not res!1422578) (not e!2182926))))

(assert (=> b!3526496 (= res!1422578 (not lt!1205074))))

(assert (= (and d!1029377 c!607937) b!3526484))

(assert (= (and d!1029377 (not c!607937)) b!3526487))

(assert (= (and d!1029377 c!607938) b!3526490))

(assert (= (and d!1029377 (not c!607938)) b!3526483))

(assert (= (and b!3526483 c!607936) b!3526486))

(assert (= (and b!3526483 (not c!607936)) b!3526492))

(assert (= (and b!3526492 (not res!1422573)) b!3526495))

(assert (= (and b!3526495 res!1422577) b!3526488))

(assert (= (and b!3526488 res!1422580) b!3526494))

(assert (= (and b!3526494 res!1422576) b!3526491))

(assert (= (and b!3526495 (not res!1422574)) b!3526496))

(assert (= (and b!3526496 res!1422578) b!3526493))

(assert (= (and b!3526493 (not res!1422575)) b!3526489))

(assert (= (and b!3526489 (not res!1422579)) b!3526485))

(assert (= (or b!3526490 b!3526488 b!3526493) bm!254736))

(declare-fun m!3980405 () Bool)

(assert (=> b!3526484 m!3980405))

(assert (=> b!3526485 m!3980087))

(assert (=> b!3526487 m!3980087))

(assert (=> b!3526487 m!3980087))

(declare-fun m!3980407 () Bool)

(assert (=> b!3526487 m!3980407))

(declare-fun m!3980409 () Bool)

(assert (=> b!3526487 m!3980409))

(assert (=> b!3526487 m!3980407))

(assert (=> b!3526487 m!3980409))

(declare-fun m!3980411 () Bool)

(assert (=> b!3526487 m!3980411))

(assert (=> b!3526494 m!3980409))

(assert (=> b!3526494 m!3980409))

(declare-fun m!3980413 () Bool)

(assert (=> b!3526494 m!3980413))

(declare-fun m!3980415 () Bool)

(assert (=> bm!254736 m!3980415))

(assert (=> b!3526489 m!3980409))

(assert (=> b!3526489 m!3980409))

(assert (=> b!3526489 m!3980413))

(assert (=> b!3526491 m!3980087))

(assert (=> d!1029377 m!3980415))

(assert (=> d!1029377 m!3980403))

(assert (=> b!3526295 d!1029377))

(declare-fun d!1029379 () Bool)

(declare-fun res!1422585 () Bool)

(declare-fun e!2182936 () Bool)

(assert (=> d!1029379 (=> res!1422585 e!2182936)))

(assert (=> d!1029379 (= res!1422585 (not ((_ is Cons!37380) rules!2135)))))

(assert (=> d!1029379 (= (sepAndNonSepRulesDisjointChars!1678 rules!2135 rules!2135) e!2182936)))

(declare-fun b!3526501 () Bool)

(declare-fun e!2182937 () Bool)

(assert (=> b!3526501 (= e!2182936 e!2182937)))

(declare-fun res!1422586 () Bool)

(assert (=> b!3526501 (=> (not res!1422586) (not e!2182937))))

(declare-fun ruleDisjointCharsFromAllFromOtherType!753 (Rule!10768 List!37504) Bool)

(assert (=> b!3526501 (= res!1422586 (ruleDisjointCharsFromAllFromOtherType!753 (h!42800 rules!2135) rules!2135))))

(declare-fun b!3526502 () Bool)

(assert (=> b!3526502 (= e!2182937 (sepAndNonSepRulesDisjointChars!1678 rules!2135 (t!282519 rules!2135)))))

(assert (= (and d!1029379 (not res!1422585)) b!3526501))

(assert (= (and b!3526501 res!1422586) b!3526502))

(declare-fun m!3980417 () Bool)

(assert (=> b!3526501 m!3980417))

(declare-fun m!3980419 () Bool)

(assert (=> b!3526502 m!3980419))

(assert (=> b!3526330 d!1029379))

(declare-fun d!1029381 () Bool)

(declare-fun lt!1205077 () Bool)

(declare-fun isEmpty!21861 (List!37505) Bool)

(assert (=> d!1029381 (= lt!1205077 (isEmpty!21861 (list!13681 (_1!21748 (lex!2399 thiss!18206 rules!2135 lt!1205005)))))))

(declare-fun isEmpty!21862 (Conc!11344) Bool)

(assert (=> d!1029381 (= lt!1205077 (isEmpty!21862 (c!607906 (_1!21748 (lex!2399 thiss!18206 rules!2135 lt!1205005)))))))

(assert (=> d!1029381 (= (isEmpty!21853 (_1!21748 (lex!2399 thiss!18206 rules!2135 lt!1205005))) lt!1205077)))

(declare-fun bs!565712 () Bool)

(assert (= bs!565712 d!1029381))

(declare-fun m!3980421 () Bool)

(assert (=> bs!565712 m!3980421))

(assert (=> bs!565712 m!3980421))

(declare-fun m!3980423 () Bool)

(assert (=> bs!565712 m!3980423))

(declare-fun m!3980425 () Bool)

(assert (=> bs!565712 m!3980425))

(assert (=> b!3526308 d!1029381))

(declare-fun b!3526651 () Bool)

(declare-fun res!1422683 () Bool)

(declare-fun e!2183028 () Bool)

(assert (=> b!3526651 (=> (not res!1422683) (not e!2183028))))

(declare-fun lt!1205118 () tuple2!37228)

(declare-datatypes ((tuple2!37234 0))(
  ( (tuple2!37235 (_1!21751 List!37505) (_2!21751 List!37503)) )
))
(declare-fun lexList!1482 (LexerInterface!5073 List!37504 List!37503) tuple2!37234)

(assert (=> b!3526651 (= res!1422683 (= (list!13681 (_1!21748 lt!1205118)) (_1!21751 (lexList!1482 thiss!18206 rules!2135 (list!13679 lt!1205005)))))))

(declare-fun b!3526652 () Bool)

(declare-fun e!2183029 () Bool)

(declare-fun e!2183027 () Bool)

(assert (=> b!3526652 (= e!2183029 e!2183027)))

(declare-fun res!1422681 () Bool)

(declare-fun size!28453 (BalanceConc!22300) Int)

(assert (=> b!3526652 (= res!1422681 (< (size!28453 (_2!21748 lt!1205118)) (size!28453 lt!1205005)))))

(assert (=> b!3526652 (=> (not res!1422681) (not e!2183027))))

(declare-fun b!3526654 () Bool)

(assert (=> b!3526654 (= e!2183028 (= (list!13679 (_2!21748 lt!1205118)) (_2!21751 (lexList!1482 thiss!18206 rules!2135 (list!13679 lt!1205005)))))))

(declare-fun b!3526655 () Bool)

(assert (=> b!3526655 (= e!2183029 (= (_2!21748 lt!1205118) lt!1205005))))

(declare-fun d!1029383 () Bool)

(assert (=> d!1029383 e!2183028))

(declare-fun res!1422682 () Bool)

(assert (=> d!1029383 (=> (not res!1422682) (not e!2183028))))

(assert (=> d!1029383 (= res!1422682 e!2183029)))

(declare-fun c!607964 () Bool)

(assert (=> d!1029383 (= c!607964 (> (size!28451 (_1!21748 lt!1205118)) 0))))

(declare-fun lexTailRecV2!1089 (LexerInterface!5073 List!37504 BalanceConc!22300 BalanceConc!22300 BalanceConc!22300 BalanceConc!22302) tuple2!37228)

(assert (=> d!1029383 (= lt!1205118 (lexTailRecV2!1089 thiss!18206 rules!2135 lt!1205005 (BalanceConc!22301 Empty!11343) lt!1205005 (BalanceConc!22303 Empty!11344)))))

(assert (=> d!1029383 (= (lex!2399 thiss!18206 rules!2135 lt!1205005) lt!1205118)))

(declare-fun b!3526653 () Bool)

(assert (=> b!3526653 (= e!2183027 (not (isEmpty!21853 (_1!21748 lt!1205118))))))

(assert (= (and d!1029383 c!607964) b!3526652))

(assert (= (and d!1029383 (not c!607964)) b!3526655))

(assert (= (and b!3526652 res!1422681) b!3526653))

(assert (= (and d!1029383 res!1422682) b!3526651))

(assert (= (and b!3526651 res!1422683) b!3526654))

(declare-fun m!3980593 () Bool)

(assert (=> b!3526652 m!3980593))

(declare-fun m!3980595 () Bool)

(assert (=> b!3526652 m!3980595))

(declare-fun m!3980597 () Bool)

(assert (=> b!3526654 m!3980597))

(declare-fun m!3980599 () Bool)

(assert (=> b!3526654 m!3980599))

(assert (=> b!3526654 m!3980599))

(declare-fun m!3980601 () Bool)

(assert (=> b!3526654 m!3980601))

(declare-fun m!3980603 () Bool)

(assert (=> d!1029383 m!3980603))

(declare-fun m!3980605 () Bool)

(assert (=> d!1029383 m!3980605))

(declare-fun m!3980607 () Bool)

(assert (=> b!3526651 m!3980607))

(assert (=> b!3526651 m!3980599))

(assert (=> b!3526651 m!3980599))

(assert (=> b!3526651 m!3980601))

(declare-fun m!3980609 () Bool)

(assert (=> b!3526653 m!3980609))

(assert (=> b!3526308 d!1029383))

(declare-fun d!1029435 () Bool)

(declare-fun fromListB!1849 (List!37503) BalanceConc!22300)

(assert (=> d!1029435 (= (seqFromList!4021 lt!1205000) (fromListB!1849 lt!1205000))))

(declare-fun bs!565718 () Bool)

(assert (= bs!565718 d!1029435))

(declare-fun m!3980611 () Bool)

(assert (=> bs!565718 m!3980611))

(assert (=> b!3526308 d!1029435))

(declare-fun d!1029437 () Bool)

(declare-fun e!2183031 () Bool)

(assert (=> d!1029437 e!2183031))

(declare-fun res!1422684 () Bool)

(assert (=> d!1029437 (=> (not res!1422684) (not e!2183031))))

(declare-fun lt!1205119 () List!37503)

(assert (=> d!1029437 (= res!1422684 (= (content!5273 lt!1205119) ((_ map or) (content!5273 lt!1205000) (content!5273 lt!1205008))))))

(declare-fun e!2183030 () List!37503)

(assert (=> d!1029437 (= lt!1205119 e!2183030)))

(declare-fun c!607965 () Bool)

(assert (=> d!1029437 (= c!607965 ((_ is Nil!37379) lt!1205000))))

(assert (=> d!1029437 (= (++!9269 lt!1205000 lt!1205008) lt!1205119)))

(declare-fun b!3526656 () Bool)

(assert (=> b!3526656 (= e!2183030 lt!1205008)))

(declare-fun b!3526658 () Bool)

(declare-fun res!1422685 () Bool)

(assert (=> b!3526658 (=> (not res!1422685) (not e!2183031))))

(assert (=> b!3526658 (= res!1422685 (= (size!28450 lt!1205119) (+ (size!28450 lt!1205000) (size!28450 lt!1205008))))))

(declare-fun b!3526657 () Bool)

(assert (=> b!3526657 (= e!2183030 (Cons!37379 (h!42799 lt!1205000) (++!9269 (t!282518 lt!1205000) lt!1205008)))))

(declare-fun b!3526659 () Bool)

(assert (=> b!3526659 (= e!2183031 (or (not (= lt!1205008 Nil!37379)) (= lt!1205119 lt!1205000)))))

(assert (= (and d!1029437 c!607965) b!3526656))

(assert (= (and d!1029437 (not c!607965)) b!3526657))

(assert (= (and d!1029437 res!1422684) b!3526658))

(assert (= (and b!3526658 res!1422685) b!3526659))

(declare-fun m!3980613 () Bool)

(assert (=> d!1029437 m!3980613))

(declare-fun m!3980615 () Bool)

(assert (=> d!1029437 m!3980615))

(declare-fun m!3980617 () Bool)

(assert (=> d!1029437 m!3980617))

(declare-fun m!3980619 () Bool)

(assert (=> b!3526658 m!3980619))

(assert (=> b!3526658 m!3980093))

(declare-fun m!3980621 () Bool)

(assert (=> b!3526658 m!3980621))

(declare-fun m!3980623 () Bool)

(assert (=> b!3526657 m!3980623))

(assert (=> b!3526329 d!1029437))

(declare-fun d!1029439 () Bool)

(assert (=> d!1029439 (= (++!9269 (++!9269 lt!1205000 lt!1205031) lt!1205020) (++!9269 lt!1205000 (++!9269 lt!1205031 lt!1205020)))))

(declare-fun lt!1205122 () Unit!53068)

(declare-fun choose!20481 (List!37503 List!37503 List!37503) Unit!53068)

(assert (=> d!1029439 (= lt!1205122 (choose!20481 lt!1205000 lt!1205031 lt!1205020))))

(assert (=> d!1029439 (= (lemmaConcatAssociativity!2018 lt!1205000 lt!1205031 lt!1205020) lt!1205122)))

(declare-fun bs!565719 () Bool)

(assert (= bs!565719 d!1029439))

(assert (=> bs!565719 m!3980241))

(declare-fun m!3980625 () Bool)

(assert (=> bs!565719 m!3980625))

(assert (=> bs!565719 m!3980241))

(assert (=> bs!565719 m!3980243))

(assert (=> bs!565719 m!3980061))

(assert (=> bs!565719 m!3980061))

(declare-fun m!3980627 () Bool)

(assert (=> bs!565719 m!3980627))

(assert (=> b!3526329 d!1029439))

(declare-fun d!1029441 () Bool)

(declare-fun res!1422690 () Bool)

(declare-fun e!2183034 () Bool)

(assert (=> d!1029441 (=> (not res!1422690) (not e!2183034))))

(assert (=> d!1029441 (= res!1422690 (not (isEmpty!21858 (originalCharacters!6198 (h!42801 tokens!494)))))))

(assert (=> d!1029441 (= (inv!50620 (h!42801 tokens!494)) e!2183034)))

(declare-fun b!3526664 () Bool)

(declare-fun res!1422691 () Bool)

(assert (=> b!3526664 (=> (not res!1422691) (not e!2183034))))

(assert (=> b!3526664 (= res!1422691 (= (originalCharacters!6198 (h!42801 tokens!494)) (list!13679 (dynLambda!15947 (toChars!7599 (transformation!5484 (rule!8140 (h!42801 tokens!494)))) (value!176754 (h!42801 tokens!494))))))))

(declare-fun b!3526665 () Bool)

(assert (=> b!3526665 (= e!2183034 (= (size!28449 (h!42801 tokens!494)) (size!28450 (originalCharacters!6198 (h!42801 tokens!494)))))))

(assert (= (and d!1029441 res!1422690) b!3526664))

(assert (= (and b!3526664 res!1422691) b!3526665))

(declare-fun b_lambda!103091 () Bool)

(assert (=> (not b_lambda!103091) (not b!3526664)))

(declare-fun t!282552 () Bool)

(declare-fun tb!197331 () Bool)

(assert (=> (and b!3526316 (= (toChars!7599 (transformation!5484 (rule!8140 (h!42801 tokens!494)))) (toChars!7599 (transformation!5484 (rule!8140 (h!42801 tokens!494))))) t!282552) tb!197331))

(declare-fun b!3526666 () Bool)

(declare-fun e!2183035 () Bool)

(declare-fun tp!1087767 () Bool)

(assert (=> b!3526666 (= e!2183035 (and (inv!50621 (c!607905 (dynLambda!15947 (toChars!7599 (transformation!5484 (rule!8140 (h!42801 tokens!494)))) (value!176754 (h!42801 tokens!494))))) tp!1087767))))

(declare-fun result!241736 () Bool)

(assert (=> tb!197331 (= result!241736 (and (inv!50622 (dynLambda!15947 (toChars!7599 (transformation!5484 (rule!8140 (h!42801 tokens!494)))) (value!176754 (h!42801 tokens!494)))) e!2183035))))

(assert (= tb!197331 b!3526666))

(declare-fun m!3980629 () Bool)

(assert (=> b!3526666 m!3980629))

(declare-fun m!3980631 () Bool)

(assert (=> tb!197331 m!3980631))

(assert (=> b!3526664 t!282552))

(declare-fun b_and!251455 () Bool)

(assert (= b_and!251437 (and (=> t!282552 result!241736) b_and!251455)))

(declare-fun t!282554 () Bool)

(declare-fun tb!197333 () Bool)

(assert (=> (and b!3526310 (= (toChars!7599 (transformation!5484 (h!42800 rules!2135))) (toChars!7599 (transformation!5484 (rule!8140 (h!42801 tokens!494))))) t!282554) tb!197333))

(declare-fun result!241738 () Bool)

(assert (= result!241738 result!241736))

(assert (=> b!3526664 t!282554))

(declare-fun b_and!251457 () Bool)

(assert (= b_and!251439 (and (=> t!282554 result!241738) b_and!251457)))

(declare-fun t!282556 () Bool)

(declare-fun tb!197335 () Bool)

(assert (=> (and b!3526333 (= (toChars!7599 (transformation!5484 (rule!8140 separatorToken!241))) (toChars!7599 (transformation!5484 (rule!8140 (h!42801 tokens!494))))) t!282556) tb!197335))

(declare-fun result!241740 () Bool)

(assert (= result!241740 result!241736))

(assert (=> b!3526664 t!282556))

(declare-fun b_and!251459 () Bool)

(assert (= b_and!251441 (and (=> t!282556 result!241740) b_and!251459)))

(declare-fun m!3980633 () Bool)

(assert (=> d!1029441 m!3980633))

(declare-fun m!3980635 () Bool)

(assert (=> b!3526664 m!3980635))

(assert (=> b!3526664 m!3980635))

(declare-fun m!3980637 () Bool)

(assert (=> b!3526664 m!3980637))

(declare-fun m!3980639 () Bool)

(assert (=> b!3526665 m!3980639))

(assert (=> b!3526311 d!1029441))

(declare-fun d!1029443 () Bool)

(assert (=> d!1029443 (not (matchR!4827 (regex!5484 (rule!8140 separatorToken!241)) lt!1205031))))

(declare-fun lt!1205123 () Unit!53068)

(assert (=> d!1029443 (= lt!1205123 (choose!20480 (regex!5484 (rule!8140 separatorToken!241)) lt!1205031 lt!1205013))))

(assert (=> d!1029443 (validRegex!4677 (regex!5484 (rule!8140 separatorToken!241)))))

(assert (=> d!1029443 (= (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!542 (regex!5484 (rule!8140 separatorToken!241)) lt!1205031 lt!1205013) lt!1205123)))

(declare-fun bs!565720 () Bool)

(assert (= bs!565720 d!1029443))

(assert (=> bs!565720 m!3980157))

(declare-fun m!3980641 () Bool)

(assert (=> bs!565720 m!3980641))

(declare-fun m!3980643 () Bool)

(assert (=> bs!565720 m!3980643))

(assert (=> b!3526332 d!1029443))

(declare-fun b!3526667 () Bool)

(declare-fun e!2183042 () Bool)

(declare-fun e!2183040 () Bool)

(assert (=> b!3526667 (= e!2183042 e!2183040)))

(declare-fun c!607966 () Bool)

(assert (=> b!3526667 (= c!607966 ((_ is EmptyLang!10243) (regex!5484 (rule!8140 separatorToken!241))))))

(declare-fun b!3526668 () Bool)

(declare-fun e!2183036 () Bool)

(assert (=> b!3526668 (= e!2183036 (nullable!3521 (regex!5484 (rule!8140 separatorToken!241))))))

(declare-fun b!3526669 () Bool)

(declare-fun e!2183041 () Bool)

(assert (=> b!3526669 (= e!2183041 (not (= (head!7397 lt!1205031) (c!607904 (regex!5484 (rule!8140 separatorToken!241))))))))

(declare-fun b!3526670 () Bool)

(declare-fun lt!1205124 () Bool)

(assert (=> b!3526670 (= e!2183040 (not lt!1205124))))

(declare-fun bm!254742 () Bool)

(declare-fun call!254747 () Bool)

(assert (=> bm!254742 (= call!254747 (isEmpty!21858 lt!1205031))))

(declare-fun b!3526671 () Bool)

(assert (=> b!3526671 (= e!2183036 (matchR!4827 (derivativeStep!3074 (regex!5484 (rule!8140 separatorToken!241)) (head!7397 lt!1205031)) (tail!5498 lt!1205031)))))

(declare-fun d!1029445 () Bool)

(assert (=> d!1029445 e!2183042))

(declare-fun c!607968 () Bool)

(assert (=> d!1029445 (= c!607968 ((_ is EmptyExpr!10243) (regex!5484 (rule!8140 separatorToken!241))))))

(assert (=> d!1029445 (= lt!1205124 e!2183036)))

(declare-fun c!607967 () Bool)

(assert (=> d!1029445 (= c!607967 (isEmpty!21858 lt!1205031))))

(assert (=> d!1029445 (validRegex!4677 (regex!5484 (rule!8140 separatorToken!241)))))

(assert (=> d!1029445 (= (matchR!4827 (regex!5484 (rule!8140 separatorToken!241)) lt!1205031) lt!1205124)))

(declare-fun b!3526672 () Bool)

(declare-fun res!1422699 () Bool)

(declare-fun e!2183038 () Bool)

(assert (=> b!3526672 (=> (not res!1422699) (not e!2183038))))

(assert (=> b!3526672 (= res!1422699 (not call!254747))))

(declare-fun b!3526673 () Bool)

(declare-fun res!1422698 () Bool)

(assert (=> b!3526673 (=> res!1422698 e!2183041)))

(assert (=> b!3526673 (= res!1422698 (not (isEmpty!21858 (tail!5498 lt!1205031))))))

(declare-fun b!3526674 () Bool)

(assert (=> b!3526674 (= e!2183042 (= lt!1205124 call!254747))))

(declare-fun b!3526675 () Bool)

(assert (=> b!3526675 (= e!2183038 (= (head!7397 lt!1205031) (c!607904 (regex!5484 (rule!8140 separatorToken!241)))))))

(declare-fun b!3526676 () Bool)

(declare-fun res!1422692 () Bool)

(declare-fun e!2183039 () Bool)

(assert (=> b!3526676 (=> res!1422692 e!2183039)))

(assert (=> b!3526676 (= res!1422692 (not ((_ is ElementMatch!10243) (regex!5484 (rule!8140 separatorToken!241)))))))

(assert (=> b!3526676 (= e!2183040 e!2183039)))

(declare-fun b!3526677 () Bool)

(declare-fun e!2183037 () Bool)

(assert (=> b!3526677 (= e!2183037 e!2183041)))

(declare-fun res!1422694 () Bool)

(assert (=> b!3526677 (=> res!1422694 e!2183041)))

(assert (=> b!3526677 (= res!1422694 call!254747)))

(declare-fun b!3526678 () Bool)

(declare-fun res!1422695 () Bool)

(assert (=> b!3526678 (=> (not res!1422695) (not e!2183038))))

(assert (=> b!3526678 (= res!1422695 (isEmpty!21858 (tail!5498 lt!1205031)))))

(declare-fun b!3526679 () Bool)

(declare-fun res!1422693 () Bool)

(assert (=> b!3526679 (=> res!1422693 e!2183039)))

(assert (=> b!3526679 (= res!1422693 e!2183038)))

(declare-fun res!1422696 () Bool)

(assert (=> b!3526679 (=> (not res!1422696) (not e!2183038))))

(assert (=> b!3526679 (= res!1422696 lt!1205124)))

(declare-fun b!3526680 () Bool)

(assert (=> b!3526680 (= e!2183039 e!2183037)))

(declare-fun res!1422697 () Bool)

(assert (=> b!3526680 (=> (not res!1422697) (not e!2183037))))

(assert (=> b!3526680 (= res!1422697 (not lt!1205124))))

(assert (= (and d!1029445 c!607967) b!3526668))

(assert (= (and d!1029445 (not c!607967)) b!3526671))

(assert (= (and d!1029445 c!607968) b!3526674))

(assert (= (and d!1029445 (not c!607968)) b!3526667))

(assert (= (and b!3526667 c!607966) b!3526670))

(assert (= (and b!3526667 (not c!607966)) b!3526676))

(assert (= (and b!3526676 (not res!1422692)) b!3526679))

(assert (= (and b!3526679 res!1422696) b!3526672))

(assert (= (and b!3526672 res!1422699) b!3526678))

(assert (= (and b!3526678 res!1422695) b!3526675))

(assert (= (and b!3526679 (not res!1422693)) b!3526680))

(assert (= (and b!3526680 res!1422697) b!3526677))

(assert (= (and b!3526677 (not res!1422694)) b!3526673))

(assert (= (and b!3526673 (not res!1422698)) b!3526669))

(assert (= (or b!3526674 b!3526672 b!3526677) bm!254742))

(declare-fun m!3980645 () Bool)

(assert (=> b!3526668 m!3980645))

(assert (=> b!3526669 m!3980075))

(assert (=> b!3526671 m!3980075))

(assert (=> b!3526671 m!3980075))

(declare-fun m!3980647 () Bool)

(assert (=> b!3526671 m!3980647))

(assert (=> b!3526671 m!3980285))

(assert (=> b!3526671 m!3980647))

(assert (=> b!3526671 m!3980285))

(declare-fun m!3980649 () Bool)

(assert (=> b!3526671 m!3980649))

(assert (=> b!3526678 m!3980285))

(assert (=> b!3526678 m!3980285))

(assert (=> b!3526678 m!3980289))

(assert (=> bm!254742 m!3980291))

(assert (=> b!3526673 m!3980285))

(assert (=> b!3526673 m!3980285))

(assert (=> b!3526673 m!3980289))

(assert (=> b!3526675 m!3980075))

(assert (=> d!1029445 m!3980291))

(assert (=> d!1029445 m!3980643))

(assert (=> b!3526332 d!1029445))

(declare-fun d!1029447 () Bool)

(declare-fun dynLambda!15950 (Int Token!10334) Bool)

(assert (=> d!1029447 (dynLambda!15950 lambda!122888 (h!42801 (t!282520 tokens!494)))))

(declare-fun lt!1205127 () Unit!53068)

(declare-fun choose!20483 (List!37505 Int Token!10334) Unit!53068)

(assert (=> d!1029447 (= lt!1205127 (choose!20483 tokens!494 lambda!122888 (h!42801 (t!282520 tokens!494))))))

(declare-fun e!2183045 () Bool)

(assert (=> d!1029447 e!2183045))

(declare-fun res!1422702 () Bool)

(assert (=> d!1029447 (=> (not res!1422702) (not e!2183045))))

(assert (=> d!1029447 (= res!1422702 (forall!8045 tokens!494 lambda!122888))))

(assert (=> d!1029447 (= (forallContained!1431 tokens!494 lambda!122888 (h!42801 (t!282520 tokens!494))) lt!1205127)))

(declare-fun b!3526683 () Bool)

(declare-fun contains!7026 (List!37505 Token!10334) Bool)

(assert (=> b!3526683 (= e!2183045 (contains!7026 tokens!494 (h!42801 (t!282520 tokens!494))))))

(assert (= (and d!1029447 res!1422702) b!3526683))

(declare-fun b_lambda!103093 () Bool)

(assert (=> (not b_lambda!103093) (not d!1029447)))

(declare-fun m!3980651 () Bool)

(assert (=> d!1029447 m!3980651))

(declare-fun m!3980653 () Bool)

(assert (=> d!1029447 m!3980653))

(assert (=> d!1029447 m!3980197))

(declare-fun m!3980655 () Bool)

(assert (=> b!3526683 m!3980655))

(assert (=> b!3526304 d!1029447))

(declare-fun d!1029449 () Bool)

(assert (=> d!1029449 (dynLambda!15950 lambda!122888 (h!42801 tokens!494))))

(declare-fun lt!1205128 () Unit!53068)

(assert (=> d!1029449 (= lt!1205128 (choose!20483 tokens!494 lambda!122888 (h!42801 tokens!494)))))

(declare-fun e!2183046 () Bool)

(assert (=> d!1029449 e!2183046))

(declare-fun res!1422703 () Bool)

(assert (=> d!1029449 (=> (not res!1422703) (not e!2183046))))

(assert (=> d!1029449 (= res!1422703 (forall!8045 tokens!494 lambda!122888))))

(assert (=> d!1029449 (= (forallContained!1431 tokens!494 lambda!122888 (h!42801 tokens!494)) lt!1205128)))

(declare-fun b!3526684 () Bool)

(assert (=> b!3526684 (= e!2183046 (contains!7026 tokens!494 (h!42801 tokens!494)))))

(assert (= (and d!1029449 res!1422703) b!3526684))

(declare-fun b_lambda!103095 () Bool)

(assert (=> (not b_lambda!103095) (not d!1029449)))

(declare-fun m!3980657 () Bool)

(assert (=> d!1029449 m!3980657))

(declare-fun m!3980659 () Bool)

(assert (=> d!1029449 m!3980659))

(assert (=> d!1029449 m!3980197))

(declare-fun m!3980661 () Bool)

(assert (=> b!3526684 m!3980661))

(assert (=> b!3526304 d!1029449))

(declare-fun d!1029451 () Bool)

(declare-fun c!607974 () Bool)

(assert (=> d!1029451 (= c!607974 ((_ is IntegerValue!17142) (value!176754 separatorToken!241)))))

(declare-fun e!2183053 () Bool)

(assert (=> d!1029451 (= (inv!21 (value!176754 separatorToken!241)) e!2183053)))

(declare-fun b!3526695 () Bool)

(declare-fun e!2183055 () Bool)

(assert (=> b!3526695 (= e!2183053 e!2183055)))

(declare-fun c!607973 () Bool)

(assert (=> b!3526695 (= c!607973 ((_ is IntegerValue!17143) (value!176754 separatorToken!241)))))

(declare-fun b!3526696 () Bool)

(declare-fun res!1422706 () Bool)

(declare-fun e!2183054 () Bool)

(assert (=> b!3526696 (=> res!1422706 e!2183054)))

(assert (=> b!3526696 (= res!1422706 (not ((_ is IntegerValue!17144) (value!176754 separatorToken!241))))))

(assert (=> b!3526696 (= e!2183055 e!2183054)))

(declare-fun b!3526697 () Bool)

(declare-fun inv!17 (TokenValue!5714) Bool)

(assert (=> b!3526697 (= e!2183055 (inv!17 (value!176754 separatorToken!241)))))

(declare-fun b!3526698 () Bool)

(declare-fun inv!16 (TokenValue!5714) Bool)

(assert (=> b!3526698 (= e!2183053 (inv!16 (value!176754 separatorToken!241)))))

(declare-fun b!3526699 () Bool)

(declare-fun inv!15 (TokenValue!5714) Bool)

(assert (=> b!3526699 (= e!2183054 (inv!15 (value!176754 separatorToken!241)))))

(assert (= (and d!1029451 c!607974) b!3526698))

(assert (= (and d!1029451 (not c!607974)) b!3526695))

(assert (= (and b!3526695 c!607973) b!3526697))

(assert (= (and b!3526695 (not c!607973)) b!3526696))

(assert (= (and b!3526696 (not res!1422706)) b!3526699))

(declare-fun m!3980663 () Bool)

(assert (=> b!3526697 m!3980663))

(declare-fun m!3980665 () Bool)

(assert (=> b!3526698 m!3980665))

(declare-fun m!3980667 () Bool)

(assert (=> b!3526699 m!3980667))

(assert (=> b!3526325 d!1029451))

(declare-fun b!3526700 () Bool)

(declare-fun e!2183062 () Bool)

(declare-fun e!2183060 () Bool)

(assert (=> b!3526700 (= e!2183062 e!2183060)))

(declare-fun c!607975 () Bool)

(assert (=> b!3526700 (= c!607975 ((_ is EmptyLang!10243) (regex!5484 lt!1205025)))))

(declare-fun b!3526701 () Bool)

(declare-fun e!2183056 () Bool)

(assert (=> b!3526701 (= e!2183056 (nullable!3521 (regex!5484 lt!1205025)))))

(declare-fun b!3526702 () Bool)

(declare-fun e!2183061 () Bool)

(assert (=> b!3526702 (= e!2183061 (not (= (head!7397 lt!1205041) (c!607904 (regex!5484 lt!1205025)))))))

(declare-fun b!3526703 () Bool)

(declare-fun lt!1205129 () Bool)

(assert (=> b!3526703 (= e!2183060 (not lt!1205129))))

(declare-fun bm!254743 () Bool)

(declare-fun call!254748 () Bool)

(assert (=> bm!254743 (= call!254748 (isEmpty!21858 lt!1205041))))

(declare-fun b!3526704 () Bool)

(assert (=> b!3526704 (= e!2183056 (matchR!4827 (derivativeStep!3074 (regex!5484 lt!1205025) (head!7397 lt!1205041)) (tail!5498 lt!1205041)))))

(declare-fun d!1029453 () Bool)

(assert (=> d!1029453 e!2183062))

(declare-fun c!607977 () Bool)

(assert (=> d!1029453 (= c!607977 ((_ is EmptyExpr!10243) (regex!5484 lt!1205025)))))

(assert (=> d!1029453 (= lt!1205129 e!2183056)))

(declare-fun c!607976 () Bool)

(assert (=> d!1029453 (= c!607976 (isEmpty!21858 lt!1205041))))

(assert (=> d!1029453 (validRegex!4677 (regex!5484 lt!1205025))))

(assert (=> d!1029453 (= (matchR!4827 (regex!5484 lt!1205025) lt!1205041) lt!1205129)))

(declare-fun b!3526705 () Bool)

(declare-fun res!1422714 () Bool)

(declare-fun e!2183058 () Bool)

(assert (=> b!3526705 (=> (not res!1422714) (not e!2183058))))

(assert (=> b!3526705 (= res!1422714 (not call!254748))))

(declare-fun b!3526706 () Bool)

(declare-fun res!1422713 () Bool)

(assert (=> b!3526706 (=> res!1422713 e!2183061)))

(assert (=> b!3526706 (= res!1422713 (not (isEmpty!21858 (tail!5498 lt!1205041))))))

(declare-fun b!3526707 () Bool)

(assert (=> b!3526707 (= e!2183062 (= lt!1205129 call!254748))))

(declare-fun b!3526708 () Bool)

(assert (=> b!3526708 (= e!2183058 (= (head!7397 lt!1205041) (c!607904 (regex!5484 lt!1205025))))))

(declare-fun b!3526709 () Bool)

(declare-fun res!1422707 () Bool)

(declare-fun e!2183059 () Bool)

(assert (=> b!3526709 (=> res!1422707 e!2183059)))

(assert (=> b!3526709 (= res!1422707 (not ((_ is ElementMatch!10243) (regex!5484 lt!1205025))))))

(assert (=> b!3526709 (= e!2183060 e!2183059)))

(declare-fun b!3526710 () Bool)

(declare-fun e!2183057 () Bool)

(assert (=> b!3526710 (= e!2183057 e!2183061)))

(declare-fun res!1422709 () Bool)

(assert (=> b!3526710 (=> res!1422709 e!2183061)))

(assert (=> b!3526710 (= res!1422709 call!254748)))

(declare-fun b!3526711 () Bool)

(declare-fun res!1422710 () Bool)

(assert (=> b!3526711 (=> (not res!1422710) (not e!2183058))))

(assert (=> b!3526711 (= res!1422710 (isEmpty!21858 (tail!5498 lt!1205041)))))

(declare-fun b!3526712 () Bool)

(declare-fun res!1422708 () Bool)

(assert (=> b!3526712 (=> res!1422708 e!2183059)))

(assert (=> b!3526712 (= res!1422708 e!2183058)))

(declare-fun res!1422711 () Bool)

(assert (=> b!3526712 (=> (not res!1422711) (not e!2183058))))

(assert (=> b!3526712 (= res!1422711 lt!1205129)))

(declare-fun b!3526713 () Bool)

(assert (=> b!3526713 (= e!2183059 e!2183057)))

(declare-fun res!1422712 () Bool)

(assert (=> b!3526713 (=> (not res!1422712) (not e!2183057))))

(assert (=> b!3526713 (= res!1422712 (not lt!1205129))))

(assert (= (and d!1029453 c!607976) b!3526701))

(assert (= (and d!1029453 (not c!607976)) b!3526704))

(assert (= (and d!1029453 c!607977) b!3526707))

(assert (= (and d!1029453 (not c!607977)) b!3526700))

(assert (= (and b!3526700 c!607975) b!3526703))

(assert (= (and b!3526700 (not c!607975)) b!3526709))

(assert (= (and b!3526709 (not res!1422707)) b!3526712))

(assert (= (and b!3526712 res!1422711) b!3526705))

(assert (= (and b!3526705 res!1422714) b!3526711))

(assert (= (and b!3526711 res!1422710) b!3526708))

(assert (= (and b!3526712 (not res!1422708)) b!3526713))

(assert (= (and b!3526713 res!1422712) b!3526710))

(assert (= (and b!3526710 (not res!1422709)) b!3526706))

(assert (= (and b!3526706 (not res!1422713)) b!3526702))

(assert (= (or b!3526707 b!3526705 b!3526710) bm!254743))

(declare-fun m!3980669 () Bool)

(assert (=> b!3526701 m!3980669))

(assert (=> b!3526702 m!3980087))

(assert (=> b!3526704 m!3980087))

(assert (=> b!3526704 m!3980087))

(declare-fun m!3980671 () Bool)

(assert (=> b!3526704 m!3980671))

(assert (=> b!3526704 m!3980409))

(assert (=> b!3526704 m!3980671))

(assert (=> b!3526704 m!3980409))

(declare-fun m!3980673 () Bool)

(assert (=> b!3526704 m!3980673))

(assert (=> b!3526711 m!3980409))

(assert (=> b!3526711 m!3980409))

(assert (=> b!3526711 m!3980413))

(assert (=> bm!254743 m!3980415))

(assert (=> b!3526706 m!3980409))

(assert (=> b!3526706 m!3980409))

(assert (=> b!3526706 m!3980413))

(assert (=> b!3526708 m!3980087))

(assert (=> d!1029453 m!3980415))

(declare-fun m!3980675 () Bool)

(assert (=> d!1029453 m!3980675))

(assert (=> b!3526324 d!1029453))

(declare-fun d!1029455 () Bool)

(assert (=> d!1029455 (= (get!12005 lt!1205003) (v!37136 lt!1205003))))

(assert (=> b!3526324 d!1029455))

(declare-fun d!1029457 () Bool)

(assert (=> d!1029457 (= (inv!50616 (tag!6126 (rule!8140 (h!42801 tokens!494)))) (= (mod (str.len (value!176753 (tag!6126 (rule!8140 (h!42801 tokens!494))))) 2) 0))))

(assert (=> b!3526302 d!1029457))

(declare-fun d!1029459 () Bool)

(declare-fun res!1422715 () Bool)

(declare-fun e!2183063 () Bool)

(assert (=> d!1029459 (=> (not res!1422715) (not e!2183063))))

(assert (=> d!1029459 (= res!1422715 (semiInverseModEq!2317 (toChars!7599 (transformation!5484 (rule!8140 (h!42801 tokens!494)))) (toValue!7740 (transformation!5484 (rule!8140 (h!42801 tokens!494))))))))

(assert (=> d!1029459 (= (inv!50619 (transformation!5484 (rule!8140 (h!42801 tokens!494)))) e!2183063)))

(declare-fun b!3526714 () Bool)

(assert (=> b!3526714 (= e!2183063 (equivClasses!2216 (toChars!7599 (transformation!5484 (rule!8140 (h!42801 tokens!494)))) (toValue!7740 (transformation!5484 (rule!8140 (h!42801 tokens!494))))))))

(assert (= (and d!1029459 res!1422715) b!3526714))

(declare-fun m!3980677 () Bool)

(assert (=> d!1029459 m!3980677))

(declare-fun m!3980679 () Bool)

(assert (=> b!3526714 m!3980679))

(assert (=> b!3526302 d!1029459))

(declare-fun d!1029461 () Bool)

(declare-fun lt!1205132 () BalanceConc!22300)

(assert (=> d!1029461 (= (list!13679 lt!1205132) (printList!1621 thiss!18206 (list!13681 lt!1205022)))))

(assert (=> d!1029461 (= lt!1205132 (printTailRec!1568 thiss!18206 lt!1205022 0 (BalanceConc!22301 Empty!11343)))))

(assert (=> d!1029461 (= (print!2138 thiss!18206 lt!1205022) lt!1205132)))

(declare-fun bs!565721 () Bool)

(assert (= bs!565721 d!1029461))

(declare-fun m!3980681 () Bool)

(assert (=> bs!565721 m!3980681))

(declare-fun m!3980683 () Bool)

(assert (=> bs!565721 m!3980683))

(assert (=> bs!565721 m!3980683))

(declare-fun m!3980685 () Bool)

(assert (=> bs!565721 m!3980685))

(assert (=> bs!565721 m!3980187))

(assert (=> b!3526307 d!1029461))

(declare-fun d!1029463 () Bool)

(declare-fun lt!1205150 () BalanceConc!22300)

(declare-fun printListTailRec!721 (LexerInterface!5073 List!37505 List!37503) List!37503)

(declare-fun dropList!1238 (BalanceConc!22302 Int) List!37505)

(assert (=> d!1029463 (= (list!13679 lt!1205150) (printListTailRec!721 thiss!18206 (dropList!1238 lt!1205022 0) (list!13679 (BalanceConc!22301 Empty!11343))))))

(declare-fun e!2183068 () BalanceConc!22300)

(assert (=> d!1029463 (= lt!1205150 e!2183068)))

(declare-fun c!607980 () Bool)

(assert (=> d!1029463 (= c!607980 (>= 0 (size!28451 lt!1205022)))))

(declare-fun e!2183069 () Bool)

(assert (=> d!1029463 e!2183069))

(declare-fun res!1422718 () Bool)

(assert (=> d!1029463 (=> (not res!1422718) (not e!2183069))))

(assert (=> d!1029463 (= res!1422718 (>= 0 0))))

(assert (=> d!1029463 (= (printTailRec!1568 thiss!18206 lt!1205022 0 (BalanceConc!22301 Empty!11343)) lt!1205150)))

(declare-fun b!3526721 () Bool)

(assert (=> b!3526721 (= e!2183069 (<= 0 (size!28451 lt!1205022)))))

(declare-fun b!3526722 () Bool)

(assert (=> b!3526722 (= e!2183068 (BalanceConc!22301 Empty!11343))))

(declare-fun b!3526723 () Bool)

(declare-fun ++!9270 (BalanceConc!22300 BalanceConc!22300) BalanceConc!22300)

(assert (=> b!3526723 (= e!2183068 (printTailRec!1568 thiss!18206 lt!1205022 (+ 0 1) (++!9270 (BalanceConc!22301 Empty!11343) (charsOf!3498 (apply!8922 lt!1205022 0)))))))

(declare-fun lt!1205151 () List!37505)

(assert (=> b!3526723 (= lt!1205151 (list!13681 lt!1205022))))

(declare-fun lt!1205152 () Unit!53068)

(declare-fun lemmaDropApply!1196 (List!37505 Int) Unit!53068)

(assert (=> b!3526723 (= lt!1205152 (lemmaDropApply!1196 lt!1205151 0))))

(declare-fun head!7398 (List!37505) Token!10334)

(declare-fun drop!2052 (List!37505 Int) List!37505)

(assert (=> b!3526723 (= (head!7398 (drop!2052 lt!1205151 0)) (apply!8926 lt!1205151 0))))

(declare-fun lt!1205148 () Unit!53068)

(assert (=> b!3526723 (= lt!1205148 lt!1205152)))

(declare-fun lt!1205153 () List!37505)

(assert (=> b!3526723 (= lt!1205153 (list!13681 lt!1205022))))

(declare-fun lt!1205147 () Unit!53068)

(declare-fun lemmaDropTail!1080 (List!37505 Int) Unit!53068)

(assert (=> b!3526723 (= lt!1205147 (lemmaDropTail!1080 lt!1205153 0))))

(declare-fun tail!5500 (List!37505) List!37505)

(assert (=> b!3526723 (= (tail!5500 (drop!2052 lt!1205153 0)) (drop!2052 lt!1205153 (+ 0 1)))))

(declare-fun lt!1205149 () Unit!53068)

(assert (=> b!3526723 (= lt!1205149 lt!1205147)))

(assert (= (and d!1029463 res!1422718) b!3526721))

(assert (= (and d!1029463 c!607980) b!3526722))

(assert (= (and d!1029463 (not c!607980)) b!3526723))

(declare-fun m!3980687 () Bool)

(assert (=> d!1029463 m!3980687))

(declare-fun m!3980689 () Bool)

(assert (=> d!1029463 m!3980689))

(assert (=> d!1029463 m!3980689))

(declare-fun m!3980691 () Bool)

(assert (=> d!1029463 m!3980691))

(declare-fun m!3980693 () Bool)

(assert (=> d!1029463 m!3980693))

(declare-fun m!3980695 () Bool)

(assert (=> d!1029463 m!3980695))

(assert (=> d!1029463 m!3980691))

(assert (=> b!3526721 m!3980687))

(declare-fun m!3980697 () Bool)

(assert (=> b!3526723 m!3980697))

(declare-fun m!3980699 () Bool)

(assert (=> b!3526723 m!3980699))

(declare-fun m!3980701 () Bool)

(assert (=> b!3526723 m!3980701))

(declare-fun m!3980703 () Bool)

(assert (=> b!3526723 m!3980703))

(declare-fun m!3980705 () Bool)

(assert (=> b!3526723 m!3980705))

(declare-fun m!3980707 () Bool)

(assert (=> b!3526723 m!3980707))

(declare-fun m!3980709 () Bool)

(assert (=> b!3526723 m!3980709))

(assert (=> b!3526723 m!3980707))

(declare-fun m!3980711 () Bool)

(assert (=> b!3526723 m!3980711))

(declare-fun m!3980713 () Bool)

(assert (=> b!3526723 m!3980713))

(assert (=> b!3526723 m!3980705))

(assert (=> b!3526723 m!3980713))

(assert (=> b!3526723 m!3980709))

(declare-fun m!3980715 () Bool)

(assert (=> b!3526723 m!3980715))

(assert (=> b!3526723 m!3980701))

(declare-fun m!3980717 () Bool)

(assert (=> b!3526723 m!3980717))

(declare-fun m!3980719 () Bool)

(assert (=> b!3526723 m!3980719))

(assert (=> b!3526723 m!3980683))

(assert (=> b!3526307 d!1029463))

(declare-fun d!1029465 () Bool)

(assert (=> d!1029465 (= (list!13679 lt!1205017) (list!13682 (c!607905 lt!1205017)))))

(declare-fun bs!565722 () Bool)

(assert (= bs!565722 d!1029465))

(declare-fun m!3980721 () Bool)

(assert (=> bs!565722 m!3980721))

(assert (=> b!3526307 d!1029465))

(declare-fun d!1029467 () Bool)

(declare-fun e!2183072 () Bool)

(assert (=> d!1029467 e!2183072))

(declare-fun res!1422721 () Bool)

(assert (=> d!1029467 (=> (not res!1422721) (not e!2183072))))

(declare-fun lt!1205156 () BalanceConc!22302)

(assert (=> d!1029467 (= res!1422721 (= (list!13681 lt!1205156) (Cons!37381 (h!42801 tokens!494) Nil!37381)))))

(declare-fun singleton!1153 (Token!10334) BalanceConc!22302)

(assert (=> d!1029467 (= lt!1205156 (singleton!1153 (h!42801 tokens!494)))))

(assert (=> d!1029467 (= (singletonSeq!2580 (h!42801 tokens!494)) lt!1205156)))

(declare-fun b!3526726 () Bool)

(declare-fun isBalanced!3462 (Conc!11344) Bool)

(assert (=> b!3526726 (= e!2183072 (isBalanced!3462 (c!607906 lt!1205156)))))

(assert (= (and d!1029467 res!1422721) b!3526726))

(declare-fun m!3980723 () Bool)

(assert (=> d!1029467 m!3980723))

(declare-fun m!3980725 () Bool)

(assert (=> d!1029467 m!3980725))

(declare-fun m!3980727 () Bool)

(assert (=> b!3526726 m!3980727))

(assert (=> b!3526307 d!1029467))

(declare-fun d!1029469 () Bool)

(declare-fun c!607983 () Bool)

(assert (=> d!1029469 (= c!607983 ((_ is Cons!37381) (Cons!37381 (h!42801 tokens!494) Nil!37381)))))

(declare-fun e!2183075 () List!37503)

(assert (=> d!1029469 (= (printList!1621 thiss!18206 (Cons!37381 (h!42801 tokens!494) Nil!37381)) e!2183075)))

(declare-fun b!3526731 () Bool)

(assert (=> b!3526731 (= e!2183075 (++!9269 (list!13679 (charsOf!3498 (h!42801 (Cons!37381 (h!42801 tokens!494) Nil!37381)))) (printList!1621 thiss!18206 (t!282520 (Cons!37381 (h!42801 tokens!494) Nil!37381)))))))

(declare-fun b!3526732 () Bool)

(assert (=> b!3526732 (= e!2183075 Nil!37379)))

(assert (= (and d!1029469 c!607983) b!3526731))

(assert (= (and d!1029469 (not c!607983)) b!3526732))

(declare-fun m!3980729 () Bool)

(assert (=> b!3526731 m!3980729))

(assert (=> b!3526731 m!3980729))

(declare-fun m!3980731 () Bool)

(assert (=> b!3526731 m!3980731))

(declare-fun m!3980733 () Bool)

(assert (=> b!3526731 m!3980733))

(assert (=> b!3526731 m!3980731))

(assert (=> b!3526731 m!3980733))

(declare-fun m!3980735 () Bool)

(assert (=> b!3526731 m!3980735))

(assert (=> b!3526307 d!1029469))

(declare-fun d!1029471 () Bool)

(declare-fun lt!1205159 () Bool)

(assert (=> d!1029471 (= lt!1205159 (isEmpty!21858 (list!13679 (_2!21748 lt!1205023))))))

(declare-fun isEmpty!21863 (Conc!11343) Bool)

(assert (=> d!1029471 (= lt!1205159 (isEmpty!21863 (c!607905 (_2!21748 lt!1205023))))))

(assert (=> d!1029471 (= (isEmpty!21854 (_2!21748 lt!1205023)) lt!1205159)))

(declare-fun bs!565723 () Bool)

(assert (= bs!565723 d!1029471))

(declare-fun m!3980737 () Bool)

(assert (=> bs!565723 m!3980737))

(assert (=> bs!565723 m!3980737))

(declare-fun m!3980739 () Bool)

(assert (=> bs!565723 m!3980739))

(declare-fun m!3980741 () Bool)

(assert (=> bs!565723 m!3980741))

(assert (=> b!3526328 d!1029471))

(declare-fun d!1029473 () Bool)

(assert (=> d!1029473 (= (inv!50616 (tag!6126 (h!42800 rules!2135))) (= (mod (str.len (value!176753 (tag!6126 (h!42800 rules!2135)))) 2) 0))))

(assert (=> b!3526306 d!1029473))

(declare-fun d!1029475 () Bool)

(declare-fun res!1422722 () Bool)

(declare-fun e!2183076 () Bool)

(assert (=> d!1029475 (=> (not res!1422722) (not e!2183076))))

(assert (=> d!1029475 (= res!1422722 (semiInverseModEq!2317 (toChars!7599 (transformation!5484 (h!42800 rules!2135))) (toValue!7740 (transformation!5484 (h!42800 rules!2135)))))))

(assert (=> d!1029475 (= (inv!50619 (transformation!5484 (h!42800 rules!2135))) e!2183076)))

(declare-fun b!3526733 () Bool)

(assert (=> b!3526733 (= e!2183076 (equivClasses!2216 (toChars!7599 (transformation!5484 (h!42800 rules!2135))) (toValue!7740 (transformation!5484 (h!42800 rules!2135)))))))

(assert (= (and d!1029475 res!1422722) b!3526733))

(declare-fun m!3980743 () Bool)

(assert (=> d!1029475 m!3980743))

(declare-fun m!3980745 () Bool)

(assert (=> b!3526733 m!3980745))

(assert (=> b!3526306 d!1029475))

(declare-fun d!1029477 () Bool)

(assert (=> d!1029477 (= (list!13679 (charsOf!3498 (h!42801 tokens!494))) (list!13682 (c!607905 (charsOf!3498 (h!42801 tokens!494)))))))

(declare-fun bs!565724 () Bool)

(assert (= bs!565724 d!1029477))

(declare-fun m!3980747 () Bool)

(assert (=> bs!565724 m!3980747))

(assert (=> b!3526327 d!1029477))

(declare-fun d!1029479 () Bool)

(declare-fun lt!1205160 () BalanceConc!22300)

(assert (=> d!1029479 (= (list!13679 lt!1205160) (originalCharacters!6198 (h!42801 tokens!494)))))

(assert (=> d!1029479 (= lt!1205160 (dynLambda!15947 (toChars!7599 (transformation!5484 (rule!8140 (h!42801 tokens!494)))) (value!176754 (h!42801 tokens!494))))))

(assert (=> d!1029479 (= (charsOf!3498 (h!42801 tokens!494)) lt!1205160)))

(declare-fun b_lambda!103097 () Bool)

(assert (=> (not b_lambda!103097) (not d!1029479)))

(assert (=> d!1029479 t!282552))

(declare-fun b_and!251461 () Bool)

(assert (= b_and!251455 (and (=> t!282552 result!241736) b_and!251461)))

(assert (=> d!1029479 t!282554))

(declare-fun b_and!251463 () Bool)

(assert (= b_and!251457 (and (=> t!282554 result!241738) b_and!251463)))

(assert (=> d!1029479 t!282556))

(declare-fun b_and!251465 () Bool)

(assert (= b_and!251459 (and (=> t!282556 result!241740) b_and!251465)))

(declare-fun m!3980749 () Bool)

(assert (=> d!1029479 m!3980749))

(assert (=> d!1029479 m!3980635))

(assert (=> b!3526327 d!1029479))

(declare-fun d!1029481 () Bool)

(declare-fun res!1422723 () Bool)

(declare-fun e!2183077 () Bool)

(assert (=> d!1029481 (=> (not res!1422723) (not e!2183077))))

(assert (=> d!1029481 (= res!1422723 (not (isEmpty!21858 (originalCharacters!6198 separatorToken!241))))))

(assert (=> d!1029481 (= (inv!50620 separatorToken!241) e!2183077)))

(declare-fun b!3526734 () Bool)

(declare-fun res!1422724 () Bool)

(assert (=> b!3526734 (=> (not res!1422724) (not e!2183077))))

(assert (=> b!3526734 (= res!1422724 (= (originalCharacters!6198 separatorToken!241) (list!13679 (dynLambda!15947 (toChars!7599 (transformation!5484 (rule!8140 separatorToken!241))) (value!176754 separatorToken!241)))))))

(declare-fun b!3526735 () Bool)

(assert (=> b!3526735 (= e!2183077 (= (size!28449 separatorToken!241) (size!28450 (originalCharacters!6198 separatorToken!241))))))

(assert (= (and d!1029481 res!1422723) b!3526734))

(assert (= (and b!3526734 res!1422724) b!3526735))

(declare-fun b_lambda!103099 () Bool)

(assert (=> (not b_lambda!103099) (not b!3526734)))

(assert (=> b!3526734 t!282527))

(declare-fun b_and!251467 () Bool)

(assert (= b_and!251461 (and (=> t!282527 result!241708) b_and!251467)))

(assert (=> b!3526734 t!282529))

(declare-fun b_and!251469 () Bool)

(assert (= b_and!251463 (and (=> t!282529 result!241712) b_and!251469)))

(assert (=> b!3526734 t!282531))

(declare-fun b_and!251471 () Bool)

(assert (= b_and!251465 (and (=> t!282531 result!241714) b_and!251471)))

(declare-fun m!3980751 () Bool)

(assert (=> d!1029481 m!3980751))

(assert (=> b!3526734 m!3980313))

(assert (=> b!3526734 m!3980313))

(declare-fun m!3980753 () Bool)

(assert (=> b!3526734 m!3980753))

(declare-fun m!3980755 () Bool)

(assert (=> b!3526735 m!3980755))

(assert (=> start!327714 d!1029481))

(declare-fun d!1029483 () Bool)

(declare-fun isEmpty!21864 (Option!7631) Bool)

(assert (=> d!1029483 (= (isDefined!5882 lt!1205006) (not (isEmpty!21864 lt!1205006)))))

(declare-fun bs!565725 () Bool)

(assert (= bs!565725 d!1029483))

(declare-fun m!3980757 () Bool)

(assert (=> bs!565725 m!3980757))

(assert (=> b!3526326 d!1029483))

(declare-fun d!1029485 () Bool)

(assert (=> d!1029485 (= (maxPrefix!2613 thiss!18206 rules!2135 (++!9269 (list!13679 (charsOf!3498 (h!42801 tokens!494))) lt!1205008)) (Some!7631 (tuple2!37231 (h!42801 tokens!494) lt!1205008)))))

(declare-fun lt!1205175 () Unit!53068)

(declare-fun choose!20484 (LexerInterface!5073 List!37504 Token!10334 Rule!10768 List!37503 Rule!10768) Unit!53068)

(assert (=> d!1029485 (= lt!1205175 (choose!20484 thiss!18206 rules!2135 (h!42801 tokens!494) (rule!8140 (h!42801 tokens!494)) lt!1205008 (rule!8140 separatorToken!241)))))

(assert (=> d!1029485 (not (isEmpty!21855 rules!2135))))

(assert (=> d!1029485 (= (lemmaMaxPrefWithOtherTypeUsedCharAtStartOfSuffixReturnSame!240 thiss!18206 rules!2135 (h!42801 tokens!494) (rule!8140 (h!42801 tokens!494)) lt!1205008 (rule!8140 separatorToken!241)) lt!1205175)))

(declare-fun bs!565729 () Bool)

(assert (= bs!565729 d!1029485))

(assert (=> bs!565729 m!3980165))

(assert (=> bs!565729 m!3980167))

(assert (=> bs!565729 m!3980165))

(declare-fun m!3980833 () Bool)

(assert (=> bs!565729 m!3980833))

(declare-fun m!3980835 () Bool)

(assert (=> bs!565729 m!3980835))

(assert (=> bs!565729 m!3980167))

(assert (=> bs!565729 m!3980833))

(declare-fun m!3980837 () Bool)

(assert (=> bs!565729 m!3980837))

(assert (=> bs!565729 m!3980159))

(assert (=> b!3526326 d!1029485))

(declare-fun d!1029513 () Bool)

(declare-fun lt!1205176 () Bool)

(declare-fun e!2183110 () Bool)

(assert (=> d!1029513 (= lt!1205176 e!2183110)))

(declare-fun res!1422759 () Bool)

(assert (=> d!1029513 (=> (not res!1422759) (not e!2183110))))

(assert (=> d!1029513 (= res!1422759 (= (list!13681 (_1!21748 (lex!2399 thiss!18206 rules!2135 (print!2138 thiss!18206 (singletonSeq!2580 (h!42801 (t!282520 tokens!494))))))) (list!13681 (singletonSeq!2580 (h!42801 (t!282520 tokens!494))))))))

(declare-fun e!2183109 () Bool)

(assert (=> d!1029513 (= lt!1205176 e!2183109)))

(declare-fun res!1422761 () Bool)

(assert (=> d!1029513 (=> (not res!1422761) (not e!2183109))))

(declare-fun lt!1205177 () tuple2!37228)

(assert (=> d!1029513 (= res!1422761 (= (size!28451 (_1!21748 lt!1205177)) 1))))

(assert (=> d!1029513 (= lt!1205177 (lex!2399 thiss!18206 rules!2135 (print!2138 thiss!18206 (singletonSeq!2580 (h!42801 (t!282520 tokens!494))))))))

(assert (=> d!1029513 (not (isEmpty!21855 rules!2135))))

(assert (=> d!1029513 (= (rulesProduceIndividualToken!2565 thiss!18206 rules!2135 (h!42801 (t!282520 tokens!494))) lt!1205176)))

(declare-fun b!3526782 () Bool)

(declare-fun res!1422760 () Bool)

(assert (=> b!3526782 (=> (not res!1422760) (not e!2183109))))

(assert (=> b!3526782 (= res!1422760 (= (apply!8922 (_1!21748 lt!1205177) 0) (h!42801 (t!282520 tokens!494))))))

(declare-fun b!3526783 () Bool)

(assert (=> b!3526783 (= e!2183109 (isEmpty!21854 (_2!21748 lt!1205177)))))

(declare-fun b!3526784 () Bool)

(assert (=> b!3526784 (= e!2183110 (isEmpty!21854 (_2!21748 (lex!2399 thiss!18206 rules!2135 (print!2138 thiss!18206 (singletonSeq!2580 (h!42801 (t!282520 tokens!494))))))))))

(assert (= (and d!1029513 res!1422761) b!3526782))

(assert (= (and b!3526782 res!1422760) b!3526783))

(assert (= (and d!1029513 res!1422759) b!3526784))

(declare-fun m!3980851 () Bool)

(assert (=> d!1029513 m!3980851))

(declare-fun m!3980853 () Bool)

(assert (=> d!1029513 m!3980853))

(assert (=> d!1029513 m!3980081))

(declare-fun m!3980855 () Bool)

(assert (=> d!1029513 m!3980855))

(declare-fun m!3980857 () Bool)

(assert (=> d!1029513 m!3980857))

(declare-fun m!3980859 () Bool)

(assert (=> d!1029513 m!3980859))

(assert (=> d!1029513 m!3980159))

(assert (=> d!1029513 m!3980081))

(assert (=> d!1029513 m!3980851))

(assert (=> d!1029513 m!3980081))

(declare-fun m!3980861 () Bool)

(assert (=> b!3526782 m!3980861))

(declare-fun m!3980863 () Bool)

(assert (=> b!3526783 m!3980863))

(assert (=> b!3526784 m!3980081))

(assert (=> b!3526784 m!3980081))

(assert (=> b!3526784 m!3980851))

(assert (=> b!3526784 m!3980851))

(assert (=> b!3526784 m!3980853))

(declare-fun m!3980867 () Bool)

(assert (=> b!3526784 m!3980867))

(assert (=> b!3526326 d!1029513))

(declare-fun d!1029517 () Bool)

(assert (=> d!1029517 (not (contains!7024 (usedCharacters!718 (regex!5484 (rule!8140 (h!42801 tokens!494)))) lt!1205013))))

(declare-fun lt!1205184 () Unit!53068)

(declare-fun choose!20485 (LexerInterface!5073 List!37504 List!37504 Rule!10768 Rule!10768 C!20672) Unit!53068)

(assert (=> d!1029517 (= lt!1205184 (choose!20485 thiss!18206 rules!2135 rules!2135 (rule!8140 (h!42801 tokens!494)) (rule!8140 separatorToken!241) lt!1205013))))

(assert (=> d!1029517 (rulesInvariant!4470 thiss!18206 rules!2135)))

(assert (=> d!1029517 (= (lemmaNonSepRuleNotContainsCharContainedInASepRule!284 thiss!18206 rules!2135 rules!2135 (rule!8140 (h!42801 tokens!494)) (rule!8140 separatorToken!241) lt!1205013) lt!1205184)))

(declare-fun bs!565731 () Bool)

(assert (= bs!565731 d!1029517))

(assert (=> bs!565731 m!3980137))

(assert (=> bs!565731 m!3980137))

(assert (=> bs!565731 m!3980139))

(declare-fun m!3980899 () Bool)

(assert (=> bs!565731 m!3980899))

(assert (=> bs!565731 m!3980245))

(assert (=> b!3526326 d!1029517))

(declare-fun d!1029531 () Bool)

(declare-fun e!2183132 () Bool)

(assert (=> d!1029531 e!2183132))

(declare-fun res!1422780 () Bool)

(assert (=> d!1029531 (=> (not res!1422780) (not e!2183132))))

(assert (=> d!1029531 (= res!1422780 (isDefined!5882 (getRuleFromTag!1127 thiss!18206 rules!2135 (tag!6126 (rule!8140 separatorToken!241)))))))

(declare-fun lt!1205189 () Unit!53068)

(declare-fun choose!20486 (LexerInterface!5073 List!37504 List!37503 Token!10334) Unit!53068)

(assert (=> d!1029531 (= lt!1205189 (choose!20486 thiss!18206 rules!2135 lt!1205031 separatorToken!241))))

(assert (=> d!1029531 (rulesInvariant!4470 thiss!18206 rules!2135)))

(assert (=> d!1029531 (= (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1127 thiss!18206 rules!2135 lt!1205031 separatorToken!241) lt!1205189)))

(declare-fun b!3526826 () Bool)

(declare-fun res!1422781 () Bool)

(assert (=> b!3526826 (=> (not res!1422781) (not e!2183132))))

(assert (=> b!3526826 (= res!1422781 (matchR!4827 (regex!5484 (get!12005 (getRuleFromTag!1127 thiss!18206 rules!2135 (tag!6126 (rule!8140 separatorToken!241))))) (list!13679 (charsOf!3498 separatorToken!241))))))

(declare-fun b!3526827 () Bool)

(assert (=> b!3526827 (= e!2183132 (= (rule!8140 separatorToken!241) (get!12005 (getRuleFromTag!1127 thiss!18206 rules!2135 (tag!6126 (rule!8140 separatorToken!241))))))))

(assert (= (and d!1029531 res!1422780) b!3526826))

(assert (= (and b!3526826 res!1422781) b!3526827))

(assert (=> d!1029531 m!3980123))

(assert (=> d!1029531 m!3980123))

(declare-fun m!3980937 () Bool)

(assert (=> d!1029531 m!3980937))

(declare-fun m!3980939 () Bool)

(assert (=> d!1029531 m!3980939))

(assert (=> d!1029531 m!3980245))

(assert (=> b!3526826 m!3980055))

(declare-fun m!3980941 () Bool)

(assert (=> b!3526826 m!3980941))

(assert (=> b!3526826 m!3980045))

(assert (=> b!3526826 m!3980055))

(assert (=> b!3526826 m!3980123))

(assert (=> b!3526826 m!3980123))

(declare-fun m!3980943 () Bool)

(assert (=> b!3526826 m!3980943))

(assert (=> b!3526826 m!3980045))

(assert (=> b!3526827 m!3980123))

(assert (=> b!3526827 m!3980123))

(assert (=> b!3526827 m!3980943))

(assert (=> b!3526326 d!1029531))

(declare-fun d!1029545 () Bool)

(declare-fun lt!1205192 () Bool)

(assert (=> d!1029545 (= lt!1205192 (select (content!5273 (usedCharacters!718 (regex!5484 (rule!8140 separatorToken!241)))) lt!1205013))))

(declare-fun e!2183138 () Bool)

(assert (=> d!1029545 (= lt!1205192 e!2183138)))

(declare-fun res!1422786 () Bool)

(assert (=> d!1029545 (=> (not res!1422786) (not e!2183138))))

(assert (=> d!1029545 (= res!1422786 ((_ is Cons!37379) (usedCharacters!718 (regex!5484 (rule!8140 separatorToken!241)))))))

(assert (=> d!1029545 (= (contains!7024 (usedCharacters!718 (regex!5484 (rule!8140 separatorToken!241))) lt!1205013) lt!1205192)))

(declare-fun b!3526832 () Bool)

(declare-fun e!2183137 () Bool)

(assert (=> b!3526832 (= e!2183138 e!2183137)))

(declare-fun res!1422787 () Bool)

(assert (=> b!3526832 (=> res!1422787 e!2183137)))

(assert (=> b!3526832 (= res!1422787 (= (h!42799 (usedCharacters!718 (regex!5484 (rule!8140 separatorToken!241)))) lt!1205013))))

(declare-fun b!3526833 () Bool)

(assert (=> b!3526833 (= e!2183137 (contains!7024 (t!282518 (usedCharacters!718 (regex!5484 (rule!8140 separatorToken!241)))) lt!1205013))))

(assert (= (and d!1029545 res!1422786) b!3526832))

(assert (= (and b!3526832 (not res!1422787)) b!3526833))

(assert (=> d!1029545 m!3980065))

(declare-fun m!3980945 () Bool)

(assert (=> d!1029545 m!3980945))

(declare-fun m!3980947 () Bool)

(assert (=> d!1029545 m!3980947))

(declare-fun m!3980949 () Bool)

(assert (=> b!3526833 m!3980949))

(assert (=> b!3526326 d!1029545))

(declare-fun d!1029547 () Bool)

(assert (=> d!1029547 (= (maxPrefixOneRule!1780 thiss!18206 (rule!8140 (h!42801 tokens!494)) lt!1205000) (Some!7631 (tuple2!37231 (Token!10335 (apply!8923 (transformation!5484 (rule!8140 (h!42801 tokens!494))) (seqFromList!4021 lt!1205000)) (rule!8140 (h!42801 tokens!494)) (size!28450 lt!1205000) lt!1205000) Nil!37379)))))

(declare-fun lt!1205198 () Unit!53068)

(declare-fun choose!20487 (LexerInterface!5073 List!37504 List!37503 List!37503 List!37503 Rule!10768) Unit!53068)

(assert (=> d!1029547 (= lt!1205198 (choose!20487 thiss!18206 rules!2135 lt!1205000 lt!1205000 Nil!37379 (rule!8140 (h!42801 tokens!494))))))

(assert (=> d!1029547 (not (isEmpty!21855 rules!2135))))

(assert (=> d!1029547 (= (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!873 thiss!18206 rules!2135 lt!1205000 lt!1205000 Nil!37379 (rule!8140 (h!42801 tokens!494))) lt!1205198)))

(declare-fun bs!565735 () Bool)

(assert (= bs!565735 d!1029547))

(assert (=> bs!565735 m!3980159))

(assert (=> bs!565735 m!3980225))

(declare-fun m!3980959 () Bool)

(assert (=> bs!565735 m!3980959))

(assert (=> bs!565735 m!3980093))

(assert (=> bs!565735 m!3980141))

(assert (=> bs!565735 m!3980225))

(declare-fun m!3980961 () Bool)

(assert (=> bs!565735 m!3980961))

(assert (=> b!3526326 d!1029547))

(declare-fun d!1029553 () Bool)

(declare-fun e!2183139 () Bool)

(assert (=> d!1029553 e!2183139))

(declare-fun res!1422788 () Bool)

(assert (=> d!1029553 (=> (not res!1422788) (not e!2183139))))

(declare-fun lt!1205199 () BalanceConc!22302)

(assert (=> d!1029553 (= res!1422788 (= (list!13681 lt!1205199) (Cons!37381 (h!42801 (t!282520 tokens!494)) Nil!37381)))))

(assert (=> d!1029553 (= lt!1205199 (singleton!1153 (h!42801 (t!282520 tokens!494))))))

(assert (=> d!1029553 (= (singletonSeq!2580 (h!42801 (t!282520 tokens!494))) lt!1205199)))

(declare-fun b!3526834 () Bool)

(assert (=> b!3526834 (= e!2183139 (isBalanced!3462 (c!607906 lt!1205199)))))

(assert (= (and d!1029553 res!1422788) b!3526834))

(declare-fun m!3980963 () Bool)

(assert (=> d!1029553 m!3980963))

(declare-fun m!3980965 () Bool)

(assert (=> d!1029553 m!3980965))

(declare-fun m!3980967 () Bool)

(assert (=> b!3526834 m!3980967))

(assert (=> b!3526326 d!1029553))

(declare-fun d!1029555 () Bool)

(declare-fun dynLambda!15951 (Int BalanceConc!22300) TokenValue!5714)

(assert (=> d!1029555 (= (apply!8923 (transformation!5484 (rule!8140 (h!42801 (t!282520 tokens!494)))) (seqFromList!4021 lt!1205041)) (dynLambda!15951 (toValue!7740 (transformation!5484 (rule!8140 (h!42801 (t!282520 tokens!494))))) (seqFromList!4021 lt!1205041)))))

(declare-fun b_lambda!103113 () Bool)

(assert (=> (not b_lambda!103113) (not d!1029555)))

(declare-fun t!282565 () Bool)

(declare-fun tb!197343 () Bool)

(assert (=> (and b!3526316 (= (toValue!7740 (transformation!5484 (rule!8140 (h!42801 tokens!494)))) (toValue!7740 (transformation!5484 (rule!8140 (h!42801 (t!282520 tokens!494)))))) t!282565) tb!197343))

(declare-fun result!241748 () Bool)

(assert (=> tb!197343 (= result!241748 (inv!21 (dynLambda!15951 (toValue!7740 (transformation!5484 (rule!8140 (h!42801 (t!282520 tokens!494))))) (seqFromList!4021 lt!1205041))))))

(declare-fun m!3980969 () Bool)

(assert (=> tb!197343 m!3980969))

(assert (=> d!1029555 t!282565))

(declare-fun b_and!251491 () Bool)

(assert (= b_and!251419 (and (=> t!282565 result!241748) b_and!251491)))

(declare-fun tb!197345 () Bool)

(declare-fun t!282567 () Bool)

(assert (=> (and b!3526310 (= (toValue!7740 (transformation!5484 (h!42800 rules!2135))) (toValue!7740 (transformation!5484 (rule!8140 (h!42801 (t!282520 tokens!494)))))) t!282567) tb!197345))

(declare-fun result!241752 () Bool)

(assert (= result!241752 result!241748))

(assert (=> d!1029555 t!282567))

(declare-fun b_and!251493 () Bool)

(assert (= b_and!251423 (and (=> t!282567 result!241752) b_and!251493)))

(declare-fun tb!197347 () Bool)

(declare-fun t!282569 () Bool)

(assert (=> (and b!3526333 (= (toValue!7740 (transformation!5484 (rule!8140 separatorToken!241))) (toValue!7740 (transformation!5484 (rule!8140 (h!42801 (t!282520 tokens!494)))))) t!282569) tb!197347))

(declare-fun result!241754 () Bool)

(assert (= result!241754 result!241748))

(assert (=> d!1029555 t!282569))

(declare-fun b_and!251495 () Bool)

(assert (= b_and!251427 (and (=> t!282569 result!241754) b_and!251495)))

(assert (=> d!1029555 m!3980079))

(declare-fun m!3980971 () Bool)

(assert (=> d!1029555 m!3980971))

(assert (=> b!3526326 d!1029555))

(declare-fun d!1029557 () Bool)

(declare-fun lt!1205200 () BalanceConc!22300)

(assert (=> d!1029557 (= (list!13679 lt!1205200) (printList!1621 thiss!18206 (list!13681 lt!1205001)))))

(assert (=> d!1029557 (= lt!1205200 (printTailRec!1568 thiss!18206 lt!1205001 0 (BalanceConc!22301 Empty!11343)))))

(assert (=> d!1029557 (= (print!2138 thiss!18206 lt!1205001) lt!1205200)))

(declare-fun bs!565736 () Bool)

(assert (= bs!565736 d!1029557))

(declare-fun m!3980973 () Bool)

(assert (=> bs!565736 m!3980973))

(declare-fun m!3980975 () Bool)

(assert (=> bs!565736 m!3980975))

(assert (=> bs!565736 m!3980975))

(declare-fun m!3980977 () Bool)

(assert (=> bs!565736 m!3980977))

(assert (=> bs!565736 m!3980113))

(assert (=> b!3526326 d!1029557))

(declare-fun b!3526873 () Bool)

(declare-fun e!2183163 () Option!7632)

(declare-fun lt!1205245 () Option!7632)

(declare-fun lt!1205243 () Option!7632)

(assert (=> b!3526873 (= e!2183163 (ite (and ((_ is None!7631) lt!1205245) ((_ is None!7631) lt!1205243)) None!7631 (ite ((_ is None!7631) lt!1205243) lt!1205245 (ite ((_ is None!7631) lt!1205245) lt!1205243 (ite (>= (size!28449 (_1!21749 (v!37137 lt!1205245))) (size!28449 (_1!21749 (v!37137 lt!1205243)))) lt!1205245 lt!1205243)))))))

(declare-fun call!254753 () Option!7632)

(assert (=> b!3526873 (= lt!1205245 call!254753)))

(assert (=> b!3526873 (= lt!1205243 (maxPrefix!2613 thiss!18206 (t!282519 rules!2135) lt!1205019))))

(declare-fun b!3526875 () Bool)

(declare-fun res!1422815 () Bool)

(declare-fun e!2183162 () Bool)

(assert (=> b!3526875 (=> (not res!1422815) (not e!2183162))))

(declare-fun lt!1205242 () Option!7632)

(declare-fun get!12006 (Option!7632) tuple2!37230)

(assert (=> b!3526875 (= res!1422815 (< (size!28450 (_2!21749 (get!12006 lt!1205242))) (size!28450 lt!1205019)))))

(declare-fun bm!254748 () Bool)

(assert (=> bm!254748 (= call!254753 (maxPrefixOneRule!1780 thiss!18206 (h!42800 rules!2135) lt!1205019))))

(declare-fun b!3526876 () Bool)

(declare-fun e!2183161 () Bool)

(assert (=> b!3526876 (= e!2183161 e!2183162)))

(declare-fun res!1422811 () Bool)

(assert (=> b!3526876 (=> (not res!1422811) (not e!2183162))))

(declare-fun isDefined!5883 (Option!7632) Bool)

(assert (=> b!3526876 (= res!1422811 (isDefined!5883 lt!1205242))))

(declare-fun b!3526877 () Bool)

(declare-fun res!1422814 () Bool)

(assert (=> b!3526877 (=> (not res!1422814) (not e!2183162))))

(assert (=> b!3526877 (= res!1422814 (= (value!176754 (_1!21749 (get!12006 lt!1205242))) (apply!8923 (transformation!5484 (rule!8140 (_1!21749 (get!12006 lt!1205242)))) (seqFromList!4021 (originalCharacters!6198 (_1!21749 (get!12006 lt!1205242)))))))))

(declare-fun b!3526878 () Bool)

(declare-fun res!1422813 () Bool)

(assert (=> b!3526878 (=> (not res!1422813) (not e!2183162))))

(assert (=> b!3526878 (= res!1422813 (matchR!4827 (regex!5484 (rule!8140 (_1!21749 (get!12006 lt!1205242)))) (list!13679 (charsOf!3498 (_1!21749 (get!12006 lt!1205242))))))))

(declare-fun b!3526879 () Bool)

(assert (=> b!3526879 (= e!2183162 (contains!7023 rules!2135 (rule!8140 (_1!21749 (get!12006 lt!1205242)))))))

(declare-fun b!3526880 () Bool)

(declare-fun res!1422810 () Bool)

(assert (=> b!3526880 (=> (not res!1422810) (not e!2183162))))

(assert (=> b!3526880 (= res!1422810 (= (list!13679 (charsOf!3498 (_1!21749 (get!12006 lt!1205242)))) (originalCharacters!6198 (_1!21749 (get!12006 lt!1205242)))))))

(declare-fun b!3526881 () Bool)

(assert (=> b!3526881 (= e!2183163 call!254753)))

(declare-fun d!1029559 () Bool)

(assert (=> d!1029559 e!2183161))

(declare-fun res!1422812 () Bool)

(assert (=> d!1029559 (=> res!1422812 e!2183161)))

(declare-fun isEmpty!21865 (Option!7632) Bool)

(assert (=> d!1029559 (= res!1422812 (isEmpty!21865 lt!1205242))))

(assert (=> d!1029559 (= lt!1205242 e!2183163)))

(declare-fun c!608011 () Bool)

(assert (=> d!1029559 (= c!608011 (and ((_ is Cons!37380) rules!2135) ((_ is Nil!37380) (t!282519 rules!2135))))))

(declare-fun lt!1205246 () Unit!53068)

(declare-fun lt!1205244 () Unit!53068)

(assert (=> d!1029559 (= lt!1205246 lt!1205244)))

(declare-fun isPrefix!2877 (List!37503 List!37503) Bool)

(assert (=> d!1029559 (isPrefix!2877 lt!1205019 lt!1205019)))

(declare-fun lemmaIsPrefixRefl!1836 (List!37503 List!37503) Unit!53068)

(assert (=> d!1029559 (= lt!1205244 (lemmaIsPrefixRefl!1836 lt!1205019 lt!1205019))))

(declare-fun rulesValidInductive!1886 (LexerInterface!5073 List!37504) Bool)

(assert (=> d!1029559 (rulesValidInductive!1886 thiss!18206 rules!2135)))

(assert (=> d!1029559 (= (maxPrefix!2613 thiss!18206 rules!2135 lt!1205019) lt!1205242)))

(declare-fun b!3526874 () Bool)

(declare-fun res!1422809 () Bool)

(assert (=> b!3526874 (=> (not res!1422809) (not e!2183162))))

(assert (=> b!3526874 (= res!1422809 (= (++!9269 (list!13679 (charsOf!3498 (_1!21749 (get!12006 lt!1205242)))) (_2!21749 (get!12006 lt!1205242))) lt!1205019))))

(assert (= (and d!1029559 c!608011) b!3526881))

(assert (= (and d!1029559 (not c!608011)) b!3526873))

(assert (= (or b!3526881 b!3526873) bm!254748))

(assert (= (and d!1029559 (not res!1422812)) b!3526876))

(assert (= (and b!3526876 res!1422811) b!3526880))

(assert (= (and b!3526880 res!1422810) b!3526875))

(assert (= (and b!3526875 res!1422815) b!3526874))

(assert (= (and b!3526874 res!1422809) b!3526877))

(assert (= (and b!3526877 res!1422814) b!3526878))

(assert (= (and b!3526878 res!1422813) b!3526879))

(declare-fun m!3981037 () Bool)

(assert (=> d!1029559 m!3981037))

(declare-fun m!3981039 () Bool)

(assert (=> d!1029559 m!3981039))

(declare-fun m!3981041 () Bool)

(assert (=> d!1029559 m!3981041))

(declare-fun m!3981043 () Bool)

(assert (=> d!1029559 m!3981043))

(declare-fun m!3981045 () Bool)

(assert (=> b!3526879 m!3981045))

(declare-fun m!3981047 () Bool)

(assert (=> b!3526879 m!3981047))

(assert (=> b!3526877 m!3981045))

(declare-fun m!3981049 () Bool)

(assert (=> b!3526877 m!3981049))

(assert (=> b!3526877 m!3981049))

(declare-fun m!3981051 () Bool)

(assert (=> b!3526877 m!3981051))

(assert (=> b!3526874 m!3981045))

(declare-fun m!3981053 () Bool)

(assert (=> b!3526874 m!3981053))

(assert (=> b!3526874 m!3981053))

(declare-fun m!3981055 () Bool)

(assert (=> b!3526874 m!3981055))

(assert (=> b!3526874 m!3981055))

(declare-fun m!3981057 () Bool)

(assert (=> b!3526874 m!3981057))

(declare-fun m!3981059 () Bool)

(assert (=> bm!254748 m!3981059))

(assert (=> b!3526878 m!3981045))

(assert (=> b!3526878 m!3981053))

(assert (=> b!3526878 m!3981053))

(assert (=> b!3526878 m!3981055))

(assert (=> b!3526878 m!3981055))

(declare-fun m!3981061 () Bool)

(assert (=> b!3526878 m!3981061))

(assert (=> b!3526880 m!3981045))

(assert (=> b!3526880 m!3981053))

(assert (=> b!3526880 m!3981053))

(assert (=> b!3526880 m!3981055))

(declare-fun m!3981063 () Bool)

(assert (=> b!3526873 m!3981063))

(declare-fun m!3981065 () Bool)

(assert (=> b!3526876 m!3981065))

(assert (=> b!3526875 m!3981045))

(declare-fun m!3981067 () Bool)

(assert (=> b!3526875 m!3981067))

(declare-fun m!3981069 () Bool)

(assert (=> b!3526875 m!3981069))

(assert (=> b!3526326 d!1029559))

(declare-fun d!1029573 () Bool)

(declare-fun lt!1205247 () Bool)

(assert (=> d!1029573 (= lt!1205247 (select (content!5273 (usedCharacters!718 (regex!5484 (rule!8140 (h!42801 tokens!494))))) lt!1205013))))

(declare-fun e!2183165 () Bool)

(assert (=> d!1029573 (= lt!1205247 e!2183165)))

(declare-fun res!1422816 () Bool)

(assert (=> d!1029573 (=> (not res!1422816) (not e!2183165))))

(assert (=> d!1029573 (= res!1422816 ((_ is Cons!37379) (usedCharacters!718 (regex!5484 (rule!8140 (h!42801 tokens!494))))))))

(assert (=> d!1029573 (= (contains!7024 (usedCharacters!718 (regex!5484 (rule!8140 (h!42801 tokens!494)))) lt!1205013) lt!1205247)))

(declare-fun b!3526882 () Bool)

(declare-fun e!2183164 () Bool)

(assert (=> b!3526882 (= e!2183165 e!2183164)))

(declare-fun res!1422817 () Bool)

(assert (=> b!3526882 (=> res!1422817 e!2183164)))

(assert (=> b!3526882 (= res!1422817 (= (h!42799 (usedCharacters!718 (regex!5484 (rule!8140 (h!42801 tokens!494))))) lt!1205013))))

(declare-fun b!3526883 () Bool)

(assert (=> b!3526883 (= e!2183164 (contains!7024 (t!282518 (usedCharacters!718 (regex!5484 (rule!8140 (h!42801 tokens!494))))) lt!1205013))))

(assert (= (and d!1029573 res!1422816) b!3526882))

(assert (= (and b!3526882 (not res!1422817)) b!3526883))

(assert (=> d!1029573 m!3980137))

(declare-fun m!3981071 () Bool)

(assert (=> d!1029573 m!3981071))

(declare-fun m!3981073 () Bool)

(assert (=> d!1029573 m!3981073))

(declare-fun m!3981075 () Bool)

(assert (=> b!3526883 m!3981075))

(assert (=> b!3526326 d!1029573))

(declare-fun d!1029575 () Bool)

(assert (=> d!1029575 (= (apply!8923 (transformation!5484 (rule!8140 (h!42801 tokens!494))) lt!1205005) (dynLambda!15951 (toValue!7740 (transformation!5484 (rule!8140 (h!42801 tokens!494)))) lt!1205005))))

(declare-fun b_lambda!103115 () Bool)

(assert (=> (not b_lambda!103115) (not d!1029575)))

(declare-fun t!282572 () Bool)

(declare-fun tb!197349 () Bool)

(assert (=> (and b!3526316 (= (toValue!7740 (transformation!5484 (rule!8140 (h!42801 tokens!494)))) (toValue!7740 (transformation!5484 (rule!8140 (h!42801 tokens!494))))) t!282572) tb!197349))

(declare-fun result!241756 () Bool)

(assert (=> tb!197349 (= result!241756 (inv!21 (dynLambda!15951 (toValue!7740 (transformation!5484 (rule!8140 (h!42801 tokens!494)))) lt!1205005)))))

(declare-fun m!3981077 () Bool)

(assert (=> tb!197349 m!3981077))

(assert (=> d!1029575 t!282572))

(declare-fun b_and!251497 () Bool)

(assert (= b_and!251491 (and (=> t!282572 result!241756) b_and!251497)))

(declare-fun tb!197351 () Bool)

(declare-fun t!282574 () Bool)

(assert (=> (and b!3526310 (= (toValue!7740 (transformation!5484 (h!42800 rules!2135))) (toValue!7740 (transformation!5484 (rule!8140 (h!42801 tokens!494))))) t!282574) tb!197351))

(declare-fun result!241758 () Bool)

(assert (= result!241758 result!241756))

(assert (=> d!1029575 t!282574))

(declare-fun b_and!251499 () Bool)

(assert (= b_and!251493 (and (=> t!282574 result!241758) b_and!251499)))

(declare-fun t!282576 () Bool)

(declare-fun tb!197353 () Bool)

(assert (=> (and b!3526333 (= (toValue!7740 (transformation!5484 (rule!8140 separatorToken!241))) (toValue!7740 (transformation!5484 (rule!8140 (h!42801 tokens!494))))) t!282576) tb!197353))

(declare-fun result!241760 () Bool)

(assert (= result!241760 result!241756))

(assert (=> d!1029575 t!282576))

(declare-fun b_and!251501 () Bool)

(assert (= b_and!251495 (and (=> t!282576 result!241760) b_and!251501)))

(declare-fun m!3981079 () Bool)

(assert (=> d!1029575 m!3981079))

(assert (=> b!3526326 d!1029575))

(declare-fun d!1029577 () Bool)

(declare-fun lt!1205253 () BalanceConc!22300)

(assert (=> d!1029577 (= (list!13679 lt!1205253) (printListTailRec!721 thiss!18206 (dropList!1238 lt!1205009 0) (list!13679 (BalanceConc!22301 Empty!11343))))))

(declare-fun e!2183167 () BalanceConc!22300)

(assert (=> d!1029577 (= lt!1205253 e!2183167)))

(declare-fun c!608012 () Bool)

(assert (=> d!1029577 (= c!608012 (>= 0 (size!28451 lt!1205009)))))

(declare-fun e!2183168 () Bool)

(assert (=> d!1029577 e!2183168))

(declare-fun res!1422818 () Bool)

(assert (=> d!1029577 (=> (not res!1422818) (not e!2183168))))

(assert (=> d!1029577 (= res!1422818 (>= 0 0))))

(assert (=> d!1029577 (= (printTailRec!1568 thiss!18206 lt!1205009 0 (BalanceConc!22301 Empty!11343)) lt!1205253)))

(declare-fun b!3526884 () Bool)

(assert (=> b!3526884 (= e!2183168 (<= 0 (size!28451 lt!1205009)))))

(declare-fun b!3526885 () Bool)

(assert (=> b!3526885 (= e!2183167 (BalanceConc!22301 Empty!11343))))

(declare-fun b!3526886 () Bool)

(assert (=> b!3526886 (= e!2183167 (printTailRec!1568 thiss!18206 lt!1205009 (+ 0 1) (++!9270 (BalanceConc!22301 Empty!11343) (charsOf!3498 (apply!8922 lt!1205009 0)))))))

(declare-fun lt!1205254 () List!37505)

(assert (=> b!3526886 (= lt!1205254 (list!13681 lt!1205009))))

(declare-fun lt!1205255 () Unit!53068)

(assert (=> b!3526886 (= lt!1205255 (lemmaDropApply!1196 lt!1205254 0))))

(assert (=> b!3526886 (= (head!7398 (drop!2052 lt!1205254 0)) (apply!8926 lt!1205254 0))))

(declare-fun lt!1205251 () Unit!53068)

(assert (=> b!3526886 (= lt!1205251 lt!1205255)))

(declare-fun lt!1205256 () List!37505)

(assert (=> b!3526886 (= lt!1205256 (list!13681 lt!1205009))))

(declare-fun lt!1205250 () Unit!53068)

(assert (=> b!3526886 (= lt!1205250 (lemmaDropTail!1080 lt!1205256 0))))

(assert (=> b!3526886 (= (tail!5500 (drop!2052 lt!1205256 0)) (drop!2052 lt!1205256 (+ 0 1)))))

(declare-fun lt!1205252 () Unit!53068)

(assert (=> b!3526886 (= lt!1205252 lt!1205250)))

(assert (= (and d!1029577 res!1422818) b!3526884))

(assert (= (and d!1029577 c!608012) b!3526885))

(assert (= (and d!1029577 (not c!608012)) b!3526886))

(declare-fun m!3981081 () Bool)

(assert (=> d!1029577 m!3981081))

(declare-fun m!3981083 () Bool)

(assert (=> d!1029577 m!3981083))

(assert (=> d!1029577 m!3981083))

(assert (=> d!1029577 m!3980691))

(declare-fun m!3981085 () Bool)

(assert (=> d!1029577 m!3981085))

(declare-fun m!3981087 () Bool)

(assert (=> d!1029577 m!3981087))

(assert (=> d!1029577 m!3980691))

(assert (=> b!3526884 m!3981081))

(declare-fun m!3981089 () Bool)

(assert (=> b!3526886 m!3981089))

(declare-fun m!3981091 () Bool)

(assert (=> b!3526886 m!3981091))

(declare-fun m!3981093 () Bool)

(assert (=> b!3526886 m!3981093))

(declare-fun m!3981095 () Bool)

(assert (=> b!3526886 m!3981095))

(declare-fun m!3981097 () Bool)

(assert (=> b!3526886 m!3981097))

(declare-fun m!3981099 () Bool)

(assert (=> b!3526886 m!3981099))

(declare-fun m!3981101 () Bool)

(assert (=> b!3526886 m!3981101))

(assert (=> b!3526886 m!3981099))

(declare-fun m!3981105 () Bool)

(assert (=> b!3526886 m!3981105))

(declare-fun m!3981109 () Bool)

(assert (=> b!3526886 m!3981109))

(assert (=> b!3526886 m!3981097))

(assert (=> b!3526886 m!3981109))

(assert (=> b!3526886 m!3981101))

(declare-fun m!3981111 () Bool)

(assert (=> b!3526886 m!3981111))

(assert (=> b!3526886 m!3981093))

(declare-fun m!3981113 () Bool)

(assert (=> b!3526886 m!3981113))

(declare-fun m!3981115 () Bool)

(assert (=> b!3526886 m!3981115))

(declare-fun m!3981117 () Bool)

(assert (=> b!3526886 m!3981117))

(assert (=> b!3526326 d!1029577))

(declare-fun b!3526918 () Bool)

(declare-fun e!2183196 () Option!7631)

(assert (=> b!3526918 (= e!2183196 None!7630)))

(declare-fun b!3526919 () Bool)

(declare-fun e!2183195 () Bool)

(declare-fun lt!1205278 () Option!7631)

(assert (=> b!3526919 (= e!2183195 (= (tag!6126 (get!12005 lt!1205278)) (tag!6126 (rule!8140 (h!42801 (t!282520 tokens!494))))))))

(declare-fun b!3526920 () Bool)

(declare-fun e!2183194 () Option!7631)

(assert (=> b!3526920 (= e!2183194 (Some!7630 (h!42800 rules!2135)))))

(declare-fun b!3526921 () Bool)

(assert (=> b!3526921 (= e!2183194 e!2183196)))

(declare-fun c!608019 () Bool)

(assert (=> b!3526921 (= c!608019 (and ((_ is Cons!37380) rules!2135) (not (= (tag!6126 (h!42800 rules!2135)) (tag!6126 (rule!8140 (h!42801 (t!282520 tokens!494))))))))))

(declare-fun b!3526922 () Bool)

(declare-fun lt!1205280 () Unit!53068)

(declare-fun lt!1205279 () Unit!53068)

(assert (=> b!3526922 (= lt!1205280 lt!1205279)))

(assert (=> b!3526922 (rulesInvariant!4470 thiss!18206 (t!282519 rules!2135))))

(declare-fun lemmaInvariantOnRulesThenOnTail!465 (LexerInterface!5073 Rule!10768 List!37504) Unit!53068)

(assert (=> b!3526922 (= lt!1205279 (lemmaInvariantOnRulesThenOnTail!465 thiss!18206 (h!42800 rules!2135) (t!282519 rules!2135)))))

(assert (=> b!3526922 (= e!2183196 (getRuleFromTag!1127 thiss!18206 (t!282519 rules!2135) (tag!6126 (rule!8140 (h!42801 (t!282520 tokens!494))))))))

(declare-fun d!1029579 () Bool)

(declare-fun e!2183193 () Bool)

(assert (=> d!1029579 e!2183193))

(declare-fun res!1422835 () Bool)

(assert (=> d!1029579 (=> res!1422835 e!2183193)))

(assert (=> d!1029579 (= res!1422835 (isEmpty!21864 lt!1205278))))

(assert (=> d!1029579 (= lt!1205278 e!2183194)))

(declare-fun c!608020 () Bool)

(assert (=> d!1029579 (= c!608020 (and ((_ is Cons!37380) rules!2135) (= (tag!6126 (h!42800 rules!2135)) (tag!6126 (rule!8140 (h!42801 (t!282520 tokens!494)))))))))

(assert (=> d!1029579 (rulesInvariant!4470 thiss!18206 rules!2135)))

(assert (=> d!1029579 (= (getRuleFromTag!1127 thiss!18206 rules!2135 (tag!6126 (rule!8140 (h!42801 (t!282520 tokens!494))))) lt!1205278)))

(declare-fun b!3526917 () Bool)

(assert (=> b!3526917 (= e!2183193 e!2183195)))

(declare-fun res!1422836 () Bool)

(assert (=> b!3526917 (=> (not res!1422836) (not e!2183195))))

(assert (=> b!3526917 (= res!1422836 (contains!7023 rules!2135 (get!12005 lt!1205278)))))

(assert (= (and d!1029579 c!608020) b!3526920))

(assert (= (and d!1029579 (not c!608020)) b!3526921))

(assert (= (and b!3526921 c!608019) b!3526922))

(assert (= (and b!3526921 (not c!608019)) b!3526918))

(assert (= (and d!1029579 (not res!1422835)) b!3526917))

(assert (= (and b!3526917 res!1422836) b!3526919))

(declare-fun m!3981199 () Bool)

(assert (=> b!3526919 m!3981199))

(declare-fun m!3981201 () Bool)

(assert (=> b!3526922 m!3981201))

(declare-fun m!3981203 () Bool)

(assert (=> b!3526922 m!3981203))

(declare-fun m!3981205 () Bool)

(assert (=> b!3526922 m!3981205))

(declare-fun m!3981207 () Bool)

(assert (=> d!1029579 m!3981207))

(assert (=> d!1029579 m!3980245))

(assert (=> b!3526917 m!3981199))

(assert (=> b!3526917 m!3981199))

(declare-fun m!3981209 () Bool)

(assert (=> b!3526917 m!3981209))

(assert (=> b!3526326 d!1029579))

(declare-fun b!3526939 () Bool)

(declare-fun e!2183206 () List!37503)

(assert (=> b!3526939 (= e!2183206 Nil!37379)))

(declare-fun b!3526940 () Bool)

(declare-fun e!2183205 () List!37503)

(declare-fun call!254763 () List!37503)

(assert (=> b!3526940 (= e!2183205 call!254763)))

(declare-fun bm!254757 () Bool)

(declare-fun call!254764 () List!37503)

(assert (=> bm!254757 (= call!254764 call!254763)))

(declare-fun b!3526941 () Bool)

(declare-fun e!2183207 () List!37503)

(assert (=> b!3526941 (= e!2183206 e!2183207)))

(declare-fun c!608030 () Bool)

(assert (=> b!3526941 (= c!608030 ((_ is ElementMatch!10243) (regex!5484 (rule!8140 (h!42801 tokens!494)))))))

(declare-fun d!1029599 () Bool)

(declare-fun c!608032 () Bool)

(assert (=> d!1029599 (= c!608032 (or ((_ is EmptyExpr!10243) (regex!5484 (rule!8140 (h!42801 tokens!494)))) ((_ is EmptyLang!10243) (regex!5484 (rule!8140 (h!42801 tokens!494))))))))

(assert (=> d!1029599 (= (usedCharacters!718 (regex!5484 (rule!8140 (h!42801 tokens!494)))) e!2183206)))

(declare-fun call!254762 () List!37503)

(declare-fun bm!254758 () Bool)

(declare-fun c!608029 () Bool)

(declare-fun call!254765 () List!37503)

(assert (=> bm!254758 (= call!254762 (++!9269 (ite c!608029 call!254765 call!254764) (ite c!608029 call!254764 call!254765)))))

(declare-fun b!3526942 () Bool)

(assert (=> b!3526942 (= e!2183207 (Cons!37379 (c!607904 (regex!5484 (rule!8140 (h!42801 tokens!494)))) Nil!37379))))

(declare-fun b!3526943 () Bool)

(declare-fun c!608031 () Bool)

(assert (=> b!3526943 (= c!608031 ((_ is Star!10243) (regex!5484 (rule!8140 (h!42801 tokens!494)))))))

(assert (=> b!3526943 (= e!2183207 e!2183205)))

(declare-fun b!3526944 () Bool)

(declare-fun e!2183208 () List!37503)

(assert (=> b!3526944 (= e!2183208 call!254762)))

(declare-fun b!3526945 () Bool)

(assert (=> b!3526945 (= e!2183205 e!2183208)))

(assert (=> b!3526945 (= c!608029 ((_ is Union!10243) (regex!5484 (rule!8140 (h!42801 tokens!494)))))))

(declare-fun b!3526946 () Bool)

(assert (=> b!3526946 (= e!2183208 call!254762)))

(declare-fun bm!254759 () Bool)

(assert (=> bm!254759 (= call!254765 (usedCharacters!718 (ite c!608029 (regOne!20999 (regex!5484 (rule!8140 (h!42801 tokens!494)))) (regTwo!20998 (regex!5484 (rule!8140 (h!42801 tokens!494)))))))))

(declare-fun bm!254760 () Bool)

(assert (=> bm!254760 (= call!254763 (usedCharacters!718 (ite c!608031 (reg!10572 (regex!5484 (rule!8140 (h!42801 tokens!494)))) (ite c!608029 (regTwo!20999 (regex!5484 (rule!8140 (h!42801 tokens!494)))) (regOne!20998 (regex!5484 (rule!8140 (h!42801 tokens!494))))))))))

(assert (= (and d!1029599 c!608032) b!3526939))

(assert (= (and d!1029599 (not c!608032)) b!3526941))

(assert (= (and b!3526941 c!608030) b!3526942))

(assert (= (and b!3526941 (not c!608030)) b!3526943))

(assert (= (and b!3526943 c!608031) b!3526940))

(assert (= (and b!3526943 (not c!608031)) b!3526945))

(assert (= (and b!3526945 c!608029) b!3526946))

(assert (= (and b!3526945 (not c!608029)) b!3526944))

(assert (= (or b!3526946 b!3526944) bm!254757))

(assert (= (or b!3526946 b!3526944) bm!254759))

(assert (= (or b!3526946 b!3526944) bm!254758))

(assert (= (or b!3526940 bm!254757) bm!254760))

(declare-fun m!3981211 () Bool)

(assert (=> bm!254758 m!3981211))

(declare-fun m!3981213 () Bool)

(assert (=> bm!254759 m!3981213))

(declare-fun m!3981215 () Bool)

(assert (=> bm!254760 m!3981215))

(assert (=> b!3526326 d!1029599))

(declare-fun d!1029601 () Bool)

(assert (=> d!1029601 (rulesProduceIndividualToken!2565 thiss!18206 rules!2135 (h!42801 tokens!494))))

(declare-fun lt!1205305 () Unit!53068)

(declare-fun choose!20492 (LexerInterface!5073 List!37504 List!37505 Token!10334) Unit!53068)

(assert (=> d!1029601 (= lt!1205305 (choose!20492 thiss!18206 rules!2135 tokens!494 (h!42801 tokens!494)))))

(assert (=> d!1029601 (not (isEmpty!21855 rules!2135))))

(assert (=> d!1029601 (= (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!1062 thiss!18206 rules!2135 tokens!494 (h!42801 tokens!494)) lt!1205305)))

(declare-fun bs!565743 () Bool)

(assert (= bs!565743 d!1029601))

(assert (=> bs!565743 m!3980219))

(declare-fun m!3981285 () Bool)

(assert (=> bs!565743 m!3981285))

(assert (=> bs!565743 m!3980159))

(assert (=> b!3526326 d!1029601))

(declare-fun d!1029613 () Bool)

(assert (=> d!1029613 (rulesProduceIndividualToken!2565 thiss!18206 rules!2135 (h!42801 (t!282520 tokens!494)))))

(declare-fun lt!1205306 () Unit!53068)

(assert (=> d!1029613 (= lt!1205306 (choose!20492 thiss!18206 rules!2135 tokens!494 (h!42801 (t!282520 tokens!494))))))

(assert (=> d!1029613 (not (isEmpty!21855 rules!2135))))

(assert (=> d!1029613 (= (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!1062 thiss!18206 rules!2135 tokens!494 (h!42801 (t!282520 tokens!494))) lt!1205306)))

(declare-fun bs!565744 () Bool)

(assert (= bs!565744 d!1029613))

(assert (=> bs!565744 m!3980109))

(declare-fun m!3981287 () Bool)

(assert (=> bs!565744 m!3981287))

(assert (=> bs!565744 m!3980159))

(assert (=> b!3526326 d!1029613))

(declare-fun d!1029615 () Bool)

(assert (=> d!1029615 (dynLambda!15950 lambda!122889 (h!42801 (t!282520 tokens!494)))))

(declare-fun lt!1205307 () Unit!53068)

(assert (=> d!1029615 (= lt!1205307 (choose!20483 tokens!494 lambda!122889 (h!42801 (t!282520 tokens!494))))))

(declare-fun e!2183238 () Bool)

(assert (=> d!1029615 e!2183238))

(declare-fun res!1422866 () Bool)

(assert (=> d!1029615 (=> (not res!1422866) (not e!2183238))))

(assert (=> d!1029615 (= res!1422866 (forall!8045 tokens!494 lambda!122889))))

(assert (=> d!1029615 (= (forallContained!1431 tokens!494 lambda!122889 (h!42801 (t!282520 tokens!494))) lt!1205307)))

(declare-fun b!3527006 () Bool)

(assert (=> b!3527006 (= e!2183238 (contains!7026 tokens!494 (h!42801 (t!282520 tokens!494))))))

(assert (= (and d!1029615 res!1422866) b!3527006))

(declare-fun b_lambda!103121 () Bool)

(assert (=> (not b_lambda!103121) (not d!1029615)))

(declare-fun m!3981289 () Bool)

(assert (=> d!1029615 m!3981289))

(declare-fun m!3981291 () Bool)

(assert (=> d!1029615 m!3981291))

(declare-fun m!3981293 () Bool)

(assert (=> d!1029615 m!3981293))

(assert (=> b!3527006 m!3980655))

(assert (=> b!3526326 d!1029615))

(declare-fun b!3527025 () Bool)

(declare-fun res!1422887 () Bool)

(declare-fun e!2183250 () Bool)

(assert (=> b!3527025 (=> (not res!1422887) (not e!2183250))))

(declare-fun lt!1205318 () Option!7632)

(assert (=> b!3527025 (= res!1422887 (= (rule!8140 (_1!21749 (get!12006 lt!1205318))) (rule!8140 (h!42801 (t!282520 tokens!494)))))))

(declare-fun b!3527026 () Bool)

(declare-fun e!2183247 () Bool)

(declare-datatypes ((tuple2!37236 0))(
  ( (tuple2!37237 (_1!21752 List!37503) (_2!21752 List!37503)) )
))
(declare-fun findLongestMatchInner!942 (Regex!10243 List!37503 Int List!37503 List!37503 Int) tuple2!37236)

(assert (=> b!3527026 (= e!2183247 (matchR!4827 (regex!5484 (rule!8140 (h!42801 (t!282520 tokens!494)))) (_1!21752 (findLongestMatchInner!942 (regex!5484 (rule!8140 (h!42801 (t!282520 tokens!494)))) Nil!37379 (size!28450 Nil!37379) lt!1205041 lt!1205041 (size!28450 lt!1205041)))))))

(declare-fun b!3527027 () Bool)

(assert (=> b!3527027 (= e!2183250 (= (size!28449 (_1!21749 (get!12006 lt!1205318))) (size!28450 (originalCharacters!6198 (_1!21749 (get!12006 lt!1205318))))))))

(declare-fun b!3527028 () Bool)

(declare-fun e!2183249 () Option!7632)

(assert (=> b!3527028 (= e!2183249 None!7631)))

(declare-fun d!1029617 () Bool)

(declare-fun e!2183248 () Bool)

(assert (=> d!1029617 e!2183248))

(declare-fun res!1422881 () Bool)

(assert (=> d!1029617 (=> res!1422881 e!2183248)))

(assert (=> d!1029617 (= res!1422881 (isEmpty!21865 lt!1205318))))

(assert (=> d!1029617 (= lt!1205318 e!2183249)))

(declare-fun c!608050 () Bool)

(declare-fun lt!1205322 () tuple2!37236)

(assert (=> d!1029617 (= c!608050 (isEmpty!21858 (_1!21752 lt!1205322)))))

(declare-fun findLongestMatch!857 (Regex!10243 List!37503) tuple2!37236)

(assert (=> d!1029617 (= lt!1205322 (findLongestMatch!857 (regex!5484 (rule!8140 (h!42801 (t!282520 tokens!494)))) lt!1205041))))

(declare-fun ruleValid!1775 (LexerInterface!5073 Rule!10768) Bool)

(assert (=> d!1029617 (ruleValid!1775 thiss!18206 (rule!8140 (h!42801 (t!282520 tokens!494))))))

(assert (=> d!1029617 (= (maxPrefixOneRule!1780 thiss!18206 (rule!8140 (h!42801 (t!282520 tokens!494))) lt!1205041) lt!1205318)))

(declare-fun b!3527029 () Bool)

(declare-fun res!1422884 () Bool)

(assert (=> b!3527029 (=> (not res!1422884) (not e!2183250))))

(assert (=> b!3527029 (= res!1422884 (= (++!9269 (list!13679 (charsOf!3498 (_1!21749 (get!12006 lt!1205318)))) (_2!21749 (get!12006 lt!1205318))) lt!1205041))))

(declare-fun b!3527030 () Bool)

(assert (=> b!3527030 (= e!2183248 e!2183250)))

(declare-fun res!1422882 () Bool)

(assert (=> b!3527030 (=> (not res!1422882) (not e!2183250))))

(assert (=> b!3527030 (= res!1422882 (matchR!4827 (regex!5484 (rule!8140 (h!42801 (t!282520 tokens!494)))) (list!13679 (charsOf!3498 (_1!21749 (get!12006 lt!1205318))))))))

(declare-fun b!3527031 () Bool)

(declare-fun res!1422886 () Bool)

(assert (=> b!3527031 (=> (not res!1422886) (not e!2183250))))

(assert (=> b!3527031 (= res!1422886 (= (value!176754 (_1!21749 (get!12006 lt!1205318))) (apply!8923 (transformation!5484 (rule!8140 (_1!21749 (get!12006 lt!1205318)))) (seqFromList!4021 (originalCharacters!6198 (_1!21749 (get!12006 lt!1205318)))))))))

(declare-fun b!3527032 () Bool)

(declare-fun res!1422883 () Bool)

(assert (=> b!3527032 (=> (not res!1422883) (not e!2183250))))

(assert (=> b!3527032 (= res!1422883 (< (size!28450 (_2!21749 (get!12006 lt!1205318))) (size!28450 lt!1205041)))))

(declare-fun b!3527033 () Bool)

(assert (=> b!3527033 (= e!2183249 (Some!7631 (tuple2!37231 (Token!10335 (apply!8923 (transformation!5484 (rule!8140 (h!42801 (t!282520 tokens!494)))) (seqFromList!4021 (_1!21752 lt!1205322))) (rule!8140 (h!42801 (t!282520 tokens!494))) (size!28453 (seqFromList!4021 (_1!21752 lt!1205322))) (_1!21752 lt!1205322)) (_2!21752 lt!1205322))))))

(declare-fun lt!1205321 () Unit!53068)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!915 (Regex!10243 List!37503) Unit!53068)

(assert (=> b!3527033 (= lt!1205321 (longestMatchIsAcceptedByMatchOrIsEmpty!915 (regex!5484 (rule!8140 (h!42801 (t!282520 tokens!494)))) lt!1205041))))

(declare-fun res!1422885 () Bool)

(assert (=> b!3527033 (= res!1422885 (isEmpty!21858 (_1!21752 (findLongestMatchInner!942 (regex!5484 (rule!8140 (h!42801 (t!282520 tokens!494)))) Nil!37379 (size!28450 Nil!37379) lt!1205041 lt!1205041 (size!28450 lt!1205041)))))))

(assert (=> b!3527033 (=> res!1422885 e!2183247)))

(assert (=> b!3527033 e!2183247))

(declare-fun lt!1205319 () Unit!53068)

(assert (=> b!3527033 (= lt!1205319 lt!1205321)))

(declare-fun lt!1205320 () Unit!53068)

(declare-fun lemmaSemiInverse!1294 (TokenValueInjection!10856 BalanceConc!22300) Unit!53068)

(assert (=> b!3527033 (= lt!1205320 (lemmaSemiInverse!1294 (transformation!5484 (rule!8140 (h!42801 (t!282520 tokens!494)))) (seqFromList!4021 (_1!21752 lt!1205322))))))

(assert (= (and d!1029617 c!608050) b!3527028))

(assert (= (and d!1029617 (not c!608050)) b!3527033))

(assert (= (and b!3527033 (not res!1422885)) b!3527026))

(assert (= (and d!1029617 (not res!1422881)) b!3527030))

(assert (= (and b!3527030 res!1422882) b!3527029))

(assert (= (and b!3527029 res!1422884) b!3527032))

(assert (= (and b!3527032 res!1422883) b!3527025))

(assert (= (and b!3527025 res!1422887) b!3527031))

(assert (= (and b!3527031 res!1422886) b!3527027))

(declare-fun m!3981295 () Bool)

(assert (=> b!3527025 m!3981295))

(assert (=> b!3527029 m!3981295))

(declare-fun m!3981297 () Bool)

(assert (=> b!3527029 m!3981297))

(assert (=> b!3527029 m!3981297))

(declare-fun m!3981299 () Bool)

(assert (=> b!3527029 m!3981299))

(assert (=> b!3527029 m!3981299))

(declare-fun m!3981301 () Bool)

(assert (=> b!3527029 m!3981301))

(declare-fun m!3981303 () Bool)

(assert (=> b!3527026 m!3981303))

(assert (=> b!3527026 m!3980067))

(assert (=> b!3527026 m!3981303))

(assert (=> b!3527026 m!3980067))

(declare-fun m!3981305 () Bool)

(assert (=> b!3527026 m!3981305))

(declare-fun m!3981307 () Bool)

(assert (=> b!3527026 m!3981307))

(assert (=> b!3527027 m!3981295))

(declare-fun m!3981309 () Bool)

(assert (=> b!3527027 m!3981309))

(assert (=> b!3527033 m!3980067))

(declare-fun m!3981311 () Bool)

(assert (=> b!3527033 m!3981311))

(declare-fun m!3981313 () Bool)

(assert (=> b!3527033 m!3981313))

(assert (=> b!3527033 m!3981311))

(declare-fun m!3981315 () Bool)

(assert (=> b!3527033 m!3981315))

(declare-fun m!3981317 () Bool)

(assert (=> b!3527033 m!3981317))

(assert (=> b!3527033 m!3981311))

(declare-fun m!3981319 () Bool)

(assert (=> b!3527033 m!3981319))

(assert (=> b!3527033 m!3981303))

(assert (=> b!3527033 m!3981311))

(assert (=> b!3527033 m!3981303))

(assert (=> b!3527033 m!3980067))

(assert (=> b!3527033 m!3981305))

(declare-fun m!3981321 () Bool)

(assert (=> b!3527033 m!3981321))

(assert (=> b!3527031 m!3981295))

(declare-fun m!3981323 () Bool)

(assert (=> b!3527031 m!3981323))

(assert (=> b!3527031 m!3981323))

(declare-fun m!3981325 () Bool)

(assert (=> b!3527031 m!3981325))

(declare-fun m!3981327 () Bool)

(assert (=> d!1029617 m!3981327))

(declare-fun m!3981329 () Bool)

(assert (=> d!1029617 m!3981329))

(declare-fun m!3981331 () Bool)

(assert (=> d!1029617 m!3981331))

(declare-fun m!3981333 () Bool)

(assert (=> d!1029617 m!3981333))

(assert (=> b!3527030 m!3981295))

(assert (=> b!3527030 m!3981297))

(assert (=> b!3527030 m!3981297))

(assert (=> b!3527030 m!3981299))

(assert (=> b!3527030 m!3981299))

(declare-fun m!3981335 () Bool)

(assert (=> b!3527030 m!3981335))

(assert (=> b!3527032 m!3981295))

(declare-fun m!3981337 () Bool)

(assert (=> b!3527032 m!3981337))

(assert (=> b!3527032 m!3980067))

(assert (=> b!3526326 d!1029617))

(declare-fun b!3527035 () Bool)

(declare-fun e!2183254 () Option!7631)

(assert (=> b!3527035 (= e!2183254 None!7630)))

(declare-fun b!3527036 () Bool)

(declare-fun e!2183253 () Bool)

(declare-fun lt!1205323 () Option!7631)

(assert (=> b!3527036 (= e!2183253 (= (tag!6126 (get!12005 lt!1205323)) (tag!6126 (rule!8140 (h!42801 tokens!494)))))))

(declare-fun b!3527037 () Bool)

(declare-fun e!2183252 () Option!7631)

(assert (=> b!3527037 (= e!2183252 (Some!7630 (h!42800 rules!2135)))))

(declare-fun b!3527038 () Bool)

(assert (=> b!3527038 (= e!2183252 e!2183254)))

(declare-fun c!608051 () Bool)

(assert (=> b!3527038 (= c!608051 (and ((_ is Cons!37380) rules!2135) (not (= (tag!6126 (h!42800 rules!2135)) (tag!6126 (rule!8140 (h!42801 tokens!494)))))))))

(declare-fun b!3527039 () Bool)

(declare-fun lt!1205325 () Unit!53068)

(declare-fun lt!1205324 () Unit!53068)

(assert (=> b!3527039 (= lt!1205325 lt!1205324)))

(assert (=> b!3527039 (rulesInvariant!4470 thiss!18206 (t!282519 rules!2135))))

(assert (=> b!3527039 (= lt!1205324 (lemmaInvariantOnRulesThenOnTail!465 thiss!18206 (h!42800 rules!2135) (t!282519 rules!2135)))))

(assert (=> b!3527039 (= e!2183254 (getRuleFromTag!1127 thiss!18206 (t!282519 rules!2135) (tag!6126 (rule!8140 (h!42801 tokens!494)))))))

(declare-fun d!1029619 () Bool)

(declare-fun e!2183251 () Bool)

(assert (=> d!1029619 e!2183251))

(declare-fun res!1422888 () Bool)

(assert (=> d!1029619 (=> res!1422888 e!2183251)))

(assert (=> d!1029619 (= res!1422888 (isEmpty!21864 lt!1205323))))

(assert (=> d!1029619 (= lt!1205323 e!2183252)))

(declare-fun c!608052 () Bool)

(assert (=> d!1029619 (= c!608052 (and ((_ is Cons!37380) rules!2135) (= (tag!6126 (h!42800 rules!2135)) (tag!6126 (rule!8140 (h!42801 tokens!494))))))))

(assert (=> d!1029619 (rulesInvariant!4470 thiss!18206 rules!2135)))

(assert (=> d!1029619 (= (getRuleFromTag!1127 thiss!18206 rules!2135 (tag!6126 (rule!8140 (h!42801 tokens!494)))) lt!1205323)))

(declare-fun b!3527034 () Bool)

(assert (=> b!3527034 (= e!2183251 e!2183253)))

(declare-fun res!1422889 () Bool)

(assert (=> b!3527034 (=> (not res!1422889) (not e!2183253))))

(assert (=> b!3527034 (= res!1422889 (contains!7023 rules!2135 (get!12005 lt!1205323)))))

(assert (= (and d!1029619 c!608052) b!3527037))

(assert (= (and d!1029619 (not c!608052)) b!3527038))

(assert (= (and b!3527038 c!608051) b!3527039))

(assert (= (and b!3527038 (not c!608051)) b!3527035))

(assert (= (and d!1029619 (not res!1422888)) b!3527034))

(assert (= (and b!3527034 res!1422889) b!3527036))

(declare-fun m!3981339 () Bool)

(assert (=> b!3527036 m!3981339))

(assert (=> b!3527039 m!3981201))

(assert (=> b!3527039 m!3981203))

(declare-fun m!3981341 () Bool)

(assert (=> b!3527039 m!3981341))

(declare-fun m!3981343 () Bool)

(assert (=> d!1029619 m!3981343))

(assert (=> d!1029619 m!3980245))

(assert (=> b!3527034 m!3981339))

(assert (=> b!3527034 m!3981339))

(declare-fun m!3981345 () Bool)

(assert (=> b!3527034 m!3981345))

(assert (=> b!3526326 d!1029619))

(declare-fun d!1029621 () Bool)

(declare-fun e!2183255 () Bool)

(assert (=> d!1029621 e!2183255))

(declare-fun res!1422890 () Bool)

(assert (=> d!1029621 (=> (not res!1422890) (not e!2183255))))

(assert (=> d!1029621 (= res!1422890 (isDefined!5882 (getRuleFromTag!1127 thiss!18206 rules!2135 (tag!6126 (rule!8140 (h!42801 (t!282520 tokens!494)))))))))

(declare-fun lt!1205326 () Unit!53068)

(assert (=> d!1029621 (= lt!1205326 (choose!20486 thiss!18206 rules!2135 lt!1205041 (h!42801 (t!282520 tokens!494))))))

(assert (=> d!1029621 (rulesInvariant!4470 thiss!18206 rules!2135)))

(assert (=> d!1029621 (= (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1127 thiss!18206 rules!2135 lt!1205041 (h!42801 (t!282520 tokens!494))) lt!1205326)))

(declare-fun b!3527040 () Bool)

(declare-fun res!1422891 () Bool)

(assert (=> b!3527040 (=> (not res!1422891) (not e!2183255))))

(assert (=> b!3527040 (= res!1422891 (matchR!4827 (regex!5484 (get!12005 (getRuleFromTag!1127 thiss!18206 rules!2135 (tag!6126 (rule!8140 (h!42801 (t!282520 tokens!494))))))) (list!13679 (charsOf!3498 (h!42801 (t!282520 tokens!494))))))))

(declare-fun b!3527041 () Bool)

(assert (=> b!3527041 (= e!2183255 (= (rule!8140 (h!42801 (t!282520 tokens!494))) (get!12005 (getRuleFromTag!1127 thiss!18206 rules!2135 (tag!6126 (rule!8140 (h!42801 (t!282520 tokens!494))))))))))

(assert (= (and d!1029621 res!1422890) b!3527040))

(assert (= (and b!3527040 res!1422891) b!3527041))

(assert (=> d!1029621 m!3980115))

(assert (=> d!1029621 m!3980115))

(declare-fun m!3981347 () Bool)

(assert (=> d!1029621 m!3981347))

(declare-fun m!3981349 () Bool)

(assert (=> d!1029621 m!3981349))

(assert (=> d!1029621 m!3980245))

(assert (=> b!3527040 m!3980049))

(declare-fun m!3981351 () Bool)

(assert (=> b!3527040 m!3981351))

(assert (=> b!3527040 m!3980043))

(assert (=> b!3527040 m!3980049))

(assert (=> b!3527040 m!3980115))

(assert (=> b!3527040 m!3980115))

(declare-fun m!3981353 () Bool)

(assert (=> b!3527040 m!3981353))

(assert (=> b!3527040 m!3980043))

(assert (=> b!3527041 m!3980115))

(assert (=> b!3527041 m!3980115))

(assert (=> b!3527041 m!3981353))

(assert (=> b!3526326 d!1029621))

(declare-fun d!1029623 () Bool)

(declare-fun e!2183256 () Bool)

(assert (=> d!1029623 e!2183256))

(declare-fun res!1422892 () Bool)

(assert (=> d!1029623 (=> (not res!1422892) (not e!2183256))))

(declare-fun lt!1205327 () BalanceConc!22302)

(assert (=> d!1029623 (= res!1422892 (= (list!13681 lt!1205327) (Cons!37381 separatorToken!241 Nil!37381)))))

(assert (=> d!1029623 (= lt!1205327 (singleton!1153 separatorToken!241))))

(assert (=> d!1029623 (= (singletonSeq!2580 separatorToken!241) lt!1205327)))

(declare-fun b!3527042 () Bool)

(assert (=> b!3527042 (= e!2183256 (isBalanced!3462 (c!607906 lt!1205327)))))

(assert (= (and d!1029623 res!1422892) b!3527042))

(declare-fun m!3981355 () Bool)

(assert (=> d!1029623 m!3981355))

(declare-fun m!3981357 () Bool)

(assert (=> d!1029623 m!3981357))

(declare-fun m!3981359 () Bool)

(assert (=> b!3527042 m!3981359))

(assert (=> b!3526326 d!1029623))

(declare-fun d!1029625 () Bool)

(assert (=> d!1029625 (= (head!7397 lt!1205041) (h!42799 lt!1205041))))

(assert (=> b!3526326 d!1029625))

(declare-fun d!1029627 () Bool)

(assert (=> d!1029627 (= (seqFromList!4021 lt!1205041) (fromListB!1849 lt!1205041))))

(declare-fun bs!565745 () Bool)

(assert (= bs!565745 d!1029627))

(declare-fun m!3981361 () Bool)

(assert (=> bs!565745 m!3981361))

(assert (=> b!3526326 d!1029627))

(declare-fun d!1029629 () Bool)

(declare-fun lt!1205328 () BalanceConc!22300)

(assert (=> d!1029629 (= (list!13679 lt!1205328) (printList!1621 thiss!18206 (list!13681 lt!1205009)))))

(assert (=> d!1029629 (= lt!1205328 (printTailRec!1568 thiss!18206 lt!1205009 0 (BalanceConc!22301 Empty!11343)))))

(assert (=> d!1029629 (= (print!2138 thiss!18206 lt!1205009) lt!1205328)))

(declare-fun bs!565746 () Bool)

(assert (= bs!565746 d!1029629))

(declare-fun m!3981363 () Bool)

(assert (=> bs!565746 m!3981363))

(assert (=> bs!565746 m!3981117))

(assert (=> bs!565746 m!3981117))

(declare-fun m!3981365 () Bool)

(assert (=> bs!565746 m!3981365))

(assert (=> bs!565746 m!3980147))

(assert (=> b!3526326 d!1029629))

(declare-fun d!1029631 () Bool)

(declare-fun lt!1205331 () Int)

(declare-fun size!28456 (List!37505) Int)

(assert (=> d!1029631 (= lt!1205331 (size!28456 (list!13681 (_1!21748 lt!1205023))))))

(declare-fun size!28457 (Conc!11344) Int)

(assert (=> d!1029631 (= lt!1205331 (size!28457 (c!607906 (_1!21748 lt!1205023))))))

(assert (=> d!1029631 (= (size!28451 (_1!21748 lt!1205023)) lt!1205331)))

(declare-fun bs!565747 () Bool)

(assert (= bs!565747 d!1029631))

(assert (=> bs!565747 m!3980395))

(assert (=> bs!565747 m!3980395))

(declare-fun m!3981367 () Bool)

(assert (=> bs!565747 m!3981367))

(declare-fun m!3981369 () Bool)

(assert (=> bs!565747 m!3981369))

(assert (=> b!3526326 d!1029631))

(declare-fun b!3527043 () Bool)

(declare-fun res!1422895 () Bool)

(declare-fun e!2183258 () Bool)

(assert (=> b!3527043 (=> (not res!1422895) (not e!2183258))))

(declare-fun lt!1205332 () tuple2!37228)

(assert (=> b!3527043 (= res!1422895 (= (list!13681 (_1!21748 lt!1205332)) (_1!21751 (lexList!1482 thiss!18206 rules!2135 (list!13679 lt!1205037)))))))

(declare-fun b!3527044 () Bool)

(declare-fun e!2183259 () Bool)

(declare-fun e!2183257 () Bool)

(assert (=> b!3527044 (= e!2183259 e!2183257)))

(declare-fun res!1422893 () Bool)

(assert (=> b!3527044 (= res!1422893 (< (size!28453 (_2!21748 lt!1205332)) (size!28453 lt!1205037)))))

(assert (=> b!3527044 (=> (not res!1422893) (not e!2183257))))

(declare-fun b!3527046 () Bool)

(assert (=> b!3527046 (= e!2183258 (= (list!13679 (_2!21748 lt!1205332)) (_2!21751 (lexList!1482 thiss!18206 rules!2135 (list!13679 lt!1205037)))))))

(declare-fun b!3527047 () Bool)

(assert (=> b!3527047 (= e!2183259 (= (_2!21748 lt!1205332) lt!1205037))))

(declare-fun d!1029633 () Bool)

(assert (=> d!1029633 e!2183258))

(declare-fun res!1422894 () Bool)

(assert (=> d!1029633 (=> (not res!1422894) (not e!2183258))))

(assert (=> d!1029633 (= res!1422894 e!2183259)))

(declare-fun c!608053 () Bool)

(assert (=> d!1029633 (= c!608053 (> (size!28451 (_1!21748 lt!1205332)) 0))))

(assert (=> d!1029633 (= lt!1205332 (lexTailRecV2!1089 thiss!18206 rules!2135 lt!1205037 (BalanceConc!22301 Empty!11343) lt!1205037 (BalanceConc!22303 Empty!11344)))))

(assert (=> d!1029633 (= (lex!2399 thiss!18206 rules!2135 lt!1205037) lt!1205332)))

(declare-fun b!3527045 () Bool)

(assert (=> b!3527045 (= e!2183257 (not (isEmpty!21853 (_1!21748 lt!1205332))))))

(assert (= (and d!1029633 c!608053) b!3527044))

(assert (= (and d!1029633 (not c!608053)) b!3527047))

(assert (= (and b!3527044 res!1422893) b!3527045))

(assert (= (and d!1029633 res!1422894) b!3527043))

(assert (= (and b!3527043 res!1422895) b!3527046))

(declare-fun m!3981371 () Bool)

(assert (=> b!3527044 m!3981371))

(declare-fun m!3981373 () Bool)

(assert (=> b!3527044 m!3981373))

(declare-fun m!3981375 () Bool)

(assert (=> b!3527046 m!3981375))

(declare-fun m!3981377 () Bool)

(assert (=> b!3527046 m!3981377))

(assert (=> b!3527046 m!3981377))

(declare-fun m!3981379 () Bool)

(assert (=> b!3527046 m!3981379))

(declare-fun m!3981381 () Bool)

(assert (=> d!1029633 m!3981381))

(declare-fun m!3981383 () Bool)

(assert (=> d!1029633 m!3981383))

(declare-fun m!3981385 () Bool)

(assert (=> b!3527043 m!3981385))

(assert (=> b!3527043 m!3981377))

(assert (=> b!3527043 m!3981377))

(assert (=> b!3527043 m!3981379))

(declare-fun m!3981387 () Bool)

(assert (=> b!3527045 m!3981387))

(assert (=> b!3526326 d!1029633))

(declare-fun d!1029635 () Bool)

(declare-fun lt!1205336 () BalanceConc!22300)

(assert (=> d!1029635 (= (list!13679 lt!1205336) (printListTailRec!721 thiss!18206 (dropList!1238 lt!1205001 0) (list!13679 (BalanceConc!22301 Empty!11343))))))

(declare-fun e!2183260 () BalanceConc!22300)

(assert (=> d!1029635 (= lt!1205336 e!2183260)))

(declare-fun c!608054 () Bool)

(assert (=> d!1029635 (= c!608054 (>= 0 (size!28451 lt!1205001)))))

(declare-fun e!2183261 () Bool)

(assert (=> d!1029635 e!2183261))

(declare-fun res!1422896 () Bool)

(assert (=> d!1029635 (=> (not res!1422896) (not e!2183261))))

(assert (=> d!1029635 (= res!1422896 (>= 0 0))))

(assert (=> d!1029635 (= (printTailRec!1568 thiss!18206 lt!1205001 0 (BalanceConc!22301 Empty!11343)) lt!1205336)))

(declare-fun b!3527048 () Bool)

(assert (=> b!3527048 (= e!2183261 (<= 0 (size!28451 lt!1205001)))))

(declare-fun b!3527049 () Bool)

(assert (=> b!3527049 (= e!2183260 (BalanceConc!22301 Empty!11343))))

(declare-fun b!3527050 () Bool)

(assert (=> b!3527050 (= e!2183260 (printTailRec!1568 thiss!18206 lt!1205001 (+ 0 1) (++!9270 (BalanceConc!22301 Empty!11343) (charsOf!3498 (apply!8922 lt!1205001 0)))))))

(declare-fun lt!1205337 () List!37505)

(assert (=> b!3527050 (= lt!1205337 (list!13681 lt!1205001))))

(declare-fun lt!1205338 () Unit!53068)

(assert (=> b!3527050 (= lt!1205338 (lemmaDropApply!1196 lt!1205337 0))))

(assert (=> b!3527050 (= (head!7398 (drop!2052 lt!1205337 0)) (apply!8926 lt!1205337 0))))

(declare-fun lt!1205334 () Unit!53068)

(assert (=> b!3527050 (= lt!1205334 lt!1205338)))

(declare-fun lt!1205339 () List!37505)

(assert (=> b!3527050 (= lt!1205339 (list!13681 lt!1205001))))

(declare-fun lt!1205333 () Unit!53068)

(assert (=> b!3527050 (= lt!1205333 (lemmaDropTail!1080 lt!1205339 0))))

(assert (=> b!3527050 (= (tail!5500 (drop!2052 lt!1205339 0)) (drop!2052 lt!1205339 (+ 0 1)))))

(declare-fun lt!1205335 () Unit!53068)

(assert (=> b!3527050 (= lt!1205335 lt!1205333)))

(assert (= (and d!1029635 res!1422896) b!3527048))

(assert (= (and d!1029635 c!608054) b!3527049))

(assert (= (and d!1029635 (not c!608054)) b!3527050))

(declare-fun m!3981389 () Bool)

(assert (=> d!1029635 m!3981389))

(declare-fun m!3981391 () Bool)

(assert (=> d!1029635 m!3981391))

(assert (=> d!1029635 m!3981391))

(assert (=> d!1029635 m!3980691))

(declare-fun m!3981393 () Bool)

(assert (=> d!1029635 m!3981393))

(declare-fun m!3981395 () Bool)

(assert (=> d!1029635 m!3981395))

(assert (=> d!1029635 m!3980691))

(assert (=> b!3527048 m!3981389))

(declare-fun m!3981397 () Bool)

(assert (=> b!3527050 m!3981397))

(declare-fun m!3981399 () Bool)

(assert (=> b!3527050 m!3981399))

(declare-fun m!3981401 () Bool)

(assert (=> b!3527050 m!3981401))

(declare-fun m!3981403 () Bool)

(assert (=> b!3527050 m!3981403))

(declare-fun m!3981405 () Bool)

(assert (=> b!3527050 m!3981405))

(declare-fun m!3981407 () Bool)

(assert (=> b!3527050 m!3981407))

(declare-fun m!3981409 () Bool)

(assert (=> b!3527050 m!3981409))

(assert (=> b!3527050 m!3981407))

(declare-fun m!3981411 () Bool)

(assert (=> b!3527050 m!3981411))

(declare-fun m!3981413 () Bool)

(assert (=> b!3527050 m!3981413))

(assert (=> b!3527050 m!3981405))

(assert (=> b!3527050 m!3981413))

(assert (=> b!3527050 m!3981409))

(declare-fun m!3981415 () Bool)

(assert (=> b!3527050 m!3981415))

(assert (=> b!3527050 m!3981401))

(declare-fun m!3981417 () Bool)

(assert (=> b!3527050 m!3981417))

(declare-fun m!3981419 () Bool)

(assert (=> b!3527050 m!3981419))

(assert (=> b!3527050 m!3980975))

(assert (=> b!3526326 d!1029635))

(declare-fun b!3527052 () Bool)

(declare-fun e!2183265 () Option!7631)

(assert (=> b!3527052 (= e!2183265 None!7630)))

(declare-fun b!3527053 () Bool)

(declare-fun e!2183264 () Bool)

(declare-fun lt!1205340 () Option!7631)

(assert (=> b!3527053 (= e!2183264 (= (tag!6126 (get!12005 lt!1205340)) (tag!6126 (rule!8140 separatorToken!241))))))

(declare-fun b!3527054 () Bool)

(declare-fun e!2183263 () Option!7631)

(assert (=> b!3527054 (= e!2183263 (Some!7630 (h!42800 rules!2135)))))

(declare-fun b!3527055 () Bool)

(assert (=> b!3527055 (= e!2183263 e!2183265)))

(declare-fun c!608055 () Bool)

(assert (=> b!3527055 (= c!608055 (and ((_ is Cons!37380) rules!2135) (not (= (tag!6126 (h!42800 rules!2135)) (tag!6126 (rule!8140 separatorToken!241))))))))

(declare-fun b!3527056 () Bool)

(declare-fun lt!1205342 () Unit!53068)

(declare-fun lt!1205341 () Unit!53068)

(assert (=> b!3527056 (= lt!1205342 lt!1205341)))

(assert (=> b!3527056 (rulesInvariant!4470 thiss!18206 (t!282519 rules!2135))))

(assert (=> b!3527056 (= lt!1205341 (lemmaInvariantOnRulesThenOnTail!465 thiss!18206 (h!42800 rules!2135) (t!282519 rules!2135)))))

(assert (=> b!3527056 (= e!2183265 (getRuleFromTag!1127 thiss!18206 (t!282519 rules!2135) (tag!6126 (rule!8140 separatorToken!241))))))

(declare-fun d!1029637 () Bool)

(declare-fun e!2183262 () Bool)

(assert (=> d!1029637 e!2183262))

(declare-fun res!1422897 () Bool)

(assert (=> d!1029637 (=> res!1422897 e!2183262)))

(assert (=> d!1029637 (= res!1422897 (isEmpty!21864 lt!1205340))))

(assert (=> d!1029637 (= lt!1205340 e!2183263)))

(declare-fun c!608056 () Bool)

(assert (=> d!1029637 (= c!608056 (and ((_ is Cons!37380) rules!2135) (= (tag!6126 (h!42800 rules!2135)) (tag!6126 (rule!8140 separatorToken!241)))))))

(assert (=> d!1029637 (rulesInvariant!4470 thiss!18206 rules!2135)))

(assert (=> d!1029637 (= (getRuleFromTag!1127 thiss!18206 rules!2135 (tag!6126 (rule!8140 separatorToken!241))) lt!1205340)))

(declare-fun b!3527051 () Bool)

(assert (=> b!3527051 (= e!2183262 e!2183264)))

(declare-fun res!1422898 () Bool)

(assert (=> b!3527051 (=> (not res!1422898) (not e!2183264))))

(assert (=> b!3527051 (= res!1422898 (contains!7023 rules!2135 (get!12005 lt!1205340)))))

(assert (= (and d!1029637 c!608056) b!3527054))

(assert (= (and d!1029637 (not c!608056)) b!3527055))

(assert (= (and b!3527055 c!608055) b!3527056))

(assert (= (and b!3527055 (not c!608055)) b!3527052))

(assert (= (and d!1029637 (not res!1422897)) b!3527051))

(assert (= (and b!3527051 res!1422898) b!3527053))

(declare-fun m!3981421 () Bool)

(assert (=> b!3527053 m!3981421))

(assert (=> b!3527056 m!3981201))

(assert (=> b!3527056 m!3981203))

(declare-fun m!3981423 () Bool)

(assert (=> b!3527056 m!3981423))

(declare-fun m!3981425 () Bool)

(assert (=> d!1029637 m!3981425))

(assert (=> d!1029637 m!3980245))

(assert (=> b!3527051 m!3981421))

(assert (=> b!3527051 m!3981421))

(declare-fun m!3981427 () Bool)

(assert (=> b!3527051 m!3981427))

(assert (=> b!3526326 d!1029637))

(declare-fun d!1029639 () Bool)

(assert (=> d!1029639 (= (isDefined!5882 lt!1205003) (not (isEmpty!21864 lt!1205003)))))

(declare-fun bs!565748 () Bool)

(assert (= bs!565748 d!1029639))

(declare-fun m!3981429 () Bool)

(assert (=> bs!565748 m!3981429))

(assert (=> b!3526326 d!1029639))

(declare-fun d!1029641 () Bool)

(declare-fun lt!1205343 () Int)

(assert (=> d!1029641 (= lt!1205343 (size!28456 (list!13681 (_1!21748 lt!1205039))))))

(assert (=> d!1029641 (= lt!1205343 (size!28457 (c!607906 (_1!21748 lt!1205039))))))

(assert (=> d!1029641 (= (size!28451 (_1!21748 lt!1205039)) lt!1205343)))

(declare-fun bs!565749 () Bool)

(assert (= bs!565749 d!1029641))

(declare-fun m!3981431 () Bool)

(assert (=> bs!565749 m!3981431))

(assert (=> bs!565749 m!3981431))

(declare-fun m!3981433 () Bool)

(assert (=> bs!565749 m!3981433))

(declare-fun m!3981435 () Bool)

(assert (=> bs!565749 m!3981435))

(assert (=> b!3526326 d!1029641))

(declare-fun d!1029643 () Bool)

(declare-fun lt!1205344 () Bool)

(assert (=> d!1029643 (= lt!1205344 (select (content!5273 (usedCharacters!718 (regex!5484 (rule!8140 (h!42801 (t!282520 tokens!494)))))) lt!1205036))))

(declare-fun e!2183267 () Bool)

(assert (=> d!1029643 (= lt!1205344 e!2183267)))

(declare-fun res!1422899 () Bool)

(assert (=> d!1029643 (=> (not res!1422899) (not e!2183267))))

(assert (=> d!1029643 (= res!1422899 ((_ is Cons!37379) (usedCharacters!718 (regex!5484 (rule!8140 (h!42801 (t!282520 tokens!494)))))))))

(assert (=> d!1029643 (= (contains!7024 (usedCharacters!718 (regex!5484 (rule!8140 (h!42801 (t!282520 tokens!494))))) lt!1205036) lt!1205344)))

(declare-fun b!3527057 () Bool)

(declare-fun e!2183266 () Bool)

(assert (=> b!3527057 (= e!2183267 e!2183266)))

(declare-fun res!1422900 () Bool)

(assert (=> b!3527057 (=> res!1422900 e!2183266)))

(assert (=> b!3527057 (= res!1422900 (= (h!42799 (usedCharacters!718 (regex!5484 (rule!8140 (h!42801 (t!282520 tokens!494)))))) lt!1205036))))

(declare-fun b!3527058 () Bool)

(assert (=> b!3527058 (= e!2183266 (contains!7024 (t!282518 (usedCharacters!718 (regex!5484 (rule!8140 (h!42801 (t!282520 tokens!494)))))) lt!1205036))))

(assert (= (and d!1029643 res!1422899) b!3527057))

(assert (= (and b!3527057 (not res!1422900)) b!3527058))

(assert (=> d!1029643 m!3980089))

(declare-fun m!3981437 () Bool)

(assert (=> d!1029643 m!3981437))

(declare-fun m!3981439 () Bool)

(assert (=> d!1029643 m!3981439))

(declare-fun m!3981441 () Bool)

(assert (=> b!3527058 m!3981441))

(assert (=> b!3526326 d!1029643))

(declare-fun b!3527059 () Bool)

(declare-fun e!2183269 () List!37503)

(assert (=> b!3527059 (= e!2183269 Nil!37379)))

(declare-fun b!3527060 () Bool)

(declare-fun e!2183268 () List!37503)

(declare-fun call!254779 () List!37503)

(assert (=> b!3527060 (= e!2183268 call!254779)))

(declare-fun bm!254773 () Bool)

(declare-fun call!254780 () List!37503)

(assert (=> bm!254773 (= call!254780 call!254779)))

(declare-fun b!3527061 () Bool)

(declare-fun e!2183270 () List!37503)

(assert (=> b!3527061 (= e!2183269 e!2183270)))

(declare-fun c!608058 () Bool)

(assert (=> b!3527061 (= c!608058 ((_ is ElementMatch!10243) (regex!5484 (rule!8140 (h!42801 (t!282520 tokens!494))))))))

(declare-fun d!1029645 () Bool)

(declare-fun c!608060 () Bool)

(assert (=> d!1029645 (= c!608060 (or ((_ is EmptyExpr!10243) (regex!5484 (rule!8140 (h!42801 (t!282520 tokens!494))))) ((_ is EmptyLang!10243) (regex!5484 (rule!8140 (h!42801 (t!282520 tokens!494)))))))))

(assert (=> d!1029645 (= (usedCharacters!718 (regex!5484 (rule!8140 (h!42801 (t!282520 tokens!494))))) e!2183269)))

(declare-fun bm!254774 () Bool)

(declare-fun call!254781 () List!37503)

(declare-fun c!608057 () Bool)

(declare-fun call!254778 () List!37503)

(assert (=> bm!254774 (= call!254778 (++!9269 (ite c!608057 call!254781 call!254780) (ite c!608057 call!254780 call!254781)))))

(declare-fun b!3527062 () Bool)

(assert (=> b!3527062 (= e!2183270 (Cons!37379 (c!607904 (regex!5484 (rule!8140 (h!42801 (t!282520 tokens!494))))) Nil!37379))))

(declare-fun b!3527063 () Bool)

(declare-fun c!608059 () Bool)

(assert (=> b!3527063 (= c!608059 ((_ is Star!10243) (regex!5484 (rule!8140 (h!42801 (t!282520 tokens!494))))))))

(assert (=> b!3527063 (= e!2183270 e!2183268)))

(declare-fun b!3527064 () Bool)

(declare-fun e!2183271 () List!37503)

(assert (=> b!3527064 (= e!2183271 call!254778)))

(declare-fun b!3527065 () Bool)

(assert (=> b!3527065 (= e!2183268 e!2183271)))

(assert (=> b!3527065 (= c!608057 ((_ is Union!10243) (regex!5484 (rule!8140 (h!42801 (t!282520 tokens!494))))))))

(declare-fun b!3527066 () Bool)

(assert (=> b!3527066 (= e!2183271 call!254778)))

(declare-fun bm!254775 () Bool)

(assert (=> bm!254775 (= call!254781 (usedCharacters!718 (ite c!608057 (regOne!20999 (regex!5484 (rule!8140 (h!42801 (t!282520 tokens!494))))) (regTwo!20998 (regex!5484 (rule!8140 (h!42801 (t!282520 tokens!494))))))))))

(declare-fun bm!254776 () Bool)

(assert (=> bm!254776 (= call!254779 (usedCharacters!718 (ite c!608059 (reg!10572 (regex!5484 (rule!8140 (h!42801 (t!282520 tokens!494))))) (ite c!608057 (regTwo!20999 (regex!5484 (rule!8140 (h!42801 (t!282520 tokens!494))))) (regOne!20998 (regex!5484 (rule!8140 (h!42801 (t!282520 tokens!494)))))))))))

(assert (= (and d!1029645 c!608060) b!3527059))

(assert (= (and d!1029645 (not c!608060)) b!3527061))

(assert (= (and b!3527061 c!608058) b!3527062))

(assert (= (and b!3527061 (not c!608058)) b!3527063))

(assert (= (and b!3527063 c!608059) b!3527060))

(assert (= (and b!3527063 (not c!608059)) b!3527065))

(assert (= (and b!3527065 c!608057) b!3527066))

(assert (= (and b!3527065 (not c!608057)) b!3527064))

(assert (= (or b!3527066 b!3527064) bm!254773))

(assert (= (or b!3527066 b!3527064) bm!254775))

(assert (= (or b!3527066 b!3527064) bm!254774))

(assert (= (or b!3527060 bm!254773) bm!254776))

(declare-fun m!3981443 () Bool)

(assert (=> bm!254774 m!3981443))

(declare-fun m!3981445 () Bool)

(assert (=> bm!254775 m!3981445))

(declare-fun m!3981447 () Bool)

(assert (=> bm!254776 m!3981447))

(assert (=> b!3526326 d!1029645))

(declare-fun b!3527067 () Bool)

(declare-fun res!1422903 () Bool)

(declare-fun e!2183273 () Bool)

(assert (=> b!3527067 (=> (not res!1422903) (not e!2183273))))

(declare-fun lt!1205345 () tuple2!37228)

(assert (=> b!3527067 (= res!1422903 (= (list!13681 (_1!21748 lt!1205345)) (_1!21751 (lexList!1482 thiss!18206 rules!2135 (list!13679 lt!1205032)))))))

(declare-fun b!3527068 () Bool)

(declare-fun e!2183274 () Bool)

(declare-fun e!2183272 () Bool)

(assert (=> b!3527068 (= e!2183274 e!2183272)))

(declare-fun res!1422901 () Bool)

(assert (=> b!3527068 (= res!1422901 (< (size!28453 (_2!21748 lt!1205345)) (size!28453 lt!1205032)))))

(assert (=> b!3527068 (=> (not res!1422901) (not e!2183272))))

(declare-fun b!3527070 () Bool)

(assert (=> b!3527070 (= e!2183273 (= (list!13679 (_2!21748 lt!1205345)) (_2!21751 (lexList!1482 thiss!18206 rules!2135 (list!13679 lt!1205032)))))))

(declare-fun b!3527071 () Bool)

(assert (=> b!3527071 (= e!2183274 (= (_2!21748 lt!1205345) lt!1205032))))

(declare-fun d!1029647 () Bool)

(assert (=> d!1029647 e!2183273))

(declare-fun res!1422902 () Bool)

(assert (=> d!1029647 (=> (not res!1422902) (not e!2183273))))

(assert (=> d!1029647 (= res!1422902 e!2183274)))

(declare-fun c!608061 () Bool)

(assert (=> d!1029647 (= c!608061 (> (size!28451 (_1!21748 lt!1205345)) 0))))

(assert (=> d!1029647 (= lt!1205345 (lexTailRecV2!1089 thiss!18206 rules!2135 lt!1205032 (BalanceConc!22301 Empty!11343) lt!1205032 (BalanceConc!22303 Empty!11344)))))

(assert (=> d!1029647 (= (lex!2399 thiss!18206 rules!2135 lt!1205032) lt!1205345)))

(declare-fun b!3527069 () Bool)

(assert (=> b!3527069 (= e!2183272 (not (isEmpty!21853 (_1!21748 lt!1205345))))))

(assert (= (and d!1029647 c!608061) b!3527068))

(assert (= (and d!1029647 (not c!608061)) b!3527071))

(assert (= (and b!3527068 res!1422901) b!3527069))

(assert (= (and d!1029647 res!1422902) b!3527067))

(assert (= (and b!3527067 res!1422903) b!3527070))

(declare-fun m!3981449 () Bool)

(assert (=> b!3527068 m!3981449))

(declare-fun m!3981451 () Bool)

(assert (=> b!3527068 m!3981451))

(declare-fun m!3981453 () Bool)

(assert (=> b!3527070 m!3981453))

(declare-fun m!3981455 () Bool)

(assert (=> b!3527070 m!3981455))

(assert (=> b!3527070 m!3981455))

(declare-fun m!3981457 () Bool)

(assert (=> b!3527070 m!3981457))

(declare-fun m!3981459 () Bool)

(assert (=> d!1029647 m!3981459))

(declare-fun m!3981461 () Bool)

(assert (=> d!1029647 m!3981461))

(declare-fun m!3981463 () Bool)

(assert (=> b!3527067 m!3981463))

(assert (=> b!3527067 m!3981455))

(assert (=> b!3527067 m!3981455))

(assert (=> b!3527067 m!3981457))

(declare-fun m!3981465 () Bool)

(assert (=> b!3527069 m!3981465))

(assert (=> b!3526326 d!1029647))

(declare-fun d!1029649 () Bool)

(assert (=> d!1029649 (= (head!7397 lt!1205031) (h!42799 lt!1205031))))

(assert (=> b!3526326 d!1029649))

(declare-fun d!1029651 () Bool)

(declare-fun lt!1205348 () Int)

(assert (=> d!1029651 (>= lt!1205348 0)))

(declare-fun e!2183277 () Int)

(assert (=> d!1029651 (= lt!1205348 e!2183277)))

(declare-fun c!608064 () Bool)

(assert (=> d!1029651 (= c!608064 ((_ is Nil!37379) lt!1205041))))

(assert (=> d!1029651 (= (size!28450 lt!1205041) lt!1205348)))

(declare-fun b!3527076 () Bool)

(assert (=> b!3527076 (= e!2183277 0)))

(declare-fun b!3527077 () Bool)

(assert (=> b!3527077 (= e!2183277 (+ 1 (size!28450 (t!282518 lt!1205041))))))

(assert (= (and d!1029651 c!608064) b!3527076))

(assert (= (and d!1029651 (not c!608064)) b!3527077))

(declare-fun m!3981467 () Bool)

(assert (=> b!3527077 m!3981467))

(assert (=> b!3526326 d!1029651))

(declare-fun d!1029653 () Bool)

(declare-fun lt!1205349 () Bool)

(assert (=> d!1029653 (= lt!1205349 (select (content!5275 rules!2135) (rule!8140 separatorToken!241)))))

(declare-fun e!2183278 () Bool)

(assert (=> d!1029653 (= lt!1205349 e!2183278)))

(declare-fun res!1422905 () Bool)

(assert (=> d!1029653 (=> (not res!1422905) (not e!2183278))))

(assert (=> d!1029653 (= res!1422905 ((_ is Cons!37380) rules!2135))))

(assert (=> d!1029653 (= (contains!7023 rules!2135 (rule!8140 separatorToken!241)) lt!1205349)))

(declare-fun b!3527078 () Bool)

(declare-fun e!2183279 () Bool)

(assert (=> b!3527078 (= e!2183278 e!2183279)))

(declare-fun res!1422904 () Bool)

(assert (=> b!3527078 (=> res!1422904 e!2183279)))

(assert (=> b!3527078 (= res!1422904 (= (h!42800 rules!2135) (rule!8140 separatorToken!241)))))

(declare-fun b!3527079 () Bool)

(assert (=> b!3527079 (= e!2183279 (contains!7023 (t!282519 rules!2135) (rule!8140 separatorToken!241)))))

(assert (= (and d!1029653 res!1422905) b!3527078))

(assert (= (and b!3527078 (not res!1422904)) b!3527079))

(assert (=> d!1029653 m!3980389))

(declare-fun m!3981469 () Bool)

(assert (=> d!1029653 m!3981469))

(declare-fun m!3981471 () Bool)

(assert (=> b!3527079 m!3981471))

(assert (=> b!3526326 d!1029653))

(declare-fun b!3527080 () Bool)

(declare-fun e!2183281 () List!37503)

(assert (=> b!3527080 (= e!2183281 Nil!37379)))

(declare-fun b!3527081 () Bool)

(declare-fun e!2183280 () List!37503)

(declare-fun call!254783 () List!37503)

(assert (=> b!3527081 (= e!2183280 call!254783)))

(declare-fun bm!254777 () Bool)

(declare-fun call!254784 () List!37503)

(assert (=> bm!254777 (= call!254784 call!254783)))

(declare-fun b!3527082 () Bool)

(declare-fun e!2183282 () List!37503)

(assert (=> b!3527082 (= e!2183281 e!2183282)))

(declare-fun c!608066 () Bool)

(assert (=> b!3527082 (= c!608066 ((_ is ElementMatch!10243) (regex!5484 (rule!8140 separatorToken!241))))))

(declare-fun d!1029655 () Bool)

(declare-fun c!608068 () Bool)

(assert (=> d!1029655 (= c!608068 (or ((_ is EmptyExpr!10243) (regex!5484 (rule!8140 separatorToken!241))) ((_ is EmptyLang!10243) (regex!5484 (rule!8140 separatorToken!241)))))))

(assert (=> d!1029655 (= (usedCharacters!718 (regex!5484 (rule!8140 separatorToken!241))) e!2183281)))

(declare-fun call!254782 () List!37503)

(declare-fun c!608065 () Bool)

(declare-fun bm!254778 () Bool)

(declare-fun call!254785 () List!37503)

(assert (=> bm!254778 (= call!254782 (++!9269 (ite c!608065 call!254785 call!254784) (ite c!608065 call!254784 call!254785)))))

(declare-fun b!3527083 () Bool)

(assert (=> b!3527083 (= e!2183282 (Cons!37379 (c!607904 (regex!5484 (rule!8140 separatorToken!241))) Nil!37379))))

(declare-fun b!3527084 () Bool)

(declare-fun c!608067 () Bool)

(assert (=> b!3527084 (= c!608067 ((_ is Star!10243) (regex!5484 (rule!8140 separatorToken!241))))))

(assert (=> b!3527084 (= e!2183282 e!2183280)))

(declare-fun b!3527085 () Bool)

(declare-fun e!2183283 () List!37503)

(assert (=> b!3527085 (= e!2183283 call!254782)))

(declare-fun b!3527086 () Bool)

(assert (=> b!3527086 (= e!2183280 e!2183283)))

(assert (=> b!3527086 (= c!608065 ((_ is Union!10243) (regex!5484 (rule!8140 separatorToken!241))))))

(declare-fun b!3527087 () Bool)

(assert (=> b!3527087 (= e!2183283 call!254782)))

(declare-fun bm!254779 () Bool)

(assert (=> bm!254779 (= call!254785 (usedCharacters!718 (ite c!608065 (regOne!20999 (regex!5484 (rule!8140 separatorToken!241))) (regTwo!20998 (regex!5484 (rule!8140 separatorToken!241))))))))

(declare-fun bm!254780 () Bool)

(assert (=> bm!254780 (= call!254783 (usedCharacters!718 (ite c!608067 (reg!10572 (regex!5484 (rule!8140 separatorToken!241))) (ite c!608065 (regTwo!20999 (regex!5484 (rule!8140 separatorToken!241))) (regOne!20998 (regex!5484 (rule!8140 separatorToken!241)))))))))

(assert (= (and d!1029655 c!608068) b!3527080))

(assert (= (and d!1029655 (not c!608068)) b!3527082))

(assert (= (and b!3527082 c!608066) b!3527083))

(assert (= (and b!3527082 (not c!608066)) b!3527084))

(assert (= (and b!3527084 c!608067) b!3527081))

(assert (= (and b!3527084 (not c!608067)) b!3527086))

(assert (= (and b!3527086 c!608065) b!3527087))

(assert (= (and b!3527086 (not c!608065)) b!3527085))

(assert (= (or b!3527087 b!3527085) bm!254777))

(assert (= (or b!3527087 b!3527085) bm!254779))

(assert (= (or b!3527087 b!3527085) bm!254778))

(assert (= (or b!3527081 bm!254777) bm!254780))

(declare-fun m!3981473 () Bool)

(assert (=> bm!254778 m!3981473))

(declare-fun m!3981475 () Bool)

(assert (=> bm!254779 m!3981475))

(declare-fun m!3981477 () Bool)

(assert (=> bm!254780 m!3981477))

(assert (=> b!3526326 d!1029655))

(declare-fun d!1029657 () Bool)

(declare-fun lt!1205350 () Int)

(assert (=> d!1029657 (>= lt!1205350 0)))

(declare-fun e!2183284 () Int)

(assert (=> d!1029657 (= lt!1205350 e!2183284)))

(declare-fun c!608069 () Bool)

(assert (=> d!1029657 (= c!608069 ((_ is Nil!37379) lt!1205000))))

(assert (=> d!1029657 (= (size!28450 lt!1205000) lt!1205350)))

(declare-fun b!3527088 () Bool)

(assert (=> b!3527088 (= e!2183284 0)))

(declare-fun b!3527089 () Bool)

(assert (=> b!3527089 (= e!2183284 (+ 1 (size!28450 (t!282518 lt!1205000))))))

(assert (= (and d!1029657 c!608069) b!3527088))

(assert (= (and d!1029657 (not c!608069)) b!3527089))

(declare-fun m!3981479 () Bool)

(assert (=> b!3527089 m!3981479))

(assert (=> b!3526326 d!1029657))

(declare-fun b!3527090 () Bool)

(declare-fun res!1422912 () Bool)

(declare-fun e!2183288 () Bool)

(assert (=> b!3527090 (=> (not res!1422912) (not e!2183288))))

(declare-fun lt!1205351 () Option!7632)

(assert (=> b!3527090 (= res!1422912 (= (rule!8140 (_1!21749 (get!12006 lt!1205351))) (rule!8140 (h!42801 tokens!494))))))

(declare-fun b!3527091 () Bool)

(declare-fun e!2183285 () Bool)

(assert (=> b!3527091 (= e!2183285 (matchR!4827 (regex!5484 (rule!8140 (h!42801 tokens!494))) (_1!21752 (findLongestMatchInner!942 (regex!5484 (rule!8140 (h!42801 tokens!494))) Nil!37379 (size!28450 Nil!37379) lt!1205000 lt!1205000 (size!28450 lt!1205000)))))))

(declare-fun b!3527092 () Bool)

(assert (=> b!3527092 (= e!2183288 (= (size!28449 (_1!21749 (get!12006 lt!1205351))) (size!28450 (originalCharacters!6198 (_1!21749 (get!12006 lt!1205351))))))))

(declare-fun b!3527093 () Bool)

(declare-fun e!2183287 () Option!7632)

(assert (=> b!3527093 (= e!2183287 None!7631)))

(declare-fun d!1029659 () Bool)

(declare-fun e!2183286 () Bool)

(assert (=> d!1029659 e!2183286))

(declare-fun res!1422906 () Bool)

(assert (=> d!1029659 (=> res!1422906 e!2183286)))

(assert (=> d!1029659 (= res!1422906 (isEmpty!21865 lt!1205351))))

(assert (=> d!1029659 (= lt!1205351 e!2183287)))

(declare-fun c!608070 () Bool)

(declare-fun lt!1205355 () tuple2!37236)

(assert (=> d!1029659 (= c!608070 (isEmpty!21858 (_1!21752 lt!1205355)))))

(assert (=> d!1029659 (= lt!1205355 (findLongestMatch!857 (regex!5484 (rule!8140 (h!42801 tokens!494))) lt!1205000))))

(assert (=> d!1029659 (ruleValid!1775 thiss!18206 (rule!8140 (h!42801 tokens!494)))))

(assert (=> d!1029659 (= (maxPrefixOneRule!1780 thiss!18206 (rule!8140 (h!42801 tokens!494)) lt!1205000) lt!1205351)))

(declare-fun b!3527094 () Bool)

(declare-fun res!1422909 () Bool)

(assert (=> b!3527094 (=> (not res!1422909) (not e!2183288))))

(assert (=> b!3527094 (= res!1422909 (= (++!9269 (list!13679 (charsOf!3498 (_1!21749 (get!12006 lt!1205351)))) (_2!21749 (get!12006 lt!1205351))) lt!1205000))))

(declare-fun b!3527095 () Bool)

(assert (=> b!3527095 (= e!2183286 e!2183288)))

(declare-fun res!1422907 () Bool)

(assert (=> b!3527095 (=> (not res!1422907) (not e!2183288))))

(assert (=> b!3527095 (= res!1422907 (matchR!4827 (regex!5484 (rule!8140 (h!42801 tokens!494))) (list!13679 (charsOf!3498 (_1!21749 (get!12006 lt!1205351))))))))

(declare-fun b!3527096 () Bool)

(declare-fun res!1422911 () Bool)

(assert (=> b!3527096 (=> (not res!1422911) (not e!2183288))))

(assert (=> b!3527096 (= res!1422911 (= (value!176754 (_1!21749 (get!12006 lt!1205351))) (apply!8923 (transformation!5484 (rule!8140 (_1!21749 (get!12006 lt!1205351)))) (seqFromList!4021 (originalCharacters!6198 (_1!21749 (get!12006 lt!1205351)))))))))

(declare-fun b!3527097 () Bool)

(declare-fun res!1422908 () Bool)

(assert (=> b!3527097 (=> (not res!1422908) (not e!2183288))))

(assert (=> b!3527097 (= res!1422908 (< (size!28450 (_2!21749 (get!12006 lt!1205351))) (size!28450 lt!1205000)))))

(declare-fun b!3527098 () Bool)

(assert (=> b!3527098 (= e!2183287 (Some!7631 (tuple2!37231 (Token!10335 (apply!8923 (transformation!5484 (rule!8140 (h!42801 tokens!494))) (seqFromList!4021 (_1!21752 lt!1205355))) (rule!8140 (h!42801 tokens!494)) (size!28453 (seqFromList!4021 (_1!21752 lt!1205355))) (_1!21752 lt!1205355)) (_2!21752 lt!1205355))))))

(declare-fun lt!1205354 () Unit!53068)

(assert (=> b!3527098 (= lt!1205354 (longestMatchIsAcceptedByMatchOrIsEmpty!915 (regex!5484 (rule!8140 (h!42801 tokens!494))) lt!1205000))))

(declare-fun res!1422910 () Bool)

(assert (=> b!3527098 (= res!1422910 (isEmpty!21858 (_1!21752 (findLongestMatchInner!942 (regex!5484 (rule!8140 (h!42801 tokens!494))) Nil!37379 (size!28450 Nil!37379) lt!1205000 lt!1205000 (size!28450 lt!1205000)))))))

(assert (=> b!3527098 (=> res!1422910 e!2183285)))

(assert (=> b!3527098 e!2183285))

(declare-fun lt!1205352 () Unit!53068)

(assert (=> b!3527098 (= lt!1205352 lt!1205354)))

(declare-fun lt!1205353 () Unit!53068)

(assert (=> b!3527098 (= lt!1205353 (lemmaSemiInverse!1294 (transformation!5484 (rule!8140 (h!42801 tokens!494))) (seqFromList!4021 (_1!21752 lt!1205355))))))

(assert (= (and d!1029659 c!608070) b!3527093))

(assert (= (and d!1029659 (not c!608070)) b!3527098))

(assert (= (and b!3527098 (not res!1422910)) b!3527091))

(assert (= (and d!1029659 (not res!1422906)) b!3527095))

(assert (= (and b!3527095 res!1422907) b!3527094))

(assert (= (and b!3527094 res!1422909) b!3527097))

(assert (= (and b!3527097 res!1422908) b!3527090))

(assert (= (and b!3527090 res!1422912) b!3527096))

(assert (= (and b!3527096 res!1422911) b!3527092))

(declare-fun m!3981483 () Bool)

(assert (=> b!3527090 m!3981483))

(assert (=> b!3527094 m!3981483))

(declare-fun m!3981485 () Bool)

(assert (=> b!3527094 m!3981485))

(assert (=> b!3527094 m!3981485))

(declare-fun m!3981489 () Bool)

(assert (=> b!3527094 m!3981489))

(assert (=> b!3527094 m!3981489))

(declare-fun m!3981491 () Bool)

(assert (=> b!3527094 m!3981491))

(assert (=> b!3527091 m!3981303))

(assert (=> b!3527091 m!3980093))

(assert (=> b!3527091 m!3981303))

(assert (=> b!3527091 m!3980093))

(declare-fun m!3981493 () Bool)

(assert (=> b!3527091 m!3981493))

(declare-fun m!3981495 () Bool)

(assert (=> b!3527091 m!3981495))

(assert (=> b!3527092 m!3981483))

(declare-fun m!3981497 () Bool)

(assert (=> b!3527092 m!3981497))

(assert (=> b!3527098 m!3980093))

(declare-fun m!3981499 () Bool)

(assert (=> b!3527098 m!3981499))

(declare-fun m!3981501 () Bool)

(assert (=> b!3527098 m!3981501))

(assert (=> b!3527098 m!3981499))

(declare-fun m!3981503 () Bool)

(assert (=> b!3527098 m!3981503))

(declare-fun m!3981505 () Bool)

(assert (=> b!3527098 m!3981505))

(assert (=> b!3527098 m!3981499))

(declare-fun m!3981507 () Bool)

(assert (=> b!3527098 m!3981507))

(assert (=> b!3527098 m!3981303))

(assert (=> b!3527098 m!3981499))

(assert (=> b!3527098 m!3981303))

(assert (=> b!3527098 m!3980093))

(assert (=> b!3527098 m!3981493))

(declare-fun m!3981509 () Bool)

(assert (=> b!3527098 m!3981509))

(assert (=> b!3527096 m!3981483))

(declare-fun m!3981511 () Bool)

(assert (=> b!3527096 m!3981511))

(assert (=> b!3527096 m!3981511))

(declare-fun m!3981513 () Bool)

(assert (=> b!3527096 m!3981513))

(declare-fun m!3981517 () Bool)

(assert (=> d!1029659 m!3981517))

(declare-fun m!3981519 () Bool)

(assert (=> d!1029659 m!3981519))

(declare-fun m!3981523 () Bool)

(assert (=> d!1029659 m!3981523))

(declare-fun m!3981525 () Bool)

(assert (=> d!1029659 m!3981525))

(assert (=> b!3527095 m!3981483))

(assert (=> b!3527095 m!3981485))

(assert (=> b!3527095 m!3981485))

(assert (=> b!3527095 m!3981489))

(assert (=> b!3527095 m!3981489))

(declare-fun m!3981531 () Bool)

(assert (=> b!3527095 m!3981531))

(assert (=> b!3527097 m!3981483))

(declare-fun m!3981537 () Bool)

(assert (=> b!3527097 m!3981537))

(assert (=> b!3527097 m!3980093))

(assert (=> b!3526326 d!1029659))

(declare-fun d!1029665 () Bool)

(assert (=> d!1029665 (= (isDefined!5882 lt!1205011) (not (isEmpty!21864 lt!1205011)))))

(declare-fun bs!565752 () Bool)

(assert (= bs!565752 d!1029665))

(declare-fun m!3981541 () Bool)

(assert (=> bs!565752 m!3981541))

(assert (=> b!3526326 d!1029665))

(declare-fun d!1029667 () Bool)

(declare-fun e!2183291 () Bool)

(assert (=> d!1029667 e!2183291))

(declare-fun res!1422916 () Bool)

(assert (=> d!1029667 (=> (not res!1422916) (not e!2183291))))

(assert (=> d!1029667 (= res!1422916 (isDefined!5882 (getRuleFromTag!1127 thiss!18206 rules!2135 (tag!6126 (rule!8140 (h!42801 tokens!494))))))))

(declare-fun lt!1205361 () Unit!53068)

(assert (=> d!1029667 (= lt!1205361 (choose!20486 thiss!18206 rules!2135 lt!1205000 (h!42801 tokens!494)))))

(assert (=> d!1029667 (rulesInvariant!4470 thiss!18206 rules!2135)))

(assert (=> d!1029667 (= (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1127 thiss!18206 rules!2135 lt!1205000 (h!42801 tokens!494)) lt!1205361)))

(declare-fun b!3527102 () Bool)

(declare-fun res!1422917 () Bool)

(assert (=> b!3527102 (=> (not res!1422917) (not e!2183291))))

(assert (=> b!3527102 (= res!1422917 (matchR!4827 (regex!5484 (get!12005 (getRuleFromTag!1127 thiss!18206 rules!2135 (tag!6126 (rule!8140 (h!42801 tokens!494)))))) (list!13679 (charsOf!3498 (h!42801 tokens!494)))))))

(declare-fun b!3527103 () Bool)

(assert (=> b!3527103 (= e!2183291 (= (rule!8140 (h!42801 tokens!494)) (get!12005 (getRuleFromTag!1127 thiss!18206 rules!2135 (tag!6126 (rule!8140 (h!42801 tokens!494)))))))))

(assert (= (and d!1029667 res!1422916) b!3527102))

(assert (= (and b!3527102 res!1422917) b!3527103))

(assert (=> d!1029667 m!3980103))

(assert (=> d!1029667 m!3980103))

(declare-fun m!3981547 () Bool)

(assert (=> d!1029667 m!3981547))

(declare-fun m!3981551 () Bool)

(assert (=> d!1029667 m!3981551))

(assert (=> d!1029667 m!3980245))

(assert (=> b!3527102 m!3980167))

(declare-fun m!3981555 () Bool)

(assert (=> b!3527102 m!3981555))

(assert (=> b!3527102 m!3980165))

(assert (=> b!3527102 m!3980167))

(assert (=> b!3527102 m!3980103))

(assert (=> b!3527102 m!3980103))

(declare-fun m!3981559 () Bool)

(assert (=> b!3527102 m!3981559))

(assert (=> b!3527102 m!3980165))

(assert (=> b!3527103 m!3980103))

(assert (=> b!3527103 m!3980103))

(assert (=> b!3527103 m!3981559))

(assert (=> b!3526326 d!1029667))

(declare-fun d!1029673 () Bool)

(assert (=> d!1029673 (= (maxPrefixOneRule!1780 thiss!18206 (rule!8140 (h!42801 (t!282520 tokens!494))) lt!1205041) (Some!7631 (tuple2!37231 (Token!10335 (apply!8923 (transformation!5484 (rule!8140 (h!42801 (t!282520 tokens!494)))) (seqFromList!4021 lt!1205041)) (rule!8140 (h!42801 (t!282520 tokens!494))) (size!28450 lt!1205041) lt!1205041) Nil!37379)))))

(declare-fun lt!1205364 () Unit!53068)

(assert (=> d!1029673 (= lt!1205364 (choose!20487 thiss!18206 rules!2135 lt!1205041 lt!1205041 Nil!37379 (rule!8140 (h!42801 (t!282520 tokens!494)))))))

(assert (=> d!1029673 (not (isEmpty!21855 rules!2135))))

(assert (=> d!1029673 (= (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!873 thiss!18206 rules!2135 lt!1205041 lt!1205041 Nil!37379 (rule!8140 (h!42801 (t!282520 tokens!494)))) lt!1205364)))

(declare-fun bs!565754 () Bool)

(assert (= bs!565754 d!1029673))

(assert (=> bs!565754 m!3980159))

(assert (=> bs!565754 m!3980079))

(assert (=> bs!565754 m!3980099))

(assert (=> bs!565754 m!3980067))

(assert (=> bs!565754 m!3980125))

(assert (=> bs!565754 m!3980079))

(declare-fun m!3981563 () Bool)

(assert (=> bs!565754 m!3981563))

(assert (=> b!3526326 d!1029673))

(declare-fun d!1029677 () Bool)

(declare-fun e!2183294 () Bool)

(assert (=> d!1029677 e!2183294))

(declare-fun res!1422920 () Bool)

(assert (=> d!1029677 (=> (not res!1422920) (not e!2183294))))

(declare-fun lt!1205365 () List!37503)

(assert (=> d!1029677 (= res!1422920 (= (content!5273 lt!1205365) ((_ map or) (content!5273 (++!9269 lt!1205000 lt!1205031)) (content!5273 lt!1205020))))))

(declare-fun e!2183293 () List!37503)

(assert (=> d!1029677 (= lt!1205365 e!2183293)))

(declare-fun c!608071 () Bool)

(assert (=> d!1029677 (= c!608071 ((_ is Nil!37379) (++!9269 lt!1205000 lt!1205031)))))

(assert (=> d!1029677 (= (++!9269 (++!9269 lt!1205000 lt!1205031) lt!1205020) lt!1205365)))

(declare-fun b!3527106 () Bool)

(assert (=> b!3527106 (= e!2183293 lt!1205020)))

(declare-fun b!3527108 () Bool)

(declare-fun res!1422921 () Bool)

(assert (=> b!3527108 (=> (not res!1422921) (not e!2183294))))

(assert (=> b!3527108 (= res!1422921 (= (size!28450 lt!1205365) (+ (size!28450 (++!9269 lt!1205000 lt!1205031)) (size!28450 lt!1205020))))))

(declare-fun b!3527107 () Bool)

(assert (=> b!3527107 (= e!2183293 (Cons!37379 (h!42799 (++!9269 lt!1205000 lt!1205031)) (++!9269 (t!282518 (++!9269 lt!1205000 lt!1205031)) lt!1205020)))))

(declare-fun b!3527109 () Bool)

(assert (=> b!3527109 (= e!2183294 (or (not (= lt!1205020 Nil!37379)) (= lt!1205365 (++!9269 lt!1205000 lt!1205031))))))

(assert (= (and d!1029677 c!608071) b!3527106))

(assert (= (and d!1029677 (not c!608071)) b!3527107))

(assert (= (and d!1029677 res!1422920) b!3527108))

(assert (= (and b!3527108 res!1422921) b!3527109))

(declare-fun m!3981565 () Bool)

(assert (=> d!1029677 m!3981565))

(assert (=> d!1029677 m!3980241))

(declare-fun m!3981567 () Bool)

(assert (=> d!1029677 m!3981567))

(assert (=> d!1029677 m!3980319))

(declare-fun m!3981569 () Bool)

(assert (=> b!3527108 m!3981569))

(assert (=> b!3527108 m!3980241))

(declare-fun m!3981571 () Bool)

(assert (=> b!3527108 m!3981571))

(assert (=> b!3527108 m!3980323))

(declare-fun m!3981573 () Bool)

(assert (=> b!3527107 m!3981573))

(assert (=> b!3526299 d!1029677))

(declare-fun d!1029679 () Bool)

(declare-fun e!2183296 () Bool)

(assert (=> d!1029679 e!2183296))

(declare-fun res!1422922 () Bool)

(assert (=> d!1029679 (=> (not res!1422922) (not e!2183296))))

(declare-fun lt!1205366 () List!37503)

(assert (=> d!1029679 (= res!1422922 (= (content!5273 lt!1205366) ((_ map or) (content!5273 lt!1205000) (content!5273 lt!1205031))))))

(declare-fun e!2183295 () List!37503)

(assert (=> d!1029679 (= lt!1205366 e!2183295)))

(declare-fun c!608072 () Bool)

(assert (=> d!1029679 (= c!608072 ((_ is Nil!37379) lt!1205000))))

(assert (=> d!1029679 (= (++!9269 lt!1205000 lt!1205031) lt!1205366)))

(declare-fun b!3527110 () Bool)

(assert (=> b!3527110 (= e!2183295 lt!1205031)))

(declare-fun b!3527112 () Bool)

(declare-fun res!1422923 () Bool)

(assert (=> b!3527112 (=> (not res!1422923) (not e!2183296))))

(assert (=> b!3527112 (= res!1422923 (= (size!28450 lt!1205366) (+ (size!28450 lt!1205000) (size!28450 lt!1205031))))))

(declare-fun b!3527111 () Bool)

(assert (=> b!3527111 (= e!2183295 (Cons!37379 (h!42799 lt!1205000) (++!9269 (t!282518 lt!1205000) lt!1205031)))))

(declare-fun b!3527113 () Bool)

(assert (=> b!3527113 (= e!2183296 (or (not (= lt!1205031 Nil!37379)) (= lt!1205366 lt!1205000)))))

(assert (= (and d!1029679 c!608072) b!3527110))

(assert (= (and d!1029679 (not c!608072)) b!3527111))

(assert (= (and d!1029679 res!1422922) b!3527112))

(assert (= (and b!3527112 res!1422923) b!3527113))

(declare-fun m!3981575 () Bool)

(assert (=> d!1029679 m!3981575))

(assert (=> d!1029679 m!3980615))

(assert (=> d!1029679 m!3980299))

(declare-fun m!3981577 () Bool)

(assert (=> b!3527112 m!3981577))

(assert (=> b!3527112 m!3980093))

(assert (=> b!3527112 m!3980303))

(declare-fun m!3981579 () Bool)

(assert (=> b!3527111 m!3981579))

(assert (=> b!3526299 d!1029679))

(declare-fun d!1029681 () Bool)

(declare-fun res!1422928 () Bool)

(declare-fun e!2183301 () Bool)

(assert (=> d!1029681 (=> res!1422928 e!2183301)))

(assert (=> d!1029681 (= res!1422928 ((_ is Nil!37381) tokens!494))))

(assert (=> d!1029681 (= (forall!8045 tokens!494 lambda!122888) e!2183301)))

(declare-fun b!3527118 () Bool)

(declare-fun e!2183302 () Bool)

(assert (=> b!3527118 (= e!2183301 e!2183302)))

(declare-fun res!1422929 () Bool)

(assert (=> b!3527118 (=> (not res!1422929) (not e!2183302))))

(assert (=> b!3527118 (= res!1422929 (dynLambda!15950 lambda!122888 (h!42801 tokens!494)))))

(declare-fun b!3527119 () Bool)

(assert (=> b!3527119 (= e!2183302 (forall!8045 (t!282520 tokens!494) lambda!122888))))

(assert (= (and d!1029681 (not res!1422928)) b!3527118))

(assert (= (and b!3527118 res!1422929) b!3527119))

(declare-fun b_lambda!103123 () Bool)

(assert (=> (not b_lambda!103123) (not b!3527118)))

(assert (=> b!3527118 m!3980657))

(declare-fun m!3981581 () Bool)

(assert (=> b!3527119 m!3981581))

(assert (=> b!3526298 d!1029681))

(declare-fun d!1029683 () Bool)

(declare-fun lt!1205367 () Bool)

(assert (=> d!1029683 (= lt!1205367 (isEmpty!21858 (list!13679 (_2!21748 lt!1205039))))))

(assert (=> d!1029683 (= lt!1205367 (isEmpty!21863 (c!607905 (_2!21748 lt!1205039))))))

(assert (=> d!1029683 (= (isEmpty!21854 (_2!21748 lt!1205039)) lt!1205367)))

(declare-fun bs!565755 () Bool)

(assert (= bs!565755 d!1029683))

(declare-fun m!3981583 () Bool)

(assert (=> bs!565755 m!3981583))

(assert (=> bs!565755 m!3981583))

(declare-fun m!3981585 () Bool)

(assert (=> bs!565755 m!3981585))

(declare-fun m!3981587 () Bool)

(assert (=> bs!565755 m!3981587))

(assert (=> b!3526319 d!1029683))

(declare-fun bs!565764 () Bool)

(declare-fun d!1029685 () Bool)

(assert (= bs!565764 (and d!1029685 b!3526298)))

(declare-fun lambda!122899 () Int)

(assert (=> bs!565764 (not (= lambda!122899 lambda!122888))))

(declare-fun bs!565765 () Bool)

(assert (= bs!565765 (and d!1029685 b!3526326)))

(assert (=> bs!565765 (= lambda!122899 lambda!122889)))

(declare-fun b!3527286 () Bool)

(declare-fun e!2183407 () Bool)

(assert (=> b!3527286 (= e!2183407 true)))

(declare-fun b!3527285 () Bool)

(declare-fun e!2183406 () Bool)

(assert (=> b!3527285 (= e!2183406 e!2183407)))

(declare-fun b!3527284 () Bool)

(declare-fun e!2183405 () Bool)

(assert (=> b!3527284 (= e!2183405 e!2183406)))

(assert (=> d!1029685 e!2183405))

(assert (= b!3527285 b!3527286))

(assert (= b!3527284 b!3527285))

(assert (= (and d!1029685 ((_ is Cons!37380) rules!2135)) b!3527284))

(assert (=> b!3527286 (< (dynLambda!15944 order!20141 (toValue!7740 (transformation!5484 (h!42800 rules!2135)))) (dynLambda!15945 order!20143 lambda!122899))))

(assert (=> b!3527286 (< (dynLambda!15946 order!20145 (toChars!7599 (transformation!5484 (h!42800 rules!2135)))) (dynLambda!15945 order!20143 lambda!122899))))

(assert (=> d!1029685 true))

(declare-fun e!2183404 () Bool)

(assert (=> d!1029685 e!2183404))

(declare-fun res!1422981 () Bool)

(assert (=> d!1029685 (=> (not res!1422981) (not e!2183404))))

(declare-fun lt!1205423 () Bool)

(assert (=> d!1029685 (= res!1422981 (= lt!1205423 (forall!8045 (list!13681 (seqFromList!4022 tokens!494)) lambda!122899)))))

(declare-fun forall!8047 (BalanceConc!22302 Int) Bool)

(assert (=> d!1029685 (= lt!1205423 (forall!8047 (seqFromList!4022 tokens!494) lambda!122899))))

(assert (=> d!1029685 (not (isEmpty!21855 rules!2135))))

(assert (=> d!1029685 (= (rulesProduceEachTokenIndividually!1524 thiss!18206 rules!2135 (seqFromList!4022 tokens!494)) lt!1205423)))

(declare-fun b!3527283 () Bool)

(declare-fun rulesProduceEachTokenIndividuallyList!1889 (LexerInterface!5073 List!37504 List!37505) Bool)

(assert (=> b!3527283 (= e!2183404 (= lt!1205423 (rulesProduceEachTokenIndividuallyList!1889 thiss!18206 rules!2135 (list!13681 (seqFromList!4022 tokens!494)))))))

(assert (= (and d!1029685 res!1422981) b!3527283))

(assert (=> d!1029685 m!3980193))

(declare-fun m!3981813 () Bool)

(assert (=> d!1029685 m!3981813))

(assert (=> d!1029685 m!3981813))

(declare-fun m!3981815 () Bool)

(assert (=> d!1029685 m!3981815))

(assert (=> d!1029685 m!3980193))

(declare-fun m!3981817 () Bool)

(assert (=> d!1029685 m!3981817))

(assert (=> d!1029685 m!3980159))

(assert (=> b!3527283 m!3980193))

(assert (=> b!3527283 m!3981813))

(assert (=> b!3527283 m!3981813))

(declare-fun m!3981819 () Bool)

(assert (=> b!3527283 m!3981819))

(assert (=> b!3526318 d!1029685))

(declare-fun d!1029735 () Bool)

(declare-fun fromListB!1851 (List!37505) BalanceConc!22302)

(assert (=> d!1029735 (= (seqFromList!4022 tokens!494) (fromListB!1851 tokens!494))))

(declare-fun bs!565766 () Bool)

(assert (= bs!565766 d!1029735))

(declare-fun m!3981821 () Bool)

(assert (=> bs!565766 m!3981821))

(assert (=> b!3526318 d!1029735))

(declare-fun d!1029737 () Bool)

(declare-fun lt!1205424 () Token!10334)

(assert (=> d!1029737 (= lt!1205424 (apply!8926 (list!13681 (_1!21748 lt!1205039)) 0))))

(assert (=> d!1029737 (= lt!1205424 (apply!8927 (c!607906 (_1!21748 lt!1205039)) 0))))

(declare-fun e!2183408 () Bool)

(assert (=> d!1029737 e!2183408))

(declare-fun res!1422982 () Bool)

(assert (=> d!1029737 (=> (not res!1422982) (not e!2183408))))

(assert (=> d!1029737 (= res!1422982 (<= 0 0))))

(assert (=> d!1029737 (= (apply!8922 (_1!21748 lt!1205039) 0) lt!1205424)))

(declare-fun b!3527287 () Bool)

(assert (=> b!3527287 (= e!2183408 (< 0 (size!28451 (_1!21748 lt!1205039))))))

(assert (= (and d!1029737 res!1422982) b!3527287))

(assert (=> d!1029737 m!3981431))

(assert (=> d!1029737 m!3981431))

(declare-fun m!3981823 () Bool)

(assert (=> d!1029737 m!3981823))

(declare-fun m!3981825 () Bool)

(assert (=> d!1029737 m!3981825))

(assert (=> b!3527287 m!3980121))

(assert (=> b!3526323 d!1029737))

(declare-fun d!1029739 () Bool)

(declare-fun c!608102 () Bool)

(assert (=> d!1029739 (= c!608102 ((_ is IntegerValue!17142) (value!176754 (h!42801 tokens!494))))))

(declare-fun e!2183409 () Bool)

(assert (=> d!1029739 (= (inv!21 (value!176754 (h!42801 tokens!494))) e!2183409)))

(declare-fun b!3527288 () Bool)

(declare-fun e!2183411 () Bool)

(assert (=> b!3527288 (= e!2183409 e!2183411)))

(declare-fun c!608101 () Bool)

(assert (=> b!3527288 (= c!608101 ((_ is IntegerValue!17143) (value!176754 (h!42801 tokens!494))))))

(declare-fun b!3527289 () Bool)

(declare-fun res!1422983 () Bool)

(declare-fun e!2183410 () Bool)

(assert (=> b!3527289 (=> res!1422983 e!2183410)))

(assert (=> b!3527289 (= res!1422983 (not ((_ is IntegerValue!17144) (value!176754 (h!42801 tokens!494)))))))

(assert (=> b!3527289 (= e!2183411 e!2183410)))

(declare-fun b!3527290 () Bool)

(assert (=> b!3527290 (= e!2183411 (inv!17 (value!176754 (h!42801 tokens!494))))))

(declare-fun b!3527291 () Bool)

(assert (=> b!3527291 (= e!2183409 (inv!16 (value!176754 (h!42801 tokens!494))))))

(declare-fun b!3527292 () Bool)

(assert (=> b!3527292 (= e!2183410 (inv!15 (value!176754 (h!42801 tokens!494))))))

(assert (= (and d!1029739 c!608102) b!3527291))

(assert (= (and d!1029739 (not c!608102)) b!3527288))

(assert (= (and b!3527288 c!608101) b!3527290))

(assert (= (and b!3527288 (not c!608101)) b!3527289))

(assert (= (and b!3527289 (not res!1422983)) b!3527292))

(declare-fun m!3981827 () Bool)

(assert (=> b!3527290 m!3981827))

(declare-fun m!3981829 () Bool)

(assert (=> b!3527291 m!3981829))

(declare-fun m!3981831 () Bool)

(assert (=> b!3527292 m!3981831))

(assert (=> b!3526301 d!1029739))

(declare-fun d!1029741 () Bool)

(declare-fun lt!1205425 () Bool)

(declare-fun e!2183413 () Bool)

(assert (=> d!1029741 (= lt!1205425 e!2183413)))

(declare-fun res!1422984 () Bool)

(assert (=> d!1029741 (=> (not res!1422984) (not e!2183413))))

(assert (=> d!1029741 (= res!1422984 (= (list!13681 (_1!21748 (lex!2399 thiss!18206 rules!2135 (print!2138 thiss!18206 (singletonSeq!2580 separatorToken!241))))) (list!13681 (singletonSeq!2580 separatorToken!241))))))

(declare-fun e!2183412 () Bool)

(assert (=> d!1029741 (= lt!1205425 e!2183412)))

(declare-fun res!1422986 () Bool)

(assert (=> d!1029741 (=> (not res!1422986) (not e!2183412))))

(declare-fun lt!1205426 () tuple2!37228)

(assert (=> d!1029741 (= res!1422986 (= (size!28451 (_1!21748 lt!1205426)) 1))))

(assert (=> d!1029741 (= lt!1205426 (lex!2399 thiss!18206 rules!2135 (print!2138 thiss!18206 (singletonSeq!2580 separatorToken!241))))))

(assert (=> d!1029741 (not (isEmpty!21855 rules!2135))))

(assert (=> d!1029741 (= (rulesProduceIndividualToken!2565 thiss!18206 rules!2135 separatorToken!241) lt!1205425)))

(declare-fun b!3527293 () Bool)

(declare-fun res!1422985 () Bool)

(assert (=> b!3527293 (=> (not res!1422985) (not e!2183412))))

(assert (=> b!3527293 (= res!1422985 (= (apply!8922 (_1!21748 lt!1205426) 0) separatorToken!241))))

(declare-fun b!3527294 () Bool)

(assert (=> b!3527294 (= e!2183412 (isEmpty!21854 (_2!21748 lt!1205426)))))

(declare-fun b!3527295 () Bool)

(assert (=> b!3527295 (= e!2183413 (isEmpty!21854 (_2!21748 (lex!2399 thiss!18206 rules!2135 (print!2138 thiss!18206 (singletonSeq!2580 separatorToken!241))))))))

(assert (= (and d!1029741 res!1422986) b!3527293))

(assert (= (and b!3527293 res!1422985) b!3527294))

(assert (= (and d!1029741 res!1422984) b!3527295))

(declare-fun m!3981833 () Bool)

(assert (=> d!1029741 m!3981833))

(declare-fun m!3981835 () Bool)

(assert (=> d!1029741 m!3981835))

(assert (=> d!1029741 m!3980105))

(declare-fun m!3981837 () Bool)

(assert (=> d!1029741 m!3981837))

(declare-fun m!3981839 () Bool)

(assert (=> d!1029741 m!3981839))

(declare-fun m!3981841 () Bool)

(assert (=> d!1029741 m!3981841))

(assert (=> d!1029741 m!3980159))

(assert (=> d!1029741 m!3980105))

(assert (=> d!1029741 m!3981833))

(assert (=> d!1029741 m!3980105))

(declare-fun m!3981843 () Bool)

(assert (=> b!3527293 m!3981843))

(declare-fun m!3981845 () Bool)

(assert (=> b!3527294 m!3981845))

(assert (=> b!3527295 m!3980105))

(assert (=> b!3527295 m!3980105))

(assert (=> b!3527295 m!3981833))

(assert (=> b!3527295 m!3981833))

(assert (=> b!3527295 m!3981835))

(declare-fun m!3981847 () Bool)

(assert (=> b!3527295 m!3981847))

(assert (=> b!3526322 d!1029741))

(declare-fun d!1029743 () Bool)

(declare-fun res!1422989 () Bool)

(declare-fun e!2183416 () Bool)

(assert (=> d!1029743 (=> (not res!1422989) (not e!2183416))))

(declare-fun rulesValid!2077 (LexerInterface!5073 List!37504) Bool)

(assert (=> d!1029743 (= res!1422989 (rulesValid!2077 thiss!18206 rules!2135))))

(assert (=> d!1029743 (= (rulesInvariant!4470 thiss!18206 rules!2135) e!2183416)))

(declare-fun b!3527298 () Bool)

(declare-datatypes ((List!37507 0))(
  ( (Nil!37383) (Cons!37383 (h!42803 String!41904) (t!282636 List!37507)) )
))
(declare-fun noDuplicateTag!2073 (LexerInterface!5073 List!37504 List!37507) Bool)

(assert (=> b!3527298 (= e!2183416 (noDuplicateTag!2073 thiss!18206 rules!2135 Nil!37383))))

(assert (= (and d!1029743 res!1422989) b!3527298))

(declare-fun m!3981849 () Bool)

(assert (=> d!1029743 m!3981849))

(declare-fun m!3981851 () Bool)

(assert (=> b!3527298 m!3981851))

(assert (=> b!3526321 d!1029743))

(declare-fun b!3527301 () Bool)

(declare-fun e!2183419 () Bool)

(assert (=> b!3527301 (= e!2183419 true)))

(declare-fun b!3527300 () Bool)

(declare-fun e!2183418 () Bool)

(assert (=> b!3527300 (= e!2183418 e!2183419)))

(declare-fun b!3527299 () Bool)

(declare-fun e!2183417 () Bool)

(assert (=> b!3527299 (= e!2183417 e!2183418)))

(assert (=> b!3526344 e!2183417))

(assert (= b!3527300 b!3527301))

(assert (= b!3527299 b!3527300))

(assert (= (and b!3526344 ((_ is Cons!37380) (t!282519 rules!2135))) b!3527299))

(assert (=> b!3527301 (< (dynLambda!15944 order!20141 (toValue!7740 (transformation!5484 (h!42800 (t!282519 rules!2135))))) (dynLambda!15945 order!20143 lambda!122889))))

(assert (=> b!3527301 (< (dynLambda!15946 order!20145 (toChars!7599 (transformation!5484 (h!42800 (t!282519 rules!2135))))) (dynLambda!15945 order!20143 lambda!122889))))

(declare-fun b!3527306 () Bool)

(declare-fun e!2183422 () Bool)

(declare-fun tp_is_empty!17625 () Bool)

(declare-fun tp!1087827 () Bool)

(assert (=> b!3527306 (= e!2183422 (and tp_is_empty!17625 tp!1087827))))

(assert (=> b!3526325 (= tp!1087746 e!2183422)))

(assert (= (and b!3526325 ((_ is Cons!37379) (originalCharacters!6198 separatorToken!241))) b!3527306))

(declare-fun b!3527317 () Bool)

(declare-fun b_free!90893 () Bool)

(declare-fun b_next!91597 () Bool)

(assert (=> b!3527317 (= b_free!90893 (not b_next!91597))))

(declare-fun tb!197387 () Bool)

(declare-fun t!282616 () Bool)

(assert (=> (and b!3527317 (= (toValue!7740 (transformation!5484 (h!42800 (t!282519 rules!2135)))) (toValue!7740 (transformation!5484 (rule!8140 (h!42801 (t!282520 tokens!494)))))) t!282616) tb!197387))

(declare-fun result!241808 () Bool)

(assert (= result!241808 result!241748))

(assert (=> d!1029555 t!282616))

(declare-fun t!282618 () Bool)

(declare-fun tb!197389 () Bool)

(assert (=> (and b!3527317 (= (toValue!7740 (transformation!5484 (h!42800 (t!282519 rules!2135)))) (toValue!7740 (transformation!5484 (rule!8140 (h!42801 tokens!494))))) t!282618) tb!197389))

(declare-fun result!241810 () Bool)

(assert (= result!241810 result!241756))

(assert (=> d!1029575 t!282618))

(declare-fun tp!1087838 () Bool)

(declare-fun b_and!251523 () Bool)

(assert (=> b!3527317 (= tp!1087838 (and (=> t!282616 result!241808) (=> t!282618 result!241810) b_and!251523))))

(declare-fun b_free!90895 () Bool)

(declare-fun b_next!91599 () Bool)

(assert (=> b!3527317 (= b_free!90895 (not b_next!91599))))

(declare-fun t!282620 () Bool)

(declare-fun tb!197391 () Bool)

(assert (=> (and b!3527317 (= (toChars!7599 (transformation!5484 (h!42800 (t!282519 rules!2135)))) (toChars!7599 (transformation!5484 (rule!8140 separatorToken!241)))) t!282620) tb!197391))

(declare-fun result!241812 () Bool)

(assert (= result!241812 result!241708))

(assert (=> d!1029343 t!282620))

(declare-fun t!282622 () Bool)

(declare-fun tb!197393 () Bool)

(assert (=> (and b!3527317 (= (toChars!7599 (transformation!5484 (h!42800 (t!282519 rules!2135)))) (toChars!7599 (transformation!5484 (rule!8140 (h!42801 tokens!494))))) t!282622) tb!197393))

(declare-fun result!241814 () Bool)

(assert (= result!241814 result!241736))

(assert (=> d!1029479 t!282622))

(assert (=> b!3526664 t!282622))

(assert (=> b!3526734 t!282620))

(declare-fun tb!197395 () Bool)

(declare-fun t!282624 () Bool)

(assert (=> (and b!3527317 (= (toChars!7599 (transformation!5484 (h!42800 (t!282519 rules!2135)))) (toChars!7599 (transformation!5484 (rule!8140 (h!42801 (t!282520 tokens!494)))))) t!282624) tb!197395))

(declare-fun result!241816 () Bool)

(assert (= result!241816 result!241716))

(assert (=> d!1029359 t!282624))

(declare-fun tp!1087839 () Bool)

(declare-fun b_and!251525 () Bool)

(assert (=> b!3527317 (= tp!1087839 (and (=> t!282622 result!241814) (=> t!282620 result!241812) (=> t!282624 result!241816) b_and!251525))))

(declare-fun e!2183431 () Bool)

(assert (=> b!3527317 (= e!2183431 (and tp!1087838 tp!1087839))))

(declare-fun tp!1087837 () Bool)

(declare-fun e!2183433 () Bool)

(declare-fun b!3527316 () Bool)

(assert (=> b!3527316 (= e!2183433 (and tp!1087837 (inv!50616 (tag!6126 (h!42800 (t!282519 rules!2135)))) (inv!50619 (transformation!5484 (h!42800 (t!282519 rules!2135)))) e!2183431))))

(declare-fun b!3527315 () Bool)

(declare-fun e!2183434 () Bool)

(declare-fun tp!1087836 () Bool)

(assert (=> b!3527315 (= e!2183434 (and e!2183433 tp!1087836))))

(assert (=> b!3526303 (= tp!1087755 e!2183434)))

(assert (= b!3527316 b!3527317))

(assert (= b!3527315 b!3527316))

(assert (= (and b!3526303 ((_ is Cons!37380) (t!282519 rules!2135))) b!3527315))

(declare-fun m!3981853 () Bool)

(assert (=> b!3527316 m!3981853))

(declare-fun m!3981855 () Bool)

(assert (=> b!3527316 m!3981855))

(declare-fun e!2183437 () Bool)

(assert (=> b!3526292 (= tp!1087747 e!2183437)))

(declare-fun b!3527331 () Bool)

(declare-fun tp!1087854 () Bool)

(declare-fun tp!1087851 () Bool)

(assert (=> b!3527331 (= e!2183437 (and tp!1087854 tp!1087851))))

(declare-fun b!3527328 () Bool)

(assert (=> b!3527328 (= e!2183437 tp_is_empty!17625)))

(declare-fun b!3527329 () Bool)

(declare-fun tp!1087853 () Bool)

(declare-fun tp!1087850 () Bool)

(assert (=> b!3527329 (= e!2183437 (and tp!1087853 tp!1087850))))

(declare-fun b!3527330 () Bool)

(declare-fun tp!1087852 () Bool)

(assert (=> b!3527330 (= e!2183437 tp!1087852)))

(assert (= (and b!3526292 ((_ is ElementMatch!10243) (regex!5484 (rule!8140 separatorToken!241)))) b!3527328))

(assert (= (and b!3526292 ((_ is Concat!15957) (regex!5484 (rule!8140 separatorToken!241)))) b!3527329))

(assert (= (and b!3526292 ((_ is Star!10243) (regex!5484 (rule!8140 separatorToken!241)))) b!3527330))

(assert (= (and b!3526292 ((_ is Union!10243) (regex!5484 (rule!8140 separatorToken!241)))) b!3527331))

(declare-fun e!2183438 () Bool)

(assert (=> b!3526302 (= tp!1087751 e!2183438)))

(declare-fun b!3527335 () Bool)

(declare-fun tp!1087859 () Bool)

(declare-fun tp!1087856 () Bool)

(assert (=> b!3527335 (= e!2183438 (and tp!1087859 tp!1087856))))

(declare-fun b!3527332 () Bool)

(assert (=> b!3527332 (= e!2183438 tp_is_empty!17625)))

(declare-fun b!3527333 () Bool)

(declare-fun tp!1087858 () Bool)

(declare-fun tp!1087855 () Bool)

(assert (=> b!3527333 (= e!2183438 (and tp!1087858 tp!1087855))))

(declare-fun b!3527334 () Bool)

(declare-fun tp!1087857 () Bool)

(assert (=> b!3527334 (= e!2183438 tp!1087857)))

(assert (= (and b!3526302 ((_ is ElementMatch!10243) (regex!5484 (rule!8140 (h!42801 tokens!494))))) b!3527332))

(assert (= (and b!3526302 ((_ is Concat!15957) (regex!5484 (rule!8140 (h!42801 tokens!494))))) b!3527333))

(assert (= (and b!3526302 ((_ is Star!10243) (regex!5484 (rule!8140 (h!42801 tokens!494))))) b!3527334))

(assert (= (and b!3526302 ((_ is Union!10243) (regex!5484 (rule!8140 (h!42801 tokens!494))))) b!3527335))

(declare-fun e!2183439 () Bool)

(assert (=> b!3526306 (= tp!1087754 e!2183439)))

(declare-fun b!3527339 () Bool)

(declare-fun tp!1087864 () Bool)

(declare-fun tp!1087861 () Bool)

(assert (=> b!3527339 (= e!2183439 (and tp!1087864 tp!1087861))))

(declare-fun b!3527336 () Bool)

(assert (=> b!3527336 (= e!2183439 tp_is_empty!17625)))

(declare-fun b!3527337 () Bool)

(declare-fun tp!1087863 () Bool)

(declare-fun tp!1087860 () Bool)

(assert (=> b!3527337 (= e!2183439 (and tp!1087863 tp!1087860))))

(declare-fun b!3527338 () Bool)

(declare-fun tp!1087862 () Bool)

(assert (=> b!3527338 (= e!2183439 tp!1087862)))

(assert (= (and b!3526306 ((_ is ElementMatch!10243) (regex!5484 (h!42800 rules!2135)))) b!3527336))

(assert (= (and b!3526306 ((_ is Concat!15957) (regex!5484 (h!42800 rules!2135)))) b!3527337))

(assert (= (and b!3526306 ((_ is Star!10243) (regex!5484 (h!42800 rules!2135)))) b!3527338))

(assert (= (and b!3526306 ((_ is Union!10243) (regex!5484 (h!42800 rules!2135)))) b!3527339))

(declare-fun b!3527340 () Bool)

(declare-fun e!2183440 () Bool)

(declare-fun tp!1087865 () Bool)

(assert (=> b!3527340 (= e!2183440 (and tp_is_empty!17625 tp!1087865))))

(assert (=> b!3526301 (= tp!1087750 e!2183440)))

(assert (= (and b!3526301 ((_ is Cons!37379) (originalCharacters!6198 (h!42801 tokens!494)))) b!3527340))

(declare-fun b!3527354 () Bool)

(declare-fun b_free!90897 () Bool)

(declare-fun b_next!91601 () Bool)

(assert (=> b!3527354 (= b_free!90897 (not b_next!91601))))

(declare-fun t!282627 () Bool)

(declare-fun tb!197397 () Bool)

(assert (=> (and b!3527354 (= (toValue!7740 (transformation!5484 (rule!8140 (h!42801 (t!282520 tokens!494))))) (toValue!7740 (transformation!5484 (rule!8140 (h!42801 (t!282520 tokens!494)))))) t!282627) tb!197397))

(declare-fun result!241822 () Bool)

(assert (= result!241822 result!241748))

(assert (=> d!1029555 t!282627))

(declare-fun t!282629 () Bool)

(declare-fun tb!197399 () Bool)

(assert (=> (and b!3527354 (= (toValue!7740 (transformation!5484 (rule!8140 (h!42801 (t!282520 tokens!494))))) (toValue!7740 (transformation!5484 (rule!8140 (h!42801 tokens!494))))) t!282629) tb!197399))

(declare-fun result!241824 () Bool)

(assert (= result!241824 result!241756))

(assert (=> d!1029575 t!282629))

(declare-fun b_and!251527 () Bool)

(declare-fun tp!1087880 () Bool)

(assert (=> b!3527354 (= tp!1087880 (and (=> t!282627 result!241822) (=> t!282629 result!241824) b_and!251527))))

(declare-fun b_free!90899 () Bool)

(declare-fun b_next!91603 () Bool)

(assert (=> b!3527354 (= b_free!90899 (not b_next!91603))))

(declare-fun t!282631 () Bool)

(declare-fun tb!197401 () Bool)

(assert (=> (and b!3527354 (= (toChars!7599 (transformation!5484 (rule!8140 (h!42801 (t!282520 tokens!494))))) (toChars!7599 (transformation!5484 (rule!8140 separatorToken!241)))) t!282631) tb!197401))

(declare-fun result!241826 () Bool)

(assert (= result!241826 result!241708))

(assert (=> d!1029343 t!282631))

(declare-fun t!282633 () Bool)

(declare-fun tb!197403 () Bool)

(assert (=> (and b!3527354 (= (toChars!7599 (transformation!5484 (rule!8140 (h!42801 (t!282520 tokens!494))))) (toChars!7599 (transformation!5484 (rule!8140 (h!42801 tokens!494))))) t!282633) tb!197403))

(declare-fun result!241828 () Bool)

(assert (= result!241828 result!241736))

(assert (=> d!1029479 t!282633))

(assert (=> b!3526664 t!282633))

(assert (=> b!3526734 t!282631))

(declare-fun t!282635 () Bool)

(declare-fun tb!197405 () Bool)

(assert (=> (and b!3527354 (= (toChars!7599 (transformation!5484 (rule!8140 (h!42801 (t!282520 tokens!494))))) (toChars!7599 (transformation!5484 (rule!8140 (h!42801 (t!282520 tokens!494)))))) t!282635) tb!197405))

(declare-fun result!241830 () Bool)

(assert (= result!241830 result!241716))

(assert (=> d!1029359 t!282635))

(declare-fun b_and!251529 () Bool)

(declare-fun tp!1087879 () Bool)

(assert (=> b!3527354 (= tp!1087879 (and (=> t!282631 result!241826) (=> t!282633 result!241828) (=> t!282635 result!241830) b_and!251529))))

(declare-fun e!2183453 () Bool)

(declare-fun b!3527352 () Bool)

(declare-fun e!2183454 () Bool)

(declare-fun tp!1087876 () Bool)

(assert (=> b!3527352 (= e!2183454 (and (inv!21 (value!176754 (h!42801 (t!282520 tokens!494)))) e!2183453 tp!1087876))))

(declare-fun tp!1087877 () Bool)

(declare-fun e!2183457 () Bool)

(declare-fun b!3527353 () Bool)

(assert (=> b!3527353 (= e!2183453 (and tp!1087877 (inv!50616 (tag!6126 (rule!8140 (h!42801 (t!282520 tokens!494))))) (inv!50619 (transformation!5484 (rule!8140 (h!42801 (t!282520 tokens!494))))) e!2183457))))

(assert (=> b!3527354 (= e!2183457 (and tp!1087880 tp!1087879))))

(declare-fun e!2183456 () Bool)

(assert (=> b!3526311 (= tp!1087757 e!2183456)))

(declare-fun b!3527351 () Bool)

(declare-fun tp!1087878 () Bool)

(assert (=> b!3527351 (= e!2183456 (and (inv!50620 (h!42801 (t!282520 tokens!494))) e!2183454 tp!1087878))))

(assert (= b!3527353 b!3527354))

(assert (= b!3527352 b!3527353))

(assert (= b!3527351 b!3527352))

(assert (= (and b!3526311 ((_ is Cons!37381) (t!282520 tokens!494))) b!3527351))

(declare-fun m!3981857 () Bool)

(assert (=> b!3527352 m!3981857))

(declare-fun m!3981859 () Bool)

(assert (=> b!3527353 m!3981859))

(declare-fun m!3981861 () Bool)

(assert (=> b!3527353 m!3981861))

(declare-fun m!3981863 () Bool)

(assert (=> b!3527351 m!3981863))

(declare-fun b_lambda!103149 () Bool)

(assert (= b_lambda!103093 (or b!3526298 b_lambda!103149)))

(declare-fun bs!565767 () Bool)

(declare-fun d!1029745 () Bool)

(assert (= bs!565767 (and d!1029745 b!3526298)))

(assert (=> bs!565767 (= (dynLambda!15950 lambda!122888 (h!42801 (t!282520 tokens!494))) (not (isSeparator!5484 (rule!8140 (h!42801 (t!282520 tokens!494))))))))

(assert (=> d!1029447 d!1029745))

(declare-fun b_lambda!103151 () Bool)

(assert (= b_lambda!103085 (or (and b!3526316 b_free!90875 (= (toChars!7599 (transformation!5484 (rule!8140 (h!42801 tokens!494)))) (toChars!7599 (transformation!5484 (rule!8140 (h!42801 (t!282520 tokens!494))))))) (and b!3527354 b_free!90899) (and b!3526310 b_free!90879 (= (toChars!7599 (transformation!5484 (h!42800 rules!2135))) (toChars!7599 (transformation!5484 (rule!8140 (h!42801 (t!282520 tokens!494))))))) (and b!3526333 b_free!90883 (= (toChars!7599 (transformation!5484 (rule!8140 separatorToken!241))) (toChars!7599 (transformation!5484 (rule!8140 (h!42801 (t!282520 tokens!494))))))) (and b!3527317 b_free!90895 (= (toChars!7599 (transformation!5484 (h!42800 (t!282519 rules!2135)))) (toChars!7599 (transformation!5484 (rule!8140 (h!42801 (t!282520 tokens!494))))))) b_lambda!103151)))

(declare-fun b_lambda!103153 () Bool)

(assert (= b_lambda!103091 (or (and b!3527354 b_free!90899 (= (toChars!7599 (transformation!5484 (rule!8140 (h!42801 (t!282520 tokens!494))))) (toChars!7599 (transformation!5484 (rule!8140 (h!42801 tokens!494)))))) (and b!3526333 b_free!90883 (= (toChars!7599 (transformation!5484 (rule!8140 separatorToken!241))) (toChars!7599 (transformation!5484 (rule!8140 (h!42801 tokens!494)))))) (and b!3526316 b_free!90875) (and b!3526310 b_free!90879 (= (toChars!7599 (transformation!5484 (h!42800 rules!2135))) (toChars!7599 (transformation!5484 (rule!8140 (h!42801 tokens!494)))))) (and b!3527317 b_free!90895 (= (toChars!7599 (transformation!5484 (h!42800 (t!282519 rules!2135)))) (toChars!7599 (transformation!5484 (rule!8140 (h!42801 tokens!494)))))) b_lambda!103153)))

(declare-fun b_lambda!103155 () Bool)

(assert (= b_lambda!103083 (or (and b!3527317 b_free!90895 (= (toChars!7599 (transformation!5484 (h!42800 (t!282519 rules!2135)))) (toChars!7599 (transformation!5484 (rule!8140 separatorToken!241))))) (and b!3526310 b_free!90879 (= (toChars!7599 (transformation!5484 (h!42800 rules!2135))) (toChars!7599 (transformation!5484 (rule!8140 separatorToken!241))))) (and b!3526333 b_free!90883) (and b!3527354 b_free!90899 (= (toChars!7599 (transformation!5484 (rule!8140 (h!42801 (t!282520 tokens!494))))) (toChars!7599 (transformation!5484 (rule!8140 separatorToken!241))))) (and b!3526316 b_free!90875 (= (toChars!7599 (transformation!5484 (rule!8140 (h!42801 tokens!494)))) (toChars!7599 (transformation!5484 (rule!8140 separatorToken!241))))) b_lambda!103155)))

(declare-fun b_lambda!103157 () Bool)

(assert (= b_lambda!103097 (or (and b!3527354 b_free!90899 (= (toChars!7599 (transformation!5484 (rule!8140 (h!42801 (t!282520 tokens!494))))) (toChars!7599 (transformation!5484 (rule!8140 (h!42801 tokens!494)))))) (and b!3526333 b_free!90883 (= (toChars!7599 (transformation!5484 (rule!8140 separatorToken!241))) (toChars!7599 (transformation!5484 (rule!8140 (h!42801 tokens!494)))))) (and b!3526316 b_free!90875) (and b!3526310 b_free!90879 (= (toChars!7599 (transformation!5484 (h!42800 rules!2135))) (toChars!7599 (transformation!5484 (rule!8140 (h!42801 tokens!494)))))) (and b!3527317 b_free!90895 (= (toChars!7599 (transformation!5484 (h!42800 (t!282519 rules!2135)))) (toChars!7599 (transformation!5484 (rule!8140 (h!42801 tokens!494)))))) b_lambda!103157)))

(declare-fun b_lambda!103159 () Bool)

(assert (= b_lambda!103099 (or (and b!3527317 b_free!90895 (= (toChars!7599 (transformation!5484 (h!42800 (t!282519 rules!2135)))) (toChars!7599 (transformation!5484 (rule!8140 separatorToken!241))))) (and b!3526310 b_free!90879 (= (toChars!7599 (transformation!5484 (h!42800 rules!2135))) (toChars!7599 (transformation!5484 (rule!8140 separatorToken!241))))) (and b!3526333 b_free!90883) (and b!3527354 b_free!90899 (= (toChars!7599 (transformation!5484 (rule!8140 (h!42801 (t!282520 tokens!494))))) (toChars!7599 (transformation!5484 (rule!8140 separatorToken!241))))) (and b!3526316 b_free!90875 (= (toChars!7599 (transformation!5484 (rule!8140 (h!42801 tokens!494)))) (toChars!7599 (transformation!5484 (rule!8140 separatorToken!241))))) b_lambda!103159)))

(declare-fun b_lambda!103161 () Bool)

(assert (= b_lambda!103121 (or b!3526326 b_lambda!103161)))

(declare-fun bs!565768 () Bool)

(declare-fun d!1029747 () Bool)

(assert (= bs!565768 (and d!1029747 b!3526326)))

(assert (=> bs!565768 (= (dynLambda!15950 lambda!122889 (h!42801 (t!282520 tokens!494))) (rulesProduceIndividualToken!2565 thiss!18206 rules!2135 (h!42801 (t!282520 tokens!494))))))

(assert (=> bs!565768 m!3980109))

(assert (=> d!1029615 d!1029747))

(declare-fun b_lambda!103163 () Bool)

(assert (= b_lambda!103113 (or (and b!3526333 b_free!90881 (= (toValue!7740 (transformation!5484 (rule!8140 separatorToken!241))) (toValue!7740 (transformation!5484 (rule!8140 (h!42801 (t!282520 tokens!494))))))) (and b!3527354 b_free!90897) (and b!3526316 b_free!90873 (= (toValue!7740 (transformation!5484 (rule!8140 (h!42801 tokens!494)))) (toValue!7740 (transformation!5484 (rule!8140 (h!42801 (t!282520 tokens!494))))))) (and b!3527317 b_free!90893 (= (toValue!7740 (transformation!5484 (h!42800 (t!282519 rules!2135)))) (toValue!7740 (transformation!5484 (rule!8140 (h!42801 (t!282520 tokens!494))))))) (and b!3526310 b_free!90877 (= (toValue!7740 (transformation!5484 (h!42800 rules!2135))) (toValue!7740 (transformation!5484 (rule!8140 (h!42801 (t!282520 tokens!494))))))) b_lambda!103163)))

(declare-fun b_lambda!103165 () Bool)

(assert (= b_lambda!103095 (or b!3526298 b_lambda!103165)))

(declare-fun bs!565769 () Bool)

(declare-fun d!1029749 () Bool)

(assert (= bs!565769 (and d!1029749 b!3526298)))

(assert (=> bs!565769 (= (dynLambda!15950 lambda!122888 (h!42801 tokens!494)) (not (isSeparator!5484 (rule!8140 (h!42801 tokens!494)))))))

(assert (=> d!1029449 d!1029749))

(declare-fun b_lambda!103167 () Bool)

(assert (= b_lambda!103123 (or b!3526298 b_lambda!103167)))

(assert (=> b!3527118 d!1029749))

(declare-fun b_lambda!103169 () Bool)

(assert (= b_lambda!103115 (or (and b!3527317 b_free!90893 (= (toValue!7740 (transformation!5484 (h!42800 (t!282519 rules!2135)))) (toValue!7740 (transformation!5484 (rule!8140 (h!42801 tokens!494)))))) (and b!3527354 b_free!90897 (= (toValue!7740 (transformation!5484 (rule!8140 (h!42801 (t!282520 tokens!494))))) (toValue!7740 (transformation!5484 (rule!8140 (h!42801 tokens!494)))))) (and b!3526310 b_free!90877 (= (toValue!7740 (transformation!5484 (h!42800 rules!2135))) (toValue!7740 (transformation!5484 (rule!8140 (h!42801 tokens!494)))))) (and b!3526316 b_free!90873) (and b!3526333 b_free!90881 (= (toValue!7740 (transformation!5484 (rule!8140 separatorToken!241))) (toValue!7740 (transformation!5484 (rule!8140 (h!42801 tokens!494)))))) b_lambda!103169)))

(check-sat (not d!1029383) (not d!1029357) (not b_lambda!103149) (not b_lambda!103153) (not b!3526671) (not b_lambda!103159) (not b_lambda!103151) (not b!3527294) (not b!3527041) (not b!3527090) (not d!1029637) (not b!3527044) (not b!3527039) (not b!3526411) (not d!1029667) (not b_lambda!103161) (not b!3526886) (not b!3527111) (not d!1029465) (not d!1029641) (not d!1029559) (not bm!254780) (not b!3527033) (not d!1029453) (not b!3526654) (not b!3526502) (not b!3527006) (not b!3527107) (not d!1029463) (not b!3526456) (not b!3526714) (not b!3526704) (not b!3526463) (not b!3526675) (not d!1029635) (not b!3526834) (not d!1029741) (not b!3527025) (not b!3526443) (not d!1029513) (not b!3527026) (not d!1029445) (not b!3527108) (not b!3527069) (not b!3526875) (not b!3527298) b_and!251529 (not d!1029685) (not b!3527291) (not d!1029557) (not b!3526726) (not b!3526702) (not d!1029483) (not b!3527287) (not b_lambda!103157) (not b!3526698) (not bm!254743) (not b!3526651) (not b_next!91601) (not d!1029743) (not b!3526454) (not b!3527293) (not d!1029553) (not tb!197313) (not b!3527102) (not b!3527043) (not d!1029349) (not bm!254775) (not b!3527051) (not bs!565768) (not b!3526919) (not b!3527284) b_and!251501 (not d!1029479) (not b!3526489) (not b!3526880) (not d!1029449) (not b!3526678) b_and!251523 b_and!251471 (not b!3527353) (not b!3526458) (not b!3526376) (not b!3527092) (not b!3526657) (not b_next!91599) (not b!3526465) (not d!1029341) (not b_next!91583) (not b!3527032) (not b!3527058) (not b!3527292) (not bm!254759) (not b!3526711) (not b!3527042) (not b_lambda!103155) (not b!3526666) (not b!3527295) (not b!3526494) (not b!3527050) (not d!1029481) (not b!3526699) (not b!3527056) (not b!3526878) (not d!1029665) (not d!1029369) (not b!3526653) (not b!3526827) (not tb!197349) (not b!3526664) (not b!3527119) (not bm!254748) (not b!3527283) (not b!3526459) (not b!3527098) (not d!1029647) (not d!1029659) (not d!1029531) (not b!3526684) (not bm!254735) (not b!3527067) (not b!3526697) (not b!3527029) (not b!3526444) (not d!1029573) (not b!3526430) b_and!251527 (not b!3527337) (not d!1029679) (not d!1029601) (not b!3526479) (not b!3526721) (not d!1029367) (not b!3527339) (not b_next!91587) (not b_next!91581) (not b!3526784) (not d!1029443) (not d!1029737) (not b_next!91603) (not d!1029439) (not b!3526734) (not d!1029359) (not d!1029475) (not b!3527306) (not b!3526735) (not b!3526873) (not b!3526484) (not b!3527046) (not b!3526431) (not b!3527053) (not b_lambda!103165) (not b!3526409) (not b!3527030) (not b!3527095) (not b!3527352) (not d!1029677) (not b!3527290) (not bm!254742) (not d!1029437) (not d!1029615) (not b!3527040) (not d!1029627) (not d!1029447) (not b!3526668) (not d!1029631) (not d!1029633) (not b!3527316) (not bm!254760) (not b!3527335) (not b!3526408) (not d!1029643) (not b!3526879) (not b!3526708) (not b!3526782) (not b!3527031) (not tb!197331) (not b!3526665) (not b!3526706) (not b!3526487) (not b!3527334) (not d!1029623) (not b_next!91585) (not b!3526731) (not d!1029347) (not b!3526418) (not b!3526723) (not b!3526440) (not d!1029337) (not b_next!91597) (not b!3527068) (not b!3527299) (not b!3526884) (not b!3526683) (not d!1029619) (not d!1029441) (not b!3527333) (not b!3527097) (not bm!254758) (not b!3527330) (not b!3526652) (not b!3526733) (not b!3526461) (not d!1029375) (not d!1029361) (not b!3526917) (not b!3527338) (not b!3527351) (not d!1029545) (not bm!254779) (not b!3527329) (not b!3526501) (not d!1029377) (not tb!197343) (not d!1029613) (not bm!254774) (not d!1029639) (not b_lambda!103167) (not b!3527340) (not d!1029547) (not b!3526377) (not b!3527094) (not b!3527045) (not b!3526883) (not d!1029577) (not d!1029477) (not b!3527036) (not d!1029735) (not b!3527112) (not b!3526437) (not b!3527103) (not tb!197307) (not bm!254734) (not b!3526450) (not b!3526413) (not d!1029673) (not b!3527091) (not d!1029467) (not b!3526485) (not d!1029343) (not d!1029485) (not d!1029345) (not d!1029683) b_and!251499 (not d!1029459) (not d!1029435) (not b!3526452) (not d!1029617) (not bm!254776) (not b!3526468) (not b!3527079) (not b!3527034) (not b_lambda!103169) (not b!3526491) (not b_lambda!103163) (not bm!254778) (not d!1029461) (not b!3526877) b_and!251497 (not d!1029653) (not d!1029327) (not b!3526439) (not d!1029373) (not b!3526669) (not b_next!91579) (not b!3526826) (not d!1029517) (not b!3526473) (not b!3527077) b_and!251525 (not b!3527070) (not b!3526876) (not b!3526378) (not b!3526922) (not b!3527315) (not b!3527089) b_and!251469 (not b!3526701) (not d!1029621) (not b!3526673) (not d!1029471) (not d!1029579) (not d!1029381) (not b!3527048) b_and!251467 (not b!3526482) (not b!3527096) (not b!3526658) (not b!3527027) (not bm!254736) (not b!3527331) (not b!3526415) (not b!3526833) (not d!1029629) (not b_next!91577) tp_is_empty!17625 (not b!3526874) (not b!3526783))
(check-sat b_and!251529 (not b_next!91601) b_and!251501 b_and!251527 (not b_next!91603) b_and!251499 b_and!251523 b_and!251471 (not b_next!91599) (not b_next!91583) (not b_next!91587) (not b_next!91581) (not b_next!91597) (not b_next!91585) b_and!251497 (not b_next!91579) b_and!251469 b_and!251525 b_and!251467 (not b_next!91577))
