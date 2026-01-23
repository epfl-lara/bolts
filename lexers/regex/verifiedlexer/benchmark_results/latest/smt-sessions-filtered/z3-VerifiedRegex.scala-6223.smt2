; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!301726 () Bool)

(assert start!301726)

(declare-fun b!3212809 () Bool)

(declare-fun b_free!85457 () Bool)

(declare-fun b_next!86161 () Bool)

(assert (=> b!3212809 (= b_free!85457 (not b_next!86161))))

(declare-fun tp!1013692 () Bool)

(declare-fun b_and!214231 () Bool)

(assert (=> b!3212809 (= tp!1013692 b_and!214231)))

(declare-fun b_free!85459 () Bool)

(declare-fun b_next!86163 () Bool)

(assert (=> b!3212809 (= b_free!85459 (not b_next!86163))))

(declare-fun tp!1013690 () Bool)

(declare-fun b_and!214233 () Bool)

(assert (=> b!3212809 (= tp!1013690 b_and!214233)))

(declare-fun b!3212813 () Bool)

(declare-fun b_free!85461 () Bool)

(declare-fun b_next!86165 () Bool)

(assert (=> b!3212813 (= b_free!85461 (not b_next!86165))))

(declare-fun tp!1013693 () Bool)

(declare-fun b_and!214235 () Bool)

(assert (=> b!3212813 (= tp!1013693 b_and!214235)))

(declare-fun b_free!85463 () Bool)

(declare-fun b_next!86167 () Bool)

(assert (=> b!3212813 (= b_free!85463 (not b_next!86167))))

(declare-fun tp!1013696 () Bool)

(declare-fun b_and!214237 () Bool)

(assert (=> b!3212813 (= tp!1013696 b_and!214237)))

(declare-fun b!3212814 () Bool)

(declare-fun b_free!85465 () Bool)

(declare-fun b_next!86169 () Bool)

(assert (=> b!3212814 (= b_free!85465 (not b_next!86169))))

(declare-fun tp!1013694 () Bool)

(declare-fun b_and!214239 () Bool)

(assert (=> b!3212814 (= tp!1013694 b_and!214239)))

(declare-fun b_free!85467 () Bool)

(declare-fun b_next!86171 () Bool)

(assert (=> b!3212814 (= b_free!85467 (not b_next!86171))))

(declare-fun tp!1013689 () Bool)

(declare-fun b_and!214241 () Bool)

(assert (=> b!3212814 (= tp!1013689 b_and!214241)))

(declare-fun bs!541877 () Bool)

(declare-fun b!3212817 () Bool)

(declare-fun b!3212794 () Bool)

(assert (= bs!541877 (and b!3212817 b!3212794)))

(declare-fun lambda!117555 () Int)

(declare-fun lambda!117554 () Int)

(assert (=> bs!541877 (not (= lambda!117555 lambda!117554))))

(declare-fun b!3212838 () Bool)

(declare-fun e!2003310 () Bool)

(assert (=> b!3212838 (= e!2003310 true)))

(declare-fun b!3212837 () Bool)

(declare-fun e!2003309 () Bool)

(assert (=> b!3212837 (= e!2003309 e!2003310)))

(declare-fun b!3212836 () Bool)

(declare-fun e!2003308 () Bool)

(assert (=> b!3212836 (= e!2003308 e!2003309)))

(assert (=> b!3212817 e!2003308))

(assert (= b!3212837 b!3212838))

(assert (= b!3212836 b!3212837))

(declare-datatypes ((C!20156 0))(
  ( (C!20157 (val!12126 Int)) )
))
(declare-datatypes ((Regex!9985 0))(
  ( (ElementMatch!9985 (c!539812 C!20156)) (Concat!15441 (regOne!20482 Regex!9985) (regTwo!20482 Regex!9985)) (EmptyExpr!9985) (Star!9985 (reg!10314 Regex!9985)) (EmptyLang!9985) (Union!9985 (regOne!20483 Regex!9985) (regTwo!20483 Regex!9985)) )
))
(declare-datatypes ((List!36310 0))(
  ( (Nil!36186) (Cons!36186 (h!41606 (_ BitVec 16)) (t!239155 List!36310)) )
))
(declare-datatypes ((TokenValue!5456 0))(
  ( (FloatLiteralValue!10912 (text!38637 List!36310)) (TokenValueExt!5455 (__x!23129 Int)) (Broken!27280 (value!169375 List!36310)) (Object!5579) (End!5456) (Def!5456) (Underscore!5456) (Match!5456) (Else!5456) (Error!5456) (Case!5456) (If!5456) (Extends!5456) (Abstract!5456) (Class!5456) (Val!5456) (DelimiterValue!10912 (del!5516 List!36310)) (KeywordValue!5462 (value!169376 List!36310)) (CommentValue!10912 (value!169377 List!36310)) (WhitespaceValue!10912 (value!169378 List!36310)) (IndentationValue!5456 (value!169379 List!36310)) (String!40613) (Int32!5456) (Broken!27281 (value!169380 List!36310)) (Boolean!5457) (Unit!50675) (OperatorValue!5459 (op!5516 List!36310)) (IdentifierValue!10912 (value!169381 List!36310)) (IdentifierValue!10913 (value!169382 List!36310)) (WhitespaceValue!10913 (value!169383 List!36310)) (True!10912) (False!10912) (Broken!27282 (value!169384 List!36310)) (Broken!27283 (value!169385 List!36310)) (True!10913) (RightBrace!5456) (RightBracket!5456) (Colon!5456) (Null!5456) (Comma!5456) (LeftBracket!5456) (False!10913) (LeftBrace!5456) (ImaginaryLiteralValue!5456 (text!38638 List!36310)) (StringLiteralValue!16368 (value!169386 List!36310)) (EOFValue!5456 (value!169387 List!36310)) (IdentValue!5456 (value!169388 List!36310)) (DelimiterValue!10913 (value!169389 List!36310)) (DedentValue!5456 (value!169390 List!36310)) (NewLineValue!5456 (value!169391 List!36310)) (IntegerValue!16368 (value!169392 (_ BitVec 32)) (text!38639 List!36310)) (IntegerValue!16369 (value!169393 Int) (text!38640 List!36310)) (Times!5456) (Or!5456) (Equal!5456) (Minus!5456) (Broken!27284 (value!169394 List!36310)) (And!5456) (Div!5456) (LessEqual!5456) (Mod!5456) (Concat!15442) (Not!5456) (Plus!5456) (SpaceValue!5456 (value!169395 List!36310)) (IntegerValue!16370 (value!169396 Int) (text!38641 List!36310)) (StringLiteralValue!16369 (text!38642 List!36310)) (FloatLiteralValue!10913 (text!38643 List!36310)) (BytesLiteralValue!5456 (value!169397 List!36310)) (CommentValue!10913 (value!169398 List!36310)) (StringLiteralValue!16370 (value!169399 List!36310)) (ErrorTokenValue!5456 (msg!5517 List!36310)) )
))
(declare-datatypes ((List!36311 0))(
  ( (Nil!36187) (Cons!36187 (h!41607 C!20156) (t!239156 List!36311)) )
))
(declare-datatypes ((IArray!21659 0))(
  ( (IArray!21660 (innerList!10887 List!36311)) )
))
(declare-datatypes ((Conc!10827 0))(
  ( (Node!10827 (left!28142 Conc!10827) (right!28472 Conc!10827) (csize!21884 Int) (cheight!11038 Int)) (Leaf!17051 (xs!13945 IArray!21659) (csize!21885 Int)) (Empty!10827) )
))
(declare-datatypes ((BalanceConc!21268 0))(
  ( (BalanceConc!21269 (c!539813 Conc!10827)) )
))
(declare-datatypes ((String!40614 0))(
  ( (String!40615 (value!169400 String)) )
))
(declare-datatypes ((TokenValueInjection!10340 0))(
  ( (TokenValueInjection!10341 (toValue!7314 Int) (toChars!7173 Int)) )
))
(declare-datatypes ((Rule!10252 0))(
  ( (Rule!10253 (regex!5226 Regex!9985) (tag!5754 String!40614) (isSeparator!5226 Bool) (transformation!5226 TokenValueInjection!10340)) )
))
(declare-datatypes ((List!36312 0))(
  ( (Nil!36188) (Cons!36188 (h!41608 Rule!10252) (t!239157 List!36312)) )
))
(declare-fun rules!2135 () List!36312)

(get-info :version)

(assert (= (and b!3212817 ((_ is Cons!36188) rules!2135)) b!3212836))

(declare-fun order!18493 () Int)

(declare-fun order!18495 () Int)

(declare-fun dynLambda!14623 (Int Int) Int)

(declare-fun dynLambda!14624 (Int Int) Int)

(assert (=> b!3212838 (< (dynLambda!14623 order!18493 (toValue!7314 (transformation!5226 (h!41608 rules!2135)))) (dynLambda!14624 order!18495 lambda!117555))))

(declare-fun order!18497 () Int)

(declare-fun dynLambda!14625 (Int Int) Int)

(assert (=> b!3212838 (< (dynLambda!14625 order!18497 (toChars!7173 (transformation!5226 (h!41608 rules!2135)))) (dynLambda!14624 order!18495 lambda!117555))))

(assert (=> b!3212817 true))

(declare-fun b!3212787 () Bool)

(declare-fun e!2003284 () Bool)

(declare-datatypes ((Token!9818 0))(
  ( (Token!9819 (value!169401 TokenValue!5456) (rule!7672 Rule!10252) (size!27273 Int) (originalCharacters!5940 List!36311)) )
))
(declare-datatypes ((List!36313 0))(
  ( (Nil!36189) (Cons!36189 (h!41609 Token!9818) (t!239158 List!36313)) )
))
(declare-datatypes ((IArray!21661 0))(
  ( (IArray!21662 (innerList!10888 List!36313)) )
))
(declare-datatypes ((Conc!10828 0))(
  ( (Node!10828 (left!28143 Conc!10828) (right!28473 Conc!10828) (csize!21886 Int) (cheight!11039 Int)) (Leaf!17052 (xs!13946 IArray!21661) (csize!21887 Int)) (Empty!10828) )
))
(declare-datatypes ((BalanceConc!21270 0))(
  ( (BalanceConc!21271 (c!539814 Conc!10828)) )
))
(declare-datatypes ((tuple2!35594 0))(
  ( (tuple2!35595 (_1!20931 BalanceConc!21270) (_2!20931 BalanceConc!21268)) )
))
(declare-fun lt!1086541 () tuple2!35594)

(declare-fun isEmpty!20279 (BalanceConc!21268) Bool)

(assert (=> b!3212787 (= e!2003284 (isEmpty!20279 (_2!20931 lt!1086541)))))

(declare-fun b!3212788 () Bool)

(declare-fun res!1307781 () Bool)

(declare-fun e!2003275 () Bool)

(assert (=> b!3212788 (=> (not res!1307781) (not e!2003275))))

(declare-fun tokens!494 () List!36313)

(declare-datatypes ((LexerInterface!4815 0))(
  ( (LexerInterfaceExt!4812 (__x!23130 Int)) (Lexer!4813) )
))
(declare-fun thiss!18206 () LexerInterface!4815)

(declare-fun rulesProduceEachTokenIndividually!1266 (LexerInterface!4815 List!36312 BalanceConc!21270) Bool)

(declare-fun seqFromList!3523 (List!36313) BalanceConc!21270)

(assert (=> b!3212788 (= res!1307781 (rulesProduceEachTokenIndividually!1266 thiss!18206 rules!2135 (seqFromList!3523 tokens!494)))))

(declare-fun b!3212789 () Bool)

(declare-fun res!1307789 () Bool)

(assert (=> b!3212789 (=> (not res!1307789) (not e!2003275))))

(declare-fun separatorToken!241 () Token!9818)

(assert (=> b!3212789 (= res!1307789 (isSeparator!5226 (rule!7672 separatorToken!241)))))

(declare-fun b!3212790 () Bool)

(declare-fun e!2003273 () Bool)

(declare-fun lt!1086556 () tuple2!35594)

(assert (=> b!3212790 (= e!2003273 (not (isEmpty!20279 (_2!20931 lt!1086556))))))

(declare-fun b!3212791 () Bool)

(declare-fun e!2003274 () Bool)

(declare-fun e!2003286 () Bool)

(assert (=> b!3212791 (= e!2003274 e!2003286)))

(declare-fun res!1307778 () Bool)

(assert (=> b!3212791 (=> res!1307778 e!2003286)))

(assert (=> b!3212791 (= res!1307778 (or (isSeparator!5226 (rule!7672 (h!41609 tokens!494))) (isSeparator!5226 (rule!7672 (h!41609 (t!239158 tokens!494))))))))

(declare-datatypes ((Unit!50676 0))(
  ( (Unit!50677) )
))
(declare-fun lt!1086559 () Unit!50676)

(declare-fun forallContained!1197 (List!36313 Int Token!9818) Unit!50676)

(assert (=> b!3212791 (= lt!1086559 (forallContained!1197 tokens!494 lambda!117554 (h!41609 (t!239158 tokens!494))))))

(declare-fun lt!1086529 () Unit!50676)

(assert (=> b!3212791 (= lt!1086529 (forallContained!1197 tokens!494 lambda!117554 (h!41609 tokens!494)))))

(declare-fun b!3212792 () Bool)

(declare-fun e!2003282 () Bool)

(assert (=> b!3212792 (= e!2003282 e!2003274)))

(declare-fun res!1307788 () Bool)

(assert (=> b!3212792 (=> res!1307788 e!2003274)))

(declare-fun lt!1086549 () BalanceConc!21268)

(declare-fun isEmpty!20280 (BalanceConc!21270) Bool)

(declare-fun lex!2145 (LexerInterface!4815 List!36312 BalanceConc!21268) tuple2!35594)

(assert (=> b!3212792 (= res!1307788 (isEmpty!20280 (_1!20931 (lex!2145 thiss!18206 rules!2135 lt!1086549))))))

(declare-fun lt!1086523 () List!36311)

(declare-fun seqFromList!3524 (List!36311) BalanceConc!21268)

(assert (=> b!3212792 (= lt!1086549 (seqFromList!3524 lt!1086523))))

(declare-fun b!3212793 () Bool)

(declare-fun e!2003296 () Bool)

(declare-fun e!2003289 () Bool)

(assert (=> b!3212793 (= e!2003296 e!2003289)))

(declare-fun res!1307798 () Bool)

(assert (=> b!3212793 (=> res!1307798 e!2003289)))

(declare-fun lt!1086526 () List!36311)

(declare-fun lt!1086522 () List!36311)

(assert (=> b!3212793 (= res!1307798 (not (= lt!1086526 lt!1086522)))))

(declare-fun lt!1086532 () List!36311)

(declare-fun lt!1086557 () List!36311)

(declare-fun ++!8688 (List!36311 List!36311) List!36311)

(assert (=> b!3212793 (= lt!1086522 (++!8688 (++!8688 lt!1086523 lt!1086557) lt!1086532))))

(declare-fun res!1307796 () Bool)

(assert (=> b!3212794 (=> (not res!1307796) (not e!2003275))))

(declare-fun forall!7396 (List!36313 Int) Bool)

(assert (=> b!3212794 (= res!1307796 (forall!7396 tokens!494 lambda!117554))))

(declare-fun e!2003283 () Bool)

(declare-fun tp!1013684 () Bool)

(declare-fun b!3212795 () Bool)

(declare-fun e!2003278 () Bool)

(declare-fun inv!49048 (String!40614) Bool)

(declare-fun inv!49051 (TokenValueInjection!10340) Bool)

(assert (=> b!3212795 (= e!2003278 (and tp!1013684 (inv!49048 (tag!5754 (rule!7672 separatorToken!241))) (inv!49051 (transformation!5226 (rule!7672 separatorToken!241))) e!2003283))))

(declare-fun b!3212796 () Bool)

(declare-fun e!2003295 () Unit!50676)

(declare-fun Unit!50678 () Unit!50676)

(assert (=> b!3212796 (= e!2003295 Unit!50678)))

(declare-fun b!3212797 () Bool)

(declare-fun res!1307793 () Bool)

(assert (=> b!3212797 (=> (not res!1307793) (not e!2003275))))

(assert (=> b!3212797 (= res!1307793 (and (not ((_ is Nil!36189) tokens!494)) (not ((_ is Nil!36189) (t!239158 tokens!494)))))))

(declare-fun b!3212798 () Bool)

(declare-fun e!2003299 () Bool)

(assert (=> b!3212798 (= e!2003289 e!2003299)))

(declare-fun res!1307799 () Bool)

(assert (=> b!3212798 (=> res!1307799 e!2003299)))

(declare-fun lt!1086548 () List!36311)

(assert (=> b!3212798 (= res!1307799 (not (= lt!1086526 lt!1086548)))))

(assert (=> b!3212798 (= lt!1086522 lt!1086548)))

(declare-fun lt!1086531 () List!36311)

(assert (=> b!3212798 (= lt!1086548 (++!8688 lt!1086523 lt!1086531))))

(declare-fun lt!1086536 () Unit!50676)

(declare-fun lemmaConcatAssociativity!1750 (List!36311 List!36311 List!36311) Unit!50676)

(assert (=> b!3212798 (= lt!1086536 (lemmaConcatAssociativity!1750 lt!1086523 lt!1086557 lt!1086532))))

(declare-fun b!3212799 () Bool)

(declare-fun e!2003280 () Bool)

(declare-fun lt!1086524 () Rule!10252)

(assert (=> b!3212799 (= e!2003280 (= (rule!7672 separatorToken!241) lt!1086524))))

(declare-fun b!3212800 () Bool)

(declare-fun res!1307772 () Bool)

(assert (=> b!3212800 (=> (not res!1307772) (not e!2003275))))

(declare-fun isEmpty!20281 (List!36312) Bool)

(assert (=> b!3212800 (= res!1307772 (not (isEmpty!20281 rules!2135)))))

(declare-fun b!3212801 () Bool)

(declare-fun e!2003290 () Bool)

(declare-fun e!2003277 () Bool)

(declare-fun tp!1013695 () Bool)

(assert (=> b!3212801 (= e!2003290 (and e!2003277 tp!1013695))))

(declare-fun tp!1013691 () Bool)

(declare-fun b!3212802 () Bool)

(declare-fun e!2003301 () Bool)

(declare-fun inv!21 (TokenValue!5456) Bool)

(assert (=> b!3212802 (= e!2003301 (and (inv!21 (value!169401 separatorToken!241)) e!2003278 tp!1013691))))

(declare-fun b!3212803 () Bool)

(declare-fun e!2003270 () Bool)

(assert (=> b!3212803 (= e!2003275 (not e!2003270))))

(declare-fun res!1307774 () Bool)

(assert (=> b!3212803 (=> res!1307774 e!2003270)))

(declare-fun lt!1086551 () List!36311)

(declare-fun lt!1086552 () List!36311)

(assert (=> b!3212803 (= res!1307774 (not (= lt!1086551 lt!1086552)))))

(declare-fun printList!1365 (LexerInterface!4815 List!36313) List!36311)

(assert (=> b!3212803 (= lt!1086552 (printList!1365 thiss!18206 (Cons!36189 (h!41609 tokens!494) Nil!36189)))))

(declare-fun lt!1086563 () BalanceConc!21268)

(declare-fun list!12875 (BalanceConc!21268) List!36311)

(assert (=> b!3212803 (= lt!1086551 (list!12875 lt!1086563))))

(declare-fun lt!1086550 () BalanceConc!21270)

(declare-fun printTailRec!1312 (LexerInterface!4815 BalanceConc!21270 Int BalanceConc!21268) BalanceConc!21268)

(assert (=> b!3212803 (= lt!1086563 (printTailRec!1312 thiss!18206 lt!1086550 0 (BalanceConc!21269 Empty!10827)))))

(declare-fun print!1880 (LexerInterface!4815 BalanceConc!21270) BalanceConc!21268)

(assert (=> b!3212803 (= lt!1086563 (print!1880 thiss!18206 lt!1086550))))

(declare-fun singletonSeq!2322 (Token!9818) BalanceConc!21270)

(assert (=> b!3212803 (= lt!1086550 (singletonSeq!2322 (h!41609 tokens!494)))))

(declare-fun e!2003287 () Bool)

(declare-fun b!3212804 () Bool)

(declare-fun e!2003279 () Bool)

(declare-fun tp!1013688 () Bool)

(assert (=> b!3212804 (= e!2003287 (and tp!1013688 (inv!49048 (tag!5754 (rule!7672 (h!41609 tokens!494)))) (inv!49051 (transformation!5226 (rule!7672 (h!41609 tokens!494)))) e!2003279))))

(declare-fun b!3212805 () Bool)

(declare-fun res!1307786 () Bool)

(assert (=> b!3212805 (=> (not res!1307786) (not e!2003275))))

(declare-fun sepAndNonSepRulesDisjointChars!1420 (List!36312 List!36312) Bool)

(assert (=> b!3212805 (= res!1307786 (sepAndNonSepRulesDisjointChars!1420 rules!2135 rules!2135))))

(declare-fun b!3212806 () Bool)

(declare-fun e!2003288 () Bool)

(declare-fun lt!1086561 () List!36311)

(assert (=> b!3212806 (= e!2003288 (not (= lt!1086561 Nil!36187)))))

(declare-fun e!2003285 () Bool)

(declare-fun tp!1013686 () Bool)

(declare-fun e!2003293 () Bool)

(declare-fun b!3212807 () Bool)

(declare-fun inv!49052 (Token!9818) Bool)

(assert (=> b!3212807 (= e!2003293 (and (inv!49052 (h!41609 tokens!494)) e!2003285 tp!1013686))))

(declare-fun b!3212808 () Bool)

(declare-fun tp!1013687 () Bool)

(declare-fun e!2003268 () Bool)

(assert (=> b!3212808 (= e!2003277 (and tp!1013687 (inv!49048 (tag!5754 (h!41608 rules!2135))) (inv!49051 (transformation!5226 (h!41608 rules!2135))) e!2003268))))

(assert (=> b!3212809 (= e!2003268 (and tp!1013692 tp!1013690))))

(declare-fun b!3212810 () Bool)

(declare-fun e!2003272 () Bool)

(declare-fun lt!1086545 () Rule!10252)

(assert (=> b!3212810 (= e!2003272 (= (rule!7672 (h!41609 (t!239158 tokens!494))) lt!1086545))))

(declare-fun b!3212811 () Bool)

(declare-fun e!2003300 () Bool)

(declare-fun e!2003269 () Bool)

(assert (=> b!3212811 (= e!2003300 e!2003269)))

(declare-fun res!1307794 () Bool)

(assert (=> b!3212811 (=> (not res!1307794) (not e!2003269))))

(declare-fun lt!1086543 () Rule!10252)

(declare-fun matchR!4619 (Regex!9985 List!36311) Bool)

(assert (=> b!3212811 (= res!1307794 (matchR!4619 (regex!5226 lt!1086543) lt!1086523))))

(declare-datatypes ((Option!7153 0))(
  ( (None!7152) (Some!7152 (v!35712 Rule!10252)) )
))
(declare-fun lt!1086553 () Option!7153)

(declare-fun get!11524 (Option!7153) Rule!10252)

(assert (=> b!3212811 (= lt!1086543 (get!11524 lt!1086553))))

(declare-fun b!3212812 () Bool)

(assert (=> b!3212812 (= e!2003286 e!2003296)))

(declare-fun res!1307775 () Bool)

(assert (=> b!3212812 (=> res!1307775 e!2003296)))

(declare-fun printWithSeparatorTokenList!160 (LexerInterface!4815 List!36313 Token!9818) List!36311)

(assert (=> b!3212812 (= res!1307775 (not (= lt!1086532 (++!8688 (++!8688 lt!1086561 lt!1086557) (printWithSeparatorTokenList!160 thiss!18206 (t!239158 (t!239158 tokens!494)) separatorToken!241)))))))

(declare-fun charsOf!3242 (Token!9818) BalanceConc!21268)

(assert (=> b!3212812 (= lt!1086561 (list!12875 (charsOf!3242 (h!41609 (t!239158 tokens!494)))))))

(assert (=> b!3212812 (= lt!1086531 (++!8688 lt!1086557 lt!1086532))))

(assert (=> b!3212812 (= lt!1086557 (list!12875 (charsOf!3242 separatorToken!241)))))

(assert (=> b!3212812 (= lt!1086532 (printWithSeparatorTokenList!160 thiss!18206 (t!239158 tokens!494) separatorToken!241))))

(assert (=> b!3212812 (= lt!1086526 (printWithSeparatorTokenList!160 thiss!18206 tokens!494 separatorToken!241))))

(assert (=> b!3212813 (= e!2003283 (and tp!1013693 tp!1013696))))

(assert (=> b!3212814 (= e!2003279 (and tp!1013694 tp!1013689))))

(declare-fun b!3212815 () Bool)

(declare-fun res!1307779 () Bool)

(assert (=> b!3212815 (=> res!1307779 e!2003282)))

(declare-fun rulesProduceIndividualToken!2307 (LexerInterface!4815 List!36312 Token!9818) Bool)

(assert (=> b!3212815 (= res!1307779 (not (rulesProduceIndividualToken!2307 thiss!18206 rules!2135 (h!41609 tokens!494))))))

(declare-fun b!3212816 () Bool)

(declare-fun res!1307780 () Bool)

(assert (=> b!3212816 (=> (not res!1307780) (not e!2003284))))

(declare-fun apply!8207 (BalanceConc!21270 Int) Token!9818)

(assert (=> b!3212816 (= res!1307780 (= (apply!8207 (_1!20931 lt!1086541) 0) separatorToken!241))))

(assert (=> b!3212817 (= e!2003299 e!2003288)))

(declare-fun res!1307795 () Bool)

(assert (=> b!3212817 (=> res!1307795 e!2003288)))

(declare-fun contains!6469 (List!36311 C!20156) Bool)

(declare-fun usedCharacters!542 (Regex!9985) List!36311)

(declare-fun head!7047 (List!36311) C!20156)

(assert (=> b!3212817 (= res!1307795 (contains!6469 (usedCharacters!542 (regex!5226 (rule!7672 (h!41609 (t!239158 tokens!494))))) (head!7047 lt!1086561)))))

(declare-datatypes ((tuple2!35596 0))(
  ( (tuple2!35597 (_1!20932 Token!9818) (_2!20932 List!36311)) )
))
(declare-datatypes ((Option!7154 0))(
  ( (None!7153) (Some!7153 (v!35713 tuple2!35596)) )
))
(declare-fun maxPrefixOneRule!1594 (LexerInterface!4815 Rule!10252 List!36311) Option!7154)

(declare-fun apply!8208 (TokenValueInjection!10340 BalanceConc!21268) TokenValue!5456)

(declare-fun size!27274 (List!36311) Int)

(assert (=> b!3212817 (= (maxPrefixOneRule!1594 thiss!18206 (rule!7672 (h!41609 (t!239158 tokens!494))) lt!1086561) (Some!7153 (tuple2!35597 (Token!9819 (apply!8208 (transformation!5226 (rule!7672 (h!41609 (t!239158 tokens!494)))) (seqFromList!3524 lt!1086561)) (rule!7672 (h!41609 (t!239158 tokens!494))) (size!27274 lt!1086561) lt!1086561) Nil!36187)))))

(declare-fun lt!1086527 () Unit!50676)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!707 (LexerInterface!4815 List!36312 List!36311 List!36311 List!36311 Rule!10252) Unit!50676)

(assert (=> b!3212817 (= lt!1086527 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!707 thiss!18206 rules!2135 lt!1086561 lt!1086561 Nil!36187 (rule!7672 (h!41609 (t!239158 tokens!494)))))))

(declare-fun e!2003291 () Bool)

(assert (=> b!3212817 e!2003291))

(declare-fun res!1307797 () Bool)

(assert (=> b!3212817 (=> (not res!1307797) (not e!2003291))))

(declare-fun lt!1086537 () Option!7153)

(declare-fun isDefined!5558 (Option!7153) Bool)

(assert (=> b!3212817 (= res!1307797 (isDefined!5558 lt!1086537))))

(declare-fun getRuleFromTag!931 (LexerInterface!4815 List!36312 String!40614) Option!7153)

(assert (=> b!3212817 (= lt!1086537 (getRuleFromTag!931 thiss!18206 rules!2135 (tag!5754 (rule!7672 (h!41609 (t!239158 tokens!494))))))))

(declare-fun lt!1086535 () Unit!50676)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!931 (LexerInterface!4815 List!36312 List!36311 Token!9818) Unit!50676)

(assert (=> b!3212817 (= lt!1086535 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!931 thiss!18206 rules!2135 lt!1086561 (h!41609 (t!239158 tokens!494))))))

(declare-fun lt!1086539 () Bool)

(assert (=> b!3212817 lt!1086539))

(declare-fun lt!1086538 () Unit!50676)

(declare-fun lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!854 (LexerInterface!4815 List!36312 List!36313 Token!9818) Unit!50676)

(assert (=> b!3212817 (= lt!1086538 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!854 thiss!18206 rules!2135 tokens!494 (h!41609 (t!239158 tokens!494))))))

(declare-fun maxPrefix!2457 (LexerInterface!4815 List!36312 List!36311) Option!7154)

(assert (=> b!3212817 (= (maxPrefix!2457 thiss!18206 rules!2135 lt!1086548) (Some!7153 (tuple2!35597 (h!41609 tokens!494) lt!1086531)))))

(declare-fun lt!1086530 () Unit!50676)

(declare-fun lemmaMaxPrefWithOtherTypeUsedCharAtStartOfSuffixReturnSame!150 (LexerInterface!4815 List!36312 Token!9818 Rule!10252 List!36311 Rule!10252) Unit!50676)

(assert (=> b!3212817 (= lt!1086530 (lemmaMaxPrefWithOtherTypeUsedCharAtStartOfSuffixReturnSame!150 thiss!18206 rules!2135 (h!41609 tokens!494) (rule!7672 (h!41609 tokens!494)) lt!1086531 (rule!7672 separatorToken!241)))))

(declare-fun lt!1086540 () C!20156)

(assert (=> b!3212817 (not (contains!6469 (usedCharacters!542 (regex!5226 (rule!7672 (h!41609 tokens!494)))) lt!1086540))))

(declare-fun lt!1086542 () Unit!50676)

(declare-fun lemmaNonSepRuleNotContainsCharContainedInASepRule!150 (LexerInterface!4815 List!36312 List!36312 Rule!10252 Rule!10252 C!20156) Unit!50676)

(assert (=> b!3212817 (= lt!1086542 (lemmaNonSepRuleNotContainsCharContainedInASepRule!150 thiss!18206 rules!2135 rules!2135 (rule!7672 (h!41609 tokens!494)) (rule!7672 separatorToken!241) lt!1086540))))

(declare-fun lt!1086525 () Unit!50676)

(assert (=> b!3212817 (= lt!1086525 (forallContained!1197 tokens!494 lambda!117555 (h!41609 (t!239158 tokens!494))))))

(declare-fun lt!1086558 () Bool)

(assert (=> b!3212817 (= lt!1086539 (not lt!1086558))))

(assert (=> b!3212817 (= lt!1086539 (rulesProduceIndividualToken!2307 thiss!18206 rules!2135 (h!41609 (t!239158 tokens!494))))))

(assert (=> b!3212817 (= lt!1086558 e!2003273)))

(declare-fun res!1307792 () Bool)

(assert (=> b!3212817 (=> res!1307792 e!2003273)))

(declare-fun size!27275 (BalanceConc!21270) Int)

(assert (=> b!3212817 (= res!1307792 (not (= (size!27275 (_1!20931 lt!1086556)) 1)))))

(declare-fun lt!1086562 () BalanceConc!21268)

(assert (=> b!3212817 (= lt!1086556 (lex!2145 thiss!18206 rules!2135 lt!1086562))))

(declare-fun lt!1086546 () BalanceConc!21270)

(assert (=> b!3212817 (= lt!1086562 (printTailRec!1312 thiss!18206 lt!1086546 0 (BalanceConc!21269 Empty!10827)))))

(assert (=> b!3212817 (= lt!1086562 (print!1880 thiss!18206 lt!1086546))))

(assert (=> b!3212817 (= lt!1086546 (singletonSeq!2322 (h!41609 (t!239158 tokens!494))))))

(assert (=> b!3212817 e!2003284))

(declare-fun res!1307785 () Bool)

(assert (=> b!3212817 (=> (not res!1307785) (not e!2003284))))

(assert (=> b!3212817 (= res!1307785 (= (size!27275 (_1!20931 lt!1086541)) 1))))

(declare-fun lt!1086564 () BalanceConc!21268)

(assert (=> b!3212817 (= lt!1086541 (lex!2145 thiss!18206 rules!2135 lt!1086564))))

(declare-fun lt!1086554 () BalanceConc!21270)

(assert (=> b!3212817 (= lt!1086564 (printTailRec!1312 thiss!18206 lt!1086554 0 (BalanceConc!21269 Empty!10827)))))

(assert (=> b!3212817 (= lt!1086564 (print!1880 thiss!18206 lt!1086554))))

(assert (=> b!3212817 (= lt!1086554 (singletonSeq!2322 separatorToken!241))))

(declare-fun lt!1086560 () Unit!50676)

(assert (=> b!3212817 (= lt!1086560 e!2003295)))

(declare-fun c!539811 () Bool)

(assert (=> b!3212817 (= c!539811 (not (contains!6469 (usedCharacters!542 (regex!5226 (rule!7672 separatorToken!241))) lt!1086540)))))

(assert (=> b!3212817 (= lt!1086540 (head!7047 lt!1086557))))

(declare-fun e!2003298 () Bool)

(assert (=> b!3212817 e!2003298))

(declare-fun res!1307784 () Bool)

(assert (=> b!3212817 (=> (not res!1307784) (not e!2003298))))

(declare-fun lt!1086534 () Option!7153)

(assert (=> b!3212817 (= res!1307784 (isDefined!5558 lt!1086534))))

(assert (=> b!3212817 (= lt!1086534 (getRuleFromTag!931 thiss!18206 rules!2135 (tag!5754 (rule!7672 separatorToken!241))))))

(declare-fun lt!1086533 () Unit!50676)

(assert (=> b!3212817 (= lt!1086533 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!931 thiss!18206 rules!2135 lt!1086557 separatorToken!241))))

(assert (=> b!3212817 (= (maxPrefixOneRule!1594 thiss!18206 (rule!7672 (h!41609 tokens!494)) lt!1086523) (Some!7153 (tuple2!35597 (Token!9819 (apply!8208 (transformation!5226 (rule!7672 (h!41609 tokens!494))) lt!1086549) (rule!7672 (h!41609 tokens!494)) (size!27274 lt!1086523) lt!1086523) Nil!36187)))))

(declare-fun lt!1086555 () Unit!50676)

(assert (=> b!3212817 (= lt!1086555 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!707 thiss!18206 rules!2135 lt!1086523 lt!1086523 Nil!36187 (rule!7672 (h!41609 tokens!494))))))

(assert (=> b!3212817 e!2003300))

(declare-fun res!1307782 () Bool)

(assert (=> b!3212817 (=> (not res!1307782) (not e!2003300))))

(assert (=> b!3212817 (= res!1307782 (isDefined!5558 lt!1086553))))

(assert (=> b!3212817 (= lt!1086553 (getRuleFromTag!931 thiss!18206 rules!2135 (tag!5754 (rule!7672 (h!41609 tokens!494)))))))

(declare-fun lt!1086544 () Unit!50676)

(assert (=> b!3212817 (= lt!1086544 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!931 thiss!18206 rules!2135 lt!1086523 (h!41609 tokens!494)))))

(declare-fun lt!1086547 () Unit!50676)

(assert (=> b!3212817 (= lt!1086547 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!854 thiss!18206 rules!2135 tokens!494 (h!41609 tokens!494)))))

(declare-fun b!3212818 () Bool)

(declare-fun res!1307787 () Bool)

(assert (=> b!3212818 (=> (not res!1307787) (not e!2003275))))

(assert (=> b!3212818 (= res!1307787 (rulesProduceIndividualToken!2307 thiss!18206 rules!2135 separatorToken!241))))

(declare-fun b!3212819 () Bool)

(assert (=> b!3212819 (= e!2003270 e!2003282)))

(declare-fun res!1307777 () Bool)

(assert (=> b!3212819 (=> res!1307777 e!2003282)))

(assert (=> b!3212819 (= res!1307777 (or (not (= lt!1086552 lt!1086523)) (not (= lt!1086551 lt!1086523))))))

(assert (=> b!3212819 (= lt!1086523 (list!12875 (charsOf!3242 (h!41609 tokens!494))))))

(declare-fun res!1307771 () Bool)

(assert (=> start!301726 (=> (not res!1307771) (not e!2003275))))

(assert (=> start!301726 (= res!1307771 ((_ is Lexer!4813) thiss!18206))))

(assert (=> start!301726 e!2003275))

(assert (=> start!301726 true))

(assert (=> start!301726 e!2003290))

(assert (=> start!301726 e!2003293))

(assert (=> start!301726 (and (inv!49052 separatorToken!241) e!2003301)))

(declare-fun b!3212820 () Bool)

(declare-fun e!2003297 () Bool)

(assert (=> b!3212820 (= e!2003297 false)))

(declare-fun b!3212821 () Bool)

(assert (=> b!3212821 (= e!2003298 e!2003280)))

(declare-fun res!1307776 () Bool)

(assert (=> b!3212821 (=> (not res!1307776) (not e!2003280))))

(assert (=> b!3212821 (= res!1307776 (matchR!4619 (regex!5226 lt!1086524) lt!1086557))))

(assert (=> b!3212821 (= lt!1086524 (get!11524 lt!1086534))))

(declare-fun b!3212822 () Bool)

(declare-fun res!1307773 () Bool)

(assert (=> b!3212822 (=> (not res!1307773) (not e!2003275))))

(declare-fun rulesInvariant!4212 (LexerInterface!4815 List!36312) Bool)

(assert (=> b!3212822 (= res!1307773 (rulesInvariant!4212 thiss!18206 rules!2135))))

(declare-fun b!3212823 () Bool)

(declare-fun res!1307791 () Bool)

(assert (=> b!3212823 (=> res!1307791 e!2003273)))

(assert (=> b!3212823 (= res!1307791 (not (= (apply!8207 (_1!20931 lt!1086556) 0) (h!41609 (t!239158 tokens!494)))))))

(declare-fun b!3212824 () Bool)

(declare-fun Unit!50679 () Unit!50676)

(assert (=> b!3212824 (= e!2003295 Unit!50679)))

(declare-fun lt!1086528 () Unit!50676)

(declare-fun lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!390 (Regex!9985 List!36311 C!20156) Unit!50676)

(assert (=> b!3212824 (= lt!1086528 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!390 (regex!5226 (rule!7672 separatorToken!241)) lt!1086557 lt!1086540))))

(declare-fun res!1307783 () Bool)

(assert (=> b!3212824 (= res!1307783 (not (matchR!4619 (regex!5226 (rule!7672 separatorToken!241)) lt!1086557)))))

(assert (=> b!3212824 (=> (not res!1307783) (not e!2003297))))

(assert (=> b!3212824 e!2003297))

(declare-fun b!3212825 () Bool)

(declare-fun tp!1013685 () Bool)

(assert (=> b!3212825 (= e!2003285 (and (inv!21 (value!169401 (h!41609 tokens!494))) e!2003287 tp!1013685))))

(declare-fun b!3212826 () Bool)

(assert (=> b!3212826 (= e!2003269 (= (rule!7672 (h!41609 tokens!494)) lt!1086543))))

(declare-fun b!3212827 () Bool)

(assert (=> b!3212827 (= e!2003291 e!2003272)))

(declare-fun res!1307790 () Bool)

(assert (=> b!3212827 (=> (not res!1307790) (not e!2003272))))

(assert (=> b!3212827 (= res!1307790 (matchR!4619 (regex!5226 lt!1086545) lt!1086561))))

(assert (=> b!3212827 (= lt!1086545 (get!11524 lt!1086537))))

(assert (= (and start!301726 res!1307771) b!3212800))

(assert (= (and b!3212800 res!1307772) b!3212822))

(assert (= (and b!3212822 res!1307773) b!3212788))

(assert (= (and b!3212788 res!1307781) b!3212818))

(assert (= (and b!3212818 res!1307787) b!3212789))

(assert (= (and b!3212789 res!1307789) b!3212794))

(assert (= (and b!3212794 res!1307796) b!3212805))

(assert (= (and b!3212805 res!1307786) b!3212797))

(assert (= (and b!3212797 res!1307793) b!3212803))

(assert (= (and b!3212803 (not res!1307774)) b!3212819))

(assert (= (and b!3212819 (not res!1307777)) b!3212815))

(assert (= (and b!3212815 (not res!1307779)) b!3212792))

(assert (= (and b!3212792 (not res!1307788)) b!3212791))

(assert (= (and b!3212791 (not res!1307778)) b!3212812))

(assert (= (and b!3212812 (not res!1307775)) b!3212793))

(assert (= (and b!3212793 (not res!1307798)) b!3212798))

(assert (= (and b!3212798 (not res!1307799)) b!3212817))

(assert (= (and b!3212817 res!1307782) b!3212811))

(assert (= (and b!3212811 res!1307794) b!3212826))

(assert (= (and b!3212817 res!1307784) b!3212821))

(assert (= (and b!3212821 res!1307776) b!3212799))

(assert (= (and b!3212817 c!539811) b!3212824))

(assert (= (and b!3212817 (not c!539811)) b!3212796))

(assert (= (and b!3212824 res!1307783) b!3212820))

(assert (= (and b!3212817 res!1307785) b!3212816))

(assert (= (and b!3212816 res!1307780) b!3212787))

(assert (= (and b!3212817 (not res!1307792)) b!3212823))

(assert (= (and b!3212823 (not res!1307791)) b!3212790))

(assert (= (and b!3212817 res!1307797) b!3212827))

(assert (= (and b!3212827 res!1307790) b!3212810))

(assert (= (and b!3212817 (not res!1307795)) b!3212806))

(assert (= b!3212808 b!3212809))

(assert (= b!3212801 b!3212808))

(assert (= (and start!301726 ((_ is Cons!36188) rules!2135)) b!3212801))

(assert (= b!3212804 b!3212814))

(assert (= b!3212825 b!3212804))

(assert (= b!3212807 b!3212825))

(assert (= (and start!301726 ((_ is Cons!36189) tokens!494)) b!3212807))

(assert (= b!3212795 b!3212813))

(assert (= b!3212802 b!3212795))

(assert (= start!301726 b!3212802))

(declare-fun m!3483281 () Bool)

(assert (=> b!3212817 m!3483281))

(declare-fun m!3483283 () Bool)

(assert (=> b!3212817 m!3483283))

(declare-fun m!3483285 () Bool)

(assert (=> b!3212817 m!3483285))

(declare-fun m!3483287 () Bool)

(assert (=> b!3212817 m!3483287))

(declare-fun m!3483289 () Bool)

(assert (=> b!3212817 m!3483289))

(declare-fun m!3483291 () Bool)

(assert (=> b!3212817 m!3483291))

(declare-fun m!3483293 () Bool)

(assert (=> b!3212817 m!3483293))

(declare-fun m!3483295 () Bool)

(assert (=> b!3212817 m!3483295))

(declare-fun m!3483297 () Bool)

(assert (=> b!3212817 m!3483297))

(declare-fun m!3483299 () Bool)

(assert (=> b!3212817 m!3483299))

(declare-fun m!3483301 () Bool)

(assert (=> b!3212817 m!3483301))

(declare-fun m!3483303 () Bool)

(assert (=> b!3212817 m!3483303))

(declare-fun m!3483305 () Bool)

(assert (=> b!3212817 m!3483305))

(declare-fun m!3483307 () Bool)

(assert (=> b!3212817 m!3483307))

(declare-fun m!3483309 () Bool)

(assert (=> b!3212817 m!3483309))

(declare-fun m!3483311 () Bool)

(assert (=> b!3212817 m!3483311))

(declare-fun m!3483313 () Bool)

(assert (=> b!3212817 m!3483313))

(declare-fun m!3483315 () Bool)

(assert (=> b!3212817 m!3483315))

(declare-fun m!3483317 () Bool)

(assert (=> b!3212817 m!3483317))

(declare-fun m!3483319 () Bool)

(assert (=> b!3212817 m!3483319))

(assert (=> b!3212817 m!3483281))

(declare-fun m!3483321 () Bool)

(assert (=> b!3212817 m!3483321))

(declare-fun m!3483323 () Bool)

(assert (=> b!3212817 m!3483323))

(declare-fun m!3483325 () Bool)

(assert (=> b!3212817 m!3483325))

(assert (=> b!3212817 m!3483293))

(declare-fun m!3483327 () Bool)

(assert (=> b!3212817 m!3483327))

(declare-fun m!3483329 () Bool)

(assert (=> b!3212817 m!3483329))

(declare-fun m!3483331 () Bool)

(assert (=> b!3212817 m!3483331))

(declare-fun m!3483333 () Bool)

(assert (=> b!3212817 m!3483333))

(declare-fun m!3483335 () Bool)

(assert (=> b!3212817 m!3483335))

(assert (=> b!3212817 m!3483319))

(declare-fun m!3483337 () Bool)

(assert (=> b!3212817 m!3483337))

(declare-fun m!3483339 () Bool)

(assert (=> b!3212817 m!3483339))

(declare-fun m!3483341 () Bool)

(assert (=> b!3212817 m!3483341))

(declare-fun m!3483343 () Bool)

(assert (=> b!3212817 m!3483343))

(declare-fun m!3483345 () Bool)

(assert (=> b!3212817 m!3483345))

(declare-fun m!3483347 () Bool)

(assert (=> b!3212817 m!3483347))

(declare-fun m!3483349 () Bool)

(assert (=> b!3212817 m!3483349))

(declare-fun m!3483351 () Bool)

(assert (=> b!3212817 m!3483351))

(declare-fun m!3483353 () Bool)

(assert (=> b!3212817 m!3483353))

(declare-fun m!3483355 () Bool)

(assert (=> b!3212817 m!3483355))

(declare-fun m!3483357 () Bool)

(assert (=> b!3212817 m!3483357))

(assert (=> b!3212817 m!3483333))

(declare-fun m!3483359 () Bool)

(assert (=> b!3212817 m!3483359))

(declare-fun m!3483361 () Bool)

(assert (=> b!3212817 m!3483361))

(declare-fun m!3483363 () Bool)

(assert (=> b!3212817 m!3483363))

(declare-fun m!3483365 () Bool)

(assert (=> b!3212817 m!3483365))

(assert (=> b!3212817 m!3483337))

(declare-fun m!3483367 () Bool)

(assert (=> b!3212794 m!3483367))

(declare-fun m!3483369 () Bool)

(assert (=> b!3212822 m!3483369))

(declare-fun m!3483371 () Bool)

(assert (=> b!3212808 m!3483371))

(declare-fun m!3483373 () Bool)

(assert (=> b!3212808 m!3483373))

(declare-fun m!3483375 () Bool)

(assert (=> b!3212811 m!3483375))

(declare-fun m!3483377 () Bool)

(assert (=> b!3212811 m!3483377))

(declare-fun m!3483379 () Bool)

(assert (=> b!3212819 m!3483379))

(assert (=> b!3212819 m!3483379))

(declare-fun m!3483381 () Bool)

(assert (=> b!3212819 m!3483381))

(declare-fun m!3483383 () Bool)

(assert (=> b!3212793 m!3483383))

(assert (=> b!3212793 m!3483383))

(declare-fun m!3483385 () Bool)

(assert (=> b!3212793 m!3483385))

(declare-fun m!3483387 () Bool)

(assert (=> b!3212790 m!3483387))

(declare-fun m!3483389 () Bool)

(assert (=> b!3212816 m!3483389))

(declare-fun m!3483391 () Bool)

(assert (=> b!3212802 m!3483391))

(declare-fun m!3483393 () Bool)

(assert (=> b!3212792 m!3483393))

(declare-fun m!3483395 () Bool)

(assert (=> b!3212792 m!3483395))

(declare-fun m!3483397 () Bool)

(assert (=> b!3212792 m!3483397))

(declare-fun m!3483399 () Bool)

(assert (=> b!3212827 m!3483399))

(declare-fun m!3483401 () Bool)

(assert (=> b!3212827 m!3483401))

(declare-fun m!3483403 () Bool)

(assert (=> b!3212791 m!3483403))

(declare-fun m!3483405 () Bool)

(assert (=> b!3212791 m!3483405))

(declare-fun m!3483407 () Bool)

(assert (=> b!3212795 m!3483407))

(declare-fun m!3483409 () Bool)

(assert (=> b!3212795 m!3483409))

(declare-fun m!3483411 () Bool)

(assert (=> b!3212800 m!3483411))

(declare-fun m!3483413 () Bool)

(assert (=> b!3212824 m!3483413))

(declare-fun m!3483415 () Bool)

(assert (=> b!3212824 m!3483415))

(declare-fun m!3483417 () Bool)

(assert (=> b!3212818 m!3483417))

(declare-fun m!3483419 () Bool)

(assert (=> b!3212823 m!3483419))

(declare-fun m!3483421 () Bool)

(assert (=> b!3212803 m!3483421))

(declare-fun m!3483423 () Bool)

(assert (=> b!3212803 m!3483423))

(declare-fun m!3483425 () Bool)

(assert (=> b!3212803 m!3483425))

(declare-fun m!3483427 () Bool)

(assert (=> b!3212803 m!3483427))

(declare-fun m!3483429 () Bool)

(assert (=> b!3212803 m!3483429))

(declare-fun m!3483431 () Bool)

(assert (=> b!3212798 m!3483431))

(declare-fun m!3483433 () Bool)

(assert (=> b!3212798 m!3483433))

(declare-fun m!3483435 () Bool)

(assert (=> b!3212821 m!3483435))

(declare-fun m!3483437 () Bool)

(assert (=> b!3212821 m!3483437))

(declare-fun m!3483439 () Bool)

(assert (=> start!301726 m!3483439))

(declare-fun m!3483441 () Bool)

(assert (=> b!3212807 m!3483441))

(declare-fun m!3483443 () Bool)

(assert (=> b!3212787 m!3483443))

(declare-fun m!3483445 () Bool)

(assert (=> b!3212788 m!3483445))

(assert (=> b!3212788 m!3483445))

(declare-fun m!3483447 () Bool)

(assert (=> b!3212788 m!3483447))

(declare-fun m!3483449 () Bool)

(assert (=> b!3212805 m!3483449))

(declare-fun m!3483451 () Bool)

(assert (=> b!3212804 m!3483451))

(declare-fun m!3483453 () Bool)

(assert (=> b!3212804 m!3483453))

(declare-fun m!3483455 () Bool)

(assert (=> b!3212825 m!3483455))

(declare-fun m!3483457 () Bool)

(assert (=> b!3212812 m!3483457))

(declare-fun m!3483459 () Bool)

(assert (=> b!3212812 m!3483459))

(declare-fun m!3483461 () Bool)

(assert (=> b!3212812 m!3483461))

(declare-fun m!3483463 () Bool)

(assert (=> b!3212812 m!3483463))

(assert (=> b!3212812 m!3483457))

(declare-fun m!3483465 () Bool)

(assert (=> b!3212812 m!3483465))

(declare-fun m!3483467 () Bool)

(assert (=> b!3212812 m!3483467))

(assert (=> b!3212812 m!3483459))

(declare-fun m!3483469 () Bool)

(assert (=> b!3212812 m!3483469))

(declare-fun m!3483471 () Bool)

(assert (=> b!3212812 m!3483471))

(declare-fun m!3483473 () Bool)

(assert (=> b!3212812 m!3483473))

(declare-fun m!3483475 () Bool)

(assert (=> b!3212812 m!3483475))

(assert (=> b!3212812 m!3483473))

(assert (=> b!3212812 m!3483471))

(declare-fun m!3483477 () Bool)

(assert (=> b!3212815 m!3483477))

(check-sat (not b!3212805) (not b!3212793) (not b!3212788) (not b_next!86161) (not start!301726) (not b!3212827) (not b!3212808) (not b_next!86163) (not b!3212792) (not b!3212811) b_and!214237 (not b!3212818) b_and!214239 (not b!3212825) b_and!214235 (not b!3212802) (not b!3212836) (not b!3212791) b_and!214241 (not b!3212817) (not b!3212803) (not b!3212804) (not b!3212824) b_and!214231 (not b_next!86171) (not b!3212819) (not b!3212795) (not b!3212821) b_and!214233 (not b!3212787) (not b!3212800) (not b_next!86169) (not b!3212807) (not b!3212822) (not b_next!86165) (not b!3212812) (not b!3212815) (not b_next!86167) (not b!3212790) (not b!3212823) (not b!3212801) (not b!3212816) (not b!3212794) (not b!3212798))
(check-sat b_and!214237 (not b_next!86161) b_and!214239 b_and!214235 b_and!214241 b_and!214231 (not b_next!86171) (not b_next!86163) b_and!214233 (not b_next!86169) (not b_next!86165) (not b_next!86167))
(get-model)

(declare-fun d!880886 () Bool)

(declare-fun lt!1086583 () Token!9818)

(declare-fun apply!8209 (List!36313 Int) Token!9818)

(declare-fun list!12877 (BalanceConc!21270) List!36313)

(assert (=> d!880886 (= lt!1086583 (apply!8209 (list!12877 (_1!20931 lt!1086541)) 0))))

(declare-fun apply!8210 (Conc!10828 Int) Token!9818)

(assert (=> d!880886 (= lt!1086583 (apply!8210 (c!539814 (_1!20931 lt!1086541)) 0))))

(declare-fun e!2003372 () Bool)

(assert (=> d!880886 e!2003372))

(declare-fun res!1307864 () Bool)

(assert (=> d!880886 (=> (not res!1307864) (not e!2003372))))

(assert (=> d!880886 (= res!1307864 (<= 0 0))))

(assert (=> d!880886 (= (apply!8207 (_1!20931 lt!1086541) 0) lt!1086583)))

(declare-fun b!3212949 () Bool)

(assert (=> b!3212949 (= e!2003372 (< 0 (size!27275 (_1!20931 lt!1086541))))))

(assert (= (and d!880886 res!1307864) b!3212949))

(declare-fun m!3483595 () Bool)

(assert (=> d!880886 m!3483595))

(assert (=> d!880886 m!3483595))

(declare-fun m!3483597 () Bool)

(assert (=> d!880886 m!3483597))

(declare-fun m!3483599 () Bool)

(assert (=> d!880886 m!3483599))

(assert (=> b!3212949 m!3483295))

(assert (=> b!3212816 d!880886))

(declare-fun d!880888 () Bool)

(declare-fun res!1307869 () Bool)

(declare-fun e!2003377 () Bool)

(assert (=> d!880888 (=> res!1307869 e!2003377)))

(assert (=> d!880888 (= res!1307869 ((_ is Nil!36189) tokens!494))))

(assert (=> d!880888 (= (forall!7396 tokens!494 lambda!117554) e!2003377)))

(declare-fun b!3212954 () Bool)

(declare-fun e!2003378 () Bool)

(assert (=> b!3212954 (= e!2003377 e!2003378)))

(declare-fun res!1307870 () Bool)

(assert (=> b!3212954 (=> (not res!1307870) (not e!2003378))))

(declare-fun dynLambda!14628 (Int Token!9818) Bool)

(assert (=> b!3212954 (= res!1307870 (dynLambda!14628 lambda!117554 (h!41609 tokens!494)))))

(declare-fun b!3212955 () Bool)

(assert (=> b!3212955 (= e!2003378 (forall!7396 (t!239158 tokens!494) lambda!117554))))

(assert (= (and d!880888 (not res!1307869)) b!3212954))

(assert (= (and b!3212954 res!1307870) b!3212955))

(declare-fun b_lambda!88133 () Bool)

(assert (=> (not b_lambda!88133) (not b!3212954)))

(declare-fun m!3483601 () Bool)

(assert (=> b!3212954 m!3483601))

(declare-fun m!3483603 () Bool)

(assert (=> b!3212955 m!3483603))

(assert (=> b!3212794 d!880888))

(declare-fun d!880890 () Bool)

(assert (=> d!880890 (= (head!7047 lt!1086557) (h!41607 lt!1086557))))

(assert (=> b!3212817 d!880890))

(declare-fun d!880892 () Bool)

(declare-fun lt!1086586 () BalanceConc!21268)

(assert (=> d!880892 (= (list!12875 lt!1086586) (printList!1365 thiss!18206 (list!12877 lt!1086554)))))

(assert (=> d!880892 (= lt!1086586 (printTailRec!1312 thiss!18206 lt!1086554 0 (BalanceConc!21269 Empty!10827)))))

(assert (=> d!880892 (= (print!1880 thiss!18206 lt!1086554) lt!1086586)))

(declare-fun bs!541882 () Bool)

(assert (= bs!541882 d!880892))

(declare-fun m!3483605 () Bool)

(assert (=> bs!541882 m!3483605))

(declare-fun m!3483607 () Bool)

(assert (=> bs!541882 m!3483607))

(assert (=> bs!541882 m!3483607))

(declare-fun m!3483609 () Bool)

(assert (=> bs!541882 m!3483609))

(assert (=> bs!541882 m!3483315))

(assert (=> b!3212817 d!880892))

(declare-fun d!880894 () Bool)

(declare-fun lt!1086600 () Bool)

(declare-fun e!2003396 () Bool)

(assert (=> d!880894 (= lt!1086600 e!2003396)))

(declare-fun res!1307892 () Bool)

(assert (=> d!880894 (=> (not res!1307892) (not e!2003396))))

(assert (=> d!880894 (= res!1307892 (= (list!12877 (_1!20931 (lex!2145 thiss!18206 rules!2135 (print!1880 thiss!18206 (singletonSeq!2322 (h!41609 (t!239158 tokens!494))))))) (list!12877 (singletonSeq!2322 (h!41609 (t!239158 tokens!494))))))))

(declare-fun e!2003397 () Bool)

(assert (=> d!880894 (= lt!1086600 e!2003397)))

(declare-fun res!1307893 () Bool)

(assert (=> d!880894 (=> (not res!1307893) (not e!2003397))))

(declare-fun lt!1086601 () tuple2!35594)

(assert (=> d!880894 (= res!1307893 (= (size!27275 (_1!20931 lt!1086601)) 1))))

(assert (=> d!880894 (= lt!1086601 (lex!2145 thiss!18206 rules!2135 (print!1880 thiss!18206 (singletonSeq!2322 (h!41609 (t!239158 tokens!494))))))))

(assert (=> d!880894 (not (isEmpty!20281 rules!2135))))

(assert (=> d!880894 (= (rulesProduceIndividualToken!2307 thiss!18206 rules!2135 (h!41609 (t!239158 tokens!494))) lt!1086600)))

(declare-fun b!3212981 () Bool)

(declare-fun res!1307894 () Bool)

(assert (=> b!3212981 (=> (not res!1307894) (not e!2003397))))

(assert (=> b!3212981 (= res!1307894 (= (apply!8207 (_1!20931 lt!1086601) 0) (h!41609 (t!239158 tokens!494))))))

(declare-fun b!3212982 () Bool)

(assert (=> b!3212982 (= e!2003397 (isEmpty!20279 (_2!20931 lt!1086601)))))

(declare-fun b!3212983 () Bool)

(assert (=> b!3212983 (= e!2003396 (isEmpty!20279 (_2!20931 (lex!2145 thiss!18206 rules!2135 (print!1880 thiss!18206 (singletonSeq!2322 (h!41609 (t!239158 tokens!494))))))))))

(assert (= (and d!880894 res!1307893) b!3212981))

(assert (= (and b!3212981 res!1307894) b!3212982))

(assert (= (and d!880894 res!1307892) b!3212983))

(assert (=> d!880894 m!3483411))

(declare-fun m!3483645 () Bool)

(assert (=> d!880894 m!3483645))

(declare-fun m!3483647 () Bool)

(assert (=> d!880894 m!3483647))

(declare-fun m!3483649 () Bool)

(assert (=> d!880894 m!3483649))

(assert (=> d!880894 m!3483357))

(declare-fun m!3483651 () Bool)

(assert (=> d!880894 m!3483651))

(assert (=> d!880894 m!3483357))

(declare-fun m!3483653 () Bool)

(assert (=> d!880894 m!3483653))

(assert (=> d!880894 m!3483357))

(assert (=> d!880894 m!3483645))

(declare-fun m!3483655 () Bool)

(assert (=> b!3212981 m!3483655))

(declare-fun m!3483657 () Bool)

(assert (=> b!3212982 m!3483657))

(assert (=> b!3212983 m!3483357))

(assert (=> b!3212983 m!3483357))

(assert (=> b!3212983 m!3483645))

(assert (=> b!3212983 m!3483645))

(assert (=> b!3212983 m!3483647))

(declare-fun m!3483659 () Bool)

(assert (=> b!3212983 m!3483659))

(assert (=> b!3212817 d!880894))

(declare-fun d!880906 () Bool)

(declare-fun e!2003400 () Bool)

(assert (=> d!880906 e!2003400))

(declare-fun res!1307897 () Bool)

(assert (=> d!880906 (=> (not res!1307897) (not e!2003400))))

(declare-fun lt!1086604 () BalanceConc!21270)

(assert (=> d!880906 (= res!1307897 (= (list!12877 lt!1086604) (Cons!36189 (h!41609 (t!239158 tokens!494)) Nil!36189)))))

(declare-fun singleton!995 (Token!9818) BalanceConc!21270)

(assert (=> d!880906 (= lt!1086604 (singleton!995 (h!41609 (t!239158 tokens!494))))))

(assert (=> d!880906 (= (singletonSeq!2322 (h!41609 (t!239158 tokens!494))) lt!1086604)))

(declare-fun b!3212986 () Bool)

(declare-fun isBalanced!3220 (Conc!10828) Bool)

(assert (=> b!3212986 (= e!2003400 (isBalanced!3220 (c!539814 lt!1086604)))))

(assert (= (and d!880906 res!1307897) b!3212986))

(declare-fun m!3483661 () Bool)

(assert (=> d!880906 m!3483661))

(declare-fun m!3483663 () Bool)

(assert (=> d!880906 m!3483663))

(declare-fun m!3483665 () Bool)

(assert (=> b!3212986 m!3483665))

(assert (=> b!3212817 d!880906))

(declare-fun b!3213021 () Bool)

(declare-fun res!1307913 () Bool)

(declare-fun e!2003425 () Bool)

(assert (=> b!3213021 (=> (not res!1307913) (not e!2003425))))

(declare-fun lt!1086637 () tuple2!35594)

(declare-datatypes ((tuple2!35598 0))(
  ( (tuple2!35599 (_1!20933 List!36313) (_2!20933 List!36311)) )
))
(declare-fun lexList!1314 (LexerInterface!4815 List!36312 List!36311) tuple2!35598)

(assert (=> b!3213021 (= res!1307913 (= (list!12877 (_1!20931 lt!1086637)) (_1!20933 (lexList!1314 thiss!18206 rules!2135 (list!12875 lt!1086564)))))))

(declare-fun b!3213022 () Bool)

(declare-fun e!2003427 () Bool)

(assert (=> b!3213022 (= e!2003427 (= (_2!20931 lt!1086637) lt!1086564))))

(declare-fun d!880908 () Bool)

(assert (=> d!880908 e!2003425))

(declare-fun res!1307914 () Bool)

(assert (=> d!880908 (=> (not res!1307914) (not e!2003425))))

(assert (=> d!880908 (= res!1307914 e!2003427)))

(declare-fun c!539851 () Bool)

(assert (=> d!880908 (= c!539851 (> (size!27275 (_1!20931 lt!1086637)) 0))))

(declare-fun lexTailRecV2!934 (LexerInterface!4815 List!36312 BalanceConc!21268 BalanceConc!21268 BalanceConc!21268 BalanceConc!21270) tuple2!35594)

(assert (=> d!880908 (= lt!1086637 (lexTailRecV2!934 thiss!18206 rules!2135 lt!1086564 (BalanceConc!21269 Empty!10827) lt!1086564 (BalanceConc!21271 Empty!10828)))))

(assert (=> d!880908 (= (lex!2145 thiss!18206 rules!2135 lt!1086564) lt!1086637)))

(declare-fun b!3213023 () Bool)

(declare-fun e!2003426 () Bool)

(assert (=> b!3213023 (= e!2003426 (not (isEmpty!20280 (_1!20931 lt!1086637))))))

(declare-fun b!3213024 () Bool)

(assert (=> b!3213024 (= e!2003425 (= (list!12875 (_2!20931 lt!1086637)) (_2!20933 (lexList!1314 thiss!18206 rules!2135 (list!12875 lt!1086564)))))))

(declare-fun b!3213025 () Bool)

(assert (=> b!3213025 (= e!2003427 e!2003426)))

(declare-fun res!1307915 () Bool)

(declare-fun size!27276 (BalanceConc!21268) Int)

(assert (=> b!3213025 (= res!1307915 (< (size!27276 (_2!20931 lt!1086637)) (size!27276 lt!1086564)))))

(assert (=> b!3213025 (=> (not res!1307915) (not e!2003426))))

(assert (= (and d!880908 c!539851) b!3213025))

(assert (= (and d!880908 (not c!539851)) b!3213022))

(assert (= (and b!3213025 res!1307915) b!3213023))

(assert (= (and d!880908 res!1307914) b!3213021))

(assert (= (and b!3213021 res!1307913) b!3213024))

(declare-fun m!3483733 () Bool)

(assert (=> b!3213021 m!3483733))

(declare-fun m!3483735 () Bool)

(assert (=> b!3213021 m!3483735))

(assert (=> b!3213021 m!3483735))

(declare-fun m!3483737 () Bool)

(assert (=> b!3213021 m!3483737))

(declare-fun m!3483739 () Bool)

(assert (=> d!880908 m!3483739))

(declare-fun m!3483741 () Bool)

(assert (=> d!880908 m!3483741))

(declare-fun m!3483743 () Bool)

(assert (=> b!3213024 m!3483743))

(assert (=> b!3213024 m!3483735))

(assert (=> b!3213024 m!3483735))

(assert (=> b!3213024 m!3483737))

(declare-fun m!3483747 () Bool)

(assert (=> b!3213023 m!3483747))

(declare-fun m!3483749 () Bool)

(assert (=> b!3213025 m!3483749))

(declare-fun m!3483753 () Bool)

(assert (=> b!3213025 m!3483753))

(assert (=> b!3212817 d!880908))

(declare-fun d!880928 () Bool)

(declare-fun e!2003435 () Bool)

(assert (=> d!880928 e!2003435))

(declare-fun res!1307924 () Bool)

(assert (=> d!880928 (=> (not res!1307924) (not e!2003435))))

(assert (=> d!880928 (= res!1307924 (isDefined!5558 (getRuleFromTag!931 thiss!18206 rules!2135 (tag!5754 (rule!7672 (h!41609 (t!239158 tokens!494)))))))))

(declare-fun lt!1086650 () Unit!50676)

(declare-fun choose!18752 (LexerInterface!4815 List!36312 List!36311 Token!9818) Unit!50676)

(assert (=> d!880928 (= lt!1086650 (choose!18752 thiss!18206 rules!2135 lt!1086561 (h!41609 (t!239158 tokens!494))))))

(assert (=> d!880928 (rulesInvariant!4212 thiss!18206 rules!2135)))

(assert (=> d!880928 (= (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!931 thiss!18206 rules!2135 lt!1086561 (h!41609 (t!239158 tokens!494))) lt!1086650)))

(declare-fun b!3213036 () Bool)

(declare-fun res!1307925 () Bool)

(assert (=> b!3213036 (=> (not res!1307925) (not e!2003435))))

(assert (=> b!3213036 (= res!1307925 (matchR!4619 (regex!5226 (get!11524 (getRuleFromTag!931 thiss!18206 rules!2135 (tag!5754 (rule!7672 (h!41609 (t!239158 tokens!494))))))) (list!12875 (charsOf!3242 (h!41609 (t!239158 tokens!494))))))))

(declare-fun b!3213037 () Bool)

(assert (=> b!3213037 (= e!2003435 (= (rule!7672 (h!41609 (t!239158 tokens!494))) (get!11524 (getRuleFromTag!931 thiss!18206 rules!2135 (tag!5754 (rule!7672 (h!41609 (t!239158 tokens!494))))))))))

(assert (= (and d!880928 res!1307924) b!3213036))

(assert (= (and b!3213036 res!1307925) b!3213037))

(assert (=> d!880928 m!3483341))

(assert (=> d!880928 m!3483341))

(declare-fun m!3483795 () Bool)

(assert (=> d!880928 m!3483795))

(declare-fun m!3483797 () Bool)

(assert (=> d!880928 m!3483797))

(assert (=> d!880928 m!3483369))

(assert (=> b!3213036 m!3483457))

(assert (=> b!3213036 m!3483465))

(assert (=> b!3213036 m!3483341))

(declare-fun m!3483799 () Bool)

(assert (=> b!3213036 m!3483799))

(assert (=> b!3213036 m!3483457))

(assert (=> b!3213036 m!3483341))

(assert (=> b!3213036 m!3483465))

(declare-fun m!3483801 () Bool)

(assert (=> b!3213036 m!3483801))

(assert (=> b!3213037 m!3483341))

(assert (=> b!3213037 m!3483341))

(assert (=> b!3213037 m!3483799))

(assert (=> b!3212817 d!880928))

(declare-fun d!880934 () Bool)

(declare-fun lt!1086672 () BalanceConc!21268)

(declare-fun printListTailRec!562 (LexerInterface!4815 List!36313 List!36311) List!36311)

(declare-fun dropList!1079 (BalanceConc!21270 Int) List!36313)

(assert (=> d!880934 (= (list!12875 lt!1086672) (printListTailRec!562 thiss!18206 (dropList!1079 lt!1086554 0) (list!12875 (BalanceConc!21269 Empty!10827))))))

(declare-fun e!2003446 () BalanceConc!21268)

(assert (=> d!880934 (= lt!1086672 e!2003446)))

(declare-fun c!539858 () Bool)

(assert (=> d!880934 (= c!539858 (>= 0 (size!27275 lt!1086554)))))

(declare-fun e!2003447 () Bool)

(assert (=> d!880934 e!2003447))

(declare-fun res!1307934 () Bool)

(assert (=> d!880934 (=> (not res!1307934) (not e!2003447))))

(assert (=> d!880934 (= res!1307934 (>= 0 0))))

(assert (=> d!880934 (= (printTailRec!1312 thiss!18206 lt!1086554 0 (BalanceConc!21269 Empty!10827)) lt!1086672)))

(declare-fun b!3213056 () Bool)

(assert (=> b!3213056 (= e!2003447 (<= 0 (size!27275 lt!1086554)))))

(declare-fun b!3213057 () Bool)

(assert (=> b!3213057 (= e!2003446 (BalanceConc!21269 Empty!10827))))

(declare-fun b!3213058 () Bool)

(declare-fun ++!8689 (BalanceConc!21268 BalanceConc!21268) BalanceConc!21268)

(assert (=> b!3213058 (= e!2003446 (printTailRec!1312 thiss!18206 lt!1086554 (+ 0 1) (++!8689 (BalanceConc!21269 Empty!10827) (charsOf!3242 (apply!8207 lt!1086554 0)))))))

(declare-fun lt!1086673 () List!36313)

(assert (=> b!3213058 (= lt!1086673 (list!12877 lt!1086554))))

(declare-fun lt!1086674 () Unit!50676)

(declare-fun lemmaDropApply!1038 (List!36313 Int) Unit!50676)

(assert (=> b!3213058 (= lt!1086674 (lemmaDropApply!1038 lt!1086673 0))))

(declare-fun head!7048 (List!36313) Token!9818)

(declare-fun drop!1862 (List!36313 Int) List!36313)

(assert (=> b!3213058 (= (head!7048 (drop!1862 lt!1086673 0)) (apply!8209 lt!1086673 0))))

(declare-fun lt!1086677 () Unit!50676)

(assert (=> b!3213058 (= lt!1086677 lt!1086674)))

(declare-fun lt!1086676 () List!36313)

(assert (=> b!3213058 (= lt!1086676 (list!12877 lt!1086554))))

(declare-fun lt!1086671 () Unit!50676)

(declare-fun lemmaDropTail!922 (List!36313 Int) Unit!50676)

(assert (=> b!3213058 (= lt!1086671 (lemmaDropTail!922 lt!1086676 0))))

(declare-fun tail!5215 (List!36313) List!36313)

(assert (=> b!3213058 (= (tail!5215 (drop!1862 lt!1086676 0)) (drop!1862 lt!1086676 (+ 0 1)))))

(declare-fun lt!1086675 () Unit!50676)

(assert (=> b!3213058 (= lt!1086675 lt!1086671)))

(assert (= (and d!880934 res!1307934) b!3213056))

(assert (= (and d!880934 c!539858) b!3213057))

(assert (= (and d!880934 (not c!539858)) b!3213058))

(declare-fun m!3483813 () Bool)

(assert (=> d!880934 m!3483813))

(assert (=> d!880934 m!3483813))

(declare-fun m!3483815 () Bool)

(assert (=> d!880934 m!3483815))

(declare-fun m!3483817 () Bool)

(assert (=> d!880934 m!3483817))

(declare-fun m!3483819 () Bool)

(assert (=> d!880934 m!3483819))

(declare-fun m!3483821 () Bool)

(assert (=> d!880934 m!3483821))

(assert (=> d!880934 m!3483815))

(assert (=> b!3213056 m!3483819))

(declare-fun m!3483823 () Bool)

(assert (=> b!3213058 m!3483823))

(declare-fun m!3483825 () Bool)

(assert (=> b!3213058 m!3483825))

(declare-fun m!3483827 () Bool)

(assert (=> b!3213058 m!3483827))

(declare-fun m!3483829 () Bool)

(assert (=> b!3213058 m!3483829))

(declare-fun m!3483831 () Bool)

(assert (=> b!3213058 m!3483831))

(declare-fun m!3483833 () Bool)

(assert (=> b!3213058 m!3483833))

(declare-fun m!3483835 () Bool)

(assert (=> b!3213058 m!3483835))

(declare-fun m!3483837 () Bool)

(assert (=> b!3213058 m!3483837))

(declare-fun m!3483839 () Bool)

(assert (=> b!3213058 m!3483839))

(assert (=> b!3213058 m!3483833))

(assert (=> b!3213058 m!3483839))

(assert (=> b!3213058 m!3483823))

(assert (=> b!3213058 m!3483835))

(declare-fun m!3483841 () Bool)

(assert (=> b!3213058 m!3483841))

(assert (=> b!3213058 m!3483827))

(assert (=> b!3213058 m!3483607))

(declare-fun m!3483843 () Bool)

(assert (=> b!3213058 m!3483843))

(declare-fun m!3483845 () Bool)

(assert (=> b!3213058 m!3483845))

(assert (=> b!3212817 d!880934))

(declare-fun b!3213075 () Bool)

(declare-fun e!2003457 () List!36311)

(declare-fun call!232514 () List!36311)

(assert (=> b!3213075 (= e!2003457 call!232514)))

(declare-fun bm!232507 () Bool)

(declare-fun call!232512 () List!36311)

(declare-fun c!539867 () Bool)

(declare-fun call!232515 () List!36311)

(assert (=> bm!232507 (= call!232514 (++!8688 (ite c!539867 call!232515 call!232512) (ite c!539867 call!232512 call!232515)))))

(declare-fun b!3213076 () Bool)

(declare-fun e!2003458 () List!36311)

(declare-fun call!232513 () List!36311)

(assert (=> b!3213076 (= e!2003458 call!232513)))

(declare-fun d!880940 () Bool)

(declare-fun c!539869 () Bool)

(assert (=> d!880940 (= c!539869 (or ((_ is EmptyExpr!9985) (regex!5226 (rule!7672 separatorToken!241))) ((_ is EmptyLang!9985) (regex!5226 (rule!7672 separatorToken!241)))))))

(declare-fun e!2003459 () List!36311)

(assert (=> d!880940 (= (usedCharacters!542 (regex!5226 (rule!7672 separatorToken!241))) e!2003459)))

(declare-fun b!3213077 () Bool)

(declare-fun c!539870 () Bool)

(assert (=> b!3213077 (= c!539870 ((_ is Star!9985) (regex!5226 (rule!7672 separatorToken!241))))))

(declare-fun e!2003456 () List!36311)

(assert (=> b!3213077 (= e!2003456 e!2003458)))

(declare-fun b!3213078 () Bool)

(assert (=> b!3213078 (= e!2003458 e!2003457)))

(assert (=> b!3213078 (= c!539867 ((_ is Union!9985) (regex!5226 (rule!7672 separatorToken!241))))))

(declare-fun bm!232508 () Bool)

(assert (=> bm!232508 (= call!232515 call!232513)))

(declare-fun b!3213079 () Bool)

(assert (=> b!3213079 (= e!2003457 call!232514)))

(declare-fun b!3213080 () Bool)

(assert (=> b!3213080 (= e!2003456 (Cons!36187 (c!539812 (regex!5226 (rule!7672 separatorToken!241))) Nil!36187))))

(declare-fun bm!232509 () Bool)

(assert (=> bm!232509 (= call!232512 (usedCharacters!542 (ite c!539867 (regTwo!20483 (regex!5226 (rule!7672 separatorToken!241))) (regOne!20482 (regex!5226 (rule!7672 separatorToken!241))))))))

(declare-fun b!3213081 () Bool)

(assert (=> b!3213081 (= e!2003459 Nil!36187)))

(declare-fun bm!232510 () Bool)

(assert (=> bm!232510 (= call!232513 (usedCharacters!542 (ite c!539870 (reg!10314 (regex!5226 (rule!7672 separatorToken!241))) (ite c!539867 (regOne!20483 (regex!5226 (rule!7672 separatorToken!241))) (regTwo!20482 (regex!5226 (rule!7672 separatorToken!241)))))))))

(declare-fun b!3213082 () Bool)

(assert (=> b!3213082 (= e!2003459 e!2003456)))

(declare-fun c!539868 () Bool)

(assert (=> b!3213082 (= c!539868 ((_ is ElementMatch!9985) (regex!5226 (rule!7672 separatorToken!241))))))

(assert (= (and d!880940 c!539869) b!3213081))

(assert (= (and d!880940 (not c!539869)) b!3213082))

(assert (= (and b!3213082 c!539868) b!3213080))

(assert (= (and b!3213082 (not c!539868)) b!3213077))

(assert (= (and b!3213077 c!539870) b!3213076))

(assert (= (and b!3213077 (not c!539870)) b!3213078))

(assert (= (and b!3213078 c!539867) b!3213075))

(assert (= (and b!3213078 (not c!539867)) b!3213079))

(assert (= (or b!3213075 b!3213079) bm!232509))

(assert (= (or b!3213075 b!3213079) bm!232508))

(assert (= (or b!3213075 b!3213079) bm!232507))

(assert (= (or b!3213076 bm!232508) bm!232510))

(declare-fun m!3483847 () Bool)

(assert (=> bm!232507 m!3483847))

(declare-fun m!3483849 () Bool)

(assert (=> bm!232509 m!3483849))

(declare-fun m!3483851 () Bool)

(assert (=> bm!232510 m!3483851))

(assert (=> b!3212817 d!880940))

(declare-fun b!3213095 () Bool)

(declare-fun e!2003468 () Option!7153)

(declare-fun e!2003470 () Option!7153)

(assert (=> b!3213095 (= e!2003468 e!2003470)))

(declare-fun c!539875 () Bool)

(assert (=> b!3213095 (= c!539875 (and ((_ is Cons!36188) rules!2135) (not (= (tag!5754 (h!41608 rules!2135)) (tag!5754 (rule!7672 (h!41609 (t!239158 tokens!494))))))))))

(declare-fun b!3213096 () Bool)

(declare-fun e!2003469 () Bool)

(declare-fun lt!1086684 () Option!7153)

(assert (=> b!3213096 (= e!2003469 (= (tag!5754 (get!11524 lt!1086684)) (tag!5754 (rule!7672 (h!41609 (t!239158 tokens!494))))))))

(declare-fun b!3213097 () Bool)

(declare-fun lt!1086685 () Unit!50676)

(declare-fun lt!1086686 () Unit!50676)

(assert (=> b!3213097 (= lt!1086685 lt!1086686)))

(assert (=> b!3213097 (rulesInvariant!4212 thiss!18206 (t!239157 rules!2135))))

(declare-fun lemmaInvariantOnRulesThenOnTail!351 (LexerInterface!4815 Rule!10252 List!36312) Unit!50676)

(assert (=> b!3213097 (= lt!1086686 (lemmaInvariantOnRulesThenOnTail!351 thiss!18206 (h!41608 rules!2135) (t!239157 rules!2135)))))

(assert (=> b!3213097 (= e!2003470 (getRuleFromTag!931 thiss!18206 (t!239157 rules!2135) (tag!5754 (rule!7672 (h!41609 (t!239158 tokens!494))))))))

(declare-fun b!3213098 () Bool)

(assert (=> b!3213098 (= e!2003470 None!7152)))

(declare-fun d!880942 () Bool)

(declare-fun e!2003471 () Bool)

(assert (=> d!880942 e!2003471))

(declare-fun res!1307940 () Bool)

(assert (=> d!880942 (=> res!1307940 e!2003471)))

(declare-fun isEmpty!20283 (Option!7153) Bool)

(assert (=> d!880942 (= res!1307940 (isEmpty!20283 lt!1086684))))

(assert (=> d!880942 (= lt!1086684 e!2003468)))

(declare-fun c!539876 () Bool)

(assert (=> d!880942 (= c!539876 (and ((_ is Cons!36188) rules!2135) (= (tag!5754 (h!41608 rules!2135)) (tag!5754 (rule!7672 (h!41609 (t!239158 tokens!494)))))))))

(assert (=> d!880942 (rulesInvariant!4212 thiss!18206 rules!2135)))

(assert (=> d!880942 (= (getRuleFromTag!931 thiss!18206 rules!2135 (tag!5754 (rule!7672 (h!41609 (t!239158 tokens!494))))) lt!1086684)))

(declare-fun b!3213099 () Bool)

(assert (=> b!3213099 (= e!2003471 e!2003469)))

(declare-fun res!1307939 () Bool)

(assert (=> b!3213099 (=> (not res!1307939) (not e!2003469))))

(declare-fun contains!6470 (List!36312 Rule!10252) Bool)

(assert (=> b!3213099 (= res!1307939 (contains!6470 rules!2135 (get!11524 lt!1086684)))))

(declare-fun b!3213100 () Bool)

(assert (=> b!3213100 (= e!2003468 (Some!7152 (h!41608 rules!2135)))))

(assert (= (and d!880942 c!539876) b!3213100))

(assert (= (and d!880942 (not c!539876)) b!3213095))

(assert (= (and b!3213095 c!539875) b!3213097))

(assert (= (and b!3213095 (not c!539875)) b!3213098))

(assert (= (and d!880942 (not res!1307940)) b!3213099))

(assert (= (and b!3213099 res!1307939) b!3213096))

(declare-fun m!3483853 () Bool)

(assert (=> b!3213096 m!3483853))

(declare-fun m!3483855 () Bool)

(assert (=> b!3213097 m!3483855))

(declare-fun m!3483857 () Bool)

(assert (=> b!3213097 m!3483857))

(declare-fun m!3483859 () Bool)

(assert (=> b!3213097 m!3483859))

(declare-fun m!3483861 () Bool)

(assert (=> d!880942 m!3483861))

(assert (=> d!880942 m!3483369))

(assert (=> b!3213099 m!3483853))

(assert (=> b!3213099 m!3483853))

(declare-fun m!3483863 () Bool)

(assert (=> b!3213099 m!3483863))

(assert (=> b!3212817 d!880942))

(declare-fun b!3213101 () Bool)

(declare-fun e!2003473 () List!36311)

(declare-fun call!232518 () List!36311)

(assert (=> b!3213101 (= e!2003473 call!232518)))

(declare-fun c!539877 () Bool)

(declare-fun call!232516 () List!36311)

(declare-fun bm!232511 () Bool)

(declare-fun call!232519 () List!36311)

(assert (=> bm!232511 (= call!232518 (++!8688 (ite c!539877 call!232519 call!232516) (ite c!539877 call!232516 call!232519)))))

(declare-fun b!3213102 () Bool)

(declare-fun e!2003474 () List!36311)

(declare-fun call!232517 () List!36311)

(assert (=> b!3213102 (= e!2003474 call!232517)))

(declare-fun d!880944 () Bool)

(declare-fun c!539879 () Bool)

(assert (=> d!880944 (= c!539879 (or ((_ is EmptyExpr!9985) (regex!5226 (rule!7672 (h!41609 tokens!494)))) ((_ is EmptyLang!9985) (regex!5226 (rule!7672 (h!41609 tokens!494))))))))

(declare-fun e!2003475 () List!36311)

(assert (=> d!880944 (= (usedCharacters!542 (regex!5226 (rule!7672 (h!41609 tokens!494)))) e!2003475)))

(declare-fun b!3213103 () Bool)

(declare-fun c!539880 () Bool)

(assert (=> b!3213103 (= c!539880 ((_ is Star!9985) (regex!5226 (rule!7672 (h!41609 tokens!494)))))))

(declare-fun e!2003472 () List!36311)

(assert (=> b!3213103 (= e!2003472 e!2003474)))

(declare-fun b!3213104 () Bool)

(assert (=> b!3213104 (= e!2003474 e!2003473)))

(assert (=> b!3213104 (= c!539877 ((_ is Union!9985) (regex!5226 (rule!7672 (h!41609 tokens!494)))))))

(declare-fun bm!232512 () Bool)

(assert (=> bm!232512 (= call!232519 call!232517)))

(declare-fun b!3213105 () Bool)

(assert (=> b!3213105 (= e!2003473 call!232518)))

(declare-fun b!3213106 () Bool)

(assert (=> b!3213106 (= e!2003472 (Cons!36187 (c!539812 (regex!5226 (rule!7672 (h!41609 tokens!494)))) Nil!36187))))

(declare-fun bm!232513 () Bool)

(assert (=> bm!232513 (= call!232516 (usedCharacters!542 (ite c!539877 (regTwo!20483 (regex!5226 (rule!7672 (h!41609 tokens!494)))) (regOne!20482 (regex!5226 (rule!7672 (h!41609 tokens!494)))))))))

(declare-fun b!3213107 () Bool)

(assert (=> b!3213107 (= e!2003475 Nil!36187)))

(declare-fun bm!232514 () Bool)

(assert (=> bm!232514 (= call!232517 (usedCharacters!542 (ite c!539880 (reg!10314 (regex!5226 (rule!7672 (h!41609 tokens!494)))) (ite c!539877 (regOne!20483 (regex!5226 (rule!7672 (h!41609 tokens!494)))) (regTwo!20482 (regex!5226 (rule!7672 (h!41609 tokens!494))))))))))

(declare-fun b!3213108 () Bool)

(assert (=> b!3213108 (= e!2003475 e!2003472)))

(declare-fun c!539878 () Bool)

(assert (=> b!3213108 (= c!539878 ((_ is ElementMatch!9985) (regex!5226 (rule!7672 (h!41609 tokens!494)))))))

(assert (= (and d!880944 c!539879) b!3213107))

(assert (= (and d!880944 (not c!539879)) b!3213108))

(assert (= (and b!3213108 c!539878) b!3213106))

(assert (= (and b!3213108 (not c!539878)) b!3213103))

(assert (= (and b!3213103 c!539880) b!3213102))

(assert (= (and b!3213103 (not c!539880)) b!3213104))

(assert (= (and b!3213104 c!539877) b!3213101))

(assert (= (and b!3213104 (not c!539877)) b!3213105))

(assert (= (or b!3213101 b!3213105) bm!232513))

(assert (= (or b!3213101 b!3213105) bm!232512))

(assert (= (or b!3213101 b!3213105) bm!232511))

(assert (= (or b!3213102 bm!232512) bm!232514))

(declare-fun m!3483865 () Bool)

(assert (=> bm!232511 m!3483865))

(declare-fun m!3483867 () Bool)

(assert (=> bm!232513 m!3483867))

(declare-fun m!3483869 () Bool)

(assert (=> bm!232514 m!3483869))

(assert (=> b!3212817 d!880944))

(declare-fun d!880946 () Bool)

(assert (=> d!880946 (rulesProduceIndividualToken!2307 thiss!18206 rules!2135 (h!41609 tokens!494))))

(declare-fun lt!1086728 () Unit!50676)

(declare-fun choose!18753 (LexerInterface!4815 List!36312 List!36313 Token!9818) Unit!50676)

(assert (=> d!880946 (= lt!1086728 (choose!18753 thiss!18206 rules!2135 tokens!494 (h!41609 tokens!494)))))

(assert (=> d!880946 (not (isEmpty!20281 rules!2135))))

(assert (=> d!880946 (= (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!854 thiss!18206 rules!2135 tokens!494 (h!41609 tokens!494)) lt!1086728)))

(declare-fun bs!541889 () Bool)

(assert (= bs!541889 d!880946))

(assert (=> bs!541889 m!3483477))

(declare-fun m!3483961 () Bool)

(assert (=> bs!541889 m!3483961))

(assert (=> bs!541889 m!3483411))

(assert (=> b!3212817 d!880946))

(declare-fun d!880956 () Bool)

(declare-fun lt!1086731 () Int)

(declare-fun size!27277 (List!36313) Int)

(assert (=> d!880956 (= lt!1086731 (size!27277 (list!12877 (_1!20931 lt!1086556))))))

(declare-fun size!27278 (Conc!10828) Int)

(assert (=> d!880956 (= lt!1086731 (size!27278 (c!539814 (_1!20931 lt!1086556))))))

(assert (=> d!880956 (= (size!27275 (_1!20931 lt!1086556)) lt!1086731)))

(declare-fun bs!541890 () Bool)

(assert (= bs!541890 d!880956))

(declare-fun m!3483963 () Bool)

(assert (=> bs!541890 m!3483963))

(assert (=> bs!541890 m!3483963))

(declare-fun m!3483965 () Bool)

(assert (=> bs!541890 m!3483965))

(declare-fun m!3483967 () Bool)

(assert (=> bs!541890 m!3483967))

(assert (=> b!3212817 d!880956))

(declare-fun d!880958 () Bool)

(assert (=> d!880958 (= (maxPrefixOneRule!1594 thiss!18206 (rule!7672 (h!41609 tokens!494)) lt!1086523) (Some!7153 (tuple2!35597 (Token!9819 (apply!8208 (transformation!5226 (rule!7672 (h!41609 tokens!494))) (seqFromList!3524 lt!1086523)) (rule!7672 (h!41609 tokens!494)) (size!27274 lt!1086523) lt!1086523) Nil!36187)))))

(declare-fun lt!1086734 () Unit!50676)

(declare-fun choose!18754 (LexerInterface!4815 List!36312 List!36311 List!36311 List!36311 Rule!10252) Unit!50676)

(assert (=> d!880958 (= lt!1086734 (choose!18754 thiss!18206 rules!2135 lt!1086523 lt!1086523 Nil!36187 (rule!7672 (h!41609 tokens!494))))))

(assert (=> d!880958 (not (isEmpty!20281 rules!2135))))

(assert (=> d!880958 (= (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!707 thiss!18206 rules!2135 lt!1086523 lt!1086523 Nil!36187 (rule!7672 (h!41609 tokens!494))) lt!1086734)))

(declare-fun bs!541891 () Bool)

(assert (= bs!541891 d!880958))

(assert (=> bs!541891 m!3483283))

(assert (=> bs!541891 m!3483303))

(assert (=> bs!541891 m!3483397))

(declare-fun m!3483969 () Bool)

(assert (=> bs!541891 m!3483969))

(assert (=> bs!541891 m!3483411))

(assert (=> bs!541891 m!3483397))

(declare-fun m!3483971 () Bool)

(assert (=> bs!541891 m!3483971))

(assert (=> b!3212817 d!880958))

(declare-fun d!880960 () Bool)

(declare-fun dynLambda!14629 (Int BalanceConc!21268) TokenValue!5456)

(assert (=> d!880960 (= (apply!8208 (transformation!5226 (rule!7672 (h!41609 tokens!494))) lt!1086549) (dynLambda!14629 (toValue!7314 (transformation!5226 (rule!7672 (h!41609 tokens!494)))) lt!1086549))))

(declare-fun b_lambda!88137 () Bool)

(assert (=> (not b_lambda!88137) (not d!880960)))

(declare-fun t!239187 () Bool)

(declare-fun tb!158177 () Bool)

(assert (=> (and b!3212809 (= (toValue!7314 (transformation!5226 (h!41608 rules!2135))) (toValue!7314 (transformation!5226 (rule!7672 (h!41609 tokens!494))))) t!239187) tb!158177))

(declare-fun result!200548 () Bool)

(assert (=> tb!158177 (= result!200548 (inv!21 (dynLambda!14629 (toValue!7314 (transformation!5226 (rule!7672 (h!41609 tokens!494)))) lt!1086549)))))

(declare-fun m!3483973 () Bool)

(assert (=> tb!158177 m!3483973))

(assert (=> d!880960 t!239187))

(declare-fun b_and!214273 () Bool)

(assert (= b_and!214231 (and (=> t!239187 result!200548) b_and!214273)))

(declare-fun tb!158179 () Bool)

(declare-fun t!239189 () Bool)

(assert (=> (and b!3212813 (= (toValue!7314 (transformation!5226 (rule!7672 separatorToken!241))) (toValue!7314 (transformation!5226 (rule!7672 (h!41609 tokens!494))))) t!239189) tb!158179))

(declare-fun result!200552 () Bool)

(assert (= result!200552 result!200548))

(assert (=> d!880960 t!239189))

(declare-fun b_and!214275 () Bool)

(assert (= b_and!214235 (and (=> t!239189 result!200552) b_and!214275)))

(declare-fun t!239191 () Bool)

(declare-fun tb!158181 () Bool)

(assert (=> (and b!3212814 (= (toValue!7314 (transformation!5226 (rule!7672 (h!41609 tokens!494)))) (toValue!7314 (transformation!5226 (rule!7672 (h!41609 tokens!494))))) t!239191) tb!158181))

(declare-fun result!200554 () Bool)

(assert (= result!200554 result!200548))

(assert (=> d!880960 t!239191))

(declare-fun b_and!214277 () Bool)

(assert (= b_and!214239 (and (=> t!239191 result!200554) b_and!214277)))

(declare-fun m!3483975 () Bool)

(assert (=> d!880960 m!3483975))

(assert (=> b!3212817 d!880960))

(declare-fun d!880962 () Bool)

(assert (=> d!880962 (rulesProduceIndividualToken!2307 thiss!18206 rules!2135 (h!41609 (t!239158 tokens!494)))))

(declare-fun lt!1086735 () Unit!50676)

(assert (=> d!880962 (= lt!1086735 (choose!18753 thiss!18206 rules!2135 tokens!494 (h!41609 (t!239158 tokens!494))))))

(assert (=> d!880962 (not (isEmpty!20281 rules!2135))))

(assert (=> d!880962 (= (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!854 thiss!18206 rules!2135 tokens!494 (h!41609 (t!239158 tokens!494))) lt!1086735)))

(declare-fun bs!541892 () Bool)

(assert (= bs!541892 d!880962))

(assert (=> bs!541892 m!3483325))

(declare-fun m!3483977 () Bool)

(assert (=> bs!541892 m!3483977))

(assert (=> bs!541892 m!3483411))

(assert (=> b!3212817 d!880962))

(declare-fun d!880964 () Bool)

(declare-fun lt!1086738 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!4894 (List!36311) (InoxSet C!20156))

(assert (=> d!880964 (= lt!1086738 (select (content!4894 (usedCharacters!542 (regex!5226 (rule!7672 (h!41609 (t!239158 tokens!494)))))) (head!7047 lt!1086561)))))

(declare-fun e!2003516 () Bool)

(assert (=> d!880964 (= lt!1086738 e!2003516)))

(declare-fun res!1307994 () Bool)

(assert (=> d!880964 (=> (not res!1307994) (not e!2003516))))

(assert (=> d!880964 (= res!1307994 ((_ is Cons!36187) (usedCharacters!542 (regex!5226 (rule!7672 (h!41609 (t!239158 tokens!494)))))))))

(assert (=> d!880964 (= (contains!6469 (usedCharacters!542 (regex!5226 (rule!7672 (h!41609 (t!239158 tokens!494))))) (head!7047 lt!1086561)) lt!1086738)))

(declare-fun b!3213187 () Bool)

(declare-fun e!2003517 () Bool)

(assert (=> b!3213187 (= e!2003516 e!2003517)))

(declare-fun res!1307993 () Bool)

(assert (=> b!3213187 (=> res!1307993 e!2003517)))

(assert (=> b!3213187 (= res!1307993 (= (h!41607 (usedCharacters!542 (regex!5226 (rule!7672 (h!41609 (t!239158 tokens!494)))))) (head!7047 lt!1086561)))))

(declare-fun b!3213188 () Bool)

(assert (=> b!3213188 (= e!2003517 (contains!6469 (t!239156 (usedCharacters!542 (regex!5226 (rule!7672 (h!41609 (t!239158 tokens!494)))))) (head!7047 lt!1086561)))))

(assert (= (and d!880964 res!1307994) b!3213187))

(assert (= (and b!3213187 (not res!1307993)) b!3213188))

(assert (=> d!880964 m!3483319))

(declare-fun m!3483979 () Bool)

(assert (=> d!880964 m!3483979))

(assert (=> d!880964 m!3483337))

(declare-fun m!3483981 () Bool)

(assert (=> d!880964 m!3483981))

(assert (=> b!3213188 m!3483337))

(declare-fun m!3483983 () Bool)

(assert (=> b!3213188 m!3483983))

(assert (=> b!3212817 d!880964))

(declare-fun d!880966 () Bool)

(assert (=> d!880966 (dynLambda!14628 lambda!117555 (h!41609 (t!239158 tokens!494)))))

(declare-fun lt!1086741 () Unit!50676)

(declare-fun choose!18756 (List!36313 Int Token!9818) Unit!50676)

(assert (=> d!880966 (= lt!1086741 (choose!18756 tokens!494 lambda!117555 (h!41609 (t!239158 tokens!494))))))

(declare-fun e!2003520 () Bool)

(assert (=> d!880966 e!2003520))

(declare-fun res!1307997 () Bool)

(assert (=> d!880966 (=> (not res!1307997) (not e!2003520))))

(assert (=> d!880966 (= res!1307997 (forall!7396 tokens!494 lambda!117555))))

(assert (=> d!880966 (= (forallContained!1197 tokens!494 lambda!117555 (h!41609 (t!239158 tokens!494))) lt!1086741)))

(declare-fun b!3213191 () Bool)

(declare-fun contains!6471 (List!36313 Token!9818) Bool)

(assert (=> b!3213191 (= e!2003520 (contains!6471 tokens!494 (h!41609 (t!239158 tokens!494))))))

(assert (= (and d!880966 res!1307997) b!3213191))

(declare-fun b_lambda!88139 () Bool)

(assert (=> (not b_lambda!88139) (not d!880966)))

(declare-fun m!3483985 () Bool)

(assert (=> d!880966 m!3483985))

(declare-fun m!3483987 () Bool)

(assert (=> d!880966 m!3483987))

(declare-fun m!3483989 () Bool)

(assert (=> d!880966 m!3483989))

(declare-fun m!3483991 () Bool)

(assert (=> b!3213191 m!3483991))

(assert (=> b!3212817 d!880966))

(declare-fun d!880968 () Bool)

(assert (=> d!880968 (not (contains!6469 (usedCharacters!542 (regex!5226 (rule!7672 (h!41609 tokens!494)))) lt!1086540))))

(declare-fun lt!1086744 () Unit!50676)

(declare-fun choose!18757 (LexerInterface!4815 List!36312 List!36312 Rule!10252 Rule!10252 C!20156) Unit!50676)

(assert (=> d!880968 (= lt!1086744 (choose!18757 thiss!18206 rules!2135 rules!2135 (rule!7672 (h!41609 tokens!494)) (rule!7672 separatorToken!241) lt!1086540))))

(assert (=> d!880968 (rulesInvariant!4212 thiss!18206 rules!2135)))

(assert (=> d!880968 (= (lemmaNonSepRuleNotContainsCharContainedInASepRule!150 thiss!18206 rules!2135 rules!2135 (rule!7672 (h!41609 tokens!494)) (rule!7672 separatorToken!241) lt!1086540) lt!1086744)))

(declare-fun bs!541893 () Bool)

(assert (= bs!541893 d!880968))

(assert (=> bs!541893 m!3483293))

(assert (=> bs!541893 m!3483293))

(assert (=> bs!541893 m!3483327))

(declare-fun m!3483993 () Bool)

(assert (=> bs!541893 m!3483993))

(assert (=> bs!541893 m!3483369))

(assert (=> b!3212817 d!880968))

(declare-fun d!880970 () Bool)

(assert (=> d!880970 (= (isDefined!5558 lt!1086537) (not (isEmpty!20283 lt!1086537)))))

(declare-fun bs!541894 () Bool)

(assert (= bs!541894 d!880970))

(declare-fun m!3483995 () Bool)

(assert (=> bs!541894 m!3483995))

(assert (=> b!3212817 d!880970))

(declare-fun d!880972 () Bool)

(declare-fun lt!1086745 () Bool)

(assert (=> d!880972 (= lt!1086745 (select (content!4894 (usedCharacters!542 (regex!5226 (rule!7672 separatorToken!241)))) lt!1086540))))

(declare-fun e!2003521 () Bool)

(assert (=> d!880972 (= lt!1086745 e!2003521)))

(declare-fun res!1307999 () Bool)

(assert (=> d!880972 (=> (not res!1307999) (not e!2003521))))

(assert (=> d!880972 (= res!1307999 ((_ is Cons!36187) (usedCharacters!542 (regex!5226 (rule!7672 separatorToken!241)))))))

(assert (=> d!880972 (= (contains!6469 (usedCharacters!542 (regex!5226 (rule!7672 separatorToken!241))) lt!1086540) lt!1086745)))

(declare-fun b!3213192 () Bool)

(declare-fun e!2003522 () Bool)

(assert (=> b!3213192 (= e!2003521 e!2003522)))

(declare-fun res!1307998 () Bool)

(assert (=> b!3213192 (=> res!1307998 e!2003522)))

(assert (=> b!3213192 (= res!1307998 (= (h!41607 (usedCharacters!542 (regex!5226 (rule!7672 separatorToken!241)))) lt!1086540))))

(declare-fun b!3213193 () Bool)

(assert (=> b!3213193 (= e!2003522 (contains!6469 (t!239156 (usedCharacters!542 (regex!5226 (rule!7672 separatorToken!241)))) lt!1086540))))

(assert (= (and d!880972 res!1307999) b!3213192))

(assert (= (and b!3213192 (not res!1307998)) b!3213193))

(assert (=> d!880972 m!3483281))

(declare-fun m!3483997 () Bool)

(assert (=> d!880972 m!3483997))

(declare-fun m!3483999 () Bool)

(assert (=> d!880972 m!3483999))

(declare-fun m!3484001 () Bool)

(assert (=> b!3213193 m!3484001))

(assert (=> b!3212817 d!880972))

(declare-fun d!880974 () Bool)

(declare-fun fromListB!1544 (List!36311) BalanceConc!21268)

(assert (=> d!880974 (= (seqFromList!3524 lt!1086561) (fromListB!1544 lt!1086561))))

(declare-fun bs!541895 () Bool)

(assert (= bs!541895 d!880974))

(declare-fun m!3484003 () Bool)

(assert (=> bs!541895 m!3484003))

(assert (=> b!3212817 d!880974))

(declare-fun b!3213194 () Bool)

(declare-fun e!2003523 () Option!7153)

(declare-fun e!2003525 () Option!7153)

(assert (=> b!3213194 (= e!2003523 e!2003525)))

(declare-fun c!539894 () Bool)

(assert (=> b!3213194 (= c!539894 (and ((_ is Cons!36188) rules!2135) (not (= (tag!5754 (h!41608 rules!2135)) (tag!5754 (rule!7672 (h!41609 tokens!494)))))))))

(declare-fun b!3213195 () Bool)

(declare-fun e!2003524 () Bool)

(declare-fun lt!1086746 () Option!7153)

(assert (=> b!3213195 (= e!2003524 (= (tag!5754 (get!11524 lt!1086746)) (tag!5754 (rule!7672 (h!41609 tokens!494)))))))

(declare-fun b!3213196 () Bool)

(declare-fun lt!1086747 () Unit!50676)

(declare-fun lt!1086748 () Unit!50676)

(assert (=> b!3213196 (= lt!1086747 lt!1086748)))

(assert (=> b!3213196 (rulesInvariant!4212 thiss!18206 (t!239157 rules!2135))))

(assert (=> b!3213196 (= lt!1086748 (lemmaInvariantOnRulesThenOnTail!351 thiss!18206 (h!41608 rules!2135) (t!239157 rules!2135)))))

(assert (=> b!3213196 (= e!2003525 (getRuleFromTag!931 thiss!18206 (t!239157 rules!2135) (tag!5754 (rule!7672 (h!41609 tokens!494)))))))

(declare-fun b!3213197 () Bool)

(assert (=> b!3213197 (= e!2003525 None!7152)))

(declare-fun d!880976 () Bool)

(declare-fun e!2003526 () Bool)

(assert (=> d!880976 e!2003526))

(declare-fun res!1308001 () Bool)

(assert (=> d!880976 (=> res!1308001 e!2003526)))

(assert (=> d!880976 (= res!1308001 (isEmpty!20283 lt!1086746))))

(assert (=> d!880976 (= lt!1086746 e!2003523)))

(declare-fun c!539895 () Bool)

(assert (=> d!880976 (= c!539895 (and ((_ is Cons!36188) rules!2135) (= (tag!5754 (h!41608 rules!2135)) (tag!5754 (rule!7672 (h!41609 tokens!494))))))))

(assert (=> d!880976 (rulesInvariant!4212 thiss!18206 rules!2135)))

(assert (=> d!880976 (= (getRuleFromTag!931 thiss!18206 rules!2135 (tag!5754 (rule!7672 (h!41609 tokens!494)))) lt!1086746)))

(declare-fun b!3213198 () Bool)

(assert (=> b!3213198 (= e!2003526 e!2003524)))

(declare-fun res!1308000 () Bool)

(assert (=> b!3213198 (=> (not res!1308000) (not e!2003524))))

(assert (=> b!3213198 (= res!1308000 (contains!6470 rules!2135 (get!11524 lt!1086746)))))

(declare-fun b!3213199 () Bool)

(assert (=> b!3213199 (= e!2003523 (Some!7152 (h!41608 rules!2135)))))

(assert (= (and d!880976 c!539895) b!3213199))

(assert (= (and d!880976 (not c!539895)) b!3213194))

(assert (= (and b!3213194 c!539894) b!3213196))

(assert (= (and b!3213194 (not c!539894)) b!3213197))

(assert (= (and d!880976 (not res!1308001)) b!3213198))

(assert (= (and b!3213198 res!1308000) b!3213195))

(declare-fun m!3484005 () Bool)

(assert (=> b!3213195 m!3484005))

(assert (=> b!3213196 m!3483855))

(assert (=> b!3213196 m!3483857))

(declare-fun m!3484007 () Bool)

(assert (=> b!3213196 m!3484007))

(declare-fun m!3484009 () Bool)

(assert (=> d!880976 m!3484009))

(assert (=> d!880976 m!3483369))

(assert (=> b!3213198 m!3484005))

(assert (=> b!3213198 m!3484005))

(declare-fun m!3484011 () Bool)

(assert (=> b!3213198 m!3484011))

(assert (=> b!3212817 d!880976))

(declare-fun d!880978 () Bool)

(assert (=> d!880978 (= (isDefined!5558 lt!1086553) (not (isEmpty!20283 lt!1086553)))))

(declare-fun bs!541896 () Bool)

(assert (= bs!541896 d!880978))

(declare-fun m!3484013 () Bool)

(assert (=> bs!541896 m!3484013))

(assert (=> b!3212817 d!880978))

(declare-fun d!880980 () Bool)

(declare-fun e!2003527 () Bool)

(assert (=> d!880980 e!2003527))

(declare-fun res!1308002 () Bool)

(assert (=> d!880980 (=> (not res!1308002) (not e!2003527))))

(declare-fun lt!1086749 () BalanceConc!21270)

(assert (=> d!880980 (= res!1308002 (= (list!12877 lt!1086749) (Cons!36189 separatorToken!241 Nil!36189)))))

(assert (=> d!880980 (= lt!1086749 (singleton!995 separatorToken!241))))

(assert (=> d!880980 (= (singletonSeq!2322 separatorToken!241) lt!1086749)))

(declare-fun b!3213200 () Bool)

(assert (=> b!3213200 (= e!2003527 (isBalanced!3220 (c!539814 lt!1086749)))))

(assert (= (and d!880980 res!1308002) b!3213200))

(declare-fun m!3484015 () Bool)

(assert (=> d!880980 m!3484015))

(declare-fun m!3484017 () Bool)

(assert (=> d!880980 m!3484017))

(declare-fun m!3484019 () Bool)

(assert (=> b!3213200 m!3484019))

(assert (=> b!3212817 d!880980))

(declare-fun d!880982 () Bool)

(assert (=> d!880982 (= (isDefined!5558 lt!1086534) (not (isEmpty!20283 lt!1086534)))))

(declare-fun bs!541897 () Bool)

(assert (= bs!541897 d!880982))

(declare-fun m!3484021 () Bool)

(assert (=> bs!541897 m!3484021))

(assert (=> b!3212817 d!880982))

(declare-fun d!880984 () Bool)

(declare-fun lt!1086752 () Int)

(assert (=> d!880984 (>= lt!1086752 0)))

(declare-fun e!2003530 () Int)

(assert (=> d!880984 (= lt!1086752 e!2003530)))

(declare-fun c!539898 () Bool)

(assert (=> d!880984 (= c!539898 ((_ is Nil!36187) lt!1086523))))

(assert (=> d!880984 (= (size!27274 lt!1086523) lt!1086752)))

(declare-fun b!3213205 () Bool)

(assert (=> b!3213205 (= e!2003530 0)))

(declare-fun b!3213206 () Bool)

(assert (=> b!3213206 (= e!2003530 (+ 1 (size!27274 (t!239156 lt!1086523))))))

(assert (= (and d!880984 c!539898) b!3213205))

(assert (= (and d!880984 (not c!539898)) b!3213206))

(declare-fun m!3484023 () Bool)

(assert (=> b!3213206 m!3484023))

(assert (=> b!3212817 d!880984))

(declare-fun b!3213207 () Bool)

(declare-fun res!1308003 () Bool)

(declare-fun e!2003531 () Bool)

(assert (=> b!3213207 (=> (not res!1308003) (not e!2003531))))

(declare-fun lt!1086753 () tuple2!35594)

(assert (=> b!3213207 (= res!1308003 (= (list!12877 (_1!20931 lt!1086753)) (_1!20933 (lexList!1314 thiss!18206 rules!2135 (list!12875 lt!1086562)))))))

(declare-fun b!3213208 () Bool)

(declare-fun e!2003533 () Bool)

(assert (=> b!3213208 (= e!2003533 (= (_2!20931 lt!1086753) lt!1086562))))

(declare-fun d!880986 () Bool)

(assert (=> d!880986 e!2003531))

(declare-fun res!1308004 () Bool)

(assert (=> d!880986 (=> (not res!1308004) (not e!2003531))))

(assert (=> d!880986 (= res!1308004 e!2003533)))

(declare-fun c!539899 () Bool)

(assert (=> d!880986 (= c!539899 (> (size!27275 (_1!20931 lt!1086753)) 0))))

(assert (=> d!880986 (= lt!1086753 (lexTailRecV2!934 thiss!18206 rules!2135 lt!1086562 (BalanceConc!21269 Empty!10827) lt!1086562 (BalanceConc!21271 Empty!10828)))))

(assert (=> d!880986 (= (lex!2145 thiss!18206 rules!2135 lt!1086562) lt!1086753)))

(declare-fun b!3213209 () Bool)

(declare-fun e!2003532 () Bool)

(assert (=> b!3213209 (= e!2003532 (not (isEmpty!20280 (_1!20931 lt!1086753))))))

(declare-fun b!3213210 () Bool)

(assert (=> b!3213210 (= e!2003531 (= (list!12875 (_2!20931 lt!1086753)) (_2!20933 (lexList!1314 thiss!18206 rules!2135 (list!12875 lt!1086562)))))))

(declare-fun b!3213211 () Bool)

(assert (=> b!3213211 (= e!2003533 e!2003532)))

(declare-fun res!1308005 () Bool)

(assert (=> b!3213211 (= res!1308005 (< (size!27276 (_2!20931 lt!1086753)) (size!27276 lt!1086562)))))

(assert (=> b!3213211 (=> (not res!1308005) (not e!2003532))))

(assert (= (and d!880986 c!539899) b!3213211))

(assert (= (and d!880986 (not c!539899)) b!3213208))

(assert (= (and b!3213211 res!1308005) b!3213209))

(assert (= (and d!880986 res!1308004) b!3213207))

(assert (= (and b!3213207 res!1308003) b!3213210))

(declare-fun m!3484025 () Bool)

(assert (=> b!3213207 m!3484025))

(declare-fun m!3484027 () Bool)

(assert (=> b!3213207 m!3484027))

(assert (=> b!3213207 m!3484027))

(declare-fun m!3484029 () Bool)

(assert (=> b!3213207 m!3484029))

(declare-fun m!3484031 () Bool)

(assert (=> d!880986 m!3484031))

(declare-fun m!3484033 () Bool)

(assert (=> d!880986 m!3484033))

(declare-fun m!3484035 () Bool)

(assert (=> b!3213210 m!3484035))

(assert (=> b!3213210 m!3484027))

(assert (=> b!3213210 m!3484027))

(assert (=> b!3213210 m!3484029))

(declare-fun m!3484037 () Bool)

(assert (=> b!3213209 m!3484037))

(declare-fun m!3484039 () Bool)

(assert (=> b!3213211 m!3484039))

(declare-fun m!3484041 () Bool)

(assert (=> b!3213211 m!3484041))

(assert (=> b!3212817 d!880986))

(declare-fun d!880988 () Bool)

(assert (=> d!880988 (= (maxPrefix!2457 thiss!18206 rules!2135 (++!8688 (list!12875 (charsOf!3242 (h!41609 tokens!494))) lt!1086531)) (Some!7153 (tuple2!35597 (h!41609 tokens!494) lt!1086531)))))

(declare-fun lt!1086756 () Unit!50676)

(declare-fun choose!18758 (LexerInterface!4815 List!36312 Token!9818 Rule!10252 List!36311 Rule!10252) Unit!50676)

(assert (=> d!880988 (= lt!1086756 (choose!18758 thiss!18206 rules!2135 (h!41609 tokens!494) (rule!7672 (h!41609 tokens!494)) lt!1086531 (rule!7672 separatorToken!241)))))

(assert (=> d!880988 (not (isEmpty!20281 rules!2135))))

(assert (=> d!880988 (= (lemmaMaxPrefWithOtherTypeUsedCharAtStartOfSuffixReturnSame!150 thiss!18206 rules!2135 (h!41609 tokens!494) (rule!7672 (h!41609 tokens!494)) lt!1086531 (rule!7672 separatorToken!241)) lt!1086756)))

(declare-fun bs!541898 () Bool)

(assert (= bs!541898 d!880988))

(assert (=> bs!541898 m!3483379))

(assert (=> bs!541898 m!3483381))

(assert (=> bs!541898 m!3483379))

(assert (=> bs!541898 m!3483381))

(declare-fun m!3484043 () Bool)

(assert (=> bs!541898 m!3484043))

(declare-fun m!3484045 () Bool)

(assert (=> bs!541898 m!3484045))

(assert (=> bs!541898 m!3484043))

(declare-fun m!3484047 () Bool)

(assert (=> bs!541898 m!3484047))

(assert (=> bs!541898 m!3483411))

(assert (=> b!3212817 d!880988))

(declare-fun d!880990 () Bool)

(declare-fun lt!1086757 () Int)

(assert (=> d!880990 (>= lt!1086757 0)))

(declare-fun e!2003534 () Int)

(assert (=> d!880990 (= lt!1086757 e!2003534)))

(declare-fun c!539900 () Bool)

(assert (=> d!880990 (= c!539900 ((_ is Nil!36187) lt!1086561))))

(assert (=> d!880990 (= (size!27274 lt!1086561) lt!1086757)))

(declare-fun b!3213212 () Bool)

(assert (=> b!3213212 (= e!2003534 0)))

(declare-fun b!3213213 () Bool)

(assert (=> b!3213213 (= e!2003534 (+ 1 (size!27274 (t!239156 lt!1086561))))))

(assert (= (and d!880990 c!539900) b!3213212))

(assert (= (and d!880990 (not c!539900)) b!3213213))

(declare-fun m!3484049 () Bool)

(assert (=> b!3213213 m!3484049))

(assert (=> b!3212817 d!880990))

(declare-fun b!3213263 () Bool)

(declare-fun res!1308030 () Bool)

(declare-fun e!2003559 () Bool)

(assert (=> b!3213263 (=> (not res!1308030) (not e!2003559))))

(declare-fun lt!1086777 () Option!7154)

(declare-fun get!11526 (Option!7154) tuple2!35596)

(assert (=> b!3213263 (= res!1308030 (= (list!12875 (charsOf!3242 (_1!20932 (get!11526 lt!1086777)))) (originalCharacters!5940 (_1!20932 (get!11526 lt!1086777)))))))

(declare-fun b!3213264 () Bool)

(assert (=> b!3213264 (= e!2003559 (contains!6470 rules!2135 (rule!7672 (_1!20932 (get!11526 lt!1086777)))))))

(declare-fun b!3213265 () Bool)

(declare-fun e!2003558 () Option!7154)

(declare-fun call!232533 () Option!7154)

(assert (=> b!3213265 (= e!2003558 call!232533)))

(declare-fun b!3213266 () Bool)

(declare-fun lt!1086778 () Option!7154)

(declare-fun lt!1086774 () Option!7154)

(assert (=> b!3213266 (= e!2003558 (ite (and ((_ is None!7153) lt!1086778) ((_ is None!7153) lt!1086774)) None!7153 (ite ((_ is None!7153) lt!1086774) lt!1086778 (ite ((_ is None!7153) lt!1086778) lt!1086774 (ite (>= (size!27273 (_1!20932 (v!35713 lt!1086778))) (size!27273 (_1!20932 (v!35713 lt!1086774)))) lt!1086778 lt!1086774)))))))

(assert (=> b!3213266 (= lt!1086778 call!232533)))

(assert (=> b!3213266 (= lt!1086774 (maxPrefix!2457 thiss!18206 (t!239157 rules!2135) lt!1086548))))

(declare-fun b!3213267 () Bool)

(declare-fun res!1308033 () Bool)

(assert (=> b!3213267 (=> (not res!1308033) (not e!2003559))))

(assert (=> b!3213267 (= res!1308033 (= (++!8688 (list!12875 (charsOf!3242 (_1!20932 (get!11526 lt!1086777)))) (_2!20932 (get!11526 lt!1086777))) lt!1086548))))

(declare-fun b!3213268 () Bool)

(declare-fun res!1308031 () Bool)

(assert (=> b!3213268 (=> (not res!1308031) (not e!2003559))))

(assert (=> b!3213268 (= res!1308031 (matchR!4619 (regex!5226 (rule!7672 (_1!20932 (get!11526 lt!1086777)))) (list!12875 (charsOf!3242 (_1!20932 (get!11526 lt!1086777))))))))

(declare-fun b!3213269 () Bool)

(declare-fun res!1308035 () Bool)

(assert (=> b!3213269 (=> (not res!1308035) (not e!2003559))))

(assert (=> b!3213269 (= res!1308035 (= (value!169401 (_1!20932 (get!11526 lt!1086777))) (apply!8208 (transformation!5226 (rule!7672 (_1!20932 (get!11526 lt!1086777)))) (seqFromList!3524 (originalCharacters!5940 (_1!20932 (get!11526 lt!1086777)))))))))

(declare-fun b!3213270 () Bool)

(declare-fun res!1308034 () Bool)

(assert (=> b!3213270 (=> (not res!1308034) (not e!2003559))))

(assert (=> b!3213270 (= res!1308034 (< (size!27274 (_2!20932 (get!11526 lt!1086777))) (size!27274 lt!1086548)))))

(declare-fun d!880992 () Bool)

(declare-fun e!2003560 () Bool)

(assert (=> d!880992 e!2003560))

(declare-fun res!1308032 () Bool)

(assert (=> d!880992 (=> res!1308032 e!2003560)))

(declare-fun isEmpty!20287 (Option!7154) Bool)

(assert (=> d!880992 (= res!1308032 (isEmpty!20287 lt!1086777))))

(assert (=> d!880992 (= lt!1086777 e!2003558)))

(declare-fun c!539914 () Bool)

(assert (=> d!880992 (= c!539914 (and ((_ is Cons!36188) rules!2135) ((_ is Nil!36188) (t!239157 rules!2135))))))

(declare-fun lt!1086775 () Unit!50676)

(declare-fun lt!1086776 () Unit!50676)

(assert (=> d!880992 (= lt!1086775 lt!1086776)))

(declare-fun isPrefix!2786 (List!36311 List!36311) Bool)

(assert (=> d!880992 (isPrefix!2786 lt!1086548 lt!1086548)))

(declare-fun lemmaIsPrefixRefl!1745 (List!36311 List!36311) Unit!50676)

(assert (=> d!880992 (= lt!1086776 (lemmaIsPrefixRefl!1745 lt!1086548 lt!1086548))))

(declare-fun rulesValidInductive!1779 (LexerInterface!4815 List!36312) Bool)

(assert (=> d!880992 (rulesValidInductive!1779 thiss!18206 rules!2135)))

(assert (=> d!880992 (= (maxPrefix!2457 thiss!18206 rules!2135 lt!1086548) lt!1086777)))

(declare-fun b!3213271 () Bool)

(assert (=> b!3213271 (= e!2003560 e!2003559)))

(declare-fun res!1308029 () Bool)

(assert (=> b!3213271 (=> (not res!1308029) (not e!2003559))))

(declare-fun isDefined!5560 (Option!7154) Bool)

(assert (=> b!3213271 (= res!1308029 (isDefined!5560 lt!1086777))))

(declare-fun bm!232528 () Bool)

(assert (=> bm!232528 (= call!232533 (maxPrefixOneRule!1594 thiss!18206 (h!41608 rules!2135) lt!1086548))))

(assert (= (and d!880992 c!539914) b!3213265))

(assert (= (and d!880992 (not c!539914)) b!3213266))

(assert (= (or b!3213265 b!3213266) bm!232528))

(assert (= (and d!880992 (not res!1308032)) b!3213271))

(assert (= (and b!3213271 res!1308029) b!3213263))

(assert (= (and b!3213263 res!1308030) b!3213270))

(assert (= (and b!3213270 res!1308034) b!3213267))

(assert (= (and b!3213267 res!1308033) b!3213269))

(assert (= (and b!3213269 res!1308035) b!3213268))

(assert (= (and b!3213268 res!1308031) b!3213264))

(declare-fun m!3484075 () Bool)

(assert (=> bm!232528 m!3484075))

(declare-fun m!3484079 () Bool)

(assert (=> b!3213270 m!3484079))

(declare-fun m!3484081 () Bool)

(assert (=> b!3213270 m!3484081))

(declare-fun m!3484085 () Bool)

(assert (=> b!3213270 m!3484085))

(declare-fun m!3484087 () Bool)

(assert (=> b!3213266 m!3484087))

(assert (=> b!3213268 m!3484079))

(declare-fun m!3484089 () Bool)

(assert (=> b!3213268 m!3484089))

(assert (=> b!3213268 m!3484089))

(declare-fun m!3484091 () Bool)

(assert (=> b!3213268 m!3484091))

(assert (=> b!3213268 m!3484091))

(declare-fun m!3484093 () Bool)

(assert (=> b!3213268 m!3484093))

(assert (=> b!3213264 m!3484079))

(declare-fun m!3484095 () Bool)

(assert (=> b!3213264 m!3484095))

(assert (=> b!3213263 m!3484079))

(assert (=> b!3213263 m!3484089))

(assert (=> b!3213263 m!3484089))

(assert (=> b!3213263 m!3484091))

(declare-fun m!3484097 () Bool)

(assert (=> d!880992 m!3484097))

(declare-fun m!3484099 () Bool)

(assert (=> d!880992 m!3484099))

(declare-fun m!3484101 () Bool)

(assert (=> d!880992 m!3484101))

(declare-fun m!3484103 () Bool)

(assert (=> d!880992 m!3484103))

(assert (=> b!3213269 m!3484079))

(declare-fun m!3484105 () Bool)

(assert (=> b!3213269 m!3484105))

(assert (=> b!3213269 m!3484105))

(declare-fun m!3484107 () Bool)

(assert (=> b!3213269 m!3484107))

(declare-fun m!3484109 () Bool)

(assert (=> b!3213271 m!3484109))

(assert (=> b!3213267 m!3484079))

(assert (=> b!3213267 m!3484089))

(assert (=> b!3213267 m!3484089))

(assert (=> b!3213267 m!3484091))

(assert (=> b!3213267 m!3484091))

(declare-fun m!3484111 () Bool)

(assert (=> b!3213267 m!3484111))

(assert (=> b!3212817 d!880992))

(declare-fun b!3213298 () Bool)

(declare-fun res!1308056 () Bool)

(declare-fun e!2003573 () Bool)

(assert (=> b!3213298 (=> (not res!1308056) (not e!2003573))))

(declare-fun lt!1086791 () Option!7154)

(assert (=> b!3213298 (= res!1308056 (= (++!8688 (list!12875 (charsOf!3242 (_1!20932 (get!11526 lt!1086791)))) (_2!20932 (get!11526 lt!1086791))) lt!1086523))))

(declare-fun b!3213299 () Bool)

(declare-fun e!2003574 () Bool)

(assert (=> b!3213299 (= e!2003574 e!2003573)))

(declare-fun res!1308051 () Bool)

(assert (=> b!3213299 (=> (not res!1308051) (not e!2003573))))

(assert (=> b!3213299 (= res!1308051 (matchR!4619 (regex!5226 (rule!7672 (h!41609 tokens!494))) (list!12875 (charsOf!3242 (_1!20932 (get!11526 lt!1086791))))))))

(declare-fun b!3213300 () Bool)

(declare-fun res!1308053 () Bool)

(assert (=> b!3213300 (=> (not res!1308053) (not e!2003573))))

(assert (=> b!3213300 (= res!1308053 (= (value!169401 (_1!20932 (get!11526 lt!1086791))) (apply!8208 (transformation!5226 (rule!7672 (_1!20932 (get!11526 lt!1086791)))) (seqFromList!3524 (originalCharacters!5940 (_1!20932 (get!11526 lt!1086791)))))))))

(declare-fun b!3213301 () Bool)

(declare-fun e!2003576 () Option!7154)

(declare-datatypes ((tuple2!35604 0))(
  ( (tuple2!35605 (_1!20936 List!36311) (_2!20936 List!36311)) )
))
(declare-fun lt!1086789 () tuple2!35604)

(assert (=> b!3213301 (= e!2003576 (Some!7153 (tuple2!35597 (Token!9819 (apply!8208 (transformation!5226 (rule!7672 (h!41609 tokens!494))) (seqFromList!3524 (_1!20936 lt!1086789))) (rule!7672 (h!41609 tokens!494)) (size!27276 (seqFromList!3524 (_1!20936 lt!1086789))) (_1!20936 lt!1086789)) (_2!20936 lt!1086789))))))

(declare-fun lt!1086793 () Unit!50676)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!806 (Regex!9985 List!36311) Unit!50676)

(assert (=> b!3213301 (= lt!1086793 (longestMatchIsAcceptedByMatchOrIsEmpty!806 (regex!5226 (rule!7672 (h!41609 tokens!494))) lt!1086523))))

(declare-fun res!1308050 () Bool)

(declare-fun isEmpty!20288 (List!36311) Bool)

(declare-fun findLongestMatchInner!833 (Regex!9985 List!36311 Int List!36311 List!36311 Int) tuple2!35604)

(assert (=> b!3213301 (= res!1308050 (isEmpty!20288 (_1!20936 (findLongestMatchInner!833 (regex!5226 (rule!7672 (h!41609 tokens!494))) Nil!36187 (size!27274 Nil!36187) lt!1086523 lt!1086523 (size!27274 lt!1086523)))))))

(declare-fun e!2003575 () Bool)

(assert (=> b!3213301 (=> res!1308050 e!2003575)))

(assert (=> b!3213301 e!2003575))

(declare-fun lt!1086790 () Unit!50676)

(assert (=> b!3213301 (= lt!1086790 lt!1086793)))

(declare-fun lt!1086792 () Unit!50676)

(declare-fun lemmaSemiInverse!1179 (TokenValueInjection!10340 BalanceConc!21268) Unit!50676)

(assert (=> b!3213301 (= lt!1086792 (lemmaSemiInverse!1179 (transformation!5226 (rule!7672 (h!41609 tokens!494))) (seqFromList!3524 (_1!20936 lt!1086789))))))

(declare-fun b!3213302 () Bool)

(declare-fun res!1308055 () Bool)

(assert (=> b!3213302 (=> (not res!1308055) (not e!2003573))))

(assert (=> b!3213302 (= res!1308055 (= (rule!7672 (_1!20932 (get!11526 lt!1086791))) (rule!7672 (h!41609 tokens!494))))))

(declare-fun b!3213303 () Bool)

(assert (=> b!3213303 (= e!2003573 (= (size!27273 (_1!20932 (get!11526 lt!1086791))) (size!27274 (originalCharacters!5940 (_1!20932 (get!11526 lt!1086791))))))))

(declare-fun d!881002 () Bool)

(assert (=> d!881002 e!2003574))

(declare-fun res!1308052 () Bool)

(assert (=> d!881002 (=> res!1308052 e!2003574)))

(assert (=> d!881002 (= res!1308052 (isEmpty!20287 lt!1086791))))

(assert (=> d!881002 (= lt!1086791 e!2003576)))

(declare-fun c!539921 () Bool)

(assert (=> d!881002 (= c!539921 (isEmpty!20288 (_1!20936 lt!1086789)))))

(declare-fun findLongestMatch!748 (Regex!9985 List!36311) tuple2!35604)

(assert (=> d!881002 (= lt!1086789 (findLongestMatch!748 (regex!5226 (rule!7672 (h!41609 tokens!494))) lt!1086523))))

(declare-fun ruleValid!1650 (LexerInterface!4815 Rule!10252) Bool)

(assert (=> d!881002 (ruleValid!1650 thiss!18206 (rule!7672 (h!41609 tokens!494)))))

(assert (=> d!881002 (= (maxPrefixOneRule!1594 thiss!18206 (rule!7672 (h!41609 tokens!494)) lt!1086523) lt!1086791)))

(declare-fun b!3213304 () Bool)

(assert (=> b!3213304 (= e!2003576 None!7153)))

(declare-fun b!3213305 () Bool)

(assert (=> b!3213305 (= e!2003575 (matchR!4619 (regex!5226 (rule!7672 (h!41609 tokens!494))) (_1!20936 (findLongestMatchInner!833 (regex!5226 (rule!7672 (h!41609 tokens!494))) Nil!36187 (size!27274 Nil!36187) lt!1086523 lt!1086523 (size!27274 lt!1086523)))))))

(declare-fun b!3213306 () Bool)

(declare-fun res!1308054 () Bool)

(assert (=> b!3213306 (=> (not res!1308054) (not e!2003573))))

(assert (=> b!3213306 (= res!1308054 (< (size!27274 (_2!20932 (get!11526 lt!1086791))) (size!27274 lt!1086523)))))

(assert (= (and d!881002 c!539921) b!3213304))

(assert (= (and d!881002 (not c!539921)) b!3213301))

(assert (= (and b!3213301 (not res!1308050)) b!3213305))

(assert (= (and d!881002 (not res!1308052)) b!3213299))

(assert (= (and b!3213299 res!1308051) b!3213298))

(assert (= (and b!3213298 res!1308056) b!3213306))

(assert (= (and b!3213306 res!1308054) b!3213302))

(assert (= (and b!3213302 res!1308055) b!3213300))

(assert (= (and b!3213300 res!1308053) b!3213303))

(declare-fun m!3484113 () Bool)

(assert (=> b!3213305 m!3484113))

(assert (=> b!3213305 m!3483283))

(assert (=> b!3213305 m!3484113))

(assert (=> b!3213305 m!3483283))

(declare-fun m!3484115 () Bool)

(assert (=> b!3213305 m!3484115))

(declare-fun m!3484117 () Bool)

(assert (=> b!3213305 m!3484117))

(declare-fun m!3484119 () Bool)

(assert (=> b!3213301 m!3484119))

(declare-fun m!3484121 () Bool)

(assert (=> b!3213301 m!3484121))

(assert (=> b!3213301 m!3484119))

(declare-fun m!3484123 () Bool)

(assert (=> b!3213301 m!3484123))

(assert (=> b!3213301 m!3484119))

(declare-fun m!3484125 () Bool)

(assert (=> b!3213301 m!3484125))

(assert (=> b!3213301 m!3484113))

(assert (=> b!3213301 m!3484113))

(assert (=> b!3213301 m!3483283))

(assert (=> b!3213301 m!3484115))

(declare-fun m!3484127 () Bool)

(assert (=> b!3213301 m!3484127))

(assert (=> b!3213301 m!3484119))

(declare-fun m!3484129 () Bool)

(assert (=> b!3213301 m!3484129))

(assert (=> b!3213301 m!3483283))

(declare-fun m!3484131 () Bool)

(assert (=> b!3213298 m!3484131))

(declare-fun m!3484133 () Bool)

(assert (=> b!3213298 m!3484133))

(assert (=> b!3213298 m!3484133))

(declare-fun m!3484135 () Bool)

(assert (=> b!3213298 m!3484135))

(assert (=> b!3213298 m!3484135))

(declare-fun m!3484137 () Bool)

(assert (=> b!3213298 m!3484137))

(assert (=> b!3213302 m!3484131))

(declare-fun m!3484139 () Bool)

(assert (=> d!881002 m!3484139))

(declare-fun m!3484141 () Bool)

(assert (=> d!881002 m!3484141))

(declare-fun m!3484143 () Bool)

(assert (=> d!881002 m!3484143))

(declare-fun m!3484145 () Bool)

(assert (=> d!881002 m!3484145))

(assert (=> b!3213306 m!3484131))

(declare-fun m!3484147 () Bool)

(assert (=> b!3213306 m!3484147))

(assert (=> b!3213306 m!3483283))

(assert (=> b!3213299 m!3484131))

(assert (=> b!3213299 m!3484133))

(assert (=> b!3213299 m!3484133))

(assert (=> b!3213299 m!3484135))

(assert (=> b!3213299 m!3484135))

(declare-fun m!3484149 () Bool)

(assert (=> b!3213299 m!3484149))

(assert (=> b!3213300 m!3484131))

(declare-fun m!3484151 () Bool)

(assert (=> b!3213300 m!3484151))

(assert (=> b!3213300 m!3484151))

(declare-fun m!3484153 () Bool)

(assert (=> b!3213300 m!3484153))

(assert (=> b!3213303 m!3484131))

(declare-fun m!3484155 () Bool)

(assert (=> b!3213303 m!3484155))

(assert (=> b!3212817 d!881002))

(declare-fun b!3213307 () Bool)

(declare-fun e!2003577 () Option!7153)

(declare-fun e!2003579 () Option!7153)

(assert (=> b!3213307 (= e!2003577 e!2003579)))

(declare-fun c!539922 () Bool)

(assert (=> b!3213307 (= c!539922 (and ((_ is Cons!36188) rules!2135) (not (= (tag!5754 (h!41608 rules!2135)) (tag!5754 (rule!7672 separatorToken!241))))))))

(declare-fun b!3213308 () Bool)

(declare-fun e!2003578 () Bool)

(declare-fun lt!1086794 () Option!7153)

(assert (=> b!3213308 (= e!2003578 (= (tag!5754 (get!11524 lt!1086794)) (tag!5754 (rule!7672 separatorToken!241))))))

(declare-fun b!3213309 () Bool)

(declare-fun lt!1086795 () Unit!50676)

(declare-fun lt!1086796 () Unit!50676)

(assert (=> b!3213309 (= lt!1086795 lt!1086796)))

(assert (=> b!3213309 (rulesInvariant!4212 thiss!18206 (t!239157 rules!2135))))

(assert (=> b!3213309 (= lt!1086796 (lemmaInvariantOnRulesThenOnTail!351 thiss!18206 (h!41608 rules!2135) (t!239157 rules!2135)))))

(assert (=> b!3213309 (= e!2003579 (getRuleFromTag!931 thiss!18206 (t!239157 rules!2135) (tag!5754 (rule!7672 separatorToken!241))))))

(declare-fun b!3213310 () Bool)

(assert (=> b!3213310 (= e!2003579 None!7152)))

(declare-fun d!881004 () Bool)

(declare-fun e!2003580 () Bool)

(assert (=> d!881004 e!2003580))

(declare-fun res!1308058 () Bool)

(assert (=> d!881004 (=> res!1308058 e!2003580)))

(assert (=> d!881004 (= res!1308058 (isEmpty!20283 lt!1086794))))

(assert (=> d!881004 (= lt!1086794 e!2003577)))

(declare-fun c!539923 () Bool)

(assert (=> d!881004 (= c!539923 (and ((_ is Cons!36188) rules!2135) (= (tag!5754 (h!41608 rules!2135)) (tag!5754 (rule!7672 separatorToken!241)))))))

(assert (=> d!881004 (rulesInvariant!4212 thiss!18206 rules!2135)))

(assert (=> d!881004 (= (getRuleFromTag!931 thiss!18206 rules!2135 (tag!5754 (rule!7672 separatorToken!241))) lt!1086794)))

(declare-fun b!3213311 () Bool)

(assert (=> b!3213311 (= e!2003580 e!2003578)))

(declare-fun res!1308057 () Bool)

(assert (=> b!3213311 (=> (not res!1308057) (not e!2003578))))

(assert (=> b!3213311 (= res!1308057 (contains!6470 rules!2135 (get!11524 lt!1086794)))))

(declare-fun b!3213312 () Bool)

(assert (=> b!3213312 (= e!2003577 (Some!7152 (h!41608 rules!2135)))))

(assert (= (and d!881004 c!539923) b!3213312))

(assert (= (and d!881004 (not c!539923)) b!3213307))

(assert (= (and b!3213307 c!539922) b!3213309))

(assert (= (and b!3213307 (not c!539922)) b!3213310))

(assert (= (and d!881004 (not res!1308058)) b!3213311))

(assert (= (and b!3213311 res!1308057) b!3213308))

(declare-fun m!3484157 () Bool)

(assert (=> b!3213308 m!3484157))

(assert (=> b!3213309 m!3483855))

(assert (=> b!3213309 m!3483857))

(declare-fun m!3484159 () Bool)

(assert (=> b!3213309 m!3484159))

(declare-fun m!3484161 () Bool)

(assert (=> d!881004 m!3484161))

(assert (=> d!881004 m!3483369))

(assert (=> b!3213311 m!3484157))

(assert (=> b!3213311 m!3484157))

(declare-fun m!3484163 () Bool)

(assert (=> b!3213311 m!3484163))

(assert (=> b!3212817 d!881004))

(declare-fun d!881006 () Bool)

(declare-fun e!2003581 () Bool)

(assert (=> d!881006 e!2003581))

(declare-fun res!1308059 () Bool)

(assert (=> d!881006 (=> (not res!1308059) (not e!2003581))))

(assert (=> d!881006 (= res!1308059 (isDefined!5558 (getRuleFromTag!931 thiss!18206 rules!2135 (tag!5754 (rule!7672 (h!41609 tokens!494))))))))

(declare-fun lt!1086797 () Unit!50676)

(assert (=> d!881006 (= lt!1086797 (choose!18752 thiss!18206 rules!2135 lt!1086523 (h!41609 tokens!494)))))

(assert (=> d!881006 (rulesInvariant!4212 thiss!18206 rules!2135)))

(assert (=> d!881006 (= (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!931 thiss!18206 rules!2135 lt!1086523 (h!41609 tokens!494)) lt!1086797)))

(declare-fun b!3213313 () Bool)

(declare-fun res!1308060 () Bool)

(assert (=> b!3213313 (=> (not res!1308060) (not e!2003581))))

(assert (=> b!3213313 (= res!1308060 (matchR!4619 (regex!5226 (get!11524 (getRuleFromTag!931 thiss!18206 rules!2135 (tag!5754 (rule!7672 (h!41609 tokens!494)))))) (list!12875 (charsOf!3242 (h!41609 tokens!494)))))))

(declare-fun b!3213314 () Bool)

(assert (=> b!3213314 (= e!2003581 (= (rule!7672 (h!41609 tokens!494)) (get!11524 (getRuleFromTag!931 thiss!18206 rules!2135 (tag!5754 (rule!7672 (h!41609 tokens!494)))))))))

(assert (= (and d!881006 res!1308059) b!3213313))

(assert (= (and b!3213313 res!1308060) b!3213314))

(assert (=> d!881006 m!3483313))

(assert (=> d!881006 m!3483313))

(declare-fun m!3484165 () Bool)

(assert (=> d!881006 m!3484165))

(declare-fun m!3484167 () Bool)

(assert (=> d!881006 m!3484167))

(assert (=> d!881006 m!3483369))

(assert (=> b!3213313 m!3483379))

(assert (=> b!3213313 m!3483381))

(assert (=> b!3213313 m!3483313))

(declare-fun m!3484169 () Bool)

(assert (=> b!3213313 m!3484169))

(assert (=> b!3213313 m!3483379))

(assert (=> b!3213313 m!3483313))

(assert (=> b!3213313 m!3483381))

(declare-fun m!3484171 () Bool)

(assert (=> b!3213313 m!3484171))

(assert (=> b!3213314 m!3483313))

(assert (=> b!3213314 m!3483313))

(assert (=> b!3213314 m!3484169))

(assert (=> b!3212817 d!881006))

(declare-fun d!881008 () Bool)

(declare-fun lt!1086798 () Bool)

(assert (=> d!881008 (= lt!1086798 (select (content!4894 (usedCharacters!542 (regex!5226 (rule!7672 (h!41609 tokens!494))))) lt!1086540))))

(declare-fun e!2003582 () Bool)

(assert (=> d!881008 (= lt!1086798 e!2003582)))

(declare-fun res!1308062 () Bool)

(assert (=> d!881008 (=> (not res!1308062) (not e!2003582))))

(assert (=> d!881008 (= res!1308062 ((_ is Cons!36187) (usedCharacters!542 (regex!5226 (rule!7672 (h!41609 tokens!494))))))))

(assert (=> d!881008 (= (contains!6469 (usedCharacters!542 (regex!5226 (rule!7672 (h!41609 tokens!494)))) lt!1086540) lt!1086798)))

(declare-fun b!3213315 () Bool)

(declare-fun e!2003583 () Bool)

(assert (=> b!3213315 (= e!2003582 e!2003583)))

(declare-fun res!1308061 () Bool)

(assert (=> b!3213315 (=> res!1308061 e!2003583)))

(assert (=> b!3213315 (= res!1308061 (= (h!41607 (usedCharacters!542 (regex!5226 (rule!7672 (h!41609 tokens!494))))) lt!1086540))))

(declare-fun b!3213316 () Bool)

(assert (=> b!3213316 (= e!2003583 (contains!6469 (t!239156 (usedCharacters!542 (regex!5226 (rule!7672 (h!41609 tokens!494))))) lt!1086540))))

(assert (= (and d!881008 res!1308062) b!3213315))

(assert (= (and b!3213315 (not res!1308061)) b!3213316))

(assert (=> d!881008 m!3483293))

(declare-fun m!3484173 () Bool)

(assert (=> d!881008 m!3484173))

(declare-fun m!3484175 () Bool)

(assert (=> d!881008 m!3484175))

(declare-fun m!3484177 () Bool)

(assert (=> b!3213316 m!3484177))

(assert (=> b!3212817 d!881008))

(declare-fun b!3213317 () Bool)

(declare-fun e!2003585 () List!36311)

(declare-fun call!232540 () List!36311)

(assert (=> b!3213317 (= e!2003585 call!232540)))

(declare-fun bm!232533 () Bool)

(declare-fun call!232538 () List!36311)

(declare-fun c!539924 () Bool)

(declare-fun call!232541 () List!36311)

(assert (=> bm!232533 (= call!232540 (++!8688 (ite c!539924 call!232541 call!232538) (ite c!539924 call!232538 call!232541)))))

(declare-fun b!3213318 () Bool)

(declare-fun e!2003586 () List!36311)

(declare-fun call!232539 () List!36311)

(assert (=> b!3213318 (= e!2003586 call!232539)))

(declare-fun d!881010 () Bool)

(declare-fun c!539926 () Bool)

(assert (=> d!881010 (= c!539926 (or ((_ is EmptyExpr!9985) (regex!5226 (rule!7672 (h!41609 (t!239158 tokens!494))))) ((_ is EmptyLang!9985) (regex!5226 (rule!7672 (h!41609 (t!239158 tokens!494)))))))))

(declare-fun e!2003587 () List!36311)

(assert (=> d!881010 (= (usedCharacters!542 (regex!5226 (rule!7672 (h!41609 (t!239158 tokens!494))))) e!2003587)))

(declare-fun b!3213319 () Bool)

(declare-fun c!539927 () Bool)

(assert (=> b!3213319 (= c!539927 ((_ is Star!9985) (regex!5226 (rule!7672 (h!41609 (t!239158 tokens!494))))))))

(declare-fun e!2003584 () List!36311)

(assert (=> b!3213319 (= e!2003584 e!2003586)))

(declare-fun b!3213320 () Bool)

(assert (=> b!3213320 (= e!2003586 e!2003585)))

(assert (=> b!3213320 (= c!539924 ((_ is Union!9985) (regex!5226 (rule!7672 (h!41609 (t!239158 tokens!494))))))))

(declare-fun bm!232534 () Bool)

(assert (=> bm!232534 (= call!232541 call!232539)))

(declare-fun b!3213321 () Bool)

(assert (=> b!3213321 (= e!2003585 call!232540)))

(declare-fun b!3213322 () Bool)

(assert (=> b!3213322 (= e!2003584 (Cons!36187 (c!539812 (regex!5226 (rule!7672 (h!41609 (t!239158 tokens!494))))) Nil!36187))))

(declare-fun bm!232535 () Bool)

(assert (=> bm!232535 (= call!232538 (usedCharacters!542 (ite c!539924 (regTwo!20483 (regex!5226 (rule!7672 (h!41609 (t!239158 tokens!494))))) (regOne!20482 (regex!5226 (rule!7672 (h!41609 (t!239158 tokens!494))))))))))

(declare-fun b!3213323 () Bool)

(assert (=> b!3213323 (= e!2003587 Nil!36187)))

(declare-fun bm!232536 () Bool)

(assert (=> bm!232536 (= call!232539 (usedCharacters!542 (ite c!539927 (reg!10314 (regex!5226 (rule!7672 (h!41609 (t!239158 tokens!494))))) (ite c!539924 (regOne!20483 (regex!5226 (rule!7672 (h!41609 (t!239158 tokens!494))))) (regTwo!20482 (regex!5226 (rule!7672 (h!41609 (t!239158 tokens!494)))))))))))

(declare-fun b!3213324 () Bool)

(assert (=> b!3213324 (= e!2003587 e!2003584)))

(declare-fun c!539925 () Bool)

(assert (=> b!3213324 (= c!539925 ((_ is ElementMatch!9985) (regex!5226 (rule!7672 (h!41609 (t!239158 tokens!494))))))))

(assert (= (and d!881010 c!539926) b!3213323))

(assert (= (and d!881010 (not c!539926)) b!3213324))

(assert (= (and b!3213324 c!539925) b!3213322))

(assert (= (and b!3213324 (not c!539925)) b!3213319))

(assert (= (and b!3213319 c!539927) b!3213318))

(assert (= (and b!3213319 (not c!539927)) b!3213320))

(assert (= (and b!3213320 c!539924) b!3213317))

(assert (= (and b!3213320 (not c!539924)) b!3213321))

(assert (= (or b!3213317 b!3213321) bm!232535))

(assert (= (or b!3213317 b!3213321) bm!232534))

(assert (= (or b!3213317 b!3213321) bm!232533))

(assert (= (or b!3213318 bm!232534) bm!232536))

(declare-fun m!3484179 () Bool)

(assert (=> bm!232533 m!3484179))

(declare-fun m!3484181 () Bool)

(assert (=> bm!232535 m!3484181))

(declare-fun m!3484183 () Bool)

(assert (=> bm!232536 m!3484183))

(assert (=> b!3212817 d!881010))

(declare-fun d!881012 () Bool)

(declare-fun lt!1086799 () Int)

(assert (=> d!881012 (= lt!1086799 (size!27277 (list!12877 (_1!20931 lt!1086541))))))

(assert (=> d!881012 (= lt!1086799 (size!27278 (c!539814 (_1!20931 lt!1086541))))))

(assert (=> d!881012 (= (size!27275 (_1!20931 lt!1086541)) lt!1086799)))

(declare-fun bs!541901 () Bool)

(assert (= bs!541901 d!881012))

(assert (=> bs!541901 m!3483595))

(assert (=> bs!541901 m!3483595))

(declare-fun m!3484185 () Bool)

(assert (=> bs!541901 m!3484185))

(declare-fun m!3484187 () Bool)

(assert (=> bs!541901 m!3484187))

(assert (=> b!3212817 d!881012))

(declare-fun d!881014 () Bool)

(declare-fun e!2003588 () Bool)

(assert (=> d!881014 e!2003588))

(declare-fun res!1308063 () Bool)

(assert (=> d!881014 (=> (not res!1308063) (not e!2003588))))

(assert (=> d!881014 (= res!1308063 (isDefined!5558 (getRuleFromTag!931 thiss!18206 rules!2135 (tag!5754 (rule!7672 separatorToken!241)))))))

(declare-fun lt!1086800 () Unit!50676)

(assert (=> d!881014 (= lt!1086800 (choose!18752 thiss!18206 rules!2135 lt!1086557 separatorToken!241))))

(assert (=> d!881014 (rulesInvariant!4212 thiss!18206 rules!2135)))

(assert (=> d!881014 (= (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!931 thiss!18206 rules!2135 lt!1086557 separatorToken!241) lt!1086800)))

(declare-fun b!3213325 () Bool)

(declare-fun res!1308064 () Bool)

(assert (=> b!3213325 (=> (not res!1308064) (not e!2003588))))

(assert (=> b!3213325 (= res!1308064 (matchR!4619 (regex!5226 (get!11524 (getRuleFromTag!931 thiss!18206 rules!2135 (tag!5754 (rule!7672 separatorToken!241))))) (list!12875 (charsOf!3242 separatorToken!241))))))

(declare-fun b!3213326 () Bool)

(assert (=> b!3213326 (= e!2003588 (= (rule!7672 separatorToken!241) (get!11524 (getRuleFromTag!931 thiss!18206 rules!2135 (tag!5754 (rule!7672 separatorToken!241))))))))

(assert (= (and d!881014 res!1308063) b!3213325))

(assert (= (and b!3213325 res!1308064) b!3213326))

(assert (=> d!881014 m!3483289))

(assert (=> d!881014 m!3483289))

(declare-fun m!3484189 () Bool)

(assert (=> d!881014 m!3484189))

(declare-fun m!3484191 () Bool)

(assert (=> d!881014 m!3484191))

(assert (=> d!881014 m!3483369))

(assert (=> b!3213325 m!3483459))

(assert (=> b!3213325 m!3483469))

(assert (=> b!3213325 m!3483289))

(declare-fun m!3484193 () Bool)

(assert (=> b!3213325 m!3484193))

(assert (=> b!3213325 m!3483459))

(assert (=> b!3213325 m!3483289))

(assert (=> b!3213325 m!3483469))

(declare-fun m!3484195 () Bool)

(assert (=> b!3213325 m!3484195))

(assert (=> b!3213326 m!3483289))

(assert (=> b!3213326 m!3483289))

(assert (=> b!3213326 m!3484193))

(assert (=> b!3212817 d!881014))

(declare-fun b!3213327 () Bool)

(declare-fun res!1308071 () Bool)

(declare-fun e!2003589 () Bool)

(assert (=> b!3213327 (=> (not res!1308071) (not e!2003589))))

(declare-fun lt!1086803 () Option!7154)

(assert (=> b!3213327 (= res!1308071 (= (++!8688 (list!12875 (charsOf!3242 (_1!20932 (get!11526 lt!1086803)))) (_2!20932 (get!11526 lt!1086803))) lt!1086561))))

(declare-fun b!3213328 () Bool)

(declare-fun e!2003590 () Bool)

(assert (=> b!3213328 (= e!2003590 e!2003589)))

(declare-fun res!1308066 () Bool)

(assert (=> b!3213328 (=> (not res!1308066) (not e!2003589))))

(assert (=> b!3213328 (= res!1308066 (matchR!4619 (regex!5226 (rule!7672 (h!41609 (t!239158 tokens!494)))) (list!12875 (charsOf!3242 (_1!20932 (get!11526 lt!1086803))))))))

(declare-fun b!3213329 () Bool)

(declare-fun res!1308068 () Bool)

(assert (=> b!3213329 (=> (not res!1308068) (not e!2003589))))

(assert (=> b!3213329 (= res!1308068 (= (value!169401 (_1!20932 (get!11526 lt!1086803))) (apply!8208 (transformation!5226 (rule!7672 (_1!20932 (get!11526 lt!1086803)))) (seqFromList!3524 (originalCharacters!5940 (_1!20932 (get!11526 lt!1086803)))))))))

(declare-fun b!3213330 () Bool)

(declare-fun e!2003592 () Option!7154)

(declare-fun lt!1086801 () tuple2!35604)

(assert (=> b!3213330 (= e!2003592 (Some!7153 (tuple2!35597 (Token!9819 (apply!8208 (transformation!5226 (rule!7672 (h!41609 (t!239158 tokens!494)))) (seqFromList!3524 (_1!20936 lt!1086801))) (rule!7672 (h!41609 (t!239158 tokens!494))) (size!27276 (seqFromList!3524 (_1!20936 lt!1086801))) (_1!20936 lt!1086801)) (_2!20936 lt!1086801))))))

(declare-fun lt!1086805 () Unit!50676)

(assert (=> b!3213330 (= lt!1086805 (longestMatchIsAcceptedByMatchOrIsEmpty!806 (regex!5226 (rule!7672 (h!41609 (t!239158 tokens!494)))) lt!1086561))))

(declare-fun res!1308065 () Bool)

(assert (=> b!3213330 (= res!1308065 (isEmpty!20288 (_1!20936 (findLongestMatchInner!833 (regex!5226 (rule!7672 (h!41609 (t!239158 tokens!494)))) Nil!36187 (size!27274 Nil!36187) lt!1086561 lt!1086561 (size!27274 lt!1086561)))))))

(declare-fun e!2003591 () Bool)

(assert (=> b!3213330 (=> res!1308065 e!2003591)))

(assert (=> b!3213330 e!2003591))

(declare-fun lt!1086802 () Unit!50676)

(assert (=> b!3213330 (= lt!1086802 lt!1086805)))

(declare-fun lt!1086804 () Unit!50676)

(assert (=> b!3213330 (= lt!1086804 (lemmaSemiInverse!1179 (transformation!5226 (rule!7672 (h!41609 (t!239158 tokens!494)))) (seqFromList!3524 (_1!20936 lt!1086801))))))

(declare-fun b!3213331 () Bool)

(declare-fun res!1308070 () Bool)

(assert (=> b!3213331 (=> (not res!1308070) (not e!2003589))))

(assert (=> b!3213331 (= res!1308070 (= (rule!7672 (_1!20932 (get!11526 lt!1086803))) (rule!7672 (h!41609 (t!239158 tokens!494)))))))

(declare-fun b!3213332 () Bool)

(assert (=> b!3213332 (= e!2003589 (= (size!27273 (_1!20932 (get!11526 lt!1086803))) (size!27274 (originalCharacters!5940 (_1!20932 (get!11526 lt!1086803))))))))

(declare-fun d!881016 () Bool)

(assert (=> d!881016 e!2003590))

(declare-fun res!1308067 () Bool)

(assert (=> d!881016 (=> res!1308067 e!2003590)))

(assert (=> d!881016 (= res!1308067 (isEmpty!20287 lt!1086803))))

(assert (=> d!881016 (= lt!1086803 e!2003592)))

(declare-fun c!539928 () Bool)

(assert (=> d!881016 (= c!539928 (isEmpty!20288 (_1!20936 lt!1086801)))))

(assert (=> d!881016 (= lt!1086801 (findLongestMatch!748 (regex!5226 (rule!7672 (h!41609 (t!239158 tokens!494)))) lt!1086561))))

(assert (=> d!881016 (ruleValid!1650 thiss!18206 (rule!7672 (h!41609 (t!239158 tokens!494))))))

(assert (=> d!881016 (= (maxPrefixOneRule!1594 thiss!18206 (rule!7672 (h!41609 (t!239158 tokens!494))) lt!1086561) lt!1086803)))

(declare-fun b!3213333 () Bool)

(assert (=> b!3213333 (= e!2003592 None!7153)))

(declare-fun b!3213334 () Bool)

(assert (=> b!3213334 (= e!2003591 (matchR!4619 (regex!5226 (rule!7672 (h!41609 (t!239158 tokens!494)))) (_1!20936 (findLongestMatchInner!833 (regex!5226 (rule!7672 (h!41609 (t!239158 tokens!494)))) Nil!36187 (size!27274 Nil!36187) lt!1086561 lt!1086561 (size!27274 lt!1086561)))))))

(declare-fun b!3213335 () Bool)

(declare-fun res!1308069 () Bool)

(assert (=> b!3213335 (=> (not res!1308069) (not e!2003589))))

(assert (=> b!3213335 (= res!1308069 (< (size!27274 (_2!20932 (get!11526 lt!1086803))) (size!27274 lt!1086561)))))

(assert (= (and d!881016 c!539928) b!3213333))

(assert (= (and d!881016 (not c!539928)) b!3213330))

(assert (= (and b!3213330 (not res!1308065)) b!3213334))

(assert (= (and d!881016 (not res!1308067)) b!3213328))

(assert (= (and b!3213328 res!1308066) b!3213327))

(assert (= (and b!3213327 res!1308071) b!3213335))

(assert (= (and b!3213335 res!1308069) b!3213331))

(assert (= (and b!3213331 res!1308070) b!3213329))

(assert (= (and b!3213329 res!1308068) b!3213332))

(assert (=> b!3213334 m!3484113))

(assert (=> b!3213334 m!3483299))

(assert (=> b!3213334 m!3484113))

(assert (=> b!3213334 m!3483299))

(declare-fun m!3484197 () Bool)

(assert (=> b!3213334 m!3484197))

(declare-fun m!3484199 () Bool)

(assert (=> b!3213334 m!3484199))

(declare-fun m!3484201 () Bool)

(assert (=> b!3213330 m!3484201))

(declare-fun m!3484203 () Bool)

(assert (=> b!3213330 m!3484203))

(assert (=> b!3213330 m!3484201))

(declare-fun m!3484205 () Bool)

(assert (=> b!3213330 m!3484205))

(assert (=> b!3213330 m!3484201))

(declare-fun m!3484207 () Bool)

(assert (=> b!3213330 m!3484207))

(assert (=> b!3213330 m!3484113))

(assert (=> b!3213330 m!3484113))

(assert (=> b!3213330 m!3483299))

(assert (=> b!3213330 m!3484197))

(declare-fun m!3484209 () Bool)

(assert (=> b!3213330 m!3484209))

(assert (=> b!3213330 m!3484201))

(declare-fun m!3484211 () Bool)

(assert (=> b!3213330 m!3484211))

(assert (=> b!3213330 m!3483299))

(declare-fun m!3484213 () Bool)

(assert (=> b!3213327 m!3484213))

(declare-fun m!3484215 () Bool)

(assert (=> b!3213327 m!3484215))

(assert (=> b!3213327 m!3484215))

(declare-fun m!3484217 () Bool)

(assert (=> b!3213327 m!3484217))

(assert (=> b!3213327 m!3484217))

(declare-fun m!3484219 () Bool)

(assert (=> b!3213327 m!3484219))

(assert (=> b!3213331 m!3484213))

(declare-fun m!3484221 () Bool)

(assert (=> d!881016 m!3484221))

(declare-fun m!3484223 () Bool)

(assert (=> d!881016 m!3484223))

(declare-fun m!3484225 () Bool)

(assert (=> d!881016 m!3484225))

(declare-fun m!3484227 () Bool)

(assert (=> d!881016 m!3484227))

(assert (=> b!3213335 m!3484213))

(declare-fun m!3484229 () Bool)

(assert (=> b!3213335 m!3484229))

(assert (=> b!3213335 m!3483299))

(assert (=> b!3213328 m!3484213))

(assert (=> b!3213328 m!3484215))

(assert (=> b!3213328 m!3484215))

(assert (=> b!3213328 m!3484217))

(assert (=> b!3213328 m!3484217))

(declare-fun m!3484231 () Bool)

(assert (=> b!3213328 m!3484231))

(assert (=> b!3213329 m!3484213))

(declare-fun m!3484233 () Bool)

(assert (=> b!3213329 m!3484233))

(assert (=> b!3213329 m!3484233))

(declare-fun m!3484235 () Bool)

(assert (=> b!3213329 m!3484235))

(assert (=> b!3213332 m!3484213))

(declare-fun m!3484237 () Bool)

(assert (=> b!3213332 m!3484237))

(assert (=> b!3212817 d!881016))

(declare-fun d!881018 () Bool)

(declare-fun lt!1086807 () BalanceConc!21268)

(assert (=> d!881018 (= (list!12875 lt!1086807) (printListTailRec!562 thiss!18206 (dropList!1079 lt!1086546 0) (list!12875 (BalanceConc!21269 Empty!10827))))))

(declare-fun e!2003593 () BalanceConc!21268)

(assert (=> d!881018 (= lt!1086807 e!2003593)))

(declare-fun c!539929 () Bool)

(assert (=> d!881018 (= c!539929 (>= 0 (size!27275 lt!1086546)))))

(declare-fun e!2003594 () Bool)

(assert (=> d!881018 e!2003594))

(declare-fun res!1308072 () Bool)

(assert (=> d!881018 (=> (not res!1308072) (not e!2003594))))

(assert (=> d!881018 (= res!1308072 (>= 0 0))))

(assert (=> d!881018 (= (printTailRec!1312 thiss!18206 lt!1086546 0 (BalanceConc!21269 Empty!10827)) lt!1086807)))

(declare-fun b!3213336 () Bool)

(assert (=> b!3213336 (= e!2003594 (<= 0 (size!27275 lt!1086546)))))

(declare-fun b!3213337 () Bool)

(assert (=> b!3213337 (= e!2003593 (BalanceConc!21269 Empty!10827))))

(declare-fun b!3213338 () Bool)

(assert (=> b!3213338 (= e!2003593 (printTailRec!1312 thiss!18206 lt!1086546 (+ 0 1) (++!8689 (BalanceConc!21269 Empty!10827) (charsOf!3242 (apply!8207 lt!1086546 0)))))))

(declare-fun lt!1086808 () List!36313)

(assert (=> b!3213338 (= lt!1086808 (list!12877 lt!1086546))))

(declare-fun lt!1086809 () Unit!50676)

(assert (=> b!3213338 (= lt!1086809 (lemmaDropApply!1038 lt!1086808 0))))

(assert (=> b!3213338 (= (head!7048 (drop!1862 lt!1086808 0)) (apply!8209 lt!1086808 0))))

(declare-fun lt!1086812 () Unit!50676)

(assert (=> b!3213338 (= lt!1086812 lt!1086809)))

(declare-fun lt!1086811 () List!36313)

(assert (=> b!3213338 (= lt!1086811 (list!12877 lt!1086546))))

(declare-fun lt!1086806 () Unit!50676)

(assert (=> b!3213338 (= lt!1086806 (lemmaDropTail!922 lt!1086811 0))))

(assert (=> b!3213338 (= (tail!5215 (drop!1862 lt!1086811 0)) (drop!1862 lt!1086811 (+ 0 1)))))

(declare-fun lt!1086810 () Unit!50676)

(assert (=> b!3213338 (= lt!1086810 lt!1086806)))

(assert (= (and d!881018 res!1308072) b!3213336))

(assert (= (and d!881018 c!539929) b!3213337))

(assert (= (and d!881018 (not c!539929)) b!3213338))

(declare-fun m!3484239 () Bool)

(assert (=> d!881018 m!3484239))

(assert (=> d!881018 m!3484239))

(assert (=> d!881018 m!3483815))

(declare-fun m!3484241 () Bool)

(assert (=> d!881018 m!3484241))

(declare-fun m!3484243 () Bool)

(assert (=> d!881018 m!3484243))

(declare-fun m!3484245 () Bool)

(assert (=> d!881018 m!3484245))

(assert (=> d!881018 m!3483815))

(assert (=> b!3213336 m!3484243))

(declare-fun m!3484247 () Bool)

(assert (=> b!3213338 m!3484247))

(declare-fun m!3484249 () Bool)

(assert (=> b!3213338 m!3484249))

(declare-fun m!3484251 () Bool)

(assert (=> b!3213338 m!3484251))

(declare-fun m!3484253 () Bool)

(assert (=> b!3213338 m!3484253))

(declare-fun m!3484255 () Bool)

(assert (=> b!3213338 m!3484255))

(declare-fun m!3484257 () Bool)

(assert (=> b!3213338 m!3484257))

(declare-fun m!3484259 () Bool)

(assert (=> b!3213338 m!3484259))

(declare-fun m!3484261 () Bool)

(assert (=> b!3213338 m!3484261))

(declare-fun m!3484263 () Bool)

(assert (=> b!3213338 m!3484263))

(assert (=> b!3213338 m!3484257))

(assert (=> b!3213338 m!3484263))

(assert (=> b!3213338 m!3484247))

(assert (=> b!3213338 m!3484259))

(declare-fun m!3484265 () Bool)

(assert (=> b!3213338 m!3484265))

(assert (=> b!3213338 m!3484251))

(declare-fun m!3484267 () Bool)

(assert (=> b!3213338 m!3484267))

(declare-fun m!3484269 () Bool)

(assert (=> b!3213338 m!3484269))

(declare-fun m!3484271 () Bool)

(assert (=> b!3213338 m!3484271))

(assert (=> b!3212817 d!881018))

(declare-fun d!881020 () Bool)

(assert (=> d!881020 (= (maxPrefixOneRule!1594 thiss!18206 (rule!7672 (h!41609 (t!239158 tokens!494))) lt!1086561) (Some!7153 (tuple2!35597 (Token!9819 (apply!8208 (transformation!5226 (rule!7672 (h!41609 (t!239158 tokens!494)))) (seqFromList!3524 lt!1086561)) (rule!7672 (h!41609 (t!239158 tokens!494))) (size!27274 lt!1086561) lt!1086561) Nil!36187)))))

(declare-fun lt!1086813 () Unit!50676)

(assert (=> d!881020 (= lt!1086813 (choose!18754 thiss!18206 rules!2135 lt!1086561 lt!1086561 Nil!36187 (rule!7672 (h!41609 (t!239158 tokens!494)))))))

(assert (=> d!881020 (not (isEmpty!20281 rules!2135))))

(assert (=> d!881020 (= (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!707 thiss!18206 rules!2135 lt!1086561 lt!1086561 Nil!36187 (rule!7672 (h!41609 (t!239158 tokens!494)))) lt!1086813)))

(declare-fun bs!541902 () Bool)

(assert (= bs!541902 d!881020))

(assert (=> bs!541902 m!3483299))

(assert (=> bs!541902 m!3483285))

(assert (=> bs!541902 m!3483333))

(declare-fun m!3484273 () Bool)

(assert (=> bs!541902 m!3484273))

(assert (=> bs!541902 m!3483411))

(assert (=> bs!541902 m!3483333))

(assert (=> bs!541902 m!3483335))

(assert (=> b!3212817 d!881020))

(declare-fun d!881022 () Bool)

(assert (=> d!881022 (= (head!7047 lt!1086561) (h!41607 lt!1086561))))

(assert (=> b!3212817 d!881022))

(declare-fun d!881024 () Bool)

(assert (=> d!881024 (= (apply!8208 (transformation!5226 (rule!7672 (h!41609 (t!239158 tokens!494)))) (seqFromList!3524 lt!1086561)) (dynLambda!14629 (toValue!7314 (transformation!5226 (rule!7672 (h!41609 (t!239158 tokens!494))))) (seqFromList!3524 lt!1086561)))))

(declare-fun b_lambda!88141 () Bool)

(assert (=> (not b_lambda!88141) (not d!881024)))

(declare-fun t!239193 () Bool)

(declare-fun tb!158183 () Bool)

(assert (=> (and b!3212809 (= (toValue!7314 (transformation!5226 (h!41608 rules!2135))) (toValue!7314 (transformation!5226 (rule!7672 (h!41609 (t!239158 tokens!494)))))) t!239193) tb!158183))

(declare-fun result!200556 () Bool)

(assert (=> tb!158183 (= result!200556 (inv!21 (dynLambda!14629 (toValue!7314 (transformation!5226 (rule!7672 (h!41609 (t!239158 tokens!494))))) (seqFromList!3524 lt!1086561))))))

(declare-fun m!3484275 () Bool)

(assert (=> tb!158183 m!3484275))

(assert (=> d!881024 t!239193))

(declare-fun b_and!214279 () Bool)

(assert (= b_and!214273 (and (=> t!239193 result!200556) b_and!214279)))

(declare-fun t!239195 () Bool)

(declare-fun tb!158185 () Bool)

(assert (=> (and b!3212813 (= (toValue!7314 (transformation!5226 (rule!7672 separatorToken!241))) (toValue!7314 (transformation!5226 (rule!7672 (h!41609 (t!239158 tokens!494)))))) t!239195) tb!158185))

(declare-fun result!200558 () Bool)

(assert (= result!200558 result!200556))

(assert (=> d!881024 t!239195))

(declare-fun b_and!214281 () Bool)

(assert (= b_and!214275 (and (=> t!239195 result!200558) b_and!214281)))

(declare-fun t!239197 () Bool)

(declare-fun tb!158187 () Bool)

(assert (=> (and b!3212814 (= (toValue!7314 (transformation!5226 (rule!7672 (h!41609 tokens!494)))) (toValue!7314 (transformation!5226 (rule!7672 (h!41609 (t!239158 tokens!494)))))) t!239197) tb!158187))

(declare-fun result!200560 () Bool)

(assert (= result!200560 result!200556))

(assert (=> d!881024 t!239197))

(declare-fun b_and!214283 () Bool)

(assert (= b_and!214277 (and (=> t!239197 result!200560) b_and!214283)))

(assert (=> d!881024 m!3483333))

(declare-fun m!3484277 () Bool)

(assert (=> d!881024 m!3484277))

(assert (=> b!3212817 d!881024))

(declare-fun d!881026 () Bool)

(declare-fun lt!1086814 () BalanceConc!21268)

(assert (=> d!881026 (= (list!12875 lt!1086814) (printList!1365 thiss!18206 (list!12877 lt!1086546)))))

(assert (=> d!881026 (= lt!1086814 (printTailRec!1312 thiss!18206 lt!1086546 0 (BalanceConc!21269 Empty!10827)))))

(assert (=> d!881026 (= (print!1880 thiss!18206 lt!1086546) lt!1086814)))

(declare-fun bs!541903 () Bool)

(assert (= bs!541903 d!881026))

(declare-fun m!3484279 () Bool)

(assert (=> bs!541903 m!3484279))

(assert (=> bs!541903 m!3484267))

(assert (=> bs!541903 m!3484267))

(declare-fun m!3484281 () Bool)

(assert (=> bs!541903 m!3484281))

(assert (=> bs!541903 m!3483291))

(assert (=> b!3212817 d!881026))

(declare-fun d!881028 () Bool)

(assert (=> d!881028 (= (inv!49048 (tag!5754 (rule!7672 separatorToken!241))) (= (mod (str.len (value!169400 (tag!5754 (rule!7672 separatorToken!241)))) 2) 0))))

(assert (=> b!3212795 d!881028))

(declare-fun d!881030 () Bool)

(declare-fun res!1308075 () Bool)

(declare-fun e!2003598 () Bool)

(assert (=> d!881030 (=> (not res!1308075) (not e!2003598))))

(declare-fun semiInverseModEq!2157 (Int Int) Bool)

(assert (=> d!881030 (= res!1308075 (semiInverseModEq!2157 (toChars!7173 (transformation!5226 (rule!7672 separatorToken!241))) (toValue!7314 (transformation!5226 (rule!7672 separatorToken!241)))))))

(assert (=> d!881030 (= (inv!49051 (transformation!5226 (rule!7672 separatorToken!241))) e!2003598)))

(declare-fun b!3213341 () Bool)

(declare-fun equivClasses!2056 (Int Int) Bool)

(assert (=> b!3213341 (= e!2003598 (equivClasses!2056 (toChars!7173 (transformation!5226 (rule!7672 separatorToken!241))) (toValue!7314 (transformation!5226 (rule!7672 separatorToken!241)))))))

(assert (= (and d!881030 res!1308075) b!3213341))

(declare-fun m!3484283 () Bool)

(assert (=> d!881030 m!3484283))

(declare-fun m!3484285 () Bool)

(assert (=> b!3213341 m!3484285))

(assert (=> b!3212795 d!881030))

(declare-fun b!3213361 () Bool)

(declare-fun res!1308088 () Bool)

(declare-fun e!2003607 () Bool)

(assert (=> b!3213361 (=> (not res!1308088) (not e!2003607))))

(declare-fun lt!1086825 () List!36311)

(assert (=> b!3213361 (= res!1308088 (= (size!27274 lt!1086825) (+ (size!27274 lt!1086523) (size!27274 lt!1086531))))))

(declare-fun b!3213360 () Bool)

(declare-fun e!2003608 () List!36311)

(assert (=> b!3213360 (= e!2003608 (Cons!36187 (h!41607 lt!1086523) (++!8688 (t!239156 lt!1086523) lt!1086531)))))

(declare-fun b!3213359 () Bool)

(assert (=> b!3213359 (= e!2003608 lt!1086531)))

(declare-fun d!881032 () Bool)

(assert (=> d!881032 e!2003607))

(declare-fun res!1308087 () Bool)

(assert (=> d!881032 (=> (not res!1308087) (not e!2003607))))

(assert (=> d!881032 (= res!1308087 (= (content!4894 lt!1086825) ((_ map or) (content!4894 lt!1086523) (content!4894 lt!1086531))))))

(assert (=> d!881032 (= lt!1086825 e!2003608)))

(declare-fun c!539933 () Bool)

(assert (=> d!881032 (= c!539933 ((_ is Nil!36187) lt!1086523))))

(assert (=> d!881032 (= (++!8688 lt!1086523 lt!1086531) lt!1086825)))

(declare-fun b!3213362 () Bool)

(assert (=> b!3213362 (= e!2003607 (or (not (= lt!1086531 Nil!36187)) (= lt!1086825 lt!1086523)))))

(assert (= (and d!881032 c!539933) b!3213359))

(assert (= (and d!881032 (not c!539933)) b!3213360))

(assert (= (and d!881032 res!1308087) b!3213361))

(assert (= (and b!3213361 res!1308088) b!3213362))

(declare-fun m!3484307 () Bool)

(assert (=> b!3213361 m!3484307))

(assert (=> b!3213361 m!3483283))

(declare-fun m!3484311 () Bool)

(assert (=> b!3213361 m!3484311))

(declare-fun m!3484313 () Bool)

(assert (=> b!3213360 m!3484313))

(declare-fun m!3484317 () Bool)

(assert (=> d!881032 m!3484317))

(declare-fun m!3484319 () Bool)

(assert (=> d!881032 m!3484319))

(declare-fun m!3484321 () Bool)

(assert (=> d!881032 m!3484321))

(assert (=> b!3212798 d!881032))

(declare-fun d!881036 () Bool)

(assert (=> d!881036 (= (++!8688 (++!8688 lt!1086523 lt!1086557) lt!1086532) (++!8688 lt!1086523 (++!8688 lt!1086557 lt!1086532)))))

(declare-fun lt!1086830 () Unit!50676)

(declare-fun choose!18763 (List!36311 List!36311 List!36311) Unit!50676)

(assert (=> d!881036 (= lt!1086830 (choose!18763 lt!1086523 lt!1086557 lt!1086532))))

(assert (=> d!881036 (= (lemmaConcatAssociativity!1750 lt!1086523 lt!1086557 lt!1086532) lt!1086830)))

(declare-fun bs!541905 () Bool)

(assert (= bs!541905 d!881036))

(assert (=> bs!541905 m!3483467))

(declare-fun m!3484357 () Bool)

(assert (=> bs!541905 m!3484357))

(assert (=> bs!541905 m!3483467))

(assert (=> bs!541905 m!3483383))

(assert (=> bs!541905 m!3483385))

(assert (=> bs!541905 m!3483383))

(declare-fun m!3484361 () Bool)

(assert (=> bs!541905 m!3484361))

(assert (=> b!3212798 d!881036))

(declare-fun d!881042 () Bool)

(declare-fun list!12879 (Conc!10827) List!36311)

(assert (=> d!881042 (= (list!12875 (charsOf!3242 (h!41609 tokens!494))) (list!12879 (c!539813 (charsOf!3242 (h!41609 tokens!494)))))))

(declare-fun bs!541907 () Bool)

(assert (= bs!541907 d!881042))

(declare-fun m!3484365 () Bool)

(assert (=> bs!541907 m!3484365))

(assert (=> b!3212819 d!881042))

(declare-fun d!881046 () Bool)

(declare-fun lt!1086834 () BalanceConc!21268)

(assert (=> d!881046 (= (list!12875 lt!1086834) (originalCharacters!5940 (h!41609 tokens!494)))))

(declare-fun dynLambda!14631 (Int TokenValue!5456) BalanceConc!21268)

(assert (=> d!881046 (= lt!1086834 (dynLambda!14631 (toChars!7173 (transformation!5226 (rule!7672 (h!41609 tokens!494)))) (value!169401 (h!41609 tokens!494))))))

(assert (=> d!881046 (= (charsOf!3242 (h!41609 tokens!494)) lt!1086834)))

(declare-fun b_lambda!88145 () Bool)

(assert (=> (not b_lambda!88145) (not d!881046)))

(declare-fun t!239206 () Bool)

(declare-fun tb!158195 () Bool)

(assert (=> (and b!3212809 (= (toChars!7173 (transformation!5226 (h!41608 rules!2135))) (toChars!7173 (transformation!5226 (rule!7672 (h!41609 tokens!494))))) t!239206) tb!158195))

(declare-fun b!3213372 () Bool)

(declare-fun e!2003616 () Bool)

(declare-fun tp!1013704 () Bool)

(declare-fun inv!49055 (Conc!10827) Bool)

(assert (=> b!3213372 (= e!2003616 (and (inv!49055 (c!539813 (dynLambda!14631 (toChars!7173 (transformation!5226 (rule!7672 (h!41609 tokens!494)))) (value!169401 (h!41609 tokens!494))))) tp!1013704))))

(declare-fun result!200570 () Bool)

(declare-fun inv!49056 (BalanceConc!21268) Bool)

(assert (=> tb!158195 (= result!200570 (and (inv!49056 (dynLambda!14631 (toChars!7173 (transformation!5226 (rule!7672 (h!41609 tokens!494)))) (value!169401 (h!41609 tokens!494)))) e!2003616))))

(assert (= tb!158195 b!3213372))

(declare-fun m!3484371 () Bool)

(assert (=> b!3213372 m!3484371))

(declare-fun m!3484373 () Bool)

(assert (=> tb!158195 m!3484373))

(assert (=> d!881046 t!239206))

(declare-fun b_and!214291 () Bool)

(assert (= b_and!214233 (and (=> t!239206 result!200570) b_and!214291)))

(declare-fun tb!158197 () Bool)

(declare-fun t!239208 () Bool)

(assert (=> (and b!3212813 (= (toChars!7173 (transformation!5226 (rule!7672 separatorToken!241))) (toChars!7173 (transformation!5226 (rule!7672 (h!41609 tokens!494))))) t!239208) tb!158197))

(declare-fun result!200574 () Bool)

(assert (= result!200574 result!200570))

(assert (=> d!881046 t!239208))

(declare-fun b_and!214293 () Bool)

(assert (= b_and!214237 (and (=> t!239208 result!200574) b_and!214293)))

(declare-fun t!239210 () Bool)

(declare-fun tb!158199 () Bool)

(assert (=> (and b!3212814 (= (toChars!7173 (transformation!5226 (rule!7672 (h!41609 tokens!494)))) (toChars!7173 (transformation!5226 (rule!7672 (h!41609 tokens!494))))) t!239210) tb!158199))

(declare-fun result!200576 () Bool)

(assert (= result!200576 result!200570))

(assert (=> d!881046 t!239210))

(declare-fun b_and!214295 () Bool)

(assert (= b_and!214241 (and (=> t!239210 result!200576) b_and!214295)))

(declare-fun m!3484377 () Bool)

(assert (=> d!881046 m!3484377))

(declare-fun m!3484379 () Bool)

(assert (=> d!881046 m!3484379))

(assert (=> b!3212819 d!881046))

(declare-fun d!881052 () Bool)

(declare-fun lt!1086835 () Bool)

(declare-fun e!2003617 () Bool)

(assert (=> d!881052 (= lt!1086835 e!2003617)))

(declare-fun res!1308092 () Bool)

(assert (=> d!881052 (=> (not res!1308092) (not e!2003617))))

(assert (=> d!881052 (= res!1308092 (= (list!12877 (_1!20931 (lex!2145 thiss!18206 rules!2135 (print!1880 thiss!18206 (singletonSeq!2322 separatorToken!241))))) (list!12877 (singletonSeq!2322 separatorToken!241))))))

(declare-fun e!2003618 () Bool)

(assert (=> d!881052 (= lt!1086835 e!2003618)))

(declare-fun res!1308093 () Bool)

(assert (=> d!881052 (=> (not res!1308093) (not e!2003618))))

(declare-fun lt!1086836 () tuple2!35594)

(assert (=> d!881052 (= res!1308093 (= (size!27275 (_1!20931 lt!1086836)) 1))))

(assert (=> d!881052 (= lt!1086836 (lex!2145 thiss!18206 rules!2135 (print!1880 thiss!18206 (singletonSeq!2322 separatorToken!241))))))

(assert (=> d!881052 (not (isEmpty!20281 rules!2135))))

(assert (=> d!881052 (= (rulesProduceIndividualToken!2307 thiss!18206 rules!2135 separatorToken!241) lt!1086835)))

(declare-fun b!3213373 () Bool)

(declare-fun res!1308094 () Bool)

(assert (=> b!3213373 (=> (not res!1308094) (not e!2003618))))

(assert (=> b!3213373 (= res!1308094 (= (apply!8207 (_1!20931 lt!1086836) 0) separatorToken!241))))

(declare-fun b!3213374 () Bool)

(assert (=> b!3213374 (= e!2003618 (isEmpty!20279 (_2!20931 lt!1086836)))))

(declare-fun b!3213375 () Bool)

(assert (=> b!3213375 (= e!2003617 (isEmpty!20279 (_2!20931 (lex!2145 thiss!18206 rules!2135 (print!1880 thiss!18206 (singletonSeq!2322 separatorToken!241))))))))

(assert (= (and d!881052 res!1308093) b!3213373))

(assert (= (and b!3213373 res!1308094) b!3213374))

(assert (= (and d!881052 res!1308092) b!3213375))

(assert (=> d!881052 m!3483411))

(declare-fun m!3484381 () Bool)

(assert (=> d!881052 m!3484381))

(declare-fun m!3484383 () Bool)

(assert (=> d!881052 m!3484383))

(declare-fun m!3484385 () Bool)

(assert (=> d!881052 m!3484385))

(assert (=> d!881052 m!3483317))

(declare-fun m!3484387 () Bool)

(assert (=> d!881052 m!3484387))

(assert (=> d!881052 m!3483317))

(declare-fun m!3484389 () Bool)

(assert (=> d!881052 m!3484389))

(assert (=> d!881052 m!3483317))

(assert (=> d!881052 m!3484381))

(declare-fun m!3484391 () Bool)

(assert (=> b!3213373 m!3484391))

(declare-fun m!3484393 () Bool)

(assert (=> b!3213374 m!3484393))

(assert (=> b!3213375 m!3483317))

(assert (=> b!3213375 m!3483317))

(assert (=> b!3213375 m!3484381))

(assert (=> b!3213375 m!3484381))

(assert (=> b!3213375 m!3484383))

(declare-fun m!3484395 () Bool)

(assert (=> b!3213375 m!3484395))

(assert (=> b!3212818 d!881052))

(declare-fun d!881054 () Bool)

(declare-fun lt!1086843 () Bool)

(assert (=> d!881054 (= lt!1086843 (isEmpty!20288 (list!12875 (_2!20931 lt!1086556))))))

(declare-fun isEmpty!20289 (Conc!10827) Bool)

(assert (=> d!881054 (= lt!1086843 (isEmpty!20289 (c!539813 (_2!20931 lt!1086556))))))

(assert (=> d!881054 (= (isEmpty!20279 (_2!20931 lt!1086556)) lt!1086843)))

(declare-fun bs!541910 () Bool)

(assert (= bs!541910 d!881054))

(declare-fun m!3484409 () Bool)

(assert (=> bs!541910 m!3484409))

(assert (=> bs!541910 m!3484409))

(declare-fun m!3484411 () Bool)

(assert (=> bs!541910 m!3484411))

(declare-fun m!3484413 () Bool)

(assert (=> bs!541910 m!3484413))

(assert (=> b!3212790 d!881054))

(declare-fun b!3213424 () Bool)

(declare-fun res!1308130 () Bool)

(declare-fun e!2003651 () Bool)

(assert (=> b!3213424 (=> res!1308130 e!2003651)))

(declare-fun tail!5217 (List!36311) List!36311)

(assert (=> b!3213424 (= res!1308130 (not (isEmpty!20288 (tail!5217 lt!1086523))))))

(declare-fun b!3213425 () Bool)

(declare-fun res!1308132 () Bool)

(declare-fun e!2003649 () Bool)

(assert (=> b!3213425 (=> res!1308132 e!2003649)))

(declare-fun e!2003650 () Bool)

(assert (=> b!3213425 (= res!1308132 e!2003650)))

(declare-fun res!1308127 () Bool)

(assert (=> b!3213425 (=> (not res!1308127) (not e!2003650))))

(declare-fun lt!1086860 () Bool)

(assert (=> b!3213425 (= res!1308127 lt!1086860)))

(declare-fun bm!232539 () Bool)

(declare-fun call!232544 () Bool)

(assert (=> bm!232539 (= call!232544 (isEmpty!20288 lt!1086523))))

(declare-fun b!3213426 () Bool)

(assert (=> b!3213426 (= e!2003650 (= (head!7047 lt!1086523) (c!539812 (regex!5226 lt!1086543))))))

(declare-fun b!3213427 () Bool)

(declare-fun e!2003654 () Bool)

(declare-fun derivativeStep!2953 (Regex!9985 C!20156) Regex!9985)

(assert (=> b!3213427 (= e!2003654 (matchR!4619 (derivativeStep!2953 (regex!5226 lt!1086543) (head!7047 lt!1086523)) (tail!5217 lt!1086523)))))

(declare-fun d!881060 () Bool)

(declare-fun e!2003652 () Bool)

(assert (=> d!881060 e!2003652))

(declare-fun c!539944 () Bool)

(assert (=> d!881060 (= c!539944 ((_ is EmptyExpr!9985) (regex!5226 lt!1086543)))))

(assert (=> d!881060 (= lt!1086860 e!2003654)))

(declare-fun c!539946 () Bool)

(assert (=> d!881060 (= c!539946 (isEmpty!20288 lt!1086523))))

(declare-fun validRegex!4554 (Regex!9985) Bool)

(assert (=> d!881060 (validRegex!4554 (regex!5226 lt!1086543))))

(assert (=> d!881060 (= (matchR!4619 (regex!5226 lt!1086543) lt!1086523) lt!1086860)))

(declare-fun b!3213428 () Bool)

(declare-fun e!2003653 () Bool)

(assert (=> b!3213428 (= e!2003653 (not lt!1086860))))

(declare-fun b!3213429 () Bool)

(assert (=> b!3213429 (= e!2003651 (not (= (head!7047 lt!1086523) (c!539812 (regex!5226 lt!1086543)))))))

(declare-fun b!3213430 () Bool)

(declare-fun res!1308129 () Bool)

(assert (=> b!3213430 (=> (not res!1308129) (not e!2003650))))

(assert (=> b!3213430 (= res!1308129 (isEmpty!20288 (tail!5217 lt!1086523)))))

(declare-fun b!3213431 () Bool)

(declare-fun res!1308125 () Bool)

(assert (=> b!3213431 (=> (not res!1308125) (not e!2003650))))

(assert (=> b!3213431 (= res!1308125 (not call!232544))))

(declare-fun b!3213432 () Bool)

(declare-fun e!2003648 () Bool)

(assert (=> b!3213432 (= e!2003649 e!2003648)))

(declare-fun res!1308128 () Bool)

(assert (=> b!3213432 (=> (not res!1308128) (not e!2003648))))

(assert (=> b!3213432 (= res!1308128 (not lt!1086860))))

(declare-fun b!3213433 () Bool)

(assert (=> b!3213433 (= e!2003652 e!2003653)))

(declare-fun c!539945 () Bool)

(assert (=> b!3213433 (= c!539945 ((_ is EmptyLang!9985) (regex!5226 lt!1086543)))))

(declare-fun b!3213434 () Bool)

(declare-fun res!1308126 () Bool)

(assert (=> b!3213434 (=> res!1308126 e!2003649)))

(assert (=> b!3213434 (= res!1308126 (not ((_ is ElementMatch!9985) (regex!5226 lt!1086543))))))

(assert (=> b!3213434 (= e!2003653 e!2003649)))

(declare-fun b!3213435 () Bool)

(assert (=> b!3213435 (= e!2003648 e!2003651)))

(declare-fun res!1308131 () Bool)

(assert (=> b!3213435 (=> res!1308131 e!2003651)))

(assert (=> b!3213435 (= res!1308131 call!232544)))

(declare-fun b!3213436 () Bool)

(declare-fun nullable!3400 (Regex!9985) Bool)

(assert (=> b!3213436 (= e!2003654 (nullable!3400 (regex!5226 lt!1086543)))))

(declare-fun b!3213437 () Bool)

(assert (=> b!3213437 (= e!2003652 (= lt!1086860 call!232544))))

(assert (= (and d!881060 c!539946) b!3213436))

(assert (= (and d!881060 (not c!539946)) b!3213427))

(assert (= (and d!881060 c!539944) b!3213437))

(assert (= (and d!881060 (not c!539944)) b!3213433))

(assert (= (and b!3213433 c!539945) b!3213428))

(assert (= (and b!3213433 (not c!539945)) b!3213434))

(assert (= (and b!3213434 (not res!1308126)) b!3213425))

(assert (= (and b!3213425 res!1308127) b!3213431))

(assert (= (and b!3213431 res!1308125) b!3213430))

(assert (= (and b!3213430 res!1308129) b!3213426))

(assert (= (and b!3213425 (not res!1308132)) b!3213432))

(assert (= (and b!3213432 res!1308128) b!3213435))

(assert (= (and b!3213435 (not res!1308131)) b!3213424))

(assert (= (and b!3213424 (not res!1308130)) b!3213429))

(assert (= (or b!3213437 b!3213435 b!3213431) bm!232539))

(declare-fun m!3484471 () Bool)

(assert (=> b!3213436 m!3484471))

(declare-fun m!3484473 () Bool)

(assert (=> b!3213424 m!3484473))

(assert (=> b!3213424 m!3484473))

(declare-fun m!3484475 () Bool)

(assert (=> b!3213424 m!3484475))

(declare-fun m!3484477 () Bool)

(assert (=> b!3213426 m!3484477))

(assert (=> b!3213429 m!3484477))

(assert (=> b!3213427 m!3484477))

(assert (=> b!3213427 m!3484477))

(declare-fun m!3484479 () Bool)

(assert (=> b!3213427 m!3484479))

(assert (=> b!3213427 m!3484473))

(assert (=> b!3213427 m!3484479))

(assert (=> b!3213427 m!3484473))

(declare-fun m!3484481 () Bool)

(assert (=> b!3213427 m!3484481))

(declare-fun m!3484483 () Bool)

(assert (=> d!881060 m!3484483))

(declare-fun m!3484485 () Bool)

(assert (=> d!881060 m!3484485))

(assert (=> bm!232539 m!3484483))

(assert (=> b!3213430 m!3484473))

(assert (=> b!3213430 m!3484473))

(assert (=> b!3213430 m!3484475))

(assert (=> b!3212811 d!881060))

(declare-fun d!881078 () Bool)

(assert (=> d!881078 (= (get!11524 lt!1086553) (v!35712 lt!1086553))))

(assert (=> b!3212811 d!881078))

(declare-fun d!881080 () Bool)

(assert (=> d!881080 (dynLambda!14628 lambda!117554 (h!41609 (t!239158 tokens!494)))))

(declare-fun lt!1086864 () Unit!50676)

(assert (=> d!881080 (= lt!1086864 (choose!18756 tokens!494 lambda!117554 (h!41609 (t!239158 tokens!494))))))

(declare-fun e!2003658 () Bool)

(assert (=> d!881080 e!2003658))

(declare-fun res!1308136 () Bool)

(assert (=> d!881080 (=> (not res!1308136) (not e!2003658))))

(assert (=> d!881080 (= res!1308136 (forall!7396 tokens!494 lambda!117554))))

(assert (=> d!881080 (= (forallContained!1197 tokens!494 lambda!117554 (h!41609 (t!239158 tokens!494))) lt!1086864)))

(declare-fun b!3213441 () Bool)

(assert (=> b!3213441 (= e!2003658 (contains!6471 tokens!494 (h!41609 (t!239158 tokens!494))))))

(assert (= (and d!881080 res!1308136) b!3213441))

(declare-fun b_lambda!88149 () Bool)

(assert (=> (not b_lambda!88149) (not d!881080)))

(declare-fun m!3484497 () Bool)

(assert (=> d!881080 m!3484497))

(declare-fun m!3484499 () Bool)

(assert (=> d!881080 m!3484499))

(assert (=> d!881080 m!3483367))

(assert (=> b!3213441 m!3483991))

(assert (=> b!3212791 d!881080))

(declare-fun d!881086 () Bool)

(assert (=> d!881086 (dynLambda!14628 lambda!117554 (h!41609 tokens!494))))

(declare-fun lt!1086865 () Unit!50676)

(assert (=> d!881086 (= lt!1086865 (choose!18756 tokens!494 lambda!117554 (h!41609 tokens!494)))))

(declare-fun e!2003663 () Bool)

(assert (=> d!881086 e!2003663))

(declare-fun res!1308137 () Bool)

(assert (=> d!881086 (=> (not res!1308137) (not e!2003663))))

(assert (=> d!881086 (= res!1308137 (forall!7396 tokens!494 lambda!117554))))

(assert (=> d!881086 (= (forallContained!1197 tokens!494 lambda!117554 (h!41609 tokens!494)) lt!1086865)))

(declare-fun b!3213450 () Bool)

(assert (=> b!3213450 (= e!2003663 (contains!6471 tokens!494 (h!41609 tokens!494)))))

(assert (= (and d!881086 res!1308137) b!3213450))

(declare-fun b_lambda!88151 () Bool)

(assert (=> (not b_lambda!88151) (not d!881086)))

(assert (=> d!881086 m!3483601))

(declare-fun m!3484501 () Bool)

(assert (=> d!881086 m!3484501))

(assert (=> d!881086 m!3483367))

(declare-fun m!3484503 () Bool)

(assert (=> b!3213450 m!3484503))

(assert (=> b!3212791 d!881086))

(declare-fun d!881088 () Bool)

(declare-fun c!539953 () Bool)

(assert (=> d!881088 (= c!539953 ((_ is Cons!36189) tokens!494))))

(declare-fun e!2003666 () List!36311)

(assert (=> d!881088 (= (printWithSeparatorTokenList!160 thiss!18206 tokens!494 separatorToken!241) e!2003666)))

(declare-fun b!3213455 () Bool)

(assert (=> b!3213455 (= e!2003666 (++!8688 (++!8688 (list!12875 (charsOf!3242 (h!41609 tokens!494))) (list!12875 (charsOf!3242 separatorToken!241))) (printWithSeparatorTokenList!160 thiss!18206 (t!239158 tokens!494) separatorToken!241)))))

(declare-fun b!3213456 () Bool)

(assert (=> b!3213456 (= e!2003666 Nil!36187)))

(assert (= (and d!881088 c!539953) b!3213455))

(assert (= (and d!881088 (not c!539953)) b!3213456))

(assert (=> b!3213455 m!3483459))

(declare-fun m!3484511 () Bool)

(assert (=> b!3213455 m!3484511))

(assert (=> b!3213455 m!3483463))

(declare-fun m!3484513 () Bool)

(assert (=> b!3213455 m!3484513))

(assert (=> b!3213455 m!3483463))

(assert (=> b!3213455 m!3483379))

(assert (=> b!3213455 m!3483381))

(assert (=> b!3213455 m!3483379))

(assert (=> b!3213455 m!3483459))

(assert (=> b!3213455 m!3483469))

(assert (=> b!3213455 m!3483381))

(assert (=> b!3213455 m!3483469))

(assert (=> b!3213455 m!3484511))

(assert (=> b!3212812 d!881088))

(declare-fun b!3213459 () Bool)

(declare-fun res!1308139 () Bool)

(declare-fun e!2003667 () Bool)

(assert (=> b!3213459 (=> (not res!1308139) (not e!2003667))))

(declare-fun lt!1086866 () List!36311)

(assert (=> b!3213459 (= res!1308139 (= (size!27274 lt!1086866) (+ (size!27274 lt!1086561) (size!27274 lt!1086557))))))

(declare-fun b!3213458 () Bool)

(declare-fun e!2003668 () List!36311)

(assert (=> b!3213458 (= e!2003668 (Cons!36187 (h!41607 lt!1086561) (++!8688 (t!239156 lt!1086561) lt!1086557)))))

(declare-fun b!3213457 () Bool)

(assert (=> b!3213457 (= e!2003668 lt!1086557)))

(declare-fun d!881092 () Bool)

(assert (=> d!881092 e!2003667))

(declare-fun res!1308138 () Bool)

(assert (=> d!881092 (=> (not res!1308138) (not e!2003667))))

(assert (=> d!881092 (= res!1308138 (= (content!4894 lt!1086866) ((_ map or) (content!4894 lt!1086561) (content!4894 lt!1086557))))))

(assert (=> d!881092 (= lt!1086866 e!2003668)))

(declare-fun c!539954 () Bool)

(assert (=> d!881092 (= c!539954 ((_ is Nil!36187) lt!1086561))))

(assert (=> d!881092 (= (++!8688 lt!1086561 lt!1086557) lt!1086866)))

(declare-fun b!3213460 () Bool)

(assert (=> b!3213460 (= e!2003667 (or (not (= lt!1086557 Nil!36187)) (= lt!1086866 lt!1086561)))))

(assert (= (and d!881092 c!539954) b!3213457))

(assert (= (and d!881092 (not c!539954)) b!3213458))

(assert (= (and d!881092 res!1308138) b!3213459))

(assert (= (and b!3213459 res!1308139) b!3213460))

(declare-fun m!3484515 () Bool)

(assert (=> b!3213459 m!3484515))

(assert (=> b!3213459 m!3483299))

(declare-fun m!3484517 () Bool)

(assert (=> b!3213459 m!3484517))

(declare-fun m!3484519 () Bool)

(assert (=> b!3213458 m!3484519))

(declare-fun m!3484521 () Bool)

(assert (=> d!881092 m!3484521))

(declare-fun m!3484523 () Bool)

(assert (=> d!881092 m!3484523))

(declare-fun m!3484525 () Bool)

(assert (=> d!881092 m!3484525))

(assert (=> b!3212812 d!881092))

(declare-fun d!881094 () Bool)

(declare-fun lt!1086867 () BalanceConc!21268)

(assert (=> d!881094 (= (list!12875 lt!1086867) (originalCharacters!5940 separatorToken!241))))

(assert (=> d!881094 (= lt!1086867 (dynLambda!14631 (toChars!7173 (transformation!5226 (rule!7672 separatorToken!241))) (value!169401 separatorToken!241)))))

(assert (=> d!881094 (= (charsOf!3242 separatorToken!241) lt!1086867)))

(declare-fun b_lambda!88153 () Bool)

(assert (=> (not b_lambda!88153) (not d!881094)))

(declare-fun t!239212 () Bool)

(declare-fun tb!158201 () Bool)

(assert (=> (and b!3212809 (= (toChars!7173 (transformation!5226 (h!41608 rules!2135))) (toChars!7173 (transformation!5226 (rule!7672 separatorToken!241)))) t!239212) tb!158201))

(declare-fun b!3213461 () Bool)

(declare-fun e!2003669 () Bool)

(declare-fun tp!1013705 () Bool)

(assert (=> b!3213461 (= e!2003669 (and (inv!49055 (c!539813 (dynLambda!14631 (toChars!7173 (transformation!5226 (rule!7672 separatorToken!241))) (value!169401 separatorToken!241)))) tp!1013705))))

(declare-fun result!200578 () Bool)

(assert (=> tb!158201 (= result!200578 (and (inv!49056 (dynLambda!14631 (toChars!7173 (transformation!5226 (rule!7672 separatorToken!241))) (value!169401 separatorToken!241))) e!2003669))))

(assert (= tb!158201 b!3213461))

(declare-fun m!3484527 () Bool)

(assert (=> b!3213461 m!3484527))

(declare-fun m!3484529 () Bool)

(assert (=> tb!158201 m!3484529))

(assert (=> d!881094 t!239212))

(declare-fun b_and!214297 () Bool)

(assert (= b_and!214291 (and (=> t!239212 result!200578) b_and!214297)))

(declare-fun t!239214 () Bool)

(declare-fun tb!158203 () Bool)

(assert (=> (and b!3212813 (= (toChars!7173 (transformation!5226 (rule!7672 separatorToken!241))) (toChars!7173 (transformation!5226 (rule!7672 separatorToken!241)))) t!239214) tb!158203))

(declare-fun result!200580 () Bool)

(assert (= result!200580 result!200578))

(assert (=> d!881094 t!239214))

(declare-fun b_and!214299 () Bool)

(assert (= b_and!214293 (and (=> t!239214 result!200580) b_and!214299)))

(declare-fun t!239216 () Bool)

(declare-fun tb!158205 () Bool)

(assert (=> (and b!3212814 (= (toChars!7173 (transformation!5226 (rule!7672 (h!41609 tokens!494)))) (toChars!7173 (transformation!5226 (rule!7672 separatorToken!241)))) t!239216) tb!158205))

(declare-fun result!200582 () Bool)

(assert (= result!200582 result!200578))

(assert (=> d!881094 t!239216))

(declare-fun b_and!214301 () Bool)

(assert (= b_and!214295 (and (=> t!239216 result!200582) b_and!214301)))

(declare-fun m!3484531 () Bool)

(assert (=> d!881094 m!3484531))

(declare-fun m!3484533 () Bool)

(assert (=> d!881094 m!3484533))

(assert (=> b!3212812 d!881094))

(declare-fun d!881096 () Bool)

(assert (=> d!881096 (= (list!12875 (charsOf!3242 (h!41609 (t!239158 tokens!494)))) (list!12879 (c!539813 (charsOf!3242 (h!41609 (t!239158 tokens!494))))))))

(declare-fun bs!541916 () Bool)

(assert (= bs!541916 d!881096))

(declare-fun m!3484535 () Bool)

(assert (=> bs!541916 m!3484535))

(assert (=> b!3212812 d!881096))

(declare-fun b!3213464 () Bool)

(declare-fun res!1308141 () Bool)

(declare-fun e!2003670 () Bool)

(assert (=> b!3213464 (=> (not res!1308141) (not e!2003670))))

(declare-fun lt!1086868 () List!36311)

(assert (=> b!3213464 (= res!1308141 (= (size!27274 lt!1086868) (+ (size!27274 (++!8688 lt!1086561 lt!1086557)) (size!27274 (printWithSeparatorTokenList!160 thiss!18206 (t!239158 (t!239158 tokens!494)) separatorToken!241)))))))

(declare-fun b!3213463 () Bool)

(declare-fun e!2003671 () List!36311)

(assert (=> b!3213463 (= e!2003671 (Cons!36187 (h!41607 (++!8688 lt!1086561 lt!1086557)) (++!8688 (t!239156 (++!8688 lt!1086561 lt!1086557)) (printWithSeparatorTokenList!160 thiss!18206 (t!239158 (t!239158 tokens!494)) separatorToken!241))))))

(declare-fun b!3213462 () Bool)

(assert (=> b!3213462 (= e!2003671 (printWithSeparatorTokenList!160 thiss!18206 (t!239158 (t!239158 tokens!494)) separatorToken!241))))

(declare-fun d!881098 () Bool)

(assert (=> d!881098 e!2003670))

(declare-fun res!1308140 () Bool)

(assert (=> d!881098 (=> (not res!1308140) (not e!2003670))))

(assert (=> d!881098 (= res!1308140 (= (content!4894 lt!1086868) ((_ map or) (content!4894 (++!8688 lt!1086561 lt!1086557)) (content!4894 (printWithSeparatorTokenList!160 thiss!18206 (t!239158 (t!239158 tokens!494)) separatorToken!241)))))))

(assert (=> d!881098 (= lt!1086868 e!2003671)))

(declare-fun c!539955 () Bool)

(assert (=> d!881098 (= c!539955 ((_ is Nil!36187) (++!8688 lt!1086561 lt!1086557)))))

(assert (=> d!881098 (= (++!8688 (++!8688 lt!1086561 lt!1086557) (printWithSeparatorTokenList!160 thiss!18206 (t!239158 (t!239158 tokens!494)) separatorToken!241)) lt!1086868)))

(declare-fun b!3213465 () Bool)

(assert (=> b!3213465 (= e!2003670 (or (not (= (printWithSeparatorTokenList!160 thiss!18206 (t!239158 (t!239158 tokens!494)) separatorToken!241) Nil!36187)) (= lt!1086868 (++!8688 lt!1086561 lt!1086557))))))

(assert (= (and d!881098 c!539955) b!3213462))

(assert (= (and d!881098 (not c!539955)) b!3213463))

(assert (= (and d!881098 res!1308140) b!3213464))

(assert (= (and b!3213464 res!1308141) b!3213465))

(declare-fun m!3484537 () Bool)

(assert (=> b!3213464 m!3484537))

(assert (=> b!3213464 m!3483471))

(declare-fun m!3484539 () Bool)

(assert (=> b!3213464 m!3484539))

(assert (=> b!3213464 m!3483473))

(declare-fun m!3484541 () Bool)

(assert (=> b!3213464 m!3484541))

(assert (=> b!3213463 m!3483473))

(declare-fun m!3484543 () Bool)

(assert (=> b!3213463 m!3484543))

(declare-fun m!3484545 () Bool)

(assert (=> d!881098 m!3484545))

(assert (=> d!881098 m!3483471))

(declare-fun m!3484547 () Bool)

(assert (=> d!881098 m!3484547))

(assert (=> d!881098 m!3483473))

(declare-fun m!3484549 () Bool)

(assert (=> d!881098 m!3484549))

(assert (=> b!3212812 d!881098))

(declare-fun b!3213468 () Bool)

(declare-fun res!1308143 () Bool)

(declare-fun e!2003672 () Bool)

(assert (=> b!3213468 (=> (not res!1308143) (not e!2003672))))

(declare-fun lt!1086869 () List!36311)

(assert (=> b!3213468 (= res!1308143 (= (size!27274 lt!1086869) (+ (size!27274 lt!1086557) (size!27274 lt!1086532))))))

(declare-fun b!3213467 () Bool)

(declare-fun e!2003673 () List!36311)

(assert (=> b!3213467 (= e!2003673 (Cons!36187 (h!41607 lt!1086557) (++!8688 (t!239156 lt!1086557) lt!1086532)))))

(declare-fun b!3213466 () Bool)

(assert (=> b!3213466 (= e!2003673 lt!1086532)))

(declare-fun d!881100 () Bool)

(assert (=> d!881100 e!2003672))

(declare-fun res!1308142 () Bool)

(assert (=> d!881100 (=> (not res!1308142) (not e!2003672))))

(assert (=> d!881100 (= res!1308142 (= (content!4894 lt!1086869) ((_ map or) (content!4894 lt!1086557) (content!4894 lt!1086532))))))

(assert (=> d!881100 (= lt!1086869 e!2003673)))

(declare-fun c!539956 () Bool)

(assert (=> d!881100 (= c!539956 ((_ is Nil!36187) lt!1086557))))

(assert (=> d!881100 (= (++!8688 lt!1086557 lt!1086532) lt!1086869)))

(declare-fun b!3213469 () Bool)

(assert (=> b!3213469 (= e!2003672 (or (not (= lt!1086532 Nil!36187)) (= lt!1086869 lt!1086557)))))

(assert (= (and d!881100 c!539956) b!3213466))

(assert (= (and d!881100 (not c!539956)) b!3213467))

(assert (= (and d!881100 res!1308142) b!3213468))

(assert (= (and b!3213468 res!1308143) b!3213469))

(declare-fun m!3484551 () Bool)

(assert (=> b!3213468 m!3484551))

(assert (=> b!3213468 m!3484517))

(declare-fun m!3484553 () Bool)

(assert (=> b!3213468 m!3484553))

(declare-fun m!3484555 () Bool)

(assert (=> b!3213467 m!3484555))

(declare-fun m!3484557 () Bool)

(assert (=> d!881100 m!3484557))

(assert (=> d!881100 m!3484525))

(declare-fun m!3484559 () Bool)

(assert (=> d!881100 m!3484559))

(assert (=> b!3212812 d!881100))

(declare-fun d!881102 () Bool)

(declare-fun c!539957 () Bool)

(assert (=> d!881102 (= c!539957 ((_ is Cons!36189) (t!239158 (t!239158 tokens!494))))))

(declare-fun e!2003674 () List!36311)

(assert (=> d!881102 (= (printWithSeparatorTokenList!160 thiss!18206 (t!239158 (t!239158 tokens!494)) separatorToken!241) e!2003674)))

(declare-fun b!3213470 () Bool)

(assert (=> b!3213470 (= e!2003674 (++!8688 (++!8688 (list!12875 (charsOf!3242 (h!41609 (t!239158 (t!239158 tokens!494))))) (list!12875 (charsOf!3242 separatorToken!241))) (printWithSeparatorTokenList!160 thiss!18206 (t!239158 (t!239158 (t!239158 tokens!494))) separatorToken!241)))))

(declare-fun b!3213471 () Bool)

(assert (=> b!3213471 (= e!2003674 Nil!36187)))

(assert (= (and d!881102 c!539957) b!3213470))

(assert (= (and d!881102 (not c!539957)) b!3213471))

(assert (=> b!3213470 m!3483459))

(declare-fun m!3484561 () Bool)

(assert (=> b!3213470 m!3484561))

(declare-fun m!3484563 () Bool)

(assert (=> b!3213470 m!3484563))

(declare-fun m!3484565 () Bool)

(assert (=> b!3213470 m!3484565))

(assert (=> b!3213470 m!3484563))

(declare-fun m!3484567 () Bool)

(assert (=> b!3213470 m!3484567))

(declare-fun m!3484569 () Bool)

(assert (=> b!3213470 m!3484569))

(assert (=> b!3213470 m!3484567))

(assert (=> b!3213470 m!3483459))

(assert (=> b!3213470 m!3483469))

(assert (=> b!3213470 m!3484569))

(assert (=> b!3213470 m!3483469))

(assert (=> b!3213470 m!3484561))

(assert (=> b!3212812 d!881102))

(declare-fun d!881104 () Bool)

(declare-fun c!539958 () Bool)

(assert (=> d!881104 (= c!539958 ((_ is Cons!36189) (t!239158 tokens!494)))))

(declare-fun e!2003675 () List!36311)

(assert (=> d!881104 (= (printWithSeparatorTokenList!160 thiss!18206 (t!239158 tokens!494) separatorToken!241) e!2003675)))

(declare-fun b!3213472 () Bool)

(assert (=> b!3213472 (= e!2003675 (++!8688 (++!8688 (list!12875 (charsOf!3242 (h!41609 (t!239158 tokens!494)))) (list!12875 (charsOf!3242 separatorToken!241))) (printWithSeparatorTokenList!160 thiss!18206 (t!239158 (t!239158 tokens!494)) separatorToken!241)))))

(declare-fun b!3213473 () Bool)

(assert (=> b!3213473 (= e!2003675 Nil!36187)))

(assert (= (and d!881104 c!539958) b!3213472))

(assert (= (and d!881104 (not c!539958)) b!3213473))

(assert (=> b!3213472 m!3483459))

(declare-fun m!3484571 () Bool)

(assert (=> b!3213472 m!3484571))

(assert (=> b!3213472 m!3483473))

(declare-fun m!3484573 () Bool)

(assert (=> b!3213472 m!3484573))

(assert (=> b!3213472 m!3483473))

(assert (=> b!3213472 m!3483457))

(assert (=> b!3213472 m!3483465))

(assert (=> b!3213472 m!3483457))

(assert (=> b!3213472 m!3483459))

(assert (=> b!3213472 m!3483469))

(assert (=> b!3213472 m!3483465))

(assert (=> b!3213472 m!3483469))

(assert (=> b!3213472 m!3484571))

(assert (=> b!3212812 d!881104))

(declare-fun d!881106 () Bool)

(assert (=> d!881106 (= (list!12875 (charsOf!3242 separatorToken!241)) (list!12879 (c!539813 (charsOf!3242 separatorToken!241))))))

(declare-fun bs!541917 () Bool)

(assert (= bs!541917 d!881106))

(declare-fun m!3484575 () Bool)

(assert (=> bs!541917 m!3484575))

(assert (=> b!3212812 d!881106))

(declare-fun d!881108 () Bool)

(declare-fun lt!1086870 () BalanceConc!21268)

(assert (=> d!881108 (= (list!12875 lt!1086870) (originalCharacters!5940 (h!41609 (t!239158 tokens!494))))))

(assert (=> d!881108 (= lt!1086870 (dynLambda!14631 (toChars!7173 (transformation!5226 (rule!7672 (h!41609 (t!239158 tokens!494))))) (value!169401 (h!41609 (t!239158 tokens!494)))))))

(assert (=> d!881108 (= (charsOf!3242 (h!41609 (t!239158 tokens!494))) lt!1086870)))

(declare-fun b_lambda!88155 () Bool)

(assert (=> (not b_lambda!88155) (not d!881108)))

(declare-fun tb!158207 () Bool)

(declare-fun t!239218 () Bool)

(assert (=> (and b!3212809 (= (toChars!7173 (transformation!5226 (h!41608 rules!2135))) (toChars!7173 (transformation!5226 (rule!7672 (h!41609 (t!239158 tokens!494)))))) t!239218) tb!158207))

(declare-fun b!3213474 () Bool)

(declare-fun e!2003676 () Bool)

(declare-fun tp!1013706 () Bool)

(assert (=> b!3213474 (= e!2003676 (and (inv!49055 (c!539813 (dynLambda!14631 (toChars!7173 (transformation!5226 (rule!7672 (h!41609 (t!239158 tokens!494))))) (value!169401 (h!41609 (t!239158 tokens!494)))))) tp!1013706))))

(declare-fun result!200584 () Bool)

(assert (=> tb!158207 (= result!200584 (and (inv!49056 (dynLambda!14631 (toChars!7173 (transformation!5226 (rule!7672 (h!41609 (t!239158 tokens!494))))) (value!169401 (h!41609 (t!239158 tokens!494))))) e!2003676))))

(assert (= tb!158207 b!3213474))

(declare-fun m!3484577 () Bool)

(assert (=> b!3213474 m!3484577))

(declare-fun m!3484579 () Bool)

(assert (=> tb!158207 m!3484579))

(assert (=> d!881108 t!239218))

(declare-fun b_and!214303 () Bool)

(assert (= b_and!214297 (and (=> t!239218 result!200584) b_and!214303)))

(declare-fun t!239220 () Bool)

(declare-fun tb!158209 () Bool)

(assert (=> (and b!3212813 (= (toChars!7173 (transformation!5226 (rule!7672 separatorToken!241))) (toChars!7173 (transformation!5226 (rule!7672 (h!41609 (t!239158 tokens!494)))))) t!239220) tb!158209))

(declare-fun result!200586 () Bool)

(assert (= result!200586 result!200584))

(assert (=> d!881108 t!239220))

(declare-fun b_and!214305 () Bool)

(assert (= b_and!214299 (and (=> t!239220 result!200586) b_and!214305)))

(declare-fun t!239222 () Bool)

(declare-fun tb!158211 () Bool)

(assert (=> (and b!3212814 (= (toChars!7173 (transformation!5226 (rule!7672 (h!41609 tokens!494)))) (toChars!7173 (transformation!5226 (rule!7672 (h!41609 (t!239158 tokens!494)))))) t!239222) tb!158211))

(declare-fun result!200588 () Bool)

(assert (= result!200588 result!200584))

(assert (=> d!881108 t!239222))

(declare-fun b_and!214307 () Bool)

(assert (= b_and!214301 (and (=> t!239222 result!200588) b_and!214307)))

(declare-fun m!3484581 () Bool)

(assert (=> d!881108 m!3484581))

(declare-fun m!3484583 () Bool)

(assert (=> d!881108 m!3484583))

(assert (=> b!3212812 d!881108))

(declare-fun b!3213477 () Bool)

(declare-fun res!1308145 () Bool)

(declare-fun e!2003677 () Bool)

(assert (=> b!3213477 (=> (not res!1308145) (not e!2003677))))

(declare-fun lt!1086871 () List!36311)

(assert (=> b!3213477 (= res!1308145 (= (size!27274 lt!1086871) (+ (size!27274 (++!8688 lt!1086523 lt!1086557)) (size!27274 lt!1086532))))))

(declare-fun e!2003678 () List!36311)

(declare-fun b!3213476 () Bool)

(assert (=> b!3213476 (= e!2003678 (Cons!36187 (h!41607 (++!8688 lt!1086523 lt!1086557)) (++!8688 (t!239156 (++!8688 lt!1086523 lt!1086557)) lt!1086532)))))

(declare-fun b!3213475 () Bool)

(assert (=> b!3213475 (= e!2003678 lt!1086532)))

(declare-fun d!881110 () Bool)

(assert (=> d!881110 e!2003677))

(declare-fun res!1308144 () Bool)

(assert (=> d!881110 (=> (not res!1308144) (not e!2003677))))

(assert (=> d!881110 (= res!1308144 (= (content!4894 lt!1086871) ((_ map or) (content!4894 (++!8688 lt!1086523 lt!1086557)) (content!4894 lt!1086532))))))

(assert (=> d!881110 (= lt!1086871 e!2003678)))

(declare-fun c!539959 () Bool)

(assert (=> d!881110 (= c!539959 ((_ is Nil!36187) (++!8688 lt!1086523 lt!1086557)))))

(assert (=> d!881110 (= (++!8688 (++!8688 lt!1086523 lt!1086557) lt!1086532) lt!1086871)))

(declare-fun b!3213478 () Bool)

(assert (=> b!3213478 (= e!2003677 (or (not (= lt!1086532 Nil!36187)) (= lt!1086871 (++!8688 lt!1086523 lt!1086557))))))

(assert (= (and d!881110 c!539959) b!3213475))

(assert (= (and d!881110 (not c!539959)) b!3213476))

(assert (= (and d!881110 res!1308144) b!3213477))

(assert (= (and b!3213477 res!1308145) b!3213478))

(declare-fun m!3484585 () Bool)

(assert (=> b!3213477 m!3484585))

(assert (=> b!3213477 m!3483383))

(declare-fun m!3484587 () Bool)

(assert (=> b!3213477 m!3484587))

(assert (=> b!3213477 m!3484553))

(declare-fun m!3484589 () Bool)

(assert (=> b!3213476 m!3484589))

(declare-fun m!3484591 () Bool)

(assert (=> d!881110 m!3484591))

(assert (=> d!881110 m!3483383))

(declare-fun m!3484593 () Bool)

(assert (=> d!881110 m!3484593))

(assert (=> d!881110 m!3484559))

(assert (=> b!3212793 d!881110))

(declare-fun b!3213481 () Bool)

(declare-fun res!1308147 () Bool)

(declare-fun e!2003679 () Bool)

(assert (=> b!3213481 (=> (not res!1308147) (not e!2003679))))

(declare-fun lt!1086872 () List!36311)

(assert (=> b!3213481 (= res!1308147 (= (size!27274 lt!1086872) (+ (size!27274 lt!1086523) (size!27274 lt!1086557))))))

(declare-fun b!3213480 () Bool)

(declare-fun e!2003680 () List!36311)

(assert (=> b!3213480 (= e!2003680 (Cons!36187 (h!41607 lt!1086523) (++!8688 (t!239156 lt!1086523) lt!1086557)))))

(declare-fun b!3213479 () Bool)

(assert (=> b!3213479 (= e!2003680 lt!1086557)))

(declare-fun d!881112 () Bool)

(assert (=> d!881112 e!2003679))

(declare-fun res!1308146 () Bool)

(assert (=> d!881112 (=> (not res!1308146) (not e!2003679))))

(assert (=> d!881112 (= res!1308146 (= (content!4894 lt!1086872) ((_ map or) (content!4894 lt!1086523) (content!4894 lt!1086557))))))

(assert (=> d!881112 (= lt!1086872 e!2003680)))

(declare-fun c!539960 () Bool)

(assert (=> d!881112 (= c!539960 ((_ is Nil!36187) lt!1086523))))

(assert (=> d!881112 (= (++!8688 lt!1086523 lt!1086557) lt!1086872)))

(declare-fun b!3213482 () Bool)

(assert (=> b!3213482 (= e!2003679 (or (not (= lt!1086557 Nil!36187)) (= lt!1086872 lt!1086523)))))

(assert (= (and d!881112 c!539960) b!3213479))

(assert (= (and d!881112 (not c!539960)) b!3213480))

(assert (= (and d!881112 res!1308146) b!3213481))

(assert (= (and b!3213481 res!1308147) b!3213482))

(declare-fun m!3484595 () Bool)

(assert (=> b!3213481 m!3484595))

(assert (=> b!3213481 m!3483283))

(assert (=> b!3213481 m!3484517))

(declare-fun m!3484597 () Bool)

(assert (=> b!3213480 m!3484597))

(declare-fun m!3484599 () Bool)

(assert (=> d!881112 m!3484599))

(assert (=> d!881112 m!3484319))

(assert (=> d!881112 m!3484525))

(assert (=> b!3212793 d!881112))

(declare-fun d!881114 () Bool)

(declare-fun lt!1086873 () Bool)

(declare-fun e!2003681 () Bool)

(assert (=> d!881114 (= lt!1086873 e!2003681)))

(declare-fun res!1308148 () Bool)

(assert (=> d!881114 (=> (not res!1308148) (not e!2003681))))

(assert (=> d!881114 (= res!1308148 (= (list!12877 (_1!20931 (lex!2145 thiss!18206 rules!2135 (print!1880 thiss!18206 (singletonSeq!2322 (h!41609 tokens!494)))))) (list!12877 (singletonSeq!2322 (h!41609 tokens!494)))))))

(declare-fun e!2003682 () Bool)

(assert (=> d!881114 (= lt!1086873 e!2003682)))

(declare-fun res!1308149 () Bool)

(assert (=> d!881114 (=> (not res!1308149) (not e!2003682))))

(declare-fun lt!1086874 () tuple2!35594)

(assert (=> d!881114 (= res!1308149 (= (size!27275 (_1!20931 lt!1086874)) 1))))

(assert (=> d!881114 (= lt!1086874 (lex!2145 thiss!18206 rules!2135 (print!1880 thiss!18206 (singletonSeq!2322 (h!41609 tokens!494)))))))

(assert (=> d!881114 (not (isEmpty!20281 rules!2135))))

(assert (=> d!881114 (= (rulesProduceIndividualToken!2307 thiss!18206 rules!2135 (h!41609 tokens!494)) lt!1086873)))

(declare-fun b!3213483 () Bool)

(declare-fun res!1308150 () Bool)

(assert (=> b!3213483 (=> (not res!1308150) (not e!2003682))))

(assert (=> b!3213483 (= res!1308150 (= (apply!8207 (_1!20931 lt!1086874) 0) (h!41609 tokens!494)))))

(declare-fun b!3213484 () Bool)

(assert (=> b!3213484 (= e!2003682 (isEmpty!20279 (_2!20931 lt!1086874)))))

(declare-fun b!3213485 () Bool)

(assert (=> b!3213485 (= e!2003681 (isEmpty!20279 (_2!20931 (lex!2145 thiss!18206 rules!2135 (print!1880 thiss!18206 (singletonSeq!2322 (h!41609 tokens!494)))))))))

(assert (= (and d!881114 res!1308149) b!3213483))

(assert (= (and b!3213483 res!1308150) b!3213484))

(assert (= (and d!881114 res!1308148) b!3213485))

(assert (=> d!881114 m!3483411))

(declare-fun m!3484601 () Bool)

(assert (=> d!881114 m!3484601))

(declare-fun m!3484603 () Bool)

(assert (=> d!881114 m!3484603))

(declare-fun m!3484605 () Bool)

(assert (=> d!881114 m!3484605))

(assert (=> d!881114 m!3483421))

(declare-fun m!3484607 () Bool)

(assert (=> d!881114 m!3484607))

(assert (=> d!881114 m!3483421))

(declare-fun m!3484609 () Bool)

(assert (=> d!881114 m!3484609))

(assert (=> d!881114 m!3483421))

(assert (=> d!881114 m!3484601))

(declare-fun m!3484611 () Bool)

(assert (=> b!3213483 m!3484611))

(declare-fun m!3484613 () Bool)

(assert (=> b!3213484 m!3484613))

(assert (=> b!3213485 m!3483421))

(assert (=> b!3213485 m!3483421))

(assert (=> b!3213485 m!3484601))

(assert (=> b!3213485 m!3484601))

(assert (=> b!3213485 m!3484603))

(declare-fun m!3484615 () Bool)

(assert (=> b!3213485 m!3484615))

(assert (=> b!3212815 d!881114))

(declare-fun lt!1086877 () Bool)

(declare-fun d!881116 () Bool)

(declare-fun isEmpty!20292 (List!36313) Bool)

(assert (=> d!881116 (= lt!1086877 (isEmpty!20292 (list!12877 (_1!20931 (lex!2145 thiss!18206 rules!2135 lt!1086549)))))))

(declare-fun isEmpty!20293 (Conc!10828) Bool)

(assert (=> d!881116 (= lt!1086877 (isEmpty!20293 (c!539814 (_1!20931 (lex!2145 thiss!18206 rules!2135 lt!1086549)))))))

(assert (=> d!881116 (= (isEmpty!20280 (_1!20931 (lex!2145 thiss!18206 rules!2135 lt!1086549))) lt!1086877)))

(declare-fun bs!541918 () Bool)

(assert (= bs!541918 d!881116))

(declare-fun m!3484617 () Bool)

(assert (=> bs!541918 m!3484617))

(assert (=> bs!541918 m!3484617))

(declare-fun m!3484619 () Bool)

(assert (=> bs!541918 m!3484619))

(declare-fun m!3484621 () Bool)

(assert (=> bs!541918 m!3484621))

(assert (=> b!3212792 d!881116))

(declare-fun b!3213486 () Bool)

(declare-fun res!1308151 () Bool)

(declare-fun e!2003683 () Bool)

(assert (=> b!3213486 (=> (not res!1308151) (not e!2003683))))

(declare-fun lt!1086878 () tuple2!35594)

(assert (=> b!3213486 (= res!1308151 (= (list!12877 (_1!20931 lt!1086878)) (_1!20933 (lexList!1314 thiss!18206 rules!2135 (list!12875 lt!1086549)))))))

(declare-fun b!3213487 () Bool)

(declare-fun e!2003685 () Bool)

(assert (=> b!3213487 (= e!2003685 (= (_2!20931 lt!1086878) lt!1086549))))

(declare-fun d!881118 () Bool)

(assert (=> d!881118 e!2003683))

(declare-fun res!1308152 () Bool)

(assert (=> d!881118 (=> (not res!1308152) (not e!2003683))))

(assert (=> d!881118 (= res!1308152 e!2003685)))

(declare-fun c!539961 () Bool)

(assert (=> d!881118 (= c!539961 (> (size!27275 (_1!20931 lt!1086878)) 0))))

(assert (=> d!881118 (= lt!1086878 (lexTailRecV2!934 thiss!18206 rules!2135 lt!1086549 (BalanceConc!21269 Empty!10827) lt!1086549 (BalanceConc!21271 Empty!10828)))))

(assert (=> d!881118 (= (lex!2145 thiss!18206 rules!2135 lt!1086549) lt!1086878)))

(declare-fun b!3213488 () Bool)

(declare-fun e!2003684 () Bool)

(assert (=> b!3213488 (= e!2003684 (not (isEmpty!20280 (_1!20931 lt!1086878))))))

(declare-fun b!3213489 () Bool)

(assert (=> b!3213489 (= e!2003683 (= (list!12875 (_2!20931 lt!1086878)) (_2!20933 (lexList!1314 thiss!18206 rules!2135 (list!12875 lt!1086549)))))))

(declare-fun b!3213490 () Bool)

(assert (=> b!3213490 (= e!2003685 e!2003684)))

(declare-fun res!1308153 () Bool)

(assert (=> b!3213490 (= res!1308153 (< (size!27276 (_2!20931 lt!1086878)) (size!27276 lt!1086549)))))

(assert (=> b!3213490 (=> (not res!1308153) (not e!2003684))))

(assert (= (and d!881118 c!539961) b!3213490))

(assert (= (and d!881118 (not c!539961)) b!3213487))

(assert (= (and b!3213490 res!1308153) b!3213488))

(assert (= (and d!881118 res!1308152) b!3213486))

(assert (= (and b!3213486 res!1308151) b!3213489))

(declare-fun m!3484623 () Bool)

(assert (=> b!3213486 m!3484623))

(declare-fun m!3484625 () Bool)

(assert (=> b!3213486 m!3484625))

(assert (=> b!3213486 m!3484625))

(declare-fun m!3484627 () Bool)

(assert (=> b!3213486 m!3484627))

(declare-fun m!3484629 () Bool)

(assert (=> d!881118 m!3484629))

(declare-fun m!3484631 () Bool)

(assert (=> d!881118 m!3484631))

(declare-fun m!3484633 () Bool)

(assert (=> b!3213489 m!3484633))

(assert (=> b!3213489 m!3484625))

(assert (=> b!3213489 m!3484625))

(assert (=> b!3213489 m!3484627))

(declare-fun m!3484635 () Bool)

(assert (=> b!3213488 m!3484635))

(declare-fun m!3484637 () Bool)

(assert (=> b!3213490 m!3484637))

(declare-fun m!3484639 () Bool)

(assert (=> b!3213490 m!3484639))

(assert (=> b!3212792 d!881118))

(declare-fun d!881120 () Bool)

(assert (=> d!881120 (= (seqFromList!3524 lt!1086523) (fromListB!1544 lt!1086523))))

(declare-fun bs!541919 () Bool)

(assert (= bs!541919 d!881120))

(declare-fun m!3484641 () Bool)

(assert (=> bs!541919 m!3484641))

(assert (=> b!3212792 d!881120))

(declare-fun b!3213491 () Bool)

(declare-fun res!1308159 () Bool)

(declare-fun e!2003689 () Bool)

(assert (=> b!3213491 (=> res!1308159 e!2003689)))

(assert (=> b!3213491 (= res!1308159 (not (isEmpty!20288 (tail!5217 lt!1086561))))))

(declare-fun b!3213492 () Bool)

(declare-fun res!1308161 () Bool)

(declare-fun e!2003687 () Bool)

(assert (=> b!3213492 (=> res!1308161 e!2003687)))

(declare-fun e!2003688 () Bool)

(assert (=> b!3213492 (= res!1308161 e!2003688)))

(declare-fun res!1308156 () Bool)

(assert (=> b!3213492 (=> (not res!1308156) (not e!2003688))))

(declare-fun lt!1086882 () Bool)

(assert (=> b!3213492 (= res!1308156 lt!1086882)))

(declare-fun bm!232544 () Bool)

(declare-fun call!232549 () Bool)

(assert (=> bm!232544 (= call!232549 (isEmpty!20288 lt!1086561))))

(declare-fun b!3213493 () Bool)

(assert (=> b!3213493 (= e!2003688 (= (head!7047 lt!1086561) (c!539812 (regex!5226 lt!1086545))))))

(declare-fun b!3213494 () Bool)

(declare-fun e!2003692 () Bool)

(assert (=> b!3213494 (= e!2003692 (matchR!4619 (derivativeStep!2953 (regex!5226 lt!1086545) (head!7047 lt!1086561)) (tail!5217 lt!1086561)))))

(declare-fun d!881122 () Bool)

(declare-fun e!2003690 () Bool)

(assert (=> d!881122 e!2003690))

(declare-fun c!539962 () Bool)

(assert (=> d!881122 (= c!539962 ((_ is EmptyExpr!9985) (regex!5226 lt!1086545)))))

(assert (=> d!881122 (= lt!1086882 e!2003692)))

(declare-fun c!539964 () Bool)

(assert (=> d!881122 (= c!539964 (isEmpty!20288 lt!1086561))))

(assert (=> d!881122 (validRegex!4554 (regex!5226 lt!1086545))))

(assert (=> d!881122 (= (matchR!4619 (regex!5226 lt!1086545) lt!1086561) lt!1086882)))

(declare-fun b!3213495 () Bool)

(declare-fun e!2003691 () Bool)

(assert (=> b!3213495 (= e!2003691 (not lt!1086882))))

(declare-fun b!3213496 () Bool)

(assert (=> b!3213496 (= e!2003689 (not (= (head!7047 lt!1086561) (c!539812 (regex!5226 lt!1086545)))))))

(declare-fun b!3213497 () Bool)

(declare-fun res!1308158 () Bool)

(assert (=> b!3213497 (=> (not res!1308158) (not e!2003688))))

(assert (=> b!3213497 (= res!1308158 (isEmpty!20288 (tail!5217 lt!1086561)))))

(declare-fun b!3213498 () Bool)

(declare-fun res!1308154 () Bool)

(assert (=> b!3213498 (=> (not res!1308154) (not e!2003688))))

(assert (=> b!3213498 (= res!1308154 (not call!232549))))

(declare-fun b!3213499 () Bool)

(declare-fun e!2003686 () Bool)

(assert (=> b!3213499 (= e!2003687 e!2003686)))

(declare-fun res!1308157 () Bool)

(assert (=> b!3213499 (=> (not res!1308157) (not e!2003686))))

(assert (=> b!3213499 (= res!1308157 (not lt!1086882))))

(declare-fun b!3213500 () Bool)

(assert (=> b!3213500 (= e!2003690 e!2003691)))

(declare-fun c!539963 () Bool)

(assert (=> b!3213500 (= c!539963 ((_ is EmptyLang!9985) (regex!5226 lt!1086545)))))

(declare-fun b!3213501 () Bool)

(declare-fun res!1308155 () Bool)

(assert (=> b!3213501 (=> res!1308155 e!2003687)))

(assert (=> b!3213501 (= res!1308155 (not ((_ is ElementMatch!9985) (regex!5226 lt!1086545))))))

(assert (=> b!3213501 (= e!2003691 e!2003687)))

(declare-fun b!3213502 () Bool)

(assert (=> b!3213502 (= e!2003686 e!2003689)))

(declare-fun res!1308160 () Bool)

(assert (=> b!3213502 (=> res!1308160 e!2003689)))

(assert (=> b!3213502 (= res!1308160 call!232549)))

(declare-fun b!3213503 () Bool)

(assert (=> b!3213503 (= e!2003692 (nullable!3400 (regex!5226 lt!1086545)))))

(declare-fun b!3213504 () Bool)

(assert (=> b!3213504 (= e!2003690 (= lt!1086882 call!232549))))

(assert (= (and d!881122 c!539964) b!3213503))

(assert (= (and d!881122 (not c!539964)) b!3213494))

(assert (= (and d!881122 c!539962) b!3213504))

(assert (= (and d!881122 (not c!539962)) b!3213500))

(assert (= (and b!3213500 c!539963) b!3213495))

(assert (= (and b!3213500 (not c!539963)) b!3213501))

(assert (= (and b!3213501 (not res!1308155)) b!3213492))

(assert (= (and b!3213492 res!1308156) b!3213498))

(assert (= (and b!3213498 res!1308154) b!3213497))

(assert (= (and b!3213497 res!1308158) b!3213493))

(assert (= (and b!3213492 (not res!1308161)) b!3213499))

(assert (= (and b!3213499 res!1308157) b!3213502))

(assert (= (and b!3213502 (not res!1308160)) b!3213491))

(assert (= (and b!3213491 (not res!1308159)) b!3213496))

(assert (= (or b!3213504 b!3213502 b!3213498) bm!232544))

(declare-fun m!3484651 () Bool)

(assert (=> b!3213503 m!3484651))

(declare-fun m!3484653 () Bool)

(assert (=> b!3213491 m!3484653))

(assert (=> b!3213491 m!3484653))

(declare-fun m!3484655 () Bool)

(assert (=> b!3213491 m!3484655))

(assert (=> b!3213493 m!3483337))

(assert (=> b!3213496 m!3483337))

(assert (=> b!3213494 m!3483337))

(assert (=> b!3213494 m!3483337))

(declare-fun m!3484657 () Bool)

(assert (=> b!3213494 m!3484657))

(assert (=> b!3213494 m!3484653))

(assert (=> b!3213494 m!3484657))

(assert (=> b!3213494 m!3484653))

(declare-fun m!3484659 () Bool)

(assert (=> b!3213494 m!3484659))

(declare-fun m!3484661 () Bool)

(assert (=> d!881122 m!3484661))

(declare-fun m!3484663 () Bool)

(assert (=> d!881122 m!3484663))

(assert (=> bm!232544 m!3484661))

(assert (=> b!3213497 m!3484653))

(assert (=> b!3213497 m!3484653))

(assert (=> b!3213497 m!3484655))

(assert (=> b!3212827 d!881122))

(declare-fun d!881128 () Bool)

(assert (=> d!881128 (= (get!11524 lt!1086537) (v!35712 lt!1086537))))

(assert (=> b!3212827 d!881128))

(declare-fun d!881130 () Bool)

(declare-fun res!1308168 () Bool)

(declare-fun e!2003700 () Bool)

(assert (=> d!881130 (=> (not res!1308168) (not e!2003700))))

(assert (=> d!881130 (= res!1308168 (not (isEmpty!20288 (originalCharacters!5940 (h!41609 tokens!494)))))))

(assert (=> d!881130 (= (inv!49052 (h!41609 tokens!494)) e!2003700)))

(declare-fun b!3213515 () Bool)

(declare-fun res!1308169 () Bool)

(assert (=> b!3213515 (=> (not res!1308169) (not e!2003700))))

(assert (=> b!3213515 (= res!1308169 (= (originalCharacters!5940 (h!41609 tokens!494)) (list!12875 (dynLambda!14631 (toChars!7173 (transformation!5226 (rule!7672 (h!41609 tokens!494)))) (value!169401 (h!41609 tokens!494))))))))

(declare-fun b!3213516 () Bool)

(assert (=> b!3213516 (= e!2003700 (= (size!27273 (h!41609 tokens!494)) (size!27274 (originalCharacters!5940 (h!41609 tokens!494)))))))

(assert (= (and d!881130 res!1308168) b!3213515))

(assert (= (and b!3213515 res!1308169) b!3213516))

(declare-fun b_lambda!88159 () Bool)

(assert (=> (not b_lambda!88159) (not b!3213515)))

(assert (=> b!3213515 t!239206))

(declare-fun b_and!214315 () Bool)

(assert (= b_and!214303 (and (=> t!239206 result!200570) b_and!214315)))

(assert (=> b!3213515 t!239208))

(declare-fun b_and!214317 () Bool)

(assert (= b_and!214305 (and (=> t!239208 result!200574) b_and!214317)))

(assert (=> b!3213515 t!239210))

(declare-fun b_and!214319 () Bool)

(assert (= b_and!214307 (and (=> t!239210 result!200576) b_and!214319)))

(declare-fun m!3484709 () Bool)

(assert (=> d!881130 m!3484709))

(assert (=> b!3213515 m!3484379))

(assert (=> b!3213515 m!3484379))

(declare-fun m!3484711 () Bool)

(assert (=> b!3213515 m!3484711))

(declare-fun m!3484713 () Bool)

(assert (=> b!3213516 m!3484713))

(assert (=> b!3212807 d!881130))

(declare-fun d!881142 () Bool)

(declare-fun res!1308182 () Bool)

(declare-fun e!2003718 () Bool)

(assert (=> d!881142 (=> res!1308182 e!2003718)))

(assert (=> d!881142 (= res!1308182 (not ((_ is Cons!36188) rules!2135)))))

(assert (=> d!881142 (= (sepAndNonSepRulesDisjointChars!1420 rules!2135 rules!2135) e!2003718)))

(declare-fun b!3213541 () Bool)

(declare-fun e!2003719 () Bool)

(assert (=> b!3213541 (= e!2003718 e!2003719)))

(declare-fun res!1308183 () Bool)

(assert (=> b!3213541 (=> (not res!1308183) (not e!2003719))))

(declare-fun ruleDisjointCharsFromAllFromOtherType!593 (Rule!10252 List!36312) Bool)

(assert (=> b!3213541 (= res!1308183 (ruleDisjointCharsFromAllFromOtherType!593 (h!41608 rules!2135) rules!2135))))

(declare-fun b!3213542 () Bool)

(assert (=> b!3213542 (= e!2003719 (sepAndNonSepRulesDisjointChars!1420 rules!2135 (t!239157 rules!2135)))))

(assert (= (and d!881142 (not res!1308182)) b!3213541))

(assert (= (and b!3213541 res!1308183) b!3213542))

(declare-fun m!3484753 () Bool)

(assert (=> b!3213541 m!3484753))

(declare-fun m!3484755 () Bool)

(assert (=> b!3213542 m!3484755))

(assert (=> b!3212805 d!881142))

(declare-fun d!881156 () Bool)

(declare-fun res!1308185 () Bool)

(declare-fun e!2003721 () Bool)

(assert (=> d!881156 (=> (not res!1308185) (not e!2003721))))

(assert (=> d!881156 (= res!1308185 (not (isEmpty!20288 (originalCharacters!5940 separatorToken!241))))))

(assert (=> d!881156 (= (inv!49052 separatorToken!241) e!2003721)))

(declare-fun b!3213544 () Bool)

(declare-fun res!1308186 () Bool)

(assert (=> b!3213544 (=> (not res!1308186) (not e!2003721))))

(assert (=> b!3213544 (= res!1308186 (= (originalCharacters!5940 separatorToken!241) (list!12875 (dynLambda!14631 (toChars!7173 (transformation!5226 (rule!7672 separatorToken!241))) (value!169401 separatorToken!241)))))))

(declare-fun b!3213545 () Bool)

(assert (=> b!3213545 (= e!2003721 (= (size!27273 separatorToken!241) (size!27274 (originalCharacters!5940 separatorToken!241))))))

(assert (= (and d!881156 res!1308185) b!3213544))

(assert (= (and b!3213544 res!1308186) b!3213545))

(declare-fun b_lambda!88161 () Bool)

(assert (=> (not b_lambda!88161) (not b!3213544)))

(assert (=> b!3213544 t!239212))

(declare-fun b_and!214321 () Bool)

(assert (= b_and!214315 (and (=> t!239212 result!200578) b_and!214321)))

(assert (=> b!3213544 t!239214))

(declare-fun b_and!214323 () Bool)

(assert (= b_and!214317 (and (=> t!239214 result!200580) b_and!214323)))

(assert (=> b!3213544 t!239216))

(declare-fun b_and!214325 () Bool)

(assert (= b_and!214319 (and (=> t!239216 result!200582) b_and!214325)))

(declare-fun m!3484761 () Bool)

(assert (=> d!881156 m!3484761))

(assert (=> b!3213544 m!3484533))

(assert (=> b!3213544 m!3484533))

(declare-fun m!3484763 () Bool)

(assert (=> b!3213544 m!3484763))

(declare-fun m!3484765 () Bool)

(assert (=> b!3213545 m!3484765))

(assert (=> start!301726 d!881156))

(declare-fun d!881160 () Bool)

(assert (=> d!881160 (= (inv!49048 (tag!5754 (h!41608 rules!2135))) (= (mod (str.len (value!169400 (tag!5754 (h!41608 rules!2135)))) 2) 0))))

(assert (=> b!3212808 d!881160))

(declare-fun d!881162 () Bool)

(declare-fun res!1308190 () Bool)

(declare-fun e!2003724 () Bool)

(assert (=> d!881162 (=> (not res!1308190) (not e!2003724))))

(assert (=> d!881162 (= res!1308190 (semiInverseModEq!2157 (toChars!7173 (transformation!5226 (h!41608 rules!2135))) (toValue!7314 (transformation!5226 (h!41608 rules!2135)))))))

(assert (=> d!881162 (= (inv!49051 (transformation!5226 (h!41608 rules!2135))) e!2003724)))

(declare-fun b!3213549 () Bool)

(assert (=> b!3213549 (= e!2003724 (equivClasses!2056 (toChars!7173 (transformation!5226 (h!41608 rules!2135))) (toValue!7314 (transformation!5226 (h!41608 rules!2135)))))))

(assert (= (and d!881162 res!1308190) b!3213549))

(declare-fun m!3484769 () Bool)

(assert (=> d!881162 m!3484769))

(declare-fun m!3484773 () Bool)

(assert (=> b!3213549 m!3484773))

(assert (=> b!3212808 d!881162))

(declare-fun bs!541930 () Bool)

(declare-fun d!881164 () Bool)

(assert (= bs!541930 (and d!881164 b!3212794)))

(declare-fun lambda!117565 () Int)

(assert (=> bs!541930 (not (= lambda!117565 lambda!117554))))

(declare-fun bs!541931 () Bool)

(assert (= bs!541931 (and d!881164 b!3212817)))

(assert (=> bs!541931 (= lambda!117565 lambda!117555)))

(declare-fun b!3213683 () Bool)

(declare-fun e!2003815 () Bool)

(assert (=> b!3213683 (= e!2003815 true)))

(declare-fun b!3213682 () Bool)

(declare-fun e!2003814 () Bool)

(assert (=> b!3213682 (= e!2003814 e!2003815)))

(declare-fun b!3213681 () Bool)

(declare-fun e!2003813 () Bool)

(assert (=> b!3213681 (= e!2003813 e!2003814)))

(assert (=> d!881164 e!2003813))

(assert (= b!3213682 b!3213683))

(assert (= b!3213681 b!3213682))

(assert (= (and d!881164 ((_ is Cons!36188) rules!2135)) b!3213681))

(assert (=> b!3213683 (< (dynLambda!14623 order!18493 (toValue!7314 (transformation!5226 (h!41608 rules!2135)))) (dynLambda!14624 order!18495 lambda!117565))))

(assert (=> b!3213683 (< (dynLambda!14625 order!18497 (toChars!7173 (transformation!5226 (h!41608 rules!2135)))) (dynLambda!14624 order!18495 lambda!117565))))

(assert (=> d!881164 true))

(declare-fun e!2003812 () Bool)

(assert (=> d!881164 e!2003812))

(declare-fun res!1308239 () Bool)

(assert (=> d!881164 (=> (not res!1308239) (not e!2003812))))

(declare-fun lt!1086920 () Bool)

(assert (=> d!881164 (= res!1308239 (= lt!1086920 (forall!7396 (list!12877 (seqFromList!3523 tokens!494)) lambda!117565)))))

(declare-fun forall!7398 (BalanceConc!21270 Int) Bool)

(assert (=> d!881164 (= lt!1086920 (forall!7398 (seqFromList!3523 tokens!494) lambda!117565))))

(assert (=> d!881164 (not (isEmpty!20281 rules!2135))))

(assert (=> d!881164 (= (rulesProduceEachTokenIndividually!1266 thiss!18206 rules!2135 (seqFromList!3523 tokens!494)) lt!1086920)))

(declare-fun b!3213680 () Bool)

(declare-fun rulesProduceEachTokenIndividuallyList!1729 (LexerInterface!4815 List!36312 List!36313) Bool)

(assert (=> b!3213680 (= e!2003812 (= lt!1086920 (rulesProduceEachTokenIndividuallyList!1729 thiss!18206 rules!2135 (list!12877 (seqFromList!3523 tokens!494)))))))

(assert (= (and d!881164 res!1308239) b!3213680))

(assert (=> d!881164 m!3483445))

(declare-fun m!3484925 () Bool)

(assert (=> d!881164 m!3484925))

(assert (=> d!881164 m!3484925))

(declare-fun m!3484927 () Bool)

(assert (=> d!881164 m!3484927))

(assert (=> d!881164 m!3483445))

(declare-fun m!3484929 () Bool)

(assert (=> d!881164 m!3484929))

(assert (=> d!881164 m!3483411))

(assert (=> b!3213680 m!3483445))

(assert (=> b!3213680 m!3484925))

(assert (=> b!3213680 m!3484925))

(declare-fun m!3484931 () Bool)

(assert (=> b!3213680 m!3484931))

(assert (=> b!3212788 d!881164))

(declare-fun d!881216 () Bool)

(declare-fun fromListB!1546 (List!36313) BalanceConc!21270)

(assert (=> d!881216 (= (seqFromList!3523 tokens!494) (fromListB!1546 tokens!494))))

(declare-fun bs!541932 () Bool)

(assert (= bs!541932 d!881216))

(declare-fun m!3484933 () Bool)

(assert (=> bs!541932 m!3484933))

(assert (=> b!3212788 d!881216))

(declare-fun d!881218 () Bool)

(declare-fun lt!1086921 () Bool)

(assert (=> d!881218 (= lt!1086921 (isEmpty!20288 (list!12875 (_2!20931 lt!1086541))))))

(assert (=> d!881218 (= lt!1086921 (isEmpty!20289 (c!539813 (_2!20931 lt!1086541))))))

(assert (=> d!881218 (= (isEmpty!20279 (_2!20931 lt!1086541)) lt!1086921)))

(declare-fun bs!541933 () Bool)

(assert (= bs!541933 d!881218))

(declare-fun m!3484935 () Bool)

(assert (=> bs!541933 m!3484935))

(assert (=> bs!541933 m!3484935))

(declare-fun m!3484937 () Bool)

(assert (=> bs!541933 m!3484937))

(declare-fun m!3484939 () Bool)

(assert (=> bs!541933 m!3484939))

(assert (=> b!3212787 d!881218))

(declare-fun b!3213684 () Bool)

(declare-fun res!1308245 () Bool)

(declare-fun e!2003819 () Bool)

(assert (=> b!3213684 (=> res!1308245 e!2003819)))

(assert (=> b!3213684 (= res!1308245 (not (isEmpty!20288 (tail!5217 lt!1086557))))))

(declare-fun b!3213685 () Bool)

(declare-fun res!1308247 () Bool)

(declare-fun e!2003817 () Bool)

(assert (=> b!3213685 (=> res!1308247 e!2003817)))

(declare-fun e!2003818 () Bool)

(assert (=> b!3213685 (= res!1308247 e!2003818)))

(declare-fun res!1308242 () Bool)

(assert (=> b!3213685 (=> (not res!1308242) (not e!2003818))))

(declare-fun lt!1086922 () Bool)

(assert (=> b!3213685 (= res!1308242 lt!1086922)))

(declare-fun bm!232552 () Bool)

(declare-fun call!232557 () Bool)

(assert (=> bm!232552 (= call!232557 (isEmpty!20288 lt!1086557))))

(declare-fun b!3213686 () Bool)

(assert (=> b!3213686 (= e!2003818 (= (head!7047 lt!1086557) (c!539812 (regex!5226 lt!1086524))))))

(declare-fun b!3213687 () Bool)

(declare-fun e!2003822 () Bool)

(assert (=> b!3213687 (= e!2003822 (matchR!4619 (derivativeStep!2953 (regex!5226 lt!1086524) (head!7047 lt!1086557)) (tail!5217 lt!1086557)))))

(declare-fun d!881220 () Bool)

(declare-fun e!2003820 () Bool)

(assert (=> d!881220 e!2003820))

(declare-fun c!539986 () Bool)

(assert (=> d!881220 (= c!539986 ((_ is EmptyExpr!9985) (regex!5226 lt!1086524)))))

(assert (=> d!881220 (= lt!1086922 e!2003822)))

(declare-fun c!539988 () Bool)

(assert (=> d!881220 (= c!539988 (isEmpty!20288 lt!1086557))))

(assert (=> d!881220 (validRegex!4554 (regex!5226 lt!1086524))))

(assert (=> d!881220 (= (matchR!4619 (regex!5226 lt!1086524) lt!1086557) lt!1086922)))

(declare-fun b!3213688 () Bool)

(declare-fun e!2003821 () Bool)

(assert (=> b!3213688 (= e!2003821 (not lt!1086922))))

(declare-fun b!3213689 () Bool)

(assert (=> b!3213689 (= e!2003819 (not (= (head!7047 lt!1086557) (c!539812 (regex!5226 lt!1086524)))))))

(declare-fun b!3213690 () Bool)

(declare-fun res!1308244 () Bool)

(assert (=> b!3213690 (=> (not res!1308244) (not e!2003818))))

(assert (=> b!3213690 (= res!1308244 (isEmpty!20288 (tail!5217 lt!1086557)))))

(declare-fun b!3213691 () Bool)

(declare-fun res!1308240 () Bool)

(assert (=> b!3213691 (=> (not res!1308240) (not e!2003818))))

(assert (=> b!3213691 (= res!1308240 (not call!232557))))

(declare-fun b!3213692 () Bool)

(declare-fun e!2003816 () Bool)

(assert (=> b!3213692 (= e!2003817 e!2003816)))

(declare-fun res!1308243 () Bool)

(assert (=> b!3213692 (=> (not res!1308243) (not e!2003816))))

(assert (=> b!3213692 (= res!1308243 (not lt!1086922))))

(declare-fun b!3213693 () Bool)

(assert (=> b!3213693 (= e!2003820 e!2003821)))

(declare-fun c!539987 () Bool)

(assert (=> b!3213693 (= c!539987 ((_ is EmptyLang!9985) (regex!5226 lt!1086524)))))

(declare-fun b!3213694 () Bool)

(declare-fun res!1308241 () Bool)

(assert (=> b!3213694 (=> res!1308241 e!2003817)))

(assert (=> b!3213694 (= res!1308241 (not ((_ is ElementMatch!9985) (regex!5226 lt!1086524))))))

(assert (=> b!3213694 (= e!2003821 e!2003817)))

(declare-fun b!3213695 () Bool)

(assert (=> b!3213695 (= e!2003816 e!2003819)))

(declare-fun res!1308246 () Bool)

(assert (=> b!3213695 (=> res!1308246 e!2003819)))

(assert (=> b!3213695 (= res!1308246 call!232557)))

(declare-fun b!3213696 () Bool)

(assert (=> b!3213696 (= e!2003822 (nullable!3400 (regex!5226 lt!1086524)))))

(declare-fun b!3213697 () Bool)

(assert (=> b!3213697 (= e!2003820 (= lt!1086922 call!232557))))

(assert (= (and d!881220 c!539988) b!3213696))

(assert (= (and d!881220 (not c!539988)) b!3213687))

(assert (= (and d!881220 c!539986) b!3213697))

(assert (= (and d!881220 (not c!539986)) b!3213693))

(assert (= (and b!3213693 c!539987) b!3213688))

(assert (= (and b!3213693 (not c!539987)) b!3213694))

(assert (= (and b!3213694 (not res!1308241)) b!3213685))

(assert (= (and b!3213685 res!1308242) b!3213691))

(assert (= (and b!3213691 res!1308240) b!3213690))

(assert (= (and b!3213690 res!1308244) b!3213686))

(assert (= (and b!3213685 (not res!1308247)) b!3213692))

(assert (= (and b!3213692 res!1308243) b!3213695))

(assert (= (and b!3213695 (not res!1308246)) b!3213684))

(assert (= (and b!3213684 (not res!1308245)) b!3213689))

(assert (= (or b!3213697 b!3213695 b!3213691) bm!232552))

(declare-fun m!3484941 () Bool)

(assert (=> b!3213696 m!3484941))

(declare-fun m!3484943 () Bool)

(assert (=> b!3213684 m!3484943))

(assert (=> b!3213684 m!3484943))

(declare-fun m!3484945 () Bool)

(assert (=> b!3213684 m!3484945))

(assert (=> b!3213686 m!3483347))

(assert (=> b!3213689 m!3483347))

(assert (=> b!3213687 m!3483347))

(assert (=> b!3213687 m!3483347))

(declare-fun m!3484947 () Bool)

(assert (=> b!3213687 m!3484947))

(assert (=> b!3213687 m!3484943))

(assert (=> b!3213687 m!3484947))

(assert (=> b!3213687 m!3484943))

(declare-fun m!3484949 () Bool)

(assert (=> b!3213687 m!3484949))

(declare-fun m!3484951 () Bool)

(assert (=> d!881220 m!3484951))

(declare-fun m!3484953 () Bool)

(assert (=> d!881220 m!3484953))

(assert (=> bm!232552 m!3484951))

(assert (=> b!3213690 m!3484943))

(assert (=> b!3213690 m!3484943))

(assert (=> b!3213690 m!3484945))

(assert (=> b!3212821 d!881220))

(declare-fun d!881222 () Bool)

(assert (=> d!881222 (= (get!11524 lt!1086534) (v!35712 lt!1086534))))

(assert (=> b!3212821 d!881222))

(declare-fun d!881224 () Bool)

(declare-fun lt!1086923 () Token!9818)

(assert (=> d!881224 (= lt!1086923 (apply!8209 (list!12877 (_1!20931 lt!1086556)) 0))))

(assert (=> d!881224 (= lt!1086923 (apply!8210 (c!539814 (_1!20931 lt!1086556)) 0))))

(declare-fun e!2003823 () Bool)

(assert (=> d!881224 e!2003823))

(declare-fun res!1308248 () Bool)

(assert (=> d!881224 (=> (not res!1308248) (not e!2003823))))

(assert (=> d!881224 (= res!1308248 (<= 0 0))))

(assert (=> d!881224 (= (apply!8207 (_1!20931 lt!1086556) 0) lt!1086923)))

(declare-fun b!3213698 () Bool)

(assert (=> b!3213698 (= e!2003823 (< 0 (size!27275 (_1!20931 lt!1086556))))))

(assert (= (and d!881224 res!1308248) b!3213698))

(assert (=> d!881224 m!3483963))

(assert (=> d!881224 m!3483963))

(declare-fun m!3484955 () Bool)

(assert (=> d!881224 m!3484955))

(declare-fun m!3484957 () Bool)

(assert (=> d!881224 m!3484957))

(assert (=> b!3213698 m!3483309))

(assert (=> b!3212823 d!881224))

(declare-fun d!881226 () Bool)

(assert (=> d!881226 (= (isEmpty!20281 rules!2135) ((_ is Nil!36188) rules!2135))))

(assert (=> b!3212800 d!881226))

(declare-fun d!881228 () Bool)

(declare-fun res!1308251 () Bool)

(declare-fun e!2003826 () Bool)

(assert (=> d!881228 (=> (not res!1308251) (not e!2003826))))

(declare-fun rulesValid!1917 (LexerInterface!4815 List!36312) Bool)

(assert (=> d!881228 (= res!1308251 (rulesValid!1917 thiss!18206 rules!2135))))

(assert (=> d!881228 (= (rulesInvariant!4212 thiss!18206 rules!2135) e!2003826)))

(declare-fun b!3213701 () Bool)

(declare-datatypes ((List!36315 0))(
  ( (Nil!36191) (Cons!36191 (h!41611 String!40614) (t!239274 List!36315)) )
))
(declare-fun noDuplicateTag!1913 (LexerInterface!4815 List!36312 List!36315) Bool)

(assert (=> b!3213701 (= e!2003826 (noDuplicateTag!1913 thiss!18206 rules!2135 Nil!36191))))

(assert (= (and d!881228 res!1308251) b!3213701))

(declare-fun m!3484959 () Bool)

(assert (=> d!881228 m!3484959))

(declare-fun m!3484961 () Bool)

(assert (=> b!3213701 m!3484961))

(assert (=> b!3212822 d!881228))

(declare-fun d!881230 () Bool)

(assert (=> d!881230 (not (matchR!4619 (regex!5226 (rule!7672 separatorToken!241)) lt!1086557))))

(declare-fun lt!1086926 () Unit!50676)

(declare-fun choose!18766 (Regex!9985 List!36311 C!20156) Unit!50676)

(assert (=> d!881230 (= lt!1086926 (choose!18766 (regex!5226 (rule!7672 separatorToken!241)) lt!1086557 lt!1086540))))

(assert (=> d!881230 (validRegex!4554 (regex!5226 (rule!7672 separatorToken!241)))))

(assert (=> d!881230 (= (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!390 (regex!5226 (rule!7672 separatorToken!241)) lt!1086557 lt!1086540) lt!1086926)))

(declare-fun bs!541934 () Bool)

(assert (= bs!541934 d!881230))

(assert (=> bs!541934 m!3483415))

(declare-fun m!3484963 () Bool)

(assert (=> bs!541934 m!3484963))

(declare-fun m!3484965 () Bool)

(assert (=> bs!541934 m!3484965))

(assert (=> b!3212824 d!881230))

(declare-fun b!3213702 () Bool)

(declare-fun res!1308257 () Bool)

(declare-fun e!2003830 () Bool)

(assert (=> b!3213702 (=> res!1308257 e!2003830)))

(assert (=> b!3213702 (= res!1308257 (not (isEmpty!20288 (tail!5217 lt!1086557))))))

(declare-fun b!3213703 () Bool)

(declare-fun res!1308259 () Bool)

(declare-fun e!2003828 () Bool)

(assert (=> b!3213703 (=> res!1308259 e!2003828)))

(declare-fun e!2003829 () Bool)

(assert (=> b!3213703 (= res!1308259 e!2003829)))

(declare-fun res!1308254 () Bool)

(assert (=> b!3213703 (=> (not res!1308254) (not e!2003829))))

(declare-fun lt!1086927 () Bool)

(assert (=> b!3213703 (= res!1308254 lt!1086927)))

(declare-fun bm!232553 () Bool)

(declare-fun call!232558 () Bool)

(assert (=> bm!232553 (= call!232558 (isEmpty!20288 lt!1086557))))

(declare-fun b!3213704 () Bool)

(assert (=> b!3213704 (= e!2003829 (= (head!7047 lt!1086557) (c!539812 (regex!5226 (rule!7672 separatorToken!241)))))))

(declare-fun b!3213705 () Bool)

(declare-fun e!2003833 () Bool)

(assert (=> b!3213705 (= e!2003833 (matchR!4619 (derivativeStep!2953 (regex!5226 (rule!7672 separatorToken!241)) (head!7047 lt!1086557)) (tail!5217 lt!1086557)))))

(declare-fun d!881232 () Bool)

(declare-fun e!2003831 () Bool)

(assert (=> d!881232 e!2003831))

(declare-fun c!539990 () Bool)

(assert (=> d!881232 (= c!539990 ((_ is EmptyExpr!9985) (regex!5226 (rule!7672 separatorToken!241))))))

(assert (=> d!881232 (= lt!1086927 e!2003833)))

(declare-fun c!539992 () Bool)

(assert (=> d!881232 (= c!539992 (isEmpty!20288 lt!1086557))))

(assert (=> d!881232 (validRegex!4554 (regex!5226 (rule!7672 separatorToken!241)))))

(assert (=> d!881232 (= (matchR!4619 (regex!5226 (rule!7672 separatorToken!241)) lt!1086557) lt!1086927)))

(declare-fun b!3213706 () Bool)

(declare-fun e!2003832 () Bool)

(assert (=> b!3213706 (= e!2003832 (not lt!1086927))))

(declare-fun b!3213707 () Bool)

(assert (=> b!3213707 (= e!2003830 (not (= (head!7047 lt!1086557) (c!539812 (regex!5226 (rule!7672 separatorToken!241))))))))

(declare-fun b!3213708 () Bool)

(declare-fun res!1308256 () Bool)

(assert (=> b!3213708 (=> (not res!1308256) (not e!2003829))))

(assert (=> b!3213708 (= res!1308256 (isEmpty!20288 (tail!5217 lt!1086557)))))

(declare-fun b!3213709 () Bool)

(declare-fun res!1308252 () Bool)

(assert (=> b!3213709 (=> (not res!1308252) (not e!2003829))))

(assert (=> b!3213709 (= res!1308252 (not call!232558))))

(declare-fun b!3213710 () Bool)

(declare-fun e!2003827 () Bool)

(assert (=> b!3213710 (= e!2003828 e!2003827)))

(declare-fun res!1308255 () Bool)

(assert (=> b!3213710 (=> (not res!1308255) (not e!2003827))))

(assert (=> b!3213710 (= res!1308255 (not lt!1086927))))

(declare-fun b!3213711 () Bool)

(assert (=> b!3213711 (= e!2003831 e!2003832)))

(declare-fun c!539991 () Bool)

(assert (=> b!3213711 (= c!539991 ((_ is EmptyLang!9985) (regex!5226 (rule!7672 separatorToken!241))))))

(declare-fun b!3213712 () Bool)

(declare-fun res!1308253 () Bool)

(assert (=> b!3213712 (=> res!1308253 e!2003828)))

(assert (=> b!3213712 (= res!1308253 (not ((_ is ElementMatch!9985) (regex!5226 (rule!7672 separatorToken!241)))))))

(assert (=> b!3213712 (= e!2003832 e!2003828)))

(declare-fun b!3213713 () Bool)

(assert (=> b!3213713 (= e!2003827 e!2003830)))

(declare-fun res!1308258 () Bool)

(assert (=> b!3213713 (=> res!1308258 e!2003830)))

(assert (=> b!3213713 (= res!1308258 call!232558)))

(declare-fun b!3213714 () Bool)

(assert (=> b!3213714 (= e!2003833 (nullable!3400 (regex!5226 (rule!7672 separatorToken!241))))))

(declare-fun b!3213715 () Bool)

(assert (=> b!3213715 (= e!2003831 (= lt!1086927 call!232558))))

(assert (= (and d!881232 c!539992) b!3213714))

(assert (= (and d!881232 (not c!539992)) b!3213705))

(assert (= (and d!881232 c!539990) b!3213715))

(assert (= (and d!881232 (not c!539990)) b!3213711))

(assert (= (and b!3213711 c!539991) b!3213706))

(assert (= (and b!3213711 (not c!539991)) b!3213712))

(assert (= (and b!3213712 (not res!1308253)) b!3213703))

(assert (= (and b!3213703 res!1308254) b!3213709))

(assert (= (and b!3213709 res!1308252) b!3213708))

(assert (= (and b!3213708 res!1308256) b!3213704))

(assert (= (and b!3213703 (not res!1308259)) b!3213710))

(assert (= (and b!3213710 res!1308255) b!3213713))

(assert (= (and b!3213713 (not res!1308258)) b!3213702))

(assert (= (and b!3213702 (not res!1308257)) b!3213707))

(assert (= (or b!3213715 b!3213713 b!3213709) bm!232553))

(declare-fun m!3484967 () Bool)

(assert (=> b!3213714 m!3484967))

(assert (=> b!3213702 m!3484943))

(assert (=> b!3213702 m!3484943))

(assert (=> b!3213702 m!3484945))

(assert (=> b!3213704 m!3483347))

(assert (=> b!3213707 m!3483347))

(assert (=> b!3213705 m!3483347))

(assert (=> b!3213705 m!3483347))

(declare-fun m!3484969 () Bool)

(assert (=> b!3213705 m!3484969))

(assert (=> b!3213705 m!3484943))

(assert (=> b!3213705 m!3484969))

(assert (=> b!3213705 m!3484943))

(declare-fun m!3484971 () Bool)

(assert (=> b!3213705 m!3484971))

(assert (=> d!881232 m!3484951))

(assert (=> d!881232 m!3484965))

(assert (=> bm!232553 m!3484951))

(assert (=> b!3213708 m!3484943))

(assert (=> b!3213708 m!3484943))

(assert (=> b!3213708 m!3484945))

(assert (=> b!3212824 d!881232))

(declare-fun d!881234 () Bool)

(assert (=> d!881234 (= (inv!49048 (tag!5754 (rule!7672 (h!41609 tokens!494)))) (= (mod (str.len (value!169400 (tag!5754 (rule!7672 (h!41609 tokens!494))))) 2) 0))))

(assert (=> b!3212804 d!881234))

(declare-fun d!881236 () Bool)

(declare-fun res!1308260 () Bool)

(declare-fun e!2003834 () Bool)

(assert (=> d!881236 (=> (not res!1308260) (not e!2003834))))

(assert (=> d!881236 (= res!1308260 (semiInverseModEq!2157 (toChars!7173 (transformation!5226 (rule!7672 (h!41609 tokens!494)))) (toValue!7314 (transformation!5226 (rule!7672 (h!41609 tokens!494))))))))

(assert (=> d!881236 (= (inv!49051 (transformation!5226 (rule!7672 (h!41609 tokens!494)))) e!2003834)))

(declare-fun b!3213716 () Bool)

(assert (=> b!3213716 (= e!2003834 (equivClasses!2056 (toChars!7173 (transformation!5226 (rule!7672 (h!41609 tokens!494)))) (toValue!7314 (transformation!5226 (rule!7672 (h!41609 tokens!494))))))))

(assert (= (and d!881236 res!1308260) b!3213716))

(declare-fun m!3484973 () Bool)

(assert (=> d!881236 m!3484973))

(declare-fun m!3484975 () Bool)

(assert (=> b!3213716 m!3484975))

(assert (=> b!3212804 d!881236))

(declare-fun b!3213727 () Bool)

(declare-fun res!1308263 () Bool)

(declare-fun e!2003842 () Bool)

(assert (=> b!3213727 (=> res!1308263 e!2003842)))

(assert (=> b!3213727 (= res!1308263 (not ((_ is IntegerValue!16370) (value!169401 separatorToken!241))))))

(declare-fun e!2003841 () Bool)

(assert (=> b!3213727 (= e!2003841 e!2003842)))

(declare-fun b!3213728 () Bool)

(declare-fun inv!17 (TokenValue!5456) Bool)

(assert (=> b!3213728 (= e!2003841 (inv!17 (value!169401 separatorToken!241)))))

(declare-fun b!3213729 () Bool)

(declare-fun inv!15 (TokenValue!5456) Bool)

(assert (=> b!3213729 (= e!2003842 (inv!15 (value!169401 separatorToken!241)))))

(declare-fun d!881238 () Bool)

(declare-fun c!539998 () Bool)

(assert (=> d!881238 (= c!539998 ((_ is IntegerValue!16368) (value!169401 separatorToken!241)))))

(declare-fun e!2003843 () Bool)

(assert (=> d!881238 (= (inv!21 (value!169401 separatorToken!241)) e!2003843)))

(declare-fun b!3213730 () Bool)

(assert (=> b!3213730 (= e!2003843 e!2003841)))

(declare-fun c!539997 () Bool)

(assert (=> b!3213730 (= c!539997 ((_ is IntegerValue!16369) (value!169401 separatorToken!241)))))

(declare-fun b!3213731 () Bool)

(declare-fun inv!16 (TokenValue!5456) Bool)

(assert (=> b!3213731 (= e!2003843 (inv!16 (value!169401 separatorToken!241)))))

(assert (= (and d!881238 c!539998) b!3213731))

(assert (= (and d!881238 (not c!539998)) b!3213730))

(assert (= (and b!3213730 c!539997) b!3213728))

(assert (= (and b!3213730 (not c!539997)) b!3213727))

(assert (= (and b!3213727 (not res!1308263)) b!3213729))

(declare-fun m!3484977 () Bool)

(assert (=> b!3213728 m!3484977))

(declare-fun m!3484979 () Bool)

(assert (=> b!3213729 m!3484979))

(declare-fun m!3484981 () Bool)

(assert (=> b!3213731 m!3484981))

(assert (=> b!3212802 d!881238))

(declare-fun b!3213732 () Bool)

(declare-fun res!1308264 () Bool)

(declare-fun e!2003845 () Bool)

(assert (=> b!3213732 (=> res!1308264 e!2003845)))

(assert (=> b!3213732 (= res!1308264 (not ((_ is IntegerValue!16370) (value!169401 (h!41609 tokens!494)))))))

(declare-fun e!2003844 () Bool)

(assert (=> b!3213732 (= e!2003844 e!2003845)))

(declare-fun b!3213733 () Bool)

(assert (=> b!3213733 (= e!2003844 (inv!17 (value!169401 (h!41609 tokens!494))))))

(declare-fun b!3213734 () Bool)

(assert (=> b!3213734 (= e!2003845 (inv!15 (value!169401 (h!41609 tokens!494))))))

(declare-fun d!881240 () Bool)

(declare-fun c!540000 () Bool)

(assert (=> d!881240 (= c!540000 ((_ is IntegerValue!16368) (value!169401 (h!41609 tokens!494))))))

(declare-fun e!2003846 () Bool)

(assert (=> d!881240 (= (inv!21 (value!169401 (h!41609 tokens!494))) e!2003846)))

(declare-fun b!3213735 () Bool)

(assert (=> b!3213735 (= e!2003846 e!2003844)))

(declare-fun c!539999 () Bool)

(assert (=> b!3213735 (= c!539999 ((_ is IntegerValue!16369) (value!169401 (h!41609 tokens!494))))))

(declare-fun b!3213736 () Bool)

(assert (=> b!3213736 (= e!2003846 (inv!16 (value!169401 (h!41609 tokens!494))))))

(assert (= (and d!881240 c!540000) b!3213736))

(assert (= (and d!881240 (not c!540000)) b!3213735))

(assert (= (and b!3213735 c!539999) b!3213733))

(assert (= (and b!3213735 (not c!539999)) b!3213732))

(assert (= (and b!3213732 (not res!1308264)) b!3213734))

(declare-fun m!3484983 () Bool)

(assert (=> b!3213733 m!3484983))

(declare-fun m!3484985 () Bool)

(assert (=> b!3213734 m!3484985))

(declare-fun m!3484987 () Bool)

(assert (=> b!3213736 m!3484987))

(assert (=> b!3212825 d!881240))

(declare-fun d!881242 () Bool)

(assert (=> d!881242 (= (list!12875 lt!1086563) (list!12879 (c!539813 lt!1086563)))))

(declare-fun bs!541935 () Bool)

(assert (= bs!541935 d!881242))

(declare-fun m!3484989 () Bool)

(assert (=> bs!541935 m!3484989))

(assert (=> b!3212803 d!881242))

(declare-fun d!881244 () Bool)

(declare-fun lt!1086928 () BalanceConc!21268)

(assert (=> d!881244 (= (list!12875 lt!1086928) (printList!1365 thiss!18206 (list!12877 lt!1086550)))))

(assert (=> d!881244 (= lt!1086928 (printTailRec!1312 thiss!18206 lt!1086550 0 (BalanceConc!21269 Empty!10827)))))

(assert (=> d!881244 (= (print!1880 thiss!18206 lt!1086550) lt!1086928)))

(declare-fun bs!541936 () Bool)

(assert (= bs!541936 d!881244))

(declare-fun m!3484991 () Bool)

(assert (=> bs!541936 m!3484991))

(declare-fun m!3484993 () Bool)

(assert (=> bs!541936 m!3484993))

(assert (=> bs!541936 m!3484993))

(declare-fun m!3484995 () Bool)

(assert (=> bs!541936 m!3484995))

(assert (=> bs!541936 m!3483427))

(assert (=> b!3212803 d!881244))

(declare-fun d!881246 () Bool)

(declare-fun c!540003 () Bool)

(assert (=> d!881246 (= c!540003 ((_ is Cons!36189) (Cons!36189 (h!41609 tokens!494) Nil!36189)))))

(declare-fun e!2003849 () List!36311)

(assert (=> d!881246 (= (printList!1365 thiss!18206 (Cons!36189 (h!41609 tokens!494) Nil!36189)) e!2003849)))

(declare-fun b!3213741 () Bool)

(assert (=> b!3213741 (= e!2003849 (++!8688 (list!12875 (charsOf!3242 (h!41609 (Cons!36189 (h!41609 tokens!494) Nil!36189)))) (printList!1365 thiss!18206 (t!239158 (Cons!36189 (h!41609 tokens!494) Nil!36189)))))))

(declare-fun b!3213742 () Bool)

(assert (=> b!3213742 (= e!2003849 Nil!36187)))

(assert (= (and d!881246 c!540003) b!3213741))

(assert (= (and d!881246 (not c!540003)) b!3213742))

(declare-fun m!3484997 () Bool)

(assert (=> b!3213741 m!3484997))

(assert (=> b!3213741 m!3484997))

(declare-fun m!3484999 () Bool)

(assert (=> b!3213741 m!3484999))

(declare-fun m!3485001 () Bool)

(assert (=> b!3213741 m!3485001))

(assert (=> b!3213741 m!3484999))

(assert (=> b!3213741 m!3485001))

(declare-fun m!3485003 () Bool)

(assert (=> b!3213741 m!3485003))

(assert (=> b!3212803 d!881246))

(declare-fun d!881248 () Bool)

(declare-fun e!2003850 () Bool)

(assert (=> d!881248 e!2003850))

(declare-fun res!1308265 () Bool)

(assert (=> d!881248 (=> (not res!1308265) (not e!2003850))))

(declare-fun lt!1086929 () BalanceConc!21270)

(assert (=> d!881248 (= res!1308265 (= (list!12877 lt!1086929) (Cons!36189 (h!41609 tokens!494) Nil!36189)))))

(assert (=> d!881248 (= lt!1086929 (singleton!995 (h!41609 tokens!494)))))

(assert (=> d!881248 (= (singletonSeq!2322 (h!41609 tokens!494)) lt!1086929)))

(declare-fun b!3213743 () Bool)

(assert (=> b!3213743 (= e!2003850 (isBalanced!3220 (c!539814 lt!1086929)))))

(assert (= (and d!881248 res!1308265) b!3213743))

(declare-fun m!3485005 () Bool)

(assert (=> d!881248 m!3485005))

(declare-fun m!3485007 () Bool)

(assert (=> d!881248 m!3485007))

(declare-fun m!3485009 () Bool)

(assert (=> b!3213743 m!3485009))

(assert (=> b!3212803 d!881248))

(declare-fun d!881250 () Bool)

(declare-fun lt!1086931 () BalanceConc!21268)

(assert (=> d!881250 (= (list!12875 lt!1086931) (printListTailRec!562 thiss!18206 (dropList!1079 lt!1086550 0) (list!12875 (BalanceConc!21269 Empty!10827))))))

(declare-fun e!2003851 () BalanceConc!21268)

(assert (=> d!881250 (= lt!1086931 e!2003851)))

(declare-fun c!540004 () Bool)

(assert (=> d!881250 (= c!540004 (>= 0 (size!27275 lt!1086550)))))

(declare-fun e!2003852 () Bool)

(assert (=> d!881250 e!2003852))

(declare-fun res!1308266 () Bool)

(assert (=> d!881250 (=> (not res!1308266) (not e!2003852))))

(assert (=> d!881250 (= res!1308266 (>= 0 0))))

(assert (=> d!881250 (= (printTailRec!1312 thiss!18206 lt!1086550 0 (BalanceConc!21269 Empty!10827)) lt!1086931)))

(declare-fun b!3213744 () Bool)

(assert (=> b!3213744 (= e!2003852 (<= 0 (size!27275 lt!1086550)))))

(declare-fun b!3213745 () Bool)

(assert (=> b!3213745 (= e!2003851 (BalanceConc!21269 Empty!10827))))

(declare-fun b!3213746 () Bool)

(assert (=> b!3213746 (= e!2003851 (printTailRec!1312 thiss!18206 lt!1086550 (+ 0 1) (++!8689 (BalanceConc!21269 Empty!10827) (charsOf!3242 (apply!8207 lt!1086550 0)))))))

(declare-fun lt!1086932 () List!36313)

(assert (=> b!3213746 (= lt!1086932 (list!12877 lt!1086550))))

(declare-fun lt!1086933 () Unit!50676)

(assert (=> b!3213746 (= lt!1086933 (lemmaDropApply!1038 lt!1086932 0))))

(assert (=> b!3213746 (= (head!7048 (drop!1862 lt!1086932 0)) (apply!8209 lt!1086932 0))))

(declare-fun lt!1086936 () Unit!50676)

(assert (=> b!3213746 (= lt!1086936 lt!1086933)))

(declare-fun lt!1086935 () List!36313)

(assert (=> b!3213746 (= lt!1086935 (list!12877 lt!1086550))))

(declare-fun lt!1086930 () Unit!50676)

(assert (=> b!3213746 (= lt!1086930 (lemmaDropTail!922 lt!1086935 0))))

(assert (=> b!3213746 (= (tail!5215 (drop!1862 lt!1086935 0)) (drop!1862 lt!1086935 (+ 0 1)))))

(declare-fun lt!1086934 () Unit!50676)

(assert (=> b!3213746 (= lt!1086934 lt!1086930)))

(assert (= (and d!881250 res!1308266) b!3213744))

(assert (= (and d!881250 c!540004) b!3213745))

(assert (= (and d!881250 (not c!540004)) b!3213746))

(declare-fun m!3485011 () Bool)

(assert (=> d!881250 m!3485011))

(assert (=> d!881250 m!3485011))

(assert (=> d!881250 m!3483815))

(declare-fun m!3485013 () Bool)

(assert (=> d!881250 m!3485013))

(declare-fun m!3485015 () Bool)

(assert (=> d!881250 m!3485015))

(declare-fun m!3485017 () Bool)

(assert (=> d!881250 m!3485017))

(assert (=> d!881250 m!3483815))

(assert (=> b!3213744 m!3485015))

(declare-fun m!3485019 () Bool)

(assert (=> b!3213746 m!3485019))

(declare-fun m!3485021 () Bool)

(assert (=> b!3213746 m!3485021))

(declare-fun m!3485023 () Bool)

(assert (=> b!3213746 m!3485023))

(declare-fun m!3485025 () Bool)

(assert (=> b!3213746 m!3485025))

(declare-fun m!3485027 () Bool)

(assert (=> b!3213746 m!3485027))

(declare-fun m!3485029 () Bool)

(assert (=> b!3213746 m!3485029))

(declare-fun m!3485031 () Bool)

(assert (=> b!3213746 m!3485031))

(declare-fun m!3485033 () Bool)

(assert (=> b!3213746 m!3485033))

(declare-fun m!3485035 () Bool)

(assert (=> b!3213746 m!3485035))

(assert (=> b!3213746 m!3485029))

(assert (=> b!3213746 m!3485035))

(assert (=> b!3213746 m!3485019))

(assert (=> b!3213746 m!3485031))

(declare-fun m!3485037 () Bool)

(assert (=> b!3213746 m!3485037))

(assert (=> b!3213746 m!3485023))

(assert (=> b!3213746 m!3484993))

(declare-fun m!3485039 () Bool)

(assert (=> b!3213746 m!3485039))

(declare-fun m!3485041 () Bool)

(assert (=> b!3213746 m!3485041))

(assert (=> b!3212803 d!881250))

(declare-fun b!3213760 () Bool)

(declare-fun b_free!85477 () Bool)

(declare-fun b_next!86181 () Bool)

(assert (=> b!3213760 (= b_free!85477 (not b_next!86181))))

(declare-fun t!239254 () Bool)

(declare-fun tb!158239 () Bool)

(assert (=> (and b!3213760 (= (toValue!7314 (transformation!5226 (rule!7672 (h!41609 (t!239158 tokens!494))))) (toValue!7314 (transformation!5226 (rule!7672 (h!41609 tokens!494))))) t!239254) tb!158239))

(declare-fun result!200626 () Bool)

(assert (= result!200626 result!200548))

(assert (=> d!880960 t!239254))

(declare-fun t!239256 () Bool)

(declare-fun tb!158241 () Bool)

(assert (=> (and b!3213760 (= (toValue!7314 (transformation!5226 (rule!7672 (h!41609 (t!239158 tokens!494))))) (toValue!7314 (transformation!5226 (rule!7672 (h!41609 (t!239158 tokens!494)))))) t!239256) tb!158241))

(declare-fun result!200628 () Bool)

(assert (= result!200628 result!200556))

(assert (=> d!881024 t!239256))

(declare-fun b_and!214335 () Bool)

(declare-fun tp!1013775 () Bool)

(assert (=> b!3213760 (= tp!1013775 (and (=> t!239254 result!200626) (=> t!239256 result!200628) b_and!214335))))

(declare-fun b_free!85479 () Bool)

(declare-fun b_next!86183 () Bool)

(assert (=> b!3213760 (= b_free!85479 (not b_next!86183))))

(declare-fun t!239258 () Bool)

(declare-fun tb!158243 () Bool)

(assert (=> (and b!3213760 (= (toChars!7173 (transformation!5226 (rule!7672 (h!41609 (t!239158 tokens!494))))) (toChars!7173 (transformation!5226 (rule!7672 separatorToken!241)))) t!239258) tb!158243))

(declare-fun result!200630 () Bool)

(assert (= result!200630 result!200578))

(assert (=> d!881094 t!239258))

(declare-fun t!239260 () Bool)

(declare-fun tb!158245 () Bool)

(assert (=> (and b!3213760 (= (toChars!7173 (transformation!5226 (rule!7672 (h!41609 (t!239158 tokens!494))))) (toChars!7173 (transformation!5226 (rule!7672 (h!41609 tokens!494))))) t!239260) tb!158245))

(declare-fun result!200632 () Bool)

(assert (= result!200632 result!200570))

(assert (=> b!3213515 t!239260))

(assert (=> b!3213544 t!239258))

(declare-fun t!239262 () Bool)

(declare-fun tb!158247 () Bool)

(assert (=> (and b!3213760 (= (toChars!7173 (transformation!5226 (rule!7672 (h!41609 (t!239158 tokens!494))))) (toChars!7173 (transformation!5226 (rule!7672 (h!41609 (t!239158 tokens!494)))))) t!239262) tb!158247))

(declare-fun result!200634 () Bool)

(assert (= result!200634 result!200584))

(assert (=> d!881108 t!239262))

(assert (=> d!881046 t!239260))

(declare-fun tp!1013777 () Bool)

(declare-fun b_and!214337 () Bool)

(assert (=> b!3213760 (= tp!1013777 (and (=> t!239260 result!200632) (=> t!239258 result!200630) (=> t!239262 result!200634) b_and!214337))))

(declare-fun e!2003868 () Bool)

(assert (=> b!3212807 (= tp!1013686 e!2003868)))

(declare-fun b!3213758 () Bool)

(declare-fun e!2003866 () Bool)

(declare-fun e!2003869 () Bool)

(declare-fun tp!1013776 () Bool)

(assert (=> b!3213758 (= e!2003866 (and (inv!21 (value!169401 (h!41609 (t!239158 tokens!494)))) e!2003869 tp!1013776))))

(declare-fun tp!1013773 () Bool)

(declare-fun b!3213757 () Bool)

(assert (=> b!3213757 (= e!2003868 (and (inv!49052 (h!41609 (t!239158 tokens!494))) e!2003866 tp!1013773))))

(declare-fun e!2003867 () Bool)

(assert (=> b!3213760 (= e!2003867 (and tp!1013775 tp!1013777))))

(declare-fun tp!1013774 () Bool)

(declare-fun b!3213759 () Bool)

(assert (=> b!3213759 (= e!2003869 (and tp!1013774 (inv!49048 (tag!5754 (rule!7672 (h!41609 (t!239158 tokens!494))))) (inv!49051 (transformation!5226 (rule!7672 (h!41609 (t!239158 tokens!494))))) e!2003867))))

(assert (= b!3213759 b!3213760))

(assert (= b!3213758 b!3213759))

(assert (= b!3213757 b!3213758))

(assert (= (and b!3212807 ((_ is Cons!36189) (t!239158 tokens!494))) b!3213757))

(declare-fun m!3485043 () Bool)

(assert (=> b!3213758 m!3485043))

(declare-fun m!3485045 () Bool)

(assert (=> b!3213757 m!3485045))

(declare-fun m!3485047 () Bool)

(assert (=> b!3213759 m!3485047))

(declare-fun m!3485049 () Bool)

(assert (=> b!3213759 m!3485049))

(declare-fun b!3213763 () Bool)

(declare-fun e!2003873 () Bool)

(assert (=> b!3213763 (= e!2003873 true)))

(declare-fun b!3213762 () Bool)

(declare-fun e!2003872 () Bool)

(assert (=> b!3213762 (= e!2003872 e!2003873)))

(declare-fun b!3213761 () Bool)

(declare-fun e!2003871 () Bool)

(assert (=> b!3213761 (= e!2003871 e!2003872)))

(assert (=> b!3212836 e!2003871))

(assert (= b!3213762 b!3213763))

(assert (= b!3213761 b!3213762))

(assert (= (and b!3212836 ((_ is Cons!36188) (t!239157 rules!2135))) b!3213761))

(assert (=> b!3213763 (< (dynLambda!14623 order!18493 (toValue!7314 (transformation!5226 (h!41608 (t!239157 rules!2135))))) (dynLambda!14624 order!18495 lambda!117555))))

(assert (=> b!3213763 (< (dynLambda!14625 order!18497 (toChars!7173 (transformation!5226 (h!41608 (t!239157 rules!2135))))) (dynLambda!14624 order!18495 lambda!117555))))

(declare-fun e!2003876 () Bool)

(assert (=> b!3212795 (= tp!1013684 e!2003876)))

(declare-fun b!3213774 () Bool)

(declare-fun tp_is_empty!17301 () Bool)

(assert (=> b!3213774 (= e!2003876 tp_is_empty!17301)))

(declare-fun b!3213776 () Bool)

(declare-fun tp!1013790 () Bool)

(assert (=> b!3213776 (= e!2003876 tp!1013790)))

(declare-fun b!3213775 () Bool)

(declare-fun tp!1013792 () Bool)

(declare-fun tp!1013789 () Bool)

(assert (=> b!3213775 (= e!2003876 (and tp!1013792 tp!1013789))))

(declare-fun b!3213777 () Bool)

(declare-fun tp!1013788 () Bool)

(declare-fun tp!1013791 () Bool)

(assert (=> b!3213777 (= e!2003876 (and tp!1013788 tp!1013791))))

(assert (= (and b!3212795 ((_ is ElementMatch!9985) (regex!5226 (rule!7672 separatorToken!241)))) b!3213774))

(assert (= (and b!3212795 ((_ is Concat!15441) (regex!5226 (rule!7672 separatorToken!241)))) b!3213775))

(assert (= (and b!3212795 ((_ is Star!9985) (regex!5226 (rule!7672 separatorToken!241)))) b!3213776))

(assert (= (and b!3212795 ((_ is Union!9985) (regex!5226 (rule!7672 separatorToken!241)))) b!3213777))

(declare-fun e!2003877 () Bool)

(assert (=> b!3212808 (= tp!1013687 e!2003877)))

(declare-fun b!3213778 () Bool)

(assert (=> b!3213778 (= e!2003877 tp_is_empty!17301)))

(declare-fun b!3213780 () Bool)

(declare-fun tp!1013795 () Bool)

(assert (=> b!3213780 (= e!2003877 tp!1013795)))

(declare-fun b!3213779 () Bool)

(declare-fun tp!1013797 () Bool)

(declare-fun tp!1013794 () Bool)

(assert (=> b!3213779 (= e!2003877 (and tp!1013797 tp!1013794))))

(declare-fun b!3213781 () Bool)

(declare-fun tp!1013793 () Bool)

(declare-fun tp!1013796 () Bool)

(assert (=> b!3213781 (= e!2003877 (and tp!1013793 tp!1013796))))

(assert (= (and b!3212808 ((_ is ElementMatch!9985) (regex!5226 (h!41608 rules!2135)))) b!3213778))

(assert (= (and b!3212808 ((_ is Concat!15441) (regex!5226 (h!41608 rules!2135)))) b!3213779))

(assert (= (and b!3212808 ((_ is Star!9985) (regex!5226 (h!41608 rules!2135)))) b!3213780))

(assert (= (and b!3212808 ((_ is Union!9985) (regex!5226 (h!41608 rules!2135)))) b!3213781))

(declare-fun b!3213792 () Bool)

(declare-fun b_free!85481 () Bool)

(declare-fun b_next!86185 () Bool)

(assert (=> b!3213792 (= b_free!85481 (not b_next!86185))))

(declare-fun t!239264 () Bool)

(declare-fun tb!158249 () Bool)

(assert (=> (and b!3213792 (= (toValue!7314 (transformation!5226 (h!41608 (t!239157 rules!2135)))) (toValue!7314 (transformation!5226 (rule!7672 (h!41609 tokens!494))))) t!239264) tb!158249))

(declare-fun result!200640 () Bool)

(assert (= result!200640 result!200548))

(assert (=> d!880960 t!239264))

(declare-fun tb!158251 () Bool)

(declare-fun t!239266 () Bool)

(assert (=> (and b!3213792 (= (toValue!7314 (transformation!5226 (h!41608 (t!239157 rules!2135)))) (toValue!7314 (transformation!5226 (rule!7672 (h!41609 (t!239158 tokens!494)))))) t!239266) tb!158251))

(declare-fun result!200642 () Bool)

(assert (= result!200642 result!200556))

(assert (=> d!881024 t!239266))

(declare-fun b_and!214339 () Bool)

(declare-fun tp!1013808 () Bool)

(assert (=> b!3213792 (= tp!1013808 (and (=> t!239264 result!200640) (=> t!239266 result!200642) b_and!214339))))

(declare-fun b_free!85483 () Bool)

(declare-fun b_next!86187 () Bool)

(assert (=> b!3213792 (= b_free!85483 (not b_next!86187))))

(declare-fun t!239268 () Bool)

(declare-fun tb!158253 () Bool)

(assert (=> (and b!3213792 (= (toChars!7173 (transformation!5226 (h!41608 (t!239157 rules!2135)))) (toChars!7173 (transformation!5226 (rule!7672 separatorToken!241)))) t!239268) tb!158253))

(declare-fun result!200644 () Bool)

(assert (= result!200644 result!200578))

(assert (=> d!881094 t!239268))

(declare-fun t!239270 () Bool)

(declare-fun tb!158255 () Bool)

(assert (=> (and b!3213792 (= (toChars!7173 (transformation!5226 (h!41608 (t!239157 rules!2135)))) (toChars!7173 (transformation!5226 (rule!7672 (h!41609 tokens!494))))) t!239270) tb!158255))

(declare-fun result!200646 () Bool)

(assert (= result!200646 result!200570))

(assert (=> b!3213515 t!239270))

(assert (=> b!3213544 t!239268))

(declare-fun tb!158257 () Bool)

(declare-fun t!239272 () Bool)

(assert (=> (and b!3213792 (= (toChars!7173 (transformation!5226 (h!41608 (t!239157 rules!2135)))) (toChars!7173 (transformation!5226 (rule!7672 (h!41609 (t!239158 tokens!494)))))) t!239272) tb!158257))

(declare-fun result!200648 () Bool)

(assert (= result!200648 result!200584))

(assert (=> d!881108 t!239272))

(assert (=> d!881046 t!239270))

(declare-fun b_and!214341 () Bool)

(declare-fun tp!1013809 () Bool)

(assert (=> b!3213792 (= tp!1013809 (and (=> t!239268 result!200644) (=> t!239270 result!200646) (=> t!239272 result!200648) b_and!214341))))

(declare-fun e!2003889 () Bool)

(assert (=> b!3213792 (= e!2003889 (and tp!1013808 tp!1013809))))

(declare-fun tp!1013806 () Bool)

(declare-fun b!3213791 () Bool)

(declare-fun e!2003886 () Bool)

(assert (=> b!3213791 (= e!2003886 (and tp!1013806 (inv!49048 (tag!5754 (h!41608 (t!239157 rules!2135)))) (inv!49051 (transformation!5226 (h!41608 (t!239157 rules!2135)))) e!2003889))))

(declare-fun b!3213790 () Bool)

(declare-fun e!2003887 () Bool)

(declare-fun tp!1013807 () Bool)

(assert (=> b!3213790 (= e!2003887 (and e!2003886 tp!1013807))))

(assert (=> b!3212801 (= tp!1013695 e!2003887)))

(assert (= b!3213791 b!3213792))

(assert (= b!3213790 b!3213791))

(assert (= (and b!3212801 ((_ is Cons!36188) (t!239157 rules!2135))) b!3213790))

(declare-fun m!3485051 () Bool)

(assert (=> b!3213791 m!3485051))

(declare-fun m!3485053 () Bool)

(assert (=> b!3213791 m!3485053))

(declare-fun e!2003890 () Bool)

(assert (=> b!3212804 (= tp!1013688 e!2003890)))

(declare-fun b!3213793 () Bool)

(assert (=> b!3213793 (= e!2003890 tp_is_empty!17301)))

(declare-fun b!3213795 () Bool)

(declare-fun tp!1013812 () Bool)

(assert (=> b!3213795 (= e!2003890 tp!1013812)))

(declare-fun b!3213794 () Bool)

(declare-fun tp!1013814 () Bool)

(declare-fun tp!1013811 () Bool)

(assert (=> b!3213794 (= e!2003890 (and tp!1013814 tp!1013811))))

(declare-fun b!3213796 () Bool)

(declare-fun tp!1013810 () Bool)

(declare-fun tp!1013813 () Bool)

(assert (=> b!3213796 (= e!2003890 (and tp!1013810 tp!1013813))))

(assert (= (and b!3212804 ((_ is ElementMatch!9985) (regex!5226 (rule!7672 (h!41609 tokens!494))))) b!3213793))

(assert (= (and b!3212804 ((_ is Concat!15441) (regex!5226 (rule!7672 (h!41609 tokens!494))))) b!3213794))

(assert (= (and b!3212804 ((_ is Star!9985) (regex!5226 (rule!7672 (h!41609 tokens!494))))) b!3213795))

(assert (= (and b!3212804 ((_ is Union!9985) (regex!5226 (rule!7672 (h!41609 tokens!494))))) b!3213796))

(declare-fun b!3213801 () Bool)

(declare-fun e!2003893 () Bool)

(declare-fun tp!1013817 () Bool)

(assert (=> b!3213801 (= e!2003893 (and tp_is_empty!17301 tp!1013817))))

(assert (=> b!3212802 (= tp!1013691 e!2003893)))

(assert (= (and b!3212802 ((_ is Cons!36187) (originalCharacters!5940 separatorToken!241))) b!3213801))

(declare-fun b!3213802 () Bool)

(declare-fun e!2003894 () Bool)

(declare-fun tp!1013818 () Bool)

(assert (=> b!3213802 (= e!2003894 (and tp_is_empty!17301 tp!1013818))))

(assert (=> b!3212825 (= tp!1013685 e!2003894)))

(assert (= (and b!3212825 ((_ is Cons!36187) (originalCharacters!5940 (h!41609 tokens!494)))) b!3213802))

(declare-fun b_lambda!88189 () Bool)

(assert (= b_lambda!88151 (or b!3212794 b_lambda!88189)))

(declare-fun bs!541937 () Bool)

(declare-fun d!881252 () Bool)

(assert (= bs!541937 (and d!881252 b!3212794)))

(assert (=> bs!541937 (= (dynLambda!14628 lambda!117554 (h!41609 tokens!494)) (not (isSeparator!5226 (rule!7672 (h!41609 tokens!494)))))))

(assert (=> d!881086 d!881252))

(declare-fun b_lambda!88191 () Bool)

(assert (= b_lambda!88139 (or b!3212817 b_lambda!88191)))

(declare-fun bs!541938 () Bool)

(declare-fun d!881254 () Bool)

(assert (= bs!541938 (and d!881254 b!3212817)))

(assert (=> bs!541938 (= (dynLambda!14628 lambda!117555 (h!41609 (t!239158 tokens!494))) (rulesProduceIndividualToken!2307 thiss!18206 rules!2135 (h!41609 (t!239158 tokens!494))))))

(assert (=> bs!541938 m!3483325))

(assert (=> d!880966 d!881254))

(declare-fun b_lambda!88193 () Bool)

(assert (= b_lambda!88133 (or b!3212794 b_lambda!88193)))

(assert (=> b!3212954 d!881252))

(declare-fun b_lambda!88195 () Bool)

(assert (= b_lambda!88149 (or b!3212794 b_lambda!88195)))

(declare-fun bs!541939 () Bool)

(declare-fun d!881256 () Bool)

(assert (= bs!541939 (and d!881256 b!3212794)))

(assert (=> bs!541939 (= (dynLambda!14628 lambda!117554 (h!41609 (t!239158 tokens!494))) (not (isSeparator!5226 (rule!7672 (h!41609 (t!239158 tokens!494))))))))

(assert (=> d!881080 d!881256))

(declare-fun b_lambda!88197 () Bool)

(assert (= b_lambda!88155 (or (and b!3212814 b_free!85467 (= (toChars!7173 (transformation!5226 (rule!7672 (h!41609 tokens!494)))) (toChars!7173 (transformation!5226 (rule!7672 (h!41609 (t!239158 tokens!494))))))) (and b!3212813 b_free!85463 (= (toChars!7173 (transformation!5226 (rule!7672 separatorToken!241))) (toChars!7173 (transformation!5226 (rule!7672 (h!41609 (t!239158 tokens!494))))))) (and b!3213760 b_free!85479) (and b!3212809 b_free!85459 (= (toChars!7173 (transformation!5226 (h!41608 rules!2135))) (toChars!7173 (transformation!5226 (rule!7672 (h!41609 (t!239158 tokens!494))))))) (and b!3213792 b_free!85483 (= (toChars!7173 (transformation!5226 (h!41608 (t!239157 rules!2135)))) (toChars!7173 (transformation!5226 (rule!7672 (h!41609 (t!239158 tokens!494))))))) b_lambda!88197)))

(declare-fun b_lambda!88199 () Bool)

(assert (= b_lambda!88137 (or (and b!3213792 b_free!85481 (= (toValue!7314 (transformation!5226 (h!41608 (t!239157 rules!2135)))) (toValue!7314 (transformation!5226 (rule!7672 (h!41609 tokens!494)))))) (and b!3212813 b_free!85461 (= (toValue!7314 (transformation!5226 (rule!7672 separatorToken!241))) (toValue!7314 (transformation!5226 (rule!7672 (h!41609 tokens!494)))))) (and b!3212809 b_free!85457 (= (toValue!7314 (transformation!5226 (h!41608 rules!2135))) (toValue!7314 (transformation!5226 (rule!7672 (h!41609 tokens!494)))))) (and b!3212814 b_free!85465) (and b!3213760 b_free!85477 (= (toValue!7314 (transformation!5226 (rule!7672 (h!41609 (t!239158 tokens!494))))) (toValue!7314 (transformation!5226 (rule!7672 (h!41609 tokens!494)))))) b_lambda!88199)))

(declare-fun b_lambda!88201 () Bool)

(assert (= b_lambda!88141 (or (and b!3212809 b_free!85457 (= (toValue!7314 (transformation!5226 (h!41608 rules!2135))) (toValue!7314 (transformation!5226 (rule!7672 (h!41609 (t!239158 tokens!494))))))) (and b!3212814 b_free!85465 (= (toValue!7314 (transformation!5226 (rule!7672 (h!41609 tokens!494)))) (toValue!7314 (transformation!5226 (rule!7672 (h!41609 (t!239158 tokens!494))))))) (and b!3213760 b_free!85477) (and b!3213792 b_free!85481 (= (toValue!7314 (transformation!5226 (h!41608 (t!239157 rules!2135)))) (toValue!7314 (transformation!5226 (rule!7672 (h!41609 (t!239158 tokens!494))))))) (and b!3212813 b_free!85461 (= (toValue!7314 (transformation!5226 (rule!7672 separatorToken!241))) (toValue!7314 (transformation!5226 (rule!7672 (h!41609 (t!239158 tokens!494))))))) b_lambda!88201)))

(declare-fun b_lambda!88203 () Bool)

(assert (= b_lambda!88153 (or (and b!3212814 b_free!85467 (= (toChars!7173 (transformation!5226 (rule!7672 (h!41609 tokens!494)))) (toChars!7173 (transformation!5226 (rule!7672 separatorToken!241))))) (and b!3213792 b_free!85483 (= (toChars!7173 (transformation!5226 (h!41608 (t!239157 rules!2135)))) (toChars!7173 (transformation!5226 (rule!7672 separatorToken!241))))) (and b!3212809 b_free!85459 (= (toChars!7173 (transformation!5226 (h!41608 rules!2135))) (toChars!7173 (transformation!5226 (rule!7672 separatorToken!241))))) (and b!3212813 b_free!85463) (and b!3213760 b_free!85479 (= (toChars!7173 (transformation!5226 (rule!7672 (h!41609 (t!239158 tokens!494))))) (toChars!7173 (transformation!5226 (rule!7672 separatorToken!241))))) b_lambda!88203)))

(declare-fun b_lambda!88205 () Bool)

(assert (= b_lambda!88159 (or (and b!3212814 b_free!85467) (and b!3212809 b_free!85459 (= (toChars!7173 (transformation!5226 (h!41608 rules!2135))) (toChars!7173 (transformation!5226 (rule!7672 (h!41609 tokens!494)))))) (and b!3212813 b_free!85463 (= (toChars!7173 (transformation!5226 (rule!7672 separatorToken!241))) (toChars!7173 (transformation!5226 (rule!7672 (h!41609 tokens!494)))))) (and b!3213760 b_free!85479 (= (toChars!7173 (transformation!5226 (rule!7672 (h!41609 (t!239158 tokens!494))))) (toChars!7173 (transformation!5226 (rule!7672 (h!41609 tokens!494)))))) (and b!3213792 b_free!85483 (= (toChars!7173 (transformation!5226 (h!41608 (t!239157 rules!2135)))) (toChars!7173 (transformation!5226 (rule!7672 (h!41609 tokens!494)))))) b_lambda!88205)))

(declare-fun b_lambda!88207 () Bool)

(assert (= b_lambda!88145 (or (and b!3212814 b_free!85467) (and b!3212809 b_free!85459 (= (toChars!7173 (transformation!5226 (h!41608 rules!2135))) (toChars!7173 (transformation!5226 (rule!7672 (h!41609 tokens!494)))))) (and b!3212813 b_free!85463 (= (toChars!7173 (transformation!5226 (rule!7672 separatorToken!241))) (toChars!7173 (transformation!5226 (rule!7672 (h!41609 tokens!494)))))) (and b!3213760 b_free!85479 (= (toChars!7173 (transformation!5226 (rule!7672 (h!41609 (t!239158 tokens!494))))) (toChars!7173 (transformation!5226 (rule!7672 (h!41609 tokens!494)))))) (and b!3213792 b_free!85483 (= (toChars!7173 (transformation!5226 (h!41608 (t!239157 rules!2135)))) (toChars!7173 (transformation!5226 (rule!7672 (h!41609 tokens!494)))))) b_lambda!88207)))

(declare-fun b_lambda!88209 () Bool)

(assert (= b_lambda!88161 (or (and b!3212814 b_free!85467 (= (toChars!7173 (transformation!5226 (rule!7672 (h!41609 tokens!494)))) (toChars!7173 (transformation!5226 (rule!7672 separatorToken!241))))) (and b!3213792 b_free!85483 (= (toChars!7173 (transformation!5226 (h!41608 (t!239157 rules!2135)))) (toChars!7173 (transformation!5226 (rule!7672 separatorToken!241))))) (and b!3212809 b_free!85459 (= (toChars!7173 (transformation!5226 (h!41608 rules!2135))) (toChars!7173 (transformation!5226 (rule!7672 separatorToken!241))))) (and b!3212813 b_free!85463) (and b!3213760 b_free!85479 (= (toChars!7173 (transformation!5226 (rule!7672 (h!41609 (t!239158 tokens!494))))) (toChars!7173 (transformation!5226 (rule!7672 separatorToken!241))))) b_lambda!88209)))

(check-sat (not d!881016) (not b!3213025) (not b!3213795) b_and!214339 (not d!881052) (not d!881020) (not b!3213790) (not d!881094) (not b!3213759) b_and!214281 (not bm!232533) (not bm!232544) (not d!880956) (not b!3213271) (not b!3213207) (not b!3213734) (not d!881228) (not b_lambda!88195) (not b!3213744) (not bm!232513) (not b!3213424) (not d!880958) (not b!3213096) (not d!880894) (not b!3213314) (not b!3213429) (not d!881046) (not b!3213373) (not d!880946) (not b!3213021) (not b!3213476) b_and!214323 (not d!881216) (not b_lambda!88189) (not b!3213313) (not b!3213302) (not d!881218) b_and!214279 (not d!881236) (not b_lambda!88207) (not b!3213325) (not b_next!86181) (not b!3213781) (not b!3213743) (not tb!158177) (not b!3213327) (not bm!232514) (not d!880978) (not d!880886) (not bm!232528) (not b!3213308) (not b!3213503) (not d!881156) (not d!881120) b_and!214341 (not d!881118) (not b!3213681) (not d!880986) (not b!3213196) (not b!3213701) (not b!3213741) (not b!3213758) (not d!880976) (not d!881244) (not b!3213689) (not b!3212986) b_and!214321 (not d!880992) (not b!3213334) (not d!881164) (not b!3213299) (not b_next!86161) (not bm!232536) (not b!3213544) (not b_lambda!88205) (not b!3213341) (not b!3213326) (not b!3213188) (not b!3213705) (not b!3213791) (not b!3213686) (not b!3213099) (not b!3213731) (not b!3213270) (not d!880934) (not b!3213058) (not d!881162) (not b!3213301) (not d!880988) (not b!3213516) (not b_next!86183) (not b!3213458) (not d!881116) (not bm!232539) (not b!3213757) (not d!881080) (not b!3213729) (not b!3213303) (not d!880970) (not b!3213300) (not b!3213489) b_and!214283 (not d!881060) (not d!881018) (not bm!232535) (not b!3213545) (not b!3213486) (not b_lambda!88191) (not d!881130) (not b!3213780) (not b!3213036) (not b!3213480) (not d!881086) (not b!3213210) (not d!881224) (not b!3213305) (not b!3213427) (not b!3213775) (not d!880966) (not d!881042) (not d!881004) (not b!3213374) (not b!3213474) (not d!880982) (not d!881114) (not d!881232) (not b!3212981) (not d!881054) (not d!881032) (not d!881100) (not b!3213481) (not b!3213801) (not b!3213484) (not b!3213687) (not d!881006) (not d!881110) (not b!3213684) b_and!214335 (not b!3213330) (not b!3213515) tp_is_empty!17301 (not b!3213490) (not b!3213209) (not b!3213023) (not b!3213200) (not b!3213477) (not b!3213213) (not b!3213680) (not b!3213494) (not b!3213268) (not b!3213441) (not b_lambda!88201) (not d!881092) (not b!3213497) (not b!3213430) (not b!3213375) (not d!881122) (not b!3213794) (not b!3213336) (not b!3213708) (not b!3213024) (not d!880906) (not b!3213776) (not b!3213777) (not b!3213483) (not b!3213309) (not b_next!86185) (not bm!232510) (not b!3213372) (not b!3213728) (not b!3213496) (not d!880974) (not d!880964) (not b!3213802) (not b!3213470) (not b!3213702) (not b!3213796) (not d!881036) (not b!3213761) (not tb!158195) (not bm!232507) (not b!3213193) (not b!3213541) (not b!3213468) (not bm!232552) (not d!881220) (not b!3213714) (not b!3213491) (not b_lambda!88193) (not b!3213463) (not d!881242) (not d!881026) (not b!3213459) (not b_next!86171) (not b!3213779) (not b!3213450) (not d!881248) (not b!3213736) (not b!3213704) (not b!3213329) (not bm!232511) (not b!3213360) (not d!881030) (not b!3213707) (not b_next!86163) (not b_lambda!88203) (not d!881008) (not b!3213733) (not d!880968) b_and!214337 (not b!3213436) (not b!3213455) (not d!881096) (not b!3213690) (not d!881012) (not b!3213335) (not b!3213361) (not b!3212949) (not b!3213306) (not b!3213198) (not b!3212983) (not b!3213191) (not d!881014) (not d!881002) (not d!881106) (not b!3213316) (not tb!158201) (not b!3213549) (not d!881098) (not b!3213331) (not b!3213467) (not b!3213493) (not b!3213746) (not b!3213542) (not b!3213269) (not b_next!86169) (not b!3213461) (not b!3213195) (not b_next!86165) (not b_lambda!88199) (not b!3213263) (not b!3213266) (not b!3213696) (not b!3213206) (not b!3213056) (not b!3212982) (not d!880980) b_and!214325 (not d!880908) (not b!3213488) (not d!880928) (not bm!232509) (not b!3213464) (not d!880972) (not b!3213311) (not b_next!86167) (not d!880942) (not d!880892) (not b!3213338) (not d!881108) (not b_next!86187) (not b!3213472) (not b!3213267) (not b!3213716) (not b!3213698) (not d!880962) (not tb!158207) (not b!3213485) (not b!3213037) (not b_lambda!88209) (not b_lambda!88197) (not bm!232553) (not b!3213097) (not b!3213298) (not d!881230) (not tb!158183) (not b!3213211) (not d!881112) (not b!3212955) (not b!3213328) (not b!3213264) (not bs!541938) (not b!3213332) (not b!3213426) (not d!881250))
(check-sat b_and!214339 b_and!214281 b_and!214341 b_and!214321 (not b_next!86161) (not b_next!86183) b_and!214283 b_and!214335 (not b_next!86185) (not b_next!86171) (not b_next!86169) (not b_next!86165) b_and!214325 b_and!214323 b_and!214279 (not b_next!86181) (not b_next!86163) b_and!214337 (not b_next!86167) (not b_next!86187))
(get-model)

(declare-fun d!881342 () Bool)

(declare-fun lt!1086980 () Int)

(assert (=> d!881342 (>= lt!1086980 0)))

(declare-fun e!2003978 () Int)

(assert (=> d!881342 (= lt!1086980 e!2003978)))

(declare-fun c!540053 () Bool)

(assert (=> d!881342 (= c!540053 ((_ is Nil!36187) (t!239156 lt!1086561)))))

(assert (=> d!881342 (= (size!27274 (t!239156 lt!1086561)) lt!1086980)))

(declare-fun b!3213942 () Bool)

(assert (=> b!3213942 (= e!2003978 0)))

(declare-fun b!3213943 () Bool)

(assert (=> b!3213943 (= e!2003978 (+ 1 (size!27274 (t!239156 (t!239156 lt!1086561)))))))

(assert (= (and d!881342 c!540053) b!3213942))

(assert (= (and d!881342 (not c!540053)) b!3213943))

(declare-fun m!3485269 () Bool)

(assert (=> b!3213943 m!3485269))

(assert (=> b!3213213 d!881342))

(declare-fun b!3213946 () Bool)

(declare-fun res!1308311 () Bool)

(declare-fun e!2003979 () Bool)

(assert (=> b!3213946 (=> (not res!1308311) (not e!2003979))))

(declare-fun lt!1086981 () List!36311)

(assert (=> b!3213946 (= res!1308311 (= (size!27274 lt!1086981) (+ (size!27274 (t!239156 lt!1086561)) (size!27274 lt!1086557))))))

(declare-fun b!3213945 () Bool)

(declare-fun e!2003980 () List!36311)

(assert (=> b!3213945 (= e!2003980 (Cons!36187 (h!41607 (t!239156 lt!1086561)) (++!8688 (t!239156 (t!239156 lt!1086561)) lt!1086557)))))

(declare-fun b!3213944 () Bool)

(assert (=> b!3213944 (= e!2003980 lt!1086557)))

(declare-fun d!881344 () Bool)

(assert (=> d!881344 e!2003979))

(declare-fun res!1308310 () Bool)

(assert (=> d!881344 (=> (not res!1308310) (not e!2003979))))

(assert (=> d!881344 (= res!1308310 (= (content!4894 lt!1086981) ((_ map or) (content!4894 (t!239156 lt!1086561)) (content!4894 lt!1086557))))))

(assert (=> d!881344 (= lt!1086981 e!2003980)))

(declare-fun c!540054 () Bool)

(assert (=> d!881344 (= c!540054 ((_ is Nil!36187) (t!239156 lt!1086561)))))

(assert (=> d!881344 (= (++!8688 (t!239156 lt!1086561) lt!1086557) lt!1086981)))

(declare-fun b!3213947 () Bool)

(assert (=> b!3213947 (= e!2003979 (or (not (= lt!1086557 Nil!36187)) (= lt!1086981 (t!239156 lt!1086561))))))

(assert (= (and d!881344 c!540054) b!3213944))

(assert (= (and d!881344 (not c!540054)) b!3213945))

(assert (= (and d!881344 res!1308310) b!3213946))

(assert (= (and b!3213946 res!1308311) b!3213947))

(declare-fun m!3485271 () Bool)

(assert (=> b!3213946 m!3485271))

(assert (=> b!3213946 m!3484049))

(assert (=> b!3213946 m!3484517))

(declare-fun m!3485273 () Bool)

(assert (=> b!3213945 m!3485273))

(declare-fun m!3485275 () Bool)

(assert (=> d!881344 m!3485275))

(declare-fun m!3485277 () Bool)

(assert (=> d!881344 m!3485277))

(assert (=> d!881344 m!3484525))

(assert (=> b!3213458 d!881344))

(declare-fun b!3213950 () Bool)

(declare-fun res!1308313 () Bool)

(declare-fun e!2003981 () Bool)

(assert (=> b!3213950 (=> (not res!1308313) (not e!2003981))))

(declare-fun lt!1086982 () List!36311)

(assert (=> b!3213950 (= res!1308313 (= (size!27274 lt!1086982) (+ (size!27274 (ite c!539877 call!232519 call!232516)) (size!27274 (ite c!539877 call!232516 call!232519)))))))

(declare-fun e!2003982 () List!36311)

(declare-fun b!3213949 () Bool)

(assert (=> b!3213949 (= e!2003982 (Cons!36187 (h!41607 (ite c!539877 call!232519 call!232516)) (++!8688 (t!239156 (ite c!539877 call!232519 call!232516)) (ite c!539877 call!232516 call!232519))))))

(declare-fun b!3213948 () Bool)

(assert (=> b!3213948 (= e!2003982 (ite c!539877 call!232516 call!232519))))

(declare-fun d!881346 () Bool)

(assert (=> d!881346 e!2003981))

(declare-fun res!1308312 () Bool)

(assert (=> d!881346 (=> (not res!1308312) (not e!2003981))))

(assert (=> d!881346 (= res!1308312 (= (content!4894 lt!1086982) ((_ map or) (content!4894 (ite c!539877 call!232519 call!232516)) (content!4894 (ite c!539877 call!232516 call!232519)))))))

(assert (=> d!881346 (= lt!1086982 e!2003982)))

(declare-fun c!540055 () Bool)

(assert (=> d!881346 (= c!540055 ((_ is Nil!36187) (ite c!539877 call!232519 call!232516)))))

(assert (=> d!881346 (= (++!8688 (ite c!539877 call!232519 call!232516) (ite c!539877 call!232516 call!232519)) lt!1086982)))

(declare-fun b!3213951 () Bool)

(assert (=> b!3213951 (= e!2003981 (or (not (= (ite c!539877 call!232516 call!232519) Nil!36187)) (= lt!1086982 (ite c!539877 call!232519 call!232516))))))

(assert (= (and d!881346 c!540055) b!3213948))

(assert (= (and d!881346 (not c!540055)) b!3213949))

(assert (= (and d!881346 res!1308312) b!3213950))

(assert (= (and b!3213950 res!1308313) b!3213951))

(declare-fun m!3485279 () Bool)

(assert (=> b!3213950 m!3485279))

(declare-fun m!3485281 () Bool)

(assert (=> b!3213950 m!3485281))

(declare-fun m!3485283 () Bool)

(assert (=> b!3213950 m!3485283))

(declare-fun m!3485285 () Bool)

(assert (=> b!3213949 m!3485285))

(declare-fun m!3485287 () Bool)

(assert (=> d!881346 m!3485287))

(declare-fun m!3485289 () Bool)

(assert (=> d!881346 m!3485289))

(declare-fun m!3485291 () Bool)

(assert (=> d!881346 m!3485291))

(assert (=> bm!232511 d!881346))

(declare-fun d!881348 () Bool)

(assert (=> d!881348 (= (get!11524 (getRuleFromTag!931 thiss!18206 rules!2135 (tag!5754 (rule!7672 (h!41609 (t!239158 tokens!494)))))) (v!35712 (getRuleFromTag!931 thiss!18206 rules!2135 (tag!5754 (rule!7672 (h!41609 (t!239158 tokens!494)))))))))

(assert (=> b!3213037 d!881348))

(assert (=> b!3213037 d!880942))

(declare-fun d!881350 () Bool)

(assert (=> d!881350 (= (isEmpty!20288 (tail!5217 lt!1086523)) ((_ is Nil!36187) (tail!5217 lt!1086523)))))

(assert (=> b!3213430 d!881350))

(declare-fun d!881352 () Bool)

(assert (=> d!881352 (= (tail!5217 lt!1086523) (t!239156 lt!1086523))))

(assert (=> b!3213430 d!881352))

(declare-fun d!881354 () Bool)

(assert (=> d!881354 (= (isEmpty!20283 lt!1086684) (not ((_ is Some!7152) lt!1086684)))))

(assert (=> d!880942 d!881354))

(assert (=> d!880942 d!881228))

(declare-fun d!881356 () Bool)

(assert (=> d!881356 (= (get!11526 lt!1086791) (v!35713 lt!1086791))))

(assert (=> b!3213300 d!881356))

(declare-fun d!881358 () Bool)

(assert (=> d!881358 (= (apply!8208 (transformation!5226 (rule!7672 (_1!20932 (get!11526 lt!1086791)))) (seqFromList!3524 (originalCharacters!5940 (_1!20932 (get!11526 lt!1086791))))) (dynLambda!14629 (toValue!7314 (transformation!5226 (rule!7672 (_1!20932 (get!11526 lt!1086791))))) (seqFromList!3524 (originalCharacters!5940 (_1!20932 (get!11526 lt!1086791))))))))

(declare-fun b_lambda!88211 () Bool)

(assert (=> (not b_lambda!88211) (not d!881358)))

(declare-fun tb!158259 () Bool)

(declare-fun t!239277 () Bool)

(assert (=> (and b!3213792 (= (toValue!7314 (transformation!5226 (h!41608 (t!239157 rules!2135)))) (toValue!7314 (transformation!5226 (rule!7672 (_1!20932 (get!11526 lt!1086791)))))) t!239277) tb!158259))

(declare-fun result!200652 () Bool)

(assert (=> tb!158259 (= result!200652 (inv!21 (dynLambda!14629 (toValue!7314 (transformation!5226 (rule!7672 (_1!20932 (get!11526 lt!1086791))))) (seqFromList!3524 (originalCharacters!5940 (_1!20932 (get!11526 lt!1086791)))))))))

(declare-fun m!3485293 () Bool)

(assert (=> tb!158259 m!3485293))

(assert (=> d!881358 t!239277))

(declare-fun b_and!214343 () Bool)

(assert (= b_and!214339 (and (=> t!239277 result!200652) b_and!214343)))

(declare-fun t!239279 () Bool)

(declare-fun tb!158261 () Bool)

(assert (=> (and b!3212813 (= (toValue!7314 (transformation!5226 (rule!7672 separatorToken!241))) (toValue!7314 (transformation!5226 (rule!7672 (_1!20932 (get!11526 lt!1086791)))))) t!239279) tb!158261))

(declare-fun result!200654 () Bool)

(assert (= result!200654 result!200652))

(assert (=> d!881358 t!239279))

(declare-fun b_and!214345 () Bool)

(assert (= b_and!214281 (and (=> t!239279 result!200654) b_and!214345)))

(declare-fun tb!158263 () Bool)

(declare-fun t!239281 () Bool)

(assert (=> (and b!3212809 (= (toValue!7314 (transformation!5226 (h!41608 rules!2135))) (toValue!7314 (transformation!5226 (rule!7672 (_1!20932 (get!11526 lt!1086791)))))) t!239281) tb!158263))

(declare-fun result!200656 () Bool)

(assert (= result!200656 result!200652))

(assert (=> d!881358 t!239281))

(declare-fun b_and!214347 () Bool)

(assert (= b_and!214279 (and (=> t!239281 result!200656) b_and!214347)))

(declare-fun t!239283 () Bool)

(declare-fun tb!158265 () Bool)

(assert (=> (and b!3213760 (= (toValue!7314 (transformation!5226 (rule!7672 (h!41609 (t!239158 tokens!494))))) (toValue!7314 (transformation!5226 (rule!7672 (_1!20932 (get!11526 lt!1086791)))))) t!239283) tb!158265))

(declare-fun result!200658 () Bool)

(assert (= result!200658 result!200652))

(assert (=> d!881358 t!239283))

(declare-fun b_and!214349 () Bool)

(assert (= b_and!214335 (and (=> t!239283 result!200658) b_and!214349)))

(declare-fun tb!158267 () Bool)

(declare-fun t!239285 () Bool)

(assert (=> (and b!3212814 (= (toValue!7314 (transformation!5226 (rule!7672 (h!41609 tokens!494)))) (toValue!7314 (transformation!5226 (rule!7672 (_1!20932 (get!11526 lt!1086791)))))) t!239285) tb!158267))

(declare-fun result!200660 () Bool)

(assert (= result!200660 result!200652))

(assert (=> d!881358 t!239285))

(declare-fun b_and!214351 () Bool)

(assert (= b_and!214283 (and (=> t!239285 result!200660) b_and!214351)))

(assert (=> d!881358 m!3484151))

(declare-fun m!3485295 () Bool)

(assert (=> d!881358 m!3485295))

(assert (=> b!3213300 d!881358))

(declare-fun d!881360 () Bool)

(assert (=> d!881360 (= (seqFromList!3524 (originalCharacters!5940 (_1!20932 (get!11526 lt!1086791)))) (fromListB!1544 (originalCharacters!5940 (_1!20932 (get!11526 lt!1086791)))))))

(declare-fun bs!541951 () Bool)

(assert (= bs!541951 d!881360))

(declare-fun m!3485297 () Bool)

(assert (=> bs!541951 m!3485297))

(assert (=> b!3213300 d!881360))

(assert (=> d!880968 d!881008))

(assert (=> d!880968 d!880944))

(declare-fun d!881362 () Bool)

(assert (=> d!881362 (not (contains!6469 (usedCharacters!542 (regex!5226 (rule!7672 (h!41609 tokens!494)))) lt!1086540))))

(assert (=> d!881362 true))

(declare-fun _$73!175 () Unit!50676)

(assert (=> d!881362 (= (choose!18757 thiss!18206 rules!2135 rules!2135 (rule!7672 (h!41609 tokens!494)) (rule!7672 separatorToken!241) lt!1086540) _$73!175)))

(declare-fun bs!541952 () Bool)

(assert (= bs!541952 d!881362))

(assert (=> bs!541952 m!3483293))

(assert (=> bs!541952 m!3483293))

(assert (=> bs!541952 m!3483327))

(assert (=> d!880968 d!881362))

(assert (=> d!880968 d!881228))

(declare-fun d!881364 () Bool)

(declare-fun nullableFct!969 (Regex!9985) Bool)

(assert (=> d!881364 (= (nullable!3400 (regex!5226 (rule!7672 separatorToken!241))) (nullableFct!969 (regex!5226 (rule!7672 separatorToken!241))))))

(declare-fun bs!541953 () Bool)

(assert (= bs!541953 d!881364))

(declare-fun m!3485299 () Bool)

(assert (=> bs!541953 m!3485299))

(assert (=> b!3213714 d!881364))

(declare-fun d!881366 () Bool)

(declare-fun lt!1086985 () Token!9818)

(assert (=> d!881366 (contains!6471 (list!12877 (_1!20931 lt!1086541)) lt!1086985)))

(declare-fun e!2003988 () Token!9818)

(assert (=> d!881366 (= lt!1086985 e!2003988)))

(declare-fun c!540059 () Bool)

(assert (=> d!881366 (= c!540059 (= 0 0))))

(declare-fun e!2003989 () Bool)

(assert (=> d!881366 e!2003989))

(declare-fun res!1308316 () Bool)

(assert (=> d!881366 (=> (not res!1308316) (not e!2003989))))

(assert (=> d!881366 (= res!1308316 (<= 0 0))))

(assert (=> d!881366 (= (apply!8209 (list!12877 (_1!20931 lt!1086541)) 0) lt!1086985)))

(declare-fun b!3213958 () Bool)

(assert (=> b!3213958 (= e!2003989 (< 0 (size!27277 (list!12877 (_1!20931 lt!1086541)))))))

(declare-fun b!3213959 () Bool)

(assert (=> b!3213959 (= e!2003988 (head!7048 (list!12877 (_1!20931 lt!1086541))))))

(declare-fun b!3213960 () Bool)

(assert (=> b!3213960 (= e!2003988 (apply!8209 (tail!5215 (list!12877 (_1!20931 lt!1086541))) (- 0 1)))))

(assert (= (and d!881366 res!1308316) b!3213958))

(assert (= (and d!881366 c!540059) b!3213959))

(assert (= (and d!881366 (not c!540059)) b!3213960))

(assert (=> d!881366 m!3483595))

(declare-fun m!3485301 () Bool)

(assert (=> d!881366 m!3485301))

(assert (=> b!3213958 m!3483595))

(assert (=> b!3213958 m!3484185))

(assert (=> b!3213959 m!3483595))

(declare-fun m!3485303 () Bool)

(assert (=> b!3213959 m!3485303))

(assert (=> b!3213960 m!3483595))

(declare-fun m!3485305 () Bool)

(assert (=> b!3213960 m!3485305))

(assert (=> b!3213960 m!3485305))

(declare-fun m!3485307 () Bool)

(assert (=> b!3213960 m!3485307))

(assert (=> d!880886 d!881366))

(declare-fun d!881368 () Bool)

(declare-fun list!12881 (Conc!10828) List!36313)

(assert (=> d!881368 (= (list!12877 (_1!20931 lt!1086541)) (list!12881 (c!539814 (_1!20931 lt!1086541))))))

(declare-fun bs!541954 () Bool)

(assert (= bs!541954 d!881368))

(declare-fun m!3485309 () Bool)

(assert (=> bs!541954 m!3485309))

(assert (=> d!880886 d!881368))

(declare-fun b!3213975 () Bool)

(declare-fun e!2004000 () Int)

(assert (=> b!3213975 (= e!2004000 0)))

(declare-fun b!3213976 () Bool)

(declare-fun e!2003998 () Bool)

(assert (=> b!3213976 (= e!2003998 (< 0 (size!27278 (c!539814 (_1!20931 lt!1086541)))))))

(declare-fun b!3213977 () Bool)

(declare-fun e!2004001 () Token!9818)

(declare-fun e!2003999 () Token!9818)

(assert (=> b!3213977 (= e!2004001 e!2003999)))

(declare-fun lt!1086990 () Bool)

(declare-fun appendIndex!309 (List!36313 List!36313 Int) Bool)

(assert (=> b!3213977 (= lt!1086990 (appendIndex!309 (list!12881 (left!28143 (c!539814 (_1!20931 lt!1086541)))) (list!12881 (right!28473 (c!539814 (_1!20931 lt!1086541)))) 0))))

(declare-fun c!540066 () Bool)

(assert (=> b!3213977 (= c!540066 (< 0 (size!27278 (left!28143 (c!539814 (_1!20931 lt!1086541))))))))

(declare-fun b!3213978 () Bool)

(declare-fun call!232587 () Token!9818)

(assert (=> b!3213978 (= e!2003999 call!232587)))

(declare-fun bm!232582 () Bool)

(declare-fun c!540067 () Bool)

(assert (=> bm!232582 (= c!540067 c!540066)))

(assert (=> bm!232582 (= call!232587 (apply!8210 (ite c!540066 (left!28143 (c!539814 (_1!20931 lt!1086541))) (right!28473 (c!539814 (_1!20931 lt!1086541)))) e!2004000))))

(declare-fun d!881370 () Bool)

(declare-fun lt!1086991 () Token!9818)

(assert (=> d!881370 (= lt!1086991 (apply!8209 (list!12881 (c!539814 (_1!20931 lt!1086541))) 0))))

(assert (=> d!881370 (= lt!1086991 e!2004001)))

(declare-fun c!540068 () Bool)

(assert (=> d!881370 (= c!540068 ((_ is Leaf!17052) (c!539814 (_1!20931 lt!1086541))))))

(assert (=> d!881370 e!2003998))

(declare-fun res!1308319 () Bool)

(assert (=> d!881370 (=> (not res!1308319) (not e!2003998))))

(assert (=> d!881370 (= res!1308319 (<= 0 0))))

(assert (=> d!881370 (= (apply!8210 (c!539814 (_1!20931 lt!1086541)) 0) lt!1086991)))

(declare-fun b!3213979 () Bool)

(declare-fun apply!8213 (IArray!21661 Int) Token!9818)

(assert (=> b!3213979 (= e!2004001 (apply!8213 (xs!13946 (c!539814 (_1!20931 lt!1086541))) 0))))

(declare-fun b!3213980 () Bool)

(assert (=> b!3213980 (= e!2004000 (- 0 (size!27278 (left!28143 (c!539814 (_1!20931 lt!1086541))))))))

(declare-fun b!3213981 () Bool)

(assert (=> b!3213981 (= e!2003999 call!232587)))

(assert (= (and d!881370 res!1308319) b!3213976))

(assert (= (and d!881370 c!540068) b!3213979))

(assert (= (and d!881370 (not c!540068)) b!3213977))

(assert (= (and b!3213977 c!540066) b!3213978))

(assert (= (and b!3213977 (not c!540066)) b!3213981))

(assert (= (or b!3213978 b!3213981) bm!232582))

(assert (= (and bm!232582 c!540067) b!3213975))

(assert (= (and bm!232582 (not c!540067)) b!3213980))

(declare-fun m!3485311 () Bool)

(assert (=> b!3213979 m!3485311))

(declare-fun m!3485313 () Bool)

(assert (=> b!3213980 m!3485313))

(assert (=> d!881370 m!3485309))

(assert (=> d!881370 m!3485309))

(declare-fun m!3485315 () Bool)

(assert (=> d!881370 m!3485315))

(declare-fun m!3485317 () Bool)

(assert (=> b!3213977 m!3485317))

(declare-fun m!3485319 () Bool)

(assert (=> b!3213977 m!3485319))

(assert (=> b!3213977 m!3485317))

(assert (=> b!3213977 m!3485319))

(declare-fun m!3485321 () Bool)

(assert (=> b!3213977 m!3485321))

(assert (=> b!3213977 m!3485313))

(declare-fun m!3485323 () Bool)

(assert (=> bm!232582 m!3485323))

(assert (=> b!3213976 m!3484187))

(assert (=> d!880886 d!881370))

(declare-fun b!3213984 () Bool)

(declare-fun res!1308321 () Bool)

(declare-fun e!2004002 () Bool)

(assert (=> b!3213984 (=> (not res!1308321) (not e!2004002))))

(declare-fun lt!1086992 () List!36311)

(assert (=> b!3213984 (= res!1308321 (= (size!27274 lt!1086992) (+ (size!27274 lt!1086523) (size!27274 (++!8688 lt!1086557 lt!1086532)))))))

(declare-fun e!2004003 () List!36311)

(declare-fun b!3213983 () Bool)

(assert (=> b!3213983 (= e!2004003 (Cons!36187 (h!41607 lt!1086523) (++!8688 (t!239156 lt!1086523) (++!8688 lt!1086557 lt!1086532))))))

(declare-fun b!3213982 () Bool)

(assert (=> b!3213982 (= e!2004003 (++!8688 lt!1086557 lt!1086532))))

(declare-fun d!881372 () Bool)

(assert (=> d!881372 e!2004002))

(declare-fun res!1308320 () Bool)

(assert (=> d!881372 (=> (not res!1308320) (not e!2004002))))

(assert (=> d!881372 (= res!1308320 (= (content!4894 lt!1086992) ((_ map or) (content!4894 lt!1086523) (content!4894 (++!8688 lt!1086557 lt!1086532)))))))

(assert (=> d!881372 (= lt!1086992 e!2004003)))

(declare-fun c!540069 () Bool)

(assert (=> d!881372 (= c!540069 ((_ is Nil!36187) lt!1086523))))

(assert (=> d!881372 (= (++!8688 lt!1086523 (++!8688 lt!1086557 lt!1086532)) lt!1086992)))

(declare-fun b!3213985 () Bool)

(assert (=> b!3213985 (= e!2004002 (or (not (= (++!8688 lt!1086557 lt!1086532) Nil!36187)) (= lt!1086992 lt!1086523)))))

(assert (= (and d!881372 c!540069) b!3213982))

(assert (= (and d!881372 (not c!540069)) b!3213983))

(assert (= (and d!881372 res!1308320) b!3213984))

(assert (= (and b!3213984 res!1308321) b!3213985))

(declare-fun m!3485325 () Bool)

(assert (=> b!3213984 m!3485325))

(assert (=> b!3213984 m!3483283))

(assert (=> b!3213984 m!3483467))

(declare-fun m!3485327 () Bool)

(assert (=> b!3213984 m!3485327))

(assert (=> b!3213983 m!3483467))

(declare-fun m!3485329 () Bool)

(assert (=> b!3213983 m!3485329))

(declare-fun m!3485331 () Bool)

(assert (=> d!881372 m!3485331))

(assert (=> d!881372 m!3484319))

(assert (=> d!881372 m!3483467))

(declare-fun m!3485333 () Bool)

(assert (=> d!881372 m!3485333))

(assert (=> d!881036 d!881372))

(assert (=> d!881036 d!881112))

(declare-fun d!881374 () Bool)

(assert (=> d!881374 (= (++!8688 (++!8688 lt!1086523 lt!1086557) lt!1086532) (++!8688 lt!1086523 (++!8688 lt!1086557 lt!1086532)))))

(assert (=> d!881374 true))

(declare-fun _$52!1567 () Unit!50676)

(assert (=> d!881374 (= (choose!18763 lt!1086523 lt!1086557 lt!1086532) _$52!1567)))

(declare-fun bs!541955 () Bool)

(assert (= bs!541955 d!881374))

(assert (=> bs!541955 m!3483383))

(assert (=> bs!541955 m!3483383))

(assert (=> bs!541955 m!3483385))

(assert (=> bs!541955 m!3483467))

(assert (=> bs!541955 m!3483467))

(assert (=> bs!541955 m!3484357))

(assert (=> d!881036 d!881374))

(assert (=> d!881036 d!881110))

(assert (=> d!881036 d!881100))

(declare-fun d!881376 () Bool)

(declare-fun res!1308322 () Bool)

(declare-fun e!2004004 () Bool)

(assert (=> d!881376 (=> (not res!1308322) (not e!2004004))))

(assert (=> d!881376 (= res!1308322 (not (isEmpty!20288 (originalCharacters!5940 (h!41609 (t!239158 tokens!494))))))))

(assert (=> d!881376 (= (inv!49052 (h!41609 (t!239158 tokens!494))) e!2004004)))

(declare-fun b!3213986 () Bool)

(declare-fun res!1308323 () Bool)

(assert (=> b!3213986 (=> (not res!1308323) (not e!2004004))))

(assert (=> b!3213986 (= res!1308323 (= (originalCharacters!5940 (h!41609 (t!239158 tokens!494))) (list!12875 (dynLambda!14631 (toChars!7173 (transformation!5226 (rule!7672 (h!41609 (t!239158 tokens!494))))) (value!169401 (h!41609 (t!239158 tokens!494)))))))))

(declare-fun b!3213987 () Bool)

(assert (=> b!3213987 (= e!2004004 (= (size!27273 (h!41609 (t!239158 tokens!494))) (size!27274 (originalCharacters!5940 (h!41609 (t!239158 tokens!494))))))))

(assert (= (and d!881376 res!1308322) b!3213986))

(assert (= (and b!3213986 res!1308323) b!3213987))

(declare-fun b_lambda!88213 () Bool)

(assert (=> (not b_lambda!88213) (not b!3213986)))

(assert (=> b!3213986 t!239272))

(declare-fun b_and!214353 () Bool)

(assert (= b_and!214341 (and (=> t!239272 result!200648) b_and!214353)))

(assert (=> b!3213986 t!239222))

(declare-fun b_and!214355 () Bool)

(assert (= b_and!214325 (and (=> t!239222 result!200588) b_and!214355)))

(assert (=> b!3213986 t!239220))

(declare-fun b_and!214357 () Bool)

(assert (= b_and!214323 (and (=> t!239220 result!200586) b_and!214357)))

(assert (=> b!3213986 t!239262))

(declare-fun b_and!214359 () Bool)

(assert (= b_and!214337 (and (=> t!239262 result!200634) b_and!214359)))

(assert (=> b!3213986 t!239218))

(declare-fun b_and!214361 () Bool)

(assert (= b_and!214321 (and (=> t!239218 result!200584) b_and!214361)))

(declare-fun m!3485335 () Bool)

(assert (=> d!881376 m!3485335))

(assert (=> b!3213986 m!3484583))

(assert (=> b!3213986 m!3484583))

(declare-fun m!3485337 () Bool)

(assert (=> b!3213986 m!3485337))

(declare-fun m!3485339 () Bool)

(assert (=> b!3213987 m!3485339))

(assert (=> b!3213757 d!881376))

(assert (=> d!880988 d!881046))

(declare-fun b!3213990 () Bool)

(declare-fun res!1308325 () Bool)

(declare-fun e!2004005 () Bool)

(assert (=> b!3213990 (=> (not res!1308325) (not e!2004005))))

(declare-fun lt!1086993 () List!36311)

(assert (=> b!3213990 (= res!1308325 (= (size!27274 lt!1086993) (+ (size!27274 (list!12875 (charsOf!3242 (h!41609 tokens!494)))) (size!27274 lt!1086531))))))

(declare-fun b!3213989 () Bool)

(declare-fun e!2004006 () List!36311)

(assert (=> b!3213989 (= e!2004006 (Cons!36187 (h!41607 (list!12875 (charsOf!3242 (h!41609 tokens!494)))) (++!8688 (t!239156 (list!12875 (charsOf!3242 (h!41609 tokens!494)))) lt!1086531)))))

(declare-fun b!3213988 () Bool)

(assert (=> b!3213988 (= e!2004006 lt!1086531)))

(declare-fun d!881378 () Bool)

(assert (=> d!881378 e!2004005))

(declare-fun res!1308324 () Bool)

(assert (=> d!881378 (=> (not res!1308324) (not e!2004005))))

(assert (=> d!881378 (= res!1308324 (= (content!4894 lt!1086993) ((_ map or) (content!4894 (list!12875 (charsOf!3242 (h!41609 tokens!494)))) (content!4894 lt!1086531))))))

(assert (=> d!881378 (= lt!1086993 e!2004006)))

(declare-fun c!540070 () Bool)

(assert (=> d!881378 (= c!540070 ((_ is Nil!36187) (list!12875 (charsOf!3242 (h!41609 tokens!494)))))))

(assert (=> d!881378 (= (++!8688 (list!12875 (charsOf!3242 (h!41609 tokens!494))) lt!1086531) lt!1086993)))

(declare-fun b!3213991 () Bool)

(assert (=> b!3213991 (= e!2004005 (or (not (= lt!1086531 Nil!36187)) (= lt!1086993 (list!12875 (charsOf!3242 (h!41609 tokens!494))))))))

(assert (= (and d!881378 c!540070) b!3213988))

(assert (= (and d!881378 (not c!540070)) b!3213989))

(assert (= (and d!881378 res!1308324) b!3213990))

(assert (= (and b!3213990 res!1308325) b!3213991))

(declare-fun m!3485341 () Bool)

(assert (=> b!3213990 m!3485341))

(assert (=> b!3213990 m!3483381))

(declare-fun m!3485343 () Bool)

(assert (=> b!3213990 m!3485343))

(assert (=> b!3213990 m!3484311))

(declare-fun m!3485345 () Bool)

(assert (=> b!3213989 m!3485345))

(declare-fun m!3485347 () Bool)

(assert (=> d!881378 m!3485347))

(assert (=> d!881378 m!3483381))

(declare-fun m!3485349 () Bool)

(assert (=> d!881378 m!3485349))

(assert (=> d!881378 m!3484321))

(assert (=> d!880988 d!881378))

(declare-fun d!881380 () Bool)

(assert (=> d!881380 (= (maxPrefix!2457 thiss!18206 rules!2135 (++!8688 (list!12875 (charsOf!3242 (h!41609 tokens!494))) lt!1086531)) (Some!7153 (tuple2!35597 (h!41609 tokens!494) lt!1086531)))))

(assert (=> d!881380 true))

(declare-fun _$49!199 () Unit!50676)

(assert (=> d!881380 (= (choose!18758 thiss!18206 rules!2135 (h!41609 tokens!494) (rule!7672 (h!41609 tokens!494)) lt!1086531 (rule!7672 separatorToken!241)) _$49!199)))

(declare-fun bs!541956 () Bool)

(assert (= bs!541956 d!881380))

(assert (=> bs!541956 m!3483379))

(assert (=> bs!541956 m!3483379))

(assert (=> bs!541956 m!3483381))

(assert (=> bs!541956 m!3483381))

(assert (=> bs!541956 m!3484043))

(assert (=> bs!541956 m!3484043))

(assert (=> bs!541956 m!3484047))

(assert (=> d!880988 d!881380))

(assert (=> d!880988 d!881042))

(assert (=> d!880988 d!881226))

(declare-fun b!3213992 () Bool)

(declare-fun res!1308327 () Bool)

(declare-fun e!2004008 () Bool)

(assert (=> b!3213992 (=> (not res!1308327) (not e!2004008))))

(declare-fun lt!1086997 () Option!7154)

(assert (=> b!3213992 (= res!1308327 (= (list!12875 (charsOf!3242 (_1!20932 (get!11526 lt!1086997)))) (originalCharacters!5940 (_1!20932 (get!11526 lt!1086997)))))))

(declare-fun b!3213993 () Bool)

(assert (=> b!3213993 (= e!2004008 (contains!6470 rules!2135 (rule!7672 (_1!20932 (get!11526 lt!1086997)))))))

(declare-fun b!3213994 () Bool)

(declare-fun e!2004007 () Option!7154)

(declare-fun call!232588 () Option!7154)

(assert (=> b!3213994 (= e!2004007 call!232588)))

(declare-fun b!3213995 () Bool)

(declare-fun lt!1086998 () Option!7154)

(declare-fun lt!1086994 () Option!7154)

(assert (=> b!3213995 (= e!2004007 (ite (and ((_ is None!7153) lt!1086998) ((_ is None!7153) lt!1086994)) None!7153 (ite ((_ is None!7153) lt!1086994) lt!1086998 (ite ((_ is None!7153) lt!1086998) lt!1086994 (ite (>= (size!27273 (_1!20932 (v!35713 lt!1086998))) (size!27273 (_1!20932 (v!35713 lt!1086994)))) lt!1086998 lt!1086994)))))))

(assert (=> b!3213995 (= lt!1086998 call!232588)))

(assert (=> b!3213995 (= lt!1086994 (maxPrefix!2457 thiss!18206 (t!239157 rules!2135) (++!8688 (list!12875 (charsOf!3242 (h!41609 tokens!494))) lt!1086531)))))

(declare-fun b!3213996 () Bool)

(declare-fun res!1308330 () Bool)

(assert (=> b!3213996 (=> (not res!1308330) (not e!2004008))))

(assert (=> b!3213996 (= res!1308330 (= (++!8688 (list!12875 (charsOf!3242 (_1!20932 (get!11526 lt!1086997)))) (_2!20932 (get!11526 lt!1086997))) (++!8688 (list!12875 (charsOf!3242 (h!41609 tokens!494))) lt!1086531)))))

(declare-fun b!3213997 () Bool)

(declare-fun res!1308328 () Bool)

(assert (=> b!3213997 (=> (not res!1308328) (not e!2004008))))

(assert (=> b!3213997 (= res!1308328 (matchR!4619 (regex!5226 (rule!7672 (_1!20932 (get!11526 lt!1086997)))) (list!12875 (charsOf!3242 (_1!20932 (get!11526 lt!1086997))))))))

(declare-fun b!3213998 () Bool)

(declare-fun res!1308332 () Bool)

(assert (=> b!3213998 (=> (not res!1308332) (not e!2004008))))

(assert (=> b!3213998 (= res!1308332 (= (value!169401 (_1!20932 (get!11526 lt!1086997))) (apply!8208 (transformation!5226 (rule!7672 (_1!20932 (get!11526 lt!1086997)))) (seqFromList!3524 (originalCharacters!5940 (_1!20932 (get!11526 lt!1086997)))))))))

(declare-fun b!3213999 () Bool)

(declare-fun res!1308331 () Bool)

(assert (=> b!3213999 (=> (not res!1308331) (not e!2004008))))

(assert (=> b!3213999 (= res!1308331 (< (size!27274 (_2!20932 (get!11526 lt!1086997))) (size!27274 (++!8688 (list!12875 (charsOf!3242 (h!41609 tokens!494))) lt!1086531))))))

(declare-fun d!881382 () Bool)

(declare-fun e!2004009 () Bool)

(assert (=> d!881382 e!2004009))

(declare-fun res!1308329 () Bool)

(assert (=> d!881382 (=> res!1308329 e!2004009)))

(assert (=> d!881382 (= res!1308329 (isEmpty!20287 lt!1086997))))

(assert (=> d!881382 (= lt!1086997 e!2004007)))

(declare-fun c!540071 () Bool)

(assert (=> d!881382 (= c!540071 (and ((_ is Cons!36188) rules!2135) ((_ is Nil!36188) (t!239157 rules!2135))))))

(declare-fun lt!1086995 () Unit!50676)

(declare-fun lt!1086996 () Unit!50676)

(assert (=> d!881382 (= lt!1086995 lt!1086996)))

(assert (=> d!881382 (isPrefix!2786 (++!8688 (list!12875 (charsOf!3242 (h!41609 tokens!494))) lt!1086531) (++!8688 (list!12875 (charsOf!3242 (h!41609 tokens!494))) lt!1086531))))

(assert (=> d!881382 (= lt!1086996 (lemmaIsPrefixRefl!1745 (++!8688 (list!12875 (charsOf!3242 (h!41609 tokens!494))) lt!1086531) (++!8688 (list!12875 (charsOf!3242 (h!41609 tokens!494))) lt!1086531)))))

(assert (=> d!881382 (rulesValidInductive!1779 thiss!18206 rules!2135)))

(assert (=> d!881382 (= (maxPrefix!2457 thiss!18206 rules!2135 (++!8688 (list!12875 (charsOf!3242 (h!41609 tokens!494))) lt!1086531)) lt!1086997)))

(declare-fun b!3214000 () Bool)

(assert (=> b!3214000 (= e!2004009 e!2004008)))

(declare-fun res!1308326 () Bool)

(assert (=> b!3214000 (=> (not res!1308326) (not e!2004008))))

(assert (=> b!3214000 (= res!1308326 (isDefined!5560 lt!1086997))))

(declare-fun bm!232583 () Bool)

(assert (=> bm!232583 (= call!232588 (maxPrefixOneRule!1594 thiss!18206 (h!41608 rules!2135) (++!8688 (list!12875 (charsOf!3242 (h!41609 tokens!494))) lt!1086531)))))

(assert (= (and d!881382 c!540071) b!3213994))

(assert (= (and d!881382 (not c!540071)) b!3213995))

(assert (= (or b!3213994 b!3213995) bm!232583))

(assert (= (and d!881382 (not res!1308329)) b!3214000))

(assert (= (and b!3214000 res!1308326) b!3213992))

(assert (= (and b!3213992 res!1308327) b!3213999))

(assert (= (and b!3213999 res!1308331) b!3213996))

(assert (= (and b!3213996 res!1308330) b!3213998))

(assert (= (and b!3213998 res!1308332) b!3213997))

(assert (= (and b!3213997 res!1308328) b!3213993))

(assert (=> bm!232583 m!3484043))

(declare-fun m!3485351 () Bool)

(assert (=> bm!232583 m!3485351))

(declare-fun m!3485353 () Bool)

(assert (=> b!3213999 m!3485353))

(declare-fun m!3485355 () Bool)

(assert (=> b!3213999 m!3485355))

(assert (=> b!3213999 m!3484043))

(declare-fun m!3485357 () Bool)

(assert (=> b!3213999 m!3485357))

(assert (=> b!3213995 m!3484043))

(declare-fun m!3485359 () Bool)

(assert (=> b!3213995 m!3485359))

(assert (=> b!3213997 m!3485353))

(declare-fun m!3485361 () Bool)

(assert (=> b!3213997 m!3485361))

(assert (=> b!3213997 m!3485361))

(declare-fun m!3485363 () Bool)

(assert (=> b!3213997 m!3485363))

(assert (=> b!3213997 m!3485363))

(declare-fun m!3485365 () Bool)

(assert (=> b!3213997 m!3485365))

(assert (=> b!3213993 m!3485353))

(declare-fun m!3485367 () Bool)

(assert (=> b!3213993 m!3485367))

(assert (=> b!3213992 m!3485353))

(assert (=> b!3213992 m!3485361))

(assert (=> b!3213992 m!3485361))

(assert (=> b!3213992 m!3485363))

(declare-fun m!3485369 () Bool)

(assert (=> d!881382 m!3485369))

(assert (=> d!881382 m!3484043))

(assert (=> d!881382 m!3484043))

(declare-fun m!3485371 () Bool)

(assert (=> d!881382 m!3485371))

(assert (=> d!881382 m!3484043))

(assert (=> d!881382 m!3484043))

(declare-fun m!3485373 () Bool)

(assert (=> d!881382 m!3485373))

(assert (=> d!881382 m!3484103))

(assert (=> b!3213998 m!3485353))

(declare-fun m!3485375 () Bool)

(assert (=> b!3213998 m!3485375))

(assert (=> b!3213998 m!3485375))

(declare-fun m!3485377 () Bool)

(assert (=> b!3213998 m!3485377))

(declare-fun m!3485379 () Bool)

(assert (=> b!3214000 m!3485379))

(assert (=> b!3213996 m!3485353))

(assert (=> b!3213996 m!3485361))

(assert (=> b!3213996 m!3485361))

(assert (=> b!3213996 m!3485363))

(assert (=> b!3213996 m!3485363))

(declare-fun m!3485381 () Bool)

(assert (=> b!3213996 m!3485381))

(assert (=> d!880988 d!881382))

(declare-fun b!3214001 () Bool)

(declare-fun res!1308333 () Bool)

(declare-fun e!2004011 () Bool)

(assert (=> b!3214001 (=> res!1308333 e!2004011)))

(assert (=> b!3214001 (= res!1308333 (not ((_ is IntegerValue!16370) (dynLambda!14629 (toValue!7314 (transformation!5226 (rule!7672 (h!41609 (t!239158 tokens!494))))) (seqFromList!3524 lt!1086561)))))))

(declare-fun e!2004010 () Bool)

(assert (=> b!3214001 (= e!2004010 e!2004011)))

(declare-fun b!3214002 () Bool)

(assert (=> b!3214002 (= e!2004010 (inv!17 (dynLambda!14629 (toValue!7314 (transformation!5226 (rule!7672 (h!41609 (t!239158 tokens!494))))) (seqFromList!3524 lt!1086561))))))

(declare-fun b!3214003 () Bool)

(assert (=> b!3214003 (= e!2004011 (inv!15 (dynLambda!14629 (toValue!7314 (transformation!5226 (rule!7672 (h!41609 (t!239158 tokens!494))))) (seqFromList!3524 lt!1086561))))))

(declare-fun d!881384 () Bool)

(declare-fun c!540073 () Bool)

(assert (=> d!881384 (= c!540073 ((_ is IntegerValue!16368) (dynLambda!14629 (toValue!7314 (transformation!5226 (rule!7672 (h!41609 (t!239158 tokens!494))))) (seqFromList!3524 lt!1086561))))))

(declare-fun e!2004012 () Bool)

(assert (=> d!881384 (= (inv!21 (dynLambda!14629 (toValue!7314 (transformation!5226 (rule!7672 (h!41609 (t!239158 tokens!494))))) (seqFromList!3524 lt!1086561))) e!2004012)))

(declare-fun b!3214004 () Bool)

(assert (=> b!3214004 (= e!2004012 e!2004010)))

(declare-fun c!540072 () Bool)

(assert (=> b!3214004 (= c!540072 ((_ is IntegerValue!16369) (dynLambda!14629 (toValue!7314 (transformation!5226 (rule!7672 (h!41609 (t!239158 tokens!494))))) (seqFromList!3524 lt!1086561))))))

(declare-fun b!3214005 () Bool)

(assert (=> b!3214005 (= e!2004012 (inv!16 (dynLambda!14629 (toValue!7314 (transformation!5226 (rule!7672 (h!41609 (t!239158 tokens!494))))) (seqFromList!3524 lt!1086561))))))

(assert (= (and d!881384 c!540073) b!3214005))

(assert (= (and d!881384 (not c!540073)) b!3214004))

(assert (= (and b!3214004 c!540072) b!3214002))

(assert (= (and b!3214004 (not c!540072)) b!3214001))

(assert (= (and b!3214001 (not res!1308333)) b!3214003))

(declare-fun m!3485383 () Bool)

(assert (=> b!3214002 m!3485383))

(declare-fun m!3485385 () Bool)

(assert (=> b!3214003 m!3485385))

(declare-fun m!3485387 () Bool)

(assert (=> b!3214005 m!3485387))

(assert (=> tb!158183 d!881384))

(assert (=> b!3213689 d!880890))

(declare-fun d!881386 () Bool)

(assert (=> d!881386 (= (isEmpty!20283 lt!1086537) (not ((_ is Some!7152) lt!1086537)))))

(assert (=> d!880970 d!881386))

(assert (=> b!3212949 d!881012))

(assert (=> d!880962 d!880894))

(declare-fun d!881388 () Bool)

(assert (=> d!881388 (rulesProduceIndividualToken!2307 thiss!18206 rules!2135 (h!41609 (t!239158 tokens!494)))))

(assert (=> d!881388 true))

(declare-fun _$77!811 () Unit!50676)

(assert (=> d!881388 (= (choose!18753 thiss!18206 rules!2135 tokens!494 (h!41609 (t!239158 tokens!494))) _$77!811)))

(declare-fun bs!541957 () Bool)

(assert (= bs!541957 d!881388))

(assert (=> bs!541957 m!3483325))

(assert (=> d!880962 d!881388))

(assert (=> d!880962 d!881226))

(declare-fun d!881394 () Bool)

(declare-fun c!540090 () Bool)

(assert (=> d!881394 (= c!540090 ((_ is Nil!36187) lt!1086825))))

(declare-fun e!2004035 () (InoxSet C!20156))

(assert (=> d!881394 (= (content!4894 lt!1086825) e!2004035)))

(declare-fun b!3214048 () Bool)

(assert (=> b!3214048 (= e!2004035 ((as const (Array C!20156 Bool)) false))))

(declare-fun b!3214049 () Bool)

(assert (=> b!3214049 (= e!2004035 ((_ map or) (store ((as const (Array C!20156 Bool)) false) (h!41607 lt!1086825) true) (content!4894 (t!239156 lt!1086825))))))

(assert (= (and d!881394 c!540090) b!3214048))

(assert (= (and d!881394 (not c!540090)) b!3214049))

(declare-fun m!3485519 () Bool)

(assert (=> b!3214049 m!3485519))

(declare-fun m!3485521 () Bool)

(assert (=> b!3214049 m!3485521))

(assert (=> d!881032 d!881394))

(declare-fun d!881396 () Bool)

(declare-fun c!540093 () Bool)

(assert (=> d!881396 (= c!540093 ((_ is Nil!36187) lt!1086523))))

(declare-fun e!2004038 () (InoxSet C!20156))

(assert (=> d!881396 (= (content!4894 lt!1086523) e!2004038)))

(declare-fun b!3214054 () Bool)

(assert (=> b!3214054 (= e!2004038 ((as const (Array C!20156 Bool)) false))))

(declare-fun b!3214055 () Bool)

(assert (=> b!3214055 (= e!2004038 ((_ map or) (store ((as const (Array C!20156 Bool)) false) (h!41607 lt!1086523) true) (content!4894 (t!239156 lt!1086523))))))

(assert (= (and d!881396 c!540093) b!3214054))

(assert (= (and d!881396 (not c!540093)) b!3214055))

(declare-fun m!3485527 () Bool)

(assert (=> b!3214055 m!3485527))

(declare-fun m!3485531 () Bool)

(assert (=> b!3214055 m!3485531))

(assert (=> d!881032 d!881396))

(declare-fun d!881398 () Bool)

(declare-fun c!540094 () Bool)

(assert (=> d!881398 (= c!540094 ((_ is Nil!36187) lt!1086531))))

(declare-fun e!2004039 () (InoxSet C!20156))

(assert (=> d!881398 (= (content!4894 lt!1086531) e!2004039)))

(declare-fun b!3214056 () Bool)

(assert (=> b!3214056 (= e!2004039 ((as const (Array C!20156 Bool)) false))))

(declare-fun b!3214057 () Bool)

(assert (=> b!3214057 (= e!2004039 ((_ map or) (store ((as const (Array C!20156 Bool)) false) (h!41607 lt!1086531) true) (content!4894 (t!239156 lt!1086531))))))

(assert (= (and d!881398 c!540094) b!3214056))

(assert (= (and d!881398 (not c!540094)) b!3214057))

(declare-fun m!3485535 () Bool)

(assert (=> b!3214057 m!3485535))

(declare-fun m!3485537 () Bool)

(assert (=> b!3214057 m!3485537))

(assert (=> d!881032 d!881398))

(declare-fun d!881402 () Bool)

(assert (=> d!881402 (= (list!12875 lt!1086834) (list!12879 (c!539813 lt!1086834)))))

(declare-fun bs!541958 () Bool)

(assert (= bs!541958 d!881402))

(declare-fun m!3485539 () Bool)

(assert (=> bs!541958 m!3485539))

(assert (=> d!881046 d!881402))

(declare-fun d!881404 () Bool)

(declare-fun lt!1087106 () Bool)

(assert (=> d!881404 (= lt!1087106 (isEmpty!20288 (list!12875 (_2!20931 (lex!2145 thiss!18206 rules!2135 (print!1880 thiss!18206 (singletonSeq!2322 (h!41609 (t!239158 tokens!494)))))))))))

(assert (=> d!881404 (= lt!1087106 (isEmpty!20289 (c!539813 (_2!20931 (lex!2145 thiss!18206 rules!2135 (print!1880 thiss!18206 (singletonSeq!2322 (h!41609 (t!239158 tokens!494)))))))))))

(assert (=> d!881404 (= (isEmpty!20279 (_2!20931 (lex!2145 thiss!18206 rules!2135 (print!1880 thiss!18206 (singletonSeq!2322 (h!41609 (t!239158 tokens!494))))))) lt!1087106)))

(declare-fun bs!541959 () Bool)

(assert (= bs!541959 d!881404))

(declare-fun m!3485541 () Bool)

(assert (=> bs!541959 m!3485541))

(assert (=> bs!541959 m!3485541))

(declare-fun m!3485543 () Bool)

(assert (=> bs!541959 m!3485543))

(declare-fun m!3485545 () Bool)

(assert (=> bs!541959 m!3485545))

(assert (=> b!3212983 d!881404))

(declare-fun b!3214058 () Bool)

(declare-fun res!1308344 () Bool)

(declare-fun e!2004040 () Bool)

(assert (=> b!3214058 (=> (not res!1308344) (not e!2004040))))

(declare-fun lt!1087107 () tuple2!35594)

(assert (=> b!3214058 (= res!1308344 (= (list!12877 (_1!20931 lt!1087107)) (_1!20933 (lexList!1314 thiss!18206 rules!2135 (list!12875 (print!1880 thiss!18206 (singletonSeq!2322 (h!41609 (t!239158 tokens!494)))))))))))

(declare-fun e!2004042 () Bool)

(declare-fun b!3214059 () Bool)

(assert (=> b!3214059 (= e!2004042 (= (_2!20931 lt!1087107) (print!1880 thiss!18206 (singletonSeq!2322 (h!41609 (t!239158 tokens!494))))))))

(declare-fun d!881406 () Bool)

(assert (=> d!881406 e!2004040))

(declare-fun res!1308345 () Bool)

(assert (=> d!881406 (=> (not res!1308345) (not e!2004040))))

(assert (=> d!881406 (= res!1308345 e!2004042)))

(declare-fun c!540095 () Bool)

(assert (=> d!881406 (= c!540095 (> (size!27275 (_1!20931 lt!1087107)) 0))))

(assert (=> d!881406 (= lt!1087107 (lexTailRecV2!934 thiss!18206 rules!2135 (print!1880 thiss!18206 (singletonSeq!2322 (h!41609 (t!239158 tokens!494)))) (BalanceConc!21269 Empty!10827) (print!1880 thiss!18206 (singletonSeq!2322 (h!41609 (t!239158 tokens!494)))) (BalanceConc!21271 Empty!10828)))))

(assert (=> d!881406 (= (lex!2145 thiss!18206 rules!2135 (print!1880 thiss!18206 (singletonSeq!2322 (h!41609 (t!239158 tokens!494))))) lt!1087107)))

(declare-fun b!3214060 () Bool)

(declare-fun e!2004041 () Bool)

(assert (=> b!3214060 (= e!2004041 (not (isEmpty!20280 (_1!20931 lt!1087107))))))

(declare-fun b!3214061 () Bool)

(assert (=> b!3214061 (= e!2004040 (= (list!12875 (_2!20931 lt!1087107)) (_2!20933 (lexList!1314 thiss!18206 rules!2135 (list!12875 (print!1880 thiss!18206 (singletonSeq!2322 (h!41609 (t!239158 tokens!494)))))))))))

(declare-fun b!3214062 () Bool)

(assert (=> b!3214062 (= e!2004042 e!2004041)))

(declare-fun res!1308346 () Bool)

(assert (=> b!3214062 (= res!1308346 (< (size!27276 (_2!20931 lt!1087107)) (size!27276 (print!1880 thiss!18206 (singletonSeq!2322 (h!41609 (t!239158 tokens!494)))))))))

(assert (=> b!3214062 (=> (not res!1308346) (not e!2004041))))

(assert (= (and d!881406 c!540095) b!3214062))

(assert (= (and d!881406 (not c!540095)) b!3214059))

(assert (= (and b!3214062 res!1308346) b!3214060))

(assert (= (and d!881406 res!1308345) b!3214058))

(assert (= (and b!3214058 res!1308344) b!3214061))

(declare-fun m!3485547 () Bool)

(assert (=> b!3214058 m!3485547))

(assert (=> b!3214058 m!3483645))

(declare-fun m!3485549 () Bool)

(assert (=> b!3214058 m!3485549))

(assert (=> b!3214058 m!3485549))

(declare-fun m!3485551 () Bool)

(assert (=> b!3214058 m!3485551))

(declare-fun m!3485553 () Bool)

(assert (=> d!881406 m!3485553))

(assert (=> d!881406 m!3483645))

(assert (=> d!881406 m!3483645))

(declare-fun m!3485555 () Bool)

(assert (=> d!881406 m!3485555))

(declare-fun m!3485557 () Bool)

(assert (=> b!3214061 m!3485557))

(assert (=> b!3214061 m!3483645))

(assert (=> b!3214061 m!3485549))

(assert (=> b!3214061 m!3485549))

(assert (=> b!3214061 m!3485551))

(declare-fun m!3485561 () Bool)

(assert (=> b!3214060 m!3485561))

(declare-fun m!3485565 () Bool)

(assert (=> b!3214062 m!3485565))

(assert (=> b!3214062 m!3483645))

(declare-fun m!3485567 () Bool)

(assert (=> b!3214062 m!3485567))

(assert (=> b!3212983 d!881406))

(declare-fun d!881410 () Bool)

(declare-fun lt!1087112 () BalanceConc!21268)

(assert (=> d!881410 (= (list!12875 lt!1087112) (printList!1365 thiss!18206 (list!12877 (singletonSeq!2322 (h!41609 (t!239158 tokens!494))))))))

(assert (=> d!881410 (= lt!1087112 (printTailRec!1312 thiss!18206 (singletonSeq!2322 (h!41609 (t!239158 tokens!494))) 0 (BalanceConc!21269 Empty!10827)))))

(assert (=> d!881410 (= (print!1880 thiss!18206 (singletonSeq!2322 (h!41609 (t!239158 tokens!494)))) lt!1087112)))

(declare-fun bs!541962 () Bool)

(assert (= bs!541962 d!881410))

(declare-fun m!3485573 () Bool)

(assert (=> bs!541962 m!3485573))

(assert (=> bs!541962 m!3483357))

(assert (=> bs!541962 m!3483651))

(assert (=> bs!541962 m!3483651))

(declare-fun m!3485575 () Bool)

(assert (=> bs!541962 m!3485575))

(assert (=> bs!541962 m!3483357))

(declare-fun m!3485577 () Bool)

(assert (=> bs!541962 m!3485577))

(assert (=> b!3212983 d!881410))

(assert (=> b!3212983 d!880906))

(declare-fun d!881414 () Bool)

(declare-fun res!1308368 () Bool)

(declare-fun e!2004054 () Bool)

(assert (=> d!881414 (=> res!1308368 e!2004054)))

(assert (=> d!881414 (= res!1308368 (not ((_ is Node!10828) (c!539814 lt!1086749))))))

(assert (=> d!881414 (= (isBalanced!3220 (c!539814 lt!1086749)) e!2004054)))

(declare-fun b!3214088 () Bool)

(declare-fun res!1308369 () Bool)

(declare-fun e!2004055 () Bool)

(assert (=> b!3214088 (=> (not res!1308369) (not e!2004055))))

(assert (=> b!3214088 (= res!1308369 (isBalanced!3220 (right!28473 (c!539814 lt!1086749))))))

(declare-fun b!3214089 () Bool)

(declare-fun res!1308366 () Bool)

(assert (=> b!3214089 (=> (not res!1308366) (not e!2004055))))

(assert (=> b!3214089 (= res!1308366 (isBalanced!3220 (left!28143 (c!539814 lt!1086749))))))

(declare-fun b!3214090 () Bool)

(declare-fun res!1308365 () Bool)

(assert (=> b!3214090 (=> (not res!1308365) (not e!2004055))))

(assert (=> b!3214090 (= res!1308365 (not (isEmpty!20293 (left!28143 (c!539814 lt!1086749)))))))

(declare-fun b!3214091 () Bool)

(declare-fun res!1308367 () Bool)

(assert (=> b!3214091 (=> (not res!1308367) (not e!2004055))))

(declare-fun height!1557 (Conc!10828) Int)

(assert (=> b!3214091 (= res!1308367 (<= (- (height!1557 (left!28143 (c!539814 lt!1086749))) (height!1557 (right!28473 (c!539814 lt!1086749)))) 1))))

(declare-fun b!3214092 () Bool)

(assert (=> b!3214092 (= e!2004055 (not (isEmpty!20293 (right!28473 (c!539814 lt!1086749)))))))

(declare-fun b!3214093 () Bool)

(assert (=> b!3214093 (= e!2004054 e!2004055)))

(declare-fun res!1308364 () Bool)

(assert (=> b!3214093 (=> (not res!1308364) (not e!2004055))))

(assert (=> b!3214093 (= res!1308364 (<= (- 1) (- (height!1557 (left!28143 (c!539814 lt!1086749))) (height!1557 (right!28473 (c!539814 lt!1086749))))))))

(assert (= (and d!881414 (not res!1308368)) b!3214093))

(assert (= (and b!3214093 res!1308364) b!3214091))

(assert (= (and b!3214091 res!1308367) b!3214089))

(assert (= (and b!3214089 res!1308366) b!3214088))

(assert (= (and b!3214088 res!1308369) b!3214090))

(assert (= (and b!3214090 res!1308365) b!3214092))

(declare-fun m!3485595 () Bool)

(assert (=> b!3214088 m!3485595))

(declare-fun m!3485597 () Bool)

(assert (=> b!3214089 m!3485597))

(declare-fun m!3485599 () Bool)

(assert (=> b!3214091 m!3485599))

(declare-fun m!3485601 () Bool)

(assert (=> b!3214091 m!3485601))

(declare-fun m!3485603 () Bool)

(assert (=> b!3214090 m!3485603))

(declare-fun m!3485605 () Bool)

(assert (=> b!3214092 m!3485605))

(assert (=> b!3214093 m!3485599))

(assert (=> b!3214093 m!3485601))

(assert (=> b!3213200 d!881414))

(declare-fun b!3214094 () Bool)

(declare-fun res!1308375 () Bool)

(declare-fun e!2004059 () Bool)

(assert (=> b!3214094 (=> res!1308375 e!2004059)))

(assert (=> b!3214094 (= res!1308375 (not (isEmpty!20288 (tail!5217 (list!12875 (charsOf!3242 (_1!20932 (get!11526 lt!1086791))))))))))

(declare-fun b!3214095 () Bool)

(declare-fun res!1308377 () Bool)

(declare-fun e!2004057 () Bool)

(assert (=> b!3214095 (=> res!1308377 e!2004057)))

(declare-fun e!2004058 () Bool)

(assert (=> b!3214095 (= res!1308377 e!2004058)))

(declare-fun res!1308372 () Bool)

(assert (=> b!3214095 (=> (not res!1308372) (not e!2004058))))

(declare-fun lt!1087113 () Bool)

(assert (=> b!3214095 (= res!1308372 lt!1087113)))

(declare-fun bm!232584 () Bool)

(declare-fun call!232589 () Bool)

(assert (=> bm!232584 (= call!232589 (isEmpty!20288 (list!12875 (charsOf!3242 (_1!20932 (get!11526 lt!1086791))))))))

(declare-fun b!3214096 () Bool)

(assert (=> b!3214096 (= e!2004058 (= (head!7047 (list!12875 (charsOf!3242 (_1!20932 (get!11526 lt!1086791))))) (c!539812 (regex!5226 (rule!7672 (h!41609 tokens!494))))))))

(declare-fun b!3214097 () Bool)

(declare-fun e!2004062 () Bool)

(assert (=> b!3214097 (= e!2004062 (matchR!4619 (derivativeStep!2953 (regex!5226 (rule!7672 (h!41609 tokens!494))) (head!7047 (list!12875 (charsOf!3242 (_1!20932 (get!11526 lt!1086791)))))) (tail!5217 (list!12875 (charsOf!3242 (_1!20932 (get!11526 lt!1086791)))))))))

(declare-fun d!881424 () Bool)

(declare-fun e!2004060 () Bool)

(assert (=> d!881424 e!2004060))

(declare-fun c!540100 () Bool)

(assert (=> d!881424 (= c!540100 ((_ is EmptyExpr!9985) (regex!5226 (rule!7672 (h!41609 tokens!494)))))))

(assert (=> d!881424 (= lt!1087113 e!2004062)))

(declare-fun c!540102 () Bool)

(assert (=> d!881424 (= c!540102 (isEmpty!20288 (list!12875 (charsOf!3242 (_1!20932 (get!11526 lt!1086791))))))))

(assert (=> d!881424 (validRegex!4554 (regex!5226 (rule!7672 (h!41609 tokens!494))))))

(assert (=> d!881424 (= (matchR!4619 (regex!5226 (rule!7672 (h!41609 tokens!494))) (list!12875 (charsOf!3242 (_1!20932 (get!11526 lt!1086791))))) lt!1087113)))

(declare-fun b!3214098 () Bool)

(declare-fun e!2004061 () Bool)

(assert (=> b!3214098 (= e!2004061 (not lt!1087113))))

(declare-fun b!3214099 () Bool)

(assert (=> b!3214099 (= e!2004059 (not (= (head!7047 (list!12875 (charsOf!3242 (_1!20932 (get!11526 lt!1086791))))) (c!539812 (regex!5226 (rule!7672 (h!41609 tokens!494)))))))))

(declare-fun b!3214100 () Bool)

(declare-fun res!1308374 () Bool)

(assert (=> b!3214100 (=> (not res!1308374) (not e!2004058))))

(assert (=> b!3214100 (= res!1308374 (isEmpty!20288 (tail!5217 (list!12875 (charsOf!3242 (_1!20932 (get!11526 lt!1086791)))))))))

(declare-fun b!3214101 () Bool)

(declare-fun res!1308370 () Bool)

(assert (=> b!3214101 (=> (not res!1308370) (not e!2004058))))

(assert (=> b!3214101 (= res!1308370 (not call!232589))))

(declare-fun b!3214102 () Bool)

(declare-fun e!2004056 () Bool)

(assert (=> b!3214102 (= e!2004057 e!2004056)))

(declare-fun res!1308373 () Bool)

(assert (=> b!3214102 (=> (not res!1308373) (not e!2004056))))

(assert (=> b!3214102 (= res!1308373 (not lt!1087113))))

(declare-fun b!3214103 () Bool)

(assert (=> b!3214103 (= e!2004060 e!2004061)))

(declare-fun c!540101 () Bool)

(assert (=> b!3214103 (= c!540101 ((_ is EmptyLang!9985) (regex!5226 (rule!7672 (h!41609 tokens!494)))))))

(declare-fun b!3214104 () Bool)

(declare-fun res!1308371 () Bool)

(assert (=> b!3214104 (=> res!1308371 e!2004057)))

(assert (=> b!3214104 (= res!1308371 (not ((_ is ElementMatch!9985) (regex!5226 (rule!7672 (h!41609 tokens!494))))))))

(assert (=> b!3214104 (= e!2004061 e!2004057)))

(declare-fun b!3214105 () Bool)

(assert (=> b!3214105 (= e!2004056 e!2004059)))

(declare-fun res!1308376 () Bool)

(assert (=> b!3214105 (=> res!1308376 e!2004059)))

(assert (=> b!3214105 (= res!1308376 call!232589)))

(declare-fun b!3214106 () Bool)

(assert (=> b!3214106 (= e!2004062 (nullable!3400 (regex!5226 (rule!7672 (h!41609 tokens!494)))))))

(declare-fun b!3214107 () Bool)

(assert (=> b!3214107 (= e!2004060 (= lt!1087113 call!232589))))

(assert (= (and d!881424 c!540102) b!3214106))

(assert (= (and d!881424 (not c!540102)) b!3214097))

(assert (= (and d!881424 c!540100) b!3214107))

(assert (= (and d!881424 (not c!540100)) b!3214103))

(assert (= (and b!3214103 c!540101) b!3214098))

(assert (= (and b!3214103 (not c!540101)) b!3214104))

(assert (= (and b!3214104 (not res!1308371)) b!3214095))

(assert (= (and b!3214095 res!1308372) b!3214101))

(assert (= (and b!3214101 res!1308370) b!3214100))

(assert (= (and b!3214100 res!1308374) b!3214096))

(assert (= (and b!3214095 (not res!1308377)) b!3214102))

(assert (= (and b!3214102 res!1308373) b!3214105))

(assert (= (and b!3214105 (not res!1308376)) b!3214094))

(assert (= (and b!3214094 (not res!1308375)) b!3214099))

(assert (= (or b!3214107 b!3214105 b!3214101) bm!232584))

(declare-fun m!3485607 () Bool)

(assert (=> b!3214106 m!3485607))

(assert (=> b!3214094 m!3484135))

(declare-fun m!3485609 () Bool)

(assert (=> b!3214094 m!3485609))

(assert (=> b!3214094 m!3485609))

(declare-fun m!3485611 () Bool)

(assert (=> b!3214094 m!3485611))

(assert (=> b!3214096 m!3484135))

(declare-fun m!3485613 () Bool)

(assert (=> b!3214096 m!3485613))

(assert (=> b!3214099 m!3484135))

(assert (=> b!3214099 m!3485613))

(assert (=> b!3214097 m!3484135))

(assert (=> b!3214097 m!3485613))

(assert (=> b!3214097 m!3485613))

(declare-fun m!3485617 () Bool)

(assert (=> b!3214097 m!3485617))

(assert (=> b!3214097 m!3484135))

(assert (=> b!3214097 m!3485609))

(assert (=> b!3214097 m!3485617))

(assert (=> b!3214097 m!3485609))

(declare-fun m!3485619 () Bool)

(assert (=> b!3214097 m!3485619))

(assert (=> d!881424 m!3484135))

(declare-fun m!3485621 () Bool)

(assert (=> d!881424 m!3485621))

(declare-fun m!3485623 () Bool)

(assert (=> d!881424 m!3485623))

(assert (=> bm!232584 m!3484135))

(assert (=> bm!232584 m!3485621))

(assert (=> b!3214100 m!3484135))

(assert (=> b!3214100 m!3485609))

(assert (=> b!3214100 m!3485609))

(assert (=> b!3214100 m!3485611))

(assert (=> b!3213299 d!881424))

(declare-fun d!881430 () Bool)

(assert (=> d!881430 (= (list!12875 (charsOf!3242 (_1!20932 (get!11526 lt!1086791)))) (list!12879 (c!539813 (charsOf!3242 (_1!20932 (get!11526 lt!1086791))))))))

(declare-fun bs!541965 () Bool)

(assert (= bs!541965 d!881430))

(declare-fun m!3485625 () Bool)

(assert (=> bs!541965 m!3485625))

(assert (=> b!3213299 d!881430))

(declare-fun d!881432 () Bool)

(declare-fun lt!1087114 () BalanceConc!21268)

(assert (=> d!881432 (= (list!12875 lt!1087114) (originalCharacters!5940 (_1!20932 (get!11526 lt!1086791))))))

(assert (=> d!881432 (= lt!1087114 (dynLambda!14631 (toChars!7173 (transformation!5226 (rule!7672 (_1!20932 (get!11526 lt!1086791))))) (value!169401 (_1!20932 (get!11526 lt!1086791)))))))

(assert (=> d!881432 (= (charsOf!3242 (_1!20932 (get!11526 lt!1086791))) lt!1087114)))

(declare-fun b_lambda!88215 () Bool)

(assert (=> (not b_lambda!88215) (not d!881432)))

(declare-fun tb!158269 () Bool)

(declare-fun t!239291 () Bool)

(assert (=> (and b!3212813 (= (toChars!7173 (transformation!5226 (rule!7672 separatorToken!241))) (toChars!7173 (transformation!5226 (rule!7672 (_1!20932 (get!11526 lt!1086791)))))) t!239291) tb!158269))

(declare-fun b!3214110 () Bool)

(declare-fun e!2004064 () Bool)

(declare-fun tp!1013819 () Bool)

(assert (=> b!3214110 (= e!2004064 (and (inv!49055 (c!539813 (dynLambda!14631 (toChars!7173 (transformation!5226 (rule!7672 (_1!20932 (get!11526 lt!1086791))))) (value!169401 (_1!20932 (get!11526 lt!1086791)))))) tp!1013819))))

(declare-fun result!200662 () Bool)

(assert (=> tb!158269 (= result!200662 (and (inv!49056 (dynLambda!14631 (toChars!7173 (transformation!5226 (rule!7672 (_1!20932 (get!11526 lt!1086791))))) (value!169401 (_1!20932 (get!11526 lt!1086791))))) e!2004064))))

(assert (= tb!158269 b!3214110))

(declare-fun m!3485627 () Bool)

(assert (=> b!3214110 m!3485627))

(declare-fun m!3485629 () Bool)

(assert (=> tb!158269 m!3485629))

(assert (=> d!881432 t!239291))

(declare-fun b_and!214363 () Bool)

(assert (= b_and!214357 (and (=> t!239291 result!200662) b_and!214363)))

(declare-fun t!239293 () Bool)

(declare-fun tb!158271 () Bool)

(assert (=> (and b!3213760 (= (toChars!7173 (transformation!5226 (rule!7672 (h!41609 (t!239158 tokens!494))))) (toChars!7173 (transformation!5226 (rule!7672 (_1!20932 (get!11526 lt!1086791)))))) t!239293) tb!158271))

(declare-fun result!200664 () Bool)

(assert (= result!200664 result!200662))

(assert (=> d!881432 t!239293))

(declare-fun b_and!214365 () Bool)

(assert (= b_and!214359 (and (=> t!239293 result!200664) b_and!214365)))

(declare-fun tb!158273 () Bool)

(declare-fun t!239295 () Bool)

(assert (=> (and b!3212809 (= (toChars!7173 (transformation!5226 (h!41608 rules!2135))) (toChars!7173 (transformation!5226 (rule!7672 (_1!20932 (get!11526 lt!1086791)))))) t!239295) tb!158273))

(declare-fun result!200666 () Bool)

(assert (= result!200666 result!200662))

(assert (=> d!881432 t!239295))

(declare-fun b_and!214367 () Bool)

(assert (= b_and!214361 (and (=> t!239295 result!200666) b_and!214367)))

(declare-fun tb!158275 () Bool)

(declare-fun t!239297 () Bool)

(assert (=> (and b!3212814 (= (toChars!7173 (transformation!5226 (rule!7672 (h!41609 tokens!494)))) (toChars!7173 (transformation!5226 (rule!7672 (_1!20932 (get!11526 lt!1086791)))))) t!239297) tb!158275))

(declare-fun result!200668 () Bool)

(assert (= result!200668 result!200662))

(assert (=> d!881432 t!239297))

(declare-fun b_and!214369 () Bool)

(assert (= b_and!214355 (and (=> t!239297 result!200668) b_and!214369)))

(declare-fun t!239299 () Bool)

(declare-fun tb!158277 () Bool)

(assert (=> (and b!3213792 (= (toChars!7173 (transformation!5226 (h!41608 (t!239157 rules!2135)))) (toChars!7173 (transformation!5226 (rule!7672 (_1!20932 (get!11526 lt!1086791)))))) t!239299) tb!158277))

(declare-fun result!200670 () Bool)

(assert (= result!200670 result!200662))

(assert (=> d!881432 t!239299))

(declare-fun b_and!214371 () Bool)

(assert (= b_and!214353 (and (=> t!239299 result!200670) b_and!214371)))

(declare-fun m!3485631 () Bool)

(assert (=> d!881432 m!3485631))

(declare-fun m!3485633 () Bool)

(assert (=> d!881432 m!3485633))

(assert (=> b!3213299 d!881432))

(assert (=> b!3213299 d!881356))

(declare-fun d!881434 () Bool)

(declare-fun lt!1087115 () Int)

(assert (=> d!881434 (= lt!1087115 (size!27277 (list!12877 lt!1086550)))))

(assert (=> d!881434 (= lt!1087115 (size!27278 (c!539814 lt!1086550)))))

(assert (=> d!881434 (= (size!27275 lt!1086550) lt!1087115)))

(declare-fun bs!541966 () Bool)

(assert (= bs!541966 d!881434))

(assert (=> bs!541966 m!3484993))

(assert (=> bs!541966 m!3484993))

(declare-fun m!3485635 () Bool)

(assert (=> bs!541966 m!3485635))

(declare-fun m!3485637 () Bool)

(assert (=> bs!541966 m!3485637))

(assert (=> b!3213744 d!881434))

(declare-fun d!881436 () Bool)

(declare-fun charsToInt!0 (List!36310) (_ BitVec 32))

(assert (=> d!881436 (= (inv!16 (value!169401 (h!41609 tokens!494))) (= (charsToInt!0 (text!38639 (value!169401 (h!41609 tokens!494)))) (value!169392 (value!169401 (h!41609 tokens!494)))))))

(declare-fun bs!541967 () Bool)

(assert (= bs!541967 d!881436))

(declare-fun m!3485641 () Bool)

(assert (=> bs!541967 m!3485641))

(assert (=> b!3213736 d!881436))

(declare-fun d!881438 () Bool)

(declare-fun lt!1087116 () Bool)

(assert (=> d!881438 (= lt!1087116 (isEmpty!20292 (list!12877 (_1!20931 lt!1086637))))))

(assert (=> d!881438 (= lt!1087116 (isEmpty!20293 (c!539814 (_1!20931 lt!1086637))))))

(assert (=> d!881438 (= (isEmpty!20280 (_1!20931 lt!1086637)) lt!1087116)))

(declare-fun bs!541968 () Bool)

(assert (= bs!541968 d!881438))

(assert (=> bs!541968 m!3483733))

(assert (=> bs!541968 m!3483733))

(declare-fun m!3485645 () Bool)

(assert (=> bs!541968 m!3485645))

(declare-fun m!3485647 () Bool)

(assert (=> bs!541968 m!3485647))

(assert (=> b!3213023 d!881438))

(declare-fun d!881442 () Bool)

(assert (=> d!881442 (= (list!12875 lt!1086867) (list!12879 (c!539813 lt!1086867)))))

(declare-fun bs!541969 () Bool)

(assert (= bs!541969 d!881442))

(declare-fun m!3485649 () Bool)

(assert (=> bs!541969 m!3485649))

(assert (=> d!881094 d!881442))

(declare-fun d!881444 () Bool)

(assert (=> d!881444 (= (isEmpty!20288 lt!1086557) ((_ is Nil!36187) lt!1086557))))

(assert (=> d!881232 d!881444))

(declare-fun d!881446 () Bool)

(declare-fun res!1308408 () Bool)

(declare-fun e!2004100 () Bool)

(assert (=> d!881446 (=> res!1308408 e!2004100)))

(assert (=> d!881446 (= res!1308408 ((_ is ElementMatch!9985) (regex!5226 (rule!7672 separatorToken!241))))))

(assert (=> d!881446 (= (validRegex!4554 (regex!5226 (rule!7672 separatorToken!241))) e!2004100)))

(declare-fun b!3214161 () Bool)

(declare-fun e!2004097 () Bool)

(declare-fun e!2004099 () Bool)

(assert (=> b!3214161 (= e!2004097 e!2004099)))

(declare-fun res!1308410 () Bool)

(assert (=> b!3214161 (= res!1308410 (not (nullable!3400 (reg!10314 (regex!5226 (rule!7672 separatorToken!241))))))))

(assert (=> b!3214161 (=> (not res!1308410) (not e!2004099))))

(declare-fun c!540116 () Bool)

(declare-fun c!540117 () Bool)

(declare-fun call!232599 () Bool)

(declare-fun bm!232592 () Bool)

(assert (=> bm!232592 (= call!232599 (validRegex!4554 (ite c!540117 (reg!10314 (regex!5226 (rule!7672 separatorToken!241))) (ite c!540116 (regOne!20483 (regex!5226 (rule!7672 separatorToken!241))) (regOne!20482 (regex!5226 (rule!7672 separatorToken!241)))))))))

(declare-fun b!3214162 () Bool)

(declare-fun e!2004101 () Bool)

(assert (=> b!3214162 (= e!2004097 e!2004101)))

(assert (=> b!3214162 (= c!540116 ((_ is Union!9985) (regex!5226 (rule!7672 separatorToken!241))))))

(declare-fun b!3214163 () Bool)

(declare-fun e!2004103 () Bool)

(declare-fun call!232597 () Bool)

(assert (=> b!3214163 (= e!2004103 call!232597)))

(declare-fun b!3214164 () Bool)

(assert (=> b!3214164 (= e!2004099 call!232599)))

(declare-fun b!3214165 () Bool)

(declare-fun e!2004102 () Bool)

(assert (=> b!3214165 (= e!2004102 e!2004103)))

(declare-fun res!1308407 () Bool)

(assert (=> b!3214165 (=> (not res!1308407) (not e!2004103))))

(declare-fun call!232598 () Bool)

(assert (=> b!3214165 (= res!1308407 call!232598)))

(declare-fun b!3214166 () Bool)

(assert (=> b!3214166 (= e!2004100 e!2004097)))

(assert (=> b!3214166 (= c!540117 ((_ is Star!9985) (regex!5226 (rule!7672 separatorToken!241))))))

(declare-fun b!3214167 () Bool)

(declare-fun e!2004098 () Bool)

(assert (=> b!3214167 (= e!2004098 call!232597)))

(declare-fun b!3214168 () Bool)

(declare-fun res!1308409 () Bool)

(assert (=> b!3214168 (=> res!1308409 e!2004102)))

(assert (=> b!3214168 (= res!1308409 (not ((_ is Concat!15441) (regex!5226 (rule!7672 separatorToken!241)))))))

(assert (=> b!3214168 (= e!2004101 e!2004102)))

(declare-fun b!3214169 () Bool)

(declare-fun res!1308406 () Bool)

(assert (=> b!3214169 (=> (not res!1308406) (not e!2004098))))

(assert (=> b!3214169 (= res!1308406 call!232598)))

(assert (=> b!3214169 (= e!2004101 e!2004098)))

(declare-fun bm!232593 () Bool)

(assert (=> bm!232593 (= call!232597 (validRegex!4554 (ite c!540116 (regTwo!20483 (regex!5226 (rule!7672 separatorToken!241))) (regTwo!20482 (regex!5226 (rule!7672 separatorToken!241))))))))

(declare-fun bm!232594 () Bool)

(assert (=> bm!232594 (= call!232598 call!232599)))

(assert (= (and d!881446 (not res!1308408)) b!3214166))

(assert (= (and b!3214166 c!540117) b!3214161))

(assert (= (and b!3214166 (not c!540117)) b!3214162))

(assert (= (and b!3214161 res!1308410) b!3214164))

(assert (= (and b!3214162 c!540116) b!3214169))

(assert (= (and b!3214162 (not c!540116)) b!3214168))

(assert (= (and b!3214169 res!1308406) b!3214167))

(assert (= (and b!3214168 (not res!1308409)) b!3214165))

(assert (= (and b!3214165 res!1308407) b!3214163))

(assert (= (or b!3214167 b!3214163) bm!232593))

(assert (= (or b!3214169 b!3214165) bm!232594))

(assert (= (or b!3214164 bm!232594) bm!232592))

(declare-fun m!3485697 () Bool)

(assert (=> b!3214161 m!3485697))

(declare-fun m!3485699 () Bool)

(assert (=> bm!232592 m!3485699))

(declare-fun m!3485701 () Bool)

(assert (=> bm!232593 m!3485701))

(assert (=> d!881232 d!881446))

(declare-fun b!3214172 () Bool)

(declare-fun res!1308412 () Bool)

(declare-fun e!2004104 () Bool)

(assert (=> b!3214172 (=> (not res!1308412) (not e!2004104))))

(declare-fun lt!1087121 () List!36311)

(assert (=> b!3214172 (= res!1308412 (= (size!27274 lt!1087121) (+ (size!27274 (list!12875 (charsOf!3242 (_1!20932 (get!11526 lt!1086803))))) (size!27274 (_2!20932 (get!11526 lt!1086803))))))))

(declare-fun b!3214171 () Bool)

(declare-fun e!2004105 () List!36311)

(assert (=> b!3214171 (= e!2004105 (Cons!36187 (h!41607 (list!12875 (charsOf!3242 (_1!20932 (get!11526 lt!1086803))))) (++!8688 (t!239156 (list!12875 (charsOf!3242 (_1!20932 (get!11526 lt!1086803))))) (_2!20932 (get!11526 lt!1086803)))))))

(declare-fun b!3214170 () Bool)

(assert (=> b!3214170 (= e!2004105 (_2!20932 (get!11526 lt!1086803)))))

(declare-fun d!881460 () Bool)

(assert (=> d!881460 e!2004104))

(declare-fun res!1308411 () Bool)

(assert (=> d!881460 (=> (not res!1308411) (not e!2004104))))

(assert (=> d!881460 (= res!1308411 (= (content!4894 lt!1087121) ((_ map or) (content!4894 (list!12875 (charsOf!3242 (_1!20932 (get!11526 lt!1086803))))) (content!4894 (_2!20932 (get!11526 lt!1086803))))))))

(assert (=> d!881460 (= lt!1087121 e!2004105)))

(declare-fun c!540118 () Bool)

(assert (=> d!881460 (= c!540118 ((_ is Nil!36187) (list!12875 (charsOf!3242 (_1!20932 (get!11526 lt!1086803))))))))

(assert (=> d!881460 (= (++!8688 (list!12875 (charsOf!3242 (_1!20932 (get!11526 lt!1086803)))) (_2!20932 (get!11526 lt!1086803))) lt!1087121)))

(declare-fun b!3214173 () Bool)

(assert (=> b!3214173 (= e!2004104 (or (not (= (_2!20932 (get!11526 lt!1086803)) Nil!36187)) (= lt!1087121 (list!12875 (charsOf!3242 (_1!20932 (get!11526 lt!1086803)))))))))

(assert (= (and d!881460 c!540118) b!3214170))

(assert (= (and d!881460 (not c!540118)) b!3214171))

(assert (= (and d!881460 res!1308411) b!3214172))

(assert (= (and b!3214172 res!1308412) b!3214173))

(declare-fun m!3485703 () Bool)

(assert (=> b!3214172 m!3485703))

(assert (=> b!3214172 m!3484217))

(declare-fun m!3485705 () Bool)

(assert (=> b!3214172 m!3485705))

(assert (=> b!3214172 m!3484229))

(declare-fun m!3485707 () Bool)

(assert (=> b!3214171 m!3485707))

(declare-fun m!3485709 () Bool)

(assert (=> d!881460 m!3485709))

(assert (=> d!881460 m!3484217))

(declare-fun m!3485711 () Bool)

(assert (=> d!881460 m!3485711))

(declare-fun m!3485713 () Bool)

(assert (=> d!881460 m!3485713))

(assert (=> b!3213327 d!881460))

(declare-fun d!881462 () Bool)

(assert (=> d!881462 (= (list!12875 (charsOf!3242 (_1!20932 (get!11526 lt!1086803)))) (list!12879 (c!539813 (charsOf!3242 (_1!20932 (get!11526 lt!1086803))))))))

(declare-fun bs!541971 () Bool)

(assert (= bs!541971 d!881462))

(declare-fun m!3485715 () Bool)

(assert (=> bs!541971 m!3485715))

(assert (=> b!3213327 d!881462))

(declare-fun d!881464 () Bool)

(declare-fun lt!1087122 () BalanceConc!21268)

(assert (=> d!881464 (= (list!12875 lt!1087122) (originalCharacters!5940 (_1!20932 (get!11526 lt!1086803))))))

(assert (=> d!881464 (= lt!1087122 (dynLambda!14631 (toChars!7173 (transformation!5226 (rule!7672 (_1!20932 (get!11526 lt!1086803))))) (value!169401 (_1!20932 (get!11526 lt!1086803)))))))

(assert (=> d!881464 (= (charsOf!3242 (_1!20932 (get!11526 lt!1086803))) lt!1087122)))

(declare-fun b_lambda!88217 () Bool)

(assert (=> (not b_lambda!88217) (not d!881464)))

(declare-fun tb!158279 () Bool)

(declare-fun t!239302 () Bool)

(assert (=> (and b!3212809 (= (toChars!7173 (transformation!5226 (h!41608 rules!2135))) (toChars!7173 (transformation!5226 (rule!7672 (_1!20932 (get!11526 lt!1086803)))))) t!239302) tb!158279))

(declare-fun b!3214176 () Bool)

(declare-fun e!2004108 () Bool)

(declare-fun tp!1013820 () Bool)

(assert (=> b!3214176 (= e!2004108 (and (inv!49055 (c!539813 (dynLambda!14631 (toChars!7173 (transformation!5226 (rule!7672 (_1!20932 (get!11526 lt!1086803))))) (value!169401 (_1!20932 (get!11526 lt!1086803)))))) tp!1013820))))

(declare-fun result!200672 () Bool)

(assert (=> tb!158279 (= result!200672 (and (inv!49056 (dynLambda!14631 (toChars!7173 (transformation!5226 (rule!7672 (_1!20932 (get!11526 lt!1086803))))) (value!169401 (_1!20932 (get!11526 lt!1086803))))) e!2004108))))

(assert (= tb!158279 b!3214176))

(declare-fun m!3485717 () Bool)

(assert (=> b!3214176 m!3485717))

(declare-fun m!3485719 () Bool)

(assert (=> tb!158279 m!3485719))

(assert (=> d!881464 t!239302))

(declare-fun b_and!214373 () Bool)

(assert (= b_and!214367 (and (=> t!239302 result!200672) b_and!214373)))

(declare-fun t!239304 () Bool)

(declare-fun tb!158281 () Bool)

(assert (=> (and b!3213760 (= (toChars!7173 (transformation!5226 (rule!7672 (h!41609 (t!239158 tokens!494))))) (toChars!7173 (transformation!5226 (rule!7672 (_1!20932 (get!11526 lt!1086803)))))) t!239304) tb!158281))

(declare-fun result!200674 () Bool)

(assert (= result!200674 result!200672))

(assert (=> d!881464 t!239304))

(declare-fun b_and!214375 () Bool)

(assert (= b_and!214365 (and (=> t!239304 result!200674) b_and!214375)))

(declare-fun t!239306 () Bool)

(declare-fun tb!158283 () Bool)

(assert (=> (and b!3213792 (= (toChars!7173 (transformation!5226 (h!41608 (t!239157 rules!2135)))) (toChars!7173 (transformation!5226 (rule!7672 (_1!20932 (get!11526 lt!1086803)))))) t!239306) tb!158283))

(declare-fun result!200676 () Bool)

(assert (= result!200676 result!200672))

(assert (=> d!881464 t!239306))

(declare-fun b_and!214377 () Bool)

(assert (= b_and!214371 (and (=> t!239306 result!200676) b_and!214377)))

(declare-fun t!239308 () Bool)

(declare-fun tb!158285 () Bool)

(assert (=> (and b!3212813 (= (toChars!7173 (transformation!5226 (rule!7672 separatorToken!241))) (toChars!7173 (transformation!5226 (rule!7672 (_1!20932 (get!11526 lt!1086803)))))) t!239308) tb!158285))

(declare-fun result!200678 () Bool)

(assert (= result!200678 result!200672))

(assert (=> d!881464 t!239308))

(declare-fun b_and!214379 () Bool)

(assert (= b_and!214363 (and (=> t!239308 result!200678) b_and!214379)))

(declare-fun t!239310 () Bool)

(declare-fun tb!158287 () Bool)

(assert (=> (and b!3212814 (= (toChars!7173 (transformation!5226 (rule!7672 (h!41609 tokens!494)))) (toChars!7173 (transformation!5226 (rule!7672 (_1!20932 (get!11526 lt!1086803)))))) t!239310) tb!158287))

(declare-fun result!200680 () Bool)

(assert (= result!200680 result!200672))

(assert (=> d!881464 t!239310))

(declare-fun b_and!214381 () Bool)

(assert (= b_and!214369 (and (=> t!239310 result!200680) b_and!214381)))

(declare-fun m!3485721 () Bool)

(assert (=> d!881464 m!3485721))

(declare-fun m!3485723 () Bool)

(assert (=> d!881464 m!3485723))

(assert (=> b!3213327 d!881464))

(declare-fun d!881466 () Bool)

(assert (=> d!881466 (= (get!11526 lt!1086803) (v!35713 lt!1086803))))

(assert (=> b!3213327 d!881466))

(declare-fun d!881468 () Bool)

(assert (=> d!881468 (= (isEmpty!20288 lt!1086561) ((_ is Nil!36187) lt!1086561))))

(assert (=> bm!232544 d!881468))

(declare-fun d!881470 () Bool)

(declare-fun lt!1087125 () Int)

(assert (=> d!881470 (>= lt!1087125 0)))

(declare-fun e!2004115 () Int)

(assert (=> d!881470 (= lt!1087125 e!2004115)))

(declare-fun c!540121 () Bool)

(assert (=> d!881470 (= c!540121 ((_ is Nil!36189) (list!12877 (_1!20931 lt!1086541))))))

(assert (=> d!881470 (= (size!27277 (list!12877 (_1!20931 lt!1086541))) lt!1087125)))

(declare-fun b!3214197 () Bool)

(assert (=> b!3214197 (= e!2004115 0)))

(declare-fun b!3214198 () Bool)

(assert (=> b!3214198 (= e!2004115 (+ 1 (size!27277 (t!239158 (list!12877 (_1!20931 lt!1086541))))))))

(assert (= (and d!881470 c!540121) b!3214197))

(assert (= (and d!881470 (not c!540121)) b!3214198))

(declare-fun m!3485725 () Bool)

(assert (=> b!3214198 m!3485725))

(assert (=> d!881012 d!881470))

(assert (=> d!881012 d!881368))

(declare-fun d!881472 () Bool)

(declare-fun lt!1087130 () Int)

(assert (=> d!881472 (= lt!1087130 (size!27277 (list!12881 (c!539814 (_1!20931 lt!1086541)))))))

(assert (=> d!881472 (= lt!1087130 (ite ((_ is Empty!10828) (c!539814 (_1!20931 lt!1086541))) 0 (ite ((_ is Leaf!17052) (c!539814 (_1!20931 lt!1086541))) (csize!21887 (c!539814 (_1!20931 lt!1086541))) (csize!21886 (c!539814 (_1!20931 lt!1086541))))))))

(assert (=> d!881472 (= (size!27278 (c!539814 (_1!20931 lt!1086541))) lt!1087130)))

(declare-fun bs!541972 () Bool)

(assert (= bs!541972 d!881472))

(assert (=> bs!541972 m!3485309))

(assert (=> bs!541972 m!3485309))

(declare-fun m!3485739 () Bool)

(assert (=> bs!541972 m!3485739))

(assert (=> d!881012 d!881472))

(assert (=> d!880946 d!881114))

(declare-fun d!881476 () Bool)

(assert (=> d!881476 (rulesProduceIndividualToken!2307 thiss!18206 rules!2135 (h!41609 tokens!494))))

(assert (=> d!881476 true))

(declare-fun _$77!812 () Unit!50676)

(assert (=> d!881476 (= (choose!18753 thiss!18206 rules!2135 tokens!494 (h!41609 tokens!494)) _$77!812)))

(declare-fun bs!541973 () Bool)

(assert (= bs!541973 d!881476))

(assert (=> bs!541973 m!3483477))

(assert (=> d!880946 d!881476))

(assert (=> d!880946 d!881226))

(declare-fun d!881478 () Bool)

(assert (=> d!881478 true))

(declare-fun order!18499 () Int)

(declare-fun lambda!117568 () Int)

(declare-fun dynLambda!14632 (Int Int) Int)

(assert (=> d!881478 (< (dynLambda!14623 order!18493 (toValue!7314 (transformation!5226 (h!41608 rules!2135)))) (dynLambda!14632 order!18499 lambda!117568))))

(declare-fun Forall2!865 (Int) Bool)

(assert (=> d!881478 (= (equivClasses!2056 (toChars!7173 (transformation!5226 (h!41608 rules!2135))) (toValue!7314 (transformation!5226 (h!41608 rules!2135)))) (Forall2!865 lambda!117568))))

(declare-fun bs!541977 () Bool)

(assert (= bs!541977 d!881478))

(declare-fun m!3485759 () Bool)

(assert (=> bs!541977 m!3485759))

(assert (=> b!3213549 d!881478))

(declare-fun d!881492 () Bool)

(declare-fun lt!1087136 () Int)

(assert (=> d!881492 (>= lt!1087136 0)))

(declare-fun e!2004125 () Int)

(assert (=> d!881492 (= lt!1087136 e!2004125)))

(declare-fun c!540122 () Bool)

(assert (=> d!881492 (= c!540122 ((_ is Nil!36187) lt!1086866))))

(assert (=> d!881492 (= (size!27274 lt!1086866) lt!1087136)))

(declare-fun b!3214210 () Bool)

(assert (=> b!3214210 (= e!2004125 0)))

(declare-fun b!3214211 () Bool)

(assert (=> b!3214211 (= e!2004125 (+ 1 (size!27274 (t!239156 lt!1086866))))))

(assert (= (and d!881492 c!540122) b!3214210))

(assert (= (and d!881492 (not c!540122)) b!3214211))

(declare-fun m!3485761 () Bool)

(assert (=> b!3214211 m!3485761))

(assert (=> b!3213459 d!881492))

(assert (=> b!3213459 d!880990))

(declare-fun d!881494 () Bool)

(declare-fun lt!1087137 () Int)

(assert (=> d!881494 (>= lt!1087137 0)))

(declare-fun e!2004126 () Int)

(assert (=> d!881494 (= lt!1087137 e!2004126)))

(declare-fun c!540123 () Bool)

(assert (=> d!881494 (= c!540123 ((_ is Nil!36187) lt!1086557))))

(assert (=> d!881494 (= (size!27274 lt!1086557) lt!1087137)))

(declare-fun b!3214212 () Bool)

(assert (=> b!3214212 (= e!2004126 0)))

(declare-fun b!3214213 () Bool)

(assert (=> b!3214213 (= e!2004126 (+ 1 (size!27274 (t!239156 lt!1086557))))))

(assert (= (and d!881494 c!540123) b!3214212))

(assert (= (and d!881494 (not c!540123)) b!3214213))

(declare-fun m!3485765 () Bool)

(assert (=> b!3214213 m!3485765))

(assert (=> b!3213459 d!881494))

(assert (=> d!881230 d!881232))

(declare-fun d!881498 () Bool)

(assert (=> d!881498 (not (matchR!4619 (regex!5226 (rule!7672 separatorToken!241)) lt!1086557))))

(assert (=> d!881498 true))

(declare-fun _$127!267 () Unit!50676)

(assert (=> d!881498 (= (choose!18766 (regex!5226 (rule!7672 separatorToken!241)) lt!1086557 lt!1086540) _$127!267)))

(declare-fun bs!541979 () Bool)

(assert (= bs!541979 d!881498))

(assert (=> bs!541979 m!3483415))

(assert (=> d!881230 d!881498))

(assert (=> d!881230 d!881446))

(assert (=> b!3213707 d!880890))

(declare-fun d!881504 () Bool)

(declare-fun lt!1087139 () Int)

(assert (=> d!881504 (>= lt!1087139 0)))

(declare-fun e!2004128 () Int)

(assert (=> d!881504 (= lt!1087139 e!2004128)))

(declare-fun c!540126 () Bool)

(assert (=> d!881504 (= c!540126 ((_ is Nil!36187) lt!1086872))))

(assert (=> d!881504 (= (size!27274 lt!1086872) lt!1087139)))

(declare-fun b!3214216 () Bool)

(assert (=> b!3214216 (= e!2004128 0)))

(declare-fun b!3214217 () Bool)

(assert (=> b!3214217 (= e!2004128 (+ 1 (size!27274 (t!239156 lt!1086872))))))

(assert (= (and d!881504 c!540126) b!3214216))

(assert (= (and d!881504 (not c!540126)) b!3214217))

(declare-fun m!3485769 () Bool)

(assert (=> b!3214217 m!3485769))

(assert (=> b!3213481 d!881504))

(assert (=> b!3213481 d!880984))

(assert (=> b!3213481 d!881494))

(declare-fun d!881506 () Bool)

(assert (=> d!881506 (= (list!12875 (dynLambda!14631 (toChars!7173 (transformation!5226 (rule!7672 (h!41609 tokens!494)))) (value!169401 (h!41609 tokens!494)))) (list!12879 (c!539813 (dynLambda!14631 (toChars!7173 (transformation!5226 (rule!7672 (h!41609 tokens!494)))) (value!169401 (h!41609 tokens!494))))))))

(declare-fun bs!541980 () Bool)

(assert (= bs!541980 d!881506))

(declare-fun m!3485771 () Bool)

(assert (=> bs!541980 m!3485771))

(assert (=> b!3213515 d!881506))

(declare-fun d!881508 () Bool)

(assert (=> d!881508 (= (get!11524 (getRuleFromTag!931 thiss!18206 rules!2135 (tag!5754 (rule!7672 (h!41609 tokens!494))))) (v!35712 (getRuleFromTag!931 thiss!18206 rules!2135 (tag!5754 (rule!7672 (h!41609 tokens!494))))))))

(assert (=> b!3213314 d!881508))

(assert (=> b!3213314 d!880976))

(declare-fun d!881510 () Bool)

(assert (=> d!881510 (= (list!12877 (_1!20931 lt!1086753)) (list!12881 (c!539814 (_1!20931 lt!1086753))))))

(declare-fun bs!541981 () Bool)

(assert (= bs!541981 d!881510))

(declare-fun m!3485773 () Bool)

(assert (=> bs!541981 m!3485773))

(assert (=> b!3213207 d!881510))

(declare-fun b!3214251 () Bool)

(declare-fun e!2004146 () Bool)

(declare-fun e!2004147 () Bool)

(assert (=> b!3214251 (= e!2004146 e!2004147)))

(declare-fun res!1308452 () Bool)

(declare-fun lt!1087167 () tuple2!35598)

(assert (=> b!3214251 (= res!1308452 (< (size!27274 (_2!20933 lt!1087167)) (size!27274 (list!12875 lt!1086562))))))

(assert (=> b!3214251 (=> (not res!1308452) (not e!2004147))))

(declare-fun b!3214252 () Bool)

(declare-fun e!2004145 () tuple2!35598)

(declare-fun lt!1087165 () Option!7154)

(declare-fun lt!1087166 () tuple2!35598)

(assert (=> b!3214252 (= e!2004145 (tuple2!35599 (Cons!36189 (_1!20932 (v!35713 lt!1087165)) (_1!20933 lt!1087166)) (_2!20933 lt!1087166)))))

(assert (=> b!3214252 (= lt!1087166 (lexList!1314 thiss!18206 rules!2135 (_2!20932 (v!35713 lt!1087165))))))

(declare-fun d!881512 () Bool)

(assert (=> d!881512 e!2004146))

(declare-fun c!540136 () Bool)

(assert (=> d!881512 (= c!540136 (> (size!27277 (_1!20933 lt!1087167)) 0))))

(assert (=> d!881512 (= lt!1087167 e!2004145)))

(declare-fun c!540135 () Bool)

(assert (=> d!881512 (= c!540135 ((_ is Some!7153) lt!1087165))))

(assert (=> d!881512 (= lt!1087165 (maxPrefix!2457 thiss!18206 rules!2135 (list!12875 lt!1086562)))))

(assert (=> d!881512 (= (lexList!1314 thiss!18206 rules!2135 (list!12875 lt!1086562)) lt!1087167)))

(declare-fun b!3214253 () Bool)

(assert (=> b!3214253 (= e!2004146 (= (_2!20933 lt!1087167) (list!12875 lt!1086562)))))

(declare-fun b!3214254 () Bool)

(assert (=> b!3214254 (= e!2004145 (tuple2!35599 Nil!36189 (list!12875 lt!1086562)))))

(declare-fun b!3214255 () Bool)

(assert (=> b!3214255 (= e!2004147 (not (isEmpty!20292 (_1!20933 lt!1087167))))))

(assert (= (and d!881512 c!540135) b!3214252))

(assert (= (and d!881512 (not c!540135)) b!3214254))

(assert (= (and d!881512 c!540136) b!3214251))

(assert (= (and d!881512 (not c!540136)) b!3214253))

(assert (= (and b!3214251 res!1308452) b!3214255))

(declare-fun m!3485813 () Bool)

(assert (=> b!3214251 m!3485813))

(assert (=> b!3214251 m!3484027))

(declare-fun m!3485815 () Bool)

(assert (=> b!3214251 m!3485815))

(declare-fun m!3485817 () Bool)

(assert (=> b!3214252 m!3485817))

(declare-fun m!3485819 () Bool)

(assert (=> d!881512 m!3485819))

(assert (=> d!881512 m!3484027))

(declare-fun m!3485821 () Bool)

(assert (=> d!881512 m!3485821))

(declare-fun m!3485823 () Bool)

(assert (=> b!3214255 m!3485823))

(assert (=> b!3213207 d!881512))

(declare-fun d!881530 () Bool)

(assert (=> d!881530 (= (list!12875 lt!1086562) (list!12879 (c!539813 lt!1086562)))))

(declare-fun bs!541986 () Bool)

(assert (= bs!541986 d!881530))

(declare-fun m!3485825 () Bool)

(assert (=> bs!541986 m!3485825))

(assert (=> b!3213207 d!881530))

(declare-fun b!3214273 () Bool)

(declare-fun e!2004156 () List!36311)

(assert (=> b!3214273 (= e!2004156 (++!8688 (list!12879 (left!28142 (c!539813 (charsOf!3242 separatorToken!241)))) (list!12879 (right!28472 (c!539813 (charsOf!3242 separatorToken!241))))))))

(declare-fun b!3214270 () Bool)

(declare-fun e!2004155 () List!36311)

(assert (=> b!3214270 (= e!2004155 Nil!36187)))

(declare-fun b!3214272 () Bool)

(declare-fun list!12883 (IArray!21659) List!36311)

(assert (=> b!3214272 (= e!2004156 (list!12883 (xs!13945 (c!539813 (charsOf!3242 separatorToken!241)))))))

(declare-fun b!3214271 () Bool)

(assert (=> b!3214271 (= e!2004155 e!2004156)))

(declare-fun c!540142 () Bool)

(assert (=> b!3214271 (= c!540142 ((_ is Leaf!17051) (c!539813 (charsOf!3242 separatorToken!241))))))

(declare-fun d!881532 () Bool)

(declare-fun c!540141 () Bool)

(assert (=> d!881532 (= c!540141 ((_ is Empty!10827) (c!539813 (charsOf!3242 separatorToken!241))))))

(assert (=> d!881532 (= (list!12879 (c!539813 (charsOf!3242 separatorToken!241))) e!2004155)))

(assert (= (and d!881532 c!540141) b!3214270))

(assert (= (and d!881532 (not c!540141)) b!3214271))

(assert (= (and b!3214271 c!540142) b!3214272))

(assert (= (and b!3214271 (not c!540142)) b!3214273))

(declare-fun m!3485847 () Bool)

(assert (=> b!3214273 m!3485847))

(declare-fun m!3485849 () Bool)

(assert (=> b!3214273 m!3485849))

(assert (=> b!3214273 m!3485847))

(assert (=> b!3214273 m!3485849))

(declare-fun m!3485851 () Bool)

(assert (=> b!3214273 m!3485851))

(declare-fun m!3485853 () Bool)

(assert (=> b!3214272 m!3485853))

(assert (=> d!881106 d!881532))

(declare-fun d!881538 () Bool)

(declare-fun e!2004225 () Bool)

(assert (=> d!881538 e!2004225))

(declare-fun res!1308491 () Bool)

(assert (=> d!881538 (=> (not res!1308491) (not e!2004225))))

(declare-fun lt!1087264 () tuple2!35604)

(assert (=> d!881538 (= res!1308491 (= (++!8688 (_1!20936 lt!1087264) (_2!20936 lt!1087264)) lt!1086523))))

(declare-fun e!2004226 () tuple2!35604)

(assert (=> d!881538 (= lt!1087264 e!2004226)))

(declare-fun c!540185 () Bool)

(declare-fun lostCause!883 (Regex!9985) Bool)

(assert (=> d!881538 (= c!540185 (lostCause!883 (regex!5226 (rule!7672 (h!41609 tokens!494)))))))

(declare-fun lt!1087258 () Unit!50676)

(declare-fun Unit!50682 () Unit!50676)

(assert (=> d!881538 (= lt!1087258 Unit!50682)))

(declare-fun getSuffix!1387 (List!36311 List!36311) List!36311)

(assert (=> d!881538 (= (getSuffix!1387 lt!1086523 Nil!36187) lt!1086523)))

(declare-fun lt!1087277 () Unit!50676)

(declare-fun lt!1087278 () Unit!50676)

(assert (=> d!881538 (= lt!1087277 lt!1087278)))

(declare-fun lt!1087285 () List!36311)

(assert (=> d!881538 (= lt!1086523 lt!1087285)))

(declare-fun lemmaSamePrefixThenSameSuffix!1233 (List!36311 List!36311 List!36311 List!36311 List!36311) Unit!50676)

(assert (=> d!881538 (= lt!1087278 (lemmaSamePrefixThenSameSuffix!1233 Nil!36187 lt!1086523 Nil!36187 lt!1087285 lt!1086523))))

(assert (=> d!881538 (= lt!1087285 (getSuffix!1387 lt!1086523 Nil!36187))))

(declare-fun lt!1087265 () Unit!50676)

(declare-fun lt!1087261 () Unit!50676)

(assert (=> d!881538 (= lt!1087265 lt!1087261)))

(assert (=> d!881538 (isPrefix!2786 Nil!36187 (++!8688 Nil!36187 lt!1086523))))

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!1767 (List!36311 List!36311) Unit!50676)

(assert (=> d!881538 (= lt!1087261 (lemmaConcatTwoListThenFirstIsPrefix!1767 Nil!36187 lt!1086523))))

(assert (=> d!881538 (validRegex!4554 (regex!5226 (rule!7672 (h!41609 tokens!494))))))

(assert (=> d!881538 (= (findLongestMatchInner!833 (regex!5226 (rule!7672 (h!41609 tokens!494))) Nil!36187 (size!27274 Nil!36187) lt!1086523 lt!1086523 (size!27274 lt!1086523)) lt!1087264)))

(declare-fun b!3214386 () Bool)

(declare-fun e!2004223 () tuple2!35604)

(assert (=> b!3214386 (= e!2004223 (tuple2!35605 Nil!36187 lt!1086523))))

(declare-fun b!3214387 () Bool)

(declare-fun e!2004224 () tuple2!35604)

(assert (=> b!3214387 (= e!2004224 (tuple2!35605 Nil!36187 lt!1086523))))

(declare-fun bm!232619 () Bool)

(declare-fun call!232624 () Unit!50676)

(declare-fun lemmaIsPrefixSameLengthThenSameList!516 (List!36311 List!36311 List!36311) Unit!50676)

(assert (=> bm!232619 (= call!232624 (lemmaIsPrefixSameLengthThenSameList!516 lt!1086523 Nil!36187 lt!1086523))))

(declare-fun b!3214388 () Bool)

(declare-fun e!2004222 () Bool)

(assert (=> b!3214388 (= e!2004225 e!2004222)))

(declare-fun res!1308490 () Bool)

(assert (=> b!3214388 (=> res!1308490 e!2004222)))

(assert (=> b!3214388 (= res!1308490 (isEmpty!20288 (_1!20936 lt!1087264)))))

(declare-fun bm!232620 () Bool)

(declare-fun call!232625 () C!20156)

(assert (=> bm!232620 (= call!232625 (head!7047 lt!1086523))))

(declare-fun b!3214389 () Bool)

(assert (=> b!3214389 (= e!2004226 (tuple2!35605 Nil!36187 lt!1086523))))

(declare-fun bm!232621 () Bool)

(declare-fun call!232630 () Unit!50676)

(assert (=> bm!232621 (= call!232630 (lemmaIsPrefixRefl!1745 lt!1086523 lt!1086523))))

(declare-fun b!3214390 () Bool)

(declare-fun e!2004229 () tuple2!35604)

(assert (=> b!3214390 (= e!2004229 e!2004224)))

(declare-fun lt!1087282 () tuple2!35604)

(declare-fun call!232628 () tuple2!35604)

(assert (=> b!3214390 (= lt!1087282 call!232628)))

(declare-fun c!540182 () Bool)

(assert (=> b!3214390 (= c!540182 (isEmpty!20288 (_1!20936 lt!1087282)))))

(declare-fun bm!232622 () Bool)

(declare-fun call!232629 () List!36311)

(assert (=> bm!232622 (= call!232629 (tail!5217 lt!1086523))))

(declare-fun b!3214391 () Bool)

(assert (=> b!3214391 (= e!2004224 lt!1087282)))

(declare-fun bm!232623 () Bool)

(declare-fun call!232627 () Bool)

(assert (=> bm!232623 (= call!232627 (isPrefix!2786 lt!1086523 lt!1086523))))

(declare-fun b!3214392 () Bool)

(declare-fun e!2004228 () Unit!50676)

(declare-fun Unit!50683 () Unit!50676)

(assert (=> b!3214392 (= e!2004228 Unit!50683)))

(declare-fun bm!232624 () Bool)

(declare-fun call!232626 () Bool)

(assert (=> bm!232624 (= call!232626 (nullable!3400 (regex!5226 (rule!7672 (h!41609 tokens!494)))))))

(declare-fun b!3214393 () Bool)

(assert (=> b!3214393 (= e!2004229 call!232628)))

(declare-fun b!3214394 () Bool)

(declare-fun c!540184 () Bool)

(assert (=> b!3214394 (= c!540184 call!232626)))

(declare-fun lt!1087280 () Unit!50676)

(declare-fun lt!1087275 () Unit!50676)

(assert (=> b!3214394 (= lt!1087280 lt!1087275)))

(declare-fun lt!1087267 () C!20156)

(declare-fun lt!1087272 () List!36311)

(assert (=> b!3214394 (= (++!8688 (++!8688 Nil!36187 (Cons!36187 lt!1087267 Nil!36187)) lt!1087272) lt!1086523)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!1121 (List!36311 C!20156 List!36311 List!36311) Unit!50676)

(assert (=> b!3214394 (= lt!1087275 (lemmaMoveElementToOtherListKeepsConcatEq!1121 Nil!36187 lt!1087267 lt!1087272 lt!1086523))))

(assert (=> b!3214394 (= lt!1087272 (tail!5217 lt!1086523))))

(assert (=> b!3214394 (= lt!1087267 (head!7047 lt!1086523))))

(declare-fun lt!1087281 () Unit!50676)

(declare-fun lt!1087276 () Unit!50676)

(assert (=> b!3214394 (= lt!1087281 lt!1087276)))

(assert (=> b!3214394 (isPrefix!2786 (++!8688 Nil!36187 (Cons!36187 (head!7047 (getSuffix!1387 lt!1086523 Nil!36187)) Nil!36187)) lt!1086523)))

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!509 (List!36311 List!36311) Unit!50676)

(assert (=> b!3214394 (= lt!1087276 (lemmaAddHeadSuffixToPrefixStillPrefix!509 Nil!36187 lt!1086523))))

(declare-fun lt!1087266 () Unit!50676)

(declare-fun lt!1087268 () Unit!50676)

(assert (=> b!3214394 (= lt!1087266 lt!1087268)))

(assert (=> b!3214394 (= lt!1087268 (lemmaAddHeadSuffixToPrefixStillPrefix!509 Nil!36187 lt!1086523))))

(declare-fun lt!1087269 () List!36311)

(assert (=> b!3214394 (= lt!1087269 (++!8688 Nil!36187 (Cons!36187 (head!7047 lt!1086523) Nil!36187)))))

(declare-fun lt!1087271 () Unit!50676)

(assert (=> b!3214394 (= lt!1087271 e!2004228)))

(declare-fun c!540183 () Bool)

(assert (=> b!3214394 (= c!540183 (= (size!27274 Nil!36187) (size!27274 lt!1086523)))))

(declare-fun lt!1087270 () Unit!50676)

(declare-fun lt!1087284 () Unit!50676)

(assert (=> b!3214394 (= lt!1087270 lt!1087284)))

(assert (=> b!3214394 (<= (size!27274 Nil!36187) (size!27274 lt!1086523))))

(declare-fun lemmaIsPrefixThenSmallerEqSize!317 (List!36311 List!36311) Unit!50676)

(assert (=> b!3214394 (= lt!1087284 (lemmaIsPrefixThenSmallerEqSize!317 Nil!36187 lt!1086523))))

(declare-fun e!2004227 () tuple2!35604)

(assert (=> b!3214394 (= e!2004227 e!2004229)))

(declare-fun b!3214395 () Bool)

(assert (=> b!3214395 (= e!2004223 (tuple2!35605 Nil!36187 Nil!36187))))

(declare-fun bm!232625 () Bool)

(declare-fun call!232631 () Regex!9985)

(assert (=> bm!232625 (= call!232628 (findLongestMatchInner!833 call!232631 lt!1087269 (+ (size!27274 Nil!36187) 1) call!232629 lt!1086523 (size!27274 lt!1086523)))))

(declare-fun b!3214396 () Bool)

(declare-fun c!540181 () Bool)

(assert (=> b!3214396 (= c!540181 call!232626)))

(declare-fun lt!1087279 () Unit!50676)

(declare-fun lt!1087262 () Unit!50676)

(assert (=> b!3214396 (= lt!1087279 lt!1087262)))

(assert (=> b!3214396 (= lt!1086523 Nil!36187)))

(assert (=> b!3214396 (= lt!1087262 call!232624)))

(declare-fun lt!1087283 () Unit!50676)

(declare-fun lt!1087274 () Unit!50676)

(assert (=> b!3214396 (= lt!1087283 lt!1087274)))

(assert (=> b!3214396 call!232627))

(assert (=> b!3214396 (= lt!1087274 call!232630)))

(assert (=> b!3214396 (= e!2004227 e!2004223)))

(declare-fun b!3214397 () Bool)

(assert (=> b!3214397 (= e!2004222 (>= (size!27274 (_1!20936 lt!1087264)) (size!27274 Nil!36187)))))

(declare-fun b!3214398 () Bool)

(assert (=> b!3214398 (= e!2004226 e!2004227)))

(declare-fun c!540186 () Bool)

(assert (=> b!3214398 (= c!540186 (= (size!27274 Nil!36187) (size!27274 lt!1086523)))))

(declare-fun b!3214399 () Bool)

(declare-fun Unit!50684 () Unit!50676)

(assert (=> b!3214399 (= e!2004228 Unit!50684)))

(declare-fun lt!1087263 () Unit!50676)

(assert (=> b!3214399 (= lt!1087263 call!232630)))

(assert (=> b!3214399 call!232627))

(declare-fun lt!1087260 () Unit!50676)

(assert (=> b!3214399 (= lt!1087260 lt!1087263)))

(declare-fun lt!1087273 () Unit!50676)

(assert (=> b!3214399 (= lt!1087273 call!232624)))

(assert (=> b!3214399 (= lt!1086523 Nil!36187)))

(declare-fun lt!1087259 () Unit!50676)

(assert (=> b!3214399 (= lt!1087259 lt!1087273)))

(assert (=> b!3214399 false))

(declare-fun bm!232626 () Bool)

(assert (=> bm!232626 (= call!232631 (derivativeStep!2953 (regex!5226 (rule!7672 (h!41609 tokens!494))) call!232625))))

(assert (= (and d!881538 c!540185) b!3214389))

(assert (= (and d!881538 (not c!540185)) b!3214398))

(assert (= (and b!3214398 c!540186) b!3214396))

(assert (= (and b!3214398 (not c!540186)) b!3214394))

(assert (= (and b!3214396 c!540181) b!3214395))

(assert (= (and b!3214396 (not c!540181)) b!3214386))

(assert (= (and b!3214394 c!540183) b!3214399))

(assert (= (and b!3214394 (not c!540183)) b!3214392))

(assert (= (and b!3214394 c!540184) b!3214390))

(assert (= (and b!3214394 (not c!540184)) b!3214393))

(assert (= (and b!3214390 c!540182) b!3214387))

(assert (= (and b!3214390 (not c!540182)) b!3214391))

(assert (= (or b!3214390 b!3214393) bm!232620))

(assert (= (or b!3214390 b!3214393) bm!232622))

(assert (= (or b!3214390 b!3214393) bm!232626))

(assert (= (or b!3214390 b!3214393) bm!232625))

(assert (= (or b!3214396 b!3214399) bm!232621))

(assert (= (or b!3214396 b!3214399) bm!232623))

(assert (= (or b!3214396 b!3214399) bm!232619))

(assert (= (or b!3214396 b!3214394) bm!232624))

(assert (= (and d!881538 res!1308491) b!3214388))

(assert (= (and b!3214388 (not res!1308490)) b!3214397))

(declare-fun m!3485955 () Bool)

(assert (=> b!3214388 m!3485955))

(declare-fun m!3485957 () Bool)

(assert (=> bm!232621 m!3485957))

(declare-fun m!3485959 () Bool)

(assert (=> bm!232626 m!3485959))

(assert (=> bm!232620 m!3484477))

(declare-fun m!3485961 () Bool)

(assert (=> b!3214390 m!3485961))

(assert (=> bm!232622 m!3484473))

(declare-fun m!3485963 () Bool)

(assert (=> bm!232623 m!3485963))

(assert (=> bm!232624 m!3485607))

(assert (=> bm!232625 m!3483283))

(declare-fun m!3485965 () Bool)

(assert (=> bm!232625 m!3485965))

(declare-fun m!3485967 () Bool)

(assert (=> b!3214397 m!3485967))

(assert (=> b!3214397 m!3484113))

(assert (=> b!3214394 m!3483283))

(assert (=> b!3214394 m!3484473))

(declare-fun m!3485969 () Bool)

(assert (=> b!3214394 m!3485969))

(assert (=> b!3214394 m!3484477))

(declare-fun m!3485971 () Bool)

(assert (=> b!3214394 m!3485971))

(declare-fun m!3485973 () Bool)

(assert (=> b!3214394 m!3485973))

(assert (=> b!3214394 m!3485971))

(declare-fun m!3485975 () Bool)

(assert (=> b!3214394 m!3485975))

(declare-fun m!3485977 () Bool)

(assert (=> b!3214394 m!3485977))

(assert (=> b!3214394 m!3485975))

(declare-fun m!3485979 () Bool)

(assert (=> b!3214394 m!3485979))

(declare-fun m!3485981 () Bool)

(assert (=> b!3214394 m!3485981))

(assert (=> b!3214394 m!3485979))

(declare-fun m!3485983 () Bool)

(assert (=> b!3214394 m!3485983))

(declare-fun m!3485985 () Bool)

(assert (=> b!3214394 m!3485985))

(declare-fun m!3485987 () Bool)

(assert (=> b!3214394 m!3485987))

(assert (=> b!3214394 m!3484113))

(declare-fun m!3485989 () Bool)

(assert (=> bm!232619 m!3485989))

(declare-fun m!3485991 () Bool)

(assert (=> d!881538 m!3485991))

(declare-fun m!3485993 () Bool)

(assert (=> d!881538 m!3485993))

(declare-fun m!3485995 () Bool)

(assert (=> d!881538 m!3485995))

(declare-fun m!3485997 () Bool)

(assert (=> d!881538 m!3485997))

(declare-fun m!3485999 () Bool)

(assert (=> d!881538 m!3485999))

(assert (=> d!881538 m!3485623))

(assert (=> d!881538 m!3485995))

(assert (=> d!881538 m!3485979))

(declare-fun m!3486001 () Bool)

(assert (=> d!881538 m!3486001))

(assert (=> b!3213301 d!881538))

(declare-fun d!881592 () Bool)

(assert (=> d!881592 (= (apply!8208 (transformation!5226 (rule!7672 (h!41609 tokens!494))) (seqFromList!3524 (_1!20936 lt!1086789))) (dynLambda!14629 (toValue!7314 (transformation!5226 (rule!7672 (h!41609 tokens!494)))) (seqFromList!3524 (_1!20936 lt!1086789))))))

(declare-fun b_lambda!88227 () Bool)

(assert (=> (not b_lambda!88227) (not d!881592)))

(declare-fun tb!158309 () Bool)

(declare-fun t!239336 () Bool)

(assert (=> (and b!3213792 (= (toValue!7314 (transformation!5226 (h!41608 (t!239157 rules!2135)))) (toValue!7314 (transformation!5226 (rule!7672 (h!41609 tokens!494))))) t!239336) tb!158309))

(declare-fun result!200702 () Bool)

(assert (=> tb!158309 (= result!200702 (inv!21 (dynLambda!14629 (toValue!7314 (transformation!5226 (rule!7672 (h!41609 tokens!494)))) (seqFromList!3524 (_1!20936 lt!1086789)))))))

(declare-fun m!3486003 () Bool)

(assert (=> tb!158309 m!3486003))

(assert (=> d!881592 t!239336))

(declare-fun b_and!214403 () Bool)

(assert (= b_and!214343 (and (=> t!239336 result!200702) b_and!214403)))

(declare-fun t!239338 () Bool)

(declare-fun tb!158311 () Bool)

(assert (=> (and b!3213760 (= (toValue!7314 (transformation!5226 (rule!7672 (h!41609 (t!239158 tokens!494))))) (toValue!7314 (transformation!5226 (rule!7672 (h!41609 tokens!494))))) t!239338) tb!158311))

(declare-fun result!200704 () Bool)

(assert (= result!200704 result!200702))

(assert (=> d!881592 t!239338))

(declare-fun b_and!214405 () Bool)

(assert (= b_and!214349 (and (=> t!239338 result!200704) b_and!214405)))

(declare-fun tb!158313 () Bool)

(declare-fun t!239340 () Bool)

(assert (=> (and b!3212809 (= (toValue!7314 (transformation!5226 (h!41608 rules!2135))) (toValue!7314 (transformation!5226 (rule!7672 (h!41609 tokens!494))))) t!239340) tb!158313))

(declare-fun result!200706 () Bool)

(assert (= result!200706 result!200702))

(assert (=> d!881592 t!239340))

(declare-fun b_and!214407 () Bool)

(assert (= b_and!214347 (and (=> t!239340 result!200706) b_and!214407)))

(declare-fun t!239342 () Bool)

(declare-fun tb!158315 () Bool)

(assert (=> (and b!3212814 (= (toValue!7314 (transformation!5226 (rule!7672 (h!41609 tokens!494)))) (toValue!7314 (transformation!5226 (rule!7672 (h!41609 tokens!494))))) t!239342) tb!158315))

(declare-fun result!200708 () Bool)

(assert (= result!200708 result!200702))

(assert (=> d!881592 t!239342))

(declare-fun b_and!214409 () Bool)

(assert (= b_and!214351 (and (=> t!239342 result!200708) b_and!214409)))

(declare-fun tb!158317 () Bool)

(declare-fun t!239344 () Bool)

(assert (=> (and b!3212813 (= (toValue!7314 (transformation!5226 (rule!7672 separatorToken!241))) (toValue!7314 (transformation!5226 (rule!7672 (h!41609 tokens!494))))) t!239344) tb!158317))

(declare-fun result!200710 () Bool)

(assert (= result!200710 result!200702))

(assert (=> d!881592 t!239344))

(declare-fun b_and!214411 () Bool)

(assert (= b_and!214345 (and (=> t!239344 result!200710) b_and!214411)))

(assert (=> d!881592 m!3484119))

(declare-fun m!3486005 () Bool)

(assert (=> d!881592 m!3486005))

(assert (=> b!3213301 d!881592))

(assert (=> b!3213301 d!880984))

(declare-fun d!881594 () Bool)

(declare-fun e!2004233 () Bool)

(assert (=> d!881594 e!2004233))

(declare-fun res!1308494 () Bool)

(assert (=> d!881594 (=> res!1308494 e!2004233)))

(assert (=> d!881594 (= res!1308494 (isEmpty!20288 (_1!20936 (findLongestMatchInner!833 (regex!5226 (rule!7672 (h!41609 tokens!494))) Nil!36187 (size!27274 Nil!36187) lt!1086523 lt!1086523 (size!27274 lt!1086523)))))))

(declare-fun lt!1087288 () Unit!50676)

(declare-fun choose!18769 (Regex!9985 List!36311) Unit!50676)

(assert (=> d!881594 (= lt!1087288 (choose!18769 (regex!5226 (rule!7672 (h!41609 tokens!494))) lt!1086523))))

(assert (=> d!881594 (validRegex!4554 (regex!5226 (rule!7672 (h!41609 tokens!494))))))

(assert (=> d!881594 (= (longestMatchIsAcceptedByMatchOrIsEmpty!806 (regex!5226 (rule!7672 (h!41609 tokens!494))) lt!1086523) lt!1087288)))

(declare-fun b!3214402 () Bool)

(assert (=> b!3214402 (= e!2004233 (matchR!4619 (regex!5226 (rule!7672 (h!41609 tokens!494))) (_1!20936 (findLongestMatchInner!833 (regex!5226 (rule!7672 (h!41609 tokens!494))) Nil!36187 (size!27274 Nil!36187) lt!1086523 lt!1086523 (size!27274 lt!1086523)))))))

(assert (= (and d!881594 (not res!1308494)) b!3214402))

(declare-fun m!3486007 () Bool)

(assert (=> d!881594 m!3486007))

(assert (=> d!881594 m!3484113))

(assert (=> d!881594 m!3483283))

(assert (=> d!881594 m!3484115))

(assert (=> d!881594 m!3483283))

(assert (=> d!881594 m!3484113))

(assert (=> d!881594 m!3485623))

(assert (=> d!881594 m!3484127))

(assert (=> b!3214402 m!3484113))

(assert (=> b!3214402 m!3483283))

(assert (=> b!3214402 m!3484113))

(assert (=> b!3214402 m!3483283))

(assert (=> b!3214402 m!3484115))

(assert (=> b!3214402 m!3484117))

(assert (=> b!3213301 d!881594))

(declare-fun b!3214431 () Bool)

(declare-fun e!2004248 () Bool)

(assert (=> b!3214431 (= e!2004248 true)))

(declare-fun d!881596 () Bool)

(assert (=> d!881596 e!2004248))

(assert (= d!881596 b!3214431))

(declare-fun lambda!117581 () Int)

(declare-fun order!18505 () Int)

(declare-fun dynLambda!14634 (Int Int) Int)

(assert (=> b!3214431 (< (dynLambda!14623 order!18493 (toValue!7314 (transformation!5226 (rule!7672 (h!41609 tokens!494))))) (dynLambda!14634 order!18505 lambda!117581))))

(assert (=> b!3214431 (< (dynLambda!14625 order!18497 (toChars!7173 (transformation!5226 (rule!7672 (h!41609 tokens!494))))) (dynLambda!14634 order!18505 lambda!117581))))

(assert (=> d!881596 (= (list!12875 (dynLambda!14631 (toChars!7173 (transformation!5226 (rule!7672 (h!41609 tokens!494)))) (dynLambda!14629 (toValue!7314 (transformation!5226 (rule!7672 (h!41609 tokens!494)))) (seqFromList!3524 (_1!20936 lt!1086789))))) (list!12875 (seqFromList!3524 (_1!20936 lt!1086789))))))

(declare-fun lt!1087327 () Unit!50676)

(declare-fun ForallOf!555 (Int BalanceConc!21268) Unit!50676)

(assert (=> d!881596 (= lt!1087327 (ForallOf!555 lambda!117581 (seqFromList!3524 (_1!20936 lt!1086789))))))

(assert (=> d!881596 (= (lemmaSemiInverse!1179 (transformation!5226 (rule!7672 (h!41609 tokens!494))) (seqFromList!3524 (_1!20936 lt!1086789))) lt!1087327)))

(declare-fun b_lambda!88229 () Bool)

(assert (=> (not b_lambda!88229) (not d!881596)))

(declare-fun t!239346 () Bool)

(declare-fun tb!158319 () Bool)

(assert (=> (and b!3213792 (= (toChars!7173 (transformation!5226 (h!41608 (t!239157 rules!2135)))) (toChars!7173 (transformation!5226 (rule!7672 (h!41609 tokens!494))))) t!239346) tb!158319))

(declare-fun tp!1013823 () Bool)

(declare-fun b!3214432 () Bool)

(declare-fun e!2004249 () Bool)

(assert (=> b!3214432 (= e!2004249 (and (inv!49055 (c!539813 (dynLambda!14631 (toChars!7173 (transformation!5226 (rule!7672 (h!41609 tokens!494)))) (dynLambda!14629 (toValue!7314 (transformation!5226 (rule!7672 (h!41609 tokens!494)))) (seqFromList!3524 (_1!20936 lt!1086789)))))) tp!1013823))))

(declare-fun result!200712 () Bool)

(assert (=> tb!158319 (= result!200712 (and (inv!49056 (dynLambda!14631 (toChars!7173 (transformation!5226 (rule!7672 (h!41609 tokens!494)))) (dynLambda!14629 (toValue!7314 (transformation!5226 (rule!7672 (h!41609 tokens!494)))) (seqFromList!3524 (_1!20936 lt!1086789))))) e!2004249))))

(assert (= tb!158319 b!3214432))

(declare-fun m!3486009 () Bool)

(assert (=> b!3214432 m!3486009))

(declare-fun m!3486011 () Bool)

(assert (=> tb!158319 m!3486011))

(assert (=> d!881596 t!239346))

(declare-fun b_and!214413 () Bool)

(assert (= b_and!214377 (and (=> t!239346 result!200712) b_and!214413)))

(declare-fun t!239348 () Bool)

(declare-fun tb!158321 () Bool)

(assert (=> (and b!3212814 (= (toChars!7173 (transformation!5226 (rule!7672 (h!41609 tokens!494)))) (toChars!7173 (transformation!5226 (rule!7672 (h!41609 tokens!494))))) t!239348) tb!158321))

(declare-fun result!200714 () Bool)

(assert (= result!200714 result!200712))

(assert (=> d!881596 t!239348))

(declare-fun b_and!214415 () Bool)

(assert (= b_and!214381 (and (=> t!239348 result!200714) b_and!214415)))

(declare-fun tb!158323 () Bool)

(declare-fun t!239350 () Bool)

(assert (=> (and b!3212809 (= (toChars!7173 (transformation!5226 (h!41608 rules!2135))) (toChars!7173 (transformation!5226 (rule!7672 (h!41609 tokens!494))))) t!239350) tb!158323))

(declare-fun result!200716 () Bool)

(assert (= result!200716 result!200712))

(assert (=> d!881596 t!239350))

(declare-fun b_and!214417 () Bool)

(assert (= b_and!214373 (and (=> t!239350 result!200716) b_and!214417)))

(declare-fun t!239352 () Bool)

(declare-fun tb!158325 () Bool)

(assert (=> (and b!3213760 (= (toChars!7173 (transformation!5226 (rule!7672 (h!41609 (t!239158 tokens!494))))) (toChars!7173 (transformation!5226 (rule!7672 (h!41609 tokens!494))))) t!239352) tb!158325))

(declare-fun result!200718 () Bool)

(assert (= result!200718 result!200712))

(assert (=> d!881596 t!239352))

(declare-fun b_and!214419 () Bool)

(assert (= b_and!214375 (and (=> t!239352 result!200718) b_and!214419)))

(declare-fun t!239354 () Bool)

(declare-fun tb!158327 () Bool)

(assert (=> (and b!3212813 (= (toChars!7173 (transformation!5226 (rule!7672 separatorToken!241))) (toChars!7173 (transformation!5226 (rule!7672 (h!41609 tokens!494))))) t!239354) tb!158327))

(declare-fun result!200720 () Bool)

(assert (= result!200720 result!200712))

(assert (=> d!881596 t!239354))

(declare-fun b_and!214421 () Bool)

(assert (= b_and!214379 (and (=> t!239354 result!200720) b_and!214421)))

(declare-fun b_lambda!88231 () Bool)

(assert (=> (not b_lambda!88231) (not d!881596)))

(assert (=> d!881596 t!239342))

(declare-fun b_and!214423 () Bool)

(assert (= b_and!214409 (and (=> t!239342 result!200708) b_and!214423)))

(assert (=> d!881596 t!239338))

(declare-fun b_and!214425 () Bool)

(assert (= b_and!214405 (and (=> t!239338 result!200704) b_and!214425)))

(assert (=> d!881596 t!239340))

(declare-fun b_and!214427 () Bool)

(assert (= b_and!214407 (and (=> t!239340 result!200706) b_and!214427)))

(assert (=> d!881596 t!239336))

(declare-fun b_and!214429 () Bool)

(assert (= b_and!214403 (and (=> t!239336 result!200702) b_and!214429)))

(assert (=> d!881596 t!239344))

(declare-fun b_and!214431 () Bool)

(assert (= b_and!214411 (and (=> t!239344 result!200710) b_and!214431)))

(assert (=> d!881596 m!3484119))

(declare-fun m!3486013 () Bool)

(assert (=> d!881596 m!3486013))

(declare-fun m!3486015 () Bool)

(assert (=> d!881596 m!3486015))

(declare-fun m!3486017 () Bool)

(assert (=> d!881596 m!3486017))

(assert (=> d!881596 m!3484119))

(declare-fun m!3486019 () Bool)

(assert (=> d!881596 m!3486019))

(assert (=> d!881596 m!3484119))

(assert (=> d!881596 m!3486005))

(assert (=> d!881596 m!3486005))

(assert (=> d!881596 m!3486015))

(assert (=> b!3213301 d!881596))

(declare-fun d!881598 () Bool)

(assert (=> d!881598 (= (seqFromList!3524 (_1!20936 lt!1086789)) (fromListB!1544 (_1!20936 lt!1086789)))))

(declare-fun bs!541995 () Bool)

(assert (= bs!541995 d!881598))

(declare-fun m!3486021 () Bool)

(assert (=> bs!541995 m!3486021))

(assert (=> b!3213301 d!881598))

(declare-fun d!881600 () Bool)

(declare-fun lt!1087350 () Int)

(assert (=> d!881600 (= lt!1087350 (size!27274 (list!12875 (seqFromList!3524 (_1!20936 lt!1086789)))))))

(declare-fun size!27283 (Conc!10827) Int)

(assert (=> d!881600 (= lt!1087350 (size!27283 (c!539813 (seqFromList!3524 (_1!20936 lt!1086789)))))))

(assert (=> d!881600 (= (size!27276 (seqFromList!3524 (_1!20936 lt!1086789))) lt!1087350)))

(declare-fun bs!541996 () Bool)

(assert (= bs!541996 d!881600))

(assert (=> bs!541996 m!3484119))

(assert (=> bs!541996 m!3486019))

(assert (=> bs!541996 m!3486019))

(declare-fun m!3486023 () Bool)

(assert (=> bs!541996 m!3486023))

(declare-fun m!3486025 () Bool)

(assert (=> bs!541996 m!3486025))

(assert (=> b!3213301 d!881600))

(declare-fun d!881602 () Bool)

(declare-fun lt!1087351 () Int)

(assert (=> d!881602 (>= lt!1087351 0)))

(declare-fun e!2004250 () Int)

(assert (=> d!881602 (= lt!1087351 e!2004250)))

(declare-fun c!540200 () Bool)

(assert (=> d!881602 (= c!540200 ((_ is Nil!36187) Nil!36187))))

(assert (=> d!881602 (= (size!27274 Nil!36187) lt!1087351)))

(declare-fun b!3214433 () Bool)

(assert (=> b!3214433 (= e!2004250 0)))

(declare-fun b!3214434 () Bool)

(assert (=> b!3214434 (= e!2004250 (+ 1 (size!27274 (t!239156 Nil!36187))))))

(assert (= (and d!881602 c!540200) b!3214433))

(assert (= (and d!881602 (not c!540200)) b!3214434))

(declare-fun m!3486027 () Bool)

(assert (=> b!3214434 m!3486027))

(assert (=> b!3213301 d!881602))

(declare-fun d!881604 () Bool)

(assert (=> d!881604 (= (isEmpty!20288 (_1!20936 (findLongestMatchInner!833 (regex!5226 (rule!7672 (h!41609 tokens!494))) Nil!36187 (size!27274 Nil!36187) lt!1086523 lt!1086523 (size!27274 lt!1086523)))) ((_ is Nil!36187) (_1!20936 (findLongestMatchInner!833 (regex!5226 (rule!7672 (h!41609 tokens!494))) Nil!36187 (size!27274 Nil!36187) lt!1086523 lt!1086523 (size!27274 lt!1086523)))))))

(assert (=> b!3213301 d!881604))

(declare-fun d!881606 () Bool)

(assert (=> d!881606 (= (dropList!1079 lt!1086546 0) (drop!1862 (list!12881 (c!539814 lt!1086546)) 0))))

(declare-fun bs!541997 () Bool)

(assert (= bs!541997 d!881606))

(declare-fun m!3486029 () Bool)

(assert (=> bs!541997 m!3486029))

(assert (=> bs!541997 m!3486029))

(declare-fun m!3486031 () Bool)

(assert (=> bs!541997 m!3486031))

(assert (=> d!881018 d!881606))

(declare-fun d!881608 () Bool)

(declare-fun lt!1087352 () Int)

(assert (=> d!881608 (= lt!1087352 (size!27277 (list!12877 lt!1086546)))))

(assert (=> d!881608 (= lt!1087352 (size!27278 (c!539814 lt!1086546)))))

(assert (=> d!881608 (= (size!27275 lt!1086546) lt!1087352)))

(declare-fun bs!541998 () Bool)

(assert (= bs!541998 d!881608))

(assert (=> bs!541998 m!3484267))

(assert (=> bs!541998 m!3484267))

(declare-fun m!3486033 () Bool)

(assert (=> bs!541998 m!3486033))

(declare-fun m!3486035 () Bool)

(assert (=> bs!541998 m!3486035))

(assert (=> d!881018 d!881608))

(declare-fun d!881610 () Bool)

(assert (=> d!881610 (= (list!12875 lt!1086807) (list!12879 (c!539813 lt!1086807)))))

(declare-fun bs!541999 () Bool)

(assert (= bs!541999 d!881610))

(declare-fun m!3486037 () Bool)

(assert (=> bs!541999 m!3486037))

(assert (=> d!881018 d!881610))

(declare-fun d!881612 () Bool)

(assert (=> d!881612 (= (list!12875 (BalanceConc!21269 Empty!10827)) (list!12879 (c!539813 (BalanceConc!21269 Empty!10827))))))

(declare-fun bs!542000 () Bool)

(assert (= bs!542000 d!881612))

(declare-fun m!3486039 () Bool)

(assert (=> bs!542000 m!3486039))

(assert (=> d!881018 d!881612))

(declare-fun d!881614 () Bool)

(declare-fun lt!1087395 () List!36311)

(assert (=> d!881614 (= lt!1087395 (++!8688 (list!12875 (BalanceConc!21269 Empty!10827)) (printList!1365 thiss!18206 (dropList!1079 lt!1086546 0))))))

(declare-fun e!2004265 () List!36311)

(assert (=> d!881614 (= lt!1087395 e!2004265)))

(declare-fun c!540209 () Bool)

(assert (=> d!881614 (= c!540209 ((_ is Cons!36189) (dropList!1079 lt!1086546 0)))))

(assert (=> d!881614 (= (printListTailRec!562 thiss!18206 (dropList!1079 lt!1086546 0) (list!12875 (BalanceConc!21269 Empty!10827))) lt!1087395)))

(declare-fun b!3214457 () Bool)

(assert (=> b!3214457 (= e!2004265 (printListTailRec!562 thiss!18206 (t!239158 (dropList!1079 lt!1086546 0)) (++!8688 (list!12875 (BalanceConc!21269 Empty!10827)) (list!12875 (charsOf!3242 (h!41609 (dropList!1079 lt!1086546 0)))))))))

(declare-fun lt!1087393 () List!36311)

(assert (=> b!3214457 (= lt!1087393 (list!12875 (charsOf!3242 (h!41609 (dropList!1079 lt!1086546 0)))))))

(declare-fun lt!1087394 () List!36311)

(assert (=> b!3214457 (= lt!1087394 (printList!1365 thiss!18206 (t!239158 (dropList!1079 lt!1086546 0))))))

(declare-fun lt!1087391 () Unit!50676)

(assert (=> b!3214457 (= lt!1087391 (lemmaConcatAssociativity!1750 (list!12875 (BalanceConc!21269 Empty!10827)) lt!1087393 lt!1087394))))

(assert (=> b!3214457 (= (++!8688 (++!8688 (list!12875 (BalanceConc!21269 Empty!10827)) lt!1087393) lt!1087394) (++!8688 (list!12875 (BalanceConc!21269 Empty!10827)) (++!8688 lt!1087393 lt!1087394)))))

(declare-fun lt!1087392 () Unit!50676)

(assert (=> b!3214457 (= lt!1087392 lt!1087391)))

(declare-fun b!3214458 () Bool)

(assert (=> b!3214458 (= e!2004265 (list!12875 (BalanceConc!21269 Empty!10827)))))

(assert (= (and d!881614 c!540209) b!3214457))

(assert (= (and d!881614 (not c!540209)) b!3214458))

(assert (=> d!881614 m!3484239))

(declare-fun m!3486041 () Bool)

(assert (=> d!881614 m!3486041))

(assert (=> d!881614 m!3483815))

(assert (=> d!881614 m!3486041))

(declare-fun m!3486043 () Bool)

(assert (=> d!881614 m!3486043))

(declare-fun m!3486045 () Bool)

(assert (=> b!3214457 m!3486045))

(declare-fun m!3486047 () Bool)

(assert (=> b!3214457 m!3486047))

(assert (=> b!3214457 m!3486045))

(declare-fun m!3486049 () Bool)

(assert (=> b!3214457 m!3486049))

(declare-fun m!3486051 () Bool)

(assert (=> b!3214457 m!3486051))

(assert (=> b!3214457 m!3483815))

(declare-fun m!3486053 () Bool)

(assert (=> b!3214457 m!3486053))

(declare-fun m!3486055 () Bool)

(assert (=> b!3214457 m!3486055))

(assert (=> b!3214457 m!3483815))

(assert (=> b!3214457 m!3486047))

(assert (=> b!3214457 m!3486049))

(declare-fun m!3486057 () Bool)

(assert (=> b!3214457 m!3486057))

(declare-fun m!3486059 () Bool)

(assert (=> b!3214457 m!3486059))

(assert (=> b!3214457 m!3486053))

(assert (=> b!3214457 m!3483815))

(assert (=> b!3214457 m!3486057))

(declare-fun m!3486061 () Bool)

(assert (=> b!3214457 m!3486061))

(assert (=> b!3214457 m!3483815))

(declare-fun m!3486063 () Bool)

(assert (=> b!3214457 m!3486063))

(assert (=> d!881018 d!881614))

(declare-fun d!881616 () Bool)

(assert (=> d!881616 (= (isEmpty!20288 (tail!5217 lt!1086557)) ((_ is Nil!36187) (tail!5217 lt!1086557)))))

(assert (=> b!3213690 d!881616))

(declare-fun d!881618 () Bool)

(assert (=> d!881618 (= (tail!5217 lt!1086557) (t!239156 lt!1086557))))

(assert (=> b!3213690 d!881618))

(declare-fun d!881620 () Bool)

(declare-fun lt!1087398 () Bool)

(declare-fun content!4897 (List!36312) (InoxSet Rule!10252))

(assert (=> d!881620 (= lt!1087398 (select (content!4897 rules!2135) (get!11524 lt!1086794)))))

(declare-fun e!2004270 () Bool)

(assert (=> d!881620 (= lt!1087398 e!2004270)))

(declare-fun res!1308505 () Bool)

(assert (=> d!881620 (=> (not res!1308505) (not e!2004270))))

(assert (=> d!881620 (= res!1308505 ((_ is Cons!36188) rules!2135))))

(assert (=> d!881620 (= (contains!6470 rules!2135 (get!11524 lt!1086794)) lt!1087398)))

(declare-fun b!3214463 () Bool)

(declare-fun e!2004271 () Bool)

(assert (=> b!3214463 (= e!2004270 e!2004271)))

(declare-fun res!1308506 () Bool)

(assert (=> b!3214463 (=> res!1308506 e!2004271)))

(assert (=> b!3214463 (= res!1308506 (= (h!41608 rules!2135) (get!11524 lt!1086794)))))

(declare-fun b!3214464 () Bool)

(assert (=> b!3214464 (= e!2004271 (contains!6470 (t!239157 rules!2135) (get!11524 lt!1086794)))))

(assert (= (and d!881620 res!1308505) b!3214463))

(assert (= (and b!3214463 (not res!1308506)) b!3214464))

(declare-fun m!3486113 () Bool)

(assert (=> d!881620 m!3486113))

(assert (=> d!881620 m!3484157))

(declare-fun m!3486115 () Bool)

(assert (=> d!881620 m!3486115))

(assert (=> b!3214464 m!3484157))

(declare-fun m!3486117 () Bool)

(assert (=> b!3214464 m!3486117))

(assert (=> b!3213311 d!881620))

(declare-fun d!881626 () Bool)

(assert (=> d!881626 (= (get!11524 lt!1086794) (v!35712 lt!1086794))))

(assert (=> b!3213311 d!881626))

(declare-fun d!881628 () Bool)

(assert (=> d!881628 (= (isDefined!5558 (getRuleFromTag!931 thiss!18206 rules!2135 (tag!5754 (rule!7672 (h!41609 (t!239158 tokens!494)))))) (not (isEmpty!20283 (getRuleFromTag!931 thiss!18206 rules!2135 (tag!5754 (rule!7672 (h!41609 (t!239158 tokens!494))))))))))

(declare-fun bs!542001 () Bool)

(assert (= bs!542001 d!881628))

(assert (=> bs!542001 m!3483341))

(declare-fun m!3486119 () Bool)

(assert (=> bs!542001 m!3486119))

(assert (=> d!880928 d!881628))

(assert (=> d!880928 d!880942))

(declare-fun d!881630 () Bool)

(declare-fun e!2004276 () Bool)

(assert (=> d!881630 e!2004276))

(declare-fun res!1308513 () Bool)

(assert (=> d!881630 (=> (not res!1308513) (not e!2004276))))

(assert (=> d!881630 (= res!1308513 (isDefined!5558 (getRuleFromTag!931 thiss!18206 rules!2135 (tag!5754 (rule!7672 (h!41609 (t!239158 tokens!494)))))))))

(assert (=> d!881630 true))

(declare-fun _$52!1573 () Unit!50676)

(assert (=> d!881630 (= (choose!18752 thiss!18206 rules!2135 lt!1086561 (h!41609 (t!239158 tokens!494))) _$52!1573)))

(declare-fun b!3214471 () Bool)

(declare-fun res!1308514 () Bool)

(assert (=> b!3214471 (=> (not res!1308514) (not e!2004276))))

(assert (=> b!3214471 (= res!1308514 (matchR!4619 (regex!5226 (get!11524 (getRuleFromTag!931 thiss!18206 rules!2135 (tag!5754 (rule!7672 (h!41609 (t!239158 tokens!494))))))) (list!12875 (charsOf!3242 (h!41609 (t!239158 tokens!494))))))))

(declare-fun b!3214472 () Bool)

(assert (=> b!3214472 (= e!2004276 (= (rule!7672 (h!41609 (t!239158 tokens!494))) (get!11524 (getRuleFromTag!931 thiss!18206 rules!2135 (tag!5754 (rule!7672 (h!41609 (t!239158 tokens!494))))))))))

(assert (= (and d!881630 res!1308513) b!3214471))

(assert (= (and b!3214471 res!1308514) b!3214472))

(assert (=> d!881630 m!3483341))

(assert (=> d!881630 m!3483341))

(assert (=> d!881630 m!3483795))

(assert (=> b!3214471 m!3483457))

(assert (=> b!3214471 m!3483341))

(assert (=> b!3214471 m!3483799))

(assert (=> b!3214471 m!3483457))

(assert (=> b!3214471 m!3483465))

(assert (=> b!3214471 m!3483341))

(assert (=> b!3214471 m!3483465))

(assert (=> b!3214471 m!3483801))

(assert (=> b!3214472 m!3483341))

(assert (=> b!3214472 m!3483341))

(assert (=> b!3214472 m!3483799))

(assert (=> d!880928 d!881630))

(assert (=> d!880928 d!881228))

(declare-fun d!881632 () Bool)

(declare-fun c!540213 () Bool)

(assert (=> d!881632 (= c!540213 ((_ is Node!10827) (c!539813 (dynLambda!14631 (toChars!7173 (transformation!5226 (rule!7672 (h!41609 (t!239158 tokens!494))))) (value!169401 (h!41609 (t!239158 tokens!494)))))))))

(declare-fun e!2004284 () Bool)

(assert (=> d!881632 (= (inv!49055 (c!539813 (dynLambda!14631 (toChars!7173 (transformation!5226 (rule!7672 (h!41609 (t!239158 tokens!494))))) (value!169401 (h!41609 (t!239158 tokens!494)))))) e!2004284)))

(declare-fun b!3214482 () Bool)

(declare-fun inv!49059 (Conc!10827) Bool)

(assert (=> b!3214482 (= e!2004284 (inv!49059 (c!539813 (dynLambda!14631 (toChars!7173 (transformation!5226 (rule!7672 (h!41609 (t!239158 tokens!494))))) (value!169401 (h!41609 (t!239158 tokens!494)))))))))

(declare-fun b!3214483 () Bool)

(declare-fun e!2004285 () Bool)

(assert (=> b!3214483 (= e!2004284 e!2004285)))

(declare-fun res!1308518 () Bool)

(assert (=> b!3214483 (= res!1308518 (not ((_ is Leaf!17051) (c!539813 (dynLambda!14631 (toChars!7173 (transformation!5226 (rule!7672 (h!41609 (t!239158 tokens!494))))) (value!169401 (h!41609 (t!239158 tokens!494))))))))))

(assert (=> b!3214483 (=> res!1308518 e!2004285)))

(declare-fun b!3214484 () Bool)

(declare-fun inv!49060 (Conc!10827) Bool)

(assert (=> b!3214484 (= e!2004285 (inv!49060 (c!539813 (dynLambda!14631 (toChars!7173 (transformation!5226 (rule!7672 (h!41609 (t!239158 tokens!494))))) (value!169401 (h!41609 (t!239158 tokens!494)))))))))

(assert (= (and d!881632 c!540213) b!3214482))

(assert (= (and d!881632 (not c!540213)) b!3214483))

(assert (= (and b!3214483 (not res!1308518)) b!3214484))

(declare-fun m!3486137 () Bool)

(assert (=> b!3214482 m!3486137))

(declare-fun m!3486139 () Bool)

(assert (=> b!3214484 m!3486139))

(assert (=> b!3213474 d!881632))

(declare-fun d!881644 () Bool)

(assert (=> d!881644 (= (list!12875 lt!1086586) (list!12879 (c!539813 lt!1086586)))))

(declare-fun bs!542004 () Bool)

(assert (= bs!542004 d!881644))

(declare-fun m!3486141 () Bool)

(assert (=> bs!542004 m!3486141))

(assert (=> d!880892 d!881644))

(declare-fun d!881646 () Bool)

(declare-fun c!540214 () Bool)

(assert (=> d!881646 (= c!540214 ((_ is Cons!36189) (list!12877 lt!1086554)))))

(declare-fun e!2004286 () List!36311)

(assert (=> d!881646 (= (printList!1365 thiss!18206 (list!12877 lt!1086554)) e!2004286)))

(declare-fun b!3214485 () Bool)

(assert (=> b!3214485 (= e!2004286 (++!8688 (list!12875 (charsOf!3242 (h!41609 (list!12877 lt!1086554)))) (printList!1365 thiss!18206 (t!239158 (list!12877 lt!1086554)))))))

(declare-fun b!3214486 () Bool)

(assert (=> b!3214486 (= e!2004286 Nil!36187)))

(assert (= (and d!881646 c!540214) b!3214485))

(assert (= (and d!881646 (not c!540214)) b!3214486))

(declare-fun m!3486143 () Bool)

(assert (=> b!3214485 m!3486143))

(assert (=> b!3214485 m!3486143))

(declare-fun m!3486145 () Bool)

(assert (=> b!3214485 m!3486145))

(declare-fun m!3486147 () Bool)

(assert (=> b!3214485 m!3486147))

(assert (=> b!3214485 m!3486145))

(assert (=> b!3214485 m!3486147))

(declare-fun m!3486149 () Bool)

(assert (=> b!3214485 m!3486149))

(assert (=> d!880892 d!881646))

(declare-fun d!881648 () Bool)

(assert (=> d!881648 (= (list!12877 lt!1086554) (list!12881 (c!539814 lt!1086554)))))

(declare-fun bs!542005 () Bool)

(assert (= bs!542005 d!881648))

(declare-fun m!3486151 () Bool)

(assert (=> bs!542005 m!3486151))

(assert (=> d!880892 d!881648))

(assert (=> d!880892 d!880934))

(assert (=> d!881122 d!881468))

(declare-fun d!881650 () Bool)

(declare-fun res!1308521 () Bool)

(declare-fun e!2004290 () Bool)

(assert (=> d!881650 (=> res!1308521 e!2004290)))

(assert (=> d!881650 (= res!1308521 ((_ is ElementMatch!9985) (regex!5226 lt!1086545)))))

(assert (=> d!881650 (= (validRegex!4554 (regex!5226 lt!1086545)) e!2004290)))

(declare-fun b!3214487 () Bool)

(declare-fun e!2004287 () Bool)

(declare-fun e!2004289 () Bool)

(assert (=> b!3214487 (= e!2004287 e!2004289)))

(declare-fun res!1308523 () Bool)

(assert (=> b!3214487 (= res!1308523 (not (nullable!3400 (reg!10314 (regex!5226 lt!1086545)))))))

(assert (=> b!3214487 (=> (not res!1308523) (not e!2004289))))

(declare-fun c!540215 () Bool)

(declare-fun bm!232651 () Bool)

(declare-fun call!232658 () Bool)

(declare-fun c!540216 () Bool)

(assert (=> bm!232651 (= call!232658 (validRegex!4554 (ite c!540216 (reg!10314 (regex!5226 lt!1086545)) (ite c!540215 (regOne!20483 (regex!5226 lt!1086545)) (regOne!20482 (regex!5226 lt!1086545))))))))

(declare-fun b!3214488 () Bool)

(declare-fun e!2004291 () Bool)

(assert (=> b!3214488 (= e!2004287 e!2004291)))

(assert (=> b!3214488 (= c!540215 ((_ is Union!9985) (regex!5226 lt!1086545)))))

(declare-fun b!3214489 () Bool)

(declare-fun e!2004293 () Bool)

(declare-fun call!232656 () Bool)

(assert (=> b!3214489 (= e!2004293 call!232656)))

(declare-fun b!3214490 () Bool)

(assert (=> b!3214490 (= e!2004289 call!232658)))

(declare-fun b!3214491 () Bool)

(declare-fun e!2004292 () Bool)

(assert (=> b!3214491 (= e!2004292 e!2004293)))

(declare-fun res!1308520 () Bool)

(assert (=> b!3214491 (=> (not res!1308520) (not e!2004293))))

(declare-fun call!232657 () Bool)

(assert (=> b!3214491 (= res!1308520 call!232657)))

(declare-fun b!3214492 () Bool)

(assert (=> b!3214492 (= e!2004290 e!2004287)))

(assert (=> b!3214492 (= c!540216 ((_ is Star!9985) (regex!5226 lt!1086545)))))

(declare-fun b!3214493 () Bool)

(declare-fun e!2004288 () Bool)

(assert (=> b!3214493 (= e!2004288 call!232656)))

(declare-fun b!3214494 () Bool)

(declare-fun res!1308522 () Bool)

(assert (=> b!3214494 (=> res!1308522 e!2004292)))

(assert (=> b!3214494 (= res!1308522 (not ((_ is Concat!15441) (regex!5226 lt!1086545))))))

(assert (=> b!3214494 (= e!2004291 e!2004292)))

(declare-fun b!3214495 () Bool)

(declare-fun res!1308519 () Bool)

(assert (=> b!3214495 (=> (not res!1308519) (not e!2004288))))

(assert (=> b!3214495 (= res!1308519 call!232657)))

(assert (=> b!3214495 (= e!2004291 e!2004288)))

(declare-fun bm!232652 () Bool)

(assert (=> bm!232652 (= call!232656 (validRegex!4554 (ite c!540215 (regTwo!20483 (regex!5226 lt!1086545)) (regTwo!20482 (regex!5226 lt!1086545)))))))

(declare-fun bm!232653 () Bool)

(assert (=> bm!232653 (= call!232657 call!232658)))

(assert (= (and d!881650 (not res!1308521)) b!3214492))

(assert (= (and b!3214492 c!540216) b!3214487))

(assert (= (and b!3214492 (not c!540216)) b!3214488))

(assert (= (and b!3214487 res!1308523) b!3214490))

(assert (= (and b!3214488 c!540215) b!3214495))

(assert (= (and b!3214488 (not c!540215)) b!3214494))

(assert (= (and b!3214495 res!1308519) b!3214493))

(assert (= (and b!3214494 (not res!1308522)) b!3214491))

(assert (= (and b!3214491 res!1308520) b!3214489))

(assert (= (or b!3214493 b!3214489) bm!232652))

(assert (= (or b!3214495 b!3214491) bm!232653))

(assert (= (or b!3214490 bm!232653) bm!232651))

(declare-fun m!3486153 () Bool)

(assert (=> b!3214487 m!3486153))

(declare-fun m!3486155 () Bool)

(assert (=> bm!232651 m!3486155))

(declare-fun m!3486157 () Bool)

(assert (=> bm!232652 m!3486157))

(assert (=> d!881122 d!881650))

(declare-fun b!3214520 () Bool)

(declare-fun e!2004311 () Int)

(declare-fun e!2004309 () Int)

(assert (=> b!3214520 (= e!2004311 e!2004309)))

(declare-fun c!540228 () Bool)

(declare-fun call!232661 () Int)

(assert (=> b!3214520 (= c!540228 (>= 0 call!232661))))

(declare-fun d!881652 () Bool)

(declare-fun e!2004308 () Bool)

(assert (=> d!881652 e!2004308))

(declare-fun res!1308526 () Bool)

(assert (=> d!881652 (=> (not res!1308526) (not e!2004308))))

(declare-fun lt!1087409 () List!36313)

(declare-fun content!4898 (List!36313) (InoxSet Token!9818))

(assert (=> d!881652 (= res!1308526 (= ((_ map implies) (content!4898 lt!1087409) (content!4898 lt!1086811)) ((as const (InoxSet Token!9818)) true)))))

(declare-fun e!2004312 () List!36313)

(assert (=> d!881652 (= lt!1087409 e!2004312)))

(declare-fun c!540226 () Bool)

(assert (=> d!881652 (= c!540226 ((_ is Nil!36189) lt!1086811))))

(assert (=> d!881652 (= (drop!1862 lt!1086811 0) lt!1087409)))

(declare-fun b!3214521 () Bool)

(declare-fun e!2004310 () List!36313)

(assert (=> b!3214521 (= e!2004310 (drop!1862 (t!239158 lt!1086811) (- 0 1)))))

(declare-fun b!3214522 () Bool)

(assert (=> b!3214522 (= e!2004310 lt!1086811)))

(declare-fun b!3214523 () Bool)

(assert (=> b!3214523 (= e!2004309 0)))

(declare-fun b!3214524 () Bool)

(assert (=> b!3214524 (= e!2004312 e!2004310)))

(declare-fun c!540229 () Bool)

(assert (=> b!3214524 (= c!540229 (<= 0 0))))

(declare-fun bm!232656 () Bool)

(assert (=> bm!232656 (= call!232661 (size!27277 lt!1086811))))

(declare-fun b!3214525 () Bool)

(assert (=> b!3214525 (= e!2004311 call!232661)))

(declare-fun b!3214526 () Bool)

(assert (=> b!3214526 (= e!2004312 Nil!36189)))

(declare-fun b!3214527 () Bool)

(assert (=> b!3214527 (= e!2004309 (- call!232661 0))))

(declare-fun b!3214528 () Bool)

(assert (=> b!3214528 (= e!2004308 (= (size!27277 lt!1087409) e!2004311))))

(declare-fun c!540227 () Bool)

(assert (=> b!3214528 (= c!540227 (<= 0 0))))

(assert (= (and d!881652 c!540226) b!3214526))

(assert (= (and d!881652 (not c!540226)) b!3214524))

(assert (= (and b!3214524 c!540229) b!3214522))

(assert (= (and b!3214524 (not c!540229)) b!3214521))

(assert (= (and d!881652 res!1308526) b!3214528))

(assert (= (and b!3214528 c!540227) b!3214525))

(assert (= (and b!3214528 (not c!540227)) b!3214520))

(assert (= (and b!3214520 c!540228) b!3214523))

(assert (= (and b!3214520 (not c!540228)) b!3214527))

(assert (= (or b!3214525 b!3214520 b!3214527) bm!232656))

(declare-fun m!3486171 () Bool)

(assert (=> d!881652 m!3486171))

(declare-fun m!3486173 () Bool)

(assert (=> d!881652 m!3486173))

(declare-fun m!3486175 () Bool)

(assert (=> b!3214521 m!3486175))

(declare-fun m!3486177 () Bool)

(assert (=> bm!232656 m!3486177))

(declare-fun m!3486179 () Bool)

(assert (=> b!3214528 m!3486179))

(assert (=> b!3213338 d!881652))

(declare-fun d!881658 () Bool)

(declare-fun lt!1087410 () Token!9818)

(assert (=> d!881658 (= lt!1087410 (apply!8209 (list!12877 lt!1086546) 0))))

(assert (=> d!881658 (= lt!1087410 (apply!8210 (c!539814 lt!1086546) 0))))

(declare-fun e!2004313 () Bool)

(assert (=> d!881658 e!2004313))

(declare-fun res!1308527 () Bool)

(assert (=> d!881658 (=> (not res!1308527) (not e!2004313))))

(assert (=> d!881658 (= res!1308527 (<= 0 0))))

(assert (=> d!881658 (= (apply!8207 lt!1086546 0) lt!1087410)))

(declare-fun b!3214529 () Bool)

(assert (=> b!3214529 (= e!2004313 (< 0 (size!27275 lt!1086546)))))

(assert (= (and d!881658 res!1308527) b!3214529))

(assert (=> d!881658 m!3484267))

(assert (=> d!881658 m!3484267))

(declare-fun m!3486181 () Bool)

(assert (=> d!881658 m!3486181))

(declare-fun m!3486183 () Bool)

(assert (=> d!881658 m!3486183))

(assert (=> b!3214529 m!3484243))

(assert (=> b!3213338 d!881658))

(declare-fun d!881660 () Bool)

(assert (=> d!881660 (= (head!7048 (drop!1862 lt!1086808 0)) (apply!8209 lt!1086808 0))))

(declare-fun lt!1087413 () Unit!50676)

(declare-fun choose!18770 (List!36313 Int) Unit!50676)

(assert (=> d!881660 (= lt!1087413 (choose!18770 lt!1086808 0))))

(declare-fun e!2004316 () Bool)

(assert (=> d!881660 e!2004316))

(declare-fun res!1308530 () Bool)

(assert (=> d!881660 (=> (not res!1308530) (not e!2004316))))

(assert (=> d!881660 (= res!1308530 (>= 0 0))))

(assert (=> d!881660 (= (lemmaDropApply!1038 lt!1086808 0) lt!1087413)))

(declare-fun b!3214532 () Bool)

(assert (=> b!3214532 (= e!2004316 (< 0 (size!27277 lt!1086808)))))

(assert (= (and d!881660 res!1308530) b!3214532))

(assert (=> d!881660 m!3484251))

(assert (=> d!881660 m!3484251))

(assert (=> d!881660 m!3484253))

(assert (=> d!881660 m!3484255))

(declare-fun m!3486185 () Bool)

(assert (=> d!881660 m!3486185))

(declare-fun m!3486187 () Bool)

(assert (=> b!3214532 m!3486187))

(assert (=> b!3213338 d!881660))

(declare-fun d!881662 () Bool)

(assert (=> d!881662 (= (tail!5215 (drop!1862 lt!1086811 0)) (t!239158 (drop!1862 lt!1086811 0)))))

(assert (=> b!3213338 d!881662))

(declare-fun b!3214533 () Bool)

(declare-fun e!2004320 () Int)

(declare-fun e!2004318 () Int)

(assert (=> b!3214533 (= e!2004320 e!2004318)))

(declare-fun c!540232 () Bool)

(declare-fun call!232662 () Int)

(assert (=> b!3214533 (= c!540232 (>= 0 call!232662))))

(declare-fun d!881664 () Bool)

(declare-fun e!2004317 () Bool)

(assert (=> d!881664 e!2004317))

(declare-fun res!1308531 () Bool)

(assert (=> d!881664 (=> (not res!1308531) (not e!2004317))))

(declare-fun lt!1087414 () List!36313)

(assert (=> d!881664 (= res!1308531 (= ((_ map implies) (content!4898 lt!1087414) (content!4898 lt!1086808)) ((as const (InoxSet Token!9818)) true)))))

(declare-fun e!2004321 () List!36313)

(assert (=> d!881664 (= lt!1087414 e!2004321)))

(declare-fun c!540230 () Bool)

(assert (=> d!881664 (= c!540230 ((_ is Nil!36189) lt!1086808))))

(assert (=> d!881664 (= (drop!1862 lt!1086808 0) lt!1087414)))

(declare-fun b!3214534 () Bool)

(declare-fun e!2004319 () List!36313)

(assert (=> b!3214534 (= e!2004319 (drop!1862 (t!239158 lt!1086808) (- 0 1)))))

(declare-fun b!3214535 () Bool)

(assert (=> b!3214535 (= e!2004319 lt!1086808)))

(declare-fun b!3214536 () Bool)

(assert (=> b!3214536 (= e!2004318 0)))

(declare-fun b!3214537 () Bool)

(assert (=> b!3214537 (= e!2004321 e!2004319)))

(declare-fun c!540233 () Bool)

(assert (=> b!3214537 (= c!540233 (<= 0 0))))

(declare-fun bm!232657 () Bool)

(assert (=> bm!232657 (= call!232662 (size!27277 lt!1086808))))

(declare-fun b!3214538 () Bool)

(assert (=> b!3214538 (= e!2004320 call!232662)))

(declare-fun b!3214539 () Bool)

(assert (=> b!3214539 (= e!2004321 Nil!36189)))

(declare-fun b!3214540 () Bool)

(assert (=> b!3214540 (= e!2004318 (- call!232662 0))))

(declare-fun b!3214541 () Bool)

(assert (=> b!3214541 (= e!2004317 (= (size!27277 lt!1087414) e!2004320))))

(declare-fun c!540231 () Bool)

(assert (=> b!3214541 (= c!540231 (<= 0 0))))

(assert (= (and d!881664 c!540230) b!3214539))

(assert (= (and d!881664 (not c!540230)) b!3214537))

(assert (= (and b!3214537 c!540233) b!3214535))

(assert (= (and b!3214537 (not c!540233)) b!3214534))

(assert (= (and d!881664 res!1308531) b!3214541))

(assert (= (and b!3214541 c!540231) b!3214538))

(assert (= (and b!3214541 (not c!540231)) b!3214533))

(assert (= (and b!3214533 c!540232) b!3214536))

(assert (= (and b!3214533 (not c!540232)) b!3214540))

(assert (= (or b!3214538 b!3214533 b!3214540) bm!232657))

(declare-fun m!3486189 () Bool)

(assert (=> d!881664 m!3486189))

(declare-fun m!3486191 () Bool)

(assert (=> d!881664 m!3486191))

(declare-fun m!3486193 () Bool)

(assert (=> b!3214534 m!3486193))

(assert (=> bm!232657 m!3486187))

(declare-fun m!3486195 () Bool)

(assert (=> b!3214541 m!3486195))

(assert (=> b!3213338 d!881664))

(declare-fun b!3214564 () Bool)

(declare-fun res!1308548 () Bool)

(declare-fun e!2004334 () Bool)

(assert (=> b!3214564 (=> (not res!1308548) (not e!2004334))))

(declare-fun isBalanced!3222 (Conc!10827) Bool)

(declare-fun ++!8692 (Conc!10827 Conc!10827) Conc!10827)

(assert (=> b!3214564 (= res!1308548 (isBalanced!3222 (++!8692 (c!539813 (BalanceConc!21269 Empty!10827)) (c!539813 (charsOf!3242 (apply!8207 lt!1086546 0))))))))

(declare-fun b!3214565 () Bool)

(declare-fun res!1308546 () Bool)

(assert (=> b!3214565 (=> (not res!1308546) (not e!2004334))))

(declare-fun height!1559 (Conc!10827) Int)

(declare-fun max!0 (Int Int) Int)

(assert (=> b!3214565 (= res!1308546 (<= (height!1559 (++!8692 (c!539813 (BalanceConc!21269 Empty!10827)) (c!539813 (charsOf!3242 (apply!8207 lt!1086546 0))))) (+ (max!0 (height!1559 (c!539813 (BalanceConc!21269 Empty!10827))) (height!1559 (c!539813 (charsOf!3242 (apply!8207 lt!1086546 0))))) 1)))))

(declare-fun d!881666 () Bool)

(assert (=> d!881666 e!2004334))

(declare-fun res!1308547 () Bool)

(assert (=> d!881666 (=> (not res!1308547) (not e!2004334))))

(declare-fun appendAssocInst!734 (Conc!10827 Conc!10827) Bool)

(assert (=> d!881666 (= res!1308547 (appendAssocInst!734 (c!539813 (BalanceConc!21269 Empty!10827)) (c!539813 (charsOf!3242 (apply!8207 lt!1086546 0)))))))

(declare-fun lt!1087417 () BalanceConc!21268)

(assert (=> d!881666 (= lt!1087417 (BalanceConc!21269 (++!8692 (c!539813 (BalanceConc!21269 Empty!10827)) (c!539813 (charsOf!3242 (apply!8207 lt!1086546 0))))))))

(assert (=> d!881666 (= (++!8689 (BalanceConc!21269 Empty!10827) (charsOf!3242 (apply!8207 lt!1086546 0))) lt!1087417)))

(declare-fun b!3214566 () Bool)

(declare-fun res!1308549 () Bool)

(assert (=> b!3214566 (=> (not res!1308549) (not e!2004334))))

(assert (=> b!3214566 (= res!1308549 (>= (height!1559 (++!8692 (c!539813 (BalanceConc!21269 Empty!10827)) (c!539813 (charsOf!3242 (apply!8207 lt!1086546 0))))) (max!0 (height!1559 (c!539813 (BalanceConc!21269 Empty!10827))) (height!1559 (c!539813 (charsOf!3242 (apply!8207 lt!1086546 0)))))))))

(declare-fun b!3214567 () Bool)

(assert (=> b!3214567 (= e!2004334 (= (list!12875 lt!1087417) (++!8688 (list!12875 (BalanceConc!21269 Empty!10827)) (list!12875 (charsOf!3242 (apply!8207 lt!1086546 0))))))))

(assert (= (and d!881666 res!1308547) b!3214564))

(assert (= (and b!3214564 res!1308548) b!3214565))

(assert (= (and b!3214565 res!1308546) b!3214566))

(assert (= (and b!3214566 res!1308549) b!3214567))

(declare-fun m!3486225 () Bool)

(assert (=> b!3214564 m!3486225))

(assert (=> b!3214564 m!3486225))

(declare-fun m!3486227 () Bool)

(assert (=> b!3214564 m!3486227))

(declare-fun m!3486229 () Bool)

(assert (=> b!3214567 m!3486229))

(assert (=> b!3214567 m!3483815))

(assert (=> b!3214567 m!3484257))

(declare-fun m!3486233 () Bool)

(assert (=> b!3214567 m!3486233))

(assert (=> b!3214567 m!3483815))

(assert (=> b!3214567 m!3486233))

(declare-fun m!3486235 () Bool)

(assert (=> b!3214567 m!3486235))

(declare-fun m!3486237 () Bool)

(assert (=> b!3214566 m!3486237))

(declare-fun m!3486239 () Bool)

(assert (=> b!3214566 m!3486239))

(declare-fun m!3486241 () Bool)

(assert (=> b!3214566 m!3486241))

(assert (=> b!3214566 m!3486239))

(assert (=> b!3214566 m!3486225))

(assert (=> b!3214566 m!3486225))

(declare-fun m!3486245 () Bool)

(assert (=> b!3214566 m!3486245))

(assert (=> b!3214566 m!3486237))

(assert (=> b!3214565 m!3486237))

(assert (=> b!3214565 m!3486239))

(assert (=> b!3214565 m!3486241))

(assert (=> b!3214565 m!3486239))

(assert (=> b!3214565 m!3486225))

(assert (=> b!3214565 m!3486225))

(assert (=> b!3214565 m!3486245))

(assert (=> b!3214565 m!3486237))

(declare-fun m!3486247 () Bool)

(assert (=> d!881666 m!3486247))

(assert (=> d!881666 m!3486225))

(assert (=> b!3213338 d!881666))

(declare-fun d!881696 () Bool)

(assert (=> d!881696 (= (head!7048 (drop!1862 lt!1086808 0)) (h!41609 (drop!1862 lt!1086808 0)))))

(assert (=> b!3213338 d!881696))

(declare-fun d!881704 () Bool)

(declare-fun lt!1087422 () Token!9818)

(assert (=> d!881704 (contains!6471 lt!1086808 lt!1087422)))

(declare-fun e!2004341 () Token!9818)

(assert (=> d!881704 (= lt!1087422 e!2004341)))

(declare-fun c!540244 () Bool)

(assert (=> d!881704 (= c!540244 (= 0 0))))

(declare-fun e!2004342 () Bool)

(assert (=> d!881704 e!2004342))

(declare-fun res!1308553 () Bool)

(assert (=> d!881704 (=> (not res!1308553) (not e!2004342))))

(assert (=> d!881704 (= res!1308553 (<= 0 0))))

(assert (=> d!881704 (= (apply!8209 lt!1086808 0) lt!1087422)))

(declare-fun b!3214577 () Bool)

(assert (=> b!3214577 (= e!2004342 (< 0 (size!27277 lt!1086808)))))

(declare-fun b!3214578 () Bool)

(assert (=> b!3214578 (= e!2004341 (head!7048 lt!1086808))))

(declare-fun b!3214579 () Bool)

(assert (=> b!3214579 (= e!2004341 (apply!8209 (tail!5215 lt!1086808) (- 0 1)))))

(assert (= (and d!881704 res!1308553) b!3214577))

(assert (= (and d!881704 c!540244) b!3214578))

(assert (= (and d!881704 (not c!540244)) b!3214579))

(declare-fun m!3486265 () Bool)

(assert (=> d!881704 m!3486265))

(assert (=> b!3214577 m!3486187))

(declare-fun m!3486267 () Bool)

(assert (=> b!3214578 m!3486267))

(declare-fun m!3486269 () Bool)

(assert (=> b!3214579 m!3486269))

(assert (=> b!3214579 m!3486269))

(declare-fun m!3486271 () Bool)

(assert (=> b!3214579 m!3486271))

(assert (=> b!3213338 d!881704))

(declare-fun d!881708 () Bool)

(assert (=> d!881708 (= (list!12877 lt!1086546) (list!12881 (c!539814 lt!1086546)))))

(declare-fun bs!542019 () Bool)

(assert (= bs!542019 d!881708))

(assert (=> bs!542019 m!3486029))

(assert (=> b!3213338 d!881708))

(declare-fun d!881710 () Bool)

(declare-fun lt!1087423 () BalanceConc!21268)

(assert (=> d!881710 (= (list!12875 lt!1087423) (originalCharacters!5940 (apply!8207 lt!1086546 0)))))

(assert (=> d!881710 (= lt!1087423 (dynLambda!14631 (toChars!7173 (transformation!5226 (rule!7672 (apply!8207 lt!1086546 0)))) (value!169401 (apply!8207 lt!1086546 0))))))

(assert (=> d!881710 (= (charsOf!3242 (apply!8207 lt!1086546 0)) lt!1087423)))

(declare-fun b_lambda!88245 () Bool)

(assert (=> (not b_lambda!88245) (not d!881710)))

(declare-fun tb!158359 () Bool)

(declare-fun t!239386 () Bool)

(assert (=> (and b!3213792 (= (toChars!7173 (transformation!5226 (h!41608 (t!239157 rules!2135)))) (toChars!7173 (transformation!5226 (rule!7672 (apply!8207 lt!1086546 0))))) t!239386) tb!158359))

(declare-fun b!3214588 () Bool)

(declare-fun e!2004347 () Bool)

(declare-fun tp!1013825 () Bool)

(assert (=> b!3214588 (= e!2004347 (and (inv!49055 (c!539813 (dynLambda!14631 (toChars!7173 (transformation!5226 (rule!7672 (apply!8207 lt!1086546 0)))) (value!169401 (apply!8207 lt!1086546 0))))) tp!1013825))))

(declare-fun result!200752 () Bool)

(assert (=> tb!158359 (= result!200752 (and (inv!49056 (dynLambda!14631 (toChars!7173 (transformation!5226 (rule!7672 (apply!8207 lt!1086546 0)))) (value!169401 (apply!8207 lt!1086546 0)))) e!2004347))))

(assert (= tb!158359 b!3214588))

(declare-fun m!3486285 () Bool)

(assert (=> b!3214588 m!3486285))

(declare-fun m!3486287 () Bool)

(assert (=> tb!158359 m!3486287))

(assert (=> d!881710 t!239386))

(declare-fun b_and!214473 () Bool)

(assert (= b_and!214413 (and (=> t!239386 result!200752) b_and!214473)))

(declare-fun t!239388 () Bool)

(declare-fun tb!158361 () Bool)

(assert (=> (and b!3212814 (= (toChars!7173 (transformation!5226 (rule!7672 (h!41609 tokens!494)))) (toChars!7173 (transformation!5226 (rule!7672 (apply!8207 lt!1086546 0))))) t!239388) tb!158361))

(declare-fun result!200754 () Bool)

(assert (= result!200754 result!200752))

(assert (=> d!881710 t!239388))

(declare-fun b_and!214475 () Bool)

(assert (= b_and!214415 (and (=> t!239388 result!200754) b_and!214475)))

(declare-fun tb!158363 () Bool)

(declare-fun t!239390 () Bool)

(assert (=> (and b!3212813 (= (toChars!7173 (transformation!5226 (rule!7672 separatorToken!241))) (toChars!7173 (transformation!5226 (rule!7672 (apply!8207 lt!1086546 0))))) t!239390) tb!158363))

(declare-fun result!200756 () Bool)

(assert (= result!200756 result!200752))

(assert (=> d!881710 t!239390))

(declare-fun b_and!214477 () Bool)

(assert (= b_and!214421 (and (=> t!239390 result!200756) b_and!214477)))

(declare-fun t!239392 () Bool)

(declare-fun tb!158365 () Bool)

(assert (=> (and b!3213760 (= (toChars!7173 (transformation!5226 (rule!7672 (h!41609 (t!239158 tokens!494))))) (toChars!7173 (transformation!5226 (rule!7672 (apply!8207 lt!1086546 0))))) t!239392) tb!158365))

(declare-fun result!200758 () Bool)

(assert (= result!200758 result!200752))

(assert (=> d!881710 t!239392))

(declare-fun b_and!214479 () Bool)

(assert (= b_and!214419 (and (=> t!239392 result!200758) b_and!214479)))

(declare-fun tb!158367 () Bool)

(declare-fun t!239394 () Bool)

(assert (=> (and b!3212809 (= (toChars!7173 (transformation!5226 (h!41608 rules!2135))) (toChars!7173 (transformation!5226 (rule!7672 (apply!8207 lt!1086546 0))))) t!239394) tb!158367))

(declare-fun result!200760 () Bool)

(assert (= result!200760 result!200752))

(assert (=> d!881710 t!239394))

(declare-fun b_and!214481 () Bool)

(assert (= b_and!214417 (and (=> t!239394 result!200760) b_and!214481)))

(declare-fun m!3486289 () Bool)

(assert (=> d!881710 m!3486289))

(declare-fun m!3486291 () Bool)

(assert (=> d!881710 m!3486291))

(assert (=> b!3213338 d!881710))

(declare-fun b!3214593 () Bool)

(declare-fun e!2004353 () Int)

(declare-fun e!2004351 () Int)

(assert (=> b!3214593 (= e!2004353 e!2004351)))

(declare-fun c!540252 () Bool)

(declare-fun call!232671 () Int)

(assert (=> b!3214593 (= c!540252 (>= (+ 0 1) call!232671))))

(declare-fun d!881716 () Bool)

(declare-fun e!2004350 () Bool)

(assert (=> d!881716 e!2004350))

(declare-fun res!1308556 () Bool)

(assert (=> d!881716 (=> (not res!1308556) (not e!2004350))))

(declare-fun lt!1087426 () List!36313)

(assert (=> d!881716 (= res!1308556 (= ((_ map implies) (content!4898 lt!1087426) (content!4898 lt!1086811)) ((as const (InoxSet Token!9818)) true)))))

(declare-fun e!2004354 () List!36313)

(assert (=> d!881716 (= lt!1087426 e!2004354)))

(declare-fun c!540250 () Bool)

(assert (=> d!881716 (= c!540250 ((_ is Nil!36189) lt!1086811))))

(assert (=> d!881716 (= (drop!1862 lt!1086811 (+ 0 1)) lt!1087426)))

(declare-fun b!3214594 () Bool)

(declare-fun e!2004352 () List!36313)

(assert (=> b!3214594 (= e!2004352 (drop!1862 (t!239158 lt!1086811) (- (+ 0 1) 1)))))

(declare-fun b!3214595 () Bool)

(assert (=> b!3214595 (= e!2004352 lt!1086811)))

(declare-fun b!3214596 () Bool)

(assert (=> b!3214596 (= e!2004351 0)))

(declare-fun b!3214597 () Bool)

(assert (=> b!3214597 (= e!2004354 e!2004352)))

(declare-fun c!540253 () Bool)

(assert (=> b!3214597 (= c!540253 (<= (+ 0 1) 0))))

(declare-fun bm!232666 () Bool)

(assert (=> bm!232666 (= call!232671 (size!27277 lt!1086811))))

(declare-fun b!3214598 () Bool)

(assert (=> b!3214598 (= e!2004353 call!232671)))

(declare-fun b!3214599 () Bool)

(assert (=> b!3214599 (= e!2004354 Nil!36189)))

(declare-fun b!3214600 () Bool)

(assert (=> b!3214600 (= e!2004351 (- call!232671 (+ 0 1)))))

(declare-fun b!3214601 () Bool)

(assert (=> b!3214601 (= e!2004350 (= (size!27277 lt!1087426) e!2004353))))

(declare-fun c!540251 () Bool)

(assert (=> b!3214601 (= c!540251 (<= (+ 0 1) 0))))

(assert (= (and d!881716 c!540250) b!3214599))

(assert (= (and d!881716 (not c!540250)) b!3214597))

(assert (= (and b!3214597 c!540253) b!3214595))

(assert (= (and b!3214597 (not c!540253)) b!3214594))

(assert (= (and d!881716 res!1308556) b!3214601))

(assert (= (and b!3214601 c!540251) b!3214598))

(assert (= (and b!3214601 (not c!540251)) b!3214593))

(assert (= (and b!3214593 c!540252) b!3214596))

(assert (= (and b!3214593 (not c!540252)) b!3214600))

(assert (= (or b!3214598 b!3214593 b!3214600) bm!232666))

(declare-fun m!3486309 () Bool)

(assert (=> d!881716 m!3486309))

(assert (=> d!881716 m!3486173))

(declare-fun m!3486311 () Bool)

(assert (=> b!3214594 m!3486311))

(assert (=> bm!232666 m!3486177))

(declare-fun m!3486313 () Bool)

(assert (=> b!3214601 m!3486313))

(assert (=> b!3213338 d!881716))

(declare-fun d!881722 () Bool)

(assert (=> d!881722 (= (tail!5215 (drop!1862 lt!1086811 0)) (drop!1862 lt!1086811 (+ 0 1)))))

(declare-fun lt!1087430 () Unit!50676)

(declare-fun choose!18771 (List!36313 Int) Unit!50676)

(assert (=> d!881722 (= lt!1087430 (choose!18771 lt!1086811 0))))

(declare-fun e!2004359 () Bool)

(assert (=> d!881722 e!2004359))

(declare-fun res!1308559 () Bool)

(assert (=> d!881722 (=> (not res!1308559) (not e!2004359))))

(assert (=> d!881722 (= res!1308559 (>= 0 0))))

(assert (=> d!881722 (= (lemmaDropTail!922 lt!1086811 0) lt!1087430)))

(declare-fun b!3214607 () Bool)

(assert (=> b!3214607 (= e!2004359 (< 0 (size!27277 lt!1086811)))))

(assert (= (and d!881722 res!1308559) b!3214607))

(assert (=> d!881722 m!3484247))

(assert (=> d!881722 m!3484247))

(assert (=> d!881722 m!3484249))

(assert (=> d!881722 m!3484269))

(declare-fun m!3486333 () Bool)

(assert (=> d!881722 m!3486333))

(assert (=> b!3214607 m!3486177))

(assert (=> b!3213338 d!881722))

(declare-fun d!881730 () Bool)

(declare-fun lt!1087432 () BalanceConc!21268)

(assert (=> d!881730 (= (list!12875 lt!1087432) (printListTailRec!562 thiss!18206 (dropList!1079 lt!1086546 (+ 0 1)) (list!12875 (++!8689 (BalanceConc!21269 Empty!10827) (charsOf!3242 (apply!8207 lt!1086546 0))))))))

(declare-fun e!2004360 () BalanceConc!21268)

(assert (=> d!881730 (= lt!1087432 e!2004360)))

(declare-fun c!540255 () Bool)

(assert (=> d!881730 (= c!540255 (>= (+ 0 1) (size!27275 lt!1086546)))))

(declare-fun e!2004361 () Bool)

(assert (=> d!881730 e!2004361))

(declare-fun res!1308560 () Bool)

(assert (=> d!881730 (=> (not res!1308560) (not e!2004361))))

(assert (=> d!881730 (= res!1308560 (>= (+ 0 1) 0))))

(assert (=> d!881730 (= (printTailRec!1312 thiss!18206 lt!1086546 (+ 0 1) (++!8689 (BalanceConc!21269 Empty!10827) (charsOf!3242 (apply!8207 lt!1086546 0)))) lt!1087432)))

(declare-fun b!3214608 () Bool)

(assert (=> b!3214608 (= e!2004361 (<= (+ 0 1) (size!27275 lt!1086546)))))

(declare-fun b!3214609 () Bool)

(assert (=> b!3214609 (= e!2004360 (++!8689 (BalanceConc!21269 Empty!10827) (charsOf!3242 (apply!8207 lt!1086546 0))))))

(declare-fun b!3214610 () Bool)

(assert (=> b!3214610 (= e!2004360 (printTailRec!1312 thiss!18206 lt!1086546 (+ 0 1 1) (++!8689 (++!8689 (BalanceConc!21269 Empty!10827) (charsOf!3242 (apply!8207 lt!1086546 0))) (charsOf!3242 (apply!8207 lt!1086546 (+ 0 1))))))))

(declare-fun lt!1087433 () List!36313)

(assert (=> b!3214610 (= lt!1087433 (list!12877 lt!1086546))))

(declare-fun lt!1087434 () Unit!50676)

(assert (=> b!3214610 (= lt!1087434 (lemmaDropApply!1038 lt!1087433 (+ 0 1)))))

(assert (=> b!3214610 (= (head!7048 (drop!1862 lt!1087433 (+ 0 1))) (apply!8209 lt!1087433 (+ 0 1)))))

(declare-fun lt!1087437 () Unit!50676)

(assert (=> b!3214610 (= lt!1087437 lt!1087434)))

(declare-fun lt!1087436 () List!36313)

(assert (=> b!3214610 (= lt!1087436 (list!12877 lt!1086546))))

(declare-fun lt!1087431 () Unit!50676)

(assert (=> b!3214610 (= lt!1087431 (lemmaDropTail!922 lt!1087436 (+ 0 1)))))

(assert (=> b!3214610 (= (tail!5215 (drop!1862 lt!1087436 (+ 0 1))) (drop!1862 lt!1087436 (+ 0 1 1)))))

(declare-fun lt!1087435 () Unit!50676)

(assert (=> b!3214610 (= lt!1087435 lt!1087431)))

(assert (= (and d!881730 res!1308560) b!3214608))

(assert (= (and d!881730 c!540255) b!3214609))

(assert (= (and d!881730 (not c!540255)) b!3214610))

(declare-fun m!3486335 () Bool)

(assert (=> d!881730 m!3486335))

(assert (=> d!881730 m!3486335))

(declare-fun m!3486337 () Bool)

(assert (=> d!881730 m!3486337))

(declare-fun m!3486339 () Bool)

(assert (=> d!881730 m!3486339))

(assert (=> d!881730 m!3484243))

(declare-fun m!3486341 () Bool)

(assert (=> d!881730 m!3486341))

(assert (=> d!881730 m!3484259))

(assert (=> d!881730 m!3486337))

(assert (=> b!3214608 m!3484243))

(declare-fun m!3486343 () Bool)

(assert (=> b!3214610 m!3486343))

(declare-fun m!3486345 () Bool)

(assert (=> b!3214610 m!3486345))

(declare-fun m!3486347 () Bool)

(assert (=> b!3214610 m!3486347))

(declare-fun m!3486349 () Bool)

(assert (=> b!3214610 m!3486349))

(declare-fun m!3486351 () Bool)

(assert (=> b!3214610 m!3486351))

(assert (=> b!3214610 m!3484259))

(declare-fun m!3486353 () Bool)

(assert (=> b!3214610 m!3486353))

(declare-fun m!3486355 () Bool)

(assert (=> b!3214610 m!3486355))

(declare-fun m!3486357 () Bool)

(assert (=> b!3214610 m!3486357))

(declare-fun m!3486359 () Bool)

(assert (=> b!3214610 m!3486359))

(assert (=> b!3214610 m!3486353))

(assert (=> b!3214610 m!3486359))

(assert (=> b!3214610 m!3486343))

(assert (=> b!3214610 m!3486355))

(declare-fun m!3486361 () Bool)

(assert (=> b!3214610 m!3486361))

(assert (=> b!3214610 m!3486347))

(assert (=> b!3214610 m!3484267))

(declare-fun m!3486363 () Bool)

(assert (=> b!3214610 m!3486363))

(declare-fun m!3486365 () Bool)

(assert (=> b!3214610 m!3486365))

(assert (=> b!3213338 d!881730))

(declare-fun d!881732 () Bool)

(assert (=> d!881732 (= (isEmpty!20288 (originalCharacters!5940 (h!41609 tokens!494))) ((_ is Nil!36187) (originalCharacters!5940 (h!41609 tokens!494))))))

(assert (=> d!881130 d!881732))

(declare-fun d!881734 () Bool)

(assert (=> d!881734 (= (list!12877 lt!1086604) (list!12881 (c!539814 lt!1086604)))))

(declare-fun bs!542023 () Bool)

(assert (= bs!542023 d!881734))

(declare-fun m!3486367 () Bool)

(assert (=> bs!542023 m!3486367))

(assert (=> d!880906 d!881734))

(declare-fun d!881736 () Bool)

(declare-fun e!2004364 () Bool)

(assert (=> d!881736 e!2004364))

(declare-fun res!1308563 () Bool)

(assert (=> d!881736 (=> (not res!1308563) (not e!2004364))))

(declare-fun lt!1087440 () BalanceConc!21270)

(assert (=> d!881736 (= res!1308563 (= (list!12877 lt!1087440) (Cons!36189 (h!41609 (t!239158 tokens!494)) Nil!36189)))))

(declare-fun choose!18772 (Token!9818) BalanceConc!21270)

(assert (=> d!881736 (= lt!1087440 (choose!18772 (h!41609 (t!239158 tokens!494))))))

(assert (=> d!881736 (= (singleton!995 (h!41609 (t!239158 tokens!494))) lt!1087440)))

(declare-fun b!3214613 () Bool)

(assert (=> b!3214613 (= e!2004364 (isBalanced!3220 (c!539814 lt!1087440)))))

(assert (= (and d!881736 res!1308563) b!3214613))

(declare-fun m!3486369 () Bool)

(assert (=> d!881736 m!3486369))

(declare-fun m!3486371 () Bool)

(assert (=> d!881736 m!3486371))

(declare-fun m!3486373 () Bool)

(assert (=> b!3214613 m!3486373))

(assert (=> d!880906 d!881736))

(declare-fun b!3214614 () Bool)

(declare-fun e!2004366 () List!36311)

(declare-fun call!232674 () List!36311)

(assert (=> b!3214614 (= e!2004366 call!232674)))

(declare-fun bm!232667 () Bool)

(declare-fun c!540256 () Bool)

(declare-fun call!232672 () List!36311)

(declare-fun call!232675 () List!36311)

(assert (=> bm!232667 (= call!232674 (++!8688 (ite c!540256 call!232675 call!232672) (ite c!540256 call!232672 call!232675)))))

(declare-fun b!3214615 () Bool)

(declare-fun e!2004367 () List!36311)

(declare-fun call!232673 () List!36311)

(assert (=> b!3214615 (= e!2004367 call!232673)))

(declare-fun d!881738 () Bool)

(declare-fun c!540258 () Bool)

(assert (=> d!881738 (= c!540258 (or ((_ is EmptyExpr!9985) (ite c!539880 (reg!10314 (regex!5226 (rule!7672 (h!41609 tokens!494)))) (ite c!539877 (regOne!20483 (regex!5226 (rule!7672 (h!41609 tokens!494)))) (regTwo!20482 (regex!5226 (rule!7672 (h!41609 tokens!494))))))) ((_ is EmptyLang!9985) (ite c!539880 (reg!10314 (regex!5226 (rule!7672 (h!41609 tokens!494)))) (ite c!539877 (regOne!20483 (regex!5226 (rule!7672 (h!41609 tokens!494)))) (regTwo!20482 (regex!5226 (rule!7672 (h!41609 tokens!494)))))))))))

(declare-fun e!2004368 () List!36311)

(assert (=> d!881738 (= (usedCharacters!542 (ite c!539880 (reg!10314 (regex!5226 (rule!7672 (h!41609 tokens!494)))) (ite c!539877 (regOne!20483 (regex!5226 (rule!7672 (h!41609 tokens!494)))) (regTwo!20482 (regex!5226 (rule!7672 (h!41609 tokens!494))))))) e!2004368)))

(declare-fun b!3214616 () Bool)

(declare-fun c!540259 () Bool)

(assert (=> b!3214616 (= c!540259 ((_ is Star!9985) (ite c!539880 (reg!10314 (regex!5226 (rule!7672 (h!41609 tokens!494)))) (ite c!539877 (regOne!20483 (regex!5226 (rule!7672 (h!41609 tokens!494)))) (regTwo!20482 (regex!5226 (rule!7672 (h!41609 tokens!494))))))))))

(declare-fun e!2004365 () List!36311)

(assert (=> b!3214616 (= e!2004365 e!2004367)))

(declare-fun b!3214617 () Bool)

(assert (=> b!3214617 (= e!2004367 e!2004366)))

(assert (=> b!3214617 (= c!540256 ((_ is Union!9985) (ite c!539880 (reg!10314 (regex!5226 (rule!7672 (h!41609 tokens!494)))) (ite c!539877 (regOne!20483 (regex!5226 (rule!7672 (h!41609 tokens!494)))) (regTwo!20482 (regex!5226 (rule!7672 (h!41609 tokens!494))))))))))

(declare-fun bm!232668 () Bool)

(assert (=> bm!232668 (= call!232675 call!232673)))

(declare-fun b!3214618 () Bool)

(assert (=> b!3214618 (= e!2004366 call!232674)))

(declare-fun b!3214619 () Bool)

(assert (=> b!3214619 (= e!2004365 (Cons!36187 (c!539812 (ite c!539880 (reg!10314 (regex!5226 (rule!7672 (h!41609 tokens!494)))) (ite c!539877 (regOne!20483 (regex!5226 (rule!7672 (h!41609 tokens!494)))) (regTwo!20482 (regex!5226 (rule!7672 (h!41609 tokens!494))))))) Nil!36187))))

(declare-fun bm!232669 () Bool)

(assert (=> bm!232669 (= call!232672 (usedCharacters!542 (ite c!540256 (regTwo!20483 (ite c!539880 (reg!10314 (regex!5226 (rule!7672 (h!41609 tokens!494)))) (ite c!539877 (regOne!20483 (regex!5226 (rule!7672 (h!41609 tokens!494)))) (regTwo!20482 (regex!5226 (rule!7672 (h!41609 tokens!494))))))) (regOne!20482 (ite c!539880 (reg!10314 (regex!5226 (rule!7672 (h!41609 tokens!494)))) (ite c!539877 (regOne!20483 (regex!5226 (rule!7672 (h!41609 tokens!494)))) (regTwo!20482 (regex!5226 (rule!7672 (h!41609 tokens!494))))))))))))

(declare-fun b!3214620 () Bool)

(assert (=> b!3214620 (= e!2004368 Nil!36187)))

(declare-fun bm!232670 () Bool)

(assert (=> bm!232670 (= call!232673 (usedCharacters!542 (ite c!540259 (reg!10314 (ite c!539880 (reg!10314 (regex!5226 (rule!7672 (h!41609 tokens!494)))) (ite c!539877 (regOne!20483 (regex!5226 (rule!7672 (h!41609 tokens!494)))) (regTwo!20482 (regex!5226 (rule!7672 (h!41609 tokens!494))))))) (ite c!540256 (regOne!20483 (ite c!539880 (reg!10314 (regex!5226 (rule!7672 (h!41609 tokens!494)))) (ite c!539877 (regOne!20483 (regex!5226 (rule!7672 (h!41609 tokens!494)))) (regTwo!20482 (regex!5226 (rule!7672 (h!41609 tokens!494))))))) (regTwo!20482 (ite c!539880 (reg!10314 (regex!5226 (rule!7672 (h!41609 tokens!494)))) (ite c!539877 (regOne!20483 (regex!5226 (rule!7672 (h!41609 tokens!494)))) (regTwo!20482 (regex!5226 (rule!7672 (h!41609 tokens!494)))))))))))))

(declare-fun b!3214621 () Bool)

(assert (=> b!3214621 (= e!2004368 e!2004365)))

(declare-fun c!540257 () Bool)

(assert (=> b!3214621 (= c!540257 ((_ is ElementMatch!9985) (ite c!539880 (reg!10314 (regex!5226 (rule!7672 (h!41609 tokens!494)))) (ite c!539877 (regOne!20483 (regex!5226 (rule!7672 (h!41609 tokens!494)))) (regTwo!20482 (regex!5226 (rule!7672 (h!41609 tokens!494))))))))))

(assert (= (and d!881738 c!540258) b!3214620))

(assert (= (and d!881738 (not c!540258)) b!3214621))

(assert (= (and b!3214621 c!540257) b!3214619))

(assert (= (and b!3214621 (not c!540257)) b!3214616))

(assert (= (and b!3214616 c!540259) b!3214615))

(assert (= (and b!3214616 (not c!540259)) b!3214617))

(assert (= (and b!3214617 c!540256) b!3214614))

(assert (= (and b!3214617 (not c!540256)) b!3214618))

(assert (= (or b!3214614 b!3214618) bm!232669))

(assert (= (or b!3214614 b!3214618) bm!232668))

(assert (= (or b!3214614 b!3214618) bm!232667))

(assert (= (or b!3214615 bm!232668) bm!232670))

(declare-fun m!3486375 () Bool)

(assert (=> bm!232667 m!3486375))

(declare-fun m!3486377 () Bool)

(assert (=> bm!232669 m!3486377))

(declare-fun m!3486379 () Bool)

(assert (=> bm!232670 m!3486379))

(assert (=> bm!232514 d!881738))

(declare-fun d!881740 () Bool)

(declare-fun c!540260 () Bool)

(assert (=> d!881740 (= c!540260 ((_ is Nil!36187) lt!1086872))))

(declare-fun e!2004369 () (InoxSet C!20156))

(assert (=> d!881740 (= (content!4894 lt!1086872) e!2004369)))

(declare-fun b!3214622 () Bool)

(assert (=> b!3214622 (= e!2004369 ((as const (Array C!20156 Bool)) false))))

(declare-fun b!3214623 () Bool)

(assert (=> b!3214623 (= e!2004369 ((_ map or) (store ((as const (Array C!20156 Bool)) false) (h!41607 lt!1086872) true) (content!4894 (t!239156 lt!1086872))))))

(assert (= (and d!881740 c!540260) b!3214622))

(assert (= (and d!881740 (not c!540260)) b!3214623))

(declare-fun m!3486381 () Bool)

(assert (=> b!3214623 m!3486381))

(declare-fun m!3486383 () Bool)

(assert (=> b!3214623 m!3486383))

(assert (=> d!881112 d!881740))

(assert (=> d!881112 d!881396))

(declare-fun d!881742 () Bool)

(declare-fun c!540261 () Bool)

(assert (=> d!881742 (= c!540261 ((_ is Nil!36187) lt!1086557))))

(declare-fun e!2004370 () (InoxSet C!20156))

(assert (=> d!881742 (= (content!4894 lt!1086557) e!2004370)))

(declare-fun b!3214624 () Bool)

(assert (=> b!3214624 (= e!2004370 ((as const (Array C!20156 Bool)) false))))

(declare-fun b!3214625 () Bool)

(assert (=> b!3214625 (= e!2004370 ((_ map or) (store ((as const (Array C!20156 Bool)) false) (h!41607 lt!1086557) true) (content!4894 (t!239156 lt!1086557))))))

(assert (= (and d!881742 c!540261) b!3214624))

(assert (= (and d!881742 (not c!540261)) b!3214625))

(declare-fun m!3486385 () Bool)

(assert (=> b!3214625 m!3486385))

(declare-fun m!3486387 () Bool)

(assert (=> b!3214625 m!3486387))

(assert (=> d!881112 d!881742))

(declare-fun b!3214626 () Bool)

(declare-fun res!1308565 () Bool)

(declare-fun e!2004372 () Bool)

(assert (=> b!3214626 (=> (not res!1308565) (not e!2004372))))

(declare-fun lt!1087444 () Option!7154)

(assert (=> b!3214626 (= res!1308565 (= (list!12875 (charsOf!3242 (_1!20932 (get!11526 lt!1087444)))) (originalCharacters!5940 (_1!20932 (get!11526 lt!1087444)))))))

(declare-fun b!3214627 () Bool)

(assert (=> b!3214627 (= e!2004372 (contains!6470 (t!239157 rules!2135) (rule!7672 (_1!20932 (get!11526 lt!1087444)))))))

(declare-fun b!3214628 () Bool)

(declare-fun e!2004371 () Option!7154)

(declare-fun call!232676 () Option!7154)

(assert (=> b!3214628 (= e!2004371 call!232676)))

(declare-fun b!3214629 () Bool)

(declare-fun lt!1087445 () Option!7154)

(declare-fun lt!1087441 () Option!7154)

(assert (=> b!3214629 (= e!2004371 (ite (and ((_ is None!7153) lt!1087445) ((_ is None!7153) lt!1087441)) None!7153 (ite ((_ is None!7153) lt!1087441) lt!1087445 (ite ((_ is None!7153) lt!1087445) lt!1087441 (ite (>= (size!27273 (_1!20932 (v!35713 lt!1087445))) (size!27273 (_1!20932 (v!35713 lt!1087441)))) lt!1087445 lt!1087441)))))))

(assert (=> b!3214629 (= lt!1087445 call!232676)))

(assert (=> b!3214629 (= lt!1087441 (maxPrefix!2457 thiss!18206 (t!239157 (t!239157 rules!2135)) lt!1086548))))

(declare-fun b!3214630 () Bool)

(declare-fun res!1308568 () Bool)

(assert (=> b!3214630 (=> (not res!1308568) (not e!2004372))))

(assert (=> b!3214630 (= res!1308568 (= (++!8688 (list!12875 (charsOf!3242 (_1!20932 (get!11526 lt!1087444)))) (_2!20932 (get!11526 lt!1087444))) lt!1086548))))

(declare-fun b!3214631 () Bool)

(declare-fun res!1308566 () Bool)

(assert (=> b!3214631 (=> (not res!1308566) (not e!2004372))))

(assert (=> b!3214631 (= res!1308566 (matchR!4619 (regex!5226 (rule!7672 (_1!20932 (get!11526 lt!1087444)))) (list!12875 (charsOf!3242 (_1!20932 (get!11526 lt!1087444))))))))

(declare-fun b!3214632 () Bool)

(declare-fun res!1308570 () Bool)

(assert (=> b!3214632 (=> (not res!1308570) (not e!2004372))))

(assert (=> b!3214632 (= res!1308570 (= (value!169401 (_1!20932 (get!11526 lt!1087444))) (apply!8208 (transformation!5226 (rule!7672 (_1!20932 (get!11526 lt!1087444)))) (seqFromList!3524 (originalCharacters!5940 (_1!20932 (get!11526 lt!1087444)))))))))

(declare-fun b!3214633 () Bool)

(declare-fun res!1308569 () Bool)

(assert (=> b!3214633 (=> (not res!1308569) (not e!2004372))))

(assert (=> b!3214633 (= res!1308569 (< (size!27274 (_2!20932 (get!11526 lt!1087444))) (size!27274 lt!1086548)))))

(declare-fun d!881744 () Bool)

(declare-fun e!2004373 () Bool)

(assert (=> d!881744 e!2004373))

(declare-fun res!1308567 () Bool)

(assert (=> d!881744 (=> res!1308567 e!2004373)))

(assert (=> d!881744 (= res!1308567 (isEmpty!20287 lt!1087444))))

(assert (=> d!881744 (= lt!1087444 e!2004371)))

(declare-fun c!540262 () Bool)

(assert (=> d!881744 (= c!540262 (and ((_ is Cons!36188) (t!239157 rules!2135)) ((_ is Nil!36188) (t!239157 (t!239157 rules!2135)))))))

(declare-fun lt!1087442 () Unit!50676)

(declare-fun lt!1087443 () Unit!50676)

(assert (=> d!881744 (= lt!1087442 lt!1087443)))

(assert (=> d!881744 (isPrefix!2786 lt!1086548 lt!1086548)))

(assert (=> d!881744 (= lt!1087443 (lemmaIsPrefixRefl!1745 lt!1086548 lt!1086548))))

(assert (=> d!881744 (rulesValidInductive!1779 thiss!18206 (t!239157 rules!2135))))

(assert (=> d!881744 (= (maxPrefix!2457 thiss!18206 (t!239157 rules!2135) lt!1086548) lt!1087444)))

(declare-fun b!3214634 () Bool)

(assert (=> b!3214634 (= e!2004373 e!2004372)))

(declare-fun res!1308564 () Bool)

(assert (=> b!3214634 (=> (not res!1308564) (not e!2004372))))

(assert (=> b!3214634 (= res!1308564 (isDefined!5560 lt!1087444))))

(declare-fun bm!232671 () Bool)

(assert (=> bm!232671 (= call!232676 (maxPrefixOneRule!1594 thiss!18206 (h!41608 (t!239157 rules!2135)) lt!1086548))))

(assert (= (and d!881744 c!540262) b!3214628))

(assert (= (and d!881744 (not c!540262)) b!3214629))

(assert (= (or b!3214628 b!3214629) bm!232671))

(assert (= (and d!881744 (not res!1308567)) b!3214634))

(assert (= (and b!3214634 res!1308564) b!3214626))

(assert (= (and b!3214626 res!1308565) b!3214633))

(assert (= (and b!3214633 res!1308569) b!3214630))

(assert (= (and b!3214630 res!1308568) b!3214632))

(assert (= (and b!3214632 res!1308570) b!3214631))

(assert (= (and b!3214631 res!1308566) b!3214627))

(declare-fun m!3486389 () Bool)

(assert (=> bm!232671 m!3486389))

(declare-fun m!3486391 () Bool)

(assert (=> b!3214633 m!3486391))

(declare-fun m!3486393 () Bool)

(assert (=> b!3214633 m!3486393))

(assert (=> b!3214633 m!3484085))

(declare-fun m!3486395 () Bool)

(assert (=> b!3214629 m!3486395))

(assert (=> b!3214631 m!3486391))

(declare-fun m!3486397 () Bool)

(assert (=> b!3214631 m!3486397))

(assert (=> b!3214631 m!3486397))

(declare-fun m!3486399 () Bool)

(assert (=> b!3214631 m!3486399))

(assert (=> b!3214631 m!3486399))

(declare-fun m!3486401 () Bool)

(assert (=> b!3214631 m!3486401))

(assert (=> b!3214627 m!3486391))

(declare-fun m!3486403 () Bool)

(assert (=> b!3214627 m!3486403))

(assert (=> b!3214626 m!3486391))

(assert (=> b!3214626 m!3486397))

(assert (=> b!3214626 m!3486397))

(assert (=> b!3214626 m!3486399))

(declare-fun m!3486405 () Bool)

(assert (=> d!881744 m!3486405))

(assert (=> d!881744 m!3484099))

(assert (=> d!881744 m!3484101))

(declare-fun m!3486407 () Bool)

(assert (=> d!881744 m!3486407))

(assert (=> b!3214632 m!3486391))

(declare-fun m!3486409 () Bool)

(assert (=> b!3214632 m!3486409))

(assert (=> b!3214632 m!3486409))

(declare-fun m!3486411 () Bool)

(assert (=> b!3214632 m!3486411))

(declare-fun m!3486413 () Bool)

(assert (=> b!3214634 m!3486413))

(assert (=> b!3214630 m!3486391))

(assert (=> b!3214630 m!3486397))

(assert (=> b!3214630 m!3486397))

(assert (=> b!3214630 m!3486399))

(assert (=> b!3214630 m!3486399))

(declare-fun m!3486415 () Bool)

(assert (=> b!3214630 m!3486415))

(assert (=> b!3213266 d!881744))

(assert (=> b!3213313 d!881046))

(declare-fun b!3214635 () Bool)

(declare-fun res!1308576 () Bool)

(declare-fun e!2004377 () Bool)

(assert (=> b!3214635 (=> res!1308576 e!2004377)))

(assert (=> b!3214635 (= res!1308576 (not (isEmpty!20288 (tail!5217 (list!12875 (charsOf!3242 (h!41609 tokens!494)))))))))

(declare-fun b!3214636 () Bool)

(declare-fun res!1308578 () Bool)

(declare-fun e!2004375 () Bool)

(assert (=> b!3214636 (=> res!1308578 e!2004375)))

(declare-fun e!2004376 () Bool)

(assert (=> b!3214636 (= res!1308578 e!2004376)))

(declare-fun res!1308573 () Bool)

(assert (=> b!3214636 (=> (not res!1308573) (not e!2004376))))

(declare-fun lt!1087446 () Bool)

(assert (=> b!3214636 (= res!1308573 lt!1087446)))

(declare-fun bm!232672 () Bool)

(declare-fun call!232677 () Bool)

(assert (=> bm!232672 (= call!232677 (isEmpty!20288 (list!12875 (charsOf!3242 (h!41609 tokens!494)))))))

(declare-fun b!3214637 () Bool)

(assert (=> b!3214637 (= e!2004376 (= (head!7047 (list!12875 (charsOf!3242 (h!41609 tokens!494)))) (c!539812 (regex!5226 (get!11524 (getRuleFromTag!931 thiss!18206 rules!2135 (tag!5754 (rule!7672 (h!41609 tokens!494)))))))))))

(declare-fun b!3214638 () Bool)

(declare-fun e!2004380 () Bool)

(assert (=> b!3214638 (= e!2004380 (matchR!4619 (derivativeStep!2953 (regex!5226 (get!11524 (getRuleFromTag!931 thiss!18206 rules!2135 (tag!5754 (rule!7672 (h!41609 tokens!494)))))) (head!7047 (list!12875 (charsOf!3242 (h!41609 tokens!494))))) (tail!5217 (list!12875 (charsOf!3242 (h!41609 tokens!494))))))))

(declare-fun d!881746 () Bool)

(declare-fun e!2004378 () Bool)

(assert (=> d!881746 e!2004378))

(declare-fun c!540263 () Bool)

(assert (=> d!881746 (= c!540263 ((_ is EmptyExpr!9985) (regex!5226 (get!11524 (getRuleFromTag!931 thiss!18206 rules!2135 (tag!5754 (rule!7672 (h!41609 tokens!494))))))))))

(assert (=> d!881746 (= lt!1087446 e!2004380)))

(declare-fun c!540265 () Bool)

(assert (=> d!881746 (= c!540265 (isEmpty!20288 (list!12875 (charsOf!3242 (h!41609 tokens!494)))))))

(assert (=> d!881746 (validRegex!4554 (regex!5226 (get!11524 (getRuleFromTag!931 thiss!18206 rules!2135 (tag!5754 (rule!7672 (h!41609 tokens!494)))))))))

(assert (=> d!881746 (= (matchR!4619 (regex!5226 (get!11524 (getRuleFromTag!931 thiss!18206 rules!2135 (tag!5754 (rule!7672 (h!41609 tokens!494)))))) (list!12875 (charsOf!3242 (h!41609 tokens!494)))) lt!1087446)))

(declare-fun b!3214639 () Bool)

(declare-fun e!2004379 () Bool)

(assert (=> b!3214639 (= e!2004379 (not lt!1087446))))

(declare-fun b!3214640 () Bool)

(assert (=> b!3214640 (= e!2004377 (not (= (head!7047 (list!12875 (charsOf!3242 (h!41609 tokens!494)))) (c!539812 (regex!5226 (get!11524 (getRuleFromTag!931 thiss!18206 rules!2135 (tag!5754 (rule!7672 (h!41609 tokens!494))))))))))))

(declare-fun b!3214641 () Bool)

(declare-fun res!1308575 () Bool)

(assert (=> b!3214641 (=> (not res!1308575) (not e!2004376))))

(assert (=> b!3214641 (= res!1308575 (isEmpty!20288 (tail!5217 (list!12875 (charsOf!3242 (h!41609 tokens!494))))))))

(declare-fun b!3214642 () Bool)

(declare-fun res!1308571 () Bool)

(assert (=> b!3214642 (=> (not res!1308571) (not e!2004376))))

(assert (=> b!3214642 (= res!1308571 (not call!232677))))

(declare-fun b!3214643 () Bool)

(declare-fun e!2004374 () Bool)

(assert (=> b!3214643 (= e!2004375 e!2004374)))

(declare-fun res!1308574 () Bool)

(assert (=> b!3214643 (=> (not res!1308574) (not e!2004374))))

(assert (=> b!3214643 (= res!1308574 (not lt!1087446))))

(declare-fun b!3214644 () Bool)

(assert (=> b!3214644 (= e!2004378 e!2004379)))

(declare-fun c!540264 () Bool)

(assert (=> b!3214644 (= c!540264 ((_ is EmptyLang!9985) (regex!5226 (get!11524 (getRuleFromTag!931 thiss!18206 rules!2135 (tag!5754 (rule!7672 (h!41609 tokens!494))))))))))

(declare-fun b!3214645 () Bool)

(declare-fun res!1308572 () Bool)

(assert (=> b!3214645 (=> res!1308572 e!2004375)))

(assert (=> b!3214645 (= res!1308572 (not ((_ is ElementMatch!9985) (regex!5226 (get!11524 (getRuleFromTag!931 thiss!18206 rules!2135 (tag!5754 (rule!7672 (h!41609 tokens!494)))))))))))

(assert (=> b!3214645 (= e!2004379 e!2004375)))

(declare-fun b!3214646 () Bool)

(assert (=> b!3214646 (= e!2004374 e!2004377)))

(declare-fun res!1308577 () Bool)

(assert (=> b!3214646 (=> res!1308577 e!2004377)))

(assert (=> b!3214646 (= res!1308577 call!232677)))

(declare-fun b!3214647 () Bool)

(assert (=> b!3214647 (= e!2004380 (nullable!3400 (regex!5226 (get!11524 (getRuleFromTag!931 thiss!18206 rules!2135 (tag!5754 (rule!7672 (h!41609 tokens!494))))))))))

(declare-fun b!3214648 () Bool)

(assert (=> b!3214648 (= e!2004378 (= lt!1087446 call!232677))))

(assert (= (and d!881746 c!540265) b!3214647))

(assert (= (and d!881746 (not c!540265)) b!3214638))

(assert (= (and d!881746 c!540263) b!3214648))

(assert (= (and d!881746 (not c!540263)) b!3214644))

(assert (= (and b!3214644 c!540264) b!3214639))

(assert (= (and b!3214644 (not c!540264)) b!3214645))

(assert (= (and b!3214645 (not res!1308572)) b!3214636))

(assert (= (and b!3214636 res!1308573) b!3214642))

(assert (= (and b!3214642 res!1308571) b!3214641))

(assert (= (and b!3214641 res!1308575) b!3214637))

(assert (= (and b!3214636 (not res!1308578)) b!3214643))

(assert (= (and b!3214643 res!1308574) b!3214646))

(assert (= (and b!3214646 (not res!1308577)) b!3214635))

(assert (= (and b!3214635 (not res!1308576)) b!3214640))

(assert (= (or b!3214648 b!3214646 b!3214642) bm!232672))

(declare-fun m!3486417 () Bool)

(assert (=> b!3214647 m!3486417))

(assert (=> b!3214635 m!3483381))

(declare-fun m!3486419 () Bool)

(assert (=> b!3214635 m!3486419))

(assert (=> b!3214635 m!3486419))

(declare-fun m!3486421 () Bool)

(assert (=> b!3214635 m!3486421))

(assert (=> b!3214637 m!3483381))

(declare-fun m!3486423 () Bool)

(assert (=> b!3214637 m!3486423))

(assert (=> b!3214640 m!3483381))

(assert (=> b!3214640 m!3486423))

(assert (=> b!3214638 m!3483381))

(assert (=> b!3214638 m!3486423))

(assert (=> b!3214638 m!3486423))

(declare-fun m!3486425 () Bool)

(assert (=> b!3214638 m!3486425))

(assert (=> b!3214638 m!3483381))

(assert (=> b!3214638 m!3486419))

(assert (=> b!3214638 m!3486425))

(assert (=> b!3214638 m!3486419))

(declare-fun m!3486427 () Bool)

(assert (=> b!3214638 m!3486427))

(assert (=> d!881746 m!3483381))

(declare-fun m!3486429 () Bool)

(assert (=> d!881746 m!3486429))

(declare-fun m!3486431 () Bool)

(assert (=> d!881746 m!3486431))

(assert (=> bm!232672 m!3483381))

(assert (=> bm!232672 m!3486429))

(assert (=> b!3214641 m!3483381))

(assert (=> b!3214641 m!3486419))

(assert (=> b!3214641 m!3486419))

(assert (=> b!3214641 m!3486421))

(assert (=> b!3213313 d!881746))

(assert (=> b!3213313 d!880976))

(assert (=> b!3213313 d!881508))

(assert (=> b!3213313 d!881042))

(declare-fun d!881748 () Bool)

(declare-fun lt!1087447 () Token!9818)

(assert (=> d!881748 (contains!6471 (list!12877 (_1!20931 lt!1086556)) lt!1087447)))

(declare-fun e!2004381 () Token!9818)

(assert (=> d!881748 (= lt!1087447 e!2004381)))

(declare-fun c!540266 () Bool)

(assert (=> d!881748 (= c!540266 (= 0 0))))

(declare-fun e!2004382 () Bool)

(assert (=> d!881748 e!2004382))

(declare-fun res!1308579 () Bool)

(assert (=> d!881748 (=> (not res!1308579) (not e!2004382))))

(assert (=> d!881748 (= res!1308579 (<= 0 0))))

(assert (=> d!881748 (= (apply!8209 (list!12877 (_1!20931 lt!1086556)) 0) lt!1087447)))

(declare-fun b!3214649 () Bool)

(assert (=> b!3214649 (= e!2004382 (< 0 (size!27277 (list!12877 (_1!20931 lt!1086556)))))))

(declare-fun b!3214650 () Bool)

(assert (=> b!3214650 (= e!2004381 (head!7048 (list!12877 (_1!20931 lt!1086556))))))

(declare-fun b!3214651 () Bool)

(assert (=> b!3214651 (= e!2004381 (apply!8209 (tail!5215 (list!12877 (_1!20931 lt!1086556))) (- 0 1)))))

(assert (= (and d!881748 res!1308579) b!3214649))

(assert (= (and d!881748 c!540266) b!3214650))

(assert (= (and d!881748 (not c!540266)) b!3214651))

(assert (=> d!881748 m!3483963))

(declare-fun m!3486433 () Bool)

(assert (=> d!881748 m!3486433))

(assert (=> b!3214649 m!3483963))

(assert (=> b!3214649 m!3483965))

(assert (=> b!3214650 m!3483963))

(declare-fun m!3486435 () Bool)

(assert (=> b!3214650 m!3486435))

(assert (=> b!3214651 m!3483963))

(declare-fun m!3486437 () Bool)

(assert (=> b!3214651 m!3486437))

(assert (=> b!3214651 m!3486437))

(declare-fun m!3486439 () Bool)

(assert (=> b!3214651 m!3486439))

(assert (=> d!881224 d!881748))

(declare-fun d!881750 () Bool)

(assert (=> d!881750 (= (list!12877 (_1!20931 lt!1086556)) (list!12881 (c!539814 (_1!20931 lt!1086556))))))

(declare-fun bs!542024 () Bool)

(assert (= bs!542024 d!881750))

(declare-fun m!3486441 () Bool)

(assert (=> bs!542024 m!3486441))

(assert (=> d!881224 d!881750))

(declare-fun b!3214662 () Bool)

(declare-fun e!2004391 () Int)

(assert (=> b!3214662 (= e!2004391 0)))

(declare-fun b!3214663 () Bool)

(declare-fun e!2004387 () Bool)

(assert (=> b!3214663 (= e!2004387 (< 0 (size!27278 (c!539814 (_1!20931 lt!1086556)))))))

(declare-fun b!3214664 () Bool)

(declare-fun e!2004392 () Token!9818)

(declare-fun e!2004390 () Token!9818)

(assert (=> b!3214664 (= e!2004392 e!2004390)))

(declare-fun lt!1087454 () Bool)

(assert (=> b!3214664 (= lt!1087454 (appendIndex!309 (list!12881 (left!28143 (c!539814 (_1!20931 lt!1086556)))) (list!12881 (right!28473 (c!539814 (_1!20931 lt!1086556)))) 0))))

(declare-fun c!540271 () Bool)

(assert (=> b!3214664 (= c!540271 (< 0 (size!27278 (left!28143 (c!539814 (_1!20931 lt!1086556))))))))

(declare-fun b!3214665 () Bool)

(declare-fun call!232678 () Token!9818)

(assert (=> b!3214665 (= e!2004390 call!232678)))

(declare-fun bm!232673 () Bool)

(declare-fun c!540272 () Bool)

(assert (=> bm!232673 (= c!540272 c!540271)))

(assert (=> bm!232673 (= call!232678 (apply!8210 (ite c!540271 (left!28143 (c!539814 (_1!20931 lt!1086556))) (right!28473 (c!539814 (_1!20931 lt!1086556)))) e!2004391))))

(declare-fun d!881752 () Bool)

(declare-fun lt!1087455 () Token!9818)

(assert (=> d!881752 (= lt!1087455 (apply!8209 (list!12881 (c!539814 (_1!20931 lt!1086556))) 0))))

(assert (=> d!881752 (= lt!1087455 e!2004392)))

(declare-fun c!540273 () Bool)

(assert (=> d!881752 (= c!540273 ((_ is Leaf!17052) (c!539814 (_1!20931 lt!1086556))))))

(assert (=> d!881752 e!2004387))

(declare-fun res!1308580 () Bool)

(assert (=> d!881752 (=> (not res!1308580) (not e!2004387))))

(assert (=> d!881752 (= res!1308580 (<= 0 0))))

(assert (=> d!881752 (= (apply!8210 (c!539814 (_1!20931 lt!1086556)) 0) lt!1087455)))

(declare-fun b!3214666 () Bool)

(assert (=> b!3214666 (= e!2004392 (apply!8213 (xs!13946 (c!539814 (_1!20931 lt!1086556))) 0))))

(declare-fun b!3214667 () Bool)

(assert (=> b!3214667 (= e!2004391 (- 0 (size!27278 (left!28143 (c!539814 (_1!20931 lt!1086556))))))))

(declare-fun b!3214668 () Bool)

(assert (=> b!3214668 (= e!2004390 call!232678)))

(assert (= (and d!881752 res!1308580) b!3214663))

(assert (= (and d!881752 c!540273) b!3214666))

(assert (= (and d!881752 (not c!540273)) b!3214664))

(assert (= (and b!3214664 c!540271) b!3214665))

(assert (= (and b!3214664 (not c!540271)) b!3214668))

(assert (= (or b!3214665 b!3214668) bm!232673))

(assert (= (and bm!232673 c!540272) b!3214662))

(assert (= (and bm!232673 (not c!540272)) b!3214667))

(declare-fun m!3486443 () Bool)

(assert (=> b!3214666 m!3486443))

(declare-fun m!3486445 () Bool)

(assert (=> b!3214667 m!3486445))

(assert (=> d!881752 m!3486441))

(assert (=> d!881752 m!3486441))

(declare-fun m!3486447 () Bool)

(assert (=> d!881752 m!3486447))

(declare-fun m!3486449 () Bool)

(assert (=> b!3214664 m!3486449))

(declare-fun m!3486451 () Bool)

(assert (=> b!3214664 m!3486451))

(assert (=> b!3214664 m!3486449))

(assert (=> b!3214664 m!3486451))

(declare-fun m!3486453 () Bool)

(assert (=> b!3214664 m!3486453))

(assert (=> b!3214664 m!3486445))

(declare-fun m!3486455 () Bool)

(assert (=> bm!232673 m!3486455))

(assert (=> b!3214663 m!3483967))

(assert (=> d!881224 d!881752))

(declare-fun b!3214669 () Bool)

(declare-fun res!1308583 () Bool)

(declare-fun e!2004394 () Bool)

(assert (=> b!3214669 (=> res!1308583 e!2004394)))

(assert (=> b!3214669 (= res!1308583 (not ((_ is IntegerValue!16370) (value!169401 (h!41609 (t!239158 tokens!494))))))))

(declare-fun e!2004393 () Bool)

(assert (=> b!3214669 (= e!2004393 e!2004394)))

(declare-fun b!3214670 () Bool)

(assert (=> b!3214670 (= e!2004393 (inv!17 (value!169401 (h!41609 (t!239158 tokens!494)))))))

(declare-fun b!3214671 () Bool)

(assert (=> b!3214671 (= e!2004394 (inv!15 (value!169401 (h!41609 (t!239158 tokens!494)))))))

(declare-fun d!881754 () Bool)

(declare-fun c!540275 () Bool)

(assert (=> d!881754 (= c!540275 ((_ is IntegerValue!16368) (value!169401 (h!41609 (t!239158 tokens!494)))))))

(declare-fun e!2004395 () Bool)

(assert (=> d!881754 (= (inv!21 (value!169401 (h!41609 (t!239158 tokens!494)))) e!2004395)))

(declare-fun b!3214672 () Bool)

(assert (=> b!3214672 (= e!2004395 e!2004393)))

(declare-fun c!540274 () Bool)

(assert (=> b!3214672 (= c!540274 ((_ is IntegerValue!16369) (value!169401 (h!41609 (t!239158 tokens!494)))))))

(declare-fun b!3214673 () Bool)

(assert (=> b!3214673 (= e!2004395 (inv!16 (value!169401 (h!41609 (t!239158 tokens!494)))))))

(assert (= (and d!881754 c!540275) b!3214673))

(assert (= (and d!881754 (not c!540275)) b!3214672))

(assert (= (and b!3214672 c!540274) b!3214670))

(assert (= (and b!3214672 (not c!540274)) b!3214669))

(assert (= (and b!3214669 (not res!1308583)) b!3214671))

(declare-fun m!3486457 () Bool)

(assert (=> b!3214670 m!3486457))

(declare-fun m!3486459 () Bool)

(assert (=> b!3214671 m!3486459))

(declare-fun m!3486461 () Bool)

(assert (=> b!3214673 m!3486461))

(assert (=> b!3213758 d!881754))

(declare-fun b!3214676 () Bool)

(declare-fun res!1308585 () Bool)

(declare-fun e!2004396 () Bool)

(assert (=> b!3214676 (=> (not res!1308585) (not e!2004396))))

(declare-fun lt!1087456 () List!36311)

(assert (=> b!3214676 (= res!1308585 (= (size!27274 lt!1087456) (+ (size!27274 (t!239156 lt!1086523)) (size!27274 lt!1086557))))))

(declare-fun b!3214675 () Bool)

(declare-fun e!2004397 () List!36311)

(assert (=> b!3214675 (= e!2004397 (Cons!36187 (h!41607 (t!239156 lt!1086523)) (++!8688 (t!239156 (t!239156 lt!1086523)) lt!1086557)))))

(declare-fun b!3214674 () Bool)

(assert (=> b!3214674 (= e!2004397 lt!1086557)))

(declare-fun d!881756 () Bool)

(assert (=> d!881756 e!2004396))

(declare-fun res!1308584 () Bool)

(assert (=> d!881756 (=> (not res!1308584) (not e!2004396))))

(assert (=> d!881756 (= res!1308584 (= (content!4894 lt!1087456) ((_ map or) (content!4894 (t!239156 lt!1086523)) (content!4894 lt!1086557))))))

(assert (=> d!881756 (= lt!1087456 e!2004397)))

(declare-fun c!540276 () Bool)

(assert (=> d!881756 (= c!540276 ((_ is Nil!36187) (t!239156 lt!1086523)))))

(assert (=> d!881756 (= (++!8688 (t!239156 lt!1086523) lt!1086557) lt!1087456)))

(declare-fun b!3214677 () Bool)

(assert (=> b!3214677 (= e!2004396 (or (not (= lt!1086557 Nil!36187)) (= lt!1087456 (t!239156 lt!1086523))))))

(assert (= (and d!881756 c!540276) b!3214674))

(assert (= (and d!881756 (not c!540276)) b!3214675))

(assert (= (and d!881756 res!1308584) b!3214676))

(assert (= (and b!3214676 res!1308585) b!3214677))

(declare-fun m!3486463 () Bool)

(assert (=> b!3214676 m!3486463))

(assert (=> b!3214676 m!3484023))

(assert (=> b!3214676 m!3484517))

(declare-fun m!3486465 () Bool)

(assert (=> b!3214675 m!3486465))

(declare-fun m!3486467 () Bool)

(assert (=> d!881756 m!3486467))

(assert (=> d!881756 m!3485531))

(assert (=> d!881756 m!3484525))

(assert (=> b!3213480 d!881756))

(declare-fun d!881758 () Bool)

(declare-fun lt!1087460 () Int)

(assert (=> d!881758 (= lt!1087460 (size!27277 (list!12877 (_1!20931 lt!1086753))))))

(assert (=> d!881758 (= lt!1087460 (size!27278 (c!539814 (_1!20931 lt!1086753))))))

(assert (=> d!881758 (= (size!27275 (_1!20931 lt!1086753)) lt!1087460)))

(declare-fun bs!542025 () Bool)

(assert (= bs!542025 d!881758))

(assert (=> bs!542025 m!3484025))

(assert (=> bs!542025 m!3484025))

(declare-fun m!3486469 () Bool)

(assert (=> bs!542025 m!3486469))

(declare-fun m!3486471 () Bool)

(assert (=> bs!542025 m!3486471))

(assert (=> d!880986 d!881758))

(declare-fun b!3214897 () Bool)

(declare-fun e!2004523 () tuple2!35594)

(declare-fun lt!1087634 () BalanceConc!21268)

(assert (=> b!3214897 (= e!2004523 (tuple2!35595 (BalanceConc!21271 Empty!10828) lt!1087634))))

(declare-fun b!3214898 () Bool)

(declare-fun e!2004524 () tuple2!35594)

(assert (=> b!3214898 (= e!2004524 (tuple2!35595 (BalanceConc!21271 Empty!10828) lt!1086562))))

(declare-datatypes ((tuple2!35608 0))(
  ( (tuple2!35609 (_1!20938 Token!9818) (_2!20938 BalanceConc!21268)) )
))
(declare-datatypes ((Option!7156 0))(
  ( (None!7155) (Some!7155 (v!35725 tuple2!35608)) )
))
(declare-fun lt!1087614 () Option!7156)

(declare-fun b!3214899 () Bool)

(declare-fun lt!1087625 () tuple2!35594)

(declare-fun lexRec!689 (LexerInterface!4815 List!36312 BalanceConc!21268) tuple2!35594)

(assert (=> b!3214899 (= lt!1087625 (lexRec!689 thiss!18206 rules!2135 (_2!20938 (v!35725 lt!1087614))))))

(declare-fun prepend!1177 (BalanceConc!21270 Token!9818) BalanceConc!21270)

(assert (=> b!3214899 (= e!2004523 (tuple2!35595 (prepend!1177 (_1!20931 lt!1087625) (_1!20938 (v!35725 lt!1087614))) (_2!20931 lt!1087625)))))

(declare-fun lt!1087629 () BalanceConc!21268)

(declare-fun b!3214900 () Bool)

(declare-fun lt!1087626 () Option!7156)

(declare-fun append!869 (BalanceConc!21270 Token!9818) BalanceConc!21270)

(assert (=> b!3214900 (= e!2004524 (lexTailRecV2!934 thiss!18206 rules!2135 lt!1086562 lt!1087629 (_2!20938 (v!35725 lt!1087626)) (append!869 (BalanceConc!21271 Empty!10828) (_1!20938 (v!35725 lt!1087626)))))))

(declare-fun lt!1087633 () tuple2!35594)

(assert (=> b!3214900 (= lt!1087633 (lexRec!689 thiss!18206 rules!2135 (_2!20938 (v!35725 lt!1087626))))))

(declare-fun lt!1087618 () List!36311)

(assert (=> b!3214900 (= lt!1087618 (list!12875 (BalanceConc!21269 Empty!10827)))))

(declare-fun lt!1087621 () List!36311)

(assert (=> b!3214900 (= lt!1087621 (list!12875 (charsOf!3242 (_1!20938 (v!35725 lt!1087626)))))))

(declare-fun lt!1087615 () List!36311)

(assert (=> b!3214900 (= lt!1087615 (list!12875 (_2!20938 (v!35725 lt!1087626))))))

(declare-fun lt!1087612 () Unit!50676)

(assert (=> b!3214900 (= lt!1087612 (lemmaConcatAssociativity!1750 lt!1087618 lt!1087621 lt!1087615))))

(assert (=> b!3214900 (= (++!8688 (++!8688 lt!1087618 lt!1087621) lt!1087615) (++!8688 lt!1087618 (++!8688 lt!1087621 lt!1087615)))))

(declare-fun lt!1087603 () Unit!50676)

(assert (=> b!3214900 (= lt!1087603 lt!1087612)))

(declare-fun lt!1087602 () Option!7156)

(declare-fun maxPrefixZipperSequence!1082 (LexerInterface!4815 List!36312 BalanceConc!21268) Option!7156)

(assert (=> b!3214900 (= lt!1087602 (maxPrefixZipperSequence!1082 thiss!18206 rules!2135 lt!1086562))))

(declare-fun c!540351 () Bool)

(assert (=> b!3214900 (= c!540351 ((_ is Some!7155) lt!1087602))))

(declare-fun e!2004522 () tuple2!35594)

(assert (=> b!3214900 (= (lexRec!689 thiss!18206 rules!2135 lt!1086562) e!2004522)))

(declare-fun lt!1087627 () Unit!50676)

(declare-fun Unit!50688 () Unit!50676)

(assert (=> b!3214900 (= lt!1087627 Unit!50688)))

(declare-fun lt!1087610 () List!36313)

(assert (=> b!3214900 (= lt!1087610 (list!12877 (BalanceConc!21271 Empty!10828)))))

(declare-fun lt!1087609 () List!36313)

(assert (=> b!3214900 (= lt!1087609 (Cons!36189 (_1!20938 (v!35725 lt!1087626)) Nil!36189))))

(declare-fun lt!1087608 () List!36313)

(assert (=> b!3214900 (= lt!1087608 (list!12877 (_1!20931 lt!1087633)))))

(declare-fun lt!1087604 () Unit!50676)

(declare-fun lemmaConcatAssociativity!1752 (List!36313 List!36313 List!36313) Unit!50676)

(assert (=> b!3214900 (= lt!1087604 (lemmaConcatAssociativity!1752 lt!1087610 lt!1087609 lt!1087608))))

(declare-fun ++!8693 (List!36313 List!36313) List!36313)

(assert (=> b!3214900 (= (++!8693 (++!8693 lt!1087610 lt!1087609) lt!1087608) (++!8693 lt!1087610 (++!8693 lt!1087609 lt!1087608)))))

(declare-fun lt!1087616 () Unit!50676)

(assert (=> b!3214900 (= lt!1087616 lt!1087604)))

(declare-fun lt!1087607 () List!36311)

(assert (=> b!3214900 (= lt!1087607 (++!8688 (list!12875 (BalanceConc!21269 Empty!10827)) (list!12875 (charsOf!3242 (_1!20938 (v!35725 lt!1087626))))))))

(declare-fun lt!1087611 () List!36311)

(assert (=> b!3214900 (= lt!1087611 (list!12875 (_2!20938 (v!35725 lt!1087626))))))

(declare-fun lt!1087623 () List!36313)

(assert (=> b!3214900 (= lt!1087623 (list!12877 (append!869 (BalanceConc!21271 Empty!10828) (_1!20938 (v!35725 lt!1087626)))))))

(declare-fun lt!1087630 () Unit!50676)

(declare-fun lemmaLexThenLexPrefix!454 (LexerInterface!4815 List!36312 List!36311 List!36311 List!36313 List!36313 List!36311) Unit!50676)

(assert (=> b!3214900 (= lt!1087630 (lemmaLexThenLexPrefix!454 thiss!18206 rules!2135 lt!1087607 lt!1087611 lt!1087623 (list!12877 (_1!20931 lt!1087633)) (list!12875 (_2!20931 lt!1087633))))))

(assert (=> b!3214900 (= (lexList!1314 thiss!18206 rules!2135 lt!1087607) (tuple2!35599 lt!1087623 Nil!36187))))

(declare-fun lt!1087617 () Unit!50676)

(assert (=> b!3214900 (= lt!1087617 lt!1087630)))

(assert (=> b!3214900 (= lt!1087634 (++!8689 (BalanceConc!21269 Empty!10827) (charsOf!3242 (_1!20938 (v!35725 lt!1087626)))))))

(assert (=> b!3214900 (= lt!1087614 (maxPrefixZipperSequence!1082 thiss!18206 rules!2135 lt!1087634))))

(declare-fun c!540352 () Bool)

(assert (=> b!3214900 (= c!540352 ((_ is Some!7155) lt!1087614))))

(assert (=> b!3214900 (= (lexRec!689 thiss!18206 rules!2135 (++!8689 (BalanceConc!21269 Empty!10827) (charsOf!3242 (_1!20938 (v!35725 lt!1087626))))) e!2004523)))

(declare-fun lt!1087605 () Unit!50676)

(declare-fun Unit!50689 () Unit!50676)

(assert (=> b!3214900 (= lt!1087605 Unit!50689)))

(assert (=> b!3214900 (= lt!1087629 (++!8689 (BalanceConc!21269 Empty!10827) (charsOf!3242 (_1!20938 (v!35725 lt!1087626)))))))

(declare-fun lt!1087632 () List!36311)

(assert (=> b!3214900 (= lt!1087632 (list!12875 lt!1087629))))

(declare-fun lt!1087624 () List!36311)

(assert (=> b!3214900 (= lt!1087624 (list!12875 (_2!20938 (v!35725 lt!1087626))))))

(declare-fun lt!1087606 () Unit!50676)

(declare-fun lemmaConcatTwoListThenFSndIsSuffix!536 (List!36311 List!36311) Unit!50676)

(assert (=> b!3214900 (= lt!1087606 (lemmaConcatTwoListThenFSndIsSuffix!536 lt!1087632 lt!1087624))))

(declare-fun isSuffix!851 (List!36311 List!36311) Bool)

(assert (=> b!3214900 (isSuffix!851 lt!1087624 (++!8688 lt!1087632 lt!1087624))))

(declare-fun lt!1087613 () Unit!50676)

(assert (=> b!3214900 (= lt!1087613 lt!1087606)))

(declare-fun b!3214901 () Bool)

(assert (=> b!3214901 (= e!2004522 (tuple2!35595 (BalanceConc!21271 Empty!10828) lt!1086562))))

(declare-fun b!3214902 () Bool)

(declare-fun lt!1087619 () tuple2!35594)

(assert (=> b!3214902 (= lt!1087619 (lexRec!689 thiss!18206 rules!2135 (_2!20938 (v!35725 lt!1087602))))))

(assert (=> b!3214902 (= e!2004522 (tuple2!35595 (prepend!1177 (_1!20931 lt!1087619) (_1!20938 (v!35725 lt!1087602))) (_2!20931 lt!1087619)))))

(declare-fun d!881760 () Bool)

(declare-fun e!2004521 () Bool)

(assert (=> d!881760 e!2004521))

(declare-fun res!1308662 () Bool)

(assert (=> d!881760 (=> (not res!1308662) (not e!2004521))))

(declare-fun lt!1087620 () tuple2!35594)

(assert (=> d!881760 (= res!1308662 (= (list!12877 (_1!20931 lt!1087620)) (list!12877 (_1!20931 (lexRec!689 thiss!18206 rules!2135 lt!1086562)))))))

(assert (=> d!881760 (= lt!1087620 e!2004524)))

(declare-fun c!540350 () Bool)

(assert (=> d!881760 (= c!540350 ((_ is Some!7155) lt!1087626))))

(declare-fun maxPrefixZipperSequenceV2!476 (LexerInterface!4815 List!36312 BalanceConc!21268 BalanceConc!21268) Option!7156)

(assert (=> d!881760 (= lt!1087626 (maxPrefixZipperSequenceV2!476 thiss!18206 rules!2135 lt!1086562 lt!1086562))))

(declare-fun lt!1087622 () Unit!50676)

(declare-fun lt!1087628 () Unit!50676)

(assert (=> d!881760 (= lt!1087622 lt!1087628)))

(declare-fun lt!1087631 () List!36311)

(declare-fun lt!1087635 () List!36311)

(assert (=> d!881760 (isSuffix!851 lt!1087631 (++!8688 lt!1087635 lt!1087631))))

(assert (=> d!881760 (= lt!1087628 (lemmaConcatTwoListThenFSndIsSuffix!536 lt!1087635 lt!1087631))))

(assert (=> d!881760 (= lt!1087631 (list!12875 lt!1086562))))

(assert (=> d!881760 (= lt!1087635 (list!12875 (BalanceConc!21269 Empty!10827)))))

(assert (=> d!881760 (= (lexTailRecV2!934 thiss!18206 rules!2135 lt!1086562 (BalanceConc!21269 Empty!10827) lt!1086562 (BalanceConc!21271 Empty!10828)) lt!1087620)))

(declare-fun b!3214903 () Bool)

(assert (=> b!3214903 (= e!2004521 (= (list!12875 (_2!20931 lt!1087620)) (list!12875 (_2!20931 (lexRec!689 thiss!18206 rules!2135 lt!1086562)))))))

(assert (= (and d!881760 c!540350) b!3214900))

(assert (= (and d!881760 (not c!540350)) b!3214898))

(assert (= (and b!3214900 c!540351) b!3214902))

(assert (= (and b!3214900 (not c!540351)) b!3214901))

(assert (= (and b!3214900 c!540352) b!3214899))

(assert (= (and b!3214900 (not c!540352)) b!3214897))

(assert (= (and d!881760 res!1308662) b!3214903))

(declare-fun m!3486957 () Bool)

(assert (=> b!3214902 m!3486957))

(declare-fun m!3486959 () Bool)

(assert (=> b!3214902 m!3486959))

(declare-fun m!3486961 () Bool)

(assert (=> b!3214903 m!3486961))

(declare-fun m!3486963 () Bool)

(assert (=> b!3214903 m!3486963))

(declare-fun m!3486965 () Bool)

(assert (=> b!3214903 m!3486965))

(declare-fun m!3486967 () Bool)

(assert (=> b!3214900 m!3486967))

(declare-fun m!3486969 () Bool)

(assert (=> b!3214900 m!3486969))

(declare-fun m!3486971 () Bool)

(assert (=> b!3214900 m!3486971))

(declare-fun m!3486973 () Bool)

(assert (=> b!3214900 m!3486973))

(assert (=> b!3214900 m!3483815))

(declare-fun m!3486975 () Bool)

(assert (=> b!3214900 m!3486975))

(declare-fun m!3486977 () Bool)

(assert (=> b!3214900 m!3486977))

(assert (=> b!3214900 m!3486975))

(declare-fun m!3486979 () Bool)

(assert (=> b!3214900 m!3486979))

(declare-fun m!3486981 () Bool)

(assert (=> b!3214900 m!3486981))

(declare-fun m!3486983 () Bool)

(assert (=> b!3214900 m!3486983))

(declare-fun m!3486985 () Bool)

(assert (=> b!3214900 m!3486985))

(assert (=> b!3214900 m!3486963))

(assert (=> b!3214900 m!3483815))

(declare-fun m!3486987 () Bool)

(assert (=> b!3214900 m!3486987))

(declare-fun m!3486989 () Bool)

(assert (=> b!3214900 m!3486989))

(declare-fun m!3486991 () Bool)

(assert (=> b!3214900 m!3486991))

(declare-fun m!3486993 () Bool)

(assert (=> b!3214900 m!3486993))

(declare-fun m!3486995 () Bool)

(assert (=> b!3214900 m!3486995))

(declare-fun m!3486997 () Bool)

(assert (=> b!3214900 m!3486997))

(declare-fun m!3486999 () Bool)

(assert (=> b!3214900 m!3486999))

(declare-fun m!3487001 () Bool)

(assert (=> b!3214900 m!3487001))

(assert (=> b!3214900 m!3486987))

(assert (=> b!3214900 m!3486981))

(assert (=> b!3214900 m!3486969))

(declare-fun m!3487003 () Bool)

(assert (=> b!3214900 m!3487003))

(assert (=> b!3214900 m!3486971))

(declare-fun m!3487005 () Bool)

(assert (=> b!3214900 m!3487005))

(declare-fun m!3487007 () Bool)

(assert (=> b!3214900 m!3487007))

(declare-fun m!3487009 () Bool)

(assert (=> b!3214900 m!3487009))

(declare-fun m!3487011 () Bool)

(assert (=> b!3214900 m!3487011))

(assert (=> b!3214900 m!3486971))

(declare-fun m!3487013 () Bool)

(assert (=> b!3214900 m!3487013))

(declare-fun m!3487015 () Bool)

(assert (=> b!3214900 m!3487015))

(declare-fun m!3487017 () Bool)

(assert (=> b!3214900 m!3487017))

(declare-fun m!3487019 () Bool)

(assert (=> b!3214900 m!3487019))

(assert (=> b!3214900 m!3487001))

(assert (=> b!3214900 m!3487001))

(assert (=> b!3214900 m!3486993))

(assert (=> b!3214900 m!3486977))

(declare-fun m!3487021 () Bool)

(assert (=> b!3214900 m!3487021))

(assert (=> b!3214900 m!3487017))

(assert (=> b!3214900 m!3487005))

(declare-fun m!3487023 () Bool)

(assert (=> b!3214900 m!3487023))

(declare-fun m!3487025 () Bool)

(assert (=> b!3214900 m!3487025))

(declare-fun m!3487027 () Bool)

(assert (=> b!3214900 m!3487027))

(assert (=> b!3214900 m!3487007))

(declare-fun m!3487029 () Bool)

(assert (=> d!881760 m!3487029))

(declare-fun m!3487031 () Bool)

(assert (=> d!881760 m!3487031))

(assert (=> d!881760 m!3487029))

(assert (=> d!881760 m!3483815))

(declare-fun m!3487033 () Bool)

(assert (=> d!881760 m!3487033))

(assert (=> d!881760 m!3486963))

(assert (=> d!881760 m!3484027))

(declare-fun m!3487035 () Bool)

(assert (=> d!881760 m!3487035))

(declare-fun m!3487037 () Bool)

(assert (=> d!881760 m!3487037))

(declare-fun m!3487039 () Bool)

(assert (=> d!881760 m!3487039))

(declare-fun m!3487041 () Bool)

(assert (=> b!3214899 m!3487041))

(declare-fun m!3487043 () Bool)

(assert (=> b!3214899 m!3487043))

(assert (=> d!880986 d!881760))

(declare-fun d!881924 () Bool)

(assert (=> d!881924 (= (list!12875 (_2!20931 lt!1086637)) (list!12879 (c!539813 (_2!20931 lt!1086637))))))

(declare-fun bs!542050 () Bool)

(assert (= bs!542050 d!881924))

(declare-fun m!3487045 () Bool)

(assert (=> bs!542050 m!3487045))

(assert (=> b!3213024 d!881924))

(declare-fun b!3214904 () Bool)

(declare-fun e!2004526 () Bool)

(declare-fun e!2004527 () Bool)

(assert (=> b!3214904 (= e!2004526 e!2004527)))

(declare-fun res!1308663 () Bool)

(declare-fun lt!1087638 () tuple2!35598)

(assert (=> b!3214904 (= res!1308663 (< (size!27274 (_2!20933 lt!1087638)) (size!27274 (list!12875 lt!1086564))))))

(assert (=> b!3214904 (=> (not res!1308663) (not e!2004527))))

(declare-fun b!3214905 () Bool)

(declare-fun e!2004525 () tuple2!35598)

(declare-fun lt!1087636 () Option!7154)

(declare-fun lt!1087637 () tuple2!35598)

(assert (=> b!3214905 (= e!2004525 (tuple2!35599 (Cons!36189 (_1!20932 (v!35713 lt!1087636)) (_1!20933 lt!1087637)) (_2!20933 lt!1087637)))))

(assert (=> b!3214905 (= lt!1087637 (lexList!1314 thiss!18206 rules!2135 (_2!20932 (v!35713 lt!1087636))))))

(declare-fun d!881926 () Bool)

(assert (=> d!881926 e!2004526))

(declare-fun c!540354 () Bool)

(assert (=> d!881926 (= c!540354 (> (size!27277 (_1!20933 lt!1087638)) 0))))

(assert (=> d!881926 (= lt!1087638 e!2004525)))

(declare-fun c!540353 () Bool)

(assert (=> d!881926 (= c!540353 ((_ is Some!7153) lt!1087636))))

(assert (=> d!881926 (= lt!1087636 (maxPrefix!2457 thiss!18206 rules!2135 (list!12875 lt!1086564)))))

(assert (=> d!881926 (= (lexList!1314 thiss!18206 rules!2135 (list!12875 lt!1086564)) lt!1087638)))

(declare-fun b!3214906 () Bool)

(assert (=> b!3214906 (= e!2004526 (= (_2!20933 lt!1087638) (list!12875 lt!1086564)))))

(declare-fun b!3214907 () Bool)

(assert (=> b!3214907 (= e!2004525 (tuple2!35599 Nil!36189 (list!12875 lt!1086564)))))

(declare-fun b!3214908 () Bool)

(assert (=> b!3214908 (= e!2004527 (not (isEmpty!20292 (_1!20933 lt!1087638))))))

(assert (= (and d!881926 c!540353) b!3214905))

(assert (= (and d!881926 (not c!540353)) b!3214907))

(assert (= (and d!881926 c!540354) b!3214904))

(assert (= (and d!881926 (not c!540354)) b!3214906))

(assert (= (and b!3214904 res!1308663) b!3214908))

(declare-fun m!3487047 () Bool)

(assert (=> b!3214904 m!3487047))

(assert (=> b!3214904 m!3483735))

(declare-fun m!3487049 () Bool)

(assert (=> b!3214904 m!3487049))

(declare-fun m!3487051 () Bool)

(assert (=> b!3214905 m!3487051))

(declare-fun m!3487053 () Bool)

(assert (=> d!881926 m!3487053))

(assert (=> d!881926 m!3483735))

(declare-fun m!3487055 () Bool)

(assert (=> d!881926 m!3487055))

(declare-fun m!3487057 () Bool)

(assert (=> b!3214908 m!3487057))

(assert (=> b!3213024 d!881926))

(declare-fun d!881928 () Bool)

(assert (=> d!881928 (= (list!12875 lt!1086564) (list!12879 (c!539813 lt!1086564)))))

(declare-fun bs!542051 () Bool)

(assert (= bs!542051 d!881928))

(declare-fun m!3487059 () Bool)

(assert (=> bs!542051 m!3487059))

(assert (=> b!3213024 d!881928))

(assert (=> b!3213493 d!881022))

(declare-fun b!3214909 () Bool)

(declare-fun res!1308669 () Bool)

(declare-fun e!2004531 () Bool)

(assert (=> b!3214909 (=> res!1308669 e!2004531)))

(assert (=> b!3214909 (= res!1308669 (not (isEmpty!20288 (tail!5217 (list!12875 (charsOf!3242 (_1!20932 (get!11526 lt!1086803))))))))))

(declare-fun b!3214910 () Bool)

(declare-fun res!1308671 () Bool)

(declare-fun e!2004529 () Bool)

(assert (=> b!3214910 (=> res!1308671 e!2004529)))

(declare-fun e!2004530 () Bool)

(assert (=> b!3214910 (= res!1308671 e!2004530)))

(declare-fun res!1308666 () Bool)

(assert (=> b!3214910 (=> (not res!1308666) (not e!2004530))))

(declare-fun lt!1087639 () Bool)

(assert (=> b!3214910 (= res!1308666 lt!1087639)))

(declare-fun bm!232684 () Bool)

(declare-fun call!232689 () Bool)

(assert (=> bm!232684 (= call!232689 (isEmpty!20288 (list!12875 (charsOf!3242 (_1!20932 (get!11526 lt!1086803))))))))

(declare-fun b!3214911 () Bool)

(assert (=> b!3214911 (= e!2004530 (= (head!7047 (list!12875 (charsOf!3242 (_1!20932 (get!11526 lt!1086803))))) (c!539812 (regex!5226 (rule!7672 (h!41609 (t!239158 tokens!494)))))))))

(declare-fun b!3214912 () Bool)

(declare-fun e!2004534 () Bool)

(assert (=> b!3214912 (= e!2004534 (matchR!4619 (derivativeStep!2953 (regex!5226 (rule!7672 (h!41609 (t!239158 tokens!494)))) (head!7047 (list!12875 (charsOf!3242 (_1!20932 (get!11526 lt!1086803)))))) (tail!5217 (list!12875 (charsOf!3242 (_1!20932 (get!11526 lt!1086803)))))))))

(declare-fun d!881930 () Bool)

(declare-fun e!2004532 () Bool)

(assert (=> d!881930 e!2004532))

(declare-fun c!540355 () Bool)

(assert (=> d!881930 (= c!540355 ((_ is EmptyExpr!9985) (regex!5226 (rule!7672 (h!41609 (t!239158 tokens!494))))))))

(assert (=> d!881930 (= lt!1087639 e!2004534)))

(declare-fun c!540357 () Bool)

(assert (=> d!881930 (= c!540357 (isEmpty!20288 (list!12875 (charsOf!3242 (_1!20932 (get!11526 lt!1086803))))))))

(assert (=> d!881930 (validRegex!4554 (regex!5226 (rule!7672 (h!41609 (t!239158 tokens!494)))))))

(assert (=> d!881930 (= (matchR!4619 (regex!5226 (rule!7672 (h!41609 (t!239158 tokens!494)))) (list!12875 (charsOf!3242 (_1!20932 (get!11526 lt!1086803))))) lt!1087639)))

(declare-fun b!3214913 () Bool)

(declare-fun e!2004533 () Bool)

(assert (=> b!3214913 (= e!2004533 (not lt!1087639))))

(declare-fun b!3214914 () Bool)

(assert (=> b!3214914 (= e!2004531 (not (= (head!7047 (list!12875 (charsOf!3242 (_1!20932 (get!11526 lt!1086803))))) (c!539812 (regex!5226 (rule!7672 (h!41609 (t!239158 tokens!494))))))))))

(declare-fun b!3214915 () Bool)

(declare-fun res!1308668 () Bool)

(assert (=> b!3214915 (=> (not res!1308668) (not e!2004530))))

(assert (=> b!3214915 (= res!1308668 (isEmpty!20288 (tail!5217 (list!12875 (charsOf!3242 (_1!20932 (get!11526 lt!1086803)))))))))

(declare-fun b!3214916 () Bool)

(declare-fun res!1308664 () Bool)

(assert (=> b!3214916 (=> (not res!1308664) (not e!2004530))))

(assert (=> b!3214916 (= res!1308664 (not call!232689))))

(declare-fun b!3214917 () Bool)

(declare-fun e!2004528 () Bool)

(assert (=> b!3214917 (= e!2004529 e!2004528)))

(declare-fun res!1308667 () Bool)

(assert (=> b!3214917 (=> (not res!1308667) (not e!2004528))))

(assert (=> b!3214917 (= res!1308667 (not lt!1087639))))

(declare-fun b!3214918 () Bool)

(assert (=> b!3214918 (= e!2004532 e!2004533)))

(declare-fun c!540356 () Bool)

(assert (=> b!3214918 (= c!540356 ((_ is EmptyLang!9985) (regex!5226 (rule!7672 (h!41609 (t!239158 tokens!494))))))))

(declare-fun b!3214919 () Bool)

(declare-fun res!1308665 () Bool)

(assert (=> b!3214919 (=> res!1308665 e!2004529)))

(assert (=> b!3214919 (= res!1308665 (not ((_ is ElementMatch!9985) (regex!5226 (rule!7672 (h!41609 (t!239158 tokens!494)))))))))

(assert (=> b!3214919 (= e!2004533 e!2004529)))

(declare-fun b!3214920 () Bool)

(assert (=> b!3214920 (= e!2004528 e!2004531)))

(declare-fun res!1308670 () Bool)

(assert (=> b!3214920 (=> res!1308670 e!2004531)))

(assert (=> b!3214920 (= res!1308670 call!232689)))

(declare-fun b!3214921 () Bool)

(assert (=> b!3214921 (= e!2004534 (nullable!3400 (regex!5226 (rule!7672 (h!41609 (t!239158 tokens!494))))))))

(declare-fun b!3214922 () Bool)

(assert (=> b!3214922 (= e!2004532 (= lt!1087639 call!232689))))

(assert (= (and d!881930 c!540357) b!3214921))

(assert (= (and d!881930 (not c!540357)) b!3214912))

(assert (= (and d!881930 c!540355) b!3214922))

(assert (= (and d!881930 (not c!540355)) b!3214918))

(assert (= (and b!3214918 c!540356) b!3214913))

(assert (= (and b!3214918 (not c!540356)) b!3214919))

(assert (= (and b!3214919 (not res!1308665)) b!3214910))

(assert (= (and b!3214910 res!1308666) b!3214916))

(assert (= (and b!3214916 res!1308664) b!3214915))

(assert (= (and b!3214915 res!1308668) b!3214911))

(assert (= (and b!3214910 (not res!1308671)) b!3214917))

(assert (= (and b!3214917 res!1308667) b!3214920))

(assert (= (and b!3214920 (not res!1308670)) b!3214909))

(assert (= (and b!3214909 (not res!1308669)) b!3214914))

(assert (= (or b!3214922 b!3214920 b!3214916) bm!232684))

(declare-fun m!3487061 () Bool)

(assert (=> b!3214921 m!3487061))

(assert (=> b!3214909 m!3484217))

(declare-fun m!3487063 () Bool)

(assert (=> b!3214909 m!3487063))

(assert (=> b!3214909 m!3487063))

(declare-fun m!3487065 () Bool)

(assert (=> b!3214909 m!3487065))

(assert (=> b!3214911 m!3484217))

(declare-fun m!3487067 () Bool)

(assert (=> b!3214911 m!3487067))

(assert (=> b!3214914 m!3484217))

(assert (=> b!3214914 m!3487067))

(assert (=> b!3214912 m!3484217))

(assert (=> b!3214912 m!3487067))

(assert (=> b!3214912 m!3487067))

(declare-fun m!3487069 () Bool)

(assert (=> b!3214912 m!3487069))

(assert (=> b!3214912 m!3484217))

(assert (=> b!3214912 m!3487063))

(assert (=> b!3214912 m!3487069))

(assert (=> b!3214912 m!3487063))

(declare-fun m!3487071 () Bool)

(assert (=> b!3214912 m!3487071))

(assert (=> d!881930 m!3484217))

(declare-fun m!3487073 () Bool)

(assert (=> d!881930 m!3487073))

(declare-fun m!3487075 () Bool)

(assert (=> d!881930 m!3487075))

(assert (=> bm!232684 m!3484217))

(assert (=> bm!232684 m!3487073))

(assert (=> b!3214915 m!3484217))

(assert (=> b!3214915 m!3487063))

(assert (=> b!3214915 m!3487063))

(assert (=> b!3214915 m!3487065))

(assert (=> b!3213328 d!881930))

(assert (=> b!3213328 d!881462))

(assert (=> b!3213328 d!881464))

(assert (=> b!3213328 d!881466))

(declare-fun d!881932 () Bool)

(declare-fun c!540358 () Bool)

(assert (=> d!881932 (= c!540358 ((_ is Nil!36187) lt!1086866))))

(declare-fun e!2004535 () (InoxSet C!20156))

(assert (=> d!881932 (= (content!4894 lt!1086866) e!2004535)))

(declare-fun b!3214923 () Bool)

(assert (=> b!3214923 (= e!2004535 ((as const (Array C!20156 Bool)) false))))

(declare-fun b!3214924 () Bool)

(assert (=> b!3214924 (= e!2004535 ((_ map or) (store ((as const (Array C!20156 Bool)) false) (h!41607 lt!1086866) true) (content!4894 (t!239156 lt!1086866))))))

(assert (= (and d!881932 c!540358) b!3214923))

(assert (= (and d!881932 (not c!540358)) b!3214924))

(declare-fun m!3487077 () Bool)

(assert (=> b!3214924 m!3487077))

(declare-fun m!3487079 () Bool)

(assert (=> b!3214924 m!3487079))

(assert (=> d!881092 d!881932))

(declare-fun d!881934 () Bool)

(declare-fun c!540359 () Bool)

(assert (=> d!881934 (= c!540359 ((_ is Nil!36187) lt!1086561))))

(declare-fun e!2004536 () (InoxSet C!20156))

(assert (=> d!881934 (= (content!4894 lt!1086561) e!2004536)))

(declare-fun b!3214925 () Bool)

(assert (=> b!3214925 (= e!2004536 ((as const (Array C!20156 Bool)) false))))

(declare-fun b!3214926 () Bool)

(assert (=> b!3214926 (= e!2004536 ((_ map or) (store ((as const (Array C!20156 Bool)) false) (h!41607 lt!1086561) true) (content!4894 (t!239156 lt!1086561))))))

(assert (= (and d!881934 c!540359) b!3214925))

(assert (= (and d!881934 (not c!540359)) b!3214926))

(declare-fun m!3487081 () Bool)

(assert (=> b!3214926 m!3487081))

(assert (=> b!3214926 m!3485277))

(assert (=> d!881092 d!881934))

(assert (=> d!881092 d!881742))

(declare-fun b!3214927 () Bool)

(declare-fun res!1308677 () Bool)

(declare-fun e!2004540 () Bool)

(assert (=> b!3214927 (=> res!1308677 e!2004540)))

(assert (=> b!3214927 (= res!1308677 (not (isEmpty!20288 (tail!5217 (tail!5217 lt!1086557)))))))

(declare-fun b!3214928 () Bool)

(declare-fun res!1308679 () Bool)

(declare-fun e!2004538 () Bool)

(assert (=> b!3214928 (=> res!1308679 e!2004538)))

(declare-fun e!2004539 () Bool)

(assert (=> b!3214928 (= res!1308679 e!2004539)))

(declare-fun res!1308674 () Bool)

(assert (=> b!3214928 (=> (not res!1308674) (not e!2004539))))

(declare-fun lt!1087640 () Bool)

(assert (=> b!3214928 (= res!1308674 lt!1087640)))

(declare-fun bm!232685 () Bool)

(declare-fun call!232690 () Bool)

(assert (=> bm!232685 (= call!232690 (isEmpty!20288 (tail!5217 lt!1086557)))))

(declare-fun b!3214929 () Bool)

(assert (=> b!3214929 (= e!2004539 (= (head!7047 (tail!5217 lt!1086557)) (c!539812 (derivativeStep!2953 (regex!5226 lt!1086524) (head!7047 lt!1086557)))))))

(declare-fun b!3214930 () Bool)

(declare-fun e!2004543 () Bool)

(assert (=> b!3214930 (= e!2004543 (matchR!4619 (derivativeStep!2953 (derivativeStep!2953 (regex!5226 lt!1086524) (head!7047 lt!1086557)) (head!7047 (tail!5217 lt!1086557))) (tail!5217 (tail!5217 lt!1086557))))))

(declare-fun d!881936 () Bool)

(declare-fun e!2004541 () Bool)

(assert (=> d!881936 e!2004541))

(declare-fun c!540360 () Bool)

(assert (=> d!881936 (= c!540360 ((_ is EmptyExpr!9985) (derivativeStep!2953 (regex!5226 lt!1086524) (head!7047 lt!1086557))))))

(assert (=> d!881936 (= lt!1087640 e!2004543)))

(declare-fun c!540362 () Bool)

(assert (=> d!881936 (= c!540362 (isEmpty!20288 (tail!5217 lt!1086557)))))

(assert (=> d!881936 (validRegex!4554 (derivativeStep!2953 (regex!5226 lt!1086524) (head!7047 lt!1086557)))))

(assert (=> d!881936 (= (matchR!4619 (derivativeStep!2953 (regex!5226 lt!1086524) (head!7047 lt!1086557)) (tail!5217 lt!1086557)) lt!1087640)))

(declare-fun b!3214931 () Bool)

(declare-fun e!2004542 () Bool)

(assert (=> b!3214931 (= e!2004542 (not lt!1087640))))

(declare-fun b!3214932 () Bool)

(assert (=> b!3214932 (= e!2004540 (not (= (head!7047 (tail!5217 lt!1086557)) (c!539812 (derivativeStep!2953 (regex!5226 lt!1086524) (head!7047 lt!1086557))))))))

(declare-fun b!3214933 () Bool)

(declare-fun res!1308676 () Bool)

(assert (=> b!3214933 (=> (not res!1308676) (not e!2004539))))

(assert (=> b!3214933 (= res!1308676 (isEmpty!20288 (tail!5217 (tail!5217 lt!1086557))))))

(declare-fun b!3214934 () Bool)

(declare-fun res!1308672 () Bool)

(assert (=> b!3214934 (=> (not res!1308672) (not e!2004539))))

(assert (=> b!3214934 (= res!1308672 (not call!232690))))

(declare-fun b!3214935 () Bool)

(declare-fun e!2004537 () Bool)

(assert (=> b!3214935 (= e!2004538 e!2004537)))

(declare-fun res!1308675 () Bool)

(assert (=> b!3214935 (=> (not res!1308675) (not e!2004537))))

(assert (=> b!3214935 (= res!1308675 (not lt!1087640))))

(declare-fun b!3214936 () Bool)

(assert (=> b!3214936 (= e!2004541 e!2004542)))

(declare-fun c!540361 () Bool)

(assert (=> b!3214936 (= c!540361 ((_ is EmptyLang!9985) (derivativeStep!2953 (regex!5226 lt!1086524) (head!7047 lt!1086557))))))

(declare-fun b!3214937 () Bool)

(declare-fun res!1308673 () Bool)

(assert (=> b!3214937 (=> res!1308673 e!2004538)))

(assert (=> b!3214937 (= res!1308673 (not ((_ is ElementMatch!9985) (derivativeStep!2953 (regex!5226 lt!1086524) (head!7047 lt!1086557)))))))

(assert (=> b!3214937 (= e!2004542 e!2004538)))

(declare-fun b!3214938 () Bool)

(assert (=> b!3214938 (= e!2004537 e!2004540)))

(declare-fun res!1308678 () Bool)

(assert (=> b!3214938 (=> res!1308678 e!2004540)))

(assert (=> b!3214938 (= res!1308678 call!232690)))

(declare-fun b!3214939 () Bool)

(assert (=> b!3214939 (= e!2004543 (nullable!3400 (derivativeStep!2953 (regex!5226 lt!1086524) (head!7047 lt!1086557))))))

(declare-fun b!3214940 () Bool)

(assert (=> b!3214940 (= e!2004541 (= lt!1087640 call!232690))))

(assert (= (and d!881936 c!540362) b!3214939))

(assert (= (and d!881936 (not c!540362)) b!3214930))

(assert (= (and d!881936 c!540360) b!3214940))

(assert (= (and d!881936 (not c!540360)) b!3214936))

(assert (= (and b!3214936 c!540361) b!3214931))

(assert (= (and b!3214936 (not c!540361)) b!3214937))

(assert (= (and b!3214937 (not res!1308673)) b!3214928))

(assert (= (and b!3214928 res!1308674) b!3214934))

(assert (= (and b!3214934 res!1308672) b!3214933))

(assert (= (and b!3214933 res!1308676) b!3214929))

(assert (= (and b!3214928 (not res!1308679)) b!3214935))

(assert (= (and b!3214935 res!1308675) b!3214938))

(assert (= (and b!3214938 (not res!1308678)) b!3214927))

(assert (= (and b!3214927 (not res!1308677)) b!3214932))

(assert (= (or b!3214940 b!3214938 b!3214934) bm!232685))

(assert (=> b!3214939 m!3484947))

(declare-fun m!3487083 () Bool)

(assert (=> b!3214939 m!3487083))

(assert (=> b!3214927 m!3484943))

(declare-fun m!3487085 () Bool)

(assert (=> b!3214927 m!3487085))

(assert (=> b!3214927 m!3487085))

(declare-fun m!3487087 () Bool)

(assert (=> b!3214927 m!3487087))

(assert (=> b!3214929 m!3484943))

(declare-fun m!3487089 () Bool)

(assert (=> b!3214929 m!3487089))

(assert (=> b!3214932 m!3484943))

(assert (=> b!3214932 m!3487089))

(assert (=> b!3214930 m!3484943))

(assert (=> b!3214930 m!3487089))

(assert (=> b!3214930 m!3484947))

(assert (=> b!3214930 m!3487089))

(declare-fun m!3487091 () Bool)

(assert (=> b!3214930 m!3487091))

(assert (=> b!3214930 m!3484943))

(assert (=> b!3214930 m!3487085))

(assert (=> b!3214930 m!3487091))

(assert (=> b!3214930 m!3487085))

(declare-fun m!3487093 () Bool)

(assert (=> b!3214930 m!3487093))

(assert (=> d!881936 m!3484943))

(assert (=> d!881936 m!3484945))

(assert (=> d!881936 m!3484947))

(declare-fun m!3487095 () Bool)

(assert (=> d!881936 m!3487095))

(assert (=> bm!232685 m!3484943))

(assert (=> bm!232685 m!3484945))

(assert (=> b!3214933 m!3484943))

(assert (=> b!3214933 m!3487085))

(assert (=> b!3214933 m!3487085))

(assert (=> b!3214933 m!3487087))

(assert (=> b!3213687 d!881936))

(declare-fun bm!232699 () Bool)

(declare-fun call!232707 () Regex!9985)

(declare-fun call!232706 () Regex!9985)

(assert (=> bm!232699 (= call!232707 call!232706)))

(declare-fun b!3214985 () Bool)

(declare-fun e!2004566 () Regex!9985)

(assert (=> b!3214985 (= e!2004566 EmptyLang!9985)))

(declare-fun e!2004569 () Regex!9985)

(declare-fun call!232705 () Regex!9985)

(declare-fun b!3214986 () Bool)

(declare-fun call!232704 () Regex!9985)

(assert (=> b!3214986 (= e!2004569 (Union!9985 (Concat!15441 call!232705 (regTwo!20482 (regex!5226 lt!1086524))) call!232704))))

(declare-fun b!3214987 () Bool)

(assert (=> b!3214987 (= e!2004569 (Union!9985 (Concat!15441 call!232705 (regTwo!20482 (regex!5226 lt!1086524))) EmptyLang!9985))))

(declare-fun b!3214988 () Bool)

(declare-fun c!540381 () Bool)

(assert (=> b!3214988 (= c!540381 (nullable!3400 (regOne!20482 (regex!5226 lt!1086524))))))

(declare-fun e!2004567 () Regex!9985)

(assert (=> b!3214988 (= e!2004567 e!2004569)))

(declare-fun d!881938 () Bool)

(declare-fun lt!1087645 () Regex!9985)

(assert (=> d!881938 (validRegex!4554 lt!1087645)))

(assert (=> d!881938 (= lt!1087645 e!2004566)))

(declare-fun c!540384 () Bool)

(assert (=> d!881938 (= c!540384 (or ((_ is EmptyExpr!9985) (regex!5226 lt!1086524)) ((_ is EmptyLang!9985) (regex!5226 lt!1086524))))))

(assert (=> d!881938 (validRegex!4554 (regex!5226 lt!1086524))))

(assert (=> d!881938 (= (derivativeStep!2953 (regex!5226 lt!1086524) (head!7047 lt!1086557)) lt!1087645)))

(declare-fun c!540382 () Bool)

(declare-fun c!540385 () Bool)

(declare-fun bm!232700 () Bool)

(assert (=> bm!232700 (= call!232706 (derivativeStep!2953 (ite c!540382 (regOne!20483 (regex!5226 lt!1086524)) (ite c!540385 (reg!10314 (regex!5226 lt!1086524)) (regOne!20482 (regex!5226 lt!1086524)))) (head!7047 lt!1086557)))))

(declare-fun b!3214989 () Bool)

(assert (=> b!3214989 (= c!540382 ((_ is Union!9985) (regex!5226 lt!1086524)))))

(declare-fun e!2004570 () Regex!9985)

(declare-fun e!2004568 () Regex!9985)

(assert (=> b!3214989 (= e!2004570 e!2004568)))

(declare-fun b!3214990 () Bool)

(assert (=> b!3214990 (= e!2004568 e!2004567)))

(assert (=> b!3214990 (= c!540385 ((_ is Star!9985) (regex!5226 lt!1086524)))))

(declare-fun bm!232701 () Bool)

(assert (=> bm!232701 (= call!232705 call!232707)))

(declare-fun b!3214991 () Bool)

(assert (=> b!3214991 (= e!2004568 (Union!9985 call!232706 call!232704))))

(declare-fun b!3214992 () Bool)

(assert (=> b!3214992 (= e!2004570 (ite (= (head!7047 lt!1086557) (c!539812 (regex!5226 lt!1086524))) EmptyExpr!9985 EmptyLang!9985))))

(declare-fun bm!232702 () Bool)

(assert (=> bm!232702 (= call!232704 (derivativeStep!2953 (ite c!540382 (regTwo!20483 (regex!5226 lt!1086524)) (regTwo!20482 (regex!5226 lt!1086524))) (head!7047 lt!1086557)))))

(declare-fun b!3214993 () Bool)

(assert (=> b!3214993 (= e!2004567 (Concat!15441 call!232707 (regex!5226 lt!1086524)))))

(declare-fun b!3214994 () Bool)

(assert (=> b!3214994 (= e!2004566 e!2004570)))

(declare-fun c!540383 () Bool)

(assert (=> b!3214994 (= c!540383 ((_ is ElementMatch!9985) (regex!5226 lt!1086524)))))

(assert (= (and d!881938 c!540384) b!3214985))

(assert (= (and d!881938 (not c!540384)) b!3214994))

(assert (= (and b!3214994 c!540383) b!3214992))

(assert (= (and b!3214994 (not c!540383)) b!3214989))

(assert (= (and b!3214989 c!540382) b!3214991))

(assert (= (and b!3214989 (not c!540382)) b!3214990))

(assert (= (and b!3214990 c!540385) b!3214993))

(assert (= (and b!3214990 (not c!540385)) b!3214988))

(assert (= (and b!3214988 c!540381) b!3214986))

(assert (= (and b!3214988 (not c!540381)) b!3214987))

(assert (= (or b!3214986 b!3214987) bm!232701))

(assert (= (or b!3214993 bm!232701) bm!232699))

(assert (= (or b!3214991 bm!232699) bm!232700))

(assert (= (or b!3214991 b!3214986) bm!232702))

(declare-fun m!3487121 () Bool)

(assert (=> b!3214988 m!3487121))

(declare-fun m!3487123 () Bool)

(assert (=> d!881938 m!3487123))

(assert (=> d!881938 m!3484953))

(assert (=> bm!232700 m!3483347))

(declare-fun m!3487125 () Bool)

(assert (=> bm!232700 m!3487125))

(assert (=> bm!232702 m!3483347))

(declare-fun m!3487127 () Bool)

(assert (=> bm!232702 m!3487127))

(assert (=> b!3213687 d!881938))

(assert (=> b!3213687 d!880890))

(assert (=> b!3213687 d!881618))

(declare-fun d!881952 () Bool)

(assert (=> d!881952 (= (inv!49056 (dynLambda!14631 (toChars!7173 (transformation!5226 (rule!7672 separatorToken!241))) (value!169401 separatorToken!241))) (isBalanced!3222 (c!539813 (dynLambda!14631 (toChars!7173 (transformation!5226 (rule!7672 separatorToken!241))) (value!169401 separatorToken!241)))))))

(declare-fun bs!542056 () Bool)

(assert (= bs!542056 d!881952))

(declare-fun m!3487135 () Bool)

(assert (=> bs!542056 m!3487135))

(assert (=> tb!158201 d!881952))

(declare-fun d!881956 () Bool)

(declare-fun lt!1087649 () Int)

(assert (=> d!881956 (>= lt!1087649 0)))

(declare-fun e!2004574 () Int)

(assert (=> d!881956 (= lt!1087649 e!2004574)))

(declare-fun c!540387 () Bool)

(assert (=> d!881956 (= c!540387 ((_ is Nil!36187) (_2!20932 (get!11526 lt!1086791))))))

(assert (=> d!881956 (= (size!27274 (_2!20932 (get!11526 lt!1086791))) lt!1087649)))

(declare-fun b!3214998 () Bool)

(assert (=> b!3214998 (= e!2004574 0)))

(declare-fun b!3214999 () Bool)

(assert (=> b!3214999 (= e!2004574 (+ 1 (size!27274 (t!239156 (_2!20932 (get!11526 lt!1086791))))))))

(assert (= (and d!881956 c!540387) b!3214998))

(assert (= (and d!881956 (not c!540387)) b!3214999))

(declare-fun m!3487137 () Bool)

(assert (=> b!3214999 m!3487137))

(assert (=> b!3213306 d!881956))

(assert (=> b!3213306 d!881356))

(assert (=> b!3213306 d!880984))

(declare-fun lt!1087650 () Bool)

(declare-fun d!881958 () Bool)

(assert (=> d!881958 (= lt!1087650 (isEmpty!20288 (list!12875 (_2!20931 (lex!2145 thiss!18206 rules!2135 (print!1880 thiss!18206 (singletonSeq!2322 separatorToken!241)))))))))

(assert (=> d!881958 (= lt!1087650 (isEmpty!20289 (c!539813 (_2!20931 (lex!2145 thiss!18206 rules!2135 (print!1880 thiss!18206 (singletonSeq!2322 separatorToken!241)))))))))

(assert (=> d!881958 (= (isEmpty!20279 (_2!20931 (lex!2145 thiss!18206 rules!2135 (print!1880 thiss!18206 (singletonSeq!2322 separatorToken!241))))) lt!1087650)))

(declare-fun bs!542059 () Bool)

(assert (= bs!542059 d!881958))

(declare-fun m!3487141 () Bool)

(assert (=> bs!542059 m!3487141))

(assert (=> bs!542059 m!3487141))

(declare-fun m!3487143 () Bool)

(assert (=> bs!542059 m!3487143))

(declare-fun m!3487145 () Bool)

(assert (=> bs!542059 m!3487145))

(assert (=> b!3213375 d!881958))

(declare-fun b!3215006 () Bool)

(declare-fun res!1308693 () Bool)

(declare-fun e!2004579 () Bool)

(assert (=> b!3215006 (=> (not res!1308693) (not e!2004579))))

(declare-fun lt!1087654 () tuple2!35594)

(assert (=> b!3215006 (= res!1308693 (= (list!12877 (_1!20931 lt!1087654)) (_1!20933 (lexList!1314 thiss!18206 rules!2135 (list!12875 (print!1880 thiss!18206 (singletonSeq!2322 separatorToken!241)))))))))

(declare-fun e!2004581 () Bool)

(declare-fun b!3215007 () Bool)

(assert (=> b!3215007 (= e!2004581 (= (_2!20931 lt!1087654) (print!1880 thiss!18206 (singletonSeq!2322 separatorToken!241))))))

(declare-fun d!881962 () Bool)

(assert (=> d!881962 e!2004579))

(declare-fun res!1308694 () Bool)

(assert (=> d!881962 (=> (not res!1308694) (not e!2004579))))

(assert (=> d!881962 (= res!1308694 e!2004581)))

(declare-fun c!540390 () Bool)

(assert (=> d!881962 (= c!540390 (> (size!27275 (_1!20931 lt!1087654)) 0))))

(assert (=> d!881962 (= lt!1087654 (lexTailRecV2!934 thiss!18206 rules!2135 (print!1880 thiss!18206 (singletonSeq!2322 separatorToken!241)) (BalanceConc!21269 Empty!10827) (print!1880 thiss!18206 (singletonSeq!2322 separatorToken!241)) (BalanceConc!21271 Empty!10828)))))

(assert (=> d!881962 (= (lex!2145 thiss!18206 rules!2135 (print!1880 thiss!18206 (singletonSeq!2322 separatorToken!241))) lt!1087654)))

(declare-fun b!3215008 () Bool)

(declare-fun e!2004580 () Bool)

(assert (=> b!3215008 (= e!2004580 (not (isEmpty!20280 (_1!20931 lt!1087654))))))

(declare-fun b!3215009 () Bool)

(assert (=> b!3215009 (= e!2004579 (= (list!12875 (_2!20931 lt!1087654)) (_2!20933 (lexList!1314 thiss!18206 rules!2135 (list!12875 (print!1880 thiss!18206 (singletonSeq!2322 separatorToken!241)))))))))

(declare-fun b!3215010 () Bool)

(assert (=> b!3215010 (= e!2004581 e!2004580)))

(declare-fun res!1308695 () Bool)

(assert (=> b!3215010 (= res!1308695 (< (size!27276 (_2!20931 lt!1087654)) (size!27276 (print!1880 thiss!18206 (singletonSeq!2322 separatorToken!241)))))))

(assert (=> b!3215010 (=> (not res!1308695) (not e!2004580))))

(assert (= (and d!881962 c!540390) b!3215010))

(assert (= (and d!881962 (not c!540390)) b!3215007))

(assert (= (and b!3215010 res!1308695) b!3215008))

(assert (= (and d!881962 res!1308694) b!3215006))

(assert (= (and b!3215006 res!1308693) b!3215009))

(declare-fun m!3487155 () Bool)

(assert (=> b!3215006 m!3487155))

(assert (=> b!3215006 m!3484381))

(declare-fun m!3487157 () Bool)

(assert (=> b!3215006 m!3487157))

(assert (=> b!3215006 m!3487157))

(declare-fun m!3487159 () Bool)

(assert (=> b!3215006 m!3487159))

(declare-fun m!3487161 () Bool)

(assert (=> d!881962 m!3487161))

(assert (=> d!881962 m!3484381))

(assert (=> d!881962 m!3484381))

(declare-fun m!3487163 () Bool)

(assert (=> d!881962 m!3487163))

(declare-fun m!3487165 () Bool)

(assert (=> b!3215009 m!3487165))

(assert (=> b!3215009 m!3484381))

(assert (=> b!3215009 m!3487157))

(assert (=> b!3215009 m!3487157))

(assert (=> b!3215009 m!3487159))

(declare-fun m!3487167 () Bool)

(assert (=> b!3215008 m!3487167))

(declare-fun m!3487169 () Bool)

(assert (=> b!3215010 m!3487169))

(assert (=> b!3215010 m!3484381))

(declare-fun m!3487171 () Bool)

(assert (=> b!3215010 m!3487171))

(assert (=> b!3213375 d!881962))

(declare-fun d!881966 () Bool)

(declare-fun lt!1087655 () BalanceConc!21268)

(assert (=> d!881966 (= (list!12875 lt!1087655) (printList!1365 thiss!18206 (list!12877 (singletonSeq!2322 separatorToken!241))))))

(assert (=> d!881966 (= lt!1087655 (printTailRec!1312 thiss!18206 (singletonSeq!2322 separatorToken!241) 0 (BalanceConc!21269 Empty!10827)))))

(assert (=> d!881966 (= (print!1880 thiss!18206 (singletonSeq!2322 separatorToken!241)) lt!1087655)))

(declare-fun bs!542060 () Bool)

(assert (= bs!542060 d!881966))

(declare-fun m!3487173 () Bool)

(assert (=> bs!542060 m!3487173))

(assert (=> bs!542060 m!3483317))

(assert (=> bs!542060 m!3484387))

(assert (=> bs!542060 m!3484387))

(declare-fun m!3487177 () Bool)

(assert (=> bs!542060 m!3487177))

(assert (=> bs!542060 m!3483317))

(declare-fun m!3487179 () Bool)

(assert (=> bs!542060 m!3487179))

(assert (=> b!3213375 d!881966))

(assert (=> b!3213375 d!880980))

(declare-fun bs!542063 () Bool)

(declare-fun d!881972 () Bool)

(assert (= bs!542063 (and d!881972 d!881596)))

(declare-fun lambda!117589 () Int)

(assert (=> bs!542063 (= (and (= (toChars!7173 (transformation!5226 (h!41608 rules!2135))) (toChars!7173 (transformation!5226 (rule!7672 (h!41609 tokens!494))))) (= (toValue!7314 (transformation!5226 (h!41608 rules!2135))) (toValue!7314 (transformation!5226 (rule!7672 (h!41609 tokens!494)))))) (= lambda!117589 lambda!117581))))

(assert (=> d!881972 true))

(assert (=> d!881972 (< (dynLambda!14625 order!18497 (toChars!7173 (transformation!5226 (h!41608 rules!2135)))) (dynLambda!14634 order!18505 lambda!117589))))

(assert (=> d!881972 true))

(assert (=> d!881972 (< (dynLambda!14623 order!18493 (toValue!7314 (transformation!5226 (h!41608 rules!2135)))) (dynLambda!14634 order!18505 lambda!117589))))

(declare-fun Forall!1269 (Int) Bool)

(assert (=> d!881972 (= (semiInverseModEq!2157 (toChars!7173 (transformation!5226 (h!41608 rules!2135))) (toValue!7314 (transformation!5226 (h!41608 rules!2135)))) (Forall!1269 lambda!117589))))

(declare-fun bs!542064 () Bool)

(assert (= bs!542064 d!881972))

(declare-fun m!3487191 () Bool)

(assert (=> bs!542064 m!3487191))

(assert (=> d!881162 d!881972))

(assert (=> d!881220 d!881444))

(declare-fun d!881978 () Bool)

(declare-fun res!1308698 () Bool)

(declare-fun e!2004589 () Bool)

(assert (=> d!881978 (=> res!1308698 e!2004589)))

(assert (=> d!881978 (= res!1308698 ((_ is ElementMatch!9985) (regex!5226 lt!1086524)))))

(assert (=> d!881978 (= (validRegex!4554 (regex!5226 lt!1086524)) e!2004589)))

(declare-fun b!3215023 () Bool)

(declare-fun e!2004586 () Bool)

(declare-fun e!2004588 () Bool)

(assert (=> b!3215023 (= e!2004586 e!2004588)))

(declare-fun res!1308700 () Bool)

(assert (=> b!3215023 (= res!1308700 (not (nullable!3400 (reg!10314 (regex!5226 lt!1086524)))))))

(assert (=> b!3215023 (=> (not res!1308700) (not e!2004588))))

(declare-fun c!540396 () Bool)

(declare-fun call!232714 () Bool)

(declare-fun c!540395 () Bool)

(declare-fun bm!232707 () Bool)

(assert (=> bm!232707 (= call!232714 (validRegex!4554 (ite c!540396 (reg!10314 (regex!5226 lt!1086524)) (ite c!540395 (regOne!20483 (regex!5226 lt!1086524)) (regOne!20482 (regex!5226 lt!1086524))))))))

(declare-fun b!3215024 () Bool)

(declare-fun e!2004590 () Bool)

(assert (=> b!3215024 (= e!2004586 e!2004590)))

(assert (=> b!3215024 (= c!540395 ((_ is Union!9985) (regex!5226 lt!1086524)))))

(declare-fun b!3215025 () Bool)

(declare-fun e!2004592 () Bool)

(declare-fun call!232712 () Bool)

(assert (=> b!3215025 (= e!2004592 call!232712)))

(declare-fun b!3215026 () Bool)

(assert (=> b!3215026 (= e!2004588 call!232714)))

(declare-fun b!3215027 () Bool)

(declare-fun e!2004591 () Bool)

(assert (=> b!3215027 (= e!2004591 e!2004592)))

(declare-fun res!1308697 () Bool)

(assert (=> b!3215027 (=> (not res!1308697) (not e!2004592))))

(declare-fun call!232713 () Bool)

(assert (=> b!3215027 (= res!1308697 call!232713)))

(declare-fun b!3215028 () Bool)

(assert (=> b!3215028 (= e!2004589 e!2004586)))

(assert (=> b!3215028 (= c!540396 ((_ is Star!9985) (regex!5226 lt!1086524)))))

(declare-fun b!3215029 () Bool)

(declare-fun e!2004587 () Bool)

(assert (=> b!3215029 (= e!2004587 call!232712)))

(declare-fun b!3215030 () Bool)

(declare-fun res!1308699 () Bool)

(assert (=> b!3215030 (=> res!1308699 e!2004591)))

(assert (=> b!3215030 (= res!1308699 (not ((_ is Concat!15441) (regex!5226 lt!1086524))))))

(assert (=> b!3215030 (= e!2004590 e!2004591)))

(declare-fun b!3215031 () Bool)

(declare-fun res!1308696 () Bool)

(assert (=> b!3215031 (=> (not res!1308696) (not e!2004587))))

(assert (=> b!3215031 (= res!1308696 call!232713)))

(assert (=> b!3215031 (= e!2004590 e!2004587)))

(declare-fun bm!232708 () Bool)

(assert (=> bm!232708 (= call!232712 (validRegex!4554 (ite c!540395 (regTwo!20483 (regex!5226 lt!1086524)) (regTwo!20482 (regex!5226 lt!1086524)))))))

(declare-fun bm!232709 () Bool)

(assert (=> bm!232709 (= call!232713 call!232714)))

(assert (= (and d!881978 (not res!1308698)) b!3215028))

(assert (= (and b!3215028 c!540396) b!3215023))

(assert (= (and b!3215028 (not c!540396)) b!3215024))

(assert (= (and b!3215023 res!1308700) b!3215026))

(assert (= (and b!3215024 c!540395) b!3215031))

(assert (= (and b!3215024 (not c!540395)) b!3215030))

(assert (= (and b!3215031 res!1308696) b!3215029))

(assert (= (and b!3215030 (not res!1308699)) b!3215027))

(assert (= (and b!3215027 res!1308697) b!3215025))

(assert (= (or b!3215029 b!3215025) bm!232708))

(assert (= (or b!3215031 b!3215027) bm!232709))

(assert (= (or b!3215026 bm!232709) bm!232707))

(declare-fun m!3487199 () Bool)

(assert (=> b!3215023 m!3487199))

(declare-fun m!3487201 () Bool)

(assert (=> bm!232707 m!3487201))

(declare-fun m!3487203 () Bool)

(assert (=> bm!232708 m!3487203))

(assert (=> d!881220 d!881978))

(declare-fun d!881984 () Bool)

(assert (=> d!881984 (= (list!12875 (_2!20931 lt!1086878)) (list!12879 (c!539813 (_2!20931 lt!1086878))))))

(declare-fun bs!542068 () Bool)

(assert (= bs!542068 d!881984))

(declare-fun m!3487207 () Bool)

(assert (=> bs!542068 m!3487207))

(assert (=> b!3213489 d!881984))

(declare-fun b!3215037 () Bool)

(declare-fun e!2004597 () Bool)

(declare-fun e!2004598 () Bool)

(assert (=> b!3215037 (= e!2004597 e!2004598)))

(declare-fun res!1308704 () Bool)

(declare-fun lt!1087663 () tuple2!35598)

(assert (=> b!3215037 (= res!1308704 (< (size!27274 (_2!20933 lt!1087663)) (size!27274 (list!12875 lt!1086549))))))

(assert (=> b!3215037 (=> (not res!1308704) (not e!2004598))))

(declare-fun b!3215038 () Bool)

(declare-fun e!2004596 () tuple2!35598)

(declare-fun lt!1087661 () Option!7154)

(declare-fun lt!1087662 () tuple2!35598)

(assert (=> b!3215038 (= e!2004596 (tuple2!35599 (Cons!36189 (_1!20932 (v!35713 lt!1087661)) (_1!20933 lt!1087662)) (_2!20933 lt!1087662)))))

(assert (=> b!3215038 (= lt!1087662 (lexList!1314 thiss!18206 rules!2135 (_2!20932 (v!35713 lt!1087661))))))

(declare-fun d!881988 () Bool)

(assert (=> d!881988 e!2004597))

(declare-fun c!540399 () Bool)

(assert (=> d!881988 (= c!540399 (> (size!27277 (_1!20933 lt!1087663)) 0))))

(assert (=> d!881988 (= lt!1087663 e!2004596)))

(declare-fun c!540398 () Bool)

(assert (=> d!881988 (= c!540398 ((_ is Some!7153) lt!1087661))))

(assert (=> d!881988 (= lt!1087661 (maxPrefix!2457 thiss!18206 rules!2135 (list!12875 lt!1086549)))))

(assert (=> d!881988 (= (lexList!1314 thiss!18206 rules!2135 (list!12875 lt!1086549)) lt!1087663)))

(declare-fun b!3215039 () Bool)

(assert (=> b!3215039 (= e!2004597 (= (_2!20933 lt!1087663) (list!12875 lt!1086549)))))

(declare-fun b!3215040 () Bool)

(assert (=> b!3215040 (= e!2004596 (tuple2!35599 Nil!36189 (list!12875 lt!1086549)))))

(declare-fun b!3215041 () Bool)

(assert (=> b!3215041 (= e!2004598 (not (isEmpty!20292 (_1!20933 lt!1087663))))))

(assert (= (and d!881988 c!540398) b!3215038))

(assert (= (and d!881988 (not c!540398)) b!3215040))

(assert (= (and d!881988 c!540399) b!3215037))

(assert (= (and d!881988 (not c!540399)) b!3215039))

(assert (= (and b!3215037 res!1308704) b!3215041))

(declare-fun m!3487209 () Bool)

(assert (=> b!3215037 m!3487209))

(assert (=> b!3215037 m!3484625))

(declare-fun m!3487211 () Bool)

(assert (=> b!3215037 m!3487211))

(declare-fun m!3487213 () Bool)

(assert (=> b!3215038 m!3487213))

(declare-fun m!3487215 () Bool)

(assert (=> d!881988 m!3487215))

(assert (=> d!881988 m!3484625))

(declare-fun m!3487219 () Bool)

(assert (=> d!881988 m!3487219))

(declare-fun m!3487223 () Bool)

(assert (=> b!3215041 m!3487223))

(assert (=> b!3213489 d!881988))

(declare-fun d!881990 () Bool)

(assert (=> d!881990 (= (list!12875 lt!1086549) (list!12879 (c!539813 lt!1086549)))))

(declare-fun bs!542069 () Bool)

(assert (= bs!542069 d!881990))

(declare-fun m!3487231 () Bool)

(assert (=> bs!542069 m!3487231))

(assert (=> b!3213489 d!881990))

(declare-fun d!881992 () Bool)

(declare-fun lt!1087664 () Int)

(assert (=> d!881992 (>= lt!1087664 0)))

(declare-fun e!2004599 () Int)

(assert (=> d!881992 (= lt!1087664 e!2004599)))

(declare-fun c!540400 () Bool)

(assert (=> d!881992 (= c!540400 ((_ is Nil!36187) (originalCharacters!5940 separatorToken!241)))))

(assert (=> d!881992 (= (size!27274 (originalCharacters!5940 separatorToken!241)) lt!1087664)))

(declare-fun b!3215042 () Bool)

(assert (=> b!3215042 (= e!2004599 0)))

(declare-fun b!3215043 () Bool)

(assert (=> b!3215043 (= e!2004599 (+ 1 (size!27274 (t!239156 (originalCharacters!5940 separatorToken!241)))))))

(assert (= (and d!881992 c!540400) b!3215042))

(assert (= (and d!881992 (not c!540400)) b!3215043))

(declare-fun m!3487241 () Bool)

(assert (=> b!3215043 m!3487241))

(assert (=> b!3213545 d!881992))

(declare-fun bs!542072 () Bool)

(declare-fun d!881996 () Bool)

(assert (= bs!542072 (and d!881996 d!881596)))

(declare-fun lambda!117590 () Int)

(assert (=> bs!542072 (= (and (= (toChars!7173 (transformation!5226 (rule!7672 separatorToken!241))) (toChars!7173 (transformation!5226 (rule!7672 (h!41609 tokens!494))))) (= (toValue!7314 (transformation!5226 (rule!7672 separatorToken!241))) (toValue!7314 (transformation!5226 (rule!7672 (h!41609 tokens!494)))))) (= lambda!117590 lambda!117581))))

(declare-fun bs!542073 () Bool)

(assert (= bs!542073 (and d!881996 d!881972)))

(assert (=> bs!542073 (= (and (= (toChars!7173 (transformation!5226 (rule!7672 separatorToken!241))) (toChars!7173 (transformation!5226 (h!41608 rules!2135)))) (= (toValue!7314 (transformation!5226 (rule!7672 separatorToken!241))) (toValue!7314 (transformation!5226 (h!41608 rules!2135))))) (= lambda!117590 lambda!117589))))

(assert (=> d!881996 true))

(assert (=> d!881996 (< (dynLambda!14625 order!18497 (toChars!7173 (transformation!5226 (rule!7672 separatorToken!241)))) (dynLambda!14634 order!18505 lambda!117590))))

(assert (=> d!881996 true))

(assert (=> d!881996 (< (dynLambda!14623 order!18493 (toValue!7314 (transformation!5226 (rule!7672 separatorToken!241)))) (dynLambda!14634 order!18505 lambda!117590))))

(assert (=> d!881996 (= (semiInverseModEq!2157 (toChars!7173 (transformation!5226 (rule!7672 separatorToken!241))) (toValue!7314 (transformation!5226 (rule!7672 separatorToken!241)))) (Forall!1269 lambda!117590))))

(declare-fun bs!542074 () Bool)

(assert (= bs!542074 d!881996))

(declare-fun m!3487251 () Bool)

(assert (=> bs!542074 m!3487251))

(assert (=> d!881030 d!881996))

(assert (=> b!3213308 d!881626))

(declare-fun b!3215049 () Bool)

(declare-fun e!2004603 () List!36311)

(assert (=> b!3215049 (= e!2004603 (++!8688 (list!12879 (left!28142 (c!539813 (charsOf!3242 (h!41609 tokens!494))))) (list!12879 (right!28472 (c!539813 (charsOf!3242 (h!41609 tokens!494)))))))))

(declare-fun b!3215046 () Bool)

(declare-fun e!2004602 () List!36311)

(assert (=> b!3215046 (= e!2004602 Nil!36187)))

(declare-fun b!3215048 () Bool)

(assert (=> b!3215048 (= e!2004603 (list!12883 (xs!13945 (c!539813 (charsOf!3242 (h!41609 tokens!494))))))))

(declare-fun b!3215047 () Bool)

(assert (=> b!3215047 (= e!2004602 e!2004603)))

(declare-fun c!540402 () Bool)

(assert (=> b!3215047 (= c!540402 ((_ is Leaf!17051) (c!539813 (charsOf!3242 (h!41609 tokens!494)))))))

(declare-fun d!882002 () Bool)

(declare-fun c!540401 () Bool)

(assert (=> d!882002 (= c!540401 ((_ is Empty!10827) (c!539813 (charsOf!3242 (h!41609 tokens!494)))))))

(assert (=> d!882002 (= (list!12879 (c!539813 (charsOf!3242 (h!41609 tokens!494)))) e!2004602)))

(assert (= (and d!882002 c!540401) b!3215046))

(assert (= (and d!882002 (not c!540401)) b!3215047))

(assert (= (and b!3215047 c!540402) b!3215048))

(assert (= (and b!3215047 (not c!540402)) b!3215049))

(declare-fun m!3487259 () Bool)

(assert (=> b!3215049 m!3487259))

(declare-fun m!3487263 () Bool)

(assert (=> b!3215049 m!3487263))

(assert (=> b!3215049 m!3487259))

(assert (=> b!3215049 m!3487263))

(declare-fun m!3487265 () Bool)

(assert (=> b!3215049 m!3487265))

(declare-fun m!3487267 () Bool)

(assert (=> b!3215048 m!3487267))

(assert (=> d!881042 d!882002))

(declare-fun d!882010 () Bool)

(assert (=> d!882010 (= (nullable!3400 (regex!5226 lt!1086543)) (nullableFct!969 (regex!5226 lt!1086543)))))

(declare-fun bs!542075 () Bool)

(assert (= bs!542075 d!882010))

(declare-fun m!3487271 () Bool)

(assert (=> bs!542075 m!3487271))

(assert (=> b!3213436 d!882010))

(declare-fun d!882014 () Bool)

(declare-fun res!1308707 () Bool)

(declare-fun e!2004607 () Bool)

(assert (=> d!882014 (=> res!1308707 e!2004607)))

(assert (=> d!882014 (= res!1308707 (not ((_ is Cons!36188) (t!239157 rules!2135))))))

(assert (=> d!882014 (= (sepAndNonSepRulesDisjointChars!1420 rules!2135 (t!239157 rules!2135)) e!2004607)))

(declare-fun b!3215056 () Bool)

(declare-fun e!2004608 () Bool)

(assert (=> b!3215056 (= e!2004607 e!2004608)))

(declare-fun res!1308708 () Bool)

(assert (=> b!3215056 (=> (not res!1308708) (not e!2004608))))

(assert (=> b!3215056 (= res!1308708 (ruleDisjointCharsFromAllFromOtherType!593 (h!41608 (t!239157 rules!2135)) rules!2135))))

(declare-fun b!3215057 () Bool)

(assert (=> b!3215057 (= e!2004608 (sepAndNonSepRulesDisjointChars!1420 rules!2135 (t!239157 (t!239157 rules!2135))))))

(assert (= (and d!882014 (not res!1308707)) b!3215056))

(assert (= (and b!3215056 res!1308708) b!3215057))

(declare-fun m!3487279 () Bool)

(assert (=> b!3215056 m!3487279))

(declare-fun m!3487281 () Bool)

(assert (=> b!3215057 m!3487281))

(assert (=> b!3213542 d!882014))

(declare-fun b!3215058 () Bool)

(declare-fun res!1308715 () Bool)

(declare-fun e!2004609 () Bool)

(assert (=> b!3215058 (=> (not res!1308715) (not e!2004609))))

(declare-fun lt!1087669 () Option!7154)

(assert (=> b!3215058 (= res!1308715 (= (++!8688 (list!12875 (charsOf!3242 (_1!20932 (get!11526 lt!1087669)))) (_2!20932 (get!11526 lt!1087669))) lt!1086548))))

(declare-fun b!3215059 () Bool)

(declare-fun e!2004610 () Bool)

(assert (=> b!3215059 (= e!2004610 e!2004609)))

(declare-fun res!1308710 () Bool)

(assert (=> b!3215059 (=> (not res!1308710) (not e!2004609))))

(assert (=> b!3215059 (= res!1308710 (matchR!4619 (regex!5226 (h!41608 rules!2135)) (list!12875 (charsOf!3242 (_1!20932 (get!11526 lt!1087669))))))))

(declare-fun b!3215060 () Bool)

(declare-fun res!1308712 () Bool)

(assert (=> b!3215060 (=> (not res!1308712) (not e!2004609))))

(assert (=> b!3215060 (= res!1308712 (= (value!169401 (_1!20932 (get!11526 lt!1087669))) (apply!8208 (transformation!5226 (rule!7672 (_1!20932 (get!11526 lt!1087669)))) (seqFromList!3524 (originalCharacters!5940 (_1!20932 (get!11526 lt!1087669)))))))))

(declare-fun b!3215061 () Bool)

(declare-fun e!2004612 () Option!7154)

(declare-fun lt!1087667 () tuple2!35604)

(assert (=> b!3215061 (= e!2004612 (Some!7153 (tuple2!35597 (Token!9819 (apply!8208 (transformation!5226 (h!41608 rules!2135)) (seqFromList!3524 (_1!20936 lt!1087667))) (h!41608 rules!2135) (size!27276 (seqFromList!3524 (_1!20936 lt!1087667))) (_1!20936 lt!1087667)) (_2!20936 lt!1087667))))))

(declare-fun lt!1087671 () Unit!50676)

(assert (=> b!3215061 (= lt!1087671 (longestMatchIsAcceptedByMatchOrIsEmpty!806 (regex!5226 (h!41608 rules!2135)) lt!1086548))))

(declare-fun res!1308709 () Bool)

(assert (=> b!3215061 (= res!1308709 (isEmpty!20288 (_1!20936 (findLongestMatchInner!833 (regex!5226 (h!41608 rules!2135)) Nil!36187 (size!27274 Nil!36187) lt!1086548 lt!1086548 (size!27274 lt!1086548)))))))

(declare-fun e!2004611 () Bool)

(assert (=> b!3215061 (=> res!1308709 e!2004611)))

(assert (=> b!3215061 e!2004611))

(declare-fun lt!1087668 () Unit!50676)

(assert (=> b!3215061 (= lt!1087668 lt!1087671)))

(declare-fun lt!1087670 () Unit!50676)

(assert (=> b!3215061 (= lt!1087670 (lemmaSemiInverse!1179 (transformation!5226 (h!41608 rules!2135)) (seqFromList!3524 (_1!20936 lt!1087667))))))

(declare-fun b!3215062 () Bool)

(declare-fun res!1308714 () Bool)

(assert (=> b!3215062 (=> (not res!1308714) (not e!2004609))))

(assert (=> b!3215062 (= res!1308714 (= (rule!7672 (_1!20932 (get!11526 lt!1087669))) (h!41608 rules!2135)))))

(declare-fun b!3215063 () Bool)

(assert (=> b!3215063 (= e!2004609 (= (size!27273 (_1!20932 (get!11526 lt!1087669))) (size!27274 (originalCharacters!5940 (_1!20932 (get!11526 lt!1087669))))))))

(declare-fun d!882020 () Bool)

(assert (=> d!882020 e!2004610))

(declare-fun res!1308711 () Bool)

(assert (=> d!882020 (=> res!1308711 e!2004610)))

(assert (=> d!882020 (= res!1308711 (isEmpty!20287 lt!1087669))))

(assert (=> d!882020 (= lt!1087669 e!2004612)))

(declare-fun c!540406 () Bool)

(assert (=> d!882020 (= c!540406 (isEmpty!20288 (_1!20936 lt!1087667)))))

(assert (=> d!882020 (= lt!1087667 (findLongestMatch!748 (regex!5226 (h!41608 rules!2135)) lt!1086548))))

(assert (=> d!882020 (ruleValid!1650 thiss!18206 (h!41608 rules!2135))))

(assert (=> d!882020 (= (maxPrefixOneRule!1594 thiss!18206 (h!41608 rules!2135) lt!1086548) lt!1087669)))

(declare-fun b!3215064 () Bool)

(assert (=> b!3215064 (= e!2004612 None!7153)))

(declare-fun b!3215065 () Bool)

(assert (=> b!3215065 (= e!2004611 (matchR!4619 (regex!5226 (h!41608 rules!2135)) (_1!20936 (findLongestMatchInner!833 (regex!5226 (h!41608 rules!2135)) Nil!36187 (size!27274 Nil!36187) lt!1086548 lt!1086548 (size!27274 lt!1086548)))))))

(declare-fun b!3215066 () Bool)

(declare-fun res!1308713 () Bool)

(assert (=> b!3215066 (=> (not res!1308713) (not e!2004609))))

(assert (=> b!3215066 (= res!1308713 (< (size!27274 (_2!20932 (get!11526 lt!1087669))) (size!27274 lt!1086548)))))

(assert (= (and d!882020 c!540406) b!3215064))

(assert (= (and d!882020 (not c!540406)) b!3215061))

(assert (= (and b!3215061 (not res!1308709)) b!3215065))

(assert (= (and d!882020 (not res!1308711)) b!3215059))

(assert (= (and b!3215059 res!1308710) b!3215058))

(assert (= (and b!3215058 res!1308715) b!3215066))

(assert (= (and b!3215066 res!1308713) b!3215062))

(assert (= (and b!3215062 res!1308714) b!3215060))

(assert (= (and b!3215060 res!1308712) b!3215063))

(assert (=> b!3215065 m!3484113))

(assert (=> b!3215065 m!3484085))

(assert (=> b!3215065 m!3484113))

(assert (=> b!3215065 m!3484085))

(declare-fun m!3487283 () Bool)

(assert (=> b!3215065 m!3487283))

(declare-fun m!3487285 () Bool)

(assert (=> b!3215065 m!3487285))

(declare-fun m!3487287 () Bool)

(assert (=> b!3215061 m!3487287))

(declare-fun m!3487289 () Bool)

(assert (=> b!3215061 m!3487289))

(assert (=> b!3215061 m!3487287))

(declare-fun m!3487291 () Bool)

(assert (=> b!3215061 m!3487291))

(assert (=> b!3215061 m!3487287))

(declare-fun m!3487293 () Bool)

(assert (=> b!3215061 m!3487293))

(assert (=> b!3215061 m!3484113))

(assert (=> b!3215061 m!3484113))

(assert (=> b!3215061 m!3484085))

(assert (=> b!3215061 m!3487283))

(declare-fun m!3487295 () Bool)

(assert (=> b!3215061 m!3487295))

(assert (=> b!3215061 m!3487287))

(declare-fun m!3487297 () Bool)

(assert (=> b!3215061 m!3487297))

(assert (=> b!3215061 m!3484085))

(declare-fun m!3487299 () Bool)

(assert (=> b!3215058 m!3487299))

(declare-fun m!3487301 () Bool)

(assert (=> b!3215058 m!3487301))

(assert (=> b!3215058 m!3487301))

(declare-fun m!3487303 () Bool)

(assert (=> b!3215058 m!3487303))

(assert (=> b!3215058 m!3487303))

(declare-fun m!3487305 () Bool)

(assert (=> b!3215058 m!3487305))

(assert (=> b!3215062 m!3487299))

(declare-fun m!3487307 () Bool)

(assert (=> d!882020 m!3487307))

(declare-fun m!3487309 () Bool)

(assert (=> d!882020 m!3487309))

(declare-fun m!3487311 () Bool)

(assert (=> d!882020 m!3487311))

(declare-fun m!3487313 () Bool)

(assert (=> d!882020 m!3487313))

(assert (=> b!3215066 m!3487299))

(declare-fun m!3487315 () Bool)

(assert (=> b!3215066 m!3487315))

(assert (=> b!3215066 m!3484085))

(assert (=> b!3215059 m!3487299))

(assert (=> b!3215059 m!3487301))

(assert (=> b!3215059 m!3487301))

(assert (=> b!3215059 m!3487303))

(assert (=> b!3215059 m!3487303))

(declare-fun m!3487317 () Bool)

(assert (=> b!3215059 m!3487317))

(assert (=> b!3215060 m!3487299))

(declare-fun m!3487319 () Bool)

(assert (=> b!3215060 m!3487319))

(assert (=> b!3215060 m!3487319))

(declare-fun m!3487321 () Bool)

(assert (=> b!3215060 m!3487321))

(assert (=> b!3215063 m!3487299))

(declare-fun m!3487323 () Bool)

(assert (=> b!3215063 m!3487323))

(assert (=> bm!232528 d!882020))

(declare-fun d!882022 () Bool)

(assert (=> d!882022 (= (list!12877 lt!1086929) (list!12881 (c!539814 lt!1086929)))))

(declare-fun bs!542076 () Bool)

(assert (= bs!542076 d!882022))

(declare-fun m!3487325 () Bool)

(assert (=> bs!542076 m!3487325))

(assert (=> d!881248 d!882022))

(declare-fun d!882024 () Bool)

(declare-fun e!2004619 () Bool)

(assert (=> d!882024 e!2004619))

(declare-fun res!1308724 () Bool)

(assert (=> d!882024 (=> (not res!1308724) (not e!2004619))))

(declare-fun lt!1087674 () BalanceConc!21270)

(assert (=> d!882024 (= res!1308724 (= (list!12877 lt!1087674) (Cons!36189 (h!41609 tokens!494) Nil!36189)))))

(assert (=> d!882024 (= lt!1087674 (choose!18772 (h!41609 tokens!494)))))

(assert (=> d!882024 (= (singleton!995 (h!41609 tokens!494)) lt!1087674)))

(declare-fun b!3215075 () Bool)

(assert (=> b!3215075 (= e!2004619 (isBalanced!3220 (c!539814 lt!1087674)))))

(assert (= (and d!882024 res!1308724) b!3215075))

(declare-fun m!3487327 () Bool)

(assert (=> d!882024 m!3487327))

(declare-fun m!3487329 () Bool)

(assert (=> d!882024 m!3487329))

(declare-fun m!3487331 () Bool)

(assert (=> b!3215075 m!3487331))

(assert (=> d!881248 d!882024))

(declare-fun b!3215080 () Bool)

(declare-fun res!1308729 () Bool)

(declare-fun e!2004624 () Bool)

(assert (=> b!3215080 (=> res!1308729 e!2004624)))

(assert (=> b!3215080 (= res!1308729 (not ((_ is IntegerValue!16370) (dynLambda!14629 (toValue!7314 (transformation!5226 (rule!7672 (h!41609 tokens!494)))) lt!1086549))))))

(declare-fun e!2004623 () Bool)

(assert (=> b!3215080 (= e!2004623 e!2004624)))

(declare-fun b!3215081 () Bool)

(assert (=> b!3215081 (= e!2004623 (inv!17 (dynLambda!14629 (toValue!7314 (transformation!5226 (rule!7672 (h!41609 tokens!494)))) lt!1086549)))))

(declare-fun b!3215082 () Bool)

(assert (=> b!3215082 (= e!2004624 (inv!15 (dynLambda!14629 (toValue!7314 (transformation!5226 (rule!7672 (h!41609 tokens!494)))) lt!1086549)))))

(declare-fun d!882026 () Bool)

(declare-fun c!540408 () Bool)

(assert (=> d!882026 (= c!540408 ((_ is IntegerValue!16368) (dynLambda!14629 (toValue!7314 (transformation!5226 (rule!7672 (h!41609 tokens!494)))) lt!1086549)))))

(declare-fun e!2004625 () Bool)

(assert (=> d!882026 (= (inv!21 (dynLambda!14629 (toValue!7314 (transformation!5226 (rule!7672 (h!41609 tokens!494)))) lt!1086549)) e!2004625)))

(declare-fun b!3215083 () Bool)

(assert (=> b!3215083 (= e!2004625 e!2004623)))

(declare-fun c!540407 () Bool)

(assert (=> b!3215083 (= c!540407 ((_ is IntegerValue!16369) (dynLambda!14629 (toValue!7314 (transformation!5226 (rule!7672 (h!41609 tokens!494)))) lt!1086549)))))

(declare-fun b!3215084 () Bool)

(assert (=> b!3215084 (= e!2004625 (inv!16 (dynLambda!14629 (toValue!7314 (transformation!5226 (rule!7672 (h!41609 tokens!494)))) lt!1086549)))))

(assert (= (and d!882026 c!540408) b!3215084))

(assert (= (and d!882026 (not c!540408)) b!3215083))

(assert (= (and b!3215083 c!540407) b!3215081))

(assert (= (and b!3215083 (not c!540407)) b!3215080))

(assert (= (and b!3215080 (not res!1308729)) b!3215082))

(declare-fun m!3487337 () Bool)

(assert (=> b!3215081 m!3487337))

(declare-fun m!3487341 () Bool)

(assert (=> b!3215082 m!3487341))

(declare-fun m!3487343 () Bool)

(assert (=> b!3215084 m!3487343))

(assert (=> tb!158177 d!882026))

(declare-fun d!882028 () Bool)

(assert (=> d!882028 (= (isEmpty!20288 (tail!5217 lt!1086561)) ((_ is Nil!36187) (tail!5217 lt!1086561)))))

(assert (=> b!3213491 d!882028))

(declare-fun d!882032 () Bool)

(assert (=> d!882032 (= (tail!5217 lt!1086561) (t!239156 lt!1086561))))

(assert (=> b!3213491 d!882032))

(declare-fun d!882034 () Bool)

(assert (=> d!882034 (= (list!12875 (charsOf!3242 (_1!20932 (get!11526 lt!1086777)))) (list!12879 (c!539813 (charsOf!3242 (_1!20932 (get!11526 lt!1086777))))))))

(declare-fun bs!542077 () Bool)

(assert (= bs!542077 d!882034))

(declare-fun m!3487345 () Bool)

(assert (=> bs!542077 m!3487345))

(assert (=> b!3213263 d!882034))

(declare-fun d!882036 () Bool)

(declare-fun lt!1087676 () BalanceConc!21268)

(assert (=> d!882036 (= (list!12875 lt!1087676) (originalCharacters!5940 (_1!20932 (get!11526 lt!1086777))))))

(assert (=> d!882036 (= lt!1087676 (dynLambda!14631 (toChars!7173 (transformation!5226 (rule!7672 (_1!20932 (get!11526 lt!1086777))))) (value!169401 (_1!20932 (get!11526 lt!1086777)))))))

(assert (=> d!882036 (= (charsOf!3242 (_1!20932 (get!11526 lt!1086777))) lt!1087676)))

(declare-fun b_lambda!88257 () Bool)

(assert (=> (not b_lambda!88257) (not d!882036)))

(declare-fun t!239449 () Bool)

(declare-fun tb!158419 () Bool)

(assert (=> (and b!3212813 (= (toChars!7173 (transformation!5226 (rule!7672 separatorToken!241))) (toChars!7173 (transformation!5226 (rule!7672 (_1!20932 (get!11526 lt!1086777)))))) t!239449) tb!158419))

(declare-fun b!3215085 () Bool)

(declare-fun e!2004626 () Bool)

(declare-fun tp!1013830 () Bool)

(assert (=> b!3215085 (= e!2004626 (and (inv!49055 (c!539813 (dynLambda!14631 (toChars!7173 (transformation!5226 (rule!7672 (_1!20932 (get!11526 lt!1086777))))) (value!169401 (_1!20932 (get!11526 lt!1086777)))))) tp!1013830))))

(declare-fun result!200812 () Bool)

(assert (=> tb!158419 (= result!200812 (and (inv!49056 (dynLambda!14631 (toChars!7173 (transformation!5226 (rule!7672 (_1!20932 (get!11526 lt!1086777))))) (value!169401 (_1!20932 (get!11526 lt!1086777))))) e!2004626))))

(assert (= tb!158419 b!3215085))

(declare-fun m!3487347 () Bool)

(assert (=> b!3215085 m!3487347))

(declare-fun m!3487349 () Bool)

(assert (=> tb!158419 m!3487349))

(assert (=> d!882036 t!239449))

(declare-fun b_and!214533 () Bool)

(assert (= b_and!214477 (and (=> t!239449 result!200812) b_and!214533)))

(declare-fun t!239451 () Bool)

(declare-fun tb!158421 () Bool)

(assert (=> (and b!3212809 (= (toChars!7173 (transformation!5226 (h!41608 rules!2135))) (toChars!7173 (transformation!5226 (rule!7672 (_1!20932 (get!11526 lt!1086777)))))) t!239451) tb!158421))

(declare-fun result!200814 () Bool)

(assert (= result!200814 result!200812))

(assert (=> d!882036 t!239451))

(declare-fun b_and!214535 () Bool)

(assert (= b_and!214481 (and (=> t!239451 result!200814) b_and!214535)))

(declare-fun t!239453 () Bool)

(declare-fun tb!158423 () Bool)

(assert (=> (and b!3213760 (= (toChars!7173 (transformation!5226 (rule!7672 (h!41609 (t!239158 tokens!494))))) (toChars!7173 (transformation!5226 (rule!7672 (_1!20932 (get!11526 lt!1086777)))))) t!239453) tb!158423))

(declare-fun result!200816 () Bool)

(assert (= result!200816 result!200812))

(assert (=> d!882036 t!239453))

(declare-fun b_and!214537 () Bool)

(assert (= b_and!214479 (and (=> t!239453 result!200816) b_and!214537)))

(declare-fun tb!158425 () Bool)

(declare-fun t!239455 () Bool)

(assert (=> (and b!3212814 (= (toChars!7173 (transformation!5226 (rule!7672 (h!41609 tokens!494)))) (toChars!7173 (transformation!5226 (rule!7672 (_1!20932 (get!11526 lt!1086777)))))) t!239455) tb!158425))

(declare-fun result!200818 () Bool)

(assert (= result!200818 result!200812))

(assert (=> d!882036 t!239455))

(declare-fun b_and!214539 () Bool)

(assert (= b_and!214475 (and (=> t!239455 result!200818) b_and!214539)))

(declare-fun t!239457 () Bool)

(declare-fun tb!158427 () Bool)

(assert (=> (and b!3213792 (= (toChars!7173 (transformation!5226 (h!41608 (t!239157 rules!2135)))) (toChars!7173 (transformation!5226 (rule!7672 (_1!20932 (get!11526 lt!1086777)))))) t!239457) tb!158427))

(declare-fun result!200820 () Bool)

(assert (= result!200820 result!200812))

(assert (=> d!882036 t!239457))

(declare-fun b_and!214541 () Bool)

(assert (= b_and!214473 (and (=> t!239457 result!200820) b_and!214541)))

(declare-fun m!3487353 () Bool)

(assert (=> d!882036 m!3487353))

(declare-fun m!3487355 () Bool)

(assert (=> d!882036 m!3487355))

(assert (=> b!3213263 d!882036))

(declare-fun d!882040 () Bool)

(assert (=> d!882040 (= (get!11526 lt!1086777) (v!35713 lt!1086777))))

(assert (=> b!3213263 d!882040))

(declare-fun d!882042 () Bool)

(assert (=> d!882042 (= (list!12875 lt!1086870) (list!12879 (c!539813 lt!1086870)))))

(declare-fun bs!542079 () Bool)

(assert (= bs!542079 d!882042))

(declare-fun m!3487357 () Bool)

(assert (=> bs!542079 m!3487357))

(assert (=> d!881108 d!882042))

(declare-fun d!882044 () Bool)

(assert (=> d!882044 (dynLambda!14628 lambda!117554 (h!41609 tokens!494))))

(assert (=> d!882044 true))

(declare-fun _$7!1100 () Unit!50676)

(assert (=> d!882044 (= (choose!18756 tokens!494 lambda!117554 (h!41609 tokens!494)) _$7!1100)))

(declare-fun b_lambda!88259 () Bool)

(assert (=> (not b_lambda!88259) (not d!882044)))

(declare-fun bs!542080 () Bool)

(assert (= bs!542080 d!882044))

(assert (=> bs!542080 m!3483601))

(assert (=> d!881086 d!882044))

(assert (=> d!881086 d!880888))

(declare-fun d!882046 () Bool)

(declare-fun e!2004636 () Bool)

(assert (=> d!882046 e!2004636))

(declare-fun res!1308738 () Bool)

(assert (=> d!882046 (=> (not res!1308738) (not e!2004636))))

(declare-fun lt!1087685 () BalanceConc!21268)

(assert (=> d!882046 (= res!1308738 (= (list!12875 lt!1087685) lt!1086561))))

(declare-fun fromList!616 (List!36311) Conc!10827)

(assert (=> d!882046 (= lt!1087685 (BalanceConc!21269 (fromList!616 lt!1086561)))))

(assert (=> d!882046 (= (fromListB!1544 lt!1086561) lt!1087685)))

(declare-fun b!3215096 () Bool)

(assert (=> b!3215096 (= e!2004636 (isBalanced!3222 (fromList!616 lt!1086561)))))

(assert (= (and d!882046 res!1308738) b!3215096))

(declare-fun m!3487365 () Bool)

(assert (=> d!882046 m!3487365))

(declare-fun m!3487367 () Bool)

(assert (=> d!882046 m!3487367))

(assert (=> b!3215096 m!3487367))

(assert (=> b!3215096 m!3487367))

(declare-fun m!3487369 () Bool)

(assert (=> b!3215096 m!3487369))

(assert (=> d!880974 d!882046))

(declare-fun d!882052 () Bool)

(declare-fun lt!1087687 () Token!9818)

(assert (=> d!882052 (= lt!1087687 (apply!8209 (list!12877 (_1!20931 lt!1086601)) 0))))

(assert (=> d!882052 (= lt!1087687 (apply!8210 (c!539814 (_1!20931 lt!1086601)) 0))))

(declare-fun e!2004639 () Bool)

(assert (=> d!882052 e!2004639))

(declare-fun res!1308741 () Bool)

(assert (=> d!882052 (=> (not res!1308741) (not e!2004639))))

(assert (=> d!882052 (= res!1308741 (<= 0 0))))

(assert (=> d!882052 (= (apply!8207 (_1!20931 lt!1086601) 0) lt!1087687)))

(declare-fun b!3215101 () Bool)

(assert (=> b!3215101 (= e!2004639 (< 0 (size!27275 (_1!20931 lt!1086601))))))

(assert (= (and d!882052 res!1308741) b!3215101))

(declare-fun m!3487371 () Bool)

(assert (=> d!882052 m!3487371))

(assert (=> d!882052 m!3487371))

(declare-fun m!3487373 () Bool)

(assert (=> d!882052 m!3487373))

(declare-fun m!3487377 () Bool)

(assert (=> d!882052 m!3487377))

(assert (=> b!3215101 m!3483649))

(assert (=> b!3212981 d!882052))

(declare-fun b!3215102 () Bool)

(declare-fun e!2004641 () List!36311)

(declare-fun call!232717 () List!36311)

(assert (=> b!3215102 (= e!2004641 call!232717)))

(declare-fun bm!232710 () Bool)

(declare-fun call!232715 () List!36311)

(declare-fun c!540412 () Bool)

(declare-fun call!232718 () List!36311)

(assert (=> bm!232710 (= call!232717 (++!8688 (ite c!540412 call!232718 call!232715) (ite c!540412 call!232715 call!232718)))))

(declare-fun b!3215103 () Bool)

(declare-fun e!2004642 () List!36311)

(declare-fun call!232716 () List!36311)

(assert (=> b!3215103 (= e!2004642 call!232716)))

(declare-fun d!882054 () Bool)

(declare-fun c!540414 () Bool)

(assert (=> d!882054 (= c!540414 (or ((_ is EmptyExpr!9985) (ite c!539867 (regTwo!20483 (regex!5226 (rule!7672 separatorToken!241))) (regOne!20482 (regex!5226 (rule!7672 separatorToken!241))))) ((_ is EmptyLang!9985) (ite c!539867 (regTwo!20483 (regex!5226 (rule!7672 separatorToken!241))) (regOne!20482 (regex!5226 (rule!7672 separatorToken!241)))))))))

(declare-fun e!2004643 () List!36311)

(assert (=> d!882054 (= (usedCharacters!542 (ite c!539867 (regTwo!20483 (regex!5226 (rule!7672 separatorToken!241))) (regOne!20482 (regex!5226 (rule!7672 separatorToken!241))))) e!2004643)))

(declare-fun b!3215104 () Bool)

(declare-fun c!540415 () Bool)

(assert (=> b!3215104 (= c!540415 ((_ is Star!9985) (ite c!539867 (regTwo!20483 (regex!5226 (rule!7672 separatorToken!241))) (regOne!20482 (regex!5226 (rule!7672 separatorToken!241))))))))

(declare-fun e!2004640 () List!36311)

(assert (=> b!3215104 (= e!2004640 e!2004642)))

(declare-fun b!3215105 () Bool)

(assert (=> b!3215105 (= e!2004642 e!2004641)))

(assert (=> b!3215105 (= c!540412 ((_ is Union!9985) (ite c!539867 (regTwo!20483 (regex!5226 (rule!7672 separatorToken!241))) (regOne!20482 (regex!5226 (rule!7672 separatorToken!241))))))))

(declare-fun bm!232711 () Bool)

(assert (=> bm!232711 (= call!232718 call!232716)))

(declare-fun b!3215106 () Bool)

(assert (=> b!3215106 (= e!2004641 call!232717)))

(declare-fun b!3215107 () Bool)

(assert (=> b!3215107 (= e!2004640 (Cons!36187 (c!539812 (ite c!539867 (regTwo!20483 (regex!5226 (rule!7672 separatorToken!241))) (regOne!20482 (regex!5226 (rule!7672 separatorToken!241))))) Nil!36187))))

(declare-fun bm!232712 () Bool)

(assert (=> bm!232712 (= call!232715 (usedCharacters!542 (ite c!540412 (regTwo!20483 (ite c!539867 (regTwo!20483 (regex!5226 (rule!7672 separatorToken!241))) (regOne!20482 (regex!5226 (rule!7672 separatorToken!241))))) (regOne!20482 (ite c!539867 (regTwo!20483 (regex!5226 (rule!7672 separatorToken!241))) (regOne!20482 (regex!5226 (rule!7672 separatorToken!241))))))))))

(declare-fun b!3215108 () Bool)

(assert (=> b!3215108 (= e!2004643 Nil!36187)))

(declare-fun bm!232713 () Bool)

(assert (=> bm!232713 (= call!232716 (usedCharacters!542 (ite c!540415 (reg!10314 (ite c!539867 (regTwo!20483 (regex!5226 (rule!7672 separatorToken!241))) (regOne!20482 (regex!5226 (rule!7672 separatorToken!241))))) (ite c!540412 (regOne!20483 (ite c!539867 (regTwo!20483 (regex!5226 (rule!7672 separatorToken!241))) (regOne!20482 (regex!5226 (rule!7672 separatorToken!241))))) (regTwo!20482 (ite c!539867 (regTwo!20483 (regex!5226 (rule!7672 separatorToken!241))) (regOne!20482 (regex!5226 (rule!7672 separatorToken!241)))))))))))

(declare-fun b!3215109 () Bool)

(assert (=> b!3215109 (= e!2004643 e!2004640)))

(declare-fun c!540413 () Bool)

(assert (=> b!3215109 (= c!540413 ((_ is ElementMatch!9985) (ite c!539867 (regTwo!20483 (regex!5226 (rule!7672 separatorToken!241))) (regOne!20482 (regex!5226 (rule!7672 separatorToken!241))))))))

(assert (= (and d!882054 c!540414) b!3215108))

(assert (= (and d!882054 (not c!540414)) b!3215109))

(assert (= (and b!3215109 c!540413) b!3215107))

(assert (= (and b!3215109 (not c!540413)) b!3215104))

(assert (= (and b!3215104 c!540415) b!3215103))

(assert (= (and b!3215104 (not c!540415)) b!3215105))

(assert (= (and b!3215105 c!540412) b!3215102))

(assert (= (and b!3215105 (not c!540412)) b!3215106))

(assert (= (or b!3215102 b!3215106) bm!232712))

(assert (= (or b!3215102 b!3215106) bm!232711))

(assert (= (or b!3215102 b!3215106) bm!232710))

(assert (= (or b!3215103 bm!232711) bm!232713))

(declare-fun m!3487395 () Bool)

(assert (=> bm!232710 m!3487395))

(declare-fun m!3487401 () Bool)

(assert (=> bm!232712 m!3487401))

(declare-fun m!3487405 () Bool)

(assert (=> bm!232713 m!3487405))

(assert (=> bm!232509 d!882054))

(declare-fun d!882060 () Bool)

(declare-fun lt!1087689 () Bool)

(assert (=> d!882060 (= lt!1087689 (select (content!4894 (t!239156 (usedCharacters!542 (regex!5226 (rule!7672 separatorToken!241))))) lt!1086540))))

(declare-fun e!2004649 () Bool)

(assert (=> d!882060 (= lt!1087689 e!2004649)))

(declare-fun res!1308744 () Bool)

(assert (=> d!882060 (=> (not res!1308744) (not e!2004649))))

(assert (=> d!882060 (= res!1308744 ((_ is Cons!36187) (t!239156 (usedCharacters!542 (regex!5226 (rule!7672 separatorToken!241))))))))

(assert (=> d!882060 (= (contains!6469 (t!239156 (usedCharacters!542 (regex!5226 (rule!7672 separatorToken!241)))) lt!1086540) lt!1087689)))

(declare-fun b!3215119 () Bool)

(declare-fun e!2004650 () Bool)

(assert (=> b!3215119 (= e!2004649 e!2004650)))

(declare-fun res!1308743 () Bool)

(assert (=> b!3215119 (=> res!1308743 e!2004650)))

(assert (=> b!3215119 (= res!1308743 (= (h!41607 (t!239156 (usedCharacters!542 (regex!5226 (rule!7672 separatorToken!241))))) lt!1086540))))

(declare-fun b!3215120 () Bool)

(assert (=> b!3215120 (= e!2004650 (contains!6469 (t!239156 (t!239156 (usedCharacters!542 (regex!5226 (rule!7672 separatorToken!241))))) lt!1086540))))

(assert (= (and d!882060 res!1308744) b!3215119))

(assert (= (and b!3215119 (not res!1308743)) b!3215120))

(declare-fun m!3487407 () Bool)

(assert (=> d!882060 m!3487407))

(declare-fun m!3487409 () Bool)

(assert (=> d!882060 m!3487409))

(declare-fun m!3487411 () Bool)

(assert (=> b!3215120 m!3487411))

(assert (=> b!3213193 d!882060))

(declare-fun d!882064 () Bool)

(declare-fun lt!1087691 () Bool)

(assert (=> d!882064 (= lt!1087691 (isEmpty!20292 (list!12877 (_1!20931 lt!1086878))))))

(assert (=> d!882064 (= lt!1087691 (isEmpty!20293 (c!539814 (_1!20931 lt!1086878))))))

(assert (=> d!882064 (= (isEmpty!20280 (_1!20931 lt!1086878)) lt!1087691)))

(declare-fun bs!542082 () Bool)

(assert (= bs!542082 d!882064))

(assert (=> bs!542082 m!3484623))

(assert (=> bs!542082 m!3484623))

(declare-fun m!3487415 () Bool)

(assert (=> bs!542082 m!3487415))

(declare-fun m!3487417 () Bool)

(assert (=> bs!542082 m!3487417))

(assert (=> b!3213488 d!882064))

(declare-fun b!3215123 () Bool)

(declare-fun res!1308752 () Bool)

(declare-fun e!2004656 () Bool)

(assert (=> b!3215123 (=> res!1308752 e!2004656)))

(assert (=> b!3215123 (= res!1308752 (not (isEmpty!20288 (tail!5217 (tail!5217 lt!1086523)))))))

(declare-fun b!3215124 () Bool)

(declare-fun res!1308754 () Bool)

(declare-fun e!2004654 () Bool)

(assert (=> b!3215124 (=> res!1308754 e!2004654)))

(declare-fun e!2004655 () Bool)

(assert (=> b!3215124 (= res!1308754 e!2004655)))

(declare-fun res!1308749 () Bool)

(assert (=> b!3215124 (=> (not res!1308749) (not e!2004655))))

(declare-fun lt!1087693 () Bool)

(assert (=> b!3215124 (= res!1308749 lt!1087693)))

(declare-fun bm!232715 () Bool)

(declare-fun call!232720 () Bool)

(assert (=> bm!232715 (= call!232720 (isEmpty!20288 (tail!5217 lt!1086523)))))

(declare-fun b!3215125 () Bool)

(assert (=> b!3215125 (= e!2004655 (= (head!7047 (tail!5217 lt!1086523)) (c!539812 (derivativeStep!2953 (regex!5226 lt!1086543) (head!7047 lt!1086523)))))))

(declare-fun b!3215126 () Bool)

(declare-fun e!2004659 () Bool)

(assert (=> b!3215126 (= e!2004659 (matchR!4619 (derivativeStep!2953 (derivativeStep!2953 (regex!5226 lt!1086543) (head!7047 lt!1086523)) (head!7047 (tail!5217 lt!1086523))) (tail!5217 (tail!5217 lt!1086523))))))

(declare-fun d!882068 () Bool)

(declare-fun e!2004657 () Bool)

(assert (=> d!882068 e!2004657))

(declare-fun c!540420 () Bool)

(assert (=> d!882068 (= c!540420 ((_ is EmptyExpr!9985) (derivativeStep!2953 (regex!5226 lt!1086543) (head!7047 lt!1086523))))))

(assert (=> d!882068 (= lt!1087693 e!2004659)))

(declare-fun c!540422 () Bool)

(assert (=> d!882068 (= c!540422 (isEmpty!20288 (tail!5217 lt!1086523)))))

(assert (=> d!882068 (validRegex!4554 (derivativeStep!2953 (regex!5226 lt!1086543) (head!7047 lt!1086523)))))

(assert (=> d!882068 (= (matchR!4619 (derivativeStep!2953 (regex!5226 lt!1086543) (head!7047 lt!1086523)) (tail!5217 lt!1086523)) lt!1087693)))

(declare-fun b!3215127 () Bool)

(declare-fun e!2004658 () Bool)

(assert (=> b!3215127 (= e!2004658 (not lt!1087693))))

(declare-fun b!3215128 () Bool)

(assert (=> b!3215128 (= e!2004656 (not (= (head!7047 (tail!5217 lt!1086523)) (c!539812 (derivativeStep!2953 (regex!5226 lt!1086543) (head!7047 lt!1086523))))))))

(declare-fun b!3215129 () Bool)

(declare-fun res!1308751 () Bool)

(assert (=> b!3215129 (=> (not res!1308751) (not e!2004655))))

(assert (=> b!3215129 (= res!1308751 (isEmpty!20288 (tail!5217 (tail!5217 lt!1086523))))))

(declare-fun b!3215130 () Bool)

(declare-fun res!1308747 () Bool)

(assert (=> b!3215130 (=> (not res!1308747) (not e!2004655))))

(assert (=> b!3215130 (= res!1308747 (not call!232720))))

(declare-fun b!3215131 () Bool)

(declare-fun e!2004653 () Bool)

(assert (=> b!3215131 (= e!2004654 e!2004653)))

(declare-fun res!1308750 () Bool)

(assert (=> b!3215131 (=> (not res!1308750) (not e!2004653))))

(assert (=> b!3215131 (= res!1308750 (not lt!1087693))))

(declare-fun b!3215132 () Bool)

(assert (=> b!3215132 (= e!2004657 e!2004658)))

(declare-fun c!540421 () Bool)

(assert (=> b!3215132 (= c!540421 ((_ is EmptyLang!9985) (derivativeStep!2953 (regex!5226 lt!1086543) (head!7047 lt!1086523))))))

(declare-fun b!3215133 () Bool)

(declare-fun res!1308748 () Bool)

(assert (=> b!3215133 (=> res!1308748 e!2004654)))

(assert (=> b!3215133 (= res!1308748 (not ((_ is ElementMatch!9985) (derivativeStep!2953 (regex!5226 lt!1086543) (head!7047 lt!1086523)))))))

(assert (=> b!3215133 (= e!2004658 e!2004654)))

(declare-fun b!3215134 () Bool)

(assert (=> b!3215134 (= e!2004653 e!2004656)))

(declare-fun res!1308753 () Bool)

(assert (=> b!3215134 (=> res!1308753 e!2004656)))

(assert (=> b!3215134 (= res!1308753 call!232720)))

(declare-fun b!3215135 () Bool)

(assert (=> b!3215135 (= e!2004659 (nullable!3400 (derivativeStep!2953 (regex!5226 lt!1086543) (head!7047 lt!1086523))))))

(declare-fun b!3215136 () Bool)

(assert (=> b!3215136 (= e!2004657 (= lt!1087693 call!232720))))

(assert (= (and d!882068 c!540422) b!3215135))

(assert (= (and d!882068 (not c!540422)) b!3215126))

(assert (= (and d!882068 c!540420) b!3215136))

(assert (= (and d!882068 (not c!540420)) b!3215132))

(assert (= (and b!3215132 c!540421) b!3215127))

(assert (= (and b!3215132 (not c!540421)) b!3215133))

(assert (= (and b!3215133 (not res!1308748)) b!3215124))

(assert (= (and b!3215124 res!1308749) b!3215130))

(assert (= (and b!3215130 res!1308747) b!3215129))

(assert (= (and b!3215129 res!1308751) b!3215125))

(assert (= (and b!3215124 (not res!1308754)) b!3215131))

(assert (= (and b!3215131 res!1308750) b!3215134))

(assert (= (and b!3215134 (not res!1308753)) b!3215123))

(assert (= (and b!3215123 (not res!1308752)) b!3215128))

(assert (= (or b!3215136 b!3215134 b!3215130) bm!232715))

(assert (=> b!3215135 m!3484479))

(declare-fun m!3487423 () Bool)

(assert (=> b!3215135 m!3487423))

(assert (=> b!3215123 m!3484473))

(declare-fun m!3487425 () Bool)

(assert (=> b!3215123 m!3487425))

(assert (=> b!3215123 m!3487425))

(declare-fun m!3487427 () Bool)

(assert (=> b!3215123 m!3487427))

(assert (=> b!3215125 m!3484473))

(declare-fun m!3487431 () Bool)

(assert (=> b!3215125 m!3487431))

(assert (=> b!3215128 m!3484473))

(assert (=> b!3215128 m!3487431))

(assert (=> b!3215126 m!3484473))

(assert (=> b!3215126 m!3487431))

(assert (=> b!3215126 m!3484479))

(assert (=> b!3215126 m!3487431))

(declare-fun m!3487435 () Bool)

(assert (=> b!3215126 m!3487435))

(assert (=> b!3215126 m!3484473))

(assert (=> b!3215126 m!3487425))

(assert (=> b!3215126 m!3487435))

(assert (=> b!3215126 m!3487425))

(declare-fun m!3487441 () Bool)

(assert (=> b!3215126 m!3487441))

(assert (=> d!882068 m!3484473))

(assert (=> d!882068 m!3484475))

(assert (=> d!882068 m!3484479))

(declare-fun m!3487449 () Bool)

(assert (=> d!882068 m!3487449))

(assert (=> bm!232715 m!3484473))

(assert (=> bm!232715 m!3484475))

(assert (=> b!3215129 m!3484473))

(assert (=> b!3215129 m!3487425))

(assert (=> b!3215129 m!3487425))

(assert (=> b!3215129 m!3487427))

(assert (=> b!3213427 d!882068))

(declare-fun bm!232716 () Bool)

(declare-fun call!232724 () Regex!9985)

(declare-fun call!232723 () Regex!9985)

(assert (=> bm!232716 (= call!232724 call!232723)))

(declare-fun b!3215140 () Bool)

(declare-fun e!2004662 () Regex!9985)

(assert (=> b!3215140 (= e!2004662 EmptyLang!9985)))

(declare-fun call!232721 () Regex!9985)

(declare-fun e!2004665 () Regex!9985)

(declare-fun b!3215141 () Bool)

(declare-fun call!232722 () Regex!9985)

(assert (=> b!3215141 (= e!2004665 (Union!9985 (Concat!15441 call!232722 (regTwo!20482 (regex!5226 lt!1086543))) call!232721))))

(declare-fun b!3215142 () Bool)

(assert (=> b!3215142 (= e!2004665 (Union!9985 (Concat!15441 call!232722 (regTwo!20482 (regex!5226 lt!1086543))) EmptyLang!9985))))

(declare-fun b!3215143 () Bool)

(declare-fun c!540424 () Bool)

(assert (=> b!3215143 (= c!540424 (nullable!3400 (regOne!20482 (regex!5226 lt!1086543))))))

(declare-fun e!2004663 () Regex!9985)

(assert (=> b!3215143 (= e!2004663 e!2004665)))

(declare-fun d!882072 () Bool)

(declare-fun lt!1087701 () Regex!9985)

(assert (=> d!882072 (validRegex!4554 lt!1087701)))

(assert (=> d!882072 (= lt!1087701 e!2004662)))

(declare-fun c!540427 () Bool)

(assert (=> d!882072 (= c!540427 (or ((_ is EmptyExpr!9985) (regex!5226 lt!1086543)) ((_ is EmptyLang!9985) (regex!5226 lt!1086543))))))

(assert (=> d!882072 (validRegex!4554 (regex!5226 lt!1086543))))

(assert (=> d!882072 (= (derivativeStep!2953 (regex!5226 lt!1086543) (head!7047 lt!1086523)) lt!1087701)))

(declare-fun bm!232717 () Bool)

(declare-fun c!540428 () Bool)

(declare-fun c!540425 () Bool)

(assert (=> bm!232717 (= call!232723 (derivativeStep!2953 (ite c!540425 (regOne!20483 (regex!5226 lt!1086543)) (ite c!540428 (reg!10314 (regex!5226 lt!1086543)) (regOne!20482 (regex!5226 lt!1086543)))) (head!7047 lt!1086523)))))

(declare-fun b!3215144 () Bool)

(assert (=> b!3215144 (= c!540425 ((_ is Union!9985) (regex!5226 lt!1086543)))))

(declare-fun e!2004666 () Regex!9985)

(declare-fun e!2004664 () Regex!9985)

(assert (=> b!3215144 (= e!2004666 e!2004664)))

(declare-fun b!3215145 () Bool)

(assert (=> b!3215145 (= e!2004664 e!2004663)))

(assert (=> b!3215145 (= c!540428 ((_ is Star!9985) (regex!5226 lt!1086543)))))

(declare-fun bm!232718 () Bool)

(assert (=> bm!232718 (= call!232722 call!232724)))

(declare-fun b!3215146 () Bool)

(assert (=> b!3215146 (= e!2004664 (Union!9985 call!232723 call!232721))))

(declare-fun b!3215147 () Bool)

(assert (=> b!3215147 (= e!2004666 (ite (= (head!7047 lt!1086523) (c!539812 (regex!5226 lt!1086543))) EmptyExpr!9985 EmptyLang!9985))))

(declare-fun bm!232719 () Bool)

(assert (=> bm!232719 (= call!232721 (derivativeStep!2953 (ite c!540425 (regTwo!20483 (regex!5226 lt!1086543)) (regTwo!20482 (regex!5226 lt!1086543))) (head!7047 lt!1086523)))))

(declare-fun b!3215148 () Bool)

(assert (=> b!3215148 (= e!2004663 (Concat!15441 call!232724 (regex!5226 lt!1086543)))))

(declare-fun b!3215149 () Bool)

(assert (=> b!3215149 (= e!2004662 e!2004666)))

(declare-fun c!540426 () Bool)

(assert (=> b!3215149 (= c!540426 ((_ is ElementMatch!9985) (regex!5226 lt!1086543)))))

(assert (= (and d!882072 c!540427) b!3215140))

(assert (= (and d!882072 (not c!540427)) b!3215149))

(assert (= (and b!3215149 c!540426) b!3215147))

(assert (= (and b!3215149 (not c!540426)) b!3215144))

(assert (= (and b!3215144 c!540425) b!3215146))

(assert (= (and b!3215144 (not c!540425)) b!3215145))

(assert (= (and b!3215145 c!540428) b!3215148))

(assert (= (and b!3215145 (not c!540428)) b!3215143))

(assert (= (and b!3215143 c!540424) b!3215141))

(assert (= (and b!3215143 (not c!540424)) b!3215142))

(assert (= (or b!3215141 b!3215142) bm!232718))

(assert (= (or b!3215148 bm!232718) bm!232716))

(assert (= (or b!3215146 bm!232716) bm!232717))

(assert (= (or b!3215146 b!3215141) bm!232719))

(declare-fun m!3487469 () Bool)

(assert (=> b!3215143 m!3487469))

(declare-fun m!3487471 () Bool)

(assert (=> d!882072 m!3487471))

(assert (=> d!882072 m!3484485))

(assert (=> bm!232717 m!3484477))

(declare-fun m!3487473 () Bool)

(assert (=> bm!232717 m!3487473))

(assert (=> bm!232719 m!3484477))

(declare-fun m!3487475 () Bool)

(assert (=> bm!232719 m!3487475))

(assert (=> b!3213427 d!882072))

(declare-fun d!882076 () Bool)

(assert (=> d!882076 (= (head!7047 lt!1086523) (h!41607 lt!1086523))))

(assert (=> b!3213427 d!882076))

(assert (=> b!3213427 d!881352))

(assert (=> bm!232553 d!881444))

(declare-fun d!882078 () Bool)

(declare-fun charsToBigInt!0 (List!36310 Int) Int)

(assert (=> d!882078 (= (inv!15 (value!169401 (h!41609 tokens!494))) (= (charsToBigInt!0 (text!38641 (value!169401 (h!41609 tokens!494))) 0) (value!169396 (value!169401 (h!41609 tokens!494)))))))

(declare-fun bs!542083 () Bool)

(assert (= bs!542083 d!882078))

(declare-fun m!3487497 () Bool)

(assert (=> bs!542083 m!3487497))

(assert (=> b!3213734 d!882078))

(declare-fun b!3215159 () Bool)

(declare-fun e!2004671 () List!36311)

(assert (=> b!3215159 (= e!2004671 (++!8688 (list!12879 (left!28142 (c!539813 (charsOf!3242 (h!41609 (t!239158 tokens!494)))))) (list!12879 (right!28472 (c!539813 (charsOf!3242 (h!41609 (t!239158 tokens!494))))))))))

(declare-fun b!3215156 () Bool)

(declare-fun e!2004670 () List!36311)

(assert (=> b!3215156 (= e!2004670 Nil!36187)))

(declare-fun b!3215158 () Bool)

(assert (=> b!3215158 (= e!2004671 (list!12883 (xs!13945 (c!539813 (charsOf!3242 (h!41609 (t!239158 tokens!494)))))))))

(declare-fun b!3215157 () Bool)

(assert (=> b!3215157 (= e!2004670 e!2004671)))

(declare-fun c!540430 () Bool)

(assert (=> b!3215157 (= c!540430 ((_ is Leaf!17051) (c!539813 (charsOf!3242 (h!41609 (t!239158 tokens!494))))))))

(declare-fun d!882086 () Bool)

(declare-fun c!540429 () Bool)

(assert (=> d!882086 (= c!540429 ((_ is Empty!10827) (c!539813 (charsOf!3242 (h!41609 (t!239158 tokens!494))))))))

(assert (=> d!882086 (= (list!12879 (c!539813 (charsOf!3242 (h!41609 (t!239158 tokens!494))))) e!2004670)))

(assert (= (and d!882086 c!540429) b!3215156))

(assert (= (and d!882086 (not c!540429)) b!3215157))

(assert (= (and b!3215157 c!540430) b!3215158))

(assert (= (and b!3215157 (not c!540430)) b!3215159))

(declare-fun m!3487507 () Bool)

(assert (=> b!3215159 m!3487507))

(declare-fun m!3487509 () Bool)

(assert (=> b!3215159 m!3487509))

(assert (=> b!3215159 m!3487507))

(assert (=> b!3215159 m!3487509))

(declare-fun m!3487513 () Bool)

(assert (=> b!3215159 m!3487513))

(declare-fun m!3487515 () Bool)

(assert (=> b!3215158 m!3487515))

(assert (=> d!881096 d!882086))

(declare-fun b!3215169 () Bool)

(declare-fun e!2004678 () List!36311)

(declare-fun call!232728 () List!36311)

(assert (=> b!3215169 (= e!2004678 call!232728)))

(declare-fun call!232729 () List!36311)

(declare-fun c!540434 () Bool)

(declare-fun bm!232721 () Bool)

(declare-fun call!232725 () List!36311)

(assert (=> bm!232721 (= call!232728 (++!8688 (ite c!540434 call!232729 call!232725) (ite c!540434 call!232725 call!232729)))))

(declare-fun b!3215170 () Bool)

(declare-fun e!2004679 () List!36311)

(declare-fun call!232726 () List!36311)

(assert (=> b!3215170 (= e!2004679 call!232726)))

(declare-fun c!540437 () Bool)

(declare-fun d!882090 () Bool)

(assert (=> d!882090 (= c!540437 (or ((_ is EmptyExpr!9985) (ite c!539927 (reg!10314 (regex!5226 (rule!7672 (h!41609 (t!239158 tokens!494))))) (ite c!539924 (regOne!20483 (regex!5226 (rule!7672 (h!41609 (t!239158 tokens!494))))) (regTwo!20482 (regex!5226 (rule!7672 (h!41609 (t!239158 tokens!494)))))))) ((_ is EmptyLang!9985) (ite c!539927 (reg!10314 (regex!5226 (rule!7672 (h!41609 (t!239158 tokens!494))))) (ite c!539924 (regOne!20483 (regex!5226 (rule!7672 (h!41609 (t!239158 tokens!494))))) (regTwo!20482 (regex!5226 (rule!7672 (h!41609 (t!239158 tokens!494))))))))))))

(declare-fun e!2004680 () List!36311)

(assert (=> d!882090 (= (usedCharacters!542 (ite c!539927 (reg!10314 (regex!5226 (rule!7672 (h!41609 (t!239158 tokens!494))))) (ite c!539924 (regOne!20483 (regex!5226 (rule!7672 (h!41609 (t!239158 tokens!494))))) (regTwo!20482 (regex!5226 (rule!7672 (h!41609 (t!239158 tokens!494)))))))) e!2004680)))

(declare-fun b!3215171 () Bool)

(declare-fun c!540438 () Bool)

(assert (=> b!3215171 (= c!540438 ((_ is Star!9985) (ite c!539927 (reg!10314 (regex!5226 (rule!7672 (h!41609 (t!239158 tokens!494))))) (ite c!539924 (regOne!20483 (regex!5226 (rule!7672 (h!41609 (t!239158 tokens!494))))) (regTwo!20482 (regex!5226 (rule!7672 (h!41609 (t!239158 tokens!494)))))))))))

(declare-fun e!2004675 () List!36311)

(assert (=> b!3215171 (= e!2004675 e!2004679)))

(declare-fun b!3215172 () Bool)

(assert (=> b!3215172 (= e!2004679 e!2004678)))

(assert (=> b!3215172 (= c!540434 ((_ is Union!9985) (ite c!539927 (reg!10314 (regex!5226 (rule!7672 (h!41609 (t!239158 tokens!494))))) (ite c!539924 (regOne!20483 (regex!5226 (rule!7672 (h!41609 (t!239158 tokens!494))))) (regTwo!20482 (regex!5226 (rule!7672 (h!41609 (t!239158 tokens!494)))))))))))

(declare-fun bm!232722 () Bool)

(assert (=> bm!232722 (= call!232729 call!232726)))

(declare-fun b!3215173 () Bool)

(assert (=> b!3215173 (= e!2004678 call!232728)))

(declare-fun b!3215174 () Bool)

(assert (=> b!3215174 (= e!2004675 (Cons!36187 (c!539812 (ite c!539927 (reg!10314 (regex!5226 (rule!7672 (h!41609 (t!239158 tokens!494))))) (ite c!539924 (regOne!20483 (regex!5226 (rule!7672 (h!41609 (t!239158 tokens!494))))) (regTwo!20482 (regex!5226 (rule!7672 (h!41609 (t!239158 tokens!494)))))))) Nil!36187))))

(declare-fun bm!232723 () Bool)

(assert (=> bm!232723 (= call!232725 (usedCharacters!542 (ite c!540434 (regTwo!20483 (ite c!539927 (reg!10314 (regex!5226 (rule!7672 (h!41609 (t!239158 tokens!494))))) (ite c!539924 (regOne!20483 (regex!5226 (rule!7672 (h!41609 (t!239158 tokens!494))))) (regTwo!20482 (regex!5226 (rule!7672 (h!41609 (t!239158 tokens!494)))))))) (regOne!20482 (ite c!539927 (reg!10314 (regex!5226 (rule!7672 (h!41609 (t!239158 tokens!494))))) (ite c!539924 (regOne!20483 (regex!5226 (rule!7672 (h!41609 (t!239158 tokens!494))))) (regTwo!20482 (regex!5226 (rule!7672 (h!41609 (t!239158 tokens!494)))))))))))))

(declare-fun b!3215175 () Bool)

(assert (=> b!3215175 (= e!2004680 Nil!36187)))

(declare-fun bm!232724 () Bool)

(assert (=> bm!232724 (= call!232726 (usedCharacters!542 (ite c!540438 (reg!10314 (ite c!539927 (reg!10314 (regex!5226 (rule!7672 (h!41609 (t!239158 tokens!494))))) (ite c!539924 (regOne!20483 (regex!5226 (rule!7672 (h!41609 (t!239158 tokens!494))))) (regTwo!20482 (regex!5226 (rule!7672 (h!41609 (t!239158 tokens!494)))))))) (ite c!540434 (regOne!20483 (ite c!539927 (reg!10314 (regex!5226 (rule!7672 (h!41609 (t!239158 tokens!494))))) (ite c!539924 (regOne!20483 (regex!5226 (rule!7672 (h!41609 (t!239158 tokens!494))))) (regTwo!20482 (regex!5226 (rule!7672 (h!41609 (t!239158 tokens!494)))))))) (regTwo!20482 (ite c!539927 (reg!10314 (regex!5226 (rule!7672 (h!41609 (t!239158 tokens!494))))) (ite c!539924 (regOne!20483 (regex!5226 (rule!7672 (h!41609 (t!239158 tokens!494))))) (regTwo!20482 (regex!5226 (rule!7672 (h!41609 (t!239158 tokens!494))))))))))))))

(declare-fun b!3215176 () Bool)

(assert (=> b!3215176 (= e!2004680 e!2004675)))

(declare-fun c!540436 () Bool)

(assert (=> b!3215176 (= c!540436 ((_ is ElementMatch!9985) (ite c!539927 (reg!10314 (regex!5226 (rule!7672 (h!41609 (t!239158 tokens!494))))) (ite c!539924 (regOne!20483 (regex!5226 (rule!7672 (h!41609 (t!239158 tokens!494))))) (regTwo!20482 (regex!5226 (rule!7672 (h!41609 (t!239158 tokens!494)))))))))))

(assert (= (and d!882090 c!540437) b!3215175))

(assert (= (and d!882090 (not c!540437)) b!3215176))

(assert (= (and b!3215176 c!540436) b!3215174))

(assert (= (and b!3215176 (not c!540436)) b!3215171))

(assert (= (and b!3215171 c!540438) b!3215170))

(assert (= (and b!3215171 (not c!540438)) b!3215172))

(assert (= (and b!3215172 c!540434) b!3215169))

(assert (= (and b!3215172 (not c!540434)) b!3215173))

(assert (= (or b!3215169 b!3215173) bm!232723))

(assert (= (or b!3215169 b!3215173) bm!232722))

(assert (= (or b!3215169 b!3215173) bm!232721))

(assert (= (or b!3215170 bm!232722) bm!232724))

(declare-fun m!3487523 () Bool)

(assert (=> bm!232721 m!3487523))

(declare-fun m!3487525 () Bool)

(assert (=> bm!232723 m!3487525))

(declare-fun m!3487527 () Bool)

(assert (=> bm!232724 m!3487527))

(assert (=> bm!232536 d!882090))

(assert (=> bs!541938 d!880894))

(declare-fun d!882094 () Bool)

(assert (=> d!882094 (= (isEmpty!20283 lt!1086534) (not ((_ is Some!7152) lt!1086534)))))

(assert (=> d!880982 d!882094))

(assert (=> b!3213036 d!881348))

(declare-fun b!3215186 () Bool)

(declare-fun res!1308768 () Bool)

(declare-fun e!2004689 () Bool)

(assert (=> b!3215186 (=> res!1308768 e!2004689)))

(assert (=> b!3215186 (= res!1308768 (not (isEmpty!20288 (tail!5217 (list!12875 (charsOf!3242 (h!41609 (t!239158 tokens!494))))))))))

(declare-fun b!3215187 () Bool)

(declare-fun res!1308770 () Bool)

(declare-fun e!2004687 () Bool)

(assert (=> b!3215187 (=> res!1308770 e!2004687)))

(declare-fun e!2004688 () Bool)

(assert (=> b!3215187 (= res!1308770 e!2004688)))

(declare-fun res!1308765 () Bool)

(assert (=> b!3215187 (=> (not res!1308765) (not e!2004688))))

(declare-fun lt!1087707 () Bool)

(assert (=> b!3215187 (= res!1308765 lt!1087707)))

(declare-fun bm!232726 () Bool)

(declare-fun call!232731 () Bool)

(assert (=> bm!232726 (= call!232731 (isEmpty!20288 (list!12875 (charsOf!3242 (h!41609 (t!239158 tokens!494))))))))

(declare-fun b!3215188 () Bool)

(assert (=> b!3215188 (= e!2004688 (= (head!7047 (list!12875 (charsOf!3242 (h!41609 (t!239158 tokens!494))))) (c!539812 (regex!5226 (get!11524 (getRuleFromTag!931 thiss!18206 rules!2135 (tag!5754 (rule!7672 (h!41609 (t!239158 tokens!494))))))))))))

(declare-fun e!2004692 () Bool)

(declare-fun b!3215189 () Bool)

(assert (=> b!3215189 (= e!2004692 (matchR!4619 (derivativeStep!2953 (regex!5226 (get!11524 (getRuleFromTag!931 thiss!18206 rules!2135 (tag!5754 (rule!7672 (h!41609 (t!239158 tokens!494))))))) (head!7047 (list!12875 (charsOf!3242 (h!41609 (t!239158 tokens!494)))))) (tail!5217 (list!12875 (charsOf!3242 (h!41609 (t!239158 tokens!494)))))))))

(declare-fun d!882096 () Bool)

(declare-fun e!2004690 () Bool)

(assert (=> d!882096 e!2004690))

(declare-fun c!540443 () Bool)

(assert (=> d!882096 (= c!540443 ((_ is EmptyExpr!9985) (regex!5226 (get!11524 (getRuleFromTag!931 thiss!18206 rules!2135 (tag!5754 (rule!7672 (h!41609 (t!239158 tokens!494)))))))))))

(assert (=> d!882096 (= lt!1087707 e!2004692)))

(declare-fun c!540445 () Bool)

(assert (=> d!882096 (= c!540445 (isEmpty!20288 (list!12875 (charsOf!3242 (h!41609 (t!239158 tokens!494))))))))

(assert (=> d!882096 (validRegex!4554 (regex!5226 (get!11524 (getRuleFromTag!931 thiss!18206 rules!2135 (tag!5754 (rule!7672 (h!41609 (t!239158 tokens!494))))))))))

(assert (=> d!882096 (= (matchR!4619 (regex!5226 (get!11524 (getRuleFromTag!931 thiss!18206 rules!2135 (tag!5754 (rule!7672 (h!41609 (t!239158 tokens!494))))))) (list!12875 (charsOf!3242 (h!41609 (t!239158 tokens!494))))) lt!1087707)))

(declare-fun b!3215190 () Bool)

(declare-fun e!2004691 () Bool)

(assert (=> b!3215190 (= e!2004691 (not lt!1087707))))

(declare-fun b!3215191 () Bool)

(assert (=> b!3215191 (= e!2004689 (not (= (head!7047 (list!12875 (charsOf!3242 (h!41609 (t!239158 tokens!494))))) (c!539812 (regex!5226 (get!11524 (getRuleFromTag!931 thiss!18206 rules!2135 (tag!5754 (rule!7672 (h!41609 (t!239158 tokens!494)))))))))))))

(declare-fun b!3215192 () Bool)

(declare-fun res!1308767 () Bool)

(assert (=> b!3215192 (=> (not res!1308767) (not e!2004688))))

(assert (=> b!3215192 (= res!1308767 (isEmpty!20288 (tail!5217 (list!12875 (charsOf!3242 (h!41609 (t!239158 tokens!494)))))))))

(declare-fun b!3215193 () Bool)

(declare-fun res!1308763 () Bool)

(assert (=> b!3215193 (=> (not res!1308763) (not e!2004688))))

(assert (=> b!3215193 (= res!1308763 (not call!232731))))

(declare-fun b!3215194 () Bool)

(declare-fun e!2004686 () Bool)

(assert (=> b!3215194 (= e!2004687 e!2004686)))

(declare-fun res!1308766 () Bool)

(assert (=> b!3215194 (=> (not res!1308766) (not e!2004686))))

(assert (=> b!3215194 (= res!1308766 (not lt!1087707))))

(declare-fun b!3215195 () Bool)

(assert (=> b!3215195 (= e!2004690 e!2004691)))

(declare-fun c!540444 () Bool)

(assert (=> b!3215195 (= c!540444 ((_ is EmptyLang!9985) (regex!5226 (get!11524 (getRuleFromTag!931 thiss!18206 rules!2135 (tag!5754 (rule!7672 (h!41609 (t!239158 tokens!494)))))))))))

(declare-fun b!3215196 () Bool)

(declare-fun res!1308764 () Bool)

(assert (=> b!3215196 (=> res!1308764 e!2004687)))

(assert (=> b!3215196 (= res!1308764 (not ((_ is ElementMatch!9985) (regex!5226 (get!11524 (getRuleFromTag!931 thiss!18206 rules!2135 (tag!5754 (rule!7672 (h!41609 (t!239158 tokens!494))))))))))))

(assert (=> b!3215196 (= e!2004691 e!2004687)))

(declare-fun b!3215197 () Bool)

(assert (=> b!3215197 (= e!2004686 e!2004689)))

(declare-fun res!1308769 () Bool)

(assert (=> b!3215197 (=> res!1308769 e!2004689)))

(assert (=> b!3215197 (= res!1308769 call!232731)))

(declare-fun b!3215198 () Bool)

(assert (=> b!3215198 (= e!2004692 (nullable!3400 (regex!5226 (get!11524 (getRuleFromTag!931 thiss!18206 rules!2135 (tag!5754 (rule!7672 (h!41609 (t!239158 tokens!494)))))))))))

(declare-fun b!3215199 () Bool)

(assert (=> b!3215199 (= e!2004690 (= lt!1087707 call!232731))))

(assert (= (and d!882096 c!540445) b!3215198))

(assert (= (and d!882096 (not c!540445)) b!3215189))

(assert (= (and d!882096 c!540443) b!3215199))

(assert (= (and d!882096 (not c!540443)) b!3215195))

(assert (= (and b!3215195 c!540444) b!3215190))

(assert (= (and b!3215195 (not c!540444)) b!3215196))

(assert (= (and b!3215196 (not res!1308764)) b!3215187))

(assert (= (and b!3215187 res!1308765) b!3215193))

(assert (= (and b!3215193 res!1308763) b!3215192))

(assert (= (and b!3215192 res!1308767) b!3215188))

(assert (= (and b!3215187 (not res!1308770)) b!3215194))

(assert (= (and b!3215194 res!1308766) b!3215197))

(assert (= (and b!3215197 (not res!1308769)) b!3215186))

(assert (= (and b!3215186 (not res!1308768)) b!3215191))

(assert (= (or b!3215199 b!3215197 b!3215193) bm!232726))

(declare-fun m!3487547 () Bool)

(assert (=> b!3215198 m!3487547))

(assert (=> b!3215186 m!3483465))

(declare-fun m!3487549 () Bool)

(assert (=> b!3215186 m!3487549))

(assert (=> b!3215186 m!3487549))

(declare-fun m!3487551 () Bool)

(assert (=> b!3215186 m!3487551))

(assert (=> b!3215188 m!3483465))

(declare-fun m!3487553 () Bool)

(assert (=> b!3215188 m!3487553))

(assert (=> b!3215191 m!3483465))

(assert (=> b!3215191 m!3487553))

(assert (=> b!3215189 m!3483465))

(assert (=> b!3215189 m!3487553))

(assert (=> b!3215189 m!3487553))

(declare-fun m!3487555 () Bool)

(assert (=> b!3215189 m!3487555))

(assert (=> b!3215189 m!3483465))

(assert (=> b!3215189 m!3487549))

(assert (=> b!3215189 m!3487555))

(assert (=> b!3215189 m!3487549))

(declare-fun m!3487557 () Bool)

(assert (=> b!3215189 m!3487557))

(assert (=> d!882096 m!3483465))

(declare-fun m!3487559 () Bool)

(assert (=> d!882096 m!3487559))

(declare-fun m!3487561 () Bool)

(assert (=> d!882096 m!3487561))

(assert (=> bm!232726 m!3483465))

(assert (=> bm!232726 m!3487559))

(assert (=> b!3215192 m!3483465))

(assert (=> b!3215192 m!3487549))

(assert (=> b!3215192 m!3487549))

(assert (=> b!3215192 m!3487551))

(assert (=> b!3213036 d!882096))

(assert (=> b!3213036 d!881096))

(assert (=> b!3213036 d!881108))

(assert (=> b!3213036 d!880942))

(declare-fun d!882104 () Bool)

(assert (=> d!882104 (= (isEmpty!20287 lt!1086791) (not ((_ is Some!7153) lt!1086791)))))

(assert (=> d!881002 d!882104))

(declare-fun d!882106 () Bool)

(assert (=> d!882106 (= (isEmpty!20288 (_1!20936 lt!1086789)) ((_ is Nil!36187) (_1!20936 lt!1086789)))))

(assert (=> d!881002 d!882106))

(declare-fun d!882108 () Bool)

(declare-fun lt!1087744 () tuple2!35604)

(assert (=> d!882108 (= (++!8688 (_1!20936 lt!1087744) (_2!20936 lt!1087744)) lt!1086523)))

(declare-fun sizeTr!163 (List!36311 Int) Int)

(assert (=> d!882108 (= lt!1087744 (findLongestMatchInner!833 (regex!5226 (rule!7672 (h!41609 tokens!494))) Nil!36187 0 lt!1086523 lt!1086523 (sizeTr!163 lt!1086523 0)))))

(declare-fun lt!1087742 () Unit!50676)

(declare-fun lt!1087740 () Unit!50676)

(assert (=> d!882108 (= lt!1087742 lt!1087740)))

(declare-fun lt!1087743 () List!36311)

(declare-fun lt!1087738 () Int)

(assert (=> d!882108 (= (sizeTr!163 lt!1087743 lt!1087738) (+ (size!27274 lt!1087743) lt!1087738))))

(declare-fun lemmaSizeTrEqualsSize!162 (List!36311 Int) Unit!50676)

(assert (=> d!882108 (= lt!1087740 (lemmaSizeTrEqualsSize!162 lt!1087743 lt!1087738))))

(assert (=> d!882108 (= lt!1087738 0)))

(assert (=> d!882108 (= lt!1087743 Nil!36187)))

(declare-fun lt!1087741 () Unit!50676)

(declare-fun lt!1087739 () Unit!50676)

(assert (=> d!882108 (= lt!1087741 lt!1087739)))

(declare-fun lt!1087737 () Int)

(assert (=> d!882108 (= (sizeTr!163 lt!1086523 lt!1087737) (+ (size!27274 lt!1086523) lt!1087737))))

(assert (=> d!882108 (= lt!1087739 (lemmaSizeTrEqualsSize!162 lt!1086523 lt!1087737))))

(assert (=> d!882108 (= lt!1087737 0)))

(assert (=> d!882108 (validRegex!4554 (regex!5226 (rule!7672 (h!41609 tokens!494))))))

(assert (=> d!882108 (= (findLongestMatch!748 (regex!5226 (rule!7672 (h!41609 tokens!494))) lt!1086523) lt!1087744)))

(declare-fun bs!542097 () Bool)

(assert (= bs!542097 d!882108))

(assert (=> bs!542097 m!3485623))

(declare-fun m!3487665 () Bool)

(assert (=> bs!542097 m!3487665))

(declare-fun m!3487667 () Bool)

(assert (=> bs!542097 m!3487667))

(declare-fun m!3487669 () Bool)

(assert (=> bs!542097 m!3487669))

(assert (=> bs!542097 m!3487665))

(declare-fun m!3487671 () Bool)

(assert (=> bs!542097 m!3487671))

(assert (=> bs!542097 m!3483283))

(declare-fun m!3487673 () Bool)

(assert (=> bs!542097 m!3487673))

(declare-fun m!3487675 () Bool)

(assert (=> bs!542097 m!3487675))

(declare-fun m!3487677 () Bool)

(assert (=> bs!542097 m!3487677))

(declare-fun m!3487679 () Bool)

(assert (=> bs!542097 m!3487679))

(assert (=> d!881002 d!882108))

(declare-fun d!882144 () Bool)

(declare-fun res!1308794 () Bool)

(declare-fun e!2004722 () Bool)

(assert (=> d!882144 (=> (not res!1308794) (not e!2004722))))

(assert (=> d!882144 (= res!1308794 (validRegex!4554 (regex!5226 (rule!7672 (h!41609 tokens!494)))))))

(assert (=> d!882144 (= (ruleValid!1650 thiss!18206 (rule!7672 (h!41609 tokens!494))) e!2004722)))

(declare-fun b!3215250 () Bool)

(declare-fun res!1308795 () Bool)

(assert (=> b!3215250 (=> (not res!1308795) (not e!2004722))))

(assert (=> b!3215250 (= res!1308795 (not (nullable!3400 (regex!5226 (rule!7672 (h!41609 tokens!494))))))))

(declare-fun b!3215251 () Bool)

(assert (=> b!3215251 (= e!2004722 (not (= (tag!5754 (rule!7672 (h!41609 tokens!494))) (String!40615 ""))))))

(assert (= (and d!882144 res!1308794) b!3215250))

(assert (= (and b!3215250 res!1308795) b!3215251))

(assert (=> d!882144 m!3485623))

(assert (=> b!3215250 m!3485607))

(assert (=> d!881002 d!882144))

(declare-fun d!882148 () Bool)

(declare-fun lt!1087774 () Int)

(assert (=> d!882148 (= lt!1087774 (size!27274 (list!12875 (_2!20931 lt!1086878))))))

(assert (=> d!882148 (= lt!1087774 (size!27283 (c!539813 (_2!20931 lt!1086878))))))

(assert (=> d!882148 (= (size!27276 (_2!20931 lt!1086878)) lt!1087774)))

(declare-fun bs!542098 () Bool)

(assert (= bs!542098 d!882148))

(assert (=> bs!542098 m!3484633))

(assert (=> bs!542098 m!3484633))

(declare-fun m!3487681 () Bool)

(assert (=> bs!542098 m!3487681))

(declare-fun m!3487683 () Bool)

(assert (=> bs!542098 m!3487683))

(assert (=> b!3213490 d!882148))

(declare-fun d!882150 () Bool)

(declare-fun lt!1087775 () Int)

(assert (=> d!882150 (= lt!1087775 (size!27274 (list!12875 lt!1086549)))))

(assert (=> d!882150 (= lt!1087775 (size!27283 (c!539813 lt!1086549)))))

(assert (=> d!882150 (= (size!27276 lt!1086549) lt!1087775)))

(declare-fun bs!542099 () Bool)

(assert (= bs!542099 d!882150))

(assert (=> bs!542099 m!3484625))

(assert (=> bs!542099 m!3484625))

(assert (=> bs!542099 m!3487211))

(declare-fun m!3487687 () Bool)

(assert (=> bs!542099 m!3487687))

(assert (=> b!3213490 d!882150))

(assert (=> b!3213429 d!882076))

(declare-fun b!3215252 () Bool)

(declare-fun res!1308801 () Bool)

(declare-fun e!2004726 () Bool)

(assert (=> b!3215252 (=> res!1308801 e!2004726)))

(assert (=> b!3215252 (= res!1308801 (not (isEmpty!20288 (tail!5217 (tail!5217 lt!1086557)))))))

(declare-fun b!3215253 () Bool)

(declare-fun res!1308803 () Bool)

(declare-fun e!2004724 () Bool)

(assert (=> b!3215253 (=> res!1308803 e!2004724)))

(declare-fun e!2004725 () Bool)

(assert (=> b!3215253 (= res!1308803 e!2004725)))

(declare-fun res!1308798 () Bool)

(assert (=> b!3215253 (=> (not res!1308798) (not e!2004725))))

(declare-fun lt!1087776 () Bool)

(assert (=> b!3215253 (= res!1308798 lt!1087776)))

(declare-fun bm!232736 () Bool)

(declare-fun call!232741 () Bool)

(assert (=> bm!232736 (= call!232741 (isEmpty!20288 (tail!5217 lt!1086557)))))

(declare-fun b!3215254 () Bool)

(assert (=> b!3215254 (= e!2004725 (= (head!7047 (tail!5217 lt!1086557)) (c!539812 (derivativeStep!2953 (regex!5226 (rule!7672 separatorToken!241)) (head!7047 lt!1086557)))))))

(declare-fun b!3215255 () Bool)

(declare-fun e!2004729 () Bool)

(assert (=> b!3215255 (= e!2004729 (matchR!4619 (derivativeStep!2953 (derivativeStep!2953 (regex!5226 (rule!7672 separatorToken!241)) (head!7047 lt!1086557)) (head!7047 (tail!5217 lt!1086557))) (tail!5217 (tail!5217 lt!1086557))))))

(declare-fun d!882152 () Bool)

(declare-fun e!2004727 () Bool)

(assert (=> d!882152 e!2004727))

(declare-fun c!540458 () Bool)

(assert (=> d!882152 (= c!540458 ((_ is EmptyExpr!9985) (derivativeStep!2953 (regex!5226 (rule!7672 separatorToken!241)) (head!7047 lt!1086557))))))

(assert (=> d!882152 (= lt!1087776 e!2004729)))

(declare-fun c!540460 () Bool)

(assert (=> d!882152 (= c!540460 (isEmpty!20288 (tail!5217 lt!1086557)))))

(assert (=> d!882152 (validRegex!4554 (derivativeStep!2953 (regex!5226 (rule!7672 separatorToken!241)) (head!7047 lt!1086557)))))

(assert (=> d!882152 (= (matchR!4619 (derivativeStep!2953 (regex!5226 (rule!7672 separatorToken!241)) (head!7047 lt!1086557)) (tail!5217 lt!1086557)) lt!1087776)))

(declare-fun b!3215256 () Bool)

(declare-fun e!2004728 () Bool)

(assert (=> b!3215256 (= e!2004728 (not lt!1087776))))

(declare-fun b!3215257 () Bool)

(assert (=> b!3215257 (= e!2004726 (not (= (head!7047 (tail!5217 lt!1086557)) (c!539812 (derivativeStep!2953 (regex!5226 (rule!7672 separatorToken!241)) (head!7047 lt!1086557))))))))

(declare-fun b!3215258 () Bool)

(declare-fun res!1308800 () Bool)

(assert (=> b!3215258 (=> (not res!1308800) (not e!2004725))))

(assert (=> b!3215258 (= res!1308800 (isEmpty!20288 (tail!5217 (tail!5217 lt!1086557))))))

(declare-fun b!3215259 () Bool)

(declare-fun res!1308796 () Bool)

(assert (=> b!3215259 (=> (not res!1308796) (not e!2004725))))

(assert (=> b!3215259 (= res!1308796 (not call!232741))))

(declare-fun b!3215260 () Bool)

(declare-fun e!2004723 () Bool)

(assert (=> b!3215260 (= e!2004724 e!2004723)))

(declare-fun res!1308799 () Bool)

(assert (=> b!3215260 (=> (not res!1308799) (not e!2004723))))

(assert (=> b!3215260 (= res!1308799 (not lt!1087776))))

(declare-fun b!3215261 () Bool)

(assert (=> b!3215261 (= e!2004727 e!2004728)))

(declare-fun c!540459 () Bool)

(assert (=> b!3215261 (= c!540459 ((_ is EmptyLang!9985) (derivativeStep!2953 (regex!5226 (rule!7672 separatorToken!241)) (head!7047 lt!1086557))))))

(declare-fun b!3215262 () Bool)

(declare-fun res!1308797 () Bool)

(assert (=> b!3215262 (=> res!1308797 e!2004724)))

(assert (=> b!3215262 (= res!1308797 (not ((_ is ElementMatch!9985) (derivativeStep!2953 (regex!5226 (rule!7672 separatorToken!241)) (head!7047 lt!1086557)))))))

(assert (=> b!3215262 (= e!2004728 e!2004724)))

(declare-fun b!3215263 () Bool)

(assert (=> b!3215263 (= e!2004723 e!2004726)))

(declare-fun res!1308802 () Bool)

(assert (=> b!3215263 (=> res!1308802 e!2004726)))

(assert (=> b!3215263 (= res!1308802 call!232741)))

(declare-fun b!3215264 () Bool)

(assert (=> b!3215264 (= e!2004729 (nullable!3400 (derivativeStep!2953 (regex!5226 (rule!7672 separatorToken!241)) (head!7047 lt!1086557))))))

(declare-fun b!3215265 () Bool)

(assert (=> b!3215265 (= e!2004727 (= lt!1087776 call!232741))))

(assert (= (and d!882152 c!540460) b!3215264))

(assert (= (and d!882152 (not c!540460)) b!3215255))

(assert (= (and d!882152 c!540458) b!3215265))

(assert (= (and d!882152 (not c!540458)) b!3215261))

(assert (= (and b!3215261 c!540459) b!3215256))

(assert (= (and b!3215261 (not c!540459)) b!3215262))

(assert (= (and b!3215262 (not res!1308797)) b!3215253))

(assert (= (and b!3215253 res!1308798) b!3215259))

(assert (= (and b!3215259 res!1308796) b!3215258))

(assert (= (and b!3215258 res!1308800) b!3215254))

(assert (= (and b!3215253 (not res!1308803)) b!3215260))

(assert (= (and b!3215260 res!1308799) b!3215263))

(assert (= (and b!3215263 (not res!1308802)) b!3215252))

(assert (= (and b!3215252 (not res!1308801)) b!3215257))

(assert (= (or b!3215265 b!3215263 b!3215259) bm!232736))

(assert (=> b!3215264 m!3484969))

(declare-fun m!3487735 () Bool)

(assert (=> b!3215264 m!3487735))

(assert (=> b!3215252 m!3484943))

(assert (=> b!3215252 m!3487085))

(assert (=> b!3215252 m!3487085))

(assert (=> b!3215252 m!3487087))

(assert (=> b!3215254 m!3484943))

(assert (=> b!3215254 m!3487089))

(assert (=> b!3215257 m!3484943))

(assert (=> b!3215257 m!3487089))

(assert (=> b!3215255 m!3484943))

(assert (=> b!3215255 m!3487089))

(assert (=> b!3215255 m!3484969))

(assert (=> b!3215255 m!3487089))

(declare-fun m!3487737 () Bool)

(assert (=> b!3215255 m!3487737))

(assert (=> b!3215255 m!3484943))

(assert (=> b!3215255 m!3487085))

(assert (=> b!3215255 m!3487737))

(assert (=> b!3215255 m!3487085))

(declare-fun m!3487739 () Bool)

(assert (=> b!3215255 m!3487739))

(assert (=> d!882152 m!3484943))

(assert (=> d!882152 m!3484945))

(assert (=> d!882152 m!3484969))

(declare-fun m!3487741 () Bool)

(assert (=> d!882152 m!3487741))

(assert (=> bm!232736 m!3484943))

(assert (=> bm!232736 m!3484945))

(assert (=> b!3215258 m!3484943))

(assert (=> b!3215258 m!3487085))

(assert (=> b!3215258 m!3487085))

(assert (=> b!3215258 m!3487087))

(assert (=> b!3213705 d!882152))

(declare-fun bm!232737 () Bool)

(declare-fun call!232745 () Regex!9985)

(declare-fun call!232744 () Regex!9985)

(assert (=> bm!232737 (= call!232745 call!232744)))

(declare-fun b!3215266 () Bool)

(declare-fun e!2004730 () Regex!9985)

(assert (=> b!3215266 (= e!2004730 EmptyLang!9985)))

(declare-fun call!232742 () Regex!9985)

(declare-fun b!3215267 () Bool)

(declare-fun call!232743 () Regex!9985)

(declare-fun e!2004733 () Regex!9985)

(assert (=> b!3215267 (= e!2004733 (Union!9985 (Concat!15441 call!232743 (regTwo!20482 (regex!5226 (rule!7672 separatorToken!241)))) call!232742))))

(declare-fun b!3215268 () Bool)

(assert (=> b!3215268 (= e!2004733 (Union!9985 (Concat!15441 call!232743 (regTwo!20482 (regex!5226 (rule!7672 separatorToken!241)))) EmptyLang!9985))))

(declare-fun b!3215269 () Bool)

(declare-fun c!540461 () Bool)

(assert (=> b!3215269 (= c!540461 (nullable!3400 (regOne!20482 (regex!5226 (rule!7672 separatorToken!241)))))))

(declare-fun e!2004731 () Regex!9985)

(assert (=> b!3215269 (= e!2004731 e!2004733)))

(declare-fun d!882158 () Bool)

(declare-fun lt!1087777 () Regex!9985)

(assert (=> d!882158 (validRegex!4554 lt!1087777)))

(assert (=> d!882158 (= lt!1087777 e!2004730)))

(declare-fun c!540464 () Bool)

(assert (=> d!882158 (= c!540464 (or ((_ is EmptyExpr!9985) (regex!5226 (rule!7672 separatorToken!241))) ((_ is EmptyLang!9985) (regex!5226 (rule!7672 separatorToken!241)))))))

(assert (=> d!882158 (validRegex!4554 (regex!5226 (rule!7672 separatorToken!241)))))

(assert (=> d!882158 (= (derivativeStep!2953 (regex!5226 (rule!7672 separatorToken!241)) (head!7047 lt!1086557)) lt!1087777)))

(declare-fun c!540465 () Bool)

(declare-fun bm!232738 () Bool)

(declare-fun c!540462 () Bool)

(assert (=> bm!232738 (= call!232744 (derivativeStep!2953 (ite c!540462 (regOne!20483 (regex!5226 (rule!7672 separatorToken!241))) (ite c!540465 (reg!10314 (regex!5226 (rule!7672 separatorToken!241))) (regOne!20482 (regex!5226 (rule!7672 separatorToken!241))))) (head!7047 lt!1086557)))))

(declare-fun b!3215270 () Bool)

(assert (=> b!3215270 (= c!540462 ((_ is Union!9985) (regex!5226 (rule!7672 separatorToken!241))))))

(declare-fun e!2004734 () Regex!9985)

(declare-fun e!2004732 () Regex!9985)

(assert (=> b!3215270 (= e!2004734 e!2004732)))

(declare-fun b!3215271 () Bool)

(assert (=> b!3215271 (= e!2004732 e!2004731)))

(assert (=> b!3215271 (= c!540465 ((_ is Star!9985) (regex!5226 (rule!7672 separatorToken!241))))))

(declare-fun bm!232739 () Bool)

(assert (=> bm!232739 (= call!232743 call!232745)))

(declare-fun b!3215272 () Bool)

(assert (=> b!3215272 (= e!2004732 (Union!9985 call!232744 call!232742))))

(declare-fun b!3215273 () Bool)

(assert (=> b!3215273 (= e!2004734 (ite (= (head!7047 lt!1086557) (c!539812 (regex!5226 (rule!7672 separatorToken!241)))) EmptyExpr!9985 EmptyLang!9985))))

(declare-fun bm!232740 () Bool)

(assert (=> bm!232740 (= call!232742 (derivativeStep!2953 (ite c!540462 (regTwo!20483 (regex!5226 (rule!7672 separatorToken!241))) (regTwo!20482 (regex!5226 (rule!7672 separatorToken!241)))) (head!7047 lt!1086557)))))

(declare-fun b!3215274 () Bool)

(assert (=> b!3215274 (= e!2004731 (Concat!15441 call!232745 (regex!5226 (rule!7672 separatorToken!241))))))

(declare-fun b!3215275 () Bool)

(assert (=> b!3215275 (= e!2004730 e!2004734)))

(declare-fun c!540463 () Bool)

(assert (=> b!3215275 (= c!540463 ((_ is ElementMatch!9985) (regex!5226 (rule!7672 separatorToken!241))))))

(assert (= (and d!882158 c!540464) b!3215266))

(assert (= (and d!882158 (not c!540464)) b!3215275))

(assert (= (and b!3215275 c!540463) b!3215273))

(assert (= (and b!3215275 (not c!540463)) b!3215270))

(assert (= (and b!3215270 c!540462) b!3215272))

(assert (= (and b!3215270 (not c!540462)) b!3215271))

(assert (= (and b!3215271 c!540465) b!3215274))

(assert (= (and b!3215271 (not c!540465)) b!3215269))

(assert (= (and b!3215269 c!540461) b!3215267))

(assert (= (and b!3215269 (not c!540461)) b!3215268))

(assert (= (or b!3215267 b!3215268) bm!232739))

(assert (= (or b!3215274 bm!232739) bm!232737))

(assert (= (or b!3215272 bm!232737) bm!232738))

(assert (= (or b!3215272 b!3215267) bm!232740))

(declare-fun m!3487743 () Bool)

(assert (=> b!3215269 m!3487743))

(declare-fun m!3487745 () Bool)

(assert (=> d!882158 m!3487745))

(assert (=> d!882158 m!3484965))

(assert (=> bm!232738 m!3483347))

(declare-fun m!3487747 () Bool)

(assert (=> bm!232738 m!3487747))

(assert (=> bm!232740 m!3483347))

(declare-fun m!3487749 () Bool)

(assert (=> bm!232740 m!3487749))

(assert (=> b!3213705 d!882158))

(assert (=> b!3213705 d!880890))

(assert (=> b!3213705 d!881618))

(declare-fun d!882160 () Bool)

(declare-fun lt!1087778 () Int)

(assert (=> d!882160 (>= lt!1087778 0)))

(declare-fun e!2004735 () Int)

(assert (=> d!882160 (= lt!1087778 e!2004735)))

(declare-fun c!540467 () Bool)

(assert (=> d!882160 (= c!540467 ((_ is Nil!36187) (_2!20932 (get!11526 lt!1086803))))))

(assert (=> d!882160 (= (size!27274 (_2!20932 (get!11526 lt!1086803))) lt!1087778)))

(declare-fun b!3215276 () Bool)

(assert (=> b!3215276 (= e!2004735 0)))

(declare-fun b!3215277 () Bool)

(assert (=> b!3215277 (= e!2004735 (+ 1 (size!27274 (t!239156 (_2!20932 (get!11526 lt!1086803))))))))

(assert (= (and d!882160 c!540467) b!3215276))

(assert (= (and d!882160 (not c!540467)) b!3215277))

(declare-fun m!3487751 () Bool)

(assert (=> b!3215277 m!3487751))

(assert (=> b!3213335 d!882160))

(assert (=> b!3213335 d!881466))

(assert (=> b!3213335 d!880990))

(declare-fun d!882162 () Bool)

(assert (=> d!882162 (= (isDefined!5558 (getRuleFromTag!931 thiss!18206 rules!2135 (tag!5754 (rule!7672 separatorToken!241)))) (not (isEmpty!20283 (getRuleFromTag!931 thiss!18206 rules!2135 (tag!5754 (rule!7672 separatorToken!241))))))))

(declare-fun bs!542101 () Bool)

(assert (= bs!542101 d!882162))

(assert (=> bs!542101 m!3483289))

(declare-fun m!3487753 () Bool)

(assert (=> bs!542101 m!3487753))

(assert (=> d!881014 d!882162))

(assert (=> d!881014 d!881004))

(declare-fun d!882166 () Bool)

(declare-fun e!2004743 () Bool)

(assert (=> d!882166 e!2004743))

(declare-fun res!1308809 () Bool)

(assert (=> d!882166 (=> (not res!1308809) (not e!2004743))))

(assert (=> d!882166 (= res!1308809 (isDefined!5558 (getRuleFromTag!931 thiss!18206 rules!2135 (tag!5754 (rule!7672 separatorToken!241)))))))

(assert (=> d!882166 true))

(declare-fun _$52!1578 () Unit!50676)

(assert (=> d!882166 (= (choose!18752 thiss!18206 rules!2135 lt!1086557 separatorToken!241) _$52!1578)))

(declare-fun b!3215284 () Bool)

(declare-fun res!1308810 () Bool)

(assert (=> b!3215284 (=> (not res!1308810) (not e!2004743))))

(assert (=> b!3215284 (= res!1308810 (matchR!4619 (regex!5226 (get!11524 (getRuleFromTag!931 thiss!18206 rules!2135 (tag!5754 (rule!7672 separatorToken!241))))) (list!12875 (charsOf!3242 separatorToken!241))))))

(declare-fun b!3215285 () Bool)

(assert (=> b!3215285 (= e!2004743 (= (rule!7672 separatorToken!241) (get!11524 (getRuleFromTag!931 thiss!18206 rules!2135 (tag!5754 (rule!7672 separatorToken!241))))))))

(assert (= (and d!882166 res!1308809) b!3215284))

(assert (= (and b!3215284 res!1308810) b!3215285))

(assert (=> d!882166 m!3483289))

(assert (=> d!882166 m!3483289))

(assert (=> d!882166 m!3484189))

(assert (=> b!3215284 m!3483459))

(assert (=> b!3215284 m!3483289))

(assert (=> b!3215284 m!3484193))

(assert (=> b!3215284 m!3483459))

(assert (=> b!3215284 m!3483469))

(assert (=> b!3215284 m!3483289))

(assert (=> b!3215284 m!3483469))

(assert (=> b!3215284 m!3484195))

(assert (=> b!3215285 m!3483289))

(assert (=> b!3215285 m!3483289))

(assert (=> b!3215285 m!3484193))

(assert (=> d!881014 d!882166))

(assert (=> d!881014 d!881228))

(declare-fun b!3215294 () Bool)

(declare-fun e!2004748 () List!36311)

(declare-fun call!232751 () List!36311)

(assert (=> b!3215294 (= e!2004748 call!232751)))

(declare-fun bm!232744 () Bool)

(declare-fun call!232752 () List!36311)

(declare-fun call!232749 () List!36311)

(declare-fun c!540472 () Bool)

(assert (=> bm!232744 (= call!232751 (++!8688 (ite c!540472 call!232752 call!232749) (ite c!540472 call!232749 call!232752)))))

(declare-fun b!3215295 () Bool)

(declare-fun e!2004749 () List!36311)

(declare-fun call!232750 () List!36311)

(assert (=> b!3215295 (= e!2004749 call!232750)))

(declare-fun c!540474 () Bool)

(declare-fun d!882170 () Bool)

(assert (=> d!882170 (= c!540474 (or ((_ is EmptyExpr!9985) (ite c!539870 (reg!10314 (regex!5226 (rule!7672 separatorToken!241))) (ite c!539867 (regOne!20483 (regex!5226 (rule!7672 separatorToken!241))) (regTwo!20482 (regex!5226 (rule!7672 separatorToken!241)))))) ((_ is EmptyLang!9985) (ite c!539870 (reg!10314 (regex!5226 (rule!7672 separatorToken!241))) (ite c!539867 (regOne!20483 (regex!5226 (rule!7672 separatorToken!241))) (regTwo!20482 (regex!5226 (rule!7672 separatorToken!241))))))))))

(declare-fun e!2004750 () List!36311)

(assert (=> d!882170 (= (usedCharacters!542 (ite c!539870 (reg!10314 (regex!5226 (rule!7672 separatorToken!241))) (ite c!539867 (regOne!20483 (regex!5226 (rule!7672 separatorToken!241))) (regTwo!20482 (regex!5226 (rule!7672 separatorToken!241)))))) e!2004750)))

(declare-fun b!3215296 () Bool)

(declare-fun c!540475 () Bool)

(assert (=> b!3215296 (= c!540475 ((_ is Star!9985) (ite c!539870 (reg!10314 (regex!5226 (rule!7672 separatorToken!241))) (ite c!539867 (regOne!20483 (regex!5226 (rule!7672 separatorToken!241))) (regTwo!20482 (regex!5226 (rule!7672 separatorToken!241)))))))))

(declare-fun e!2004747 () List!36311)

(assert (=> b!3215296 (= e!2004747 e!2004749)))

(declare-fun b!3215297 () Bool)

(assert (=> b!3215297 (= e!2004749 e!2004748)))

(assert (=> b!3215297 (= c!540472 ((_ is Union!9985) (ite c!539870 (reg!10314 (regex!5226 (rule!7672 separatorToken!241))) (ite c!539867 (regOne!20483 (regex!5226 (rule!7672 separatorToken!241))) (regTwo!20482 (regex!5226 (rule!7672 separatorToken!241)))))))))

(declare-fun bm!232745 () Bool)

(assert (=> bm!232745 (= call!232752 call!232750)))

(declare-fun b!3215298 () Bool)

(assert (=> b!3215298 (= e!2004748 call!232751)))

(declare-fun b!3215299 () Bool)

(assert (=> b!3215299 (= e!2004747 (Cons!36187 (c!539812 (ite c!539870 (reg!10314 (regex!5226 (rule!7672 separatorToken!241))) (ite c!539867 (regOne!20483 (regex!5226 (rule!7672 separatorToken!241))) (regTwo!20482 (regex!5226 (rule!7672 separatorToken!241)))))) Nil!36187))))

(declare-fun bm!232746 () Bool)

(assert (=> bm!232746 (= call!232749 (usedCharacters!542 (ite c!540472 (regTwo!20483 (ite c!539870 (reg!10314 (regex!5226 (rule!7672 separatorToken!241))) (ite c!539867 (regOne!20483 (regex!5226 (rule!7672 separatorToken!241))) (regTwo!20482 (regex!5226 (rule!7672 separatorToken!241)))))) (regOne!20482 (ite c!539870 (reg!10314 (regex!5226 (rule!7672 separatorToken!241))) (ite c!539867 (regOne!20483 (regex!5226 (rule!7672 separatorToken!241))) (regTwo!20482 (regex!5226 (rule!7672 separatorToken!241)))))))))))

(declare-fun b!3215300 () Bool)

(assert (=> b!3215300 (= e!2004750 Nil!36187)))

(declare-fun bm!232747 () Bool)

(assert (=> bm!232747 (= call!232750 (usedCharacters!542 (ite c!540475 (reg!10314 (ite c!539870 (reg!10314 (regex!5226 (rule!7672 separatorToken!241))) (ite c!539867 (regOne!20483 (regex!5226 (rule!7672 separatorToken!241))) (regTwo!20482 (regex!5226 (rule!7672 separatorToken!241)))))) (ite c!540472 (regOne!20483 (ite c!539870 (reg!10314 (regex!5226 (rule!7672 separatorToken!241))) (ite c!539867 (regOne!20483 (regex!5226 (rule!7672 separatorToken!241))) (regTwo!20482 (regex!5226 (rule!7672 separatorToken!241)))))) (regTwo!20482 (ite c!539870 (reg!10314 (regex!5226 (rule!7672 separatorToken!241))) (ite c!539867 (regOne!20483 (regex!5226 (rule!7672 separatorToken!241))) (regTwo!20482 (regex!5226 (rule!7672 separatorToken!241))))))))))))

(declare-fun b!3215301 () Bool)

(assert (=> b!3215301 (= e!2004750 e!2004747)))

(declare-fun c!540473 () Bool)

(assert (=> b!3215301 (= c!540473 ((_ is ElementMatch!9985) (ite c!539870 (reg!10314 (regex!5226 (rule!7672 separatorToken!241))) (ite c!539867 (regOne!20483 (regex!5226 (rule!7672 separatorToken!241))) (regTwo!20482 (regex!5226 (rule!7672 separatorToken!241)))))))))

(assert (= (and d!882170 c!540474) b!3215300))

(assert (= (and d!882170 (not c!540474)) b!3215301))

(assert (= (and b!3215301 c!540473) b!3215299))

(assert (= (and b!3215301 (not c!540473)) b!3215296))

(assert (= (and b!3215296 c!540475) b!3215295))

(assert (= (and b!3215296 (not c!540475)) b!3215297))

(assert (= (and b!3215297 c!540472) b!3215294))

(assert (= (and b!3215297 (not c!540472)) b!3215298))

(assert (= (or b!3215294 b!3215298) bm!232746))

(assert (= (or b!3215294 b!3215298) bm!232745))

(assert (= (or b!3215294 b!3215298) bm!232744))

(assert (= (or b!3215295 bm!232745) bm!232747))

(declare-fun m!3487767 () Bool)

(assert (=> bm!232744 m!3487767))

(declare-fun m!3487769 () Bool)

(assert (=> bm!232746 m!3487769))

(declare-fun m!3487771 () Bool)

(assert (=> bm!232747 m!3487771))

(assert (=> bm!232510 d!882170))

(declare-fun d!882176 () Bool)

(declare-fun res!1308812 () Bool)

(declare-fun e!2004755 () Bool)

(assert (=> d!882176 (=> (not res!1308812) (not e!2004755))))

(assert (=> d!882176 (= res!1308812 (rulesValid!1917 thiss!18206 (t!239157 rules!2135)))))

(assert (=> d!882176 (= (rulesInvariant!4212 thiss!18206 (t!239157 rules!2135)) e!2004755)))

(declare-fun b!3215310 () Bool)

(assert (=> b!3215310 (= e!2004755 (noDuplicateTag!1913 thiss!18206 (t!239157 rules!2135) Nil!36191))))

(assert (= (and d!882176 res!1308812) b!3215310))

(declare-fun m!3487773 () Bool)

(assert (=> d!882176 m!3487773))

(declare-fun m!3487775 () Bool)

(assert (=> b!3215310 m!3487775))

(assert (=> b!3213309 d!882176))

(declare-fun d!882178 () Bool)

(assert (=> d!882178 (rulesInvariant!4212 thiss!18206 (t!239157 rules!2135))))

(declare-fun lt!1087783 () Unit!50676)

(declare-fun choose!18776 (LexerInterface!4815 Rule!10252 List!36312) Unit!50676)

(assert (=> d!882178 (= lt!1087783 (choose!18776 thiss!18206 (h!41608 rules!2135) (t!239157 rules!2135)))))

(assert (=> d!882178 (rulesInvariant!4212 thiss!18206 (Cons!36188 (h!41608 rules!2135) (t!239157 rules!2135)))))

(assert (=> d!882178 (= (lemmaInvariantOnRulesThenOnTail!351 thiss!18206 (h!41608 rules!2135) (t!239157 rules!2135)) lt!1087783)))

(declare-fun bs!542105 () Bool)

(assert (= bs!542105 d!882178))

(assert (=> bs!542105 m!3483855))

(declare-fun m!3487793 () Bool)

(assert (=> bs!542105 m!3487793))

(declare-fun m!3487795 () Bool)

(assert (=> bs!542105 m!3487795))

(assert (=> b!3213309 d!882178))

(declare-fun b!3215328 () Bool)

(declare-fun e!2004765 () Option!7153)

(declare-fun e!2004767 () Option!7153)

(assert (=> b!3215328 (= e!2004765 e!2004767)))

(declare-fun c!540484 () Bool)

(assert (=> b!3215328 (= c!540484 (and ((_ is Cons!36188) (t!239157 rules!2135)) (not (= (tag!5754 (h!41608 (t!239157 rules!2135))) (tag!5754 (rule!7672 separatorToken!241))))))))

(declare-fun b!3215329 () Bool)

(declare-fun e!2004766 () Bool)

(declare-fun lt!1087785 () Option!7153)

(assert (=> b!3215329 (= e!2004766 (= (tag!5754 (get!11524 lt!1087785)) (tag!5754 (rule!7672 separatorToken!241))))))

(declare-fun b!3215330 () Bool)

(declare-fun lt!1087786 () Unit!50676)

(declare-fun lt!1087787 () Unit!50676)

(assert (=> b!3215330 (= lt!1087786 lt!1087787)))

(assert (=> b!3215330 (rulesInvariant!4212 thiss!18206 (t!239157 (t!239157 rules!2135)))))

(assert (=> b!3215330 (= lt!1087787 (lemmaInvariantOnRulesThenOnTail!351 thiss!18206 (h!41608 (t!239157 rules!2135)) (t!239157 (t!239157 rules!2135))))))

(assert (=> b!3215330 (= e!2004767 (getRuleFromTag!931 thiss!18206 (t!239157 (t!239157 rules!2135)) (tag!5754 (rule!7672 separatorToken!241))))))

(declare-fun b!3215331 () Bool)

(assert (=> b!3215331 (= e!2004767 None!7152)))

(declare-fun d!882190 () Bool)

(declare-fun e!2004768 () Bool)

(assert (=> d!882190 e!2004768))

(declare-fun res!1308823 () Bool)

(assert (=> d!882190 (=> res!1308823 e!2004768)))

(assert (=> d!882190 (= res!1308823 (isEmpty!20283 lt!1087785))))

(assert (=> d!882190 (= lt!1087785 e!2004765)))

(declare-fun c!540485 () Bool)

(assert (=> d!882190 (= c!540485 (and ((_ is Cons!36188) (t!239157 rules!2135)) (= (tag!5754 (h!41608 (t!239157 rules!2135))) (tag!5754 (rule!7672 separatorToken!241)))))))

(assert (=> d!882190 (rulesInvariant!4212 thiss!18206 (t!239157 rules!2135))))

(assert (=> d!882190 (= (getRuleFromTag!931 thiss!18206 (t!239157 rules!2135) (tag!5754 (rule!7672 separatorToken!241))) lt!1087785)))

(declare-fun b!3215332 () Bool)

(assert (=> b!3215332 (= e!2004768 e!2004766)))

(declare-fun res!1308822 () Bool)

(assert (=> b!3215332 (=> (not res!1308822) (not e!2004766))))

(assert (=> b!3215332 (= res!1308822 (contains!6470 (t!239157 rules!2135) (get!11524 lt!1087785)))))

(declare-fun b!3215333 () Bool)

(assert (=> b!3215333 (= e!2004765 (Some!7152 (h!41608 (t!239157 rules!2135))))))

(assert (= (and d!882190 c!540485) b!3215333))

(assert (= (and d!882190 (not c!540485)) b!3215328))

(assert (= (and b!3215328 c!540484) b!3215330))

(assert (= (and b!3215328 (not c!540484)) b!3215331))

(assert (= (and d!882190 (not res!1308823)) b!3215332))

(assert (= (and b!3215332 res!1308822) b!3215329))

(declare-fun m!3487797 () Bool)

(assert (=> b!3215329 m!3487797))

(declare-fun m!3487799 () Bool)

(assert (=> b!3215330 m!3487799))

(declare-fun m!3487801 () Bool)

(assert (=> b!3215330 m!3487801))

(declare-fun m!3487803 () Bool)

(assert (=> b!3215330 m!3487803))

(declare-fun m!3487805 () Bool)

(assert (=> d!882190 m!3487805))

(assert (=> d!882190 m!3483855))

(assert (=> b!3215332 m!3487797))

(assert (=> b!3215332 m!3487797))

(declare-fun m!3487807 () Bool)

(assert (=> b!3215332 m!3487807))

(assert (=> b!3213309 d!882190))

(declare-fun d!882192 () Bool)

(declare-fun c!540486 () Bool)

(assert (=> d!882192 (= c!540486 ((_ is Nil!36187) (usedCharacters!542 (regex!5226 (rule!7672 separatorToken!241)))))))

(declare-fun e!2004769 () (InoxSet C!20156))

(assert (=> d!882192 (= (content!4894 (usedCharacters!542 (regex!5226 (rule!7672 separatorToken!241)))) e!2004769)))

(declare-fun b!3215334 () Bool)

(assert (=> b!3215334 (= e!2004769 ((as const (Array C!20156 Bool)) false))))

(declare-fun b!3215335 () Bool)

(assert (=> b!3215335 (= e!2004769 ((_ map or) (store ((as const (Array C!20156 Bool)) false) (h!41607 (usedCharacters!542 (regex!5226 (rule!7672 separatorToken!241)))) true) (content!4894 (t!239156 (usedCharacters!542 (regex!5226 (rule!7672 separatorToken!241)))))))))

(assert (= (and d!882192 c!540486) b!3215334))

(assert (= (and d!882192 (not c!540486)) b!3215335))

(declare-fun m!3487815 () Bool)

(assert (=> b!3215335 m!3487815))

(assert (=> b!3215335 m!3487407))

(assert (=> d!880972 d!882192))

(declare-fun b!3215339 () Bool)

(declare-fun e!2004771 () List!36311)

(assert (=> b!3215339 (= e!2004771 (++!8688 (list!12879 (left!28142 (c!539813 lt!1086563))) (list!12879 (right!28472 (c!539813 lt!1086563)))))))

(declare-fun b!3215336 () Bool)

(declare-fun e!2004770 () List!36311)

(assert (=> b!3215336 (= e!2004770 Nil!36187)))

(declare-fun b!3215338 () Bool)

(assert (=> b!3215338 (= e!2004771 (list!12883 (xs!13945 (c!539813 lt!1086563))))))

(declare-fun b!3215337 () Bool)

(assert (=> b!3215337 (= e!2004770 e!2004771)))

(declare-fun c!540488 () Bool)

(assert (=> b!3215337 (= c!540488 ((_ is Leaf!17051) (c!539813 lt!1086563)))))

(declare-fun d!882194 () Bool)

(declare-fun c!540487 () Bool)

(assert (=> d!882194 (= c!540487 ((_ is Empty!10827) (c!539813 lt!1086563)))))

(assert (=> d!882194 (= (list!12879 (c!539813 lt!1086563)) e!2004770)))

(assert (= (and d!882194 c!540487) b!3215336))

(assert (= (and d!882194 (not c!540487)) b!3215337))

(assert (= (and b!3215337 c!540488) b!3215338))

(assert (= (and b!3215337 (not c!540488)) b!3215339))

(declare-fun m!3487821 () Bool)

(assert (=> b!3215339 m!3487821))

(declare-fun m!3487823 () Bool)

(assert (=> b!3215339 m!3487823))

(assert (=> b!3215339 m!3487821))

(assert (=> b!3215339 m!3487823))

(declare-fun m!3487825 () Bool)

(assert (=> b!3215339 m!3487825))

(declare-fun m!3487827 () Bool)

(assert (=> b!3215338 m!3487827))

(assert (=> d!881242 d!882194))

(declare-fun d!882198 () Bool)

(assert (=> d!882198 (= (isEmpty!20288 lt!1086523) ((_ is Nil!36187) lt!1086523))))

(assert (=> d!881060 d!882198))

(declare-fun d!882200 () Bool)

(declare-fun res!1308826 () Bool)

(declare-fun e!2004775 () Bool)

(assert (=> d!882200 (=> res!1308826 e!2004775)))

(assert (=> d!882200 (= res!1308826 ((_ is ElementMatch!9985) (regex!5226 lt!1086543)))))

(assert (=> d!882200 (= (validRegex!4554 (regex!5226 lt!1086543)) e!2004775)))

(declare-fun b!3215340 () Bool)

(declare-fun e!2004772 () Bool)

(declare-fun e!2004774 () Bool)

(assert (=> b!3215340 (= e!2004772 e!2004774)))

(declare-fun res!1308828 () Bool)

(assert (=> b!3215340 (= res!1308828 (not (nullable!3400 (reg!10314 (regex!5226 lt!1086543)))))))

(assert (=> b!3215340 (=> (not res!1308828) (not e!2004774))))

(declare-fun call!232760 () Bool)

(declare-fun c!540490 () Bool)

(declare-fun c!540489 () Bool)

(declare-fun bm!232753 () Bool)

(assert (=> bm!232753 (= call!232760 (validRegex!4554 (ite c!540490 (reg!10314 (regex!5226 lt!1086543)) (ite c!540489 (regOne!20483 (regex!5226 lt!1086543)) (regOne!20482 (regex!5226 lt!1086543))))))))

(declare-fun b!3215341 () Bool)

(declare-fun e!2004776 () Bool)

(assert (=> b!3215341 (= e!2004772 e!2004776)))

(assert (=> b!3215341 (= c!540489 ((_ is Union!9985) (regex!5226 lt!1086543)))))

(declare-fun b!3215342 () Bool)

(declare-fun e!2004778 () Bool)

(declare-fun call!232758 () Bool)

(assert (=> b!3215342 (= e!2004778 call!232758)))

(declare-fun b!3215343 () Bool)

(assert (=> b!3215343 (= e!2004774 call!232760)))

(declare-fun b!3215344 () Bool)

(declare-fun e!2004777 () Bool)

(assert (=> b!3215344 (= e!2004777 e!2004778)))

(declare-fun res!1308825 () Bool)

(assert (=> b!3215344 (=> (not res!1308825) (not e!2004778))))

(declare-fun call!232759 () Bool)

(assert (=> b!3215344 (= res!1308825 call!232759)))

(declare-fun b!3215345 () Bool)

(assert (=> b!3215345 (= e!2004775 e!2004772)))

(assert (=> b!3215345 (= c!540490 ((_ is Star!9985) (regex!5226 lt!1086543)))))

(declare-fun b!3215346 () Bool)

(declare-fun e!2004773 () Bool)

(assert (=> b!3215346 (= e!2004773 call!232758)))

(declare-fun b!3215347 () Bool)

(declare-fun res!1308827 () Bool)

(assert (=> b!3215347 (=> res!1308827 e!2004777)))

(assert (=> b!3215347 (= res!1308827 (not ((_ is Concat!15441) (regex!5226 lt!1086543))))))

(assert (=> b!3215347 (= e!2004776 e!2004777)))

(declare-fun b!3215348 () Bool)

(declare-fun res!1308824 () Bool)

(assert (=> b!3215348 (=> (not res!1308824) (not e!2004773))))

(assert (=> b!3215348 (= res!1308824 call!232759)))

(assert (=> b!3215348 (= e!2004776 e!2004773)))

(declare-fun bm!232754 () Bool)

(assert (=> bm!232754 (= call!232758 (validRegex!4554 (ite c!540489 (regTwo!20483 (regex!5226 lt!1086543)) (regTwo!20482 (regex!5226 lt!1086543)))))))

(declare-fun bm!232755 () Bool)

(assert (=> bm!232755 (= call!232759 call!232760)))

(assert (= (and d!882200 (not res!1308826)) b!3215345))

(assert (= (and b!3215345 c!540490) b!3215340))

(assert (= (and b!3215345 (not c!540490)) b!3215341))

(assert (= (and b!3215340 res!1308828) b!3215343))

(assert (= (and b!3215341 c!540489) b!3215348))

(assert (= (and b!3215341 (not c!540489)) b!3215347))

(assert (= (and b!3215348 res!1308824) b!3215346))

(assert (= (and b!3215347 (not res!1308827)) b!3215344))

(assert (= (and b!3215344 res!1308825) b!3215342))

(assert (= (or b!3215346 b!3215342) bm!232754))

(assert (= (or b!3215348 b!3215344) bm!232755))

(assert (= (or b!3215343 bm!232755) bm!232753))

(declare-fun m!3487837 () Bool)

(assert (=> b!3215340 m!3487837))

(declare-fun m!3487839 () Bool)

(assert (=> bm!232753 m!3487839))

(declare-fun m!3487841 () Bool)

(assert (=> bm!232754 m!3487841))

(assert (=> d!881060 d!882200))

(declare-fun d!882208 () Bool)

(assert (=> d!882208 true))

(declare-fun lt!1087791 () Bool)

(assert (=> d!882208 (= lt!1087791 (rulesValidInductive!1779 thiss!18206 rules!2135))))

(declare-fun lambda!117597 () Int)

(declare-fun forall!7401 (List!36312 Int) Bool)

(assert (=> d!882208 (= lt!1087791 (forall!7401 rules!2135 lambda!117597))))

(assert (=> d!882208 (= (rulesValid!1917 thiss!18206 rules!2135) lt!1087791)))

(declare-fun bs!542109 () Bool)

(assert (= bs!542109 d!882208))

(assert (=> bs!542109 m!3484103))

(declare-fun m!3487847 () Bool)

(assert (=> bs!542109 m!3487847))

(assert (=> d!881228 d!882208))

(declare-fun b!3215359 () Bool)

(declare-fun e!2004785 () List!36311)

(declare-fun call!232763 () List!36311)

(assert (=> b!3215359 (= e!2004785 call!232763)))

(declare-fun bm!232756 () Bool)

(declare-fun call!232764 () List!36311)

(declare-fun call!232761 () List!36311)

(declare-fun c!540494 () Bool)

(assert (=> bm!232756 (= call!232763 (++!8688 (ite c!540494 call!232764 call!232761) (ite c!540494 call!232761 call!232764)))))

(declare-fun b!3215362 () Bool)

(declare-fun e!2004786 () List!36311)

(declare-fun call!232762 () List!36311)

(assert (=> b!3215362 (= e!2004786 call!232762)))

(declare-fun d!882214 () Bool)

(declare-fun c!540496 () Bool)

(assert (=> d!882214 (= c!540496 (or ((_ is EmptyExpr!9985) (ite c!539877 (regTwo!20483 (regex!5226 (rule!7672 (h!41609 tokens!494)))) (regOne!20482 (regex!5226 (rule!7672 (h!41609 tokens!494)))))) ((_ is EmptyLang!9985) (ite c!539877 (regTwo!20483 (regex!5226 (rule!7672 (h!41609 tokens!494)))) (regOne!20482 (regex!5226 (rule!7672 (h!41609 tokens!494))))))))))

(declare-fun e!2004787 () List!36311)

(assert (=> d!882214 (= (usedCharacters!542 (ite c!539877 (regTwo!20483 (regex!5226 (rule!7672 (h!41609 tokens!494)))) (regOne!20482 (regex!5226 (rule!7672 (h!41609 tokens!494)))))) e!2004787)))

(declare-fun b!3215363 () Bool)

(declare-fun c!540497 () Bool)

(assert (=> b!3215363 (= c!540497 ((_ is Star!9985) (ite c!539877 (regTwo!20483 (regex!5226 (rule!7672 (h!41609 tokens!494)))) (regOne!20482 (regex!5226 (rule!7672 (h!41609 tokens!494)))))))))

(declare-fun e!2004784 () List!36311)

(assert (=> b!3215363 (= e!2004784 e!2004786)))

(declare-fun b!3215364 () Bool)

(assert (=> b!3215364 (= e!2004786 e!2004785)))

(assert (=> b!3215364 (= c!540494 ((_ is Union!9985) (ite c!539877 (regTwo!20483 (regex!5226 (rule!7672 (h!41609 tokens!494)))) (regOne!20482 (regex!5226 (rule!7672 (h!41609 tokens!494)))))))))

(declare-fun bm!232757 () Bool)

(assert (=> bm!232757 (= call!232764 call!232762)))

(declare-fun b!3215365 () Bool)

(assert (=> b!3215365 (= e!2004785 call!232763)))

(declare-fun b!3215366 () Bool)

(assert (=> b!3215366 (= e!2004784 (Cons!36187 (c!539812 (ite c!539877 (regTwo!20483 (regex!5226 (rule!7672 (h!41609 tokens!494)))) (regOne!20482 (regex!5226 (rule!7672 (h!41609 tokens!494)))))) Nil!36187))))

(declare-fun bm!232758 () Bool)

(assert (=> bm!232758 (= call!232761 (usedCharacters!542 (ite c!540494 (regTwo!20483 (ite c!539877 (regTwo!20483 (regex!5226 (rule!7672 (h!41609 tokens!494)))) (regOne!20482 (regex!5226 (rule!7672 (h!41609 tokens!494)))))) (regOne!20482 (ite c!539877 (regTwo!20483 (regex!5226 (rule!7672 (h!41609 tokens!494)))) (regOne!20482 (regex!5226 (rule!7672 (h!41609 tokens!494)))))))))))

(declare-fun b!3215367 () Bool)

(assert (=> b!3215367 (= e!2004787 Nil!36187)))

(declare-fun bm!232759 () Bool)

(assert (=> bm!232759 (= call!232762 (usedCharacters!542 (ite c!540497 (reg!10314 (ite c!539877 (regTwo!20483 (regex!5226 (rule!7672 (h!41609 tokens!494)))) (regOne!20482 (regex!5226 (rule!7672 (h!41609 tokens!494)))))) (ite c!540494 (regOne!20483 (ite c!539877 (regTwo!20483 (regex!5226 (rule!7672 (h!41609 tokens!494)))) (regOne!20482 (regex!5226 (rule!7672 (h!41609 tokens!494)))))) (regTwo!20482 (ite c!539877 (regTwo!20483 (regex!5226 (rule!7672 (h!41609 tokens!494)))) (regOne!20482 (regex!5226 (rule!7672 (h!41609 tokens!494))))))))))))

(declare-fun b!3215368 () Bool)

(assert (=> b!3215368 (= e!2004787 e!2004784)))

(declare-fun c!540495 () Bool)

(assert (=> b!3215368 (= c!540495 ((_ is ElementMatch!9985) (ite c!539877 (regTwo!20483 (regex!5226 (rule!7672 (h!41609 tokens!494)))) (regOne!20482 (regex!5226 (rule!7672 (h!41609 tokens!494)))))))))

(assert (= (and d!882214 c!540496) b!3215367))

(assert (= (and d!882214 (not c!540496)) b!3215368))

(assert (= (and b!3215368 c!540495) b!3215366))

(assert (= (and b!3215368 (not c!540495)) b!3215363))

(assert (= (and b!3215363 c!540497) b!3215362))

(assert (= (and b!3215363 (not c!540497)) b!3215364))

(assert (= (and b!3215364 c!540494) b!3215359))

(assert (= (and b!3215364 (not c!540494)) b!3215365))

(assert (= (or b!3215359 b!3215365) bm!232758))

(assert (= (or b!3215359 b!3215365) bm!232757))

(assert (= (or b!3215359 b!3215365) bm!232756))

(assert (= (or b!3215362 bm!232757) bm!232759))

(declare-fun m!3487849 () Bool)

(assert (=> bm!232756 m!3487849))

(declare-fun m!3487851 () Bool)

(assert (=> bm!232758 m!3487851))

(declare-fun m!3487853 () Bool)

(assert (=> bm!232759 m!3487853))

(assert (=> bm!232513 d!882214))

(declare-fun d!882216 () Bool)

(assert (=> d!882216 (= (isEmpty!20287 lt!1086803) (not ((_ is Some!7153) lt!1086803)))))

(assert (=> d!881016 d!882216))

(declare-fun d!882218 () Bool)

(assert (=> d!882218 (= (isEmpty!20288 (_1!20936 lt!1086801)) ((_ is Nil!36187) (_1!20936 lt!1086801)))))

(assert (=> d!881016 d!882218))

(declare-fun d!882220 () Bool)

(declare-fun lt!1087799 () tuple2!35604)

(assert (=> d!882220 (= (++!8688 (_1!20936 lt!1087799) (_2!20936 lt!1087799)) lt!1086561)))

(assert (=> d!882220 (= lt!1087799 (findLongestMatchInner!833 (regex!5226 (rule!7672 (h!41609 (t!239158 tokens!494)))) Nil!36187 0 lt!1086561 lt!1086561 (sizeTr!163 lt!1086561 0)))))

(declare-fun lt!1087797 () Unit!50676)

(declare-fun lt!1087795 () Unit!50676)

(assert (=> d!882220 (= lt!1087797 lt!1087795)))

(declare-fun lt!1087798 () List!36311)

(declare-fun lt!1087793 () Int)

(assert (=> d!882220 (= (sizeTr!163 lt!1087798 lt!1087793) (+ (size!27274 lt!1087798) lt!1087793))))

(assert (=> d!882220 (= lt!1087795 (lemmaSizeTrEqualsSize!162 lt!1087798 lt!1087793))))

(assert (=> d!882220 (= lt!1087793 0)))

(assert (=> d!882220 (= lt!1087798 Nil!36187)))

(declare-fun lt!1087796 () Unit!50676)

(declare-fun lt!1087794 () Unit!50676)

(assert (=> d!882220 (= lt!1087796 lt!1087794)))

(declare-fun lt!1087792 () Int)

(assert (=> d!882220 (= (sizeTr!163 lt!1086561 lt!1087792) (+ (size!27274 lt!1086561) lt!1087792))))

(assert (=> d!882220 (= lt!1087794 (lemmaSizeTrEqualsSize!162 lt!1086561 lt!1087792))))

(assert (=> d!882220 (= lt!1087792 0)))

(assert (=> d!882220 (validRegex!4554 (regex!5226 (rule!7672 (h!41609 (t!239158 tokens!494)))))))

(assert (=> d!882220 (= (findLongestMatch!748 (regex!5226 (rule!7672 (h!41609 (t!239158 tokens!494)))) lt!1086561) lt!1087799)))

(declare-fun bs!542110 () Bool)

(assert (= bs!542110 d!882220))

(assert (=> bs!542110 m!3487075))

(declare-fun m!3487855 () Bool)

(assert (=> bs!542110 m!3487855))

(declare-fun m!3487857 () Bool)

(assert (=> bs!542110 m!3487857))

(declare-fun m!3487859 () Bool)

(assert (=> bs!542110 m!3487859))

(assert (=> bs!542110 m!3487855))

(declare-fun m!3487861 () Bool)

(assert (=> bs!542110 m!3487861))

(assert (=> bs!542110 m!3483299))

(declare-fun m!3487863 () Bool)

(assert (=> bs!542110 m!3487863))

(declare-fun m!3487865 () Bool)

(assert (=> bs!542110 m!3487865))

(declare-fun m!3487867 () Bool)

(assert (=> bs!542110 m!3487867))

(declare-fun m!3487869 () Bool)

(assert (=> bs!542110 m!3487869))

(assert (=> d!881016 d!882220))

(declare-fun d!882222 () Bool)

(declare-fun res!1308835 () Bool)

(declare-fun e!2004793 () Bool)

(assert (=> d!882222 (=> (not res!1308835) (not e!2004793))))

(assert (=> d!882222 (= res!1308835 (validRegex!4554 (regex!5226 (rule!7672 (h!41609 (t!239158 tokens!494))))))))

(assert (=> d!882222 (= (ruleValid!1650 thiss!18206 (rule!7672 (h!41609 (t!239158 tokens!494)))) e!2004793)))

(declare-fun b!3215373 () Bool)

(declare-fun res!1308836 () Bool)

(assert (=> b!3215373 (=> (not res!1308836) (not e!2004793))))

(assert (=> b!3215373 (= res!1308836 (not (nullable!3400 (regex!5226 (rule!7672 (h!41609 (t!239158 tokens!494)))))))))

(declare-fun b!3215374 () Bool)

(assert (=> b!3215374 (= e!2004793 (not (= (tag!5754 (rule!7672 (h!41609 (t!239158 tokens!494)))) (String!40615 ""))))))

(assert (= (and d!882222 res!1308835) b!3215373))

(assert (= (and b!3215373 res!1308836) b!3215374))

(assert (=> d!882222 m!3487075))

(assert (=> b!3215373 m!3487061))

(assert (=> d!881016 d!882222))

(declare-fun d!882224 () Bool)

(assert (=> d!882224 (= (nullable!3400 (regex!5226 lt!1086524)) (nullableFct!969 (regex!5226 lt!1086524)))))

(declare-fun bs!542111 () Bool)

(assert (= bs!542111 d!882224))

(declare-fun m!3487873 () Bool)

(assert (=> bs!542111 m!3487873))

(assert (=> b!3213696 d!882224))

(declare-fun b!3215377 () Bool)

(declare-fun res!1308838 () Bool)

(declare-fun e!2004794 () Bool)

(assert (=> b!3215377 (=> (not res!1308838) (not e!2004794))))

(declare-fun lt!1087800 () List!36311)

(assert (=> b!3215377 (= res!1308838 (= (size!27274 lt!1087800) (+ (size!27274 (ite c!539924 call!232541 call!232538)) (size!27274 (ite c!539924 call!232538 call!232541)))))))

(declare-fun e!2004795 () List!36311)

(declare-fun b!3215376 () Bool)

(assert (=> b!3215376 (= e!2004795 (Cons!36187 (h!41607 (ite c!539924 call!232541 call!232538)) (++!8688 (t!239156 (ite c!539924 call!232541 call!232538)) (ite c!539924 call!232538 call!232541))))))

(declare-fun b!3215375 () Bool)

(assert (=> b!3215375 (= e!2004795 (ite c!539924 call!232538 call!232541))))

(declare-fun d!882228 () Bool)

(assert (=> d!882228 e!2004794))

(declare-fun res!1308837 () Bool)

(assert (=> d!882228 (=> (not res!1308837) (not e!2004794))))

(assert (=> d!882228 (= res!1308837 (= (content!4894 lt!1087800) ((_ map or) (content!4894 (ite c!539924 call!232541 call!232538)) (content!4894 (ite c!539924 call!232538 call!232541)))))))

(assert (=> d!882228 (= lt!1087800 e!2004795)))

(declare-fun c!540499 () Bool)

(assert (=> d!882228 (= c!540499 ((_ is Nil!36187) (ite c!539924 call!232541 call!232538)))))

(assert (=> d!882228 (= (++!8688 (ite c!539924 call!232541 call!232538) (ite c!539924 call!232538 call!232541)) lt!1087800)))

(declare-fun b!3215378 () Bool)

(assert (=> b!3215378 (= e!2004794 (or (not (= (ite c!539924 call!232538 call!232541) Nil!36187)) (= lt!1087800 (ite c!539924 call!232541 call!232538))))))

(assert (= (and d!882228 c!540499) b!3215375))

(assert (= (and d!882228 (not c!540499)) b!3215376))

(assert (= (and d!882228 res!1308837) b!3215377))

(assert (= (and b!3215377 res!1308838) b!3215378))

(declare-fun m!3487879 () Bool)

(assert (=> b!3215377 m!3487879))

(declare-fun m!3487883 () Bool)

(assert (=> b!3215377 m!3487883))

(declare-fun m!3487887 () Bool)

(assert (=> b!3215377 m!3487887))

(declare-fun m!3487889 () Bool)

(assert (=> b!3215376 m!3487889))

(declare-fun m!3487891 () Bool)

(assert (=> d!882228 m!3487891))

(declare-fun m!3487893 () Bool)

(assert (=> d!882228 m!3487893))

(declare-fun m!3487895 () Bool)

(assert (=> d!882228 m!3487895))

(assert (=> bm!232533 d!882228))

(declare-fun d!882232 () Bool)

(declare-fun lt!1087801 () Bool)

(assert (=> d!882232 (= lt!1087801 (select (content!4897 rules!2135) (rule!7672 (_1!20932 (get!11526 lt!1086777)))))))

(declare-fun e!2004799 () Bool)

(assert (=> d!882232 (= lt!1087801 e!2004799)))

(declare-fun res!1308840 () Bool)

(assert (=> d!882232 (=> (not res!1308840) (not e!2004799))))

(assert (=> d!882232 (= res!1308840 ((_ is Cons!36188) rules!2135))))

(assert (=> d!882232 (= (contains!6470 rules!2135 (rule!7672 (_1!20932 (get!11526 lt!1086777)))) lt!1087801)))

(declare-fun b!3215384 () Bool)

(declare-fun e!2004800 () Bool)

(assert (=> b!3215384 (= e!2004799 e!2004800)))

(declare-fun res!1308841 () Bool)

(assert (=> b!3215384 (=> res!1308841 e!2004800)))

(assert (=> b!3215384 (= res!1308841 (= (h!41608 rules!2135) (rule!7672 (_1!20932 (get!11526 lt!1086777)))))))

(declare-fun b!3215385 () Bool)

(assert (=> b!3215385 (= e!2004800 (contains!6470 (t!239157 rules!2135) (rule!7672 (_1!20932 (get!11526 lt!1086777)))))))

(assert (= (and d!882232 res!1308840) b!3215384))

(assert (= (and b!3215384 (not res!1308841)) b!3215385))

(assert (=> d!882232 m!3486113))

(declare-fun m!3487899 () Bool)

(assert (=> d!882232 m!3487899))

(declare-fun m!3487901 () Bool)

(assert (=> b!3215385 m!3487901))

(assert (=> b!3213264 d!882232))

(assert (=> b!3213264 d!882040))

(declare-fun d!882236 () Bool)

(declare-fun lt!1087802 () Int)

(assert (=> d!882236 (= lt!1087802 (size!27277 (list!12877 (_1!20931 lt!1086637))))))

(assert (=> d!882236 (= lt!1087802 (size!27278 (c!539814 (_1!20931 lt!1086637))))))

(assert (=> d!882236 (= (size!27275 (_1!20931 lt!1086637)) lt!1087802)))

(declare-fun bs!542113 () Bool)

(assert (= bs!542113 d!882236))

(assert (=> bs!542113 m!3483733))

(assert (=> bs!542113 m!3483733))

(declare-fun m!3487903 () Bool)

(assert (=> bs!542113 m!3487903))

(declare-fun m!3487905 () Bool)

(assert (=> bs!542113 m!3487905))

(assert (=> d!880908 d!882236))

(declare-fun b!3215386 () Bool)

(declare-fun e!2004804 () tuple2!35594)

(declare-fun lt!1087835 () BalanceConc!21268)

(assert (=> b!3215386 (= e!2004804 (tuple2!35595 (BalanceConc!21271 Empty!10828) lt!1087835))))

(declare-fun b!3215387 () Bool)

(declare-fun e!2004805 () tuple2!35594)

(assert (=> b!3215387 (= e!2004805 (tuple2!35595 (BalanceConc!21271 Empty!10828) lt!1086564))))

(declare-fun lt!1087815 () Option!7156)

(declare-fun b!3215388 () Bool)

(declare-fun lt!1087826 () tuple2!35594)

(assert (=> b!3215388 (= lt!1087826 (lexRec!689 thiss!18206 rules!2135 (_2!20938 (v!35725 lt!1087815))))))

(assert (=> b!3215388 (= e!2004804 (tuple2!35595 (prepend!1177 (_1!20931 lt!1087826) (_1!20938 (v!35725 lt!1087815))) (_2!20931 lt!1087826)))))

(declare-fun lt!1087827 () Option!7156)

(declare-fun b!3215389 () Bool)

(declare-fun lt!1087830 () BalanceConc!21268)

(assert (=> b!3215389 (= e!2004805 (lexTailRecV2!934 thiss!18206 rules!2135 lt!1086564 lt!1087830 (_2!20938 (v!35725 lt!1087827)) (append!869 (BalanceConc!21271 Empty!10828) (_1!20938 (v!35725 lt!1087827)))))))

(declare-fun lt!1087834 () tuple2!35594)

(assert (=> b!3215389 (= lt!1087834 (lexRec!689 thiss!18206 rules!2135 (_2!20938 (v!35725 lt!1087827))))))

(declare-fun lt!1087819 () List!36311)

(assert (=> b!3215389 (= lt!1087819 (list!12875 (BalanceConc!21269 Empty!10827)))))

(declare-fun lt!1087822 () List!36311)

(assert (=> b!3215389 (= lt!1087822 (list!12875 (charsOf!3242 (_1!20938 (v!35725 lt!1087827)))))))

(declare-fun lt!1087816 () List!36311)

(assert (=> b!3215389 (= lt!1087816 (list!12875 (_2!20938 (v!35725 lt!1087827))))))

(declare-fun lt!1087813 () Unit!50676)

(assert (=> b!3215389 (= lt!1087813 (lemmaConcatAssociativity!1750 lt!1087819 lt!1087822 lt!1087816))))

(assert (=> b!3215389 (= (++!8688 (++!8688 lt!1087819 lt!1087822) lt!1087816) (++!8688 lt!1087819 (++!8688 lt!1087822 lt!1087816)))))

(declare-fun lt!1087804 () Unit!50676)

(assert (=> b!3215389 (= lt!1087804 lt!1087813)))

(declare-fun lt!1087803 () Option!7156)

(assert (=> b!3215389 (= lt!1087803 (maxPrefixZipperSequence!1082 thiss!18206 rules!2135 lt!1086564))))

(declare-fun c!540503 () Bool)

(assert (=> b!3215389 (= c!540503 ((_ is Some!7155) lt!1087803))))

(declare-fun e!2004803 () tuple2!35594)

(assert (=> b!3215389 (= (lexRec!689 thiss!18206 rules!2135 lt!1086564) e!2004803)))

(declare-fun lt!1087828 () Unit!50676)

(declare-fun Unit!50690 () Unit!50676)

(assert (=> b!3215389 (= lt!1087828 Unit!50690)))

(declare-fun lt!1087811 () List!36313)

(assert (=> b!3215389 (= lt!1087811 (list!12877 (BalanceConc!21271 Empty!10828)))))

(declare-fun lt!1087810 () List!36313)

(assert (=> b!3215389 (= lt!1087810 (Cons!36189 (_1!20938 (v!35725 lt!1087827)) Nil!36189))))

(declare-fun lt!1087809 () List!36313)

(assert (=> b!3215389 (= lt!1087809 (list!12877 (_1!20931 lt!1087834)))))

(declare-fun lt!1087805 () Unit!50676)

(assert (=> b!3215389 (= lt!1087805 (lemmaConcatAssociativity!1752 lt!1087811 lt!1087810 lt!1087809))))

(assert (=> b!3215389 (= (++!8693 (++!8693 lt!1087811 lt!1087810) lt!1087809) (++!8693 lt!1087811 (++!8693 lt!1087810 lt!1087809)))))

(declare-fun lt!1087817 () Unit!50676)

(assert (=> b!3215389 (= lt!1087817 lt!1087805)))

(declare-fun lt!1087808 () List!36311)

(assert (=> b!3215389 (= lt!1087808 (++!8688 (list!12875 (BalanceConc!21269 Empty!10827)) (list!12875 (charsOf!3242 (_1!20938 (v!35725 lt!1087827))))))))

(declare-fun lt!1087812 () List!36311)

(assert (=> b!3215389 (= lt!1087812 (list!12875 (_2!20938 (v!35725 lt!1087827))))))

(declare-fun lt!1087824 () List!36313)

(assert (=> b!3215389 (= lt!1087824 (list!12877 (append!869 (BalanceConc!21271 Empty!10828) (_1!20938 (v!35725 lt!1087827)))))))

(declare-fun lt!1087831 () Unit!50676)

(assert (=> b!3215389 (= lt!1087831 (lemmaLexThenLexPrefix!454 thiss!18206 rules!2135 lt!1087808 lt!1087812 lt!1087824 (list!12877 (_1!20931 lt!1087834)) (list!12875 (_2!20931 lt!1087834))))))

(assert (=> b!3215389 (= (lexList!1314 thiss!18206 rules!2135 lt!1087808) (tuple2!35599 lt!1087824 Nil!36187))))

(declare-fun lt!1087818 () Unit!50676)

(assert (=> b!3215389 (= lt!1087818 lt!1087831)))

(assert (=> b!3215389 (= lt!1087835 (++!8689 (BalanceConc!21269 Empty!10827) (charsOf!3242 (_1!20938 (v!35725 lt!1087827)))))))

(assert (=> b!3215389 (= lt!1087815 (maxPrefixZipperSequence!1082 thiss!18206 rules!2135 lt!1087835))))

(declare-fun c!540504 () Bool)

(assert (=> b!3215389 (= c!540504 ((_ is Some!7155) lt!1087815))))

(assert (=> b!3215389 (= (lexRec!689 thiss!18206 rules!2135 (++!8689 (BalanceConc!21269 Empty!10827) (charsOf!3242 (_1!20938 (v!35725 lt!1087827))))) e!2004804)))

(declare-fun lt!1087806 () Unit!50676)

(declare-fun Unit!50691 () Unit!50676)

(assert (=> b!3215389 (= lt!1087806 Unit!50691)))

(assert (=> b!3215389 (= lt!1087830 (++!8689 (BalanceConc!21269 Empty!10827) (charsOf!3242 (_1!20938 (v!35725 lt!1087827)))))))

(declare-fun lt!1087833 () List!36311)

(assert (=> b!3215389 (= lt!1087833 (list!12875 lt!1087830))))

(declare-fun lt!1087825 () List!36311)

(assert (=> b!3215389 (= lt!1087825 (list!12875 (_2!20938 (v!35725 lt!1087827))))))

(declare-fun lt!1087807 () Unit!50676)

(assert (=> b!3215389 (= lt!1087807 (lemmaConcatTwoListThenFSndIsSuffix!536 lt!1087833 lt!1087825))))

(assert (=> b!3215389 (isSuffix!851 lt!1087825 (++!8688 lt!1087833 lt!1087825))))

(declare-fun lt!1087814 () Unit!50676)

(assert (=> b!3215389 (= lt!1087814 lt!1087807)))

(declare-fun b!3215390 () Bool)

(assert (=> b!3215390 (= e!2004803 (tuple2!35595 (BalanceConc!21271 Empty!10828) lt!1086564))))

(declare-fun lt!1087820 () tuple2!35594)

(declare-fun b!3215391 () Bool)

(assert (=> b!3215391 (= lt!1087820 (lexRec!689 thiss!18206 rules!2135 (_2!20938 (v!35725 lt!1087803))))))

(assert (=> b!3215391 (= e!2004803 (tuple2!35595 (prepend!1177 (_1!20931 lt!1087820) (_1!20938 (v!35725 lt!1087803))) (_2!20931 lt!1087820)))))

(declare-fun d!882238 () Bool)

(declare-fun e!2004802 () Bool)

(assert (=> d!882238 e!2004802))

(declare-fun res!1308842 () Bool)

(assert (=> d!882238 (=> (not res!1308842) (not e!2004802))))

(declare-fun lt!1087821 () tuple2!35594)

(assert (=> d!882238 (= res!1308842 (= (list!12877 (_1!20931 lt!1087821)) (list!12877 (_1!20931 (lexRec!689 thiss!18206 rules!2135 lt!1086564)))))))

(assert (=> d!882238 (= lt!1087821 e!2004805)))

(declare-fun c!540502 () Bool)

(assert (=> d!882238 (= c!540502 ((_ is Some!7155) lt!1087827))))

(assert (=> d!882238 (= lt!1087827 (maxPrefixZipperSequenceV2!476 thiss!18206 rules!2135 lt!1086564 lt!1086564))))

(declare-fun lt!1087823 () Unit!50676)

(declare-fun lt!1087829 () Unit!50676)

(assert (=> d!882238 (= lt!1087823 lt!1087829)))

(declare-fun lt!1087832 () List!36311)

(declare-fun lt!1087836 () List!36311)

(assert (=> d!882238 (isSuffix!851 lt!1087832 (++!8688 lt!1087836 lt!1087832))))

(assert (=> d!882238 (= lt!1087829 (lemmaConcatTwoListThenFSndIsSuffix!536 lt!1087836 lt!1087832))))

(assert (=> d!882238 (= lt!1087832 (list!12875 lt!1086564))))

(assert (=> d!882238 (= lt!1087836 (list!12875 (BalanceConc!21269 Empty!10827)))))

(assert (=> d!882238 (= (lexTailRecV2!934 thiss!18206 rules!2135 lt!1086564 (BalanceConc!21269 Empty!10827) lt!1086564 (BalanceConc!21271 Empty!10828)) lt!1087821)))

(declare-fun b!3215392 () Bool)

(assert (=> b!3215392 (= e!2004802 (= (list!12875 (_2!20931 lt!1087821)) (list!12875 (_2!20931 (lexRec!689 thiss!18206 rules!2135 lt!1086564)))))))

(assert (= (and d!882238 c!540502) b!3215389))

(assert (= (and d!882238 (not c!540502)) b!3215387))

(assert (= (and b!3215389 c!540503) b!3215391))

(assert (= (and b!3215389 (not c!540503)) b!3215390))

(assert (= (and b!3215389 c!540504) b!3215388))

(assert (= (and b!3215389 (not c!540504)) b!3215386))

(assert (= (and d!882238 res!1308842) b!3215392))

(declare-fun m!3487923 () Bool)

(assert (=> b!3215391 m!3487923))

(declare-fun m!3487925 () Bool)

(assert (=> b!3215391 m!3487925))

(declare-fun m!3487927 () Bool)

(assert (=> b!3215392 m!3487927))

(declare-fun m!3487929 () Bool)

(assert (=> b!3215392 m!3487929))

(declare-fun m!3487931 () Bool)

(assert (=> b!3215392 m!3487931))

(declare-fun m!3487933 () Bool)

(assert (=> b!3215389 m!3487933))

(declare-fun m!3487935 () Bool)

(assert (=> b!3215389 m!3487935))

(declare-fun m!3487937 () Bool)

(assert (=> b!3215389 m!3487937))

(declare-fun m!3487939 () Bool)

(assert (=> b!3215389 m!3487939))

(assert (=> b!3215389 m!3483815))

(declare-fun m!3487941 () Bool)

(assert (=> b!3215389 m!3487941))

(declare-fun m!3487943 () Bool)

(assert (=> b!3215389 m!3487943))

(assert (=> b!3215389 m!3487941))

(declare-fun m!3487945 () Bool)

(assert (=> b!3215389 m!3487945))

(declare-fun m!3487947 () Bool)

(assert (=> b!3215389 m!3487947))

(declare-fun m!3487949 () Bool)

(assert (=> b!3215389 m!3487949))

(declare-fun m!3487951 () Bool)

(assert (=> b!3215389 m!3487951))

(assert (=> b!3215389 m!3487929))

(assert (=> b!3215389 m!3483815))

(declare-fun m!3487953 () Bool)

(assert (=> b!3215389 m!3487953))

(declare-fun m!3487955 () Bool)

(assert (=> b!3215389 m!3487955))

(declare-fun m!3487957 () Bool)

(assert (=> b!3215389 m!3487957))

(declare-fun m!3487959 () Bool)

(assert (=> b!3215389 m!3487959))

(declare-fun m!3487961 () Bool)

(assert (=> b!3215389 m!3487961))

(declare-fun m!3487963 () Bool)

(assert (=> b!3215389 m!3487963))

(declare-fun m!3487965 () Bool)

(assert (=> b!3215389 m!3487965))

(declare-fun m!3487967 () Bool)

(assert (=> b!3215389 m!3487967))

(assert (=> b!3215389 m!3487953))

(assert (=> b!3215389 m!3487947))

(assert (=> b!3215389 m!3487935))

(declare-fun m!3487969 () Bool)

(assert (=> b!3215389 m!3487969))

(assert (=> b!3215389 m!3487937))

(declare-fun m!3487971 () Bool)

(assert (=> b!3215389 m!3487971))

(declare-fun m!3487973 () Bool)

(assert (=> b!3215389 m!3487973))

(declare-fun m!3487975 () Bool)

(assert (=> b!3215389 m!3487975))

(declare-fun m!3487977 () Bool)

(assert (=> b!3215389 m!3487977))

(assert (=> b!3215389 m!3487937))

(declare-fun m!3487979 () Bool)

(assert (=> b!3215389 m!3487979))

(declare-fun m!3487981 () Bool)

(assert (=> b!3215389 m!3487981))

(declare-fun m!3487985 () Bool)

(assert (=> b!3215389 m!3487985))

(assert (=> b!3215389 m!3487019))

(assert (=> b!3215389 m!3487967))

(assert (=> b!3215389 m!3487967))

(assert (=> b!3215389 m!3487959))

(assert (=> b!3215389 m!3487943))

(declare-fun m!3487987 () Bool)

(assert (=> b!3215389 m!3487987))

(assert (=> b!3215389 m!3487985))

(assert (=> b!3215389 m!3487971))

(declare-fun m!3487989 () Bool)

(assert (=> b!3215389 m!3487989))

(declare-fun m!3487991 () Bool)

(assert (=> b!3215389 m!3487991))

(declare-fun m!3487993 () Bool)

(assert (=> b!3215389 m!3487993))

(assert (=> b!3215389 m!3487973))

(declare-fun m!3487995 () Bool)

(assert (=> d!882238 m!3487995))

(declare-fun m!3487997 () Bool)

(assert (=> d!882238 m!3487997))

(assert (=> d!882238 m!3487995))

(assert (=> d!882238 m!3483815))

(declare-fun m!3487999 () Bool)

(assert (=> d!882238 m!3487999))

(assert (=> d!882238 m!3487929))

(assert (=> d!882238 m!3483735))

(declare-fun m!3488001 () Bool)

(assert (=> d!882238 m!3488001))

(declare-fun m!3488003 () Bool)

(assert (=> d!882238 m!3488003))

(declare-fun m!3488005 () Bool)

(assert (=> d!882238 m!3488005))

(declare-fun m!3488007 () Bool)

(assert (=> b!3215388 m!3488007))

(declare-fun m!3488009 () Bool)

(assert (=> b!3215388 m!3488009))

(assert (=> d!880908 d!882238))

(assert (=> b!3213058 d!881648))

(declare-fun d!882250 () Bool)

(declare-fun lt!1087840 () BalanceConc!21268)

(assert (=> d!882250 (= (list!12875 lt!1087840) (originalCharacters!5940 (apply!8207 lt!1086554 0)))))

(assert (=> d!882250 (= lt!1087840 (dynLambda!14631 (toChars!7173 (transformation!5226 (rule!7672 (apply!8207 lt!1086554 0)))) (value!169401 (apply!8207 lt!1086554 0))))))

(assert (=> d!882250 (= (charsOf!3242 (apply!8207 lt!1086554 0)) lt!1087840)))

(declare-fun b_lambda!88275 () Bool)

(assert (=> (not b_lambda!88275) (not d!882250)))

(declare-fun t!239509 () Bool)

(declare-fun tb!158479 () Bool)

(assert (=> (and b!3213792 (= (toChars!7173 (transformation!5226 (h!41608 (t!239157 rules!2135)))) (toChars!7173 (transformation!5226 (rule!7672 (apply!8207 lt!1086554 0))))) t!239509) tb!158479))

(declare-fun b!3215401 () Bool)

(declare-fun e!2004810 () Bool)

(declare-fun tp!1013834 () Bool)

(assert (=> b!3215401 (= e!2004810 (and (inv!49055 (c!539813 (dynLambda!14631 (toChars!7173 (transformation!5226 (rule!7672 (apply!8207 lt!1086554 0)))) (value!169401 (apply!8207 lt!1086554 0))))) tp!1013834))))

(declare-fun result!200872 () Bool)

(assert (=> tb!158479 (= result!200872 (and (inv!49056 (dynLambda!14631 (toChars!7173 (transformation!5226 (rule!7672 (apply!8207 lt!1086554 0)))) (value!169401 (apply!8207 lt!1086554 0)))) e!2004810))))

(assert (= tb!158479 b!3215401))

(declare-fun m!3488011 () Bool)

(assert (=> b!3215401 m!3488011))

(declare-fun m!3488013 () Bool)

(assert (=> tb!158479 m!3488013))

(assert (=> d!882250 t!239509))

(declare-fun b_and!214603 () Bool)

(assert (= b_and!214541 (and (=> t!239509 result!200872) b_and!214603)))

(declare-fun t!239512 () Bool)

(declare-fun tb!158481 () Bool)

(assert (=> (and b!3212813 (= (toChars!7173 (transformation!5226 (rule!7672 separatorToken!241))) (toChars!7173 (transformation!5226 (rule!7672 (apply!8207 lt!1086554 0))))) t!239512) tb!158481))

(declare-fun result!200874 () Bool)

(assert (= result!200874 result!200872))

(assert (=> d!882250 t!239512))

(declare-fun b_and!214605 () Bool)

(assert (= b_and!214533 (and (=> t!239512 result!200874) b_and!214605)))

(declare-fun tb!158483 () Bool)

(declare-fun t!239514 () Bool)

(assert (=> (and b!3212809 (= (toChars!7173 (transformation!5226 (h!41608 rules!2135))) (toChars!7173 (transformation!5226 (rule!7672 (apply!8207 lt!1086554 0))))) t!239514) tb!158483))

(declare-fun result!200876 () Bool)

(assert (= result!200876 result!200872))

(assert (=> d!882250 t!239514))

(declare-fun b_and!214607 () Bool)

(assert (= b_and!214535 (and (=> t!239514 result!200876) b_and!214607)))

(declare-fun tb!158485 () Bool)

(declare-fun t!239516 () Bool)

(assert (=> (and b!3212814 (= (toChars!7173 (transformation!5226 (rule!7672 (h!41609 tokens!494)))) (toChars!7173 (transformation!5226 (rule!7672 (apply!8207 lt!1086554 0))))) t!239516) tb!158485))

(declare-fun result!200878 () Bool)

(assert (= result!200878 result!200872))

(assert (=> d!882250 t!239516))

(declare-fun b_and!214609 () Bool)

(assert (= b_and!214539 (and (=> t!239516 result!200878) b_and!214609)))

(declare-fun t!239518 () Bool)

(declare-fun tb!158487 () Bool)

(assert (=> (and b!3213760 (= (toChars!7173 (transformation!5226 (rule!7672 (h!41609 (t!239158 tokens!494))))) (toChars!7173 (transformation!5226 (rule!7672 (apply!8207 lt!1086554 0))))) t!239518) tb!158487))

(declare-fun result!200880 () Bool)

(assert (= result!200880 result!200872))

(assert (=> d!882250 t!239518))

(declare-fun b_and!214611 () Bool)

(assert (= b_and!214537 (and (=> t!239518 result!200880) b_and!214611)))

(declare-fun m!3488015 () Bool)

(assert (=> d!882250 m!3488015))

(declare-fun m!3488017 () Bool)

(assert (=> d!882250 m!3488017))

(assert (=> b!3213058 d!882250))

(declare-fun d!882252 () Bool)

(assert (=> d!882252 (= (head!7048 (drop!1862 lt!1086673 0)) (h!41609 (drop!1862 lt!1086673 0)))))

(assert (=> b!3213058 d!882252))

(declare-fun d!882256 () Bool)

(declare-fun lt!1087846 () BalanceConc!21268)

(assert (=> d!882256 (= (list!12875 lt!1087846) (printListTailRec!562 thiss!18206 (dropList!1079 lt!1086554 (+ 0 1)) (list!12875 (++!8689 (BalanceConc!21269 Empty!10827) (charsOf!3242 (apply!8207 lt!1086554 0))))))))

(declare-fun e!2004811 () BalanceConc!21268)

(assert (=> d!882256 (= lt!1087846 e!2004811)))

(declare-fun c!540509 () Bool)

(assert (=> d!882256 (= c!540509 (>= (+ 0 1) (size!27275 lt!1086554)))))

(declare-fun e!2004812 () Bool)

(assert (=> d!882256 e!2004812))

(declare-fun res!1308843 () Bool)

(assert (=> d!882256 (=> (not res!1308843) (not e!2004812))))

(assert (=> d!882256 (= res!1308843 (>= (+ 0 1) 0))))

(assert (=> d!882256 (= (printTailRec!1312 thiss!18206 lt!1086554 (+ 0 1) (++!8689 (BalanceConc!21269 Empty!10827) (charsOf!3242 (apply!8207 lt!1086554 0)))) lt!1087846)))

(declare-fun b!3215402 () Bool)

(assert (=> b!3215402 (= e!2004812 (<= (+ 0 1) (size!27275 lt!1086554)))))

(declare-fun b!3215403 () Bool)

(assert (=> b!3215403 (= e!2004811 (++!8689 (BalanceConc!21269 Empty!10827) (charsOf!3242 (apply!8207 lt!1086554 0))))))

(declare-fun b!3215404 () Bool)

(assert (=> b!3215404 (= e!2004811 (printTailRec!1312 thiss!18206 lt!1086554 (+ 0 1 1) (++!8689 (++!8689 (BalanceConc!21269 Empty!10827) (charsOf!3242 (apply!8207 lt!1086554 0))) (charsOf!3242 (apply!8207 lt!1086554 (+ 0 1))))))))

(declare-fun lt!1087847 () List!36313)

(assert (=> b!3215404 (= lt!1087847 (list!12877 lt!1086554))))

(declare-fun lt!1087848 () Unit!50676)

(assert (=> b!3215404 (= lt!1087848 (lemmaDropApply!1038 lt!1087847 (+ 0 1)))))

(assert (=> b!3215404 (= (head!7048 (drop!1862 lt!1087847 (+ 0 1))) (apply!8209 lt!1087847 (+ 0 1)))))

(declare-fun lt!1087851 () Unit!50676)

(assert (=> b!3215404 (= lt!1087851 lt!1087848)))

(declare-fun lt!1087850 () List!36313)

(assert (=> b!3215404 (= lt!1087850 (list!12877 lt!1086554))))

(declare-fun lt!1087845 () Unit!50676)

(assert (=> b!3215404 (= lt!1087845 (lemmaDropTail!922 lt!1087850 (+ 0 1)))))

(assert (=> b!3215404 (= (tail!5215 (drop!1862 lt!1087850 (+ 0 1))) (drop!1862 lt!1087850 (+ 0 1 1)))))

(declare-fun lt!1087849 () Unit!50676)

(assert (=> b!3215404 (= lt!1087849 lt!1087845)))

(assert (= (and d!882256 res!1308843) b!3215402))

(assert (= (and d!882256 c!540509) b!3215403))

(assert (= (and d!882256 (not c!540509)) b!3215404))

(declare-fun m!3488027 () Bool)

(assert (=> d!882256 m!3488027))

(assert (=> d!882256 m!3488027))

(declare-fun m!3488029 () Bool)

(assert (=> d!882256 m!3488029))

(declare-fun m!3488031 () Bool)

(assert (=> d!882256 m!3488031))

(assert (=> d!882256 m!3483819))

(declare-fun m!3488033 () Bool)

(assert (=> d!882256 m!3488033))

(assert (=> d!882256 m!3483835))

(assert (=> d!882256 m!3488029))

(assert (=> b!3215402 m!3483819))

(declare-fun m!3488041 () Bool)

(assert (=> b!3215404 m!3488041))

(declare-fun m!3488045 () Bool)

(assert (=> b!3215404 m!3488045))

(declare-fun m!3488049 () Bool)

(assert (=> b!3215404 m!3488049))

(declare-fun m!3488051 () Bool)

(assert (=> b!3215404 m!3488051))

(declare-fun m!3488055 () Bool)

(assert (=> b!3215404 m!3488055))

(assert (=> b!3215404 m!3483835))

(declare-fun m!3488057 () Bool)

(assert (=> b!3215404 m!3488057))

(declare-fun m!3488059 () Bool)

(assert (=> b!3215404 m!3488059))

(declare-fun m!3488061 () Bool)

(assert (=> b!3215404 m!3488061))

(declare-fun m!3488063 () Bool)

(assert (=> b!3215404 m!3488063))

(assert (=> b!3215404 m!3488057))

(assert (=> b!3215404 m!3488063))

(assert (=> b!3215404 m!3488041))

(assert (=> b!3215404 m!3488059))

(declare-fun m!3488069 () Bool)

(assert (=> b!3215404 m!3488069))

(assert (=> b!3215404 m!3488049))

(assert (=> b!3215404 m!3483607))

(declare-fun m!3488071 () Bool)

(assert (=> b!3215404 m!3488071))

(declare-fun m!3488073 () Bool)

(assert (=> b!3215404 m!3488073))

(assert (=> b!3213058 d!882256))

(declare-fun d!882272 () Bool)

(assert (=> d!882272 (= (head!7048 (drop!1862 lt!1086673 0)) (apply!8209 lt!1086673 0))))

(declare-fun lt!1087862 () Unit!50676)

(assert (=> d!882272 (= lt!1087862 (choose!18770 lt!1086673 0))))

(declare-fun e!2004815 () Bool)

(assert (=> d!882272 e!2004815))

(declare-fun res!1308846 () Bool)

(assert (=> d!882272 (=> (not res!1308846) (not e!2004815))))

(assert (=> d!882272 (= res!1308846 (>= 0 0))))

(assert (=> d!882272 (= (lemmaDropApply!1038 lt!1086673 0) lt!1087862)))

(declare-fun b!3215409 () Bool)

(assert (=> b!3215409 (= e!2004815 (< 0 (size!27277 lt!1086673)))))

(assert (= (and d!882272 res!1308846) b!3215409))

(assert (=> d!882272 m!3483827))

(assert (=> d!882272 m!3483827))

(assert (=> d!882272 m!3483829))

(assert (=> d!882272 m!3483831))

(declare-fun m!3488085 () Bool)

(assert (=> d!882272 m!3488085))

(declare-fun m!3488089 () Bool)

(assert (=> b!3215409 m!3488089))

(assert (=> b!3213058 d!882272))

(declare-fun d!882274 () Bool)

(declare-fun lt!1087863 () Token!9818)

(assert (=> d!882274 (contains!6471 lt!1086673 lt!1087863)))

(declare-fun e!2004816 () Token!9818)

(assert (=> d!882274 (= lt!1087863 e!2004816)))

(declare-fun c!540511 () Bool)

(assert (=> d!882274 (= c!540511 (= 0 0))))

(declare-fun e!2004817 () Bool)

(assert (=> d!882274 e!2004817))

(declare-fun res!1308847 () Bool)

(assert (=> d!882274 (=> (not res!1308847) (not e!2004817))))

(assert (=> d!882274 (= res!1308847 (<= 0 0))))

(assert (=> d!882274 (= (apply!8209 lt!1086673 0) lt!1087863)))

(declare-fun b!3215410 () Bool)

(assert (=> b!3215410 (= e!2004817 (< 0 (size!27277 lt!1086673)))))

(declare-fun b!3215411 () Bool)

(assert (=> b!3215411 (= e!2004816 (head!7048 lt!1086673))))

(declare-fun b!3215412 () Bool)

(assert (=> b!3215412 (= e!2004816 (apply!8209 (tail!5215 lt!1086673) (- 0 1)))))

(assert (= (and d!882274 res!1308847) b!3215410))

(assert (= (and d!882274 c!540511) b!3215411))

(assert (= (and d!882274 (not c!540511)) b!3215412))

(declare-fun m!3488095 () Bool)

(assert (=> d!882274 m!3488095))

(assert (=> b!3215410 m!3488089))

(declare-fun m!3488097 () Bool)

(assert (=> b!3215411 m!3488097))

(declare-fun m!3488099 () Bool)

(assert (=> b!3215412 m!3488099))

(assert (=> b!3215412 m!3488099))

(declare-fun m!3488101 () Bool)

(assert (=> b!3215412 m!3488101))

(assert (=> b!3213058 d!882274))

(declare-fun b!3215415 () Bool)

(declare-fun e!2004822 () Int)

(declare-fun e!2004820 () Int)

(assert (=> b!3215415 (= e!2004822 e!2004820)))

(declare-fun c!540514 () Bool)

(declare-fun call!232768 () Int)

(assert (=> b!3215415 (= c!540514 (>= 0 call!232768))))

(declare-fun d!882280 () Bool)

(declare-fun e!2004819 () Bool)

(assert (=> d!882280 e!2004819))

(declare-fun res!1308850 () Bool)

(assert (=> d!882280 (=> (not res!1308850) (not e!2004819))))

(declare-fun lt!1087865 () List!36313)

(assert (=> d!882280 (= res!1308850 (= ((_ map implies) (content!4898 lt!1087865) (content!4898 lt!1086673)) ((as const (InoxSet Token!9818)) true)))))

(declare-fun e!2004823 () List!36313)

(assert (=> d!882280 (= lt!1087865 e!2004823)))

(declare-fun c!540512 () Bool)

(assert (=> d!882280 (= c!540512 ((_ is Nil!36189) lt!1086673))))

(assert (=> d!882280 (= (drop!1862 lt!1086673 0) lt!1087865)))

(declare-fun b!3215416 () Bool)

(declare-fun e!2004821 () List!36313)

(assert (=> b!3215416 (= e!2004821 (drop!1862 (t!239158 lt!1086673) (- 0 1)))))

(declare-fun b!3215417 () Bool)

(assert (=> b!3215417 (= e!2004821 lt!1086673)))

(declare-fun b!3215418 () Bool)

(assert (=> b!3215418 (= e!2004820 0)))

(declare-fun b!3215419 () Bool)

(assert (=> b!3215419 (= e!2004823 e!2004821)))

(declare-fun c!540515 () Bool)

(assert (=> b!3215419 (= c!540515 (<= 0 0))))

(declare-fun bm!232763 () Bool)

(assert (=> bm!232763 (= call!232768 (size!27277 lt!1086673))))

(declare-fun b!3215420 () Bool)

(assert (=> b!3215420 (= e!2004822 call!232768)))

(declare-fun b!3215421 () Bool)

(assert (=> b!3215421 (= e!2004823 Nil!36189)))

(declare-fun b!3215422 () Bool)

(assert (=> b!3215422 (= e!2004820 (- call!232768 0))))

(declare-fun b!3215423 () Bool)

(assert (=> b!3215423 (= e!2004819 (= (size!27277 lt!1087865) e!2004822))))

(declare-fun c!540513 () Bool)

(assert (=> b!3215423 (= c!540513 (<= 0 0))))

(assert (= (and d!882280 c!540512) b!3215421))

(assert (= (and d!882280 (not c!540512)) b!3215419))

(assert (= (and b!3215419 c!540515) b!3215417))

(assert (= (and b!3215419 (not c!540515)) b!3215416))

(assert (= (and d!882280 res!1308850) b!3215423))

(assert (= (and b!3215423 c!540513) b!3215420))

(assert (= (and b!3215423 (not c!540513)) b!3215415))

(assert (= (and b!3215415 c!540514) b!3215418))

(assert (= (and b!3215415 (not c!540514)) b!3215422))

(assert (= (or b!3215420 b!3215415 b!3215422) bm!232763))

(declare-fun m!3488109 () Bool)

(assert (=> d!882280 m!3488109))

(declare-fun m!3488111 () Bool)

(assert (=> d!882280 m!3488111))

(declare-fun m!3488117 () Bool)

(assert (=> b!3215416 m!3488117))

(assert (=> bm!232763 m!3488089))

(declare-fun m!3488119 () Bool)

(assert (=> b!3215423 m!3488119))

(assert (=> b!3213058 d!882280))

(declare-fun b!3215434 () Bool)

(declare-fun e!2004833 () Int)

(declare-fun e!2004831 () Int)

(assert (=> b!3215434 (= e!2004833 e!2004831)))

(declare-fun c!540522 () Bool)

(declare-fun call!232773 () Int)

(assert (=> b!3215434 (= c!540522 (>= (+ 0 1) call!232773))))

(declare-fun d!882288 () Bool)

(declare-fun e!2004830 () Bool)

(assert (=> d!882288 e!2004830))

(declare-fun res!1308853 () Bool)

(assert (=> d!882288 (=> (not res!1308853) (not e!2004830))))

(declare-fun lt!1087868 () List!36313)

(assert (=> d!882288 (= res!1308853 (= ((_ map implies) (content!4898 lt!1087868) (content!4898 lt!1086676)) ((as const (InoxSet Token!9818)) true)))))

(declare-fun e!2004834 () List!36313)

(assert (=> d!882288 (= lt!1087868 e!2004834)))

(declare-fun c!540520 () Bool)

(assert (=> d!882288 (= c!540520 ((_ is Nil!36189) lt!1086676))))

(assert (=> d!882288 (= (drop!1862 lt!1086676 (+ 0 1)) lt!1087868)))

(declare-fun b!3215435 () Bool)

(declare-fun e!2004832 () List!36313)

(assert (=> b!3215435 (= e!2004832 (drop!1862 (t!239158 lt!1086676) (- (+ 0 1) 1)))))

(declare-fun b!3215436 () Bool)

(assert (=> b!3215436 (= e!2004832 lt!1086676)))

(declare-fun b!3215437 () Bool)

(assert (=> b!3215437 (= e!2004831 0)))

(declare-fun b!3215438 () Bool)

(assert (=> b!3215438 (= e!2004834 e!2004832)))

(declare-fun c!540523 () Bool)

(assert (=> b!3215438 (= c!540523 (<= (+ 0 1) 0))))

(declare-fun bm!232768 () Bool)

(assert (=> bm!232768 (= call!232773 (size!27277 lt!1086676))))

(declare-fun b!3215439 () Bool)

(assert (=> b!3215439 (= e!2004833 call!232773)))

(declare-fun b!3215440 () Bool)

(assert (=> b!3215440 (= e!2004834 Nil!36189)))

(declare-fun b!3215441 () Bool)

(assert (=> b!3215441 (= e!2004831 (- call!232773 (+ 0 1)))))

(declare-fun b!3215442 () Bool)

(assert (=> b!3215442 (= e!2004830 (= (size!27277 lt!1087868) e!2004833))))

(declare-fun c!540521 () Bool)

(assert (=> b!3215442 (= c!540521 (<= (+ 0 1) 0))))

(assert (= (and d!882288 c!540520) b!3215440))

(assert (= (and d!882288 (not c!540520)) b!3215438))

(assert (= (and b!3215438 c!540523) b!3215436))

(assert (= (and b!3215438 (not c!540523)) b!3215435))

(assert (= (and d!882288 res!1308853) b!3215442))

(assert (= (and b!3215442 c!540521) b!3215439))

(assert (= (and b!3215442 (not c!540521)) b!3215434))

(assert (= (and b!3215434 c!540522) b!3215437))

(assert (= (and b!3215434 (not c!540522)) b!3215441))

(assert (= (or b!3215439 b!3215434 b!3215441) bm!232768))

(declare-fun m!3488121 () Bool)

(assert (=> d!882288 m!3488121))

(declare-fun m!3488123 () Bool)

(assert (=> d!882288 m!3488123))

(declare-fun m!3488125 () Bool)

(assert (=> b!3215435 m!3488125))

(declare-fun m!3488129 () Bool)

(assert (=> bm!232768 m!3488129))

(declare-fun m!3488131 () Bool)

(assert (=> b!3215442 m!3488131))

(assert (=> b!3213058 d!882288))

(declare-fun d!882290 () Bool)

(assert (=> d!882290 (= (tail!5215 (drop!1862 lt!1086676 0)) (t!239158 (drop!1862 lt!1086676 0)))))

(assert (=> b!3213058 d!882290))

(declare-fun d!882294 () Bool)

(declare-fun lt!1087869 () Token!9818)

(assert (=> d!882294 (= lt!1087869 (apply!8209 (list!12877 lt!1086554) 0))))

(assert (=> d!882294 (= lt!1087869 (apply!8210 (c!539814 lt!1086554) 0))))

(declare-fun e!2004835 () Bool)

(assert (=> d!882294 e!2004835))

(declare-fun res!1308854 () Bool)

(assert (=> d!882294 (=> (not res!1308854) (not e!2004835))))

(assert (=> d!882294 (= res!1308854 (<= 0 0))))

(assert (=> d!882294 (= (apply!8207 lt!1086554 0) lt!1087869)))

(declare-fun b!3215443 () Bool)

(assert (=> b!3215443 (= e!2004835 (< 0 (size!27275 lt!1086554)))))

(assert (= (and d!882294 res!1308854) b!3215443))

(assert (=> d!882294 m!3483607))

(assert (=> d!882294 m!3483607))

(declare-fun m!3488139 () Bool)

(assert (=> d!882294 m!3488139))

(declare-fun m!3488141 () Bool)

(assert (=> d!882294 m!3488141))

(assert (=> b!3215443 m!3483819))

(assert (=> b!3213058 d!882294))

(declare-fun d!882298 () Bool)

(assert (=> d!882298 (= (tail!5215 (drop!1862 lt!1086676 0)) (drop!1862 lt!1086676 (+ 0 1)))))

(declare-fun lt!1087870 () Unit!50676)

(assert (=> d!882298 (= lt!1087870 (choose!18771 lt!1086676 0))))

(declare-fun e!2004837 () Bool)

(assert (=> d!882298 e!2004837))

(declare-fun res!1308855 () Bool)

(assert (=> d!882298 (=> (not res!1308855) (not e!2004837))))

(assert (=> d!882298 (= res!1308855 (>= 0 0))))

(assert (=> d!882298 (= (lemmaDropTail!922 lt!1086676 0) lt!1087870)))

(declare-fun b!3215446 () Bool)

(assert (=> b!3215446 (= e!2004837 (< 0 (size!27277 lt!1086676)))))

(assert (= (and d!882298 res!1308855) b!3215446))

(assert (=> d!882298 m!3483823))

(assert (=> d!882298 m!3483823))

(assert (=> d!882298 m!3483825))

(assert (=> d!882298 m!3483843))

(declare-fun m!3488151 () Bool)

(assert (=> d!882298 m!3488151))

(assert (=> b!3215446 m!3488129))

(assert (=> b!3213058 d!882298))

(declare-fun b!3215447 () Bool)

(declare-fun e!2004841 () Int)

(declare-fun e!2004839 () Int)

(assert (=> b!3215447 (= e!2004841 e!2004839)))

(declare-fun c!540527 () Bool)

(declare-fun call!232774 () Int)

(assert (=> b!3215447 (= c!540527 (>= 0 call!232774))))

(declare-fun d!882302 () Bool)

(declare-fun e!2004838 () Bool)

(assert (=> d!882302 e!2004838))

(declare-fun res!1308856 () Bool)

(assert (=> d!882302 (=> (not res!1308856) (not e!2004838))))

(declare-fun lt!1087871 () List!36313)

(assert (=> d!882302 (= res!1308856 (= ((_ map implies) (content!4898 lt!1087871) (content!4898 lt!1086676)) ((as const (InoxSet Token!9818)) true)))))

(declare-fun e!2004842 () List!36313)

(assert (=> d!882302 (= lt!1087871 e!2004842)))

(declare-fun c!540525 () Bool)

(assert (=> d!882302 (= c!540525 ((_ is Nil!36189) lt!1086676))))

(assert (=> d!882302 (= (drop!1862 lt!1086676 0) lt!1087871)))

(declare-fun b!3215448 () Bool)

(declare-fun e!2004840 () List!36313)

(assert (=> b!3215448 (= e!2004840 (drop!1862 (t!239158 lt!1086676) (- 0 1)))))

(declare-fun b!3215449 () Bool)

(assert (=> b!3215449 (= e!2004840 lt!1086676)))

(declare-fun b!3215450 () Bool)

(assert (=> b!3215450 (= e!2004839 0)))

(declare-fun b!3215451 () Bool)

(assert (=> b!3215451 (= e!2004842 e!2004840)))

(declare-fun c!540528 () Bool)

(assert (=> b!3215451 (= c!540528 (<= 0 0))))

(declare-fun bm!232769 () Bool)

(assert (=> bm!232769 (= call!232774 (size!27277 lt!1086676))))

(declare-fun b!3215452 () Bool)

(assert (=> b!3215452 (= e!2004841 call!232774)))

(declare-fun b!3215453 () Bool)

(assert (=> b!3215453 (= e!2004842 Nil!36189)))

(declare-fun b!3215454 () Bool)

(assert (=> b!3215454 (= e!2004839 (- call!232774 0))))

(declare-fun b!3215455 () Bool)

(assert (=> b!3215455 (= e!2004838 (= (size!27277 lt!1087871) e!2004841))))

(declare-fun c!540526 () Bool)

(assert (=> b!3215455 (= c!540526 (<= 0 0))))

(assert (= (and d!882302 c!540525) b!3215453))

(assert (= (and d!882302 (not c!540525)) b!3215451))

(assert (= (and b!3215451 c!540528) b!3215449))

(assert (= (and b!3215451 (not c!540528)) b!3215448))

(assert (= (and d!882302 res!1308856) b!3215455))

(assert (= (and b!3215455 c!540526) b!3215452))

(assert (= (and b!3215455 (not c!540526)) b!3215447))

(assert (= (and b!3215447 c!540527) b!3215450))

(assert (= (and b!3215447 (not c!540527)) b!3215454))

(assert (= (or b!3215452 b!3215447 b!3215454) bm!232769))

(declare-fun m!3488157 () Bool)

(assert (=> d!882302 m!3488157))

(assert (=> d!882302 m!3488123))

(declare-fun m!3488159 () Bool)

(assert (=> b!3215448 m!3488159))

(assert (=> bm!232769 m!3488129))

(declare-fun m!3488161 () Bool)

(assert (=> b!3215455 m!3488161))

(assert (=> b!3213058 d!882302))

(declare-fun b!3215463 () Bool)

(declare-fun res!1308862 () Bool)

(declare-fun e!2004847 () Bool)

(assert (=> b!3215463 (=> (not res!1308862) (not e!2004847))))

(assert (=> b!3215463 (= res!1308862 (isBalanced!3222 (++!8692 (c!539813 (BalanceConc!21269 Empty!10827)) (c!539813 (charsOf!3242 (apply!8207 lt!1086554 0))))))))

(declare-fun b!3215464 () Bool)

(declare-fun res!1308860 () Bool)

(assert (=> b!3215464 (=> (not res!1308860) (not e!2004847))))

(assert (=> b!3215464 (= res!1308860 (<= (height!1559 (++!8692 (c!539813 (BalanceConc!21269 Empty!10827)) (c!539813 (charsOf!3242 (apply!8207 lt!1086554 0))))) (+ (max!0 (height!1559 (c!539813 (BalanceConc!21269 Empty!10827))) (height!1559 (c!539813 (charsOf!3242 (apply!8207 lt!1086554 0))))) 1)))))

(declare-fun d!882310 () Bool)

(assert (=> d!882310 e!2004847))

(declare-fun res!1308861 () Bool)

(assert (=> d!882310 (=> (not res!1308861) (not e!2004847))))

(assert (=> d!882310 (= res!1308861 (appendAssocInst!734 (c!539813 (BalanceConc!21269 Empty!10827)) (c!539813 (charsOf!3242 (apply!8207 lt!1086554 0)))))))

(declare-fun lt!1087874 () BalanceConc!21268)

(assert (=> d!882310 (= lt!1087874 (BalanceConc!21269 (++!8692 (c!539813 (BalanceConc!21269 Empty!10827)) (c!539813 (charsOf!3242 (apply!8207 lt!1086554 0))))))))

(assert (=> d!882310 (= (++!8689 (BalanceConc!21269 Empty!10827) (charsOf!3242 (apply!8207 lt!1086554 0))) lt!1087874)))

(declare-fun b!3215465 () Bool)

(declare-fun res!1308863 () Bool)

(assert (=> b!3215465 (=> (not res!1308863) (not e!2004847))))

(assert (=> b!3215465 (= res!1308863 (>= (height!1559 (++!8692 (c!539813 (BalanceConc!21269 Empty!10827)) (c!539813 (charsOf!3242 (apply!8207 lt!1086554 0))))) (max!0 (height!1559 (c!539813 (BalanceConc!21269 Empty!10827))) (height!1559 (c!539813 (charsOf!3242 (apply!8207 lt!1086554 0)))))))))

(declare-fun b!3215466 () Bool)

(assert (=> b!3215466 (= e!2004847 (= (list!12875 lt!1087874) (++!8688 (list!12875 (BalanceConc!21269 Empty!10827)) (list!12875 (charsOf!3242 (apply!8207 lt!1086554 0))))))))

(assert (= (and d!882310 res!1308861) b!3215463))

(assert (= (and b!3215463 res!1308862) b!3215464))

(assert (= (and b!3215464 res!1308860) b!3215465))

(assert (= (and b!3215465 res!1308863) b!3215466))

(declare-fun m!3488177 () Bool)

(assert (=> b!3215463 m!3488177))

(assert (=> b!3215463 m!3488177))

(declare-fun m!3488179 () Bool)

(assert (=> b!3215463 m!3488179))

(declare-fun m!3488181 () Bool)

(assert (=> b!3215466 m!3488181))

(assert (=> b!3215466 m!3483815))

(assert (=> b!3215466 m!3483833))

(declare-fun m!3488183 () Bool)

(assert (=> b!3215466 m!3488183))

(assert (=> b!3215466 m!3483815))

(assert (=> b!3215466 m!3488183))

(declare-fun m!3488185 () Bool)

(assert (=> b!3215466 m!3488185))

(assert (=> b!3215465 m!3486237))

(declare-fun m!3488187 () Bool)

(assert (=> b!3215465 m!3488187))

(declare-fun m!3488189 () Bool)

(assert (=> b!3215465 m!3488189))

(assert (=> b!3215465 m!3488187))

(assert (=> b!3215465 m!3488177))

(assert (=> b!3215465 m!3488177))

(declare-fun m!3488191 () Bool)

(assert (=> b!3215465 m!3488191))

(assert (=> b!3215465 m!3486237))

(assert (=> b!3215464 m!3486237))

(assert (=> b!3215464 m!3488187))

(assert (=> b!3215464 m!3488189))

(assert (=> b!3215464 m!3488187))

(assert (=> b!3215464 m!3488177))

(assert (=> b!3215464 m!3488177))

(assert (=> b!3215464 m!3488191))

(assert (=> b!3215464 m!3486237))

(declare-fun m!3488193 () Bool)

(assert (=> d!882310 m!3488193))

(assert (=> d!882310 m!3488177))

(assert (=> b!3213058 d!882310))

(declare-fun b!3215480 () Bool)

(declare-fun res!1308872 () Bool)

(declare-fun e!2004857 () Bool)

(assert (=> b!3215480 (=> (not res!1308872) (not e!2004857))))

(declare-fun lt!1087876 () List!36311)

(assert (=> b!3215480 (= res!1308872 (= (size!27274 lt!1087876) (+ (size!27274 (list!12875 (charsOf!3242 (_1!20932 (get!11526 lt!1086791))))) (size!27274 (_2!20932 (get!11526 lt!1086791))))))))

(declare-fun b!3215479 () Bool)

(declare-fun e!2004858 () List!36311)

(assert (=> b!3215479 (= e!2004858 (Cons!36187 (h!41607 (list!12875 (charsOf!3242 (_1!20932 (get!11526 lt!1086791))))) (++!8688 (t!239156 (list!12875 (charsOf!3242 (_1!20932 (get!11526 lt!1086791))))) (_2!20932 (get!11526 lt!1086791)))))))

(declare-fun b!3215478 () Bool)

(assert (=> b!3215478 (= e!2004858 (_2!20932 (get!11526 lt!1086791)))))

(declare-fun d!882318 () Bool)

(assert (=> d!882318 e!2004857))

(declare-fun res!1308871 () Bool)

(assert (=> d!882318 (=> (not res!1308871) (not e!2004857))))

(assert (=> d!882318 (= res!1308871 (= (content!4894 lt!1087876) ((_ map or) (content!4894 (list!12875 (charsOf!3242 (_1!20932 (get!11526 lt!1086791))))) (content!4894 (_2!20932 (get!11526 lt!1086791))))))))

(assert (=> d!882318 (= lt!1087876 e!2004858)))

(declare-fun c!540533 () Bool)

(assert (=> d!882318 (= c!540533 ((_ is Nil!36187) (list!12875 (charsOf!3242 (_1!20932 (get!11526 lt!1086791))))))))

(assert (=> d!882318 (= (++!8688 (list!12875 (charsOf!3242 (_1!20932 (get!11526 lt!1086791)))) (_2!20932 (get!11526 lt!1086791))) lt!1087876)))

(declare-fun b!3215481 () Bool)

(assert (=> b!3215481 (= e!2004857 (or (not (= (_2!20932 (get!11526 lt!1086791)) Nil!36187)) (= lt!1087876 (list!12875 (charsOf!3242 (_1!20932 (get!11526 lt!1086791)))))))))

(assert (= (and d!882318 c!540533) b!3215478))

(assert (= (and d!882318 (not c!540533)) b!3215479))

(assert (= (and d!882318 res!1308871) b!3215480))

(assert (= (and b!3215480 res!1308872) b!3215481))

(declare-fun m!3488201 () Bool)

(assert (=> b!3215480 m!3488201))

(assert (=> b!3215480 m!3484135))

(declare-fun m!3488203 () Bool)

(assert (=> b!3215480 m!3488203))

(assert (=> b!3215480 m!3484147))

(declare-fun m!3488205 () Bool)

(assert (=> b!3215479 m!3488205))

(declare-fun m!3488207 () Bool)

(assert (=> d!882318 m!3488207))

(assert (=> d!882318 m!3484135))

(declare-fun m!3488209 () Bool)

(assert (=> d!882318 m!3488209))

(declare-fun m!3488211 () Bool)

(assert (=> d!882318 m!3488211))

(assert (=> b!3213298 d!882318))

(assert (=> b!3213298 d!881430))

(assert (=> b!3213298 d!881432))

(assert (=> b!3213298 d!881356))

(declare-fun d!882322 () Bool)

(declare-fun lt!1087877 () Bool)

(assert (=> d!882322 (= lt!1087877 (isEmpty!20288 (list!12875 (_2!20931 lt!1086601))))))

(assert (=> d!882322 (= lt!1087877 (isEmpty!20289 (c!539813 (_2!20931 lt!1086601))))))

(assert (=> d!882322 (= (isEmpty!20279 (_2!20931 lt!1086601)) lt!1087877)))

(declare-fun bs!542125 () Bool)

(assert (= bs!542125 d!882322))

(declare-fun m!3488213 () Bool)

(assert (=> bs!542125 m!3488213))

(assert (=> bs!542125 m!3488213))

(declare-fun m!3488215 () Bool)

(assert (=> bs!542125 m!3488215))

(declare-fun m!3488217 () Bool)

(assert (=> bs!542125 m!3488217))

(assert (=> b!3212982 d!882322))

(declare-fun b!3215482 () Bool)

(declare-fun res!1308878 () Bool)

(declare-fun e!2004862 () Bool)

(assert (=> b!3215482 (=> res!1308878 e!2004862)))

(assert (=> b!3215482 (= res!1308878 (not (isEmpty!20288 (tail!5217 (_1!20936 (findLongestMatchInner!833 (regex!5226 (rule!7672 (h!41609 (t!239158 tokens!494)))) Nil!36187 (size!27274 Nil!36187) lt!1086561 lt!1086561 (size!27274 lt!1086561)))))))))

(declare-fun b!3215483 () Bool)

(declare-fun res!1308880 () Bool)

(declare-fun e!2004860 () Bool)

(assert (=> b!3215483 (=> res!1308880 e!2004860)))

(declare-fun e!2004861 () Bool)

(assert (=> b!3215483 (= res!1308880 e!2004861)))

(declare-fun res!1308875 () Bool)

(assert (=> b!3215483 (=> (not res!1308875) (not e!2004861))))

(declare-fun lt!1087878 () Bool)

(assert (=> b!3215483 (= res!1308875 lt!1087878)))

(declare-fun bm!232773 () Bool)

(declare-fun call!232778 () Bool)

(assert (=> bm!232773 (= call!232778 (isEmpty!20288 (_1!20936 (findLongestMatchInner!833 (regex!5226 (rule!7672 (h!41609 (t!239158 tokens!494)))) Nil!36187 (size!27274 Nil!36187) lt!1086561 lt!1086561 (size!27274 lt!1086561)))))))

(declare-fun b!3215484 () Bool)

(assert (=> b!3215484 (= e!2004861 (= (head!7047 (_1!20936 (findLongestMatchInner!833 (regex!5226 (rule!7672 (h!41609 (t!239158 tokens!494)))) Nil!36187 (size!27274 Nil!36187) lt!1086561 lt!1086561 (size!27274 lt!1086561)))) (c!539812 (regex!5226 (rule!7672 (h!41609 (t!239158 tokens!494)))))))))

(declare-fun b!3215485 () Bool)

(declare-fun e!2004865 () Bool)

(assert (=> b!3215485 (= e!2004865 (matchR!4619 (derivativeStep!2953 (regex!5226 (rule!7672 (h!41609 (t!239158 tokens!494)))) (head!7047 (_1!20936 (findLongestMatchInner!833 (regex!5226 (rule!7672 (h!41609 (t!239158 tokens!494)))) Nil!36187 (size!27274 Nil!36187) lt!1086561 lt!1086561 (size!27274 lt!1086561))))) (tail!5217 (_1!20936 (findLongestMatchInner!833 (regex!5226 (rule!7672 (h!41609 (t!239158 tokens!494)))) Nil!36187 (size!27274 Nil!36187) lt!1086561 lt!1086561 (size!27274 lt!1086561))))))))

(declare-fun d!882324 () Bool)

(declare-fun e!2004863 () Bool)

(assert (=> d!882324 e!2004863))

(declare-fun c!540534 () Bool)

(assert (=> d!882324 (= c!540534 ((_ is EmptyExpr!9985) (regex!5226 (rule!7672 (h!41609 (t!239158 tokens!494))))))))

(assert (=> d!882324 (= lt!1087878 e!2004865)))

(declare-fun c!540536 () Bool)

(assert (=> d!882324 (= c!540536 (isEmpty!20288 (_1!20936 (findLongestMatchInner!833 (regex!5226 (rule!7672 (h!41609 (t!239158 tokens!494)))) Nil!36187 (size!27274 Nil!36187) lt!1086561 lt!1086561 (size!27274 lt!1086561)))))))

(assert (=> d!882324 (validRegex!4554 (regex!5226 (rule!7672 (h!41609 (t!239158 tokens!494)))))))

(assert (=> d!882324 (= (matchR!4619 (regex!5226 (rule!7672 (h!41609 (t!239158 tokens!494)))) (_1!20936 (findLongestMatchInner!833 (regex!5226 (rule!7672 (h!41609 (t!239158 tokens!494)))) Nil!36187 (size!27274 Nil!36187) lt!1086561 lt!1086561 (size!27274 lt!1086561)))) lt!1087878)))

(declare-fun b!3215486 () Bool)

(declare-fun e!2004864 () Bool)

(assert (=> b!3215486 (= e!2004864 (not lt!1087878))))

(declare-fun b!3215487 () Bool)

(assert (=> b!3215487 (= e!2004862 (not (= (head!7047 (_1!20936 (findLongestMatchInner!833 (regex!5226 (rule!7672 (h!41609 (t!239158 tokens!494)))) Nil!36187 (size!27274 Nil!36187) lt!1086561 lt!1086561 (size!27274 lt!1086561)))) (c!539812 (regex!5226 (rule!7672 (h!41609 (t!239158 tokens!494))))))))))

(declare-fun b!3215488 () Bool)

(declare-fun res!1308877 () Bool)

(assert (=> b!3215488 (=> (not res!1308877) (not e!2004861))))

(assert (=> b!3215488 (= res!1308877 (isEmpty!20288 (tail!5217 (_1!20936 (findLongestMatchInner!833 (regex!5226 (rule!7672 (h!41609 (t!239158 tokens!494)))) Nil!36187 (size!27274 Nil!36187) lt!1086561 lt!1086561 (size!27274 lt!1086561))))))))

(declare-fun b!3215489 () Bool)

(declare-fun res!1308873 () Bool)

(assert (=> b!3215489 (=> (not res!1308873) (not e!2004861))))

(assert (=> b!3215489 (= res!1308873 (not call!232778))))

(declare-fun b!3215490 () Bool)

(declare-fun e!2004859 () Bool)

(assert (=> b!3215490 (= e!2004860 e!2004859)))

(declare-fun res!1308876 () Bool)

(assert (=> b!3215490 (=> (not res!1308876) (not e!2004859))))

(assert (=> b!3215490 (= res!1308876 (not lt!1087878))))

(declare-fun b!3215491 () Bool)

(assert (=> b!3215491 (= e!2004863 e!2004864)))

(declare-fun c!540535 () Bool)

(assert (=> b!3215491 (= c!540535 ((_ is EmptyLang!9985) (regex!5226 (rule!7672 (h!41609 (t!239158 tokens!494))))))))

(declare-fun b!3215492 () Bool)

(declare-fun res!1308874 () Bool)

(assert (=> b!3215492 (=> res!1308874 e!2004860)))

(assert (=> b!3215492 (= res!1308874 (not ((_ is ElementMatch!9985) (regex!5226 (rule!7672 (h!41609 (t!239158 tokens!494)))))))))

(assert (=> b!3215492 (= e!2004864 e!2004860)))

(declare-fun b!3215493 () Bool)

(assert (=> b!3215493 (= e!2004859 e!2004862)))

(declare-fun res!1308879 () Bool)

(assert (=> b!3215493 (=> res!1308879 e!2004862)))

(assert (=> b!3215493 (= res!1308879 call!232778)))

(declare-fun b!3215494 () Bool)

(assert (=> b!3215494 (= e!2004865 (nullable!3400 (regex!5226 (rule!7672 (h!41609 (t!239158 tokens!494))))))))

(declare-fun b!3215495 () Bool)

(assert (=> b!3215495 (= e!2004863 (= lt!1087878 call!232778))))

(assert (= (and d!882324 c!540536) b!3215494))

(assert (= (and d!882324 (not c!540536)) b!3215485))

(assert (= (and d!882324 c!540534) b!3215495))

(assert (= (and d!882324 (not c!540534)) b!3215491))

(assert (= (and b!3215491 c!540535) b!3215486))

(assert (= (and b!3215491 (not c!540535)) b!3215492))

(assert (= (and b!3215492 (not res!1308874)) b!3215483))

(assert (= (and b!3215483 res!1308875) b!3215489))

(assert (= (and b!3215489 res!1308873) b!3215488))

(assert (= (and b!3215488 res!1308877) b!3215484))

(assert (= (and b!3215483 (not res!1308880)) b!3215490))

(assert (= (and b!3215490 res!1308876) b!3215493))

(assert (= (and b!3215493 (not res!1308879)) b!3215482))

(assert (= (and b!3215482 (not res!1308878)) b!3215487))

(assert (= (or b!3215495 b!3215493 b!3215489) bm!232773))

(assert (=> b!3215494 m!3487061))

(declare-fun m!3488219 () Bool)

(assert (=> b!3215482 m!3488219))

(assert (=> b!3215482 m!3488219))

(declare-fun m!3488221 () Bool)

(assert (=> b!3215482 m!3488221))

(declare-fun m!3488223 () Bool)

(assert (=> b!3215484 m!3488223))

(assert (=> b!3215487 m!3488223))

(assert (=> b!3215485 m!3488223))

(assert (=> b!3215485 m!3488223))

(declare-fun m!3488225 () Bool)

(assert (=> b!3215485 m!3488225))

(assert (=> b!3215485 m!3488219))

(assert (=> b!3215485 m!3488225))

(assert (=> b!3215485 m!3488219))

(declare-fun m!3488227 () Bool)

(assert (=> b!3215485 m!3488227))

(assert (=> d!882324 m!3484209))

(assert (=> d!882324 m!3487075))

(assert (=> bm!232773 m!3484209))

(assert (=> b!3215488 m!3488219))

(assert (=> b!3215488 m!3488219))

(assert (=> b!3215488 m!3488221))

(assert (=> b!3213334 d!882324))

(declare-fun d!882326 () Bool)

(declare-fun e!2004869 () Bool)

(assert (=> d!882326 e!2004869))

(declare-fun res!1308882 () Bool)

(assert (=> d!882326 (=> (not res!1308882) (not e!2004869))))

(declare-fun lt!1087885 () tuple2!35604)

(assert (=> d!882326 (= res!1308882 (= (++!8688 (_1!20936 lt!1087885) (_2!20936 lt!1087885)) lt!1086561))))

(declare-fun e!2004870 () tuple2!35604)

(assert (=> d!882326 (= lt!1087885 e!2004870)))

(declare-fun c!540541 () Bool)

(assert (=> d!882326 (= c!540541 (lostCause!883 (regex!5226 (rule!7672 (h!41609 (t!239158 tokens!494))))))))

(declare-fun lt!1087879 () Unit!50676)

(declare-fun Unit!50692 () Unit!50676)

(assert (=> d!882326 (= lt!1087879 Unit!50692)))

(assert (=> d!882326 (= (getSuffix!1387 lt!1086561 Nil!36187) lt!1086561)))

(declare-fun lt!1087898 () Unit!50676)

(declare-fun lt!1087899 () Unit!50676)

(assert (=> d!882326 (= lt!1087898 lt!1087899)))

(declare-fun lt!1087906 () List!36311)

(assert (=> d!882326 (= lt!1086561 lt!1087906)))

(assert (=> d!882326 (= lt!1087899 (lemmaSamePrefixThenSameSuffix!1233 Nil!36187 lt!1086561 Nil!36187 lt!1087906 lt!1086561))))

(assert (=> d!882326 (= lt!1087906 (getSuffix!1387 lt!1086561 Nil!36187))))

(declare-fun lt!1087886 () Unit!50676)

(declare-fun lt!1087882 () Unit!50676)

(assert (=> d!882326 (= lt!1087886 lt!1087882)))

(assert (=> d!882326 (isPrefix!2786 Nil!36187 (++!8688 Nil!36187 lt!1086561))))

(assert (=> d!882326 (= lt!1087882 (lemmaConcatTwoListThenFirstIsPrefix!1767 Nil!36187 lt!1086561))))

(assert (=> d!882326 (validRegex!4554 (regex!5226 (rule!7672 (h!41609 (t!239158 tokens!494)))))))

(assert (=> d!882326 (= (findLongestMatchInner!833 (regex!5226 (rule!7672 (h!41609 (t!239158 tokens!494)))) Nil!36187 (size!27274 Nil!36187) lt!1086561 lt!1086561 (size!27274 lt!1086561)) lt!1087885)))

(declare-fun b!3215496 () Bool)

(declare-fun e!2004867 () tuple2!35604)

(assert (=> b!3215496 (= e!2004867 (tuple2!35605 Nil!36187 lt!1086561))))

(declare-fun b!3215497 () Bool)

(declare-fun e!2004868 () tuple2!35604)

(assert (=> b!3215497 (= e!2004868 (tuple2!35605 Nil!36187 lt!1086561))))

(declare-fun bm!232774 () Bool)

(declare-fun call!232779 () Unit!50676)

(assert (=> bm!232774 (= call!232779 (lemmaIsPrefixSameLengthThenSameList!516 lt!1086561 Nil!36187 lt!1086561))))

(declare-fun b!3215498 () Bool)

(declare-fun e!2004866 () Bool)

(assert (=> b!3215498 (= e!2004869 e!2004866)))

(declare-fun res!1308881 () Bool)

(assert (=> b!3215498 (=> res!1308881 e!2004866)))

(assert (=> b!3215498 (= res!1308881 (isEmpty!20288 (_1!20936 lt!1087885)))))

(declare-fun bm!232775 () Bool)

(declare-fun call!232780 () C!20156)

(assert (=> bm!232775 (= call!232780 (head!7047 lt!1086561))))

(declare-fun b!3215499 () Bool)

(assert (=> b!3215499 (= e!2004870 (tuple2!35605 Nil!36187 lt!1086561))))

(declare-fun bm!232776 () Bool)

(declare-fun call!232785 () Unit!50676)

(assert (=> bm!232776 (= call!232785 (lemmaIsPrefixRefl!1745 lt!1086561 lt!1086561))))

(declare-fun b!3215500 () Bool)

(declare-fun e!2004873 () tuple2!35604)

(assert (=> b!3215500 (= e!2004873 e!2004868)))

(declare-fun lt!1087903 () tuple2!35604)

(declare-fun call!232783 () tuple2!35604)

(assert (=> b!3215500 (= lt!1087903 call!232783)))

(declare-fun c!540538 () Bool)

(assert (=> b!3215500 (= c!540538 (isEmpty!20288 (_1!20936 lt!1087903)))))

(declare-fun bm!232777 () Bool)

(declare-fun call!232784 () List!36311)

(assert (=> bm!232777 (= call!232784 (tail!5217 lt!1086561))))

(declare-fun b!3215501 () Bool)

(assert (=> b!3215501 (= e!2004868 lt!1087903)))

(declare-fun bm!232778 () Bool)

(declare-fun call!232782 () Bool)

(assert (=> bm!232778 (= call!232782 (isPrefix!2786 lt!1086561 lt!1086561))))

(declare-fun b!3215502 () Bool)

(declare-fun e!2004872 () Unit!50676)

(declare-fun Unit!50693 () Unit!50676)

(assert (=> b!3215502 (= e!2004872 Unit!50693)))

(declare-fun bm!232779 () Bool)

(declare-fun call!232781 () Bool)

(assert (=> bm!232779 (= call!232781 (nullable!3400 (regex!5226 (rule!7672 (h!41609 (t!239158 tokens!494))))))))

(declare-fun b!3215503 () Bool)

(assert (=> b!3215503 (= e!2004873 call!232783)))

(declare-fun b!3215504 () Bool)

(declare-fun c!540540 () Bool)

(assert (=> b!3215504 (= c!540540 call!232781)))

(declare-fun lt!1087901 () Unit!50676)

(declare-fun lt!1087896 () Unit!50676)

(assert (=> b!3215504 (= lt!1087901 lt!1087896)))

(declare-fun lt!1087888 () C!20156)

(declare-fun lt!1087893 () List!36311)

(assert (=> b!3215504 (= (++!8688 (++!8688 Nil!36187 (Cons!36187 lt!1087888 Nil!36187)) lt!1087893) lt!1086561)))

(assert (=> b!3215504 (= lt!1087896 (lemmaMoveElementToOtherListKeepsConcatEq!1121 Nil!36187 lt!1087888 lt!1087893 lt!1086561))))

(assert (=> b!3215504 (= lt!1087893 (tail!5217 lt!1086561))))

(assert (=> b!3215504 (= lt!1087888 (head!7047 lt!1086561))))

(declare-fun lt!1087902 () Unit!50676)

(declare-fun lt!1087897 () Unit!50676)

(assert (=> b!3215504 (= lt!1087902 lt!1087897)))

(assert (=> b!3215504 (isPrefix!2786 (++!8688 Nil!36187 (Cons!36187 (head!7047 (getSuffix!1387 lt!1086561 Nil!36187)) Nil!36187)) lt!1086561)))

(assert (=> b!3215504 (= lt!1087897 (lemmaAddHeadSuffixToPrefixStillPrefix!509 Nil!36187 lt!1086561))))

(declare-fun lt!1087887 () Unit!50676)

(declare-fun lt!1087889 () Unit!50676)

(assert (=> b!3215504 (= lt!1087887 lt!1087889)))

(assert (=> b!3215504 (= lt!1087889 (lemmaAddHeadSuffixToPrefixStillPrefix!509 Nil!36187 lt!1086561))))

(declare-fun lt!1087890 () List!36311)

(assert (=> b!3215504 (= lt!1087890 (++!8688 Nil!36187 (Cons!36187 (head!7047 lt!1086561) Nil!36187)))))

(declare-fun lt!1087892 () Unit!50676)

(assert (=> b!3215504 (= lt!1087892 e!2004872)))

(declare-fun c!540539 () Bool)

(assert (=> b!3215504 (= c!540539 (= (size!27274 Nil!36187) (size!27274 lt!1086561)))))

(declare-fun lt!1087891 () Unit!50676)

(declare-fun lt!1087905 () Unit!50676)

(assert (=> b!3215504 (= lt!1087891 lt!1087905)))

(assert (=> b!3215504 (<= (size!27274 Nil!36187) (size!27274 lt!1086561))))

(assert (=> b!3215504 (= lt!1087905 (lemmaIsPrefixThenSmallerEqSize!317 Nil!36187 lt!1086561))))

(declare-fun e!2004871 () tuple2!35604)

(assert (=> b!3215504 (= e!2004871 e!2004873)))

(declare-fun b!3215505 () Bool)

(assert (=> b!3215505 (= e!2004867 (tuple2!35605 Nil!36187 Nil!36187))))

(declare-fun bm!232780 () Bool)

(declare-fun call!232786 () Regex!9985)

(assert (=> bm!232780 (= call!232783 (findLongestMatchInner!833 call!232786 lt!1087890 (+ (size!27274 Nil!36187) 1) call!232784 lt!1086561 (size!27274 lt!1086561)))))

(declare-fun b!3215506 () Bool)

(declare-fun c!540537 () Bool)

(assert (=> b!3215506 (= c!540537 call!232781)))

(declare-fun lt!1087900 () Unit!50676)

(declare-fun lt!1087883 () Unit!50676)

(assert (=> b!3215506 (= lt!1087900 lt!1087883)))

(assert (=> b!3215506 (= lt!1086561 Nil!36187)))

(assert (=> b!3215506 (= lt!1087883 call!232779)))

(declare-fun lt!1087904 () Unit!50676)

(declare-fun lt!1087895 () Unit!50676)

(assert (=> b!3215506 (= lt!1087904 lt!1087895)))

(assert (=> b!3215506 call!232782))

(assert (=> b!3215506 (= lt!1087895 call!232785)))

(assert (=> b!3215506 (= e!2004871 e!2004867)))

(declare-fun b!3215507 () Bool)

(assert (=> b!3215507 (= e!2004866 (>= (size!27274 (_1!20936 lt!1087885)) (size!27274 Nil!36187)))))

(declare-fun b!3215508 () Bool)

(assert (=> b!3215508 (= e!2004870 e!2004871)))

(declare-fun c!540542 () Bool)

(assert (=> b!3215508 (= c!540542 (= (size!27274 Nil!36187) (size!27274 lt!1086561)))))

(declare-fun b!3215509 () Bool)

(declare-fun Unit!50694 () Unit!50676)

(assert (=> b!3215509 (= e!2004872 Unit!50694)))

(declare-fun lt!1087884 () Unit!50676)

(assert (=> b!3215509 (= lt!1087884 call!232785)))

(assert (=> b!3215509 call!232782))

(declare-fun lt!1087881 () Unit!50676)

(assert (=> b!3215509 (= lt!1087881 lt!1087884)))

(declare-fun lt!1087894 () Unit!50676)

(assert (=> b!3215509 (= lt!1087894 call!232779)))

(assert (=> b!3215509 (= lt!1086561 Nil!36187)))

(declare-fun lt!1087880 () Unit!50676)

(assert (=> b!3215509 (= lt!1087880 lt!1087894)))

(assert (=> b!3215509 false))

(declare-fun bm!232781 () Bool)

(assert (=> bm!232781 (= call!232786 (derivativeStep!2953 (regex!5226 (rule!7672 (h!41609 (t!239158 tokens!494)))) call!232780))))

(assert (= (and d!882326 c!540541) b!3215499))

(assert (= (and d!882326 (not c!540541)) b!3215508))

(assert (= (and b!3215508 c!540542) b!3215506))

(assert (= (and b!3215508 (not c!540542)) b!3215504))

(assert (= (and b!3215506 c!540537) b!3215505))

(assert (= (and b!3215506 (not c!540537)) b!3215496))

(assert (= (and b!3215504 c!540539) b!3215509))

(assert (= (and b!3215504 (not c!540539)) b!3215502))

(assert (= (and b!3215504 c!540540) b!3215500))

(assert (= (and b!3215504 (not c!540540)) b!3215503))

(assert (= (and b!3215500 c!540538) b!3215497))

(assert (= (and b!3215500 (not c!540538)) b!3215501))

(assert (= (or b!3215500 b!3215503) bm!232775))

(assert (= (or b!3215500 b!3215503) bm!232777))

(assert (= (or b!3215500 b!3215503) bm!232781))

(assert (= (or b!3215500 b!3215503) bm!232780))

(assert (= (or b!3215506 b!3215509) bm!232776))

(assert (= (or b!3215506 b!3215509) bm!232778))

(assert (= (or b!3215506 b!3215509) bm!232774))

(assert (= (or b!3215506 b!3215504) bm!232779))

(assert (= (and d!882326 res!1308882) b!3215498))

(assert (= (and b!3215498 (not res!1308881)) b!3215507))

(declare-fun m!3488229 () Bool)

(assert (=> b!3215498 m!3488229))

(declare-fun m!3488231 () Bool)

(assert (=> bm!232776 m!3488231))

(declare-fun m!3488233 () Bool)

(assert (=> bm!232781 m!3488233))

(assert (=> bm!232775 m!3483337))

(declare-fun m!3488235 () Bool)

(assert (=> b!3215500 m!3488235))

(assert (=> bm!232777 m!3484653))

(declare-fun m!3488237 () Bool)

(assert (=> bm!232778 m!3488237))

(assert (=> bm!232779 m!3487061))

(assert (=> bm!232780 m!3483299))

(declare-fun m!3488239 () Bool)

(assert (=> bm!232780 m!3488239))

(declare-fun m!3488241 () Bool)

(assert (=> b!3215507 m!3488241))

(assert (=> b!3215507 m!3484113))

(assert (=> b!3215504 m!3483299))

(assert (=> b!3215504 m!3484653))

(declare-fun m!3488243 () Bool)

(assert (=> b!3215504 m!3488243))

(assert (=> b!3215504 m!3483337))

(declare-fun m!3488245 () Bool)

(assert (=> b!3215504 m!3488245))

(declare-fun m!3488247 () Bool)

(assert (=> b!3215504 m!3488247))

(assert (=> b!3215504 m!3488245))

(declare-fun m!3488249 () Bool)

(assert (=> b!3215504 m!3488249))

(declare-fun m!3488251 () Bool)

(assert (=> b!3215504 m!3488251))

(assert (=> b!3215504 m!3488249))

(declare-fun m!3488253 () Bool)

(assert (=> b!3215504 m!3488253))

(declare-fun m!3488255 () Bool)

(assert (=> b!3215504 m!3488255))

(assert (=> b!3215504 m!3488253))

(declare-fun m!3488257 () Bool)

(assert (=> b!3215504 m!3488257))

(declare-fun m!3488259 () Bool)

(assert (=> b!3215504 m!3488259))

(declare-fun m!3488261 () Bool)

(assert (=> b!3215504 m!3488261))

(assert (=> b!3215504 m!3484113))

(declare-fun m!3488263 () Bool)

(assert (=> bm!232774 m!3488263))

(declare-fun m!3488265 () Bool)

(assert (=> d!882326 m!3488265))

(declare-fun m!3488267 () Bool)

(assert (=> d!882326 m!3488267))

(declare-fun m!3488269 () Bool)

(assert (=> d!882326 m!3488269))

(declare-fun m!3488271 () Bool)

(assert (=> d!882326 m!3488271))

(declare-fun m!3488273 () Bool)

(assert (=> d!882326 m!3488273))

(assert (=> d!882326 m!3487075))

(assert (=> d!882326 m!3488269))

(assert (=> d!882326 m!3488253))

(declare-fun m!3488275 () Bool)

(assert (=> d!882326 m!3488275))

(assert (=> b!3213334 d!882326))

(assert (=> b!3213334 d!881602))

(assert (=> b!3213334 d!880990))

(declare-fun d!882328 () Bool)

(declare-fun res!1308887 () Bool)

(declare-fun e!2004874 () Bool)

(assert (=> d!882328 (=> res!1308887 e!2004874)))

(assert (=> d!882328 (= res!1308887 (not ((_ is Node!10828) (c!539814 lt!1086604))))))

(assert (=> d!882328 (= (isBalanced!3220 (c!539814 lt!1086604)) e!2004874)))

(declare-fun b!3215510 () Bool)

(declare-fun res!1308888 () Bool)

(declare-fun e!2004875 () Bool)

(assert (=> b!3215510 (=> (not res!1308888) (not e!2004875))))

(assert (=> b!3215510 (= res!1308888 (isBalanced!3220 (right!28473 (c!539814 lt!1086604))))))

(declare-fun b!3215511 () Bool)

(declare-fun res!1308885 () Bool)

(assert (=> b!3215511 (=> (not res!1308885) (not e!2004875))))

(assert (=> b!3215511 (= res!1308885 (isBalanced!3220 (left!28143 (c!539814 lt!1086604))))))

(declare-fun b!3215512 () Bool)

(declare-fun res!1308884 () Bool)

(assert (=> b!3215512 (=> (not res!1308884) (not e!2004875))))

(assert (=> b!3215512 (= res!1308884 (not (isEmpty!20293 (left!28143 (c!539814 lt!1086604)))))))

(declare-fun b!3215513 () Bool)

(declare-fun res!1308886 () Bool)

(assert (=> b!3215513 (=> (not res!1308886) (not e!2004875))))

(assert (=> b!3215513 (= res!1308886 (<= (- (height!1557 (left!28143 (c!539814 lt!1086604))) (height!1557 (right!28473 (c!539814 lt!1086604)))) 1))))

(declare-fun b!3215514 () Bool)

(assert (=> b!3215514 (= e!2004875 (not (isEmpty!20293 (right!28473 (c!539814 lt!1086604)))))))

(declare-fun b!3215515 () Bool)

(assert (=> b!3215515 (= e!2004874 e!2004875)))

(declare-fun res!1308883 () Bool)

(assert (=> b!3215515 (=> (not res!1308883) (not e!2004875))))

(assert (=> b!3215515 (= res!1308883 (<= (- 1) (- (height!1557 (left!28143 (c!539814 lt!1086604))) (height!1557 (right!28473 (c!539814 lt!1086604))))))))

(assert (= (and d!882328 (not res!1308887)) b!3215515))

(assert (= (and b!3215515 res!1308883) b!3215513))

(assert (= (and b!3215513 res!1308886) b!3215511))

(assert (= (and b!3215511 res!1308885) b!3215510))

(assert (= (and b!3215510 res!1308888) b!3215512))

(assert (= (and b!3215512 res!1308884) b!3215514))

(declare-fun m!3488277 () Bool)

(assert (=> b!3215510 m!3488277))

(declare-fun m!3488279 () Bool)

(assert (=> b!3215511 m!3488279))

(declare-fun m!3488281 () Bool)

(assert (=> b!3215513 m!3488281))

(declare-fun m!3488283 () Bool)

(assert (=> b!3215513 m!3488283))

(declare-fun m!3488285 () Bool)

(assert (=> b!3215512 m!3488285))

(declare-fun m!3488287 () Bool)

(assert (=> b!3215514 m!3488287))

(assert (=> b!3215515 m!3488281))

(assert (=> b!3215515 m!3488283))

(assert (=> b!3212986 d!882328))

(declare-fun d!882330 () Bool)

(assert (=> d!882330 (= (isEmpty!20283 lt!1086553) (not ((_ is Some!7152) lt!1086553)))))

(assert (=> d!880978 d!882330))

(assert (=> b!3213704 d!880890))

(declare-fun b!3215518 () Bool)

(declare-fun res!1308890 () Bool)

(declare-fun e!2004876 () Bool)

(assert (=> b!3215518 (=> (not res!1308890) (not e!2004876))))

(declare-fun lt!1087907 () List!36311)

(assert (=> b!3215518 (= res!1308890 (= (size!27274 lt!1087907) (+ (size!27274 (ite c!539867 call!232515 call!232512)) (size!27274 (ite c!539867 call!232512 call!232515)))))))

(declare-fun e!2004877 () List!36311)

(declare-fun b!3215517 () Bool)

(assert (=> b!3215517 (= e!2004877 (Cons!36187 (h!41607 (ite c!539867 call!232515 call!232512)) (++!8688 (t!239156 (ite c!539867 call!232515 call!232512)) (ite c!539867 call!232512 call!232515))))))

(declare-fun b!3215516 () Bool)

(assert (=> b!3215516 (= e!2004877 (ite c!539867 call!232512 call!232515))))

(declare-fun d!882332 () Bool)

(assert (=> d!882332 e!2004876))

(declare-fun res!1308889 () Bool)

(assert (=> d!882332 (=> (not res!1308889) (not e!2004876))))

(assert (=> d!882332 (= res!1308889 (= (content!4894 lt!1087907) ((_ map or) (content!4894 (ite c!539867 call!232515 call!232512)) (content!4894 (ite c!539867 call!232512 call!232515)))))))

(assert (=> d!882332 (= lt!1087907 e!2004877)))

(declare-fun c!540543 () Bool)

(assert (=> d!882332 (= c!540543 ((_ is Nil!36187) (ite c!539867 call!232515 call!232512)))))

(assert (=> d!882332 (= (++!8688 (ite c!539867 call!232515 call!232512) (ite c!539867 call!232512 call!232515)) lt!1087907)))

(declare-fun b!3215519 () Bool)

(assert (=> b!3215519 (= e!2004876 (or (not (= (ite c!539867 call!232512 call!232515) Nil!36187)) (= lt!1087907 (ite c!539867 call!232515 call!232512))))))

(assert (= (and d!882332 c!540543) b!3215516))

(assert (= (and d!882332 (not c!540543)) b!3215517))

(assert (= (and d!882332 res!1308889) b!3215518))

(assert (= (and b!3215518 res!1308890) b!3215519))

(declare-fun m!3488289 () Bool)

(assert (=> b!3215518 m!3488289))

(declare-fun m!3488291 () Bool)

(assert (=> b!3215518 m!3488291))

(declare-fun m!3488293 () Bool)

(assert (=> b!3215518 m!3488293))

(declare-fun m!3488295 () Bool)

(assert (=> b!3215517 m!3488295))

(declare-fun m!3488297 () Bool)

(assert (=> d!882332 m!3488297))

(declare-fun m!3488299 () Bool)

(assert (=> d!882332 m!3488299))

(declare-fun m!3488301 () Bool)

(assert (=> d!882332 m!3488301))

(assert (=> bm!232507 d!882332))

(assert (=> b!3213336 d!881608))

(declare-fun d!882334 () Bool)

(assert (=> d!882334 (= (get!11524 (getRuleFromTag!931 thiss!18206 rules!2135 (tag!5754 (rule!7672 separatorToken!241)))) (v!35712 (getRuleFromTag!931 thiss!18206 rules!2135 (tag!5754 (rule!7672 separatorToken!241)))))))

(assert (=> b!3213325 d!882334))

(assert (=> b!3213325 d!881004))

(declare-fun b!3215520 () Bool)

(declare-fun res!1308896 () Bool)

(declare-fun e!2004881 () Bool)

(assert (=> b!3215520 (=> res!1308896 e!2004881)))

(assert (=> b!3215520 (= res!1308896 (not (isEmpty!20288 (tail!5217 (list!12875 (charsOf!3242 separatorToken!241))))))))

(declare-fun b!3215521 () Bool)

(declare-fun res!1308898 () Bool)

(declare-fun e!2004879 () Bool)

(assert (=> b!3215521 (=> res!1308898 e!2004879)))

(declare-fun e!2004880 () Bool)

(assert (=> b!3215521 (= res!1308898 e!2004880)))

(declare-fun res!1308893 () Bool)

(assert (=> b!3215521 (=> (not res!1308893) (not e!2004880))))

(declare-fun lt!1087908 () Bool)

(assert (=> b!3215521 (= res!1308893 lt!1087908)))

(declare-fun bm!232782 () Bool)

(declare-fun call!232787 () Bool)

(assert (=> bm!232782 (= call!232787 (isEmpty!20288 (list!12875 (charsOf!3242 separatorToken!241))))))

(declare-fun b!3215522 () Bool)

(assert (=> b!3215522 (= e!2004880 (= (head!7047 (list!12875 (charsOf!3242 separatorToken!241))) (c!539812 (regex!5226 (get!11524 (getRuleFromTag!931 thiss!18206 rules!2135 (tag!5754 (rule!7672 separatorToken!241))))))))))

(declare-fun e!2004884 () Bool)

(declare-fun b!3215523 () Bool)

(assert (=> b!3215523 (= e!2004884 (matchR!4619 (derivativeStep!2953 (regex!5226 (get!11524 (getRuleFromTag!931 thiss!18206 rules!2135 (tag!5754 (rule!7672 separatorToken!241))))) (head!7047 (list!12875 (charsOf!3242 separatorToken!241)))) (tail!5217 (list!12875 (charsOf!3242 separatorToken!241)))))))

(declare-fun d!882336 () Bool)

(declare-fun e!2004882 () Bool)

(assert (=> d!882336 e!2004882))

(declare-fun c!540544 () Bool)

(assert (=> d!882336 (= c!540544 ((_ is EmptyExpr!9985) (regex!5226 (get!11524 (getRuleFromTag!931 thiss!18206 rules!2135 (tag!5754 (rule!7672 separatorToken!241)))))))))

(assert (=> d!882336 (= lt!1087908 e!2004884)))

(declare-fun c!540546 () Bool)

(assert (=> d!882336 (= c!540546 (isEmpty!20288 (list!12875 (charsOf!3242 separatorToken!241))))))

(assert (=> d!882336 (validRegex!4554 (regex!5226 (get!11524 (getRuleFromTag!931 thiss!18206 rules!2135 (tag!5754 (rule!7672 separatorToken!241))))))))

(assert (=> d!882336 (= (matchR!4619 (regex!5226 (get!11524 (getRuleFromTag!931 thiss!18206 rules!2135 (tag!5754 (rule!7672 separatorToken!241))))) (list!12875 (charsOf!3242 separatorToken!241))) lt!1087908)))

(declare-fun b!3215524 () Bool)

(declare-fun e!2004883 () Bool)

(assert (=> b!3215524 (= e!2004883 (not lt!1087908))))

(declare-fun b!3215525 () Bool)

(assert (=> b!3215525 (= e!2004881 (not (= (head!7047 (list!12875 (charsOf!3242 separatorToken!241))) (c!539812 (regex!5226 (get!11524 (getRuleFromTag!931 thiss!18206 rules!2135 (tag!5754 (rule!7672 separatorToken!241)))))))))))

(declare-fun b!3215526 () Bool)

(declare-fun res!1308895 () Bool)

(assert (=> b!3215526 (=> (not res!1308895) (not e!2004880))))

(assert (=> b!3215526 (= res!1308895 (isEmpty!20288 (tail!5217 (list!12875 (charsOf!3242 separatorToken!241)))))))

(declare-fun b!3215527 () Bool)

(declare-fun res!1308891 () Bool)

(assert (=> b!3215527 (=> (not res!1308891) (not e!2004880))))

(assert (=> b!3215527 (= res!1308891 (not call!232787))))

(declare-fun b!3215528 () Bool)

(declare-fun e!2004878 () Bool)

(assert (=> b!3215528 (= e!2004879 e!2004878)))

(declare-fun res!1308894 () Bool)

(assert (=> b!3215528 (=> (not res!1308894) (not e!2004878))))

(assert (=> b!3215528 (= res!1308894 (not lt!1087908))))

(declare-fun b!3215529 () Bool)

(assert (=> b!3215529 (= e!2004882 e!2004883)))

(declare-fun c!540545 () Bool)

(assert (=> b!3215529 (= c!540545 ((_ is EmptyLang!9985) (regex!5226 (get!11524 (getRuleFromTag!931 thiss!18206 rules!2135 (tag!5754 (rule!7672 separatorToken!241)))))))))

(declare-fun b!3215530 () Bool)

(declare-fun res!1308892 () Bool)

(assert (=> b!3215530 (=> res!1308892 e!2004879)))

(assert (=> b!3215530 (= res!1308892 (not ((_ is ElementMatch!9985) (regex!5226 (get!11524 (getRuleFromTag!931 thiss!18206 rules!2135 (tag!5754 (rule!7672 separatorToken!241))))))))))

(assert (=> b!3215530 (= e!2004883 e!2004879)))

(declare-fun b!3215531 () Bool)

(assert (=> b!3215531 (= e!2004878 e!2004881)))

(declare-fun res!1308897 () Bool)

(assert (=> b!3215531 (=> res!1308897 e!2004881)))

(assert (=> b!3215531 (= res!1308897 call!232787)))

(declare-fun b!3215532 () Bool)

(assert (=> b!3215532 (= e!2004884 (nullable!3400 (regex!5226 (get!11524 (getRuleFromTag!931 thiss!18206 rules!2135 (tag!5754 (rule!7672 separatorToken!241)))))))))

(declare-fun b!3215533 () Bool)

(assert (=> b!3215533 (= e!2004882 (= lt!1087908 call!232787))))

(assert (= (and d!882336 c!540546) b!3215532))

(assert (= (and d!882336 (not c!540546)) b!3215523))

(assert (= (and d!882336 c!540544) b!3215533))

(assert (= (and d!882336 (not c!540544)) b!3215529))

(assert (= (and b!3215529 c!540545) b!3215524))

(assert (= (and b!3215529 (not c!540545)) b!3215530))

(assert (= (and b!3215530 (not res!1308892)) b!3215521))

(assert (= (and b!3215521 res!1308893) b!3215527))

(assert (= (and b!3215527 res!1308891) b!3215526))

(assert (= (and b!3215526 res!1308895) b!3215522))

(assert (= (and b!3215521 (not res!1308898)) b!3215528))

(assert (= (and b!3215528 res!1308894) b!3215531))

(assert (= (and b!3215531 (not res!1308897)) b!3215520))

(assert (= (and b!3215520 (not res!1308896)) b!3215525))

(assert (= (or b!3215533 b!3215531 b!3215527) bm!232782))

(declare-fun m!3488303 () Bool)

(assert (=> b!3215532 m!3488303))

(assert (=> b!3215520 m!3483469))

(declare-fun m!3488305 () Bool)

(assert (=> b!3215520 m!3488305))

(assert (=> b!3215520 m!3488305))

(declare-fun m!3488307 () Bool)

(assert (=> b!3215520 m!3488307))

(assert (=> b!3215522 m!3483469))

(declare-fun m!3488309 () Bool)

(assert (=> b!3215522 m!3488309))

(assert (=> b!3215525 m!3483469))

(assert (=> b!3215525 m!3488309))

(assert (=> b!3215523 m!3483469))

(assert (=> b!3215523 m!3488309))

(assert (=> b!3215523 m!3488309))

(declare-fun m!3488311 () Bool)

(assert (=> b!3215523 m!3488311))

(assert (=> b!3215523 m!3483469))

(assert (=> b!3215523 m!3488305))

(assert (=> b!3215523 m!3488311))

(assert (=> b!3215523 m!3488305))

(declare-fun m!3488313 () Bool)

(assert (=> b!3215523 m!3488313))

(assert (=> d!882336 m!3483469))

(declare-fun m!3488315 () Bool)

(assert (=> d!882336 m!3488315))

(declare-fun m!3488317 () Bool)

(assert (=> d!882336 m!3488317))

(assert (=> bm!232782 m!3483469))

(assert (=> bm!232782 m!3488315))

(assert (=> b!3215526 m!3483469))

(assert (=> b!3215526 m!3488305))

(assert (=> b!3215526 m!3488305))

(assert (=> b!3215526 m!3488307))

(assert (=> b!3213325 d!882336))

(assert (=> b!3213325 d!881094))

(assert (=> b!3213325 d!881106))

(declare-fun d!882338 () Bool)

(declare-fun lt!1087909 () Token!9818)

(assert (=> d!882338 (= lt!1087909 (apply!8209 (list!12877 (_1!20931 lt!1086836)) 0))))

(assert (=> d!882338 (= lt!1087909 (apply!8210 (c!539814 (_1!20931 lt!1086836)) 0))))

(declare-fun e!2004885 () Bool)

(assert (=> d!882338 e!2004885))

(declare-fun res!1308899 () Bool)

(assert (=> d!882338 (=> (not res!1308899) (not e!2004885))))

(assert (=> d!882338 (= res!1308899 (<= 0 0))))

(assert (=> d!882338 (= (apply!8207 (_1!20931 lt!1086836) 0) lt!1087909)))

(declare-fun b!3215534 () Bool)

(assert (=> b!3215534 (= e!2004885 (< 0 (size!27275 (_1!20931 lt!1086836))))))

(assert (= (and d!882338 res!1308899) b!3215534))

(declare-fun m!3488319 () Bool)

(assert (=> d!882338 m!3488319))

(assert (=> d!882338 m!3488319))

(declare-fun m!3488321 () Bool)

(assert (=> d!882338 m!3488321))

(declare-fun m!3488323 () Bool)

(assert (=> d!882338 m!3488323))

(assert (=> b!3215534 m!3484385))

(assert (=> b!3213373 d!882338))

(assert (=> bm!232552 d!881444))

(declare-fun d!882340 () Bool)

(assert (=> d!882340 (= (list!12877 (_1!20931 lt!1086637)) (list!12881 (c!539814 (_1!20931 lt!1086637))))))

(declare-fun bs!542126 () Bool)

(assert (= bs!542126 d!882340))

(declare-fun m!3488325 () Bool)

(assert (=> bs!542126 m!3488325))

(assert (=> b!3213021 d!882340))

(assert (=> b!3213021 d!881926))

(assert (=> b!3213021 d!881928))

(assert (=> b!3213497 d!882028))

(assert (=> b!3213497 d!882032))

(declare-fun d!882342 () Bool)

(assert (=> d!882342 (= (isEmpty!20288 (list!12875 (_2!20931 lt!1086556))) ((_ is Nil!36187) (list!12875 (_2!20931 lt!1086556))))))

(assert (=> d!881054 d!882342))

(declare-fun d!882344 () Bool)

(assert (=> d!882344 (= (list!12875 (_2!20931 lt!1086556)) (list!12879 (c!539813 (_2!20931 lt!1086556))))))

(declare-fun bs!542127 () Bool)

(assert (= bs!542127 d!882344))

(declare-fun m!3488327 () Bool)

(assert (=> bs!542127 m!3488327))

(assert (=> d!881054 d!882344))

(declare-fun d!882346 () Bool)

(declare-fun lt!1087912 () Bool)

(assert (=> d!882346 (= lt!1087912 (isEmpty!20288 (list!12879 (c!539813 (_2!20931 lt!1086556)))))))

(assert (=> d!882346 (= lt!1087912 (= (size!27283 (c!539813 (_2!20931 lt!1086556))) 0))))

(assert (=> d!882346 (= (isEmpty!20289 (c!539813 (_2!20931 lt!1086556))) lt!1087912)))

(declare-fun bs!542128 () Bool)

(assert (= bs!542128 d!882346))

(assert (=> bs!542128 m!3488327))

(assert (=> bs!542128 m!3488327))

(declare-fun m!3488329 () Bool)

(assert (=> bs!542128 m!3488329))

(declare-fun m!3488331 () Bool)

(assert (=> bs!542128 m!3488331))

(assert (=> d!881054 d!882346))

(declare-fun d!882348 () Bool)

(assert (=> d!882348 (= (isEmpty!20287 lt!1086777) (not ((_ is Some!7153) lt!1086777)))))

(assert (=> d!880992 d!882348))

(declare-fun d!882350 () Bool)

(declare-fun e!2004893 () Bool)

(assert (=> d!882350 e!2004893))

(declare-fun res!1308909 () Bool)

(assert (=> d!882350 (=> res!1308909 e!2004893)))

(declare-fun lt!1087915 () Bool)

(assert (=> d!882350 (= res!1308909 (not lt!1087915))))

(declare-fun e!2004894 () Bool)

(assert (=> d!882350 (= lt!1087915 e!2004894)))

(declare-fun res!1308908 () Bool)

(assert (=> d!882350 (=> res!1308908 e!2004894)))

(assert (=> d!882350 (= res!1308908 ((_ is Nil!36187) lt!1086548))))

(assert (=> d!882350 (= (isPrefix!2786 lt!1086548 lt!1086548) lt!1087915)))

(declare-fun b!3215545 () Bool)

(declare-fun e!2004892 () Bool)

(assert (=> b!3215545 (= e!2004892 (isPrefix!2786 (tail!5217 lt!1086548) (tail!5217 lt!1086548)))))

(declare-fun b!3215546 () Bool)

(assert (=> b!3215546 (= e!2004893 (>= (size!27274 lt!1086548) (size!27274 lt!1086548)))))

(declare-fun b!3215543 () Bool)

(assert (=> b!3215543 (= e!2004894 e!2004892)))

(declare-fun res!1308910 () Bool)

(assert (=> b!3215543 (=> (not res!1308910) (not e!2004892))))

(assert (=> b!3215543 (= res!1308910 (not ((_ is Nil!36187) lt!1086548)))))

(declare-fun b!3215544 () Bool)

(declare-fun res!1308911 () Bool)

(assert (=> b!3215544 (=> (not res!1308911) (not e!2004892))))

(assert (=> b!3215544 (= res!1308911 (= (head!7047 lt!1086548) (head!7047 lt!1086548)))))

(assert (= (and d!882350 (not res!1308908)) b!3215543))

(assert (= (and b!3215543 res!1308910) b!3215544))

(assert (= (and b!3215544 res!1308911) b!3215545))

(assert (= (and d!882350 (not res!1308909)) b!3215546))

(declare-fun m!3488333 () Bool)

(assert (=> b!3215545 m!3488333))

(assert (=> b!3215545 m!3488333))

(assert (=> b!3215545 m!3488333))

(assert (=> b!3215545 m!3488333))

(declare-fun m!3488335 () Bool)

(assert (=> b!3215545 m!3488335))

(assert (=> b!3215546 m!3484085))

(assert (=> b!3215546 m!3484085))

(declare-fun m!3488337 () Bool)

(assert (=> b!3215544 m!3488337))

(assert (=> b!3215544 m!3488337))

(assert (=> d!880992 d!882350))

(declare-fun d!882352 () Bool)

(assert (=> d!882352 (isPrefix!2786 lt!1086548 lt!1086548)))

(declare-fun lt!1087918 () Unit!50676)

(declare-fun choose!18777 (List!36311 List!36311) Unit!50676)

(assert (=> d!882352 (= lt!1087918 (choose!18777 lt!1086548 lt!1086548))))

(assert (=> d!882352 (= (lemmaIsPrefixRefl!1745 lt!1086548 lt!1086548) lt!1087918)))

(declare-fun bs!542129 () Bool)

(assert (= bs!542129 d!882352))

(assert (=> bs!542129 m!3484099))

(declare-fun m!3488339 () Bool)

(assert (=> bs!542129 m!3488339))

(assert (=> d!880992 d!882352))

(declare-fun bs!542130 () Bool)

(declare-fun d!882354 () Bool)

(assert (= bs!542130 (and d!882354 d!882208)))

(declare-fun lambda!117600 () Int)

(assert (=> bs!542130 (= lambda!117600 lambda!117597)))

(assert (=> d!882354 true))

(declare-fun lt!1087921 () Bool)

(assert (=> d!882354 (= lt!1087921 (forall!7401 rules!2135 lambda!117600))))

(declare-fun e!2004900 () Bool)

(assert (=> d!882354 (= lt!1087921 e!2004900)))

(declare-fun res!1308916 () Bool)

(assert (=> d!882354 (=> res!1308916 e!2004900)))

(assert (=> d!882354 (= res!1308916 (not ((_ is Cons!36188) rules!2135)))))

(assert (=> d!882354 (= (rulesValidInductive!1779 thiss!18206 rules!2135) lt!1087921)))

(declare-fun b!3215551 () Bool)

(declare-fun e!2004899 () Bool)

(assert (=> b!3215551 (= e!2004900 e!2004899)))

(declare-fun res!1308917 () Bool)

(assert (=> b!3215551 (=> (not res!1308917) (not e!2004899))))

(assert (=> b!3215551 (= res!1308917 (ruleValid!1650 thiss!18206 (h!41608 rules!2135)))))

(declare-fun b!3215552 () Bool)

(assert (=> b!3215552 (= e!2004899 (rulesValidInductive!1779 thiss!18206 (t!239157 rules!2135)))))

(assert (= (and d!882354 (not res!1308916)) b!3215551))

(assert (= (and b!3215551 res!1308917) b!3215552))

(declare-fun m!3488341 () Bool)

(assert (=> d!882354 m!3488341))

(assert (=> b!3215551 m!3487313))

(assert (=> b!3215552 m!3486407))

(assert (=> d!880992 d!882354))

(declare-fun d!882356 () Bool)

(assert (=> d!882356 (= (inv!49056 (dynLambda!14631 (toChars!7173 (transformation!5226 (rule!7672 (h!41609 (t!239158 tokens!494))))) (value!169401 (h!41609 (t!239158 tokens!494))))) (isBalanced!3222 (c!539813 (dynLambda!14631 (toChars!7173 (transformation!5226 (rule!7672 (h!41609 (t!239158 tokens!494))))) (value!169401 (h!41609 (t!239158 tokens!494)))))))))

(declare-fun bs!542131 () Bool)

(assert (= bs!542131 d!882356))

(declare-fun m!3488343 () Bool)

(assert (=> bs!542131 m!3488343))

(assert (=> tb!158207 d!882356))

(declare-fun d!882358 () Bool)

(declare-fun lt!1087922 () Bool)

(assert (=> d!882358 (= lt!1087922 (select (content!4897 rules!2135) (get!11524 lt!1086746)))))

(declare-fun e!2004901 () Bool)

(assert (=> d!882358 (= lt!1087922 e!2004901)))

(declare-fun res!1308918 () Bool)

(assert (=> d!882358 (=> (not res!1308918) (not e!2004901))))

(assert (=> d!882358 (= res!1308918 ((_ is Cons!36188) rules!2135))))

(assert (=> d!882358 (= (contains!6470 rules!2135 (get!11524 lt!1086746)) lt!1087922)))

(declare-fun b!3215553 () Bool)

(declare-fun e!2004902 () Bool)

(assert (=> b!3215553 (= e!2004901 e!2004902)))

(declare-fun res!1308919 () Bool)

(assert (=> b!3215553 (=> res!1308919 e!2004902)))

(assert (=> b!3215553 (= res!1308919 (= (h!41608 rules!2135) (get!11524 lt!1086746)))))

(declare-fun b!3215554 () Bool)

(assert (=> b!3215554 (= e!2004902 (contains!6470 (t!239157 rules!2135) (get!11524 lt!1086746)))))

(assert (= (and d!882358 res!1308918) b!3215553))

(assert (= (and b!3215553 (not res!1308919)) b!3215554))

(assert (=> d!882358 m!3486113))

(assert (=> d!882358 m!3484005))

(declare-fun m!3488345 () Bool)

(assert (=> d!882358 m!3488345))

(assert (=> b!3215554 m!3484005))

(declare-fun m!3488347 () Bool)

(assert (=> b!3215554 m!3488347))

(assert (=> b!3213198 d!882358))

(declare-fun d!882360 () Bool)

(assert (=> d!882360 (= (get!11524 lt!1086746) (v!35712 lt!1086746))))

(assert (=> b!3213198 d!882360))

(declare-fun d!882362 () Bool)

(declare-fun e!2004903 () Bool)

(assert (=> d!882362 e!2004903))

(declare-fun res!1308920 () Bool)

(assert (=> d!882362 (=> (not res!1308920) (not e!2004903))))

(declare-fun lt!1087923 () BalanceConc!21268)

(assert (=> d!882362 (= res!1308920 (= (list!12875 lt!1087923) lt!1086523))))

(assert (=> d!882362 (= lt!1087923 (BalanceConc!21269 (fromList!616 lt!1086523)))))

(assert (=> d!882362 (= (fromListB!1544 lt!1086523) lt!1087923)))

(declare-fun b!3215555 () Bool)

(assert (=> b!3215555 (= e!2004903 (isBalanced!3222 (fromList!616 lt!1086523)))))

(assert (= (and d!882362 res!1308920) b!3215555))

(declare-fun m!3488349 () Bool)

(assert (=> d!882362 m!3488349))

(declare-fun m!3488351 () Bool)

(assert (=> d!882362 m!3488351))

(assert (=> b!3215555 m!3488351))

(assert (=> b!3215555 m!3488351))

(declare-fun m!3488353 () Bool)

(assert (=> b!3215555 m!3488353))

(assert (=> d!881120 d!882362))

(declare-fun d!882364 () Bool)

(declare-fun lt!1087924 () Bool)

(assert (=> d!882364 (= lt!1087924 (select (content!4897 rules!2135) (get!11524 lt!1086684)))))

(declare-fun e!2004904 () Bool)

(assert (=> d!882364 (= lt!1087924 e!2004904)))

(declare-fun res!1308921 () Bool)

(assert (=> d!882364 (=> (not res!1308921) (not e!2004904))))

(assert (=> d!882364 (= res!1308921 ((_ is Cons!36188) rules!2135))))

(assert (=> d!882364 (= (contains!6470 rules!2135 (get!11524 lt!1086684)) lt!1087924)))

(declare-fun b!3215556 () Bool)

(declare-fun e!2004905 () Bool)

(assert (=> b!3215556 (= e!2004904 e!2004905)))

(declare-fun res!1308922 () Bool)

(assert (=> b!3215556 (=> res!1308922 e!2004905)))

(assert (=> b!3215556 (= res!1308922 (= (h!41608 rules!2135) (get!11524 lt!1086684)))))

(declare-fun b!3215557 () Bool)

(assert (=> b!3215557 (= e!2004905 (contains!6470 (t!239157 rules!2135) (get!11524 lt!1086684)))))

(assert (= (and d!882364 res!1308921) b!3215556))

(assert (= (and b!3215556 (not res!1308922)) b!3215557))

(assert (=> d!882364 m!3486113))

(assert (=> d!882364 m!3483853))

(declare-fun m!3488355 () Bool)

(assert (=> d!882364 m!3488355))

(assert (=> b!3215557 m!3483853))

(declare-fun m!3488357 () Bool)

(assert (=> b!3215557 m!3488357))

(assert (=> b!3213099 d!882364))

(declare-fun d!882366 () Bool)

(assert (=> d!882366 (= (get!11524 lt!1086684) (v!35712 lt!1086684))))

(assert (=> b!3213099 d!882366))

(declare-fun d!882368 () Bool)

(assert (=> d!882368 (= (list!12875 (_2!20931 lt!1086753)) (list!12879 (c!539813 (_2!20931 lt!1086753))))))

(declare-fun bs!542132 () Bool)

(assert (= bs!542132 d!882368))

(declare-fun m!3488359 () Bool)

(assert (=> bs!542132 m!3488359))

(assert (=> b!3213210 d!882368))

(assert (=> b!3213210 d!881512))

(assert (=> b!3213210 d!881530))

(declare-fun d!882370 () Bool)

(declare-fun lt!1087925 () Int)

(assert (=> d!882370 (>= lt!1087925 0)))

(declare-fun e!2004906 () Int)

(assert (=> d!882370 (= lt!1087925 e!2004906)))

(declare-fun c!540547 () Bool)

(assert (=> d!882370 (= c!540547 ((_ is Nil!36187) (_2!20932 (get!11526 lt!1086777))))))

(assert (=> d!882370 (= (size!27274 (_2!20932 (get!11526 lt!1086777))) lt!1087925)))

(declare-fun b!3215558 () Bool)

(assert (=> b!3215558 (= e!2004906 0)))

(declare-fun b!3215559 () Bool)

(assert (=> b!3215559 (= e!2004906 (+ 1 (size!27274 (t!239156 (_2!20932 (get!11526 lt!1086777))))))))

(assert (= (and d!882370 c!540547) b!3215558))

(assert (= (and d!882370 (not c!540547)) b!3215559))

(declare-fun m!3488361 () Bool)

(assert (=> b!3215559 m!3488361))

(assert (=> b!3213270 d!882370))

(assert (=> b!3213270 d!882040))

(declare-fun d!882372 () Bool)

(declare-fun lt!1087926 () Int)

(assert (=> d!882372 (>= lt!1087926 0)))

(declare-fun e!2004907 () Int)

(assert (=> d!882372 (= lt!1087926 e!2004907)))

(declare-fun c!540548 () Bool)

(assert (=> d!882372 (= c!540548 ((_ is Nil!36187) lt!1086548))))

(assert (=> d!882372 (= (size!27274 lt!1086548) lt!1087926)))

(declare-fun b!3215560 () Bool)

(assert (=> b!3215560 (= e!2004907 0)))

(declare-fun b!3215561 () Bool)

(assert (=> b!3215561 (= e!2004907 (+ 1 (size!27274 (t!239156 lt!1086548))))))

(assert (= (and d!882372 c!540548) b!3215560))

(assert (= (and d!882372 (not c!540548)) b!3215561))

(declare-fun m!3488363 () Bool)

(assert (=> b!3215561 m!3488363))

(assert (=> b!3213270 d!882372))

(declare-fun d!882374 () Bool)

(declare-fun res!1308923 () Bool)

(declare-fun e!2004908 () Bool)

(assert (=> d!882374 (=> res!1308923 e!2004908)))

(assert (=> d!882374 (= res!1308923 ((_ is Nil!36189) (t!239158 tokens!494)))))

(assert (=> d!882374 (= (forall!7396 (t!239158 tokens!494) lambda!117554) e!2004908)))

(declare-fun b!3215562 () Bool)

(declare-fun e!2004909 () Bool)

(assert (=> b!3215562 (= e!2004908 e!2004909)))

(declare-fun res!1308924 () Bool)

(assert (=> b!3215562 (=> (not res!1308924) (not e!2004909))))

(assert (=> b!3215562 (= res!1308924 (dynLambda!14628 lambda!117554 (h!41609 (t!239158 tokens!494))))))

(declare-fun b!3215563 () Bool)

(assert (=> b!3215563 (= e!2004909 (forall!7396 (t!239158 (t!239158 tokens!494)) lambda!117554))))

(assert (= (and d!882374 (not res!1308923)) b!3215562))

(assert (= (and b!3215562 res!1308924) b!3215563))

(declare-fun b_lambda!88277 () Bool)

(assert (=> (not b_lambda!88277) (not b!3215562)))

(assert (=> b!3215562 m!3484497))

(declare-fun m!3488365 () Bool)

(assert (=> b!3215563 m!3488365))

(assert (=> b!3212955 d!882374))

(declare-fun d!882376 () Bool)

(assert (=> d!882376 (= (inv!49048 (tag!5754 (h!41608 (t!239157 rules!2135)))) (= (mod (str.len (value!169400 (tag!5754 (h!41608 (t!239157 rules!2135))))) 2) 0))))

(assert (=> b!3213791 d!882376))

(declare-fun d!882378 () Bool)

(declare-fun res!1308925 () Bool)

(declare-fun e!2004910 () Bool)

(assert (=> d!882378 (=> (not res!1308925) (not e!2004910))))

(assert (=> d!882378 (= res!1308925 (semiInverseModEq!2157 (toChars!7173 (transformation!5226 (h!41608 (t!239157 rules!2135)))) (toValue!7314 (transformation!5226 (h!41608 (t!239157 rules!2135))))))))

(assert (=> d!882378 (= (inv!49051 (transformation!5226 (h!41608 (t!239157 rules!2135)))) e!2004910)))

(declare-fun b!3215564 () Bool)

(assert (=> b!3215564 (= e!2004910 (equivClasses!2056 (toChars!7173 (transformation!5226 (h!41608 (t!239157 rules!2135)))) (toValue!7314 (transformation!5226 (h!41608 (t!239157 rules!2135))))))))

(assert (= (and d!882378 res!1308925) b!3215564))

(declare-fun m!3488367 () Bool)

(assert (=> d!882378 m!3488367))

(declare-fun m!3488369 () Bool)

(assert (=> b!3215564 m!3488369))

(assert (=> b!3213791 d!882378))

(declare-fun d!882380 () Bool)

(assert (=> d!882380 (= (list!12877 lt!1086749) (list!12881 (c!539814 lt!1086749)))))

(declare-fun bs!542133 () Bool)

(assert (= bs!542133 d!882380))

(declare-fun m!3488371 () Bool)

(assert (=> bs!542133 m!3488371))

(assert (=> d!880980 d!882380))

(declare-fun d!882382 () Bool)

(declare-fun e!2004911 () Bool)

(assert (=> d!882382 e!2004911))

(declare-fun res!1308926 () Bool)

(assert (=> d!882382 (=> (not res!1308926) (not e!2004911))))

(declare-fun lt!1087927 () BalanceConc!21270)

(assert (=> d!882382 (= res!1308926 (= (list!12877 lt!1087927) (Cons!36189 separatorToken!241 Nil!36189)))))

(assert (=> d!882382 (= lt!1087927 (choose!18772 separatorToken!241))))

(assert (=> d!882382 (= (singleton!995 separatorToken!241) lt!1087927)))

(declare-fun b!3215565 () Bool)

(assert (=> b!3215565 (= e!2004911 (isBalanced!3220 (c!539814 lt!1087927)))))

(assert (= (and d!882382 res!1308926) b!3215565))

(declare-fun m!3488373 () Bool)

(assert (=> d!882382 m!3488373))

(declare-fun m!3488375 () Bool)

(assert (=> d!882382 m!3488375))

(declare-fun m!3488377 () Bool)

(assert (=> b!3215565 m!3488377))

(assert (=> d!880980 d!882382))

(declare-fun b!3215568 () Bool)

(declare-fun res!1308928 () Bool)

(declare-fun e!2004912 () Bool)

(assert (=> b!3215568 (=> (not res!1308928) (not e!2004912))))

(declare-fun lt!1087928 () List!36311)

(assert (=> b!3215568 (= res!1308928 (= (size!27274 lt!1087928) (+ (size!27274 (list!12875 (charsOf!3242 (h!41609 (Cons!36189 (h!41609 tokens!494) Nil!36189))))) (size!27274 (printList!1365 thiss!18206 (t!239158 (Cons!36189 (h!41609 tokens!494) Nil!36189)))))))))

(declare-fun b!3215567 () Bool)

(declare-fun e!2004913 () List!36311)

(assert (=> b!3215567 (= e!2004913 (Cons!36187 (h!41607 (list!12875 (charsOf!3242 (h!41609 (Cons!36189 (h!41609 tokens!494) Nil!36189))))) (++!8688 (t!239156 (list!12875 (charsOf!3242 (h!41609 (Cons!36189 (h!41609 tokens!494) Nil!36189))))) (printList!1365 thiss!18206 (t!239158 (Cons!36189 (h!41609 tokens!494) Nil!36189))))))))

(declare-fun b!3215566 () Bool)

(assert (=> b!3215566 (= e!2004913 (printList!1365 thiss!18206 (t!239158 (Cons!36189 (h!41609 tokens!494) Nil!36189))))))

(declare-fun d!882384 () Bool)

(assert (=> d!882384 e!2004912))

(declare-fun res!1308927 () Bool)

(assert (=> d!882384 (=> (not res!1308927) (not e!2004912))))

(assert (=> d!882384 (= res!1308927 (= (content!4894 lt!1087928) ((_ map or) (content!4894 (list!12875 (charsOf!3242 (h!41609 (Cons!36189 (h!41609 tokens!494) Nil!36189))))) (content!4894 (printList!1365 thiss!18206 (t!239158 (Cons!36189 (h!41609 tokens!494) Nil!36189)))))))))

(assert (=> d!882384 (= lt!1087928 e!2004913)))

(declare-fun c!540549 () Bool)

(assert (=> d!882384 (= c!540549 ((_ is Nil!36187) (list!12875 (charsOf!3242 (h!41609 (Cons!36189 (h!41609 tokens!494) Nil!36189))))))))

(assert (=> d!882384 (= (++!8688 (list!12875 (charsOf!3242 (h!41609 (Cons!36189 (h!41609 tokens!494) Nil!36189)))) (printList!1365 thiss!18206 (t!239158 (Cons!36189 (h!41609 tokens!494) Nil!36189)))) lt!1087928)))

(declare-fun b!3215569 () Bool)

(assert (=> b!3215569 (= e!2004912 (or (not (= (printList!1365 thiss!18206 (t!239158 (Cons!36189 (h!41609 tokens!494) Nil!36189))) Nil!36187)) (= lt!1087928 (list!12875 (charsOf!3242 (h!41609 (Cons!36189 (h!41609 tokens!494) Nil!36189)))))))))

(assert (= (and d!882384 c!540549) b!3215566))

(assert (= (and d!882384 (not c!540549)) b!3215567))

(assert (= (and d!882384 res!1308927) b!3215568))

(assert (= (and b!3215568 res!1308928) b!3215569))

(declare-fun m!3488379 () Bool)

(assert (=> b!3215568 m!3488379))

(assert (=> b!3215568 m!3484999))

(declare-fun m!3488381 () Bool)

(assert (=> b!3215568 m!3488381))

(assert (=> b!3215568 m!3485001))

(declare-fun m!3488383 () Bool)

(assert (=> b!3215568 m!3488383))

(assert (=> b!3215567 m!3485001))

(declare-fun m!3488385 () Bool)

(assert (=> b!3215567 m!3488385))

(declare-fun m!3488387 () Bool)

(assert (=> d!882384 m!3488387))

(assert (=> d!882384 m!3484999))

(declare-fun m!3488389 () Bool)

(assert (=> d!882384 m!3488389))

(assert (=> d!882384 m!3485001))

(declare-fun m!3488391 () Bool)

(assert (=> d!882384 m!3488391))

(assert (=> b!3213741 d!882384))

(declare-fun d!882386 () Bool)

(assert (=> d!882386 (= (list!12875 (charsOf!3242 (h!41609 (Cons!36189 (h!41609 tokens!494) Nil!36189)))) (list!12879 (c!539813 (charsOf!3242 (h!41609 (Cons!36189 (h!41609 tokens!494) Nil!36189))))))))

(declare-fun bs!542134 () Bool)

(assert (= bs!542134 d!882386))

(declare-fun m!3488393 () Bool)

(assert (=> bs!542134 m!3488393))

(assert (=> b!3213741 d!882386))

(declare-fun d!882388 () Bool)

(declare-fun lt!1087929 () BalanceConc!21268)

(assert (=> d!882388 (= (list!12875 lt!1087929) (originalCharacters!5940 (h!41609 (Cons!36189 (h!41609 tokens!494) Nil!36189))))))

(assert (=> d!882388 (= lt!1087929 (dynLambda!14631 (toChars!7173 (transformation!5226 (rule!7672 (h!41609 (Cons!36189 (h!41609 tokens!494) Nil!36189))))) (value!169401 (h!41609 (Cons!36189 (h!41609 tokens!494) Nil!36189)))))))

(assert (=> d!882388 (= (charsOf!3242 (h!41609 (Cons!36189 (h!41609 tokens!494) Nil!36189))) lt!1087929)))

(declare-fun b_lambda!88279 () Bool)

(assert (=> (not b_lambda!88279) (not d!882388)))

(declare-fun t!239521 () Bool)

(declare-fun tb!158489 () Bool)

(assert (=> (and b!3212814 (= (toChars!7173 (transformation!5226 (rule!7672 (h!41609 tokens!494)))) (toChars!7173 (transformation!5226 (rule!7672 (h!41609 (Cons!36189 (h!41609 tokens!494) Nil!36189)))))) t!239521) tb!158489))

(declare-fun b!3215570 () Bool)

(declare-fun e!2004914 () Bool)

(declare-fun tp!1013835 () Bool)

(assert (=> b!3215570 (= e!2004914 (and (inv!49055 (c!539813 (dynLambda!14631 (toChars!7173 (transformation!5226 (rule!7672 (h!41609 (Cons!36189 (h!41609 tokens!494) Nil!36189))))) (value!169401 (h!41609 (Cons!36189 (h!41609 tokens!494) Nil!36189)))))) tp!1013835))))

(declare-fun result!200882 () Bool)

(assert (=> tb!158489 (= result!200882 (and (inv!49056 (dynLambda!14631 (toChars!7173 (transformation!5226 (rule!7672 (h!41609 (Cons!36189 (h!41609 tokens!494) Nil!36189))))) (value!169401 (h!41609 (Cons!36189 (h!41609 tokens!494) Nil!36189))))) e!2004914))))

(assert (= tb!158489 b!3215570))

(declare-fun m!3488395 () Bool)

(assert (=> b!3215570 m!3488395))

(declare-fun m!3488397 () Bool)

(assert (=> tb!158489 m!3488397))

(assert (=> d!882388 t!239521))

(declare-fun b_and!214613 () Bool)

(assert (= b_and!214609 (and (=> t!239521 result!200882) b_and!214613)))

(declare-fun t!239523 () Bool)

(declare-fun tb!158491 () Bool)

(assert (=> (and b!3213792 (= (toChars!7173 (transformation!5226 (h!41608 (t!239157 rules!2135)))) (toChars!7173 (transformation!5226 (rule!7672 (h!41609 (Cons!36189 (h!41609 tokens!494) Nil!36189)))))) t!239523) tb!158491))

(declare-fun result!200884 () Bool)

(assert (= result!200884 result!200882))

(assert (=> d!882388 t!239523))

(declare-fun b_and!214615 () Bool)

(assert (= b_and!214603 (and (=> t!239523 result!200884) b_and!214615)))

(declare-fun t!239525 () Bool)

(declare-fun tb!158493 () Bool)

(assert (=> (and b!3212809 (= (toChars!7173 (transformation!5226 (h!41608 rules!2135))) (toChars!7173 (transformation!5226 (rule!7672 (h!41609 (Cons!36189 (h!41609 tokens!494) Nil!36189)))))) t!239525) tb!158493))

(declare-fun result!200886 () Bool)

(assert (= result!200886 result!200882))

(assert (=> d!882388 t!239525))

(declare-fun b_and!214617 () Bool)

(assert (= b_and!214607 (and (=> t!239525 result!200886) b_and!214617)))

(declare-fun tb!158495 () Bool)

(declare-fun t!239527 () Bool)

(assert (=> (and b!3212813 (= (toChars!7173 (transformation!5226 (rule!7672 separatorToken!241))) (toChars!7173 (transformation!5226 (rule!7672 (h!41609 (Cons!36189 (h!41609 tokens!494) Nil!36189)))))) t!239527) tb!158495))

(declare-fun result!200888 () Bool)

(assert (= result!200888 result!200882))

(assert (=> d!882388 t!239527))

(declare-fun b_and!214619 () Bool)

(assert (= b_and!214605 (and (=> t!239527 result!200888) b_and!214619)))

(declare-fun t!239529 () Bool)

(declare-fun tb!158497 () Bool)

(assert (=> (and b!3213760 (= (toChars!7173 (transformation!5226 (rule!7672 (h!41609 (t!239158 tokens!494))))) (toChars!7173 (transformation!5226 (rule!7672 (h!41609 (Cons!36189 (h!41609 tokens!494) Nil!36189)))))) t!239529) tb!158497))

(declare-fun result!200890 () Bool)

(assert (= result!200890 result!200882))

(assert (=> d!882388 t!239529))

(declare-fun b_and!214621 () Bool)

(assert (= b_and!214611 (and (=> t!239529 result!200890) b_and!214621)))

(declare-fun m!3488399 () Bool)

(assert (=> d!882388 m!3488399))

(declare-fun m!3488401 () Bool)

(assert (=> d!882388 m!3488401))

(assert (=> b!3213741 d!882388))

(declare-fun d!882390 () Bool)

(declare-fun c!540550 () Bool)

(assert (=> d!882390 (= c!540550 ((_ is Cons!36189) (t!239158 (Cons!36189 (h!41609 tokens!494) Nil!36189))))))

(declare-fun e!2004915 () List!36311)

(assert (=> d!882390 (= (printList!1365 thiss!18206 (t!239158 (Cons!36189 (h!41609 tokens!494) Nil!36189))) e!2004915)))

(declare-fun b!3215571 () Bool)

(assert (=> b!3215571 (= e!2004915 (++!8688 (list!12875 (charsOf!3242 (h!41609 (t!239158 (Cons!36189 (h!41609 tokens!494) Nil!36189))))) (printList!1365 thiss!18206 (t!239158 (t!239158 (Cons!36189 (h!41609 tokens!494) Nil!36189))))))))

(declare-fun b!3215572 () Bool)

(assert (=> b!3215572 (= e!2004915 Nil!36187)))

(assert (= (and d!882390 c!540550) b!3215571))

(assert (= (and d!882390 (not c!540550)) b!3215572))

(declare-fun m!3488403 () Bool)

(assert (=> b!3215571 m!3488403))

(assert (=> b!3215571 m!3488403))

(declare-fun m!3488405 () Bool)

(assert (=> b!3215571 m!3488405))

(declare-fun m!3488407 () Bool)

(assert (=> b!3215571 m!3488407))

(assert (=> b!3215571 m!3488405))

(assert (=> b!3215571 m!3488407))

(declare-fun m!3488409 () Bool)

(assert (=> b!3215571 m!3488409))

(assert (=> b!3213741 d!882390))

(assert (=> b!3213331 d!881466))

(declare-fun d!882392 () Bool)

(declare-fun lt!1087930 () Int)

(assert (=> d!882392 (>= lt!1087930 0)))

(declare-fun e!2004916 () Int)

(assert (=> d!882392 (= lt!1087930 e!2004916)))

(declare-fun c!540551 () Bool)

(assert (=> d!882392 (= c!540551 ((_ is Nil!36187) lt!1086869))))

(assert (=> d!882392 (= (size!27274 lt!1086869) lt!1087930)))

(declare-fun b!3215573 () Bool)

(assert (=> b!3215573 (= e!2004916 0)))

(declare-fun b!3215574 () Bool)

(assert (=> b!3215574 (= e!2004916 (+ 1 (size!27274 (t!239156 lt!1086869))))))

(assert (= (and d!882392 c!540551) b!3215573))

(assert (= (and d!882392 (not c!540551)) b!3215574))

(declare-fun m!3488411 () Bool)

(assert (=> b!3215574 m!3488411))

(assert (=> b!3213468 d!882392))

(assert (=> b!3213468 d!881494))

(declare-fun d!882394 () Bool)

(declare-fun lt!1087931 () Int)

(assert (=> d!882394 (>= lt!1087931 0)))

(declare-fun e!2004917 () Int)

(assert (=> d!882394 (= lt!1087931 e!2004917)))

(declare-fun c!540552 () Bool)

(assert (=> d!882394 (= c!540552 ((_ is Nil!36187) lt!1086532))))

(assert (=> d!882394 (= (size!27274 lt!1086532) lt!1087931)))

(declare-fun b!3215575 () Bool)

(assert (=> b!3215575 (= e!2004917 0)))

(declare-fun b!3215576 () Bool)

(assert (=> b!3215576 (= e!2004917 (+ 1 (size!27274 (t!239156 lt!1086532))))))

(assert (= (and d!882394 c!540552) b!3215575))

(assert (= (and d!882394 (not c!540552)) b!3215576))

(declare-fun m!3488413 () Bool)

(assert (=> b!3215576 m!3488413))

(assert (=> b!3213468 d!882394))

(declare-fun d!882396 () Bool)

(assert (=> d!882396 (= (list!12875 lt!1086928) (list!12879 (c!539813 lt!1086928)))))

(declare-fun bs!542135 () Bool)

(assert (= bs!542135 d!882396))

(declare-fun m!3488415 () Bool)

(assert (=> bs!542135 m!3488415))

(assert (=> d!881244 d!882396))

(declare-fun d!882398 () Bool)

(declare-fun c!540553 () Bool)

(assert (=> d!882398 (= c!540553 ((_ is Cons!36189) (list!12877 lt!1086550)))))

(declare-fun e!2004918 () List!36311)

(assert (=> d!882398 (= (printList!1365 thiss!18206 (list!12877 lt!1086550)) e!2004918)))

(declare-fun b!3215577 () Bool)

(assert (=> b!3215577 (= e!2004918 (++!8688 (list!12875 (charsOf!3242 (h!41609 (list!12877 lt!1086550)))) (printList!1365 thiss!18206 (t!239158 (list!12877 lt!1086550)))))))

(declare-fun b!3215578 () Bool)

(assert (=> b!3215578 (= e!2004918 Nil!36187)))

(assert (= (and d!882398 c!540553) b!3215577))

(assert (= (and d!882398 (not c!540553)) b!3215578))

(declare-fun m!3488417 () Bool)

(assert (=> b!3215577 m!3488417))

(assert (=> b!3215577 m!3488417))

(declare-fun m!3488419 () Bool)

(assert (=> b!3215577 m!3488419))

(declare-fun m!3488421 () Bool)

(assert (=> b!3215577 m!3488421))

(assert (=> b!3215577 m!3488419))

(assert (=> b!3215577 m!3488421))

(declare-fun m!3488423 () Bool)

(assert (=> b!3215577 m!3488423))

(assert (=> d!881244 d!882398))

(declare-fun d!882400 () Bool)

(assert (=> d!882400 (= (list!12877 lt!1086550) (list!12881 (c!539814 lt!1086550)))))

(declare-fun bs!542136 () Bool)

(assert (= bs!542136 d!882400))

(declare-fun m!3488425 () Bool)

(assert (=> bs!542136 m!3488425))

(assert (=> d!881244 d!882400))

(assert (=> d!881244 d!881250))

(assert (=> d!880958 d!881120))

(assert (=> d!880958 d!880984))

(assert (=> d!880958 d!881002))

(declare-fun d!882402 () Bool)

(assert (=> d!882402 (= (maxPrefixOneRule!1594 thiss!18206 (rule!7672 (h!41609 tokens!494)) lt!1086523) (Some!7153 (tuple2!35597 (Token!9819 (apply!8208 (transformation!5226 (rule!7672 (h!41609 tokens!494))) (seqFromList!3524 lt!1086523)) (rule!7672 (h!41609 tokens!494)) (size!27274 lt!1086523) lt!1086523) Nil!36187)))))

(assert (=> d!882402 true))

(declare-fun _$59!394 () Unit!50676)

(assert (=> d!882402 (= (choose!18754 thiss!18206 rules!2135 lt!1086523 lt!1086523 Nil!36187 (rule!7672 (h!41609 tokens!494))) _$59!394)))

(declare-fun bs!542137 () Bool)

(assert (= bs!542137 d!882402))

(assert (=> bs!542137 m!3483303))

(assert (=> bs!542137 m!3483397))

(assert (=> bs!542137 m!3483397))

(assert (=> bs!542137 m!3483971))

(assert (=> bs!542137 m!3483283))

(assert (=> d!880958 d!882402))

(assert (=> d!880958 d!881226))

(declare-fun d!882404 () Bool)

(assert (=> d!882404 (= (apply!8208 (transformation!5226 (rule!7672 (h!41609 tokens!494))) (seqFromList!3524 lt!1086523)) (dynLambda!14629 (toValue!7314 (transformation!5226 (rule!7672 (h!41609 tokens!494)))) (seqFromList!3524 lt!1086523)))))

(declare-fun b_lambda!88281 () Bool)

(assert (=> (not b_lambda!88281) (not d!882404)))

(declare-fun tb!158499 () Bool)

(declare-fun t!239531 () Bool)

(assert (=> (and b!3213792 (= (toValue!7314 (transformation!5226 (h!41608 (t!239157 rules!2135)))) (toValue!7314 (transformation!5226 (rule!7672 (h!41609 tokens!494))))) t!239531) tb!158499))

(declare-fun result!200892 () Bool)

(assert (=> tb!158499 (= result!200892 (inv!21 (dynLambda!14629 (toValue!7314 (transformation!5226 (rule!7672 (h!41609 tokens!494)))) (seqFromList!3524 lt!1086523))))))

(declare-fun m!3488427 () Bool)

(assert (=> tb!158499 m!3488427))

(assert (=> d!882404 t!239531))

(declare-fun b_and!214623 () Bool)

(assert (= b_and!214429 (and (=> t!239531 result!200892) b_and!214623)))

(declare-fun t!239533 () Bool)

(declare-fun tb!158501 () Bool)

(assert (=> (and b!3212809 (= (toValue!7314 (transformation!5226 (h!41608 rules!2135))) (toValue!7314 (transformation!5226 (rule!7672 (h!41609 tokens!494))))) t!239533) tb!158501))

(declare-fun result!200894 () Bool)

(assert (= result!200894 result!200892))

(assert (=> d!882404 t!239533))

(declare-fun b_and!214625 () Bool)

(assert (= b_and!214427 (and (=> t!239533 result!200894) b_and!214625)))

(declare-fun t!239535 () Bool)

(declare-fun tb!158503 () Bool)

(assert (=> (and b!3212813 (= (toValue!7314 (transformation!5226 (rule!7672 separatorToken!241))) (toValue!7314 (transformation!5226 (rule!7672 (h!41609 tokens!494))))) t!239535) tb!158503))

(declare-fun result!200896 () Bool)

(assert (= result!200896 result!200892))

(assert (=> d!882404 t!239535))

(declare-fun b_and!214627 () Bool)

(assert (= b_and!214431 (and (=> t!239535 result!200896) b_and!214627)))

(declare-fun t!239537 () Bool)

(declare-fun tb!158505 () Bool)

(assert (=> (and b!3212814 (= (toValue!7314 (transformation!5226 (rule!7672 (h!41609 tokens!494)))) (toValue!7314 (transformation!5226 (rule!7672 (h!41609 tokens!494))))) t!239537) tb!158505))

(declare-fun result!200898 () Bool)

(assert (= result!200898 result!200892))

(assert (=> d!882404 t!239537))

(declare-fun b_and!214629 () Bool)

(assert (= b_and!214423 (and (=> t!239537 result!200898) b_and!214629)))

(declare-fun t!239539 () Bool)

(declare-fun tb!158507 () Bool)

(assert (=> (and b!3213760 (= (toValue!7314 (transformation!5226 (rule!7672 (h!41609 (t!239158 tokens!494))))) (toValue!7314 (transformation!5226 (rule!7672 (h!41609 tokens!494))))) t!239539) tb!158507))

(declare-fun result!200900 () Bool)

(assert (= result!200900 result!200892))

(assert (=> d!882404 t!239539))

(declare-fun b_and!214631 () Bool)

(assert (= b_and!214425 (and (=> t!239539 result!200900) b_and!214631)))

(assert (=> d!882404 m!3483397))

(declare-fun m!3488429 () Bool)

(assert (=> d!882404 m!3488429))

(assert (=> d!880958 d!882404))

(declare-fun d!882406 () Bool)

(declare-fun c!540554 () Bool)

(assert (=> d!882406 (= c!540554 ((_ is Nil!36187) lt!1086871))))

(declare-fun e!2004920 () (InoxSet C!20156))

(assert (=> d!882406 (= (content!4894 lt!1086871) e!2004920)))

(declare-fun b!3215579 () Bool)

(assert (=> b!3215579 (= e!2004920 ((as const (Array C!20156 Bool)) false))))

(declare-fun b!3215580 () Bool)

(assert (=> b!3215580 (= e!2004920 ((_ map or) (store ((as const (Array C!20156 Bool)) false) (h!41607 lt!1086871) true) (content!4894 (t!239156 lt!1086871))))))

(assert (= (and d!882406 c!540554) b!3215579))

(assert (= (and d!882406 (not c!540554)) b!3215580))

(declare-fun m!3488431 () Bool)

(assert (=> b!3215580 m!3488431))

(declare-fun m!3488433 () Bool)

(assert (=> b!3215580 m!3488433))

(assert (=> d!881110 d!882406))

(declare-fun d!882408 () Bool)

(declare-fun c!540555 () Bool)

(assert (=> d!882408 (= c!540555 ((_ is Nil!36187) (++!8688 lt!1086523 lt!1086557)))))

(declare-fun e!2004921 () (InoxSet C!20156))

(assert (=> d!882408 (= (content!4894 (++!8688 lt!1086523 lt!1086557)) e!2004921)))

(declare-fun b!3215581 () Bool)

(assert (=> b!3215581 (= e!2004921 ((as const (Array C!20156 Bool)) false))))

(declare-fun b!3215582 () Bool)

(assert (=> b!3215582 (= e!2004921 ((_ map or) (store ((as const (Array C!20156 Bool)) false) (h!41607 (++!8688 lt!1086523 lt!1086557)) true) (content!4894 (t!239156 (++!8688 lt!1086523 lt!1086557)))))))

(assert (= (and d!882408 c!540555) b!3215581))

(assert (= (and d!882408 (not c!540555)) b!3215582))

(declare-fun m!3488435 () Bool)

(assert (=> b!3215582 m!3488435))

(declare-fun m!3488437 () Bool)

(assert (=> b!3215582 m!3488437))

(assert (=> d!881110 d!882408))

(declare-fun d!882410 () Bool)

(declare-fun c!540556 () Bool)

(assert (=> d!882410 (= c!540556 ((_ is Nil!36187) lt!1086532))))

(declare-fun e!2004922 () (InoxSet C!20156))

(assert (=> d!882410 (= (content!4894 lt!1086532) e!2004922)))

(declare-fun b!3215583 () Bool)

(assert (=> b!3215583 (= e!2004922 ((as const (Array C!20156 Bool)) false))))

(declare-fun b!3215584 () Bool)

(assert (=> b!3215584 (= e!2004922 ((_ map or) (store ((as const (Array C!20156 Bool)) false) (h!41607 lt!1086532) true) (content!4894 (t!239156 lt!1086532))))))

(assert (= (and d!882410 c!540556) b!3215583))

(assert (= (and d!882410 (not c!540556)) b!3215584))

(declare-fun m!3488439 () Bool)

(assert (=> b!3215584 m!3488439))

(declare-fun m!3488441 () Bool)

(assert (=> b!3215584 m!3488441))

(assert (=> d!881110 d!882410))

(declare-fun d!882412 () Bool)

(assert (=> d!882412 (= (inv!15 (value!169401 separatorToken!241)) (= (charsToBigInt!0 (text!38641 (value!169401 separatorToken!241)) 0) (value!169396 (value!169401 separatorToken!241))))))

(declare-fun bs!542138 () Bool)

(assert (= bs!542138 d!882412))

(declare-fun m!3488443 () Bool)

(assert (=> bs!542138 m!3488443))

(assert (=> b!3213729 d!882412))

(declare-fun b!3215587 () Bool)

(declare-fun res!1308930 () Bool)

(declare-fun e!2004923 () Bool)

(assert (=> b!3215587 (=> (not res!1308930) (not e!2004923))))

(declare-fun lt!1087932 () List!36311)

(assert (=> b!3215587 (= res!1308930 (= (size!27274 lt!1087932) (+ (size!27274 (t!239156 (++!8688 lt!1086523 lt!1086557))) (size!27274 lt!1086532))))))

(declare-fun b!3215586 () Bool)

(declare-fun e!2004924 () List!36311)

(assert (=> b!3215586 (= e!2004924 (Cons!36187 (h!41607 (t!239156 (++!8688 lt!1086523 lt!1086557))) (++!8688 (t!239156 (t!239156 (++!8688 lt!1086523 lt!1086557))) lt!1086532)))))

(declare-fun b!3215585 () Bool)

(assert (=> b!3215585 (= e!2004924 lt!1086532)))

(declare-fun d!882414 () Bool)

(assert (=> d!882414 e!2004923))

(declare-fun res!1308929 () Bool)

(assert (=> d!882414 (=> (not res!1308929) (not e!2004923))))

(assert (=> d!882414 (= res!1308929 (= (content!4894 lt!1087932) ((_ map or) (content!4894 (t!239156 (++!8688 lt!1086523 lt!1086557))) (content!4894 lt!1086532))))))

(assert (=> d!882414 (= lt!1087932 e!2004924)))

(declare-fun c!540557 () Bool)

(assert (=> d!882414 (= c!540557 ((_ is Nil!36187) (t!239156 (++!8688 lt!1086523 lt!1086557))))))

(assert (=> d!882414 (= (++!8688 (t!239156 (++!8688 lt!1086523 lt!1086557)) lt!1086532) lt!1087932)))

(declare-fun b!3215588 () Bool)

(assert (=> b!3215588 (= e!2004923 (or (not (= lt!1086532 Nil!36187)) (= lt!1087932 (t!239156 (++!8688 lt!1086523 lt!1086557)))))))

(assert (= (and d!882414 c!540557) b!3215585))

(assert (= (and d!882414 (not c!540557)) b!3215586))

(assert (= (and d!882414 res!1308929) b!3215587))

(assert (= (and b!3215587 res!1308930) b!3215588))

(declare-fun m!3488445 () Bool)

(assert (=> b!3215587 m!3488445))

(declare-fun m!3488447 () Bool)

(assert (=> b!3215587 m!3488447))

(assert (=> b!3215587 m!3484553))

(declare-fun m!3488449 () Bool)

(assert (=> b!3215586 m!3488449))

(declare-fun m!3488451 () Bool)

(assert (=> d!882414 m!3488451))

(assert (=> d!882414 m!3488437))

(assert (=> d!882414 m!3484559))

(assert (=> b!3213476 d!882414))

(declare-fun d!882416 () Bool)

(declare-fun lt!1087935 () Bool)

(assert (=> d!882416 (= lt!1087935 (select (content!4898 tokens!494) (h!41609 tokens!494)))))

(declare-fun e!2004930 () Bool)

(assert (=> d!882416 (= lt!1087935 e!2004930)))

(declare-fun res!1308936 () Bool)

(assert (=> d!882416 (=> (not res!1308936) (not e!2004930))))

(assert (=> d!882416 (= res!1308936 ((_ is Cons!36189) tokens!494))))

(assert (=> d!882416 (= (contains!6471 tokens!494 (h!41609 tokens!494)) lt!1087935)))

(declare-fun b!3215593 () Bool)

(declare-fun e!2004929 () Bool)

(assert (=> b!3215593 (= e!2004930 e!2004929)))

(declare-fun res!1308935 () Bool)

(assert (=> b!3215593 (=> res!1308935 e!2004929)))

(assert (=> b!3215593 (= res!1308935 (= (h!41609 tokens!494) (h!41609 tokens!494)))))

(declare-fun b!3215594 () Bool)

(assert (=> b!3215594 (= e!2004929 (contains!6471 (t!239158 tokens!494) (h!41609 tokens!494)))))

(assert (= (and d!882416 res!1308936) b!3215593))

(assert (= (and b!3215593 (not res!1308935)) b!3215594))

(declare-fun m!3488453 () Bool)

(assert (=> d!882416 m!3488453))

(declare-fun m!3488455 () Bool)

(assert (=> d!882416 m!3488455))

(declare-fun m!3488457 () Bool)

(assert (=> b!3215594 m!3488457))

(assert (=> b!3213450 d!882416))

(declare-fun lt!1087936 () Bool)

(declare-fun d!882418 () Bool)

(assert (=> d!882418 (= lt!1087936 (isEmpty!20288 (list!12875 (_2!20931 (lex!2145 thiss!18206 rules!2135 (print!1880 thiss!18206 (singletonSeq!2322 (h!41609 tokens!494))))))))))

(assert (=> d!882418 (= lt!1087936 (isEmpty!20289 (c!539813 (_2!20931 (lex!2145 thiss!18206 rules!2135 (print!1880 thiss!18206 (singletonSeq!2322 (h!41609 tokens!494))))))))))

(assert (=> d!882418 (= (isEmpty!20279 (_2!20931 (lex!2145 thiss!18206 rules!2135 (print!1880 thiss!18206 (singletonSeq!2322 (h!41609 tokens!494)))))) lt!1087936)))

(declare-fun bs!542139 () Bool)

(assert (= bs!542139 d!882418))

(declare-fun m!3488459 () Bool)

(assert (=> bs!542139 m!3488459))

(assert (=> bs!542139 m!3488459))

(declare-fun m!3488461 () Bool)

(assert (=> bs!542139 m!3488461))

(declare-fun m!3488463 () Bool)

(assert (=> bs!542139 m!3488463))

(assert (=> b!3213485 d!882418))

(declare-fun b!3215595 () Bool)

(declare-fun res!1308937 () Bool)

(declare-fun e!2004931 () Bool)

(assert (=> b!3215595 (=> (not res!1308937) (not e!2004931))))

(declare-fun lt!1087937 () tuple2!35594)

(assert (=> b!3215595 (= res!1308937 (= (list!12877 (_1!20931 lt!1087937)) (_1!20933 (lexList!1314 thiss!18206 rules!2135 (list!12875 (print!1880 thiss!18206 (singletonSeq!2322 (h!41609 tokens!494))))))))))

(declare-fun b!3215596 () Bool)

(declare-fun e!2004933 () Bool)

(assert (=> b!3215596 (= e!2004933 (= (_2!20931 lt!1087937) (print!1880 thiss!18206 (singletonSeq!2322 (h!41609 tokens!494)))))))

(declare-fun d!882420 () Bool)

(assert (=> d!882420 e!2004931))

(declare-fun res!1308938 () Bool)

(assert (=> d!882420 (=> (not res!1308938) (not e!2004931))))

(assert (=> d!882420 (= res!1308938 e!2004933)))

(declare-fun c!540558 () Bool)

(assert (=> d!882420 (= c!540558 (> (size!27275 (_1!20931 lt!1087937)) 0))))

(assert (=> d!882420 (= lt!1087937 (lexTailRecV2!934 thiss!18206 rules!2135 (print!1880 thiss!18206 (singletonSeq!2322 (h!41609 tokens!494))) (BalanceConc!21269 Empty!10827) (print!1880 thiss!18206 (singletonSeq!2322 (h!41609 tokens!494))) (BalanceConc!21271 Empty!10828)))))

(assert (=> d!882420 (= (lex!2145 thiss!18206 rules!2135 (print!1880 thiss!18206 (singletonSeq!2322 (h!41609 tokens!494)))) lt!1087937)))

(declare-fun b!3215597 () Bool)

(declare-fun e!2004932 () Bool)

(assert (=> b!3215597 (= e!2004932 (not (isEmpty!20280 (_1!20931 lt!1087937))))))

(declare-fun b!3215598 () Bool)

(assert (=> b!3215598 (= e!2004931 (= (list!12875 (_2!20931 lt!1087937)) (_2!20933 (lexList!1314 thiss!18206 rules!2135 (list!12875 (print!1880 thiss!18206 (singletonSeq!2322 (h!41609 tokens!494))))))))))

(declare-fun b!3215599 () Bool)

(assert (=> b!3215599 (= e!2004933 e!2004932)))

(declare-fun res!1308939 () Bool)

(assert (=> b!3215599 (= res!1308939 (< (size!27276 (_2!20931 lt!1087937)) (size!27276 (print!1880 thiss!18206 (singletonSeq!2322 (h!41609 tokens!494))))))))

(assert (=> b!3215599 (=> (not res!1308939) (not e!2004932))))

(assert (= (and d!882420 c!540558) b!3215599))

(assert (= (and d!882420 (not c!540558)) b!3215596))

(assert (= (and b!3215599 res!1308939) b!3215597))

(assert (= (and d!882420 res!1308938) b!3215595))

(assert (= (and b!3215595 res!1308937) b!3215598))

(declare-fun m!3488465 () Bool)

(assert (=> b!3215595 m!3488465))

(assert (=> b!3215595 m!3484601))

(declare-fun m!3488467 () Bool)

(assert (=> b!3215595 m!3488467))

(assert (=> b!3215595 m!3488467))

(declare-fun m!3488469 () Bool)

(assert (=> b!3215595 m!3488469))

(declare-fun m!3488471 () Bool)

(assert (=> d!882420 m!3488471))

(assert (=> d!882420 m!3484601))

(assert (=> d!882420 m!3484601))

(declare-fun m!3488473 () Bool)

(assert (=> d!882420 m!3488473))

(declare-fun m!3488475 () Bool)

(assert (=> b!3215598 m!3488475))

(assert (=> b!3215598 m!3484601))

(assert (=> b!3215598 m!3488467))

(assert (=> b!3215598 m!3488467))

(assert (=> b!3215598 m!3488469))

(declare-fun m!3488477 () Bool)

(assert (=> b!3215597 m!3488477))

(declare-fun m!3488479 () Bool)

(assert (=> b!3215599 m!3488479))

(assert (=> b!3215599 m!3484601))

(declare-fun m!3488481 () Bool)

(assert (=> b!3215599 m!3488481))

(assert (=> b!3213485 d!882420))

(declare-fun d!882422 () Bool)

(declare-fun lt!1087938 () BalanceConc!21268)

(assert (=> d!882422 (= (list!12875 lt!1087938) (printList!1365 thiss!18206 (list!12877 (singletonSeq!2322 (h!41609 tokens!494)))))))

(assert (=> d!882422 (= lt!1087938 (printTailRec!1312 thiss!18206 (singletonSeq!2322 (h!41609 tokens!494)) 0 (BalanceConc!21269 Empty!10827)))))

(assert (=> d!882422 (= (print!1880 thiss!18206 (singletonSeq!2322 (h!41609 tokens!494))) lt!1087938)))

(declare-fun bs!542140 () Bool)

(assert (= bs!542140 d!882422))

(declare-fun m!3488483 () Bool)

(assert (=> bs!542140 m!3488483))

(assert (=> bs!542140 m!3483421))

(assert (=> bs!542140 m!3484607))

(assert (=> bs!542140 m!3484607))

(declare-fun m!3488485 () Bool)

(assert (=> bs!542140 m!3488485))

(assert (=> bs!542140 m!3483421))

(declare-fun m!3488487 () Bool)

(assert (=> bs!542140 m!3488487))

(assert (=> b!3213485 d!882422))

(assert (=> b!3213485 d!881248))

(declare-fun d!882424 () Bool)

(assert (=> d!882424 (= (list!12877 (_1!20931 lt!1086878)) (list!12881 (c!539814 (_1!20931 lt!1086878))))))

(declare-fun bs!542141 () Bool)

(assert (= bs!542141 d!882424))

(declare-fun m!3488489 () Bool)

(assert (=> bs!542141 m!3488489))

(assert (=> b!3213486 d!882424))

(assert (=> b!3213486 d!881988))

(assert (=> b!3213486 d!881990))

(declare-fun d!882426 () Bool)

(declare-fun res!1308944 () Bool)

(declare-fun e!2004938 () Bool)

(assert (=> d!882426 (=> res!1308944 e!2004938)))

(assert (=> d!882426 (= res!1308944 ((_ is Nil!36188) rules!2135))))

(assert (=> d!882426 (= (noDuplicateTag!1913 thiss!18206 rules!2135 Nil!36191) e!2004938)))

(declare-fun b!3215604 () Bool)

(declare-fun e!2004939 () Bool)

(assert (=> b!3215604 (= e!2004938 e!2004939)))

(declare-fun res!1308945 () Bool)

(assert (=> b!3215604 (=> (not res!1308945) (not e!2004939))))

(declare-fun contains!6474 (List!36315 String!40614) Bool)

(assert (=> b!3215604 (= res!1308945 (not (contains!6474 Nil!36191 (tag!5754 (h!41608 rules!2135)))))))

(declare-fun b!3215605 () Bool)

(assert (=> b!3215605 (= e!2004939 (noDuplicateTag!1913 thiss!18206 (t!239157 rules!2135) (Cons!36191 (tag!5754 (h!41608 rules!2135)) Nil!36191)))))

(assert (= (and d!882426 (not res!1308944)) b!3215604))

(assert (= (and b!3215604 res!1308945) b!3215605))

(declare-fun m!3488491 () Bool)

(assert (=> b!3215604 m!3488491))

(declare-fun m!3488493 () Bool)

(assert (=> b!3215605 m!3488493))

(assert (=> b!3213701 d!882426))

(assert (=> bm!232539 d!882198))

(assert (=> b!3213702 d!881616))

(assert (=> b!3213702 d!881618))

(declare-fun d!882428 () Bool)

(assert (=> d!882428 (= (isDefined!5558 (getRuleFromTag!931 thiss!18206 rules!2135 (tag!5754 (rule!7672 (h!41609 tokens!494))))) (not (isEmpty!20283 (getRuleFromTag!931 thiss!18206 rules!2135 (tag!5754 (rule!7672 (h!41609 tokens!494)))))))))

(declare-fun bs!542142 () Bool)

(assert (= bs!542142 d!882428))

(assert (=> bs!542142 m!3483313))

(declare-fun m!3488495 () Bool)

(assert (=> bs!542142 m!3488495))

(assert (=> d!881006 d!882428))

(assert (=> d!881006 d!880976))

(declare-fun d!882430 () Bool)

(declare-fun e!2004940 () Bool)

(assert (=> d!882430 e!2004940))

(declare-fun res!1308946 () Bool)

(assert (=> d!882430 (=> (not res!1308946) (not e!2004940))))

(assert (=> d!882430 (= res!1308946 (isDefined!5558 (getRuleFromTag!931 thiss!18206 rules!2135 (tag!5754 (rule!7672 (h!41609 tokens!494))))))))

(assert (=> d!882430 true))

(declare-fun _$52!1579 () Unit!50676)

(assert (=> d!882430 (= (choose!18752 thiss!18206 rules!2135 lt!1086523 (h!41609 tokens!494)) _$52!1579)))

(declare-fun b!3215606 () Bool)

(declare-fun res!1308947 () Bool)

(assert (=> b!3215606 (=> (not res!1308947) (not e!2004940))))

(assert (=> b!3215606 (= res!1308947 (matchR!4619 (regex!5226 (get!11524 (getRuleFromTag!931 thiss!18206 rules!2135 (tag!5754 (rule!7672 (h!41609 tokens!494)))))) (list!12875 (charsOf!3242 (h!41609 tokens!494)))))))

(declare-fun b!3215607 () Bool)

(assert (=> b!3215607 (= e!2004940 (= (rule!7672 (h!41609 tokens!494)) (get!11524 (getRuleFromTag!931 thiss!18206 rules!2135 (tag!5754 (rule!7672 (h!41609 tokens!494)))))))))

(assert (= (and d!882430 res!1308946) b!3215606))

(assert (= (and b!3215606 res!1308947) b!3215607))

(assert (=> d!882430 m!3483313))

(assert (=> d!882430 m!3483313))

(assert (=> d!882430 m!3484165))

(assert (=> b!3215606 m!3483379))

(assert (=> b!3215606 m!3483313))

(assert (=> b!3215606 m!3484169))

(assert (=> b!3215606 m!3483379))

(assert (=> b!3215606 m!3483381))

(assert (=> b!3215606 m!3483313))

(assert (=> b!3215606 m!3483381))

(assert (=> b!3215606 m!3484171))

(assert (=> b!3215607 m!3483313))

(assert (=> b!3215607 m!3483313))

(assert (=> b!3215607 m!3484169))

(assert (=> d!881006 d!882430))

(assert (=> d!881006 d!881228))

(declare-fun b!3215608 () Bool)

(declare-fun res!1308953 () Bool)

(declare-fun e!2004944 () Bool)

(assert (=> b!3215608 (=> res!1308953 e!2004944)))

(assert (=> b!3215608 (= res!1308953 (not (isEmpty!20288 (tail!5217 (_1!20936 (findLongestMatchInner!833 (regex!5226 (rule!7672 (h!41609 tokens!494))) Nil!36187 (size!27274 Nil!36187) lt!1086523 lt!1086523 (size!27274 lt!1086523)))))))))

(declare-fun b!3215609 () Bool)

(declare-fun res!1308955 () Bool)

(declare-fun e!2004942 () Bool)

(assert (=> b!3215609 (=> res!1308955 e!2004942)))

(declare-fun e!2004943 () Bool)

(assert (=> b!3215609 (= res!1308955 e!2004943)))

(declare-fun res!1308950 () Bool)

(assert (=> b!3215609 (=> (not res!1308950) (not e!2004943))))

(declare-fun lt!1087939 () Bool)

(assert (=> b!3215609 (= res!1308950 lt!1087939)))

(declare-fun bm!232783 () Bool)

(declare-fun call!232788 () Bool)

(assert (=> bm!232783 (= call!232788 (isEmpty!20288 (_1!20936 (findLongestMatchInner!833 (regex!5226 (rule!7672 (h!41609 tokens!494))) Nil!36187 (size!27274 Nil!36187) lt!1086523 lt!1086523 (size!27274 lt!1086523)))))))

(declare-fun b!3215610 () Bool)

(assert (=> b!3215610 (= e!2004943 (= (head!7047 (_1!20936 (findLongestMatchInner!833 (regex!5226 (rule!7672 (h!41609 tokens!494))) Nil!36187 (size!27274 Nil!36187) lt!1086523 lt!1086523 (size!27274 lt!1086523)))) (c!539812 (regex!5226 (rule!7672 (h!41609 tokens!494))))))))

(declare-fun b!3215611 () Bool)

(declare-fun e!2004947 () Bool)

(assert (=> b!3215611 (= e!2004947 (matchR!4619 (derivativeStep!2953 (regex!5226 (rule!7672 (h!41609 tokens!494))) (head!7047 (_1!20936 (findLongestMatchInner!833 (regex!5226 (rule!7672 (h!41609 tokens!494))) Nil!36187 (size!27274 Nil!36187) lt!1086523 lt!1086523 (size!27274 lt!1086523))))) (tail!5217 (_1!20936 (findLongestMatchInner!833 (regex!5226 (rule!7672 (h!41609 tokens!494))) Nil!36187 (size!27274 Nil!36187) lt!1086523 lt!1086523 (size!27274 lt!1086523))))))))

(declare-fun d!882432 () Bool)

(declare-fun e!2004945 () Bool)

(assert (=> d!882432 e!2004945))

(declare-fun c!540559 () Bool)

(assert (=> d!882432 (= c!540559 ((_ is EmptyExpr!9985) (regex!5226 (rule!7672 (h!41609 tokens!494)))))))

(assert (=> d!882432 (= lt!1087939 e!2004947)))

(declare-fun c!540561 () Bool)

(assert (=> d!882432 (= c!540561 (isEmpty!20288 (_1!20936 (findLongestMatchInner!833 (regex!5226 (rule!7672 (h!41609 tokens!494))) Nil!36187 (size!27274 Nil!36187) lt!1086523 lt!1086523 (size!27274 lt!1086523)))))))

(assert (=> d!882432 (validRegex!4554 (regex!5226 (rule!7672 (h!41609 tokens!494))))))

(assert (=> d!882432 (= (matchR!4619 (regex!5226 (rule!7672 (h!41609 tokens!494))) (_1!20936 (findLongestMatchInner!833 (regex!5226 (rule!7672 (h!41609 tokens!494))) Nil!36187 (size!27274 Nil!36187) lt!1086523 lt!1086523 (size!27274 lt!1086523)))) lt!1087939)))

(declare-fun b!3215612 () Bool)

(declare-fun e!2004946 () Bool)

(assert (=> b!3215612 (= e!2004946 (not lt!1087939))))

(declare-fun b!3215613 () Bool)

(assert (=> b!3215613 (= e!2004944 (not (= (head!7047 (_1!20936 (findLongestMatchInner!833 (regex!5226 (rule!7672 (h!41609 tokens!494))) Nil!36187 (size!27274 Nil!36187) lt!1086523 lt!1086523 (size!27274 lt!1086523)))) (c!539812 (regex!5226 (rule!7672 (h!41609 tokens!494)))))))))

(declare-fun b!3215614 () Bool)

(declare-fun res!1308952 () Bool)

(assert (=> b!3215614 (=> (not res!1308952) (not e!2004943))))

(assert (=> b!3215614 (= res!1308952 (isEmpty!20288 (tail!5217 (_1!20936 (findLongestMatchInner!833 (regex!5226 (rule!7672 (h!41609 tokens!494))) Nil!36187 (size!27274 Nil!36187) lt!1086523 lt!1086523 (size!27274 lt!1086523))))))))

(declare-fun b!3215615 () Bool)

(declare-fun res!1308948 () Bool)

(assert (=> b!3215615 (=> (not res!1308948) (not e!2004943))))

(assert (=> b!3215615 (= res!1308948 (not call!232788))))

(declare-fun b!3215616 () Bool)

(declare-fun e!2004941 () Bool)

(assert (=> b!3215616 (= e!2004942 e!2004941)))

(declare-fun res!1308951 () Bool)

(assert (=> b!3215616 (=> (not res!1308951) (not e!2004941))))

(assert (=> b!3215616 (= res!1308951 (not lt!1087939))))

(declare-fun b!3215617 () Bool)

(assert (=> b!3215617 (= e!2004945 e!2004946)))

(declare-fun c!540560 () Bool)

(assert (=> b!3215617 (= c!540560 ((_ is EmptyLang!9985) (regex!5226 (rule!7672 (h!41609 tokens!494)))))))

(declare-fun b!3215618 () Bool)

(declare-fun res!1308949 () Bool)

(assert (=> b!3215618 (=> res!1308949 e!2004942)))

(assert (=> b!3215618 (= res!1308949 (not ((_ is ElementMatch!9985) (regex!5226 (rule!7672 (h!41609 tokens!494))))))))

(assert (=> b!3215618 (= e!2004946 e!2004942)))

(declare-fun b!3215619 () Bool)

(assert (=> b!3215619 (= e!2004941 e!2004944)))

(declare-fun res!1308954 () Bool)

(assert (=> b!3215619 (=> res!1308954 e!2004944)))

(assert (=> b!3215619 (= res!1308954 call!232788)))

(declare-fun b!3215620 () Bool)

(assert (=> b!3215620 (= e!2004947 (nullable!3400 (regex!5226 (rule!7672 (h!41609 tokens!494)))))))

(declare-fun b!3215621 () Bool)

(assert (=> b!3215621 (= e!2004945 (= lt!1087939 call!232788))))

(assert (= (and d!882432 c!540561) b!3215620))

(assert (= (and d!882432 (not c!540561)) b!3215611))

(assert (= (and d!882432 c!540559) b!3215621))

(assert (= (and d!882432 (not c!540559)) b!3215617))

(assert (= (and b!3215617 c!540560) b!3215612))

(assert (= (and b!3215617 (not c!540560)) b!3215618))

(assert (= (and b!3215618 (not res!1308949)) b!3215609))

(assert (= (and b!3215609 res!1308950) b!3215615))

(assert (= (and b!3215615 res!1308948) b!3215614))

(assert (= (and b!3215614 res!1308952) b!3215610))

(assert (= (and b!3215609 (not res!1308955)) b!3215616))

(assert (= (and b!3215616 res!1308951) b!3215619))

(assert (= (and b!3215619 (not res!1308954)) b!3215608))

(assert (= (and b!3215608 (not res!1308953)) b!3215613))

(assert (= (or b!3215621 b!3215619 b!3215615) bm!232783))

(assert (=> b!3215620 m!3485607))

(declare-fun m!3488497 () Bool)

(assert (=> b!3215608 m!3488497))

(assert (=> b!3215608 m!3488497))

(declare-fun m!3488499 () Bool)

(assert (=> b!3215608 m!3488499))

(declare-fun m!3488501 () Bool)

(assert (=> b!3215610 m!3488501))

(assert (=> b!3215613 m!3488501))

(assert (=> b!3215611 m!3488501))

(assert (=> b!3215611 m!3488501))

(declare-fun m!3488503 () Bool)

(assert (=> b!3215611 m!3488503))

(assert (=> b!3215611 m!3488497))

(assert (=> b!3215611 m!3488503))

(assert (=> b!3215611 m!3488497))

(declare-fun m!3488505 () Bool)

(assert (=> b!3215611 m!3488505))

(assert (=> d!882432 m!3484127))

(assert (=> d!882432 m!3485623))

(assert (=> bm!232783 m!3484127))

(assert (=> b!3215614 m!3488497))

(assert (=> b!3215614 m!3488497))

(assert (=> b!3215614 m!3488499))

(assert (=> b!3213305 d!882432))

(assert (=> b!3213305 d!881538))

(assert (=> b!3213305 d!881602))

(assert (=> b!3213305 d!880984))

(declare-fun d!882434 () Bool)

(declare-fun e!2004950 () Bool)

(assert (=> d!882434 e!2004950))

(declare-fun res!1308958 () Bool)

(assert (=> d!882434 (=> (not res!1308958) (not e!2004950))))

(declare-fun lt!1087942 () BalanceConc!21270)

(assert (=> d!882434 (= res!1308958 (= (list!12877 lt!1087942) tokens!494))))

(declare-fun fromList!618 (List!36313) Conc!10828)

(assert (=> d!882434 (= lt!1087942 (BalanceConc!21271 (fromList!618 tokens!494)))))

(assert (=> d!882434 (= (fromListB!1546 tokens!494) lt!1087942)))

(declare-fun b!3215624 () Bool)

(assert (=> b!3215624 (= e!2004950 (isBalanced!3220 (fromList!618 tokens!494)))))

(assert (= (and d!882434 res!1308958) b!3215624))

(declare-fun m!3488507 () Bool)

(assert (=> d!882434 m!3488507))

(declare-fun m!3488509 () Bool)

(assert (=> d!882434 m!3488509))

(assert (=> b!3215624 m!3488509))

(assert (=> b!3215624 m!3488509))

(declare-fun m!3488511 () Bool)

(assert (=> b!3215624 m!3488511))

(assert (=> d!881216 d!882434))

(declare-fun d!882436 () Bool)

(assert (=> d!882436 (= (isEmpty!20283 lt!1086746) (not ((_ is Some!7152) lt!1086746)))))

(assert (=> d!880976 d!882436))

(assert (=> d!880976 d!881228))

(assert (=> b!3213686 d!880890))

(declare-fun d!882438 () Bool)

(declare-fun lt!1087943 () Bool)

(assert (=> d!882438 (= lt!1087943 (select (content!4894 (t!239156 (usedCharacters!542 (regex!5226 (rule!7672 (h!41609 (t!239158 tokens!494))))))) (head!7047 lt!1086561)))))

(declare-fun e!2004951 () Bool)

(assert (=> d!882438 (= lt!1087943 e!2004951)))

(declare-fun res!1308960 () Bool)

(assert (=> d!882438 (=> (not res!1308960) (not e!2004951))))

(assert (=> d!882438 (= res!1308960 ((_ is Cons!36187) (t!239156 (usedCharacters!542 (regex!5226 (rule!7672 (h!41609 (t!239158 tokens!494))))))))))

(assert (=> d!882438 (= (contains!6469 (t!239156 (usedCharacters!542 (regex!5226 (rule!7672 (h!41609 (t!239158 tokens!494)))))) (head!7047 lt!1086561)) lt!1087943)))

(declare-fun b!3215625 () Bool)

(declare-fun e!2004952 () Bool)

(assert (=> b!3215625 (= e!2004951 e!2004952)))

(declare-fun res!1308959 () Bool)

(assert (=> b!3215625 (=> res!1308959 e!2004952)))

(assert (=> b!3215625 (= res!1308959 (= (h!41607 (t!239156 (usedCharacters!542 (regex!5226 (rule!7672 (h!41609 (t!239158 tokens!494))))))) (head!7047 lt!1086561)))))

(declare-fun b!3215626 () Bool)

(assert (=> b!3215626 (= e!2004952 (contains!6469 (t!239156 (t!239156 (usedCharacters!542 (regex!5226 (rule!7672 (h!41609 (t!239158 tokens!494))))))) (head!7047 lt!1086561)))))

(assert (= (and d!882438 res!1308960) b!3215625))

(assert (= (and b!3215625 (not res!1308959)) b!3215626))

(declare-fun m!3488513 () Bool)

(assert (=> d!882438 m!3488513))

(assert (=> d!882438 m!3483337))

(declare-fun m!3488515 () Bool)

(assert (=> d!882438 m!3488515))

(assert (=> b!3215626 m!3483337))

(declare-fun m!3488517 () Bool)

(assert (=> b!3215626 m!3488517))

(assert (=> b!3213188 d!882438))

(assert (=> b!3213326 d!882334))

(assert (=> b!3213326 d!881004))

(declare-fun d!882440 () Bool)

(declare-fun lt!1087944 () Bool)

(assert (=> d!882440 (= lt!1087944 (isEmpty!20288 (list!12875 (_2!20931 lt!1086836))))))

(assert (=> d!882440 (= lt!1087944 (isEmpty!20289 (c!539813 (_2!20931 lt!1086836))))))

(assert (=> d!882440 (= (isEmpty!20279 (_2!20931 lt!1086836)) lt!1087944)))

(declare-fun bs!542143 () Bool)

(assert (= bs!542143 d!882440))

(declare-fun m!3488519 () Bool)

(assert (=> bs!542143 m!3488519))

(assert (=> bs!542143 m!3488519))

(declare-fun m!3488521 () Bool)

(assert (=> bs!542143 m!3488521))

(declare-fun m!3488523 () Bool)

(assert (=> bs!542143 m!3488523))

(assert (=> b!3213374 d!882440))

(declare-fun d!882442 () Bool)

(declare-fun lt!1087945 () Int)

(assert (=> d!882442 (>= lt!1087945 0)))

(declare-fun e!2004953 () Int)

(assert (=> d!882442 (= lt!1087945 e!2004953)))

(declare-fun c!540563 () Bool)

(assert (=> d!882442 (= c!540563 ((_ is Nil!36187) (t!239156 lt!1086523)))))

(assert (=> d!882442 (= (size!27274 (t!239156 lt!1086523)) lt!1087945)))

(declare-fun b!3215627 () Bool)

(assert (=> b!3215627 (= e!2004953 0)))

(declare-fun b!3215628 () Bool)

(assert (=> b!3215628 (= e!2004953 (+ 1 (size!27274 (t!239156 (t!239156 lt!1086523)))))))

(assert (= (and d!882442 c!540563) b!3215627))

(assert (= (and d!882442 (not c!540563)) b!3215628))

(declare-fun m!3488525 () Bool)

(assert (=> b!3215628 m!3488525))

(assert (=> b!3213206 d!882442))

(declare-fun bs!542144 () Bool)

(declare-fun d!882444 () Bool)

(assert (= bs!542144 (and d!882444 d!881478)))

(declare-fun lambda!117601 () Int)

(assert (=> bs!542144 (= (= (toValue!7314 (transformation!5226 (rule!7672 (h!41609 tokens!494)))) (toValue!7314 (transformation!5226 (h!41608 rules!2135)))) (= lambda!117601 lambda!117568))))

(assert (=> d!882444 true))

(assert (=> d!882444 (< (dynLambda!14623 order!18493 (toValue!7314 (transformation!5226 (rule!7672 (h!41609 tokens!494))))) (dynLambda!14632 order!18499 lambda!117601))))

(assert (=> d!882444 (= (equivClasses!2056 (toChars!7173 (transformation!5226 (rule!7672 (h!41609 tokens!494)))) (toValue!7314 (transformation!5226 (rule!7672 (h!41609 tokens!494))))) (Forall2!865 lambda!117601))))

(declare-fun bs!542145 () Bool)

(assert (= bs!542145 d!882444))

(declare-fun m!3488527 () Bool)

(assert (=> bs!542145 m!3488527))

(assert (=> b!3213716 d!882444))

(declare-fun d!882446 () Bool)

(assert (=> d!882446 (= (inv!16 (value!169401 separatorToken!241)) (= (charsToInt!0 (text!38639 (value!169401 separatorToken!241))) (value!169392 (value!169401 separatorToken!241))))))

(declare-fun bs!542146 () Bool)

(assert (= bs!542146 d!882446))

(declare-fun m!3488529 () Bool)

(assert (=> bs!542146 m!3488529))

(assert (=> b!3213731 d!882446))

(declare-fun d!882448 () Bool)

(assert (=> d!882448 (= (isEmpty!20288 (originalCharacters!5940 separatorToken!241)) ((_ is Nil!36187) (originalCharacters!5940 separatorToken!241)))))

(assert (=> d!881156 d!882448))

(declare-fun d!882450 () Bool)

(declare-fun lt!1087946 () Bool)

(assert (=> d!882450 (= lt!1087946 (select (content!4898 tokens!494) (h!41609 (t!239158 tokens!494))))))

(declare-fun e!2004955 () Bool)

(assert (=> d!882450 (= lt!1087946 e!2004955)))

(declare-fun res!1308962 () Bool)

(assert (=> d!882450 (=> (not res!1308962) (not e!2004955))))

(assert (=> d!882450 (= res!1308962 ((_ is Cons!36189) tokens!494))))

(assert (=> d!882450 (= (contains!6471 tokens!494 (h!41609 (t!239158 tokens!494))) lt!1087946)))

(declare-fun b!3215629 () Bool)

(declare-fun e!2004954 () Bool)

(assert (=> b!3215629 (= e!2004955 e!2004954)))

(declare-fun res!1308961 () Bool)

(assert (=> b!3215629 (=> res!1308961 e!2004954)))

(assert (=> b!3215629 (= res!1308961 (= (h!41609 tokens!494) (h!41609 (t!239158 tokens!494))))))

(declare-fun b!3215630 () Bool)

(assert (=> b!3215630 (= e!2004954 (contains!6471 (t!239158 tokens!494) (h!41609 (t!239158 tokens!494))))))

(assert (= (and d!882450 res!1308962) b!3215629))

(assert (= (and b!3215629 (not res!1308961)) b!3215630))

(assert (=> d!882450 m!3488453))

(declare-fun m!3488531 () Bool)

(assert (=> d!882450 m!3488531))

(declare-fun m!3488533 () Bool)

(assert (=> b!3215630 m!3488533))

(assert (=> b!3213191 d!882450))

(declare-fun d!882452 () Bool)

(assert (=> d!882452 (= (list!12875 (dynLambda!14631 (toChars!7173 (transformation!5226 (rule!7672 separatorToken!241))) (value!169401 separatorToken!241))) (list!12879 (c!539813 (dynLambda!14631 (toChars!7173 (transformation!5226 (rule!7672 separatorToken!241))) (value!169401 separatorToken!241)))))))

(declare-fun bs!542147 () Bool)

(assert (= bs!542147 d!882452))

(declare-fun m!3488535 () Bool)

(assert (=> bs!542147 m!3488535))

(assert (=> b!3213544 d!882452))

(declare-fun d!882454 () Bool)

(declare-fun c!540564 () Bool)

(assert (=> d!882454 (= c!540564 ((_ is Nil!36187) (usedCharacters!542 (regex!5226 (rule!7672 (h!41609 (t!239158 tokens!494)))))))))

(declare-fun e!2004956 () (InoxSet C!20156))

(assert (=> d!882454 (= (content!4894 (usedCharacters!542 (regex!5226 (rule!7672 (h!41609 (t!239158 tokens!494)))))) e!2004956)))

(declare-fun b!3215631 () Bool)

(assert (=> b!3215631 (= e!2004956 ((as const (Array C!20156 Bool)) false))))

(declare-fun b!3215632 () Bool)

(assert (=> b!3215632 (= e!2004956 ((_ map or) (store ((as const (Array C!20156 Bool)) false) (h!41607 (usedCharacters!542 (regex!5226 (rule!7672 (h!41609 (t!239158 tokens!494)))))) true) (content!4894 (t!239156 (usedCharacters!542 (regex!5226 (rule!7672 (h!41609 (t!239158 tokens!494)))))))))))

(assert (= (and d!882454 c!540564) b!3215631))

(assert (= (and d!882454 (not c!540564)) b!3215632))

(declare-fun m!3488537 () Bool)

(assert (=> b!3215632 m!3488537))

(assert (=> b!3215632 m!3488513))

(assert (=> d!880964 d!882454))

(declare-fun b!3215633 () Bool)

(declare-fun e!2004958 () List!36311)

(declare-fun call!232791 () List!36311)

(assert (=> b!3215633 (= e!2004958 call!232791)))

(declare-fun call!232792 () List!36311)

(declare-fun c!540565 () Bool)

(declare-fun bm!232784 () Bool)

(declare-fun call!232789 () List!36311)

(assert (=> bm!232784 (= call!232791 (++!8688 (ite c!540565 call!232792 call!232789) (ite c!540565 call!232789 call!232792)))))

(declare-fun b!3215634 () Bool)

(declare-fun e!2004959 () List!36311)

(declare-fun call!232790 () List!36311)

(assert (=> b!3215634 (= e!2004959 call!232790)))

(declare-fun d!882456 () Bool)

(declare-fun c!540567 () Bool)

(assert (=> d!882456 (= c!540567 (or ((_ is EmptyExpr!9985) (ite c!539924 (regTwo!20483 (regex!5226 (rule!7672 (h!41609 (t!239158 tokens!494))))) (regOne!20482 (regex!5226 (rule!7672 (h!41609 (t!239158 tokens!494))))))) ((_ is EmptyLang!9985) (ite c!539924 (regTwo!20483 (regex!5226 (rule!7672 (h!41609 (t!239158 tokens!494))))) (regOne!20482 (regex!5226 (rule!7672 (h!41609 (t!239158 tokens!494)))))))))))

(declare-fun e!2004960 () List!36311)

(assert (=> d!882456 (= (usedCharacters!542 (ite c!539924 (regTwo!20483 (regex!5226 (rule!7672 (h!41609 (t!239158 tokens!494))))) (regOne!20482 (regex!5226 (rule!7672 (h!41609 (t!239158 tokens!494))))))) e!2004960)))

(declare-fun b!3215635 () Bool)

(declare-fun c!540568 () Bool)

(assert (=> b!3215635 (= c!540568 ((_ is Star!9985) (ite c!539924 (regTwo!20483 (regex!5226 (rule!7672 (h!41609 (t!239158 tokens!494))))) (regOne!20482 (regex!5226 (rule!7672 (h!41609 (t!239158 tokens!494))))))))))

(declare-fun e!2004957 () List!36311)

(assert (=> b!3215635 (= e!2004957 e!2004959)))

(declare-fun b!3215636 () Bool)

(assert (=> b!3215636 (= e!2004959 e!2004958)))

(assert (=> b!3215636 (= c!540565 ((_ is Union!9985) (ite c!539924 (regTwo!20483 (regex!5226 (rule!7672 (h!41609 (t!239158 tokens!494))))) (regOne!20482 (regex!5226 (rule!7672 (h!41609 (t!239158 tokens!494))))))))))

(declare-fun bm!232785 () Bool)

(assert (=> bm!232785 (= call!232792 call!232790)))

(declare-fun b!3215637 () Bool)

(assert (=> b!3215637 (= e!2004958 call!232791)))

(declare-fun b!3215638 () Bool)

(assert (=> b!3215638 (= e!2004957 (Cons!36187 (c!539812 (ite c!539924 (regTwo!20483 (regex!5226 (rule!7672 (h!41609 (t!239158 tokens!494))))) (regOne!20482 (regex!5226 (rule!7672 (h!41609 (t!239158 tokens!494))))))) Nil!36187))))

(declare-fun bm!232786 () Bool)

(assert (=> bm!232786 (= call!232789 (usedCharacters!542 (ite c!540565 (regTwo!20483 (ite c!539924 (regTwo!20483 (regex!5226 (rule!7672 (h!41609 (t!239158 tokens!494))))) (regOne!20482 (regex!5226 (rule!7672 (h!41609 (t!239158 tokens!494))))))) (regOne!20482 (ite c!539924 (regTwo!20483 (regex!5226 (rule!7672 (h!41609 (t!239158 tokens!494))))) (regOne!20482 (regex!5226 (rule!7672 (h!41609 (t!239158 tokens!494))))))))))))

(declare-fun b!3215639 () Bool)

(assert (=> b!3215639 (= e!2004960 Nil!36187)))

(declare-fun bm!232787 () Bool)

(assert (=> bm!232787 (= call!232790 (usedCharacters!542 (ite c!540568 (reg!10314 (ite c!539924 (regTwo!20483 (regex!5226 (rule!7672 (h!41609 (t!239158 tokens!494))))) (regOne!20482 (regex!5226 (rule!7672 (h!41609 (t!239158 tokens!494))))))) (ite c!540565 (regOne!20483 (ite c!539924 (regTwo!20483 (regex!5226 (rule!7672 (h!41609 (t!239158 tokens!494))))) (regOne!20482 (regex!5226 (rule!7672 (h!41609 (t!239158 tokens!494))))))) (regTwo!20482 (ite c!539924 (regTwo!20483 (regex!5226 (rule!7672 (h!41609 (t!239158 tokens!494))))) (regOne!20482 (regex!5226 (rule!7672 (h!41609 (t!239158 tokens!494)))))))))))))

(declare-fun b!3215640 () Bool)

(assert (=> b!3215640 (= e!2004960 e!2004957)))

(declare-fun c!540566 () Bool)

(assert (=> b!3215640 (= c!540566 ((_ is ElementMatch!9985) (ite c!539924 (regTwo!20483 (regex!5226 (rule!7672 (h!41609 (t!239158 tokens!494))))) (regOne!20482 (regex!5226 (rule!7672 (h!41609 (t!239158 tokens!494))))))))))

(assert (= (and d!882456 c!540567) b!3215639))

(assert (= (and d!882456 (not c!540567)) b!3215640))

(assert (= (and b!3215640 c!540566) b!3215638))

(assert (= (and b!3215640 (not c!540566)) b!3215635))

(assert (= (and b!3215635 c!540568) b!3215634))

(assert (= (and b!3215635 (not c!540568)) b!3215636))

(assert (= (and b!3215636 c!540565) b!3215633))

(assert (= (and b!3215636 (not c!540565)) b!3215637))

(assert (= (or b!3215633 b!3215637) bm!232786))

(assert (= (or b!3215633 b!3215637) bm!232785))

(assert (= (or b!3215633 b!3215637) bm!232784))

(assert (= (or b!3215634 bm!232785) bm!232787))

(declare-fun m!3488539 () Bool)

(assert (=> bm!232784 m!3488539))

(declare-fun m!3488541 () Bool)

(assert (=> bm!232786 m!3488541))

(declare-fun m!3488543 () Bool)

(assert (=> bm!232787 m!3488543))

(assert (=> bm!232535 d!882456))

(declare-fun d!882458 () Bool)

(assert (=> d!882458 (= (isDefined!5560 lt!1086777) (not (isEmpty!20287 lt!1086777)))))

(declare-fun bs!542148 () Bool)

(assert (= bs!542148 d!882458))

(assert (=> bs!542148 m!3484097))

(assert (=> b!3213271 d!882458))

(declare-fun d!882460 () Bool)

(declare-fun lt!1087947 () Int)

(assert (=> d!882460 (>= lt!1087947 0)))

(declare-fun e!2004961 () Int)

(assert (=> d!882460 (= lt!1087947 e!2004961)))

(declare-fun c!540569 () Bool)

(assert (=> d!882460 (= c!540569 ((_ is Nil!36189) (list!12877 (_1!20931 lt!1086556))))))

(assert (=> d!882460 (= (size!27277 (list!12877 (_1!20931 lt!1086556))) lt!1087947)))

(declare-fun b!3215641 () Bool)

(assert (=> b!3215641 (= e!2004961 0)))

(declare-fun b!3215642 () Bool)

(assert (=> b!3215642 (= e!2004961 (+ 1 (size!27277 (t!239158 (list!12877 (_1!20931 lt!1086556))))))))

(assert (= (and d!882460 c!540569) b!3215641))

(assert (= (and d!882460 (not c!540569)) b!3215642))

(declare-fun m!3488545 () Bool)

(assert (=> b!3215642 m!3488545))

(assert (=> d!880956 d!882460))

(assert (=> d!880956 d!881750))

(declare-fun d!882462 () Bool)

(declare-fun lt!1087948 () Int)

(assert (=> d!882462 (= lt!1087948 (size!27277 (list!12881 (c!539814 (_1!20931 lt!1086556)))))))

(assert (=> d!882462 (= lt!1087948 (ite ((_ is Empty!10828) (c!539814 (_1!20931 lt!1086556))) 0 (ite ((_ is Leaf!17052) (c!539814 (_1!20931 lt!1086556))) (csize!21887 (c!539814 (_1!20931 lt!1086556))) (csize!21886 (c!539814 (_1!20931 lt!1086556))))))))

(assert (=> d!882462 (= (size!27278 (c!539814 (_1!20931 lt!1086556))) lt!1087948)))

(declare-fun bs!542149 () Bool)

(assert (= bs!542149 d!882462))

(assert (=> bs!542149 m!3486441))

(assert (=> bs!542149 m!3486441))

(declare-fun m!3488547 () Bool)

(assert (=> bs!542149 m!3488547))

(assert (=> d!880956 d!882462))

(declare-fun d!882464 () Bool)

(declare-fun lt!1087949 () Int)

(assert (=> d!882464 (= lt!1087949 (size!27274 (list!12875 (_2!20931 lt!1086753))))))

(assert (=> d!882464 (= lt!1087949 (size!27283 (c!539813 (_2!20931 lt!1086753))))))

(assert (=> d!882464 (= (size!27276 (_2!20931 lt!1086753)) lt!1087949)))

(declare-fun bs!542150 () Bool)

(assert (= bs!542150 d!882464))

(assert (=> bs!542150 m!3484035))

(assert (=> bs!542150 m!3484035))

(declare-fun m!3488549 () Bool)

(assert (=> bs!542150 m!3488549))

(declare-fun m!3488551 () Bool)

(assert (=> bs!542150 m!3488551))

(assert (=> b!3213211 d!882464))

(declare-fun d!882466 () Bool)

(declare-fun lt!1087950 () Int)

(assert (=> d!882466 (= lt!1087950 (size!27274 (list!12875 lt!1086562)))))

(assert (=> d!882466 (= lt!1087950 (size!27283 (c!539813 lt!1086562)))))

(assert (=> d!882466 (= (size!27276 lt!1086562) lt!1087950)))

(declare-fun bs!542151 () Bool)

(assert (= bs!542151 d!882466))

(assert (=> bs!542151 m!3484027))

(assert (=> bs!542151 m!3484027))

(assert (=> bs!542151 m!3485815))

(declare-fun m!3488553 () Bool)

(assert (=> bs!542151 m!3488553))

(assert (=> b!3213211 d!882466))

(declare-fun bm!232790 () Bool)

(declare-fun call!232795 () Bool)

(assert (=> bm!232790 (= call!232795 (ruleDisjointCharsFromAllFromOtherType!593 (h!41608 rules!2135) (t!239157 rules!2135)))))

(declare-fun d!882468 () Bool)

(declare-fun c!540572 () Bool)

(assert (=> d!882468 (= c!540572 (and ((_ is Cons!36188) rules!2135) (not (= (isSeparator!5226 (h!41608 rules!2135)) (isSeparator!5226 (h!41608 rules!2135))))))))

(declare-fun e!2004969 () Bool)

(assert (=> d!882468 (= (ruleDisjointCharsFromAllFromOtherType!593 (h!41608 rules!2135) rules!2135) e!2004969)))

(declare-fun b!3215651 () Bool)

(declare-fun e!2004968 () Bool)

(assert (=> b!3215651 (= e!2004968 call!232795)))

(declare-fun b!3215652 () Bool)

(assert (=> b!3215652 (= e!2004969 e!2004968)))

(declare-fun res!1308968 () Bool)

(declare-fun rulesUseDisjointChars!272 (Rule!10252 Rule!10252) Bool)

(assert (=> b!3215652 (= res!1308968 (rulesUseDisjointChars!272 (h!41608 rules!2135) (h!41608 rules!2135)))))

(assert (=> b!3215652 (=> (not res!1308968) (not e!2004968))))

(declare-fun b!3215653 () Bool)

(declare-fun e!2004970 () Bool)

(assert (=> b!3215653 (= e!2004969 e!2004970)))

(declare-fun res!1308967 () Bool)

(assert (=> b!3215653 (= res!1308967 (not ((_ is Cons!36188) rules!2135)))))

(assert (=> b!3215653 (=> res!1308967 e!2004970)))

(declare-fun b!3215654 () Bool)

(assert (=> b!3215654 (= e!2004970 call!232795)))

(assert (= (and d!882468 c!540572) b!3215652))

(assert (= (and d!882468 (not c!540572)) b!3215653))

(assert (= (and b!3215652 res!1308968) b!3215651))

(assert (= (and b!3215653 (not res!1308967)) b!3215654))

(assert (= (or b!3215651 b!3215654) bm!232790))

(declare-fun m!3488555 () Bool)

(assert (=> bm!232790 m!3488555))

(declare-fun m!3488557 () Bool)

(assert (=> b!3215652 m!3488557))

(assert (=> b!3213541 d!882468))

(declare-fun d!882470 () Bool)

(assert (=> d!882470 (dynLambda!14628 lambda!117554 (h!41609 (t!239158 tokens!494)))))

(assert (=> d!882470 true))

(declare-fun _$7!1102 () Unit!50676)

(assert (=> d!882470 (= (choose!18756 tokens!494 lambda!117554 (h!41609 (t!239158 tokens!494))) _$7!1102)))

(declare-fun b_lambda!88283 () Bool)

(assert (=> (not b_lambda!88283) (not d!882470)))

(declare-fun bs!542152 () Bool)

(assert (= bs!542152 d!882470))

(assert (=> bs!542152 m!3484497))

(assert (=> d!881080 d!882470))

(assert (=> d!881080 d!880888))

(assert (=> b!3213698 d!880956))

(declare-fun d!882472 () Bool)

(declare-fun lt!1087951 () Int)

(assert (=> d!882472 (= lt!1087951 (size!27277 (list!12877 lt!1086554)))))

(assert (=> d!882472 (= lt!1087951 (size!27278 (c!539814 lt!1086554)))))

(assert (=> d!882472 (= (size!27275 lt!1086554) lt!1087951)))

(declare-fun bs!542153 () Bool)

(assert (= bs!542153 d!882472))

(assert (=> bs!542153 m!3483607))

(assert (=> bs!542153 m!3483607))

(declare-fun m!3488559 () Bool)

(assert (=> bs!542153 m!3488559))

(declare-fun m!3488561 () Bool)

(assert (=> bs!542153 m!3488561))

(assert (=> b!3213056 d!882472))

(assert (=> b!3213332 d!881466))

(declare-fun d!882474 () Bool)

(declare-fun lt!1087952 () Int)

(assert (=> d!882474 (>= lt!1087952 0)))

(declare-fun e!2004971 () Int)

(assert (=> d!882474 (= lt!1087952 e!2004971)))

(declare-fun c!540573 () Bool)

(assert (=> d!882474 (= c!540573 ((_ is Nil!36187) (originalCharacters!5940 (_1!20932 (get!11526 lt!1086803)))))))

(assert (=> d!882474 (= (size!27274 (originalCharacters!5940 (_1!20932 (get!11526 lt!1086803)))) lt!1087952)))

(declare-fun b!3215655 () Bool)

(assert (=> b!3215655 (= e!2004971 0)))

(declare-fun b!3215656 () Bool)

(assert (=> b!3215656 (= e!2004971 (+ 1 (size!27274 (t!239156 (originalCharacters!5940 (_1!20932 (get!11526 lt!1086803)))))))))

(assert (= (and d!882474 c!540573) b!3215655))

(assert (= (and d!882474 (not c!540573)) b!3215656))

(declare-fun m!3488563 () Bool)

(assert (=> b!3215656 m!3488563))

(assert (=> b!3213332 d!882474))

(declare-fun d!882476 () Bool)

(assert (=> d!882476 (= (isEmpty!20288 (list!12875 (_2!20931 lt!1086541))) ((_ is Nil!36187) (list!12875 (_2!20931 lt!1086541))))))

(assert (=> d!881218 d!882476))

(declare-fun d!882478 () Bool)

(assert (=> d!882478 (= (list!12875 (_2!20931 lt!1086541)) (list!12879 (c!539813 (_2!20931 lt!1086541))))))

(declare-fun bs!542154 () Bool)

(assert (= bs!542154 d!882478))

(declare-fun m!3488565 () Bool)

(assert (=> bs!542154 m!3488565))

(assert (=> d!881218 d!882478))

(declare-fun d!882480 () Bool)

(declare-fun lt!1087955 () Bool)

(assert (=> d!882480 (= lt!1087955 (isEmpty!20288 (list!12879 (c!539813 (_2!20931 lt!1086541)))))))

(assert (=> d!882480 (= lt!1087955 (= (size!27283 (c!539813 (_2!20931 lt!1086541))) 0))))

(assert (=> d!882480 (= (isEmpty!20289 (c!539813 (_2!20931 lt!1086541))) lt!1087955)))

(declare-fun bs!542155 () Bool)

(assert (= bs!542155 d!882480))

(assert (=> bs!542155 m!3488565))

(assert (=> bs!542155 m!3488565))

(declare-fun m!3488567 () Bool)

(assert (=> bs!542155 m!3488567))

(declare-fun m!3488569 () Bool)

(assert (=> bs!542155 m!3488569))

(assert (=> d!881218 d!882480))

(declare-fun d!882482 () Bool)

(assert (=> d!882482 (= (list!12877 (singletonSeq!2322 separatorToken!241)) (list!12881 (c!539814 (singletonSeq!2322 separatorToken!241))))))

(declare-fun bs!542156 () Bool)

(assert (= bs!542156 d!882482))

(declare-fun m!3488571 () Bool)

(assert (=> bs!542156 m!3488571))

(assert (=> d!881052 d!882482))

(declare-fun d!882484 () Bool)

(assert (=> d!882484 (= (list!12877 (_1!20931 (lex!2145 thiss!18206 rules!2135 (print!1880 thiss!18206 (singletonSeq!2322 separatorToken!241))))) (list!12881 (c!539814 (_1!20931 (lex!2145 thiss!18206 rules!2135 (print!1880 thiss!18206 (singletonSeq!2322 separatorToken!241)))))))))

(declare-fun bs!542157 () Bool)

(assert (= bs!542157 d!882484))

(declare-fun m!3488573 () Bool)

(assert (=> bs!542157 m!3488573))

(assert (=> d!881052 d!882484))

(assert (=> d!881052 d!880980))

(declare-fun d!882486 () Bool)

(declare-fun lt!1087956 () Int)

(assert (=> d!882486 (= lt!1087956 (size!27277 (list!12877 (_1!20931 lt!1086836))))))

(assert (=> d!882486 (= lt!1087956 (size!27278 (c!539814 (_1!20931 lt!1086836))))))

(assert (=> d!882486 (= (size!27275 (_1!20931 lt!1086836)) lt!1087956)))

(declare-fun bs!542158 () Bool)

(assert (= bs!542158 d!882486))

(assert (=> bs!542158 m!3488319))

(assert (=> bs!542158 m!3488319))

(declare-fun m!3488575 () Bool)

(assert (=> bs!542158 m!3488575))

(declare-fun m!3488577 () Bool)

(assert (=> bs!542158 m!3488577))

(assert (=> d!881052 d!882486))

(assert (=> d!881052 d!881966))

(assert (=> d!881052 d!881226))

(assert (=> d!881052 d!881962))

(declare-fun d!882488 () Bool)

(declare-fun lt!1087957 () Int)

(assert (=> d!882488 (>= lt!1087957 0)))

(declare-fun e!2004976 () Int)

(assert (=> d!882488 (= lt!1087957 e!2004976)))

(declare-fun c!540574 () Bool)

(assert (=> d!882488 (= c!540574 ((_ is Nil!36187) lt!1086871))))

(assert (=> d!882488 (= (size!27274 lt!1086871) lt!1087957)))

(declare-fun b!3215661 () Bool)

(assert (=> b!3215661 (= e!2004976 0)))

(declare-fun b!3215662 () Bool)

(assert (=> b!3215662 (= e!2004976 (+ 1 (size!27274 (t!239156 lt!1086871))))))

(assert (= (and d!882488 c!540574) b!3215661))

(assert (= (and d!882488 (not c!540574)) b!3215662))

(declare-fun m!3488579 () Bool)

(assert (=> b!3215662 m!3488579))

(assert (=> b!3213477 d!882488))

(declare-fun d!882490 () Bool)

(declare-fun lt!1087958 () Int)

(assert (=> d!882490 (>= lt!1087958 0)))

(declare-fun e!2004977 () Int)

(assert (=> d!882490 (= lt!1087958 e!2004977)))

(declare-fun c!540575 () Bool)

(assert (=> d!882490 (= c!540575 ((_ is Nil!36187) (++!8688 lt!1086523 lt!1086557)))))

(assert (=> d!882490 (= (size!27274 (++!8688 lt!1086523 lt!1086557)) lt!1087958)))

(declare-fun b!3215663 () Bool)

(assert (=> b!3215663 (= e!2004977 0)))

(declare-fun b!3215664 () Bool)

(assert (=> b!3215664 (= e!2004977 (+ 1 (size!27274 (t!239156 (++!8688 lt!1086523 lt!1086557)))))))

(assert (= (and d!882490 c!540575) b!3215663))

(assert (= (and d!882490 (not c!540575)) b!3215664))

(assert (=> b!3215664 m!3488447))

(assert (=> b!3213477 d!882490))

(assert (=> b!3213477 d!882394))

(assert (=> b!3213426 d!882076))

(declare-fun d!882492 () Bool)

(declare-fun charsToBigInt!1 (List!36310) Int)

(assert (=> d!882492 (= (inv!17 (value!169401 (h!41609 tokens!494))) (= (charsToBigInt!1 (text!38640 (value!169401 (h!41609 tokens!494)))) (value!169393 (value!169401 (h!41609 tokens!494)))))))

(declare-fun bs!542159 () Bool)

(assert (= bs!542159 d!882492))

(declare-fun m!3488581 () Bool)

(assert (=> bs!542159 m!3488581))

(assert (=> b!3213733 d!882492))

(declare-fun d!882494 () Bool)

(assert (=> d!882494 (dynLambda!14628 lambda!117555 (h!41609 (t!239158 tokens!494)))))

(assert (=> d!882494 true))

(declare-fun _$7!1103 () Unit!50676)

(assert (=> d!882494 (= (choose!18756 tokens!494 lambda!117555 (h!41609 (t!239158 tokens!494))) _$7!1103)))

(declare-fun b_lambda!88285 () Bool)

(assert (=> (not b_lambda!88285) (not d!882494)))

(declare-fun bs!542160 () Bool)

(assert (= bs!542160 d!882494))

(assert (=> bs!542160 m!3483985))

(assert (=> d!880966 d!882494))

(declare-fun d!882496 () Bool)

(declare-fun res!1308973 () Bool)

(declare-fun e!2004978 () Bool)

(assert (=> d!882496 (=> res!1308973 e!2004978)))

(assert (=> d!882496 (= res!1308973 ((_ is Nil!36189) tokens!494))))

(assert (=> d!882496 (= (forall!7396 tokens!494 lambda!117555) e!2004978)))

(declare-fun b!3215665 () Bool)

(declare-fun e!2004979 () Bool)

(assert (=> b!3215665 (= e!2004978 e!2004979)))

(declare-fun res!1308974 () Bool)

(assert (=> b!3215665 (=> (not res!1308974) (not e!2004979))))

(assert (=> b!3215665 (= res!1308974 (dynLambda!14628 lambda!117555 (h!41609 tokens!494)))))

(declare-fun b!3215666 () Bool)

(assert (=> b!3215666 (= e!2004979 (forall!7396 (t!239158 tokens!494) lambda!117555))))

(assert (= (and d!882496 (not res!1308973)) b!3215665))

(assert (= (and b!3215665 res!1308974) b!3215666))

(declare-fun b_lambda!88287 () Bool)

(assert (=> (not b_lambda!88287) (not b!3215665)))

(declare-fun m!3488583 () Bool)

(assert (=> b!3215665 m!3488583))

(declare-fun m!3488585 () Bool)

(assert (=> b!3215666 m!3488585))

(assert (=> d!880966 d!882496))

(declare-fun d!882498 () Bool)

(declare-fun res!1308975 () Bool)

(declare-fun e!2004980 () Bool)

(assert (=> d!882498 (=> res!1308975 e!2004980)))

(assert (=> d!882498 (= res!1308975 ((_ is Nil!36189) (list!12877 (seqFromList!3523 tokens!494))))))

(assert (=> d!882498 (= (forall!7396 (list!12877 (seqFromList!3523 tokens!494)) lambda!117565) e!2004980)))

(declare-fun b!3215667 () Bool)

(declare-fun e!2004981 () Bool)

(assert (=> b!3215667 (= e!2004980 e!2004981)))

(declare-fun res!1308976 () Bool)

(assert (=> b!3215667 (=> (not res!1308976) (not e!2004981))))

(assert (=> b!3215667 (= res!1308976 (dynLambda!14628 lambda!117565 (h!41609 (list!12877 (seqFromList!3523 tokens!494)))))))

(declare-fun b!3215668 () Bool)

(assert (=> b!3215668 (= e!2004981 (forall!7396 (t!239158 (list!12877 (seqFromList!3523 tokens!494))) lambda!117565))))

(assert (= (and d!882498 (not res!1308975)) b!3215667))

(assert (= (and b!3215667 res!1308976) b!3215668))

(declare-fun b_lambda!88289 () Bool)

(assert (=> (not b_lambda!88289) (not b!3215667)))

(declare-fun m!3488587 () Bool)

(assert (=> b!3215667 m!3488587))

(declare-fun m!3488589 () Bool)

(assert (=> b!3215668 m!3488589))

(assert (=> d!881164 d!882498))

(declare-fun d!882500 () Bool)

(assert (=> d!882500 (= (list!12877 (seqFromList!3523 tokens!494)) (list!12881 (c!539814 (seqFromList!3523 tokens!494))))))

(declare-fun bs!542161 () Bool)

(assert (= bs!542161 d!882500))

(declare-fun m!3488591 () Bool)

(assert (=> bs!542161 m!3488591))

(assert (=> d!881164 d!882500))

(declare-fun d!882502 () Bool)

(declare-fun lt!1087962 () Bool)

(assert (=> d!882502 (= lt!1087962 (forall!7396 (list!12877 (seqFromList!3523 tokens!494)) lambda!117565))))

(declare-fun forall!7402 (Conc!10828 Int) Bool)

(assert (=> d!882502 (= lt!1087962 (forall!7402 (c!539814 (seqFromList!3523 tokens!494)) lambda!117565))))

(assert (=> d!882502 (= (forall!7398 (seqFromList!3523 tokens!494) lambda!117565) lt!1087962)))

(declare-fun bs!542165 () Bool)

(assert (= bs!542165 d!882502))

(assert (=> bs!542165 m!3483445))

(assert (=> bs!542165 m!3484925))

(assert (=> bs!542165 m!3484925))

(assert (=> bs!542165 m!3484927))

(declare-fun m!3488613 () Bool)

(assert (=> bs!542165 m!3488613))

(assert (=> d!881164 d!882502))

(assert (=> d!881164 d!881226))

(declare-fun d!882510 () Bool)

(assert (=> d!882510 (= (isEmpty!20292 (list!12877 (_1!20931 (lex!2145 thiss!18206 rules!2135 lt!1086549)))) ((_ is Nil!36189) (list!12877 (_1!20931 (lex!2145 thiss!18206 rules!2135 lt!1086549)))))))

(assert (=> d!881116 d!882510))

(declare-fun d!882516 () Bool)

(assert (=> d!882516 (= (list!12877 (_1!20931 (lex!2145 thiss!18206 rules!2135 lt!1086549))) (list!12881 (c!539814 (_1!20931 (lex!2145 thiss!18206 rules!2135 lt!1086549)))))))

(declare-fun bs!542167 () Bool)

(assert (= bs!542167 d!882516))

(declare-fun m!3488621 () Bool)

(assert (=> bs!542167 m!3488621))

(assert (=> d!881116 d!882516))

(declare-fun lt!1088002 () Bool)

(declare-fun d!882518 () Bool)

(assert (=> d!882518 (= lt!1088002 (isEmpty!20292 (list!12881 (c!539814 (_1!20931 (lex!2145 thiss!18206 rules!2135 lt!1086549))))))))

(assert (=> d!882518 (= lt!1088002 (= (size!27278 (c!539814 (_1!20931 (lex!2145 thiss!18206 rules!2135 lt!1086549)))) 0))))

(assert (=> d!882518 (= (isEmpty!20293 (c!539814 (_1!20931 (lex!2145 thiss!18206 rules!2135 lt!1086549)))) lt!1088002)))

(declare-fun bs!542168 () Bool)

(assert (= bs!542168 d!882518))

(assert (=> bs!542168 m!3488621))

(assert (=> bs!542168 m!3488621))

(declare-fun m!3488623 () Bool)

(assert (=> bs!542168 m!3488623))

(declare-fun m!3488625 () Bool)

(assert (=> bs!542168 m!3488625))

(assert (=> d!881116 d!882518))

(assert (=> b!3213708 d!881616))

(assert (=> b!3213708 d!881618))

(declare-fun b!3215693 () Bool)

(declare-fun res!1308987 () Bool)

(declare-fun e!2004995 () Bool)

(assert (=> b!3215693 (=> (not res!1308987) (not e!2004995))))

(declare-fun lt!1088003 () List!36311)

(assert (=> b!3215693 (= res!1308987 (= (size!27274 lt!1088003) (+ (size!27274 (list!12875 (charsOf!3242 (h!41609 (t!239158 tokens!494))))) (size!27274 (list!12875 (charsOf!3242 separatorToken!241))))))))

(declare-fun b!3215692 () Bool)

(declare-fun e!2004996 () List!36311)

(assert (=> b!3215692 (= e!2004996 (Cons!36187 (h!41607 (list!12875 (charsOf!3242 (h!41609 (t!239158 tokens!494))))) (++!8688 (t!239156 (list!12875 (charsOf!3242 (h!41609 (t!239158 tokens!494))))) (list!12875 (charsOf!3242 separatorToken!241)))))))

(declare-fun b!3215691 () Bool)

(assert (=> b!3215691 (= e!2004996 (list!12875 (charsOf!3242 separatorToken!241)))))

(declare-fun d!882520 () Bool)

(assert (=> d!882520 e!2004995))

(declare-fun res!1308986 () Bool)

(assert (=> d!882520 (=> (not res!1308986) (not e!2004995))))

(assert (=> d!882520 (= res!1308986 (= (content!4894 lt!1088003) ((_ map or) (content!4894 (list!12875 (charsOf!3242 (h!41609 (t!239158 tokens!494))))) (content!4894 (list!12875 (charsOf!3242 separatorToken!241))))))))

(assert (=> d!882520 (= lt!1088003 e!2004996)))

(declare-fun c!540581 () Bool)

(assert (=> d!882520 (= c!540581 ((_ is Nil!36187) (list!12875 (charsOf!3242 (h!41609 (t!239158 tokens!494))))))))

(assert (=> d!882520 (= (++!8688 (list!12875 (charsOf!3242 (h!41609 (t!239158 tokens!494)))) (list!12875 (charsOf!3242 separatorToken!241))) lt!1088003)))

(declare-fun b!3215694 () Bool)

(assert (=> b!3215694 (= e!2004995 (or (not (= (list!12875 (charsOf!3242 separatorToken!241)) Nil!36187)) (= lt!1088003 (list!12875 (charsOf!3242 (h!41609 (t!239158 tokens!494)))))))))

(assert (= (and d!882520 c!540581) b!3215691))

(assert (= (and d!882520 (not c!540581)) b!3215692))

(assert (= (and d!882520 res!1308986) b!3215693))

(assert (= (and b!3215693 res!1308987) b!3215694))

(declare-fun m!3488627 () Bool)

(assert (=> b!3215693 m!3488627))

(assert (=> b!3215693 m!3483465))

(declare-fun m!3488629 () Bool)

(assert (=> b!3215693 m!3488629))

(assert (=> b!3215693 m!3483469))

(declare-fun m!3488631 () Bool)

(assert (=> b!3215693 m!3488631))

(assert (=> b!3215692 m!3483469))

(declare-fun m!3488633 () Bool)

(assert (=> b!3215692 m!3488633))

(declare-fun m!3488635 () Bool)

(assert (=> d!882520 m!3488635))

(assert (=> d!882520 m!3483465))

(declare-fun m!3488637 () Bool)

(assert (=> d!882520 m!3488637))

(assert (=> d!882520 m!3483469))

(declare-fun m!3488639 () Bool)

(assert (=> d!882520 m!3488639))

(assert (=> b!3213472 d!882520))

(assert (=> b!3213472 d!881102))

(assert (=> b!3213472 d!881094))

(assert (=> b!3213472 d!881096))

(declare-fun b!3215697 () Bool)

(declare-fun res!1308989 () Bool)

(declare-fun e!2004997 () Bool)

(assert (=> b!3215697 (=> (not res!1308989) (not e!2004997))))

(declare-fun lt!1088004 () List!36311)

(assert (=> b!3215697 (= res!1308989 (= (size!27274 lt!1088004) (+ (size!27274 (++!8688 (list!12875 (charsOf!3242 (h!41609 (t!239158 tokens!494)))) (list!12875 (charsOf!3242 separatorToken!241)))) (size!27274 (printWithSeparatorTokenList!160 thiss!18206 (t!239158 (t!239158 tokens!494)) separatorToken!241)))))))

(declare-fun b!3215696 () Bool)

(declare-fun e!2004998 () List!36311)

(assert (=> b!3215696 (= e!2004998 (Cons!36187 (h!41607 (++!8688 (list!12875 (charsOf!3242 (h!41609 (t!239158 tokens!494)))) (list!12875 (charsOf!3242 separatorToken!241)))) (++!8688 (t!239156 (++!8688 (list!12875 (charsOf!3242 (h!41609 (t!239158 tokens!494)))) (list!12875 (charsOf!3242 separatorToken!241)))) (printWithSeparatorTokenList!160 thiss!18206 (t!239158 (t!239158 tokens!494)) separatorToken!241))))))

(declare-fun b!3215695 () Bool)

(assert (=> b!3215695 (= e!2004998 (printWithSeparatorTokenList!160 thiss!18206 (t!239158 (t!239158 tokens!494)) separatorToken!241))))

(declare-fun d!882522 () Bool)

(assert (=> d!882522 e!2004997))

(declare-fun res!1308988 () Bool)

(assert (=> d!882522 (=> (not res!1308988) (not e!2004997))))

(assert (=> d!882522 (= res!1308988 (= (content!4894 lt!1088004) ((_ map or) (content!4894 (++!8688 (list!12875 (charsOf!3242 (h!41609 (t!239158 tokens!494)))) (list!12875 (charsOf!3242 separatorToken!241)))) (content!4894 (printWithSeparatorTokenList!160 thiss!18206 (t!239158 (t!239158 tokens!494)) separatorToken!241)))))))

(assert (=> d!882522 (= lt!1088004 e!2004998)))

(declare-fun c!540582 () Bool)

(assert (=> d!882522 (= c!540582 ((_ is Nil!36187) (++!8688 (list!12875 (charsOf!3242 (h!41609 (t!239158 tokens!494)))) (list!12875 (charsOf!3242 separatorToken!241)))))))

(assert (=> d!882522 (= (++!8688 (++!8688 (list!12875 (charsOf!3242 (h!41609 (t!239158 tokens!494)))) (list!12875 (charsOf!3242 separatorToken!241))) (printWithSeparatorTokenList!160 thiss!18206 (t!239158 (t!239158 tokens!494)) separatorToken!241)) lt!1088004)))

(declare-fun b!3215698 () Bool)

(assert (=> b!3215698 (= e!2004997 (or (not (= (printWithSeparatorTokenList!160 thiss!18206 (t!239158 (t!239158 tokens!494)) separatorToken!241) Nil!36187)) (= lt!1088004 (++!8688 (list!12875 (charsOf!3242 (h!41609 (t!239158 tokens!494)))) (list!12875 (charsOf!3242 separatorToken!241))))))))

(assert (= (and d!882522 c!540582) b!3215695))

(assert (= (and d!882522 (not c!540582)) b!3215696))

(assert (= (and d!882522 res!1308988) b!3215697))

(assert (= (and b!3215697 res!1308989) b!3215698))

(declare-fun m!3488655 () Bool)

(assert (=> b!3215697 m!3488655))

(assert (=> b!3215697 m!3484571))

(declare-fun m!3488663 () Bool)

(assert (=> b!3215697 m!3488663))

(assert (=> b!3215697 m!3483473))

(assert (=> b!3215697 m!3484541))

(assert (=> b!3215696 m!3483473))

(declare-fun m!3488669 () Bool)

(assert (=> b!3215696 m!3488669))

(declare-fun m!3488675 () Bool)

(assert (=> d!882522 m!3488675))

(assert (=> d!882522 m!3484571))

(declare-fun m!3488677 () Bool)

(assert (=> d!882522 m!3488677))

(assert (=> d!882522 m!3483473))

(assert (=> d!882522 m!3484549))

(assert (=> b!3213472 d!882522))

(assert (=> b!3213472 d!881106))

(assert (=> b!3213472 d!881108))

(declare-fun d!882524 () Bool)

(assert (=> d!882524 (= (inv!49056 (dynLambda!14631 (toChars!7173 (transformation!5226 (rule!7672 (h!41609 tokens!494)))) (value!169401 (h!41609 tokens!494)))) (isBalanced!3222 (c!539813 (dynLambda!14631 (toChars!7173 (transformation!5226 (rule!7672 (h!41609 tokens!494)))) (value!169401 (h!41609 tokens!494))))))))

(declare-fun bs!542169 () Bool)

(assert (= bs!542169 d!882524))

(declare-fun m!3488691 () Bool)

(assert (=> bs!542169 m!3488691))

(assert (=> tb!158195 d!882524))

(declare-fun d!882526 () Bool)

(assert (=> d!882526 (= (list!12875 lt!1086814) (list!12879 (c!539813 lt!1086814)))))

(declare-fun bs!542170 () Bool)

(assert (= bs!542170 d!882526))

(declare-fun m!3488703 () Bool)

(assert (=> bs!542170 m!3488703))

(assert (=> d!881026 d!882526))

(declare-fun d!882528 () Bool)

(declare-fun c!540583 () Bool)

(assert (=> d!882528 (= c!540583 ((_ is Cons!36189) (list!12877 lt!1086546)))))

(declare-fun e!2004999 () List!36311)

(assert (=> d!882528 (= (printList!1365 thiss!18206 (list!12877 lt!1086546)) e!2004999)))

(declare-fun b!3215699 () Bool)

(assert (=> b!3215699 (= e!2004999 (++!8688 (list!12875 (charsOf!3242 (h!41609 (list!12877 lt!1086546)))) (printList!1365 thiss!18206 (t!239158 (list!12877 lt!1086546)))))))

(declare-fun b!3215700 () Bool)

(assert (=> b!3215700 (= e!2004999 Nil!36187)))

(assert (= (and d!882528 c!540583) b!3215699))

(assert (= (and d!882528 (not c!540583)) b!3215700))

(declare-fun m!3488717 () Bool)

(assert (=> b!3215699 m!3488717))

(assert (=> b!3215699 m!3488717))

(declare-fun m!3488719 () Bool)

(assert (=> b!3215699 m!3488719))

(declare-fun m!3488721 () Bool)

(assert (=> b!3215699 m!3488721))

(assert (=> b!3215699 m!3488719))

(assert (=> b!3215699 m!3488721))

(declare-fun m!3488725 () Bool)

(assert (=> b!3215699 m!3488725))

(assert (=> d!881026 d!882528))

(assert (=> d!881026 d!881708))

(assert (=> d!881026 d!881018))

(declare-fun d!882530 () Bool)

(declare-fun lt!1088005 () Int)

(assert (=> d!882530 (>= lt!1088005 0)))

(declare-fun e!2005000 () Int)

(assert (=> d!882530 (= lt!1088005 e!2005000)))

(declare-fun c!540584 () Bool)

(assert (=> d!882530 (= c!540584 ((_ is Nil!36187) (originalCharacters!5940 (h!41609 tokens!494))))))

(assert (=> d!882530 (= (size!27274 (originalCharacters!5940 (h!41609 tokens!494))) lt!1088005)))

(declare-fun b!3215701 () Bool)

(assert (=> b!3215701 (= e!2005000 0)))

(declare-fun b!3215702 () Bool)

(assert (=> b!3215702 (= e!2005000 (+ 1 (size!27274 (t!239156 (originalCharacters!5940 (h!41609 tokens!494))))))))

(assert (= (and d!882530 c!540584) b!3215701))

(assert (= (and d!882530 (not c!540584)) b!3215702))

(declare-fun m!3488741 () Bool)

(assert (=> b!3215702 m!3488741))

(assert (=> b!3213516 d!882530))

(declare-fun d!882532 () Bool)

(assert (=> d!882532 (= (isEmpty!20283 lt!1086794) (not ((_ is Some!7152) lt!1086794)))))

(assert (=> d!881004 d!882532))

(assert (=> d!881004 d!881228))

(assert (=> b!3213684 d!881616))

(assert (=> b!3213684 d!881618))

(declare-fun b!3215703 () Bool)

(declare-fun res!1308995 () Bool)

(declare-fun e!2005004 () Bool)

(assert (=> b!3215703 (=> res!1308995 e!2005004)))

(assert (=> b!3215703 (= res!1308995 (not (isEmpty!20288 (tail!5217 (list!12875 (charsOf!3242 (_1!20932 (get!11526 lt!1086777))))))))))

(declare-fun b!3215704 () Bool)

(declare-fun res!1308997 () Bool)

(declare-fun e!2005002 () Bool)

(assert (=> b!3215704 (=> res!1308997 e!2005002)))

(declare-fun e!2005003 () Bool)

(assert (=> b!3215704 (= res!1308997 e!2005003)))

(declare-fun res!1308992 () Bool)

(assert (=> b!3215704 (=> (not res!1308992) (not e!2005003))))

(declare-fun lt!1088006 () Bool)

(assert (=> b!3215704 (= res!1308992 lt!1088006)))

(declare-fun bm!232791 () Bool)

(declare-fun call!232796 () Bool)

(assert (=> bm!232791 (= call!232796 (isEmpty!20288 (list!12875 (charsOf!3242 (_1!20932 (get!11526 lt!1086777))))))))

(declare-fun b!3215705 () Bool)

(assert (=> b!3215705 (= e!2005003 (= (head!7047 (list!12875 (charsOf!3242 (_1!20932 (get!11526 lt!1086777))))) (c!539812 (regex!5226 (rule!7672 (_1!20932 (get!11526 lt!1086777)))))))))

(declare-fun b!3215706 () Bool)

(declare-fun e!2005007 () Bool)

(assert (=> b!3215706 (= e!2005007 (matchR!4619 (derivativeStep!2953 (regex!5226 (rule!7672 (_1!20932 (get!11526 lt!1086777)))) (head!7047 (list!12875 (charsOf!3242 (_1!20932 (get!11526 lt!1086777)))))) (tail!5217 (list!12875 (charsOf!3242 (_1!20932 (get!11526 lt!1086777)))))))))

(declare-fun d!882534 () Bool)

(declare-fun e!2005005 () Bool)

(assert (=> d!882534 e!2005005))

(declare-fun c!540585 () Bool)

(assert (=> d!882534 (= c!540585 ((_ is EmptyExpr!9985) (regex!5226 (rule!7672 (_1!20932 (get!11526 lt!1086777))))))))

(assert (=> d!882534 (= lt!1088006 e!2005007)))

(declare-fun c!540587 () Bool)

(assert (=> d!882534 (= c!540587 (isEmpty!20288 (list!12875 (charsOf!3242 (_1!20932 (get!11526 lt!1086777))))))))

(assert (=> d!882534 (validRegex!4554 (regex!5226 (rule!7672 (_1!20932 (get!11526 lt!1086777)))))))

(assert (=> d!882534 (= (matchR!4619 (regex!5226 (rule!7672 (_1!20932 (get!11526 lt!1086777)))) (list!12875 (charsOf!3242 (_1!20932 (get!11526 lt!1086777))))) lt!1088006)))

(declare-fun b!3215707 () Bool)

(declare-fun e!2005006 () Bool)

(assert (=> b!3215707 (= e!2005006 (not lt!1088006))))

(declare-fun b!3215708 () Bool)

(assert (=> b!3215708 (= e!2005004 (not (= (head!7047 (list!12875 (charsOf!3242 (_1!20932 (get!11526 lt!1086777))))) (c!539812 (regex!5226 (rule!7672 (_1!20932 (get!11526 lt!1086777))))))))))

(declare-fun b!3215709 () Bool)

(declare-fun res!1308994 () Bool)

(assert (=> b!3215709 (=> (not res!1308994) (not e!2005003))))

(assert (=> b!3215709 (= res!1308994 (isEmpty!20288 (tail!5217 (list!12875 (charsOf!3242 (_1!20932 (get!11526 lt!1086777)))))))))

(declare-fun b!3215710 () Bool)

(declare-fun res!1308990 () Bool)

(assert (=> b!3215710 (=> (not res!1308990) (not e!2005003))))

(assert (=> b!3215710 (= res!1308990 (not call!232796))))

(declare-fun b!3215711 () Bool)

(declare-fun e!2005001 () Bool)

(assert (=> b!3215711 (= e!2005002 e!2005001)))

(declare-fun res!1308993 () Bool)

(assert (=> b!3215711 (=> (not res!1308993) (not e!2005001))))

(assert (=> b!3215711 (= res!1308993 (not lt!1088006))))

(declare-fun b!3215712 () Bool)

(assert (=> b!3215712 (= e!2005005 e!2005006)))

(declare-fun c!540586 () Bool)

(assert (=> b!3215712 (= c!540586 ((_ is EmptyLang!9985) (regex!5226 (rule!7672 (_1!20932 (get!11526 lt!1086777))))))))

(declare-fun b!3215713 () Bool)

(declare-fun res!1308991 () Bool)

(assert (=> b!3215713 (=> res!1308991 e!2005002)))

(assert (=> b!3215713 (= res!1308991 (not ((_ is ElementMatch!9985) (regex!5226 (rule!7672 (_1!20932 (get!11526 lt!1086777)))))))))

(assert (=> b!3215713 (= e!2005006 e!2005002)))

(declare-fun b!3215714 () Bool)

(assert (=> b!3215714 (= e!2005001 e!2005004)))

(declare-fun res!1308996 () Bool)

(assert (=> b!3215714 (=> res!1308996 e!2005004)))

(assert (=> b!3215714 (= res!1308996 call!232796)))

(declare-fun b!3215715 () Bool)

(assert (=> b!3215715 (= e!2005007 (nullable!3400 (regex!5226 (rule!7672 (_1!20932 (get!11526 lt!1086777))))))))

(declare-fun b!3215716 () Bool)

(assert (=> b!3215716 (= e!2005005 (= lt!1088006 call!232796))))

(assert (= (and d!882534 c!540587) b!3215715))

(assert (= (and d!882534 (not c!540587)) b!3215706))

(assert (= (and d!882534 c!540585) b!3215716))

(assert (= (and d!882534 (not c!540585)) b!3215712))

(assert (= (and b!3215712 c!540586) b!3215707))

(assert (= (and b!3215712 (not c!540586)) b!3215713))

(assert (= (and b!3215713 (not res!1308991)) b!3215704))

(assert (= (and b!3215704 res!1308992) b!3215710))

(assert (= (and b!3215710 res!1308990) b!3215709))

(assert (= (and b!3215709 res!1308994) b!3215705))

(assert (= (and b!3215704 (not res!1308997)) b!3215711))

(assert (= (and b!3215711 res!1308993) b!3215714))

(assert (= (and b!3215714 (not res!1308996)) b!3215703))

(assert (= (and b!3215703 (not res!1308995)) b!3215708))

(assert (= (or b!3215716 b!3215714 b!3215710) bm!232791))

(declare-fun m!3488751 () Bool)

(assert (=> b!3215715 m!3488751))

(assert (=> b!3215703 m!3484091))

(declare-fun m!3488753 () Bool)

(assert (=> b!3215703 m!3488753))

(assert (=> b!3215703 m!3488753))

(declare-fun m!3488755 () Bool)

(assert (=> b!3215703 m!3488755))

(assert (=> b!3215705 m!3484091))

(declare-fun m!3488757 () Bool)

(assert (=> b!3215705 m!3488757))

(assert (=> b!3215708 m!3484091))

(assert (=> b!3215708 m!3488757))

(assert (=> b!3215706 m!3484091))

(assert (=> b!3215706 m!3488757))

(assert (=> b!3215706 m!3488757))

(declare-fun m!3488759 () Bool)

(assert (=> b!3215706 m!3488759))

(assert (=> b!3215706 m!3484091))

(assert (=> b!3215706 m!3488753))

(assert (=> b!3215706 m!3488759))

(assert (=> b!3215706 m!3488753))

(declare-fun m!3488769 () Bool)

(assert (=> b!3215706 m!3488769))

(assert (=> d!882534 m!3484091))

(declare-fun m!3488773 () Bool)

(assert (=> d!882534 m!3488773))

(declare-fun m!3488777 () Bool)

(assert (=> d!882534 m!3488777))

(assert (=> bm!232791 m!3484091))

(assert (=> bm!232791 m!3488773))

(assert (=> b!3215709 m!3484091))

(assert (=> b!3215709 m!3488753))

(assert (=> b!3215709 m!3488753))

(assert (=> b!3215709 m!3488755))

(assert (=> b!3213268 d!882534))

(assert (=> b!3213268 d!882040))

(assert (=> b!3213268 d!882034))

(assert (=> b!3213268 d!882036))

(declare-fun d!882540 () Bool)

(declare-fun res!1309010 () Bool)

(declare-fun e!2005015 () Bool)

(assert (=> d!882540 (=> res!1309010 e!2005015)))

(assert (=> d!882540 (= res!1309010 (not ((_ is Node!10828) (c!539814 lt!1086929))))))

(assert (=> d!882540 (= (isBalanced!3220 (c!539814 lt!1086929)) e!2005015)))

(declare-fun b!3215731 () Bool)

(declare-fun res!1309011 () Bool)

(declare-fun e!2005016 () Bool)

(assert (=> b!3215731 (=> (not res!1309011) (not e!2005016))))

(assert (=> b!3215731 (= res!1309011 (isBalanced!3220 (right!28473 (c!539814 lt!1086929))))))

(declare-fun b!3215732 () Bool)

(declare-fun res!1309008 () Bool)

(assert (=> b!3215732 (=> (not res!1309008) (not e!2005016))))

(assert (=> b!3215732 (= res!1309008 (isBalanced!3220 (left!28143 (c!539814 lt!1086929))))))

(declare-fun b!3215733 () Bool)

(declare-fun res!1309007 () Bool)

(assert (=> b!3215733 (=> (not res!1309007) (not e!2005016))))

(assert (=> b!3215733 (= res!1309007 (not (isEmpty!20293 (left!28143 (c!539814 lt!1086929)))))))

(declare-fun b!3215734 () Bool)

(declare-fun res!1309009 () Bool)

(assert (=> b!3215734 (=> (not res!1309009) (not e!2005016))))

(assert (=> b!3215734 (= res!1309009 (<= (- (height!1557 (left!28143 (c!539814 lt!1086929))) (height!1557 (right!28473 (c!539814 lt!1086929)))) 1))))

(declare-fun b!3215735 () Bool)

(assert (=> b!3215735 (= e!2005016 (not (isEmpty!20293 (right!28473 (c!539814 lt!1086929)))))))

(declare-fun b!3215736 () Bool)

(assert (=> b!3215736 (= e!2005015 e!2005016)))

(declare-fun res!1309006 () Bool)

(assert (=> b!3215736 (=> (not res!1309006) (not e!2005016))))

(assert (=> b!3215736 (= res!1309006 (<= (- 1) (- (height!1557 (left!28143 (c!539814 lt!1086929))) (height!1557 (right!28473 (c!539814 lt!1086929))))))))

(assert (= (and d!882540 (not res!1309010)) b!3215736))

(assert (= (and b!3215736 res!1309006) b!3215734))

(assert (= (and b!3215734 res!1309009) b!3215732))

(assert (= (and b!3215732 res!1309008) b!3215731))

(assert (= (and b!3215731 res!1309011) b!3215733))

(assert (= (and b!3215733 res!1309007) b!3215735))

(declare-fun m!3488789 () Bool)

(assert (=> b!3215731 m!3488789))

(declare-fun m!3488793 () Bool)

(assert (=> b!3215732 m!3488793))

(declare-fun m!3488797 () Bool)

(assert (=> b!3215734 m!3488797))

(declare-fun m!3488799 () Bool)

(assert (=> b!3215734 m!3488799))

(declare-fun m!3488801 () Bool)

(assert (=> b!3215733 m!3488801))

(declare-fun m!3488803 () Bool)

(assert (=> b!3215735 m!3488803))

(assert (=> b!3215736 m!3488797))

(assert (=> b!3215736 m!3488799))

(assert (=> b!3213743 d!882540))

(declare-fun d!882548 () Bool)

(assert (=> d!882548 (= (list!12877 (_1!20931 (lex!2145 thiss!18206 rules!2135 (print!1880 thiss!18206 (singletonSeq!2322 (h!41609 tokens!494)))))) (list!12881 (c!539814 (_1!20931 (lex!2145 thiss!18206 rules!2135 (print!1880 thiss!18206 (singletonSeq!2322 (h!41609 tokens!494))))))))))

(declare-fun bs!542173 () Bool)

(assert (= bs!542173 d!882548))

(declare-fun m!3488805 () Bool)

(assert (=> bs!542173 m!3488805))

(assert (=> d!881114 d!882548))

(assert (=> d!881114 d!882420))

(assert (=> d!881114 d!882422))

(declare-fun d!882550 () Bool)

(declare-fun lt!1088037 () Int)

(assert (=> d!882550 (= lt!1088037 (size!27277 (list!12877 (_1!20931 lt!1086874))))))

(assert (=> d!882550 (= lt!1088037 (size!27278 (c!539814 (_1!20931 lt!1086874))))))

(assert (=> d!882550 (= (size!27275 (_1!20931 lt!1086874)) lt!1088037)))

(declare-fun bs!542174 () Bool)

(assert (= bs!542174 d!882550))

(declare-fun m!3488807 () Bool)

(assert (=> bs!542174 m!3488807))

(assert (=> bs!542174 m!3488807))

(declare-fun m!3488809 () Bool)

(assert (=> bs!542174 m!3488809))

(declare-fun m!3488811 () Bool)

(assert (=> bs!542174 m!3488811))

(assert (=> d!881114 d!882550))

(declare-fun d!882552 () Bool)

(assert (=> d!882552 (= (list!12877 (singletonSeq!2322 (h!41609 tokens!494))) (list!12881 (c!539814 (singletonSeq!2322 (h!41609 tokens!494)))))))

(declare-fun bs!542175 () Bool)

(assert (= bs!542175 d!882552))

(declare-fun m!3488813 () Bool)

(assert (=> bs!542175 m!3488813))

(assert (=> d!881114 d!882552))

(assert (=> d!881114 d!881248))

(assert (=> d!881114 d!881226))

(assert (=> b!3213455 d!881046))

(assert (=> b!3213455 d!881042))

(declare-fun b!3215746 () Bool)

(declare-fun res!1309014 () Bool)

(declare-fun e!2005021 () Bool)

(assert (=> b!3215746 (=> (not res!1309014) (not e!2005021))))

(declare-fun lt!1088045 () List!36311)

(assert (=> b!3215746 (= res!1309014 (= (size!27274 lt!1088045) (+ (size!27274 (++!8688 (list!12875 (charsOf!3242 (h!41609 tokens!494))) (list!12875 (charsOf!3242 separatorToken!241)))) (size!27274 (printWithSeparatorTokenList!160 thiss!18206 (t!239158 tokens!494) separatorToken!241)))))))

(declare-fun e!2005022 () List!36311)

(declare-fun b!3215745 () Bool)

(assert (=> b!3215745 (= e!2005022 (Cons!36187 (h!41607 (++!8688 (list!12875 (charsOf!3242 (h!41609 tokens!494))) (list!12875 (charsOf!3242 separatorToken!241)))) (++!8688 (t!239156 (++!8688 (list!12875 (charsOf!3242 (h!41609 tokens!494))) (list!12875 (charsOf!3242 separatorToken!241)))) (printWithSeparatorTokenList!160 thiss!18206 (t!239158 tokens!494) separatorToken!241))))))

(declare-fun b!3215744 () Bool)

(assert (=> b!3215744 (= e!2005022 (printWithSeparatorTokenList!160 thiss!18206 (t!239158 tokens!494) separatorToken!241))))

(declare-fun d!882554 () Bool)

(assert (=> d!882554 e!2005021))

(declare-fun res!1309013 () Bool)

(assert (=> d!882554 (=> (not res!1309013) (not e!2005021))))

(assert (=> d!882554 (= res!1309013 (= (content!4894 lt!1088045) ((_ map or) (content!4894 (++!8688 (list!12875 (charsOf!3242 (h!41609 tokens!494))) (list!12875 (charsOf!3242 separatorToken!241)))) (content!4894 (printWithSeparatorTokenList!160 thiss!18206 (t!239158 tokens!494) separatorToken!241)))))))

(assert (=> d!882554 (= lt!1088045 e!2005022)))

(declare-fun c!540594 () Bool)

(assert (=> d!882554 (= c!540594 ((_ is Nil!36187) (++!8688 (list!12875 (charsOf!3242 (h!41609 tokens!494))) (list!12875 (charsOf!3242 separatorToken!241)))))))

(assert (=> d!882554 (= (++!8688 (++!8688 (list!12875 (charsOf!3242 (h!41609 tokens!494))) (list!12875 (charsOf!3242 separatorToken!241))) (printWithSeparatorTokenList!160 thiss!18206 (t!239158 tokens!494) separatorToken!241)) lt!1088045)))

(declare-fun b!3215747 () Bool)

(assert (=> b!3215747 (= e!2005021 (or (not (= (printWithSeparatorTokenList!160 thiss!18206 (t!239158 tokens!494) separatorToken!241) Nil!36187)) (= lt!1088045 (++!8688 (list!12875 (charsOf!3242 (h!41609 tokens!494))) (list!12875 (charsOf!3242 separatorToken!241))))))))

(assert (= (and d!882554 c!540594) b!3215744))

(assert (= (and d!882554 (not c!540594)) b!3215745))

(assert (= (and d!882554 res!1309013) b!3215746))

(assert (= (and b!3215746 res!1309014) b!3215747))

(declare-fun m!3488815 () Bool)

(assert (=> b!3215746 m!3488815))

(assert (=> b!3215746 m!3484511))

(declare-fun m!3488817 () Bool)

(assert (=> b!3215746 m!3488817))

(assert (=> b!3215746 m!3483463))

(declare-fun m!3488819 () Bool)

(assert (=> b!3215746 m!3488819))

(assert (=> b!3215745 m!3483463))

(declare-fun m!3488821 () Bool)

(assert (=> b!3215745 m!3488821))

(declare-fun m!3488823 () Bool)

(assert (=> d!882554 m!3488823))

(assert (=> d!882554 m!3484511))

(declare-fun m!3488825 () Bool)

(assert (=> d!882554 m!3488825))

(assert (=> d!882554 m!3483463))

(declare-fun m!3488827 () Bool)

(assert (=> d!882554 m!3488827))

(assert (=> b!3213455 d!882554))

(assert (=> b!3213455 d!881094))

(assert (=> b!3213455 d!881106))

(declare-fun b!3215750 () Bool)

(declare-fun res!1309016 () Bool)

(declare-fun e!2005023 () Bool)

(assert (=> b!3215750 (=> (not res!1309016) (not e!2005023))))

(declare-fun lt!1088046 () List!36311)

(assert (=> b!3215750 (= res!1309016 (= (size!27274 lt!1088046) (+ (size!27274 (list!12875 (charsOf!3242 (h!41609 tokens!494)))) (size!27274 (list!12875 (charsOf!3242 separatorToken!241))))))))

(declare-fun b!3215749 () Bool)

(declare-fun e!2005024 () List!36311)

(assert (=> b!3215749 (= e!2005024 (Cons!36187 (h!41607 (list!12875 (charsOf!3242 (h!41609 tokens!494)))) (++!8688 (t!239156 (list!12875 (charsOf!3242 (h!41609 tokens!494)))) (list!12875 (charsOf!3242 separatorToken!241)))))))

(declare-fun b!3215748 () Bool)

(assert (=> b!3215748 (= e!2005024 (list!12875 (charsOf!3242 separatorToken!241)))))

(declare-fun d!882556 () Bool)

(assert (=> d!882556 e!2005023))

(declare-fun res!1309015 () Bool)

(assert (=> d!882556 (=> (not res!1309015) (not e!2005023))))

(assert (=> d!882556 (= res!1309015 (= (content!4894 lt!1088046) ((_ map or) (content!4894 (list!12875 (charsOf!3242 (h!41609 tokens!494)))) (content!4894 (list!12875 (charsOf!3242 separatorToken!241))))))))

(assert (=> d!882556 (= lt!1088046 e!2005024)))

(declare-fun c!540595 () Bool)

(assert (=> d!882556 (= c!540595 ((_ is Nil!36187) (list!12875 (charsOf!3242 (h!41609 tokens!494)))))))

(assert (=> d!882556 (= (++!8688 (list!12875 (charsOf!3242 (h!41609 tokens!494))) (list!12875 (charsOf!3242 separatorToken!241))) lt!1088046)))

(declare-fun b!3215751 () Bool)

(assert (=> b!3215751 (= e!2005023 (or (not (= (list!12875 (charsOf!3242 separatorToken!241)) Nil!36187)) (= lt!1088046 (list!12875 (charsOf!3242 (h!41609 tokens!494))))))))

(assert (= (and d!882556 c!540595) b!3215748))

(assert (= (and d!882556 (not c!540595)) b!3215749))

(assert (= (and d!882556 res!1309015) b!3215750))

(assert (= (and b!3215750 res!1309016) b!3215751))

(declare-fun m!3488829 () Bool)

(assert (=> b!3215750 m!3488829))

(assert (=> b!3215750 m!3483381))

(assert (=> b!3215750 m!3485343))

(assert (=> b!3215750 m!3483469))

(assert (=> b!3215750 m!3488631))

(assert (=> b!3215749 m!3483469))

(declare-fun m!3488831 () Bool)

(assert (=> b!3215749 m!3488831))

(declare-fun m!3488833 () Bool)

(assert (=> d!882556 m!3488833))

(assert (=> d!882556 m!3483381))

(assert (=> d!882556 m!3485349))

(assert (=> d!882556 m!3483469))

(assert (=> d!882556 m!3488639))

(assert (=> b!3213455 d!882556))

(assert (=> b!3213455 d!881104))

(assert (=> b!3213302 d!881356))

(declare-fun b!3215754 () Bool)

(declare-fun res!1309018 () Bool)

(declare-fun e!2005025 () Bool)

(assert (=> b!3215754 (=> (not res!1309018) (not e!2005025))))

(declare-fun lt!1088047 () List!36311)

(assert (=> b!3215754 (= res!1309018 (= (size!27274 lt!1088047) (+ (size!27274 (t!239156 (++!8688 lt!1086561 lt!1086557))) (size!27274 (printWithSeparatorTokenList!160 thiss!18206 (t!239158 (t!239158 tokens!494)) separatorToken!241)))))))

(declare-fun b!3215753 () Bool)

(declare-fun e!2005026 () List!36311)

(assert (=> b!3215753 (= e!2005026 (Cons!36187 (h!41607 (t!239156 (++!8688 lt!1086561 lt!1086557))) (++!8688 (t!239156 (t!239156 (++!8688 lt!1086561 lt!1086557))) (printWithSeparatorTokenList!160 thiss!18206 (t!239158 (t!239158 tokens!494)) separatorToken!241))))))

(declare-fun b!3215752 () Bool)

(assert (=> b!3215752 (= e!2005026 (printWithSeparatorTokenList!160 thiss!18206 (t!239158 (t!239158 tokens!494)) separatorToken!241))))

(declare-fun d!882558 () Bool)

(assert (=> d!882558 e!2005025))

(declare-fun res!1309017 () Bool)

(assert (=> d!882558 (=> (not res!1309017) (not e!2005025))))

(assert (=> d!882558 (= res!1309017 (= (content!4894 lt!1088047) ((_ map or) (content!4894 (t!239156 (++!8688 lt!1086561 lt!1086557))) (content!4894 (printWithSeparatorTokenList!160 thiss!18206 (t!239158 (t!239158 tokens!494)) separatorToken!241)))))))

(assert (=> d!882558 (= lt!1088047 e!2005026)))

(declare-fun c!540596 () Bool)

(assert (=> d!882558 (= c!540596 ((_ is Nil!36187) (t!239156 (++!8688 lt!1086561 lt!1086557))))))

(assert (=> d!882558 (= (++!8688 (t!239156 (++!8688 lt!1086561 lt!1086557)) (printWithSeparatorTokenList!160 thiss!18206 (t!239158 (t!239158 tokens!494)) separatorToken!241)) lt!1088047)))

(declare-fun b!3215755 () Bool)

(assert (=> b!3215755 (= e!2005025 (or (not (= (printWithSeparatorTokenList!160 thiss!18206 (t!239158 (t!239158 tokens!494)) separatorToken!241) Nil!36187)) (= lt!1088047 (t!239156 (++!8688 lt!1086561 lt!1086557)))))))

(assert (= (and d!882558 c!540596) b!3215752))

(assert (= (and d!882558 (not c!540596)) b!3215753))

(assert (= (and d!882558 res!1309017) b!3215754))

(assert (= (and b!3215754 res!1309018) b!3215755))

(declare-fun m!3488849 () Bool)

(assert (=> b!3215754 m!3488849))

(declare-fun m!3488851 () Bool)

(assert (=> b!3215754 m!3488851))

(assert (=> b!3215754 m!3483473))

(assert (=> b!3215754 m!3484541))

(assert (=> b!3215753 m!3483473))

(declare-fun m!3488859 () Bool)

(assert (=> b!3215753 m!3488859))

(declare-fun m!3488861 () Bool)

(assert (=> d!882558 m!3488861))

(declare-fun m!3488863 () Bool)

(assert (=> d!882558 m!3488863))

(assert (=> d!882558 m!3483473))

(assert (=> d!882558 m!3484549))

(assert (=> b!3213463 d!882558))

(declare-fun d!882560 () Bool)

(assert (=> d!882560 (= (nullable!3400 (regex!5226 lt!1086545)) (nullableFct!969 (regex!5226 lt!1086545)))))

(declare-fun bs!542176 () Bool)

(assert (= bs!542176 d!882560))

(declare-fun m!3488875 () Bool)

(assert (=> bs!542176 m!3488875))

(assert (=> b!3213503 d!882560))

(declare-fun d!882562 () Bool)

(declare-fun c!540597 () Bool)

(assert (=> d!882562 (= c!540597 ((_ is Node!10827) (c!539813 (dynLambda!14631 (toChars!7173 (transformation!5226 (rule!7672 (h!41609 tokens!494)))) (value!169401 (h!41609 tokens!494))))))))

(declare-fun e!2005027 () Bool)

(assert (=> d!882562 (= (inv!49055 (c!539813 (dynLambda!14631 (toChars!7173 (transformation!5226 (rule!7672 (h!41609 tokens!494)))) (value!169401 (h!41609 tokens!494))))) e!2005027)))

(declare-fun b!3215756 () Bool)

(assert (=> b!3215756 (= e!2005027 (inv!49059 (c!539813 (dynLambda!14631 (toChars!7173 (transformation!5226 (rule!7672 (h!41609 tokens!494)))) (value!169401 (h!41609 tokens!494))))))))

(declare-fun b!3215757 () Bool)

(declare-fun e!2005028 () Bool)

(assert (=> b!3215757 (= e!2005027 e!2005028)))

(declare-fun res!1309019 () Bool)

(assert (=> b!3215757 (= res!1309019 (not ((_ is Leaf!17051) (c!539813 (dynLambda!14631 (toChars!7173 (transformation!5226 (rule!7672 (h!41609 tokens!494)))) (value!169401 (h!41609 tokens!494)))))))))

(assert (=> b!3215757 (=> res!1309019 e!2005028)))

(declare-fun b!3215758 () Bool)

(assert (=> b!3215758 (= e!2005028 (inv!49060 (c!539813 (dynLambda!14631 (toChars!7173 (transformation!5226 (rule!7672 (h!41609 tokens!494)))) (value!169401 (h!41609 tokens!494))))))))

(assert (= (and d!882562 c!540597) b!3215756))

(assert (= (and d!882562 (not c!540597)) b!3215757))

(assert (= (and b!3215757 (not res!1309019)) b!3215758))

(declare-fun m!3488899 () Bool)

(assert (=> b!3215756 m!3488899))

(declare-fun m!3488903 () Bool)

(assert (=> b!3215758 m!3488903))

(assert (=> b!3213372 d!882562))

(assert (=> b!3213424 d!881350))

(assert (=> b!3213424 d!881352))

(declare-fun d!882564 () Bool)

(declare-fun lt!1088048 () Bool)

(assert (=> d!882564 (= lt!1088048 (select (content!4894 (t!239156 (usedCharacters!542 (regex!5226 (rule!7672 (h!41609 tokens!494)))))) lt!1086540))))

(declare-fun e!2005029 () Bool)

(assert (=> d!882564 (= lt!1088048 e!2005029)))

(declare-fun res!1309021 () Bool)

(assert (=> d!882564 (=> (not res!1309021) (not e!2005029))))

(assert (=> d!882564 (= res!1309021 ((_ is Cons!36187) (t!239156 (usedCharacters!542 (regex!5226 (rule!7672 (h!41609 tokens!494)))))))))

(assert (=> d!882564 (= (contains!6469 (t!239156 (usedCharacters!542 (regex!5226 (rule!7672 (h!41609 tokens!494))))) lt!1086540) lt!1088048)))

(declare-fun b!3215759 () Bool)

(declare-fun e!2005030 () Bool)

(assert (=> b!3215759 (= e!2005029 e!2005030)))

(declare-fun res!1309020 () Bool)

(assert (=> b!3215759 (=> res!1309020 e!2005030)))

(assert (=> b!3215759 (= res!1309020 (= (h!41607 (t!239156 (usedCharacters!542 (regex!5226 (rule!7672 (h!41609 tokens!494)))))) lt!1086540))))

(declare-fun b!3215760 () Bool)

(assert (=> b!3215760 (= e!2005030 (contains!6469 (t!239156 (t!239156 (usedCharacters!542 (regex!5226 (rule!7672 (h!41609 tokens!494)))))) lt!1086540))))

(assert (= (and d!882564 res!1309021) b!3215759))

(assert (= (and b!3215759 (not res!1309020)) b!3215760))

(declare-fun m!3488913 () Bool)

(assert (=> d!882564 m!3488913))

(declare-fun m!3488915 () Bool)

(assert (=> d!882564 m!3488915))

(declare-fun m!3488917 () Bool)

(assert (=> b!3215760 m!3488917))

(assert (=> b!3213316 d!882564))

(assert (=> b!3213195 d!882360))

(declare-fun d!882566 () Bool)

(assert (=> d!882566 (= (head!7048 (drop!1862 lt!1086932 0)) (apply!8209 lt!1086932 0))))

(declare-fun lt!1088049 () Unit!50676)

(assert (=> d!882566 (= lt!1088049 (choose!18770 lt!1086932 0))))

(declare-fun e!2005031 () Bool)

(assert (=> d!882566 e!2005031))

(declare-fun res!1309022 () Bool)

(assert (=> d!882566 (=> (not res!1309022) (not e!2005031))))

(assert (=> d!882566 (= res!1309022 (>= 0 0))))

(assert (=> d!882566 (= (lemmaDropApply!1038 lt!1086932 0) lt!1088049)))

(declare-fun b!3215761 () Bool)

(assert (=> b!3215761 (= e!2005031 (< 0 (size!27277 lt!1086932)))))

(assert (= (and d!882566 res!1309022) b!3215761))

(assert (=> d!882566 m!3485023))

(assert (=> d!882566 m!3485023))

(assert (=> d!882566 m!3485025))

(assert (=> d!882566 m!3485027))

(declare-fun m!3488941 () Bool)

(assert (=> d!882566 m!3488941))

(declare-fun m!3488945 () Bool)

(assert (=> b!3215761 m!3488945))

(assert (=> b!3213746 d!882566))

(declare-fun d!882568 () Bool)

(declare-fun lt!1088050 () Token!9818)

(assert (=> d!882568 (= lt!1088050 (apply!8209 (list!12877 lt!1086550) 0))))

(assert (=> d!882568 (= lt!1088050 (apply!8210 (c!539814 lt!1086550) 0))))

(declare-fun e!2005032 () Bool)

(assert (=> d!882568 e!2005032))

(declare-fun res!1309023 () Bool)

(assert (=> d!882568 (=> (not res!1309023) (not e!2005032))))

(assert (=> d!882568 (= res!1309023 (<= 0 0))))

(assert (=> d!882568 (= (apply!8207 lt!1086550 0) lt!1088050)))

(declare-fun b!3215762 () Bool)

(assert (=> b!3215762 (= e!2005032 (< 0 (size!27275 lt!1086550)))))

(assert (= (and d!882568 res!1309023) b!3215762))

(assert (=> d!882568 m!3484993))

(assert (=> d!882568 m!3484993))

(declare-fun m!3488949 () Bool)

(assert (=> d!882568 m!3488949))

(declare-fun m!3488951 () Bool)

(assert (=> d!882568 m!3488951))

(assert (=> b!3215762 m!3485015))

(assert (=> b!3213746 d!882568))

(declare-fun d!882574 () Bool)

(declare-fun lt!1088051 () BalanceConc!21268)

(assert (=> d!882574 (= (list!12875 lt!1088051) (originalCharacters!5940 (apply!8207 lt!1086550 0)))))

(assert (=> d!882574 (= lt!1088051 (dynLambda!14631 (toChars!7173 (transformation!5226 (rule!7672 (apply!8207 lt!1086550 0)))) (value!169401 (apply!8207 lt!1086550 0))))))

(assert (=> d!882574 (= (charsOf!3242 (apply!8207 lt!1086550 0)) lt!1088051)))

(declare-fun b_lambda!88291 () Bool)

(assert (=> (not b_lambda!88291) (not d!882574)))

(declare-fun tb!158509 () Bool)

(declare-fun t!239544 () Bool)

(assert (=> (and b!3213760 (= (toChars!7173 (transformation!5226 (rule!7672 (h!41609 (t!239158 tokens!494))))) (toChars!7173 (transformation!5226 (rule!7672 (apply!8207 lt!1086550 0))))) t!239544) tb!158509))

(declare-fun b!3215765 () Bool)

(declare-fun e!2005034 () Bool)

(declare-fun tp!1013836 () Bool)

(assert (=> b!3215765 (= e!2005034 (and (inv!49055 (c!539813 (dynLambda!14631 (toChars!7173 (transformation!5226 (rule!7672 (apply!8207 lt!1086550 0)))) (value!169401 (apply!8207 lt!1086550 0))))) tp!1013836))))

(declare-fun result!200902 () Bool)

(assert (=> tb!158509 (= result!200902 (and (inv!49056 (dynLambda!14631 (toChars!7173 (transformation!5226 (rule!7672 (apply!8207 lt!1086550 0)))) (value!169401 (apply!8207 lt!1086550 0)))) e!2005034))))

(assert (= tb!158509 b!3215765))

(declare-fun m!3488961 () Bool)

(assert (=> b!3215765 m!3488961))

(declare-fun m!3488965 () Bool)

(assert (=> tb!158509 m!3488965))

(assert (=> d!882574 t!239544))

(declare-fun b_and!214633 () Bool)

(assert (= b_and!214621 (and (=> t!239544 result!200902) b_and!214633)))

(declare-fun t!239546 () Bool)

(declare-fun tb!158511 () Bool)

(assert (=> (and b!3212814 (= (toChars!7173 (transformation!5226 (rule!7672 (h!41609 tokens!494)))) (toChars!7173 (transformation!5226 (rule!7672 (apply!8207 lt!1086550 0))))) t!239546) tb!158511))

(declare-fun result!200904 () Bool)

(assert (= result!200904 result!200902))

(assert (=> d!882574 t!239546))

(declare-fun b_and!214635 () Bool)

(assert (= b_and!214613 (and (=> t!239546 result!200904) b_and!214635)))

(declare-fun t!239548 () Bool)

(declare-fun tb!158513 () Bool)

(assert (=> (and b!3212809 (= (toChars!7173 (transformation!5226 (h!41608 rules!2135))) (toChars!7173 (transformation!5226 (rule!7672 (apply!8207 lt!1086550 0))))) t!239548) tb!158513))

(declare-fun result!200906 () Bool)

(assert (= result!200906 result!200902))

(assert (=> d!882574 t!239548))

(declare-fun b_and!214637 () Bool)

(assert (= b_and!214617 (and (=> t!239548 result!200906) b_and!214637)))

(declare-fun tb!158515 () Bool)

(declare-fun t!239550 () Bool)

(assert (=> (and b!3213792 (= (toChars!7173 (transformation!5226 (h!41608 (t!239157 rules!2135)))) (toChars!7173 (transformation!5226 (rule!7672 (apply!8207 lt!1086550 0))))) t!239550) tb!158515))

(declare-fun result!200908 () Bool)

(assert (= result!200908 result!200902))

(assert (=> d!882574 t!239550))

(declare-fun b_and!214639 () Bool)

(assert (= b_and!214615 (and (=> t!239550 result!200908) b_and!214639)))

(declare-fun tb!158517 () Bool)

(declare-fun t!239552 () Bool)

(assert (=> (and b!3212813 (= (toChars!7173 (transformation!5226 (rule!7672 separatorToken!241))) (toChars!7173 (transformation!5226 (rule!7672 (apply!8207 lt!1086550 0))))) t!239552) tb!158517))

(declare-fun result!200910 () Bool)

(assert (= result!200910 result!200902))

(assert (=> d!882574 t!239552))

(declare-fun b_and!214641 () Bool)

(assert (= b_and!214619 (and (=> t!239552 result!200910) b_and!214641)))

(declare-fun m!3488971 () Bool)

(assert (=> d!882574 m!3488971))

(declare-fun m!3488973 () Bool)

(assert (=> d!882574 m!3488973))

(assert (=> b!3213746 d!882574))

(declare-fun d!882580 () Bool)

(declare-fun lt!1088055 () BalanceConc!21268)

(assert (=> d!882580 (= (list!12875 lt!1088055) (printListTailRec!562 thiss!18206 (dropList!1079 lt!1086550 (+ 0 1)) (list!12875 (++!8689 (BalanceConc!21269 Empty!10827) (charsOf!3242 (apply!8207 lt!1086550 0))))))))

(declare-fun e!2005042 () BalanceConc!21268)

(assert (=> d!882580 (= lt!1088055 e!2005042)))

(declare-fun c!540602 () Bool)

(assert (=> d!882580 (= c!540602 (>= (+ 0 1) (size!27275 lt!1086550)))))

(declare-fun e!2005043 () Bool)

(assert (=> d!882580 e!2005043))

(declare-fun res!1309032 () Bool)

(assert (=> d!882580 (=> (not res!1309032) (not e!2005043))))

(assert (=> d!882580 (= res!1309032 (>= (+ 0 1) 0))))

(assert (=> d!882580 (= (printTailRec!1312 thiss!18206 lt!1086550 (+ 0 1) (++!8689 (BalanceConc!21269 Empty!10827) (charsOf!3242 (apply!8207 lt!1086550 0)))) lt!1088055)))

(declare-fun b!3215780 () Bool)

(assert (=> b!3215780 (= e!2005043 (<= (+ 0 1) (size!27275 lt!1086550)))))

(declare-fun b!3215781 () Bool)

(assert (=> b!3215781 (= e!2005042 (++!8689 (BalanceConc!21269 Empty!10827) (charsOf!3242 (apply!8207 lt!1086550 0))))))

(declare-fun b!3215782 () Bool)

(assert (=> b!3215782 (= e!2005042 (printTailRec!1312 thiss!18206 lt!1086550 (+ 0 1 1) (++!8689 (++!8689 (BalanceConc!21269 Empty!10827) (charsOf!3242 (apply!8207 lt!1086550 0))) (charsOf!3242 (apply!8207 lt!1086550 (+ 0 1))))))))

(declare-fun lt!1088056 () List!36313)

(assert (=> b!3215782 (= lt!1088056 (list!12877 lt!1086550))))

(declare-fun lt!1088057 () Unit!50676)

(assert (=> b!3215782 (= lt!1088057 (lemmaDropApply!1038 lt!1088056 (+ 0 1)))))

(assert (=> b!3215782 (= (head!7048 (drop!1862 lt!1088056 (+ 0 1))) (apply!8209 lt!1088056 (+ 0 1)))))

(declare-fun lt!1088060 () Unit!50676)

(assert (=> b!3215782 (= lt!1088060 lt!1088057)))

(declare-fun lt!1088059 () List!36313)

(assert (=> b!3215782 (= lt!1088059 (list!12877 lt!1086550))))

(declare-fun lt!1088054 () Unit!50676)

(assert (=> b!3215782 (= lt!1088054 (lemmaDropTail!922 lt!1088059 (+ 0 1)))))

(assert (=> b!3215782 (= (tail!5215 (drop!1862 lt!1088059 (+ 0 1))) (drop!1862 lt!1088059 (+ 0 1 1)))))

(declare-fun lt!1088058 () Unit!50676)

(assert (=> b!3215782 (= lt!1088058 lt!1088054)))

(assert (= (and d!882580 res!1309032) b!3215780))

(assert (= (and d!882580 c!540602) b!3215781))

(assert (= (and d!882580 (not c!540602)) b!3215782))

(declare-fun m!3488985 () Bool)

(assert (=> d!882580 m!3488985))

(assert (=> d!882580 m!3488985))

(declare-fun m!3488989 () Bool)

(assert (=> d!882580 m!3488989))

(declare-fun m!3488991 () Bool)

(assert (=> d!882580 m!3488991))

(assert (=> d!882580 m!3485015))

(declare-fun m!3488995 () Bool)

(assert (=> d!882580 m!3488995))

(assert (=> d!882580 m!3485031))

(assert (=> d!882580 m!3488989))

(assert (=> b!3215780 m!3485015))

(declare-fun m!3488997 () Bool)

(assert (=> b!3215782 m!3488997))

(declare-fun m!3488999 () Bool)

(assert (=> b!3215782 m!3488999))

(declare-fun m!3489001 () Bool)

(assert (=> b!3215782 m!3489001))

(declare-fun m!3489003 () Bool)

(assert (=> b!3215782 m!3489003))

(declare-fun m!3489005 () Bool)

(assert (=> b!3215782 m!3489005))

(assert (=> b!3215782 m!3485031))

(declare-fun m!3489007 () Bool)

(assert (=> b!3215782 m!3489007))

(declare-fun m!3489009 () Bool)

(assert (=> b!3215782 m!3489009))

(declare-fun m!3489011 () Bool)

(assert (=> b!3215782 m!3489011))

(declare-fun m!3489013 () Bool)

(assert (=> b!3215782 m!3489013))

(assert (=> b!3215782 m!3489007))

(assert (=> b!3215782 m!3489013))

(assert (=> b!3215782 m!3488997))

(assert (=> b!3215782 m!3489009))

(declare-fun m!3489015 () Bool)

(assert (=> b!3215782 m!3489015))

(assert (=> b!3215782 m!3489001))

(assert (=> b!3215782 m!3484993))

(declare-fun m!3489017 () Bool)

(assert (=> b!3215782 m!3489017))

(declare-fun m!3489019 () Bool)

(assert (=> b!3215782 m!3489019))

(assert (=> b!3213746 d!882580))

(declare-fun b!3215793 () Bool)

(declare-fun e!2005052 () Int)

(declare-fun e!2005050 () Int)

(assert (=> b!3215793 (= e!2005052 e!2005050)))

(declare-fun c!540610 () Bool)

(declare-fun call!232803 () Int)

(assert (=> b!3215793 (= c!540610 (>= 0 call!232803))))

(declare-fun d!882584 () Bool)

(declare-fun e!2005049 () Bool)

(assert (=> d!882584 e!2005049))

(declare-fun res!1309033 () Bool)

(assert (=> d!882584 (=> (not res!1309033) (not e!2005049))))

(declare-fun lt!1088062 () List!36313)

(assert (=> d!882584 (= res!1309033 (= ((_ map implies) (content!4898 lt!1088062) (content!4898 lt!1086932)) ((as const (InoxSet Token!9818)) true)))))

(declare-fun e!2005053 () List!36313)

(assert (=> d!882584 (= lt!1088062 e!2005053)))

(declare-fun c!540608 () Bool)

(assert (=> d!882584 (= c!540608 ((_ is Nil!36189) lt!1086932))))

(assert (=> d!882584 (= (drop!1862 lt!1086932 0) lt!1088062)))

(declare-fun b!3215794 () Bool)

(declare-fun e!2005051 () List!36313)

(assert (=> b!3215794 (= e!2005051 (drop!1862 (t!239158 lt!1086932) (- 0 1)))))

(declare-fun b!3215795 () Bool)

(assert (=> b!3215795 (= e!2005051 lt!1086932)))

(declare-fun b!3215796 () Bool)

(assert (=> b!3215796 (= e!2005050 0)))

(declare-fun b!3215797 () Bool)

(assert (=> b!3215797 (= e!2005053 e!2005051)))

(declare-fun c!540611 () Bool)

(assert (=> b!3215797 (= c!540611 (<= 0 0))))

(declare-fun bm!232798 () Bool)

(assert (=> bm!232798 (= call!232803 (size!27277 lt!1086932))))

(declare-fun b!3215798 () Bool)

(assert (=> b!3215798 (= e!2005052 call!232803)))

(declare-fun b!3215799 () Bool)

(assert (=> b!3215799 (= e!2005053 Nil!36189)))

(declare-fun b!3215800 () Bool)

(assert (=> b!3215800 (= e!2005050 (- call!232803 0))))

(declare-fun b!3215801 () Bool)

(assert (=> b!3215801 (= e!2005049 (= (size!27277 lt!1088062) e!2005052))))

(declare-fun c!540609 () Bool)

(assert (=> b!3215801 (= c!540609 (<= 0 0))))

(assert (= (and d!882584 c!540608) b!3215799))

(assert (= (and d!882584 (not c!540608)) b!3215797))

(assert (= (and b!3215797 c!540611) b!3215795))

(assert (= (and b!3215797 (not c!540611)) b!3215794))

(assert (= (and d!882584 res!1309033) b!3215801))

(assert (= (and b!3215801 c!540609) b!3215798))

(assert (= (and b!3215801 (not c!540609)) b!3215793))

(assert (= (and b!3215793 c!540610) b!3215796))

(assert (= (and b!3215793 (not c!540610)) b!3215800))

(assert (= (or b!3215798 b!3215793 b!3215800) bm!232798))

(declare-fun m!3489027 () Bool)

(assert (=> d!882584 m!3489027))

(declare-fun m!3489029 () Bool)

(assert (=> d!882584 m!3489029))

(declare-fun m!3489031 () Bool)

(assert (=> b!3215794 m!3489031))

(assert (=> bm!232798 m!3488945))

(declare-fun m!3489033 () Bool)

(assert (=> b!3215801 m!3489033))

(assert (=> b!3213746 d!882584))

(declare-fun b!3215802 () Bool)

(declare-fun e!2005057 () Int)

(declare-fun e!2005055 () Int)

(assert (=> b!3215802 (= e!2005057 e!2005055)))

(declare-fun c!540614 () Bool)

(declare-fun call!232804 () Int)

(assert (=> b!3215802 (= c!540614 (>= 0 call!232804))))

(declare-fun d!882586 () Bool)

(declare-fun e!2005054 () Bool)

(assert (=> d!882586 e!2005054))

(declare-fun res!1309034 () Bool)

(assert (=> d!882586 (=> (not res!1309034) (not e!2005054))))

(declare-fun lt!1088063 () List!36313)

(assert (=> d!882586 (= res!1309034 (= ((_ map implies) (content!4898 lt!1088063) (content!4898 lt!1086935)) ((as const (InoxSet Token!9818)) true)))))

(declare-fun e!2005058 () List!36313)

(assert (=> d!882586 (= lt!1088063 e!2005058)))

(declare-fun c!540612 () Bool)

(assert (=> d!882586 (= c!540612 ((_ is Nil!36189) lt!1086935))))

(assert (=> d!882586 (= (drop!1862 lt!1086935 0) lt!1088063)))

(declare-fun b!3215803 () Bool)

(declare-fun e!2005056 () List!36313)

(assert (=> b!3215803 (= e!2005056 (drop!1862 (t!239158 lt!1086935) (- 0 1)))))

(declare-fun b!3215804 () Bool)

(assert (=> b!3215804 (= e!2005056 lt!1086935)))

(declare-fun b!3215805 () Bool)

(assert (=> b!3215805 (= e!2005055 0)))

(declare-fun b!3215806 () Bool)

(assert (=> b!3215806 (= e!2005058 e!2005056)))

(declare-fun c!540615 () Bool)

(assert (=> b!3215806 (= c!540615 (<= 0 0))))

(declare-fun bm!232799 () Bool)

(assert (=> bm!232799 (= call!232804 (size!27277 lt!1086935))))

(declare-fun b!3215807 () Bool)

(assert (=> b!3215807 (= e!2005057 call!232804)))

(declare-fun b!3215808 () Bool)

(assert (=> b!3215808 (= e!2005058 Nil!36189)))

(declare-fun b!3215809 () Bool)

(assert (=> b!3215809 (= e!2005055 (- call!232804 0))))

(declare-fun b!3215810 () Bool)

(assert (=> b!3215810 (= e!2005054 (= (size!27277 lt!1088063) e!2005057))))

(declare-fun c!540613 () Bool)

(assert (=> b!3215810 (= c!540613 (<= 0 0))))

(assert (= (and d!882586 c!540612) b!3215808))

(assert (= (and d!882586 (not c!540612)) b!3215806))

(assert (= (and b!3215806 c!540615) b!3215804))

(assert (= (and b!3215806 (not c!540615)) b!3215803))

(assert (= (and d!882586 res!1309034) b!3215810))

(assert (= (and b!3215810 c!540613) b!3215807))

(assert (= (and b!3215810 (not c!540613)) b!3215802))

(assert (= (and b!3215802 c!540614) b!3215805))

(assert (= (and b!3215802 (not c!540614)) b!3215809))

(assert (= (or b!3215807 b!3215802 b!3215809) bm!232799))

(declare-fun m!3489039 () Bool)

(assert (=> d!882586 m!3489039))

(declare-fun m!3489041 () Bool)

(assert (=> d!882586 m!3489041))

(declare-fun m!3489043 () Bool)

(assert (=> b!3215803 m!3489043))

(declare-fun m!3489045 () Bool)

(assert (=> bm!232799 m!3489045))

(declare-fun m!3489047 () Bool)

(assert (=> b!3215810 m!3489047))

(assert (=> b!3213746 d!882586))

(declare-fun b!3215813 () Bool)

(declare-fun res!1309039 () Bool)

(declare-fun e!2005060 () Bool)

(assert (=> b!3215813 (=> (not res!1309039) (not e!2005060))))

(assert (=> b!3215813 (= res!1309039 (isBalanced!3222 (++!8692 (c!539813 (BalanceConc!21269 Empty!10827)) (c!539813 (charsOf!3242 (apply!8207 lt!1086550 0))))))))

(declare-fun b!3215814 () Bool)

(declare-fun res!1309037 () Bool)

(assert (=> b!3215814 (=> (not res!1309037) (not e!2005060))))

(assert (=> b!3215814 (= res!1309037 (<= (height!1559 (++!8692 (c!539813 (BalanceConc!21269 Empty!10827)) (c!539813 (charsOf!3242 (apply!8207 lt!1086550 0))))) (+ (max!0 (height!1559 (c!539813 (BalanceConc!21269 Empty!10827))) (height!1559 (c!539813 (charsOf!3242 (apply!8207 lt!1086550 0))))) 1)))))

(declare-fun d!882592 () Bool)

(assert (=> d!882592 e!2005060))

(declare-fun res!1309038 () Bool)

(assert (=> d!882592 (=> (not res!1309038) (not e!2005060))))

(assert (=> d!882592 (= res!1309038 (appendAssocInst!734 (c!539813 (BalanceConc!21269 Empty!10827)) (c!539813 (charsOf!3242 (apply!8207 lt!1086550 0)))))))

(declare-fun lt!1088064 () BalanceConc!21268)

(assert (=> d!882592 (= lt!1088064 (BalanceConc!21269 (++!8692 (c!539813 (BalanceConc!21269 Empty!10827)) (c!539813 (charsOf!3242 (apply!8207 lt!1086550 0))))))))

(assert (=> d!882592 (= (++!8689 (BalanceConc!21269 Empty!10827) (charsOf!3242 (apply!8207 lt!1086550 0))) lt!1088064)))

(declare-fun b!3215815 () Bool)

(declare-fun res!1309040 () Bool)

(assert (=> b!3215815 (=> (not res!1309040) (not e!2005060))))

(assert (=> b!3215815 (= res!1309040 (>= (height!1559 (++!8692 (c!539813 (BalanceConc!21269 Empty!10827)) (c!539813 (charsOf!3242 (apply!8207 lt!1086550 0))))) (max!0 (height!1559 (c!539813 (BalanceConc!21269 Empty!10827))) (height!1559 (c!539813 (charsOf!3242 (apply!8207 lt!1086550 0)))))))))

(declare-fun b!3215816 () Bool)

(assert (=> b!3215816 (= e!2005060 (= (list!12875 lt!1088064) (++!8688 (list!12875 (BalanceConc!21269 Empty!10827)) (list!12875 (charsOf!3242 (apply!8207 lt!1086550 0))))))))

(assert (= (and d!882592 res!1309038) b!3215813))

(assert (= (and b!3215813 res!1309039) b!3215814))

(assert (= (and b!3215814 res!1309037) b!3215815))

(assert (= (and b!3215815 res!1309040) b!3215816))

(declare-fun m!3489049 () Bool)

(assert (=> b!3215813 m!3489049))

(assert (=> b!3215813 m!3489049))

(declare-fun m!3489051 () Bool)

(assert (=> b!3215813 m!3489051))

(declare-fun m!3489053 () Bool)

(assert (=> b!3215816 m!3489053))

(assert (=> b!3215816 m!3483815))

(assert (=> b!3215816 m!3485029))

(declare-fun m!3489055 () Bool)

(assert (=> b!3215816 m!3489055))

(assert (=> b!3215816 m!3483815))

(assert (=> b!3215816 m!3489055))

(declare-fun m!3489057 () Bool)

(assert (=> b!3215816 m!3489057))

(assert (=> b!3215815 m!3486237))

(declare-fun m!3489059 () Bool)

(assert (=> b!3215815 m!3489059))

(declare-fun m!3489061 () Bool)

(assert (=> b!3215815 m!3489061))

(assert (=> b!3215815 m!3489059))

(assert (=> b!3215815 m!3489049))

(assert (=> b!3215815 m!3489049))

(declare-fun m!3489063 () Bool)

(assert (=> b!3215815 m!3489063))

(assert (=> b!3215815 m!3486237))

(assert (=> b!3215814 m!3486237))

(assert (=> b!3215814 m!3489059))

(assert (=> b!3215814 m!3489061))

(assert (=> b!3215814 m!3489059))

(assert (=> b!3215814 m!3489049))

(assert (=> b!3215814 m!3489049))

(assert (=> b!3215814 m!3489063))

(assert (=> b!3215814 m!3486237))

(declare-fun m!3489067 () Bool)

(assert (=> d!882592 m!3489067))

(assert (=> d!882592 m!3489049))

(assert (=> b!3213746 d!882592))

(assert (=> b!3213746 d!882400))

(declare-fun b!3215817 () Bool)

(declare-fun e!2005065 () Int)

(declare-fun e!2005063 () Int)

(assert (=> b!3215817 (= e!2005065 e!2005063)))

(declare-fun c!540618 () Bool)

(declare-fun call!232805 () Int)

(assert (=> b!3215817 (= c!540618 (>= (+ 0 1) call!232805))))

(declare-fun d!882596 () Bool)

(declare-fun e!2005062 () Bool)

(assert (=> d!882596 e!2005062))

(declare-fun res!1309041 () Bool)

(assert (=> d!882596 (=> (not res!1309041) (not e!2005062))))

(declare-fun lt!1088065 () List!36313)

(assert (=> d!882596 (= res!1309041 (= ((_ map implies) (content!4898 lt!1088065) (content!4898 lt!1086935)) ((as const (InoxSet Token!9818)) true)))))

(declare-fun e!2005066 () List!36313)

(assert (=> d!882596 (= lt!1088065 e!2005066)))

(declare-fun c!540616 () Bool)

(assert (=> d!882596 (= c!540616 ((_ is Nil!36189) lt!1086935))))

(assert (=> d!882596 (= (drop!1862 lt!1086935 (+ 0 1)) lt!1088065)))

(declare-fun b!3215818 () Bool)

(declare-fun e!2005064 () List!36313)

(assert (=> b!3215818 (= e!2005064 (drop!1862 (t!239158 lt!1086935) (- (+ 0 1) 1)))))

(declare-fun b!3215819 () Bool)

(assert (=> b!3215819 (= e!2005064 lt!1086935)))

(declare-fun b!3215820 () Bool)

(assert (=> b!3215820 (= e!2005063 0)))

(declare-fun b!3215821 () Bool)

(assert (=> b!3215821 (= e!2005066 e!2005064)))

(declare-fun c!540619 () Bool)

(assert (=> b!3215821 (= c!540619 (<= (+ 0 1) 0))))

(declare-fun bm!232800 () Bool)

(assert (=> bm!232800 (= call!232805 (size!27277 lt!1086935))))

(declare-fun b!3215822 () Bool)

(assert (=> b!3215822 (= e!2005065 call!232805)))

(declare-fun b!3215823 () Bool)

(assert (=> b!3215823 (= e!2005066 Nil!36189)))

(declare-fun b!3215824 () Bool)

(assert (=> b!3215824 (= e!2005063 (- call!232805 (+ 0 1)))))

(declare-fun b!3215825 () Bool)

(assert (=> b!3215825 (= e!2005062 (= (size!27277 lt!1088065) e!2005065))))

(declare-fun c!540617 () Bool)

(assert (=> b!3215825 (= c!540617 (<= (+ 0 1) 0))))

(assert (= (and d!882596 c!540616) b!3215823))

(assert (= (and d!882596 (not c!540616)) b!3215821))

(assert (= (and b!3215821 c!540619) b!3215819))

(assert (= (and b!3215821 (not c!540619)) b!3215818))

(assert (= (and d!882596 res!1309041) b!3215825))

(assert (= (and b!3215825 c!540617) b!3215822))

(assert (= (and b!3215825 (not c!540617)) b!3215817))

(assert (= (and b!3215817 c!540618) b!3215820))

(assert (= (and b!3215817 (not c!540618)) b!3215824))

(assert (= (or b!3215822 b!3215817 b!3215824) bm!232800))

(declare-fun m!3489071 () Bool)

(assert (=> d!882596 m!3489071))

(assert (=> d!882596 m!3489041))

(declare-fun m!3489073 () Bool)

(assert (=> b!3215818 m!3489073))

(assert (=> bm!232800 m!3489045))

(declare-fun m!3489075 () Bool)

(assert (=> b!3215825 m!3489075))

(assert (=> b!3213746 d!882596))

(declare-fun d!882600 () Bool)

(assert (=> d!882600 (= (tail!5215 (drop!1862 lt!1086935 0)) (t!239158 (drop!1862 lt!1086935 0)))))

(assert (=> b!3213746 d!882600))

(declare-fun d!882602 () Bool)

(declare-fun lt!1088066 () Token!9818)

(assert (=> d!882602 (contains!6471 lt!1086932 lt!1088066)))

(declare-fun e!2005067 () Token!9818)

(assert (=> d!882602 (= lt!1088066 e!2005067)))

(declare-fun c!540620 () Bool)

(assert (=> d!882602 (= c!540620 (= 0 0))))

(declare-fun e!2005068 () Bool)

(assert (=> d!882602 e!2005068))

(declare-fun res!1309042 () Bool)

(assert (=> d!882602 (=> (not res!1309042) (not e!2005068))))

(assert (=> d!882602 (= res!1309042 (<= 0 0))))

(assert (=> d!882602 (= (apply!8209 lt!1086932 0) lt!1088066)))

(declare-fun b!3215826 () Bool)

(assert (=> b!3215826 (= e!2005068 (< 0 (size!27277 lt!1086932)))))

(declare-fun b!3215827 () Bool)

(assert (=> b!3215827 (= e!2005067 (head!7048 lt!1086932))))

(declare-fun b!3215828 () Bool)

(assert (=> b!3215828 (= e!2005067 (apply!8209 (tail!5215 lt!1086932) (- 0 1)))))

(assert (= (and d!882602 res!1309042) b!3215826))

(assert (= (and d!882602 c!540620) b!3215827))

(assert (= (and d!882602 (not c!540620)) b!3215828))

(declare-fun m!3489079 () Bool)

(assert (=> d!882602 m!3489079))

(assert (=> b!3215826 m!3488945))

(declare-fun m!3489081 () Bool)

(assert (=> b!3215827 m!3489081))

(declare-fun m!3489083 () Bool)

(assert (=> b!3215828 m!3489083))

(assert (=> b!3215828 m!3489083))

(declare-fun m!3489085 () Bool)

(assert (=> b!3215828 m!3489085))

(assert (=> b!3213746 d!882602))

(declare-fun d!882606 () Bool)

(assert (=> d!882606 (= (head!7048 (drop!1862 lt!1086932 0)) (h!41609 (drop!1862 lt!1086932 0)))))

(assert (=> b!3213746 d!882606))

(declare-fun d!882608 () Bool)

(assert (=> d!882608 (= (tail!5215 (drop!1862 lt!1086935 0)) (drop!1862 lt!1086935 (+ 0 1)))))

(declare-fun lt!1088068 () Unit!50676)

(assert (=> d!882608 (= lt!1088068 (choose!18771 lt!1086935 0))))

(declare-fun e!2005076 () Bool)

(assert (=> d!882608 e!2005076))

(declare-fun res!1309051 () Bool)

(assert (=> d!882608 (=> (not res!1309051) (not e!2005076))))

(assert (=> d!882608 (= res!1309051 (>= 0 0))))

(assert (=> d!882608 (= (lemmaDropTail!922 lt!1086935 0) lt!1088068)))

(declare-fun b!3215843 () Bool)

(assert (=> b!3215843 (= e!2005076 (< 0 (size!27277 lt!1086935)))))

(assert (= (and d!882608 res!1309051) b!3215843))

(assert (=> d!882608 m!3485019))

(assert (=> d!882608 m!3485019))

(assert (=> d!882608 m!3485021))

(assert (=> d!882608 m!3485039))

(declare-fun m!3489087 () Bool)

(assert (=> d!882608 m!3489087))

(assert (=> b!3215843 m!3489045))

(assert (=> b!3213746 d!882608))

(assert (=> b!3213096 d!882366))

(declare-fun d!882610 () Bool)

(assert (=> d!882610 (= (inv!49048 (tag!5754 (rule!7672 (h!41609 (t!239158 tokens!494))))) (= (mod (str.len (value!169400 (tag!5754 (rule!7672 (h!41609 (t!239158 tokens!494)))))) 2) 0))))

(assert (=> b!3213759 d!882610))

(declare-fun d!882612 () Bool)

(declare-fun res!1309052 () Bool)

(declare-fun e!2005077 () Bool)

(assert (=> d!882612 (=> (not res!1309052) (not e!2005077))))

(assert (=> d!882612 (= res!1309052 (semiInverseModEq!2157 (toChars!7173 (transformation!5226 (rule!7672 (h!41609 (t!239158 tokens!494))))) (toValue!7314 (transformation!5226 (rule!7672 (h!41609 (t!239158 tokens!494)))))))))

(assert (=> d!882612 (= (inv!49051 (transformation!5226 (rule!7672 (h!41609 (t!239158 tokens!494))))) e!2005077)))

(declare-fun b!3215844 () Bool)

(assert (=> b!3215844 (= e!2005077 (equivClasses!2056 (toChars!7173 (transformation!5226 (rule!7672 (h!41609 (t!239158 tokens!494))))) (toValue!7314 (transformation!5226 (rule!7672 (h!41609 (t!239158 tokens!494)))))))))

(assert (= (and d!882612 res!1309052) b!3215844))

(declare-fun m!3489095 () Bool)

(assert (=> d!882612 m!3489095))

(declare-fun m!3489097 () Bool)

(assert (=> b!3215844 m!3489097))

(assert (=> b!3213759 d!882612))

(declare-fun d!882614 () Bool)

(declare-fun lt!1088074 () List!36311)

(assert (=> d!882614 (= lt!1088074 (++!8688 (list!12875 (BalanceConc!21269 Empty!10827)) (printList!1365 thiss!18206 (dropList!1079 lt!1086554 0))))))

(declare-fun e!2005083 () List!36311)

(assert (=> d!882614 (= lt!1088074 e!2005083)))

(declare-fun c!540629 () Bool)

(assert (=> d!882614 (= c!540629 ((_ is Cons!36189) (dropList!1079 lt!1086554 0)))))

(assert (=> d!882614 (= (printListTailRec!562 thiss!18206 (dropList!1079 lt!1086554 0) (list!12875 (BalanceConc!21269 Empty!10827))) lt!1088074)))

(declare-fun b!3215855 () Bool)

(assert (=> b!3215855 (= e!2005083 (printListTailRec!562 thiss!18206 (t!239158 (dropList!1079 lt!1086554 0)) (++!8688 (list!12875 (BalanceConc!21269 Empty!10827)) (list!12875 (charsOf!3242 (h!41609 (dropList!1079 lt!1086554 0)))))))))

(declare-fun lt!1088072 () List!36311)

(assert (=> b!3215855 (= lt!1088072 (list!12875 (charsOf!3242 (h!41609 (dropList!1079 lt!1086554 0)))))))

(declare-fun lt!1088073 () List!36311)

(assert (=> b!3215855 (= lt!1088073 (printList!1365 thiss!18206 (t!239158 (dropList!1079 lt!1086554 0))))))

(declare-fun lt!1088070 () Unit!50676)

(assert (=> b!3215855 (= lt!1088070 (lemmaConcatAssociativity!1750 (list!12875 (BalanceConc!21269 Empty!10827)) lt!1088072 lt!1088073))))

(assert (=> b!3215855 (= (++!8688 (++!8688 (list!12875 (BalanceConc!21269 Empty!10827)) lt!1088072) lt!1088073) (++!8688 (list!12875 (BalanceConc!21269 Empty!10827)) (++!8688 lt!1088072 lt!1088073)))))

(declare-fun lt!1088071 () Unit!50676)

(assert (=> b!3215855 (= lt!1088071 lt!1088070)))

(declare-fun b!3215856 () Bool)

(assert (=> b!3215856 (= e!2005083 (list!12875 (BalanceConc!21269 Empty!10827)))))

(assert (= (and d!882614 c!540629) b!3215855))

(assert (= (and d!882614 (not c!540629)) b!3215856))

(assert (=> d!882614 m!3483813))

(declare-fun m!3489107 () Bool)

(assert (=> d!882614 m!3489107))

(assert (=> d!882614 m!3483815))

(assert (=> d!882614 m!3489107))

(declare-fun m!3489111 () Bool)

(assert (=> d!882614 m!3489111))

(declare-fun m!3489113 () Bool)

(assert (=> b!3215855 m!3489113))

(declare-fun m!3489115 () Bool)

(assert (=> b!3215855 m!3489115))

(assert (=> b!3215855 m!3489113))

(declare-fun m!3489117 () Bool)

(assert (=> b!3215855 m!3489117))

(declare-fun m!3489119 () Bool)

(assert (=> b!3215855 m!3489119))

(assert (=> b!3215855 m!3483815))

(declare-fun m!3489121 () Bool)

(assert (=> b!3215855 m!3489121))

(declare-fun m!3489123 () Bool)

(assert (=> b!3215855 m!3489123))

(assert (=> b!3215855 m!3483815))

(assert (=> b!3215855 m!3489115))

(assert (=> b!3215855 m!3489117))

(declare-fun m!3489125 () Bool)

(assert (=> b!3215855 m!3489125))

(declare-fun m!3489127 () Bool)

(assert (=> b!3215855 m!3489127))

(assert (=> b!3215855 m!3489121))

(assert (=> b!3215855 m!3483815))

(assert (=> b!3215855 m!3489125))

(declare-fun m!3489129 () Bool)

(assert (=> b!3215855 m!3489129))

(assert (=> b!3215855 m!3483815))

(declare-fun m!3489131 () Bool)

(assert (=> b!3215855 m!3489131))

(assert (=> d!880934 d!882614))

(declare-fun d!882620 () Bool)

(assert (=> d!882620 (= (list!12875 lt!1086672) (list!12879 (c!539813 lt!1086672)))))

(declare-fun bs!542181 () Bool)

(assert (= bs!542181 d!882620))

(declare-fun m!3489133 () Bool)

(assert (=> bs!542181 m!3489133))

(assert (=> d!880934 d!882620))

(assert (=> d!880934 d!881612))

(assert (=> d!880934 d!882472))

(declare-fun d!882622 () Bool)

(assert (=> d!882622 (= (dropList!1079 lt!1086554 0) (drop!1862 (list!12881 (c!539814 lt!1086554)) 0))))

(declare-fun bs!542182 () Bool)

(assert (= bs!542182 d!882622))

(assert (=> bs!542182 m!3486151))

(assert (=> bs!542182 m!3486151))

(declare-fun m!3489135 () Bool)

(assert (=> bs!542182 m!3489135))

(assert (=> d!880934 d!882622))

(declare-fun b!3215859 () Bool)

(declare-fun res!1309054 () Bool)

(declare-fun e!2005084 () Bool)

(assert (=> b!3215859 (=> (not res!1309054) (not e!2005084))))

(declare-fun lt!1088075 () List!36311)

(assert (=> b!3215859 (= res!1309054 (= (size!27274 lt!1088075) (+ (size!27274 (list!12875 (charsOf!3242 (_1!20932 (get!11526 lt!1086777))))) (size!27274 (_2!20932 (get!11526 lt!1086777))))))))

(declare-fun b!3215858 () Bool)

(declare-fun e!2005085 () List!36311)

(assert (=> b!3215858 (= e!2005085 (Cons!36187 (h!41607 (list!12875 (charsOf!3242 (_1!20932 (get!11526 lt!1086777))))) (++!8688 (t!239156 (list!12875 (charsOf!3242 (_1!20932 (get!11526 lt!1086777))))) (_2!20932 (get!11526 lt!1086777)))))))

(declare-fun b!3215857 () Bool)

(assert (=> b!3215857 (= e!2005085 (_2!20932 (get!11526 lt!1086777)))))

(declare-fun d!882624 () Bool)

(assert (=> d!882624 e!2005084))

(declare-fun res!1309053 () Bool)

(assert (=> d!882624 (=> (not res!1309053) (not e!2005084))))

(assert (=> d!882624 (= res!1309053 (= (content!4894 lt!1088075) ((_ map or) (content!4894 (list!12875 (charsOf!3242 (_1!20932 (get!11526 lt!1086777))))) (content!4894 (_2!20932 (get!11526 lt!1086777))))))))

(assert (=> d!882624 (= lt!1088075 e!2005085)))

(declare-fun c!540630 () Bool)

(assert (=> d!882624 (= c!540630 ((_ is Nil!36187) (list!12875 (charsOf!3242 (_1!20932 (get!11526 lt!1086777))))))))

(assert (=> d!882624 (= (++!8688 (list!12875 (charsOf!3242 (_1!20932 (get!11526 lt!1086777)))) (_2!20932 (get!11526 lt!1086777))) lt!1088075)))

(declare-fun b!3215860 () Bool)

(assert (=> b!3215860 (= e!2005084 (or (not (= (_2!20932 (get!11526 lt!1086777)) Nil!36187)) (= lt!1088075 (list!12875 (charsOf!3242 (_1!20932 (get!11526 lt!1086777)))))))))

(assert (= (and d!882624 c!540630) b!3215857))

(assert (= (and d!882624 (not c!540630)) b!3215858))

(assert (= (and d!882624 res!1309053) b!3215859))

(assert (= (and b!3215859 res!1309054) b!3215860))

(declare-fun m!3489137 () Bool)

(assert (=> b!3215859 m!3489137))

(assert (=> b!3215859 m!3484091))

(declare-fun m!3489139 () Bool)

(assert (=> b!3215859 m!3489139))

(assert (=> b!3215859 m!3484081))

(declare-fun m!3489141 () Bool)

(assert (=> b!3215858 m!3489141))

(declare-fun m!3489143 () Bool)

(assert (=> d!882624 m!3489143))

(assert (=> d!882624 m!3484091))

(declare-fun m!3489145 () Bool)

(assert (=> d!882624 m!3489145))

(declare-fun m!3489147 () Bool)

(assert (=> d!882624 m!3489147))

(assert (=> b!3213267 d!882624))

(assert (=> b!3213267 d!882034))

(assert (=> b!3213267 d!882036))

(assert (=> b!3213267 d!882040))

(declare-fun b!3215863 () Bool)

(declare-fun res!1309056 () Bool)

(declare-fun e!2005086 () Bool)

(assert (=> b!3215863 (=> (not res!1309056) (not e!2005086))))

(declare-fun lt!1088076 () List!36311)

(assert (=> b!3215863 (= res!1309056 (= (size!27274 lt!1088076) (+ (size!27274 (t!239156 lt!1086523)) (size!27274 lt!1086531))))))

(declare-fun b!3215862 () Bool)

(declare-fun e!2005087 () List!36311)

(assert (=> b!3215862 (= e!2005087 (Cons!36187 (h!41607 (t!239156 lt!1086523)) (++!8688 (t!239156 (t!239156 lt!1086523)) lt!1086531)))))

(declare-fun b!3215861 () Bool)

(assert (=> b!3215861 (= e!2005087 lt!1086531)))

(declare-fun d!882626 () Bool)

(assert (=> d!882626 e!2005086))

(declare-fun res!1309055 () Bool)

(assert (=> d!882626 (=> (not res!1309055) (not e!2005086))))

(assert (=> d!882626 (= res!1309055 (= (content!4894 lt!1088076) ((_ map or) (content!4894 (t!239156 lt!1086523)) (content!4894 lt!1086531))))))

(assert (=> d!882626 (= lt!1088076 e!2005087)))

(declare-fun c!540631 () Bool)

(assert (=> d!882626 (= c!540631 ((_ is Nil!36187) (t!239156 lt!1086523)))))

(assert (=> d!882626 (= (++!8688 (t!239156 lt!1086523) lt!1086531) lt!1088076)))

(declare-fun b!3215864 () Bool)

(assert (=> b!3215864 (= e!2005086 (or (not (= lt!1086531 Nil!36187)) (= lt!1088076 (t!239156 lt!1086523))))))

(assert (= (and d!882626 c!540631) b!3215861))

(assert (= (and d!882626 (not c!540631)) b!3215862))

(assert (= (and d!882626 res!1309055) b!3215863))

(assert (= (and b!3215863 res!1309056) b!3215864))

(declare-fun m!3489149 () Bool)

(assert (=> b!3215863 m!3489149))

(assert (=> b!3215863 m!3484023))

(assert (=> b!3215863 m!3484311))

(declare-fun m!3489151 () Bool)

(assert (=> b!3215862 m!3489151))

(declare-fun m!3489153 () Bool)

(assert (=> d!882626 m!3489153))

(assert (=> d!882626 m!3485531))

(assert (=> d!882626 m!3484321))

(assert (=> b!3213360 d!882626))

(declare-fun b!3215865 () Bool)

(declare-fun res!1309062 () Bool)

(declare-fun e!2005091 () Bool)

(assert (=> b!3215865 (=> res!1309062 e!2005091)))

(assert (=> b!3215865 (= res!1309062 (not (isEmpty!20288 (tail!5217 (tail!5217 lt!1086561)))))))

(declare-fun b!3215866 () Bool)

(declare-fun res!1309064 () Bool)

(declare-fun e!2005089 () Bool)

(assert (=> b!3215866 (=> res!1309064 e!2005089)))

(declare-fun e!2005090 () Bool)

(assert (=> b!3215866 (= res!1309064 e!2005090)))

(declare-fun res!1309059 () Bool)

(assert (=> b!3215866 (=> (not res!1309059) (not e!2005090))))

(declare-fun lt!1088079 () Bool)

(assert (=> b!3215866 (= res!1309059 lt!1088079)))

(declare-fun bm!232806 () Bool)

(declare-fun call!232811 () Bool)

(assert (=> bm!232806 (= call!232811 (isEmpty!20288 (tail!5217 lt!1086561)))))

(declare-fun b!3215867 () Bool)

(assert (=> b!3215867 (= e!2005090 (= (head!7047 (tail!5217 lt!1086561)) (c!539812 (derivativeStep!2953 (regex!5226 lt!1086545) (head!7047 lt!1086561)))))))

(declare-fun b!3215868 () Bool)

(declare-fun e!2005094 () Bool)

(assert (=> b!3215868 (= e!2005094 (matchR!4619 (derivativeStep!2953 (derivativeStep!2953 (regex!5226 lt!1086545) (head!7047 lt!1086561)) (head!7047 (tail!5217 lt!1086561))) (tail!5217 (tail!5217 lt!1086561))))))

(declare-fun d!882628 () Bool)

(declare-fun e!2005092 () Bool)

(assert (=> d!882628 e!2005092))

(declare-fun c!540633 () Bool)

(assert (=> d!882628 (= c!540633 ((_ is EmptyExpr!9985) (derivativeStep!2953 (regex!5226 lt!1086545) (head!7047 lt!1086561))))))

(assert (=> d!882628 (= lt!1088079 e!2005094)))

(declare-fun c!540635 () Bool)

(assert (=> d!882628 (= c!540635 (isEmpty!20288 (tail!5217 lt!1086561)))))

(assert (=> d!882628 (validRegex!4554 (derivativeStep!2953 (regex!5226 lt!1086545) (head!7047 lt!1086561)))))

(assert (=> d!882628 (= (matchR!4619 (derivativeStep!2953 (regex!5226 lt!1086545) (head!7047 lt!1086561)) (tail!5217 lt!1086561)) lt!1088079)))

(declare-fun b!3215869 () Bool)

(declare-fun e!2005093 () Bool)

(assert (=> b!3215869 (= e!2005093 (not lt!1088079))))

(declare-fun b!3215870 () Bool)

(assert (=> b!3215870 (= e!2005091 (not (= (head!7047 (tail!5217 lt!1086561)) (c!539812 (derivativeStep!2953 (regex!5226 lt!1086545) (head!7047 lt!1086561))))))))

(declare-fun b!3215871 () Bool)

(declare-fun res!1309061 () Bool)

(assert (=> b!3215871 (=> (not res!1309061) (not e!2005090))))

(assert (=> b!3215871 (= res!1309061 (isEmpty!20288 (tail!5217 (tail!5217 lt!1086561))))))

(declare-fun b!3215872 () Bool)

(declare-fun res!1309057 () Bool)

(assert (=> b!3215872 (=> (not res!1309057) (not e!2005090))))

(assert (=> b!3215872 (= res!1309057 (not call!232811))))

(declare-fun b!3215873 () Bool)

(declare-fun e!2005088 () Bool)

(assert (=> b!3215873 (= e!2005089 e!2005088)))

(declare-fun res!1309060 () Bool)

(assert (=> b!3215873 (=> (not res!1309060) (not e!2005088))))

(assert (=> b!3215873 (= res!1309060 (not lt!1088079))))

(declare-fun b!3215874 () Bool)

(assert (=> b!3215874 (= e!2005092 e!2005093)))

(declare-fun c!540634 () Bool)

(assert (=> b!3215874 (= c!540634 ((_ is EmptyLang!9985) (derivativeStep!2953 (regex!5226 lt!1086545) (head!7047 lt!1086561))))))

(declare-fun b!3215875 () Bool)

(declare-fun res!1309058 () Bool)

(assert (=> b!3215875 (=> res!1309058 e!2005089)))

(assert (=> b!3215875 (= res!1309058 (not ((_ is ElementMatch!9985) (derivativeStep!2953 (regex!5226 lt!1086545) (head!7047 lt!1086561)))))))

(assert (=> b!3215875 (= e!2005093 e!2005089)))

(declare-fun b!3215876 () Bool)

(assert (=> b!3215876 (= e!2005088 e!2005091)))

(declare-fun res!1309063 () Bool)

(assert (=> b!3215876 (=> res!1309063 e!2005091)))

(assert (=> b!3215876 (= res!1309063 call!232811)))

(declare-fun b!3215877 () Bool)

(assert (=> b!3215877 (= e!2005094 (nullable!3400 (derivativeStep!2953 (regex!5226 lt!1086545) (head!7047 lt!1086561))))))

(declare-fun b!3215878 () Bool)

(assert (=> b!3215878 (= e!2005092 (= lt!1088079 call!232811))))

(assert (= (and d!882628 c!540635) b!3215877))

(assert (= (and d!882628 (not c!540635)) b!3215868))

(assert (= (and d!882628 c!540633) b!3215878))

(assert (= (and d!882628 (not c!540633)) b!3215874))

(assert (= (and b!3215874 c!540634) b!3215869))

(assert (= (and b!3215874 (not c!540634)) b!3215875))

(assert (= (and b!3215875 (not res!1309058)) b!3215866))

(assert (= (and b!3215866 res!1309059) b!3215872))

(assert (= (and b!3215872 res!1309057) b!3215871))

(assert (= (and b!3215871 res!1309061) b!3215867))

(assert (= (and b!3215866 (not res!1309064)) b!3215873))

(assert (= (and b!3215873 res!1309060) b!3215876))

(assert (= (and b!3215876 (not res!1309063)) b!3215865))

(assert (= (and b!3215865 (not res!1309062)) b!3215870))

(assert (= (or b!3215878 b!3215876 b!3215872) bm!232806))

(assert (=> b!3215877 m!3484657))

(declare-fun m!3489155 () Bool)

(assert (=> b!3215877 m!3489155))

(assert (=> b!3215865 m!3484653))

(declare-fun m!3489157 () Bool)

(assert (=> b!3215865 m!3489157))

(assert (=> b!3215865 m!3489157))

(declare-fun m!3489159 () Bool)

(assert (=> b!3215865 m!3489159))

(assert (=> b!3215867 m!3484653))

(declare-fun m!3489161 () Bool)

(assert (=> b!3215867 m!3489161))

(assert (=> b!3215870 m!3484653))

(assert (=> b!3215870 m!3489161))

(assert (=> b!3215868 m!3484653))

(assert (=> b!3215868 m!3489161))

(assert (=> b!3215868 m!3484657))

(assert (=> b!3215868 m!3489161))

(declare-fun m!3489163 () Bool)

(assert (=> b!3215868 m!3489163))

(assert (=> b!3215868 m!3484653))

(assert (=> b!3215868 m!3489157))

(assert (=> b!3215868 m!3489163))

(assert (=> b!3215868 m!3489157))

(declare-fun m!3489171 () Bool)

(assert (=> b!3215868 m!3489171))

(assert (=> d!882628 m!3484653))

(assert (=> d!882628 m!3484655))

(assert (=> d!882628 m!3484657))

(declare-fun m!3489173 () Bool)

(assert (=> d!882628 m!3489173))

(assert (=> bm!232806 m!3484653))

(assert (=> bm!232806 m!3484655))

(assert (=> b!3215871 m!3484653))

(assert (=> b!3215871 m!3489157))

(assert (=> b!3215871 m!3489157))

(assert (=> b!3215871 m!3489159))

(assert (=> b!3213494 d!882628))

(declare-fun bm!232807 () Bool)

(declare-fun call!232815 () Regex!9985)

(declare-fun call!232814 () Regex!9985)

(assert (=> bm!232807 (= call!232815 call!232814)))

(declare-fun b!3215884 () Bool)

(declare-fun e!2005099 () Regex!9985)

(assert (=> b!3215884 (= e!2005099 EmptyLang!9985)))

(declare-fun b!3215885 () Bool)

(declare-fun e!2005102 () Regex!9985)

(declare-fun call!232813 () Regex!9985)

(declare-fun call!232812 () Regex!9985)

(assert (=> b!3215885 (= e!2005102 (Union!9985 (Concat!15441 call!232813 (regTwo!20482 (regex!5226 lt!1086545))) call!232812))))

(declare-fun b!3215886 () Bool)

(assert (=> b!3215886 (= e!2005102 (Union!9985 (Concat!15441 call!232813 (regTwo!20482 (regex!5226 lt!1086545))) EmptyLang!9985))))

(declare-fun b!3215887 () Bool)

(declare-fun c!540637 () Bool)

(assert (=> b!3215887 (= c!540637 (nullable!3400 (regOne!20482 (regex!5226 lt!1086545))))))

(declare-fun e!2005100 () Regex!9985)

(assert (=> b!3215887 (= e!2005100 e!2005102)))

(declare-fun d!882632 () Bool)

(declare-fun lt!1088082 () Regex!9985)

(assert (=> d!882632 (validRegex!4554 lt!1088082)))

(assert (=> d!882632 (= lt!1088082 e!2005099)))

(declare-fun c!540640 () Bool)

(assert (=> d!882632 (= c!540640 (or ((_ is EmptyExpr!9985) (regex!5226 lt!1086545)) ((_ is EmptyLang!9985) (regex!5226 lt!1086545))))))

(assert (=> d!882632 (validRegex!4554 (regex!5226 lt!1086545))))

(assert (=> d!882632 (= (derivativeStep!2953 (regex!5226 lt!1086545) (head!7047 lt!1086561)) lt!1088082)))

(declare-fun c!540641 () Bool)

(declare-fun c!540638 () Bool)

(declare-fun bm!232808 () Bool)

(assert (=> bm!232808 (= call!232814 (derivativeStep!2953 (ite c!540638 (regOne!20483 (regex!5226 lt!1086545)) (ite c!540641 (reg!10314 (regex!5226 lt!1086545)) (regOne!20482 (regex!5226 lt!1086545)))) (head!7047 lt!1086561)))))

(declare-fun b!3215888 () Bool)

(assert (=> b!3215888 (= c!540638 ((_ is Union!9985) (regex!5226 lt!1086545)))))

(declare-fun e!2005103 () Regex!9985)

(declare-fun e!2005101 () Regex!9985)

(assert (=> b!3215888 (= e!2005103 e!2005101)))

(declare-fun b!3215889 () Bool)

(assert (=> b!3215889 (= e!2005101 e!2005100)))

(assert (=> b!3215889 (= c!540641 ((_ is Star!9985) (regex!5226 lt!1086545)))))

(declare-fun bm!232809 () Bool)

(assert (=> bm!232809 (= call!232813 call!232815)))

(declare-fun b!3215890 () Bool)

(assert (=> b!3215890 (= e!2005101 (Union!9985 call!232814 call!232812))))

(declare-fun b!3215891 () Bool)

(assert (=> b!3215891 (= e!2005103 (ite (= (head!7047 lt!1086561) (c!539812 (regex!5226 lt!1086545))) EmptyExpr!9985 EmptyLang!9985))))

(declare-fun bm!232810 () Bool)

(assert (=> bm!232810 (= call!232812 (derivativeStep!2953 (ite c!540638 (regTwo!20483 (regex!5226 lt!1086545)) (regTwo!20482 (regex!5226 lt!1086545))) (head!7047 lt!1086561)))))

(declare-fun b!3215892 () Bool)

(assert (=> b!3215892 (= e!2005100 (Concat!15441 call!232815 (regex!5226 lt!1086545)))))

(declare-fun b!3215893 () Bool)

(assert (=> b!3215893 (= e!2005099 e!2005103)))

(declare-fun c!540639 () Bool)

(assert (=> b!3215893 (= c!540639 ((_ is ElementMatch!9985) (regex!5226 lt!1086545)))))

(assert (= (and d!882632 c!540640) b!3215884))

(assert (= (and d!882632 (not c!540640)) b!3215893))

(assert (= (and b!3215893 c!540639) b!3215891))

(assert (= (and b!3215893 (not c!540639)) b!3215888))

(assert (= (and b!3215888 c!540638) b!3215890))

(assert (= (and b!3215888 (not c!540638)) b!3215889))

(assert (= (and b!3215889 c!540641) b!3215892))

(assert (= (and b!3215889 (not c!540641)) b!3215887))

(assert (= (and b!3215887 c!540637) b!3215885))

(assert (= (and b!3215887 (not c!540637)) b!3215886))

(assert (= (or b!3215885 b!3215886) bm!232809))

(assert (= (or b!3215892 bm!232809) bm!232807))

(assert (= (or b!3215890 bm!232807) bm!232808))

(assert (= (or b!3215890 b!3215885) bm!232810))

(declare-fun m!3489177 () Bool)

(assert (=> b!3215887 m!3489177))

(declare-fun m!3489179 () Bool)

(assert (=> d!882632 m!3489179))

(assert (=> d!882632 m!3484663))

(assert (=> bm!232808 m!3483337))

(declare-fun m!3489181 () Bool)

(assert (=> bm!232808 m!3489181))

(assert (=> bm!232810 m!3483337))

(declare-fun m!3489185 () Bool)

(assert (=> bm!232810 m!3489185))

(assert (=> b!3213494 d!882632))

(assert (=> b!3213494 d!881022))

(assert (=> b!3213494 d!882032))

(declare-fun bs!542183 () Bool)

(declare-fun d!882636 () Bool)

(assert (= bs!542183 (and d!882636 d!881478)))

(declare-fun lambda!117605 () Int)

(assert (=> bs!542183 (= (= (toValue!7314 (transformation!5226 (rule!7672 separatorToken!241))) (toValue!7314 (transformation!5226 (h!41608 rules!2135)))) (= lambda!117605 lambda!117568))))

(declare-fun bs!542184 () Bool)

(assert (= bs!542184 (and d!882636 d!882444)))

(assert (=> bs!542184 (= (= (toValue!7314 (transformation!5226 (rule!7672 separatorToken!241))) (toValue!7314 (transformation!5226 (rule!7672 (h!41609 tokens!494))))) (= lambda!117605 lambda!117601))))

(assert (=> d!882636 true))

(assert (=> d!882636 (< (dynLambda!14623 order!18493 (toValue!7314 (transformation!5226 (rule!7672 separatorToken!241)))) (dynLambda!14632 order!18499 lambda!117605))))

(assert (=> d!882636 (= (equivClasses!2056 (toChars!7173 (transformation!5226 (rule!7672 separatorToken!241))) (toValue!7314 (transformation!5226 (rule!7672 separatorToken!241)))) (Forall2!865 lambda!117605))))

(declare-fun bs!542185 () Bool)

(assert (= bs!542185 d!882636))

(declare-fun m!3489197 () Bool)

(assert (=> bs!542185 m!3489197))

(assert (=> b!3213341 d!882636))

(declare-fun d!882640 () Bool)

(declare-fun lt!1088087 () Int)

(assert (=> d!882640 (= lt!1088087 (size!27274 (list!12875 (_2!20931 lt!1086637))))))

(assert (=> d!882640 (= lt!1088087 (size!27283 (c!539813 (_2!20931 lt!1086637))))))

(assert (=> d!882640 (= (size!27276 (_2!20931 lt!1086637)) lt!1088087)))

(declare-fun bs!542186 () Bool)

(assert (= bs!542186 d!882640))

(assert (=> bs!542186 m!3483743))

(assert (=> bs!542186 m!3483743))

(declare-fun m!3489207 () Bool)

(assert (=> bs!542186 m!3489207))

(declare-fun m!3489209 () Bool)

(assert (=> bs!542186 m!3489209))

(assert (=> b!3213025 d!882640))

(declare-fun d!882644 () Bool)

(declare-fun lt!1088089 () Int)

(assert (=> d!882644 (= lt!1088089 (size!27274 (list!12875 lt!1086564)))))

(assert (=> d!882644 (= lt!1088089 (size!27283 (c!539813 lt!1086564)))))

(assert (=> d!882644 (= (size!27276 lt!1086564) lt!1088089)))

(declare-fun bs!542187 () Bool)

(assert (= bs!542187 d!882644))

(assert (=> bs!542187 m!3483735))

(assert (=> bs!542187 m!3483735))

(assert (=> bs!542187 m!3487049))

(declare-fun m!3489211 () Bool)

(assert (=> bs!542187 m!3489211))

(assert (=> b!3213025 d!882644))

(assert (=> d!880894 d!881406))

(assert (=> d!880894 d!881410))

(declare-fun d!882646 () Bool)

(assert (=> d!882646 (= (list!12877 (_1!20931 (lex!2145 thiss!18206 rules!2135 (print!1880 thiss!18206 (singletonSeq!2322 (h!41609 (t!239158 tokens!494))))))) (list!12881 (c!539814 (_1!20931 (lex!2145 thiss!18206 rules!2135 (print!1880 thiss!18206 (singletonSeq!2322 (h!41609 (t!239158 tokens!494)))))))))))

(declare-fun bs!542188 () Bool)

(assert (= bs!542188 d!882646))

(declare-fun m!3489215 () Bool)

(assert (=> bs!542188 m!3489215))

(assert (=> d!880894 d!882646))

(assert (=> d!880894 d!880906))

(declare-fun d!882648 () Bool)

(declare-fun lt!1088090 () Int)

(assert (=> d!882648 (= lt!1088090 (size!27277 (list!12877 (_1!20931 lt!1086601))))))

(assert (=> d!882648 (= lt!1088090 (size!27278 (c!539814 (_1!20931 lt!1086601))))))

(assert (=> d!882648 (= (size!27275 (_1!20931 lt!1086601)) lt!1088090)))

(declare-fun bs!542189 () Bool)

(assert (= bs!542189 d!882648))

(assert (=> bs!542189 m!3487371))

(assert (=> bs!542189 m!3487371))

(declare-fun m!3489223 () Bool)

(assert (=> bs!542189 m!3489223))

(declare-fun m!3489225 () Bool)

(assert (=> bs!542189 m!3489225))

(assert (=> d!880894 d!882648))

(assert (=> d!880894 d!881226))

(declare-fun d!882652 () Bool)

(assert (=> d!882652 (= (list!12877 (singletonSeq!2322 (h!41609 (t!239158 tokens!494)))) (list!12881 (c!539814 (singletonSeq!2322 (h!41609 (t!239158 tokens!494))))))))

(declare-fun bs!542191 () Bool)

(assert (= bs!542191 d!882652))

(declare-fun m!3489229 () Bool)

(assert (=> bs!542191 m!3489229))

(assert (=> d!880894 d!882652))

(assert (=> d!881250 d!881434))

(assert (=> d!881250 d!881612))

(declare-fun d!882656 () Bool)

(assert (=> d!882656 (= (dropList!1079 lt!1086550 0) (drop!1862 (list!12881 (c!539814 lt!1086550)) 0))))

(declare-fun bs!542192 () Bool)

(assert (= bs!542192 d!882656))

(assert (=> bs!542192 m!3488425))

(assert (=> bs!542192 m!3488425))

(declare-fun m!3489231 () Bool)

(assert (=> bs!542192 m!3489231))

(assert (=> d!881250 d!882656))

(declare-fun d!882658 () Bool)

(declare-fun lt!1088097 () List!36311)

(assert (=> d!882658 (= lt!1088097 (++!8688 (list!12875 (BalanceConc!21269 Empty!10827)) (printList!1365 thiss!18206 (dropList!1079 lt!1086550 0))))))

(declare-fun e!2005116 () List!36311)

(assert (=> d!882658 (= lt!1088097 e!2005116)))

(declare-fun c!540649 () Bool)

(assert (=> d!882658 (= c!540649 ((_ is Cons!36189) (dropList!1079 lt!1086550 0)))))

(assert (=> d!882658 (= (printListTailRec!562 thiss!18206 (dropList!1079 lt!1086550 0) (list!12875 (BalanceConc!21269 Empty!10827))) lt!1088097)))

(declare-fun b!3215914 () Bool)

(assert (=> b!3215914 (= e!2005116 (printListTailRec!562 thiss!18206 (t!239158 (dropList!1079 lt!1086550 0)) (++!8688 (list!12875 (BalanceConc!21269 Empty!10827)) (list!12875 (charsOf!3242 (h!41609 (dropList!1079 lt!1086550 0)))))))))

(declare-fun lt!1088095 () List!36311)

(assert (=> b!3215914 (= lt!1088095 (list!12875 (charsOf!3242 (h!41609 (dropList!1079 lt!1086550 0)))))))

(declare-fun lt!1088096 () List!36311)

(assert (=> b!3215914 (= lt!1088096 (printList!1365 thiss!18206 (t!239158 (dropList!1079 lt!1086550 0))))))

(declare-fun lt!1088093 () Unit!50676)

(assert (=> b!3215914 (= lt!1088093 (lemmaConcatAssociativity!1750 (list!12875 (BalanceConc!21269 Empty!10827)) lt!1088095 lt!1088096))))

(assert (=> b!3215914 (= (++!8688 (++!8688 (list!12875 (BalanceConc!21269 Empty!10827)) lt!1088095) lt!1088096) (++!8688 (list!12875 (BalanceConc!21269 Empty!10827)) (++!8688 lt!1088095 lt!1088096)))))

(declare-fun lt!1088094 () Unit!50676)

(assert (=> b!3215914 (= lt!1088094 lt!1088093)))

(declare-fun b!3215915 () Bool)

(assert (=> b!3215915 (= e!2005116 (list!12875 (BalanceConc!21269 Empty!10827)))))

(assert (= (and d!882658 c!540649) b!3215914))

(assert (= (and d!882658 (not c!540649)) b!3215915))

(assert (=> d!882658 m!3485011))

(declare-fun m!3489247 () Bool)

(assert (=> d!882658 m!3489247))

(assert (=> d!882658 m!3483815))

(assert (=> d!882658 m!3489247))

(declare-fun m!3489249 () Bool)

(assert (=> d!882658 m!3489249))

(declare-fun m!3489251 () Bool)

(assert (=> b!3215914 m!3489251))

(declare-fun m!3489253 () Bool)

(assert (=> b!3215914 m!3489253))

(assert (=> b!3215914 m!3489251))

(declare-fun m!3489255 () Bool)

(assert (=> b!3215914 m!3489255))

(declare-fun m!3489257 () Bool)

(assert (=> b!3215914 m!3489257))

(assert (=> b!3215914 m!3483815))

(declare-fun m!3489259 () Bool)

(assert (=> b!3215914 m!3489259))

(declare-fun m!3489261 () Bool)

(assert (=> b!3215914 m!3489261))

(assert (=> b!3215914 m!3483815))

(assert (=> b!3215914 m!3489253))

(assert (=> b!3215914 m!3489255))

(declare-fun m!3489263 () Bool)

(assert (=> b!3215914 m!3489263))

(declare-fun m!3489265 () Bool)

(assert (=> b!3215914 m!3489265))

(assert (=> b!3215914 m!3489259))

(assert (=> b!3215914 m!3483815))

(assert (=> b!3215914 m!3489263))

(declare-fun m!3489271 () Bool)

(assert (=> b!3215914 m!3489271))

(assert (=> b!3215914 m!3483815))

(declare-fun m!3489273 () Bool)

(assert (=> b!3215914 m!3489273))

(assert (=> d!881250 d!882658))

(declare-fun d!882664 () Bool)

(assert (=> d!882664 (= (list!12875 lt!1086931) (list!12879 (c!539813 lt!1086931)))))

(declare-fun bs!542193 () Bool)

(assert (= bs!542193 d!882664))

(declare-fun m!3489275 () Bool)

(assert (=> bs!542193 m!3489275))

(assert (=> d!881250 d!882664))

(declare-fun d!882666 () Bool)

(declare-fun lt!1088098 () Token!9818)

(assert (=> d!882666 (= lt!1088098 (apply!8209 (list!12877 (_1!20931 lt!1086874)) 0))))

(assert (=> d!882666 (= lt!1088098 (apply!8210 (c!539814 (_1!20931 lt!1086874)) 0))))

(declare-fun e!2005120 () Bool)

(assert (=> d!882666 e!2005120))

(declare-fun res!1309075 () Bool)

(assert (=> d!882666 (=> (not res!1309075) (not e!2005120))))

(assert (=> d!882666 (= res!1309075 (<= 0 0))))

(assert (=> d!882666 (= (apply!8207 (_1!20931 lt!1086874) 0) lt!1088098)))

(declare-fun b!3215921 () Bool)

(assert (=> b!3215921 (= e!2005120 (< 0 (size!27275 (_1!20931 lt!1086874))))))

(assert (= (and d!882666 res!1309075) b!3215921))

(assert (=> d!882666 m!3488807))

(assert (=> d!882666 m!3488807))

(declare-fun m!3489281 () Bool)

(assert (=> d!882666 m!3489281))

(declare-fun m!3489283 () Bool)

(assert (=> d!882666 m!3489283))

(assert (=> b!3215921 m!3484605))

(assert (=> b!3213483 d!882666))

(assert (=> b!3213329 d!881466))

(declare-fun d!882672 () Bool)

(assert (=> d!882672 (= (apply!8208 (transformation!5226 (rule!7672 (_1!20932 (get!11526 lt!1086803)))) (seqFromList!3524 (originalCharacters!5940 (_1!20932 (get!11526 lt!1086803))))) (dynLambda!14629 (toValue!7314 (transformation!5226 (rule!7672 (_1!20932 (get!11526 lt!1086803))))) (seqFromList!3524 (originalCharacters!5940 (_1!20932 (get!11526 lt!1086803))))))))

(declare-fun b_lambda!88295 () Bool)

(assert (=> (not b_lambda!88295) (not d!882672)))

(declare-fun t!239564 () Bool)

(declare-fun tb!158529 () Bool)

(assert (=> (and b!3212809 (= (toValue!7314 (transformation!5226 (h!41608 rules!2135))) (toValue!7314 (transformation!5226 (rule!7672 (_1!20932 (get!11526 lt!1086803)))))) t!239564) tb!158529))

(declare-fun result!200922 () Bool)

(assert (=> tb!158529 (= result!200922 (inv!21 (dynLambda!14629 (toValue!7314 (transformation!5226 (rule!7672 (_1!20932 (get!11526 lt!1086803))))) (seqFromList!3524 (originalCharacters!5940 (_1!20932 (get!11526 lt!1086803)))))))))

(declare-fun m!3489293 () Bool)

(assert (=> tb!158529 m!3489293))

(assert (=> d!882672 t!239564))

(declare-fun b_and!214653 () Bool)

(assert (= b_and!214625 (and (=> t!239564 result!200922) b_and!214653)))

(declare-fun t!239566 () Bool)

(declare-fun tb!158531 () Bool)

(assert (=> (and b!3213792 (= (toValue!7314 (transformation!5226 (h!41608 (t!239157 rules!2135)))) (toValue!7314 (transformation!5226 (rule!7672 (_1!20932 (get!11526 lt!1086803)))))) t!239566) tb!158531))

(declare-fun result!200924 () Bool)

(assert (= result!200924 result!200922))

(assert (=> d!882672 t!239566))

(declare-fun b_and!214655 () Bool)

(assert (= b_and!214623 (and (=> t!239566 result!200924) b_and!214655)))

(declare-fun t!239568 () Bool)

(declare-fun tb!158533 () Bool)

(assert (=> (and b!3213760 (= (toValue!7314 (transformation!5226 (rule!7672 (h!41609 (t!239158 tokens!494))))) (toValue!7314 (transformation!5226 (rule!7672 (_1!20932 (get!11526 lt!1086803)))))) t!239568) tb!158533))

(declare-fun result!200926 () Bool)

(assert (= result!200926 result!200922))

(assert (=> d!882672 t!239568))

(declare-fun b_and!214657 () Bool)

(assert (= b_and!214631 (and (=> t!239568 result!200926) b_and!214657)))

(declare-fun t!239570 () Bool)

(declare-fun tb!158535 () Bool)

(assert (=> (and b!3212814 (= (toValue!7314 (transformation!5226 (rule!7672 (h!41609 tokens!494)))) (toValue!7314 (transformation!5226 (rule!7672 (_1!20932 (get!11526 lt!1086803)))))) t!239570) tb!158535))

(declare-fun result!200928 () Bool)

(assert (= result!200928 result!200922))

(assert (=> d!882672 t!239570))

(declare-fun b_and!214659 () Bool)

(assert (= b_and!214629 (and (=> t!239570 result!200928) b_and!214659)))

(declare-fun t!239572 () Bool)

(declare-fun tb!158537 () Bool)

(assert (=> (and b!3212813 (= (toValue!7314 (transformation!5226 (rule!7672 separatorToken!241))) (toValue!7314 (transformation!5226 (rule!7672 (_1!20932 (get!11526 lt!1086803)))))) t!239572) tb!158537))

(declare-fun result!200930 () Bool)

(assert (= result!200930 result!200922))

(assert (=> d!882672 t!239572))

(declare-fun b_and!214661 () Bool)

(assert (= b_and!214627 (and (=> t!239572 result!200930) b_and!214661)))

(assert (=> d!882672 m!3484233))

(declare-fun m!3489299 () Bool)

(assert (=> d!882672 m!3489299))

(assert (=> b!3213329 d!882672))

(declare-fun d!882684 () Bool)

(assert (=> d!882684 (= (seqFromList!3524 (originalCharacters!5940 (_1!20932 (get!11526 lt!1086803)))) (fromListB!1544 (originalCharacters!5940 (_1!20932 (get!11526 lt!1086803)))))))

(declare-fun bs!542198 () Bool)

(assert (= bs!542198 d!882684))

(declare-fun m!3489305 () Bool)

(assert (=> bs!542198 m!3489305))

(assert (=> b!3213329 d!882684))

(declare-fun d!882688 () Bool)

(declare-fun c!540654 () Bool)

(assert (=> d!882688 (= c!540654 ((_ is Nil!36187) lt!1086869))))

(declare-fun e!2005126 () (InoxSet C!20156))

(assert (=> d!882688 (= (content!4894 lt!1086869) e!2005126)))

(declare-fun b!3215928 () Bool)

(assert (=> b!3215928 (= e!2005126 ((as const (Array C!20156 Bool)) false))))

(declare-fun b!3215929 () Bool)

(assert (=> b!3215929 (= e!2005126 ((_ map or) (store ((as const (Array C!20156 Bool)) false) (h!41607 lt!1086869) true) (content!4894 (t!239156 lt!1086869))))))

(assert (= (and d!882688 c!540654) b!3215928))

(assert (= (and d!882688 (not c!540654)) b!3215929))

(declare-fun m!3489307 () Bool)

(assert (=> b!3215929 m!3489307))

(declare-fun m!3489309 () Bool)

(assert (=> b!3215929 m!3489309))

(assert (=> d!881100 d!882688))

(assert (=> d!881100 d!881742))

(assert (=> d!881100 d!882410))

(declare-fun d!882690 () Bool)

(declare-fun c!540655 () Bool)

(assert (=> d!882690 (= c!540655 ((_ is Nil!36187) (usedCharacters!542 (regex!5226 (rule!7672 (h!41609 tokens!494))))))))

(declare-fun e!2005127 () (InoxSet C!20156))

(assert (=> d!882690 (= (content!4894 (usedCharacters!542 (regex!5226 (rule!7672 (h!41609 tokens!494))))) e!2005127)))

(declare-fun b!3215930 () Bool)

(assert (=> b!3215930 (= e!2005127 ((as const (Array C!20156 Bool)) false))))

(declare-fun b!3215931 () Bool)

(assert (=> b!3215931 (= e!2005127 ((_ map or) (store ((as const (Array C!20156 Bool)) false) (h!41607 (usedCharacters!542 (regex!5226 (rule!7672 (h!41609 tokens!494))))) true) (content!4894 (t!239156 (usedCharacters!542 (regex!5226 (rule!7672 (h!41609 tokens!494))))))))))

(assert (= (and d!882690 c!540655) b!3215930))

(assert (= (and d!882690 (not c!540655)) b!3215931))

(declare-fun m!3489311 () Bool)

(assert (=> b!3215931 m!3489311))

(assert (=> b!3215931 m!3488913))

(assert (=> d!881008 d!882690))

(assert (=> b!3213496 d!881022))

(declare-fun d!882692 () Bool)

(declare-fun lt!1088103 () Int)

(assert (=> d!882692 (= lt!1088103 (size!27277 (list!12877 (_1!20931 lt!1086878))))))

(assert (=> d!882692 (= lt!1088103 (size!27278 (c!539814 (_1!20931 lt!1086878))))))

(assert (=> d!882692 (= (size!27275 (_1!20931 lt!1086878)) lt!1088103)))

(declare-fun bs!542201 () Bool)

(assert (= bs!542201 d!882692))

(assert (=> bs!542201 m!3484623))

(assert (=> bs!542201 m!3484623))

(declare-fun m!3489313 () Bool)

(assert (=> bs!542201 m!3489313))

(declare-fun m!3489315 () Bool)

(assert (=> bs!542201 m!3489315))

(assert (=> d!881118 d!882692))

(declare-fun b!3215933 () Bool)

(declare-fun e!2005131 () tuple2!35594)

(declare-fun lt!1088137 () BalanceConc!21268)

(assert (=> b!3215933 (= e!2005131 (tuple2!35595 (BalanceConc!21271 Empty!10828) lt!1088137))))

(declare-fun b!3215934 () Bool)

(declare-fun e!2005132 () tuple2!35594)

(assert (=> b!3215934 (= e!2005132 (tuple2!35595 (BalanceConc!21271 Empty!10828) lt!1086549))))

(declare-fun b!3215935 () Bool)

(declare-fun lt!1088117 () Option!7156)

(declare-fun lt!1088128 () tuple2!35594)

(assert (=> b!3215935 (= lt!1088128 (lexRec!689 thiss!18206 rules!2135 (_2!20938 (v!35725 lt!1088117))))))

(assert (=> b!3215935 (= e!2005131 (tuple2!35595 (prepend!1177 (_1!20931 lt!1088128) (_1!20938 (v!35725 lt!1088117))) (_2!20931 lt!1088128)))))

(declare-fun lt!1088132 () BalanceConc!21268)

(declare-fun b!3215936 () Bool)

(declare-fun lt!1088129 () Option!7156)

(assert (=> b!3215936 (= e!2005132 (lexTailRecV2!934 thiss!18206 rules!2135 lt!1086549 lt!1088132 (_2!20938 (v!35725 lt!1088129)) (append!869 (BalanceConc!21271 Empty!10828) (_1!20938 (v!35725 lt!1088129)))))))

(declare-fun lt!1088136 () tuple2!35594)

(assert (=> b!3215936 (= lt!1088136 (lexRec!689 thiss!18206 rules!2135 (_2!20938 (v!35725 lt!1088129))))))

(declare-fun lt!1088121 () List!36311)

(assert (=> b!3215936 (= lt!1088121 (list!12875 (BalanceConc!21269 Empty!10827)))))

(declare-fun lt!1088124 () List!36311)

(assert (=> b!3215936 (= lt!1088124 (list!12875 (charsOf!3242 (_1!20938 (v!35725 lt!1088129)))))))

(declare-fun lt!1088118 () List!36311)

(assert (=> b!3215936 (= lt!1088118 (list!12875 (_2!20938 (v!35725 lt!1088129))))))

(declare-fun lt!1088115 () Unit!50676)

(assert (=> b!3215936 (= lt!1088115 (lemmaConcatAssociativity!1750 lt!1088121 lt!1088124 lt!1088118))))

(assert (=> b!3215936 (= (++!8688 (++!8688 lt!1088121 lt!1088124) lt!1088118) (++!8688 lt!1088121 (++!8688 lt!1088124 lt!1088118)))))

(declare-fun lt!1088105 () Unit!50676)

(assert (=> b!3215936 (= lt!1088105 lt!1088115)))

(declare-fun lt!1088104 () Option!7156)

(assert (=> b!3215936 (= lt!1088104 (maxPrefixZipperSequence!1082 thiss!18206 rules!2135 lt!1086549))))

(declare-fun c!540657 () Bool)

(assert (=> b!3215936 (= c!540657 ((_ is Some!7155) lt!1088104))))

(declare-fun e!2005130 () tuple2!35594)

(assert (=> b!3215936 (= (lexRec!689 thiss!18206 rules!2135 lt!1086549) e!2005130)))

(declare-fun lt!1088130 () Unit!50676)

(declare-fun Unit!50698 () Unit!50676)

(assert (=> b!3215936 (= lt!1088130 Unit!50698)))

(declare-fun lt!1088113 () List!36313)

(assert (=> b!3215936 (= lt!1088113 (list!12877 (BalanceConc!21271 Empty!10828)))))

(declare-fun lt!1088112 () List!36313)

(assert (=> b!3215936 (= lt!1088112 (Cons!36189 (_1!20938 (v!35725 lt!1088129)) Nil!36189))))

(declare-fun lt!1088111 () List!36313)

(assert (=> b!3215936 (= lt!1088111 (list!12877 (_1!20931 lt!1088136)))))

(declare-fun lt!1088106 () Unit!50676)

(assert (=> b!3215936 (= lt!1088106 (lemmaConcatAssociativity!1752 lt!1088113 lt!1088112 lt!1088111))))

(assert (=> b!3215936 (= (++!8693 (++!8693 lt!1088113 lt!1088112) lt!1088111) (++!8693 lt!1088113 (++!8693 lt!1088112 lt!1088111)))))

(declare-fun lt!1088119 () Unit!50676)

(assert (=> b!3215936 (= lt!1088119 lt!1088106)))

(declare-fun lt!1088110 () List!36311)

(assert (=> b!3215936 (= lt!1088110 (++!8688 (list!12875 (BalanceConc!21269 Empty!10827)) (list!12875 (charsOf!3242 (_1!20938 (v!35725 lt!1088129))))))))

(declare-fun lt!1088114 () List!36311)

(assert (=> b!3215936 (= lt!1088114 (list!12875 (_2!20938 (v!35725 lt!1088129))))))

(declare-fun lt!1088126 () List!36313)

(assert (=> b!3215936 (= lt!1088126 (list!12877 (append!869 (BalanceConc!21271 Empty!10828) (_1!20938 (v!35725 lt!1088129)))))))

(declare-fun lt!1088133 () Unit!50676)

(assert (=> b!3215936 (= lt!1088133 (lemmaLexThenLexPrefix!454 thiss!18206 rules!2135 lt!1088110 lt!1088114 lt!1088126 (list!12877 (_1!20931 lt!1088136)) (list!12875 (_2!20931 lt!1088136))))))

(assert (=> b!3215936 (= (lexList!1314 thiss!18206 rules!2135 lt!1088110) (tuple2!35599 lt!1088126 Nil!36187))))

(declare-fun lt!1088120 () Unit!50676)

(assert (=> b!3215936 (= lt!1088120 lt!1088133)))

(assert (=> b!3215936 (= lt!1088137 (++!8689 (BalanceConc!21269 Empty!10827) (charsOf!3242 (_1!20938 (v!35725 lt!1088129)))))))

(assert (=> b!3215936 (= lt!1088117 (maxPrefixZipperSequence!1082 thiss!18206 rules!2135 lt!1088137))))

(declare-fun c!540658 () Bool)

(assert (=> b!3215936 (= c!540658 ((_ is Some!7155) lt!1088117))))

(assert (=> b!3215936 (= (lexRec!689 thiss!18206 rules!2135 (++!8689 (BalanceConc!21269 Empty!10827) (charsOf!3242 (_1!20938 (v!35725 lt!1088129))))) e!2005131)))

(declare-fun lt!1088108 () Unit!50676)

(declare-fun Unit!50700 () Unit!50676)

(assert (=> b!3215936 (= lt!1088108 Unit!50700)))

(assert (=> b!3215936 (= lt!1088132 (++!8689 (BalanceConc!21269 Empty!10827) (charsOf!3242 (_1!20938 (v!35725 lt!1088129)))))))

(declare-fun lt!1088135 () List!36311)

(assert (=> b!3215936 (= lt!1088135 (list!12875 lt!1088132))))

(declare-fun lt!1088127 () List!36311)

(assert (=> b!3215936 (= lt!1088127 (list!12875 (_2!20938 (v!35725 lt!1088129))))))

(declare-fun lt!1088109 () Unit!50676)

(assert (=> b!3215936 (= lt!1088109 (lemmaConcatTwoListThenFSndIsSuffix!536 lt!1088135 lt!1088127))))

(assert (=> b!3215936 (isSuffix!851 lt!1088127 (++!8688 lt!1088135 lt!1088127))))

(declare-fun lt!1088116 () Unit!50676)

(assert (=> b!3215936 (= lt!1088116 lt!1088109)))

(declare-fun b!3215937 () Bool)

(assert (=> b!3215937 (= e!2005130 (tuple2!35595 (BalanceConc!21271 Empty!10828) lt!1086549))))

(declare-fun lt!1088122 () tuple2!35594)

(declare-fun b!3215938 () Bool)

(assert (=> b!3215938 (= lt!1088122 (lexRec!689 thiss!18206 rules!2135 (_2!20938 (v!35725 lt!1088104))))))

(assert (=> b!3215938 (= e!2005130 (tuple2!35595 (prepend!1177 (_1!20931 lt!1088122) (_1!20938 (v!35725 lt!1088104))) (_2!20931 lt!1088122)))))

(declare-fun d!882694 () Bool)

(declare-fun e!2005129 () Bool)

(assert (=> d!882694 e!2005129))

(declare-fun res!1309079 () Bool)

(assert (=> d!882694 (=> (not res!1309079) (not e!2005129))))

(declare-fun lt!1088123 () tuple2!35594)

(assert (=> d!882694 (= res!1309079 (= (list!12877 (_1!20931 lt!1088123)) (list!12877 (_1!20931 (lexRec!689 thiss!18206 rules!2135 lt!1086549)))))))

(assert (=> d!882694 (= lt!1088123 e!2005132)))

(declare-fun c!540656 () Bool)

(assert (=> d!882694 (= c!540656 ((_ is Some!7155) lt!1088129))))

(assert (=> d!882694 (= lt!1088129 (maxPrefixZipperSequenceV2!476 thiss!18206 rules!2135 lt!1086549 lt!1086549))))

(declare-fun lt!1088125 () Unit!50676)

(declare-fun lt!1088131 () Unit!50676)

(assert (=> d!882694 (= lt!1088125 lt!1088131)))

(declare-fun lt!1088134 () List!36311)

(declare-fun lt!1088138 () List!36311)

(assert (=> d!882694 (isSuffix!851 lt!1088134 (++!8688 lt!1088138 lt!1088134))))

(assert (=> d!882694 (= lt!1088131 (lemmaConcatTwoListThenFSndIsSuffix!536 lt!1088138 lt!1088134))))

(assert (=> d!882694 (= lt!1088134 (list!12875 lt!1086549))))

(assert (=> d!882694 (= lt!1088138 (list!12875 (BalanceConc!21269 Empty!10827)))))

(assert (=> d!882694 (= (lexTailRecV2!934 thiss!18206 rules!2135 lt!1086549 (BalanceConc!21269 Empty!10827) lt!1086549 (BalanceConc!21271 Empty!10828)) lt!1088123)))

(declare-fun b!3215939 () Bool)

(assert (=> b!3215939 (= e!2005129 (= (list!12875 (_2!20931 lt!1088123)) (list!12875 (_2!20931 (lexRec!689 thiss!18206 rules!2135 lt!1086549)))))))

(assert (= (and d!882694 c!540656) b!3215936))

(assert (= (and d!882694 (not c!540656)) b!3215934))

(assert (= (and b!3215936 c!540657) b!3215938))

(assert (= (and b!3215936 (not c!540657)) b!3215937))

(assert (= (and b!3215936 c!540658) b!3215935))

(assert (= (and b!3215936 (not c!540658)) b!3215933))

(assert (= (and d!882694 res!1309079) b!3215939))

(declare-fun m!3489339 () Bool)

(assert (=> b!3215938 m!3489339))

(declare-fun m!3489341 () Bool)

(assert (=> b!3215938 m!3489341))

(declare-fun m!3489343 () Bool)

(assert (=> b!3215939 m!3489343))

(declare-fun m!3489345 () Bool)

(assert (=> b!3215939 m!3489345))

(declare-fun m!3489347 () Bool)

(assert (=> b!3215939 m!3489347))

(declare-fun m!3489349 () Bool)

(assert (=> b!3215936 m!3489349))

(declare-fun m!3489351 () Bool)

(assert (=> b!3215936 m!3489351))

(declare-fun m!3489353 () Bool)

(assert (=> b!3215936 m!3489353))

(declare-fun m!3489355 () Bool)

(assert (=> b!3215936 m!3489355))

(assert (=> b!3215936 m!3483815))

(declare-fun m!3489357 () Bool)

(assert (=> b!3215936 m!3489357))

(declare-fun m!3489359 () Bool)

(assert (=> b!3215936 m!3489359))

(assert (=> b!3215936 m!3489357))

(declare-fun m!3489361 () Bool)

(assert (=> b!3215936 m!3489361))

(declare-fun m!3489363 () Bool)

(assert (=> b!3215936 m!3489363))

(declare-fun m!3489365 () Bool)

(assert (=> b!3215936 m!3489365))

(declare-fun m!3489367 () Bool)

(assert (=> b!3215936 m!3489367))

(assert (=> b!3215936 m!3489345))

(assert (=> b!3215936 m!3483815))

(declare-fun m!3489369 () Bool)

(assert (=> b!3215936 m!3489369))

(declare-fun m!3489371 () Bool)

(assert (=> b!3215936 m!3489371))

(declare-fun m!3489373 () Bool)

(assert (=> b!3215936 m!3489373))

(declare-fun m!3489375 () Bool)

(assert (=> b!3215936 m!3489375))

(declare-fun m!3489377 () Bool)

(assert (=> b!3215936 m!3489377))

(declare-fun m!3489379 () Bool)

(assert (=> b!3215936 m!3489379))

(declare-fun m!3489381 () Bool)

(assert (=> b!3215936 m!3489381))

(declare-fun m!3489383 () Bool)

(assert (=> b!3215936 m!3489383))

(assert (=> b!3215936 m!3489369))

(assert (=> b!3215936 m!3489363))

(assert (=> b!3215936 m!3489351))

(declare-fun m!3489385 () Bool)

(assert (=> b!3215936 m!3489385))

(assert (=> b!3215936 m!3489353))

(declare-fun m!3489387 () Bool)

(assert (=> b!3215936 m!3489387))

(declare-fun m!3489389 () Bool)

(assert (=> b!3215936 m!3489389))

(declare-fun m!3489391 () Bool)

(assert (=> b!3215936 m!3489391))

(declare-fun m!3489393 () Bool)

(assert (=> b!3215936 m!3489393))

(assert (=> b!3215936 m!3489353))

(declare-fun m!3489395 () Bool)

(assert (=> b!3215936 m!3489395))

(declare-fun m!3489397 () Bool)

(assert (=> b!3215936 m!3489397))

(declare-fun m!3489399 () Bool)

(assert (=> b!3215936 m!3489399))

(assert (=> b!3215936 m!3487019))

(assert (=> b!3215936 m!3489383))

(assert (=> b!3215936 m!3489383))

(assert (=> b!3215936 m!3489375))

(assert (=> b!3215936 m!3489359))

(declare-fun m!3489401 () Bool)

(assert (=> b!3215936 m!3489401))

(assert (=> b!3215936 m!3489399))

(assert (=> b!3215936 m!3489387))

(declare-fun m!3489403 () Bool)

(assert (=> b!3215936 m!3489403))

(declare-fun m!3489405 () Bool)

(assert (=> b!3215936 m!3489405))

(declare-fun m!3489407 () Bool)

(assert (=> b!3215936 m!3489407))

(assert (=> b!3215936 m!3489389))

(declare-fun m!3489409 () Bool)

(assert (=> d!882694 m!3489409))

(declare-fun m!3489411 () Bool)

(assert (=> d!882694 m!3489411))

(assert (=> d!882694 m!3489409))

(assert (=> d!882694 m!3483815))

(declare-fun m!3489413 () Bool)

(assert (=> d!882694 m!3489413))

(assert (=> d!882694 m!3489345))

(assert (=> d!882694 m!3484625))

(declare-fun m!3489415 () Bool)

(assert (=> d!882694 m!3489415))

(declare-fun m!3489417 () Bool)

(assert (=> d!882694 m!3489417))

(declare-fun m!3489419 () Bool)

(assert (=> d!882694 m!3489419))

(declare-fun m!3489421 () Bool)

(assert (=> b!3215935 m!3489421))

(declare-fun m!3489423 () Bool)

(assert (=> b!3215935 m!3489423))

(assert (=> d!881118 d!882694))

(declare-fun d!882706 () Bool)

(declare-fun c!540660 () Bool)

(assert (=> d!882706 (= c!540660 ((_ is Node!10827) (c!539813 (dynLambda!14631 (toChars!7173 (transformation!5226 (rule!7672 separatorToken!241))) (value!169401 separatorToken!241)))))))

(declare-fun e!2005142 () Bool)

(assert (=> d!882706 (= (inv!49055 (c!539813 (dynLambda!14631 (toChars!7173 (transformation!5226 (rule!7672 separatorToken!241))) (value!169401 separatorToken!241)))) e!2005142)))

(declare-fun b!3215952 () Bool)

(assert (=> b!3215952 (= e!2005142 (inv!49059 (c!539813 (dynLambda!14631 (toChars!7173 (transformation!5226 (rule!7672 separatorToken!241))) (value!169401 separatorToken!241)))))))

(declare-fun b!3215953 () Bool)

(declare-fun e!2005143 () Bool)

(assert (=> b!3215953 (= e!2005142 e!2005143)))

(declare-fun res!1309090 () Bool)

(assert (=> b!3215953 (= res!1309090 (not ((_ is Leaf!17051) (c!539813 (dynLambda!14631 (toChars!7173 (transformation!5226 (rule!7672 separatorToken!241))) (value!169401 separatorToken!241))))))))

(assert (=> b!3215953 (=> res!1309090 e!2005143)))

(declare-fun b!3215954 () Bool)

(assert (=> b!3215954 (= e!2005143 (inv!49060 (c!539813 (dynLambda!14631 (toChars!7173 (transformation!5226 (rule!7672 separatorToken!241))) (value!169401 separatorToken!241)))))))

(assert (= (and d!882706 c!540660) b!3215952))

(assert (= (and d!882706 (not c!540660)) b!3215953))

(assert (= (and b!3215953 (not res!1309090)) b!3215954))

(declare-fun m!3489429 () Bool)

(assert (=> b!3215952 m!3489429))

(declare-fun m!3489431 () Bool)

(assert (=> b!3215954 m!3489431))

(assert (=> b!3213461 d!882706))

(assert (=> b!3213269 d!882040))

(declare-fun d!882710 () Bool)

(assert (=> d!882710 (= (apply!8208 (transformation!5226 (rule!7672 (_1!20932 (get!11526 lt!1086777)))) (seqFromList!3524 (originalCharacters!5940 (_1!20932 (get!11526 lt!1086777))))) (dynLambda!14629 (toValue!7314 (transformation!5226 (rule!7672 (_1!20932 (get!11526 lt!1086777))))) (seqFromList!3524 (originalCharacters!5940 (_1!20932 (get!11526 lt!1086777))))))))

(declare-fun b_lambda!88301 () Bool)

(assert (=> (not b_lambda!88301) (not d!882710)))

(declare-fun t!239574 () Bool)

(declare-fun tb!158539 () Bool)

(assert (=> (and b!3213792 (= (toValue!7314 (transformation!5226 (h!41608 (t!239157 rules!2135)))) (toValue!7314 (transformation!5226 (rule!7672 (_1!20932 (get!11526 lt!1086777)))))) t!239574) tb!158539))

(declare-fun result!200932 () Bool)

(assert (=> tb!158539 (= result!200932 (inv!21 (dynLambda!14629 (toValue!7314 (transformation!5226 (rule!7672 (_1!20932 (get!11526 lt!1086777))))) (seqFromList!3524 (originalCharacters!5940 (_1!20932 (get!11526 lt!1086777)))))))))

(declare-fun m!3489439 () Bool)

(assert (=> tb!158539 m!3489439))

(assert (=> d!882710 t!239574))

(declare-fun b_and!214673 () Bool)

(assert (= b_and!214655 (and (=> t!239574 result!200932) b_and!214673)))

(declare-fun tb!158541 () Bool)

(declare-fun t!239576 () Bool)

(assert (=> (and b!3212814 (= (toValue!7314 (transformation!5226 (rule!7672 (h!41609 tokens!494)))) (toValue!7314 (transformation!5226 (rule!7672 (_1!20932 (get!11526 lt!1086777)))))) t!239576) tb!158541))

(declare-fun result!200934 () Bool)

(assert (= result!200934 result!200932))

(assert (=> d!882710 t!239576))

(declare-fun b_and!214675 () Bool)

(assert (= b_and!214659 (and (=> t!239576 result!200934) b_and!214675)))

(declare-fun t!239578 () Bool)

(declare-fun tb!158543 () Bool)

(assert (=> (and b!3213760 (= (toValue!7314 (transformation!5226 (rule!7672 (h!41609 (t!239158 tokens!494))))) (toValue!7314 (transformation!5226 (rule!7672 (_1!20932 (get!11526 lt!1086777)))))) t!239578) tb!158543))

(declare-fun result!200936 () Bool)

(assert (= result!200936 result!200932))

(assert (=> d!882710 t!239578))

(declare-fun b_and!214677 () Bool)

(assert (= b_and!214657 (and (=> t!239578 result!200936) b_and!214677)))

(declare-fun t!239580 () Bool)

(declare-fun tb!158545 () Bool)

(assert (=> (and b!3212809 (= (toValue!7314 (transformation!5226 (h!41608 rules!2135))) (toValue!7314 (transformation!5226 (rule!7672 (_1!20932 (get!11526 lt!1086777)))))) t!239580) tb!158545))

(declare-fun result!200938 () Bool)

(assert (= result!200938 result!200932))

(assert (=> d!882710 t!239580))

(declare-fun b_and!214679 () Bool)

(assert (= b_and!214653 (and (=> t!239580 result!200938) b_and!214679)))

(declare-fun tb!158547 () Bool)

(declare-fun t!239582 () Bool)

(assert (=> (and b!3212813 (= (toValue!7314 (transformation!5226 (rule!7672 separatorToken!241))) (toValue!7314 (transformation!5226 (rule!7672 (_1!20932 (get!11526 lt!1086777)))))) t!239582) tb!158547))

(declare-fun result!200940 () Bool)

(assert (= result!200940 result!200932))

(assert (=> d!882710 t!239582))

(declare-fun b_and!214681 () Bool)

(assert (= b_and!214661 (and (=> t!239582 result!200940) b_and!214681)))

(assert (=> d!882710 m!3484105))

(declare-fun m!3489441 () Bool)

(assert (=> d!882710 m!3489441))

(assert (=> b!3213269 d!882710))

(declare-fun d!882714 () Bool)

(assert (=> d!882714 (= (seqFromList!3524 (originalCharacters!5940 (_1!20932 (get!11526 lt!1086777)))) (fromListB!1544 (originalCharacters!5940 (_1!20932 (get!11526 lt!1086777)))))))

(declare-fun bs!542204 () Bool)

(assert (= bs!542204 d!882714))

(declare-fun m!3489443 () Bool)

(assert (=> bs!542204 m!3489443))

(assert (=> b!3213269 d!882714))

(declare-fun d!882716 () Bool)

(declare-fun lt!1088141 () Int)

(assert (=> d!882716 (>= lt!1088141 0)))

(declare-fun e!2005147 () Int)

(assert (=> d!882716 (= lt!1088141 e!2005147)))

(declare-fun c!540662 () Bool)

(assert (=> d!882716 (= c!540662 ((_ is Nil!36187) lt!1086868))))

(assert (=> d!882716 (= (size!27274 lt!1086868) lt!1088141)))

(declare-fun b!3215959 () Bool)

(assert (=> b!3215959 (= e!2005147 0)))

(declare-fun b!3215960 () Bool)

(assert (=> b!3215960 (= e!2005147 (+ 1 (size!27274 (t!239156 lt!1086868))))))

(assert (= (and d!882716 c!540662) b!3215959))

(assert (= (and d!882716 (not c!540662)) b!3215960))

(declare-fun m!3489445 () Bool)

(assert (=> b!3215960 m!3489445))

(assert (=> b!3213464 d!882716))

(declare-fun d!882718 () Bool)

(declare-fun lt!1088142 () Int)

(assert (=> d!882718 (>= lt!1088142 0)))

(declare-fun e!2005148 () Int)

(assert (=> d!882718 (= lt!1088142 e!2005148)))

(declare-fun c!540663 () Bool)

(assert (=> d!882718 (= c!540663 ((_ is Nil!36187) (++!8688 lt!1086561 lt!1086557)))))

(assert (=> d!882718 (= (size!27274 (++!8688 lt!1086561 lt!1086557)) lt!1088142)))

(declare-fun b!3215961 () Bool)

(assert (=> b!3215961 (= e!2005148 0)))

(declare-fun b!3215962 () Bool)

(assert (=> b!3215962 (= e!2005148 (+ 1 (size!27274 (t!239156 (++!8688 lt!1086561 lt!1086557)))))))

(assert (= (and d!882718 c!540663) b!3215961))

(assert (= (and d!882718 (not c!540663)) b!3215962))

(assert (=> b!3215962 m!3488851))

(assert (=> b!3213464 d!882718))

(declare-fun d!882720 () Bool)

(declare-fun lt!1088143 () Int)

(assert (=> d!882720 (>= lt!1088143 0)))

(declare-fun e!2005149 () Int)

(assert (=> d!882720 (= lt!1088143 e!2005149)))

(declare-fun c!540664 () Bool)

(assert (=> d!882720 (= c!540664 ((_ is Nil!36187) (printWithSeparatorTokenList!160 thiss!18206 (t!239158 (t!239158 tokens!494)) separatorToken!241)))))

(assert (=> d!882720 (= (size!27274 (printWithSeparatorTokenList!160 thiss!18206 (t!239158 (t!239158 tokens!494)) separatorToken!241)) lt!1088143)))

(declare-fun b!3215963 () Bool)

(assert (=> b!3215963 (= e!2005149 0)))

(declare-fun b!3215964 () Bool)

(assert (=> b!3215964 (= e!2005149 (+ 1 (size!27274 (t!239156 (printWithSeparatorTokenList!160 thiss!18206 (t!239158 (t!239158 tokens!494)) separatorToken!241)))))))

(assert (= (and d!882720 c!540664) b!3215963))

(assert (= (and d!882720 (not c!540664)) b!3215964))

(declare-fun m!3489447 () Bool)

(assert (=> b!3215964 m!3489447))

(assert (=> b!3213464 d!882720))

(declare-fun d!882722 () Bool)

(declare-fun lt!1088144 () Bool)

(assert (=> d!882722 (= lt!1088144 (isEmpty!20292 (list!12877 (_1!20931 lt!1086753))))))

(assert (=> d!882722 (= lt!1088144 (isEmpty!20293 (c!539814 (_1!20931 lt!1086753))))))

(assert (=> d!882722 (= (isEmpty!20280 (_1!20931 lt!1086753)) lt!1088144)))

(declare-fun bs!542205 () Bool)

(assert (= bs!542205 d!882722))

(assert (=> bs!542205 m!3484025))

(assert (=> bs!542205 m!3484025))

(declare-fun m!3489449 () Bool)

(assert (=> bs!542205 m!3489449))

(declare-fun m!3489451 () Bool)

(assert (=> bs!542205 m!3489451))

(assert (=> b!3213209 d!882722))

(declare-fun d!882724 () Bool)

(declare-fun lt!1088145 () BalanceConc!21268)

(assert (=> d!882724 (= (list!12875 lt!1088145) (originalCharacters!5940 (h!41609 (t!239158 (t!239158 tokens!494)))))))

(assert (=> d!882724 (= lt!1088145 (dynLambda!14631 (toChars!7173 (transformation!5226 (rule!7672 (h!41609 (t!239158 (t!239158 tokens!494)))))) (value!169401 (h!41609 (t!239158 (t!239158 tokens!494))))))))

(assert (=> d!882724 (= (charsOf!3242 (h!41609 (t!239158 (t!239158 tokens!494)))) lt!1088145)))

(declare-fun b_lambda!88303 () Bool)

(assert (=> (not b_lambda!88303) (not d!882724)))

(declare-fun t!239584 () Bool)

(declare-fun tb!158549 () Bool)

(assert (=> (and b!3213792 (= (toChars!7173 (transformation!5226 (h!41608 (t!239157 rules!2135)))) (toChars!7173 (transformation!5226 (rule!7672 (h!41609 (t!239158 (t!239158 tokens!494))))))) t!239584) tb!158549))

(declare-fun b!3215965 () Bool)

(declare-fun e!2005150 () Bool)

(declare-fun tp!1013837 () Bool)

(assert (=> b!3215965 (= e!2005150 (and (inv!49055 (c!539813 (dynLambda!14631 (toChars!7173 (transformation!5226 (rule!7672 (h!41609 (t!239158 (t!239158 tokens!494)))))) (value!169401 (h!41609 (t!239158 (t!239158 tokens!494))))))) tp!1013837))))

(declare-fun result!200942 () Bool)

(assert (=> tb!158549 (= result!200942 (and (inv!49056 (dynLambda!14631 (toChars!7173 (transformation!5226 (rule!7672 (h!41609 (t!239158 (t!239158 tokens!494)))))) (value!169401 (h!41609 (t!239158 (t!239158 tokens!494)))))) e!2005150))))

(assert (= tb!158549 b!3215965))

(declare-fun m!3489453 () Bool)

(assert (=> b!3215965 m!3489453))

(declare-fun m!3489455 () Bool)

(assert (=> tb!158549 m!3489455))

(assert (=> d!882724 t!239584))

(declare-fun b_and!214683 () Bool)

(assert (= b_and!214639 (and (=> t!239584 result!200942) b_and!214683)))

(declare-fun t!239586 () Bool)

(declare-fun tb!158551 () Bool)

(assert (=> (and b!3212809 (= (toChars!7173 (transformation!5226 (h!41608 rules!2135))) (toChars!7173 (transformation!5226 (rule!7672 (h!41609 (t!239158 (t!239158 tokens!494))))))) t!239586) tb!158551))

(declare-fun result!200944 () Bool)

(assert (= result!200944 result!200942))

(assert (=> d!882724 t!239586))

(declare-fun b_and!214685 () Bool)

(assert (= b_and!214637 (and (=> t!239586 result!200944) b_and!214685)))

(declare-fun t!239588 () Bool)

(declare-fun tb!158553 () Bool)

(assert (=> (and b!3212814 (= (toChars!7173 (transformation!5226 (rule!7672 (h!41609 tokens!494)))) (toChars!7173 (transformation!5226 (rule!7672 (h!41609 (t!239158 (t!239158 tokens!494))))))) t!239588) tb!158553))

(declare-fun result!200946 () Bool)

(assert (= result!200946 result!200942))

(assert (=> d!882724 t!239588))

(declare-fun b_and!214687 () Bool)

(assert (= b_and!214635 (and (=> t!239588 result!200946) b_and!214687)))

(declare-fun t!239590 () Bool)

(declare-fun tb!158555 () Bool)

(assert (=> (and b!3212813 (= (toChars!7173 (transformation!5226 (rule!7672 separatorToken!241))) (toChars!7173 (transformation!5226 (rule!7672 (h!41609 (t!239158 (t!239158 tokens!494))))))) t!239590) tb!158555))

(declare-fun result!200948 () Bool)

(assert (= result!200948 result!200942))

(assert (=> d!882724 t!239590))

(declare-fun b_and!214689 () Bool)

(assert (= b_and!214641 (and (=> t!239590 result!200948) b_and!214689)))

(declare-fun t!239592 () Bool)

(declare-fun tb!158557 () Bool)

(assert (=> (and b!3213760 (= (toChars!7173 (transformation!5226 (rule!7672 (h!41609 (t!239158 tokens!494))))) (toChars!7173 (transformation!5226 (rule!7672 (h!41609 (t!239158 (t!239158 tokens!494))))))) t!239592) tb!158557))

(declare-fun result!200950 () Bool)

(assert (= result!200950 result!200942))

(assert (=> d!882724 t!239592))

(declare-fun b_and!214691 () Bool)

(assert (= b_and!214633 (and (=> t!239592 result!200950) b_and!214691)))

(declare-fun m!3489457 () Bool)

(assert (=> d!882724 m!3489457))

(declare-fun m!3489459 () Bool)

(assert (=> d!882724 m!3489459))

(assert (=> b!3213470 d!882724))

(declare-fun d!882726 () Bool)

(assert (=> d!882726 (= (list!12875 (charsOf!3242 (h!41609 (t!239158 (t!239158 tokens!494))))) (list!12879 (c!539813 (charsOf!3242 (h!41609 (t!239158 (t!239158 tokens!494)))))))))

(declare-fun bs!542206 () Bool)

(assert (= bs!542206 d!882726))

(declare-fun m!3489461 () Bool)

(assert (=> bs!542206 m!3489461))

(assert (=> b!3213470 d!882726))

(declare-fun d!882728 () Bool)

(declare-fun c!540665 () Bool)

(assert (=> d!882728 (= c!540665 ((_ is Cons!36189) (t!239158 (t!239158 (t!239158 tokens!494)))))))

(declare-fun e!2005151 () List!36311)

(assert (=> d!882728 (= (printWithSeparatorTokenList!160 thiss!18206 (t!239158 (t!239158 (t!239158 tokens!494))) separatorToken!241) e!2005151)))

(declare-fun b!3215966 () Bool)

(assert (=> b!3215966 (= e!2005151 (++!8688 (++!8688 (list!12875 (charsOf!3242 (h!41609 (t!239158 (t!239158 (t!239158 tokens!494)))))) (list!12875 (charsOf!3242 separatorToken!241))) (printWithSeparatorTokenList!160 thiss!18206 (t!239158 (t!239158 (t!239158 (t!239158 tokens!494)))) separatorToken!241)))))

(declare-fun b!3215967 () Bool)

(assert (=> b!3215967 (= e!2005151 Nil!36187)))

(assert (= (and d!882728 c!540665) b!3215966))

(assert (= (and d!882728 (not c!540665)) b!3215967))

(assert (=> b!3215966 m!3483459))

(declare-fun m!3489463 () Bool)

(assert (=> b!3215966 m!3489463))

(declare-fun m!3489465 () Bool)

(assert (=> b!3215966 m!3489465))

(declare-fun m!3489467 () Bool)

(assert (=> b!3215966 m!3489467))

(assert (=> b!3215966 m!3489465))

(declare-fun m!3489469 () Bool)

(assert (=> b!3215966 m!3489469))

(declare-fun m!3489471 () Bool)

(assert (=> b!3215966 m!3489471))

(assert (=> b!3215966 m!3489469))

(assert (=> b!3215966 m!3483459))

(assert (=> b!3215966 m!3483469))

(assert (=> b!3215966 m!3489471))

(assert (=> b!3215966 m!3483469))

(assert (=> b!3215966 m!3489463))

(assert (=> b!3213470 d!882728))

(declare-fun b!3215970 () Bool)

(declare-fun res!1309094 () Bool)

(declare-fun e!2005152 () Bool)

(assert (=> b!3215970 (=> (not res!1309094) (not e!2005152))))

(declare-fun lt!1088146 () List!36311)

(assert (=> b!3215970 (= res!1309094 (= (size!27274 lt!1088146) (+ (size!27274 (list!12875 (charsOf!3242 (h!41609 (t!239158 (t!239158 tokens!494)))))) (size!27274 (list!12875 (charsOf!3242 separatorToken!241))))))))

(declare-fun b!3215969 () Bool)

(declare-fun e!2005153 () List!36311)

(assert (=> b!3215969 (= e!2005153 (Cons!36187 (h!41607 (list!12875 (charsOf!3242 (h!41609 (t!239158 (t!239158 tokens!494)))))) (++!8688 (t!239156 (list!12875 (charsOf!3242 (h!41609 (t!239158 (t!239158 tokens!494)))))) (list!12875 (charsOf!3242 separatorToken!241)))))))

(declare-fun b!3215968 () Bool)

(assert (=> b!3215968 (= e!2005153 (list!12875 (charsOf!3242 separatorToken!241)))))

(declare-fun d!882730 () Bool)

(assert (=> d!882730 e!2005152))

(declare-fun res!1309093 () Bool)

(assert (=> d!882730 (=> (not res!1309093) (not e!2005152))))

(assert (=> d!882730 (= res!1309093 (= (content!4894 lt!1088146) ((_ map or) (content!4894 (list!12875 (charsOf!3242 (h!41609 (t!239158 (t!239158 tokens!494)))))) (content!4894 (list!12875 (charsOf!3242 separatorToken!241))))))))

(assert (=> d!882730 (= lt!1088146 e!2005153)))

(declare-fun c!540666 () Bool)

(assert (=> d!882730 (= c!540666 ((_ is Nil!36187) (list!12875 (charsOf!3242 (h!41609 (t!239158 (t!239158 tokens!494)))))))))

(assert (=> d!882730 (= (++!8688 (list!12875 (charsOf!3242 (h!41609 (t!239158 (t!239158 tokens!494))))) (list!12875 (charsOf!3242 separatorToken!241))) lt!1088146)))

(declare-fun b!3215971 () Bool)

(assert (=> b!3215971 (= e!2005152 (or (not (= (list!12875 (charsOf!3242 separatorToken!241)) Nil!36187)) (= lt!1088146 (list!12875 (charsOf!3242 (h!41609 (t!239158 (t!239158 tokens!494))))))))))

(assert (= (and d!882730 c!540666) b!3215968))

(assert (= (and d!882730 (not c!540666)) b!3215969))

(assert (= (and d!882730 res!1309093) b!3215970))

(assert (= (and b!3215970 res!1309094) b!3215971))

(declare-fun m!3489473 () Bool)

(assert (=> b!3215970 m!3489473))

(assert (=> b!3215970 m!3484569))

(declare-fun m!3489475 () Bool)

(assert (=> b!3215970 m!3489475))

(assert (=> b!3215970 m!3483469))

(assert (=> b!3215970 m!3488631))

(assert (=> b!3215969 m!3483469))

(declare-fun m!3489477 () Bool)

(assert (=> b!3215969 m!3489477))

(declare-fun m!3489479 () Bool)

(assert (=> d!882730 m!3489479))

(assert (=> d!882730 m!3484569))

(declare-fun m!3489481 () Bool)

(assert (=> d!882730 m!3489481))

(assert (=> d!882730 m!3483469))

(assert (=> d!882730 m!3488639))

(assert (=> b!3213470 d!882730))

(assert (=> b!3213470 d!881094))

(assert (=> b!3213470 d!881106))

(declare-fun b!3215974 () Bool)

(declare-fun res!1309096 () Bool)

(declare-fun e!2005154 () Bool)

(assert (=> b!3215974 (=> (not res!1309096) (not e!2005154))))

(declare-fun lt!1088147 () List!36311)

(assert (=> b!3215974 (= res!1309096 (= (size!27274 lt!1088147) (+ (size!27274 (++!8688 (list!12875 (charsOf!3242 (h!41609 (t!239158 (t!239158 tokens!494))))) (list!12875 (charsOf!3242 separatorToken!241)))) (size!27274 (printWithSeparatorTokenList!160 thiss!18206 (t!239158 (t!239158 (t!239158 tokens!494))) separatorToken!241)))))))

(declare-fun b!3215973 () Bool)

(declare-fun e!2005155 () List!36311)

(assert (=> b!3215973 (= e!2005155 (Cons!36187 (h!41607 (++!8688 (list!12875 (charsOf!3242 (h!41609 (t!239158 (t!239158 tokens!494))))) (list!12875 (charsOf!3242 separatorToken!241)))) (++!8688 (t!239156 (++!8688 (list!12875 (charsOf!3242 (h!41609 (t!239158 (t!239158 tokens!494))))) (list!12875 (charsOf!3242 separatorToken!241)))) (printWithSeparatorTokenList!160 thiss!18206 (t!239158 (t!239158 (t!239158 tokens!494))) separatorToken!241))))))

(declare-fun b!3215972 () Bool)

(assert (=> b!3215972 (= e!2005155 (printWithSeparatorTokenList!160 thiss!18206 (t!239158 (t!239158 (t!239158 tokens!494))) separatorToken!241))))

(declare-fun d!882732 () Bool)

(assert (=> d!882732 e!2005154))

(declare-fun res!1309095 () Bool)

(assert (=> d!882732 (=> (not res!1309095) (not e!2005154))))

(assert (=> d!882732 (= res!1309095 (= (content!4894 lt!1088147) ((_ map or) (content!4894 (++!8688 (list!12875 (charsOf!3242 (h!41609 (t!239158 (t!239158 tokens!494))))) (list!12875 (charsOf!3242 separatorToken!241)))) (content!4894 (printWithSeparatorTokenList!160 thiss!18206 (t!239158 (t!239158 (t!239158 tokens!494))) separatorToken!241)))))))

(assert (=> d!882732 (= lt!1088147 e!2005155)))

(declare-fun c!540667 () Bool)

(assert (=> d!882732 (= c!540667 ((_ is Nil!36187) (++!8688 (list!12875 (charsOf!3242 (h!41609 (t!239158 (t!239158 tokens!494))))) (list!12875 (charsOf!3242 separatorToken!241)))))))

(assert (=> d!882732 (= (++!8688 (++!8688 (list!12875 (charsOf!3242 (h!41609 (t!239158 (t!239158 tokens!494))))) (list!12875 (charsOf!3242 separatorToken!241))) (printWithSeparatorTokenList!160 thiss!18206 (t!239158 (t!239158 (t!239158 tokens!494))) separatorToken!241)) lt!1088147)))

(declare-fun b!3215975 () Bool)

(assert (=> b!3215975 (= e!2005154 (or (not (= (printWithSeparatorTokenList!160 thiss!18206 (t!239158 (t!239158 (t!239158 tokens!494))) separatorToken!241) Nil!36187)) (= lt!1088147 (++!8688 (list!12875 (charsOf!3242 (h!41609 (t!239158 (t!239158 tokens!494))))) (list!12875 (charsOf!3242 separatorToken!241))))))))

(assert (= (and d!882732 c!540667) b!3215972))

(assert (= (and d!882732 (not c!540667)) b!3215973))

(assert (= (and d!882732 res!1309095) b!3215974))

(assert (= (and b!3215974 res!1309096) b!3215975))

(declare-fun m!3489483 () Bool)

(assert (=> b!3215974 m!3489483))

(assert (=> b!3215974 m!3484561))

(declare-fun m!3489485 () Bool)

(assert (=> b!3215974 m!3489485))

(assert (=> b!3215974 m!3484563))

(declare-fun m!3489487 () Bool)

(assert (=> b!3215974 m!3489487))

(assert (=> b!3215973 m!3484563))

(declare-fun m!3489489 () Bool)

(assert (=> b!3215973 m!3489489))

(declare-fun m!3489491 () Bool)

(assert (=> d!882732 m!3489491))

(assert (=> d!882732 m!3484561))

(declare-fun m!3489493 () Bool)

(assert (=> d!882732 m!3489493))

(assert (=> d!882732 m!3484563))

(declare-fun m!3489495 () Bool)

(assert (=> d!882732 m!3489495))

(assert (=> b!3213470 d!882732))

(assert (=> b!3213303 d!881356))

(declare-fun d!882734 () Bool)

(declare-fun lt!1088148 () Int)

(assert (=> d!882734 (>= lt!1088148 0)))

(declare-fun e!2005156 () Int)

(assert (=> d!882734 (= lt!1088148 e!2005156)))

(declare-fun c!540668 () Bool)

(assert (=> d!882734 (= c!540668 ((_ is Nil!36187) (originalCharacters!5940 (_1!20932 (get!11526 lt!1086791)))))))

(assert (=> d!882734 (= (size!27274 (originalCharacters!5940 (_1!20932 (get!11526 lt!1086791)))) lt!1088148)))

(declare-fun b!3215976 () Bool)

(assert (=> b!3215976 (= e!2005156 0)))

(declare-fun b!3215977 () Bool)

(assert (=> b!3215977 (= e!2005156 (+ 1 (size!27274 (t!239156 (originalCharacters!5940 (_1!20932 (get!11526 lt!1086791)))))))))

(assert (= (and d!882734 c!540668) b!3215976))

(assert (= (and d!882734 (not c!540668)) b!3215977))

(declare-fun m!3489497 () Bool)

(assert (=> b!3215977 m!3489497))

(assert (=> b!3213303 d!882734))

(declare-fun bs!542212 () Bool)

(declare-fun d!882736 () Bool)

(assert (= bs!542212 (and d!882736 b!3212794)))

(declare-fun lambda!117609 () Int)

(assert (=> bs!542212 (not (= lambda!117609 lambda!117554))))

(declare-fun bs!542213 () Bool)

(assert (= bs!542213 (and d!882736 b!3212817)))

(assert (=> bs!542213 (= lambda!117609 lambda!117555)))

(declare-fun bs!542214 () Bool)

(assert (= bs!542214 (and d!882736 d!881164)))

(assert (=> bs!542214 (= lambda!117609 lambda!117565)))

(declare-fun b!3216120 () Bool)

(declare-fun e!2005227 () Bool)

(assert (=> b!3216120 (= e!2005227 true)))

(declare-fun b!3216119 () Bool)

(declare-fun e!2005226 () Bool)

(assert (=> b!3216119 (= e!2005226 e!2005227)))

(declare-fun b!3216118 () Bool)

(declare-fun e!2005225 () Bool)

(assert (=> b!3216118 (= e!2005225 e!2005226)))

(assert (=> d!882736 e!2005225))

(assert (= b!3216119 b!3216120))

(assert (= b!3216118 b!3216119))

(assert (= (and d!882736 ((_ is Cons!36188) rules!2135)) b!3216118))

(assert (=> b!3216120 (< (dynLambda!14623 order!18493 (toValue!7314 (transformation!5226 (h!41608 rules!2135)))) (dynLambda!14624 order!18495 lambda!117609))))

(assert (=> b!3216120 (< (dynLambda!14625 order!18497 (toChars!7173 (transformation!5226 (h!41608 rules!2135)))) (dynLambda!14624 order!18495 lambda!117609))))

(assert (=> d!882736 true))

(declare-fun lt!1088161 () Bool)

(assert (=> d!882736 (= lt!1088161 (forall!7396 (list!12877 (seqFromList!3523 tokens!494)) lambda!117609))))

(declare-fun e!2005224 () Bool)

(assert (=> d!882736 (= lt!1088161 e!2005224)))

(declare-fun res!1309122 () Bool)

(assert (=> d!882736 (=> res!1309122 e!2005224)))

(assert (=> d!882736 (= res!1309122 (not ((_ is Cons!36189) (list!12877 (seqFromList!3523 tokens!494)))))))

(assert (=> d!882736 (not (isEmpty!20281 rules!2135))))

(assert (=> d!882736 (= (rulesProduceEachTokenIndividuallyList!1729 thiss!18206 rules!2135 (list!12877 (seqFromList!3523 tokens!494))) lt!1088161)))

(declare-fun b!3216116 () Bool)

(declare-fun e!2005223 () Bool)

(assert (=> b!3216116 (= e!2005224 e!2005223)))

(declare-fun res!1309123 () Bool)

(assert (=> b!3216116 (=> (not res!1309123) (not e!2005223))))

(assert (=> b!3216116 (= res!1309123 (rulesProduceIndividualToken!2307 thiss!18206 rules!2135 (h!41609 (list!12877 (seqFromList!3523 tokens!494)))))))

(declare-fun b!3216117 () Bool)

(assert (=> b!3216117 (= e!2005223 (rulesProduceEachTokenIndividuallyList!1729 thiss!18206 rules!2135 (t!239158 (list!12877 (seqFromList!3523 tokens!494)))))))

(assert (= (and d!882736 (not res!1309122)) b!3216116))

(assert (= (and b!3216116 res!1309123) b!3216117))

(assert (=> d!882736 m!3484925))

(declare-fun m!3489609 () Bool)

(assert (=> d!882736 m!3489609))

(assert (=> d!882736 m!3483411))

(declare-fun m!3489611 () Bool)

(assert (=> b!3216116 m!3489611))

(declare-fun m!3489613 () Bool)

(assert (=> b!3216117 m!3489613))

(assert (=> b!3213680 d!882736))

(assert (=> b!3213680 d!882500))

(assert (=> b!3213330 d!882326))

(declare-fun d!882758 () Bool)

(assert (=> d!882758 (= (isEmpty!20288 (_1!20936 (findLongestMatchInner!833 (regex!5226 (rule!7672 (h!41609 (t!239158 tokens!494)))) Nil!36187 (size!27274 Nil!36187) lt!1086561 lt!1086561 (size!27274 lt!1086561)))) ((_ is Nil!36187) (_1!20936 (findLongestMatchInner!833 (regex!5226 (rule!7672 (h!41609 (t!239158 tokens!494)))) Nil!36187 (size!27274 Nil!36187) lt!1086561 lt!1086561 (size!27274 lt!1086561)))))))

(assert (=> b!3213330 d!882758))

(declare-fun d!882760 () Bool)

(declare-fun lt!1088162 () Int)

(assert (=> d!882760 (= lt!1088162 (size!27274 (list!12875 (seqFromList!3524 (_1!20936 lt!1086801)))))))

(assert (=> d!882760 (= lt!1088162 (size!27283 (c!539813 (seqFromList!3524 (_1!20936 lt!1086801)))))))

(assert (=> d!882760 (= (size!27276 (seqFromList!3524 (_1!20936 lt!1086801))) lt!1088162)))

(declare-fun bs!542215 () Bool)

(assert (= bs!542215 d!882760))

(assert (=> bs!542215 m!3484201))

(declare-fun m!3489615 () Bool)

(assert (=> bs!542215 m!3489615))

(assert (=> bs!542215 m!3489615))

(declare-fun m!3489617 () Bool)

(assert (=> bs!542215 m!3489617))

(declare-fun m!3489619 () Bool)

(assert (=> bs!542215 m!3489619))

(assert (=> b!3213330 d!882760))

(declare-fun d!882762 () Bool)

(assert (=> d!882762 (= (seqFromList!3524 (_1!20936 lt!1086801)) (fromListB!1544 (_1!20936 lt!1086801)))))

(declare-fun bs!542216 () Bool)

(assert (= bs!542216 d!882762))

(declare-fun m!3489621 () Bool)

(assert (=> bs!542216 m!3489621))

(assert (=> b!3213330 d!882762))

(declare-fun bs!542217 () Bool)

(declare-fun d!882764 () Bool)

(assert (= bs!542217 (and d!882764 d!881596)))

(declare-fun lambda!117610 () Int)

(assert (=> bs!542217 (= (and (= (toChars!7173 (transformation!5226 (rule!7672 (h!41609 (t!239158 tokens!494))))) (toChars!7173 (transformation!5226 (rule!7672 (h!41609 tokens!494))))) (= (toValue!7314 (transformation!5226 (rule!7672 (h!41609 (t!239158 tokens!494))))) (toValue!7314 (transformation!5226 (rule!7672 (h!41609 tokens!494)))))) (= lambda!117610 lambda!117581))))

(declare-fun bs!542218 () Bool)

(assert (= bs!542218 (and d!882764 d!881972)))

(assert (=> bs!542218 (= (and (= (toChars!7173 (transformation!5226 (rule!7672 (h!41609 (t!239158 tokens!494))))) (toChars!7173 (transformation!5226 (h!41608 rules!2135)))) (= (toValue!7314 (transformation!5226 (rule!7672 (h!41609 (t!239158 tokens!494))))) (toValue!7314 (transformation!5226 (h!41608 rules!2135))))) (= lambda!117610 lambda!117589))))

(declare-fun bs!542219 () Bool)

(assert (= bs!542219 (and d!882764 d!881996)))

(assert (=> bs!542219 (= (and (= (toChars!7173 (transformation!5226 (rule!7672 (h!41609 (t!239158 tokens!494))))) (toChars!7173 (transformation!5226 (rule!7672 separatorToken!241)))) (= (toValue!7314 (transformation!5226 (rule!7672 (h!41609 (t!239158 tokens!494))))) (toValue!7314 (transformation!5226 (rule!7672 separatorToken!241))))) (= lambda!117610 lambda!117590))))

(declare-fun b!3216121 () Bool)

(declare-fun e!2005228 () Bool)

(assert (=> b!3216121 (= e!2005228 true)))

(assert (=> d!882764 e!2005228))

(assert (= d!882764 b!3216121))

(assert (=> b!3216121 (< (dynLambda!14623 order!18493 (toValue!7314 (transformation!5226 (rule!7672 (h!41609 (t!239158 tokens!494)))))) (dynLambda!14634 order!18505 lambda!117610))))

(assert (=> b!3216121 (< (dynLambda!14625 order!18497 (toChars!7173 (transformation!5226 (rule!7672 (h!41609 (t!239158 tokens!494)))))) (dynLambda!14634 order!18505 lambda!117610))))

(assert (=> d!882764 (= (list!12875 (dynLambda!14631 (toChars!7173 (transformation!5226 (rule!7672 (h!41609 (t!239158 tokens!494))))) (dynLambda!14629 (toValue!7314 (transformation!5226 (rule!7672 (h!41609 (t!239158 tokens!494))))) (seqFromList!3524 (_1!20936 lt!1086801))))) (list!12875 (seqFromList!3524 (_1!20936 lt!1086801))))))

(declare-fun lt!1088163 () Unit!50676)

(assert (=> d!882764 (= lt!1088163 (ForallOf!555 lambda!117610 (seqFromList!3524 (_1!20936 lt!1086801))))))

(assert (=> d!882764 (= (lemmaSemiInverse!1179 (transformation!5226 (rule!7672 (h!41609 (t!239158 tokens!494)))) (seqFromList!3524 (_1!20936 lt!1086801))) lt!1088163)))

(declare-fun b_lambda!88335 () Bool)

(assert (=> (not b_lambda!88335) (not d!882764)))

(declare-fun t!239680 () Bool)

(declare-fun tb!158643 () Bool)

(assert (=> (and b!3212809 (= (toChars!7173 (transformation!5226 (h!41608 rules!2135))) (toChars!7173 (transformation!5226 (rule!7672 (h!41609 (t!239158 tokens!494)))))) t!239680) tb!158643))

(declare-fun e!2005229 () Bool)

(declare-fun b!3216122 () Bool)

(declare-fun tp!1013950 () Bool)

(assert (=> b!3216122 (= e!2005229 (and (inv!49055 (c!539813 (dynLambda!14631 (toChars!7173 (transformation!5226 (rule!7672 (h!41609 (t!239158 tokens!494))))) (dynLambda!14629 (toValue!7314 (transformation!5226 (rule!7672 (h!41609 (t!239158 tokens!494))))) (seqFromList!3524 (_1!20936 lt!1086801)))))) tp!1013950))))

(declare-fun result!201038 () Bool)

(assert (=> tb!158643 (= result!201038 (and (inv!49056 (dynLambda!14631 (toChars!7173 (transformation!5226 (rule!7672 (h!41609 (t!239158 tokens!494))))) (dynLambda!14629 (toValue!7314 (transformation!5226 (rule!7672 (h!41609 (t!239158 tokens!494))))) (seqFromList!3524 (_1!20936 lt!1086801))))) e!2005229))))

(assert (= tb!158643 b!3216122))

(declare-fun m!3489623 () Bool)

(assert (=> b!3216122 m!3489623))

(declare-fun m!3489625 () Bool)

(assert (=> tb!158643 m!3489625))

(assert (=> d!882764 t!239680))

(declare-fun b_and!214701 () Bool)

(assert (= b_and!214685 (and (=> t!239680 result!201038) b_and!214701)))

(declare-fun t!239682 () Bool)

(declare-fun tb!158645 () Bool)

(assert (=> (and b!3212813 (= (toChars!7173 (transformation!5226 (rule!7672 separatorToken!241))) (toChars!7173 (transformation!5226 (rule!7672 (h!41609 (t!239158 tokens!494)))))) t!239682) tb!158645))

(declare-fun result!201040 () Bool)

(assert (= result!201040 result!201038))

(assert (=> d!882764 t!239682))

(declare-fun b_and!214703 () Bool)

(assert (= b_and!214689 (and (=> t!239682 result!201040) b_and!214703)))

(declare-fun t!239684 () Bool)

(declare-fun tb!158647 () Bool)

(assert (=> (and b!3213760 (= (toChars!7173 (transformation!5226 (rule!7672 (h!41609 (t!239158 tokens!494))))) (toChars!7173 (transformation!5226 (rule!7672 (h!41609 (t!239158 tokens!494)))))) t!239684) tb!158647))

(declare-fun result!201042 () Bool)

(assert (= result!201042 result!201038))

(assert (=> d!882764 t!239684))

(declare-fun b_and!214705 () Bool)

(assert (= b_and!214691 (and (=> t!239684 result!201042) b_and!214705)))

(declare-fun tb!158649 () Bool)

(declare-fun t!239686 () Bool)

(assert (=> (and b!3213792 (= (toChars!7173 (transformation!5226 (h!41608 (t!239157 rules!2135)))) (toChars!7173 (transformation!5226 (rule!7672 (h!41609 (t!239158 tokens!494)))))) t!239686) tb!158649))

(declare-fun result!201044 () Bool)

(assert (= result!201044 result!201038))

(assert (=> d!882764 t!239686))

(declare-fun b_and!214707 () Bool)

(assert (= b_and!214683 (and (=> t!239686 result!201044) b_and!214707)))

(declare-fun t!239688 () Bool)

(declare-fun tb!158651 () Bool)

(assert (=> (and b!3212814 (= (toChars!7173 (transformation!5226 (rule!7672 (h!41609 tokens!494)))) (toChars!7173 (transformation!5226 (rule!7672 (h!41609 (t!239158 tokens!494)))))) t!239688) tb!158651))

(declare-fun result!201046 () Bool)

(assert (= result!201046 result!201038))

(assert (=> d!882764 t!239688))

(declare-fun b_and!214709 () Bool)

(assert (= b_and!214687 (and (=> t!239688 result!201046) b_and!214709)))

(declare-fun b_lambda!88337 () Bool)

(assert (=> (not b_lambda!88337) (not d!882764)))

(declare-fun tb!158653 () Bool)

(declare-fun t!239690 () Bool)

(assert (=> (and b!3212809 (= (toValue!7314 (transformation!5226 (h!41608 rules!2135))) (toValue!7314 (transformation!5226 (rule!7672 (h!41609 (t!239158 tokens!494)))))) t!239690) tb!158653))

(declare-fun result!201048 () Bool)

(assert (=> tb!158653 (= result!201048 (inv!21 (dynLambda!14629 (toValue!7314 (transformation!5226 (rule!7672 (h!41609 (t!239158 tokens!494))))) (seqFromList!3524 (_1!20936 lt!1086801)))))))

(declare-fun m!3489627 () Bool)

(assert (=> tb!158653 m!3489627))

(assert (=> d!882764 t!239690))

(declare-fun b_and!214711 () Bool)

(assert (= b_and!214679 (and (=> t!239690 result!201048) b_and!214711)))

(declare-fun t!239692 () Bool)

(declare-fun tb!158655 () Bool)

(assert (=> (and b!3212814 (= (toValue!7314 (transformation!5226 (rule!7672 (h!41609 tokens!494)))) (toValue!7314 (transformation!5226 (rule!7672 (h!41609 (t!239158 tokens!494)))))) t!239692) tb!158655))

(declare-fun result!201050 () Bool)

(assert (= result!201050 result!201048))

(assert (=> d!882764 t!239692))

(declare-fun b_and!214713 () Bool)

(assert (= b_and!214675 (and (=> t!239692 result!201050) b_and!214713)))

(declare-fun tb!158657 () Bool)

(declare-fun t!239694 () Bool)

(assert (=> (and b!3213792 (= (toValue!7314 (transformation!5226 (h!41608 (t!239157 rules!2135)))) (toValue!7314 (transformation!5226 (rule!7672 (h!41609 (t!239158 tokens!494)))))) t!239694) tb!158657))

(declare-fun result!201052 () Bool)

(assert (= result!201052 result!201048))

(assert (=> d!882764 t!239694))

(declare-fun b_and!214715 () Bool)

(assert (= b_and!214673 (and (=> t!239694 result!201052) b_and!214715)))

(declare-fun tb!158659 () Bool)

(declare-fun t!239696 () Bool)

(assert (=> (and b!3212813 (= (toValue!7314 (transformation!5226 (rule!7672 separatorToken!241))) (toValue!7314 (transformation!5226 (rule!7672 (h!41609 (t!239158 tokens!494)))))) t!239696) tb!158659))

(declare-fun result!201054 () Bool)

(assert (= result!201054 result!201048))

(assert (=> d!882764 t!239696))

(declare-fun b_and!214717 () Bool)

(assert (= b_and!214681 (and (=> t!239696 result!201054) b_and!214717)))

(declare-fun t!239698 () Bool)

(declare-fun tb!158661 () Bool)

(assert (=> (and b!3213760 (= (toValue!7314 (transformation!5226 (rule!7672 (h!41609 (t!239158 tokens!494))))) (toValue!7314 (transformation!5226 (rule!7672 (h!41609 (t!239158 tokens!494)))))) t!239698) tb!158661))

(declare-fun result!201056 () Bool)

(assert (= result!201056 result!201048))

(assert (=> d!882764 t!239698))

(declare-fun b_and!214719 () Bool)

(assert (= b_and!214677 (and (=> t!239698 result!201056) b_and!214719)))

(assert (=> d!882764 m!3484201))

(declare-fun m!3489629 () Bool)

(assert (=> d!882764 m!3489629))

(declare-fun m!3489631 () Bool)

(assert (=> d!882764 m!3489631))

(declare-fun m!3489633 () Bool)

(assert (=> d!882764 m!3489633))

(assert (=> d!882764 m!3484201))

(assert (=> d!882764 m!3489615))

(assert (=> d!882764 m!3484201))

(declare-fun m!3489635 () Bool)

(assert (=> d!882764 m!3489635))

(assert (=> d!882764 m!3489635))

(assert (=> d!882764 m!3489631))

(assert (=> b!3213330 d!882764))

(assert (=> b!3213330 d!881602))

(declare-fun d!882766 () Bool)

(declare-fun e!2005231 () Bool)

(assert (=> d!882766 e!2005231))

(declare-fun res!1309124 () Bool)

(assert (=> d!882766 (=> res!1309124 e!2005231)))

(assert (=> d!882766 (= res!1309124 (isEmpty!20288 (_1!20936 (findLongestMatchInner!833 (regex!5226 (rule!7672 (h!41609 (t!239158 tokens!494)))) Nil!36187 (size!27274 Nil!36187) lt!1086561 lt!1086561 (size!27274 lt!1086561)))))))

(declare-fun lt!1088164 () Unit!50676)

(assert (=> d!882766 (= lt!1088164 (choose!18769 (regex!5226 (rule!7672 (h!41609 (t!239158 tokens!494)))) lt!1086561))))

(assert (=> d!882766 (validRegex!4554 (regex!5226 (rule!7672 (h!41609 (t!239158 tokens!494)))))))

(assert (=> d!882766 (= (longestMatchIsAcceptedByMatchOrIsEmpty!806 (regex!5226 (rule!7672 (h!41609 (t!239158 tokens!494)))) lt!1086561) lt!1088164)))

(declare-fun b!3216123 () Bool)

(assert (=> b!3216123 (= e!2005231 (matchR!4619 (regex!5226 (rule!7672 (h!41609 (t!239158 tokens!494)))) (_1!20936 (findLongestMatchInner!833 (regex!5226 (rule!7672 (h!41609 (t!239158 tokens!494)))) Nil!36187 (size!27274 Nil!36187) lt!1086561 lt!1086561 (size!27274 lt!1086561)))))))

(assert (= (and d!882766 (not res!1309124)) b!3216123))

(declare-fun m!3489637 () Bool)

(assert (=> d!882766 m!3489637))

(assert (=> d!882766 m!3484113))

(assert (=> d!882766 m!3483299))

(assert (=> d!882766 m!3484197))

(assert (=> d!882766 m!3483299))

(assert (=> d!882766 m!3484113))

(assert (=> d!882766 m!3487075))

(assert (=> d!882766 m!3484209))

(assert (=> b!3216123 m!3484113))

(assert (=> b!3216123 m!3483299))

(assert (=> b!3216123 m!3484113))

(assert (=> b!3216123 m!3483299))

(assert (=> b!3216123 m!3484197))

(assert (=> b!3216123 m!3484199))

(assert (=> b!3213330 d!882766))

(declare-fun d!882768 () Bool)

(assert (=> d!882768 (= (apply!8208 (transformation!5226 (rule!7672 (h!41609 (t!239158 tokens!494)))) (seqFromList!3524 (_1!20936 lt!1086801))) (dynLambda!14629 (toValue!7314 (transformation!5226 (rule!7672 (h!41609 (t!239158 tokens!494))))) (seqFromList!3524 (_1!20936 lt!1086801))))))

(declare-fun b_lambda!88339 () Bool)

(assert (=> (not b_lambda!88339) (not d!882768)))

(assert (=> d!882768 t!239696))

(declare-fun b_and!214721 () Bool)

(assert (= b_and!214717 (and (=> t!239696 result!201054) b_and!214721)))

(assert (=> d!882768 t!239690))

(declare-fun b_and!214723 () Bool)

(assert (= b_and!214711 (and (=> t!239690 result!201048) b_and!214723)))

(assert (=> d!882768 t!239694))

(declare-fun b_and!214725 () Bool)

(assert (= b_and!214715 (and (=> t!239694 result!201052) b_and!214725)))

(assert (=> d!882768 t!239698))

(declare-fun b_and!214727 () Bool)

(assert (= b_and!214719 (and (=> t!239698 result!201056) b_and!214727)))

(assert (=> d!882768 t!239692))

(declare-fun b_and!214729 () Bool)

(assert (= b_and!214713 (and (=> t!239692 result!201050) b_and!214729)))

(assert (=> d!882768 m!3484201))

(assert (=> d!882768 m!3489635))

(assert (=> b!3213330 d!882768))

(assert (=> b!3213330 d!880990))

(declare-fun b!3216126 () Bool)

(declare-fun res!1309126 () Bool)

(declare-fun e!2005232 () Bool)

(assert (=> b!3216126 (=> (not res!1309126) (not e!2005232))))

(declare-fun lt!1088165 () List!36311)

(assert (=> b!3216126 (= res!1309126 (= (size!27274 lt!1088165) (+ (size!27274 (t!239156 lt!1086557)) (size!27274 lt!1086532))))))

(declare-fun b!3216125 () Bool)

(declare-fun e!2005233 () List!36311)

(assert (=> b!3216125 (= e!2005233 (Cons!36187 (h!41607 (t!239156 lt!1086557)) (++!8688 (t!239156 (t!239156 lt!1086557)) lt!1086532)))))

(declare-fun b!3216124 () Bool)

(assert (=> b!3216124 (= e!2005233 lt!1086532)))

(declare-fun d!882770 () Bool)

(assert (=> d!882770 e!2005232))

(declare-fun res!1309125 () Bool)

(assert (=> d!882770 (=> (not res!1309125) (not e!2005232))))

(assert (=> d!882770 (= res!1309125 (= (content!4894 lt!1088165) ((_ map or) (content!4894 (t!239156 lt!1086557)) (content!4894 lt!1086532))))))

(assert (=> d!882770 (= lt!1088165 e!2005233)))

(declare-fun c!540675 () Bool)

(assert (=> d!882770 (= c!540675 ((_ is Nil!36187) (t!239156 lt!1086557)))))

(assert (=> d!882770 (= (++!8688 (t!239156 lt!1086557) lt!1086532) lt!1088165)))

(declare-fun b!3216127 () Bool)

(assert (=> b!3216127 (= e!2005232 (or (not (= lt!1086532 Nil!36187)) (= lt!1088165 (t!239156 lt!1086557))))))

(assert (= (and d!882770 c!540675) b!3216124))

(assert (= (and d!882770 (not c!540675)) b!3216125))

(assert (= (and d!882770 res!1309125) b!3216126))

(assert (= (and b!3216126 res!1309126) b!3216127))

(declare-fun m!3489639 () Bool)

(assert (=> b!3216126 m!3489639))

(assert (=> b!3216126 m!3485765))

(assert (=> b!3216126 m!3484553))

(declare-fun m!3489641 () Bool)

(assert (=> b!3216125 m!3489641))

(declare-fun m!3489643 () Bool)

(assert (=> d!882770 m!3489643))

(assert (=> d!882770 m!3486387))

(assert (=> d!882770 m!3484559))

(assert (=> b!3213467 d!882770))

(assert (=> b!3213196 d!882176))

(assert (=> b!3213196 d!882178))

(declare-fun b!3216128 () Bool)

(declare-fun e!2005234 () Option!7153)

(declare-fun e!2005236 () Option!7153)

(assert (=> b!3216128 (= e!2005234 e!2005236)))

(declare-fun c!540676 () Bool)

(assert (=> b!3216128 (= c!540676 (and ((_ is Cons!36188) (t!239157 rules!2135)) (not (= (tag!5754 (h!41608 (t!239157 rules!2135))) (tag!5754 (rule!7672 (h!41609 tokens!494)))))))))

(declare-fun b!3216129 () Bool)

(declare-fun e!2005235 () Bool)

(declare-fun lt!1088166 () Option!7153)

(assert (=> b!3216129 (= e!2005235 (= (tag!5754 (get!11524 lt!1088166)) (tag!5754 (rule!7672 (h!41609 tokens!494)))))))

(declare-fun b!3216130 () Bool)

(declare-fun lt!1088167 () Unit!50676)

(declare-fun lt!1088168 () Unit!50676)

(assert (=> b!3216130 (= lt!1088167 lt!1088168)))

(assert (=> b!3216130 (rulesInvariant!4212 thiss!18206 (t!239157 (t!239157 rules!2135)))))

(assert (=> b!3216130 (= lt!1088168 (lemmaInvariantOnRulesThenOnTail!351 thiss!18206 (h!41608 (t!239157 rules!2135)) (t!239157 (t!239157 rules!2135))))))

(assert (=> b!3216130 (= e!2005236 (getRuleFromTag!931 thiss!18206 (t!239157 (t!239157 rules!2135)) (tag!5754 (rule!7672 (h!41609 tokens!494)))))))

(declare-fun b!3216131 () Bool)

(assert (=> b!3216131 (= e!2005236 None!7152)))

(declare-fun d!882772 () Bool)

(declare-fun e!2005237 () Bool)

(assert (=> d!882772 e!2005237))

(declare-fun res!1309128 () Bool)

(assert (=> d!882772 (=> res!1309128 e!2005237)))

(assert (=> d!882772 (= res!1309128 (isEmpty!20283 lt!1088166))))

(assert (=> d!882772 (= lt!1088166 e!2005234)))

(declare-fun c!540677 () Bool)

(assert (=> d!882772 (= c!540677 (and ((_ is Cons!36188) (t!239157 rules!2135)) (= (tag!5754 (h!41608 (t!239157 rules!2135))) (tag!5754 (rule!7672 (h!41609 tokens!494))))))))

(assert (=> d!882772 (rulesInvariant!4212 thiss!18206 (t!239157 rules!2135))))

(assert (=> d!882772 (= (getRuleFromTag!931 thiss!18206 (t!239157 rules!2135) (tag!5754 (rule!7672 (h!41609 tokens!494)))) lt!1088166)))

(declare-fun b!3216132 () Bool)

(assert (=> b!3216132 (= e!2005237 e!2005235)))

(declare-fun res!1309127 () Bool)

(assert (=> b!3216132 (=> (not res!1309127) (not e!2005235))))

(assert (=> b!3216132 (= res!1309127 (contains!6470 (t!239157 rules!2135) (get!11524 lt!1088166)))))

(declare-fun b!3216133 () Bool)

(assert (=> b!3216133 (= e!2005234 (Some!7152 (h!41608 (t!239157 rules!2135))))))

(assert (= (and d!882772 c!540677) b!3216133))

(assert (= (and d!882772 (not c!540677)) b!3216128))

(assert (= (and b!3216128 c!540676) b!3216130))

(assert (= (and b!3216128 (not c!540676)) b!3216131))

(assert (= (and d!882772 (not res!1309128)) b!3216132))

(assert (= (and b!3216132 res!1309127) b!3216129))

(declare-fun m!3489645 () Bool)

(assert (=> b!3216129 m!3489645))

(assert (=> b!3216130 m!3487799))

(assert (=> b!3216130 m!3487801))

(declare-fun m!3489647 () Bool)

(assert (=> b!3216130 m!3489647))

(declare-fun m!3489649 () Bool)

(assert (=> d!882772 m!3489649))

(assert (=> d!882772 m!3483855))

(assert (=> b!3216132 m!3489645))

(assert (=> b!3216132 m!3489645))

(declare-fun m!3489651 () Bool)

(assert (=> b!3216132 m!3489651))

(assert (=> b!3213196 d!882772))

(assert (=> b!3213441 d!882450))

(assert (=> b!3213097 d!882176))

(assert (=> b!3213097 d!882178))

(declare-fun b!3216134 () Bool)

(declare-fun e!2005238 () Option!7153)

(declare-fun e!2005240 () Option!7153)

(assert (=> b!3216134 (= e!2005238 e!2005240)))

(declare-fun c!540678 () Bool)

(assert (=> b!3216134 (= c!540678 (and ((_ is Cons!36188) (t!239157 rules!2135)) (not (= (tag!5754 (h!41608 (t!239157 rules!2135))) (tag!5754 (rule!7672 (h!41609 (t!239158 tokens!494))))))))))

(declare-fun b!3216135 () Bool)

(declare-fun e!2005239 () Bool)

(declare-fun lt!1088169 () Option!7153)

(assert (=> b!3216135 (= e!2005239 (= (tag!5754 (get!11524 lt!1088169)) (tag!5754 (rule!7672 (h!41609 (t!239158 tokens!494))))))))

(declare-fun b!3216136 () Bool)

(declare-fun lt!1088170 () Unit!50676)

(declare-fun lt!1088171 () Unit!50676)

(assert (=> b!3216136 (= lt!1088170 lt!1088171)))

(assert (=> b!3216136 (rulesInvariant!4212 thiss!18206 (t!239157 (t!239157 rules!2135)))))

(assert (=> b!3216136 (= lt!1088171 (lemmaInvariantOnRulesThenOnTail!351 thiss!18206 (h!41608 (t!239157 rules!2135)) (t!239157 (t!239157 rules!2135))))))

(assert (=> b!3216136 (= e!2005240 (getRuleFromTag!931 thiss!18206 (t!239157 (t!239157 rules!2135)) (tag!5754 (rule!7672 (h!41609 (t!239158 tokens!494))))))))

(declare-fun b!3216137 () Bool)

(assert (=> b!3216137 (= e!2005240 None!7152)))

(declare-fun d!882774 () Bool)

(declare-fun e!2005241 () Bool)

(assert (=> d!882774 e!2005241))

(declare-fun res!1309130 () Bool)

(assert (=> d!882774 (=> res!1309130 e!2005241)))

(assert (=> d!882774 (= res!1309130 (isEmpty!20283 lt!1088169))))

(assert (=> d!882774 (= lt!1088169 e!2005238)))

(declare-fun c!540679 () Bool)

(assert (=> d!882774 (= c!540679 (and ((_ is Cons!36188) (t!239157 rules!2135)) (= (tag!5754 (h!41608 (t!239157 rules!2135))) (tag!5754 (rule!7672 (h!41609 (t!239158 tokens!494)))))))))

(assert (=> d!882774 (rulesInvariant!4212 thiss!18206 (t!239157 rules!2135))))

(assert (=> d!882774 (= (getRuleFromTag!931 thiss!18206 (t!239157 rules!2135) (tag!5754 (rule!7672 (h!41609 (t!239158 tokens!494))))) lt!1088169)))

(declare-fun b!3216138 () Bool)

(assert (=> b!3216138 (= e!2005241 e!2005239)))

(declare-fun res!1309129 () Bool)

(assert (=> b!3216138 (=> (not res!1309129) (not e!2005239))))

(assert (=> b!3216138 (= res!1309129 (contains!6470 (t!239157 rules!2135) (get!11524 lt!1088169)))))

(declare-fun b!3216139 () Bool)

(assert (=> b!3216139 (= e!2005238 (Some!7152 (h!41608 (t!239157 rules!2135))))))

(assert (= (and d!882774 c!540679) b!3216139))

(assert (= (and d!882774 (not c!540679)) b!3216134))

(assert (= (and b!3216134 c!540678) b!3216136))

(assert (= (and b!3216134 (not c!540678)) b!3216137))

(assert (= (and d!882774 (not res!1309130)) b!3216138))

(assert (= (and b!3216138 res!1309129) b!3216135))

(declare-fun m!3489653 () Bool)

(assert (=> b!3216135 m!3489653))

(assert (=> b!3216136 m!3487799))

(assert (=> b!3216136 m!3487801))

(declare-fun m!3489655 () Bool)

(assert (=> b!3216136 m!3489655))

(declare-fun m!3489657 () Bool)

(assert (=> d!882774 m!3489657))

(assert (=> d!882774 m!3483855))

(assert (=> b!3216138 m!3489653))

(assert (=> b!3216138 m!3489653))

(declare-fun m!3489659 () Bool)

(assert (=> b!3216138 m!3489659))

(assert (=> b!3213097 d!882774))

(declare-fun d!882776 () Bool)

(declare-fun c!540680 () Bool)

(assert (=> d!882776 (= c!540680 ((_ is Nil!36187) lt!1086868))))

(declare-fun e!2005242 () (InoxSet C!20156))

(assert (=> d!882776 (= (content!4894 lt!1086868) e!2005242)))

(declare-fun b!3216140 () Bool)

(assert (=> b!3216140 (= e!2005242 ((as const (Array C!20156 Bool)) false))))

(declare-fun b!3216141 () Bool)

(assert (=> b!3216141 (= e!2005242 ((_ map or) (store ((as const (Array C!20156 Bool)) false) (h!41607 lt!1086868) true) (content!4894 (t!239156 lt!1086868))))))

(assert (= (and d!882776 c!540680) b!3216140))

(assert (= (and d!882776 (not c!540680)) b!3216141))

(declare-fun m!3489661 () Bool)

(assert (=> b!3216141 m!3489661))

(declare-fun m!3489663 () Bool)

(assert (=> b!3216141 m!3489663))

(assert (=> d!881098 d!882776))

(declare-fun d!882778 () Bool)

(declare-fun c!540681 () Bool)

(assert (=> d!882778 (= c!540681 ((_ is Nil!36187) (++!8688 lt!1086561 lt!1086557)))))

(declare-fun e!2005243 () (InoxSet C!20156))

(assert (=> d!882778 (= (content!4894 (++!8688 lt!1086561 lt!1086557)) e!2005243)))

(declare-fun b!3216142 () Bool)

(assert (=> b!3216142 (= e!2005243 ((as const (Array C!20156 Bool)) false))))

(declare-fun b!3216143 () Bool)

(assert (=> b!3216143 (= e!2005243 ((_ map or) (store ((as const (Array C!20156 Bool)) false) (h!41607 (++!8688 lt!1086561 lt!1086557)) true) (content!4894 (t!239156 (++!8688 lt!1086561 lt!1086557)))))))

(assert (= (and d!882778 c!540681) b!3216142))

(assert (= (and d!882778 (not c!540681)) b!3216143))

(declare-fun m!3489665 () Bool)

(assert (=> b!3216143 m!3489665))

(assert (=> b!3216143 m!3488863))

(assert (=> d!881098 d!882778))

(declare-fun c!540682 () Bool)

(declare-fun d!882780 () Bool)

(assert (=> d!882780 (= c!540682 ((_ is Nil!36187) (printWithSeparatorTokenList!160 thiss!18206 (t!239158 (t!239158 tokens!494)) separatorToken!241)))))

(declare-fun e!2005244 () (InoxSet C!20156))

(assert (=> d!882780 (= (content!4894 (printWithSeparatorTokenList!160 thiss!18206 (t!239158 (t!239158 tokens!494)) separatorToken!241)) e!2005244)))

(declare-fun b!3216144 () Bool)

(assert (=> b!3216144 (= e!2005244 ((as const (Array C!20156 Bool)) false))))

(declare-fun b!3216145 () Bool)

(assert (=> b!3216145 (= e!2005244 ((_ map or) (store ((as const (Array C!20156 Bool)) false) (h!41607 (printWithSeparatorTokenList!160 thiss!18206 (t!239158 (t!239158 tokens!494)) separatorToken!241)) true) (content!4894 (t!239156 (printWithSeparatorTokenList!160 thiss!18206 (t!239158 (t!239158 tokens!494)) separatorToken!241)))))))

(assert (= (and d!882780 c!540682) b!3216144))

(assert (= (and d!882780 (not c!540682)) b!3216145))

(declare-fun m!3489667 () Bool)

(assert (=> b!3216145 m!3489667))

(declare-fun m!3489669 () Bool)

(assert (=> b!3216145 m!3489669))

(assert (=> d!881098 d!882780))

(declare-fun d!882782 () Bool)

(assert (=> d!882782 (= (maxPrefixOneRule!1594 thiss!18206 (rule!7672 (h!41609 (t!239158 tokens!494))) lt!1086561) (Some!7153 (tuple2!35597 (Token!9819 (apply!8208 (transformation!5226 (rule!7672 (h!41609 (t!239158 tokens!494)))) (seqFromList!3524 lt!1086561)) (rule!7672 (h!41609 (t!239158 tokens!494))) (size!27274 lt!1086561) lt!1086561) Nil!36187)))))

(assert (=> d!882782 true))

(declare-fun _$59!395 () Unit!50676)

(assert (=> d!882782 (= (choose!18754 thiss!18206 rules!2135 lt!1086561 lt!1086561 Nil!36187 (rule!7672 (h!41609 (t!239158 tokens!494)))) _$59!395)))

(declare-fun bs!542220 () Bool)

(assert (= bs!542220 d!882782))

(assert (=> bs!542220 m!3483285))

(assert (=> bs!542220 m!3483333))

(assert (=> bs!542220 m!3483333))

(assert (=> bs!542220 m!3483335))

(assert (=> bs!542220 m!3483299))

(assert (=> d!881020 d!882782))

(assert (=> d!881020 d!880974))

(assert (=> d!881020 d!880990))

(assert (=> d!881020 d!881016))

(assert (=> d!881020 d!881226))

(assert (=> d!881020 d!881024))

(declare-fun bs!542221 () Bool)

(declare-fun d!882784 () Bool)

(assert (= bs!542221 (and d!882784 d!881596)))

(declare-fun lambda!117611 () Int)

(assert (=> bs!542221 (= lambda!117611 lambda!117581)))

(declare-fun bs!542222 () Bool)

(assert (= bs!542222 (and d!882784 d!881972)))

(assert (=> bs!542222 (= (and (= (toChars!7173 (transformation!5226 (rule!7672 (h!41609 tokens!494)))) (toChars!7173 (transformation!5226 (h!41608 rules!2135)))) (= (toValue!7314 (transformation!5226 (rule!7672 (h!41609 tokens!494)))) (toValue!7314 (transformation!5226 (h!41608 rules!2135))))) (= lambda!117611 lambda!117589))))

(declare-fun bs!542223 () Bool)

(assert (= bs!542223 (and d!882784 d!881996)))

(assert (=> bs!542223 (= (and (= (toChars!7173 (transformation!5226 (rule!7672 (h!41609 tokens!494)))) (toChars!7173 (transformation!5226 (rule!7672 separatorToken!241)))) (= (toValue!7314 (transformation!5226 (rule!7672 (h!41609 tokens!494)))) (toValue!7314 (transformation!5226 (rule!7672 separatorToken!241))))) (= lambda!117611 lambda!117590))))

(declare-fun bs!542224 () Bool)

(assert (= bs!542224 (and d!882784 d!882764)))

(assert (=> bs!542224 (= (and (= (toChars!7173 (transformation!5226 (rule!7672 (h!41609 tokens!494)))) (toChars!7173 (transformation!5226 (rule!7672 (h!41609 (t!239158 tokens!494)))))) (= (toValue!7314 (transformation!5226 (rule!7672 (h!41609 tokens!494)))) (toValue!7314 (transformation!5226 (rule!7672 (h!41609 (t!239158 tokens!494))))))) (= lambda!117611 lambda!117610))))

(assert (=> d!882784 true))

(assert (=> d!882784 (< (dynLambda!14625 order!18497 (toChars!7173 (transformation!5226 (rule!7672 (h!41609 tokens!494))))) (dynLambda!14634 order!18505 lambda!117611))))

(assert (=> d!882784 true))

(assert (=> d!882784 (< (dynLambda!14623 order!18493 (toValue!7314 (transformation!5226 (rule!7672 (h!41609 tokens!494))))) (dynLambda!14634 order!18505 lambda!117611))))

(assert (=> d!882784 (= (semiInverseModEq!2157 (toChars!7173 (transformation!5226 (rule!7672 (h!41609 tokens!494)))) (toValue!7314 (transformation!5226 (rule!7672 (h!41609 tokens!494))))) (Forall!1269 lambda!117611))))

(declare-fun bs!542225 () Bool)

(assert (= bs!542225 d!882784))

(declare-fun m!3489671 () Bool)

(assert (=> bs!542225 m!3489671))

(assert (=> d!881236 d!882784))

(declare-fun d!882786 () Bool)

(assert (=> d!882786 (= (inv!17 (value!169401 separatorToken!241)) (= (charsToBigInt!1 (text!38640 (value!169401 separatorToken!241))) (value!169393 (value!169401 separatorToken!241))))))

(declare-fun bs!542226 () Bool)

(assert (= bs!542226 d!882786))

(declare-fun m!3489673 () Bool)

(assert (=> bs!542226 m!3489673))

(assert (=> b!3213728 d!882786))

(declare-fun d!882788 () Bool)

(declare-fun lt!1088172 () Int)

(assert (=> d!882788 (>= lt!1088172 0)))

(declare-fun e!2005245 () Int)

(assert (=> d!882788 (= lt!1088172 e!2005245)))

(declare-fun c!540683 () Bool)

(assert (=> d!882788 (= c!540683 ((_ is Nil!36187) lt!1086825))))

(assert (=> d!882788 (= (size!27274 lt!1086825) lt!1088172)))

(declare-fun b!3216146 () Bool)

(assert (=> b!3216146 (= e!2005245 0)))

(declare-fun b!3216147 () Bool)

(assert (=> b!3216147 (= e!2005245 (+ 1 (size!27274 (t!239156 lt!1086825))))))

(assert (= (and d!882788 c!540683) b!3216146))

(assert (= (and d!882788 (not c!540683)) b!3216147))

(declare-fun m!3489675 () Bool)

(assert (=> b!3216147 m!3489675))

(assert (=> b!3213361 d!882788))

(assert (=> b!3213361 d!880984))

(declare-fun d!882790 () Bool)

(declare-fun lt!1088173 () Int)

(assert (=> d!882790 (>= lt!1088173 0)))

(declare-fun e!2005246 () Int)

(assert (=> d!882790 (= lt!1088173 e!2005246)))

(declare-fun c!540684 () Bool)

(assert (=> d!882790 (= c!540684 ((_ is Nil!36187) lt!1086531))))

(assert (=> d!882790 (= (size!27274 lt!1086531) lt!1088173)))

(declare-fun b!3216148 () Bool)

(assert (=> b!3216148 (= e!2005246 0)))

(declare-fun b!3216149 () Bool)

(assert (=> b!3216149 (= e!2005246 (+ 1 (size!27274 (t!239156 lt!1086531))))))

(assert (= (and d!882790 c!540684) b!3216148))

(assert (= (and d!882790 (not c!540684)) b!3216149))

(declare-fun m!3489677 () Bool)

(assert (=> b!3216149 m!3489677))

(assert (=> b!3213361 d!882790))

(declare-fun d!882792 () Bool)

(declare-fun lt!1088174 () Bool)

(assert (=> d!882792 (= lt!1088174 (isEmpty!20288 (list!12875 (_2!20931 lt!1086874))))))

(assert (=> d!882792 (= lt!1088174 (isEmpty!20289 (c!539813 (_2!20931 lt!1086874))))))

(assert (=> d!882792 (= (isEmpty!20279 (_2!20931 lt!1086874)) lt!1088174)))

(declare-fun bs!542227 () Bool)

(assert (= bs!542227 d!882792))

(declare-fun m!3489679 () Bool)

(assert (=> bs!542227 m!3489679))

(assert (=> bs!542227 m!3489679))

(declare-fun m!3489681 () Bool)

(assert (=> bs!542227 m!3489681))

(declare-fun m!3489683 () Bool)

(assert (=> bs!542227 m!3489683))

(assert (=> b!3213484 d!882792))

(declare-fun b!3216152 () Bool)

(declare-fun e!2005249 () Bool)

(assert (=> b!3216152 (= e!2005249 true)))

(declare-fun b!3216151 () Bool)

(declare-fun e!2005248 () Bool)

(assert (=> b!3216151 (= e!2005248 e!2005249)))

(declare-fun b!3216150 () Bool)

(declare-fun e!2005247 () Bool)

(assert (=> b!3216150 (= e!2005247 e!2005248)))

(assert (=> b!3213761 e!2005247))

(assert (= b!3216151 b!3216152))

(assert (= b!3216150 b!3216151))

(assert (= (and b!3213761 ((_ is Cons!36188) (t!239157 (t!239157 rules!2135)))) b!3216150))

(assert (=> b!3216152 (< (dynLambda!14623 order!18493 (toValue!7314 (transformation!5226 (h!41608 (t!239157 (t!239157 rules!2135)))))) (dynLambda!14624 order!18495 lambda!117555))))

(assert (=> b!3216152 (< (dynLambda!14625 order!18497 (toChars!7173 (transformation!5226 (h!41608 (t!239157 (t!239157 rules!2135)))))) (dynLambda!14624 order!18495 lambda!117555))))

(declare-fun e!2005250 () Bool)

(assert (=> b!3213796 (= tp!1013810 e!2005250)))

(declare-fun b!3216153 () Bool)

(assert (=> b!3216153 (= e!2005250 tp_is_empty!17301)))

(declare-fun b!3216155 () Bool)

(declare-fun tp!1013953 () Bool)

(assert (=> b!3216155 (= e!2005250 tp!1013953)))

(declare-fun b!3216154 () Bool)

(declare-fun tp!1013955 () Bool)

(declare-fun tp!1013952 () Bool)

(assert (=> b!3216154 (= e!2005250 (and tp!1013955 tp!1013952))))

(declare-fun b!3216156 () Bool)

(declare-fun tp!1013951 () Bool)

(declare-fun tp!1013954 () Bool)

(assert (=> b!3216156 (= e!2005250 (and tp!1013951 tp!1013954))))

(assert (= (and b!3213796 ((_ is ElementMatch!9985) (regOne!20483 (regex!5226 (rule!7672 (h!41609 tokens!494)))))) b!3216153))

(assert (= (and b!3213796 ((_ is Concat!15441) (regOne!20483 (regex!5226 (rule!7672 (h!41609 tokens!494)))))) b!3216154))

(assert (= (and b!3213796 ((_ is Star!9985) (regOne!20483 (regex!5226 (rule!7672 (h!41609 tokens!494)))))) b!3216155))

(assert (= (and b!3213796 ((_ is Union!9985) (regOne!20483 (regex!5226 (rule!7672 (h!41609 tokens!494)))))) b!3216156))

(declare-fun e!2005251 () Bool)

(assert (=> b!3213796 (= tp!1013813 e!2005251)))

(declare-fun b!3216157 () Bool)

(assert (=> b!3216157 (= e!2005251 tp_is_empty!17301)))

(declare-fun b!3216159 () Bool)

(declare-fun tp!1013958 () Bool)

(assert (=> b!3216159 (= e!2005251 tp!1013958)))

(declare-fun b!3216158 () Bool)

(declare-fun tp!1013960 () Bool)

(declare-fun tp!1013957 () Bool)

(assert (=> b!3216158 (= e!2005251 (and tp!1013960 tp!1013957))))

(declare-fun b!3216160 () Bool)

(declare-fun tp!1013956 () Bool)

(declare-fun tp!1013959 () Bool)

(assert (=> b!3216160 (= e!2005251 (and tp!1013956 tp!1013959))))

(assert (= (and b!3213796 ((_ is ElementMatch!9985) (regTwo!20483 (regex!5226 (rule!7672 (h!41609 tokens!494)))))) b!3216157))

(assert (= (and b!3213796 ((_ is Concat!15441) (regTwo!20483 (regex!5226 (rule!7672 (h!41609 tokens!494)))))) b!3216158))

(assert (= (and b!3213796 ((_ is Star!9985) (regTwo!20483 (regex!5226 (rule!7672 (h!41609 tokens!494)))))) b!3216159))

(assert (= (and b!3213796 ((_ is Union!9985) (regTwo!20483 (regex!5226 (rule!7672 (h!41609 tokens!494)))))) b!3216160))

(declare-fun e!2005252 () Bool)

(assert (=> b!3213777 (= tp!1013788 e!2005252)))

(declare-fun b!3216161 () Bool)

(assert (=> b!3216161 (= e!2005252 tp_is_empty!17301)))

(declare-fun b!3216163 () Bool)

(declare-fun tp!1013963 () Bool)

(assert (=> b!3216163 (= e!2005252 tp!1013963)))

(declare-fun b!3216162 () Bool)

(declare-fun tp!1013965 () Bool)

(declare-fun tp!1013962 () Bool)

(assert (=> b!3216162 (= e!2005252 (and tp!1013965 tp!1013962))))

(declare-fun b!3216164 () Bool)

(declare-fun tp!1013961 () Bool)

(declare-fun tp!1013964 () Bool)

(assert (=> b!3216164 (= e!2005252 (and tp!1013961 tp!1013964))))

(assert (= (and b!3213777 ((_ is ElementMatch!9985) (regOne!20483 (regex!5226 (rule!7672 separatorToken!241))))) b!3216161))

(assert (= (and b!3213777 ((_ is Concat!15441) (regOne!20483 (regex!5226 (rule!7672 separatorToken!241))))) b!3216162))

(assert (= (and b!3213777 ((_ is Star!9985) (regOne!20483 (regex!5226 (rule!7672 separatorToken!241))))) b!3216163))

(assert (= (and b!3213777 ((_ is Union!9985) (regOne!20483 (regex!5226 (rule!7672 separatorToken!241))))) b!3216164))

(declare-fun e!2005253 () Bool)

(assert (=> b!3213777 (= tp!1013791 e!2005253)))

(declare-fun b!3216165 () Bool)

(assert (=> b!3216165 (= e!2005253 tp_is_empty!17301)))

(declare-fun b!3216167 () Bool)

(declare-fun tp!1013968 () Bool)

(assert (=> b!3216167 (= e!2005253 tp!1013968)))

(declare-fun b!3216166 () Bool)

(declare-fun tp!1013970 () Bool)

(declare-fun tp!1013967 () Bool)

(assert (=> b!3216166 (= e!2005253 (and tp!1013970 tp!1013967))))

(declare-fun b!3216168 () Bool)

(declare-fun tp!1013966 () Bool)

(declare-fun tp!1013969 () Bool)

(assert (=> b!3216168 (= e!2005253 (and tp!1013966 tp!1013969))))

(assert (= (and b!3213777 ((_ is ElementMatch!9985) (regTwo!20483 (regex!5226 (rule!7672 separatorToken!241))))) b!3216165))

(assert (= (and b!3213777 ((_ is Concat!15441) (regTwo!20483 (regex!5226 (rule!7672 separatorToken!241))))) b!3216166))

(assert (= (and b!3213777 ((_ is Star!9985) (regTwo!20483 (regex!5226 (rule!7672 separatorToken!241))))) b!3216167))

(assert (= (and b!3213777 ((_ is Union!9985) (regTwo!20483 (regex!5226 (rule!7672 separatorToken!241))))) b!3216168))

(declare-fun e!2005254 () Bool)

(assert (=> b!3213795 (= tp!1013812 e!2005254)))

(declare-fun b!3216169 () Bool)

(assert (=> b!3216169 (= e!2005254 tp_is_empty!17301)))

(declare-fun b!3216171 () Bool)

(declare-fun tp!1013973 () Bool)

(assert (=> b!3216171 (= e!2005254 tp!1013973)))

(declare-fun b!3216170 () Bool)

(declare-fun tp!1013975 () Bool)

(declare-fun tp!1013972 () Bool)

(assert (=> b!3216170 (= e!2005254 (and tp!1013975 tp!1013972))))

(declare-fun b!3216172 () Bool)

(declare-fun tp!1013971 () Bool)

(declare-fun tp!1013974 () Bool)

(assert (=> b!3216172 (= e!2005254 (and tp!1013971 tp!1013974))))

(assert (= (and b!3213795 ((_ is ElementMatch!9985) (reg!10314 (regex!5226 (rule!7672 (h!41609 tokens!494)))))) b!3216169))

(assert (= (and b!3213795 ((_ is Concat!15441) (reg!10314 (regex!5226 (rule!7672 (h!41609 tokens!494)))))) b!3216170))

(assert (= (and b!3213795 ((_ is Star!9985) (reg!10314 (regex!5226 (rule!7672 (h!41609 tokens!494)))))) b!3216171))

(assert (= (and b!3213795 ((_ is Union!9985) (reg!10314 (regex!5226 (rule!7672 (h!41609 tokens!494)))))) b!3216172))

(declare-fun e!2005255 () Bool)

(assert (=> b!3213775 (= tp!1013792 e!2005255)))

(declare-fun b!3216173 () Bool)

(assert (=> b!3216173 (= e!2005255 tp_is_empty!17301)))

(declare-fun b!3216175 () Bool)

(declare-fun tp!1013978 () Bool)

(assert (=> b!3216175 (= e!2005255 tp!1013978)))

(declare-fun b!3216174 () Bool)

(declare-fun tp!1013980 () Bool)

(declare-fun tp!1013977 () Bool)

(assert (=> b!3216174 (= e!2005255 (and tp!1013980 tp!1013977))))

(declare-fun b!3216176 () Bool)

(declare-fun tp!1013976 () Bool)

(declare-fun tp!1013979 () Bool)

(assert (=> b!3216176 (= e!2005255 (and tp!1013976 tp!1013979))))

(assert (= (and b!3213775 ((_ is ElementMatch!9985) (regOne!20482 (regex!5226 (rule!7672 separatorToken!241))))) b!3216173))

(assert (= (and b!3213775 ((_ is Concat!15441) (regOne!20482 (regex!5226 (rule!7672 separatorToken!241))))) b!3216174))

(assert (= (and b!3213775 ((_ is Star!9985) (regOne!20482 (regex!5226 (rule!7672 separatorToken!241))))) b!3216175))

(assert (= (and b!3213775 ((_ is Union!9985) (regOne!20482 (regex!5226 (rule!7672 separatorToken!241))))) b!3216176))

(declare-fun e!2005256 () Bool)

(assert (=> b!3213775 (= tp!1013789 e!2005256)))

(declare-fun b!3216177 () Bool)

(assert (=> b!3216177 (= e!2005256 tp_is_empty!17301)))

(declare-fun b!3216179 () Bool)

(declare-fun tp!1013983 () Bool)

(assert (=> b!3216179 (= e!2005256 tp!1013983)))

(declare-fun b!3216178 () Bool)

(declare-fun tp!1013985 () Bool)

(declare-fun tp!1013982 () Bool)

(assert (=> b!3216178 (= e!2005256 (and tp!1013985 tp!1013982))))

(declare-fun b!3216180 () Bool)

(declare-fun tp!1013981 () Bool)

(declare-fun tp!1013984 () Bool)

(assert (=> b!3216180 (= e!2005256 (and tp!1013981 tp!1013984))))

(assert (= (and b!3213775 ((_ is ElementMatch!9985) (regTwo!20482 (regex!5226 (rule!7672 separatorToken!241))))) b!3216177))

(assert (= (and b!3213775 ((_ is Concat!15441) (regTwo!20482 (regex!5226 (rule!7672 separatorToken!241))))) b!3216178))

(assert (= (and b!3213775 ((_ is Star!9985) (regTwo!20482 (regex!5226 (rule!7672 separatorToken!241))))) b!3216179))

(assert (= (and b!3213775 ((_ is Union!9985) (regTwo!20482 (regex!5226 (rule!7672 separatorToken!241))))) b!3216180))

(declare-fun e!2005257 () Bool)

(assert (=> b!3213776 (= tp!1013790 e!2005257)))

(declare-fun b!3216181 () Bool)

(assert (=> b!3216181 (= e!2005257 tp_is_empty!17301)))

(declare-fun b!3216183 () Bool)

(declare-fun tp!1013988 () Bool)

(assert (=> b!3216183 (= e!2005257 tp!1013988)))

(declare-fun b!3216182 () Bool)

(declare-fun tp!1013990 () Bool)

(declare-fun tp!1013987 () Bool)

(assert (=> b!3216182 (= e!2005257 (and tp!1013990 tp!1013987))))

(declare-fun b!3216184 () Bool)

(declare-fun tp!1013986 () Bool)

(declare-fun tp!1013989 () Bool)

(assert (=> b!3216184 (= e!2005257 (and tp!1013986 tp!1013989))))

(assert (= (and b!3213776 ((_ is ElementMatch!9985) (reg!10314 (regex!5226 (rule!7672 separatorToken!241))))) b!3216181))

(assert (= (and b!3213776 ((_ is Concat!15441) (reg!10314 (regex!5226 (rule!7672 separatorToken!241))))) b!3216182))

(assert (= (and b!3213776 ((_ is Star!9985) (reg!10314 (regex!5226 (rule!7672 separatorToken!241))))) b!3216183))

(assert (= (and b!3213776 ((_ is Union!9985) (reg!10314 (regex!5226 (rule!7672 separatorToken!241))))) b!3216184))

(declare-fun e!2005263 () Bool)

(declare-fun b!3216193 () Bool)

(declare-fun tp!1013997 () Bool)

(declare-fun tp!1013999 () Bool)

(assert (=> b!3216193 (= e!2005263 (and (inv!49055 (left!28142 (c!539813 (dynLambda!14631 (toChars!7173 (transformation!5226 (rule!7672 separatorToken!241))) (value!169401 separatorToken!241))))) tp!1013997 (inv!49055 (right!28472 (c!539813 (dynLambda!14631 (toChars!7173 (transformation!5226 (rule!7672 separatorToken!241))) (value!169401 separatorToken!241))))) tp!1013999))))

(declare-fun b!3216195 () Bool)

(declare-fun e!2005262 () Bool)

(declare-fun tp!1013998 () Bool)

(assert (=> b!3216195 (= e!2005262 tp!1013998)))

(declare-fun b!3216194 () Bool)

(declare-fun inv!49061 (IArray!21659) Bool)

(assert (=> b!3216194 (= e!2005263 (and (inv!49061 (xs!13945 (c!539813 (dynLambda!14631 (toChars!7173 (transformation!5226 (rule!7672 separatorToken!241))) (value!169401 separatorToken!241))))) e!2005262))))

(assert (=> b!3213461 (= tp!1013705 (and (inv!49055 (c!539813 (dynLambda!14631 (toChars!7173 (transformation!5226 (rule!7672 separatorToken!241))) (value!169401 separatorToken!241)))) e!2005263))))

(assert (= (and b!3213461 ((_ is Node!10827) (c!539813 (dynLambda!14631 (toChars!7173 (transformation!5226 (rule!7672 separatorToken!241))) (value!169401 separatorToken!241))))) b!3216193))

(assert (= b!3216194 b!3216195))

(assert (= (and b!3213461 ((_ is Leaf!17051) (c!539813 (dynLambda!14631 (toChars!7173 (transformation!5226 (rule!7672 separatorToken!241))) (value!169401 separatorToken!241))))) b!3216194))

(declare-fun m!3489685 () Bool)

(assert (=> b!3216193 m!3489685))

(declare-fun m!3489687 () Bool)

(assert (=> b!3216193 m!3489687))

(declare-fun m!3489689 () Bool)

(assert (=> b!3216194 m!3489689))

(assert (=> b!3213461 m!3484527))

(declare-fun b!3216199 () Bool)

(declare-fun b_free!85493 () Bool)

(declare-fun b_next!86197 () Bool)

(assert (=> b!3216199 (= b_free!85493 (not b_next!86197))))

(declare-fun tb!158663 () Bool)

(declare-fun t!239700 () Bool)

(assert (=> (and b!3216199 (= (toValue!7314 (transformation!5226 (rule!7672 (h!41609 (t!239158 (t!239158 tokens!494)))))) (toValue!7314 (transformation!5226 (rule!7672 (_1!20932 (get!11526 lt!1086791)))))) t!239700) tb!158663))

(declare-fun result!201060 () Bool)

(assert (= result!201060 result!200652))

(assert (=> d!881358 t!239700))

(declare-fun t!239702 () Bool)

(declare-fun tb!158665 () Bool)

(assert (=> (and b!3216199 (= (toValue!7314 (transformation!5226 (rule!7672 (h!41609 (t!239158 (t!239158 tokens!494)))))) (toValue!7314 (transformation!5226 (rule!7672 (h!41609 (t!239158 tokens!494)))))) t!239702) tb!158665))

(declare-fun result!201062 () Bool)

(assert (= result!201062 result!201048))

(assert (=> d!882764 t!239702))

(declare-fun t!239704 () Bool)

(declare-fun tb!158667 () Bool)

(assert (=> (and b!3216199 (= (toValue!7314 (transformation!5226 (rule!7672 (h!41609 (t!239158 (t!239158 tokens!494)))))) (toValue!7314 (transformation!5226 (rule!7672 (_1!20932 (get!11526 lt!1086803)))))) t!239704) tb!158667))

(declare-fun result!201064 () Bool)

(assert (= result!201064 result!200922))

(assert (=> d!882672 t!239704))

(declare-fun t!239706 () Bool)

(declare-fun tb!158669 () Bool)

(assert (=> (and b!3216199 (= (toValue!7314 (transformation!5226 (rule!7672 (h!41609 (t!239158 (t!239158 tokens!494)))))) (toValue!7314 (transformation!5226 (rule!7672 (h!41609 tokens!494))))) t!239706) tb!158669))

(declare-fun result!201066 () Bool)

(assert (= result!201066 result!200702))

(assert (=> d!881592 t!239706))

(assert (=> d!882768 t!239702))

(declare-fun t!239708 () Bool)

(declare-fun tb!158671 () Bool)

(assert (=> (and b!3216199 (= (toValue!7314 (transformation!5226 (rule!7672 (h!41609 (t!239158 (t!239158 tokens!494)))))) (toValue!7314 (transformation!5226 (rule!7672 (h!41609 tokens!494))))) t!239708) tb!158671))

(declare-fun result!201068 () Bool)

(assert (= result!201068 result!200548))

(assert (=> d!880960 t!239708))

(assert (=> d!881596 t!239706))

(declare-fun t!239710 () Bool)

(declare-fun tb!158673 () Bool)

(assert (=> (and b!3216199 (= (toValue!7314 (transformation!5226 (rule!7672 (h!41609 (t!239158 (t!239158 tokens!494)))))) (toValue!7314 (transformation!5226 (rule!7672 (h!41609 (t!239158 tokens!494)))))) t!239710) tb!158673))

(declare-fun result!201070 () Bool)

(assert (= result!201070 result!200556))

(assert (=> d!881024 t!239710))

(declare-fun t!239712 () Bool)

(declare-fun tb!158675 () Bool)

(assert (=> (and b!3216199 (= (toValue!7314 (transformation!5226 (rule!7672 (h!41609 (t!239158 (t!239158 tokens!494)))))) (toValue!7314 (transformation!5226 (rule!7672 (_1!20932 (get!11526 lt!1086777)))))) t!239712) tb!158675))

(declare-fun result!201072 () Bool)

(assert (= result!201072 result!200932))

(assert (=> d!882710 t!239712))

(declare-fun t!239714 () Bool)

(declare-fun tb!158677 () Bool)

(assert (=> (and b!3216199 (= (toValue!7314 (transformation!5226 (rule!7672 (h!41609 (t!239158 (t!239158 tokens!494)))))) (toValue!7314 (transformation!5226 (rule!7672 (h!41609 tokens!494))))) t!239714) tb!158677))

(declare-fun result!201074 () Bool)

(assert (= result!201074 result!200892))

(assert (=> d!882404 t!239714))

(declare-fun b_and!214731 () Bool)

(declare-fun tp!1014002 () Bool)

(assert (=> b!3216199 (= tp!1014002 (and (=> t!239704 result!201064) (=> t!239714 result!201074) (=> t!239706 result!201066) (=> t!239702 result!201062) (=> t!239712 result!201072) (=> t!239700 result!201060) (=> t!239708 result!201068) (=> t!239710 result!201070) b_and!214731))))

(declare-fun b_free!85495 () Bool)

(declare-fun b_next!86199 () Bool)

(assert (=> b!3216199 (= b_free!85495 (not b_next!86199))))

(declare-fun t!239716 () Bool)

(declare-fun tb!158679 () Bool)

(assert (=> (and b!3216199 (= (toChars!7173 (transformation!5226 (rule!7672 (h!41609 (t!239158 (t!239158 tokens!494)))))) (toChars!7173 (transformation!5226 (rule!7672 (h!41609 (Cons!36189 (h!41609 tokens!494) Nil!36189)))))) t!239716) tb!158679))

(declare-fun result!201076 () Bool)

(assert (= result!201076 result!200882))

(assert (=> d!882388 t!239716))

(declare-fun tb!158681 () Bool)

(declare-fun t!239718 () Bool)

(assert (=> (and b!3216199 (= (toChars!7173 (transformation!5226 (rule!7672 (h!41609 (t!239158 (t!239158 tokens!494)))))) (toChars!7173 (transformation!5226 (rule!7672 (_1!20932 (get!11526 lt!1086777)))))) t!239718) tb!158681))

(declare-fun result!201078 () Bool)

(assert (= result!201078 result!200812))

(assert (=> d!882036 t!239718))

(declare-fun t!239720 () Bool)

(declare-fun tb!158683 () Bool)

(assert (=> (and b!3216199 (= (toChars!7173 (transformation!5226 (rule!7672 (h!41609 (t!239158 (t!239158 tokens!494)))))) (toChars!7173 (transformation!5226 (rule!7672 (h!41609 (t!239158 tokens!494)))))) t!239720) tb!158683))

(declare-fun result!201080 () Bool)

(assert (= result!201080 result!200584))

(assert (=> b!3213986 t!239720))

(declare-fun t!239722 () Bool)

(declare-fun tb!158685 () Bool)

(assert (=> (and b!3216199 (= (toChars!7173 (transformation!5226 (rule!7672 (h!41609 (t!239158 (t!239158 tokens!494)))))) (toChars!7173 (transformation!5226 (rule!7672 (h!41609 tokens!494))))) t!239722) tb!158685))

(declare-fun result!201082 () Bool)

(assert (= result!201082 result!200712))

(assert (=> d!881596 t!239722))

(declare-fun tb!158687 () Bool)

(declare-fun t!239724 () Bool)

(assert (=> (and b!3216199 (= (toChars!7173 (transformation!5226 (rule!7672 (h!41609 (t!239158 (t!239158 tokens!494)))))) (toChars!7173 (transformation!5226 (rule!7672 (_1!20932 (get!11526 lt!1086791)))))) t!239724) tb!158687))

(declare-fun result!201084 () Bool)

(assert (= result!201084 result!200662))

(assert (=> d!881432 t!239724))

(declare-fun t!239726 () Bool)

(declare-fun tb!158689 () Bool)

(assert (=> (and b!3216199 (= (toChars!7173 (transformation!5226 (rule!7672 (h!41609 (t!239158 (t!239158 tokens!494)))))) (toChars!7173 (transformation!5226 (rule!7672 separatorToken!241)))) t!239726) tb!158689))

(declare-fun result!201086 () Bool)

(assert (= result!201086 result!200578))

(assert (=> d!881094 t!239726))

(declare-fun tb!158691 () Bool)

(declare-fun t!239728 () Bool)

(assert (=> (and b!3216199 (= (toChars!7173 (transformation!5226 (rule!7672 (h!41609 (t!239158 (t!239158 tokens!494)))))) (toChars!7173 (transformation!5226 (rule!7672 (_1!20932 (get!11526 lt!1086803)))))) t!239728) tb!158691))

(declare-fun result!201088 () Bool)

(assert (= result!201088 result!200672))

(assert (=> d!881464 t!239728))

(declare-fun t!239730 () Bool)

(declare-fun tb!158693 () Bool)

(assert (=> (and b!3216199 (= (toChars!7173 (transformation!5226 (rule!7672 (h!41609 (t!239158 (t!239158 tokens!494)))))) (toChars!7173 (transformation!5226 (rule!7672 (h!41609 (t!239158 tokens!494)))))) t!239730) tb!158693))

(declare-fun result!201090 () Bool)

(assert (= result!201090 result!201038))

(assert (=> d!882764 t!239730))

(declare-fun tb!158695 () Bool)

(declare-fun t!239732 () Bool)

(assert (=> (and b!3216199 (= (toChars!7173 (transformation!5226 (rule!7672 (h!41609 (t!239158 (t!239158 tokens!494)))))) (toChars!7173 (transformation!5226 (rule!7672 (apply!8207 lt!1086546 0))))) t!239732) tb!158695))

(declare-fun result!201092 () Bool)

(assert (= result!201092 result!200752))

(assert (=> d!881710 t!239732))

(declare-fun t!239734 () Bool)

(declare-fun tb!158697 () Bool)

(assert (=> (and b!3216199 (= (toChars!7173 (transformation!5226 (rule!7672 (h!41609 (t!239158 (t!239158 tokens!494)))))) (toChars!7173 (transformation!5226 (rule!7672 (h!41609 tokens!494))))) t!239734) tb!158697))

(declare-fun result!201094 () Bool)

(assert (= result!201094 result!200570))

(assert (=> b!3213515 t!239734))

(assert (=> b!3213544 t!239726))

(assert (=> d!881108 t!239720))

(declare-fun tb!158699 () Bool)

(declare-fun t!239736 () Bool)

(assert (=> (and b!3216199 (= (toChars!7173 (transformation!5226 (rule!7672 (h!41609 (t!239158 (t!239158 tokens!494)))))) (toChars!7173 (transformation!5226 (rule!7672 (apply!8207 lt!1086550 0))))) t!239736) tb!158699))

(declare-fun result!201096 () Bool)

(assert (= result!201096 result!200902))

(assert (=> d!882574 t!239736))

(assert (=> d!881046 t!239734))

(declare-fun t!239738 () Bool)

(declare-fun tb!158701 () Bool)

(assert (=> (and b!3216199 (= (toChars!7173 (transformation!5226 (rule!7672 (h!41609 (t!239158 (t!239158 tokens!494)))))) (toChars!7173 (transformation!5226 (rule!7672 (apply!8207 lt!1086554 0))))) t!239738) tb!158701))

(declare-fun result!201098 () Bool)

(assert (= result!201098 result!200872))

(assert (=> d!882250 t!239738))

(declare-fun t!239740 () Bool)

(declare-fun tb!158703 () Bool)

(assert (=> (and b!3216199 (= (toChars!7173 (transformation!5226 (rule!7672 (h!41609 (t!239158 (t!239158 tokens!494)))))) (toChars!7173 (transformation!5226 (rule!7672 (h!41609 (t!239158 (t!239158 tokens!494))))))) t!239740) tb!158703))

(declare-fun result!201100 () Bool)

(assert (= result!201100 result!200942))

(assert (=> d!882724 t!239740))

(declare-fun tp!1014004 () Bool)

(declare-fun b_and!214733 () Bool)

(assert (=> b!3216199 (= tp!1014004 (and (=> t!239728 result!201088) (=> t!239732 result!201092) (=> t!239740 result!201100) (=> t!239738 result!201098) (=> t!239730 result!201090) (=> t!239736 result!201096) (=> t!239724 result!201084) (=> t!239716 result!201076) (=> t!239722 result!201082) (=> t!239734 result!201094) (=> t!239718 result!201078) (=> t!239720 result!201080) (=> t!239726 result!201086) b_and!214733))))

(declare-fun e!2005267 () Bool)

(assert (=> b!3213757 (= tp!1013773 e!2005267)))

(declare-fun b!3216197 () Bool)

(declare-fun e!2005268 () Bool)

(declare-fun e!2005265 () Bool)

(declare-fun tp!1014003 () Bool)

(assert (=> b!3216197 (= e!2005265 (and (inv!21 (value!169401 (h!41609 (t!239158 (t!239158 tokens!494))))) e!2005268 tp!1014003))))

(declare-fun tp!1014000 () Bool)

(declare-fun b!3216196 () Bool)

(assert (=> b!3216196 (= e!2005267 (and (inv!49052 (h!41609 (t!239158 (t!239158 tokens!494)))) e!2005265 tp!1014000))))

(declare-fun e!2005266 () Bool)

(assert (=> b!3216199 (= e!2005266 (and tp!1014002 tp!1014004))))

(declare-fun tp!1014001 () Bool)

(declare-fun b!3216198 () Bool)

(assert (=> b!3216198 (= e!2005268 (and tp!1014001 (inv!49048 (tag!5754 (rule!7672 (h!41609 (t!239158 (t!239158 tokens!494)))))) (inv!49051 (transformation!5226 (rule!7672 (h!41609 (t!239158 (t!239158 tokens!494)))))) e!2005266))))

(assert (= b!3216198 b!3216199))

(assert (= b!3216197 b!3216198))

(assert (= b!3216196 b!3216197))

(assert (= (and b!3213757 ((_ is Cons!36189) (t!239158 (t!239158 tokens!494)))) b!3216196))

(declare-fun m!3489691 () Bool)

(assert (=> b!3216197 m!3489691))

(declare-fun m!3489693 () Bool)

(assert (=> b!3216196 m!3489693))

(declare-fun m!3489695 () Bool)

(assert (=> b!3216198 m!3489695))

(declare-fun m!3489697 () Bool)

(assert (=> b!3216198 m!3489697))

(declare-fun e!2005270 () Bool)

(assert (=> b!3213779 (= tp!1013797 e!2005270)))

(declare-fun b!3216200 () Bool)

(assert (=> b!3216200 (= e!2005270 tp_is_empty!17301)))

(declare-fun b!3216202 () Bool)

(declare-fun tp!1014007 () Bool)

(assert (=> b!3216202 (= e!2005270 tp!1014007)))

(declare-fun b!3216201 () Bool)

(declare-fun tp!1014009 () Bool)

(declare-fun tp!1014006 () Bool)

(assert (=> b!3216201 (= e!2005270 (and tp!1014009 tp!1014006))))

(declare-fun b!3216203 () Bool)

(declare-fun tp!1014005 () Bool)

(declare-fun tp!1014008 () Bool)

(assert (=> b!3216203 (= e!2005270 (and tp!1014005 tp!1014008))))

(assert (= (and b!3213779 ((_ is ElementMatch!9985) (regOne!20482 (regex!5226 (h!41608 rules!2135))))) b!3216200))

(assert (= (and b!3213779 ((_ is Concat!15441) (regOne!20482 (regex!5226 (h!41608 rules!2135))))) b!3216201))

(assert (= (and b!3213779 ((_ is Star!9985) (regOne!20482 (regex!5226 (h!41608 rules!2135))))) b!3216202))

(assert (= (and b!3213779 ((_ is Union!9985) (regOne!20482 (regex!5226 (h!41608 rules!2135))))) b!3216203))

(declare-fun e!2005271 () Bool)

(assert (=> b!3213779 (= tp!1013794 e!2005271)))

(declare-fun b!3216204 () Bool)

(assert (=> b!3216204 (= e!2005271 tp_is_empty!17301)))

(declare-fun b!3216206 () Bool)

(declare-fun tp!1014012 () Bool)

(assert (=> b!3216206 (= e!2005271 tp!1014012)))

(declare-fun b!3216205 () Bool)

(declare-fun tp!1014014 () Bool)

(declare-fun tp!1014011 () Bool)

(assert (=> b!3216205 (= e!2005271 (and tp!1014014 tp!1014011))))

(declare-fun b!3216207 () Bool)

(declare-fun tp!1014010 () Bool)

(declare-fun tp!1014013 () Bool)

(assert (=> b!3216207 (= e!2005271 (and tp!1014010 tp!1014013))))

(assert (= (and b!3213779 ((_ is ElementMatch!9985) (regTwo!20482 (regex!5226 (h!41608 rules!2135))))) b!3216204))

(assert (= (and b!3213779 ((_ is Concat!15441) (regTwo!20482 (regex!5226 (h!41608 rules!2135))))) b!3216205))

(assert (= (and b!3213779 ((_ is Star!9985) (regTwo!20482 (regex!5226 (h!41608 rules!2135))))) b!3216206))

(assert (= (and b!3213779 ((_ is Union!9985) (regTwo!20482 (regex!5226 (h!41608 rules!2135))))) b!3216207))

(declare-fun e!2005272 () Bool)

(assert (=> b!3213791 (= tp!1013806 e!2005272)))

(declare-fun b!3216208 () Bool)

(assert (=> b!3216208 (= e!2005272 tp_is_empty!17301)))

(declare-fun b!3216210 () Bool)

(declare-fun tp!1014017 () Bool)

(assert (=> b!3216210 (= e!2005272 tp!1014017)))

(declare-fun b!3216209 () Bool)

(declare-fun tp!1014019 () Bool)

(declare-fun tp!1014016 () Bool)

(assert (=> b!3216209 (= e!2005272 (and tp!1014019 tp!1014016))))

(declare-fun b!3216211 () Bool)

(declare-fun tp!1014015 () Bool)

(declare-fun tp!1014018 () Bool)

(assert (=> b!3216211 (= e!2005272 (and tp!1014015 tp!1014018))))

(assert (= (and b!3213791 ((_ is ElementMatch!9985) (regex!5226 (h!41608 (t!239157 rules!2135))))) b!3216208))

(assert (= (and b!3213791 ((_ is Concat!15441) (regex!5226 (h!41608 (t!239157 rules!2135))))) b!3216209))

(assert (= (and b!3213791 ((_ is Star!9985) (regex!5226 (h!41608 (t!239157 rules!2135))))) b!3216210))

(assert (= (and b!3213791 ((_ is Union!9985) (regex!5226 (h!41608 (t!239157 rules!2135))))) b!3216211))

(declare-fun b!3216212 () Bool)

(declare-fun e!2005274 () Bool)

(declare-fun tp!1014022 () Bool)

(declare-fun tp!1014020 () Bool)

(assert (=> b!3216212 (= e!2005274 (and (inv!49055 (left!28142 (c!539813 (dynLambda!14631 (toChars!7173 (transformation!5226 (rule!7672 (h!41609 tokens!494)))) (value!169401 (h!41609 tokens!494)))))) tp!1014020 (inv!49055 (right!28472 (c!539813 (dynLambda!14631 (toChars!7173 (transformation!5226 (rule!7672 (h!41609 tokens!494)))) (value!169401 (h!41609 tokens!494)))))) tp!1014022))))

(declare-fun b!3216214 () Bool)

(declare-fun e!2005273 () Bool)

(declare-fun tp!1014021 () Bool)

(assert (=> b!3216214 (= e!2005273 tp!1014021)))

(declare-fun b!3216213 () Bool)

(assert (=> b!3216213 (= e!2005274 (and (inv!49061 (xs!13945 (c!539813 (dynLambda!14631 (toChars!7173 (transformation!5226 (rule!7672 (h!41609 tokens!494)))) (value!169401 (h!41609 tokens!494)))))) e!2005273))))

(assert (=> b!3213372 (= tp!1013704 (and (inv!49055 (c!539813 (dynLambda!14631 (toChars!7173 (transformation!5226 (rule!7672 (h!41609 tokens!494)))) (value!169401 (h!41609 tokens!494))))) e!2005274))))

(assert (= (and b!3213372 ((_ is Node!10827) (c!539813 (dynLambda!14631 (toChars!7173 (transformation!5226 (rule!7672 (h!41609 tokens!494)))) (value!169401 (h!41609 tokens!494)))))) b!3216212))

(assert (= b!3216213 b!3216214))

(assert (= (and b!3213372 ((_ is Leaf!17051) (c!539813 (dynLambda!14631 (toChars!7173 (transformation!5226 (rule!7672 (h!41609 tokens!494)))) (value!169401 (h!41609 tokens!494)))))) b!3216213))

(declare-fun m!3489699 () Bool)

(assert (=> b!3216212 m!3489699))

(declare-fun m!3489701 () Bool)

(assert (=> b!3216212 m!3489701))

(declare-fun m!3489703 () Bool)

(assert (=> b!3216213 m!3489703))

(assert (=> b!3213372 m!3484371))

(declare-fun b!3216217 () Bool)

(declare-fun b_free!85497 () Bool)

(declare-fun b_next!86201 () Bool)

(assert (=> b!3216217 (= b_free!85497 (not b_next!86201))))

(declare-fun t!239742 () Bool)

(declare-fun tb!158705 () Bool)

(assert (=> (and b!3216217 (= (toValue!7314 (transformation!5226 (h!41608 (t!239157 (t!239157 rules!2135))))) (toValue!7314 (transformation!5226 (rule!7672 (_1!20932 (get!11526 lt!1086791)))))) t!239742) tb!158705))

(declare-fun result!201102 () Bool)

(assert (= result!201102 result!200652))

(assert (=> d!881358 t!239742))

(declare-fun tb!158707 () Bool)

(declare-fun t!239744 () Bool)

(assert (=> (and b!3216217 (= (toValue!7314 (transformation!5226 (h!41608 (t!239157 (t!239157 rules!2135))))) (toValue!7314 (transformation!5226 (rule!7672 (h!41609 (t!239158 tokens!494)))))) t!239744) tb!158707))

(declare-fun result!201104 () Bool)

(assert (= result!201104 result!201048))

(assert (=> d!882764 t!239744))

(declare-fun t!239746 () Bool)

(declare-fun tb!158709 () Bool)

(assert (=> (and b!3216217 (= (toValue!7314 (transformation!5226 (h!41608 (t!239157 (t!239157 rules!2135))))) (toValue!7314 (transformation!5226 (rule!7672 (_1!20932 (get!11526 lt!1086803)))))) t!239746) tb!158709))

(declare-fun result!201106 () Bool)

(assert (= result!201106 result!200922))

(assert (=> d!882672 t!239746))

(declare-fun t!239748 () Bool)

(declare-fun tb!158711 () Bool)

(assert (=> (and b!3216217 (= (toValue!7314 (transformation!5226 (h!41608 (t!239157 (t!239157 rules!2135))))) (toValue!7314 (transformation!5226 (rule!7672 (h!41609 tokens!494))))) t!239748) tb!158711))

(declare-fun result!201108 () Bool)

(assert (= result!201108 result!200702))

(assert (=> d!881592 t!239748))

(assert (=> d!882768 t!239744))

(declare-fun tb!158713 () Bool)

(declare-fun t!239750 () Bool)

(assert (=> (and b!3216217 (= (toValue!7314 (transformation!5226 (h!41608 (t!239157 (t!239157 rules!2135))))) (toValue!7314 (transformation!5226 (rule!7672 (h!41609 tokens!494))))) t!239750) tb!158713))

(declare-fun result!201110 () Bool)

(assert (= result!201110 result!200548))

(assert (=> d!880960 t!239750))

(assert (=> d!881596 t!239748))

(declare-fun t!239752 () Bool)

(declare-fun tb!158715 () Bool)

(assert (=> (and b!3216217 (= (toValue!7314 (transformation!5226 (h!41608 (t!239157 (t!239157 rules!2135))))) (toValue!7314 (transformation!5226 (rule!7672 (h!41609 (t!239158 tokens!494)))))) t!239752) tb!158715))

(declare-fun result!201112 () Bool)

(assert (= result!201112 result!200556))

(assert (=> d!881024 t!239752))

(declare-fun t!239754 () Bool)

(declare-fun tb!158717 () Bool)

(assert (=> (and b!3216217 (= (toValue!7314 (transformation!5226 (h!41608 (t!239157 (t!239157 rules!2135))))) (toValue!7314 (transformation!5226 (rule!7672 (_1!20932 (get!11526 lt!1086777)))))) t!239754) tb!158717))

(declare-fun result!201114 () Bool)

(assert (= result!201114 result!200932))

(assert (=> d!882710 t!239754))

(declare-fun t!239756 () Bool)

(declare-fun tb!158719 () Bool)

(assert (=> (and b!3216217 (= (toValue!7314 (transformation!5226 (h!41608 (t!239157 (t!239157 rules!2135))))) (toValue!7314 (transformation!5226 (rule!7672 (h!41609 tokens!494))))) t!239756) tb!158719))

(declare-fun result!201116 () Bool)

(assert (= result!201116 result!200892))

(assert (=> d!882404 t!239756))

(declare-fun tp!1014025 () Bool)

(declare-fun b_and!214735 () Bool)

(assert (=> b!3216217 (= tp!1014025 (and (=> t!239744 result!201104) (=> t!239742 result!201102) (=> t!239748 result!201108) (=> t!239752 result!201112) (=> t!239756 result!201116) (=> t!239746 result!201106) (=> t!239750 result!201110) (=> t!239754 result!201114) b_and!214735))))

(declare-fun b_free!85499 () Bool)

(declare-fun b_next!86203 () Bool)

(assert (=> b!3216217 (= b_free!85499 (not b_next!86203))))

(declare-fun t!239758 () Bool)

(declare-fun tb!158721 () Bool)

(assert (=> (and b!3216217 (= (toChars!7173 (transformation!5226 (h!41608 (t!239157 (t!239157 rules!2135))))) (toChars!7173 (transformation!5226 (rule!7672 (h!41609 (Cons!36189 (h!41609 tokens!494) Nil!36189)))))) t!239758) tb!158721))

(declare-fun result!201118 () Bool)

(assert (= result!201118 result!200882))

(assert (=> d!882388 t!239758))

(declare-fun tb!158723 () Bool)

(declare-fun t!239760 () Bool)

(assert (=> (and b!3216217 (= (toChars!7173 (transformation!5226 (h!41608 (t!239157 (t!239157 rules!2135))))) (toChars!7173 (transformation!5226 (rule!7672 (_1!20932 (get!11526 lt!1086777)))))) t!239760) tb!158723))

(declare-fun result!201120 () Bool)

(assert (= result!201120 result!200812))

(assert (=> d!882036 t!239760))

(declare-fun t!239762 () Bool)

(declare-fun tb!158725 () Bool)

(assert (=> (and b!3216217 (= (toChars!7173 (transformation!5226 (h!41608 (t!239157 (t!239157 rules!2135))))) (toChars!7173 (transformation!5226 (rule!7672 (h!41609 (t!239158 tokens!494)))))) t!239762) tb!158725))

(declare-fun result!201122 () Bool)

(assert (= result!201122 result!200584))

(assert (=> b!3213986 t!239762))

(declare-fun tb!158727 () Bool)

(declare-fun t!239764 () Bool)

(assert (=> (and b!3216217 (= (toChars!7173 (transformation!5226 (h!41608 (t!239157 (t!239157 rules!2135))))) (toChars!7173 (transformation!5226 (rule!7672 (h!41609 tokens!494))))) t!239764) tb!158727))

(declare-fun result!201124 () Bool)

(assert (= result!201124 result!200712))

(assert (=> d!881596 t!239764))

(declare-fun tb!158729 () Bool)

(declare-fun t!239766 () Bool)

(assert (=> (and b!3216217 (= (toChars!7173 (transformation!5226 (h!41608 (t!239157 (t!239157 rules!2135))))) (toChars!7173 (transformation!5226 (rule!7672 (_1!20932 (get!11526 lt!1086791)))))) t!239766) tb!158729))

(declare-fun result!201126 () Bool)

(assert (= result!201126 result!200662))

(assert (=> d!881432 t!239766))

(declare-fun tb!158731 () Bool)

(declare-fun t!239768 () Bool)

(assert (=> (and b!3216217 (= (toChars!7173 (transformation!5226 (h!41608 (t!239157 (t!239157 rules!2135))))) (toChars!7173 (transformation!5226 (rule!7672 separatorToken!241)))) t!239768) tb!158731))

(declare-fun result!201128 () Bool)

(assert (= result!201128 result!200578))

(assert (=> d!881094 t!239768))

(declare-fun t!239770 () Bool)

(declare-fun tb!158733 () Bool)

(assert (=> (and b!3216217 (= (toChars!7173 (transformation!5226 (h!41608 (t!239157 (t!239157 rules!2135))))) (toChars!7173 (transformation!5226 (rule!7672 (_1!20932 (get!11526 lt!1086803)))))) t!239770) tb!158733))

(declare-fun result!201130 () Bool)

(assert (= result!201130 result!200672))

(assert (=> d!881464 t!239770))

(declare-fun tb!158735 () Bool)

(declare-fun t!239772 () Bool)

(assert (=> (and b!3216217 (= (toChars!7173 (transformation!5226 (h!41608 (t!239157 (t!239157 rules!2135))))) (toChars!7173 (transformation!5226 (rule!7672 (h!41609 (t!239158 tokens!494)))))) t!239772) tb!158735))

(declare-fun result!201132 () Bool)

(assert (= result!201132 result!201038))

(assert (=> d!882764 t!239772))

(declare-fun tb!158737 () Bool)

(declare-fun t!239774 () Bool)

(assert (=> (and b!3216217 (= (toChars!7173 (transformation!5226 (h!41608 (t!239157 (t!239157 rules!2135))))) (toChars!7173 (transformation!5226 (rule!7672 (apply!8207 lt!1086546 0))))) t!239774) tb!158737))

(declare-fun result!201134 () Bool)

(assert (= result!201134 result!200752))

(assert (=> d!881710 t!239774))

(declare-fun tb!158739 () Bool)

(declare-fun t!239776 () Bool)

(assert (=> (and b!3216217 (= (toChars!7173 (transformation!5226 (h!41608 (t!239157 (t!239157 rules!2135))))) (toChars!7173 (transformation!5226 (rule!7672 (h!41609 tokens!494))))) t!239776) tb!158739))

(declare-fun result!201136 () Bool)

(assert (= result!201136 result!200570))

(assert (=> b!3213515 t!239776))

(assert (=> b!3213544 t!239768))

(assert (=> d!881108 t!239762))

(declare-fun tb!158741 () Bool)

(declare-fun t!239778 () Bool)

(assert (=> (and b!3216217 (= (toChars!7173 (transformation!5226 (h!41608 (t!239157 (t!239157 rules!2135))))) (toChars!7173 (transformation!5226 (rule!7672 (apply!8207 lt!1086550 0))))) t!239778) tb!158741))

(declare-fun result!201138 () Bool)

(assert (= result!201138 result!200902))

(assert (=> d!882574 t!239778))

(assert (=> d!881046 t!239776))

(declare-fun tb!158743 () Bool)

(declare-fun t!239780 () Bool)

(assert (=> (and b!3216217 (= (toChars!7173 (transformation!5226 (h!41608 (t!239157 (t!239157 rules!2135))))) (toChars!7173 (transformation!5226 (rule!7672 (apply!8207 lt!1086554 0))))) t!239780) tb!158743))

(declare-fun result!201140 () Bool)

(assert (= result!201140 result!200872))

(assert (=> d!882250 t!239780))

(declare-fun t!239782 () Bool)

(declare-fun tb!158745 () Bool)

(assert (=> (and b!3216217 (= (toChars!7173 (transformation!5226 (h!41608 (t!239157 (t!239157 rules!2135))))) (toChars!7173 (transformation!5226 (rule!7672 (h!41609 (t!239158 (t!239158 tokens!494))))))) t!239782) tb!158745))

(declare-fun result!201142 () Bool)

(assert (= result!201142 result!200942))

(assert (=> d!882724 t!239782))

(declare-fun tp!1014026 () Bool)

(declare-fun b_and!214737 () Bool)

(assert (=> b!3216217 (= tp!1014026 (and (=> t!239764 result!201124) (=> t!239774 result!201134) (=> t!239762 result!201122) (=> t!239782 result!201142) (=> t!239780 result!201140) (=> t!239770 result!201130) (=> t!239766 result!201126) (=> t!239772 result!201132) (=> t!239776 result!201136) (=> t!239760 result!201120) (=> t!239778 result!201138) (=> t!239758 result!201118) (=> t!239768 result!201128) b_and!214737))))

(declare-fun e!2005278 () Bool)

(assert (=> b!3216217 (= e!2005278 (and tp!1014025 tp!1014026))))

(declare-fun tp!1014023 () Bool)

(declare-fun e!2005275 () Bool)

(declare-fun b!3216216 () Bool)

(assert (=> b!3216216 (= e!2005275 (and tp!1014023 (inv!49048 (tag!5754 (h!41608 (t!239157 (t!239157 rules!2135))))) (inv!49051 (transformation!5226 (h!41608 (t!239157 (t!239157 rules!2135))))) e!2005278))))

(declare-fun b!3216215 () Bool)

(declare-fun e!2005276 () Bool)

(declare-fun tp!1014024 () Bool)

(assert (=> b!3216215 (= e!2005276 (and e!2005275 tp!1014024))))

(assert (=> b!3213790 (= tp!1013807 e!2005276)))

(assert (= b!3216216 b!3216217))

(assert (= b!3216215 b!3216216))

(assert (= (and b!3213790 ((_ is Cons!36188) (t!239157 (t!239157 rules!2135)))) b!3216215))

(declare-fun m!3489705 () Bool)

(assert (=> b!3216216 m!3489705))

(declare-fun m!3489707 () Bool)

(assert (=> b!3216216 m!3489707))

(declare-fun b!3216218 () Bool)

(declare-fun e!2005280 () Bool)

(declare-fun tp!1014029 () Bool)

(declare-fun tp!1014027 () Bool)

(assert (=> b!3216218 (= e!2005280 (and (inv!49055 (left!28142 (c!539813 (dynLambda!14631 (toChars!7173 (transformation!5226 (rule!7672 (h!41609 (t!239158 tokens!494))))) (value!169401 (h!41609 (t!239158 tokens!494))))))) tp!1014027 (inv!49055 (right!28472 (c!539813 (dynLambda!14631 (toChars!7173 (transformation!5226 (rule!7672 (h!41609 (t!239158 tokens!494))))) (value!169401 (h!41609 (t!239158 tokens!494))))))) tp!1014029))))

(declare-fun b!3216220 () Bool)

(declare-fun e!2005279 () Bool)

(declare-fun tp!1014028 () Bool)

(assert (=> b!3216220 (= e!2005279 tp!1014028)))

(declare-fun b!3216219 () Bool)

(assert (=> b!3216219 (= e!2005280 (and (inv!49061 (xs!13945 (c!539813 (dynLambda!14631 (toChars!7173 (transformation!5226 (rule!7672 (h!41609 (t!239158 tokens!494))))) (value!169401 (h!41609 (t!239158 tokens!494))))))) e!2005279))))

(assert (=> b!3213474 (= tp!1013706 (and (inv!49055 (c!539813 (dynLambda!14631 (toChars!7173 (transformation!5226 (rule!7672 (h!41609 (t!239158 tokens!494))))) (value!169401 (h!41609 (t!239158 tokens!494)))))) e!2005280))))

(assert (= (and b!3213474 ((_ is Node!10827) (c!539813 (dynLambda!14631 (toChars!7173 (transformation!5226 (rule!7672 (h!41609 (t!239158 tokens!494))))) (value!169401 (h!41609 (t!239158 tokens!494))))))) b!3216218))

(assert (= b!3216219 b!3216220))

(assert (= (and b!3213474 ((_ is Leaf!17051) (c!539813 (dynLambda!14631 (toChars!7173 (transformation!5226 (rule!7672 (h!41609 (t!239158 tokens!494))))) (value!169401 (h!41609 (t!239158 tokens!494))))))) b!3216219))

(declare-fun m!3489709 () Bool)

(assert (=> b!3216218 m!3489709))

(declare-fun m!3489711 () Bool)

(assert (=> b!3216218 m!3489711))

(declare-fun m!3489713 () Bool)

(assert (=> b!3216219 m!3489713))

(assert (=> b!3213474 m!3484577))

(declare-fun e!2005281 () Bool)

(assert (=> b!3213781 (= tp!1013793 e!2005281)))

(declare-fun b!3216221 () Bool)

(assert (=> b!3216221 (= e!2005281 tp_is_empty!17301)))

(declare-fun b!3216223 () Bool)

(declare-fun tp!1014032 () Bool)

(assert (=> b!3216223 (= e!2005281 tp!1014032)))

(declare-fun b!3216222 () Bool)

(declare-fun tp!1014034 () Bool)

(declare-fun tp!1014031 () Bool)

(assert (=> b!3216222 (= e!2005281 (and tp!1014034 tp!1014031))))

(declare-fun b!3216224 () Bool)

(declare-fun tp!1014030 () Bool)

(declare-fun tp!1014033 () Bool)

(assert (=> b!3216224 (= e!2005281 (and tp!1014030 tp!1014033))))

(assert (= (and b!3213781 ((_ is ElementMatch!9985) (regOne!20483 (regex!5226 (h!41608 rules!2135))))) b!3216221))

(assert (= (and b!3213781 ((_ is Concat!15441) (regOne!20483 (regex!5226 (h!41608 rules!2135))))) b!3216222))

(assert (= (and b!3213781 ((_ is Star!9985) (regOne!20483 (regex!5226 (h!41608 rules!2135))))) b!3216223))

(assert (= (and b!3213781 ((_ is Union!9985) (regOne!20483 (regex!5226 (h!41608 rules!2135))))) b!3216224))

(declare-fun e!2005282 () Bool)

(assert (=> b!3213781 (= tp!1013796 e!2005282)))

(declare-fun b!3216225 () Bool)

(assert (=> b!3216225 (= e!2005282 tp_is_empty!17301)))

(declare-fun b!3216227 () Bool)

(declare-fun tp!1014037 () Bool)

(assert (=> b!3216227 (= e!2005282 tp!1014037)))

(declare-fun b!3216226 () Bool)

(declare-fun tp!1014039 () Bool)

(declare-fun tp!1014036 () Bool)

(assert (=> b!3216226 (= e!2005282 (and tp!1014039 tp!1014036))))

(declare-fun b!3216228 () Bool)

(declare-fun tp!1014035 () Bool)

(declare-fun tp!1014038 () Bool)

(assert (=> b!3216228 (= e!2005282 (and tp!1014035 tp!1014038))))

(assert (= (and b!3213781 ((_ is ElementMatch!9985) (regTwo!20483 (regex!5226 (h!41608 rules!2135))))) b!3216225))

(assert (= (and b!3213781 ((_ is Concat!15441) (regTwo!20483 (regex!5226 (h!41608 rules!2135))))) b!3216226))

(assert (= (and b!3213781 ((_ is Star!9985) (regTwo!20483 (regex!5226 (h!41608 rules!2135))))) b!3216227))

(assert (= (and b!3213781 ((_ is Union!9985) (regTwo!20483 (regex!5226 (h!41608 rules!2135))))) b!3216228))

(declare-fun b!3216231 () Bool)

(declare-fun e!2005285 () Bool)

(assert (=> b!3216231 (= e!2005285 true)))

(declare-fun b!3216230 () Bool)

(declare-fun e!2005284 () Bool)

(assert (=> b!3216230 (= e!2005284 e!2005285)))

(declare-fun b!3216229 () Bool)

(declare-fun e!2005283 () Bool)

(assert (=> b!3216229 (= e!2005283 e!2005284)))

(assert (=> b!3213681 e!2005283))

(assert (= b!3216230 b!3216231))

(assert (= b!3216229 b!3216230))

(assert (= (and b!3213681 ((_ is Cons!36188) (t!239157 rules!2135))) b!3216229))

(assert (=> b!3216231 (< (dynLambda!14623 order!18493 (toValue!7314 (transformation!5226 (h!41608 (t!239157 rules!2135))))) (dynLambda!14624 order!18495 lambda!117565))))

(assert (=> b!3216231 (< (dynLambda!14625 order!18497 (toChars!7173 (transformation!5226 (h!41608 (t!239157 rules!2135))))) (dynLambda!14624 order!18495 lambda!117565))))

(declare-fun e!2005286 () Bool)

(assert (=> b!3213780 (= tp!1013795 e!2005286)))

(declare-fun b!3216232 () Bool)

(assert (=> b!3216232 (= e!2005286 tp_is_empty!17301)))

(declare-fun b!3216234 () Bool)

(declare-fun tp!1014042 () Bool)

(assert (=> b!3216234 (= e!2005286 tp!1014042)))

(declare-fun b!3216233 () Bool)

(declare-fun tp!1014044 () Bool)

(declare-fun tp!1014041 () Bool)

(assert (=> b!3216233 (= e!2005286 (and tp!1014044 tp!1014041))))

(declare-fun b!3216235 () Bool)

(declare-fun tp!1014040 () Bool)

(declare-fun tp!1014043 () Bool)

(assert (=> b!3216235 (= e!2005286 (and tp!1014040 tp!1014043))))

(assert (= (and b!3213780 ((_ is ElementMatch!9985) (reg!10314 (regex!5226 (h!41608 rules!2135))))) b!3216232))

(assert (= (and b!3213780 ((_ is Concat!15441) (reg!10314 (regex!5226 (h!41608 rules!2135))))) b!3216233))

(assert (= (and b!3213780 ((_ is Star!9985) (reg!10314 (regex!5226 (h!41608 rules!2135))))) b!3216234))

(assert (= (and b!3213780 ((_ is Union!9985) (reg!10314 (regex!5226 (h!41608 rules!2135))))) b!3216235))

(declare-fun e!2005287 () Bool)

(assert (=> b!3213759 (= tp!1013774 e!2005287)))

(declare-fun b!3216236 () Bool)

(assert (=> b!3216236 (= e!2005287 tp_is_empty!17301)))

(declare-fun b!3216238 () Bool)

(declare-fun tp!1014047 () Bool)

(assert (=> b!3216238 (= e!2005287 tp!1014047)))

(declare-fun b!3216237 () Bool)

(declare-fun tp!1014049 () Bool)

(declare-fun tp!1014046 () Bool)

(assert (=> b!3216237 (= e!2005287 (and tp!1014049 tp!1014046))))

(declare-fun b!3216239 () Bool)

(declare-fun tp!1014045 () Bool)

(declare-fun tp!1014048 () Bool)

(assert (=> b!3216239 (= e!2005287 (and tp!1014045 tp!1014048))))

(assert (= (and b!3213759 ((_ is ElementMatch!9985) (regex!5226 (rule!7672 (h!41609 (t!239158 tokens!494)))))) b!3216236))

(assert (= (and b!3213759 ((_ is Concat!15441) (regex!5226 (rule!7672 (h!41609 (t!239158 tokens!494)))))) b!3216237))

(assert (= (and b!3213759 ((_ is Star!9985) (regex!5226 (rule!7672 (h!41609 (t!239158 tokens!494)))))) b!3216238))

(assert (= (and b!3213759 ((_ is Union!9985) (regex!5226 (rule!7672 (h!41609 (t!239158 tokens!494)))))) b!3216239))

(declare-fun b!3216240 () Bool)

(declare-fun e!2005288 () Bool)

(declare-fun tp!1014050 () Bool)

(assert (=> b!3216240 (= e!2005288 (and tp_is_empty!17301 tp!1014050))))

(assert (=> b!3213758 (= tp!1013776 e!2005288)))

(assert (= (and b!3213758 ((_ is Cons!36187) (originalCharacters!5940 (h!41609 (t!239158 tokens!494))))) b!3216240))

(declare-fun e!2005289 () Bool)

(assert (=> b!3213794 (= tp!1013814 e!2005289)))

(declare-fun b!3216241 () Bool)

(assert (=> b!3216241 (= e!2005289 tp_is_empty!17301)))

(declare-fun b!3216243 () Bool)

(declare-fun tp!1014053 () Bool)

(assert (=> b!3216243 (= e!2005289 tp!1014053)))

(declare-fun b!3216242 () Bool)

(declare-fun tp!1014055 () Bool)

(declare-fun tp!1014052 () Bool)

(assert (=> b!3216242 (= e!2005289 (and tp!1014055 tp!1014052))))

(declare-fun b!3216244 () Bool)

(declare-fun tp!1014051 () Bool)

(declare-fun tp!1014054 () Bool)

(assert (=> b!3216244 (= e!2005289 (and tp!1014051 tp!1014054))))

(assert (= (and b!3213794 ((_ is ElementMatch!9985) (regOne!20482 (regex!5226 (rule!7672 (h!41609 tokens!494)))))) b!3216241))

(assert (= (and b!3213794 ((_ is Concat!15441) (regOne!20482 (regex!5226 (rule!7672 (h!41609 tokens!494)))))) b!3216242))

(assert (= (and b!3213794 ((_ is Star!9985) (regOne!20482 (regex!5226 (rule!7672 (h!41609 tokens!494)))))) b!3216243))

(assert (= (and b!3213794 ((_ is Union!9985) (regOne!20482 (regex!5226 (rule!7672 (h!41609 tokens!494)))))) b!3216244))

(declare-fun e!2005290 () Bool)

(assert (=> b!3213794 (= tp!1013811 e!2005290)))

(declare-fun b!3216245 () Bool)

(assert (=> b!3216245 (= e!2005290 tp_is_empty!17301)))

(declare-fun b!3216247 () Bool)

(declare-fun tp!1014058 () Bool)

(assert (=> b!3216247 (= e!2005290 tp!1014058)))

(declare-fun b!3216246 () Bool)

(declare-fun tp!1014060 () Bool)

(declare-fun tp!1014057 () Bool)

(assert (=> b!3216246 (= e!2005290 (and tp!1014060 tp!1014057))))

(declare-fun b!3216248 () Bool)

(declare-fun tp!1014056 () Bool)

(declare-fun tp!1014059 () Bool)

(assert (=> b!3216248 (= e!2005290 (and tp!1014056 tp!1014059))))

(assert (= (and b!3213794 ((_ is ElementMatch!9985) (regTwo!20482 (regex!5226 (rule!7672 (h!41609 tokens!494)))))) b!3216245))

(assert (= (and b!3213794 ((_ is Concat!15441) (regTwo!20482 (regex!5226 (rule!7672 (h!41609 tokens!494)))))) b!3216246))

(assert (= (and b!3213794 ((_ is Star!9985) (regTwo!20482 (regex!5226 (rule!7672 (h!41609 tokens!494)))))) b!3216247))

(assert (= (and b!3213794 ((_ is Union!9985) (regTwo!20482 (regex!5226 (rule!7672 (h!41609 tokens!494)))))) b!3216248))

(declare-fun b!3216249 () Bool)

(declare-fun e!2005291 () Bool)

(declare-fun tp!1014061 () Bool)

(assert (=> b!3216249 (= e!2005291 (and tp_is_empty!17301 tp!1014061))))

(assert (=> b!3213802 (= tp!1013818 e!2005291)))

(assert (= (and b!3213802 ((_ is Cons!36187) (t!239156 (originalCharacters!5940 (h!41609 tokens!494))))) b!3216249))

(declare-fun b!3216250 () Bool)

(declare-fun e!2005292 () Bool)

(declare-fun tp!1014062 () Bool)

(assert (=> b!3216250 (= e!2005292 (and tp_is_empty!17301 tp!1014062))))

(assert (=> b!3213801 (= tp!1013817 e!2005292)))

(assert (= (and b!3213801 ((_ is Cons!36187) (t!239156 (originalCharacters!5940 separatorToken!241)))) b!3216250))

(declare-fun b_lambda!88341 () Bool)

(assert (= b_lambda!88231 (or (and b!3213792 b_free!85481 (= (toValue!7314 (transformation!5226 (h!41608 (t!239157 rules!2135)))) (toValue!7314 (transformation!5226 (rule!7672 (h!41609 tokens!494)))))) (and b!3212813 b_free!85461 (= (toValue!7314 (transformation!5226 (rule!7672 separatorToken!241))) (toValue!7314 (transformation!5226 (rule!7672 (h!41609 tokens!494)))))) (and b!3212809 b_free!85457 (= (toValue!7314 (transformation!5226 (h!41608 rules!2135))) (toValue!7314 (transformation!5226 (rule!7672 (h!41609 tokens!494)))))) (and b!3212814 b_free!85465) (and b!3213760 b_free!85477 (= (toValue!7314 (transformation!5226 (rule!7672 (h!41609 (t!239158 tokens!494))))) (toValue!7314 (transformation!5226 (rule!7672 (h!41609 tokens!494)))))) (and b!3216217 b_free!85497 (= (toValue!7314 (transformation!5226 (h!41608 (t!239157 (t!239157 rules!2135))))) (toValue!7314 (transformation!5226 (rule!7672 (h!41609 tokens!494)))))) (and b!3216199 b_free!85493 (= (toValue!7314 (transformation!5226 (rule!7672 (h!41609 (t!239158 (t!239158 tokens!494)))))) (toValue!7314 (transformation!5226 (rule!7672 (h!41609 tokens!494)))))) b_lambda!88341)))

(declare-fun b_lambda!88343 () Bool)

(assert (= b_lambda!88337 (or (and b!3212809 b_free!85457 (= (toValue!7314 (transformation!5226 (h!41608 rules!2135))) (toValue!7314 (transformation!5226 (rule!7672 (h!41609 (t!239158 tokens!494))))))) (and b!3212814 b_free!85465 (= (toValue!7314 (transformation!5226 (rule!7672 (h!41609 tokens!494)))) (toValue!7314 (transformation!5226 (rule!7672 (h!41609 (t!239158 tokens!494))))))) (and b!3216217 b_free!85497 (= (toValue!7314 (transformation!5226 (h!41608 (t!239157 (t!239157 rules!2135))))) (toValue!7314 (transformation!5226 (rule!7672 (h!41609 (t!239158 tokens!494))))))) (and b!3216199 b_free!85493 (= (toValue!7314 (transformation!5226 (rule!7672 (h!41609 (t!239158 (t!239158 tokens!494)))))) (toValue!7314 (transformation!5226 (rule!7672 (h!41609 (t!239158 tokens!494))))))) (and b!3213760 b_free!85477) (and b!3213792 b_free!85481 (= (toValue!7314 (transformation!5226 (h!41608 (t!239157 rules!2135)))) (toValue!7314 (transformation!5226 (rule!7672 (h!41609 (t!239158 tokens!494))))))) (and b!3212813 b_free!85461 (= (toValue!7314 (transformation!5226 (rule!7672 separatorToken!241))) (toValue!7314 (transformation!5226 (rule!7672 (h!41609 (t!239158 tokens!494))))))) b_lambda!88343)))

(declare-fun b_lambda!88345 () Bool)

(assert (= b_lambda!88285 (or b!3212817 b_lambda!88345)))

(assert (=> d!882494 d!881254))

(declare-fun b_lambda!88347 () Bool)

(assert (= b_lambda!88281 (or (and b!3213792 b_free!85481 (= (toValue!7314 (transformation!5226 (h!41608 (t!239157 rules!2135)))) (toValue!7314 (transformation!5226 (rule!7672 (h!41609 tokens!494)))))) (and b!3212813 b_free!85461 (= (toValue!7314 (transformation!5226 (rule!7672 separatorToken!241))) (toValue!7314 (transformation!5226 (rule!7672 (h!41609 tokens!494)))))) (and b!3212809 b_free!85457 (= (toValue!7314 (transformation!5226 (h!41608 rules!2135))) (toValue!7314 (transformation!5226 (rule!7672 (h!41609 tokens!494)))))) (and b!3212814 b_free!85465) (and b!3213760 b_free!85477 (= (toValue!7314 (transformation!5226 (rule!7672 (h!41609 (t!239158 tokens!494))))) (toValue!7314 (transformation!5226 (rule!7672 (h!41609 tokens!494)))))) (and b!3216217 b_free!85497 (= (toValue!7314 (transformation!5226 (h!41608 (t!239157 (t!239157 rules!2135))))) (toValue!7314 (transformation!5226 (rule!7672 (h!41609 tokens!494)))))) (and b!3216199 b_free!85493 (= (toValue!7314 (transformation!5226 (rule!7672 (h!41609 (t!239158 (t!239158 tokens!494)))))) (toValue!7314 (transformation!5226 (rule!7672 (h!41609 tokens!494)))))) b_lambda!88347)))

(declare-fun b_lambda!88349 () Bool)

(assert (= b_lambda!88339 (or (and b!3212809 b_free!85457 (= (toValue!7314 (transformation!5226 (h!41608 rules!2135))) (toValue!7314 (transformation!5226 (rule!7672 (h!41609 (t!239158 tokens!494))))))) (and b!3212814 b_free!85465 (= (toValue!7314 (transformation!5226 (rule!7672 (h!41609 tokens!494)))) (toValue!7314 (transformation!5226 (rule!7672 (h!41609 (t!239158 tokens!494))))))) (and b!3216217 b_free!85497 (= (toValue!7314 (transformation!5226 (h!41608 (t!239157 (t!239157 rules!2135))))) (toValue!7314 (transformation!5226 (rule!7672 (h!41609 (t!239158 tokens!494))))))) (and b!3216199 b_free!85493 (= (toValue!7314 (transformation!5226 (rule!7672 (h!41609 (t!239158 (t!239158 tokens!494)))))) (toValue!7314 (transformation!5226 (rule!7672 (h!41609 (t!239158 tokens!494))))))) (and b!3213760 b_free!85477) (and b!3213792 b_free!85481 (= (toValue!7314 (transformation!5226 (h!41608 (t!239157 rules!2135)))) (toValue!7314 (transformation!5226 (rule!7672 (h!41609 (t!239158 tokens!494))))))) (and b!3212813 b_free!85461 (= (toValue!7314 (transformation!5226 (rule!7672 separatorToken!241))) (toValue!7314 (transformation!5226 (rule!7672 (h!41609 (t!239158 tokens!494))))))) b_lambda!88349)))

(declare-fun b_lambda!88351 () Bool)

(assert (= b_lambda!88335 (or (and b!3212814 b_free!85467 (= (toChars!7173 (transformation!5226 (rule!7672 (h!41609 tokens!494)))) (toChars!7173 (transformation!5226 (rule!7672 (h!41609 (t!239158 tokens!494))))))) (and b!3212813 b_free!85463 (= (toChars!7173 (transformation!5226 (rule!7672 separatorToken!241))) (toChars!7173 (transformation!5226 (rule!7672 (h!41609 (t!239158 tokens!494))))))) (and b!3216199 b_free!85495 (= (toChars!7173 (transformation!5226 (rule!7672 (h!41609 (t!239158 (t!239158 tokens!494)))))) (toChars!7173 (transformation!5226 (rule!7672 (h!41609 (t!239158 tokens!494))))))) (and b!3213760 b_free!85479) (and b!3216217 b_free!85499 (= (toChars!7173 (transformation!5226 (h!41608 (t!239157 (t!239157 rules!2135))))) (toChars!7173 (transformation!5226 (rule!7672 (h!41609 (t!239158 tokens!494))))))) (and b!3212809 b_free!85459 (= (toChars!7173 (transformation!5226 (h!41608 rules!2135))) (toChars!7173 (transformation!5226 (rule!7672 (h!41609 (t!239158 tokens!494))))))) (and b!3213792 b_free!85483 (= (toChars!7173 (transformation!5226 (h!41608 (t!239157 rules!2135)))) (toChars!7173 (transformation!5226 (rule!7672 (h!41609 (t!239158 tokens!494))))))) b_lambda!88351)))

(declare-fun b_lambda!88353 () Bool)

(assert (= b_lambda!88227 (or (and b!3213792 b_free!85481 (= (toValue!7314 (transformation!5226 (h!41608 (t!239157 rules!2135)))) (toValue!7314 (transformation!5226 (rule!7672 (h!41609 tokens!494)))))) (and b!3212813 b_free!85461 (= (toValue!7314 (transformation!5226 (rule!7672 separatorToken!241))) (toValue!7314 (transformation!5226 (rule!7672 (h!41609 tokens!494)))))) (and b!3212809 b_free!85457 (= (toValue!7314 (transformation!5226 (h!41608 rules!2135))) (toValue!7314 (transformation!5226 (rule!7672 (h!41609 tokens!494)))))) (and b!3212814 b_free!85465) (and b!3213760 b_free!85477 (= (toValue!7314 (transformation!5226 (rule!7672 (h!41609 (t!239158 tokens!494))))) (toValue!7314 (transformation!5226 (rule!7672 (h!41609 tokens!494)))))) (and b!3216217 b_free!85497 (= (toValue!7314 (transformation!5226 (h!41608 (t!239157 (t!239157 rules!2135))))) (toValue!7314 (transformation!5226 (rule!7672 (h!41609 tokens!494)))))) (and b!3216199 b_free!85493 (= (toValue!7314 (transformation!5226 (rule!7672 (h!41609 (t!239158 (t!239158 tokens!494)))))) (toValue!7314 (transformation!5226 (rule!7672 (h!41609 tokens!494)))))) b_lambda!88353)))

(declare-fun b_lambda!88355 () Bool)

(assert (= b_lambda!88259 (or b!3212794 b_lambda!88355)))

(assert (=> d!882044 d!881252))

(declare-fun b_lambda!88357 () Bool)

(assert (= b_lambda!88289 (or d!881164 b_lambda!88357)))

(declare-fun bs!542228 () Bool)

(declare-fun d!882794 () Bool)

(assert (= bs!542228 (and d!882794 d!881164)))

(assert (=> bs!542228 (= (dynLambda!14628 lambda!117565 (h!41609 (list!12877 (seqFromList!3523 tokens!494)))) (rulesProduceIndividualToken!2307 thiss!18206 rules!2135 (h!41609 (list!12877 (seqFromList!3523 tokens!494)))))))

(assert (=> bs!542228 m!3489611))

(assert (=> b!3215667 d!882794))

(declare-fun b_lambda!88359 () Bool)

(assert (= b_lambda!88229 (or (and b!3212814 b_free!85467) (and b!3216217 b_free!85499 (= (toChars!7173 (transformation!5226 (h!41608 (t!239157 (t!239157 rules!2135))))) (toChars!7173 (transformation!5226 (rule!7672 (h!41609 tokens!494)))))) (and b!3212809 b_free!85459 (= (toChars!7173 (transformation!5226 (h!41608 rules!2135))) (toChars!7173 (transformation!5226 (rule!7672 (h!41609 tokens!494)))))) (and b!3212813 b_free!85463 (= (toChars!7173 (transformation!5226 (rule!7672 separatorToken!241))) (toChars!7173 (transformation!5226 (rule!7672 (h!41609 tokens!494)))))) (and b!3216199 b_free!85495 (= (toChars!7173 (transformation!5226 (rule!7672 (h!41609 (t!239158 (t!239158 tokens!494)))))) (toChars!7173 (transformation!5226 (rule!7672 (h!41609 tokens!494)))))) (and b!3213760 b_free!85479 (= (toChars!7173 (transformation!5226 (rule!7672 (h!41609 (t!239158 tokens!494))))) (toChars!7173 (transformation!5226 (rule!7672 (h!41609 tokens!494)))))) (and b!3213792 b_free!85483 (= (toChars!7173 (transformation!5226 (h!41608 (t!239157 rules!2135)))) (toChars!7173 (transformation!5226 (rule!7672 (h!41609 tokens!494)))))) b_lambda!88359)))

(declare-fun b_lambda!88361 () Bool)

(assert (= b_lambda!88303 (or (and b!3212813 b_free!85463 (= (toChars!7173 (transformation!5226 (rule!7672 separatorToken!241))) (toChars!7173 (transformation!5226 (rule!7672 (h!41609 (t!239158 (t!239158 tokens!494)))))))) (and b!3213792 b_free!85483 (= (toChars!7173 (transformation!5226 (h!41608 (t!239157 rules!2135)))) (toChars!7173 (transformation!5226 (rule!7672 (h!41609 (t!239158 (t!239158 tokens!494)))))))) (and b!3216199 b_free!85495) (and b!3213760 b_free!85479 (= (toChars!7173 (transformation!5226 (rule!7672 (h!41609 (t!239158 tokens!494))))) (toChars!7173 (transformation!5226 (rule!7672 (h!41609 (t!239158 (t!239158 tokens!494)))))))) (and b!3212809 b_free!85459 (= (toChars!7173 (transformation!5226 (h!41608 rules!2135))) (toChars!7173 (transformation!5226 (rule!7672 (h!41609 (t!239158 (t!239158 tokens!494)))))))) (and b!3212814 b_free!85467 (= (toChars!7173 (transformation!5226 (rule!7672 (h!41609 tokens!494)))) (toChars!7173 (transformation!5226 (rule!7672 (h!41609 (t!239158 (t!239158 tokens!494)))))))) (and b!3216217 b_free!85499 (= (toChars!7173 (transformation!5226 (h!41608 (t!239157 (t!239157 rules!2135))))) (toChars!7173 (transformation!5226 (rule!7672 (h!41609 (t!239158 (t!239158 tokens!494)))))))) b_lambda!88361)))

(declare-fun b_lambda!88363 () Bool)

(assert (= b_lambda!88283 (or b!3212794 b_lambda!88363)))

(assert (=> d!882470 d!881256))

(declare-fun b_lambda!88365 () Bool)

(assert (= b_lambda!88287 (or b!3212817 b_lambda!88365)))

(declare-fun bs!542229 () Bool)

(declare-fun d!882796 () Bool)

(assert (= bs!542229 (and d!882796 b!3212817)))

(assert (=> bs!542229 (= (dynLambda!14628 lambda!117555 (h!41609 tokens!494)) (rulesProduceIndividualToken!2307 thiss!18206 rules!2135 (h!41609 tokens!494)))))

(assert (=> bs!542229 m!3483477))

(assert (=> b!3215665 d!882796))

(declare-fun b_lambda!88367 () Bool)

(assert (= b_lambda!88277 (or b!3212794 b_lambda!88367)))

(assert (=> b!3215562 d!881256))

(declare-fun b_lambda!88369 () Bool)

(assert (= b_lambda!88213 (or (and b!3212814 b_free!85467 (= (toChars!7173 (transformation!5226 (rule!7672 (h!41609 tokens!494)))) (toChars!7173 (transformation!5226 (rule!7672 (h!41609 (t!239158 tokens!494))))))) (and b!3212813 b_free!85463 (= (toChars!7173 (transformation!5226 (rule!7672 separatorToken!241))) (toChars!7173 (transformation!5226 (rule!7672 (h!41609 (t!239158 tokens!494))))))) (and b!3216199 b_free!85495 (= (toChars!7173 (transformation!5226 (rule!7672 (h!41609 (t!239158 (t!239158 tokens!494)))))) (toChars!7173 (transformation!5226 (rule!7672 (h!41609 (t!239158 tokens!494))))))) (and b!3213760 b_free!85479) (and b!3216217 b_free!85499 (= (toChars!7173 (transformation!5226 (h!41608 (t!239157 (t!239157 rules!2135))))) (toChars!7173 (transformation!5226 (rule!7672 (h!41609 (t!239158 tokens!494))))))) (and b!3212809 b_free!85459 (= (toChars!7173 (transformation!5226 (h!41608 rules!2135))) (toChars!7173 (transformation!5226 (rule!7672 (h!41609 (t!239158 tokens!494))))))) (and b!3213792 b_free!85483 (= (toChars!7173 (transformation!5226 (h!41608 (t!239157 rules!2135)))) (toChars!7173 (transformation!5226 (rule!7672 (h!41609 (t!239158 tokens!494))))))) b_lambda!88369)))

(check-sat (not b_lambda!88257) b_and!214723 (not b!3215448) (not b!3215871) (not d!882150) (not bm!232582) (not b!3216224) (not b!3215571) (not d!882288) (not d!882502) (not b!3215048) (not bm!232790) (not b!3214088) (not b!3214096) (not b!3214213) (not b!3215335) (not b!3215597) (not b!3215692) (not b!3215826) (not b!3215973) (not b!3216130) (not b!3215561) (not b!3216201) (not d!882458) (not tb!158359) (not d!881366) (not b!3215970) (not b!3214091) (not d!881972) (not b!3215954) (not b!3216156) (not d!882500) (not b!3215734) (not bm!232626) (not b_lambda!88195) (not d!882274) (not d!881372) (not b!3215504) (not b!3215482) (not b_next!86203) (not d!881760) (not b!3215620) (not d!881608) (not b!3213976) (not b!3215446) (not d!882762) (not b!3215818) (not b!3214106) (not b!3215129) (not bm!232592) (not b!3215586) (not b!3213959) (not b!3214457) (not d!882558) (not d!881660) (not d!882554) (not d!882352) (not b!3214927) (not b!3214049) (not b!3215825) (not d!882792) (not b!3216216) (not bm!232777) (not d!882388) (not b!3215810) (not b!3215595) (not d!881460) (not d!881382) (not b!3215143) (not bm!232768) (not d!882078) (not b_lambda!88279) (not d!882428) (not d!882480) (not b!3214630) (not d!882614) (not b_lambda!88207) (not b!3215455) (not bm!232781) (not d!881936) (not b!3214632) (not b!3214588) (not b!3215626) (not d!882368) b_and!214727 (not b!3215269) b_and!214701 (not b!3214601) (not d!882434) (not b!3214255) (not d!881498) (not d!881538) (not b!3215939) (not b!3215599) (not d!882042) (not d!882684) (not b_lambda!88189) (not b!3215656) (not b!3215611) (not b!3215708) b_and!214737 (not d!882294) (not d!882772) (not b!3216244) (not b!3215513) (not b!3216210) (not b_next!86181) (not d!881716) (not bm!232774) (not bm!232715) (not b!3216141) (not d!882072) (not b!3215494) (not b!3216226) (not b!3214110) (not b_lambda!88365) (not b!3216145) (not tb!158279) (not b!3215058) (not b!3214397) (not d!882452) (not b!3215480) (not d!881644) (not b!3216196) b_and!214709 (not bm!232723) (not d!881736) (not b!3215813) (not bm!232783) (not b!3215339) (not d!882586) (not b!3215264) (not b!3215753) (not d!881438) b_and!214729 (not b!3215338) (not b_next!86197) (not d!881600) (not d!882256) (not b!3215962) (not b_lambda!88215) (not bm!232799) (not b!3215485) (not bm!232700) (not d!881404) (not b!3215605) (not b!3215412) (not b!3216248) (not bm!232769) (not b!3214464) (not d!882052) (not b!3215534) (not d!882620) (not b!3215128) (not b!3216223) (not b!3216197) (not d!881664) (not b!3214650) (not d!882636) (not b!3215632) (not bm!232623) (not b!3215522) (not d!882010) (not b!3214564) (not d!882432) (not bs!542229) (not b!3214099) (not bm!232747) (not b!3216237) (not d!882318) (not b!3214273) (not d!882036) (not b!3214651) (not bm!232744) (not b_lambda!88349) (not bm!232806) (not b!3215484) (not d!881620) (not b!3213996) (not b!3216172) (not d!881734) (not b!3216209) (not b!3214912) (not d!881612) (not b!3215377) (not b!3214388) (not b_next!86161) (not d!881730) (not b!3214402) (not d!882336) (not d!881952) (not b!3215518) b_and!214725 (not b!3214594) (not b!3214272) (not d!881938) (not d!882024) (not b!3214607) (not b!3214432) (not b!3215284) (not b!3214670) (not b!3215565) (not b!3215801) (not b!3214924) (not b!3215340) (not b!3215782) (not bm!232784) (not d!882378) (not bm!232759) (not b!3215642) (not b_lambda!88205) (not b!3216214) (not b!3215376) (not b!3215931) (not d!882236) (not b!3214482) (not d!882782) (not b!3215009) b_and!214733 (not d!882602) (not bm!232758) (not bm!232583) (not b_lambda!88291) (not b!3216150) (not b!3215697) (not bm!232756) (not d!881472) (not b!3216240) (not b_lambda!88351) (not d!881530) (not d!882520) (not b!3215038) (not b!3214000) (not d!881476) (not b!3215555) (not d!881434) (not d!881648) (not d!882574) (not d!882322) (not tb!158653) (not b!3215582) (not b!3214675) (not b!3216117) (not d!881658) (not b!3214089) (not bm!232786) (not bm!232670) (not b!3214002) (not d!882732) (not bm!232624) (not b_next!86201) (not d!882402) (not b!3216126) (not d!882548) (not d!882344) (not d!882338) (not b!3215965) (not b_next!86183) (not d!882568) (not b!3215750) (not b!3215135) (not b!3214534) (not b!3216168) (not b!3214933) (not bm!232667) (not b!3215969) (not bm!232702) (not d!882068) (not d!882178) (not d!882358) (not tb!158319) (not b!3215512) (not d!882652) (not d!882250) (not d!882580) (not b!3216246) (not b!3214623) (not d!881388) (not d!882354) (not d!882152) (not d!882666) (not b!3215392) (not d!882340) (not d!882424) (not b!3215515) (not b!3215409) (not b!3215577) (not bm!232798) (not b!3215828) (not b_lambda!88275) (not b!3215065) (not bm!232685) (not bm!232657) (not d!882522) (not bm!232810) (not d!882726) (not d!882396) (not d!882384) (not b!3215746) (not d!882724) (not b!3216202) (not b!3215554) (not b!3216171) (not b!3215008) (not b!3215693) (not b!3215389) (not b!3214999) (not b!3215123) (not bm!232584) (not b!3215329) (not d!882310) (not d!882416) (not b!3215938) (not b!3215057) (not d!882566) (not b!3213987) (not b!3215158) (not d!882280) (not d!881704) (not d!882596) (not b!3213989) (not d!882648) (not d!881614) (not b!3214939) (not b_lambda!88191) (not b!3214578) (not b!3215803) (not b!3215435) (not b!3215736) (not b!3215762) (not b!3214610) (not b!3214914) (not bm!232746) (not b!3214394) (not b_lambda!88353) (not b!3216136) (not b!3214900) (not b!3214613) (not b!3214541) (not d!882584) (not b!3215066) (not tb!158529) (not bm!232707) (not b!3214577) (not b_lambda!88361) (not d!882326) (not b!3215442) (not b!3214635) (not d!881364) (not b!3215159) (not b!3215921) (not bm!232593) (not b!3215463) (not b!3214929) (not b!3214902) (not d!882438) (not bm!232619) (not b!3214899) (not b!3215699) (not b!3215487) (not b!3213474) (not b_lambda!88367) (not b!3213977) (not b!3214649) (not d!881962) (not b!3215952) (not d!881996) (not bm!232754) (not b!3215510) (not bm!232808) (not tb!158309) (not d!882722) (not b!3214663) (not d!881722) (not b!3215974) (not b!3215867) (not bm!232773) (not d!881610) (not b!3214172) (not b!3213990) (not b!3216218) (not bm!232780) (not d!882484) (not bm!232656) (not d!881380) (not b!3214057) (not b!3214251) (not d!882096) (not b!3213997) (not b!3216229) (not b!3215041) (not b!3215936) (not b!3215257) (not d!881598) (not bm!232717) (not b!3215863) (not d!882020) (not b!3215844) (not d!882524) (not b!3215411) tp_is_empty!17301 (not d!881924) (not b!3214092) (not d!882346) (not tb!158489) (not b!3216242) (not b!3215391) (not b!3216222) (not d!881594) (not b_lambda!88345) (not b!3215564) (not d!882364) (not b!3215404) (not d!881462) (not b!3215330) (not b!3216247) (not b!3213993) (not b!3216122) (not b!3215977) (not b!3215010) (not b!3216184) (not bm!232719) (not b!3214637) (not tb!158419) (not b!3215580) (not bm!232673) (not b!3214565) (not b!3215188) (not b_lambda!88201) (not b!3214528) (not d!881708) (not b!3214629) (not d!882418) (not b!3216178) (not b!3216158) (not b!3215557) (not b_lambda!88363) (not d!881958) (not b!3215551) (not b!3215628) (not b_lambda!88341) (not b!3216155) (not b!3215610) (not b!3215525) (not b!3215814) (not b!3215702) (not b!3213992) (not b!3215666) (not b!3215191) (not d!882608) (not b!3215401) (not d!882446) b_and!214735 (not d!882302) (not bm!232669) (not d!881406) (not b_lambda!88217) (not b!3215101) (not d!882564) (not d!882224) (not b!3216129) (not d!881402) (not b!3215815) (not b!3215075) (not d!881430) (not d!881988) (not b!3215061) (not b!3216212) (not b!3215063) (not d!881506) (not b!3215544) (not b!3214631) (not d!882176) (not b!3215761) (not b!3216125) (not d!881424) (not bm!232671) (not bm!232708) (not d!882664) (not d!882324) (not b!3216239) (not d!881378) (not b!3215664) (not d!881346) (not d!881478) (not d!882034) (not b!3216193) (not b!3214640) (not d!882644) (not b_lambda!88301) (not d!882046) (not bm!232740) (not b!3213998) (not d!882518) (not b!3215082) (not b!3214664) (not d!882190) (not d!882232) (not b!3216176) (not b!3215604) (not bm!232778) (not d!881368) (not b!3215608) (not b!3215574) (not b_lambda!88359) (not b!3213986) b_and!214705 (not b!3215914) (not d!881628) (not b!3213945) (not b!3215794) (not b!3216175) (not b!3215865) (not b!3215517) (not d!881990) (not d!882356) (not b!3216160) (not d!882158) (not d!882516) (not d!882632) (not b_next!86185) (not b!3214434) (not b!3216183) (not b!3215186) (not d!882730) (not b!3213372) (not b!3216228) (not b!3215023) (not d!882560) (not d!881442) (not d!881510) (not b!3215568) (not d!882362) (not b!3215935) (not b!3216219) (not b!3215705) (not d!882612) (not bm!232736) (not b!3214484) (not b!3214908) (not b!3214671) (not b!3215843) (not b!3214529) (not tb!158549) (not bm!232775) (not b!3214566) (not b!3213980) (not b!3215465) (not b!3215514) (not b!3213958) (not b!3214930) (not b_lambda!88369) (not b!3216149) (not b!3214471) (not b!3215258) (not d!881666) (not d!882022) (not d!882526) (not d!881606) (not d!882466) (not d!882148) (not d!882694) (not b!3215607) (not tb!158509) (not tb!158259) (not b!3213995) (not b!3215466) (not d!881758) (not b!3216235) (not d!881926) (not b!3215584) (not b!3214608) (not d!881436) (not b!3215120) (not b!3214988) (not b!3216179) (not tb!158643) (not d!881928) (not b!3215613) (not b!3215081) (not b!3215006) (not d!882220) (not b!3215780) (not b_lambda!88295) (not b!3214932) (not b_next!86171) (not b_lambda!88193) b_and!214707 (not d!882552) (not b!3214487) (not d!882656) (not d!882400) (not b!3215735) (not b!3214905) (not d!882444) (not b!3215062) (not b!3215049) (not b!3215662) (not b!3215696) (not b!3215855) (not d!881376) (not bm!232625) (not d!881410) (not b!3214093) (not b!3214060) (not b!3215563) (not b!3215310) (not b_lambda!88203) b_and!214731 (not b!3214171) (not b!3216118) (not bm!232738) (not b_lambda!88211) (not d!882412) (not d!882492) (not b!3215749) (not tb!158479) (not d!882420) (not b!3215966) (not b!3215756) (not b!3215255) (not b!3216195) (not b_next!86163) (not b!3215443) (not b!3214634) (not b!3215254) (not b!3216243) (not b!3215709) (not d!882774) (not b!3215385) (not b!3215960) (not b_lambda!88355) (not b!3215598) (not b!3216205) (not b!3215511) (not b!3215703) (not d!882166) (not b!3213949) (not d!882786) (not b!3216164) (not bm!232763) (not b!3215479) (not b!3215668) (not b!3213950) (not b!3214161) (not b!3216233) (not b!3215816) (not b!3216215) (not bm!232651) (not b!3215760) (not b!3216250) (not d!881362) (not b!3215125) (not bm!232684) (not b!3214005) (not bm!232782) (not b!3214058) (not b!3215037) (not b!3216207) (not b!3215043) (not bm!232652) (not d!882298) (not b!3216167) (not b!3215652) (not d!882422) (not b!3215858) (not bs!542228) (not d!882784) (not b!3214633) (not d!881596) (not b!3214198) (not d!882064) (not d!881710) (not b!3214252) (not b!3215085) (not d!882430) (not bm!232724) b_and!214721 (not b!3215423) (not bm!232726) (not b!3214903) (not b!3215877) (not b!3215388) (not b!3216213) (not b!3215745) (not b!3214176) (not b!3215059) (not d!882482) (not b!3214003) (not b!3215552) (not b!3215624) (not bm!232710) (not d!882592) (not b!3214062) (not b!3215410) (not d!882624) (not d!882472) (not b!3214055) (not d!882534) (not b_next!86199) (not d!882646) (not b!3216132) (not b!3216159) (not b!3216182) (not b!3215870) (not b!3215827) (not d!882640) (not d!881370) (not b!3215056) (not d!882770) (not d!882238) (not b!3215373) (not bm!232779) (not d!882208) (not b!3214567) (not b!3215416) (not bm!232776) (not b!3215096) (not b!3215084) (not d!882622) (not b_lambda!88245) (not b!3213946) (not b!3215614) (not d!882464) (not b!3216147) (not b!3213979) (not b!3216174) (not b!3215252) (not b_next!86169) (not b!3214673) (not bm!232800) (not d!881432) (not b!3213461) (not d!881360) (not b!3214579) (not b!3216138) (not b!3214647) (not b_lambda!88343) (not d!882380) (not b!3215526) (not b_lambda!88357) (not b!3215567) (not d!882764) (not b!3215198) (not bm!232666) (not bm!232787) (not bm!232672) (not b!3216163) (not b_next!86165) (not b!3215488) (not b!3215498) (not tb!158539) (not b!3215754) (not b_lambda!88199) (not b!3215332) (not b!3214211) (not b!3213999) (not b!3215126) (not b!3214061) (not d!882626) (not b!3216227) (not d!881630) (not b!3216198) (not b!3216154) (not b!3216170) (not d!881984) (not d!882332) (not b!3213960) (not b!3214627) (not b!3214641) (not b!3215706) (not b!3214915) (not d!881464) (not b!3215733) (not d!882272) (not b!3214090) (not d!882658) (not d!882714) (not b!3214097) (not bm!232791) (not b!3215758) (not b!3214485) (not d!882766) (not d!882692) (not b!3214666) (not bm!232753) (not b!3216166) (not b!3215464) (not d!882736) (not d!882486) (not d!882440) (not b!3215559) (not d!881752) (not d!881344) (not d!882556) (not b!3216143) (not d!882628) (not d!882414) (not b!3214909) (not d!881374) (not d!881746) (not b!3215500) (not b_next!86167) (not d!882222) (not b!3215570) (not b!3215765) (not b!3216211) (not b!3215859) (not b!3214921) (not b!3216162) (not tb!158499) (not b!3215594) (not d!882228) (not b!3216220) (not b!3214626) (not d!882760) (not b!3214472) (not b!3216180) (not b!3215868) (not b!3215060) (not b!3214217) (not bm!232620) (not bm!232622) (not b_next!86187) (not b!3215630) (not b!3214390) (not b!3215507) (not b_lambda!88347) (not d!882382) (not d!882386) (not d!881512) (not d!881750) (not b_lambda!88209) (not d!881748) (not d!881744) (not b!3216135) (not bm!232712) (not b!3215277) (not d!881930) (not d!881966) (not b!3214100) (not b!3216116) (not b!3215732) (not d!881652) (not d!882162) (not d!882462) (not b!3215546) (not b!3214667) (not b!3213943) (not b!3213984) (not b!3215606) (not b_lambda!88197) (not bm!232721) (not b!3214094) (not b!3215731) (not d!881756) (not b!3215523) (not b!3214521) (not b!3216249) (not b!3214926) (not tb!158269) (not b!3215285) (not b!3215929) (not b!3215520) (not b!3215189) (not d!882108) (not b!3216203) (not d!882550) (not b!3215545) (not b!3215402) (not d!882060) (not b!3216238) (not d!882478) (not b!3215576) (not b!3214676) (not b!3214638) (not bm!232713) (not b!3214911) (not b!3213983) (not b!3215250) (not b!3215715) (not bm!232621) (not b!3215887) (not b!3214904) (not b!3216206) b_and!214703 (not b!3215587) (not d!882450) (not b!3215862) (not b!3215532) (not b!3215192) (not b!3216234) (not b!3216194) (not b!3214532) (not b!3216123) (not b!3214625) (not d!882144) (not b!3215964))
(check-sat b_and!214723 (not b_next!86203) b_and!214709 b_and!214733 b_and!214735 b_and!214721 (not b_next!86165) b_and!214703 b_and!214727 b_and!214701 b_and!214737 (not b_next!86181) b_and!214729 (not b_next!86197) (not b_next!86161) b_and!214725 (not b_next!86183) (not b_next!86201) b_and!214705 (not b_next!86185) (not b_next!86171) b_and!214707 (not b_next!86163) b_and!214731 (not b_next!86199) (not b_next!86169) (not b_next!86167) (not b_next!86187))
