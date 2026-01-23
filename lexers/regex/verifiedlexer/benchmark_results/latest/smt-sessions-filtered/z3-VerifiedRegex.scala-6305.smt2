; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!316810 () Bool)

(assert start!316810)

(declare-fun b!3395574 () Bool)

(declare-fun b_free!88833 () Bool)

(declare-fun b_next!89537 () Bool)

(assert (=> b!3395574 (= b_free!88833 (not b_next!89537))))

(declare-fun tp!1059876 () Bool)

(declare-fun b_and!236639 () Bool)

(assert (=> b!3395574 (= tp!1059876 b_and!236639)))

(declare-fun b_free!88835 () Bool)

(declare-fun b_next!89539 () Bool)

(assert (=> b!3395574 (= b_free!88835 (not b_next!89539))))

(declare-fun tp!1059883 () Bool)

(declare-fun b_and!236641 () Bool)

(assert (=> b!3395574 (= tp!1059883 b_and!236641)))

(declare-fun b!3395579 () Bool)

(declare-fun b_free!88837 () Bool)

(declare-fun b_next!89541 () Bool)

(assert (=> b!3395579 (= b_free!88837 (not b_next!89541))))

(declare-fun tp!1059881 () Bool)

(declare-fun b_and!236643 () Bool)

(assert (=> b!3395579 (= tp!1059881 b_and!236643)))

(declare-fun b_free!88839 () Bool)

(declare-fun b_next!89543 () Bool)

(assert (=> b!3395579 (= b_free!88839 (not b_next!89543))))

(declare-fun tp!1059882 () Bool)

(declare-fun b_and!236645 () Bool)

(assert (=> b!3395579 (= tp!1059882 b_and!236645)))

(declare-fun b!3395581 () Bool)

(declare-fun b_free!88841 () Bool)

(declare-fun b_next!89545 () Bool)

(assert (=> b!3395581 (= b_free!88841 (not b_next!89545))))

(declare-fun tp!1059873 () Bool)

(declare-fun b_and!236647 () Bool)

(assert (=> b!3395581 (= tp!1059873 b_and!236647)))

(declare-fun b_free!88843 () Bool)

(declare-fun b_next!89547 () Bool)

(assert (=> b!3395581 (= b_free!88843 (not b_next!89547))))

(declare-fun tp!1059884 () Bool)

(declare-fun b_and!236649 () Bool)

(assert (=> b!3395581 (= tp!1059884 b_and!236649)))

(declare-datatypes ((C!20484 0))(
  ( (C!20485 (val!12290 Int)) )
))
(declare-datatypes ((Regex!10149 0))(
  ( (ElementMatch!10149 (c!578804 C!20484)) (Concat!15769 (regOne!20810 Regex!10149) (regTwo!20810 Regex!10149)) (EmptyExpr!10149) (Star!10149 (reg!10478 Regex!10149)) (EmptyLang!10149) (Union!10149 (regOne!20811 Regex!10149) (regTwo!20811 Regex!10149)) )
))
(declare-datatypes ((List!37060 0))(
  ( (Nil!36936) (Cons!36936 (h!42356 (_ BitVec 16)) (t!265181 List!37060)) )
))
(declare-datatypes ((TokenValue!5620 0))(
  ( (FloatLiteralValue!11240 (text!39785 List!37060)) (TokenValueExt!5619 (__x!23457 Int)) (Broken!28100 (value!174049 List!37060)) (Object!5743) (End!5620) (Def!5620) (Underscore!5620) (Match!5620) (Else!5620) (Error!5620) (Case!5620) (If!5620) (Extends!5620) (Abstract!5620) (Class!5620) (Val!5620) (DelimiterValue!11240 (del!5680 List!37060)) (KeywordValue!5626 (value!174050 List!37060)) (CommentValue!11240 (value!174051 List!37060)) (WhitespaceValue!11240 (value!174052 List!37060)) (IndentationValue!5620 (value!174053 List!37060)) (String!41433) (Int32!5620) (Broken!28101 (value!174054 List!37060)) (Boolean!5621) (Unit!52109) (OperatorValue!5623 (op!5680 List!37060)) (IdentifierValue!11240 (value!174055 List!37060)) (IdentifierValue!11241 (value!174056 List!37060)) (WhitespaceValue!11241 (value!174057 List!37060)) (True!11240) (False!11240) (Broken!28102 (value!174058 List!37060)) (Broken!28103 (value!174059 List!37060)) (True!11241) (RightBrace!5620) (RightBracket!5620) (Colon!5620) (Null!5620) (Comma!5620) (LeftBracket!5620) (False!11241) (LeftBrace!5620) (ImaginaryLiteralValue!5620 (text!39786 List!37060)) (StringLiteralValue!16860 (value!174060 List!37060)) (EOFValue!5620 (value!174061 List!37060)) (IdentValue!5620 (value!174062 List!37060)) (DelimiterValue!11241 (value!174063 List!37060)) (DedentValue!5620 (value!174064 List!37060)) (NewLineValue!5620 (value!174065 List!37060)) (IntegerValue!16860 (value!174066 (_ BitVec 32)) (text!39787 List!37060)) (IntegerValue!16861 (value!174067 Int) (text!39788 List!37060)) (Times!5620) (Or!5620) (Equal!5620) (Minus!5620) (Broken!28104 (value!174068 List!37060)) (And!5620) (Div!5620) (LessEqual!5620) (Mod!5620) (Concat!15770) (Not!5620) (Plus!5620) (SpaceValue!5620 (value!174069 List!37060)) (IntegerValue!16862 (value!174070 Int) (text!39789 List!37060)) (StringLiteralValue!16861 (text!39790 List!37060)) (FloatLiteralValue!11241 (text!39791 List!37060)) (BytesLiteralValue!5620 (value!174071 List!37060)) (CommentValue!11241 (value!174072 List!37060)) (StringLiteralValue!16862 (value!174073 List!37060)) (ErrorTokenValue!5620 (msg!5681 List!37060)) )
))
(declare-datatypes ((List!37061 0))(
  ( (Nil!36937) (Cons!36937 (h!42357 C!20484) (t!265182 List!37061)) )
))
(declare-datatypes ((IArray!22315 0))(
  ( (IArray!22316 (innerList!11215 List!37061)) )
))
(declare-datatypes ((Conc!11155 0))(
  ( (Node!11155 (left!28796 Conc!11155) (right!29126 Conc!11155) (csize!22540 Int) (cheight!11366 Int)) (Leaf!17461 (xs!14313 IArray!22315) (csize!22541 Int)) (Empty!11155) )
))
(declare-datatypes ((BalanceConc!21924 0))(
  ( (BalanceConc!21925 (c!578805 Conc!11155)) )
))
(declare-datatypes ((String!41434 0))(
  ( (String!41435 (value!174074 String)) )
))
(declare-datatypes ((TokenValueInjection!10668 0))(
  ( (TokenValueInjection!10669 (toValue!7586 Int) (toChars!7445 Int)) )
))
(declare-datatypes ((Rule!10580 0))(
  ( (Rule!10581 (regex!5390 Regex!10149) (tag!5974 String!41434) (isSeparator!5390 Bool) (transformation!5390 TokenValueInjection!10668)) )
))
(declare-datatypes ((Token!10146 0))(
  ( (Token!10147 (value!174075 TokenValue!5620) (rule!7950 Rule!10580) (size!27959 Int) (originalCharacters!6104 List!37061)) )
))
(declare-fun separatorToken!241 () Token!10146)

(declare-fun tp!1059872 () Bool)

(declare-fun b!3395565 () Bool)

(declare-fun e!2107716 () Bool)

(declare-fun e!2107711 () Bool)

(declare-fun inv!50026 (String!41434) Bool)

(declare-fun inv!50029 (TokenValueInjection!10668) Bool)

(assert (=> b!3395565 (= e!2107711 (and tp!1059872 (inv!50026 (tag!5974 (rule!7950 separatorToken!241))) (inv!50029 (transformation!5390 (rule!7950 separatorToken!241))) e!2107716))))

(declare-fun b!3395566 () Bool)

(declare-fun res!1373813 () Bool)

(declare-fun e!2107719 () Bool)

(assert (=> b!3395566 (=> res!1373813 e!2107719)))

(declare-datatypes ((LexerInterface!4979 0))(
  ( (LexerInterfaceExt!4976 (__x!23458 Int)) (Lexer!4977) )
))
(declare-fun thiss!18206 () LexerInterface!4979)

(declare-datatypes ((List!37062 0))(
  ( (Nil!36938) (Cons!36938 (h!42358 Rule!10580) (t!265183 List!37062)) )
))
(declare-fun rules!2135 () List!37062)

(declare-fun lt!1154244 () List!37061)

(declare-datatypes ((List!37063 0))(
  ( (Nil!36939) (Cons!36939 (h!42359 Token!10146) (t!265184 List!37063)) )
))
(declare-datatypes ((IArray!22317 0))(
  ( (IArray!22318 (innerList!11216 List!37063)) )
))
(declare-datatypes ((Conc!11156 0))(
  ( (Node!11156 (left!28797 Conc!11156) (right!29127 Conc!11156) (csize!22542 Int) (cheight!11367 Int)) (Leaf!17462 (xs!14314 IArray!22317) (csize!22543 Int)) (Empty!11156) )
))
(declare-datatypes ((BalanceConc!21926 0))(
  ( (BalanceConc!21927 (c!578806 Conc!11156)) )
))
(declare-fun isEmpty!21198 (BalanceConc!21926) Bool)

(declare-datatypes ((tuple2!36562 0))(
  ( (tuple2!36563 (_1!21415 BalanceConc!21926) (_2!21415 BalanceConc!21924)) )
))
(declare-fun lex!2305 (LexerInterface!4979 List!37062 BalanceConc!21924) tuple2!36562)

(declare-fun seqFromList!3833 (List!37061) BalanceConc!21924)

(assert (=> b!3395566 (= res!1373813 (isEmpty!21198 (_1!21415 (lex!2305 thiss!18206 rules!2135 (seqFromList!3833 lt!1154244)))))))

(declare-fun b!3395567 () Bool)

(declare-fun e!2107722 () Bool)

(declare-fun e!2107726 () Bool)

(declare-fun tp!1059879 () Bool)

(assert (=> b!3395567 (= e!2107722 (and e!2107726 tp!1059879))))

(declare-fun res!1373812 () Bool)

(declare-fun e!2107712 () Bool)

(assert (=> start!316810 (=> (not res!1373812) (not e!2107712))))

(get-info :version)

(assert (=> start!316810 (= res!1373812 ((_ is Lexer!4977) thiss!18206))))

(assert (=> start!316810 e!2107712))

(assert (=> start!316810 true))

(assert (=> start!316810 e!2107722))

(declare-fun e!2107713 () Bool)

(assert (=> start!316810 e!2107713))

(declare-fun e!2107708 () Bool)

(declare-fun inv!50030 (Token!10146) Bool)

(assert (=> start!316810 (and (inv!50030 separatorToken!241) e!2107708)))

(declare-fun b!3395568 () Bool)

(declare-fun res!1373821 () Bool)

(assert (=> b!3395568 (=> (not res!1373821) (not e!2107712))))

(declare-fun tokens!494 () List!37063)

(declare-fun lambda!120787 () Int)

(declare-fun forall!7797 (List!37063 Int) Bool)

(assert (=> b!3395568 (= res!1373821 (forall!7797 tokens!494 lambda!120787))))

(declare-fun b!3395569 () Bool)

(declare-fun res!1373809 () Bool)

(assert (=> b!3395569 (=> (not res!1373809) (not e!2107712))))

(declare-fun sepAndNonSepRulesDisjointChars!1584 (List!37062 List!37062) Bool)

(assert (=> b!3395569 (= res!1373809 (sepAndNonSepRulesDisjointChars!1584 rules!2135 rules!2135))))

(declare-fun b!3395570 () Bool)

(declare-fun res!1373817 () Bool)

(assert (=> b!3395570 (=> (not res!1373817) (not e!2107712))))

(declare-fun rulesProduceIndividualToken!2471 (LexerInterface!4979 List!37062 Token!10146) Bool)

(assert (=> b!3395570 (= res!1373817 (rulesProduceIndividualToken!2471 thiss!18206 rules!2135 separatorToken!241))))

(declare-fun tp!1059880 () Bool)

(declare-fun e!2107718 () Bool)

(declare-fun e!2107715 () Bool)

(declare-fun b!3395571 () Bool)

(assert (=> b!3395571 (= e!2107718 (and tp!1059880 (inv!50026 (tag!5974 (rule!7950 (h!42359 tokens!494)))) (inv!50029 (transformation!5390 (rule!7950 (h!42359 tokens!494)))) e!2107715))))

(declare-fun b!3395572 () Bool)

(declare-fun e!2107714 () Bool)

(declare-fun tp!1059874 () Bool)

(assert (=> b!3395572 (= e!2107726 (and tp!1059874 (inv!50026 (tag!5974 (h!42358 rules!2135))) (inv!50029 (transformation!5390 (h!42358 rules!2135))) e!2107714))))

(declare-fun b!3395573 () Bool)

(declare-fun res!1373811 () Bool)

(assert (=> b!3395573 (=> (not res!1373811) (not e!2107712))))

(declare-fun isEmpty!21199 (List!37062) Bool)

(assert (=> b!3395573 (= res!1373811 (not (isEmpty!21199 rules!2135)))))

(assert (=> b!3395574 (= e!2107714 (and tp!1059876 tp!1059883))))

(declare-fun b!3395575 () Bool)

(declare-fun e!2107721 () Bool)

(assert (=> b!3395575 (= e!2107721 true)))

(declare-fun lt!1154247 () List!37061)

(declare-fun lt!1154243 () List!37061)

(declare-fun ++!9045 (List!37061 List!37061) List!37061)

(assert (=> b!3395575 (= lt!1154247 (++!9045 lt!1154244 lt!1154243))))

(declare-fun lt!1154241 () List!37061)

(declare-fun lt!1154249 () List!37061)

(declare-datatypes ((Unit!52110 0))(
  ( (Unit!52111) )
))
(declare-fun lt!1154238 () Unit!52110)

(declare-fun lemmaConcatAssociativity!1890 (List!37061 List!37061 List!37061) Unit!52110)

(assert (=> b!3395575 (= lt!1154238 (lemmaConcatAssociativity!1890 lt!1154244 lt!1154241 lt!1154249))))

(declare-fun tp!1059875 () Bool)

(declare-fun b!3395576 () Bool)

(declare-fun inv!21 (TokenValue!5620) Bool)

(assert (=> b!3395576 (= e!2107708 (and (inv!21 (value!174075 separatorToken!241)) e!2107711 tp!1059875))))

(declare-fun b!3395577 () Bool)

(declare-fun e!2107707 () Bool)

(assert (=> b!3395577 (= e!2107707 e!2107719)))

(declare-fun res!1373814 () Bool)

(assert (=> b!3395577 (=> res!1373814 e!2107719)))

(declare-fun lt!1154250 () List!37061)

(declare-fun lt!1154239 () List!37061)

(assert (=> b!3395577 (= res!1373814 (or (not (= lt!1154239 lt!1154244)) (not (= lt!1154250 lt!1154244))))))

(declare-fun list!13379 (BalanceConc!21924) List!37061)

(declare-fun charsOf!3404 (Token!10146) BalanceConc!21924)

(assert (=> b!3395577 (= lt!1154244 (list!13379 (charsOf!3404 (h!42359 tokens!494))))))

(declare-fun b!3395578 () Bool)

(declare-fun res!1373819 () Bool)

(assert (=> b!3395578 (=> (not res!1373819) (not e!2107712))))

(declare-fun rulesInvariant!4376 (LexerInterface!4979 List!37062) Bool)

(assert (=> b!3395578 (= res!1373819 (rulesInvariant!4376 thiss!18206 rules!2135))))

(assert (=> b!3395579 (= e!2107716 (and tp!1059881 tp!1059882))))

(declare-fun b!3395580 () Bool)

(declare-fun res!1373815 () Bool)

(assert (=> b!3395580 (=> (not res!1373815) (not e!2107712))))

(declare-fun rulesProduceEachTokenIndividually!1430 (LexerInterface!4979 List!37062 BalanceConc!21926) Bool)

(declare-fun seqFromList!3834 (List!37063) BalanceConc!21926)

(assert (=> b!3395580 (= res!1373815 (rulesProduceEachTokenIndividually!1430 thiss!18206 rules!2135 (seqFromList!3834 tokens!494)))))

(assert (=> b!3395581 (= e!2107715 (and tp!1059873 tp!1059884))))

(declare-fun b!3395582 () Bool)

(declare-fun e!2107723 () Bool)

(declare-fun tp!1059878 () Bool)

(assert (=> b!3395582 (= e!2107713 (and (inv!50030 (h!42359 tokens!494)) e!2107723 tp!1059878))))

(declare-fun b!3395583 () Bool)

(declare-fun res!1373820 () Bool)

(assert (=> b!3395583 (=> res!1373820 e!2107719)))

(assert (=> b!3395583 (= res!1373820 (not (rulesProduceIndividualToken!2471 thiss!18206 rules!2135 (h!42359 tokens!494))))))

(declare-fun b!3395584 () Bool)

(declare-fun res!1373822 () Bool)

(assert (=> b!3395584 (=> (not res!1373822) (not e!2107712))))

(assert (=> b!3395584 (= res!1373822 (and (not ((_ is Nil!36939) tokens!494)) (not ((_ is Nil!36939) (t!265184 tokens!494)))))))

(declare-fun b!3395585 () Bool)

(declare-fun e!2107717 () Bool)

(declare-fun e!2107710 () Bool)

(assert (=> b!3395585 (= e!2107717 e!2107710)))

(declare-fun res!1373810 () Bool)

(assert (=> b!3395585 (=> res!1373810 e!2107710)))

(declare-fun printWithSeparatorTokenList!266 (LexerInterface!4979 List!37063 Token!10146) List!37061)

(assert (=> b!3395585 (= res!1373810 (not (= lt!1154249 (++!9045 (++!9045 (list!13379 (charsOf!3404 (h!42359 (t!265184 tokens!494)))) lt!1154241) (printWithSeparatorTokenList!266 thiss!18206 (t!265184 (t!265184 tokens!494)) separatorToken!241)))))))

(assert (=> b!3395585 (= lt!1154243 (++!9045 lt!1154241 lt!1154249))))

(assert (=> b!3395585 (= lt!1154241 (list!13379 (charsOf!3404 separatorToken!241)))))

(assert (=> b!3395585 (= lt!1154249 (printWithSeparatorTokenList!266 thiss!18206 (t!265184 tokens!494) separatorToken!241))))

(declare-fun lt!1154245 () List!37061)

(assert (=> b!3395585 (= lt!1154245 (printWithSeparatorTokenList!266 thiss!18206 tokens!494 separatorToken!241))))

(declare-fun b!3395586 () Bool)

(declare-fun res!1373807 () Bool)

(assert (=> b!3395586 (=> (not res!1373807) (not e!2107712))))

(assert (=> b!3395586 (= res!1373807 (isSeparator!5390 (rule!7950 separatorToken!241)))))

(declare-fun b!3395587 () Bool)

(assert (=> b!3395587 (= e!2107710 e!2107721)))

(declare-fun res!1373808 () Bool)

(assert (=> b!3395587 (=> res!1373808 e!2107721)))

(assert (=> b!3395587 (= res!1373808 (not (= lt!1154245 lt!1154247)))))

(assert (=> b!3395587 (= lt!1154247 (++!9045 (++!9045 lt!1154244 lt!1154241) lt!1154249))))

(declare-fun b!3395588 () Bool)

(assert (=> b!3395588 (= e!2107719 e!2107717)))

(declare-fun res!1373818 () Bool)

(assert (=> b!3395588 (=> res!1373818 e!2107717)))

(assert (=> b!3395588 (= res!1373818 (or (isSeparator!5390 (rule!7950 (h!42359 tokens!494))) (isSeparator!5390 (rule!7950 (h!42359 (t!265184 tokens!494))))))))

(declare-fun lt!1154242 () Unit!52110)

(declare-fun forallContained!1337 (List!37063 Int Token!10146) Unit!52110)

(assert (=> b!3395588 (= lt!1154242 (forallContained!1337 tokens!494 lambda!120787 (h!42359 (t!265184 tokens!494))))))

(declare-fun lt!1154246 () Unit!52110)

(assert (=> b!3395588 (= lt!1154246 (forallContained!1337 tokens!494 lambda!120787 (h!42359 tokens!494)))))

(declare-fun b!3395589 () Bool)

(declare-fun tp!1059877 () Bool)

(assert (=> b!3395589 (= e!2107723 (and (inv!21 (value!174075 (h!42359 tokens!494))) e!2107718 tp!1059877))))

(declare-fun b!3395590 () Bool)

(assert (=> b!3395590 (= e!2107712 (not e!2107707))))

(declare-fun res!1373816 () Bool)

(assert (=> b!3395590 (=> res!1373816 e!2107707)))

(assert (=> b!3395590 (= res!1373816 (not (= lt!1154250 lt!1154239)))))

(declare-fun printList!1527 (LexerInterface!4979 List!37063) List!37061)

(assert (=> b!3395590 (= lt!1154239 (printList!1527 thiss!18206 (Cons!36939 (h!42359 tokens!494) Nil!36939)))))

(declare-fun lt!1154240 () BalanceConc!21924)

(assert (=> b!3395590 (= lt!1154250 (list!13379 lt!1154240))))

(declare-fun lt!1154248 () BalanceConc!21926)

(declare-fun printTailRec!1474 (LexerInterface!4979 BalanceConc!21926 Int BalanceConc!21924) BalanceConc!21924)

(assert (=> b!3395590 (= lt!1154240 (printTailRec!1474 thiss!18206 lt!1154248 0 (BalanceConc!21925 Empty!11155)))))

(declare-fun print!2044 (LexerInterface!4979 BalanceConc!21926) BalanceConc!21924)

(assert (=> b!3395590 (= lt!1154240 (print!2044 thiss!18206 lt!1154248))))

(declare-fun singletonSeq!2486 (Token!10146) BalanceConc!21926)

(assert (=> b!3395590 (= lt!1154248 (singletonSeq!2486 (h!42359 tokens!494)))))

(assert (= (and start!316810 res!1373812) b!3395573))

(assert (= (and b!3395573 res!1373811) b!3395578))

(assert (= (and b!3395578 res!1373819) b!3395580))

(assert (= (and b!3395580 res!1373815) b!3395570))

(assert (= (and b!3395570 res!1373817) b!3395586))

(assert (= (and b!3395586 res!1373807) b!3395568))

(assert (= (and b!3395568 res!1373821) b!3395569))

(assert (= (and b!3395569 res!1373809) b!3395584))

(assert (= (and b!3395584 res!1373822) b!3395590))

(assert (= (and b!3395590 (not res!1373816)) b!3395577))

(assert (= (and b!3395577 (not res!1373814)) b!3395583))

(assert (= (and b!3395583 (not res!1373820)) b!3395566))

(assert (= (and b!3395566 (not res!1373813)) b!3395588))

(assert (= (and b!3395588 (not res!1373818)) b!3395585))

(assert (= (and b!3395585 (not res!1373810)) b!3395587))

(assert (= (and b!3395587 (not res!1373808)) b!3395575))

(assert (= b!3395572 b!3395574))

(assert (= b!3395567 b!3395572))

(assert (= (and start!316810 ((_ is Cons!36938) rules!2135)) b!3395567))

(assert (= b!3395571 b!3395581))

(assert (= b!3395589 b!3395571))

(assert (= b!3395582 b!3395589))

(assert (= (and start!316810 ((_ is Cons!36939) tokens!494)) b!3395582))

(assert (= b!3395565 b!3395579))

(assert (= b!3395576 b!3395565))

(assert (= start!316810 b!3395576))

(declare-fun m!3765493 () Bool)

(assert (=> b!3395589 m!3765493))

(declare-fun m!3765495 () Bool)

(assert (=> b!3395580 m!3765495))

(assert (=> b!3395580 m!3765495))

(declare-fun m!3765497 () Bool)

(assert (=> b!3395580 m!3765497))

(declare-fun m!3765499 () Bool)

(assert (=> b!3395585 m!3765499))

(declare-fun m!3765501 () Bool)

(assert (=> b!3395585 m!3765501))

(declare-fun m!3765503 () Bool)

(assert (=> b!3395585 m!3765503))

(declare-fun m!3765505 () Bool)

(assert (=> b!3395585 m!3765505))

(declare-fun m!3765507 () Bool)

(assert (=> b!3395585 m!3765507))

(declare-fun m!3765509 () Bool)

(assert (=> b!3395585 m!3765509))

(declare-fun m!3765511 () Bool)

(assert (=> b!3395585 m!3765511))

(assert (=> b!3395585 m!3765505))

(declare-fun m!3765513 () Bool)

(assert (=> b!3395585 m!3765513))

(assert (=> b!3395585 m!3765509))

(declare-fun m!3765515 () Bool)

(assert (=> b!3395585 m!3765515))

(assert (=> b!3395585 m!3765515))

(assert (=> b!3395585 m!3765511))

(assert (=> b!3395585 m!3765499))

(declare-fun m!3765517 () Bool)

(assert (=> b!3395585 m!3765517))

(declare-fun m!3765519 () Bool)

(assert (=> b!3395570 m!3765519))

(declare-fun m!3765521 () Bool)

(assert (=> b!3395576 m!3765521))

(declare-fun m!3765523 () Bool)

(assert (=> b!3395588 m!3765523))

(declare-fun m!3765525 () Bool)

(assert (=> b!3395588 m!3765525))

(declare-fun m!3765527 () Bool)

(assert (=> b!3395577 m!3765527))

(assert (=> b!3395577 m!3765527))

(declare-fun m!3765529 () Bool)

(assert (=> b!3395577 m!3765529))

(declare-fun m!3765531 () Bool)

(assert (=> b!3395587 m!3765531))

(assert (=> b!3395587 m!3765531))

(declare-fun m!3765533 () Bool)

(assert (=> b!3395587 m!3765533))

(declare-fun m!3765535 () Bool)

(assert (=> start!316810 m!3765535))

(declare-fun m!3765537 () Bool)

(assert (=> b!3395569 m!3765537))

(declare-fun m!3765539 () Bool)

(assert (=> b!3395566 m!3765539))

(assert (=> b!3395566 m!3765539))

(declare-fun m!3765541 () Bool)

(assert (=> b!3395566 m!3765541))

(declare-fun m!3765543 () Bool)

(assert (=> b!3395566 m!3765543))

(declare-fun m!3765545 () Bool)

(assert (=> b!3395575 m!3765545))

(declare-fun m!3765547 () Bool)

(assert (=> b!3395575 m!3765547))

(declare-fun m!3765549 () Bool)

(assert (=> b!3395573 m!3765549))

(declare-fun m!3765551 () Bool)

(assert (=> b!3395565 m!3765551))

(declare-fun m!3765553 () Bool)

(assert (=> b!3395565 m!3765553))

(declare-fun m!3765555 () Bool)

(assert (=> b!3395578 m!3765555))

(declare-fun m!3765557 () Bool)

(assert (=> b!3395571 m!3765557))

(declare-fun m!3765559 () Bool)

(assert (=> b!3395571 m!3765559))

(declare-fun m!3765561 () Bool)

(assert (=> b!3395590 m!3765561))

(declare-fun m!3765563 () Bool)

(assert (=> b!3395590 m!3765563))

(declare-fun m!3765565 () Bool)

(assert (=> b!3395590 m!3765565))

(declare-fun m!3765567 () Bool)

(assert (=> b!3395590 m!3765567))

(declare-fun m!3765569 () Bool)

(assert (=> b!3395590 m!3765569))

(declare-fun m!3765571 () Bool)

(assert (=> b!3395572 m!3765571))

(declare-fun m!3765573 () Bool)

(assert (=> b!3395572 m!3765573))

(declare-fun m!3765575 () Bool)

(assert (=> b!3395582 m!3765575))

(declare-fun m!3765577 () Bool)

(assert (=> b!3395568 m!3765577))

(declare-fun m!3765579 () Bool)

(assert (=> b!3395583 m!3765579))

(check-sat b_and!236643 b_and!236645 (not b!3395582) (not b!3395571) (not b!3395575) (not b_next!89539) (not b!3395572) (not b_next!89537) (not b_next!89541) b_and!236649 b_and!236647 (not b!3395569) (not b!3395565) (not b_next!89543) (not b!3395590) (not b!3395580) b_and!236641 b_and!236639 (not start!316810) (not b!3395577) (not b!3395570) (not b!3395583) (not b!3395585) (not b!3395566) (not b!3395568) (not b!3395573) (not b!3395587) (not b!3395589) (not b!3395588) (not b_next!89545) (not b!3395578) (not b_next!89547) (not b!3395576) (not b!3395567))
(check-sat b_and!236643 (not b_next!89543) b_and!236645 (not b_next!89539) (not b_next!89537) (not b_next!89541) b_and!236649 b_and!236647 (not b_next!89545) (not b_next!89547) b_and!236641 b_and!236639)
